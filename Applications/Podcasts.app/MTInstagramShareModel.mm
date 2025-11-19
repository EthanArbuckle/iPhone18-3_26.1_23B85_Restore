@interface MTInstagramShareModel
- (MTInstagramShareModel)init;
- (MTInstagramShareModel)initWithShowName:(id)a3 episodeName:(id)a4 creatorName:(id)a5 publishDate:(id)a6 artwork:(id)a7;
@end

@implementation MTInstagramShareModel

- (MTInstagramShareModel)initWithShowName:(id)a3 episodeName:(id)a4 creatorName:(id)a5 publishDate:(id)a6 artwork:(id)a7
{
  ObjectType = swift_getObjectType();
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
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
  *v19 = a4;
  v19[1] = v16;
  v20 = (self + OBJC_IVAR___MTInstagramShareModel_creatorName);
  *v20 = v17;
  v20[1] = v21;
  *(&self->super.isa + OBJC_IVAR___MTInstagramShareModel_publishDate) = a6;
  *(&self->super.isa + OBJC_IVAR___MTInstagramShareModel_artwork) = a7;
  v25.receiver = self;
  v25.super_class = ObjectType;
  v22 = a6;
  v23 = a7;
  return [(MTInstagramShareModel *)&v25 init];
}

- (MTInstagramShareModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end