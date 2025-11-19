@interface ATXMediaNowPlayingStream
- (BOOL)_shouldPairStartEvent:(id)a3 withEndEvent:(id)a4;
- (id)getATXMediaNowPlayingEventFromBiomeEvent:(id)a3;
- (int64_t)atxPlaybackStateFromBMPlaybackState:(int)a3;
- (void)enumerateEventsFromStartDate:(id)a3 endDate:(id)a4 filterBlock:(id)a5 ascending:(BOOL)a6 block:(id)a7;
@end

@implementation ATXMediaNowPlayingStream

- (void)enumerateEventsFromStartDate:(id)a3 endDate:(id)a4 filterBlock:(id)a5 ascending:(BOOL)a6 block:(id)a7
{
  v8 = a6;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if ([v13 compare:v14] != -1)
  {
    [ATXMediaNowPlayingStream enumerateEventsFromStartDate:a2 endDate:self filterBlock:? ascending:? block:?];
  }

  v17 = [(ATXMediaNowPlayingStream *)self _publisherWithStartDate:v13 endDate:v14 shouldReverse:!v8];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__4;
  v26[4] = __Block_byref_object_dispose__4;
  v27 = objc_opt_new();
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __93__ATXMediaNowPlayingStream_enumerateEventsFromStartDate_endDate_filterBlock_ascending_block___block_invoke_18;
  v21[3] = &unk_278590628;
  v21[4] = self;
  v24 = v26;
  v25 = v8;
  v18 = v15;
  v22 = v18;
  v19 = v16;
  v23 = v19;
  v20 = [v17 sinkWithCompletion:&__block_literal_global_12 shouldContinue:v21];

  _Block_object_dispose(v26, 8);
}

void __93__ATXMediaNowPlayingStream_enumerateEventsFromStartDate_endDate_filterBlock_ascending_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 error];

  if (v3)
  {
    v4 = __atxlog_handle_default();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __93__ATXMediaNowPlayingStream_enumerateEventsFromStartDate_endDate_filterBlock_ascending_block___block_invoke_cold_1(v2, v4);
    }
  }
}

uint64_t __93__ATXMediaNowPlayingStream_enumerateEventsFromStartDate_endDate_filterBlock_ascending_block___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 bundleID];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v3 eventBody];
    v8 = [v6 getATXMediaNowPlayingEventFromBiomeEvent:v7];

    if (!v8 || ![v8 playbackState])
    {
      v24 = 1;
LABEL_23:

      goto LABEL_24;
    }

    v9 = *(*(*(a1 + 56) + 8) + 40);
    v10 = [v8 bundleID];
    v11 = [v9 objectForKeyedSubscript:v10];

    v12 = *(*(*(a1 + 56) + 8) + 40);
    v13 = [v8 bundleID];
    if (v11)
    {
      v14 = [v12 objectForKeyedSubscript:v13];

      if (*(a1 + 64))
      {
        if (v14 && [*(a1 + 32) _shouldPairStartEvent:v14 withEndEvent:v8])
        {
          v15 = [ATXMediaNowPlayingEvent alloc];
          v16 = [v14 startTime];
          v17 = [v8 startTime];
          v18 = [v14 bundleID];
          v19 = [v14 title];
          v20 = -[ATXMediaNowPlayingEvent initWithStartTime:endTime:bundleID:title:playbackState:](v15, "initWithStartTime:endTime:bundleID:title:playbackState:", v16, v17, v18, v19, [v14 playbackState]);

          v21 = *(*(*(a1 + 56) + 8) + 40);
          v22 = [v8 bundleID];
          [v21 setObject:v8 forKeyedSubscript:v22];

          v23 = *(a1 + 40);
          if (v23 && !(*(v23 + 16))(v23, v20))
          {
LABEL_20:
            v24 = 1;
            goto LABEL_21;
          }

LABEL_18:
          v24 = (*(*(a1 + 48) + 16))();
LABEL_21:

          goto LABEL_22;
        }
      }

      else if (v14 && [*(a1 + 32) _shouldPairStartEvent:v8 withEndEvent:v14])
      {
        v25 = [ATXMediaNowPlayingEvent alloc];
        v26 = [v8 startTime];
        v27 = [v14 startTime];
        v28 = [v8 bundleID];
        v29 = [v8 title];
        v20 = -[ATXMediaNowPlayingEvent initWithStartTime:endTime:bundleID:title:playbackState:](v25, "initWithStartTime:endTime:bundleID:title:playbackState:", v26, v27, v28, v29, [v8 playbackState]);

        v30 = *(*(*(a1 + 56) + 8) + 40);
        v31 = [v8 bundleID];
        [v30 setObject:v8 forKeyedSubscript:v31];

        v32 = *(a1 + 40);
        if (v32 && ((*(v32 + 16))(v32, v20) & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      v24 = 1;
    }

    else
    {
      [v12 setObject:v8 forKeyedSubscript:v13];
      v24 = 1;
      v14 = v13;
    }

LABEL_22:

    goto LABEL_23;
  }

  v24 = 1;
LABEL_24:

  return v24;
}

- (BOOL)_shouldPairStartEvent:(id)a3 withEndEvent:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 bundleID];
  v8 = [v6 bundleID];
  v9 = [v7 isEqualToString:v8];

  v10 = [v5 title];
  if (v10)
  {
    v11 = v10;
    v12 = [v6 title];

    if (v12)
    {
      v13 = [v5 title];
      v14 = [v6 title];
      v15 = [v13 isEqualToString:v14];

      v9 &= v15;
    }
  }

  v16 = [v5 playbackState];
  v17 = [v6 playbackState];
  v18 = [v5 startTime];
  v19 = [v6 startTime];
  v20 = [v18 compare:v19];

  v22 = v20 == -1 && v16 != v17;
  return v22 & v9;
}

- (int64_t)atxPlaybackStateFromBMPlaybackState:(int)a3
{
  v3 = (a3 - 1);
  if (v3 < 5)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

- (id)getATXMediaNowPlayingEventFromBiomeEvent:(id)a3
{
  v4 = a3;
  v5 = [ATXMediaNowPlayingEvent alloc];
  v6 = [v4 absoluteTimestamp];
  v7 = [v4 absoluteTimestamp];
  v8 = [v4 bundleID];
  v9 = [v4 title];
  v10 = [v4 playbackState];

  v11 = [(ATXMediaNowPlayingEvent *)v5 initWithStartTime:v6 endTime:v7 bundleID:v8 title:v9 playbackState:[(ATXMediaNowPlayingStream *)self atxPlaybackStateFromBMPlaybackState:v10]];

  return v11;
}

- (void)enumerateEventsFromStartDate:(uint64_t)a1 endDate:(uint64_t)a2 filterBlock:ascending:block:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXMediaNowPlayingStream.m" lineNumber:40 description:@"Start date must be earlier than the end date."];
}

void __93__ATXMediaNowPlayingStream_enumerateEventsFromStartDate_endDate_filterBlock_ascending_block___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "ATXMediaNowPlayingStream: Can't read Media.NowPlaying stream with error: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end