@interface RAPReportComposerPlaceSnippetTableViewCell
- (id)attributedStringFormat;
- (id)defaultReplacementAttributes;
- (void)_setImageForMapItem:(id)a3;
- (void)_setImageForMapItem:(id)a3 isCurrentLocation:(BOOL)a4;
- (void)_setPlaceName:(id)a3 singleLineAddress:(id)a4;
- (void)_setTransitImageForMapItem:(id)a3;
- (void)prepareForReuse;
- (void)setContentsFromMapItem:(id)a3 isCurrentLocation:(BOOL)a4;
@end

@implementation RAPReportComposerPlaceSnippetTableViewCell

- (void)_setPlaceName:(id)a3 singleLineAddress:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = v8;
  if (v7)
  {
    v10 = v7;
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
  if (v6)
  {
    v15 = v6;
  }

  else
  {
    v15 = &stru_1016631F0;
  }

  v16 = [v14 initWithString:v15 attributes:v13];

  [v9 setObject:v16 forKeyedSubscript:@"address"];
  [(RAPReportComposerTwoLineSnippetTableViewCell *)self updateTextWithReplacements:v9];
}

- (void)_setTransitImageForMapItem:(id)a3
{
  v22 = a3;
  v4 = [(RAPReportComposerPlaceSnippetTableViewCell *)self imageView];
  v5 = [v4 image];

  v6 = v22;
  if (!v5)
  {
    v7 = [v22 _transitInfo];
    v8 = [v7 lines];
    v9 = [v8 firstObject];

    if (v9)
    {
      v10 = [(RAPReportComposerPlaceSnippetTableViewCell *)self window];
      v11 = [v10 screen];
      v12 = v11;
      if (v11)
      {
        [v11 scale];
        v14 = v13;
      }

      else
      {
        v15 = +[UIScreen mainScreen];
        [v15 scale];
        v14 = v16;
      }

      v17 = [v9 modeArtwork];
      v18 = [UIImage _mapkit_transitArtworkImageWithDataSource:v17 size:6 scale:v14];

      v19 = [UIColor colorWithRed:0.0824000016 green:0.493999988 blue:0.984000027 alpha:1.0];
      v20 = [v18 drawnInCircleWithDiameter:v19 backgroundColor:40.0];
      v21 = [(RAPReportComposerPlaceSnippetTableViewCell *)self imageView];
      [v21 setImage:v20];
    }

    v6 = v22;
  }
}

- (void)_setImageForMapItem:(id)a3
{
  v10 = a3;
  v4 = [(RAPReportComposerPlaceSnippetTableViewCell *)self imageView];
  v5 = [v4 image];

  if (!v5)
  {
    if ([v10 _hasTransit])
    {
      [(RAPReportComposerPlaceSnippetTableViewCell *)self _setTransitImageForMapItem:v10];
    }

    else
    {
      v6 = +[UIScreen mainScreen];
      [v6 scale];
      v7 = [MKIconManager imageForMapItem:v10 forScale:0 fallbackToBundleIcon:?];

      v8 = [v7 imageScaledToSize:{40.0, 40.0}];
      v9 = [(RAPReportComposerPlaceSnippetTableViewCell *)self imageView];
      [v9 setImage:v8];
    }
  }
}

- (void)_setImageForMapItem:(id)a3 isCurrentLocation:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v6 = [(RAPReportComposerPlaceSnippetTableViewCell *)self imageView];
  v7 = [v6 image];

  if (!v7)
  {
    if (v4)
    {
      v8 = [UIImage imageNamed:@"RAPCurrentLocation"];
      v9 = [(RAPReportComposerPlaceSnippetTableViewCell *)self imageView];
      [v9 setImage:v8];
    }

    else
    {
      [(RAPReportComposerPlaceSnippetTableViewCell *)self _setImageForMapItem:v10];
    }
  }
}

- (void)setContentsFromMapItem:(id)a3 isCurrentLocation:(BOOL)a4
{
  v4 = a4;
  v11 = a3;
  v6 = [v11 name];
  v7 = [v11 _addressFormattedAsShortenedAddress];
  [(RAPReportComposerPlaceSnippetTableViewCell *)self _setPlaceName:v6 singleLineAddress:v7];

  [(RAPReportComposerPlaceSnippetTableViewCell *)self _setImageForMapItem:v11 isCurrentLocation:v4];
  if ([v11 _hasTransitLabels])
  {
    v8 = [[MKTransitInfoLabelView alloc] initWithMapItem:v11];
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
  v6 = [(RAPReportComposerPlaceSnippetTableViewCell *)self defaultReplacementAttributes];
  v7 = [v5 initWithString:v4 attributes:v6];

  return v7;
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = RAPReportComposerPlaceSnippetTableViewCell;
  [(RAPReportComposerPlaceSnippetTableViewCell *)&v4 prepareForReuse];
  v3 = [(RAPReportComposerPlaceSnippetTableViewCell *)self imageView];
  [v3 setImage:0];
}

@end