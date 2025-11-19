@interface FRNewsActivityInteractionDeserializer
- (id)activityDataForIntent:(id)a3;
@end

@implementation FRNewsActivityInteractionDeserializer

- (id)activityDataForIntent:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[TSNewsActivityData alloc] initWithActivity:4 identifier:@"foryoufeed"];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v3;
      v6 = [TSNewsActivityData alloc];
      v7 = [v5 tag];

      v8 = [v7 identifier];
      v9 = objc_opt_new();
      v4 = [v6 initWithActivity:2 identifier:v8 object:v9];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end