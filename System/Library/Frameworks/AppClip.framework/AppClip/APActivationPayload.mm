@interface APActivationPayload
- (APActivationPayload)initWithCoder:(id)coder;
- (APActivationPayload)initWithURL:(id)l;
- (id)copyWithZone:(_NSZone *)zone;
- (void)confirmAcquiredInRegion:(CLRegion *)region completionHandler:(void *)completionHandler;
@end

@implementation APActivationPayload

- (APActivationPayload)initWithURL:(id)l
{
  lCopy = l;
  v10.receiver = self;
  v10.super_class = APActivationPayload;
  v5 = [(APActivationPayload *)&v10 init];
  if (v5)
  {
    v6 = [lCopy copy];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = v5;
  }

  return v5;
}

- (void)confirmAcquiredInRegion:(CLRegion *)region completionHandler:(void *)completionHandler
{
  v6 = completionHandler;
  v7 = MEMORY[0x277CFA6B0];
  URL = self->_URL;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__APActivationPayload_confirmAcquiredInRegion_completionHandler___block_invoke;
  v10[3] = &unk_278A06E30;
  v11 = v6;
  v9 = v6;
  [v7 confirmLocationWithURL:URL inRegion:region completion:v10];
}

void __65__APActivationPayload_confirmAcquiredInRegion_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = v5;
  v12 = v7;
  if (v7)
  {
    if ([v7 code] == 15)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = 1;
    }

    else
    {
      v11 = [v12 code];
      v8 = MEMORY[0x277CCA9B8];
      if (v11 == 10)
      {
        v9 = 2;
      }

      else
      {
        v9 = -1;
      }
    }

    v10 = [v8 errorWithDomain:@"APActivationPayloadErrorDomain" code:v9 userInfo:0];
  }

  else
  {
    v10 = 0;
  }

  (*(v6 + 16))(v6, a2, v10);
}

- (APActivationPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = APActivationPayload;
  v5 = [(APActivationPayload *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = v5;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSURL *)self->_URL copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

@end