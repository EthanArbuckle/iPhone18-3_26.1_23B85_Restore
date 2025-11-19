@interface NEIPSecSALocalSession
- (BOOL)addLarvalSA:(id)a3;
- (NEIPSecSALocalSession)initWithName:(id)a3 delegate:(id)a4;
- (id)description;
@end

@implementation NEIPSecSALocalSession

- (BOOL)addLarvalSA:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 spi];
  if (v5)
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412546;
      v14 = self;
      v15 = 1024;
      v16 = bswap32([v4 spi]);
      _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "%@ SPI is not 0, it is %X", &v13, 0x12u);
    }

    v7 = ne_log_obj();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v13) = 0;
      _os_log_fault_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_FAULT, "SPI is not 0", &v13, 2u);
    }
  }

  else
  {
    v8 = arc4random();
    if (v4)
    {
      v4[5] = v8;
    }

    if (self)
    {
      Property = objc_getProperty(self, v9, 32, 1);
    }

    else
    {
      Property = 0;
    }

    [Property addObject:v4];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5 == 0;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (self)
  {
    uniqueIndex = self->super._uniqueIndex;
  }

  else
  {
    uniqueIndex = 0;
  }

  v5 = [(NEIPSecSASession *)self name];
  v6 = [v3 initWithFormat:@"LocalSASession[%llu, %@]", uniqueIndex, v5];

  return v6;
}

- (NEIPSecSALocalSession)initWithName:(id)a3 delegate:(id)a4
{
  v10.receiver = self;
  v10.super_class = NEIPSecSALocalSession;
  v4 = [(NEIPSecSASession *)&v10 initWithName:a3 delegate:a4];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *v9 = 0;
      _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "[super initWithName:delegate] failed", v9, 2u);
    }
  }

  return v5;
}

@end