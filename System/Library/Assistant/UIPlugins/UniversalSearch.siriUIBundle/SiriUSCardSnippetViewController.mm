@interface SiriUSCardSnippetViewController
- (SiriUSCardSnippetViewController)initWithUniversalSearchCard:(id)a3 snippet:(id)a4;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation SiriUSCardSnippetViewController

- (SiriUSCardSnippetViewController)initWithUniversalSearchCard:(id)a3 snippet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SiriUSCardSnippetViewController;
  v8 = [(SiriUSCardSnippetViewController *)&v12 init];
  if (v8)
  {
    v9 = [SearchUI cardViewControllerForCard:v6 feedbackDelegate:0];
    cardViewController = v8->_cardViewController;
    v8->_cardViewController = v9;

    [(SiriUSCardSnippetViewController *)v8 setSnippet:v7];
    [(SiriUSCardSnippetViewController *)v8 setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(SiriUSCardSnippetViewController *)v8 setIsTransparent:1];
  }

  return v8;
}

- (void)loadView
{
  v4 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  [(SiriUSCardSnippetViewController *)self setView:v4];
  [(SiriUSCardSnippetViewController *)self addChildViewController:self->_cardViewController];
  v3 = [(UIViewController *)self->_cardViewController view];
  [v4 addSubview:v3];

  [(UIViewController *)self->_cardViewController didMoveToParentViewController:self];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SiriUSCardSnippetViewController;
  [(SiriUSCardSnippetViewController *)&v5 viewWillLayoutSubviews];
  v3 = [(UIViewController *)self->_cardViewController view];
  v4 = [(SiriUSCardSnippetViewController *)self view];
  [v4 bounds];
  [v3 setFrame:?];
}

@end