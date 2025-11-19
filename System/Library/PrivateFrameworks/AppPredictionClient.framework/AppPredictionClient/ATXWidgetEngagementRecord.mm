@interface ATXWidgetEngagementRecord
- (ATXWidgetEngagementRecord)initWithDate:(id)a3 type:(int64_t)a4 widgetBundleId:(id)a5 containerBundleIdentifier:(id)a6 widgetKind:(id)a7 layoutSize:(unint64_t)a8;
@end

@implementation ATXWidgetEngagementRecord

- (ATXWidgetEngagementRecord)initWithDate:(id)a3 type:(int64_t)a4 widgetBundleId:(id)a5 containerBundleIdentifier:(id)a6 widgetKind:(id)a7 layoutSize:(unint64_t)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v22.receiver = self;
  v22.super_class = ATXWidgetEngagementRecord;
  v18 = [(ATXWidgetEngagementRecord *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_date, a3);
    v19->_type = a4;
    objc_storeStrong(&v19->_widgetBundleId, a5);
    objc_storeStrong(&v19->_containerBundleIdentifier, a6);
    objc_storeStrong(&v19->_widgetKind, a7);
    v19->_widgetFamily = CHSWidgetFamilyFromATXStackLayoutSize(a8);
  }

  return v19;
}

@end