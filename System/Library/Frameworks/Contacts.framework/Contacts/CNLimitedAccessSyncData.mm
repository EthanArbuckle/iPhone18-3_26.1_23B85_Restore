@interface CNLimitedAccessSyncData
- (CNLimitedAccessSyncData)initWithCoder:(id)coder;
- (NSEnumerator)syncEvents;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNLimitedAccessSyncData

- (NSEnumerator)syncEvents
{
  syncEventsArray = [(CNLimitedAccessSyncData *)self syncEventsArray];
  objectEnumerator = [syncEventsArray objectEnumerator];

  return objectEnumerator;
}

- (void)encodeWithCoder:(id)coder
{
  currentSequenceNumber = self->_currentSequenceNumber;
  coderCopy = coder;
  [coderCopy encodeInteger:currentSequenceNumber forKey:@"_currentSequenceNumber"];
  [coderCopy encodeBool:self->_fullSyncRequired forKey:@"_fullSyncRequired"];
  [coderCopy encodeObject:self->_syncEventsArray forKey:@"_syncEventsArray"];
}

- (CNLimitedAccessSyncData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CNLimitedAccessSyncData;
  v5 = [(CNLimitedAccessSyncData *)&v14 init];
  if (v5)
  {
    v5->_currentSequenceNumber = [coderCopy decodeIntegerForKey:@"_currentSequenceNumber"];
    v5->_fullSyncRequired = [coderCopy decodeBoolForKey:@"_fullSyncRequired"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"_syncEventsArray"];
    v10 = [v9 copy];
    syncEventsArray = v5->_syncEventsArray;
    v5->_syncEventsArray = v10;

    v12 = v5;
  }

  return v5;
}

@end