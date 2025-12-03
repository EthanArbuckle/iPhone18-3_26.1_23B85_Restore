@interface ComposeReviewViewController
- (_TtC23ShelfKitCollectionViews27ComposeReviewViewController)initWithCoder:(id)coder;
- (_TtC23ShelfKitCollectionViews27ComposeReviewViewController)initWithCompositionURL:(id)l;
- (_TtC23ShelfKitCollectionViews27ComposeReviewViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation ComposeReviewViewController

- (_TtC23ShelfKitCollectionViews27ComposeReviewViewController)initWithCompositionURL:(id)l
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_3FB8E0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  if (l)
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

- (_TtC23ShelfKitCollectionViews27ComposeReviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  ObjectType = swift_getObjectType();
  if (name)
  {
    sub_30C0D8();
    bundleCopy = bundle;
    name = sub_30C098();
  }

  else
  {
    bundleCopy2 = bundle;
  }

  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(ComposeReviewViewController *)&v12 initWithNibName:name bundle:bundle];

  return v10;
}

- (_TtC23ShelfKitCollectionViews27ComposeReviewViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(ComposeReviewViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end