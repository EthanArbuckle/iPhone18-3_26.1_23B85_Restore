@interface MONotificationScheduleOptionsCell
- (BOOL)_shouldDisableScheduleSetting;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_configureSelectionViewsIfNecessary;
- (void)_layoutSelectionViews;
- (void)layoutSubviews;
- (void)notificationScheduleSelectionViewDidGetSelected:(id)a3;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation MONotificationScheduleOptionsCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v14.receiver = self;
  v14.super_class = MONotificationScheduleOptionsCell;
  [(MONotificationScheduleOptionsCell *)&v14 refreshCellContentsWithSpecifier:a3];
  [(MONotificationScheduleOptionsCell *)self setDisableScheduleSetting:[(MONotificationScheduleOptionsCell *)self _shouldDisableScheduleSetting]];
  if ([(MONotificationScheduleOptionsCell *)self disableScheduleSetting])
  {
    [(MONotificationScheduleOptionsCell *)self setUserInteractionEnabled:0];
    [(MONotificationScheduleOptionsCell *)self setSelectionStyle:0];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = [(MONotificationScheduleOptionsCell *)self selectionViews];
    v5 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v10 + 1) + 8 * i);
          [v9 setSelected:0];
          [v9 setAlpha:0.5];
        }

        v6 = [v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
      }

      while (v6);
    }
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MONotificationScheduleOptionsCell;
  [(MONotificationScheduleOptionsCell *)&v3 layoutSubviews];
  [(MONotificationScheduleOptionsCell *)self _configureSelectionViewsIfNecessary];
  [(MONotificationScheduleOptionsCell *)self _layoutSelectionViews];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v5 = [UIDevice currentDevice:a3.width];
  v6 = [v5 userInterfaceIdiom];

  [(MONotificationScheduleOptionsCell *)self _configureSelectionViewsIfNecessary];
  v7 = [(MONotificationScheduleOptionsCell *)self selectionViews];
  if ([v7 count])
  {
    if (v6)
    {
      v8 = width * 0.5;
    }

    else
    {
      v9 = [(MONotificationScheduleOptionsCell *)self selectionViews];
      v8 = width / [v9 count];
    }
  }

  else
  {
    v8 = 0.0;
  }

  v10 = 104.0;
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)notificationScheduleSelectionViewDidGetSelected:(id)a3
{
  v4 = a3;
  v5 = [(MONotificationScheduleOptionsCell *)self selectionViews];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __85__MONotificationScheduleOptionsCell_notificationScheduleSelectionViewDidGetSelected___block_invoke;
  v9[3] = &unk_C458;
  v10 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = [(MONotificationScheduleOptionsCell *)self specifier];
  v8 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v6 selectionType]);
  [v7 performSetterWithValue:v8];
}

void **__85__MONotificationScheduleOptionsCell_notificationScheduleSelectionViewDidGetSelected___block_invoke(void **result, void *a2)
{
  if (result[4] != a2)
  {
    return [a2 setSelected:0];
  }

  return result;
}

- (void)_configureSelectionViewsIfNecessary
{
  v3 = [(MONotificationScheduleOptionsCell *)self selectionViews];

  if (!v3)
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = +[UIDevice currentDevice];
    v6 = [v5 userInterfaceIdiom] == 0;

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __72__MONotificationScheduleOptionsCell__configureSelectionViewsIfNecessary__block_invoke;
    v10[3] = &unk_C480;
    v12 = v6;
    v10[4] = self;
    v11 = v4;
    v7 = v4;
    [&off_CB70 enumerateObjectsUsingBlock:v10];
    v8 = [v7 copy];
    selectionViews = self->_selectionViews;
    self->_selectionViews = v8;
  }
}

void __72__MONotificationScheduleOptionsCell__configureSelectionViewsIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if ((*(a1 + 48) & 1) != 0 || (v4 = [v3 intValue] == 1, v3 = v9, !v4))
  {
    v5 = +[MONotificationScheduleOptionsSelectionView notificationScheduleOptionsSelectionViewOfType:](MONotificationScheduleOptionsSelectionView, "notificationScheduleOptionsSelectionViewOfType:", [v3 unsignedIntegerValue]);
    [v5 setDelegate:*(a1 + 32)];
    [*(a1 + 32) addSubview:v5];
    [*(a1 + 40) addObject:v5];
    v6 = [*(a1 + 32) specifier];
    v7 = [v6 performGetter];

    if (([*(a1 + 32) _shouldDisableScheduleSetting] & 1) == 0)
    {
      v8 = [v7 intValue];
      if (v8 == [v9 intValue])
      {
        [v5 setSelected:1];
      }
    }

    v3 = v9;
  }
}

- (void)_layoutSelectionViews
{
  v3 = [(MONotificationScheduleOptionsCell *)self selectionViews];

  if (v3)
  {
    [(MONotificationScheduleOptionsCell *)self bounds];
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    height = v17.size.height;
    v8 = CGRectGetWidth(v17);
    v9 = [(MONotificationScheduleOptionsCell *)self selectionViews];
    v10 = v8 / [v9 count];

    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x4010000000;
    v14[3] = "";
    v15 = 0u;
    v16 = 0u;
    v18.origin.x = x;
    v18.origin.y = y;
    v18.size.width = width;
    v18.size.height = height;
    v11 = CGRectGetHeight(v18);
    v15 = 0uLL;
    *&v16 = v10;
    *(&v16 + 1) = v11;
    v12 = [(MONotificationScheduleOptionsCell *)self selectionViews];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __58__MONotificationScheduleOptionsCell__layoutSelectionViews__block_invoke;
    v13[3] = &unk_C4A8;
    v13[4] = v14;
    *&v13[5] = v10;
    [v12 enumerateObjectsUsingBlock:v13];

    _Block_object_dispose(v14, 8);
  }
}

- (BOOL)_shouldDisableScheduleSetting
{
  v2 = [(MONotificationScheduleOptionsCell *)self specifier];
  v3 = [v2 userInfo];

  v4 = [v3 objectForKey:@"disableScheduleSetting"];
  v5 = [v4 BOOLValue];

  return v5;
}

@end