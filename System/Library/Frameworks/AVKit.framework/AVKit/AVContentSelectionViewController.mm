@interface AVContentSelectionViewController
- (AVContentSelectionViewController)initWithCoder:(id)coder;
- (AVContentSelectionViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation AVContentSelectionViewController

- (AVContentSelectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_18B6C562C();
    bundleCopy = bundle;
    v7 = sub_18B6C55FC();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for AVContentSelectionViewController();
  v9 = [(AVContentSelectionViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (AVContentSelectionViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for AVContentSelectionViewController();
  coderCopy = coder;
  v5 = [(AVContentSelectionViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end