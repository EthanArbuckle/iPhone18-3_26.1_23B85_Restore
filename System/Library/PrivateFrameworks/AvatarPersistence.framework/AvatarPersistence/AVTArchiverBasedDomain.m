@interface AVTArchiverBasedDomain
- (AVTArchiverBasedDomain)initWithCoder:(id)a3;
- (AVTArchiverBasedDomain)initWithDomainIdentifier:(id)a3 primaryAvatarIdentifier:(id)a4;
- (id)domainBySettingPrimaryAvatarIdentifier:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AVTArchiverBasedDomain

- (AVTArchiverBasedDomain)initWithDomainIdentifier:(id)a3 primaryAvatarIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AVTArchiverBasedDomain;
  v8 = [(AVTArchiverBasedDomain *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    domainIdentifier = v8->_domainIdentifier;
    v8->_domainIdentifier = v9;

    v11 = [v7 copy];
    primaryAvatarIdentifier = v8->_primaryAvatarIdentifier;
    v8->_primaryAvatarIdentifier = v11;
  }

  return v8;
}

- (id)domainBySettingPrimaryAvatarIdentifier:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(AVTArchiverBasedDomain *)self domainIdentifier];
  v7 = [v5 initWithDomainIdentifier:v6 primaryAvatarIdentifier:v4];

  return v7;
}

- (AVTArchiverBasedDomain)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"domainIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryAvatarIdentifier"];

  v7 = [(AVTArchiverBasedDomain *)self initWithDomainIdentifier:v5 primaryAvatarIdentifier:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AVTArchiverBasedDomain *)self domainIdentifier];
  [v4 encodeObject:v5 forKey:@"domainIdentifier"];

  v6 = [(AVTArchiverBasedDomain *)self primaryAvatarIdentifier];
  [v4 encodeObject:v6 forKey:@"primaryAvatarIdentifier"];
}

@end