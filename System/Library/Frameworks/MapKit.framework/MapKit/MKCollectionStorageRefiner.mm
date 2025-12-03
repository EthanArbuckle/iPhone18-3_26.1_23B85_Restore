@interface MKCollectionStorageRefiner
- (MKCollectionStorageRefiner)initWithCollectionStorage:(id)storage;
- (MKCollectionStorageRefiner)initWithCollectionURL:(id)l;
- (void)_sharedInitWithCollectionStorage:(id)storage;
- (void)fetchMapItems:(id)items traits:(id)traits;
@end

@implementation MKCollectionStorageRefiner

- (void)fetchMapItems:(id)items traits:(id)traits
{
  v71 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  traitsCopy = traits;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  selfCopy = self;
  places = [(GEOURLCollectionStorage *)self->_collectionStorage places];
  v8 = [places countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v66;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v66 != v10)
        {
          objc_enumerationMutation(places);
        }

        v12 = [objc_alloc(MEMORY[0x1E69A21C0]) initWithMUID:objc_msgSend(*(*(&v65 + 1) + 8 * i) coordinate:{"muid"), -180.0, -180.0}];
        v13 = [[MKMapItemIdentifier alloc] initWithGEOMapItemIdentifier:v12];
        [v6 addObject:v13];
      }

      v9 = [places countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v9);
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  group = dispatch_group_create();
  array3 = [MEMORY[0x1E695DF70] array];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  places2 = [(GEOURLCollectionStorage *)selfCopy->_collectionStorage places];
  v46 = [places2 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v46)
  {
    v18 = *v62;
    do
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v62 != v18)
        {
          objc_enumerationMutation(places2);
        }

        v20 = *(*(&v61 + 1) + 8 * j);
        if ([v20 hasMuid])
        {
          v21 = -[MKMapItemIdentifier initWithMUID:resultProviderID:coordinate:]([MKMapItemIdentifier alloc], "initWithMUID:resultProviderID:coordinate:", [v20 muid], objc_msgSend(v20, "providerId"), -180.0, -180.0);
          [array3 addObject:v21];
        }

        else
        {
          if (![v20 hasCoordinate])
          {
            continue;
          }

          name = [v20 name];
          v60.latitude = 0.0;
          v60.longitude = 0.0;
          coordinate = [v20 coordinate];
          [coordinate lat];
          v24 = v23;
          [v20 coordinate];
          v25 = v18;
          v26 = places2;
          v27 = array;
          v28 = array2;
          v29 = v6;
          v31 = v30 = array3;
          [v31 lng];
          v60 = CLLocationCoordinate2DMake(v24, v32);

          v33 = +[MKMapService sharedService];
          address = [v20 address];
          v21 = [v33 ticketForPlaceRefinementRequestWithCoordinate:&v60 addressLine:address placeName:0 traits:traitsCopy];

          array3 = v30;
          v6 = v29;
          array2 = v28;
          array = v27;
          places2 = v26;
          v18 = v25;

          dispatch_group_enter(group);
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = __51__MKCollectionStorageRefiner_fetchMapItems_traits___block_invoke;
          v55[3] = &unk_1E76C6AA0;
          v55[4] = selfCopy;
          v56 = name;
          v57 = array;
          v58 = array2;
          v59 = group;
          v35 = name;
          [(MKMapItemIdentifier *)v21 submitWithHandler:v55 networkActivity:0];
        }
      }

      v46 = [places2 countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v46);
  }

  if ([array3 count])
  {
    v36 = +[MKMapService sharedService];
    v37 = [v36 ticketForIdentifiers:array3 traits:traitsCopy];

    dispatch_group_enter(group);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __51__MKCollectionStorageRefiner_fetchMapItems_traits___block_invoke_2;
    v51[3] = &unk_1E76C7088;
    v51[4] = selfCopy;
    v52 = array;
    v53 = array2;
    v54 = group;
    [v37 submitWithHandler:v51 networkActivity:0];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MKCollectionStorageRefiner_fetchMapItems_traits___block_invoke_3;
  block[3] = &unk_1E76CAA70;
  v49 = array;
  v50 = itemsCopy;
  v48 = array2;
  v38 = array;
  v39 = itemsCopy;
  v40 = array2;
  dispatch_group_notify(group, MEMORY[0x1E69E96A0], block);
}

void __51__MKCollectionStorageRefiner_fetchMapItems_traits___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 8));
  if (v5)
  {
    [*(a1 + 56) addObject:v5];
  }

  else if ([v8 count])
  {
    v6 = [v8 firstObject];
    v7 = v6;
    if (*(a1 + 40))
    {
      [v6 setName:?];
    }

    [*(a1 + 48) addObject:v7];
  }

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  dispatch_group_leave(*(a1 + 64));
}

void __51__MKCollectionStorageRefiner_fetchMapItems_traits___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 8));
  if (v5)
  {
    [*(a1 + 48) addObject:v5];
  }

  else
  {
    [*(a1 + 40) addObjectsFromArray:v6];
  }

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  dispatch_group_leave(*(a1 + 56));
}

void __51__MKCollectionStorageRefiner_fetchMapItems_traits___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) count];
  v3 = *(a1 + 48);
  v5 = [*(a1 + 40) copy];
  if (v2)
  {
    v4 = [*(a1 + 32) copy];
    (*(v3 + 16))(v3, v5, v4);
  }

  else
  {
    (*(v3 + 16))(v3, v5, 0);
  }
}

- (void)_sharedInitWithCollectionStorage:(id)storage
{
  self->_lock._os_unfair_lock_opaque = 0;
  v4 = [storage copy];
  collectionStorage = self->_collectionStorage;
  self->_collectionStorage = v4;
}

- (MKCollectionStorageRefiner)initWithCollectionStorage:(id)storage
{
  storageCopy = storage;
  v8.receiver = self;
  v8.super_class = MKCollectionStorageRefiner;
  v5 = [(MKCollectionStorageRefiner *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MKCollectionStorageRefiner *)v5 _sharedInitWithCollectionStorage:storageCopy];
  }

  return v6;
}

- (MKCollectionStorageRefiner)initWithCollectionURL:(id)l
{
  lCopy = l;
  v5 = [[_MKURLParser alloc] initWithURL:lCopy];

  [(_MKURLParser *)v5 parseIncludingCustomParameters:1];
  selfCopy = [(_MKURLParser *)v5 collectionStorage];

  if (selfCopy)
  {
    v10.receiver = self;
    v10.super_class = MKCollectionStorageRefiner;
    v7 = [(MKCollectionStorageRefiner *)&v10 init];
    if (v7)
    {
      collectionStorage = [(_MKURLParser *)v5 collectionStorage];
      [(MKCollectionStorageRefiner *)v7 _sharedInitWithCollectionStorage:collectionStorage];
    }

    self = v7;
    selfCopy = self;
  }

  return selfCopy;
}

@end