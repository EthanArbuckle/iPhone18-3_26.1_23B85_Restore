@interface NSArray
- (void)enumerateAdamIDsUsingBlock:(id)a3;
@end

@implementation NSArray

- (void)enumerateAdamIDsUsingBlock:(id)a3
{
  v4 = a3;
  if (v4)
  {
    +[BLJaliscoReadOnlyDAAPClient sharedClient];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_5A34;
    v7 = v6[3] = &unk_209C0;
    v8 = v4;
    v5 = v7;
    [(NSArray *)self enumerateObjectsUsingBlock:v6];
  }
}

@end