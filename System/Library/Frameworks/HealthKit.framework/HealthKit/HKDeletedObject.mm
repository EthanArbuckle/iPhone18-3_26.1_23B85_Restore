@interface HKDeletedObject
+ (id)_deletedObjectWithUUID:(id)a3 metadata:(id)a4;
+ (id)_metadataWithSyncIdentifier:(id)a3 syncVersion:(id)a4;
- (BOOL)isEqual:(id)a3;
- (HKDeletedObject)initWithCoder:(id)a3;
- (id)_init;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKDeletedObject

- (id)_init
{
  v3.receiver = self;
  v3.super_class = HKDeletedObject;
  return [(HKDeletedObject *)&v3 init];
}

+ (id)_deletedObjectWithUUID:(id)a3 metadata:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = [[a1 alloc] _init];
  objc_storeStrong((v10 + 8), a3);
  v11 = [v9 copy];
  v12 = *(v10 + 16);
  *(v10 + 16) = v11;

  if (v9)
  {
    v18 = 0;
    v13 = [v9 hk_validateMetadataKeysAndValuesAllowingPrivateMetadataKeys:0 applicationSDKVersionToken:HKApplicationSDKVersionToken() error:&v18];
    v14 = v18;
    if ((v13 & 1) == 0)
    {
      [(HKDeletedObject *)a2 _deletedObjectWithUUID:a1 metadata:v14];
    }

    if ([v9 count] != 2)
    {
      +[HKDeletedObject _deletedObjectWithUUID:metadata:];
    }

    v15 = [v9 objectForKeyedSubscript:@"HKMetadataKeySyncIdentifier"];

    if (!v15)
    {
      +[HKDeletedObject _deletedObjectWithUUID:metadata:];
    }

    v16 = [v9 objectForKeyedSubscript:@"HKMetadataKeySyncVersion"];

    if (!v16)
    {
      +[HKDeletedObject _deletedObjectWithUUID:metadata:];
    }
  }

  return v10;
}

+ (id)_metadataWithSyncIdentifier:(id)a3 syncVersion:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (!(v5 | v6))
  {
    v8 = 0;
    goto LABEL_6;
  }

  if (!v5)
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

  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  v8 = objc_opt_new();
  [v8 setObject:v5 forKeyedSubscript:@"HKMetadataKeySyncIdentifier"];
  [v8 setObject:v7 forKeyedSubscript:@"HKMetadataKeySyncVersion"];
LABEL_6:

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    UUID = self->_UUID;
    v6 = [v4 UUID];
    v7 = [(NSUUID *)UUID isEqual:v6];
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
  v7 = [(NSUUID *)self->_UUID UUIDString];
  v8 = v7;
  v9 = &stru_1F05FF230;
  if (v4)
  {
    v9 = v4;
  }

  v10 = [v5 stringWithFormat:@"<%@ %@%@>", v6, v7, v9];

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"UUID"];
  [v5 encodeObject:self->_metadata forKey:@"Metadata"];
}

- (HKDeletedObject)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HKDeletedObject *)self _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    UUID = v5->_UUID;
    v5->_UUID = v6;

    v8 = [MEMORY[0x1E695DF20] hk_secureCodingClasses];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Metadata"];
    metadata = v5->_metadata;
    v5->_metadata = v9;
  }

  return v5;
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