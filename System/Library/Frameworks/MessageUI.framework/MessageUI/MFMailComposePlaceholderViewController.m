@interface MFMailComposePlaceholderViewController
- (void)loadView;
- (void)setSubject:(id)a3;
@end

@implementation MFMailComposePlaceholderViewController

- (void)loadView
{
  v3 = objc_alloc_init(_MFMailComposePlaceholderView);
  [(MFMailComposePlaceholderViewController *)self setView:?];
}

- (void)setSubject:(id)a3
{
  v5 = a3;
  v4 = [(MFMailComposePlaceholderViewController *)self view];
  [v4 setSubject:v5];
}

@end