@interface PlaceLibraryCollectionHandler
+ (void)isPlaceInLibrary:(id)a3 completion:(id)a4;
+ (void)removePlace:(id)a3 completion:(id)a4;
+ (void)savePlace:(id)a3 completion:(id)a4;
@end

@implementation PlaceLibraryCollectionHandler

+ (void)isPlaceInLibrary:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005C3C78;
  v7[3] = &unk_101661090;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, v7);
}

+ (void)removePlace:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005C3FA4;
  v7[3] = &unk_101661090;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, v7);
}

+ (void)savePlace:(id)a3 completion:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005C43F4;
  v7[3] = &unk_101661090;
  v8 = a3;
  v9 = a4;
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, v7);
}

@end