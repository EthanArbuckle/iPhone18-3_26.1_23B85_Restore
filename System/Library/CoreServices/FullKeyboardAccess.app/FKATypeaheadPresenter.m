@interface FKATypeaheadPresenter
- (FKATypeaheadPresenter)initWithContainingView:(id)a3;
- (void)dismissFloatingView;
- (void)presentTypeaheadView;
@end

@implementation FKATypeaheadPresenter

- (FKATypeaheadPresenter)initWithContainingView:(id)a3
{
  v4.receiver = self;
  v4.super_class = FKATypeaheadPresenter;
  return [(FKATypeaheadPresenter *)&v4 initWithContainingView:a3 alignedToEdge:4 withinSafeArea:0];
}

- (void)presentTypeaheadView
{
  v3 = [(FKATypeaheadPresenter *)self typeaheadView];

  if (!v3)
  {
    v4 = objc_alloc_init(FKATypeaheadView);
    [(FKATypeaheadPresenter *)self setTypeaheadView:v4];
  }

  v5 = [(FKATypeaheadPresenter *)self typeaheadView];
  [(FKATypeaheadPresenter *)self presentFloatingView:v5 withDuration:0.0];
}

- (void)dismissFloatingView
{
  v3.receiver = self;
  v3.super_class = FKATypeaheadPresenter;
  [(FKATypeaheadPresenter *)&v3 dismissFloatingView];
  [(FKATypeaheadPresenter *)self setTypeaheadView:0];
}

@end