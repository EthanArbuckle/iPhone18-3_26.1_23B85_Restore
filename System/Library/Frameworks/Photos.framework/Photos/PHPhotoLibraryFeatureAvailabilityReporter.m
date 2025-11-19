@interface PHPhotoLibraryFeatureAvailabilityReporter
- (PHPhotoLibraryFeatureAvailabilityReporter)initWithPhotoLibrary:(id)a3;
- (PHPhotoLibraryFeatureAvailabilityReporter)initWithPhotoLibrary:(id)a3 readOptions:(id)a4;
- (void)availabilityForFeature:(unint64_t)a3 completionHandler:(id)a4;
- (void)availabilityStatusForFeature:(unint64_t)a3 availabilityConfig:(id)a4 completionHandler:(id)a5;
- (void)availabilityStatusForFeature:(unint64_t)a3 completionHandler:(id)a4;
@end

@implementation PHPhotoLibraryFeatureAvailabilityReporter

- (void)availabilityForFeature:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [(PHFeatureAvailabilityReadOptions *)self->_readOptions validateSpotlightAvailability];
  photoLibrary = self->_photoLibrary;
  readOptions = self->_readOptions;
  if (v7)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __86__PHPhotoLibraryFeatureAvailabilityReporter_availabilityForFeature_completionHandler___block_invoke;
    v13[3] = &unk_1E75A8778;
    v14 = v6;
    [(PHPhotoLibrary *)photoLibrary featureAvailabilityForFeature:a3 readOptions:readOptions completionHandler:v13];
    v10 = v14;
  }

  else
  {
    v12 = 0;
    v11 = [(PHPhotoLibrary *)photoLibrary featureAvailabilityForFeature:a3 readOptions:readOptions error:&v12];
    v10 = v12;
    (*(v6 + 2))(v6, v11, v10);
  }
}

- (void)availabilityStatusForFeature:(unint64_t)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = [[PHFeatureAvailabilityConfig alloc] initWithFeature:a3];
  [(PHPhotoLibraryFeatureAvailabilityReporter *)self availabilityStatusForFeature:a3 availabilityConfig:v7 completionHandler:v6];
}

- (void)availabilityStatusForFeature:(unint64_t)a3 availabilityConfig:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  photoLibrary = self->_photoLibrary;
  v19 = 0;
  v10 = [PHPhotoLibraryFeatureAvailabilityTask availabilityStatusTaskForFeature:a3 photoLibrary:photoLibrary availabilityConfig:a4 error:&v19];
  v11 = v19;
  if (v10)
  {
    os_unfair_lock_lock(&self->_lock_tasks);
    tasks = self->_tasks;
    v13 = [v10 taskID];
    [(NSMutableDictionary *)tasks setObject:v10 forKeyedSubscript:v13];

    os_unfair_lock_unlock(&self->_lock_tasks);
    queue = self->_queue;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __111__PHPhotoLibraryFeatureAvailabilityReporter_availabilityStatusForFeature_availabilityConfig_completionHandler___block_invoke;
    v15[3] = &unk_1E75AA870;
    v16 = v10;
    v17 = self;
    v18 = v8;
    dispatch_async(queue, v15);
  }

  else
  {
    (*(v8 + 2))(v8, 0, v11);
  }
}

void __111__PHPhotoLibraryFeatureAvailabilityReporter_availabilityStatusForFeature_availabilityConfig_completionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __111__PHPhotoLibraryFeatureAvailabilityReporter_availabilityStatusForFeature_availabilityConfig_completionHandler___block_invoke_2;
  v4[3] = &unk_1E75A8750;
  v3 = *(a1 + 32);
  v2 = v3.i64[0];
  v5 = vextq_s8(v3, v3, 8uLL);
  v6 = *(a1 + 48);
  [v2 executeWithCompletionHandler:v4];
}

void __111__PHPhotoLibraryFeatureAvailabilityReporter_availabilityStatusForFeature_availabilityConfig_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v9 = a2;
  os_unfair_lock_lock(v5 + 10);
  v7 = *(*(a1 + 32) + 32);
  v8 = [*(a1 + 40) taskID];
  [v7 setObject:0 forKeyedSubscript:v8];

  os_unfair_lock_unlock((*(a1 + 32) + 40));
  (*(*(a1 + 48) + 16))();
}

- (PHPhotoLibraryFeatureAvailabilityReporter)initWithPhotoLibrary:(id)a3 readOptions:(id)a4
{
  v7 = a4;
  v8 = [(PHPhotoLibraryFeatureAvailabilityReporter *)self initWithPhotoLibrary:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_readOptions, a4);
  }

  return v9;
}

- (PHPhotoLibraryFeatureAvailabilityReporter)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = PHPhotoLibraryFeatureAvailabilityReporter;
  v6 = [(PHPhotoLibraryFeatureAvailabilityReporter *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
    v8 = objc_alloc_init(PHFeatureAvailabilityReadOptions);
    readOptions = v7->_readOptions;
    v7->_readOptions = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.photolibrary.availability-reporter", v10);
    queue = v7->_queue;
    v7->_queue = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    tasks = v7->_tasks;
    v7->_tasks = v13;

    v7->_lock_tasks._os_unfair_lock_opaque = 0;
    v15 = v7;
  }

  return v7;
}

@end