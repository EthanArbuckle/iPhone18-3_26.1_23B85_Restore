@interface MPRouteButton
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MPRouteButton)initWithFrame:(CGRect)a3;
- (NSArray)contentViews;
- (UIEdgeInsets)hitRectInsets;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3;
- (void)_updateAccessoryIcon;
- (void)layoutSubviews;
- (void)routeDidChangeNotification:(id)a3;
- (void)setAccessoryImage:(id)a3;
- (void)setAccessoryImageSpacing:(double)a3;
- (void)setAlpha:(double)a3;
- (void)setFont:(id)a3;
- (void)setForcesUppercaseText:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setRoute:(id)a3;
- (void)setRouteLabelAxis:(int64_t)a3;
- (void)setRouteLabelHidden:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation MPRouteButton

- (UIEdgeInsets)hitRectInsets
{
  top = self->_hitRectInsets.top;
  left = self->_hitRectInsets.left;
  bottom = self->_hitRectInsets.bottom;
  right = self->_hitRectInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)_updateAccessoryIcon
{
  v16[1] = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self->_route;
    v4 = [(MPAVRoute *)v3 endpointObject];
    v5 = [v4 predictedOutputDevice];
    if ([(MPAVRoute *)v3 isDeviceSpeakerRoute])
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      [(UIImageView *)self->_accessoryImageView setImage:self->_accessoryImage];
    }

    else
    {
      v7 = [v4 outputDevices];
      if (v5)
      {
        v16[0] = v5;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

        v7 = v8;
      }

      v9 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543618;
        v13 = objc_opt_class();
        v14 = 2114;
        v15 = v7;
        _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ imageForRoute routes: %{public}@", &v12, 0x16u);
      }

      v10 = [MEMORY[0x1E69B09B8] symbolNameForOutputDevices:v7];
      v11 = [MEMORY[0x1E69DCAB8] _systemImageNamed:v10];
      [(UIImageView *)self->_accessoryImageView setImage:v11];
    }
  }

  else
  {
    [(UIImageView *)self->_accessoryImageView setImage:self->_accessoryImage];
  }

  [(MPRouteButton *)self invalidateIntrinsicContentSize];
  [(MPRouteButton *)self setNeedsLayout];
}

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)a3
{
  if (self->_routeLabel == a3)
  {
    [(MPRouteButton *)self invalidateIntrinsicContentSize];
  }
}

- (void)routeDidChangeNotification:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__MPRouteButton_routeDidChangeNotification___block_invoke;
  v6[3] = &unk_1E76823C0;
  v7 = v4;
  v8 = self;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __44__MPRouteButton_routeDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = [*(a1 + 40) route];
  v4 = [v2 isEqual:v3];

  if (v4)
  {
    v5 = *(a1 + 40);

    [v5 _updateAccessoryIcon];
  }
}

- (NSArray)contentViews
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = self->_accessoryImageView;
  v2 = [(MPRouteLabel *)self->_routeLabel titleLabel];
  v5[1] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

- (void)setRouteLabelAxis:(int64_t)a3
{
  if (self->_routeLabelAxis != a3)
  {
    self->_routeLabelAxis = a3;
    [(MPRouteButton *)self invalidateIntrinsicContentSize];

    [(MPRouteButton *)self setNeedsLayout];
  }
}

- (void)setRouteLabelHidden:(BOOL)a3
{
  if (self->_routeLabelHidden != a3)
  {
    self->_routeLabelHidden = a3;
    [(MPRouteLabel *)self->_routeLabel setHidden:?];
    [(MPRouteButton *)self invalidateIntrinsicContentSize];

    [(MPRouteButton *)self setNeedsLayout];
  }
}

- (void)setForcesUppercaseText:(BOOL)a3
{
  [(MPRouteLabel *)self->_routeLabel setForcesUppercaseText:a3];
  [(MPRouteButton *)self invalidateIntrinsicContentSize];

  [(MPRouteButton *)self setNeedsLayout];
}

- (void)setRoute:(id)a3
{
  objc_storeStrong(&self->_route, a3);
  v5 = a3;
  [(MPRouteLabel *)self->_routeLabel setRoute:v5];

  [(MPRouteButton *)self invalidateIntrinsicContentSize];
  [(MPRouteButton *)self setNeedsLayout];

  [(MPRouteButton *)self _updateAccessoryIcon];
}

- (void)setFont:(id)a3
{
  routeLabel = self->_routeLabel;
  v5 = a3;
  [(MPRouteLabel *)routeLabel setFont:v5];
  LOBYTE(routeLabel) = [(UIFont *)self->_font isEqual:v5];

  if ((routeLabel & 1) == 0)
  {
    [(MPRouteButton *)self invalidateIntrinsicContentSize];

    [(MPRouteButton *)self setNeedsLayout];
  }
}

- (void)setAccessoryImageSpacing:(double)a3
{
  v4 = self->_accessoryImageSpacing - a3;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  if (v4 > 0.00000011920929)
  {
    self->_accessoryImageSpacing = a3;
    [(MPRouteButton *)self invalidateIntrinsicContentSize];

    [(MPRouteButton *)self setNeedsLayout];
  }
}

- (void)setAccessoryImage:(id)a3
{
  v5 = a3;
  if (([(UIImage *)self->_accessoryImage isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_accessoryImage, a3);
    [(MPRouteButton *)self _updateAccessoryIcon];
  }
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = MPRouteButton;
  [(MPRouteButton *)&v4 tintColorDidChange];
  v3 = [(MPRouteButton *)self tintColor];
  [(MPRouteLabel *)self->_routeLabel setTintColor:v3];
}

- (void)setAlpha:(double)a3
{
  v5.receiver = self;
  v5.super_class = MPRouteButton;
  [(MPRouteButton *)&v5 setAlpha:?];
  self->_alphaOverride = a3;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v21 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = MPRouteButton;
  [(MPRouteButton *)&v19 setHighlighted:?];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(MPRouteButton *)self subviews];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    if (v3)
    {
      v9 = 0.0;
    }

    else
    {
      v9 = 0.47;
    }

    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        alphaOverride = 0.2;
        if (!v3)
        {
          alphaOverride = self->_alphaOverride;
        }

        [*(*(&v15 + 1) + 8 * i) alpha];
        if (alphaOverride != v13)
        {
          v14[0] = MEMORY[0x1E69E9820];
          v14[1] = 3221225472;
          v14[2] = __32__MPRouteButton_setHighlighted___block_invoke;
          v14[3] = &unk_1E7682398;
          v14[4] = v11;
          *&v14[5] = alphaOverride;
          [MEMORY[0x1E69DD250] animateWithDuration:327684 delay:v14 options:0 animations:v9 completion:0.0];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UIImageView *)self->_accessoryImageView sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  if ([(MPRouteButton *)self isRouteLabelHidden])
  {
    v10 = *MEMORY[0x1E695F060];
    v11 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    [(MPRouteLabel *)self->_routeLabel sizeThatFits:width, height];
  }

  routeLabelAxis = self->_routeLabelAxis;
  if (routeLabelAxis == 1)
  {
    if (v10 >= v7)
    {
      v7 = v10;
    }

    v15 = -v11;
    if (v11 >= 0.0)
    {
      v15 = v11;
    }

    if (v15 > 0.00000011920929)
    {
      v9 = v9 + v11 + self->_accessoryImageSpacing;
    }
  }

  else if (!routeLabelAxis)
  {
    v13 = -v10;
    if (v10 >= 0.0)
    {
      v13 = v10;
    }

    if (v13 > 0.00000011920929)
    {
      v7 = v7 + v10 + self->_accessoryImageSpacing;
    }

    if (v9 >= v11)
    {
      v14 = v9;
    }

    else
    {
      v14 = v11;
    }

    if (v14 >= 0.0)
    {
      v9 = v14;
    }

    else
    {
      v9 = 0.0;
    }
  }

  v16 = v7;
  v17 = v9;
  result.height = v17;
  result.width = v16;
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(MPRouteButton *)self bounds];
  top = self->_hitRectInsets.top;
  left = self->_hitRectInsets.left;
  v10 = v9 + left;
  v12 = v11 - (left + self->_hitRectInsets.right);
  v14 = v13 + top;
  v16 = v15 - (top + self->_hitRectInsets.bottom);
  v17 = x;
  v18 = y;

  return CGRectContainsPoint(*&v10, *&v17);
}

- (CGSize)intrinsicContentSize
{
  [(MPRouteButton *)self sizeThatFits:1.79769313e308, 1.79769313e308];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v41.receiver = self;
  v41.super_class = MPRouteButton;
  [(MPRouteButton *)&v41 layoutSubviews];
  [(MPRouteButton *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIImageView *)self->_accessoryImageView sizeThatFits:v3, v5];
  v8 = v7;
  v9 = [(MPRouteButton *)self routeLabelAxis];
  if (v9 == 1)
  {
    [(MPRouteButton *)self bounds];
    UIRectCenteredXInRect();
    [(MPRouteButton *)self accessoryImageSpacing];
    UIEdgeInsetsMakeWithEdges();
    v4 = v4 - (v11 + v12);
    v6 = v6 - (v13 + v14);
  }

  else if (!v9)
  {
    [(MPRouteButton *)self accessoryImageSpacing];
    v4 = v4 - (v8 + v10 + 0.0);
  }

  if (![(MPRouteButton *)self isRouteLabelHidden])
  {
    [(MPRouteLabel *)self->_routeLabel sizeThatFits:v4, v6];
  }

  if (![(MPRouteButton *)self isRouteLabelHidden])
  {
    v15 = [(MPRouteButton *)self routeLabelAxis];
    if (v15 == 1)
    {
      UIRectCenteredXInRect();
    }

    else if (!v15)
    {
      UIRectCenteredYInRect();
    }
  }

  v16 = [(MPRouteButton *)self traitCollection];
  [v16 displayScale];

  UIRectIntegralWithScale();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  [(MPRouteButton *)self bounds];
  [(UIImageView *)self->_accessoryImageView setFrame:MPRectByApplyingUserInterfaceLayoutDirectionInRect(v18, v20, v22, v24, v25, v26, v27, v28)];
  UIRectIntegralWithScale();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  [(MPRouteButton *)self bounds];
  [(MPRouteLabel *)self->_routeLabel setFrame:MPRectByApplyingUserInterfaceLayoutDirectionInRect(v30, v32, v34, v36, v37, v38, v39, v40)];
}

- (MPRouteButton)initWithFrame:(CGRect)a3
{
  v17.receiver = self;
  v17.super_class = MPRouteButton;
  v3 = [(MPRouteButton *)&v17 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_accessoryImageSpacing = 8.0;
    v3->_alphaOverride = 1.0;
    v3->_routeLabelAxis = 0;
    v5 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [v5 initWithFrame:{*MEMORY[0x1E695F058], v7, v8, v9}];
    accessoryImageView = v4->_accessoryImageView;
    v4->_accessoryImageView = v10;

    [(UIImageView *)v4->_accessoryImageView setUserInteractionEnabled:0];
    v12 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:6 weight:20.0];
    [(UIImageView *)v4->_accessoryImageView setPreferredSymbolConfiguration:v12];

    [(MPRouteButton *)v4 addSubview:v4->_accessoryImageView];
    v13 = [[MPRouteLabel alloc] initWithFrame:v6, v7, v8, v9];
    routeLabel = v4->_routeLabel;
    v4->_routeLabel = v13;

    [(MPRouteLabel *)v4->_routeLabel setUserInteractionEnabled:0];
    [(MPRouteLabel *)v4->_routeLabel _setTextColorFollowsTintColor:1];
    [(MPRouteButton *)v4 addSubview:v4->_routeLabel];
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 addObserver:v4 selector:sel_routeDidChangeNotification_ name:@"MPAVRouteDidChangeNotification" object:0];
  }

  return v4;
}

@end