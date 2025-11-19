@interface CLBEvent
+ (id)eventWithType:(int64_t)a3 context:(id)a4;
- (CLBOpenApplicationRequest)openApplicationRequest;
@end

@implementation CLBEvent

+ (id)eventWithType:(int64_t)a3 context:(id)a4
{
  v6 = a4;
  v7 = objc_alloc_init(a1);
  v8 = v7[2];
  v7[1] = a3;
  v7[2] = v6;

  return v7;
}

- (CLBOpenApplicationRequest)openApplicationRequest
{
  v2 = [(CLBEvent *)self context];
  v3 = objc_opt_class();
  v4 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v3 = v4;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = v3;

  return v3;
}

@end