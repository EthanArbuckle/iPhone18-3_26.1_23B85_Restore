@interface ActuationMultipliers
- (ActuationMultipliers)initWithDictionary:(id)a3;
- (NSDictionary)dictionary;
@end

@implementation ActuationMultipliers

- (ActuationMultipliers)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = ActuationMultipliers;
  v5 = [(ActuationMultipliers *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"Light"];
    v7 = [v4 objectForKeyedSubscript:@"Medium"];
    v8 = [v4 objectForKeyedSubscript:@"Firm"];
    v9 = 1.0;
    LODWORD(v10) = 1.0;
    if (v6)
    {
      [v6 floatValue];
    }

    v5->_light = *&v10;
    if (v7)
    {
      [v7 floatValue];
      v9 = v11;
    }

    v5->_medium = v9;
    if (v8)
    {
      [v8 floatValue];
    }

    else
    {
      v12 = 1.0;
    }

    v5->_firm = v12;
  }

  return v5;
}

- (NSDictionary)dictionary
{
  v8[0] = @"Light";
  [(ActuationMultipliers *)self light];
  v3 = [NSNumber numberWithFloat:?];
  v9[0] = v3;
  v8[1] = @"Medium";
  [(ActuationMultipliers *)self medium];
  v4 = [NSNumber numberWithFloat:?];
  v9[1] = v4;
  v8[2] = @"Firm";
  [(ActuationMultipliers *)self firm];
  v5 = [NSNumber numberWithFloat:?];
  v9[2] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

@end