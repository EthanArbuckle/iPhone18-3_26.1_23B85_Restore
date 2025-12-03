@interface CAPackage
+ (id)packageWithContentsOfURL:(id)l type:(id)type options:(id)options error:(id *)error;
+ (id)packageWithData:(id)data type:(id)type options:(id)options error:(id *)error;
- (BOOL)isGeometryFlipped;
- (CALayer)rootLayer;
- (Class)CAMLParser:(id)parser didFailToFindClassWithName:(id)name;
- (Class)unarchiver:(id)unarchiver cannotDecodeObjectOfClassName:(id)name originalClasses:(id)classes;
- (id)CAMLParser:(id)parser resourceForURL:(id)l;
- (id)_initWithContentsOfURL:(id)l type:(id)type options:(id)options error:(id *)error;
- (id)_initWithData:(id)data type:(id)type options:(id)options error:(id *)error;
- (id)publishedObjectNames;
- (id)publishedObjectWithName:(id)name;
- (id)substitutedClasses;
- (void)CAMLParser:(id)parser didLoadResource:(id)resource fromURL:(id)l;
- (void)_addClassSubstitutions:(id)substitutions;
- (void)_readFromArchiveData:(id)data options:(id)options error:(id *)error;
- (void)_readFromCAMLData:(id)data type:(id)type options:(id)options error:(id *)error;
- (void)_readFromCAMLURL:(id)l type:(id)type options:(id)options error:(id *)error;
- (void)dealloc;
- (void)foreachLayer:(id)layer;
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

- (void)CAMLParser:(id)parser didLoadResource:(id)resource fromURL:(id)l
{
  data = self->_data;
  if (data)
  {
    [data->var6 setObject:resource forKey:l];
  }
}

- (id)CAMLParser:(id)parser resourceForURL:(id)l
{
  data = self->_data;
  if (data)
  {
    return [data->var6 objectForKey:l];
  }

  else
  {
    return 0;
  }
}

- (Class)CAMLParser:(id)parser didFailToFindClassWithName:(id)name
{
  substitutedClasses = [(CAPackage *)self substitutedClasses];

  return [substitutedClasses objectForKey:name];
}

- (Class)unarchiver:(id)unarchiver cannotDecodeObjectOfClassName:(id)name originalClasses:(id)classes
{
  unarchiverCopy = unarchiver;
  v29 = *MEMORY[0x1E69E9840];
  v8 = [classes count];
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
      v12 = NSClassFromString([classes objectAtIndex:v10]);
      if (v12)
      {
        v13 = v12;
        if (v12 != objc_opt_class())
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          allowedClasses = [unarchiverCopy allowedClasses];
          v15 = [allowedClasses countByEnumeratingWithState:&v25 objects:v24 count:16];
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
    v18 = unarchiverCopy;
    selfCopy = self;
    v20 = v11;
    v21 = 0;
    while (1)
    {
      if (*v26 != v17)
      {
        objc_enumerationMutation(allowedClasses);
      }

      if (([(objc_class *)v13 isSubclassOfClass:*(*(&v25 + 1) + 8 * v21)]& 1) != 0)
      {
        break;
      }

      if (v16 == ++v21)
      {
        v16 = [allowedClasses countByEnumeratingWithState:&v25 objects:v24 count:16];
        v11 = v20;
        self = selfCopy;
        unarchiverCopy = v18;
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

- (void)foreachLayer:(id)layer
{
  rootLayer = [(CAPackage *)self rootLayer];

  foreachLayer(rootLayer, layer);
}

- (id)publishedObjectWithName:(id)name
{
  data = self->_data;
  if (data)
  {
    return [data->var1 objectForKey:name];
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

- (void)_readFromCAMLURL:(id)l type:(id)type options:(id)options error:(id *)error
{
  v66 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  if ([type isEqualToString:@"com.apple.coreanimation-xml"])
  {
    v9 = +[CAMLParser parser];
    [v9 setDelegate:self];
    [v9 setBaseURL:{objc_msgSend(l, "URLByDeletingLastPathComponent")}];
    [v9 parseContentsOfURL:l];
    error = [v9 error];
    if (error && error && !*error)
    {
      *error = error;
    }

    result = [v9 result];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_data->var0 = result;
    }

    else
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to parse CAPackage: %@", @"Expected CALayer at root"];
      if (error && !*error)
      {
        v62 = *MEMORY[0x1E696A578];
        v64 = v19;
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v64, &v62, 1)}];
      }
    }
  }

  else if ([type isEqualToString:@"com.apple.coreanimation-bundle"])
  {
    v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:objc_msgSend(l isDirectory:{"path"), 1}];
    self->_data->var2 = [objc_msgSend(v12 "path")];
    v13 = [MEMORY[0x1E695DFF8] URLWithString:@"index.xml" relativeToURL:v12];
    v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v13 options:0 error:error];
    if (v14)
    {
      v15 = [MEMORY[0x1E696AE40] propertyListWithData:v14 options:0 format:0 error:error];
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to parse CAPackage from URL: %@", v13];
      if (error)
      {
        v17 = *error;
        if (*error)
        {
          v18 = *MEMORY[0x1E696AA08];
          v62 = *MEMORY[0x1E696A578];
          v63 = v18;
          v64 = v16;
          v65 = v17;
          *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v64, &v62, 2)}];
        }
      }
    }

    else
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to load CAPackage from URL: %@", v13];
      if (error)
      {
        v21 = *error;
        if (*error)
        {
          v22 = *MEMORY[0x1E696AA08];
          v62 = *MEMORY[0x1E696A578];
          v63 = v22;
          v64 = v20;
          v65 = v21;
          *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v64, &v62, 2)}];
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
      error2 = [v25 error];
      if (error)
      {
        if (error2 && !*error)
        {
          *error = error2;
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
      error3 = [v29 error];
      if (error && error3 && !*error)
      {
        *error = error3;
      }

      result2 = [v29 result];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_data->var0 = result2;
      }

      else
      {
        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to parse CAPackage: %@", @"Expected CALayer at root."];
        if (error && !*error)
        {
          v62 = *MEMORY[0x1E696A578];
          v64 = v32;
          *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v64, &v62, 1)}];
        }
      }
    }

    v33 = [v15 objectForKey:@"publishedObjectNames"];
    if (v33)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v48 = v15;
      errorCopy = error;
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
                    [dictionary setObject:v43 forKey:v38];
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
      error = errorCopy;
      self->_data->var1 = [dictionary copy];
    }

    v44 = [objc_msgSend(v15 objectForKey:{@"geometryFlipped", "BOOLValue"}];
    data = self->_data;
    data->var3 = v44;
    data->var5 = 0;
    data->var6 = 0;
  }

  if (error)
  {
    if (*error)
    {
      v46 = *error;
    }

    objc_autoreleasePoolPop(context);
    if (*error)
    {
      v47 = *error;
    }
  }

  else
  {
    objc_autoreleasePoolPop(context);
  }
}

- (void)_readFromCAMLData:(id)data type:(id)type options:(id)options error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  v10 = objc_autoreleasePoolPush();
  if ([type isEqualToString:@"com.apple.coreanimation-xml"])
  {
    v11 = +[CAMLParser parser];
    [v11 setDelegate:self];
    [v11 parseData:data];
    error = [v11 error];
    if (error && error && !*error)
    {
      *error = error;
    }

    result = [v11 result];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_data->var0 = result;
    }

    else
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to parse CAPackage: %@", @"Expected CALayer at root"];
      if (error && !*error)
      {
        v15 = *MEMORY[0x1E696A578];
        v16[0] = v14;
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:3 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v16, &v15, 1)}];
      }
    }
  }

  objc_autoreleasePoolPop(v10);
}

- (void)_readFromArchiveData:(id)data options:(id)options error:(id *)error
{
  v7 = objc_autoreleasePoolPush();
  v8 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:data error:0];
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

- (void)_addClassSubstitutions:(id)substitutions
{
  v14 = *MEMORY[0x1E69E9840];
  substitutedClasses = [(CAPackage *)self substitutedClasses];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [substitutedClasses countByEnumeratingWithState:&v10 objects:v9 count:16];
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
          objc_enumerationMutation(substitutedClasses);
        }

        [substitutions setClass:objc_msgSend(substitutedClasses forClassName:{"objectForKey:", *(*(&v10 + 1) + 8 * v8)), *(*(&v10 + 1) + 8 * v8)}];
        ++v8;
      }

      while (v6 != v8);
      v6 = [substitutedClasses countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }
}

- (id)_initWithData:(id)data type:(id)type options:(id)options error:(id *)error
{
  v13 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = CAPackage;
  v10 = [(CAPackage *)&v12 init];
  if (v10)
  {
    *(v10 + 1) = malloc_type_calloc(1uLL, 0x30uLL, 0x1080040EEFF6A89uLL);
    if ([type isEqualToString:@"com.apple.coreanimation-archive"])
    {
      [v10 _readFromArchiveData:data options:options error:error];
    }

    else if (([type isEqualToString:@"com.apple.coreanimation-bundle"] & 1) != 0 || objc_msgSend(type, "isEqualToString:", @"com.apple.coreanimation-xml"))
    {
      [v10 _readFromCAMLData:data type:type options:options error:error];
    }

    if (**(v10 + 1))
    {
      if ([objc_msgSend(options objectForKeyedSubscript:{@"prepareContents", "BOOLValue"}])
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

- (id)_initWithContentsOfURL:(id)l type:(id)type options:(id)options error:(id *)error
{
  v18[2] = *MEMORY[0x1E69E9840];
  if ([type isEqualToString:@"com.apple.coreanimation-archive"])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:l options:0 error:error];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to load CAPackage from URL: %@", l];
    if (error)
    {
      v13 = *error;
      if (*error)
      {
        v14 = *MEMORY[0x1E696AA08];
        v17[0] = *MEMORY[0x1E696A578];
        v17[1] = v14;
        v18[0] = v12;
        v18[1] = v13;
        *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CoreAnimationErrorDomain" code:2 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v18, v17, 2)}];
      }
    }

    if (v11)
    {
      self = [(CAPackage *)self _initWithData:v11 type:type options:options error:error];

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
  if (([type isEqualToString:@"com.apple.coreanimation-bundle"] & 1) != 0 || objc_msgSend(type, "isEqualToString:", @"com.apple.coreanimation-xml"))
  {
    [(CAPackage *)self _readFromCAMLURL:l type:type options:options error:error];
  }

  if (!self->_data->var0)
  {
    goto LABEL_14;
  }

  if ([objc_msgSend(options objectForKeyedSubscript:{@"prepareContents", "BOOLValue"}])
  {
    recursively_prepare_contents(self->_data->var0);
  }

  return self;
}

+ (id)packageWithData:(id)data type:(id)type options:(id)options error:(id *)error
{
  if (!data)
  {
    return 0;
  }

  v6 = [[self alloc] _initWithData:data type:type options:options error:error];

  return v6;
}

+ (id)packageWithContentsOfURL:(id)l type:(id)type options:(id)options error:(id *)error
{
  if (!l)
  {
    return 0;
  }

  v6 = [[self alloc] _initWithContentsOfURL:l type:type options:options error:error];

  return v6;
}

@end