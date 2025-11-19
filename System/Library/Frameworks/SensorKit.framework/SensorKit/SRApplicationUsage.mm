@interface SRApplicationUsage
+ (SRApplicationUsage)applicationUsageWithBundleIdentifier:(id)a3 reportApplicationIdentifier:(id)a4 totalUsageTime:(double)a5 relativeStartTime:(double)a6 textInputSessions:(id)a7 supplementalCategories:(id)a8;
- (BOOL)isEqual:(id)a3;
- (NSArray)supplementalCategories;
- (NSArray)textInputSessions;
- (NSString)description;
- (SRApplicationUsage)initWithCoder:(id)a3;
- (id)sr_dictionaryRepresentation;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SRApplicationUsage

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeObject:-[SRApplicationUsage bundleIdentifier](self forKey:{"bundleIdentifier"), @"bundleIdentifier"}];
  [(SRApplicationUsage *)self usageTime];
  [a3 encodeDouble:@"totalUsageTime" forKey:?];
  [(SRApplicationUsage *)self relativeStartTime];
  [a3 encodeDouble:@"relativeStartTime" forKey:?];
  [a3 encodeObject:-[SRApplicationUsage reportApplicationIdentifier](self forKey:{"reportApplicationIdentifier"), @"reportApplicationIdentifier"}];
  [a3 encodeObject:-[SRApplicationUsage mutableTextInputSessions](self forKey:{"mutableTextInputSessions"), @"textInputSessions"}];
  v6 = [(SRApplicationUsage *)self supplementalCategories];

  [a3 encodeObject:v6 forKey:@"supplementalCategories"];
}

- (SRApplicationUsage)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  [a3 decodeDoubleForKey:@"totalUsageTime"];
  v8 = v7;
  [a3 decodeDoubleForKey:@"relativeStartTime"];
  v10 = v9;
  v11 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"reportApplicationIdentifier"];
  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v12 forKey:{"setWithObjects:", v13, objc_opt_class(), 0), @"textInputSessions", "mutableCopy"}];
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [objc_msgSend(a3 decodeObjectOfClasses:objc_msgSend(v15 forKey:{"setWithObjects:", v16, v17, objc_opt_class(), 0), @"supplementalCategories", "mutableCopy"}];

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

+ (SRApplicationUsage)applicationUsageWithBundleIdentifier:(id)a3 reportApplicationIdentifier:(id)a4 totalUsageTime:(double)a5 relativeStartTime:(double)a6 textInputSessions:(id)a7 supplementalCategories:(id)a8
{
  v14 = objc_alloc_init(SRApplicationUsage);
  [(SRApplicationUsage *)v14 setBundleIdentifier:a3];
  [(SRApplicationUsage *)v14 setUsageTime:a5];
  [(SRApplicationUsage *)v14 setRelativeStartTime:a6];
  [(SRApplicationUsage *)v14 setReportApplicationIdentifier:a4];
  -[SRApplicationUsage setMutableTextInputSessions:](v14, "setMutableTextInputSessions:", [MEMORY[0x1E695DF70] arrayWithArray:a7]);
  -[SRApplicationUsage setMutableSupplementalCategories:](v14, "setMutableSupplementalCategories:", [MEMORY[0x1E695DF70] arrayWithArray:a8]);

  return v14;
}

- (NSArray)textInputSessions
{
  if (![(SRApplicationUsage *)self mutableTextInputSessions])
  {
    return MEMORY[0x1E695E0F0];
  }

  v3 = MEMORY[0x1E695DEC8];
  v4 = [(SRApplicationUsage *)self mutableTextInputSessions];

  return [v3 arrayWithArray:v4];
}

- (NSArray)supplementalCategories
{
  if (![(SRApplicationUsage *)self mutableSupplementalCategories])
  {
    return MEMORY[0x1E695E0F0];
  }

  v3 = MEMORY[0x1E695DEC8];
  v4 = [(SRApplicationUsage *)self mutableSupplementalCategories];

  return [v3 arrayWithArray:v4];
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
  v6 = [(SRApplicationUsage *)self bundleIdentifier];
  [(SRApplicationUsage *)self usageTime];
  v8 = v7;
  [(SRApplicationUsage *)self relativeStartTime];
  return [v3 stringWithFormat:@"%@ {bundleIdentifier: %@, totalUsageTime: %f, relativeStartTime:%f reportApplicationIdentifier: %@, textInputSessions: %@, supplementalCategories: %@}", v5, v6, v8, v9, -[SRApplicationUsage reportApplicationIdentifier](self, "reportApplicationIdentifier"), -[SRApplicationUsage textInputSessions](self, "textInputSessions"), -[SRApplicationUsage supplementalCategories](self, "supplementalCategories")];
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
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

  if ([a3 bundleIdentifier])
  {
    bundleIdentifier = self->_bundleIdentifier;
LABEL_6:
    v14 = !-[NSString isEqualToString:](bundleIdentifier, "isEqualToString:", [a3 bundleIdentifier]);
    goto LABEL_7;
  }

  v14 = 0;
LABEL_7:
  reportApplicationIdentifier = self->_reportApplicationIdentifier;
  if (!reportApplicationIdentifier)
  {
    if (![a3 reportApplicationIdentifier])
    {
      v16 = 0;
      goto LABEL_11;
    }

    reportApplicationIdentifier = self->_reportApplicationIdentifier;
  }

  v16 = !-[NSString isEqualToString:](reportApplicationIdentifier, "isEqualToString:", [a3 reportApplicationIdentifier]);
LABEL_11:
  if ((v14 | v16))
  {
    goto LABEL_16;
  }

  usageTime = self->_usageTime;
  [a3 usageTime];
  if (usageTime != v18)
  {
    goto LABEL_16;
  }

  v19 = -[NSArray isEqualToArray:](-[SRApplicationUsage textInputSessions](self, "textInputSessions"), "isEqualToArray:", [a3 textInputSessions]);
  if (v19)
  {
    v19 = -[NSArray isEqualToArray:](-[SRApplicationUsage supplementalCategories](self, "supplementalCategories"), "isEqualToArray:", [a3 supplementalCategories]);
    if (v19)
    {
      relativeStartTime = self->_relativeStartTime;
      [a3 relativeStartTime];
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
  v4 = [(SRApplicationUsage *)self textInputSessions];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v28 objects:v37 count:16];
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
          objc_enumerationMutation(v4);
        }

        [v3 addObject:{objc_msgSend(*(*(&v28 + 1) + 8 * i), "sr_dictionaryRepresentation")}];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v6);
  }

  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](-[SRApplicationUsage supplementalCategories](self, "supplementalCategories"), "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = self;
  v10 = [(SRApplicationUsage *)self supplementalCategories];
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v36 count:16];
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
          objc_enumerationMutation(v10);
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

      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v12);
  }

  v32[0] = @"totalUsageTime";
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:v23->_usageTime];
  bundleIdentifier = &stru_1F48BB5C0;
  if (v23->_bundleIdentifier)
  {
    bundleIdentifier = v23->_bundleIdentifier;
  }

  v33[0] = v19;
  v33[1] = bundleIdentifier;
  v32[1] = @"bundleIdentifier";
  v32[2] = @"reportApplicationIdentifier";
  v33[2] = v23->_reportApplicationIdentifier;
  v33[3] = v3;
  v32[3] = @"textInputSessions";
  v32[4] = @"supplementalCategories";
  v33[4] = v9;
  v32[5] = @"relativeStartTime";
  v33[5] = [MEMORY[0x1E696AD98] numberWithDouble:v23->_relativeStartTime];
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:6];
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

@end