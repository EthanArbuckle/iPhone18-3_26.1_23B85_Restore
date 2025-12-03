@interface AVTSectionItemLoadingTask
- (AVTSectionItemLoadingTask)initWithSectionItem:(id)item completionHandler:(id)handler;
@end

@implementation AVTSectionItemLoadingTask

- (AVTSectionItemLoadingTask)initWithSectionItem:(id)item completionHandler:(id)handler
{
  itemCopy = item;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = AVTSectionItemLoadingTask;
  v9 = [(AVTSectionItemLoadingTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sectionItem, item);
    v11 = [handlerCopy copy];
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;
  }

  return v10;
}

@end