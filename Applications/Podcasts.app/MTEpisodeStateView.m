@interface MTEpisodeStateView
+ (id)imageForIconKey:(id)a3 theme:(id)a4;
+ (id)orderedIconKeys;
- (CGSize)sizeThatFits:(CGSize)a3;
- (MTEpisodeStateView)init;
- (id)_imageViewForKey:(id)a3;
- (id)_imageViews;
- (id)imagesForCurrentIconsExcludingPlayState;
- (void)_setEnabled:(BOOL)a3 forFlag:(unint64_t)a4;
- (void)_updateIconsIfNeeded;
- (void)_updateImageViews;
- (void)applyThemeToImageViewWithKey:(id)a3;
- (void)layoutSubviews;
- (void)setAssetStatus:(unint64_t)a3;
- (void)setCenteredLayout:(BOOL)a3;
- (void)setColorTheme:(id)a3;
- (void)setPlayStatus:(unint64_t)a3;
- (void)setVerticalLayout:(BOOL)a3;
- (void)sizeToFit;
- (void)updateSizeIfNeeded;
@end

@implementation MTEpisodeStateView

+ (id)orderedIconKeys
{
  if (qword_100583C50 != -1)
  {
    sub_1003B2C88();
  }

  v3 = qword_100583C48;

  return v3;
}

+ (id)imageForIconKey:(id)a3 theme:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_100583C60 != -1)
  {
    sub_1003B2C9C();
  }

  v7 = [v5 unsignedIntegerValue];
  if (v7 == 2048)
  {
    v8 = [UIImage backCatalogPartiallyPlayedIconForTheme:v6];
  }

  else
  {
    if (v7 == 1024)
    {
      [UIImage backCatalogIconForTheme:v6];
    }

    else
    {
      [qword_100583C58 objectForKeyedSubscript:v5];
    }
    v8 = ;
  }

  v9 = v8;

  return v9;
}

- (MTEpisodeStateView)init
{
  v8.receiver = self;
  v8.super_class = MTEpisodeStateView;
  v2 = [(MTEpisodeStateView *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    imageViews = v2->_imageViews;
    v2->_imageViews = v3;

    v5 = +[NSMutableDictionary dictionary];
    imageViewCache = v2->_imageViewCache;
    v2->_imageViewCache = v5;
  }

  return v2;
}

- (void)updateSizeIfNeeded
{
  if (self->_needsSizeUpdate)
  {
    [(MTEpisodeStateView *)self sizeToFit];
  }
}

- (void)setVerticalLayout:(BOOL)a3
{
  if (self->_verticalLayout != a3)
  {
    self->_verticalLayout = a3;
    [(MTEpisodeStateView *)self setNeedsLayout];
  }
}

- (void)setCenteredLayout:(BOOL)a3
{
  if (self->_centeredLayout != a3)
  {
    self->_centeredLayout = a3;
    [(MTEpisodeStateView *)self setNeedsLayout];
  }
}

- (void)setAssetStatus:(unint64_t)a3
{
  v4 = 4u >> a3;
  if (a3 <= 4)
  {
    v5 = 2u >> a3;
  }

  else
  {
    LOBYTE(v4) = 0;
    v5 = 0;
  }

  if (a3 <= 4)
  {
    v6 = 8u >> a3;
  }

  else
  {
    v6 = 0;
  }

  if (a3 <= 4)
  {
    v7 = 0x10u >> a3;
  }

  else
  {
    v7 = 0;
  }

  [(MTEpisodeStateView *)self _setStreaming:v4 & 1];
  [(MTEpisodeStateView *)self _setDocument:v5 & 1];
  [(MTEpisodeStateView *)self _setError:v6 & 1];

  [(MTEpisodeStateView *)self _setAirplaneMode:v7 & 1];
}

- (void)setPlayStatus:(unint64_t)a3
{
  v3 = self->_icons & 0xFFFFFFFFFFFFE07FLL;
  self->_icons = v3;
  if (a3 <= 5)
  {
    self->_icons = v3 | qword_1003FE910[a3];
  }

  [(MTEpisodeStateView *)self _setNeedsIconUpdate];
}

- (id)imagesForCurrentIconsExcludingPlayState
{
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = +[MTEpisodeStateView orderedIconKeys];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 unsignedIntegerValue] <= 0x7F)
        {
          icons = self->_icons;
          if (([v9 unsignedIntegerValue] & icons) != 0)
          {
            v11 = [(MTEpisodeStateView *)self _imageViewForKey:v9];
            v12 = [v11 image];

            if (v12)
            {
              [v3 addObject:v12];
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v13 = [v3 copy];

  return v13;
}

- (void)_setEnabled:(BOOL)a3 forFlag:(unint64_t)a4
{
  icons = self->_icons;
  if (((((icons & a4) == 0) ^ a3) & 1) == 0)
  {
    v5 = icons & ~a4;
    v6 = icons | a4;
    if (!a3)
    {
      v6 = v5;
    }

    self->_icons = v6;
    [(MTEpisodeStateView *)self _setNeedsIconUpdate];
  }
}

- (void)_updateIconsIfNeeded
{
  if (self->_needsIconUpdate)
  {
    [(MTEpisodeStateView *)self _updateImageViews];
  }
}

- (void)_updateImageViews
{
  v3 = [(MTEpisodeStateView *)self _imageViews];
  v4 = [NSSet setWithArray:self->_imageViews];
  v5 = [NSSet setWithArray:v3];
  v6 = [NSMutableSet setWithSet:v4];
  [v6 minusSet:v5];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v23 + 1) + 8 * v11) removeFromSuperview];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  v12 = [NSMutableSet setWithSet:v5];
  [v12 minusSet:v4];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = v12;
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(MTEpisodeStateView *)self addSubview:*(*(&v19 + 1) + 8 * v17), v19];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  imageViews = self->_imageViews;
  self->_imageViews = v3;
}

- (id)_imageViews
{
  v3 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = +[MTEpisodeStateView orderedIconKeys];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        icons = self->_icons;
        if (([v9 unsignedIntegerValue] & icons) != 0)
        {
          v11 = [(MTEpisodeStateView *)self _imageViewForKey:v9];
          if (v11)
          {
            [v3 addObject:v11];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v12 = [NSArray arrayWithArray:v3];

  return v12;
}

- (id)_imageViewForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_imageViewCache objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = [(MTEpisodeStateView *)self colorTheme];
    v7 = [MTEpisodeStateView imageForIconKey:v4 theme:v6];

    if (v7)
    {
      v5 = [[UIImageView alloc] initWithImage:v7];
      [v5 sizeToFit];
      [(NSMutableDictionary *)self->_imageViewCache setObject:v5 forKeyedSubscript:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  [(MTEpisodeStateView *)self applyThemeToImageViewWithKey:v4];

  return v5;
}

- (void)applyThemeToImageViewWithKey:(id)a3
{
  v7 = a3;
  v4 = [(NSMutableDictionary *)self->_imageViewCache objectForKeyedSubscript:?];
  if (v4 && [v7 unsignedIntegerValue] == 4096)
  {
    v5 = [(MTEpisodeStateView *)self colorTheme];
    v6 = [UIColor tintColorForTheme:v5];
    [v4 setTintColor:v6];
  }
}

- (void)setColorTheme:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_colorTheme, a3);
  v6 = [UIColor secondaryTextColorForTheme:v5];
  [(MTEpisodeStateView *)self setTintColor:v6];

  imageViewCache = self->_imageViewCache;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000E0DB4;
  v9[3] = &unk_1004DBD28;
  v10 = v5;
  v8 = v5;
  [(NSMutableDictionary *)imageViewCache enumerateKeysAndObjectsUsingBlock:v9];
  [(MTEpisodeStateView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  [(MTEpisodeStateView *)self bounds];
  v4 = v3;
  [(MTEpisodeStateView *)self bounds];
  v6 = v5;
  [(MTEpisodeStateView *)self _updateIconsIfNeeded];
  if ([(MTEpisodeStateView *)self _isRTL]&& ![(MTEpisodeStateView *)self isVerticalLayout])
  {
    v7 = [(NSArray *)self->_imageViews reverseObjectEnumerator];
  }

  else
  {
    v7 = [(NSArray *)self->_imageViews objectEnumerator];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v9)
  {
    v10 = v9;
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    v13 = *v29;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        [v15 frame];
        v17 = v16;
        v19 = v18;
        v20 = [(MTEpisodeStateView *)self isVerticalLayout];
        v21 = [(MTEpisodeStateView *)self isCenteredLayout];
        if (v20)
        {
          x = v6 - v17;
          if (v21)
          {
            IMRoundToPixel();
            x = v22;
          }

          else if (![(MTEpisodeStateView *)self _isRTL])
          {
            x = 0.0;
          }
        }

        else
        {
          y = v4 - v19;
          if (v21)
          {
            IMRoundToPixel();
            y = v23;
          }
        }

        [v15 setFrame:{x, y, v17, v19}];
        v24 = [(MTEpisodeStateView *)self isVerticalLayout];
        +[MTEpisodeStateView imagePadding];
        v26 = y + v19 + v25;
        v27 = x + v17 + v25;
        if (v24)
        {
          y = v26;
        }

        else
        {
          x = v27;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:{16, v27}];
    }

    while (v10);
  }
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(MTEpisodeStateView *)self _updateIconsIfNeeded:a3.width];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v4 = self->_imageViews;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v23;
    v8 = 0.0;
    v9 = 0.0;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        [v11 frame];
        v13 = v12;
        v15 = v14;
        v16 = [(MTEpisodeStateView *)self isVerticalLayout];
        v17 = [(NSArray *)self->_imageViews lastObject];

        if (v16)
        {
          if (v9 < v13)
          {
            v9 = v13;
          }

          v8 = v8 + v15;
          if (v11 != v17)
          {
            +[MTEpisodeStateView imagePadding];
            v8 = v8 + v18;
          }
        }

        else
        {
          if (v8 < v15)
          {
            v8 = v15;
          }

          v9 = v9 + v13;
          if (v11 != v17)
          {
            +[MTEpisodeStateView imagePadding];
            v9 = v9 + v19;
          }
        }
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0.0;
    v9 = 0.0;
  }

  v20 = v9;
  v21 = v8;
  result.height = v21;
  result.width = v20;
  return result;
}

- (void)sizeToFit
{
  v3.receiver = self;
  v3.super_class = MTEpisodeStateView;
  [(MTEpisodeStateView *)&v3 sizeToFit];
  self->_needsSizeUpdate = 0;
}

@end