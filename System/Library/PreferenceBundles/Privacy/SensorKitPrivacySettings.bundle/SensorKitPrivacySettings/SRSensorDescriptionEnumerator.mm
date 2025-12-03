@interface SRSensorDescriptionEnumerator
- (id)nextObject;
- (void)dealloc;
@end

@implementation SRSensorDescriptionEnumerator

- (void)dealloc
{
  if (self)
  {
    objc_setProperty_atomic(self, a2, 0, 24);
  }

  v3.receiver = self;
  v3.super_class = SRSensorDescriptionEnumerator;
  [(SRSensorDescriptionEnumerator *)&v3 dealloc];
}

- (id)nextObject
{
  selfCopy = self;
  currentSensorDirectoryIndex = self->_currentSensorDirectoryIndex;
  sensorsCache = self->_sensorsCache;
  if (sensorsCache)
  {
    sensorsCache = objc_getProperty(sensorsCache, a2, 16, 1);
  }

  if (currentSensorDirectoryIndex >= [sensorsCache count])
  {
    v8 = qword_11008;
    if (os_log_type_enabled(qword_11008, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_0, v8, OS_LOG_TYPE_FAULT, "Unexpectedly trying to iterate beyond the maximum number of directories", buf, 2u);
    }

    return 0;
  }

  if (selfCopy->_descriptionFileEnumerator)
  {
    v7 = NSURLIsDirectoryKey;
  }

  else
  {
    Property = selfCopy->_sensorsCache;
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 16, 1);
    }

    v10 = [Property objectAtIndexedSubscript:selfCopy->_currentSensorDirectoryIndex];
    v7 = NSURLIsDirectoryKey;
    v54 = NSURLIsDirectoryKey;
    v11 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:v10 options:[NSArray errorHandler:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 4, 0];
    objc_setProperty_atomic(selfCopy, v12, v11, 24);
  }

  *&v6 = 138543362;
  v45 = v6;
  v47 = v7;
  v46 = selfCopy;
  while (1)
  {
    nextObject = [(NSDirectoryEnumerator *)selfCopy->_descriptionFileEnumerator nextObject];
    v48 = 0;
    [nextObject getResourceValue:&v48 forKey:v7 error:0];
    if ([v48 BOOLValue])
    {
      goto LABEL_13;
    }

    if (!nextObject)
    {
      v16 = selfCopy->_currentSensorDirectoryIndex + 1;
      selfCopy->_currentSensorDirectoryIndex = v16;
      v17 = selfCopy->_sensorsCache;
      if (v17)
      {
        v17 = objc_getProperty(v17, v14, 16, 1);
      }

      v18 = v16 >= [v17 count];
      v7 = v47;
      if (v18)
      {
        break;
      }

      v20 = selfCopy->_sensorsCache;
      if (v20)
      {
        v20 = objc_getProperty(v20, v19, 16, 1);
      }

      v21 = -[NSFileManager enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:", [v20 objectAtIndexedSubscript:selfCopy->_currentSensorDirectoryIndex], 0, 4, 0);
      objc_setProperty_atomic(selfCopy, v22, v21, 24);
      nextObject = [(NSDirectoryEnumerator *)selfCopy->_descriptionFileEnumerator nextObject];
      if (!nextObject)
      {
        break;
      }
    }

    v23 = [objc_msgSend(nextObject "URLByDeletingPathExtension")];
    v24 = selfCopy->_sensorsCache;
    if (v24)
    {
      v25 = v23;
      sr_sensorByDeletingDeletionRecord = [v23 sr_sensorByDeletingDeletionRecord];
      v27 = [(NSURL *)sr_sensorByDeletingDeletionRecord isEqualToString:v25];
      v15 = [(NSCache *)v24->_sensorsCache objectForKey:sr_sensorByDeletingDeletionRecord];
      if (!v15)
      {
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        sensorDescriptionsDirs = v24->_sensorDescriptionsDirs;
        v29 = [(NSArray *)sensorDescriptionsDirs countByEnumeratingWithState:&v49 objects:buf count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v50;
          v32 = v27;
LABEL_25:
          v33 = 0;
          while (1)
          {
            if (*v50 != v31)
            {
              objc_enumerationMutation(sensorDescriptionsDirs);
            }

            v34 = *(*(&v49 + 1) + 8 * v33);
            v35 = [(NSURL *)sr_sensorByDeletingDeletionRecord stringByAppendingPathExtension:@"plist"];
            if (!v35)
            {
              break;
            }

            v36 = [NSURL fileURLWithPath:v35 isDirectory:0 relativeToURL:v34];
            v53 = 0;
            v37 = [NSDictionary dictionaryWithContentsOfURL:v36 error:&v53];
            if (v37)
            {
              v15 = [[SRSensorDescription alloc] initWithDictionary:v37];
              name = [(NSArray *)v15 name];
              [(NSCache *)v24->_sensorsCache setObject:v15 forKey:name];
              if ([(NSArray *)v15 legacyName])
              {
                [(NSCache *)v24->_sensorsCache setObject:v15 forKey:[(NSArray *)v15 legacyName]];
              }

              v39 = qword_11008;
              if (os_log_type_enabled(qword_11008, OS_LOG_TYPE_INFO))
              {
                *v56 = 138543618;
                v57 = name;
                v58 = 2114;
                v59 = v15;
                _os_log_impl(&dword_0, v39, OS_LOG_TYPE_INFO, "Cached description for %{public}@, %{public}@", v56, 0x16u);
              }

              v27 = v32;
              if (v15)
              {
                goto LABEL_48;
              }
            }

            else
            {
              if ([-[NSArray domain](v53 "domain")] && -[NSArray code](v53, "code") == &stru_B8.reserved3)
              {
                v40 = qword_11008;
                if (os_log_type_enabled(qword_11008, OS_LOG_TYPE_INFO))
                {
                  *v56 = v45;
                  v57 = v36;
                  _os_log_impl(&dword_0, v40, OS_LOG_TYPE_INFO, "%{public}@ not found", v56, 0xCu);
                }
              }

              else
              {
                v41 = qword_11008;
                if (os_log_type_enabled(qword_11008, OS_LOG_TYPE_ERROR))
                {
                  *v56 = 138543618;
                  v57 = v36;
                  v58 = 2114;
                  v59 = v53;
                  _os_log_error_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "Failed to parse %{public}@ because %{public}@", v56, 0x16u);
                }
              }

              v27 = v32;
            }

            if (v30 == ++v33)
            {
              v30 = [(NSArray *)sensorDescriptionsDirs countByEnumeratingWithState:&v49 objects:buf count:16];
              if (v30)
              {
                goto LABEL_25;
              }

              goto LABEL_45;
            }
          }
        }

        else
        {
LABEL_45:
          v42 = qword_11008;
          if (os_log_type_enabled(qword_11008, OS_LOG_TYPE_ERROR))
          {
            v43 = v24->_sensorDescriptionsDirs;
            *v56 = 138543618;
            v57 = sr_sensorByDeletingDeletionRecord;
            v58 = 2114;
            v59 = v43;
            _os_log_error_impl(&dword_0, v42, OS_LOG_TYPE_ERROR, "Failed to find description for %{public}@ in %{public}@", v56, 0x16u);
          }
        }

        v15 = 0;
LABEL_48:
        selfCopy = v46;
        v7 = v47;
      }

      if (!((v15 == 0) | v27 & 1))
      {
        v15 = [SRSensorDescription sensorDescriptionForDeletionRecordFromDescription:v15];
      }

      goto LABEL_51;
    }

LABEL_13:
    v15 = 0;
LABEL_51:
    if (v15)
    {
      return v15;
    }
  }

  objc_setProperty_atomic(selfCopy, v19, 0, 24);
  return 0;
}

@end