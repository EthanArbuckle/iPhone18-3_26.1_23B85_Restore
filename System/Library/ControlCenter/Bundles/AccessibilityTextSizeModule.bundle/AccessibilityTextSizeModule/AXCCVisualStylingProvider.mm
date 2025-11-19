@interface AXCCVisualStylingProvider
- (AXCCVisualStylingProvider)init;
- (AXCCVisualStylingProvider)initWithVisualStylingProvider:(id)a3;
- (UIColor)primaryColor;
- (UIColor)quaternaryColor;
- (UIColor)secondaryColor;
- (UIColor)separatorColor;
- (UIColor)tertiaryColor;
- (double)alphaForNowPlayingStyle:(int64_t)a3;
- (id)colorForNowPlayingStyle:(int64_t)a3;
- (int64_t)blendModeForNowPlayingStyle:(int64_t)a3;
- (int64_t)visualStyleForNowPlayingStyle:(int64_t)a3;
- (void)applyStyle:(int64_t)a3 toView:(id)a4;
- (void)applyStyle:(int64_t)a3 withBlock:(id)a4;
- (void)notifyObservers;
- (void)setPrimaryColor:(id)a3;
- (void)setQuaternaryColor:(id)a3;
- (void)setSecondaryColor:(id)a3;
- (void)setSeparatorColor:(id)a3;
- (void)setSupportsVibrancy:(BOOL)a3;
- (void)setTertiaryColor:(id)a3;
- (void)setVisualStylingProvider:(id)a3;
@end

@implementation AXCCVisualStylingProvider

- (AXCCVisualStylingProvider)init
{
  v6.receiver = self;
  v6.super_class = AXCCVisualStylingProvider;
  v2 = [(AXCCVisualStylingProvider *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x29EDB9FD0] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

- (AXCCVisualStylingProvider)initWithVisualStylingProvider:(id)a3
{
  v4 = a3;
  v5 = [(AXCCVisualStylingProvider *)self init];
  v6 = v5;
  if (v5)
  {
    [(AXCCVisualStylingProvider *)v5 setVisualStylingProvider:v4];
  }

  return v6;
}

- (UIColor)primaryColor
{
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider)
  {
    v4 = [(MTVisualStylingProvider *)visualStylingProvider _visualStylingForStyle:0];
    v5 = [v4 color];
  }

  else
  {
    v5 = [(AXCCVisualStylingProvider *)self colorForNowPlayingStyle:0];
  }

  return v5;
}

- (void)setPrimaryColor:(id)a3
{
  objc_storeStrong(&self->_primaryColor, a3);
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
    v5 = [v4 color];
  }

  else
  {
    v5 = [(AXCCVisualStylingProvider *)self colorForNowPlayingStyle:1];
  }

  return v5;
}

- (void)setSecondaryColor:(id)a3
{
  objc_storeStrong(&self->_secondaryColor, a3);
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
    v5 = [v4 color];
  }

  else
  {
    v5 = [(AXCCVisualStylingProvider *)self colorForNowPlayingStyle:2];
  }

  return v5;
}

- (void)setTertiaryColor:(id)a3
{
  objc_storeStrong(&self->_tertiaryColor, a3);
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
    v5 = [v4 color];
  }

  else
  {
    v5 = [(AXCCVisualStylingProvider *)self colorForNowPlayingStyle:3];
  }

  return v5;
}

- (void)setQuaternaryColor:(id)a3
{
  objc_storeStrong(&self->_quaternaryColor, a3);
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
    v5 = [v4 color];
  }

  else
  {
    v5 = [(AXCCVisualStylingProvider *)self colorForNowPlayingStyle:4];
  }

  return v5;
}

- (void)setSeparatorColor:(id)a3
{
  objc_storeStrong(&self->_separatorColor, a3);
  if (!self->_visualStylingProvider)
  {

    [(AXCCVisualStylingProvider *)self notifyObservers];
  }
}

- (void)setSupportsVibrancy:(BOOL)a3
{
  if (self->_supportsVibrancy != a3)
  {
    self->_supportsVibrancy = a3;
    [(AXCCVisualStylingProvider *)self notifyObservers];
  }
}

- (void)setVisualStylingProvider:(id)a3
{
  v5 = a3;
  visualStylingProvider = self->_visualStylingProvider;
  if (visualStylingProvider != v5)
  {
    v7 = v5;
    [(MTVisualStylingProvider *)visualStylingProvider _removeObserver:self];
    objc_storeStrong(&self->_visualStylingProvider, a3);
    [(MTVisualStylingProvider *)self->_visualStylingProvider _addObserver:self];
    visualStylingProvider = [(AXCCVisualStylingProvider *)self notifyObservers];
    v5 = v7;
  }

  MEMORY[0x2A1C71028](visualStylingProvider, v5);
}

- (void)applyStyle:(int64_t)a3 toView:(id)a4
{
  visualStylingProvider = self->_visualStylingProvider;
  v7 = a4;
  if (visualStylingProvider)
  {
    v9 = [(MTVisualStylingProvider *)self->_visualStylingProvider _visualStylingForStyle:[(AXCCVisualStylingProvider *)self visualStyleForNowPlayingStyle:a3]];
    [v7 mt_replaceVisualStyling:?];
  }

  else
  {
    v9 = [(AXCCVisualStylingProvider *)self colorForNowPlayingStyle:a3];
    [(AXCCVisualStylingProvider *)self alphaForNowPlayingStyle:a3];
    [v7 axcc_applyVisualStylingWithColor:v9 alpha:-[AXCCVisualStylingProvider blendModeForNowPlayingStyle:](self blendMode:{"blendModeForNowPlayingStyle:", a3), v8}];
  }
}

- (void)applyStyle:(int64_t)a3 withBlock:(id)a4
{
  visualStylingProvider = self->_visualStylingProvider;
  v7 = a4;
  if (visualStylingProvider)
  {
    v8 = [(MTVisualStylingProvider *)self->_visualStylingProvider _visualStylingForStyle:[(AXCCVisualStylingProvider *)self visualStyleForNowPlayingStyle:a3]];
    v9 = [v8 color];
  }

  else
  {
    v9 = [(AXCCVisualStylingProvider *)self colorForNowPlayingStyle:a3];
  }

  v7[2](v7, v9);
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

- (int64_t)visualStyleForNowPlayingStyle:(int64_t)a3
{
  if ((a3 - 1) > 3)
  {
    return 0;
  }

  else
  {
    return qword_29C9490C8[a3 - 1];
  }
}

- (id)colorForNowPlayingStyle:(int64_t)a3
{
  if (a3 > 1)
  {
    switch(a3)
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

  if (a3)
  {
    if (a3 != 1)
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

- (int64_t)blendModeForNowPlayingStyle:(int64_t)a3
{
  if (self->_supportsVibrancy && (a3 - 1) <= 3)
  {
    return qword_29C9490E8[a3 - 1];
  }

  else
  {
    return 0;
  }
}

- (double)alphaForNowPlayingStyle:(int64_t)a3
{
  result = 1.0;
  if (self->_supportsVibrancy && (a3 - 1) <= 3)
  {
    return dbl_29C949108[a3 - 1];
  }

  return result;
}

@end