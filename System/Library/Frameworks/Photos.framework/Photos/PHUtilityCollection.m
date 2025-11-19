@interface PHUtilityCollection
+ (id)fetchUtilityCollectionsForReferences:(id)a3 photoLibrary:(id)a4;
- (PHUtilityCollection)initWithType:(unsigned __int16)a3 fetchOptions:(id)a4;
- (id)description;
- (id)localizedTitle;
@end

@implementation PHUtilityCollection

- (id)description
{
  v9.receiver = self;
  v9.super_class = PHUtilityCollection;
  v3 = [(PHAssetCollection *)&v9 description];
  v4 = [(PHUtilityCollection *)self type]- 1;
  if (v4 > 5)
  {
    v5 = @"None";
  }

  else
  {
    v5 = off_1E75A7E48[v4];
  }

  v6 = v5;
  v7 = [v3 stringByAppendingFormat:@" Utility collection type: %@", v6];

  return v7;
}

- (id)localizedTitle
{
  v2 = [(PHUtilityCollection *)self type]- 1;
  if (v2 > 5)
  {
    return @"None";
  }

  else
  {
    return off_1E75A7E48[v2];
  }
}

- (PHUtilityCollection)initWithType:(unsigned __int16)a3 fetchOptions:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [PHQuery queryForAssetsInUtilityCollectionWithType:v4 options:v6];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"utility-%d", v4];
    v9 = [v6 photoLibrary];
    v12.receiver = self;
    v12.super_class = PHUtilityCollection;
    v11 = 0;
    self = [(PHAssetCollection *)&v12 initTransientWithAssets:0 orFetchResult:0 orQuery:v7 title:0 subtitle:0 titleFontName:0 identifier:v8 albumKind:v11 subtype:0 photoLibrary:v9];

    if (self)
    {
      self->_type = v4;
    }
  }

  return self;
}

+ (id)fetchUtilityCollectionsForReferences:(id)a3 photoLibrary:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[(PHAssetCollection *)PHUtilityCollection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __92__PHUtilityCollection_PHObjectReference__fetchUtilityCollectionsForReferences_photoLibrary___block_invoke;
  v12[3] = &unk_1E75A8B70;
  v13 = v5;
  v14 = v7;
  v8 = v7;
  v9 = v5;
  v10 = PHCollectionReferenceFetchCollectionsForReferences(v6, v9, v8, v12);

  return v10;
}

PHManualFetchResult *__92__PHUtilityCollection_PHObjectReference__fetchUtilityCollectionsForReferences_photoLibrary___block_invoke(uint64_t a1)
{
  v2 = [PHManualFetchResult alloc];
  v3 = [(PHManualFetchResult *)v2 initWithObjects:MEMORY[0x1E695E0F0] photoLibrary:*(a1 + 32) fetchType:*(a1 + 40) fetchPropertySets:0 identifier:0 registerIfNeeded:0];

  return v3;
}

@end