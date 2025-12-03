@interface ActivityPickerRemoteViewController
- (ActivityPickerRemoteViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didCancel;
- (void)didFinishSelection;
- (void)didSelectWithApplications:(id)applications categories:(id)categories webDomains:(id)domains untokenizedApplications:(id)untokenizedApplications untokenizedCategories:(id)untokenizedCategories untokenizedWebDomains:(id)webDomains;
@end

@implementation ActivityPickerRemoteViewController

- (ActivityPickerRemoteViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_23833E9E0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_238304680(v5, v7, bundle);
}

- (void)didSelectWithApplications:(id)applications categories:(id)categories webDomains:(id)domains untokenizedApplications:(id)untokenizedApplications untokenizedCategories:(id)untokenizedCategories untokenizedWebDomains:(id)webDomains
{
  v9 = sub_23833EAE0();
  v10 = sub_23833EAE0();
  v11 = sub_23833EAE0();
  v12 = sub_23833EAE0();
  v13 = sub_23833EAE0();
  v14 = sub_23833EAE0();
  v15 = *((*MEMORY[0x277D85000] & self->super.super.super.super.isa) + 0x68);
  selfCopy = self;
  v17 = v15();
  if (v17)
  {
    v18 = v17;
    v17(v9, v10, v11, v12, v13, v14);

    sub_238300FE0(v18);
  }

  else
  {
  }
}

- (void)didCancel
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.isa) + 0x98);
  selfCopy = self;
  v3 = v2();
  if (v3)
  {
    v4 = v3;
    v3();

    sub_238300FE0(v4);
  }

  else
  {
  }
}

- (void)didFinishSelection
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.isa) + 0x80);
  selfCopy = self;
  v3 = v2();
  if (v3)
  {
    v4 = v3;
    v3();

    sub_238300FE0(v4);
  }

  else
  {
  }
}

@end