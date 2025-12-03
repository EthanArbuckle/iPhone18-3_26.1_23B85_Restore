@interface PKPaletteErasingToolView
- (NSString)toolIdentifier;
- (PKPaletteErasingToolView)initWithToolIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier variant:(id)variant configuration:(id)configuration;
- (double)weight;
- (id)attributeViewController;
- (void)_updateAttributesViewController;
- (void)_updateAttributesViewControllerWeight;
- (void)erasingAttributesViewControllerDidChangeErasingType:(id)type;
- (void)erasingAttributesViewControllerDidChangeInkThickness:(id)thickness;
- (void)setBitmapEraser:(BOOL)eraser;
- (void)setToolProperties:(id)properties updateUI:(BOOL)i;
@end

@implementation PKPaletteErasingToolView

- (PKPaletteErasingToolView)initWithToolIdentifier:(id)identifier itemIdentifier:(id)itemIdentifier variant:(id)variant configuration:(id)configuration
{
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = PKPaletteErasingToolView;
  v11 = [(PKPaletteToolView *)&v13 initWithToolIdentifier:identifierCopy itemIdentifier:itemIdentifier variant:variant configuration:configuration];
  if (v11)
  {
    -[PKPaletteErasingToolView setBitmapEraser:](v11, "setBitmapEraser:", [identifierCopy isEqualToString:@"com.apple.ink.eraser"]);
  }

  return v11;
}

- (NSString)toolIdentifier
{
  isBitmapEraser = [(PKPaletteErasingToolView *)self isBitmapEraser];
  v3 = &PKInkIdentifierEraser;
  if (!isBitmapEraser)
  {
    v3 = &PKInkIdentifierObjectEraser;
  }

  v4 = *v3;

  return v4;
}

- (void)setBitmapEraser:(BOOL)eraser
{
  if (self->_bitmapEraser != eraser)
  {
    self->_bitmapEraser = eraser;
    toolIdentifier = [(PKPaletteErasingToolView *)self toolIdentifier];
    configuration = [(PKPaletteToolView *)self configuration];
    v6 = configuration;
    if (configuration)
    {
      v7 = *(configuration + 176);
    }

    else
    {
      v7 = 0;
    }

    v8 = [PKToolConfiguration defaultConfigurationForToolWithIdentifier:toolIdentifier inkVersion:v7];
    [(PKPaletteToolView *)self setConfiguration:v8];
  }
}

- (double)weight
{
  configuration = [(PKPaletteToolView *)self configuration];
  if (configuration)
  {
    v4 = configuration[22];

    if (v4 == 3)
    {
      return NAN;
    }
  }

  attributeViewController = self->_attributeViewController;

  [(PKPaletteAttributeViewController *)attributeViewController weight];
  return result;
}

- (void)setToolProperties:(id)properties updateUI:(BOOL)i
{
  iCopy = i;
  v6.receiver = self;
  v6.super_class = PKPaletteErasingToolView;
  [(PKPaletteToolView *)&v6 setToolProperties:properties];
  if (iCopy)
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
  configuration = [(PKPaletteToolView *)self configuration];
  v5 = configuration;
  if (configuration)
  {
    v6 = *(configuration + 176) == 3;
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
    toolProperties = [(PKPaletteToolView *)self toolProperties];
    v4 = [toolProperties objectForKeyedSubscript:@"PKInkWeightProperty"];

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

- (void)erasingAttributesViewControllerDidChangeErasingType:(id)type
{
  typeCopy = type;
  -[PKPaletteErasingToolView setBitmapEraser:](self, "setBitmapEraser:", [typeCopy eraserType] == 0);
  [(PKPaletteErasingToolView *)self _updateAttributesViewControllerWeight];
  [(PKPaletteErasingToolView *)self sendActionsForControlEvents:4096];
  v6 = +[PKStatisticsManager sharedStatisticsManager];
  eraserType = [typeCopy eraserType];

  [(PKStatisticsManager *)v6 recordPixelObjectEraseModeChange:eraserType];
}

- (void)erasingAttributesViewControllerDidChangeInkThickness:(id)thickness
{
  thicknessCopy = thickness;
  toolProperties = [(PKPaletteToolView *)self toolProperties];
  v11 = [toolProperties mutableCopy];

  v6 = MEMORY[0x1E696AD98];
  [thicknessCopy weight];
  v8 = v7;

  v9 = [v6 numberWithDouble:v8];
  [v11 setObject:v9 forKeyedSubscript:@"PKInkWeightProperty"];

  v10 = [v11 copy];
  [(PKPaletteErasingToolView *)self setToolProperties:v10 updateUI:0];

  [(PKPaletteErasingToolView *)self sendActionsForControlEvents:4096];
}

@end