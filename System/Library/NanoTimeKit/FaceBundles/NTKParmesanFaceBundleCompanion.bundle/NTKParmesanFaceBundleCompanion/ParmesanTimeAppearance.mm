@interface ParmesanTimeAppearance
- (BOOL)isEqual:(id)equal;
- (_TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance)init;
- (int64_t)hash;
@end

@implementation ParmesanTimeAppearance

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_23BFFA960();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    selfCopy2 = self;
  }

  sub_23BF6D608(v11, v9);
  if (!v10)
  {
    sub_23BF6D5A0(v9);
    goto LABEL_8;
  }

  type metadata accessor for ParmesanTimeAppearance();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v6 = sub_23BF89524(self, v8);

LABEL_9:
  sub_23BF6D5A0(v11);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_23BF8931C();

  return v3;
}

- (_TtC30NTKParmesanFaceBundleCompanion22ParmesanTimeAppearance)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end