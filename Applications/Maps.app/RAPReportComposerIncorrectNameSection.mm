@interface RAPReportComposerIncorrectNameSection
- (RAPReportComposerIncorrectNameSection)initWithCorrectableString:(id)string required:(BOOL)required;
- (id)cellForRowAtIndex:(int64_t)index;
- (void)setCurrentLabelCorrectableString:(id)string;
@end

@implementation RAPReportComposerIncorrectNameSection

- (id)cellForRowAtIndex:(int64_t)index
{
  if (!self->_cell)
  {
    v4 = [[RAPTextTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    cell = self->_cell;
    self->_cell = v4;

    [(RAPTextTableViewCell *)self->_cell setSelectionStyle:0];
    [(RAPTextTableViewCell *)self->_cell setCorrectableItemKind:[(RAPPlaceCorrectableString *)self->_currentLabelCorrectableString kind]];
    value = [(RAPPlaceCorrectableString *)self->_currentLabelCorrectableString value];
    [(RAPTextTableViewCell *)self->_cell setValue:value];

    [(RAPTextTableViewCell *)self->_cell setDelegate:self];
    if (self->_isRequired)
    {
      v7 = +[NSBundle mainBundle];
      v8 = [v7 localizedStringForKey:@"Required [Report a Problem]" value:@"localized string not found" table:0];
      [(RAPTextTableViewCell *)self->_cell setPlaceholder:v8];
    }
  }

  v9 = self->_cell;

  return v9;
}

- (void)setCurrentLabelCorrectableString:(id)string
{
  stringCopy = string;
  currentLabelCorrectableString = self->_currentLabelCorrectableString;
  if (currentLabelCorrectableString != stringCopy)
  {
    v8 = stringCopy;
    if (currentLabelCorrectableString)
    {
      [(RAPPlaceCorrectableString *)currentLabelCorrectableString removeObserver:self];
    }

    objc_storeStrong(&self->_currentLabelCorrectableString, string);
    value = [(RAPPlaceCorrectableString *)self->_currentLabelCorrectableString value];
    [(RAPTextTableViewCell *)self->_cell setValue:value];

    stringCopy = v8;
  }
}

- (RAPReportComposerIncorrectNameSection)initWithCorrectableString:(id)string required:(BOOL)required
{
  stringCopy = string;
  v10.receiver = self;
  v10.super_class = RAPReportComposerIncorrectNameSection;
  v7 = [(RAPTablePartSection *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_isRequired = required;
    [(RAPReportComposerIncorrectNameSection *)v7 setCurrentLabelCorrectableString:stringCopy];
  }

  return v8;
}

@end