@interface DAButtonParameters
- (DAButtonParameters)initWithDictionary:(id)dictionary;
@end

@implementation DAButtonParameters

- (DAButtonParameters)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v13 = 0;
  v12.receiver = self;
  v12.super_class = DAButtonParameters;
  v5 = [(DAParameters *)&v12 initWithDictionary:dictionaryCopy];
  v6 = v5;
  if (dictionaryCopy && v5)
  {
    v7 = [NSSet setWithObject:objc_opt_class()];
    v8 = [dictionaryCopy dk_arrayFromRequiredKey:@"segments" types:v7 maxLength:100 failed:&v13];

    v9 = [(DASpecification *)DAButtonSegment specificationFromArray:v8];
    segments = v6->_segments;
    v6->_segments = v9;
  }

  if (!v6->_segments || v13 == 1)
  {

    v6 = 0;
  }

  return v6;
}

@end