@interface TwoLineCollectionViewListCell
+ (id)identifier;
- (PersonalizedItem)personalizedItemForQuickActionMenu;
- (TwoLineCollectionViewListCell)initWithFrame:(CGRect)frame;
- (double)leadingPadding;
- (void)_updateAccessories;
- (void)setSelected:(BOOL)selected;
- (void)setViewModel:(id)model;
- (void)updateLeadingSpace:(double)space;
@end

@implementation TwoLineCollectionViewListCell

- (PersonalizedItem)personalizedItemForQuickActionMenu
{
  selfCopy = self;
  viewModel = [(TwoLineCollectionViewListCell *)selfCopy viewModel];
  if (viewModel && (v4 = [(TwoLinesContentViewModel *)viewModel personalizedItemForQuickActionMenuCreator], swift_unknownObjectRelease(), v4))
  {
    v5 = v4[2](v4);

    _Block_release(v4);
    v6 = v5;
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)_updateAccessories
{
  customAccessoryView = [(TwoLinesContentViewModel *)self->_viewModel customAccessoryView];
  if (!customAccessoryView)
  {
    cellAccessories = [(TwoLinesContentViewModel *)self->_viewModel cellAccessories];
    if (![cellAccessories count])
    {
      [(TwoLineCollectionViewListCell *)self setAccessories:&__NSArray0__struct];
      goto LABEL_13;
    }

    cellAccessories2 = [(TwoLinesContentViewModel *)self->_viewModel cellAccessories];
    v7 = cellAccessories2;
    if (cellAccessories2)
    {
      v12 = cellAccessories2;
    }

    else
    {
      v12 = &__NSArray0__struct;
    }

    selfCopy2 = self;
    goto LABEL_10;
  }

  v4 = [UICellAccessoryCustomView alloc];
  customAccessoryView2 = [(TwoLinesContentViewModel *)self->_viewModel customAccessoryView];
  cellAccessories = [v4 initWithCustomView:customAccessoryView2 placement:1];

  [cellAccessories setReservedLayoutWidth:0.0];
  v14 = cellAccessories;
  v7 = [NSArray arrayWithObjects:&v14 count:1];
  accessories = [(TwoLineCollectionViewListCell *)self accessories];
  v9 = accessories;
  if (accessories == v7)
  {

    goto LABEL_12;
  }

  v10 = [accessories isEqual:v7];

  if ((v10 & 1) == 0)
  {
    selfCopy2 = self;
    v12 = v7;
LABEL_10:
    [(TwoLineCollectionViewListCell *)selfCopy2 setAccessories:v12];
  }

LABEL_12:

LABEL_13:
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  viewModel = self->_viewModel;
  if (viewModel != modelCopy)
  {
    v11 = modelCopy;
    observers = [(TwoLinesContentViewModel *)viewModel observers];
    [observers unregisterObserver:self];

    objc_storeStrong(&self->_viewModel, model);
    [(TwoLinesContentView *)self->_twoLinesContentView setViewModel:v11];
    observers2 = [(TwoLinesContentViewModel *)self->_viewModel observers];
    [observers2 registerObserver:self];

    viewModel = [(TwoLinesContentView *)self->_twoLinesContentView viewModel];
    axIdentifier = [viewModel axIdentifier];
    [(TwoLineCollectionViewListCell *)self setAccessibilityIdentifier:axIdentifier];

    [(TwoLineCollectionViewListCell *)self _updateAccessories];
    modelCopy = v11;
  }
}

- (void)updateLeadingSpace:(double)space
{
  if (self->_leadingSpace != space)
  {
    leadingContraint = [(TwoLineCollectionViewListCell *)self leadingContraint];
    [leadingContraint setActive:0];

    self->_leadingSpace = space;
    leadingAnchor = [(TwoLinesContentView *)self->_twoLinesContentView leadingAnchor];
    contentView = [(TwoLineCollectionViewListCell *)self contentView];
    leadingAnchor2 = [contentView leadingAnchor];
    v9 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:space];
    [(TwoLineCollectionViewListCell *)self setLeadingContraint:v9];

    leadingContraint2 = [(TwoLineCollectionViewListCell *)self leadingContraint];
    [leadingContraint2 setActive:1];
  }
}

- (double)leadingPadding
{
  sub_10000FA08(self);
  [(TwoLineCollectionViewListCell *)self setLeadingSpace:16.0];

  [(TwoLineCollectionViewListCell *)self leadingSpace];
  return result;
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v5.receiver = self;
  v5.super_class = TwoLineCollectionViewListCell;
  [(TwoLineCollectionViewListCell *)&v5 setSelected:?];
  [(TwoLinesContentView *)self->_twoLinesContentView setIsParentCellSelected:selectedCopy];
}

- (TwoLineCollectionViewListCell)initWithFrame:(CGRect)frame
{
  v30.receiver = self;
  v30.super_class = TwoLineCollectionViewListCell;
  v3 = [(TwoLineCollectionViewListCell *)&v30 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    if ([objc_opt_class() hasClearBackground])
    {
      v4 = +[UIColor clearColor];
      [(TwoLineCollectionViewListCell *)v3 setBackgroundColor:v4];

      v5 = objc_alloc_init(UIView);
      [(TwoLineCollectionViewListCell *)v3 setBackgroundView:v5];
    }

    v6 = [[TwoLinesContentView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    twoLinesContentView = v3->_twoLinesContentView;
    v3->_twoLinesContentView = v6;

    [(TwoLinesContentView *)v3->_twoLinesContentView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(TwoLineCollectionViewListCell *)v3 contentView];
    [contentView addSubview:v3->_twoLinesContentView];

    leadingAnchor = [(TwoLinesContentView *)v3->_twoLinesContentView leadingAnchor];
    contentView2 = [(TwoLineCollectionViewListCell *)v3 contentView];
    leadingAnchor2 = [contentView2 leadingAnchor];
    [(TwoLineCollectionViewListCell *)v3 leadingPadding];
    v12 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    leadingContraint = v3->_leadingContraint;
    v3->_leadingContraint = v12;

    topAnchor = [(TwoLinesContentView *)v3->_twoLinesContentView topAnchor];
    contentView3 = [(TwoLineCollectionViewListCell *)v3 contentView];
    topAnchor2 = [contentView3 topAnchor];
    v26 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v31[0] = v26;
    v31[1] = v3->_leadingContraint;
    trailingAnchor = [(TwoLinesContentView *)v3->_twoLinesContentView trailingAnchor];
    contentView4 = [(TwoLineCollectionViewListCell *)v3 contentView];
    trailingAnchor2 = [contentView4 trailingAnchor];
    v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
    v31[2] = v17;
    bottomAnchor = [(TwoLinesContentView *)v3->_twoLinesContentView bottomAnchor];
    contentView5 = [(TwoLineCollectionViewListCell *)v3 contentView];
    bottomAnchor2 = [contentView5 bottomAnchor];
    LODWORD(v21) = 1144750080;
    v22 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0 priority:v21];
    v31[3] = v22;
    v23 = [NSArray arrayWithObjects:v31 count:4];
    [NSLayoutConstraint activateConstraints:v23];

    if (sub_10000FA08(v3) == 5)
    {
      [(TwoLineCollectionViewListCell *)v3 _maps_setCollectionViewCellBackgroundConfiguration];
    }

    v24 = +[NSNotificationCenter defaultCenter];
    [v24 addObserver:v3 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v3;
}

+ (id)identifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end