@interface TUIStyledView
+ (id)renderModelWithStyle:(id)a3 identifier:(id)a4;
- (void)applyLayoutAttributes:(id)a3;
- (void)prepareForReuse;
- (void)viewDidEndDisplay;
@end

@implementation TUIStyledView

+ (id)renderModelWithStyle:(id)a3 identifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"TUIReuseIdentifierStyledView" identifier:v5 submodel:0 style:v6];

  return v7;
}

- (void)applyLayoutAttributes:(id)a3
{
  v8.receiver = self;
  v8.super_class = TUIStyledView;
  v4 = a3;
  [(TUIReusableBaseView *)&v8 applyLayoutAttributes:v4];
  v5 = [v4 renderModel];

  v6 = [v5 style];
  v7 = v6;
  if (v6 != self->_currentStyle && ([(TUIRenderStyling *)v6 isEqualToStyle:?]& 1) == 0)
  {
    [(TUIRenderStyling *)self->_currentStyle removeStylingFromView:self];
    [(TUIRenderStyling *)v7 applyStylingToView:self];
    objc_storeStrong(&self->_currentStyle, v7);
  }

  [(TUIStyledView *)self setAutoresizesSubviews:1];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = TUIStyledView;
  [(TUIReusableBaseView *)&v4 prepareForReuse];
  [(TUIRenderStyling *)self->_currentStyle removeStylingFromView:self];
  currentStyle = self->_currentStyle;
  self->_currentStyle = 0;
}

- (void)viewDidEndDisplay
{
  v3.receiver = self;
  v3.super_class = TUIStyledView;
  [(TUIReusableBaseView *)&v3 viewDidEndDisplay];
  [(TUIStyledView *)self prepareForReuse];
}

@end