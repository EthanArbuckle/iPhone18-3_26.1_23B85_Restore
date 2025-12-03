@interface _INPBListShortcutsIntent
- (BOOL)isEqual:(id)equal;
- (_INPBListShortcutsIntent)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsOriginDevice:(id)device;
- (unint64_t)hash;
- (void)addAppTitle:(id)title;
- (void)encodeWithCoder:(id)coder;
- (void)setAppTitles:(id)titles;
- (void)setOriginDevice:(int)device;
- (void)writeTo:(id)to;
@end

@implementation _INPBListShortcutsIntent

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_appTitles count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_appTitles;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"appTitle"];
  }

  intentMetadata = [(_INPBListShortcutsIntent *)self intentMetadata];
  dictionaryRepresentation2 = [intentMetadata dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBListShortcutsIntent *)self hasOriginDevice])
  {
    originDevice = [(_INPBListShortcutsIntent *)self originDevice];
    if ((originDevice - 1) >= 7)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", originDevice];
    }

    else
    {
      v14 = *(&off_1E7287540 + (originDevice - 1));
    }

    [dictionary setObject:v14 forKeyedSubscript:@"originDevice"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_appTitles hash];
  v4 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  if ([(_INPBListShortcutsIntent *)self hasOriginDevice])
  {
    v5 = 2654435761 * self->_originDevice;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  appTitles = [(_INPBListShortcutsIntent *)self appTitles];
  appTitles2 = [equalCopy appTitles];
  if ((appTitles != 0) == (appTitles2 == 0))
  {
    goto LABEL_11;
  }

  appTitles3 = [(_INPBListShortcutsIntent *)self appTitles];
  if (appTitles3)
  {
    v8 = appTitles3;
    appTitles4 = [(_INPBListShortcutsIntent *)self appTitles];
    appTitles5 = [equalCopy appTitles];
    v11 = [appTitles4 isEqual:appTitles5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  appTitles = [(_INPBListShortcutsIntent *)self intentMetadata];
  appTitles2 = [equalCopy intentMetadata];
  if ((appTitles != 0) == (appTitles2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  intentMetadata = [(_INPBListShortcutsIntent *)self intentMetadata];
  if (intentMetadata)
  {
    v13 = intentMetadata;
    intentMetadata2 = [(_INPBListShortcutsIntent *)self intentMetadata];
    intentMetadata3 = [equalCopy intentMetadata];
    v16 = [intentMetadata2 isEqual:intentMetadata3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  hasOriginDevice = [(_INPBListShortcutsIntent *)self hasOriginDevice];
  if (hasOriginDevice == [equalCopy hasOriginDevice])
  {
    if (!-[_INPBListShortcutsIntent hasOriginDevice](self, "hasOriginDevice") || ![equalCopy hasOriginDevice] || (originDevice = self->_originDevice, originDevice == objc_msgSend(equalCopy, "originDevice")))
    {
      v17 = 1;
      goto LABEL_13;
    }
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBListShortcutsIntent allocWithZone:](_INPBListShortcutsIntent init];
  v6 = [(NSArray *)self->_appTitles copyWithZone:zone];
  [(_INPBListShortcutsIntent *)v5 setAppTitles:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:zone];
  [(_INPBListShortcutsIntent *)v5 setIntentMetadata:v7];

  if ([(_INPBListShortcutsIntent *)self hasOriginDevice])
  {
    [(_INPBListShortcutsIntent *)v5 setOriginDevice:[(_INPBListShortcutsIntent *)self originDevice]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBListShortcutsIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBListShortcutsIntent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBListShortcutsIntent *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_appTitles;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  intentMetadata = [(_INPBListShortcutsIntent *)self intentMetadata];

  if (intentMetadata)
  {
    intentMetadata2 = [(_INPBListShortcutsIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBListShortcutsIntent *)self hasOriginDevice])
  {
    originDevice = self->_originDevice;
    PBDataWriterWriteInt32Field();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (int)StringAsOriginDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy isEqualToString:@"PHONE"])
  {
    v4 = 1;
  }

  else if ([deviceCopy isEqualToString:@"PAD"])
  {
    v4 = 2;
  }

  else if ([deviceCopy isEqualToString:@"WATCH"])
  {
    v4 = 3;
  }

  else if ([deviceCopy isEqualToString:@"HOME_POD"])
  {
    v4 = 4;
  }

  else if ([deviceCopy isEqualToString:@"CARPLAY"])
  {
    v4 = 5;
  }

  else if ([deviceCopy isEqualToString:@"APPLE_TV"])
  {
    v4 = 6;
  }

  else if ([deviceCopy isEqualToString:@"MAC"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setOriginDevice:(int)device
{
  has = self->_has;
  if (device == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_originDevice = device;
  }
}

- (void)addAppTitle:(id)title
{
  titleCopy = title;
  appTitles = self->_appTitles;
  v8 = titleCopy;
  if (!appTitles)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_appTitles;
    self->_appTitles = array;

    titleCopy = v8;
    appTitles = self->_appTitles;
  }

  [(NSArray *)appTitles addObject:titleCopy];
}

- (void)setAppTitles:(id)titles
{
  v4 = [titles mutableCopy];
  appTitles = self->_appTitles;
  self->_appTitles = v4;

  MEMORY[0x1EEE66BB8](v4, appTitles);
}

@end