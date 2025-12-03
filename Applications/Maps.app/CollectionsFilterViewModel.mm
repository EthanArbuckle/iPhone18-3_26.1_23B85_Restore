@interface CollectionsFilterViewModel
- (CollectionsFilterViewModel)initWithAddressFilter:(id)filter isDarkMode:(BOOL)mode;
- (CollectionsFilterViewModel)initWithAllCollectionsAddressFilter:(id)filter isDarkMode:(BOOL)mode;
- (CollectionsFilterViewModel)initWithAllCollectionsKeywordFilter:(id)filter isDarkMode:(BOOL)mode;
- (CollectionsFilterViewModel)initWithFilter:(id)filter isDarkMode:(BOOL)mode;
- (CollectionsFilterViewModel)initWithGuidesHomeConceptFilter:(id)filter isDarkMode:(BOOL)mode;
- (CollectionsFilterViewModel)initWithKeywordFilter:(id)filter isDarkMode:(BOOL)mode;
- (void)modelSelected:(BOOL)selected isDarkMode:(BOOL)mode;
- (void)switchToSelectedIsDarkMode:(BOOL)mode;
- (void)switchToUnSelectedIsDarkMode:(BOOL)mode;
@end

@implementation CollectionsFilterViewModel

- (void)switchToUnSelectedIsDarkMode:(BOOL)mode
{
  if (MapsFeature_IsEnabled_Maps269())
  {
    if (mode)
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

- (void)switchToSelectedIsDarkMode:(BOOL)mode
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
    if (mode)
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

- (void)modelSelected:(BOOL)selected isDarkMode:(BOOL)mode
{
  self->_selected = selected;
  if (selected)
  {
    [(CollectionsFilterViewModel *)self switchToSelectedIsDarkMode:mode];
  }

  else
  {
    [(CollectionsFilterViewModel *)self switchToUnSelectedIsDarkMode:mode];
  }
}

- (CollectionsFilterViewModel)initWithGuidesHomeConceptFilter:(id)filter isDarkMode:(BOOL)mode
{
  modeCopy = mode;
  filterCopy = filter;
  searchSuggestion = [filterCopy searchSuggestion];
  displayString = [searchSuggestion displayString];
  v9 = [(CollectionsFilterViewModel *)self initWithFilter:displayString isDarkMode:modeCopy];

  conceptFilter = v9->_conceptFilter;
  v9->_conceptFilter = filterCopy;

  return v9;
}

- (CollectionsFilterViewModel)initWithAllCollectionsAddressFilter:(id)filter isDarkMode:(BOOL)mode
{
  modeCopy = mode;
  filterCopy = filter;
  displayString = [filterCopy displayString];
  v8 = [(CollectionsFilterViewModel *)self initWithFilter:displayString isDarkMode:modeCopy];

  allCollectionsAddressFilter = v8->_allCollectionsAddressFilter;
  v8->_allCollectionsAddressFilter = filterCopy;

  return v8;
}

- (CollectionsFilterViewModel)initWithAllCollectionsKeywordFilter:(id)filter isDarkMode:(BOOL)mode
{
  modeCopy = mode;
  filterCopy = filter;
  searchSuggestion = [filterCopy searchSuggestion];
  displayString = [searchSuggestion displayString];
  v9 = [(CollectionsFilterViewModel *)self initWithFilter:displayString isDarkMode:modeCopy];

  allCollectionsKeywordFilter = v9->_allCollectionsKeywordFilter;
  v9->_allCollectionsKeywordFilter = filterCopy;

  return v9;
}

- (CollectionsFilterViewModel)initWithAddressFilter:(id)filter isDarkMode:(BOOL)mode
{
  modeCopy = mode;
  filterCopy = filter;
  displayString = [filterCopy displayString];
  v8 = [(CollectionsFilterViewModel *)self initWithFilter:displayString isDarkMode:modeCopy];

  addressFilter = v8->_addressFilter;
  v8->_addressFilter = filterCopy;

  return v8;
}

- (CollectionsFilterViewModel)initWithKeywordFilter:(id)filter isDarkMode:(BOOL)mode
{
  modeCopy = mode;
  filterCopy = filter;
  searchSuggestion = [filterCopy searchSuggestion];
  displayString = [searchSuggestion displayString];
  v9 = [(CollectionsFilterViewModel *)self initWithFilter:displayString isDarkMode:modeCopy];

  keywordFilter = v9->_keywordFilter;
  v9->_keywordFilter = filterCopy;

  return v9;
}

- (CollectionsFilterViewModel)initWithFilter:(id)filter isDarkMode:(BOOL)mode
{
  modeCopy = mode;
  filterCopy = filter;
  v11.receiver = self;
  v11.super_class = CollectionsFilterViewModel;
  v8 = [(CollectionsFilterViewModel *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_filterTitle, filter);
    [(CollectionsFilterViewModel *)v9 switchToUnSelectedIsDarkMode:modeCopy];
  }

  return v9;
}

@end