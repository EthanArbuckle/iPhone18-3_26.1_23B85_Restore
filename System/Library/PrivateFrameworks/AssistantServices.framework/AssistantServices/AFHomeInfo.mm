@interface AFHomeInfo
+ (id)newWithBuilder:(id)a3;
- (AFHomeInfo)initWithBuilder:(id)a3;
- (AFHomeInfo)initWithCoder:(id)a3;
- (AFHomeInfo)initWithDictionaryRepresentation:(id)a3;
- (AFHomeInfo)initWithHomeIdentifier:(id)a3 activityNotificationsEnabledForPersonalRequests:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)buildDictionaryRepresentation;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFHomeInfo

- (id)buildDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = v3;
  homeIdentifier = self->_homeIdentifier;
  if (homeIdentifier)
  {
    [v3 setObject:homeIdentifier forKey:@"homeIdentifier"];
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_activityNotificationsEnabledForPersonalRequests];
  [v4 setObject:v6 forKey:@"activityNotificationsEnabledForPersonalRequests"];

  v7 = [v4 copy];

  return v7;
}

- (AFHomeInfo)initWithDictionaryRepresentation:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [v4 objectForKey:@"homeIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v8 = [v4 objectForKey:@"activityNotificationsEnabledForPersonalRequests"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = [v9 BOOLValue];
    self = [(AFHomeInfo *)self initWithHomeIdentifier:v6 activityNotificationsEnabledForPersonalRequests:v10];

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
  homeIdentifier = self->_homeIdentifier;
  v5 = a3;
  [v5 encodeObject:homeIdentifier forKey:@"AFHomeInfo::homeIdentifier"];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_activityNotificationsEnabledForPersonalRequests];
  [v5 encodeObject:v6 forKey:@"AFHomeInfo::activityNotificationsEnabledForPersonalRequests"];
}

- (AFHomeInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeInfo::homeIdentifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AFHomeInfo::activityNotificationsEnabledForPersonalRequests"];

  v7 = [v6 BOOLValue];
  v8 = [(AFHomeInfo *)self initWithHomeIdentifier:v5 activityNotificationsEnabledForPersonalRequests:v7];

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
      activityNotificationsEnabledForPersonalRequests = self->_activityNotificationsEnabledForPersonalRequests;
      if (activityNotificationsEnabledForPersonalRequests == [(AFHomeInfo *)v5 activityNotificationsEnabledForPersonalRequests])
      {
        v7 = [(AFHomeInfo *)v5 homeIdentifier];
        homeIdentifier = self->_homeIdentifier;
        v9 = homeIdentifier == v7 || [(NSUUID *)homeIdentifier isEqual:v7];
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
  v3 = [(NSUUID *)self->_homeIdentifier hash];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_activityNotificationsEnabledForPersonalRequests];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)_descriptionWithIndent:(unint64_t)a3
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11.receiver = self;
  v11.super_class = AFHomeInfo;
  v5 = [(AFHomeInfo *)&v11 description];
  v6 = v5;
  homeIdentifier = self->_homeIdentifier;
  if (self->_activityNotificationsEnabledForPersonalRequests)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [v4 initWithFormat:@"%@ {homeIdentifier = %@, activityNotificationsEnabledForPersonalRequests = %@}", v5, self->_homeIdentifier, v8];

  return v9;
}

- (AFHomeInfo)initWithHomeIdentifier:(id)a3 activityNotificationsEnabledForPersonalRequests:(BOOL)a4
{
  v6 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __85__AFHomeInfo_initWithHomeIdentifier_activityNotificationsEnabledForPersonalRequests___block_invoke;
  v10[3] = &unk_1E7348890;
  v11 = v6;
  v12 = a4;
  v7 = v6;
  v8 = [(AFHomeInfo *)self initWithBuilder:v10];

  return v8;
}

void __85__AFHomeInfo_initWithHomeIdentifier_activityNotificationsEnabledForPersonalRequests___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setHomeIdentifier:v3];
  [v4 setActivityNotificationsEnabledForPersonalRequests:*(a1 + 40)];
}

- (AFHomeInfo)initWithBuilder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = AFHomeInfo;
  v5 = [(AFHomeInfo *)&v12 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFHomeInfoMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFHomeInfoMutation *)v7 isDirty])
    {
      v8 = [(_AFHomeInfoMutation *)v7 getHomeIdentifier];
      v9 = [v8 copy];
      homeIdentifier = v6->_homeIdentifier;
      v6->_homeIdentifier = v9;

      v6->_activityNotificationsEnabledForPersonalRequests = [(_AFHomeInfoMutation *)v7 getActivityNotificationsEnabledForPersonalRequests];
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
    v5 = [[_AFHomeInfoMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFHomeInfoMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFHomeInfo);
      v7 = [(_AFHomeInfoMutation *)v5 getHomeIdentifier];
      v8 = [v7 copy];
      homeIdentifier = v6->_homeIdentifier;
      v6->_homeIdentifier = v8;

      v6->_activityNotificationsEnabledForPersonalRequests = [(_AFHomeInfoMutation *)v5 getActivityNotificationsEnabledForPersonalRequests];
    }

    else
    {
      v6 = [(AFHomeInfo *)self copy];
    }
  }

  else
  {
    v6 = [(AFHomeInfo *)self copy];
  }

  return v6;
}

@end