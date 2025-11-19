@interface TwoLineCollectionViewListCell
+ (id)identifier;
- (PersonalizedItem)personalizedItemForQuickActionMenu;
- (TwoLineCollectionViewListCell)initWithFrame:(CGRect)a3;
- (double)leadingPadding;
- (void)_updateAccessories;
- (void)setSelected:(BOOL)a3;
- (void)setViewModel:(id)a3;
- (void)updateLeadingSpace:(double)a3;
@end

@implementation TwoLineCollectionViewListCell

- (PersonalizedItem)personalizedItemForQuickActionMenu
{
  v2 = self;
  v3 = [(TwoLineCollectionViewListCell *)v2 viewModel];
  if (v3 && (v4 = [(TwoLinesContentViewModel *)v3 personalizedItemForQuickActionMenuCreator], swift_unknownObjectRelease(), v4))
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
  v3 = [(TwoLinesContentViewModel *)self->_viewModel customAccessoryView];
  if (!v3)
  {
    v6 = [(TwoLinesContentViewModel *)self->_viewModel cellAccessories];
    if (![v6 count])
    {
      [(TwoLineCollectionViewListCell *)self setAccessories:&__NSArray0__struct];
      goto LABEL_13;
    }

    v13 = [(TwoLinesContentViewModel *)self->_viewModel cellAccessories];
    v7 = v13;
    if (v13)
    {
      v12 = v13;
    }

    else
    {
      v12 = &__NSArray0__struct;
    }

    v11 = self;
    goto LABEL_10;
  }

  v4 = [UICellAccessoryCustomView alloc];
  v5 = [(TwoLinesContentViewModel *)self->_viewModel customAccessoryView];
  v6 = [v4 initWithCustomView:v5 placement:1];

  [v6 setReservedLayoutWidth:0.0];
  v14 = v6;
  v7 = [NSArray arrayWithObjects:&v14 count:1];
  v8 = [(TwoLineCollectionViewListCell *)self accessories];
  v9 = v8;
  if (v8 == v7)
  {

    goto LABEL_12;
  }

  v10 = [v8 isEqual:v7];

  if ((v10 & 1) == 0)
  {
    v11 = self;
    v12 = v7;
LABEL_10:
    [(TwoLineCollectionViewListCell *)v11 setAccessories:v12];
  }

LABEL_12:

LABEL_13:
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  viewModel = self->_viewModel;
  if (viewModel != v5)
  {
    v11 = v5;
    v7 = [(TwoLinesContentViewModel *)viewModel observers];
    [v7 unregisterObserver:self];

    objc_storeStrong(&self->_viewModel, a3);
    [(TwoLinesContentView *)self->_twoLinesContentView setViewModel:v11];
    v8 = [(TwoLinesContentViewModel *)self->_viewModel observers];
    [v8 registerObserver:self];

    v9 = [(TwoLinesContentView *)self->_twoLinesContentView viewModel];
    v10 = [v9 axIdentifier];
    [(TwoLineCollectionViewListCell *)self setAccessibilityIdentifier:v10];

    [(TwoLineCollectionViewListCell *)self _updateAccessories];
    v5 = v11;
  }
}

- (void)updateLeadingSpace:(double)a3
{
  if (self->_leadingSpace != a3)
  {
    v5 = [(TwoLineCollectionViewListCell *)self leadingContraint];
    [v5 setActive:0];

    self->_leadingSpace = a3;
    v6 = [(TwoLinesContentView *)self->_twoLinesContentView leadingAnchor];
    v7 = [(TwoLineCollectionViewListCell *)self contentView];
    v8 = [v7 leadingAnchor];
    v9 = [v6 constraintEqualToAnchor:v8 constant:a3];
    [(TwoLineCollectionViewListCell *)self setLeadingContraint:v9];

    v10 = [(TwoLineCollectionViewListCell *)self leadingContraint];
    [v10 setActive:1];
  }
}

- (double)leadingPadding
{
  sub_10000FA08(self);
  [(TwoLineCollectionViewListCell *)self setLeadingSpace:16.0];

  [(TwoLineCollectionViewListCell *)self leadingSpace];
  return result;
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = TwoLineCollectionViewListCell;
  [(TwoLineCollectionViewListCell *)&v5 setSelected:?];
  [(TwoLinesContentView *)self->_twoLinesContentView setIsParentCellSelected:v3];
}

- (TwoLineCollectionViewListCell)initWithFrame:(CGRect)a3
{
  v30.receiver = self;
  v30.super_class = TwoLineCollectionViewListCell;
  v3 = [(TwoLineCollectionViewListCell *)&v30 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
    v8 = [(TwoLineCollectionViewListCell *)v3 contentView];
    [v8 addSubview:v3->_twoLinesContentView];

    v9 = [(TwoLinesContentView *)v3->_twoLinesContentView leadingAnchor];
    v10 = [(TwoLineCollectionViewListCell *)v3 contentView];
    v11 = [v10 leadingAnchor];
    [(TwoLineCollectionViewListCell *)v3 leadingPadding];
    v12 = [v9 constraintEqualToAnchor:v11 constant:?];
    leadingContraint = v3->_leadingContraint;
    v3->_leadingContraint = v12;

    v28 = [(TwoLinesContentView *)v3->_twoLinesContentView topAnchor];
    v29 = [(TwoLineCollectionViewListCell *)v3 contentView];
    v27 = [v29 topAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v31[0] = v26;
    v31[1] = v3->_leadingContraint;
    v14 = [(TwoLinesContentView *)v3->_twoLinesContentView trailingAnchor];
    v15 = [(TwoLineCollectionViewListCell *)v3 contentView];
    v16 = [v15 trailingAnchor];
    v17 = [v14 constraintEqualToAnchor:v16 constant:-10.0];
    v31[2] = v17;
    v18 = [(TwoLinesContentView *)v3->_twoLinesContentView bottomAnchor];
    v19 = [(TwoLineCollectionViewListCell *)v3 contentView];
    v20 = [v19 bottomAnchor];
    LODWORD(v21) = 1144750080;
    v22 = [v18 constraintEqualToAnchor:v20 constant:0.0 priority:v21];
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