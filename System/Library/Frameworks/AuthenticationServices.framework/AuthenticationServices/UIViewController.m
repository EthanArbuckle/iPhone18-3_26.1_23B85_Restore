@interface UIViewController
@end

@implementation UIViewController

void __108__UIViewController_AuthenticationServicesExtras___as_restorePresentedViewControllerStackForPasswordManager___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) subarrayWithRange:{1, objc_msgSend(*(a1 + 40), "count") - 1}];
  [v1 _as_restorePresentedViewControllerStackForPasswordManager:v2];
}

@end