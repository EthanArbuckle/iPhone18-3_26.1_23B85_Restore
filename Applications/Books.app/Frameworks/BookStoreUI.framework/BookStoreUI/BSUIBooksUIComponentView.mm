@interface BSUIBooksUIComponentView
+ (id)renderModelWithIdentifier:(id)identifier rawComponentModel:(id)model;
- (void)_configureHostingControllerWithRawComponentModel:(id)model size:(CGSize)size;
- (void)_configureWithModel:(id)model;
- (void)applyLayoutAttributes:(id)attributes;
- (void)layoutSubviews;
@end

@implementation BSUIBooksUIComponentView

+ (id)renderModelWithIdentifier:(id)identifier rawComponentModel:(id)model
{
  modelCopy = model;
  identifierCopy = identifier;
  v7 = [[_BSUIRenderModelBooksUIComponent alloc] initWithRawComponentModel:modelCopy identifier:identifierCopy];

  v8 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"BSUIReuseIdentifierBooksUIComponentView" identifier:identifierCopy submodel:v7];

  return v8;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v7.receiver = self;
  v7.super_class = BSUIBooksUIComponentView;
  attributesCopy = attributes;
  [(BSUIBooksUIComponentView *)&v7 applyLayoutAttributes:attributesCopy];
  renderModel = [attributesCopy renderModel];

  submodel = [renderModel submodel];
  [(BSUIBooksUIComponentView *)self _configureWithModel:submodel];
}

- (void)_configureWithModel:(id)model
{
  modelCopy = model;
  if (([modelCopy isEqualToRenderModel:self->_renderModel] & 1) == 0)
  {
    objc_storeStrong(&self->_renderModel, model);
    rawComponentModel = [modelCopy rawComponentModel];
    [modelCopy size];
    [(BSUIBooksUIComponentView *)self _configureHostingControllerWithRawComponentModel:rawComponentModel size:?];
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
  hostingViewController = [(BSUIBooksUIComponentView *)self hostingViewController];
  view = [hostingViewController view];
  [view setFrame:{v4, v6, v8, v10}];
}

- (void)_configureHostingControllerWithRawComponentModel:(id)model size:(CGSize)size
{
  height = size.height;
  width = size.width;
  modelCopy = model;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if (!self->_hostingViewController)
  {
    v8 = +[BSUIBooksUIComponentHostingControllerFactory create];
    [(BSUIBooksUIComponentView *)self setHostingViewController:v8];

    feedControllerHost = [(BSUIBooksUIComponentView *)self feedControllerHost];
    [feedControllerHost addChildViewController:self->_hostingViewController];

    hostingViewController = [(BSUIBooksUIComponentView *)self hostingViewController];
    view = [hostingViewController view];
    [(BSUIBooksUIComponentView *)self addSubview:view];

    feedControllerHost2 = [(BSUIBooksUIComponentView *)self feedControllerHost];
    [feedControllerHost2 didAddChildViewController:self->_hostingViewController];
  }

  hostingViewController2 = [(BSUIBooksUIComponentView *)self hostingViewController];
  feedControllerHost3 = [(BSUIBooksUIComponentView *)self feedControllerHost];
  [hostingViewController2 updateWithRawComponentModel:modelCopy size:feedControllerHost3 feedControllerHost:{width, height}];
}

@end