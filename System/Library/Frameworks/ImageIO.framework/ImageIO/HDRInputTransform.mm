@interface HDRInputTransform
- (id)description;
- (void)dealloc;
@end

@implementation HDRInputTransform

- (void)dealloc
{
  p_t = &self->t;
  v4 = *&self[5].t.image.pixel.var0;
  if (v4)
  {
  }

  v5 = *&p_t[15].image.pixel.type;
  if (v5)
  {
  }

  v6 = *&p_t[22].image.pixel.var0;
  if (v6)
  {
  }

  v7.receiver = self;
  v7.super_class = HDRInputTransform;
  [(HDRInputTransform *)&v7 dealloc];
}

- (id)description
{
  p_t = &self->t;
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"HDRInputTransform{hasGainMap:%d, baseIsSDR:%d}", self->t.flags & 1, (self->t.flags >> 1) & 1];
  v4 = *&p_t[4].image.pixel.var2;
  v53 = *&p_t[4].flags;
  v54 = v4;
  v5 = *&p_t[6].image.pixel.var0;
  v55 = *&p_t[5].image.pixel.var1;
  v56 = v5;
  v6 = *&p_t[1].image.pixel.var1;
  v49 = *&p_t->image.pixel.var2;
  v50 = v6;
  image = p_t[3].image;
  v51 = *&p_t[2].image.pixel.var0;
  v52 = image;
  v8 = HDRPixelTransformInDescription(&v49);
  v9 = [v3 stringByAppendingFormat:@"\nImage Steps:\n\t  IN: %@", v8];

  if (p_t[7].image.pixel.type)
  {
    v10 = *&p_t[9].image.pixel.var1;
    v51 = *&p_t[8].image.pixel.var2;
    v52 = v10;
    v53 = *&p_t[10].image.pixel.var0;
    v11 = *&p_t[8].flags;
    v49 = p_t[7].image;
    v50 = v11;
    v12 = HDRColorTRCToString(&v49);
    v13 = [v9 stringByAppendingFormat:@"\n\t TRC: %@", v12];

    v9 = v13;
  }

  if (p_t[11].image.pixel.type)
  {
    if ((LOBYTE(p_t[18].image.pixel.var0) & 1) == 0)
    {
      v14 = *&p_t[16].image.pixel.var2;
      v49 = *&p_t[16].flags;
      v50 = v14;
      v15 = *&p_t[18].image.pixel.var0;
      v51 = *&p_t[17].image.pixel.var1;
      v52 = v15;
      v16 = HDRColorMatrixToString(&v49);
      v17 = [v9 stringByAppendingFormat:@"\n\t MAT: %@", v16];

      v9 = v17;
    }

    v18 = *&p_t[21].image.pixel.var1;
    v61 = *&p_t[20].image.pixel.var2;
    v62 = v18;
    v63 = *&p_t[22].image.pixel.var0;
    v19 = *&p_t[18].image.pixel.var0;
    v57 = *&p_t[17].image.pixel.var1;
    v58 = v19;
    v20 = *&p_t[20].flags;
    v59 = p_t[19].image;
    v60 = v20;
    v21 = p_t[15].image;
    v53 = *&p_t[14].image.pixel.var0;
    v54 = v21;
    v22 = *&p_t[16].image.pixel.var2;
    v55 = *&p_t[16].flags;
    v56 = v22;
    v23 = *&p_t[12].flags;
    v49 = p_t[11].image;
    v50 = v23;
    v24 = *&p_t[13].image.pixel.var1;
    v51 = *&p_t[12].image.pixel.var2;
    v52 = v24;
    v25 = HDRToneMappingToString(&v49);
    v26 = [v9 stringByAppendingFormat:@"\n\t  TM: %@", v25];

    if (p_t[19].image.pixel.type)
    {
      v27 = *&p_t[21].image.pixel.var1;
      v51 = *&p_t[20].image.pixel.var2;
      v52 = v27;
      v53 = *&p_t[22].image.pixel.var0;
      v28 = *&p_t[20].flags;
      v49 = p_t[19].image;
      v50 = v28;
      v29 = HDRColorTRCToString(&v49);
      v9 = [v26 stringByAppendingFormat:@"\n\t TRC: %@", v29];
    }

    else
    {
      v9 = v26;
    }
  }

  if ((LOBYTE(p_t[25].image.pixel.var1) & 1) == 0)
  {
    v30 = *&p_t[24].flags;
    v49 = p_t[23].image;
    v50 = v30;
    v31 = *&p_t[25].image.pixel.var1;
    v51 = *&p_t[24].image.pixel.var2;
    v52 = v31;
    v32 = HDRColorMatrixToString(&v49);
    v33 = [v9 stringByAppendingFormat:@"\n\t MAT: %@", v32];

    v9 = v33;
  }

  if (p_t->flags)
  {
    v34 = *&p_t[30].image.pixel.var0;
    v53 = *&p_t[29].image.pixel.var1;
    v54 = v34;
    v35 = *&p_t[32].flags;
    v55 = p_t[31].image;
    v56 = v35;
    v36 = p_t[27].image;
    v49 = *&p_t[26].image.pixel.var0;
    v50 = v36;
    v37 = *&p_t[28].image.pixel.var2;
    v51 = *&p_t[28].flags;
    v52 = v37;
    v38 = HDRPixelTransformInDescription(&v49);
    v39 = [v9 stringByAppendingFormat:@"\nGainMap Steps:\n\t  IN: %@", v38];

    v40 = *&p_t[36].image.pixel.var2;
    v53 = *&p_t[36].flags;
    v54 = v40;
    v55 = *&p_t[37].image.pixel.var1;
    v41 = *&p_t[33].image.pixel.var1;
    v49 = *&p_t[32].image.pixel.var2;
    v50 = v41;
    v42 = p_t[35].image;
    v51 = *&p_t[34].image.pixel.var0;
    v52 = v42;
    v43 = HDRGainMappingToString(&v49);
    v9 = [v39 stringByAppendingFormat:@"\n\tGAIN: %@", v43];

    if ((p_t[40].image.pixel.var2 & 1) == 0)
    {
      v44 = p_t[39].image;
      v49 = *&p_t[38].image.pixel.var0;
      v50 = v44;
      v45 = *&p_t[40].image.pixel.var2;
      v51 = *&p_t[40].flags;
      v52 = v45;
      v46 = HDRColorMatrixToString(&v49);
      v47 = [v9 stringByAppendingFormat:@"\n\t MAT: %@", v46];

      v9 = v47;
    }
  }

  return v9;
}

@end