@interface SLGoogleWebAuthController
- (SLGoogleWebAuthController)initWithAccount:(id)account accountStore:(id)store presentationBlock:(id)block;
- (SLGoogleWebAuthController)initWithAccountDescription:(id)description presentationBlock:(id)block;
- (SLGoogleWebAuthController)initWithNibName:(id)name bundle:(id)bundle;
- (SLGoogleWebAuthController)initWithYouTubeUsername:(id)username accountDescription:(id)description presentationBlock:(id)block;
@end

@implementation SLGoogleWebAuthController

- (SLGoogleWebAuthController)initWithAccountDescription:(id)description presentationBlock:(id)block
{
  [(SLGoogleWebAuthController *)self doesNotRecognizeSelector:a2, block];

  return 0;
}

- (SLGoogleWebAuthController)initWithAccount:(id)account accountStore:(id)store presentationBlock:(id)block
{
  [(SLGoogleWebAuthController *)self doesNotRecognizeSelector:a2, store, block];

  return 0;
}

- (SLGoogleWebAuthController)initWithYouTubeUsername:(id)username accountDescription:(id)description presentationBlock:(id)block
{
  [(SLGoogleWebAuthController *)self doesNotRecognizeSelector:a2, description, block];

  return 0;
}

- (SLGoogleWebAuthController)initWithNibName:(id)name bundle:(id)bundle
{
  [(SLGoogleWebAuthController *)self doesNotRecognizeSelector:a2, bundle];

  return 0;
}

@end