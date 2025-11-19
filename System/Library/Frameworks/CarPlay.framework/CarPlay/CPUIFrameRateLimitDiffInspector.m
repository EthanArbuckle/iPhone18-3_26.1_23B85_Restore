@interface CPUIFrameRateLimitDiffInspector
- (void)observeFrameRateLimitWithBlock:(id)a3;
@end

@implementation CPUIFrameRateLimitDiffInspector

- (void)observeFrameRateLimitWithBlock:(id)a3
{
  v4 = a3;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __66__CPUIFrameRateLimitDiffInspector_observeFrameRateLimitWithBlock___block_invoke;
  v9[3] = &unk_278A11078;
  v5 = v4;
  v10 = v5;
  [(FBSSettingsDiffInspector *)self observeOtherSetting:1893182284 withBlock:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__CPUIFrameRateLimitDiffInspector_observeFrameRateLimitWithBlock___block_invoke_2;
  v7[3] = &unk_278A11078;
  v8 = v5;
  v6 = v5;
  [(FBSSettingsDiffInspector *)self observeOtherSetting:3152422722 withBlock:v7];
}

@end