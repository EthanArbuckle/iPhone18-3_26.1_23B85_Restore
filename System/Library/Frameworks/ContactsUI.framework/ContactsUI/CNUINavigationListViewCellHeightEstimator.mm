@interface CNUINavigationListViewCellHeightEstimator
- (CNUINavigationListViewCellHeightEstimator)initWithNavigationListStyle:(id)style;
- (double)estimatedCellHeight;
- (double)estimatedDetailCellHeight;
@end

@implementation CNUINavigationListViewCellHeightEstimator

- (double)estimatedDetailCellHeight
{
  estimatedDetailCellHeightNumber = self->_estimatedDetailCellHeightNumber;
  if (!estimatedDetailCellHeightNumber)
  {
    v4 = objc_alloc_init(CNUINavigationListViewDetailCell);
    navigationListStyle = [(CNUINavigationListViewCellHeightEstimator *)self navigationListStyle];
    [(CNUINavigationListViewCell *)v4 setNavigationListStyle:navigationListStyle];

    v6 = MEMORY[0x1E696AD98];
    [(CNUINavigationListViewDetailCell *)v4 minimumContentHeight];
    v7 = [v6 numberWithDouble:?];
    v8 = self->_estimatedDetailCellHeightNumber;
    self->_estimatedDetailCellHeightNumber = v7;

    estimatedDetailCellHeightNumber = self->_estimatedDetailCellHeightNumber;
  }

  [(NSNumber *)estimatedDetailCellHeightNumber floatValue];
  return v9;
}

- (double)estimatedCellHeight
{
  estimatedCellHeightNumber = self->_estimatedCellHeightNumber;
  if (!estimatedCellHeightNumber)
  {
    v4 = objc_alloc_init(CNUINavigationListViewCell);
    navigationListStyle = [(CNUINavigationListViewCellHeightEstimator *)self navigationListStyle];
    [(CNUINavigationListViewCell *)v4 setNavigationListStyle:navigationListStyle];

    v6 = MEMORY[0x1E696AD98];
    [(CNUINavigationListViewCell *)v4 minimumContentHeight];
    v7 = [v6 numberWithDouble:?];
    v8 = self->_estimatedCellHeightNumber;
    self->_estimatedCellHeightNumber = v7;

    estimatedCellHeightNumber = self->_estimatedCellHeightNumber;
  }

  [(NSNumber *)estimatedCellHeightNumber floatValue];
  return v9;
}

- (CNUINavigationListViewCellHeightEstimator)initWithNavigationListStyle:(id)style
{
  styleCopy = style;
  v10.receiver = self;
  v10.super_class = CNUINavigationListViewCellHeightEstimator;
  v6 = [(CNUINavigationListViewCellHeightEstimator *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_navigationListStyle, style);
    v8 = v7;
  }

  return v7;
}

@end