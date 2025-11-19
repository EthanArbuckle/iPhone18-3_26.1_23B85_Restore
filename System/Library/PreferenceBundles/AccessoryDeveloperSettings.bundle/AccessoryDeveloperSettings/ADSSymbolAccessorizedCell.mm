@interface ADSSymbolAccessorizedCell
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ADSSymbolAccessorizedCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v13.receiver = self;
  v13.super_class = ADSSymbolAccessorizedCell;
  [(ADSSymbolAccessorizedCell *)&v13 refreshCellContentsWithSpecifier:?];
  v5 = [a3 propertyForKey:{+[ADSSymbolAccessorizedCell leadingSymbolNamePropertyKey](ADSSymbolAccessorizedCell, "leadingSymbolNamePropertyKey")}];
  if (v5)
  {
    v6 = v5;
    v7 = objc_alloc_init(NSTextAttachment);
    [v7 setImage:{+[UIImage systemImageNamed:](UIImage, "systemImageNamed:", v6)}];
    v8 = [[NSAttributedString attributedStringWithAttachment:?]];
    [v8 appendAttributedString:{objc_msgSend([NSAttributedString alloc], "initWithString:", @" "}];
    [v8 appendAttributedString:{objc_msgSend([NSAttributedString alloc], "initWithString:", objc_msgSend(a3, "name"))}];
    [-[ADSSymbolAccessorizedCell textLabel](self "textLabel")];
  }

  else
  {
    [-[ADSSymbolAccessorizedCell textLabel](self "textLabel")];
  }

  [-[ADSSymbolAccessorizedCell textLabel](self "textLabel")];
  v9 = [a3 propertyForKey:{+[ADSSymbolAccessorizedCell trailingSymbolNamePropertyKey](ADSSymbolAccessorizedCell, "trailingSymbolNamePropertyKey")}];
  if (v9)
  {
    v10 = [+[UIImage systemImageNamed:](UIImage imageWithTintColor:v9), "imageWithTintColor:", +[UIColor tableCellBlueTextColor]];
    v11 = objc_alloc_init(NSTextAttachment);
    [v11 setImage:v10];
    [-[ADSSymbolAccessorizedCell detailTextLabel](self "detailTextLabel")];
  }

  else
  {
    v12 = [(ADSSymbolAccessorizedCell *)self detailTextLabel];
    [v12 setText:{objc_msgSend(a3, "propertyForKey:", PSValueKey)}];
  }

  [(ADSSymbolAccessorizedCell *)self setNeedsLayout];
}

@end