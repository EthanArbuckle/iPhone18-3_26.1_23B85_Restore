@interface NSDictionary(CARenderValue)
- (char)CA_copyRenderKeyPathValueArray;
- (uint64_t)CA_copyRenderKeyValueArray;
@end

@implementation NSDictionary(CARenderValue)

- (char)CA_copyRenderKeyPathValueArray
{
  v20[1] = *MEMORY[0x1E69E9840];
  v2 = [self count];
  v3 = v2;
  v4 = 8 * v2;
  if ((8 * v2) > 0x1000)
  {
    v5 = malloc_type_malloc(8 * v2, 0x9AF6CE79uLL);
    v7 = malloc_type_malloc(v4, 0xD05AE921uLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v2);
    v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v5, v4);
    MEMORY[0x1EEE9AC00](v6);
    v7 = v5;
    bzero(v5, v4);
  }

  v8 = 0;
  if (v5 && v7)
  {
    v9 = CA::Render::Array::new_array(v3, 0, 0, 0);
    if (v9)
    {
      v19 = v9;
      [self getObjects:v5 andKeys:v7 count:v3];
      if (!v3)
      {
        return v19;
      }

      v11 = 0;
      v12 = v19 + 24;
      do
      {
        v20[0] = 0;
        CA::Render::key_path_set(v20, v7[v11], v10);
        cA_copyRenderValue = [*&v5[8 * v11] CA_copyRenderValue];
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v14 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x20uLL, 0xDEEC3011uLL);
        if (v14)
        {
          v14[2] = 1;
          v14[3] = 28;
          ++dword_1ED4EAAA8;
          *v14 = &unk_1EF1F57E8;
          *(v14 + 2) = v20[0];
          if (cA_copyRenderValue)
          {
            v15 = cA_copyRenderValue;
            if (!atomic_fetch_add(cA_copyRenderValue + 2, 1u))
            {
              v15 = 0;
              atomic_fetch_add(cA_copyRenderValue + 2, 0xFFFFFFFF);
            }
          }

          else
          {
            v15 = 0;
          }

          *(v14 + 3) = v15;
        }

        *&v12[8 * v11] = v14;
        if (cA_copyRenderValue && atomic_fetch_add(cA_copyRenderValue + 2, 0xFFFFFFFF) == 1)
        {
          (*(*cA_copyRenderValue + 16))(cA_copyRenderValue);
        }

        v11 = (v11 + 1);
      }

      while (v3 != v11);
      v8 = v19;
    }

    else
    {
      v8 = 0;
    }
  }

  v16 = v4 > 0x1000;
  if (v4 > 0x1000 && v7)
  {
    free(v7);
    v16 = 1;
  }

  if (v16 && v5)
  {
    free(v5);
  }

  return v8;
}

- (uint64_t)CA_copyRenderKeyValueArray
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = [self count];
  v3 = v2;
  v4 = 8 * v2;
  if ((8 * v2) > 0x1000)
  {
    v5 = malloc_type_malloc(8 * v2, 0xFA71BE46uLL);
    v7 = malloc_type_malloc(v4, 0x3D453301uLL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v2);
    v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v5, v4);
    MEMORY[0x1EEE9AC00](v6);
    v7 = v5;
    bzero(v5, v4);
  }

  v8 = 0;
  if (v5 && v7)
  {
    v9 = CA::Render::Array::new_array(v3, 0, 0, 0);
    if (v9)
    {
      v18[0] = v9;
      [self getObjects:v5 andKeys:v7 count:v3];
      if (!v3)
      {
        return v18[0];
      }

      v10 = 0;
      v11 = v18[0] + 24;
      do
      {
        v12 = CAInternAtom(v7[v10], 1);
        cA_copyRenderValue = [*&v5[8 * v10] CA_copyRenderValue];
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v14 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x20uLL, 0xDEEC3011uLL);
        if (v14)
        {
          v14[2] = 1;
          v14[3] = 29;
          ++dword_1ED4EAAAC;
          *v14 = &unk_1EF203140;
          v14[4] = v12;
          if (cA_copyRenderValue)
          {
            v15 = cA_copyRenderValue;
            if (!atomic_fetch_add(cA_copyRenderValue + 2, 1u))
            {
              v15 = 0;
              atomic_fetch_add(cA_copyRenderValue + 2, 0xFFFFFFFF);
            }
          }

          else
          {
            v15 = 0;
          }

          *(v14 + 3) = v15;
        }

        *(v11 + 8 * v10) = v14;
        if (cA_copyRenderValue && atomic_fetch_add(cA_copyRenderValue + 2, 0xFFFFFFFF) == 1)
        {
          (*(*cA_copyRenderValue + 16))(cA_copyRenderValue);
        }

        v10 = (v10 + 1);
      }

      while (v3 != v10);
      v8 = v18[0];
    }

    else
    {
      v8 = 0;
    }
  }

  v16 = v4 > 0x1000;
  if (v4 > 0x1000 && v7)
  {
    free(v7);
    v16 = 1;
  }

  if (v16 && v5)
  {
    free(v5);
  }

  return v8;
}

@end