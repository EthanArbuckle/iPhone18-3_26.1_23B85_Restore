@interface UIView
- (CGRect)untransformedFrame;
- (UIEdgeInsets)music_inheritedLayoutInsets;
- (UIEdgeInsets)music_layoutInsets;
- (void)_music_layoutInsets_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_music_layoutInsets_didMoveToSuperview;
- (void)_music_updateInheritedLayoutInsets;
- (void)music_setLayoutInsets:(UIEdgeInsets)insets;
- (void)setUntransformedFrame:(CGRect)frame;
@end

@implementation UIView

- (UIEdgeInsets)music_layoutInsets
{
  if (sSetupOnceToken[0] != -1)
  {
    [UIView(MusicLayoutAdditions) music_layoutInsets];
  }

  v3 = objc_getAssociatedObject(self, _UIViewMusicLayoutAdditionsAssociatedObjectKeyLayoutInsets);
  v4 = v3;
  if (v3)
  {
    [v3 UIEdgeInsetsValue];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = MTMPULayoutSizeNoDimension;
    v8 = MTMPULayoutSizeNoDimension;
    v10 = MTMPULayoutSizeNoDimension;
    v12 = MTMPULayoutSizeNoDimension;
  }

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (UIEdgeInsets)music_inheritedLayoutInsets
{
  if (sSetupOnceToken[0] != -1)
  {
    [UIView(MusicLayoutAdditions) music_layoutInsets];
  }

  v3 = objc_getAssociatedObject(self, _UIViewMusicLayoutAdditionsAssociatedObjectKeyInheritedLayoutInsets);
  [v3 UIEdgeInsetsValue];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (void)music_setLayoutInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  if (sSetupOnceToken[0] != -1)
  {
    [UIView(MusicLayoutAdditions) music_layoutInsets];
  }

  [(UIView *)self music_layoutInsets];
  if (v11 != left || v8 != top || v10 != right || v9 != bottom)
  {
    v15 = _UIViewMusicLayoutAdditionsAssociatedObjectKeyLayoutInsets;
    right = [NSValue valueWithUIEdgeInsets:top, left, bottom, right];
    objc_setAssociatedObject(self, v15, right, &stru_2E8.segname[9]);

    if ([(UIView *)self _isInAWindow])
    {

      [(UIView *)self _music_updateInheritedLayoutInsets];
    }

    else
    {
      v17 = _UIViewMusicLayoutAdditionsAssociatedObjectKeyNeedsUpdateAfterMovingToWindow;

      objc_setAssociatedObject(self, v17, &__kCFBooleanTrue, &dword_0 + 3);
    }
  }
}

- (void)_music_layoutInsets_didMoveToSuperview
{
  [(UIView *)self _music_updateInheritedLayoutInsets];

  [(UIView *)self _music_layoutInsets_didMoveToSuperview];
}

- (void)_music_layoutInsets_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  [(UIView *)self _music_updateInheritedLayoutInsets];

  [(UIView *)self _music_layoutInsets_didMoveFromWindow:window toWindow:toWindow];
}

- (void)_music_updateInheritedLayoutInsets
{
  [(UIView *)self music_layoutInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(UIView *)self _isInAWindow])
  {
    superview = [(UIView *)self superview];
    if (superview)
    {
      superview2 = [(UIView *)self superview];
      [superview2 music_inheritedLayoutInsets];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;
    }

    else
    {
      [(UIView *)self music_inheritedLayoutInsets];
      v14 = v25;
      v16 = v26;
      v18 = v27;
      v20 = v28;
    }
  }

  else
  {
    [(UIView *)self music_inheritedLayoutInsets];
    v14 = v21;
    v16 = v22;
    v18 = v23;
    v20 = v24;
  }

  if (MTMPUFloatEqualToFloat())
  {
    v4 = v14;
  }

  if (MTMPUFloatEqualToFloat())
  {
    v6 = v16;
  }

  if (MTMPUFloatEqualToFloat())
  {
    v8 = v18;
  }

  if (MTMPUFloatEqualToFloat())
  {
    v10 = v20;
  }

  [(UIView *)self music_inheritedLayoutInsets];
  if (v32 != v6 || v29 != v4 || v31 != v10 || v30 != v8)
  {
    v36 = _UIViewMusicLayoutAdditionsAssociatedObjectKeyInheritedLayoutInsets;
    v37 = [NSValue valueWithUIEdgeInsets:v4, v6, v8, v10];
    objc_setAssociatedObject(self, v36, v37, &stru_2E8.segname[9]);

    [(UIView *)self music_inheritedLayoutInsetsDidChange];
    v38 = [UIViewController viewControllerForView:self];
    [v38 music_viewInheritedLayoutInsetsDidChange];
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    subviews = [(UIView *)self subviews];
    v40 = [subviews countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v45;
      do
      {
        for (i = 0; i != v41; i = i + 1)
        {
          if (*v45 != v42)
          {
            objc_enumerationMutation(subviews);
          }

          [*(*(&v44 + 1) + 8 * i) _music_updateInheritedLayoutInsets];
        }

        v41 = [subviews countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v41);
    }
  }
}

- (CGRect)untransformedFrame
{
  selfCopy = self;
  [(UIView *)selfCopy bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(UIView *)selfCopy center];
  v12 = v11;
  v14 = v13;
  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  v15 = v12 - CGRectGetWidth(v23) * 0.5;
  v24.origin.x = v4;
  v24.origin.y = v6;
  v24.size.width = v8;
  v24.size.height = v10;
  v16 = v14 - CGRectGetHeight(v24) * 0.5;
  v25.origin.x = v4;
  v25.origin.y = v6;
  v25.size.width = v8;
  v25.size.height = v10;
  Width = CGRectGetWidth(v25);
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  Height = CGRectGetHeight(v26);

  v19 = v15;
  v20 = v16;
  v21 = Width;
  v22 = Height;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)setUntransformedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  selfCopy = self;
  [(UIView *)selfCopy setBounds:0.0, 0.0, width, height];
  sub_144F2C();
  [(UIView *)selfCopy setCenter:?];
}

@end