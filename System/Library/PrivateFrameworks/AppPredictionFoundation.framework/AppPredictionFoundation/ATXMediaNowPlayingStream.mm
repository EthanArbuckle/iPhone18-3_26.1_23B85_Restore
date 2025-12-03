@interface ATXMediaNowPlayingStream
- (BOOL)_shouldPairStartEvent:(id)event withEndEvent:(id)endEvent;
- (id)getATXMediaNowPlayingEventFromBiomeEvent:(id)event;
- (int64_t)atxPlaybackStateFromBMPlaybackState:(int)state;
- (void)enumerateEventsFromStartDate:(id)date endDate:(id)endDate filterBlock:(id)block ascending:(BOOL)ascending block:(id)a7;
@end

@implementation ATXMediaNowPlayingStream

- (void)enumerateEventsFromStartDate:(id)date endDate:(id)endDate filterBlock:(id)block ascending:(BOOL)ascending block:(id)a7
{
  ascendingCopy = ascending;
  dateCopy = date;
  endDateCopy = endDate;
  blockCopy = block;
  v16 = a7;
  if ([dateCopy compare:endDateCopy] != -1)
  {
    [ATXMediaNowPlayingStream enumerateEventsFromStartDate:a2 endDate:self filterBlock:? ascending:? block:?];
  }

  v17 = [(ATXMediaNowPlayingStream *)self _publisherWithStartDate:dateCopy endDate:endDateCopy shouldReverse:!ascendingCopy];
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
  v25 = ascendingCopy;
  v18 = blockCopy;
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

- (BOOL)_shouldPairStartEvent:(id)event withEndEvent:(id)endEvent
{
  eventCopy = event;
  endEventCopy = endEvent;
  bundleID = [eventCopy bundleID];
  bundleID2 = [endEventCopy bundleID];
  v9 = [bundleID isEqualToString:bundleID2];

  title = [eventCopy title];
  if (title)
  {
    v11 = title;
    title2 = [endEventCopy title];

    if (title2)
    {
      title3 = [eventCopy title];
      title4 = [endEventCopy title];
      v15 = [title3 isEqualToString:title4];

      v9 &= v15;
    }
  }

  playbackState = [eventCopy playbackState];
  playbackState2 = [endEventCopy playbackState];
  startTime = [eventCopy startTime];
  startTime2 = [endEventCopy startTime];
  v20 = [startTime compare:startTime2];

  v22 = v20 == -1 && playbackState != playbackState2;
  return v22 & v9;
}

- (int64_t)atxPlaybackStateFromBMPlaybackState:(int)state
{
  v3 = (state - 1);
  if (v3 < 5)
  {
    return v3 + 1;
  }

  else
  {
    return 0;
  }
}

- (id)getATXMediaNowPlayingEventFromBiomeEvent:(id)event
{
  eventCopy = event;
  v5 = [ATXMediaNowPlayingEvent alloc];
  absoluteTimestamp = [eventCopy absoluteTimestamp];
  absoluteTimestamp2 = [eventCopy absoluteTimestamp];
  bundleID = [eventCopy bundleID];
  title = [eventCopy title];
  playbackState = [eventCopy playbackState];

  v11 = [(ATXMediaNowPlayingEvent *)v5 initWithStartTime:absoluteTimestamp endTime:absoluteTimestamp2 bundleID:bundleID title:title playbackState:[(ATXMediaNowPlayingStream *)self atxPlaybackStateFromBMPlaybackState:playbackState]];

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