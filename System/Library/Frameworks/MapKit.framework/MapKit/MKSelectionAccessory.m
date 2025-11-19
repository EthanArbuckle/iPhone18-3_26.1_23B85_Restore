@interface MKSelectionAccessory
+ (id)mapItemDetailWithPresentationStyle:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToSelectionAccessory:(id)a3;
- (MKSelectionAccessory)initWithMapItemDetailPresentationStyle:(id)a3;
@end

@implementation MKSelectionAccessory

- (BOOL)isEqualToSelectionAccessory:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == self)
  {
    v9 = 1;
    goto LABEL_7;
  }

  v6 = [(MKSelectionAccessory *)self _style];
  if (v6 == [(MKSelectionAccessory *)v5 _style])
  {
    v7 = [(MKSelectionAccessory *)self _mapItemDetailPresentationStyle];
    v8 = [(MKSelectionAccessory *)v5 _mapItemDetailPresentationStyle];
    v9 = v7 == v8;
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

LABEL_7:

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MKSelectionAccessory *)self isEqualToSelectionAccessory:v5];
  }

  return v6;
}

- (MKSelectionAccessory)initWithMapItemDetailPresentationStyle:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MKSelectionAccessory;
  v6 = [(MKSelectionAccessory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_style = 0;
    objc_storeStrong(&v6->_mapItemDetailPresentationStyle, a3);
  }

  return v7;
}

+ (id)mapItemDetailWithPresentationStyle:(id)a3
{
  v3 = a3;
  v4 = [[MKSelectionAccessory alloc] initWithMapItemDetailPresentationStyle:v3];

  return v4;
}

@end