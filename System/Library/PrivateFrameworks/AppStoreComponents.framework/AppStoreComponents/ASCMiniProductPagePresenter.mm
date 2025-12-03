@interface ASCMiniProductPagePresenter
- (ASCMiniProductPagePresenter)initWithView:(id)view lockupPresenter:(id)presenter;
- (ASCMiniProductPagePresenterView)view;
- (void)dealloc;
- (void)lockupPresenterDidChange:(id)change;
- (void)setAgeRating:(id)rating;
- (void)setDescription:(id)description;
- (void)setLockup:(id)lockup;
- (void)setMetadata:(id)metadata;
- (void)setSubtitle:(id)subtitle;
@end

@implementation ASCMiniProductPagePresenter

- (ASCMiniProductPagePresenter)initWithView:(id)view lockupPresenter:(id)presenter
{
  viewCopy = view;
  presenterCopy = presenter;
  v15.receiver = self;
  v15.super_class = ASCMiniProductPagePresenter;
  v8 = [(ASCMiniProductPagePresenter *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_view, viewCopy);
    lockup = [presenterCopy lockup];
    v11 = [lockup copy];
    lockup = v9->_lockup;
    v9->_lockup = v11;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel_lockupPresenterDidChange_ name:0x2827A3618 object:presenterCopy];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASCMiniProductPagePresenter;
  [(ASCMiniProductPagePresenter *)&v4 dealloc];
}

- (void)lockupPresenterDidChange:(id)change
{
  object = [change object];
  lockup = [object lockup];
  [(ASCMiniProductPagePresenter *)self setLockup:lockup];
}

- (void)setLockup:(id)lockup
{
  lockupCopy = lockup;
  lockup = self->_lockup;
  v17 = lockupCopy;
  if (lockupCopy && lockup)
  {
    v6 = [(ASCLockup *)lockup isEqual:lockupCopy];
    lockupCopy = v17;
    if (v6)
    {
      goto LABEL_11;
    }
  }

  else if (lockup == lockupCopy)
  {
    goto LABEL_11;
  }

  v7 = [(ASCLockup *)lockupCopy copy];
  v8 = self->_lockup;
  self->_lockup = v7;

  if (v17)
  {
    productPageMetadata = [(ASCLockup *)v17 productPageMetadata];
    [(ASCMiniProductPagePresenter *)self setMetadata:productPageMetadata];

    productPageDescription = [(ASCLockup *)v17 productPageDescription];
    [(ASCMiniProductPagePresenter *)self setDescription:productPageDescription];

    ageRating = [(ASCLockup *)v17 ageRating];
    [(ASCMiniProductPagePresenter *)self setAgeRating:ageRating];

    developerName = [(ASCLockup *)v17 developerName];
    if (developerName)
    {
      v13 = developerName;
      developerName2 = [(ASCLockup *)v17 developerName];
      v15 = [developerName2 length];

      if (v15)
      {
        developerName3 = [(ASCLockup *)v17 developerName];
        [(ASCMiniProductPagePresenter *)self setSubtitle:developerName3];
      }
    }
  }

  else
  {
    [(ASCMiniProductPagePresenter *)self setMetadata:0];
    [(ASCMiniProductPagePresenter *)self setDescription:0];
    [(ASCMiniProductPagePresenter *)self setAgeRating:0];
  }

LABEL_11:

  MEMORY[0x2821F96F8]();
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  view = [(ASCMiniProductPagePresenter *)self view];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    view2 = [(ASCMiniProductPagePresenter *)self view];
    [view2 setSubtitle:subtitleCopy];
  }
}

- (void)setMetadata:(id)metadata
{
  metadataCopy = metadata;
  view = [(ASCMiniProductPagePresenter *)self view];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    view2 = [(ASCMiniProductPagePresenter *)self view];
    [view2 setMetadata:metadataCopy];
  }
}

- (void)setDescription:(id)description
{
  descriptionCopy = description;
  view = [(ASCMiniProductPagePresenter *)self view];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    view2 = [(ASCMiniProductPagePresenter *)self view];
    collapsingNewlines = [descriptionCopy collapsingNewlines];
    [view2 setDescription:collapsingNewlines];
  }
}

- (void)setAgeRating:(id)rating
{
  ratingCopy = rating;
  view = [(ASCMiniProductPagePresenter *)self view];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    view2 = [(ASCMiniProductPagePresenter *)self view];
    [view2 setAgeRating:ratingCopy];
  }
}

- (ASCMiniProductPagePresenterView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end