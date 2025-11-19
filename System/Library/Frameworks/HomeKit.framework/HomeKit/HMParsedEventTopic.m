@interface HMParsedEventTopic
- (HMParsedEventTopic)initWithTopic:(id)a3;
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
  v4 = [(HMParsedEventTopic *)self homeUUID];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"-";
  }

  v7 = [(HMParsedEventTopic *)self accessoryUUID];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"-";
  }

  v10 = [(HMParsedEventTopic *)self topicSuffix];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
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
  v2 = [(HMParsedEventTopic *)self topicSuffix];
  v3 = [HMHomeEventTopic suffixIDFromTopicSuffix:v2];

  return v3;
}

- (unint64_t)accessoryEventTopicSuffixID
{
  v2 = [(HMParsedEventTopic *)self topicSuffix];
  v3 = [HMAccessoryEventTopic suffixIDFromTopicSuffix:v2];

  return v3;
}

- (id)asIndexAccessoryTopic
{
  if (![(HMParsedEventTopic *)self isIndexTopic])
  {
    goto LABEL_5;
  }

  v3 = [(HMParsedEventTopic *)self homeUUID];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [(HMParsedEventTopic *)self accessoryUUID];

  if (v5)
  {
    v3 = self;
  }

  else
  {
LABEL_5:
    v3 = 0;
  }

LABEL_6:

  return v3;
}

- (id)asIndexHomeTopic
{
  if (![(HMParsedEventTopic *)self isIndexTopic])
  {
    goto LABEL_4;
  }

  v3 = [(HMParsedEventTopic *)self homeUUID];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [(HMParsedEventTopic *)self accessoryUUID];

  if (!v5)
  {
    v3 = self;
  }

  else
  {
LABEL_4:
    v3 = 0;
  }

LABEL_5:

  return v3;
}

- (id)asHomeEventTopic
{
  if ([(HMParsedEventTopic *)self isIndexTopic])
  {
    goto LABEL_4;
  }

  v3 = [(HMParsedEventTopic *)self homeUUID];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = [(HMParsedEventTopic *)self accessoryUUID];

  if (v5)
  {
LABEL_4:
    v3 = 0;
  }

  else
  {
    v3 = self;
  }

LABEL_5:

  return v3;
}

- (id)asMediaGroupSettingTopic
{
  if ([(HMParsedEventTopic *)self isIndexTopic])
  {
    goto LABEL_2;
  }

  v3 = [(HMParsedEventTopic *)self homeUUID];
  if (v3)
  {
    v4 = v3;
    v5 = [(HMParsedEventTopic *)self mediaGroupUUID];
    if (v5)
    {
      v6 = v5;
      v7 = [(HMParsedEventTopic *)self mediaGroupSettingKeyPath];

      if (v7)
      {
        v3 = self;
        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_2:
    v3 = 0;
  }

LABEL_7:

  return v3;
}

- (id)asMediaSystemSettingTopic
{
  if ([(HMParsedEventTopic *)self isIndexTopic])
  {
    goto LABEL_2;
  }

  v3 = [(HMParsedEventTopic *)self homeUUID];
  if (v3)
  {
    v4 = v3;
    v5 = [(HMParsedEventTopic *)self mediaSystemUUID];
    if (v5)
    {
      v6 = v5;
      v7 = [(HMParsedEventTopic *)self mediaSystemSettingKeyPath];

      if (v7)
      {
        v3 = self;
        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_2:
    v3 = 0;
  }

LABEL_7:

  return v3;
}

- (id)asAccessorySettingTopic
{
  v3 = [(HMParsedEventTopic *)self asAccessoryTopic];
  if (v3)
  {
    v4 = v3;
    v5 = [(HMParsedEventTopic *)self accessorySettingKeyPath];

    if (v5)
    {
      v3 = self;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (id)asAccessoryTopic
{
  if ([(HMParsedEventTopic *)self isIndexTopic])
  {
    goto LABEL_2;
  }

  v3 = [(HMParsedEventTopic *)self accessoryUUID];
  if (v3)
  {
    v4 = v3;
    v5 = [(HMParsedEventTopic *)self homeUUID];

    if (!v5)
    {
LABEL_2:
      v3 = 0;
      goto LABEL_6;
    }

    v3 = self;
  }

LABEL_6:

  return v3;
}

- (HMParsedEventTopic)initWithTopic:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMParsedEventTopic;
  v6 = [(HMParsedEventTopic *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_originalTopic, a3);
  }

  return v7;
}

@end