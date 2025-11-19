@interface _INPBWorkoutCustomization
- (BOOL)isEqual:(id)a3;
- (_INPBWorkoutCustomization)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
- (void)setEnvironment:(id)a3;
- (void)setFocus:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBWorkoutCustomization

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_environment)
  {
    v4 = [(_INPBWorkoutCustomization *)self environment];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"environment"];
  }

  if (self->_focus)
  {
    v6 = [(_INPBWorkoutCustomization *)self focus];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"focus"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_INPBWorkoutCustomization *)self environment];
  v6 = [v4 environment];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_INPBWorkoutCustomization *)self environment];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBWorkoutCustomization *)self environment];
    v10 = [v4 environment];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_INPBWorkoutCustomization *)self focus];
  v6 = [v4 focus];
  if ((v5 != 0) != (v6 == 0))
  {
    v12 = [(_INPBWorkoutCustomization *)self focus];
    if (!v12)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = v12;
    v14 = [(_INPBWorkoutCustomization *)self focus];
    v15 = [v4 focus];
    v16 = [v14 isEqual:v15];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBWorkoutCustomization allocWithZone:](_INPBWorkoutCustomization init];
  v6 = [(NSString *)self->_environment copyWithZone:a3];
  [(_INPBWorkoutCustomization *)v5 setEnvironment:v6];

  v7 = [(NSString *)self->_focus copyWithZone:a3];
  [(_INPBWorkoutCustomization *)v5 setFocus:v7];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBWorkoutCustomization *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBWorkoutCustomization)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBWorkoutCustomization *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(_INPBWorkoutCustomization *)self environment];

  if (v4)
  {
    environment = self->_environment;
    PBDataWriterWriteStringField();
  }

  v6 = [(_INPBWorkoutCustomization *)self focus];

  if (v6)
  {
    focus = self->_focus;
    PBDataWriterWriteStringField();
  }
}

- (void)setFocus:(id)a3
{
  v4 = [a3 copy];
  focus = self->_focus;
  self->_focus = v4;

  MEMORY[0x1EEE66BB8](v4, focus);
}

- (void)setEnvironment:(id)a3
{
  v4 = [a3 copy];
  environment = self->_environment;
  self->_environment = v4;

  MEMORY[0x1EEE66BB8](v4, environment);
}

@end