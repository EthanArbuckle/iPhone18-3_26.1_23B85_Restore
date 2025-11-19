@interface _INPBWellnessValue
- (BOOL)isEqual:(id)a3;
- (_INPBWellnessValue)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBWellnessValue

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(_INPBWellnessValue *)self pbDoubleValue];
  v5 = [v4 dictionaryRepresentation];
  [v3 setObject:v5 forKeyedSubscript:@"doubleValue"];

  v6 = [(_INPBWellnessValue *)self ordinalValue];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"ordinalValue"];

  v8 = [(_INPBWellnessValue *)self valueMetadata];
  v9 = [v8 dictionaryRepresentation];
  [v3 setObject:v9 forKeyedSubscript:@"valueMetadata"];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(_INPBDouble *)self->_pbDoubleValue hash];
  v4 = [(_INPBInteger *)self->_ordinalValue hash]^ v3;
  return v4 ^ [(_INPBValueMetadata *)self->_valueMetadata hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(_INPBWellnessValue *)self pbDoubleValue];
  v6 = [v4 pbDoubleValue];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(_INPBWellnessValue *)self pbDoubleValue];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBWellnessValue *)self pbDoubleValue];
    v10 = [v4 pbDoubleValue];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBWellnessValue *)self ordinalValue];
  v6 = [v4 ordinalValue];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(_INPBWellnessValue *)self ordinalValue];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBWellnessValue *)self ordinalValue];
    v15 = [v4 ordinalValue];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(_INPBWellnessValue *)self valueMetadata];
  v6 = [v4 valueMetadata];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(_INPBWellnessValue *)self valueMetadata];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(_INPBWellnessValue *)self valueMetadata];
    v20 = [v4 valueMetadata];
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
  v5 = [+[_INPBWellnessValue allocWithZone:](_INPBWellnessValue init];
  v6 = [(_INPBDouble *)self->_pbDoubleValue copyWithZone:a3];
  [(_INPBWellnessValue *)v5 setPbDoubleValue:v6];

  v7 = [(_INPBInteger *)self->_ordinalValue copyWithZone:a3];
  [(_INPBWellnessValue *)v5 setOrdinalValue:v7];

  v8 = [(_INPBValueMetadata *)self->_valueMetadata copyWithZone:a3];
  [(_INPBWellnessValue *)v5 setValueMetadata:v8];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBWellnessValue *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBWellnessValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBWellnessValue *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(_INPBWellnessValue *)self pbDoubleValue];

  if (v4)
  {
    v5 = [(_INPBWellnessValue *)self pbDoubleValue];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(_INPBWellnessValue *)self ordinalValue];

  if (v6)
  {
    v7 = [(_INPBWellnessValue *)self ordinalValue];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(_INPBWellnessValue *)self valueMetadata];

  v9 = v11;
  if (v8)
  {
    v10 = [(_INPBWellnessValue *)self valueMetadata];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

@end