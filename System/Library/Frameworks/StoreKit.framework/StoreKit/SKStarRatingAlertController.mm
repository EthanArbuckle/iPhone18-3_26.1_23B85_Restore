@interface SKStarRatingAlertController
+ (id)starRatingAlertController;
- (SKStarRatingAlertController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_updateButtonState;
- (void)dealloc;
- (void)setupActionsWithBundle:(id)bundle;
@end

@implementation SKStarRatingAlertController

+ (id)starRatingAlertController
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"RATING_ALERT_TITLE" value:&stru_1F29BCE20 table:0];
  v5 = [self alertControllerWithTitle:v4 message:0 preferredStyle:1];

  return v5;
}

- (SKStarRatingAlertController)initWithNibName:(id)name bundle:(id)bundle
{
  v22.receiver = self;
  v22.super_class = SKStarRatingAlertController;
  v4 = [(SKStarRatingAlertController *)&v22 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v6 = [MEMORY[0x1E69DCAB8] imageNamed:@"AlertStarBackground" inBundle:v5];
    [v6 size];
    v8 = v7;
    v9 = [MEMORY[0x1E69DCAB8] imageNamed:@"AlertStarForeground" inBundle:v5];
    v10 = SKGetRatingStarsImage(v6, 5, 9.0);

    v11 = SKGetRatingStarsImage(v9, 5, 9.0);

    v12 = [[SKStarRatingControl alloc] initWithBackgroundImage:v10 foregroundImage:v11];
    ratingControl = v4->_ratingControl;
    v4->_ratingControl = v12;

    [(SKStarRatingControl *)v4->_ratingControl addTarget:v4 action:sel__ratingControlChanged_ forControlEvents:4096];
    [(SKStarRatingControl *)v4->_ratingControl setAutoresizingMask:37];
    [(SKStarRatingControl *)v4->_ratingControl setHitPadding:50.0, 15.0];
    [(SKStarRatingControl *)v4->_ratingControl setStarWidth:v8];
    [(SKStarRatingControl *)v4->_ratingControl sizeToFit];
    [(SKStarRatingControl *)v4->_ratingControl frame];
    v15 = v14;
    v17 = v16;
    v18 = [objc_alloc(MEMORY[0x1E69DD258]) initWithNibName:0 bundle:0];
    view = [v18 view];
    [view setFrame:{0.0, 0.0, v15, v17 + 20.0}];

    [v18 setPreferredContentSize:{v15, v17 + 20.0}];
    [(SKStarRatingControl *)v4->_ratingControl setFrame:0.0, 0.0, v15, v17];
    view2 = [v18 view];
    [view2 addSubview:v4->_ratingControl];

    [(SKStarRatingAlertController *)v4 setContentViewController:v18];
    [(SKStarRatingAlertController *)v4 setupActionsWithBundle:v5];
  }

  return v4;
}

- (void)setupActionsWithBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = [bundleCopy localizedStringForKey:@"CANCEL" value:&stru_1F29BCE20 table:0];
  v6 = [bundleCopy localizedStringForKey:@"SUBMIT" value:&stru_1F29BCE20 table:0];
  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E69DC648];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__SKStarRatingAlertController_setupActionsWithBundle___block_invoke;
  v14[3] = &unk_1E7B28D48;
  objc_copyWeak(&v15, &location);
  v8 = [v7 actionWithTitle:v5 style:1 handler:v14];
  [(SKStarRatingAlertController *)self addAction:v8];

  v9 = MEMORY[0x1E69DC648];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__SKStarRatingAlertController_setupActionsWithBundle___block_invoke_2;
  v12[3] = &unk_1E7B28D48;
  objc_copyWeak(&v13, &location);
  v10 = [v9 actionWithTitle:v6 style:0 handler:v12];
  submitAction = self->_submitAction;
  self->_submitAction = v10;

  [(SKStarRatingAlertController *)self addAction:self->_submitAction];
  [(SKStarRatingAlertController *)self _updateButtonState];
  objc_destroyWeak(&v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __54__SKStarRatingAlertController_setupActionsWithBundle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained completion];

  if (v1)
  {
    v2 = [WeakRetained completion];
    v2[2](v2, 0, 0.0);
  }
}

void __54__SKStarRatingAlertController_setupActionsWithBundle___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained rating];
  v2 = v1;
  v3 = [WeakRetained completion];

  if (v3)
  {
    v4 = [WeakRetained completion];
    v4[2](v4, 1, v2);
  }
}

- (void)dealloc
{
  [(SKStarRatingControl *)self->_ratingControl removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SKStarRatingAlertController;
  [(SKStarRatingAlertController *)&v3 dealloc];
}

- (void)_updateButtonState
{
  if (self->_submitAction)
  {
    [(SKStarRatingAlertController *)self rating];
    submitAction = self->_submitAction;

    [(UIAlertAction *)submitAction setEnabled:v3 > 0.00000011921];
  }
}

@end