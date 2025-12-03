@interface BSUIVibrancyEffectValues
+ (CAColorMatrix)_colorizedMaterialBackdropMatrixForType:(SEL)type heroColor:(int64_t)color backgroundType:(id)backgroundType;
+ (CAColorMatrix)_colorizedVibrancyMatrixForType:(SEL)type heroColor:(int64_t)color backgroundType:(id)backgroundType;
+ (CAColorMatrix)_materialBackdropColorMatrixForType:(SEL)type heroColor:(int64_t)color backgroundType:(id)backgroundType;
+ (CAColorMatrix)_vibrancyMatrixForType:(SEL)type heroColor:(int64_t)color backgroundType:(id)backgroundType;
- (CAColorMatrix)backdropColorMatrix;
- (CAColorMatrix)vibrantColorMatrix;
- (id)transformBackdropColor:(id)color;
- (id)transformColor:(id)color withVibrantMask:(id)mask;
- (id)transformVibrantColor:(id)color;
- (void)calculateValuesForConfiguration:(id)configuration;
@end

@implementation BSUIVibrancyEffectValues

- (void)calculateValuesForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  groupName = [configurationCopy groupName];
  v6 = groupName;
  v8 = *MEMORY[0x1E6979280];
  v7 = *(MEMORY[0x1E6979280] + 4);
  v9 = *(MEMORY[0x1E6979280] + 12);
  v54 = v7;
  v55 = *MEMORY[0x1E6979280];
  v52 = *(MEMORY[0x1E6979280] + 24);
  v53 = v9;
  v22 = *(MEMORY[0x1E6979280] + 20);
  v50 = *(MEMORY[0x1E6979280] + 32);
  v51 = *(MEMORY[0x1E6979280] + 36);
  v48 = *(MEMORY[0x1E6979280] + 40);
  v49 = *(MEMORY[0x1E6979280] + 44);
  v46 = *(MEMORY[0x1E6979280] + 48);
  v47 = *(MEMORY[0x1E6979280] + 52);
  v44 = *(MEMORY[0x1E6979280] + 56);
  v45 = *(MEMORY[0x1E6979280] + 60);
  v42 = *(MEMORY[0x1E6979280] + 64);
  v43 = *(MEMORY[0x1E6979280] + 68);
  v33 = *(MEMORY[0x1E6979280] + 72);
  v34 = *(MEMORY[0x1E6979280] + 76);
  if (configurationCopy)
  {
    v10 = 1.0;
    v11 = *(MEMORY[0x1E6979280] + 8);
    v23 = v11;
    v24 = *(MEMORY[0x1E6979280] + 16);
    v12 = v24;
    v25 = *(MEMORY[0x1E6979280] + 20);
    v26 = *(MEMORY[0x1E6979280] + 24);
    v13 = *(MEMORY[0x1E6979280] + 28);
    v27 = v13;
    v28 = *(MEMORY[0x1E6979280] + 32);
    v29 = *(MEMORY[0x1E6979280] + 36);
    v30 = *(MEMORY[0x1E6979280] + 40);
    v31 = *(MEMORY[0x1E6979280] + 44);
    v32 = *(MEMORY[0x1E6979280] + 48);
    v35 = *(MEMORY[0x1E6979280] + 52);
    v36 = *(MEMORY[0x1E6979280] + 56);
    v37 = *(MEMORY[0x1E6979280] + 60);
    v38 = *(MEMORY[0x1E6979280] + 64);
    v39 = *(MEMORY[0x1E6979280] + 68);
    v40 = *(MEMORY[0x1E6979280] + 72);
    v41 = *(MEMORY[0x1E6979280] + 76);
    do
    {
      color = [configurationCopy color];
      effectType = [configurationCopy effectType];
      backgroundType = [configurationCopy backgroundType];
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v105 = 0u;
      [BSUIVibrancyEffectValues _materialBackdropColorMatrixForType:effectType heroColor:color backgroundType:backgroundType];
      v103 = 0u;
      v104 = 0u;
      v101 = 0u;
      v102 = 0u;
      v100 = 0u;
      [BSUIVibrancyEffectValues _vibrancyMatrixForType:effectType heroColor:color backgroundType:backgroundType];
      v61 = __PAIR64__(LODWORD(v54), LODWORD(v55));
      v62 = v11;
      v63 = v53;
      v64 = v12;
      v65 = v22;
      v66 = v52;
      v67 = v13;
      v68 = v50;
      v69 = v51;
      v70 = v48;
      v71 = v49;
      v72 = v46;
      v73 = v47;
      v74 = v44;
      v75 = v45;
      v76 = v42;
      v77 = v43;
      v78 = v33;
      v79 = v34;
      v58 = v107;
      v59 = v108;
      v60 = v109;
      v56 = v105;
      v57 = v106;
      _lerpColorMatrices(&v80, &v61, &v56, v10);
      v61 = __PAIR64__(LODWORD(v7), LODWORD(v8));
      v54 = v81;
      v55 = v80;
      v62 = v23;
      v63 = v9;
      v11 = v82;
      v64 = v24;
      v65 = v25;
      v12 = v84;
      v22 = v85;
      v66 = v26;
      v67 = v27;
      v52 = v86;
      v53 = v83;
      v13 = v87;
      v68 = v28;
      v69 = v29;
      v50 = v88;
      v51 = v89;
      v70 = v30;
      v71 = v31;
      v48 = v90;
      v49 = v91;
      v72 = v32;
      v73 = v35;
      v46 = v92;
      v47 = v93;
      v74 = v36;
      v75 = v37;
      v44 = v94;
      v45 = v95;
      v76 = v38;
      v77 = v39;
      v42 = v96;
      v43 = v97;
      v78 = v40;
      v79 = v41;
      v58 = v102;
      v59 = v103;
      v60 = v104;
      v56 = v100;
      v57 = v101;
      v33 = v98;
      v34 = v99;
      _lerpColorMatrices(&v80, &v61, &v56, v10);
      v8 = v80;
      v7 = v81;
      v9 = v83;
      v23 = v82;
      v24 = v84;
      v25 = v85;
      v26 = v86;
      v27 = v87;
      v28 = v88;
      v29 = v89;
      v30 = v90;
      v31 = v91;
      v32 = v92;
      v35 = v93;
      v36 = v94;
      v37 = v95;
      v38 = v96;
      v39 = v97;
      v40 = v98;
      v41 = v99;
      [configurationCopy blendAmount];
      v18 = v17;
      blendConfiguration = [configurationCopy blendConfiguration];

      if (!blendConfiguration)
      {
        break;
      }

      v10 = v10 * v18;
      configurationCopy = blendConfiguration;
    }

    while (v10 > 0.00000011920929);
    if (v6)
    {
      goto LABEL_6;
    }
  }

  else
  {
    blendConfiguration = 0;
    v40 = *(MEMORY[0x1E6979280] + 72);
    v41 = *(MEMORY[0x1E6979280] + 76);
    v38 = *(MEMORY[0x1E6979280] + 64);
    v39 = *(MEMORY[0x1E6979280] + 68);
    v36 = *(MEMORY[0x1E6979280] + 56);
    v37 = *(MEMORY[0x1E6979280] + 60);
    v35 = *(MEMORY[0x1E6979280] + 52);
    v31 = *(MEMORY[0x1E6979280] + 44);
    v32 = *(MEMORY[0x1E6979280] + 48);
    v29 = *(MEMORY[0x1E6979280] + 36);
    v30 = *(MEMORY[0x1E6979280] + 40);
    v27 = *(MEMORY[0x1E6979280] + 28);
    v28 = *(MEMORY[0x1E6979280] + 32);
    v13 = v27;
    v25 = *(MEMORY[0x1E6979280] + 20);
    v26 = *(MEMORY[0x1E6979280] + 24);
    v12 = *(MEMORY[0x1E6979280] + 16);
    v23 = *(MEMORY[0x1E6979280] + 8);
    v24 = v12;
    v11 = v23;
    if (groupName)
    {
LABEL_6:
      v20 = v22;
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%lu-%lu", v6, fabs((v12 + ((((v54 * 0.2) + (v55 * 0.1)) + (v11 * 0.3)) + (v53 * 0.4))) + (v51 + ((((v52 * 0.2) + (v22 * 0.1)) + (v13 * 0.3)) + (v50 * 0.4))) * 100.0 + (v44 + ((((v49 * 0.2) + (v48 * 0.1)) + (v46 * 0.3)) + (v47 * 0.4))) * 10000.0 + (v34 + ((((v42 * 0.2) + (v45 * 0.1)) + (v43 * 0.3)) + (v33 * 0.4))) * 1000000.0), fabs((v24 + ((((v7 * 0.2) + (v8 * 0.1)) + (v23 * 0.3)) + (v9 * 0.4))) + (v29 + ((((v26 * 0.2) + (v25 * 0.1)) + (v27 * 0.3)) + (v28 * 0.4))) * 100.0 + (v36 + ((((v31 * 0.2) + (v30 * 0.1)) + (v32 * 0.3)) + (v35 * 0.4))) * 10000.0 + (v41 + ((((v38 * 0.2) + (v37 * 0.1)) + (v39 * 0.3)) + (v40 * 0.4))) * 1000000.0)];
      goto LABEL_9;
    }
  }

  v21 = 0;
  v20 = v22;
LABEL_9:
  objc_storeStrong(&self->_groupName, v21);
  if (v6)
  {
  }

  self->_backdropColorMatrix.m11 = v55;
  self->_backdropColorMatrix.m12 = v54;
  self->_backdropColorMatrix.m13 = v11;
  self->_backdropColorMatrix.m14 = v53;
  self->_backdropColorMatrix.m15 = v12;
  self->_backdropColorMatrix.m21 = v20;
  self->_backdropColorMatrix.m22 = v52;
  self->_backdropColorMatrix.m23 = v13;
  self->_backdropColorMatrix.m24 = v50;
  self->_backdropColorMatrix.m25 = v51;
  self->_backdropColorMatrix.m31 = v48;
  self->_backdropColorMatrix.m32 = v49;
  self->_backdropColorMatrix.m33 = v46;
  self->_backdropColorMatrix.m34 = v47;
  self->_backdropColorMatrix.m35 = v44;
  self->_backdropColorMatrix.m41 = v45;
  self->_backdropColorMatrix.m42 = v42;
  self->_backdropColorMatrix.m43 = v43;
  self->_backdropColorMatrix.m44 = v33;
  self->_backdropColorMatrix.m45 = v34;
  self->_vibrantColorMatrix.m11 = v8;
  self->_vibrantColorMatrix.m12 = v7;
  self->_vibrantColorMatrix.m13 = v23;
  self->_vibrantColorMatrix.m14 = v9;
  self->_vibrantColorMatrix.m15 = v24;
  self->_vibrantColorMatrix.m21 = v25;
  self->_vibrantColorMatrix.m22 = v26;
  self->_vibrantColorMatrix.m23 = v27;
  self->_vibrantColorMatrix.m24 = v28;
  self->_vibrantColorMatrix.m25 = v29;
  self->_vibrantColorMatrix.m31 = v30;
  self->_vibrantColorMatrix.m32 = v31;
  self->_vibrantColorMatrix.m33 = v32;
  self->_vibrantColorMatrix.m34 = v35;
  self->_vibrantColorMatrix.m35 = v36;
  self->_vibrantColorMatrix.m41 = v37;
  self->_vibrantColorMatrix.m42 = v38;
  self->_vibrantColorMatrix.m43 = v39;
  self->_vibrantColorMatrix.m44 = v40;
  self->_vibrantColorMatrix.m45 = v41;
}

- (id)transformVibrantColor:(id)color
{
  colorCopy = color;
  [(BSUIVibrancyEffectValues *)self vibrantColorMatrix];
  v5 = _transformUIColor(colorCopy, &v7);

  return v5;
}

- (id)transformBackdropColor:(id)color
{
  colorCopy = color;
  [(BSUIVibrancyEffectValues *)self backdropColorMatrix];
  v5 = _transformUIColor(colorCopy, &v7);

  return v5;
}

- (id)transformColor:(id)color withVibrantMask:(id)mask
{
  colorCopy = color;
  maskCopy = mask;
  v8 = [(BSUIVibrancyEffectValues *)self transformBackdropColor:colorCopy];
  [maskCopy alphaComponent];
  v9 = [v8 colorWithAlphaComponent:?];
  v10 = [colorCopy _colorBlendedWithColor:v9];
  v11 = [(BSUIVibrancyEffectValues *)self transformVibrantColor:v10];
  [maskCopy _luminance];
  v13 = v12;
  [maskCopy alphaComponent];
  v15 = [v11 colorWithAlphaComponent:v13 * v14];
  v16 = [v10 _colorBlendedWithColor:v15];

  return v16;
}

+ (CAColorMatrix)_materialBackdropColorMatrixForType:(SEL)type heroColor:(int64_t)color backgroundType:(id)backgroundType
{
  backgroundTypeCopy = backgroundType;
  v15 = backgroundTypeCopy;
  if (color < 2)
  {
    [a2 _colorizedMaterialBackdropMatrixForType:color heroColor:backgroundTypeCopy backgroundType:a6];
    goto LABEL_11;
  }

  if (color == 3)
  {
    goto LABEL_9;
  }

  if (color != 2)
  {
    goto LABEL_11;
  }

  if (a6 && a6 != 2)
  {
    if (a6 == 1)
    {
      *&retstr->m21 = 0u;
      *&retstr->m25 = 0u;
      *&retstr->m42 = 0u;
      *&retstr->m34 = 0u;
      *&retstr->m12 = 0u;
      retstr->m11 = 0.88;
      retstr->m22 = 0.88;
      retstr->m33 = 0.88;
      retstr->m44 = 1.0;
      goto LABEL_11;
    }

LABEL_9:
    v11 = MEMORY[0x1E6979280];
    v12 = *(MEMORY[0x1E6979280] + 48);
    *&retstr->m24 = *(MEMORY[0x1E6979280] + 32);
    *&retstr->m33 = v12;
    *&retstr->m42 = v11[4];
    v13 = v11[1];
    *&retstr->m11 = *v11;
    *&retstr->m15 = v13;
    goto LABEL_11;
  }

  *&retstr->m11 = xmmword_1A2D52880;
  *&retstr->m15 = xmmword_1A2D52890;
  *&retstr->m24 = xmmword_1A2D528A0;
  *&retstr->m33 = xmmword_1A2D528B0;
  *&retstr->m42 = xmmword_1A2D528C0;
LABEL_11:

  return result;
}

+ (CAColorMatrix)_colorizedMaterialBackdropMatrixForType:(SEL)type heroColor:(int64_t)color backgroundType:(id)backgroundType
{
  backgroundTypeCopy = backgroundType;
  v35 = 0.0;
  v36 = 0.0;
  v33 = 0.0;
  v34 = 0.0;
  [backgroundTypeCopy getRed:&v36 green:&v35 blue:&v34 alpha:&v33];
  if (color)
  {
    HIDWORD(v9) = HIDWORD(v34);
    v10 = v36;
    v11 = v35;
    v12 = v34;
  }

  else
  {
    v34 = 0.9;
    v35 = 0.9;
    v36 = 0.9;
    v12 = 0.9;
    v11 = 0.9;
    v10 = 0.9;
  }

  v13 = v33;
  *&retstr->m24 = xmmword_1A2D52A60;
  *&retstr->m33 = unk_1A2D52A70;
  *&retstr->m42 = xmmword_1A2D52A80;
  *&retstr->m11 = xmmword_1A2D52A40;
  *&retstr->m15 = unk_1A2D52A50;
  LODWORD(v9) = 0.5;
  _curve(COERCE_DOUBLE(__PAIR64__(unk_1A2D52A54, LODWORD(v13))), 0.0, v9, xmmword_1A2D528D0);
  if (color)
  {
    LODWORD(v15) = 0.5;
    *&v14 = v13;
    _curve(v14, 0.0, v15, xmmword_1A2D528D0);
  }

  *&v27[16] = xmmword_1A2D52A60;
  *&v27[32] = unk_1A2D52A70;
  *&v27[48] = xmmword_1A2D52A80;
  v26 = xmmword_1A2D52A40;
  *v27 = unk_1A2D52A50;
  CAColorMatrixConcat();
  v16 = v31;
  *&retstr->m24 = v30;
  *&retstr->m33 = v16;
  *&retstr->m42 = v32;
  v17 = v29;
  *&retstr->m11 = v28;
  *&retstr->m15 = v17;
  v18 = *&retstr->m33;
  *&v27[16] = *&retstr->m24;
  *&v27[32] = v18;
  *&v27[48] = *&retstr->m42;
  v19 = *&retstr->m15;
  v26 = *&retstr->m11;
  *v27 = v19;
  CAColorMatrixConcat();
  v20 = v31;
  *&retstr->m24 = v30;
  *&retstr->m33 = v20;
  *&retstr->m42 = v32;
  v21 = v29;
  *&retstr->m11 = v28;
  *&retstr->m15 = v21;
  if (color)
  {
    v22 = *&retstr->m33;
    v23 = v13 * 0.25 / (v13 * 0.5 + -0.25 - v13 + 1.0) + 0.0;
    v30 = *&retstr->m24;
    v31 = v22;
    v32 = *&retstr->m42;
    v24 = *&retstr->m15;
    v28 = *&retstr->m11;
    v29 = v24;
    v26 = xmmword_1A2D52880;
    *v27 = v10 * 0.2;
    *&v27[4] = xmmword_1A2D528F0;
    *&v27[20] = v11 * 0.2;
    *&v27[24] = xmmword_1A2D52900;
    *&v27[40] = v12 * 0.2;
    *&v27[44] = xmmword_1A2D528E0;
    *&v27[60] = 0;
    _lerpColorMatrices(retstr, &v28, &v26, ((v23 * 0.9) + 0.1));
  }

  return result;
}

+ (CAColorMatrix)_vibrancyMatrixForType:(SEL)type heroColor:(int64_t)color backgroundType:(id)backgroundType
{
  backgroundTypeCopy = backgroundType;
  v15 = backgroundTypeCopy;
  if (color < 2)
  {
    goto LABEL_8;
  }

  if (color == 3)
  {
    v11 = MEMORY[0x1E6979280];
    v12 = *(MEMORY[0x1E6979280] + 48);
    *&retstr->m24 = *(MEMORY[0x1E6979280] + 32);
    *&retstr->m33 = v12;
    *&retstr->m42 = v11[4];
    v13 = v11[1];
    *&retstr->m11 = *v11;
    *&retstr->m15 = v13;
    goto LABEL_12;
  }

  if (color != 2)
  {
    goto LABEL_12;
  }

  if (!a6 || a6 == 2)
  {
    *&retstr->m24 = 0u;
    *&retstr->m33 = 0u;
    *&retstr->m42 = 0u;
    *&retstr->m11 = 0u;
    *&retstr->m15 = 0u;
    retstr->m15 = 1.25;
    retstr->m25 = 1.25;
    retstr->m35 = 1.25;
    goto LABEL_11;
  }

  if (a6 != 1)
  {
LABEL_8:
    [a2 _colorizedVibrancyMatrixForType:color heroColor:backgroundTypeCopy backgroundType:a6];
    goto LABEL_12;
  }

  *&retstr->m33 = 0u;
  *&retstr->m42 = 0u;
  *&retstr->m15 = 0u;
  *&retstr->m24 = 0u;
  *&retstr->m11 = 0u;
LABEL_11:
  retstr->m44 = 1.0;
LABEL_12:

  return result;
}

+ (CAColorMatrix)_colorizedVibrancyMatrixForType:(SEL)type heroColor:(int64_t)color backgroundType:(id)backgroundType
{
  v34 = 0.0;
  v35 = 0.0;
  v32 = 0.0;
  v33 = 0.0;
  [backgroundType getRed:&v35 green:&v34 blue:&v33 alpha:&v32];
  if (!color)
  {
    v33 = 0.9;
    v34 = 0.9;
    v35 = 0.9;
  }

  v9 = v32;
  if (!a6 || a6 == 2)
  {
    v11 = (v9 * 0.4) + 0.2;
    v10 = (v9 * -0.4) + 1.0;
  }

  else
  {
    v10 = 0.0;
    v11 = 0.0;
    if (a6 == 1)
    {
      v11 = (v9 * 0.4) + 0.0;
      v10 = (v9 * -0.4) + 0.4;
    }
  }

  v12 = v35;
  v13 = v34;
  v14 = v33;
  *&retstr->m24 = xmmword_1A2D52A60;
  *&retstr->m33 = unk_1A2D52A70;
  *&retstr->m42 = xmmword_1A2D52A80;
  *&retstr->m11 = xmmword_1A2D52A40;
  *&retstr->m15 = unk_1A2D52A50;
  v15 = ((((((v13 * -0.38543) + (v12 * -0.11457)) + (v14 * 0.5)) + (v9 * 0.0)) + 0.5) + -0.5) * 1.20000005;
  v16 = ((((((v13 * -0.45415) + (v12 * 0.5)) + (v14 * -0.045847)) + (v9 * 0.0)) + 0.5) + -0.5) * 1.20000005;
  v29 = xmmword_1A2D52A60;
  v30 = unk_1A2D52A70;
  v31 = xmmword_1A2D52A80;
  v27 = xmmword_1A2D52A40;
  v28 = unk_1A2D52A50;
  v25 = LODWORD(v11);
  *v26 = v10;
  *&v26[4] = xmmword_1A2D52910;
  *&v26[20] = v15 + 0.025;
  *&v26[24] = xmmword_1A2D52920;
  *&v26[40] = v16 + 0.025;
  *&v26[44] = xmmword_1A2D528E0;
  *&v26[60] = 0;
  CAColorMatrixConcat();
  if (color)
  {
    v25 = 0uLL;
    v17 = v9 * 0.2 / (v9 * 0.4 + -0.2 - v9 + 1.0) + 0.0;
    v18 = *&retstr->m33;
    v29 = *&retstr->m24;
    v30 = v18;
    v31 = *&retstr->m42;
    v19 = *&retstr->m15;
    v27 = *&retstr->m11;
    v28 = v19;
    *v26 = v12;
    *&v26[4] = 0uLL;
    *&v26[20] = v13;
    *&v26[24] = 0uLL;
    *&v26[40] = v14;
    *&v26[52] = 0;
    *&v26[44] = 0;
    *&v26[56] = 1065353216;
    _lerpColorMatrices(retstr, &v27, &v25, ((v17 * 0.95) + 0.05));
  }

  *&retstr->m41 = xmmword_1A2D52930;
  retstr->m45 = 0.0;
  v20 = *&retstr->m33;
  *&v26[16] = *&retstr->m24;
  *&v26[32] = v20;
  *&v26[48] = *&retstr->m42;
  v21 = *&retstr->m15;
  v25 = *&retstr->m11;
  *v26 = v21;
  result = CAColorMatrixConcat();
  v23 = v30;
  *&retstr->m24 = v29;
  *&retstr->m33 = v23;
  *&retstr->m42 = v31;
  v24 = v28;
  *&retstr->m11 = v27;
  *&retstr->m15 = v24;
  return result;
}

- (CAColorMatrix)backdropColorMatrix
{
  v3 = *&self[1].m11;
  *&retstr->m24 = *&self->m42;
  *&retstr->m33 = v3;
  *&retstr->m42 = *&self[1].m15;
  v4 = *&self->m33;
  *&retstr->m11 = *&self->m24;
  *&retstr->m15 = v4;
  return self;
}

- (CAColorMatrix)vibrantColorMatrix
{
  v3 = *&self[2].m11;
  *&retstr->m24 = *&self[1].m42;
  *&retstr->m33 = v3;
  *&retstr->m42 = *&self[2].m15;
  v4 = *&self[1].m33;
  *&retstr->m11 = *&self[1].m24;
  *&retstr->m15 = v4;
  return self;
}

@end