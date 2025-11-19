@interface ContainerHeaderView
- (CGSize)intrinsicContentSize;
- (ContainerHeaderView)initWithCardButton:(id)a3 trailingCardButtons:(id)a4;
- (ContainerHeaderView)initWithCardButtonType:(unint64_t)a3;
- (ContainerHeaderView)initWithCardButtonType:(unint64_t)a3 cardButtonBlurred:(BOOL)a4;
- (ContainerHeaderView)initWithCardButtonType:(unint64_t)a3 cardButtonTintColor:(id)a4;
- (ContainerHeaderView)initWithFrame:(CGRect)a3;
- (HeaderViewDelegate)delegate;
- (NSString)subtitle;
- (NSString)title;
- (NSString)titleAXID;
- (double)trailingButtonInset;
- (int64_t)swiftCardButtonTypeForCardButtonType:(unint64_t)a3;
- (unint64_t)cardButtonTypeForSwiftCardButtonType:(int64_t)a3;
- (void)_initViews;
- (void)headerViewButtonTappedWithHeaderView:(id)a3 buttonType:(int64_t)a4;
- (void)setAccessoryView:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTitleAXID:(id)a3;
- (void)setTitleHidden:(BOOL)a3;
- (void)setTitleView:(id)a3;
- (void)titlePlaceholderViewTapped:(id)a3;
- (void)updateButtons;
@end

@implementation ContainerHeaderView

- (HeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)headerViewButtonTappedWithHeaderView:(id)a3 buttonType:(int64_t)a4
{
  v6 = [(ContainerHeaderView *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(ContainerHeaderView *)self delegate];
    [v8 headerViewButtonTapped:self buttonType:{-[ContainerHeaderView cardButtonTypeForSwiftCardButtonType:](self, "cardButtonTypeForSwiftCardButtonType:", a4)}];
  }
}

- (void)titlePlaceholderViewTapped:(id)a3
{
  v4 = [(ContainerHeaderView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ContainerHeaderView *)self delegate];
    [v6 headerViewTapped:self];
  }
}

- (void)updateButtons
{
  v3 = objc_opt_new();
  if (![(ContainerHeaderView *)self isButtonHidden])
  {
    v4 = [(ContainerHeaderView *)self mainCardButton];

    if (v4)
    {
      v5 = [(ContainerHeaderView *)self mainCardButton];
      v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[ContainerHeaderView swiftCardButtonTypeForCardButtonType:](self, "swiftCardButtonTypeForCardButtonType:", [v5 type]));
      [v3 addObject:v6];
    }
  }

  if (![(ContainerHeaderView *)self areTrailingButtonsHidden])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [(ContainerHeaderView *)self trailingButtons];
    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", -[ContainerHeaderView swiftCardButtonTypeForCardButtonType:](self, "swiftCardButtonTypeForCardButtonType:", [*(*(&v14 + 1) + 8 * v11) type]));
          [v3 addObject:v12];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  v13 = [(ContainerHeaderView *)self cardHeaderComponent];
  [v13 setTrailingButtons:v3];
}

- (unint64_t)cardButtonTypeForSwiftCardButtonType:(int64_t)a3
{
  if (a3 >= 0xD)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (int64_t)swiftCardButtonTypeForCardButtonType:(unint64_t)a3
{
  if (a3 >= 0xD)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (void)setAccessoryView:(id)a3
{
  v4 = a3;
  [(UIView *)self->_accessoryView removeFromSuperview];
  accessoryView = self->_accessoryView;
  self->_accessoryView = v4;
  v6 = v4;

  if (v6)
  {
    v7 = [(ContainerHeaderView *)self accessoryPlaceholderView];
    [v7 addSubview:v6];

    v8 = [(ContainerHeaderView *)self accessoryPlaceholderHeightConstraint];
    v32 = v8;
    v9 = [NSArray arrayWithObjects:&v32 count:1];
    [NSLayoutConstraint deactivateConstraints:v9];

    v23 = [(UIView *)v6 leadingAnchor];
    v22 = [(ContainerHeaderView *)self accessoryPlaceholderView];
    v29 = [v22 leadingAnchor];
    v28 = [v23 constraintEqualToAnchor:v29];
    v31[0] = v28;
    v26 = [(UIView *)v6 trailingAnchor];
    v27 = [(ContainerHeaderView *)self accessoryPlaceholderView];
    v25 = [v27 trailingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v31[1] = v24;
    v10 = [(UIView *)v6 topAnchor];
    v11 = [(ContainerHeaderView *)self accessoryPlaceholderView];
    v12 = [v11 topAnchor];
    v13 = [v10 constraintEqualToAnchor:v12];
    v31[2] = v13;
    v14 = [(UIView *)v6 bottomAnchor];
    v15 = [(ContainerHeaderView *)self accessoryPlaceholderView];
    v16 = [v15 bottomAnchor];
    v17 = [v14 constraintEqualToAnchor:v16];
    v31[3] = v17;
    v18 = [NSArray arrayWithObjects:v31 count:4];
    [NSLayoutConstraint activateConstraints:v18];

    v19 = v22;
    v20 = v23;

    v21 = v29;
  }

  else
  {
    v20 = [(ContainerHeaderView *)self accessoryPlaceholderHeightConstraint];
    v30 = v20;
    v19 = [NSArray arrayWithObjects:&v30 count:1];
    [NSLayoutConstraint activateConstraints:v19];
    v21 = 0;
  }
}

- (void)setTitleView:(id)a3
{
  v5 = a3;
  [(UIView *)self->_titleView removeFromSuperview];
  objc_storeStrong(&self->_titleView, a3);
  v6 = [(ContainerHeaderView *)self cardHeaderComponent];
  [v6 setTextHidden:v5 != 0];

  if (v5)
  {
    v7 = [(ContainerHeaderView *)self titlePlaceholderView];
    [v7 addSubview:v5];

    v8 = [(ContainerHeaderView *)self cardHeaderComponent];
    [v8 trailingButtonInset];
    v10 = -v9;

    v26 = [v5 leadingAnchor];
    v27 = [(ContainerHeaderView *)self titlePlaceholderView];
    v25 = [v27 leadingAnchor];
    v24 = [v26 constraintEqualToAnchor:v25];
    v28[0] = v24;
    v22 = [v5 trailingAnchor];
    v23 = [(ContainerHeaderView *)self titlePlaceholderView];
    v21 = [v23 trailingAnchor];
    v20 = [v22 constraintEqualToAnchor:v21 constant:v10];
    v28[1] = v20;
    v11 = [v5 topAnchor];
    v12 = [(ContainerHeaderView *)self titlePlaceholderView];
    v13 = [v12 topAnchor];
    v14 = [v11 constraintEqualToAnchor:v13];
    v28[2] = v14;
    v15 = [v5 bottomAnchor];
    v16 = [(ContainerHeaderView *)self titlePlaceholderView];
    v17 = [v16 bottomAnchor];
    v18 = [v15 constraintEqualToAnchor:v17];
    v28[3] = v18;
    v19 = [NSArray arrayWithObjects:v28 count:4];
    [NSLayoutConstraint activateConstraints:v19];
  }
}

- (void)setTitleHidden:(BOOL)a3
{
  v3 = a3;
  self->_titleHidden = a3;
  v5 = [(ContainerHeaderView *)self titlePlaceholderZeroHeightConstraint];
  [v5 setActive:v3];

  v6 = [(ContainerHeaderView *)self titlePlaceholderMaxHeightConstraint];
  [v6 setActive:v3 ^ 1];
}

- (void)setSubtitle:(id)a3
{
  v4 = a3;
  v5 = [(ContainerHeaderView *)self cardHeaderComponent];
  [v5 setSubtitle:v4];
}

- (NSString)subtitle
{
  v2 = [(ContainerHeaderView *)self cardHeaderComponent];
  v3 = [v2 subtitle];

  return v3;
}

- (void)setTitleAXID:(id)a3
{
  v4 = a3;
  v5 = [(ContainerHeaderView *)self cardHeaderComponent];
  [v5 setTitleCustomAXID:v4];
}

- (NSString)titleAXID
{
  v2 = [(ContainerHeaderView *)self cardHeaderComponent];
  v3 = [v2 titleCustomAXID];

  return v3;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(ContainerHeaderView *)self cardHeaderComponent];
  [v5 setTitle:v4];
}

- (NSString)title
{
  v2 = [(ContainerHeaderView *)self cardHeaderComponent];
  v3 = [v2 title];

  return v3;
}

- (double)trailingButtonInset
{
  v2 = [(ContainerHeaderView *)self cardHeaderComponent];
  [v2 trailingButtonInset];
  v4 = v3;

  return v4;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(ContainerHeaderView *)self stackView];
  [v2 intrinsicContentSize];
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
  v7 = [(SwiftContainerHeaderView *)v3 initWithFrame:CGRectZero.origin.x, y, width, height];
  [(ContainerHeaderView *)self setCardHeaderComponent:v7];

  v8 = [(ContainerHeaderView *)self cardHeaderComponent];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

  v9 = [(ContainerHeaderView *)self cardHeaderComponent];
  [v9 setDelegate:self];

  v10 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(ContainerHeaderView *)self setTitlePlaceholderView:v10];

  v11 = [(ContainerHeaderView *)self titlePlaceholderView];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"titlePlaceholderViewTapped:"];
  [(ContainerHeaderView *)self setTapGestureRecognizer:v12];

  v13 = [(ContainerHeaderView *)self titlePlaceholderView];
  v14 = [(ContainerHeaderView *)self tapGestureRecognizer];
  [v13 addGestureRecognizer:v14];

  v15 = [(ContainerHeaderView *)self titlePlaceholderView];
  v16 = [(ContainerHeaderView *)self cardHeaderComponent];
  [v15 addSubview:v16];

  v17 = [(ContainerHeaderView *)self titlePlaceholderView];
  v18 = [v17 heightAnchor];
  v19 = [(ContainerHeaderView *)self cardHeaderComponent];
  v20 = [v19 heightAnchor];
  v21 = [v18 constraintGreaterThanOrEqualToAnchor:v20];
  [(ContainerHeaderView *)self setTitlePlaceholderMaxHeightConstraint:v21];

  v22 = [(ContainerHeaderView *)self titlePlaceholderView];
  v23 = [v22 heightAnchor];
  v24 = [v23 constraintEqualToConstant:0.0];
  [(ContainerHeaderView *)self setTitlePlaceholderZeroHeightConstraint:v24];

  v94 = [(ContainerHeaderView *)self cardHeaderComponent];
  v90 = [v94 leadingAnchor];
  v92 = [(ContainerHeaderView *)self titlePlaceholderView];
  v88 = [v92 leadingAnchor];
  v86 = [v90 constraintEqualToAnchor:v88];
  v98[0] = v86;
  v84 = [(ContainerHeaderView *)self cardHeaderComponent];
  v80 = [v84 trailingAnchor];
  v82 = [(ContainerHeaderView *)self titlePlaceholderView];
  v78 = [v82 trailingAnchor];
  v75 = [v80 constraintEqualToAnchor:v78];
  v98[1] = v75;
  v73 = [(ContainerHeaderView *)self cardHeaderComponent];
  v69 = [v73 topAnchor];
  v71 = [(ContainerHeaderView *)self titlePlaceholderView];
  v25 = [v71 topAnchor];
  v26 = [v69 constraintEqualToAnchor:v25];
  v98[2] = v26;
  v27 = [(ContainerHeaderView *)self cardHeaderComponent];
  v28 = [v27 bottomAnchor];
  v29 = [(ContainerHeaderView *)self titlePlaceholderView];
  v30 = [v29 bottomAnchor];
  v31 = [v28 constraintEqualToAnchor:v30];
  v98[3] = v31;
  v32 = [(ContainerHeaderView *)self titlePlaceholderMaxHeightConstraint];
  v98[4] = v32;
  v33 = [NSArray arrayWithObjects:v98 count:5];
  [NSLayoutConstraint activateConstraints:v33];

  v34 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  [(ContainerHeaderView *)self setAccessoryPlaceholderView:v34];

  v35 = [(ContainerHeaderView *)self accessoryPlaceholderView];
  [v35 setTranslatesAutoresizingMaskIntoConstraints:0];

  v36 = [UIStackView alloc];
  v37 = [(ContainerHeaderView *)self titlePlaceholderView];
  v97[0] = v37;
  v38 = [(ContainerHeaderView *)self accessoryPlaceholderView];
  v97[1] = v38;
  v39 = [NSArray arrayWithObjects:v97 count:2];
  v40 = [v36 initWithArrangedSubviews:v39];
  [(ContainerHeaderView *)self setStackView:v40];

  v41 = [(ContainerHeaderView *)self stackView];
  [v41 setTranslatesAutoresizingMaskIntoConstraints:0];

  v42 = [(ContainerHeaderView *)self stackView];
  [v42 setAxis:1];

  v43 = [(ContainerHeaderView *)self stackView];
  LODWORD(v44) = 1148846080;
  [v43 setContentHuggingPriority:1 forAxis:v44];

  v45 = [(ContainerHeaderView *)self stackView];
  [(ContainerHeaderView *)self addSubview:v45];

  v46 = [(ContainerHeaderView *)self accessoryPlaceholderView];
  v47 = [v46 heightAnchor];
  v48 = [v47 constraintEqualToConstant:0.0];
  [(ContainerHeaderView *)self setAccessoryPlaceholderHeightConstraint:v48];

  v95 = [(ContainerHeaderView *)self titlePlaceholderView];
  v93 = [v95 leadingAnchor];
  v91 = [(ContainerHeaderView *)self leadingAnchor];
  v89 = [v93 constraintEqualToAnchor:v91];
  v96[0] = v89;
  v87 = [(ContainerHeaderView *)self titlePlaceholderView];
  v85 = [v87 trailingAnchor];
  v83 = [(ContainerHeaderView *)self trailingAnchor];
  v81 = [v85 constraintEqualToAnchor:v83];
  v96[1] = v81;
  v79 = [(ContainerHeaderView *)self accessoryPlaceholderView];
  v77 = [v79 leadingAnchor];
  v76 = [(ContainerHeaderView *)self leadingAnchor];
  v74 = [v77 constraintEqualToAnchor:v76];
  v96[2] = v74;
  v72 = [(ContainerHeaderView *)self accessoryPlaceholderView];
  v70 = [v72 trailingAnchor];
  v68 = [(ContainerHeaderView *)self trailingAnchor];
  v67 = [v70 constraintEqualToAnchor:v68];
  v96[3] = v67;
  v66 = [(ContainerHeaderView *)self accessoryPlaceholderHeightConstraint];
  v96[4] = v66;
  v65 = [(ContainerHeaderView *)self stackView];
  v64 = [v65 leadingAnchor];
  v63 = [(ContainerHeaderView *)self leadingAnchor];
  v62 = [v64 constraintEqualToAnchor:v63];
  v96[5] = v62;
  v61 = [(ContainerHeaderView *)self stackView];
  v60 = [v61 trailingAnchor];
  v59 = [(ContainerHeaderView *)self trailingAnchor];
  v58 = [v60 constraintEqualToAnchor:v59];
  v96[6] = v58;
  v49 = [(ContainerHeaderView *)self stackView];
  v50 = [v49 topAnchor];
  v51 = [(ContainerHeaderView *)self topAnchor];
  v52 = [v50 constraintEqualToAnchor:v51];
  v96[7] = v52;
  v53 = [(ContainerHeaderView *)self stackView];
  v54 = [v53 bottomAnchor];
  v55 = [(ContainerHeaderView *)self bottomAnchor];
  v56 = [v54 constraintEqualToAnchor:v55];
  v96[8] = v56;
  v57 = [NSArray arrayWithObjects:v96 count:9];
  [NSLayoutConstraint activateConstraints:v57];

  [(ContainerHeaderView *)self updateButtons];
}

- (ContainerHeaderView)initWithCardButton:(id)a3 trailingCardButtons:(id)a4
{
  v6 = a3;
  v7 = a4;
  v24.receiver = self;
  v24.super_class = ContainerHeaderView;
  v8 = [(ContainerHeaderView *)&v24 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v8)
  {
    v9 = [v6 configuration];
    [(ContainerHeaderView *)v8 setMainCardButton:v9];

    v10 = objc_opt_new();
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v7;
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
          v17 = [v16 configuration];

          if (v17)
          {
            v18 = [v16 configuration];
            [v10 addObject:v18];
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

- (ContainerHeaderView)initWithCardButtonType:(unint64_t)a3 cardButtonTintColor:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = ContainerHeaderView;
  v7 = [(ContainerHeaderView *)&v10 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v7)
  {
    v8 = objc_alloc_init(CardButtonConfiguration);
    [(CardButtonConfiguration *)v8 setType:a3];
    [(CardButtonConfiguration *)v8 setTintColor:v6];
    [(ContainerHeaderView *)v7 setMainCardButton:v8];
    [(ContainerHeaderView *)v7 _initViews];
  }

  return v7;
}

- (ContainerHeaderView)initWithCardButtonType:(unint64_t)a3 cardButtonBlurred:(BOOL)a4
{
  v4 = a4;
  v9.receiver = self;
  v9.super_class = ContainerHeaderView;
  v6 = [(ContainerHeaderView *)&v9 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v6)
  {
    v7 = objc_alloc_init(CardButtonConfiguration);
    [(CardButtonConfiguration *)v7 setType:a3];
    [(CardButtonConfiguration *)v7 setBlurred:v4];
    [(ContainerHeaderView *)v6 setMainCardButton:v7];
    [(ContainerHeaderView *)v6 _initViews];
  }

  return v6;
}

- (ContainerHeaderView)initWithCardButtonType:(unint64_t)a3
{
  v7.receiver = self;
  v7.super_class = ContainerHeaderView;
  v4 = [(ContainerHeaderView *)&v7 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  if (v4)
  {
    v5 = objc_alloc_init(CardButtonConfiguration);
    [(CardButtonConfiguration *)v5 setType:a3];
    [(ContainerHeaderView *)v4 setMainCardButton:v5];
    [(ContainerHeaderView *)v4 _initViews];
  }

  return v4;
}

- (ContainerHeaderView)initWithFrame:(CGRect)a3
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