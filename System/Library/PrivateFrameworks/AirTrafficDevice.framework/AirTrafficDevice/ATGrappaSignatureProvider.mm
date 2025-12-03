@interface ATGrappaSignatureProvider
- (ATGrappaSignatureProvider)initWithGrappaSession:(id)session;
- (id)createSignature:(id *)signature forData:(id)data;
- (id)verifySignature:(id)signature forData:(id)data;
@end

@implementation ATGrappaSignatureProvider

- (id)verifySignature:(id)signature forData:(id)data
{
  signatureCopy = signature;
  dataCopy = data;
  if ([dataCopy length] && objc_msgSend(signatureCopy, "length"))
  {
    v8 = [(ATGrappaSession *)self->_grappaSession verifySignature:signatureCopy forData:dataCopy];
LABEL_7:
    v9 = v8;
    goto LABEL_8;
  }

  if ([dataCopy length] || objc_msgSend(signatureCopy, "length"))
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:4 userInfo:0];
    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (id)createSignature:(id *)signature forData:(id)data
{
  dataCopy = data;
  if ([dataCopy length])
  {
    v7 = [(ATGrappaSession *)self->_grappaSession createSignature:signature forData:dataCopy];
  }

  else
  {
    v7 = 0;
    *signature = 0;
  }

  return v7;
}

- (ATGrappaSignatureProvider)initWithGrappaSession:(id)session
{
  sessionCopy = session;
  v11.receiver = self;
  v11.super_class = ATGrappaSignatureProvider;
  v6 = [(ATGrappaSignatureProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_grappaSession, session);
    v8 = +[ATDeviceSettings sharedInstance];
    settings = v7->_settings;
    v7->_settings = v8;
  }

  return v7;
}

@end