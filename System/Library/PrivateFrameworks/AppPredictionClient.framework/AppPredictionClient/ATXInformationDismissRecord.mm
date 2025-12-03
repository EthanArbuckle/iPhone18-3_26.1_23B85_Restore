@interface ATXInformationDismissRecord
- (ATXInformationDismissRecord)initWithWidgetBundleId:(id)id criterion:(id)criterion blockWidgetUntilDate:(id)date blockCriterionUntilDate:(id)untilDate;
@end

@implementation ATXInformationDismissRecord

- (ATXInformationDismissRecord)initWithWidgetBundleId:(id)id criterion:(id)criterion blockWidgetUntilDate:(id)date blockCriterionUntilDate:(id)untilDate
{
  idCopy = id;
  criterionCopy = criterion;
  dateCopy = date;
  untilDateCopy = untilDate;
  v20.receiver = self;
  v20.super_class = ATXInformationDismissRecord;
  v14 = [(ATXInformationDismissRecord *)&v20 init];
  if (v14)
  {
    v15 = [idCopy copy];
    widgetBundleId = v14->_widgetBundleId;
    v14->_widgetBundleId = v15;

    v17 = [criterionCopy copy];
    criterion = v14->_criterion;
    v14->_criterion = v17;

    objc_storeStrong(&v14->_blockWidgetUntilDate, date);
    objc_storeStrong(&v14->_blockCriterionUntilDate, untilDate);
  }

  return v14;
}

@end