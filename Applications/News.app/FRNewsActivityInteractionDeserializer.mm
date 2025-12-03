@interface FRNewsActivityInteractionDeserializer
- (id)activityDataForIntent:(id)intent;
@end

@implementation FRNewsActivityInteractionDeserializer

- (id)activityDataForIntent:(id)intent
{
  intentCopy = intent;
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
      v5 = intentCopy;
      v6 = [TSNewsActivityData alloc];
      v7 = [v5 tag];

      identifier = [v7 identifier];
      v9 = objc_opt_new();
      v4 = [v6 initWithActivity:2 identifier:identifier object:v9];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end