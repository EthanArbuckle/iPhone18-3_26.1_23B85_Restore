@interface MKSelectionAccessory
+ (id)mapItemDetailWithPresentationStyle:(id)style;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSelectionAccessory:(id)accessory;
- (MKSelectionAccessory)initWithMapItemDetailPresentationStyle:(id)style;
@end

@implementation MKSelectionAccessory

- (BOOL)isEqualToSelectionAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v5 = accessoryCopy;
  if (!accessoryCopy)
  {
    goto LABEL_5;
  }

  if (accessoryCopy == self)
  {
    v9 = 1;
    goto LABEL_7;
  }

  _style = [(MKSelectionAccessory *)self _style];
  if (_style == [(MKSelectionAccessory *)v5 _style])
  {
    _mapItemDetailPresentationStyle = [(MKSelectionAccessory *)self _mapItemDetailPresentationStyle];
    _mapItemDetailPresentationStyle2 = [(MKSelectionAccessory *)v5 _mapItemDetailPresentationStyle];
    v9 = _mapItemDetailPresentationStyle == _mapItemDetailPresentationStyle2;
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

LABEL_7:

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(MKSelectionAccessory *)self isEqualToSelectionAccessory:v5];
  }

  return v6;
}

- (MKSelectionAccessory)initWithMapItemDetailPresentationStyle:(id)style
{
  styleCopy = style;
  v9.receiver = self;
  v9.super_class = MKSelectionAccessory;
  v6 = [(MKSelectionAccessory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_style = 0;
    objc_storeStrong(&v6->_mapItemDetailPresentationStyle, style);
  }

  return v7;
}

+ (id)mapItemDetailWithPresentationStyle:(id)style
{
  styleCopy = style;
  v4 = [[MKSelectionAccessory alloc] initWithMapItemDetailPresentationStyle:styleCopy];

  return v4;
}

@end