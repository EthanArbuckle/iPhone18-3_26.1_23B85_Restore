@interface _INPBAppBundleInfo
- (BOOL)isEqual:(id)a3;
- (_INPBAppBundleInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addIntentSupport:(id)a3;
- (void)addLocalizedProjects:(id)a3;
- (void)addSupportedPlatforms:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setIntentSupports:(id)a3;
- (void)setLocalizedProjects:(id)a3;
- (void)setSupportedPlatforms:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBAppBundleInfo

- (id)dictionaryRepresentation
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBAppBundleInfo *)self appId];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"app_id"];

  v6 = [(_INPBAppBundleInfo *)self buildId];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"build_id"];

  if ([(NSArray *)self->_intentSupports count])
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v9 = self->_intentSupports;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v40;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v40 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v39 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKeyedSubscript:@"intent_support"];
  }

  if ([(NSArray *)self->_localizedProjects count])
  {
    v15 = [MEMORY[0x1E695DF70] array];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v16 = self->_localizedProjects;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v36;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v35 + 1) + 8 * j) dictionaryRepresentation];
          [v15 addObject:v21];
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKeyedSubscript:@"localized_projects"];
  }

  if ([(NSArray *)self->_supportedPlatforms count])
  {
    v22 = [MEMORY[0x1E695DF70] array];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v23 = self->_supportedPlatforms;
    v24 = [(NSArray *)v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v32;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v32 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = [*(*(&v31 + 1) + 8 * k) dictionaryRepresentation];
          [v22 addObject:v28];
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v25);
    }

    [v3 setObject:v22 forKeyedSubscript:@"supported_platforms"];
  }

  v29 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBAppId *)self->_appId hash];
  v4 = [(_INPBBuildId *)self->_buildId hash]^ v3;
  v5 = [(NSArray *)self->_intentSupports hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_localizedProjects hash];
  return v6 ^ [(NSArray *)self->_supportedPlatforms hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  v5 = [(_INPBAppBundleInfo *)self appId];
  v6 = [v4 appId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v7 = [(_INPBAppBundleInfo *)self appId];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBAppBundleInfo *)self appId];
    v10 = [v4 appId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBAppBundleInfo *)self buildId];
  v6 = [v4 buildId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v12 = [(_INPBAppBundleInfo *)self buildId];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBAppBundleInfo *)self buildId];
    v15 = [v4 buildId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBAppBundleInfo *)self intentSupports];
  v6 = [v4 intentSupports];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v17 = [(_INPBAppBundleInfo *)self intentSupports];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBAppBundleInfo *)self intentSupports];
    v20 = [v4 intentSupports];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBAppBundleInfo *)self localizedProjects];
  v6 = [v4 localizedProjects];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_26;
  }

  v22 = [(_INPBAppBundleInfo *)self localizedProjects];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBAppBundleInfo *)self localizedProjects];
    v25 = [v4 localizedProjects];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  v5 = [(_INPBAppBundleInfo *)self supportedPlatforms];
  v6 = [v4 supportedPlatforms];
  if ((v5 != 0) != (v6 == 0))
  {
    v27 = [(_INPBAppBundleInfo *)self supportedPlatforms];
    if (!v27)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = v27;
    v29 = [(_INPBAppBundleInfo *)self supportedPlatforms];
    v30 = [v4 supportedPlatforms];
    v31 = [v29 isEqual:v30];

    if (v31)
    {
      goto LABEL_30;
    }
  }

  else
  {
LABEL_26:
  }

LABEL_27:
  v32 = 0;
LABEL_28:

  return v32;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBAppBundleInfo allocWithZone:](_INPBAppBundleInfo init];
  v6 = [(_INPBAppId *)self->_appId copyWithZone:a3];
  [(_INPBAppBundleInfo *)v5 setAppId:v6];

  v7 = [(_INPBBuildId *)self->_buildId copyWithZone:a3];
  [(_INPBAppBundleInfo *)v5 setBuildId:v7];

  v8 = [(NSArray *)self->_intentSupports copyWithZone:a3];
  [(_INPBAppBundleInfo *)v5 setIntentSupports:v8];

  v9 = [(NSArray *)self->_localizedProjects copyWithZone:a3];
  [(_INPBAppBundleInfo *)v5 setLocalizedProjects:v9];

  v10 = [(NSArray *)self->_supportedPlatforms copyWithZone:a3];
  [(_INPBAppBundleInfo *)v5 setSupportedPlatforms:v10];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBAppBundleInfo *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBAppBundleInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBAppBundleInfo *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBAppBundleInfo *)self appId];

  if (v5)
  {
    v6 = [(_INPBAppBundleInfo *)self appId];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(_INPBAppBundleInfo *)self buildId];

  if (v7)
  {
    v8 = [(_INPBAppBundleInfo *)self buildId];
    PBDataWriterWriteSubmessage();
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = self->_intentSupports;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      v13 = 0;
      do
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v36 + 1) + 8 * v13);
        PBDataWriterWriteSubmessage();
        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v11);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v15 = self->_localizedProjects;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v33;
    do
    {
      v19 = 0;
      do
      {
        if (*v33 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v32 + 1) + 8 * v19);
        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v17);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = self->_supportedPlatforms;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v28 objects:v40 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v29;
    do
    {
      v25 = 0;
      do
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v28 + 1) + 8 * v25);
        PBDataWriterWriteSubmessage();
        ++v25;
      }

      while (v23 != v25);
      v23 = [(NSArray *)v21 countByEnumeratingWithState:&v28 objects:v40 count:16];
    }

    while (v23);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)addSupportedPlatforms:(id)a3
{
  v4 = a3;
  supportedPlatforms = self->_supportedPlatforms;
  v8 = v4;
  if (!supportedPlatforms)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_supportedPlatforms;
    self->_supportedPlatforms = v6;

    v4 = v8;
    supportedPlatforms = self->_supportedPlatforms;
  }

  [(NSArray *)supportedPlatforms addObject:v4];
}

- (void)setSupportedPlatforms:(id)a3
{
  v4 = [a3 mutableCopy];
  supportedPlatforms = self->_supportedPlatforms;
  self->_supportedPlatforms = v4;

  MEMORY[0x1EEE66BB8](v4, supportedPlatforms);
}

- (void)addLocalizedProjects:(id)a3
{
  v4 = a3;
  localizedProjects = self->_localizedProjects;
  v8 = v4;
  if (!localizedProjects)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_localizedProjects;
    self->_localizedProjects = v6;

    v4 = v8;
    localizedProjects = self->_localizedProjects;
  }

  [(NSArray *)localizedProjects addObject:v4];
}

- (void)setLocalizedProjects:(id)a3
{
  v4 = [a3 mutableCopy];
  localizedProjects = self->_localizedProjects;
  self->_localizedProjects = v4;

  MEMORY[0x1EEE66BB8](v4, localizedProjects);
}

- (void)addIntentSupport:(id)a3
{
  v4 = a3;
  intentSupports = self->_intentSupports;
  v8 = v4;
  if (!intentSupports)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentSupports;
    self->_intentSupports = v6;

    v4 = v8;
    intentSupports = self->_intentSupports;
  }

  [(NSArray *)intentSupports addObject:v4];
}

- (void)setIntentSupports:(id)a3
{
  v4 = [a3 mutableCopy];
  intentSupports = self->_intentSupports;
  self->_intentSupports = v4;

  MEMORY[0x1EEE66BB8](v4, intentSupports);
}

@end