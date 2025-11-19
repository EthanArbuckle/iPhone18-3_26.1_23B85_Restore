@interface SFWebClipViewController
@end

@implementation SFWebClipViewController

uint64_t __45___SFWebClipViewController_updateUIAnimated___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 1096);
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 scale];
  v4 = [v2 generateIconImageForFormat:2 scale:?];
  [*(*(a1 + 32) + 1080) setImage:v4];

  v5 = *(a1 + 32);

  return [v5 _textFieldChanged:0];
}

@end