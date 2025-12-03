@interface BYODAddDomainResult
- (BYODAddDomainResult)initWithDictionary:(id)dictionary;
@end

@implementation BYODAddDomainResult

- (BYODAddDomainResult)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = BYODAddDomainResult;
  v5 = [(BYODAddDomainResult *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"domain"];
    domain = v5->_domain;
    v5->_domain = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isDomainConnect"];
    v5->_isDomainConnect = [v8 BOOLValue];
  }

  return v5;
}

@end