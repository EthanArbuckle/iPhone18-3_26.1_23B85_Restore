@interface AVTStickerSheetModel
+ (id)sheetModelForAvatarRecord:(id)record withConfigurations:(id)configurations cache:(id)cache taskScheduler:(id)scheduler renderingQueue:(id)queue encodingQueue:(id)encodingQueue stickerGeneratorPool:(id)pool imageProvider:(id)self0 environment:(id)self1;
- (AVTStickerSheetModel)initWithAvatarRecord:(id)record stickerItems:(id)items stickerRenderer:(id)renderer taskScheduler:(id)scheduler placeholderProviderFactory:(id)factory environment:(id)environment;
@end

@implementation AVTStickerSheetModel

+ (id)sheetModelForAvatarRecord:(id)record withConfigurations:(id)configurations cache:(id)cache taskScheduler:(id)scheduler renderingQueue:(id)queue encodingQueue:(id)encodingQueue stickerGeneratorPool:(id)pool imageProvider:(id)self0 environment:(id)self1
{
  v59 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  configurationsCopy = configurations;
  cacheCopy = cache;
  schedulerCopy = scheduler;
  queueCopy = queue;
  encodingQueueCopy = encodingQueue;
  poolCopy = pool;
  providerCopy = provider;
  environmentCopy = environment;
  v23 = recordCopy;
  v50 = schedulerCopy;
  v51 = cacheCopy;
  v48 = encodingQueueCopy;
  v49 = queueCopy;
  v46 = poolCopy;
  v53 = [[AVTUIStickerRenderer alloc] initWithAvatarRecord:recordCopy cache:cacheCopy renderingScheduler:schedulerCopy renderingQueue:queueCopy encodingQueue:encodingQueueCopy stickerGeneratorPool:poolCopy environment:environmentCopy];
  array = [MEMORY[0x1E695DF70] array];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = configurationsCopy;
  v25 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v55;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v55 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v29 = *(*(&v54 + 1) + 8 * i);
        v30 = [(AVTUIStickerRenderer *)v53 scheduledStickerResourceProviderForStickerConfiguration:v29];
        v31 = MEMORY[0x1E696AEC0];
        identifier = [v23 identifier];
        name = [v29 name];
        v34 = [v31 stringWithFormat:@"%@_%@", identifier, name];

        v35 = [AVTUIStickerItem alloc];
        localizedName = [v29 localizedName];
        v37 = [(AVTUIStickerItem *)v35 initWithIdentifier:v34 localizedName:localizedName resourceProvider:v30];

        [array addObject:v37];
      }

      v26 = [obj countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v26);
  }

  v38 = +[AVTRenderingScope gridThumbnailScope];
  v39 = [providerCopy providerForRecord:v23 scope:v38];
  v40 = [v39 copy];

  v41 = [[AVTUIStickerPlaceholderProviderFactory alloc] initWithImageProvider:v40];
  v42 = [[self alloc] initWithAvatarRecord:v23 stickerItems:array stickerRenderer:v53 taskScheduler:v50 placeholderProviderFactory:v41 environment:environmentCopy];

  return v42;
}

- (AVTStickerSheetModel)initWithAvatarRecord:(id)record stickerItems:(id)items stickerRenderer:(id)renderer taskScheduler:(id)scheduler placeholderProviderFactory:(id)factory environment:(id)environment
{
  recordCopy = record;
  itemsCopy = items;
  rendererCopy = renderer;
  schedulerCopy = scheduler;
  factoryCopy = factory;
  environmentCopy = environment;
  v24.receiver = self;
  v24.super_class = AVTStickerSheetModel;
  v18 = [(AVTStickerSheetModel *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_avatarRecord, record);
    objc_storeStrong(&v19->_stickerItems, items);
    objc_storeStrong(&v19->_stickerRenderer, renderer);
    objc_storeStrong(&v19->_placeholderProviderFactory, factory);
    objc_storeStrong(&v19->_environment, environment);
    objc_storeStrong(&v19->_taskScheduler, scheduler);
  }

  return v19;
}

@end