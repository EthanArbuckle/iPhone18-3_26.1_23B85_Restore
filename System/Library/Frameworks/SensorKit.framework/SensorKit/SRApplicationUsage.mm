@interface SRApplicationUsage
+ (SRApplicationUsage)applicationUsageWithBundleIdentifier:(id)identifier reportApplicationIdentifier:(id)applicationIdentifier totalUsageTime:(double)time relativeStartTime:(double)startTime textInputSessions:(id)sessions supplementalCategories:(id)categories;
- (BOOL)isEqual:(id)equal;
- (NSArray)supplementalCategories;
- (NSArray)textInputSessions;
- (NSString)description;
- (SRApplicationUsage)initWithCoder:(id)coder;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SRApplicationUsage

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeObject:-[SRApplicationUsage bundleIdentifier](self forKey:{"bundleIdentifier"), @"bundleIdentifier"}];
  [(SRApplicationUsage *)self usageTime];
  [coder encodeDouble:@"totalUsageTime" forKey:?];
  [(SRApplicationUsage *)self relativeStartTime];
  [coder encodeDouble:@"relativeStartTime" forKey:?];
  [coder encodeObject:-[SRApplicationUsage reportApplicationIdentifier](self forKey:{"reportApplicationIdentifier"), @"reportApplicationIdentifier"}];
  [coder encodeObject:-[SRApplicationUsage mutableTextInputSessions](self forKey:{"mutableTextInputSessions"), @"textInputSessions"}];
  supplementalCategories = [(SRApplicationUsage *)self supplementalCategories];

  [coder encodeObject:supplementalCategories forKey:@"supplementalCategories"];
}

- (SRApplicationUsage)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  [coder decodeDoubleForKey:@"totalUsageTime"];
  v8 = v7;
  [coder decodeDoubleForKey:@"relativeStartTime"];
  v10 = v9;
  v11 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"reportApplicationIdentifier"];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v12 forKey:{"setWithObjects:", v13, objc_opt_class(), 0), @"textInputSessions", "mutableCopy"}];
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [objc_msgSend(coder decodeObjectOfClasses:objc_msgSend(v15 forKey:{"setWithObjects:", v16, v17, objc_opt_class(), 0), @"supplementalCategories", "mutableCopy"}];

  v19 = objc_alloc_init(SRApplicationUsage);
  [(SRApplicationUsage *)v19 setBundleIdentifier:v6];
  [(SRApplicationUsage *)v19 setUsageTime:v8];
  [(SRApplicationUsage *)v19 setRelativeStartTime:v10];
  [(SRApplicationUsage *)v19 setMutableTextInputSessions:v14];

  [(SRApplicationUsage *)v19 setMutableSupplementalCategories:v18];
  if (v11)
  {
    v20 = v11;
  }

  else
  {
    v20 = &stru_1F48BB5C0;
  }

  [(SRApplicationUsage *)v19 setReportApplicationIdentifier:v20];
  return v19;
}

+ (SRApplicationUsage)applicationUsageWithBundleIdentifier:(id)identifier reportApplicationIdentifier:(id)applicationIdentifier totalUsageTime:(double)time relativeStartTime:(double)startTime textInputSessions:(id)sessions supplementalCategories:(id)categories
{
  v14 = objc_alloc_init(SRApplicationUsage);
  [(SRApplicationUsage *)v14 setBundleIdentifier:identifier];
  [(SRApplicationUsage *)v14 setUsageTime:time];
  [(SRApplicationUsage *)v14 setRelativeStartTime:startTime];
  [(SRApplicationUsage *)v14 setReportApplicationIdentifier:applicationIdentifier];
  -[SRApplicationUsage setMutableTextInputSessions:](v14, "setMutableTextInputSessions:", [MEMORY[0x1E695DF70] arrayWithArray:sessions]);
  -[SRApplicationUsage setMutableSupplementalCategories:](v14, "setMutableSupplementalCategories:", [MEMORY[0x1E695DF70] arrayWithArray:categories]);

  return v14;
}

- (NSArray)textInputSessions
{
  if (![(SRApplicationUsage *)self mutableTextInputSessions])
  {
    return MEMORY[0x1E695E0F0];
  }

  v3 = MEMORY[0x1E695DEC8];
  mutableTextInputSessions = [(SRApplicationUsage *)self mutableTextInputSessions];

  return [v3 arrayWithArray:mutableTextInputSessions];
}

- (NSArray)supplementalCategories
{
  if (![(SRApplicationUsage *)self mutableSupplementalCategories])
  {
    return MEMORY[0x1E695E0F0];
  }

  v3 = MEMORY[0x1E695DEC8];
  mutableSupplementalCategories = [(SRApplicationUsage *)self mutableSupplementalCategories];

  return [v3 arrayWithArray:mutableSupplementalCategories];
}

- (void)dealloc
{
  [(SRApplicationUsage *)self setBundleIdentifier:0];
  [(SRApplicationUsage *)self setReportApplicationIdentifier:0];

  v3.receiver = self;
  v3.super_class = SRApplicationUsage;
  [(SRApplicationUsage *)&v3 dealloc];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  bundleIdentifier = [(SRApplicationUsage *)self bundleIdentifier];
  [(SRApplicationUsage *)self usageTime];
  v8 = v7;
  [(SRApplicationUsage *)self relativeStartTime];
  return [v3 stringWithFormat:@"%@ {bundleIdentifier: %@, totalUsageTime: %f, relativeStartTime:%f reportApplicationIdentifier: %@, textInputSessions: %@, supplementalCategories: %@}", v5, bundleIdentifier, v8, v9, -[SRApplicationUsage reportApplicationIdentifier](self, "reportApplicationIdentifier"), -[SRApplicationUsage textInputSessions](self, "textInputSessions"), -[SRApplicationUsage supplementalCategories](self, "supplementalCategories")];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v19) = 1;
    return v19;
  }

  v23 = v10;
  v24 = v9;
  v25 = v6;
  v26 = v5;
  v27 = v4;
  v28 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_16:
    LOBYTE(v19) = 0;
    return v19;
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    goto LABEL_6;
  }

  if ([equal bundleIdentifier])
  {
    bundleIdentifier = self->_bundleIdentifier;
LABEL_6:
    v14 = !-[NSString isEqualToString:](bundleIdentifier, "isEqualToString:", [equal bundleIdentifier]);
    goto LABEL_7;
  }

  v14 = 0;
LABEL_7:
  reportApplicationIdentifier = self->_reportApplicationIdentifier;
  if (!reportApplicationIdentifier)
  {
    if (![equal reportApplicationIdentifier])
    {
      v16 = 0;
      goto LABEL_11;
    }

    reportApplicationIdentifier = self->_reportApplicationIdentifier;
  }

  v16 = !-[NSString isEqualToString:](reportApplicationIdentifier, "isEqualToString:", [equal reportApplicationIdentifier]);
LABEL_11:
  if ((v14 | v16))
  {
    goto LABEL_16;
  }

  usageTime = self->_usageTime;
  [equal usageTime];
  if (usageTime != v18)
  {
    goto LABEL_16;
  }

  v19 = -[NSArray isEqualToArray:](-[SRApplicationUsage textInputSessions](self, "textInputSessions"), "isEqualToArray:", [equal textInputSessions]);
  if (v19)
  {
    v19 = -[NSArray isEqualToArray:](-[SRApplicationUsage supplementalCategories](self, "supplementalCategories"), "isEqualToArray:", [equal supplementalCategories]);
    if (v19)
    {
      relativeStartTime = self->_relativeStartTime;
      [equal relativeStartTime];
      LOBYTE(v19) = relativeStartTime == v21;
    }
  }

  return v19;
}

- (id)sr_dictionaryRepresentation
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](-[SRApplicationUsage textInputSessions](self, "textInputSessions"), "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  textInputSessions = [(SRApplicationUsage *)self textInputSessions];
  v5 = [(NSArray *)textInputSessions countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(textInputSessions);
        }

        [v3 addObject:{objc_msgSend(*(*(&v28 + 1) + 8 * i), "sr_dictionaryRepresentation")}];
      }

      v6 = [(NSArray *)textInputSessions countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v6);
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](-[SRApplicationUsage supplementalCategories](self, "supplementalCategories"), "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  selfCopy = self;
  supplementalCategories = [(SRApplicationUsage *)self supplementalCategories];
  v11 = [(NSArray *)supplementalCategories countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(supplementalCategories);
        }

        v15 = *(*(&v24 + 1) + 8 * j);
        if ([v15 conformsToProtocol:&unk_1F48CC170])
        {
          [v9 addObject:{objc_msgSend(v15, "sr_dictionaryRepresentation")}];
        }

        else
        {
          v16 = SRLogUsageReport;
          if (os_log_type_enabled(SRLogUsageReport, OS_LOG_TYPE_FAULT))
          {
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            *buf = 138543362;
            v35 = v18;
            _os_log_fault_impl(&dword_1C914D000, v16, OS_LOG_TYPE_FAULT, "Unable to output usage of class %{public}@", buf, 0xCu);
            v16 = SRLogUsageReport;
          }

          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138477827;
            v35 = v15;
            _os_log_error_impl(&dword_1C914D000, v16, OS_LOG_TYPE_ERROR, "%{private}@ does not conform to <SRSampleExporting> protocol. Excluding from dictionary output", buf, 0xCu);
          }
        }
      }

      v12 = [(NSArray *)supplementalCategories countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v12);
  }

  v32[0] = @"totalUsageTime";
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:selfCopy->_usageTime];
  bundleIdentifier = &stru_1F48BB5C0;
  if (selfCopy->_bundleIdentifier)
  {
    bundleIdentifier = selfCopy->_bundleIdentifier;
  }

  v33[0] = v19;
  v33[1] = bundleIdentifier;
  v32[1] = @"bundleIdentifier";
  v32[2] = @"reportApplicationIdentifier";
  v33[2] = selfCopy->_reportApplicationIdentifier;
  v33[3] = v3;
  v32[3] = @"textInputSessions";
  v32[4] = @"supplementalCategories";
  v33[4] = v9;
  v32[5] = @"relativeStartTime";
  v33[5] = [MEMORY[0x1E696AD98] numberWithDouble:selfCopy->_relativeStartTime];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:6];
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

@end