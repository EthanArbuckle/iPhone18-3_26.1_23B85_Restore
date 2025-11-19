@interface HDClinicalContentAnalyticsItem
- (HDClinicalContentAnalyticsItem)initWithSourceURL:(id)a3 medicalRecord:(id)a4;
@end

@implementation HDClinicalContentAnalyticsItem

- (HDClinicalContentAnalyticsItem)initWithSourceURL:(id)a3 medicalRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HDClinicalContentAnalyticsItem;
  v8 = [(HDClinicalContentAnalyticsItem *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    sourceURL = v8->_sourceURL;
    v8->_sourceURL = v9;

    v11 = [v7 copy];
    medicalRecord = v8->_medicalRecord;
    v8->_medicalRecord = v11;
  }

  return v8;
}

@end