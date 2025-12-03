@interface SignatureViewController
- (SignatureViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)receivedItems:(id)items;
- (void)signatureViewSignatureUpdated:(id)updated;
- (void)viewDidLoad;
@end

@implementation SignatureViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000015A4();
}

- (void)receivedItems:(id)items
{
  sub_100003A24(0, &qword_10000C640, SidecarItem_ptr);
  v4 = sub_100003C2C();
  selfCopy = self;
  sub_1000021FC(v4);
}

- (SignatureViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100003C0C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100002A34(v5, v7, bundle);
}

- (void)signatureViewSignatureUpdated:(id)updated
{
  updatedCopy = updated;
  selfCopy = self;
  sub_100002E44();
}

@end