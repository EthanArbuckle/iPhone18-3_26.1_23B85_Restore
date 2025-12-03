@interface ASCAdLockupPresenter
- (ASCAdLockupPresenter)initWithView:(id)view lockupPresenter:(id)presenter;
- (void)dealloc;
- (void)lockupPresenterDidChange:(id)change;
- (void)setAdTransparencyButtonHidden:(BOOL)hidden;
- (void)setDeveloperName:(id)name;
- (void)setEditorsChoice:(BOOL)choice;
- (void)setLockup:(id)lockup;
- (void)setProductDescription:(id)description;
- (void)setProductRating:(float)rating;
- (void)setProductRatingBadge:(id)badge;
@end

@implementation ASCAdLockupPresenter

- (ASCAdLockupPresenter)initWithView:(id)view lockupPresenter:(id)presenter
{
  viewCopy = view;
  presenterCopy = presenter;
  v16.receiver = self;
  v16.super_class = ASCAdLockupPresenter;
  v9 = [(ASCAdLockupPresenter *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_view, view);
    lockup = [presenterCopy lockup];
    v12 = [lockup copy];
    lockup = v10->_lockup;
    v10->_lockup = v12;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_lockupPresenterDidChange_ name:0x2827A3618 object:presenterCopy];
  }

  return v10;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASCAdLockupPresenter;
  [(ASCAdLockupPresenter *)&v4 dealloc];
}

- (void)lockupPresenterDidChange:(id)change
{
  object = [change object];
  lockup = [object lockup];
  [(ASCAdLockupPresenter *)self setLockup:lockup];
}

- (void)setLockup:(id)lockup
{
  lockupCopy = lockup;
  lockup = self->_lockup;
  v16 = lockupCopy;
  if (!lockupCopy || !lockup)
  {
    if (lockup == lockupCopy)
    {
      goto LABEL_18;
    }

LABEL_6:
    v7 = [(ASCLockup *)lockupCopy copy];
    v8 = self->_lockup;
    self->_lockup = v7;

    if (!v16)
    {
      [(ASCAdLockupPresenter *)self setEditorsChoice:0];
      [(ASCAdLockupPresenter *)self setProductRating:0.0];
      [(ASCAdLockupPresenter *)self setProductRatingBadge:0];
      [(ASCAdLockupPresenter *)self setProductDescription:0];
      [(ASCAdLockupPresenter *)self setAdTransparencyButtonHidden:1];
      [(ASCAdLockupPresenter *)self setDeveloperName:0];
      goto LABEL_18;
    }

    offer = [(ASCLockup *)v16 offer];
    flags = [offer flags];

    if ((flags & 8) != 0)
    {
      selfCopy2 = self;
      v12 = 0;
    }

    else
    {
      if (![(ASCLockup *)v16 isEditorsChoice])
      {
        [(ASCAdLockupPresenter *)self setEditorsChoice:0];
        [(ASCLockup *)v16 productRating];
        [(ASCAdLockupPresenter *)self setProductRating:?];
        productRatingBadge = [(ASCLockup *)v16 productRatingBadge];
        [(ASCAdLockupPresenter *)self setProductRatingBadge:productRatingBadge];

        goto LABEL_14;
      }

      selfCopy2 = self;
      v12 = 1;
    }

    [(ASCAdLockupPresenter *)selfCopy2 setEditorsChoice:v12];
    [(ASCAdLockupPresenter *)self setProductRating:0.0];
    [(ASCAdLockupPresenter *)self setProductRatingBadge:0];
LABEL_14:
    if ([(ASCAdLockupPresenter *)self shouldDisplayDescriptionForLockup:v16])
    {
      productDescription = [(ASCLockup *)v16 productDescription];
      [(ASCAdLockupPresenter *)self setProductDescription:productDescription];
    }

    else
    {
      [(ASCAdLockupPresenter *)self setProductDescription:0];
    }

    [(ASCAdLockupPresenter *)self setAdTransparencyButtonHidden:0];
    developerName = [(ASCLockup *)v16 developerName];
    [(ASCAdLockupPresenter *)self setDeveloperName:developerName];

    goto LABEL_18;
  }

  v6 = [(ASCLockup *)lockup isEqual:lockupCopy];
  lockupCopy = v16;
  if (!v6)
  {
    goto LABEL_6;
  }

LABEL_18:

  MEMORY[0x2821F96F8]();
}

- (void)setAdTransparencyButtonHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  view = [(ASCAdLockupPresenter *)self view];
  [view setAdTransparencyButtonHidden:hiddenCopy];
}

- (void)setEditorsChoice:(BOOL)choice
{
  choiceCopy = choice;
  view = [(ASCAdLockupPresenter *)self view];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    view2 = [(ASCAdLockupPresenter *)self view];
    [view2 setEditorsChoice:choiceCopy];
  }
}

- (void)setProductRating:(float)rating
{
  view = [(ASCAdLockupPresenter *)self view];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    view2 = [(ASCAdLockupPresenter *)self view];
    *&v7 = rating;
    [view2 setProductRating:v7];
  }
}

- (void)setProductRatingBadge:(id)badge
{
  badgeCopy = badge;
  view = [(ASCAdLockupPresenter *)self view];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    view2 = [(ASCAdLockupPresenter *)self view];
    [view2 setProductRatingBadge:badgeCopy];
  }
}

- (void)setProductDescription:(id)description
{
  descriptionCopy = description;
  view = [(ASCAdLockupPresenter *)self view];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    view2 = [(ASCAdLockupPresenter *)self view];
    [view2 setProductDescription:descriptionCopy];
  }
}

- (void)setDeveloperName:(id)name
{
  nameCopy = name;
  view = [(ASCAdLockupPresenter *)self view];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    view2 = [(ASCAdLockupPresenter *)self view];
    [view2 setDeveloperName:nameCopy];
  }
}

@end