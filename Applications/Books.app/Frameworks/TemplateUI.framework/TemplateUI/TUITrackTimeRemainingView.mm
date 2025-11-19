@interface TUITrackTimeRemainingView
+ (id)renderModelWithIdentifier:(id)a3 dynamicProgress:(id)a4 style:(id)a5;
- (TUITrackTimeRemainingView)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
- (void)dealloc;
- (void)dynamicProgressChanged:(id)a3;
@end

@implementation TUITrackTimeRemainingView

+ (id)renderModelWithIdentifier:(id)a3 dynamicProgress:(id)a4 style:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(_TUITrackTimeRemainingRenderModel);
  [(_TUITrackTimeRemainingRenderModel *)v10 setDynamicProgress:v8];

  [(_TUITrackTimeRemainingRenderModel *)v10 setStyle:v7];
  v11 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"TUIReuseIdentifierTrackTimeRemainingView" identifier:v9 submodel:v10];

  return v11;
}

- (void)applyLayoutAttributes:(id)a3
{
  v15.receiver = self;
  v15.super_class = TUITrackTimeRemainingView;
  v4 = a3;
  [(TUIReusableBaseView *)&v15 applyLayoutAttributes:v4];
  v5 = [v4 renderModel];

  v6 = [v5 submodel];
  renderModel = self->_renderModel;
  self->_renderModel = v6;

  v8 = [(_TUITrackTimeRemainingRenderModel *)self->_renderModel dynamicProgress];
  dynamicProgress = self->_dynamicProgress;
  self->_dynamicProgress = v8;

  v10 = [(_TUITrackTimeRemainingRenderModel *)self->_renderModel style];
  style = self->_style;
  self->_style = v10;

  v12 = [(TUITextContentStyler *)self->_style textColor];
  [(UILabel *)self->_textView setTextColor:v12];

  v13 = [(TUITextContentStyler *)self->_style font];
  [(UILabel *)self->_textView setFont:v13];

  v14 = [(TUITrackTimeRemainingView *)self dynamicProgress];
  [v14 registerProgressObserver:self];
}

- (TUITrackTimeRemainingView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = TUITrackTimeRemainingView;
  v3 = [(TUITrackTimeRemainingView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [UILabel alloc];
    [(TUITrackTimeRemainingView *)v3 bounds];
    v5 = [v4 initWithFrame:?];
    textView = v3->_textView;
    v3->_textView = v5;

    v7 = +[UIColor clearColor];
    [(UILabel *)v3->_textView setBackgroundColor:v7];

    [(UILabel *)v3->_textView setAutoresizingMask:18];
    [(UILabel *)v3->_textView setBaselineAdjustment:1];
    [(TUITrackTimeRemainingView *)v3 addSubview:v3->_textView];
  }

  return v3;
}

- (void)dynamicProgressChanged:(id)a3
{
  v4 = [a3 formattedProgress];
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_EF608;
  block[3] = &unk_25DF18;
  objc_copyWeak(&v8, &location);
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  v3 = [(TUITrackTimeRemainingView *)self dynamicProgress];
  [v3 unregisterProgressObserver:self];

  v4.receiver = self;
  v4.super_class = TUITrackTimeRemainingView;
  [(TUITrackTimeRemainingView *)&v4 dealloc];
}

@end