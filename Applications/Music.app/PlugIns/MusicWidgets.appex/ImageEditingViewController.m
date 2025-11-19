@interface ImageEditingViewController
- (_TtC11MusicCoreUI26ImageEditingViewController)initWithCoder:(id)a3;
- (_TtC11MusicCoreUI26ImageEditingViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC11MusicCoreUI26ImageEditingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC11MusicCoreUI26ImageEditingViewController)initWithRootViewController:(id)a3;
@end

@implementation ImageEditingViewController

- (_TtC11MusicCoreUI26ImageEditingViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ImageEditingViewController();
  return [(ImageEditingViewController *)&v7 initWithNavigationBarClass:a3 toolbarClass:a4];
}

- (_TtC11MusicCoreUI26ImageEditingViewController)initWithRootViewController:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for ImageEditingViewController();
  return [(ImageEditingViewController *)&v5 initWithRootViewController:a3];
}

- (_TtC11MusicCoreUI26ImageEditingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1005728D8();
    v6 = a4;
    v7 = sub_100572898();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for ImageEditingViewController();
  v9 = [(ImageEditingViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC11MusicCoreUI26ImageEditingViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ImageEditingViewController();
  v4 = a3;
  v5 = [(ImageEditingViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end