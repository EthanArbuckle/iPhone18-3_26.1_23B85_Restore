@interface ADPeerInfo
+ (id)_queue;
+ (id)locallyPairedPeerInfo;
+ (void)updateSharedInfoWithIdentifier:(id)a3 productType:(id)a4 buildVersion:(id)a5;
- (ADPeerInfo)initWithAFPeerInfo:(id)a3;
- (ADPeerInfo)initWithIDSIdentifer:(id)a3 productType:(id)a4 buildVersion:(id)a5 name:(id)a6;
- (ADPeerInfo)initWithUniqueIdentifer:(id)a3;
- (BOOL)isEqual:(id)a3;
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
  v2 = [a1 _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006DD4;
  block[3] = &unk_10051E1C8;
  block[4] = &v6;
  dispatch_sync(v2, block);

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ADPeerInfo *)v5 idsIdentifier];
      idsIdentifier = self->_idsIdentifier;
      if (idsIdentifier == v6)
      {
        v9 = [(ADPeerInfo *)v5 productType];
      }

      else
      {
        if (!idsIdentifier)
        {
          v9 = [(ADPeerInfo *)v5 productType];
          goto LABEL_15;
        }

        v8 = [(NSString *)idsIdentifier isEqualToString:v6];
        v9 = [(ADPeerInfo *)v5 productType];
        if (!v8)
        {
          goto LABEL_15;
        }
      }

      productType = self->_productType;
      if (productType == v9)
      {
        v13 = [(ADPeerInfo *)v5 buildVersion];
LABEL_20:
        buildVersion = self->_buildVersion;
        if (buildVersion == v13)
        {
          v10 = 1;
          goto LABEL_17;
        }

        if (buildVersion)
        {
          v10 = [(NSString *)buildVersion isEqualToString:v13];
          goto LABEL_17;
        }

LABEL_16:
        v10 = 0;
LABEL_17:

        goto LABEL_18;
      }

      if (productType)
      {
        v12 = [(NSString *)productType isEqualToString:v9];
        v13 = [(ADPeerInfo *)v5 buildVersion];
        if (!v12)
        {
          goto LABEL_16;
        }

        goto LABEL_20;
      }

LABEL_15:
      v13 = [(ADPeerInfo *)v5 buildVersion];
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

- (ADPeerInfo)initWithAFPeerInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 idsIdentifier];
    v7 = [v5 productType];
    v8 = [v5 buildVersion];
    v9 = [v5 name];
    v10 = [(ADPeerInfo *)self initWithIDSIdentifer:v6 productType:v7 buildVersion:v8 name:v9];

    if (v10)
    {
      v10->_deviceOwnedByCurrentUser = [v5 isDeviceOwnedByCurrentUser];
      v11 = [v5 idsDeviceUniqueIdentifier];
      v12 = [v11 copy];
      idsDeviceUniqueIdentifier = v10->_idsDeviceUniqueIdentifier;
      v10->_idsDeviceUniqueIdentifier = v12;

      v14 = [v5 mediaSystemIdentifier];
      v15 = [v14 copy];
      mediaSystemIdentifier = v10->_mediaSystemIdentifier;
      v10->_mediaSystemIdentifier = v15;

      v17 = [v5 rapportEffectiveIdentifier];
      v18 = [v17 copy];
      rapportEffectiveIdentifier = v10->_rapportEffectiveIdentifier;
      v10->_rapportEffectiveIdentifier = v18;

      v20 = [v5 homeKitAccessoryIdentifier];
      v21 = [v20 copy];
      homeKitAccessoryIdentifier = v10->_homeKitAccessoryIdentifier;
      v10->_homeKitAccessoryIdentifier = v21;

      v23 = [v5 roomName];
      v24 = [v23 copy];
      roomName = v10->_roomName;
      v10->_roomName = v24;

      v26 = [v5 userInterfaceIdiom];
      v27 = [v26 copy];
      userInterfaceIdiom = v10->_userInterfaceIdiom;
      v10->_userInterfaceIdiom = v27;

      v29 = [v5 aceVersion];
      v30 = [v29 copy];
      aceVersion = v10->_aceVersion;
      v10->_aceVersion = v30;

      v32 = [v5 mediaRouteIdentifier];
      v33 = [v32 copy];

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

      v37 = [v5 assistantIdentifier];
      v38 = [v37 copy];
      assistantIdentifier = v10->_assistantIdentifier;
      v10->_assistantIdentifier = v38;
    }

    self = v10;
    v36 = self;
  }

  else
  {
    v36 = 0;
  }

  return v36;
}

- (ADPeerInfo)initWithUniqueIdentifer:(id)a3
{
  v4 = [NSString stringWithFormat:@"%@%@", @"device:", a3];
  v5 = [(ADPeerInfo *)self initWithIDSIdentifer:v4];

  return v5;
}

- (ADPeerInfo)initWithIDSIdentifer:(id)a3 productType:(id)a4 buildVersion:(id)a5 name:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = ADPeerInfo;
  v14 = [(ADPeerInfo *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    idsIdentifier = v14->_idsIdentifier;
    v14->_idsIdentifier = v15;

    v17 = [v11 copy];
    productType = v14->_productType;
    v14->_productType = v17;

    v19 = [v12 copy];
    buildVersion = v14->_buildVersion;
    v14->_buildVersion = v19;

    v21 = [v13 copy];
    name = v14->_name;
    v14->_name = v21;

    v14->_deviceOwnedByCurrentUser = 1;
  }

  return v14;
}

+ (void)updateSharedInfoWithIdentifier:(id)a3 productType:(id)a4 buildVersion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[ADPeerInfo alloc] initWithIDSIdentifer:v10 productType:v9 buildVersion:v8 name:0];

  v12 = [a1 _queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100367AD0;
  block[3] = &unk_10051DFE8;
  v15 = v11;
  v13 = v11;
  dispatch_async(v12, block);
}

@end