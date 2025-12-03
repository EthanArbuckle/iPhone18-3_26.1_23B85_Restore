@interface AVPlaybackCoordinationMedium
- (AVPlaybackCoordinationMedium)init;
- (BOOL)_updateTransportControlState:(id)state forIdentifier:(id)identifier;
- (NSArray)connectedPlaybackCoordinators;
- (id)_initialStateOriginator;
- (id)_mediumParticipantForCoordinator:(id)coordinator orIdentifier:(id)identifier;
- (id)_participantStatesAsArray;
- (id)_participants;
- (id)_transportControlStateForItemIdentifier:(id)identifier;
- (id)_transportControlStatesAsArray;
- (id)localParticipantUUIDForPlaybackCoordinator:(id)coordinator;
- (int)connectPlaybackCoordinator:(id)coordinator;
- (int)disconnectPlaybackCoordinatorWithIdentifier:(id)identifier;
- (unsigned)_lowestInUseDefaultItemIdentifier;
- (unsigned)areAllCoordinatorsSuspendedForReason:(id)reason;
- (void)_removeParticipant:(id)participant;
- (void)_removeParticipantStateForIdentifier:(id)identifier;
- (void)_removeUnusedTransportControlStates;
- (void)_setInitialStateOriginator:(id)originator;
- (void)_updateLowestInUseDefaultItemIdentifier;
- (void)_updateParticipantState:(id)state forIdentifier:(id)identifier;
- (void)_updateParticipantsWithParticipant:(id)participant;
- (void)dealloc;
- (void)endSuspensionOnAllCoordinatorsWithReason:(id)reason;
- (void)playbackCoordinator:(id)coordinator broadcastLocalParticipantStateDictionary:(id)dictionary;
- (void)playbackCoordinator:(id)coordinator broadcastTransportControlStateDictionary:(id)dictionary forItemWithIdentifier:(id)identifier;
- (void)playbackCoordinator:(id)coordinator reloadTransportControlStateForItemWithIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation AVPlaybackCoordinationMedium

- (AVPlaybackCoordinationMedium)init
{
  v6.receiver = self;
  v6.super_class = AVPlaybackCoordinationMedium;
  v2 = [(AVPlaybackCoordinationMedium *)&v6 init];
  if (v2)
  {
    v2->_participants = objc_alloc_init(MEMORY[0x1E695DF70]);
    v2->_currentParticipantStates = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_currentTransportControlStates = objc_alloc_init(MEMORY[0x1E695DF90]);
    v2->_initialStateOriginator = 0;
    v2->_condition = objc_alloc_init(MEMORY[0x1E696AB30]);
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_stateQueue = dispatch_queue_create("com.apple.avfoundation.playbackcoordinationmediumstatequeue", v3);
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2->_dispatchQueue = dispatch_queue_create("com.apple.avfoundation.playbackcoordinationmediumdispatchqueue", v4);
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();
    fig_note_initialize_category_with_default_work();
  }

  return v2;
}

- (void)dealloc
{
  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
  }

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    dispatch_release(dispatchQueue);
  }

  v5.receiver = self;
  v5.super_class = AVPlaybackCoordinationMedium;
  [(AVPlaybackCoordinationMedium *)&v5 dealloc];
}

- (NSArray)connectedPlaybackCoordinators
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__AVPlaybackCoordinationMedium_connectedPlaybackCoordinators__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __61__AVPlaybackCoordinationMedium_connectedPlaybackCoordinators__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  *(*(*(a1 + 40) + 8) + 40) = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(*(*(a1 + 32) + 8), "count")}];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 8);
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(*(a1 + 40) + 8) + 40) addObject:{objc_msgSend(*(*(&v7 + 1) + 8 * v6++), "playbackCoordinator")}];
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (id)_participants
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__AVPlaybackCoordinationMedium__participants__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __45__AVPlaybackCoordinationMedium__participants__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_updateParticipantsWithParticipant:(id)participant
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __67__AVPlaybackCoordinationMedium__updateParticipantsWithParticipant___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = participant;
  dispatch_sync(stateQueue, v4);
}

- (void)_removeParticipant:(id)participant
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__AVPlaybackCoordinationMedium__removeParticipant___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = participant;
  dispatch_sync(stateQueue, v4);
}

- (id)_participantStatesAsArray
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__AVPlaybackCoordinationMedium__participantStatesAsArray__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __57__AVPlaybackCoordinationMedium__participantStatesAsArray__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 16) "allValues")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_updateParticipantState:(id)state forIdentifier:(id)identifier
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__AVPlaybackCoordinationMedium__updateParticipantState_forIdentifier___block_invoke;
  block[3] = &unk_1E7460E90;
  block[4] = self;
  block[5] = state;
  block[6] = identifier;
  dispatch_sync(stateQueue, block);
}

- (void)_removeParticipantStateForIdentifier:(id)identifier
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__AVPlaybackCoordinationMedium__removeParticipantStateForIdentifier___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = identifier;
  dispatch_sync(stateQueue, v4);
}

- (id)_transportControlStatesAsArray
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__AVPlaybackCoordinationMedium__transportControlStatesAsArray__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __62__AVPlaybackCoordinationMedium__transportControlStatesAsArray__block_invoke(uint64_t a1)
{
  result = [objc_msgSend(*(*(a1 + 32) + 24) "allValues")];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (id)_transportControlStateForItemIdentifier:(id)identifier
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__AVPlaybackCoordinationMedium__transportControlStateForItemIdentifier___block_invoke;
  block[3] = &unk_1E7461068;
  block[5] = identifier;
  block[6] = &v7;
  block[4] = self;
  dispatch_sync(stateQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __72__AVPlaybackCoordinationMedium__transportControlStateForItemIdentifier___block_invoke(void *a1)
{
  result = [objc_msgSend(*(a1[4] + 24) objectForKeyedSubscript:{a1[5]), "copy"}];
  *(*(a1[6] + 8) + 40) = result;
  return result;
}

void __75__AVPlaybackCoordinationMedium__updateTransportControlState_forIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:*(a1 + 40)];
  if (v2 && (v3 = v2, v4 = [objc_msgSend(v2 objectForKeyedSubscript:{@"LamportTimestamp", "intValue"}], v5 = objc_msgSend(objc_msgSend(*(a1 + 48), "objectForKeyedSubscript:", @"LamportTimestamp"), "intValue"), v5 <= v4))
  {
    if (v5 == v4)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{objc_msgSend(v3, "objectForKeyedSubscript:", @"OriginatorUUID"}];
      v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{objc_msgSend(*(a1 + 48), "objectForKeyedSubscript:", @"OriginatorUUID"}];
      if ([v10 compare:v9] == 1)
      {
        *(*(*(a1 + 56) + 8) + 24) = 1;
      }
    }

    else
    {
      *(*(*(a1 + 56) + 8) + 24) = 0;
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v8 = *(*(a1 + 32) + 24);

    [v8 setObject:v6 forKeyedSubscript:v7];
  }
}

- (void)_removeUnusedTransportControlStates
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__AVPlaybackCoordinationMedium__removeUnusedTransportControlStates__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

uint64_t __67__AVPlaybackCoordinationMedium__removeUnusedTransportControlStates__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 24) allKeys];
  v9 = a1;
  v3 = [*(*(a1 + 32) + 16) allValues];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  result = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __67__AVPlaybackCoordinationMedium__removeUnusedTransportControlStates__block_invoke_2;
        v10[3] = &unk_1E74610B8;
        v10[4] = v8;
        if ([v3 indexOfObjectPassingTest:v10] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [*(*(v9 + 32) + 24) removeObjectForKey:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      result = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __67__AVPlaybackCoordinationMedium__removeUnusedTransportControlStates__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [objc_msgSend(a2 objectForKeyedSubscript:{@"CurrentIdentifier", "isEqualToString:", *(a1 + 32)}];
  *a4 = result;
  return result;
}

- (unsigned)areAllCoordinatorsSuspendedForReason:(id)reason
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _participants = [(AVPlaybackCoordinationMedium *)self _participants];
  v4 = [_participants countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(_participants);
      }

      [objc_msgSend(*(*(&v10 + 1) + 8 * v7) "playbackCoordinator")];
      v8 = FigCFArrayContainsValue();
      if (!v8)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [_participants countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v8) = 1;
  }

  return v8;
}

- (void)endSuspensionOnAllCoordinatorsWithReason:(id)reason
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  _participants = [(AVPlaybackCoordinationMedium *)self _participants];
  v5 = [_participants countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(_participants);
        }

        [objc_msgSend(*(*(&v9 + 1) + 8 * v8++) "playbackCoordinator")];
      }

      while (v6 != v8);
      v6 = [_participants countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)_initialStateOriginator
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__AVPlaybackCoordinationMedium__initialStateOriginator__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __55__AVPlaybackCoordinationMedium__initialStateOriginator__block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

- (void)_setInitialStateOriginator:(id)originator
{
  stateQueue = self->_stateQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__AVPlaybackCoordinationMedium__setInitialStateOriginator___block_invoke;
  v4[3] = &unk_1E7460DF0;
  v4[4] = self;
  v4[5] = originator;
  dispatch_sync(stateQueue, v4);
}

id __59__AVPlaybackCoordinationMedium__setInitialStateOriginator___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 32) = result;
  return result;
}

- (id)_mediumParticipantForCoordinator:(id)coordinator orIdentifier:(id)identifier
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__1;
  v13 = __Block_byref_object_dispose__1;
  v14 = 0;
  if (coordinator | identifier)
  {
    stateQueue = self->_stateQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __78__AVPlaybackCoordinationMedium__mediumParticipantForCoordinator_orIdentifier___block_invoke;
    v8[3] = &unk_1E74610E0;
    v8[4] = self;
    v8[5] = coordinator;
    v8[6] = identifier;
    v8[7] = &v9;
    dispatch_sync(stateQueue, v8);
    v5 = v10[5];
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);
  return v6;
}

id __78__AVPlaybackCoordinationMedium__mediumParticipantForCoordinator_orIdentifier___block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 8);
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (a1[5] && ([objc_msgSend(*(*(&v8 + 1) + 8 * v6) "playbackCoordinator")] & 1) != 0 || a1[6] && (objc_msgSend(objc_msgSend(v7, "participantIdentifier"), "isEqual:", a1[6]) & 1) != 0)
        {
          result = v7;
          *(*(a1[7] + 8) + 40) = result;
          return result;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (void)_updateLowestInUseDefaultItemIdentifier
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__AVPlaybackCoordinationMedium__updateLowestInUseDefaultItemIdentifier__block_invoke;
  block[3] = &unk_1E7460C00;
  block[4] = self;
  dispatch_sync(stateQueue, block);
}

- (unsigned)_lowestInUseDefaultItemIdentifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  stateQueue = self->_stateQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__AVPlaybackCoordinationMedium__lowestInUseDefaultItemIdentifier__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(stateQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)localParticipantUUIDForPlaybackCoordinator:(id)coordinator
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__1;
  v11 = __Block_byref_object_dispose__1;
  v12 = 0;
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__AVPlaybackCoordinationMedium_localParticipantUUIDForPlaybackCoordinator___block_invoke;
  block[3] = &unk_1E7460F30;
  block[4] = self;
  block[5] = coordinator;
  block[6] = &v7;
  dispatch_sync(stateQueue, block);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __75__AVPlaybackCoordinationMedium_localParticipantUUIDForPlaybackCoordinator___block_invoke(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1[4] + 8);
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if ([objc_msgSend(v7 "playbackCoordinator")])
        {
          *(*(a1[6] + 8) + 40) = [v7 participantIdentifier];
        }

        ++v6;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)playbackCoordinator:(id)coordinator broadcastLocalParticipantStateDictionary:(id)dictionary
{
  v18 = *MEMORY[0x1E69E9840];
  -[AVPlaybackCoordinationMedium _updateParticipantState:forIdentifier:](self, "_updateParticipantState:forIdentifier:", dictionary, [dictionary objectForKeyedSubscript:@"UUID"]);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  _participants = [(AVPlaybackCoordinationMedium *)self _participants];
  v8 = [_participants countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(_participants);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (([objc_msgSend(v12 "playbackCoordinator")] & 1) == 0)
        {
          [objc_msgSend(v12 "playbackCoordinator")];
        }
      }

      v9 = [_participants countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)playbackCoordinator:(id)coordinator broadcastTransportControlStateDictionary:(id)dictionary forItemWithIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  [(NSCondition *)self->_condition lock];
  [(AVPlaybackCoordinationMedium *)self _updateTransportControlState:dictionary forIdentifier:identifier];
  if (self->_itemIdentifierConditionWaitsOn && [(AVPlaybackCoordinationMedium *)self _transportControlStateForItemIdentifier:?])
  {
    [(NSCondition *)self->_condition signal];
  }

  [(NSCondition *)self->_condition unlock];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  _participants = [(AVPlaybackCoordinationMedium *)self _participants];
  v10 = [_participants countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(_participants);
        }

        v14 = *(*(&v15 + 1) + 8 * i);
        if (([objc_msgSend(v14 "playbackCoordinator")] & 1) == 0)
        {
          [objc_msgSend(v14 "playbackCoordinator")];
        }
      }

      v11 = [_participants countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)playbackCoordinator:(id)coordinator reloadTransportControlStateForItemWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v9 = [-[AVPlaybackCoordinationMedium _transportControlStateForItemIdentifier:](self _transportControlStateForItemIdentifier:{identifier), "mutableCopy"}];
  v10 = v9;
  if (v9)
  {
    [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsAuthoritative"];
    [coordinator handleNewTransportControlStateDictionary:v10];
  }

  else
  {
    v11 = [(AVPlaybackCoordinationMedium *)self _mediumParticipantForCoordinator:coordinator orIdentifier:0];
    if ([(AVPlaybackCoordinationMedium *)self _initialStateOriginator])
    {
      if ([(AVPlaybackCoordinationMedium *)self _initialStateOriginator]!= v11)
      {
        dispatchQueue = self->_dispatchQueue;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __119__AVPlaybackCoordinationMedium_playbackCoordinator_reloadTransportControlStateForItemWithIdentifier_completionHandler___block_invoke;
        v13[3] = &unk_1E7461108;
        v13[4] = self;
        v13[5] = identifier;
        v13[6] = coordinator;
        v13[7] = handler;
        dispatch_async(dispatchQueue, v13);
        goto LABEL_4;
      }
    }

    else
    {
      [(AVPlaybackCoordinationMedium *)self _setInitialStateOriginator:v11];
    }
  }

  (*(handler + 2))(handler);
LABEL_4:
}

uint64_t __119__AVPlaybackCoordinationMedium_playbackCoordinator_reloadTransportControlStateForItemWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:5.0];
  [*(*(a1 + 32) + 48) lock];
  do
  {
    if ([*(a1 + 32) _transportControlStateForItemIdentifier:*(a1 + 40)])
    {
      break;
    }

    *(*(a1 + 32) + 56) = *(a1 + 40);
  }

  while (([*(*(a1 + 32) + 48) waitUntilDate:v2] & 1) != 0);
  *(*(a1 + 32) + 56) = 0;
  [*(*(a1 + 32) + 48) unlock];
  v3 = [objc_msgSend(*(a1 + 32) _transportControlStateForItemIdentifier:{*(a1 + 40)), "mutableCopy"}];
  if ([*(a1 + 32) _transportControlStateForItemIdentifier:*(a1 + 40)])
  {
    [v3 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"IsAuthoritative"];
    [*(a1 + 48) handleNewTransportControlStateDictionary:v3];
  }

  v4 = *(*(a1 + 56) + 16);

  return v4();
}

- (BOOL)_updateTransportControlState:(id)state forIdentifier:(id)identifier
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (identifier)
  {
    stateQueue = self->_stateQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __75__AVPlaybackCoordinationMedium__updateTransportControlState_forIdentifier___block_invoke;
    v7[3] = &unk_1E7461090;
    v7[4] = self;
    v7[5] = identifier;
    v7[6] = state;
    v7[7] = &v8;
    dispatch_sync(stateQueue, v7);
    v5 = *(v9 + 24);
  }

  else
  {
    v5 = 0;
  }

  _Block_object_dispose(&v8, 8);
  return v5 & 1;
}

uint64_t __71__AVPlaybackCoordinationMedium__updateLowestInUseDefaultItemIdentifier__block_invoke(uint64_t a1)
{
  v2 = [@"II-" length];
  v3 = [*(*(a1 + 32) + 16) allValues];
  result = [v3 count];
  if (result && (OUTLINED_FUNCTION_0(), (result = OUTLINED_FUNCTION_2(v5, v6, v7, v8, v9, v10, v11, v12, v27, v29, v31, v33, v35, v37, v39, v41, v43)) != 0))
  {
    v13 = result;
    v14 = *v32;
    v15 = -1;
    do
    {
      v16 = 0;
      do
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v3);
        }

        v17 = [*(v30 + 8 * v16) objectForKeyedSubscript:@"CurrentIdentifier"];
        v18 = [v17 hasPrefix:@"II-"];
        if (v18)
        {
          v18 = [v17 length];
          if (v18 > v2)
          {
            v18 = [objc_msgSend(v17 substringFromIndex:{v2), "integerValue"}];
            if (v18 >= v15)
            {
              v26 = v15;
            }

            else
            {
              v26 = v18;
            }

            if (v15 >= 0)
            {
              v15 = v26;
            }

            else
            {
              v15 = v18;
            }
          }
        }

        ++v16;
      }

      while (v13 != v16);
      result = OUTLINED_FUNCTION_2(v18, v19, v20, v21, v22, v23, v24, v25, v28, v30, v32, v34, v36, v38, v40, v42, v44);
      v13 = result;
    }

    while (result);
  }

  else
  {
    v15 = -1;
  }

  *(*(a1 + 32) + 40) = v15 & ~(v15 >> 63);
  return result;
}

- (int)connectPlaybackCoordinator:(id)coordinator
{
  if (coordinator)
  {
    v5 = -[AVPlaybackCoordinationMediumParticipant initWithPlaybackCoordinator:participantIdentifier:]([AVPlaybackCoordinationMediumParticipant alloc], "initWithPlaybackCoordinator:participantIdentifier:", coordinator, [MEMORY[0x1E696AFB0] UUID]);
    [(AVPlaybackCoordinationMedium *)self _updateParticipantsWithParticipant:v5];
    [(AVPlaybackCoordinationMedium *)self _updateLowestInUseDefaultItemIdentifier];
    [coordinator setDefaultItemIdentifierCounter:-[AVPlaybackCoordinationMedium _lowestInUseDefaultItemIdentifier](self postingNotification:{"_lowestInUseDefaultItemIdentifier"), 1}];
    [coordinator setCoordinationMediumDelegate:self];
    [coordinator handleReplacementParticipantStateDictionaries:{-[AVPlaybackCoordinationMedium _participantStatesAsArray](self, "_participantStatesAsArray")}];
    _transportControlStatesAsArray = [(AVPlaybackCoordinationMedium *)self _transportControlStatesAsArray];
    OUTLINED_FUNCTION_1();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(_transportControlStatesAsArray);
          }

          [coordinator handleNewTransportControlStateDictionary:*(v13 + 8 * v11++)];
        }

        while (v9 != v11);
        OUTLINED_FUNCTION_1();
        v9 = [_transportControlStatesAsArray countByEnumeratingWithState:? objects:? count:?];
      }

      while (v9);
    }
  }

  else
  {
    v5 = 0;
  }

  return 0;
}

- (int)disconnectPlaybackCoordinatorWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifier)
  {
    v5 = [(AVPlaybackCoordinationMedium *)self _mediumParticipantForCoordinator:0 orIdentifier:identifier];
    if (v5)
    {
      [(AVPlaybackCoordinationMedium *)self _removeParticipant:v5];
    }

    _participants = [(AVPlaybackCoordinationMedium *)self _participants];
    OUTLINED_FUNCTION_1();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(_participants);
          }

          [objc_msgSend(*(v13 + 8 * i) "playbackCoordinator")];
        }

        OUTLINED_FUNCTION_1();
        v9 = [_participants countByEnumeratingWithState:? objects:? count:?];
      }

      while (v9);
    }

    identifierCopy = [objc_msgSend(identifierCopy "UUIDString")];
    [(AVPlaybackCoordinationMedium *)self _removeParticipantStateForIdentifier:identifierCopy];
    [(AVPlaybackCoordinationMedium *)self _removeUnusedTransportControlStates];
    if ([(AVPlaybackCoordinationMedium *)self _initialStateOriginator]== v5)
    {
      [(AVPlaybackCoordinationMedium *)self _setInitialStateOriginator:0];
    }
  }

  return 0;
}

@end