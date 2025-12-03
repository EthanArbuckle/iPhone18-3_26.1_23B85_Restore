@interface DismissBarButtonItem
- (_TtC11BookStoreUI20DismissBarButtonItem)init;
- (_TtC11BookStoreUI20DismissBarButtonItem)initWithCoder:(id)coder;
@end

@implementation DismissBarButtonItem

- (_TtC11BookStoreUI20DismissBarButtonItem)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DismissBarButtonItem();
  return [(ProductFeedBarButtonItem *)&v3 init];
}

- (_TtC11BookStoreUI20DismissBarButtonItem)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DismissBarButtonItem();
  coderCopy = coder;
  v5 = [(ProductFeedBarButtonItem *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end