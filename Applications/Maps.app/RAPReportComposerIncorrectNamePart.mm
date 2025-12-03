@interface RAPReportComposerIncorrectNamePart
- (RAPReportComposerIncorrectNamePart)initWithCorrectableString:(id)string;
- (void)setCorrectableString:(id)string;
@end

@implementation RAPReportComposerIncorrectNamePart

- (void)setCorrectableString:(id)string
{
  stringCopy = string;
  if (self->_correctableString != stringCopy)
  {
    v6 = stringCopy;
    objc_storeStrong(&self->_correctableString, string);
    [(RAPReportComposerIncorrectNameSection *)self->_incorrectNameSection setCurrentLabelCorrectableString:self->_correctableString];
    stringCopy = v6;
  }
}

- (RAPReportComposerIncorrectNamePart)initWithCorrectableString:(id)string
{
  stringCopy = string;
  v6 = [[RAPReportComposerIncorrectNameSection alloc] initWithCorrectableString:stringCopy required:1];
  v13 = v6;
  v7 = [NSArray arrayWithObjects:&v13 count:1];
  v12.receiver = self;
  v12.super_class = RAPReportComposerIncorrectNamePart;
  v8 = [(RAPTablePart *)&v12 initWithSections:v7];

  if (v8)
  {
    objc_storeStrong(&v8->_incorrectNameSection, v6);
    objc_storeStrong(&v8->_correctableString, string);
    v9 = +[NSBundle mainBundle];
    v10 = [v9 localizedStringForKey:@"Name [Labels]" value:@"localized string not found" table:0];
    [(RAPTablePartSection *)v8->_incorrectNameSection setHeaderTitle:v10];
  }

  return v8;
}

@end