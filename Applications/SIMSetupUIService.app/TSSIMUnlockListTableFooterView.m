@interface TSSIMUnlockListTableFooterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (TSSIMUnlockListTableFooterView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation TSSIMUnlockListTableFooterView

- (TSSIMUnlockListTableFooterView)initWithFrame:(CGRect)a3
{
  v25.receiver = self;
  v25.super_class = TSSIMUnlockListTableFooterView;
  v5 = [(TSSIMUnlockListTableFooterView *)&v25 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v5)
  {
    v6 = [UIImageView alloc];
    v7 = +[UIDevice currentDevice];
    v8 = [v7 userInterfaceIdiom];
    if (v8)
    {
      v9 = 0;
      v10 = @"guide";
    }

    else
    {
      v3 = +[UIScreen mainScreen];
      [v3 _referenceBounds];
      v10 = @"guide";
      if (CGRectGetHeight(v26) <= 812.0)
      {
        v9 = 0;
      }

      else
      {
        v4 = +[BSPlatform sharedInstance];
        if ([v4 homeButtonType] == 2)
        {
          v10 = @"guide-d33like";
        }

        v9 = 1;
      }
    }

    v11 = [UIImage imageNamed:v10];
    v12 = [v6 initWithImage:v11];
    imageView = v5->_imageView;
    v5->_imageView = v12;

    if (v9)
    {
    }

    if (!v8)
    {
    }

    [(UIImageView *)v5->_imageView setContentMode:1];
    [(UIImageView *)v5->_imageView setClipsToBounds:1];
    [(TSSIMUnlockListTableFooterView *)v5 addSubview:v5->_imageView];
    v14 = objc_alloc_init(TSSIMUnlockCalloutLabel);
    slotOneLabel = v5->_slotOneLabel;
    v5->_slotOneLabel = v14;

    v16 = v5->_slotOneLabel;
    v17 = +[NSBundle mainBundle];
    v18 = [v17 localizedStringForKey:@"HARDWARE_SLOT_ONE_NAME" value:&stru_10001CA70 table:@"Localizable"];
    [(TSSIMUnlockCalloutLabel *)v16 setText:v18];

    [(UIImageView *)v5->_imageView addSubview:v5->_slotOneLabel];
    v19 = objc_alloc_init(TSSIMUnlockCalloutLabel);
    slotTwoLabel = v5->_slotTwoLabel;
    v5->_slotTwoLabel = v19;

    v21 = v5->_slotTwoLabel;
    v22 = +[NSBundle mainBundle];
    v23 = [v22 localizedStringForKey:@"HARDWARE_SLOT_TWO_NAME" value:&stru_10001CA70 table:@"Localizable"];
    [(TSSIMUnlockCalloutLabel *)v21 setText:v23];

    [(UIImageView *)v5->_imageView addSubview:v5->_slotTwoLabel];
  }

  return v5;
}

- (void)layoutSubviews
{
  v51.receiver = self;
  v51.super_class = TSSIMUnlockListTableFooterView;
  [(TSSIMUnlockListTableFooterView *)&v51 layoutSubviews];
  [(TSSIMUnlockListTableFooterView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = +[UIDevice currentDevice];
  v8 = 219.0;
  if ([v7 userInterfaceIdiom])
  {
    *&v9 = 79.0;
    v10 = 219.0;
  }

  else
  {
    v11 = +[UIScreen mainScreen];
    [v11 _referenceBounds];
    if (CGRectGetHeight(v52) <= 812.0)
    {
      v10 = 219.0;
      *&v9 = 79.0;
    }

    else
    {
      v12 = +[BSPlatform sharedInstance];
      v13 = [v12 homeButtonType];
      if (v13 == 2)
      {
        v10 = 240.0;
      }

      else
      {
        v10 = 219.0;
      }

      v9 = *(&unk_100013F90 + (v13 == 2));
    }
  }

  v14 = +[UIDevice currentDevice];
  if ([v14 userInterfaceIdiom])
  {
    *&v15 = 231.0;
  }

  else
  {
    v16 = +[UIScreen mainScreen];
    [v16 _referenceBounds];
    if (CGRectGetHeight(v53) <= 812.0)
    {
      v8 = 219.0;
      *&v15 = 231.0;
    }

    else
    {
      v17 = +[BSPlatform sharedInstance];
      v18 = [v17 homeButtonType];
      if (v18 == 2)
      {
        v8 = 240.0;
      }

      else
      {
        v8 = 219.0;
      }

      v15 = *(&unk_100013FA0 + (v18 == 2));
    }
  }

  v19 = [(UIImageView *)self->_imageView image];

  if (v19)
  {
    [(UIImageView *)self->_imageView sizeThatFits:v4, v6];
    v21 = v20;
    v54.origin.x = 0.0;
    v54.origin.y = 0.0;
    v54.size.width = v4;
    v54.size.height = v21;
    v22 = v8;
    Width = CGRectGetWidth(v54);
    v24 = [(UIImageView *)self->_imageView image];
    [v24 size];
    v49 = v4;
    v26 = v25;

    v27 = v26 / v21;
    v28 = Width - v10 * (v26 / v21);
    v29 = v10;
    v30 = v28 + -20.0;
    [(TSSIMUnlockCalloutLabel *)self->_slotOneLabel sizeThatFits:v28 + -20.0, v21];
    v31 = *&v9;
    v33 = v32;
    v47 = *&v15;
    v48 = v29 * v27 + -50.0;
    v46 = v32 * -0.5 + v31 * v27;
    v50 = v30 + 50.0;
    v34 = v22;
    v35 = Width - v22 * v27 + -20.0;
    [(TSSIMUnlockCalloutLabel *)self->_slotTwoLabel sizeThatFits:v35, v21];
    height = v36;
    v38 = 0.0;
    x = v34 * v27 + -50.0;
    v40 = v46;
    y = height * -0.5 + v47 * v27;
    v42 = v35 + 50.0;
    v44 = v48;
    v43 = v49;
    v45 = 0.0;
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    v42 = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v33 = height;
    v50 = v42;
    v40 = y;
    v44 = CGRectZero.origin.x;
    v21 = height;
    v43 = v42;
    v38 = y;
    v45 = CGRectZero.origin.x;
  }

  [(UIImageView *)self->_imageView setFrame:v45, v38, v43, v21];
  [(TSSIMUnlockCalloutLabel *)self->_slotOneLabel setFrame:v44, v40, v50, v33];
  [(TSSIMUnlockCalloutLabel *)self->_slotTwoLabel setFrame:x, y, v42, height];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  [(UIImageView *)self->_imageView sizeThatFits:a3.width, a3.height];
  v5 = width;
  result.height = v4;
  result.width = v5;
  return result;
}

@end