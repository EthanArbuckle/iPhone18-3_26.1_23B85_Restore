@interface EKEventMapCell
- (EKEventMapCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (EKEventMapDetailItem)detailItem;
- (void)layoutSubviews;
@end

@implementation EKEventMapCell

- (EKEventMapCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v15[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14.receiver = self;
  v14.super_class = EKEventMapCell;
  v7 = [(EKEventMapCell *)&v14 initWithStyle:style reuseIdentifier:identifierCopy];
  if (v7)
  {
    objc_initWeak(&location, v7);
    v15[0] = objc_opt_class();
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __48__EKEventMapCell_initWithStyle_reuseIdentifier___block_invoke;
    v11[3] = &unk_1E843EBE8;
    objc_copyWeak(&v12, &location);
    v9 = [(EKEventMapCell *)v7 registerForTraitChanges:v8 withHandler:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __48__EKEventMapCell_initWithStyle_reuseIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = objc_loadWeakRetained(WeakRetained + 129);
    [v2 updateViewColors];

    WeakRetained = v3;
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = EKEventMapCell;
  [(EKEventMapCell *)&v4 layoutSubviews];
  if (!self->_mapViewSetup && !self->_setupAsEmptyView)
  {
    self->_mapViewSetup = 1;
    self->_currentlyLoading = 1;
    WeakRetained = objc_loadWeakRetained(&self->_detailItem);
    [WeakRetained setupMapView];
  }
}

- (EKEventMapDetailItem)detailItem
{
  WeakRetained = objc_loadWeakRetained(&self->_detailItem);

  return WeakRetained;
}

@end