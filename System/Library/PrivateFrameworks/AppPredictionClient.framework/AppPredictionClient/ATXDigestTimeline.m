@interface ATXDigestTimeline
- (ATXDigestTimeline)initWithCoder:(id)a3;
- (ATXDigestTimeline)initWithProto:(id)a3;
- (ATXDigestTimeline)initWithProtoData:(id)a3;
- (BOOL)_timelineFieldsAreEqual:(id)a3 otherField:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXDigestTimeline:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeAsProto;
- (id)initFromJSON:(id)a3;
- (id)json;
- (id)jsonRepresentation;
- (id)proto;
- (void)encodeWithCoder:(id)a3;
- (void)setDigestRemovedTimestamp:(id)a3;
- (void)setFirstCollapsedViewTimestamp:(id)a3;
- (void)setFirstScheduledViewTimestamp:(id)a3;
- (void)setFirstUpcomingViewTimestamp:(id)a3;
@end

@implementation ATXDigestTimeline

- (void)setFirstUpcomingViewTimestamp:(id)a3
{
  v4 = a3;
  firstUpcomingViewTimestamp = self->_firstUpcomingViewTimestamp;
  v8 = v4;
  if (firstUpcomingViewTimestamp)
  {
    v6 = [(NSDate *)firstUpcomingViewTimestamp earlierDate:v4];
  }

  else
  {
    v6 = v4;
  }

  v7 = self->_firstUpcomingViewTimestamp;
  self->_firstUpcomingViewTimestamp = v6;
}

- (void)setFirstCollapsedViewTimestamp:(id)a3
{
  v4 = a3;
  firstCollapsedViewTimestamp = self->_firstCollapsedViewTimestamp;
  v8 = v4;
  if (firstCollapsedViewTimestamp)
  {
    v6 = [(NSDate *)firstCollapsedViewTimestamp earlierDate:v4];
  }

  else
  {
    v6 = v4;
  }

  v7 = self->_firstCollapsedViewTimestamp;
  self->_firstCollapsedViewTimestamp = v6;
}

- (void)setFirstScheduledViewTimestamp:(id)a3
{
  v4 = a3;
  firstScheduledViewTimestamp = self->_firstScheduledViewTimestamp;
  v8 = v4;
  if (firstScheduledViewTimestamp)
  {
    v6 = [(NSDate *)firstScheduledViewTimestamp earlierDate:v4];
  }

  else
  {
    v6 = v4;
  }

  v7 = self->_firstScheduledViewTimestamp;
  self->_firstScheduledViewTimestamp = v6;
}

- (void)setDigestRemovedTimestamp:(id)a3
{
  v4 = a3;
  digestRemovedTimestamp = self->_digestRemovedTimestamp;
  v8 = v4;
  if (digestRemovedTimestamp)
  {
    v6 = [(NSDate *)digestRemovedTimestamp earlierDate:v4];
  }

  else
  {
    v6 = v4;
  }

  v7 = self->_digestRemovedTimestamp;
  self->_digestRemovedTimestamp = v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ATXDigestTimeline allocWithZone:?]];
  v5 = [(ATXDigestTimeline *)self firstUpcomingViewTimestamp];
  [(ATXDigestTimeline *)v4 setFirstUpcomingViewTimestamp:v5];

  v6 = [(ATXDigestTimeline *)self firstCollapsedViewTimestamp];
  [(ATXDigestTimeline *)v4 setFirstCollapsedViewTimestamp:v6];

  v7 = [(ATXDigestTimeline *)self firstScheduledViewTimestamp];
  [(ATXDigestTimeline *)v4 setFirstScheduledViewTimestamp:v7];

  v8 = [(ATXDigestTimeline *)self digestRemovedTimestamp];
  [(ATXDigestTimeline *)v4 setDigestRemovedTimestamp:v8];

  return v4;
}

- (BOOL)_timelineFieldsAreEqual:(id)a3 otherField:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = (v5 | v6) == 0;
  if (v5 && v6)
  {
    [v5 timeIntervalSinceDate:v6];
    if (v9 < 0.0)
    {
      v9 = -v9;
    }

    v8 = v9 < 0.001;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXDigestTimeline *)self isEqualToATXDigestTimeline:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXDigestTimeline:(id)a3
{
  v4 = a3;
  v5 = [(ATXDigestTimeline *)self firstUpcomingViewTimestamp];
  v6 = [v4 firstUpcomingViewTimestamp];
  v7 = [(ATXDigestTimeline *)self _timelineFieldsAreEqual:v5 otherField:v6];

  if (v7 && (-[ATXDigestTimeline firstScheduledViewTimestamp](self, "firstScheduledViewTimestamp"), v8 = objc_claimAutoreleasedReturnValue(), [v4 firstScheduledViewTimestamp], v9 = objc_claimAutoreleasedReturnValue(), v10 = -[ATXDigestTimeline _timelineFieldsAreEqual:otherField:](self, "_timelineFieldsAreEqual:otherField:", v8, v9), v9, v8, v10) && (-[ATXDigestTimeline firstCollapsedViewTimestamp](self, "firstCollapsedViewTimestamp"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "firstCollapsedViewTimestamp"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[ATXDigestTimeline _timelineFieldsAreEqual:otherField:](self, "_timelineFieldsAreEqual:otherField:", v11, v12), v12, v11, v13))
  {
    v14 = [(ATXDigestTimeline *)self digestRemovedTimestamp];
    v15 = [v4 digestRemovedTimestamp];
    v16 = [(ATXDigestTimeline *)self _timelineFieldsAreEqual:v14 otherField:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXDigestTimeline *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXDigestTimeline)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXDigestTimeline *)self initWithProtoData:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)encodeAsProto
{
  v2 = [(ATXDigestTimeline *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXDigestTimeline)initWithProto:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ATXDigestTimeline;
  v5 = [(ATXDigestTimeline *)&v18 init];
  if (v5)
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v4;
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

- (ATXDigestTimeline)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBDigestTimeline alloc] initWithData:v4];

    self = [(ATXDigestTimeline *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [(ATXDigestTimeline *)self firstUpcomingViewTimestamp];

  if (v4)
  {
    v5 = [(ATXDigestTimeline *)self firstUpcomingViewTimestamp];
    [v5 timeIntervalSinceReferenceDate];
    [v3 setFirstUpcomingViewTimestamp:?];
  }

  v6 = [(ATXDigestTimeline *)self firstCollapsedViewTimestamp];

  if (v6)
  {
    v7 = [(ATXDigestTimeline *)self firstCollapsedViewTimestamp];
    [v7 timeIntervalSinceReferenceDate];
    [v3 setFirstCollapsedViewTimestamp:?];
  }

  v8 = [(ATXDigestTimeline *)self firstScheduledViewTimestamp];

  if (v8)
  {
    v9 = [(ATXDigestTimeline *)self firstScheduledViewTimestamp];
    [v9 timeIntervalSinceReferenceDate];
    [v3 setFirstScheduledViewTimestamp:?];
  }

  v10 = [(ATXDigestTimeline *)self digestRemovedTimestamp];

  if (v10)
  {
    v11 = [(ATXDigestTimeline *)self digestRemovedTimestamp];
    [v11 timeIntervalSinceReferenceDate];
    [v3 setDigestRemovedTimestamp:?];
  }

  return v3;
}

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v5 = [[ATXPBDigestTimeline alloc] initFromJSON:v4];

  v6 = [(ATXDigestTimeline *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  v2 = [(ATXDigestTimeline *)self proto];
  v3 = [v2 jsonRepresentation];

  return v3;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(ATXDigestTimeline *)self jsonDict];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

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