@interface INWholeHouseAudioMetadata
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INWholeHouseAudioMetadata)initWithCoder:(id)a3;
- (INWholeHouseAudioMetadata)initWithSpeakerNames:(id)a3 speakerRooms:(id)a4 permanentNames:(id)a5 intentSpeakerNames:(id)a6 intentSpeakerRooms:(id)a7 intentDestinationSpeakers:(id)a8 intentPermanentNames:(id)a9 spokenEntityTypes:(id)a10 spokenEntityNames:(id)a11 numberOfHomeAutomationWords:(id)a12 isAllSpeakers:(id)a13 isPauseOrStop:(id)a14 isWholeHouseAudioCommand:(id)a15 isInHere:(id)a16 hasExcept:(id)a17 isParticipatingSpeaker:(id)a18;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INWholeHouseAudioMetadata

- (id)_dictionaryRepresentation
{
  v52[16] = *MEMORY[0x1E69E9840];
  speakerNames = self->_speakerNames;
  v3 = speakerNames;
  v51[0] = @"speakerNames";
  if (!speakerNames)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v52[0] = v3;
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
  v14 = isAllSpeakers;
  if (!isAllSpeakers)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = intentSpeakerNames;
  v49 = v3;
  v30 = v14;
  v52[10] = v14;
  v51[11] = @"isPauseOrStop";
  isPauseOrStop = self->_isPauseOrStop;
  v16 = isPauseOrStop;
  if (!isPauseOrStop)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v36 = spokenEntityTypes;
  v41 = intentSpeakerRooms;
  v29 = v16;
  v52[11] = v16;
  v51[12] = @"isWholeHouseAudioCommand";
  isWholeHouseAudioCommand = self->_isWholeHouseAudioCommand;
  v18 = isWholeHouseAudioCommand;
  if (!isWholeHouseAudioCommand)
  {
    v18 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = spokenEntityNames;
  v39 = intentDestinationSpeakers;
  v28 = v18;
  v52[12] = v18;
  v51[13] = @"isInHere";
  isInHere = self->_isInHere;
  v20 = isInHere;
  if (!isInHere)
  {
    v20 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = intentPermanentNames;
  v52[13] = v20;
  v51[14] = @"hasExcept";
  hasExcept = self->_hasExcept;
  v23 = hasExcept;
  if (!hasExcept)
  {
    v23 = [MEMORY[0x1E695DFB0] null];
  }

  v52[14] = v23;
  v51[15] = @"isParticipatingSpeaker";
  isParticipatingSpeaker = self->_isParticipatingSpeaker;
  v25 = isParticipatingSpeaker;
  if (!isParticipatingSpeaker)
  {
    v25 = [MEMORY[0x1E695DFB0] null];
  }

  v52[15] = v25;
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

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INWholeHouseAudioMetadata;
  v6 = [(INWholeHouseAudioMetadata *)&v11 description];
  v7 = [(INWholeHouseAudioMetadata *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_speakerNames];
  [v7 if_setObjectIfNonNil:v8 forKey:@"speakerNames"];

  v9 = [v6 encodeObject:self->_speakerRooms];
  [v7 if_setObjectIfNonNil:v9 forKey:@"speakerRooms"];

  v10 = [v6 encodeObject:self->_permanentNames];
  [v7 if_setObjectIfNonNil:v10 forKey:@"permanentNames"];

  v11 = [v6 encodeObject:self->_intentSpeakerNames];
  [v7 if_setObjectIfNonNil:v11 forKey:@"intentSpeakerNames"];

  v12 = [v6 encodeObject:self->_intentSpeakerRooms];
  [v7 if_setObjectIfNonNil:v12 forKey:@"intentSpeakerRooms"];

  v13 = [v6 encodeObject:self->_intentDestinationSpeakers];
  [v7 if_setObjectIfNonNil:v13 forKey:@"intentDestinationSpeakers"];

  v14 = [v6 encodeObject:self->_intentPermanentNames];
  [v7 if_setObjectIfNonNil:v14 forKey:@"intentPermanentNames"];

  v15 = [v6 encodeObject:self->_spokenEntityTypes];
  [v7 if_setObjectIfNonNil:v15 forKey:@"spokenEntityTypes"];

  v16 = [v6 encodeObject:self->_spokenEntityNames];
  [v7 if_setObjectIfNonNil:v16 forKey:@"spokenEntityNames"];

  v17 = [v6 encodeObject:self->_numberOfHomeAutomationWords];
  [v7 if_setObjectIfNonNil:v17 forKey:@"numberOfHomeAutomationWords"];

  v18 = [v6 encodeObject:self->_isAllSpeakers];
  [v7 if_setObjectIfNonNil:v18 forKey:@"isAllSpeakers"];

  v19 = [v6 encodeObject:self->_isPauseOrStop];
  [v7 if_setObjectIfNonNil:v19 forKey:@"isPauseOrStop"];

  v20 = [v6 encodeObject:self->_isWholeHouseAudioCommand];
  [v7 if_setObjectIfNonNil:v20 forKey:@"isWholeHouseAudioCommand"];

  v21 = [v6 encodeObject:self->_isInHere];
  [v7 if_setObjectIfNonNil:v21 forKey:@"isInHere"];

  v22 = [v6 encodeObject:self->_hasExcept];
  [v7 if_setObjectIfNonNil:v22 forKey:@"hasExcept"];

  v23 = [v6 encodeObject:self->_isParticipatingSpeaker];

  [v7 if_setObjectIfNonNil:v23 forKey:@"isParticipatingSpeaker"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  speakerNames = self->_speakerNames;
  v5 = a3;
  [v5 encodeObject:speakerNames forKey:@"speakerNames"];
  [v5 encodeObject:self->_speakerRooms forKey:@"speakerRooms"];
  [v5 encodeObject:self->_permanentNames forKey:@"permanentNames"];
  [v5 encodeObject:self->_intentSpeakerNames forKey:@"intentSpeakerNames"];
  [v5 encodeObject:self->_intentSpeakerRooms forKey:@"intentSpeakerRooms"];
  [v5 encodeObject:self->_intentDestinationSpeakers forKey:@"intentDestinationSpeakers"];
  [v5 encodeObject:self->_intentPermanentNames forKey:@"intentPermanentNames"];
  [v5 encodeObject:self->_spokenEntityTypes forKey:@"spokenEntityTypes"];
  [v5 encodeObject:self->_spokenEntityNames forKey:@"spokenEntityNames"];
  [v5 encodeObject:self->_numberOfHomeAutomationWords forKey:@"numberOfHomeAutomationWords"];
  [v5 encodeObject:self->_isAllSpeakers forKey:@"isAllSpeakers"];
  [v5 encodeObject:self->_isPauseOrStop forKey:@"isPauseOrStop"];
  [v5 encodeObject:self->_isWholeHouseAudioCommand forKey:@"isWholeHouseAudioCommand"];
  [v5 encodeObject:self->_isInHere forKey:@"isInHere"];
  [v5 encodeObject:self->_hasExcept forKey:@"hasExcept"];
  [v5 encodeObject:self->_isParticipatingSpeaker forKey:@"isParticipatingSpeaker"];
}

- (INWholeHouseAudioMetadata)initWithCoder:(id)a3
{
  v59[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v59[0] = objc_opt_class();
  v59[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
  v6 = [v3 setWithArray:v5];
  v50 = [v4 decodeObjectOfClasses:v6 forKey:@"speakerNames"];

  v7 = MEMORY[0x1E695DFD8];
  v58[0] = objc_opt_class();
  v58[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
  v9 = [v7 setWithArray:v8];
  v49 = [v4 decodeObjectOfClasses:v9 forKey:@"speakerRooms"];

  v10 = MEMORY[0x1E695DFD8];
  v57[0] = objc_opt_class();
  v57[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
  v12 = [v10 setWithArray:v11];
  v48 = [v4 decodeObjectOfClasses:v12 forKey:@"permanentNames"];

  v13 = MEMORY[0x1E695DFD8];
  v56[0] = objc_opt_class();
  v56[1] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  v15 = [v13 setWithArray:v14];
  v47 = [v4 decodeObjectOfClasses:v15 forKey:@"intentSpeakerNames"];

  v16 = MEMORY[0x1E695DFD8];
  v55[0] = objc_opt_class();
  v55[1] = objc_opt_class();
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v18 = [v16 setWithArray:v17];
  v46 = [v4 decodeObjectOfClasses:v18 forKey:@"intentSpeakerRooms"];

  v19 = MEMORY[0x1E695DFD8];
  v54[0] = objc_opt_class();
  v54[1] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  v21 = [v19 setWithArray:v20];
  v45 = [v4 decodeObjectOfClasses:v21 forKey:@"intentDestinationSpeakers"];

  v22 = MEMORY[0x1E695DFD8];
  v53[0] = objc_opt_class();
  v53[1] = objc_opt_class();
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
  v24 = [v22 setWithArray:v23];
  v42 = [v4 decodeObjectOfClasses:v24 forKey:@"intentPermanentNames"];

  v25 = MEMORY[0x1E695DFD8];
  v52[0] = objc_opt_class();
  v52[1] = objc_opt_class();
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:2];
  v27 = [v25 setWithArray:v26];
  v28 = [v4 decodeObjectOfClasses:v27 forKey:@"spokenEntityTypes"];

  v29 = MEMORY[0x1E695DFD8];
  v51[0] = objc_opt_class();
  v51[1] = objc_opt_class();
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  v31 = [v29 setWithArray:v30];
  v41 = [v4 decodeObjectOfClasses:v31 forKey:@"spokenEntityNames"];

  v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numberOfHomeAutomationWords"];
  v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isAllSpeakers"];
  v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isPauseOrStop"];
  v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isWholeHouseAudioCommand"];
  v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isInHere"];
  v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasExcept"];
  v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isParticipatingSpeaker"];

  v44 = [(INWholeHouseAudioMetadata *)self initWithSpeakerNames:v50 speakerRooms:v49 permanentNames:v48 intentSpeakerNames:v47 intentSpeakerRooms:v46 intentDestinationSpeakers:v45 intentPermanentNames:v42 spokenEntityTypes:v28 spokenEntityNames:v41 numberOfHomeAutomationWords:v40 isAllSpeakers:v39 isPauseOrStop:v38 isWholeHouseAudioCommand:v32 isInHere:v33 hasExcept:v34 isParticipatingSpeaker:v35];
  v36 = *MEMORY[0x1E69E9840];
  return v44;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v22 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
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

- (INWholeHouseAudioMetadata)initWithSpeakerNames:(id)a3 speakerRooms:(id)a4 permanentNames:(id)a5 intentSpeakerNames:(id)a6 intentSpeakerRooms:(id)a7 intentDestinationSpeakers:(id)a8 intentPermanentNames:(id)a9 spokenEntityTypes:(id)a10 spokenEntityNames:(id)a11 numberOfHomeAutomationWords:(id)a12 isAllSpeakers:(id)a13 isPauseOrStop:(id)a14 isWholeHouseAudioCommand:(id)a15 isInHere:(id)a16 hasExcept:(id)a17 isParticipatingSpeaker:(id)a18
{
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v75 = a6;
  v74 = a7;
  v73 = a8;
  v72 = a9;
  v26 = v25;
  v71 = a10;
  v27 = v24;
  v70 = a11;
  v69 = a12;
  v28 = a13;
  v29 = a14;
  v30 = a15;
  v31 = a16;
  v32 = a17;
  v33 = a18;
  v76.receiver = self;
  v76.super_class = INWholeHouseAudioMetadata;
  v34 = [(INWholeHouseAudioMetadata *)&v76 init];
  if (v34)
  {
    v35 = [v23 copy];
    speakerNames = v34->_speakerNames;
    v34->_speakerNames = v35;

    v37 = [v27 copy];
    speakerRooms = v34->_speakerRooms;
    v34->_speakerRooms = v37;

    v39 = [v26 copy];
    permanentNames = v34->_permanentNames;
    v34->_permanentNames = v39;

    v41 = [v75 copy];
    intentSpeakerNames = v34->_intentSpeakerNames;
    v34->_intentSpeakerNames = v41;

    v43 = [v74 copy];
    intentSpeakerRooms = v34->_intentSpeakerRooms;
    v34->_intentSpeakerRooms = v43;

    v45 = [v73 copy];
    intentDestinationSpeakers = v34->_intentDestinationSpeakers;
    v34->_intentDestinationSpeakers = v45;

    v47 = [v72 copy];
    intentPermanentNames = v34->_intentPermanentNames;
    v34->_intentPermanentNames = v47;

    v49 = [v71 copy];
    spokenEntityTypes = v34->_spokenEntityTypes;
    v34->_spokenEntityTypes = v49;

    v51 = [v70 copy];
    spokenEntityNames = v34->_spokenEntityNames;
    v34->_spokenEntityNames = v51;

    v53 = [v69 copy];
    numberOfHomeAutomationWords = v34->_numberOfHomeAutomationWords;
    v34->_numberOfHomeAutomationWords = v53;

    v55 = [v28 copy];
    isAllSpeakers = v34->_isAllSpeakers;
    v34->_isAllSpeakers = v55;

    v57 = [v29 copy];
    isPauseOrStop = v34->_isPauseOrStop;
    v34->_isPauseOrStop = v57;

    v59 = [v30 copy];
    isWholeHouseAudioCommand = v34->_isWholeHouseAudioCommand;
    v34->_isWholeHouseAudioCommand = v59;

    v61 = [v31 copy];
    isInHere = v34->_isInHere;
    v34->_isInHere = v61;

    v63 = [v32 copy];
    hasExcept = v34->_hasExcept;
    v34->_hasExcept = v63;

    v65 = [v33 copy];
    isParticipatingSpeaker = v34->_isParticipatingSpeaker;
    v34->_isParticipatingSpeaker = v65;
  }

  return v34;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = a1;
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"speakerNames"];
    v44 = [v7 decodeObjectsOfClass:v9 from:v10];

    v11 = objc_opt_class();
    v12 = [v8 objectForKeyedSubscript:@"speakerRooms"];
    v45 = [v7 decodeObjectsOfClass:v11 from:v12];

    v13 = objc_opt_class();
    v14 = [v8 objectForKeyedSubscript:@"permanentNames"];
    v40 = [v7 decodeObjectsOfClass:v13 from:v14];

    v15 = objc_opt_class();
    v16 = [v8 objectForKeyedSubscript:@"intentSpeakerNames"];
    v39 = [v7 decodeObjectsOfClass:v15 from:v16];

    v17 = objc_opt_class();
    v18 = [v8 objectForKeyedSubscript:@"intentSpeakerRooms"];
    v38 = [v7 decodeObjectsOfClass:v17 from:v18];

    v19 = objc_opt_class();
    v20 = [v8 objectForKeyedSubscript:@"intentDestinationSpeakers"];
    v37 = [v7 decodeObjectsOfClass:v19 from:v20];

    v21 = objc_opt_class();
    v22 = [v8 objectForKeyedSubscript:@"intentPermanentNames"];
    v43 = [v7 decodeObjectsOfClass:v21 from:v22];

    v23 = objc_opt_class();
    v24 = [v8 objectForKeyedSubscript:@"spokenEntityTypes"];
    v42 = [v7 decodeObjectsOfClass:v23 from:v24];

    v25 = objc_opt_class();
    v26 = [v8 objectForKeyedSubscript:@"spokenEntityNames"];
    v36 = [v7 decodeObjectsOfClass:v25 from:v26];

    v35 = [v8 objectForKeyedSubscript:@"numberOfHomeAutomationWords"];
    v34 = [v8 objectForKeyedSubscript:@"isAllSpeakers"];
    v33 = [v8 objectForKeyedSubscript:@"isPauseOrStop"];
    v27 = [v8 objectForKeyedSubscript:@"isWholeHouseAudioCommand"];
    v28 = [v8 objectForKeyedSubscript:@"isInHere"];
    v29 = [v8 objectForKeyedSubscript:@"hasExcept"];
    v30 = [v8 objectForKeyedSubscript:@"isParticipatingSpeaker"];
    v31 = [[v41 alloc] initWithSpeakerNames:v44 speakerRooms:v45 permanentNames:v40 intentSpeakerNames:v39 intentSpeakerRooms:v38 intentDestinationSpeakers:v37 intentPermanentNames:v43 spokenEntityTypes:v42 spokenEntityNames:v36 numberOfHomeAutomationWords:v35 isAllSpeakers:v34 isPauseOrStop:v33 isWholeHouseAudioCommand:v27 isInHere:v28 hasExcept:v29 isParticipatingSpeaker:v30];
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

@end