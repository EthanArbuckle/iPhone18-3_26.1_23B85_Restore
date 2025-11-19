@interface LSDServiceDomain
@end

@implementation LSDServiceDomain

void __41___LSDServiceDomain_defaultServiceDomain__block_invoke()
{
  v0 = [_LSDServiceDomain alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = _LSDServiceDomain;
    v0 = objc_msgSendSuper2(&v2, sel_init);
    if (v0)
    {
      v0->_resolvedDomainUID.__engaged_ = 0;
      v0->_resolvedDomainUID.var0.__val_ = 0;
      v0->_specifierType = 0;
    }
  }

  v1 = +[_LSDServiceDomain defaultServiceDomain]::target;
  +[_LSDServiceDomain defaultServiceDomain]::target = v0;
}

void __40___LSDServiceDomain_systemSessionDomain__block_invoke()
{
  v0 = [_LSDServiceDomain alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = _LSDServiceDomain;
    v0 = objc_msgSendSuper2(&v2, sel_init);
    if (v0)
    {
      v0->_resolvedDomainUID.var0.__val_ = 0;
      v0->_resolvedDomainUID.__engaged_ = 1;
      v0->_specifierType = 3;
    }
  }

  v1 = +[_LSDServiceDomain systemSessionDomain]::target;
  +[_LSDServiceDomain systemSessionDomain]::target = v0;
}

@end