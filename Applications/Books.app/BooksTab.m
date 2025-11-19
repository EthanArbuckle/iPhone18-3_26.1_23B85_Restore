@interface BooksTab
- (_TtC5BooksP33_9FFBDA032BCF050E6BC76F7B78641C438BooksTab)initWithTitle:(id)a3 image:(id)a4 identifier:(id)a5 viewControllerProvider:(id)a6;
@end

@implementation BooksTab

- (_TtC5BooksP33_9FFBDA032BCF050E6BC76F7B78641C438BooksTab)initWithTitle:(id)a3 image:(id)a4 identifier:(id)a5 viewControllerProvider:(id)a6
{
  v7 = _Block_copy(a6);
  v8 = sub_1007A2254();
  v10 = v9;
  v11 = sub_1007A2254();
  v13 = v12;
  if (v7)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v7;
    v7 = sub_10059EE94;
  }

  else
  {
    v14 = 0;
  }

  v15 = a4;
  return sub_10059C5CC(v8, v10, a4, v11, v13, v7, v14);
}

@end