@interface ABSBarButtonItem
- (BOOL)isEnabled;
- (NSString)title;
- (_TtC8Business16ABSBarButtonItem)init;
- (_TtC8Business16ABSBarButtonItem)initWithCoder:(id)coder;
- (void)setTitle:(id)title;
@end

@implementation ABSBarButtonItem

- (NSString)title
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ABSBarButtonItem();
  v2 = v7.receiver;
  title = [(ABSBarButtonItem *)&v7 title];
  if (title)
  {
    v4 = title;
    sub_1000AC06C();

    v5 = sub_1000AC02C();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setTitle:(id)title
{
  selfCopy = self;
  if (title)
  {
    sub_1000AC06C();
    v4 = selfCopy;
    v5 = sub_1000AC02C();
  }

  else
  {
    selfCopy2 = self;
    v5 = 0;
  }

  v12.receiver = selfCopy;
  v12.super_class = type metadata accessor for ABSBarButtonItem();
  [(ABSBarButtonItem *)&v12 setTitle:v5];

  if (sub_10002CE60() == 2)
  {
    customView = [(ABSBarButtonItem *)selfCopy customView];
    if (customView)
    {
      v8 = customView;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v8 = v8;
        title = [(ABSBarButtonItem *)selfCopy title];
        [v10 setTitle:title forState:0];

        selfCopy = v8;
      }

      selfCopy = v8;
    }
  }
}

- (BOOL)isEnabled
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ABSBarButtonItem();
  return [(ABSBarButtonItem *)&v3 isEnabled];
}

- (_TtC8Business16ABSBarButtonItem)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ABSBarButtonItem();
  return [(ABSBarButtonItem *)&v3 init];
}

- (_TtC8Business16ABSBarButtonItem)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ABSBarButtonItem();
  coderCopy = coder;
  v5 = [(ABSBarButtonItem *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end