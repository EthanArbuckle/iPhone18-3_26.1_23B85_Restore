@interface PKPublicChannel
- (BOOL)isEqual:(id)equal;
- (NSDictionary)dictionaryRepresentation;
- (PKPublicChannel)initWithChannelID:(id)d channelTopic:(id)topic environment:(id)environment tokenName:(id)name checkpoint:(unint64_t)checkpoint;
- (PKPublicChannel)initWithDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
- (void)setCheckpoint:(unint64_t)checkpoint;
@end

@implementation PKPublicChannel

- (PKPublicChannel)initWithChannelID:(id)d channelTopic:(id)topic environment:(id)environment tokenName:(id)name checkpoint:(unint64_t)checkpoint
{
  dCopy = d;
  topicCopy = topic;
  environmentCopy = environment;
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = PKPublicChannel;
  v17 = [(PKPublicChannel *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_channelID, d);
    objc_storeStrong(&v18->_channelTopic, topic);
    objc_storeStrong(&v18->_environment, environment);
    objc_storeStrong(&v18->_tokenName, name);
    v18->_checkpoint = checkpoint;
  }

  return v18;
}

- (PKPublicChannel)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"channel_id"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"channel_id"];
  }

  else
  {
    v7 = 0;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"channel_topic"];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"channel_topic"];
  }

  else
  {
    v10 = 0;
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"environment"];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    v13 = [dictionaryCopy objectForKeyedSubscript:@"environment"];
  }

  else
  {
    v13 = 0;
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"token_name"];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    v16 = [dictionaryCopy objectForKeyedSubscript:@"token_name"];
  }

  else
  {
    v16 = 0;
  }

  v17 = [dictionaryCopy objectForKeyedSubscript:@"checkpoint"];
  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if ((v18 & 1) == 0)
  {
    v20 = 0;
LABEL_18:
    NSLog(&cfstr_CouldNotCreate.isa, dictionaryCopy);
    selfCopy = 0;
    goto LABEL_19;
  }

  v19 = [dictionaryCopy objectForKeyedSubscript:@"checkpoint"];
  v20 = v19;
  if (!v7 || !v19)
  {
    goto LABEL_18;
  }

  self = -[PKPublicChannel initWithChannelID:channelTopic:environment:tokenName:checkpoint:](self, "initWithChannelID:channelTopic:environment:tokenName:checkpoint:", v7, v10, v13, v16, [v19 unsignedLongLongValue]);
  selfCopy = self;
LABEL_19:

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  channelID = [(PKPublicChannel *)self channelID];
  channelTopic = [(PKPublicChannel *)self channelTopic];
  environment = [(PKPublicChannel *)self environment];
  tokenName = [(PKPublicChannel *)self tokenName];
  v8 = [v3 stringWithFormat:@"<PKGlobalChannel %p>: channelID %@ channelTopic %@ environment %@ tokenName %@ checkpoint %llu", self, channelID, channelTopic, environment, tokenName, -[PKPublicChannel checkpoint](self, "checkpoint")];

  return v8;
}

- (void)setCheckpoint:(unint64_t)checkpoint
{
  if (self->_checkpoint <= checkpoint)
  {
    self->_checkpoint = checkpoint;
  }
}

- (unint64_t)hash
{
  channelID = [(PKPublicChannel *)self channelID];
  v4 = [channelID hash];
  channelTopic = [(PKPublicChannel *)self channelTopic];
  v6 = [channelTopic hash] ^ v4;
  environment = [(PKPublicChannel *)self environment];
  v8 = [environment hash];
  tokenName = [(PKPublicChannel *)self tokenName];
  v10 = v8 ^ [tokenName hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    channelID = [v5 channelID];
    channelID2 = [(PKPublicChannel *)self channelID];
    if ([channelID isEqualToString:channelID2])
    {
      channelTopic = [v5 channelTopic];
      channelTopic2 = [(PKPublicChannel *)self channelTopic];
      if ([channelTopic isEqualToString:channelTopic2])
      {
        environment = [v5 environment];
        environment2 = [(PKPublicChannel *)self environment];
        if ([environment isEqualToString:environment2])
        {
          [v5 tokenName];
          v12 = v16 = environment;
          tokenName = [(PKPublicChannel *)self tokenName];
          v14 = [v12 isEqualToString:tokenName];

          environment = v16;
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSDictionary)dictionaryRepresentation
{
  v12[5] = *MEMORY[0x277D85DE8];
  v11[0] = @"channel_id";
  channelID = [(PKPublicChannel *)self channelID];
  v12[0] = channelID;
  v11[1] = @"channel_topic";
  channelTopic = [(PKPublicChannel *)self channelTopic];
  v12[1] = channelTopic;
  v11[2] = @"environment";
  environment = [(PKPublicChannel *)self environment];
  v12[2] = environment;
  v11[3] = @"token_name";
  tokenName = [(PKPublicChannel *)self tokenName];
  v12[3] = tokenName;
  v11[4] = @"checkpoint";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PKPublicChannel checkpoint](self, "checkpoint")}];
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end