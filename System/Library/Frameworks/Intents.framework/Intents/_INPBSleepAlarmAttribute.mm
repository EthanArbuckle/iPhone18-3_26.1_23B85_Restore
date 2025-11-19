@interface _INPBSleepAlarmAttribute
- (BOOL)isEqual:(id)a3;
- (_INPBSleepAlarmAttribute)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBSleepAlarmAttribute

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBSleepAlarmAttribute *)self bedtime];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"bedtime"];

  if ([(_INPBSleepAlarmAttribute *)self hasOverride])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSleepAlarmAttribute override](self, "override")}];
    [v3 setObject:v6 forKeyedSubscript:@"override"];
  }

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBDateTime *)self->_bedtime hash];
  if ([(_INPBSleepAlarmAttribute *)self hasOverride])
  {
    v4 = 2654435761 * self->_override;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = [(_INPBSleepAlarmAttribute *)self bedtime];
  v6 = [v4 bedtime];
  v7 = v6;
  if ((v5 != 0) != (v6 == 0))
  {
    v8 = [(_INPBSleepAlarmAttribute *)self bedtime];
    if (v8)
    {
      v9 = v8;
      v10 = [(_INPBSleepAlarmAttribute *)self bedtime];
      v11 = [v4 bedtime];
      v12 = [v10 isEqual:v11];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v13 = [(_INPBSleepAlarmAttribute *)self hasOverride];
    if (v13 == [v4 hasOverride])
    {
      if (!-[_INPBSleepAlarmAttribute hasOverride](self, "hasOverride") || ![v4 hasOverride] || (override = self->_override, override == objc_msgSend(v4, "override")))
      {
        v14 = 1;
        goto LABEL_10;
      }
    }
  }

  else
  {
  }

LABEL_9:
  v14 = 0;
LABEL_10:

  return v14;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBSleepAlarmAttribute allocWithZone:](_INPBSleepAlarmAttribute init];
  v6 = [(_INPBDateTime *)self->_bedtime copyWithZone:a3];
  [(_INPBSleepAlarmAttribute *)v5 setBedtime:v6];

  if ([(_INPBSleepAlarmAttribute *)self hasOverride])
  {
    [(_INPBSleepAlarmAttribute *)v5 setOverride:[(_INPBSleepAlarmAttribute *)self override]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBSleepAlarmAttribute *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBSleepAlarmAttribute)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBSleepAlarmAttribute *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  v4 = [(_INPBSleepAlarmAttribute *)self bedtime];

  if (v4)
  {
    v5 = [(_INPBSleepAlarmAttribute *)self bedtime];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSleepAlarmAttribute *)self hasOverride])
  {
    override = self->_override;
    PBDataWriterWriteBOOLField();
  }
}

@end