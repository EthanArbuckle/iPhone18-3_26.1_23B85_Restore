@interface AAInheritanceInvitation
- (AAInheritanceInvitation)initWithBeneficiaryID:(id)a3 beneficiaryHandle:(id)a4 beneficiaryFirstName:(id)a5 beneficiaryLastName:(id)a6 beneficiaryDisplayName:(id)a7 status:(int64_t)a8;
- (AAInheritanceInvitation)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)_statusDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AAInheritanceInvitation

- (AAInheritanceInvitation)initWithBeneficiaryID:(id)a3 beneficiaryHandle:(id)a4 beneficiaryFirstName:(id)a5 beneficiaryLastName:(id)a6 beneficiaryDisplayName:(id)a7 status:(int64_t)a8
{
  v22 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = AAInheritanceInvitation;
  v18 = [(AAInheritanceInvitation *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_beneficiaryID, a3);
    objc_storeStrong(&v19->_beneficiaryHandle, a4);
    objc_storeStrong(&v19->_beneficiaryFirstName, a5);
    objc_storeStrong(&v19->_beneficiaryLastName, a6);
    objc_storeStrong(&v19->_beneficiaryDisplayName, a7);
    v19->_status = a8;
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  beneficiaryID = self->_beneficiaryID;
  v5 = a3;
  [v5 encodeObject:beneficiaryID forKey:@"_beneficiaryID"];
  [v5 encodeObject:self->_beneficiaryHandle forKey:@"_beneficiaryHandle"];
  [v5 encodeObject:self->_beneficiaryFirstName forKey:@"_beneficiaryFirstName"];
  [v5 encodeObject:self->_beneficiaryLastName forKey:@"_beneficiaryLastName"];
  [v5 encodeObject:self->_beneficiaryDisplayName forKey:@"_beneficiaryHandle"];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_status];
  [v5 encodeObject:v6 forKey:@"_status"];
}

- (AAInheritanceInvitation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AAInheritanceInvitation *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryID"];
    beneficiaryID = v5->_beneficiaryID;
    v5->_beneficiaryID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryHandle"];
    beneficiaryHandle = v5->_beneficiaryHandle;
    v5->_beneficiaryHandle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryFirstName"];
    beneficiaryFirstName = v5->_beneficiaryFirstName;
    v5->_beneficiaryFirstName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryLastName"];
    beneficiaryLastName = v5->_beneficiaryLastName;
    v5->_beneficiaryLastName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_beneficiaryHandle"];
    beneficiaryDisplayName = v5->_beneficiaryDisplayName;
    v5->_beneficiaryDisplayName = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_status"];
    v5->_status = [v16 integerValue];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSUUID *)self->_beneficiaryID copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_beneficiaryHandle copy];
  v8 = v4[2];
  v4[2] = v7;

  v9 = [(NSString *)self->_beneficiaryFirstName copy];
  v10 = v4[3];
  v4[3] = v9;

  v11 = [(NSString *)self->_beneficiaryLastName copy];
  v12 = v4[4];
  v4[4] = v11;

  v13 = [(NSString *)self->_beneficiaryDisplayName copy];
  v14 = v4[5];
  v4[5] = v13;

  v4[6] = self->_status;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(AAInheritanceInvitation *)self beneficiaryID];
      v7 = [(AAInheritanceInvitation *)v5 beneficiaryID];

      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)_statusDescription
{
  v2 = [(AAInheritanceInvitation *)self status];
  if ((v2 + 1) > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_1E7C9BFE0 + v2 + 1);
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(AAInheritanceInvitation *)self _statusDescription];
  v6 = [v3 stringWithFormat:@"<%@: %p> Inheritance Invitation with Status: %@ \nBeneficiary ID: %@ \nBeneficiary Handle: %@", v4, self, v5, self->_beneficiaryID, self->_beneficiaryHandle];

  return v6;
}

@end