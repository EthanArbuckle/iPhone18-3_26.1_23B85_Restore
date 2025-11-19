@interface LinkListCell
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation LinkListCell

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(LinkListCell *)&v6 traitCollectionDidChange:v4];
  sub_12B748();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_402EA8);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  v7 = sub_304618();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3045F8();
  if (*(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews12LinkListCell_itemKind) != 75)
  {
    v11 = self;
    v12 = sub_3070F8();
    v14 = v13;
    if (v12 == sub_3070F8() && v14 == v15)
    {
    }

    else
    {
      v17 = sub_30D728();

      if ((v17 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    sub_12CA60(v11, v10, v6);
    sub_30CA88();
LABEL_10:
  }

  (*(v8 + 8))(v10, v7);
}

@end