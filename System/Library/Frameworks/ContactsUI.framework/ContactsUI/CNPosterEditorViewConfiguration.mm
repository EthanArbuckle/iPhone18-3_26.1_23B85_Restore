@interface CNPosterEditorViewConfiguration
- (_TtC10ContactsUI31CNPosterEditorViewConfiguration)init;
- (_TtC10ContactsUI31CNPosterEditorViewConfiguration)initWithImageData:(id)data displayName:(id)name;
- (_TtC10ContactsUI31CNPosterEditorViewConfiguration)initWithPosterArchiveData:(id)data displayName:(id)name;
- (_TtC10ContactsUI31CNPosterEditorViewConfiguration)initWithPosterArchiveData:(id)data imageData:(id)imageData displayName:(id)name;
- (_TtC10ContactsUI31CNPosterEditorViewConfiguration)initWithPosterConfiguration:(id)configuration displayName:(id)name;
@end

@implementation CNPosterEditorViewConfiguration

- (_TtC10ContactsUI31CNPosterEditorViewConfiguration)initWithImageData:(id)data displayName:(id)name
{
  dataCopy = data;
  nameCopy = name;
  v8 = sub_199DF71FC();
  v10 = v9;

  v11 = sub_199DF9F8C();
  v13 = v12;

  v14 = (self + OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData);
  *v14 = v8;
  v14[1] = v10;
  v15 = (self + OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName);
  *v15 = v11;
  v15[1] = v13;
  v16 = (&self->super.isa + OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  *(&self->super.isa + OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe) = 1;
  *(&self->super.isa + OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData) = xmmword_199E3FAD0;
  *(&self->super.isa + OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration) = 0;
  v18.receiver = self;
  v18.super_class = type metadata accessor for CNPosterEditorViewConfiguration();
  return [(CNPosterEditorViewConfiguration *)&v18 init];
}

- (_TtC10ContactsUI31CNPosterEditorViewConfiguration)initWithPosterArchiveData:(id)data displayName:(id)name
{
  dataCopy = data;
  nameCopy = name;
  v8 = sub_199DF71FC();
  v10 = v9;

  v11 = sub_199DF9F8C();
  v13 = v12;

  v14 = (self + OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData);
  *v14 = v8;
  v14[1] = v10;
  *(&self->super.isa + OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData) = xmmword_199E3FAD0;
  v15 = (self + OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName);
  *v15 = v11;
  v15[1] = v13;
  v16 = (&self->super.isa + OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  *(&self->super.isa + OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe) = 1;
  *(&self->super.isa + OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration) = 0;
  v18.receiver = self;
  v18.super_class = type metadata accessor for CNPosterEditorViewConfiguration();
  return [(CNPosterEditorViewConfiguration *)&v18 init];
}

- (_TtC10ContactsUI31CNPosterEditorViewConfiguration)initWithPosterArchiveData:(id)data imageData:(id)imageData displayName:(id)name
{
  dataCopy = data;
  imageDataCopy = imageData;
  nameCopy = name;
  v11 = sub_199DF71FC();
  v13 = v12;

  v14 = sub_199DF71FC();
  v16 = v15;

  v17 = sub_199DF9F8C();
  v19 = v18;

  v20 = (self + OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterArchiveData);
  *v20 = v11;
  v20[1] = v13;
  v21 = (self + OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_imageData);
  *v21 = v14;
  v21[1] = v16;
  v22 = (self + OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_displayName);
  *v22 = v17;
  v22[1] = v19;
  v23 = (&self->super.isa + OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_contactIdentifier);
  *v23 = 0;
  v23[1] = 0xE000000000000000;
  *(&self->super.isa + OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_isMe) = 1;
  *(&self->super.isa + OBJC_IVAR____TtC10ContactsUI31CNPosterEditorViewConfiguration_posterConfiguration) = 0;
  v25.receiver = self;
  v25.super_class = type metadata accessor for CNPosterEditorViewConfiguration();
  return [(CNPosterEditorViewConfiguration *)&v25 init];
}

- (_TtC10ContactsUI31CNPosterEditorViewConfiguration)initWithPosterConfiguration:(id)configuration displayName:(id)name
{
  v4 = sub_199DF9F8C();
  v6 = v5;
  v7 = swift_unknownObjectRetain();
  v8 = sub_199B40E5C(v7, v4, v6);
  swift_unknownObjectRelease();
  return v8;
}

- (_TtC10ContactsUI31CNPosterEditorViewConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end