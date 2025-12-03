@interface SiriGKImageDetailViewController
- (SiriGKImageDetailViewController)initWithImageViewSnippet:(id)snippet;
- (double)desiredHeightForWidth:(double)width;
- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point;
- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session;
- (id)dragItem;
- (void)loadView;
- (void)setAceObject:(id)object;
- (void)siriGeneralKnowledgeImageDetailViewImageTapped:(id)tapped;
@end

@implementation SiriGKImageDetailViewController

- (SiriGKImageDetailViewController)initWithImageViewSnippet:(id)snippet
{
  snippetCopy = snippet;
  v8.receiver = self;
  v8.super_class = SiriGKImageDetailViewController;
  v5 = [(SiriGKImageDetailViewController *)&v8 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    [(SiriGKImageDetailViewController *)v5 setAceObject:snippetCopy];
  }

  return v6;
}

- (void)setAceObject:(id)object
{
  objectCopy = object;
  v7.receiver = self;
  v7.super_class = SiriGKImageDetailViewController;
  [(SiriGKImageDetailViewController *)&v7 setAceObject:objectCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_B31C(a2, self);
  }

  imageViewSnippet = self->_imageViewSnippet;
  self->_imageViewSnippet = objectCopy;
}

- (void)siriGeneralKnowledgeImageDetailViewImageTapped:(id)tapped
{
  commands = [(SAUIImageView *)self->_imageViewSnippet commands];

  delegate = [(SiriGKImageDetailViewController *)self delegate];
  imageViewSnippet = self->_imageViewSnippet;
  if (commands)
  {
    commands2 = [(SAUIImageView *)imageViewSnippet commands];
    [delegate siriViewController:self performAceCommands:commands2];
  }

  else
  {
    commands2 = [(SAUIImageView *)imageViewSnippet image];
    resourceUrl = [commands2 resourceUrl];
    [delegate siriViewController:self openURL:resourceUrl completion:0];
  }
}

- (void)loadView
{
  delegate = [(SiriGKImageDetailViewController *)self delegate];
  [delegate siriViewControllerExpectedWidth:self];
  v5 = v4;

  v6 = [[SiriGKImageDetailView alloc] initWithAceImageView:self->_imageViewSnippet expectedWidth:v5];
  imageDetailView = self->_imageDetailView;
  self->_imageDetailView = v6;

  [(SiriGKImageDetailView *)self->_imageDetailView setDelegate:self];
  v8 = self->_imageDetailView;

  [(SiriGKImageDetailViewController *)self setView:v8];
}

- (double)desiredHeightForWidth:(double)width
{
  delegate = [(SiriGKImageDetailViewController *)self delegate];
  [delegate siriViewControllerVisibleContentArea:self];
  v6 = v5;

  return v6;
}

- (id)dragInteraction:(id)interaction itemsForBeginningSession:(id)session
{
  v4 = [(SiriGKImageDetailViewController *)self dragItem:interaction];
  v7 = v4;
  v5 = [NSArray arrayWithObjects:&v7 count:1];

  return v5;
}

- (id)dragInteraction:(id)interaction itemsForAddingToSession:(id)session withTouchAtPoint:(CGPoint)point
{
  v5 = [(SiriGKImageDetailViewController *)self dragItem:interaction];
  v8 = v5;
  v6 = [NSArray arrayWithObjects:&v8 count:1];

  return v6;
}

- (id)dragItem
{
  v3 = [NSItemProvider alloc];
  displayedImage = [(SiriGKImageDetailView *)self->_imageDetailView displayedImage];
  v5 = [v3 initWithObject:displayedImage];

  v6 = [[UIDragItem alloc] initWithItemProvider:v5];

  return v6;
}

@end