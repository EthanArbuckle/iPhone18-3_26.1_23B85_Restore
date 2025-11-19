@interface APMescalSigning
- (APMescalSigning)init;
- (id)signatureForData:(id)a3;
- (void)dealloc;
- (void)signatureForData:(id)a3 completion:(id)a4;
- (void)signatureForData:(id)a3 waitTime:(double)a4 completion:(id)a5;
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

- (void)signatureForData:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v18 = objc_msgSend_requesterObject(self, v8, v9, v10, v11, v12, v13);
  objc_msgSend_signatureForData_completion_(v18, v14, v7, v6, v15, v16, v17);
}

- (id)signatureForData:(id)a3
{
  v4 = a3;
  v11 = objc_msgSend_requesterObject(self, v5, v6, v7, v8, v9, v10);
  v17 = objc_msgSend_signatureForData_(v11, v12, v4, v13, v14, v15, v16);

  return v17;
}

- (void)signatureForData:(id)a3 waitTime:(double)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a3;
  v19 = objc_msgSend_requesterObject(self, v10, v11, v12, v13, v14, v15);
  objc_msgSend_signatureForData_waitTime_completion_(v19, v16, v9, v8, v17, a4, v18);
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