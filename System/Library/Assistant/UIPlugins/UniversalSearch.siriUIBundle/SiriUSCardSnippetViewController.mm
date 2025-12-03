@interface SiriUSCardSnippetViewController
- (SiriUSCardSnippetViewController)initWithUniversalSearchCard:(id)card snippet:(id)snippet;
- (void)loadView;
- (void)viewWillLayoutSubviews;
@end

@implementation SiriUSCardSnippetViewController

- (SiriUSCardSnippetViewController)initWithUniversalSearchCard:(id)card snippet:(id)snippet
{
  cardCopy = card;
  snippetCopy = snippet;
  v12.receiver = self;
  v12.super_class = SiriUSCardSnippetViewController;
  v8 = [(SiriUSCardSnippetViewController *)&v12 init];
  if (v8)
  {
    v9 = [SearchUI cardViewControllerForCard:cardCopy feedbackDelegate:0];
    cardViewController = v8->_cardViewController;
    v8->_cardViewController = v9;

    [(SiriUSCardSnippetViewController *)v8 setSnippet:snippetCopy];
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
  view = [(UIViewController *)self->_cardViewController view];
  [v4 addSubview:view];

  [(UIViewController *)self->_cardViewController didMoveToParentViewController:self];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = SiriUSCardSnippetViewController;
  [(SiriUSCardSnippetViewController *)&v5 viewWillLayoutSubviews];
  view = [(UIViewController *)self->_cardViewController view];
  view2 = [(SiriUSCardSnippetViewController *)self view];
  [view2 bounds];
  [view setFrame:?];
}

@end