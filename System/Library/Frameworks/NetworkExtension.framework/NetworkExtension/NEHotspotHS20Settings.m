@interface NEHotspotHS20Settings
- (NEHotspotHS20Settings)initWithCoder:(id)a3;
- (NEHotspotHS20Settings)initWithDomainName:(NSString *)domainName roamingEnabled:(BOOL)roamingEnabled;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NEHotspotHS20Settings

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NEHotspotHS20Settings *)self domainName];
  [v4 encodeObject:v5 forKey:@"DomainName"];

  [v4 encodeBool:-[NEHotspotHS20Settings isRoamingEnabled](self forKey:{"isRoamingEnabled"), @"IsRoamingEnabled"}];
  v6 = [(NEHotspotHS20Settings *)self roamingConsortiumOIs];
  [v4 encodeObject:v6 forKey:@"RoamingConsortiumOIs"];

  v7 = [(NEHotspotHS20Settings *)self naiRealmNames];
  [v4 encodeObject:v7 forKey:@"NAIRealmNames"];

  v8 = [(NEHotspotHS20Settings *)self MCCAndMNCs];
  [v4 encodeObject:v8 forKey:@"MCCAndMNCs"];
}

- (NEHotspotHS20Settings)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(NEHotspotHS20Settings *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DomainName"];
    domainName = v5->_domainName;
    v5->_domainName = v6;

    v5->_roamingEnabled = [v4 decodeBoolForKey:@"IsRoamingEnabled"];
    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"RoamingConsortiumOIs"];
    roamingConsortiumOIs = v5->_roamingConsortiumOIs;
    v5->_roamingConsortiumOIs = v11;

    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"NAIRealmNames"];
    naiRealmNames = v5->_naiRealmNames;
    v5->_naiRealmNames = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"MCCAndMNCs"];
    MCCAndMNCs = v5->_MCCAndMNCs;
    v5->_MCCAndMNCs = v21;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [NEHotspotHS20Settings allocWithZone:a3];
  v5 = [(NEHotspotHS20Settings *)self domainName];
  v6 = [(NEHotspotHS20Settings *)v4 initWithDomainName:v5 roamingEnabled:[(NEHotspotHS20Settings *)self isRoamingEnabled]];

  [(NEHotspotHS20Settings *)v6 setRoamingConsortiumOIs:self->_roamingConsortiumOIs];
  [(NEHotspotHS20Settings *)v6 setNaiRealmNames:self->_naiRealmNames];
  [(NEHotspotHS20Settings *)v6 setMCCAndMNCs:self->_MCCAndMNCs];
  return v6;
}

- (NEHotspotHS20Settings)initWithDomainName:(NSString *)domainName roamingEnabled:(BOOL)roamingEnabled
{
  v6 = domainName;
  v11.receiver = self;
  v11.super_class = NEHotspotHS20Settings;
  v7 = [(NEHotspotHS20Settings *)&v11 init];
  if (v7)
  {
    v8 = [(NSString *)v6 copy];
    v9 = v7->_domainName;
    v7->_domainName = v8;

    v7->_roamingEnabled = roamingEnabled;
  }

  return v7;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v4 = [(NEHotspotHS20Settings *)self domainName];
  [v3 appendPrettyObject:v4 withName:@"Hotspot 2.0 Domain Name" andIndent:0 options:0];

  return v3;
}

@end