@interface ATXActionValuation
- (ATXActionValuation)init;
- (ATXActionValuation)initWithIntentCache:(id)a3;
- (BOOL)shouldPredictCreateEventIntent:(id)a3;
- (BOOL)shouldPredictIntent:(id)a3;
- (BOOL)shouldPredictRequestRideIntent:(id)a3;
- (BOOL)shouldPredictSendMessageIntent:(id)a3;
- (id)getCurrentLocation;
- (void)scoreActions:(id)a3 scoreLogger:(id)a4 consumerSubType:(unsigned __int8)a5;
- (void)setFeatureValuesAndFilterPredictableActions:(id)a3 actionStatistics:(id)a4;
@end

@implementation ATXActionValuation

- (ATXActionValuation)init
{
  v3 = +[ATXIntentMetadataCache sharedInstance];
  v4 = [(ATXActionValuation *)self initWithIntentCache:v3];

  return v4;
}

- (ATXActionValuation)initWithIntentCache:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXActionValuation;
  v6 = [(ATXActionValuation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_intentCache, a3);
  }

  return v7;
}

- (BOOL)shouldPredictSendMessageIntent:(id)a3
{
  v3 = a3;
  v4 = [_ATXActionUtils recipientFromMessageIntent:v3];
  if (v4)
  {
    v5 = [v3 content];
    if (!v5)
    {
      v10 = 1;
LABEL_11:

      goto LABEL_12;
    }

    v6 = +[_ATXDataStore sharedInstance];
    v7 = [v6 lastMessageToRecipient:v4];

    v8 = objc_opt_new();
    if ([_ATXActionUtils shouldPredictRecipient:v4 withDate:v8 andRecipientDate:v7])
    {
      v9 = [v5 isEqualToString:&stru_2839A6058];

      if ((v9 & 1) == 0)
      {
        v10 = 1;
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
    }

    v10 = 0;
    goto LABEL_10;
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (BOOL)shouldPredictCreateEventIntent:(id)a3
{
  v3 = [a3 atx_nonNilParametersByName];
  v4 = [v3 objectForKey:@"startDate"];
  v5 = [v3 objectForKey:@"endDate"];
  v6 = (v4 | v5) == 0;

  return v6;
}

- (id)getCurrentLocation
{
  v2 = [MEMORY[0x277D41BF8] sharedInstance];
  v3 = [v2 getCurrentLocation];

  return v3;
}

- (BOOL)shouldPredictRequestRideIntent:(id)a3
{
  v4 = [a3 dropOffLocation];
  v5 = [v4 location];

  if (v5)
  {
    v6 = [(ATXActionValuation *)self getCurrentLocation];
    v7 = v6;
    if (v6)
    {
      [v6 distanceFromLocation:v5];
      v9 = v8;
      v10 = +[_ATXGlobals sharedInstance];
      v11 = v9 >= [v10 minDistanceToDropOffLocationInMetersForRequestRideIntent] && v9 <= objc_msgSend(v10, "maxDistanceToDropOffLocationInMetersForRequestRideIntent");
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (BOOL)shouldPredictIntent:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ATXActionValuation *)self shouldPredictSendMessageIntent:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(ATXActionValuation *)self shouldPredictRequestRideIntent:v4];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v6 = 1;
        goto LABEL_8;
      }

      v5 = [(ATXActionValuation *)self shouldPredictCreateEventIntent:v4];
    }
  }

  v6 = v5;
LABEL_8:

  return v6;
}

- (void)setFeatureValuesAndFilterPredictableActions:(id)a3 actionStatistics:(id)a4
{
  MEMORY[0x28223BE20](self, a2);
  v5 = v4;
  v64 = v6;
  buf[418] = *MEMORY[0x277D85DE8];
  v67 = v7;
  v8 = v5;
  v9 = objc_opt_new();
  v10 = 0;
  *&v11 = 138412290;
  v63 = v11;
  while (v10 < [v67 count])
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [v67 objectAtIndexedSubscript:v10];
    v14 = [v13 scoredAction];
    v15 = [v14 predictedItem];

    if (!v15)
    {
      v20 = __atxlog_handle_default();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(ATXActionValuation *)&v72 setFeatureValuesAndFilterPredictableActions:v73 actionStatistics:v20];
      }

      goto LABEL_14;
    }

    if (([v15 hasActionTitle] & 1) == 0)
    {
      v20 = __atxlog_handle_default();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(ATXActionValuation *)&v70 setFeatureValuesAndFilterPredictableActions:v71 actionStatistics:v20];
      }

LABEL_14:

      [v9 addIndex:v10];
      goto LABEL_45;
    }

    v66 = [v15 intent];
    if (v66 && ([v64 shouldPredictIntent:v66] & 1) == 0)
    {
      v21 = __atxlog_handle_default();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = [v66 _className];
        LODWORD(buf[0]) = v63;
        *(buf + 4) = v22;
        _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_INFO, "Removed intent of class %@ because of special logic for the intent class", buf, 0xCu);
      }

      [v9 addIndex:v10];
      goto LABEL_44;
    }

    v16 = [ATXMinimalSlotResolutionParameters alloc];
    v17 = [v13 slotSet];
    v65 = [(ATXMinimalSlotResolutionParameters *)v16 initWithAction:v15 slots:v17];

    v18 = [*(v8 + 1) objectForKeyedSubscript:v65];
    if (!v13)
    {
      bzero(buf, 0xD08uLL);
      if (!v18)
      {
        goto LABEL_20;
      }

LABEL_19:
      ATXProbability(v18[29], *(v8 + 2));
      ATXSetInput(buf, 0x13CuLL, v23);
      ATXProbability(v18[46], *(v8 + 3));
      ATXSetInput(buf, 0x13DuLL, v24);
      ATXProbability(v18[47], *(v8 + 4));
      ATXSetInput(buf, 0x13EuLL, v25);
      ATXProbability(v18[48], *(v8 + 5));
      ATXSetInput(buf, 0x13FuLL, v26);
      ATXProbability(v18[49], *(v8 + 6));
      ATXSetInput(buf, 0x140uLL, v27);
      ATXProbability(v18[50], *(v8 + 7));
      ATXSetInput(buf, 0x141uLL, v28);
      ATXProbability(v18[51], *(v8 + 8));
      ATXSetInput(buf, 0x142uLL, v29);
      ATXProbability(v18[52], *(v8 + 9));
      ATXSetInput(buf, 0x143uLL, v30);
      ATXProbability(v18[53], *(v8 + 21));
      ATXSetInput(buf, 0x144uLL, v31);
      ATXProbability(v18[54], *(v8 + 10));
      ATXSetInput(buf, 0x145uLL, v32);
      ATXProbability(v18[55], *(v8 + 11));
      ATXSetInput(buf, 0x146uLL, v33);
      ATXProbability(v18[56], *(v8 + 12));
      ATXSetInput(buf, 0x147uLL, v34);
      ATXProbability(v18[61], *(v8 + 17));
      ATXSetInput(buf, 0x148uLL, v35);
      ATXProbability(v18[62], *(v8 + 18));
      ATXSetInput(buf, 0x149uLL, v36);
      ATXProbability(v18[63], *(v8 + 19));
      ATXSetInput(buf, 0x14AuLL, v37);
      ATXProbability(v18[64], *(v8 + 20));
      ATXSetInput(buf, 0x14BuLL, v38);
      ATXProbability(v18[58], *(v8 + 14));
      ATXSetInput(buf, 0x14CuLL, v39);
      ATXProbability(v18[57], *(v8 + 13));
      ATXSetInput(buf, 0x14DuLL, v40);
      ATXProbability(v18[59], *(v8 + 15));
      ATXSetInput(buf, 0x14EuLL, v41);
      ATXProbability(v18[60], *(v8 + 16));
      ATXSetInput(buf, 0x14FuLL, v42);
      ATXProbability(v18[65], *(v8 + 22));
      ATXSetInput(buf, 0x150uLL, v43);
      ATXSetInput(buf, 0x151uLL, *(v8 + 23));
      ATXSetInput(buf, 0x152uLL, *(v8 + 24));
      ATXSetInput(buf, 0x153uLL, *(v8 + 25));
      ATXSetInput(buf, 0x154uLL, *(v8 + 26));
      ATXSetInput(buf, 0x155uLL, *(v8 + 27));
      ATXSetInput(buf, 0x156uLL, *(v8 + 28));
      ATXSetInput(buf, 0x15BuLL, *(v8 + 29));
      ATXSetInput(buf, 0x15CuLL, *(v8 + 30));
      ATXSetInput(buf, 0x15DuLL, *(v8 + 31));
      ATXSetInput(buf, 0x15EuLL, *(v8 + 32));
      ATXSetInput(buf, 0x158uLL, *(v8 + 33));
      ATXSetInput(buf, 0x157uLL, *(v8 + 34));
      ATXSetInput(buf, 0x159uLL, *(v8 + 35));
      ATXSetInput(buf, 0x15AuLL, *(v8 + 36));
      ATXSetInput(buf, 0x15FuLL, *(v8 + 37));
      ATXSetInput(buf, 0x160uLL, *(v8 + 38));
      ATXSetInput(buf, 0x163uLL, *(v8 + 39));
      ATXSetInput(buf, 0x164uLL, *(v8 + 40));
      ATXSetInput(buf, 0x165uLL, *(v8 + 41));
      ATXSetInput(buf, 0x134uLL, *(v8 + 42));
      ATXSetInput(buf, 0x135uLL, *(v8 + 43));
      ATXSetInput(buf, 0x136uLL, *(v8 + 47));
      ATXSetInput(buf, 0x137uLL, *(v8 + 48));
      ATXSetInput(buf, 0x138uLL, *(v8 + 49));
      *&v44 = ATXSetInput(buf, 0x139uLL, *(v8 + 50));
      v45 = ATXRatio(*(v8 + 45) + *(v8 + 44), [*(v8 + 46) count]);
      *&v46 = ATXSetInput(buf, 0x13AuLL, v45);
      v47 = ATXRatio(*(v8 + 44), [*(v8 + 46) count]);
      ATXSetInput(buf, 0x13BuLL, v47);
      ATXSetInput(buf, 0x1A6uLL, *(v8 + 51));
      ATXSetInput(buf, 0x1A8uLL, *(v8 + 52));
      ATXSetInput(buf, 0x1AAuLL, *(v8 + 53));
      ATXSetInput(buf, 0x1ACuLL, *(v8 + 54));
      ATXSetInput(buf, 0x1AEuLL, *(v8 + 55));
      ATXSetInput(buf, 0x1B0uLL, *(v8 + 56));
      ATXSetInput(buf, 0x1B2uLL, *(v8 + 57));
      ATXSetInput(buf, 0x1B4uLL, *(v8 + 58));
      ATXSetInput(buf, 0x1B6uLL, *(v8 + 59));
      ATXSetInput(buf, 0x1B8uLL, *(v8 + 60));
      ATXSetInput(buf, 0x1BAuLL, *(v8 + 61));
      ATXSetInput(buf, 0x1BCuLL, *(v8 + 62));
      ATXSetInput(buf, 0x22AuLL, *(v8 + 63));
      ATXSetInput(buf, 0x22DuLL, *(v8 + 64));
      ATXSetInput(buf, 0x230uLL, *(v8 + 65));
      ATXSetInput(buf, 0x233uLL, *(v8 + 66));
      ATXSetInput(buf, 0x236uLL, *(v8 + 67));
      ATXSetInput(buf, 0x239uLL, *(v8 + 68));
      ATXSetInput(buf, 0x23CuLL, *(v8 + 69));
      ATXSetInput(buf, 0x23FuLL, *(v8 + 70));
      ATXSetInput(buf, 0x242uLL, *(v8 + 71));
      ATXSetInput(buf, 0x245uLL, *(v8 + 72));
      ATXSetInput(buf, 0x248uLL, *(v8 + 73));
      ATXSetInput(buf, 0x24BuLL, *(v8 + 74));
      ATXSetInput(buf, 0x303uLL, *(v8 + 75));
      ATXSetInput(buf, 0x306uLL, *(v8 + 77));
      ATXSetInput(buf, 0x309uLL, *(v8 + 79));
      ATXSetInput(buf, 0x30CuLL, *(v8 + 81));
      ATXSetInput(buf, 0x30FuLL, *(v8 + 83));
      ATXSetInput(buf, 0x312uLL, *(v8 + 85));
      ATXSetInput(buf, 0x315uLL, *(v8 + 76));
      ATXSetInput(buf, 0x318uLL, *(v8 + 78));
      ATXSetInput(buf, 0x31BuLL, *(v8 + 80));
      ATXSetInput(buf, 0x31EuLL, *(v8 + 82));
      ATXSetInput(buf, 0x321uLL, *(v8 + 84));
      *&v19 = ATXSetInput(buf, 0x324uLL, *(v8 + 86));
      goto LABEL_20;
    }

    [v13 predictionItem];
    if (v18)
    {
      goto LABEL_19;
    }

LABEL_20:
    v48 = [v15 actionType];
    if (v48 <= 4)
    {
      if (!v48)
      {
        v52 = 1.0;
        goto LABEL_32;
      }

      if (v48 != 1)
      {
        if (v48 != 2)
        {
          goto LABEL_35;
        }

LABEL_28:
        v50 = 1.0;
        ATXSetInput(buf, 0x17AuLL, 0.0);
        goto LABEL_33;
      }

LABEL_29:
      ATXSetInput(buf, 0x17AuLL, 0.0);
      v51 = 1.0;
      ATXSetInput(buf, 0x17BuLL, 0.0);
LABEL_34:
      *&v49 = ATXSetInput(buf, 0x17CuLL, v51);
      goto LABEL_35;
    }

    switch(v48)
    {
      case 5:
        goto LABEL_29;
      case 6:
        v52 = 0.0;
LABEL_32:
        v50 = 0.0;
        ATXSetInput(buf, 0x17AuLL, v52);
LABEL_33:
        v51 = 0.0;
        ATXSetInput(buf, 0x17BuLL, v50);
        goto LABEL_34;
      case 7:
        goto LABEL_28;
    }

LABEL_35:
    *&v53 = ATXSetInput(buf, 0x176uLL, [v15 isFutureMedia]);
    v54 = [v15 intent];
    ATXSetInput(buf, 0x87uLL, [v54 _intentCategory]);

    v55 = objc_autoreleasePoolPush();
    v56 = [v15 intent];
    if (v56)
    {
      v57 = v64[1];
      v58 = [v15 intent];
      v59 = v57;
      v5 = v58;
      v60 = [v59 supportsBackgroundExecutionForIntent:?];
    }

    else
    {
      v60 = 0;
    }

    ATXSetInput(buf, 0x177uLL, v60);
    if (v56)
    {
    }

    objc_autoreleasePoolPop(v55);
    v61 = buf[0];
    v68 = v61;
    memcpy(v69, &buf[1], sizeof(v69));
    if (v13)
    {
      [v13 setPredictionItem:&v68];
    }

    else
    {
    }

LABEL_44:
LABEL_45:

    objc_autoreleasePoolPop(v12);
    ++v10;
  }

  [v67 removeObjectsAtIndexes:v9];

  v62 = *MEMORY[0x277D85DE8];
}

- (void)scoreActions:(id)a3 scoreLogger:(id)a4 consumerSubType:(unsigned __int8)a5
{
  MEMORY[0x28223BE20](self, a2);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v50 = v8;
  v11 = +[ATXScoreInterpreterCache sharedInstance];
  v47 = [v11 scoreInterpreterForConsumerSubType:v6];

  v12 = 0;
  memset(v55, 0, 24);
  v45 = *MEMORY[0x277CEBD00];
  v46 = v10;
  while (v12 < [v10 count])
  {
    v13 = objc_autoreleasePoolPush();
    v14 = [v10 objectAtIndexedSubscript:v12];
    v15 = [v14 scoredAction];
    v16 = [v15 predictedItem];

    v17 = [ATXMinimalSlotResolutionParameters alloc];
    v18 = [v14 slotSet];
    context = v13;
    v49 = [(ATXMinimalSlotResolutionParameters *)v17 initWithAction:v16 slots:v18];

    v19 = [v16 actionKey];
    if (!v50)
    {
      goto LABEL_9;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v20 = MEMORY[0x277CCACA8];
      v21 = [v16 actionKey];
      v22 = [v14 slotSet];
      v23 = [v22 description];
      v24 = [v16 description];
      v25 = [v20 stringWithFormat:@"ActionKey: %@\nSlotSet: %@\n%@", v21, v23, v24];

      v19 = v25;
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_9;
      }

      v26 = MEMORY[0x277CCACA8];
      v21 = [v16 actionKey];
      [v26 stringWithFormat:@"%@:%tu", v21, -[ATXMinimalSlotResolutionParameters hash](v49, "hash")];
      v19 = v22 = v19;
    }

LABEL_9:
    if (v14)
    {
      [v14 predictionItem];
    }

    else
    {
      bzero(&location, 0xD08uLL);
    }

    objc_storeStrong(&location, v19);
    v54[0] = [(ATXMinimalSlotResolutionParameters *)v49 hash];
    v27 = +[_ATXAppPredictor sharedInstance];
    [v27 setupScoreLogger:v50 forConsumerSubType:v6];

    v28 = +[_ATXAppPredictor sharedInstance];
    [v28 _predictionScoreAndUpdateConfidenceForItem:&location interpreter:v47 consumerSubType:v6 scoreLogger:v50 intentType:0];
    v30 = v29;

    if ([MEMORY[0x277D42590] isInternalBuild])
    {
      v31 = objc_alloc(MEMORY[0x277CCACA8]);
      v32 = [v16 bundleId];
      v33 = [v31 initWithFormat:@"ActionValuationScoreOverride-%@", v32];

      v34 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:v45];
      v35 = [v34 objectForKey:v33];
      v36 = NSClassFromString(&cfstr_Nsnumber.isa);
      v37 = v35;
      if (v36)
      {
        if (objc_opt_isKindOfClass())
        {
          v38 = v37;
        }

        else
        {
          v38 = 0;
        }
      }

      else
      {
        v38 = 0;
      }

      v39 = v38;

      if (v39)
      {
        [v39 doubleValue];
        v30 = v40;
      }
    }

    v41 = v30;
    *&v54[415] = v41;
    v42 = [v14 scoredAction];
    *&v43 = v41;
    [v42 setScore:v43];

    v44 = location;
    v51 = v44;
    memcpy(v52, v54, sizeof(v52));
    if (v14)
    {
      [v14 setPredictionItem:&v51];
    }

    else
    {
    }

    if (v50)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v50 storeMetaDataFromActionContainerForKey:v19 actionContainer:v14];
      }
    }

    v10 = v46;
    objc_autoreleasePoolPop(context);
    ++v12;
  }

  location = v55;
  std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&location);
}

- (void)setFeatureValuesAndFilterPredictableActions:(os_log_t)log actionStatistics:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Action without title found during Action Valuation", buf, 2u);
}

- (void)setFeatureValuesAndFilterPredictableActions:(os_log_t)log actionStatistics:.cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Action not found during Action Valuation", buf, 2u);
}

@end