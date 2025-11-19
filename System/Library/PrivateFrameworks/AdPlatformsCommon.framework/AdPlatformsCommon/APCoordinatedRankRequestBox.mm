@interface APCoordinatedRankRequestBox
- (APCoordinatedRankRequestBox)initWithDelegate:(id)a3 contents:(id)a4 placement:(unint64_t)a5 handler:(id)a6;
@end

@implementation APCoordinatedRankRequestBox

- (APCoordinatedRankRequestBox)initWithDelegate:(id)a3 contents:(id)a4 placement:(unint64_t)a5 handler:(id)a6
{
  v11 = a4;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = APCoordinatedRankRequestBox;
  v13 = [(APCoordinatedRetryBox *)&v18 initWithType:1 delegate:a3];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_contentDatas, a4);
    v14->_placement = a5;
    v15 = _Block_copy(v12);
    completionHandler = v14->_completionHandler;
    v14->_completionHandler = v15;
  }

  return v14;
}

@end