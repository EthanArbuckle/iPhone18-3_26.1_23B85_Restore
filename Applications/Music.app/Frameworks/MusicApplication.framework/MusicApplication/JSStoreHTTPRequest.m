@interface JSStoreHTTPRequest
- (void)dealloc;
@end

@implementation JSStoreHTTPRequest

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC11MusicJSCore18JSStoreHTTPRequest_urlRequest);
  if (v4)
  {
    sub_13C80(0, &qword_E07CC0);
    v5 = self;
    v6 = v4;
    v7 = static ICURLSessionManager.musicSession.getter();
    [v7 cancelRequest:v6];
  }

  else
  {
    v8 = self;
  }

  v9.receiver = self;
  v9.super_class = ObjectType;
  [(JSObject *)&v9 dealloc];
}

@end