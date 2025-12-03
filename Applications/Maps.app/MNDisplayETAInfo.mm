@interface MNDisplayETAInfo
- (void)enumerateLegsWithBlock:(id)block;
@end

@implementation MNDisplayETAInfo

- (void)enumerateLegsWithBlock:(id)block
{
  blockCopy = block;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v10[3] = 0;
  legInfos = [(MNDisplayETAInfo *)self legInfos];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100A21EB0;
  v7[3] = &unk_101631FA8;
  v9 = v10;
  v6 = blockCopy;
  v8 = v6;
  [legInfos enumerateObjectsUsingBlock:v7];

  _Block_object_dispose(v10, 8);
}

@end