@interface CNLimitedAccessSyncData
- (CNLimitedAccessSyncData)initWithCoder:(id)a3;
- (NSEnumerator)syncEvents;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNLimitedAccessSyncData

- (NSEnumerator)syncEvents
{
  v2 = [(CNLimitedAccessSyncData *)self syncEventsArray];
  v3 = [v2 objectEnumerator];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  currentSequenceNumber = self->_currentSequenceNumber;
  v5 = a3;
  [v5 encodeInteger:currentSequenceNumber forKey:@"_currentSequenceNumber"];
  [v5 encodeBool:self->_fullSyncRequired forKey:@"_fullSyncRequired"];
  [v5 encodeObject:self->_syncEventsArray forKey:@"_syncEventsArray"];
}

- (CNLimitedAccessSyncData)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CNLimitedAccessSyncData;
  v5 = [(CNLimitedAccessSyncData *)&v14 init];
  if (v5)
  {
    v5->_currentSequenceNumber = [v4 decodeIntegerForKey:@"_currentSequenceNumber"];
    v5->_fullSyncRequired = [v4 decodeBoolForKey:@"_fullSyncRequired"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"_syncEventsArray"];
    v10 = [v9 copy];
    syncEventsArray = v5->_syncEventsArray;
    v5->_syncEventsArray = v10;

    v12 = v5;
  }

  return v5;
}

@end