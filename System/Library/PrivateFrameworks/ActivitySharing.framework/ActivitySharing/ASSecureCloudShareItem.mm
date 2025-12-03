@interface ASSecureCloudShareItem
+ (ASSecureCloudShareItem)shareItemWithCodableShareItem:(id)item;
- (ASSecureCloudShareItem)initWithCoder:(id)coder;
- (ASSecureCloudShareItem)initWithZoneName:(id)name shareURL:(id)l invitationToken:(id)token;
- (id)codableShareItem;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASSecureCloudShareItem

+ (ASSecureCloudShareItem)shareItemWithCodableShareItem:(id)item
{
  itemCopy = item;
  zoneName = [itemCopy zoneName];
  v5 = objc_alloc(MEMORY[0x277CBEBC0]);
  shareURL = [itemCopy shareURL];
  v7 = [v5 initWithString:shareURL];

  v8 = objc_opt_class();
  invitationToken = [itemCopy invitationToken];

  v10 = ASSecureUnarchiveClassWithDataAndStrictness(v8, invitationToken, 1);

  v11 = 0;
  if (zoneName && v7 && v10)
  {
    v11 = [[ASSecureCloudShareItem alloc] initWithZoneName:zoneName shareURL:v7 invitationToken:v10];
  }

  return v11;
}

- (id)codableShareItem
{
  v3 = objc_alloc_init(ASCodableSecureCloudShareItem);
  zoneName = [(ASSecureCloudShareItem *)self zoneName];
  [(ASCodableSecureCloudShareItem *)v3 setZoneName:zoneName];

  shareURL = [(ASSecureCloudShareItem *)self shareURL];
  absoluteString = [shareURL absoluteString];
  [(ASCodableSecureCloudShareItem *)v3 setShareURL:absoluteString];

  v7 = MEMORY[0x277CCAAB0];
  invitationToken = [(ASSecureCloudShareItem *)self invitationToken];
  v14 = 0;
  v9 = [v7 archivedDataWithRootObject:invitationToken requiringSecureCoding:1 error:&v14];
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

- (ASSecureCloudShareItem)initWithZoneName:(id)name shareURL:(id)l invitationToken:(id)token
{
  nameCopy = name;
  lCopy = l;
  tokenCopy = token;
  v15.receiver = self;
  v15.super_class = ASSecureCloudShareItem;
  v12 = [(ASSecureCloudShareItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_shareURL, l);
    objc_storeStrong(&v13->_invitationToken, token);
    objc_storeStrong(&v13->_zoneName, name);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  shareURL = self->_shareURL;
  coderCopy = coder;
  [coderCopy encodeObject:shareURL forKey:@"shareURL"];
  [coderCopy encodeObject:self->_invitationToken forKey:@"invitationToken"];
  [coderCopy encodeObject:self->_zoneName forKey:@"zoneName"];
}

- (ASSecureCloudShareItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ASSecureCloudShareItem;
  v5 = [(ASSecureCloudShareItem *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shareURL"];
    shareURL = v5->_shareURL;
    v5->_shareURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitationToken"];
    invitationToken = v5->_invitationToken;
    v5->_invitationToken = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneName"];
    zoneName = v5->_zoneName;
    v5->_zoneName = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong(v4 + 2, self->_shareURL);
  objc_storeStrong(v4 + 3, self->_invitationToken);
  objc_storeStrong(v4 + 1, self->_zoneName);
  return v4;
}

@end