@interface ASDSoftwareUpdateMetrics
- (ASDSoftwareUpdateMetrics)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDSoftwareUpdateMetrics

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[ASDSoftwareUpdateMetrics allocWithZone:](ASDSoftwareUpdateMetrics init];
  v6 = [(NSDate *)self->_lastUpdateCheck copyWithZone:a3];
  lastUpdateCheck = v5->_lastUpdateCheck;
  v5->_lastUpdateCheck = v6;

  v8 = [(NSDate *)self->_nextUpdateCheck copyWithZone:a3];
  nextUpdateCheck = v5->_nextUpdateCheck;
  v5->_nextUpdateCheck = v8;

  v5->_usingModernUpdatesCheck = self->_usingModernUpdatesCheck;
  return v5;
}

- (ASDSoftwareUpdateMetrics)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASDSoftwareUpdateMetrics *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdateCheck"];
    lastUpdateCheck = v5->_lastUpdateCheck;
    v5->_lastUpdateCheck = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"nextUpdateCheck"];
    nextUpdateCheck = v5->_nextUpdateCheck;
    v5->_nextUpdateCheck = v8;

    v5->_usingModernUpdatesCheck = [v4 decodeBoolForKey:@"usingModernUpdateCheck"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  lastUpdateCheck = self->_lastUpdateCheck;
  v5 = a3;
  [v5 encodeObject:lastUpdateCheck forKey:@"lastUpdateCheck"];
  [v5 encodeObject:self->_nextUpdateCheck forKey:@"nextUpdateCheck"];
  [v5 encodeBool:self->_usingModernUpdatesCheck forKey:@"usingModernUpdateCheck"];
}

@end