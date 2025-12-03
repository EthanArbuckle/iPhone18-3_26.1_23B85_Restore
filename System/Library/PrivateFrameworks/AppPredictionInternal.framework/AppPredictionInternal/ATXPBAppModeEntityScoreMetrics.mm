@interface ATXPBAppModeEntityScoreMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBAppModeEntityScoreMetrics

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBAppModeEntityScoreMetrics;
  v4 = [(ATXPBAppModeEntityScoreMetrics *)&v8 description];
  dictionaryRepresentation = [(ATXPBAppModeEntityScoreMetrics *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [dictionary setObject:bundleId forKey:@"bundleId"];
  }

  activityState = self->_activityState;
  if (activityState)
  {
    [v4 setObject:activityState forKey:@"activityState"];
  }

  modelVersion = self->_modelVersion;
  if (modelVersion)
  {
    [v4 setObject:modelVersion forKey:@"modelVersion"];
  }

  numDaysSinceStartOfMetricsLogging = self->_numDaysSinceStartOfMetricsLogging;
  if (numDaysSinceStartOfMetricsLogging)
  {
    [v4 setObject:numDaysSinceStartOfMetricsLogging forKey:@"numDaysSinceStartOfMetricsLogging"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_activityState)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_modelVersion)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_numDaysSinceStartOfMetricsLogging)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_bundleId)
  {
    [toCopy setBundleId:?];
    toCopy = v5;
  }

  if (self->_activityState)
  {
    [v5 setActivityState:?];
    toCopy = v5;
  }

  if (self->_modelVersion)
  {
    [v5 setModelVersion:?];
    toCopy = v5;
  }

  if (self->_numDaysSinceStartOfMetricsLogging)
  {
    [v5 setNumDaysSinceStartOfMetricsLogging:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_activityState copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_modelVersion copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_numDaysSinceStartOfMetricsLogging copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((bundleId = self->_bundleId, !(bundleId | equalCopy[2])) || -[NSString isEqual:](bundleId, "isEqual:")) && ((activityState = self->_activityState, !(activityState | equalCopy[1])) || -[NSString isEqual:](activityState, "isEqual:")) && ((modelVersion = self->_modelVersion, !(modelVersion | equalCopy[3])) || -[NSString isEqual:](modelVersion, "isEqual:")))
  {
    numDaysSinceStartOfMetricsLogging = self->_numDaysSinceStartOfMetricsLogging;
    if (numDaysSinceStartOfMetricsLogging | equalCopy[4])
    {
      v9 = [(NSString *)numDaysSinceStartOfMetricsLogging isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleId hash];
  v4 = [(NSString *)self->_activityState hash]^ v3;
  v5 = [(NSString *)self->_modelVersion hash];
  return v4 ^ v5 ^ [(NSString *)self->_numDaysSinceStartOfMetricsLogging hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[2])
  {
    [(ATXPBAppModeEntityScoreMetrics *)self setBundleId:?];
  }

  if (fromCopy[1])
  {
    [(ATXPBAppModeEntityScoreMetrics *)self setActivityState:?];
  }

  if (fromCopy[3])
  {
    [(ATXPBAppModeEntityScoreMetrics *)self setModelVersion:?];
  }

  if (fromCopy[4])
  {
    [(ATXPBAppModeEntityScoreMetrics *)self setNumDaysSinceStartOfMetricsLogging:?];
  }
}

@end