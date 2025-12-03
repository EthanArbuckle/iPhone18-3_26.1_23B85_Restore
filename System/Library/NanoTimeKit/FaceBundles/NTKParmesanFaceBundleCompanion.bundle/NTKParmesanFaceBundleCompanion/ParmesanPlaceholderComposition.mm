@interface ParmesanPlaceholderComposition
- (BOOL)isEqual:(id)equal;
- (int64_t)hash;
@end

@implementation ParmesanPlaceholderComposition

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_23BF8D56C();

  return v3;
}

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

  sub_23BF4B33C(v11, v9, &qword_27E1E0530);
  if (!v10)
  {
    sub_23BF4B2D4(v9, &qword_27E1E0530);
    goto LABEL_8;
  }

  type metadata accessor for ParmesanPlaceholderComposition();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:

    v6 = 0;
    goto LABEL_9;
  }

  v6 = sub_23BF8DC34(self, v8);

LABEL_9:
  sub_23BF4B2D4(v11, &qword_27E1E0530);
  return v6 & 1;
}

@end