@interface MKPlaceActionItemCustomAppearanceProvider
- (MKPlaceActionItemCustomAppearanceProvider)initWithActionType:(unint64_t)type overrideTitle:(id)title symbolName:(id)name;
- (id)bestSymbolNameForDisplayStyle:(unint64_t)style;
- (id)bestTitleForDisplayStyle:(unint64_t)style;
@end

@implementation MKPlaceActionItemCustomAppearanceProvider

- (id)bestSymbolNameForDisplayStyle:(unint64_t)style
{
  if ([(NSString *)self->_overrideSymbolName length])
  {
    v5 = self->_overrideSymbolName;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MKPlaceActionItemCustomAppearanceProvider;
    v5 = [(MKPlaceActionItemAppearanceProvider *)&v7 bestSymbolNameForDisplayStyle:style];
  }

  return v5;
}

- (id)bestTitleForDisplayStyle:(unint64_t)style
{
  if ([(NSString *)self->_overrideTitle length])
  {
    v5 = self->_overrideTitle;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = MKPlaceActionItemCustomAppearanceProvider;
    v5 = [(MKPlaceActionItemAppearanceProvider *)&v7 bestTitleForDisplayStyle:style];
  }

  return v5;
}

- (MKPlaceActionItemCustomAppearanceProvider)initWithActionType:(unint64_t)type overrideTitle:(id)title symbolName:(id)name
{
  titleCopy = title;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = MKPlaceActionItemCustomAppearanceProvider;
  v11 = [(MKPlaceActionItemAppearanceProvider *)&v14 initWithActionType:type dataProvider:0];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_overrideTitle, title);
    objc_storeStrong(&v12->_overrideSymbolName, name);
  }

  return v12;
}

@end