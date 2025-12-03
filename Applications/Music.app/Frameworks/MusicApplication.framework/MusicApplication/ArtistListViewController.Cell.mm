@interface ArtistListViewController.Cell
- (_TtCC16MusicApplication24ArtistListViewController4Cell)initWithCoder:(id)coder;
- (_TtCC16MusicApplication24ArtistListViewController4Cell)initWithFrame:(CGRect)frame;
@end

@implementation ArtistListViewController.Cell

- (_TtCC16MusicApplication24ArtistListViewController4Cell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ArtistListViewController.Cell();
  return [(ArtistListViewController.Cell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC16MusicApplication24ArtistListViewController4Cell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ArtistListViewController.Cell();
  coderCopy = coder;
  v5 = [(ArtistListViewController.Cell *)&v7 initWithCoder:coderCopy];

  return v5;
}

@end