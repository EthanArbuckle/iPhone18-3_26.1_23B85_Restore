@interface CATapDescription
- (CATapDescription)init;
- (CATapDescription)initWithDictionary:(id)a3;
- (CATapDescription)initWithProcesses:(id)a3 andDeviceUID:(id)a4 withStream:(int64_t)a5;
- (id)initExcludingProcesses:(id)a3 andDeviceUID:(id)a4 withStream:(int64_t)a5;
- (id)initMonoGlobalTapButExcludeProcesses:(id)a3;
- (id)initMonoMixdownOfProcesses:(id)a3;
- (id)initStereoGlobalTapButExcludeProcesses:(id)a3;
- (id)initStereoMixdownOfProcesses:(id)a3;
@end

@implementation CATapDescription

- (id)initExcludingProcesses:(id)a3 andDeviceUID:(id)a4 withStream:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(CATapDescription);

  if (v11)
  {
    objc_storeStrong(&v11->_processes, a3);
    objc_storeStrong(&v11->_deviceUID, a4);
    v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:a5];
    stream = v11->_stream;
    v11->_stream = v12;

    v11->_exclusive = 1;
  }

  return v11;
}

- (CATapDescription)initWithProcesses:(id)a3 andDeviceUID:(id)a4 withStream:(int64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = objc_alloc_init(CATapDescription);

  if (v11)
  {
    objc_storeStrong(&v11->_processes, a3);
    objc_storeStrong(&v11->_deviceUID, a4);
    v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:a5];
    stream = v11->_stream;
    v11->_stream = v12;
  }

  return v11;
}

- (id)initMonoGlobalTapButExcludeProcesses:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(CATapDescription);

  if (v6)
  {
    objc_storeStrong(&v6->_processes, a3);
    *&v6->_mono = 257;
    v6->_mixdown = 1;
  }

  return v6;
}

- (id)initMonoMixdownOfProcesses:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(CATapDescription);

  if (v6)
  {
    objc_storeStrong(&v6->_processes, a3);
    v6->_mono = 1;
    v6->_mixdown = 1;
  }

  return v6;
}

- (id)initStereoGlobalTapButExcludeProcesses:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(CATapDescription);

  if (v6)
  {
    objc_storeStrong(&v6->_processes, a3);
    *&v6->_exclusive = 257;
  }

  return v6;
}

- (id)initStereoMixdownOfProcesses:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(CATapDescription);

  if (v6)
  {
    objc_storeStrong(&v6->_processes, a3);
    v6->_mixdown = 1;
  }

  return v6;
}

- (CATapDescription)init
{
  v3 = [CATapDescription alloc];

  v14.receiver = v3;
  v14.super_class = CATapDescription;
  v4 = [(CATapDescription *)&v14 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    UUID = v4->_UUID;
    v4->_UUID = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DEC0]);
    processes = v4->_processes;
    v4->_processes = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DEC0]);
    bundleIDs = v4->_bundleIDs;
    v4->_bundleIDs = v9;

    *&v4->_mono = 0x1000000;
    v4->_processRestoreEnabled = 1;
    deviceUID = v4->_deviceUID;
    v4->_muteBehavior = 0;
    v4->_deviceUID = 0;

    stream = v4->_stream;
    v4->_stream = 0;
  }

  return v4;
}

- (CATapDescription)initWithDictionary:(id)a3
{
  v5 = a3;
  v6 = objc_alloc_init(CATapDescription);
  v7 = v6;

  if (v6)
  {
    v8 = [v5 objectForKey:@"TapUUID"];

    if (!v8)
    {
      v27 = [MEMORY[0x1E696AAA8] currentHandler];
      [v27 handleFailureInMethod:a2 object:v6 file:@"CATapDescription.mm" lineNumber:143 description:@"Tap dictionary is missing UUID"];
    }

    v9 = [v5 objectForKey:@"Processes"];

    if (!v9)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      [v28 handleFailureInMethod:a2 object:v6 file:@"CATapDescription.mm" lineNumber:144 description:@"Tap dictionary is missing process list"];
    }

    v10 = [v5 objectForKey:@"TapName"];
    objc_storeStrong(&v6->_name, v10);
    v11 = [v5 objectForKey:@"TapUUID"];
    v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v11];
    objc_storeStrong(&v6->_UUID, v12);
    v13 = [v5 objectForKey:@"Processes"];
    objc_storeStrong(&v6->_processes, v13);
    v14 = [v5 objectForKey:@"BundleIDs"];
    objc_storeStrong(&v6->_bundleIDs, v14);
    v15 = [v5 objectForKeyedSubscript:@"IsMono"];
    v7->_mono = [v15 BOOLValue];

    v16 = [v5 objectForKeyedSubscript:@"IsExclusive"];
    v7->_exclusive = [v16 BOOLValue];

    v17 = [v5 objectForKeyedSubscript:@"IsMixdown"];
    v7->_mixdown = [v17 BOOLValue];

    v18 = [v5 objectForKeyedSubscript:@"IsPrivate"];
    v7->_privateTap = [v18 BOOLValue];

    v19 = [v5 objectForKeyedSubscript:@"ProcessRestoreEnabled"];
    v7->_processRestoreEnabled = [v19 BOOLValue];

    v20 = [v5 objectForKeyedSubscript:@"MuteBehavior"];
    v7->_muteBehavior = [v20 intValue];

    v21 = [v5 objectForKey:@"DeviceUID"];
    deviceUID = v7->_deviceUID;
    v7->_deviceUID = v21;

    v23 = [v5 objectForKey:@"Stream"];

    if (v23)
    {
      v24 = [v5 objectForKeyedSubscript:@"Stream"];
      stream = v7->_stream;
      v7->_stream = v24;
    }
  }

  return v7;
}

@end