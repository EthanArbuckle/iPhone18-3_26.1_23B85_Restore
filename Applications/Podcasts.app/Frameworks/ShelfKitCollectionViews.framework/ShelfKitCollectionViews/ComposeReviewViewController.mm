@interface ComposeReviewViewController
- (_TtC23ShelfKitCollectionViews27ComposeReviewViewController)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews27ComposeReviewViewController)initWithCompositionURL:(id)a3;
- (_TtC23ShelfKitCollectionViews27ComposeReviewViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation ComposeReviewViewController

- (_TtC23ShelfKitCollectionViews27ComposeReviewViewController)initWithCompositionURL:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  if (a3)
  {
    sub_301C38();
    v7 = sub_301CB8();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = sub_301CB8();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  return sub_2296F4(v6);
}

- (_TtC23ShelfKitCollectionViews27ComposeReviewViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_30C0D8();
    v8 = a4;
    a3 = sub_30C098();
  }

  else
  {
    v9 = a4;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(ComposeReviewViewController *)&v12 initWithNibName:a3 bundle:a4];

  return v10;
}

- (_TtC23ShelfKitCollectionViews27ComposeReviewViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(ComposeReviewViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end