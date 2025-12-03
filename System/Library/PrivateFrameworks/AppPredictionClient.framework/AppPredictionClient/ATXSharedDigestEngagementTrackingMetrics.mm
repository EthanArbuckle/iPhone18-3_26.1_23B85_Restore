@interface ATXSharedDigestEngagementTrackingMetrics
- (ATXSharedDigestEngagementTrackingMetrics)initWithCoder:(id)coder;
- (ATXSharedDigestEngagementTrackingMetrics)initWithProto:(id)proto;
- (ATXSharedDigestEngagementTrackingMetrics)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXSharedDigestEngagementTrackingMetrics:(id)metrics;
- (id)copyWithZone:(_NSZone *)zone;
- (id)encodeAsProto;
- (id)initFromJSON:(id)n;
- (id)json;
- (id)jsonRepresentation;
- (id)proto;
- (void)addMetricsFromOtherTracker:(id)tracker;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXSharedDigestEngagementTrackingMetrics

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ATXSharedDigestEngagementTrackingMetrics allocWithZone:?]];
  [(ATXSharedDigestEngagementTrackingMetrics *)v4 setNumEngagementsInUpcoming:[(ATXSharedDigestEngagementTrackingMetrics *)self numEngagementsInUpcoming]];
  [(ATXSharedDigestEngagementTrackingMetrics *)v4 setNumEngagementsInScheduled:[(ATXSharedDigestEngagementTrackingMetrics *)self numEngagementsInScheduled]];
  [(ATXSharedDigestEngagementTrackingMetrics *)v4 setNumEngagementsAfterExpiration:[(ATXSharedDigestEngagementTrackingMetrics *)self numEngagementsAfterExpiration]];
  [(ATXSharedDigestEngagementTrackingMetrics *)v4 setNumExpansions:[(ATXSharedDigestEngagementTrackingMetrics *)self numExpansions]];
  [(ATXSharedDigestEngagementTrackingMetrics *)v4 setNumDigestExpansions:[(ATXSharedDigestEngagementTrackingMetrics *)self numDigestExpansions]];
  sectionIdentifier = [(ATXSharedDigestEngagementTrackingMetrics *)self sectionIdentifier];
  [(ATXSharedDigestEngagementTrackingMetrics *)v4 setSectionIdentifier:sectionIdentifier];

  [(ATXSharedDigestEngagementTrackingMetrics *)v4 setSectionPosition:[(ATXSharedDigestEngagementTrackingMetrics *)self sectionPosition]];
  [(ATXSharedDigestEngagementTrackingMetrics *)v4 setSectionSize:[(ATXSharedDigestEngagementTrackingMetrics *)self sectionSize]];
  return v4;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXSharedDigestEngagementTrackingMetrics *)self isEqualToATXSharedDigestEngagementTrackingMetrics:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXSharedDigestEngagementTrackingMetrics:(id)metrics
{
  metricsCopy = metrics;
  numEngagementsInUpcoming = [(ATXSharedDigestEngagementTrackingMetrics *)self numEngagementsInUpcoming];
  if (numEngagementsInUpcoming == [metricsCopy numEngagementsInUpcoming] && (v6 = -[ATXSharedDigestEngagementTrackingMetrics numEngagementsInScheduled](self, "numEngagementsInScheduled"), v6 == objc_msgSend(metricsCopy, "numEngagementsInScheduled")) && (v7 = -[ATXSharedDigestEngagementTrackingMetrics numEngagementsAfterExpiration](self, "numEngagementsAfterExpiration"), v7 == objc_msgSend(metricsCopy, "numEngagementsAfterExpiration")) && (v8 = -[ATXSharedDigestEngagementTrackingMetrics numExpansions](self, "numExpansions"), v8 == objc_msgSend(metricsCopy, "numExpansions")) && (v9 = -[ATXSharedDigestEngagementTrackingMetrics numDigestExpansions](self, "numDigestExpansions"), v9 == objc_msgSend(metricsCopy, "numDigestExpansions")) && (v10 = -[ATXSharedDigestEngagementTrackingMetrics sectionPosition](self, "sectionPosition"), v10 == objc_msgSend(metricsCopy, "sectionPosition")) && (v11 = -[ATXSharedDigestEngagementTrackingMetrics sectionSize](self, "sectionSize"), v11 == objc_msgSend(metricsCopy, "sectionSize")))
  {
    v12 = self->_sectionIdentifier;
    v13 = v12;
    if (v12 == metricsCopy[6])
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

- (void)addMetricsFromOtherTracker:(id)tracker
{
  trackerCopy = tracker;
  -[ATXSharedDigestEngagementTrackingMetrics setNumEngagementsAfterExpiration:](self, "setNumEngagementsAfterExpiration:", -[ATXSharedDigestEngagementTrackingMetrics numEngagementsAfterExpiration](self, "numEngagementsAfterExpiration") + [trackerCopy numEngagementsAfterExpiration]);
  -[ATXSharedDigestEngagementTrackingMetrics setNumEngagementsInScheduled:](self, "setNumEngagementsInScheduled:", -[ATXSharedDigestEngagementTrackingMetrics numEngagementsInScheduled](self, "numEngagementsInScheduled") + [trackerCopy numEngagementsInScheduled]);
  -[ATXSharedDigestEngagementTrackingMetrics setNumEngagementsInUpcoming:](self, "setNumEngagementsInUpcoming:", -[ATXSharedDigestEngagementTrackingMetrics numEngagementsInUpcoming](self, "numEngagementsInUpcoming") + [trackerCopy numEngagementsInUpcoming]);
  numExpansions = [trackerCopy numExpansions];

  v6 = [(ATXSharedDigestEngagementTrackingMetrics *)self numExpansions]+ numExpansions;

  [(ATXSharedDigestEngagementTrackingMetrics *)self setNumExpansions:v6];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXSharedDigestEngagementTrackingMetrics *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXSharedDigestEngagementTrackingMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  if (v5)
  {
    self = [(ATXSharedDigestEngagementTrackingMetrics *)self initWithProtoData:v5];
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
  proto = [(ATXSharedDigestEngagementTrackingMetrics *)self proto];
  data = [proto data];

  return data;
}

- (ATXSharedDigestEngagementTrackingMetrics)initWithProto:(id)proto
{
  protoCopy = proto;
  v13.receiver = self;
  v13.super_class = ATXSharedDigestEngagementTrackingMetrics;
  v5 = [(ATXSharedDigestEngagementTrackingMetrics *)&v13 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  if (!protoCopy)
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

  v6 = protoCopy;
  v5->_numEngagementsInUpcoming = [v6 numEngagementsInUpcoming];
  v5->_numEngagementsInScheduled = [v6 numEngagementsInScheduled];
  v5->_numEngagementsAfterExpiration = [v6 numEngagementsAfterExpiration];
  v5->_numExpansions = [v6 numExpansions];
  sectionIdentifier = [v6 sectionIdentifier];
  sectionIdentifier = v5->_sectionIdentifier;
  v5->_sectionIdentifier = sectionIdentifier;

  v5->_sectionPosition = [v6 sectionPosition];
  v5->_sectionSize = [v6 sectionSize];
  numDigestExpansions = [v6 numDigestExpansions];

  v5->_numDigestExpansions = numDigestExpansions;
LABEL_5:
  v10 = v5;
LABEL_10:

  return v10;
}

- (ATXSharedDigestEngagementTrackingMetrics)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBSharedDigestEngagementTrackingMetrics alloc] initWithData:dataCopy];

    self = [(ATXSharedDigestEngagementTrackingMetrics *)self initWithProto:v5];
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

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v5 = [[ATXPBSharedDigestEngagementTrackingMetrics alloc] initFromJSON:nCopy];

  v6 = [(ATXSharedDigestEngagementTrackingMetrics *)self initWithProto:v5];
  return v6;
}

- (id)jsonRepresentation
{
  proto = [(ATXSharedDigestEngagementTrackingMetrics *)self proto];
  jsonRepresentation = [proto jsonRepresentation];

  return jsonRepresentation;
}

- (id)json
{
  v2 = MEMORY[0x1E696ACB0];
  jsonDict = [(ATXSharedDigestEngagementTrackingMetrics *)self jsonDict];
  v4 = [v2 dataWithJSONObject:jsonDict options:1 error:0];

  return v4;
}

@end