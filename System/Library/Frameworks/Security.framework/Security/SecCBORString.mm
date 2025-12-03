@interface SecCBORString
- (SecCBORString)initWith:(id)with;
- (int64_t)compare:(id)compare;
- (void)write:(id)write;
@end

@implementation SecCBORString

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = [(NSString *)self->m_data length];
  v6 = [compareCopy[1] length];
  if (v5 >= v6)
  {
    if (v5 > v6)
    {
      v7 = NSOrderedDescending;
    }

    else
    {
      v7 = [(NSString *)self->m_data compare:compareCopy[1]];
    }
  }

  else
  {
    v7 = NSOrderedAscending;
  }

  return v7;
}

- (void)write:(id)write
{
  m_data = self->m_data;
  writeCopy = write;
  [(SecCBORValue *)self encodeStartItems:[(NSString *)m_data length] output:writeCopy];
  v7 = [(NSString *)self->m_data dataUsingEncoding:4];
  v6 = v7;
  [writeCopy appendBytes:objc_msgSend(v7 length:{"bytes"), objc_msgSend(v7, "length")}];
}

- (SecCBORString)initWith:(id)with
{
  withCopy = with;
  v9.receiver = self;
  v9.super_class = SecCBORString;
  v5 = [(SecCBORString *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithString:withCopy];
    m_data = v5->m_data;
    v5->m_data = v6;
  }

  return v5;
}

@end