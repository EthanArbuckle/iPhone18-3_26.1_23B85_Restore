@interface ADAnalyticsEventRecordBuilder
- (id)build;
- (void)reset;
- (void)setValue:(id)a3 forColumnName:(id)a4;
@end

@implementation ADAnalyticsEventRecordBuilder

- (id)build
{
  v21 = [AFAnalyticsEvent alloc];
  v3 = [(SiriCoreSQLiteValue *)self->_deliveryStreamValue siriCoreSQLiteValue_toNumber];
  v4 = [v3 unsignedLongLongValue];
  v5 = [(SiriCoreSQLiteValue *)self->_typeValue siriCoreSQLiteValue_toNumber];
  v6 = [v5 integerValue];
  v7 = [(SiriCoreSQLiteValue *)self->_timestampValue siriCoreSQLiteValue_toNumber];
  v8 = [v7 unsignedLongLongValue];
  v9 = [(SiriCoreSQLiteValue *)self->_contextDataTypeValue siriCoreSQLiteValue_toNumber];
  v10 = [v9 integerValue];
  v11 = [(SiriCoreSQLiteValue *)self->_contextDataValue siriCoreSQLiteValue_toData];
  v12 = [v21 initWithDeliveryStream:v4 type:v6 timestamp:v8 contextDataType:v10 contextData:v11];

  v13 = [AFAnalyticsEventRecord alloc];
  v14 = [(SiriCoreSQLiteValue *)self->_streamUIDValue siriCoreSQLiteValue_toString];
  v15 = [(SiriCoreSQLiteValue *)self->_dateCreatedValue siriCoreSQLiteValue_toNumber];
  [v15 doubleValue];
  v16 = [NSDate dateWithTimeIntervalSince1970:?];
  v17 = [(SiriCoreSQLiteValue *)self->_speechIdValue siriCoreSQLiteValue_toString];
  v18 = [(SiriCoreSQLiteValue *)self->_recordIdValue siriCoreSQLiteValue_toString];
  v19 = [v13 initWithEvent:v12 streamUID:v14 dateCreated:v16 speechId:v17 recordId:v18];

  return v19;
}

- (void)setValue:(id)a3 forColumnName:(id)a4
{
  v9 = a3;
  v7 = a4;
  if ([v7 isEqualToString:@"stream_uid"])
  {
    v8 = 8;
  }

  else if ([v7 isEqualToString:@"delivery_stream"])
  {
    v8 = 16;
  }

  else if ([v7 isEqualToString:@"type"])
  {
    v8 = 24;
  }

  else if ([v7 isEqualToString:@"timestamp"])
  {
    v8 = 32;
  }

  else if ([v7 isEqualToString:@"context_data"])
  {
    v8 = 40;
  }

  else if ([v7 isEqualToString:@"context_data_type"])
  {
    v8 = 48;
  }

  else if ([v7 isEqualToString:@"date_created"])
  {
    v8 = 56;
  }

  else if ([v7 isEqualToString:@"assistant_id"])
  {
    v8 = 64;
  }

  else
  {
    if (![v7 isEqualToString:@"record_id"])
    {
      goto LABEL_20;
    }

    v8 = 72;
  }

  objc_storeStrong((&self->super.isa + v8), a3);
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