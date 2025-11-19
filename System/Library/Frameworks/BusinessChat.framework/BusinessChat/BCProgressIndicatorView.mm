@interface BCProgressIndicatorView
- (BCProgressIndicatorView)init;
- (uint64_t)hide;
- (void)show;
@end

@implementation BCProgressIndicatorView

- (BCProgressIndicatorView)init
{
  v6.receiver = self;
  v6.super_class = BCProgressIndicatorView;
  v2 = [(BCProgressIndicatorView *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [MEMORY[0x277D75348] colorNamed:@"ProgressBarColor" inBundle:v3 compatibleWithTraitCollection:0];
    [(BCProgressIndicatorView *)v2 setProgressTintColor:v4];
  }

  return v2;
}

- (uint64_t)hide
{
  if (result)
  {
    v1[4] = result;
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __31__BCProgressIndicatorView_hide__block_invoke;
    v2[3] = &unk_278A0E678;
    v2[4] = result;
    v1[0] = MEMORY[0x277D85DD0];
    v1[1] = 3221225472;
    v1[2] = __31__BCProgressIndicatorView_hide__block_invoke_2;
    v1[3] = &unk_278A0E970;
    return [MEMORY[0x277D75D18] animateWithDuration:v2 animations:v1 completion:0.25];
  }

  return result;
}

void __31__BCProgressIndicatorView_hide__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  [*(a1 + 32) setHidden:a2];
  if (v2)
  {
    v3 = *MEMORY[0x277D76488];

    UIAccessibilityPostNotification(v3, 0);
  }
}

- (void)show
{
  if (result)
  {
    v1 = result;
    [result setHidden:0];
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __31__BCProgressIndicatorView_show__block_invoke;
    v2[3] = &unk_278A0E678;
    v2[4] = v1;
    return [MEMORY[0x277D75D18] animateWithDuration:v2 animations:&__block_literal_global_1 completion:0.25];
  }

  return result;
}

void __31__BCProgressIndicatorView_show__block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    UIAccessibilityPostNotification(*MEMORY[0x277D76488], 0);
  }
}

@end