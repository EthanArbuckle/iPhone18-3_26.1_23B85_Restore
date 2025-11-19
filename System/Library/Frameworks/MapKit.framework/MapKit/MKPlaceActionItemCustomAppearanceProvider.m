@interface MKPlaceActionItemCustomAppearanceProvider
- (MKPlaceActionItemCustomAppearanceProvider)initWithActionType:(unint64_t)a3 overrideTitle:(id)a4 symbolName:(id)a5;
- (id)bestSymbolNameForDisplayStyle:(unint64_t)a3;
- (id)bestTitleForDisplayStyle:(unint64_t)a3;
@end

@implementation MKPlaceActionItemCustomAppearanceProvider

- (id)bestSymbolNameForDisplayStyle:(unint64_t)a3
{
  if ([(NSString *)self->_overrideSymbolName length])
  {
    v5 = self->_overrideSymbolName;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MKPlaceActionItemCustomAppearanceProvider;
    v5 = [(MKPlaceActionItemAppearanceProvider *)&v7 bestSymbolNameForDisplayStyle:a3];
  }

  return v5;
}

- (id)bestTitleForDisplayStyle:(unint64_t)a3
{
  if ([(NSString *)self->_overrideTitle length])
  {
    v5 = self->_overrideTitle;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MKPlaceActionItemCustomAppearanceProvider;
    v5 = [(MKPlaceActionItemAppearanceProvider *)&v7 bestTitleForDisplayStyle:a3];
  }

  return v5;
}

- (MKPlaceActionItemCustomAppearanceProvider)initWithActionType:(unint64_t)a3 overrideTitle:(id)a4 symbolName:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MKPlaceActionItemCustomAppearanceProvider;
  v11 = [(MKPlaceActionItemAppearanceProvider *)&v14 initWithActionType:a3 dataProvider:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_overrideTitle, a4);
    objc_storeStrong(&v12->_overrideSymbolName, a5);
  }

  return v12;
}

@end