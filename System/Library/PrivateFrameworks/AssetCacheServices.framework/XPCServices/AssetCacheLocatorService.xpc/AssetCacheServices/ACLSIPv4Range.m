@interface ACLSIPv4Range
- (ACLSIPv4Range)initWithFirst:(const in_addr *)a3 andLast:(const in_addr *)a4;
- (BOOL)containsAddress:(const in_addr *)a3;
- (id)description;
@end

@implementation ACLSIPv4Range

- (ACLSIPv4Range)initWithFirst:(const in_addr *)a3 andLast:(const in_addr *)a4
{
  if (bswap32(a3->s_addr) <= bswap32(a4->s_addr))
  {
    v10.receiver = self;
    v10.super_class = ACLSIPv4Range;
    v7 = [(ACLSIPv4Range *)&v10 init];
    v8 = v7;
    if (v7)
    {
      [(ACLSIPv4Range *)v7 setFirst:a3->s_addr];
      [(ACLSIPv4Range *)v8 setLast:a4->s_addr];
    }

    self = v8;
    v4 = self;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)containsAddress:(const in_addr *)a3
{
  v3 = bswap32(self->_first.s_addr);
  v4 = bswap32(a3->s_addr);
  v5 = v3 >= v4;
  v6 = v3 > v4;
  v7 = !v5;
  if (v6 - v7 > 0)
  {
    return 0;
  }

  v9 = bswap32(a3->s_addr);
  v10 = bswap32(self->_last.s_addr);
  v5 = v9 >= v10;
  v11 = v9 > v10;
  v12 = !v5;
  return v11 - v12 < 1;
}

- (id)description
{
  s_addr = self->_first.s_addr;
  p_last = &self->_last;
  v4 = self->_last.s_addr;
  v5 = [ACLSNetworkUtilities stringFromInaddr4:?];
  v6 = v5;
  if (s_addr == v4)
  {
    v8 = [NSString stringWithFormat:@"%@", v5];
  }

  else
  {
    v7 = [ACLSNetworkUtilities stringFromInaddr4:p_last];
    v8 = [NSString stringWithFormat:@"%@-%@", v6, v7];
  }

  return v8;
}

@end