@interface TUIElementAnimation
+ (id)attributesToIgnoreWhenResolvingInvocation;
+ (id)supportedAttributes;
+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context;
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

+ (void)configureContainingBuilder:(id)builder withNode:(id)node attributes:(id)attributes context:(id)context
{
  attributesCopy = attributes;
  contextCopy = context;
  [contextCopy defineAnimation:objc_msgSend(attributesCopy closure:{"animationDefinitonWithNode:nameAttribute:", node.var0, 138), objc_msgSend(attributesCopy, "closureForNode:", node.var0)}];
}

@end