@interface CanvasAttachmentProvider
- (NSArray)attachments;
- (_TtC8PaperKit24CanvasAttachmentProvider)init;
@end

@implementation CanvasAttachmentProvider

- (NSArray)attachments
{
  selfCopy = self;

  specialized _arrayForceCast<A, B>(_:)(v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18CHCanvasAttachment_pMd);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (_TtC8PaperKit24CanvasAttachmentProvider)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC8PaperKit24CanvasAttachmentProvider_paperkitAttachments) = MEMORY[0x1E69E7CC0];
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(CanvasAttachmentProvider *)&v5 init];
}

@end