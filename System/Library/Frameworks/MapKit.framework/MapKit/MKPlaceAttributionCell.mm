@interface MKPlaceAttributionCell
+ (id)fontForLabel;
- (MKPlaceAttributionCell)initWithFrame:(CGRect)frame;
- (MKPlaceAttributionCellDelegate)cellDelegate;
- (double)currentHeight;
- (void)_contentSizeDidChange;
- (void)attributionCellButton:(id)button isHighighted:(BOOL)highighted executeAction:(BOOL)action;
- (void)attributionClicked;
- (void)createConstraints;
- (void)setAttributionString:(id)string;
- (void)updateConstraints;
@end

@implementation MKPlaceAttributionCell

- (MKPlaceAttributionCellDelegate)cellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_labelLastBaselineToBottom);

  return WeakRetained;
}

- (void)attributionCellButton:(id)button isHighighted:(BOOL)highighted executeAction:(BOOL)action
{
  highightedCopy = highighted;
  buttonCopy = button;
  if (self->_label == buttonCopy)
  {
    v9 = buttonCopy;
    v8 = 1.0;
    if (highightedCopy)
    {
      v8 = 0.25;
    }

    [*&self->_highlighted setAlpha:v8];
    buttonCopy = v9;
  }
}

- (double)currentHeight
{
  v2 = +[MKPlaceAttributionCell fontForLabel];
  [v2 _mapkit_scaledValueForValue:27.0];
  v4 = v3;
  [v2 _mapkit_scaledValueForValue:18.0];
  v6 = v4 + v5;

  return v6;
}

- (void)setAttributionString:(id)string
{
  v4 = *&self->_highlighted;
  stringCopy = string;
  [v4 setAttributedText:stringCopy];
  string = [stringCopy string];

  [(_MKUILabel *)self->_label setAccessibilityLabel:string];
  accessibilityLabel = [(_MKUILabel *)self->_label accessibilityLabel];
  [(MKPlaceAttributionCell *)self setAccessibilityLabel:accessibilityLabel];

  [(UIView *)self _mapkit_setNeedsUpdateConstraints];
}

- (void)attributionClicked
{
  cellDelegate = [(MKPlaceAttributionCell *)self cellDelegate];
  [cellDelegate openURL];
}

- (void)_contentSizeDidChange
{
  v4 = +[MKPlaceAttributionCell fontForLabel];
  [*&self->_highlighted setFont:v4];
  [v4 _mapkit_scaledValueForValue:27.0];
  [(MKPlaceAttributionCellButton *)self->_labelButton setConstant:?];
  [v4 _mapkit_scaledValueForValue:18.0];
  [(NSLayoutConstraint *)self->_labelBaselineToTop setConstant:-v3];
}

- (void)updateConstraints
{
  attributedText = [*&self->_highlighted attributedText];
  if ([attributedText length])
  {
    isActive = [(NSArray *)self->_visibleConstraints isActive];

    if (isActive)
    {
      [(NSArray *)self->_visibleConstraints setActive:0];
      [MEMORY[0x1E696ACD8] activateConstraints:*&self->super._selected];
      goto LABEL_9;
    }
  }

  else
  {
  }

  attributedText2 = [*&self->_highlighted attributedText];
  if ([attributedText2 length])
  {
  }

  else
  {
    isActive2 = [(NSArray *)self->_visibleConstraints isActive];

    if ((isActive2 & 1) == 0)
    {
      [MEMORY[0x1E696ACD8] deactivateConstraints:*&self->super._selected];
      [(NSArray *)self->_visibleConstraints setActive:1];
    }
  }

LABEL_9:
  v7.receiver = self;
  v7.super_class = MKPlaceAttributionCell;
  [(MKPlaceAttributionCell *)&v7 updateConstraints];
}

- (void)createConstraints
{
  v43[8] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v4 = +[MKPlaceAttributionCell fontForLabel];
  firstBaselineAnchor = [*&self->_highlighted firstBaselineAnchor];
  topAnchor = [(MKPlaceAttributionCell *)self topAnchor];
  v42 = v4;
  [v4 _mapkit_scaledValueForValue:27.0];
  v7 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:?];
  labelButton = self->_labelButton;
  self->_labelButton = v7;

  lastBaselineAnchor = [*&self->_highlighted lastBaselineAnchor];
  bottomAnchor = [(MKPlaceAttributionCell *)self bottomAnchor];
  [v4 _mapkit_scaledValueForValue:18.0];
  v12 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:-v11];
  labelBaselineToTop = self->_labelBaselineToTop;
  self->_labelBaselineToTop = v12;

  LODWORD(v14) = 1148829696;
  [(NSLayoutConstraint *)self->_labelBaselineToTop setPriority:v14];
  v15 = self->_labelButton;
  v43[0] = self->_labelBaselineToTop;
  v43[1] = v15;
  leadingAnchor = [*&self->_highlighted leadingAnchor];
  layoutMarginsGuide = [(MKPlaceAttributionCell *)self layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v38 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v43[2] = v38;
  trailingAnchor = [*&self->_highlighted trailingAnchor];
  layoutMarginsGuide2 = [(MKPlaceAttributionCell *)self layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v34 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v43[3] = v34;
  topAnchor2 = [*&self->_highlighted topAnchor];
  topAnchor3 = [(_MKUILabel *)self->_label topAnchor];
  v31 = [topAnchor2 constraintEqualToAnchor:topAnchor3];
  v43[4] = v31;
  bottomAnchor2 = [*&self->_highlighted bottomAnchor];
  bottomAnchor3 = [(_MKUILabel *)self->_label bottomAnchor];
  v16 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
  v43[5] = v16;
  leadingAnchor3 = [*&self->_highlighted leadingAnchor];
  leadingAnchor4 = [(_MKUILabel *)self->_label leadingAnchor];
  v19 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v43[6] = v19;
  trailingAnchor3 = [*&self->_highlighted trailingAnchor];
  trailingAnchor4 = [(_MKUILabel *)self->_label trailingAnchor];
  v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v43[7] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:8];
  [array addObjectsFromArray:v23];

  v24 = [array copy];
  v25 = *&self->super._selected;
  *&self->super._selected = v24;

  heightAnchor = [(MKPlaceAttributionCell *)self heightAnchor];
  v27 = [heightAnchor constraintEqualToConstant:0.0];
  visibleConstraints = self->_visibleConstraints;
  self->_visibleConstraints = v27;

  [(NSArray *)self->_visibleConstraints setActive:1];
  [(UIView *)self _mapkit_setNeedsUpdateConstraints];
}

- (MKPlaceAttributionCell)initWithFrame:(CGRect)frame
{
  v24.receiver = self;
  v24.super_class = MKPlaceAttributionCell;
  v3 = [(MKPlaceSectionItemView *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKPlaceAttributionCell *)v3 setPreservesSuperviewLayoutMargins:1];
    v5 = [MKPlaceAttributionLabel alloc];
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [(MKPlaceAttributionLabel *)v5 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    v11 = *&v4->_highlighted;
    *&v4->_highlighted = v10;

    v12 = *&v4->_highlighted;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v12 setBackgroundColor:clearColor];

    [*&v4->_highlighted setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = +[MKPlaceAttributionCell fontForLabel];
    [*&v4->_highlighted setFont:v14];

    [*&v4->_highlighted setNumberOfLines:3];
    LODWORD(v15) = 1132068864;
    [*&v4->_highlighted _mapkit_setContentCompressionResistancePriority:0 forAxis:v15];
    [*&v4->_highlighted set_mapkit_themeColorProvider:&__block_literal_global_16550];
    [(MKPlaceAttributionCell *)v4 addSubview:*&v4->_highlighted];
    v16 = [[MKPlaceAttributionCellButton alloc] initWithFrame:v6, v7, v8, v9];
    label = v4->_label;
    v4->_label = v16;

    [(_MKUILabel *)v4->_label setButtonDelegate:v4];
    [(_MKUILabel *)v4->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = v4->_label;
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v18 _mapkit_setBackgroundColor:clearColor2];

    [(_MKUILabel *)v4->_label addTarget:v4 action:sel_attributionClicked forControlEvents:64];
    [(MKPlaceAttributionCell *)v4 addSubview:v4->_label];
    v20 = objc_alloc_init(MEMORY[0x1E69DD060]);
    cellDelegate = v4->_cellDelegate;
    v4->_cellDelegate = v20;

    [(MKPlaceAttributionCellDelegate *)v4->_cellDelegate setAllowedPressTypes:&unk_1F1612108];
    [(MKPlaceAttributionCellDelegate *)v4->_cellDelegate setAllowedTouchTypes:MEMORY[0x1E695E0F0]];
    [(MKPlaceAttributionCell *)v4 addGestureRecognizer:v4->_cellDelegate];
    [(MKPlaceAttributionCellDelegate *)v4->_cellDelegate addTarget:v4 action:sel_attributionClicked];
    [(MKPlaceAttributionCell *)v4 createConstraints];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

+ (id)fontForLabel
{
  v2 = +[MKFontManager sharedManager];
  subtitleFont = [v2 subtitleFont];

  return subtitleFont;
}

@end