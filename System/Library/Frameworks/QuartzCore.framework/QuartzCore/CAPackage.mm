@interface CAPackage
+ (id)packageWithContentsOfURL:(id)a3 type:(id)a4 options:(id)a5 error:(id *)a6;
+ (id)packageWithData:(id)a3 type:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)isGeometryFlipped;
- (CALayer)rootLayer;
- (Class)CAMLParser:(id)a3 didFailToFindClassWithName:(id)a4;
- (Class)unarchiver:(id)a3 cannotDecodeObjectOfClassName:(id)a4 originalClasses:(id)a5;
- (id)CAMLParser:(id)a3 resourceForURL:(id)a4;
- (id)_initWithContentsOfURL:(id)a3 type:(id)a4 options:(id)a5 error:(id *)a6;
- (id)_initWithData:(id)a3 type:(id)a4 options:(id)a5 error:(id *)a6;
- (id)publishedObjectNames;
- (id)publishedObjectWithName:(id)a3;
- (id)substitutedClasses;
- (void)CAMLParser:(id)a3 didLoadResource:(id)a4 fromURL:(id)a5;
- (void)_addClassSubstitutions:(id)a3;
- (void)_readFromArchiveData:(id)a3 options:(id)a4 error:(id *)a5;
- (void)_readFromCAMLData:(id)a3 type:(id)a4 options:(id)a5 error:(id *)a6;
- (void)_readFromCAMLURL:(id)a3 type:(id)a4 options:(id)a5 error:(id *)a6;
- (void)dealloc;
- (void)foreachLayer:(id)a3;
@end

@implementation CAPackage

- (id)substitutedClasses
{
  {
    [CAPackage substitutedClasses]::dict = class_substitutions();
  }

  return [CAPackage substitutedClasses]::dict;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  data = self->_data;
  if (data)
  {
    +[CATransaction begin];
    [CATransaction activateBackground:pthread_main_np() == 0];

    +[CATransaction commit];
    free(data);
  }

  v4.receiver = self;
  v4.super_class = CAPackage;
  [(CAPackage *)&v4 dealloc];
}

- (CALayer)rootLayer
{
  data = self->_data;
  if (data)
  {
    return *data;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isGeometryFlipped
{
  data = self->_data;
  if (data)
  {
    LOBYTE(data) = !data->var3;
  }

  return data & 1;
}

- (void)CAMLParser:(id)a3 didLoadResource:(id)a4 fromURL:(id)a5
{
  data = self->_data;
  if (data)
  {
    [data->var6 setObject:a4 forKey:a5];
  }
}

- (id)CAMLParser:(id)a3 resourceForURL:(id)a4
{
  data = self->_data;
  if (data)
  {
    return [data->var6 objectForKey:a4];
  }

  else
  {
    return 0;
  }
}

- (Class)CAMLParser:(id)a3 didFailToFindClassWithName:(id)a4
{
  v5 = [(CAPackage *)self substitutedClasses];

  return [v5 objectForKey:a4];
}

- (Class)unarchiver:(id)a3 cannotDecodeObjectOfClassName:(id)a4 originalClasses:(id)a5
{
  v6 = a3;
  v29 = *MEMORY[0x1E69E9840];
  v8 = [a5 count];
  if (v8 < 2)
  {
LABEL_14:
    v13 = 0;
    self->_data->var4 = 1;
  }

  else
  {
    v9 = v8 & 0x7FFFFFFF;
    v10 = 1;
    v11 = 0x1E69E5000uLL;
    while (1)
    {
      v12 = NSClassFromString([a5 objectAtIndex:v10]);
      if (v12)
      {
        v13 = v12;
        if (v12 != objc_opt_class())
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v14 = [v6 allowedClasses];
          v15 = [v14 countByEnumeratingWithState:&v25 objects:v24 count:16];
          if (v15)
          {
            break;
          }
        }
      }

LABEL_13:
      if (++v10 == v9)
      {
        goto LABEL_14;
      }
    }

    v16 = v15;
    v17 = *v26;
    v23 = v9;
LABEL_7:
    v18 = v6;
    v19 = self;
    v20 = v11;
    v21 = 0;
    while (1)
    {
      if (*v26 != v17)
      {
        objc_enumerationMutation(v14);
      }

      if (([(objc_class *)v13 isSubclassOfClass:*(*(&v25 + 1) + 8 * v21)]& 1) != 0)
      {
        break;
      }

      if (v16 == ++v21)
      {
        v16 = [v14 countByEnumeratingWithState:&v25 objects:v24 count:16];
        v11 = v20;
        self = v19;
        v6 = v18;
        v9 = v23;
        if (v16)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }
  }

  return v13;
}

- (void)foreachLayer:(id)a3
{
  v4 = [(CAPackage *)self rootLayer];

  foreachLayer(v4, a3);
}

- (id)publishedObjectWithName:(id)a3
{
  data = self->_data;
  if (data)
  {
    return [data->var1 objectForKey:a3];
  }

  else
  {
    return 0;
  }
}

- (id)publishedObjectNames
{
  data = self->_data;
  if (data && (var1 = data->var1) != 0)
  {
    return [var1 allKeys];
  }

  else
  {
    return MEMORY[0x1E695E0F0];
  }
}

- (void)_readFromCAMLURL:(id)a3 type:(id)a4 options:(id)a5 error:(id *)a6
{
  v66 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  if ([a4 isEqualToString:@"com.apple.coreanimation-xml"])
  {
    v9 = +[CAMLParser parser];
    [v9 setDelegate:self];
    [v9 setBaseURL:{objc_msgSend(a3, "URLByDeletingLastPathComponent")}];
    [v9 parseContentsOfURL:a3];
    v10 = [v9 error];
    if (a6 && v10 && !*a6)
    {
      *a6 = v10;
    }

    v11 = [v9 result];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_data->var0 = v11;
    }

    else
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to parse CAPackage: %@", @"Expected CALayer at root"];
      if (a6 && !*a6)
      {
        v62 = *MEMORY[0x1E696A578];
        v64 = v19;
        *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v64, &v62, 1)}];
      }
    }
  }

  else if ([a4 isEqualToString:@"com.apple.coreanimation-bundle"])
  {
    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:objc_msgSend(a3 isDirectory:{"path"), 1}];
    self->_data->var2 = [objc_msgSend(v12 "path")];
    v13 = [MEMORY[0x1E695DFF8] URLWithString:@"index.xml" relativeToURL:v12];
    v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v13 options:0 error:a6];
    if (v14)
    {
      v15 = [MEMORY[0x1E696AE40] propertyListWithData:v14 options:0 format:0 error:a6];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to parse CAPackage from URL: %@", v13];
      if (a6)
      {
        v17 = *a6;
        if (*a6)
        {
          v18 = *MEMORY[0x1E696AA08];
          v62 = *MEMORY[0x1E696A578];
          v63 = v18;
          v64 = v16;
          v65 = v17;
          *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v64, &v62, 2)}];
        }
      }
    }

    else
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to load CAPackage from URL: %@", v13];
      if (a6)
      {
        v21 = *a6;
        if (*a6)
        {
          v22 = *MEMORY[0x1E696AA08];
          v62 = *MEMORY[0x1E696A578];
          v63 = v22;
          v64 = v20;
          v65 = v21;
          *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v64, &v62, 2)}];
        }
      }

      v15 = 0;
    }

    self->_data->var5 = [MEMORY[0x1E695DF70] array];
    self->_data->var6 = [MEMORY[0x1E695DF90] dictionary];
    v23 = [v15 objectForKey:@"stylesDocument"];
    if (v23)
    {
      v24 = [MEMORY[0x1E695DFF8] URLWithString:v23 relativeToURL:v12];
      v25 = +[CAMLParser parser];
      [self->_data->var5 addObject:v25];
      [v25 setDelegate:self];
      [v25 setBaseURL:v12];
      [v25 parseContentsOfURL:v24];
      v26 = [v25 error];
      if (a6)
      {
        if (v26 && !*a6)
        {
          *a6 = v26;
        }
      }
    }

    v27 = [v15 objectForKey:@"rootDocument"];
    if (v27)
    {
      v28 = [MEMORY[0x1E695DFF8] URLWithString:v27 relativeToURL:v12];
      v29 = +[CAMLParser parser];
      [self->_data->var5 addObject:v29];
      [v29 setDelegate:self];
      [v29 setBaseURL:v12];
      [v29 parseContentsOfURL:v28];
      v30 = [v29 error];
      if (a6 && v30 && !*a6)
      {
        *a6 = v30;
      }

      v31 = [v29 result];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_data->var0 = v31;
      }

      else
      {
        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to parse CAPackage: %@", @"Expected CALayer at root."];
        if (a6 && !*a6)
        {
          v62 = *MEMORY[0x1E696A578];
          v64 = v32;
          *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v64, &v62, 1)}];
        }
      }
    }

    v33 = [v15 objectForKey:@"publishedObjectNames"];
    if (v33)
    {
      v34 = [MEMORY[0x1E695DF90] dictionary];
      v48 = v15;
      v49 = a6;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v35 = [v33 countByEnumeratingWithState:&v58 objects:v57 count:16];
      if (v35)
      {
        v36 = *v59;
        do
        {
          for (i = 0; i != v35; ++i)
          {
            if (*v59 != v36)
            {
              objc_enumerationMutation(v33);
            }

            v38 = *(*(&v58 + 1) + 8 * i);
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            var5 = self->_data->var5;
            v40 = [var5 countByEnumeratingWithState:&v53 objects:v52 count:16];
            if (v40)
            {
              v41 = *v54;
              while (2)
              {
                for (j = 0; j != v40; ++j)
                {
                  if (*v54 != v41)
                  {
                    objc_enumerationMutation(var5);
                  }

                  v43 = [*(*(&v53 + 1) + 8 * j) objectById:v38];
                  if (v43)
                  {
                    [v34 setObject:v43 forKey:v38];
                    goto LABEL_52;
                  }
                }

                v40 = [var5 countByEnumeratingWithState:&v53 objects:v52 count:16];
                if (v40)
                {
                  continue;
                }

                break;
              }
            }

LABEL_52:
            ;
          }

          v35 = [v33 countByEnumeratingWithState:&v58 objects:v57 count:16];
        }

        while (v35);
      }

      v15 = v48;
      a6 = v49;
      self->_data->var1 = [v34 copy];
    }

    v44 = [objc_msgSend(v15 objectForKey:{@"geometryFlipped", "BOOLValue"}];
    data = self->_data;
    data->var3 = v44;
    data->var5 = 0;
    data->var6 = 0;
  }

  if (a6)
  {
    if (*a6)
    {
      v46 = *a6;
    }

    objc_autoreleasePoolPop(context);
    if (*a6)
    {
      v47 = *a6;
    }
  }

  else
  {
    objc_autoreleasePoolPop(context);
  }
}

- (void)_readFromCAMLData:(id)a3 type:(id)a4 options:(id)a5 error:(id *)a6
{
  v16[1] = *MEMORY[0x1E69E9840];
  v10 = objc_autoreleasePoolPush();
  if ([a4 isEqualToString:@"com.apple.coreanimation-xml"])
  {
    v11 = +[CAMLParser parser];
    [v11 setDelegate:self];
    [v11 parseData:a3];
    v12 = [v11 error];
    if (a6 && v12 && !*a6)
    {
      *a6 = v12;
    }

    v13 = [v11 result];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_data->var0 = v13;
    }

    else
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to parse CAPackage: %@", @"Expected CALayer at root"];
      if (a6 && !*a6)
      {
        v15 = *MEMORY[0x1E696A578];
        v16[0] = v14;
        *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v16, &v15, 1)}];
      }
    }
  }

  objc_autoreleasePoolPop(v10);
}

- (void)_readFromArchiveData:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:a3 error:0];
  v9 = v8;
  if (v8)
  {
    self->_data->var4 = 0;
    [v8 _allowDecodingCyclesInSecureMode];
    [v9 setDelegate:self];
    [(CAPackage *)self _addClassSubstitutions:v9];
    v10 = [v9 decodeObjectOfClasses:objc_msgSend(MEMORY[0x1E696AB10] forKey:{"CA_supportedClasses"), @"root"}];
    [v9 finishDecoding];

    v11 = [v10 objectForKey:@"rootLayer"];
    if (!self->_data->var4)
    {
      v12 = v11;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_data->var0 = v12;
        self->_data->var3 = [objc_msgSend(v10 objectForKey:{@"geometryFlipped", "BOOLValue"}];
        self->_data->var1 = [v10 objectForKey:@"publishedObjects"];
      }
    }
  }

  objc_autoreleasePoolPop(v7);
}

- (void)_addClassSubstitutions:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = [(CAPackage *)self substitutedClasses];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [a3 setClass:objc_msgSend(v4 forClassName:{"objectForKey:", *(*(&v10 + 1) + 8 * v8)), *(*(&v10 + 1) + 8 * v8)}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (id)_initWithData:(id)a3 type:(id)a4 options:(id)a5 error:(id *)a6
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = CAPackage;
  v10 = [(CAPackage *)&v12 init];
  if (v10)
  {
    *(v10 + 1) = malloc_type_calloc(1uLL, 0x30uLL, 0x1080040EEFF6A89uLL);
    if ([a4 isEqualToString:@"com.apple.coreanimation-archive"])
    {
      [v10 _readFromArchiveData:a3 options:a5 error:a6];
    }

    else if (([a4 isEqualToString:@"com.apple.coreanimation-bundle"] & 1) != 0 || objc_msgSend(a4, "isEqualToString:", @"com.apple.coreanimation-xml"))
    {
      [v10 _readFromCAMLData:a3 type:a4 options:a5 error:a6];
    }

    if (**(v10 + 1))
    {
      if ([objc_msgSend(a5 objectForKeyedSubscript:{@"prepareContents", "BOOLValue"}])
      {
        recursively_prepare_contents(**(v10 + 1));
      }
    }

    else
    {

      return 0;
    }
  }

  return v10;
}

- (id)_initWithContentsOfURL:(id)a3 type:(id)a4 options:(id)a5 error:(id *)a6
{
  v18[2] = *MEMORY[0x1E69E9840];
  if ([a4 isEqualToString:@"com.apple.coreanimation-archive"])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:a3 options:0 error:a6];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to load CAPackage from URL: %@", a3];
    if (a6)
    {
      v13 = *a6;
      if (*a6)
      {
        v14 = *MEMORY[0x1E696AA08];
        v17[0] = *MEMORY[0x1E696A578];
        v17[1] = v14;
        v18[0] = v12;
        v18[1] = v13;
        *a6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v18, v17, 2)}];
      }
    }

    if (v11)
    {
      self = [(CAPackage *)self _initWithData:v11 type:a4 options:a5 error:a6];

      return self;
    }

LABEL_14:

    return 0;
  }

  v16.receiver = self;
  v16.super_class = CAPackage;
  self = [(CAPackage *)&v16 init];
  if (!self)
  {
    return self;
  }

  self->_data = malloc_type_calloc(1uLL, 0x30uLL, 0x1080040EEFF6A89uLL);
  if (([a4 isEqualToString:@"com.apple.coreanimation-bundle"] & 1) != 0 || objc_msgSend(a4, "isEqualToString:", @"com.apple.coreanimation-xml"))
  {
    [(CAPackage *)self _readFromCAMLURL:a3 type:a4 options:a5 error:a6];
  }

  if (!self->_data->var0)
  {
    goto LABEL_14;
  }

  if ([objc_msgSend(a5 objectForKeyedSubscript:{@"prepareContents", "BOOLValue"}])
  {
    recursively_prepare_contents(self->_data->var0);
  }

  return self;
}

+ (id)packageWithData:(id)a3 type:(id)a4 options:(id)a5 error:(id *)a6
{
  if (!a3)
  {
    return 0;
  }

  v6 = [[a1 alloc] _initWithData:a3 type:a4 options:a5 error:a6];

  return v6;
}

+ (id)packageWithContentsOfURL:(id)a3 type:(id)a4 options:(id)a5 error:(id *)a6
{
  if (!a3)
  {
    return 0;
  }

  v6 = [[a1 alloc] _initWithContentsOfURL:a3 type:a4 options:a5 error:a6];

  return v6;
}

@end