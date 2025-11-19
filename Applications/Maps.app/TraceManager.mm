@interface TraceManager
+ (id)sharedManager;
- (BOOL)_checkPathSuffix:(id)a3 matchesTraceType:(int64_t)a4;
- (BOOL)deleteUserTraceWithName:(id)a3 withTraceType:(int64_t)a4;
- (TraceManager)init;
- (id)_cleanPathForDirectory:(id)a3;
- (id)_listOfUserTracesWithTraceTypes:(id)a3;
- (id)_validatedFilenamesFromTracePaths:(id)a3 traceType:(int64_t)a4;
- (id)clearSimulatedTracePath;
- (id)extensionForTraceType:(int64_t)a3;
- (id)filenameForUserTrace:(id)a3 traceType:(int64_t)a4;
- (id)fullPathForTraceFilename:(id)a3 withTraceType:(int64_t)a4;
- (id)listOfAllUserTraces;
- (id)listOfUserTracesWithTraceType:(int64_t)a3;
- (id)migrateTraceWithExtraResourceType:(id)a3;
- (id)pathForUserTrace:(id)a3 withTraceType:(int64_t)a4;
- (id)preferredUserTracePathForName:(id)a3 withTraceType:(int64_t)a4;
- (id)tracesDirectoryWithTraceType:(int64_t)a3;
- (id)tracesDirectoryWithTraceType:(int64_t)a3 resolveSymlink:(BOOL)a4;
- (void)_migrateTracesInLegacyDirectory;
@end

@implementation TraceManager

- (void)_migrateTracesInLegacyDirectory
{
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 stringByAppendingPathComponent:@"Maps"];
    v6 = [v5 stringByAppendingPathComponent:@"NavTraces"];

    if ([(NSFileManager *)self->_fileManager fileExistsAtPath:v6])
    {
      v17 = v3;
      v7 = [(NSFileManager *)self->_fileManager contentsOfDirectoryAtPath:v6 error:0];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v19;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v18 + 1) + 8 * i);
            fileManager = self->_fileManager;
            v14 = [v6 stringByAppendingPathComponent:v12];
            v15 = [(TraceManager *)self tracesDirectoryWithTraceType:0];
            v16 = [v15 stringByAppendingPathComponent:v12];
            [(NSFileManager *)fileManager moveItemAtPath:v14 toPath:v16 error:0];
          }

          v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v9);
      }

      v3 = v17;
    }
  }
}

- (id)migrateTraceWithExtraResourceType:(id)a3
{
  v4 = a3;
  v5 = [v4 lastPathComponent];
  v6 = [v5 stringByReplacingOccurrencesOfString:@".trace.sqlite" withString:&stru_1016631F0];
  v7 = +[MNFilePaths navTraceExtension];
  v8 = [v6 stringByReplacingOccurrencesOfString:v7 withString:&stru_1016631F0];

  v9 = [(TraceManager *)self pathForUserTrace:v8 withTraceType:0];
  LODWORD(v6) = [(TraceManager *)self moveUserTraceAtPath:v4 toPath:v9];

  v10 = 0;
  if (v6)
  {
    v10 = [(TraceManager *)self pathForUserTrace:v8 withTraceType:0];
  }

  return v10;
}

- (id)preferredUserTracePathForName:(id)a3 withTraceType:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(NSDateFormatter);
  [v7 setDateFormat:@"yyyy-MM-dd-HHmmss"];
  v8 = +[NSTimeZone localTimeZone];
  [v7 setTimeZone:v8];

  v9 = +[NSDate date];
  v10 = [v7 stringFromDate:v9];

  v11 = [NSString stringWithFormat:@"%@_%@", v10, v6];

  v12 = [(TraceManager *)self pathForUserTrace:v11 withTraceType:a4];

  return v12;
}

- (id)clearSimulatedTracePath
{
  v3 = [(TraceManager *)self pathForUserTrace:@"LatestSimulation" withTraceType:0];
  if ([(NSFileManager *)self->_fileManager fileExistsAtPath:v3])
  {
    [(NSFileManager *)self->_fileManager removeItemAtPath:v3 error:0];
  }

  return v3;
}

- (BOOL)deleteUserTraceWithName:(id)a3 withTraceType:(int64_t)a4
{
  v4 = self;
  v5 = [(TraceManager *)self pathForUserTrace:a3 withTraceType:a4];
  LOBYTE(v4) = [(TraceManager *)v4 deleteUserTraceWithPath:v5];

  return v4;
}

- (id)_listOfUserTracesWithTraceTypes:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableArray);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v3;
  v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v25)
  {
    v24 = *v34;
    do
    {
      v5 = 0;
      do
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v5;
        v6 = *(*(&v33 + 1) + 8 * v5);
        v7 = -[TraceManager tracesDirectoryWithTraceType:](self, "tracesDirectoryWithTraceType:", [v6 integerValue]);
        fileManager = self->_fileManager;
        v26 = v7;
        v9 = [NSURL URLWithString:?];
        v10 = [(NSFileManager *)fileManager enumeratorAtURL:v9 includingPropertiesForKeys:0 options:1 errorHandler:0];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v30;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v30 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v29 + 1) + 8 * i);
              v17 = [v16 pathExtension];
              v18 = -[TraceManager extensionForTraceType:](self, "extensionForTraceType:", [v6 integerValue]);
              v19 = [v17 isEqualToString:v18];

              if (v19)
              {
                v20 = [v4 indexOfObject:v16 inSortedRange:0 options:objc_msgSend(v4 usingComparator:{"count"), 1024, &stru_10162CA10}];
                if (v20 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  [v4 insertObject:v16 atIndex:v20];
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v13);
        }

        v5 = v27 + 1;
      }

      while ((v27 + 1) != v25);
      v25 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v25);
  }

  v21 = sub_100021DB0(v4, &stru_10162CA50);

  return v21;
}

- (id)listOfUserTracesWithTraceType:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  v5 = [NSSet setWithObject:v4];
  v6 = [(TraceManager *)self _listOfUserTracesWithTraceTypes:v5];

  return v6;
}

- (id)listOfAllUserTraces
{
  v3 = [NSSet setWithObjects:&off_1016E74C0, &off_1016E74D8, 0];
  v4 = [(TraceManager *)self _listOfUserTracesWithTraceTypes:v3];

  return v4;
}

- (id)_validatedFilenamesFromTracePaths:(id)a3 traceType:(int64_t)a4
{
  v6 = a3;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([(TraceManager *)self _checkPathSuffix:v13 matchesTraceType:a4, v15])
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

- (id)fullPathForTraceFilename:(id)a3 withTraceType:(int64_t)a4
{
  v6 = a3;
  v7 = [(TraceManager *)self tracesDirectoryWithTraceType:a4];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 stringByAppendingPathComponent:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)pathForUserTrace:(id)a3 withTraceType:(int64_t)a4
{
  v6 = [(TraceManager *)self filenameForUserTrace:a3];
  v7 = [(TraceManager *)self fullPathForTraceFilename:v6 withTraceType:a4];

  return v7;
}

- (BOOL)_checkPathSuffix:(id)a3 matchesTraceType:(int64_t)a4
{
  v6 = a3;
  v7 = [(TraceManager *)self extensionForTraceType:a4];
  v8 = [v6 hasSuffix:v7];

  if (!a4 && (v8 & 1) == 0)
  {
    v8 = [v6 hasSuffix:@".trace.sqlite"];
  }

  return v8;
}

- (id)extensionForTraceType:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = +[MNFilePaths routePlanningTraceExtension];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = +[MNFilePaths navTraceExtension];
  }

  return v3;
}

- (id)filenameForUserTrace:(id)a3 traceType:(int64_t)a4
{
  v6 = a3;
  v7 = [(TraceManager *)self extensionForTraceType:a4];
  if (!v7)
  {
    v10 = sub_10006D178();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315906;
      v14 = "[TraceManager filenameForUserTrace:traceType:]";
      v15 = 2080;
      v16 = "TraceManager.m";
      v17 = 1024;
      v18 = 102;
      v19 = 2080;
      v20 = "extension != nil";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v13, 0x26u);
    }

    if (sub_100E03634())
    {
      v11 = sub_10006D178();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = +[NSThread callStackSymbols];
        v13 = 138412290;
        v14 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%@", &v13, 0xCu);
      }
    }
  }

  v8 = [v6 stringByAppendingPathExtension:v7];

  return v8;
}

- (id)_cleanPathForDirectory:(id)a3
{
  v4 = a3;
  fileManager = self->_fileManager;
  v15 = 0;
  v6 = [(NSFileManager *)fileManager removeItemAtPath:v4 error:&v15];
  v7 = v15;
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    NSLog(@"Could not remove trace at path: %@. Error: %@", v4, v7);
  }

  v14 = v8;
  v10 = [MNFilePaths createFolderIfNotPresent:v4 error:&v14];
  v11 = v14;

  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    NSLog(@"Could not create the folder: %@ Error: %@", v4, v11);
  }

  return v4;
}

- (id)tracesDirectoryWithTraceType:(int64_t)a3 resolveSymlink:(BOOL)a4
{
  v4 = a4;
  v5 = [(TraceManager *)self tracesDirectoryWithTraceType:a3];
  if (v4)
  {
    v6 = [NSURL fileURLWithPath:v5 isDirectory:1];
    v10 = 0;
    [v6 getResourceValue:&v10 forKey:NSURLIsSymbolicLinkKey error:0];
    if ([v10 BOOLValue])
    {
      v7 = [v6 URLByResolvingSymlinksInPath];
      v8 = [v7 path];

      v5 = v8;
    }
  }

  return v5;
}

- (id)tracesDirectoryWithTraceType:(int64_t)a3
{
  if (a3 == 1)
  {
    self = +[MNFilePaths routePlanningTracesDirectoryPath];
  }

  else if (!a3)
  {
    self = +[MNFilePaths navTracesDirectoryPath];
  }

  return self;
}

- (TraceManager)init
{
  v10.receiver = self;
  v10.super_class = TraceManager;
  v2 = [(TraceManager *)&v10 init];
  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    fileManager = v2->_fileManager;
    v2->_fileManager = v3;

    v5 = [(TraceManager *)v2 tracesDirectoryWithTraceType:0];
    v9 = 0;
    v6 = [MNFilePaths createFolderIfNotPresent:v5 error:&v9];
    v7 = v9;

    if ((v6 & 1) == 0)
    {
      NSLog(@"Could not create NavTracesDirectory: %@", v7);
    }

    [(TraceManager *)v2 _migrateTracesInLegacyDirectory];
  }

  return v2;
}

+ (id)sharedManager
{
  if (qword_10195DAD0 != -1)
  {
    dispatch_once(&qword_10195DAD0, &stru_10162C9D0);
  }

  v3 = qword_10195DAC8;

  return v3;
}

@end