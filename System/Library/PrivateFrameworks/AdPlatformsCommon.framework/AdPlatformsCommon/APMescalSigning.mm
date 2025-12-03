@interface APMescalSigning
- (APMescalSigning)init;
- (id)signatureForData:(id)data;
- (void)dealloc;
- (void)signatureForData:(id)data completion:(id)completion;
- (void)signatureForData:(id)data waitTime:(double)time completion:(id)completion;
@end

@implementation APMescalSigning

- (APMescalSigning)init
{
  v6.receiver = self;
  v6.super_class = APMescalSigning;
  v2 = [(APMescalSigning *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(APMescalSigningRequestor);
    requesterObject = v2->_requesterObject;
    v2->_requesterObject = v3;
  }

  return v2;
}

- (void)signatureForData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  v18 = objc_msgSend_requesterObject(self, v8, v9, v10, v11, v12, v13);
  objc_msgSend_signatureForData_completion_(v18, v14, dataCopy, completionCopy, v15, v16, v17);
}

- (id)signatureForData:(id)data
{
  dataCopy = data;
  v11 = objc_msgSend_requesterObject(self, v5, v6, v7, v8, v9, v10);
  v17 = objc_msgSend_signatureForData_(v11, v12, dataCopy, v13, v14, v15, v16);

  return v17;
}

- (void)signatureForData:(id)data waitTime:(double)time completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  v19 = objc_msgSend_requesterObject(self, v10, v11, v12, v13, v14, v15);
  objc_msgSend_signatureForData_waitTime_completion_(v19, v16, dataCopy, completionCopy, v17, time, v18);
}

- (void)dealloc
{
  v8 = objc_msgSend_requesterObject(self, a2, v2, v3, v4, v5, v6);
  objc_msgSend_finished(v8, v9, v10, v11, v12, v13, v14);

  v15.receiver = self;
  v15.super_class = APMescalSigning;
  [(APMescalSigning *)&v15 dealloc];
}

@end