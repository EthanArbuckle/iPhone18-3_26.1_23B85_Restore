@interface CPSearchMatcher
- (BOOL)matches:(id)matches;
- (BOOL)matchesASCIIString:(const char *)string matchType:(int)type;
- (BOOL)matchesUTF8String:(const char *)string matchType:(int)type matchOptions:(int)options;
- (void)dealloc;
@end

@implementation CPSearchMatcher

- (BOOL)matchesASCIIString:(const char *)string matchType:(int)type
{
  v60 = *MEMORY[0x1E69E9840];
  bytes = [(NSData *)self->_wholeSearchStringData bytes];
  v8 = [(NSData *)self->_wholeSearchStringData length];
  if ((self->_options & 2) != 0)
  {
    v9 = MEMORY[0x1E69E9920];
  }

  else
  {
    v9 = MEMORY[0x1E69E9928];
  }

  v10 = MEMORY[0x1E69E9910];
  if ((self->_options & 2) == 0)
  {
    v10 = MEMORY[0x1E69E9930];
  }

  v40 = v10;
  v41 = v9;
  typeCopy = type;
  if (type == 4)
  {
    v11 = v8;
    if (strlen(string) == v8)
    {
      LOBYTE(v12) = v41(string, bytes, v11) == 0;
      goto LABEL_47;
    }

LABEL_46:
    LOBYTE(v12) = 0;
    goto LABEL_47;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = self->_asciiComponents;
  v39 = [(NSArray *)obj countByEnumeratingWithState:&v54 objects:v59 count:16];
  if (!v39)
  {
    goto LABEL_46;
  }

  v37 = *v55;
LABEL_11:
  v13 = 0;
LABEL_12:
  if (*v55 != v37)
  {
    objc_enumerationMutation(obj);
  }

  v14 = *(*(&v54 + 1) + 8 * v13);
  bytes2 = [v14 bytes];
  v12 = v40(string, bytes2);
  if (v12)
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    v16 = [v14 length];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v43 = __48__CPSearchMatcher_matchesASCIIString_matchType___block_invoke;
    v44 = &unk_1E7450D70;
    v49 = typeCopy;
    v47 = v41;
    v48 = bytes2;
    v45 = &v50;
    v46 = v16 - 1;
    v58 = 0;
    if (!string)
    {
      goto LABEL_42;
    }

    v17 = *string;
    if (!*string)
    {
      goto LABEL_42;
    }

    v18 = 0;
    v19 = 1;
    stringCopy = string;
    stringCopy2 = string;
    v22 = 1;
    while (1)
    {
      v23 = v22;
      v24 = v17;
      if (v17 < 0)
      {
        v26 = __maskrune(v17, 0x8000uLL) == 0;
        LOBYTE(v27) = __maskrune(v24, 0x1000uLL) != 0;
        if (__maskrune(v24, 0x4000uLL))
        {
LABEL_22:
          v29 = v19 & !v26;
          goto LABEL_25;
        }

        v28 = __maskrune(v24, 0x2000uLL);
      }

      else
      {
        v25 = *(MEMORY[0x1E69E9830] + 4 * v17 + 60);
        v26 = (v25 & 0x8000) == 0;
        v27 = (v25 >> 12) & 1;
        if ((v25 & 0x4000) != 0)
        {
          goto LABEL_22;
        }

        v28 = v25 & 0x2000;
      }

      v29 = v19 & !v26;
      if (!v28)
      {
        v22 = 0;
        v30 = 1;
        v19 = v27;
        goto LABEL_26;
      }

LABEL_25:
      v22 = 1;
      v19 = v27;
      v30 = v29;
LABEL_26:
      if (v23)
      {
        v31 = v30;
      }

      else
      {
        v31 = v29;
      }

      if ((v23 & 1) == 0)
      {
        v29 |= v22;
      }

      if ((v29 & 1) != 0 && v18)
      {
        v43(v42, v18, &stringCopy2[-v18], &v58);
        if (v58)
        {
          goto LABEL_42;
        }

        v18 = 0;
      }

      if (v31)
      {
        v18 = stringCopy;
      }

      v32 = *++stringCopy;
      v17 = v32;
      ++stringCopy2;
      if (!v32)
      {
        if (v18)
        {
          v43(v42, v18, &stringCopy2[-v18], &v58);
        }

LABEL_42:
        v33 = *(v51 + 24);
        _Block_object_dispose(&v50, 8);
        if ((v33 & 1) == 0)
        {
          goto LABEL_46;
        }

        if (++v13 == v39)
        {
          v39 = [(NSArray *)obj countByEnumeratingWithState:&v54 objects:v59 count:16];
          LOBYTE(v12) = 1;
          if (!v39)
          {
            break;
          }

          goto LABEL_11;
        }

        goto LABEL_12;
      }
    }
  }

LABEL_47:
  v34 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __48__CPSearchMatcher_matchesASCIIString_matchType___block_invoke(uint64_t result, uint64_t a2, unint64_t a3, _BYTE *a4)
{
  v5 = result;
  v6 = *(result + 40);
  if (*(result + 64) == 6)
  {
    if (v6 != a3)
    {
      return result;
    }
  }

  else
  {
    v7 = v6 > a3;
    v8 = *(result + 40);
    if (v7)
    {
      return result;
    }
  }

  result = (*(result + 48))(a2, *(result + 56));
  if (!result)
  {
    *(*(*(v5 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (BOOL)matchesUTF8String:(const char *)string matchType:(int)type matchOptions:(int)options
{
  v31 = *MEMORY[0x1E69E9840];
  if ((type & 0xFFFFFFFD) == 4)
  {
    typeCopy = type;
  }

  else
  {
    typeCopy = 5;
  }

  if (string && self->_asciiComponents)
  {
    for (i = string; ; ++i)
    {
      v10 = *i;
      if (v10 < 0)
      {
        break;
      }

      if (!v10)
      {
        v11 = *MEMORY[0x1E69E9840];

        return [CPSearchMatcher matchesASCIIString:"matchesASCIIString:matchType:" matchType:?];
      }
    }
  }

  if (typeCopy != 4)
  {
    v18 = [(NSArray *)self->_components count]!= 0;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = self->_components;
    v19 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      while (2)
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = _ICUSQLiteMatch(string, [*(*(&v26 + 1) + 8 * j) bytes], objc_msgSend(*(*(&v26 + 1) + 8 * j), "length"), typeCopy, -[NSData bytes](self->_context, "bytes"));
          if ((options == 0) == v23)
          {
            v18 = options == 0;
            goto LABEL_28;
          }
        }

        v18 = v23;
        v20 = [(NSArray *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_28;
  }

  v13 = [(NSData *)self->_wholeSearchStringData length];
  wholeSearchStringData = self->_wholeSearchStringData;
  if (!wholeSearchStringData)
  {
    v18 = 0;
LABEL_28:
    v24 = *MEMORY[0x1E69E9840];
    return v18;
  }

  bytes = [(NSData *)wholeSearchStringData bytes];
  bytes2 = [(NSData *)self->_context bytes];
  v17 = *MEMORY[0x1E69E9840];

  return _ICUSQLiteMatch(string, bytes, v13, 4, bytes2);
}

- (BOOL)matches:(id)matches
{
  uTF8String = [matches UTF8String];

  return [(CPSearchMatcher *)self matchesUTF8String:uTF8String];
}

- (void)dealloc
{
  freeICUSearchContext([(NSData *)self->_context bytes]);

  v3.receiver = self;
  v3.super_class = CPSearchMatcher;
  [(CPSearchMatcher *)&v3 dealloc];
}

@end