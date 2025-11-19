@interface ANSectionSubtypeDescriptor
- (ANSectionSubtypeDescriptor)initWithCoder:(id)a3;
- (id)initForAccountWithType:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANSectionSubtypeDescriptor

- (id)initForAccountWithType:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ANSectionSubtypeDescriptor;
  v5 = [(ANSectionSubtypeDescriptor *)&v9 init];
  if (v5)
  {
    v6 = [v4 identifier];
    accountTypeID = v5->_accountTypeID;
    v5->_accountTypeID = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  accountTypeID = self->_accountTypeID;
  v5 = a3;
  [v5 encodeObject:accountTypeID forKey:@"_accountTypeID"];
  [v5 encodeInteger:self->_subtype forKey:@"_subtype"];
  [v5 encodeBool:self->_allowsAddingToLockScreenWhenUnlocked forKey:@"_allowsAddingToLockScreenWhenUnlocked"];
  [v5 encodeObject:self->_fullUnlockActionLabel forKey:@"_fullUnlockActionLabel"];
}

- (ANSectionSubtypeDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ANSectionSubtypeDescriptor;
  v5 = [(ANSectionSubtypeDescriptor *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_accountTypeID"];
    accountTypeID = v5->_accountTypeID;
    v5->_accountTypeID = v6;

    v5->_subtype = [v4 decodeIntegerForKey:@"_subtype"];
    v5->_allowsAddingToLockScreenWhenUnlocked = [v4 decodeBoolForKey:@"_allowsAddingToLockScreenWhenUnlocked"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fullUnlockActionLabel"];
    fullUnlockActionLabel = v5->_fullUnlockActionLabel;
    v5->_fullUnlockActionLabel = v8;
  }

  return v5;
}

@end