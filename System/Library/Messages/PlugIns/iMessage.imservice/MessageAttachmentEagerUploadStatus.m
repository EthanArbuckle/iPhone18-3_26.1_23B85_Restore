@interface MessageAttachmentEagerUploadStatus
- (BOOL)cancel;
- (BOOL)isSuccess;
- (MessageAttachmentEagerUploadStatus)initWithOriginalURL:(id)a3 transferId:(id)a4 targetSize:(int64_t)a5;
- (id)description;
- (void)attachToTransfer:(id)a3 message:(id)a4 commonCapabilities:(id)a5;
- (void)finish;
- (void)start;
- (void)wait:(id)a3;
@end

@implementation MessageAttachmentEagerUploadStatus

- (MessageAttachmentEagerUploadStatus)initWithOriginalURL:(id)a3 transferId:(id)a4 targetSize:(int64_t)a5
{
  v8 = a3;
  v22.receiver = self;
  v22.super_class = MessageAttachmentEagerUploadStatus;
  v9 = a4;
  v10 = [(MessageAttachmentEagerUploadStatus *)&v22 init];
  v10->_state = 0;
  originalURL = v10->_originalURL;
  v10->_originalURL = v8;
  v12 = v8;

  v13 = [v9 copy];
  transferId = v10->_transferId;
  v10->_transferId = v13;

  v10->_targetSize = a5;
  v15 = objc_alloc_init(MessageAttachmentSingleStatus);
  attachmentStatus = v10->_attachmentStatus;
  v10->_attachmentStatus = v15;

  v17 = dispatch_group_create();
  uploadGroup = v10->_uploadGroup;
  v10->_uploadGroup = v17;

  +[NSDate timeIntervalSinceReferenceDate];
  v20 = v19;

  v10->_expiration = v20 + 86400.0;
  return v10;
}

- (void)wait:(id)a3
{
  v4 = a3;
  uploadGroup = self->_uploadGroup;
  ++self->_waitCount;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_560BC;
  v7[3] = &unk_113398;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_group_notify(uploadGroup, &_dispatch_main_q, v7);
}

- (void)start
{
  uploadGroup = self->_uploadGroup;
  if (uploadGroup)
  {
    dispatch_group_enter(uploadGroup);
  }
}

- (void)finish
{
  uploadGroup = self->_uploadGroup;
  if (uploadGroup)
  {
    dispatch_group_leave(uploadGroup);
    uploadGroup = self->_uploadGroup;
  }

  self->_uploadGroup = 0;
}

- (BOOL)isSuccess
{
  if ([(MessageAttachmentEagerUploadStatus *)self isCanceled])
  {
    return 0;
  }

  v4 = [(MessageAttachmentSingleStatus *)self->_attachmentStatus transferError];
  v3 = v4 == 0;

  return v3;
}

- (void)attachToTransfer:(id)a3 message:(id)a4 commonCapabilities:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v17 = +[IMDFileTransferCenter sharedInstance];
  v11 = [(MessageAttachmentEagerUploadStatus *)self attachmentSendContexts];
  v12 = [MessageAttachmentController _combinedTransferUserInfoForAttachmentSendContexts:v11 transfer:v10 message:v9 commonCapabilities:v8];

  v13 = [v10 guid];
  [v17 startTransfer:v13];
  [v10 setUserInfo:v12];
  [v10 setAttachmentSendContexts:v11];
  v14 = [v9 guid];

  [v10 setMessageGUID:v14];
  v15 = [(MessageAttachmentEagerUploadStatus *)self transferredName];
  [v10 setTransferredFilename:v15];

  v16 = [(MessageAttachmentEagerUploadStatus *)self totalBytes];
  [v17 updateTransfer:v13 currentBytes:v16 totalBytes:v16];
  [v17 endTransfer:v13];
}

- (BOOL)cancel
{
  if ([(MessageAttachmentEagerUploadStatus *)self isCanceled]|| [(MessageAttachmentEagerUploadStatus *)self isComplete]|| self->_waitCount)
  {
    return 0;
  }

  self->_state = 3;
  [(MessageAttachmentEagerUploadStatus *)self finish];
  return 1;
}

- (id)description
{
  state = self->_state;
  if (state > 5)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(&off_113C18 + state);
  }

  v5 = objc_opt_class();
  useCount = self->_useCount;
  return [NSString stringWithFormat:@"<%@:%p> transferId=%@ originalURL=%@ state=%@ useCount=%zd waitCount=%zd", v5, self, self->_transferId, self->_originalURL, v4, useCount, self->_waitCount];
}

@end