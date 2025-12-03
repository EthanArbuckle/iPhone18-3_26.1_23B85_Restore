@interface PlaceLibraryCollectionHandler
+ (void)isPlaceInLibrary:(id)library completion:(id)completion;
+ (void)removePlace:(id)place completion:(id)completion;
+ (void)savePlace:(id)place completion:(id)completion;
@end

@implementation PlaceLibraryCollectionHandler

+ (void)isPlaceInLibrary:(id)library completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005C3C78;
  v7[3] = &unk_101661090;
  libraryCopy = library;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = libraryCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

+ (void)removePlace:(id)place completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005C3FA4;
  v7[3] = &unk_101661090;
  placeCopy = place;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = placeCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

+ (void)savePlace:(id)place completion:(id)completion
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1005C43F4;
  v7[3] = &unk_101661090;
  placeCopy = place;
  completionCopy = completion;
  v5 = completionCopy;
  v6 = placeCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

@end