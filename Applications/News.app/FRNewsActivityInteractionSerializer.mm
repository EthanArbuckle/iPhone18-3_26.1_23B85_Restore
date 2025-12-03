@interface FRNewsActivityInteractionSerializer
- (id)intentForActivityData:(id)data;
@end

@implementation FRNewsActivityInteractionSerializer

- (id)intentForActivityData:(id)data
{
  dataCopy = data;
  activity = [dataCopy activity];
  if (activity == 4)
  {
    v5 = objc_opt_new();
  }

  else if (activity == 2)
  {
    v5 = objc_opt_new();
    v6 = [Tag alloc];
    identifier = [dataCopy identifier];
    object = [dataCopy object];
    v9 = [(Tag *)v6 initWithIdentifier:identifier displayString:object];
    [v5 setTag:v9];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end