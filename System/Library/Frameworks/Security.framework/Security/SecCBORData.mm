@interface SecCBORData
- (SecCBORData)initWith:(id)a3;
- (void)write:(id)a3;
@end

@implementation SecCBORData

- (void)write:(id)a3
{
  m_data = self->m_data;
  v5 = a3;
  [(SecCBORValue *)self encodeStartItems:[(NSData *)m_data length] output:v5];
  [v5 appendBytes:-[NSData bytes](self->m_data length:{"bytes"), -[NSData length](self->m_data, "length")}];
}

- (SecCBORData)initWith:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SecCBORData;
  v5 = [(SecCBORData *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithData:v4];
    m_data = v5->m_data;
    v5->m_data = v6;
  }

  return v5;
}

@end