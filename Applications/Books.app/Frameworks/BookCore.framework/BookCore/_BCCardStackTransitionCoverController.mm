@interface _BCCardStackTransitionCoverController
- (void)_observeImageChangeForCoverSource:(id)source;
- (void)dealloc;
- (void)setupWithCoverSource:(id)source cardCoverSource:(id)coverSource coverView:(id)view isDismiss:(BOOL)dismiss;
- (void)setupWithCoverSource:(id)source coverView:(id)view;
@end

@implementation _BCCardStackTransitionCoverController

- (void)setupWithCoverSource:(id)source cardCoverSource:(id)coverSource coverView:(id)view isDismiss:(BOOL)dismiss
{
  dismissCopy = dismiss;
  sourceCopy = source;
  coverSourceCopy = coverSource;
  objc_storeStrong(&self->_coverView, view);
  viewCopy = view;
  if (dismissCopy)
  {
    v12 = coverSourceCopy;
  }

  else
  {
    v12 = sourceCopy;
  }

  if (dismissCopy)
  {
    v13 = sourceCopy;
  }

  else
  {
    v13 = coverSourceCopy;
  }

  v14 = v12;
  v15 = v13;
  cardStackTransitioningCoverSourceImage = [v15 cardStackTransitioningCoverSourceImage];
  v17 = cardStackTransitioningCoverSourceImage;
  if (cardStackTransitioningCoverSourceImage)
  {
    cardStackTransitioningCoverSourceImage2 = cardStackTransitioningCoverSourceImage;
  }

  else
  {
    cardStackTransitioningCoverSourceImage2 = [v14 cardStackTransitioningCoverSourceImage];
  }

  v19 = cardStackTransitioningCoverSourceImage2;

  [viewCopy setImage:v19];
  [(_BCCardStackTransitionCoverController *)self _observeImageChangeForCoverSource:v15];
}

- (void)setupWithCoverSource:(id)source coverView:(id)view
{
  sourceCopy = source;
  viewCopy = view;
  objc_storeStrong(&self->_coverView, view);
  cardStackTransitioningCoverSourceImage = [sourceCopy cardStackTransitioningCoverSourceImage];
  if (!cardStackTransitioningCoverSourceImage)
  {
    [(_BCCardStackTransitionCoverController *)self _observeImageChangeForCoverSource:sourceCopy];
  }

  [viewCopy setImage:cardStackTransitioningCoverSourceImage];
}

- (void)dealloc
{
  [(BCCardStackTransitioningCoverSource *)self->_observedCoverSource setCardStackTransitioningCoverSourceImageChangeObserverBlock:0];
  v3.receiver = self;
  v3.super_class = _BCCardStackTransitionCoverController;
  [(_BCCardStackTransitionCoverController *)&v3 dealloc];
}

- (void)_observeImageChangeForCoverSource:(id)source
{
  sourceCopy = source;
  if (objc_opt_respondsToSelector())
  {
    [(_BCCardStackTransitionCoverController *)self setObservedCoverSource:sourceCopy];
    objc_initWeak(&location, self);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_ACDC0;
    v5[3] = &unk_2CA028;
    objc_copyWeak(&v6, &location);
    [sourceCopy setCardStackTransitioningCoverSourceImageChangeObserverBlock:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

@end