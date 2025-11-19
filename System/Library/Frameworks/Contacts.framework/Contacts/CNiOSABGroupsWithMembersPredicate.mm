@interface CNiOSABGroupsWithMembersPredicate
- (CNiOSABGroupsWithMembersPredicate)initWithCoder:(id)a3;
- (CNiOSABGroupsWithMembersPredicate)initWithContact:(id)a3 includeAllParentGroups:(BOOL)a4;
- (CNiOSABGroupsWithMembersPredicate)initWithGroup:(id)a3 includeAllParentGroups:(BOOL)a4;
- (__CFArray)cn_copyGroupsInAddressBook:(void *)a3 error:(__CFError *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABGroupsWithMembersPredicate

- (CNiOSABGroupsWithMembersPredicate)initWithGroup:(id)a3 includeAllParentGroups:(BOOL)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6 && (v13.receiver = self, v13.super_class = CNiOSABGroupsWithMembersPredicate, v7 = [(CNPredicate *)&v13 initWithPredicate:0], (self = v7) != 0))
  {
    v7->_recordType = 1;
    v8 = [v6 identifier];
    v14[0] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    recordIdentifiers = self->_recordIdentifiers;
    self->_recordIdentifiers = v9;

    self->_includeAllParentGroups = a4;
    self = self;
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (CNiOSABGroupsWithMembersPredicate)initWithContact:(id)a3 includeAllParentGroups:(BOOL)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6 && (v12.receiver = self, v12.super_class = CNiOSABGroupsWithMembersPredicate, (self = [(CNPredicate *)&v12 initWithPredicate:0]) != 0))
  {
    if ([v6 isUnified])
    {
      [v6 linkedContacts];
    }

    else
    {
      v13[0] = v6;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    }
    v8 = ;
    v9 = [v8 _cn_map:&__block_literal_global_39];
    self->_recordType = 0;
    recordIdentifiers = self->_recordIdentifiers;
    self->_recordIdentifiers = v9;

    self->_includeAllParentGroups = a4;
    self = self;

    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CNiOSABGroupsWithMembersPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CNiOSABGroupsWithMembersPredicate;
  v5 = [(CNPredicate *)&v15 initWithCoder:v4];
  if (v5 && (v6 = MEMORY[0x1E695DFD8], v7 = objc_opt_class(), [v6 setWithObjects:{v7, objc_opt_class(), 0}], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "decodeObjectOfClasses:forKey:", v8, @"_recordIdentifiers"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "copy"), recordIdentifiers = v5->_recordIdentifiers, v5->_recordIdentifiers = v10, recordIdentifiers, v9, v8, v12 = objc_msgSend(v4, "decodeIntegerForKey:", @"_recordType"), v5->_recordType = v12, v12 <= 1))
  {
    v5->_includeAllParentGroups = [v4 decodeBoolForKey:@"_includeAllParentGroups"];
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CNiOSABGroupsWithMembersPredicate;
  v4 = a3;
  [(CNPredicate *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_recordIdentifiers forKey:{@"_recordIdentifiers", v5.receiver, v5.super_class}];
  [v4 encodeBool:self->_includeAllParentGroups forKey:@"_includeAllParentGroups"];
  [v4 encodeInteger:self->_recordType forKey:@"_recordType"];
}

- (__CFArray)cn_copyGroupsInAddressBook:(void *)a3 error:(__CFError *)a4
{
  [(CNiOSABGroupsWithMembersPredicate *)self recordType];
  [(CNiOSABGroupsWithMembersPredicate *)self includeAllParentGroups];
  v5 = [(CNiOSABGroupsWithMembersPredicate *)self recordIdentifiers];
  v6 = ABGroupCopyArrayOfAllGroupsWithMembersOfTypeWithUUIDs();

  return v6;
}

@end