@interface CameraViewController
- (BOOL)shouldAutorotate;
- (_TtC16ContinuityCamera20CameraViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)didReceiveMemoryWarning;
- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info;
- (void)imagePickerControllerDidCancel:(id)cancel;
- (void)viewDidLoad;
@end

@implementation CameraViewController

- (BOOL)shouldAutorotate
{
  selfCopy = self;
  v3 = sub_1000071CC();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100007230();
}

- (void)didReceiveMemoryWarning
{
  selfCopy = self;
  sub_1000079B4(type metadata accessor for CameraViewController, &selRef_didReceiveMemoryWarning);
}

- (void)imagePickerController:(id)controller didFinishPickingMediaWithInfo:(id)info
{
  type metadata accessor for InfoKey(0);
  sub_100007F60();
  v6 = sub_100008904();
  controllerCopy = controller;
  selfCopy = self;
  sub_100007440(selfCopy, v6);
}

- (void)imagePickerControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_1000076DC();
}

- (_TtC16ContinuityCamera20CameraViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100008964();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1000077A0(v5, v7, bundle);
}

@end