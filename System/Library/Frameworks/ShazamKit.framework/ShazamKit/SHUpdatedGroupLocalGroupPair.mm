@interface SHUpdatedGroupLocalGroupPair
- (SHUpdatedGroupLocalGroupPair)initWithUpdatedGroup:(id)group localGroup:(id)localGroup;
@end

@implementation SHUpdatedGroupLocalGroupPair

- (SHUpdatedGroupLocalGroupPair)initWithUpdatedGroup:(id)group localGroup:(id)localGroup
{
  groupCopy = group;
  localGroupCopy = localGroup;
  v12.receiver = self;
  v12.super_class = SHUpdatedGroupLocalGroupPair;
  v9 = [(SHUpdatedGroupLocalGroupPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_updatedGroup, group);
    objc_storeStrong(&v10->_localGroup, localGroup);
  }

  return v10;
}

@end