@interface CNAssetInfo
+ (void)checkIfCinematic:(AVAsset *)asset completionHandler:(void *)completionHandler;
+ (void)loadFromAsset:(AVAsset *)asset completionHandler:(void *)completionHandler;
+ (void)loadFromCinematicVideoTrack:(id)a3 completionHandler:(id)a4;
- (AVAsset)asset;
- (CGAffineTransform)preferredTransform;
- (CGSize)naturalSize;
- (CGSize)preferredSize;
- (CMTimeRange)timeRange;
- (NSArray)allCinematicTracks;
- (NSArray)sampleDataTrackIDs;
- (NSArray)videoCompositionTrackIDs;
- (NSArray)videoCompositionTracks;
- (id)_initWithVideoTrack:(id)a3 disparityTrack:(id)a4 metadataTrack:(id)a5;
@end

@implementation CNAssetInfo

+ (void)checkIfCinematic:(AVAsset *)asset completionHandler:(void *)completionHandler
{
  v5 = completionHandler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__CNAssetInfo_checkIfCinematic_completionHandler___block_invoke;
  v7[3] = &unk_278A16150;
  v8 = v5;
  v6 = v5;
  [CNAssetInfo loadFromAsset:asset completionHandler:v7];
}

uint64_t __50__CNAssetInfo_checkIfCinematic_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  return (*(v3 + 16))(v3, v5);
}

+ (void)loadFromAsset:(AVAsset *)asset completionHandler:(void *)completionHandler
{
  v6 = asset;
  v7 = completionHandler;
  v8 = *MEMORY[0x277CE5EA8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__CNAssetInfo_loadFromAsset_completionHandler___block_invoke;
  v11[3] = &unk_278A161A0;
  v12 = v6;
  v13 = v7;
  v14 = a1;
  v9 = v7;
  v10 = v6;
  [(AVAsset *)v10 loadTracksWithMediaType:v8 completionHandler:v11];
}

void __47__CNAssetInfo_loadFromAsset_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v18 = v4;
  v19 = a3;
  if (v19)
  {
    v5 = _CNLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __47__CNAssetInfo_loadFromAsset_completionHandler___block_invoke_cold_1(v19, a1);
    }

    v6 = _CNCinematicError(3, v19);
    (*(*(a1 + 40) + 16))(*(a1 + 40));
  }

  else
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = __Block_byref_object_copy_;
    v37 = __Block_byref_object_dispose_;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v7 = dispatch_group_create();
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v39 count:{16, v4, 0}];
    if (v9)
    {
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v25 + 1) + 8 * i);
          if ([v12 isEnabled])
          {
            dispatch_group_enter(v7);
            v13 = *(a1 + 48);
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __47__CNAssetInfo_loadFromAsset_completionHandler___block_invoke_2;
            v21[3] = &unk_278A16178;
            v23 = &v33;
            v24 = &v29;
            v22 = v7;
            [v13 loadFromCinematicVideoTrack:v12 completionHandler:v21];
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v25 objects:v39 count:16];
      }

      while (v9);
    }

    dispatch_group_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
    if (*(v30 + 24) == 1)
    {
      v14 = v34[5];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v15 = _CNLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        __47__CNAssetInfo_loadFromAsset_completionHandler___block_invoke_cold_2(v15);
      }

      v16 = _CNCinematicError(3, 0);
      (*(*(a1 + 40) + 16))();
    }

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v33, 8);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __47__CNAssetInfo_loadFromAsset_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = a2;
  if (!a3)
  {
    v6 = [v9 cinematicDisparityTrack];
    if ([v6 isEnabled])
    {
      v7 = [v9 cinematicMetadataTrack];
      v8 = [v7 isEnabled];

      if (v8)
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }
    }

    else
    {
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

+ (void)loadFromCinematicVideoTrack:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __61__CNAssetInfo_loadFromCinematicVideoTrack_completionHandler___block_invoke;
  v11[3] = &unk_278A161F0;
  v12 = v6;
  v13 = v7;
  v14 = a1;
  v8 = *MEMORY[0x277CE61A8];
  v9 = v7;
  v10 = v6;
  _CNLoadFirstAssociatedTrack(v10, v8, v11);
}

void __61__CNAssetInfo_loadFromCinematicVideoTrack_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _CNLogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __61__CNAssetInfo_loadFromCinematicVideoTrack_completionHandler___block_invoke_cold_1(v6, a1);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = *(a1 + 32);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __61__CNAssetInfo_loadFromCinematicVideoTrack_completionHandler___block_invoke_4;
    v19 = &unk_278A161C8;
    v20 = v8;
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v22 = v9;
    v23 = v10;
    v21 = v5;
    v11 = v20;
    v12 = &v16;
    v13 = [v11 asset];
    v14 = *MEMORY[0x277CE5E70];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = ___CNLoadMetadataTrackForVideoTrack_block_invoke;
    v24[3] = &unk_278A16018;
    v25 = v11;
    v26 = v12;
    v15 = v11;
    [v13 loadTracksWithMediaType:v14 completionHandler:v24];
  }
}

void __61__CNAssetInfo_loadFromCinematicVideoTrack_completionHandler___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v15 = _CNLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      __61__CNAssetInfo_loadFromCinematicVideoTrack_completionHandler___block_invoke_4_cold_2(v7, a1);
    }

    v16 = 3;
    v17 = v7;
    goto LABEL_12;
  }

  v8 = [v5 formatDescriptions];
  v9 = [v8 firstObject];

  if (!v9 || (CMMetadataFormatDescriptionGetIdentifiers(v9), v10 = objc_claimAutoreleasedReturnValue(), [@"mdta/" stringByAppendingString:0x284A05300], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "containsObject:", v11), v11, v10, (v12 & 1) == 0))
  {
    v18 = _CNLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      __61__CNAssetInfo_loadFromCinematicVideoTrack_completionHandler___block_invoke_4_cold_1(v5, a1);
    }

    v16 = 4;
    v17 = 0;
LABEL_12:
    v13 = _CNCinematicError(v16, v17);
    v14 = *(*(a1 + 48) + 16);
    goto LABEL_13;
  }

  v13 = [objc_alloc(*(a1 + 56)) _initWithVideoTrack:*(a1 + 32) disparityTrack:*(a1 + 40) metadataTrack:v5];
  v14 = *(*(a1 + 48) + 16);
LABEL_13:
  v14();
}

- (AVAsset)asset
{
  v2 = [(CNAssetInfo *)self cinematicVideoTrack];
  v3 = [v2 asset];

  return v3;
}

- (CMTimeRange)timeRange
{
  *&retstr->start.epoch = 0u;
  *&retstr->duration.timescale = 0u;
  *&retstr->start.value = 0u;
  v5 = [(CNAssetInfo *)self cinematicVideoTrack];
  v6 = v5;
  if (v5)
  {
    [v5 timeRange];
  }

  else
  {
    *&retstr->start.epoch = 0u;
    *&retstr->duration.timescale = 0u;
    *&retstr->start.value = 0u;
  }

  v7 = [(CNAssetInfo *)self cinematicDisparityTrack];
  v8 = v7;
  if (v7)
  {
    [v7 timeRange];
  }

  else
  {
    memset(&otherRange, 0, sizeof(otherRange));
  }

  v9 = *&retstr->start.epoch;
  *&v16.start.value = *&retstr->start.value;
  *&v16.start.epoch = v9;
  *&v16.duration.timescale = *&retstr->duration.timescale;
  CMTimeRangeGetIntersection(&v18, &v16, &otherRange);
  v10 = *&v18.start.epoch;
  *&retstr->start.value = *&v18.start.value;
  *&retstr->start.epoch = v10;
  *&retstr->duration.timescale = *&v18.duration.timescale;

  v11 = [(CNAssetInfo *)self cinematicMetadataTrack];
  v12 = v11;
  if (v11)
  {
    [v11 timeRange];
  }

  else
  {
    memset(&otherRange, 0, sizeof(otherRange));
  }

  v13 = *&retstr->start.epoch;
  *&v16.start.value = *&retstr->start.value;
  *&v16.start.epoch = v13;
  *&v16.duration.timescale = *&retstr->duration.timescale;
  CMTimeRangeGetIntersection(&v18, &v16, &otherRange);
  v14 = *&v18.start.epoch;
  *&retstr->start.value = *&v18.start.value;
  *&retstr->start.epoch = v14;
  *&retstr->duration.timescale = *&v18.duration.timescale;

  return result;
}

- (CGSize)naturalSize
{
  v2 = [(CNAssetInfo *)self cinematicVideoTrack];
  [v2 naturalSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)preferredSize
{
  v3 = *MEMORY[0x277CBF3A0];
  v4 = *(MEMORY[0x277CBF3A0] + 8);
  [(CNAssetInfo *)self naturalSize];
  v6 = v5;
  v8 = v7;
  [(CNAssetInfo *)self preferredTransform];
  v13.origin.x = v3;
  v13.origin.y = v4;
  v13.size.width = v6;
  v13.size.height = v8;
  v14 = CGRectApplyAffineTransform(v13, &v11);
  width = v14.size.width;
  height = v14.size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGAffineTransform)preferredTransform
{
  v4 = [(CNAssetInfo *)self cinematicVideoTrack];
  if (v4)
  {
    v6 = v4;
    [v4 preferredTransform];
    v4 = v6;
  }

  else
  {
    *&retstr->c = 0u;
    *&retstr->tx = 0u;
    *&retstr->a = 0u;
  }

  return result;
}

- (NSArray)allCinematicTracks
{
  v9[3] = *MEMORY[0x277D85DE8];
  v3 = [(CNAssetInfo *)self cinematicVideoTrack];
  v4 = [(CNAssetInfo *)self cinematicDisparityTrack];
  v9[1] = v4;
  v5 = [(CNAssetInfo *)self cinematicMetadataTrack];
  v9[2] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSArray)videoCompositionTracks
{
  v8[2] = *MEMORY[0x277D85DE8];
  v3 = [(CNAssetInfo *)self cinematicVideoTrack];
  v8[0] = v3;
  v4 = [(CNAssetInfo *)self cinematicDisparityTrack];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (NSArray)videoCompositionTrackIDs
{
  v12[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCABB0];
  v4 = [(CNAssetInfo *)self cinematicVideoTrack];
  v5 = [v3 numberWithInt:{objc_msgSend(v4, "trackID")}];
  v12[0] = v5;
  v6 = MEMORY[0x277CCABB0];
  v7 = [(CNAssetInfo *)self cinematicDisparityTrack];
  v8 = [v6 numberWithInt:{objc_msgSend(v7, "trackID")}];
  v12[1] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (NSArray)sampleDataTrackIDs
{
  v8[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = [(CNAssetInfo *)self cinematicMetadataTrack];
  v4 = [v2 numberWithInt:{objc_msgSend(v3, "trackID")}];
  v8[0] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_initWithVideoTrack:(id)a3 disparityTrack:(id)a4 metadataTrack:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CNAssetInfo;
  v12 = [(CNAssetInfo *)&v15 init];
  p_isa = &v12->super.isa;
  if (v12)
  {
    objc_storeStrong(&v12->_cinematicVideoTrack, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
  }

  return p_isa;
}

void __47__CNAssetInfo_loadFromAsset_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __61__CNAssetInfo_loadFromCinematicVideoTrack_completionHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __61__CNAssetInfo_loadFromCinematicVideoTrack_completionHandler___block_invoke_4_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

void __61__CNAssetInfo_loadFromCinematicVideoTrack_completionHandler___block_invoke_4_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_0(a2, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x277D85DE8];
}

@end