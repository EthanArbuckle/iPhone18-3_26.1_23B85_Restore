@interface ClinicalSharingFeedItemViewController
- (_TtC13HealthRecords37ClinicalSharingFeedItemViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)sharingRecipientAuthorizationStore:(void *)a1 didRemoveSharingAuthorizations:;
- (void)viewDidLoad;
@end

@implementation ClinicalSharingFeedItemViewController

- (void)sharingRecipientAuthorizationStore:(void *)a1 didRemoveSharingAuthorizations:
{
  v1 = a1;
  sub_29D55B334();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_29D55858C();
}

- (_TtC13HealthRecords37ClinicalSharingFeedItemViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_29D5B3E5C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_29D55C378(v5, v7, a4);
}

@end