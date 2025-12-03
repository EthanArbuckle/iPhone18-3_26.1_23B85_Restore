@interface MFMailComposeToField
- (MFComposeSMIMELockButton)SMIMEButton;
- (MFMailComposeToFieldDelegate)toFieldDelegate;
- (id)_textContainerExclusionPathsWithAddButton:(BOOL)button;
- (void)_setSMIMEButtonVisible:(BOOL)visible animated:(BOOL)animated;
- (void)_tappedSMIMEButton:(id)button;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setExpanded:(BOOL)expanded;
- (void)setWantsEncryption:(BOOL)encryption canEncrypt:(BOOL)encrypt animated:(BOOL)animated;
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
    _useRightToLeftLayout = [(CNComposeRecipientTextView *)self _useRightToLeftLayout];
    addButton = [(CNComposeRecipientTextView *)self addButton];
    [addButton center];
    v6 = v5;
    if (_useRightToLeftLayout)
    {
      *&v7 = 40.0;
    }

    else
    {
      *&v7 = -40.0;
    }

    v8 = *&v7;

    addButton2 = [(CNComposeRecipientTextView *)self addButton];
    [addButton2 center];
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
    addButton = [(CNComposeRecipientTextView *)self addButton];
    [addButton frame];
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

- (void)_tappedSMIMEButton:(id)button
{
  WeakRetained = objc_loadWeakRetained(&self->_toFieldDelegate);
  [WeakRetained tappedSMIMEButton];
}

- (void)setExpanded:(BOOL)expanded
{
  expandedCopy = expanded;
  v7.receiver = self;
  v7.super_class = MFMailComposeToField;
  [(CNComposeRecipientTextView *)&v7 setExpanded:?];
  if (expandedCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_toFieldDelegate);
    shouldShowSMIMEButton = [WeakRetained shouldShowSMIMEButton];
  }

  else
  {
    shouldShowSMIMEButton = 0;
  }

  [(MFMailComposeToField *)self _setSMIMEButtonVisible:shouldShowSMIMEButton animated:[(MFMailComposeToField *)self smimeButtonVisible]^ expandedCopy];
  if (expandedCopy)
  {
  }
}

- (void)setWantsEncryption:(BOOL)encryption canEncrypt:(BOOL)encrypt animated:(BOOL)animated
{
  self->_wantsEncryption = encryption;
  self->_canEncrypt = encrypt;
  [MFComposeSMIMELockButton setWantsEncryption:"setWantsEncryption:canEncrypt:animated:" canEncrypt:? animated:?];
}

- (void)_setSMIMEButtonVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  if ([(MFMailComposeToField *)self smimeButtonVisible]!= visible)
  {
    [(MFMailComposeToField *)self setSmimeButtonVisible:visibleCopy];
    if (visibleCopy || self->_smimeButton)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __56__MFMailComposeToField__setSMIMEButtonVisible_animated___block_invoke;
      aBlock[3] = &unk_1E806CDA8;
      aBlock[4] = self;
      v20 = visibleCopy;
      v7 = _Block_copy(aBlock);
      v8 = v7;
      if (animatedCopy)
      {
        sMIMEButton = [(MFMailComposeToField *)self SMIMEButton];
        v10 = sMIMEButton;
        v11 = 1.0;
        if (visibleCopy)
        {
          v11 = 0.0;
        }

        [sMIMEButton setAlpha:v11];

        _useRightToLeftLayout = [(CNComposeRecipientTextView *)self _useRightToLeftLayout];
        if (visibleCopy)
        {
          v13 = 2.0;
          if (_useRightToLeftLayout)
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

        sMIMEButton2 = [(MFMailComposeToField *)self SMIMEButton];
        v17 = v18;
        [sMIMEButton2 setTransform:&v17];

        [MEMORY[0x1E69DD250] animateWithDuration:v8 animations:0.25];
      }

      else
      {
        (*(v7 + 2))(v7);
      }

      sMIMEButton3 = [(MFMailComposeToField *)self SMIMEButton];
      [(MFMailComposeToField *)self bringSubviewToFront:sMIMEButton3];

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

- (id)_textContainerExclusionPathsWithAddButton:(BOOL)button
{
  v23.receiver = self;
  v23.super_class = MFMailComposeToField;
  v4 = [(CNComposeRecipientTextView *)&v23 _textContainerExclusionPathsWithAddButton:button];
  if ([(MFMailComposeToField *)self smimeButtonVisible])
  {
    v5 = [v4 mutableCopy];
    _useRightToLeftLayout = [(CNComposeRecipientTextView *)self _useRightToLeftLayout];
    smimeButton = self->_smimeButton;
    if (_useRightToLeftLayout)
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
    textView = [(CNComposeRecipientTextView *)self textView];
    [(MFMailComposeToField *)self convertRect:textView toView:MinX, 0.0, MaxX, MaxY];
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