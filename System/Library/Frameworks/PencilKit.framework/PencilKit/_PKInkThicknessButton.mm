@interface _PKInkThicknessButton
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)backgroundColorForIsSelected:(int)selected highlighted:;
- (id)imageTintColorForIsSelected:(int)selected highlighted:;
- (id)initWithAssetImage:(double)image weight:(double)weight buttonSize:(double)size;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)didTouchUpInside;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImageTintColorOverride:(uint64_t)override;
- (void)setSelected:(int)selected animated:;
@end

@implementation _PKInkThicknessButton

- (id)initWithAssetImage:(double)image weight:(double)weight buttonSize:(double)size
{
  v10 = a2;
  if (self)
  {
    v21.receiver = self;
    v21.super_class = _PKInkThicknessButton;
    v11 = *MEMORY[0x1E695F058];
    v12 = *(MEMORY[0x1E695F058] + 8);
    v13 = *(MEMORY[0x1E695F058] + 16);
    v14 = *(MEMORY[0x1E695F058] + 24);
    self = objc_msgSendSuper2(&v21, sel_initWithFrame_, *MEMORY[0x1E695F058], v12, v13, v14);
    if (self)
    {
      if (!v10)
      {
        v15 = os_log_create("com.apple.pencilkit", "InkPicker");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v20[0] = 0;
          _os_log_impl(&dword_1C7CCA000, v15, OS_LOG_TYPE_DEFAULT, "Should not pass nil assetImage to _PKInkThicknessButton.", v20, 2u);
        }
      }

      objc_storeStrong(self + 96, a2);
      *(self + 93) = image;
      *(self + 97) = weight;
      *(self + 98) = size;
      v16 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithFrame:{v11, v12, v13, v14}];
      v17 = self[95];
      self[95] = v16;

      [self addSubview:self[95]];
      [self addTarget:self action:sel_didTouchUpInside forControlEvents:64];
      +[PKLayoutConstants inkThicknessButtonCornerRadius];
      [self _setContinuousCornerRadius:?];
      v18 = [objc_alloc(MEMORY[0x1E69DCDB0]) initWithDelegate:self];
      [self addInteraction:v18];
    }
  }

  return self;
}

- (void)layoutSubviews
{
  v23.receiver = self;
  v23.super_class = _PKInkThicknessButton;
  [(_PKInkThicknessButton *)&v23 layoutSubviews];
  [(_PKInkThicknessButton *)self bounds];
  if (self)
  {
    [(UIImageView *)self->_inkImageView setFrame:?];
    inkImageView = self->_inkImageView;
  }

  else
  {
    [0 setFrame:?];
    inkImageView = 0;
  }

  v4 = inkImageView;
  [(UIImageView *)v4 bounds];
  if (self)
  {
    x = self->_lastRenderedBounds.origin.x;
    y = self->_lastRenderedBounds.origin.y;
    width = self->_lastRenderedBounds.size.width;
    height = self->_lastRenderedBounds.size.height;
  }

  else
  {
    y = 0.0;
    width = 0.0;
    height = 0.0;
    x = 0.0;
  }

  v13 = CGRectEqualToRect(*&v5, *&x);

  if (!v13)
  {
    if (self)
    {
      v14 = self->_inkImageView;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
    [(UIImageView *)v15 bounds];
    if (self)
    {
      self->_lastRenderedBounds.origin.x = v16;
      self->_lastRenderedBounds.origin.y = v17;
      self->_lastRenderedBounds.size.width = v18;
      self->_lastRenderedBounds.size.height = v19;
    }

    [(UIImageView *)self->_inkImageView setImage:self->_assetImage];
  }

  v20 = [(_PKInkThicknessButton *)self backgroundColorForIsSelected:0 highlighted:?];
  [(_PKInkThicknessButton *)self setBackgroundColor:v20];

  v21 = [(_PKInkThicknessButton *)self imageTintColorForIsSelected:0 highlighted:?];
  if (self)
  {
    v22 = self->_inkImageView;
  }

  else
  {
    v22 = 0;
  }

  [(UIImageView *)v22 setTintColor:v21];
}

- (id)backgroundColorForIsSelected:(int)selected highlighted:
{
  if (self)
  {
    if (selected)
    {
      if (a2)
      {
        self = [MEMORY[0x1E69DC888] pk_thicknessButtonLightGrayUseSystemColor:1];
LABEL_8:
        v3 = vars8;
        goto LABEL_9;
      }
    }

    else if (a2)
    {
      self = [MEMORY[0x1E69DC888] pk_thicknessButtonBackgroundUseSystemColor:1];
      goto LABEL_8;
    }

    self = [MEMORY[0x1E69DC888] clearColor];
    goto LABEL_8;
  }

LABEL_9:

  return self;
}

- (id)imageTintColorForIsSelected:(int)selected highlighted:
{
  if (self)
  {
    if (selected)
    {
      v3 = MEMORY[0x1E69DC888];
      if (!a2)
      {
        v4 = [MEMORY[0x1E69DC888] pk_thicknessButtonLightGrayUseSystemColor:1];
LABEL_8:
        v5 = v4;
        goto LABEL_13;
      }
    }

    else
    {
      if (!a2)
      {
        v6 = *(self + 752);
        v7 = v6;
        if (v6)
        {
          v8 = v6;
        }

        else
        {
          v8 = [MEMORY[0x1E69DC888] pk_thicknessButtonBlackUseSystemColor:1];
        }

        v5 = v8;

        goto LABEL_13;
      }

      v3 = MEMORY[0x1E69DC888];
    }

    v4 = [v3 pk_thicknessButtonWhiteUseSystemColor:1];
    goto LABEL_8;
  }

  v5 = 0;
LABEL_13:

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = self->_buttonSize.width;
  height = self->_buttonSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setHighlighted:(BOOL)highlighted
{
  v5.receiver = self;
  v5.super_class = _PKInkThicknessButton;
  [(_PKInkThicknessButton *)&v5 setHighlighted:?];
  if (self)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52___PKInkThicknessButton__animateToHighlightedState___block_invoke;
    v6[3] = &unk_1E82D90B8;
    v6[4] = self;
    highlightedCopy = highlighted;
    [MEMORY[0x1E69DD250] animateWithDuration:327684 delay:v6 options:&__block_literal_global_83 animations:0.3 completion:0.0];
  }
}

- (void)setSelected:(int)selected animated:
{
  if (self && [self isSelected] != a2)
  {
    v10.receiver = self;
    v10.super_class = _PKInkThicknessButton;
    objc_msgSendSuper2(&v10, sel_setSelected_, a2);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46___PKInkThicknessButton_setSelected_animated___block_invoke;
    v8[3] = &unk_1E82D90B8;
    v8[4] = self;
    v9 = a2;
    v6 = _Block_copy(v8);
    v7 = v6;
    if (selected)
    {
      [MEMORY[0x1E69DD250] animateWithDuration:327684 delay:v6 options:0 animations:0.3 completion:0.0];
    }

    else
    {
      (*(v6 + 2))(v6);
    }
  }
}

- (void)didTouchUpInside
{
  v3 = [(_PKInkThicknessButton *)self isSelected]^ 1;

  [(_PKInkThicknessButton *)self setSelected:v3 animated:1];
}

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  v5 = MEMORY[0x1E69DCDC0];
  [(_PKInkThicknessButton *)self bounds:interaction];

  return [v5 regionWithRect:0 identifier:?];
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  v4 = [objc_alloc(MEMORY[0x1E69DD070]) initWithView:self];
  v5 = [MEMORY[0x1E69DCDA8] effectWithPreview:v4];
  v6 = [MEMORY[0x1E69DCDD0] styleWithEffect:v5 shape:0];

  return v6;
}

- (void)setImageTintColorOverride:(uint64_t)override
{
  if (override)
  {
    objc_storeStrong((override + 752), a2);
  }
}

@end