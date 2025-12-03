@interface TUITrackTimeRemainingView
+ (id)renderModelWithIdentifier:(id)identifier dynamicProgress:(id)progress style:(id)style;
- (TUITrackTimeRemainingView)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
- (void)dealloc;
- (void)dynamicProgressChanged:(id)changed;
@end

@implementation TUITrackTimeRemainingView

+ (id)renderModelWithIdentifier:(id)identifier dynamicProgress:(id)progress style:(id)style
{
  styleCopy = style;
  progressCopy = progress;
  identifierCopy = identifier;
  v10 = objc_alloc_init(_TUITrackTimeRemainingRenderModel);
  [(_TUITrackTimeRemainingRenderModel *)v10 setDynamicProgress:progressCopy];

  [(_TUITrackTimeRemainingRenderModel *)v10 setStyle:styleCopy];
  v11 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"TUIReuseIdentifierTrackTimeRemainingView" identifier:identifierCopy submodel:v10];

  return v11;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v15.receiver = self;
  v15.super_class = TUITrackTimeRemainingView;
  attributesCopy = attributes;
  [(TUIReusableBaseView *)&v15 applyLayoutAttributes:attributesCopy];
  renderModel = [attributesCopy renderModel];

  submodel = [renderModel submodel];
  renderModel = self->_renderModel;
  self->_renderModel = submodel;

  dynamicProgress = [(_TUITrackTimeRemainingRenderModel *)self->_renderModel dynamicProgress];
  dynamicProgress = self->_dynamicProgress;
  self->_dynamicProgress = dynamicProgress;

  style = [(_TUITrackTimeRemainingRenderModel *)self->_renderModel style];
  style = self->_style;
  self->_style = style;

  textColor = [(TUITextContentStyler *)self->_style textColor];
  [(UILabel *)self->_textView setTextColor:textColor];

  font = [(TUITextContentStyler *)self->_style font];
  [(UILabel *)self->_textView setFont:font];

  dynamicProgress2 = [(TUITrackTimeRemainingView *)self dynamicProgress];
  [dynamicProgress2 registerProgressObserver:self];
}

- (TUITrackTimeRemainingView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = TUITrackTimeRemainingView;
  v3 = [(TUITrackTimeRemainingView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)dynamicProgressChanged:(id)changed
{
  formattedProgress = [changed formattedProgress];
  objc_initWeak(&location, self);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_EF608;
  block[3] = &unk_25DF18;
  objc_copyWeak(&v8, &location);
  v7 = formattedProgress;
  v5 = formattedProgress;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)dealloc
{
  dynamicProgress = [(TUITrackTimeRemainingView *)self dynamicProgress];
  [dynamicProgress unregisterProgressObserver:self];

  v4.receiver = self;
  v4.super_class = TUITrackTimeRemainingView;
  [(TUITrackTimeRemainingView *)&v4 dealloc];
}

@end