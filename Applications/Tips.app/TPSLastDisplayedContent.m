@interface TPSLastDisplayedContent
- (BOOL)hasContent;
- (NSString)collectionId;
- (NSString)description;
- (NSString)tipId;
- (TPSLastDisplayedContent)init;
- (TPSLastDisplayedContent)initWithCollectionId:(id)a3 tipId:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPSLastDisplayedContent

- (NSString)tipId
{
  v3 = OBJC_IVAR___TPSLastDisplayedContent_tipId;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (NSString)collectionId
{
  v3 = OBJC_IVAR___TPSLastDisplayedContent_collectionId;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (TPSLastDisplayedContent)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___TPSLastDisplayedContent_tipId) = 0;
  *(&self->super.isa + OBJC_IVAR___TPSLastDisplayedContent_collectionId) = 0;
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(TPSLastDisplayedContent *)&v5 init];
}

- (TPSLastDisplayedContent)initWithCollectionId:(id)a3 tipId:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR___TPSLastDisplayedContent_tipId;
  *(&self->super.isa + OBJC_IVAR___TPSLastDisplayedContent_tipId) = 0;
  v9 = OBJC_IVAR___TPSLastDisplayedContent_collectionId;
  *(&self->super.isa + OBJC_IVAR___TPSLastDisplayedContent_collectionId) = 0;
  swift_beginAccess();
  *(&self->super.isa + v9) = a3;
  swift_beginAccess();
  *(&self->super.isa + v8) = a4;
  v13.receiver = self;
  v13.super_class = ObjectType;
  v10 = a3;
  v11 = a4;
  return [(TPSLastDisplayedContent *)&v13 init];
}

- (BOOL)hasContent
{
  v2 = self;
  v3 = TPSLastDisplayedContent.hasContent()();

  return v3;
}

- (NSString)description
{
  v2 = self;
  TPSLastDisplayedContent.description.getter();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  TPSLastDisplayedContent.encode(with:)(v4);
}

@end