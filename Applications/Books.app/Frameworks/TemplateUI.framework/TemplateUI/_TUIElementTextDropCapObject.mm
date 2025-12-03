@interface _TUIElementTextDropCapObject
- (void)ensureParagraphBoundaryWithBuilder:(id)builder;
@end

@implementation _TUIElementTextDropCapObject

- (void)ensureParagraphBoundaryWithBuilder:(id)builder
{
  builderCopy = builder;
  v5 = builderCopy;
  if (!self->_ensuredParagraphBoundary)
  {
    self->_ensuredParagraphBoundary = 1;
    v7 = builderCopy;
    v6 = objc_opt_respondsToSelector();
    v5 = v7;
    if (v6)
    {
      [v7 ensureParagraphBoundary];
      v5 = v7;
    }
  }
}

@end