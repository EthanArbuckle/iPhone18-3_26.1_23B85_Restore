@interface CNPosterPreviewViewConfiguration
+ (id)configurationForExistingPosterConfiguration:(id)configuration displayName:(id)name;
+ (id)configurationForNewPosterWithPhotoAssetID:(id)d backgroundColor:(id)color displayName:(id)name isEditingSNaP:(BOOL)p;
+ (id)configurationForNewPosterWithPhotoAssetID:(id)d backgroundColor:(id)color displayName:(id)name isEditingSNaP:(BOOL)p monogramText:(id)text;
+ (id)configurationForPosterArchiveData:(id)data displayName:(id)name;
- (_TtC10ContactsUI32CNPosterPreviewViewConfiguration)init;
@end

@implementation CNPosterPreviewViewConfiguration

+ (id)configurationForNewPosterWithPhotoAssetID:(id)d backgroundColor:(id)color displayName:(id)name isEditingSNaP:(BOOL)p
{
  if (d)
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
  colorCopy = color;
  v15 = sub_199B7C1E4(v8, v10, color, v11, v13, p);

  return v15;
}

+ (id)configurationForNewPosterWithPhotoAssetID:(id)d backgroundColor:(id)color displayName:(id)name isEditingSNaP:(BOOL)p monogramText:(id)text
{
  if (d)
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
  if (text)
  {
    v16 = sub_199DF9F8C();
    text = v17;
  }

  else
  {
    v16 = 0;
  }

  colorCopy = color;
  v19 = sub_199B7C2D8(v10, v12, color, v13, v15, p, v16, text);

  return v19;
}

+ (id)configurationForExistingPosterConfiguration:(id)configuration displayName:(id)name
{
  v4 = sub_199DF9F8C();
  v6 = v5;
  v7 = swift_unknownObjectRetain();
  v8 = sub_199B7C3E4(v7, v4, v6);
  swift_unknownObjectRelease();

  return v8;
}

+ (id)configurationForPosterArchiveData:(id)data displayName:(id)name
{
  dataCopy = data;
  nameCopy = name;
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