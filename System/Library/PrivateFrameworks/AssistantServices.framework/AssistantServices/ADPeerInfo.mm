@interface ADPeerInfo
+ (id)_queue;
+ (id)locallyPairedPeerInfo;
+ (void)updateSharedInfoWithIdentifier:(id)identifier productType:(id)type buildVersion:(id)version;
- (ADPeerInfo)initWithAFPeerInfo:(id)info;
- (ADPeerInfo)initWithIDSIdentifer:(id)identifer productType:(id)type buildVersion:(id)version name:(id)name;
- (ADPeerInfo)initWithUniqueIdentifer:(id)identifer;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionaryRepresentation;
- (id)afPeerInfo;
- (id)description;
@end

@implementation ADPeerInfo

+ (id)locallyPairedPeerInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100367AE0;
  v10 = sub_100367AF0;
  v11 = 0;
  _queue = [self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006DD4;
  block[3] = &unk_10051E1C8;
  block[4] = &v6;
  dispatch_sync(_queue, block);

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (id)_queue
{
  if (qword_100590B78 != -1)
  {
    dispatch_once(&qword_100590B78, &stru_10051D990);
  }

  v3 = qword_100590B70;

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      idsIdentifier = [(ADPeerInfo *)v5 idsIdentifier];
      idsIdentifier = self->_idsIdentifier;
      if (idsIdentifier == idsIdentifier)
      {
        productType = [(ADPeerInfo *)v5 productType];
      }

      else
      {
        if (!idsIdentifier)
        {
          productType = [(ADPeerInfo *)v5 productType];
          goto LABEL_15;
        }

        v8 = [(NSString *)idsIdentifier isEqualToString:idsIdentifier];
        productType = [(ADPeerInfo *)v5 productType];
        if (!v8)
        {
          goto LABEL_15;
        }
      }

      productType = self->_productType;
      if (productType == productType)
      {
        buildVersion = [(ADPeerInfo *)v5 buildVersion];
LABEL_20:
        buildVersion = self->_buildVersion;
        if (buildVersion == buildVersion)
        {
          v10 = 1;
          goto LABEL_17;
        }

        if (buildVersion)
        {
          v10 = [(NSString *)buildVersion isEqualToString:buildVersion];
          goto LABEL_17;
        }

LABEL_16:
        v10 = 0;
LABEL_17:

        goto LABEL_18;
      }

      if (productType)
      {
        v12 = [(NSString *)productType isEqualToString:productType];
        buildVersion = [(ADPeerInfo *)v5 buildVersion];
        if (!v12)
        {
          goto LABEL_16;
        }

        goto LABEL_20;
      }

LABEL_15:
      buildVersion = [(ADPeerInfo *)v5 buildVersion];
      goto LABEL_16;
    }

    v10 = 0;
  }

LABEL_18:

  return v10;
}

- (id)afPeerInfo
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100367354;
  v4[3] = &unk_10051D9B8;
  v4[4] = self;
  v2 = [AFPeerInfo newWithBuilder:v4];

  return v2;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = v3;
  idsIdentifier = self->_idsIdentifier;
  if (idsIdentifier)
  {
    [v3 setObject:idsIdentifier forKey:@"idsIdentifier"];
  }

  productType = self->_productType;
  if (productType)
  {
    [v4 setObject:productType forKey:@"productType"];
  }

  buildVersion = self->_buildVersion;
  if (buildVersion)
  {
    [v4 setObject:buildVersion forKey:@"buildVersion"];
  }

  return v4;
}

- (id)description
{
  v3 = [NSString alloc];
  v7.receiver = self;
  v7.super_class = ADPeerInfo;
  v4 = [(ADPeerInfo *)&v7 description];
  v5 = [v3 initWithFormat:@"%@ idsIdentifier: %@ productType: %@ buildVersion: %@ name: %@", v4, self->_idsIdentifier, self->_productType, self->_buildVersion, self->_name];

  return v5;
}

- (ADPeerInfo)initWithAFPeerInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy)
  {
    idsIdentifier = [infoCopy idsIdentifier];
    productType = [v5 productType];
    buildVersion = [v5 buildVersion];
    name = [v5 name];
    v10 = [(ADPeerInfo *)self initWithIDSIdentifer:idsIdentifier productType:productType buildVersion:buildVersion name:name];

    if (v10)
    {
      v10->_deviceOwnedByCurrentUser = [v5 isDeviceOwnedByCurrentUser];
      idsDeviceUniqueIdentifier = [v5 idsDeviceUniqueIdentifier];
      v12 = [idsDeviceUniqueIdentifier copy];
      idsDeviceUniqueIdentifier = v10->_idsDeviceUniqueIdentifier;
      v10->_idsDeviceUniqueIdentifier = v12;

      mediaSystemIdentifier = [v5 mediaSystemIdentifier];
      v15 = [mediaSystemIdentifier copy];
      mediaSystemIdentifier = v10->_mediaSystemIdentifier;
      v10->_mediaSystemIdentifier = v15;

      rapportEffectiveIdentifier = [v5 rapportEffectiveIdentifier];
      v18 = [rapportEffectiveIdentifier copy];
      rapportEffectiveIdentifier = v10->_rapportEffectiveIdentifier;
      v10->_rapportEffectiveIdentifier = v18;

      homeKitAccessoryIdentifier = [v5 homeKitAccessoryIdentifier];
      v21 = [homeKitAccessoryIdentifier copy];
      homeKitAccessoryIdentifier = v10->_homeKitAccessoryIdentifier;
      v10->_homeKitAccessoryIdentifier = v21;

      roomName = [v5 roomName];
      v24 = [roomName copy];
      roomName = v10->_roomName;
      v10->_roomName = v24;

      userInterfaceIdiom = [v5 userInterfaceIdiom];
      v27 = [userInterfaceIdiom copy];
      userInterfaceIdiom = v10->_userInterfaceIdiom;
      v10->_userInterfaceIdiom = v27;

      aceVersion = [v5 aceVersion];
      v30 = [aceVersion copy];
      aceVersion = v10->_aceVersion;
      v10->_aceVersion = v30;

      mediaRouteIdentifier = [v5 mediaRouteIdentifier];
      v33 = [mediaRouteIdentifier copy];

      if (v33)
      {
        v41 = v33;
        v34 = [NSArray arrayWithObjects:&v41 count:1];
        airPlayRouteIdentifiers = v10->_airPlayRouteIdentifiers;
        v10->_airPlayRouteIdentifiers = v34;
      }

      else
      {
        airPlayRouteIdentifiers = v10->_airPlayRouteIdentifiers;
        v10->_airPlayRouteIdentifiers = 0;
      }

      assistantIdentifier = [v5 assistantIdentifier];
      v38 = [assistantIdentifier copy];
      assistantIdentifier = v10->_assistantIdentifier;
      v10->_assistantIdentifier = v38;
    }

    self = v10;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ADPeerInfo)initWithUniqueIdentifer:(id)identifer
{
  identifer = [NSString stringWithFormat:@"%@%@", @"device:", identifer];
  v5 = [(ADPeerInfo *)self initWithIDSIdentifer:identifer];

  return v5;
}

- (ADPeerInfo)initWithIDSIdentifer:(id)identifer productType:(id)type buildVersion:(id)version name:(id)name
{
  identiferCopy = identifer;
  typeCopy = type;
  versionCopy = version;
  nameCopy = name;
  v24.receiver = self;
  v24.super_class = ADPeerInfo;
  v14 = [(ADPeerInfo *)&v24 init];
  if (v14)
  {
    v15 = [identiferCopy copy];
    idsIdentifier = v14->_idsIdentifier;
    v14->_idsIdentifier = v15;

    v17 = [typeCopy copy];
    productType = v14->_productType;
    v14->_productType = v17;

    v19 = [versionCopy copy];
    buildVersion = v14->_buildVersion;
    v14->_buildVersion = v19;

    v21 = [nameCopy copy];
    name = v14->_name;
    v14->_name = v21;

    v14->_deviceOwnedByCurrentUser = 1;
  }

  return v14;
}

+ (void)updateSharedInfoWithIdentifier:(id)identifier productType:(id)type buildVersion:(id)version
{
  versionCopy = version;
  typeCopy = type;
  identifierCopy = identifier;
  v11 = [[ADPeerInfo alloc] initWithIDSIdentifer:identifierCopy productType:typeCopy buildVersion:versionCopy name:0];

  _queue = [self _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100367AD0;
  block[3] = &unk_10051DFE8;
  v15 = v11;
  v13 = v11;
  dispatch_async(_queue, block);
}

@end