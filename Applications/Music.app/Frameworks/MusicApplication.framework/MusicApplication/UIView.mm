@interface UIView
+ (UIEdgeInsets)music_defaultLayoutInsetsInView:(id)a3;
- (UIEdgeInsets)music_inheritedLayoutInsets;
- (UIEdgeInsets)music_layoutInsets;
- (void)_music_layoutInsets_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_music_layoutInsets_didMoveToSuperview;
- (void)_music_updateInheritedLayoutInsets;
- (void)music_setLayoutInsets:(UIEdgeInsets)a3;
@end

@implementation UIView

- (UIEdgeInsets)music_layoutInsets
{
  if (sSetupOnceToken != -1)
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
    v6 = -1.0;
    v8 = -1.0;
    v10 = -1.0;
    v12 = -1.0;
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
  if (sSetupOnceToken != -1)
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

- (void)music_setLayoutInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  if (sSetupOnceToken != -1)
  {
    [UIView(MusicLayoutAdditions) music_layoutInsets];
  }

  [(UIView *)self music_layoutInsets];
  if (v11 != left || v8 != top || v10 != right || v9 != bottom)
  {
    v15 = _UIViewMusicLayoutAdditionsAssociatedObjectKeyLayoutInsets;
    v16 = [NSValue valueWithUIEdgeInsets:top, left, bottom, right];
    objc_setAssociatedObject(self, v15, v16, &stru_2E8.segname[9]);

    [(UIView *)self _music_updateInheritedLayoutInsets];
  }
}

+ (UIEdgeInsets)music_defaultLayoutInsetsInView:(id)a3
{
  [a3 bounds];
  Width = CGRectGetWidth(v9);
  if (MusicFloatGreaterThanOrEqualToFloat(Width, 1000.0))
  {
    v4 = 52.0;
  }

  else
  {
    v5 = MusicFloatGreaterThanOrEqualToFloat(Width, 650.0);
    v4 = 20.0;
    if (v5)
    {
      v4 = 34.0;
    }
  }

  v6 = 0.0;
  v7 = 0.0;
  v8 = v4;
  result.right = v8;
  result.bottom = v7;
  result.left = v4;
  result.top = v6;
  return result;
}

- (void)_music_layoutInsets_didMoveToSuperview
{
  [(UIView *)self _music_updateInheritedLayoutInsets];

  [(UIView *)self _music_layoutInsets_didMoveToSuperview];
}

- (void)_music_layoutInsets_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  [(UIView *)self _music_updateInheritedLayoutInsets];

  [(UIView *)self _music_layoutInsets_didMoveFromWindow:a3 toWindow:a4];
}

- (void)_music_updateInheritedLayoutInsets
{
  [(UIView *)self music_layoutInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(UIView *)self superview];
  if (v11)
  {
    v12 = [(UIView *)self superview];
    [v12 music_inheritedLayoutInsets];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
  }

  else
  {
    [(UIView *)self music_inheritedLayoutInsets];
    v14 = v21;
    v16 = v22;
    v18 = v23;
    v20 = v24;
  }

  if (MusicFloatEqualToFloat(v4, -1.0))
  {
    v4 = v14;
  }

  if (MusicFloatEqualToFloat(v6, -1.0))
  {
    v6 = v16;
  }

  if (MusicFloatEqualToFloat(v8, -1.0))
  {
    v8 = v18;
  }

  if (MusicFloatEqualToFloat(v10, -1.0))
  {
    v10 = v20;
  }

  [(UIView *)self music_inheritedLayoutInsets];
  if (v28 != v6 || v25 != v4 || v27 != v10 || v26 != v8)
  {
    v32 = _UIViewMusicLayoutAdditionsAssociatedObjectKeyInheritedLayoutInsets;
    v33 = [NSValue valueWithUIEdgeInsets:v4, v6, v8, v10];
    objc_setAssociatedObject(self, v32, v33, &stru_2E8.segname[9]);

    [(UIView *)self music_inheritedLayoutInsetsDidChange];
    v34 = [UIViewController viewControllerForView:self];
    [v34 music_viewInheritedLayoutInsetsDidChange];
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v35 = [(UIView *)self subviews];
    v36 = [v35 countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v41;
      do
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v41 != v38)
          {
            objc_enumerationMutation(v35);
          }

          [*(*(&v40 + 1) + 8 * i) _music_updateInheritedLayoutInsets];
        }

        v37 = [v35 countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v37);
    }
  }
}

@end