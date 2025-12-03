@interface OpenCommuteEntryAction
- (OpenCommuteEntryAction)initWithEntry:(id)entry;
@end

@implementation OpenCommuteEntryAction

- (OpenCommuteEntryAction)initWithEntry:(id)entry
{
  entryCopy = entry;
  v9.receiver = self;
  v9.super_class = OpenCommuteEntryAction;
  v5 = [(OpenCommuteEntryAction *)&v9 init];
  if (v5)
  {
    v6 = [entryCopy copy];
    entryID = v5->_entryID;
    v5->_entryID = v6;
  }

  return v5;
}

@end