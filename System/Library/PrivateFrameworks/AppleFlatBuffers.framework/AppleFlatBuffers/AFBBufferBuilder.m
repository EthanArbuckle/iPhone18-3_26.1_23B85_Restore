@interface AFBBufferBuilder
- (AFBBufferBuilder)init;
- (AFBBufferBuilder)initWithCapacity:(unint64_t)a3;
- (AFBBufferBuilder)initWithConfig:(const Config *)a3 path:(id)a4 protectionClass:(int)a5 capacity:(unint64_t)a6 error:(id *)a7;
- (AFBBufferBuilder)initWithFileAtPath:(id)a3 capacity:(unint64_t)a4 error:(id *)a5;
- (AFBBufferBuilder)initWithFileAtPath:(id)a3 protection:(id)a4 capacity:(unint64_t)a5 error:(id *)a6;
- (BOOL)finalizeWithSelector:(SEL)a3 allocatorBufferAddr:(void *)a4 size:(unint64_t)a5 error:(id *)a6;
- (id)createString:(id)a3;
- (id)createString:(id)a3 alignment:(unint64_t)a4;
- (id)createStringWithCString:(const char *)a3;
- (id)createStringWithCString:(const char *)a3 alignment:(unint64_t)a4;
- (id)createStringWithData:(id)a3;
- (id)createStringWithData:(id)a3 alignment:(unint64_t)a4;
- (id)createVectorOfBoolWithArray:(id)a3;
- (id)createVectorOfBoolWithArray:(id)a3 alignment:(unint64_t)a4;
- (id)createVectorOfBoolWithCArray:(const BOOL *)a3 count:(unint64_t)a4;
- (id)createVectorOfBoolWithCArray:(const BOOL *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5;
- (id)createVectorOfBoolWithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5;
- (id)createVectorOfBoolWithCount:(unint64_t)a3 block:(id)a4;
- (id)createVectorOfFloat32WithArray:(id)a3;
- (id)createVectorOfFloat32WithArray:(id)a3 alignment:(unint64_t)a4;
- (id)createVectorOfFloat32WithCArray:(const float *)a3 count:(unint64_t)a4;
- (id)createVectorOfFloat32WithCArray:(const float *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5;
- (id)createVectorOfFloat32WithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5;
- (id)createVectorOfFloat32WithCount:(unint64_t)a3 block:(id)a4;
- (id)createVectorOfFloat64WithArray:(id)a3;
- (id)createVectorOfFloat64WithArray:(id)a3 alignment:(unint64_t)a4;
- (id)createVectorOfFloat64WithCArray:(const double *)a3 count:(unint64_t)a4;
- (id)createVectorOfFloat64WithCArray:(const double *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5;
- (id)createVectorOfFloat64WithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5;
- (id)createVectorOfFloat64WithCount:(unint64_t)a3 block:(id)a4;
- (id)createVectorOfInt16WithArray:(id)a3;
- (id)createVectorOfInt16WithArray:(id)a3 alignment:(unint64_t)a4;
- (id)createVectorOfInt16WithCArray:(const signed __int16 *)a3 count:(unint64_t)a4;
- (id)createVectorOfInt16WithCArray:(const signed __int16 *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5;
- (id)createVectorOfInt16WithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5;
- (id)createVectorOfInt16WithCount:(unint64_t)a3 block:(id)a4;
- (id)createVectorOfInt32WithArray:(id)a3;
- (id)createVectorOfInt32WithArray:(id)a3 alignment:(unint64_t)a4;
- (id)createVectorOfInt32WithCArray:(const int *)a3 count:(unint64_t)a4;
- (id)createVectorOfInt32WithCArray:(const int *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5;
- (id)createVectorOfInt32WithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5;
- (id)createVectorOfInt32WithCount:(unint64_t)a3 block:(id)a4;
- (id)createVectorOfInt64WithArray:(id)a3;
- (id)createVectorOfInt64WithArray:(id)a3 alignment:(unint64_t)a4;
- (id)createVectorOfInt64WithCArray:(const int64_t *)a3 count:(unint64_t)a4;
- (id)createVectorOfInt64WithCArray:(const int64_t *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5;
- (id)createVectorOfInt64WithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5;
- (id)createVectorOfInt64WithCount:(unint64_t)a3 block:(id)a4;
- (id)createVectorOfInt8WithArray:(id)a3;
- (id)createVectorOfInt8WithArray:(id)a3 alignment:(unint64_t)a4;
- (id)createVectorOfInt8WithCArray:(const char *)a3 count:(unint64_t)a4;
- (id)createVectorOfInt8WithCArray:(const char *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5;
- (id)createVectorOfInt8WithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5;
- (id)createVectorOfInt8WithCount:(unint64_t)a3 block:(id)a4;
- (id)createVectorOfStringWithArray:(id)a3;
- (id)createVectorOfStringWithArray:(id)a3 alignment:(unint64_t)a4;
- (id)createVectorOfStringWithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5;
- (id)createVectorOfStringWithCount:(unint64_t)a3 block:(id)a4;
- (id)createVectorOfStringWithOffsets:(id)a3;
- (id)createVectorOfUInt16WithArray:(id)a3;
- (id)createVectorOfUInt16WithArray:(id)a3 alignment:(unint64_t)a4;
- (id)createVectorOfUInt16WithCArray:(const unsigned __int16 *)a3 count:(unint64_t)a4;
- (id)createVectorOfUInt16WithCArray:(const unsigned __int16 *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5;
- (id)createVectorOfUInt16WithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5;
- (id)createVectorOfUInt16WithCount:(unint64_t)a3 block:(id)a4;
- (id)createVectorOfUInt32WithArray:(id)a3;
- (id)createVectorOfUInt32WithArray:(id)a3 alignment:(unint64_t)a4;
- (id)createVectorOfUInt32WithCArray:(const unsigned int *)a3 count:(unint64_t)a4;
- (id)createVectorOfUInt32WithCArray:(const unsigned int *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5;
- (id)createVectorOfUInt32WithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5;
- (id)createVectorOfUInt32WithCount:(unint64_t)a3 block:(id)a4;
- (id)createVectorOfUInt64WithArray:(id)a3;
- (id)createVectorOfUInt64WithArray:(id)a3 alignment:(unint64_t)a4;
- (id)createVectorOfUInt64WithCArray:(const unint64_t *)a3 count:(unint64_t)a4;
- (id)createVectorOfUInt64WithCArray:(const unint64_t *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5;
- (id)createVectorOfUInt64WithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5;
- (id)createVectorOfUInt64WithCount:(unint64_t)a3 block:(id)a4;
- (id)createVectorOfUInt8WithArray:(id)a3;
- (id)createVectorOfUInt8WithArray:(id)a3 alignment:(unint64_t)a4;
- (id)createVectorOfUInt8WithCArray:(const char *)a3 count:(unint64_t)a4;
- (id)createVectorOfUInt8WithCArray:(const char *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5;
- (id)createVectorOfUInt8WithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5;
- (id)createVectorOfUInt8WithCount:(unint64_t)a3 block:(id)a4;
- (id)createVectorOfUInt8WithData:(id)a3;
- (id)createVectorOfUInt8WithData:(id)a3 alignment:(unint64_t)a4;
- (uint64_t)_fbb;
- (void)dealloc;
- (void)fbb;
- (void)setError:(id)a3;
- (void)throwIfFinalizedWithSelector:(SEL)a3;
@end

@implementation AFBBufferBuilder

- (void)setError:(id)a3
{
  v5 = a3;
  firstError = self->_firstError;
  p_firstError = &self->_firstError;
  if (!firstError)
  {
    v8 = v5;
    objc_storeStrong(p_firstError, a3);
    v5 = v8;
  }
}

- (AFBBufferBuilder)initWithConfig:(const Config *)a3 path:(id)a4 protectionClass:(int)a5 capacity:(unint64_t)a6 error:(id *)a7
{
  v16 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v15.receiver = self;
  v15.super_class = AFBBufferBuilder;
  v11 = [(AFBBufferBuilder *)&v15 init];
  if (v11)
  {
    if (v10)
    {
      operator new();
    }

    *(v11 + 1) = *(v11 + 13);
    v11[16] = 0;
    *(v11 + 3) = a6;
    *(v11 + 4) = 8;
    *(v11 + 40) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 9) = 0;
    *(v11 + 10) = 1;
    *(v11 + 44) = 256;
    *(v11 + 12) = 0;
    objc_storeStrong(v11 + 15, a4);
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

- (AFBBufferBuilder)initWithCapacity:(unint64_t)a3
{
  v4 = 0;
  v5 = 0x4000;
  v6 = 0;
  return [(AFBBufferBuilder *)self initWithConfig:&v4 path:0 protectionClass:0xFFFFFFFFLL capacity:1024 error:0];
}

- (AFBBufferBuilder)initWithFileAtPath:(id)a3 protection:(id)a4 capacity:(unint64_t)a5 error:(id *)a6
{
  v23[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if ([v11 isEqualToString:*MEMORY[0x277CCA190]])
  {
    v12 = 1;
LABEL_9:
    v19 = 0;
    v20 = 0x4000;
    v21 = 0;
    self = [(AFBBufferBuilder *)self initWithConfig:&v19 path:v10 protectionClass:v12 capacity:a5 error:a6];
    v13 = self;
    goto LABEL_10;
  }

  if ([v11 isEqualToString:*MEMORY[0x277CCA198]])
  {
    v12 = 2;
    goto LABEL_9;
  }

  if ([v11 isEqualToString:*MEMORY[0x277CCA1A0]])
  {
    v12 = 3;
    goto LABEL_9;
  }

  if ([v11 isEqualToString:*MEMORY[0x277CCA1B8]])
  {
    v12 = 4;
    goto LABEL_9;
  }

  v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unrecognized file protection: %@", v11];
  v22 = *MEMORY[0x277CCA450];
  v23[0] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
  v18 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"AFBErrorDomain" code:1 userInfo:v17];
  if (a6)
  {
    v18 = v18;
    *a6 = v18;
  }

  v13 = 0;
LABEL_10:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (AFBBufferBuilder)initWithFileAtPath:(id)a3 capacity:(unint64_t)a4 error:(id *)a5
{
  v6 = 0;
  v7 = 0x4000;
  v8 = 0;
  return [(AFBBufferBuilder *)self initWithConfig:&v6 path:a3 protectionClass:0xFFFFFFFFLL capacity:a4 error:a5];
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
  if (a1)
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)throwIfFinalizedWithSelector:(SEL)a3
{
  if (self->_isFinalized)
  {
    v4 = objc_alloc(MEMORY[0x277CCACA8]);
    v5 = NSStringFromSelector(a3);
    v6 = [v4 initWithFormat:@"%@: AFBBufferBuilder misuse: instance already finalized", v5];

    v7 = [MEMORY[0x277CBEAD8] exceptionWithName:@"AFBMisuseException" reason:v6 userInfo:0];
    objc_exception_throw(v7);
  }
}

- (BOOL)finalizeWithSelector:(SEL)a3 allocatorBufferAddr:(void *)a4 size:(unint64_t)a5 error:(id *)a6
{
  v25[1] = *MEMORY[0x277D85DE8];
  v11 = [(AFBBufferBuilder *)self firstError];

  if (v11)
  {
    if (a6)
    {
      [(AFBBufferBuilder *)self firstError];
      *a6 = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    [(AFBBufferBuilder *)self finalizeWithSelector:a3];
    fileAllocator = self->_fileAllocator;
    if (fileAllocator)
    {
      __errnum = 0;
      v12 = apple::aiml::flatbuffers2::objc_apple::MappedFileAllocator::truncate_to_region(fileAllocator, a4, a5, &__errnum);
      if ((v12 & 1) == 0)
      {
        v14 = objc_alloc(MEMORY[0x277CCA9B8]);
        v15 = __errnum;
        v24 = *MEMORY[0x277CCA450];
        v16 = objc_alloc(MEMORY[0x277CCACA8]);
        v17 = [v16 initWithFormat:@"%s (errno %d)", strerror(__errnum), __errnum];
        v25[0] = v17;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        v19 = [v14 initWithDomain:*MEMORY[0x277CCA5B8] code:v15 userInfo:v18];

        if (a6)
        {
          v20 = v19;
          *a6 = v19;
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

- (id)createVectorOfBoolWithArray:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v6 = [(AFBBufferBuilder *)self firstError];

  if (v6)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [v5 count], 1uLL);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v5 reverseObjectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<BOOL>(p_fbbStorage, [*(*(&v19 + 1) + 8 * i) BOOLValue]);
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(v5, "count"))}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfBoolWithArray:(id)a3 alignment:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [v7 count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (a4 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = a4;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 1, v12);
    v9 = [(AFBBufferBuilder *)self createVectorOfBoolWithArray:v7];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfBoolWithCArray:(const BOOL *)a3 count:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a4, 1uLL);
    if (a4)
    {
      v11 = a3 - 1;
      v12 = a4;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<BOOL>(p_fbbStorage, v11[v12--]);
      }

      while (v12);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a4)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfBoolWithCArray:(const BOOL *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v9 = [(AFBBufferBuilder *)self firstError];

  if (v9)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (a5 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = a5;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a4, 1, v11);
    v10 = [(AFBBufferBuilder *)self createVectorOfBoolWithCArray:a3 count:a4];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfBoolWithCount:(unint64_t)a3 block:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a3, 1uLL);
    if (a3)
    {
      v11 = a3 - 1;
      do
      {
        v19[0] = 0;
        v12 = objc_autoreleasePoolPush();
        v7[2](v7, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<BOOL>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a3)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfBoolWithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (!v9)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v10 = [(AFBBufferBuilder *)self firstError];

  if (v10)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (a4 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = a4;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a3, 1, v12);
    v11 = [(AFBBufferBuilder *)self createVectorOfBoolWithCount:a3 block:v9];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfInt8WithArray:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v6 = [(AFBBufferBuilder *)self firstError];

  if (v6)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [v5 count], 1uLL);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v5 reverseObjectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<signed char>(p_fbbStorage, [*(*(&v19 + 1) + 8 * i) intValue]);
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(v5, "count"))}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfInt8WithArray:(id)a3 alignment:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [v7 count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (a4 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = a4;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 1, v12);
    v9 = [(AFBBufferBuilder *)self createVectorOfInt8WithArray:v7];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt8WithCArray:(const char *)a3 count:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a4, 1uLL);
    if (a4)
    {
      v11 = a3 - 1;
      v12 = a4;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<signed char>(p_fbbStorage, v11[v12--]);
      }

      while (v12);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a4)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt8WithCArray:(const char *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v9 = [(AFBBufferBuilder *)self firstError];

  if (v9)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (a5 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = a5;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a4, 1, v11);
    v10 = [(AFBBufferBuilder *)self createVectorOfInt8WithCArray:a3 count:a4];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfInt8WithCount:(unint64_t)a3 block:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a3, 1uLL);
    if (a3)
    {
      v11 = a3 - 1;
      do
      {
        v19[0] = 0;
        v12 = objc_autoreleasePoolPush();
        v7[2](v7, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<signed char>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a3)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt8WithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (!v9)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v10 = [(AFBBufferBuilder *)self firstError];

  if (v10)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (a4 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = a4;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a3, 1, v12);
    v11 = [(AFBBufferBuilder *)self createVectorOfInt8WithCount:a3 block:v9];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfUInt8WithArray:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v6 = [(AFBBufferBuilder *)self firstError];

  if (v6)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [v5 count], 1uLL);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v5 reverseObjectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<signed char>(p_fbbStorage, [*(*(&v19 + 1) + 8 * i) intValue]);
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(v5, "count"))}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfUInt8WithArray:(id)a3 alignment:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [v7 count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (a4 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = a4;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 1, v12);
    v9 = [(AFBBufferBuilder *)self createVectorOfUInt8WithArray:v7];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt8WithCArray:(const char *)a3 count:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a4, 1uLL);
    if (a4)
    {
      v11 = a3 - 1;
      v12 = a4;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<signed char>(p_fbbStorage, v11[v12--]);
      }

      while (v12);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a4)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt8WithCArray:(const char *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v9 = [(AFBBufferBuilder *)self firstError];

  if (v9)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (a5 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = a5;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a4, 1, v11);
    v10 = [(AFBBufferBuilder *)self createVectorOfUInt8WithCArray:a3 count:a4];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfUInt8WithCount:(unint64_t)a3 block:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a3, 1uLL);
    if (a3)
    {
      v11 = a3 - 1;
      do
      {
        v19[0] = 0;
        v12 = objc_autoreleasePoolPush();
        v7[2](v7, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<signed char>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a3)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt8WithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (!v9)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v10 = [(AFBBufferBuilder *)self firstError];

  if (v10)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (a4 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = a4;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a3, 1, v12);
    v11 = [(AFBBufferBuilder *)self createVectorOfUInt8WithCount:a3 block:v9];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfUInt8WithData:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (!v5)
  {
    v12 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = NSStringFromSelector(a2);
    v14 = [v12 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v13, @"data"];

    v15 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v14 userInfo:0];
    objc_exception_throw(v15);
  }

  v7 = v6;
  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v9 = -[AFBBufferBuilder createVectorOfUInt8WithCArray:count:](self, "createVectorOfUInt8WithCArray:count:", [v5 bytes], objc_msgSend(v5, "length"));
  }

  objc_autoreleasePoolPop(v7);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt8WithData:(id)a3 alignment:(unint64_t)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = objc_autoreleasePoolPush();
  if (!v7)
  {
    v14 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = NSStringFromSelector(a2);
    v16 = [v14 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v15, @"data"];

    v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v16 userInfo:0];
    objc_exception_throw(v17);
  }

  v9 = v8;
  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v10 = [(AFBBufferBuilder *)self firstError];

  if (v10)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    v11 = -[AFBBufferBuilder createVectorOfUInt8WithCArray:count:alignment:](self, "createVectorOfUInt8WithCArray:count:alignment:", [v7 bytes], objc_msgSend(v7, "length"), a4);
  }

  objc_autoreleasePoolPop(v9);

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfInt16WithArray:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v6 = [(AFBBufferBuilder *)self firstError];

  if (v6)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [v5 count], 2uLL);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v5 reverseObjectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<short>(p_fbbStorage, [*(*(&v19 + 1) + 8 * i) intValue]);
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(v5, "count"))}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfInt16WithArray:(id)a3 alignment:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [v7 count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (a4 <= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = a4;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 2, v12);
    v9 = [(AFBBufferBuilder *)self createVectorOfInt16WithArray:v7];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt16WithCArray:(const signed __int16 *)a3 count:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a4, 2uLL);
    if (a4)
    {
      v11 = a3 - 1;
      v12 = a4;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<short>(p_fbbStorage, v11[v12--]);
      }

      while (v12);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a4)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt16WithCArray:(const signed __int16 *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v9 = [(AFBBufferBuilder *)self firstError];

  if (v9)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (a5 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = a5;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a4, 2, v11);
    v10 = [(AFBBufferBuilder *)self createVectorOfInt16WithCArray:a3 count:a4];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfInt16WithCount:(unint64_t)a3 block:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a3, 2uLL);
    if (a3)
    {
      v11 = a3 - 1;
      do
      {
        v19[0] = 0;
        v12 = objc_autoreleasePoolPush();
        v7[2](v7, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<short>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a3)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt16WithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (!v9)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v10 = [(AFBBufferBuilder *)self firstError];

  if (v10)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (a4 <= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = a4;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a3, 2, v12);
    v11 = [(AFBBufferBuilder *)self createVectorOfInt16WithCount:a3 block:v9];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfUInt16WithArray:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v6 = [(AFBBufferBuilder *)self firstError];

  if (v6)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [v5 count], 2uLL);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v5 reverseObjectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<short>(p_fbbStorage, [*(*(&v19 + 1) + 8 * i) intValue]);
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(v5, "count"))}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfUInt16WithArray:(id)a3 alignment:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [v7 count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (a4 <= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = a4;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 2, v12);
    v9 = [(AFBBufferBuilder *)self createVectorOfUInt16WithArray:v7];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt16WithCArray:(const unsigned __int16 *)a3 count:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a4, 2uLL);
    if (a4)
    {
      v11 = a3 - 1;
      v12 = a4;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<short>(p_fbbStorage, v11[v12--]);
      }

      while (v12);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a4)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt16WithCArray:(const unsigned __int16 *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v9 = [(AFBBufferBuilder *)self firstError];

  if (v9)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (a5 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = a5;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a4, 2, v11);
    v10 = [(AFBBufferBuilder *)self createVectorOfUInt16WithCArray:a3 count:a4];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfUInt16WithCount:(unint64_t)a3 block:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a3, 2uLL);
    if (a3)
    {
      v11 = a3 - 1;
      do
      {
        v19[0] = 0;
        v12 = objc_autoreleasePoolPush();
        v7[2](v7, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<short>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a3)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt16WithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (!v9)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v10 = [(AFBBufferBuilder *)self firstError];

  if (v10)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (a4 <= 2)
    {
      v12 = 2;
    }

    else
    {
      v12 = a4;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a3, 2, v12);
    v11 = [(AFBBufferBuilder *)self createVectorOfUInt16WithCount:a3 block:v9];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfInt32WithArray:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v6 = [(AFBBufferBuilder *)self firstError];

  if (v6)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [v5 count], 4uLL);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v5 reverseObjectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(p_fbbStorage, [*(*(&v19 + 1) + 8 * i) intValue]);
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(v5, "count"))}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfInt32WithArray:(id)a3 alignment:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [v7 count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (a4 <= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = a4;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 4, v12);
    v9 = [(AFBBufferBuilder *)self createVectorOfInt32WithArray:v7];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt32WithCArray:(const int *)a3 count:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a4, 4uLL);
    if (a4)
    {
      v11 = a3 - 1;
      v12 = a4;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(p_fbbStorage, v11[v12--]);
      }

      while (v12);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a4)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt32WithCArray:(const int *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v9 = [(AFBBufferBuilder *)self firstError];

  if (v9)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (a5 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = a5;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a4, 4, v11);
    v10 = [(AFBBufferBuilder *)self createVectorOfInt32WithCArray:a3 count:a4];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfInt32WithCount:(unint64_t)a3 block:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a3, 4uLL);
    if (a3)
    {
      v11 = a3 - 1;
      do
      {
        v19[0] = 0;
        v12 = objc_autoreleasePoolPush();
        v7[2](v7, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a3)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt32WithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (!v9)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v10 = [(AFBBufferBuilder *)self firstError];

  if (v10)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (a4 <= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = a4;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a3, 4, v12);
    v11 = [(AFBBufferBuilder *)self createVectorOfInt32WithCount:a3 block:v9];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfUInt32WithArray:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v6 = [(AFBBufferBuilder *)self firstError];

  if (v6)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [v5 count], 4uLL);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v5 reverseObjectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(p_fbbStorage, [*(*(&v19 + 1) + 8 * i) unsignedIntValue]);
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(v5, "count"))}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfUInt32WithArray:(id)a3 alignment:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [v7 count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (a4 <= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = a4;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 4, v12);
    v9 = [(AFBBufferBuilder *)self createVectorOfUInt32WithArray:v7];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt32WithCArray:(const unsigned int *)a3 count:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a4, 4uLL);
    if (a4)
    {
      v11 = a3 - 1;
      v12 = a4;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(p_fbbStorage, v11[v12--]);
      }

      while (v12);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a4)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt32WithCArray:(const unsigned int *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v9 = [(AFBBufferBuilder *)self firstError];

  if (v9)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (a5 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = a5;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a4, 4, v11);
    v10 = [(AFBBufferBuilder *)self createVectorOfUInt32WithCArray:a3 count:a4];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfUInt32WithCount:(unint64_t)a3 block:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a3, 4uLL);
    if (a3)
    {
      v11 = a3 - 1;
      do
      {
        v19[0] = 0;
        v12 = objc_autoreleasePoolPush();
        v7[2](v7, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<int>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a3)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt32WithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (!v9)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v10 = [(AFBBufferBuilder *)self firstError];

  if (v10)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (a4 <= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = a4;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a3, 4, v12);
    v11 = [(AFBBufferBuilder *)self createVectorOfUInt32WithCount:a3 block:v9];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfInt64WithArray:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v6 = [(AFBBufferBuilder *)self firstError];

  if (v6)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [v5 count], 8uLL);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v5 reverseObjectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<long long>(p_fbbStorage, [*(*(&v19 + 1) + 8 * i) longLongValue]);
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(v5, "count"))}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfInt64WithArray:(id)a3 alignment:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [v7 count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (a4 <= 8)
    {
      v12 = 8;
    }

    else
    {
      v12 = a4;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 8, v12);
    v9 = [(AFBBufferBuilder *)self createVectorOfInt64WithArray:v7];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt64WithCArray:(const int64_t *)a3 count:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a4, 8uLL);
    if (a4)
    {
      v11 = a3 - 1;
      v12 = a4;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<long long>(p_fbbStorage, v11[v12--]);
      }

      while (v12);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a4)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt64WithCArray:(const int64_t *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v9 = [(AFBBufferBuilder *)self firstError];

  if (v9)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (a5 <= 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = a5;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a4, 8, v11);
    v10 = [(AFBBufferBuilder *)self createVectorOfInt64WithCArray:a3 count:a4];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfInt64WithCount:(unint64_t)a3 block:(id)a4
{
  v19[3] = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a3, 8uLL);
    if (a3)
    {
      v11 = a3 - 1;
      do
      {
        v19[0] = 0;
        v12 = objc_autoreleasePoolPush();
        v7[2](v7, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<long long>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a3)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfInt64WithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (!v9)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v10 = [(AFBBufferBuilder *)self firstError];

  if (v10)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (a4 <= 8)
    {
      v12 = 8;
    }

    else
    {
      v12 = a4;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a3, 8, v12);
    v11 = [(AFBBufferBuilder *)self createVectorOfInt64WithCount:a3 block:v9];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfUInt64WithArray:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v6 = [(AFBBufferBuilder *)self firstError];

  if (v6)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [v5 count], 8uLL);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [v5 reverseObjectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<long long>(p_fbbStorage, [*(*(&v19 + 1) + 8 * i) unsignedLongLongValue]);
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(v5, "count"))}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfUInt64WithArray:(id)a3 alignment:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [v7 count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (a4 <= 8)
    {
      v12 = 8;
    }

    else
    {
      v12 = a4;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 8, v12);
    v9 = [(AFBBufferBuilder *)self createVectorOfUInt64WithArray:v7];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt64WithCArray:(const unint64_t *)a3 count:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a4, 8uLL);
    if (a4)
    {
      v11 = a3 - 1;
      v12 = a4;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<long long>(p_fbbStorage, v11[v12--]);
      }

      while (v12);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a4)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt64WithCArray:(const unint64_t *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v9 = [(AFBBufferBuilder *)self firstError];

  if (v9)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (a5 <= 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = a5;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a4, 8, v11);
    v10 = [(AFBBufferBuilder *)self createVectorOfUInt64WithCArray:a3 count:a4];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfUInt64WithCount:(unint64_t)a3 block:(id)a4
{
  v19[3] = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a3, 8uLL);
    if (a3)
    {
      v11 = a3 - 1;
      do
      {
        v19[0] = 0;
        v12 = objc_autoreleasePoolPush();
        v7[2](v7, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<long long>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a3)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfUInt64WithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (!v9)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v10 = [(AFBBufferBuilder *)self firstError];

  if (v10)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (a4 <= 8)
    {
      v12 = 8;
    }

    else
    {
      v12 = a4;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a3, 8, v12);
    v11 = [(AFBBufferBuilder *)self createVectorOfUInt64WithCount:a3 block:v9];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfFloat32WithArray:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v6 = [(AFBBufferBuilder *)self firstError];

  if (v6)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [v5 count], 4uLL);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [v5 reverseObjectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v20 + 1) + 8 * i) floatValue];
          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<float>(p_fbbStorage, v13);
        }

        v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(v5, "count"))}];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfFloat32WithArray:(id)a3 alignment:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [v7 count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (a4 <= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = a4;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 4, v12);
    v9 = [(AFBBufferBuilder *)self createVectorOfFloat32WithArray:v7];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfFloat32WithCArray:(const float *)a3 count:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a4, 4uLL);
    if (a4)
    {
      v11 = a3 - 1;
      v12 = a4;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<float>(p_fbbStorage, v11[v12--]);
      }

      while (v12);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a4)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfFloat32WithCArray:(const float *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v9 = [(AFBBufferBuilder *)self firstError];

  if (v9)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (a5 <= 4)
    {
      v11 = 4;
    }

    else
    {
      v11 = a5;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a4, 4, v11);
    v10 = [(AFBBufferBuilder *)self createVectorOfFloat32WithCArray:a3 count:a4];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfFloat32WithCount:(unint64_t)a3 block:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a3, 4uLL);
    if (a3)
    {
      v11 = a3 - 1;
      do
      {
        v19[0] = 0.0;
        v12 = objc_autoreleasePoolPush();
        v7[2](v7, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<float>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a3)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfFloat32WithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (!v9)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v10 = [(AFBBufferBuilder *)self firstError];

  if (v10)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (a4 <= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = a4;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a3, 4, v12);
    v11 = [(AFBBufferBuilder *)self createVectorOfFloat32WithCount:a3 block:v9];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createVectorOfFloat64WithArray:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v6 = [(AFBBufferBuilder *)self firstError];

  if (v6)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, [v5 count], 8uLL);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = [v5 reverseObjectEnumerator];
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v20 + 1) + 8 * i) doubleValue];
          apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<double>(p_fbbStorage, v13);
        }

        v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, objc_msgSend(v5, "count"))}];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)createVectorOfFloat64WithArray:(id)a3 alignment:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    v10 = [v7 count];
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    if (a4 <= 8)
    {
      v12 = 8;
    }

    else
    {
      v12 = a4;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, v10, 8, v12);
    v9 = [(AFBBufferBuilder *)self createVectorOfFloat64WithArray:v7];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfFloat64WithCArray:(const double *)a3 count:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"array"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a4, 8uLL);
    if (a4)
    {
      v11 = a3 - 1;
      v12 = a4;
      do
      {
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<double>(p_fbbStorage, v11[v12--]);
      }

      while (v12);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a4)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfFloat64WithCArray:(const double *)a3 count:(unint64_t)a4 alignment:(unint64_t)a5
{
  v20 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"array"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v9 = [(AFBBufferBuilder *)self firstError];

  if (v9)
  {
    v10 = &unk_2852608B0;
  }

  else
  {
    if (a5 <= 8)
    {
      v11 = 8;
    }

    else
    {
      v11 = a5;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a4, 8, v11);
    v10 = [(AFBBufferBuilder *)self createVectorOfFloat64WithCArray:a3 count:a4];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)createVectorOfFloat64WithCount:(unint64_t)a3 block:(id)a4
{
  v19[3] = *MEMORY[0x277D85DE8];
  v7 = a4;
  if (!v7)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"block"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(p_fbbStorage, a3, 8uLL);
    if (a3)
    {
      v11 = a3 - 1;
      do
      {
        v19[0] = 0.0;
        v12 = objc_autoreleasePoolPush();
        v7[2](v7, v11, v19);
        objc_autoreleasePoolPop(v12);
        apple::aiml::flatbuffers2::FlatBufferBuilder::PushElement<double>(p_fbbStorage, v19[0]);
        --v11;
      }

      while (v11 != -1);
    }

    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(p_fbbStorage, a3)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfFloat64WithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = a5;
  if (!v9)
  {
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = NSStringFromSelector(a2);
    v18 = [v16 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v17, @"block"];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v10 = [(AFBBufferBuilder *)self firstError];

  if (v10)
  {
    v11 = &unk_2852608B0;
  }

  else
  {
    if (a4 <= 8)
    {
      v12 = 8;
    }

    else
    {
      v12 = a4;
    }

    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceVectorAlignment(p_fbbStorage, a3, 8, v12);
    v11 = [(AFBBufferBuilder *)self createVectorOfFloat64WithCount:a3 block:v9];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createString:(id)a3
{
  v5 = a3;
  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v6 = [(AFBBufferBuilder *)self createString:v5 alignment:1];

  return v6;
}

- (id)createString:(id)a3 alignment:(unint64_t)a4
{
  v7 = a3;
  if (!v7)
  {
    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    v12 = NSStringFromSelector(a2);
    v13 = [v11 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v12, @"string"];

    v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v13 userInfo:0];
    objc_exception_throw(v14);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [v7 UTF8String];
  if (!v8)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: string is not valid unicode: %@", v16, v7];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  v9 = [(AFBBufferBuilder *)self createStringWithCString:v8 alignment:a4];

  return v9;
}

- (id)createStringWithCString:(const char *)a3
{
  if (!a3)
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = NSStringFromSelector(a2);
    v9 = [v7 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v8, @"cString"];

    v10 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v9 userInfo:0];
    objc_exception_throw(v10);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];

  return [(AFBBufferBuilder *)self createStringWithCString:a3 alignment:1];
}

- (id)createStringWithCString:(const char *)a3 alignment:(unint64_t)a4
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = NSStringFromSelector(a2);
    v17 = [v15 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v16, @"cString"];

    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
    objc_exception_throw(v18);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (a4 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = a4;
    }

    v11 = strlen(a3);
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceStringAlignment(p_fbbStorage, v11, v10);
    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:{apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(p_fbbStorage, a3, v11)}];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createStringWithData:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = NSStringFromSelector(a2);
    v10 = [v8 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v9, @"data"];

    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v10 userInfo:0];
    objc_exception_throw(v11);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v6 = [(AFBBufferBuilder *)self createStringWithData:v5 alignment:1];

  return v6;
}

- (id)createStringWithData:(id)a3 alignment:(unint64_t)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = NSStringFromSelector(a2);
    v19 = [v17 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v18, @"data"];

    v20 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v19 userInfo:0];
    objc_exception_throw(v20);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
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

    v11 = [v7 length];
    if (a4 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = a4;
    }

    apple::aiml::flatbuffers2::FlatBufferBuilder::ForceStringAlignment(p_fbbStorage, v11, v12);
    v13 = objc_autoreleasePoolPush();
    String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(p_fbbStorage, [v7 bytes], objc_msgSend(v7, "length"));
    objc_autoreleasePoolPop(v13);
    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:String];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)createVectorOfStringWithArray:(id)a3
{
  v5 = a3;
  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v6 = [(AFBBufferBuilder *)self createVectorOfStringWithArray:v5 alignment:1];

  return v6;
}

- (id)createVectorOfStringWithArray:(id)a3 alignment:(unint64_t)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (!v7)
  {
    v46 = objc_alloc(MEMORY[0x277CCACA8]);
    v47 = NSStringFromSelector(a2);
    v48 = [v46 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v47, @"array"];

    v49 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v48 userInfo:0];
    objc_exception_throw(v49);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self firstError];

  if (v8)
  {
    v9 = &unk_2852608B0;
  }

  else
  {
    if (a4 <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = a4;
    }

    __src = 0;
    v51 = 0;
    v52 = 0;
    std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>::reserve(&__src, [v7 count]);
    v11 = [v7 count];
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
      v15 = [v7 objectAtIndexedSubscript:i];
      v16 = v15;
      v17 = [v15 UTF8String];
      v18 = v17;
      if (!v17)
      {
        v42 = objc_alloc(MEMORY[0x277CCACA8]);
        v43 = NSStringFromSelector(a2);
        v44 = [v42 initWithFormat:@"%@: string is not valid unicode: %@", v43, v15];

        v45 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v44 userInfo:0];
        objc_exception_throw(v45);
      }

      v19 = strlen(v17);
      apple::aiml::flatbuffers2::FlatBufferBuilder::ForceStringAlignment(p_fbbStorage, v19, v10);
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

- (id)createVectorOfStringWithCount:(unint64_t)a3 block:(id)a4
{
  v7 = a4;
  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v8 = [(AFBBufferBuilder *)self createVectorOfStringWithCount:a3 alignment:1 block:v7];

  return v8;
}

- (id)createVectorOfStringWithCount:(unint64_t)a3 alignment:(unint64_t)a4 block:(id)a5
{
  v57 = *MEMORY[0x277D85DE8];
  v9 = a5;
  v53 = v9;
  if (!v9)
  {
    v48 = a2;
    v49 = objc_alloc(MEMORY[0x277CCACA8]);
    v50 = NSStringFromSelector(v48);
    v51 = [v49 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v50, @"block"];

    v52 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v51 userInfo:0];
    objc_exception_throw(v52);
  }

  v10 = v9;
  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v11 = [(AFBBufferBuilder *)self firstError];

  if (v11)
  {
    v12 = &unk_2852608B0;
  }

  else
  {
    if (a4 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = a4;
    }

    __src = 0;
    v55 = 0;
    v56 = 0;
    std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>::reserve(&__src, a3);
    if (self)
    {
      p_fbbStorage = &self->_fbbStorage;
    }

    else
    {
      p_fbbStorage = 0;
    }

    for (i = a3 - 1; i != -1; --i)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = v10[2](v10, i);
      v18 = v17;
      v19 = [v17 UTF8String];
      v20 = v19;
      if (!v19)
      {
        v44 = objc_alloc(MEMORY[0x277CCACA8]);
        v45 = NSStringFromSelector(a2);
        v46 = [v44 initWithFormat:@"%@: string is not valid unicode: %@", v45, v17];

        v47 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v46 userInfo:0];
        objc_exception_throw(v47);
      }

      v21 = strlen(v19);
      apple::aiml::flatbuffers2::FlatBufferBuilder::ForceStringAlignment(p_fbbStorage, v21, v13);
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

- (id)createVectorOfStringWithOffsets:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v34 = objc_alloc(MEMORY[0x277CCACA8]);
    v35 = NSStringFromSelector(a2);
    v36 = [v34 initWithFormat:@"%@: Invalid parameter not satisfying: %@ != nil", v35, @"offsets"];

    v37 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v36 userInfo:0];
    objc_exception_throw(v37);
  }

  [(AFBBufferBuilder *)self throwIfFinalizedWithSelector:a2];
  v6 = [(AFBBufferBuilder *)self firstError];

  if (v6)
  {
    v7 = &unk_2852608B0;
  }

  else
  {
    v39 = self;
    v40 = v5;
    __src = 0;
    v46 = 0;
    v47 = 0;
    std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>::reserve(&__src, [v5 count]);
    context = objc_autoreleasePoolPush();
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v8 = [v5 reverseObjectEnumerator];
    v9 = [v8 countByEnumeratingWithState:&v41 objects:v48 count:16];
    if (v9)
    {
      v10 = *v42;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v41 + 1) + 8 * i);
          v13 = [v12 unsignedIntValue];
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

            *(4 * v18) = v13;
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
            *v46 = v13;
            v15 = (v14 + 4);
          }

          v46 = v15;
        }

        v9 = [v8 countByEnumeratingWithState:&v41 objects:v48 count:16];
      }

      while (v9);
    }

    objc_autoreleasePoolPop(context);
    v23 = __src;
    v24 = v46;
    v5 = v40;
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

    if (v39)
    {
      p_fbbStorage = &v39->_fbbStorage;
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