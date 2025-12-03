@interface COSLegalNoticesPane
- (id)markupString;
- (id)title;
@end

@implementation COSLegalNoticesPane

- (id)title
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"LEGAL_NOTICES" value:&stru_10026E598 table:@"Legal"];

  return v3;
}

- (id)markupString
{
  WeakRetained = objc_loadWeakRetained(&qword_1002BD2D0);
  legalNoticesMarkup = [WeakRetained legalNoticesMarkup];

  return legalNoticesMarkup;
}

@end