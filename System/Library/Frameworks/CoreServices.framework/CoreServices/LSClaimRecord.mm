@interface LSClaimRecord
+ (id)_propertyClasses;
- (LSBundleRecord)claimingBundleRecord;
- (NSString)localizedName;
- (id)URLSchemesWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)_claimingBundleRecordWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)_localizedNameWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)handlerRankWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
- (id)localizedNameWithPreferredLocalizations:(id)localizations;
- (id)typeIdentifiersWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes;
@end

@implementation LSClaimRecord

- (LSBundleRecord)claimingBundleRecord
{
  WeakRetained = objc_loadWeakRetained(&self->_weakClaimingBundleRecord);
  if (!WeakRetained)
  {
    WeakRetained = [(LSClaimRecord *)self _claimingBundleRecord];
  }

  return WeakRetained;
}

+ (id)_propertyClasses
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (NSString)localizedName
{
  _localizedName = [(LSClaimRecord *)self _localizedName];
  stringValue = [_localizedName stringValue];

  return stringValue;
}

- (id)localizedNameWithPreferredLocalizations:(id)localizations
{
  _localizedName = [(LSClaimRecord *)self _localizedName];
  v5 = [_localizedName stringValueWithPreferredLocalizations:localizations];

  return v5;
}

- (id)typeIdentifiersWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__LSClaimRecord_typeIdentifiersWithContext_tableID_unitID_unitBytes___block_invoke;
  v12[3] = &unk_1E6A1B270;
  v9 = v8;
  v13 = v9;
  _LSEnumerateClaimedTypes(context, bytes, v12);
  v10 = [v9 copy];

  return v10;
}

- (id)URLSchemesWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__LSClaimRecord_URLSchemesWithContext_tableID_unitID_unitBytes___block_invoke;
  v12[3] = &unk_1E6A1B270;
  v9 = v8;
  v13 = v9;
  _LSEnumerateClaimedSchemes(context, bytes, v12);
  v10 = [v9 copy];

  return v10;
}

- (id)handlerRankWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  v6 = _LSCopyHandlerRankStringFromNumericHandlerRank(bytes->var3);

  return v6;
}

- (id)_claimingBundleRecordWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  WeakRetained = objc_loadWeakRetained(&self->_weakClaimingBundleRecord);

  if (WeakRetained)
  {
    v9 = 0;
  }

  else
  {
    v9 = _LSBundleGet(context->db, bytes->var5);
    if (v9)
    {
      v10 = v9;
      v11 = objc_opt_class();
      if (v10[42] == 2)
      {
        v11 = objc_opt_class();
      }

      v9 = [[v11 alloc] _initWithNode:0 bundleIdentifier:0 context:context tableID:*(-[_LSDatabase schema](context->db) + 4) unitID:bytes->var5 bundleBaseData:v10 error:0];
    }
  }

  return v9;
}

- (id)_localizedNameWithContext:(LSContext *)context tableID:(unsigned int)d unitID:(unsigned int)iD unitBytes:(id *)bytes
{
  v6 = [[_LSLocalizedStringRecord alloc] _initWithContext:context unitID:bytes->var6];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = LSClaimRecord;
  v4 = [(LSRecord *)&v7 copyWithZone:zone];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakClaimingBundleRecord);
    objc_storeWeak(v4 + 4, WeakRetained);
  }

  return v4;
}

@end