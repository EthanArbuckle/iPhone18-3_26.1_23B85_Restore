@interface BAAppManager
+ (BAAppManager)sharedManager;
- (NSString)name;
- (NSString)sharedContainerIdentifier;
- (NSURL)url;
- (void)appSessionDidTerminate;
- (void)privacyAcknowledgementNotification:(id)a3;
- (void)startAppSessionWithApplicationGroupIdentifier:(id)a3 enableUploads:(BOOL)a4;
@end

@implementation BAAppManager

+ (BAAppManager)sharedManager
{
  if (qword_27D3E0 != -1)
  {
    swift_once();
  }

  v3 = qword_2876B8;

  return v3;
}

- (void)startAppSessionWithApplicationGroupIdentifier:(id)a3 enableUploads:(BOOL)a4
{
  v6 = sub_1E1780();
  v8 = v7;
  *(&self->super.isa + OBJC_IVAR___BAAppManager_enableUploads) = a4;
  v10 = self;
  sub_110B44(v6, v8);

  sub_110D58();
  sub_110E60();
  v9 = *(&v10->super.isa + OBJC_IVAR___BAAppManager_appSessionManager);
  sub_1E0B00();
}

- (void)appSessionDidTerminate
{
  v2 = *(&self->super.isa + OBJC_IVAR___BAAppManager_appSessionManager);
  v3 = self;
  sub_1E0AF0(1.0);
}

- (void)privacyAcknowledgementNotification:(id)a3
{
  v3 = sub_1E0860();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E0850();
  sub_113D90();
  (*(v4 + 8))(v7, v3);
}

- (NSURL)url
{
  v3 = sub_1E0930();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  AppManager.url.getter(v7);

  sub_1E0900(v9);
  v11 = v10;
  (*(v4 + 8))(v7, v3);

  return v11;
}

- (NSString)name
{
  v2 = self;
  sub_112F3C();

  v3 = sub_1E1770();

  return v3;
}

- (NSString)sharedContainerIdentifier
{
  v2 = (self + OBJC_IVAR___BAAppManager_applicationGroupIdentifier);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = sub_1E1770();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end