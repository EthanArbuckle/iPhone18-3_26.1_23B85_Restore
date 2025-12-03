@interface HDClinicalContentAnalyticsItem
- (HDClinicalContentAnalyticsItem)initWithSourceURL:(id)l medicalRecord:(id)record;
@end

@implementation HDClinicalContentAnalyticsItem

- (HDClinicalContentAnalyticsItem)initWithSourceURL:(id)l medicalRecord:(id)record
{
  lCopy = l;
  recordCopy = record;
  v14.receiver = self;
  v14.super_class = HDClinicalContentAnalyticsItem;
  v8 = [(HDClinicalContentAnalyticsItem *)&v14 init];
  if (v8)
  {
    v9 = [lCopy copy];
    sourceURL = v8->_sourceURL;
    v8->_sourceURL = v9;

    v11 = [recordCopy copy];
    medicalRecord = v8->_medicalRecord;
    v8->_medicalRecord = v11;
  }

  return v8;
}

@end