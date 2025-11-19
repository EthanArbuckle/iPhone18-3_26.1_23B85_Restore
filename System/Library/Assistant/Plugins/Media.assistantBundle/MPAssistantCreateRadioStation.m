@interface MPAssistantCreateRadioStation
- (void)performWithCompletion:(id)a3;
@end

@implementation MPAssistantCreateRadioStation

- (void)performWithCompletion:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (![(NSString *)self->_requestAceHash length])
  {
    v5 = [(MPAssistantCreateRadioStation *)self aceId];
    v6 = sub_233505670(@"Create Radio Station", v5);
    requestAceHash = self->_requestAceHash;
    self->_requestAceHash = v6;
  }

  v8 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v40 = v4;
    v9 = self->_requestAceHash;
    v39 = [(MPAssistantCreateRadioStation *)self hashedRouteUIDs];
    v10 = [v39 count];
    v11 = [(MPAssistantCreateRadioStation *)self assetInfo];
    if ([v11 length])
    {
      v12 = @"present";
    }

    else
    {
      v12 = @"not present";
    }

    v13 = [(MPAssistantCreateRadioStation *)self startPlaying];
    v14 = [(MPAssistantCreateRadioStation *)self stationUrl];
    *buf = 138544386;
    v62 = v9;
    v4 = v40;
    v63 = 2048;
    v64 = v10;
    v65 = 2114;
    v66 = v12;
    v67 = 2114;
    v68 = v13;
    v69 = 2114;
    v70 = v14;
    _os_log_impl(&dword_2334D9000, v8, OS_LOG_TYPE_DEFAULT, "Create Radio Station (invoke) <%{public}@>: %lu UIDs, asset info %{public}@, start %{public}@, station %{public}@", buf, 0x34u);
  }

  v15 = self->_requestAceHash;
  v16 = [(MPAssistantCreateRadioStation *)self hashedRouteUIDs];
  sub_2335057BC(@"Create Radio Station", v15, v16);

  v17 = [(MPAssistantCreateRadioStation *)self stationUrl];
  v18 = [v17 absoluteString];

  v59[0] = *MEMORY[0x277D27DE0];
  v19 = [(MPAssistantCreateRadioStation *)self startPlaying];
  v20 = v19;
  v21 = MEMORY[0x277CBEC28];
  if (v19)
  {
    v21 = v19;
  }

  v59[1] = *MEMORY[0x277D27DC0];
  v60[0] = v21;
  v60[1] = @"com.apple.MediaAssistant.siri";
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
  v23 = [v22 mutableCopy];

  if (v18)
  {
    [v23 setObject:v18 forKeyedSubscript:*MEMORY[0x277D27E00]];
  }

  v24 = [(MPAssistantCreateRadioStation *)self refId];
  if (v24)
  {
    [v23 setObject:v24 forKeyedSubscript:*MEMORY[0x277D27D08]];
  }

  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = sub_2334E5C54;
  v54[3] = &unk_2789DADD8;
  v25 = v23;
  v55 = v25;
  v26 = v4;
  v58 = v26;
  v56 = self;
  v27 = v18;
  v57 = v27;
  v28 = MEMORY[0x2383A14D0](v54);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = sub_2334E5D54;
  v51[3] = &unk_2789DAE28;
  v51[4] = self;
  v29 = v28;
  v52 = v29;
  v30 = v26;
  v53 = v30;
  v31 = MEMORY[0x2383A14D0](v51);
  v32 = [(MPAssistantCreateRadioStation *)self hashedRouteUIDs];
  v33 = [v32 count];

  if (v33)
  {
    v34 = objc_alloc_init(MEMORY[0x277D27828]);
    v35 = [MEMORY[0x277D27850] systemMediaApplicationDestination];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = sub_2334E5F04;
    v41[3] = &unk_2789DBB70;
    v42 = v35;
    v43 = self;
    v44 = v34;
    v45 = v25;
    v46 = v30;
    v36 = v34;
    v37 = v35;
    sub_2334E5F04(v41, 0);
  }

  else
  {
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = sub_2334E5E28;
    v47[3] = &unk_2789DAE78;
    v47[4] = self;
    v48 = v31;
    v49 = v30;
    v50 = v29;
    sub_2334E5E28(v47, 0);
  }

  v38 = *MEMORY[0x277D85DE8];
}

@end