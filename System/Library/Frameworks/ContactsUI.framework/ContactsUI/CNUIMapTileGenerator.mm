@interface CNUIMapTileGenerator
+ (id)mapTileImagesForPlacemark:(id)placemark snapshotterProvider:(id)provider scheduler:(id)scheduler;
+ (id)placemarkForAddress:(id)address geocoderProvider:(id)provider scheduler:(id)scheduler;
- (CNUIMapTileGenerator)init;
- (CNUIMapTileGenerator)initWithGeocoderProvider:(id)provider snapshotterProvider:(id)snapshotterProvider schedulerProvider:(id)schedulerProvider;
- (id)tilesForAddress:(id)address;
@end

@implementation CNUIMapTileGenerator

- (id)tilesForAddress:(id)address
{
  v27[1] = *MEMORY[0x1E69E9840];
  addressCopy = address;
  geocoderProvider = [(CNUIMapTileGenerator *)self geocoderProvider];
  snapshotterProvider = [(CNUIMapTileGenerator *)self snapshotterProvider];
  workQueue = [(CNUIMapTileGenerator *)self workQueue];
  schedulerProvider = [(CNUIMapTileGenerator *)self schedulerProvider];
  v9 = [objc_opt_class() placemarkForAddress:addressCopy geocoderProvider:geocoderProvider scheduler:workQueue];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __40__CNUIMapTileGenerator_tilesForAddress___block_invoke;
  v24[3] = &unk_1E74E1DD8;
  v25 = workQueue;
  v26 = snapshotterProvider;
  v24[4] = self;
  v10 = workQueue;
  v11 = snapshotterProvider;
  v12 = [v9 flatMap:v24 schedulerProvider:schedulerProvider];
  v13 = MEMORY[0x1E6996798];
  null = [MEMORY[0x1E695DFB0] null];
  v15 = [v13 observableWithResult:null];
  v16 = [v12 onError:v15];

  schedulerProvider2 = [(CNUIMapTileGenerator *)self schedulerProvider];
  backgroundScheduler = [schedulerProvider2 backgroundScheduler];
  v19 = [v16 subscribeOn:backgroundScheduler];

  defaultImage = [objc_opt_class() defaultImage];
  v27[0] = defaultImage;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v22 = [v19 startWith:v21];

  return v22;
}

id __40__CNUIMapTileGenerator_tilesForAddress___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() mapTileImagesForPlacemark:v3 snapshotterProvider:*(a1 + 48) scheduler:*(a1 + 40)];

  return v4;
}

- (CNUIMapTileGenerator)initWithGeocoderProvider:(id)provider snapshotterProvider:(id)snapshotterProvider schedulerProvider:(id)schedulerProvider
{
  providerCopy = provider;
  snapshotterProviderCopy = snapshotterProvider;
  schedulerProviderCopy = schedulerProvider;
  v20.receiver = self;
  v20.super_class = CNUIMapTileGenerator;
  v11 = [(CNUIMapTileGenerator *)&v20 init];
  if (v11)
  {
    v12 = [providerCopy copy];
    geocoderProvider = v11->_geocoderProvider;
    v11->_geocoderProvider = v12;

    v14 = [snapshotterProviderCopy copy];
    snapshotterProvider = v11->_snapshotterProvider;
    v11->_snapshotterProvider = v14;

    v16 = [schedulerProviderCopy newSerialSchedulerWithName:@"com.apple.contacts.ContactsUI.CNUIMapTileGenerator"];
    workQueue = v11->_workQueue;
    v11->_workQueue = v16;

    objc_storeStrong(&v11->_schedulerProvider, schedulerProvider);
    v18 = v11;
  }

  return v11;
}

- (CNUIMapTileGenerator)init
{
  v3 = +[CNUIContactsEnvironment currentEnvironment];
  defaultSchedulerProvider = [v3 defaultSchedulerProvider];
  v5 = [(CNUIMapTileGenerator *)self initWithGeocoderProvider:&__block_literal_global_3380 snapshotterProvider:&__block_literal_global_4 schedulerProvider:defaultSchedulerProvider];

  return v5;
}

id __28__CNUIMapTileGenerator_init__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = getMKMapSnapshotterClass;
  v3 = a2;
  v4 = [objc_alloc(v2()) initWithOptions:v3];

  return v4;
}

id __28__CNUIMapTileGenerator_init__block_invoke()
{
  v0 = objc_alloc_init(getCLGeocoderClass());

  return v0;
}

+ (id)mapTileImagesForPlacemark:(id)placemark snapshotterProvider:(id)provider scheduler:(id)scheduler
{
  placemarkCopy = placemark;
  providerCopy = provider;
  schedulerCopy = scheduler;
  v10 = MEMORY[0x1E6996798];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __80__CNUIMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke;
  v16[3] = &unk_1E74E1EA0;
  v17 = schedulerCopy;
  v18 = placemarkCopy;
  v19 = providerCopy;
  v11 = providerCopy;
  v12 = placemarkCopy;
  v13 = schedulerCopy;
  v14 = [v10 observableWithBlock:v16];

  return v14;
}

id __80__CNUIMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __80__CNUIMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_2;
  v8[3] = &unk_1E74E1E78;
  v4 = a1[4];
  v9 = a1[5];
  v12 = a1[6];
  v10 = a1[4];
  v11 = v3;
  v5 = v3;
  v6 = [v4 performCancelableBlock:v8];

  return v6;
}

void __80__CNUIMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) location];
  [v4 coordinate];
  v6 = v5;
  v8 = v7;

  v9 = objc_alloc_init(getMKMapSnapshotOptionsClass());
  [v9 setRegion:{v6, v8, 0.0075, 0.0075}];
  [v9 setSize:{91.0, 91.0}];
  v10 = objc_alloc(getMKMapSnapshotFeatureAnnotationClass());
  v11 = [*(a1 + 32) location];
  [v11 coordinate];
  v12 = [v10 initWithCoordinate:0 title:1 representation:?];

  v28[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  [v9 _setCustomFeatureAnnotations:v13];

  v14 = (*(*(a1 + 56) + 16))();
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __80__CNUIMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_3;
  v25[3] = &unk_1E74E77C0;
  v26 = *(a1 + 40);
  v27 = v14;
  v15 = v14;
  [v3 addCancelationBlock:v25];
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNUIMapTileGenerator.m", 133, 7, @"Snapshotting %@…", v16, v17, v18, v19, *(a1 + 32));
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __80__CNUIMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_5;
  v21[3] = &unk_1E74E1E50;
  v22 = *(a1 + 40);
  v23 = *(a1 + 48);
  v24 = v3;
  v20 = v3;
  [v15 startWithCompletionHandler:v21];
}

void __80__CNUIMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_3(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __80__CNUIMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_4;
  v2[3] = &unk_1E74E6A88;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 performBlock:v2];
}

void __80__CNUIMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __80__CNUIMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_6;
  v11[3] = &unk_1E74E1E00;
  v12 = v5;
  v13 = v6;
  v7 = *(a1 + 32);
  v14 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  v10 = [v7 performCancelableBlock:v11];
  [*(a1 + 48) addCancelable:v10];
}

void __80__CNUIMapTileGenerator_mapTileImagesForPlacemark_snapshotterProvider_scheduler___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 32))
  {
    v8 = *(a1 + 40) == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNUIMapTileGenerator.m", 137, 7, @"Got a tile image!", a5, a6, a7, a8, 0);
    v10 = *(a1 + 48);
    v11 = [*(a1 + 32) image];
    [v10 observerDidReceiveResult:v11];
  }

  else
  {
    _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNUIMapTileGenerator.m", 140, 3, @"Error generating a snapshot: %@", a5, a6, a7, a8, *(a1 + 40));
  }
}

+ (id)placemarkForAddress:(id)address geocoderProvider:(id)provider scheduler:(id)scheduler
{
  addressCopy = address;
  providerCopy = provider;
  schedulerCopy = scheduler;
  v10 = MEMORY[0x1E6996798];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__CNUIMapTileGenerator_placemarkForAddress_geocoderProvider_scheduler___block_invoke;
  v16[3] = &unk_1E74E1EA0;
  v18 = addressCopy;
  v19 = providerCopy;
  v17 = schedulerCopy;
  v11 = addressCopy;
  v12 = providerCopy;
  v13 = schedulerCopy;
  v14 = [v10 observableWithBlock:v16];

  return v14;
}

id __71__CNUIMapTileGenerator_placemarkForAddress_geocoderProvider_scheduler___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__CNUIMapTileGenerator_placemarkForAddress_geocoderProvider_scheduler___block_invoke_2;
  v8[3] = &unk_1E74E1E78;
  v12 = a1[6];
  v9 = a1[5];
  v10 = a1[4];
  v11 = v3;
  v5 = v3;
  v6 = [v4 performCancelableBlock:v8];

  return v6;
}

void __71__CNUIMapTileGenerator_placemarkForAddress_geocoderProvider_scheduler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = (*(*(a1 + 56) + 16))();
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__CNUIMapTileGenerator_placemarkForAddress_geocoderProvider_scheduler___block_invoke_3;
  v16[3] = &unk_1E74E6A88;
  v17 = v4;
  v5 = v4;
  [v3 addCancelationBlock:v16];
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNUIMapTileGenerator.m", 93, 7, @"Geocoding %@…", v6, v7, v8, v9, *(a1 + 32));
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__CNUIMapTileGenerator_placemarkForAddress_geocoderProvider_scheduler___block_invoke_4;
  v12[3] = &unk_1E74E1E28;
  v10 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = v3;
  v11 = v3;
  [v5 geocodePostalAddress:v10 completionHandler:v12];
}

void __71__CNUIMapTileGenerator_placemarkForAddress_geocoderProvider_scheduler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__CNUIMapTileGenerator_placemarkForAddress_geocoderProvider_scheduler___block_invoke_5;
  v11[3] = &unk_1E74E1E00;
  v12 = v5;
  v13 = v6;
  v7 = *(a1 + 32);
  v14 = *(a1 + 40);
  v8 = v6;
  v9 = v5;
  v10 = [v7 performCancelableBlock:v11];
  [*(a1 + 48) addCancelable:v10];
}

void __71__CNUIMapTileGenerator_placemarkForAddress_geocoderProvider_scheduler___block_invoke_5(uint64_t a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) count];
  v3 = *(a1 + 40);
  if (!v2)
  {
    v4 = MEMORY[0x1E696ABC0];
    if (!v3)
    {
      v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CNUIContactsUIErrorDomain" code:301 userInfo:0];
      goto LABEL_6;
    }

LABEL_5:
    v13 = *MEMORY[0x1E696AA08];
    v14[0] = v3;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v6 = [v4 errorWithDomain:@"CNUIContactsUIErrorDomain" code:301 userInfo:v5];

LABEL_6:
    [*(a1 + 48) observerDidFailWithError:v6];

    return;
  }

  if (v3)
  {
    v4 = MEMORY[0x1E696ABC0];
    goto LABEL_5;
  }

  v12 = [*(a1 + 32) objectAtIndexedSubscript:0];
  _CNUILog("/Library/Caches/com.apple.xbs/Sources/ContactsUI/Framework/CNUIMapTileGenerator.m", 98, 7, @"Geocoding: got placemark %@!", v7, v8, v9, v10, v12);
  v11 = [objc_alloc(getMKPlacemarkClass()) initWithPlacemark:v12];
  [*(a1 + 48) observerDidReceiveResult:v11];
}

@end