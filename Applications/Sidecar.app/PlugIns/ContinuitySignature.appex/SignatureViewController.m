@interface SignatureViewController
- (SignatureViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)receivedItems:(id)a3;
- (void)signatureViewSignatureUpdated:(id)a3;
- (void)viewDidLoad;
@end

@implementation SignatureViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1000015A4();
}

- (void)receivedItems:(id)a3
{
  sub_100003A24(0, &qword_10000C640, SidecarItem_ptr);
  v4 = sub_100003C2C();
  v5 = self;
  sub_1000021FC(v4);
}

- (SignatureViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_100003C0C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100002A34(v5, v7, a4);
}

- (void)signatureViewSignatureUpdated:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100002E44();
}

@end