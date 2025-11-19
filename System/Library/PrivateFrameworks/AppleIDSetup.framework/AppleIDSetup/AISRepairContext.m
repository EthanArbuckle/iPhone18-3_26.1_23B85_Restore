@interface AISRepairContext
- (AISRepairContext)initWithAltDSID:(id)a3;
- (AISRepairContext)initWithUserProfileIdentifier:(id)a3;
@end

@implementation AISRepairContext

- (AISRepairContext)initWithAltDSID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AISRepairContext;
  v5 = [(AISSetupContext *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;
  }

  return v5;
}

- (AISRepairContext)initWithUserProfileIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(AISRepairContext *)self initWithAltDSID:&stru_28527B110];
  if (v5)
  {
    v6 = [v4 copy];
    userProfileIdentifier = v5->_userProfileIdentifier;
    v5->_userProfileIdentifier = v6;
  }

  return v5;
}

@end