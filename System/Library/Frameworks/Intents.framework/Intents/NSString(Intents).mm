@interface NSString(Intents)
+ (INDeferredLocalizedString)deferredLocalizedIntentsStringWithFormat:()Intents fromTable:arguments:;
+ (INDeferredLocalizedString)deferredLocalizedIntentsStringWithFormat:()Intents fromTable:bundle:;
+ (id)deferredLocalizedIntentsStringWithFormat:()Intents;
+ (id)deferredLocalizedIntentsStringWithFormat:()Intents fromTable:;
@end

@implementation NSString(Intents)

+ (INDeferredLocalizedString)deferredLocalizedIntentsStringWithFormat:()Intents fromTable:bundle:
{
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[INDeferredLocalizedString alloc] initWithDeferredFormat:v13 fromTable:v12 bundle:v11 arguments:&a9];

  return v14;
}

+ (INDeferredLocalizedString)deferredLocalizedIntentsStringWithFormat:()Intents fromTable:arguments:
{
  v7 = a4;
  v8 = a3;
  v9 = [[INDeferredLocalizedString alloc] initWithDeferredFormat:v8 fromTable:v7 bundle:0 arguments:a5];

  return v9;
}

+ (id)deferredLocalizedIntentsStringWithFormat:()Intents fromTable:
{
  v9 = [a1 deferredLocalizedIntentsStringWithFormat:a3 fromTable:a4 arguments:&a9];

  return v9;
}

+ (id)deferredLocalizedIntentsStringWithFormat:()Intents
{
  v9 = [a1 deferredLocalizedIntentsStringWithFormat:a3 fromTable:0 arguments:&a9];

  return v9;
}

@end