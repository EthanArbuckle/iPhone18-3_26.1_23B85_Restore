@interface PKSqueezePaletteViewContext
- (id)copyWithZone:(_NSZone *)zone;
- (uint64_t)canShowResetHandwritingEducationPane;
- (uint64_t)canShowTapToRadar;
- (void)setSelectedColor:(uint64_t)color;
@end

@implementation PKSqueezePaletteViewContext

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  if (v5)
  {
    v6 = [(NSArray *)self->_tools copyWithZone:zone];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    v8 = [(PKTool *)self->_selectedTool copyWithZone:zone];
    v9 = *(v5 + 24);
    *(v5 + 24) = v8;

    v10 = [(NSArray *)self->_swatchColors copyWithZone:zone];
    v11 = *(v5 + 32);
    *(v5 + 32) = v10;

    v12 = [(UIColor *)self->_selectedColor copyWithZone:zone];
    v13 = *(v5 + 40);
    *(v5 + 40) = v12;

    *(v5 + 8) = self->_supportsCanvasElements;
    *(v5 + 48) = self->_colorMaximumLinearExposure;
  }

  return v5;
}

- (uint64_t)canShowTapToRadar
{
  v12 = *MEMORY[0x1E69E9840];
  if (!self || !os_variant_has_internal_diagnostics())
  {
    return 0;
  }

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v4 = *(self + 16);
  v2 = [v4 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v5 = *v8;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v7 + 1) + 8 * i) _isHandwritingTool])
        {
          v2 = 1;
          goto LABEL_15;
        }
      }

      v2 = [v4 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  return v2;
}

- (uint64_t)canShowResetHandwritingEducationPane
{
  if (result)
  {
    v1 = +[PKHandwritingEducationPaneSettings sharedInstance];
    canShowResetPaneInPalette = [(PKHandwritingEducationPaneSettings *)v1 canShowResetPaneInPalette];

    return canShowResetPaneInPalette;
  }

  return result;
}

- (void)setSelectedColor:(uint64_t)color
{
  if (color)
  {
    objc_storeStrong((color + 40), a2);
  }
}

@end