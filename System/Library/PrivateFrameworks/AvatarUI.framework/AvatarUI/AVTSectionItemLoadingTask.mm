@interface AVTSectionItemLoadingTask
- (AVTSectionItemLoadingTask)initWithSectionItem:(id)a3 completionHandler:(id)a4;
@end

@implementation AVTSectionItemLoadingTask

- (AVTSectionItemLoadingTask)initWithSectionItem:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = AVTSectionItemLoadingTask;
  v9 = [(AVTSectionItemLoadingTask *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sectionItem, a3);
    v11 = [v8 copy];
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;
  }

  return v10;
}

@end