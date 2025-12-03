@interface ContainerHeaderView
- (CGSize)intrinsicContentSize;
- (ContainerHeaderView)initWithCardButton:(id)button trailingCardButtons:(id)buttons;
- (ContainerHeaderView)initWithCardButtonType:(unint64_t)type;
- (ContainerHeaderView)initWithCardButtonType:(unint64_t)type cardButtonBlurred:(BOOL)blurred;
- (ContainerHeaderView)initWithCardButtonType:(unint64_t)type cardButtonTintColor:(id)color;
- (ContainerHeaderView)initWithFrame:(CGRect)frame;
- (HeaderViewDelegate)delegate;
- (NSString)subtitle;
- (NSString)title;
- (NSString)titleAXID;
- (double)trailingButtonInset;
- (int64_t)swiftCardButtonTypeForCardButtonType:(unint64_t)type;
- (unint64_t)cardButtonTypeForSwiftCardButtonType:(int64_t)type;
- (void)_initViews;
- (void)headerViewButtonTappedWithHeaderView:(id)view buttonType:(int64_t)type;
- (void)setAccessoryView:(id)view;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setTitleAXID:(id)d;
- (void)setTitleHidden:(BOOL)hidden;
- (void)setTitleView:(id)view;
- (void)titlePlaceholderViewTapped:(id)tapped;
- (void)updateButtons;
@end

@implementation ContainerHeaderView

- (HeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)headerViewButtonTappedWithHeaderView:(id)view buttonType:(int64_t)type
{
  delegate = [(ContainerHeaderView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(ContainerHeaderView *)self delegate];
    [delegate2 headerViewButtonTapped:self buttonType:{-[ContainerHeaderView cardButtonTypeForSwiftCardButtonType:](self, "cardButtonTypeForSwiftCardButtonType:", type)}];
  }
}

- (void)titlePlaceholderViewTapped:(id)tapped
{
  delegate = [(ContainerHeaderView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(ContainerHeaderView *)self delegate];
    [delegate2 headerViewTapped:self];
  }
}

- (void)updateButtons
{
  v3 = objc_opt_new();
  if (![(ContainerHeaderView *)self isButtonHidden])
  {
    mainCardButton = [(ContainerHeaderView *)self mainCardButton];

    if (mainCardButton)
    {
      mainCardButton2 = [(ContainerHeaderView *)self mainCardButton];
      v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[ContainerHeaderView swiftCardButtonTypeForCardButtonType:](self, "swiftCardButtonTypeForCardButtonType:", [mainCardButton2 type]));
      [v3 addObject:v6];
    }
  }

  if (![(ContainerHeaderView *)self areTrailingButtonsHidden])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    trailingButtons = [(ContainerHeaderView *)self trailingButtons];
    v8 = [trailingButtons countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(trailingButtons);
          }

          v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[ContainerHeaderView swiftCardButtonTypeForCardButtonType:](self, "swiftCardButtonTypeForCardButtonType:", [*(*(&v14 + 1) + 8 * v11) type]));
          [v3 addObject:v12];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [trailingButtons countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  cardHeaderComponent = [(ContainerHeaderView *)self cardHeaderComponent];
  [cardHeaderComponent setTrailingButtons:v3];
}

- (unint64_t)cardButtonTypeForSwiftCardButtonType:(int64_t)type
{
  if (type >= 0xD)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

- (int64_t)swiftCardButtonTypeForCardButtonType:(unint64_t)type
{
  if (type >= 0xD)
  {
    return 0;
  }

  else
  {
    return type;
  }
}

- (void)setAccessoryView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_accessoryView removeFromSuperview];
  accessoryView = self->_accessoryView;
  self->_accessoryView = viewCopy;
  v6 = viewCopy;

  if (v6)
  {
    accessoryPlaceholderView = [(ContainerHeaderView *)self accessoryPlaceholderView];
    [accessoryPlaceholderView addSubview:v6];

    accessoryPlaceholderHeightConstraint = [(ContainerHeaderView *)self accessoryPlaceholderHeightConstraint];
    v32 = accessoryPlaceholderHeightConstraint;
    v9 = [NSArray arrayWithObjects:&v32 count:1];
    [NSLayoutConstraint deactivateConstraints:v9];

    leadingAnchor = [(UIView *)v6 leadingAnchor];
    accessoryPlaceholderView2 = [(ContainerHeaderView *)self accessoryPlaceholderView];
    leadingAnchor2 = [accessoryPlaceholderView2 leadingAnchor];
    v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v31[0] = v28;
    trailingAnchor = [(UIView *)v6 trailingAnchor];
    accessoryPlaceholderView3 = [(ContainerHeaderView *)self accessoryPlaceholderView];
    trailingAnchor2 = [accessoryPlaceholderView3 trailingAnchor];
    v24 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v31[1] = v24;
    topAnchor = [(UIView *)v6 topAnchor];
    accessoryPlaceholderView4 = [(ContainerHeaderView *)self accessoryPlaceholderView];
    topAnchor2 = [accessoryPlaceholderView4 topAnchor];
    v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v31[2] = v13;
    bottomAnchor = [(UIView *)v6 bottomAnchor];
    accessoryPlaceholderView5 = [(ContainerHeaderView *)self accessoryPlaceholderView];
    bottomAnchor2 = [accessoryPlaceholderView5 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v31[3] = v17;
    v18 = [NSArray arrayWithObjects:v31 count:4];
    [NSLayoutConstraint activateConstraints:v18];

    v19 = accessoryPlaceholderView2;
    accessoryPlaceholderHeightConstraint2 = leadingAnchor;

    v21 = leadingAnchor2;
  }

  else
  {
    accessoryPlaceholderHeightConstraint2 = [(ContainerHeaderView *)self accessoryPlaceholderHeightConstraint];
    v30 = accessoryPlaceholderHeightConstraint2;
    v19 = [NSArray arrayWithObjects:&v30 count:1];
    [NSLayoutConstraint activateConstraints:v19];
    v21 = 0;
  }
}

- (void)setTitleView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_titleView removeFromSuperview];
  objc_storeStrong(&self->_titleView, view);
  cardHeaderComponent = [(ContainerHeaderView *)self cardHeaderComponent];
  [cardHeaderComponent setTextHidden:viewCopy != 0];

  if (viewCopy)
  {
    titlePlaceholderView = [(ContainerHeaderView *)self titlePlaceholderView];
    [titlePlaceholderView addSubview:viewCopy];

    cardHeaderComponent2 = [(ContainerHeaderView *)self cardHeaderComponent];
    [cardHeaderComponent2 trailingButtonInset];
    v10 = -v9;

    leadingAnchor = [viewCopy leadingAnchor];
    titlePlaceholderView2 = [(ContainerHeaderView *)self titlePlaceholderView];
    leadingAnchor2 = [titlePlaceholderView2 leadingAnchor];
    v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v28[0] = v24;
    trailingAnchor = [viewCopy trailingAnchor];
    titlePlaceholderView3 = [(ContainerHeaderView *)self titlePlaceholderView];
    trailingAnchor2 = [titlePlaceholderView3 trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:v10];
    v28[1] = v20;
    topAnchor = [viewCopy topAnchor];
    titlePlaceholderView4 = [(ContainerHeaderView *)self titlePlaceholderView];
    topAnchor2 = [titlePlaceholderView4 topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v28[2] = v14;
    bottomAnchor = [viewCopy bottomAnchor];
    titlePlaceholderView5 = [(ContainerHeaderView *)self titlePlaceholderView];
    bottomAnchor2 = [titlePlaceholderView5 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v28[3] = v18;
    v19 = [NSArray arrayWithObjects:v28 count:4];
    [NSLayoutConstraint activateConstraints:v19];
  }
}

- (void)setTitleHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  self->_titleHidden = hidden;
  titlePlaceholderZeroHeightConstraint = [(ContainerHeaderView *)self titlePlaceholderZeroHeightConstraint];
  [titlePlaceholderZeroHeightConstraint setActive:hiddenCopy];

  titlePlaceholderMaxHeightConstraint = [(ContainerHeaderView *)self titlePlaceholderMaxHeightConstraint];
  [titlePlaceholderMaxHeightConstraint setActive:hiddenCopy ^ 1];
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  cardHeaderComponent = [(ContainerHeaderView *)self cardHeaderComponent];
  [cardHeaderComponent setSubtitle:subtitleCopy];
}

- (NSString)subtitle
{
  cardHeaderComponent = [(ContainerHeaderView *)self cardHeaderComponent];
  subtitle = [cardHeaderComponent subtitle];

  return subtitle;
}

- (void)setTitleAXID:(id)d
{
  dCopy = d;
  cardHeaderComponent = [(ContainerHeaderView *)self cardHeaderComponent];
  [cardHeaderComponent setTitleCustomAXID:dCopy];
}

- (NSString)titleAXID
{
  cardHeaderComponent = [(ContainerHeaderView *)self cardHeaderComponent];
  titleCustomAXID = [cardHeaderComponent titleCustomAXID];

  return titleCustomAXID;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  cardHeaderComponent = [(ContainerHeaderView *)self cardHeaderComponent];
  [cardHeaderComponent setTitle:titleCopy];
}

- (NSString)title
{
  cardHeaderComponent = [(ContainerHeaderView *)self cardHeaderComponent];
  title = [cardHeaderComponent title];

  return title;
}

- (double)trailingButtonInset
{
  cardHeaderComponent = [(ContainerHeaderView *)self cardHeaderComponent];
  [cardHeaderComponent trailingButtonInset];
  v4 = v3;

  return v4;
}

- (CGSize)intrinsicContentSize
{
  stackView = [(ContainerHeaderView *)self stackView];
  [stackView intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)_initViews
{
  v3 = [_TtC4Maps24SwiftContainerHeaderView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(SwiftContainerHeaderView *)v3 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(ContainerHeaderView *)self setCardHeaderComponent:height];

  cardHeaderComponent = [(ContainerHeaderView *)self cardHeaderComponent];
  [cardHeaderComponent setTranslatesAutoresizingMaskIntoConstraints:0];

  cardHeaderComponent2 = [(ContainerHeaderView *)self cardHeaderComponent];
  [cardHeaderComponent2 setDelegate:self];

  v10 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(ContainerHeaderView *)self setTitlePlaceholderView:v10];

  titlePlaceholderView = [(ContainerHeaderView *)self titlePlaceholderView];
  [titlePlaceholderView setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"titlePlaceholderViewTapped:"];
  [(ContainerHeaderView *)self setTapGestureRecognizer:v12];

  titlePlaceholderView2 = [(ContainerHeaderView *)self titlePlaceholderView];
  tapGestureRecognizer = [(ContainerHeaderView *)self tapGestureRecognizer];
  [titlePlaceholderView2 addGestureRecognizer:tapGestureRecognizer];

  titlePlaceholderView3 = [(ContainerHeaderView *)self titlePlaceholderView];
  cardHeaderComponent3 = [(ContainerHeaderView *)self cardHeaderComponent];
  [titlePlaceholderView3 addSubview:cardHeaderComponent3];

  titlePlaceholderView4 = [(ContainerHeaderView *)self titlePlaceholderView];
  heightAnchor = [titlePlaceholderView4 heightAnchor];
  cardHeaderComponent4 = [(ContainerHeaderView *)self cardHeaderComponent];
  heightAnchor2 = [cardHeaderComponent4 heightAnchor];
  v21 = [heightAnchor constraintGreaterThanOrEqualToAnchor:heightAnchor2];
  [(ContainerHeaderView *)self setTitlePlaceholderMaxHeightConstraint:v21];

  titlePlaceholderView5 = [(ContainerHeaderView *)self titlePlaceholderView];
  heightAnchor3 = [titlePlaceholderView5 heightAnchor];
  v24 = [heightAnchor3 constraintEqualToConstant:0.0];
  [(ContainerHeaderView *)self setTitlePlaceholderZeroHeightConstraint:v24];

  cardHeaderComponent5 = [(ContainerHeaderView *)self cardHeaderComponent];
  leadingAnchor = [cardHeaderComponent5 leadingAnchor];
  titlePlaceholderView6 = [(ContainerHeaderView *)self titlePlaceholderView];
  leadingAnchor2 = [titlePlaceholderView6 leadingAnchor];
  v86 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v98[0] = v86;
  cardHeaderComponent6 = [(ContainerHeaderView *)self cardHeaderComponent];
  trailingAnchor = [cardHeaderComponent6 trailingAnchor];
  titlePlaceholderView7 = [(ContainerHeaderView *)self titlePlaceholderView];
  trailingAnchor2 = [titlePlaceholderView7 trailingAnchor];
  v75 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v98[1] = v75;
  cardHeaderComponent7 = [(ContainerHeaderView *)self cardHeaderComponent];
  topAnchor = [cardHeaderComponent7 topAnchor];
  titlePlaceholderView8 = [(ContainerHeaderView *)self titlePlaceholderView];
  topAnchor2 = [titlePlaceholderView8 topAnchor];
  v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v98[2] = v26;
  cardHeaderComponent8 = [(ContainerHeaderView *)self cardHeaderComponent];
  bottomAnchor = [cardHeaderComponent8 bottomAnchor];
  titlePlaceholderView9 = [(ContainerHeaderView *)self titlePlaceholderView];
  bottomAnchor2 = [titlePlaceholderView9 bottomAnchor];
  v31 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v98[3] = v31;
  titlePlaceholderMaxHeightConstraint = [(ContainerHeaderView *)self titlePlaceholderMaxHeightConstraint];
  v98[4] = titlePlaceholderMaxHeightConstraint;
  v33 = [NSArray arrayWithObjects:v98 count:5];
  [NSLayoutConstraint activateConstraints:v33];

  v34 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(ContainerHeaderView *)self setAccessoryPlaceholderView:v34];

  accessoryPlaceholderView = [(ContainerHeaderView *)self accessoryPlaceholderView];
  [accessoryPlaceholderView setTranslatesAutoresizingMaskIntoConstraints:0];

  v36 = [UIStackView alloc];
  titlePlaceholderView10 = [(ContainerHeaderView *)self titlePlaceholderView];
  v97[0] = titlePlaceholderView10;
  accessoryPlaceholderView2 = [(ContainerHeaderView *)self accessoryPlaceholderView];
  v97[1] = accessoryPlaceholderView2;
  v39 = [NSArray arrayWithObjects:v97 count:2];
  v40 = [v36 initWithArrangedSubviews:v39];
  [(ContainerHeaderView *)self setStackView:v40];

  stackView = [(ContainerHeaderView *)self stackView];
  [stackView setTranslatesAutoresizingMaskIntoConstraints:0];

  stackView2 = [(ContainerHeaderView *)self stackView];
  [stackView2 setAxis:1];

  stackView3 = [(ContainerHeaderView *)self stackView];
  LODWORD(v44) = 1148846080;
  [stackView3 setContentHuggingPriority:1 forAxis:v44];

  stackView4 = [(ContainerHeaderView *)self stackView];
  [(ContainerHeaderView *)self addSubview:stackView4];

  accessoryPlaceholderView3 = [(ContainerHeaderView *)self accessoryPlaceholderView];
  heightAnchor4 = [accessoryPlaceholderView3 heightAnchor];
  v48 = [heightAnchor4 constraintEqualToConstant:0.0];
  [(ContainerHeaderView *)self setAccessoryPlaceholderHeightConstraint:v48];

  titlePlaceholderView11 = [(ContainerHeaderView *)self titlePlaceholderView];
  leadingAnchor3 = [titlePlaceholderView11 leadingAnchor];
  leadingAnchor4 = [(ContainerHeaderView *)self leadingAnchor];
  v89 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v96[0] = v89;
  titlePlaceholderView12 = [(ContainerHeaderView *)self titlePlaceholderView];
  trailingAnchor3 = [titlePlaceholderView12 trailingAnchor];
  trailingAnchor4 = [(ContainerHeaderView *)self trailingAnchor];
  v81 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v96[1] = v81;
  accessoryPlaceholderView4 = [(ContainerHeaderView *)self accessoryPlaceholderView];
  leadingAnchor5 = [accessoryPlaceholderView4 leadingAnchor];
  leadingAnchor6 = [(ContainerHeaderView *)self leadingAnchor];
  v74 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v96[2] = v74;
  accessoryPlaceholderView5 = [(ContainerHeaderView *)self accessoryPlaceholderView];
  trailingAnchor5 = [accessoryPlaceholderView5 trailingAnchor];
  trailingAnchor6 = [(ContainerHeaderView *)self trailingAnchor];
  v67 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v96[3] = v67;
  accessoryPlaceholderHeightConstraint = [(ContainerHeaderView *)self accessoryPlaceholderHeightConstraint];
  v96[4] = accessoryPlaceholderHeightConstraint;
  stackView5 = [(ContainerHeaderView *)self stackView];
  leadingAnchor7 = [stackView5 leadingAnchor];
  leadingAnchor8 = [(ContainerHeaderView *)self leadingAnchor];
  v62 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
  v96[5] = v62;
  stackView6 = [(ContainerHeaderView *)self stackView];
  trailingAnchor7 = [stackView6 trailingAnchor];
  trailingAnchor8 = [(ContainerHeaderView *)self trailingAnchor];
  v58 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
  v96[6] = v58;
  stackView7 = [(ContainerHeaderView *)self stackView];
  topAnchor3 = [stackView7 topAnchor];
  topAnchor4 = [(ContainerHeaderView *)self topAnchor];
  v52 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v96[7] = v52;
  stackView8 = [(ContainerHeaderView *)self stackView];
  bottomAnchor3 = [stackView8 bottomAnchor];
  bottomAnchor4 = [(ContainerHeaderView *)self bottomAnchor];
  v56 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v96[8] = v56;
  v57 = [NSArray arrayWithObjects:v96 count:9];
  [NSLayoutConstraint activateConstraints:v57];

  [(ContainerHeaderView *)self updateButtons];
}

- (ContainerHeaderView)initWithCardButton:(id)button trailingCardButtons:(id)buttons
{
  buttonCopy = button;
  buttonsCopy = buttons;
  v24.receiver = self;
  v24.super_class = ContainerHeaderView;
  v8 = [(ContainerHeaderView *)&v24 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v8)
  {
    configuration = [buttonCopy configuration];
    [(ContainerHeaderView *)v8 setMainCardButton:configuration];

    v10 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = buttonsCopy;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          configuration2 = [v16 configuration];

          if (configuration2)
          {
            configuration3 = [v16 configuration];
            [v10 addObject:configuration3];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v13);
    }

    [(ContainerHeaderView *)v8 setTrailingButtons:v10];
    [(ContainerHeaderView *)v8 _initViews];
  }

  return v8;
}

- (ContainerHeaderView)initWithCardButtonType:(unint64_t)type cardButtonTintColor:(id)color
{
  colorCopy = color;
  v10.receiver = self;
  v10.super_class = ContainerHeaderView;
  v7 = [(ContainerHeaderView *)&v10 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v7)
  {
    v8 = objc_alloc_init(CardButtonConfiguration);
    [(CardButtonConfiguration *)v8 setType:type];
    [(CardButtonConfiguration *)v8 setTintColor:colorCopy];
    [(ContainerHeaderView *)v7 setMainCardButton:v8];
    [(ContainerHeaderView *)v7 _initViews];
  }

  return v7;
}

- (ContainerHeaderView)initWithCardButtonType:(unint64_t)type cardButtonBlurred:(BOOL)blurred
{
  blurredCopy = blurred;
  v9.receiver = self;
  v9.super_class = ContainerHeaderView;
  v6 = [(ContainerHeaderView *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v6)
  {
    v7 = objc_alloc_init(CardButtonConfiguration);
    [(CardButtonConfiguration *)v7 setType:type];
    [(CardButtonConfiguration *)v7 setBlurred:blurredCopy];
    [(ContainerHeaderView *)v6 setMainCardButton:v7];
    [(ContainerHeaderView *)v6 _initViews];
  }

  return v6;
}

- (ContainerHeaderView)initWithCardButtonType:(unint64_t)type
{
  v7.receiver = self;
  v7.super_class = ContainerHeaderView;
  v4 = [(ContainerHeaderView *)&v7 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v4)
  {
    v5 = objc_alloc_init(CardButtonConfiguration);
    [(CardButtonConfiguration *)v5 setType:type];
    [(ContainerHeaderView *)v4 setMainCardButton:v5];
    [(ContainerHeaderView *)v4 _initViews];
  }

  return v4;
}

- (ContainerHeaderView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ContainerHeaderView;
  v3 = [(ContainerHeaderView *)&v6 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(CardButtonConfiguration);
    [(CardButtonConfiguration *)v4 setType:1];
    [(ContainerHeaderView *)v3 setMainCardButton:v4];
    [(ContainerHeaderView *)v3 _initViews];
  }

  return v3;
}

@end