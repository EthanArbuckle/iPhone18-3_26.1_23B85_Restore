@interface AVTCoreDataChangeTrackerChange
- (AVTCoreDataChangeTrackerChange)initWithRecordIdentifier:(id)a3 changeType:(int64_t)a4;
- (id)description;
@end

@implementation AVTCoreDataChangeTrackerChange

- (AVTCoreDataChangeTrackerChange)initWithRecordIdentifier:(id)a3 changeType:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = AVTCoreDataChangeTrackerChange;
  v8 = [(AVTCoreDataChangeTrackerChange *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_recordIdentifier, a3);
    v9->_changeType = a4;
  }

  return v9;
}

- (id)description
{
  v9.receiver = self;
  v9.super_class = AVTCoreDataChangeTrackerChange;
  v3 = [(AVTCoreDataChangeTrackerChange *)&v9 description];
  v4 = [v3 mutableCopy];

  v5 = [(AVTCoreDataChangeTrackerChange *)self changeType];
  v6 = [(AVTCoreDataChangeTrackerChange *)self recordIdentifier];
  [v4 appendFormat:@" type:%ld identifier:%@", v5, v6];

  v7 = [v4 copy];

  return v7;
}

@end