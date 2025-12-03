@interface MTInstagramShareModel
- (MTInstagramShareModel)init;
- (MTInstagramShareModel)initWithShowName:(id)name episodeName:(id)episodeName creatorName:(id)creatorName publishDate:(id)date artwork:(id)artwork;
@end

@implementation MTInstagramShareModel

- (MTInstagramShareModel)initWithShowName:(id)name episodeName:(id)episodeName creatorName:(id)creatorName publishDate:(id)date artwork:(id)artwork
{
  ObjectType = swift_getObjectType();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (episodeName)
  {
    episodeName = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = (self + OBJC_IVAR___MTInstagramShareModel_showName);
  *v18 = v12;
  v18[1] = v14;
  v19 = (&self->super.isa + OBJC_IVAR___MTInstagramShareModel_episodeName);
  *v19 = episodeName;
  v19[1] = v16;
  v20 = (self + OBJC_IVAR___MTInstagramShareModel_creatorName);
  *v20 = v17;
  v20[1] = v21;
  *(&self->super.isa + OBJC_IVAR___MTInstagramShareModel_publishDate) = date;
  *(&self->super.isa + OBJC_IVAR___MTInstagramShareModel_artwork) = artwork;
  v25.receiver = self;
  v25.super_class = ObjectType;
  dateCopy = date;
  artworkCopy = artwork;
  return [(MTInstagramShareModel *)&v25 init];
}

- (MTInstagramShareModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end