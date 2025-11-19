@interface UIView
@end

@implementation UIView

void __76__UIView_LPExtras___lp_applyAndRegisterForUpdatesToValue_withApplyCallback___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = v3;
  v6 = [v3 traitCollection];
  v7 = [v5 valueForAppearance:v6];
  (*(v4 + 16))(v4, v8, v7);
}

@end