@interface ASSecureCloudShareItem
+ (ASSecureCloudShareItem)shareItemWithCodableShareItem:(id)a3;
- (ASSecureCloudShareItem)initWithCoder:(id)a3;
- (ASSecureCloudShareItem)initWithZoneName:(id)a3 shareURL:(id)a4 invitationToken:(id)a5;
- (id)codableShareItem;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASSecureCloudShareItem

+ (ASSecureCloudShareItem)shareItemWithCodableShareItem:(id)a3
{
  v3 = a3;
  v4 = [v3 zoneName];
  v5 = objc_alloc(MEMORY[0x277CBEBC0]);
  v6 = [v3 shareURL];
  v7 = [v5 initWithString:v6];

  v8 = objc_opt_class();
  v9 = [v3 invitationToken];

  v10 = ASSecureUnarchiveClassWithDataAndStrictness(v8, v9, 1);

  v11 = 0;
  if (v4 && v7 && v10)
  {
    v11 = [[ASSecureCloudShareItem alloc] initWithZoneName:v4 shareURL:v7 invitationToken:v10];
  }

  return v11;
}

- (id)codableShareItem
{
  v3 = objc_alloc_init(ASCodableSecureCloudShareItem);
  v4 = [(ASSecureCloudShareItem *)self zoneName];
  [(ASCodableSecureCloudShareItem *)v3 setZoneName:v4];

  v5 = [(ASSecureCloudShareItem *)self shareURL];
  v6 = [v5 absoluteString];
  [(ASCodableSecureCloudShareItem *)v3 setShareURL:v6];

  v7 = MEMORY[0x277CCAAB0];
  v8 = [(ASSecureCloudShareItem *)self invitationToken];
  v14 = 0;
  v9 = [v7 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v14];
  v10 = v14;

  if (!v9 || v10)
  {
    ASLoggingInitialize();
    v12 = ASLogDefault;
    if (os_log_type_enabled(ASLogDefault, OS_LOG_TYPE_ERROR))
    {
      [(ASSecureCloudShareItem(InvitationCodingSupport) *)v10 codableShareItem];
    }

    v11 = 0;
  }

  else
  {
    [(ASCodableSecureCloudShareItem *)v3 setInvitationToken:v9];
    v11 = v3;
  }

  return v11;
}

- (ASSecureCloudShareItem)initWithZoneName:(id)a3 shareURL:(id)a4 invitationToken:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ASSecureCloudShareItem;
  v12 = [(ASSecureCloudShareItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_shareURL, a4);
    objc_storeStrong(&v13->_invitationToken, a5);
    objc_storeStrong(&v13->_zoneName, a3);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  shareURL = self->_shareURL;
  v5 = a3;
  [v5 encodeObject:shareURL forKey:@"shareURL"];
  [v5 encodeObject:self->_invitationToken forKey:@"invitationToken"];
  [v5 encodeObject:self->_zoneName forKey:@"zoneName"];
}

- (ASSecureCloudShareItem)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ASSecureCloudShareItem;
  v5 = [(ASSecureCloudShareItem *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shareURL"];
    shareURL = v5->_shareURL;
    v5->_shareURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invitationToken"];
    invitationToken = v5->_invitationToken;
    v5->_invitationToken = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zoneName"];
    zoneName = v5->_zoneName;
    v5->_zoneName = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong(v4 + 2, self->_shareURL);
  objc_storeStrong(v4 + 3, self->_invitationToken);
  objc_storeStrong(v4 + 1, self->_zoneName);
  return v4;
}

@end