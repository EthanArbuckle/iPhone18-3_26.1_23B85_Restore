@interface LSRAssets
- (void)getGeoLMRegionIDForLatitude:(double)a3 longitude:(double)a4 reply:(id)a5;
- (void)getModelPropertiesWithReply:(id)a3;
@end

@implementation LSRAssets

- (void)getModelPropertiesWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_100020F74(v5, v4);
  _Block_release(v4);
}

- (void)getGeoLMRegionIDForLatitude:(double)a3 longitude:(double)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = self;
  sub_100022108(a3, a4, v9, v8);
  _Block_release(v8);
}

@end