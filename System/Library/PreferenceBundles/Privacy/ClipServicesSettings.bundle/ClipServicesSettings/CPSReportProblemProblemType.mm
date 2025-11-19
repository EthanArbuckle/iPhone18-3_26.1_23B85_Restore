@interface CPSReportProblemProblemType
- (CPSReportProblemProblemType)init;
- (CPSReportProblemProblemType)initWithLocalizedTitle:(id)a3 localizedUpperCaseTitle:(id)a4 label:(id)a5 identifier:(id)a6 offerDeveloperWebsite:(BOOL)a7;
@end

@implementation CPSReportProblemProblemType

- (CPSReportProblemProblemType)initWithLocalizedTitle:(id)a3 localizedUpperCaseTitle:(id)a4 label:(id)a5 identifier:(id)a6 offerDeveloperWebsite:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v25.receiver = self;
  v25.super_class = CPSReportProblemProblemType;
  v16 = [(CPSReportProblemProblemType *)&v25 init];
  if (v16)
  {
    v17 = [v12 copy];
    localizedTitle = v16->_localizedTitle;
    v16->_localizedTitle = v17;

    v19 = [v13 copy];
    localizedUpperCaseTitle = v16->_localizedUpperCaseTitle;
    v16->_localizedUpperCaseTitle = v19;

    v21 = [v14 copy];
    label = v16->_label;
    v16->_label = v21;

    objc_storeStrong(&v16->_identifier, a6);
    v16->_offerDeveloperWebsite = a7;
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