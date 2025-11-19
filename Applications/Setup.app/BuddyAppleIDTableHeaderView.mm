@interface BuddyAppleIDTableHeaderView
+ (id)defaultDetailTextAttributes;
+ (id)defaultTitleTextAttributes;
+ (void)initialize;
- (BuddyAppleIDTableHeaderView)initWithFrame:(CGRect)a3;
- (CGSize)iconSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)_getHeight:(double *)a3 forWidth:(double)a4 shouldLayoutViews:(BOOL)a5;
- (void)setLinkButtonTitle:(id)a3;
- (void)setTopIconHasRoundedCorners:(BOOL)a3;
- (void)setTopIconName:(id)a3;
@end

@implementation BuddyAppleIDTableHeaderView

+ (void)initialize
{
  if (a1 == objc_opt_class())
  {
    if (BFFIsiPad())
    {
      qword_1003A72D8 = 15.0;
      qword_1003A72E0 = 0;
    }

    else
    {
      qword_1003A72D8 = -1.0;
      qword_1003A72E0 = -1.0;
    }
  }
}

+ (id)defaultTitleTextAttributes
{
  v5 = &unk_1003A72F0;
  location = 0;
  objc_storeStrong(&location, &stru_10032E4D8);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003A72E8;

  return v2;
}

+ (id)defaultDetailTextAttributes
{
  v5 = &unk_1003A7300;
  location = 0;
  objc_storeStrong(&location, &stru_10032E4F8);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = qword_1003A72F8;

  return v2;
}

- (BuddyAppleIDTableHeaderView)initWithFrame:(CGRect)a3
{
  v25 = a3;
  v23 = a2;
  location = 0;
  v22.receiver = self;
  v22.super_class = BuddyAppleIDTableHeaderView;
  location = [(BuddyAppleIDTableHeaderView *)&v22 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&location, location);
  if (location)
  {
    v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v4 = *(location + 4);
    *(location + 4) = v3;

    [*(location + 4) setNumberOfLines:0];
    v5 = +[BFFStyle sharedStyle];
    [v5 applyThemeToTitleLabel:*(location + 4)];

    [location addSubview:*(location + 4)];
    v6 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    v7 = *(location + 5);
    *(location + 5) = v6;

    [*(location + 5) setNumberOfLines:0];
    v8 = +[UIColor _labelColor];
    [*(location + 5) setTextColor:v8];

    v9 = +[UIColor _systemBackgroundColor];
    [*(location + 5) setBackgroundColor:v9];

    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    [*(location + 5) setFont:v10];

    [*(location + 5) setTextAlignment:1];
    [location addSubview:*(location + 5)];
    *(location + 6) = -1.0;
    v11 = location + 80;
    *(location + 10) = *&CGSizeZero.width;
    *(v11 + 1) = *&CGSizeZero.height;
    if (sub_100196140())
    {
      v21 = sub_1001B5AD0();
      [location setLayoutMargins:{v21, v12, v13, v14}];
    }

    else
    {
      v15 = sub_1001B5AD0();
      [location setLayoutMargins:{v15, v16, v17, v18, *&v15, *&v16, *&v17, *&v18, *&v15, *&v16, *&v17, *&v18}];
    }
  }

  v19 = location;
  objc_storeStrong(&location, 0);
  return v19;
}

- (void)setLinkButtonTitle:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (location[0] && !v10->_linkButton)
  {
    v3 = [UIButton buttonWithType:1];
    linkButton = v10->_linkButton;
    v10->_linkButton = v3;

    v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    v6 = [(UIButton *)v10->_linkButton titleLabel];
    [(UILabel *)v6 setFont:v5];

    v7 = [(UIButton *)v10->_linkButton titleLabel];
    [(UILabel *)v7 setNumberOfLines:0];

    v8 = [(UIButton *)v10->_linkButton titleLabel];
    [(UILabel *)v8 setTextAlignment:1];

    [(BuddyAppleIDTableHeaderView *)v10 addSubview:v10->_linkButton];
  }

  [(UIButton *)v10->_linkButton setTitle:location[0] forState:0];
  [(BuddyAppleIDTableHeaderView *)v10 setNeedsLayout];
  objc_storeStrong(location, 0);
}

- (void)setTopIconName:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v14->_topIconName == location[0])
  {
    v12 = 1;
  }

  else
  {
    v3 = [location[0] copy];
    topIconName = v14->_topIconName;
    v14->_topIconName = v3;

    if (![(NSString *)v14->_topIconName length]|| v14->_iconView)
    {
      if ([(NSString *)v14->_topIconName length]|| !v14->_iconView)
      {
        if (v14->_iconView)
        {
          v9 = 0;
          if ([(NSString *)v14->_topIconName length])
          {
            v10 = [UIImage imageNamed:v14->_topIconName];
            v9 = 1;
          }

          [(BuddyRoundedRectImageView *)v14->_iconView setImage:?];
          if (v9)
          {
          }
        }
      }

      else
      {
        [(BuddyRoundedRectImageView *)v14->_iconView removeFromSuperview];
        objc_storeStrong(&v14->_iconView, 0);
        [(BuddyAppleIDTableHeaderView *)v14 setNeedsLayout];
      }
    }

    else
    {
      v11 = [UIImage imageNamed:v14->_topIconName];
      if (v14->_topIconTintColor)
      {
        v5 = [v11 _flatImageWithColor:v14->_topIconTintColor];
        v6 = v11;
        v11 = v5;
      }

      v7 = [[BuddyRoundedRectImageView alloc] initWithImage:v11];
      iconView = v14->_iconView;
      v14->_iconView = v7;

      [(BuddyRoundedRectImageView *)v14->_iconView setContentMode:1];
      [(BuddyAppleIDTableHeaderView *)v14 addSubview:v14->_iconView];
      [(BuddyAppleIDTableHeaderView *)v14 setNeedsLayout];
      objc_storeStrong(&v11, 0);
    }

    [(BuddyRoundedRectImageView *)v14->_iconView setUsesMask:v14->_topIconHasRoundedCorners];
    v12 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)setTopIconHasRoundedCorners:(BOOL)a3
{
  if (self->_topIconHasRoundedCorners != a3)
  {
    self->_topIconHasRoundedCorners = a3;
    if (self->_iconView)
    {
      [(BuddyRoundedRectImageView *)self->_iconView setUsesMask:self->_topIconHasRoundedCorners];
    }
  }
}

- (void)_getHeight:(double *)a3 forWidth:(double)a4 shouldLayoutViews:(BOOL)a5
{
  v124 = self;
  v123 = a2;
  v122 = a3;
  v121 = a4;
  v120 = a5;
  [(BuddyAppleIDTableHeaderView *)self layoutMargins];
  v115 = v6;
  v116 = v7;
  v117 = v8;
  v118 = v9;
  v10 = a4 - v7;
  [(BuddyAppleIDTableHeaderView *)v124 layoutMargins];
  v111 = v11;
  v112 = v12;
  v113 = v13;
  v114 = v14;
  v119 = v10 - v14;
  v110 = 0.0;
  location = [UIFontMetrics metricsForTextStyle:UIFontTextStyleBody];
  if (v124->_linkButton)
  {
    v15 = sub_1001B6CCC();
    *(&v107 + 1) = v16;
    *&v107 = v15;
    *(&v108 + 1) = v17;
    *&v108 = v18;
    size = 0;
    v105 = 0;
    origin = CGRectZero.origin;
    size = CGRectZero.size;
    v105 = origin;
    v20 = [(UIButton *)v124->_linkButton titleLabel];
    v21 = [(UIButton *)v124->_linkButton titleLabel];
    [(UILabel *)v20 textRectForBounds:[(UILabel *)v21 numberOfLines] limitedToNumberOfLines:v107, v108];
    v102 = v22;
    v101 = v23;
    v104 = v24;
    v103 = v25;
    size.width = v25;
    size.height = v24;

    [(BuddyAppleIDTableHeaderView *)v124 layoutMargins];
    v97 = v26;
    v98 = v27;
    v99 = v28;
    v100 = v29;
    v30 = v27 + (v119 - size.width) / 2.0;
    v31 = BFFIsiPad();
    v32 = 1.0;
    if ((v31 & 1) == 0)
    {
      v32 = 0.0;
    }

    v33 = v30 - v32;
    v105.x = floorf(v33);
    if (v124->_linkButtonTopPadding < 0.0)
    {
      linkButtonTopPadding = 10.0;
    }

    else
    {
      linkButtonTopPadding = v124->_linkButtonTopPadding;
    }

    v96 = linkButtonTopPadding;
    v105.y = linkButtonTopPadding;
    v125.size.height = size.height;
    v125.size.width = size.width;
    v125.origin.y = linkButtonTopPadding;
    v125.origin.x = v105.x;
    v110 = CGRectGetMaxY(v125) - v96;
    if (v120)
    {
      v95 = size;
      v94 = v105;
      linkButton = v124->_linkButton;
      v93 = size;
      v92 = v105;
      [(UIButton *)linkButton setFrame:v105, size];
    }
  }

  v36 = BFFIsiPad();
  v37 = 56.0;
  if ((v36 & 1) == 0)
  {
    v37 = 33.5;
  }

  [location scaledValueForValue:v37];
  BFFRoundToPixel();
  v91 = v38;
  memset(&__b, 0, sizeof(__b));
  __b.origin.x = CGRectZero.origin.x;
  __b.origin.y = CGRectZero.origin.y;
  __b.size = CGRectZero.size;
  if (v124->_iconView)
  {
    if (sub_1001B6D24(v124->_iconSize.width, v124->_iconSize.height, CGSizeZero.width, CGSizeZero.height))
    {
      [(BuddyRoundedRectImageView *)v124->_iconView sizeToFit];
      [(BuddyRoundedRectImageView *)v124->_iconView frame];
    }

    else
    {
      v39 = sub_1001B6CCC();
    }

    __b.origin.x = v39;
    __b.origin.y = v40;
    __b.size.width = v41;
    __b.size.height = v42;
    [(BuddyAppleIDTableHeaderView *)v124 layoutMargins];
    v44 = v43 + (v119 - __b.size.width) / 2.0;
    __b.origin.x = floorf(v44);
    __b.origin.y = v91;
    if (v120)
    {
      [(BuddyRoundedRectImageView *)v124->_iconView setFrame:__b.origin.x, __b.origin.y, __b.size.width, __b.size.height];
    }
  }

  v87 = 0;
  if (v124->_iconView)
  {
    MaxY = CGRectGetMaxY(__b);
    v46 = BFFIsiPhone();
    v47 = 0;
    if (v46)
    {
      v88 = +[UIScreen mainScreen];
      v87 = 1;
      [(UIScreen *)v88 bounds];
      v47 = v48 <= 480.0;
    }

    v49 = 10.0;
    if (!v47)
    {
      v49 = 15.0;
    }

    v50 = MaxY + v49;
  }

  else
  {
    v50 = v91;
  }

  if (v87)
  {
  }

  v89 = v50;
  v51 = [(UILabel *)v124->_textLabel text];
  v52 = [(NSString *)v51 length];

  if (v52)
  {
    textLabel = v124->_textLabel;
    sub_1001B50D8();
    [(UILabel *)textLabel sizeThatFits:v54, v55];
    v86.size.width = v56;
    v86.size.height = v57;
    [(BuddyAppleIDTableHeaderView *)v124 layoutMargins];
    v59 = v58 + (v119 - v86.size.width) / 2.0;
    v86.origin.x = floorf(v59);
    [(UILabel *)v124->_textLabel _firstBaselineOffsetFromTop];
    v86.origin.y = v50 - v60;
    if (v120)
    {
      [(UILabel *)v124->_textLabel setFrame:v86.origin.x, v86.origin.y, v86.size.width, v86.size.height];
    }

    CGRectGetMaxY(v86);
    [location scaledValueForValue:32.0];
    BFFRoundToPixel();
    v89 = v61;
  }

  detailTextLabel = v124->_detailTextLabel;
  sub_1001B50D8();
  [(UILabel *)detailTextLabel sizeThatFits:v63, v64];
  v84 = v65;
  v85 = v66;
  [(BuddyAppleIDTableHeaderView *)v124 layoutMargins];
  v68 = v67 + (v119 - v84) / 2.0;
  v82 = floorf(v68);
  [(UILabel *)v124->_detailTextLabel _firstBaselineOffsetFromTop];
  v83 = v89 - v69;
  if (v120)
  {
    [(UILabel *)v124->_detailTextLabel setFrame:v82, v83, v84, v85];
  }

  if (v122)
  {
    [(BuddyAppleIDTableHeaderView *)v124 layoutMargins];
    v71 = v85;
    if (v70 < 0.0)
    {
      v77 = v84;
      v78 = v83;
      v79 = v82;
      v80 = CGRectGetMaxY(*(&v71 - 3));
      [location scaledValueForValue:16.0];
      *v122 = v80 + v81;
    }

    else
    {
      v72 = v84;
      v73 = v83;
      v74 = v82;
      v75 = CGRectGetMaxY(*(&v71 - 3));
      [(BuddyAppleIDTableHeaderView *)v124 layoutMargins];
      *v122 = v75 + v76;
    }
  }

  objc_storeStrong(&location, 0);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  if (a3.width == 0.0)
  {
    v3 = +[UIScreen mainScreen];
    [(UIScreen *)v3 bounds];
    v11 = v4;
    v10 = v5;
    v13 = v6;
    v12 = v7;
    width = v7;
  }

  [(BuddyAppleIDTableHeaderView *)self _getHeight:&self->_calculatedHeight forWidth:0 shouldLayoutViews:width, v10, v11, *&v12, v13, a2];
  calculatedHeight = self->_calculatedHeight;
  v8 = width;
  result.height = calculatedHeight;
  result.width = v8;
  return result;
}

- (CGSize)iconSize
{
  height = self->_iconSize.height;
  width = self->_iconSize.width;
  result.height = height;
  result.width = width;
  return result;
}

@end