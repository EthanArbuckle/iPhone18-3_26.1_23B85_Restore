@interface _DDUIArtificialPerson
- (NSString)description;
- (id)initGuestPairPerson;
- (id)initSessionPairedPersonWithDevice:(id)a3;
@end

@implementation _DDUIArtificialPerson

- (id)initGuestPairPerson
{
  v7.receiver = self;
  v7.super_class = _DDUIArtificialPerson;
  v2 = [(_DDUIArtificialPerson *)&v7 init];
  v3 = v2;
  if (v2)
  {
    accountIdentifier = v2->_accountIdentifier;
    v2->_accountIdentifier = @"ddui@other.account.identifier";

    accountAltDSID = v3->_accountAltDSID;
    v3->_accountAltDSID = @"ddui@other.account.identifier";
  }

  return v3;
}

- (id)initSessionPairedPersonWithDevice:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = _DDUIArtificialPerson;
  v5 = [(_DDUIArtificialPerson *)&v19 init];
  v6 = v5;
  if (v5)
  {
    accountIdentifier = v5->_accountIdentifier;
    v5->_accountIdentifier = @"ddui@session.paired.identifier";

    accountAltDSID = v6->_accountAltDSID;
    v6->_accountAltDSID = @"ddui@session.paired.identifier";

    v9 = [v4 model];
    v10 = [v9 copy];
    deviceModel = v6->_deviceModel;
    v6->_deviceModel = v10;

    v12 = [v4 idsDeviceIdentifier];
    v13 = [v12 copy];
    identifier = v6->_identifier;
    v6->_identifier = v13;

    v15 = [v4 name];
    v16 = [v15 copy];
    name = v6->_name;
    v6->_name = v16;
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = self->_identifier;
  return [v3 stringWithFormat:@"<%@: %p; name = %@; deviceModel = %@; identifier = %@; accountIdentifier = %@>", v4, self, self->_name, self->_deviceModel, identifier, self->_accountIdentifier];
}

@end