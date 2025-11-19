@interface NSFileProviderItemVersion
+ (NSData)beforeFirstSyncComponent;
- (BOOL)isEqual:(id)a3;
- (NSFileProviderItemVersion)init;
- (NSFileProviderItemVersion)initWithCoder:(id)a3;
- (NSFileProviderItemVersion)initWithMainContentVersion:(id)a3 equivalentContentVersions:(id)a4 mainMetadataVersion:(id)a5 equivalentMetadataVersions:(id)a6 lastEditorDeviceName:(id)a7 conflictResolved:(BOOL)a8;
- (id)etagHash;
- (id)versionRewritingBeforeFirstSync;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)etagHash;
@end

@implementation NSFileProviderItemVersion

+ (NSData)beforeFirstSyncComponent
{
  if (beforeFirstSyncComponent_onceToken != -1)
  {
    +[NSFileProviderItemVersion beforeFirstSyncComponent];
  }

  v3 = beforeFirstSyncComponent_beforeFirstSync;

  return v3;
}

uint64_t __53__NSFileProviderItemVersion_beforeFirstSyncComponent__block_invoke()
{
  beforeFirstSyncComponent_beforeFirstSync = [@"NSFileProviderEmptyItemVersionBeforeFirstSyncComponent" dataUsingEncoding:4];

  return MEMORY[0x1EEE66BB8]();
}

- (NSFileProviderItemVersion)initWithMainContentVersion:(id)a3 equivalentContentVersions:(id)a4 mainMetadataVersion:(id)a5 equivalentMetadataVersions:(id)a6 lastEditorDeviceName:(id)a7 conflictResolved:(BOOL)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  if ([v16 count] >= 0x10)
  {
    [NSFileProviderItemVersion initWithMainContentVersion:a2 equivalentContentVersions:self mainMetadataVersion:? equivalentMetadataVersions:? lastEditorDeviceName:? conflictResolved:?];
  }

  if ([v18 count] >= 0x10)
  {
    [NSFileProviderItemVersion initWithMainContentVersion:a2 equivalentContentVersions:self mainMetadataVersion:? equivalentMetadataVersions:? lastEditorDeviceName:? conflictResolved:?];
  }

  v32.receiver = self;
  v32.super_class = NSFileProviderItemVersion;
  v20 = [(NSFileProviderItemVersion *)&v32 init];
  if (v20)
  {
    v21 = [v15 copy];
    contentVersion = v20->_contentVersion;
    v20->_contentVersion = v21;

    v23 = [v16 copy];
    equivalentContentVersions = v20->_equivalentContentVersions;
    v20->_equivalentContentVersions = v23;

    v25 = [v17 copy];
    metadataVersion = v20->_metadataVersion;
    v20->_metadataVersion = v25;

    v27 = [v18 copy];
    equivalentMetadataVersions = v20->_equivalentMetadataVersions;
    v20->_equivalentMetadataVersions = v27;

    v29 = [v19 copy];
    lastEditorDeviceName = v20->_lastEditorDeviceName;
    v20->_lastEditorDeviceName = v29;

    v20->_conflictResolved = a8;
  }

  return v20;
}

- (NSFileProviderItemVersion)init
{
  v3 = +[_NSFileProviderEmptyItemVersion emptyVersion];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_contentVersion forKey:@"c"];
  if ([(NSArray *)self->_equivalentContentVersions count])
  {
    [v4 encodeObject:self->_equivalentContentVersions forKey:@"ec"];
  }

  [v4 encodeObject:self->_metadataVersion forKey:@"m"];
  if ([(NSArray *)self->_equivalentMetadataVersions count])
  {
    [v4 encodeObject:self->_equivalentMetadataVersions forKey:@"em"];
  }

  [v4 encodeObject:self->_lastEditorDeviceName forKey:@"ledn"];
  [v4 encodeBool:self->_conflictResolved forKey:@"cr"];
}

- (NSFileProviderItemVersion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"c"];
  v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"ec"];
  v7 = v6;
  v8 = MEMORY[0x1E695E0F0];
  if (v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"m"];
  v12 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"em"];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v8;
  }

  v15 = v14;

  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ledn"];
  v17 = [v4 decodeBoolForKey:@"cr"];

  v18 = [(NSFileProviderItemVersion *)self initWithMainContentVersion:v5 equivalentContentVersions:v10 mainMetadataVersion:v11 equivalentMetadataVersions:v15 lastEditorDeviceName:v16 conflictResolved:v17];
  return v18;
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
      v6 = [(NSFileProviderItemVersion *)v5 metadataVersion];
      v7 = [(NSFileProviderItemVersion *)self metadataVersion];
      if ([v6 isEqual:v7])
      {
        v8 = [(NSFileProviderItemVersion *)v5 contentVersion];
        v9 = [(NSFileProviderItemVersion *)self contentVersion];
        v10 = [v8 isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSFileProviderItemVersion *)self contentVersion];
  v4 = [v3 hash];
  v5 = [(NSFileProviderItemVersion *)self metadataVersion];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)versionRewritingBeforeFirstSync
{
  v3 = [NSFileProviderItemVersion alloc];
  v4 = [(NSFileProviderItemVersion *)self contentVersion];
  v5 = rewriteBeforeFirstSync(v4);
  v6 = [(NSFileProviderItemVersion *)self metadataVersion];
  v7 = rewriteBeforeFirstSync(v6);
  v8 = [(NSFileProviderItemVersion *)v3 initWithContentVersion:v5 metadataVersion:v7];

  return v8;
}

- (id)etagHash
{
  v4 = [(NSFileProviderItemVersion *)self contentVersion];
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v4 encoding:1];
  if (v5)
  {
    v6 = [MEMORY[0x1E696AD48] characterSetWithCharactersInString:@"}{/\\%*|<>"];
    [v6 addCharactersInRange:{0, 31}];
    [v6 addCharactersInRange:{127, 128}];
    if ([v5 rangeOfCharacterFromSet:v6] != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_6;
    }

    if ([v5 length] <= 0x50)
    {
      v5 = v5;
LABEL_9:

      v9 = v5;
      goto LABEL_12;
    }

    if ((4 * [v5 length]) <= 0xF2)
    {
LABEL_6:
      v7 = [v4 base64EncodedDataWithOptions:0];
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:1];

      if (!v8)
      {
        [(NSFileProviderItemVersion *)a2 etagHash];
      }

      v5 = v8;

      goto LABEL_9;
    }
  }

  v9 = [MEMORY[0x1E696AEC0] fp_hashForToken:v4];
LABEL_12:

  return v9;
}

- (void)initWithMainContentVersion:(uint64_t)a1 equivalentContentVersions:(uint64_t)a2 mainMetadataVersion:equivalentMetadataVersions:lastEditorDeviceName:conflictResolved:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSFileProviderItemVersion.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"equivalentContentVersions.count < 16"}];
}

- (void)initWithMainContentVersion:(uint64_t)a1 equivalentContentVersions:(uint64_t)a2 mainMetadataVersion:equivalentMetadataVersions:lastEditorDeviceName:conflictResolved:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSFileProviderItemVersion.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"equivalentMetadataVersions.count < 16"}];
}

- (void)etagHash
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSFileProviderItemVersion.m" lineNumber:231 description:@"Can't base64 encode version"];
}

@end