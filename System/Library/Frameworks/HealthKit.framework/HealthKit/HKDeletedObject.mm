@interface HKDeletedObject
+ (id)_deletedObjectWithUUID:(id)d metadata:(id)metadata;
+ (id)_metadataWithSyncIdentifier:(id)identifier syncVersion:(id)version;
- (BOOL)isEqual:(id)equal;
- (HKDeletedObject)initWithCoder:(id)coder;
- (id)_init;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKDeletedObject

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HKDeletedObject;
  return [(HKDeletedObject *)&v3 init];
}

+ (id)_deletedObjectWithUUID:(id)d metadata:(id)metadata
{
  dCopy = d;
  metadataCopy = metadata;
  _init = [[self alloc] _init];
  objc_storeStrong((_init + 8), d);
  v11 = [metadataCopy copy];
  v12 = *(_init + 16);
  *(_init + 16) = v11;

  if (metadataCopy)
  {
    v18 = 0;
    v13 = [metadataCopy hk_validateMetadataKeysAndValuesAllowingPrivateMetadataKeys:0 applicationSDKVersionToken:HKApplicationSDKVersionToken() error:&v18];
    v14 = v18;
    if ((v13 & 1) == 0)
    {
      [(HKDeletedObject *)a2 _deletedObjectWithUUID:self metadata:v14];
    }

    if ([metadataCopy count] != 2)
    {
      +[HKDeletedObject _deletedObjectWithUUID:metadata:];
    }

    v15 = [metadataCopy objectForKeyedSubscript:@"HKMetadataKeySyncIdentifier"];

    if (!v15)
    {
      +[HKDeletedObject _deletedObjectWithUUID:metadata:];
    }

    v16 = [metadataCopy objectForKeyedSubscript:@"HKMetadataKeySyncVersion"];

    if (!v16)
    {
      +[HKDeletedObject _deletedObjectWithUUID:metadata:];
    }
  }

  return _init;
}

+ (id)_metadataWithSyncIdentifier:(id)identifier syncVersion:(id)version
{
  identifierCopy = identifier;
  versionCopy = version;
  v7 = versionCopy;
  if (!(identifierCopy | versionCopy))
  {
    v8 = 0;
    goto LABEL_6;
  }

  if (!identifierCopy)
  {
    +[HKDeletedObject _metadataWithSyncIdentifier:syncVersion:];
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_10:
    +[HKDeletedObject _metadataWithSyncIdentifier:syncVersion:];
    goto LABEL_5;
  }

  if (!versionCopy)
  {
    goto LABEL_10;
  }

LABEL_5:
  v8 = objc_opt_new();
  [v8 setObject:identifierCopy forKeyedSubscript:@"HKMetadataKeySyncIdentifier"];
  [v8 setObject:v7 forKeyedSubscript:@"HKMetadataKeySyncVersion"];
LABEL_6:

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    UUID = self->_UUID;
    uUID = [equalCopy UUID];
    v7 = [(NSUUID *)UUID isEqual:uUID];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  metadata = self->_metadata;
  if (metadata && [(NSDictionary *)metadata count])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", self->_metadata];
  }

  else
  {
    v4 = 0;
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  uUIDString = [(NSUUID *)self->_UUID UUIDString];
  v8 = uUIDString;
  v9 = &stru_1F05FF230;
  if (v4)
  {
    v9 = v4;
  }

  v10 = [v5 stringWithFormat:@"<%@ %@%@>", v6, uUIDString, v9];

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"UUID"];
  [coderCopy encodeObject:self->_metadata forKey:@"Metadata"];
}

- (HKDeletedObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(HKDeletedObject *)self _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = _init->_UUID;
    _init->_UUID = v6;

    hk_secureCodingClasses = [MEMORY[0x1E695DF20] hk_secureCodingClasses];
    v9 = [coderCopy decodeObjectOfClasses:hk_secureCodingClasses forKey:@"Metadata"];
    metadata = _init->_metadata;
    _init->_metadata = v9;
  }

  return _init;
}

+ (void)_deletedObjectWithUUID:(uint64_t)a3 metadata:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"HKDeletedObject.m" lineNumber:34 description:{@"Error: %@", a3}];
}

+ (void)_deletedObjectWithUUID:metadata:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"[metadata count] == 2" object:? file:? lineNumber:? description:?];
}

+ (void)_deletedObjectWithUUID:metadata:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"metadata[HKMetadataKeySyncIdentifier] != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_deletedObjectWithUUID:metadata:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v1 handleFailureInMethod:@"metadata[HKMetadataKeySyncVersion] != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_metadataWithSyncIdentifier:syncVersion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"syncIdentifier != nil" object:? file:? lineNumber:? description:?];
}

+ (void)_metadataWithSyncIdentifier:syncVersion:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_1_0();
  [v0 handleFailureInMethod:@"syncVersion != nil" object:? file:? lineNumber:? description:?];
}

@end