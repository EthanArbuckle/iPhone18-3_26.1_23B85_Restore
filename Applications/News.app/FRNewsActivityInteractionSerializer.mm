@interface FRNewsActivityInteractionSerializer
- (id)intentForActivityData:(id)a3;
@end

@implementation FRNewsActivityInteractionSerializer

- (id)intentForActivityData:(id)a3
{
  v3 = a3;
  v4 = [v3 activity];
  if (v4 == 4)
  {
    v5 = objc_opt_new();
  }

  else if (v4 == 2)
  {
    v5 = objc_opt_new();
    v6 = [Tag alloc];
    v7 = [v3 identifier];
    v8 = [v3 object];
    v9 = [(Tag *)v6 initWithIdentifier:v7 displayString:v8];
    [v5 setTag:v9];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end