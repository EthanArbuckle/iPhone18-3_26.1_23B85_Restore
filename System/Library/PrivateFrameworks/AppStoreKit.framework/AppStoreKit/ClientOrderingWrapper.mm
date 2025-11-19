@interface ClientOrderingWrapper
- (_TtC11AppStoreKit21ClientOrderingWrapper)init;
- (void)orderedVisibleIAPs:(id)a3 :(id)a4 :(id)a5 :(id)a6 :(id)a7;
- (void)visibilityForIAPs:(id)a3 :(id)a4;
@end

@implementation ClientOrderingWrapper

- (void)visibilityForIAPs:(id)a3 :(id)a4
{
  v6 = sub_1E1AF5C7C();
  v7 = a4;
  v8 = self;
  sub_1E19DED50(v6, v7);
}

- (void)orderedVisibleIAPs:(id)a3 :(id)a4 :(id)a5 :(id)a6 :(id)a7
{
  v10 = a4;
  if (a3)
  {
    v12 = sub_1E1AF5DFC();
    v14 = v13;
    if (!v10)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  v14 = 0;
  if (a4)
  {
LABEL_3:
    v10 = sub_1E1AF621C();
  }

LABEL_4:
  if (a5)
  {
    a5 = sub_1E1AF621C();
  }

  v15 = a6;
  v16 = a7;
  v17 = self;
  if (v15)
  {
    v18 = sub_1E1AF5DFC();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  sub_1E19DF0FC(v12, v14, v10, a5, v18, v20, v16);
}

- (_TtC11AppStoreKit21ClientOrderingWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end