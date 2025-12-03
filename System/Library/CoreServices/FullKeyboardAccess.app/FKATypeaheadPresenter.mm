@interface FKATypeaheadPresenter
- (FKATypeaheadPresenter)initWithContainingView:(id)view;
- (void)dismissFloatingView;
- (void)presentTypeaheadView;
@end

@implementation FKATypeaheadPresenter

- (FKATypeaheadPresenter)initWithContainingView:(id)view
{
  v4.receiver = self;
  v4.super_class = FKATypeaheadPresenter;
  return [(FKATypeaheadPresenter *)&v4 initWithContainingView:view alignedToEdge:4 withinSafeArea:0];
}

- (void)presentTypeaheadView
{
  typeaheadView = [(FKATypeaheadPresenter *)self typeaheadView];

  if (!typeaheadView)
  {
    v4 = objc_alloc_init(FKATypeaheadView);
    [(FKATypeaheadPresenter *)self setTypeaheadView:v4];
  }

  typeaheadView2 = [(FKATypeaheadPresenter *)self typeaheadView];
  [(FKATypeaheadPresenter *)self presentFloatingView:typeaheadView2 withDuration:0.0];
}

- (void)dismissFloatingView
{
  v3.receiver = self;
  v3.super_class = FKATypeaheadPresenter;
  [(FKATypeaheadPresenter *)&v3 dismissFloatingView];
  [(FKATypeaheadPresenter *)self setTypeaheadView:0];
}

@end