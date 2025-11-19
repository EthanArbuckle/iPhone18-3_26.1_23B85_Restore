@interface HKSharingAuthorization
- (BOOL)isEqual:(id)a3;
- (HKSharingAuthorization)initWithAuthorizationIdentifier:(id)a3 displayName:(id)a4 displaySubtitle:(id)a5;
- (HKSharingAuthorization)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSharingAuthorization

- (HKSharingAuthorization)initWithAuthorizationIdentifier:(id)a3 displayName:(id)a4 displaySubtitle:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HKSharingAuthorization;
  v11 = [(HKSharingAuthorization *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    authorizationIdentifier = v11->_authorizationIdentifier;
    v11->_authorizationIdentifier = v12;

    v14 = [v9 copy];
    displayName = v11->_displayName;
    v11->_displayName = v14;

    v16 = [v10 copy];
    displaySubtitle = v11->_displaySubtitle;
    v11->_displaySubtitle = v16;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:%p %@ %@ %@>", v5, self, self->_authorizationIdentifier, self->_displayName, self->_displaySubtitle];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_authorizationIdentifier hash];
  v4 = [(NSString *)self->_displayName hash]^ v3;
  return v4 ^ [(NSString *)self->_displaySubtitle hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  authorizationIdentifier = self->_authorizationIdentifier;
  v6 = v4[1];
  if (authorizationIdentifier != v6 && (!v6 || ![(NSString *)authorizationIdentifier isEqual:?]))
  {
    goto LABEL_11;
  }

  displayName = self->_displayName;
  v8 = v4[2];
  if (displayName != v8 && (!v8 || ![(NSString *)displayName isEqual:?]))
  {
    goto LABEL_11;
  }

  displaySubtitle = self->_displaySubtitle;
  v10 = v4[3];
  if (displaySubtitle == v10)
  {
    v11 = 1;
    goto LABEL_12;
  }

  if (v10)
  {
    v11 = [(NSString *)displaySubtitle isEqual:?];
  }

  else
  {
LABEL_11:
    v11 = 0;
  }

LABEL_12:

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  authorizationIdentifier = self->_authorizationIdentifier;
  v5 = a3;
  [v5 encodeObject:authorizationIdentifier forKey:@"AuthorizationIdentifier"];
  [v5 encodeObject:self->_displayName forKey:@"DisplayName"];
  [v5 encodeObject:self->_displaySubtitle forKey:@"DisplaySubtitle"];
}

- (HKSharingAuthorization)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AuthorizationIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DisplayName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DisplaySubtitle"];

  v8 = [(HKSharingAuthorization *)self initWithAuthorizationIdentifier:v5 displayName:v6 displaySubtitle:v7];
  return v8;
}

@end