@interface FolderSceneDelegate._DOCPortalView
- (NSString)description;
- (_TtCC21DockFolderViewService19FolderSceneDelegate14_DOCPortalView)initWithCoder:(id)coder;
- (_TtCC21DockFolderViewService19FolderSceneDelegate14_DOCPortalView)initWithFrame:(CGRect)frame;
- (_TtCC21DockFolderViewService19FolderSceneDelegate14_DOCPortalView)initWithSourceView:(id)view;
@end

@implementation FolderSceneDelegate._DOCPortalView

- (NSString)description
{
  selfCopy = self;
  sub_100071CF4();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtCC21DockFolderViewService19FolderSceneDelegate14_DOCPortalView)initWithSourceView:(id)view
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for FolderSceneDelegate._DOCPortalView();
  return [(FolderSceneDelegate._DOCPortalView *)&v5 initWithSourceView:view];
}

- (_TtCC21DockFolderViewService19FolderSceneDelegate14_DOCPortalView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FolderSceneDelegate._DOCPortalView();
  return [(FolderSceneDelegate._DOCPortalView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC21DockFolderViewService19FolderSceneDelegate14_DOCPortalView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FolderSceneDelegate._DOCPortalView();
  coderCopy = coder;
  v5 = [(FolderSceneDelegate._DOCPortalView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end