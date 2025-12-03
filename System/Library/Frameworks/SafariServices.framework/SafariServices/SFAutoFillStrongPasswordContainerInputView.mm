@interface SFAutoFillStrongPasswordContainerInputView
- (CGSize)intrinsicContentSize;
- (SFAutoFillStrongPasswordContainerInputView)initWithInputViewStyle:(int64_t)style containingView:(id)view;
- (SFAutoFillStrongPasswordInputViewSizing)inputViewSizing;
@end

@implementation SFAutoFillStrongPasswordContainerInputView

- (SFAutoFillStrongPasswordContainerInputView)initWithInputViewStyle:(int64_t)style containingView:(id)view
{
  v27[4] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  v26.receiver = self;
  v26.super_class = SFAutoFillStrongPasswordContainerInputView;
  v8 = [(UIInputView *)&v26 initWithFrame:style inputViewStyle:0.0, 0.0, 100.0, 100.0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_containingView, view);
    [(SFAutoFillStrongPasswordContainerInputView *)v9 addSubview:viewCopy];
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = MEMORY[0x1E696ACD8];
    leadingAnchor = [viewCopy leadingAnchor];
    leadingAnchor2 = [(SFAutoFillStrongPasswordContainerInputView *)v9 leadingAnchor];
    v23 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v27[0] = v23;
    trailingAnchor = [viewCopy trailingAnchor];
    trailingAnchor2 = [(SFAutoFillStrongPasswordContainerInputView *)v9 trailingAnchor];
    v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v27[1] = v10;
    topAnchor = [viewCopy topAnchor];
    topAnchor2 = [(SFAutoFillStrongPasswordContainerInputView *)v9 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v27[2] = v13;
    bottomAnchor = [viewCopy bottomAnchor];
    bottomAnchor2 = [(SFAutoFillStrongPasswordContainerInputView *)v9 bottomAnchor];
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v27[3] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
    [v20 activateConstraints:v17];

    v18 = v9;
  }

  return v9;
}

- (CGSize)intrinsicContentSize
{
  WeakRetained = objc_loadWeakRetained(&self->_inputViewSizing);
  if ([(SFAutoFillStrongPasswordContainerInputView *)self allowsSelfSizing]&& WeakRetained)
  {
    [WeakRetained intrinsicContentSizeForInputView:self];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SFAutoFillStrongPasswordContainerInputView;
    [(SFAutoFillStrongPasswordContainerInputView *)&v10 intrinsicContentSize];
  }

  v6 = v4;
  v7 = v5;

  v8 = v6;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (SFAutoFillStrongPasswordInputViewSizing)inputViewSizing
{
  WeakRetained = objc_loadWeakRetained(&self->_inputViewSizing);

  return WeakRetained;
}

@end