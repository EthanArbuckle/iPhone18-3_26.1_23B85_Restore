@interface ATXInformationDismissRecord
- (ATXInformationDismissRecord)initWithWidgetBundleId:(id)a3 criterion:(id)a4 blockWidgetUntilDate:(id)a5 blockCriterionUntilDate:(id)a6;
@end

@implementation ATXInformationDismissRecord

- (ATXInformationDismissRecord)initWithWidgetBundleId:(id)a3 criterion:(id)a4 blockWidgetUntilDate:(id)a5 blockCriterionUntilDate:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v20.receiver = self;
  v20.super_class = ATXInformationDismissRecord;
  v14 = [(ATXInformationDismissRecord *)&v20 init];
  if (v14)
  {
    v15 = [v10 copy];
    widgetBundleId = v14->_widgetBundleId;
    v14->_widgetBundleId = v15;

    v17 = [v11 copy];
    criterion = v14->_criterion;
    v14->_criterion = v17;

    objc_storeStrong(&v14->_blockWidgetUntilDate, a5);
    objc_storeStrong(&v14->_blockCriterionUntilDate, a6);
  }

  return v14;
}

@end