@interface MTLCompileFunctionRequestData
+ (id)newVisibleRequestWithFunction:(id)a3 descriptor:(id)a4;
- ($2772B1D07D29A72E8557B2574C0AE5C1)archiveHashKey;
- ($2772B1D07D29A72E8557B2574C0AE5C1)vendorPluginFunctionId;
- (MTLCompileFunctionRequestData)init;
- (void)dealloc;
- (void)setAirScript:(id)a3;
- (void)setArchiveHashKey:(id *)a3;
- (void)setArchiverId:(id)a3;
- (void)setDriverKeyData:(id)a3;
- (void)setFrameworkData:(id)a3;
- (void)setVendorPluginFunctionId:(id *)a3;
@end

@implementation MTLCompileFunctionRequestData

- (void)dealloc
{
  frameworkData = self->_frameworkData;
  if (frameworkData)
  {
    dispatch_release(frameworkData);
  }

  driverKeyData = self->_driverKeyData;
  if (driverKeyData)
  {
    dispatch_release(driverKeyData);
  }

  archiverId = self->_archiverId;
  if (archiverId)
  {
    dispatch_release(archiverId);
  }

  airScript = self->_airScript;
  if (airScript)
  {
    dispatch_release(airScript);
  }

  v7.receiver = self;
  v7.super_class = MTLCompileFunctionRequestData;
  [(MTLCompileFunctionRequestData *)&v7 dealloc];
}

- ($2772B1D07D29A72E8557B2574C0AE5C1)vendorPluginFunctionId
{
  v3 = *&self[5].var0[24];
  *retstr->var0 = *&self[5].var0[8];
  *&retstr->var0[16] = v3;
  return self;
}

- (MTLCompileFunctionRequestData)init
{
  v3.receiver = self;
  v3.super_class = MTLCompileFunctionRequestData;
  result = [(MTLCompileFunctionRequestData *)&v3 init];
  result->_sync = 0;
  *&result->_function = 0u;
  *&result->_pipelineOptions = 0u;
  *&result->_driverKeyData = 0u;
  *&result->_archiverId = 0u;
  *result->_archiveHashKey.key = 0u;
  *&result->_archiveHashKey.key[16] = 0u;
  *&result->_destinationBinaryArchive = 0u;
  *&result->_visibleFunctions = 0u;
  *(&result->_privateVisibleFunctions + 1) = 0u;
  *&result->_maxAccelerationStructureTraversalDepth = 0u;
  *&result->_vendorPluginFunctionId.key[4] = 0u;
  *&result->_vendorPluginFunctionId.key[16] = 0u;
  return result;
}

+ (id)newVisibleRequestWithFunction:(id)a3 descriptor:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  [v6 setFunction:a3];
  [v6 setFunctionOptions:{objc_msgSend(a4, "options")}];
  [v6 setPipelineOptions:{objc_msgSend(a4, "pipelineOptions")}];
  if (([a4 options] & 4) != 0)
  {
    [v6 setPipelineOptions:{objc_msgSend(v6, "pipelineOptions") | 4}];
  }

  [v6 setBinaryArchives:{objc_msgSend(a4, "binaryArchives")}];
  if ([objc_msgSend(a3 "device")])
  {
    v7 = MTLSerializePluginDataDictionary([objc_msgSend(a3 "device")], 0) + 44;
  }

  else
  {
    v7 = 44;
  }

  if ([a4 pluginData])
  {
    v7 += MTLSerializePluginDataDictionary([a4 pluginData], 0);
  }

  v8 = malloc_type_calloc(v7, 1uLL, 0x1000040240089F6uLL);
  v9 = [a3 bitCodeHash];
  v10 = v9[1];
  *(v8 + 2) = *v9;
  *(v8 + 6) = v10;
  *(v8 + 40) = ([a4 pipelineOptions] >> 24) & 1;
  v11 = 44;
  if ([objc_msgSend(a3 "device")])
  {
    *v8 = 44;
    v11 = MTLSerializePluginDataDictionary([objc_msgSend(a3 "device")], v8 + *v8) + 44;
  }

  if ([a4 pluginData])
  {
    v8[1] = v11;
    MTLSerializePluginDataDictionary([a4 pluginData], v8 + v8[1]);
  }

  v12 = dispatch_data_create(v8, v7, 0, *MEMORY[0x1E69E9648]);
  [v6 setFrameworkData:v12];
  dispatch_release(v12);
  CC_SHA256_Init(&c);
  memset(data, 0, 32);
  if (a4)
  {
    [a4 hashStableWithFunction:a3];
  }

  CC_SHA256_Update(&c, v9, 0x20u);
  CC_SHA256_Update(&c, data, 0x20u);
  CC_SHA256_Final(md, &c);
  v16[0] = *md;
  v16[1] = v19;
  [v6 setArchiveHashKey:v16];
  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)setFrameworkData:(id)a3
{
  frameworkData = self->_frameworkData;
  if (frameworkData)
  {
    dispatch_release(frameworkData);
  }

  self->_frameworkData = a3;
  if (a3)
  {

    dispatch_retain(a3);
  }
}

- (void)setAirScript:(id)a3
{
  airScript = self->_airScript;
  if (airScript)
  {
    dispatch_release(airScript);
  }

  self->_airScript = a3;
  if (a3)
  {

    dispatch_retain(a3);
  }
}

- (void)setDriverKeyData:(id)a3
{
  driverKeyData = self->_driverKeyData;
  if (driverKeyData)
  {
    dispatch_release(driverKeyData);
  }

  self->_driverKeyData = a3;
  if (a3)
  {

    dispatch_retain(a3);
  }
}

- (void)setArchiverId:(id)a3
{
  archiverId = self->_archiverId;
  if (archiverId)
  {
    dispatch_release(archiverId);
  }

  self->_archiverId = a3;
  if (a3)
  {

    dispatch_retain(a3);
  }
}

- ($2772B1D07D29A72E8557B2574C0AE5C1)archiveHashKey
{
  v3 = *self[3].var0;
  *retstr->var0 = *&self[2].var0[16];
  *&retstr->var0[16] = v3;
  return self;
}

- (void)setArchiveHashKey:(id *)a3
{
  v3 = *&a3->var0[16];
  *self->_archiveHashKey.key = *a3->var0;
  *&self->_archiveHashKey.key[16] = v3;
}

- (void)setVendorPluginFunctionId:(id *)a3
{
  v3 = *a3->var0;
  *&self->_vendorPluginFunctionId.key[16] = *&a3->var0[16];
  *self->_vendorPluginFunctionId.key = v3;
}

@end