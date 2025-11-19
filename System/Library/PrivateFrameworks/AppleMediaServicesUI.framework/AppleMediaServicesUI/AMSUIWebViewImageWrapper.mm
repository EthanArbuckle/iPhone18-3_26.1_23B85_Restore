@interface AMSUIWebViewImageWrapper
- (AMSUIWebViewImageWrapper)initWithView:(id)a3 topInset:(double)a4;
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
@end

@implementation AMSUIWebViewImageWrapper

- (AMSUIWebViewImageWrapper)initWithView:(id)a3 topInset:(double)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = AMSUIWebViewImageWrapper;
  v8 = [(AMSUICommonView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_view, a3);
    v9->_inset = a4;
    [(AMSUIWebViewImageWrapper *)v9 addSubview:v7];
  }

  return v9;
}

- (void)layoutSubviews
{
  v12.receiver = self;
  v12.super_class = AMSUIWebViewImageWrapper;
  [(AMSUIWebViewImageWrapper *)&v12 layoutSubviews];
  [(AMSUIWebViewImageWrapper *)self inset];
  v4 = v3;
  v5 = [(AMSUIWebViewImageWrapper *)self view];
  [v5 intrinsicContentSize];
  v7 = v6;
  v8 = [(AMSUIWebViewImageWrapper *)self view];
  [v8 intrinsicContentSize];
  v10 = v9;
  v11 = [(AMSUIWebViewImageWrapper *)self view];
  [v11 setFrame:{0.0, v4, v7, v10}];
}

- (CGSize)intrinsicContentSize
{
  v3 = [(AMSUIWebViewImageWrapper *)self view];
  [v3 intrinsicContentSize];
  v5 = v4;
  v6 = [(AMSUIWebViewImageWrapper *)self view];
  [v6 intrinsicContentSize];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end