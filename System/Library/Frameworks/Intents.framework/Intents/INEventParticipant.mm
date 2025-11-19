@interface INEventParticipant
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INEventParticipant)initWithCoder:(id)a3;
- (INEventParticipant)initWithPerson:(id)a3 status:(int64_t)a4 isUser:(id)a5 isEventOrganizer:(id)a6;
- (id)_dictionaryRepresentation;
- (id)_intents_cacheableObjects;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)_intents_updateContainerWithCache:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INEventParticipant

- (id)_dictionaryRepresentation
{
  v14[4] = *MEMORY[0x1E69E9840];
  v13[0] = @"person";
  person = self->_person;
  v4 = person;
  if (!person)
  {
    v4 = [MEMORY[0x1E695DFB0] null];
  }

  v14[0] = v4;
  v13[1] = @"status";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_status];
  v14[1] = v5;
  v13[2] = @"isUser";
  isUser = self->_isUser;
  v7 = isUser;
  if (!isUser)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v14[2] = v7;
  v13[3] = @"isEventOrganizer";
  isEventOrganizer = self->_isEventOrganizer;
  v9 = isEventOrganizer;
  if (!isEventOrganizer)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v14[3] = v9;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INEventParticipant;
  v6 = [(INEventParticipant *)&v11 description];
  v7 = [(INEventParticipant *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_person];
  [v7 if_setObjectIfNonNil:v8 forKey:@"person"];

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
  [v7 if_setObjectIfNonNil:v11 forKey:@"status"];

  v12 = [v6 encodeObject:self->_isUser];
  [v7 if_setObjectIfNonNil:v12 forKey:@"isUser"];

  v13 = [v6 encodeObject:self->_isEventOrganizer];

  [v7 if_setObjectIfNonNil:v13 forKey:@"isEventOrganizer"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  person = self->_person;
  v5 = a3;
  [v5 encodeObject:person forKey:@"person"];
  [v5 encodeInteger:self->_status forKey:@"status"];
  [v5 encodeObject:self->_isUser forKey:@"isUser"];
  [v5 encodeObject:self->_isEventOrganizer forKey:@"isEventOrganizer"];
}

- (INEventParticipant)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"person"];
  v6 = [v4 decodeIntegerForKey:@"status"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isUser"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isEventOrganizer"];

  v9 = [(INEventParticipant *)self initWithPerson:v5 status:v6 isUser:v7 isEventOrganizer:v8];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (INEventParticipant)initWithPerson:(id)a3 status:(int64_t)a4 isUser:(id)a5 isEventOrganizer:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v21.receiver = self;
  v21.super_class = INEventParticipant;
  v13 = [(INEventParticipant *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    person = v13->_person;
    v13->_person = v14;

    v13->_status = a4;
    v16 = [v11 copy];
    isUser = v13->_isUser;
    v13->_isUser = v16;

    v18 = [v12 copy];
    isEventOrganizer = v13->_isEventOrganizer;
    v13->_isEventOrganizer = v18;
  }

  return v13;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"person"];
    v11 = [v7 decodeObjectOfClass:v9 from:v10];

    v12 = [v8 objectForKeyedSubscript:@"status"];
    v13 = INEventParticipantStatusWithString(v12);

    v14 = [v8 objectForKeyedSubscript:@"isUser"];
    v15 = [v8 objectForKeyedSubscript:@"isEventOrganizer"];
    v16 = [[a1 alloc] initWithPerson:v11 status:v13 isUser:v14 isEventOrganizer:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_intents_updateContainerWithCache:(id)a3
{
  v4 = a3;
  v5 = [(INEventParticipant *)self person];
  [v5 _intents_updateContainerWithCache:v4];
}

- (id)_intents_cacheableObjects
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = [(INEventParticipant *)self person];
  v5 = [v4 _intents_cacheableObjects];
  [v3 unionSet:v5];

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