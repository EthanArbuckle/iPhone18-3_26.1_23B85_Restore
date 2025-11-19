@interface CAPresentationModifierGroup
+ (id)groupWithCapacity:(unint64_t)a3;
- (CAPresentationModifierGroup)initWithCapacity:(unint64_t)a3;
- (unint64_t)nextSlotWithPayloadSize:(unint64_t)a3;
- (void)dealloc;
- (void)flushLocallyWithTargetTime:(double)a3;
- (void)flushWithTargetTime:(double)a3;
- (void)flushWithTransactionAndTargetTime:(double)a3;
- (void)resetBitMask;
- (void)setUpdatesAsynchronously:(BOOL)a3;
@end

@implementation CAPresentationModifierGroup

- (void)resetBitMask
{
  IndexedIvars = object_getIndexedIvars(self);
  bzero(IndexedIvars, ((self->_count + 31) >> 3) & 0x1FFFFFFFFFFFFFFCLL);
  count = self->_count;
  if ((count & 0x1F) != 0)
  {
    *(IndexedIvars + ((count + 31) >> 5) - 1) = -1 << (count & 0x1F);
  }
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  shmem = self->_shmem;
  if (shmem && atomic_fetch_add(shmem + 2, 0xFFFFFFFF) == 1)
  {
    (*(*shmem + 16))(shmem, a2);
  }

  v4.receiver = self;
  v4.super_class = CAPresentationModifierGroup;
  [(CAPresentationModifierGroup *)&v4 dealloc];
}

- (void)flushWithTransactionAndTargetTime:(double)a3
{
  localId = self->_localId;
  if (localId)
  {
    v6 = CA::Context::retain_context_with_id(localId);
    if (v6)
    {
      v8 = v6;
      v9 = *(self->_shmem + 3);
      *(v9 + 12) = self->_count;
      *(v9 + 8 * *(v9 + 4) + 16) = a3;
      CA::Transaction::add_command(0x19, self->_localId, 0, self, v7);
      (**(v8 + 29))((v8 + 58));
    }

    [(CAPresentationModifierGroup *)self flushLocallyWithTargetTime:a3];
  }

  else
  {

    [(CAPresentationModifierGroup *)self flushWithTargetTime:?];
  }
}

- (void)flushWithTargetTime:(double)a3
{
  [(CAPresentationModifierGroup *)self flushLocallyWithTargetTime:a3];
  v4 = *(self->_shmem + 3);
  v4[3] = self->_count;
  v4[1] = v4[1] == 0;
  do
  {
    v5 = *v4 & 0x7FFFFFFF;
    v6 = v5;
    atomic_compare_exchange_strong(v4, &v6, *v4 & 0x7FFFFFFE | v4[1]);
  }

  while (v6 != v5);
}

- (void)flushLocallyWithTargetTime:(double)a3
{
  IndexedIvars = object_getIndexedIvars(self);
  shmem = self->_shmem;
  v7 = shmem[3];
  v8 = *(v7 + 4);
  *(v7 + 8 * v8 + 16) = a3;
  v9 = self->_count + 31;
  if (v9 >= 0x20)
  {
    v10 = 0;
    v11 = 0;
    v12 = v9 >> 5;
    do
    {
      v13 = IndexedIvars[v11];
      if (v13 != -1)
      {
        for (i = 0; i != 32; ++i)
        {
          if (((v13 >> i) & 1) == 0)
          {
            v15 = shmem[2];
            v16 = v15 - 40;
            if (v15 >= 0x28 && (i | v10) < v16 >> 3)
            {
              v17 = v7 + v15 - 8 * (i | v10);
              v18 = *(v17 - 8);
              if (v18)
              {
                v19 = (16 * v18) | 8;
                v20 = *(v17 - 4);
                if (3 * v19 + v20 <= v16)
                {
                  v21 = v7 + 40 + v20;
                  if (v8)
                  {
                    v22 = (16 * v18) | 8;
                  }

                  else
                  {
                    v22 = 0;
                  }

                  v23 = (v21 + v22);
                  if (v8)
                  {
                    v19 = 0;
                  }

                  v24 = (v21 + v19);
                  v26 = *v23;
                  v25 = (v23 + 4);
                  *v24 = v26;
                  v27 = v24 + 4;
                  v28 = 2 * v18;
                  do
                  {
                    v29 = *v25++;
                    *v27++ = v29;
                    --v28;
                  }

                  while (v28);
                }
              }
            }
          }
        }
      }

      ++v11;
      v10 += 32;
    }

    while (v11 < v12);
  }

  [(CAPresentationModifierGroup *)self resetBitMask];
}

- (unint64_t)nextSlotWithPayloadSize:(unint64_t)a3
{
  if (self->_count == self->_capacity)
  {
    [MEMORY[0x1E695DF30] raise:@"CAPresentationModifierGroup" format:{@"%@: attempted to add modifier past group's capacity", self}];
  }

  v5 = a3 + 8;
  v6 = self->_totalSize + a3 + 8;
  shmem = self->_shmem;
  v8 = *(shmem + 2);
  if (v6 > v8)
  {
    if (v6 <= 2 * v8)
    {
      v9 = 2 * v8;
    }

    else
    {
      v9 = self->_totalSize + a3 + 8;
    }

    v10 = CA::Render::Shmem::new_shmem(((v9 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]));
    if (!v10)
    {
      [MEMORY[0x1E695DF30] raise:@"CAPresentationModifierGroup" format:{@"%@: failed to allocate memory (%zu)", self, v9}];
    }

    count = self->_count;
    v12 = *(shmem + 2) - 8 * count;
    memcpy(v10[3], *(shmem + 3), v12);
    memcpy(v10[2] + v10[3] + -8 * count, (*(shmem + 3) + v12), 8 * count);
    v13 = self->_shmem;
    if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v13 + 16))(v13);
    }

    self->_shmem = v10;
    v6 = self->_totalSize + v5;
  }

  result = self->_count;
  self->_count = result + 1;
  self->_totalSize = v6;
  return result;
}

- (void)setUpdatesAsynchronously:(BOOL)a3
{
  v3 = *(self->_shmem + 3);
  do
  {
    v4 = *v3 & 0x7FFFFFFF;
    v5 = *v3 & 0x3FFFFFFF;
    if (!a3)
    {
      v5 = *v3 & 0x3FFFFFFF | 0x40000000;
    }

    v6 = *v3 & 0x7FFFFFFF;
    atomic_compare_exchange_strong(v3, &v6, v5);
  }

  while (v6 != v4);
}

- (CAPresentationModifierGroup)initWithCapacity:(unint64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = CAPresentationModifierGroup;
  v4 = [(CAPresentationModifierGroup *)&v14 init];
  if (v4)
  {
    if (a3)
    {
      if (!is_mul_ok(a3, 0x3D8uLL) || !(984 * a3) || ((v5 = 992 * a3, !__CFADD__(984 * a3, 8 * a3)) ? (v6 = 0) : (v6 = 1), (v7 = __CFADD__(v5, 40), v8 = v5 + 40, !v7) ? (v9 = 0) : (v9 = 1), a3 >> 61 || (v6 & 1) != 0 || (v9 & 1) != 0 || !v8))
      {
        [MEMORY[0x1E695DF30] raise:@"CAPresentationModifierGroup" format:{@"%@: group capacity (%zu) too large", v4, a3}];
      }

      else
      {
        v10 = CA::Render::Shmem::new_shmem(((v8 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]));
        v4->_shmem = v10;
        v4->_capacity = a3;
        if (v10)
        {
          IndexedIvars = object_getIndexedIvars(v4);
          memset(IndexedIvars, 255, ((v4->_capacity + 31) >> 3) & 0x1FFFFFFFFFFFFFFCLL);
          return v4;
        }
      }
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:@"CAPresentationModifierGroup" format:{@"%@: cannot create group with 0 capacity", v4, v13}];
    }

    return 0;
  }

  return v4;
}

+ (id)groupWithCapacity:(unint64_t)a3
{
  v4 = (a3 + 31) >> 3;
  v5 = objc_opt_class();
  v6 = [class_createInstance(v5 v4 & 0x1FFFFFFFFFFFFFFCLL)];

  return v6;
}

@end