@interface BSUIBooksUIComponentView
+ (id)renderModelWithIdentifier:(id)a3 rawComponentModel:(id)a4;
- (void)_configureHostingControllerWithRawComponentModel:(id)a3 size:(CGSize)a4;
- (void)_configureWithModel:(id)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)layoutSubviews;
@end

@implementation BSUIBooksUIComponentView

+ (id)renderModelWithIdentifier:(id)a3 rawComponentModel:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[_BSUIRenderModelBooksUIComponent alloc] initWithRawComponentModel:v5 identifier:v6];

  v8 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"BSUIReuseIdentifierBooksUIComponentView" identifier:v6 submodel:v7];

  return v8;
}

- (void)applyLayoutAttributes:(id)a3
{
  v7.receiver = self;
  v7.super_class = BSUIBooksUIComponentView;
  v4 = a3;
  [(BSUIBooksUIComponentView *)&v7 applyLayoutAttributes:v4];
  v5 = [v4 renderModel];

  v6 = [v5 submodel];
  [(BSUIBooksUIComponentView *)self _configureWithModel:v6];
}

- (void)_configureWithModel:(id)a3
{
  v6 = a3;
  if (([v6 isEqualToRenderModel:self->_renderModel] & 1) == 0)
  {
    objc_storeStrong(&self->_renderModel, a3);
    v5 = [v6 rawComponentModel];
    [v6 size];
    [(BSUIBooksUIComponentView *)self _configureHostingControllerWithRawComponentModel:v5 size:?];
  }
}

- (void)layoutSubviews
{
  v13.receiver = self;
  v13.super_class = BSUIBooksUIComponentView;
  [(BSUIBooksUIComponentView *)&v13 layoutSubviews];
  [(BSUIBooksUIComponentView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(BSUIBooksUIComponentView *)self hostingViewController];
  v12 = [v11 view];
  [v12 setFrame:{v4, v6, v8, v10}];
}

- (void)_configureHostingControllerWithRawComponentModel:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v7 = a3;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (!self->_hostingViewController)
  {
    v8 = +[BSUIBooksUIComponentHostingControllerFactory create];
    [(BSUIBooksUIComponentView *)self setHostingViewController:v8];

    v9 = [(BSUIBooksUIComponentView *)self feedControllerHost];
    [v9 addChildViewController:self->_hostingViewController];

    v10 = [(BSUIBooksUIComponentView *)self hostingViewController];
    v11 = [v10 view];
    [(BSUIBooksUIComponentView *)self addSubview:v11];

    v12 = [(BSUIBooksUIComponentView *)self feedControllerHost];
    [v12 didAddChildViewController:self->_hostingViewController];
  }

  v14 = [(BSUIBooksUIComponentView *)self hostingViewController];
  v13 = [(BSUIBooksUIComponentView *)self feedControllerHost];
  [v14 updateWithRawComponentModel:v7 size:v13 feedControllerHost:{width, height}];
}

@end