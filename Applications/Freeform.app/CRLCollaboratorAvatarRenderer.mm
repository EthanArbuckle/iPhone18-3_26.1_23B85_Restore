@interface CRLCollaboratorAvatarRenderer
- (CGSize)size;
- (_TtC8Freeform29CRLCollaboratorAvatarRenderer)init;
- (_TtC8Freeform29CRLCollaboratorAvatarRenderer)initWithContact:(id)contact size:(CGSize)size;
- (id)renderAvatarImageWithContentsScale:(double)scale;
- (id)renderPlaceholderAvatarImageWithContentsScale:(double)scale;
@end

@implementation CRLCollaboratorAvatarRenderer

- (CGSize)size
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8Freeform29CRLCollaboratorAvatarRenderer_size);
  v3 = *(&self->contact + OBJC_IVAR____TtC8Freeform29CRLCollaboratorAvatarRenderer_size);
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC8Freeform29CRLCollaboratorAvatarRenderer)initWithContact:(id)contact size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8 = OBJC_IVAR____TtC8Freeform29CRLCollaboratorAvatarRenderer_cachedAvatarImages;
  *(&self->super.isa + v8) = sub_100BD88EC(_swiftEmptyArrayStorage);
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform29CRLCollaboratorAvatarRenderer_contact) = contact;
  v9 = (self + OBJC_IVAR____TtC8Freeform29CRLCollaboratorAvatarRenderer_size);
  *v9 = width;
  v9[1] = height;
  v12.receiver = self;
  v12.super_class = type metadata accessor for CRLCollaboratorAvatarRenderer();
  contactCopy = contact;
  return [(CRLCollaboratorAvatarRenderer *)&v12 init];
}

- (id)renderAvatarImageWithContentsScale:(double)scale
{
  selfCopy = self;
  v5 = sub_100B71E54(scale);

  return v5;
}

- (id)renderPlaceholderAvatarImageWithContentsScale:(double)scale
{
  selfCopy = self;
  v5 = sub_100B7213C(scale);

  return v5;
}

- (_TtC8Freeform29CRLCollaboratorAvatarRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end