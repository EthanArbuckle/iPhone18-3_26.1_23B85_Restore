@interface RouteAdvisoryView
+ (id)_stringAttributes;
- (CGSize)intrinsicContentSize;
- (RouteAdvisoryView)initWithFrame:(CGRect)frame;
- (RouteAdvisoryView)initWithViewModel:(id)model;
- (int64_t)_numberOfLinesForContentSizeCategory;
- (void)_refreshClickability;
- (void)_refreshNumberOfLinesIfNeeded;
- (void)_setupViews;
- (void)_updateAdvisoryImage;
- (void)advisoryDetailPressed;
- (void)layoutSubviews;
- (void)setActionHandler:(id)handler;
- (void)setOverrideTextColor:(id)color;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation RouteAdvisoryView

- (int64_t)_numberOfLinesForContentSizeCategory
{
  if (sub_10000FA08(self) == 5)
  {
    return 2;
  }

  traitCollection = [(RouteAdvisoryView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if ([preferredContentSizeCategory isEqualToString:UIContentSizeCategoryAccessibilityExtraLarge] & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", UIContentSizeCategoryAccessibilityExtraExtraLarge) & 1) != 0 || (objc_msgSend(preferredContentSizeCategory, "isEqualToString:", UIContentSizeCategoryAccessibilityExtraExtraExtraLarge))
  {
    v3 = 4;
  }

  else if ([preferredContentSizeCategory isEqualToString:UIContentSizeCategoryAccessibilityLarge])
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
  _numberOfLinesForContentSizeCategory = [(RouteAdvisoryView *)self _numberOfLinesForContentSizeCategory];
  if (_numberOfLinesForContentSizeCategory != self->_numberOfLines)
  {
    self->_numberOfLines = _numberOfLinesForContentSizeCategory;
    [(UILabel *)self->_advisoryLabel setNumberOfLines:_numberOfLinesForContentSizeCategory];

    [(RouteAdvisoryView *)self _refreshClickability];
  }
}

- (void)_refreshClickability
{
  [(RouteAdvisoryView *)self invalidateIntrinsicContentSize];
  advisory = self->_advisory;
  if (advisory)
  {
    advisoryItems = [(GEOComposedRouteAdvisory *)self->_advisory advisoryItems];
    if (![advisoryItems count] || (p_advisoryLabel = &self->_advisoryLabel, !self->_advisoryLabel))
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

  advisoryText = [(RouteAdvisoryView *)self advisoryText];
  if (![advisoryText length])
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
      _maps_mapsSceneDelegate = [(RouteAdvisoryView *)self _maps_mapsSceneDelegate];
      appCoordinator = [_maps_mapsSceneDelegate appCoordinator];
      baseActionCoordinator = [appCoordinator baseActionCoordinator];

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100E17698;
      v12[3] = &unk_101661340;
      objc_copyWeak(&v14, &location);
      v10 = baseActionCoordinator;
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
    traitCollection = [(RouteAdvisoryView *)self traitCollection];
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
  font = [(UILabel *)self->_advisoryLabel font];
  [font lineHeight];
  v28 = v27;

  v29 = fmin(v28, 17.0);
  widthAnchor = [(UIView *)self->_advisoryImageContainer widthAnchor];
  v77 = [widthAnchor constraintEqualToConstant:v28];
  v79[0] = v77;
  heightAnchor = [(UIView *)self->_advisoryImageContainer heightAnchor];
  v75 = [heightAnchor constraintEqualToConstant:v28];
  v79[1] = v75;
  topAnchor = [(UIView *)self->_advisoryImageContainer topAnchor];
  topAnchor2 = [(UILabel *)self->_advisoryLabel topAnchor];
  v72 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v79[2] = v72;
  bottomAnchor = [(UIView *)self->_advisoryImageContainer bottomAnchor];
  bottomAnchor2 = [(RouteAdvisoryView *)self bottomAnchor];
  v69 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v79[3] = v69;
  leadingAnchor = [(UIView *)self->_advisoryImageContainer leadingAnchor];
  leadingAnchor2 = [(RouteAdvisoryView *)self leadingAnchor];
  v66 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v79[4] = v66;
  trailingAnchor = [(UIView *)self->_advisoryImageContainer trailingAnchor];
  leadingAnchor3 = [(UILabel *)self->_advisoryLabel leadingAnchor];
  v63 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-5.0];
  v79[5] = v63;
  widthAnchor2 = [(UIImageView *)self->_advisoryImageView widthAnchor];
  v61 = [widthAnchor2 constraintEqualToConstant:v29];
  v79[6] = v61;
  heightAnchor2 = [(UIImageView *)self->_advisoryImageView heightAnchor];
  v59 = [heightAnchor2 constraintEqualToConstant:v29];
  v79[7] = v59;
  centerYAnchor = [(UIImageView *)self->_advisoryImageView centerYAnchor];
  centerYAnchor2 = [(UIView *)self->_advisoryImageContainer centerYAnchor];
  v56 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v79[8] = v56;
  centerXAnchor = [(UIImageView *)self->_advisoryImageView centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_advisoryImageContainer centerXAnchor];
  v53 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v79[9] = v53;
  trailingAnchor2 = [(UILabel *)self->_advisoryLabel trailingAnchor];
  leadingAnchor4 = [(UIButton *)self->_advisoryDetailButton leadingAnchor];
  v50 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4];
  v79[10] = v50;
  topAnchor3 = [(UILabel *)self->_advisoryLabel topAnchor];
  topAnchor4 = [(RouteAdvisoryView *)self topAnchor];
  v47 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v79[11] = v47;
  bottomAnchor3 = [(UILabel *)self->_advisoryLabel bottomAnchor];
  bottomAnchor4 = [(RouteAdvisoryView *)self bottomAnchor];
  v44 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v79[12] = v44;
  centerYAnchor3 = [(UIButton *)self->_advisoryDetailButton centerYAnchor];
  centerYAnchor4 = [(UIView *)self->_advisoryImageContainer centerYAnchor];
  v30 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v79[13] = v30;
  trailingAnchor3 = [(UIButton *)self->_advisoryDetailButton trailingAnchor];
  trailingAnchor4 = [(RouteAdvisoryView *)self trailingAnchor];
  v33 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v79[14] = v33;
  widthAnchor3 = [(UIButton *)self->_advisoryDetailButton widthAnchor];
  heightAnchor3 = [(UIButton *)self->_advisoryDetailButton heightAnchor];
  v36 = [widthAnchor3 constraintEqualToAnchor:heightAnchor3];
  v79[15] = v36;
  widthAnchor4 = [(UIButton *)self->_advisoryDetailButton widthAnchor];
  v38 = sub_10000FA08(self);
  v39 = 0.0;
  if (v38 == 5)
  {
    v39 = 18.0;
  }

  v40 = [widthAnchor4 constraintEqualToConstant:v39];
  v79[16] = v40;
  v41 = [NSArray arrayWithObjects:v79 count:17];
  [NSLayoutConstraint activateConstraints:v41];
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v8.receiver = self;
  v8.super_class = RouteAdvisoryView;
  [(RouteAdvisoryView *)&v8 traitCollectionDidChange:changeCopy];
  if (self->_artwork)
  {
    traitCollection = [(RouteAdvisoryView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];
    userInterfaceStyle2 = [changeCopy userInterfaceStyle];

    if (userInterfaceStyle != userInterfaceStyle2)
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

- (void)setOverrideTextColor:(id)color
{
  colorCopy = color;
  if (self->_overrideTextColor != colorCopy)
  {
    v8 = colorCopy;
    objc_storeStrong(&self->_overrideTextColor, color);
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

    colorCopy = v8;
  }
}

- (void)setActionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  if (self->_actionHandler != handlerCopy)
  {
    v6 = objc_retainBlock(handlerCopy);
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

- (RouteAdvisoryView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = RouteAdvisoryView;
  v3 = [(RouteAdvisoryView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(RouteAdvisoryView *)v3 _setupViews];
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"_contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v4;
}

- (RouteAdvisoryView)initWithViewModel:(id)model
{
  modelCopy = model;
  v5 = [(RouteAdvisoryView *)self initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v5)
  {
    advisory = [modelCopy advisory];
    advisory = v5->_advisory;
    v5->_advisory = advisory;

    artwork = [modelCopy artwork];
    artwork = v5->_artwork;
    v5->_artwork = artwork;

    text = [modelCopy text];
    advisoryText = v5->_advisoryText;
    v5->_advisoryText = text;

    image = [modelCopy image];
    advisoryImage = v5->_advisoryImage;
    v5->_advisoryImage = image;

    v5->_buttonRange.location = [modelCopy buttonRange];
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