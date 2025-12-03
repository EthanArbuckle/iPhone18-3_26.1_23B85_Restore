@interface NSSQLStoreMappingGenerator
+ (NSSQLStoreMappingGenerator)defaultMappingGenerator;
- (CFStringRef)newGeneratedPropertyName:(uint64_t)name;
- (NSSQLStoreMappingGenerator)init;
- (uint64_t)generateTableName:(int)name isAncillary:;
- (uint64_t)uniqueNameWithBase:(uint64_t)base;
- (void)dealloc;
@end

@implementation NSSQLStoreMappingGenerator

+ (NSSQLStoreMappingGenerator)defaultMappingGenerator
{
  objc_opt_self();
  result = _NSSQLDefaultMappingGenerator;
  if (!_NSSQLDefaultMappingGenerator)
  {
    result = objc_alloc_init(NSSQLStoreMappingGenerator);
    _NSSQLDefaultMappingGenerator = result;
  }

  return result;
}

- (NSSQLStoreMappingGenerator)init
{
  v4.receiver = self;
  v4.super_class = NSSQLStoreMappingGenerator;
  v2 = [(NSSQLStoreMappingGenerator *)&v4 init];
  if (v2)
  {
    v2->_names = objc_opt_new();
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSSQLStoreMappingGenerator;
  [(NSSQLStoreMappingGenerator *)&v3 dealloc];
}

- (uint64_t)uniqueNameWithBase:(uint64_t)base
{
  if (!base)
  {
    return 0;
  }

  v2 = a2;
  if ([a2 length])
  {
    v4 = [v2 characterAtIndex:0];
    if (v4 > 0x7F)
    {
      if (!__maskrune(v4, 0x100uLL))
      {
LABEL_7:
        v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%c%@", ((v4 - 48) % 26 + 65), objc_msgSend(v2, "substringFromIndex:", 1)];
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v4 + 60) & 0x100) == 0)
    {
      goto LABEL_7;
    }
  }

  v5 = [*(base + 8) objectForKey:v2];
  if (v5)
  {
    LODWORD(v6) = [v5 unsignedIntValue];
    do
    {
      v6 = (v6 + 1);
      v7 = [v2 stringByAppendingFormat:@"%d", v6];
    }

    while ([*(base + 8) objectForKey:v7]);
  }

  else
  {
    LODWORD(v6) = 0;
    v7 = v2;
  }

  valuePtr = v6;
  v8 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  [*(base + 8) setObject:v8 forKey:v2];

  return v7;
}

- (CFStringRef)newGeneratedPropertyName:(uint64_t)name
{
  v88 = *MEMORY[0x1E69E9840];
  if (!name)
  {
    Copy = 0;
LABEL_27:
    v22 = *MEMORY[0x1E69E9840];
    return Copy;
  }

  name = [a2 name];
  v4 = [name length];
  v5 = v4 + 1;
  if ((v4 + 1) < 0x201)
  {
    v9 = v4;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    *chars = 0u;
    v25 = 0u;
    chars[0] = 90;
    v26 = 0u;
    v27 = 0u;
    [name getCharacters:&chars[1]];
    chars[v5] = 0;
    if (v5 >= 2)
    {
      v10 = &chars[1];
      v11 = v9;
      do
      {
        *v10 = __toupper(*v10);
        ++v10;
        --v11;
      }

      while (v11);
    }

    if (!v5)
    {
      goto LABEL_15;
    }

    v12 = chars[0];
    if (SLOBYTE(chars[0]) > 0x7F)
    {
      if (!__maskrune(SLOBYTE(chars[0]), 0x100uLL))
      {
LABEL_14:
        __memmove_chk();
        chars[0] = (v12 - 48 - 26 * ((v12 - 48) / 0x1Au + ((((20165 * (v12 - 48)) >> 16) & 0x8000u) != 0)) + 65);
        v5 = v9 + 2;
        chars[v9 + 2] = 0;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * SLOBYTE(chars[0]) + 60) & 0x100) == 0)
    {
      goto LABEL_14;
    }

LABEL_15:
    v13 = CFStringCreateWithCharacters(0, chars, v5);
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    v83 = 0u;
    v82 = 0u;
    v81 = 0u;
    v80 = 0u;
    v79 = 0u;
    v78 = 0u;
    v77 = 0u;
    v76 = 0u;
    v75 = 0u;
    v74 = 0u;
    v73 = 0u;
    v72 = 0u;
    v71 = 0u;
    v70 = 0u;
    v69 = 0u;
    v68 = 0u;
    v67 = 0u;
    v66 = 0u;
    v65 = 0u;
    v64 = 0u;
    v63 = 0u;
    v62 = 0u;
    v61 = 0u;
    v60 = 0u;
    v59 = 0u;
    v58 = 0u;
    v57 = 0u;
    v56 = 0u;
    v14 = _PFStackAllocatorCreate(&v56, 1024);
    v15 = [*(name + 8) objectForKey:v13];
    if (v15)
    {
      unsignedIntValue = [v15 unsignedIntValue];
      MutableWithExternalCharactersNoCopy = 0;
      v18 = *MEMORY[0x1E695E498];
      v19 = (unsignedIntValue + 1);
      do
      {
        if (*(&v57 + 1))
        {
          if (MutableWithExternalCharactersNoCopy)
          {
            CFRelease(MutableWithExternalCharactersNoCopy);
          }
        }

        else
        {
          *(&v56 + 1) = v56;
        }

        MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(v14, chars, v5, 512, v18);
        valuePtr = v19;
        CFStringAppendFormat(MutableWithExternalCharactersNoCopy, 0, @"%d", v19);
        v19 = (v19 + 1);
      }

      while ([*(name + 8) objectForKey:MutableWithExternalCharactersNoCopy]);
      Copy = CFStringCreateCopy(0, MutableWithExternalCharactersNoCopy);
    }

    else
    {
      valuePtr = 0;
      Copy = v13;
      MutableWithExternalCharactersNoCopy = 0;
    }

    v21 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    [*(name + 8) setObject:v21 forKey:v13];

    if (MutableWithExternalCharactersNoCopy && *(&v57 + 1))
    {
      CFRelease(MutableWithExternalCharactersNoCopy);
    }

    goto LABEL_27;
  }

  v6 = -[NSSQLStoreMappingGenerator uniqueNameWithBase:](name, [@"Z" stringByAppendingString:{objc_msgSend(name, "uppercaseString")}]);
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (uint64_t)generateTableName:(int)name isAncillary:
{
  if (result)
  {
    do
    {
      v4 = a2;
      a2 = [a2 superentity];
    }

    while (a2);
    if (name)
    {
      v5 = @"A";
    }

    else
    {
      v5 = @"Z";
    }

    return [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@", v5, objc_msgSend(objc_msgSend(v4, "name"), "uppercaseString")];
  }

  return result;
}

@end