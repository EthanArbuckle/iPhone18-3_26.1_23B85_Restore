@interface GCHapticCapabilities
- (GCHapticCapabilities)init;
- (GCHapticCapabilities)initWithCoder:(id)a3;
- (GCHapticCapabilities)initWithIdentifier:(id)a3 hapticEnginesInfo:(id)a4 hapticCapabilityGraph:(id)a5;
- (void)encodeWithCoder:(id)a3;
- (void)initializeHapticEngines;
- (void)removeHapticEngines;
- (void)setController:(id)a3;
@end

@implementation GCHapticCapabilities

- (GCHapticCapabilities)initWithIdentifier:(id)a3 hapticEnginesInfo:(id)a4 hapticCapabilityGraph:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = GCHapticCapabilities;
  v11 = [(GCHapticCapabilities *)&v17 init];
  if (v11)
  {
    v12 = [v8 copyWithZone:0];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [MEMORY[0x1E695DEC8] array];
    hapticEngines = v11->_hapticEngines;
    v11->_hapticEngines = v14;

    objc_storeStrong(&v11->_hapticEnginesInfo, a4);
    objc_storeStrong(&v11->_capabilityGraph, a5);
  }

  return v11;
}

- (GCHapticCapabilities)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(GCHapticCapabilities *)self initWithIdentifier:v3 hapticEnginesInfo:0 hapticCapabilityGraph:0];

  return v4;
}

- (void)initializeHapticEngines
{
  v4 = getGCLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *a1 = 0;
    *a2 = 0;
    _os_log_error_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_ERROR, "Unable to create CHHapticEngine!", a1, 2u);
  }
}

- (void)removeHapticEngines
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_initialized)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = self->_hapticEngines;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v11 + 1) + 8 * v7++) stopWithCompletionHandler:{&__block_literal_global_10, v11}];
        }

        while (v5 != v7);
        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    v8 = objc_opt_new();
    hapticEngines = self->_hapticEngines;
    self->_hapticEngines = v8;

    self->_initialized = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setController:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_controller, v4);
  [(GCDeviceHaptics *)self->_deviceHaptics setController:v4];
}

- (GCHapticCapabilities)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = GCHapticCapabilities;
  v5 = [(GCHapticCapabilities *)&v27 init];
  if (v5)
  {
    v6 = GCIPCObjectIdentifier_Classes();
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"hapticEnginesInfo"];
    hapticEnginesInfo = v5->_hapticEnginesInfo;
    v5->_hapticEnginesInfo = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v14 setWithObjects:{v15, v16, v17, objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"capabilityGraphDict"];
    v20 = [[GCHapticCapabilityGraph alloc] initWithJSONDictionaryRepresentation:v19];
    capabilityGraph = v5->_capabilityGraph;
    v5->_capabilityGraph = v20;

    v22 = [[GCDeviceHaptics alloc] initWithCapabilityGraph:v5->_capabilityGraph];
    deviceHaptics = v5->_deviceHaptics;
    v5->_deviceHaptics = v22;

    v24 = [MEMORY[0x1E695DEC8] array];
    hapticEngines = v5->_hapticEngines;
    v5->_hapticEngines = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  capabilityGraph = self->_capabilityGraph;
  v5 = a3;
  v6 = [(GCHapticCapabilityGraph *)capabilityGraph jsonDictionaryRepresentation];
  [v5 encodeObject:v6 forKey:@"capabilityGraphDict"];

  [v5 encodeObject:self->_hapticEnginesInfo forKey:@"hapticEnginesInfo"];
  v7 = [(GCHapticCapabilities *)self identifier];
  [v5 encodeObject:v7 forKey:@"identifier"];
}

@end