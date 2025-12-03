@interface CKKSKeychainBackedKey
+ (id)fetchKeyMaterialItemFromKeychain:(id)keychain resave:(BOOL *)resave error:(id *)error;
+ (id)key:(id)key wrappedByKey:(id)byKey uuid:(id)uuid parentKeyUUID:(id)d keyclass:(id)keyclass zoneID:(id)iD error:(id *)error;
+ (id)loadFromProtobuf:(id)protobuf error:(id *)error;
+ (id)queryKeyMaterialInKeychain:(id)keychain error:(id *)error;
+ (id)randomKeyWrappedByParent:(id)parent error:(id *)error;
+ (id)randomKeyWrappedByParent:(id)parent keyclass:(id)keyclass error:(id *)error;
+ (id)randomKeyWrappedBySelf:(id)self error:(id *)error;
+ (id)setKeyMaterialInKeychain:(id)keychain error:(id *)error;
- (BOOL)deleteKeyMaterialFromKeychain:(id *)keychain;
- (BOOL)isEqual:(id)equal;
- (BOOL)loadKeyMaterialFromKeychain:(id *)keychain;
- (BOOL)saveKeyMaterialToKeychain:(BOOL)keychain error:(id *)error;
- (BOOL)trySelfWrappedKeyCandidate:(id)candidate error:(id *)error;
- (BOOL)unwrapSelfWithAESKey:(id)key error:(id *)error;
- (BOOL)wrapUnder:(id)under error:(id *)error;
- (BOOL)wrapsSelf;
- (CKKSKeychainBackedKey)initWithAESKey:(id)key wrappedAESKey:(id)sKey uuid:(id)uuid parentKeyUUID:(id)d keyclass:(id)keyclass zoneID:(id)iD;
- (CKKSKeychainBackedKey)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)decryptData:(id)data authenticatedData:(id)authenticatedData error:(id *)error;
- (id)description;
- (id)encryptData:(id)data authenticatedData:(id)authenticatedData error:(id *)error;
- (id)ensureKeyLoadedFromKeychain:(id *)keychain;
- (id)serializeAsProtobuf:(id *)protobuf;
- (id)unwrapAESKey:(id)key error:(id *)error;
- (id)wrapAESKey:(id)key error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKKSKeychainBackedKey

- (CKKSKeychainBackedKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CKKSKeychainBackedKey;
  v5 = [(CKKSKeychainBackedKey *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parentKeyUUID"];
    parentKeyUUID = v5->_parentKeyUUID;
    v5->_parentKeyUUID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyclass"];
    keyclass = v5->_keyclass;
    v5->_keyclass = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneID"];
    zoneID = v5->_zoneID;
    v5->_zoneID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"wrappedkey"];
    wrappedkey = v5->_wrappedkey;
    v5->_wrappedkey = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(CKKSKeychainBackedKey *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  parentKeyUUID = [(CKKSKeychainBackedKey *)self parentKeyUUID];
  [coderCopy encodeObject:parentKeyUUID forKey:@"parentKeyUUID"];

  keyclass = [(CKKSKeychainBackedKey *)self keyclass];
  [coderCopy encodeObject:keyclass forKey:@"keyclass"];

  zoneID = [(CKKSKeychainBackedKey *)self zoneID];
  [coderCopy encodeObject:zoneID forKey:@"zoneID"];

  wrappedkey = [(CKKSKeychainBackedKey *)self wrappedkey];
  [coderCopy encodeObject:wrappedkey forKey:@"wrappedkey"];
}

- (id)serializeAsProtobuf:(id *)protobuf
{
  v4 = [(CKKSKeychainBackedKey *)self ensureKeyLoadedFromKeychain:protobuf];

  if (v4)
  {
    v5 = objc_alloc_init(CKKSSerializedKey);
    uuid = [(CKKSKeychainBackedKey *)self uuid];
    [(CKKSSerializedKey *)v5 setUuid:uuid];

    zoneID = [(CKKSKeychainBackedKey *)self zoneID];
    zoneName = [zoneID zoneName];
    [(CKKSSerializedKey *)v5 setZoneName:zoneName];

    keyclass = [(CKKSKeychainBackedKey *)self keyclass];
    [(CKKSSerializedKey *)v5 setKeyclass:keyclass];

    v10 = [NSData alloc];
    aessivkey = [(CKKSKeychainBackedKey *)self aessivkey];
    aessivkey2 = [(CKKSKeychainBackedKey *)self aessivkey];
    v13 = [v10 initWithBytes:aessivkey + 8 length:aessivkey2[11]];
    [(CKKSSerializedKey *)v5 setKey:v13];

    data = [(CKKSSerializedKey *)v5 data];
  }

  else
  {
    data = 0;
  }

  return data;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  zoneID = [(CKKSKeychainBackedKey *)self zoneID];
  zoneName = [zoneID zoneName];
  uuid = [(CKKSKeychainBackedKey *)self uuid];
  keyclass = [(CKKSKeychainBackedKey *)self keyclass];
  v9 = [NSString stringWithFormat:@"<%@(%@): %@ (%@)>", v4, zoneName, uuid, keyclass];

  return v9;
}

- (BOOL)deleteKeyMaterialFromKeychain:(id *)keychain
{
  v19[0] = kSecClass;
  v19[1] = kSecUseDataProtectionKeychain;
  v20[0] = kSecClassInternetPassword;
  v20[1] = &__kCFBooleanTrue;
  v20[2] = @"com.apple.security.ckks";
  v19[2] = kSecAttrAccessGroup;
  v19[3] = kSecAttrDescription;
  keyclass = [(CKKSKeychainBackedKey *)self keyclass];
  v20[3] = keyclass;
  v19[4] = kSecAttrAccount;
  uuid = [(CKKSKeychainBackedKey *)self uuid];
  v20[4] = uuid;
  v19[5] = kSecAttrServer;
  zoneID = [(CKKSKeychainBackedKey *)self zoneID];
  zoneName = [zoneID zoneName];
  v19[6] = kSecReturnData;
  v20[5] = zoneName;
  v20[6] = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:7];
  v10 = [v9 mutableCopy];

  keyclass2 = [(CKKSKeychainBackedKey *)self keyclass];
  LODWORD(uuid) = [keyclass2 isEqualToString:@"tlk"];

  if (uuid)
  {
    [v10 setObject:kCFBooleanTrue forKeyedSubscript:kSecAttrSynchronizable];
  }

  v12 = SecItemDelete(v10);
  v13 = v12;
  if (keychain && v12)
  {
    v17 = NSLocalizedDescriptionKey;
    v14 = [NSString stringWithFormat:@"Couldn't delete %@ from keychain: %d", self, v12];
    v18 = v14;
    v15 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    *keychain = [NSError errorWithDomain:@"securityd" code:v13 userInfo:v15];
  }

  return v13 == 0;
}

- (BOOL)loadKeyMaterialFromKeychain:(id *)keychain
{
  v18 = 0;
  v5 = [CKKSKeychainBackedKey fetchKeyMaterialItemFromKeychain:self resave:&v18 error:keychain];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:kSecValueData];
    v8 = [[NSMutableData alloc] initWithBase64EncodedData:v7 options:0];
    if (v8)
    {
      v9 = -[CKKSAESSIVKey initWithBytes:len:]([CKKSAESSIVKey alloc], "initWithBytes:len:", [v8 bytes], objc_msgSend(v8, "length"));
      memset_s([v8 mutableBytes], objc_msgSend(v8, "length"), 0, objc_msgSend(v8, "length"));
      [(CKKSKeychainBackedKey *)self setAessivkey:v9];
      if (v18 == 1)
      {
        v10 = sub_10020F5C8(@"ckkskey", 0);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy3 = self;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Resaving %@ as per request", buf, 0xCu);
        }

        v17 = 0;
        [(CKKSKeychainBackedKey *)self saveKeyMaterialToKeychain:&v17];
        v11 = v17;
        if (v11)
        {
          v12 = sub_10020F5C8(@"ckkskey", 0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            selfCopy3 = self;
            v21 = 2112;
            v22 = v11;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Resaving %@ failed: %@", buf, 0x16u);
          }
        }
      }

      aessivkey = [(CKKSKeychainBackedKey *)self aessivkey];
      v14 = aessivkey != 0;
    }

    else
    {
      v15 = sub_10020F5C8(@"ckkskey", 0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy3 = self;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Unable to unbase64 key: %@", buf, 0xCu);
      }

      if (!keychain)
      {
        v14 = 0;
        goto LABEL_18;
      }

      v9 = [NSString stringWithFormat:@"unable to unbase64 key: %@", self];
      [NSError errorWithDomain:@"CKKSErrorDomain" code:36 description:v9];
      *keychain = v14 = 0;
    }

LABEL_18:
    goto LABEL_19;
  }

  v14 = 0;
LABEL_19:

  return v14;
}

- (BOOL)saveKeyMaterialToKeychain:(BOOL)keychain error:(id *)error
{
  keychainCopy = keychain;
  v7 = [(CKKSKeychainBackedKey *)self ensureKeyLoadedFromKeychain:error];

  if (!v7)
  {
    return 0;
  }

  v44 = keychainCopy;
  v8 = [NSData alloc];
  aessivkey = [(CKKSKeychainBackedKey *)self aessivkey];
  aessivkey2 = [(CKKSKeychainBackedKey *)self aessivkey];
  v11 = [v8 initWithBytes:aessivkey + 8 length:aessivkey2[11]];
  v12 = [v11 base64EncodedDataWithOptions:0];

  v52[0] = kSecClass;
  v52[1] = kSecAttrAccessible;
  v53[0] = kSecClassInternetPassword;
  v53[1] = kSecAttrAccessibleWhenUnlocked;
  v52[2] = kSecUseDataProtectionKeychain;
  v52[3] = kSecAttrAccessGroup;
  v53[2] = &__kCFBooleanTrue;
  v53[3] = @"com.apple.security.ckks";
  v52[4] = kSecAttrDescription;
  keyclass = [(CKKSKeychainBackedKey *)self keyclass];
  v53[4] = keyclass;
  v52[5] = kSecAttrServer;
  zoneID = [(CKKSKeychainBackedKey *)self zoneID];
  zoneName = [zoneID zoneName];
  v53[5] = zoneName;
  v52[6] = kSecAttrAccount;
  uuid = [(CKKSKeychainBackedKey *)self uuid];
  v53[6] = uuid;
  v52[7] = kSecAttrPath;
  parentKeyUUID = [(CKKSKeychainBackedKey *)self parentKeyUUID];
  v53[7] = parentKeyUUID;
  v53[8] = &__kCFBooleanTrue;
  v52[8] = kSecAttrIsInvisible;
  v52[9] = kSecValueData;
  v45 = v12;
  v53[9] = v12;
  v18 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:10];
  v19 = [v18 mutableCopy];

  keyclass2 = [(CKKSKeychainBackedKey *)self keyclass];
  LODWORD(v18) = [keyclass2 isEqualToString:@"tlk"];

  if (v18)
  {
    [v19 setObject:kSecAttrViewHintPCSMasterKey forKeyedSubscript:kSecAttrSyncViewHint];
    [v19 setObject:kCFBooleanTrue forKeyedSubscript:kSecAttrSynchronizable];
  }

  keyclass3 = [(CKKSKeychainBackedKey *)self keyclass];
  v22 = [keyclass3 isEqualToString:@"classC"];

  if (v22)
  {
    v23 = kSecAttrAccessibleAfterFirstUnlock;
  }

  else
  {
    v23 = kSecAttrAccessibleWhenUnlocked;
  }

  [v19 setObject:v23 forKeyedSubscript:kSecAttrAccessible];
  v47 = 0;
  v24 = [CKKSKeychainBackedKey setKeyMaterialInKeychain:v19 error:&v47];
  v25 = v47;
  v26 = v25;
  if (error && v25)
  {
    code = [v25 code];
    v50[0] = NSLocalizedDescriptionKey;
    v28 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Couldn't save %@ to keychain: %d", self, [v26 code]);
    v50[1] = NSUnderlyingErrorKey;
    v51[0] = v28;
    v51[1] = v26;
    v29 = [NSDictionary dictionaryWithObjects:v51 forKeys:v50 count:2];
    *error = [NSError errorWithDomain:@"securityd" code:code userInfo:v29];
  }

  if (v44)
  {
    keyclass4 = [(CKKSKeychainBackedKey *)self keyclass];
    v31 = [keyclass4 isEqualToString:@"tlk"];

    if (v31)
    {
      v48[0] = kSecClass;
      v48[1] = kSecAttrAccessible;
      v49[0] = kSecClassInternetPassword;
      v49[1] = kSecAttrAccessibleWhenUnlocked;
      v48[2] = kSecUseDataProtectionKeychain;
      v48[3] = kSecAttrAccessGroup;
      v49[2] = &__kCFBooleanTrue;
      v49[3] = @"com.apple.security.ckks";
      v48[4] = kSecAttrDescription;
      keyclass5 = [(CKKSKeychainBackedKey *)self keyclass];
      v33 = [keyclass5 stringByAppendingString:@"-nonsync"];
      v49[4] = v33;
      v48[5] = kSecAttrServer;
      zoneID2 = [(CKKSKeychainBackedKey *)self zoneID];
      zoneName2 = [zoneID2 zoneName];
      v49[5] = zoneName2;
      v48[6] = kSecAttrAccount;
      uuid2 = [(CKKSKeychainBackedKey *)self uuid];
      v49[6] = uuid2;
      v48[7] = kSecAttrPath;
      parentKeyUUID2 = [(CKKSKeychainBackedKey *)self parentKeyUUID];
      v49[7] = parentKeyUUID2;
      v49[8] = &__kCFBooleanTrue;
      v48[8] = kSecAttrIsInvisible;
      v48[9] = kSecValueData;
      v49[9] = v45;
      v38 = [NSDictionary dictionaryWithObjects:v49 forKeys:v48 count:10];
      v39 = [v38 mutableCopy];

      [v39 setObject:kCFBooleanFalse forKeyedSubscript:kSecAttrSynchronizable];
      v46 = v26;
      v40 = [CKKSKeychainBackedKey setKeyMaterialInKeychain:v39 error:&v46];
      v41 = v46;

      v26 = v41;
      v19 = v39;
    }
  }

  v42 = v26 == 0;

  return v42;
}

- (id)decryptData:(id)data authenticatedData:(id)authenticatedData error:(id *)error
{
  authenticatedDataCopy = authenticatedData;
  dataCopy = data;
  v10 = [(CKKSKeychainBackedKey *)self ensureKeyLoadedFromKeychain:error];
  v11 = [v10 decryptData:dataCopy authenticatedData:authenticatedDataCopy error:error];

  return v11;
}

- (id)encryptData:(id)data authenticatedData:(id)authenticatedData error:(id *)error
{
  authenticatedDataCopy = authenticatedData;
  dataCopy = data;
  v10 = [(CKKSKeychainBackedKey *)self ensureKeyLoadedFromKeychain:error];
  v11 = [v10 encryptData:dataCopy authenticatedData:authenticatedDataCopy error:error];

  return v11;
}

- (id)unwrapAESKey:(id)key error:(id *)error
{
  keyCopy = key;
  v7 = [(CKKSKeychainBackedKey *)self ensureKeyLoadedFromKeychain:error];
  v8 = [v7 unwrapAESKey:keyCopy error:error];

  return v8;
}

- (id)wrapAESKey:(id)key error:(id *)error
{
  keyCopy = key;
  v7 = [(CKKSKeychainBackedKey *)self ensureKeyLoadedFromKeychain:error];
  v8 = [v7 wrapAESKey:keyCopy error:error];

  return v8;
}

- (BOOL)trySelfWrappedKeyCandidate:(id)candidate error:(id *)error
{
  candidateCopy = candidate;
  if ([(CKKSKeychainBackedKey *)self wrapsSelf])
  {
    wrappedkey = [(CKKSKeychainBackedKey *)self wrappedkey];
    v8 = [candidateCopy unwrapAESKey:wrappedkey error:error];

    if (v8 && [v8 isEqual:candidateCopy])
    {
      objc_storeStrong(&self->_aessivkey, v8);
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (error)
    {
      nSLocalizedDescriptionKey = [NSString stringWithFormat:@"%@ is not self-wrapped", self, NSLocalizedDescriptionKey];
      v14 = nSLocalizedDescriptionKey;
      v11 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
      *error = [NSError errorWithDomain:@"CKKSErrorDomain" code:18 userInfo:v11];
    }

    v9 = 0;
  }

  return v9;
}

- (id)ensureKeyLoadedFromKeychain:(id *)keychain
{
  aessivkey = [(CKKSKeychainBackedKey *)self aessivkey];

  if (aessivkey || [(CKKSKeychainBackedKey *)self loadKeyMaterialFromKeychain:keychain])
  {
    aessivkey2 = [(CKKSKeychainBackedKey *)self aessivkey];
  }

  else
  {
    aessivkey2 = 0;
  }

  return aessivkey2;
}

- (BOOL)unwrapSelfWithAESKey:(id)key error:(id *)error
{
  keyCopy = key;
  wrappedkey = [(CKKSKeychainBackedKey *)self wrappedkey];
  v8 = [keyCopy unwrapAESKey:wrappedkey error:error];

  aessivkey = self->_aessivkey;
  self->_aessivkey = v8;

  return self->_aessivkey != 0;
}

- (BOOL)wrapUnder:(id)under error:(id *)error
{
  underCopy = under;
  aessivkey = [(CKKSKeychainBackedKey *)self aessivkey];
  v14 = 0;
  v8 = [underCopy wrapAESKey:aessivkey error:&v14];
  v9 = v14;

  if (v8)
  {
    [(CKKSKeychainBackedKey *)self setWrappedkey:v8];
    uuid = [underCopy uuid];
    [(CKKSKeychainBackedKey *)self setParentKeyUUID:uuid];
  }

  else
  {
    v11 = sub_10020F5C8(@"ckkskey", 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "couldn't wrap key: %@", buf, 0xCu);
    }

    if (error)
    {
      v12 = v9;
      *error = v9;
    }
  }

  return v8 != 0;
}

- (BOOL)wrapsSelf
{
  uuid = [(CKKSKeychainBackedKey *)self uuid];
  parentKeyUUID = [(CKKSKeychainBackedKey *)self parentKeyUUID];
  v5 = [uuid isEqual:parentKeyUUID];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uuid = [(CKKSKeychainBackedKey *)self uuid];
    uuid2 = [v5 uuid];
    if ([uuid isEqual:uuid2])
    {
      parentKeyUUID = [(CKKSKeychainBackedKey *)self parentKeyUUID];
      parentKeyUUID2 = [v5 parentKeyUUID];
      if ([parentKeyUUID isEqual:parentKeyUUID2])
      {
        zoneID = [(CKKSKeychainBackedKey *)self zoneID];
        zoneID2 = [v5 zoneID];
        if ([zoneID isEqual:zoneID2])
        {
          wrappedkey = [(CKKSKeychainBackedKey *)self wrappedkey];
          wrappedkey2 = [v5 wrappedkey];
          v20 = wrappedkey;
          v14 = wrappedkey;
          v15 = wrappedkey2;
          if ([v14 isEqual:wrappedkey2])
          {
            keyclass = [(CKKSKeychainBackedKey *)self keyclass];
            keyclass2 = [v5 keyclass];
            v16 = [keyclass isEqual:keyclass2];
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CKKSKeychainBackedKey allocWithZone:zone];
  aessivkey = [(CKKSKeychainBackedKey *)self aessivkey];
  v6 = [aessivkey copy];
  wrappedkey = [(CKKSKeychainBackedKey *)self wrappedkey];
  uuid = [(CKKSKeychainBackedKey *)self uuid];
  parentKeyUUID = [(CKKSKeychainBackedKey *)self parentKeyUUID];
  keyclass = [(CKKSKeychainBackedKey *)self keyclass];
  zoneID = [(CKKSKeychainBackedKey *)self zoneID];
  v12 = [(CKKSKeychainBackedKey *)v4 initWithAESKey:v6 wrappedAESKey:wrappedkey uuid:uuid parentKeyUUID:parentKeyUUID keyclass:keyclass zoneID:zoneID];

  return v12;
}

- (CKKSKeychainBackedKey)initWithAESKey:(id)key wrappedAESKey:(id)sKey uuid:(id)uuid parentKeyUUID:(id)d keyclass:(id)keyclass zoneID:(id)iD
{
  keyCopy = key;
  sKeyCopy = sKey;
  uuidCopy = uuid;
  dCopy = d;
  keyclassCopy = keyclass;
  iDCopy = iD;
  v24.receiver = self;
  v24.super_class = CKKSKeychainBackedKey;
  v18 = [(CKKSKeychainBackedKey *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_uuid, uuid);
    objc_storeStrong(&v19->_parentKeyUUID, d);
    objc_storeStrong(&v19->_zoneID, iD);
    objc_storeStrong(&v19->_wrappedkey, sKey);
    objc_storeStrong(&v19->_keyclass, keyclass);
    objc_storeStrong(&v19->_aessivkey, key);
  }

  return v19;
}

+ (id)loadFromProtobuf:(id)protobuf error:(id *)error
{
  protobufCopy = protobuf;
  v6 = [[CKKSSerializedKey alloc] initWithData:protobufCopy];

  if (!v6)
  {
    goto LABEL_9;
  }

  uuid = [(CKKSSerializedKey *)v6 uuid];
  if (!uuid)
  {
    goto LABEL_9;
  }

  v8 = uuid;
  zoneName = [(CKKSSerializedKey *)v6 zoneName];
  if (!zoneName)
  {
    goto LABEL_8;
  }

  v10 = zoneName;
  keyclass = [(CKKSSerializedKey *)v6 keyclass];
  if (!keyclass)
  {

LABEL_8:
    goto LABEL_9;
  }

  v12 = keyclass;
  v13 = [(CKKSSerializedKey *)v6 key];

  if (v13)
  {
    v14 = [CKKSAESSIVKey alloc];
    v15 = [(CKKSSerializedKey *)v6 key];
    bytes = [v15 bytes];
    v17 = [(CKKSSerializedKey *)v6 key];
    v18 = -[CKKSAESSIVKey initWithBytes:len:](v14, "initWithBytes:len:", bytes, [v17 length]);

    uuid2 = [(CKKSSerializedKey *)v6 uuid];
    keyclass2 = [(CKKSSerializedKey *)v6 keyclass];
    v21 = [CKRecordZoneID alloc];
    zoneName2 = [(CKKSSerializedKey *)v6 zoneName];
    v23 = [v21 initWithZoneName:zoneName2 ownerName:CKCurrentUserDefaultName];
    v24 = [CKKSKeychainBackedKey keyWrappedBySelf:v18 uuid:uuid2 keyclass:keyclass2 zoneID:v23 error:error];

    goto LABEL_12;
  }

LABEL_9:
  if (error)
  {
    [NSError errorWithDomain:@"CKKSErrorDomain" code:21 description:@"Data failed to parse as a CKKSSerializedKey"];
    *error = v24 = 0;
  }

  else
  {
    v24 = 0;
  }

LABEL_12:

  return v24;
}

+ (id)fetchKeyMaterialItemFromKeychain:(id)keychain resave:(BOOL *)resave error:(id *)error
{
  keychainCopy = keychain;
  v74[0] = kSecClass;
  v74[1] = kSecUseDataProtectionKeychain;
  v75[0] = kSecClassInternetPassword;
  v75[1] = &__kCFBooleanTrue;
  v75[2] = @"com.apple.security.ckks";
  v74[2] = kSecAttrAccessGroup;
  v74[3] = kSecAttrDescription;
  keyclass = [keychainCopy keyclass];
  v75[3] = keyclass;
  v74[4] = kSecAttrAccount;
  uuid = [keychainCopy uuid];
  v75[4] = uuid;
  v74[5] = kSecAttrServer;
  zoneID = [keychainCopy zoneID];
  zoneName = [zoneID zoneName];
  v75[5] = zoneName;
  v74[6] = kSecAttrPath;
  parentKeyUUID = [keychainCopy parentKeyUUID];
  v75[6] = parentKeyUUID;
  v75[7] = &__kCFBooleanTrue;
  v74[7] = kSecReturnAttributes;
  v74[8] = kSecReturnData;
  v75[8] = &__kCFBooleanTrue;
  v11 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:9];
  v12 = [v11 mutableCopy];

  keyclass2 = [keychainCopy keyclass];
  LODWORD(zoneName) = [keyclass2 isEqualToString:@"tlk"];

  if (zoneName)
  {
    [v12 setObject:kCFBooleanTrue forKeyedSubscript:kSecAttrSynchronizable];
  }

  v61 = 0;
  v14 = [self queryKeyMaterialInKeychain:v12 error:&v61];
  v15 = v61;
  v16 = v15;
  if (v14)
  {
    v17 = v14;
    errorCopy3 = v17;
    v19 = v16;
    v20 = v12;
LABEL_5:
    v21 = v17;
    goto LABEL_6;
  }

  if (!v15 || [v15 code] == -25300)
  {

    keyclass3 = [keychainCopy keyclass];
    v24 = [keyclass3 isEqualToString:@"tlk"];

    if (v24)
    {
      v70[0] = kSecClass;
      v70[1] = kSecUseDataProtectionKeychain;
      v71[0] = kSecClassInternetPassword;
      v71[1] = &__kCFBooleanTrue;
      v71[2] = @"com.apple.security.ckks";
      v70[2] = kSecAttrAccessGroup;
      v70[3] = kSecAttrDescription;
      keyclass4 = [keychainCopy keyclass];
      v52 = [keyclass4 stringByAppendingString:@"-piggy"];
      v71[3] = v52;
      v71[4] = kSecAttrSynchronizableAny;
      v70[4] = kSecAttrSynchronizable;
      v70[5] = kSecAttrAccount;
      uuid2 = [keychainCopy uuid];
      v25 = [NSString stringWithFormat:@"%@-piggy", uuid2];
      v71[5] = v25;
      v70[6] = kSecAttrServer;
      zoneID2 = [keychainCopy zoneID];
      zoneName2 = [zoneID2 zoneName];
      v71[6] = zoneName2;
      v71[7] = &__kCFBooleanTrue;
      v70[7] = kSecReturnAttributes;
      v70[8] = kSecReturnData;
      v70[9] = kSecMatchLimit;
      v71[8] = &__kCFBooleanTrue;
      v71[9] = kSecMatchLimitOne;
      v28 = [NSDictionary dictionaryWithObjects:v71 forKeys:v70 count:10];
      v20 = [v28 mutableCopy];

      v60 = 0;
      errorCopy3 = [self queryKeyMaterialInKeychain:v20 error:&v60];
      v29 = v60;
      if (!v29)
      {
        v46 = sub_10020F5C8(@"ckkskey", 0);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          uuid3 = [keychainCopy uuid];
          *buf = 138412290;
          v69 = uuid3;
          v48 = "loaded a piggy TLK (%@)";
LABEL_36:
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v48, buf, 0xCu);
        }

LABEL_37:

        if (resave)
        {
          *resave = 1;
        }

        v17 = errorCopy3;
        errorCopy3 = v17;
        v19 = 0;
        goto LABEL_5;
      }

      v19 = v29;
      if ([v29 code] != -25300)
      {
        errorCopy2 = error;
        if (error)
        {
          code = [v19 code];
          v66[0] = NSLocalizedDescriptionKey;
          v39 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Couldn't load %@ from keychain: %d", keychainCopy, [v19 code]);
          v66[1] = NSUnderlyingErrorKey;
          v67[0] = v39;
          v67[1] = v19;
          v40 = v67;
          v41 = v66;
          goto LABEL_32;
        }

LABEL_33:
        v21 = 0;
        goto LABEL_6;
      }

      v12 = v20;
    }

    else
    {
      errorCopy3 = 0;
      v19 = 0;
    }

    keyclass5 = [keychainCopy keyclass];
    v31 = [keyclass5 isEqualToString:@"tlk"];

    if (!v31)
    {
      v19 = 0;
      v20 = v12;
      goto LABEL_25;
    }

    v64[0] = kSecClass;
    v64[1] = kSecUseDataProtectionKeychain;
    v65[0] = kSecClassInternetPassword;
    v65[1] = &__kCFBooleanTrue;
    v65[2] = @"com.apple.security.ckks";
    v64[2] = kSecAttrAccessGroup;
    v64[3] = kSecAttrDescription;
    keyclass6 = [keychainCopy keyclass];
    v55 = [keyclass6 stringByAppendingString:@"-nonsync"];
    v65[3] = v55;
    v64[4] = kSecAttrServer;
    zoneID3 = [keychainCopy zoneID];
    zoneName3 = [zoneID3 zoneName];
    v65[4] = zoneName3;
    v64[5] = kSecAttrAccount;
    uuid4 = [keychainCopy uuid];
    v65[5] = uuid4;
    v65[6] = &__kCFBooleanTrue;
    v64[6] = kSecReturnAttributes;
    v64[7] = kSecReturnData;
    v64[8] = kSecAttrSynchronizable;
    v65[7] = &__kCFBooleanTrue;
    v65[8] = &__kCFBooleanFalse;
    [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:9];
    v36 = v35 = errorCopy3;
    v20 = [v36 mutableCopy];

    v59 = 0;
    errorCopy3 = [self queryKeyMaterialInKeychain:v20 error:&v59];
    v19 = v59;

    if (v19)
    {
      if ([v19 code] != -25300)
      {
        errorCopy2 = error;
        if (error)
        {
          code = [v19 code];
          v62[0] = NSLocalizedDescriptionKey;
          v39 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Couldn't load %@ from keychain: %d", keychainCopy, [v19 code]);
          v62[1] = NSUnderlyingErrorKey;
          v63[0] = v39;
          v63[1] = v19;
          v40 = v63;
          v41 = v62;
LABEL_32:
          v49 = [NSDictionary dictionaryWithObjects:v40 forKeys:v41 count:2];
          *errorCopy2 = [NSError errorWithDomain:@"securityd" code:code userInfo:v49];

          goto LABEL_33;
        }

        goto LABEL_33;
      }

LABEL_25:
      if (error)
      {
        if (v16)
        {
          code2 = [v16 code];
        }

        else
        {
          code2 = -50;
        }

        v50 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Couldn't load %@ from keychain: %d", keychainCopy, [v16 code]);
        *error = [NSError errorWithDomain:@"securityd" code:code2 description:v50 underlying:v16];
      }

      v17 = errorCopy3;
      errorCopy3 = v17;
      goto LABEL_5;
    }

    v46 = sub_10020F5C8(@"ckkskey", 0);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      uuid3 = [keychainCopy uuid];
      *buf = 138412290;
      v69 = uuid3;
      v48 = "loaded a stashed TLK (%@)";
      goto LABEL_36;
    }

    goto LABEL_37;
  }

  errorCopy3 = error;
  if (error)
  {
    code3 = [v16 code];
    v72[0] = NSLocalizedDescriptionKey;
    v43 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Couldn't load %@ from keychain: %d", keychainCopy, [v16 code]);
    v72[1] = NSUnderlyingErrorKey;
    v73[0] = v43;
    v73[1] = v16;
    v44 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:2];
    *error = [NSError errorWithDomain:@"securityd" code:code3 userInfo:v44];

    errorCopy3 = 0;
  }

  v21 = 0;
  v19 = v16;
  v20 = v12;
LABEL_6:

  return v21;
}

+ (id)queryKeyMaterialInKeychain:(id)keychain error:(id *)error
{
  result = 0;
  v5 = SecItemCopyMatching(keychain, &result);
  v6 = result;
  if (v5)
  {
    if (result)
    {
      result = 0;
      CFRelease(v6);
    }

    if (error)
    {
      v7 = v5;
      v12 = NSLocalizedDescriptionKey;
      v8 = [NSString stringWithFormat:@"SecItemCopyMatching: %d", v5];
      v13 = v8;
      v9 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
      *error = [NSError errorWithDomain:@"securityd" code:v7 userInfo:v9];
    }

    v6 = 0;
  }

  return v6;
}

+ (id)setKeyMaterialInKeychain:(id)keychain error:(id *)error
{
  keychainCopy = keychain;
  result = 0;
  v6 = SecItemAdd(keychainCopy, &result);
  if (v6 == -25299)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = [(__CFDictionary *)keychainCopy objectForKeyedSubscript:kSecClass];
    [v7 setObject:v8 forKeyedSubscript:kSecClass];

    v9 = [(__CFDictionary *)keychainCopy objectForKeyedSubscript:kSecAttrSynchronizable];
    [v7 setObject:v9 forKeyedSubscript:kSecAttrSynchronizable];

    v10 = [(__CFDictionary *)keychainCopy objectForKeyedSubscript:kSecAttrSyncViewHint];
    [v7 setObject:v10 forKeyedSubscript:kSecAttrSyncViewHint];

    v11 = [(__CFDictionary *)keychainCopy objectForKeyedSubscript:kSecAttrAccessGroup];
    [v7 setObject:v11 forKeyedSubscript:kSecAttrAccessGroup];

    v12 = [(__CFDictionary *)keychainCopy objectForKeyedSubscript:kSecAttrAccount];
    [v7 setObject:v12 forKeyedSubscript:kSecAttrAccount];

    v13 = [(__CFDictionary *)keychainCopy objectForKeyedSubscript:kSecAttrServer];
    [v7 setObject:v13 forKeyedSubscript:kSecAttrServer];

    v14 = [(__CFDictionary *)keychainCopy objectForKeyedSubscript:kSecAttrPath];
    [v7 setObject:v14 forKeyedSubscript:kSecAttrPath];

    v15 = [(__CFDictionary *)keychainCopy objectForKeyedSubscript:kSecUseDataProtectionKeychain];
    [v7 setObject:v15 forKeyedSubscript:kSecUseDataProtectionKeychain];

    v16 = [(__CFDictionary *)keychainCopy mutableCopy];
    [v16 setObject:0 forKeyedSubscript:kSecClass];
    v17 = SecItemUpdate(v7, v16);
    if (v17)
    {
      v18 = [NSString stringWithFormat:@"SecItemUpdate: %d", v17];
      v19 = [NSError errorWithDomain:@"securityd" code:v17 description:v18];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    LODWORD(v17) = v6;
    v20 = v6;
    v7 = [NSString stringWithFormat:@"SecItemAdd: %d", v6];
    v19 = [NSError errorWithDomain:@"securityd" code:v20 description:v7];
  }

  v21 = result;
  if (v17)
  {
    if (result)
    {
      result = 0;
      CFRelease(v21);
    }

    if (error)
    {
      v22 = v19;
      v21 = 0;
      *error = v19;
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

+ (id)key:(id)key wrappedByKey:(id)byKey uuid:(id)uuid parentKeyUUID:(id)d keyclass:(id)keyclass zoneID:(id)iD error:(id *)error
{
  keyCopy = key;
  uuidCopy = uuid;
  dCopy = d;
  keyclassCopy = keyclass;
  iDCopy = iD;
  v25 = 0;
  v19 = [byKey wrapAESKey:keyCopy error:&v25];
  v20 = v25;
  if (v19)
  {
    v21 = [[CKKSKeychainBackedKey alloc] initWithAESKey:keyCopy wrappedAESKey:v19 uuid:uuidCopy parentKeyUUID:dCopy keyclass:keyclassCopy zoneID:iDCopy];
  }

  else
  {
    v22 = sub_10020F5C8(@"ckkskey", 0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v20;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "couldn't wrap key: %@", buf, 0xCu);
    }

    if (error)
    {
      v23 = v20;
      v21 = 0;
      *error = v20;
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

+ (id)randomKeyWrappedBySelf:(id)self error:(id *)error
{
  selfCopy = self;
  v7 = [CKKSAESSIVKey randomKey:error];
  if (v7)
  {
    v8 = +[NSUUID UUID];
    uUIDString = [v8 UUIDString];
    v10 = [self keyWrappedBySelf:v7 uuid:uUIDString keyclass:@"tlk" zoneID:selfCopy error:error];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)randomKeyWrappedByParent:(id)parent keyclass:(id)keyclass error:(id *)error
{
  parentCopy = parent;
  keyclassCopy = keyclass;
  v9 = [CKKSAESSIVKey randomKey:error];
  if (v9)
  {
    v10 = [parentCopy wrapAESKey:v9 error:error];
    if (v10)
    {
      v11 = [CKKSKeychainBackedKey alloc];
      v12 = +[NSUUID UUID];
      uUIDString = [v12 UUIDString];
      uuid = [parentCopy uuid];
      zoneID = [parentCopy zoneID];
      v16 = [(CKKSKeychainBackedKey *)v11 initWithAESKey:v9 wrappedAESKey:v10 uuid:uUIDString parentKeyUUID:uuid keyclass:keyclassCopy zoneID:zoneID];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)randomKeyWrappedByParent:(id)parent error:(id *)error
{
  parentCopy = parent;
  keyclass = [parentCopy keyclass];
  v8 = [self randomKeyWrappedByParent:parentCopy keyclass:keyclass error:error];

  return v8;
}

@end