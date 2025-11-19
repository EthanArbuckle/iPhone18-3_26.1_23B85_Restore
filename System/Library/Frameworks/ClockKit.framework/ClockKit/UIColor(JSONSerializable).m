@interface UIColor(JSONSerializable)
- (id)JSONObjectRepresentation;
- (uint64_t)initWithJSONObjectRepresentation:()JSONSerializable;
@end

@implementation UIColor(JSONSerializable)

- (uint64_t)initWithJSONObjectRepresentation:()JSONSerializable
{
  v3 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"must be a dictionary. Invalid value: %@", v3}];
  }

  v4 = [v3 objectForKeyedSubscript:@"red"];
  v5 = [v3 objectForKeyedSubscript:@"green"];
  v6 = [v3 objectForKeyedSubscript:@"blue"];
  v7 = [v3 objectForKeyedSubscript:@"alpha"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a number - invalid value: %@", @"red", v4}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a number - invalid value: %@", @"green", v5}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a number - invalid value: %@", @"blue", v6}];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:@"CLKComplicationBundleException" format:{@"value for key '%@' must be a number - invalid value: %@", @"alpha", v7}];
  }

  [v4 floatValue];
  v9 = v8;
  [v5 floatValue];
  v11 = v10;
  [v6 floatValue];
  v13 = v12;
  [v7 floatValue];
  v15 = [a1 initWithRed:v9 green:v11 blue:v13 alpha:v14];

  return v15;
}

- (id)JSONObjectRepresentation
{
  v12[4] = *MEMORY[0x277D85DE8];
  v9 = 0.0;
  v10 = 0.0;
  v7 = 0.0;
  v8 = 0.0;
  [a1 getRed:&v10 green:&v9 blue:&v8 alpha:&v7];
  v11[0] = @"red";
  v1 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v12[0] = v1;
  v11[1] = @"green";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v12[1] = v2;
  v11[2] = @"blue";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  v12[2] = v3;
  v11[3] = @"alpha";
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  v12[3] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:4];

  return v5;
}

@end