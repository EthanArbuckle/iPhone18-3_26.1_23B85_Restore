@interface SCATMenuStyleAttributes
+ (CGSize)itemSize;
+ (id)dockStyleAttributes;
+ (id)popoverStyleAttributes;
- (CGSize)itemSpacingLandscape;
- (CGSize)itemSpacingPortrait;
@end

@implementation SCATMenuStyleAttributes

+ (CGSize)itemSize
{
  +[SCATMenuItemCell maxCellSize];
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)popoverStyleAttributes
{
  v2 = objc_alloc_init(SCATMenuStyleAttributes);
  [(SCATMenuStyleAttributes *)v2 setItemSpacingLandscape:5.0, 12.0];
  [(SCATMenuStyleAttributes *)v2 setItemSpacingPortrait:5.0, 12.0];
  if (AXDeviceIsPad())
  {
    v3 = 6;
  }

  else
  {
    v3 = 4;
  }

  [(SCATMenuStyleAttributes *)v2 setMaxItemsPerRow:v3];
  if (AXDeviceIsPad())
  {
    v4 = 4;
  }

  else
  {
    v4 = 3;
  }

  [(SCATMenuStyleAttributes *)v2 setMaxRows:v4];

  return v2;
}

+ (id)dockStyleAttributes
{
  v3 = objc_alloc_init(SCATMenuStyleAttributes);
  if (AXDeviceIsPad())
  {
    v4 = 40.0;
  }

  else
  {
    v4 = 5.0;
  }

  if (AXDeviceIsPad())
  {
    v5 = 30.0;
  }

  else
  {
    v5 = 5.0;
  }

  [(SCATMenuStyleAttributes *)v3 setMaxItemsPerRow:100];
  [(SCATMenuStyleAttributes *)v3 setMaxRows:1];
  v6 = +[UIScreen mainScreen];
  [v6 scale];
  if (v7 == 1.0)
  {
    v8 = 15.0;
  }

  else
  {
    v8 = 16.0;
  }

  v9 = +[UIScreen mainScreen];
  [v9 bounds];
  v11 = v10;
  v13 = v12;

  v14 = fmax(v11, v13) + -30.0;
  v15 = fmin(v11, v13) + v8 * -2.0;
  [self itemSize];
  v17 = ceil((v14 - v4) / (v4 + v16));
  v18 = ceil((v15 - v5) / (v5 + v16));
  v19 = (v14 - v16 * v17) / (v17 + 1.0);
  v20 = (v15 - v16 * v18) / (v18 + 1.0);
  if (v19 >= v4)
  {
    v21 = v4;
  }

  else
  {
    v21 = v19;
  }

  if (v21 < 5.0)
  {
    v21 = 5.0;
  }

  if (v20 >= v5)
  {
    v22 = v5;
  }

  else
  {
    v22 = v20;
  }

  if (v22 >= 5.0)
  {
    v23 = v22;
  }

  else
  {
    v23 = 5.0;
  }

  [(SCATMenuStyleAttributes *)v3 setItemSpacingLandscape:v21, 0.0];
  [(SCATMenuStyleAttributes *)v3 setItemSpacingPortrait:v23, 0.0];

  return v3;
}

- (CGSize)itemSpacingLandscape
{
  width = self->_itemSpacingLandscape.width;
  height = self->_itemSpacingLandscape.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)itemSpacingPortrait
{
  width = self->_itemSpacingPortrait.width;
  height = self->_itemSpacingPortrait.height;
  result.height = height;
  result.width = width;
  return result;
}

@end