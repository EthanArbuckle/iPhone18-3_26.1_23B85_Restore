@interface CAPresentationModifier
- (CAPresentationModifier)initWithKeyPath:(id)a3 initialValue:(id)a4 initialVelocity:(id)a5 additive:(BOOL)a6 preferredFrameRateRangeMaximum:(int)a7 group:(id)a8;
- (Object)CA_copyRenderValue;
- (id)debugDescription;
- (id)value;
- (void)dealloc;
- (void)setValue:(id)a3 velocity:(id)a4;
- (void)write;
@end

@implementation CAPresentationModifier

- (void)write
{
  v37[1] = *MEMORY[0x1E69E9840];
  v3 = [self->_value CA_numericValueCount];
  v4 = [self->_velocity CA_numericValueCount];
  v5 = v4;
  value_count = self->_value_count;
  if (v3 != value_count)
  {
    v4 = [MEMORY[0x1E695DF30] raise:@"CAPresentationModifier" format:{@"%@: value has more elements (%zu) than initial value (%zu)", self, v3, value_count}];
  }

  if (v5)
  {
    v7 = v5 == v3;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v4 = [MEMORY[0x1E695DF30] raise:@"CAPresentationModifier" format:{@"%@: velocity value has more elements (%zu) than value (%zu)", self, v5, v3}];
  }

  v8 = 16 * v3;
  if ((16 * v3) > 0x1000)
  {
    v9 = malloc_type_malloc(16 * v3, 0xA023880EuLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v9, 16 * v3);
  }

  v10 = [self->_value CA_copyNumericValue:v9];
  v11 = [self->_velocity CA_copyNumericValue:&v9[8 * v3]];
  v12 = v11;
  v13 = self->_value_count;
  if (v10 <= v13 && v11 <= v13)
  {
    if (v11)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  [MEMORY[0x1E695DF30] raise:@"CAPresentationModifier" format:{@"%@: copied value count (%zu) doesn't match the initial count (%zu)", self, v10, v13}];
  if (!v12)
  {
LABEL_16:
    bzero(&v9[8 * self->_value_count], v8 >> 1);
  }

LABEL_17:
  f = self->_f;
  impl = self->_impl;
  v17 = impl[3];
  group = self->_group;
  if (group)
  {
    v19 = [(CAPresentationModifierGroup *)group shmem];
  }

  else
  {
    v19 = impl[2];
  }

  v21 = *(v19 + 16);
  v20 = *(v19 + 24);
  v22 = v21 - 40;
  if (v21 >= 0x28 && v17 < v22 >> 3)
  {
    v23 = v20 + v21 + -8 * v17;
    v24 = *(v23 - 8);
    if (v24)
    {
      v25 = 2 * v3;
      v26 = (16 * v24) | 8;
      v27 = *(v23 - 4);
      v28 = 2 * v24;
      if (3 * v26 + v27 <= v22 && v28 == v25)
      {
        if (v20[1])
        {
          v26 = 0;
        }

        v30 = v20 + v27 + v26;
        *(v30 + 20) = f & 1;
        v31 = v30 + 48;
        v32 = v9;
        do
        {
          v33 = *v32;
          v32 += 8;
          *v31++ = v33;
          --v25;
        }

        while (v25);
      }
    }
  }

  v34 = self->_group;
  if (v34)
  {
    [(CAPresentationModifierGroup *)v34 markWritten:v17];
  }

  else
  {
    v20[1] = v20[1] == 0;
    do
    {
      v35 = *v20 & 0x7FFFFFFF;
      v36 = v35;
      atomic_compare_exchange_strong(v20, &v36, *v20 & 0x7FFFFFFE | v20[1]);
    }

    while (v36 != v35);
  }

  if (v8 > 0x1000)
  {
    free(v9);
  }
}

- (Object)CA_copyRenderValue
{
  group = self->_group;
  if (group)
  {
    v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 576);
    if (v4)
    {
      v5 = *(v4 + 40);
      if (v5)
      {
        if (*(v5 + 224))
        {
          [(CAPresentationModifierGroup *)group _setLocalContextId:(*(*(v5 + 232) + 16))()];
        }
      }
    }

    impl = self->_impl;
    v7 = [(CAPresentationModifierGroup *)group shmem];
    v8 = *(impl + 2);
    if (v8 != v7)
    {
      if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v8 + 16))(v8);
      }

      if (v7)
      {
        v9 = (v7 + 8);
        if (!atomic_fetch_add((v7 + 8), 1u))
        {
          v7 = 0;
          atomic_fetch_add(v9, 0xFFFFFFFF);
        }
      }

      *(impl + 2) = v7;
    }
  }

  result = self->_impl;
  if (result)
  {
    p_var1 = &result->var1;
    if (!atomic_fetch_add(&result->var1.var0.var0, 1u))
    {
      result = 0;
      atomic_fetch_add(&p_var1->var0.var0, 0xFFFFFFFF);
    }
  }

  return result;
}

- (id)value
{
  os_unfair_lock_lock(&self->_l);
  v3 = self->_value;
  os_unfair_lock_unlock(&self->_l);
  return v3;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  impl = self->_impl;
  if (impl && atomic_fetch_add(impl + 2, 0xFFFFFFFF) == 1)
  {
    (*(*impl + 16))(impl, a2);
  }

  v4.receiver = self;
  v4.super_class = CAPresentationModifier;
  [(CAPresentationModifier *)&v4 dealloc];
}

- (void)setValue:(id)a3 velocity:(id)a4
{
  if (!a3)
  {
    [MEMORY[0x1E695DF30] raise:@"CAPresentationModifier" format:{@"%@: value can't be nil", self}];
  }

  if (self->_value != a3)
  {
    os_unfair_lock_lock(&self->_l);

    self->_value = a3;
    self->_velocity = a4;
    os_unfair_lock_unlock(&self->_l);
    [(CAPresentationModifier *)self write];
    if (BYTE11(xmmword_1ED4E980C) == 1)
    {

      kdebug_trace();
    }
  }
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@:%p; keyPath = %@; additive = %d>", NSStringFromClass(v4), self, -[CAPresentationModifier keyPath](self, "keyPath"), -[CAPresentationModifier additive](self, "additive")];
}

- (CAPresentationModifier)initWithKeyPath:(id)a3 initialValue:(id)a4 initialVelocity:(id)a5 additive:(BOOL)a6 preferredFrameRateRangeMaximum:(int)a7 group:(id)a8
{
  v10 = a6;
  v47 = *MEMORY[0x1E69E9840];
  v46.receiver = self;
  v46.super_class = CAPresentationModifier;
  v14 = [(CAPresentationModifier *)&v46 init];
  if (!v14)
  {
    return v14;
  }

  v15 = [a4 CA_numericValueCount];
  v16 = (16 * v15) | 8;
  if ((v15 - 0x1000000000000000) < 0xF000000000000001)
  {
    v16 = 0;
  }

  if (is_mul_ok(v16, 3uLL))
  {
    v17 = 3 * v16;
  }

  else
  {
    v17 = 0;
  }

  if ((v15 - 0x1000000000000000) < 0xF000000000000001 || !v17)
  {
    [MEMORY[0x1E695DF30] raise:@"CAPresentationModifier" format:{@"%@: too large count (%zu) for value (%@)", v14, v15, a4}];
    goto LABEL_49;
  }

  if (a8)
  {
    v44 = a4;
    v18 = [a8 nextSlotWithPayloadSize:?];
    v19 = [a8 shmem];
    atomic_fetch_add((v19 + 8), 1u);
    v20 = (*(v19 + 24) + *(v19 + 16) - 8 * v18);
    *(v20 - 2) = v15;
    if (v18)
    {
      v21 = 48 * *v20 + 24;
      if (!*v20)
      {
        v21 = 0;
      }

      v22 = v20[1] + v21;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v23 = v17 >= 0xFFFFFFFFFFFFFFF8;
    if (v17 + 8 >= 0xFFFFFFFFFFFFFFD8)
    {
      v23 = 1;
    }

    if (v23)
    {
      v24 = 0;
    }

    else
    {
      v24 = (v17 + 48);
    }

    v25 = CA::Render::Shmem::new_shmem(v24);
    if (!v25)
    {
      goto LABEL_49;
    }

    v19 = v25;
    v44 = a4;
    v22 = 0;
    v18 = 0;
    v27 = *(v25 + 2);
    v26 = *(v25 + 3);
    *(v26 + 12) = 1;
    v20 = (v26 + v27);
    *(v26 + v27 - 8) = v15;
  }

  *(v20 - 1) = v22;
  v43 = a7;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v28 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x30uLL, 0xDEEC3011uLL);
  if (!v28)
  {
LABEL_49:

    return 0;
  }

  v30 = v28;
  *(v28 + 2) = 1;
  *(v28 + 3) = 44;
  ++dword_1ED4EAAE8;
  *v28 = &unk_1EF203050;
  v28[2] = v19;
  v28[3] = v18;
  v28[4] = 0;
  v45 = 0;
  CA::Render::key_path_set(&v45, a3, v29);
  v32 = v45;
  if (!v45)
  {
    goto LABEL_29;
  }

  if (v45)
  {
    v33 = v45 >> 1;
    goto LABEL_31;
  }

  if (*v45)
  {
    v33 = *(v45 + 1);
  }

  else
  {
LABEL_29:
    v33 = 0;
  }

LABEL_31:
  CA::Render::key_path_free(v30[4], v31);
  v30[4] = v32;
  if (v10)
  {
    v34 = 256;
  }

  else
  {
    v34 = 0;
  }

  v35 = *(v30 + 3) & 0xFFFFF8FF | v34;
  if (a5)
  {
    v36 = 0;
    v37 = v44;
    while (v33 != [CAPresentationModifier initWithKeyPath:initialValue:initialVelocity:additive:preferredFrameRateRangeMaximum:group:]::velocity_atoms[v36])
    {
      if (++v36 == 7)
      {
        v38 = 0;
        goto LABEL_41;
      }
    }

    v38 = 512;
  }

  else
  {
    v38 = 0;
    v37 = v44;
  }

LABEL_41:
  v39 = v33 == 539 || v33 == 296;
  v40 = v35 | v38;
  if (v39)
  {
    v41 = 1024;
  }

  else
  {
    v41 = 0;
  }

  *(v30 + 3) = v40 | v41;
  *(v30 + 10) = v43;
  v14->_impl = v30;
  v14->_keyPath = [a3 copy];
  v14->_group = a8;
  v14->_value_count = v15;
  v14->_f = 1;
  [(CAPresentationModifier *)v14 setValue:v37 velocity:a5];
  return v14;
}

@end