@interface DismissBarButtonItem
- (_TtC11BookStoreUI20DismissBarButtonItem)init;
- (_TtC11BookStoreUI20DismissBarButtonItem)initWithCoder:(id)a3;
@end

@implementation DismissBarButtonItem

- (_TtC11BookStoreUI20DismissBarButtonItem)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DismissBarButtonItem();
  return [(ProductFeedBarButtonItem *)&v3 init];
}

- (_TtC11BookStoreUI20DismissBarButtonItem)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DismissBarButtonItem();
  v4 = a3;
  v5 = [(ProductFeedBarButtonItem *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end