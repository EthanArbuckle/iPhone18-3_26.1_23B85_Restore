@interface MFComposeSMIMELockButton
- (MFComposeSMIMELockButton)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)touchInsets;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)_closeLock;
- (void)_openLock;
- (void)_updateButtonAppearanceAnimated:(BOOL)a3;
- (void)setCanEncrypt:(BOOL)a3;
- (void)setEnabled:(BOOL)a3 animated:(BOOL)a4;
- (void)setWantsEncryption:(BOOL)a3;
- (void)setWantsEncryption:(BOOL)a3 canEncrypt:(BOOL)a4 animated:(BOOL)a5;
@end

@implementation MFComposeSMIMELockButton

- (MFComposeSMIMELockButton)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = MFComposeSMIMELockButton;
  v3 = [(MFComposeSMIMELockButton *)&v14 initWithFrame:a3.origin.x, a3.origin.y, 21.0, 22.0];
  v4 = v3;
  if (v3)
  {
    [(MFComposeSMIMELockButton *)v3 setTouchInsets:-20.0, -20.0, 20.0, 10.0];
    v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v6 = [MEMORY[0x1E69DCAB8] mf_systemImageNamed:@"lock.slash.fill" forView:14];
    v7 = [v5 initWithImage:v6];
    unlockedImageView = v4->_unlockedImageView;
    v4->_unlockedImageView = v7;

    [(MFComposeSMIMELockButton *)v4 bounds];
    [(UIImageView *)v4->_unlockedImageView setFrame:?];
    [(UIImageView *)v4->_unlockedImageView setContentMode:4];
    [(MFComposeSMIMELockButton *)v4 addSubview:v4->_unlockedImageView];
    v9 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v10 = [MEMORY[0x1E69DCAB8] mf_systemImageNamed:@"lock.fill" forView:14];
    v11 = [v9 initWithImage:v10];
    lockedImageView = v4->_lockedImageView;
    v4->_lockedImageView = v11;

    [(MFComposeSMIMELockButton *)v4 bounds];
    [(UIImageView *)v4->_lockedImageView setFrame:?];
    [(UIImageView *)v4->_lockedImageView setContentMode:4];
    [(MFComposeSMIMELockButton *)v4 addSubview:v4->_lockedImageView];
    [(MFComposeSMIMELockButton *)v4 setWantsEncryption:0 canEncrypt:1 animated:0];
    [(MFComposeSMIMELockButton *)v4 setEnabled:0];
  }

  return v4;
}

- (void)setEnabled:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E69DC888] lightGrayColor];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__MFComposeSMIMELockButton_setEnabled_animated___block_invoke;
  aBlock[3] = &unk_1E806C520;
  aBlock[4] = self;
  v8 = v7;
  v16 = v8;
  v9 = _Block_copy(aBlock);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__MFComposeSMIMELockButton_setEnabled_animated___block_invoke_2;
  v13[3] = &unk_1E806CDD0;
  v14 = a3;
  v13[4] = self;
  v10 = _Block_copy(v13);
  if (v4)
  {
    v11 = MEMORY[0x1E69DD250];
    UIAnimationDragCoefficient();
    [v11 animateWithDuration:v9 animations:v10 completion:v12 * 0.4];
  }

  else
  {
    v9[2](v9);
    v10[2](v10, 1);
  }
}

unsigned __int8 *__48__MFComposeSMIMELockButton_setEnabled_animated___block_invoke_2(unsigned __int8 *result, int a2)
{
  if (a2)
  {
    v2 = result[40];
    v3.receiver = *(result + 4);
    v3.super_class = MFComposeSMIMELockButton;
    return objc_msgSendSuper2(&v3, sel_setEnabled_, v2);
  }

  return result;
}

- (void)setWantsEncryption:(BOOL)a3
{
  if (self->_wantsEncryption != a3)
  {
    self->_wantsEncryption = a3;
    [(MFComposeSMIMELockButton *)self _updateButtonAppearance];
  }
}

- (void)setCanEncrypt:(BOOL)a3
{
  if (self->_canEncrypt != a3)
  {
    self->_canEncrypt = a3;
    [(MFComposeSMIMELockButton *)self _updateButtonAppearance];
  }
}

- (void)setWantsEncryption:(BOOL)a3 canEncrypt:(BOOL)a4 animated:(BOOL)a5
{
  self->_wantsEncryption = a3;
  self->_canEncrypt = a4;
  [(MFComposeSMIMELockButton *)self _updateButtonAppearanceAnimated:a5];
}

- (void)_updateButtonAppearanceAnimated:(BOOL)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__MFComposeSMIMELockButton__updateButtonAppearanceAnimated___block_invoke;
  aBlock[3] = &unk_1E806C570;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (v3)
  {
    v6 = MEMORY[0x1E69DD250];
    UIAnimationDragCoefficient();
    [v6 animateWithDuration:512 delay:v5 usingSpringWithDamping:0 initialSpringVelocity:v7 * 0.3 options:0.0 animations:0.5 completion:0.0];
  }

  else
  {
    (*(v4 + 2))(v4);
  }
}

void __60__MFComposeSMIMELockButton__updateButtonAppearanceAnimated___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) wantsEncryption] && objc_msgSend(*(a1 + 32), "canEncrypt"))
  {
    v4 = 0;
    [*(a1 + 32) _closeLock];
    [*(a1 + 32) setTintColor:0];
  }

  else
  {
    v2 = [*(a1 + 32) wantsEncryption];
    v3 = *(a1 + 32);
    if (v2)
    {
      [v3 _openLock];
      v4 = [MEMORY[0x1E69DC888] systemRedColor];
      [*(a1 + 32) setTintColor:v4];
    }

    else
    {
      v4 = 0;
      [v3 _openLock];
      [*(a1 + 32) setTintColor:0];
    }
  }
}

- (void)_openLock
{
  [(UIImageView *)self->_unlockedImageView setAlpha:1.0];
  lockedImageView = self->_lockedImageView;

  [(UIImageView *)lockedImageView setAlpha:0.0];
}

- (void)_closeLock
{
  [(UIImageView *)self->_unlockedImageView setAlpha:0.0];
  lockedImageView = self->_lockedImageView;

  [(UIImageView *)lockedImageView setAlpha:1.0];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(MFComposeSMIMELockButton *)self alpha];
  if (v8 > 0.0 && ([(MFComposeSMIMELockButton *)self bounds], v28 = v9, v29 = v10, v30 = v11, v13 = v12, [(MFComposeSMIMELockButton *)self touchInsets], v15 = v14, [(MFComposeSMIMELockButton *)self touchInsets], v17 = v16, [(MFComposeSMIMELockButton *)self touchInsets], v19 = v18, [(MFComposeSMIMELockButton *)self touchInsets], v21 = v20, [(MFComposeSMIMELockButton *)self touchInsets], v23 = v22, [(MFComposeSMIMELockButton *)self touchInsets], v34.origin.x = v28 + v15, v34.origin.y = v13 + v17, v34.size.height = v30 + v24 - v23, v34.size.width = v29 + v21 - v19, v33.x = x, v33.y = y, CGRectContainsPoint(v34, v33)))
  {
    v25 = self;
  }

  else
  {
    v31.receiver = self;
    v31.super_class = MFComposeSMIMELockButton;
    v25 = [(MFComposeSMIMELockButton *)&v31 hitTest:v7 withEvent:x, y];
  }

  v26 = v25;

  return v26;
}

- (UIEdgeInsets)touchInsets
{
  top = self->touchInsets.top;
  left = self->touchInsets.left;
  bottom = self->touchInsets.bottom;
  right = self->touchInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end