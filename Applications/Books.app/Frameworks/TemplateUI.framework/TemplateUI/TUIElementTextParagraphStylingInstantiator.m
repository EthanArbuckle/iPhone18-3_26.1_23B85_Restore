@interface TUIElementTextParagraphStylingInstantiator
+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5;
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementTextParagraphStylingInstantiator

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___TUIElementTextParagraphStylingInstantiator;
  var0 = a4.var0;
  v9 = a5;
  v10 = a3;
  objc_msgSendSuper2(&v13, "configureObject:withNode:attributes:context:", v10, var0, v9, a6);
  [v9 floatForAttribute:109 node:{var0, v13.receiver, v13.super_class}];
  [v10 setIndentFirstLine:?];
  [v9 floatForAttribute:110 node:var0];
  [v10 setIndentLeading:?];
  [v9 floatForAttribute:111 node:var0];
  v12 = v11;

  [v10 setIndentTrailing:v12];
}

+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5
{
  v7 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [v6 ensureParagraphBoundary];
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 configureParagraphStyle:v7];
  }
}

@end