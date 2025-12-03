@interface RecentlyAddedViewController.NoContentPlaceholderView
- (_TtCC16MusicApplication27RecentlyAddedViewControllerP33_2A9A484349E6DF1FE120218B9769CC4924NoContentPlaceholderView)initWithCoder:(id)coder;
- (_TtCC16MusicApplication27RecentlyAddedViewControllerP33_2A9A484349E6DF1FE120218B9769CC4924NoContentPlaceholderView)initWithFrame:(CGRect)frame;
@end

@implementation RecentlyAddedViewController.NoContentPlaceholderView

- (_TtCC16MusicApplication27RecentlyAddedViewControllerP33_2A9A484349E6DF1FE120218B9769CC4924NoContentPlaceholderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for RecentlyAddedViewController.NoContentPlaceholderView();
  return [(RecentlyAddedViewController.NoContentPlaceholderView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC16MusicApplication27RecentlyAddedViewControllerP33_2A9A484349E6DF1FE120218B9769CC4924NoContentPlaceholderView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for RecentlyAddedViewController.NoContentPlaceholderView();
  coderCopy = coder;
  v5 = [(RecentlyAddedViewController.NoContentPlaceholderView *)&v7 initWithCoder:coderCopy];

  return v5;
}

@end