@interface DAAsset
- (CGSize)size;
- (DAAsset)initWithDictionary:(id)dictionary;
@end

@implementation DAAsset

- (DAAsset)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21 = 0;
  v20.receiver = self;
  v20.super_class = DAAsset;
  v5 = [(DASpecification *)&v20 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy dk_stringFromRequiredKey:@"name" maxLength:100 failed:&v21];
    name = v5->_name;
    v5->_name = v6;

    v8 = [dictionaryCopy dk_numberFromRequiredKey:@"frameHeight" lowerBound:&off_1000112E0 upperBound:&off_1000112F0 failed:&v21];
    [v8 doubleValue];
    v10 = v9;

    v11 = [dictionaryCopy dk_numberFromRequiredKey:@"frameWidth" lowerBound:&off_1000112E0 upperBound:&off_1000112F0 failed:&v21];
    [v11 doubleValue];
    v13 = v12;

    v14 = +[UIScreen mainScreen];
    [v14 scale];
    v16 = v13 * v15;
    v17 = +[UIScreen mainScreen];
    [v17 scale];
    v5->_size.width = v16;
    v5->_size.height = v10 * v18;

    if (v21)
    {

      v5 = 0;
    }
  }

  return v5;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end