@interface INWholeHouseAudioMetadata
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INWholeHouseAudioMetadata)initWithCoder:(id)coder;
- (INWholeHouseAudioMetadata)initWithSpeakerNames:(id)names speakerRooms:(id)rooms permanentNames:(id)permanentNames intentSpeakerNames:(id)speakerNames intentSpeakerRooms:(id)speakerRooms intentDestinationSpeakers:(id)speakers intentPermanentNames:(id)intentPermanentNames spokenEntityTypes:(id)self0 spokenEntityNames:(id)self1 numberOfHomeAutomationWords:(id)self2 isAllSpeakers:(id)self3 isPauseOrStop:(id)self4 isWholeHouseAudioCommand:(id)self5 isInHere:(id)self6 hasExcept:(id)self7 isParticipatingSpeaker:(id)self8;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INWholeHouseAudioMetadata

- (id)_dictionaryRepresentation
{
  v52[16] = *MEMORY[0x1E69E9840];
  speakerNames = self->_speakerNames;
  null = speakerNames;
  v51[0] = @"speakerNames";
  if (!speakerNames)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v52[0] = null;
  v51[1] = @"speakerRooms";
  speakerRooms = self->_speakerRooms;
  v48 = speakerRooms;
  if (!speakerRooms)
  {
    speakerRooms = [MEMORY[0x1E695DFB0] null];
  }

  v52[1] = speakerRooms;
  v51[2] = @"permanentNames";
  permanentNames = self->_permanentNames;
  v46 = permanentNames;
  if (!permanentNames)
  {
    permanentNames = [MEMORY[0x1E695DFB0] null];
  }

  v52[2] = permanentNames;
  v51[3] = @"intentSpeakerNames";
  intentSpeakerNames = self->_intentSpeakerNames;
  v44 = intentSpeakerNames;
  if (!intentSpeakerNames)
  {
    intentSpeakerNames = [MEMORY[0x1E695DFB0] null];
  }

  v52[3] = intentSpeakerNames;
  v51[4] = @"intentSpeakerRooms";
  intentSpeakerRooms = self->_intentSpeakerRooms;
  v42 = intentSpeakerRooms;
  if (!intentSpeakerRooms)
  {
    intentSpeakerRooms = [MEMORY[0x1E695DFB0] null];
  }

  v52[4] = intentSpeakerRooms;
  v51[5] = @"intentDestinationSpeakers";
  intentDestinationSpeakers = self->_intentDestinationSpeakers;
  v40 = intentDestinationSpeakers;
  if (!intentDestinationSpeakers)
  {
    intentDestinationSpeakers = [MEMORY[0x1E695DFB0] null];
  }

  v52[5] = intentDestinationSpeakers;
  v51[6] = @"intentPermanentNames";
  intentPermanentNames = self->_intentPermanentNames;
  v38 = intentPermanentNames;
  if (!intentPermanentNames)
  {
    intentPermanentNames = [MEMORY[0x1E695DFB0] null];
  }

  v52[6] = intentPermanentNames;
  v51[7] = @"spokenEntityTypes";
  spokenEntityTypes = self->_spokenEntityTypes;
  v37 = spokenEntityTypes;
  if (!spokenEntityTypes)
  {
    spokenEntityTypes = [MEMORY[0x1E695DFB0] null];
  }

  v52[7] = spokenEntityTypes;
  v51[8] = @"spokenEntityNames";
  spokenEntityNames = self->_spokenEntityNames;
  v35 = spokenEntityNames;
  if (!spokenEntityNames)
  {
    spokenEntityNames = [MEMORY[0x1E695DFB0] null];
  }

  v47 = speakerRooms;
  v52[8] = spokenEntityNames;
  v51[9] = @"numberOfHomeAutomationWords";
  numberOfHomeAutomationWords = self->_numberOfHomeAutomationWords;
  v33 = numberOfHomeAutomationWords;
  if (!numberOfHomeAutomationWords)
  {
    numberOfHomeAutomationWords = [MEMORY[0x1E695DFB0] null];
  }

  v45 = permanentNames;
  v31 = numberOfHomeAutomationWords;
  v52[9] = numberOfHomeAutomationWords;
  v51[10] = @"isAllSpeakers";
  isAllSpeakers = self->_isAllSpeakers;
  null2 = isAllSpeakers;
  if (!isAllSpeakers)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = intentSpeakerNames;
  v49 = null;
  v30 = null2;
  v52[10] = null2;
  v51[11] = @"isPauseOrStop";
  isPauseOrStop = self->_isPauseOrStop;
  null3 = isPauseOrStop;
  if (!isPauseOrStop)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = spokenEntityTypes;
  v41 = intentSpeakerRooms;
  v29 = null3;
  v52[11] = null3;
  v51[12] = @"isWholeHouseAudioCommand";
  isWholeHouseAudioCommand = self->_isWholeHouseAudioCommand;
  null4 = isWholeHouseAudioCommand;
  if (!isWholeHouseAudioCommand)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = spokenEntityNames;
  v39 = intentDestinationSpeakers;
  v28 = null4;
  v52[12] = null4;
  v51[13] = @"isInHere";
  isInHere = self->_isInHere;
  null5 = isInHere;
  if (!isInHere)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = intentPermanentNames;
  v52[13] = null5;
  v51[14] = @"hasExcept";
  hasExcept = self->_hasExcept;
  null6 = hasExcept;
  if (!hasExcept)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v52[14] = null6;
  v51[15] = @"isParticipatingSpeaker";
  isParticipatingSpeaker = self->_isParticipatingSpeaker;
  null7 = isParticipatingSpeaker;
  if (!isParticipatingSpeaker)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v52[15] = null7;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:v51 count:16];
  if (isParticipatingSpeaker)
  {
    if (hasExcept)
    {
      goto LABEL_35;
    }
  }

  else
  {

    if (hasExcept)
    {
      goto LABEL_35;
    }
  }

LABEL_35:
  if (!isInHere)
  {
  }

  if (!isWholeHouseAudioCommand)
  {
  }

  if (!isPauseOrStop)
  {
  }

  if (!isAllSpeakers)
  {
  }

  if (!v33)
  {
  }

  if (!v35)
  {
  }

  if (!v37)
  {
  }

  if (!v38)
  {
  }

  if (!v40)
  {
  }

  if (!v42)
  {
  }

  if (!v44)
  {
  }

  if (!v46)
  {
  }

  if (!v48)
  {
  }

  if (!speakerNames)
  {
  }

  v26 = *MEMORY[0x1E69E9840];

  return v32;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INWholeHouseAudioMetadata;
  v6 = [(INWholeHouseAudioMetadata *)&v11 description];
  _dictionaryRepresentation = [(INWholeHouseAudioMetadata *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_speakerNames];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"speakerNames"];

  v9 = [encoderCopy encodeObject:self->_speakerRooms];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"speakerRooms"];

  v10 = [encoderCopy encodeObject:self->_permanentNames];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"permanentNames"];

  v11 = [encoderCopy encodeObject:self->_intentSpeakerNames];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"intentSpeakerNames"];

  v12 = [encoderCopy encodeObject:self->_intentSpeakerRooms];
  [dictionary if_setObjectIfNonNil:v12 forKey:@"intentSpeakerRooms"];

  v13 = [encoderCopy encodeObject:self->_intentDestinationSpeakers];
  [dictionary if_setObjectIfNonNil:v13 forKey:@"intentDestinationSpeakers"];

  v14 = [encoderCopy encodeObject:self->_intentPermanentNames];
  [dictionary if_setObjectIfNonNil:v14 forKey:@"intentPermanentNames"];

  v15 = [encoderCopy encodeObject:self->_spokenEntityTypes];
  [dictionary if_setObjectIfNonNil:v15 forKey:@"spokenEntityTypes"];

  v16 = [encoderCopy encodeObject:self->_spokenEntityNames];
  [dictionary if_setObjectIfNonNil:v16 forKey:@"spokenEntityNames"];

  v17 = [encoderCopy encodeObject:self->_numberOfHomeAutomationWords];
  [dictionary if_setObjectIfNonNil:v17 forKey:@"numberOfHomeAutomationWords"];

  v18 = [encoderCopy encodeObject:self->_isAllSpeakers];
  [dictionary if_setObjectIfNonNil:v18 forKey:@"isAllSpeakers"];

  v19 = [encoderCopy encodeObject:self->_isPauseOrStop];
  [dictionary if_setObjectIfNonNil:v19 forKey:@"isPauseOrStop"];

  v20 = [encoderCopy encodeObject:self->_isWholeHouseAudioCommand];
  [dictionary if_setObjectIfNonNil:v20 forKey:@"isWholeHouseAudioCommand"];

  v21 = [encoderCopy encodeObject:self->_isInHere];
  [dictionary if_setObjectIfNonNil:v21 forKey:@"isInHere"];

  v22 = [encoderCopy encodeObject:self->_hasExcept];
  [dictionary if_setObjectIfNonNil:v22 forKey:@"hasExcept"];

  v23 = [encoderCopy encodeObject:self->_isParticipatingSpeaker];

  [dictionary if_setObjectIfNonNil:v23 forKey:@"isParticipatingSpeaker"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  speakerNames = self->_speakerNames;
  coderCopy = coder;
  [coderCopy encodeObject:speakerNames forKey:@"speakerNames"];
  [coderCopy encodeObject:self->_speakerRooms forKey:@"speakerRooms"];
  [coderCopy encodeObject:self->_permanentNames forKey:@"permanentNames"];
  [coderCopy encodeObject:self->_intentSpeakerNames forKey:@"intentSpeakerNames"];
  [coderCopy encodeObject:self->_intentSpeakerRooms forKey:@"intentSpeakerRooms"];
  [coderCopy encodeObject:self->_intentDestinationSpeakers forKey:@"intentDestinationSpeakers"];
  [coderCopy encodeObject:self->_intentPermanentNames forKey:@"intentPermanentNames"];
  [coderCopy encodeObject:self->_spokenEntityTypes forKey:@"spokenEntityTypes"];
  [coderCopy encodeObject:self->_spokenEntityNames forKey:@"spokenEntityNames"];
  [coderCopy encodeObject:self->_numberOfHomeAutomationWords forKey:@"numberOfHomeAutomationWords"];
  [coderCopy encodeObject:self->_isAllSpeakers forKey:@"isAllSpeakers"];
  [coderCopy encodeObject:self->_isPauseOrStop forKey:@"isPauseOrStop"];
  [coderCopy encodeObject:self->_isWholeHouseAudioCommand forKey:@"isWholeHouseAudioCommand"];
  [coderCopy encodeObject:self->_isInHere forKey:@"isInHere"];
  [coderCopy encodeObject:self->_hasExcept forKey:@"hasExcept"];
  [coderCopy encodeObject:self->_isParticipatingSpeaker forKey:@"isParticipatingSpeaker"];
}

- (INWholeHouseAudioMetadata)initWithCoder:(id)coder
{
  v59[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v59[0] = objc_opt_class();
  v59[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
  v6 = [v3 setWithArray:v5];
  v50 = [coderCopy decodeObjectOfClasses:v6 forKey:@"speakerNames"];

  v7 = MEMORY[0x1E695DFD8];
  v58[0] = objc_opt_class();
  v58[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
  v9 = [v7 setWithArray:v8];
  v49 = [coderCopy decodeObjectOfClasses:v9 forKey:@"speakerRooms"];

  v10 = MEMORY[0x1E695DFD8];
  v57[0] = objc_opt_class();
  v57[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
  v12 = [v10 setWithArray:v11];
  v48 = [coderCopy decodeObjectOfClasses:v12 forKey:@"permanentNames"];

  v13 = MEMORY[0x1E695DFD8];
  v56[0] = objc_opt_class();
  v56[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  v15 = [v13 setWithArray:v14];
  v47 = [coderCopy decodeObjectOfClasses:v15 forKey:@"intentSpeakerNames"];

  v16 = MEMORY[0x1E695DFD8];
  v55[0] = objc_opt_class();
  v55[1] = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v18 = [v16 setWithArray:v17];
  v46 = [coderCopy decodeObjectOfClasses:v18 forKey:@"intentSpeakerRooms"];

  v19 = MEMORY[0x1E695DFD8];
  v54[0] = objc_opt_class();
  v54[1] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  v21 = [v19 setWithArray:v20];
  v45 = [coderCopy decodeObjectOfClasses:v21 forKey:@"intentDestinationSpeakers"];

  v22 = MEMORY[0x1E695DFD8];
  v53[0] = objc_opt_class();
  v53[1] = objc_opt_class();
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
  v24 = [v22 setWithArray:v23];
  v42 = [coderCopy decodeObjectOfClasses:v24 forKey:@"intentPermanentNames"];

  v25 = MEMORY[0x1E695DFD8];
  v52[0] = objc_opt_class();
  v52[1] = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  v27 = [v25 setWithArray:v26];
  v28 = [coderCopy decodeObjectOfClasses:v27 forKey:@"spokenEntityTypes"];

  v29 = MEMORY[0x1E695DFD8];
  v51[0] = objc_opt_class();
  v51[1] = objc_opt_class();
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v31 = [v29 setWithArray:v30];
  v41 = [coderCopy decodeObjectOfClasses:v31 forKey:@"spokenEntityNames"];

  v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numberOfHomeAutomationWords"];
  v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isAllSpeakers"];
  v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isPauseOrStop"];
  v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isWholeHouseAudioCommand"];
  v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isInHere"];
  v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasExcept"];
  v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isParticipatingSpeaker"];

  v44 = [(INWholeHouseAudioMetadata *)self initWithSpeakerNames:v50 speakerRooms:v49 permanentNames:v48 intentSpeakerNames:v47 intentSpeakerRooms:v46 intentDestinationSpeakers:v45 intentPermanentNames:v42 spokenEntityTypes:v28 spokenEntityNames:v41 numberOfHomeAutomationWords:v40 isAllSpeakers:v39 isPauseOrStop:v38 isWholeHouseAudioCommand:v32 isInHere:v33 hasExcept:v34 isParticipatingSpeaker:v35];
  v36 = *MEMORY[0x1E69E9840];
  return v44;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      speakerNames = self->_speakerNames;
      if (speakerNames != v5->_speakerNames && ![(NSArray *)speakerNames isEqual:?])
      {
        goto LABEL_38;
      }

      speakerRooms = self->_speakerRooms;
      if (speakerRooms != v5->_speakerRooms && ![(NSArray *)speakerRooms isEqual:?])
      {
        goto LABEL_38;
      }

      permanentNames = self->_permanentNames;
      if (permanentNames != v5->_permanentNames && ![(NSArray *)permanentNames isEqual:?])
      {
        goto LABEL_38;
      }

      intentSpeakerNames = self->_intentSpeakerNames;
      if (intentSpeakerNames != v5->_intentSpeakerNames && ![(NSArray *)intentSpeakerNames isEqual:?])
      {
        goto LABEL_38;
      }

      intentSpeakerRooms = self->_intentSpeakerRooms;
      if (intentSpeakerRooms != v5->_intentSpeakerRooms && ![(NSArray *)intentSpeakerRooms isEqual:?])
      {
        goto LABEL_38;
      }

      intentDestinationSpeakers = self->_intentDestinationSpeakers;
      if (intentDestinationSpeakers != v5->_intentDestinationSpeakers && ![(NSArray *)intentDestinationSpeakers isEqual:?])
      {
        goto LABEL_38;
      }

      intentPermanentNames = self->_intentPermanentNames;
      if (intentPermanentNames != v5->_intentPermanentNames && ![(NSArray *)intentPermanentNames isEqual:?])
      {
        goto LABEL_38;
      }

      spokenEntityTypes = self->_spokenEntityTypes;
      if (spokenEntityTypes != v5->_spokenEntityTypes && ![(NSArray *)spokenEntityTypes isEqual:?])
      {
        goto LABEL_38;
      }

      spokenEntityNames = self->_spokenEntityNames;
      if (spokenEntityNames != v5->_spokenEntityNames && ![(NSArray *)spokenEntityNames isEqual:?])
      {
        goto LABEL_38;
      }

      if (((numberOfHomeAutomationWords = self->_numberOfHomeAutomationWords, numberOfHomeAutomationWords == v5->_numberOfHomeAutomationWords) || [(NSNumber *)numberOfHomeAutomationWords isEqual:?]) && ((isAllSpeakers = self->_isAllSpeakers, isAllSpeakers == v5->_isAllSpeakers) || [(NSNumber *)isAllSpeakers isEqual:?]) && ((isPauseOrStop = self->_isPauseOrStop, isPauseOrStop == v5->_isPauseOrStop) || [(NSNumber *)isPauseOrStop isEqual:?]) && ((isWholeHouseAudioCommand = self->_isWholeHouseAudioCommand, isWholeHouseAudioCommand == v5->_isWholeHouseAudioCommand) || [(NSNumber *)isWholeHouseAudioCommand isEqual:?]) && ((isInHere = self->_isInHere, isInHere == v5->_isInHere) || [(NSNumber *)isInHere isEqual:?]) && ((hasExcept = self->_hasExcept, hasExcept == v5->_hasExcept) || [(NSNumber *)hasExcept isEqual:?]) && ((isParticipatingSpeaker = self->_isParticipatingSpeaker, isParticipatingSpeaker == v5->_isParticipatingSpeaker) || [(NSNumber *)isParticipatingSpeaker isEqual:?]))
      {
        v22 = 1;
      }

      else
      {
LABEL_38:
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  return v22;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_speakerNames hash];
  v4 = [(NSArray *)self->_speakerRooms hash]^ v3;
  v5 = [(NSArray *)self->_permanentNames hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_intentSpeakerNames hash];
  v7 = [(NSArray *)self->_intentSpeakerRooms hash];
  v8 = v7 ^ [(NSArray *)self->_intentDestinationSpeakers hash];
  v9 = v6 ^ v8 ^ [(NSArray *)self->_intentPermanentNames hash];
  v10 = [(NSArray *)self->_spokenEntityTypes hash];
  v11 = v10 ^ [(NSArray *)self->_spokenEntityNames hash];
  v12 = v11 ^ [(NSNumber *)self->_numberOfHomeAutomationWords hash];
  v13 = v9 ^ v12 ^ [(NSNumber *)self->_isAllSpeakers hash];
  v14 = [(NSNumber *)self->_isPauseOrStop hash];
  v15 = v14 ^ [(NSNumber *)self->_isWholeHouseAudioCommand hash];
  v16 = v15 ^ [(NSNumber *)self->_isInHere hash];
  v17 = v16 ^ [(NSNumber *)self->_hasExcept hash];
  return v13 ^ v17 ^ [(NSNumber *)self->_isParticipatingSpeaker hash];
}

- (INWholeHouseAudioMetadata)initWithSpeakerNames:(id)names speakerRooms:(id)rooms permanentNames:(id)permanentNames intentSpeakerNames:(id)speakerNames intentSpeakerRooms:(id)speakerRooms intentDestinationSpeakers:(id)speakers intentPermanentNames:(id)intentPermanentNames spokenEntityTypes:(id)self0 spokenEntityNames:(id)self1 numberOfHomeAutomationWords:(id)self2 isAllSpeakers:(id)self3 isPauseOrStop:(id)self4 isWholeHouseAudioCommand:(id)self5 isInHere:(id)self6 hasExcept:(id)self7 isParticipatingSpeaker:(id)self8
{
  namesCopy = names;
  roomsCopy = rooms;
  permanentNamesCopy = permanentNames;
  speakerNamesCopy = speakerNames;
  speakerRoomsCopy = speakerRooms;
  speakersCopy = speakers;
  intentPermanentNamesCopy = intentPermanentNames;
  v26 = permanentNamesCopy;
  typesCopy = types;
  v27 = roomsCopy;
  entityNamesCopy = entityNames;
  wordsCopy = words;
  allSpeakersCopy = allSpeakers;
  stopCopy = stop;
  commandCopy = command;
  hereCopy = here;
  exceptCopy = except;
  speakerCopy = speaker;
  v76.receiver = self;
  v76.super_class = INWholeHouseAudioMetadata;
  v34 = [(INWholeHouseAudioMetadata *)&v76 init];
  if (v34)
  {
    v35 = [namesCopy copy];
    speakerNames = v34->_speakerNames;
    v34->_speakerNames = v35;

    v37 = [v27 copy];
    speakerRooms = v34->_speakerRooms;
    v34->_speakerRooms = v37;

    v39 = [v26 copy];
    permanentNames = v34->_permanentNames;
    v34->_permanentNames = v39;

    v41 = [speakerNamesCopy copy];
    intentSpeakerNames = v34->_intentSpeakerNames;
    v34->_intentSpeakerNames = v41;

    v43 = [speakerRoomsCopy copy];
    intentSpeakerRooms = v34->_intentSpeakerRooms;
    v34->_intentSpeakerRooms = v43;

    v45 = [speakersCopy copy];
    intentDestinationSpeakers = v34->_intentDestinationSpeakers;
    v34->_intentDestinationSpeakers = v45;

    v47 = [intentPermanentNamesCopy copy];
    intentPermanentNames = v34->_intentPermanentNames;
    v34->_intentPermanentNames = v47;

    v49 = [typesCopy copy];
    spokenEntityTypes = v34->_spokenEntityTypes;
    v34->_spokenEntityTypes = v49;

    v51 = [entityNamesCopy copy];
    spokenEntityNames = v34->_spokenEntityNames;
    v34->_spokenEntityNames = v51;

    v53 = [wordsCopy copy];
    numberOfHomeAutomationWords = v34->_numberOfHomeAutomationWords;
    v34->_numberOfHomeAutomationWords = v53;

    v55 = [allSpeakersCopy copy];
    isAllSpeakers = v34->_isAllSpeakers;
    v34->_isAllSpeakers = v55;

    v57 = [stopCopy copy];
    isPauseOrStop = v34->_isPauseOrStop;
    v34->_isPauseOrStop = v57;

    v59 = [commandCopy copy];
    isWholeHouseAudioCommand = v34->_isWholeHouseAudioCommand;
    v34->_isWholeHouseAudioCommand = v59;

    v61 = [hereCopy copy];
    isInHere = v34->_isInHere;
    v34->_isInHere = v61;

    v63 = [exceptCopy copy];
    hasExcept = v34->_hasExcept;
    v34->_hasExcept = v63;

    v65 = [speakerCopy copy];
    isParticipatingSpeaker = v34->_isParticipatingSpeaker;
    v34->_isParticipatingSpeaker = v65;
  }

  return v34;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"speakerNames"];
    v44 = [decoderCopy decodeObjectsOfClass:v9 from:v10];

    v11 = objc_opt_class();
    v12 = [fromCopy objectForKeyedSubscript:@"speakerRooms"];
    v45 = [decoderCopy decodeObjectsOfClass:v11 from:v12];

    v13 = objc_opt_class();
    v14 = [fromCopy objectForKeyedSubscript:@"permanentNames"];
    v40 = [decoderCopy decodeObjectsOfClass:v13 from:v14];

    v15 = objc_opt_class();
    v16 = [fromCopy objectForKeyedSubscript:@"intentSpeakerNames"];
    v39 = [decoderCopy decodeObjectsOfClass:v15 from:v16];

    v17 = objc_opt_class();
    v18 = [fromCopy objectForKeyedSubscript:@"intentSpeakerRooms"];
    v38 = [decoderCopy decodeObjectsOfClass:v17 from:v18];

    v19 = objc_opt_class();
    v20 = [fromCopy objectForKeyedSubscript:@"intentDestinationSpeakers"];
    v37 = [decoderCopy decodeObjectsOfClass:v19 from:v20];

    v21 = objc_opt_class();
    v22 = [fromCopy objectForKeyedSubscript:@"intentPermanentNames"];
    v43 = [decoderCopy decodeObjectsOfClass:v21 from:v22];

    v23 = objc_opt_class();
    v24 = [fromCopy objectForKeyedSubscript:@"spokenEntityTypes"];
    v42 = [decoderCopy decodeObjectsOfClass:v23 from:v24];

    v25 = objc_opt_class();
    v26 = [fromCopy objectForKeyedSubscript:@"spokenEntityNames"];
    v36 = [decoderCopy decodeObjectsOfClass:v25 from:v26];

    v35 = [fromCopy objectForKeyedSubscript:@"numberOfHomeAutomationWords"];
    v34 = [fromCopy objectForKeyedSubscript:@"isAllSpeakers"];
    v33 = [fromCopy objectForKeyedSubscript:@"isPauseOrStop"];
    v27 = [fromCopy objectForKeyedSubscript:@"isWholeHouseAudioCommand"];
    v28 = [fromCopy objectForKeyedSubscript:@"isInHere"];
    v29 = [fromCopy objectForKeyedSubscript:@"hasExcept"];
    v30 = [fromCopy objectForKeyedSubscript:@"isParticipatingSpeaker"];
    v31 = [[selfCopy alloc] initWithSpeakerNames:v44 speakerRooms:v45 permanentNames:v40 intentSpeakerNames:v39 intentSpeakerRooms:v38 intentDestinationSpeakers:v37 intentPermanentNames:v43 spokenEntityTypes:v42 spokenEntityNames:v36 numberOfHomeAutomationWords:v35 isAllSpeakers:v34 isPauseOrStop:v33 isWholeHouseAudioCommand:v27 isInHere:v28 hasExcept:v29 isParticipatingSpeaker:v30];
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

@end