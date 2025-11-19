@interface _TUIElementTextDropCapObject
- (void)ensureParagraphBoundaryWithBuilder:(id)a3;
@end

@implementation _TUIElementTextDropCapObject

- (void)ensureParagraphBoundaryWithBuilder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_ensuredParagraphBoundary)
  {
    self->_ensuredParagraphBoundary = 1;
    v7 = v4;
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