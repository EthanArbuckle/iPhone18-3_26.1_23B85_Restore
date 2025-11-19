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
  currentSensorDirectoryIndex = self->_currentSensorDirectoryIndex;
  sensorsCache = self->_sensorsCache;
  if (sensorsCache)
  {
    sensorsCache = objc_getProperty(sensorsCache, a2, 16, 1);
  }

  if (currentSensorDirectoryIndex >= [sensorsCache count])
  {
    v7 = qword_1000169A8;
    if (os_log_type_enabled(qword_1000169A8, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v22[0]) = 0;
      _os_log_fault_impl(&_mh_execute_header, v7, OS_LOG_TYPE_FAULT, "Unexpectedly trying to iterate beyond the maximum number of directories", v22, 2u);
    }

    return 0;
  }

  if (self->_descriptionFileEnumerator)
  {
    v6 = NSURLIsDirectoryKey;
  }

  else
  {
    Property = self->_sensorsCache;
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 16, 1);
    }

    v9 = [Property objectAtIndexedSubscript:self->_currentSensorDirectoryIndex];
    v6 = NSURLIsDirectoryKey;
    v23 = NSURLIsDirectoryKey;
    v10 = [+[NSFileManager defaultManager](NSFileManager enumeratorAtURL:"enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:" includingPropertiesForKeys:v9 options:[NSArray errorHandler:"arrayWithObjects:count:" arrayWithObjects:1 count:?], 4, 0];
    objc_setProperty_atomic(self, v11, v10, 24);
  }

  while (1)
  {
    v12 = [(NSDirectoryEnumerator *)self->_descriptionFileEnumerator nextObject];
    v22[0] = 0;
    [v12 getResourceValue:v22 forKey:v6 error:0];
    v14 = [v22[0] BOOLValue];
    result = 0;
    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_20:
    if (result)
    {
      return result;
    }
  }

  if (v12)
  {
    goto LABEL_19;
  }

  v16 = self->_currentSensorDirectoryIndex + 1;
  self->_currentSensorDirectoryIndex = v16;
  v17 = self->_sensorsCache;
  if (v17)
  {
    v17 = objc_getProperty(v17, v13, 16, 1);
  }

  if (v16 < [v17 count])
  {
    v19 = self->_sensorsCache;
    if (v19)
    {
      v19 = objc_getProperty(v19, v18, 16, 1);
    }

    v20 = -[NSFileManager enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "enumeratorAtURL:includingPropertiesForKeys:options:errorHandler:", [v19 objectAtIndexedSubscript:self->_currentSensorDirectoryIndex], 0, 4, 0);
    objc_setProperty_atomic(self, v21, v20, 24);
    v12 = [(NSDirectoryEnumerator *)self->_descriptionFileEnumerator nextObject];
    if (v12)
    {
LABEL_19:
      result = sub_100004F0C(self->_sensorsCache, [objc_msgSend(v12 "URLByDeletingPathExtension")]);
      goto LABEL_20;
    }
  }

  objc_setProperty_atomic(self, v18, 0, 24);
  return 0;
}

@end