@interface _INPBFileProperty
- (BOOL)isEqual:(id)a3;
- (_INPBFileProperty)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsName:(id)a3;
- (int)StringAsQualifier:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setHasQualifier:(BOOL)a3;
- (void)setName:(int)a3;
- (void)setQualifier:(int)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBFileProperty

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBFileProperty *)self hasName])
  {
    v4 = [(_INPBFileProperty *)self name];
    if (v4 >= 0xC)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v4];
    }

    else
    {
      v5 = off_1E727FEB8[v4];
    }

    [v3 setObject:v5 forKeyedSubscript:@"name"];
  }

  if ([(_INPBFileProperty *)self hasQualifier])
  {
    v6 = [(_INPBFileProperty *)self qualifier];
    if (v6 >= 5)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v6];
    }

    else
    {
      v7 = off_1E727FF18[v6];
    }

    [v3 setObject:v7 forKeyedSubscript:@"qualifier"];
  }

  v8 = [(_INPBFileProperty *)self value];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"value"];

  return v3;
}

- (unint64_t)hash
{
  if ([(_INPBFileProperty *)self hasName])
  {
    v3 = 2654435761 * self->_name;
  }

  else
  {
    v3 = 0;
  }

  if ([(_INPBFileProperty *)self hasQualifier])
  {
    v4 = 2654435761 * self->_qualifier;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(_INPBFilePropertyValue *)self->_value hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(_INPBFileProperty *)self hasName];
    if (v5 == [v4 hasName])
    {
      if (!-[_INPBFileProperty hasName](self, "hasName") || ![v4 hasName] || (name = self->_name, name == objc_msgSend(v4, "name")))
      {
        v7 = [(_INPBFileProperty *)self hasQualifier];
        if (v7 == [v4 hasQualifier])
        {
          if (!-[_INPBFileProperty hasQualifier](self, "hasQualifier") || ![v4 hasQualifier] || (qualifier = self->_qualifier, qualifier == objc_msgSend(v4, "qualifier")))
          {
            v9 = [(_INPBFileProperty *)self value];
            v10 = [v4 value];
            v11 = v10;
            if ((v9 != 0) != (v10 == 0))
            {
              v12 = [(_INPBFileProperty *)self value];
              if (!v12)
              {

LABEL_18:
                v17 = 1;
                goto LABEL_16;
              }

              v13 = v12;
              v14 = [(_INPBFileProperty *)self value];
              v15 = [v4 value];
              v16 = [v14 isEqual:v15];

              if (v16)
              {
                goto LABEL_18;
              }
            }

            else
            {
            }
          }
        }
      }
    }
  }

  v17 = 0;
LABEL_16:

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBFileProperty allocWithZone:](_INPBFileProperty init];
  if ([(_INPBFileProperty *)self hasName])
  {
    [(_INPBFileProperty *)v5 setName:[(_INPBFileProperty *)self name]];
  }

  if ([(_INPBFileProperty *)self hasQualifier])
  {
    [(_INPBFileProperty *)v5 setQualifier:[(_INPBFileProperty *)self qualifier]];
  }

  v6 = [(_INPBFilePropertyValue *)self->_value copyWithZone:a3];
  [(_INPBFileProperty *)v5 setValue:v6];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBFileProperty *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBFileProperty)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBFileProperty *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v9 = a3;
  if ([(_INPBFileProperty *)self hasName])
  {
    name = self->_name;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBFileProperty *)self hasQualifier])
  {
    qualifier = self->_qualifier;
    PBDataWriterWriteInt32Field();
  }

  v6 = [(_INPBFileProperty *)self value];

  v7 = v9;
  if (v6)
  {
    v8 = [(_INPBFileProperty *)self value];
    PBDataWriterWriteSubmessage();

    v7 = v9;
  }
}

- (int)StringAsQualifier:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"EQUAL"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"AT_LEAST"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AT_MOST"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MIN"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MAX"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasQualifier:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setQualifier:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFD;
  }

  else
  {
    *&self->_has = has | 2;
    self->_qualifier = a3;
  }
}

- (int)StringAsName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SIZE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"CONTENTS"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"AUTHOR"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CREATION_TIME"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"ACCESSED_TIME"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"MODIFIED_TIME"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"PRINTED_TIME"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SENDER"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"RECIPIENT"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"PAGE_COUNT"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"TAG"])
  {
    v4 = 10;
  }

  else if ([v3 isEqualToString:@"FILE_TYPE"])
  {
    v4 = 11;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setName:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFE;
  }

  else
  {
    *&self->_has = has | 1;
    self->_name = a3;
  }
}

@end