@interface ATXSharedDigestEngagementTrackingMetrics
- (ATXSharedDigestEngagementTrackingMetrics)initWithCoder:(id)a3;
- (ATXSharedDigestEngagementTrackingMetrics)initWithProto:(id)a3;
- (ATXSharedDigestEngagementTrackingMetrics)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXSharedDigestEngagementTrackingMetrics:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)encodeAsProto;
- (id)initFromJSON:(id)a3;
- (id)json;
- (id)jsonRepresentation;
- (id)proto;
- (void)addMetricsFromOtherTracker:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXSharedDigestEngagementTrackingMetrics

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ATXSharedDigestEngagementTrackingMetrics allocWithZone:?]];
  [(ATXSharedDigestEngagementTrackingMetrics *)v4 setNumEngagementsInUpcoming:[(ATXSharedDigestEngagementTrackingMetrics *)self numEngagementsInUpcoming]];
  [(ATXSharedDigestEngagementTrackingMetrics *)v4 setNumEngagementsInScheduled:[(ATXSharedDigestEngagementTrackingMetrics *)self numEngagementsInScheduled]];
  [(ATXSharedDigestEngagementTrackingMetrics *)v4 setNumEngagementsAfterExpiration:[(ATXSharedDigestEngagementTrackingMetrics *)self numEngagementsAfterExpiration]];
  [(ATXSharedDigestEngagementTrackingMetrics *)v4 setNumExpansions:[(ATXSharedDigestEngagementTrackingMetrics *)self numExpansions]];
  [(ATXSharedDigestEngagementTrackingMetrics *)v4 setNumDigestExpansions:[(ATXSharedDigestEngagementTrackingMetrics *)self numDigestExpansions]];
  v5 = [(ATXSharedDigestEngagementTrackingMetrics *)self sectionIdentifier];
  [(ATXSharedDigestEngagementTrackingMetrics *)v4 setSectionIdentifier:v5];

  [(ATXSharedDigestEngagementTrackingMetrics *)v4 setSectionPosition:[(ATXSharedDigestEngagementTrackingMetrics *)self sectionPosition]];
  [(ATXSharedDigestEngagementTrackingMetrics *)v4 setSectionSize:[(ATXSharedDigestEngagementTrackingMetrics *)self sectionSize]];
  return v4;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSharedDigestEngagementTrackingMetrics *)self isEqualToATXSharedDigestEngagementTrackingMetrics:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXSharedDigestEngagementTrackingMetrics:(id)a3
{
  v4 = a3;
  v5 = [(ATXSharedDigestEngagementTrackingMetrics *)self numEngagementsInUpcoming];
  if (v5 == [v4 numEngagementsInUpcoming] && (v6 = -[ATXSharedDigestEngagementTrackingMetrics numEngagementsInScheduled](self, "numEngagementsInScheduled"), v6 == objc_msgSend(v4, "numEngagementsInScheduled")) && (v7 = -[ATXSharedDigestEngagementTrackingMetrics numEngagementsAfterExpiration](self, "numEngagementsAfterExpiration"), v7 == objc_msgSend(v4, "numEngagementsAfterExpiration")) && (v8 = -[ATXSharedDigestEngagementTrackingMetrics numExpansions](self, "numExpansions"), v8 == objc_msgSend(v4, "numExpansions")) && (v9 = -[ATXSharedDigestEngagementTrackingMetrics numDigestExpansions](self, "numDigestExpansions"), v9 == objc_msgSend(v4, "numDigestExpansions")) && (v10 = -[ATXSharedDigestEngagementTrackingMetrics sectionPosition](self, "sectionPosition"), v10 == objc_msgSend(v4, "sectionPosition")) && (v11 = -[ATXSharedDigestEngagementTrackingMetrics sectionSize](self, "sectionSize"), v11 == objc_msgSend(v4, "sectionSize")))
  {
    v12 = self->_sectionIdentifier;
    v13 = v12;
    if (v12 == v4[6])
    {
      v14 = 1;
    }

    else
    {
      v14 = [(NSString *)v12 isEqual:?];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)addMetricsFromOtherTracker:(id)a3
{
  v4 = a3;
  -[ATXSharedDigestEngagementTrackingMetrics setNumEngagementsAfterExpiration:](self, "setNumEngagementsAfterExpiration:", -[ATXSharedDigestEngagementTrackingMetrics numEngagementsAfterExpiration](self, "numEngagementsAfterExpiration") + [v4 numEngagementsAfterExpiration]);
  -[ATXSharedDigestEngagementTrackingMetrics setNumEngagementsInScheduled:](self, "setNumEngagementsInScheduled:", -[ATXSharedDigestEngagementTrackingMetrics numEngagementsInScheduled](self, "numEngagementsInScheduled") + [v4 numEngagementsInScheduled]);
  -[ATXSharedDigestEngagementTrackingMetrics setNumEngagementsInUpcoming:](self, "setNumEngagementsInUpcoming:", -[ATXSharedDigestEngagementTrackingMetrics numEngagementsInUpcoming](self, "numEngagementsInUpcoming") + [v4 numEngagementsInUpcoming]);
  v5 = [v4 numExpansions];

  v6 = [(ATXSharedDigestEngagementTrackingMetrics *)self numExpansions]+ v5;

  [(ATXSharedDigestEngagementTrackingMetrics *)self setNumExpansions:v6];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ATXSharedDigestEngagementTrackingMetrics *)self encodeAsProto];
  [v4 encodeObject:v5 forKey:@"protobufData"];
}

- (ATXSharedDigestEngagementTrackingMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXSharedDigestEngagementTrackingMetrics *)self initWithProtoData:v5];
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
  v2 = [(ATXSharedDigestEngagementTrackingMetrics *)self proto];
  v3 = [v2 data];

  return v3;
}

- (ATXSharedDigestEngagementTrackingMetrics)initWithProto:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ATXSharedDigestEngagementTrackingMetrics;
  v5 = [(ATXSharedDigestEngagementTrackingMetrics *)&v13 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  if (!v4)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = __atxlog_handle_notification_management();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(ATXDigestTimeline *)v5 initWithProto:v11];
    }

    goto LABEL_9;
  }

  v6 = v4;
  v5->_numEngagementsInUpcoming = [v6 numEngagementsInUpcoming];
  v5->_numEngagementsInScheduled = [v6 numEngagementsInScheduled];
  v5->_numEngagementsAfterExpiration = [v6 numEngagementsAfterExpiration];
  v5->_numExpansions = [v6 numExpansions];
  v7 = [v6 sectionIdentifier];
  sectionIdentifier = v5->_sectionIdentifier;
  v5->_sectionIdentifier = v7;

  v5->_sectionPosition = [v6 sectionPosition];
  v5->_sectionSize = [v6 sectionSize];
  v9 = [v6 numDigestExpansions];

  v5->_numDigestExpansions = v9;
LABEL_5:
  v10 = v5;
LABEL_10:

  return v10;
}

- (ATXSharedDigestEngagementTrackingMetrics)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[ATXPBSharedDigestEngagementTrackingMetrics alloc] initWithData:v4];

    self = [(ATXSharedDigestEngagementTrackingMetrics *)self initWithProto:v5];
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
  [v3 setNumEngagementsInUpcoming:self->_numEngagementsInUpcoming];
  [v3 setNumEngagementsInScheduled:self->_numEngagementsInScheduled];
  [v3 setNumEngagementsAfterExpiration:self->_numEngagementsAfterExpiration];
  [v3 setNumExpansions:self->_numExpansions];
  [v3 setSectionIdentifier:self->_sectionIdentifier];
  [v3 setSectionPosition:self->_sectionPosition];
  [v3 setSectionSize:self->_sectionSize];
  [v3 setNumDigestExpansions:self->_numDigestExpansions];

  return v3;
}

- (id)initFromJSON:(id)a3
{
  v4 = a3;
  v5 = [[ATXPBSharedDigestEngagementTrackingMetrics alloc] initFromJSON:v4];

  v6 = [(ATXSharedDigestEngagementTrackingMetrics *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  v2 = [(ATXSharedDigestEngagementTrackingMetrics *)self proto];
  v3 = [v2 jsonRepresentation];

  return v3;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  v3 = [(ATXSharedDigestEngagementTrackingMetrics *)self jsonDict];
  v4 = [v2 dataWithJSONObject:v3 options:1 error:0];

  return v4;
}

@end