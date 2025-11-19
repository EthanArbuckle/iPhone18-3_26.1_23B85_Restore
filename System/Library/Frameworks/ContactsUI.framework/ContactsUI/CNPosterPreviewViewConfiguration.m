@interface CNPosterPreviewViewConfiguration
+ (id)configurationForExistingPosterConfiguration:(id)a3 displayName:(id)a4;
+ (id)configurationForNewPosterWithPhotoAssetID:(id)a3 backgroundColor:(id)a4 displayName:(id)a5 isEditingSNaP:(BOOL)a6;
+ (id)configurationForNewPosterWithPhotoAssetID:(id)a3 backgroundColor:(id)a4 displayName:(id)a5 isEditingSNaP:(BOOL)a6 monogramText:(id)a7;
+ (id)configurationForPosterArchiveData:(id)a3 displayName:(id)a4;
- (_TtC10ContactsUI32CNPosterPreviewViewConfiguration)init;
@end

@implementation CNPosterPreviewViewConfiguration

+ (id)configurationForNewPosterWithPhotoAssetID:(id)a3 backgroundColor:(id)a4 displayName:(id)a5 isEditingSNaP:(BOOL)a6
{
  if (a3)
  {
    v8 = sub_199DF9F8C();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = sub_199DF9F8C();
  v13 = v12;
  v14 = a4;
  v15 = sub_199B7C1E4(v8, v10, a4, v11, v13, a6);

  return v15;
}

+ (id)configurationForNewPosterWithPhotoAssetID:(id)a3 backgroundColor:(id)a4 displayName:(id)a5 isEditingSNaP:(BOOL)a6 monogramText:(id)a7
{
  if (a3)
  {
    v10 = sub_199DF9F8C();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = sub_199DF9F8C();
  v15 = v14;
  if (a7)
  {
    v16 = sub_199DF9F8C();
    a7 = v17;
  }

  else
  {
    v16 = 0;
  }

  v18 = a4;
  v19 = sub_199B7C2D8(v10, v12, a4, v13, v15, a6, v16, a7);

  return v19;
}

+ (id)configurationForExistingPosterConfiguration:(id)a3 displayName:(id)a4
{
  v4 = sub_199DF9F8C();
  v6 = v5;
  v7 = swift_unknownObjectRetain();
  v8 = sub_199B7C3E4(v7, v4, v6);
  swift_unknownObjectRelease();

  return v8;
}

+ (id)configurationForPosterArchiveData:(id)a3 displayName:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_199DF71FC();
  v9 = v8;

  v10 = sub_199DF9F8C();
  v12 = v11;

  v13 = sub_199B7C4EC(v7, v9, v10, v12);

  sub_199A9EF34(v7, v9);

  return v13;
}

- (_TtC10ContactsUI32CNPosterPreviewViewConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end