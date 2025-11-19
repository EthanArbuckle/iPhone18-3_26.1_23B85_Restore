@interface APRKPlayerItem
- (APRKPlayerItem)initWithDictionary:(id)a3 resourceLoaderHelper:(id)a4 contentKeyHelper:(id)a5 options:(id)a6;
- (BOOL)enabledStateForTrackWithID:(int)a3;
- (CGSize)naturalSize;
- (id)UUIDOnlyDictionaryRepresentation;
- (id)playbackAccessLog;
- (id)playbackErrorLog;
- (id)selectedMediaArray;
- (void)setEnabledState:(BOOL)a3 forTrackWithID:(int)a4;
- (void)setStartPosition:(id *)a3;
- (void)setTextStyleRulesUsingArray:(id)a3;
@end

@implementation APRKPlayerItem

- (APRKPlayerItem)initWithDictionary:(id)a3 resourceLoaderHelper:(id)a4 contentKeyHelper:(id)a5 options:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v10)
  {
    v14 = [v10 objectForKey:*MEMORY[0x277CC1020]];
    if (v14)
    {
      memset(&v56, 0, sizeof(v56));
      v15 = [MEMORY[0x277CBEB38] dictionary];
      v16 = [v10 objectForKey:*MEMORY[0x277CC0FB8]];
      v17 = [v16 integerValue];

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v17];
      [v15 setObject:v18 forKey:*MEMORY[0x277CE6260]];

      v19 = [v10 objectForKey:*MEMORY[0x277CC0F88]];
      if (v19)
      {
        [v15 setObject:v19 forKey:*MEMORY[0x277CE6238]];
      }

      v53 = v19;
      v20 = [v10 objectForKey:*MEMORY[0x277CC0F50]];
      v21 = MEMORY[0x277CCABB0];
      v52 = v20;
      if (v20)
      {
        v22 = [v20 BOOLValue];
      }

      else
      {
        v22 = 0;
      }

      v24 = [v21 numberWithBool:v22];
      [v15 setObject:v24 forKey:*MEMORY[0x277CE6228]];

      if (v13)
      {
        [v15 addEntriesFromDictionary:v13];
      }

      v25 = [v10 objectForKey:*MEMORY[0x277CC0F40]];
      v26 = +[APRKReachability reachabilityForInternetConnection];
      v27 = [v26 currentReachabilityStatus];

      if ((v25 && v27 || ([v10 objectForKey:*MEMORY[0x277CC0F10]], v28 = objc_claimAutoreleasedReturnValue(), v25, (v25 = v28) != 0)) && (objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v25), (v29 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v30 = v29;
        v31 = [objc_alloc(MEMORY[0x277CE6650]) initWithURL:v29 options:v15];
        v50 = v30;
        v51 = v31;
        v49 = v11;
        if (v31)
        {
          v32 = v31;
          [v11 registerAVURLAsset:v31];
          [v12 registerAVURLAsset:v32];
          v33 = [v10 objectForKey:*MEMORY[0x277CC0ED8]];

          if (v33)
          {
            v34 = [v33 longValue];
            v35 = [v32 resourceLoader];
            [v35 setAllowedCommonMediaClientDataKeys:v34];

            if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
            {
              [APRKPlayerItem initWithDictionary:v33 resourceLoaderHelper:? contentKeyHelper:? options:?];
            }

            v30 = v50;
          }
        }

        else
        {
          [v12 registerAVURLAsset:0];
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
          v39 = [v10 objectForKey:*MEMORY[0x277CC1140]];

          if (v39)
          {
            CMTimeMakeFromDictionary(&v56, v39);
            v54 = v56;
            [(APRKPlayerItem *)v38 setForwardPlaybackEndTime:&v54];
          }

          v40 = [v10 objectForKey:*MEMORY[0x277CC1180]];

          if (v40)
          {
            CMTimeMakeFromDictionary(&v54, v40);
            v56 = v54;
            [(APRKPlayerItem *)v38 setReversePlaybackEndTime:&v54];
          }

          v41 = [v10 objectForKey:*MEMORY[0x277CC0FE0]];

          if (v41)
          {
            objc_storeStrong(&v38->_startDate, v41);
          }

          v42 = [v10 objectForKey:*MEMORY[0x277CC0FE8]];

          if (v42)
          {
            CMTimeMakeFromDictionary(&v54, v42);
            v43 = *&v54.value;
            v38->_startPosition.epoch = v54.epoch;
            *&v38->_startPosition.value = v43;
          }

          v44 = [v10 objectForKey:*MEMORY[0x277CC09A0]];

          if (v44)
          {
            v38->_expectsSecureStop = [v44 BOOLValue];
          }

          v45 = [v10 objectForKey:*MEMORY[0x277CC1118]];

          if (v45)
          {
            v38->_isAudioOnly = [v45 BOOLValue];
          }

          v46 = [v10 objectForKey:*MEMORY[0x277CC1110]];

          v38->_actionAtItemEnd = v46;
          v47 = [v10 objectForKey:*MEMORY[0x277CC1190]];

          if (v47)
          {
            [(APRKPlayerItem *)v38 setTextStyleRulesUsingArray:v47];
          }

          v33 = [v10 objectForKey:*MEMORY[0x277CC0F98]];

          if (v33)
          {
            -[APRKPlayerItem setRestrictions:](v38, "setRestrictions:", [v33 integerValue]);
          }

          v30 = v50;
        }

        self = v38;

        v25 = v33;
        v23 = self;
        v36 = v52;
        v11 = v49;
      }

      else
      {
        if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          [APRKPlayerItem initWithDictionary:resourceLoaderHelper:contentKeyHelper:options:];
        }

        v23 = 0;
        v36 = v52;
      }
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)playbackAccessLog
{
  v2 = [(APRKPlayerItem *)self accessLog];
  v3 = [v2 accessLogArray];

  return v3;
}

- (id)playbackErrorLog
{
  v2 = [(APRKPlayerItem *)self errorLog];
  v3 = [v2 errorLogArray];

  return v3;
}

- (id)UUIDOnlyDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v3 setValue:self->_UUIDString forKey:*MEMORY[0x277CC1020]];

  return v3;
}

- (void)setTextStyleRulesUsingArray:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v13 = self;
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v4;
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

          v11 = [MEMORY[0x277CE6638] textStyleRuleWithTextMarkupAttributes:{*(*(&v14 + 1) + 8 * v10), v13}];
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
      [(APRKPlayerItem *)v13 setTextStyleRules:v5];
    }
  }
}

- (BOOL)enabledStateForTrackWithID:(int)a3
{
  v3 = *&a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = [(APRKPlayerItem *)self asset];

  if (v5)
  {
    v6 = dispatch_semaphore_create(0);
    v7 = dispatch_time(0, 60000000000);
    v8 = [(APRKPlayerItem *)self asset];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __45__APRKPlayerItem_enabledStateForTrackWithID___block_invoke;
    v12[3] = &unk_278C62C18;
    v14 = &v15;
    v9 = v6;
    v13 = v9;
    [v8 loadTrackWithTrackID:v3 completionHandler:v12];

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

- (void)setEnabledState:(BOOL)a3 forTrackWithID:(int)a4
{
  v4 = *&a4;
  v5 = a3;
  v23 = *MEMORY[0x277D85DE8];
  v7 = [(APRKPlayerItem *)self asset];

  if (v7)
  {
    v8 = [(APRKPlayerItem *)self asset];
    v9 = [v8 trackWithTrackID:v4];

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
            v16 = [v15 assetTrack];
            v17 = [v16 isEqual:v9];

            if (v17)
            {
              [v15 setEnabled:v5];
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
  v2 = [(APRKPlayerItem *)self currentMediaSelection];
  v3 = [v2 propertyList];

  return v3;
}

- (CGSize)naturalSize
{
  v2 = [(APRKPlayerItem *)self asset];
  v3 = [v2 tracksWithMediaType:*MEMORY[0x277CE5EA8]];

  if ([v3 count])
  {
    v4 = [v3 firstObject];
    [v4 naturalSize];
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

- (void)setStartPosition:(id *)a3
{
  var3 = a3->var3;
  *&self->_startPosition.value = *&a3->var0;
  self->_startPosition.epoch = var3;
}

- (void)setTextStyleRulesUsingArray:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 debugDescription];
  LogPrintF();
}

@end