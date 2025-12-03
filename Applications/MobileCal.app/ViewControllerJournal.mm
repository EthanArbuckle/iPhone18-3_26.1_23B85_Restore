@interface ViewControllerJournal
- (ViewControllerJournal)init;
- (id)description;
- (id)insertNewLayer;
- (id)nextJournaledViewController;
- (void)addPresentedViewController:(id)controller withPresenter:(id)presenter;
- (void)addPushedViewController:(id)controller withPresenter:(id)presenter;
@end

@implementation ViewControllerJournal

- (ViewControllerJournal)init
{
  v6.receiver = self;
  v6.super_class = ViewControllerJournal;
  v2 = [(ViewControllerJournal *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    journal = v2->_journal;
    v2->_journal = v3;
  }

  return v2;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = ViewControllerJournal;
  v3 = [(ViewControllerJournal *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@ %@", v3, self->_journal];

  return v4;
}

- (id)insertNewLayer
{
  v3 = objc_alloc_init(JournalPresentationLayer);
  [(NSMutableArray *)self->_journal insertObject:v3 atIndex:0];

  return v3;
}

- (void)addPushedViewController:(id)controller withPresenter:(id)presenter
{
  presenterCopy = presenter;
  journal = self->_journal;
  controllerCopy = controller;
  firstObject = [(NSMutableArray *)journal firstObject];
  v9 = firstObject;
  if (!firstObject || ([firstObject presentingViewController], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 != presenterCopy))
  {
    insertNewLayer = [(ViewControllerJournal *)self insertNewLayer];

    [insertNewLayer setPresentingViewController:presenterCopy];
    v9 = insertNewLayer;
  }

  pushedViewControllers = [v9 pushedViewControllers];
  [pushedViewControllers insertObject:controllerCopy atIndex:0];
}

- (void)addPresentedViewController:(id)controller withPresenter:(id)presenter
{
  presenterCopy = presenter;
  controllerCopy = controller;
  insertNewLayer = [(ViewControllerJournal *)self insertNewLayer];
  [insertNewLayer setPresentedViewController:controllerCopy];

  [insertNewLayer setPresentingViewController:presenterCopy];
}

- (id)nextJournaledViewController
{
  if (!self->_journalEnumerator)
  {
    objectEnumerator = [(NSMutableArray *)self->_journal objectEnumerator];
    journalEnumerator = self->_journalEnumerator;
    self->_journalEnumerator = objectEnumerator;
  }

  currentLayerEnumerator = self->_currentLayerEnumerator;
  if (currentLayerEnumerator)
  {
    nextObject = [(NSEnumerator *)currentLayerEnumerator nextObject];
    if (nextObject)
    {
      nextObject3 = nextObject;
      presentingViewController = 0;
      goto LABEL_6;
    }

    v11 = self->_currentLayerEnumerator;
    self->_currentLayerEnumerator = 0;
  }

  nextObject2 = [(NSEnumerator *)self->_journalEnumerator nextObject];
  if (!nextObject2)
  {
    v17 = self->_journalEnumerator;
    self->_journalEnumerator = 0;

    presentingViewController = 0;
    presentedViewController = 0;
    nextObject3 = 0;
LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  v13 = nextObject2;
  pushedViewControllers = [nextObject2 pushedViewControllers];
  objectEnumerator2 = [pushedViewControllers objectEnumerator];
  v16 = self->_currentLayerEnumerator;
  self->_currentLayerEnumerator = objectEnumerator2;

  presentedViewController = [v13 presentedViewController];
  presentingViewController = [v13 presentingViewController];
  if (presentedViewController)
  {

    v9 = objc_alloc_init(JournaledDisplayedViewController);
    [(JournaledDisplayedViewController *)v9 setViewController:presentedViewController];
    [(JournaledDisplayedViewController *)v9 setPresentingViewController:presentingViewController];
    [(JournaledDisplayedViewController *)v9 setDisplayType:1];
    nextObject3 = 0;
    goto LABEL_13;
  }

  nextObject3 = [(NSEnumerator *)self->_currentLayerEnumerator nextObject];

  if (!nextObject3)
  {
    presentedViewController = 0;
    goto LABEL_12;
  }

LABEL_6:
  v9 = objc_alloc_init(JournaledDisplayedViewController);
  [(JournaledDisplayedViewController *)v9 setViewController:nextObject3];
  [(JournaledDisplayedViewController *)v9 setDisplayType:0];
  presentedViewController = 0;
LABEL_13:
  v18 = v9;

  return v9;
}

@end