@interface AFUIRecordSiriBeginEndBiomeEvent
@end

@implementation AFUIRecordSiriBeginEndBiomeEvent

void ___AFUIRecordSiriBeginEndBiomeEvent_block_invoke(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  v41 = [MEMORY[0x277CBEAA8] date];
  v39 = a1;
  v38 = [*(a1 + 32) hasSuffix:@"end"];
  v2 = [MEMORY[0x277D61AD8] sharedManager];
  v42 = [v2 latestStoredTurn];

  v40 = [MEMORY[0x277CF8A80] sharedInstance];
  v3 = [v40 connectedVehicleAccessories];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v43 objects:v53 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v44;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v44 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v43 + 1) + 8 * i);
        v10 = [v9 PPID];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 PPID];
          v13 = [v12 length];

          if (v13)
          {
            v14 = *MEMORY[0x277CEF098];
            if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
            {
              v15 = v14;
              v16 = [v9 PPID];
              *buf = 136315650;
              v48 = "_AFUIRecordSiriBeginEndBiomeEvent_block_invoke";
              v49 = 2112;
              v50 = v42;
              v51 = 2112;
              v52 = v16;
              _os_log_impl(&dword_241432000, v15, OS_LOG_TYPE_DEFAULT, "%s The current turnID and the CarPlay PPID associated with this request is %@, %@", buf, 0x20u);
            }

            v17 = [v9 PPID];

            v6 = v17;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v43 objects:v53 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v18 = BiomeLibrary();
  v19 = [v18 Siri];
  v20 = [v19 UI];

  v37 = [v20 source];
  v21 = objc_alloc(MEMORY[0x277CF1600]);
  v35 = [*(v39 + 40) objectForKeyedSubscript:@"SESSIONID"];
  v22 = [*(v39 + 40) objectForKeyedSubscript:@"UUID"];
  v36 = [*(v39 + 40) objectForKeyedSubscript:@"VIEWMODE"];
  v23 = [v36 stringValue];
  v24 = v23;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = &stru_285322A30;
  }

  v34 = v25;
  v26 = [*(v39 + 40) objectForKeyedSubscript:*MEMORY[0x277D619F0]];
  v27 = v26;
  if (v26)
  {
    v28 = v26;
  }

  else
  {
    v28 = &stru_285322A30;
  }

  v29 = [MEMORY[0x277CCABB0] numberWithBool:v38 ^ 1u];
  v30 = [v42 UUIDString];
  v31 = v21;
  v32 = v22;
  v33 = [v31 initWithSessionID:v35 uuid:v22 viewMode:v34 dismissalReason:v28 starting:v29 absoluteTimestamp:v41 turnID:v30 carplayPPID:v6];

  if (v33)
  {
    [v37 sendEvent:v33];
  }
}

@end