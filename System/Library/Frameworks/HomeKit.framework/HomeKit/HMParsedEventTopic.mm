@interface HMParsedEventTopic
- (HMParsedEventTopic)initWithTopic:(id)topic;
- (id)asAccessorySettingTopic;
- (id)asAccessoryTopic;
- (id)asHomeEventTopic;
- (id)asIndexAccessoryTopic;
- (id)asIndexHomeTopic;
- (id)asMediaGroupSettingTopic;
- (id)asMediaSystemSettingTopic;
- (id)description;
- (unint64_t)accessoryEventTopicSuffixID;
- (unint64_t)homeEventTopicSuffixID;
@end

@implementation HMParsedEventTopic

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  homeUUID = [(HMParsedEventTopic *)self homeUUID];
  v5 = homeUUID;
  if (homeUUID)
  {
    v6 = homeUUID;
  }

  else
  {
    v6 = @"-";
  }

  accessoryUUID = [(HMParsedEventTopic *)self accessoryUUID];
  v8 = accessoryUUID;
  if (accessoryUUID)
  {
    v9 = accessoryUUID;
  }

  else
  {
    v9 = @"-";
  }

  topicSuffix = [(HMParsedEventTopic *)self topicSuffix];
  v11 = topicSuffix;
  if (topicSuffix)
  {
    v12 = topicSuffix;
  }

  else
  {
    v12 = @"-";
  }

  v13 = [v3 stringWithFormat:@"<HMParsedEventTopic homeUUID: %@ accessoryUUID: %@ topicSuffix: %@>", v6, v9, v12];

  return v13;
}

- (unint64_t)homeEventTopicSuffixID
{
  topicSuffix = [(HMParsedEventTopic *)self topicSuffix];
  v3 = [HMHomeEventTopic suffixIDFromTopicSuffix:topicSuffix];

  return v3;
}

- (unint64_t)accessoryEventTopicSuffixID
{
  topicSuffix = [(HMParsedEventTopic *)self topicSuffix];
  v3 = [HMAccessoryEventTopic suffixIDFromTopicSuffix:topicSuffix];

  return v3;
}

- (id)asIndexAccessoryTopic
{
  if (![(HMParsedEventTopic *)self isIndexTopic])
  {
    goto LABEL_5;
  }

  selfCopy = [(HMParsedEventTopic *)self homeUUID];
  if (!selfCopy)
  {
    goto LABEL_6;
  }

  v4 = selfCopy;
  accessoryUUID = [(HMParsedEventTopic *)self accessoryUUID];

  if (accessoryUUID)
  {
    selfCopy = self;
  }

  else
  {
LABEL_5:
    selfCopy = 0;
  }

LABEL_6:

  return selfCopy;
}

- (id)asIndexHomeTopic
{
  if (![(HMParsedEventTopic *)self isIndexTopic])
  {
    goto LABEL_4;
  }

  selfCopy = [(HMParsedEventTopic *)self homeUUID];
  if (!selfCopy)
  {
    goto LABEL_5;
  }

  v4 = selfCopy;
  accessoryUUID = [(HMParsedEventTopic *)self accessoryUUID];

  if (!accessoryUUID)
  {
    selfCopy = self;
  }

  else
  {
LABEL_4:
    selfCopy = 0;
  }

LABEL_5:

  return selfCopy;
}

- (id)asHomeEventTopic
{
  if ([(HMParsedEventTopic *)self isIndexTopic])
  {
    goto LABEL_4;
  }

  selfCopy = [(HMParsedEventTopic *)self homeUUID];
  if (!selfCopy)
  {
    goto LABEL_5;
  }

  v4 = selfCopy;
  accessoryUUID = [(HMParsedEventTopic *)self accessoryUUID];

  if (accessoryUUID)
  {
LABEL_4:
    selfCopy = 0;
  }

  else
  {
    selfCopy = self;
  }

LABEL_5:

  return selfCopy;
}

- (id)asMediaGroupSettingTopic
{
  if ([(HMParsedEventTopic *)self isIndexTopic])
  {
    goto LABEL_2;
  }

  selfCopy = [(HMParsedEventTopic *)self homeUUID];
  if (selfCopy)
  {
    v4 = selfCopy;
    mediaGroupUUID = [(HMParsedEventTopic *)self mediaGroupUUID];
    if (mediaGroupUUID)
    {
      v6 = mediaGroupUUID;
      mediaGroupSettingKeyPath = [(HMParsedEventTopic *)self mediaGroupSettingKeyPath];

      if (mediaGroupSettingKeyPath)
      {
        selfCopy = self;
        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_2:
    selfCopy = 0;
  }

LABEL_7:

  return selfCopy;
}

- (id)asMediaSystemSettingTopic
{
  if ([(HMParsedEventTopic *)self isIndexTopic])
  {
    goto LABEL_2;
  }

  selfCopy = [(HMParsedEventTopic *)self homeUUID];
  if (selfCopy)
  {
    v4 = selfCopy;
    mediaSystemUUID = [(HMParsedEventTopic *)self mediaSystemUUID];
    if (mediaSystemUUID)
    {
      v6 = mediaSystemUUID;
      mediaSystemSettingKeyPath = [(HMParsedEventTopic *)self mediaSystemSettingKeyPath];

      if (mediaSystemSettingKeyPath)
      {
        selfCopy = self;
        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_2:
    selfCopy = 0;
  }

LABEL_7:

  return selfCopy;
}

- (id)asAccessorySettingTopic
{
  selfCopy = [(HMParsedEventTopic *)self asAccessoryTopic];
  if (selfCopy)
  {
    v4 = selfCopy;
    accessorySettingKeyPath = [(HMParsedEventTopic *)self accessorySettingKeyPath];

    if (accessorySettingKeyPath)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (id)asAccessoryTopic
{
  if ([(HMParsedEventTopic *)self isIndexTopic])
  {
    goto LABEL_2;
  }

  selfCopy = [(HMParsedEventTopic *)self accessoryUUID];
  if (selfCopy)
  {
    v4 = selfCopy;
    homeUUID = [(HMParsedEventTopic *)self homeUUID];

    if (!homeUUID)
    {
LABEL_2:
      selfCopy = 0;
      goto LABEL_6;
    }

    selfCopy = self;
  }

LABEL_6:

  return selfCopy;
}

- (HMParsedEventTopic)initWithTopic:(id)topic
{
  topicCopy = topic;
  v9.receiver = self;
  v9.super_class = HMParsedEventTopic;
  v6 = [(HMParsedEventTopic *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalTopic, topic);
  }

  return v7;
}

@end