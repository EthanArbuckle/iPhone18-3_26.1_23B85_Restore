@interface APMescalSigningRequestor
- (APMescalSigningRequestor)init;
- (id)signatureForData:(id)data;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)signatureForData:(id)data completion:(id)completion;
- (void)signatureForData:(id)data waitTime:(double)time completion:(id)completion;
@end

@implementation APMescalSigningRequestor

- (APMescalSigningRequestor)init
{
  v3.receiver = self;
  v3.super_class = APMescalSigningRequestor;
  return [(APXPCActionRequester *)&v3 init];
}

- (void)signatureForData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  v14 = objc_msgSend_remoteObjectProxy(self, v8, v9, v10, v11, v12, v13);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = sub_1BAFD6EC8;
  v20[3] = &unk_1E7F20FA8;
  v21 = completionCopy;
  v15 = completionCopy;
  objc_msgSend_signatureForData_completion_(v14, v16, dataCopy, v20, v17, v18, v19);
}

- (id)signatureForData:(id)data
{
  dataCopy = data;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_1BAFD711C;
  v20 = sub_1BAFD712C;
  v21 = 0;
  v9 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(self, v5, &unk_1F390A690, v6, v7, COERCE_DOUBLE(0x3032000000), v8);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1BAFD71E4;
  v15[3] = &unk_1E7F20FD0;
  v15[4] = &v16;
  objc_msgSend_signatureForData_completion_(v9, v10, dataCopy, v15, v11, COERCE_DOUBLE(3221225472), v12);

  v13 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v13;
}

- (void)signatureForData:(id)data waitTime:(double)time completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  v16 = objc_msgSend_remoteObjectProxy(self, v10, v11, v12, v13, v14, v15);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_1BAFD739C;
  v21[3] = &unk_1E7F20FA8;
  v22 = completionCopy;
  v17 = completionCopy;
  objc_msgSend_signatureForData_waitTime_completion_(v16, v18, dataCopy, v21, v19, time, v20);
}

- (void)connectionInterrupted
{
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1BAFC4000, v2, OS_LOG_TYPE_DEFAULT, "Connection to MescalSigning in Daemon was interrupted.", v3, 2u);
  }
}

- (void)connectionInvalidated
{
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1BAFC4000, v2, OS_LOG_TYPE_INFO, "Connection to MescalSigning in Daemon was invalidated.", v3, 2u);
  }
}

@end