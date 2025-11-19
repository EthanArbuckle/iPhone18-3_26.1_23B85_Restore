@interface VCMediaNegotiationBlobVideoPayloadSettings
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addVideoRuleCollections:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCMediaNegotiationBlobVideoPayloadSettings

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCMediaNegotiationBlobVideoPayloadSettings *)self setVideoRuleCollections:0];
  [(VCMediaNegotiationBlobVideoPayloadSettings *)self setFeatureString:0];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobVideoPayloadSettings;
  [(VCMediaNegotiationBlobVideoPayloadSettings *)&v3 dealloc];
}

- (void)addVideoRuleCollections:(id)a3
{
  videoRuleCollections = self->_videoRuleCollections;
  if (!videoRuleCollections)
  {
    videoRuleCollections = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_videoRuleCollections = videoRuleCollections;
  }

  [(NSMutableArray *)videoRuleCollections addObject:a3];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCMediaNegotiationBlobVideoPayloadSettings;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCMediaNegotiationBlobVideoPayloadSettings description](&v3, sel_description), -[VCMediaNegotiationBlobVideoPayloadSettings dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_payload), @"payload"}];
  if ([(NSMutableArray *)self->_videoRuleCollections count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_videoRuleCollections, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    videoRuleCollections = self->_videoRuleCollections;
    v6 = [(NSMutableArray *)videoRuleCollections countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(videoRuleCollections);
          }

          [v4 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v7 = [(NSMutableArray *)videoRuleCollections countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"videoRuleCollections"];
  }

  featureString = self->_featureString;
  if (featureString)
  {
    [v3 setObject:featureString forKey:@"featureString"];
  }

  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_parameterSet), @"parameterSet"}];
  return v3;
}

- (void)writeTo:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  PBDataWriterWriteUint32Field();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  videoRuleCollections = self->_videoRuleCollections;
  v5 = [(NSMutableArray *)videoRuleCollections countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(videoRuleCollections);
        }

        PBDataWriterWriteSubmessage();
      }

      v6 = [(NSMutableArray *)videoRuleCollections countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v6);
  }

  PBDataWriterWriteStringField();
  PBDataWriterWriteUint32Field();
}

- (void)copyTo:(id)a3
{
  *(a3 + 5) = self->_payload;
  if ([(VCMediaNegotiationBlobVideoPayloadSettings *)self videoRuleCollectionsCount])
  {
    [a3 clearVideoRuleCollections];
    v5 = [(VCMediaNegotiationBlobVideoPayloadSettings *)self videoRuleCollectionsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        [a3 addVideoRuleCollections:{-[VCMediaNegotiationBlobVideoPayloadSettings videoRuleCollectionsAtIndex:](self, "videoRuleCollectionsAtIndex:", i)}];
      }
    }
  }

  [a3 setFeatureString:self->_featureString];
  *(a3 + 4) = self->_parameterSet;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 20) = self->_payload;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  videoRuleCollections = self->_videoRuleCollections;
  v7 = [(NSMutableArray *)videoRuleCollections countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(videoRuleCollections);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) copyWithZone:a3];
        [v5 addVideoRuleCollections:v11];
      }

      v8 = [(NSMutableArray *)videoRuleCollections countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v8);
  }

  *(v5 + 8) = [(NSString *)self->_featureString copyWithZone:a3];
  *(v5 + 16) = self->_parameterSet;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (self->_payload == *(a3 + 5))
    {
      videoRuleCollections = self->_videoRuleCollections;
      if (!(videoRuleCollections | *(a3 + 3)) || (v5 = [(NSMutableArray *)videoRuleCollections isEqual:?]) != 0)
      {
        featureString = self->_featureString;
        if (!(featureString | *(a3 + 1)) || (v5 = [(NSString *)featureString isEqual:?]) != 0)
        {
          LOBYTE(v5) = self->_parameterSet == *(a3 + 4);
        }
      }
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_payload;
  v4 = [(NSMutableArray *)self->_videoRuleCollections hash];
  return v4 ^ [(NSString *)self->_featureString hash]^ v3 ^ (2654435761 * self->_parameterSet);
}

- (void)mergeFrom:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  self->_payload = *(a3 + 5);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(a3 + 3);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(VCMediaNegotiationBlobVideoPayloadSettings *)self addVideoRuleCollections:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }

  if (*(a3 + 1))
  {
    [(VCMediaNegotiationBlobVideoPayloadSettings *)self setFeatureString:?];
  }

  self->_parameterSet = *(a3 + 4);
}

@end