@interface CASDFKeyFillHighlightEffect
+ (id)defaultValues;
- (id)copyWithZone:(_NSZone *)zone;
- (void)configureLayer:(void *)layer transaction:(void *)transaction;
- (void)dealloc;
@end

@implementation CASDFKeyFillHighlightEffect

- (void)configureLayer:(void *)layer transaction:(void *)transaction
{
  v64 = *MEMORY[0x1E69E9840];
  v60 = 0uLL;
  v61 = 0;
  keyColor = [(CASDFKeyFillHighlightEffect *)self keyColor];
  if (keyColor)
  {
    v9 = keyColor;
    v10 = CA::Context::current_colorspace(transaction, v8);
    CA::Render::convert_cgcolor(v9, v10, &v60, 0, v11);
  }

  v62 = v60;
  v63 = v61;
  [(CASDFKeyFillHighlightEffect *)self keyHeightScale];
  v13 = v12;
  [(CASDFKeyFillHighlightEffect *)self keyHeightOffset];
  v15 = v14;
  [(CASDFKeyFillHighlightEffect *)self keySpreadScale];
  v17 = v16;
  [(CASDFKeyFillHighlightEffect *)self keySpreadOffset];
  v19 = v18;
  fillColor = [(CASDFKeyFillHighlightEffect *)self fillColor];
  if (fillColor)
  {
    v22 = fillColor;
    v23 = CA::Context::current_colorspace(transaction, v21);
    CA::Render::convert_cgcolor(v22, v23, &v60, 0, v24);
  }

  v25 = v19;
  v26 = v17;
  v58 = v26;
  v59 = v25;
  v27 = v15;
  v57 = v27;
  v28 = v13;
  v55 = v28;
  [(CASDFKeyFillHighlightEffect *)self fillHeightScale];
  *&v29 = v29;
  v56 = LODWORD(v29);
  [(CASDFKeyFillHighlightEffect *)self fillHeightOffset];
  *&v30 = v30;
  v54 = LODWORD(v30);
  [(CASDFKeyFillHighlightEffect *)self fillSpreadScale];
  *&v31 = v31;
  v53 = LODWORD(v31);
  [(CASDFKeyFillHighlightEffect *)self fillSpreadOffset];
  *&v32 = v32;
  v52 = LODWORD(v32);
  [(CASDFKeyFillHighlightEffect *)self keyHeight];
  *&v33 = v33;
  v51 = LODWORD(v33);
  [(CASDFKeyFillHighlightEffect *)self keyAngle];
  v35 = v34;
  [(CASDFKeyFillHighlightEffect *)self keySpread];
  v37 = v36;
  [(CASDFKeyFillHighlightEffect *)self keyAmount];
  v39 = v38;
  [(CASDFKeyFillHighlightEffect *)self fillHeight];
  v41 = v40;
  [(CASDFKeyFillHighlightEffect *)self fillAngle];
  v43 = v42;
  [(CASDFKeyFillHighlightEffect *)self fillSpread];
  v45 = v44;
  [(CASDFKeyFillHighlightEffect *)self fillAmount];
  v47 = v46;
  [(CASDFKeyFillHighlightEffect *)self curvature];
  v49 = v48;
  global = [(CASDFKeyFillHighlightEffect *)self global];
  *(layer + 136) = 8;
  *(layer + 24) = v62;
  *(layer + 10) = v63;
  *(layer + 11) = v55;
  *(layer + 12) = v57;
  *(layer + 13) = v58;
  *(layer + 14) = v59;
  *(layer + 60) = v60;
  *(layer + 19) = v61;
  *(layer + 20) = v56;
  *(layer + 21) = v54;
  *(layer + 22) = v53;
  *(layer + 23) = v52;
  *(layer + 24) = v51;
  *(layer + 25) = v35;
  *(layer + 26) = v37;
  *(layer + 27) = v39;
  *(layer + 28) = v41;
  *(layer + 29) = v43;
  *(layer + 30) = v45;
  *(layer + 31) = v47;
  *(layer + 32) = v49;
  *(layer + 132) = global;
  *(layer + 135) = 0;
  *(layer + 133) = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CASDFKeyFillHighlightEffect;
  v4 = [(CASDFEffect *)&v6 copyWithZone:zone];
  if (v4)
  {
    v4[2] = CGColorRetain(self->_keyColor);
    v4[3] = *&self->_keyHeightScale;
    v4[4] = *&self->_keyHeightOffset;
    v4[5] = *&self->_keySpreadScale;
    v4[6] = *&self->_keySpreadOffset;
    v4[7] = CGColorRetain(self->_fillColor);
    v4[8] = *&self->_fillHeightScale;
    v4[9] = *&self->_fillHeightOffset;
    v4[10] = *&self->_fillSpreadScale;
    v4[11] = *&self->_fillSpreadOffset;
    v4[12] = *&self->_keyHeight;
    v4[13] = *&self->_keyAngle;
    v4[14] = *&self->_keySpread;
    v4[15] = *&self->_keyAmount;
    v4[16] = *&self->_fillHeight;
    v4[17] = *&self->_fillAngle;
    v4[18] = *&self->_fillSpread;
    v4[19] = *&self->_fillAmount;
    v4[20] = *&self->_curvature;
    *(v4 + 8) = self->_global;
  }

  return v4;
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];
  keyColor = self->_keyColor;
  if (keyColor)
  {
    CFRelease(keyColor);
  }

  fillColor = self->_fillColor;
  if (fillColor)
  {
    CFRelease(fillColor);
  }

  v5.receiver = self;
  v5.super_class = CASDFKeyFillHighlightEffect;
  [(CASDFKeyFillHighlightEffect *)&v5 dealloc];
}

+ (id)defaultValues
{
  if (+[CASDFKeyFillHighlightEffect defaultValues]::once != -1)
  {
    dispatch_once(&+[CASDFKeyFillHighlightEffect defaultValues]::once, &__block_literal_global_380);
  }

  return +[CASDFKeyFillHighlightEffect defaultValues]::dict;
}

id __44__CASDFKeyFillHighlightEffect_defaultValues__block_invoke()
{
  v3[20] = *MEMORY[0x1E69E9840];
  v2[0] = @"keyColor";
  v0 = *MEMORY[0x1E695F1E0];
  v3[0] = CGColorGetConstantColor(*MEMORY[0x1E695F1E0]);
  v3[1] = &unk_1EF22F990;
  v2[1] = @"keyHeightScale";
  v2[2] = @"keyHeightOffset";
  v3[2] = &unk_1EF22F918;
  v3[3] = &unk_1EF22F990;
  v2[3] = @"keySpreadScale";
  v2[4] = @"keySpreadOffset";
  v3[4] = &unk_1EF22F918;
  v2[5] = @"fillColor";
  v3[5] = CGColorGetConstantColor(v0);
  v3[6] = &unk_1EF22F990;
  v2[6] = @"fillHeightScale";
  v2[7] = @"fillHeightOffset";
  v3[7] = &unk_1EF22F918;
  v3[8] = &unk_1EF22F990;
  v2[8] = @"fillSpreadScale";
  v2[9] = @"fillSpreadOffset";
  v3[9] = &unk_1EF22F918;
  v3[10] = &unk_1EF22F9A8;
  v2[10] = @"keyHeight";
  v2[11] = @"keyAngle";
  v3[11] = &unk_1EF22B910;
  v3[12] = &unk_1EF22B920;
  v2[12] = @"keySpread";
  v2[13] = @"keyAmount";
  v3[13] = &unk_1EF22B930;
  v3[14] = &unk_1EF22F9A8;
  v2[14] = @"fillHeight";
  v2[15] = @"fillAngle";
  v3[15] = &unk_1EF22B940;
  v3[16] = &unk_1EF22B920;
  v2[16] = @"fillSpread";
  v2[17] = @"fillAmount";
  v3[17] = &unk_1EF22B930;
  v3[18] = &unk_1EF22B900;
  v2[18] = @"curvature";
  v2[19] = @"global";
  v3[19] = MEMORY[0x1E695E110];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:20];
  +[CASDFKeyFillHighlightEffect defaultValues]::dict = result;
  return result;
}

@end