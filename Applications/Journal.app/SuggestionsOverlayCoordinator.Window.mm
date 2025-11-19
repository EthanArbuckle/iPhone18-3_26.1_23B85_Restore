@interface SuggestionsOverlayCoordinator.Window
- (_TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C96Window)initWithCoder:(id)a3;
- (_TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C96Window)initWithFrame:(CGRect)a3;
- (_TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C96Window)initWithWindowScene:(id)a3;
@end

@implementation SuggestionsOverlayCoordinator.Window

- (_TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C96Window)initWithWindowScene:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SuggestionsOverlayCoordinator.Window();
  return [(SuggestionsOverlayCoordinator.Window *)&v5 initWithWindowScene:a3];
}

- (_TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C96Window)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SuggestionsOverlayCoordinator.Window();
  return [(SuggestionsOverlayCoordinator.Window *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCO7Journal29SuggestionsOverlayCoordinatorP33_4E58A7342CE0199435B1A6F2814D83C96Window)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for SuggestionsOverlayCoordinator.Window();
  v4 = a3;
  v5 = [(SuggestionsOverlayCoordinator.Window *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end