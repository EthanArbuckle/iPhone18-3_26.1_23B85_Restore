@interface _INPBRunVoiceCommandIntentResponse
- (BOOL)isEqual:(id)a3;
- (_INPBRunVoiceCommandIntentResponse)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (int)StringAsIntentCategory:(id)a3;
- (int)StringAsToggleState:(id)a3;
- (unint64_t)hash;
- (void)addStep:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAppBundleId:(id)a3;
- (void)setHasCustomResponsesDisabled:(BOOL)a3;
- (void)setHasIntentCategory:(BOOL)a3;
- (void)setHasInterstitialDisabled:(BOOL)a3;
- (void)setHasPrefersExecutionOnCompanion:(BOOL)a3;
- (void)setHasToggleState:(BOOL)a3;
- (void)setIntentCategory:(int)a3;
- (void)setLocalizedAppName:(id)a3;
- (void)setResponseTemplate:(id)a3;
- (void)setSteps:(id)a3;
- (void)setToggleState:(int)a3;
- (void)setUnderlyingIntentTitle:(id)a3;
- (void)setVerb:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBRunVoiceCommandIntentResponse

- (id)dictionaryRepresentation
{
  v43 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_appBundleId)
  {
    v4 = [(_INPBRunVoiceCommandIntentResponse *)self appBundleId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"appBundleId"];
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasContinueRunning])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRunVoiceCommandIntentResponse continueRunning](self, "continueRunning")}];
    [v3 setObject:v6 forKeyedSubscript:@"continueRunning"];
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasCustomResponsesDisabled])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRunVoiceCommandIntentResponse customResponsesDisabled](self, "customResponsesDisabled")}];
    [v3 setObject:v7 forKeyedSubscript:@"customResponsesDisabled"];
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasIntentCategory])
  {
    v8 = [(_INPBRunVoiceCommandIntentResponse *)self intentCategory];
    v9 = v8 - 1;
    if (v8 - 1) < 0x15 && ((0x1FFDFFu >> v9))
    {
      v10 = off_1E7283110[v9];
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v8];
    }

    [v3 setObject:v10 forKeyedSubscript:@"intentCategory"];
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasInterstitialDisabled])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRunVoiceCommandIntentResponse interstitialDisabled](self, "interstitialDisabled")}];
    [v3 setObject:v11 forKeyedSubscript:@"interstitialDisabled"];
  }

  if (self->_localizedAppName)
  {
    v12 = [(_INPBRunVoiceCommandIntentResponse *)self localizedAppName];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"localizedAppName"];
  }

  v14 = [(_INPBRunVoiceCommandIntentResponse *)self parameters];
  v15 = [v14 dictionaryRepresentation];
  [v3 setObject:v15 forKeyedSubscript:@"parameters"];

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasPrefersExecutionOnCompanion])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRunVoiceCommandIntentResponse prefersExecutionOnCompanion](self, "prefersExecutionOnCompanion")}];
    [v3 setObject:v16 forKeyedSubscript:@"prefersExecutionOnCompanion"];
  }

  if (self->_responseTemplate)
  {
    v17 = [(_INPBRunVoiceCommandIntentResponse *)self responseTemplate];
    v18 = [v17 copy];
    [v3 setObject:v18 forKeyedSubscript:@"responseTemplate"];
  }

  if ([(NSArray *)self->_steps count])
  {
    v19 = [MEMORY[0x1E695DF70] array];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v20 = self->_steps;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v39;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v39 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v38 + 1) + 8 * i) dictionaryRepresentation];
          [v19 addObject:v25];
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKeyedSubscript:@"step"];
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasToggleState])
  {
    v26 = [(_INPBRunVoiceCommandIntentResponse *)self toggleState];
    if (v26 == 1)
    {
      v27 = @"ON";
    }

    else if (v26 == 2)
    {
      v27 = @"OFF";
    }

    else
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", v26];
    }

    [v3 setObject:v27 forKeyedSubscript:@"toggleState"];
  }

  v28 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntent];
  v29 = [v28 dictionaryRepresentation];
  [v3 setObject:v29 forKeyedSubscript:@"underlyingIntent"];

  v30 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentResponse];
  v31 = [v30 dictionaryRepresentation];
  [v3 setObject:v31 forKeyedSubscript:@"underlyingIntentResponse"];

  if (self->_underlyingIntentTitle)
  {
    v32 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentTitle];
    v33 = [v32 copy];
    [v3 setObject:v33 forKeyedSubscript:@"underlyingIntentTitle"];
  }

  if (self->_verb)
  {
    v34 = [(_INPBRunVoiceCommandIntentResponse *)self verb];
    v35 = [v34 copy];
    [v3 setObject:v35 forKeyedSubscript:@"verb"];
  }

  v36 = *MEMORY[0x1E69E9840];

  return v3;
}

- (unint64_t)hash
{
  v19 = [(NSString *)self->_appBundleId hash];
  if ([(_INPBRunVoiceCommandIntentResponse *)self hasContinueRunning])
  {
    v3 = [(_INPBRunVoiceCommandIntentResponse *)self hasCustomResponsesDisabled];
  }

  else
  {
    v3 = [(_INPBRunVoiceCommandIntentResponse *)self hasCustomResponsesDisabled];
  }

  if (v3)
  {
    v4 = 2654435761 * self->_customResponsesDisabled;
  }

  else
  {
    v4 = 0;
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasIntentCategory])
  {
    v5 = 2654435761 * self->_intentCategory;
  }

  else
  {
    v5 = 0;
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasInterstitialDisabled])
  {
    v6 = 2654435761 * self->_interstitialDisabled;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NSString *)self->_localizedAppName hash];
  v8 = [(_INPBDictionary *)self->_parameters hash];
  if ([(_INPBRunVoiceCommandIntentResponse *)self hasPrefersExecutionOnCompanion])
  {
    v9 = 2654435761 * self->_prefersExecutionOnCompanion;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSString *)self->_responseTemplate hash];
  v11 = [(NSArray *)self->_steps hash];
  if ([(_INPBRunVoiceCommandIntentResponse *)self hasToggleState])
  {
    v12 = 2654435761 * self->_toggleState;
  }

  else
  {
    v12 = 0;
  }

  v13 = v18 ^ v19 ^ v4 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10;
  v14 = v11 ^ v12 ^ [(_INPBArchivedObject *)self->_underlyingIntent hash];
  v15 = v13 ^ v14 ^ [(_INPBArchivedObject *)self->_underlyingIntentResponse hash];
  v16 = [(NSString *)self->_underlyingIntentTitle hash];
  return v15 ^ v16 ^ [(NSString *)self->_verb hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_71;
  }

  v5 = [(_INPBRunVoiceCommandIntentResponse *)self appBundleId];
  v6 = [v4 appBundleId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_70;
  }

  v7 = [(_INPBRunVoiceCommandIntentResponse *)self appBundleId];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBRunVoiceCommandIntentResponse *)self appBundleId];
    v10 = [v4 appBundleId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  v12 = [(_INPBRunVoiceCommandIntentResponse *)self hasContinueRunning];
  if (v12 != [v4 hasContinueRunning])
  {
    goto LABEL_71;
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasContinueRunning])
  {
    if ([v4 hasContinueRunning])
    {
      continueRunning = self->_continueRunning;
      if (continueRunning != [v4 continueRunning])
      {
        goto LABEL_71;
      }
    }
  }

  v14 = [(_INPBRunVoiceCommandIntentResponse *)self hasCustomResponsesDisabled];
  if (v14 != [v4 hasCustomResponsesDisabled])
  {
    goto LABEL_71;
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasCustomResponsesDisabled])
  {
    if ([v4 hasCustomResponsesDisabled])
    {
      customResponsesDisabled = self->_customResponsesDisabled;
      if (customResponsesDisabled != [v4 customResponsesDisabled])
      {
        goto LABEL_71;
      }
    }
  }

  v16 = [(_INPBRunVoiceCommandIntentResponse *)self hasIntentCategory];
  if (v16 != [v4 hasIntentCategory])
  {
    goto LABEL_71;
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasIntentCategory])
  {
    if ([v4 hasIntentCategory])
    {
      intentCategory = self->_intentCategory;
      if (intentCategory != [v4 intentCategory])
      {
        goto LABEL_71;
      }
    }
  }

  v18 = [(_INPBRunVoiceCommandIntentResponse *)self hasInterstitialDisabled];
  if (v18 != [v4 hasInterstitialDisabled])
  {
    goto LABEL_71;
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasInterstitialDisabled])
  {
    if ([v4 hasInterstitialDisabled])
    {
      interstitialDisabled = self->_interstitialDisabled;
      if (interstitialDisabled != [v4 interstitialDisabled])
      {
        goto LABEL_71;
      }
    }
  }

  v5 = [(_INPBRunVoiceCommandIntentResponse *)self localizedAppName];
  v6 = [v4 localizedAppName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_70;
  }

  v20 = [(_INPBRunVoiceCommandIntentResponse *)self localizedAppName];
  if (v20)
  {
    v21 = v20;
    v22 = [(_INPBRunVoiceCommandIntentResponse *)self localizedAppName];
    v23 = [v4 localizedAppName];
    v24 = [v22 isEqual:v23];

    if (!v24)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  v5 = [(_INPBRunVoiceCommandIntentResponse *)self parameters];
  v6 = [v4 parameters];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_70;
  }

  v25 = [(_INPBRunVoiceCommandIntentResponse *)self parameters];
  if (v25)
  {
    v26 = v25;
    v27 = [(_INPBRunVoiceCommandIntentResponse *)self parameters];
    v28 = [v4 parameters];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  v30 = [(_INPBRunVoiceCommandIntentResponse *)self hasPrefersExecutionOnCompanion];
  if (v30 != [v4 hasPrefersExecutionOnCompanion])
  {
    goto LABEL_71;
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasPrefersExecutionOnCompanion])
  {
    if ([v4 hasPrefersExecutionOnCompanion])
    {
      prefersExecutionOnCompanion = self->_prefersExecutionOnCompanion;
      if (prefersExecutionOnCompanion != [v4 prefersExecutionOnCompanion])
      {
        goto LABEL_71;
      }
    }
  }

  v5 = [(_INPBRunVoiceCommandIntentResponse *)self responseTemplate];
  v6 = [v4 responseTemplate];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_70;
  }

  v32 = [(_INPBRunVoiceCommandIntentResponse *)self responseTemplate];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBRunVoiceCommandIntentResponse *)self responseTemplate];
    v35 = [v4 responseTemplate];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  v5 = [(_INPBRunVoiceCommandIntentResponse *)self steps];
  v6 = [v4 steps];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_70;
  }

  v37 = [(_INPBRunVoiceCommandIntentResponse *)self steps];
  if (v37)
  {
    v38 = v37;
    v39 = [(_INPBRunVoiceCommandIntentResponse *)self steps];
    v40 = [v4 steps];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  v42 = [(_INPBRunVoiceCommandIntentResponse *)self hasToggleState];
  if (v42 != [v4 hasToggleState])
  {
    goto LABEL_71;
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasToggleState])
  {
    if ([v4 hasToggleState])
    {
      toggleState = self->_toggleState;
      if (toggleState != [v4 toggleState])
      {
        goto LABEL_71;
      }
    }
  }

  v5 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntent];
  v6 = [v4 underlyingIntent];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_70;
  }

  v44 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntent];
  if (v44)
  {
    v45 = v44;
    v46 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntent];
    v47 = [v4 underlyingIntent];
    v48 = [v46 isEqual:v47];

    if (!v48)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  v5 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentResponse];
  v6 = [v4 underlyingIntentResponse];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_70;
  }

  v49 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentResponse];
  if (v49)
  {
    v50 = v49;
    v51 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentResponse];
    v52 = [v4 underlyingIntentResponse];
    v53 = [v51 isEqual:v52];

    if (!v53)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  v5 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentTitle];
  v6 = [v4 underlyingIntentTitle];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_70;
  }

  v54 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentTitle];
  if (v54)
  {
    v55 = v54;
    v56 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentTitle];
    v57 = [v4 underlyingIntentTitle];
    v58 = [v56 isEqual:v57];

    if (!v58)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  v5 = [(_INPBRunVoiceCommandIntentResponse *)self verb];
  v6 = [v4 verb];
  if ((v5 != 0) != (v6 == 0))
  {
    v59 = [(_INPBRunVoiceCommandIntentResponse *)self verb];
    if (!v59)
    {

LABEL_74:
      v64 = 1;
      goto LABEL_72;
    }

    v60 = v59;
    v61 = [(_INPBRunVoiceCommandIntentResponse *)self verb];
    v62 = [v4 verb];
    v63 = [v61 isEqual:v62];

    if (v63)
    {
      goto LABEL_74;
    }
  }

  else
  {
LABEL_70:
  }

LABEL_71:
  v64 = 0;
LABEL_72:

  return v64;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBRunVoiceCommandIntentResponse allocWithZone:](_INPBRunVoiceCommandIntentResponse init];
  v6 = [(NSString *)self->_appBundleId copyWithZone:a3];
  [(_INPBRunVoiceCommandIntentResponse *)v5 setAppBundleId:v6];

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasContinueRunning])
  {
    [(_INPBRunVoiceCommandIntentResponse *)v5 setContinueRunning:[(_INPBRunVoiceCommandIntentResponse *)self continueRunning]];
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasCustomResponsesDisabled])
  {
    [(_INPBRunVoiceCommandIntentResponse *)v5 setCustomResponsesDisabled:[(_INPBRunVoiceCommandIntentResponse *)self customResponsesDisabled]];
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasIntentCategory])
  {
    [(_INPBRunVoiceCommandIntentResponse *)v5 setIntentCategory:[(_INPBRunVoiceCommandIntentResponse *)self intentCategory]];
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasInterstitialDisabled])
  {
    [(_INPBRunVoiceCommandIntentResponse *)v5 setInterstitialDisabled:[(_INPBRunVoiceCommandIntentResponse *)self interstitialDisabled]];
  }

  v7 = [(NSString *)self->_localizedAppName copyWithZone:a3];
  [(_INPBRunVoiceCommandIntentResponse *)v5 setLocalizedAppName:v7];

  v8 = [(_INPBDictionary *)self->_parameters copyWithZone:a3];
  [(_INPBRunVoiceCommandIntentResponse *)v5 setParameters:v8];

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasPrefersExecutionOnCompanion])
  {
    [(_INPBRunVoiceCommandIntentResponse *)v5 setPrefersExecutionOnCompanion:[(_INPBRunVoiceCommandIntentResponse *)self prefersExecutionOnCompanion]];
  }

  v9 = [(NSString *)self->_responseTemplate copyWithZone:a3];
  [(_INPBRunVoiceCommandIntentResponse *)v5 setResponseTemplate:v9];

  v10 = [(NSArray *)self->_steps copyWithZone:a3];
  [(_INPBRunVoiceCommandIntentResponse *)v5 setSteps:v10];

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasToggleState])
  {
    [(_INPBRunVoiceCommandIntentResponse *)v5 setToggleState:[(_INPBRunVoiceCommandIntentResponse *)self toggleState]];
  }

  v11 = [(_INPBArchivedObject *)self->_underlyingIntent copyWithZone:a3];
  [(_INPBRunVoiceCommandIntentResponse *)v5 setUnderlyingIntent:v11];

  v12 = [(_INPBArchivedObject *)self->_underlyingIntentResponse copyWithZone:a3];
  [(_INPBRunVoiceCommandIntentResponse *)v5 setUnderlyingIntentResponse:v12];

  v13 = [(NSString *)self->_underlyingIntentTitle copyWithZone:a3];
  [(_INPBRunVoiceCommandIntentResponse *)v5 setUnderlyingIntentTitle:v13];

  v14 = [(NSString *)self->_verb copyWithZone:a3];
  [(_INPBRunVoiceCommandIntentResponse *)v5 setVerb:v14];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBRunVoiceCommandIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBRunVoiceCommandIntentResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBRunVoiceCommandIntentResponse *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBRunVoiceCommandIntentResponse *)self appBundleId];

  if (v5)
  {
    appBundleId = self->_appBundleId;
    PBDataWriterWriteStringField();
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasContinueRunning])
  {
    continueRunning = self->_continueRunning;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasCustomResponsesDisabled])
  {
    customResponsesDisabled = self->_customResponsesDisabled;
    PBDataWriterWriteBOOLField();
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasIntentCategory])
  {
    intentCategory = self->_intentCategory;
    PBDataWriterWriteInt32Field();
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasInterstitialDisabled])
  {
    interstitialDisabled = self->_interstitialDisabled;
    PBDataWriterWriteBOOLField();
  }

  v11 = [(_INPBRunVoiceCommandIntentResponse *)self localizedAppName];

  if (v11)
  {
    localizedAppName = self->_localizedAppName;
    PBDataWriterWriteStringField();
  }

  v13 = [(_INPBRunVoiceCommandIntentResponse *)self parameters];

  if (v13)
  {
    v14 = [(_INPBRunVoiceCommandIntentResponse *)self parameters];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasPrefersExecutionOnCompanion])
  {
    prefersExecutionOnCompanion = self->_prefersExecutionOnCompanion;
    PBDataWriterWriteBOOLField();
  }

  v16 = [(_INPBRunVoiceCommandIntentResponse *)self responseTemplate];

  if (v16)
  {
    responseTemplate = self->_responseTemplate;
    PBDataWriterWriteStringField();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v18 = self->_steps;
  v19 = [(NSArray *)v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v35;
    do
    {
      v22 = 0;
      do
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v34 + 1) + 8 * v22);
        PBDataWriterWriteSubmessage();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSArray *)v18 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v20);
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasToggleState])
  {
    toggleState = self->_toggleState;
    PBDataWriterWriteInt32Field();
  }

  v25 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntent];

  if (v25)
  {
    v26 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntent];
    PBDataWriterWriteSubmessage();
  }

  v27 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentResponse];

  if (v27)
  {
    v28 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentResponse];
    PBDataWriterWriteSubmessage();
  }

  v29 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentTitle];

  if (v29)
  {
    underlyingIntentTitle = self->_underlyingIntentTitle;
    PBDataWriterWriteStringField();
  }

  v31 = [(_INPBRunVoiceCommandIntentResponse *)self verb];

  if (v31)
  {
    verb = self->_verb;
    PBDataWriterWriteStringField();
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)setVerb:(id)a3
{
  v4 = [a3 copy];
  verb = self->_verb;
  self->_verb = v4;

  MEMORY[0x1EEE66BB8](v4, verb);
}

- (void)setUnderlyingIntentTitle:(id)a3
{
  v4 = [a3 copy];
  underlyingIntentTitle = self->_underlyingIntentTitle;
  self->_underlyingIntentTitle = v4;

  MEMORY[0x1EEE66BB8](v4, underlyingIntentTitle);
}

- (int)StringAsToggleState:(id)a3
{
  v3 = a3;
  v4 = 1;
  if (([v3 isEqualToString:@"ON"] & 1) == 0)
  {
    if ([v3 isEqualToString:@"OFF"])
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (void)setHasToggleState:(BOOL)a3
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

- (void)setToggleState:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xDF;
  }

  else
  {
    *&self->_has = has | 0x20;
    self->_toggleState = a3;
  }
}

- (void)addStep:(id)a3
{
  v4 = a3;
  steps = self->_steps;
  v8 = v4;
  if (!steps)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_steps;
    self->_steps = v6;

    v4 = v8;
    steps = self->_steps;
  }

  [(NSArray *)steps addObject:v4];
}

- (void)setSteps:(id)a3
{
  v4 = [a3 mutableCopy];
  steps = self->_steps;
  self->_steps = v4;

  MEMORY[0x1EEE66BB8](v4, steps);
}

- (void)setResponseTemplate:(id)a3
{
  v4 = [a3 copy];
  responseTemplate = self->_responseTemplate;
  self->_responseTemplate = v4;

  MEMORY[0x1EEE66BB8](v4, responseTemplate);
}

- (void)setHasPrefersExecutionOnCompanion:(BOOL)a3
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

- (void)setLocalizedAppName:(id)a3
{
  v4 = [a3 copy];
  localizedAppName = self->_localizedAppName;
  self->_localizedAppName = v4;

  MEMORY[0x1EEE66BB8](v4, localizedAppName);
}

- (void)setHasInterstitialDisabled:(BOOL)a3
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

- (int)StringAsIntentCategory:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"CATEGORY_INFORMATION"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"CATEGORY_PLAY_AUDIO"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"CATEGORY_PLAY_VIDEO"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"CATEGORY_ORDER"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"CATEGORY_NAVIGATION"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"CATEGORY_START"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"CATEGORY_SHARE"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"CATEGORY_CREATE"])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:@"CATEGORY_SEARCH"])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:@"CATEGORY_TOGGLE"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:@"CATEGORY_DOWNLOAD"])
  {
    v4 = 12;
  }

  else if ([v3 isEqualToString:@"CATEGORY_LOG"])
  {
    v4 = 13;
  }

  else if ([v3 isEqualToString:@"CATEGORY_CHECK_IN"])
  {
    v4 = 14;
  }

  else if ([v3 isEqualToString:@"CATEGORY_WORKFLOW"])
  {
    v4 = 15;
  }

  else if ([v3 isEqualToString:@"CATEGORY_REQUEST"])
  {
    v4 = 16;
  }

  else if ([v3 isEqualToString:@"CATEGORY_SET"])
  {
    v4 = 17;
  }

  else if ([v3 isEqualToString:@"CATEGORY_CALL_AUDIO"])
  {
    v4 = 18;
  }

  else if ([v3 isEqualToString:@"CATEGORY_CALL_VIDEO"])
  {
    v4 = 19;
  }

  else if ([v3 isEqualToString:@"CATEGORY_PLAY_SOUND"])
  {
    v4 = 20;
  }

  else if ([v3 isEqualToString:@"CATEGORY_USER_ACTIVITY"])
  {
    v4 = 21;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasIntentCategory:(BOOL)a3
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

- (void)setIntentCategory:(int)a3
{
  has = self->_has;
  if (a3 == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_intentCategory = a3;
  }
}

- (void)setHasCustomResponsesDisabled:(BOOL)a3
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

- (void)setAppBundleId:(id)a3
{
  v4 = [a3 copy];
  appBundleId = self->_appBundleId;
  self->_appBundleId = v4;

  MEMORY[0x1EEE66BB8](v4, appBundleId);
}

@end