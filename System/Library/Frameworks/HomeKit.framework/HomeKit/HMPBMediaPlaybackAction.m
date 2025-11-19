@interface HMPBMediaPlaybackAction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (uint64_t)addMediaProfiles:(uint64_t)a1;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation HMPBMediaPlaybackAction

- (unint64_t)hash
{
  v3 = [(NSData *)self->_actionUUID hash];
  v4 = [(NSMutableArray *)self->_mediaProfiles hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_mediaPlaybackState;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(NSData *)self->_volume hash];
  return v6 ^ [(NSData *)self->_playbackArchive hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  actionUUID = self->_actionUUID;
  if (actionUUID | *(v4 + 1))
  {
    if (![(NSData *)actionUUID isEqual:?])
    {
      goto LABEL_15;
    }
  }

  mediaProfiles = self->_mediaProfiles;
  if (mediaProfiles | *(v4 + 3))
  {
    if (![(NSMutableArray *)mediaProfiles isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v7 = *(v4 + 48);
  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_mediaPlaybackState != *(v4 + 4))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  volume = self->_volume;
  if (volume | *(v4 + 5) && ![(NSData *)volume isEqual:?])
  {
    goto LABEL_15;
  }

  playbackArchive = self->_playbackArchive;
  if (playbackArchive | *(v4 + 4))
  {
    v10 = [(NSData *)playbackArchive isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_actionUUID copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_mediaProfiles;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v20 + 1) + 8 * v12) copyWithZone:{a3, v20}];
        [(HMPBMediaPlaybackAction *)v5 addMediaProfiles:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  if (*&self->_has)
  {
    *(v5 + 16) = self->_mediaPlaybackState;
    *(v5 + 48) |= 1u;
  }

  v14 = [(NSData *)self->_volume copyWithZone:a3, v20];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  v16 = [(NSData *)self->_playbackArchive copyWithZone:a3];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (uint64_t)addMediaProfiles:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 24);
    v9 = v4;
    if (!v5)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = *(a1 + 24);
      *(a1 + 24) = v6;

      v5 = *(a1 + 24);
    }

    v3 = [v5 addObject:v9];
    v4 = v9;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_actionUUID)
  {
    PBDataWriterWriteDataField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_mediaProfiles;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteDataField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    mediaPlaybackState = self->_mediaPlaybackState;
    PBDataWriterWriteInt32Field();
  }

  if (self->_volume)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_playbackArchive)
  {
    PBDataWriterWriteDataField();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  actionUUID = self->_actionUUID;
  if (actionUUID)
  {
    [v3 setObject:actionUUID forKey:@"actionUUID"];
  }

  mediaProfiles = self->_mediaProfiles;
  if (mediaProfiles)
  {
    [v4 setObject:mediaProfiles forKey:@"mediaProfiles"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInt:self->_mediaPlaybackState];
    [v4 setObject:v7 forKey:@"mediaPlaybackState"];
  }

  volume = self->_volume;
  if (volume)
  {
    [v4 setObject:volume forKey:@"volume"];
  }

  playbackArchive = self->_playbackArchive;
  if (playbackArchive)
  {
    [v4 setObject:playbackArchive forKey:@"playbackArchive"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMPBMediaPlaybackAction;
  v4 = [(HMPBMediaPlaybackAction *)&v8 description];
  v5 = [(HMPBMediaPlaybackAction *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

@end