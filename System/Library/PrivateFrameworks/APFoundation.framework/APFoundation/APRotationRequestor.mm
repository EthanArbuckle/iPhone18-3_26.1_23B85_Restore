@interface APRotationRequestor
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)rotate:(id)rotate;
@end

@implementation APRotationRequestor

- (void)rotate:(id)rotate
{
  rotateCopy = rotate;
  v12 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(self, v5, &unk_1F38F47A0, v6);
  objc_msgSend_rotate_(v12, v7, rotateCopy, v8);

  objc_msgSend_finished(self, v9, v10, v11);
}

- (void)connectionInterrupted
{
  v2 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1BADC1000, v2, OS_LOG_TYPE_INFO, "Connection for Promoted Content Rotation in Daemon was interrupted.", v3, 2u);
  }
}

- (void)connectionInvalidated
{
  v2 = APLogForCategory(0x30uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1BADC1000, v2, OS_LOG_TYPE_INFO, "Connection for Promoted Content Rotation in Daemon was invalidated.", v3, 2u);
  }
}

@end