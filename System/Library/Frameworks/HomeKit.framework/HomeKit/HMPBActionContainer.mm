@interface HMPBActionContainer
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMPBActionContainer

- (void)mergeFrom:(id)from
{
  v30 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 44))
  {
    self->_type = *(fromCopy + 10);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  v5 = *(equalCopy + 44);
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_type != *(equalCopy + 10))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 44))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  characteristicWriteAction = self->_characteristicWriteAction;
  if (characteristicWriteAction | *(equalCopy + 1) && ![(HMPBCharacteristicWriteAction *)characteristicWriteAction isEqual:?])
  {
    goto LABEL_15;
  }

  mediaPlaybackAction = self->_mediaPlaybackAction;
  if (mediaPlaybackAction | *(equalCopy + 2))
  {
    if (![(HMPBMediaPlaybackAction *)mediaPlaybackAction isEqual:?])
    {
      goto LABEL_15;
    }
  }

  naturalLightingAction = self->_naturalLightingAction;
  if (naturalLightingAction | *(equalCopy + 4))
  {
    if (![(HMPBNaturalLightingAction *)naturalLightingAction isEqual:?])
    {
      goto LABEL_15;
    }
  }

  matterCommandAction = self->_matterCommandAction;
  if (matterCommandAction | *(equalCopy + 3))
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 40) = self->_type;
    *(v5 + 44) |= 1u;
  }

  v7 = [(HMPBCharacteristicWriteAction *)self->_characteristicWriteAction copyWithZone:zone];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(HMPBMediaPlaybackAction *)self->_mediaPlaybackAction copyWithZone:zone];
  v10 = v6[2];
  v6[2] = v9;

  v11 = [(HMPBNaturalLightingAction *)self->_naturalLightingAction copyWithZone:zone];
  v12 = v6[4];
  v6[4] = v11;

  v13 = [(HMPBMatterCommandAction *)self->_matterCommandAction copyWithZone:zone];
  v14 = v6[3];
  v6[3] = v13;

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[10] = self->_type;
    *(toCopy + 44) |= 1u;
  }

  v5 = toCopy;
  if (self->_characteristicWriteAction)
  {
    [toCopy setCharacteristicWriteAction:?];
    toCopy = v5;
  }

  if (self->_mediaPlaybackAction)
  {
    [v5 setMediaPlaybackAction:?];
    toCopy = v5;
  }

  if (self->_naturalLightingAction)
  {
    [v5 setNaturalLightingAction:?];
    toCopy = v5;
  }

  if (self->_matterCommandAction)
  {
    [v5 setMatterCommandAction:?];
    toCopy = v5;
  }
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_characteristicWriteAction)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_mediaPlaybackAction)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_naturalLightingAction)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_matterCommandAction)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
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

    [dictionary setObject:v5 forKey:@"type"];
  }

  characteristicWriteAction = self->_characteristicWriteAction;
  if (characteristicWriteAction)
  {
    dictionaryRepresentation = [(HMPBCharacteristicWriteAction *)characteristicWriteAction dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"characteristicWriteAction"];
  }

  mediaPlaybackAction = self->_mediaPlaybackAction;
  if (mediaPlaybackAction)
  {
    dictionaryRepresentation2 = [(HMPBMediaPlaybackAction *)mediaPlaybackAction dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"mediaPlaybackAction"];
  }

  naturalLightingAction = self->_naturalLightingAction;
  if (naturalLightingAction)
  {
    dictionaryRepresentation3 = [(HMPBNaturalLightingAction *)naturalLightingAction dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"naturalLightingAction"];
  }

  matterCommandAction = self->_matterCommandAction;
  if (matterCommandAction)
  {
    dictionaryRepresentation4 = [(HMPBMatterCommandAction *)matterCommandAction dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"matterCommandAction"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMPBActionContainer;
  v4 = [(HMPBActionContainer *)&v8 description];
  dictionaryRepresentation = [(HMPBActionContainer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"CharacteristicWriteAction"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"MediaPlaybackAction"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"NaturalLightingAction"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"MatterCommandAction"])
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