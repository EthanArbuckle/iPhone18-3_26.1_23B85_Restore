@interface BYODAddDomainResult
- (BYODAddDomainResult)initWithDictionary:(id)a3;
@end

@implementation BYODAddDomainResult

- (BYODAddDomainResult)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BYODAddDomainResult;
  v5 = [(BYODAddDomainResult *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"domain"];
    domain = v5->_domain;
    v5->_domain = v6;

    v8 = [v4 objectForKeyedSubscript:@"isDomainConnect"];
    v5->_isDomainConnect = [v8 BOOLValue];
  }

  return v5;
}

@end