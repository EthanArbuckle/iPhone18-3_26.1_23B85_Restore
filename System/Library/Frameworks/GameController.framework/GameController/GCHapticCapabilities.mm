@interface GCHapticCapabilities
- (GCHapticCapabilities)init;
- (GCHapticCapabilities)initWithCoder:(id)coder;
- (GCHapticCapabilities)initWithIdentifier:(id)identifier hapticEnginesInfo:(id)info hapticCapabilityGraph:(id)graph;
- (void)encodeWithCoder:(id)coder;
- (void)initializeHapticEngines;
- (void)removeHapticEngines;
- (void)setController:(id)controller;
@end

@implementation GCHapticCapabilities

- (GCHapticCapabilities)initWithIdentifier:(id)identifier hapticEnginesInfo:(id)info hapticCapabilityGraph:(id)graph
{
  identifierCopy = identifier;
  infoCopy = info;
  graphCopy = graph;
  v17.receiver = self;
  v17.super_class = GCHapticCapabilities;
  v11 = [(GCHapticCapabilities *)&v17 init];
  if (v11)
  {
    v12 = [identifierCopy copyWithZone:0];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    array = [MEMORY[0x1E695DEC8] array];
    hapticEngines = v11->_hapticEngines;
    v11->_hapticEngines = array;

    objc_storeStrong(&v11->_hapticEnginesInfo, info);
    objc_storeStrong(&v11->_capabilityGraph, graph);
  }

  return v11;
}

- (GCHapticCapabilities)init
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(GCHapticCapabilities *)self initWithIdentifier:uUID hapticEnginesInfo:0 hapticCapabilityGraph:0];

  return v4;
}

- (void)initializeHapticEngines
{
  v4 = getGCLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *self = 0;
    *a2 = 0;
    _os_log_error_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_ERROR, "Unable to create CHHapticEngine!", self, 2u);
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

- (void)setController:(id)controller
{
  controllerCopy = controller;
  objc_storeWeak(&self->_controller, controllerCopy);
  [(GCDeviceHaptics *)self->_deviceHaptics setController:controllerCopy];
}

- (GCHapticCapabilities)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = GCHapticCapabilities;
  v5 = [(GCHapticCapabilities *)&v27 init];
  if (v5)
  {
    v6 = GCIPCObjectIdentifier_Classes();
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = MEMORY[0x1E695DFD8];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"hapticEnginesInfo"];
    hapticEnginesInfo = v5->_hapticEnginesInfo;
    v5->_hapticEnginesInfo = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v14 setWithObjects:{v15, v16, v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"capabilityGraphDict"];
    v20 = [[GCHapticCapabilityGraph alloc] initWithJSONDictionaryRepresentation:v19];
    capabilityGraph = v5->_capabilityGraph;
    v5->_capabilityGraph = v20;

    v22 = [[GCDeviceHaptics alloc] initWithCapabilityGraph:v5->_capabilityGraph];
    deviceHaptics = v5->_deviceHaptics;
    v5->_deviceHaptics = v22;

    array = [MEMORY[0x1E695DEC8] array];
    hapticEngines = v5->_hapticEngines;
    v5->_hapticEngines = array;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  capabilityGraph = self->_capabilityGraph;
  coderCopy = coder;
  jsonDictionaryRepresentation = [(GCHapticCapabilityGraph *)capabilityGraph jsonDictionaryRepresentation];
  [coderCopy encodeObject:jsonDictionaryRepresentation forKey:@"capabilityGraphDict"];

  [coderCopy encodeObject:self->_hapticEnginesInfo forKey:@"hapticEnginesInfo"];
  identifier = [(GCHapticCapabilities *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];
}

@end