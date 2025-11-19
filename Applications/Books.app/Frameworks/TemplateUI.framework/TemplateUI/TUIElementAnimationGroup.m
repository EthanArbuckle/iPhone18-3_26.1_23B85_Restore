@interface TUIElementAnimationGroup
+ (id)supportedAttributes;
+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5;
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementAnimationGroup

+ (id)supportedAttributes
{
  if (qword_2E64F0 != -1)
  {
    sub_19B6C0();
  }

  v3 = qword_2E64E8;

  return v3;
}

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v11 = a3;
  v8 = [a5 stringForAttribute:138 node:a4.var0];
  [v11 setGroupName:v8];

  v9 = [v11 groupName];
  v10 = [v9 length];

  if (!v10)
  {
    [v11 setGroupName:@"default"];
  }
}

+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5
{
  v6 = a4;
  v7 = a3;
  v9 = [v7 finalizeAnimationGroup];
  v8 = [v7 groupName];

  [v6 addAnimationGroup:v9 withName:v8];
}

@end