@interface _INPBAppBundleInfo
- (BOOL)isEqual:(id)equal;
- (_INPBAppBundleInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addIntentSupport:(id)support;
- (void)addLocalizedProjects:(id)projects;
- (void)addSupportedPlatforms:(id)platforms;
- (void)encodeWithCoder:(id)coder;
- (void)setIntentSupports:(id)supports;
- (void)setLocalizedProjects:(id)projects;
- (void)setSupportedPlatforms:(id)platforms;
- (void)writeTo:(id)to;
@end

@implementation _INPBAppBundleInfo

- (id)dictionaryRepresentation
{
  v46 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  appId = [(_INPBAppBundleInfo *)self appId];
  dictionaryRepresentation = [appId dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"app_id"];

  buildId = [(_INPBAppBundleInfo *)self buildId];
  dictionaryRepresentation2 = [buildId dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"build_id"];

  if ([(NSArray *)self->_intentSupports count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation3 = [*(*(&v39 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation3];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"intent_support"];
  }

  if ([(NSArray *)self->_localizedProjects count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation4 = [*(*(&v35 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation4];
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v18);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"localized_projects"];
  }

  if ([(NSArray *)self->_supportedPlatforms count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation5 = [*(*(&v31 + 1) + 8 * k) dictionaryRepresentation];
          [array3 addObject:dictionaryRepresentation5];
        }

        v25 = [(NSArray *)v23 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v25);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"supported_platforms"];
  }

  v29 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBAppId *)self->_appId hash];
  v4 = [(_INPBBuildId *)self->_buildId hash]^ v3;
  v5 = [(NSArray *)self->_intentSupports hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_localizedProjects hash];
  return v6 ^ [(NSArray *)self->_supportedPlatforms hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  appId = [(_INPBAppBundleInfo *)self appId];
  appId2 = [equalCopy appId];
  if ((appId != 0) == (appId2 == 0))
  {
    goto LABEL_26;
  }

  appId3 = [(_INPBAppBundleInfo *)self appId];
  if (appId3)
  {
    v8 = appId3;
    appId4 = [(_INPBAppBundleInfo *)self appId];
    appId5 = [equalCopy appId];
    v11 = [appId4 isEqual:appId5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  appId = [(_INPBAppBundleInfo *)self buildId];
  appId2 = [equalCopy buildId];
  if ((appId != 0) == (appId2 == 0))
  {
    goto LABEL_26;
  }

  buildId = [(_INPBAppBundleInfo *)self buildId];
  if (buildId)
  {
    v13 = buildId;
    buildId2 = [(_INPBAppBundleInfo *)self buildId];
    buildId3 = [equalCopy buildId];
    v16 = [buildId2 isEqual:buildId3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  appId = [(_INPBAppBundleInfo *)self intentSupports];
  appId2 = [equalCopy intentSupports];
  if ((appId != 0) == (appId2 == 0))
  {
    goto LABEL_26;
  }

  intentSupports = [(_INPBAppBundleInfo *)self intentSupports];
  if (intentSupports)
  {
    v18 = intentSupports;
    intentSupports2 = [(_INPBAppBundleInfo *)self intentSupports];
    intentSupports3 = [equalCopy intentSupports];
    v21 = [intentSupports2 isEqual:intentSupports3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  appId = [(_INPBAppBundleInfo *)self localizedProjects];
  appId2 = [equalCopy localizedProjects];
  if ((appId != 0) == (appId2 == 0))
  {
    goto LABEL_26;
  }

  localizedProjects = [(_INPBAppBundleInfo *)self localizedProjects];
  if (localizedProjects)
  {
    v23 = localizedProjects;
    localizedProjects2 = [(_INPBAppBundleInfo *)self localizedProjects];
    localizedProjects3 = [equalCopy localizedProjects];
    v26 = [localizedProjects2 isEqual:localizedProjects3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  appId = [(_INPBAppBundleInfo *)self supportedPlatforms];
  appId2 = [equalCopy supportedPlatforms];
  if ((appId != 0) != (appId2 == 0))
  {
    supportedPlatforms = [(_INPBAppBundleInfo *)self supportedPlatforms];
    if (!supportedPlatforms)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = supportedPlatforms;
    supportedPlatforms2 = [(_INPBAppBundleInfo *)self supportedPlatforms];
    supportedPlatforms3 = [equalCopy supportedPlatforms];
    v31 = [supportedPlatforms2 isEqual:supportedPlatforms3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBAppBundleInfo allocWithZone:](_INPBAppBundleInfo init];
  v6 = [(_INPBAppId *)self->_appId copyWithZone:zone];
  [(_INPBAppBundleInfo *)v5 setAppId:v6];

  v7 = [(_INPBBuildId *)self->_buildId copyWithZone:zone];
  [(_INPBAppBundleInfo *)v5 setBuildId:v7];

  v8 = [(NSArray *)self->_intentSupports copyWithZone:zone];
  [(_INPBAppBundleInfo *)v5 setIntentSupports:v8];

  v9 = [(NSArray *)self->_localizedProjects copyWithZone:zone];
  [(_INPBAppBundleInfo *)v5 setLocalizedProjects:v9];

  v10 = [(NSArray *)self->_supportedPlatforms copyWithZone:zone];
  [(_INPBAppBundleInfo *)v5 setSupportedPlatforms:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBAppBundleInfo *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBAppBundleInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBAppBundleInfo *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v43 = *MEMORY[0x1E69E9840];
  toCopy = to;
  appId = [(_INPBAppBundleInfo *)self appId];

  if (appId)
  {
    appId2 = [(_INPBAppBundleInfo *)self appId];
    PBDataWriterWriteSubmessage();
  }

  buildId = [(_INPBAppBundleInfo *)self buildId];

  if (buildId)
  {
    buildId2 = [(_INPBAppBundleInfo *)self buildId];
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

- (void)addSupportedPlatforms:(id)platforms
{
  platformsCopy = platforms;
  supportedPlatforms = self->_supportedPlatforms;
  v8 = platformsCopy;
  if (!supportedPlatforms)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_supportedPlatforms;
    self->_supportedPlatforms = array;

    platformsCopy = v8;
    supportedPlatforms = self->_supportedPlatforms;
  }

  [(NSArray *)supportedPlatforms addObject:platformsCopy];
}

- (void)setSupportedPlatforms:(id)platforms
{
  v4 = [platforms mutableCopy];
  supportedPlatforms = self->_supportedPlatforms;
  self->_supportedPlatforms = v4;

  MEMORY[0x1EEE66BB8](v4, supportedPlatforms);
}

- (void)addLocalizedProjects:(id)projects
{
  projectsCopy = projects;
  localizedProjects = self->_localizedProjects;
  v8 = projectsCopy;
  if (!localizedProjects)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_localizedProjects;
    self->_localizedProjects = array;

    projectsCopy = v8;
    localizedProjects = self->_localizedProjects;
  }

  [(NSArray *)localizedProjects addObject:projectsCopy];
}

- (void)setLocalizedProjects:(id)projects
{
  v4 = [projects mutableCopy];
  localizedProjects = self->_localizedProjects;
  self->_localizedProjects = v4;

  MEMORY[0x1EEE66BB8](v4, localizedProjects);
}

- (void)addIntentSupport:(id)support
{
  supportCopy = support;
  intentSupports = self->_intentSupports;
  v8 = supportCopy;
  if (!intentSupports)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentSupports;
    self->_intentSupports = array;

    supportCopy = v8;
    intentSupports = self->_intentSupports;
  }

  [(NSArray *)intentSupports addObject:supportCopy];
}

- (void)setIntentSupports:(id)supports
{
  v4 = [supports mutableCopy];
  intentSupports = self->_intentSupports;
  self->_intentSupports = v4;

  MEMORY[0x1EEE66BB8](v4, intentSupports);
}

@end