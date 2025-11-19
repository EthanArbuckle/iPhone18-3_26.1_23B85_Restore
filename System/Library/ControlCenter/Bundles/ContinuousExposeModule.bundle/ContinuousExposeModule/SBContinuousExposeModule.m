@interface SBContinuousExposeModule
- (id)contentViewControllerForContext:(id)a3;
@end

@implementation SBContinuousExposeModule

- (id)contentViewControllerForContext:(id)a3
{
  v3 = [[SBContinuousExposeModuleViewController alloc] initWithContentModuleContext:self->_contentModuleContext];

  return v3;
}

@end