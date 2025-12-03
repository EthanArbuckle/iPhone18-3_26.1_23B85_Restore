@interface PreviewViewController
- (_TtC18QuickLookExtension21PreviewViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)loadView;
- (void)preparePreviewOfFileAtURL:(id)l completionHandler:(id)handler;
@end

@implementation PreviewViewController

- (void)loadView
{
  selfCopy = self;
  sub_100001ACC();
}

- (void)preparePreviewOfFileAtURL:(id)l completionHandler:(id)handler
{
  v6 = sub_100004F10();
  v7 = sub_100004DDC(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v7);
  sub_100004E00();
  v14 = v13 - v12;
  v15 = _Block_copy(handler);
  sub_100004F00();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  selfCopy = self;
  sub_100001CC4(v14, sub_100003730, v16);

  (*(v9 + 8))(v14, v6);
}

- (_TtC18QuickLookExtension21PreviewViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100005170();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10000207C(v5, v7, bundle);
}

@end