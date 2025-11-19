@interface WFReferenceLibraryViewController
- (WFReferenceLibraryViewControllerDelegate)delegate;
@end

@implementation WFReferenceLibraryViewController

- (WFReferenceLibraryViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end