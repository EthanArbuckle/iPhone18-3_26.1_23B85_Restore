@interface TUIStyledView
+ (id)renderModelWithStyle:(id)style identifier:(id)identifier;
- (void)applyLayoutAttributes:(id)attributes;
- (void)prepareForReuse;
- (void)viewDidEndDisplay;
@end

@implementation TUIStyledView

+ (id)renderModelWithStyle:(id)style identifier:(id)identifier
{
  identifierCopy = identifier;
  styleCopy = style;
  v7 = [[TUIRenderModelView alloc] initWithReuseIdentifier:@"TUIReuseIdentifierStyledView" identifier:identifierCopy submodel:0 style:styleCopy];

  return v7;
}

- (void)applyLayoutAttributes:(id)attributes
{
  v8.receiver = self;
  v8.super_class = TUIStyledView;
  attributesCopy = attributes;
  [(TUIReusableBaseView *)&v8 applyLayoutAttributes:attributesCopy];
  renderModel = [attributesCopy renderModel];

  style = [renderModel style];
  v7 = style;
  if (style != self->_currentStyle && ([(TUIRenderStyling *)style isEqualToStyle:?]& 1) == 0)
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