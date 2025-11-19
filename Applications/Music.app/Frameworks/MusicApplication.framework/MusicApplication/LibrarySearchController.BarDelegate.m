@interface LibrarySearchController.BarDelegate
- (_TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate)init;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarCancelButtonClicked:(id)a3;
@end

@implementation LibrarySearchController.BarDelegate

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v6 = sub_AB92A0();
  v7 = (self + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  *v7 = v6;
  v7[1] = v8;
  v11 = a4;
  v9 = self;

  v10 = *(&v9->super.isa + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_textDidChange);
  if (v10)
  {

    sub_307CC(v10);
    v10(v9);
    sub_17654(v10);
  }

  else
  {
  }
}

- (void)searchBarCancelButtonClicked:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_430690(v4);
}

- (_TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate)init
{
  v3 = (&self->super.isa + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.isa + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_didBeginEditing);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.isa + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_didEndEditing);
  *v5 = 0;
  v5[1] = 0;
  v6 = (&self->super.isa + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_textDidChange);
  *v6 = 0;
  v6[1] = 0;
  v7 = (&self->super.isa + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_didCancel);
  v8 = type metadata accessor for LibrarySearchController.BarDelegate();
  *v7 = 0;
  v7[1] = 0;
  v10.receiver = self;
  v10.super_class = v8;
  return [(LibrarySearchController.BarDelegate *)&v10 init];
}

@end