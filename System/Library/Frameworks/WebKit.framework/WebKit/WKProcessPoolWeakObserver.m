@interface WKProcessPoolWeakObserver
- (WKProcessPoolWeakObserver)initWithWeakPtr:(void *)a3;
@end

@implementation WKProcessPoolWeakObserver

- (WKProcessPoolWeakObserver)initWithWeakPtr:(void *)a3
{
  v10.receiver = self;
  v10.super_class = WKProcessPoolWeakObserver;
  v4 = [(WKProcessPoolWeakObserver *)&v10 init];
  v6 = v4;
  if (v4)
  {
    v7 = *a3;
    *a3 = 0;
    m_ptr = v4->m_weakPtr.m_impl.m_ptr;
    v6->m_weakPtr.m_impl.m_ptr = v7;
    if (m_ptr)
    {
      if (atomic_fetch_add(m_ptr, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, m_ptr);
        WTF::fastFree(m_ptr, v5);
      }
    }
  }

  return v6;
}

@end