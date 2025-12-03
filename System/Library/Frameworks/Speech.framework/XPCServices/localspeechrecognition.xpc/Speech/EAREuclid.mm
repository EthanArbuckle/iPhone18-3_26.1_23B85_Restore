@interface EAREuclid
- (void)computeEmbeddings:(id)embeddings reply:(id)reply;
- (void)distanceBetweenSource:(id)source target:(id)target reply:(id)reply;
- (void)findNearestNeighbors:(id)neighbors numberOfNeighbors:(int64_t)ofNeighbors reply:(id)reply;
@end

@implementation EAREuclid

- (void)findNearestNeighbors:(id)neighbors numberOfNeighbors:(int64_t)ofNeighbors reply:(id)reply
{
  v7 = _Block_copy(reply);
  v8 = sub_100046E5C();
  v10 = v9;
  _Block_copy(v7);
  selfCopy = self;
  sub_10001A7D4(v8, v10, ofNeighbors, selfCopy, v7);
  _Block_release(v7);
}

- (void)distanceBetweenSource:(id)source target:(id)target reply:(id)reply
{
  v6 = _Block_copy(reply);
  v7 = sub_100046E5C();
  v9 = v8;
  v10 = sub_100046E5C();
  v12 = v11;
  _Block_copy(v6);
  selfCopy = self;
  sub_10001AC9C(v7, v9, v10, v12, selfCopy, v6);
  _Block_release(v6);
}

- (void)computeEmbeddings:(id)embeddings reply:(id)reply
{
  v5 = _Block_copy(reply);
  v6 = sub_100046EFC();
  _Block_copy(v5);
  selfCopy = self;
  sub_10001B090(v6, selfCopy, v5);
  _Block_release(v5);
}

@end