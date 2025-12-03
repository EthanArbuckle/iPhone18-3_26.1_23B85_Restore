@interface CNUIGroupContext
- (CNUIGroupContext)initWithAddedGroupsByContainerDict:(id)dict removedGroups:(id)groups;
@end

@implementation CNUIGroupContext

- (CNUIGroupContext)initWithAddedGroupsByContainerDict:(id)dict removedGroups:(id)groups
{
  dictCopy = dict;
  groupsCopy = groups;
  v13.receiver = self;
  v13.super_class = CNUIGroupContext;
  v9 = [(CNUIGroupContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_addedGroupsByContainerDict, dict);
    objc_storeStrong(&v10->_removedGroups, groups);
    v11 = v10;
  }

  return v10;
}

@end