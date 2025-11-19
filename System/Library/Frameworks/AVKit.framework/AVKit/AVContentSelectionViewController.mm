@interface AVContentSelectionViewController
- (AVContentSelectionViewController)initWithCoder:(id)a3;
- (AVContentSelectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation AVContentSelectionViewController

- (AVContentSelectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_18B6C562C();
    v6 = a4;
    v7 = sub_18B6C55FC();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AVContentSelectionViewController();
  v9 = [(AVContentSelectionViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (AVContentSelectionViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AVContentSelectionViewController();
  v4 = a3;
  v5 = [(AVContentSelectionViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end