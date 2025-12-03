@interface SKStorePageRequest
- (SKStorePageRequest)initWithXPCEncoding:(id)encoding;
- (id)copyXPCEncoding;
@end

@implementation SKStorePageRequest

- (SKStorePageRequest)initWithXPCEncoding:(id)encoding
{
  encodingCopy = encoding;
  v14.receiver = self;
  v14.super_class = SKStorePageRequest;
  v5 = [(SKStorePageRequest *)&v14 init];
  if (v5)
  {
    v6 = [encodingCopy objectForKey:@"0"];
    if (objc_opt_respondsToSelector())
    {
      v5->_pageStyle = [v6 integerValue];
    }

    v7 = [encodingCopy objectForKey:@"1"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 copy];
      productParameters = v5->_productParameters;
      v5->_productParameters = v8;
    }

    v10 = [encodingCopy objectForKey:@"2"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v10];
      productURL = v5->_productURL;
      v5->_productURL = v11;
    }
  }

  return v5;
}

- (id)copyXPCEncoding
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_pageStyle];
  [v3 setObject:v4 forKey:@"0"];

  productParameters = self->_productParameters;
  if (productParameters)
  {
    [v3 setObject:productParameters forKey:@"1"];
  }

  productURL = self->_productURL;
  if (productURL)
  {
    absoluteString = [(NSURL *)productURL absoluteString];
    [v3 setObject:absoluteString forKey:@"2"];
  }

  return v3;
}

@end