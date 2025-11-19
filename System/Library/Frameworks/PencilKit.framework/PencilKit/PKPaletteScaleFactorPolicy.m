@interface PKPaletteScaleFactorPolicy
- (double)scaleFactorForWindowBounds:(CGRect)a3 paletteView:(id)a4;
@end

@implementation PKPaletteScaleFactorPolicy

- (double)scaleFactorForWindowBounds:(CGRect)a3 paletteView:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  v32 = *MEMORY[0x1E69E9840];
  v6 = a4;
  [v6 paletteScaleFactor];
  v8 = v7;
  [v6 paletteSizeForEdge:4];
  v10 = v9;
  [v6 paletteSizeForEdge:2];
  if (!v6 || ((v12 = 1.0 / v8 * v10, v13 = 1.0 / v8 * v11, v14 = height + -80.0, v12 <= width + -80.0) ? (v15 = v13 <= v14) : (v15 = 0), v15))
  {
    v19 = 0;
    if (width >= height)
    {
      v20 = width;
    }

    else
    {
      v20 = height;
    }

    if (width >= height)
    {
      width = height;
    }

    v21 = &qword_1C801E718;
    while (v20 > *(v21 - 2) || width > *(v21 - 1))
    {
      ++v19;
      v21 += 3;
      if (v19 == 8)
      {
        v19 = 0x7FFFFFFFFFFFFFFFLL;
        v18 = 1.0;
        goto LABEL_24;
      }
    }

    v18 = *v21;
LABEL_24:
    v22 = os_log_create("com.apple.pencilkit", "PKPalette");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v24 = 134218752;
      v25 = v20;
      v26 = 2048;
      v27 = width;
      v28 = 2048;
      v29 = v18;
      v30 = 2048;
      v31 = v19;
      _os_log_impl(&dword_1C7CCA000, v22, OS_LOG_TYPE_INFO, "Scale factor for windowBoundsWidth: %f, windowBoundsHeight: %f is scaleFactor: %f, policy: %ld", &v24, 0x2Au);
    }
  }

  else
  {
    v16 = (width + -80.0) / v12;
    if (v16 > 1.0)
    {
      v16 = 1.0;
    }

    v17 = v14 / v13;
    if (v17 > 1.0)
    {
      v17 = 1.0;
    }

    if (v16 >= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }
  }

  return v18;
}

@end