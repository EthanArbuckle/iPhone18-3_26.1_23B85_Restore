@interface SNMovieRemix
+ (id)analyzeFileAtURL:(id)l environment:(id)environment error:(id *)error;
+ (id)analyzeFileAtURL:(id)l error:(id *)error;
+ (id)runRequest:(id)request error:(id *)error;
+ (void)runRequest:(id)request completionHandler:(id)handler;
+ (void)runRequest:(id)request environment:(id)environment completionHandler:(id)handler;
@end

@implementation SNMovieRemix

+ (void)runRequest:(id)request completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  swift_getObjCClassMetadata();
  requestCopy = request;
  sub_1C98114D0(requestCopy, v5);
  _Block_release(v5);
}

+ (void)runRequest:(id)request environment:(id)environment completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  if (environment)
  {
    requestCopy = request;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    requestCopy2 = request;
  }

  sub_1C981153C(request, v10, v7);
  _Block_release(v7);

  sub_1C97DA1E0(v10, &unk_1EC3C5E60);
}

+ (id)runRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v5 = sub_1C98117B0(requestCopy);

  return v5;
}

+ (id)analyzeFileAtURL:(id)l error:(id *)error
{
  v4 = sub_1C9A91558();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9A914F8();
  v8 = sub_1C98118A8(v7);
  (*(v5 + 8))(v7, v4);

  return v8;
}

+ (id)analyzeFileAtURL:(id)l environment:(id)environment error:(id *)error
{
  v6 = sub_1C9A91558();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9A914F8();
  if (environment)
  {
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
    sub_1C97A2D34(&v13, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  v10 = sub_1C9811AD8(v9, v14);
  sub_1C97DA1E0(v14, &unk_1EC3C5E60);
  (*(v7 + 8))(v9, v6);

  return v10;
}

@end