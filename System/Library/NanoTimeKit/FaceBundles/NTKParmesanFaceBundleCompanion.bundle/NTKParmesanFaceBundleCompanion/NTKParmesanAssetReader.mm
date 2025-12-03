@interface NTKParmesanAssetReader
+ (id)readerForAlbumWithResourceDirectory:(id)directory;
+ (id)readerForResourceDirectory:(id)directory;
- (NTKParmesanAssetReader)initWithResourceDirectory:(id)directory;
- (NTKParmesanAssetReaderDelegate)delegate;
- (NTKParmesanShuffleSelection)shuffleSelection;
- (id)description;
- (id)firstObject;
- (id)lastObject;
- (unint64_t)contentType;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
@end

@implementation NTKParmesanAssetReader

- (NTKParmesanAssetReader)initWithResourceDirectory:(id)directory
{
  directoryCopy = directory;
  v15.receiver = self;
  v15.super_class = NTKParmesanAssetReader;
  v8 = [(NTKParmesanAssetReader *)&v15 init];
  if (v8)
  {
    if (directoryCopy)
    {
      v9 = objc_msgSend_copy(directoryCopy, v5, v6, v7);
      resourceDirectory = v8->_resourceDirectory;
      v8->_resourceDirectory = v9;
    }

    assetCollectionIdentifier = v8->_assetCollectionIdentifier;
    v8->_assetCollectionIdentifier = 0;

    peopleIdentifiers = v8->_peopleIdentifiers;
    v8->_peopleIdentifiers = 0;

    v8->_hasDailyPhotos = 0;
    *&v8->_hasPeople = 0;
    uuidString = v8->_uuidString;
    v8->_uuidString = 0;
  }

  return v8;
}

- (unint64_t)contentType
{
  if (!self->_uuidString)
  {
    return 1;
  }

  if (self->_hasPeople || self->_hasPets || self->_hasNature || self->_hasCityscapes)
  {
    return 2;
  }

  if (self->_assetCollectionIdentifier)
  {
    return 3;
  }

  if (self->_hasDailyPhotos)
  {
    return 4;
  }

  v6 = objc_msgSend_logObject(NTKParmesanFaceBundle, a2, v2, v3);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_23BFF7CE0(self, v6);
  }

  return 0;
}

- (NTKParmesanShuffleSelection)shuffleSelection
{
  v5 = objc_msgSend_contentType(self, a2, v2, v3);
  switch(v5)
  {
    case 4:
      v19 = objc_msgSend_initDaily(NTKParmesanShuffleSelection, v6, v7, v8);
      goto LABEL_15;
    case 3:
      v16 = [NTKParmesanShuffleSelection alloc];
      v19 = objc_msgSend_initWithCollection_(v16, v17, self->_assetCollectionIdentifier, v18);
LABEL_15:
      v15 = v19;
      break;
    case 2:
      v9 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7, v8);
      v12 = v9;
      if (self->_hasPeople)
      {
        objc_msgSend_addObject_(v9, v10, &unk_284ED4560, v11);
      }

      if (self->_hasPets)
      {
        objc_msgSend_addObject_(v12, v10, &unk_284ED4578, v11);
      }

      if (self->_hasNature)
      {
        objc_msgSend_addObject_(v12, v10, &unk_284ED4590, v11);
      }

      if (self->_hasCityscapes)
      {
        objc_msgSend_addObject_(v12, v10, &unk_284ED45A8, v11);
      }

      v13 = [NTKParmesanShuffleSelection alloc];
      v15 = objc_msgSend_initWithShuffleTypesAsNSNumbers_personIdentifiers_(v13, v14, v12, self->_peopleIdentifiers);

      break;
    default:
      v15 = 0;
      break;
  }

  return v15;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v8 = objc_msgSend_assetCollectionIdentifier(self, v5, v6, v7);
  v12 = objc_msgSend_peopleIdentifiers(self, v9, v10, v11);
  hasPeople = objc_msgSend_hasPeople(self, v13, v14, v15);
  hasPets = objc_msgSend_hasPets(self, v17, v18, v19);
  hasNature = objc_msgSend_hasNature(self, v21, v22, v23);
  hasCityscapes = objc_msgSend_hasCityscapes(self, v25, v26, v27);
  hasDailyPhotos = objc_msgSend_hasDailyPhotos(self, v29, v30, v31);
  v35 = objc_msgSend_stringWithFormat_(v3, v33, @"%@[album=%@, people=%@, hasPeople=%d, hasPets=%d, hasNature=%d, hasCityscapes=%d, hasDailyPhotos=%d]", v34, v4, v8, v12, hasPeople, hasPets, hasNature, hasCityscapes, hasDailyPhotos);

  return v35;
}

+ (id)readerForResourceDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = [_NTKParmesanImageListReader alloc];
  v7 = objc_msgSend_initWithResourceDirectory_(v4, v5, directoryCopy, v6);

  return v7;
}

+ (id)readerForAlbumWithResourceDirectory:(id)directory
{
  directoryCopy = directory;
  v4 = [_NTKParmesanImageListReader alloc];
  v7 = objc_msgSend_initWithResourceDirectory_(v4, v5, directoryCopy, v6);

  return v7;
}

- (id)firstObject
{
  v5 = objc_msgSend_count(self, a2, v2, v3);
  if (v5)
  {
    v5 = objc_msgSend_objectAtIndex_(self, v6, 0, v7);
  }

  return v5;
}

- (id)lastObject
{
  v5 = objc_msgSend_count(self, a2, v2, v3);
  if (v5)
  {
    v9 = objc_msgSend_count(self, v6, v7, v8);
    v5 = objc_msgSend_objectAtIndex_(self, v10, v9 - 1, v11);
  }

  return v5;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  state->var2 = &self->_mutationCount;
  state->var0 = 1;
  v8 = state->var3[0];
  v9 = v8 + count;
  if (v8 + count > objc_msgSend_count(self, a2, state, objects))
  {
    v9 = objc_msgSend_count(self, v10, v11, v12);
  }

  v13 = v9 - v8;
  if (v9 > v8)
  {
    objectsCopy = objects;
    do
    {
      *objectsCopy++ = objc_msgSend_objectAtIndex_(self, v10, v8++, v12);
    }

    while (v9 != v8);
  }

  state->var3[0] = v9;
  state->var1 = objects;
  return v13;
}

- (NTKParmesanAssetReaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end