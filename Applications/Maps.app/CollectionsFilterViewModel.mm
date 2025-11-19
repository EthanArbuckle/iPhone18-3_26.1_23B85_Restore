@interface CollectionsFilterViewModel
- (CollectionsFilterViewModel)initWithAddressFilter:(id)a3 isDarkMode:(BOOL)a4;
- (CollectionsFilterViewModel)initWithAllCollectionsAddressFilter:(id)a3 isDarkMode:(BOOL)a4;
- (CollectionsFilterViewModel)initWithAllCollectionsKeywordFilter:(id)a3 isDarkMode:(BOOL)a4;
- (CollectionsFilterViewModel)initWithFilter:(id)a3 isDarkMode:(BOOL)a4;
- (CollectionsFilterViewModel)initWithGuidesHomeConceptFilter:(id)a3 isDarkMode:(BOOL)a4;
- (CollectionsFilterViewModel)initWithKeywordFilter:(id)a3 isDarkMode:(BOOL)a4;
- (void)modelSelected:(BOOL)a3 isDarkMode:(BOOL)a4;
- (void)switchToSelectedIsDarkMode:(BOOL)a3;
- (void)switchToUnSelectedIsDarkMode:(BOOL)a3;
@end

@implementation CollectionsFilterViewModel

- (void)switchToUnSelectedIsDarkMode:(BOOL)a3
{
  if (MapsFeature_IsEnabled_Maps269())
  {
    if (a3)
    {
      +[UIColor whiteColor];
    }

    else
    {
      +[UIColor blackColor];
    }
    v5 = ;
    textColor = self->_textColor;
    self->_textColor = v5;

    v13 = +[UIColor clearColor];
    backgroundColor = self->_backgroundColor;
    self->_backgroundColor = v13;

    v9 = +[UIColor clearColor];
    v10 = &UIFontTextStyleSubheadline;
    v11 = 80;
  }

  else
  {
    v6 = +[UIColor labelColor];
    v7 = [v6 colorWithAlphaComponent:0.7];
    v8 = self->_textColor;
    self->_textColor = v7;

    v9 = +[UIColor tertiarySystemFillColor];
    v10 = &UIFontTextStyleBody;
    v11 = 72;
  }

  v15 = *(&self->super.isa + v11);
  *(&self->super.isa + v11) = v9;

  v16 = [UIFont preferredFontForTextStyle:*v10];
  filterFont = self->_filterFont;
  self->_filterFont = v16;
}

- (void)switchToSelectedIsDarkMode:(BOOL)a3
{
  if (MapsFeature_IsEnabled_Maps269())
  {
    v5 = +[UIColor whiteColor];
    textColor = self->_textColor;
    self->_textColor = v5;

    v7 = +[UIColor systemBlueColor];
    backgroundColor = self->_backgroundColor;
    self->_backgroundColor = v7;

    v9 = +[UIColor quaternarySystemFillColor];
    selectedBackgroundColor = self->_selectedBackgroundColor;
    self->_selectedBackgroundColor = v9;
    v11 = &UIFontTextStyleSubheadline;
  }

  else
  {
    v12 = +[UIColor labelColor];
    v13 = self->_textColor;
    self->_textColor = v12;

    v14 = +[UIColor systemWhiteColor];
    selectedBackgroundColor = v14;
    if (a3)
    {
      v15 = [(UIColor *)v14 colorWithAlphaComponent:0.25];
      v16 = self->_backgroundColor;
      self->_backgroundColor = v15;

      v11 = &UIFontTextStyleBody;
    }

    else
    {
      v17 = self->_backgroundColor;
      self->_backgroundColor = v14;
      v11 = &UIFontTextStyleBody;
      selectedBackgroundColor = v17;
    }
  }

  v18 = [UIFont preferredFontForTextStyle:*v11];
  filterFont = self->_filterFont;
  self->_filterFont = v18;
}

- (void)modelSelected:(BOOL)a3 isDarkMode:(BOOL)a4
{
  self->_selected = a3;
  if (a3)
  {
    [(CollectionsFilterViewModel *)self switchToSelectedIsDarkMode:a4];
  }

  else
  {
    [(CollectionsFilterViewModel *)self switchToUnSelectedIsDarkMode:a4];
  }
}

- (CollectionsFilterViewModel)initWithGuidesHomeConceptFilter:(id)a3 isDarkMode:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 searchSuggestion];
  v8 = [v7 displayString];
  v9 = [(CollectionsFilterViewModel *)self initWithFilter:v8 isDarkMode:v4];

  conceptFilter = v9->_conceptFilter;
  v9->_conceptFilter = v6;

  return v9;
}

- (CollectionsFilterViewModel)initWithAllCollectionsAddressFilter:(id)a3 isDarkMode:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 displayString];
  v8 = [(CollectionsFilterViewModel *)self initWithFilter:v7 isDarkMode:v4];

  allCollectionsAddressFilter = v8->_allCollectionsAddressFilter;
  v8->_allCollectionsAddressFilter = v6;

  return v8;
}

- (CollectionsFilterViewModel)initWithAllCollectionsKeywordFilter:(id)a3 isDarkMode:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 searchSuggestion];
  v8 = [v7 displayString];
  v9 = [(CollectionsFilterViewModel *)self initWithFilter:v8 isDarkMode:v4];

  allCollectionsKeywordFilter = v9->_allCollectionsKeywordFilter;
  v9->_allCollectionsKeywordFilter = v6;

  return v9;
}

- (CollectionsFilterViewModel)initWithAddressFilter:(id)a3 isDarkMode:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 displayString];
  v8 = [(CollectionsFilterViewModel *)self initWithFilter:v7 isDarkMode:v4];

  addressFilter = v8->_addressFilter;
  v8->_addressFilter = v6;

  return v8;
}

- (CollectionsFilterViewModel)initWithKeywordFilter:(id)a3 isDarkMode:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 searchSuggestion];
  v8 = [v7 displayString];
  v9 = [(CollectionsFilterViewModel *)self initWithFilter:v8 isDarkMode:v4];

  keywordFilter = v9->_keywordFilter;
  v9->_keywordFilter = v6;

  return v9;
}

- (CollectionsFilterViewModel)initWithFilter:(id)a3 isDarkMode:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CollectionsFilterViewModel;
  v8 = [(CollectionsFilterViewModel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_filterTitle, a3);
    [(CollectionsFilterViewModel *)v9 switchToUnSelectedIsDarkMode:v4];
  }

  return v9;
}

@end