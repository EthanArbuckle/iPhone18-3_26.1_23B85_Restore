@interface ViewControllerJournal
- (ViewControllerJournal)init;
- (id)description;
- (id)insertNewLayer;
- (id)nextJournaledViewController;
- (void)addPresentedViewController:(id)a3 withPresenter:(id)a4;
- (void)addPushedViewController:(id)a3 withPresenter:(id)a4;
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

- (void)addPushedViewController:(id)a3 withPresenter:(id)a4
{
  v13 = a4;
  journal = self->_journal;
  v7 = a3;
  v8 = [(NSMutableArray *)journal firstObject];
  v9 = v8;
  if (!v8 || ([v8 presentingViewController], v10 = objc_claimAutoreleasedReturnValue(), v10, v10 != v13))
  {
    v11 = [(ViewControllerJournal *)self insertNewLayer];

    [v11 setPresentingViewController:v13];
    v9 = v11;
  }

  v12 = [v9 pushedViewControllers];
  [v12 insertObject:v7 atIndex:0];
}

- (void)addPresentedViewController:(id)a3 withPresenter:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ViewControllerJournal *)self insertNewLayer];
  [v8 setPresentedViewController:v7];

  [v8 setPresentingViewController:v6];
}

- (id)nextJournaledViewController
{
  if (!self->_journalEnumerator)
  {
    v3 = [(NSMutableArray *)self->_journal objectEnumerator];
    journalEnumerator = self->_journalEnumerator;
    self->_journalEnumerator = v3;
  }

  currentLayerEnumerator = self->_currentLayerEnumerator;
  if (currentLayerEnumerator)
  {
    v6 = [(NSEnumerator *)currentLayerEnumerator nextObject];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      goto LABEL_6;
    }

    v11 = self->_currentLayerEnumerator;
    self->_currentLayerEnumerator = 0;
  }

  v12 = [(NSEnumerator *)self->_journalEnumerator nextObject];
  if (!v12)
  {
    v17 = self->_journalEnumerator;
    self->_journalEnumerator = 0;

    v8 = 0;
    v10 = 0;
    v7 = 0;
LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  v13 = v12;
  v14 = [v12 pushedViewControllers];
  v15 = [v14 objectEnumerator];
  v16 = self->_currentLayerEnumerator;
  self->_currentLayerEnumerator = v15;

  v10 = [v13 presentedViewController];
  v8 = [v13 presentingViewController];
  if (v10)
  {

    v9 = objc_alloc_init(JournaledDisplayedViewController);
    [(JournaledDisplayedViewController *)v9 setViewController:v10];
    [(JournaledDisplayedViewController *)v9 setPresentingViewController:v8];
    [(JournaledDisplayedViewController *)v9 setDisplayType:1];
    v7 = 0;
    goto LABEL_13;
  }

  v7 = [(NSEnumerator *)self->_currentLayerEnumerator nextObject];

  if (!v7)
  {
    v10 = 0;
    goto LABEL_12;
  }

LABEL_6:
  v9 = objc_alloc_init(JournaledDisplayedViewController);
  [(JournaledDisplayedViewController *)v9 setViewController:v7];
  [(JournaledDisplayedViewController *)v9 setDisplayType:0];
  v10 = 0;
LABEL_13:
  v18 = v9;

  return v9;
}

@end