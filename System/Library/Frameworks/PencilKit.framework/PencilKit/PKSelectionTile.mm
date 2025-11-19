@interface PKSelectionTile
- (PKSelectionTile)initWithProperties:(id)a3;
@end

@implementation PKSelectionTile

- (PKSelectionTile)initWithProperties:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKSelectionTile;
  v5 = [(PKSelectionTile *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    properties = v5->_properties;
    v5->_properties = v6;

    [(PKSelectionTile *)v5 setMasksToBounds:1];
    [(PKSelectionTile *)v5 setShouldRasterize:1];
  }

  return v5;
}

@end