@interface FolderSceneDelegate._DOCPortalView
- (NSString)description;
- (_TtCC21DockFolderViewService19FolderSceneDelegate14_DOCPortalView)initWithCoder:(id)a3;
- (_TtCC21DockFolderViewService19FolderSceneDelegate14_DOCPortalView)initWithFrame:(CGRect)a3;
- (_TtCC21DockFolderViewService19FolderSceneDelegate14_DOCPortalView)initWithSourceView:(id)a3;
@end

@implementation FolderSceneDelegate._DOCPortalView

- (NSString)description
{
  v2 = self;
  sub_100071CF4();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (_TtCC21DockFolderViewService19FolderSceneDelegate14_DOCPortalView)initWithSourceView:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for FolderSceneDelegate._DOCPortalView();
  return [(FolderSceneDelegate._DOCPortalView *)&v5 initWithSourceView:a3];
}

- (_TtCC21DockFolderViewService19FolderSceneDelegate14_DOCPortalView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for FolderSceneDelegate._DOCPortalView();
  return [(FolderSceneDelegate._DOCPortalView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC21DockFolderViewService19FolderSceneDelegate14_DOCPortalView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FolderSceneDelegate._DOCPortalView();
  v4 = a3;
  v5 = [(FolderSceneDelegate._DOCPortalView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end