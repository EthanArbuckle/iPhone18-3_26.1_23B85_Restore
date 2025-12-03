@interface BackgroundAssetConsentViewController
- (_TtC11AppStoreKit36BackgroundAssetConsentViewController)init;
- (_TtC11AppStoreKit36BackgroundAssetConsentViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC11AppStoreKit36BackgroundAssetConsentViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
@end

@implementation BackgroundAssetConsentViewController

- (_TtC11AppStoreKit36BackgroundAssetConsentViewController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BackgroundAssetConsentViewController();
  return [(SKBackgroundAssetConsentViewController *)&v3 init];
}

- (_TtC11AppStoreKit36BackgroundAssetConsentViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  v9 = sub_1E1AF5DFC();
  v11 = v10;
  if (!text)
  {
    v13 = 0;
    if (name)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_1E15B36AC(v9, v11, text, v13, v14, v16, layout);
  }

  text = sub_1E1AF5DFC();
  v13 = v12;
  if (!name)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_1E1AF5DFC();
  v16 = v15;
  return sub_1E15B36AC(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC11AppStoreKit36BackgroundAssetConsentViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  if (text)
  {
    sub_1E1AF5DFC();
    titleCopy = title;
    iconCopy = icon;
    v12 = sub_1E1AF5DBC();
  }

  else
  {
    titleCopy2 = title;
    iconCopy2 = icon;
    v12 = 0;
  }

  v17.receiver = self;
  v17.super_class = type metadata accessor for BackgroundAssetConsentViewController();
  v15 = [(BackgroundAssetConsentViewController *)&v17 initWithTitle:title detailText:v12 icon:icon contentLayout:layout];

  return v15;
}

@end