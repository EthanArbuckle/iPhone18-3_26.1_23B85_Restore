@interface _INPBRunVoiceCommandIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBRunVoiceCommandIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (int)StringAsIntentCategory:(id)category;
- (int)StringAsToggleState:(id)state;
- (unint64_t)hash;
- (void)addStep:(id)step;
- (void)encodeWithCoder:(id)coder;
- (void)setAppBundleId:(id)id;
- (void)setHasCustomResponsesDisabled:(BOOL)disabled;
- (void)setHasIntentCategory:(BOOL)category;
- (void)setHasInterstitialDisabled:(BOOL)disabled;
- (void)setHasPrefersExecutionOnCompanion:(BOOL)companion;
- (void)setHasToggleState:(BOOL)state;
- (void)setIntentCategory:(int)category;
- (void)setLocalizedAppName:(id)name;
- (void)setResponseTemplate:(id)template;
- (void)setSteps:(id)steps;
- (void)setToggleState:(int)state;
- (void)setUnderlyingIntentTitle:(id)title;
- (void)setVerb:(id)verb;
- (void)writeTo:(id)to;
@end

@implementation _INPBRunVoiceCommandIntentResponse

- (id)dictionaryRepresentation
{
  v43 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_appBundleId)
  {
    appBundleId = [(_INPBRunVoiceCommandIntentResponse *)self appBundleId];
    v5 = [appBundleId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"appBundleId"];
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasContinueRunning])
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRunVoiceCommandIntentResponse continueRunning](self, "continueRunning")}];
    [dictionary setObject:v6 forKeyedSubscript:@"continueRunning"];
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasCustomResponsesDisabled])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRunVoiceCommandIntentResponse customResponsesDisabled](self, "customResponsesDisabled")}];
    [dictionary setObject:v7 forKeyedSubscript:@"customResponsesDisabled"];
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasIntentCategory])
  {
    intentCategory = [(_INPBRunVoiceCommandIntentResponse *)self intentCategory];
    v9 = intentCategory - 1;
    if (intentCategory - 1) < 0x15 && ((0x1FFDFFu >> v9))
    {
      v10 = off_1E7283110[v9];
    }

    else
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", intentCategory];
    }

    [dictionary setObject:v10 forKeyedSubscript:@"intentCategory"];
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasInterstitialDisabled])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRunVoiceCommandIntentResponse interstitialDisabled](self, "interstitialDisabled")}];
    [dictionary setObject:v11 forKeyedSubscript:@"interstitialDisabled"];
  }

  if (self->_localizedAppName)
  {
    localizedAppName = [(_INPBRunVoiceCommandIntentResponse *)self localizedAppName];
    v13 = [localizedAppName copy];
    [dictionary setObject:v13 forKeyedSubscript:@"localizedAppName"];
  }

  parameters = [(_INPBRunVoiceCommandIntentResponse *)self parameters];
  dictionaryRepresentation = [parameters dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"parameters"];

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasPrefersExecutionOnCompanion])
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[_INPBRunVoiceCommandIntentResponse prefersExecutionOnCompanion](self, "prefersExecutionOnCompanion")}];
    [dictionary setObject:v16 forKeyedSubscript:@"prefersExecutionOnCompanion"];
  }

  if (self->_responseTemplate)
  {
    responseTemplate = [(_INPBRunVoiceCommandIntentResponse *)self responseTemplate];
    v18 = [responseTemplate copy];
    [dictionary setObject:v18 forKeyedSubscript:@"responseTemplate"];
  }

  if ([(NSArray *)self->_steps count])
  {
    array = [MEMORY[0x1E695DF70] array];
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

          dictionaryRepresentation2 = [*(*(&v38 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation2];
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v22);
    }

    [dictionary setObject:array forKeyedSubscript:@"step"];
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasToggleState])
  {
    toggleState = [(_INPBRunVoiceCommandIntentResponse *)self toggleState];
    if (toggleState == 1)
    {
      v27 = @"ON";
    }

    else if (toggleState == 2)
    {
      v27 = @"OFF";
    }

    else
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", toggleState];
    }

    [dictionary setObject:v27 forKeyedSubscript:@"toggleState"];
  }

  underlyingIntent = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntent];
  dictionaryRepresentation3 = [underlyingIntent dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"underlyingIntent"];

  underlyingIntentResponse = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentResponse];
  dictionaryRepresentation4 = [underlyingIntentResponse dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"underlyingIntentResponse"];

  if (self->_underlyingIntentTitle)
  {
    underlyingIntentTitle = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentTitle];
    v33 = [underlyingIntentTitle copy];
    [dictionary setObject:v33 forKeyedSubscript:@"underlyingIntentTitle"];
  }

  if (self->_verb)
  {
    verb = [(_INPBRunVoiceCommandIntentResponse *)self verb];
    v35 = [verb copy];
    [dictionary setObject:v35 forKeyedSubscript:@"verb"];
  }

  v36 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v19 = [(NSString *)self->_appBundleId hash];
  if ([(_INPBRunVoiceCommandIntentResponse *)self hasContinueRunning])
  {
    hasCustomResponsesDisabled = [(_INPBRunVoiceCommandIntentResponse *)self hasCustomResponsesDisabled];
  }

  else
  {
    hasCustomResponsesDisabled = [(_INPBRunVoiceCommandIntentResponse *)self hasCustomResponsesDisabled];
  }

  if (hasCustomResponsesDisabled)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_71;
  }

  appBundleId = [(_INPBRunVoiceCommandIntentResponse *)self appBundleId];
  appBundleId2 = [equalCopy appBundleId];
  if ((appBundleId != 0) == (appBundleId2 == 0))
  {
    goto LABEL_70;
  }

  appBundleId3 = [(_INPBRunVoiceCommandIntentResponse *)self appBundleId];
  if (appBundleId3)
  {
    v8 = appBundleId3;
    appBundleId4 = [(_INPBRunVoiceCommandIntentResponse *)self appBundleId];
    appBundleId5 = [equalCopy appBundleId];
    v11 = [appBundleId4 isEqual:appBundleId5];

    if (!v11)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  hasContinueRunning = [(_INPBRunVoiceCommandIntentResponse *)self hasContinueRunning];
  if (hasContinueRunning != [equalCopy hasContinueRunning])
  {
    goto LABEL_71;
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasContinueRunning])
  {
    if ([equalCopy hasContinueRunning])
    {
      continueRunning = self->_continueRunning;
      if (continueRunning != [equalCopy continueRunning])
      {
        goto LABEL_71;
      }
    }
  }

  hasCustomResponsesDisabled = [(_INPBRunVoiceCommandIntentResponse *)self hasCustomResponsesDisabled];
  if (hasCustomResponsesDisabled != [equalCopy hasCustomResponsesDisabled])
  {
    goto LABEL_71;
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasCustomResponsesDisabled])
  {
    if ([equalCopy hasCustomResponsesDisabled])
    {
      customResponsesDisabled = self->_customResponsesDisabled;
      if (customResponsesDisabled != [equalCopy customResponsesDisabled])
      {
        goto LABEL_71;
      }
    }
  }

  hasIntentCategory = [(_INPBRunVoiceCommandIntentResponse *)self hasIntentCategory];
  if (hasIntentCategory != [equalCopy hasIntentCategory])
  {
    goto LABEL_71;
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasIntentCategory])
  {
    if ([equalCopy hasIntentCategory])
    {
      intentCategory = self->_intentCategory;
      if (intentCategory != [equalCopy intentCategory])
      {
        goto LABEL_71;
      }
    }
  }

  hasInterstitialDisabled = [(_INPBRunVoiceCommandIntentResponse *)self hasInterstitialDisabled];
  if (hasInterstitialDisabled != [equalCopy hasInterstitialDisabled])
  {
    goto LABEL_71;
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasInterstitialDisabled])
  {
    if ([equalCopy hasInterstitialDisabled])
    {
      interstitialDisabled = self->_interstitialDisabled;
      if (interstitialDisabled != [equalCopy interstitialDisabled])
      {
        goto LABEL_71;
      }
    }
  }

  appBundleId = [(_INPBRunVoiceCommandIntentResponse *)self localizedAppName];
  appBundleId2 = [equalCopy localizedAppName];
  if ((appBundleId != 0) == (appBundleId2 == 0))
  {
    goto LABEL_70;
  }

  localizedAppName = [(_INPBRunVoiceCommandIntentResponse *)self localizedAppName];
  if (localizedAppName)
  {
    v21 = localizedAppName;
    localizedAppName2 = [(_INPBRunVoiceCommandIntentResponse *)self localizedAppName];
    localizedAppName3 = [equalCopy localizedAppName];
    v24 = [localizedAppName2 isEqual:localizedAppName3];

    if (!v24)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  appBundleId = [(_INPBRunVoiceCommandIntentResponse *)self parameters];
  appBundleId2 = [equalCopy parameters];
  if ((appBundleId != 0) == (appBundleId2 == 0))
  {
    goto LABEL_70;
  }

  parameters = [(_INPBRunVoiceCommandIntentResponse *)self parameters];
  if (parameters)
  {
    v26 = parameters;
    parameters2 = [(_INPBRunVoiceCommandIntentResponse *)self parameters];
    parameters3 = [equalCopy parameters];
    v29 = [parameters2 isEqual:parameters3];

    if (!v29)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  hasPrefersExecutionOnCompanion = [(_INPBRunVoiceCommandIntentResponse *)self hasPrefersExecutionOnCompanion];
  if (hasPrefersExecutionOnCompanion != [equalCopy hasPrefersExecutionOnCompanion])
  {
    goto LABEL_71;
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasPrefersExecutionOnCompanion])
  {
    if ([equalCopy hasPrefersExecutionOnCompanion])
    {
      prefersExecutionOnCompanion = self->_prefersExecutionOnCompanion;
      if (prefersExecutionOnCompanion != [equalCopy prefersExecutionOnCompanion])
      {
        goto LABEL_71;
      }
    }
  }

  appBundleId = [(_INPBRunVoiceCommandIntentResponse *)self responseTemplate];
  appBundleId2 = [equalCopy responseTemplate];
  if ((appBundleId != 0) == (appBundleId2 == 0))
  {
    goto LABEL_70;
  }

  responseTemplate = [(_INPBRunVoiceCommandIntentResponse *)self responseTemplate];
  if (responseTemplate)
  {
    v33 = responseTemplate;
    responseTemplate2 = [(_INPBRunVoiceCommandIntentResponse *)self responseTemplate];
    responseTemplate3 = [equalCopy responseTemplate];
    v36 = [responseTemplate2 isEqual:responseTemplate3];

    if (!v36)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  appBundleId = [(_INPBRunVoiceCommandIntentResponse *)self steps];
  appBundleId2 = [equalCopy steps];
  if ((appBundleId != 0) == (appBundleId2 == 0))
  {
    goto LABEL_70;
  }

  steps = [(_INPBRunVoiceCommandIntentResponse *)self steps];
  if (steps)
  {
    v38 = steps;
    steps2 = [(_INPBRunVoiceCommandIntentResponse *)self steps];
    steps3 = [equalCopy steps];
    v41 = [steps2 isEqual:steps3];

    if (!v41)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  hasToggleState = [(_INPBRunVoiceCommandIntentResponse *)self hasToggleState];
  if (hasToggleState != [equalCopy hasToggleState])
  {
    goto LABEL_71;
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasToggleState])
  {
    if ([equalCopy hasToggleState])
    {
      toggleState = self->_toggleState;
      if (toggleState != [equalCopy toggleState])
      {
        goto LABEL_71;
      }
    }
  }

  appBundleId = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntent];
  appBundleId2 = [equalCopy underlyingIntent];
  if ((appBundleId != 0) == (appBundleId2 == 0))
  {
    goto LABEL_70;
  }

  underlyingIntent = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntent];
  if (underlyingIntent)
  {
    v45 = underlyingIntent;
    underlyingIntent2 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntent];
    underlyingIntent3 = [equalCopy underlyingIntent];
    v48 = [underlyingIntent2 isEqual:underlyingIntent3];

    if (!v48)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  appBundleId = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentResponse];
  appBundleId2 = [equalCopy underlyingIntentResponse];
  if ((appBundleId != 0) == (appBundleId2 == 0))
  {
    goto LABEL_70;
  }

  underlyingIntentResponse = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentResponse];
  if (underlyingIntentResponse)
  {
    v50 = underlyingIntentResponse;
    underlyingIntentResponse2 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentResponse];
    underlyingIntentResponse3 = [equalCopy underlyingIntentResponse];
    v53 = [underlyingIntentResponse2 isEqual:underlyingIntentResponse3];

    if (!v53)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  appBundleId = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentTitle];
  appBundleId2 = [equalCopy underlyingIntentTitle];
  if ((appBundleId != 0) == (appBundleId2 == 0))
  {
    goto LABEL_70;
  }

  underlyingIntentTitle = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentTitle];
  if (underlyingIntentTitle)
  {
    v55 = underlyingIntentTitle;
    underlyingIntentTitle2 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentTitle];
    underlyingIntentTitle3 = [equalCopy underlyingIntentTitle];
    v58 = [underlyingIntentTitle2 isEqual:underlyingIntentTitle3];

    if (!v58)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  appBundleId = [(_INPBRunVoiceCommandIntentResponse *)self verb];
  appBundleId2 = [equalCopy verb];
  if ((appBundleId != 0) != (appBundleId2 == 0))
  {
    verb = [(_INPBRunVoiceCommandIntentResponse *)self verb];
    if (!verb)
    {

LABEL_74:
      v64 = 1;
      goto LABEL_72;
    }

    v60 = verb;
    verb2 = [(_INPBRunVoiceCommandIntentResponse *)self verb];
    verb3 = [equalCopy verb];
    v63 = [verb2 isEqual:verb3];

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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBRunVoiceCommandIntentResponse allocWithZone:](_INPBRunVoiceCommandIntentResponse init];
  v6 = [(NSString *)self->_appBundleId copyWithZone:zone];
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

  v7 = [(NSString *)self->_localizedAppName copyWithZone:zone];
  [(_INPBRunVoiceCommandIntentResponse *)v5 setLocalizedAppName:v7];

  v8 = [(_INPBDictionary *)self->_parameters copyWithZone:zone];
  [(_INPBRunVoiceCommandIntentResponse *)v5 setParameters:v8];

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasPrefersExecutionOnCompanion])
  {
    [(_INPBRunVoiceCommandIntentResponse *)v5 setPrefersExecutionOnCompanion:[(_INPBRunVoiceCommandIntentResponse *)self prefersExecutionOnCompanion]];
  }

  v9 = [(NSString *)self->_responseTemplate copyWithZone:zone];
  [(_INPBRunVoiceCommandIntentResponse *)v5 setResponseTemplate:v9];

  v10 = [(NSArray *)self->_steps copyWithZone:zone];
  [(_INPBRunVoiceCommandIntentResponse *)v5 setSteps:v10];

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasToggleState])
  {
    [(_INPBRunVoiceCommandIntentResponse *)v5 setToggleState:[(_INPBRunVoiceCommandIntentResponse *)self toggleState]];
  }

  v11 = [(_INPBArchivedObject *)self->_underlyingIntent copyWithZone:zone];
  [(_INPBRunVoiceCommandIntentResponse *)v5 setUnderlyingIntent:v11];

  v12 = [(_INPBArchivedObject *)self->_underlyingIntentResponse copyWithZone:zone];
  [(_INPBRunVoiceCommandIntentResponse *)v5 setUnderlyingIntentResponse:v12];

  v13 = [(NSString *)self->_underlyingIntentTitle copyWithZone:zone];
  [(_INPBRunVoiceCommandIntentResponse *)v5 setUnderlyingIntentTitle:v13];

  v14 = [(NSString *)self->_verb copyWithZone:zone];
  [(_INPBRunVoiceCommandIntentResponse *)v5 setVerb:v14];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBRunVoiceCommandIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBRunVoiceCommandIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBRunVoiceCommandIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v39 = *MEMORY[0x1E69E9840];
  toCopy = to;
  appBundleId = [(_INPBRunVoiceCommandIntentResponse *)self appBundleId];

  if (appBundleId)
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

  localizedAppName = [(_INPBRunVoiceCommandIntentResponse *)self localizedAppName];

  if (localizedAppName)
  {
    localizedAppName = self->_localizedAppName;
    PBDataWriterWriteStringField();
  }

  parameters = [(_INPBRunVoiceCommandIntentResponse *)self parameters];

  if (parameters)
  {
    parameters2 = [(_INPBRunVoiceCommandIntentResponse *)self parameters];
    PBDataWriterWriteSubmessage();
  }

  if ([(_INPBRunVoiceCommandIntentResponse *)self hasPrefersExecutionOnCompanion])
  {
    prefersExecutionOnCompanion = self->_prefersExecutionOnCompanion;
    PBDataWriterWriteBOOLField();
  }

  responseTemplate = [(_INPBRunVoiceCommandIntentResponse *)self responseTemplate];

  if (responseTemplate)
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

  underlyingIntent = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntent];

  if (underlyingIntent)
  {
    underlyingIntent2 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntent];
    PBDataWriterWriteSubmessage();
  }

  underlyingIntentResponse = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentResponse];

  if (underlyingIntentResponse)
  {
    underlyingIntentResponse2 = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentResponse];
    PBDataWriterWriteSubmessage();
  }

  underlyingIntentTitle = [(_INPBRunVoiceCommandIntentResponse *)self underlyingIntentTitle];

  if (underlyingIntentTitle)
  {
    underlyingIntentTitle = self->_underlyingIntentTitle;
    PBDataWriterWriteStringField();
  }

  verb = [(_INPBRunVoiceCommandIntentResponse *)self verb];

  if (verb)
  {
    verb = self->_verb;
    PBDataWriterWriteStringField();
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)setVerb:(id)verb
{
  v4 = [verb copy];
  verb = self->_verb;
  self->_verb = v4;

  MEMORY[0x1EEE66BB8](v4, verb);
}

- (void)setUnderlyingIntentTitle:(id)title
{
  v4 = [title copy];
  underlyingIntentTitle = self->_underlyingIntentTitle;
  self->_underlyingIntentTitle = v4;

  MEMORY[0x1EEE66BB8](v4, underlyingIntentTitle);
}

- (int)StringAsToggleState:(id)state
{
  stateCopy = state;
  v4 = 1;
  if (([stateCopy isEqualToString:@"ON"] & 1) == 0)
  {
    if ([stateCopy isEqualToString:@"OFF"])
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

- (void)setHasToggleState:(BOOL)state
{
  if (state)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xDF | v3;
}

- (void)setToggleState:(int)state
{
  has = self->_has;
  if (state == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xDF;
  }

  else
  {
    *&self->_has = has | 0x20;
    self->_toggleState = state;
  }
}

- (void)addStep:(id)step
{
  stepCopy = step;
  steps = self->_steps;
  v8 = stepCopy;
  if (!steps)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_steps;
    self->_steps = array;

    stepCopy = v8;
    steps = self->_steps;
  }

  [(NSArray *)steps addObject:stepCopy];
}

- (void)setSteps:(id)steps
{
  v4 = [steps mutableCopy];
  steps = self->_steps;
  self->_steps = v4;

  MEMORY[0x1EEE66BB8](v4, steps);
}

- (void)setResponseTemplate:(id)template
{
  v4 = [template copy];
  responseTemplate = self->_responseTemplate;
  self->_responseTemplate = v4;

  MEMORY[0x1EEE66BB8](v4, responseTemplate);
}

- (void)setHasPrefersExecutionOnCompanion:(BOOL)companion
{
  if (companion)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setLocalizedAppName:(id)name
{
  v4 = [name copy];
  localizedAppName = self->_localizedAppName;
  self->_localizedAppName = v4;

  MEMORY[0x1EEE66BB8](v4, localizedAppName);
}

- (void)setHasInterstitialDisabled:(BOOL)disabled
{
  if (disabled)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (int)StringAsIntentCategory:(id)category
{
  categoryCopy = category;
  if ([categoryCopy isEqualToString:@"CATEGORY_INFORMATION"])
  {
    v4 = 1;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_PLAY_AUDIO"])
  {
    v4 = 2;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_PLAY_VIDEO"])
  {
    v4 = 3;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_ORDER"])
  {
    v4 = 4;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_NAVIGATION"])
  {
    v4 = 5;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_START"])
  {
    v4 = 6;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_SHARE"])
  {
    v4 = 7;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_CREATE"])
  {
    v4 = 8;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_SEARCH"])
  {
    v4 = 9;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_TOGGLE"])
  {
    v4 = 11;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_DOWNLOAD"])
  {
    v4 = 12;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_LOG"])
  {
    v4 = 13;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_CHECK_IN"])
  {
    v4 = 14;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_WORKFLOW"])
  {
    v4 = 15;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_REQUEST"])
  {
    v4 = 16;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_SET"])
  {
    v4 = 17;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_CALL_AUDIO"])
  {
    v4 = 18;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_CALL_VIDEO"])
  {
    v4 = 19;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_PLAY_SOUND"])
  {
    v4 = 20;
  }

  else if ([categoryCopy isEqualToString:@"CATEGORY_USER_ACTIVITY"])
  {
    v4 = 21;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setHasIntentCategory:(BOOL)category
{
  if (category)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setIntentCategory:(int)category
{
  has = self->_has;
  if (category == 0x7FFFFFFF)
  {
    *&self->_has = has & 0xFB;
  }

  else
  {
    *&self->_has = has | 4;
    self->_intentCategory = category;
  }
}

- (void)setHasCustomResponsesDisabled:(BOOL)disabled
{
  if (disabled)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setAppBundleId:(id)id
{
  v4 = [id copy];
  appBundleId = self->_appBundleId;
  self->_appBundleId = v4;

  MEMORY[0x1EEE66BB8](v4, appBundleId);
}

@end