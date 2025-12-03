@interface _INPBAddCallParticipantIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBAddCallParticipantIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addInvites:(id)invites;
- (void)encodeWithCoder:(id)coder;
- (void)setInvites:(id)invites;
- (void)writeTo:(id)to;
@end

@implementation _INPBAddCallParticipantIntentResponse

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_invites count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_invites;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"invites"];
  }

  v11 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    invites = [(_INPBAddCallParticipantIntentResponse *)self invites];
    invites2 = [equalCopy invites];
    v7 = invites2;
    if ((invites != 0) != (invites2 == 0))
    {
      invites3 = [(_INPBAddCallParticipantIntentResponse *)self invites];
      if (!invites3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = invites3;
      invites4 = [(_INPBAddCallParticipantIntentResponse *)self invites];
      invites5 = [equalCopy invites];
      v12 = [invites4 isEqual:invites5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBAddCallParticipantIntentResponse allocWithZone:](_INPBAddCallParticipantIntentResponse init];
  v6 = [(NSArray *)self->_invites copyWithZone:zone];
  [(_INPBAddCallParticipantIntentResponse *)v5 setInvites:v6];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBAddCallParticipantIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBAddCallParticipantIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBAddCallParticipantIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_invites;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)addInvites:(id)invites
{
  invitesCopy = invites;
  invites = self->_invites;
  v8 = invitesCopy;
  if (!invites)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_invites;
    self->_invites = array;

    invitesCopy = v8;
    invites = self->_invites;
  }

  [(NSArray *)invites addObject:invitesCopy];
}

- (void)setInvites:(id)invites
{
  v4 = [invites mutableCopy];
  invites = self->_invites;
  self->_invites = v4;

  MEMORY[0x1EEE66BB8](v4, invites);
}

@end