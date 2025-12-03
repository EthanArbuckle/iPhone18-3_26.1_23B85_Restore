@interface AVTPresetResourcesLoadingTask
- (AVTPresetResourcesLoadingTask)initWithPresetResources:(id)resources completionHandler:(id)handler;
@end

@implementation AVTPresetResourcesLoadingTask

- (AVTPresetResourcesLoadingTask)initWithPresetResources:(id)resources completionHandler:(id)handler
{
  resourcesCopy = resources;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = AVTPresetResourcesLoadingTask;
  v9 = [(AVTPresetResourcesLoadingTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_presetResources, resources);
    v11 = [handlerCopy copy];
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;
  }

  return v10;
}

@end