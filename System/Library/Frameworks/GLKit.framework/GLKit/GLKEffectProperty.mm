@interface GLKEffectProperty
+ (void)logSetMasksWithLabel:(id)label obj:(id)obj typeStr:(id)str;
- (GLKEffectProperty)init;
- (void)dealloc;
- (void)setFSHSource:(char *)source;
- (void)setNameString:(char *)string;
- (void)setShaderBindings;
- (void)setVSHSource:(char *)source;
@end

@implementation GLKEffectProperty

- (GLKEffectProperty)init
{
  v10.receiver = self;
  v10.super_class = GLKEffectProperty;
  v2 = [(GLKEffectProperty *)&v10 init];
  v3 = v2;
  if (v2)
  {
    v2->_location = -1;
    v2->_nameString = 0;
    v2->_vshSource = 0;
    v2->_fshSource = 0;
    v2->_prv = malloc_type_malloc(0x28uLL, 0xA0040BD5F1188uLL);
    v4 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    *(v3->_prv + 1) = v4;
    *v3->_prv = v4;
    v5 = *v3->_prv;
    *v5 = 0;
    v5[1] = 0;
    v6 = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
    *(v3->_prv + 3) = v6;
    *(v3->_prv + 2) = v6;
    prv = v3->_prv;
    v8 = *(prv + 2);
    *v8 = 0;
    v8[1] = 0;
    *(prv + 4) = 0;
    v3->_masksInitialized = 0;
    [(GLKEffectProperty *)v3 dirtyAllUniforms];
  }

  return v3;
}

- (void)setNameString:(char *)string
{
  nameString = self->_nameString;
  if (nameString)
  {
    free(nameString);
    self->_nameString = 0;
  }

  if (string)
  {
    self->_nameString = strdup(string);
  }
}

- (void)setVSHSource:(char *)source
{
  vshSource = self->_vshSource;
  if (vshSource)
  {
    free(vshSource);
    self->_vshSource = 0;
  }

  if (source)
  {
    self->_vshSource = strdup(source);
  }
}

- (void)setFSHSource:(char *)source
{
  fshSource = self->_fshSource;
  if (fshSource)
  {
    free(fshSource);
    self->_fshSource = 0;
  }

  if (source)
  {
    self->_fshSource = strdup(source);
  }
}

- (void)setShaderBindings
{
  NSLog(&cfstr_Glkeffectprope.isa, a2);

  [(GLKEffectProperty *)self dirtyAllUniforms];
}

+ (void)logSetMasksWithLabel:(id)label obj:(id)obj typeStr:(id)str
{
  v8 = [str isEqualToString:@"vsh"];
  if ((v8 & 1) == 0)
  {
    if ([str isEqualToString:@"fsh"])
    {
LABEL_12:
      fshMasks = [obj fshMasks];
      LODWORD(v17) = [obj fshMaskCt];
      fshMaskStr = [obj fshMaskStr];
      NSLog(&cfstr_MasksSet.isa, label);
      if (v17 < 1)
      {
LABEL_19:
        NSLog(&stru_284B43560.isa);
        return;
      }

      v17 = v17;
      v19 = (fshMasks + 8);
      while (1)
      {
        fshMask = [obj fshMask];
        v21 = *(v19 - 1);
        if ((v21 & *fshMask) != 0)
        {
          break;
        }

        v22 = *v19;
        if ((*v19 & fshMask[1]) != 0)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++fshMaskStr;
        v19 += 2;
        if (!--v17)
        {
          goto LABEL_19;
        }
      }

      v22 = *v19;
LABEL_17:
      NSLog(&cfstr_S08llx08llx.isa, *fshMaskStr, v22, v21);
      goto LABEL_18;
    }

    if (![str isEqualToString:@"both"])
    {
      return;
    }
  }

  vshMasks = [obj vshMasks];
  LODWORD(v10) = [obj vshMaskCt];
  vshMaskStr = [obj vshMaskStr];
  NSLog(&cfstr_MasksSet.isa, label);
  if (v10 >= 1)
  {
    v10 = v10;
    v12 = (vshMasks + 8);
    while (1)
    {
      vshMask = [obj vshMask];
      v14 = *(v12 - 1);
      if ((v14 & *vshMask) != 0)
      {
        break;
      }

      v15 = *v12;
      if ((*v12 & vshMask[1]) != 0)
      {
        goto LABEL_7;
      }

LABEL_8:
      ++vshMaskStr;
      v12 += 2;
      if (!--v10)
      {
        goto LABEL_9;
      }
    }

    v15 = *v12;
LABEL_7:
    NSLog(&cfstr_S08llx08llx.isa, *vshMaskStr, v15, v14);
    goto LABEL_8;
  }

LABEL_9:
  NSLog(&stru_284B43560.isa);
  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }
}

- (void)dealloc
{
  free(*(self->_prv + 1));
  free(*(self->_prv + 3));
  free(self->_prv);
  nameString = self->_nameString;
  if (nameString)
  {
    free(nameString);
  }

  vshSource = self->_vshSource;
  if (vshSource)
  {
    free(vshSource);
  }

  fshSource = self->_fshSource;
  if (fshSource)
  {
    free(fshSource);
  }

  v6.receiver = self;
  v6.super_class = GLKEffectProperty;
  [(GLKEffectProperty *)&v6 dealloc];
}

@end