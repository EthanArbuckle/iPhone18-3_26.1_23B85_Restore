@interface LabelDetailsPlatterWrapper
- (void)remakePlatters;
- (void)touchBackgroundFrom:(id)from;
@end

@implementation LabelDetailsPlatterWrapper

- (void)remakePlatters
{
  selfCopy = self;
  sub_10009E49C();
}

- (void)touchBackgroundFrom:(id)from
{
  v3 = *(self + qword_1004A65D0);
  if (v3)
  {
    v6 = &v3[qword_1004A5B30];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v6 + 1);
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 24);
      fromCopy = from;
      selfCopy = self;
      v12 = v3;
      v9(ObjectType, v7);

      swift_unknownObjectRelease();
    }
  }
}

@end