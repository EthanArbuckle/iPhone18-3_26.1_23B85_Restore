@interface TUIElementAnimation
+ (id)attributesToIgnoreWhenResolvingInvocation;
+ (id)supportedAttributes;
+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementAnimation

+ (id)supportedAttributes
{
  if (qword_2E6668 != -1)
  {
    sub_19BD74();
  }

  v3 = qword_2E6660;

  return v3;
}

+ (id)attributesToIgnoreWhenResolvingInvocation
{
  if (qword_2E6678 != -1)
  {
    sub_19BD88();
  }

  v3 = qword_2E6670;

  return v3;
}

+ (void)configureContainingBuilder:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v9 = a5;
  v8 = a6;
  [v8 defineAnimation:objc_msgSend(v9 closure:{"animationDefinitonWithNode:nameAttribute:", a4.var0, 138), objc_msgSend(v9, "closureForNode:", a4.var0)}];
}

@end