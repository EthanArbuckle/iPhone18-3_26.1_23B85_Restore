@interface NSString(SCNExtensions)
- (uint64_t)SCN_safeHash;
- (uint64_t)scn_stringByReplacingCharactersInRanges:()SCNExtensions withStrings:;
@end

@implementation NSString(SCNExtensions)

- (uint64_t)SCN_safeHash
{
  v3 = *MEMORY[0x277D85DE8];
  CC_SHA256_Init(&v1);
  CFStringUpdateHash();
  CC_SHA256_Final(md, &v1);
  return *md;
}

- (uint64_t)scn_stringByReplacingCharactersInRanges:()SCNExtensions withStrings:
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = [a3 count];
  if (v7 != [a4 count])
  {
    NSLog(&cfstr_ErrorRangesAnd.isa);
    return 0;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v45;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v12)
        {
          objc_enumerationMutation(a3);
        }

        v14 = [*(*(&v44 + 1) + 8 * i) rangeValue];
        if (v14 < v10)
        {
          NSLog(&cfstr_ErrorRangesMus.isa);
          return 0;
        }

        v10 = v14 + v15;
        v11 += v15;
      }

      v9 = [a3 countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v17 = [a4 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v41;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(a4);
        }

        v19 += [*(*(&v40 + 1) + 8 * j) length];
      }

      v18 = [a4 countByEnumeratingWithState:&v40 objects:v49 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  if (v19 - v11 + [a1 length] <= 0)
  {
    NSLog(&cfstr_ErrorIncorrect_0.isa);
    return 0;
  }

  v34 = a1;
  v22 = [MEMORY[0x277CCAB68] stringWithCapacity:?];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = [a3 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v23)
  {
    v24 = v23;
    obj = a3;
    v25 = 0;
    v26 = 0;
    v27 = *v37;
    do
    {
      v28 = 0;
      v29 = v25;
      do
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = [*(*(&v36 + 1) + 8 * v28) rangeValue];
        v32 = v31;
        v33 = v30 - v26;
        if (v30 > v26)
        {
          [v22 appendString:{objc_msgSend(v34, "substringWithRange:", v26, v33)}];
        }

        v25 = v29 + 1;
        [v22 appendString:{objc_msgSend(a4, "objectAtIndexedSubscript:", v29, v33)}];
        v26 = v30 + v32;
        ++v28;
        ++v29;
      }

      while (v24 != v28);
      v24 = [obj countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v24);
  }

  else
  {
    v26 = 0;
  }

  if (v26 < [v34 length])
  {
    [v22 appendString:{objc_msgSend(v34, "substringWithRange:", v26, objc_msgSend(v34, "length") - v26)}];
  }

  return [MEMORY[0x277CCACA8] stringWithString:v22];
}

@end