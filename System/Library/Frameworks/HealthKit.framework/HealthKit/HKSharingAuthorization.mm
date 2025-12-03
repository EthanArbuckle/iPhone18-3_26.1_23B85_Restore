@interface HKSharingAuthorization
- (BOOL)isEqual:(id)equal;
- (HKSharingAuthorization)initWithAuthorizationIdentifier:(id)identifier displayName:(id)name displaySubtitle:(id)subtitle;
- (HKSharingAuthorization)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSharingAuthorization

- (HKSharingAuthorization)initWithAuthorizationIdentifier:(id)identifier displayName:(id)name displaySubtitle:(id)subtitle
{
  identifierCopy = identifier;
  nameCopy = name;
  subtitleCopy = subtitle;
  v19.receiver = self;
  v19.super_class = HKSharingAuthorization;
  v11 = [(HKSharingAuthorization *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    authorizationIdentifier = v11->_authorizationIdentifier;
    v11->_authorizationIdentifier = v12;

    v14 = [nameCopy copy];
    displayName = v11->_displayName;
    v11->_displayName = v14;

    v16 = [subtitleCopy copy];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_11;
  }

  authorizationIdentifier = self->_authorizationIdentifier;
  v6 = equalCopy[1];
  if (authorizationIdentifier != v6 && (!v6 || ![(NSString *)authorizationIdentifier isEqual:?]))
  {
    goto LABEL_11;
  }

  displayName = self->_displayName;
  v8 = equalCopy[2];
  if (displayName != v8 && (!v8 || ![(NSString *)displayName isEqual:?]))
  {
    goto LABEL_11;
  }

  displaySubtitle = self->_displaySubtitle;
  v10 = equalCopy[3];
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

- (void)encodeWithCoder:(id)coder
{
  authorizationIdentifier = self->_authorizationIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:authorizationIdentifier forKey:@"AuthorizationIdentifier"];
  [coderCopy encodeObject:self->_displayName forKey:@"DisplayName"];
  [coderCopy encodeObject:self->_displaySubtitle forKey:@"DisplaySubtitle"];
}

- (HKSharingAuthorization)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AuthorizationIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DisplayName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DisplaySubtitle"];

  v8 = [(HKSharingAuthorization *)self initWithAuthorizationIdentifier:v5 displayName:v6 displaySubtitle:v7];
  return v8;
}

@end