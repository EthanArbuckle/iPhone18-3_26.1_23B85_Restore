@interface MTLDebugInstrumentationData
- (MTLDebugInstrumentationData)initWithData:(id)a3 linkedDynamicLibraries:(id)a4;
- (id).cxx_construct;
- (id)debugLocationForID:(unsigned int)a3;
- (id)debugSubProgramForID:(unsigned int)a3;
- (id)stringForID:(unsigned int)a3;
- (void)dealloc;
@end

@implementation MTLDebugInstrumentationData

- (MTLDebugInstrumentationData)initWithData:(id)a3 linkedDynamicLibraries:(id)a4
{
  v24.receiver = self;
  v24.super_class = MTLDebugInstrumentationData;
  v6 = [(MTLDebugInstrumentationData *)&v24 init];
  v7 = v6;
  if (v6)
  {
    size_ptr = 0;
    v6->_dataMap = dispatch_data_create_map(a3, &v6->_data, &size_ptr);
    std::vector<__CFString const*>::resize(&v7->_strings.__begin_, *(v7->_data + 2));
    data = v7->_data;
    if (data[2])
    {
      v9 = 0;
      v10 = 0;
      v11 = *MEMORY[0x1E695E480];
      v12 = *MEMORY[0x1E695E498];
      do
      {
        v7->_strings.__begin_[v9 / 2] = CFStringCreateWithCStringNoCopy(v11, data + data[3] + v9 * 4 + *(&data[v9 + 3] + data[3]) + 8, 0x8000100u, v12);
        ++v10;
        data = v7->_data;
        v9 += 2;
      }

      while (v10 < data[2]);
    }

    std::vector<MTLDebugLocation *>::resize(&v7->_debugLocations.__begin_, data[4]);
    v13 = v7->_data;
    if (v13[4])
    {
      v14 = 0;
      v15 = 16;
      do
      {
        v16 = objc_alloc_init(MTLDebugLocation);
        v16->_data = v7;
        v16->_debugLoc = (v7->_data + v15 + *(v7->_data + 5));
        v7->_debugLocations.__begin_[v14++] = v16;
        v13 = v7->_data;
        v15 += 16;
      }

      while (v14 < v13[4]);
    }

    std::vector<MTLDebugLocation *>::resize(&v7->_debugSubPrograms.__begin_, v13[6]);
    v17 = v7->_data;
    if (v17[6])
    {
      v18 = 0;
      v19 = 24;
      do
      {
        v20 = objc_alloc_init(MTLDebugSubProgram);
        v20->_data = v7;
        v20->_debugSubProgram = (v7->_data + v19 + *(v7->_data + 7));
        v7->_debugSubPrograms.__begin_[v18++] = v20;
        v17 = v7->_data;
        v19 += 12;
      }

      while (v18 < v17[6]);
    }

    if (v17[10])
    {
      v7->_globalConstantsData = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v7->_data + *(v7->_data + 11) + 40 length:*(v7->_data + 10) freeWhenDone:0];
      v17 = v7->_data;
    }

    v21 = v17[12];
    if (v21)
    {
      v7->_userReflectionData = dispatch_data_create(v17 + v17[13] + 48, v21, 0, 0);
    }

    v7->_linkedDynamicLibraries = a4;
  }

  return v7;
}

- (id)stringForID:(unsigned int)a3
{
  begin = self->_strings.__begin_;
  if (a3 >= (self->_strings.__end_ - begin))
  {
    return 0;
  }

  else
  {
    return begin[a3];
  }
}

- (id)debugLocationForID:(unsigned int)a3
{
  begin = self->_debugLocations.__begin_;
  if (a3 >= (self->_debugLocations.var0 - begin))
  {
    return 0;
  }

  else
  {
    return begin[a3];
  }
}

- (id)debugSubProgramForID:(unsigned int)a3
{
  begin = self->_debugSubPrograms.__begin_;
  if (a3 >= (self->_debugSubPrograms.var0 - begin))
  {
    return 0;
  }

  else
  {
    return begin[a3];
  }
}

- (void)dealloc
{
  begin = self->_strings.__begin_;
  end = self->_strings.__end_;
  while (begin != end)
  {
    v5 = *begin++;
    CFRelease(v5);
  }

  v6 = self->_debugLocations.__begin_;
  var0 = self->_debugLocations.var0;
  while (v6 != var0)
  {
    v8 = *v6++;
    [v8 releaseInternal];
  }

  v9 = self->_debugSubPrograms.__begin_;
  v10 = self->_debugSubPrograms.var0;
  while (v9 != v10)
  {
    v11 = *v9++;
    [v11 releaseInternal];
  }

  userReflectionData = self->_userReflectionData;
  if (userReflectionData)
  {
    dispatch_release(userReflectionData);
  }

  dataMap = self->_dataMap;
  if (dataMap)
  {
    dispatch_release(dataMap);
  }

  v14.receiver = self;
  v14.super_class = MTLDebugInstrumentationData;
  [(MTLDebugInstrumentationData *)&v14 dealloc];
}

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  return self;
}

@end