@interface HMPBActionContainer
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMPBActionContainer

- (void)mergeFrom:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 44))
  {
    self->_type = *(v4 + 10);
    *&self->_has |= 1u;
  }

  characteristicWriteAction = self->_characteristicWriteAction;
  v7 = v5[1];
  v24 = v5;
  if (characteristicWriteAction)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(HMPBCharacteristicWriteAction *)characteristicWriteAction mergeFrom:?];
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    [(HMPBActionContainer *)self setCharacteristicWriteAction:?];
  }

  v5 = v24;
LABEL_9:
  mediaPlaybackAction = self->_mediaPlaybackAction;
  v9 = v5[2];
  if (mediaPlaybackAction)
  {
    if (!v9)
    {
      goto LABEL_30;
    }

    v10 = v9;
    v11 = *(v10 + 1);
    if (v11)
    {
      objc_storeStrong(&mediaPlaybackAction->_actionUUID, v11);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v12 = *(v10 + 3);
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [(HMPBMediaPlaybackAction *)mediaPlaybackAction addMediaProfiles:?];
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v14);
    }

    if (*(v10 + 48))
    {
      mediaPlaybackAction->_mediaPlaybackState = *(v10 + 4);
      *&mediaPlaybackAction->_has |= 1u;
    }

    v17 = *(v10 + 5);
    if (v17)
    {
      objc_storeStrong(&mediaPlaybackAction->_volume, v17);
    }

    v18 = *(v10 + 4);
    if (v18)
    {
      objc_storeStrong(&mediaPlaybackAction->_playbackArchive, v18);
    }
  }

  else
  {
    if (!v9)
    {
      goto LABEL_30;
    }

    [(HMPBActionContainer *)self setMediaPlaybackAction:?];
  }

  v5 = v24;
LABEL_30:
  naturalLightingAction = self->_naturalLightingAction;
  v20 = v5[4];
  if (naturalLightingAction)
  {
    if (!v20)
    {
      goto LABEL_36;
    }

    [(HMPBNaturalLightingAction *)naturalLightingAction mergeFrom:?];
  }

  else
  {
    if (!v20)
    {
      goto LABEL_36;
    }

    [(HMPBActionContainer *)self setNaturalLightingAction:?];
  }

  v5 = v24;
LABEL_36:
  matterCommandAction = self->_matterCommandAction;
  v22 = v5[3];
  if (matterCommandAction)
  {
    if (!v22)
    {
      goto LABEL_42;
    }

    matterCommandAction = [(HMPBMatterCommandAction *)matterCommandAction mergeFrom:?];
  }

  else
  {
    if (!v22)
    {
      goto LABEL_42;
    }

    matterCommandAction = [(HMPBActionContainer *)self setMatterCommandAction:?];
  }

  v5 = v24;
LABEL_42:
  v23 = *MEMORY[0x1E69E9840];

  MEMORY[0x1EEE66BB8](matterCommandAction, v5);
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_type;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(HMPBCharacteristicWriteAction *)self->_characteristicWriteAction hash]^ v3;
  v5 = [(HMPBMediaPlaybackAction *)self->_mediaPlaybackAction hash];
  v6 = v4 ^ v5 ^ [(HMPBNaturalLightingAction *)self->_naturalLightingAction hash];
  return v6 ^ [(HMPBMatterCommandAction *)self->_matterCommandAction hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(v4 + 44);
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_type != *(v4 + 10))
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 44))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  characteristicWriteAction = self->_characteristicWriteAction;
  if (characteristicWriteAction | *(v4 + 1) && ![(HMPBCharacteristicWriteAction *)characteristicWriteAction isEqual:?])
  {
    goto LABEL_15;
  }

  mediaPlaybackAction = self->_mediaPlaybackAction;
  if (mediaPlaybackAction | *(v4 + 2))
  {
    if (![(HMPBMediaPlaybackAction *)mediaPlaybackAction isEqual:?])
    {
      goto LABEL_15;
    }
  }

  naturalLightingAction = self->_naturalLightingAction;
  if (naturalLightingAction | *(v4 + 4))
  {
    if (![(HMPBNaturalLightingAction *)naturalLightingAction isEqual:?])
    {
      goto LABEL_15;
    }
  }

  matterCommandAction = self->_matterCommandAction;
  if (matterCommandAction | *(v4 + 3))
  {
    v10 = [(HMPBMatterCommandAction *)matterCommandAction isEqual:?];
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
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 40) = self->_type;
    *(v5 + 44) |= 1u;
  }

  v7 = [(HMPBCharacteristicWriteAction *)self->_characteristicWriteAction copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(HMPBMediaPlaybackAction *)self->_mediaPlaybackAction copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(HMPBNaturalLightingAction *)self->_naturalLightingAction copyWithZone:a3];
  v12 = v6[4];
  v6[4] = v11;

  v13 = [(HMPBMatterCommandAction *)self->_matterCommandAction copyWithZone:a3];
  v14 = v6[3];
  v6[3] = v13;

  return v6;
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[10] = self->_type;
    *(v4 + 44) |= 1u;
  }

  v5 = v4;
  if (self->_characteristicWriteAction)
  {
    [v4 setCharacteristicWriteAction:?];
    v4 = v5;
  }

  if (self->_mediaPlaybackAction)
  {
    [v5 setMediaPlaybackAction:?];
    v4 = v5;
  }

  if (self->_naturalLightingAction)
  {
    [v5 setNaturalLightingAction:?];
    v4 = v5;
  }

  if (self->_matterCommandAction)
  {
    [v5 setMatterCommandAction:?];
    v4 = v5;
  }
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_characteristicWriteAction)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_mediaPlaybackAction)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_naturalLightingAction)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_matterCommandAction)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = self->_type - 1;
    if (v4 >= 4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v5 = off_1E754DE50[v4];
    }

    [v3 setObject:v5 forKey:@"type"];
  }

  characteristicWriteAction = self->_characteristicWriteAction;
  if (characteristicWriteAction)
  {
    v7 = [(HMPBCharacteristicWriteAction *)characteristicWriteAction dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"characteristicWriteAction"];
  }

  mediaPlaybackAction = self->_mediaPlaybackAction;
  if (mediaPlaybackAction)
  {
    v9 = [(HMPBMediaPlaybackAction *)mediaPlaybackAction dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"mediaPlaybackAction"];
  }

  naturalLightingAction = self->_naturalLightingAction;
  if (naturalLightingAction)
  {
    v11 = [(HMPBNaturalLightingAction *)naturalLightingAction dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"naturalLightingAction"];
  }

  matterCommandAction = self->_matterCommandAction;
  if (matterCommandAction)
  {
    v13 = [(HMPBMatterCommandAction *)matterCommandAction dictionaryRepresentation];
    [v3 setObject:v13 forKey:@"matterCommandAction"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMPBActionContainer;
  v4 = [(HMPBActionContainer *)&v8 description];
  v5 = [(HMPBActionContainer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CharacteristicWriteAction"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MediaPlaybackAction"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"NaturalLightingAction"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"MatterCommandAction"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 1;
  }
}

@end