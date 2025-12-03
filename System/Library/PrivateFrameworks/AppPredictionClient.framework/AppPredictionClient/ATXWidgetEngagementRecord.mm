@interface ATXWidgetEngagementRecord
- (ATXWidgetEngagementRecord)initWithDate:(id)date type:(int64_t)type widgetBundleId:(id)id containerBundleIdentifier:(id)identifier widgetKind:(id)kind layoutSize:(unint64_t)size;
@end

@implementation ATXWidgetEngagementRecord

- (ATXWidgetEngagementRecord)initWithDate:(id)date type:(int64_t)type widgetBundleId:(id)id containerBundleIdentifier:(id)identifier widgetKind:(id)kind layoutSize:(unint64_t)size
{
  dateCopy = date;
  idCopy = id;
  identifierCopy = identifier;
  kindCopy = kind;
  v22.receiver = self;
  v22.super_class = ATXWidgetEngagementRecord;
  v18 = [(ATXWidgetEngagementRecord *)&v22 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_date, date);
    v19->_type = type;
    objc_storeStrong(&v19->_widgetBundleId, id);
    objc_storeStrong(&v19->_containerBundleIdentifier, identifier);
    objc_storeStrong(&v19->_widgetKind, kind);
    v19->_widgetFamily = CHSWidgetFamilyFromATXStackLayoutSize(size);
  }

  return v19;
}

@end