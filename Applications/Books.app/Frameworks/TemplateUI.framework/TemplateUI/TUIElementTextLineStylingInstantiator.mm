@interface TUIElementTextLineStylingInstantiator
+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementTextLineStylingInstantiator

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  v12.receiver = self;
  v12.super_class = &OBJC_METACLASS___TUIElementTextLineStylingInstantiator;
  var0 = node.var0;
  attributesCopy = attributes;
  objectCopy = object;
  objc_msgSendSuper2(&v12, "configureObject:withNode:attributes:context:", objectCopy, var0, attributesCopy, context);
  v11 = [attributesCopy integerForAttribute:123 withDefault:0x7FFFFFFFFFFFFFFFLL node:{var0, v12.receiver, v12.super_class}];

  [objectCopy setLines:v11];
  [objectCopy setRelativeToDropLines:0];
}

+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  if (objc_opt_respondsToSelector())
  {
    [builderCopy ensureParagraphBoundary];
  }

  if ([objectCopy lines] != 0x7FFFFFFFFFFFFFFFLL && (objc_opt_respondsToSelector() & 1) != 0)
  {
    lines = [objectCopy lines];
    relativeToDropLines = [objectCopy relativeToDropLines];
    style = [objectCopy style];
    color = [objectCopy color];
    fontSpec = [objectCopy fontSpec];
    [builderCopy configureLineStylingForLines:lines relativeToDropCapLines:relativeToDropLines style:style color:color fontSpec:fontSpec];
  }
}

@end