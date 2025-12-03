@interface LPComponentView
- (LPComponentView)initWithHost:(id)host;
- (LPComponentViewHost)host;
- (void)layoutSubviews;
@end

@implementation LPComponentView

- (LPComponentView)initWithHost:(id)host
{
  hostCopy = host;
  v9.receiver = self;
  v9.super_class = LPComponentView;
  v5 = [(LPComponentView *)&v9 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_host, hostCopy);
    v7 = v6;
  }

  return v6;
}

- (void)layoutSubviews
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __33__LPComponentView_layoutSubviews__block_invoke;
  v2[3] = &unk_1E7A35450;
  v2[4] = self;
  [MEMORY[0x1E69DD250] performWithoutAnimation:v2];
}

uint64_t __33__LPComponentView_layoutSubviews__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = LPComponentView;
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  return [*(a1 + 32) layoutComponentView];
}

- (LPComponentViewHost)host
{
  WeakRetained = objc_loadWeakRetained(&self->_host);

  return WeakRetained;
}

@end