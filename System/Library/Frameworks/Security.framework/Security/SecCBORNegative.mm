@interface SecCBORNegative
- (SecCBORNegative)initWith:(int64_t)with;
- (int64_t)compare:(id)compare;
@end

@implementation SecCBORNegative

- (int64_t)compare:(id)compare
{
  m_data = self->m_data;
  v4 = *(compare + 1);
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

- (SecCBORNegative)initWith:(int64_t)with
{
  v5.receiver = self;
  v5.super_class = SecCBORNegative;
  result = [(SecCBORNegative *)&v5 init];
  if (result)
  {
    result->m_data = with;
  }

  return result;
}

@end