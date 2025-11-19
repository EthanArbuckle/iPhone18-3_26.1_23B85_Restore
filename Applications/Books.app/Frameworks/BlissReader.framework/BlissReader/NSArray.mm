@interface NSArray
- (id)arrayPiecewiseTransformedBy:(id)a3;
@end

@implementation NSArray

- (id)arrayPiecewiseTransformedBy:(id)a3
{
  v5 = +[NSMutableArray array];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_6A710;
  v7[3] = &unk_45C088;
  v7[4] = v5;
  v7[5] = a3;
  [(NSArray *)self enumerateObjectsUsingBlock:v7];
  return v5;
}

@end