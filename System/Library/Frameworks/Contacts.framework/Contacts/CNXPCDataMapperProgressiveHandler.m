@interface CNXPCDataMapperProgressiveHandler
- (CNXPCDataMapperProgressiveHandler)initWithProgressBlock:(id)a3 completionBlock:(id)a4;
@end

@implementation CNXPCDataMapperProgressiveHandler

- (CNXPCDataMapperProgressiveHandler)initWithProgressBlock:(id)a3 completionBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CNXPCDataMapperProgressiveHandler;
  v8 = [(CNXPCDataMapperProgressiveHandler *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    progressBlock = v8->_progressBlock;
    v8->_progressBlock = v9;

    v11 = [v7 copy];
    completionBlock = v8->_completionBlock;
    v8->_completionBlock = v11;

    v13 = v8;
  }

  return v8;
}

@end