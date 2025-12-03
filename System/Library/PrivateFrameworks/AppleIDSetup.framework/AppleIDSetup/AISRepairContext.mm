@interface AISRepairContext
- (AISRepairContext)initWithAltDSID:(id)d;
- (AISRepairContext)initWithUserProfileIdentifier:(id)identifier;
@end

@implementation AISRepairContext

- (AISRepairContext)initWithAltDSID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = AISRepairContext;
  v5 = [(AISSetupContext *)&v9 init];
  if (v5)
  {
    v6 = [dCopy copy];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;
  }

  return v5;
}

- (AISRepairContext)initWithUserProfileIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(AISRepairContext *)self initWithAltDSID:&stru_28527B110];
  if (v5)
  {
    v6 = [identifierCopy copy];
    userProfileIdentifier = v5->_userProfileIdentifier;
    v5->_userProfileIdentifier = v6;
  }

  return v5;
}

@end