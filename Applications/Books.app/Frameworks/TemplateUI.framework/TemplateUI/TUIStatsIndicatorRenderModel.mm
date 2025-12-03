@interface TUIStatsIndicatorRenderModel
- (CGSize)size;
- (TUIStatsIndicatorRenderModel)initWithStats:(id)stats uid:(id)uid;
@end

@implementation TUIStatsIndicatorRenderModel

- (TUIStatsIndicatorRenderModel)initWithStats:(id)stats uid:(id)uid
{
  statsCopy = stats;
  uidCopy = uid;
  v14.receiver = self;
  v14.super_class = TUIStatsIndicatorRenderModel;
  v9 = [(TUIStatsIndicatorRenderModel *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stats, stats);
    v11 = [uidCopy copy];
    uid = v10->_uid;
    v10->_uid = v11;
  }

  return v10;
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end