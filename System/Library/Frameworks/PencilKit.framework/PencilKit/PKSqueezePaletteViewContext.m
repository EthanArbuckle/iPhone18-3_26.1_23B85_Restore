@interface PKSqueezePaletteViewContext
- (id)copyWithZone:(_NSZone *)a3;
- (uint64_t)canShowResetHandwritingEducationPane;
- (uint64_t)canShowTapToRadar;
- (void)setSelectedColor:(uint64_t)a1;
@end

@implementation PKSqueezePaletteViewContext

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  if (v5)
  {
    v6 = [(NSArray *)self->_tools copyWithZone:a3];
    v7 = *(v5 + 16);
    *(v5 + 16) = v6;

    v8 = [(PKTool *)self->_selectedTool copyWithZone:a3];
    v9 = *(v5 + 24);
    *(v5 + 24) = v8;

    v10 = [(NSArray *)self->_swatchColors copyWithZone:a3];
    v11 = *(v5 + 32);
    *(v5 + 32) = v10;

    v12 = [(UIColor *)self->_selectedColor copyWithZone:a3];
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
  if (!a1 || !os_variant_has_internal_diagnostics())
  {
    return 0;
  }

  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v4 = *(a1 + 16);
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
    v2 = [(PKHandwritingEducationPaneSettings *)v1 canShowResetPaneInPalette];

    return v2;
  }

  return result;
}

- (void)setSelectedColor:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

@end