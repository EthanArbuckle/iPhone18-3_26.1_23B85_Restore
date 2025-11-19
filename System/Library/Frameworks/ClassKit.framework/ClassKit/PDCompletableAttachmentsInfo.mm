@interface PDCompletableAttachmentsInfo
- (PDCompletableAttachmentsInfo)init;
@end

@implementation PDCompletableAttachmentsInfo

- (PDCompletableAttachmentsInfo)init
{
  v12.receiver = self;
  v12.super_class = PDCompletableAttachmentsInfo;
  v2 = [(PDCompletableAttachmentsInfo *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    handoutIDs = v2->_handoutIDs;
    v2->_handoutIDs = v3;

    v5 = objc_opt_new();
    handoutAttachmentIDs = v2->_handoutAttachmentIDs;
    v2->_handoutAttachmentIDs = v5;

    v7 = objc_opt_new();
    attachmentsToUpdate = v2->_attachmentsToUpdate;
    v2->_attachmentsToUpdate = v7;

    v9 = objc_opt_new();
    messageInfoArray = v2->_messageInfoArray;
    v2->_messageInfoArray = v9;
  }

  return v2;
}

@end