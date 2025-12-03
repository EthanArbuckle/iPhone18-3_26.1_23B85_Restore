@interface RAPReportComposerLabelStatusPart
- (RAPReportComposerLabelStatusPart)initWithCorrectableFlag:(id)flag;
@end

@implementation RAPReportComposerLabelStatusPart

- (RAPReportComposerLabelStatusPart)initWithCorrectableFlag:(id)flag
{
  flagCopy = flag;
  v5 = [[RAPReportComposerLabelStatusSection alloc] initWithCorrectableFlag:flagCopy];

  v10 = v5;
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  v9.receiver = self;
  v9.super_class = RAPReportComposerLabelStatusPart;
  v7 = [(RAPTablePart *)&v9 initWithSections:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_statusSection, v5);
  }

  return v7;
}

@end