@interface GAXSBScreenFlashOverride
- (void)flashColor:(id)a3 withCompletion:(id)a4;
@end

@implementation GAXSBScreenFlashOverride

- (void)flashColor:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[GAXSpringboard sharedInstance];
  v9 = [v8 isInactive];

  if (v9)
  {
    v10.receiver = self;
    v10.super_class = GAXSBScreenFlashOverride;
    [(GAXSBScreenFlashOverride *)&v10 flashColor:v6 withCompletion:v7];
  }
}

@end