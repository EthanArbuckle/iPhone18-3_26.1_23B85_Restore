@interface UIViewController
@end

@implementation UIViewController

void __102__UIViewController_AppleMediaServices__ams_dismissViewControllerAnimated_includePresented_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __102__UIViewController_AppleMediaServices__ams_dismissViewControllerAnimated_includePresented_completion___block_invoke_2;
  v6[3] = &unk_1E7F25C40;
  v7 = v3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v5 = v3;
  [v5 ams_dismissViewControllerAnimated:v4 completion:v6];
}

void *__102__UIViewController_AppleMediaServices__ams_dismissViewControllerAnimated_includePresented_completion___block_invoke_2(void *result)
{
  if (result[4] == result[5])
  {
    return (*(result[6] + 16))();
  }

  return result;
}

uint64_t __108__UIViewController_AppleMediaServices__ams_transitionFromViewController_toViewController_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end