@interface CBORData
- (CBORData)initWith:(id)with;
- (void)write:(id)write;
@end

@implementation CBORData

- (CBORData)initWith:(id)with
{
  withCopy = with;
  v9.receiver = self;
  v9.super_class = CBORData;
  v5 = [(CBORData *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithData:withCopy];
    m_data = v5->m_data;
    v5->m_data = v6;
  }

  return v5;
}

- (void)write:(id)write
{
  m_data = self->m_data;
  writeCopy = write;
  [(CBORValue *)self encodeStartItems:[(NSData *)m_data length] output:writeCopy];
  [writeCopy appendBytes:-[NSData bytes](self->m_data length:{"bytes"), -[NSData length](self->m_data, "length")}];
}

@end