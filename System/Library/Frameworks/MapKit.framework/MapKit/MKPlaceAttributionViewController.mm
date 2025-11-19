@interface MKPlaceAttributionViewController
- (_MKInfoCardAnalyticsDelegate)analyticsDelegate;
- (id)infoAttributionString;
- (void)infoCardThemeChanged;
- (void)loadView;
- (void)openURL;
- (void)setAttributionString:(id)a3;
- (void)setMapItem:(id)a3;
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
  v4 = [(MKPlaceAttributionViewController *)self mapItem];
  v5 = [v4 _attribution];
  v6 = [v5 providerID];
  v7 = [(MKPlaceAttributionViewController *)self mapItem];
  v8 = [v7 _attribution];
  v9 = [v8 providerID];
  [WeakRetained infoCardAnalyticsDidSelectAction:6023 eventValue:v6 feedbackDelegateSelector:180 actionRichProviderId:v9 classification:0];

  urlStrings = self->_urlStrings;
  attribution = self->_attribution;

  [MKAppLaunchController launchAttributionURLs:urlStrings withAttribution:attribution completionHandler:0];
}

- (void)setAttributionString:(id)a3
{
  v18[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  attributionString = self->_attributionString;
  if (v4)
  {
    if (([(NSAttributedString *)attributionString isEqual:v4]& 1) == 0)
    {
      v6 = [MEMORY[0x1E69DB7C8] defaultParagraphStyle];
      v7 = [v6 mutableCopy];

      [v7 setAlignment:4];
      v8 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v4];
      v9 = *MEMORY[0x1E69DB688];
      v18[0] = v7;
      v10 = *MEMORY[0x1E69DB650];
      v17[0] = v9;
      v17[1] = v10;
      v11 = [(UIViewController *)self mk_theme];
      v12 = [v11 tintColor];
      v18[1] = v12;
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

- (void)setMapItem:(id)a3
{
  v5 = a3;
  if (self->_mapItem != v5)
  {
    objc_storeStrong(&self->_mapItem, a3);
    if (self->_attributionCell)
    {
      [(MKPlaceAttributionViewController *)self updateLogo];
    }
  }
}

- (id)infoAttributionString
{
  v3 = [(UIViewController *)self mk_theme];
  v4 = [v3 isDarkTheme];

  if (v4)
  {
    v5 = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    v5 = 0;
  }

  v6 = [(MKPlaceAttributionViewController *)self mapItem];
  v7 = [(MKPlaceAttributionViewController *)self mapItem];
  v8 = [v7 _attribution];
  v9 = _MKLocalizedStringFromThisBundle(@"Find out more on %@ ");
  v10 = _MKLocalizedStringFromThisBundle(@"Find out more on %@ ");
  v11 = [v6 _attributionFor:v8 sourceStringFormat:v9 moreSourceStringFormat:v10 imageTintColor:v5];

  return v11;
}

- (void)infoCardThemeChanged
{
  v4.receiver = self;
  v4.super_class = MKPlaceAttributionViewController;
  [(UIViewController *)&v4 infoCardThemeChanged];
  v3 = [(MKPlaceAttributionViewController *)self infoAttributionString];
  [(MKPlaceAttributionViewController *)self setAttributionString:v3];
}

- (void)updateLogo
{
  v3 = [(MKPlaceAttributionViewController *)self infoAttributionString];
  [(MKPlaceAttributionViewController *)self setAttributionString:v3];

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