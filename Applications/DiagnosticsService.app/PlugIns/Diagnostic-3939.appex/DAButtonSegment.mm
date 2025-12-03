@interface DAButtonSegment
- (DAButtonSegment)initWithDictionary:(id)dictionary;
@end

@implementation DAButtonSegment

- (DAButtonSegment)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14 = 0;
  v13.receiver = self;
  v13.super_class = DAButtonSegment;
  v5 = [(DASpecification *)&v13 initWithDictionary:dictionaryCopy];
  v6 = v5;
  if (dictionaryCopy && v5)
  {
    v7 = [dictionaryCopy dk_stringFromRequiredKey:@"location" maxLength:100 failed:&v14];
    location = v6->_location;
    v6->_location = v7;

    v9 = [dictionaryCopy dk_numberFromRequiredKey:@"numberOfActions" lowerBound:&off_100011110 upperBound:&off_100011128 failed:&v14];
    v6->_numberOfActions = [v9 intValue];

    v10 = [[DAStateRange alloc] initWithDictionary:dictionaryCopy];
    range = v6->_range;
    v6->_range = v10;
  }

  if (!v6->_range || v14 == 1)
  {

    v6 = 0;
  }

  return v6;
}

@end