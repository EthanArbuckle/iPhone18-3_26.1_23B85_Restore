@interface _INPBWholeHouseAudioMetadata
- (BOOL)isEqual:(id)a3;
- (_INPBWholeHouseAudioMetadata)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addIntentDestinationSpeakers:(id)a3;
- (void)addIntentPermanentNames:(id)a3;
- (void)addIntentSpeakerNames:(id)a3;
- (void)addIntentSpeakerRooms:(id)a3;
- (void)addPermanentNames:(id)a3;
- (void)addSpeakerNames:(id)a3;
- (void)addSpeakerRooms:(id)a3;
- (void)addSpokenEntityName:(id)a3;
- (void)addSpokenEntityType:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setHasIsAllSpeakers:(BOOL)a3;
- (void)setHasIsInHere:(BOOL)a3;
- (void)setHasIsParticipatingSpeaker:(BOOL)a3;
- (void)setHasIsPauseOrStop:(BOOL)a3;
- (void)setHasIsWholeHouseAudioCommand:(BOOL)a3;
- (void)setHasNumberOfHomeAutomationWords:(BOOL)a3;
- (void)setIntentDestinationSpeakers:(id)a3;
- (void)setIntentPermanentNames:(id)a3;
- (void)setIntentSpeakerNames:(id)a3;
- (void)setIntentSpeakerRooms:(id)a3;
- (void)setPermanentNames:(id)a3;
- (void)setSpeakerNames:(id)a3;
- (void)setSpeakerRooms:(id)a3;
- (void)setSpokenEntityNames:(id)a3;
- (void)setSpokenEntityTypes:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBWholeHouseAudioMetadata

- (id)dictionaryRepresentation
{
  v121 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(_INPBWholeHouseAudioMetadata *)self hasHasExcept])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBWholeHouseAudioMetadata hasExcept](self, "hasExcept")}];
    [v3 setObject:v4 forKeyedSubscript:@"hasExcept"];
  }

  if ([(NSArray *)self->_intentDestinationSpeakers count])
  {
    v5 = [MEMORY[0x1E695DF70] array];
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

          v11 = [*(*(&v108 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v108 objects:v120 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKeyedSubscript:@"intentDestinationSpeakers"];
  }

  if ([(NSArray *)self->_intentPermanentNames count])
  {
    v12 = [MEMORY[0x1E695DF70] array];
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

          v18 = [*(*(&v104 + 1) + 8 * j) dictionaryRepresentation];
          [v12 addObject:v18];
        }

        v15 = [(NSArray *)v13 countByEnumeratingWithState:&v104 objects:v119 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKeyedSubscript:@"intentPermanentNames"];
  }

  if ([(NSArray *)self->_intentSpeakerNames count])
  {
    v19 = [MEMORY[0x1E695DF70] array];
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

          v25 = [*(*(&v100 + 1) + 8 * k) dictionaryRepresentation];
          [v19 addObject:v25];
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v100 objects:v118 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKeyedSubscript:@"intentSpeakerNames"];
  }

  if ([(NSArray *)self->_intentSpeakerRooms count])
  {
    v26 = [MEMORY[0x1E695DF70] array];
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

          v32 = [*(*(&v96 + 1) + 8 * m) dictionaryRepresentation];
          [v26 addObject:v32];
        }

        v29 = [(NSArray *)v27 countByEnumeratingWithState:&v96 objects:v117 count:16];
      }

      while (v29);
    }

    [v3 setObject:v26 forKeyedSubscript:@"intentSpeakerRooms"];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsAllSpeakers])
  {
    v33 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBWholeHouseAudioMetadata isAllSpeakers](self, "isAllSpeakers")}];
    [v3 setObject:v33 forKeyedSubscript:@"isAllSpeakers"];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsInHere])
  {
    v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBWholeHouseAudioMetadata isInHere](self, "isInHere")}];
    [v3 setObject:v34 forKeyedSubscript:@"isInHere"];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsParticipatingSpeaker])
  {
    v35 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBWholeHouseAudioMetadata isParticipatingSpeaker](self, "isParticipatingSpeaker")}];
    [v3 setObject:v35 forKeyedSubscript:@"isParticipatingSpeaker"];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsPauseOrStop])
  {
    v36 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBWholeHouseAudioMetadata isPauseOrStop](self, "isPauseOrStop")}];
    [v3 setObject:v36 forKeyedSubscript:@"isPauseOrStop"];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsWholeHouseAudioCommand])
  {
    v37 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBWholeHouseAudioMetadata isWholeHouseAudioCommand](self, "isWholeHouseAudioCommand")}];
    [v3 setObject:v37 forKeyedSubscript:@"isWholeHouseAudioCommand"];
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasNumberOfHomeAutomationWords])
  {
    v38 = [MEMORY[0x1E696AD98] numberWithInt:{-[_INPBWholeHouseAudioMetadata numberOfHomeAutomationWords](self, "numberOfHomeAutomationWords")}];
    [v3 setObject:v38 forKeyedSubscript:@"numberOfHomeAutomationWords"];
  }

  if ([(NSArray *)self->_permanentNames count])
  {
    v39 = [MEMORY[0x1E695DF70] array];
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

          v45 = [*(*(&v92 + 1) + 8 * n) dictionaryRepresentation];
          [v39 addObject:v45];
        }

        v42 = [(NSArray *)v40 countByEnumeratingWithState:&v92 objects:v116 count:16];
      }

      while (v42);
    }

    [v3 setObject:v39 forKeyedSubscript:@"permanentNames"];
  }

  if ([(NSArray *)self->_speakerNames count])
  {
    v46 = [MEMORY[0x1E695DF70] array];
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

          v52 = [*(*(&v88 + 1) + 8 * ii) dictionaryRepresentation];
          [v46 addObject:v52];
        }

        v49 = [(NSArray *)v47 countByEnumeratingWithState:&v88 objects:v115 count:16];
      }

      while (v49);
    }

    [v3 setObject:v46 forKeyedSubscript:@"speakerNames"];
  }

  if ([(NSArray *)self->_speakerRooms count])
  {
    v53 = [MEMORY[0x1E695DF70] array];
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

          v59 = [*(*(&v84 + 1) + 8 * jj) dictionaryRepresentation];
          [v53 addObject:v59];
        }

        v56 = [(NSArray *)v54 countByEnumeratingWithState:&v84 objects:v114 count:16];
      }

      while (v56);
    }

    [v3 setObject:v53 forKeyedSubscript:@"speakerRooms"];
  }

  if ([(NSArray *)self->_spokenEntityNames count])
  {
    v60 = [MEMORY[0x1E695DF70] array];
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

          v66 = [*(*(&v80 + 1) + 8 * kk) dictionaryRepresentation];
          [v60 addObject:v66];
        }

        v63 = [(NSArray *)v61 countByEnumeratingWithState:&v80 objects:v113 count:16];
      }

      while (v63);
    }

    [v3 setObject:v60 forKeyedSubscript:@"spokenEntityName"];
  }

  if ([(NSArray *)self->_spokenEntityTypes count])
  {
    v67 = [MEMORY[0x1E695DF70] array];
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

          v73 = [*(*(&v76 + 1) + 8 * mm) dictionaryRepresentation];
          [v67 addObject:v73];
        }

        v70 = [(NSArray *)v68 countByEnumeratingWithState:&v76 objects:v112 count:16];
      }

      while (v70);
    }

    [v3 setObject:v67 forKeyedSubscript:@"spokenEntityType"];
  }

  v74 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_75;
  }

  v5 = [(_INPBWholeHouseAudioMetadata *)self hasHasExcept];
  if (v5 != [v4 hasHasExcept])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasHasExcept])
  {
    if ([v4 hasHasExcept])
    {
      hasExcept = self->_hasExcept;
      if (hasExcept != [v4 hasExcept])
      {
        goto LABEL_75;
      }
    }
  }

  v7 = [(_INPBWholeHouseAudioMetadata *)self intentDestinationSpeakers];
  v8 = [v4 intentDestinationSpeakers];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_74;
  }

  v9 = [(_INPBWholeHouseAudioMetadata *)self intentDestinationSpeakers];
  if (v9)
  {
    v10 = v9;
    v11 = [(_INPBWholeHouseAudioMetadata *)self intentDestinationSpeakers];
    v12 = [v4 intentDestinationSpeakers];
    v13 = [v11 isEqual:v12];

    if (!v13)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  v7 = [(_INPBWholeHouseAudioMetadata *)self intentPermanentNames];
  v8 = [v4 intentPermanentNames];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_74;
  }

  v14 = [(_INPBWholeHouseAudioMetadata *)self intentPermanentNames];
  if (v14)
  {
    v15 = v14;
    v16 = [(_INPBWholeHouseAudioMetadata *)self intentPermanentNames];
    v17 = [v4 intentPermanentNames];
    v18 = [v16 isEqual:v17];

    if (!v18)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  v7 = [(_INPBWholeHouseAudioMetadata *)self intentSpeakerNames];
  v8 = [v4 intentSpeakerNames];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_74;
  }

  v19 = [(_INPBWholeHouseAudioMetadata *)self intentSpeakerNames];
  if (v19)
  {
    v20 = v19;
    v21 = [(_INPBWholeHouseAudioMetadata *)self intentSpeakerNames];
    v22 = [v4 intentSpeakerNames];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  v7 = [(_INPBWholeHouseAudioMetadata *)self intentSpeakerRooms];
  v8 = [v4 intentSpeakerRooms];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_74;
  }

  v24 = [(_INPBWholeHouseAudioMetadata *)self intentSpeakerRooms];
  if (v24)
  {
    v25 = v24;
    v26 = [(_INPBWholeHouseAudioMetadata *)self intentSpeakerRooms];
    v27 = [v4 intentSpeakerRooms];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  v29 = [(_INPBWholeHouseAudioMetadata *)self hasIsAllSpeakers];
  if (v29 != [v4 hasIsAllSpeakers])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsAllSpeakers])
  {
    if ([v4 hasIsAllSpeakers])
    {
      isAllSpeakers = self->_isAllSpeakers;
      if (isAllSpeakers != [v4 isAllSpeakers])
      {
        goto LABEL_75;
      }
    }
  }

  v31 = [(_INPBWholeHouseAudioMetadata *)self hasIsInHere];
  if (v31 != [v4 hasIsInHere])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsInHere])
  {
    if ([v4 hasIsInHere])
    {
      isInHere = self->_isInHere;
      if (isInHere != [v4 isInHere])
      {
        goto LABEL_75;
      }
    }
  }

  v33 = [(_INPBWholeHouseAudioMetadata *)self hasIsParticipatingSpeaker];
  if (v33 != [v4 hasIsParticipatingSpeaker])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsParticipatingSpeaker])
  {
    if ([v4 hasIsParticipatingSpeaker])
    {
      isParticipatingSpeaker = self->_isParticipatingSpeaker;
      if (isParticipatingSpeaker != [v4 isParticipatingSpeaker])
      {
        goto LABEL_75;
      }
    }
  }

  v35 = [(_INPBWholeHouseAudioMetadata *)self hasIsPauseOrStop];
  if (v35 != [v4 hasIsPauseOrStop])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsPauseOrStop])
  {
    if ([v4 hasIsPauseOrStop])
    {
      isPauseOrStop = self->_isPauseOrStop;
      if (isPauseOrStop != [v4 isPauseOrStop])
      {
        goto LABEL_75;
      }
    }
  }

  v37 = [(_INPBWholeHouseAudioMetadata *)self hasIsWholeHouseAudioCommand];
  if (v37 != [v4 hasIsWholeHouseAudioCommand])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasIsWholeHouseAudioCommand])
  {
    if ([v4 hasIsWholeHouseAudioCommand])
    {
      isWholeHouseAudioCommand = self->_isWholeHouseAudioCommand;
      if (isWholeHouseAudioCommand != [v4 isWholeHouseAudioCommand])
      {
        goto LABEL_75;
      }
    }
  }

  v39 = [(_INPBWholeHouseAudioMetadata *)self hasNumberOfHomeAutomationWords];
  if (v39 != [v4 hasNumberOfHomeAutomationWords])
  {
    goto LABEL_75;
  }

  if ([(_INPBWholeHouseAudioMetadata *)self hasNumberOfHomeAutomationWords])
  {
    if ([v4 hasNumberOfHomeAutomationWords])
    {
      numberOfHomeAutomationWords = self->_numberOfHomeAutomationWords;
      if (numberOfHomeAutomationWords != [v4 numberOfHomeAutomationWords])
      {
        goto LABEL_75;
      }
    }
  }

  v7 = [(_INPBWholeHouseAudioMetadata *)self permanentNames];
  v8 = [v4 permanentNames];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_74;
  }

  v41 = [(_INPBWholeHouseAudioMetadata *)self permanentNames];
  if (v41)
  {
    v42 = v41;
    v43 = [(_INPBWholeHouseAudioMetadata *)self permanentNames];
    v44 = [v4 permanentNames];
    v45 = [v43 isEqual:v44];

    if (!v45)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  v7 = [(_INPBWholeHouseAudioMetadata *)self speakerNames];
  v8 = [v4 speakerNames];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_74;
  }

  v46 = [(_INPBWholeHouseAudioMetadata *)self speakerNames];
  if (v46)
  {
    v47 = v46;
    v48 = [(_INPBWholeHouseAudioMetadata *)self speakerNames];
    v49 = [v4 speakerNames];
    v50 = [v48 isEqual:v49];

    if (!v50)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  v7 = [(_INPBWholeHouseAudioMetadata *)self speakerRooms];
  v8 = [v4 speakerRooms];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_74;
  }

  v51 = [(_INPBWholeHouseAudioMetadata *)self speakerRooms];
  if (v51)
  {
    v52 = v51;
    v53 = [(_INPBWholeHouseAudioMetadata *)self speakerRooms];
    v54 = [v4 speakerRooms];
    v55 = [v53 isEqual:v54];

    if (!v55)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  v7 = [(_INPBWholeHouseAudioMetadata *)self spokenEntityNames];
  v8 = [v4 spokenEntityNames];
  if ((v7 != 0) == (v8 == 0))
  {
    goto LABEL_74;
  }

  v56 = [(_INPBWholeHouseAudioMetadata *)self spokenEntityNames];
  if (v56)
  {
    v57 = v56;
    v58 = [(_INPBWholeHouseAudioMetadata *)self spokenEntityNames];
    v59 = [v4 spokenEntityNames];
    v60 = [v58 isEqual:v59];

    if (!v60)
    {
      goto LABEL_75;
    }
  }

  else
  {
  }

  v7 = [(_INPBWholeHouseAudioMetadata *)self spokenEntityTypes];
  v8 = [v4 spokenEntityTypes];
  if ((v7 != 0) != (v8 == 0))
  {
    v61 = [(_INPBWholeHouseAudioMetadata *)self spokenEntityTypes];
    if (!v61)
    {

LABEL_78:
      v66 = 1;
      goto LABEL_76;
    }

    v62 = v61;
    v63 = [(_INPBWholeHouseAudioMetadata *)self spokenEntityTypes];
    v64 = [v4 spokenEntityTypes];
    v65 = [v63 isEqual:v64];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBWholeHouseAudioMetadata allocWithZone:](_INPBWholeHouseAudioMetadata init];
  if ([(_INPBWholeHouseAudioMetadata *)self hasHasExcept])
  {
    [(_INPBWholeHouseAudioMetadata *)v5 setHasExcept:[(_INPBWholeHouseAudioMetadata *)self hasExcept]];
  }

  v6 = [(NSArray *)self->_intentDestinationSpeakers copyWithZone:a3];
  [(_INPBWholeHouseAudioMetadata *)v5 setIntentDestinationSpeakers:v6];

  v7 = [(NSArray *)self->_intentPermanentNames copyWithZone:a3];
  [(_INPBWholeHouseAudioMetadata *)v5 setIntentPermanentNames:v7];

  v8 = [(NSArray *)self->_intentSpeakerNames copyWithZone:a3];
  [(_INPBWholeHouseAudioMetadata *)v5 setIntentSpeakerNames:v8];

  v9 = [(NSArray *)self->_intentSpeakerRooms copyWithZone:a3];
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

  v10 = [(NSArray *)self->_permanentNames copyWithZone:a3];
  [(_INPBWholeHouseAudioMetadata *)v5 setPermanentNames:v10];

  v11 = [(NSArray *)self->_speakerNames copyWithZone:a3];
  [(_INPBWholeHouseAudioMetadata *)v5 setSpeakerNames:v11];

  v12 = [(NSArray *)self->_speakerRooms copyWithZone:a3];
  [(_INPBWholeHouseAudioMetadata *)v5 setSpeakerRooms:v12];

  v13 = [(NSArray *)self->_spokenEntityNames copyWithZone:a3];
  [(_INPBWholeHouseAudioMetadata *)v5 setSpokenEntityNames:v13];

  v14 = [(NSArray *)self->_spokenEntityTypes copyWithZone:a3];
  [(_INPBWholeHouseAudioMetadata *)v5 setSpokenEntityTypes:v14];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBWholeHouseAudioMetadata *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBWholeHouseAudioMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBWholeHouseAudioMetadata *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v112 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

- (void)addSpokenEntityType:(id)a3
{
  v4 = a3;
  spokenEntityTypes = self->_spokenEntityTypes;
  v8 = v4;
  if (!spokenEntityTypes)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_spokenEntityTypes;
    self->_spokenEntityTypes = v6;

    v4 = v8;
    spokenEntityTypes = self->_spokenEntityTypes;
  }

  [(NSArray *)spokenEntityTypes addObject:v4];
}

- (void)setSpokenEntityTypes:(id)a3
{
  v4 = [a3 mutableCopy];
  spokenEntityTypes = self->_spokenEntityTypes;
  self->_spokenEntityTypes = v4;

  MEMORY[0x1EEE66BB8](v4, spokenEntityTypes);
}

- (void)addSpokenEntityName:(id)a3
{
  v4 = a3;
  spokenEntityNames = self->_spokenEntityNames;
  v8 = v4;
  if (!spokenEntityNames)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_spokenEntityNames;
    self->_spokenEntityNames = v6;

    v4 = v8;
    spokenEntityNames = self->_spokenEntityNames;
  }

  [(NSArray *)spokenEntityNames addObject:v4];
}

- (void)setSpokenEntityNames:(id)a3
{
  v4 = [a3 mutableCopy];
  spokenEntityNames = self->_spokenEntityNames;
  self->_spokenEntityNames = v4;

  MEMORY[0x1EEE66BB8](v4, spokenEntityNames);
}

- (void)addSpeakerRooms:(id)a3
{
  v4 = a3;
  speakerRooms = self->_speakerRooms;
  v8 = v4;
  if (!speakerRooms)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_speakerRooms;
    self->_speakerRooms = v6;

    v4 = v8;
    speakerRooms = self->_speakerRooms;
  }

  [(NSArray *)speakerRooms addObject:v4];
}

- (void)setSpeakerRooms:(id)a3
{
  v4 = [a3 mutableCopy];
  speakerRooms = self->_speakerRooms;
  self->_speakerRooms = v4;

  MEMORY[0x1EEE66BB8](v4, speakerRooms);
}

- (void)addSpeakerNames:(id)a3
{
  v4 = a3;
  speakerNames = self->_speakerNames;
  v8 = v4;
  if (!speakerNames)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_speakerNames;
    self->_speakerNames = v6;

    v4 = v8;
    speakerNames = self->_speakerNames;
  }

  [(NSArray *)speakerNames addObject:v4];
}

- (void)setSpeakerNames:(id)a3
{
  v4 = [a3 mutableCopy];
  speakerNames = self->_speakerNames;
  self->_speakerNames = v4;

  MEMORY[0x1EEE66BB8](v4, speakerNames);
}

- (void)addPermanentNames:(id)a3
{
  v4 = a3;
  permanentNames = self->_permanentNames;
  v8 = v4;
  if (!permanentNames)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_permanentNames;
    self->_permanentNames = v6;

    v4 = v8;
    permanentNames = self->_permanentNames;
  }

  [(NSArray *)permanentNames addObject:v4];
}

- (void)setPermanentNames:(id)a3
{
  v4 = [a3 mutableCopy];
  permanentNames = self->_permanentNames;
  self->_permanentNames = v4;

  MEMORY[0x1EEE66BB8](v4, permanentNames);
}

- (void)setHasNumberOfHomeAutomationWords:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xBF | v3;
}

- (void)setHasIsWholeHouseAudioCommand:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setHasIsPauseOrStop:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIsParticipatingSpeaker:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasIsInHere:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIsAllSpeakers:(BOOL)a3
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

- (void)addIntentSpeakerRooms:(id)a3
{
  v4 = a3;
  intentSpeakerRooms = self->_intentSpeakerRooms;
  v8 = v4;
  if (!intentSpeakerRooms)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentSpeakerRooms;
    self->_intentSpeakerRooms = v6;

    v4 = v8;
    intentSpeakerRooms = self->_intentSpeakerRooms;
  }

  [(NSArray *)intentSpeakerRooms addObject:v4];
}

- (void)setIntentSpeakerRooms:(id)a3
{
  v4 = [a3 mutableCopy];
  intentSpeakerRooms = self->_intentSpeakerRooms;
  self->_intentSpeakerRooms = v4;

  MEMORY[0x1EEE66BB8](v4, intentSpeakerRooms);
}

- (void)addIntentSpeakerNames:(id)a3
{
  v4 = a3;
  intentSpeakerNames = self->_intentSpeakerNames;
  v8 = v4;
  if (!intentSpeakerNames)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentSpeakerNames;
    self->_intentSpeakerNames = v6;

    v4 = v8;
    intentSpeakerNames = self->_intentSpeakerNames;
  }

  [(NSArray *)intentSpeakerNames addObject:v4];
}

- (void)setIntentSpeakerNames:(id)a3
{
  v4 = [a3 mutableCopy];
  intentSpeakerNames = self->_intentSpeakerNames;
  self->_intentSpeakerNames = v4;

  MEMORY[0x1EEE66BB8](v4, intentSpeakerNames);
}

- (void)addIntentPermanentNames:(id)a3
{
  v4 = a3;
  intentPermanentNames = self->_intentPermanentNames;
  v8 = v4;
  if (!intentPermanentNames)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentPermanentNames;
    self->_intentPermanentNames = v6;

    v4 = v8;
    intentPermanentNames = self->_intentPermanentNames;
  }

  [(NSArray *)intentPermanentNames addObject:v4];
}

- (void)setIntentPermanentNames:(id)a3
{
  v4 = [a3 mutableCopy];
  intentPermanentNames = self->_intentPermanentNames;
  self->_intentPermanentNames = v4;

  MEMORY[0x1EEE66BB8](v4, intentPermanentNames);
}

- (void)addIntentDestinationSpeakers:(id)a3
{
  v4 = a3;
  intentDestinationSpeakers = self->_intentDestinationSpeakers;
  v8 = v4;
  if (!intentDestinationSpeakers)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentDestinationSpeakers;
    self->_intentDestinationSpeakers = v6;

    v4 = v8;
    intentDestinationSpeakers = self->_intentDestinationSpeakers;
  }

  [(NSArray *)intentDestinationSpeakers addObject:v4];
}

- (void)setIntentDestinationSpeakers:(id)a3
{
  v4 = [a3 mutableCopy];
  intentDestinationSpeakers = self->_intentDestinationSpeakers;
  self->_intentDestinationSpeakers = v4;

  MEMORY[0x1EEE66BB8](v4, intentDestinationSpeakers);
}

@end