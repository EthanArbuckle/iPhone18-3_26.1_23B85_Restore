@interface PKPaletteConcreteBaseTool
- (BOOL)isCustomTool;
- (BOOL)isGenerationTool;
- (BOOL)isRulerTool;
- (PKPaletteErasingTool)erasingTool;
- (PKPaletteHandwritingTool)handwritingTool;
- (PKPaletteInkingTool)inkingTool;
- (PKToolConfiguration)configuration;
@end

@implementation PKPaletteConcreteBaseTool

- (PKToolConfiguration)configuration
{
  cachedConfiguration = self->_cachedConfiguration;
  if (!cachedConfiguration)
  {
    v4 = [(PKPaletteConcreteBaseTool *)self toolIdentifier];
    v5 = [PKToolConfiguration defaultConfigurationForToolWithIdentifier:v4];
    v6 = self->_cachedConfiguration;
    self->_cachedConfiguration = v5;

    cachedConfiguration = self->_cachedConfiguration;
  }

  return cachedConfiguration;
}

- (PKPaletteInkingTool)inkingTool
{
  if ([(PKPaletteConcreteBaseTool *)self isInkingTool])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isRulerTool
{
  v2 = [(PKPaletteConcreteBaseTool *)self toolIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.tool.ruler"];

  return v3;
}

- (PKPaletteErasingTool)erasingTool
{
  if ([(PKPaletteConcreteBaseTool *)self isErasingTool])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isGenerationTool
{
  v2 = [(PKPaletteConcreteBaseTool *)self toolIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.ink.generationtool"];

  return v3;
}

- (PKPaletteHandwritingTool)handwritingTool
{
  if ([(PKPaletteConcreteBaseTool *)self isHandwritingTool])
  {
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isCustomTool
{
  v2 = [(PKPaletteConcreteBaseTool *)self toolIdentifier];
  v3 = [v2 isEqualToString:@"com.apple.ink.custom"];

  return v3;
}

@end