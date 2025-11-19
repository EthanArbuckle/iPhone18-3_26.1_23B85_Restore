@interface HMMediaGroupProtoMediaParticipantData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBackupGroups:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HMMediaGroupProtoMediaParticipantData

- (void)mergeFrom:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  destination = self->_destination;
  v6 = *(v4 + 2);
  if (destination)
  {
    if (v6)
    {
      [(HMMediaGroupProtoMediaDestination *)destination mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HMMediaGroupProtoMediaParticipantData *)self setDestination:?];
  }

  destinationController = self->_destinationController;
  v8 = *(v4 + 3);
  if (destinationController)
  {
    if (v8)
    {
      [(HMMediaGroupProtoMediaDestinationControllerData *)destinationController mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(HMMediaGroupProtoMediaParticipantData *)self setDestinationController:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(v4 + 1);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(HMMediaGroupProtoMediaParticipantData *)self addBackupGroups:*(*(&v15 + 1) + 8 * i), v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(HMMediaGroupProtoMediaDestination *)self->_destination hash];
  v4 = [(HMMediaGroupProtoMediaDestinationControllerData *)self->_destinationController hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_backupGroups hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((destination = self->_destination, !(destination | v4[2])) || -[HMMediaGroupProtoMediaDestination isEqual:](destination, "isEqual:")) && ((destinationController = self->_destinationController, !(destinationController | v4[3])) || -[HMMediaGroupProtoMediaDestinationControllerData isEqual:](destinationController, "isEqual:")))
  {
    backupGroups = self->_backupGroups;
    if (backupGroups | v4[1])
    {
      v8 = [(NSMutableArray *)backupGroups isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HMMediaGroupProtoMediaDestination *)self->_destination copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(HMMediaGroupProtoMediaDestinationControllerData *)self->_destinationController copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_backupGroups;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * v14) copyWithZone:{a3, v18}];
        [v5 addBackupGroups:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_destination)
  {
    [v8 setDestination:?];
  }

  if (self->_destinationController)
  {
    [v8 setDestinationController:?];
  }

  if ([(HMMediaGroupProtoMediaParticipantData *)self backupGroupsCount])
  {
    [v8 clearBackupGroups];
    v4 = [(HMMediaGroupProtoMediaParticipantData *)self backupGroupsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HMMediaGroupProtoMediaParticipantData *)self backupGroupsAtIndex:i];
        [v8 addBackupGroups:v7];
      }
    }
  }
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_destination)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_destinationController)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_backupGroups;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteDataField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  destination = self->_destination;
  if (destination)
  {
    v5 = [(HMMediaGroupProtoMediaDestination *)destination dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"destination"];
  }

  destinationController = self->_destinationController;
  if (destinationController)
  {
    v7 = [(HMMediaGroupProtoMediaDestinationControllerData *)destinationController dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"destinationController"];
  }

  backupGroups = self->_backupGroups;
  if (backupGroups)
  {
    [v3 setObject:backupGroups forKey:@"backupGroups"];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMMediaGroupProtoMediaParticipantData;
  v4 = [(HMMediaGroupProtoMediaParticipantData *)&v8 description];
  v5 = [(HMMediaGroupProtoMediaParticipantData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addBackupGroups:(id)a3
{
  v4 = a3;
  backupGroups = self->_backupGroups;
  v8 = v4;
  if (!backupGroups)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_backupGroups;
    self->_backupGroups = v6;

    v4 = v8;
    backupGroups = self->_backupGroups;
  }

  [(NSMutableArray *)backupGroups addObject:v4];
}

@end