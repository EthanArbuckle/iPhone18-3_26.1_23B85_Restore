@interface HKKeyValueDomainGivenFamilyNameInputSignal
- (void)didUpdateKeyValueDomain:(id)domain;
@end

@implementation HKKeyValueDomainGivenFamilyNameInputSignal

- (void)didUpdateKeyValueDomain:(id)domain
{
  domainCopy = domain;

  sub_29E4AB8DC(domainCopy, self);
}

@end