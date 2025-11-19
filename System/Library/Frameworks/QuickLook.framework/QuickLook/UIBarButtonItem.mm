@interface UIBarButtonItem
@end

@implementation UIBarButtonItem

void __41__UIBarButtonItem_Additions__ql_toAction__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) target];
  if (v2)
  {
    v3 = v2;
    v4 = [*(a1 + 32) action];

    if (v4)
    {
      v5 = [*(a1 + 32) target];
      [v5 performSelector:objc_msgSend(*(a1 + 32) withObject:{"action"), *(a1 + 32)}];
    }
  }
}

@end