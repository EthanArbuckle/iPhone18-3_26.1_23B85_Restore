@interface AFAnalyticsEventRecord
- (AFAnalyticsEventRecord)initWithCoder:(id)coder;
- (AFAnalyticsEventRecord)initWithEvent:(id)event streamUID:(id)d dateCreated:(id)created speechId:(id)id recordId:(id)recordId;
- (void)encodeWithCoder:(id)coder;
- (void)siriCoreSQLiteRecord_enumerateColumnNamesAndValuesUsingBlock:(id)block;
@end

@implementation AFAnalyticsEventRecord

- (AFAnalyticsEventRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = AFAnalyticsEventRecord;
  v5 = [(AFAnalyticsEventRecord *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_event"];
    event = v5->_event;
    v5->_event = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_streamUID"];
    streamUID = v5->_streamUID;
    v5->_streamUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_dateCreated"];
    dateCreated = v5->_dateCreated;
    v5->_dateCreated = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_speechId"];
    speechId = v5->_speechId;
    v5->_speechId = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_recordId"];
    recordId = v5->_recordId;
    v5->_recordId = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  event = self->_event;
  coderCopy = coder;
  [coderCopy encodeObject:event forKey:@"_event"];
  [coderCopy encodeObject:self->_streamUID forKey:@"_streamUID"];
  [coderCopy encodeObject:self->_dateCreated forKey:@"_dateCreated"];
  [coderCopy encodeObject:self->_speechId forKey:@"_speechId"];
  [coderCopy encodeObject:self->_recordId forKey:@"_recordId"];
}

- (AFAnalyticsEventRecord)initWithEvent:(id)event streamUID:(id)d dateCreated:(id)created speechId:(id)id recordId:(id)recordId
{
  eventCopy = event;
  dCopy = d;
  createdCopy = created;
  idCopy = id;
  recordIdCopy = recordId;
  v31.receiver = self;
  v31.super_class = AFAnalyticsEventRecord;
  v17 = [(AFAnalyticsEventRecord *)&v31 init];
  if (v17)
  {
    v18 = [eventCopy copy];
    event = v17->_event;
    v17->_event = v18;

    v20 = [dCopy copy];
    streamUID = v17->_streamUID;
    v17->_streamUID = v20;

    v22 = [createdCopy copy];
    dateCreated = v17->_dateCreated;
    v17->_dateCreated = v22;

    v24 = [idCopy copy];
    speechId = v17->_speechId;
    v17->_speechId = v24;

    if (recordIdCopy)
    {
      v26 = [recordIdCopy copy];
      recordId = v17->_recordId;
      v17->_recordId = v26;
    }

    else
    {
      recordId = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [recordId UUIDString];
      v29 = v17->_recordId;
      v17->_recordId = uUIDString;
    }
  }

  return v17;
}

- (void)siriCoreSQLiteRecord_enumerateColumnNamesAndValuesUsingBlock:(id)block
{
  blockCopy = block;
  if (blockCopy && self->_streamUID && ([(AFAnalyticsEvent *)self->_event deliveryStream]|| [(AFAnalyticsEvent *)self->_event type]))
  {
    v17 = 0;
    blockCopy[2](blockCopy, @"stream_uid", self->_streamUID, &v17);
    if ((v17 & 1) == 0)
    {
      v5 = MEMORY[0x1E696AD98];
      [(NSDate *)self->_dateCreated timeIntervalSince1970];
      v6 = [v5 numberWithDouble:?];
      blockCopy[2](blockCopy, @"date_created", v6, &v17);

      if ((v17 & 1) == 0)
      {
        v7 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AFAnalyticsEvent type](self->_event, "type")}];
        blockCopy[2](blockCopy, @"type", v7, &v17);

        if ((v17 & 1) == 0)
        {
          v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AFAnalyticsEvent deliveryStream](self->_event, "deliveryStream")}];
          blockCopy[2](blockCopy, @"delivery_stream", v8, &v17);

          if ((v17 & 1) == 0)
          {
            v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[AFAnalyticsEvent timestamp](self->_event, "timestamp")}];
            blockCopy[2](blockCopy, @"timestamp", v9, &v17);

            if ((v17 & 1) == 0)
            {
              v10 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AFAnalyticsEvent contextDataType](self->_event, "contextDataType")}];
              blockCopy[2](blockCopy, @"context_data_type", v10, &v17);

              if ((v17 & 1) == 0)
              {
                contextData = [(AFAnalyticsEvent *)self->_event contextData];
                if (contextData)
                {
                  blockCopy[2](blockCopy, @"context_data", contextData, &v17);
                }

                if ((v17 & 1) == 0)
                {
                  speechId = self->_speechId;
                  if (speechId)
                  {
                    blockCopy[2](blockCopy, @"assistant_id", speechId, &v17);
                  }

                  else
                  {
                    null = [MEMORY[0x1E695DFB0] null];
                    blockCopy[2](blockCopy, @"assistant_id", null, &v17);
                  }

                  if ((v17 & 1) == 0)
                  {
                    recordId = self->_recordId;
                    if (recordId)
                    {
                      blockCopy[2](blockCopy, @"record_id", recordId, &v17);
                    }

                    else
                    {
                      uUID = [MEMORY[0x1E696AFB0] UUID];
                      uUIDString = [uUID UUIDString];
                      blockCopy[2](blockCopy, @"record_id", uUIDString, &v17);
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