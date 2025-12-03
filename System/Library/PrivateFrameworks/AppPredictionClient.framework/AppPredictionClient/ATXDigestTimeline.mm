@interface ATXDigestTimeline
- (ATXDigestTimeline)initWithCoder:(id)coder;
- (ATXDigestTimeline)initWithProto:(id)proto;
- (ATXDigestTimeline)initWithProtoData:(id)data;
- (BOOL)_timelineFieldsAreEqual:(id)equal otherField:(id)field;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXDigestTimeline:(id)timeline;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeAsProto;
- (id)initFromJSON:(id)n;
- (id)json;
- (id)jsonRepresentation;
- (id)proto;
- (void)encodeWithCoder:(id)coder;
- (void)setDigestRemovedTimestamp:(id)timestamp;
- (void)setFirstCollapsedViewTimestamp:(id)timestamp;
- (void)setFirstScheduledViewTimestamp:(id)timestamp;
- (void)setFirstUpcomingViewTimestamp:(id)timestamp;
@end

@implementation ATXDigestTimeline

- (void)setFirstUpcomingViewTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  firstUpcomingViewTimestamp = self->_firstUpcomingViewTimestamp;
  v8 = timestampCopy;
  if (firstUpcomingViewTimestamp)
  {
    v6 = [(NSDate *)firstUpcomingViewTimestamp earlierDate:timestampCopy];
  }

  else
  {
    v6 = timestampCopy;
  }

  v7 = self->_firstUpcomingViewTimestamp;
  self->_firstUpcomingViewTimestamp = v6;
}

- (void)setFirstCollapsedViewTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  firstCollapsedViewTimestamp = self->_firstCollapsedViewTimestamp;
  v8 = timestampCopy;
  if (firstCollapsedViewTimestamp)
  {
    v6 = [(NSDate *)firstCollapsedViewTimestamp earlierDate:timestampCopy];
  }

  else
  {
    v6 = timestampCopy;
  }

  v7 = self->_firstCollapsedViewTimestamp;
  self->_firstCollapsedViewTimestamp = v6;
}

- (void)setFirstScheduledViewTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  firstScheduledViewTimestamp = self->_firstScheduledViewTimestamp;
  v8 = timestampCopy;
  if (firstScheduledViewTimestamp)
  {
    v6 = [(NSDate *)firstScheduledViewTimestamp earlierDate:timestampCopy];
  }

  else
  {
    v6 = timestampCopy;
  }

  v7 = self->_firstScheduledViewTimestamp;
  self->_firstScheduledViewTimestamp = v6;
}

- (void)setDigestRemovedTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  digestRemovedTimestamp = self->_digestRemovedTimestamp;
  v8 = timestampCopy;
  if (digestRemovedTimestamp)
  {
    v6 = [(NSDate *)digestRemovedTimestamp earlierDate:timestampCopy];
  }

  else
  {
    v6 = timestampCopy;
  }

  v7 = self->_digestRemovedTimestamp;
  self->_digestRemovedTimestamp = v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ATXDigestTimeline allocWithZone:?]];
  firstUpcomingViewTimestamp = [(ATXDigestTimeline *)self firstUpcomingViewTimestamp];
  [(ATXDigestTimeline *)v4 setFirstUpcomingViewTimestamp:firstUpcomingViewTimestamp];

  firstCollapsedViewTimestamp = [(ATXDigestTimeline *)self firstCollapsedViewTimestamp];
  [(ATXDigestTimeline *)v4 setFirstCollapsedViewTimestamp:firstCollapsedViewTimestamp];

  firstScheduledViewTimestamp = [(ATXDigestTimeline *)self firstScheduledViewTimestamp];
  [(ATXDigestTimeline *)v4 setFirstScheduledViewTimestamp:firstScheduledViewTimestamp];

  digestRemovedTimestamp = [(ATXDigestTimeline *)self digestRemovedTimestamp];
  [(ATXDigestTimeline *)v4 setDigestRemovedTimestamp:digestRemovedTimestamp];

  return v4;
}

- (BOOL)_timelineFieldsAreEqual:(id)equal otherField:(id)field
{
  equalCopy = equal;
  fieldCopy = field;
  v7 = fieldCopy;
  v8 = (equalCopy | fieldCopy) == 0;
  if (equalCopy && fieldCopy)
  {
    [equalCopy timeIntervalSinceDate:fieldCopy];
    if (v9 < 0.0)
    {
      v9 = -v9;
    }

    v8 = v9 < 0.001;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXDigestTimeline *)self isEqualToATXDigestTimeline:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXDigestTimeline:(id)timeline
{
  timelineCopy = timeline;
  firstUpcomingViewTimestamp = [(ATXDigestTimeline *)self firstUpcomingViewTimestamp];
  firstUpcomingViewTimestamp2 = [timelineCopy firstUpcomingViewTimestamp];
  v7 = [(ATXDigestTimeline *)self _timelineFieldsAreEqual:firstUpcomingViewTimestamp otherField:firstUpcomingViewTimestamp2];

  if (v7 && (-[ATXDigestTimeline firstScheduledViewTimestamp](self, "firstScheduledViewTimestamp"), v8 = objc_claimAutoreleasedReturnValue(), [timelineCopy firstScheduledViewTimestamp], v9 = objc_claimAutoreleasedReturnValue(), v10 = -[ATXDigestTimeline _timelineFieldsAreEqual:otherField:](self, "_timelineFieldsAreEqual:otherField:", v8, v9), v9, v8, v10) && (-[ATXDigestTimeline firstCollapsedViewTimestamp](self, "firstCollapsedViewTimestamp"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(timelineCopy, "firstCollapsedViewTimestamp"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[ATXDigestTimeline _timelineFieldsAreEqual:otherField:](self, "_timelineFieldsAreEqual:otherField:", v11, v12), v12, v11, v13))
  {
    digestRemovedTimestamp = [(ATXDigestTimeline *)self digestRemovedTimestamp];
    digestRemovedTimestamp2 = [timelineCopy digestRemovedTimestamp];
    v16 = [(ATXDigestTimeline *)self _timelineFieldsAreEqual:digestRemovedTimestamp otherField:digestRemovedTimestamp2];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXDigestTimeline *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXDigestTimeline)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXDigestTimeline *)self initWithProtoData:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)encodeAsProto
{
  proto = [(ATXDigestTimeline *)self proto];
  data = [proto data];

  return data;
}

- (ATXDigestTimeline)initWithProto:(id)proto
{
  protoCopy = proto;
  v18.receiver = self;
  v18.super_class = ATXDigestTimeline;
  v5 = [(ATXDigestTimeline *)&v18 init];
  if (v5)
  {
    if (protoCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = protoCopy;
        if ([v6 hasFirstUpcomingViewTimestamp])
        {
          v7 = MEMORY[0x1E695DF00];
          [v6 firstUpcomingViewTimestamp];
          v8 = [v7 dateWithTimeIntervalSinceReferenceDate:?];
          [(ATXDigestTimeline *)v5 setFirstUpcomingViewTimestamp:v8];
        }

        if ([v6 hasFirstCollapsedViewTimestamp])
        {
          v9 = MEMORY[0x1E695DF00];
          [v6 firstCollapsedViewTimestamp];
          v10 = [v9 dateWithTimeIntervalSinceReferenceDate:?];
          [(ATXDigestTimeline *)v5 setFirstCollapsedViewTimestamp:v10];
        }

        if ([v6 hasFirstScheduledViewTimestamp])
        {
          v11 = MEMORY[0x1E695DF00];
          [v6 firstScheduledViewTimestamp];
          v12 = [v11 dateWithTimeIntervalSinceReferenceDate:?];
          [(ATXDigestTimeline *)v5 setFirstScheduledViewTimestamp:v12];
        }

        if ([v6 hasDigestRemovedTimestamp])
        {
          v13 = MEMORY[0x1E695DF00];
          [v6 digestRemovedTimestamp];
          v14 = [v13 dateWithTimeIntervalSinceReferenceDate:?];
          [(ATXDigestTimeline *)v5 setDigestRemovedTimestamp:v14];
        }

        goto LABEL_13;
      }

      v16 = __atxlog_handle_notification_management();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        [(ATXDigestTimeline *)v5 initWithProto:v16];
      }
    }

    v15 = 0;
    goto LABEL_18;
  }

LABEL_13:
  v15 = v5;
LABEL_18:

  return v15;
}

- (ATXDigestTimeline)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBDigestTimeline alloc] initWithData:dataCopy];

    self = [(ATXDigestTimeline *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  firstUpcomingViewTimestamp = [(ATXDigestTimeline *)self firstUpcomingViewTimestamp];

  if (firstUpcomingViewTimestamp)
  {
    firstUpcomingViewTimestamp2 = [(ATXDigestTimeline *)self firstUpcomingViewTimestamp];
    [firstUpcomingViewTimestamp2 timeIntervalSinceReferenceDate];
    [v3 setFirstUpcomingViewTimestamp:?];
  }

  firstCollapsedViewTimestamp = [(ATXDigestTimeline *)self firstCollapsedViewTimestamp];

  if (firstCollapsedViewTimestamp)
  {
    firstCollapsedViewTimestamp2 = [(ATXDigestTimeline *)self firstCollapsedViewTimestamp];
    [firstCollapsedViewTimestamp2 timeIntervalSinceReferenceDate];
    [v3 setFirstCollapsedViewTimestamp:?];
  }

  firstScheduledViewTimestamp = [(ATXDigestTimeline *)self firstScheduledViewTimestamp];

  if (firstScheduledViewTimestamp)
  {
    firstScheduledViewTimestamp2 = [(ATXDigestTimeline *)self firstScheduledViewTimestamp];
    [firstScheduledViewTimestamp2 timeIntervalSinceReferenceDate];
    [v3 setFirstScheduledViewTimestamp:?];
  }

  digestRemovedTimestamp = [(ATXDigestTimeline *)self digestRemovedTimestamp];

  if (digestRemovedTimestamp)
  {
    digestRemovedTimestamp2 = [(ATXDigestTimeline *)self digestRemovedTimestamp];
    [digestRemovedTimestamp2 timeIntervalSinceReferenceDate];
    [v3 setDigestRemovedTimestamp:?];
  }

  return v3;
}

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [[ATXPBDigestTimeline alloc] initFromJSON:nCopy];

  v6 = [(ATXDigestTimeline *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  proto = [(ATXDigestTimeline *)self proto];
  jsonRepresentation = [proto jsonRepresentation];

  return jsonRepresentation;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(ATXDigestTimeline *)self jsonDict];
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:0];

  return v4;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1BF549000, a2, OS_LOG_TYPE_FAULT, "Unable to construct class %@ from ProtoBuf object", &v5, 0xCu);
}

@end