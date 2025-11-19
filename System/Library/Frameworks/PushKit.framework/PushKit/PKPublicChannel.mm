@interface PKPublicChannel
- (BOOL)isEqual:(id)a3;
- (NSDictionary)dictionaryRepresentation;
- (PKPublicChannel)initWithChannelID:(id)a3 channelTopic:(id)a4 environment:(id)a5 tokenName:(id)a6 checkpoint:(unint64_t)a7;
- (PKPublicChannel)initWithDictionary:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)setCheckpoint:(unint64_t)a3;
@end

@implementation PKPublicChannel

- (PKPublicChannel)initWithChannelID:(id)a3 channelTopic:(id)a4 environment:(id)a5 tokenName:(id)a6 checkpoint:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = PKPublicChannel;
  v17 = [(PKPublicChannel *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_channelID, a3);
    objc_storeStrong(&v18->_channelTopic, a4);
    objc_storeStrong(&v18->_environment, a5);
    objc_storeStrong(&v18->_tokenName, a6);
    v18->_checkpoint = a7;
  }

  return v18;
}

- (PKPublicChannel)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"channel_id"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v4 objectForKeyedSubscript:@"channel_id"];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v4 objectForKeyedSubscript:@"channel_topic"];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    v10 = [v4 objectForKeyedSubscript:@"channel_topic"];
  }

  else
  {
    v10 = 0;
  }

  v11 = [v4 objectForKeyedSubscript:@"environment"];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    v13 = [v4 objectForKeyedSubscript:@"environment"];
  }

  else
  {
    v13 = 0;
  }

  v14 = [v4 objectForKeyedSubscript:@"token_name"];
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    v16 = [v4 objectForKeyedSubscript:@"token_name"];
  }

  else
  {
    v16 = 0;
  }

  v17 = [v4 objectForKeyedSubscript:@"checkpoint"];
  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if ((v18 & 1) == 0)
  {
    v20 = 0;
LABEL_18:
    NSLog(&cfstr_CouldNotCreate.isa, v4);
    v21 = 0;
    goto LABEL_19;
  }

  v19 = [v4 objectForKeyedSubscript:@"checkpoint"];
  v20 = v19;
  if (!v7 || !v19)
  {
    goto LABEL_18;
  }

  self = -[PKPublicChannel initWithChannelID:channelTopic:environment:tokenName:checkpoint:](self, "initWithChannelID:channelTopic:environment:tokenName:checkpoint:", v7, v10, v13, v16, [v19 unsignedLongLongValue]);
  v21 = self;
LABEL_19:

  return v21;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(PKPublicChannel *)self channelID];
  v5 = [(PKPublicChannel *)self channelTopic];
  v6 = [(PKPublicChannel *)self environment];
  v7 = [(PKPublicChannel *)self tokenName];
  v8 = [v3 stringWithFormat:@"<PKGlobalChannel %p>: channelID %@ channelTopic %@ environment %@ tokenName %@ checkpoint %llu", self, v4, v5, v6, v7, -[PKPublicChannel checkpoint](self, "checkpoint")];

  return v8;
}

- (void)setCheckpoint:(unint64_t)a3
{
  if (self->_checkpoint <= a3)
  {
    self->_checkpoint = a3;
  }
}

- (unint64_t)hash
{
  v3 = [(PKPublicChannel *)self channelID];
  v4 = [v3 hash];
  v5 = [(PKPublicChannel *)self channelTopic];
  v6 = [v5 hash] ^ v4;
  v7 = [(PKPublicChannel *)self environment];
  v8 = [v7 hash];
  v9 = [(PKPublicChannel *)self tokenName];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 channelID];
    v7 = [(PKPublicChannel *)self channelID];
    if ([v6 isEqualToString:v7])
    {
      v8 = [v5 channelTopic];
      v9 = [(PKPublicChannel *)self channelTopic];
      if ([v8 isEqualToString:v9])
      {
        v10 = [v5 environment];
        v11 = [(PKPublicChannel *)self environment];
        if ([v10 isEqualToString:v11])
        {
          [v5 tokenName];
          v12 = v16 = v10;
          v13 = [(PKPublicChannel *)self tokenName];
          v14 = [v12 isEqualToString:v13];

          v10 = v16;
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
  v3 = [(PKPublicChannel *)self channelID];
  v12[0] = v3;
  v11[1] = @"channel_topic";
  v4 = [(PKPublicChannel *)self channelTopic];
  v12[1] = v4;
  v11[2] = @"environment";
  v5 = [(PKPublicChannel *)self environment];
  v12[2] = v5;
  v11[3] = @"token_name";
  v6 = [(PKPublicChannel *)self tokenName];
  v12[3] = v6;
  v11[4] = @"checkpoint";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PKPublicChannel checkpoint](self, "checkpoint")}];
  v12[4] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

@end