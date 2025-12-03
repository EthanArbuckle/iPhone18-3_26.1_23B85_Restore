@interface TUIElementTextParagraphStylingInstantiator
+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context;
+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context;
@end

@implementation TUIElementTextParagraphStylingInstantiator

+ (void)configureObject:(id)object withNode:(id)node attributes:(id)attributes context:(id)context
{
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___TUIElementTextParagraphStylingInstantiator;
  var0 = node.var0;
  attributesCopy = attributes;
  objectCopy = object;
  objc_msgSendSuper2(&v13, "configureObject:withNode:attributes:context:", objectCopy, var0, attributesCopy, context);
  [attributesCopy floatForAttribute:109 node:{var0, v13.receiver, v13.super_class}];
  [objectCopy setIndentFirstLine:?];
  [attributesCopy floatForAttribute:110 node:var0];
  [objectCopy setIndentLeading:?];
  [attributesCopy floatForAttribute:111 node:var0];
  v12 = v11;

  [objectCopy setIndentTrailing:v12];
}

+ (void)addObject:(id)object toContainingBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  if (objc_opt_respondsToSelector())
  {
    [builderCopy ensureParagraphBoundary];
  }

  if (objc_opt_respondsToSelector())
  {
    [builderCopy configureParagraphStyle:objectCopy];
  }
}

@end