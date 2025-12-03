@interface _INPBSleepAlarmAttribute
- (BOOL)isEqual:(id)equal;
- (_INPBSleepAlarmAttribute)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)writeTo:(id)to;
@end

@implementation _INPBSleepAlarmAttribute

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  bedtime = [(_INPBSleepAlarmAttribute *)self bedtime];
  dictionaryRepresentation = [bedtime dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"bedtime"];

  if ([(_INPBSleepAlarmAttribute *)self hasOverride])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBSleepAlarmAttribute override](self, "override")}];
    [dictionary setObject:v6 forKeyedSubscript:@"override"];
  }

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  bedtime = [(_INPBSleepAlarmAttribute *)self bedtime];
  bedtime2 = [equalCopy bedtime];
  v7 = bedtime2;
  if ((bedtime != 0) != (bedtime2 == 0))
  {
    bedtime3 = [(_INPBSleepAlarmAttribute *)self bedtime];
    if (bedtime3)
    {
      v9 = bedtime3;
      bedtime4 = [(_INPBSleepAlarmAttribute *)self bedtime];
      bedtime5 = [equalCopy bedtime];
      v12 = [bedtime4 isEqual:bedtime5];

      if (!v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    hasOverride = [(_INPBSleepAlarmAttribute *)self hasOverride];
    if (hasOverride == [equalCopy hasOverride])
    {
      if (!-[_INPBSleepAlarmAttribute hasOverride](self, "hasOverride") || ![equalCopy hasOverride] || (override = self->_override, override == objc_msgSend(equalCopy, "override")))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSleepAlarmAttribute allocWithZone:](_INPBSleepAlarmAttribute init];
  v6 = [(_INPBDateTime *)self->_bedtime copyWithZone:zone];
  [(_INPBSleepAlarmAttribute *)v5 setBedtime:v6];

  if ([(_INPBSleepAlarmAttribute *)self hasOverride])
  {
    [(_INPBSleepAlarmAttribute *)v5 setOverride:[(_INPBSleepAlarmAttribute *)self override]];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSleepAlarmAttribute *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSleepAlarmAttribute)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSleepAlarmAttribute *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  bedtime = [(_INPBSleepAlarmAttribute *)self bedtime];

  if (bedtime)
  {
    bedtime2 = [(_INPBSleepAlarmAttribute *)self bedtime];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBSleepAlarmAttribute *)self hasOverride])
  {
    override = self->_override;
    PBDataWriterWriteBOOLField();
  }
}

@end