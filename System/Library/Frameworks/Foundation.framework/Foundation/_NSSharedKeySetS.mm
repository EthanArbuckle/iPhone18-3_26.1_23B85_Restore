@interface _NSSharedKeySetS
- (BOOL)isEqual:(id)equal;
- (_NSSharedKeySetS)init;
- (uint64_t)allKeys;
- (uint64_t)keyAtIndex:(uint64_t)index;
- (unint64_t)hash;
- (unint64_t)indexForBytes:(char *)bytes length:(unint64_t)length;
- (unint64_t)indexForKey:(unsigned __int16 *)key length:(unint64_t)length;
- (void)dealloc;
- (void)initWithConfiguration:(void *)configuration;
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

- (void)initWithConfiguration:(void *)configuration
{
  v9 = *MEMORY[0x1E69E9840];
  if (!configuration)
  {
    return 0;
  }

  v8.receiver = configuration;
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
  if (!self)
  {
    return 0;
  }

  if (self[12])
  {
    LODWORD(v2) = 0;
    selfCopy = self;
    do
    {
      v2 = (selfCopy[12] + v2);
      selfCopy = *(selfCopy + 12);
    }

    while (selfCopy);
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:v2];
    v5 = 0;
    v6 = (self[26] << (self[27] == 0));
    v7 = v2 - 1;
    do
    {
      v8 = MEMORY[0x1E695DEF0];
      if (self[27])
      {
        if (self[12])
        {
          v9 = v5;
          selfCopy2 = self;
          while (1)
          {
            v11 = selfCopy2[12];
            v12 = v9 >= v11;
            v13 = v9 - v11;
            if (!v12)
            {
              break;
            }

            selfCopy2 = *(selfCopy2 + 12);
            v9 = v13;
            if (!selfCopy2)
            {
              goto LABEL_12;
            }
          }

          v14 = *(selfCopy2 + 11) + 3 * v9;
        }

        else
        {
LABEL_12:
          v14 = 0;
        }
      }

      else
      {
        v14 = [(_NSSharedKeySetS *)self keyAtIndex:v5];
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

- (uint64_t)keyAtIndex:(uint64_t)index
{
  v2 = 0;
  if (index && a2 != 0x7FFFFFFFFFFFFFFFLL && *(index + 48))
  {
    while (1)
    {
      v3 = *(index + 48);
      v4 = a2 >= v3;
      v5 = a2 - v3;
      if (!v4)
      {
        break;
      }

      index = *(index + 96);
      a2 = v5;
      if (!index)
      {
        return 0;
      }
    }

    v6 = *(index + 104);
    switch(v6)
    {
      case 3:
        return *(index + 80) + 6 * a2;
      case 2:
        return *(index + 72) + 4 * a2;
      case 1:
        return *(index + 64) + 2 * a2;
      default:
        return 0;
    }
  }

  return v2;
}

- (unint64_t)indexForKey:(unsigned __int16 *)key length:(unint64_t)length
{
  v30 = *MEMORY[0x1E69E9840];
  keyLen = self->_keyLen;
  if (keyLen != length)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  selfCopy = self;
  if (!self->_numKey)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  lengthCopy2 = length;
  keyCopy2 = key;
  if (length >= 4)
  {
    keyCopy2 = key;
    lengthCopy2 = length;
    do
    {
      lengthCopy2 = 67503105 * lengthCopy2 + 16974593 * *keyCopy2 + 66049 * keyCopy2[1] + 257 * keyCopy2[2] + keyCopy2[3];
      keyCopy2 += 4;
    }

    while (keyCopy2 < &key[length & 0xFFFFFFFC]);
  }

  while (keyCopy2 < &key[length])
  {
    v9 = *keyCopy2++;
    lengthCopy2 = 257 * lengthCopy2 + v9;
  }

  if (!self)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = 0;
  v11 = (lengthCopy2 << length) + lengthCopy2;
  M = self->_M;
  v13 = 2 * length;
  while (1)
  {
    seeds = selfCopy->_seeds;
    factor = selfCopy->_factor;
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

    v24 = v29[((selfCopy->_g[(2 * v21) >> 3] >> (v22 & 7)) ^ (selfCopy->_g[v20 >> 3] >> (v20 & 6))) & 1];
    if (v24 >= M)
    {
      goto LABEL_33;
    }

    select = selfCopy->_select;
    if (select == 2)
    {
      v26 = *(selfCopy->_rankTable + v24);
    }

    else if (select == 1)
    {
      v26 = *(selfCopy->_rankTable + v24);
    }

    else
    {
      if (selfCopy->_select)
      {
        goto LABEL_33;
      }

      v26 = *(selfCopy->_rankTable + v24);
    }

    if (v26 >= selfCopy->_numKey)
    {
      goto LABEL_33;
    }

    if (keyLen != 3)
    {
      break;
    }

    v27 = selfCopy->_keys3[v26];
    if (v27)
    {
      goto LABEL_31;
    }

LABEL_33:
    v10 += selfCopy->_numKey;
    selfCopy = selfCopy->_subSharedKeySet;
    if (!selfCopy)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  if (keyLen == 2)
  {
    v27 = selfCopy->_keys2[v26];
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

  v27 = selfCopy->_keys1[v26];
  if (!v27)
  {
    goto LABEL_33;
  }

LABEL_31:
  if (v27 != key && memcmp(key, v27, v13))
  {
    goto LABEL_33;
  }

  return v26 + v10;
}

- (unint64_t)indexForBytes:(char *)bytes length:(unint64_t)length
{
  v30 = *MEMORY[0x1E69E9840];
  if (self->_keyLen != length)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  selfCopy = self;
  if (!self->_numKey)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  bytesCopy3 = bytes;
  lengthCopy2 = length;
  bytesCopy4 = bytes;
  if (length >= 4)
  {
    bytesCopy3 = bytes;
    bytesCopy4 = bytes;
    lengthCopy2 = length;
    do
    {
      lengthCopy2 = 67503105 * lengthCopy2 + 16974593 * *bytesCopy4 + 66049 * bytesCopy4[1] + (bytesCopy4[2] | (bytesCopy4[2] << 8)) + bytesCopy4[3];
      bytesCopy4 += 4;
      bytesCopy3 += 4;
    }

    while (bytesCopy4 < &bytes[length & 0xFFFFFFFC]);
  }

  if (bytesCopy4 < &bytes[length])
  {
    v10 = (&bytes[length] - bytesCopy3);
    do
    {
      v11 = *bytesCopy4++;
      lengthCopy2 = 257 * lengthCopy2 + v11;
      --v10;
    }

    while (v10);
  }

  if (!self)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = 0;
  v13 = (lengthCopy2 << length) + lengthCopy2;
  while (1)
  {
    seeds = selfCopy->_seeds;
    factor = selfCopy->_factor;
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
    v22 = v29[((selfCopy->_g[(2 * v21) >> 3] >> ((2 * v21) & 6 | 1)) ^ (selfCopy->_g[v20 >> 3] >> (v20 & 6))) & 1];
    select = selfCopy->_select;
    if (!selfCopy->_select)
    {
      break;
    }

    if (select == 1)
    {
      v24 = *(selfCopy->_rankTable + v22);
      goto LABEL_17;
    }

    if (select == 2)
    {
      v24 = *(selfCopy->_rankTable + v22);
      goto LABEL_17;
    }

    LODWORD(numKey) = selfCopy->_numKey;
LABEL_23:
    v12 += numKey;
    selfCopy = selfCopy->_subSharedKeySet;
    if (!selfCopy)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  v24 = *(selfCopy->_rankTable + v22);
LABEL_17:
  numKey = selfCopy->_numKey;
  if (v24 >= numKey)
  {
    goto LABEL_23;
  }

  ckeys = selfCopy->_ckeys;
  if (!ckeys)
  {
    goto LABEL_23;
  }

  v27 = ckeys[v24];
  if (v27 != bytes)
  {
    if (memcmp(bytes, v27, length))
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
    selfCopy = self;
    do
    {
      v2 += selfCopy->_numKey;
      selfCopy = selfCopy->_subSharedKeySet;
    }

    while (selfCopy);
  }

  v4 = v2;
  allKeys = [(_NSSharedKeySetS *)self allKeys];
  v6 = malloc_type_calloc(v2, 8uLL, 0x100004000313F17uLL);
  bzero(v6, 8 * v2);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [allKeys countByEnumeratingWithState:&v19 objects:v18 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        *(v6 + v9++) = [*(*(&v19 + 1) + 8 * v11++) hash];
      }

      while (v8 != v11);
      v8 = [allKeys countByEnumeratingWithState:&v19 objects:v18 count:16];
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

- (BOOL)isEqual:(id)equal
{
  v52 = *MEMORY[0x1E69E9840];
  if (self == equal)
  {
    LOBYTE(v21) = 1;
  }

  else
  {
    if (!equal)
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
      selfCopy = self;
      do
      {
        v5 += selfCopy->_numKey;
        selfCopy = selfCopy->_subSharedKeySet;
      }

      while (selfCopy);
    }

    v7 = 0;
    equalCopy = equal;
    do
    {
      v7 += equalCopy[12];
      equalCopy = *(equalCopy + 12);
    }

    while (equalCopy);
    if (self)
    {
      if (self->_keyLen != *(equal + 26) || v5 != v7)
      {
        goto LABEL_51;
      }

      v10 = 0;
      selfCopy2 = self;
      do
      {
        ++v10;
        selfCopy2 = selfCopy2->_subSharedKeySet;
      }

      while (selfCopy2);
    }

    else
    {
      v10 = 0;
      if (*(equal + 26))
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

    equalCopy2 = equal;
    do
    {
      equalCopy2 = equalCopy2[12];
      --v10;
    }

    while (equalCopy2);
    if (v10)
    {
      goto LABEL_51;
    }

    if (self)
    {
      v13 = 0;
      selfCopy3 = self;
      do
      {
        v13 += selfCopy3->_numKey;
        selfCopy3 = selfCopy3->_subSharedKeySet;
      }

      while (selfCopy3);
      selfCopy4 = self;
      do
      {
        LODWORD(selfCopy3) = selfCopy4->_numKey + selfCopy3;
        selfCopy4 = selfCopy4->_subSharedKeySet;
      }

      while (selfCopy4);
      if (v13 != selfCopy3)
      {
        goto LABEL_51;
      }

      v16 = v13 - 1;
    }

    else
    {
      v16 = 0;
    }

    allKeys = [(_NSSharedKeySetS *)self allKeys];
    allKeys2 = [(_NSSharedKeySetS *)equal allKeys];
    v19 = [allKeys count];
    if (v19 != [allKeys2 count])
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
      obj = allKeys2;
      v39 = v16;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v23 = [allKeys countByEnumeratingWithState:&v48 objects:v47 count:16];
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
            objc_enumerationMutation(allKeys);
          }

          [*(*(&v48 + 1) + 8 * v27) getBytes:v22 length:v20];
          if ([equal indexForKey:v22 length:self->_keyLen] == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_50;
          }

          if (v24 == ++v27)
          {
            v24 = [allKeys countByEnumeratingWithState:&v48 objects:v47 count:16];
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
        v34 = [(_NSSharedKeySetS *)equal keyAtIndex:v33];
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
      isEmpty = [(_NSSharedKeySetS *)self isEmpty];
      LOBYTE(v21) = isEmpty ^ [equal isEmpty] ^ 1;
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