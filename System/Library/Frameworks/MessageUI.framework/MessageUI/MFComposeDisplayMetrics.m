@interface MFComposeDisplayMetrics
+ (id)displayMetricsWithTraitCollection:(id)a3 layoutMargins:(NSDirectionalEdgeInsets)a4 safeAreaInsets:(UIEdgeInsets)a5;
- (BOOL)isCompactHeight;
- (NSDirectionalEdgeInsets)headerViewSeparatorInset;
- (NSDirectionalEdgeInsets)layoutMargins;
- (UIEdgeInsets)safeAreaInsets;
- (UIEdgeInsets)sendBarButtonItemImageInsets;
- (double)trailingButtonMidlineOffset;
@end

@implementation MFComposeDisplayMetrics

+ (id)displayMetricsWithTraitCollection:(id)a3 layoutMargins:(NSDirectionalEdgeInsets)a4 safeAreaInsets:(UIEdgeInsets)a5
{
  right = a5.right;
  bottom = a5.bottom;
  left = a5.left;
  top = a5.top;
  trailing = a4.trailing;
  v10 = a4.bottom;
  leading = a4.leading;
  v12 = a4.top;
  v13 = a3;
  if ([v13 userInterfaceIdiom] == -1)
  {
    v14 = 0;
  }

  else
  {
    v14 = objc_alloc_init(MFComposeDisplayMetrics);
    [(MFComposeDisplayMetrics *)v14 setTraitCollection:v13];
    [(MFComposeDisplayMetrics *)v14 setLayoutMargins:v12, leading, v10, trailing];
    [(MFComposeDisplayMetrics *)v14 setSafeAreaInsets:top, left, bottom, right];
  }

  return v14;
}

- (double)trailingButtonMidlineOffset
{
  v2 = [(MFComposeDisplayMetrics *)self isCompactHeight];
  result = 21.0;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

- (UIEdgeInsets)sendBarButtonItemImageInsets
{
  v3 = [(MFComposeDisplayMetrics *)self traitCollection];
  v4 = [v3 layoutDirection];

  v5 = [(MFComposeDisplayMetrics *)self isCompactHeight];
  v6 = 8.5;
  v7 = 0.0;
  if (v5)
  {
    v6 = 0.0;
  }

  if (v4 == 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0.0;
  }

  if (v4 == 1)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v6;
  }

  v10 = v6 <= 0.0;
  if (v6 > 0.0)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = *MEMORY[0x1E69DDCE0];
  }

  if (v10)
  {
    v12 = *(MEMORY[0x1E69DDCE0] + 8);
  }

  else
  {
    v12 = v8;
  }

  if (v10)
  {
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    v13 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  else
  {
    v13 = v9;
  }

  result.right = v13;
  result.bottom = v7;
  result.left = v12;
  result.top = v11;
  return result;
}

- (NSDirectionalEdgeInsets)headerViewSeparatorInset
{
  v3 = *MEMORY[0x1E69DC5C0];
  v4 = *(MEMORY[0x1E69DC5C0] + 16);
  [(MFComposeDisplayMetrics *)self layoutMargins];
  v6 = v5;
  [(MFComposeDisplayMetrics *)self layoutMargins];
  v8 = v3;
  v9 = v6;
  v10 = v4;
  result.trailing = v7;
  result.bottom = v10;
  result.leading = v9;
  result.top = v8;
  return result;
}

- (BOOL)isCompactHeight
{
  v2 = [(MFComposeDisplayMetrics *)self traitCollection];
  v3 = [v2 verticalSizeClass] == 1;

  return v3;
}

- (NSDirectionalEdgeInsets)layoutMargins
{
  top = self->_layoutMargins.top;
  leading = self->_layoutMargins.leading;
  bottom = self->_layoutMargins.bottom;
  trailing = self->_layoutMargins.trailing;
  result.trailing = trailing;
  result.bottom = bottom;
  result.leading = leading;
  result.top = top;
  return result;
}

- (UIEdgeInsets)safeAreaInsets
{
  top = self->_safeAreaInsets.top;
  left = self->_safeAreaInsets.left;
  bottom = self->_safeAreaInsets.bottom;
  right = self->_safeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end