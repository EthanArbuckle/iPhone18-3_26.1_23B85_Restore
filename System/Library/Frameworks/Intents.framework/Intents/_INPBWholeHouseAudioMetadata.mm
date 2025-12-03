@interface _INPBWholeHouseAudioMetadata
- (BOOL)isEqual:(id)equal;
- (_INPBWholeHouseAudioMetadata)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addIntentDestinationSpeakers:(id)speakers;
- (void)addIntentPermanentNames:(id)names;
- (void)addIntentSpeakerNames:(id)names;
- (void)addIntentSpeakerRooms:(id)rooms;
- (void)addPermanentNames:(id)names;
- (void)addSpeakerNames:(id)names;
- (void)addSpeakerRooms:(id)rooms;
- (void)addSpokenEntityName:(id)name;
- (void)addSpokenEntityType:(id)type;
- (void)encodeWithCoder:(id)coder;
- (void)setHasIsAllSpeakers:(BOOL)speakers;
- (void)setHasIsInHere:(BOOL)here;
- (void)setHasIsParticipatingSpeaker:(BOOL)speaker;
- (void)setHasIsPauseOrStop:(BOOL)stop;
- (void)setHasIsWholeHouseAudioCommand:(BOOL)command;
- (void)setHasNumberOfHomeAutomationWords:(BOOL)words;
- (void)setIntentDestinationSpeakers:(id)speakers;
- (void)setIntentPermanentNames:(id)names;
- (void)setIntentSpeakerNames:(id)names;
- (void)setIntentSpeakerRooms:(id)rooms;
- (void)setPermanentNames:(id)names;
- (void)setSpeakerNames:(id)names;
- (void)setSpeakerRooms:(id)rooms;
- (void)setSpokenEntityNames:(id)names;
- (void)setSpokenEntityTypes:(id)types;
- (void)writeTo:(id)to;
@end

@implementation _INPBWholeHouseAudioMetadata

- (id)dictionaryRepresentation
{
  v121 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBWholeHouseAudioMetadata *)self hasHasExcept])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBWholeHouseAudioMetadata hasExcept](self, "hasExcept")}];
    [dictionary setObject:v4 forKeyedSubscript:@"hasExcept"];
  }

  if ([(NSArray *)self->_intentDestinationSpeakers count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v6 = self->_intentDestinationSpeakers;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v108 objects:v120 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v109;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v109 != v9)
          {
            objc_enumerationMutation(v6);
          }

          dictionaryRepresentation = [*(*(&v108 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v108 objects:v120 count:16];
      }

      while (v8);
    }

    [dictionary setObject:array forKeyedSubscript:@"intentDestinationSpeakers"];
  }

  if ([(NSArray *)self->_intentPermanentNames count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v13 = self->_intentPermanentNames;
    v14 = [(NSArray *)v13 countByEnumeratingWithState:&v104 objects:v119 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v105;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v105 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation2 = [*(*(&v104 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation2];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v104 objects:v119 count:16];
      }

      while (v15);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"intentPermanentNames"];
  }

  if ([(NSArray *)self->_intentSpeakerNames count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v20 = self->_intentSpeakerNames;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v100 objects:v118 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v101;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v101 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation3 = [*(*(&v100 + 1) + 8 * k) dictionaryRepresentation];
          [array3 addObject:dictionaryRepresentation3];
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v100 objects:v118 count:16];
      }

      while (v22);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"intentSpeakerNames"];
  }

  if ([(NSArray *)self->_intentSpeakerRooms count])
  {
    array4 = [MEMORY[0x1E695DF70] array];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v27 = self->_intentSpeakerRooms;
    v28 = [(NSArray *)v27 countByEnumeratingWithState:&v96 objects:v117 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v97;
      do
      {
        for (m = 0; m != v29; ++m)
        {
          if (*v97 != v30)
          {
            objc_enumerationMutation(v27);
          }

          dictionaryRepresentation4 = [*(*(&v96 + 1) + 8 * m) dictionaryRepresentation];
          [array4 addObject:dictionaryRepresentation4];
        }

        v29 = [(NSArray *)v27 countByEnumeratingWithState:&v96 objects:v117 count:16];
      }

      while (v29);
    }

    [dictionary setObject:array4 forKeyedSubscript:@"intentSpeakerRooms"];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsAllSpeakers])
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBWholeHouseAudioMetadata isAllSpeakers](self, "isAllSpeakers")}];
    [dictionary setObject:v33 forKeyedSubscript:@"isAllSpeakers"];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsInHere])
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBWholeHouseAudioMetadata isInHere](self, "isInHere")}];
    [dictionary setObject:v34 forKeyedSubscript:@"isInHere"];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsParticipatingSpeaker])
  {
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBWholeHouseAudioMetadata isParticipatingSpeaker](self, "isParticipatingSpeaker")}];
    [dictionary setObject:v35 forKeyedSubscript:@"isParticipatingSpeaker"];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsPauseOrStop])
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBWholeHouseAudioMetadata isPauseOrStop](self, "isPauseOrStop")}];
    [dictionary setObject:v36 forKeyedSubscript:@"isPauseOrStop"];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsWholeHouseAudioCommand])
  {
    v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBWholeHouseAudioMetadata isWholeHouseAudioCommand](self, "isWholeHouseAudioCommand")}];
    [dictionary setObject:v37 forKeyedSubscript:@"isWholeHouseAudioCommand"];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasNumberOfHomeAutomationWords])
  {
    v38 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBWholeHouseAudioMetadata numberOfHomeAutomationWords](self, "numberOfHomeAutomationWords")}];
    [dictionary setObject:v38 forKeyedSubscript:@"numberOfHomeAutomationWords"];
  }

  if ([(NSArray *)self->_permanentNames count])
  {
    array5 = [MEMORY[0x1E695DF70] array];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v40 = self->_permanentNames;
    v41 = [(NSArray *)v40 countByEnumeratingWithState:&v92 objects:v116 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v93;
      do
      {
        for (n = 0; n != v42; ++n)
        {
          if (*v93 != v43)
          {
            objc_enumerationMutation(v40);
          }

          dictionaryRepresentation5 = [*(*(&v92 + 1) + 8 * n) dictionaryRepresentation];
          [array5 addObject:dictionaryRepresentation5];
        }

        v42 = [(NSArray *)v40 countByEnumeratingWithState:&v92 objects:v116 count:16];
      }

      while (v42);
    }

    [dictionary setObject:array5 forKeyedSubscript:@"permanentNames"];
  }

  if ([(NSArray *)self->_speakerNames count])
  {
    array6 = [MEMORY[0x1E695DF70] array];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v47 = self->_speakerNames;
    v48 = [(NSArray *)v47 countByEnumeratingWithState:&v88 objects:v115 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v89;
      do
      {
        for (ii = 0; ii != v49; ++ii)
        {
          if (*v89 != v50)
          {
            objc_enumerationMutation(v47);
          }

          dictionaryRepresentation6 = [*(*(&v88 + 1) + 8 * ii) dictionaryRepresentation];
          [array6 addObject:dictionaryRepresentation6];
        }

        v49 = [(NSArray *)v47 countByEnumeratingWithState:&v88 objects:v115 count:16];
      }

      while (v49);
    }

    [dictionary setObject:array6 forKeyedSubscript:@"speakerNames"];
  }

  if ([(NSArray *)self->_speakerRooms count])
  {
    array7 = [MEMORY[0x1E695DF70] array];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v54 = self->_speakerRooms;
    v55 = [(NSArray *)v54 countByEnumeratingWithState:&v84 objects:v114 count:16];
    if (v55)
    {
      v56 = v55;
      v57 = *v85;
      do
      {
        for (jj = 0; jj != v56; ++jj)
        {
          if (*v85 != v57)
          {
            objc_enumerationMutation(v54);
          }

          dictionaryRepresentation7 = [*(*(&v84 + 1) + 8 * jj) dictionaryRepresentation];
          [array7 addObject:dictionaryRepresentation7];
        }

        v56 = [(NSArray *)v54 countByEnumeratingWithState:&v84 objects:v114 count:16];
      }

      while (v56);
    }

    [dictionary setObject:array7 forKeyedSubscript:@"speakerRooms"];
  }

  if ([(NSArray *)self->_spokenEntityNames count])
  {
    array8 = [MEMORY[0x1E695DF70] array];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v61 = self->_spokenEntityNames;
    v62 = [(NSArray *)v61 countByEnumeratingWithState:&v80 objects:v113 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v81;
      do
      {
        for (kk = 0; kk != v63; ++kk)
        {
          if (*v81 != v64)
          {
            objc_enumerationMutation(v61);
          }

          dictionaryRepresentation8 = [*(*(&v80 + 1) + 8 * kk) dictionaryRepresentation];
          [array8 addObject:dictionaryRepresentation8];
        }

        v63 = [(NSArray *)v61 countByEnumeratingWithState:&v80 objects:v113 count:16];
      }

      while (v63);
    }

    [dictionary setObject:array8 forKeyedSubscript:@"spokenEntityName"];
  }

  if ([(NSArray *)self->_spokenEntityTypes count])
  {
    array9 = [MEMORY[0x1E695DF70] array];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v68 = self->_spokenEntityTypes;
    v69 = [(NSArray *)v68 countByEnumeratingWithState:&v76 objects:v112 count:16];
    if (v69)
    {
      v70 = v69;
      v71 = *v77;
      do
      {
        for (mm = 0; mm != v70; ++mm)
        {
          if (*v77 != v71)
          {
            objc_enumerationMutation(v68);
          }

          dictionaryRepresentation9 = [*(*(&v76 + 1) + 8 * mm) dictionaryRepresentation];
          [array9 addObject:dictionaryRepresentation9];
        }

        v70 = [(NSArray *)v68 countByEnumeratingWithState:&v76 objects:v112 count:16];
      }

      while (v70);
    }

    [dictionary setObject:array9 forKeyedSubscript:@"spokenEntityType"];
  }

  v74 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  if ([(_INPBWholeHouseAudioMetadata *)self hasHasExcept])
  {
    v19 = 2654435761 * self->_hasExcept;
  }

  else
  {
    v19 = 0;
  }

  v18 = [(NSArray *)self->_intentDestinationSpeakers hash];
  v3 = [(NSArray *)self->_intentPermanentNames hash];
  v4 = [(NSArray *)self->_intentSpeakerNames hash];
  v5 = [(NSArray *)self->_intentSpeakerRooms hash];
  if ([(_INPBWholeHouseAudioMetadata *)self hasIsAllSpeakers])
  {
    v6 = 2654435761 * self->_isAllSpeakers;
  }

  else
  {
    v6 = 0;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsInHere])
  {
    v7 = 2654435761 * self->_isInHere;
  }

  else
  {
    v7 = 0;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsParticipatingSpeaker])
  {
    v8 = 2654435761 * self->_isParticipatingSpeaker;
  }

  else
  {
    v8 = 0;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsPauseOrStop])
  {
    v9 = 2654435761 * self->_isPauseOrStop;
  }

  else
  {
    v9 = 0;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsWholeHouseAudioCommand])
  {
    v10 = 2654435761 * self->_isWholeHouseAudioCommand;
  }

  else
  {
    v10 = 0;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasNumberOfHomeAutomationWords])
  {
    v11 = 2654435761 * self->_numberOfHomeAutomationWords;
  }

  else
  {
    v11 = 0;
  }

  v12 = v18 ^ v19 ^ v3 ^ v4 ^ v5 ^ v6 ^ v7;
  v13 = v8 ^ v9 ^ v10 ^ v11 ^ [(NSArray *)self->_permanentNames hash];
  v14 = v13 ^ [(NSArray *)self->_speakerNames hash];
  v15 = v12 ^ v14 ^ [(NSArray *)self->_speakerRooms hash];
  v16 = [(NSArray *)self->_spokenEntityNames hash];
  return v15 ^ v16 ^ [(NSArray *)self->_spokenEntityTypes hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_75;
  }

  hasHasExcept = [(_INPBWholeHouseAudioMetadata *)self hasHasExcept];
  if (hasHasExcept != [equalCopy hasHasExcept])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasHasExcept])
  {
    if ([equalCopy hasHasExcept])
    {
      hasExcept = self->_hasExcept;
      if (hasExcept != [equalCopy hasExcept])
      {
        goto LABEL_75;
      }
    }
  }

  intentDestinationSpeakers = [(_INPBWholeHouseAudioMetadata *)self intentDestinationSpeakers];
  intentDestinationSpeakers2 = [equalCopy intentDestinationSpeakers];
  if ((intentDestinationSpeakers != 0) == (intentDestinationSpeakers2 == 0))
  {
    goto LABEL_74;
  }

  intentDestinationSpeakers3 = [(_INPBWholeHouseAudioMetadata *)self intentDestinationSpeakers];
  if (intentDestinationSpeakers3)
  {
    v10 = intentDestinationSpeakers3;
    intentDestinationSpeakers4 = [(_INPBWholeHouseAudioMetadata *)self intentDestinationSpeakers];
    intentDestinationSpeakers5 = [equalCopy intentDestinationSpeakers];
    v13 = [intentDestinationSpeakers4 isEqual:intentDestinationSpeakers5];

    if (!v13)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  intentDestinationSpeakers = [(_INPBWholeHouseAudioMetadata *)self intentPermanentNames];
  intentDestinationSpeakers2 = [equalCopy intentPermanentNames];
  if ((intentDestinationSpeakers != 0) == (intentDestinationSpeakers2 == 0))
  {
    goto LABEL_74;
  }

  intentPermanentNames = [(_INPBWholeHouseAudioMetadata *)self intentPermanentNames];
  if (intentPermanentNames)
  {
    v15 = intentPermanentNames;
    intentPermanentNames2 = [(_INPBWholeHouseAudioMetadata *)self intentPermanentNames];
    intentPermanentNames3 = [equalCopy intentPermanentNames];
    v18 = [intentPermanentNames2 isEqual:intentPermanentNames3];

    if (!v18)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  intentDestinationSpeakers = [(_INPBWholeHouseAudioMetadata *)self intentSpeakerNames];
  intentDestinationSpeakers2 = [equalCopy intentSpeakerNames];
  if ((intentDestinationSpeakers != 0) == (intentDestinationSpeakers2 == 0))
  {
    goto LABEL_74;
  }

  intentSpeakerNames = [(_INPBWholeHouseAudioMetadata *)self intentSpeakerNames];
  if (intentSpeakerNames)
  {
    v20 = intentSpeakerNames;
    intentSpeakerNames2 = [(_INPBWholeHouseAudioMetadata *)self intentSpeakerNames];
    intentSpeakerNames3 = [equalCopy intentSpeakerNames];
    v23 = [intentSpeakerNames2 isEqual:intentSpeakerNames3];

    if (!v23)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  intentDestinationSpeakers = [(_INPBWholeHouseAudioMetadata *)self intentSpeakerRooms];
  intentDestinationSpeakers2 = [equalCopy intentSpeakerRooms];
  if ((intentDestinationSpeakers != 0) == (intentDestinationSpeakers2 == 0))
  {
    goto LABEL_74;
  }

  intentSpeakerRooms = [(_INPBWholeHouseAudioMetadata *)self intentSpeakerRooms];
  if (intentSpeakerRooms)
  {
    v25 = intentSpeakerRooms;
    intentSpeakerRooms2 = [(_INPBWholeHouseAudioMetadata *)self intentSpeakerRooms];
    intentSpeakerRooms3 = [equalCopy intentSpeakerRooms];
    v28 = [intentSpeakerRooms2 isEqual:intentSpeakerRooms3];

    if (!v28)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  hasIsAllSpeakers = [(_INPBWholeHouseAudioMetadata *)self hasIsAllSpeakers];
  if (hasIsAllSpeakers != [equalCopy hasIsAllSpeakers])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsAllSpeakers])
  {
    if ([equalCopy hasIsAllSpeakers])
    {
      isAllSpeakers = self->_isAllSpeakers;
      if (isAllSpeakers != [equalCopy isAllSpeakers])
      {
        goto LABEL_75;
      }
    }
  }

  hasIsInHere = [(_INPBWholeHouseAudioMetadata *)self hasIsInHere];
  if (hasIsInHere != [equalCopy hasIsInHere])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsInHere])
  {
    if ([equalCopy hasIsInHere])
    {
      isInHere = self->_isInHere;
      if (isInHere != [equalCopy isInHere])
      {
        goto LABEL_75;
      }
    }
  }

  hasIsParticipatingSpeaker = [(_INPBWholeHouseAudioMetadata *)self hasIsParticipatingSpeaker];
  if (hasIsParticipatingSpeaker != [equalCopy hasIsParticipatingSpeaker])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsParticipatingSpeaker])
  {
    if ([equalCopy hasIsParticipatingSpeaker])
    {
      isParticipatingSpeaker = self->_isParticipatingSpeaker;
      if (isParticipatingSpeaker != [equalCopy isParticipatingSpeaker])
      {
        goto LABEL_75;
      }
    }
  }

  hasIsPauseOrStop = [(_INPBWholeHouseAudioMetadata *)self hasIsPauseOrStop];
  if (hasIsPauseOrStop != [equalCopy hasIsPauseOrStop])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsPauseOrStop])
  {
    if ([equalCopy hasIsPauseOrStop])
    {
      isPauseOrStop = self->_isPauseOrStop;
      if (isPauseOrStop != [equalCopy isPauseOrStop])
      {
        goto LABEL_75;
      }
    }
  }

  hasIsWholeHouseAudioCommand = [(_INPBWholeHouseAudioMetadata *)self hasIsWholeHouseAudioCommand];
  if (hasIsWholeHouseAudioCommand != [equalCopy hasIsWholeHouseAudioCommand])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsWholeHouseAudioCommand])
  {
    if ([equalCopy hasIsWholeHouseAudioCommand])
    {
      isWholeHouseAudioCommand = self->_isWholeHouseAudioCommand;
      if (isWholeHouseAudioCommand != [equalCopy isWholeHouseAudioCommand])
      {
        goto LABEL_75;
      }
    }
  }

  hasNumberOfHomeAutomationWords = [(_INPBWholeHouseAudioMetadata *)self hasNumberOfHomeAutomationWords];
  if (hasNumberOfHomeAutomationWords != [equalCopy hasNumberOfHomeAutomationWords])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasNumberOfHomeAutomationWords])
  {
    if ([equalCopy hasNumberOfHomeAutomationWords])
    {
      numberOfHomeAutomationWords = self->_numberOfHomeAutomationWords;
      if (numberOfHomeAutomationWords != [equalCopy numberOfHomeAutomationWords])
      {
        goto LABEL_75;
      }
    }
  }

  intentDestinationSpeakers = [(_INPBWholeHouseAudioMetadata *)self permanentNames];
  intentDestinationSpeakers2 = [equalCopy permanentNames];
  if ((intentDestinationSpeakers != 0) == (intentDestinationSpeakers2 == 0))
  {
    goto LABEL_74;
  }

  permanentNames = [(_INPBWholeHouseAudioMetadata *)self permanentNames];
  if (permanentNames)
  {
    v42 = permanentNames;
    permanentNames2 = [(_INPBWholeHouseAudioMetadata *)self permanentNames];
    permanentNames3 = [equalCopy permanentNames];
    v45 = [permanentNames2 isEqual:permanentNames3];

    if (!v45)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  intentDestinationSpeakers = [(_INPBWholeHouseAudioMetadata *)self speakerNames];
  intentDestinationSpeakers2 = [equalCopy speakerNames];
  if ((intentDestinationSpeakers != 0) == (intentDestinationSpeakers2 == 0))
  {
    goto LABEL_74;
  }

  speakerNames = [(_INPBWholeHouseAudioMetadata *)self speakerNames];
  if (speakerNames)
  {
    v47 = speakerNames;
    speakerNames2 = [(_INPBWholeHouseAudioMetadata *)self speakerNames];
    speakerNames3 = [equalCopy speakerNames];
    v50 = [speakerNames2 isEqual:speakerNames3];

    if (!v50)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  intentDestinationSpeakers = [(_INPBWholeHouseAudioMetadata *)self speakerRooms];
  intentDestinationSpeakers2 = [equalCopy speakerRooms];
  if ((intentDestinationSpeakers != 0) == (intentDestinationSpeakers2 == 0))
  {
    goto LABEL_74;
  }

  speakerRooms = [(_INPBWholeHouseAudioMetadata *)self speakerRooms];
  if (speakerRooms)
  {
    v52 = speakerRooms;
    speakerRooms2 = [(_INPBWholeHouseAudioMetadata *)self speakerRooms];
    speakerRooms3 = [equalCopy speakerRooms];
    v55 = [speakerRooms2 isEqual:speakerRooms3];

    if (!v55)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  intentDestinationSpeakers = [(_INPBWholeHouseAudioMetadata *)self spokenEntityNames];
  intentDestinationSpeakers2 = [equalCopy spokenEntityNames];
  if ((intentDestinationSpeakers != 0) == (intentDestinationSpeakers2 == 0))
  {
    goto LABEL_74;
  }

  spokenEntityNames = [(_INPBWholeHouseAudioMetadata *)self spokenEntityNames];
  if (spokenEntityNames)
  {
    v57 = spokenEntityNames;
    spokenEntityNames2 = [(_INPBWholeHouseAudioMetadata *)self spokenEntityNames];
    spokenEntityNames3 = [equalCopy spokenEntityNames];
    v60 = [spokenEntityNames2 isEqual:spokenEntityNames3];

    if (!v60)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  intentDestinationSpeakers = [(_INPBWholeHouseAudioMetadata *)self spokenEntityTypes];
  intentDestinationSpeakers2 = [equalCopy spokenEntityTypes];
  if ((intentDestinationSpeakers != 0) != (intentDestinationSpeakers2 == 0))
  {
    spokenEntityTypes = [(_INPBWholeHouseAudioMetadata *)self spokenEntityTypes];
    if (!spokenEntityTypes)
    {

LABEL_78:
      v66 = 1;
      goto LABEL_76;
    }

    v62 = spokenEntityTypes;
    spokenEntityTypes2 = [(_INPBWholeHouseAudioMetadata *)self spokenEntityTypes];
    spokenEntityTypes3 = [equalCopy spokenEntityTypes];
    v65 = [spokenEntityTypes2 isEqual:spokenEntityTypes3];

    if (v65)
    {
      goto LABEL_78;
    }
  }

  else
  {
LABEL_74:
  }

LABEL_75:
  v66 = 0;
LABEL_76:

  return v66;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBWholeHouseAudioMetadata allocWithZone:](_INPBWholeHouseAudioMetadata init];
  if ([(_INPBWholeHouseAudioMetadata *)self hasHasExcept])
  {
    [(_INPBWholeHouseAudioMetadata *)v5 setHasExcept:[(_INPBWholeHouseAudioMetadata *)self hasExcept]];
  }

  v6 = [(NSArray *)self->_intentDestinationSpeakers copyWithZone:zone];
  [(_INPBWholeHouseAudioMetadata *)v5 setIntentDestinationSpeakers:v6];

  v7 = [(NSArray *)self->_intentPermanentNames copyWithZone:zone];
  [(_INPBWholeHouseAudioMetadata *)v5 setIntentPermanentNames:v7];

  v8 = [(NSArray *)self->_intentSpeakerNames copyWithZone:zone];
  [(_INPBWholeHouseAudioMetadata *)v5 setIntentSpeakerNames:v8];

  v9 = [(NSArray *)self->_intentSpeakerRooms copyWithZone:zone];
  [(_INPBWholeHouseAudioMetadata *)v5 setIntentSpeakerRooms:v9];

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsAllSpeakers])
  {
    [(_INPBWholeHouseAudioMetadata *)v5 setIsAllSpeakers:[(_INPBWholeHouseAudioMetadata *)self isAllSpeakers]];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsInHere])
  {
    [(_INPBWholeHouseAudioMetadata *)v5 setIsInHere:[(_INPBWholeHouseAudioMetadata *)self isInHere]];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsParticipatingSpeaker])
  {
    [(_INPBWholeHouseAudioMetadata *)v5 setIsParticipatingSpeaker:[(_INPBWholeHouseAudioMetadata *)self isParticipatingSpeaker]];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsPauseOrStop])
  {
    [(_INPBWholeHouseAudioMetadata *)v5 setIsPauseOrStop:[(_INPBWholeHouseAudioMetadata *)self isPauseOrStop]];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsWholeHouseAudioCommand])
  {
    [(_INPBWholeHouseAudioMetadata *)v5 setIsWholeHouseAudioCommand:[(_INPBWholeHouseAudioMetadata *)self isWholeHouseAudioCommand]];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasNumberOfHomeAutomationWords])
  {
    [(_INPBWholeHouseAudioMetadata *)v5 setNumberOfHomeAutomationWords:[(_INPBWholeHouseAudioMetadata *)self numberOfHomeAutomationWords]];
  }

  v10 = [(NSArray *)self->_permanentNames copyWithZone:zone];
  [(_INPBWholeHouseAudioMetadata *)v5 setPermanentNames:v10];

  v11 = [(NSArray *)self->_speakerNames copyWithZone:zone];
  [(_INPBWholeHouseAudioMetadata *)v5 setSpeakerNames:v11];

  v12 = [(NSArray *)self->_speakerRooms copyWithZone:zone];
  [(_INPBWholeHouseAudioMetadata *)v5 setSpeakerRooms:v12];

  v13 = [(NSArray *)self->_spokenEntityNames copyWithZone:zone];
  [(_INPBWholeHouseAudioMetadata *)v5 setSpokenEntityNames:v13];

  v14 = [(NSArray *)self->_spokenEntityTypes copyWithZone:zone];
  [(_INPBWholeHouseAudioMetadata *)v5 setSpokenEntityTypes:v14];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBWholeHouseAudioMetadata *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBWholeHouseAudioMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBWholeHouseAudioMetadata *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v112 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_INPBWholeHouseAudioMetadata *)self hasHasExcept])
  {
    hasExcept = self->_hasExcept;
    PBDataWriterWriteBOOLField();
  }

  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v6 = self->_intentDestinationSpeakers;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v99 objects:v111 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v100;
    do
    {
      v10 = 0;
      do
      {
        if (*v100 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v99 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v99 objects:v111 count:16];
    }

    while (v8);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v12 = self->_intentPermanentNames;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v95 objects:v110 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v96;
    do
    {
      v16 = 0;
      do
      {
        if (*v96 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v95 + 1) + 8 * v16);
        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v95 objects:v110 count:16];
    }

    while (v14);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v18 = self->_intentSpeakerNames;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v91 objects:v109 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v92;
    do
    {
      v22 = 0;
      do
      {
        if (*v92 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v91 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v91 objects:v109 count:16];
    }

    while (v20);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v24 = self->_intentSpeakerRooms;
  v25 = [(NSArray *)v24 countByEnumeratingWithState:&v87 objects:v108 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v88;
    do
    {
      v28 = 0;
      do
      {
        if (*v88 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v87 + 1) + 8 * v28);
        PBDataWriterWriteSubmessage();
        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSArray *)v24 countByEnumeratingWithState:&v87 objects:v108 count:16];
    }

    while (v26);
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsAllSpeakers])
  {
    isAllSpeakers = self->_isAllSpeakers;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsInHere])
  {
    isInHere = self->_isInHere;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsParticipatingSpeaker])
  {
    isParticipatingSpeaker = self->_isParticipatingSpeaker;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsPauseOrStop])
  {
    isPauseOrStop = self->_isPauseOrStop;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsWholeHouseAudioCommand])
  {
    isWholeHouseAudioCommand = self->_isWholeHouseAudioCommand;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasNumberOfHomeAutomationWords])
  {
    numberOfHomeAutomationWords = self->_numberOfHomeAutomationWords;
    PBDataWriterWriteInt32Field();
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v36 = self->_permanentNames;
  v37 = [(NSArray *)v36 countByEnumeratingWithState:&v83 objects:v107 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v84;
    do
    {
      v40 = 0;
      do
      {
        if (*v84 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v83 + 1) + 8 * v40);
        PBDataWriterWriteSubmessage();
        ++v40;
      }

      while (v38 != v40);
      v38 = [(NSArray *)v36 countByEnumeratingWithState:&v83 objects:v107 count:16];
    }

    while (v38);
  }

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v42 = self->_speakerNames;
  v43 = [(NSArray *)v42 countByEnumeratingWithState:&v79 objects:v106 count:16];
  if (v43)
  {
    v44 = v43;
    v45 = *v80;
    do
    {
      v46 = 0;
      do
      {
        if (*v80 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v47 = *(*(&v79 + 1) + 8 * v46);
        PBDataWriterWriteSubmessage();
        ++v46;
      }

      while (v44 != v46);
      v44 = [(NSArray *)v42 countByEnumeratingWithState:&v79 objects:v106 count:16];
    }

    while (v44);
  }

  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v48 = self->_speakerRooms;
  v49 = [(NSArray *)v48 countByEnumeratingWithState:&v75 objects:v105 count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v76;
    do
    {
      v52 = 0;
      do
      {
        if (*v76 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v75 + 1) + 8 * v52);
        PBDataWriterWriteSubmessage();
        ++v52;
      }

      while (v50 != v52);
      v50 = [(NSArray *)v48 countByEnumeratingWithState:&v75 objects:v105 count:16];
    }

    while (v50);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v54 = self->_spokenEntityNames;
  v55 = [(NSArray *)v54 countByEnumeratingWithState:&v71 objects:v104 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v72;
    do
    {
      v58 = 0;
      do
      {
        if (*v72 != v57)
        {
          objc_enumerationMutation(v54);
        }

        v59 = *(*(&v71 + 1) + 8 * v58);
        PBDataWriterWriteSubmessage();
        ++v58;
      }

      while (v56 != v58);
      v56 = [(NSArray *)v54 countByEnumeratingWithState:&v71 objects:v104 count:16];
    }

    while (v56);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v60 = self->_spokenEntityTypes;
  v61 = [(NSArray *)v60 countByEnumeratingWithState:&v67 objects:v103 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v68;
    do
    {
      v64 = 0;
      do
      {
        if (*v68 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = *(*(&v67 + 1) + 8 * v64);
        PBDataWriterWriteSubmessage();
        ++v64;
      }

      while (v62 != v64);
      v62 = [(NSArray *)v60 countByEnumeratingWithState:&v67 objects:v103 count:16];
    }

    while (v62);
  }

  v66 = *MEMORY[0x1E69E9840];
}

- (void)addSpokenEntityType:(id)type
{
  typeCopy = type;
  spokenEntityTypes = self->_spokenEntityTypes;
  v8 = typeCopy;
  if (!spokenEntityTypes)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_spokenEntityTypes;
    self->_spokenEntityTypes = array;

    typeCopy = v8;
    spokenEntityTypes = self->_spokenEntityTypes;
  }

  [(NSArray *)spokenEntityTypes addObject:typeCopy];
}

- (void)setSpokenEntityTypes:(id)types
{
  v4 = [types mutableCopy];
  spokenEntityTypes = self->_spokenEntityTypes;
  self->_spokenEntityTypes = v4;

  MEMORY[0x1EEE66BB8](v4, spokenEntityTypes);
}

- (void)addSpokenEntityName:(id)name
{
  nameCopy = name;
  spokenEntityNames = self->_spokenEntityNames;
  v8 = nameCopy;
  if (!spokenEntityNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_spokenEntityNames;
    self->_spokenEntityNames = array;

    nameCopy = v8;
    spokenEntityNames = self->_spokenEntityNames;
  }

  [(NSArray *)spokenEntityNames addObject:nameCopy];
}

- (void)setSpokenEntityNames:(id)names
{
  v4 = [names mutableCopy];
  spokenEntityNames = self->_spokenEntityNames;
  self->_spokenEntityNames = v4;

  MEMORY[0x1EEE66BB8](v4, spokenEntityNames);
}

- (void)addSpeakerRooms:(id)rooms
{
  roomsCopy = rooms;
  speakerRooms = self->_speakerRooms;
  v8 = roomsCopy;
  if (!speakerRooms)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_speakerRooms;
    self->_speakerRooms = array;

    roomsCopy = v8;
    speakerRooms = self->_speakerRooms;
  }

  [(NSArray *)speakerRooms addObject:roomsCopy];
}

- (void)setSpeakerRooms:(id)rooms
{
  v4 = [rooms mutableCopy];
  speakerRooms = self->_speakerRooms;
  self->_speakerRooms = v4;

  MEMORY[0x1EEE66BB8](v4, speakerRooms);
}

- (void)addSpeakerNames:(id)names
{
  namesCopy = names;
  speakerNames = self->_speakerNames;
  v8 = namesCopy;
  if (!speakerNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_speakerNames;
    self->_speakerNames = array;

    namesCopy = v8;
    speakerNames = self->_speakerNames;
  }

  [(NSArray *)speakerNames addObject:namesCopy];
}

- (void)setSpeakerNames:(id)names
{
  v4 = [names mutableCopy];
  speakerNames = self->_speakerNames;
  self->_speakerNames = v4;

  MEMORY[0x1EEE66BB8](v4, speakerNames);
}

- (void)addPermanentNames:(id)names
{
  namesCopy = names;
  permanentNames = self->_permanentNames;
  v8 = namesCopy;
  if (!permanentNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_permanentNames;
    self->_permanentNames = array;

    namesCopy = v8;
    permanentNames = self->_permanentNames;
  }

  [(NSArray *)permanentNames addObject:namesCopy];
}

- (void)setPermanentNames:(id)names
{
  v4 = [names mutableCopy];
  permanentNames = self->_permanentNames;
  self->_permanentNames = v4;

  MEMORY[0x1EEE66BB8](v4, permanentNames);
}

- (void)setHasNumberOfHomeAutomationWords:(BOOL)words
{
  if (words)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsWholeHouseAudioCommand:(BOOL)command
{
  if (command)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsPauseOrStop:(BOOL)stop
{
  if (stop)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsParticipatingSpeaker:(BOOL)speaker
{
  if (speaker)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsInHere:(BOOL)here
{
  if (here)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsAllSpeakers:(BOOL)speakers
{
  if (speakers)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addIntentSpeakerRooms:(id)rooms
{
  roomsCopy = rooms;
  intentSpeakerRooms = self->_intentSpeakerRooms;
  v8 = roomsCopy;
  if (!intentSpeakerRooms)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentSpeakerRooms;
    self->_intentSpeakerRooms = array;

    roomsCopy = v8;
    intentSpeakerRooms = self->_intentSpeakerRooms;
  }

  [(NSArray *)intentSpeakerRooms addObject:roomsCopy];
}

- (void)setIntentSpeakerRooms:(id)rooms
{
  v4 = [rooms mutableCopy];
  intentSpeakerRooms = self->_intentSpeakerRooms;
  self->_intentSpeakerRooms = v4;

  MEMORY[0x1EEE66BB8](v4, intentSpeakerRooms);
}

- (void)addIntentSpeakerNames:(id)names
{
  namesCopy = names;
  intentSpeakerNames = self->_intentSpeakerNames;
  v8 = namesCopy;
  if (!intentSpeakerNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentSpeakerNames;
    self->_intentSpeakerNames = array;

    namesCopy = v8;
    intentSpeakerNames = self->_intentSpeakerNames;
  }

  [(NSArray *)intentSpeakerNames addObject:namesCopy];
}

- (void)setIntentSpeakerNames:(id)names
{
  v4 = [names mutableCopy];
  intentSpeakerNames = self->_intentSpeakerNames;
  self->_intentSpeakerNames = v4;

  MEMORY[0x1EEE66BB8](v4, intentSpeakerNames);
}

- (void)addIntentPermanentNames:(id)names
{
  namesCopy = names;
  intentPermanentNames = self->_intentPermanentNames;
  v8 = namesCopy;
  if (!intentPermanentNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentPermanentNames;
    self->_intentPermanentNames = array;

    namesCopy = v8;
    intentPermanentNames = self->_intentPermanentNames;
  }

  [(NSArray *)intentPermanentNames addObject:namesCopy];
}

- (void)setIntentPermanentNames:(id)names
{
  v4 = [names mutableCopy];
  intentPermanentNames = self->_intentPermanentNames;
  self->_intentPermanentNames = v4;

  MEMORY[0x1EEE66BB8](v4, intentPermanentNames);
}

- (void)addIntentDestinationSpeakers:(id)speakers
{
  speakersCopy = speakers;
  intentDestinationSpeakers = self->_intentDestinationSpeakers;
  v8 = speakersCopy;
  if (!intentDestinationSpeakers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentDestinationSpeakers;
    self->_intentDestinationSpeakers = array;

    speakersCopy = v8;
    intentDestinationSpeakers = self->_intentDestinationSpeakers;
  }

  [(NSArray *)intentDestinationSpeakers addObject:speakersCopy];
}

- (void)setIntentDestinationSpeakers:(id)speakers
{
  v4 = [speakers mutableCopy];
  intentDestinationSpeakers = self->_intentDestinationSpeakers;
  self->_intentDestinationSpeakers = v4;

  MEMORY[0x1EEE66BB8](v4, intentDestinationSpeakers);
}

@end