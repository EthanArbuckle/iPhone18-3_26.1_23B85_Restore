@interface EKEventDetailLocationDisambiguationViewController
- (EKEventDetailLocationDisambiguationViewController)initWithLocation:(id)a3 pois:(id)a4 completionBlock:(id)a5;
@end

@implementation EKEventDetailLocationDisambiguationViewController

- (EKEventDetailLocationDisambiguationViewController)initWithLocation:(id)a3 pois:(id)a4 completionBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = EKEventDetailLocationDisambiguationViewController;
  v11 = [(EKEventDetailLocationDisambiguationViewController *)&v16 init];
  if (v11)
  {
    v12 = [[EKEventDetailLocationDisambiguationContentViewController alloc] initWithLocation:v8 pois:v9 completionBlock:v10];
    [(EKEventDetailLocationDisambiguationViewController *)v11 pushViewController:v12 animated:0];
    v13 = objc_alloc_init(MEMORY[0x1E69DCCC8]);
    v14 = [(EKEventDetailLocationDisambiguationViewController *)v11 navigationBar];
    [v14 setScrollEdgeAppearance:v13];
  }

  return v11;
}

@end