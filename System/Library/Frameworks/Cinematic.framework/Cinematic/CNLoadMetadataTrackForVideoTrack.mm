@interface CNLoadMetadataTrackForVideoTrack
@end

@implementation CNLoadMetadataTrackForVideoTrack

void ___CNLoadMetadataTrackForVideoTrack_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  v21 = *(a1 + 32);
  v8 = v5;
  v19 = v7;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy_;
  v40 = __Block_byref_object_dispose_;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v9 = dispatch_group_create();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v28 objects:v42 count:16];
  v18 = v6;
  if (v10)
  {
    v11 = *v29;
    v12 = *MEMORY[0x277CE6198];
    do
    {
      v13 = 0;
      do
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * v13);
        dispatch_group_enter(v9);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = ___CNFindMetadataTrackForVideoTrack_block_invoke;
        v22[3] = &unk_278A16240;
        v23 = v21;
        v24 = v14;
        v26 = &v36;
        v27 = &v32;
        v25 = v9;
        _CNLoadFirstAssociatedTrack(v14, v12, v22);

        ++v13;
      }

      while (v10 != v13);
      v10 = [obj countByEnumeratingWithState:&v28 objects:v42 count:16];
    }

    while (v10);
  }

  dispatch_group_wait(v9, 0xFFFFFFFFFFFFFFFFLL);
  if (*(v33 + 24) == 1)
  {
    v19[2](v19, v37[5], 0);
  }

  else
  {
    v15 = _CNLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      ___CNLoadMetadataTrackForVideoTrack_block_invoke_cold_1(v21, v15);
    }

    v16 = _CNCinematicError(3, 0);
    (v19)[2](v19, 0, v16);
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  v17 = *MEMORY[0x277D85DE8];
}

void ___CNLoadMetadataTrackForVideoTrack_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_236F52000, a2, OS_LOG_TYPE_DEBUG, "Error: Unable to find metadata track for video track %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end