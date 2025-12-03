@interface NCNotificationListDisplayStyleCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (int64_t)_notificationListDisplayStyleSettingForSelectionType:(unint64_t)type;
- (void)_configureSelectionViewsIfNecessary;
- (void)_layoutSelectionViews;
- (void)layoutSubviews;
- (void)notificationListDisplayStyleSelectionViewDidGetSelected:(id)selected;
@end

@implementation NCNotificationListDisplayStyleCell

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = NCNotificationListDisplayStyleCell;
  [(NCNotificationListDisplayStyleCell *)&v3 layoutSubviews];
  [(NCNotificationListDisplayStyleCell *)self _configureSelectionViewsIfNecessary];
  [(NCNotificationListDisplayStyleCell *)self _layoutSelectionViews];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  [(NCNotificationListDisplayStyleCell *)self _configureSelectionViewsIfNecessary];
  selectionViews = [(NCNotificationListDisplayStyleCell *)self selectionViews];
  v7 = [selectionViews count];

  selectionViews2 = [(NCNotificationListDisplayStyleCell *)self selectionViews];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_12364;
  v12[3] = &unk_4D688;
  v12[4] = &v13;
  *&v12[5] = width / v7;
  *&v12[6] = width;
  *&v12[7] = height;
  [selectionViews2 enumerateObjectsUsingBlock:v12];

  v9 = v14[3];
  _Block_object_dispose(&v13, 8);
  v10 = width;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)notificationListDisplayStyleSelectionViewDidGetSelected:(id)selected
{
  selectedCopy = selected;
  selectionViews = [(NCNotificationListDisplayStyleCell *)self selectionViews];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_124C4;
  v9[3] = &unk_4D6B0;
  v10 = selectedCopy;
  v6 = selectedCopy;
  [selectionViews enumerateObjectsUsingBlock:v9];

  specifier = [(NCNotificationListDisplayStyleCell *)self specifier];
  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[NCNotificationListDisplayStyleCell _notificationListDisplayStyleSettingForSelectionType:](self, "_notificationListDisplayStyleSettingForSelectionType:", [v6 selectionType]));
  [specifier performSetterWithValue:v8];
}

- (void)_configureSelectionViewsIfNecessary
{
  selectionViews = [(NCNotificationListDisplayStyleCell *)self selectionViews];

  if (!selectionViews)
  {
    v4 = objc_alloc_init(NSMutableArray);
    if ([(NCNotificationListDisplayStyleCell *)self effectiveUserInterfaceLayoutDirection]== &dword_0 + 1)
    {
      bs_reverse = [&off_51660 bs_reverse];
    }

    else
    {
      bs_reverse = &off_51660;
    }

    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_125EC;
    v12 = &unk_4D6D8;
    selfCopy = self;
    v14 = v4;
    v6 = v4;
    [bs_reverse enumerateObjectsUsingBlock:&v9];
    v7 = [v6 copy];
    selectionViews = self->_selectionViews;
    self->_selectionViews = v7;
  }
}

- (void)_layoutSelectionViews
{
  selectionViews = [(NCNotificationListDisplayStyleCell *)self selectionViews];

  if (selectionViews)
  {
    [(NCNotificationListDisplayStyleCell *)self bounds];
    x = v17.origin.x;
    y = v17.origin.y;
    width = v17.size.width;
    height = v17.size.height;
    v8 = CGRectGetWidth(v17);
    selectionViews2 = [(NCNotificationListDisplayStyleCell *)self selectionViews];
    v10 = v8 / [selectionViews2 count];

    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x4010000000;
    v14[3] = &unk_466EA;
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
    selectionViews3 = [(NCNotificationListDisplayStyleCell *)self selectionViews];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_12828;
    v13[3] = &unk_4D700;
    v13[4] = v14;
    *&v13[5] = v10;
    [selectionViews3 enumerateObjectsUsingBlock:v13];

    _Block_object_dispose(v14, 8);
  }
}

- (int64_t)_notificationListDisplayStyleSettingForSelectionType:(unint64_t)type
{
  if (type <= 3)
  {
    return 3 - type;
  }

  else
  {
    return 0;
  }
}

@end