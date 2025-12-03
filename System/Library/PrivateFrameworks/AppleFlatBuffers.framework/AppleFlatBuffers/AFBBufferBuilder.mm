@interface AFBBufferBuilder
- (AFBBufferBuilder)init;
- (AFBBufferBuilder)initWithCapacity:(unint64_t)capacity;
- (AFBBufferBuilder)initWithConfig:(const Config *)config path:(id)path protectionClass:(int)class capacity:(unint64_t)capacity error:(id *)error;
- (AFBBufferBuilder)initWithFileAtPath:(id)path capacity:(unint64_t)capacity error:(id *)error;
- (AFBBufferBuilder)initWithFileAtPath:(id)path protection:(id)protection capacity:(unint64_t)capacity error:(id *)error;
- (BOOL)finalizeWithSelector:(SEL)selector allocatorBufferAddr:(void *)addr size:(unint64_t)size error:(id *)error;
- (id)createString:(id)string;
- (id)createString:(id)string alignment:(unint64_t)alignment;
- (id)createStringWithCString:(const char *)string;
- (id)createStringWithCString:(const char *)string alignment:(unint64_t)alignment;
- (id)createStringWithData:(id)data;
- (id)createStringWithData:(id)data alignment:(unint64_t)alignment;
- (id)createVectorOfBoolWithArray:(id)array;
- (id)createVectorOfBoolWithArray:(id)array alignment:(unint64_t)alignment;
- (id)createVectorOfBoolWithCArray:(const BOOL *)array count:(unint64_t)count;
- (id)createVectorOfBoolWithCArray:(const BOOL *)array count:(unint64_t)count alignment:(unint64_t)alignment;
- (id)createVectorOfBoolWithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block;
- (id)createVectorOfBoolWithCount:(unint64_t)count block:(id)block;
- (id)createVectorOfFloat32WithArray:(id)array;
- (id)createVectorOfFloat32WithArray:(id)array alignment:(unint64_t)alignment;
- (id)createVectorOfFloat32WithCArray:(const float *)array count:(unint64_t)count;
- (id)createVectorOfFloat32WithCArray:(const float *)array count:(unint64_t)count alignment:(unint64_t)alignment;
- (id)createVectorOfFloat32WithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block;
- (id)createVectorOfFloat32WithCount:(unint64_t)count block:(id)block;
- (id)createVectorOfFloat64WithArray:(id)array;
- (id)createVectorOfFloat64WithArray:(id)array alignment:(unint64_t)alignment;
- (id)createVectorOfFloat64WithCArray:(const double *)array count:(unint64_t)count;
- (id)createVectorOfFloat64WithCArray:(const double *)array count:(unint64_t)count alignment:(unint64_t)alignment;
- (id)createVectorOfFloat64WithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block;
- (id)createVectorOfFloat64WithCount:(unint64_t)count block:(id)block;
- (id)createVectorOfInt16WithArray:(id)array;
- (id)createVectorOfInt16WithArray:(id)array alignment:(unint64_t)alignment;
- (id)createVectorOfInt16WithCArray:(const signed __int16 *)array count:(unint64_t)count;
- (id)createVectorOfInt16WithCArray:(const signed __int16 *)array count:(unint64_t)count alignment:(unint64_t)alignment;
- (id)createVectorOfInt16WithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block;
- (id)createVectorOfInt16WithCount:(unint64_t)count block:(id)block;
- (id)createVectorOfInt32WithArray:(id)array;
- (id)createVectorOfInt32WithArray:(id)array alignment:(unint64_t)alignment;
- (id)createVectorOfInt32WithCArray:(const int *)array count:(unint64_t)count;
- (id)createVectorOfInt32WithCArray:(const int *)array count:(unint64_t)count alignment:(unint64_t)alignment;
- (id)createVectorOfInt32WithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block;
- (id)createVectorOfInt32WithCount:(unint64_t)count block:(id)block;
- (id)createVectorOfInt64WithArray:(id)array;
- (id)createVectorOfInt64WithArray:(id)array alignment:(unint64_t)alignment;
- (id)createVectorOfInt64WithCArray:(const int64_t *)array count:(unint64_t)count;
- (id)createVectorOfInt64WithCArray:(const int64_t *)array count:(unint64_t)count alignment:(unint64_t)alignment;
- (id)createVectorOfInt64WithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block;
- (id)createVectorOfInt64WithCount:(unint64_t)count block:(id)block;
- (id)createVectorOfInt8WithArray:(id)array;
- (id)createVectorOfInt8WithArray:(id)array alignment:(unint64_t)alignment;
- (id)createVectorOfInt8WithCArray:(const char *)array count:(unint64_t)count;
- (id)createVectorOfInt8WithCArray:(const char *)array count:(unint64_t)count alignment:(unint64_t)alignment;
- (id)createVectorOfInt8WithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block;
- (id)createVectorOfInt8WithCount:(unint64_t)count block:(id)block;
- (id)createVectorOfStringWithArray:(id)array;
- (id)createVectorOfStringWithArray:(id)array alignment:(unint64_t)alignment;
- (id)createVectorOfStringWithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block;
- (id)createVectorOfStringWithCount:(unint64_t)count block:(id)block;
- (id)createVectorOfStringWithOffsets:(id)offsets;
- (id)createVectorOfUInt16WithArray:(id)array;
- (id)createVectorOfUInt16WithArray:(id)array alignment:(unint64_t)alignment;
- (id)createVectorOfUInt16WithCArray:(const unsigned __int16 *)array count:(unint64_t)count;
- (id)createVectorOfUInt16WithCArray:(const unsigned __int16 *)array count:(unint64_t)count alignment:(unint64_t)alignment;
- (id)createVectorOfUInt16WithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block;
- (id)createVectorOfUInt16WithCount:(unint64_t)count block:(id)block;
- (id)createVectorOfUInt32WithArray:(id)array;
- (id)createVectorOfUInt32WithArray:(id)array alignment:(unint64_t)alignment;
- (id)createVectorOfUInt32WithCArray:(const unsigned int *)array count:(unint64_t)count;
- (id)createVectorOfUInt32WithCArray:(const unsigned int *)array count:(unint64_t)count alignment:(unint64_t)alignment;
- (id)createVectorOfUInt32WithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block;
- (id)createVectorOfUInt32WithCount:(unint64_t)count block:(id)block;
- (id)createVectorOfUInt64WithArray:(id)array;
- (id)createVectorOfUInt64WithArray:(id)array alignment:(unint64_t)alignment;
- (id)createVectorOfUInt64WithCArray:(const unint64_t *)array count:(unint64_t)count;
- (id)createVectorOfUInt64WithCArray:(const unint64_t *)array count:(unint64_t)count alignment:(unint64_t)alignment;
- (id)createVectorOfUInt64WithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block;
- (id)createVectorOfUInt64WithCount:(unint64_t)count block:(id)block;
- (id)createVectorOfUInt8WithArray:(id)array;
- (id)createVectorOfUInt8WithArray:(id)array alignment:(unint64_t)alignment;
- (id)createVectorOfUInt8WithCArray:(const char *)array count:(unint64_t)count;
- (id)createVectorOfUInt8WithCArray:(const char *)array count:(unint64_t)count alignment:(unint64_t)alignment;
- (id)createVectorOfUInt8WithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block;
- (id)createVectorOfUInt8WithCount:(unint64_t)count block:(id)block;
- (id)createVectorOfUInt8WithData:(id)data;
- (id)createVectorOfUInt8WithData:(id)data alignment:(unint64_t)alignment;
- (uint64_t)_fbb;
- (void)dealloc;
- (void)fbb;
- (void)setError:(id)error;
- (void)throwIfFinalizedWithSelector:(SEL)selector;
@end

@implementation AFBBufferBuilder

- (void)setError:(id)error
{
  errorCopy = error;
  firstError = self->_firstError;
  p_firstError = &self->_firstError;
  if (!firstError)
  {
    v8 = errorCopy;
    objc_storeStrong(p_firstError, error);
    errorCopy = v8;
  }
}

- (AFBBufferBuilder)initWithConfig:(const Config *)config path:(id)path protectionClass:(int)class capacity:(unint64_t)capacity error:(id *)error
{
  v16 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v15.receiver = self;
  v15.super_class = AFBBufferBuilder;
  v11 = [(AFBBufferBuilder *)&v15 init];
  if (v11)
  {
    if (pathCopy)
    {
      operator new();
    }

    *(v11 + 1) = *(v11 + 13);
    v11[16] = 0;
    *(v11 + 3) = capacity;
    *(v11 + 4) = 8;
    *(v11 + 40) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 9) = 0;
    *(v11 + 10) = 1;
    *(v11 + 44) = 256;
    *(v11 + 12) = 0;
    objc_storeStrong(v11 + 15, path);
    v11[112] = 1;
  }

  v12 = v11;

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (AFBBufferBuilder)init
{
  v3 = 0;
  v4 = 0x4000;
  v5 = 0;
  return [(AFBBufferBuilder *)self initWithConfig:&v3 path:0 protectionClass:0xFFFFFFFFLL capacity:1024 error:0];
}

- (AFBBufferBuilder)initWithCapacity:(unint64_t)capacity
{
  v4 = 0;
  v5 = 0x4000;
  v6 = 0;
  return [(AFBBufferBuilder *)self initWithConfig:&v4 path:0 protectionClass:0xFFFFFFFFLL capacity:1024 error:0];
}

- (AFBBufferBuilder)initWithFileAtPath:(id)path protection:(id)protection capacity:(unint64_t)capacity error:(id *)error
{
  v23[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  protectionCopy = protection;
  if ([protectionCopy isEqualToString:*MEMORY[0x277CCA190]])
  {
    v12 = 1;
LABEL_9:
    v19 = 0;
    v20 = 0x4000;
    v21 = 0;
    self = [(AFBBufferBuilder *)self initWithConfig:&v19 path:pathCopy protectionClass:v12 capacity:capacity error:error];
    selfCopy = self;
    goto LABEL_10;
  }

  if ([protectionCopy isEqualToString:*MEMORY[0x277CCA198]])
  {
    v12 = 2;
    goto LABEL_9;
  }

  if ([protectionCopy isEqualToString:*MEMORY[0x277CCA1A0]])
  {
    v12 = 3;
    goto LABEL_9;
  }

  if ([protectionCopy isEqualToString:*MEMORY[0x277CCA1B8]])
  {
    v12 = 4;
    goto LABEL_9;
  }

  protectionCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unrecognized file protection: %@", protectionCopy];
  v22 = *MEMORY[0x277CCA450];
  v23[0] = protectionCopy;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"AFBErrorDomain" code:1 userInfo:v17];
  if (error)
  {
    v18 = v18;
    *error = v18;
  }

  selfCopy = 0;
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (AFBBufferBuilder)initWithFileAtPath:(id)path capacity:(unint64_t)capacity error:(id *)error
{
  v6 = 0;
  v7 = 0x4000;
  v8 = 0;
  return [(AFBBufferBuilder *)self initWithConfig:&v6 path:path protectionClass:0xFFFFFFFFLL capacity:capacity error:error];
}

- (void)dealloc
{
  if (self->_initOk)
  {
    apple::aiml::flatbuffers2::FlatBufferBuilder::~FlatBufferBuilder(&self->_fbbStorage);
  }

  fileAllocator = self->_fileAllocator;
  if (fileAllocator)
  {
    (*(*fileAllocator + 8))(fileAllocator);
  }

  v4.receiver = self;
  v4.super_class = AFBBufferBuilder;
  [(AFBBufferBuilder *)&v4 dealloc];
}

- (uint64_t)_fbb
{
  if (self)
  {
    return self + 8;
  }

  else
  {
    return 0;
  }
}

- (void)throwIfFinalizedWithSelector:(SEL)selector
{
  if (self->_isFinalized)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = NSStringFromSelector(selector);
    v6 = [v4 initWithFormat:@"%@: AFBBufferBuilder misuse: instance already finalized", v5];

    v7 = [MEMORY[0x277CBEAD8] exceptionWithName:@"AFBMisuseException" reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }
}

- (BOOL)finalizeWithSelector:(SEL)selector allocatorBufferAddr:(void *)addr size:(unint64_t)size error:(id *)error
{
  v25[1] = *MEMORY[0x277D85DE8];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    if (error)
    {
      [(AFBBufferBuilder *)self firstError];
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    [(AFBBufferBuilder *)self finalizeWithSelector:selector];
    fileAllocator = self->_fileAllocator;
    if (fileAllocator)
    {
      __errnum = 0;
      v12 = apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::truncate_to_region(fileAllocator, addr, size, &__errnum);
      if ((v12 & 1) == 0)
      {
        v14 = objc_alloc(MEMORY[0x277CCA9B8]);
        v15 = __errnum;
        v24 = *MEMORY[0x277CCA450];
        v16 = objc_alloc(MEMORY[0x277CCACA8]);
        __errnum = [v16 initWithFormat:@"%s (errno %d)", strerror(__errnum), __errnum];
        v25[0] = __errnum;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        v19 = [v14 initWithDomain:*MEMORY[0x277CCA5B8] code:v15 userInfo:v18];

        if (error)
        {
          v20 = v19;
          *error = v19;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)fbb
{
  if (self)
  {
    return &self->_fbbStorage;
  }

  else
  {
    return 0;
  }
}

- (id)createVectorOfBoolWithArray:(id)array
{
  v24 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v7 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [arrayCopy count], 1uLL);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    reverseObjectEnumerator = [arrayCopy reverseObjectEnumerator];
    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<BOOL>(p_fbbStorage, [*(*(&v19 + 1) + 8 * i) BOOLValue]);
        }

        v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(arrayCopy, "count"))}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfBoolWithArray:(id)array alignment:(unint64_t)alignment
{
  v19 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [arrayCopy count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (alignment <= 1)
    {
      alignmentCopy = 1;
    }

    else
    {
      alignmentCopy = alignment;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 1, alignmentCopy);
    v9 = [(AFBBufferBuilder *)self createVectorOfBoolWithArray:arrayCopy];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfBoolWithCArray:(const BOOL *)array count:(unint64_t)count
{
  v19 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 1uLL);
    if (count)
    {
      v11 = array - 1;
      countCopy = count;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<BOOL>(p_fbbStorage, v11[countCopy--]);
      }

      while (countCopy);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfBoolWithCArray:(const BOOL *)array count:(unint64_t)count alignment:(unint64_t)alignment
{
  v20 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 1)
    {
      alignmentCopy = 1;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 1, alignmentCopy);
    v10 = [(AFBBufferBuilder *)self createVectorOfBoolWithCArray:array count:count];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfBoolWithCount:(unint64_t)count block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 1uLL);
    if (count)
    {
      v11 = count - 1;
      do
      {
        v19[0] = 0;
        v12 = objc_autoreleasePoolPush();
        blockCopy[2](blockCopy, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<BOOL>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfBoolWithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 1)
    {
      alignmentCopy = 1;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 1, alignmentCopy);
    v11 = [(AFBBufferBuilder *)self createVectorOfBoolWithCount:count block:blockCopy];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfInt8WithArray:(id)array
{
  v24 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v7 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [arrayCopy count], 1uLL);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    reverseObjectEnumerator = [arrayCopy reverseObjectEnumerator];
    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<signed char>(p_fbbStorage, [*(*(&v19 + 1) + 8 * i) intValue]);
        }

        v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(arrayCopy, "count"))}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfInt8WithArray:(id)array alignment:(unint64_t)alignment
{
  v19 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [arrayCopy count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (alignment <= 1)
    {
      alignmentCopy = 1;
    }

    else
    {
      alignmentCopy = alignment;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 1, alignmentCopy);
    v9 = [(AFBBufferBuilder *)self createVectorOfInt8WithArray:arrayCopy];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt8WithCArray:(const char *)array count:(unint64_t)count
{
  v19 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 1uLL);
    if (count)
    {
      v11 = array - 1;
      countCopy = count;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<signed char>(p_fbbStorage, v11[countCopy--]);
      }

      while (countCopy);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt8WithCArray:(const char *)array count:(unint64_t)count alignment:(unint64_t)alignment
{
  v20 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 1)
    {
      alignmentCopy = 1;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 1, alignmentCopy);
    v10 = [(AFBBufferBuilder *)self createVectorOfInt8WithCArray:array count:count];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfInt8WithCount:(unint64_t)count block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 1uLL);
    if (count)
    {
      v11 = count - 1;
      do
      {
        v19[0] = 0;
        v12 = objc_autoreleasePoolPush();
        blockCopy[2](blockCopy, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<signed char>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt8WithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 1)
    {
      alignmentCopy = 1;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 1, alignmentCopy);
    v11 = [(AFBBufferBuilder *)self createVectorOfInt8WithCount:count block:blockCopy];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfUInt8WithArray:(id)array
{
  v24 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v7 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [arrayCopy count], 1uLL);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    reverseObjectEnumerator = [arrayCopy reverseObjectEnumerator];
    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<signed char>(p_fbbStorage, [*(*(&v19 + 1) + 8 * i) intValue]);
        }

        v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(arrayCopy, "count"))}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfUInt8WithArray:(id)array alignment:(unint64_t)alignment
{
  v19 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [arrayCopy count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (alignment <= 1)
    {
      alignmentCopy = 1;
    }

    else
    {
      alignmentCopy = alignment;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 1, alignmentCopy);
    v9 = [(AFBBufferBuilder *)self createVectorOfUInt8WithArray:arrayCopy];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt8WithCArray:(const char *)array count:(unint64_t)count
{
  v19 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 1uLL);
    if (count)
    {
      v11 = array - 1;
      countCopy = count;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<signed char>(p_fbbStorage, v11[countCopy--]);
      }

      while (countCopy);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt8WithCArray:(const char *)array count:(unint64_t)count alignment:(unint64_t)alignment
{
  v20 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 1)
    {
      alignmentCopy = 1;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 1, alignmentCopy);
    v10 = [(AFBBufferBuilder *)self createVectorOfUInt8WithCArray:array count:count];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfUInt8WithCount:(unint64_t)count block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 1uLL);
    if (count)
    {
      v11 = count - 1;
      do
      {
        v19[0] = 0;
        v12 = objc_autoreleasePoolPush();
        blockCopy[2](blockCopy, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<signed char>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt8WithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 1)
    {
      alignmentCopy = 1;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 1, alignmentCopy);
    v11 = [(AFBBufferBuilder *)self createVectorOfUInt8WithCount:count block:blockCopy];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfUInt8WithData:(id)data
{
  v16 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v6 = objc_autoreleasePoolPush();
  if (!dataCopy)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = NSStringFromSelector(a2);
    v14 = [v12 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v13, @"data"];

    v15 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v14 userInfo:0];
    objc_exception_throw(v15);
  }

  v7 = v6;
  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v9 = -[AFBBufferBuilder createVectorOfUInt8WithCArray:count:](self, "createVectorOfUInt8WithCArray:count:", [dataCopy bytes], objc_msgSend(dataCopy, "length"));
  }

  objc_autoreleasePoolPop(v7);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt8WithData:(id)data alignment:(unint64_t)alignment
{
  v18 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v8 = objc_autoreleasePoolPush();
  if (!dataCopy)
  {
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = NSStringFromSelector(a2);
    v16 = [v14 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v15, @"data"];

    v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v16 userInfo:0];
    objc_exception_throw(v17);
  }

  v9 = v8;
  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    v11 = -[AFBBufferBuilder createVectorOfUInt8WithCArray:count:alignment:](self, "createVectorOfUInt8WithCArray:count:alignment:", [dataCopy bytes], objc_msgSend(dataCopy, "length"), alignment);
  }

  objc_autoreleasePoolPop(v9);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfInt16WithArray:(id)array
{
  v24 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v7 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [arrayCopy count], 2uLL);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    reverseObjectEnumerator = [arrayCopy reverseObjectEnumerator];
    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<short>(p_fbbStorage, [*(*(&v19 + 1) + 8 * i) intValue]);
        }

        v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(arrayCopy, "count"))}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfInt16WithArray:(id)array alignment:(unint64_t)alignment
{
  v19 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [arrayCopy count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (alignment <= 2)
    {
      alignmentCopy = 2;
    }

    else
    {
      alignmentCopy = alignment;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 2, alignmentCopy);
    v9 = [(AFBBufferBuilder *)self createVectorOfInt16WithArray:arrayCopy];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt16WithCArray:(const signed __int16 *)array count:(unint64_t)count
{
  v19 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 2uLL);
    if (count)
    {
      v11 = array - 1;
      countCopy = count;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<short>(p_fbbStorage, v11[countCopy--]);
      }

      while (countCopy);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt16WithCArray:(const signed __int16 *)array count:(unint64_t)count alignment:(unint64_t)alignment
{
  v20 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 2)
    {
      alignmentCopy = 2;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 2, alignmentCopy);
    v10 = [(AFBBufferBuilder *)self createVectorOfInt16WithCArray:array count:count];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfInt16WithCount:(unint64_t)count block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 2uLL);
    if (count)
    {
      v11 = count - 1;
      do
      {
        v19[0] = 0;
        v12 = objc_autoreleasePoolPush();
        blockCopy[2](blockCopy, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<short>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt16WithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 2)
    {
      alignmentCopy = 2;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 2, alignmentCopy);
    v11 = [(AFBBufferBuilder *)self createVectorOfInt16WithCount:count block:blockCopy];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfUInt16WithArray:(id)array
{
  v24 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v7 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [arrayCopy count], 2uLL);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    reverseObjectEnumerator = [arrayCopy reverseObjectEnumerator];
    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<short>(p_fbbStorage, [*(*(&v19 + 1) + 8 * i) intValue]);
        }

        v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(arrayCopy, "count"))}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfUInt16WithArray:(id)array alignment:(unint64_t)alignment
{
  v19 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [arrayCopy count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (alignment <= 2)
    {
      alignmentCopy = 2;
    }

    else
    {
      alignmentCopy = alignment;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 2, alignmentCopy);
    v9 = [(AFBBufferBuilder *)self createVectorOfUInt16WithArray:arrayCopy];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt16WithCArray:(const unsigned __int16 *)array count:(unint64_t)count
{
  v19 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 2uLL);
    if (count)
    {
      v11 = array - 1;
      countCopy = count;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<short>(p_fbbStorage, v11[countCopy--]);
      }

      while (countCopy);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt16WithCArray:(const unsigned __int16 *)array count:(unint64_t)count alignment:(unint64_t)alignment
{
  v20 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 2)
    {
      alignmentCopy = 2;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 2, alignmentCopy);
    v10 = [(AFBBufferBuilder *)self createVectorOfUInt16WithCArray:array count:count];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfUInt16WithCount:(unint64_t)count block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 2uLL);
    if (count)
    {
      v11 = count - 1;
      do
      {
        v19[0] = 0;
        v12 = objc_autoreleasePoolPush();
        blockCopy[2](blockCopy, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<short>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt16WithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 2)
    {
      alignmentCopy = 2;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 2, alignmentCopy);
    v11 = [(AFBBufferBuilder *)self createVectorOfUInt16WithCount:count block:blockCopy];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfInt32WithArray:(id)array
{
  v24 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v7 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [arrayCopy count], 4uLL);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    reverseObjectEnumerator = [arrayCopy reverseObjectEnumerator];
    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(p_fbbStorage, [*(*(&v19 + 1) + 8 * i) intValue]);
        }

        v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(arrayCopy, "count"))}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfInt32WithArray:(id)array alignment:(unint64_t)alignment
{
  v19 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [arrayCopy count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (alignment <= 4)
    {
      alignmentCopy = 4;
    }

    else
    {
      alignmentCopy = alignment;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 4, alignmentCopy);
    v9 = [(AFBBufferBuilder *)self createVectorOfInt32WithArray:arrayCopy];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt32WithCArray:(const int *)array count:(unint64_t)count
{
  v19 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 4uLL);
    if (count)
    {
      v11 = array - 1;
      countCopy = count;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(p_fbbStorage, v11[countCopy--]);
      }

      while (countCopy);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt32WithCArray:(const int *)array count:(unint64_t)count alignment:(unint64_t)alignment
{
  v20 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 4)
    {
      alignmentCopy = 4;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 4, alignmentCopy);
    v10 = [(AFBBufferBuilder *)self createVectorOfInt32WithCArray:array count:count];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfInt32WithCount:(unint64_t)count block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 4uLL);
    if (count)
    {
      v11 = count - 1;
      do
      {
        v19[0] = 0;
        v12 = objc_autoreleasePoolPush();
        blockCopy[2](blockCopy, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt32WithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 4)
    {
      alignmentCopy = 4;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 4, alignmentCopy);
    v11 = [(AFBBufferBuilder *)self createVectorOfInt32WithCount:count block:blockCopy];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfUInt32WithArray:(id)array
{
  v24 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v7 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [arrayCopy count], 4uLL);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    reverseObjectEnumerator = [arrayCopy reverseObjectEnumerator];
    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(p_fbbStorage, [*(*(&v19 + 1) + 8 * i) unsignedIntValue]);
        }

        v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(arrayCopy, "count"))}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfUInt32WithArray:(id)array alignment:(unint64_t)alignment
{
  v19 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [arrayCopy count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (alignment <= 4)
    {
      alignmentCopy = 4;
    }

    else
    {
      alignmentCopy = alignment;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 4, alignmentCopy);
    v9 = [(AFBBufferBuilder *)self createVectorOfUInt32WithArray:arrayCopy];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt32WithCArray:(const unsigned int *)array count:(unint64_t)count
{
  v19 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 4uLL);
    if (count)
    {
      v11 = array - 1;
      countCopy = count;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(p_fbbStorage, v11[countCopy--]);
      }

      while (countCopy);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt32WithCArray:(const unsigned int *)array count:(unint64_t)count alignment:(unint64_t)alignment
{
  v20 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 4)
    {
      alignmentCopy = 4;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 4, alignmentCopy);
    v10 = [(AFBBufferBuilder *)self createVectorOfUInt32WithCArray:array count:count];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfUInt32WithCount:(unint64_t)count block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 4uLL);
    if (count)
    {
      v11 = count - 1;
      do
      {
        v19[0] = 0;
        v12 = objc_autoreleasePoolPush();
        blockCopy[2](blockCopy, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt32WithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 4)
    {
      alignmentCopy = 4;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 4, alignmentCopy);
    v11 = [(AFBBufferBuilder *)self createVectorOfUInt32WithCount:count block:blockCopy];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfInt64WithArray:(id)array
{
  v24 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v7 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [arrayCopy count], 8uLL);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    reverseObjectEnumerator = [arrayCopy reverseObjectEnumerator];
    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<long long>(p_fbbStorage, [*(*(&v19 + 1) + 8 * i) longLongValue]);
        }

        v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(arrayCopy, "count"))}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfInt64WithArray:(id)array alignment:(unint64_t)alignment
{
  v19 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [arrayCopy count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (alignment <= 8)
    {
      alignmentCopy = 8;
    }

    else
    {
      alignmentCopy = alignment;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 8, alignmentCopy);
    v9 = [(AFBBufferBuilder *)self createVectorOfInt64WithArray:arrayCopy];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt64WithCArray:(const int64_t *)array count:(unint64_t)count
{
  v19 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 8uLL);
    if (count)
    {
      v11 = array - 1;
      countCopy = count;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<long long>(p_fbbStorage, v11[countCopy--]);
      }

      while (countCopy);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt64WithCArray:(const int64_t *)array count:(unint64_t)count alignment:(unint64_t)alignment
{
  v20 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 8)
    {
      alignmentCopy = 8;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 8, alignmentCopy);
    v10 = [(AFBBufferBuilder *)self createVectorOfInt64WithCArray:array count:count];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfInt64WithCount:(unint64_t)count block:(id)block
{
  v19[3] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 8uLL);
    if (count)
    {
      v11 = count - 1;
      do
      {
        v19[0] = 0;
        v12 = objc_autoreleasePoolPush();
        blockCopy[2](blockCopy, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<long long>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt64WithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 8)
    {
      alignmentCopy = 8;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 8, alignmentCopy);
    v11 = [(AFBBufferBuilder *)self createVectorOfInt64WithCount:count block:blockCopy];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfUInt64WithArray:(id)array
{
  v24 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v7 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [arrayCopy count], 8uLL);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    reverseObjectEnumerator = [arrayCopy reverseObjectEnumerator];
    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<long long>(p_fbbStorage, [*(*(&v19 + 1) + 8 * i) unsignedLongLongValue]);
        }

        v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(arrayCopy, "count"))}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfUInt64WithArray:(id)array alignment:(unint64_t)alignment
{
  v19 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [arrayCopy count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (alignment <= 8)
    {
      alignmentCopy = 8;
    }

    else
    {
      alignmentCopy = alignment;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 8, alignmentCopy);
    v9 = [(AFBBufferBuilder *)self createVectorOfUInt64WithArray:arrayCopy];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt64WithCArray:(const unint64_t *)array count:(unint64_t)count
{
  v19 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 8uLL);
    if (count)
    {
      v11 = array - 1;
      countCopy = count;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<long long>(p_fbbStorage, v11[countCopy--]);
      }

      while (countCopy);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt64WithCArray:(const unint64_t *)array count:(unint64_t)count alignment:(unint64_t)alignment
{
  v20 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 8)
    {
      alignmentCopy = 8;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 8, alignmentCopy);
    v10 = [(AFBBufferBuilder *)self createVectorOfUInt64WithCArray:array count:count];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfUInt64WithCount:(unint64_t)count block:(id)block
{
  v19[3] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 8uLL);
    if (count)
    {
      v11 = count - 1;
      do
      {
        v19[0] = 0;
        v12 = objc_autoreleasePoolPush();
        blockCopy[2](blockCopy, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<long long>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt64WithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 8)
    {
      alignmentCopy = 8;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 8, alignmentCopy);
    v11 = [(AFBBufferBuilder *)self createVectorOfUInt64WithCount:count block:blockCopy];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfFloat32WithArray:(id)array
{
  v25 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v7 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [arrayCopy count], 4uLL);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    reverseObjectEnumerator = [arrayCopy reverseObjectEnumerator];
    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          [*(*(&v20 + 1) + 8 * i) floatValue];
          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<float>(p_fbbStorage, v13);
        }

        v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(arrayCopy, "count"))}];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfFloat32WithArray:(id)array alignment:(unint64_t)alignment
{
  v19 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [arrayCopy count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (alignment <= 4)
    {
      alignmentCopy = 4;
    }

    else
    {
      alignmentCopy = alignment;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 4, alignmentCopy);
    v9 = [(AFBBufferBuilder *)self createVectorOfFloat32WithArray:arrayCopy];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfFloat32WithCArray:(const float *)array count:(unint64_t)count
{
  v19 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 4uLL);
    if (count)
    {
      v11 = array - 1;
      countCopy = count;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<float>(p_fbbStorage, v11[countCopy--]);
      }

      while (countCopy);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfFloat32WithCArray:(const float *)array count:(unint64_t)count alignment:(unint64_t)alignment
{
  v20 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 4)
    {
      alignmentCopy = 4;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 4, alignmentCopy);
    v10 = [(AFBBufferBuilder *)self createVectorOfFloat32WithCArray:array count:count];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfFloat32WithCount:(unint64_t)count block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 4uLL);
    if (count)
    {
      v11 = count - 1;
      do
      {
        v19[0] = 0.0;
        v12 = objc_autoreleasePoolPush();
        blockCopy[2](blockCopy, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<float>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfFloat32WithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 4)
    {
      alignmentCopy = 4;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 4, alignmentCopy);
    v11 = [(AFBBufferBuilder *)self createVectorOfFloat32WithCount:count block:blockCopy];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfFloat64WithArray:(id)array
{
  v25 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v7 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [arrayCopy count], 8uLL);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    reverseObjectEnumerator = [arrayCopy reverseObjectEnumerator];
    v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          [*(*(&v20 + 1) + 8 * i) doubleValue];
          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<double>(p_fbbStorage, v13);
        }

        v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(arrayCopy, "count"))}];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfFloat64WithArray:(id)array alignment:(unint64_t)alignment
{
  v19 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [arrayCopy count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (alignment <= 8)
    {
      alignmentCopy = 8;
    }

    else
    {
      alignmentCopy = alignment;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 8, alignmentCopy);
    v9 = [(AFBBufferBuilder *)self createVectorOfFloat64WithArray:arrayCopy];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfFloat64WithCArray:(const double *)array count:(unint64_t)count
{
  v19 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 8uLL);
    if (count)
    {
      v11 = array - 1;
      countCopy = count;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<double>(p_fbbStorage, v11[countCopy--]);
      }

      while (countCopy);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfFloat64WithCArray:(const double *)array count:(unint64_t)count alignment:(unint64_t)alignment
{
  v20 = *MEMORY[0x277D85DE8];
  if (!array)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 8)
    {
      alignmentCopy = 8;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 8, alignmentCopy);
    v10 = [(AFBBufferBuilder *)self createVectorOfFloat64WithCArray:array count:count];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfFloat64WithCount:(unint64_t)count block:(id)block
{
  v19[3] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, count, 8uLL);
    if (count)
    {
      v11 = count - 1;
      do
      {
        v19[0] = 0.0;
        v12 = objc_autoreleasePoolPush();
        blockCopy[2](blockCopy, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<double>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, count)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfFloat64WithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block
{
  v20 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (!blockCopy)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 8)
    {
      alignmentCopy = 8;
    }

    else
    {
      alignmentCopy = alignment;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, count, 8, alignmentCopy);
    v11 = [(AFBBufferBuilder *)self createVectorOfFloat64WithCount:count block:blockCopy];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createString:(id)string
{
  stringCopy = string;
  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v6 = [(AFBBufferBuilder *)self createString:stringCopy alignment:1];

  return v6;
}

- (id)createString:(id)string alignment:(unint64_t)alignment
{
  stringCopy = string;
  if (!stringCopy)
  {
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v12 = NSStringFromSelector(a2);
    v13 = [v11 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v12, @"string"];

    v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v13 userInfo:0];
    objc_exception_throw(v14);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  uTF8String = [stringCopy UTF8String];
  if (!uTF8String)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    stringCopy = [v15 initWithFormat:@"%@: string is not valid unicode: %@", v16, stringCopy];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:stringCopy userInfo:0];
    objc_exception_throw(v18);
  }

  v9 = [(AFBBufferBuilder *)self createStringWithCString:uTF8String alignment:alignment];

  return v9;
}

- (id)createStringWithCString:(const char *)string
{
  if (!string)
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = NSStringFromSelector(a2);
    v9 = [v7 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v8, @"cString"];

    v10 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v9 userInfo:0];
    objc_exception_throw(v10);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];

  return [(AFBBufferBuilder *)self createStringWithCString:string alignment:1];
}

- (id)createStringWithCString:(const char *)string alignment:(unint64_t)alignment
{
  v19 = *MEMORY[0x277D85DE8];
  if (!string)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"cString"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 1)
    {
      alignmentCopy = 1;
    }

    else
    {
      alignmentCopy = alignment;
    }

    v11 = strlen(string);
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceStringAlignment(p_fbbStorage, v11, alignmentCopy);
    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(p_fbbStorage, string, v11)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createStringWithData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = NSStringFromSelector(a2);
    v10 = [v8 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v9, @"data"];

    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v10 userInfo:0];
    objc_exception_throw(v11);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v6 = [(AFBBufferBuilder *)self createStringWithData:dataCopy alignment:1];

  return v6;
}

- (id)createStringWithData:(id)data alignment:(unint64_t)alignment
{
  v21 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (!dataCopy)
  {
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = NSStringFromSelector(a2);
    v19 = [v17 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v18, @"data"];

    v20 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v19 userInfo:0];
    objc_exception_throw(v20);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    v11 = [dataCopy length];
    if (alignment <= 1)
    {
      alignmentCopy = 1;
    }

    else
    {
      alignmentCopy = alignment;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceStringAlignment(p_fbbStorage, v11, alignmentCopy);
    v13 = objc_autoreleasePoolPush();
    String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(p_fbbStorage, [dataCopy bytes], objc_msgSend(dataCopy, "length"));
    objc_autoreleasePoolPop(v13);
    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:String];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfStringWithArray:(id)array
{
  arrayCopy = array;
  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v6 = [(AFBBufferBuilder *)self createVectorOfStringWithArray:arrayCopy alignment:1];

  return v6;
}

- (id)createVectorOfStringWithArray:(id)array alignment:(unint64_t)alignment
{
  v53 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (!arrayCopy)
  {
    v46 = objc_alloc(MEMORY[0x277CCACA8]);
    v47 = NSStringFromSelector(a2);
    v48 = [v46 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v47, @"array"];

    v49 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v48 userInfo:0];
    objc_exception_throw(v49);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 1)
    {
      alignmentCopy = 1;
    }

    else
    {
      alignmentCopy = alignment;
    }

    __src = 0;
    v51 = 0;
    v52 = 0;
    std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>::reserve(&__src, [arrayCopy count]);
    v11 = [arrayCopy count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    for (i = v11 - 1; i != -1; --i)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = [arrayCopy objectAtIndexedSubscript:i];
      v16 = v15;
      uTF8String = [v15 UTF8String];
      v18 = uTF8String;
      if (!uTF8String)
      {
        v42 = objc_alloc(MEMORY[0x277CCACA8]);
        v43 = NSStringFromSelector(a2);
        v44 = [v42 initWithFormat:@"%@: string is not valid unicode: %@", v43, v15];

        v45 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v44 userInfo:0];
        objc_exception_throw(v45);
      }

      v19 = strlen(uTF8String);
      apple::aiml::flatbuffers2::FlatBufferBuilder::ForceStringAlignment(p_fbbStorage, v19, alignmentCopy);
      v20 = strlen(v18);
      String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(p_fbbStorage, v18, v20);
      v22 = v51;
      if (v51 >= v52)
      {
        v24 = __src;
        v25 = v51 - __src;
        v26 = (v51 - __src) >> 2;
        v27 = v26 + 1;
        if ((v26 + 1) >> 62)
        {
          std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>::__throw_length_error[abi:ne200100]();
        }

        v28 = v52 - __src;
        if ((v52 - __src) >> 1 > v27)
        {
          v27 = v28 >> 1;
        }

        v29 = v28 >= 0x7FFFFFFFFFFFFFFCLL;
        v30 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v29)
        {
          v30 = v27;
        }

        if (v30)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(&__src, v30);
        }

        *(4 * v26) = String;
        v23 = 4 * v26 + 4;
        memcpy(0, v24, v25);
        v31 = __src;
        __src = 0;
        v51 = v23;
        v52 = 0;
        if (v31)
        {
          operator delete(v31);
        }
      }

      else
      {
        *v51 = String;
        v23 = (v22 + 4);
      }

      v51 = v23;

      objc_autoreleasePoolPop(v14);
    }

    v32 = __src;
    v33 = v51;
    v34 = v51 - 4;
    if (__src != v51 && v34 > __src)
    {
      v36 = __src + 4;
      do
      {
        v37 = *(v36 - 1);
        *(v36 - 1) = *v34;
        *v34 = v37;
        v34 -= 4;
        v29 = v36 >= v34;
        v36 += 4;
      }

      while (!v29);
    }

    v38 = v33 - v32;
    if (v38)
    {
      v39 = v32;
    }

    else
    {
      v39 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>> const&)::t;
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(p_fbbStorage, v39, v38 >> 2)}];
    if (__src)
    {
      v51 = __src;
      operator delete(__src);
    }
  }

  v40 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfStringWithCount:(unint64_t)count block:(id)block
{
  blockCopy = block;
  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self createVectorOfStringWithCount:count alignment:1 block:blockCopy];

  return v8;
}

- (id)createVectorOfStringWithCount:(unint64_t)count alignment:(unint64_t)alignment block:(id)block
{
  v57 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v53 = blockCopy;
  if (!blockCopy)
  {
    v48 = a2;
    v49 = objc_alloc(MEMORY[0x277CCACA8]);
    v50 = NSStringFromSelector(v48);
    v51 = [v49 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v50, @"block"];

    v52 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v51 userInfo:0];
    objc_exception_throw(v52);
  }

  v10 = blockCopy;
  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v12 = &unk_2852608B0;
  }

  else
  {
    if (alignment <= 1)
    {
      alignmentCopy = 1;
    }

    else
    {
      alignmentCopy = alignment;
    }

    __src = 0;
    v55 = 0;
    v56 = 0;
    std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>::reserve(&__src, count);
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    for (i = count - 1; i != -1; --i)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = v10[2](v10, i);
      v18 = v17;
      uTF8String = [v17 UTF8String];
      v20 = uTF8String;
      if (!uTF8String)
      {
        v44 = objc_alloc(MEMORY[0x277CCACA8]);
        v45 = NSStringFromSelector(a2);
        v46 = [v44 initWithFormat:@"%@: string is not valid unicode: %@", v45, v17];

        v47 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v46 userInfo:0];
        objc_exception_throw(v47);
      }

      v21 = strlen(uTF8String);
      apple::aiml::flatbuffers2::FlatBufferBuilder::ForceStringAlignment(p_fbbStorage, v21, alignmentCopy);
      v22 = strlen(v20);
      String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(p_fbbStorage, v20, v22);
      v24 = v55;
      if (v55 >= v56)
      {
        v26 = __src;
        v27 = v55 - __src;
        v28 = (v55 - __src) >> 2;
        v29 = v28 + 1;
        if ((v28 + 1) >> 62)
        {
          std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>::__throw_length_error[abi:ne200100]();
        }

        v30 = v56 - __src;
        if ((v56 - __src) >> 1 > v29)
        {
          v29 = v30 >> 1;
        }

        v31 = v30 >= 0x7FFFFFFFFFFFFFFCLL;
        v32 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v31)
        {
          v32 = v29;
        }

        if (v32)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(&__src, v32);
        }

        *(4 * v28) = String;
        v25 = 4 * v28 + 4;
        memcpy(0, v26, v27);
        v33 = __src;
        __src = 0;
        v55 = v25;
        v56 = 0;
        if (v33)
        {
          operator delete(v33);
        }

        v10 = v53;
      }

      else
      {
        *v55 = String;
        v25 = (v24 + 4);
      }

      v55 = v25;

      objc_autoreleasePoolPop(v16);
    }

    v34 = __src;
    v35 = v55;
    v36 = v55 - 4;
    if (__src != v55 && v36 > __src)
    {
      v38 = __src + 4;
      do
      {
        v39 = *(v38 - 1);
        *(v38 - 1) = *v36;
        *v36 = v39;
        v36 -= 4;
        v31 = v38 >= v36;
        v38 += 4;
      }

      while (!v31);
    }

    v40 = v35 - v34;
    if (v40)
    {
      v41 = v34;
    }

    else
    {
      v41 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>> const&)::t;
    }

    v12 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(p_fbbStorage, v41, v40 >> 2)}];
    if (__src)
    {
      v55 = __src;
      operator delete(__src);
    }
  }

  v42 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)createVectorOfStringWithOffsets:(id)offsets
{
  v49 = *MEMORY[0x277D85DE8];
  offsetsCopy = offsets;
  if (!offsetsCopy)
  {
    v34 = objc_alloc(MEMORY[0x277CCACA8]);
    v35 = NSStringFromSelector(a2);
    v36 = [v34 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v35, @"offsets"];

    v37 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v36 userInfo:0];
    objc_exception_throw(v37);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  firstError = [(AFBBufferBuilder *)self firstError];

  if (firstError)
  {
    v7 = &unk_2852608B0;
  }

  else
  {
    selfCopy = self;
    v40 = offsetsCopy;
    __src = 0;
    v46 = 0;
    v47 = 0;
    std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>::reserve(&__src, [offsetsCopy count]);
    context = objc_autoreleasePoolPush();
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    reverseObjectEnumerator = [offsetsCopy reverseObjectEnumerator];
    v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v9)
    {
      v10 = *v42;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v12 = *(*(&v41 + 1) + 8 * i);
          unsignedIntValue = [v12 unsignedIntValue];
          v14 = v46;
          if (v46 >= v47)
          {
            v16 = __src;
            v17 = v46 - __src;
            v18 = (v46 - __src) >> 2;
            v19 = v18 + 1;
            if ((v18 + 1) >> 62)
            {
              std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>::__throw_length_error[abi:ne200100]();
            }

            v20 = v47 - __src;
            if ((v47 - __src) >> 1 > v19)
            {
              v19 = v20 >> 1;
            }

            if (v20 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v21 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v21 = v19;
            }

            if (v21)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(&__src, v21);
            }

            *(4 * v18) = unsignedIntValue;
            v15 = 4 * v18 + 4;
            memcpy(0, v16, v17);
            v22 = __src;
            __src = 0;
            v46 = v15;
            v47 = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            *v46 = unsignedIntValue;
            v15 = (v14 + 4);
          }

          v46 = v15;
        }

        v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v9);
    }

    objc_autoreleasePoolPop(context);
    v23 = __src;
    v24 = v46;
    offsetsCopy = v40;
    if (__src != v46)
    {
      v25 = v46 - 4;
      if (v46 - 4 > __src)
      {
        v26 = __src + 4;
        do
        {
          v27 = *(v26 - 1);
          *(v26 - 1) = *v25;
          *v25 = v27;
          v25 -= 4;
          v28 = v26 >= v25;
          v26 += 4;
        }

        while (!v28);
      }
    }

    if (selfCopy)
    {
      p_fbbStorage = &selfCopy->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    v30 = v24 - v23;
    if (v30)
    {
      v31 = v23;
    }

    else
    {
      v31 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>> const&)::t;
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(p_fbbStorage, v31, v30 >> 2)}];
    if (__src)
    {
      v46 = __src;
      operator delete(__src);
    }
  }

  v32 = *MEMORY[0x277D85DE8];

  return v7;
}

@end