@interface ASCMiniProductPagePresenter
- (ASCMiniProductPagePresenter)initWithView:(id)a3 lockupPresenter:(id)a4;
- (ASCMiniProductPagePresenterView)view;
- (void)dealloc;
- (void)lockupPresenterDidChange:(id)a3;
- (void)setAgeRating:(id)a3;
- (void)setDescription:(id)a3;
- (void)setLockup:(id)a3;
- (void)setMetadata:(id)a3;
- (void)setSubtitle:(id)a3;
@end

@implementation ASCMiniProductPagePresenter

- (ASCMiniProductPagePresenter)initWithView:(id)a3 lockupPresenter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = ASCMiniProductPagePresenter;
  v8 = [(ASCMiniProductPagePresenter *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_view, v6);
    v10 = [v7 lockup];
    v11 = [v10 copy];
    lockup = v9->_lockup;
    v9->_lockup = v11;

    v13 = [MEMORY[0x277CCAB98] defaultCenter];
    [v13 addObserver:v9 selector:sel_lockupPresenterDidChange_ name:0x2827A3618 object:v7];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ASCMiniProductPagePresenter;
  [(ASCMiniProductPagePresenter *)&v4 dealloc];
}

- (void)lockupPresenterDidChange:(id)a3
{
  v5 = [a3 object];
  v4 = [v5 lockup];
  [(ASCMiniProductPagePresenter *)self setLockup:v4];
}

- (void)setLockup:(id)a3
{
  v4 = a3;
  lockup = self->_lockup;
  v17 = v4;
  if (v4 && lockup)
  {
    v6 = [(ASCLockup *)lockup isEqual:v4];
    v4 = v17;
    if (v6)
    {
      goto LABEL_11;
    }
  }

  else if (lockup == v4)
  {
    goto LABEL_11;
  }

  v7 = [(ASCLockup *)v4 copy];
  v8 = self->_lockup;
  self->_lockup = v7;

  if (v17)
  {
    v9 = [(ASCLockup *)v17 productPageMetadata];
    [(ASCMiniProductPagePresenter *)self setMetadata:v9];

    v10 = [(ASCLockup *)v17 productPageDescription];
    [(ASCMiniProductPagePresenter *)self setDescription:v10];

    v11 = [(ASCLockup *)v17 ageRating];
    [(ASCMiniProductPagePresenter *)self setAgeRating:v11];

    v12 = [(ASCLockup *)v17 developerName];
    if (v12)
    {
      v13 = v12;
      v14 = [(ASCLockup *)v17 developerName];
      v15 = [v14 length];

      if (v15)
      {
        v16 = [(ASCLockup *)v17 developerName];
        [(ASCMiniProductPagePresenter *)self setSubtitle:v16];
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

- (void)setSubtitle:(id)a3
{
  v7 = a3;
  v4 = [(ASCMiniProductPagePresenter *)self view];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ASCMiniProductPagePresenter *)self view];
    [v6 setSubtitle:v7];
  }
}

- (void)setMetadata:(id)a3
{
  v7 = a3;
  v4 = [(ASCMiniProductPagePresenter *)self view];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ASCMiniProductPagePresenter *)self view];
    [v6 setMetadata:v7];
  }
}

- (void)setDescription:(id)a3
{
  v8 = a3;
  v4 = [(ASCMiniProductPagePresenter *)self view];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ASCMiniProductPagePresenter *)self view];
    v7 = [v8 collapsingNewlines];
    [v6 setDescription:v7];
  }
}

- (void)setAgeRating:(id)a3
{
  v7 = a3;
  v4 = [(ASCMiniProductPagePresenter *)self view];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(ASCMiniProductPagePresenter *)self view];
    [v6 setAgeRating:v7];
  }
}

- (ASCMiniProductPagePresenterView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end