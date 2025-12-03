@interface MKRatingStringBuilder
+ (id)carPlayHeaderStringForMapItem:(id)item isHighlighted:(BOOL)highlighted;
@end

@implementation MKRatingStringBuilder

+ (id)carPlayHeaderStringForMapItem:(id)item isHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  itemCopy = item;
  v6 = +[UIColor _carSystemFocusLabelColor];
  v7 = sub_100D0DDDC(itemCopy);
  v8 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:3 grade:UIFontWeightRegular];
  v9 = v8;
  if (highlightedCopy)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  v23 = NSForegroundColorAttributeName;
  v24 = NSFontAttributeName;
  v25 = v10;
  v26 = v8;
  v11 = v7;
  v12 = v6;
  v13 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v23 count:2];

  v14 = +[UIColor _carSystemFocusLabelColor];
  v15 = +[UIColor _carSystemSecondaryColor];
  if (highlightedCopy)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = [UIFont _mapsCar_fontForTextStyle:UIFontTextStyleCaption2 weight:UIFontWeightRegular];
  v23 = NSForegroundColorAttributeName;
  v24 = NSFontAttributeName;
  v25 = v16;
  v26 = v17;
  v18 = v15;
  v19 = v14;
  v20 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v23 count:2];

  v21 = [MKRatingStringBuilder carPlayHeaderStringForMapItem:itemCopy titleAttributes:v13 providerAttributes:v20];

  return v21;
}

@end