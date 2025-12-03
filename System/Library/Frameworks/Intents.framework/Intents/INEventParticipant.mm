@interface INEventParticipant
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INEventParticipant)initWithCoder:(id)coder;
- (INEventParticipant)initWithPerson:(id)person status:(int64_t)status isUser:(id)user isEventOrganizer:(id)organizer;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)cache;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INEventParticipant

- (id)_dictionaryRepresentation
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"person";
  person = self->_person;
  null = person;
  if (!person)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = null;
  v13[1] = @"status";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_status];
  v14[1] = v5;
  v13[2] = @"isUser";
  isUser = self->_isUser;
  null2 = isUser;
  if (!isUser)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = null2;
  v13[3] = @"isEventOrganizer";
  isEventOrganizer = self->_isEventOrganizer;
  null3 = isEventOrganizer;
  if (!isEventOrganizer)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v14[3] = null3;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:4];
  if (isEventOrganizer)
  {
    if (isUser)
    {
      goto LABEL_9;
    }
  }

  else
  {

    if (isUser)
    {
      goto LABEL_9;
    }
  }

LABEL_9:
  if (!person)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INEventParticipant;
  v6 = [(INEventParticipant *)&v11 description];
  _dictionaryRepresentation = [(INEventParticipant *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_person];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"person"];

  v9 = self->_status - 1;
  if (v9 > 6)
  {
    v10 = @"unknown";
  }

  else
  {
    v10 = off_1E7286890[v9];
  }

  v11 = v10;
  [dictionary if_setObjectIfNonNil:v11 forKey:@"status"];

  v12 = [encoderCopy encodeObject:self->_isUser];
  [dictionary if_setObjectIfNonNil:v12 forKey:@"isUser"];

  v13 = [encoderCopy encodeObject:self->_isEventOrganizer];

  [dictionary if_setObjectIfNonNil:v13 forKey:@"isEventOrganizer"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  person = self->_person;
  coderCopy = coder;
  [coderCopy encodeObject:person forKey:@"person"];
  [coderCopy encodeInteger:self->_status forKey:@"status"];
  [coderCopy encodeObject:self->_isUser forKey:@"isUser"];
  [coderCopy encodeObject:self->_isEventOrganizer forKey:@"isEventOrganizer"];
}

- (INEventParticipant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"person"];
  v6 = [coderCopy decodeIntegerForKey:@"status"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isUser"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isEventOrganizer"];

  v9 = [(INEventParticipant *)self initWithPerson:v5 status:v6 isUser:v7 isEventOrganizer:v8];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      person = self->_person;
      v9 = 0;
      if ((person == v5->_person || [(INPerson *)person isEqual:?]) && self->_status == v5->_status)
      {
        isUser = self->_isUser;
        if (isUser == v5->_isUser || [(NSNumber *)isUser isEqual:?])
        {
          isEventOrganizer = self->_isEventOrganizer;
          if (isEventOrganizer == v5->_isEventOrganizer || [(NSNumber *)isEventOrganizer isEqual:?])
          {
            v9 = 1;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(INPerson *)self->_person hash];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:self->_status];
  v5 = [v4 hash];
  v6 = v3 ^ [(NSNumber *)self->_isUser hash];
  v7 = v6 ^ [(NSNumber *)self->_isEventOrganizer hash];

  return v5 ^ v7;
}

- (INEventParticipant)initWithPerson:(id)person status:(int64_t)status isUser:(id)user isEventOrganizer:(id)organizer
{
  personCopy = person;
  userCopy = user;
  organizerCopy = organizer;
  v21.receiver = self;
  v21.super_class = INEventParticipant;
  v13 = [(INEventParticipant *)&v21 init];
  if (v13)
  {
    v14 = [personCopy copy];
    person = v13->_person;
    v13->_person = v14;

    v13->_status = status;
    v16 = [userCopy copy];
    isUser = v13->_isUser;
    v13->_isUser = v16;

    v18 = [organizerCopy copy];
    isEventOrganizer = v13->_isEventOrganizer;
    v13->_isEventOrganizer = v18;
  }

  return v13;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"person"];
    v11 = [decoderCopy decodeObjectOfClass:v9 from:v10];

    v12 = [fromCopy objectForKeyedSubscript:@"status"];
    v13 = INEventParticipantStatusWithString(v12);

    v14 = [fromCopy objectForKeyedSubscript:@"isUser"];
    v15 = [fromCopy objectForKeyedSubscript:@"isEventOrganizer"];
    v16 = [[self alloc] initWithPerson:v11 status:v13 isUser:v14 isEventOrganizer:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_intents_updateContainerWithCache:(id)cache
{
  cacheCopy = cache;
  person = [(INEventParticipant *)self person];
  [person _intents_updateContainerWithCache:cacheCopy];
}

- (id)_intents_cacheableObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  person = [(INEventParticipant *)self person];
  _intents_cacheableObjects = [person _intents_cacheableObjects];
  [v3 unionSet:_intents_cacheableObjects];

  if ([v3 count])
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

@end