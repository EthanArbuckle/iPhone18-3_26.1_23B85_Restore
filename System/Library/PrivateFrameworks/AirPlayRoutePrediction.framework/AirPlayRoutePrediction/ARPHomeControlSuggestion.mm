@interface ARPHomeControlSuggestion
- (ARPHomeControlSuggestion)initWithCoder:(id)coder;
- (ARPHomeControlSuggestion)initWithHomeUUID:(id)d targetUUID:(id)iD accessoryServiceUUID:(id)uID type:(int64_t)type score:(double)score computedScore:(double)computedScore suggestionReason:(id)reason;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ARPHomeControlSuggestion

- (ARPHomeControlSuggestion)initWithHomeUUID:(id)d targetUUID:(id)iD accessoryServiceUUID:(id)uID type:(int64_t)type score:(double)score computedScore:(double)computedScore suggestionReason:(id)reason
{
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  reasonCopy = reason;
  v30.receiver = self;
  v30.super_class = ARPHomeControlSuggestion;
  v20 = [(ARPHomeControlSuggestion *)&v30 init];
  if (v20)
  {
    v21 = [dCopy copy];
    homeUUID = v20->_homeUUID;
    v20->_homeUUID = v21;

    v23 = [iDCopy copy];
    targetUUID = v20->_targetUUID;
    v20->_targetUUID = v23;

    v25 = [uIDCopy copy];
    accessoryServiceUUID = v20->_accessoryServiceUUID;
    v20->_accessoryServiceUUID = v25;

    v20->_type = type;
    v20->_score = score;
    v20->_computedScore = computedScore;
    v27 = [reasonCopy copy];
    suggestionReason = v20->_suggestionReason;
    v20->_suggestionReason = v27;
  }

  return v20;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  type = [(ARPHomeControlSuggestion *)self type];
  v6 = NSStringFromSelector(sel_type);
  [coderCopy encodeInteger:type forKey:v6];

  [(ARPHomeControlSuggestion *)self score];
  v8 = v7;
  v9 = NSStringFromSelector(sel_score);
  [coderCopy encodeDouble:v9 forKey:v8];

  homeUUID = [(ARPHomeControlSuggestion *)self homeUUID];
  v11 = NSStringFromSelector(sel_homeUUID);
  [coderCopy encodeObject:homeUUID forKey:v11];

  targetUUID = [(ARPHomeControlSuggestion *)self targetUUID];
  v13 = NSStringFromSelector(sel_targetUUID);
  [coderCopy encodeObject:targetUUID forKey:v13];

  accessoryServiceUUID = [(ARPHomeControlSuggestion *)self accessoryServiceUUID];
  v15 = NSStringFromSelector(sel_accessoryServiceUUID);
  [coderCopy encodeObject:accessoryServiceUUID forKey:v15];

  suggestionReason = [(ARPHomeControlSuggestion *)self suggestionReason];
  v16 = NSStringFromSelector(sel_suggestionReason);
  [coderCopy encodeObject:suggestionReason forKey:v16];
}

- (ARPHomeControlSuggestion)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_type);
  v6 = [coderCopy decodeIntForKey:v5];

  v7 = NSStringFromSelector(sel_score);
  [coderCopy decodeDoubleForKey:v7];
  v9 = v8;

  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_homeUUID);
  v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];

  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_targetUUID);
  v15 = [coderCopy decodeObjectOfClass:v13 forKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_accessoryServiceUUID);
  v18 = [coderCopy decodeObjectOfClass:v16 forKey:v17];

  v19 = objc_opt_class();
  v20 = NSStringFromSelector(sel_suggestionReason);
  v21 = [coderCopy decodeObjectOfClass:v19 forKey:v20];

  v22 = [(ARPHomeControlSuggestion *)self initWithHomeUUID:v12 targetUUID:v15 accessoryServiceUUID:v18 type:v6 score:v21 suggestionReason:v9];
  return v22;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_homeUUID hash];
  v4 = [(NSString *)self->_targetUUID hash]^ v3;
  return v4 ^ [(NSString *)self->_accessoryServiceUUID hash]^ self->_type;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v25 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        homeUUID = [(ARPHomeControlSuggestion *)self homeUUID];
        if (!homeUUID)
        {
          goto LABEL_20;
        }

        v8 = homeUUID;
        targetUUID = [(ARPHomeControlSuggestion *)self targetUUID];
        if (targetUUID)
        {
          v10 = targetUUID;
          homeUUID2 = [(ARPHomeControlSuggestion *)v6 homeUUID];
          if (homeUUID2)
          {
            v12 = homeUUID2;
            targetUUID2 = [(ARPHomeControlSuggestion *)v6 targetUUID];
            if (targetUUID2)
            {
              v14 = targetUUID2;
              accessoryServiceUUID = [(ARPHomeControlSuggestion *)self accessoryServiceUUID];
              if (accessoryServiceUUID)
              {
                v16 = accessoryServiceUUID;
                accessoryServiceUUID2 = [(ARPHomeControlSuggestion *)v6 accessoryServiceUUID];

                if (accessoryServiceUUID2)
                {
                  homeUUID3 = [(ARPHomeControlSuggestion *)self homeUUID];
                  homeUUID4 = [(ARPHomeControlSuggestion *)v6 homeUUID];
                  if ([homeUUID3 isEqualToString:homeUUID4])
                  {
                    targetUUID3 = [(ARPHomeControlSuggestion *)self targetUUID];
                    targetUUID4 = [(ARPHomeControlSuggestion *)v6 targetUUID];
                    if ([targetUUID3 isEqualToString:targetUUID4])
                    {
                      accessoryServiceUUID3 = [(ARPHomeControlSuggestion *)self accessoryServiceUUID];
                      accessoryServiceUUID4 = [(ARPHomeControlSuggestion *)v6 accessoryServiceUUID];
                      if ([accessoryServiceUUID3 isEqualToString:accessoryServiceUUID4])
                      {
                        type = [(ARPHomeControlSuggestion *)self type];
                        v25 = type == [(ARPHomeControlSuggestion *)v6 type];
                      }

                      else
                      {
                        v25 = 0;
                      }

                      goto LABEL_33;
                    }

                    goto LABEL_30;
                  }

                  goto LABEL_28;
                }

LABEL_20:
                homeUUID5 = [(ARPHomeControlSuggestion *)self homeUUID];
                if (!homeUUID5)
                {
                  goto LABEL_27;
                }

                homeUUID3 = homeUUID5;
                targetUUID5 = [(ARPHomeControlSuggestion *)self targetUUID];
                if (!targetUUID5)
                {
                  v25 = 0;
LABEL_35:

                  goto LABEL_36;
                }

                homeUUID4 = targetUUID5;
                homeUUID6 = [(ARPHomeControlSuggestion *)v6 homeUUID];
                if (!homeUUID6)
                {
                  goto LABEL_28;
                }

                v29 = homeUUID6;
                targetUUID6 = [(ARPHomeControlSuggestion *)v6 targetUUID];

                if (!targetUUID6)
                {
LABEL_27:
                  v25 = 0;
LABEL_36:

                  goto LABEL_37;
                }

                homeUUID3 = [(ARPHomeControlSuggestion *)self homeUUID];
                homeUUID4 = [(ARPHomeControlSuggestion *)v6 homeUUID];
                if ([homeUUID3 isEqualToString:homeUUID4])
                {
                  targetUUID3 = [(ARPHomeControlSuggestion *)self targetUUID];
                  targetUUID4 = [(ARPHomeControlSuggestion *)v6 targetUUID];
                  if ([targetUUID3 isEqualToString:targetUUID4])
                  {
                    type2 = [(ARPHomeControlSuggestion *)self type];
                    v25 = type2 == [(ARPHomeControlSuggestion *)v6 type];
LABEL_33:

                    goto LABEL_34;
                  }

LABEL_30:
                  v25 = 0;
                  goto LABEL_33;
                }

LABEL_28:
                v25 = 0;
LABEL_34:

                goto LABEL_35;
              }
            }
          }
        }

        goto LABEL_20;
      }
    }

    v25 = 0;
  }

LABEL_37:

  return v25;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[ARPHomeControlSuggestion allocWithZone:?]];
  [(ARPHomeControlSuggestion *)v4 setType:[(ARPHomeControlSuggestion *)self type]];
  homeUUID = [(ARPHomeControlSuggestion *)self homeUUID];
  [(ARPHomeControlSuggestion *)v4 setHomeUUID:homeUUID];

  targetUUID = [(ARPHomeControlSuggestion *)self targetUUID];
  [(ARPHomeControlSuggestion *)v4 setTargetUUID:targetUUID];

  accessoryServiceUUID = [(ARPHomeControlSuggestion *)self accessoryServiceUUID];
  [(ARPHomeControlSuggestion *)v4 setAccessoryServiceUUID:accessoryServiceUUID];

  [(ARPHomeControlSuggestion *)self score];
  [(ARPHomeControlSuggestion *)v4 setScore:?];
  suggestionReason = [(ARPHomeControlSuggestion *)self suggestionReason];
  [(ARPHomeControlSuggestion *)v4 setSuggestionReason:suggestionReason];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  suggestionReason = [(ARPHomeControlSuggestion *)self suggestionReason];
  homeUUID = [(ARPHomeControlSuggestion *)self homeUUID];
  targetUUID = [(ARPHomeControlSuggestion *)self targetUUID];
  accessoryServiceUUID = [(ARPHomeControlSuggestion *)self accessoryServiceUUID];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ARPHomeControlSuggestion type](self, "type")}];
  v10 = MEMORY[0x277CCABB0];
  [(ARPHomeControlSuggestion *)self score];
  v11 = [v10 numberWithDouble:?];
  v12 = [v3 stringWithFormat:@"<%@ %p> reason: %@, homeUUID: %@, targetUUID: %@, accessoryServiceUUID: %@, type: %@, score: %@", v4, self, suggestionReason, homeUUID, targetUUID, accessoryServiceUUID, v9, v11];

  return v12;
}

@end