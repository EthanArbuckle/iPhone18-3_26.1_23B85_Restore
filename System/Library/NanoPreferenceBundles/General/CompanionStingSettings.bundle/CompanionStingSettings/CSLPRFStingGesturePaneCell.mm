@interface CSLPRFStingGesturePaneCell
- (CSLPRFStingGesturePaneCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CSLPRFStingGesturePaneCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)_imageForSymbolName:(id)name weight:(int64_t)weight color:(id)color;
- (void)_setChordArrowVisible:(BOOL)visible;
- (void)_setSymbol:(id)symbol;
- (void)_setupViews;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation CSLPRFStingGesturePaneCell

- (CSLPRFStingGesturePaneCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v8.receiver = self;
  v8.super_class = CSLPRFStingGesturePaneCell;
  v5 = [(CSLPRFStingGesturePaneCell *)&v8 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    [(CSLPRFStingGesturePaneCell *)v5 _setupViews];
  }

  return v6;
}

- (CSLPRFStingGesturePaneCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = CSLPRFStingGesturePaneCell;
  v4 = [(CSLPRFStingGesturePaneCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CSLPRFStingGesturePaneCell *)v4 _setupViews];
  }

  return v5;
}

- (void)_setupViews
{
  contentView = [(CSLPRFStingGesturePaneCell *)self contentView];
  v4 = +[UIColor blackColor];
  [contentView setBackgroundColor:v4];

  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [UIImage imageNamed:@"watchCase" inBundle:v5 compatibleWithTraitCollection:0];
  watchCaseImage = self->_watchCaseImage;
  self->_watchCaseImage = v6;

  v8 = [[UIImageView alloc] initWithImage:self->_watchCaseImage];
  watchCaseView = self->_watchCaseView;
  self->_watchCaseView = v8;

  contentView2 = [(CSLPRFStingGesturePaneCell *)self contentView];
  [contentView2 addSubview:self->_watchCaseView];

  v11 = +[UIColor cslprf_stingColor];
  v15 = [(CSLPRFStingGesturePaneCell *)self _imageForSymbolName:@"arrow.right" weight:4 color:v11];

  v12 = [[UIImageView alloc] initWithImage:v15];
  stingArrowView = self->_stingArrowView;
  self->_stingArrowView = v12;

  contentView3 = [(CSLPRFStingGesturePaneCell *)self contentView];
  [contentView3 addSubview:self->_stingArrowView];
}

- (id)_imageForSymbolName:(id)name weight:(int64_t)weight color:(id)color
{
  colorCopy = color;
  nameCopy = name;
  v9 = [UIImageSymbolConfiguration configurationWithPointSize:weight weight:24.0];
  v10 = [UIImageSymbolConfiguration configurationWithHierarchicalColor:colorCopy];

  v11 = [v9 configurationByApplyingConfiguration:v10];
  v12 = [UIImage _systemImageNamed:nameCopy withConfiguration:v11];

  return v12;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = CSLPRFStingGesturePaneCell;
  [(CSLPRFStingGesturePaneCell *)&v20 layoutSubviews];
  [(CSLPRFStingGesturePaneCell *)self center];
  v4 = v3;
  [(UIImageView *)self->_watchCaseView frame];
  [(UIImageView *)self->_watchCaseView setCenter:v4, v5 * 0.5 + 5.0];
  [(UIImageView *)self->_watchCaseView center];
  v7 = v6;
  [(UIImageView *)self->_watchCaseView center];
  [(UIImageView *)self->_actionSymbolView setCenter:v7];
  [(UIImageView *)self->_watchCaseView frame];
  v9 = v8;
  [(UIImageView *)self->_stingArrowView frame];
  v11 = v9 - v10 * 0.5 + -3.0;
  [(UIImageView *)self->_watchCaseView frame];
  [(UIImageView *)self->_stingArrowView setCenter:v11, v12 + 69.0];
  [(UIImageView *)self->_watchCaseView frame];
  v14 = v13;
  [(UIImageView *)self->_watchCaseView frame];
  v16 = v14 + v15;
  [(UIImageView *)self->_sideButtonArrowView bounds];
  v18 = v16 + v17 * 0.5 + 3.0;
  [(UIImageView *)self->_watchCaseView frame];
  [(UIImageView *)self->_sideButtonArrowView setCenter:v18, v19 + 78.0];
}

- (void)_setSymbol:(id)symbol
{
  if (symbol)
  {
    actionSymbolView = self->_actionSymbolView;
    symbolCopy = symbol;
    [(UIImageView *)actionSymbolView removeFromSuperview];
    v6 = self->_actionSymbolView;
    self->_actionSymbolView = 0;

    v7 = +[UIColor cslprf_stingColor];
    v11 = [(CSLPRFStingGesturePaneCell *)self _imageForSymbolName:symbolCopy weight:6 color:v7];

    v8 = [[UIImageView alloc] initWithImage:v11];
    v9 = self->_actionSymbolView;
    self->_actionSymbolView = v8;

    contentView = [(CSLPRFStingGesturePaneCell *)self contentView];
    [contentView addSubview:self->_actionSymbolView];
  }
}

- (void)_setChordArrowVisible:(BOOL)visible
{
  visibleCopy = visible;
  [(UIImageView *)self->_sideButtonArrowView removeFromSuperview];
  sideButtonArrowView = self->_sideButtonArrowView;
  self->_sideButtonArrowView = 0;

  if (visibleCopy)
  {
    v6 = +[UIColor systemWhiteColor];
    v10 = [(CSLPRFStingGesturePaneCell *)self _imageForSymbolName:@"arrow.left" weight:4 color:v6];

    v7 = [[UIImageView alloc] initWithImage:v10];
    v8 = self->_sideButtonArrowView;
    self->_sideButtonArrowView = v7;

    contentView = [(CSLPRFStingGesturePaneCell *)self contentView];
    [contentView addSubview:self->_sideButtonArrowView];
  }
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = CSLPRFStingGesturePaneCell;
  [(CSLPRFStingGesturePaneCell *)&v5 prepareForReuse];
  [(UIImageView *)self->_actionSymbolView removeFromSuperview];
  actionSymbolView = self->_actionSymbolView;
  self->_actionSymbolView = 0;

  [(UIImageView *)self->_sideButtonArrowView removeFromSuperview];
  sideButtonArrowView = self->_sideButtonArrowView;
  self->_sideButtonArrowView = 0;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v7.receiver = self;
  v7.super_class = CSLPRFStingGesturePaneCell;
  specifierCopy = specifier;
  [(CSLPRFStingGesturePaneCell *)&v7 refreshCellContentsWithSpecifier:specifierCopy];
  v5 = [specifierCopy propertyForKey:{@"CSLPRFStingGesturePaneCellSymbolName", v7.receiver, v7.super_class}];
  [(CSLPRFStingGesturePaneCell *)self _setSymbol:v5];
  v6 = [specifierCopy propertyForKey:@"CSLPRFStingGesturePaneCellHasChordArrow"];

  -[CSLPRFStingGesturePaneCell _setChordArrowVisible:](self, "_setChordArrowVisible:", [v6 BOOLValue]);
}

@end