@interface MPMediaControlsStandaloneViewController
- (void)dismissAfter:(double)after;
- (void)presentAnimated:(BOOL)animated completion:(id)completion;
@end

@implementation MPMediaControlsStandaloneViewController

- (void)dismissAfter:(double)after
{
  mediaControls = [(MPMediaControlsViewController *)self mediaControls];
  [mediaControls dismiss];
}

- (void)presentAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  [(MPMediaControlsViewController *)self _createMediaControlsIfNeeded];
  [(MPMediaControlsViewController *)self _present];
  v5 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v5 = completionCopy;
  }
}

@end