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
    toolIdentifier = [(PKPaletteConcreteBaseTool *)self toolIdentifier];
    v5 = [PKToolConfiguration defaultConfigurationForToolWithIdentifier:toolIdentifier];
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isRulerTool
{
  toolIdentifier = [(PKPaletteConcreteBaseTool *)self toolIdentifier];
  v3 = [toolIdentifier isEqualToString:@"com.apple.tool.ruler"];

  return v3;
}

- (PKPaletteErasingTool)erasingTool
{
  if ([(PKPaletteConcreteBaseTool *)self isErasingTool])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isGenerationTool
{
  toolIdentifier = [(PKPaletteConcreteBaseTool *)self toolIdentifier];
  v3 = [toolIdentifier isEqualToString:@"com.apple.ink.generationtool"];

  return v3;
}

- (PKPaletteHandwritingTool)handwritingTool
{
  if ([(PKPaletteConcreteBaseTool *)self isHandwritingTool])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isCustomTool
{
  toolIdentifier = [(PKPaletteConcreteBaseTool *)self toolIdentifier];
  v3 = [toolIdentifier isEqualToString:@"com.apple.ink.custom"];

  return v3;
}

@end