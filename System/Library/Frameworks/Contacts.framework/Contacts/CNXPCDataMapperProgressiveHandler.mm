@interface CNXPCDataMapperProgressiveHandler
- (CNXPCDataMapperProgressiveHandler)initWithProgressBlock:(id)block completionBlock:(id)completionBlock;
@end

@implementation CNXPCDataMapperProgressiveHandler

- (CNXPCDataMapperProgressiveHandler)initWithProgressBlock:(id)block completionBlock:(id)completionBlock
{
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v15.receiver = self;
  v15.super_class = CNXPCDataMapperProgressiveHandler;
  v8 = [(CNXPCDataMapperProgressiveHandler *)&v15 init];
  if (v8)
  {
    v9 = [blockCopy copy];
    progressBlock = v8->_progressBlock;
    v8->_progressBlock = v9;

    v11 = [completionBlockCopy copy];
    completionBlock = v8->_completionBlock;
    v8->_completionBlock = v11;

    v13 = v8;
  }

  return v8;
}

@end