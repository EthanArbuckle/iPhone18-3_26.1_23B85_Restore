@interface AXCCVisualStylingProvider
- (AXCCVisualStylingProvider)init;
- (AXCCVisualStylingProvider)initWithVisualStylingProvider:(id)provider;
- (UIColor)primaryColor;
- (UIColor)quaternaryColor;
- (UIColor)secondaryColor;
- (UIColor)separatorColor;
- (UIColor)tertiaryColor;
- (double)alphaForNowPlayingStyle:(int64_t)style;
- (id)colorForNowPlayingStyle:(int64_t)style;
- (int64_t)blendModeForNowPlayingStyle:(int64_t)style;
- (int64_t)visualStyleForNowPlayingStyle:(int64_t)style;
- (void)applyStyle:(int64_t)style toView:(id)view;
- (void)applyStyle:(int64_t)style withBlock:(id)block;
- (void)notifyObservers;
- (void)setPrimaryColor:(id)color;
- (void)setQuaternaryColor:(id)color;
- (void)setSecondaryColor:(id)color;
- (void)setSeparatorColor:(id)color;
- (void)setSupportsVibrancy:(BOOL)vibrancy;
- (void)setTertiaryColor:(id)color;
- (void)setVisualStylingProvider:(id)provider;
@end

@implementation AXCCVisualStylingProvider

- (AXCCVisualStylingProvider)init
{
  v6.receiver = self;
  v6.super_class = AXCCVisualStylingProvider;
  v2 = [(AXCCVisualStylingProvider *)&v6 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x29EDB9FD0] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;
  }

  return v2;
}

- (AXCCVisualStylingProvider)initWithVisualStylingProvider:(id)provider
{
  providerCopy = provider;
  v5 = [(AXCCVisualStylingProvider *)self init];
  v6 = v5;
  if (v5)
  {
    [(AXCCVisualStylingProvider *)v5 setVisualStylingProvider:providerCopy];
  }

  return v6;
}

- (UIColor)primaryColor
{
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider)
  {
    v4 = [(MTVisualStylingProvider *)visualStylingProvider _visualStylingForStyle:0];
    color = [v4 color];
  }

  else
  {
    color = [(AXCCVisualStylingProvider *)self colorForNowPlayingStyle:0];
  }

  return color;
}

- (void)setPrimaryColor:(id)color
{
  objc_storeStrong(&self->_primaryColor, color);
  if (!self->_visualStylingProvider)
  {

    [(AXCCVisualStylingProvider *)self notifyObservers];
  }
}

- (UIColor)secondaryColor
{
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider)
  {
    v4 = [(MTVisualStylingProvider *)visualStylingProvider _visualStylingForStyle:1];
    color = [v4 color];
  }

  else
  {
    color = [(AXCCVisualStylingProvider *)self colorForNowPlayingStyle:1];
  }

  return color;
}

- (void)setSecondaryColor:(id)color
{
  objc_storeStrong(&self->_secondaryColor, color);
  if (!self->_visualStylingProvider)
  {

    [(AXCCVisualStylingProvider *)self notifyObservers];
  }
}

- (UIColor)tertiaryColor
{
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider)
  {
    v4 = [(MTVisualStylingProvider *)visualStylingProvider _visualStylingForStyle:2];
    color = [v4 color];
  }

  else
  {
    color = [(AXCCVisualStylingProvider *)self colorForNowPlayingStyle:2];
  }

  return color;
}

- (void)setTertiaryColor:(id)color
{
  objc_storeStrong(&self->_tertiaryColor, color);
  if (!self->_visualStylingProvider)
  {

    [(AXCCVisualStylingProvider *)self notifyObservers];
  }
}

- (UIColor)quaternaryColor
{
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider)
  {
    v4 = [(MTVisualStylingProvider *)visualStylingProvider _visualStylingForStyle:3];
    color = [v4 color];
  }

  else
  {
    color = [(AXCCVisualStylingProvider *)self colorForNowPlayingStyle:3];
  }

  return color;
}

- (void)setQuaternaryColor:(id)color
{
  objc_storeStrong(&self->_quaternaryColor, color);
  if (!self->_visualStylingProvider)
  {

    [(AXCCVisualStylingProvider *)self notifyObservers];
  }
}

- (UIColor)separatorColor
{
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider)
  {
    v4 = [(MTVisualStylingProvider *)visualStylingProvider _visualStylingForStyle:5];
    color = [v4 color];
  }

  else
  {
    color = [(AXCCVisualStylingProvider *)self colorForNowPlayingStyle:4];
  }

  return color;
}

- (void)setSeparatorColor:(id)color
{
  objc_storeStrong(&self->_separatorColor, color);
  if (!self->_visualStylingProvider)
  {

    [(AXCCVisualStylingProvider *)self notifyObservers];
  }
}

- (void)setSupportsVibrancy:(BOOL)vibrancy
{
  if (self->_supportsVibrancy != vibrancy)
  {
    self->_supportsVibrancy = vibrancy;
    [(AXCCVisualStylingProvider *)self notifyObservers];
  }
}

- (void)setVisualStylingProvider:(id)provider
{
  providerCopy = provider;
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider != providerCopy)
  {
    v7 = providerCopy;
    [(MTVisualStylingProvider *)visualStylingProvider _removeObserver:self];
    objc_storeStrong(&self->_visualStylingProvider, provider);
    [(MTVisualStylingProvider *)self->_visualStylingProvider _addObserver:self];
    visualStylingProvider = [(AXCCVisualStylingProvider *)self notifyObservers];
    providerCopy = v7;
  }

  MEMORY[0x2A1C71028](visualStylingProvider, providerCopy);
}

- (void)applyStyle:(int64_t)style toView:(id)view
{
  visualStylingProvider = self->_visualStylingProvider;
  viewCopy = view;
  if (visualStylingProvider)
  {
    v9 = [(MTVisualStylingProvider *)self->_visualStylingProvider _visualStylingForStyle:[(AXCCVisualStylingProvider *)self visualStyleForNowPlayingStyle:style]];
    [viewCopy mt_replaceVisualStyling:?];
  }

  else
  {
    v9 = [(AXCCVisualStylingProvider *)self colorForNowPlayingStyle:style];
    [(AXCCVisualStylingProvider *)self alphaForNowPlayingStyle:style];
    [viewCopy axcc_applyVisualStylingWithColor:v9 alpha:-[AXCCVisualStylingProvider blendModeForNowPlayingStyle:](self blendMode:{"blendModeForNowPlayingStyle:", style), v8}];
  }
}

- (void)applyStyle:(int64_t)style withBlock:(id)block
{
  visualStylingProvider = self->_visualStylingProvider;
  blockCopy = block;
  if (visualStylingProvider)
  {
    v8 = [(MTVisualStylingProvider *)self->_visualStylingProvider _visualStylingForStyle:[(AXCCVisualStylingProvider *)self visualStyleForNowPlayingStyle:style]];
    color = [v8 color];
  }

  else
  {
    color = [(AXCCVisualStylingProvider *)self colorForNowPlayingStyle:style];
  }

  blockCopy[2](blockCopy, color);
}

- (void)notifyObservers
{
  v13 = *MEMORY[0x29EDCA608];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [(NSHashTable *)self->_observers copy];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7++) visualStylingProviderDidChange:self];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (int64_t)visualStyleForNowPlayingStyle:(int64_t)style
{
  if ((style - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_29C9490C8[style - 1];
  }
}

- (id)colorForNowPlayingStyle:(int64_t)style
{
  if (style > 1)
  {
    switch(style)
    {
      case 2:
        tertiaryColor = self->_tertiaryColor;
        if (!tertiaryColor)
        {
          self = [MEMORY[0x29EDC7A00] tertiaryLabelColor];
          goto LABEL_17;
        }

        break;
      case 3:
        tertiaryColor = self->_quaternaryColor;
        if (!tertiaryColor)
        {
          self = [MEMORY[0x29EDC7A00] quaternaryLabelColor];
          goto LABEL_17;
        }

        break;
      case 4:
        tertiaryColor = self->_separatorColor;
        if (!tertiaryColor)
        {
          goto LABEL_20;
        }

        break;
      default:
        goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (style)
  {
    if (style != 1)
    {
      goto LABEL_17;
    }

    tertiaryColor = self->_secondaryColor;
    if (!tertiaryColor)
    {
      self = [MEMORY[0x29EDC7A00] secondaryLabelColor];
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  tertiaryColor = self->_primaryColor;
  if (tertiaryColor)
  {
LABEL_16:
    self = tertiaryColor;
    goto LABEL_17;
  }

LABEL_20:
  self = [MEMORY[0x29EDC7A00] labelColor];
LABEL_17:

  return self;
}

- (int64_t)blendModeForNowPlayingStyle:(int64_t)style
{
  if (self->_supportsVibrancy && (style - 1) <= 3)
  {
    return qword_29C9490E8[style - 1];
  }

  else
  {
    return 0;
  }
}

- (double)alphaForNowPlayingStyle:(int64_t)style
{
  result = 1.0;
  if (self->_supportsVibrancy && (style - 1) <= 3)
  {
    return dbl_29C949108[style - 1];
  }

  return result;
}

@end