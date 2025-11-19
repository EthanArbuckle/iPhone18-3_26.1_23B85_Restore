@interface GPEXHostViewController
- (_TtC15ImagePlayground22GPEXHostViewController)initWithCoder:(id)a3;
- (_TtC15ImagePlayground22GPEXHostViewController)initWithConfiguration:(id)a3;
- (_TtC15ImagePlayground22GPEXHostViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation GPEXHostViewController

- (_TtC15ImagePlayground22GPEXHostViewController)initWithConfiguration:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for GPEXHostViewController();
  return [(_EXHostViewController *)&v5 initWithConfiguration:a3];
}

- (_TtC15ImagePlayground22GPEXHostViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1D2AC6C24();
    v6 = a4;
    v7 = sub_1D2AC6BF4();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for GPEXHostViewController();
  v9 = [(GPEXHostViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC15ImagePlayground22GPEXHostViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GPEXHostViewController();
  v4 = a3;
  v5 = [(GPEXHostViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end