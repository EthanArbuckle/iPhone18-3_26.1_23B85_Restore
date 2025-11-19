@interface CBORNegative
- (CBORNegative)initWith:(int64_t)a3;
- (int64_t)compare:(id)a3;
@end

@implementation CBORNegative

- (CBORNegative)initWith:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = CBORNegative;
  result = [(CBORNegative *)&v5 init];
  if (result)
  {
    result->m_data = a3;
  }

  return result;
}

- (int64_t)compare:(id)a3
{
  m_data = self->m_data;
  v4 = *(a3 + 1);
  v5 = m_data <= v4;
  v6 = m_data < v4;
  if (v5)
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

@end