@interface LocalSearchView
- (LocalSearchView)initWithFrame:(CGRect)a3;
- (LocalSearchViewDelegate)delegate;
- (double)_localSearchViewHeight;
- (id)textForState:(unint64_t)a3;
- (void)_updateFontsAndAppearance;
- (void)configureStateAnimated:(BOOL)a3;
- (void)customInit;
- (void)executeAction;
- (void)setBottomInset:(double)a3;
- (void)setState:(unint64_t)a3;
- (void)setText:(id)a3 forState:(unint64_t)a4;
- (void)updateTheme;
@end

@implementation LocalSearchView

- (LocalSearchViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (double)_localSearchViewHeight
{
  v2 = sub_10000FA08(self);
  result = 49.0;
  if (v2 == 5)
  {
    return 24.0;
  }

  return result;
}

- (void)configureStateAnimated:(BOOL)a3
{
  v3 = a3;
  [(LocalSearchView *)self _localSearchViewHeight];
  v6 = v5;
  [(UIActivityIndicatorView *)self->_loadingIndicatorView stopAnimating];
  v7 = 0;
  state = self->_state;
  if (state <= 1)
  {
    if (!state)
    {
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_10060E3B0;
      v51[3] = &unk_101661B18;
      v51[4] = self;
      v11 = objc_retainBlock(v51);
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_10060E43C;
      v50[3] = &unk_101661738;
      v50[4] = self;
      v7 = objc_retainBlock(v50);
      v33 = 0;
      v9 = 0;
      v10 = 0;
      v6 = 0.0;
      goto LABEL_10;
    }

    if (state == 1)
    {
      v33 = self->_actionButton;
      v9 = self->_actionButton;
      v49[0] = _NSConcreteStackBlock;
      v49[1] = 3221225472;
      v49[2] = sub_10060E4CC;
      v49[3] = &unk_101661B18;
      v49[4] = self;
      v10 = objc_retainBlock(v49);
      v48[0] = _NSConcreteStackBlock;
      v48[1] = 3221225472;
      v48[2] = sub_10060E72C;
      v48[3] = &unk_101661B18;
      v48[4] = self;
      v11 = objc_retainBlock(v48);
      v47[0] = _NSConcreteStackBlock;
      v47[1] = 3221225472;
      v47[2] = sub_10060E7B8;
      v47[3] = &unk_101661738;
      v47[4] = self;
      v12 = v47;
      goto LABEL_9;
    }
  }

  else
  {
    if ((state - 2) < 2)
    {
      v33 = self->_loadingIndicatorView;
      v9 = self->_loadingLabel;
      v46[0] = _NSConcreteStackBlock;
      v46[1] = 3221225472;
      v46[2] = sub_10060E838;
      v46[3] = &unk_101661B18;
      v46[4] = self;
      v10 = objc_retainBlock(v46);
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_10060EAD0;
      v45[3] = &unk_101661B18;
      v45[4] = self;
      v11 = objc_retainBlock(v45);
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_10060EB5C;
      v44[3] = &unk_101661738;
      v44[4] = self;
      v12 = v44;
LABEL_9:
      v7 = objc_retainBlock(v12);
      goto LABEL_10;
    }

    if (state == 4)
    {
      v33 = self->_errorLabel;
      v9 = self->_errorLabel;
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_10060EC08;
      v43[3] = &unk_101661B18;
      v43[4] = self;
      v10 = objc_retainBlock(v43);
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10060ED70;
      v42[3] = &unk_101661B18;
      v42[4] = self;
      v11 = objc_retainBlock(v42);
      v41[0] = _NSConcreteStackBlock;
      v41[1] = 3221225472;
      v41[2] = sub_10060EDFC;
      v41[3] = &unk_101661738;
      v41[4] = self;
      v12 = v41;
      goto LABEL_9;
    }
  }

  v33 = 0;
  v9 = 0;
  v11 = 0;
  v10 = 0;
LABEL_10:
  [(NSLayoutConstraint *)self->_heightConstraint constant];
  v14 = v13;
  v15 = self->_bottomInset + v6;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_10060EE7C;
  v39[3] = &unk_101654728;
  v16 = v13 != v15;
  v40 = v13 != v15;
  v39[4] = self;
  *&v39[5] = v6;
  v17 = objc_retainBlock(v39);
  if (v10)
  {
    (v10[2])(v10);
    if (self->_buttonMode && v33 != 0 && v9 != 0)
    {
      v30 = [(UIButton *)v33 leadingAnchor];
      v29 = [(LocalSearchView *)self leadingAnchor];
      v28 = [v30 constraintEqualToAnchor:v29 constant:16.0];
      v52[0] = v28;
      [(UIButton *)v9 trailingAnchor];
      v20 = v31 = v11;
      [(LocalSearchView *)self trailingAnchor];
      v21 = v32 = v9;
      v22 = [v20 constraintEqualToAnchor:v21 constant:-16.0];
      v52[1] = v22;
      v23 = [NSArray arrayWithObjects:v52 count:2];
      [NSLayoutConstraint activateConstraints:v23];

      v9 = v32;
      v11 = v31;
    }

    [(LocalSearchView *)self layoutIfNeeded];
  }

  (v17[2])(v17);
  if (v3)
  {
    [(LocalSearchView *)self updateConstraintsIfNeeded];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_10060EEB4;
    v37[3] = &unk_101661090;
    v24 = v11;
    v37[4] = self;
    v38 = v11;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10060EEFC;
    v34[3] = &unk_10164FD60;
    v36 = v16;
    v34[4] = self;
    v35 = v7;
    [UIView animateWithDuration:v37 animations:v34 completion:0.25];

    v25 = v38;
LABEL_22:

    goto LABEL_31;
  }

  [(LocalSearchView *)self layoutIfNeeded];
  if (v11)
  {
    (v11[2])(v11);
  }

  v24 = v11;
  if (v7)
  {
    (v7[2])(v7, 1);
  }

  if (v14 != v15 && (MapsFeature_IsEnabled_SearchAndDiscovery() & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v27 = objc_opt_respondsToSelector();

    if (v27)
    {
      v25 = objc_loadWeakRetained(&self->_delegate);
      [v25 localSearchViewContentSizeChanged];
      goto LABEL_22;
    }
  }

LABEL_31:
}

- (void)setBottomInset:(double)a3
{
  if (self->_bottomInset != a3)
  {
    [(NSLayoutConstraint *)self->_heightConstraint constant];
    bottomInset = self->_bottomInset;
    self->_bottomInset = a3;
    v7 = v6 + a3 - bottomInset;
    heightConstraint = self->_heightConstraint;

    [(NSLayoutConstraint *)heightConstraint setConstant:v7];
  }
}

- (void)setState:(unint64_t)a3
{
  if (self->_state == a3)
  {
    return;
  }

  self->_state = a3;
  if (!MapsFeature_IsEnabled_SearchAndDiscovery())
  {
    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_loadWeakRetained(&self->_delegate);
    v5 = [v4 shouldShowRefreshFooter];

    if (!v5)
    {
      return;
    }

LABEL_6:

    [(LocalSearchView *)self configureStateAnimated:1];
    return;
  }
}

- (void)executeAction
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained localSearchViewSelected:self];
}

- (id)textForState:(unint64_t)a3
{
  switch(a3)
  {
    case 4uLL:
      v4 = 32;
      goto LABEL_7;
    case 3uLL:
      v4 = 40;
LABEL_7:
      v3 = [*(&self->super.super.super.super.isa + v4) text];
      break;
    case 1uLL:
      v3 = [(UIButton *)self->_actionButton titleForState:0];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

- (void)setText:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  if (a4 == 4)
  {
    v7 = 32;
    goto LABEL_7;
  }

  if (a4 == 3)
  {
    v7 = 40;
LABEL_7:
    v8 = v6;
    [*(&self->super.super.super.super.isa + v7) setText:v6];
    goto LABEL_8;
  }

  if (a4 != 1)
  {
    goto LABEL_9;
  }

  v8 = v6;
  [(UIButton *)self->_actionButton setTitle:v6 forState:0];
LABEL_8:
  v6 = v8;
LABEL_9:
}

- (void)_updateFontsAndAppearance
{
  if (sub_10000FA08(self) == 5)
  {
    v13 = [UIColor colorWithDynamicProvider:&stru_101623EE8];
    v3 = [UIFont systemFontOfSize:16.0 weight:UIFontWeightLight];
    v4 = [v3 fontDescriptor];
    v5 = [v4 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

    v6 = [UIFont fontWithDescriptor:v5 size:0.0];
    v7 = [(UIButton *)self->_actionButton titleLabel];
    [v7 setFont:v6];

    IsEnabled_SearchAndDiscovery = MapsFeature_IsEnabled_SearchAndDiscovery();
    actionButton = self->_actionButton;
    if (IsEnabled_SearchAndDiscovery)
    {
      v10 = [(LocalSearchView *)self tintColor];
      [(UIButton *)actionButton setTitleColor:v10 forState:0];
    }

    else
    {
      [(UIButton *)self->_actionButton setTitleColor:v13 forState:0];
      [(UIButton *)self->_actionButton setTintColor:v13];
      v12 = [UIImageSymbolConfiguration configurationWithFont:v6 scale:2];
      v10 = [UIImage systemImageNamed:@"arrow.clockwise" withConfiguration:v12];

      [(UIButton *)self->_actionButton setImage:v10 forState:0];
    }

    [(UILabel *)self->_loadingLabel setTextColor:v13];
    [(UILabel *)self->_errorLabel setTextColor:v13];
    [(UILabel *)self->_loadingLabel setFont:v6];
    [(UILabel *)self->_errorLabel setFont:v6];
    [(UIButton *)self->_actionButton setImageEdgeInsets:0.0, -10.0, 0.0, 0.0];
    [(UIButton *)self->_actionButton setContentEdgeInsets:0.0, 0.0, 0.0, -2.0];
  }

  else
  {
    v11 = +[UIColor secondaryLabelColor];
    [(UILabel *)self->_loadingLabel setTextColor:v11];

    v13 = +[UIColor secondaryLabelColor];
    [(UILabel *)self->_errorLabel setTextColor:?];
  }
}

- (void)customInit
{
  [(LocalSearchView *)self setClipsToBounds:1];
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  contentView = self->_contentView;
  self->_contentView = v7;

  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(LocalSearchView *)self addSubview:self->_contentView];
  v33 = [(UIView *)self->_contentView leadingAnchor];
  v32 = [(LocalSearchView *)self leadingAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v34[0] = v31;
  v30 = [(UIView *)self->_contentView trailingAnchor];
  v29 = [(LocalSearchView *)self trailingAnchor];
  v9 = [v30 constraintEqualToAnchor:v29];
  v34[1] = v9;
  v10 = [(UIView *)self->_contentView topAnchor];
  v11 = [(LocalSearchView *)self topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v34[2] = v12;
  v13 = [(UIView *)self->_contentView bottomAnchor];
  v14 = [(LocalSearchView *)self safeAreaLayoutGuide];
  v15 = [v14 bottomAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  v34[3] = v16;
  v17 = [NSArray arrayWithObjects:v34 count:4];
  [NSLayoutConstraint activateConstraints:v17];

  v18 = [(LocalSearchView *)self heightAnchor];
  v19 = [v18 constraintEqualToConstant:0.0];
  heightConstraint = self->_heightConstraint;
  self->_heightConstraint = v19;

  v21 = [UIButton buttonWithType:0];
  actionButton = self->_actionButton;
  self->_actionButton = v21;

  [(UIButton *)self->_actionButton setAccessibilityIdentifier:@"ActionButton"];
  [(UIButton *)self->_actionButton addTarget:self action:"actionButtonTapped:" forControlEvents:64];
  [(UIButton *)self->_actionButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  loadingIndicatorView = self->_loadingIndicatorView;
  self->_loadingIndicatorView = v23;

  [(UIActivityIndicatorView *)self->_loadingIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  loadingLabel = self->_loadingLabel;
  self->_loadingLabel = v25;

  [(UILabel *)self->_loadingLabel setAccessibilityIdentifier:@"LoadingLabel"];
  [(UILabel *)self->_loadingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  errorLabel = self->_errorLabel;
  self->_errorLabel = v27;

  [(UILabel *)self->_errorLabel setAccessibilityIdentifier:@"ErrorLabel"];
  [(UILabel *)self->_errorLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(NSLayoutConstraint *)self->_heightConstraint setActive:1];
  [(LocalSearchView *)self _mapsui_addSelectGestureRecognizerWithTarget:self action:"actionButtonTapped:"];
  [(LocalSearchView *)self _updateFontsAndAppearance];
}

- (LocalSearchView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = LocalSearchView;
  v3 = [(LocalSearchView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(LocalSearchView *)v3 customInit];
    v4->_state = 0;
  }

  return v4;
}

- (void)updateTheme
{
  if (sub_10000FA08(self) != 5)
  {
    actionButton = self->_actionButton;
    v4 = [(LocalSearchView *)self theme];
    v5 = [v4 controlTintColor];
    [(UIButton *)actionButton setTitleColor:v5 forState:0];
  }

  v6 = [(LocalSearchView *)self theme];
  -[UIActivityIndicatorView setActivityIndicatorViewStyle:](self->_loadingIndicatorView, "setActivityIndicatorViewStyle:", [v6 activityIndicatorStyle]);
}

@end