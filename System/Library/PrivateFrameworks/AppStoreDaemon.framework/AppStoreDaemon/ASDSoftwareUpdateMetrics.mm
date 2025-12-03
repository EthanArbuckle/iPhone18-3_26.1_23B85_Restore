@interface ASDSoftwareUpdateMetrics
- (ASDSoftwareUpdateMetrics)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASDSoftwareUpdateMetrics

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[ASDSoftwareUpdateMetrics allocWithZone:](ASDSoftwareUpdateMetrics init];
  v6 = [(NSDate *)self->_lastUpdateCheck copyWithZone:zone];
  lastUpdateCheck = v5->_lastUpdateCheck;
  v5->_lastUpdateCheck = v6;

  v8 = [(NSDate *)self->_nextUpdateCheck copyWithZone:zone];
  nextUpdateCheck = v5->_nextUpdateCheck;
  v5->_nextUpdateCheck = v8;

  v5->_usingModernUpdatesCheck = self->_usingModernUpdatesCheck;
  return v5;
}

- (ASDSoftwareUpdateMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ASDSoftwareUpdateMetrics *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdateCheck"];
    lastUpdateCheck = v5->_lastUpdateCheck;
    v5->_lastUpdateCheck = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nextUpdateCheck"];
    nextUpdateCheck = v5->_nextUpdateCheck;
    v5->_nextUpdateCheck = v8;

    v5->_usingModernUpdatesCheck = [coderCopy decodeBoolForKey:@"usingModernUpdateCheck"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  lastUpdateCheck = self->_lastUpdateCheck;
  coderCopy = coder;
  [coderCopy encodeObject:lastUpdateCheck forKey:@"lastUpdateCheck"];
  [coderCopy encodeObject:self->_nextUpdateCheck forKey:@"nextUpdateCheck"];
  [coderCopy encodeBool:self->_usingModernUpdatesCheck forKey:@"usingModernUpdateCheck"];
}

@end