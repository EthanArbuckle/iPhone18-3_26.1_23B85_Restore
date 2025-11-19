@interface CKDCancelToken
- (void)cancel;
@end

@implementation CKDCancelToken

- (void)cancel
{
  self->_isCancelled = 1;
  v4 = objc_msgSend_cancelAction(self, a2, v2);

  if (v4)
  {
    v7 = objc_msgSend_cancelAction(self, v5, v6);
    v7[2]();
  }
}

@end