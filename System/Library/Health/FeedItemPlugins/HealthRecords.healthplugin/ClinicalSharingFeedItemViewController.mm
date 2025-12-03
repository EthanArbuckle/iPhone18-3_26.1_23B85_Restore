@interface ClinicalSharingFeedItemViewController
- (_TtC13HealthRecords37ClinicalSharingFeedItemViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)sharingRecipientAuthorizationStore:(void *)store didRemoveSharingAuthorizations:;
- (void)viewDidLoad;
@end

@implementation ClinicalSharingFeedItemViewController

- (void)sharingRecipientAuthorizationStore:(void *)store didRemoveSharingAuthorizations:
{
  storeCopy = store;
  sub_29D55B334();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_29D55858C();
}

- (_TtC13HealthRecords37ClinicalSharingFeedItemViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_29D55C378(v5, v7, bundle);
}

@end