@interface HSPCHomeKitHomeProvider
- (id)loadData;
@end

@implementation HSPCHomeKitHomeProvider

- (id)loadData
{
  objc_initWeak(&location, self);
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  allHomesFuture = [v2 allHomesFuture];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005CA54;
  v6[3] = &unk_1000C7CC0;
  objc_copyWeak(&v7, &location);
  v4 = [allHomesFuture addSuccessBlock:v6];
  objc_destroyWeak(&v7);

  objc_destroyWeak(&location);

  return v4;
}

@end