@interface LabelDetailsPlatterWrapper
- (void)remakePlatters;
- (void)touchBackgroundFrom:(id)a3;
@end

@implementation LabelDetailsPlatterWrapper

- (void)remakePlatters
{
  v2 = self;
  sub_10009E49C();
}

- (void)touchBackgroundFrom:(id)a3
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
      v10 = a3;
      v11 = self;
      v12 = v3;
      v9(ObjectType, v7);

      swift_unknownObjectRelease();
    }
  }
}

@end