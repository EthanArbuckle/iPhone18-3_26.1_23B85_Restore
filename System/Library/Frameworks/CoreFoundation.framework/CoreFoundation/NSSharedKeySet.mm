@interface NSSharedKeySet
+ (NSSharedKeySet)keySetWithKeys:(id)keys;
- (BOOL)isEqual:(id)equal;
- (NSSharedKeySet)initWithCoder:(id)coder;
- (NSSharedKeySet)initWithKeys:(id *)keys count:(unint64_t)count;
- (id)allKeys;
- (id)debugDescription;
- (id)keyAtIndex:(unint64_t)index;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)indexForKey:(id)key;
- (unint64_t)keySetCount;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NSSharedKeySet

- (unint64_t)count
{
  for (i = 0; self; self = self->_subSharedKeySet)
  {
    i += self->_numKey;
  }

  return i;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
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

  keys = self->_keys;
  if (keys)
  {
    numKey = self->_numKey;
    if (numKey)
    {
      v8 = 8 * numKey - 8;
      do
      {
        v9 = *(self->_keys + v8);
        if (v9 >= 1)
        {
        }

        v8 -= 8;
      }

      while (v8 != -8);
      keys = self->_keys;
    }

    free(keys);
  }

  subSharedKeySet = self->_subSharedKeySet;
  if (subSharedKeySet >= 1)
  {
  }

  v12.receiver = self;
  v12.super_class = NSSharedKeySet;
  [(NSSharedKeySet *)&v12 dealloc];
  v11 = *MEMORY[0x1E69E9840];
}

+ (NSSharedKeySet)keySetWithKeys:(id)keys
{
  v24 = *MEMORY[0x1E69E9840];
  if (!keys)
  {
    v21 = __CFExceptionProem(self, a2);
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: keys cannot be nil", v21);
    goto LABEL_12;
  }

  if ((_NSIsNSArray(keys) & 1) == 0)
  {
    v17 = __CFExceptionProem(self, a2);
    v22 = objc_opt_class();
    v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: keys must be a kind of NSArray instead of '%@'", v17, v22);
LABEL_12:
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v16), 0];
    objc_exception_throw(v18);
  }

  v6 = [keys count];
  v8 = v6;
  if (v6 >> 60)
  {
    v19 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
    v20 = [NSException exceptionWithName:@"NSGenericException" reason:v19 userInfo:0];
    CFRelease(v19);
    objc_exception_throw(v20);
  }

  if (v6 <= 1)
  {
    v6 = 1;
  }

  v9 = MEMORY[0x1EEE9AC00](v6, v7);
  v11 = &v23 - v10;
  v23 = 0;
  if (v8 >= 0x101)
  {
    v11 = _CFCreateArrayStorage(v9, 0, &v23);
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  [keys getObjects:v11 range:{0, v8, v23, v24}];
  v13 = [[self alloc] initWithKeys:v11 count:v8];
  free(v12);
  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (NSSharedKeySet)initWithKeys:(id *)keys count:(unint64_t)count
{
  v146 = *MEMORY[0x1E69E9840];
  v139.receiver = self;
  v139.super_class = NSSharedKeySet;
  v6 = [(NSSharedKeySet *)&v139 init];
  v8 = v6;
  if (!v6)
  {
    goto LABEL_135;
  }

  if (!count)
  {
    v6->_numKey = 0;
LABEL_135:
    v125 = *MEMORY[0x1E69E9840];
    return v8;
  }

  if (count >> 60)
  {
    v126 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", count);
    v127 = [NSException exceptionWithName:@"NSGenericException" reason:v126 userInfo:0];
    CFRelease(v126);
    objc_exception_throw(v127);
  }

  v9 = MEMORY[0x1EEE9AC00](v6, v7);
  v12 = (&v129 - v11);
  v138 = 0;
  v132 = v13;
  if (count > 0x100)
  {
    v134 = _CFCreateArrayStorage(count, 0, &v138);
    MEMORY[0x1EEE9AC00](v134, v16);
    v14 = &v128;
    v137 = 0;
    v15 = _CFCreateArrayStorage(count, 0, &v137);
    v12 = v134;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v9, v10);
    v14 = &v129 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
    v134 = 0;
    v15 = 0;
    v137 = 0;
  }

  v133 = v15;
  if (count >= 0x101)
  {
    v17 = v15;
  }

  else
  {
    v17 = v14;
  }

  v136 = malloc_type_malloc(8 * count, 0x100004000313F17uLL);
  v131 = v17;
  if (count == 1)
  {
    v18 = *keys;
    *v12 = *keys;
    v19 = [v18 hash];
    v20 = 0;
    *v136 = v19;
    v21 = 1;
  }

  else
  {
    v22 = [[NSSet alloc] initWithObjects:keys count:count];
    v23 = [(NSSet *)v22 count];
    v24 = malloc_type_malloc(16 * v23, 0x1080040FC6463CFuLL);
    v25 = v12;
    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    v26 = [(NSSet *)v22 countByEnumeratingWithState:&v141 objects:v140 count:16];
    if (v26)
    {
      v27 = 0;
      v28 = *v142;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v142 != v28)
          {
            objc_enumerationMutation(v22);
          }

          v30 = *(*(&v141 + 1) + 8 * i);
          v31 = &v24[2 * v27];
          *v31 = v30;
          v31[1] = [v30 hash];
          ++v27;
        }

        v26 = [(NSSet *)v22 countByEnumeratingWithState:&v141 objects:v140 count:16];
      }

      while (v26);
    }

    qsort(v24, v23, 0x10uLL, compareHashesAscending);
    v12 = v25;
    *v25 = *v24;
    *v136 = v24[1];
    v32 = v131;
    v20 = 0;
    if (v23 < 2)
    {
      v21 = 1;
    }

    else
    {
      v33 = v24 + 1;
      v34 = 2;
      v35 = 1;
      v21 = 1;
      do
      {
        v36 = &v24[2 * v35];
        v37 = *v33;
        v33 += 2;
        v38 = *v36;
        if (v36[1] == v37)
        {
          *&v32[8 * v20++] = v38;
        }

        else
        {
          v25[v21] = v38;
          v136[v21++] = v36[1];
        }

        v35 = v34;
        v39 = v23 > v34++;
      }

      while (v39);
    }

    free(v24);
  }

  v8->_numKey = v21;
  v8->_algorithmType = 1;
  v40 = vcvtpd_u64_f64(v21 * 2.125) >> 1;
  v41 = (v40 + 1) | 1;
  if (v40 - 3 > 0xFFFFFFFD)
  {
LABEL_39:
    v44 = v41;
  }

  else
  {
    do
    {
      if (-1431655765 * v41 >= 0x55555556)
      {
        if (v41 < 0x19)
        {
          goto LABEL_39;
        }

        v42 = 11;
        while (v41 % (v42 - 6) && v41 % (v42 - 4))
        {
          v43 = v42 * v42;
          v42 += 6;
          if (v43 > v41)
          {
            goto LABEL_39;
          }
        }
      }

      v44 = v41 + 2;
      v39 = v41 > 1;
      v41 += 2;
    }

    while (v39);
  }

  v8->_M = 2 * v44;
  v8->_factor = v44;
  v129 = v20;
  v135 = v21;
  if (2 * v44 > 0xFE)
  {
    if (2 * v44 > 0xFFFE)
    {
      v45 = 2;
    }

    else
    {
      v45 = 1;
    }

    v8->_select = v45;
  }

  else
  {
    v8->_select = 0;
  }

  v46 = malloc_type_calloc(2uLL, 4uLL, 0x100004052888210uLL);
  v130 = v12;
  v47 = 0;
  v8->_seeds = v46;
  v48 = v135;
  v49 = 2.125;
  while (1)
  {
    arc4random_buf(v8->_seeds, 4uLL);
    arc4random_buf(v8->_seeds + 1, 4uLL);
    if (v47)
    {
      v49 = v49 + 0.125;
      LODWORD(v50) = v8->_numKey;
      v51 = vcvtpd_u64_f64(v49 * v50) >> 1;
      v52 = (v51 + 1) | 1;
      if (v51 - 3 > 0xFFFFFFFD)
      {
LABEL_58:
        v55 = v52;
      }

      else
      {
        do
        {
          if (-1431655765 * v52 >= 0x55555556)
          {
            if (v52 < 0x19)
            {
              goto LABEL_58;
            }

            v53 = 11;
            while (v52 % (v53 - 6) && v52 % (v53 - 4))
            {
              v54 = v53 * v53;
              v53 += 6;
              if (v54 > v52)
              {
                goto LABEL_58;
              }
            }
          }

          v55 = v52 + 2;
          v39 = v52 > 1;
          v52 += 2;
        }

        while (v39);
      }

      v56 = 2 * v55;
      v8->_M = 2 * v55;
      v8->_factor = v55;
      if (2 * v55 < 0xFFFF)
      {
        v57 = 1;
      }

      else
      {
        v57 = 2;
      }

      if (v56 >= 0xFF)
      {
        v58 = v57;
      }

      else
      {
        v58 = 0;
      }

      v8->_select = v58;
    }

    v59 = [[__NSSKGraph alloc] initWithNumberOfVertices:v8->_M numberOfEdges:v48];
    v60 = v136;
    v61 = v48;
    if (v135)
    {
      do
      {
        v62 = *v60++;
        seeds = v8->_seeds;
        v64 = *seeds - 559038729;
        HIDWORD(v65) = v64 + HIDWORD(v62);
        LODWORD(v65) = v64 + HIDWORD(v62);
        LODWORD(seeds) = ((v64 + seeds[1]) ^ (v64 + HIDWORD(v62))) - (v65 >> 18);
        HIDWORD(v65) = seeds;
        LODWORD(v65) = seeds;
        v66 = (seeds ^ (v64 + v62)) - (v65 >> 21);
        HIDWORD(v65) = v66;
        LODWORD(v65) = v66;
        HIDWORD(v65) = (v66 ^ (v64 + HIDWORD(v62))) - (v65 >> 7);
        v67 = HIDWORD(v65);
        LODWORD(v65) = HIDWORD(v65);
        LODWORD(seeds) = (HIDWORD(v65) ^ seeds) - (v65 >> 16);
        HIDWORD(v65) = seeds;
        LODWORD(v65) = seeds;
        HIDWORD(v65) = (seeds ^ v66) - (v65 >> 28);
        LODWORD(v65) = HIDWORD(v65);
        HIDWORD(v65) = (HIDWORD(v65) ^ v67) - (v65 >> 18);
        LODWORD(v65) = HIDWORD(v65);
        [(__NSSKGraph *)v59 addEdgeWithH1:2 * (((HIDWORD(v65) ^ seeds) - (v65 >> 8)) % v8->_factor) withH2:(2 * (HIDWORD(v65) % v8->_factor)) | 1, v129];
        --v61;
      }

      while (v61);
    }

    isAcyclic = [(__NSSKGraph *)v59 isAcyclic];
    if ([(__NSSKGraph *)v59 isEmpty])
    {
      break;
    }

    free(isAcyclic);

    if (++v47 == 1000)
    {
      v59 = 0;
      goto LABEL_86;
    }
  }

  if (!isAcyclic)
  {
LABEL_86:

    v8 = 0;
    v59 = 0;
LABEL_134:

    free(v136);
    free(v133);
    free(v134);
    goto LABEL_135;
  }

  numOfEdges = [(__NSSKGraph *)v59 numOfEdges];
  v70 = v130;
  v71 = numOfEdges;
  v72 = malloc_type_calloc(v8->_M, 1uLL, 0x100004077774924uLL);
  memset(v72, 2, v8->_M);
  for (; v71; --v71)
  {
    v73 = isAcyclic[v71 - 1];
    var2 = v73->var2;
    v75 = v73->var1[0];
    if (v75 == var2)
    {
      v76 = v72[LODWORD(v73->var1[1])];
    }

    else
    {
      v76 = 1 - v72[v75];
    }

    v72[var2] = v76 & 1;
  }

  v8->_g = v72;
  M = v8->_M;
  select = v8->_select;
  if (select == 2)
  {
    v86 = malloc_type_calloc(v8->_M, 4uLL, 0x100004052888210uLL);
    v80 = v86;
    if (!M)
    {
      goto LABEL_105;
    }

    v87 = 0;
    v88 = 0;
    do
    {
      v86[v87] = v88;
      if (v72[v87] != 2)
      {
        ++v88;
      }

      ++v87;
    }

    while (M != v87);
  }

  else if (select == 1)
  {
    v83 = malloc_type_calloc(v8->_M, 2uLL, 0x1000040BDFB0063uLL);
    v80 = v83;
    if (!M)
    {
      goto LABEL_105;
    }

    v84 = 0;
    v85 = 0;
    do
    {
      v83[v84] = v85;
      if (v72[v84] != 2)
      {
        ++v85;
      }

      ++v84;
    }

    while (M != v84);
  }

  else if (v8->_select)
  {
    v80 = 0;
  }

  else
  {
    v79 = malloc_type_calloc(v8->_M, 1uLL, 0x100004077774924uLL);
    v80 = v79;
    if (!M)
    {
      goto LABEL_105;
    }

    v81 = 0;
    v82 = 0;
    do
    {
      v79[v81] = v82;
      if (v72[v81] != 2)
      {
        ++v82;
      }

      ++v81;
    }

    while (M != v81);
  }

  if (M)
  {
    v89 = v72 - 1;
    v90 = M;
    do
    {
      if (v89[v90] == 2)
      {
        v89[v90] = 0;
      }

      --v90;
    }

    while (v90);
  }

LABEL_105:
  v91 = malloc_type_calloc((M >> 3) + 1, 1uLL, 0x100004077774924uLL);
  v92 = v91;
  if ((M & 0xFFFFFFF8) == 0)
  {
    LODWORD(v93) = 0;
    v97 = M - 2;
    v98 = v72[(M - 1)] != 0;
LABEL_113:
    v99 = v97;
    do
    {
      v98 = (v72[v99] != 0) | (2 * v98);
      if (!v99)
      {
        break;
      }

      --v97;
      --v99;
    }

    while (v97 >= v93);
    goto LABEL_116;
  }

  v93 = 0;
  v94 = 6;
  do
  {
    v95 = 2 * (v72[v93 + 7] != 0);
    v96 = v94;
    do
    {
      v95 = 2 * (v95 | (v72[v96--] != 0));
    }

    while (v96 > v93);
    v91[v93 >> 3] = v95 | (v72[v93] != 0);
    v93 += 8;
    v94 += 8;
  }

  while (v93 < (M & 0xFFFFFFF8));
  v97 = M - 2;
  v98 = v72[(M - 1)] != 0;
  if (M - 2 >= v93)
  {
    goto LABEL_113;
  }

LABEL_116:
  v91[M >> 3] = v98;
  free(v72);
  v8->_g = v92;
  v8->_rankTable = v80;
  result = malloc_type_calloc(v135, 8uLL, 0x80040B8603338uLL);
  v8->_keys = &result->super.isa;
  v101 = v129;
  if (!v135)
  {
LABEL_129:
    if (v101)
    {
      v123 = objc_alloc(objc_opt_class());
      v124 = [v123 initWithKeys:v131 count:v101];
      if (v124)
      {
        v8->_subSharedKeySet = v124;
      }

      else
      {

        v8 = 0;
      }
    }

    free(isAcyclic);
    goto LABEL_134;
  }

  v102 = 0;
  v103 = 1;
  while (1)
  {
    v104 = v8->_seeds;
    factor = v8->_factor;
    rankTable = v8->_rankTable;
    g = v8->_g;
    v108 = v8->_select;
    v109 = v136[v102];
    if (v8->_algorithmType == 1)
    {
      v113 = *v104 - 559038729;
      v112 = v113 + v104[1];
      v111 = v113 + HIDWORD(v109);
    }

    else
    {
      if (v8->_algorithmType)
      {
        break;
      }

      v110 = v104[1];
      v111 = *v104 - 559038733;
      v112 = v111 + v110;
      v113 = v111;
    }

    HIDWORD(v114) = v111;
    LODWORD(v114) = v111;
    v115 = (v112 ^ v111) - (v114 >> 18);
    HIDWORD(v114) = v115;
    LODWORD(v114) = v115;
    v116 = ((v113 + v109) ^ v115) - (v114 >> 21);
    HIDWORD(v114) = v116;
    LODWORD(v114) = v116;
    v117 = (v116 ^ v111) - (v114 >> 7);
    HIDWORD(v114) = v117;
    LODWORD(v114) = v117;
    v118 = (v117 ^ v115) - (v114 >> 16);
    HIDWORD(v114) = v118;
    LODWORD(v114) = v118;
    HIDWORD(v114) = (v118 ^ v116) - (v114 >> 28);
    LODWORD(v114) = HIDWORD(v114);
    HIDWORD(v114) = (HIDWORD(v114) ^ v117) - (v114 >> 18);
    LODWORD(v114) = HIDWORD(v114);
    v119 = 2 * (((HIDWORD(v114) ^ v118) - (v114 >> 8)) % factor);
    v120 = HIDWORD(v114) % factor;
    v145[0] = v119;
    v145[1] = (2 * v120) | 1;
    v121 = v145[((g[(2 * v120) >> 3] >> ((2 * v120) & 6 | 1)) ^ (g[v119 >> 3] >> (v119 & 6))) & 1];
    if (v108 == 2)
    {
      v122 = rankTable[v121];
      goto LABEL_128;
    }

    if (v108 == 1)
    {
      v122 = *(rankTable + v121);
      goto LABEL_128;
    }

    if (v108)
    {
      break;
    }

    v122 = *(rankTable + v121);
LABEL_128:
    result = [v70[v102] copyWithZone:0];
    v8->_keys[v122] = result;
    v102 = v103;
    v39 = v135 > v103++;
    if (!v39)
    {
      goto LABEL_129;
    }
  }

  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v10 = __CFExceptionProem(self, a2);
    v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: this object can only be encoded by a keyed coder", v10);
    v12 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v11), 0];
    objc_exception_throw(v12);
  }

  [coder encodeInt64:self->_numKey forKey:@"NS.numKey"];
  if (self->_numKey)
  {
    [coder encodeInt32:self->_select forKey:@"NS.select"];
    [coder encodeInt64:self->_factor forKey:@"NS.factor"];
    [coder encodeInt64:*self->_seeds forKey:@"NS.seed0"];
    [coder encodeInt64:self->_seeds[1] forKey:@"NS.seed1"];
    [coder encodeInt64:self->_M forKey:@"NS.M"];
    select = self->_select;
    if (select == 2)
    {
      rankTable = self->_rankTable;
      M = 4 * self->_M;
    }

    else if (select == 1)
    {
      rankTable = self->_rankTable;
      M = 2 * self->_M;
    }

    else
    {
      if (self->_select)
      {
LABEL_11:
        [coder encodeBytes:self->_g length:(self->_M >> 3) + 1 forKey:@"NS.g"];
        [coder encodeObject:self->_subSharedKeySet forKey:@"NS.subskset"];
        [coder encodeObject:+[NSArray arrayWithObjects:count:](NSArray forKey:{"arrayWithObjects:count:", self->_keys, self->_numKey), @"NS.keys"}];
        v9 = self->_algorithmType & 1;

        [coder encodeInteger:v9 forKey:@"NS.algorithmType"];
        return;
      }

      rankTable = self->_rankTable;
      M = self->_M;
    }

    [coder encodeBytes:rankTable length:M forKey:@"NS.rankTable"];
    goto LABEL_11;
  }
}

- (NSSharedKeySet)initWithCoder:(id)coder
{
  v57 = *MEMORY[0x1E69E9840];
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    v50 = __CFExceptionProem(self, a2);
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: this object can only be decoded by a keyed coder", v50);
    goto LABEL_8;
  }

  objc_getClass("NSKeyedUnarchiver");
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    coderCopy = coder;
  }

  else
  {
    coderCopy = 0;
  }

  v8 = [coder decodeInt64ForKey:@"NS.numKey"];
  if (v8 >= 0x7FFFFFFF)
  {
    v49 = __CFExceptionProem(self, a2);
    v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: extreme number of keys", v49);
LABEL_8:
    v10 = _CFAutoreleasePoolAddObject(0, v9);

    [coder failWithError:__archiveIsCorrupt_0(v10)];
LABEL_9:
    self = 0;
    goto LABEL_10;
  }

  v13 = v8;
  if (!v8)
  {
    goto LABEL_10;
  }

  if (isKindOfClass)
  {
    v14 = objc_opt_new();
    if (!v14)
    {
      v51 = __CFExceptionProem(self, a2);
      v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: unable to unarchive - memory failure", v51);
      goto LABEL_8;
    }

    v15 = v14;
    [coder replaceObject:self withObject:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"NS.subskset"];
  if (v16)
  {
    v17 = objc_opt_class();
    if (v17 != objc_opt_class())
    {
      v18 = __CFExceptionProem(self, a2);
      v19 = objc_opt_class();
      v20 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: unexpected shared key set class: %@", v18, v19);
      v21 = _CFAutoreleasePoolAddObject(0, v20);

      [coder failWithError:__archiveIsCorrupt_0(v21)];
      goto LABEL_21;
    }

    self->_subSharedKeySet = v16;
    if (v16 >= 1)
    {
      v26 = v16;
    }

LABEL_28:
    v25 = 1;
    if (!v15)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (![coder error])
  {
    self->_subSharedKeySet = 0;
    goto LABEL_28;
  }

  v22 = __CFExceptionProem(self, a2);
  v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: unable to unarchive - invalid class", v22);
  v24 = _CFAutoreleasePoolAddObject(0, v23);

  [coder failWithError:__archiveIsCorrupt_0(v24)];
LABEL_21:
  v25 = 0;
  if (v15)
  {
LABEL_29:
    [coderCopy replaceObject:v15 withObject:self];
  }

LABEL_30:
  if (!v25)
  {
    goto LABEL_9;
  }

  v27 = objc_lookUpClass("NSArray");
  objc_lookUpClass("NSDictionary");
  block = MEMORY[0x1E69E9820];
  v53 = 3221225472;
  v54 = __32__NSSharedKeySet_initWithCoder___block_invoke;
  v55 = &unk_1E6D81EC0;
  v56 = v27;
  if (initWithCoder__onceToken_0 != -1)
  {
    dispatch_once(&initWithCoder__onceToken_0, &block);
  }

  allowedClasses = [coder allowedClasses];
  v29 = [objc_msgSend(allowedClasses setByAddingObjectsFromSet:{initWithCoder__oPlistClasses_0), "mutableCopy"}];
  [v29 removeObject:objc_opt_class()];
  v30 = [coder decodeObjectOfClasses:v29 forKey:@"NS.keys"];

  if (!v30 && [coder error])
  {
    v39 = __CFExceptionProem(self, a2);
    v40 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: unable to unarchive - invalid class", v39);
    v41 = _CFAutoreleasePoolAddObject(0, v40);

    [coder failWithError:__archiveIsCorrupt_0(v41)];
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v31 = objc_opt_class();
    v32 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"unexpected mutable keys (%@)", v31);
    v33 = _CFAutoreleasePoolAddObject(0, v32);

    [coder failWithError:__archiveIsCorrupt_0(v33)];
    goto LABEL_9;
  }

  if ((_NSIsNSArray(v30) & 1) == 0)
  {
    v42 = objc_opt_class();
    v43 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"unexpected keys (%@)", v42);
    v44 = _CFAutoreleasePoolAddObject(0, v43);

    [coder failWithError:__archiveIsCorrupt_0(v44)];
    goto LABEL_9;
  }

  v34 = [v30 count];
  if (v34 != v13)
  {
    v45 = [v30 count];
    v46 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"key count mismatch %lu vs %u", v45, v13, block, v53, v54, v55, v56);
    v47 = _CFAutoreleasePoolAddObject(0, v46);

    [coder failWithError:__archiveIsCorrupt_0(v47)];
    goto LABEL_9;
  }

  v35 = v34 - 1;
  while (v35 != -1)
  {
    [v30 objectAtIndexedSubscript:v35];
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      --v35;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        continue;
      }
    }

    v36 = objc_opt_class();
    v37 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"unexpected recursive keys (%@)", v36);
    v38 = _CFAutoreleasePoolAddObject(0, v37);

    [coder failWithError:__archiveIsCorrupt_0(v38)];
    goto LABEL_9;
  }

  v48 = [(NSArray *)NSMutableArray arrayWithArray:v30];
  [(NSMutableArray *)v48 addObjectsFromArray:[(NSSharedKeySet *)self->_subSharedKeySet allKeys]];

  self = [NSSharedKeySet keySetWithKeys:v48];
LABEL_10:
  v11 = *MEMORY[0x1E69E9840];
  return self;
}

NSSet *__32__NSSharedKeySet_initWithCoder___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_lookUpClass("NSString");
  v3 = objc_lookUpClass("NSNumber");
  v4 = objc_lookUpClass("NSDate");
  v5 = [NSSet setWithObjects:v1, v2, v3, v4, objc_lookUpClass("NSURL"), 0];
  initWithCoder__oPlistClasses_0 = v5;

  return v5;
}

- (id)allKeys
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (self->_numKey)
  {
    selfCopy = self;
    v3 = [(NSSharedKeySet *)self count];
    if (v3 >> 60)
    {
      v20 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v3);
      v21 = [NSException exceptionWithName:@"NSGenericException" reason:v20 userInfo:0];
      CFRelease(v20);
      objc_exception_throw(v21);
    }

    if (v3 <= 1)
    {
      v3 = 1;
    }

    v5 = MEMORY[0x1EEE9AC00](v3, v4);
    v7 = v22 - v6;
    v22[0] = 0;
    if (v8 >= 0x101)
    {
      v7 = _CFCreateArrayStorage(v5, 0, v22);
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }

    LODWORD(v12) = 0;
    do
    {
      memmove(&v7[8 * v12], selfCopy->_keys, 8 * selfCopy->_numKey);
      v12 = (selfCopy->_numKey + v12);
      selfCopy = selfCopy->_subSharedKeySet;
    }

    while (selfCopy);
    if (v9)
    {
      if (v12)
      {
        v13 = v9;
        v14 = v12;
        do
        {
          v15 = *v13++;
          --v14;
        }

        while (v14);
      }

      v16 = [NSArray alloc];
      v17 = [(NSArray *)v16 _initByAdoptingBuffer:v9 count:v12 size:v12, v22[0]];
    }

    else
    {
      v18 = [NSArray alloc];
      v17 = [(NSArray *)v18 initWithObjects:v7 count:v12, v22[0]];
    }

    result = v17;
    v19 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v10 = *MEMORY[0x1E69E9840];

    return +[NSArray array];
  }

  return result;
}

- (unint64_t)indexForKey:(id)key
{
  v33 = *MEMORY[0x1E69E9840];
  if (self->_numKey)
  {
    selfCopy = self;
    v5 = [key hash];
    v6 = v5;
    v7 = 0;
    v8 = HIDWORD(v5);
    do
    {
      numKey = selfCopy->_numKey;
      if (!numKey)
      {
        goto LABEL_24;
      }

      seeds = selfCopy->_seeds;
      factor = selfCopy->_factor;
      if (selfCopy->_algorithmType == 1)
      {
        v15 = *seeds - 559038729;
        v14 = v15 + seeds[1];
        v13 = v15 + v8;
      }

      else
      {
        if (selfCopy->_algorithmType)
        {
          __break(1u);
        }

        v12 = seeds[1];
        v13 = *seeds - 559038733;
        v14 = v13 + v12;
        v15 = v13;
      }

      HIDWORD(v16) = v13;
      LODWORD(v16) = v13;
      v17 = (v14 ^ v13) - (v16 >> 18);
      HIDWORD(v16) = v17;
      LODWORD(v16) = v17;
      v18 = ((v15 + v6) ^ v17) - (v16 >> 21);
      HIDWORD(v16) = v18;
      LODWORD(v16) = v18;
      v19 = (v18 ^ v13) - (v16 >> 7);
      HIDWORD(v16) = v19;
      LODWORD(v16) = v19;
      v20 = (v19 ^ v17) - (v16 >> 16);
      HIDWORD(v16) = v20;
      LODWORD(v16) = v20;
      HIDWORD(v16) = (v20 ^ v18) - (v16 >> 28);
      LODWORD(v16) = HIDWORD(v16);
      HIDWORD(v16) = (HIDWORD(v16) ^ v19) - (v16 >> 18);
      LODWORD(v16) = HIDWORD(v16);
      v21 = 2 * (((HIDWORD(v16) ^ v20) - (v16 >> 8)) % factor);
      v22 = HIDWORD(v16) % factor;
      v23 = (2 * (HIDWORD(v16) % factor)) | 1;
      v32 = __PAIR64__(v23, v21);
      M = selfCopy->_M;
      if (v21 >= M || v23 >= M)
      {
        goto LABEL_24;
      }

      v26 = *(&v32 + (((selfCopy->_g[(2 * v22) >> 3] >> (v23 & 7)) ^ (selfCopy->_g[v21 >> 3] >> (v21 & 6))) & 1));
      if (v26 >= M)
      {
        goto LABEL_24;
      }

      select = selfCopy->_select;
      if (select == 2)
      {
        v28 = *(selfCopy->_rankTable + v26);
      }

      else if (select == 1)
      {
        v28 = *(selfCopy->_rankTable + v26);
      }

      else
      {
        if (selfCopy->_select)
        {
          goto LABEL_24;
        }

        v28 = *(selfCopy->_rankTable + v26);
      }

      if (v28 < numKey)
      {
        v29 = selfCopy->_keys[v28];
        if (v29)
        {
          if (v29 == key || ([key isEqual:{v32, v33}] & 1) != 0)
          {
            result = v28 + v7;
            goto LABEL_26;
          }

          LODWORD(numKey) = selfCopy->_numKey;
        }
      }

LABEL_24:
      v7 += numKey;
      selfCopy = selfCopy->_subSharedKeySet;
    }

    while (selfCopy);
  }

  result = 0x7FFFFFFFFFFFFFFFLL;
LABEL_26:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

- (id)keyAtIndex:(unint64_t)index
{
  if (index == 0x7FFFFFFFFFFFFFFFLL || *(self + 10) == 0 || self == 0)
  {
    return 0;
  }

  while (1)
  {
    v5 = *(self + 10);
    v6 = index >= v5;
    v7 = index - v5;
    if (!v6)
    {
      break;
    }

    self = *(self + 8);
    index = v7;
    if (!self)
    {
      return self;
    }
  }

  return *(*(self + 7) + 8 * index);
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v9 = [(NSSharedKeySet *)self count];
  var0 = state->var0;
  if (state->var0 == v9)
  {
    return 0;
  }

  v11 = 0;
  if (count)
  {
    v12 = v9;
    if (var0 < v9)
    {
      v11 = 0;
      do
      {
        objects[v11++] = [(NSSharedKeySet *)self keyAtIndex:var0++];
      }

      while (v11 < count && var0 < v12);
    }
  }

  state->var0 = var0;
  state->var1 = objects;
  state->var2 = &countByEnumeratingWithState_objects_count__const_mu_8;
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  v36 = *MEMORY[0x1E69E9840];
  if (self == equal)
  {
    result = 1;
  }

  else
  {
    if (equal)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [(NSSharedKeySet *)self count];
        if (v5 == [equal count])
        {
          keySetCount = [(NSSharedKeySet *)self keySetCount];
          if (keySetCount == [equal keySetCount])
          {
            allKeys = [(NSSharedKeySet *)self allKeys];
            allKeys2 = [equal allKeys];
            v9 = [allKeys count];
            if (v9 == [allKeys2 count])
            {
              v34 = 0u;
              v35 = 0u;
              v32 = 0u;
              v33 = 0u;
              v10 = [allKeys countByEnumeratingWithState:&v32 objects:v31 count:16];
              if (v10)
              {
                v11 = v10;
                v12 = 0;
                v13 = *v33;
LABEL_9:
                v14 = 0;
                v12 += v11;
                while (1)
                {
                  if (*v33 != v13)
                  {
                    objc_enumerationMutation(allKeys);
                  }

                  if ([equal indexForKey:*(*(&v32 + 1) + 8 * v14)] == 0x7FFFFFFFFFFFFFFFLL)
                  {
                    break;
                  }

                  if (v11 == ++v14)
                  {
                    v11 = [allKeys countByEnumeratingWithState:&v32 objects:v31 count:16];
                    if (v11)
                    {
                      goto LABEL_9;
                    }

                    goto LABEL_18;
                  }
                }
              }

              else
              {
                v12 = 0;
LABEL_18:
                if (v12 == v5)
                {
                  v29 = 0u;
                  v30 = 0u;
                  v27 = 0u;
                  v28 = 0u;
                  v16 = [allKeys2 countByEnumeratingWithState:&v27 objects:v26 count:16];
                  if (v16)
                  {
                    v17 = v16;
                    v18 = 0;
                    v19 = *v28;
LABEL_21:
                    v20 = 0;
                    v18 += v17;
                    while (1)
                    {
                      if (*v28 != v19)
                      {
                        objc_enumerationMutation(allKeys2);
                      }

                      if ([(NSSharedKeySet *)self indexForKey:*(*(&v27 + 1) + 8 * v20)]== 0x7FFFFFFFFFFFFFFFLL)
                      {
                        break;
                      }

                      if (v17 == ++v20)
                      {
                        v17 = [allKeys2 countByEnumeratingWithState:&v27 objects:v26 count:16];
                        if (v17)
                        {
                          goto LABEL_21;
                        }

                        goto LABEL_29;
                      }
                    }
                  }

                  else
                  {
                    v18 = 0;
LABEL_29:
                    if (v18 == v5)
                    {
                      maximumIndex = [(NSSharedKeySet *)self maximumIndex];
                      if (maximumIndex == [equal maximumIndex])
                      {
                        v22 = 0;
                        while (1)
                        {
                          v23 = [equal keyAtIndex:v22];
                          if (([v23 isEqual:{-[NSSharedKeySet keyAtIndex:](self, "keyAtIndex:", -[NSSharedKeySet indexForKey:](self, "indexForKey:", v23))}] & 1) == 0)
                          {
                            break;
                          }

                          if (++v22 > maximumIndex)
                          {
                            isEmpty = [(NSSharedKeySet *)self isEmpty];
                            result = isEmpty ^ [equal isEmpty] ^ 1;
                            goto LABEL_36;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    result = 0;
  }

LABEL_36:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

- (unint64_t)keySetCount
{
  for (i = 0; self; self = self->_subSharedKeySet)
  {
    ++i;
  }

  return i;
}

- (id)debugDescription
{
  v24 = *MEMORY[0x1E69E9840];
  string = [(objc_class *)objc_lookUpClass("NSMutableString") string];
  [string appendFormat:@"<%@: %p>\n", objc_opt_class(), self];
  [string appendFormat:@"  numKey = %u\n", self->_numKey];
  [string appendFormat:@"  M = %u (should always be even)\n", self->_M];
  [string appendFormat:@"  factor = %u (should always be prime)\n", self->_factor];
  [string appendFormat:@"  keys = [\n"];
  if (self->_numKey)
  {
    v4 = 0;
    do
    {
      v5 = self->_keys[v4];
      [string appendFormat:@"    <%@: %p>, 0x%lx\n", objc_opt_class(), v5, objc_msgSend(v5, "hash")];
      ++v4;
    }

    while (v4 < self->_numKey);
  }

  [string appendFormat:@"  ]\n"];
  [string appendFormat:@"  seeds[0] = 0x%xu\n", *self->_seeds];
  [string appendFormat:@"  seeds[1] = 0x%xu\n", self->_seeds[1]];
  select = self->_select;
  if (self->_select)
  {
    if (select == 1)
    {
      v7 = @"unsigned short";
    }

    else
    {
      v7 = @"unknown";
      if (select == 2)
      {
        v7 = @"unsigned int";
      }
    }
  }

  else
  {
    v7 = @"unsigned char";
  }

  [string appendFormat:@"  ranktable = %p (select = %u (%@)) [\n", self->_rankTable, self->_select, v7];
  v8 = self->_select;
  if (self->_select)
  {
    if (v8 == 1)
    {
      if (self->_M)
      {
        v10 = 0;
        do
        {
          [string appendFormat:@"    %d - %u\n", v10, *(self->_rankTable + v10)];
          ++v10;
        }

        while (v10 < self->_M);
      }
    }

    else if (v8 == 2 && self->_M)
    {
      v9 = 0;
      do
      {
        [string appendFormat:@"    %d - %u\n", v9, *(self->_rankTable + v9)];
        ++v9;
      }

      while (v9 < self->_M);
    }
  }

  else if (self->_M)
  {
    v11 = 0;
    do
    {
      [string appendFormat:@"    %d - %u\n", v11, *(self->_rankTable + v11)];
      ++v11;
    }

    while (v11 < self->_M);
  }

  [string appendFormat:@"  ]\n"];
  if (self->_algorithmType)
  {
    v12 = @"use_full_hash_64";
  }

  else
  {
    v12 = @"clamp_hash_to_32";
  }

  [string appendFormat:@"  algorithmType: %@\n", v12];
  [string appendFormat:@"  g = %p\n", self->_g];
  [string appendFormat:@"    packed bits (binary):\n      "];
  v13 = 0;
  do
  {
    v14 = vdupq_n_s32(self->_g[v13]);
    v15.i64[0] = 0x31003100310031;
    v15.i64[1] = 0x31003100310031;
    v16.i64[0] = 0x30003000300030;
    v16.i64[1] = 0x30003000300030;
    v23 = vbslq_s8(vuzp1q_s16(vceqzq_s32(vandq_s8(v14, xmmword_183447FE0)), vceqzq_s32(vandq_s8(v14, xmmword_183447FF0))), v16, v15);
    [string appendFormat:@"%@ ", -[objc_class stringWithCharacters:length:](objc_lookUpClass("NSString"), "stringWithCharacters:length:", &v23, 8)];
  }

  while (v13++ < self->_M >> 3);
  [string appendFormat:@"\n"];
  if (self->_subSharedKeySet)
  {
    v18 = objc_lookUpClass("NSMutableString");
    subSharedKeySet = self->_subSharedKeySet;
    [string appendFormat:@"  subSharedKeySet = %@\n", -[objc_class stringWithFormat:](v18, "stringWithFormat:", @"<%@: %p>", objc_opt_class(), subSharedKeySet)];
  }

  else
  {
    [string appendFormat:@"  subSharedKeySet = nil\n", v22];
  }

  v20 = *MEMORY[0x1E69E9840];
  return string;
}

@end