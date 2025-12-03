@interface _INPBWorkoutCustomization
- (BOOL)isEqual:(id)equal;
- (_INPBWorkoutCustomization)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
- (void)setEnvironment:(id)environment;
- (void)setFocus:(id)focus;
- (void)writeTo:(id)to;
@end

@implementation _INPBWorkoutCustomization

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_environment)
  {
    environment = [(_INPBWorkoutCustomization *)self environment];
    v5 = [environment copy];
    [dictionary setObject:v5 forKeyedSubscript:@"environment"];
  }

  if (self->_focus)
  {
    focus = [(_INPBWorkoutCustomization *)self focus];
    v7 = [focus copy];
    [dictionary setObject:v7 forKeyedSubscript:@"focus"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  environment = [(_INPBWorkoutCustomization *)self environment];
  environment2 = [equalCopy environment];
  if ((environment != 0) == (environment2 == 0))
  {
    goto LABEL_11;
  }

  environment3 = [(_INPBWorkoutCustomization *)self environment];
  if (environment3)
  {
    v8 = environment3;
    environment4 = [(_INPBWorkoutCustomization *)self environment];
    environment5 = [equalCopy environment];
    v11 = [environment4 isEqual:environment5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  environment = [(_INPBWorkoutCustomization *)self focus];
  environment2 = [equalCopy focus];
  if ((environment != 0) != (environment2 == 0))
  {
    focus = [(_INPBWorkoutCustomization *)self focus];
    if (!focus)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = focus;
    focus2 = [(_INPBWorkoutCustomization *)self focus];
    focus3 = [equalCopy focus];
    v16 = [focus2 isEqual:focus3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBWorkoutCustomization allocWithZone:](_INPBWorkoutCustomization init];
  v6 = [(NSString *)self->_environment copyWithZone:zone];
  [(_INPBWorkoutCustomization *)v5 setEnvironment:v6];

  v7 = [(NSString *)self->_focus copyWithZone:zone];
  [(_INPBWorkoutCustomization *)v5 setFocus:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBWorkoutCustomization *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBWorkoutCustomization)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBWorkoutCustomization *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  environment = [(_INPBWorkoutCustomization *)self environment];

  if (environment)
  {
    environment = self->_environment;
    PBDataWriterWriteStringField();
  }

  focus = [(_INPBWorkoutCustomization *)self focus];

  if (focus)
  {
    focus = self->_focus;
    PBDataWriterWriteStringField();
  }
}

- (void)setFocus:(id)focus
{
  v4 = [focus copy];
  focus = self->_focus;
  self->_focus = v4;

  MEMORY[0x1EEE66BB8](v4, focus);
}

- (void)setEnvironment:(id)environment
{
  v4 = [environment copy];
  environment = self->_environment;
  self->_environment = v4;

  MEMORY[0x1EEE66BB8](v4, environment);
}

@end