@interface VCCaptionsTranscriptionBlob
- (BOOL)isEqual:(id)a3;
- (VCCaptionsTranscriptionBlob)initWithSFTranscription:(id)a3 final:(BOOL)a4 isLocal:(BOOL)a5 utteranceNumber:(unsigned int)a6 updateNumber:(unsigned int)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSegments:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)setHasIsLocal:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation VCCaptionsTranscriptionBlob

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(VCCaptionsTranscriptionBlob *)self setSegments:0];
  v3.receiver = self;
  v3.super_class = VCCaptionsTranscriptionBlob;
  [(VCCaptionsTranscriptionBlob *)&v3 dealloc];
}

- (void)setHasIsLocal:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addSegments:(id)a3
{
  segments = self->_segments;
  if (!segments)
  {
    segments = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_segments = segments;
  }

  [(NSMutableArray *)segments addObject:a3];
}

- (id)description
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = VCCaptionsTranscriptionBlob;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", -[VCCaptionsTranscriptionBlob description](&v3, sel_description), -[VCCaptionsTranscriptionBlob dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_utteranceNumber), @"utteranceNumber"}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", self->_updateNumber), @"updateNumber"}];
  has = self->_has;
  if ((has & 2) != 0)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_isLocal), @"isLocal"}];
    has = self->_has;
  }

  if (has)
  {
    [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", self->_isFinal), @"isFinal"}];
  }

  if ([(NSMutableArray *)self->_segments count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_segments, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    segments = self->_segments;
    v7 = [(NSMutableArray *)segments countByEnumeratingWithState:&v13 objects:v12 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(segments);
          }

          [v5 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)segments countByEnumeratingWithState:&v13 objects:v12 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"segments"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteBOOLField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  segments = self->_segments;
  v6 = [(NSMutableArray *)segments countByEnumeratingWithState:&v11 objects:v10 count:16];
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
          objc_enumerationMutation(segments);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)segments countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 5) = self->_utteranceNumber;
  *(a3 + 4) = self->_updateNumber;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(a3 + 25) = self->_isLocal;
    *(a3 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(a3 + 24) = self->_isFinal;
    *(a3 + 28) |= 1u;
  }

  if ([(VCCaptionsTranscriptionBlob *)self segmentsCount])
  {
    [a3 clearSegments];
    v6 = [(VCCaptionsTranscriptionBlob *)self segmentsCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        [a3 addSegments:{-[VCCaptionsTranscriptionBlob segmentsAtIndex:](self, "segmentsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  *(v5 + 20) = self->_utteranceNumber;
  *(v5 + 16) = self->_updateNumber;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 25) = self->_isLocal;
    *(v5 + 28) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 24) = self->_isFinal;
    *(v5 + 28) |= 1u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  segments = self->_segments;
  v9 = [(NSMutableArray *)segments countByEnumeratingWithState:&v16 objects:v15 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(segments);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:a3];
        [v6 addSegments:v13];
      }

      v10 = [(NSMutableArray *)segments countByEnumeratingWithState:&v16 objects:v15 count:16];
    }

    while (v10);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v5 = [a3 isMemberOfClass:objc_opt_class()];
  if (!v5)
  {
    return v5;
  }

  if (self->_utteranceNumber != *(a3 + 5) || self->_updateNumber != *(a3 + 4))
  {
    goto LABEL_19;
  }

  v6 = *(a3 + 28);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(a3 + 28) & 2) == 0)
    {
      goto LABEL_19;
    }

    if (self->_isLocal)
    {
      if ((*(a3 + 25) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (*(a3 + 25))
    {
      goto LABEL_19;
    }
  }

  else if ((*(a3 + 28) & 2) != 0)
  {
    goto LABEL_19;
  }

  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((*(a3 + 28) & 1) == 0)
  {
    goto LABEL_19;
  }

  v6 = *(a3 + 24);
  if (!self->_isFinal)
  {
LABEL_7:
    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_19:
    LOBYTE(v5) = 0;
    return v5;
  }

  if ((*(a3 + 24) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  segments = self->_segments;
  if (segments | *(a3 + 1))
  {

    LOBYTE(v5) = [(NSMutableArray *)segments isEqual:?];
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v8 = 2654435761 * self->_isLocal;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }

  v8 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = 2654435761 * self->_isFinal;
LABEL_6:
  utteranceNumber = self->_utteranceNumber;
  updateNumber = self->_updateNumber;
  return (2654435761 * updateNumber) ^ (2654435761 * utteranceNumber) ^ v8 ^ v9 ^ [(NSMutableArray *)self->_segments hash:v3];
}

- (void)mergeFrom:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  self->_utteranceNumber = *(a3 + 5);
  self->_updateNumber = *(a3 + 4);
  v4 = *(a3 + 28);
  if ((v4 & 2) != 0)
  {
    self->_isLocal = *(a3 + 25);
    *&self->_has |= 2u;
    v4 = *(a3 + 28);
  }

  if (v4)
  {
    self->_isFinal = *(a3 + 24);
    *&self->_has |= 1u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(a3 + 1);
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

        [(VCCaptionsTranscriptionBlob *)self addSegments:*(*(&v11 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v10 count:16];
    }

    while (v7);
  }
}

- (VCCaptionsTranscriptionBlob)initWithSFTranscription:(id)a3 final:(BOOL)a4 isLocal:(BOOL)a5 utteranceNumber:(unsigned int)a6 updateNumber:(unsigned int)a7
{
  v28 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = VCCaptionsTranscriptionBlob;
  v10 = [(VCCaptionsTranscriptionBlob *)&v22 init:a3];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(objc_msgSend(a3, "segments"), "count")}];
    v10->_segments = v11;
    if (!v11)
    {
LABEL_12:

      return 0;
    }

    v21 = a5;
    v12 = [objc_msgSend(a3 "segments")];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = [a3 segments];
    v14 = [v13 countByEnumeratingWithState:&v24 objects:v23 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v25;
LABEL_5:
      v17 = 0;
      while (1)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [[VCCaptionsSegmentBlob alloc] initWithSFTranscriptionSegment:*(*(&v24 + 1) + 8 * v17) isLast:*(*(&v24 + 1) + 8 * v17) == v12];
        if (!v18)
        {
          goto LABEL_12;
        }

        v19 = v18;
        [(NSMutableArray *)v10->_segments addObject:v18];

        if (v15 == ++v17)
        {
          v15 = [v13 countByEnumeratingWithState:&v24 objects:v23 count:16];
          if (v15)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    v10->_isFinal = a4;
    *&v10->_has |= 1u;
    v10->_isLocal = v21;
    *&v10->_has |= 2u;
  }

  return v10;
}

@end