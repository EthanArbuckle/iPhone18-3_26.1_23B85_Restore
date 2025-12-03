@interface DAStateRange
- (DAStateRange)initWithDictionary:(id)dictionary;
- (_NSRange)displayAssetRange;
- (_NSRange)transitionAssetRange;
@end

@implementation DAStateRange

- (DAStateRange)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v19 = 0;
  v18.receiver = self;
  v18.super_class = DAStateRange;
  v5 = [(DASpecification *)&v18 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy dk_dictionaryFromRequiredKey:@"displayAssetRange" failed:&v19];
    v7 = [v6 dk_numberFromRequiredKey:@"start" lowerBound:&off_100011140 upperBound:&off_100011158 failed:&v19];
    intValue = [v7 intValue];

    v9 = [v6 dk_numberFromRequiredKey:@"finish" lowerBound:&off_100011140 upperBound:&off_100011158 failed:&v19];
    intValue2 = [v9 intValue];

    v5->_displayAssetRange.location = intValue;
    v5->_displayAssetRange.length = (intValue2 - intValue + 1);
    v11 = [dictionaryCopy dk_dictionaryFromKey:@"transitionAssetRange" defaultValue:0 failed:&v19];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 dk_numberFromRequiredKey:@"start" lowerBound:&off_100011140 upperBound:&off_100011158 failed:&v19];
      intValue3 = [v13 intValue];

      v15 = [v12 dk_numberFromRequiredKey:@"finish" lowerBound:&off_100011140 upperBound:&off_100011158 failed:&v19];
      intValue4 = [v15 intValue];

      v5->_transitionAssetRange.location = intValue3;
      v5->_transitionAssetRange.length = (intValue4 - intValue3 + 1);
    }

    else
    {
      v5->_transitionAssetRange.location = 0;
      v5->_transitionAssetRange.length = 0;
    }

    if (v19)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (_NSRange)displayAssetRange
{
  p_displayAssetRange = &self->_displayAssetRange;
  location = self->_displayAssetRange.location;
  length = p_displayAssetRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)transitionAssetRange
{
  p_transitionAssetRange = &self->_transitionAssetRange;
  location = self->_transitionAssetRange.location;
  length = p_transitionAssetRange->length;
  result.length = length;
  result.location = location;
  return result;
}

@end