@interface QLPreviewItemContainer
- (BOOL)isEqual:(id)a3;
- (NSURL)previewItemURL;
- (_TtC18_QuickLook_SwiftUI22QLPreviewItemContainer)init;
- (int64_t)hash;
- (void)dealloc;
@end

@implementation QLPreviewItemContainer

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = sub_23B8217EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(&self->super.isa + OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource) == 1)
  {
    (*(v5 + 16))(v8, self + OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_url, v4);
    v9 = self;
    sub_23B8217CC();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v10 = self;
  }

  v11.receiver = self;
  v11.super_class = ObjectType;
  [(QLPreviewItemContainer *)&v11 dealloc];
}

- (NSURL)previewItemURL
{
  v3 = sub_23B8217EC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource;
  if (*(&self->super.isa + OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_didStartAccessingSecurityScopeResource) == 1)
  {
    v9 = self;
  }

  else
  {
    v10 = self;
    *(&self->super.isa + v8) = sub_23B8217DC() & 1;
  }

  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC18_QuickLook_SwiftUI22QLPreviewItemContainer_url, v3);

  v11 = sub_23B8217BC();
  (*(v4 + 8))(v7, v3);

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_23B821A9C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_23B81E9E4(v8);

  sub_23B8206D8(v8, &qword_27E189400, &qword_23B822200);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = sub_23B81F020();

  return v3;
}

- (_TtC18_QuickLook_SwiftUI22QLPreviewItemContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end