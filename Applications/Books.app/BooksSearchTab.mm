@interface BooksSearchTab
- (_TtC5BooksP33_9FFBDA032BCF050E6BC76F7B78641C4314BooksSearchTab)initWithViewControllerProvider:(id)a3;
@end

@implementation BooksSearchTab

- (_TtC5BooksP33_9FFBDA032BCF050E6BC76F7B78641C4314BooksSearchTab)initWithViewControllerProvider:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_10059EE94;
    v10[4] = sub_10059EE94;
    v10[5] = v5;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 1107296256;
    v10[2] = sub_10038D350;
    v10[3] = &unk_100A23FC8;
    v6 = _Block_copy(v10);
  }

  else
  {
    v6 = 0;
  }

  v7 = type metadata accessor for BooksSearchTab();
  v11.receiver = self;
  v11.super_class = v7;
  v8 = [(BooksSearchTab *)&v11 initWithViewControllerProvider:v6];
  sub_100007020(v4);
  _Block_release(v6);
  return v8;
}

@end