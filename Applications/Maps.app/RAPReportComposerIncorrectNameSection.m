@interface RAPReportComposerIncorrectNameSection
- (RAPReportComposerIncorrectNameSection)initWithCorrectableString:(id)a3 required:(BOOL)a4;
- (id)cellForRowAtIndex:(int64_t)a3;
- (void)setCurrentLabelCorrectableString:(id)a3;
@end

@implementation RAPReportComposerIncorrectNameSection

- (id)cellForRowAtIndex:(int64_t)a3
{
  if (!self->_cell)
  {
    v4 = [[RAPTextTableViewCell alloc] initWithStyle:0 reuseIdentifier:0];
    cell = self->_cell;
    self->_cell = v4;

    [(RAPTextTableViewCell *)self->_cell setSelectionStyle:0];
    [(RAPTextTableViewCell *)self->_cell setCorrectableItemKind:[(RAPPlaceCorrectableString *)self->_currentLabelCorrectableString kind]];
    v6 = [(RAPPlaceCorrectableString *)self->_currentLabelCorrectableString value];
    [(RAPTextTableViewCell *)self->_cell setValue:v6];

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

- (void)setCurrentLabelCorrectableString:(id)a3
{
  v5 = a3;
  currentLabelCorrectableString = self->_currentLabelCorrectableString;
  if (currentLabelCorrectableString != v5)
  {
    v8 = v5;
    if (currentLabelCorrectableString)
    {
      [(RAPPlaceCorrectableString *)currentLabelCorrectableString removeObserver:self];
    }

    objc_storeStrong(&self->_currentLabelCorrectableString, a3);
    v7 = [(RAPPlaceCorrectableString *)self->_currentLabelCorrectableString value];
    [(RAPTextTableViewCell *)self->_cell setValue:v7];

    v5 = v8;
  }
}

- (RAPReportComposerIncorrectNameSection)initWithCorrectableString:(id)a3 required:(BOOL)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = RAPReportComposerIncorrectNameSection;
  v7 = [(RAPTablePartSection *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_isRequired = a4;
    [(RAPReportComposerIncorrectNameSection *)v7 setCurrentLabelCorrectableString:v6];
  }

  return v8;
}

@end