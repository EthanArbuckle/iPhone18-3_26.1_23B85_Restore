@interface ActivityPickerServiceViewController
- (ActivityPickerServiceViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cleanupViewAndExtension;
- (void)configureWithIsEmbedded:(BOOL)a3 headerText:(id)a4 footerText:(id)a5 includeEntireCategory:(BOOL)a6 selectedApplications:(id)a7 selectedCategories:(id)a8 selectedWebDomains:(id)a9 selectedUntokenizedApplications:(id)a10 selectedUntokenizedCategories:(id)a11 selectedUntokenizedWebDomains:(id)a12;
@end

@implementation ActivityPickerServiceViewController

- (void)configureWithIsEmbedded:(BOOL)a3 headerText:(id)a4 footerText:(id)a5 includeEntireCategory:(BOOL)a6 selectedApplications:(id)a7 selectedCategories:(id)a8 selectedWebDomains:(id)a9 selectedUntokenizedApplications:(id)a10 selectedUntokenizedCategories:(id)a11 selectedUntokenizedWebDomains:(id)a12
{
  v23 = a3;
  v24 = a6;
  v12 = a5;
  if (a4)
  {
    v21 = sub_100033D34();
    v14 = v13;
    if (v12)
    {
LABEL_3:
      v12 = sub_100033D34();
      v16 = v15;
      goto LABEL_6;
    }
  }

  else
  {
    v21 = 0;
    v14 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v16 = 0;
LABEL_6:
  v17 = sub_100033DF4();
  v18 = sub_100033DF4();
  v19 = sub_100033DF4();
  sub_100033DF4();
  sub_100033DF4();
  sub_100033DF4();
  v20 = self;
  sub_100013F80(v23, v21, v14, v12, v16, v24, v17, v18, v19);
}

- (void)cleanupViewAndExtension
{
  v2 = self;
  sub_100017EF8();
}

- (ActivityPickerServiceViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end