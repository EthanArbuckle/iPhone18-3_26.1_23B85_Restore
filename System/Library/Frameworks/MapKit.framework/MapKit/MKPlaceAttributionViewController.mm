@interface MKPlaceAttributionViewController
- (_MKInfoCardAnalyticsDelegate)analyticsDelegate;
- (id)infoAttributionString;
- (void)infoCardThemeChanged;
- (void)loadView;
- (void)openURL;
- (void)setAttributionString:(id)string;
- (void)setMapItem:(id)item;
- (void)updateLogo;
- (void)viewDidLoad;
@end

@implementation MKPlaceAttributionViewController

- (_MKInfoCardAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (void)openURL
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);
  mapItem = [(MKPlaceAttributionViewController *)self mapItem];
  _attribution = [mapItem _attribution];
  providerID = [_attribution providerID];
  mapItem2 = [(MKPlaceAttributionViewController *)self mapItem];
  _attribution2 = [mapItem2 _attribution];
  providerID2 = [_attribution2 providerID];
  [WeakRetained infoCardAnalyticsDidSelectAction:6023 eventValue:providerID feedbackDelegateSelector:180 actionRichProviderId:providerID2 classification:0];

  urlStrings = self->_urlStrings;
  attribution = self->_attribution;

  [MKAppLaunchController launchAttributionURLs:urlStrings withAttribution:attribution completionHandler:0];
}

- (void)setAttributionString:(id)string
{
  v18[3] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  attributionString = self->_attributionString;
  if (stringCopy)
  {
    if (([(NSAttributedString *)attributionString isEqual:stringCopy]& 1) == 0)
    {
      defaultParagraphStyle = [MEMORY[0x1E69DB7C8] defaultParagraphStyle];
      v7 = [defaultParagraphStyle mutableCopy];

      [v7 setAlignment:4];
      v8 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:stringCopy];
      v9 = *MEMORY[0x1E69DB688];
      v18[0] = v7;
      v10 = *MEMORY[0x1E69DB650];
      v17[0] = v9;
      v17[1] = v10;
      mk_theme = [(UIViewController *)self mk_theme];
      tintColor = [mk_theme tintColor];
      v18[1] = tintColor;
      v17[2] = *MEMORY[0x1E69DB648];
      v13 = +[MKPlaceAttributionCell fontForLabel];
      v18[2] = v13;
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
      [v8 addAttributes:v14 range:{0, objc_msgSend(v8, "length")}];

      v15 = [v8 copy];
      v16 = self->_attributionString;
      self->_attributionString = v15;

      [(MKPlaceAttributionCell *)self->_attributionCell setAttributionString:self->_attributionString];
    }
  }

  else
  {
    self->_attributionString = 0;

    [(MKPlaceAttributionCell *)self->_attributionCell setAttributionString:self->_attributionString];
  }
}

- (void)setMapItem:(id)item
{
  itemCopy = item;
  if (self->_mapItem != itemCopy)
  {
    objc_storeStrong(&self->_mapItem, item);
    if (self->_attributionCell)
    {
      [(MKPlaceAttributionViewController *)self updateLogo];
    }
  }
}

- (id)infoAttributionString
{
  mk_theme = [(UIViewController *)self mk_theme];
  isDarkTheme = [mk_theme isDarkTheme];

  if (isDarkTheme)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    whiteColor = 0;
  }

  mapItem = [(MKPlaceAttributionViewController *)self mapItem];
  mapItem2 = [(MKPlaceAttributionViewController *)self mapItem];
  _attribution = [mapItem2 _attribution];
  v9 = _MKLocalizedStringFromThisBundle(@"Find out more on %@ ");
  v10 = _MKLocalizedStringFromThisBundle(@"Find out more on %@ ");
  v11 = [mapItem _attributionFor:_attribution sourceStringFormat:v9 moreSourceStringFormat:v10 imageTintColor:whiteColor];

  return v11;
}

- (void)infoCardThemeChanged
{
  v4.receiver = self;
  v4.super_class = MKPlaceAttributionViewController;
  [(UIViewController *)&v4 infoCardThemeChanged];
  infoAttributionString = [(MKPlaceAttributionViewController *)self infoAttributionString];
  [(MKPlaceAttributionViewController *)self setAttributionString:infoAttributionString];
}

- (void)updateLogo
{
  infoAttributionString = [(MKPlaceAttributionViewController *)self infoAttributionString];
  [(MKPlaceAttributionViewController *)self setAttributionString:infoAttributionString];

  attributionCell = self->_attributionCell;
  attributionString = self->_attributionString;

  [(MKPlaceAttributionCell *)attributionCell setAttributionString:attributionString];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = MKPlaceAttributionViewController;
  [(MKPlaceAttributionViewController *)&v3 viewDidLoad];
  if (self->_mapItem)
  {
    [(MKPlaceAttributionViewController *)self updateLogo];
  }
}

- (void)loadView
{
  if (!self->_attributionCell)
  {
    v3 = [MKPlaceAttributionCell alloc];
    v4 = [(MKPlaceAttributionCell *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    attributionCell = self->_attributionCell;
    self->_attributionCell = v4;

    [(MKPlaceAttributionCell *)self->_attributionCell setCellDelegate:self];
    [(MKViewWithHairline *)self->_attributionCell setTopHairlineHidden:1];
    [(MKViewWithHairline *)self->_attributionCell setBottomHairlineHidden:0];
    v6 = self->_attributionCell;

    [(MKPlaceAttributionViewController *)self setView:v6];
  }
}

@end