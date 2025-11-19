@interface MusicAngel.Client.ViewController
- (_TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_UIRemoteSheet)_remoteSheet;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation MusicAngel.Client.ViewController

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_216650150(a3);
}

- (_TtCCC17_MusicKit_SwiftUI10MusicAngel6Client14ViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_21666D44C();
  }

  v5 = a4;
  sub_216650798();
}

- (_UIRemoteSheet)_remoteSheet
{
  v2 = sub_216650934();

  return v2;
}

@end