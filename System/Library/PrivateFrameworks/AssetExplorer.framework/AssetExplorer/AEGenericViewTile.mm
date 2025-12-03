@interface AEGenericViewTile
- (AEGenericViewTile)initWithView:(id)view;
@end

@implementation AEGenericViewTile

- (AEGenericViewTile)initWithView:(id)view
{
  viewCopy = view;
  v9.receiver = self;
  v9.super_class = AEGenericViewTile;
  v6 = [(AEGenericViewTile *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_view, view);
  }

  return v7;
}

@end