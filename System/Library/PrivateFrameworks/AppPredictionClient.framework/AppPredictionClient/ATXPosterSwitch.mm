@interface ATXPosterSwitch
- (ATXPosterSwitch)initWithCoder:(id)a3;
- (ATXPosterSwitch)initWithLockscreenId:(id)a3 switchMechanism:(id)a4 outcome:(id)a5 duration:(unint64_t)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXPosterSwitch:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXPosterSwitch

- (ATXPosterSwitch)initWithLockscreenId:(id)a3 switchMechanism:(id)a4 outcome:(id)a5 duration:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = ATXPosterSwitch;
  v13 = [(ATXPosterSwitch *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    lockscreenId = v13->_lockscreenId;
    v13->_lockscreenId = v14;

    v16 = [v11 copy];
    switchMechanism = v13->_switchMechanism;
    v13->_switchMechanism = v16;

    v18 = [v12 copy];
    outcome = v13->_outcome;
    v13->_outcome = v18;

    v13->_duration = a6;
  }

  return v13;
}

- (ATXPosterSwitch)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lockscreenId"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"switchMechanism"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"outcome"];
  v8 = [v4 decodeIntegerForKey:@"duration"];

  v9 = [(ATXPosterSwitch *)self initWithLockscreenId:v5 switchMechanism:v6 outcome:v7 duration:v8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(ATXPosterSwitch *)self lockscreenId];
  [v7 encodeObject:v4 forKey:@"lockscreenId"];

  v5 = [(ATXPosterSwitch *)self switchMechanism];
  [v7 encodeObject:v5 forKey:@"switchMechanism"];

  v6 = [(ATXPosterSwitch *)self outcome];
  [v7 encodeObject:v6 forKey:@"outcome"];

  [v7 encodeInteger:-[ATXPosterSwitch duration](self forKey:{"duration"), @"duration"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  v4 = [(ATXPosterSwitch *)v3 lockscreenId];
  v5 = [v4 copy];
  v6 = [(ATXPosterSwitch *)v3 switchMechanism];
  v7 = [v6 copy];
  v8 = [(ATXPosterSwitch *)v3 outcome];
  v9 = [v8 copy];
  v10 = [(ATXPosterSwitch *)v3 initWithLockscreenId:v5 switchMechanism:v7 outcome:v9 duration:[(ATXPosterSwitch *)v3 duration]];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPosterSwitch *)self isEqualToATXPosterSwitch:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPosterSwitch:(id)a3
{
  v4 = a3;
  v5 = self->_lockscreenId;
  v6 = v5;
  if (v5 == v4[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v8 = self->_switchMechanism;
  v9 = v8;
  if (v8 == v4[2])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v11 = self->_outcome;
  v12 = v11;
  if (v11 == v4[3])
  {

    goto LABEL_13;
  }

  v13 = [(NSString *)v11 isEqual:?];

  if (v13)
  {
LABEL_13:
    duration = self->_duration;
    v14 = duration == [v4 duration];
    goto LABEL_14;
  }

LABEL_11:
  v14 = 0;
LABEL_14:

  return v14;
}

- (unint64_t)hash
{
  v3 = [(ATXPosterSwitch *)self lockscreenId];
  v4 = [v3 hash];

  v5 = [(ATXPosterSwitch *)self switchMechanism];
  v6 = [v5 hash] - v4 + 32 * v4;

  v7 = [(ATXPosterSwitch *)self outcome];
  v8 = [v7 hash] - v6 + 32 * v6;

  return [(ATXPosterSwitch *)self duration]- v8 + 32 * v8;
}

@end