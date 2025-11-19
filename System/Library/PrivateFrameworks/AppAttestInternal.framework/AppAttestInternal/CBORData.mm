@interface CBORData
- (CBORData)initWith:(id)a3;
- (void)write:(id)a3;
@end

@implementation CBORData

- (CBORData)initWith:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CBORData;
  v5 = [(CBORData *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithData:v4];
    m_data = v5->m_data;
    v5->m_data = v6;
  }

  return v5;
}

- (void)write:(id)a3
{
  m_data = self->m_data;
  v5 = a3;
  [(CBORValue *)self encodeStartItems:[(NSData *)m_data length] output:v5];
  [v5 appendBytes:-[NSData bytes](self->m_data length:{"bytes"), -[NSData length](self->m_data, "length")}];
}

@end