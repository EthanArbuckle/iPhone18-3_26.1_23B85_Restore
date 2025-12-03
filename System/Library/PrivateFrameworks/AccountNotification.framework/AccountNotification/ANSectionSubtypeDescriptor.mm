@interface ANSectionSubtypeDescriptor
- (ANSectionSubtypeDescriptor)initWithCoder:(id)coder;
- (id)initForAccountWithType:(id)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANSectionSubtypeDescriptor

- (id)initForAccountWithType:(id)type
{
  typeCopy = type;
  v9.receiver = self;
  v9.super_class = ANSectionSubtypeDescriptor;
  v5 = [(ANSectionSubtypeDescriptor *)&v9 init];
  if (v5)
  {
    identifier = [typeCopy identifier];
    accountTypeID = v5->_accountTypeID;
    v5->_accountTypeID = identifier;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  accountTypeID = self->_accountTypeID;
  coderCopy = coder;
  [coderCopy encodeObject:accountTypeID forKey:@"_accountTypeID"];
  [coderCopy encodeInteger:self->_subtype forKey:@"_subtype"];
  [coderCopy encodeBool:self->_allowsAddingToLockScreenWhenUnlocked forKey:@"_allowsAddingToLockScreenWhenUnlocked"];
  [coderCopy encodeObject:self->_fullUnlockActionLabel forKey:@"_fullUnlockActionLabel"];
}

- (ANSectionSubtypeDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ANSectionSubtypeDescriptor;
  v5 = [(ANSectionSubtypeDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_accountTypeID"];
    accountTypeID = v5->_accountTypeID;
    v5->_accountTypeID = v6;

    v5->_subtype = [coderCopy decodeIntegerForKey:@"_subtype"];
    v5->_allowsAddingToLockScreenWhenUnlocked = [coderCopy decodeBoolForKey:@"_allowsAddingToLockScreenWhenUnlocked"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_fullUnlockActionLabel"];
    fullUnlockActionLabel = v5->_fullUnlockActionLabel;
    v5->_fullUnlockActionLabel = v8;
  }

  return v5;
}

@end