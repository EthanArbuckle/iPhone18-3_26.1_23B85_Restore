@interface AFAnalyticsEventRecord
- (AFAnalyticsEventRecord)initWithCoder:(id)a3;
- (AFAnalyticsEventRecord)initWithEvent:(id)a3 streamUID:(id)a4 dateCreated:(id)a5 speechId:(id)a6 recordId:(id)a7;
- (void)encodeWithCoder:(id)a3;
- (void)siriCoreSQLiteRecord_enumerateColumnNamesAndValuesUsingBlock:(id)a3;
@end

@implementation AFAnalyticsEventRecord

- (AFAnalyticsEventRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = AFAnalyticsEventRecord;
  v5 = [(AFAnalyticsEventRecord *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_event"];
    event = v5->_event;
    v5->_event = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_streamUID"];
    streamUID = v5->_streamUID;
    v5->_streamUID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_dateCreated"];
    dateCreated = v5->_dateCreated;
    v5->_dateCreated = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_speechId"];
    speechId = v5->_speechId;
    v5->_speechId = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_recordId"];
    recordId = v5->_recordId;
    v5->_recordId = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  event = self->_event;
  v5 = a3;
  [v5 encodeObject:event forKey:@"_event"];
  [v5 encodeObject:self->_streamUID forKey:@"_streamUID"];
  [v5 encodeObject:self->_dateCreated forKey:@"_dateCreated"];
  [v5 encodeObject:self->_speechId forKey:@"_speechId"];
  [v5 encodeObject:self->_recordId forKey:@"_recordId"];
}

- (AFAnalyticsEventRecord)initWithEvent:(id)a3 streamUID:(id)a4 dateCreated:(id)a5 speechId:(id)a6 recordId:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v31.receiver = self;
  v31.super_class = AFAnalyticsEventRecord;
  v17 = [(AFAnalyticsEventRecord *)&v31 init];
  if (v17)
  {
    v18 = [v12 copy];
    event = v17->_event;
    v17->_event = v18;

    v20 = [v13 copy];
    streamUID = v17->_streamUID;
    v17->_streamUID = v20;

    v22 = [v14 copy];
    dateCreated = v17->_dateCreated;
    v17->_dateCreated = v22;

    v24 = [v15 copy];
    speechId = v17->_speechId;
    v17->_speechId = v24;

    if (v16)
    {
      v26 = [v16 copy];
      recordId = v17->_recordId;
      v17->_recordId = v26;
    }

    else
    {
      recordId = [MEMORY[0x1E696AFB0] UUID];
      v28 = [recordId UUIDString];
      v29 = v17->_recordId;
      v17->_recordId = v28;
    }
  }

  return v17;
}

- (void)siriCoreSQLiteRecord_enumerateColumnNamesAndValuesUsingBlock:(id)a3
{
  v4 = a3;
  if (v4 && self->_streamUID && ([(AFAnalyticsEvent *)self->_event deliveryStream]|| [(AFAnalyticsEvent *)self->_event type]))
  {
    v17 = 0;
    v4[2](v4, @"stream_uid", self->_streamUID, &v17);
    if ((v17 & 1) == 0)
    {
      v5 = MEMORY[0x1E696AD98];
      [(NSDate *)self->_dateCreated timeIntervalSince1970];
      v6 = [v5 numberWithDouble:?];
      v4[2](v4, @"date_created", v6, &v17);

      if ((v17 & 1) == 0)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AFAnalyticsEvent type](self->_event, "type")}];
        v4[2](v4, @"type", v7, &v17);

        if ((v17 & 1) == 0)
        {
          v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AFAnalyticsEvent deliveryStream](self->_event, "deliveryStream")}];
          v4[2](v4, @"delivery_stream", v8, &v17);

          if ((v17 & 1) == 0)
          {
            v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[AFAnalyticsEvent timestamp](self->_event, "timestamp")}];
            v4[2](v4, @"timestamp", v9, &v17);

            if ((v17 & 1) == 0)
            {
              v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AFAnalyticsEvent contextDataType](self->_event, "contextDataType")}];
              v4[2](v4, @"context_data_type", v10, &v17);

              if ((v17 & 1) == 0)
              {
                v11 = [(AFAnalyticsEvent *)self->_event contextData];
                if (v11)
                {
                  v4[2](v4, @"context_data", v11, &v17);
                }

                if ((v17 & 1) == 0)
                {
                  speechId = self->_speechId;
                  if (speechId)
                  {
                    v4[2](v4, @"assistant_id", speechId, &v17);
                  }

                  else
                  {
                    v13 = [MEMORY[0x1E695DFB0] null];
                    v4[2](v4, @"assistant_id", v13, &v17);
                  }

                  if ((v17 & 1) == 0)
                  {
                    recordId = self->_recordId;
                    if (recordId)
                    {
                      v4[2](v4, @"record_id", recordId, &v17);
                    }

                    else
                    {
                      v15 = [MEMORY[0x1E696AFB0] UUID];
                      v16 = [v15 UUIDString];
                      v4[2](v4, @"record_id", v16, &v17);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

@end