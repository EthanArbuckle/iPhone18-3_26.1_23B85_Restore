@interface CRLSEExtensionContextManager
+ (NSString)defaultImageFileName;
- (NSOperationQueue)presentedItemOperationQueue;
- (NSURL)presentedItemURL;
- (_TtC24FreeformSharingExtension28CRLSEExtensionContextManager)init;
- (void)setPresentedItemOperationQueue:(id)a3;
- (void)setPresentedItemURL:(id)a3;
@end

@implementation CRLSEExtensionContextManager

+ (NSString)defaultImageFileName
{
  v2 = [objc_opt_self() mainBundle];
  v3 = sub_10007E404();
  v4 = sub_10007E404();
  v5 = [v2 localizedStringForKey:v3 value:v4 table:0];

  sub_10007E444();
  v6 = sub_10007E404();

  return v6;
}

- (NSURL)presentedItemURL
{
  v3 = sub_10001FF68(&qword_1000B2980);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = OBJC_IVAR____TtC24FreeformSharingExtension28CRLSEExtensionContextManager_presentedItemURL;
  swift_beginAccess();
  sub_100023A78(self + v6, v5, &qword_1000B2980);
  v7 = sub_10007DD94();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    sub_10007DD04(v9);
    v12 = v11;
    (*(v8 + 8))(v5, v7);
    v10 = v12;
  }

  return v10;
}

- (void)setPresentedItemURL:(id)a3
{
  v5 = sub_10001FF68(&qword_1000B2980);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (a3)
  {
    sub_10007DD24();
    v8 = sub_10007DD94();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_10007DD94();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC24FreeformSharingExtension28CRLSEExtensionContextManager_presentedItemURL;
  swift_beginAccess();
  v11 = self;
  sub_100023A10(v7, self + v10, &qword_1000B2980);
  swift_endAccess();
}

- (NSOperationQueue)presentedItemOperationQueue
{
  v2 = self;
  v3 = sub_1000595C4();

  return v3;
}

- (void)setPresentedItemOperationQueue:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC24FreeformSharingExtension28CRLSEExtensionContextManager____lazy_storage___presentedItemOperationQueue);
  *(self + OBJC_IVAR____TtC24FreeformSharingExtension28CRLSEExtensionContextManager____lazy_storage___presentedItemOperationQueue) = a3;
  v3 = a3;
}

- (_TtC24FreeformSharingExtension28CRLSEExtensionContextManager)init
{
  v3 = OBJC_IVAR____TtC24FreeformSharingExtension28CRLSEExtensionContextManager_containerURL;
  v4 = sub_10007DD94();
  v5 = *(*(v4 - 8) + 56);
  v5(self + v3, 1, 1, v4);
  v5(self + OBJC_IVAR____TtC24FreeformSharingExtension28CRLSEExtensionContextManager_importDirectoryURL, 1, 1, v4);
  v5(self + OBJC_IVAR____TtC24FreeformSharingExtension28CRLSEExtensionContextManager_presentedItemURL, 1, 1, v4);
  *(self + OBJC_IVAR____TtC24FreeformSharingExtension28CRLSEExtensionContextManager____lazy_storage___presentedItemOperationQueue) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLSEExtensionContextManager();
  return [(CRLSEExtensionContextManager *)&v7 init];
}

@end