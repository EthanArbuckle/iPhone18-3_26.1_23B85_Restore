@interface MFPopupButtonItem
+ (id)itemWithTitle:(id)a3;
+ (id)itemWithTitle:(id)a3 popupTitle:(id)a4 subtitle:(id)a5 style:(int64_t)a6;
+ (id)itemWithTitle:(id)a3 style:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (id)copy;
@end

@implementation MFPopupButtonItem

+ (id)itemWithTitle:(id)a3
{
  v3 = [a1 itemWithTitle:a3 popupTitle:a3 subtitle:0 style:0];

  return v3;
}

+ (id)itemWithTitle:(id)a3 style:(int64_t)a4
{
  v4 = [a1 itemWithTitle:a3 popupTitle:a3 subtitle:0 style:a4];

  return v4;
}

+ (id)itemWithTitle:(id)a3 popupTitle:(id)a4 subtitle:(id)a5 style:(int64_t)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc_init(MFPopupButtonItem);
  v13 = [v9 copy];
  [(MFPopupButtonItem *)v12 setTitle:v13];

  v14 = [v10 copy];
  [(MFPopupButtonItem *)v12 setPopupTitle:v14];

  v15 = [v11 copy];
  [(MFPopupButtonItem *)v12 setSubtitle:v15];

  [(MFPopupButtonItem *)v12 setStyle:a6];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(MFPopupButtonItem *)self title];
    v8 = [v6 title];
    if (![v7 isEqualToString:v8])
    {
      v13 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v9 = [(MFPopupButtonItem *)self popupTitle];
    v10 = [v6 popupTitle];
    if (![v9 isEqualToString:v10])
    {
      v13 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v11 = [(MFPopupButtonItem *)self subtitle];
    v12 = [v6 subtitle];
    if (v11 == v12 || (-[MFPopupButtonItem subtitle](self, "subtitle"), v16 = objc_claimAutoreleasedReturnValue(), [v6 subtitle], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "isEqualToString:", v3)))
    {
      v14 = [(MFPopupButtonItem *)self style];
      v13 = v14 == [v6 style];
      if (v11 == v12)
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
  v3 = [(MFPopupButtonItem *)self title];
  v4 = [(MFPopupButtonItem *)self popupTitle];
  v5 = [(MFPopupButtonItem *)self subtitle];
  v6 = [MFPopupButtonItem itemWithTitle:v3 popupTitle:v4 subtitle:v5 style:[(MFPopupButtonItem *)self style]];

  return v6;
}

@end