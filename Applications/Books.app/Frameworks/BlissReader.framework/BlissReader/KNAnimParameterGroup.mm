@interface KNAnimParameterGroup
+ (id)parameterGroupForFile:(id)a3;
- (KNAnimParameterGroup)initWithFileName:(id)a3;
- (double)valueForAnimationCurve:(id)a3 atPercent:(double)a4;
- (double)valueForConstant:(id)a3;
- (id)mediaTimingFunctionForAnimationCurve:(id)a3;
- (void)dealloc;
- (void)readAnimationCurvesFromFile;
- (void)resetAnimationCurvesFromBundle;
- (void)writeAnimationCurvesToFile;
@end

@implementation KNAnimParameterGroup

+ (id)parameterGroupForFile:(id)a3
{
  v4 = qword_567928;
  if (!qword_567928)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    qword_567928 = v4;
  }

  v5 = [v4 objectForKey:a3];
  if (!v5)
  {
    v5 = [[KNAnimParameterGroup alloc] initWithFileName:a3];
    [qword_567928 setObject:v5 forKey:a3];
  }

  return v5;
}

- (double)valueForConstant:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_parametersDict objectForKeyedSubscript:?];
  if (!v4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0.0;
  }

  v5 = v4;
  if ([objc_msgSend(v4 objectForKeyedSubscript:{@"type", "integerValue"}] != &dword_0 + 1)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0.0;
  }

  v6 = [v5 objectForKeyedSubscript:@"value"];
  if (!v6)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0.0;
  }

  [v6 doubleValue];
  return result;
}

- (double)valueForAnimationCurve:(id)a3 atPercent:(double)a4
{
  if (a4 < 0.0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (a4 > 1.0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v7 = [(NSMutableDictionary *)self->_parametersDict objectForKeyedSubscript:a3];
  if (!v7)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0.0;
  }

  v8 = [v7 objectForKeyedSubscript:@"value"];
  if (!v8)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0.0;
  }

  [v8 yValueFromXValue:a4];
  return result;
}

- (id)mediaTimingFunctionForAnimationCurve:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_parametersDict objectForKeyedSubscript:?];
  if (!v4)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  v5 = v4;
  if ([objc_msgSend(v4 objectForKeyedSubscript:{@"type", "integerValue"}] != &dword_8 + 2)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  v6 = [v5 objectForKeyedSubscript:@"value"];
  if (!v6)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    return 0;
  }

  v7 = v6;
  x = CGPointZero.x;
  y = CGPointZero.y;
  if ([v6 elementCount] < 2)
  {
    v16 = CGPointZero.x;
    v15 = y;
  }

  else
  {
    v14 = 1;
    v15 = y;
    v16 = CGPointZero.x;
    do
    {
      if ([v7 elementAtIndex:v14 associatedPoints:v18] == &dword_0 + 2)
      {
        v16 = *v18;
        v15 = *&v18[1];
        x = *&v18[2];
        y = *&v18[3];
      }

      ++v14;
    }

    while (v14 < [v7 elementCount]);
  }

  *&v10 = v16;
  *&v11 = v15;
  *&v12 = x;
  *&v13 = y;
  return [CAMediaTimingFunction functionWithControlPoints:v10];
}

- (KNAnimParameterGroup)initWithFileName:(id)a3
{
  v6.receiver = self;
  v6.super_class = KNAnimParameterGroup;
  v4 = [(KNAnimParameterGroup *)&v6 init];
  if (v4)
  {
    if (!a3)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v4->_fileName = a3;
    v4->_originalFileName = a3;
    v4->_name = [objc_msgSend(a3 "lastPathComponent")];
    [(KNAnimParameterGroup *)v4 readAnimationCurvesFromFile];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = KNAnimParameterGroup;
  [(KNAnimParameterGroup *)&v3 dealloc];
}

- (void)readAnimationCurvesFromFile
{
  p_fileName = &self->_fileName;
  if (([objc_alloc_init(NSFileManager) fileExistsAtPath:self->_fileName] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v4 = [NSData dataWithContentsOfFile:*p_fileName];
  v21 = 0;
  v5 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v4 error:&v21];
  if (v21)
  {
    v6 = THLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_29D438();
    }
  }

  else
  {
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v5 decodeObjectOfClasses:+[NSSet setWithObjects:](NSSet forKey:{"setWithObjects:", v7, v8, v9, v10, objc_opt_class(), 0), NSKeyedArchiveRootObjectKey}];
    v23 = [NSSortDescriptor sortDescriptorWithKey:@"name" ascending:1];
    v12 = +[NSMutableArray arrayWithArray:](NSMutableArray, "arrayWithArray:", [v11 sortedArrayUsingDescriptors:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v23, 1)}]);
    if (!v12)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    [(KNAnimParameterGroup *)self willChangeValueForKey:@"parameterArray"];
    self->_parameterArray = v12;
    [(KNAnimParameterGroup *)self didChangeValueForKey:@"parameterArray"];

    self->_parametersDict = objc_alloc_init(NSMutableDictionary);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          -[NSMutableDictionary setObject:forKeyedSubscript:](self->_parametersDict, "setObject:forKeyedSubscript:", *(*(&v17 + 1) + 8 * i), [*(*(&v17 + 1) + 8 * i) objectForKeyedSubscript:@"name"]);
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v14);
    }
  }
}

- (void)resetAnimationCurvesFromBundle
{
  v3 = objc_alloc_init(NSFileManager);
  v4 = [(NSString *)NSHomeDirectory() stringByAppendingPathComponent:@"Keynote Animation Parameters"];
  if (([v3 fileExistsAtPath:v4] & 1) == 0)
  {
    [v3 createDirectoryAtPath:v4 withIntermediateDirectories:0 attributes:0 error:0];
  }

  p_fileName = &self->_fileName;
  v6 = [(NSString *)v4 stringByAppendingPathComponent:[(NSString *)self->_fileName lastPathComponent]];
  if (([v3 fileExistsAtPath:v6] & 1) == 0)
  {
    v26 = 0;
    if (([v3 copyItemAtPath:*p_fileName toPath:v6 error:&v26] & 1) == 0)
    {
      v7 = +[TSUAssertionHandler currentHandler];
      v8 = [NSString stringWithUTF8String:"[KNAnimParameterGroup resetAnimationCurvesFromBundle]"];
      v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/KNAnimParameterGroup.m"];
      [v7 handleFailureInFunction:v8 file:v9 lineNumber:273 description:{@"%@", v26}];
    }
  }

  if (([v3 fileExistsAtPath:*p_fileName] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v10 = [NSData dataWithContentsOfFile:self->_originalFileName];
  v26 = 0;
  v11 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v10 error:&v26];
  if (v26)
  {
    v12 = THLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_29D4A8();
    }
  }

  else
  {
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = [v11 decodeObjectOfClasses:+[NSSet setWithObjects:](NSSet forKey:{"setWithObjects:", v13, v14, v15, v16, objc_opt_class(), 0), NSKeyedArchiveRootObjectKey}];
    if (!v17)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    [(KNAnimParameterGroup *)self willChangeValueForKey:@"parameterArray"];
    self->_parameterArray = v17;
    [(KNAnimParameterGroup *)self didChangeValueForKey:@"parameterArray"];

    self->_parametersDict = objc_alloc_init(NSMutableDictionary);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v23;
      do
      {
        for (i = 0; i != v19; i = i + 1)
        {
          if (*v23 != v20)
          {
            objc_enumerationMutation(v17);
          }

          -[NSMutableDictionary setObject:forKeyedSubscript:](self->_parametersDict, "setObject:forKeyedSubscript:", *(*(&v22 + 1) + 8 * i), [*(*(&v22 + 1) + 8 * i) objectForKeyedSubscript:@"name"]);
        }

        v19 = [v17 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v19);
    }

    [NSKeyedArchiver archiveRootObject:self->_parameterArray toFile:self->_fileName];
  }
}

- (void)writeAnimationCurvesToFile
{
  v3 = objc_alloc_init(NSFileManager);
  v4 = [(NSString *)NSHomeDirectory() stringByAppendingPathComponent:@"Keynote Animation Parameters"];
  if (([v3 fileExistsAtPath:v4] & 1) == 0)
  {
    [v3 createDirectoryAtPath:v4 withIntermediateDirectories:0 attributes:0 error:0];
  }

  v5 = [(NSString *)v4 stringByAppendingPathComponent:[(NSString *)self->_fileName lastPathComponent]];
  if (([v3 fileExistsAtPath:v5] & 1) == 0)
  {
    v25 = 0;
    if ([v3 copyItemAtPath:self->_fileName toPath:v5 error:&v25])
    {
      goto LABEL_13;
    }

    v21 = +[TSUAssertionHandler currentHandler];
    v22 = [NSString stringWithUTF8String:"[KNAnimParameterGroup writeAnimationCurvesToFile]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/KNAnimParameterGroup.m"];
    v17 = @"%@";
    v24 = v25;
    v18 = v21;
    v19 = v22;
    v20 = 326;
    goto LABEL_12;
  }

  v25 = 0;
  v6 = [v3 attributesOfItemAtPath:v5 error:&v25];
  if (v25)
  {
    v7 = +[TSUAssertionHandler currentHandler];
    v8 = [NSString stringWithUTF8String:"[KNAnimParameterGroup writeAnimationCurvesToFile]"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/KNAnimParameterGroup.m"];
    [v7 handleFailureInFunction:v8 file:v9 lineNumber:332 description:{@"Error trying to look at %@: %@", v5, v25}];
  }

  v10 = [v3 attributesOfItemAtPath:self->_fileName error:&v25];
  if (v25)
  {
    v11 = +[TSUAssertionHandler currentHandler];
    v12 = [NSString stringWithUTF8String:"[KNAnimParameterGroup writeAnimationCurvesToFile]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/KNAnimParameterGroup.m"];
    [v11 handleFailureInFunction:v12 file:v13 lineNumber:334 description:{@"Error trying to look at %@: %@", self->_fileName, v25}];
  }

  if ([objc_msgSend(v6 objectForKey:{NSFileModificationDate), "compare:", objc_msgSend(v10, "objectForKey:", NSFileModificationDate)}] == -1)
  {
    v14 = +[TSUAssertionHandler currentHandler];
    v15 = [NSString stringWithUTF8String:"[KNAnimParameterGroup writeAnimationCurvesToFile]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/Widgets/Keynote/Animations/KNAnimParameterGroup.m"];
    v17 = @"Warning! File in Desktop's Keynote Animation Parameters is less recent than packaged parameter file!";
    v18 = v14;
    v19 = v15;
    v20 = 340;
LABEL_12:
    [v18 handleFailureInFunction:v19 file:v16 lineNumber:v20 description:{v17, v24}];
  }

LABEL_13:

  v23 = v5;
  self->_fileName = v23;
  if (([v3 fileExistsAtPath:v23] & 1) == 0)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [NSKeyedArchiver archiveRootObject:self->_parameterArray toFile:self->_fileName];
}

@end