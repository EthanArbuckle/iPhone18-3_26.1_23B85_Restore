@interface LPURLSuffixChecker
- (BOOL)hasSuffix:(id)suffix remainingPrefix:(id *)prefix;
- (BOOL)insertString:(id)string intoTrieWithCache:(id *)cache;
- (LPURLSuffixChecker)initWithSuffixes:(id)suffixes;
- (void)addStringToFailedSuffixes:(id)suffixes;
- (void)dealloc;
@end

@implementation LPURLSuffixChecker

- (BOOL)insertString:(id)string intoTrieWithCache:(id *)cache
{
  v36 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  Length = CFStringGetLength(stringCopy);
  if (Length > 0x20)
  {
    goto LABEL_34;
  }

  CStringPtr = CFStringGetCStringPtr(stringCopy, 0x600u);
  if (CStringPtr)
  {
    goto LABEL_5;
  }

  if (!CFStringGetCString(stringCopy, buffer, 32, 0x600u))
  {
LABEL_34:
    v30 = 0;
    goto LABEL_35;
  }

  CStringPtr = buffer;
LABEL_5:
  maxLength = self->_maxLength;
  if (maxLength <= Length)
  {
    maxLength = Length;
  }

  self->_maxLength = maxLength;
  if (*CStringPtr != 46)
  {
    goto LABEL_34;
  }

  var1 = cache->var1;
  if (Length >= var1)
  {
    v11 = cache->var1;
  }

  else
  {
    v11 = Length;
  }

  if (v11 >= 2)
  {
    v12 = &cache->var0[1];
    v13 = 1;
    do
    {
      v14 = CStringPtr[v13];
      v15 = (v14 | 0x20) - 96;
      if ((v14 | 0x20u) - 123 < 0xFFFFFFE6)
      {
        v15 = -1;
      }

      if (v14 == 46)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      if (v16 != v12->var0)
      {
        cache->var1 = v13;
        var1 = v13;
      }

      ++v13;
      if (Length >= var1)
      {
        v17 = var1;
      }

      else
      {
        v17 = Length;
      }

      ++v12;
    }

    while (v13 < v17);
  }

  v18 = var1 - 1;
  trie = self->_trie;
  cache->var1 = Length;
  v20 = Length - 1;
  if (Length - 1 <= var1 - 1)
  {
    v22 = trie;
  }

  else
  {
    p_var1 = &cache->var0[Length - 1].var1;
    v22 = trie;
    do
    {
      v23 = CStringPtr[v20];
      if (v23 == 46)
      {
        v24 = 0;
      }

      else
      {
        v25 = v23 | 0x20;
        if ((v25 - 123) < 0xFFFFFFE6)
        {
          goto LABEL_34;
        }

        v24 = v25 - 96;
      }

      trieNodeCount = v22->var0[v24];
      v27 = v24;
      if (!v22->var0[v24])
      {
        trieNodeCount = self->_trieNodeCount;
        self->_trieNodeCount = trieNodeCount + 1;
        v22->var0[v24] = trieNodeCount;
        v28 = malloc_type_realloc(trie, 54 * (trieNodeCount + 1), 0x10000409C08D13AuLL);
        self->_trie = v28;
        v29 = &v28[trieNodeCount];
        *&v29->var0[23] = 0;
        *&v29->var0[8] = 0u;
        *&v29->var0[16] = 0u;
        *v29->var0 = 0u;
        trie = self->_trie;
      }

      *(p_var1 - 1) = v27;
      *p_var1 = trieNodeCount;
      p_var1 -= 2;
      v22 = &trie[trieNodeCount];
      --v20;
    }

    while (v20 > v18);
  }

  v32 = CStringPtr[v18];
  LODWORD(v33) = (v32 | 0x20) - 96;
  if ((v32 | 0x20u) - 123 < 0xFFFFFFE6)
  {
    v33 = 0xFFFFFFFFLL;
  }

  else
  {
    v33 = v33;
  }

  if (v32 == 46)
  {
    v34 = 0;
  }

  else
  {
    v34 = v33;
  }

  v22->var0[v34] = cache->var0[v18].var1;
  v30 = 1;
LABEL_35:

  return v30;
}

- (void)addStringToFailedSuffixes:(id)suffixes
{
  suffixesCopy = suffixes;
  failedSuffixes = self->_failedSuffixes;
  v9 = suffixesCopy;
  if (!failedSuffixes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_failedSuffixes;
    self->_failedSuffixes = v6;

    failedSuffixes = self->_failedSuffixes;
    suffixesCopy = v9;
  }

  v8 = [suffixesCopy substringFromIndex:1];
  [(NSMutableArray *)failedSuffixes addObject:v8];
}

- (LPURLSuffixChecker)initWithSuffixes:(id)suffixes
{
  v21 = *MEMORY[0x1E69E9840];
  suffixesCopy = suffixes;
  v19.receiver = self;
  v19.super_class = LPURLSuffixChecker;
  v5 = [(LPURLSuffixChecker *)&v19 init];
  if (v5)
  {
    v5->_trie = malloc_type_calloc(0x36uLL, 2uLL, 0x1071B89uLL);
    v5->_trieNodeCount = 2;
    memset(v17, 0, sizeof(v17));
    WORD1(v17[0]) = 1;
    v18 = 1;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = suffixesCopy;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v20 count:16];
    if (v7)
    {
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if (![(LPURLSuffixChecker *)v5 insertString:v10 intoTrieWithCache:v17, v13])
          {
            [(LPURLSuffixChecker *)v5 addStringToFailedSuffixes:v10];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v13 objects:v20 count:16];
      }

      while (v7);
    }

    v11 = v5;
  }

  return v5;
}

- (BOOL)hasSuffix:(id)suffix remainingPrefix:(id *)prefix
{
  v32 = *MEMORY[0x1E69E9840];
  suffixCopy = suffix;
  v7 = suffixCopy;
  if (!suffixCopy)
  {
    goto LABEL_34;
  }

  Length = CFStringGetLength(suffixCopy);
  CStringPtr = CFStringGetCStringPtr(v7, 0x600u);
  if (CStringPtr)
  {
    goto LABEL_5;
  }

  if (CFStringGetCString(v7, buffer, 32, 0x600u))
  {
    CStringPtr = buffer;
LABEL_5:
    if (Length >= self->_maxLength)
    {
      maxLength = self->_maxLength;
    }

    else
    {
      maxLength = Length;
    }

    if (maxLength)
    {
      trie = self->_trie;
      while (1)
      {
        v12 = CStringPtr[Length - 1];
        if (v12 == 46)
        {
          v13 = 0;
        }

        else
        {
          v14 = v12 | 0x20;
          if ((v14 - 123) < 0xFFFFFFE6)
          {
            goto LABEL_22;
          }

          v13 = v14 - 96;
        }

        v15 = trie->var0[v13];
        if (!v15)
        {
          goto LABEL_22;
        }

        if (v15 == 1)
        {
          break;
        }

        trie = &self->_trie[v15];
        --Length;
        if (!--maxLength)
        {
          goto LABEL_19;
        }
      }

      if (prefix)
      {
        *prefix = [(__CFString *)v7 substringToIndex:Length];
      }

LABEL_43:
      v23 = 1;
      goto LABEL_44;
    }

    trie = self->_trie;
LABEL_19:
    if (trie->var0[0] == 1)
    {
      if (prefix)
      {
        *prefix = 0;
      }

      goto LABEL_43;
    }
  }

LABEL_22:
  failedSuffixes = self->_failedSuffixes;
  if (!failedSuffixes)
  {
    goto LABEL_34;
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = failedSuffixes;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v18)
  {
    goto LABEL_33;
  }

  v19 = *v27;
  while (2)
  {
    for (i = 0; i != v18; ++i)
    {
      if (*v27 != v19)
      {
        objc_enumerationMutation(v17);
      }

      v21 = [(__CFString *)v7 rangeOfString:*(*(&v26 + 1) + 8 * i) options:15, v26];
      v22 = v21;
      if (v21 != 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v21)
        {
          if ([(__CFString *)v7 characterAtIndex:v21 - 1]!= 46)
          {
            continue;
          }

          if (prefix)
          {
            v24 = [(__CFString *)v7 substringToIndex:v22];
            goto LABEL_41;
          }
        }

        else if (prefix)
        {
          v24 = 0;
LABEL_41:
          *prefix = v24;
        }

        goto LABEL_43;
      }
    }

    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v18)
    {
      continue;
    }

    break;
  }

LABEL_33:

LABEL_34:
  v23 = 0;
LABEL_44:

  return v23;
}

- (void)dealloc
{
  free(self->_trie);
  v3.receiver = self;
  v3.super_class = LPURLSuffixChecker;
  [(LPURLSuffixChecker *)&v3 dealloc];
}

@end