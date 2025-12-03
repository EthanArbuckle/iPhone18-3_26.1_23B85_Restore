@interface CPSReportProblemProblemType
- (CPSReportProblemProblemType)init;
- (CPSReportProblemProblemType)initWithLocalizedTitle:(id)title localizedUpperCaseTitle:(id)caseTitle label:(id)label identifier:(id)identifier offerDeveloperWebsite:(BOOL)website;
@end

@implementation CPSReportProblemProblemType

- (CPSReportProblemProblemType)initWithLocalizedTitle:(id)title localizedUpperCaseTitle:(id)caseTitle label:(id)label identifier:(id)identifier offerDeveloperWebsite:(BOOL)website
{
  titleCopy = title;
  caseTitleCopy = caseTitle;
  labelCopy = label;
  identifierCopy = identifier;
  v25.receiver = self;
  v25.super_class = CPSReportProblemProblemType;
  v16 = [(CPSReportProblemProblemType *)&v25 init];
  if (v16)
  {
    v17 = [titleCopy copy];
    localizedTitle = v16->_localizedTitle;
    v16->_localizedTitle = v17;

    v19 = [caseTitleCopy copy];
    localizedUpperCaseTitle = v16->_localizedUpperCaseTitle;
    v16->_localizedUpperCaseTitle = v19;

    v21 = [labelCopy copy];
    label = v16->_label;
    v16->_label = v21;

    objc_storeStrong(&v16->_identifier, identifier);
    v16->_offerDeveloperWebsite = website;
    v23 = v16;
  }

  return v16;
}

- (CPSReportProblemProblemType)init
{
  v2 = [NSException exceptionWithName:NSGenericException reason:@"-init is not available." userInfo:0];
  objc_exception_throw(v2);
}

@end