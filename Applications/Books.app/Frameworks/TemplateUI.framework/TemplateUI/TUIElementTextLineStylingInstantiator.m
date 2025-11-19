@interface TUIElementTextLineStylingInstantiator
+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5;
+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6;
@end

@implementation TUIElementTextLineStylingInstantiator

+ (void)configureObject:(id)a3 withNode:(id)a4 attributes:(id)a5 context:(id)a6
{
  v12.receiver = a1;
  v12.super_class = &OBJC_METACLASS___TUIElementTextLineStylingInstantiator;
  var0 = a4.var0;
  v9 = a5;
  v10 = a3;
  objc_msgSendSuper2(&v12, "configureObject:withNode:attributes:context:", v10, var0, v9, a6);
  v11 = [v9 integerForAttribute:123 withDefault:0x7FFFFFFFFFFFFFFFLL node:{var0, v12.receiver, v12.super_class}];

  [v10 setLines:v11];
  [v10 setRelativeToDropLines:0];
}

+ (void)addObject:(id)a3 toContainingBuilder:(id)a4 context:(id)a5
{
  v12 = a3;
  v6 = a4;
  if (objc_opt_respondsToSelector())
  {
    [v6 ensureParagraphBoundary];
  }

  if ([v12 lines] != 0x7FFFFFFFFFFFFFFFLL && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [v12 lines];
    v8 = [v12 relativeToDropLines];
    v9 = [v12 style];
    v10 = [v12 color];
    v11 = [v12 fontSpec];
    [v6 configureLineStylingForLines:v7 relativeToDropCapLines:v8 style:v9 color:v10 fontSpec:v11];
  }
}

@end