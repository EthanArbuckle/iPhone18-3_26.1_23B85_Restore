@interface AVTCoreDataChangeTrackerChange
- (AVTCoreDataChangeTrackerChange)initWithRecordIdentifier:(id)identifier changeType:(int64_t)type;
- (id)description;
@end

@implementation AVTCoreDataChangeTrackerChange

- (AVTCoreDataChangeTrackerChange)initWithRecordIdentifier:(id)identifier changeType:(int64_t)type
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = AVTCoreDataChangeTrackerChange;
  v8 = [(AVTCoreDataChangeTrackerChange *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_recordIdentifier, identifier);
    v9->_changeType = type;
  }

  return v9;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = AVTCoreDataChangeTrackerChange;
  v3 = [(AVTCoreDataChangeTrackerChange *)&v9 description];
  v4 = [v3 mutableCopy];

  changeType = [(AVTCoreDataChangeTrackerChange *)self changeType];
  recordIdentifier = [(AVTCoreDataChangeTrackerChange *)self recordIdentifier];
  [v4 appendFormat:@" type:%ld identifier:%@", changeType, recordIdentifier];

  v7 = [v4 copy];

  return v7;
}

@end