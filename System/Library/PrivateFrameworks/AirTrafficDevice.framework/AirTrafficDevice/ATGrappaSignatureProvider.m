@interface ATGrappaSignatureProvider
- (ATGrappaSignatureProvider)initWithGrappaSession:(id)a3;
- (id)createSignature:(id *)a3 forData:(id)a4;
- (id)verifySignature:(id)a3 forData:(id)a4;
@end

@implementation ATGrappaSignatureProvider

- (id)verifySignature:(id)a3 forData:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v7 length] && objc_msgSend(v6, "length"))
  {
    v8 = [(ATGrappaSession *)self->_grappaSession verifySignature:v6 forData:v7];
LABEL_7:
    v9 = v8;
    goto LABEL_8;
  }

  if ([v7 length] || objc_msgSend(v6, "length"))
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ATError" code:4 userInfo:0];
    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (id)createSignature:(id *)a3 forData:(id)a4
{
  v6 = a4;
  if ([v6 length])
  {
    v7 = [(ATGrappaSession *)self->_grappaSession createSignature:a3 forData:v6];
  }

  else
  {
    v7 = 0;
    *a3 = 0;
  }

  return v7;
}

- (ATGrappaSignatureProvider)initWithGrappaSession:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ATGrappaSignatureProvider;
  v6 = [(ATGrappaSignatureProvider *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_grappaSession, a3);
    v8 = +[ATDeviceSettings sharedInstance];
    settings = v7->_settings;
    v7->_settings = v8;
  }

  return v7;
}

@end