@interface ActivityPickerServiceViewController
- (ActivityPickerServiceViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cleanupViewAndExtension;
- (void)configureWithIsEmbedded:(BOOL)embedded headerText:(id)text footerText:(id)footerText includeEntireCategory:(BOOL)category selectedApplications:(id)applications selectedCategories:(id)categories selectedWebDomains:(id)domains selectedUntokenizedApplications:(id)self0 selectedUntokenizedCategories:(id)self1 selectedUntokenizedWebDomains:(id)self2;
@end

@implementation ActivityPickerServiceViewController

- (void)configureWithIsEmbedded:(BOOL)embedded headerText:(id)text footerText:(id)footerText includeEntireCategory:(BOOL)category selectedApplications:(id)applications selectedCategories:(id)categories selectedWebDomains:(id)domains selectedUntokenizedApplications:(id)self0 selectedUntokenizedCategories:(id)self1 selectedUntokenizedWebDomains:(id)self2
{
  embeddedCopy = embedded;
  categoryCopy = category;
  footerTextCopy = footerText;
  if (text)
  {
    v21 = sub_100033D34();
    v14 = v13;
    if (footerTextCopy)
    {
LABEL_3:
      footerTextCopy = sub_100033D34();
      v16 = v15;
      goto LABEL_6;
    }
  }

  else
  {
    v21 = 0;
    v14 = 0;
    if (footerText)
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
  selfCopy = self;
  sub_100013F80(embeddedCopy, v21, v14, footerTextCopy, v16, categoryCopy, v17, v18, v19);
}

- (void)cleanupViewAndExtension
{
  selfCopy = self;
  sub_100017EF8();
}

- (ActivityPickerServiceViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end