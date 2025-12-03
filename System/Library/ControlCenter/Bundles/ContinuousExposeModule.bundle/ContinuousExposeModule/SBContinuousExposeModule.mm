@interface SBContinuousExposeModule
- (id)contentViewControllerForContext:(id)context;
@end

@implementation SBContinuousExposeModule

- (id)contentViewControllerForContext:(id)context
{
  v3 = [[SBContinuousExposeModuleViewController alloc] initWithContentModuleContext:self->_contentModuleContext];

  return v3;
}

@end