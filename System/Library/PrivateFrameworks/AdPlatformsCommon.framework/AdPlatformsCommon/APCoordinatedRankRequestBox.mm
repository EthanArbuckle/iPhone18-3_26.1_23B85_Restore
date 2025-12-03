@interface APCoordinatedRankRequestBox
- (APCoordinatedRankRequestBox)initWithDelegate:(id)delegate contents:(id)contents placement:(unint64_t)placement handler:(id)handler;
@end

@implementation APCoordinatedRankRequestBox

- (APCoordinatedRankRequestBox)initWithDelegate:(id)delegate contents:(id)contents placement:(unint64_t)placement handler:(id)handler
{
  contentsCopy = contents;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = APCoordinatedRankRequestBox;
  v13 = [(APCoordinatedRetryBox *)&v18 initWithType:1 delegate:delegate];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_contentDatas, contents);
    v14->_placement = placement;
    v15 = _Block_copy(handlerCopy);
    completionHandler = v14->_completionHandler;
    v14->_completionHandler = v15;
  }

  return v14;
}

@end