@interface SFAutoFillStrongPasswordContainerInputView
- (CGSize)intrinsicContentSize;
- (SFAutoFillStrongPasswordContainerInputView)initWithInputViewStyle:(int64_t)a3 containingView:(id)a4;
- (SFAutoFillStrongPasswordInputViewSizing)inputViewSizing;
@end

@implementation SFAutoFillStrongPasswordContainerInputView

- (SFAutoFillStrongPasswordContainerInputView)initWithInputViewStyle:(int64_t)a3 containingView:(id)a4
{
  v27[4] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v26.receiver = self;
  v26.super_class = SFAutoFillStrongPasswordContainerInputView;
  v8 = [(UIInputView *)&v26 initWithFrame:a3 inputViewStyle:0.0, 0.0, 100.0, 100.0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_containingView, a4);
    [(SFAutoFillStrongPasswordContainerInputView *)v9 addSubview:v7];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = MEMORY[0x1E696ACD8];
    v25 = [v7 leadingAnchor];
    v24 = [(SFAutoFillStrongPasswordContainerInputView *)v9 leadingAnchor];
    v23 = [v25 constraintEqualToAnchor:v24];
    v27[0] = v23;
    v22 = [v7 trailingAnchor];
    v21 = [(SFAutoFillStrongPasswordContainerInputView *)v9 trailingAnchor];
    v10 = [v22 constraintEqualToAnchor:v21];
    v27[1] = v10;
    v11 = [v7 topAnchor];
    v12 = [(SFAutoFillStrongPasswordContainerInputView *)v9 topAnchor];
    v13 = [v11 constraintEqualToAnchor:v12];
    v27[2] = v13;
    v14 = [v7 bottomAnchor];
    v15 = [(SFAutoFillStrongPasswordContainerInputView *)v9 bottomAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
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