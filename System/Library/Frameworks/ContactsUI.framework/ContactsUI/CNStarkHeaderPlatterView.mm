@interface CNStarkHeaderPlatterView
- (CNStarkHeaderPlatterView)initWithLabelText:(id)a3 accessoryImage:(id)a4;
- (void)_updateForFocusedState:(BOOL)a3;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
@end

@implementation CNStarkHeaderPlatterView

- (void)_updateForFocusedState:(BOOL)a3
{
  if (a3)
  {
    v4 = +[CNUIColorRepository carPlaySiriButtonBackgroundHighlightedColor];
    [(CNStarkHeaderPlatterView *)self setBackgroundColor:v4];

    v5 = +[CNUIColorRepository carPlaySiriButtonTextHighlightedColor];
    v6 = [(CNStarkHeaderPlatterView *)self label];
    [v6 setTextColor:v5];

    +[CNUIColorRepository carPlaySiriButtonTextHighlightedColor];
  }

  else
  {
    v7 = +[CNUIColorRepository carPlaySiriButtonBackgroundColor];
    [(CNStarkHeaderPlatterView *)self setBackgroundColor:v7];

    v8 = +[CNUIColorRepository carPlaySiriButtonTextColor];
    v9 = [(CNStarkHeaderPlatterView *)self label];
    [v9 setTextColor:v8];

    +[CNUIColorRepository carPlaySiriButtonTextColor];
  }
  v11 = ;
  v10 = [(CNStarkHeaderPlatterView *)self accessory];
  [v10 setTintColor:v11];
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = CNStarkHeaderPlatterView;
  [(CNStarkHeaderPlatterView *)&v11 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedView];
  v8 = v7;
  if (v7 == self)
  {

LABEL_5:
    v10 = [v6 nextFocusedView];
    [(CNStarkHeaderPlatterView *)self _updateForFocusedState:v10 == self];

    goto LABEL_6;
  }

  v9 = [v6 previouslyFocusedView];

  if (v9 == self)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (CNStarkHeaderPlatterView)initWithLabelText:(id)a3 accessoryImage:(id)a4
{
  v55[5] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v54.receiver = self;
  v54.super_class = CNStarkHeaderPlatterView;
  v8 = *MEMORY[0x1E695F058];
  v9 = *(MEMORY[0x1E695F058] + 8);
  v10 = *(MEMORY[0x1E695F058] + 16);
  v11 = *(MEMORY[0x1E695F058] + 24);
  v12 = [(CNStarkHeaderPlatterView *)&v54 initWithFrame:*MEMORY[0x1E695F058], v9, v10, v11];
  if (v12)
  {
    v13 = +[CNUIColorRepository carPlaySiriButtonBackgroundColor];
    [(CNStarkHeaderPlatterView *)v12 setBackgroundColor:v13];

    [(CNStarkHeaderPlatterView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = [MEMORY[0x1E69966E8] currentEnvironment];
    v15 = [v14 featureFlags];
    v16 = [v15 isFeatureEnabled:29];

    if (v16)
    {
      v17 = [(CNStarkHeaderPlatterView *)v12 layer];
      [v17 setCornerRadius:22.0];
    }

    else
    {
      v17 = [(CNStarkHeaderPlatterView *)v12 traitCollection];
      _UITableViewDefaultSectionCornerRadiusForTraitCollection();
      v19 = v18;
      v20 = [(CNStarkHeaderPlatterView *)v12 layer];
      [v20 setCornerRadius:v19];
    }

    v21 = *MEMORY[0x1E69796E8];
    v22 = [(CNStarkHeaderPlatterView *)v12 layer];
    [v22 setCornerCurve:v21];

    v23 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v8, v9, v10, v11}];
    label = v12->_label;
    v12->_label = v23;

    [(UILabel *)v12->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [v6 copy];
    [(UILabel *)v12->_label setText:v25];

    v26 = +[CNUIFontRepository carPlayNoContentViewSiriButtonFont];
    [(UILabel *)v12->_label setFont:v26];

    v27 = +[CNUIColorRepository carPlaySiriButtonTextColor];
    [(UILabel *)v12->_label setTextColor:v27];

    [(UILabel *)v12->_label setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v12->_label setMinimumScaleFactor:0.7];
    [(CNStarkHeaderPlatterView *)v12 addSubview:v12->_label];
    v28 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v7];
    v52 = v7;
    accessory = v12->_accessory;
    v12->_accessory = v28;

    [(UIImageView *)v12->_accessory setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v30) = 1148846080;
    [(UIImageView *)v12->_accessory setContentHuggingPriority:0 forAxis:v30];
    LODWORD(v31) = 1148846080;
    [(UIImageView *)v12->_accessory setContentHuggingPriority:1 forAxis:v31];
    LODWORD(v32) = 1148846080;
    [(UIImageView *)v12->_accessory setContentCompressionResistancePriority:0 forAxis:v32];
    v33 = +[CNUIColorRepository carPlaySiriButtonTextColor];
    [(UIImageView *)v12->_accessory setTintColor:v33];

    [(CNStarkHeaderPlatterView *)v12 addSubview:v12->_accessory];
    v45 = MEMORY[0x1E696ACD8];
    v51 = [(UILabel *)v12->_label centerYAnchor];
    v50 = [(CNStarkHeaderPlatterView *)v12 centerYAnchor];
    v49 = [v51 constraintEqualToAnchor:v50];
    v55[0] = v49;
    v48 = [(UILabel *)v12->_label leadingAnchor];
    v47 = [(CNStarkHeaderPlatterView *)v12 leadingAnchor];
    v46 = [v48 constraintEqualToAnchor:v47 constant:12.0];
    v55[1] = v46;
    v44 = [(UILabel *)v12->_label trailingAnchor];
    v34 = [(UIImageView *)v12->_accessory leadingAnchor];
    v35 = [v44 constraintEqualToAnchor:v34 constant:-12.0];
    v55[2] = v35;
    v36 = [(UIImageView *)v12->_accessory centerYAnchor];
    v37 = [(CNStarkHeaderPlatterView *)v12 centerYAnchor];
    [v36 constraintEqualToAnchor:v37];
    v38 = v53 = v6;
    v55[3] = v38;
    v39 = [(UIImageView *)v12->_accessory trailingAnchor];
    v40 = [(CNStarkHeaderPlatterView *)v12 trailingAnchor];
    v41 = [v39 constraintEqualToAnchor:v40 constant:-17.0];
    v55[4] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:5];
    [v45 activateConstraints:v42];

    v7 = v52;
    v6 = v53;
  }

  return v12;
}

@end