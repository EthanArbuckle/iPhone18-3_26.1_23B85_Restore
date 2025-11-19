@interface SecCBORArray
- (SecCBORArray)init;
- (SecCBORArray)initWith:(id)a3;
- (void)write:(id)a3;
@end

@implementation SecCBORArray

- (void)write:(id)a3
{
  v6 = a3;
  [(SecCBORValue *)self encodeStartItems:[(NSMutableArray *)self->m_data count] output:v6];
  if ([(NSMutableArray *)self->m_data count])
  {
    v4 = 0;
    do
    {
      v5 = [(NSMutableArray *)self->m_data objectAtIndexedSubscript:v4];
      [v5 write:v6];

      ++v4;
    }

    while (v4 < [(NSMutableArray *)self->m_data count]);
  }
}

- (SecCBORArray)initWith:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SecCBORArray;
  v5 = [(SecCBORArray *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithArray:v4];
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