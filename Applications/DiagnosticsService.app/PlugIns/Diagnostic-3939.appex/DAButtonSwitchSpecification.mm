@interface DAButtonSwitchSpecification
- (CGRect)position;
- (DAButtonSwitchSpecification)initWithDictionary:(id)a3;
@end

@implementation DAButtonSwitchSpecification

- (DAButtonSwitchSpecification)initWithDictionary:(id)a3
{
  v4 = a3;
  v25 = 0;
  v24.receiver = self;
  v24.super_class = DAButtonSwitchSpecification;
  v5 = [(DASpecification *)&v24 initWithDictionary:v4];
  if (v5)
  {
    v6 = [v4 dk_dictionaryFromRequiredKey:@"position" failed:&v25];
    v7 = [v6 dk_numberFromRequiredKey:@"x" lowerBound:&off_100011300 upperBound:&off_1000112F0 failed:&v25];
    [v7 doubleValue];
    v9 = v8;

    v10 = [v6 dk_numberFromRequiredKey:@"y" lowerBound:&off_100011300 upperBound:&off_1000112F0 failed:&v25];
    [v10 doubleValue];
    v12 = v11;

    v13 = [v6 dk_numberFromRequiredKey:@"w" lowerBound:&off_100011300 upperBound:&off_1000112F0 failed:&v25];
    [v13 doubleValue];
    v15 = v14;

    v16 = [v6 dk_numberFromRequiredKey:@"h" lowerBound:&off_100011300 upperBound:&off_1000112F0 failed:&v25];
    [v16 doubleValue];
    v18 = v17;

    v5->_position.origin.x = v9;
    v5->_position.origin.y = v12;
    v5->_position.size.width = v15;
    v5->_position.size.height = v18;
    v19 = [DAAsset alloc];
    v20 = [v4 dk_dictionaryFromRequiredKey:@"asset" failed:&v25];
    v21 = [(DAAsset *)v19 initWithDictionary:v20];
    asset = v5->_asset;
    v5->_asset = v21;
  }

  if (!v5->_asset || v25 == 1)
  {

    v5 = 0;
  }

  return v5;
}

- (CGRect)position
{
  x = self->_position.origin.x;
  y = self->_position.origin.y;
  width = self->_position.size.width;
  height = self->_position.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end