@interface GLKEffectProperty
+ (void)logSetMasksWithLabel:(id)a3 obj:(id)a4 typeStr:(id)a5;
- (GLKEffectProperty)init;
- (void)dealloc;
- (void)setFSHSource:(char *)a3;
- (void)setNameString:(char *)a3;
- (void)setShaderBindings;
- (void)setVSHSource:(char *)a3;
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

- (void)setNameString:(char *)a3
{
  nameString = self->_nameString;
  if (nameString)
  {
    free(nameString);
    self->_nameString = 0;
  }

  if (a3)
  {
    self->_nameString = strdup(a3);
  }
}

- (void)setVSHSource:(char *)a3
{
  vshSource = self->_vshSource;
  if (vshSource)
  {
    free(vshSource);
    self->_vshSource = 0;
  }

  if (a3)
  {
    self->_vshSource = strdup(a3);
  }
}

- (void)setFSHSource:(char *)a3
{
  fshSource = self->_fshSource;
  if (fshSource)
  {
    free(fshSource);
    self->_fshSource = 0;
  }

  if (a3)
  {
    self->_fshSource = strdup(a3);
  }
}

- (void)setShaderBindings
{
  NSLog(&cfstr_Glkeffectprope.isa, a2);

  [(GLKEffectProperty *)self dirtyAllUniforms];
}

+ (void)logSetMasksWithLabel:(id)a3 obj:(id)a4 typeStr:(id)a5
{
  v8 = [a5 isEqualToString:@"vsh"];
  if ((v8 & 1) == 0)
  {
    if ([a5 isEqualToString:@"fsh"])
    {
LABEL_12:
      v16 = [a4 fshMasks];
      LODWORD(v17) = [a4 fshMaskCt];
      v18 = [a4 fshMaskStr];
      NSLog(&cfstr_MasksSet.isa, a3);
      if (v17 < 1)
      {
LABEL_19:
        NSLog(&stru_284B43560.isa);
        return;
      }

      v17 = v17;
      v19 = (v16 + 8);
      while (1)
      {
        v20 = [a4 fshMask];
        v21 = *(v19 - 1);
        if ((v21 & *v20) != 0)
        {
          break;
        }

        v22 = *v19;
        if ((*v19 & v20[1]) != 0)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v18;
        v19 += 2;
        if (!--v17)
        {
          goto LABEL_19;
        }
      }

      v22 = *v19;
LABEL_17:
      NSLog(&cfstr_S08llx08llx.isa, *v18, v22, v21);
      goto LABEL_18;
    }

    if (![a5 isEqualToString:@"both"])
    {
      return;
    }
  }

  v9 = [a4 vshMasks];
  LODWORD(v10) = [a4 vshMaskCt];
  v11 = [a4 vshMaskStr];
  NSLog(&cfstr_MasksSet.isa, a3);
  if (v10 >= 1)
  {
    v10 = v10;
    v12 = (v9 + 8);
    while (1)
    {
      v13 = [a4 vshMask];
      v14 = *(v12 - 1);
      if ((v14 & *v13) != 0)
      {
        break;
      }

      v15 = *v12;
      if ((*v12 & v13[1]) != 0)
      {
        goto LABEL_7;
      }

LABEL_8:
      ++v11;
      v12 += 2;
      if (!--v10)
      {
        goto LABEL_9;
      }
    }

    v15 = *v12;
LABEL_7:
    NSLog(&cfstr_S08llx08llx.isa, *v11, v15, v14);
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