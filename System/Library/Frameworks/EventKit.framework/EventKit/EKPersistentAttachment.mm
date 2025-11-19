@interface EKPersistentAttachment
+ (id)propertiesToUnloadOnCommit;
+ (id)relations;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation EKPersistentAttachment

+ (id)relations
{
  if (relations_onceToken_5 != -1)
  {
    +[EKPersistentAttachment relations];
  }

  v3 = relations_relations_5;

  return v3;
}

void __35__EKPersistentAttachment_relations__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [MEMORY[0x1E695DFD8] setWithObject:*MEMORY[0x1E6992560]];
  v1 = [EKRelation relationWithEntityName:@"CalendarItem" toMany:0 inversePropertyNames:v4 ownsRelated:0];
  v2 = [v0 initWithObjectsAndKeys:{v1, *MEMORY[0x1E6992B18], 0}];
  v3 = relations_relations_5;
  relations_relations_5 = v2;
}

+ (id)propertiesToUnloadOnCommit
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__EKPersistentAttachment_propertiesToUnloadOnCommit__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (propertiesToUnloadOnCommit_onceToken != -1)
  {
    dispatch_once(&propertiesToUnloadOnCommit_onceToken, block);
  }

  v2 = propertiesToUnloadOnCommit_propertiesToUnloadOnCommit;

  return v2;
}

void __52__EKPersistentAttachment_propertiesToUnloadOnCommit__block_invoke(uint64_t a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = *(a1 + 32);
  v8.super_class = &OBJC_METACLASS___EKPersistentAttachment;
  v1 = objc_msgSendSuper2(&v8, sel_propertiesToUnloadOnCommit);
  v2 = propertiesToUnloadOnCommit_propertiesToUnloadOnCommit;
  propertiesToUnloadOnCommit_propertiesToUnloadOnCommit = v1;

  v3 = propertiesToUnloadOnCommit_propertiesToUnloadOnCommit;
  v9[0] = *MEMORY[0x1E69924B0];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v5 = [v3 arrayByAddingObjectsFromArray:v4];
  v6 = propertiesToUnloadOnCommit_propertiesToUnloadOnCommit;
  propertiesToUnloadOnCommit_propertiesToUnloadOnCommit = v5;

  v7 = *MEMORY[0x1E69E9840];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(EKPersistentAttachment);
  v5 = [(EKPersistentAttachment *)self UUID];
  [(EKPersistentAttachment *)v4 setUUID:v5];

  v6 = [(EKPersistentAttachment *)self URLString];
  [(EKPersistentAttachment *)v4 setURLString:v6];

  v7 = [(EKPersistentAttachment *)self fileNameRaw];
  [(EKPersistentAttachment *)v4 setFileNameRaw:v7];

  v8 = [(EKPersistentAttachment *)self fileFormat];
  [(EKPersistentAttachment *)v4 setFileFormat:v8];

  [(EKPersistentAttachment *)v4 setFlags:[(EKPersistentAttachment *)self flags]];
  v9 = [(EKPersistentAttachment *)self fileSize];
  [(EKPersistentAttachment *)v4 setFileSize:v9];

  v10 = [(EKPersistentAttachment *)self XPropertiesData];
  [(EKPersistentAttachment *)v4 setXPropertiesData:v10];

  v11 = [(EKPersistentAttachment *)self externalID];
  [(EKPersistentAttachment *)v4 setExternalID:v11];

  v12 = [(EKPersistentAttachment *)self URLWrapperForPendingFileCopy];
  [(EKPersistentAttachment *)v4 setURLWrapperForPendingFileCopy:v12];

  [(EKPersistentAttachment *)v4 setShouldSetQuarantineAttributesOnCopiedFile:[(EKPersistentAttachment *)self shouldSetQuarantineAttributesOnCopiedFile]];
  v13 = [(EKPersistentAttachment *)self securityScopedLocalURLWrapper];
  [(EKPersistentAttachment *)v4 setSecurityScopedLocalURLWrapper:v13];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(EKPersistentAttachment *)self URLString];
  v6 = [(EKPersistentAttachment *)self fileNameRaw];
  v7 = [(EKPersistentAttachment *)self fileFormat];
  v8 = [(EKPersistentAttachment *)self fileSize];
  v9 = [v8 unsignedLongValue];
  v10 = [(EKPersistentAttachment *)self localRelativePath];
  v11 = [(EKPersistentAttachment *)self UUID];
  v12 = [v3 stringWithFormat:@"%@ <%p> {URLString = %@ fileName = %@; fileFormat = %@; fileSize = %lu; localRelativePath = %@; UUID = %@;}", v4, self, v5, v6, v7, v9, v10, v11];;

  return v12;
}

@end