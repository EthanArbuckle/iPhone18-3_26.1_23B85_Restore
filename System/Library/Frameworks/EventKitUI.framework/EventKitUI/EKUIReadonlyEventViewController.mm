@interface EKUIReadonlyEventViewController
- (EKUIReadonlyEventViewController)initWithEvent:(id)event;
- (unint64_t)supportedInterfaceOrientations;
- (void)willCommitPreview;
@end

@implementation EKUIReadonlyEventViewController

- (EKUIReadonlyEventViewController)initWithEvent:(id)event
{
  eventCopy = event;
  v8.receiver = self;
  v8.super_class = EKUIReadonlyEventViewController;
  v5 = [(EKUIReadonlyEventViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(EKEventViewController *)v5 setNoninteractivePlatterMode:1];
    [(EKEventViewController *)v6 setEvent:eventCopy];
  }

  return v6;
}

- (void)willCommitPreview
{
  [(EKEventViewController *)self setNoninteractivePlatterMode:0];
  [(EKEventViewController *)self setAllowsEditing:1];

  [(EKUIReadonlyEventViewController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
}

- (unint64_t)supportedInterfaceOrientations
{
  if ([(EKEventViewController *)self noninteractivePlatterMode])
  {
    view = [(EKUIReadonlyEventViewController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];

    return 1 << interfaceOrientation;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = EKUIReadonlyEventViewController;
    return [(EKEventViewController *)&v8 supportedInterfaceOrientations];
  }
}

@end