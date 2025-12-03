@interface DSCloudObject
- (BOOL)isEqual:(id)equal;
- (NSArray)participants;
- (NSString)displayDetail;
- (NSString)displayName;
- (_TtC13DSNotesPlugin13DSCloudObject)init;
- (uint64_t)participationAccess;
@end

@implementation DSCloudObject

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1143C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_E8C4(v8);

  sub_C450(v8, &qword_1D760, &qword_12BB8);
  return v6 & 1;
}

- (NSString)displayName
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject);
  selfCopy = self;
  shareTitle = [v2 shareTitle];
  if (shareTitle)
  {
    v5 = shareTitle;
    sub_112BC();

    v6 = sub_1128C();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (NSString)displayDetail
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject);
  objc_opt_self();
  if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    v3 = sub_1128C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSArray)participants
{
  selfCopy = self;
  sub_D3AC();

  sub_BF58(&unk_1D748, &qword_12BB0);
  v3.super.isa = sub_1131C().super.isa;

  return v3.super.isa;
}

- (uint64_t)participationAccess
{
  if ([*(self + OBJC_IVAR____TtC13DSNotesPlugin13DSCloudObject_cloudSyncingObject) isPubliclyShared])
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (_TtC13DSNotesPlugin13DSCloudObject)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end