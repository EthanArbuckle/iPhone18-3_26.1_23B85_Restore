@interface MessageAttachmentEagerUploadStatus
- (BOOL)cancel;
- (BOOL)isSuccess;
- (MessageAttachmentEagerUploadStatus)initWithOriginalURL:(id)l transferId:(id)id targetSize:(int64_t)size;
- (id)description;
- (void)attachToTransfer:(id)transfer message:(id)message commonCapabilities:(id)capabilities;
- (void)finish;
- (void)start;
- (void)wait:(id)wait;
@end

@implementation MessageAttachmentEagerUploadStatus

- (MessageAttachmentEagerUploadStatus)initWithOriginalURL:(id)l transferId:(id)id targetSize:(int64_t)size
{
  lCopy = l;
  v22.receiver = self;
  v22.super_class = MessageAttachmentEagerUploadStatus;
  idCopy = id;
  v10 = [(MessageAttachmentEagerUploadStatus *)&v22 init];
  v10->_state = 0;
  originalURL = v10->_originalURL;
  v10->_originalURL = lCopy;
  v12 = lCopy;

  v13 = [idCopy copy];
  transferId = v10->_transferId;
  v10->_transferId = v13;

  v10->_targetSize = size;
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

- (void)wait:(id)wait
{
  waitCopy = wait;
  uploadGroup = self->_uploadGroup;
  ++self->_waitCount;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_560BC;
  v7[3] = &unk_113398;
  v7[4] = self;
  v8 = waitCopy;
  v6 = waitCopy;
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

  transferError = [(MessageAttachmentSingleStatus *)self->_attachmentStatus transferError];
  v3 = transferError == 0;

  return v3;
}

- (void)attachToTransfer:(id)transfer message:(id)message commonCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  messageCopy = message;
  transferCopy = transfer;
  v17 = +[IMDFileTransferCenter sharedInstance];
  attachmentSendContexts = [(MessageAttachmentEagerUploadStatus *)self attachmentSendContexts];
  v12 = [MessageAttachmentController _combinedTransferUserInfoForAttachmentSendContexts:attachmentSendContexts transfer:transferCopy message:messageCopy commonCapabilities:capabilitiesCopy];

  guid = [transferCopy guid];
  [v17 startTransfer:guid];
  [transferCopy setUserInfo:v12];
  [transferCopy setAttachmentSendContexts:attachmentSendContexts];
  guid2 = [messageCopy guid];

  [transferCopy setMessageGUID:guid2];
  transferredName = [(MessageAttachmentEagerUploadStatus *)self transferredName];
  [transferCopy setTransferredFilename:transferredName];

  totalBytes = [(MessageAttachmentEagerUploadStatus *)self totalBytes];
  [v17 updateTransfer:guid currentBytes:totalBytes totalBytes:totalBytes];
  [v17 endTransfer:guid];
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