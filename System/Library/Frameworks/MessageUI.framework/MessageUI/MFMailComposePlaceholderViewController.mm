@interface MFMailComposePlaceholderViewController
- (void)loadView;
- (void)setSubject:(id)subject;
@end

@implementation MFMailComposePlaceholderViewController

- (void)loadView
{
  v3 = objc_alloc_init(_MFMailComposePlaceholderView);
  [(MFMailComposePlaceholderViewController *)self setView:?];
}

- (void)setSubject:(id)subject
{
  subjectCopy = subject;
  view = [(MFMailComposePlaceholderViewController *)self view];
  [view setSubject:subjectCopy];
}

@end