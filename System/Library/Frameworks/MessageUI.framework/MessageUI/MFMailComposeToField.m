@interface MFMailComposeToField
- (MFComposeSMIMELockButton)SMIMEButton;
- (MFMailComposeToFieldDelegate)toFieldDelegate;
- (id)_textContainerExclusionPathsWithAddButton:(BOOL)a3;
- (void)_setSMIMEButtonVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)_tappedSMIMEButton:(id)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setExpanded:(BOOL)a3;
- (void)setWantsEncryption:(BOOL)a3 canEncrypt:(BOOL)a4 animated:(BOOL)a5;
@end

@implementation MFMailComposeToField

- (void)dealloc
{
  [(MFMailComposeToField *)self setToFieldDelegate:0];
  v3.receiver = self;
  v3.super_class = MFMailComposeToField;
  [(MFMailComposeRecipientTextView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = MFMailComposeToField;
  [(CNComposeRecipientTextView *)&v10 layoutSubviews];
  if (self->_smimeButton)
  {
    v3 = [(CNComposeRecipientTextView *)self _useRightToLeftLayout];
    v4 = [(CNComposeRecipientTextView *)self addButton];
    [v4 center];
    v6 = v5;
    if (v3)
    {
      *&v7 = 40.0;
    }

    else
    {
      *&v7 = -40.0;
    }

    v8 = *&v7;

    v9 = [(CNComposeRecipientTextView *)self addButton];
    [v9 center];
    [(MFComposeSMIMELockButton *)self->_smimeButton setCenter:v6 + v8];

    [(MFComposeSMIMELockButton *)self->_smimeButton frame];
    v12 = CGRectIntegral(v11);
    [(MFComposeSMIMELockButton *)self->_smimeButton setFrame:v12.origin.x, v12.origin.y, v12.size.width, v12.size.height];
  }
}

- (MFComposeSMIMELockButton)SMIMEButton
{
  smimeButton = self->_smimeButton;
  if (!smimeButton)
  {
    v4 = [MFComposeSMIMELockButton alloc];
    v5 = [(CNComposeRecipientTextView *)self addButton];
    [v5 frame];
    v6 = [(MFComposeSMIMELockButton *)v4 initWithFrame:?];
    v7 = self->_smimeButton;
    self->_smimeButton = v6;

    [(MFComposeSMIMELockButton *)self->_smimeButton setAlpha:0.0];
    [(MFComposeSMIMELockButton *)self->_smimeButton setEnabled:[(MFMailComposeToField *)self smimeButtonEnabled]];
    [(MFComposeSMIMELockButton *)self->_smimeButton setWantsEncryption:self->_wantsEncryption canEncrypt:self->_canEncrypt animated:0];
    [(MFMailComposeToField *)self addSubview:self->_smimeButton];
    [(MFComposeSMIMELockButton *)self->_smimeButton addTarget:self action:sel__tappedSMIMEButton_ forControlEvents:64];
    smimeButton = self->_smimeButton;
  }

  return smimeButton;
}

- (void)_tappedSMIMEButton:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_toFieldDelegate);
  [WeakRetained tappedSMIMEButton];
}

- (void)setExpanded:(BOOL)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MFMailComposeToField;
  [(CNComposeRecipientTextView *)&v7 setExpanded:?];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_toFieldDelegate);
    v6 = [WeakRetained shouldShowSMIMEButton];
  }

  else
  {
    v6 = 0;
  }

  [(MFMailComposeToField *)self _setSMIMEButtonVisible:v6 animated:[(MFMailComposeToField *)self smimeButtonVisible]^ v4];
  if (v4)
  {
  }
}

- (void)setWantsEncryption:(BOOL)a3 canEncrypt:(BOOL)a4 animated:(BOOL)a5
{
  self->_wantsEncryption = a3;
  self->_canEncrypt = a4;
  [MFComposeSMIMELockButton setWantsEncryption:"setWantsEncryption:canEncrypt:animated:" canEncrypt:? animated:?];
}

- (void)_setSMIMEButtonVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if ([(MFMailComposeToField *)self smimeButtonVisible]!= a3)
  {
    [(MFMailComposeToField *)self setSmimeButtonVisible:v5];
    if (v5 || self->_smimeButton)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __56__MFMailComposeToField__setSMIMEButtonVisible_animated___block_invoke;
      aBlock[3] = &unk_1E806CDA8;
      aBlock[4] = self;
      v20 = v5;
      v7 = _Block_copy(aBlock);
      v8 = v7;
      if (v4)
      {
        v9 = [(MFMailComposeToField *)self SMIMEButton];
        v10 = v9;
        v11 = 1.0;
        if (v5)
        {
          v11 = 0.0;
        }

        [v9 setAlpha:v11];

        v12 = [(CNComposeRecipientTextView *)self _useRightToLeftLayout];
        if (v5)
        {
          v13 = 2.0;
          if (v12)
          {
            v13 = -2.0;
          }

          CGAffineTransformMakeTranslation(&v18, v13, 0.0);
        }

        else
        {
          v14 = *(MEMORY[0x1E695EFD0] + 16);
          *&v18.a = *MEMORY[0x1E695EFD0];
          *&v18.c = v14;
          *&v18.tx = *(MEMORY[0x1E695EFD0] + 32);
        }

        v15 = [(MFMailComposeToField *)self SMIMEButton];
        v17 = v18;
        [v15 setTransform:&v17];

        [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:0.25];
      }

      else
      {
        (*(v7 + 2))(v7);
      }

      v16 = [(MFMailComposeToField *)self SMIMEButton];
      [(MFMailComposeToField *)self bringSubviewToFront:v16];

      [(CNComposeRecipientTextView *)self _invalidateTextContainerExclusionPaths];
    }
  }
}

void __56__MFMailComposeToField__setSMIMEButtonVisible_animated___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v2 = 1.0;
  }

  else
  {
    v2 = 0.0;
  }

  v3 = [*(a1 + 32) SMIMEButton];
  [v3 setAlpha:v2];

  v4 = [*(a1 + 32) SMIMEButton];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  v6[0] = *MEMORY[0x1E695EFD0];
  v6[1] = v5;
  v6[2] = *(MEMORY[0x1E695EFD0] + 32);
  [v4 setTransform:v6];
}

- (id)_textContainerExclusionPathsWithAddButton:(BOOL)a3
{
  v23.receiver = self;
  v23.super_class = MFMailComposeToField;
  v4 = [(CNComposeRecipientTextView *)&v23 _textContainerExclusionPathsWithAddButton:a3];
  if ([(MFMailComposeToField *)self smimeButtonVisible])
  {
    v5 = [v4 mutableCopy];
    v6 = [(CNComposeRecipientTextView *)self _useRightToLeftLayout];
    smimeButton = self->_smimeButton;
    if (v6)
    {
      [(MFComposeSMIMELockButton *)smimeButton frame];
      MaxX = CGRectGetMaxX(v25);
      MinX = 0.0;
    }

    else
    {
      [(MFComposeSMIMELockButton *)smimeButton frame];
      MinX = CGRectGetMinX(v26);
      [(MFMailComposeToField *)self frame];
      MaxX = v10 - MinX;
    }

    [(MFComposeSMIMELockButton *)self->_smimeButton frame];
    MaxY = CGRectGetMaxY(v27);
    v12 = [(CNComposeRecipientTextView *)self textView];
    [(MFMailComposeToField *)self convertRect:v12 toView:MinX, 0.0, MaxX, MaxY];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21 = [MEMORY[0x1E69DC728] bezierPathWithRect:{v14, v16, v18, v20}];
    [v5 addObject:v21];
  }

  else
  {
    v5 = v4;
  }

  return v5;
}

- (MFMailComposeToFieldDelegate)toFieldDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_toFieldDelegate);

  return WeakRetained;
}

@end