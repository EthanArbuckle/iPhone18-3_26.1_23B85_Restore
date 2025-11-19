@interface _INPBOpenSettingIntent
- (BOOL)isEqual:(id)a3;
- (_INPBOpenSettingIntent)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBOpenSettingIntent

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBOpenSettingIntent *)self intentMetadata];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"intentMetadata"];

  v6 = [(_INPBOpenSettingIntent *)self searchQuery];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"searchQuery"];

  v8 = [(_INPBOpenSettingIntent *)self settingMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"settingMetadata"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBIntentMetadata *)self->_intentMetadata hash];
  v4 = [(_INPBDataString *)self->_searchQuery hash]^ v3;
  return v4 ^ [(_INPBSettingMetadata *)self->_settingMetadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBOpenSettingIntent *)self intentMetadata];
  v6 = [v4 intentMetadata];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBOpenSettingIntent *)self intentMetadata];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBOpenSettingIntent *)self intentMetadata];
    v10 = [v4 intentMetadata];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBOpenSettingIntent *)self searchQuery];
  v6 = [v4 searchQuery];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBOpenSettingIntent *)self searchQuery];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBOpenSettingIntent *)self searchQuery];
    v15 = [v4 searchQuery];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBOpenSettingIntent *)self settingMetadata];
  v6 = [v4 settingMetadata];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBOpenSettingIntent *)self settingMetadata];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBOpenSettingIntent *)self settingMetadata];
    v20 = [v4 settingMetadata];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBOpenSettingIntent allocWithZone:](_INPBOpenSettingIntent init];
  v6 = [(_INPBIntentMetadata *)self->_intentMetadata copyWithZone:a3];
  [(_INPBOpenSettingIntent *)v5 setIntentMetadata:v6];

  v7 = [(_INPBDataString *)self->_searchQuery copyWithZone:a3];
  [(_INPBOpenSettingIntent *)v5 setSearchQuery:v7];

  v8 = [(_INPBSettingMetadata *)self->_settingMetadata copyWithZone:a3];
  [(_INPBOpenSettingIntent *)v5 setSettingMetadata:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBOpenSettingIntent *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBOpenSettingIntent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBOpenSettingIntent *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBOpenSettingIntent *)self intentMetadata];

  if (v4)
  {
    v5 = [(_INPBOpenSettingIntent *)self intentMetadata];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBOpenSettingIntent *)self searchQuery];

  if (v6)
  {
    v7 = [(_INPBOpenSettingIntent *)self searchQuery];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBOpenSettingIntent *)self settingMetadata];

  v9 = v11;
  if (v8)
  {
    v10 = [(_INPBOpenSettingIntent *)self settingMetadata];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

@end