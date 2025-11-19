@interface _INPBListShortcutsIntent
- (BOOL)isEqual:(id)a3;
- (_INPBListShortcutsIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsOriginDevice:(id)a3;
- (unint64_t)hash;
- (void)addAppTitle:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAppTitles:(id)a3;
- (void)setOriginDevice:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBListShortcutsIntent

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_appTitles count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"appTitle"];
  }

  v11 = [(_INPBListShortcutsIntent *)self intentMetadata];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"intentMetadata"];

  if ([(_INPBListShortcutsIntent *)self hasOriginDevice])
  {
    v13 = [(_INPBListShortcutsIntent *)self originDevice];
    if ((v13 - 1) >= 7)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v13];
    }

    else
    {
      v14 = *(&off_1E7287540 + (v13 - 1));
    }

    [v3 setObject:v14 forKeyedSubscript:@"originDevice"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBListShortcutsIntent *)self appTitles];
  v6 = [v4 appTitles];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBListShortcutsIntent *)self appTitles];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBListShortcutsIntent *)self appTitles];
    v10 = [v4 appTitles];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBListShortcutsIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(_INPBListShortcutsIntent *)self intentMetadata];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBListShortcutsIntent *)self intentMetadata];
    v15 = [v4 intentMetadata];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v19 = [(_INPBListShortcutsIntent *)self hasOriginDevice];
  if (v19 == [v4 hasOriginDevice])
  {
    if (!-[_INPBListShortcutsIntent hasOriginDevice](self, "hasOriginDevice") || ![v4 hasOriginDevice] || (originDevice = self->_originDevice, originDevice == objc_msgSend(v4, "originDevice")))
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBListShortcutsIntent allocWithZone:](_INPBListShortcutsIntent init];
  v6 = [(NSArray *)self->_appTitles copyWithZone:a3];
  [(_INPBListShortcutsIntent *)v5 setAppTitles:v6];

  v7 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBListShortcutsIntent *)v5 setIntentMetadata:v7];

  if ([(_INPBListShortcutsIntent *)self hasOriginDevice])
  {
    [(_INPBListShortcutsIntent *)v5 setOriginDevice:[(_INPBListShortcutsIntent *)self originDevice]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBListShortcutsIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBListShortcutsIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBListShortcutsIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v11 = [(_INPBListShortcutsIntent *)self intentMetadata];

  if (v11)
  {
    v12 = [(_INPBListShortcutsIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBListShortcutsIntent *)self hasOriginDevice])
  {
    originDevice = self->_originDevice;
    PBDataWriterWriteInt32Field();
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (int)StringAsOriginDevice:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"PHONE"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"PAD"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"WATCH"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"HOME_POD"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CARPLAY"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"APPLE_TV"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"MAC"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setOriginDevice:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_originDevice = a3;
  }
}

- (void)addAppTitle:(id)a3
{
  v4 = a3;
  appTitles = self->_appTitles;
  v8 = v4;
  if (!appTitles)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_appTitles;
    self->_appTitles = v6;

    v4 = v8;
    appTitles = self->_appTitles;
  }

  [(NSArray *)appTitles addObject:v4];
}

- (void)setAppTitles:(id)a3
{
  v4 = [a3 mutableCopy];
  appTitles = self->_appTitles;
  self->_appTitles = v4;

  MEMORY[0x1EEE66BB8](v4, appTitles);
}

@end