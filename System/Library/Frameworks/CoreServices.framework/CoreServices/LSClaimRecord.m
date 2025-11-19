@interface LSClaimRecord
+ (id)_propertyClasses;
- (LSBundleRecord)claimingBundleRecord;
- (NSString)localizedName;
- (id)URLSchemesWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6;
- (id)_claimingBundleRecordWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6;
- (id)_localizedNameWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)handlerRankWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6;
- (id)localizedNameWithPreferredLocalizations:(id)a3;
- (id)typeIdentifiersWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6;
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
  v2 = [(LSClaimRecord *)self _localizedName];
  v3 = [v2 stringValue];

  return v3;
}

- (id)localizedNameWithPreferredLocalizations:(id)a3
{
  v4 = [(LSClaimRecord *)self _localizedName];
  v5 = [v4 stringValueWithPreferredLocalizations:a3];

  return v5;
}

- (id)typeIdentifiersWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__LSClaimRecord_typeIdentifiersWithContext_tableID_unitID_unitBytes___block_invoke;
  v12[3] = &unk_1E6A1B270;
  v9 = v8;
  v13 = v9;
  _LSEnumerateClaimedTypes(a3, a6, v12);
  v10 = [v9 copy];

  return v10;
}

- (id)URLSchemesWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6
{
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__LSClaimRecord_URLSchemesWithContext_tableID_unitID_unitBytes___block_invoke;
  v12[3] = &unk_1E6A1B270;
  v9 = v8;
  v13 = v9;
  _LSEnumerateClaimedSchemes(a3, a6, v12);
  v10 = [v9 copy];

  return v10;
}

- (id)handlerRankWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6
{
  v6 = _LSCopyHandlerRankStringFromNumericHandlerRank(a6->var3);

  return v6;
}

- (id)_claimingBundleRecordWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6
{
  WeakRetained = objc_loadWeakRetained(&self->_weakClaimingBundleRecord);

  if (WeakRetained)
  {
    v9 = 0;
  }

  else
  {
    v9 = _LSBundleGet(a3->db, a6->var5);
    if (v9)
    {
      v10 = v9;
      v11 = objc_opt_class();
      if (v10[42] == 2)
      {
        v11 = objc_opt_class();
      }

      v9 = [[v11 alloc] _initWithNode:0 bundleIdentifier:0 context:a3 tableID:*(-[_LSDatabase schema](a3->db) + 4) unitID:a6->var5 bundleBaseData:v10 error:0];
    }
  }

  return v9;
}

- (id)_localizedNameWithContext:(LSContext *)a3 tableID:(unsigned int)a4 unitID:(unsigned int)a5 unitBytes:(id *)a6
{
  v6 = [[_LSLocalizedStringRecord alloc] _initWithContext:a3 unitID:a6->var6];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = LSClaimRecord;
  v4 = [(LSRecord *)&v7 copyWithZone:a3];
  if (v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_weakClaimingBundleRecord);
    objc_storeWeak(v4 + 4, WeakRetained);
  }

  return v4;
}

@end