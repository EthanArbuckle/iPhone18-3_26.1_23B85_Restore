@interface SecCBORData
- (SecCBORData)initWith:(id)with;
- (void)write:(id)write;
@end

@implementation SecCBORData

- (void)write:(id)write
{
  m_data = self->m_data;
  writeCopy = write;
  [(SecCBORValue *)self encodeStartItems:[(NSData *)m_data length] output:writeCopy];
  [writeCopy appendBytes:-[NSData bytes](self->m_data length:{"bytes"), -[NSData length](self->m_data, "length")}];
}

- (SecCBORData)initWith:(id)with
{
  withCopy = with;
  v9.receiver = self;
  v9.super_class = SecCBORData;
  v5 = [(SecCBORData *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:withCopy];
    m_data = v5->m_data;
    v5->m_data = v6;
  }

  return v5;
}

@end