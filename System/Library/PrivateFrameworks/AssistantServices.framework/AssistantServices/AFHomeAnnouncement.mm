@interface AFHomeAnnouncement
+ (id)newWithBuilder:(id)builder;
- (AFHomeAnnouncement)initWithBuilder:(id)builder;
- (AFHomeAnnouncement)initWithCoder:(id)coder;
- (AFHomeAnnouncement)initWithDictionaryRepresentation:(id)representation;
- (AFHomeAnnouncement)initWithIdentifier:(id)identifier startedHostTime:(unint64_t)time finishedHostTime:(unint64_t)hostTime startedDate:(id)date finishedDate:(id)finishedDate;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFHomeAnnouncement

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  identifier = self->_identifier;
  if (identifier)
  {
    [v3 setObject:identifier forKey:@"identifier"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_startedHostTime];
  [v4 setObject:v6 forKey:@"startedHostTime"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_finishedHostTime];
  [v4 setObject:v7 forKey:@"finishedHostTime"];

  startedDate = self->_startedDate;
  if (startedDate)
  {
    [v4 setObject:startedDate forKey:@"startedDate"];
  }

  finishedDate = self->_finishedDate;
  if (finishedDate)
  {
    [v4 setObject:finishedDate forKey:@"finishedDate"];
  }

  v10 = [v4 copy];

  return v10;
}

- (AFHomeAnnouncement)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = representationCopy;
  if (representationCopy)
  {
    v6 = [representationCopy objectForKey:@"identifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v9 = [v5 objectForKey:@"startedHostTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    unsignedLongLongValue = [v10 unsignedLongLongValue];
    v12 = [v5 objectForKey:@"finishedHostTime"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    unsignedLongLongValue2 = [v13 unsignedLongLongValue];
    v15 = [v5 objectForKey:@"startedDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = [v5 objectForKey:@"finishedDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    self = [(AFHomeAnnouncement *)self initWithIdentifier:v7 startedHostTime:unsignedLongLongValue finishedHostTime:unsignedLongLongValue2 startedDate:v16 finishedDate:v18];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"AFHomeAnnouncement::identifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_startedHostTime];
  [coderCopy encodeObject:v5 forKey:@"AFHomeAnnouncement::startedHostTime"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_finishedHostTime];
  [coderCopy encodeObject:v6 forKey:@"AFHomeAnnouncement::finishedHostTime"];

  [coderCopy encodeObject:self->_startedDate forKey:@"AFHomeAnnouncement::startedDate"];
  [coderCopy encodeObject:self->_finishedDate forKey:@"AFHomeAnnouncement::finishedDate"];
}

- (AFHomeAnnouncement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAnnouncement::identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAnnouncement::startedHostTime"];
  unsignedLongLongValue = [v6 unsignedLongLongValue];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAnnouncement::finishedHostTime"];
  unsignedLongLongValue2 = [v8 unsignedLongLongValue];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAnnouncement::startedDate"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAnnouncement::finishedDate"];

  v12 = [(AFHomeAnnouncement *)self initWithIdentifier:v5 startedHostTime:unsignedLongLongValue finishedHostTime:unsignedLongLongValue2 startedDate:v10 finishedDate:v11];
  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      startedHostTime = self->_startedHostTime;
      if (startedHostTime == [(AFHomeAnnouncement *)v5 startedHostTime]&& (finishedHostTime = self->_finishedHostTime, finishedHostTime == [(AFHomeAnnouncement *)v5 finishedHostTime]))
      {
        identifier = [(AFHomeAnnouncement *)v5 identifier];
        identifier = self->_identifier;
        if (identifier == identifier || [(NSString *)identifier isEqual:identifier])
        {
          startedDate = [(AFHomeAnnouncement *)v5 startedDate];
          startedDate = self->_startedDate;
          if (startedDate == startedDate || [(NSDate *)startedDate isEqual:startedDate])
          {
            finishedDate = [(AFHomeAnnouncement *)v5 finishedDate];
            finishedDate = self->_finishedDate;
            v14 = finishedDate == finishedDate || [(NSDate *)finishedDate isEqual:finishedDate];
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_startedHostTime];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_finishedHostTime];
  v7 = [v6 hash];
  v8 = v5 ^ v7 ^ [(NSDate *)self->_startedDate hash];
  v9 = [(NSDate *)self->_finishedDate hash];

  return v8 ^ v9;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFHomeAnnouncement;
  v5 = [(AFHomeAnnouncement *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {identifier = %@, startedHostTime = %llu, finishedHostTime = %llu, startedDate = %@, finishedDate = %@}", v5, self->_identifier, self->_startedHostTime, self->_finishedHostTime, self->_startedDate, self->_finishedDate];

  return v6;
}

- (AFHomeAnnouncement)initWithIdentifier:(id)identifier startedHostTime:(unint64_t)time finishedHostTime:(unint64_t)hostTime startedDate:(id)date finishedDate:(id)finishedDate
{
  identifierCopy = identifier;
  dateCopy = date;
  finishedDateCopy = finishedDate;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __99__AFHomeAnnouncement_initWithIdentifier_startedHostTime_finishedHostTime_startedDate_finishedDate___block_invoke;
  v20[3] = &unk_1E7346B80;
  timeCopy = time;
  hostTimeCopy = hostTime;
  v21 = identifierCopy;
  v22 = dateCopy;
  v23 = finishedDateCopy;
  v15 = finishedDateCopy;
  v16 = dateCopy;
  v17 = identifierCopy;
  v18 = [(AFHomeAnnouncement *)self initWithBuilder:v20];

  return v18;
}

void __99__AFHomeAnnouncement_initWithIdentifier_startedHostTime_finishedHostTime_startedDate_finishedDate___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setIdentifier:v3];
  [v4 setStartedHostTime:a1[7]];
  [v4 setFinishedHostTime:a1[8]];
  [v4 setStartedDate:a1[5]];
  [v4 setFinishedDate:a1[6]];
}

- (AFHomeAnnouncement)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v18.receiver = self;
  v18.super_class = AFHomeAnnouncement;
  v5 = [(AFHomeAnnouncement *)&v18 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFHomeAnnouncementMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFHomeAnnouncementMutation *)v7 isDirty])
    {
      getIdentifier = [(_AFHomeAnnouncementMutation *)v7 getIdentifier];
      v9 = [getIdentifier copy];
      identifier = v6->_identifier;
      v6->_identifier = v9;

      v6->_startedHostTime = [(_AFHomeAnnouncementMutation *)v7 getStartedHostTime];
      v6->_finishedHostTime = [(_AFHomeAnnouncementMutation *)v7 getFinishedHostTime];
      getStartedDate = [(_AFHomeAnnouncementMutation *)v7 getStartedDate];
      v12 = [getStartedDate copy];
      startedDate = v6->_startedDate;
      v6->_startedDate = v12;

      getFinishedDate = [(_AFHomeAnnouncementMutation *)v7 getFinishedDate];
      v15 = [getFinishedDate copy];
      finishedDate = v6->_finishedDate;
      v6->_finishedDate = v15;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFHomeAnnouncementMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFHomeAnnouncementMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFHomeAnnouncement);
      getIdentifier = [(_AFHomeAnnouncementMutation *)v5 getIdentifier];
      v8 = [getIdentifier copy];
      identifier = v6->_identifier;
      v6->_identifier = v8;

      v6->_startedHostTime = [(_AFHomeAnnouncementMutation *)v5 getStartedHostTime];
      v6->_finishedHostTime = [(_AFHomeAnnouncementMutation *)v5 getFinishedHostTime];
      getStartedDate = [(_AFHomeAnnouncementMutation *)v5 getStartedDate];
      v11 = [getStartedDate copy];
      startedDate = v6->_startedDate;
      v6->_startedDate = v11;

      getFinishedDate = [(_AFHomeAnnouncementMutation *)v5 getFinishedDate];
      v14 = [getFinishedDate copy];
      finishedDate = v6->_finishedDate;
      v6->_finishedDate = v14;
    }

    else
    {
      v6 = [(AFHomeAnnouncement *)self copy];
    }
  }

  else
  {
    v6 = [(AFHomeAnnouncement *)self copy];
  }

  return v6;
}

@end