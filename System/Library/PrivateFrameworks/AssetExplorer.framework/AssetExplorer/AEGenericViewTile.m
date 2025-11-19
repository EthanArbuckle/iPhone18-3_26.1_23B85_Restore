@interface AEGenericViewTile
- (AEGenericViewTile)initWithView:(id)a3;
@end

@implementation AEGenericViewTile

- (AEGenericViewTile)initWithView:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AEGenericViewTile;
  v6 = [(AEGenericViewTile *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_view, a3);
  }

  return v7;
}

@end