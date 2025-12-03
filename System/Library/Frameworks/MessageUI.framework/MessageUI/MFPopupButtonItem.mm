@interface MFPopupButtonItem
+ (id)itemWithTitle:(id)title;
+ (id)itemWithTitle:(id)title popupTitle:(id)popupTitle subtitle:(id)subtitle style:(int64_t)style;
+ (id)itemWithTitle:(id)title style:(int64_t)style;
- (BOOL)isEqual:(id)equal;
- (id)copy;
@end

@implementation MFPopupButtonItem

+ (id)itemWithTitle:(id)title
{
  v3 = [self itemWithTitle:title popupTitle:title subtitle:0 style:0];

  return v3;
}

+ (id)itemWithTitle:(id)title style:(int64_t)style
{
  v4 = [self itemWithTitle:title popupTitle:title subtitle:0 style:style];

  return v4;
}

+ (id)itemWithTitle:(id)title popupTitle:(id)popupTitle subtitle:(id)subtitle style:(int64_t)style
{
  titleCopy = title;
  popupTitleCopy = popupTitle;
  subtitleCopy = subtitle;
  v12 = objc_alloc_init(MFPopupButtonItem);
  v13 = [titleCopy copy];
  [(MFPopupButtonItem *)v12 setTitle:v13];

  v14 = [popupTitleCopy copy];
  [(MFPopupButtonItem *)v12 setPopupTitle:v14];

  v15 = [subtitleCopy copy];
  [(MFPopupButtonItem *)v12 setSubtitle:v15];

  [(MFPopupButtonItem *)v12 setStyle:style];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    title = [(MFPopupButtonItem *)self title];
    title2 = [v6 title];
    if (![title isEqualToString:title2])
    {
      v13 = 0;
LABEL_14:

      goto LABEL_15;
    }

    popupTitle = [(MFPopupButtonItem *)self popupTitle];
    popupTitle2 = [v6 popupTitle];
    if (![popupTitle isEqualToString:popupTitle2])
    {
      v13 = 0;
LABEL_13:

      goto LABEL_14;
    }

    subtitle = [(MFPopupButtonItem *)self subtitle];
    subtitle2 = [v6 subtitle];
    if (subtitle == subtitle2 || (-[MFPopupButtonItem subtitle](self, "subtitle"), v16 = objc_claimAutoreleasedReturnValue(), [v6 subtitle], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "isEqualToString:", v3)))
    {
      style = [(MFPopupButtonItem *)self style];
      v13 = style == [v6 style];
      if (subtitle == subtitle2)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_12;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)copy
{
  title = [(MFPopupButtonItem *)self title];
  popupTitle = [(MFPopupButtonItem *)self popupTitle];
  subtitle = [(MFPopupButtonItem *)self subtitle];
  v6 = [MFPopupButtonItem itemWithTitle:title popupTitle:popupTitle subtitle:subtitle style:[(MFPopupButtonItem *)self style]];

  return v6;
}

@end