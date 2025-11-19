@interface ICThumbnailKey
+ (NSString)recentObjectId;
- (BOOL)isEqual:(id)a3;
- (ICThumbnailKey)init;
- (ICThumbnailKey)initWithAccountId:(id)a3 objectId:(id)a4;
- (ICThumbnailKey)initWithAccountId:(id)a3 objectId:(id)a4 thumbnailId:(id)a5;
- (ICThumbnailKey)initWithType:(int64_t)a3 accountId:(id)a4 objectId:(id)a5 preferredSize:(CGSize)a6 scale:(double)a7 appearance:(unint64_t)a8;
- (ICThumbnailKey)initWithType:(int64_t)a3 accountId:(id)a4 objectId:(id)a5 preferredSize:(CGSize)a6 scale:(double)a7 appearance:(unint64_t)a8 isRTL:(BOOL)a9 contentSizeCategory:(id)a10 hasBoldText:(BOOL)a11 hasButtonShapes:(BOOL)a12 hasDarkerSystemColors:(BOOL)a13 hasBorder:(BOOL)a14;
- (ICThumbnailKey)initWithType:(int64_t)a3 accountId:(id)a4 objectId:(id)a5 preferredSize:(CGSize)a6 traitCollection:(id)a7;
- (NSString)description;
- (NSString)thumbnailId;
- (NSURL)containerUrl;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
@end

@implementation ICThumbnailKey

+ (NSString)recentObjectId
{
  v2 = sub_29C8F5B40();

  return v2;
}

- (NSString)thumbnailId
{
  v2 = *(self + OBJC_IVAR___ICThumbnailKey_thumbnailId);
  v3 = *(self + OBJC_IVAR___ICThumbnailKey_thumbnailId + 8);

  v4 = sub_29C8F5B40();

  return v4;
}

- (ICThumbnailKey)initWithAccountId:(id)a3 objectId:(id)a4 thumbnailId:(id)a5
{
  ObjectType = swift_getObjectType();
  if (!a3)
  {
    v10 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    goto LABEL_6;
  }

  a3 = sub_29C8F5B50();
  v10 = v9;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  a4 = sub_29C8F5B50();
  v12 = v11;
LABEL_6:
  v13 = sub_29C8F5B50();
  v14 = (self + OBJC_IVAR___ICThumbnailKey_accountId);
  *v14 = a3;
  v14[1] = v10;
  v15 = (self + OBJC_IVAR___ICThumbnailKey_objectId);
  *v15 = a4;
  v15[1] = v12;
  v16 = (self + OBJC_IVAR___ICThumbnailKey_thumbnailId);
  *v16 = v13;
  v16[1] = v17;
  v19.receiver = self;
  v19.super_class = ObjectType;
  return [(ICThumbnailKey *)&v19 init];
}

- (ICThumbnailKey)initWithAccountId:(id)a3 objectId:(id)a4
{
  if (!a3)
  {
    v5 = 0;
    v7 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    v10 = 0;
    return ThumbnailKey.init(accountId:objectId:)(v5, v7, v8, v10);
  }

  v5 = sub_29C8F5B50();
  v7 = v6;
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_29C8F5B50();
  v10 = v9;
  return ThumbnailKey.init(accountId:objectId:)(v5, v7, v8, v10);
}

- (ICThumbnailKey)initWithType:(int64_t)a3 accountId:(id)a4 objectId:(id)a5 preferredSize:(CGSize)a6 scale:(double)a7 appearance:(unint64_t)a8 isRTL:(BOOL)a9 contentSizeCategory:(id)a10 hasBoldText:(BOOL)a11 hasButtonShapes:(BOOL)a12 hasDarkerSystemColors:(BOOL)a13 hasBorder:(BOOL)a14
{
  height = a6.height;
  width = a6.width;
  v18 = a5;
  if (a4)
  {
    v20 = sub_29C8F5B50();
    v22 = v21;
    if (v18)
    {
LABEL_3:
      v18 = sub_29C8F5B50();
      v24 = v23;
      goto LABEL_6;
    }
  }

  else
  {
    v20 = 0;
    v22 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v24 = 0;
LABEL_6:
  if (a10)
  {
    v25 = sub_29C8F5B50();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  return sub_29C8F4574(a3, v20, v22, v18, v24, a8, v25, v27, width, height, a7, a11, a13, a14);
}

- (ICThumbnailKey)initWithType:(int64_t)a3 accountId:(id)a4 objectId:(id)a5 preferredSize:(CGSize)a6 scale:(double)a7 appearance:(unint64_t)a8
{
  height = a6.height;
  width = a6.width;
  if (!a4)
  {
    v14 = 0;
    v16 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0;
    v19 = 0;
    return ThumbnailKey.init(type:accountId:objectId:preferredSize:scale:appearance:)(a3, width, height, a7, v14, v16, v17, v19, a8);
  }

  v14 = sub_29C8F5B50();
  v16 = v15;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = sub_29C8F5B50();
  v19 = v18;
  return ThumbnailKey.init(type:accountId:objectId:preferredSize:scale:appearance:)(a3, width, height, a7, v14, v16, v17, v19, a8);
}

- (ICThumbnailKey)initWithType:(int64_t)a3 accountId:(id)a4 objectId:(id)a5 preferredSize:(CGSize)a6 traitCollection:(id)a7
{
  height = a6.height;
  width = a6.width;
  v10 = a5;
  if (!a4)
  {
    v12 = 0;
    v14 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = 0;
    return ThumbnailKey.init(type:accountId:objectId:preferredSize:traitCollection:)(a3, width, height, v12, v14, v10, v16, a7);
  }

  v12 = sub_29C8F5B50();
  v14 = v13;
  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_29C8F5B50();
  v16 = v15;
  return ThumbnailKey.init(type:accountId:objectId:preferredSize:traitCollection:)(a3, width, height, v12, v14, v10, v16, a7);
}

- (NSString)description
{
  v2 = self;
  ThumbnailKey.description.getter();

  v3 = sub_29C8F5B40();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_29C8F5B90();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = ThumbnailKey.isEqual(_:)(v8);

  sub_29C8F352C(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = ThumbnailKey.hash.getter();

  return v3;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  ThumbnailKey.copy(with:)(v6);

  sub_29C8F4DA4(v6, v6[3]);
  v4 = sub_29C8F5C00();
  sub_29C8F4DE8(v6);
  return v4;
}

- (NSURL)containerUrl
{
  v3 = sub_29C8F5B00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self;
  ThumbnailKey.containerUrl.getter(v7);

  v9 = sub_29C8F5AC0();
  (*(v4 + 8))(v7, v3);

  return v9;
}

- (ICThumbnailKey)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end