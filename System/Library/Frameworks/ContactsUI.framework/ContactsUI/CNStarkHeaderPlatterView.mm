@interface CNStarkHeaderPlatterView
- (CNStarkHeaderPlatterView)initWithLabelText:(id)text accessoryImage:(id)image;
- (void)_updateForFocusedState:(BOOL)state;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
@end

@implementation CNStarkHeaderPlatterView

- (void)_updateForFocusedState:(BOOL)state
{
  if (state)
  {
    v4 = +[CNUIColorRepository carPlaySiriButtonBackgroundHighlightedColor];
    [(CNStarkHeaderPlatterView *)self setBackgroundColor:v4];

    v5 = +[CNUIColorRepository carPlaySiriButtonTextHighlightedColor];
    label = [(CNStarkHeaderPlatterView *)self label];
    [label setTextColor:v5];

    +[CNUIColorRepository carPlaySiriButtonTextHighlightedColor];
  }

  else
  {
    v7 = +[CNUIColorRepository carPlaySiriButtonBackgroundColor];
    [(CNStarkHeaderPlatterView *)self setBackgroundColor:v7];

    v8 = +[CNUIColorRepository carPlaySiriButtonTextColor];
    label2 = [(CNStarkHeaderPlatterView *)self label];
    [label2 setTextColor:v8];

    +[CNUIColorRepository carPlaySiriButtonTextColor];
  }
  v11 = ;
  accessory = [(CNStarkHeaderPlatterView *)self accessory];
  [accessory setTintColor:v11];
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v11.receiver = self;
  v11.super_class = CNStarkHeaderPlatterView;
  [(CNStarkHeaderPlatterView *)&v11 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedView = [contextCopy nextFocusedView];
  v8 = nextFocusedView;
  if (nextFocusedView == self)
  {

LABEL_5:
    nextFocusedView2 = [contextCopy nextFocusedView];
    [(CNStarkHeaderPlatterView *)self _updateForFocusedState:nextFocusedView2 == self];

    goto LABEL_6;
  }

  previouslyFocusedView = [contextCopy previouslyFocusedView];

  if (previouslyFocusedView == self)
  {
    goto LABEL_5;
  }

LABEL_6:
}

- (CNStarkHeaderPlatterView)initWithLabelText:(id)text accessoryImage:(id)image
{
  v55[5] = *MEMORY[0x1E69E9840];
  textCopy = text;
  imageCopy = image;
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
    currentEnvironment = [MEMORY[0x1E69966E8] currentEnvironment];
    featureFlags = [currentEnvironment featureFlags];
    v16 = [featureFlags isFeatureEnabled:29];

    if (v16)
    {
      layer = [(CNStarkHeaderPlatterView *)v12 layer];
      [layer setCornerRadius:22.0];
    }

    else
    {
      layer = [(CNStarkHeaderPlatterView *)v12 traitCollection];
      _UITableViewDefaultSectionCornerRadiusForTraitCollection();
      v19 = v18;
      layer2 = [(CNStarkHeaderPlatterView *)v12 layer];
      [layer2 setCornerRadius:v19];
    }

    v21 = *MEMORY[0x1E69796E8];
    layer3 = [(CNStarkHeaderPlatterView *)v12 layer];
    [layer3 setCornerCurve:v21];

    v23 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v8, v9, v10, v11}];
    label = v12->_label;
    v12->_label = v23;

    [(UILabel *)v12->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [textCopy copy];
    [(UILabel *)v12->_label setText:v25];

    v26 = +[CNUIFontRepository carPlayNoContentViewSiriButtonFont];
    [(UILabel *)v12->_label setFont:v26];

    v27 = +[CNUIColorRepository carPlaySiriButtonTextColor];
    [(UILabel *)v12->_label setTextColor:v27];

    [(UILabel *)v12->_label setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v12->_label setMinimumScaleFactor:0.7];
    [(CNStarkHeaderPlatterView *)v12 addSubview:v12->_label];
    v28 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageCopy];
    v52 = imageCopy;
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
    centerYAnchor = [(UILabel *)v12->_label centerYAnchor];
    centerYAnchor2 = [(CNStarkHeaderPlatterView *)v12 centerYAnchor];
    v49 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v55[0] = v49;
    leadingAnchor = [(UILabel *)v12->_label leadingAnchor];
    leadingAnchor2 = [(CNStarkHeaderPlatterView *)v12 leadingAnchor];
    v46 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:12.0];
    v55[1] = v46;
    trailingAnchor = [(UILabel *)v12->_label trailingAnchor];
    leadingAnchor3 = [(UIImageView *)v12->_accessory leadingAnchor];
    v35 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-12.0];
    v55[2] = v35;
    centerYAnchor3 = [(UIImageView *)v12->_accessory centerYAnchor];
    centerYAnchor4 = [(CNStarkHeaderPlatterView *)v12 centerYAnchor];
    [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v38 = v53 = textCopy;
    v55[3] = v38;
    trailingAnchor2 = [(UIImageView *)v12->_accessory trailingAnchor];
    trailingAnchor3 = [(CNStarkHeaderPlatterView *)v12 trailingAnchor];
    v41 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-17.0];
    v55[4] = v41;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:5];
    [v45 activateConstraints:v42];

    imageCopy = v52;
    textCopy = v53;
  }

  return v12;
}

@end