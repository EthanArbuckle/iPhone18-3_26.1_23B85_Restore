@interface NSPathStore2
+ (id)pathStoreWithCharacters:(const unsigned __int16 *)characters length:(unint64_t)length;
+ (id)pathWithComponents:(id)components;
- (BOOL)isAbsolutePath;
- (BOOL)isEqualToString:(id)string;
- (id)_stringByResolvingSymlinksInPathUsingCache:(BOOL)cache;
- (id)_stringByStandardizingPathUsingCache:(BOOL)cache;
- (id)lastPathComponent;
- (id)pathExtension;
- (id)stringByAbbreviatingWithTildeInPath;
- (id)stringByAppendingPathComponent:(id)component;
- (id)stringByAppendingPathExtension:(id)extension;
- (id)stringByDeletingLastPathComponent;
- (id)stringByDeletingPathExtension;
- (id)stringByExpandingTildeInPath;
- (unsigned)characterAtIndex:(unint64_t)index;
- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range;
@end

@implementation NSPathStore2

- (BOOL)isAbsolutePath
{
  if (self->_lengthAndRefCount < 0x100000)
  {
    return 0;
  }

  v3 = self->_characters[0];
  return v3 == 126 || v3 == 47;
}

- (id)stringByDeletingLastPathComponent
{
  lengthAndRefCount = self->_lengthAndRefCount;
  v3 = lengthAndRefCount >> 20;
  if (self->_lengthAndRefCount >> 20 == 1)
  {
    v4 = self->_characters[0] == 47;
  }

  else
  {
    if (lengthAndRefCount >= 0x100000)
    {
      v5 = v3 - 1;
      v6 = &self->_characters[v3 - 2];
      while (v5)
      {
        v7 = *v6--;
        --v5;
        if (v7 == 47)
        {
          if (v5)
          {
            v4 = v5;
          }

          else
          {
            v4 = 1;
          }

          return [NSPathStore2 pathStoreWithCharacters:self->_characters length:v4];
        }
      }
    }

    v4 = 0;
  }

  return [NSPathStore2 pathStoreWithCharacters:self->_characters length:v4];
}

- (id)lastPathComponent
{
  v2 = *(self + 2);
  if (v2 >= 0x200000)
  {
    v3 = 0;
    v4 = v2 >> 20;
    v5 = self + 2 * v4 + 12;
    v6 = v4 - 1;
    while (v6 != v3)
    {
      v7 = *(v5 - 2);
      v5 -= 2;
      ++v3;
      if (v7 == 47)
      {
        return [NSPathStore2 pathStoreWithCharacters:v5 length:v3];
      }
    }
  }

  return self;
}

- (id)pathExtension
{
  v3 = self->_lengthAndRefCount >> 20;
  v4 = _NSStartOfPathExtension(self->_characters, v3);
  if (v4 < 1)
  {
    return &stru_1EEEFDF90;
  }

  return [(NSString *)self substringWithRange:v4 + 1, ~v4 + v3];
}

- (id)stringByDeletingPathExtension
{
  v3 = self->_lengthAndRefCount >> 20;
  v4 = _NSStartOfPathExtension(self->_characters, v3);
  if (v4 <= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  return [NSPathStore2 pathStoreWithCharacters:self->_characters length:v5];
}

- (id)stringByExpandingTildeInPath
{
  selfCopy = self;
  v16 = *MEMORY[0x1E69E9840];
  v14 = self->_lengthAndRefCount >> 20;
  characters = self->_characters;
  __memmove_chk();
  _NSExpandTildeInPath(v15, &v14);
  v5 = selfCopy->_lengthAndRefCount >> 20;
  if (v5 >= v14)
  {
    v6 = v14;
  }

  else
  {
    v6 = selfCopy->_lengthAndRefCount >> 20;
  }

  if (v6)
  {
    v7 = v15;
    while (1)
    {
      v9 = *characters++;
      v8 = v9;
      v10 = *v7++;
      v11 = v8 >= v10;
      v12 = v8 == v10;
      if (v8 > v10)
      {
        v4 = 1;
      }

      if (!v11)
      {
        v4 = -1;
      }

      if (!v12)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v4 = v14 < v5;
    if (v14 > v5)
    {
      return [NSPathStore2 pathStoreWithCharacters:v15 length:v14];
    }
  }

  if (v4)
  {
    return [NSPathStore2 pathStoreWithCharacters:v15 length:v14];
  }

  return selfCopy;
}

+ (id)pathStoreWithCharacters:(const unsigned __int16 *)characters length:(unint64_t)length
{
  lengthCopy = length;
  if (length > 0x400)
  {

    return [NSString stringWithCharacters:"stringWithCharacters:length:" length:?];
  }

  else
  {
    v6 = objc_opt_self();
    v7 = NSAllocateObject(v6, 2 * lengthCopy, 0);
    v8 = v7;
    if (lengthCopy)
    {
      memmove(v7 + 3, characters, 2 * lengthCopy);
      if (lengthCopy == 1)
      {
        v9 = 0x100000;
      }

      else
      {
        while (*(v8 + lengthCopy + 5) == 47)
        {
          if (lengthCopy-- <= 2)
          {
            LODWORD(lengthCopy) = 1;
            break;
          }
        }

        v9 = lengthCopy << 20;
      }
    }

    else
    {
      v9 = 0;
    }

    v8[2] = v9;

    return v8;
  }
}

- (unsigned)characterAtIndex:(unint64_t)index
{
  if (index >= self->_lengthAndRefCount >> 20)
  {
    v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: index (%lu) beyond bounds (%d)", _NSMethodExceptionProem(self, a2), index, self->_lengthAndRefCount >> 20), 0}];
    objc_exception_throw(v4);
  }

  return self->_characters[index];
}

- (void)getCharacters:(unsigned __int16 *)characters range:(_NSRange)range
{
  if (range.location + range.length >= (self->_lengthAndRefCount >> 20) + 1)
  {
    v5 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: index (%lu) beyond bounds (%d)", _NSMethodExceptionProem(self, a2), range.location + range.length, (self->_lengthAndRefCount >> 20) + 1), 0}];
    objc_exception_throw(v5);
  }

  if (range.length)
  {

    memmove(characters, &self->_characters[range.location], 2 * range.length);
  }
}

- (BOOL)isEqualToString:(id)string
{
  v34 = *MEMORY[0x1E69E9840];
  if (self == string)
  {
    return 1;
  }

  if (!string)
  {
    return 0;
  }

  selfCopy = self;
  if (object_getClass(string) == NSPathStore2)
  {
    v9 = *(selfCopy + 8) >> 20;
    v10 = *(string + 2) >> 20;
    if (v9 >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = (selfCopy + 12);
      v13 = (string + 12);
      while (1)
      {
        v15 = *v12++;
        v14 = v15;
        v16 = *v13++;
        v17 = v14 >= v16;
        v18 = v14 == v16;
        v19 = v14 > v16 ? 1 : selfCopy;
        selfCopy = v17 ? v19 : -1;
        if (!v18)
        {
          break;
        }

        if (!--v11)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      v17 = v9 >= v10;
      v20 = v9 > v10;
      if (v17)
      {
        selfCopy = v20;
      }

      else
      {
        selfCopy = -1;
      }
    }
  }

  else
  {
    v5 = [string length];
    v6 = v5;
    if (v5 >= 1041)
    {
      v7 = malloc_type_malloc(2 * v5, 0x1000040BDFB0063uLL);
    }

    else
    {
      v7 = v33;
    }

    [string getCharacters:v7 range:{0, v6}];
    v21 = *(selfCopy + 8) >> 20;
    if (v21 >= v6)
    {
      v22 = v6;
    }

    else
    {
      v22 = *(selfCopy + 8) >> 20;
    }

    if (v22)
    {
      v23 = (selfCopy + 12);
      v24 = v7;
      while (1)
      {
        v26 = *v23++;
        v25 = v26;
        v27 = *v24++;
        v28 = v25 >= v27;
        v29 = v25 == v27;
        v30 = v25 > v27 ? 1 : selfCopy;
        selfCopy = v28 ? v30 : -1;
        if (!v29)
        {
          break;
        }

        if (!--v22)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
LABEL_40:
      v31 = v6 > v21;
      v32 = v6 < v21;
      if (v31)
      {
        selfCopy = -1;
      }

      else
      {
        selfCopy = v32;
      }
    }

    if (v7 != v33)
    {
      free(v7);
    }
  }

  return selfCopy == 0;
}

+ (id)pathWithComponents:(id)components
{
  selfCopy = self;
  v51 = a2;
  v58 = *MEMORY[0x1E69E9840];
  if (!components || (_NSIsNSArray() & 1) == 0)
  {
    v42 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: components argument is not an array", _NSMethodExceptionProem(selfCopy, v51)), 0}];
    objc_exception_throw(v42);
  }

  if (![components count])
  {
    return &stru_1EEEFDF90;
  }

  v4 = [components count];
  v5 = v4;
  if (v4 >> 60)
  {
    v43 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v4);
    v44 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v43 userInfo:0];
    CFRelease(v43);
    objc_exception_throw(v44);
  }

  if (v4 <= 1)
  {
    v4 = 1;
  }

  MEMORY[0x1EEE9AC00](v4);
  v8 = &componentsCopy - v7;
  v53[1] = 0;
  v9 = 8 * v6;
  v47 = &componentsCopy;
  componentsCopy = components;
  if (v5 >= 0x101)
  {
    v8 = _CFCreateArrayStorage();
    v10 = malloc_type_malloc(v9, 0x100004000313F17uLL);
    v53[0] = 0;
    v48 = v8;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v6);
    v10 = &componentsCopy - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v10, v9);
    v53[0] = 0;
    if (!v5)
    {
      v48 = 0;
      v14 = 0;
      v17 = 1;
      goto LABEL_17;
    }

    v48 = 0;
  }

  v13 = 0;
  v14 = 0;
  for (i = 0; i != v5; ++i)
  {
    v16 = [components objectAtIndexedSubscript:{i, componentsCopy}];
    *&v8[8 * i] = v16;
    v11 = [v16 length];
    *&v10[8 * i] = v11;
    if (v14 <= v11)
    {
      v14 = v11;
    }

    v13 += v11;
  }

  v17 = 0;
LABEL_17:
  MEMORY[0x1EEE9AC00](v11);
  v19 = (&componentsCopy - v18);
  v52 = v20;
  v22 = 2 * v21;
  if (v20 >= 0x101)
  {
    v23 = malloc_type_malloc(v22, 0x1000040BDFB0063uLL);
    v19 = v23;
  }

  else
  {
    bzero(&componentsCopy - v18, v22);
  }

  MEMORY[0x1EEE9AC00](v23);
  v25 = &componentsCopy - v24;
  v27 = 2 * v26;
  v46 = &componentsCopy;
  if (v14 >= 0x101)
  {
    v25 = malloc_type_malloc(v27, 0x1000040BDFB0063uLL);
    if (v17)
    {
      goto LABEL_36;
    }
  }

  else
  {
    bzero(&componentsCopy - v24, v27);
    if (v17)
    {
      goto LABEL_36;
    }
  }

  v28 = 0;
  v49 = v19 - 1;
  do
  {
    [*&v8[8 * v28] getCharacters:v25 range:{0, *&v10[8 * v28], componentsCopy, v46, v47, v48}];
    if (*&v10[8 * v28] + v53[0] >= 1019)
    {
      _NSTransmutePathSlashes(v19, v53);
      v29 = v53[0];
      if (v53[0] >= 2)
      {
        v30 = v49[v53[0]];
        v31 = v53[0];
        while (v30 == 47)
        {
          if (v29 <= 2)
          {
            v31 = 1;
            break;
          }

          v31 = v29 - 1;
          v30 = v19[v29-- - 2];
        }

        v53[0] = v31;
      }
    }

    if ((_NSAppendPathComponent(v19, v53, v52, v25, *&v10[8 * v28]) & 1) == 0)
    {
      v32 = _NSMethodExceptionProem(selfCopy, v51);
      NSLog(@"%@: cannot append path '%@' to path '%@'", v32, *&v8[8 * v28], [NSString stringWithCharacters:v19 length:v53[0]]);
    }

    ++v28;
  }

  while (v28 != v5);
LABEL_36:
  if (v14 >= 0x101)
  {
    free(v25);
  }

  _NSTransmutePathSlashes(v19, v53);
  v33 = v53[0];
  if (v53[0] < 2)
  {
    v36 = 0;
    goto LABEL_50;
  }

  if (v19[v53[0] - 1] != 47)
  {
    v34 = v53[0];
LABEL_45:
    v53[0] = v34;
    if (*v19 == 92)
    {
      v36 = 2 * (v19[1] == 92);
    }

    else
    {
      v36 = 0;
    }

    v33 = v34;
LABEL_50:
    if (v36 >= v33)
    {
      goto LABEL_51;
    }

    goto LABEL_53;
  }

  while (v33 > 2)
  {
    v34 = v33 - 1;
    v35 = v19[v33-- - 2];
    if (v35 != 47)
    {
      goto LABEL_45;
    }
  }

  v36 = 0;
  v33 = 1;
  v53[0] = 1;
LABEL_53:
  if (!v19[v36])
  {
LABEL_57:
    v38 = _NSOSLog();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
    {
      v40 = componentsCopy;
      v41 = [componentsCopy valueForKey:@"length"];
      *buf = 138478083;
      v55 = v40;
      v56 = 2112;
      v57 = v41;
      _os_log_fault_impl(&dword_18075C000, v38, OS_LOG_TYPE_FAULT, "Creating path from components (%{private}@, lengths: %@) resulted in an embedded NUL character", buf, 0x16u);
    }

    v12 = 0;
    goto LABEL_60;
  }

  while (v33 - 1 != v36)
  {
    if (!v19[++v36])
    {
      if (v36 >= v33)
      {
        break;
      }

      goto LABEL_57;
    }
  }

LABEL_51:
  v12 = [NSPathStore2 pathStoreWithCharacters:v19 length:componentsCopy];
LABEL_60:
  if (v52 >= 0x101)
  {
    free(v19);
  }

  if (v5 >= 0x101)
  {
    free(v10);
  }

  free(v48);
  return v12;
}

- (id)stringByAppendingPathComponent:(id)component
{
  selfCopy = self;
  v38[260] = *MEMORY[0x1E69E9840];
  if (!component)
  {
    return selfCopy;
  }

  v6 = self->_lengthAndRefCount >> 20;
  Class = object_getClass(component);
  if (Class == NSPathStore2)
  {
    v27 = 0;
    v9 = *(component + 2) >> 20;
    v10 = component + 12;
  }

  else
  {
    v8 = [component length];
    v9 = v8;
    v10 = v38;
    if (v8 >= 1041)
    {
      v10 = malloc_type_malloc(2 * v8, 0x1000040BDFB0063uLL);
    }

    v27 = v10 != v38;
    Class = [component getCharacters:v10 range:{0, v9}];
  }

  v28 = v26;
  v29 = v6;
  v11 = v6 + v9 + 1;
  MEMORY[0x1EEE9AC00](Class);
  v13 = &v26[-v12];
  v15 = 2 * v14;
  if (v11 > 0x100)
  {
    v13 = malloc_type_malloc(v15, 0x1000040BDFB0063uLL);
  }

  else
  {
    bzero(&v26[-v12], v15);
  }

  memmove(v13, selfCopy->_characters, 2 * v6);
  if ((_NSAppendPathComponent(v13, &v29, v6 + v9 + 1, v10, v9) & 1) == 0)
  {
    v19 = _NSMethodExceptionProem(selfCopy, a2);
    NSLog(@"%@: cannot append path '%@' to path '%@'", v19, component, selfCopy);
    return 0;
  }

  _NSTransmutePathSlashes(v13, &v29);
  v16 = v29;
  if (v29 < 2)
  {
    v20 = 0;
  }

  else
  {
    if (v13[v29 - 1] == 47)
    {
      while (v16 > 2)
      {
        v17 = v16 - 1;
        v18 = v13[v16-- - 2];
        if (v18 != 47)
        {
          goto LABEL_19;
        }
      }

      v20 = 0;
      v16 = 1;
      v29 = 1;
      goto LABEL_29;
    }

    v17 = v29;
LABEL_19:
    v29 = v17;
    if (*v13 == 92)
    {
      v20 = 2 * (v13[1] == 92);
    }

    else
    {
      v20 = 0;
    }

    v16 = v17;
  }

  if (v20 < v16)
  {
LABEL_29:
    if (v13[v20])
    {
      while (v16 - 1 != v20)
      {
        if (!v13[++v20])
        {
          if (v20 >= v16)
          {
            goto LABEL_24;
          }

          goto LABEL_33;
        }
      }

      goto LABEL_24;
    }

LABEL_33:
    v22 = _NSOSLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      v24 = [component length];
      v25 = [(NSPathStore2 *)selfCopy length];
      v30 = 138478595;
      componentCopy = component;
      v32 = 2048;
      v33 = v24;
      v34 = 2113;
      v35 = selfCopy;
      v36 = 2048;
      v37 = v25;
      _os_log_fault_impl(&dword_18075C000, v22, OS_LOG_TYPE_FAULT, "Appending path component %{private}@ (length: %lu) to string %{private}@ (length: %lu) resulted in an embedded NUL character", &v30, 0x2Au);
    }

    return 0;
  }

LABEL_24:
  if (v27)
  {
    free(v10);
    v16 = v29;
  }

  selfCopy = [NSPathStore2 pathStoreWithCharacters:v13 length:v16];
  if (v11 >= 0x101)
  {
    free(v13);
  }

  return selfCopy;
}

- (id)stringByAppendingPathExtension:(id)extension
{
  selfCopy = self;
  v36[1] = *MEMORY[0x1E69E9840];
  if (!extension)
  {
    v34 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: nil argument", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v34);
  }

  v6 = [extension length];
  if (v6)
  {
    v7 = v6;
    v8 = selfCopy->_lengthAndRefCount >> 20;
    v9 = v6 + v8 + 1;
    MEMORY[0x1EEE9AC00](v6);
    v12 = v35 - v11;
    if (v10 > 0x100)
    {
      v13 = malloc_type_malloc(2 * v10, 0x1000040BDFB0063uLL);
      v12 = v13;
    }

    else
    {
      bzero(v12, 2 * v10);
    }

    MEMORY[0x1EEE9AC00](v13);
    v17 = v35 - v16;
    v19 = 2 * v18;
    v35[1] = v35;
    if (v9 > 0x100)
    {
      v17 = malloc_type_malloc(v19, 0x1000040BDFB0063uLL);
    }

    else
    {
      bzero(v35 - v16, v19);
    }

    [extension getCharacters:v12 range:{0, v7}];
    characters = selfCopy->_characters;
    memmove(v17, selfCopy->_characters, 2 * v8);
    v36[0] = v8;
    if (_NSAppendPathExtension(v17, v36, v9, v12, v7))
    {
      _NSTransmutePathSlashes(v17, v36);
      v22 = v36[0];
      if (v36[0] >= 2 && (v21 = *&v17[2 * v36[0] - 2], v21 == 47))
      {
        v21 = (v17 - 4);
        while (v22 > 2)
        {
          v23 = v22 - 1;
          v24 = *(v21 + 2 * v22--);
          if (v24 != 47)
          {
            goto LABEL_21;
          }
        }

        v23 = 1;
      }

      else
      {
        v23 = v36[0];
      }

LABEL_21:
      v26 = selfCopy->_lengthAndRefCount >> 20;
      if (v26 >= v23)
      {
        v27 = v23;
      }

      else
      {
        v27 = selfCopy->_lengthAndRefCount >> 20;
      }

      if (v27)
      {
        v28 = v17;
        while (1)
        {
          v30 = *characters++;
          v29 = v30;
          v31 = *v28;
          v28 += 2;
          v32 = v29 >= v31;
          v33 = v29 == v31;
          if (v29 > v31)
          {
            v21 = 1;
          }

          if (!v32)
          {
            v21 = -1;
          }

          if (!v33)
          {
            break;
          }

          if (!--v27)
          {
            goto LABEL_33;
          }
        }

        if (!v21)
        {
          goto LABEL_36;
        }
      }

      else
      {
LABEL_33:
        if (v23 <= v26 && v23 >= v26)
        {
          goto LABEL_36;
        }
      }

      selfCopy = [NSPathStore2 pathStoreWithCharacters:v17 length:?];
    }

    else
    {
      v25 = _NSMethodExceptionProem(selfCopy, a2);
      NSLog(@"%@: cannot append extension '%@' to path '%@'", v25, extension, selfCopy);
      selfCopy = 0;
    }

LABEL_36:
    if (v7 >= 0x101)
    {
      free(v12);
    }

    if (v9 >= 0x101)
    {
      free(v17);
    }

    return selfCopy;
  }

  v14 = [(NSPathStore2 *)selfCopy copy];

  return v14;
}

- (id)stringByAbbreviatingWithTildeInPath
{
  selfCopy = self;
  v16 = *MEMORY[0x1E69E9840];
  v14 = self->_lengthAndRefCount >> 20;
  characters = self->_characters;
  __memmove_chk();
  _NSAbbreviatePathWithTilde(v15, &v14);
  v5 = selfCopy->_lengthAndRefCount >> 20;
  if (v5 >= v14)
  {
    v6 = v14;
  }

  else
  {
    v6 = selfCopy->_lengthAndRefCount >> 20;
  }

  if (v6)
  {
    v7 = v15;
    while (1)
    {
      v9 = *characters++;
      v8 = v9;
      v10 = *v7++;
      v11 = v8 >= v10;
      v12 = v8 == v10;
      if (v8 > v10)
      {
        v4 = 1;
      }

      if (!v11)
      {
        v4 = -1;
      }

      if (!v12)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v4 = v14 < v5;
    if (v14 > v5)
    {
      return [NSPathStore2 pathStoreWithCharacters:v15 length:v14];
    }
  }

  if (v4)
  {
    return [NSPathStore2 pathStoreWithCharacters:v15 length:v14];
  }

  return selfCopy;
}

- (id)_stringByStandardizingPathUsingCache:(BOOL)cache
{
  cacheCopy = cache;
  selfCopy = self;
  v18 = *MEMORY[0x1E69E9840];
  v16 = self->_lengthAndRefCount >> 20;
  characters = self->_characters;
  __memmove_chk();
  _NSExpandTildeInPath(v17, &v16);
  _NSStandardizePathUsingCache(v17, &v16, cacheCopy);
  v7 = selfCopy->_lengthAndRefCount >> 20;
  if (v7 >= v16)
  {
    v8 = v16;
  }

  else
  {
    v8 = selfCopy->_lengthAndRefCount >> 20;
  }

  if (v8)
  {
    v9 = v17;
    while (1)
    {
      v11 = *characters++;
      v10 = v11;
      v12 = *v9++;
      v13 = v10 >= v12;
      v14 = v10 == v12;
      if (v10 > v12)
      {
        v6 = 1;
      }

      if (!v13)
      {
        v6 = -1;
      }

      if (!v14)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v6 = v16 < v7;
    if (v16 > v7)
    {
      return [NSPathStore2 pathStoreWithCharacters:v17 length:v16];
    }
  }

  if (v6)
  {
    return [NSPathStore2 pathStoreWithCharacters:v17 length:v16];
  }

  return selfCopy;
}

- (id)_stringByResolvingSymlinksInPathUsingCache:(BOOL)cache
{
  cacheCopy = cache;
  selfCopy = self;
  v18 = *MEMORY[0x1E69E9840];
  v16 = self->_lengthAndRefCount >> 20;
  characters = self->_characters;
  __memmove_chk();
  _NSExpandTildeInPath(v17, &v16);
  _NSResolveSymlinksInPathUsingCache(v17, &v16, cacheCopy);
  _NSStandardizePathUsingCache(v17, &v16, cacheCopy);
  v7 = selfCopy->_lengthAndRefCount >> 20;
  if (v7 >= v16)
  {
    v8 = v16;
  }

  else
  {
    v8 = selfCopy->_lengthAndRefCount >> 20;
  }

  if (v8)
  {
    v9 = v17;
    while (1)
    {
      v11 = *characters++;
      v10 = v11;
      v12 = *v9++;
      v13 = v10 >= v12;
      v14 = v10 == v12;
      if (v10 > v12)
      {
        v6 = 1;
      }

      if (!v13)
      {
        v6 = -1;
      }

      if (!v14)
      {
        break;
      }

      if (!--v8)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v6 = v16 < v7;
    if (v16 > v7)
    {
      return [NSPathStore2 pathStoreWithCharacters:v17 length:v16];
    }
  }

  if (v6)
  {
    return [NSPathStore2 pathStoreWithCharacters:v17 length:v16];
  }

  return selfCopy;
}

@end