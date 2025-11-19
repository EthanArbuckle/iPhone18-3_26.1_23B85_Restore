@interface VSDestinationOperation
- (VSDestinationOperation)initWithDestination:(id)a3 viewController:(id)a4;
- (VSSettingsViewController)viewController;
- (void)executionDidBegin;
@end

@implementation VSDestinationOperation

- (void)executionDidBegin
{
  v3 = [(VSDestinationOperation *)self viewController];
  v4 = [v3 view];
  [v4 setUserInteractionEnabled:0];

  v5 = [(VSDestinationOperation *)self destination];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_A568;
  v7[3] = &unk_18C10;
  v8 = v3;
  v9 = self;
  v6 = v3;
  [v6 handleDestination:v5 completion:v7];
}

- (VSDestinationOperation)initWithDestination:(id)a3 viewController:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = VSDestinationOperation;
  v9 = [(VSDestinationOperation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_destination, a3);
    objc_storeWeak(&v10->_viewController, v8);
    v11 = [v7 description];
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