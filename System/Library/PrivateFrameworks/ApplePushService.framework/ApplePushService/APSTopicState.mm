@interface APSTopicState
- (APSConnectionServer)connectionServer;
- (APSTopicState)initWithTopicName:(id)a3 connectionServer:(id)a4 attributes:(id)a5 topicHash:(id)a6;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation APSTopicState

- (APSConnectionServer)connectionServer
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionServer);

  return WeakRetained;
}

- (APSTopicState)initWithTopicName:(id)a3 connectionServer:(id)a4 attributes:(id)a5 topicHash:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = APSTopicState;
  v15 = [(APSTopicState *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_topicName, a3);
    objc_storeStrong(&v16->_topicHash, a6);
    objc_storeWeak(&v16->_connectionServer, v12);
    objc_storeStrong(&v16->_attributes, a5);
    v16->_currentFilter = 0;
    v16->_desiredFilter = 0;
  }

  return v16;
}

- (id)description
{
  v11.receiver = self;
  v11.super_class = APSTopicState;
  v3 = [(APSTopicState *)&v11 description];
  WeakRetained = objc_loadWeakRetained(&self->_connectionServer);
  v10 = *&self->_topicName;
  attributes = self->_attributes;
  v6 = sub_100007D14(self->_currentFilter);
  v7 = sub_100007D14(self->_desiredFilter);
  v8 = [NSString stringWithFormat:@"%@ connectionServer=%@, topicName=%@, topicHash=%@, attributes=%@, currentFilter=%@, desiredFilter=%@", v3, WeakRetained, v10, attributes, v6, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(APSTopicState);
  objc_storeStrong(&v4->_topicName, self->_topicName);
  objc_storeStrong(&v4->_topicHash, self->_topicHash);
  WeakRetained = objc_loadWeakRetained(&self->_connectionServer);
  objc_storeWeak(&v4->_connectionServer, WeakRetained);

  objc_storeStrong(&v4->_attributes, self->_attributes);
  v4->_currentFilter = self->_currentFilter;
  v4->_desiredFilter = self->_desiredFilter;
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_10;
  }

  if (self == v4)
  {
    LOBYTE(v15) = 1;
    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(APSTopicState *)v6 topicName];
    v8 = [(APSTopicState *)self topicName];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(APSTopicState *)v6 topicHash];
      v10 = [(APSTopicState *)self topicHash];
      if ([v9 isEqualToData:v10])
      {
        v11 = [(APSTopicState *)v6 connectionServer];
        v12 = [(APSTopicState *)self connectionServer];
        if ([v11 isEqual:v12])
        {
          v29 = [(APSTopicState *)v6 attributes];
          v13 = [v29 filter];
          v28 = [(APSTopicState *)self attributes];
          if (v13 == [v28 filter])
          {
            v27 = [(APSTopicState *)v6 attributes];
            v14 = [v27 isDarkWakeEnabled];
            v26 = [(APSTopicState *)self attributes];
            if (v14 == [v26 isDarkWakeEnabled])
            {
              v25 = [(APSTopicState *)v6 attributes];
              v16 = [v25 isPushWakeEnabled];
              v24 = [(APSTopicState *)self attributes];
              if (v16 == [v24 isPushWakeEnabled])
              {
                v23 = [(APSTopicState *)v6 attributes];
                v17 = [v23 isCriticalWakeEnabled];
                v22 = [(APSTopicState *)self attributes];
                if (v17 == [v22 isCriticalWakeEnabled])
                {
                  v21 = [(APSTopicState *)v6 attributes];
                  v20 = [v21 isUltraConstrainedEnabled];
                  v18 = [(APSTopicState *)self attributes];
                  v15 = v20 ^ [v18 isUltraConstrainedEnabled] ^ 1;
                }

                else
                {
                  LOBYTE(v15) = 0;
                }
              }

              else
              {
                LOBYTE(v15) = 0;
              }
            }

            else
            {
              LOBYTE(v15) = 0;
            }
          }

          else
          {
            LOBYTE(v15) = 0;
          }
        }

        else
        {
          LOBYTE(v15) = 0;
        }
      }

      else
      {
        LOBYTE(v15) = 0;
      }
    }

    else
    {
      LOBYTE(v15) = 0;
    }
  }

  else
  {
LABEL_10:
    LOBYTE(v15) = 0;
  }

LABEL_28:

  return v15;
}

@end