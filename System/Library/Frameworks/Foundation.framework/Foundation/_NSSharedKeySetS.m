@interface _NSSharedKeySetS
- (BOOL)isEqual:(id)a3;
- (_NSSharedKeySetS)init;
- (uint64_t)allKeys;
- (uint64_t)keyAtIndex:(uint64_t)a1;
- (unint64_t)hash;
- (unint64_t)indexForBytes:(char *)a3 length:(unint64_t)a4;
- (unint64_t)indexForKey:(unsigned __int16 *)a3 length:(unint64_t)a4;
- (void)dealloc;
- (void)initWithConfiguration:(void *)a1;
@end

@implementation _NSSharedKeySetS

- (_NSSharedKeySetS)init
{
  v3 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v2.receiver = self;
    v2.super_class = _NSSharedKeySetS;
    self = [(_NSSharedKeySetS *)&v2 init];
    if (self)
    {
      self->_numKey = 0;
    }
  }

  return self;
}

- (void)initWithConfiguration:(void *)a1
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v8.receiver = a1;
  v8.super_class = _NSSharedKeySetS;
  v3 = objc_msgSendSuper2(&v8, sel_init);
  v4 = v3;
  if (v3)
  {
    *(v3 + 12) = 0;
    if (a2)
    {
      *(v3 + 16) = *a2;
      *(v3 + 4) = *(a2 + 8);
      *(v3 + 10) = *(a2 + 16);
      *(v3 + 11) = *(a2 + 20);
      *(v3 + 12) = *(a2 + 24);
      *(v3 + 7) = *(a2 + 32);
      *(v3 + 1) = *(a2 + 40);
      *(v3 + 3) = *(a2 + 48);
      *(v3 + 8) = *(a2 + 56);
      *(v3 + 9) = *(a2 + 64);
      *(v3 + 10) = *(a2 + 72);
      *(v3 + 11) = *(a2 + 80);
      *(v3 + 26) = *(a2 + 88);
      *(v3 + 27) = *(a2 + 92);
      if (*(a2 + 96))
      {
        v5 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
        objc_setProperty_atomic(v4, v6, v5, 96);
      }
    }
  }

  return v4;
}

- (uint64_t)allKeys
{
  if (!a1)
  {
    return 0;
  }

  if (a1[12])
  {
    LODWORD(v2) = 0;
    v3 = a1;
    do
    {
      v2 = (v3[12] + v2);
      v3 = *(v3 + 12);
    }

    while (v3);
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:v2];
    v5 = 0;
    v6 = (a1[26] << (a1[27] == 0));
    v7 = v2 - 1;
    do
    {
      v8 = MEMORY[0x1E695DEF0];
      if (a1[27])
      {
        if (a1[12])
        {
          v9 = v5;
          v10 = a1;
          while (1)
          {
            v11 = v10[12];
            v12 = v9 >= v11;
            v13 = v9 - v11;
            if (!v12)
            {
              break;
            }

            v10 = *(v10 + 12);
            v9 = v13;
            if (!v10)
            {
              goto LABEL_12;
            }
          }

          v14 = *(v10 + 11) + 3 * v9;
        }

        else
        {
LABEL_12:
          v14 = 0;
        }
      }

      else
      {
        v14 = [(_NSSharedKeySetS *)a1 keyAtIndex:v5];
      }

      [v4 addObject:{objc_msgSend(v8, "dataWithBytes:length:", v14, v6)}];
      ++v5;
    }

    while (v5 <= v7);
    return v4;
  }

  v16 = MEMORY[0x1E695DEC8];

  return [v16 array];
}

- (uint64_t)keyAtIndex:(uint64_t)a1
{
  v2 = 0;
  if (a1 && a2 != 0x7FFFFFFFFFFFFFFFLL && *(a1 + 48))
  {
    while (1)
    {
      v3 = *(a1 + 48);
      v4 = a2 >= v3;
      v5 = a2 - v3;
      if (!v4)
      {
        break;
      }

      a1 = *(a1 + 96);
      a2 = v5;
      if (!a1)
      {
        return 0;
      }
    }

    v6 = *(a1 + 104);
    switch(v6)
    {
      case 3:
        return *(a1 + 80) + 6 * a2;
      case 2:
        return *(a1 + 72) + 4 * a2;
      case 1:
        return *(a1 + 64) + 2 * a2;
      default:
        return 0;
    }
  }

  return v2;
}

- (unint64_t)indexForKey:(unsigned __int16 *)a3 length:(unint64_t)a4
{
  v30 = *MEMORY[0x1E69E9840];
  keyLen = self->_keyLen;
  if (keyLen != a4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = self;
  if (!self->_numKey)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = a4;
  v8 = a3;
  if (a4 >= 4)
  {
    v8 = a3;
    v7 = a4;
    do
    {
      v7 = 67503105 * v7 + 16974593 * *v8 + 66049 * v8[1] + 257 * v8[2] + v8[3];
      v8 += 4;
    }

    while (v8 < &a3[a4 & 0xFFFFFFFC]);
  }

  while (v8 < &a3[a4])
  {
    v9 = *v8++;
    v7 = 257 * v7 + v9;
  }

  if (!self)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = 0;
  v11 = (v7 << a4) + v7;
  M = self->_M;
  v13 = 2 * a4;
  while (1)
  {
    seeds = v5->_seeds;
    factor = v5->_factor;
    v16 = *seeds - 559038733;
    HIDWORD(v17) = v16;
    LODWORD(v17) = v16;
    LODWORD(seeds) = ((v16 + seeds[1]) ^ v16) - (v17 >> 18);
    HIDWORD(v17) = seeds;
    LODWORD(v17) = seeds;
    v18 = (seeds ^ (v11 + v16)) - (v17 >> 21);
    HIDWORD(v17) = v18;
    LODWORD(v17) = v18;
    v19 = (v18 ^ v16) - (v17 >> 7);
    HIDWORD(v17) = v19;
    LODWORD(v17) = v19;
    LODWORD(seeds) = (v19 ^ seeds) - (v17 >> 16);
    HIDWORD(v17) = seeds;
    LODWORD(v17) = seeds;
    HIDWORD(v17) = (seeds ^ v18) - (v17 >> 28);
    LODWORD(v17) = HIDWORD(v17);
    HIDWORD(v17) = (HIDWORD(v17) ^ v19) - (v17 >> 18);
    LODWORD(v17) = HIDWORD(v17);
    v20 = 2 * (((HIDWORD(v17) ^ seeds) - (v17 >> 8)) % factor);
    v21 = HIDWORD(v17) % factor;
    v22 = (2 * v21) | 1;
    v29[0] = v20;
    v29[1] = v22;
    if (v20 >= M || v22 >= M)
    {
      goto LABEL_33;
    }

    v24 = v29[((v5->_g[(2 * v21) >> 3] >> (v22 & 7)) ^ (v5->_g[v20 >> 3] >> (v20 & 6))) & 1];
    if (v24 >= M)
    {
      goto LABEL_33;
    }

    select = v5->_select;
    if (select == 2)
    {
      v26 = *(v5->_rankTable + v24);
    }

    else if (select == 1)
    {
      v26 = *(v5->_rankTable + v24);
    }

    else
    {
      if (v5->_select)
      {
        goto LABEL_33;
      }

      v26 = *(v5->_rankTable + v24);
    }

    if (v26 >= v5->_numKey)
    {
      goto LABEL_33;
    }

    if (keyLen != 3)
    {
      break;
    }

    v27 = v5->_keys3[v26];
    if (v27)
    {
      goto LABEL_31;
    }

LABEL_33:
    v10 += v5->_numKey;
    v5 = v5->_subSharedKeySet;
    if (!v5)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  if (keyLen == 2)
  {
    v27 = v5->_keys2[v26];
    if (v27)
    {
      goto LABEL_31;
    }

    goto LABEL_33;
  }

  if (keyLen != 1)
  {
    goto LABEL_33;
  }

  v27 = v5->_keys1[v26];
  if (!v27)
  {
    goto LABEL_33;
  }

LABEL_31:
  if (v27 != a3 && memcmp(a3, v27, v13))
  {
    goto LABEL_33;
  }

  return v26 + v10;
}

- (unint64_t)indexForBytes:(char *)a3 length:(unint64_t)a4
{
  v30 = *MEMORY[0x1E69E9840];
  if (self->_keyLen != a4)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v4 = self;
  if (!self->_numKey)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v7 = a3;
  v8 = a4;
  v9 = a3;
  if (a4 >= 4)
  {
    v7 = a3;
    v9 = a3;
    v8 = a4;
    do
    {
      v8 = 67503105 * v8 + 16974593 * *v9 + 66049 * v9[1] + (v9[2] | (v9[2] << 8)) + v9[3];
      v9 += 4;
      v7 += 4;
    }

    while (v9 < &a3[a4 & 0xFFFFFFFC]);
  }

  if (v9 < &a3[a4])
  {
    v10 = (&a3[a4] - v7);
    do
    {
      v11 = *v9++;
      v8 = 257 * v8 + v11;
      --v10;
    }

    while (v10);
  }

  if (!self)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = 0;
  v13 = (v8 << a4) + v8;
  while (1)
  {
    seeds = v4->_seeds;
    factor = v4->_factor;
    v16 = *seeds - 559038733;
    HIDWORD(v17) = v16;
    LODWORD(v17) = v16;
    LODWORD(seeds) = ((v16 + seeds[1]) ^ v16) - (v17 >> 18);
    HIDWORD(v17) = seeds;
    LODWORD(v17) = seeds;
    v18 = (seeds ^ (v13 + v16)) - (v17 >> 21);
    HIDWORD(v17) = v18;
    LODWORD(v17) = v18;
    v19 = (v18 ^ v16) - (v17 >> 7);
    HIDWORD(v17) = v19;
    LODWORD(v17) = v19;
    LODWORD(seeds) = (v19 ^ seeds) - (v17 >> 16);
    HIDWORD(v17) = seeds;
    LODWORD(v17) = seeds;
    HIDWORD(v17) = (seeds ^ v18) - (v17 >> 28);
    LODWORD(v17) = HIDWORD(v17);
    HIDWORD(v17) = (HIDWORD(v17) ^ v19) - (v17 >> 18);
    LODWORD(v17) = HIDWORD(v17);
    v20 = 2 * (((HIDWORD(v17) ^ seeds) - (v17 >> 8)) % factor);
    v21 = HIDWORD(v17) % factor;
    v29[0] = v20;
    v29[1] = (2 * v21) | 1;
    v22 = v29[((v4->_g[(2 * v21) >> 3] >> ((2 * v21) & 6 | 1)) ^ (v4->_g[v20 >> 3] >> (v20 & 6))) & 1];
    select = v4->_select;
    if (!v4->_select)
    {
      break;
    }

    if (select == 1)
    {
      v24 = *(v4->_rankTable + v22);
      goto LABEL_17;
    }

    if (select == 2)
    {
      v24 = *(v4->_rankTable + v22);
      goto LABEL_17;
    }

    LODWORD(numKey) = v4->_numKey;
LABEL_23:
    v12 += numKey;
    v4 = v4->_subSharedKeySet;
    if (!v4)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v24 = *(v4->_rankTable + v22);
LABEL_17:
  numKey = v4->_numKey;
  if (v24 >= numKey)
  {
    goto LABEL_23;
  }

  ckeys = v4->_ckeys;
  if (!ckeys)
  {
    goto LABEL_23;
  }

  v27 = ckeys[v24];
  if (v27 != a3)
  {
    if (memcmp(a3, v27, a4))
    {
      goto LABEL_23;
    }
  }

  return v24 + v12;
}

- (unint64_t)hash
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = 0;
  if (self)
  {
    v3 = self;
    do
    {
      v2 += v3->_numKey;
      v3 = v3->_subSharedKeySet;
    }

    while (v3);
  }

  v4 = v2;
  v5 = [(_NSSharedKeySetS *)self allKeys];
  v6 = malloc_type_calloc(v2, 8uLL, 0x100004000313F17uLL);
  bzero(v6, 8 * v2);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v5);
        }

        *(v6 + v9++) = [*(*(&v19 + 1) + 8 * v11++) hash];
      }

      while (v8 != v11);
      v8 = [v5 countByEnumeratingWithState:&v19 objects:v18 count:16];
    }

    while (v8);
  }

  qsort(v6, v4, 8uLL, _hash_compare);
  if (v4)
  {
    v12 = 1;
    v13 = v6;
    v14 = v4;
    do
    {
      v15 = *v13++;
      v12 = v15 - v12 + 32 * v12;
      --v14;
    }

    while (v14);
    v16 = 31 * v12;
  }

  else
  {
    v16 = 31;
  }

  free(v6);
  return v16 + v4;
}

- (BOOL)isEqual:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  if (self == a3)
  {
    LOBYTE(v21) = 1;
  }

  else
  {
    if (!a3)
    {
      goto LABEL_51;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_51;
    }

    v5 = 0;
    if (self)
    {
      v6 = self;
      do
      {
        v5 += v6->_numKey;
        v6 = v6->_subSharedKeySet;
      }

      while (v6);
    }

    v7 = 0;
    v8 = a3;
    do
    {
      v7 += v8[12];
      v8 = *(v8 + 12);
    }

    while (v8);
    if (self)
    {
      if (self->_keyLen != *(a3 + 26) || v5 != v7)
      {
        goto LABEL_51;
      }

      v10 = 0;
      v11 = self;
      do
      {
        ++v10;
        v11 = v11->_subSharedKeySet;
      }

      while (v11);
    }

    else
    {
      v10 = 0;
      if (*(a3 + 26))
      {
        v37 = 0;
      }

      else
      {
        v37 = v5 == v7;
      }

      if (!v37)
      {
        goto LABEL_51;
      }
    }

    v12 = a3;
    do
    {
      v12 = v12[12];
      --v10;
    }

    while (v12);
    if (v10)
    {
      goto LABEL_51;
    }

    if (self)
    {
      v13 = 0;
      v14 = self;
      do
      {
        v13 += v14->_numKey;
        v14 = v14->_subSharedKeySet;
      }

      while (v14);
      v15 = self;
      do
      {
        LODWORD(v14) = v15->_numKey + v14;
        v15 = v15->_subSharedKeySet;
      }

      while (v15);
      if (v13 != v14)
      {
        goto LABEL_51;
      }

      v16 = v13 - 1;
    }

    else
    {
      v16 = 0;
    }

    v17 = [(_NSSharedKeySetS *)self allKeys];
    v18 = [(_NSSharedKeySetS *)a3 allKeys];
    v19 = [v17 count];
    if (v19 != [v18 count])
    {
LABEL_51:
      LOBYTE(v21) = 0;
      return v21;
    }

    v20 = 2 * self->_keyLen;
    v21 = malloc_type_malloc(v20, 0x1000040BDFB0063uLL);
    if (v21)
    {
      v22 = v21;
      obj = v18;
      v39 = v16;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v23 = [v17 countByEnumeratingWithState:&v48 objects:v47 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = 0;
        v26 = *v49;
LABEL_31:
        v27 = 0;
        v40 = v25 + v24;
        while (1)
        {
          if (*v49 != v26)
          {
            objc_enumerationMutation(v17);
          }

          [*(*(&v48 + 1) + 8 * v27) getBytes:v22 length:v20];
          if ([a3 indexForKey:v22 length:self->_keyLen] == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_50;
          }

          if (v24 == ++v27)
          {
            v24 = [v17 countByEnumeratingWithState:&v48 objects:v47 count:16];
            v25 = v40;
            if (v24)
            {
              goto LABEL_31;
            }

            goto LABEL_40;
          }
        }
      }

      v25 = 0;
LABEL_40:
      if (v25 != v5)
      {
        goto LABEL_50;
      }

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v28 = [obj countByEnumeratingWithState:&v43 objects:v42 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = 0;
        v31 = *v44;
LABEL_43:
        v32 = 0;
        v30 += v29;
        while (1)
        {
          if (*v44 != v31)
          {
            objc_enumerationMutation(obj);
          }

          [*(*(&v43 + 1) + 8 * v32) getBytes:v22 length:v20];
          if ([(_NSSharedKeySetS *)self indexForKey:v22 length:self->_keyLen]== 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          if (v29 == ++v32)
          {
            v29 = [obj countByEnumeratingWithState:&v43 objects:v42 count:16];
            if (v29)
            {
              goto LABEL_43;
            }

            goto LABEL_54;
          }
        }

LABEL_50:
        free(v22);
        goto LABEL_51;
      }

      v30 = 0;
LABEL_54:
      free(v22);
      if (v30 != v5)
      {
        goto LABEL_51;
      }

      v33 = 0;
      do
      {
        v34 = [(_NSSharedKeySetS *)a3 keyAtIndex:v33];
        v35 = [(_NSSharedKeySetS *)self keyAtIndex:?];
        if (v34 && v35)
        {
          if (memcmp(v34, v35, v20))
          {
            goto LABEL_51;
          }
        }

        else if ((v34 != 0) != (v35 != 0))
        {
          goto LABEL_51;
        }

        ++v33;
      }

      while (v33 <= v39);
      v36 = [(_NSSharedKeySetS *)self isEmpty];
      LOBYTE(v21) = v36 ^ [a3 isEmpty] ^ 1;
    }
  }

  return v21;
}

- (void)dealloc
{
  v10 = *MEMORY[0x1E69E9840];
  rankTable = self->_rankTable;
  if (rankTable)
  {
    free(rankTable);
  }

  g = self->_g;
  if (g)
  {
    free(g);
  }

  seeds = self->_seeds;
  if (seeds)
  {
    free(seeds);
  }

  self->_rankTable = 0;
  self->_g = 0;
  if (self->_type)
  {
    p_ckeys = &self->_ckeys;
    ckeys = self->_ckeys;
    if (ckeys)
    {
      goto LABEL_9;
    }
  }

  else
  {
    keyLen = self->_keyLen;
    if (keyLen == 3)
    {
      p_ckeys = &self->_keys3;
      ckeys = self->_keys3;
      if (!ckeys)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (keyLen == 2)
    {
      p_ckeys = &self->_keys2;
      ckeys = self->_keys2;
      if (!ckeys)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    if (keyLen != 1)
    {
      goto LABEL_11;
    }

    p_ckeys = &self->_keys1;
    ckeys = self->_keys1;
    if (ckeys)
    {
LABEL_9:
      free(ckeys);
    }
  }

LABEL_10:
  *p_ckeys = 0;
LABEL_11:

  v9.receiver = self;
  v9.super_class = _NSSharedKeySetS;
  [(_NSSharedKeySetS *)&v9 dealloc];
}

@end