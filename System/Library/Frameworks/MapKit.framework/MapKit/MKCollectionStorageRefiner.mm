@interface MKCollectionStorageRefiner
- (MKCollectionStorageRefiner)initWithCollectionStorage:(id)a3;
- (MKCollectionStorageRefiner)initWithCollectionURL:(id)a3;
- (void)_sharedInitWithCollectionStorage:(id)a3;
- (void)fetchMapItems:(id)a3 traits:(id)a4;
@end

@implementation MKCollectionStorageRefiner

- (void)fetchMapItems:(id)a3 traits:(id)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v41 = a3;
  v43 = a4;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v44 = self;
  v7 = [(GEOURLCollectionStorage *)self->_collectionStorage places];
  v8 = [v7 countByEnumeratingWithState:&v65 objects:v70 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [objc_alloc(MEMORY[0x1E69A21C0]) initWithMUID:objc_msgSend(*(*(&v65 + 1) + 8 * i) coordinate:{"muid"), -180.0, -180.0}];
        v13 = [[MKMapItemIdentifier alloc] initWithGEOMapItemIdentifier:v12];
        [v6 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v9);
  }

  v14 = [MEMORY[0x1E695DF70] array];
  v15 = [MEMORY[0x1E695DF70] array];
  group = dispatch_group_create();
  v16 = [MEMORY[0x1E695DF70] array];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v17 = [(GEOURLCollectionStorage *)v44->_collectionStorage places];
  v46 = [v17 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v46)
  {
    v18 = *v62;
    do
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v62 != v18)
        {
          objc_enumerationMutation(v17);
        }

        v20 = *(*(&v61 + 1) + 8 * j);
        if ([v20 hasMuid])
        {
          v21 = -[MKMapItemIdentifier initWithMUID:resultProviderID:coordinate:]([MKMapItemIdentifier alloc], "initWithMUID:resultProviderID:coordinate:", [v20 muid], objc_msgSend(v20, "providerId"), -180.0, -180.0);
          [v16 addObject:v21];
        }

        else
        {
          if (![v20 hasCoordinate])
          {
            continue;
          }

          v45 = [v20 name];
          v60.latitude = 0.0;
          v60.longitude = 0.0;
          v22 = [v20 coordinate];
          [v22 lat];
          v24 = v23;
          [v20 coordinate];
          v25 = v18;
          v26 = v17;
          v27 = v14;
          v28 = v15;
          v29 = v6;
          v31 = v30 = v16;
          [v31 lng];
          v60 = CLLocationCoordinate2DMake(v24, v32);

          v33 = +[MKMapService sharedService];
          v34 = [v20 address];
          v21 = [v33 ticketForPlaceRefinementRequestWithCoordinate:&v60 addressLine:v34 placeName:0 traits:v43];

          v16 = v30;
          v6 = v29;
          v15 = v28;
          v14 = v27;
          v17 = v26;
          v18 = v25;

          dispatch_group_enter(group);
          v55[0] = MEMORY[0x1E69E9820];
          v55[1] = 3221225472;
          v55[2] = __51__MKCollectionStorageRefiner_fetchMapItems_traits___block_invoke;
          v55[3] = &unk_1E76C6AA0;
          v55[4] = v44;
          v56 = v45;
          v57 = v14;
          v58 = v15;
          v59 = group;
          v35 = v45;
          [(MKMapItemIdentifier *)v21 submitWithHandler:v55 networkActivity:0];
        }
      }

      v46 = [v17 countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v46);
  }

  if ([v16 count])
  {
    v36 = +[MKMapService sharedService];
    v37 = [v36 ticketForIdentifiers:v16 traits:v43];

    dispatch_group_enter(group);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __51__MKCollectionStorageRefiner_fetchMapItems_traits___block_invoke_2;
    v51[3] = &unk_1E76C7088;
    v51[4] = v44;
    v52 = v14;
    v53 = v15;
    v54 = group;
    [v37 submitWithHandler:v51 networkActivity:0];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MKCollectionStorageRefiner_fetchMapItems_traits___block_invoke_3;
  block[3] = &unk_1E76CAA70;
  v49 = v14;
  v50 = v41;
  v48 = v15;
  v38 = v14;
  v39 = v41;
  v40 = v15;
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

- (void)_sharedInitWithCollectionStorage:(id)a3
{
  self->_lock._os_unfair_lock_opaque = 0;
  v4 = [a3 copy];
  collectionStorage = self->_collectionStorage;
  self->_collectionStorage = v4;
}

- (MKCollectionStorageRefiner)initWithCollectionStorage:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MKCollectionStorageRefiner;
  v5 = [(MKCollectionStorageRefiner *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MKCollectionStorageRefiner *)v5 _sharedInitWithCollectionStorage:v4];
  }

  return v6;
}

- (MKCollectionStorageRefiner)initWithCollectionURL:(id)a3
{
  v4 = a3;
  v5 = [[_MKURLParser alloc] initWithURL:v4];

  [(_MKURLParser *)v5 parseIncludingCustomParameters:1];
  v6 = [(_MKURLParser *)v5 collectionStorage];

  if (v6)
  {
    v10.receiver = self;
    v10.super_class = MKCollectionStorageRefiner;
    v7 = [(MKCollectionStorageRefiner *)&v10 init];
    if (v7)
    {
      v8 = [(_MKURLParser *)v5 collectionStorage];
      [(MKCollectionStorageRefiner *)v7 _sharedInitWithCollectionStorage:v8];
    }

    self = v7;
    v6 = self;
  }

  return v6;
}

@end