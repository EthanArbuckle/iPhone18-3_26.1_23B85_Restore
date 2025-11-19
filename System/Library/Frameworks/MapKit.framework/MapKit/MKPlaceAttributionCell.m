@interface MKPlaceAttributionCell
+ (id)fontForLabel;
- (MKPlaceAttributionCell)initWithFrame:(CGRect)a3;
- (MKPlaceAttributionCellDelegate)cellDelegate;
- (double)currentHeight;
- (void)_contentSizeDidChange;
- (void)attributionCellButton:(id)a3 isHighighted:(BOOL)a4 executeAction:(BOOL)a5;
- (void)attributionClicked;
- (void)createConstraints;
- (void)setAttributionString:(id)a3;
- (void)updateConstraints;
@end

@implementation MKPlaceAttributionCell

- (MKPlaceAttributionCellDelegate)cellDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_labelLastBaselineToBottom);

  return WeakRetained;
}

- (void)attributionCellButton:(id)a3 isHighighted:(BOOL)a4 executeAction:(BOOL)a5
{
  v5 = a4;
  v7 = a3;
  if (self->_label == v7)
  {
    v9 = v7;
    v8 = 1.0;
    if (v5)
    {
      v8 = 0.25;
    }

    [*&self->_highlighted setAlpha:v8];
    v7 = v9;
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

- (void)setAttributionString:(id)a3
{
  v4 = *&self->_highlighted;
  v5 = a3;
  [v4 setAttributedText:v5];
  v6 = [v5 string];

  [(_MKUILabel *)self->_label setAccessibilityLabel:v6];
  v7 = [(_MKUILabel *)self->_label accessibilityLabel];
  [(MKPlaceAttributionCell *)self setAccessibilityLabel:v7];

  [(UIView *)self _mapkit_setNeedsUpdateConstraints];
}

- (void)attributionClicked
{
  v2 = [(MKPlaceAttributionCell *)self cellDelegate];
  [v2 openURL];
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
  v3 = [*&self->_highlighted attributedText];
  if ([v3 length])
  {
    v4 = [(NSArray *)self->_visibleConstraints isActive];

    if (v4)
    {
      [(NSArray *)self->_visibleConstraints setActive:0];
      [MEMORY[0x1E696ACD8] activateConstraints:*&self->super._selected];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v5 = [*&self->_highlighted attributedText];
  if ([v5 length])
  {
  }

  else
  {
    v6 = [(NSArray *)self->_visibleConstraints isActive];

    if ((v6 & 1) == 0)
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = +[MKPlaceAttributionCell fontForLabel];
  v5 = [*&self->_highlighted firstBaselineAnchor];
  v6 = [(MKPlaceAttributionCell *)self topAnchor];
  v42 = v4;
  [v4 _mapkit_scaledValueForValue:27.0];
  v7 = [v5 constraintEqualToAnchor:v6 constant:?];
  labelButton = self->_labelButton;
  self->_labelButton = v7;

  v9 = [*&self->_highlighted lastBaselineAnchor];
  v10 = [(MKPlaceAttributionCell *)self bottomAnchor];
  [v4 _mapkit_scaledValueForValue:18.0];
  v12 = [v9 constraintEqualToAnchor:v10 constant:-v11];
  labelBaselineToTop = self->_labelBaselineToTop;
  self->_labelBaselineToTop = v12;

  LODWORD(v14) = 1148829696;
  [(NSLayoutConstraint *)self->_labelBaselineToTop setPriority:v14];
  v15 = self->_labelButton;
  v43[0] = self->_labelBaselineToTop;
  v43[1] = v15;
  v40 = [*&self->_highlighted leadingAnchor];
  v41 = [(MKPlaceAttributionCell *)self layoutMarginsGuide];
  v39 = [v41 leadingAnchor];
  v38 = [v40 constraintEqualToAnchor:v39];
  v43[2] = v38;
  v36 = [*&self->_highlighted trailingAnchor];
  v37 = [(MKPlaceAttributionCell *)self layoutMarginsGuide];
  v35 = [v37 trailingAnchor];
  v34 = [v36 constraintEqualToAnchor:v35];
  v43[3] = v34;
  v33 = [*&self->_highlighted topAnchor];
  v32 = [(_MKUILabel *)self->_label topAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v43[4] = v31;
  v30 = [*&self->_highlighted bottomAnchor];
  v29 = [(_MKUILabel *)self->_label bottomAnchor];
  v16 = [v30 constraintEqualToAnchor:v29];
  v43[5] = v16;
  v17 = [*&self->_highlighted leadingAnchor];
  v18 = [(_MKUILabel *)self->_label leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18];
  v43[6] = v19;
  v20 = [*&self->_highlighted trailingAnchor];
  v21 = [(_MKUILabel *)self->_label trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v43[7] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:8];
  [v3 addObjectsFromArray:v23];

  v24 = [v3 copy];
  v25 = *&self->super._selected;
  *&self->super._selected = v24;

  v26 = [(MKPlaceAttributionCell *)self heightAnchor];
  v27 = [v26 constraintEqualToConstant:0.0];
  visibleConstraints = self->_visibleConstraints;
  self->_visibleConstraints = v27;

  [(NSArray *)self->_visibleConstraints setActive:1];
  [(UIView *)self _mapkit_setNeedsUpdateConstraints];
}

- (MKPlaceAttributionCell)initWithFrame:(CGRect)a3
{
  v24.receiver = self;
  v24.super_class = MKPlaceAttributionCell;
  v3 = [(MKPlaceSectionItemView *)&v24 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v13 = [MEMORY[0x1E69DC888] clearColor];
    [v12 setBackgroundColor:v13];

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
    v19 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v18 _mapkit_setBackgroundColor:v19];

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
    v22 = [MEMORY[0x1E696AD88] defaultCenter];
    [v22 addObserver:v4 selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
  }

  return v4;
}

+ (id)fontForLabel
{
  v2 = +[MKFontManager sharedManager];
  v3 = [v2 subtitleFont];

  return v3;
}

@end