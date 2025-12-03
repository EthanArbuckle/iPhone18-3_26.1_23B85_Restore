@interface APRKPlayerItem
- (APRKPlayerItem)initWithDictionary:(id)dictionary resourceLoaderHelper:(id)helper contentKeyHelper:(id)keyHelper options:(id)options;
- (BOOL)enabledStateForTrackWithID:(int)d;
- (CGSize)naturalSize;
- (id)UUIDOnlyDictionaryRepresentation;
- (id)playbackAccessLog;
- (id)playbackErrorLog;
- (id)selectedMediaArray;
- (void)setEnabledState:(BOOL)state forTrackWithID:(int)d;
- (void)setStartPosition:(id *)position;
- (void)setTextStyleRulesUsingArray:(id)array;
@end

@implementation APRKPlayerItem

- (APRKPlayerItem)initWithDictionary:(id)dictionary resourceLoaderHelper:(id)helper contentKeyHelper:(id)keyHelper options:(id)options
{
  dictionaryCopy = dictionary;
  helperCopy = helper;
  keyHelperCopy = keyHelper;
  optionsCopy = options;
  if (dictionaryCopy)
  {
    v14 = [dictionaryCopy objectForKey:*MEMORY[0x277CC1020]];
    if (v14)
    {
      memset(&v56, 0, sizeof(v56));
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      v16 = [dictionaryCopy objectForKey:*MEMORY[0x277CC0FB8]];
      integerValue = [v16 integerValue];

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:integerValue];
      [dictionary setObject:v18 forKey:*MEMORY[0x277CE6260]];

      v19 = [dictionaryCopy objectForKey:*MEMORY[0x277CC0F88]];
      if (v19)
      {
        [dictionary setObject:v19 forKey:*MEMORY[0x277CE6238]];
      }

      v53 = v19;
      v20 = [dictionaryCopy objectForKey:*MEMORY[0x277CC0F50]];
      v21 = MEMORY[0x277CCABB0];
      v52 = v20;
      if (v20)
      {
        bOOLValue = [v20 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      v24 = [v21 numberWithBool:bOOLValue];
      [dictionary setObject:v24 forKey:*MEMORY[0x277CE6228]];

      if (optionsCopy)
      {
        [dictionary addEntriesFromDictionary:optionsCopy];
      }

      v25 = [dictionaryCopy objectForKey:*MEMORY[0x277CC0F40]];
      v26 = +[APRKReachability reachabilityForInternetConnection];
      currentReachabilityStatus = [v26 currentReachabilityStatus];

      if ((v25 && currentReachabilityStatus || ([dictionaryCopy objectForKey:*MEMORY[0x277CC0F10]], v28 = objc_claimAutoreleasedReturnValue(), v25, (v25 = v28) != 0)) && (objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v25), (v29 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v30 = v29;
        v31 = [objc_alloc(MEMORY[0x277CE6650]) initWithURL:v29 options:dictionary];
        v50 = v30;
        v51 = v31;
        v49 = helperCopy;
        if (v31)
        {
          v32 = v31;
          [helperCopy registerAVURLAsset:v31];
          [keyHelperCopy registerAVURLAsset:v32];
          v33 = [dictionaryCopy objectForKey:*MEMORY[0x277CC0ED8]];

          if (v33)
          {
            longValue = [v33 longValue];
            resourceLoader = [v32 resourceLoader];
            [resourceLoader setAllowedCommonMediaClientDataKeys:longValue];

            if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
            {
              [APRKPlayerItem initWithDictionary:v33 resourceLoaderHelper:? contentKeyHelper:? options:?];
            }

            v30 = v50;
          }
        }

        else
        {
          [keyHelperCopy registerAVURLAsset:0];
          v33 = v25;
        }

        v55.receiver = self;
        v55.super_class = APRKPlayerItem;
        v37 = [(APRKPlayerItem *)&v55 initWithAsset:v51];
        v38 = v37;
        if (v37)
        {
          [(APRKPlayerItem *)v37 setUUIDString:v14];
          objc_storeStrong(&v38->_contentLocation, v30);
          v39 = [dictionaryCopy objectForKey:*MEMORY[0x277CC1140]];

          if (v39)
          {
            CMTimeMakeFromDictionary(&v56, v39);
            v54 = v56;
            [(APRKPlayerItem *)v38 setForwardPlaybackEndTime:&v54];
          }

          v40 = [dictionaryCopy objectForKey:*MEMORY[0x277CC1180]];

          if (v40)
          {
            CMTimeMakeFromDictionary(&v54, v40);
            v56 = v54;
            [(APRKPlayerItem *)v38 setReversePlaybackEndTime:&v54];
          }

          v41 = [dictionaryCopy objectForKey:*MEMORY[0x277CC0FE0]];

          if (v41)
          {
            objc_storeStrong(&v38->_startDate, v41);
          }

          v42 = [dictionaryCopy objectForKey:*MEMORY[0x277CC0FE8]];

          if (v42)
          {
            CMTimeMakeFromDictionary(&v54, v42);
            v43 = *&v54.value;
            v38->_startPosition.epoch = v54.epoch;
            *&v38->_startPosition.value = v43;
          }

          v44 = [dictionaryCopy objectForKey:*MEMORY[0x277CC09A0]];

          if (v44)
          {
            v38->_expectsSecureStop = [v44 BOOLValue];
          }

          v45 = [dictionaryCopy objectForKey:*MEMORY[0x277CC1118]];

          if (v45)
          {
            v38->_isAudioOnly = [v45 BOOLValue];
          }

          v46 = [dictionaryCopy objectForKey:*MEMORY[0x277CC1110]];

          v38->_actionAtItemEnd = v46;
          v47 = [dictionaryCopy objectForKey:*MEMORY[0x277CC1190]];

          if (v47)
          {
            [(APRKPlayerItem *)v38 setTextStyleRulesUsingArray:v47];
          }

          v33 = [dictionaryCopy objectForKey:*MEMORY[0x277CC0F98]];

          if (v33)
          {
            -[APRKPlayerItem setRestrictions:](v38, "setRestrictions:", [v33 integerValue]);
          }

          v30 = v50;
        }

        self = v38;

        v25 = v33;
        selfCopy = self;
        v36 = v52;
        helperCopy = v49;
      }

      else
      {
        if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          [APRKPlayerItem initWithDictionary:resourceLoaderHelper:contentKeyHelper:options:];
        }

        selfCopy = 0;
        v36 = v52;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)playbackAccessLog
{
  accessLog = [(APRKPlayerItem *)self accessLog];
  accessLogArray = [accessLog accessLogArray];

  return accessLogArray;
}

- (id)playbackErrorLog
{
  errorLog = [(APRKPlayerItem *)self errorLog];
  errorLogArray = [errorLog errorLogArray];

  return errorLogArray;
}

- (id)UUIDOnlyDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setValue:self->_UUIDString forKey:*MEMORY[0x277CC1020]];

  return v3;
}

- (void)setTextStyleRulesUsingArray:(id)array
{
  v19 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  if (arrayCopy)
  {
    selfCopy = self;
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = arrayCopy;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [MEMORY[0x277CE6638] textStyleRuleWithTextMarkupAttributes:{*(*(&v14 + 1) + 8 * v10), selfCopy}];
          if (v11)
          {
            [v5 addObject:v11];
            if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
            {
              [APRKPlayerItem setTextStyleRulesUsingArray:v11];
            }
          }

          else if (gLogCategory_AirPlayReceiverKit <= 60 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
          {
            [APRKPlayerItem setTextStyleRulesUsingArray:];
          }

          ++v10;
        }

        while (v8 != v10);
        v12 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        v8 = v12;
      }

      while (v12);
    }

    if ([v5 count])
    {
      [(APRKPlayerItem *)selfCopy setTextStyleRules:v5];
    }
  }
}

- (BOOL)enabledStateForTrackWithID:(int)d
{
  v3 = *&d;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  asset = [(APRKPlayerItem *)self asset];

  if (asset)
  {
    v6 = dispatch_semaphore_create(0);
    v7 = dispatch_time(0, 60000000000);
    asset2 = [(APRKPlayerItem *)self asset];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __45__APRKPlayerItem_enabledStateForTrackWithID___block_invoke;
    v12[3] = &unk_278C62C18;
    v14 = &v15;
    v9 = v6;
    v13 = v9;
    [asset2 loadTrackWithTrackID:v3 completionHandler:v12];

    if (dispatch_semaphore_wait(v9, v7) && gLogCategory_AirPlayReceiverKit <= 60 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  v10 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);
  return v10;
}

intptr_t __45__APRKPlayerItem_enabledStateForTrackWithID___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = [a2 isEnabled];
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

- (void)setEnabledState:(BOOL)state forTrackWithID:(int)d
{
  v4 = *&d;
  stateCopy = state;
  v23 = *MEMORY[0x277D85DE8];
  asset = [(APRKPlayerItem *)self asset];

  if (asset)
  {
    asset2 = [(APRKPlayerItem *)self asset];
    v9 = [asset2 trackWithTrackID:v4];

    if (v9)
    {
      [(APRKPlayerItem *)self tracks];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = v21 = 0u;
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v18 + 1) + 8 * i);
            assetTrack = [v15 assetTrack];
            v17 = [assetTrack isEqual:v9];

            if (v17)
            {
              [v15 setEnabled:stateCopy];
              goto LABEL_13;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:
    }
  }
}

- (id)selectedMediaArray
{
  currentMediaSelection = [(APRKPlayerItem *)self currentMediaSelection];
  propertyList = [currentMediaSelection propertyList];

  return propertyList;
}

- (CGSize)naturalSize
{
  asset = [(APRKPlayerItem *)self asset];
  v3 = [asset tracksWithMediaType:*MEMORY[0x277CE5EA8]];

  if ([v3 count])
  {
    firstObject = [v3 firstObject];
    [firstObject naturalSize];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
  }

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)setStartPosition:(id *)position
{
  var3 = position->var3;
  *&self->_startPosition.value = *&position->var0;
  self->_startPosition.epoch = var3;
}

- (void)setTextStyleRulesUsingArray:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 debugDescription];
  LogPrintF();
}

@end