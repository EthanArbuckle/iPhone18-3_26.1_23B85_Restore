@interface GAXViewController
- (GAXViewController)initWithCoder:(id)coder;
- (GAXViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)setView:(id)view;
- (void)viewDidUnload;
- (void)viewWillUnload;
@end

@implementation GAXViewController

- (GAXViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = GAXViewController;
  v4 = [(GAXViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(GAXViewController *)v4 commonInit];
  }

  return v5;
}

- (GAXViewController)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = GAXViewController;
  v3 = [(GAXViewController *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(GAXViewController *)v3 commonInit];
  }

  return v4;
}

- (void)dealloc
{
  [(GAXViewController *)self releaseOutlets];
  v3.receiver = self;
  v3.super_class = GAXViewController;
  [(GAXViewController *)&v3 dealloc];
}

- (void)setView:(id)view
{
  viewCopy = view;
  if (![(GAXViewController *)self isViewLoaded])
  {
    v6 = 0;
LABEL_6:
    v7.receiver = self;
    v7.super_class = GAXViewController;
    [(GAXViewController *)&v7 setView:viewCopy];
    goto LABEL_7;
  }

  view = [(GAXViewController *)self view];
  v6 = view;
  if (viewCopy || !view)
  {
    goto LABEL_6;
  }

  [(GAXViewController *)self viewWillUnload];
  v7.receiver = self;
  v7.super_class = GAXViewController;
  [(GAXViewController *)&v7 setView:0];
  [(GAXViewController *)self viewDidUnload];
LABEL_7:
}

- (void)didReceiveMemoryWarning
{
  v5.receiver = self;
  v5.super_class = GAXViewController;
  [(GAXViewController *)&v5 didReceiveMemoryWarning];
  if ([(GAXViewController *)self isViewLoaded])
  {
    view = [(GAXViewController *)self view];
    window = [view window];

    if (!window)
    {
      [(GAXViewController *)self setView:0];
    }
  }
}

- (void)viewWillUnload
{
  v3.receiver = self;
  v3.super_class = GAXViewController;
  [(GAXViewController *)&v3 viewWillUnload];
  [(GAXViewController *)self releaseOutlets];
}

- (void)viewDidUnload
{
  v2.receiver = self;
  v2.super_class = GAXViewController;
  [(GAXViewController *)&v2 viewDidUnload];
}

@end