@interface EKEventDetailAttendeesCellModel
+ (unint64_t)computeStatusHash:(id)a3;
- (BOOL)_eventDifferent:(id)a3;
- (BOOL)_groupAndSort;
- (BOOL)checkBlockingForAccepted:(id)a3 maybe:(id)a4 declined:(id)a5 noReply:(id)a6 ungrouped:(id)a7;
- (BOOL)sortAttendeesWithCompletion:(id)a3;
- (EKEventDetailAttendeesCellModel)init;
- (EKEventDetailAttendeesCellModelDelegate)delegate;
- (NSArray)attendeesNotIncludingOrganizerOrLocationsOrResources;
- (id)_asyncWorkQueue;
- (id)collectAndResetBlockedParticipants:(id)a3;
- (void)_checkBlocking:(BOOL)a3;
- (void)_sortAccepted:(id)a3 maybe:(id)a4 declined:(id)a5 noReply:(id)a6 ungrouped:(id)a7 event:(id)a8 generation:(int)a9 synchronous:(BOOL)a10;
- (void)blockListCacheUpdated:(id)a3;
- (void)callCallbacksWithGeneration:(int)a3;
- (void)setEvent:(id)a3;
- (void)sortAccepted:(id)a3 maybe:(id)a4 declined:(id)a5 noReply:(id)a6 ungrouped:(id)a7 synchronous:(BOOL)a8;
@end

@implementation EKEventDetailAttendeesCellModel

- (EKEventDetailAttendeesCellModel)init
{
  v3.receiver = self;
  v3.super_class = EKEventDetailAttendeesCellModel;
  result = [(EKEventDetailAttendeesCellModel *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)setEvent:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  if ([(EKEventDetailAttendeesCellModel *)self _eventDifferent:v5])
  {
    v6 = [(EKEvent *)self->_event eventStore];
    v7 = [v5 eventStore];

    if (v6 != v7)
    {
      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      v9 = *MEMORY[0x1E6992EB0];
      [v8 removeObserver:self name:*MEMORY[0x1E6992EB0] object:self];

      v10 = [v5 eventStore];
      v11 = [v10 blockList];

      if (v11)
      {
        v12 = [MEMORY[0x1E696AD88] defaultCenter];
        [v12 addObserver:self selector:sel_blockListCacheUpdated_ name:v9 object:v11];
      }
    }

    objc_storeStrong(&self->_event, a3);
    ++self->_generation;
    pendingCallbackBlocks = self->_pendingCallbackBlocks;
    if (pendingCallbackBlocks)
    {
      v14 = pendingCallbackBlocks;
      v15 = self->_pendingCallbackBlocks;
      self->_pendingCallbackBlocks = 0;
    }

    self->_groupAndSortQueued = 0;
    accepted = self->_accepted;
    self->_accepted = 0;

    maybe = self->_maybe;
    self->_maybe = 0;

    declined = self->_declined;
    self->_declined = 0;

    noReply = self->_noReply;
    self->_noReply = 0;

    ungrouped = self->_ungrouped;
    self->_ungrouped = 0;

    cachedAttendeesNotIncludingOrganizerOrLocationsOrResources = self->_cachedAttendeesNotIncludingOrganizerOrLocationsOrResources;
    self->_cachedAttendeesNotIncludingOrganizerOrLocationsOrResources = 0;

    os_unfair_lock_unlock(&self->_lock);
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = pendingCallbackBlocks;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v28;
      do
      {
        v26 = 0;
        do
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(v22);
          }

          (*(*(*(&v27 + 1) + 8 * v26) + 16))(*(*(&v27 + 1) + 8 * v26));
          ++v26;
        }

        while (v24 != v26);
        v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v24);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (BOOL)_eventDifferent:(id)a3
{
  if (self->_event == a3)
  {
    v5 = [a3 attendeesNotIncludingOrganizerOrLocationsOrResources];
    v6 = [v5 count];
    if (v6 == [(NSArray *)self->_cachedAttendeesNotIncludingOrganizerOrLocationsOrResources count])
    {
      if (!v6)
      {
LABEL_8:
        v3 = [objc_opt_class() computeStatusHash:v5] != self->_statusHash;
LABEL_10:

        return v3;
      }

      v7 = 0;
      while (1)
      {
        v8 = [v5 objectAtIndexedSubscript:v7];
        v9 = [(NSArray *)self->_cachedAttendeesNotIncludingOrganizerOrLocationsOrResources objectAtIndexedSubscript:v7];

        if (v8 != v9)
        {
          break;
        }

        if (v6 == ++v7)
        {
          goto LABEL_8;
        }
      }
    }

    v3 = 1;
    goto LABEL_10;
  }

  return 1;
}

- (BOOL)sortAttendeesWithCompletion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  if ([(EKEventDetailAttendeesCellModel *)self _needsGroupAndSort]&& (self->_groupAndSortQueued || ![(EKEventDetailAttendeesCellModel *)self _groupAndSort]))
  {
    pendingCallbackBlocks = self->_pendingCallbackBlocks;
    if (!pendingCallbackBlocks)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v17 = self->_pendingCallbackBlocks;
      self->_pendingCallbackBlocks = v16;

      pendingCallbackBlocks = self->_pendingCallbackBlocks;
    }

    v18 = _Block_copy(v4);
    [(NSMutableArray *)pendingCallbackBlocks addObject:v18];

    os_unfair_lock_unlock(&self->_lock);
    v14 = 0;
  }

  else
  {
    accepted = self->_accepted;
    maybe = self->_maybe;
    declined = self->_declined;
    noReply = self->_noReply;
    v9 = self->_ungrouped;
    v10 = noReply;
    v11 = declined;
    v12 = maybe;
    v13 = accepted;
    os_unfair_lock_unlock(&self->_lock);
    (*(v4 + 2))(v4, v13, v12, v11, v10, v9);

    v14 = 1;
  }

  return v14;
}

- (BOOL)_groupAndSort
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = [(EKEventDetailAttendeesCellModel *)self attendeesNotIncludingOrganizerOrLocationsOrResources];
  v4 = [v3 count];
  v5 = [(EKEvent *)self->_event calendar];
  v6 = [v5 source];
  v7 = [v6 constraints];
  if ([v7 statusesAreAccurate])
  {
    v8 = CanSeeAttendeeStatuses(self->_event);

    if (v8)
    {
      v31 = self;
      v32 = v4;
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v12 = v3;
      v13 = [v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = v13;
      v15 = *v39;
      while (1)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v39 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v38 + 1) + 8 * i);
          v18 = [v17 participantType];
          if (v18 <= 4 && ((1 << v18) & 0x13) != 0)
          {
            v20 = [v17 participantStatus];
            if (v20 <= 2)
            {
              if (v20 >= 2)
              {
                v21 = v9;
                if (v20 != 2)
                {
                  continue;
                }
              }

              else
              {
                v21 = v11;
              }

LABEL_19:
              [v21 addObject:v17];
              continue;
            }

            v21 = v10;
            if (v20 == 4)
            {
              goto LABEL_19;
            }

            v21 = v33;
            if (v20 == 3)
            {
              goto LABEL_19;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v38 objects:v43 count:16];
        if (!v14)
        {
LABEL_22:
          v4 = v32;

          [(EKEventDetailAttendeesCellModel *)v31 sortAccepted:v9 maybe:v10 declined:v33 noReply:v11 ungrouped:0 synchronous:v32 < 0x19];
          goto LABEL_38;
        }
      }
    }
  }

  else
  {
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v22 = v3;
  v23 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v35;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v34 + 1) + 8 * j);
        v28 = [v27 participantType];
        if (v28 == 4 || v28 == 1)
        {
          [v9 addObject:v27];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v24);
  }

  [(EKEventDetailAttendeesCellModel *)self sortAccepted:0 maybe:0 declined:0 noReply:0 ungrouped:v9 synchronous:v4 < 0x19];
LABEL_38:

  return v4 < 0x19;
}

- (id)_asyncWorkQueue
{
  os_unfair_lock_assert_owner(&self->_lock);
  asyncWorkQueue = self->_asyncWorkQueue;
  if (!asyncWorkQueue)
  {
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_USER_INITIATED, 0);

    v6 = dispatch_queue_create("com.eventkitui.AttendeesCellModel", v5);
    v7 = self->_asyncWorkQueue;
    self->_asyncWorkQueue = v6;

    asyncWorkQueue = self->_asyncWorkQueue;
  }

  return asyncWorkQueue;
}

- (void)sortAccepted:(id)a3 maybe:(id)a4 declined:(id)a5 noReply:(id)a6 ungrouped:(id)a7 synchronous:(BOOL)a8
{
  v8 = a8;
  v36 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v8)
  {
    BYTE4(v24) = 1;
    LODWORD(v24) = self->_generation;
    [(EKEventDetailAttendeesCellModel *)self _sortAccepted:v14 maybe:v15 declined:v16 noReply:v17 ungrouped:v18 event:self->_event generation:v24 synchronous:?];
  }

  else
  {
    self->_groupAndSortQueued = 1;
    v19 = self->_event;
    generation = self->_generation;
    v21 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v35 = generation;
      _os_log_impl(&dword_1D3400000, v21, OS_LOG_TYPE_INFO, "Kicking off asynchronous sort of attendees with generation %i", buf, 8u);
    }

    v22 = [(EKEventDetailAttendeesCellModel *)self _asyncWorkQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __93__EKEventDetailAttendeesCellModel_sortAccepted_maybe_declined_noReply_ungrouped_synchronous___block_invoke;
    block[3] = &unk_1E84402C0;
    block[4] = self;
    v26 = v14;
    v27 = v15;
    v28 = v16;
    v29 = v17;
    v30 = v18;
    v31 = v19;
    v32 = generation;
    v33 = 0;
    v23 = v19;
    dispatch_async(v22, block);
  }
}

void __93__EKEventDetailAttendeesCellModel_sortAccepted_maybe_declined_noReply_ungrouped_synchronous___block_invoke(uint64_t a1)
{
  BYTE4(v2) = *(a1 + 92);
  LODWORD(v2) = *(a1 + 88);
  [*(a1 + 32) _sortAccepted:*(a1 + 40) maybe:*(a1 + 48) declined:*(a1 + 56) noReply:*(a1 + 64) ungrouped:*(a1 + 72) event:*(a1 + 80) generation:v2 synchronous:?];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __93__EKEventDetailAttendeesCellModel_sortAccepted_maybe_declined_noReply_ungrouped_synchronous___block_invoke_2;
  block[3] = &unk_1E8440298;
  block[4] = *(a1 + 32);
  v4 = *(a1 + 88);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_sortAccepted:(id)a3 maybe:(id)a4 declined:(id)a5 noReply:(id)a6 ungrouped:(id)a7 event:(id)a8 generation:(int)a9 synchronous:(BOOL)a10
{
  v41 = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = v21;
  if (v16)
  {
    obj = [v21 sortedEKParticipantsDisplayStringsIgnoringNonHumans:v16];
    if (v17)
    {
      goto LABEL_3;
    }

LABEL_6:
    v36 = 0;
    if (v18)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  obj = 0;
  if (!v17)
  {
    goto LABEL_6;
  }

LABEL_3:
  v36 = [v22 sortedEKParticipantsDisplayStringsIgnoringNonHumans:{v17, obj}];
  if (v18)
  {
LABEL_4:
    v35 = [v22 sortedEKParticipantsDisplayStringsIgnoringNonHumans:{v18, obj}];
    goto LABEL_8;
  }

LABEL_7:
  v35 = 0;
LABEL_8:
  v34 = v16;
  if (v19)
  {
    v23 = [v22 sortedEKParticipantsDisplayStringsIgnoringNonHumans:v19];
  }

  else
  {
    v23 = 0;
  }

  if (v20)
  {
    v24 = [v22 sortedEKParticipantsDisplayStringsIgnoringNonHumans:v20];
  }

  else
  {
    v24 = 0;
  }

  v33 = v20;
  v25 = v18;
  if (!a10)
  {
    os_unfair_lock_lock(&self->_lock);
  }

  generation = self->_generation;
  v27 = kEKUILogHandle;
  v28 = os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO);
  if (generation == a9)
  {
    v29 = v25;
    if (v28)
    {
      *buf = 67109120;
      v38 = a9;
      _os_log_impl(&dword_1D3400000, v27, OS_LOG_TYPE_INFO, "Completed sort of attendees with generation %i", buf, 8u);
    }

    v30 = obj;
    objc_storeStrong(&self->_accepted, obj);
    objc_storeStrong(&self->_maybe, v36);
    objc_storeStrong(&self->_declined, v35);
    objc_storeStrong(&self->_noReply, v23);
    objc_storeStrong(&self->_ungrouped, v24);
    [(EKEventDetailAttendeesCellModel *)self _checkBlocking:a10];
  }

  else
  {
    v29 = v25;
    v30 = obj;
    if (v28)
    {
      v31 = self->_generation;
      *buf = 67109376;
      v38 = a9;
      v39 = 1024;
      v40 = v31;
      _os_log_impl(&dword_1D3400000, v27, OS_LOG_TYPE_INFO, "Completed sort of attendees with generation %i, but the current generation is %i", buf, 0xEu);
    }
  }

  if (!a10)
  {
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)callCallbacksWithGeneration:(int)a3
{
  v29 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_lock);
  if (self->_generation == a3)
  {
    v5 = self->_accepted;
    v6 = self->_maybe;
    v7 = self->_declined;
    v8 = self->_noReply;
    v9 = self->_ungrouped;
    v10 = self->_pendingCallbackBlocks;
    pendingCallbackBlocks = self->_pendingCallbackBlocks;
    self->_pendingCallbackBlocks = 0;

    self->_groupAndSortQueued = 0;
    os_unfair_lock_unlock(&self->_lock);
    v12 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      *buf = 134218240;
      *v27 = [(NSMutableArray *)v10 count];
      *&v27[8] = 1024;
      v28 = a3;
      _os_log_impl(&dword_1D3400000, v13, OS_LOG_TYPE_INFO, "Calling %lu attendee sort callbacks for generation %i", buf, 0x12u);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = v10;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          (*(*(*(&v21 + 1) + 8 * v18) + 16))(*(*(&v21 + 1) + 8 * v18));
          ++v18;
        }

        while (v16 != v18);
        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v19 = kEKUILogHandle;
    if (os_log_type_enabled(kEKUILogHandle, OS_LOG_TYPE_INFO))
    {
      generation = self->_generation;
      *buf = 67109376;
      *v27 = a3;
      *&v27[4] = 1024;
      *&v27[6] = generation;
      _os_log_impl(&dword_1D3400000, v19, OS_LOG_TYPE_INFO, "Not calling attendee sort callbacks because work completed for generation %i, but the current generation is %i", buf, 0xEu);
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_checkBlocking:(BOOL)a3
{
  v3 = a3;
  os_unfair_lock_assert_owner(&self->_lock);
  if (v3)
  {
    accepted = self->_accepted;
    maybe = self->_maybe;
    declined = self->_declined;
    noReply = self->_noReply;
    ungrouped = self->_ungrouped;

    [(EKEventDetailAttendeesCellModel *)self checkBlockingForAccepted:accepted maybe:maybe declined:declined noReply:noReply ungrouped:ungrouped];
  }

  else
  {
    generation = self->_generation;
    v11 = self->_accepted;
    v12 = self->_maybe;
    v13 = self->_declined;
    v14 = self->_noReply;
    v15 = self->_ungrouped;
    v16 = [(EKEventDetailAttendeesCellModel *)self _asyncWorkQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50__EKEventDetailAttendeesCellModel__checkBlocking___block_invoke;
    block[3] = &unk_1E84402E8;
    block[4] = self;
    *&v17 = v11;
    *(&v17 + 1) = v12;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v25 = v17;
    v26 = v18;
    v27 = v15;
    v28 = generation;
    v19 = v15;
    v20 = v14;
    v21 = v13;
    v22 = v12;
    v23 = v11;
    dispatch_async(v16, block);
  }
}

void __50__EKEventDetailAttendeesCellModel__checkBlocking___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) checkBlockingForAccepted:*(a1 + 40) maybe:*(a1 + 48) declined:*(a1 + 56) noReply:*(a1 + 64) ungrouped:*(a1 + 72)])
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __50__EKEventDetailAttendeesCellModel__checkBlocking___block_invoke_2;
    v2[3] = &unk_1E8440298;
    v2[4] = *(a1 + 32);
    v3 = *(a1 + 80);
    dispatch_async(MEMORY[0x1E69E96A0], v2);
  }
}

void __50__EKEventDetailAttendeesCellModel__checkBlocking___block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 32));
  v2 = *(a1 + 32);
  os_unfair_lock_opaque = v2[26]._os_unfair_lock_opaque;
  v4 = *(a1 + 40);
  os_unfair_lock_unlock(v2 + 8);
  if (os_unfair_lock_opaque == v4)
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 112));
    [WeakRetained eventDetailAttendeeCellModelBlockedParticipantsUpdated];
  }
}

- (BOOL)checkBlockingForAccepted:(id)a3 maybe:(id)a4 declined:(id)a5 noReply:(id)a6 ungrouped:(id)a7
{
  v56[5] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = v11;
  v56[0] = v35;
  v36 = v12;
  v56[1] = v36;
  v37 = v13;
  v56[2] = v37;
  v38 = v14;
  v56[3] = v38;
  v19 = v15;
  v20 = 0;
  v39 = v19;
  v56[4] = v19;
  do
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v41 = v20;
    v21 = v56[v20];
    v22 = [v21 countByEnumeratingWithState:&v51 objects:v55 count:16];
    if (v22)
    {
      v23 = *v52;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v52 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v51 + 1) + 8 * i);
          v26 = [v25 email];
          v27 = [v25 phone];
          if (v26)
          {
            [v16 addObject:v25];
            [v42 addObject:v26];
          }

          if (v27)
          {
            [v17 addObject:v25];
            [v18 addObject:v27];
          }
        }

        v22 = [v21 countByEnumeratingWithState:&v51 objects:v55 count:16];
      }

      while (v22);
    }

    v20 = v41 + 1;
  }

  while (v41 != 4);
  v28 = [(EKEvent *)self->_event eventStore];
  v29 = [v28 blockList];

  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __93__EKEventDetailAttendeesCellModel_checkBlockingForAccepted_maybe_declined_noReply_ungrouped___block_invoke;
  v43[3] = &unk_1E8440338;
  v43[4] = self;
  v30 = v16;
  v44 = v30;
  v31 = v17;
  v45 = v31;
  v46 = &v47;
  [v29 batchCachedEmails:v42 phoneNumbers:v18 completionHandler:v43];
  v32 = *(v48 + 24);

  _Block_object_dispose(&v47, 8);
  for (j = 4; j != -1; --j)
  {
  }

  return v32;
}

void __93__EKEventDetailAttendeesCellModel_checkBlockingForAccepted_maybe_declined_noReply_ungrouped___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) collectAndResetBlockedParticipants:*(a1 + 40)];
  v8 = [*(a1 + 32) collectAndResetBlockedParticipants:*(a1 + 48)];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __93__EKEventDetailAttendeesCellModel_checkBlockingForAccepted_maybe_declined_noReply_ungrouped___block_invoke_2;
  v35[3] = &unk_1E8440310;
  v36 = *(a1 + 40);
  v9 = v7;
  v10 = *(a1 + 56);
  v37 = v9;
  v38 = v10;
  [v5 enumerateIndexesUsingBlock:v35];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __93__EKEventDetailAttendeesCellModel_checkBlockingForAccepted_maybe_declined_noReply_ungrouped___block_invoke_3;
  v31[3] = &unk_1E8440310;
  v32 = *(a1 + 48);
  v11 = v8;
  v12 = *(a1 + 56);
  v33 = v11;
  v34 = v12;
  [v6 enumerateIndexesUsingBlock:v31];
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = v9;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          if ([*(*(&v27 + 1) + 8 * i) blocked] != 1)
          {
            *(*(*(a1 + 56) + 8) + 24) = 1;
            goto LABEL_12;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v27 objects:v40 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v18 = v11;
    v19 = [v18 countByEnumeratingWithState:&v23 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v24;
      while (2)
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(v18);
          }

          if ([*(*(&v23 + 1) + 8 * j) blocked] != 1)
          {
            *(*(*(a1 + 56) + 8) + 24) = 1;
            goto LABEL_24;
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v23 objects:v39 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_24:
  }
}

void __93__EKEventDetailAttendeesCellModel_checkBlockingForAccepted_maybe_declined_noReply_ungrouped___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  if (([*(a1 + 40) containsObject:?] & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  [v3 setBlocked:1];
}

void __93__EKEventDetailAttendeesCellModel_checkBlockingForAccepted_maybe_declined_noReply_ungrouped___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  if (([*(a1 + 40) containsObject:?] & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  [v3 setBlocked:1];
}

- (id)collectAndResetBlockedParticipants:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 blocked] == 1)
        {
          if (!v6)
          {
            v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v6 addObject:v9];
          [v9 setBlocked:0];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)blockListCacheUpdated:(id)a3
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  os_unfair_lock_lock(&self->_lock);
  [(EKEventDetailAttendeesCellModel *)self _checkBlocking:0];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)attendeesNotIncludingOrganizerOrLocationsOrResources
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  cachedAttendeesNotIncludingOrganizerOrLocationsOrResources = self->_cachedAttendeesNotIncludingOrganizerOrLocationsOrResources;
  if (!cachedAttendeesNotIncludingOrganizerOrLocationsOrResources)
  {
    v4 = [(EKEvent *)self->_event attendeesNotIncludingOrganizerOrLocationsOrResources];
    v5 = self->_cachedAttendeesNotIncludingOrganizerOrLocationsOrResources;
    self->_cachedAttendeesNotIncludingOrganizerOrLocationsOrResources = v4;

    self->_statusHash = [objc_opt_class() computeStatusHash:self->_cachedAttendeesNotIncludingOrganizerOrLocationsOrResources];
    cachedAttendeesNotIncludingOrganizerOrLocationsOrResources = self->_cachedAttendeesNotIncludingOrganizerOrLocationsOrResources;
  }

  return cachedAttendeesNotIncludingOrganizerOrLocationsOrResources;
}

+ (unint64_t)computeStatusHash:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = a3;
  v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = *v20;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = MEMORY[0x1E6993410];
        v12 = [v10 comment];
        v13 = [v11 stringWithAutoCommentRemoved:v12];
        v14 = [v13 length] != 0;

        v15 = (([v10 participantStatus] | (16 * v14)) << (4 * v5)) | v6;
        v16 = v5 == 15;
        if (v5 == 15)
        {
          v5 = 0;
        }

        else
        {
          ++v5;
        }

        if (v16)
        {
          v6 = 0;
        }

        else
        {
          v6 = v15;
        }

        if (v16)
        {
          v7 = v15 + 13 * v7;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
    if (v5)
    {
      v7 = v6 + 11 * v7;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (EKEventDetailAttendeesCellModelDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end