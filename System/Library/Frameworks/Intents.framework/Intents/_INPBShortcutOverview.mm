@interface _INPBShortcutOverview
- (BOOL)isEqual:(id)equal;
- (_INPBShortcutOverview)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSteps:(id)steps;
- (void)encodeWithCoder:(id)coder;
- (void)setSteps:(id)steps;
- (void)writeTo:(id)to;
@end

@implementation _INPBShortcutOverview

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  descriptiveText = [(_INPBShortcutOverview *)self descriptiveText];
  dictionaryRepresentation = [descriptiveText dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"descriptiveText"];

  icon = [(_INPBShortcutOverview *)self icon];
  dictionaryRepresentation2 = [icon dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"icon"];

  name = [(_INPBShortcutOverview *)self name];
  dictionaryRepresentation3 = [name dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"name"];

  if ([(NSArray *)self->_steps count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = self->_steps;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation4 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation4];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    [dictionary setObject:array forKeyedSubscript:@"steps"];
  }

  voiceCommand = [(_INPBShortcutOverview *)self voiceCommand];
  dictionaryRepresentation5 = [voiceCommand dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"voiceCommand"];

  v19 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(_INPBDataString *)self->_descriptiveText hash];
  v4 = [(_INPBImageValue *)self->_icon hash]^ v3;
  v5 = [(_INPBDataString *)self->_name hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_steps hash];
  return v6 ^ [(_INPBDataString *)self->_voiceCommand hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  descriptiveText = [(_INPBShortcutOverview *)self descriptiveText];
  descriptiveText2 = [equalCopy descriptiveText];
  if ((descriptiveText != 0) == (descriptiveText2 == 0))
  {
    goto LABEL_26;
  }

  descriptiveText3 = [(_INPBShortcutOverview *)self descriptiveText];
  if (descriptiveText3)
  {
    v8 = descriptiveText3;
    descriptiveText4 = [(_INPBShortcutOverview *)self descriptiveText];
    descriptiveText5 = [equalCopy descriptiveText];
    v11 = [descriptiveText4 isEqual:descriptiveText5];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  descriptiveText = [(_INPBShortcutOverview *)self icon];
  descriptiveText2 = [equalCopy icon];
  if ((descriptiveText != 0) == (descriptiveText2 == 0))
  {
    goto LABEL_26;
  }

  icon = [(_INPBShortcutOverview *)self icon];
  if (icon)
  {
    v13 = icon;
    icon2 = [(_INPBShortcutOverview *)self icon];
    icon3 = [equalCopy icon];
    v16 = [icon2 isEqual:icon3];

    if (!v16)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  descriptiveText = [(_INPBShortcutOverview *)self name];
  descriptiveText2 = [equalCopy name];
  if ((descriptiveText != 0) == (descriptiveText2 == 0))
  {
    goto LABEL_26;
  }

  name = [(_INPBShortcutOverview *)self name];
  if (name)
  {
    v18 = name;
    name2 = [(_INPBShortcutOverview *)self name];
    name3 = [equalCopy name];
    v21 = [name2 isEqual:name3];

    if (!v21)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  descriptiveText = [(_INPBShortcutOverview *)self steps];
  descriptiveText2 = [equalCopy steps];
  if ((descriptiveText != 0) == (descriptiveText2 == 0))
  {
    goto LABEL_26;
  }

  steps = [(_INPBShortcutOverview *)self steps];
  if (steps)
  {
    v23 = steps;
    steps2 = [(_INPBShortcutOverview *)self steps];
    steps3 = [equalCopy steps];
    v26 = [steps2 isEqual:steps3];

    if (!v26)
    {
      goto LABEL_27;
    }
  }

  else
  {
  }

  descriptiveText = [(_INPBShortcutOverview *)self voiceCommand];
  descriptiveText2 = [equalCopy voiceCommand];
  if ((descriptiveText != 0) != (descriptiveText2 == 0))
  {
    voiceCommand = [(_INPBShortcutOverview *)self voiceCommand];
    if (!voiceCommand)
    {

LABEL_30:
      v32 = 1;
      goto LABEL_28;
    }

    v28 = voiceCommand;
    voiceCommand2 = [(_INPBShortcutOverview *)self voiceCommand];
    voiceCommand3 = [equalCopy voiceCommand];
    v31 = [voiceCommand2 isEqual:voiceCommand3];

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
  v5 = [+[_INPBShortcutOverview allocWithZone:](_INPBShortcutOverview init];
  v6 = [(_INPBDataString *)self->_descriptiveText copyWithZone:zone];
  [(_INPBShortcutOverview *)v5 setDescriptiveText:v6];

  v7 = [(_INPBImageValue *)self->_icon copyWithZone:zone];
  [(_INPBShortcutOverview *)v5 setIcon:v7];

  v8 = [(_INPBDataString *)self->_name copyWithZone:zone];
  [(_INPBShortcutOverview *)v5 setName:v8];

  v9 = [(NSArray *)self->_steps copyWithZone:zone];
  [(_INPBShortcutOverview *)v5 setSteps:v9];

  v10 = [(_INPBDataString *)self->_voiceCommand copyWithZone:zone];
  [(_INPBShortcutOverview *)v5 setVoiceCommand:v10];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBShortcutOverview *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBShortcutOverview)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBShortcutOverview *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  descriptiveText = [(_INPBShortcutOverview *)self descriptiveText];

  if (descriptiveText)
  {
    descriptiveText2 = [(_INPBShortcutOverview *)self descriptiveText];
    PBDataWriterWriteSubmessage();
  }

  icon = [(_INPBShortcutOverview *)self icon];

  if (icon)
  {
    icon2 = [(_INPBShortcutOverview *)self icon];
    PBDataWriterWriteSubmessage();
  }

  name = [(_INPBShortcutOverview *)self name];

  if (name)
  {
    name2 = [(_INPBShortcutOverview *)self name];
    PBDataWriterWriteSubmessage();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_steps;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      v15 = 0;
      do
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v20 + 1) + 8 * v15);
        PBDataWriterWriteSubmessage();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  voiceCommand = [(_INPBShortcutOverview *)self voiceCommand];

  if (voiceCommand)
  {
    voiceCommand2 = [(_INPBShortcutOverview *)self voiceCommand];
    PBDataWriterWriteSubmessage();
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)addSteps:(id)steps
{
  stepsCopy = steps;
  steps = self->_steps;
  v8 = stepsCopy;
  if (!steps)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_steps;
    self->_steps = array;

    stepsCopy = v8;
    steps = self->_steps;
  }

  [(NSArray *)steps addObject:stepsCopy];
}

- (void)setSteps:(id)steps
{
  v4 = [steps mutableCopy];
  steps = self->_steps;
  self->_steps = v4;

  MEMORY[0x1EEE66BB8](v4, steps);
}

@end