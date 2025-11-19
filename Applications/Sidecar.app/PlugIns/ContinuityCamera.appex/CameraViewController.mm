@interface CameraViewController
- (BOOL)shouldAutorotate;
- (_TtC16ContinuityCamera20CameraViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didReceiveMemoryWarning;
- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4;
- (void)imagePickerControllerDidCancel:(id)a3;
- (void)viewDidLoad;
@end

@implementation CameraViewController

- (BOOL)shouldAutorotate
{
  v2 = self;
  v3 = sub_1000071CC();

  return v3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100007230();
}

- (void)didReceiveMemoryWarning
{
  v2 = self;
  sub_1000079B4(type metadata accessor for CameraViewController, &selRef_didReceiveMemoryWarning);
}

- (void)imagePickerController:(id)a3 didFinishPickingMediaWithInfo:(id)a4
{
  type metadata accessor for InfoKey(0);
  sub_100007F60();
  v6 = sub_100008904();
  v7 = a3;
  v8 = self;
  sub_100007440(v8, v6);
}

- (void)imagePickerControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000076DC();
}

- (_TtC16ContinuityCamera20CameraViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_100008964();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1000077A0(v5, v7, a4);
}

@end