@interface ATXPosterSwitch
- (ATXPosterSwitch)initWithCoder:(id)coder;
- (ATXPosterSwitch)initWithLockscreenId:(id)id switchMechanism:(id)mechanism outcome:(id)outcome duration:(unint64_t)duration;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXPosterSwitch:(id)switch;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXPosterSwitch

- (ATXPosterSwitch)initWithLockscreenId:(id)id switchMechanism:(id)mechanism outcome:(id)outcome duration:(unint64_t)duration
{
  idCopy = id;
  mechanismCopy = mechanism;
  outcomeCopy = outcome;
  v21.receiver = self;
  v21.super_class = ATXPosterSwitch;
  v13 = [(ATXPosterSwitch *)&v21 init];
  if (v13)
  {
    v14 = [idCopy copy];
    lockscreenId = v13->_lockscreenId;
    v13->_lockscreenId = v14;

    v16 = [mechanismCopy copy];
    switchMechanism = v13->_switchMechanism;
    v13->_switchMechanism = v16;

    v18 = [outcomeCopy copy];
    outcome = v13->_outcome;
    v13->_outcome = v18;

    v13->_duration = duration;
  }

  return v13;
}

- (ATXPosterSwitch)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lockscreenId"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"switchMechanism"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outcome"];
  v8 = [coderCopy decodeIntegerForKey:@"duration"];

  v9 = [(ATXPosterSwitch *)self initWithLockscreenId:v5 switchMechanism:v6 outcome:v7 duration:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  lockscreenId = [(ATXPosterSwitch *)self lockscreenId];
  [coderCopy encodeObject:lockscreenId forKey:@"lockscreenId"];

  switchMechanism = [(ATXPosterSwitch *)self switchMechanism];
  [coderCopy encodeObject:switchMechanism forKey:@"switchMechanism"];

  outcome = [(ATXPosterSwitch *)self outcome];
  [coderCopy encodeObject:outcome forKey:@"outcome"];

  [coderCopy encodeInteger:-[ATXPosterSwitch duration](self forKey:{"duration"), @"duration"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  lockscreenId = [(ATXPosterSwitch *)selfCopy lockscreenId];
  v5 = [lockscreenId copy];
  switchMechanism = [(ATXPosterSwitch *)selfCopy switchMechanism];
  v7 = [switchMechanism copy];
  outcome = [(ATXPosterSwitch *)selfCopy outcome];
  v9 = [outcome copy];
  v10 = [(ATXPosterSwitch *)selfCopy initWithLockscreenId:v5 switchMechanism:v7 outcome:v9 duration:[(ATXPosterSwitch *)selfCopy duration]];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXPosterSwitch *)self isEqualToATXPosterSwitch:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXPosterSwitch:(id)switch
{
  switchCopy = switch;
  v5 = self->_lockscreenId;
  v6 = v5;
  if (v5 == switchCopy[1])
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
  if (v8 == switchCopy[2])
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
  if (v11 == switchCopy[3])
  {

    goto LABEL_13;
  }

  v13 = [(NSString *)v11 isEqual:?];

  if (v13)
  {
LABEL_13:
    duration = self->_duration;
    v14 = duration == [switchCopy duration];
    goto LABEL_14;
  }

LABEL_11:
  v14 = 0;
LABEL_14:

  return v14;
}

- (unint64_t)hash
{
  lockscreenId = [(ATXPosterSwitch *)self lockscreenId];
  v4 = [lockscreenId hash];

  switchMechanism = [(ATXPosterSwitch *)self switchMechanism];
  v6 = [switchMechanism hash] - v4 + 32 * v4;

  outcome = [(ATXPosterSwitch *)self outcome];
  v8 = [outcome hash] - v6 + 32 * v6;

  return [(ATXPosterSwitch *)self duration]- v8 + 32 * v8;
}

@end