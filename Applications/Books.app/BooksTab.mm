@interface BooksTab
- (_TtC5BooksP33_9FFBDA032BCF050E6BC76F7B78641C438BooksTab)initWithTitle:(id)title image:(id)image identifier:(id)identifier viewControllerProvider:(id)provider;
@end

@implementation BooksTab

- (_TtC5BooksP33_9FFBDA032BCF050E6BC76F7B78641C438BooksTab)initWithTitle:(id)title image:(id)image identifier:(id)identifier viewControllerProvider:(id)provider
{
  v7 = _Block_copy(provider);
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

  imageCopy = image;
  return sub_10059C5CC(v8, v10, image, v11, v13, v7, v14);
}

@end