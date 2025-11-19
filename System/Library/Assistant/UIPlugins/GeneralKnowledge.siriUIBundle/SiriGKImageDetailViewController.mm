@interface SiriGKImageDetailViewController
- (SiriGKImageDetailViewController)initWithImageViewSnippet:(id)a3;
- (double)desiredHeightForWidth:(double)a3;
- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5;
- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4;
- (id)dragItem;
- (void)loadView;
- (void)setAceObject:(id)a3;
- (void)siriGeneralKnowledgeImageDetailViewImageTapped:(id)a3;
@end

@implementation SiriGKImageDetailViewController

- (SiriGKImageDetailViewController)initWithImageViewSnippet:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SiriGKImageDetailViewController;
  v5 = [(SiriGKImageDetailViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(SiriGKImageDetailViewController *)v5 setAceObject:v4];
  }

  return v6;
}

- (void)setAceObject:(id)a3
{
  v5 = a3;
  v7.receiver = self;
  v7.super_class = SiriGKImageDetailViewController;
  [(SiriGKImageDetailViewController *)&v7 setAceObject:v5];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_B31C(a2, self);
  }

  imageViewSnippet = self->_imageViewSnippet;
  self->_imageViewSnippet = v5;
}

- (void)siriGeneralKnowledgeImageDetailViewImageTapped:(id)a3
{
  v4 = [(SAUIImageView *)self->_imageViewSnippet commands];

  v8 = [(SiriGKImageDetailViewController *)self delegate];
  imageViewSnippet = self->_imageViewSnippet;
  if (v4)
  {
    v6 = [(SAUIImageView *)imageViewSnippet commands];
    [v8 siriViewController:self performAceCommands:v6];
  }

  else
  {
    v6 = [(SAUIImageView *)imageViewSnippet image];
    v7 = [v6 resourceUrl];
    [v8 siriViewController:self openURL:v7 completion:0];
  }
}

- (void)loadView
{
  v3 = [(SiriGKImageDetailViewController *)self delegate];
  [v3 siriViewControllerExpectedWidth:self];
  v5 = v4;

  v6 = [[SiriGKImageDetailView alloc] initWithAceImageView:self->_imageViewSnippet expectedWidth:v5];
  imageDetailView = self->_imageDetailView;
  self->_imageDetailView = v6;

  [(SiriGKImageDetailView *)self->_imageDetailView setDelegate:self];
  v8 = self->_imageDetailView;

  [(SiriGKImageDetailViewController *)self setView:v8];
}

- (double)desiredHeightForWidth:(double)a3
{
  v4 = [(SiriGKImageDetailViewController *)self delegate];
  [v4 siriViewControllerVisibleContentArea:self];
  v6 = v5;

  return v6;
}

- (id)dragInteraction:(id)a3 itemsForBeginningSession:(id)a4
{
  v4 = [(SiriGKImageDetailViewController *)self dragItem:a3];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];

  return v5;
}

- (id)dragInteraction:(id)a3 itemsForAddingToSession:(id)a4 withTouchAtPoint:(CGPoint)a5
{
  v5 = [(SiriGKImageDetailViewController *)self dragItem:a3];
  v8 = v5;
  v6 = [NSArray arrayWithObjects:&v8 count:1];

  return v6;
}

- (id)dragItem
{
  v3 = [NSItemProvider alloc];
  v4 = [(SiriGKImageDetailView *)self->_imageDetailView displayedImage];
  v5 = [v3 initWithObject:v4];

  v6 = [[UIDragItem alloc] initWithItemProvider:v5];

  return v6;
}

@end