@interface _BCCardStackTransitionCoverController
- (void)_observeImageChangeForCoverSource:(id)a3;
- (void)dealloc;
- (void)setupWithCoverSource:(id)a3 cardCoverSource:(id)a4 coverView:(id)a5 isDismiss:(BOOL)a6;
- (void)setupWithCoverSource:(id)a3 coverView:(id)a4;
@end

@implementation _BCCardStackTransitionCoverController

- (void)setupWithCoverSource:(id)a3 cardCoverSource:(id)a4 coverView:(id)a5 isDismiss:(BOOL)a6
{
  v6 = a6;
  v20 = a3;
  v10 = a4;
  objc_storeStrong(&self->_coverView, a5);
  v11 = a5;
  if (v6)
  {
    v12 = v10;
  }

  else
  {
    v12 = v20;
  }

  if (v6)
  {
    v13 = v20;
  }

  else
  {
    v13 = v10;
  }

  v14 = v12;
  v15 = v13;
  v16 = [v15 cardStackTransitioningCoverSourceImage];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = [v14 cardStackTransitioningCoverSourceImage];
  }

  v19 = v18;

  [v11 setImage:v19];
  [(_BCCardStackTransitionCoverController *)self _observeImageChangeForCoverSource:v15];
}

- (void)setupWithCoverSource:(id)a3 coverView:(id)a4
{
  v8 = a3;
  v6 = a4;
  objc_storeStrong(&self->_coverView, a4);
  v7 = [v8 cardStackTransitioningCoverSourceImage];
  if (!v7)
  {
    [(_BCCardStackTransitionCoverController *)self _observeImageChangeForCoverSource:v8];
  }

  [v6 setImage:v7];
}

- (void)dealloc
{
  [(BCCardStackTransitioningCoverSource *)self->_observedCoverSource setCardStackTransitioningCoverSourceImageChangeObserverBlock:0];
  v3.receiver = self;
  v3.super_class = _BCCardStackTransitionCoverController;
  [(_BCCardStackTransitionCoverController *)&v3 dealloc];
}

- (void)_observeImageChangeForCoverSource:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [(_BCCardStackTransitionCoverController *)self setObservedCoverSource:v4];
    objc_initWeak(&location, self);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_ACDC0;
    v5[3] = &unk_2CA028;
    objc_copyWeak(&v6, &location);
    [v4 setCardStackTransitioningCoverSourceImageChangeObserverBlock:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

@end