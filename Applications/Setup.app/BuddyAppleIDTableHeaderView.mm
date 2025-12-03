@interface BuddyAppleIDTableHeaderView
+ (id)defaultDetailTextAttributes;
+ (id)defaultTitleTextAttributes;
+ (void)initialize;
- (BuddyAppleIDTableHeaderView)initWithFrame:(CGRect)frame;
- (CGSize)iconSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_getHeight:(double *)height forWidth:(double)width shouldLayoutViews:(BOOL)views;
- (void)setLinkButtonTitle:(id)title;
- (void)setTopIconHasRoundedCorners:(BOOL)corners;
- (void)setTopIconName:(id)name;
@end

@implementation BuddyAppleIDTableHeaderView

+ (void)initialize
{
  if (self == objc_opt_class())
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

- (BuddyAppleIDTableHeaderView)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v23 = a2;
  location = 0;
  v22.receiver = self;
  v22.super_class = BuddyAppleIDTableHeaderView;
  location = [(BuddyAppleIDTableHeaderView *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)setLinkButtonTitle:(id)title
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, title);
  if (location[0] && !selfCopy->_linkButton)
  {
    v3 = [UIButton buttonWithType:1];
    linkButton = selfCopy->_linkButton;
    selfCopy->_linkButton = v3;

    v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
    titleLabel = [(UIButton *)selfCopy->_linkButton titleLabel];
    [(UILabel *)titleLabel setFont:v5];

    titleLabel2 = [(UIButton *)selfCopy->_linkButton titleLabel];
    [(UILabel *)titleLabel2 setNumberOfLines:0];

    titleLabel3 = [(UIButton *)selfCopy->_linkButton titleLabel];
    [(UILabel *)titleLabel3 setTextAlignment:1];

    [(BuddyAppleIDTableHeaderView *)selfCopy addSubview:selfCopy->_linkButton];
  }

  [(UIButton *)selfCopy->_linkButton setTitle:location[0] forState:0];
  [(BuddyAppleIDTableHeaderView *)selfCopy setNeedsLayout];
  objc_storeStrong(location, 0);
}

- (void)setTopIconName:(id)name
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, name);
  if (selfCopy->_topIconName == location[0])
  {
    v12 = 1;
  }

  else
  {
    v3 = [location[0] copy];
    topIconName = selfCopy->_topIconName;
    selfCopy->_topIconName = v3;

    if (![(NSString *)selfCopy->_topIconName length]|| selfCopy->_iconView)
    {
      if ([(NSString *)selfCopy->_topIconName length]|| !selfCopy->_iconView)
      {
        if (selfCopy->_iconView)
        {
          v9 = 0;
          if ([(NSString *)selfCopy->_topIconName length])
          {
            v10 = [UIImage imageNamed:selfCopy->_topIconName];
            v9 = 1;
          }

          [(BuddyRoundedRectImageView *)selfCopy->_iconView setImage:?];
          if (v9)
          {
          }
        }
      }

      else
      {
        [(BuddyRoundedRectImageView *)selfCopy->_iconView removeFromSuperview];
        objc_storeStrong(&selfCopy->_iconView, 0);
        [(BuddyAppleIDTableHeaderView *)selfCopy setNeedsLayout];
      }
    }

    else
    {
      v11 = [UIImage imageNamed:selfCopy->_topIconName];
      if (selfCopy->_topIconTintColor)
      {
        v5 = [v11 _flatImageWithColor:selfCopy->_topIconTintColor];
        v6 = v11;
        v11 = v5;
      }

      v7 = [[BuddyRoundedRectImageView alloc] initWithImage:v11];
      iconView = selfCopy->_iconView;
      selfCopy->_iconView = v7;

      [(BuddyRoundedRectImageView *)selfCopy->_iconView setContentMode:1];
      [(BuddyAppleIDTableHeaderView *)selfCopy addSubview:selfCopy->_iconView];
      [(BuddyAppleIDTableHeaderView *)selfCopy setNeedsLayout];
      objc_storeStrong(&v11, 0);
    }

    [(BuddyRoundedRectImageView *)selfCopy->_iconView setUsesMask:selfCopy->_topIconHasRoundedCorners];
    v12 = 0;
  }

  objc_storeStrong(location, 0);
}

- (void)setTopIconHasRoundedCorners:(BOOL)corners
{
  if (self->_topIconHasRoundedCorners != corners)
  {
    self->_topIconHasRoundedCorners = corners;
    if (self->_iconView)
    {
      [(BuddyRoundedRectImageView *)self->_iconView setUsesMask:self->_topIconHasRoundedCorners];
    }
  }
}

- (void)_getHeight:(double *)height forWidth:(double)width shouldLayoutViews:(BOOL)views
{
  selfCopy = self;
  v123 = a2;
  heightCopy = height;
  widthCopy = width;
  viewsCopy = views;
  [(BuddyAppleIDTableHeaderView *)self layoutMargins];
  v115 = v6;
  v116 = v7;
  v117 = v8;
  v118 = v9;
  v10 = width - v7;
  [(BuddyAppleIDTableHeaderView *)selfCopy layoutMargins];
  v111 = v11;
  v112 = v12;
  v113 = v13;
  v114 = v14;
  v119 = v10 - v14;
  v110 = 0.0;
  location = [UIFontMetrics metricsForTextStyle:UIFontTextStyleBody];
  if (selfCopy->_linkButton)
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
    titleLabel = [(UIButton *)selfCopy->_linkButton titleLabel];
    titleLabel2 = [(UIButton *)selfCopy->_linkButton titleLabel];
    [(UILabel *)titleLabel textRectForBounds:[(UILabel *)titleLabel2 numberOfLines] limitedToNumberOfLines:v107, v108];
    v102 = v22;
    v101 = v23;
    v104 = v24;
    v103 = v25;
    size.width = v25;
    size.height = v24;

    [(BuddyAppleIDTableHeaderView *)selfCopy layoutMargins];
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
    if (selfCopy->_linkButtonTopPadding < 0.0)
    {
      linkButtonTopPadding = 10.0;
    }

    else
    {
      linkButtonTopPadding = selfCopy->_linkButtonTopPadding;
    }

    v96 = linkButtonTopPadding;
    v105.y = linkButtonTopPadding;
    v125.size.height = size.height;
    v125.size.width = size.width;
    v125.origin.y = linkButtonTopPadding;
    v125.origin.x = v105.x;
    v110 = CGRectGetMaxY(v125) - v96;
    if (viewsCopy)
    {
      v95 = size;
      v94 = v105;
      linkButton = selfCopy->_linkButton;
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
  if (selfCopy->_iconView)
  {
    if (sub_1001B6D24(selfCopy->_iconSize.width, selfCopy->_iconSize.height, CGSizeZero.width, CGSizeZero.height))
    {
      [(BuddyRoundedRectImageView *)selfCopy->_iconView sizeToFit];
      [(BuddyRoundedRectImageView *)selfCopy->_iconView frame];
    }

    else
    {
      v39 = sub_1001B6CCC();
    }

    __b.origin.x = v39;
    __b.origin.y = v40;
    __b.size.width = v41;
    __b.size.height = v42;
    [(BuddyAppleIDTableHeaderView *)selfCopy layoutMargins];
    v44 = v43 + (v119 - __b.size.width) / 2.0;
    __b.origin.x = floorf(v44);
    __b.origin.y = v91;
    if (viewsCopy)
    {
      [(BuddyRoundedRectImageView *)selfCopy->_iconView setFrame:__b.origin.x, __b.origin.y, __b.size.width, __b.size.height];
    }
  }

  v87 = 0;
  if (selfCopy->_iconView)
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
  text = [(UILabel *)selfCopy->_textLabel text];
  v52 = [(NSString *)text length];

  if (v52)
  {
    textLabel = selfCopy->_textLabel;
    sub_1001B50D8();
    [(UILabel *)textLabel sizeThatFits:v54, v55];
    v86.size.width = v56;
    v86.size.height = v57;
    [(BuddyAppleIDTableHeaderView *)selfCopy layoutMargins];
    v59 = v58 + (v119 - v86.size.width) / 2.0;
    v86.origin.x = floorf(v59);
    [(UILabel *)selfCopy->_textLabel _firstBaselineOffsetFromTop];
    v86.origin.y = v50 - v60;
    if (viewsCopy)
    {
      [(UILabel *)selfCopy->_textLabel setFrame:v86.origin.x, v86.origin.y, v86.size.width, v86.size.height];
    }

    CGRectGetMaxY(v86);
    [location scaledValueForValue:32.0];
    BFFRoundToPixel();
    v89 = v61;
  }

  detailTextLabel = selfCopy->_detailTextLabel;
  sub_1001B50D8();
  [(UILabel *)detailTextLabel sizeThatFits:v63, v64];
  v84 = v65;
  v85 = v66;
  [(BuddyAppleIDTableHeaderView *)selfCopy layoutMargins];
  v68 = v67 + (v119 - v84) / 2.0;
  v82 = floorf(v68);
  [(UILabel *)selfCopy->_detailTextLabel _firstBaselineOffsetFromTop];
  v83 = v89 - v69;
  if (viewsCopy)
  {
    [(UILabel *)selfCopy->_detailTextLabel setFrame:v82, v83, v84, v85];
  }

  if (heightCopy)
  {
    [(BuddyAppleIDTableHeaderView *)selfCopy layoutMargins];
    v71 = v85;
    if (v70 < 0.0)
    {
      v77 = v84;
      v78 = v83;
      v79 = v82;
      v80 = CGRectGetMaxY(*(&v71 - 3));
      [location scaledValueForValue:16.0];
      *heightCopy = v80 + v81;
    }

    else
    {
      v72 = v84;
      v73 = v83;
      v74 = v82;
      v75 = CGRectGetMaxY(*(&v71 - 3));
      [(BuddyAppleIDTableHeaderView *)selfCopy layoutMargins];
      *heightCopy = v75 + v76;
    }
  }

  objc_storeStrong(&location, 0);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  if (fits.width == 0.0)
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