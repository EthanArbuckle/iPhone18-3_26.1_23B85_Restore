@interface SecCBORArray
- (SecCBORArray)init;
- (SecCBORArray)initWith:(id)with;
- (void)write:(id)write;
@end

@implementation SecCBORArray

- (void)write:(id)write
{
  writeCopy = write;
  [(SecCBORValue *)self encodeStartItems:[(NSMutableArray *)self->m_data count] output:writeCopy];
  if ([(NSMutableArray *)self->m_data count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->m_data objectAtIndexedSubscript:v4];
      [v5 write:writeCopy];

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->m_data count]);
  }
}

- (SecCBORArray)initWith:(id)with
{
  withCopy = with;
  v9.receiver = self;
  v9.super_class = SecCBORArray;
  v5 = [(SecCBORArray *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:withCopy];
    m_data = v5->m_data;
    v5->m_data = v6;
  }

  return v5;
}

- (SecCBORArray)init
{
  v6.receiver = self;
  v6.super_class = SecCBORArray;
  v2 = [(SecCBORArray *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    m_data = v2->m_data;
    v2->m_data = v3;
  }

  return v2;
}

@end