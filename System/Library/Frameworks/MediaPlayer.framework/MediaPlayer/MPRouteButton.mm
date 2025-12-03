@interface MPRouteButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (MPRouteButton)initWithFrame:(CGRect)frame;
- (NSArray)contentViews;
- (UIEdgeInsets)hitRectInsets;
- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view;
- (void)_updateAccessoryIcon;
- (void)layoutSubviews;
- (void)routeDidChangeNotification:(id)notification;
- (void)setAccessoryImage:(id)image;
- (void)setAccessoryImageSpacing:(double)spacing;
- (void)setAlpha:(double)alpha;
- (void)setFont:(id)font;
- (void)setForcesUppercaseText:(BOOL)text;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setRoute:(id)route;
- (void)setRouteLabelAxis:(int64_t)axis;
- (void)setRouteLabelHidden:(BOOL)hidden;
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
    endpointObject = [(MPAVRoute *)v3 endpointObject];
    predictedOutputDevice = [endpointObject predictedOutputDevice];
    if ([(MPAVRoute *)v3 isDeviceSpeakerRoute])
    {
      v6 = predictedOutputDevice == 0;
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
      outputDevices = [endpointObject outputDevices];
      if (predictedOutputDevice)
      {
        v16[0] = predictedOutputDevice;
        v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

        outputDevices = v8;
      }

      v9 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138543618;
        v13 = objc_opt_class();
        v14 = 2114;
        v15 = outputDevices;
        _os_log_impl(&dword_1A238D000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ imageForRoute routes: %{public}@", &v12, 0x16u);
      }

      v10 = [MEMORY[0x1E69B09B8] symbolNameForOutputDevices:outputDevices];
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

- (void)_intrinsicContentSizeInvalidatedForChildView:(id)view
{
  if (self->_routeLabel == view)
  {
    [(MPRouteButton *)self invalidateIntrinsicContentSize];
  }
}

- (void)routeDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__MPRouteButton_routeDidChangeNotification___block_invoke;
  v6[3] = &unk_1E76823C0;
  v7 = notificationCopy;
  selfCopy = self;
  v5 = notificationCopy;
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
  titleLabel = [(MPRouteLabel *)self->_routeLabel titleLabel];
  v5[1] = titleLabel;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];

  return v3;
}

- (void)setRouteLabelAxis:(int64_t)axis
{
  if (self->_routeLabelAxis != axis)
  {
    self->_routeLabelAxis = axis;
    [(MPRouteButton *)self invalidateIntrinsicContentSize];

    [(MPRouteButton *)self setNeedsLayout];
  }
}

- (void)setRouteLabelHidden:(BOOL)hidden
{
  if (self->_routeLabelHidden != hidden)
  {
    self->_routeLabelHidden = hidden;
    [(MPRouteLabel *)self->_routeLabel setHidden:?];
    [(MPRouteButton *)self invalidateIntrinsicContentSize];

    [(MPRouteButton *)self setNeedsLayout];
  }
}

- (void)setForcesUppercaseText:(BOOL)text
{
  [(MPRouteLabel *)self->_routeLabel setForcesUppercaseText:text];
  [(MPRouteButton *)self invalidateIntrinsicContentSize];

  [(MPRouteButton *)self setNeedsLayout];
}

- (void)setRoute:(id)route
{
  objc_storeStrong(&self->_route, route);
  routeCopy = route;
  [(MPRouteLabel *)self->_routeLabel setRoute:routeCopy];

  [(MPRouteButton *)self invalidateIntrinsicContentSize];
  [(MPRouteButton *)self setNeedsLayout];

  [(MPRouteButton *)self _updateAccessoryIcon];
}

- (void)setFont:(id)font
{
  routeLabel = self->_routeLabel;
  fontCopy = font;
  [(MPRouteLabel *)routeLabel setFont:fontCopy];
  LOBYTE(routeLabel) = [(UIFont *)self->_font isEqual:fontCopy];

  if ((routeLabel & 1) == 0)
  {
    [(MPRouteButton *)self invalidateIntrinsicContentSize];

    [(MPRouteButton *)self setNeedsLayout];
  }
}

- (void)setAccessoryImageSpacing:(double)spacing
{
  v4 = self->_accessoryImageSpacing - spacing;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  if (v4 > 0.00000011920929)
  {
    self->_accessoryImageSpacing = spacing;
    [(MPRouteButton *)self invalidateIntrinsicContentSize];

    [(MPRouteButton *)self setNeedsLayout];
  }
}

- (void)setAccessoryImage:(id)image
{
  imageCopy = image;
  if (([(UIImage *)self->_accessoryImage isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_accessoryImage, image);
    [(MPRouteButton *)self _updateAccessoryIcon];
  }
}

- (void)tintColorDidChange
{
  v4.receiver = self;
  v4.super_class = MPRouteButton;
  [(MPRouteButton *)&v4 tintColorDidChange];
  tintColor = [(MPRouteButton *)self tintColor];
  [(MPRouteLabel *)self->_routeLabel setTintColor:tintColor];
}

- (void)setAlpha:(double)alpha
{
  v5.receiver = self;
  v5.super_class = MPRouteButton;
  [(MPRouteButton *)&v5 setAlpha:?];
  self->_alphaOverride = alpha;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v21 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = MPRouteButton;
  [(MPRouteButton *)&v19 setHighlighted:?];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  subviews = [(MPRouteButton *)self subviews];
  v6 = [subviews countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    if (highlightedCopy)
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
          objc_enumerationMutation(subviews);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        alphaOverride = 0.2;
        if (!highlightedCopy)
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

      v7 = [subviews countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v7);
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
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
  routeLabelAxis = [(MPRouteButton *)self routeLabelAxis];
  if (routeLabelAxis == 1)
  {
    [(MPRouteButton *)self bounds];
    UIRectCenteredXInRect();
    [(MPRouteButton *)self accessoryImageSpacing];
    UIEdgeInsetsMakeWithEdges();
    v4 = v4 - (v11 + v12);
    v6 = v6 - (v13 + v14);
  }

  else if (!routeLabelAxis)
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
    routeLabelAxis2 = [(MPRouteButton *)self routeLabelAxis];
    if (routeLabelAxis2 == 1)
    {
      UIRectCenteredXInRect();
    }

    else if (!routeLabelAxis2)
    {
      UIRectCenteredYInRect();
    }
  }

  traitCollection = [(MPRouteButton *)self traitCollection];
  [traitCollection displayScale];

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

- (MPRouteButton)initWithFrame:(CGRect)frame
{
  v17.receiver = self;
  v17.super_class = MPRouteButton;
  v3 = [(MPRouteButton *)&v17 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel_routeDidChangeNotification_ name:@"MPAVRouteDidChangeNotification" object:0];
  }

  return v4;
}

@end