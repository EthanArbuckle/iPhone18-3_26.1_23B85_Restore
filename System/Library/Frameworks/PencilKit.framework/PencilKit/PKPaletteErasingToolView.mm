@interface PKPaletteErasingToolView
- (NSString)toolIdentifier;
- (PKPaletteErasingToolView)initWithToolIdentifier:(id)a3 itemIdentifier:(id)a4 variant:(id)a5 configuration:(id)a6;
- (double)weight;
- (id)attributeViewController;
- (void)_updateAttributesViewController;
- (void)_updateAttributesViewControllerWeight;
- (void)erasingAttributesViewControllerDidChangeErasingType:(id)a3;
- (void)erasingAttributesViewControllerDidChangeInkThickness:(id)a3;
- (void)setBitmapEraser:(BOOL)a3;
- (void)setToolProperties:(id)a3 updateUI:(BOOL)a4;
@end

@implementation PKPaletteErasingToolView

- (PKPaletteErasingToolView)initWithToolIdentifier:(id)a3 itemIdentifier:(id)a4 variant:(id)a5 configuration:(id)a6
{
  v10 = a3;
  v13.receiver = self;
  v13.super_class = PKPaletteErasingToolView;
  v11 = [(PKPaletteToolView *)&v13 initWithToolIdentifier:v10 itemIdentifier:a4 variant:a5 configuration:a6];
  if (v11)
  {
    -[PKPaletteErasingToolView setBitmapEraser:](v11, "setBitmapEraser:", [v10 isEqualToString:@"com.apple.ink.eraser"]);
  }

  return v11;
}

- (NSString)toolIdentifier
{
  v2 = [(PKPaletteErasingToolView *)self isBitmapEraser];
  v3 = &PKInkIdentifierEraser;
  if (!v2)
  {
    v3 = &PKInkIdentifierObjectEraser;
  }

  v4 = *v3;

  return v4;
}

- (void)setBitmapEraser:(BOOL)a3
{
  if (self->_bitmapEraser != a3)
  {
    self->_bitmapEraser = a3;
    v9 = [(PKPaletteErasingToolView *)self toolIdentifier];
    v5 = [(PKPaletteToolView *)self configuration];
    v6 = v5;
    if (v5)
    {
      v7 = *(v5 + 176);
    }

    else
    {
      v7 = 0;
    }

    v8 = [PKToolConfiguration defaultConfigurationForToolWithIdentifier:v9 inkVersion:v7];
    [(PKPaletteToolView *)self setConfiguration:v8];
  }
}

- (double)weight
{
  v3 = [(PKPaletteToolView *)self configuration];
  if (v3)
  {
    v4 = v3[22];

    if (v4 == 3)
    {
      return NAN;
    }
  }

  attributeViewController = self->_attributeViewController;

  [(PKPaletteAttributeViewController *)attributeViewController weight];
  return result;
}

- (void)setToolProperties:(id)a3 updateUI:(BOOL)a4
{
  v4 = a4;
  v6.receiver = self;
  v6.super_class = PKPaletteErasingToolView;
  [(PKPaletteToolView *)&v6 setToolProperties:a3];
  if (v4)
  {
    [(PKPaletteErasingToolView *)self _updateAttributesViewController];
  }
}

- (id)attributeViewController
{
  if (!self->_attributeViewController)
  {
    v3 = objc_alloc_init(PKPaletteErasingAttributesViewController);
    [(PKPaletteErasingAttributesViewController *)v3 setDelegate:self];
    attributeViewController = self->_attributeViewController;
    self->_attributeViewController = &v3->super;
  }

  [(PKPaletteErasingToolView *)self _updateAttributesViewController];
  v5 = self->_attributeViewController;

  return v5;
}

- (void)_updateAttributesViewController
{
  v3 = self->_attributeViewController;
  [(PKPaletteAttributeViewController *)v3 setEraserType:[(PKPaletteErasingToolView *)self isBitmapEraser]^ 1];
  v4 = [(PKPaletteToolView *)self configuration];
  v5 = v4;
  if (v4)
  {
    v6 = *(v4 + 176) == 3;
  }

  else
  {
    v6 = 0;
  }

  [(PKPaletteAttributeViewController *)v3 setHideWeightPicker:v6];

  [(PKPaletteErasingToolView *)self _updateAttributesViewControllerWeight];
}

- (void)_updateAttributesViewControllerWeight
{
  v5 = self->_attributeViewController;
  if ([(PKPaletteErasingToolView *)self isBitmapEraser])
  {
    v3 = [(PKPaletteToolView *)self toolProperties];
    v4 = [v3 objectForKeyedSubscript:@"PKInkWeightProperty"];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(PKPaletteErasingToolView *)self isBitmapEraser])
    {
      [v4 doubleValue];
      [(PKPaletteAttributeViewController *)v5 setWeight:?];
    }
  }

  else
  {
    [(PKPaletteAttributeViewController *)v5 setWeight:0.0];
  }
}

- (void)erasingAttributesViewControllerDidChangeErasingType:(id)a3
{
  v4 = a3;
  -[PKPaletteErasingToolView setBitmapEraser:](self, "setBitmapEraser:", [v4 eraserType] == 0);
  [(PKPaletteErasingToolView *)self _updateAttributesViewControllerWeight];
  [(PKPaletteErasingToolView *)self sendActionsForControlEvents:4096];
  v6 = +[PKStatisticsManager sharedStatisticsManager];
  v5 = [v4 eraserType];

  [(PKStatisticsManager *)v6 recordPixelObjectEraseModeChange:v5];
}

- (void)erasingAttributesViewControllerDidChangeInkThickness:(id)a3
{
  v4 = a3;
  v5 = [(PKPaletteToolView *)self toolProperties];
  v11 = [v5 mutableCopy];

  v6 = MEMORY[0x1E696AD98];
  [v4 weight];
  v8 = v7;

  v9 = [v6 numberWithDouble:v8];
  [v11 setObject:v9 forKeyedSubscript:@"PKInkWeightProperty"];

  v10 = [v11 copy];
  [(PKPaletteErasingToolView *)self setToolProperties:v10 updateUI:0];

  [(PKPaletteErasingToolView *)self sendActionsForControlEvents:4096];
}

@end