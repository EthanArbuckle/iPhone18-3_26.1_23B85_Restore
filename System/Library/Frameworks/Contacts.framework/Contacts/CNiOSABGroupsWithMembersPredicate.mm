@interface CNiOSABGroupsWithMembersPredicate
- (CNiOSABGroupsWithMembersPredicate)initWithCoder:(id)coder;
- (CNiOSABGroupsWithMembersPredicate)initWithContact:(id)contact includeAllParentGroups:(BOOL)groups;
- (CNiOSABGroupsWithMembersPredicate)initWithGroup:(id)group includeAllParentGroups:(BOOL)groups;
- (__CFArray)cn_copyGroupsInAddressBook:(void *)book error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABGroupsWithMembersPredicate

- (CNiOSABGroupsWithMembersPredicate)initWithGroup:(id)group includeAllParentGroups:(BOOL)groups
{
  v14[1] = *MEMORY[0x1E69E9840];
  groupCopy = group;
  if (groupCopy && (v13.receiver = self, v13.super_class = CNiOSABGroupsWithMembersPredicate, v7 = [(CNPredicate *)&v13 initWithPredicate:0], (self = v7) != 0))
  {
    v7->_recordType = 1;
    identifier = [groupCopy identifier];
    v14[0] = identifier;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    recordIdentifiers = self->_recordIdentifiers;
    self->_recordIdentifiers = v9;

    self->_includeAllParentGroups = groups;
    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CNiOSABGroupsWithMembersPredicate)initWithContact:(id)contact includeAllParentGroups:(BOOL)groups
{
  v13[1] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  if (contactCopy && (v12.receiver = self, v12.super_class = CNiOSABGroupsWithMembersPredicate, (self = [(CNPredicate *)&v12 initWithPredicate:0]) != 0))
  {
    if ([contactCopy isUnified])
    {
      [contactCopy linkedContacts];
    }

    else
    {
      v13[0] = contactCopy;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
    }
    v8 = ;
    v9 = [v8 _cn_map:&__block_literal_global_39];
    self->_recordType = 0;
    recordIdentifiers = self->_recordIdentifiers;
    self->_recordIdentifiers = v9;

    self->_includeAllParentGroups = groups;
    self = self;

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CNiOSABGroupsWithMembersPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CNiOSABGroupsWithMembersPredicate;
  v5 = [(CNPredicate *)&v15 initWithCoder:coderCopy];
  if (v5 && (v6 = MEMORY[0x1E695DFD8], v7 = objc_opt_class(), [v6 setWithObjects:{v7, objc_opt_class(), 0}], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(coderCopy, "decodeObjectOfClasses:forKey:", v8, @"_recordIdentifiers"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "copy"), recordIdentifiers = v5->_recordIdentifiers, v5->_recordIdentifiers = v10, recordIdentifiers, v9, v8, v12 = objc_msgSend(coderCopy, "decodeIntegerForKey:", @"_recordType"), v5->_recordType = v12, v12 <= 1))
  {
    v5->_includeAllParentGroups = [coderCopy decodeBoolForKey:@"_includeAllParentGroups"];
    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CNiOSABGroupsWithMembersPredicate;
  coderCopy = coder;
  [(CNPredicate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_recordIdentifiers forKey:{@"_recordIdentifiers", v5.receiver, v5.super_class}];
  [coderCopy encodeBool:self->_includeAllParentGroups forKey:@"_includeAllParentGroups"];
  [coderCopy encodeInteger:self->_recordType forKey:@"_recordType"];
}

- (__CFArray)cn_copyGroupsInAddressBook:(void *)book error:(__CFError *)error
{
  [(CNiOSABGroupsWithMembersPredicate *)self recordType];
  [(CNiOSABGroupsWithMembersPredicate *)self includeAllParentGroups];
  recordIdentifiers = [(CNiOSABGroupsWithMembersPredicate *)self recordIdentifiers];
  v6 = ABGroupCopyArrayOfAllGroupsWithMembersOfTypeWithUUIDs();

  return v6;
}

@end