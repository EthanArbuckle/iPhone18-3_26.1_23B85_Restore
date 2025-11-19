@interface ABSBarButtonItem
- (BOOL)isEnabled;
- (NSString)title;
- (_TtC8Business16ABSBarButtonItem)init;
- (_TtC8Business16ABSBarButtonItem)initWithCoder:(id)a3;
- (void)setTitle:(id)a3;
@end

@implementation ABSBarButtonItem

- (NSString)title
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ABSBarButtonItem();
  v2 = v7.receiver;
  v3 = [(ABSBarButtonItem *)&v7 title];
  if (v3)
  {
    v4 = v3;
    sub_1000AC06C();

    v5 = sub_1000AC02C();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setTitle:(id)a3
{
  v3 = self;
  if (a3)
  {
    sub_1000AC06C();
    v4 = v3;
    v5 = sub_1000AC02C();
  }

  else
  {
    v6 = self;
    v5 = 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for ABSBarButtonItem();
  [(ABSBarButtonItem *)&v12 setTitle:v5];

  if (sub_10002CE60() == 2)
  {
    v7 = [(ABSBarButtonItem *)v3 customView];
    if (v7)
    {
      v8 = v7;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (v9)
      {
        v10 = v9;
        v8 = v8;
        v11 = [(ABSBarButtonItem *)v3 title];
        [v10 setTitle:v11 forState:0];

        v3 = v8;
      }

      v3 = v8;
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

- (_TtC8Business16ABSBarButtonItem)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ABSBarButtonItem();
  v4 = a3;
  v5 = [(ABSBarButtonItem *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end