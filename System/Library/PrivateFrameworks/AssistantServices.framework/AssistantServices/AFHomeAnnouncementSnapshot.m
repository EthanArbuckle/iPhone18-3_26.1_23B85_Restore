@interface AFHomeAnnouncementSnapshot
+ (id)newWithBuilder:(id)a3;
- (AFHomeAnnouncementSnapshot)initWithBuilder:(id)a3;
- (AFHomeAnnouncementSnapshot)initWithCoder:(id)a3;
- (AFHomeAnnouncementSnapshot)initWithDictionaryRepresentation:(id)a3;
- (AFHomeAnnouncementSnapshot)initWithSerializedBackingStore:(id)a3;
- (AFHomeAnnouncementSnapshot)initWithState:(unint64_t)a3 lastPlayedAnnouncement:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)ad_shortDescription;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFHomeAnnouncementSnapshot

- (id)ad_shortDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = AFHomeAnnouncementStateGetNames([(AFHomeAnnouncementSnapshot *)self state]);
  v4 = [v2 stringWithFormat:@"(state: %@)", v3];

  return v4;
}

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = AFHomeAnnouncementStateGetNames(self->_state);
  [v3 setObject:v4 forKey:@"state"];

  lastPlayedAnnouncement = self->_lastPlayedAnnouncement;
  if (lastPlayedAnnouncement)
  {
    v6 = [(AFHomeAnnouncement *)lastPlayedAnnouncement buildDictionaryRepresentation];
    [v3 setObject:v6 forKey:@"lastPlayedAnnouncement"];
  }

  v7 = [v3 copy];

  return v7;
}

- (AFHomeAnnouncementSnapshot)initWithDictionaryRepresentation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 objectForKey:@"state"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = AFHomeAnnouncementStateGetFromNames(v5);
    }

    else
    {
      v6 = 0;
    }

    v8 = [v4 objectForKey:@"lastPlayedAnnouncement"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[AFHomeAnnouncement alloc] initWithDictionaryRepresentation:v8];
    }

    else
    {
      v9 = 0;
    }

    self = [(AFHomeAnnouncementSnapshot *)self initWithState:v6 lastPlayedAnnouncement:v9];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  state = self->_state;
  v7 = a3;
  v6 = [v4 numberWithUnsignedInteger:state];
  [v7 encodeObject:v6 forKey:@"AFHomeAnnouncementSnapshot::state"];

  [v7 encodeObject:self->_lastPlayedAnnouncement forKey:@"AFHomeAnnouncementSnapshot::lastPlayedAnnouncement"];
}

- (AFHomeAnnouncementSnapshot)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAnnouncementSnapshot::state"];
  v6 = [v5 unsignedIntegerValue];

  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeAnnouncementSnapshot::lastPlayedAnnouncement"];

  v8 = [(AFHomeAnnouncementSnapshot *)self initWithState:v6 lastPlayedAnnouncement:v7];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      state = self->_state;
      if (state == [(AFHomeAnnouncementSnapshot *)v5 state])
      {
        v7 = [(AFHomeAnnouncementSnapshot *)v5 lastPlayedAnnouncement];
        lastPlayedAnnouncement = self->_lastPlayedAnnouncement;
        v9 = lastPlayedAnnouncement == v7 || [(AFHomeAnnouncement *)lastPlayedAnnouncement isEqual:v7];
      }

      else
      {
        v9 = 0;
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
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_state];
  v4 = [v3 hash];
  v5 = [(AFHomeAnnouncement *)self->_lastPlayedAnnouncement hash];

  return v5 ^ v4;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10.receiver = self;
  v10.super_class = AFHomeAnnouncementSnapshot;
  v5 = [(AFHomeAnnouncementSnapshot *)&v10 description];
  v6 = AFHomeAnnouncementStateGetNames(self->_state);
  v7 = [v6 componentsJoinedByString:@"|"];
  v8 = [v4 initWithFormat:@"%@ {state = %@, lastPlayedAnnouncement = %@}", v5, v7, self->_lastPlayedAnnouncement];

  return v8;
}

- (AFHomeAnnouncementSnapshot)initWithState:(unint64_t)a3 lastPlayedAnnouncement:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__AFHomeAnnouncementSnapshot_initWithState_lastPlayedAnnouncement___block_invoke;
  v10[3] = &unk_1E7346100;
  v11 = v6;
  v12 = a3;
  v7 = v6;
  v8 = [(AFHomeAnnouncementSnapshot *)self initWithBuilder:v10];

  return v8;
}

void __67__AFHomeAnnouncementSnapshot_initWithState_lastPlayedAnnouncement___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 setState:v3];
  [v4 setLastPlayedAnnouncement:*(a1 + 32)];
}

- (AFHomeAnnouncementSnapshot)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AFHomeAnnouncementSnapshot;
  v5 = [(AFHomeAnnouncementSnapshot *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFHomeAnnouncementSnapshotMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFHomeAnnouncementSnapshotMutation *)v7 isDirty])
    {
      v6->_state = [(_AFHomeAnnouncementSnapshotMutation *)v7 getState];
      v8 = [(_AFHomeAnnouncementSnapshotMutation *)v7 getLastPlayedAnnouncement];
      v9 = [v8 copy];
      lastPlayedAnnouncement = v6->_lastPlayedAnnouncement;
      v6->_lastPlayedAnnouncement = v9;
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
    v5 = [[_AFHomeAnnouncementSnapshotMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFHomeAnnouncementSnapshotMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFHomeAnnouncementSnapshot);
      v6->_state = [(_AFHomeAnnouncementSnapshotMutation *)v5 getState];
      v7 = [(_AFHomeAnnouncementSnapshotMutation *)v5 getLastPlayedAnnouncement];
      v8 = [v7 copy];
      lastPlayedAnnouncement = v6->_lastPlayedAnnouncement;
      v6->_lastPlayedAnnouncement = v8;
    }

    else
    {
      v6 = [(AFHomeAnnouncementSnapshot *)self copy];
    }
  }

  else
  {
    v6 = [(AFHomeAnnouncementSnapshot *)self copy];
  }

  return v6;
}

- (AFHomeAnnouncementSnapshot)initWithSerializedBackingStore:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self = [(AFHomeAnnouncementSnapshot *)self initWithDictionaryRepresentation:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end