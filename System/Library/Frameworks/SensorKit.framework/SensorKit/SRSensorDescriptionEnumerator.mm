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
  v26[1] = *MEMORY[0x1E69E9840];
  currentSensorDirectoryIndex = self->_currentSensorDirectoryIndex;
  sensorsCache = self->_sensorsCache;
  if (sensorsCache)
  {
    sensorsCache = objc_getProperty(sensorsCache, a2, 16, 1);
  }

  if (currentSensorDirectoryIndex >= [sensorsCache count])
  {
    v7 = SRLogSensorsCache;
    if (os_log_type_enabled(SRLogSensorsCache, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v25[0]) = 0;
      _os_log_fault_impl(&dword_1C914D000, v7, OS_LOG_TYPE_FAULT, "Unexpectedly trying to iterate beyond the maximum number of directories", v25, 2u);
    }

    goto LABEL_23;
  }

  if (self->_descriptionFileEnumerator)
  {
    v6 = *MEMORY[0x1E695DB78];
  }

  else
  {
    Property = self->_sensorsCache;
    if (Property)
    {
      Property = objc_getProperty(Property, v5, 16, 1);
    }

    v9 = [Property objectAtIndexedSubscript:self->_currentSensorDirectoryIndex];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v6 = *MEMORY[0x1E695DB78];
    v26[0] = *MEMORY[0x1E695DB78];
    v11 = [defaultManager enumeratorAtURL:v9 includingPropertiesForKeys:objc_msgSend(MEMORY[0x1E695DEC8] options:"arrayWithObjects:count:" errorHandler:{v26, 1), 4, 0}];
    objc_setProperty_atomic(self, v12, v11, 24);
  }

  while (1)
  {
    nextObject = [(NSDirectoryEnumerator *)self->_descriptionFileEnumerator nextObject];
    v25[0] = 0;
    [nextObject getResourceValue:v25 forKey:v6 error:0];
    bOOLValue = [v25[0] BOOLValue];
    result = 0;
    if ((bOOLValue & 1) == 0)
    {
      break;
    }

LABEL_20:
    if (result)
    {
      goto LABEL_24;
    }
  }

  if (nextObject)
  {
    goto LABEL_19;
  }

  v17 = self->_currentSensorDirectoryIndex + 1;
  self->_currentSensorDirectoryIndex = v17;
  v18 = self->_sensorsCache;
  if (v18)
  {
    v18 = objc_getProperty(v18, v14, 16, 1);
  }

  if (v17 < [v18 count])
  {
    v20 = self->_sensorsCache;
    if (v20)
    {
      v20 = objc_getProperty(v20, v19, 16, 1);
    }

    v21 = [v20 objectAtIndexedSubscript:self->_currentSensorDirectoryIndex];
    v22 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    objc_setProperty_atomic(self, v23, v22, 24);
    nextObject = [(NSDirectoryEnumerator *)self->_descriptionFileEnumerator nextObject];
    if (nextObject)
    {
LABEL_19:
      result = -[SRSensorsCache descriptionForSensor:](self->_sensorsCache, [objc_msgSend(nextObject "URLByDeletingPathExtension")]);
      goto LABEL_20;
    }
  }

  objc_setProperty_atomic(self, v19, 0, 24);
LABEL_23:
  result = 0;
LABEL_24:
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

@end