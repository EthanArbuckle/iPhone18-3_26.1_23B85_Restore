@interface SNMovieRemix
+ (id)analyzeFileAtURL:(id)a3 environment:(id)a4 error:(id *)a5;
+ (id)analyzeFileAtURL:(id)a3 error:(id *)a4;
+ (id)runRequest:(id)a3 error:(id *)a4;
+ (void)runRequest:(id)a3 completionHandler:(id)a4;
+ (void)runRequest:(id)a3 environment:(id)a4 completionHandler:(id)a5;
@end

@implementation SNMovieRemix

+ (void)runRequest:(id)a3 completionHandler:(id)a4
{
  v5 = _Block_copy(a4);
  swift_getObjCClassMetadata();
  v6 = a3;
  sub_1C98114D0(v6, v5);
  _Block_release(v5);
}

+ (void)runRequest:(id)a3 environment:(id)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  if (a4)
  {
    v8 = a3;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v9 = a3;
  }

  sub_1C981153C(a3, v10, v7);
  _Block_release(v7);

  sub_1C97DA1E0(v10, &unk_1EC3C5E60);
}

+ (id)runRequest:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = sub_1C98117B0(v4);

  return v5;
}

+ (id)analyzeFileAtURL:(id)a3 error:(id *)a4
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

+ (id)analyzeFileAtURL:(id)a3 environment:(id)a4 error:(id *)a5
{
  v6 = sub_1C9A91558();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C9A914F8();
  if (a4)
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