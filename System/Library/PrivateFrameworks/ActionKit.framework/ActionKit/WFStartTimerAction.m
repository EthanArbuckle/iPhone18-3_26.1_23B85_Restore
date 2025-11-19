@interface WFStartTimerAction
- (id)parameterOverrides;
- (id)serializedParametersForDonatedIntent:(id)a3 allowDroppingUnconfigurableValues:(BOOL)a4;
- (id)sessionKitSessionConfiguration;
- (id)sessionKitSessionInvocationType;
- (void)getValueForParameterData:(id)a3 ofProcessedParameters:(id)a4 completionHandler:(id)a5;
@end

@implementation WFStartTimerAction

- (id)sessionKitSessionInvocationType
{
  v2 = [MEMORY[0x277D79F18] currentDevice];
  if (([v2 hasSystemAperture] & 1) != 0 || _os_feature_enabled_impl())
  {
    v3 = *MEMORY[0x277D7CBC0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)sessionKitSessionConfiguration
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D79F18] currentDevice];
  if ([v2 hasSystemAperture] & 1) != 0 || (_os_feature_enabled_impl())
  {
    v3 = [objc_alloc(MEMORY[0x277D7C0E0]) initWithBundleIdentifier:@"com.apple.mobiletimerd" toastDurationPerRunSource:0];
  }

  else
  {
    v4 = getWFSessionKitLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[WFStartTimerAction sessionKitSessionConfiguration]";
      _os_log_impl(&dword_23DE30000, v4, OS_LOG_TYPE_DEFAULT, "%s Opting Start Timer out of session assertions because we're on a non-Dynamic Island device and they don't yet support banner presentations...", &v7, 0xCu);
    }

    v3 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)getValueForParameterData:(id)a3 ofProcessedParameters:(id)a4 completionHandler:(id)a5
{
  v49[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v10 name];
  v12 = [v11 isEqualToString:@"duration"];

  if (v12)
  {
    v13 = [v10 name];

    v14 = [v8 objectForKey:v13];

    if (v14)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }

    v10 = v15;

    v16 = [v10 magnitude];
    [v16 doubleValue];
    v18 = v17;

    if (v18 <= 0.0)
    {
      v34 = MEMORY[0x277CCA9B8];
      v35 = *MEMORY[0x277D7D0A0];
      v48 = *MEMORY[0x277CCA450];
      v36 = WFLocalizedString(@"Please provide a duration for the timer.");
      v49[0] = v36;
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
      v38 = [v34 errorWithDomain:v35 code:5 userInfo:v37];
      v9[2](v9, 0, v38);
    }

    else
    {
      v19 = MEMORY[0x277D7C398];
      v20 = [v10 unitString];
      v21 = [v19 calendarUnitFromUnitString:v20];

      v22 = [MEMORY[0x277CBEAA8] date];
      v23 = [MEMORY[0x277CBEA80] currentCalendar];
      v24 = [v10 magnitude];
      v25 = [v23 dateByAddingUnit:v21 value:objc_msgSend(v24 toDate:"integerValue") options:{v22, 0}];

      [v25 timeIntervalSinceDate:v22];
      v27 = v26;
      if (v26 >= 86400.0)
      {
        v39 = MEMORY[0x277CCA9B8];
        v40 = *MEMORY[0x277D7D0A0];
        v46 = *MEMORY[0x277CCA450];
        v41 = WFLocalizedString(@"The timer's duration must be less than 24 hours.");
        v47 = v41;
        v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
        v43 = [v39 errorWithDomain:v40 code:5 userInfo:v42];
        v9[2](v9, 0, v43);
      }

      else
      {
        v28 = objc_alloc(MEMORY[0x277CCAB10]);
        v29 = [MEMORY[0x277CCADD0] seconds];
        v30 = [v28 initWithDoubleValue:v29 unit:v27];

        v31 = objc_alloc(MEMORY[0x277D23958]);
        v32 = [MEMORY[0x277D23890] durationValueType];
        v33 = [v31 initWithValue:v30 valueType:v32];
        (v9)[2](v9, v33, 0);
      }
    }
  }

  else
  {
    v45.receiver = self;
    v45.super_class = WFStartTimerAction;
    [(WFAppIntentExecutionAction *)&v45 getValueForParameterData:v10 ofProcessedParameters:v8 completionHandler:v9];
  }

  v44 = *MEMORY[0x277D85DE8];
}

- (id)serializedParametersForDonatedIntent:(id)a3 allowDroppingUnconfigurableValues:(BOOL)a4
{
  v16[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = 0;
    goto LABEL_8;
  }

  v6 = v5;
  v7 = [v6 type];
  v8 = [v6 label];
  if (v8)
  {
  }

  else if ((v7 & 0xFFFFFFFFFFFFFFFDLL) == 0)
  {
    v12 = [(WFStartTimerAction *)self parameterForKey:@"duration"];
    [v6 duration];
    v13 = [v12 stateForDuration:?];
    v15 = @"WFDuration";
    v14 = [v13 serializedRepresentation];
    v16[0] = v14;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:

LABEL_8:
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)parameterOverrides
{
  v19[6] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = WFStartTimerAction;
  v2 = [(WFOverridableLinkAction *)&v16 parameterOverrides];
  v3 = [v2 mutableCopy];

  v18[0] = *MEMORY[0x277D7CDF8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *MEMORY[0x277D7A6E8];
  v19[0] = v5;
  v19[1] = v6;
  v7 = *MEMORY[0x277D7CEB0];
  v18[1] = *MEMORY[0x277D7CF10];
  v18[2] = v7;
  v8 = *MEMORY[0x277D7CC50];
  v17[0] = *MEMORY[0x277D7CC58];
  v17[1] = v8;
  v17[2] = *MEMORY[0x277D7CC48];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
  v10 = *MEMORY[0x277D7CE68];
  v19[2] = v9;
  v19[3] = @"WFDuration";
  v11 = *MEMORY[0x277D7CEC8];
  v18[3] = v10;
  v18[4] = v11;
  v12 = WFLocalizedStringResourceWithKey(@"For how long?", @"For how long?");
  v18[5] = *MEMORY[0x277D7CEA8];
  v19[4] = v12;
  v19[5] = &unk_28509B060;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:6];
  WFAddEntriesToDictionary();

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

@end