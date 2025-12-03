@interface RAPReportComposerPlaceSnippetTableViewCell
- (id)attributedStringFormat;
- (id)defaultReplacementAttributes;
- (void)_setImageForMapItem:(id)item;
- (void)_setImageForMapItem:(id)item isCurrentLocation:(BOOL)location;
- (void)_setPlaceName:(id)name singleLineAddress:(id)address;
- (void)_setTransitImageForMapItem:(id)item;
- (void)prepareForReuse;
- (void)setContentsFromMapItem:(id)item isCurrentLocation:(BOOL)location;
@end

@implementation RAPReportComposerPlaceSnippetTableViewCell

- (void)_setPlaceName:(id)name singleLineAddress:(id)address
{
  addressCopy = address;
  nameCopy = name;
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = v8;
  if (nameCopy)
  {
    v10 = nameCopy;
  }

  else
  {
    v10 = &stru_1016631F0;
  }

  [v8 setObject:v10 forKeyedSubscript:@"placeName"];

  v17[0] = NSFontAttributeName;
  v11 = +[UIFont system15];
  v18[0] = v11;
  v17[1] = NSForegroundColorAttributeName;
  v12 = +[UIColor secondaryLabelColor];
  v18[1] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];

  v14 = [NSAttributedString alloc];
  if (addressCopy)
  {
    v15 = addressCopy;
  }

  else
  {
    v15 = &stru_1016631F0;
  }

  v16 = [v14 initWithString:v15 attributes:v13];

  [v9 setObject:v16 forKeyedSubscript:@"address"];
  [(RAPReportComposerTwoLineSnippetTableViewCell *)self updateTextWithReplacements:v9];
}

- (void)_setTransitImageForMapItem:(id)item
{
  itemCopy = item;
  imageView = [(RAPReportComposerPlaceSnippetTableViewCell *)self imageView];
  image = [imageView image];

  v6 = itemCopy;
  if (!image)
  {
    _transitInfo = [itemCopy _transitInfo];
    lines = [_transitInfo lines];
    firstObject = [lines firstObject];

    if (firstObject)
    {
      window = [(RAPReportComposerPlaceSnippetTableViewCell *)self window];
      screen = [window screen];
      v12 = screen;
      if (screen)
      {
        [screen scale];
        v14 = v13;
      }

      else
      {
        v15 = +[UIScreen mainScreen];
        [v15 scale];
        v14 = v16;
      }

      modeArtwork = [firstObject modeArtwork];
      v18 = [UIImage _mapkit_transitArtworkImageWithDataSource:modeArtwork size:6 scale:v14];

      v19 = [UIColor colorWithRed:0.0824000016 green:0.493999988 blue:0.984000027 alpha:1.0];
      v20 = [v18 drawnInCircleWithDiameter:v19 backgroundColor:40.0];
      imageView2 = [(RAPReportComposerPlaceSnippetTableViewCell *)self imageView];
      [imageView2 setImage:v20];
    }

    v6 = itemCopy;
  }
}

- (void)_setImageForMapItem:(id)item
{
  itemCopy = item;
  imageView = [(RAPReportComposerPlaceSnippetTableViewCell *)self imageView];
  image = [imageView image];

  if (!image)
  {
    if ([itemCopy _hasTransit])
    {
      [(RAPReportComposerPlaceSnippetTableViewCell *)self _setTransitImageForMapItem:itemCopy];
    }

    else
    {
      v6 = +[UIScreen mainScreen];
      [v6 scale];
      v7 = [MKIconManager imageForMapItem:itemCopy forScale:0 fallbackToBundleIcon:?];

      v8 = [v7 imageScaledToSize:{40.0, 40.0}];
      imageView2 = [(RAPReportComposerPlaceSnippetTableViewCell *)self imageView];
      [imageView2 setImage:v8];
    }
  }
}

- (void)_setImageForMapItem:(id)item isCurrentLocation:(BOOL)location
{
  locationCopy = location;
  itemCopy = item;
  imageView = [(RAPReportComposerPlaceSnippetTableViewCell *)self imageView];
  image = [imageView image];

  if (!image)
  {
    if (locationCopy)
    {
      v8 = [UIImage imageNamed:@"RAPCurrentLocation"];
      imageView2 = [(RAPReportComposerPlaceSnippetTableViewCell *)self imageView];
      [imageView2 setImage:v8];
    }

    else
    {
      [(RAPReportComposerPlaceSnippetTableViewCell *)self _setImageForMapItem:itemCopy];
    }
  }
}

- (void)setContentsFromMapItem:(id)item isCurrentLocation:(BOOL)location
{
  locationCopy = location;
  itemCopy = item;
  name = [itemCopy name];
  _addressFormattedAsShortenedAddress = [itemCopy _addressFormattedAsShortenedAddress];
  [(RAPReportComposerPlaceSnippetTableViewCell *)self _setPlaceName:name singleLineAddress:_addressFormattedAsShortenedAddress];

  [(RAPReportComposerPlaceSnippetTableViewCell *)self _setImageForMapItem:itemCopy isCurrentLocation:locationCopy];
  if ([itemCopy _hasTransitLabels])
  {
    v8 = [[MKTransitInfoLabelView alloc] initWithMapItem:itemCopy];
    v9 = +[UIColor secondaryLabelColor];
    [v8 setTextColor:v9];

    v10 = +[UIFont system15];
    [v8 setFont:v10];

    [v8 setShieldSize:6];
    [(RAPReportComposerTwoLineSnippetTableViewCell *)self setThirdLineAccessoryView:v8];
  }

  else
  {
    [(RAPReportComposerTwoLineSnippetTableViewCell *)self setThirdLineAccessoryView:0];
  }
}

- (id)defaultReplacementAttributes
{
  v5 = NSFontAttributeName;
  v2 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (id)attributedStringFormat
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"PLACE NAME\nADDRESS [Report a Problem place snippet]" value:@"localized string not found" table:0];

  v5 = [NSAttributedString alloc];
  defaultReplacementAttributes = [(RAPReportComposerPlaceSnippetTableViewCell *)self defaultReplacementAttributes];
  v7 = [v5 initWithString:v4 attributes:defaultReplacementAttributes];

  return v7;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = RAPReportComposerPlaceSnippetTableViewCell;
  [(RAPReportComposerPlaceSnippetTableViewCell *)&v4 prepareForReuse];
  imageView = [(RAPReportComposerPlaceSnippetTableViewCell *)self imageView];
  [imageView setImage:0];
}

@end