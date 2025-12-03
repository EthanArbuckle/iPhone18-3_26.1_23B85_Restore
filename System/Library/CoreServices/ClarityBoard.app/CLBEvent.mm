@interface CLBEvent
+ (id)eventWithType:(int64_t)type context:(id)context;
- (CLBOpenApplicationRequest)openApplicationRequest;
@end

@implementation CLBEvent

+ (id)eventWithType:(int64_t)type context:(id)context
{
  contextCopy = context;
  v7 = objc_alloc_init(self);
  v8 = v7[2];
  v7[1] = type;
  v7[2] = contextCopy;

  return v7;
}

- (CLBOpenApplicationRequest)openApplicationRequest
{
  context = [(CLBEvent *)self context];
  v3 = objc_opt_class();
  v4 = context;
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