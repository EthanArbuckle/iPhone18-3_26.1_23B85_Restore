@interface APSTopicState
- (APSConnectionServer)connectionServer;
- (APSTopicState)initWithTopicName:(id)name connectionServer:(id)server attributes:(id)attributes topicHash:(id)hash;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation APSTopicState

- (APSConnectionServer)connectionServer
{
  WeakRetained = objc_loadWeakRetained(&self->_connectionServer);

  return WeakRetained;
}

- (APSTopicState)initWithTopicName:(id)name connectionServer:(id)server attributes:(id)attributes topicHash:(id)hash
{
  nameCopy = name;
  serverCopy = server;
  attributesCopy = attributes;
  hashCopy = hash;
  v18.receiver = self;
  v18.super_class = APSTopicState;
  v15 = [(APSTopicState *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_topicName, name);
    objc_storeStrong(&v16->_topicHash, hash);
    objc_storeWeak(&v16->_connectionServer, serverCopy);
    objc_storeStrong(&v16->_attributes, attributes);
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

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_10;
  }

  if (self == equalCopy)
  {
    LOBYTE(v15) = 1;
    goto LABEL_28;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    topicName = [(APSTopicState *)v6 topicName];
    topicName2 = [(APSTopicState *)self topicName];
    if ([topicName isEqualToString:topicName2])
    {
      topicHash = [(APSTopicState *)v6 topicHash];
      topicHash2 = [(APSTopicState *)self topicHash];
      if ([topicHash isEqualToData:topicHash2])
      {
        connectionServer = [(APSTopicState *)v6 connectionServer];
        connectionServer2 = [(APSTopicState *)self connectionServer];
        if ([connectionServer isEqual:connectionServer2])
        {
          attributes = [(APSTopicState *)v6 attributes];
          filter = [attributes filter];
          attributes2 = [(APSTopicState *)self attributes];
          if (filter == [attributes2 filter])
          {
            attributes3 = [(APSTopicState *)v6 attributes];
            isDarkWakeEnabled = [attributes3 isDarkWakeEnabled];
            attributes4 = [(APSTopicState *)self attributes];
            if (isDarkWakeEnabled == [attributes4 isDarkWakeEnabled])
            {
              attributes5 = [(APSTopicState *)v6 attributes];
              isPushWakeEnabled = [attributes5 isPushWakeEnabled];
              attributes6 = [(APSTopicState *)self attributes];
              if (isPushWakeEnabled == [attributes6 isPushWakeEnabled])
              {
                attributes7 = [(APSTopicState *)v6 attributes];
                isCriticalWakeEnabled = [attributes7 isCriticalWakeEnabled];
                attributes8 = [(APSTopicState *)self attributes];
                if (isCriticalWakeEnabled == [attributes8 isCriticalWakeEnabled])
                {
                  attributes9 = [(APSTopicState *)v6 attributes];
                  isUltraConstrainedEnabled = [attributes9 isUltraConstrainedEnabled];
                  attributes10 = [(APSTopicState *)self attributes];
                  v15 = isUltraConstrainedEnabled ^ [attributes10 isUltraConstrainedEnabled] ^ 1;
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