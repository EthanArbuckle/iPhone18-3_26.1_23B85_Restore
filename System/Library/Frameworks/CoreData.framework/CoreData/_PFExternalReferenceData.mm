@interface _PFExternalReferenceData
- (BOOL)_isEqualHelper:(void *)helper;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToData:(id)data;
- (_PFExternalReferenceData)initWithStoreBytes:(const void *)bytes length:(unint64_t)length externalLocation:(id)location safeguardLocation:(id)safeguardLocation protectionLevel:(int)level;
- (id)_safeguardLocationString;
- (id)description;
- (id)externalReferenceLocationString;
- (id)initForExternalLocation:(id)location safeguardLocation:(id)safeguardLocation data:(id)data protectionLevel:(int)level;
- (id)mutableCopy;
- (id)subdataWithRange:(_NSRange)range;
- (uint64_t)_attemptToMapData:(unint64_t *)data;
- (uint64_t)_exceptionForReadError:(uint64_t)result;
- (unint64_t)_retrieveExternalData;
- (void)_deleteExternalReferenceFromPermanentLocation;
- (void)_moveExternalReferenceToPermanentLocation;
- (void)_writeExternalReferenceToInterimLocation;
- (void)dealloc;
- (void)getBytes:(void *)bytes range:(_NSRange)range;
@end

@implementation _PFExternalReferenceData

- (void)dealloc
{
  if (!self)
  {
    goto LABEL_8;
  }

  v3 = atomic_load(&self->_originalData);
  p_bytesPtrForExternalReference = &self->_bytesPtrForExternalReference;
  if (!v3)
  {
    if (!*p_bytesPtrForExternalReference)
    {
      goto LABEL_4;
    }

    v9 = atomic_load(&self->_isStoredExternally);
    if ((v9 & 1) == 0)
    {
      goto LABEL_4;
    }

    PF_FREE_OBJECT_ARRAY(self->_bytesPtrForExternalReference);
    p_bytesPtrForExternalReference = &self->_bytesPtrForExternalReference;
  }

  *p_bytesPtrForExternalReference = 0;
LABEL_4:
  bytesPtrForStore = self->_bytesPtrForStore;
  if (bytesPtrForStore)
  {
    PF_FREE_OBJECT_ARRAY(bytesPtrForStore);
    self->_bytesPtrForStore = 0;
  }

  safeguardLocation = self->_safeguardLocation;
  if (safeguardLocation)
  {
    fileSystemRepresentation = [(NSString *)safeguardLocation fileSystemRepresentation];
    objc_opt_self();
    unlink(fileSystemRepresentation);
  }

LABEL_8:
  v8 = atomic_load(&self->_originalData);

  v10.receiver = self;
  v10.super_class = _PFExternalReferenceData;
  [(_PFExternalReferenceData *)&v10 dealloc];
}

- (unint64_t)_retrieveExternalData
{
  if (!self)
  {
    return 0;
  }

  objc_sync_enter(self);
  if (self[4])
  {
    objc_sync_exit(self);
    return self[4];
  }

  else
  {
    v8 = 0;
    if (([(_PFExternalReferenceData *)self _attemptToMapData:?]& 1) == 0)
    {
      v7 = [(_PFExternalReferenceData *)self _exceptionForReadError:v8];
      objc_exception_throw(v7);
    }

    if (atomic_load(self + 1))
    {
      v4 = atomic_load(self + 1);
      bytes = [v4 bytes];
    }

    else
    {
      bytes = [_PFRoutines readExternalReferenceDataFromFile:self];
    }

    v2 = bytes;
    self[4] = bytes;
    objc_sync_exit(self);
  }

  return v2;
}

- (id)initForExternalLocation:(id)location safeguardLocation:(id)safeguardLocation data:(id)data protectionLevel:(int)level
{
  levelCopy = level;
  v23.receiver = self;
  v23.super_class = _PFExternalReferenceData;
  v10 = [(_PFExternalReferenceData *)&v23 init];
  v11 = v10;
  if (v10)
  {
    if (location)
    {
      v12 = [objc_msgSend(location "lastPathComponent")];
      v13 = strlen(v12);
      atomic_store(data, v11 + 1);
      *(v11 + 5) = [data length];
      v14 = v13 + 2;
      *(v11 + 3) = v13 + 2;
      v15 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v15 = malloc_default_zone();
        v14 = *(v11 + 3);
      }

      v16 = malloc_type_zone_malloc(v15, v14, 0xC25F4B23uLL);
      *(v11 + 2) = v16;
      *v16 = 2;
      memcpy((*(v11 + 2) + 1), v12, v13);
      *(*(v11 + 2) + *(v11 + 3) - 1) = 0;
      *(v11 + 4) = 0;
      atomic_store(1u, v11 + 68);
      if (safeguardLocation)
      {
        safeguardLocation = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%p", safeguardLocation, v11];
      }
    }

    else
    {
      atomic_store(0, v10 + 1);
      v17 = [data length];
      *(v11 + 5) = v17;
      v18 = v17 + 1;
      *(v11 + 3) = v17 + 1;
      v19 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v19 = malloc_default_zone();
        v18 = *(v11 + 3);
      }

      v20 = malloc_type_zone_calloc(v19, v18, 1uLL, 0x100004077774924uLL);
      *(v11 + 2) = v20;
      *v20 = 1;
      v21 = (*(v11 + 2) + 1);
      *(v11 + 4) = v21;
      memcpy(v21, [data bytes], *(v11 + 5));
      atomic_store(0, v11 + 68);
    }

    *(v11 + 64) = *(v11 + 64) & 0xF0 | (2 * (levelCopy & 7));
    *(v11 + 6) = location;
    *(v11 + 7) = safeguardLocation;
  }

  return v11;
}

- (_PFExternalReferenceData)initWithStoreBytes:(const void *)bytes length:(unint64_t)length externalLocation:(id)location safeguardLocation:(id)safeguardLocation protectionLevel:(int)level
{
  levelCopy = level;
  v19.receiver = self;
  v19.super_class = _PFExternalReferenceData;
  v11 = [(_PFExternalReferenceData *)&v19 init:bytes];
  v12 = v11;
  if (v11)
  {
    v11->_bytesLengthForStore = length;
    v13 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v13 = malloc_default_zone();
    }

    v14 = malloc_type_zone_calloc(v13, length, 1uLL, 0x100004077774924uLL);
    v12->_bytesPtrForStore = v14;
    memcpy(v14, bytes, v12->_bytesLengthForStore);
    *&v12->_externalDataFlags = *&v12->_externalDataFlags & 0xF1 | (2 * (levelCopy & 7));
    if (*v12->_bytesPtrForStore == 1)
    {
      atomic_store(0, &v12->_isStoredExternally);
      *&v12->_externalDataFlags &= ~1u;
      v12->_bytesPtrForExternalReference = v12->_bytesPtrForStore + 1;
      v12->_bytesLengthForExternalReference = length - 1;
      v12->_externalReferenceLocation = 0;
      v12->_safeguardLocation = 0;
    }

    else
    {
      fileSystemRepresentation = [location fileSystemRepresentation];
      objc_opt_self();
      memset(&v20, 0, sizeof(v20));
      v16 = stat(fileSystemRepresentation, &v20);
      st_size = v20.st_size;
      if (v16)
      {
        st_size = -1;
      }

      if (st_size < 0)
      {

        return 0;
      }

      else
      {
        v12->_bytesLengthForExternalReference = st_size;
        atomic_store(1u, &v12->_isStoredExternally);
        v12->_externalReferenceLocation = location;
      }
    }
  }

  return v12;
}

- (id)mutableCopy
{
  _bytesPtrForExternalReference = [(_PFExternalReferenceData *)self _bytesPtrForExternalReference];
  v4 = objc_alloc(MEMORY[0x1E695DF88]);
  bytesLengthForExternalReference = self->_bytesLengthForExternalReference;

  return [v4 initWithBytes:_bytesPtrForExternalReference length:bytesLengthForExternalReference];
}

- (uint64_t)_attemptToMapData:(unint64_t *)data
{
  if (!data)
  {
    return 0;
  }

  if (!atomic_load(data + 1))
  {
    if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) != 0 || (objc_msgSend(objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), "fileExistsAtPath:", data[7]))
    {
      v4 = 1;
      atomic_store([objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:+[_PFRoutines readExternalReferenceDataFromFile:](_PFRoutines length:data) freeWhenDone:{objc_msgSend(data, "_bytesLengthForExternalReference"), 1}], data + 1);
      return v4;
    }

    if (a2)
    {
      v4 = 0;
      *a2 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:120 userInfo:0];
      return v4;
    }

    return 0;
  }

  return 1;
}

- (uint64_t)_exceptionForReadError:(uint64_t)result
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    code = [a2 code];
    if (code == 119)
    {
      v15 = MEMORY[0x1E695DF30];
      v16 = *MEMORY[0x1E695D930];
      v17 = *(v3 + 48);
      v22 = @"File URL";
      v23 = v17;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v12 = @"External data reference; unknown problem.";
    }

    else
    {
      if (code == 120)
      {
        v5 = *MEMORY[0x1E696A250];
        v26 = *MEMORY[0x1E696AA08];
        v6 = v26;
        v27[0] = a2;
        v7 = [MEMORY[0x1E696ABC0] errorWithDomain:v5 code:134185 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v27, &v26, 1)}];
        v8 = MEMORY[0x1E695DF30];
        v9 = *(v3 + 48);
        v10 = *MEMORY[0x1E695D930];
        v24[0] = @"File URL";
        v24[1] = v6;
        v25[0] = v9;
        v25[1] = v7;
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
        v12 = @"External data reference can't find underlying file.";
        v13 = v8;
        v14 = v10;
LABEL_8:
        result = [v13 exceptionWithName:v14 reason:v12 userInfo:v11];
        goto LABEL_9;
      }

      v15 = MEMORY[0x1E695DF30];
      v16 = *MEMORY[0x1E695D930];
      v18 = *(v3 + 48);
      v20 = @"File URL";
      v21 = v18;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v12 = @"External data reference can't load ubiquitous file.";
    }

    v13 = v15;
    v14 = v16;
    goto LABEL_8;
  }

LABEL_9:
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_writeExternalReferenceToInterimLocation
{
  v2 = atomic_load(&self->_isStoredExternally);
  if (v2)
  {
    [_PFRoutines writePFExternalReferenceDataToInterimFile:?];
  }
}

- (void)_moveExternalReferenceToPermanentLocation
{
  v2 = atomic_load(&self->_isStoredExternally);
  if (v2)
  {
    [_PFRoutines moveInterimFileToPermanentLocation:?];
    objc_sync_enter(self);
    v4 = atomic_load(&self->_hasMappedData);
    if ((v4 & 1) == 0 && !self->_bytesPtrForExternalReference)
    {
      v5 = atomic_load(&self->_originalData);

      atomic_store(0, &self->_originalData);
    }

    objc_sync_exit(self);
  }
}

- (void)_deleteExternalReferenceFromPermanentLocation
{
  v2 = atomic_load(&self->_isStoredExternally);
  if (v2)
  {
    [_PFRoutines deleteFileForPFExternalReferenceData:?];
  }
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = atomic_load(&self->_isStoredExternally);
  if (v4)
  {
    bytesPtrForStore = self->_bytesPtrForStore;
    v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"External Data Reference: <self = %p ; path = %s ; length = %qu>", self, bytesPtrForStore, self->_bytesLengthForExternalReference];
  }

  else
  {
    v6 = [MEMORY[0x1E696AD60] stringWithFormat:@"External Data Reference: <self = %p ; path = nil ; length = %qu>", self, self->_bytesLengthForExternalReference, v10];
  }

  v7 = v6;
  v8 = v6;
  objc_autoreleasePoolPop(v3);

  return v7;
}

- (id)_safeguardLocationString
{
  v2 = self->_safeguardLocation;

  return v2;
}

- (id)externalReferenceLocationString
{
  v2 = self->_externalReferenceLocation;

  return v2;
}

- (void)getBytes:(void *)bytes range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  bytesLengthForExternalReference = self->_bytesLengthForExternalReference;
  if (range.location + range.length > bytesLengthForExternalReference)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"range {%lu, %lu} exceeds data length %lu", range.length, range.location, bytesLengthForExternalReference), 0}]);
  }

  v9 = atomic_load(&self->_isStoredExternally);
  if (v9)
  {
    objc_sync_enter(self);
    v14 = 0;
    if (([(_PFExternalReferenceData *)self _attemptToMapData:?]& 1) == 0)
    {
      v13 = [(_PFExternalReferenceData *)self _exceptionForReadError:v14];
      objc_exception_throw(v13);
    }

    if (atomic_load(&self->_originalData))
    {
      v11 = atomic_load(&self->_originalData);
      [v11 getBytes:bytes range:{location, length}];
      objc_sync_exit(self);
    }

    else
    {
      objc_sync_exit(self);
      [_PFRoutines readBytesForExternalReferenceData:bytes intoBuffer:location range:length];
    }
  }

  else
  {
    v12 = self->_bytesPtrForExternalReference + range.location;

    memcpy(bytes, v12, range.length);
  }
}

- (id)subdataWithRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  bytesLengthForExternalReference = self->_bytesLengthForExternalReference;
  if (range.location + range.length > bytesLengthForExternalReference)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"range {%lu, %lu} exceeds data length %lu", range.length, range.location, bytesLengthForExternalReference), 0}]);
  }

  v7 = malloc_type_malloc(range.length, 0x100004077774924uLL);
  [(_PFExternalReferenceData *)self getBytes:v7 range:location, length];
  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v7 length:length];

  return v8;
}

- (BOOL)_isEqualHelper:(void *)helper
{
  if (!helper)
  {
    return 0;
  }

  v4 = helper[5];
  v5 = malloc_type_malloc(0x40000uLL, 0x100004077774924uLL);
  v6 = malloc_type_malloc(0x40000uLL, 0x100004077774924uLL);
  if (helper[5])
  {
    v7 = 0;
    v8 = v4 - 0x40000;
    if (v4 >= 0x40000)
    {
      v4 = 0x40000;
    }

    do
    {
      [helper getBytes:v5 range:{v7, v4}];
      [a2 getBytes:v6 range:{v7, v4}];
      v9 = memcmp(v5, v6, v4);
      v10 = v9 == 0;
      if (v9)
      {
        break;
      }

      v7 += 0x40000;
      v4 = v8 >= 0x40000 ? 0x40000 : v8;
      v8 -= 0x40000;
    }

    while (v7 < helper[5]);
  }

  else
  {
    v10 = 1;
  }

  free(v5);
  free(v6);
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(isNSData) = 1;
  }

  else
  {
    isNSData = [equal isNSData];
    if (isNSData)
    {

      LOBYTE(isNSData) = [(_PFExternalReferenceData *)self isEqualToData:equal];
    }
  }

  return isNSData;
}

- (BOOL)isEqualToData:(id)data
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    bytesLengthForStore = self->_bytesLengthForStore;
    if (bytesLengthForStore == *(data + 3) && !memcmp(self->_bytesPtrForStore, *(data + 2), bytesLengthForStore))
    {
      return 1;
    }

    _bytesLengthForExternalReference = [(_PFExternalReferenceData *)self _bytesLengthForExternalReference];
    _bytesLengthForExternalReference2 = [data _bytesLengthForExternalReference];
  }

  else
  {
    _bytesLengthForExternalReference = [(_PFExternalReferenceData *)self _bytesLengthForExternalReference];
    _bytesLengthForExternalReference2 = [data length];
  }

  if (_bytesLengthForExternalReference != _bytesLengthForExternalReference2)
  {
    return 0;
  }

  return [(_PFExternalReferenceData *)self _isEqualHelper:data];
}

@end