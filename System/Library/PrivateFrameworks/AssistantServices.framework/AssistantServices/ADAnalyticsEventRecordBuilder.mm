@interface ADAnalyticsEventRecordBuilder
- (id)build;
- (void)reset;
- (void)setValue:(id)value forColumnName:(id)name;
@end

@implementation ADAnalyticsEventRecordBuilder

- (id)build
{
  v21 = [AFAnalyticsEvent alloc];
  siriCoreSQLiteValue_toNumber = [(SiriCoreSQLiteValue *)self->_deliveryStreamValue siriCoreSQLiteValue_toNumber];
  unsignedLongLongValue = [siriCoreSQLiteValue_toNumber unsignedLongLongValue];
  siriCoreSQLiteValue_toNumber2 = [(SiriCoreSQLiteValue *)self->_typeValue siriCoreSQLiteValue_toNumber];
  integerValue = [siriCoreSQLiteValue_toNumber2 integerValue];
  siriCoreSQLiteValue_toNumber3 = [(SiriCoreSQLiteValue *)self->_timestampValue siriCoreSQLiteValue_toNumber];
  unsignedLongLongValue2 = [siriCoreSQLiteValue_toNumber3 unsignedLongLongValue];
  siriCoreSQLiteValue_toNumber4 = [(SiriCoreSQLiteValue *)self->_contextDataTypeValue siriCoreSQLiteValue_toNumber];
  integerValue2 = [siriCoreSQLiteValue_toNumber4 integerValue];
  siriCoreSQLiteValue_toData = [(SiriCoreSQLiteValue *)self->_contextDataValue siriCoreSQLiteValue_toData];
  v12 = [v21 initWithDeliveryStream:unsignedLongLongValue type:integerValue timestamp:unsignedLongLongValue2 contextDataType:integerValue2 contextData:siriCoreSQLiteValue_toData];

  v13 = [AFAnalyticsEventRecord alloc];
  siriCoreSQLiteValue_toString = [(SiriCoreSQLiteValue *)self->_streamUIDValue siriCoreSQLiteValue_toString];
  siriCoreSQLiteValue_toNumber5 = [(SiriCoreSQLiteValue *)self->_dateCreatedValue siriCoreSQLiteValue_toNumber];
  [siriCoreSQLiteValue_toNumber5 doubleValue];
  v16 = [NSDate dateWithTimeIntervalSince1970:?];
  siriCoreSQLiteValue_toString2 = [(SiriCoreSQLiteValue *)self->_speechIdValue siriCoreSQLiteValue_toString];
  siriCoreSQLiteValue_toString3 = [(SiriCoreSQLiteValue *)self->_recordIdValue siriCoreSQLiteValue_toString];
  v19 = [v13 initWithEvent:v12 streamUID:siriCoreSQLiteValue_toString dateCreated:v16 speechId:siriCoreSQLiteValue_toString2 recordId:siriCoreSQLiteValue_toString3];

  return v19;
}

- (void)setValue:(id)value forColumnName:(id)name
{
  valueCopy = value;
  nameCopy = name;
  if ([nameCopy isEqualToString:@"stream_uid"])
  {
    v8 = 8;
  }

  else if ([nameCopy isEqualToString:@"delivery_stream"])
  {
    v8 = 16;
  }

  else if ([nameCopy isEqualToString:@"type"])
  {
    v8 = 24;
  }

  else if ([nameCopy isEqualToString:@"timestamp"])
  {
    v8 = 32;
  }

  else if ([nameCopy isEqualToString:@"context_data"])
  {
    v8 = 40;
  }

  else if ([nameCopy isEqualToString:@"context_data_type"])
  {
    v8 = 48;
  }

  else if ([nameCopy isEqualToString:@"date_created"])
  {
    v8 = 56;
  }

  else if ([nameCopy isEqualToString:@"assistant_id"])
  {
    v8 = 64;
  }

  else
  {
    if (![nameCopy isEqualToString:@"record_id"])
    {
      goto LABEL_20;
    }

    v8 = 72;
  }

  objc_storeStrong((&self->super.isa + v8), value);
LABEL_20:
}

- (void)reset
{
  streamUIDValue = self->_streamUIDValue;
  self->_streamUIDValue = 0;

  deliveryStreamValue = self->_deliveryStreamValue;
  self->_deliveryStreamValue = 0;

  typeValue = self->_typeValue;
  self->_typeValue = 0;

  timestampValue = self->_timestampValue;
  self->_timestampValue = 0;

  contextDataValue = self->_contextDataValue;
  self->_contextDataValue = 0;

  contextDataTypeValue = self->_contextDataTypeValue;
  self->_contextDataTypeValue = 0;

  dateCreatedValue = self->_dateCreatedValue;
  self->_dateCreatedValue = 0;

  speechIdValue = self->_speechIdValue;
  self->_speechIdValue = 0;

  recordIdValue = self->_recordIdValue;
  self->_recordIdValue = 0;
}

@end