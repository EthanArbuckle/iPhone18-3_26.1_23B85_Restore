@interface CNCardNamePickingGroup
- (id)displayItems;
@end

@implementation CNCardNamePickingGroup

- (id)displayItems
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(CNCardNamePickingGroupActionItem);
  v4 = MEMORY[0x1E695CD80];
  contact = [(CNCardGroup *)self contact];
  v6 = [v4 stringFromContact:contact style:0];
  [(CNCardNamePickingGroupActionItem *)v3 setDisplayName:v6];

  v9[0] = v3;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  return v7;
}

@end