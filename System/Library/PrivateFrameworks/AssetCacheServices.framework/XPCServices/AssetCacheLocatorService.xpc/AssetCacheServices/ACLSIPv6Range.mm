@interface ACLSIPv6Range
- (ACLSIPv6Range)initWithFirst:(const in6_addr *)a3 andLast:(const in6_addr *)a4;
- (BOOL)containsAddress:(const in6_addr *)a3;
- (id)description;
- (in6_addr)first;
- (in6_addr)last;
@end

@implementation ACLSIPv6Range

- (ACLSIPv6Range)initWithFirst:(const in6_addr *)a3 andLast:(const in6_addr *)a4
{
  v6 = bswap64(*a3->__u6_addr8);
  v7 = bswap64(*a4->__u6_addr8);
  if (v6 == v7 && (v6 = bswap64(*&a3->__u6_addr32[2]), v7 = bswap64(*&a4->__u6_addr32[2]), v6 == v7))
  {
    v8 = 0;
  }

  else if (v6 < v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  if (v8 <= 0)
  {
    v13.receiver = self;
    v13.super_class = ACLSIPv6Range;
    v10 = [(ACLSIPv6Range *)&v13 init];
    v11 = v10;
    if (v10)
    {
      [(ACLSIPv6Range *)v10 setFirst:*a3->__u6_addr8, *&a3->__u6_addr32[2]];
      [(ACLSIPv6Range *)v11 setLast:*a4->__u6_addr8, *&a4->__u6_addr32[2]];
    }

    self = v11;
    v9 = self;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)containsAddress:(const in6_addr *)a3
{
  v3 = bswap64(*self->_first.__u6_addr8);
  v4 = bswap64(*a3->__u6_addr8);
  if (v3 == v4 && (v3 = bswap64(*&self->_first.__u6_addr32[2]), v4 = bswap64(*&a3->__u6_addr32[2]), v3 == v4))
  {
    v5 = 0;
  }

  else if (v3 < v4)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

  if (v5 > 0)
  {
    return 0;
  }

  v7 = bswap64(*a3->__u6_addr8);
  v8 = bswap64(*self->_last.__u6_addr8);
  if (v7 == v8 && (v7 = bswap64(*&a3->__u6_addr32[2]), v8 = bswap64(*&self->_last.__u6_addr32[2]), v7 == v8))
  {
    v9 = 0;
  }

  else if (v7 < v8)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  return v9 < 1;
}

- (id)description
{
  p_last = &self->_last;
  v4 = *self->_first.__u6_addr8 != *self->_last.__u6_addr8 || *&self->_first.__u6_addr32[2] != *&self->_last.__u6_addr32[2];
  v5 = [ACLSNetworkUtilities stringFromInaddr6:?];
  v6 = v5;
  if (v4)
  {
    v7 = [ACLSNetworkUtilities stringFromInaddr6:p_last];
    v8 = [NSString stringWithFormat:@"%@-%@", v6, v7];
  }

  else
  {
    v8 = [NSString stringWithFormat:@"%@", v5];
  }

  return v8;
}

- (in6_addr)first
{
  objc_copyStruct(v4, &self->_first, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  *&result.__u6_addr32[2] = v3;
  *result.__u6_addr8 = v2;
  return result;
}

- (in6_addr)last
{
  objc_copyStruct(v4, &self->_last, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  *&result.__u6_addr32[2] = v3;
  *result.__u6_addr8 = v2;
  return result;
}

@end