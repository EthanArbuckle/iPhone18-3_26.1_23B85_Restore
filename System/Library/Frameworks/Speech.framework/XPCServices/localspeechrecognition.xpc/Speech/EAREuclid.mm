@interface EAREuclid
- (void)computeEmbeddings:(id)a3 reply:(id)a4;
- (void)distanceBetweenSource:(id)a3 target:(id)a4 reply:(id)a5;
- (void)findNearestNeighbors:(id)a3 numberOfNeighbors:(int64_t)a4 reply:(id)a5;
@end

@implementation EAREuclid

- (void)findNearestNeighbors:(id)a3 numberOfNeighbors:(int64_t)a4 reply:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_100046E5C();
  v10 = v9;
  _Block_copy(v7);
  v11 = self;
  sub_10001A7D4(v8, v10, a4, v11, v7);
  _Block_release(v7);
}

- (void)distanceBetweenSource:(id)a3 target:(id)a4 reply:(id)a5
{
  v6 = _Block_copy(a5);
  v7 = sub_100046E5C();
  v9 = v8;
  v10 = sub_100046E5C();
  v12 = v11;
  _Block_copy(v6);
  v13 = self;
  sub_10001AC9C(v7, v9, v10, v12, v13, v6);
  _Block_release(v6);
}

- (void)computeEmbeddings:(id)a3 reply:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_100046EFC();
  _Block_copy(v5);
  v7 = self;
  sub_10001B090(v6, v7, v5);
  _Block_release(v5);
}

@end