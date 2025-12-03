@interface ASCompetitionAwardingSource
- (ASCompetitionAwardingSourceDataProvider)dataProvider;
- (id)_allCompetitionsOrderedByEndDate;
- (id)_queue_earnedInstancesForInterval:(id)interval selectingCompetitionsUsingFilter:(id)filter;
- (id)earnedInstancesForIncrementalInterval:(id)interval;
- (id)initForCreatorDevice:(unsigned __int8)device;
@end

@implementation ASCompetitionAwardingSource

- (id)initForCreatorDevice:(unsigned __int8)device
{
  v9.receiver = self;
  v9.super_class = ASCompetitionAwardingSource;
  v4 = [(ASCompetitionAwardingSource *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_creatorDevice = device;
    v6 = HKCreateSerialDispatchQueue();
    serialQueue = v5->_serialQueue;
    v5->_serialQueue = v6;
  }

  return v5;
}

- (id)earnedInstancesForIncrementalInterval:(id)interval
{
  v19 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  ASLoggingInitialize();
  v5 = *MEMORY[0x277CE8FC0];
  if (os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = intervalCopy;
    _os_log_impl(&dword_23E5E3000, v5, OS_LOG_TYPE_DEFAULT, "Responding to earned instances for incremental interval: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__10;
  v17 = __Block_byref_object_dispose__10;
  v18 = 0;
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__ASCompetitionAwardingSource_earnedInstancesForIncrementalInterval___block_invoke;
  block[3] = &unk_278C4BAD0;
  v12 = intervalCopy;
  p_buf = &buf;
  block[4] = self;
  v7 = intervalCopy;
  dispatch_sync(serialQueue, block);
  v8 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);
  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __69__ASCompetitionAwardingSource_earnedInstancesForIncrementalInterval___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_earnedInstancesForInterval:*(a1 + 40) selectingCompetitionsUsingFilter:&__block_literal_global_14];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_queue_earnedInstancesForInterval:(id)interval selectingCompetitionsUsingFilter:(id)filter
{
  v77 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  filterCopy = filter;
  _allCompetitionsOrderedByEndDate = [(ASCompetitionAwardingSource *)self _allCompetitionsOrderedByEndDate];
  v63 = [MEMORY[0x277CBEB58] set];
  WeakRetained = objc_loadWeakRetained(&self->_dataProvider);
  friends = [WeakRetained friends];

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  obj = friends;
  v55 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
  if (v55)
  {
    v53 = *v69;
    v60 = *MEMORY[0x277CE8FB8];
    v61 = *MEMORY[0x277CCE1D0];
    do
    {
      v8 = 0;
      do
      {
        if (*v69 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v57 = v8;
        v9 = *(*(&v68 + 1) + 8 * v8);
        context = objc_autoreleasePoolPush();
        ASLoggingInitialize();
        v10 = *MEMORY[0x277CE8FC0];
        if (os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_DEFAULT))
        {
          v11 = v10;
          uUID = [v9 UUID];
          displayName = [v9 displayName];
          *buf = 138543618;
          *&buf[4] = uUID;
          *&buf[12] = 2112;
          *&buf[14] = displayName;
          _os_log_impl(&dword_23E5E3000, v11, OS_LOG_TYPE_DEFAULT, "Collecting completed competitions for %{public}@ - %@", buf, 0x16u);
        }

        v58 = v9;
        completedCompetitions = [v9 completedCompetitions];
        v15 = [completedCompetitions hk_filter:filterCopy];

        ASLoggingInitialize();
        v16 = *MEMORY[0x277CE8FC0];
        if (os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_DEFAULT))
        {
          v17 = v16;
          v18 = [v15 count];
          *buf = 134217984;
          *&buf[4] = v18;
          _os_log_impl(&dword_23E5E3000, v17, OS_LOG_TYPE_DEFAULT, "Found %lu completed competitions", buf, 0xCu);
        }

        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v59 = v15;
        v19 = [v59 countByEnumeratingWithState:&v64 objects:v72 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v65;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v65 != v21)
              {
                objc_enumerationMutation(v59);
              }

              v23 = *(*(&v64 + 1) + 8 * i);
              ASLoggingInitialize();
              v24 = *MEMORY[0x277CE8FC0];
              if (os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_DEFAULT))
              {
                v25 = v24;
                uUID2 = [v23 UUID];
                myTotalScore = [v23 myTotalScore];
                opponentTotalScore = [v23 opponentTotalScore];
                *buf = 138543874;
                *&buf[4] = uUID2;
                *&buf[12] = 2048;
                *&buf[14] = myTotalScore;
                *&buf[22] = 2048;
                v75 = opponentTotalScore;
                _os_log_impl(&dword_23E5E3000, v25, OS_LOG_TYPE_DEFAULT, "Building earned instance for competition participation: %{public}@, %lu - %lu", buf, 0x20u);
              }

              hk_gregorianCalendar = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
              endDate = [v23 endDate];
              v31 = [hk_gregorianCalendar components:v61 fromDate:endDate];

              v32 = v23;
              *buf = MEMORY[0x277D85DD0];
              *&buf[8] = 3221225472;
              *&buf[16] = ___IndexOfCompetitionInAllCompetitions_block_invoke;
              v75 = &unk_278C4CFE0;
              v76 = v32;
              v33 = v32;
              v34 = [_allCompetitionsOrderedByEndDate indexOfObjectPassingTest:buf];

              date = [MEMORY[0x277CBEAA8] date];
              ASLoggingInitialize();
              v36 = *MEMORY[0x277CE8FC0];
              if (os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *&buf[4] = v34;
                _os_log_impl(&dword_23E5E3000, v36, OS_LOG_TYPE_DEFAULT, "Competition is at index %lu", buf, 0xCu);
              }

              v37 = objc_alloc_init(MEMORY[0x277CE8D38]);
              [v37 setTemplateUniqueName:v60];
              [v37 setEarnedDateComponents:v31];
              [v37 setCreatedDate:date];
              v38 = MEMORY[0x277CCD7E8];
              countUnit = [MEMORY[0x277CCDAB0] countUnit];
              v40 = [v38 quantityWithUnit:countUnit doubleValue:v34];
              [v37 setValue:v40];

              [v63 addObject:v37];
              if ([v33 isParticipantWinning:0])
              {
                ASLoggingInitialize();
                v41 = *MEMORY[0x277CE8FC0];
                if (os_log_type_enabled(*MEMORY[0x277CE8FC0], OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_23E5E3000, v41, OS_LOG_TYPE_DEFAULT, "Building earned instance for competition victory", buf, 2u);
                }

                v42 = objc_alloc_init(MEMORY[0x277CE8D38]);
                uUID3 = [v58 UUID];
                v44 = ASCompetitionVictoryTemplateNameForFriend();
                [v42 setTemplateUniqueName:v44];

                [v42 setEarnedDateComponents:v31];
                [v42 setCreatedDate:date];
                v45 = MEMORY[0x277CCD7E8];
                countUnit2 = [MEMORY[0x277CCDAB0] countUnit];
                v47 = [v45 quantityWithUnit:countUnit2 doubleValue:{objc_msgSend(v33, "victoryBadgeStyle")}];
                [v42 setValue:v47];

                [v63 addObject:v42];
              }
            }

            v20 = [v59 countByEnumeratingWithState:&v64 objects:v72 count:16];
          }

          while (v20);
        }

        objc_autoreleasePoolPop(context);
        v8 = v57 + 1;
      }

      while (v57 + 1 != v55);
      v55 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
    }

    while (v55);
  }

  v48 = [v63 copy];
  v49 = *MEMORY[0x277D85DE8];

  return v48;
}

- (id)_allCompetitionsOrderedByEndDate
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_dataProvider);
  friends = [WeakRetained friends];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = friends;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    v8 = MEMORY[0x277CBEBF8];
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        completedCompetitions = [*(*(&v15 + 1) + 8 * v9) completedCompetitions];
        v8 = [v10 arrayByAddingObjectsFromArray:completedCompetitions];

        ++v9;
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v12 = ASCompetitionsSortedByEndDate();

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (ASCompetitionAwardingSourceDataProvider)dataProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_dataProvider);

  return WeakRetained;
}

@end