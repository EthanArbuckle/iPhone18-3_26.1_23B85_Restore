@interface TUIElementAnimationKeyFrame
+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5;
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementAnimationKeyFrame

+ (void)configureObject:(id)a3 withBuilder:(id)a4 context:(id)a5
{
  v7 = a3;
  v6 = [a4 finalizeAnimationValues];
  [v7 setValues:v6];
}

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v9 = a3;
  v8 = a5;
  [v8 floatForAttribute:200 withDefault:a4.var0 node:0.0];
  [v9 setStartTime:?];
  [v8 floatForAttribute:69 withDefault:a4.var0 node:0.0];
  [v9 setDuration:?];
}

@end