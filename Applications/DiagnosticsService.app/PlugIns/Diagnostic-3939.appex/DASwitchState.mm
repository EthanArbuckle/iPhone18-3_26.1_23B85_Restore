@interface DASwitchState
- (DASwitchState)initWithDictionary:(id)dictionary;
@end

@implementation DASwitchState

- (DASwitchState)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = DASwitchState;
  v5 = [(DASpecification *)&v9 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [[DAStateRange alloc] initWithDictionary:dictionaryCopy];
    range = v5->_range;
    v5->_range = v6;
  }

  if (!v5->_range)
  {

    v5 = 0;
  }

  return v5;
}

@end