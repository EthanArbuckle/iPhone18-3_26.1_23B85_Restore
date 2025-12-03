@interface PlatformAppController
+ (id)appControllerWithDelegate:(id)delegate;
@end

@implementation PlatformAppController

+ (id)appControllerWithDelegate:(id)delegate
{
  v11[3] = type metadata accessor for AppTraits_iOS();
  v11[4] = &off_1004ED3B0;
  v11[0] = swift_allocObject();
  v4 = type metadata accessor for AppController();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_migrationPresentationCanceled] = 0;
  v6 = &v5[OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_onLibrarySelection];
  *v6 = 0;
  v6[1] = 0;
  *&v5[OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appDelegate] = delegate;
  sub_100004428(v11, &v5[OBJC_IVAR____TtC8PodcastsP33_9AAABDB1DF664191160F6CD588B99E9913AppController_appTraits]);
  v10.receiver = v5;
  v10.super_class = v4;
  delegateCopy = delegate;
  v8 = objc_msgSendSuper2(&v10, "init");
  sub_100004590(v11);

  return v8;
}

@end