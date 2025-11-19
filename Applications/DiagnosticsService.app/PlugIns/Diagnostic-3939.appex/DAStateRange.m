@interface DAStateRange
- (DAStateRange)initWithDictionary:(id)a3;
- (_NSRange)displayAssetRange;
- (_NSRange)transitionAssetRange;
@end

@implementation DAStateRange

- (DAStateRange)initWithDictionary:(id)a3
{
  v4 = a3;
  v19 = 0;
  v18.receiver = self;
  v18.super_class = DAStateRange;
  v5 = [(DASpecification *)&v18 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 dk_dictionaryFromRequiredKey:@"displayAssetRange" failed:&v19];
    v7 = [v6 dk_numberFromRequiredKey:@"start" lowerBound:&off_100011140 upperBound:&off_100011158 failed:&v19];
    v8 = [v7 intValue];

    v9 = [v6 dk_numberFromRequiredKey:@"finish" lowerBound:&off_100011140 upperBound:&off_100011158 failed:&v19];
    v10 = [v9 intValue];

    v5->_displayAssetRange.location = v8;
    v5->_displayAssetRange.length = (v10 - v8 + 1);
    v11 = [v4 dk_dictionaryFromKey:@"transitionAssetRange" defaultValue:0 failed:&v19];
    v12 = v11;
    if (v11)
    {
      v13 = [v11 dk_numberFromRequiredKey:@"start" lowerBound:&off_100011140 upperBound:&off_100011158 failed:&v19];
      v14 = [v13 intValue];

      v15 = [v12 dk_numberFromRequiredKey:@"finish" lowerBound:&off_100011140 upperBound:&off_100011158 failed:&v19];
      v16 = [v15 intValue];

      v5->_transitionAssetRange.location = v14;
      v5->_transitionAssetRange.length = (v16 - v14 + 1);
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