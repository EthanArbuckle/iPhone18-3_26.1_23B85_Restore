@interface TUIStatsIndicatorRenderModel
- (CGSize)size;
- (TUIStatsIndicatorRenderModel)initWithStats:(id)a3 uid:(id)a4;
@end

@implementation TUIStatsIndicatorRenderModel

- (TUIStatsIndicatorRenderModel)initWithStats:(id)a3 uid:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = TUIStatsIndicatorRenderModel;
  v9 = [(TUIStatsIndicatorRenderModel *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_stats, a3);
    v11 = [v8 copy];
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