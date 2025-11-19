@interface AATrustedContactHealthInfo
- (AATrustedContactHealthInfo)initWithCoder:(id)a3;
- (AATrustedContactHealthInfo)initWithID:(id)a3 lastValidCheckTimeStamp:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AATrustedContactHealthInfo

- (AATrustedContactHealthInfo)initWithID:(id)a3 lastValidCheckTimeStamp:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AATrustedContactHealthInfo;
  v9 = [(AATrustedContactHealthInfo *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_lastValidCheckTimestamp, a4);
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"_identifier"];
  [v5 encodeObject:self->_lastValidCheckTimestamp forKey:@"_lastValidCheckTimestamp"];
}

- (AATrustedContactHealthInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AATrustedContactHealthInfo *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_lastValidCheckTimestamp"];
    lastValidCheckTimestamp = v5->_lastValidCheckTimestamp;
    v5->_lastValidCheckTimestamp = v8;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSUUID *)self->_identifier copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSDate *)self->_lastValidCheckTimestamp copy];
  v8 = v4[2];
  v4[2] = v7;

  return v4;
}

@end