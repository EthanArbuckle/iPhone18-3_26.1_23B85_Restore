@interface BYODDomainOption
- (BYODDomainOption)initWithDictionary:(id)dictionary;
@end

@implementation BYODDomainOption

- (BYODDomainOption)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = BYODDomainOption;
  v5 = [(BYODDomainOption *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"price"];
    price = v5->_price;
    v5->_price = v8;
  }

  return v5;
}

@end