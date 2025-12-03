@interface LSRAssets
- (void)getGeoLMRegionIDForLatitude:(double)latitude longitude:(double)longitude reply:(id)reply;
- (void)getModelPropertiesWithReply:(id)reply;
@end

@implementation LSRAssets

- (void)getModelPropertiesWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  _Block_copy(v4);
  selfCopy = self;
  sub_100020F74(selfCopy, v4);
  _Block_release(v4);
}

- (void)getGeoLMRegionIDForLatitude:(double)latitude longitude:(double)longitude reply:(id)reply
{
  v8 = _Block_copy(reply);
  _Block_copy(v8);
  selfCopy = self;
  sub_100022108(latitude, longitude, selfCopy, v8);
  _Block_release(v8);
}

@end