@interface HKNanoSyncPairedDevicesSnapshot
- (BOOL)isEqual:(id)equal;
- (HKNanoSyncPairedDevicesSnapshot)initWithCoder:(id)coder;
- (HKNanoSyncPairedDevicesSnapshot)initWithPairedDeviceInfos:(id)infos;
- (id)description;
- (id)deviceInfoForSourceBundleIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKNanoSyncPairedDevicesSnapshot

- (HKNanoSyncPairedDevicesSnapshot)initWithPairedDeviceInfos:(id)infos
{
  v23 = *MEMORY[0x1E69E9840];
  infosCopy = infos;
  if (!infosCopy)
  {
    [(HKNanoSyncPairedDevicesSnapshot *)a2 initWithPairedDeviceInfos:?];
  }

  v21.receiver = self;
  v21.super_class = HKNanoSyncPairedDevicesSnapshot;
  v6 = [(HKNanoSyncPairedDevicesSnapshot *)&v21 init];
  if (v6)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = infosCopy;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          if ([v12 isActive])
          {
            objc_storeStrong(&v6->_activeDeviceInfo, v12);
            goto LABEL_14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:

    v13 = [MEMORY[0x1E695DFD8] setWithArray:v7];
    allDeviceInfos = v6->_allDeviceInfos;
    v6->_allDeviceInfos = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)deviceInfoForSourceBundleIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [(HKNanoSyncPairedDevicesSnapshot *)a2 deviceInfoForSourceBundleIdentifier:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_allDeviceInfos;
  v7 = [(NSSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        sourceBundleIdentifier = [v10 sourceBundleIdentifier];
        if (sourceBundleIdentifier && ([identifierCopy isEqualToString:sourceBundleIdentifier] & 1) != 0)
        {
          v7 = v10;

          goto LABEL_14;
        }
      }

      v7 = [(NSSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    activeDeviceInfo = self->_activeDeviceInfo;
    v7 = v5[1];
    v8 = (activeDeviceInfo == v7 || v7 && [(HKNanoSyncPairedDeviceInfo *)activeDeviceInfo isEqual:?]) && [(NSSet *)self->_allDeviceInfos isEqualToSet:v5[2]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"<%@:%p devices={", objc_opt_class(), self];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_allDeviceInfos;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (*(*(&v14 + 1) + 8 * i) == self->_activeDeviceInfo)
        {
          v9 = " (active)";
        }

        else
        {
          v9 = "";
        }

        [v3 appendFormat:@"\n\t%@%s, ", *(*(&v14 + 1) + 8 * i), v9, v14];
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = [(NSSet *)self->_allDeviceInfos count];
  v11 = "\n";
  if (!v10)
  {
    v11 = "";
  }

  [v3 appendFormat:@"%s}>", v11];
  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (HKNanoSyncPairedDevicesSnapshot)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"allDevices"];

  if (v8)
  {
    self = [(HKNanoSyncPairedDevicesSnapshot *)self initWithPairedDeviceInfos:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  allDeviceInfos = self->_allDeviceInfos;
  coderCopy = coder;
  allObjects = [(NSSet *)allDeviceInfos allObjects];
  [coderCopy encodeObject:allObjects forKey:@"allDevices"];
}

- (void)initWithPairedDeviceInfos:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKNanoSyncPairedDevicesSnapshot.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"deviceInfos != nil"}];
}

- (void)deviceInfoForSourceBundleIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"HKNanoSyncPairedDevicesSnapshot.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"sourceBundleIdentifier != nil"}];
}

@end