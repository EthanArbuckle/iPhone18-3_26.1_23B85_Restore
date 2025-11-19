@interface SecCBORString
- (SecCBORString)initWith:(id)a3;
- (int64_t)compare:(id)a3;
- (void)write:(id)a3;
@end

@implementation SecCBORString

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(NSString *)self->m_data length];
  v6 = [v4[1] length];
  if (v5 >= v6)
  {
    if (v5 > v6)
    {
      v7 = NSOrderedDescending;
    }

    else
    {
      v7 = [(NSString *)self->m_data compare:v4[1]];
    }
  }

  else
  {
    v7 = NSOrderedAscending;
  }

  return v7;
}

- (void)write:(id)a3
{
  m_data = self->m_data;
  v5 = a3;
  [(SecCBORValue *)self encodeStartItems:[(NSString *)m_data length] output:v5];
  v7 = [(NSString *)self->m_data dataUsingEncoding:4];
  v6 = v7;
  [v5 appendBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];
}

- (SecCBORString)initWith:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SecCBORString;
  v5 = [(SecCBORString *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:v4];
    m_data = v5->m_data;
    v5->m_data = v6;
  }

  return v5;
}

@end