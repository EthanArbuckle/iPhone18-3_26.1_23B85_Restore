@interface ATXPBAppModeEntityScoreMetrics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation ATXPBAppModeEntityScoreMetrics

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBAppModeEntityScoreMetrics;
  v4 = [(ATXPBAppModeEntityScoreMetrics *)&v8 description];
  v5 = [(ATXPBAppModeEntityScoreMetrics *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  bundleId = self->_bundleId;
  if (bundleId)
  {
    [v3 setObject:bundleId forKey:@"bundleId"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_bundleId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_activityState)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_modelVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_numDaysSinceStartOfMetricsLogging)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_bundleId)
  {
    [v4 setBundleId:?];
    v4 = v5;
  }

  if (self->_activityState)
  {
    [v5 setActivityState:?];
    v4 = v5;
  }

  if (self->_modelVersion)
  {
    [v5 setModelVersion:?];
    v4 = v5;
  }

  if (self->_numDaysSinceStartOfMetricsLogging)
  {
    [v5 setNumDaysSinceStartOfMetricsLogging:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_bundleId copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_activityState copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_modelVersion copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_numDaysSinceStartOfMetricsLogging copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((bundleId = self->_bundleId, !(bundleId | v4[2])) || -[NSString isEqual:](bundleId, "isEqual:")) && ((activityState = self->_activityState, !(activityState | v4[1])) || -[NSString isEqual:](activityState, "isEqual:")) && ((modelVersion = self->_modelVersion, !(modelVersion | v4[3])) || -[NSString isEqual:](modelVersion, "isEqual:")))
  {
    numDaysSinceStartOfMetricsLogging = self->_numDaysSinceStartOfMetricsLogging;
    if (numDaysSinceStartOfMetricsLogging | v4[4])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[2])
  {
    [(ATXPBAppModeEntityScoreMetrics *)self setBundleId:?];
  }

  if (v4[1])
  {
    [(ATXPBAppModeEntityScoreMetrics *)self setActivityState:?];
  }

  if (v4[3])
  {
    [(ATXPBAppModeEntityScoreMetrics *)self setModelVersion:?];
  }

  if (v4[4])
  {
    [(ATXPBAppModeEntityScoreMetrics *)self setNumDaysSinceStartOfMetricsLogging:?];
  }
}

@end