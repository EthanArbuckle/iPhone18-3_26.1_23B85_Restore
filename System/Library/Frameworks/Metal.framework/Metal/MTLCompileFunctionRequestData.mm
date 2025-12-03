@interface MTLCompileFunctionRequestData
+ (id)newVisibleRequestWithFunction:(id)function descriptor:(id)descriptor;
- ($2772B1D07D29A72E8557B2574C0AE5C1)archiveHashKey;
- ($2772B1D07D29A72E8557B2574C0AE5C1)vendorPluginFunctionId;
- (MTLCompileFunctionRequestData)init;
- (void)dealloc;
- (void)setAirScript:(id)script;
- (void)setArchiveHashKey:(id *)key;
- (void)setArchiverId:(id)id;
- (void)setDriverKeyData:(id)data;
- (void)setFrameworkData:(id)data;
- (void)setVendorPluginFunctionId:(id *)id;
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

+ (id)newVisibleRequestWithFunction:(id)function descriptor:(id)descriptor
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  [v6 setFunction:function];
  [v6 setFunctionOptions:{objc_msgSend(descriptor, "options")}];
  [v6 setPipelineOptions:{objc_msgSend(descriptor, "pipelineOptions")}];
  if (([descriptor options] & 4) != 0)
  {
    [v6 setPipelineOptions:{objc_msgSend(v6, "pipelineOptions") | 4}];
  }

  [v6 setBinaryArchives:{objc_msgSend(descriptor, "binaryArchives")}];
  if ([objc_msgSend(function "device")])
  {
    v7 = MTLSerializePluginDataDictionary([objc_msgSend(function "device")], 0) + 44;
  }

  else
  {
    v7 = 44;
  }

  if ([descriptor pluginData])
  {
    v7 += MTLSerializePluginDataDictionary([descriptor pluginData], 0);
  }

  v8 = malloc_type_calloc(v7, 1uLL, 0x1000040240089F6uLL);
  bitCodeHash = [function bitCodeHash];
  v10 = bitCodeHash[1];
  *(v8 + 2) = *bitCodeHash;
  *(v8 + 6) = v10;
  *(v8 + 40) = ([descriptor pipelineOptions] >> 24) & 1;
  v11 = 44;
  if ([objc_msgSend(function "device")])
  {
    *v8 = 44;
    v11 = MTLSerializePluginDataDictionary([objc_msgSend(function "device")], v8 + *v8) + 44;
  }

  if ([descriptor pluginData])
  {
    v8[1] = v11;
    MTLSerializePluginDataDictionary([descriptor pluginData], v8 + v8[1]);
  }

  v12 = dispatch_data_create(v8, v7, 0, *MEMORY[0x1E69E9648]);
  [v6 setFrameworkData:v12];
  dispatch_release(v12);
  CC_SHA256_Init(&c);
  memset(data, 0, 32);
  if (descriptor)
  {
    [descriptor hashStableWithFunction:function];
  }

  CC_SHA256_Update(&c, bitCodeHash, 0x20u);
  CC_SHA256_Update(&c, data, 0x20u);
  CC_SHA256_Final(md, &c);
  v16[0] = *md;
  v16[1] = v19;
  [v6 setArchiveHashKey:v16];
  v13 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)setFrameworkData:(id)data
{
  frameworkData = self->_frameworkData;
  if (frameworkData)
  {
    dispatch_release(frameworkData);
  }

  self->_frameworkData = data;
  if (data)
  {

    dispatch_retain(data);
  }
}

- (void)setAirScript:(id)script
{
  airScript = self->_airScript;
  if (airScript)
  {
    dispatch_release(airScript);
  }

  self->_airScript = script;
  if (script)
  {

    dispatch_retain(script);
  }
}

- (void)setDriverKeyData:(id)data
{
  driverKeyData = self->_driverKeyData;
  if (driverKeyData)
  {
    dispatch_release(driverKeyData);
  }

  self->_driverKeyData = data;
  if (data)
  {

    dispatch_retain(data);
  }
}

- (void)setArchiverId:(id)id
{
  archiverId = self->_archiverId;
  if (archiverId)
  {
    dispatch_release(archiverId);
  }

  self->_archiverId = id;
  if (id)
  {

    dispatch_retain(id);
  }
}

- ($2772B1D07D29A72E8557B2574C0AE5C1)archiveHashKey
{
  v3 = *self[3].var0;
  *retstr->var0 = *&self[2].var0[16];
  *&retstr->var0[16] = v3;
  return self;
}

- (void)setArchiveHashKey:(id *)key
{
  v3 = *&key->var0[16];
  *self->_archiveHashKey.key = *key->var0;
  *&self->_archiveHashKey.key[16] = v3;
}

- (void)setVendorPluginFunctionId:(id *)id
{
  v3 = *id->var0;
  *&self->_vendorPluginFunctionId.key[16] = *&id->var0[16];
  *self->_vendorPluginFunctionId.key = v3;
}

@end