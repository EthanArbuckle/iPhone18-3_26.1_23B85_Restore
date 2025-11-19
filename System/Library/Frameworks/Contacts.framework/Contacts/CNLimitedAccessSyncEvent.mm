@interface CNLimitedAccessSyncEvent
- (CNLimitedAccessSyncEvent)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNLimitedAccessSyncEvent

- (void)encodeWithCoder:(id)a3
{
  bundleID = self->_bundleID;
  v5 = a3;
  [v5 encodeObject:bundleID forKey:@"_bundleID"];
  [v5 encodeObject:self->_contactID forKey:@"_contactID"];
  [v5 encodeInteger:self->_sequenceNumber forKey:@"_sequenceNumber"];
  [v5 encodeBool:self->_isActive forKey:@"_isActive"];
}

- (CNLimitedAccessSyncEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CNLimitedAccessSyncEvent;
  v5 = [(CNLimitedAccessSyncEvent *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    v7 = [v6 copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_contactID"];
    v10 = [v9 copy];
    contactID = v5->_contactID;
    v5->_contactID = v10;

    v5->_sequenceNumber = [v4 decodeIntegerForKey:@"_sequenceNumber"];
    v5->_isActive = [v4 decodeBoolForKey:@"_isActive"];
    v12 = v5;
  }

  return v5;
}

@end