@interface VSDestinationOperation
- (VSDestinationOperation)initWithDestination:(id)destination viewController:(id)controller;
- (VSSettingsViewController)viewController;
- (void)executionDidBegin;
@end

@implementation VSDestinationOperation

- (void)executionDidBegin
{
  viewController = [(VSDestinationOperation *)self viewController];
  view = [viewController view];
  [view setUserInteractionEnabled:0];

  destination = [(VSDestinationOperation *)self destination];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_A568;
  v7[3] = &unk_18C10;
  v8 = viewController;
  selfCopy = self;
  v6 = viewController;
  [v6 handleDestination:destination completion:v7];
}

- (VSDestinationOperation)initWithDestination:(id)destination viewController:(id)controller
{
  destinationCopy = destination;
  controllerCopy = controller;
  v14.receiver = self;
  v14.super_class = VSDestinationOperation;
  v9 = [(VSDestinationOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_destination, destination);
    objc_storeWeak(&v10->_viewController, controllerCopy);
    v11 = [destinationCopy description];
    v12 = [NSString stringWithFormat:@"%@", v11];
    [(VSDestinationOperation *)v10 setName:v12];
  }

  return v10;
}

- (VSSettingsViewController)viewController
{
  WeakRetained = objc_loadWeakRetained(&self->_viewController);

  return WeakRetained;
}

@end