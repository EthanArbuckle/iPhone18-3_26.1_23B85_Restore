@interface SuggestionsOverlayCoordinator.Window
- (_TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C96Window)initWithCoder:(id)coder;
- (_TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C96Window)initWithFrame:(CGRect)frame;
- (_TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C96Window)initWithWindowScene:(id)scene;
@end

@implementation SuggestionsOverlayCoordinator.Window

- (_TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C96Window)initWithWindowScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SuggestionsOverlayCoordinator.Window();
  return [(SuggestionsOverlayCoordinator.Window *)&v5 initWithWindowScene:scene];
}

- (_TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C96Window)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SuggestionsOverlayCoordinator.Window();
  return [(SuggestionsOverlayCoordinator.Window *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C96Window)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SuggestionsOverlayCoordinator.Window();
  coderCopy = coder;
  v5 = [(SuggestionsOverlayCoordinator.Window *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end