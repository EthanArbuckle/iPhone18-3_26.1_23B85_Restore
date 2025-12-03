@interface AMSUIWebViewImageWrapper
- (AMSUIWebViewImageWrapper)initWithView:(id)view topInset:(double)inset;
- (CGSize)intrinsicContentSize;
- (void)layoutSubviews;
@end

@implementation AMSUIWebViewImageWrapper

- (AMSUIWebViewImageWrapper)initWithView:(id)view topInset:(double)inset
{
  viewCopy = view;
  v11.receiver = self;
  v11.super_class = AMSUIWebViewImageWrapper;
  v8 = [(AMSUICommonView *)&v11 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_view, view);
    v9->_inset = inset;
    [(AMSUIWebViewImageWrapper *)v9 addSubview:viewCopy];
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
  view = [(AMSUIWebViewImageWrapper *)self view];
  [view intrinsicContentSize];
  v7 = v6;
  view2 = [(AMSUIWebViewImageWrapper *)self view];
  [view2 intrinsicContentSize];
  v10 = v9;
  view3 = [(AMSUIWebViewImageWrapper *)self view];
  [view3 setFrame:{0.0, v4, v7, v10}];
}

- (CGSize)intrinsicContentSize
{
  view = [(AMSUIWebViewImageWrapper *)self view];
  [view intrinsicContentSize];
  v5 = v4;
  view2 = [(AMSUIWebViewImageWrapper *)self view];
  [view2 intrinsicContentSize];
  v8 = v7;

  v9 = v5;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end