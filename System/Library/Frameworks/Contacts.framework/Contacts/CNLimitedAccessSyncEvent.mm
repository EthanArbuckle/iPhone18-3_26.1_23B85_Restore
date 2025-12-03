@interface CNLimitedAccessSyncEvent
- (CNLimitedAccessSyncEvent)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNLimitedAccessSyncEvent

- (void)encodeWithCoder:(id)coder
{
  bundleID = self->_bundleID;
  coderCopy = coder;
  [coderCopy encodeObject:bundleID forKey:@"_bundleID"];
  [coderCopy encodeObject:self->_contactID forKey:@"_contactID"];
  [coderCopy encodeInteger:self->_sequenceNumber forKey:@"_sequenceNumber"];
  [coderCopy encodeBool:self->_isActive forKey:@"_isActive"];
}

- (CNLimitedAccessSyncEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CNLimitedAccessSyncEvent;
  v5 = [(CNLimitedAccessSyncEvent *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleID"];
    v7 = [v6 copy];
    bundleID = v5->_bundleID;
    v5->_bundleID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_contactID"];
    v10 = [v9 copy];
    contactID = v5->_contactID;
    v5->_contactID = v10;

    v5->_sequenceNumber = [coderCopy decodeIntegerForKey:@"_sequenceNumber"];
    v5->_isActive = [coderCopy decodeBoolForKey:@"_isActive"];
    v12 = v5;
  }

  return v5;
}

@end