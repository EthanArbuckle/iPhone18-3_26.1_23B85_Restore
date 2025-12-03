@interface GAXSBScreenFlashOverride
- (void)flashColor:(id)color withCompletion:(id)completion;
@end

@implementation GAXSBScreenFlashOverride

- (void)flashColor:(id)color withCompletion:(id)completion
{
  colorCopy = color;
  completionCopy = completion;
  v8 = +[GAXSpringboard sharedInstance];
  isInactive = [v8 isInactive];

  if (isInactive)
  {
    v10.receiver = self;
    v10.super_class = GAXSBScreenFlashOverride;
    [(GAXSBScreenFlashOverride *)&v10 flashColor:colorCopy withCompletion:completionCopy];
  }
}

@end