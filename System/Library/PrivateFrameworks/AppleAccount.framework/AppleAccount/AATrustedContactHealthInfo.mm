@interface AATrustedContactHealthInfo
- (AATrustedContactHealthInfo)initWithCoder:(id)coder;
- (AATrustedContactHealthInfo)initWithID:(id)d lastValidCheckTimeStamp:(id)stamp;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AATrustedContactHealthInfo

- (AATrustedContactHealthInfo)initWithID:(id)d lastValidCheckTimeStamp:(id)stamp
{
  dCopy = d;
  stampCopy = stamp;
  v12.receiver = self;
  v12.super_class = AATrustedContactHealthInfo;
  v9 = [(AATrustedContactHealthInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, d);
    objc_storeStrong(&v10->_lastValidCheckTimestamp, stamp);
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"_identifier"];
  [coderCopy encodeObject:self->_lastValidCheckTimestamp forKey:@"_lastValidCheckTimestamp"];
}

- (AATrustedContactHealthInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AATrustedContactHealthInfo *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_lastValidCheckTimestamp"];
    lastValidCheckTimestamp = v5->_lastValidCheckTimestamp;
    v5->_lastValidCheckTimestamp = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSUUID *)self->_identifier copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSDate *)self->_lastValidCheckTimestamp copy];
  v8 = v4[2];
  v4[2] = v7;

  return v4;
}

@end