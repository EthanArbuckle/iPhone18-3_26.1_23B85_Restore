@interface RouteAdvisoryView
+ (id)_stringAttributes;
- (CGSize)intrinsicContentSize;
- (RouteAdvisoryView)initWithFrame:(CGRect)a3;
- (RouteAdvisoryView)initWithViewModel:(id)a3;
- (int64_t)_numberOfLinesForContentSizeCategory;
- (void)_refreshClickability;
- (void)_refreshNumberOfLinesIfNeeded;
- (void)_setupViews;
- (void)_updateAdvisoryImage;
- (void)advisoryDetailPressed;
- (void)layoutSubviews;
- (void)setActionHandler:(id)a3;
- (void)setOverrideTextColor:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation RouteAdvisoryView

- (int64_t)_numberOfLinesForContentSizeCategory
{
  if (sub_10000FA08(self) == 5)
  {
    return 2;
  }

  v4 = [(RouteAdvisoryView *)self traitCollection];
  v5 = [v4 preferredContentSizeCategory];

  if ([v5 isEqualToString:UIContentSizeCategoryAccessibilityExtraLarge] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", UIContentSizeCategoryAccessibilityExtraExtraLarge) & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", UIContentSizeCategoryAccessibilityExtraExtraExtraLarge))
  {
    v3 = 4;
  }

  else if ([v5 isEqualToString:UIContentSizeCategoryAccessibilityLarge])
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)_refreshNumberOfLinesIfNeeded
{
  v3 = [(RouteAdvisoryView *)self _numberOfLinesForContentSizeCategory];
  if (v3 != self->_numberOfLines)
  {
    self->_numberOfLines = v3;
    [(UILabel *)self->_advisoryLabel setNumberOfLines:v3];

    [(RouteAdvisoryView *)self _refreshClickability];
  }
}

- (void)_refreshClickability
{
  [(RouteAdvisoryView *)self invalidateIntrinsicContentSize];
  advisory = self->_advisory;
  if (advisory)
  {
    v11 = [(GEOComposedRouteAdvisory *)self->_advisory advisoryItems];
    if (![v11 count] || (p_advisoryLabel = &self->_advisoryLabel, !self->_advisoryLabel))
    {
LABEL_13:

      return;
    }
  }

  else
  {
    p_advisoryLabel = &self->_advisoryLabel;
    if (!self->_advisoryLabel)
    {
      return;
    }
  }

  v5 = [(RouteAdvisoryView *)self advisoryText];
  if (![v5 length])
  {

    if (!advisory)
    {
      return;
    }

    goto LABEL_13;
  }

  alwaysClickable = self->_alwaysClickable;

  if (advisory)
  {
  }

  if (!alwaysClickable)
  {
    if ([(UILabel *)*p_advisoryLabel isTextTruncated])
    {
      objc_initWeak(&location, self);
      v7 = [(RouteAdvisoryView *)self _maps_mapsSceneDelegate];
      v8 = [v7 appCoordinator];
      v9 = [v8 baseActionCoordinator];

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100E17698;
      v12[3] = &unk_101661340;
      objc_copyWeak(&v14, &location);
      v10 = v9;
      v13 = v10;
      [(RouteAdvisoryView *)self setActionHandler:v12];

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }

    else
    {

      [(RouteAdvisoryView *)self setActionHandler:0];
    }
  }
}

- (void)advisoryDetailPressed
{
  actionHandler = self->_actionHandler;
  if (actionHandler)
  {
    actionHandler[2]();
  }
}

- (void)_updateAdvisoryImage
{
  if (self->_artwork)
  {
    v3 = [(RouteAdvisoryView *)self traitCollection];
    v6 = ImageForArtworkDataSource();

    v4 = v6;
  }

  else
  {
    v4 = self->_advisoryImage;
  }

  v7 = v4;
  if (v4)
  {
    [(UIImageView *)self->_advisoryImageView setImage:v4];
  }

  else
  {
    v5 = [UIImage warningImageOfSize:17.0];
    [(UIImageView *)self->_advisoryImageView setImage:v5];
  }
}

- (CGSize)intrinsicContentSize
{
  [(UIView *)self->_advisoryImageContainer intrinsicContentSize];
  v4 = v3;
  [(UILabel *)self->_advisoryLabel intrinsicContentSize];
  v6 = v5;
  [(UIButton *)self->_advisoryDetailButton intrinsicContentSize];
  v8 = v4 + 5.0 + v6 + v7;
  [(UILabel *)self->_advisoryLabel intrinsicContentSize];
  v10 = ceil(v9);
  v11 = v8;
  result.height = v10;
  result.width = v11;
  return result;
}

- (void)_setupViews
{
  v3 = [UILabel alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  advisoryLabel = self->_advisoryLabel;
  self->_advisoryLabel = v7;

  [(UILabel *)self->_advisoryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_advisoryLabel setUserInteractionEnabled:0];
  v9 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_advisoryLabel setTextColor:v9];

  if (sub_10000FA08(self) == 5)
  {
    v10 = 4;
  }

  else
  {
    v10 = 5;
  }

  [(UILabel *)self->_advisoryLabel setLineBreakMode:v10];
  v11 = +[RouteOverviewCell secondaryLabelFontProvider];
  v12 = v11[2]();
  [(UILabel *)self->_advisoryLabel setFont:v12];

  [(UILabel *)self->_advisoryLabel setNumberOfLines:[(RouteAdvisoryView *)self _numberOfLinesForContentSizeCategory]];
  self->_numberOfLines = [(UILabel *)self->_advisoryLabel numberOfLines];
  LODWORD(v13) = 1148846080;
  [(UILabel *)self->_advisoryLabel setContentHuggingPriority:1 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [(UILabel *)self->_advisoryLabel setContentCompressionResistancePriority:1 forAxis:v14];
  [(UILabel *)self->_advisoryLabel setAccessibilityIdentifier:@"AdvisoryLabel"];
  [(RouteAdvisoryView *)self addSubview:self->_advisoryLabel];
  v15 = objc_alloc_init(UIView);
  advisoryImageContainer = self->_advisoryImageContainer;
  self->_advisoryImageContainer = v15;

  [(UIView *)self->_advisoryImageContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_advisoryImageContainer setAccessibilityIdentifier:@"AdvisoryImageContainer"];
  [(RouteAdvisoryView *)self addSubview:self->_advisoryImageContainer];
  v17 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  advisoryImageView = self->_advisoryImageView;
  self->_advisoryImageView = v17;

  [(UIImageView *)self->_advisoryImageView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_advisoryImageView setContentMode:1];
  [(UIImageView *)self->_advisoryImageView setClipsToBounds:1];
  [(UIImageView *)self->_advisoryImageView setAccessibilityIdentifier:@"AdvisoryImage"];
  [(RouteAdvisoryView *)self addSubview:self->_advisoryImageView];
  v19 = [[UIButton alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  advisoryDetailButton = self->_advisoryDetailButton;
  self->_advisoryDetailButton = v19;

  [(UIButton *)self->_advisoryDetailButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIButton *)self->_advisoryDetailButton setHidden:1];
  v21 = +[UIColor tertiaryLabelColor];
  [(UIButton *)self->_advisoryDetailButton setTintColor:v21];

  [(UIButton *)self->_advisoryDetailButton addTarget:self action:"advisoryDetailPressed" forControlEvents:64];
  v22 = self->_advisoryDetailButton;
  v23 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle3];
  v24 = [UIImageSymbolConfiguration configurationWithFont:v23];
  v25 = [UIImage systemImageNamed:@"info.circle.fill" withConfiguration:v24];
  [(UIButton *)v22 setImage:v25 forState:0];

  [(UIButton *)self->_advisoryDetailButton setAccessibilityIdentifier:@"AdvisoryDetailButton"];
  [(RouteAdvisoryView *)self addSubview:self->_advisoryDetailButton];
  v26 = [(UILabel *)self->_advisoryLabel font];
  [v26 lineHeight];
  v28 = v27;

  v29 = fmin(v28, 17.0);
  v78 = [(UIView *)self->_advisoryImageContainer widthAnchor];
  v77 = [v78 constraintEqualToConstant:v28];
  v79[0] = v77;
  v76 = [(UIView *)self->_advisoryImageContainer heightAnchor];
  v75 = [v76 constraintEqualToConstant:v28];
  v79[1] = v75;
  v74 = [(UIView *)self->_advisoryImageContainer topAnchor];
  v73 = [(UILabel *)self->_advisoryLabel topAnchor];
  v72 = [v74 constraintEqualToAnchor:v73];
  v79[2] = v72;
  v71 = [(UIView *)self->_advisoryImageContainer bottomAnchor];
  v70 = [(RouteAdvisoryView *)self bottomAnchor];
  v69 = [v71 constraintLessThanOrEqualToAnchor:v70];
  v79[3] = v69;
  v68 = [(UIView *)self->_advisoryImageContainer leadingAnchor];
  v67 = [(RouteAdvisoryView *)self leadingAnchor];
  v66 = [v68 constraintEqualToAnchor:v67];
  v79[4] = v66;
  v65 = [(UIView *)self->_advisoryImageContainer trailingAnchor];
  v64 = [(UILabel *)self->_advisoryLabel leadingAnchor];
  v63 = [v65 constraintEqualToAnchor:v64 constant:-5.0];
  v79[5] = v63;
  v62 = [(UIImageView *)self->_advisoryImageView widthAnchor];
  v61 = [v62 constraintEqualToConstant:v29];
  v79[6] = v61;
  v60 = [(UIImageView *)self->_advisoryImageView heightAnchor];
  v59 = [v60 constraintEqualToConstant:v29];
  v79[7] = v59;
  v58 = [(UIImageView *)self->_advisoryImageView centerYAnchor];
  v57 = [(UIView *)self->_advisoryImageContainer centerYAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v79[8] = v56;
  v55 = [(UIImageView *)self->_advisoryImageView centerXAnchor];
  v54 = [(UIView *)self->_advisoryImageContainer centerXAnchor];
  v53 = [v55 constraintEqualToAnchor:v54];
  v79[9] = v53;
  v52 = [(UILabel *)self->_advisoryLabel trailingAnchor];
  v51 = [(UIButton *)self->_advisoryDetailButton leadingAnchor];
  v50 = [v52 constraintEqualToAnchor:v51];
  v79[10] = v50;
  v49 = [(UILabel *)self->_advisoryLabel topAnchor];
  v48 = [(RouteAdvisoryView *)self topAnchor];
  v47 = [v49 constraintEqualToAnchor:v48];
  v79[11] = v47;
  v46 = [(UILabel *)self->_advisoryLabel bottomAnchor];
  v45 = [(RouteAdvisoryView *)self bottomAnchor];
  v44 = [v46 constraintEqualToAnchor:v45];
  v79[12] = v44;
  v43 = [(UIButton *)self->_advisoryDetailButton centerYAnchor];
  v42 = [(UIView *)self->_advisoryImageContainer centerYAnchor];
  v30 = [v43 constraintEqualToAnchor:v42];
  v79[13] = v30;
  v31 = [(UIButton *)self->_advisoryDetailButton trailingAnchor];
  v32 = [(RouteAdvisoryView *)self trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
  v79[14] = v33;
  v34 = [(UIButton *)self->_advisoryDetailButton widthAnchor];
  v35 = [(UIButton *)self->_advisoryDetailButton heightAnchor];
  v36 = [v34 constraintEqualToAnchor:v35];
  v79[15] = v36;
  v37 = [(UIButton *)self->_advisoryDetailButton widthAnchor];
  v38 = sub_10000FA08(self);
  v39 = 0.0;
  if (v38 == 5)
  {
    v39 = 18.0;
  }

  v40 = [v37 constraintEqualToConstant:v39];
  v79[16] = v40;
  v41 = [NSArray arrayWithObjects:v79 count:17];
  [NSLayoutConstraint activateConstraints:v41];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = RouteAdvisoryView;
  [(RouteAdvisoryView *)&v8 traitCollectionDidChange:v4];
  if (self->_artwork)
  {
    v5 = [(RouteAdvisoryView *)self traitCollection];
    v6 = [v5 userInterfaceStyle];
    v7 = [v4 userInterfaceStyle];

    if (v6 != v7)
    {
      [(RouteAdvisoryView *)self _updateAdvisoryImage];
    }
  }
}

- (void)layoutSubviews
{
  v9.receiver = self;
  v9.super_class = RouteAdvisoryView;
  [(RouteAdvisoryView *)&v9 layoutSubviews];
  [(RouteAdvisoryView *)self bounds];
  height = self->_lastSize.height;
  if (self->_lastSize.width != v5 || height != v3)
  {
    [(RouteAdvisoryView *)self bounds:self->_lastSize.width];
    self->_lastSize.width = v7;
    self->_lastSize.height = v8;
    [(RouteAdvisoryView *)self _refreshClickability];
  }
}

- (void)setOverrideTextColor:(id)a3
{
  v5 = a3;
  if (self->_overrideTextColor != v5)
  {
    v8 = v5;
    objc_storeStrong(&self->_overrideTextColor, a3);
    if (self->_overrideTextColor)
    {
      [(UILabel *)self->_advisoryLabel setTextColor:?];
    }

    else
    {
      v6 = +[UIColor secondaryLabelColor];
      [(UILabel *)self->_advisoryLabel setTextColor:v6];
    }

    if (self->_overrideTextColor)
    {
      [(UIButton *)self->_advisoryDetailButton setTintColor:?];
    }

    else
    {
      v7 = +[UIColor tertiaryLabelColor];
      [(UIButton *)self->_advisoryDetailButton setTintColor:v7];
    }

    v5 = v8;
  }
}

- (void)setActionHandler:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_actionHandler != v4)
  {
    v6 = objc_retainBlock(v4);
    actionHandler = self->_actionHandler;
    self->_actionHandler = v6;

    if (!self->_actionHandler)
    {
      [(UILabel *)self->_advisoryLabel setAttributedText:self->_advisoryText];
      [(UILabel *)self->_advisoryLabel setUserInteractionEnabled:0];
      advisoryDetailButton = self->_advisoryDetailButton;
      v9 = 1;
      goto LABEL_6;
    }

    if (sub_10000FA08(self) == 5)
    {
      advisoryDetailButton = self->_advisoryDetailButton;
      v9 = 0;
LABEL_6:
      [(UIButton *)advisoryDetailButton setHidden:v9];
      goto LABEL_14;
    }

    v10 = [(NSAttributedString *)self->_advisoryText mutableCopy];
    v24[0] = NSForegroundColorAttributeName;
    v11 = +[UIColor systemBlueColor];
    v25[0] = v11;
    v24[1] = NSFontAttributeName;
    v12 = +[RouteOverviewCell secondaryLabelFontProvider];
    v13 = v12[2]();
    v25[1] = v13;
    v14 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];

    if (self->_buttonRange.length)
    {
      [v10 addAttributes:v14 range:self->_buttonRange.location];
    }

    else
    {
      v15 = [[NSAttributedString alloc] initWithString:@" "];
      [v10 appendAttributedString:v15];

      v16 = sub_100E186CC(self->_advisory);
      v17 = +[NSBundle mainBundle];
      v18 = v17;
      if (v16)
      {
        v19 = @"Download button [advisory]";
        v20 = @"Offline";
      }

      else
      {
        v19 = @"More button [advisory]";
        v20 = 0;
      }

      v21 = [v17 localizedStringForKey:v19 value:@"localized string not found" table:v20];

      v22 = [[NSAttributedString alloc] initWithString:v21 attributes:v14];
      [v10 appendAttributedString:v22];
    }

    [(UILabel *)self->_advisoryLabel setAttributedText:v10];
    [(UILabel *)self->_advisoryLabel setUserInteractionEnabled:1];
    v23 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"advisoryDetailPressed"];
    [(UILabel *)self->_advisoryLabel addGestureRecognizer:v23];
  }

LABEL_14:
}

- (RouteAdvisoryView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = RouteAdvisoryView;
  v3 = [(RouteAdvisoryView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(RouteAdvisoryView *)v3 _setupViews];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"_contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v4;
}

- (RouteAdvisoryView)initWithViewModel:(id)a3
{
  v4 = a3;
  v5 = [(RouteAdvisoryView *)self initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    v6 = [v4 advisory];
    advisory = v5->_advisory;
    v5->_advisory = v6;

    v8 = [v4 artwork];
    artwork = v5->_artwork;
    v5->_artwork = v8;

    v10 = [v4 text];
    advisoryText = v5->_advisoryText;
    v5->_advisoryText = v10;

    v12 = [v4 image];
    advisoryImage = v5->_advisoryImage;
    v5->_advisoryImage = v12;

    v5->_buttonRange.location = [v4 buttonRange];
    v5->_buttonRange.length = v14;
    [(UILabel *)v5->_advisoryLabel setAttributedText:v5->_advisoryText];
    [(RouteAdvisoryView *)v5 setAccessibilityIdentifier:@"Advisory"];
    [(RouteAdvisoryView *)v5 _updateAdvisoryImage];
  }

  return v5;
}

+ (id)_stringAttributes
{
  v6 = NSFontAttributeName;
  v2 = +[RouteOverviewCell secondaryLabelFontProvider];
  v3 = v2[2]();
  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];

  return v4;
}

@end