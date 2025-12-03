@interface MKTransitFilterCell
- (MKTransitFilterCell)initWithFrame:(CGRect)frame;
- (void)_contentSizeDidChange;
- (void)_setupLabel;
- (void)setSelected:(BOOL)selected;
@end

@implementation MKTransitFilterCell

- (void)setSelected:(BOOL)selected
{
  if (selected)
  {
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    contentView = [(MKTransitFilterCell *)self contentView];
    [contentView setBackgroundColor:systemBlueColor];

    systemWhiteColor = [MEMORY[0x1E69DC888] systemWhiteColor];
    [(UILabel *)self->_label setTextColor:systemWhiteColor];

    [MEMORY[0x1E69DC888] systemBlueColor];
  }

  else
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    contentView2 = [(MKTransitFilterCell *)self contentView];
    [contentView2 setBackgroundColor:clearColor];

    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)self->_label setTextColor:labelColor];

    [MEMORY[0x1E69DC888] lightGrayColor];
  }
  v14 = ;
  v10 = v14;
  cGColor = [v14 CGColor];
  contentView3 = [(MKTransitFilterCell *)self contentView];
  layer = [contentView3 layer];
  [layer setBorderColor:cGColor];
}

- (void)_contentSizeDidChange
{
  v3 = +[MKFontManager sharedManager];
  sectionHeaderFont = [v3 sectionHeaderFont];
  [(UILabel *)self->_label setFont:sectionHeaderFont];

  v9 = +[MKFontManager sharedManager];
  sectionHeaderFont2 = [v9 sectionHeaderFont];
  [sectionHeaderFont2 _mapkit_scaledValueForValue:32.0];
  v7 = v6 * 0.5;
  contentView = [(MKTransitFilterCell *)self contentView];
  [contentView _setContinuousCornerRadius:v7];
}

- (void)_setupLabel
{
  v24[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  label = self->_label;
  self->_label = v4;

  [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_label setTextAlignment:1];
  [(UILabel *)self->_label setNumberOfLines:1];
  v6 = +[MKFontManager sharedManager];
  sectionHeaderFont = [v6 sectionHeaderFont];
  [(UILabel *)self->_label setFont:sectionHeaderFont];

  contentView = [(MKTransitFilterCell *)self contentView];
  [contentView addSubview:self->_label];
  v18 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(UILabel *)self->_label leadingAnchor];
  leadingAnchor2 = [contentView leadingAnchor];
  v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v24[0] = v21;
  trailingAnchor = [(UILabel *)self->_label trailingAnchor];
  trailingAnchor2 = [contentView trailingAnchor];
  v9 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v24[1] = v9;
  topAnchor = [(UILabel *)self->_label topAnchor];
  topAnchor2 = [contentView topAnchor];
  v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v24[2] = v12;
  bottomAnchor = [(UILabel *)self->_label bottomAnchor];
  bottomAnchor2 = [contentView bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v24[3] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
  [v18 activateConstraints:v16];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel__contentSizeDidChange name:*MEMORY[0x1E69DDC48] object:0];
}

- (MKTransitFilterCell)initWithFrame:(CGRect)frame
{
  v21.receiver = self;
  v21.super_class = MKTransitFilterCell;
  v3 = [(MKTransitFilterCell *)&v21 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MKTransitFilterCell *)v3 _setupLabel];
    v5 = +[MKFontManager sharedManager];
    sectionHeaderFont = [v5 sectionHeaderFont];
    [sectionHeaderFont _mapkit_scaledValueForValue:32.0];
    v8 = v7 * 0.5;
    contentView = [(MKTransitFilterCell *)v4 contentView];
    [contentView _setContinuousCornerRadius:v8];

    contentView2 = [(MKTransitFilterCell *)v4 contentView];
    layer = [contentView2 layer];
    [layer setMasksToBounds:1];

    contentView3 = [(MKTransitFilterCell *)v4 contentView];
    layer2 = [contentView3 layer];
    [layer2 setBorderWidth:1.0];

    lightGrayColor = [MEMORY[0x1E69DC888] lightGrayColor];
    cGColor = [lightGrayColor CGColor];
    contentView4 = [(MKTransitFilterCell *)v4 contentView];
    layer3 = [contentView4 layer];
    [layer3 setBorderColor:cGColor];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    contentView5 = [(MKTransitFilterCell *)v4 contentView];
    [contentView5 setBackgroundColor:clearColor];
  }

  return v4;
}

@end