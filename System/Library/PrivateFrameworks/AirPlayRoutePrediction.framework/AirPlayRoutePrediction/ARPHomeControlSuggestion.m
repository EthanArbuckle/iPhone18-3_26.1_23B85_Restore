@interface ARPHomeControlSuggestion
- (ARPHomeControlSuggestion)initWithCoder:(id)a3;
- (ARPHomeControlSuggestion)initWithHomeUUID:(id)a3 targetUUID:(id)a4 accessoryServiceUUID:(id)a5 type:(int64_t)a6 score:(double)a7 computedScore:(double)a8 suggestionReason:(id)a9;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ARPHomeControlSuggestion

- (ARPHomeControlSuggestion)initWithHomeUUID:(id)a3 targetUUID:(id)a4 accessoryServiceUUID:(id)a5 type:(int64_t)a6 score:(double)a7 computedScore:(double)a8 suggestionReason:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a9;
  v30.receiver = self;
  v30.super_class = ARPHomeControlSuggestion;
  v20 = [(ARPHomeControlSuggestion *)&v30 init];
  if (v20)
  {
    v21 = [v16 copy];
    homeUUID = v20->_homeUUID;
    v20->_homeUUID = v21;

    v23 = [v17 copy];
    targetUUID = v20->_targetUUID;
    v20->_targetUUID = v23;

    v25 = [v18 copy];
    accessoryServiceUUID = v20->_accessoryServiceUUID;
    v20->_accessoryServiceUUID = v25;

    v20->_type = a6;
    v20->_score = a7;
    v20->_computedScore = a8;
    v27 = [v19 copy];
    suggestionReason = v20->_suggestionReason;
    v20->_suggestionReason = v27;
  }

  return v20;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ARPHomeControlSuggestion *)self type];
  v6 = NSStringFromSelector(sel_type);
  [v4 encodeInteger:v5 forKey:v6];

  [(ARPHomeControlSuggestion *)self score];
  v8 = v7;
  v9 = NSStringFromSelector(sel_score);
  [v4 encodeDouble:v9 forKey:v8];

  v10 = [(ARPHomeControlSuggestion *)self homeUUID];
  v11 = NSStringFromSelector(sel_homeUUID);
  [v4 encodeObject:v10 forKey:v11];

  v12 = [(ARPHomeControlSuggestion *)self targetUUID];
  v13 = NSStringFromSelector(sel_targetUUID);
  [v4 encodeObject:v12 forKey:v13];

  v14 = [(ARPHomeControlSuggestion *)self accessoryServiceUUID];
  v15 = NSStringFromSelector(sel_accessoryServiceUUID);
  [v4 encodeObject:v14 forKey:v15];

  v17 = [(ARPHomeControlSuggestion *)self suggestionReason];
  v16 = NSStringFromSelector(sel_suggestionReason);
  [v4 encodeObject:v17 forKey:v16];
}

- (ARPHomeControlSuggestion)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_type);
  v6 = [v4 decodeIntForKey:v5];

  v7 = NSStringFromSelector(sel_score);
  [v4 decodeDoubleForKey:v7];
  v9 = v8;

  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_homeUUID);
  v12 = [v4 decodeObjectOfClass:v10 forKey:v11];

  v13 = objc_opt_class();
  v14 = NSStringFromSelector(sel_targetUUID);
  v15 = [v4 decodeObjectOfClass:v13 forKey:v14];

  v16 = objc_opt_class();
  v17 = NSStringFromSelector(sel_accessoryServiceUUID);
  v18 = [v4 decodeObjectOfClass:v16 forKey:v17];

  v19 = objc_opt_class();
  v20 = NSStringFromSelector(sel_suggestionReason);
  v21 = [v4 decodeObjectOfClass:v19 forKey:v20];

  v22 = [(ARPHomeControlSuggestion *)self initWithHomeUUID:v12 targetUUID:v15 accessoryServiceUUID:v18 type:v6 score:v21 suggestionReason:v9];
  return v22;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_homeUUID hash];
  v4 = [(NSString *)self->_targetUUID hash]^ v3;
  return v4 ^ [(NSString *)self->_accessoryServiceUUID hash]^ self->_type;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v25 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(ARPHomeControlSuggestion *)self homeUUID];
        if (!v7)
        {
          goto LABEL_20;
        }

        v8 = v7;
        v9 = [(ARPHomeControlSuggestion *)self targetUUID];
        if (v9)
        {
          v10 = v9;
          v11 = [(ARPHomeControlSuggestion *)v6 homeUUID];
          if (v11)
          {
            v12 = v11;
            v13 = [(ARPHomeControlSuggestion *)v6 targetUUID];
            if (v13)
            {
              v14 = v13;
              v15 = [(ARPHomeControlSuggestion *)self accessoryServiceUUID];
              if (v15)
              {
                v16 = v15;
                v17 = [(ARPHomeControlSuggestion *)v6 accessoryServiceUUID];

                if (v17)
                {
                  v18 = [(ARPHomeControlSuggestion *)self homeUUID];
                  v19 = [(ARPHomeControlSuggestion *)v6 homeUUID];
                  if ([v18 isEqualToString:v19])
                  {
                    v20 = [(ARPHomeControlSuggestion *)self targetUUID];
                    v21 = [(ARPHomeControlSuggestion *)v6 targetUUID];
                    if ([v20 isEqualToString:v21])
                    {
                      v22 = [(ARPHomeControlSuggestion *)self accessoryServiceUUID];
                      v23 = [(ARPHomeControlSuggestion *)v6 accessoryServiceUUID];
                      if ([v22 isEqualToString:v23])
                      {
                        v24 = [(ARPHomeControlSuggestion *)self type];
                        v25 = v24 == [(ARPHomeControlSuggestion *)v6 type];
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
                v26 = [(ARPHomeControlSuggestion *)self homeUUID];
                if (!v26)
                {
                  goto LABEL_27;
                }

                v18 = v26;
                v27 = [(ARPHomeControlSuggestion *)self targetUUID];
                if (!v27)
                {
                  v25 = 0;
LABEL_35:

                  goto LABEL_36;
                }

                v19 = v27;
                v28 = [(ARPHomeControlSuggestion *)v6 homeUUID];
                if (!v28)
                {
                  goto LABEL_28;
                }

                v29 = v28;
                v30 = [(ARPHomeControlSuggestion *)v6 targetUUID];

                if (!v30)
                {
LABEL_27:
                  v25 = 0;
LABEL_36:

                  goto LABEL_37;
                }

                v18 = [(ARPHomeControlSuggestion *)self homeUUID];
                v19 = [(ARPHomeControlSuggestion *)v6 homeUUID];
                if ([v18 isEqualToString:v19])
                {
                  v20 = [(ARPHomeControlSuggestion *)self targetUUID];
                  v21 = [(ARPHomeControlSuggestion *)v6 targetUUID];
                  if ([v20 isEqualToString:v21])
                  {
                    v31 = [(ARPHomeControlSuggestion *)self type];
                    v25 = v31 == [(ARPHomeControlSuggestion *)v6 type];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[ARPHomeControlSuggestion allocWithZone:?]];
  [(ARPHomeControlSuggestion *)v4 setType:[(ARPHomeControlSuggestion *)self type]];
  v5 = [(ARPHomeControlSuggestion *)self homeUUID];
  [(ARPHomeControlSuggestion *)v4 setHomeUUID:v5];

  v6 = [(ARPHomeControlSuggestion *)self targetUUID];
  [(ARPHomeControlSuggestion *)v4 setTargetUUID:v6];

  v7 = [(ARPHomeControlSuggestion *)self accessoryServiceUUID];
  [(ARPHomeControlSuggestion *)v4 setAccessoryServiceUUID:v7];

  [(ARPHomeControlSuggestion *)self score];
  [(ARPHomeControlSuggestion *)v4 setScore:?];
  v8 = [(ARPHomeControlSuggestion *)self suggestionReason];
  [(ARPHomeControlSuggestion *)v4 setSuggestionReason:v8];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ARPHomeControlSuggestion *)self suggestionReason];
  v6 = [(ARPHomeControlSuggestion *)self homeUUID];
  v7 = [(ARPHomeControlSuggestion *)self targetUUID];
  v8 = [(ARPHomeControlSuggestion *)self accessoryServiceUUID];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[ARPHomeControlSuggestion type](self, "type")}];
  v10 = MEMORY[0x277CCABB0];
  [(ARPHomeControlSuggestion *)self score];
  v11 = [v10 numberWithDouble:?];
  v12 = [v3 stringWithFormat:@"<%@ %p> reason: %@, homeUUID: %@, targetUUID: %@, accessoryServiceUUID: %@, type: %@, score: %@", v4, self, v5, v6, v7, v8, v9, v11];

  return v12;
}

@end