@interface _PFExternalReferenceData
- (BOOL)_isEqualHelper:(void *)a1;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToData:(id)a3;
- (_PFExternalReferenceData)initWithStoreBytes:(const void *)a3 length:(unint64_t)a4 externalLocation:(id)a5 safeguardLocation:(id)a6 protectionLevel:(int)a7;
- (id)_safeguardLocationString;
- (id)description;
- (id)externalReferenceLocationString;
- (id)initForExternalLocation:(id)a3 safeguardLocation:(id)a4 data:(id)a5 protectionLevel:(int)a6;
- (id)mutableCopy;
- (id)subdataWithRange:(_NSRange)a3;
- (uint64_t)_attemptToMapData:(unint64_t *)a1;
- (uint64_t)_exceptionForReadError:(uint64_t)result;
- (unint64_t)_retrieveExternalData;
- (void)_deleteExternalReferenceFromPermanentLocation;
- (void)_moveExternalReferenceToPermanentLocation;
- (void)_writeExternalReferenceToInterimLocation;
- (void)dealloc;
- (void)getBytes:(void *)a3 range:(_NSRange)a4;
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
    v7 = [(NSString *)safeguardLocation fileSystemRepresentation];
    objc_opt_self();
    unlink(v7);
  }

LABEL_8:
  v8 = atomic_load(&self->_originalData);

  v10.receiver = self;
  v10.super_class = _PFExternalReferenceData;
  [(_PFExternalReferenceData *)&v10 dealloc];
}

- (unint64_t)_retrieveExternalData
{
  if (!a1)
  {
    return 0;
  }

  objc_sync_enter(a1);
  if (a1[4])
  {
    objc_sync_exit(a1);
    return a1[4];
  }

  else
  {
    v8 = 0;
    if (([(_PFExternalReferenceData *)a1 _attemptToMapData:?]& 1) == 0)
    {
      v7 = [(_PFExternalReferenceData *)a1 _exceptionForReadError:v8];
      objc_exception_throw(v7);
    }

    if (atomic_load(a1 + 1))
    {
      v4 = atomic_load(a1 + 1);
      v5 = [v4 bytes];
    }

    else
    {
      v5 = [_PFRoutines readExternalReferenceDataFromFile:a1];
    }

    v2 = v5;
    a1[4] = v5;
    objc_sync_exit(a1);
  }

  return v2;
}

- (id)initForExternalLocation:(id)a3 safeguardLocation:(id)a4 data:(id)a5 protectionLevel:(int)a6
{
  v6 = a6;
  v23.receiver = self;
  v23.super_class = _PFExternalReferenceData;
  v10 = [(_PFExternalReferenceData *)&v23 init];
  v11 = v10;
  if (v10)
  {
    if (a3)
    {
      v12 = [objc_msgSend(a3 "lastPathComponent")];
      v13 = strlen(v12);
      atomic_store(a5, v11 + 1);
      *(v11 + 5) = [a5 length];
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
      if (a4)
      {
        a4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%p", a4, v11];
      }
    }

    else
    {
      atomic_store(0, v10 + 1);
      v17 = [a5 length];
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
      memcpy(v21, [a5 bytes], *(v11 + 5));
      atomic_store(0, v11 + 68);
    }

    *(v11 + 64) = *(v11 + 64) & 0xF0 | (2 * (v6 & 7));
    *(v11 + 6) = a3;
    *(v11 + 7) = a4;
  }

  return v11;
}

- (_PFExternalReferenceData)initWithStoreBytes:(const void *)a3 length:(unint64_t)a4 externalLocation:(id)a5 safeguardLocation:(id)a6 protectionLevel:(int)a7
{
  v7 = a7;
  v19.receiver = self;
  v19.super_class = _PFExternalReferenceData;
  v11 = [(_PFExternalReferenceData *)&v19 init:a3];
  v12 = v11;
  if (v11)
  {
    v11->_bytesLengthForStore = a4;
    v13 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v13 = malloc_default_zone();
    }

    v14 = malloc_type_zone_calloc(v13, a4, 1uLL, 0x100004077774924uLL);
    v12->_bytesPtrForStore = v14;
    memcpy(v14, a3, v12->_bytesLengthForStore);
    *&v12->_externalDataFlags = *&v12->_externalDataFlags & 0xF1 | (2 * (v7 & 7));
    if (*v12->_bytesPtrForStore == 1)
    {
      atomic_store(0, &v12->_isStoredExternally);
      *&v12->_externalDataFlags &= ~1u;
      v12->_bytesPtrForExternalReference = v12->_bytesPtrForStore + 1;
      v12->_bytesLengthForExternalReference = a4 - 1;
      v12->_externalReferenceLocation = 0;
      v12->_safeguardLocation = 0;
    }

    else
    {
      v15 = [a5 fileSystemRepresentation];
      objc_opt_self();
      memset(&v20, 0, sizeof(v20));
      v16 = stat(v15, &v20);
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
        v12->_externalReferenceLocation = a5;
      }
    }
  }

  return v12;
}

- (id)mutableCopy
{
  v3 = [(_PFExternalReferenceData *)self _bytesPtrForExternalReference];
  v4 = objc_alloc(MEMORY[0x1E695DF88]);
  bytesLengthForExternalReference = self->_bytesLengthForExternalReference;

  return [v4 initWithBytes:v3 length:bytesLengthForExternalReference];
}

- (uint64_t)_attemptToMapData:(unint64_t *)a1
{
  if (!a1)
  {
    return 0;
  }

  if (!atomic_load(a1 + 1))
  {
    if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")] & 1) != 0 || (objc_msgSend(objc_msgSend(MEMORY[0x1E696AC08], "defaultManager"), "fileExistsAtPath:", a1[7]))
    {
      v4 = 1;
      atomic_store([objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:+[_PFRoutines readExternalReferenceDataFromFile:](_PFRoutines length:a1) freeWhenDone:{objc_msgSend(a1, "_bytesLengthForExternalReference"), 1}], a1 + 1);
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
    v4 = [a2 code];
    if (v4 == 119)
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
      if (v4 == 120)
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

- (void)getBytes:(void *)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  bytesLengthForExternalReference = self->_bytesLengthForExternalReference;
  if (a4.location + a4.length > bytesLengthForExternalReference)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"range {%lu, %lu} exceeds data length %lu", a4.length, a4.location, bytesLengthForExternalReference), 0}]);
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
      [v11 getBytes:a3 range:{location, length}];
      objc_sync_exit(self);
    }

    else
    {
      objc_sync_exit(self);
      [_PFRoutines readBytesForExternalReferenceData:a3 intoBuffer:location range:length];
    }
  }

  else
  {
    v12 = self->_bytesPtrForExternalReference + a4.location;

    memcpy(a3, v12, a4.length);
  }
}

- (id)subdataWithRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  bytesLengthForExternalReference = self->_bytesLengthForExternalReference;
  if (a3.location + a3.length > bytesLengthForExternalReference)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"range {%lu, %lu} exceeds data length %lu", a3.length, a3.location, bytesLengthForExternalReference), 0}]);
  }

  v7 = malloc_type_malloc(a3.length, 0x100004077774924uLL);
  [(_PFExternalReferenceData *)self getBytes:v7 range:location, length];
  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v7 length:length];

  return v8;
}

- (BOOL)_isEqualHelper:(void *)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = a1[5];
  v5 = malloc_type_malloc(0x40000uLL, 0x100004077774924uLL);
  v6 = malloc_type_malloc(0x40000uLL, 0x100004077774924uLL);
  if (a1[5])
  {
    v7 = 0;
    v8 = v4 - 0x40000;
    if (v4 >= 0x40000)
    {
      v4 = 0x40000;
    }

    do
    {
      [a1 getBytes:v5 range:{v7, v4}];
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

    while (v7 < a1[5]);
  }

  else
  {
    v10 = 1;
  }

  free(v5);
  free(v6);
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [a3 isNSData];
    if (v5)
    {

      LOBYTE(v5) = [(_PFExternalReferenceData *)self isEqualToData:a3];
    }
  }

  return v5;
}

- (BOOL)isEqualToData:(id)a3
{
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    bytesLengthForStore = self->_bytesLengthForStore;
    if (bytesLengthForStore == *(a3 + 3) && !memcmp(self->_bytesPtrForStore, *(a3 + 2), bytesLengthForStore))
    {
      return 1;
    }

    v6 = [(_PFExternalReferenceData *)self _bytesLengthForExternalReference];
    v7 = [a3 _bytesLengthForExternalReference];
  }

  else
  {
    v6 = [(_PFExternalReferenceData *)self _bytesLengthForExternalReference];
    v7 = [a3 length];
  }

  if (v6 != v7)
  {
    return 0;
  }

  return [(_PFExternalReferenceData *)self _isEqualHelper:a3];
}

@end