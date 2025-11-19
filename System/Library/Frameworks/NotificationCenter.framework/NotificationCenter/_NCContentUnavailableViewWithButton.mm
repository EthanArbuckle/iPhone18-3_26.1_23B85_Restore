@interface _NCContentUnavailableViewWithButton
- (_NCContentUnavailableViewWithButton)initWithTitle:(id)a3 buttonAction:(id)a4;
- (id)_visualStylingProviderForCategory:(int64_t)a3;
- (void)_buttonPressed:(id)a3;
- (void)_configureBackgroundView;
- (void)_configureTitleLabelWithTitle:(id)a3;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateVisualStyling;
- (void)didMoveToWindow;
@end

@implementation _NCContentUnavailableViewWithButton

- (_NCContentUnavailableViewWithButton)initWithTitle:(id)a3 buttonAction:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _NCContentUnavailableViewWithButton;
  v8 = [(_NCContentUnavailableViewWithButton *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(_NCContentUnavailableViewWithButton *)v8 setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
    [(_NCContentUnavailableViewWithButton *)v9 setPreservesSuperviewLayoutMargins:1];
    [(_NCContentUnavailableViewWithButton *)v9 _configureBackgroundView];
    [(_NCContentUnavailableViewWithButton *)v9 _configureTitleLabelWithTitle:v6];
    [(_NCContentUnavailableViewWithButton *)v9 setButtonHandler:v7];
    v10 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:v9 action:sel__buttonPressed_];
    [v10 setNumberOfTapsRequired:1];
    [v10 setNumberOfTouchesRequired:1];
    [(UIView *)v9->_backgroundView addGestureRecognizer:v10];
  }

  return v9;
}

- (void)didMoveToWindow
{
  v4.receiver = self;
  v4.super_class = _NCContentUnavailableViewWithButton;
  [(_NCContentUnavailableViewWithButton *)&v4 didMoveToWindow];
  v3 = [(_NCContentUnavailableViewWithButton *)self window];

  if (v3)
  {
    [(_NCContentUnavailableViewWithButton *)self _updateVisualStyling];
  }
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = _NCContentUnavailableViewWithButton;
  [(_NCContentUnavailableViewWithButton *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(_NCContentUnavailableViewWithButton *)self _updateVisualStyling];
}

- (void)_configureTitleLabelWithTitle:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  if (!self->_titleLabel)
  {
    v4 = MEMORY[0x277D756B8];
    v5 = a3;
    v6 = objc_alloc_init(v4);
    titleLabel = self->_titleLabel;
    self->_titleLabel = v6;

    [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v8 = self->_titleLabel;
    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769D0]];
    [(UILabel *)v8 setFont:v9];

    [(UILabel *)self->_titleLabel setTextAlignment:1];
    [(UILabel *)self->_titleLabel setText:v5];

    [(_NCContentUnavailableViewWithButton *)self addSubview:self->_titleLabel];
    v10 = MEMORY[0x277CCAAD0];
    v11 = _NSDictionaryOfVariableBindings(&cfstr_Titlelabel.isa, self->_titleLabel, 0);
    v12 = [v10 constraintsWithVisualFormat:@"H:|-(padding)-[_titleLabel]-(padding)-|" options:0 metrics:&unk_284052090 views:v11];

    [(_NCContentUnavailableViewWithButton *)self addConstraints:v12];
    v13 = [(_NCContentUnavailableViewWithButton *)self layoutMarginsGuide];
    v14 = [v13 centerYAnchor];
    v15 = [(UILabel *)self->_titleLabel centerYAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v21[0] = v16;
    v17 = [(UILabel *)self->_titleLabel heightAnchor];
    v18 = [v17 constraintEqualToConstant:30.0];
    v21[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];

    [(_NCContentUnavailableViewWithButton *)self addConstraints:v19];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_configureBackgroundView
{
  v17[2] = *MEMORY[0x277D85DE8];
  if (!self->_backgroundView)
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D18]);
    backgroundView = self->_backgroundView;
    self->_backgroundView = v3;

    [(UIView *)self->_backgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [(UIView *)self->_backgroundView layer];
    [v5 setCornerRadius:4.0];

    [(_NCContentUnavailableViewWithButton *)self addSubview:self->_backgroundView];
    v6 = MEMORY[0x277CCAAD0];
    v7 = _NSDictionaryOfVariableBindings(&cfstr_Backgroundview.isa, self->_backgroundView, 0);
    v8 = [v6 constraintsWithVisualFormat:@"H:|-(padding)-[_backgroundView]-(padding)-|" options:0 metrics:&unk_2840520B8 views:v7];

    [(_NCContentUnavailableViewWithButton *)self addConstraints:v8];
    v9 = [(_NCContentUnavailableViewWithButton *)self layoutMarginsGuide];
    v10 = [v9 centerYAnchor];
    v11 = [(UIView *)self->_backgroundView centerYAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v17[0] = v12;
    v13 = [(UIView *)self->_backgroundView heightAnchor];
    v14 = [v13 constraintEqualToConstant:30.0];
    v17[1] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];

    [(_NCContentUnavailableViewWithButton *)self addConstraints:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)_visualStylingProviderForCategory:(int64_t)a3
{
  v4 = MEMORY[0x277D26740];
  v5 = [(_NCContentUnavailableViewWithButton *)self traitCollection];
  v6 = [v4 _visualStylingProviderForRecipe:3 category:a3 andUserInterfaceStyle:{objc_msgSend(v5, "userInterfaceStyle")}];

  return v6;
}

- (void)_updateVisualStyling
{
  titleLabel = self->_titleLabel;
  v4 = [(_NCContentUnavailableViewWithButton *)self _visualStylingProviderForCategory:1];
  v5 = [v4 _visualStylingForStyle:0];
  [(UILabel *)titleLabel mt_replaceVisualStyling:v5];

  backgroundView = self->_backgroundView;
  v8 = [(_NCContentUnavailableViewWithButton *)self _visualStylingProviderForCategory:2];
  v7 = [v8 _visualStylingForStyle:4];
  [(UIView *)backgroundView mt_replaceVisualStyling:v7];
}

- (void)_buttonPressed:(id)a3
{
  v4 = [(_NCContentUnavailableViewWithButton *)self buttonHandler];

  if (v4)
  {
    v5 = [(_NCContentUnavailableViewWithButton *)self buttonHandler];
    v5[2]();
  }
}

@end