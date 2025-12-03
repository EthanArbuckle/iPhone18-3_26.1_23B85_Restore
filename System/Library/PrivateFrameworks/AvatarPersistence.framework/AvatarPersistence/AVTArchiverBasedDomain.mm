@interface AVTArchiverBasedDomain
- (AVTArchiverBasedDomain)initWithCoder:(id)coder;
- (AVTArchiverBasedDomain)initWithDomainIdentifier:(id)identifier primaryAvatarIdentifier:(id)avatarIdentifier;
- (id)domainBySettingPrimaryAvatarIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AVTArchiverBasedDomain

- (AVTArchiverBasedDomain)initWithDomainIdentifier:(id)identifier primaryAvatarIdentifier:(id)avatarIdentifier
{
  identifierCopy = identifier;
  avatarIdentifierCopy = avatarIdentifier;
  v14.receiver = self;
  v14.super_class = AVTArchiverBasedDomain;
  v8 = [(AVTArchiverBasedDomain *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    domainIdentifier = v8->_domainIdentifier;
    v8->_domainIdentifier = v9;

    v11 = [avatarIdentifierCopy copy];
    primaryAvatarIdentifier = v8->_primaryAvatarIdentifier;
    v8->_primaryAvatarIdentifier = v11;
  }

  return v8;
}

- (id)domainBySettingPrimaryAvatarIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc(objc_opt_class());
  domainIdentifier = [(AVTArchiverBasedDomain *)self domainIdentifier];
  v7 = [v5 initWithDomainIdentifier:domainIdentifier primaryAvatarIdentifier:identifierCopy];

  return v7;
}

- (AVTArchiverBasedDomain)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"domainIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryAvatarIdentifier"];

  v7 = [(AVTArchiverBasedDomain *)self initWithDomainIdentifier:v5 primaryAvatarIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  domainIdentifier = [(AVTArchiverBasedDomain *)self domainIdentifier];
  [coderCopy encodeObject:domainIdentifier forKey:@"domainIdentifier"];

  primaryAvatarIdentifier = [(AVTArchiverBasedDomain *)self primaryAvatarIdentifier];
  [coderCopy encodeObject:primaryAvatarIdentifier forKey:@"primaryAvatarIdentifier"];
}

@end