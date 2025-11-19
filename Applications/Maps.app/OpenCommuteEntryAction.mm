@interface OpenCommuteEntryAction
- (OpenCommuteEntryAction)initWithEntry:(id)a3;
@end

@implementation OpenCommuteEntryAction

- (OpenCommuteEntryAction)initWithEntry:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = OpenCommuteEntryAction;
  v5 = [(OpenCommuteEntryAction *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    entryID = v5->_entryID;
    v5->_entryID = v6;
  }

  return v5;
}

@end