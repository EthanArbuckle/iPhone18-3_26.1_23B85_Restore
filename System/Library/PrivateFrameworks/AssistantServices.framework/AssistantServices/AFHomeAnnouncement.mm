@interface AFHomeAnnouncement
+ (id)newWithBuilder:(id)a3;
- (AFHomeAnnouncement)initWithBuilder:(id)a3;
- (AFHomeAnnouncement)initWithCoder:(id)a3;
- (AFHomeAnnouncement)initWithDictionaryRepresentation:(id)a3;
- (AFHomeAnnouncement)initWithIdentifier:(id)a3 startedHostTime:(unint64_t)a4 finishedHostTime:(unint64_t)a5 startedDate:(id)a6 finishedDate:(id)a7;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (AFHomeAnnouncement)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKey:@"identifier"];
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

    v11 = [v10 unsignedLongLongValue];
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

    v14 = [v13 unsignedLongLongValue];
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

    self = [(AFHomeAnnouncement *)self initWithIdentifier:v7 startedHostTime:v11 finishedHostTime:v14 startedDate:v16 finishedDate:v18];
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v7 = a3;
  [v7 encodeObject:identifier forKey:@"AFHomeAnnouncement::identifier"];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_startedHostTime];
  [v7 encodeObject:v5 forKey:@"AFHomeAnnouncement::startedHostTime"];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_finishedHostTime];
  [v7 encodeObject:v6 forKey:@"AFHomeAnnouncement::finishedHostTime"];

  [v7 encodeObject:self->_startedDate forKey:@"AFHomeAnnouncement::startedDate"];
  [v7 encodeObject:self->_finishedDate forKey:@"AFHomeAnnouncement::finishedDate"];
}

- (AFHomeAnnouncement)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAnnouncement::identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAnnouncement::startedHostTime"];
  v7 = [v6 unsignedLongLongValue];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAnnouncement::finishedHostTime"];
  v9 = [v8 unsignedLongLongValue];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAnnouncement::startedDate"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAnnouncement::finishedDate"];

  v12 = [(AFHomeAnnouncement *)self initWithIdentifier:v5 startedHostTime:v7 finishedHostTime:v9 startedDate:v10 finishedDate:v11];
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      startedHostTime = self->_startedHostTime;
      if (startedHostTime == [(AFHomeAnnouncement *)v5 startedHostTime]&& (finishedHostTime = self->_finishedHostTime, finishedHostTime == [(AFHomeAnnouncement *)v5 finishedHostTime]))
      {
        v8 = [(AFHomeAnnouncement *)v5 identifier];
        identifier = self->_identifier;
        if (identifier == v8 || [(NSString *)identifier isEqual:v8])
        {
          v10 = [(AFHomeAnnouncement *)v5 startedDate];
          startedDate = self->_startedDate;
          if (startedDate == v10 || [(NSDate *)startedDate isEqual:v10])
          {
            v12 = [(AFHomeAnnouncement *)v5 finishedDate];
            finishedDate = self->_finishedDate;
            v14 = finishedDate == v12 || [(NSDate *)finishedDate isEqual:v12];
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

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v8.receiver = self;
  v8.super_class = AFHomeAnnouncement;
  v5 = [(AFHomeAnnouncement *)&v8 description];
  v6 = [v4 initWithFormat:@"%@ {identifier = %@, startedHostTime = %llu, finishedHostTime = %llu, startedDate = %@, finishedDate = %@}", v5, self->_identifier, self->_startedHostTime, self->_finishedHostTime, self->_startedDate, self->_finishedDate];

  return v6;
}

- (AFHomeAnnouncement)initWithIdentifier:(id)a3 startedHostTime:(unint64_t)a4 finishedHostTime:(unint64_t)a5 startedDate:(id)a6 finishedDate:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __99__AFHomeAnnouncement_initWithIdentifier_startedHostTime_finishedHostTime_startedDate_finishedDate___block_invoke;
  v20[3] = &unk_1E7346B80;
  v24 = a4;
  v25 = a5;
  v21 = v12;
  v22 = v13;
  v23 = v14;
  v15 = v14;
  v16 = v13;
  v17 = v12;
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

- (AFHomeAnnouncement)initWithBuilder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = AFHomeAnnouncement;
  v5 = [(AFHomeAnnouncement *)&v18 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFHomeAnnouncementMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFHomeAnnouncementMutation *)v7 isDirty])
    {
      v8 = [(_AFHomeAnnouncementMutation *)v7 getIdentifier];
      v9 = [v8 copy];
      identifier = v6->_identifier;
      v6->_identifier = v9;

      v6->_startedHostTime = [(_AFHomeAnnouncementMutation *)v7 getStartedHostTime];
      v6->_finishedHostTime = [(_AFHomeAnnouncementMutation *)v7 getFinishedHostTime];
      v11 = [(_AFHomeAnnouncementMutation *)v7 getStartedDate];
      v12 = [v11 copy];
      startedDate = v6->_startedDate;
      v6->_startedDate = v12;

      v14 = [(_AFHomeAnnouncementMutation *)v7 getFinishedDate];
      v15 = [v14 copy];
      finishedDate = v6->_finishedDate;
      v6->_finishedDate = v15;
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFHomeAnnouncementMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFHomeAnnouncementMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFHomeAnnouncement);
      v7 = [(_AFHomeAnnouncementMutation *)v5 getIdentifier];
      v8 = [v7 copy];
      identifier = v6->_identifier;
      v6->_identifier = v8;

      v6->_startedHostTime = [(_AFHomeAnnouncementMutation *)v5 getStartedHostTime];
      v6->_finishedHostTime = [(_AFHomeAnnouncementMutation *)v5 getFinishedHostTime];
      v10 = [(_AFHomeAnnouncementMutation *)v5 getStartedDate];
      v11 = [v10 copy];
      startedDate = v6->_startedDate;
      v6->_startedDate = v11;

      v13 = [(_AFHomeAnnouncementMutation *)v5 getFinishedDate];
      v14 = [v13 copy];
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