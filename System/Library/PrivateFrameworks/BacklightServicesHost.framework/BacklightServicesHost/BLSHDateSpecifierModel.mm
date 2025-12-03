@interface BLSHDateSpecifierModel
- (BLSHDateSpecifierModel)initWithInactiveBudgetPolicy:(id)policy;
- (BLSHEnvironmentDatesModel)environmentModelForKey:(uint64_t)key;
- (BOOL)isEmpty;
- (BOOL)missingAnySpecifiersInDateInterval:(id)interval forPresentation:(id)presentation;
- (id)missingIntervalsForMinimumInterval:(id)interval requestInterval:(id)requestInterval ofPresentation:(id)presentation;
- (id)updatesAfterSpecifier:(id)specifier coalesceFirstUpdateToNowDate:(id)date plusRenderEarlyEpsilon:(double)epsilon untilGapOverDuration:(double)duration coaelscingEpsilon:(double)coaelscingEpsilon maximumUpdates:(int64_t)updates lastValidDate:(id)validDate forPresentation:(id)self0 environmentFilter:(id)self1;
- (void)addObserver:(id)observer;
- (void)notifyObserversWithBlock:(uint64_t)block;
- (void)purgeSpecifiersBefore:(id)before;
- (void)registerSpecifiers:(id)specifiers forDateInterval:(id)interval environment:(id)environment;
- (void)removeEnvironmentModelForKey:(void *)key reason:;
- (void)removeObserver:(id)observer;
@end

@implementation BLSHDateSpecifierModel

- (BLSHDateSpecifierModel)initWithInactiveBudgetPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = BLSHDateSpecifierModel;
  v6 = [(BLSHDateSpecifierModel *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_inactiveBudgetPolicy, policy);
    v8 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:512 capacity:4];
    environmentModels = v7->_environmentModels;
    v7->_environmentModels = v8;

    v10 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:2];
    observers = v7->_observers;
    v7->_observers = v10;
  }

  return v7;
}

- (BOOL)missingAnySpecifiersInDateInterval:(id)interval forPresentation:(id)presentation
{
  v25 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  presentationEntries = [presentation presentationEntries];
  v8 = [presentationEntries countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(presentationEntries);
        }

        environment = [*(*(&v20 + 1) + 8 * v11) environment];
        if ([environment isAlwaysOnEnabledForEnvironment])
        {
          v13 = [(BLSHDateSpecifierModel *)self environmentModelForKey:environment];
          dateInterval = [v13 dateInterval];
          v15 = [intervalCopy intersectionWithDateInterval:dateInterval];

          LOBYTE(dateInterval) = [v15 isEqual:intervalCopy];
          if ((dateInterval & 1) == 0)
          {

            v17 = 1;
            goto LABEL_13;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v16 = [presentationEntries countByEnumeratingWithState:&v20 objects:v24 count:16];
      v9 = v16;
    }

    while (v16);
  }

  v17 = 0;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)missingIntervalsForMinimumInterval:(id)interval requestInterval:(id)requestInterval ofPresentation:(id)presentation
{
  v48 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  requestIntervalCopy = requestInterval;
  presentationCopy = presentation;
  expirationDate = [presentationCopy expirationDate];
  if (expirationDate)
  {
    endDate = [intervalCopy endDate];
    v12 = [endDate compare:expirationDate];

    if (v12 == 1)
    {
      v13 = bls_flipbook_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        bls_shortLoggingString = [intervalCopy bls_shortLoggingString];
        bls_shortLoggingString2 = [expirationDate bls_shortLoggingString];
        *buf = 134218754;
        selfCopy2 = self;
        v42 = 2114;
        v43 = bls_shortLoggingString;
        v44 = 2114;
        v45 = bls_shortLoggingString2;
        v46 = 2114;
        v47 = presentationCopy;
        _os_log_fault_impl(&dword_21FD11000, v13, OS_LOG_TYPE_FAULT, "%p minimumInterval:%{public}@ extends past expirationDate:%{public}@ for presentation:%{public}@", buf, 0x2Au);
      }
    }
  }

  v32 = presentationCopy;
  presentationEntries = [presentationCopy presentationEntries];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = [presentationEntries countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (!v15)
  {
    v34 = 0;
    goto LABEL_26;
  }

  v16 = v15;
  v34 = 0;
  v17 = *v36;
  do
  {
    v18 = 0;
    do
    {
      if (*v36 != v17)
      {
        objc_enumerationMutation(presentationEntries);
      }

      environment = [*(*(&v35 + 1) + 8 * v18) environment];
      if ([environment isAlwaysOnEnabledForEnvironment])
      {
        v20 = [(BLSHDateSpecifierModel *)self environmentModelForKey:environment];
        dateInterval = [v20 dateInterval];
        identifier = [intervalCopy intersectionWithDateInterval:dateInterval];

        if (([identifier isEqual:intervalCopy] & 1) == 0)
        {
          v23 = [v20 missingIntervalForDateInterval:requestIntervalCopy];
          if (v23)
          {
            array = v34;
            if (!v34)
            {
              array = [MEMORY[0x277CBEB18] array];
            }

            v34 = array;
            [array addObject:v23];
          }
        }
      }

      else
      {
        v20 = bls_flipbook_log();
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_13;
        }

        identifier = [environment identifier];
        *buf = 134218242;
        selfCopy2 = self;
        v42 = 2114;
        v43 = identifier;
        _os_log_debug_impl(&dword_21FD11000, v20, OS_LOG_TYPE_DEBUG, "%p missingIntervals skipping (alwaysOnDisabled) env:%{public}@", buf, 0x16u);
      }

LABEL_13:
      ++v18;
    }

    while (v16 != v18);
    v25 = [presentationEntries countByEnumeratingWithState:&v35 objects:v39 count:16];
    v16 = v25;
  }

  while (v25);
LABEL_26:
  v26 = [v34 copy];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)updatesAfterSpecifier:(id)specifier coalesceFirstUpdateToNowDate:(id)date plusRenderEarlyEpsilon:(double)epsilon untilGapOverDuration:(double)duration coaelscingEpsilon:(double)coaelscingEpsilon maximumUpdates:(int64_t)updates lastValidDate:(id)validDate forPresentation:(id)self0 environmentFilter:(id)self1
{
  v313 = *MEMORY[0x277D85DE8];
  specifierCopy = specifier;
  dateCopy = date;
  validDateCopy = validDate;
  presentationCopy = presentation;
  filterCopy = filter;
  v236 = specifierCopy;
  if (epsilon > coaelscingEpsilon || specifierCopy == 0)
  {
    coaelscingEpsilonCopy = epsilon;
  }

  else
  {
    coaelscingEpsilonCopy = coaelscingEpsilon;
  }

  v235 = [dateCopy dateByAddingTimeInterval:coaelscingEpsilonCopy];
  v22 = bls_flipbook_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    bls_shortLoggingString = [v235 bls_shortLoggingString];
    [validDateCopy bls_shortLoggingString];
    v220 = v219 = dateCopy;
    bls_shortLoggingString2 = [presentationCopy bls_shortLoggingString];
    *buf = 134220034;
    selfCopy23 = self;
    v302 = 2114;
    *v303 = v236;
    *&v303[8] = 2114;
    *&v303[10] = bls_shortLoggingString;
    *&v303[18] = 2048;
    *&v303[20] = duration;
    *&v303[28] = 2048;
    *&v303[30] = coaelscingEpsilon;
    *&v303[38] = 2048;
    *&v303[40] = updates;
    *&v303[48] = 2114;
    *&v303[50] = v220;
    *&v303[58] = 2114;
    *&v303[60] = bls_shortLoggingString2;
    *&v303[68] = 1024;
    *&v303[70] = filterCopy != 0;
    _os_log_debug_impl(&dword_21FD11000, v22, OS_LOG_TYPE_DEBUG, "%p updates (start) after:%{public}@ coalesceTo:%{public}@ gapDuration:%1.3lg epsilon:%.3lf max:%ld upTo:%{public}@ pres:%{public}@ filtered:%{BOOL}u", buf, 0x58u);

    dateCopy = v219;
  }

  if (!dateCopy)
  {
    [BLSHDateSpecifierModel updatesAfterSpecifier:a2 coalesceFirstUpdateToNowDate:? plusRenderEarlyEpsilon:? untilGapOverDuration:? coaelscingEpsilon:? maximumUpdates:? lastValidDate:? forPresentation:? environmentFilter:?];
  }

  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v24 = [distantFuture isEqualToDate:dateCopy];

  if (v24)
  {
    [BLSHDateSpecifierModel updatesAfterSpecifier:a2 coalesceFirstUpdateToNowDate:self plusRenderEarlyEpsilon:? untilGapOverDuration:? coaelscingEpsilon:? maximumUpdates:? lastValidDate:? forPresentation:? environmentFilter:?];
  }

  if (!presentationCopy)
  {
    [BLSHDateSpecifierModel updatesAfterSpecifier:a2 coalesceFirstUpdateToNowDate:? plusRenderEarlyEpsilon:? untilGapOverDuration:? coaelscingEpsilon:? maximumUpdates:? lastValidDate:? forPresentation:? environmentFilter:?];
  }

  v233 = dateCopy;
  array = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v296 = 0u;
  v297 = 0u;
  v298 = 0u;
  v299 = 0u;
  presentationEntries = [presentationCopy presentationEntries];
  v26 = [presentationEntries countByEnumeratingWithState:&v296 objects:v312 count:16];
  v27 = filterCopy;
  if (v26)
  {
    v28 = v26;
    v29 = *v297;
    v30 = 0x7FFFFFFFFFFFFFFFLL;
    v265 = presentationEntries;
    do
    {
      v31 = 0;
      do
      {
        if (*v297 != v29)
        {
          objc_enumerationMutation(presentationEntries);
        }

        environment = [*(*(&v296 + 1) + 8 * v31) environment];
        if (v27 && (v27[2](v27, environment) & 1) == 0)
        {
          v33 = bls_flipbook_log();
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_23;
          }

          identifier = [environment identifier];
          *buf = 134218242;
          selfCopy23 = self;
          v302 = 2114;
          *v303 = identifier;
          _os_log_debug_impl(&dword_21FD11000, v33, OS_LOG_TYPE_DEBUG, "%p updates skipping env:%{public}@", buf, 0x16u);
          goto LABEL_29;
        }

        if (([environment isAlwaysOnEnabledForEnvironment] & 1) == 0)
        {
          v33 = bls_flipbook_log();
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_23;
          }

          identifier = [environment identifier];
          *buf = 134218242;
          selfCopy23 = self;
          v302 = 2114;
          *v303 = identifier;
          _os_log_debug_impl(&dword_21FD11000, v33, OS_LOG_TYPE_DEBUG, "%p updates skipping (alwaysOnDisabled) env:%{public}@", buf, 0x16u);

LABEL_29:
          goto LABEL_23;
        }

        obj = (v30 - 1);
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30 - 1];
        identifier2 = [environment identifier];
        [dictionary setValue:v35 forKey:identifier2];

        v33 = [(BLSHDateSpecifierModel *)self environmentModelForKey:environment];
        specifiers = [v33 specifiers];
        v38 = bls_flipbook_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          identifier3 = [environment identifier];
          v44 = [specifiers bls_boundedDescriptionWithMax:6 transformer:&__block_literal_global_5];
          *buf = 134218498;
          selfCopy23 = self;
          v302 = 2114;
          *v303 = identifier3;
          *&v303[8] = 2114;
          *&v303[10] = v44;
          _os_log_debug_impl(&dword_21FD11000, v38, OS_LOG_TYPE_DEBUG, "%p updates env:%{public}@ specifiers:%{public}@", buf, 0x20u);
        }

        objectEnumerator = [specifiers objectEnumerator];
        nextObject = [objectEnumerator nextObject];
        dateInterval = [v33 dateInterval];
        v42 = [BLSHEnvironmentDatesEnumerator createWithInitialSpecifier:nextObject enumerator:objectEnumerator dateInterval:dateInterval environment:environment sourceModel:v33];
        [array addObject:v42];

        v27 = filterCopy;
        presentationEntries = v265;
        v30 = obj;
LABEL_23:

        ++v31;
      }

      while (v28 != v31);
      v45 = [presentationEntries countByEnumeratingWithState:&v296 objects:v312 count:16];
      v28 = v45;
    }

    while (v45);
  }

  v294[0] = MEMORY[0x277D85DD0];
  v294[1] = 3221225472;
  v294[2] = __202__BLSHDateSpecifierModel_updatesAfterSpecifier_coalesceFirstUpdateToNowDate_plusRenderEarlyEpsilon_untilGapOverDuration_coaelscingEpsilon_maximumUpdates_lastValidDate_forPresentation_environmentFilter___block_invoke_21;
  v294[3] = &unk_27841F018;
  v232 = dictionary;
  v295 = v232;
  v234 = MEMORY[0x223D70730](v294);
  v46 = [array count];
  table = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:512 capacity:v46];
  v47 = v236;
  if (v236)
  {
    v292 = 0u;
    v293 = 0u;
    v290 = 0u;
    v291 = 0u;
    specifiers2 = [v236 specifiers];
    v49 = [specifiers2 countByEnumeratingWithState:&v290 objects:v311 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v291;
      do
      {
        for (i = 0; i != v50; ++i)
        {
          if (*v291 != v51)
          {
            objc_enumerationMutation(specifiers2);
          }

          v53 = *(*(&v290 + 1) + 8 * i);
          environment2 = [v53 environment];
          v55 = [presentationCopy containsEnvironment:environment2];

          if (v55)
          {
            environment3 = [v53 environment];
            [(NSMapTable *)table setObject:v53 forKey:environment3];
          }
        }

        v50 = [specifiers2 countByEnumeratingWithState:&v290 objects:v311 count:16];
      }

      while (v50);
    }

    v47 = v236;
  }

  presentationDate = [v47 presentationDate];
  if (presentationDate)
  {
    v237 = [v233 earlierDate:presentationDate];

    v58 = [v235 laterDate:presentationDate];
  }

  else
  {
    v237 = v233;
    v58 = v235;
  }

  v250 = 0;
  v59 = 0;
  v264 = 0;
  v240 = 0;
  v242 = 0;
  v238 = 0;
  v243 = v58;
  v244 = presentationDate;
  do
  {
    v60 = v59;
    v268 = (presentationDate != 0) & (v250 ^ 1);
    if (v268)
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      v62 = presentationDate;
      v250 = 1;
      v251 = v60;
    }

    else
    {
      while ((v60 & 1) == 0)
      {
        if (presentationDate)
        {
          distantPast = presentationDate;
        }

        else
        {
          distantPast = [MEMORY[0x277CBEAA8] distantPast];
        }

        v62 = v58;
        if ([distantPast compare:v62] == -1)
        {
          v251 = 1;
          goto LABEL_66;
        }

        v63 = bls_flipbook_log();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          bls_shortLoggingString3 = [distantPast bls_shortLoggingString];
          bls_shortLoggingString4 = [v62 bls_shortLoggingString];
          *buf = 134218754;
          selfCopy23 = self;
          v302 = 1024;
          *v303 = v264;
          *&v303[4] = 2114;
          *&v303[6] = bls_shortLoggingString3;
          *&v303[14] = 2114;
          *&v303[16] = bls_shortLoggingString4;
          _os_log_debug_impl(&dword_21FD11000, v63, OS_LOG_TYPE_DEBUG, "%p updates(%d) (skipping initial) valid:(%{public}@->%{public}@)", buf, 0x26u);
        }

        LOBYTE(v60) = 1;
      }

      v248 = v60;
      distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];
      distantFuture3 = [MEMORY[0x277CBEAA8] distantFuture];
      v286 = 0u;
      v287 = 0u;
      v288 = 0u;
      v289 = 0u;
      v68 = array;
      v69 = [v68 countByEnumeratingWithState:&v286 objects:v310 count:16];
      if (v69)
      {
        v70 = v69;
        v71 = *v287;
        do
        {
          v72 = 0;
          v73 = distantFuture3;
          v74 = distantFuture2;
          do
          {
            if (*v287 != v71)
            {
              objc_enumerationMutation(v68);
            }

            v75 = *(*(&v286 + 1) + 8 * v72);
            specifier = [v75 specifier];
            date = [specifier date];
            distantFuture2 = [date earlierDate:v74];

            dateInterval2 = [v75 dateInterval];
            endDate = [dateInterval2 endDate];
            distantFuture3 = [endDate earlierDate:v73];

            ++v72;
            v73 = distantFuture3;
            v74 = distantFuture2;
          }

          while (v70 != v72);
          v70 = [v68 countByEnumeratingWithState:&v286 objects:v310 count:16];
        }

        while (v70);
      }

      distantFuture4 = [MEMORY[0x277CBEAA8] distantFuture];
      v81 = [distantFuture2 isEqualToDate:distantFuture4];

      if (v81)
      {

        v240 = distantFuture3;
        v58 = v243;
        presentationDate = v244;
        break;
      }

      distantPast = distantFuture2;
      v62 = [distantPast dateByAddingTimeInterval:coaelscingEpsilon];

      v251 = 1;
      v58 = v243;
      presentationDate = v244;
      LOBYTE(v60) = v248;
    }

LABEL_66:
    if (validDateCopy)
    {
      v82 = [v62 earlierDate:?];

      v62 = v82;
    }

    v249 = v60;
    v83 = v60 ^ 1;
    v84 = bls_flipbook_log();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
    {
      bls_shortLoggingString5 = [distantPast bls_shortLoggingString];
      bls_shortLoggingString6 = [v62 bls_shortLoggingString];
      *buf = 134219266;
      selfCopy23 = self;
      v302 = 1024;
      *v303 = v264;
      *&v303[4] = 2114;
      *&v303[6] = bls_shortLoggingString5;
      *&v303[14] = 2114;
      *&v303[16] = bls_shortLoggingString6;
      *&v303[24] = 1024;
      *&v303[26] = v268;
      *&v303[30] = 1024;
      *&v303[32] = v83 & 1;
      _os_log_debug_impl(&dword_21FD11000, v84, OS_LOG_TYPE_DEBUG, "%p updates(%d) (loop) valid:(%{public}@->%{public}@) (skip:%{BOOL}u initial:%{BOOL}u)", buf, 0x32u);
    }

    v245 = v83;

    distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
    distantFuture5 = [MEMORY[0x277CBEAA8] distantFuture];
    v282 = 0u;
    v283 = 0u;
    v284 = 0u;
    v285 = 0u;
    v86 = array;
    v87 = [v86 countByEnumeratingWithState:&v282 objects:v309 count:16];
    v270 = v62;
    if (!v87)
    {

      v136 = 0;
      v137 = distantPast2;
      goto LABEL_124;
    }

    v88 = v87;
    v266 = 0;
    v256 = 0;
    v89 = *v283;
    v263 = distantPast;
    v258 = v86;
    v261 = *v283;
    do
    {
      v90 = 0;
      v262 = v88;
      do
      {
        if (*v283 != v89)
        {
          objc_enumerationMutation(v86);
        }

        v91 = *(*(&v282 + 1) + 8 * v90);
        specifier2 = [v91 specifier];
        date2 = [specifier2 date];
        obja = [v91 environment];
        if (![date2 bls_isOnOrAfter:distantPast])
        {
          goto LABEL_110;
        }

        if (![date2 bls_isOnOrBefore:v62])
        {
          v102 = specifier2;
          goto LABEL_108;
        }

        v260 = distantFuture5;
        nextObject2 = 0;
        while (1)
        {
          v95 = nextObject2;
          enumerator = [v91 enumerator];
          nextObject2 = [enumerator nextObject];

          date3 = [nextObject2 date];
          v98 = date3;
          if (date3)
          {
            distantFuture6 = date3;
          }

          else
          {
            distantFuture6 = [MEMORY[0x277CBEAA8] distantFuture];
          }

          if ([distantFuture6 bls_isOnOrAfter:distantPast andOnOrBefore:v62])
          {
            v100 = bls_flipbook_log();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
            {
              bls_shortLoggingString7 = [distantPast bls_shortLoggingString];
              bls_shortLoggingString8 = [v62 bls_shortLoggingString];
              identifier4 = [obja identifier];
              *buf = 134219778;
              selfCopy23 = self;
              v302 = 1024;
              *v303 = v264;
              *&v303[4] = 2114;
              *&v303[6] = specifier2;
              *&v303[14] = 2114;
              *&v303[16] = nextObject2;
              *&v303[24] = 2114;
              *&v303[26] = bls_shortLoggingString7;
              *&v303[34] = 2114;
              *&v303[36] = bls_shortLoggingString8;
              *&v303[44] = 2048;
              *&v303[46] = duration;
              *&v303[54] = 2114;
              *&v303[56] = identifier4;
              _os_log_debug_impl(&dword_21FD11000, v100, OS_LOG_TYPE_DEBUG, "%p updates(%d) (will coaelsce) specifier:%{public}@ nextSpecifier:%{public}@ valid:(%{public}@->%{public}@) gapDuration:%1.3lg env:%{public}@", buf, 0x4Eu);

              distantPast = v263;
              v62 = v270;
            }

            v101 = nextObject2;
LABEL_93:
            LOBYTE(v110) = 1;
            goto LABEL_94;
          }

          if (!v268)
          {
            break;
          }

          v102 = specifier2;
          if (v102)
          {
            goto LABEL_97;
          }

LABEL_89:
          date4 = [nextObject2 date];
          v104 = [date4 bls_isOnOrAfter:distantPast andOnOrBefore:v62];

          v105 = bls_flipbook_log();
          v106 = os_log_type_enabled(v105, OS_LOG_TYPE_INFO);
          if (!v104)
          {
            if (v106)
            {
              bls_shortLoggingString9 = [distantPast bls_shortLoggingString];
              bls_shortLoggingString10 = [v270 bls_shortLoggingString];
              identifier5 = [obja identifier];
              *buf = 134219778;
              selfCopy23 = self;
              v302 = 1024;
              *v303 = v264;
              *&v303[4] = 2114;
              *&v303[6] = specifier2;
              *&v303[14] = 2114;
              *&v303[16] = nextObject2;
              *&v303[24] = 2114;
              *&v303[26] = bls_shortLoggingString9;
              *&v303[34] = 2114;
              *&v303[36] = bls_shortLoggingString10;
              v118 = bls_shortLoggingString10;
              *&v303[44] = 2048;
              *&v303[46] = duration;
              *&v303[54] = 2114;
              v119 = identifier5;
              *&v303[56] = identifier5;
              v266 = 1;
              _os_log_impl(&dword_21FD11000, v105, OS_LOG_TYPE_INFO, "%p updates(%d) (exceeded budget - will not coaelsce) specifier:%{public}@ nextSpecifier:%{public}@ valid:(%{public}@->%{public}@) gapDuration:%1.3lg env:%{public}@", buf, 0x4Eu);

              v62 = v270;
              distantPast = v263;
            }

            else
            {
              v266 = 1;
              v62 = v270;
            }

            goto LABEL_103;
          }

          if (v106)
          {
            bls_shortLoggingString11 = [distantPast bls_shortLoggingString];
            bls_shortLoggingString12 = [v270 bls_shortLoggingString];
            identifier6 = [obja identifier];
            *buf = 134219778;
            selfCopy23 = self;
            v302 = 1024;
            *v303 = v264;
            *&v303[4] = 2114;
            *&v303[6] = specifier2;
            *&v303[14] = 2114;
            *&v303[16] = nextObject2;
            *&v303[24] = 2114;
            *&v303[26] = bls_shortLoggingString11;
            *&v303[34] = 2114;
            *&v303[36] = bls_shortLoggingString12;
            *&v303[44] = 2048;
            *&v303[46] = duration;
            *&v303[54] = 2114;
            *&v303[56] = identifier6;
            _os_log_impl(&dword_21FD11000, v105, OS_LOG_TYPE_INFO, "%p updates(%d) (exceeded budget - will coaelsce) specifier:%{public}@ nextSpecifier:%{public}@ valid:(%{public}@->%{public}@) gapDuration:%1.3lg env:%{public}@", buf, 0x4Eu);

            distantPast = v263;
          }

          v110 = nextObject2;
          date5 = [v110 date];

          v266 = 1;
          v62 = v270;
          date2 = date5;
          if (v110)
          {
            goto LABEL_93;
          }

LABEL_94:

          specifier2 = nextObject2;
          if ((v110 & 1) == 0)
          {
            v102 = nextObject2;
            goto LABEL_104;
          }
        }

        v102 = [(BLSHInactiveBudgetPolicing_Private *)self->_inactiveBudgetPolicy validateAndChargeFutureSpecifier:specifier2 nextSpecifier:nextObject2 forEnvironment:obja];

        if (!v102)
        {
          goto LABEL_89;
        }

LABEL_97:
        v115 = bls_flipbook_log();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
        {
          bls_shortLoggingString13 = [distantPast bls_shortLoggingString];
          bls_shortLoggingString14 = [v62 bls_shortLoggingString];
          identifier7 = [obja identifier];
          *buf = 134220034;
          selfCopy23 = self;
          v302 = 1024;
          *v303 = v264;
          *&v303[4] = 2114;
          *&v303[6] = v102;
          *&v303[14] = 2114;
          *&v303[16] = specifier2;
          *&v303[24] = 2114;
          *&v303[26] = nextObject2;
          *&v303[34] = 2114;
          *&v303[36] = bls_shortLoggingString13;
          *&v303[44] = 2114;
          *&v303[46] = bls_shortLoggingString14;
          v130 = bls_shortLoggingString14;
          *&v303[54] = 2048;
          *&v303[56] = duration;
          *&v303[64] = 2114;
          v131 = identifier7;
          *&v303[66] = identifier7;
          _os_log_debug_impl(&dword_21FD11000, v115, OS_LOG_TYPE_DEBUG, "%p updates(%d) (will not coaelsce) validSpecifier:%{public}@ specifier:%{public}@ nextSpecifier:%{public}@ valid:(%{public}@->%{public}@) gapDuration:%1.3lg env:%{public}@", buf, 0x58u);

          v62 = v270;
          distantPast = v263;
        }

        v105 = specifier2;
        specifier2 = v102;
LABEL_103:

LABEL_104:
        [v91 setSpecifier:nextObject2];
        v120 = bls_flipbook_log();
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
        {
          bls_shortLoggingString15 = [distantPast bls_shortLoggingString];
          bls_shortLoggingString16 = [v62 bls_shortLoggingString];
          identifier8 = [obja identifier];
          *buf = 134219778;
          selfCopy23 = self;
          v302 = 1024;
          *v303 = v264;
          *&v303[4] = 2114;
          *&v303[6] = v102;
          *&v303[14] = 2114;
          *&v303[16] = nextObject2;
          *&v303[24] = 2114;
          *&v303[26] = bls_shortLoggingString15;
          *&v303[34] = 2114;
          *&v303[36] = bls_shortLoggingString16;
          *&v303[44] = 2048;
          *&v303[46] = duration;
          *&v303[54] = 2114;
          *&v303[56] = identifier8;
          _os_log_debug_impl(&dword_21FD11000, v120, OS_LOG_TYPE_DEBUG, "%p updates(%d) (set enumerater) validSpecifier:%{public}@ nextSpecifier:%{public}@ valid:(%{public}@->%{public}@) gapDuration:%1.3lg env:%{public}@", buf, 0x4Eu);

          v62 = v270;
        }

        if (v102)
        {
          date6 = [v102 date];
          date7 = [v102 date];
          v123 = [BLSHEnvironmentDateSpecifier specifierWithPresentationDate:date7 fidelity:[v102 fidelity] environment:obja userObject:0];

          [(NSMapTable *)table setObject:v123 forKey:obja];
          v124 = [date6 laterDate:distantPast2];

          v62 = v270;
          v256 = 1;
          distantPast2 = v124;
          distantFuture5 = v260;
          v86 = v258;
LABEL_108:
          [date2 earlierDate:distantFuture5];
          distantFuture5 = nextObject2 = distantFuture5;
        }

        else
        {
          distantFuture5 = v260;
          v86 = v258;
        }

        specifier2 = v102;
        v89 = v261;
        v88 = v262;
LABEL_110:

        ++v90;
      }

      while (v90 != v88);
      v132 = [v86 countByEnumeratingWithState:&v282 objects:v309 count:16];
      v88 = v132;
    }

    while (v132);

    if ((v256 & 1) == 0)
    {
      v58 = v243;
      presentationDate = v244;
      v137 = distantPast2;
      v136 = v266;
LABEL_124:
      distantPast2 = v137;
      if (v268)
      {
        v138 = bls_flipbook_log();
        if (!os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_126;
        }

        bls_shortLoggingString17 = [distantPast bls_shortLoggingString];
        bls_shortLoggingString18 = [v62 bls_shortLoggingString];
        *buf = 134218754;
        selfCopy23 = self;
        v302 = 1024;
        *v303 = v264;
        *&v303[4] = 2114;
        *&v303[6] = bls_shortLoggingString17;
        *&v303[14] = 2114;
        *&v303[16] = bls_shortLoggingString18;
        v142 = v138;
        v143 = "%p updates(%d) (skip invalid - continuing) valid:(%{public}@->%{public}@)";
      }

      else
      {
        if ((v249 & 1) == 0)
        {
          v144 = v58;

          v138 = bls_flipbook_log();
          if (os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
          {
            bls_shortLoggingString19 = [distantPast bls_shortLoggingString];
            bls_shortLoggingString20 = [v62 bls_shortLoggingString];
            *buf = 134218754;
            selfCopy23 = self;
            v302 = 1024;
            *v303 = v264;
            *&v303[4] = 2114;
            *&v303[6] = bls_shortLoggingString19;
            *&v303[14] = 2114;
            *&v303[16] = bls_shortLoggingString20;
            _os_log_debug_impl(&dword_21FD11000, v138, OS_LOG_TYPE_DEBUG, "%p updates(%d) (initial invalid - continuing) valid:(%{public}@->%{public}@)", buf, 0x26u);
            goto LABEL_140;
          }

LABEL_141:
          v135 = 0;
          v242 = v144;
          goto LABEL_150;
        }

        v138 = bls_flipbook_log();
        v139 = os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG);
        if ((v136 & 1) == 0)
        {
          if (v139)
          {
            bls_shortLoggingString21 = [distantPast bls_shortLoggingString];
            bls_shortLoggingString22 = [v62 bls_shortLoggingString];
            bls_shortLoggingString23 = [distantFuture5 bls_shortLoggingString];
            *buf = 134219010;
            selfCopy23 = self;
            v302 = 1024;
            *v303 = v264;
            *&v303[4] = 2114;
            *&v303[6] = bls_shortLoggingString21;
            *&v303[14] = 2114;
            *&v303[16] = bls_shortLoggingString22;
            *&v303[24] = 2114;
            *&v303[26] = bls_shortLoggingString23;
            _os_log_debug_impl(&dword_21FD11000, v138, OS_LOG_TYPE_DEBUG, "%p updates(%d) (invalid - stopping) valid:(%{public}@->%{public}@) earliestDate:%{public}@", buf, 0x30u);

            v62 = v270;
          }

          distantFuture5 = distantFuture5;
          v135 = 1;
          v138 = v240;
          v240 = distantFuture5;
          goto LABEL_150;
        }

        if (!v139)
        {
LABEL_126:
          v135 = 0;
          goto LABEL_150;
        }

        bls_shortLoggingString17 = [distantPast bls_shortLoggingString];
        bls_shortLoggingString18 = [v62 bls_shortLoggingString];
        *buf = 134218754;
        selfCopy23 = self;
        v302 = 1024;
        *v303 = v264;
        *&v303[4] = 2114;
        *&v303[6] = bls_shortLoggingString17;
        *&v303[14] = 2114;
        *&v303[16] = bls_shortLoggingString18;
        v142 = v138;
        v143 = "%p updates(%d) (invalid, exceeded budget - continuing) valid:(%{public}@->%{public}@)";
      }

      _os_log_debug_impl(&dword_21FD11000, v142, OS_LOG_TYPE_DEBUG, v143, buf, 0x26u);

      goto LABEL_126;
    }

    v58 = v243;
    presentationDate = v244;
    if (v264 < updates)
    {
      if (v242)
      {
        [distantPast2 timeIntervalSinceDate:?];
        if (v133 > duration)
        {
          v134 = bls_flipbook_log();
          if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
          {
            bls_shortLoggingString24 = [v242 bls_shortLoggingString];
            bls_shortLoggingString25 = [distantFuture5 bls_shortLoggingString];
            [distantPast2 bls_shortLoggingString];
            v176 = v175 = distantFuture5;
            bls_shortLoggingString26 = [distantPast bls_shortLoggingString];
            bls_shortLoggingString27 = [v270 bls_shortLoggingString];
            bls_shortLoggingString28 = [v243 bls_shortLoggingString];
            *buf = 134220290;
            selfCopy23 = self;
            v302 = 1024;
            *v303 = v264;
            *&v303[4] = 2114;
            *&v303[6] = bls_shortLoggingString24;
            *&v303[14] = 2112;
            *&v303[16] = bls_shortLoggingString25;
            *&v303[24] = 2112;
            *&v303[26] = v176;
            *&v303[34] = 2114;
            *&v303[36] = bls_shortLoggingString26;
            *&v303[44] = 2114;
            *&v303[46] = bls_shortLoggingString27;
            *&v303[54] = 1024;
            *&v303[56] = v245 & 1;
            *&v303[60] = 2114;
            *&v303[62] = bls_shortLoggingString28;
            *&v303[70] = 2048;
            *&v303[72] = duration;
            _os_log_debug_impl(&dword_21FD11000, v134, OS_LOG_TYPE_DEBUG, "%p updates(%d) (gap reached - stopping) previous:%{public}@ earliest:%@ latest:%@ valid:(%{public}@->%{public}@) (initial:%{BOOL}u) startingAtDate:%{public}@ gapDuration:%1.3lg", buf, 0x5Eu);

            v58 = v243;
            presentationDate = v244;

            distantFuture5 = v175;
          }

          distantFuture5 = distantFuture5;
          if (v268)
          {
            [BLSHDateSpecifierModel updatesAfterSpecifier:a2 coalesceFirstUpdateToNowDate:? plusRenderEarlyEpsilon:? untilGapOverDuration:? coaelscingEpsilon:? maximumUpdates:? lastValidDate:? forPresentation:? environmentFilter:?];
          }

          v135 = 1;
          v240 = distantFuture5;
          v62 = v270;
          goto LABEL_151;
        }
      }

      if (v268)
      {
        v144 = v243;

        v138 = bls_flipbook_log();
        if (os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
        {
          bls_shortLoggingString19 = [distantPast bls_shortLoggingString];
          bls_shortLoggingString20 = [v62 bls_shortLoggingString];
          [v144 bls_shortLoggingString];
          v149 = v148 = distantFuture5;
          *buf = 134219522;
          selfCopy23 = self;
          v302 = 1024;
          *v303 = v264;
          *&v303[4] = 2114;
          *&v303[6] = bls_shortLoggingString19;
          *&v303[14] = 2114;
          *&v303[16] = bls_shortLoggingString20;
          *&v303[24] = 1024;
          *&v303[26] = v245 & 1;
          presentationDate = v244;
          *&v303[30] = 2114;
          *&v303[32] = v149;
          *&v303[40] = 2048;
          *&v303[42] = duration;
          _os_log_debug_impl(&dword_21FD11000, v138, OS_LOG_TYPE_DEBUG, "%p updates(%d) (skipping) previous=start valid:(%{public}@->%{public}@) (initial:%{BOOL}u) startingAtDate:%{public}@ gapDuration:%1.3lg", buf, 0x40u);

          distantFuture5 = v148;
LABEL_140:

          v62 = v270;
        }

        goto LABEL_141;
      }

      v152 = distantFuture5;
      v153 = distantPast2;

      array2 = v238;
      if (!v238)
      {
        array2 = [MEMORY[0x277CBEB18] array];
      }

      v155 = NSAllMapTableValues(table);
      v280[0] = MEMORY[0x277D85DD0];
      v280[1] = 3221225472;
      v280[2] = __202__BLSHDateSpecifierModel_updatesAfterSpecifier_coalesceFirstUpdateToNowDate_plusRenderEarlyEpsilon_untilGapOverDuration_coaelscingEpsilon_maximumUpdates_lastValidDate_forPresentation_environmentFilter___block_invoke_27;
      v280[3] = &unk_27841F040;
      v281 = v234;
      v156 = [v155 sortedArrayUsingComparator:v280];

      v157 = [BLSHPresentationDateSpecifier specifierWithPresentationDate:v153 specifiers:v156];
      v238 = array2;
      [array2 addObject:v157];
      ++v264;
      v158 = [v237 earlierDate:v153];

      v159 = bls_flipbook_log();
      if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
      {
        bls_shortLoggingString29 = [distantPast bls_shortLoggingString];
        bls_shortLoggingString30 = [v270 bls_shortLoggingString];
        bls_shortLoggingString31 = [v243 bls_shortLoggingString];
        *buf = 134219778;
        selfCopy23 = self;
        v302 = 1024;
        *v303 = v264;
        *&v303[4] = 2114;
        *&v303[6] = v157;
        *&v303[14] = 2114;
        *&v303[16] = bls_shortLoggingString29;
        *&v303[24] = 2114;
        *&v303[26] = bls_shortLoggingString30;
        *&v303[34] = 1024;
        *&v303[36] = v245 & 1;
        *&v303[40] = 2114;
        *&v303[42] = bls_shortLoggingString31;
        *&v303[50] = 2048;
        *&v303[52] = duration;
        _os_log_debug_impl(&dword_21FD11000, v159, OS_LOG_TYPE_DEBUG, "%p updates(%d) (add) update:%{public}@ valid:(%{public}@->%{public}@) (initial:%{BOOL}u) startingAtDate:%{public}@ gapDuration:%1.3lg", buf, 0x4Au);

        v58 = v243;
        presentationDate = v244;
      }

      v135 = 0;
      v138 = v281;
      distantPast2 = v153;
      v242 = v153;
      v237 = v158;
      v62 = v270;
      distantFuture5 = v152;
LABEL_150:

      goto LABEL_151;
    }

    v147 = bls_flipbook_log();
    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
    {
      bls_shortLoggingString32 = [v242 bls_shortLoggingString];
      bls_shortLoggingString33 = [distantFuture5 bls_shortLoggingString];
      [distantPast2 bls_shortLoggingString];
      v163 = v162 = distantFuture5;
      bls_shortLoggingString34 = [distantPast bls_shortLoggingString];
      bls_shortLoggingString35 = [v62 bls_shortLoggingString];
      bls_shortLoggingString36 = [v243 bls_shortLoggingString];
      *buf = 134220546;
      selfCopy23 = self;
      v302 = 1024;
      *v303 = v264;
      *&v303[4] = 1024;
      *&v303[6] = updates;
      *&v303[10] = 2114;
      *&v303[12] = bls_shortLoggingString32;
      *&v303[20] = 2112;
      *&v303[22] = bls_shortLoggingString33;
      *&v303[30] = 2112;
      *&v303[32] = v163;
      *&v303[40] = 2114;
      *&v303[42] = bls_shortLoggingString34;
      *&v303[50] = 2114;
      *&v303[52] = bls_shortLoggingString35;
      *&v303[60] = 1024;
      *&v303[62] = v245 & 1;
      *&v303[66] = 2114;
      *&v303[68] = bls_shortLoggingString36;
      *&v303[76] = 2048;
      *&v303[78] = duration;
      _os_log_debug_impl(&dword_21FD11000, v147, OS_LOG_TYPE_DEBUG, "%p updates(%d) (%d limit reached - stopping) previous:%{public}@ earliest:%@ latest:%@ valid:(%{public}@->%{public}@) (initial:%{BOOL}u) startingAtDate:%{public}@ gapDuration:%1.3lg", buf, 0x64u);

      v58 = v243;
      v62 = v270;

      presentationDate = v244;
      distantFuture5 = v162;
    }

    distantFuture5 = distantFuture5;
    if (v268)
    {
      [BLSHDateSpecifierModel updatesAfterSpecifier:a2 coalesceFirstUpdateToNowDate:? plusRenderEarlyEpsilon:? untilGapOverDuration:? coaelscingEpsilon:? maximumUpdates:? lastValidDate:? forPresentation:? environmentFilter:?];
    }

    v135 = 1;
    v240 = distantFuture5;
LABEL_151:

    v59 = v251;
  }

  while ((v135 & 1) == 0);
  v180 = v240;
  if (!v240)
  {
    if (validDateCopy)
    {
      distantFuture7 = validDateCopy;
    }

    else
    {
      distantFuture7 = [MEMORY[0x277CBEAA8] distantFuture];
    }

    v278 = 0u;
    v279 = 0u;
    v276 = 0u;
    v277 = 0u;
    v182 = array;
    v183 = [v182 countByEnumeratingWithState:&v276 objects:v308 count:16];
    if (v183)
    {
      v184 = v183;
      v185 = *v277;
      objb = v182;
      do
      {
        v186 = 0;
        v187 = distantFuture7;
        do
        {
          if (*v277 != v185)
          {
            objc_enumerationMutation(objb);
          }

          v188 = *(*(&v276 + 1) + 8 * v186);
          specifier3 = [v188 specifier];
          date8 = [specifier3 date];
          sourceModel = [v188 sourceModel];
          dateInterval3 = [sourceModel dateInterval];
          endDate2 = [dateInterval3 endDate];
          v194 = [date8 earlierDate:endDate2];

          distantFuture7 = [v187 earlierDate:v194];

          ++v186;
          v187 = distantFuture7;
        }

        while (v184 != v186);
        v182 = objb;
        v184 = [objb countByEnumeratingWithState:&v276 objects:v308 count:16];
      }

      while (v184);
    }

    v195 = bls_flipbook_log();
    v58 = v243;
    if (os_log_type_enabled(v195, OS_LOG_TYPE_DEBUG))
    {
      v228 = [v182 count];
      bls_shortLoggingString37 = [distantFuture7 bls_shortLoggingString];
      bls_shortLoggingString38 = [v243 bls_shortLoggingString];
      *buf = 134219010;
      selfCopy23 = self;
      v302 = 1024;
      *v303 = v264;
      *&v303[4] = 1024;
      *&v303[6] = v228;
      *&v303[10] = 2114;
      *&v303[12] = bls_shortLoggingString37;
      *&v303[20] = 2114;
      *&v303[22] = bls_shortLoggingString38;
      _os_log_debug_impl(&dword_21FD11000, v195, OS_LOG_TYPE_DEBUG, "%p updates(%d) (no nextStart) - will use earliest of %u environment model end next:%{public}@ startingAtDate:%{public}@", buf, 0x2Cu);
    }

    v180 = distantFuture7;
    presentationDate = v244;
  }

  v196 = v180;
  [v180 timeIntervalSinceDate:v58];
  if (v197 < coaelscingEpsilon)
  {
    v198 = bls_flipbook_log();
    if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
    {
      bls_shortLoggingString39 = [v196 bls_shortLoggingString];
      bls_shortLoggingString40 = [v58 bls_shortLoggingString];
      *buf = 134219010;
      selfCopy23 = self;
      v302 = 1024;
      *v303 = v264;
      *&v303[4] = 2048;
      *&v303[6] = coaelscingEpsilon;
      *&v303[14] = 2114;
      *&v303[16] = bls_shortLoggingString39;
      *&v303[24] = 2114;
      *&v303[26] = bls_shortLoggingString40;
      _os_log_error_impl(&dword_21FD11000, v198, OS_LOG_TYPE_ERROR, "%p updates(%d) startDate->lastValidDate interval too small (<%.lfs) startDate:%{public}@ lastValidDate:%{public}@", buf, 0x30u);
    }

    v199 = [v58 dateByAddingTimeInterval:coaelscingEpsilon];

    v196 = v199;
  }

  v241 = v196;
  v200 = [[BLSHPresentationUpdates alloc] initWithStartDate:v237 updates:v238 nextUpdatesStart:v196];
  if (v264 && (bls_flipbook_log(), v201 = objc_claimAutoreleasedReturnValue(), v202 = os_log_type_enabled(v201, OS_LOG_TYPE_DEBUG), v201, !v202))
  {
    v203 = bls_flipbook_log();
    if (os_log_type_enabled(v203, OS_LOG_TYPE_INFO))
    {
      objc = v200;
      bls_shortLoggingString41 = [v235 bls_shortLoggingString];
      bls_shortLoggingString42 = [validDateCopy bls_shortLoggingString];
      bls_shortLoggingString43 = [v243 bls_shortLoggingString];
      v215 = v236;
      if (v236)
      {
        bls_shortLoggingString44 = @"<skip>";
        v217 = presentationCopy;
      }

      else
      {
        v217 = presentationCopy;
        bls_shortLoggingString44 = [presentationCopy bls_shortLoggingString];
        v215 = 0;
      }

      *buf = 134221058;
      selfCopy23 = self;
      v302 = 1024;
      *v303 = v264;
      *&v303[4] = 2114;
      *&v303[6] = v215;
      *&v303[14] = 2114;
      *&v303[16] = bls_shortLoggingString41;
      *&v303[24] = 2048;
      *&v303[26] = duration;
      *&v303[34] = 2048;
      *&v303[36] = coaelscingEpsilon;
      *&v303[44] = 2048;
      *&v303[46] = updates;
      *&v303[54] = 2114;
      *&v303[56] = bls_shortLoggingString42;
      *&v303[64] = 2048;
      *&v303[66] = v217;
      *&v303[74] = 1024;
      *&v303[76] = filterCopy != 0;
      *&v303[80] = 2114;
      *&v303[82] = objc;
      v304 = 2114;
      v305 = bls_shortLoggingString43;
      v306 = 2114;
      v307 = bls_shortLoggingString44;
      v222 = v215;
      _os_log_impl(&dword_21FD11000, v203, OS_LOG_TYPE_INFO, "%p updates(%d) (complete) after:%{public}@ coalesceTo:%{public}@ gapDuration:%1.3lg epsilon:%.3lf max:%ld upTo:%{public}@ pres:%p filtered:%{BOOL}u result:%{public}@ startingAtDate:%{public}@ pres:%{public}@", buf, 0x7Cu);
      if (!v222)
      {
      }

      v211 = v235;
      v209 = v236;
      v207 = filterCopy;
      v205 = validDateCopy;
      v210 = presentationCopy;
      v58 = v243;
      presentationDate = v244;
      v200 = objc;
    }

    else
    {
      v211 = v235;
      v209 = v236;
      v207 = filterCopy;
      v205 = validDateCopy;
      v210 = presentationCopy;
      v58 = v243;
    }
  }

  else
  {
    v203 = bls_flipbook_log();
    if (os_log_type_enabled(v203, OS_LOG_TYPE_INFO))
    {
      bls_shortLoggingString45 = [v235 bls_shortLoggingString];
      v205 = validDateCopy;
      [validDateCopy bls_shortLoggingString];
      v206 = objd = v200;
      v207 = filterCopy;
      bls_shortLoggingString46 = [v58 bls_shortLoggingString];
      *buf = 134220802;
      selfCopy23 = self;
      v302 = 1024;
      *v303 = v264;
      *&v303[4] = 2048;
      v209 = v236;
      *&v303[6] = v236;
      *&v303[14] = 2114;
      *&v303[16] = bls_shortLoggingString45;
      *&v303[24] = 2048;
      *&v303[26] = duration;
      *&v303[34] = 2048;
      *&v303[36] = coaelscingEpsilon;
      *&v303[44] = 2048;
      *&v303[46] = updates;
      *&v303[54] = 2114;
      *&v303[56] = v206;
      *&v303[64] = 2048;
      v210 = presentationCopy;
      *&v303[66] = presentationCopy;
      *&v303[74] = 1024;
      *&v303[76] = filterCopy != 0;
      presentationDate = v244;
      *&v303[80] = 2114;
      *&v303[82] = objd;
      v304 = 2114;
      v305 = bls_shortLoggingString46;
      _os_log_impl(&dword_21FD11000, v203, OS_LOG_TYPE_INFO, "%p updates(%d) (complete) after:%p coalesceTo:%{public}@ gapDuration:%1.3lg epsilon:%.3lf max:%ld upTo:%{public}@ pres:%p filtered:%{BOOL}u result:%{public}@ startingAtDate:%{public}@", buf, 0x72u);

      v200 = objd;
      v211 = v235;
    }

    else
    {
      v211 = v235;
      v209 = v236;
      v207 = filterCopy;
      v205 = validDateCopy;
      v210 = presentationCopy;
    }
  }

  v223 = v200;
  v224 = *MEMORY[0x277D85DE8];
  return v200;
}

uint64_t __202__BLSHDateSpecifierModel_updatesAfterSpecifier_coalesceFirstUpdateToNowDate_plusRenderEarlyEpsilon_untilGapOverDuration_coaelscingEpsilon_maximumUpdates_lastValidDate_forPresentation_environmentFilter___block_invoke_21(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 environmentIdentifier];
  v4 = [v2 valueForKey:v3];

  if (v4)
  {
    v5 = [v4 unsignedIntegerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __202__BLSHDateSpecifierModel_updatesAfterSpecifier_coalesceFirstUpdateToNowDate_plusRenderEarlyEpsilon_untilGapOverDuration_coaelscingEpsilon_maximumUpdates_lastValidDate_forPresentation_environmentFilter___block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = (*(*(a1 + 32) + 16))();
  v8 = (*(*(a1 + 32) + 16))();
  if (v7 == v8)
  {
    v9 = [v5 environmentIdentifier];
    v10 = [v6 environmentIdentifier];
    v11 = [v9 compare:v10];
  }

  else if (v7 > v8)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)purgeSpecifiersBefore:(id)before
{
  v33 = *MEMORY[0x277D85DE8];
  beforeCopy = before;
  os_unfair_lock_lock(&self->_lock);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  objectEnumerator = [(NSMapTable *)self->_environmentModels objectEnumerator];
  v6 = [objectEnumerator countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v28;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        dateInterval = [v11 dateInterval];
        endDate = [dateInterval endDate];
        [beforeCopy timeIntervalSinceDate:endDate];
        v15 = v14;

        if (v15 <= 600.0)
        {
          [v11 purgeSpecifiersBefore:beforeCopy];
        }

        else
        {
          if (!v8)
          {
            v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMapTable count](self->_environmentModels, "count")}];
          }

          environment = [v11 environment];
          [v8 addObject:environment];
        }
      }

      v7 = [objectEnumerator countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = v8;
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(BLSHDateSpecifierModel *)self removeEnvironmentModelForKey:@"purge stale" reason:?];
      }

      v19 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v19);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEmpty
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMapTable *)self->_environmentModels count]== 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BLSHEnvironmentDatesModel)environmentModelForKey:(uint64_t)key
{
  v3 = a2;
  if (key)
  {
    os_unfair_lock_lock((key + 32));
    v4 = [*(key + 16) objectForKey:v3];
    if (v4)
    {
      v5 = v4;
      os_unfair_lock_unlock((key + 32));
    }

    else
    {
      v5 = [[BLSHEnvironmentDatesModel alloc] initWithEnvironment:v3];
      [*(key + 16) setObject:v5 forKey:v3];
      os_unfair_lock_unlock((key + 32));
      OUTLINED_FUNCTION_12();
      v7[1] = 3221225472;
      v7[2] = __49__BLSHDateSpecifierModel_environmentModelForKey___block_invoke;
      v7[3] = &unk_27841F068;
      v7[4] = key;
      v8 = v3;
      [(BLSHDateSpecifierModel *)key notifyObserversWithBlock:v7];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeEnvironmentModelForKey:(void *)key reason:
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  keyCopy = key;
  if (self)
  {
    os_unfair_lock_lock((self + 32));
    v7 = [*(self + 16) objectForKey:v5];
    if (v7)
    {
      v9 = bls_flipbook_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        identifier = [v5 identifier];
        v11 = [v7 count];
        dateInterval = [v7 dateInterval];
        bls_shortLoggingString = [dateInterval bls_shortLoggingString];
        *buf = 134219010;
        selfCopy = self;
        v18 = 2114;
        v19 = identifier;
        v20 = 1024;
        v21 = v11;
        v22 = 2114;
        v23 = bls_shortLoggingString;
        v24 = 2114;
        v25 = keyCopy;
        _os_log_debug_impl(&dword_21FD11000, v9, OS_LOG_TYPE_DEBUG, "%p:%{public}@ will clear %d specifiers from interval:%{public}@ (%{public}@)", buf, 0x30u);
      }

      [*(self + 16) removeObjectForKey:v5];
      os_unfair_lock_unlock((self + 32));
      OUTLINED_FUNCTION_12();
      v14[1] = 3221225472;
      v14[2] = __62__BLSHDateSpecifierModel_removeEnvironmentModelForKey_reason___block_invoke;
      v14[3] = &unk_27841F068;
      v14[4] = self;
      v15 = v5;
      [(BLSHDateSpecifierModel *)self notifyObserversWithBlock:v14];
    }

    else
    {
      os_unfair_lock_unlock((self + 32));
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerSpecifiers:(id)specifiers forDateInterval:(id)interval environment:(id)environment
{
  intervalCopy = interval;
  specifiersCopy = specifiers;
  v10 = [(BLSHDateSpecifierModel *)self environmentModelForKey:environment];
  [v10 registerSpecifiers:specifiersCopy forDateInterval:intervalCopy];
}

- (void)notifyObserversWithBlock:(uint64_t)block
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (block)
  {
    os_unfair_lock_lock((block + 32));
    allObjects = [*(block + 24) allObjects];
    os_unfair_lock_unlock((block + 32));
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = allObjects;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v3[2](v3, *(*(&v11 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updatesAfterSpecifier:(const char *)a1 coalesceFirstUpdateToNowDate:plusRenderEarlyEpsilon:untilGapOverDuration:coaelscingEpsilon:maximumUpdates:lastValidDate:forPresentation:environmentFilter:.cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"!isSkipUpdate", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatesAfterSpecifier:(const char *)a1 coalesceFirstUpdateToNowDate:plusRenderEarlyEpsilon:untilGapOverDuration:coaelscingEpsilon:maximumUpdates:lastValidDate:forPresentation:environmentFilter:.cold.2(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"!isSkipUpdate", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatesAfterSpecifier:(const char *)a1 coalesceFirstUpdateToNowDate:plusRenderEarlyEpsilon:untilGapOverDuration:coaelscingEpsilon:maximumUpdates:lastValidDate:forPresentation:environmentFilter:.cold.3(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"presentation != nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatesAfterSpecifier:(const char *)a1 coalesceFirstUpdateToNowDate:(uint64_t)a2 plusRenderEarlyEpsilon:untilGapOverDuration:coaelscingEpsilon:maximumUpdates:lastValidDate:forPresentation:environmentFilter:.cold.4(const char *a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"distant future should not be now"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a1);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    v13 = a2;
    v14 = 2114;
    v15 = @"BLSHDateSpecifierModel.m";
    v16 = 1024;
    v17 = 130;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&dword_21FD11000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)updatesAfterSpecifier:(const char *)a1 coalesceFirstUpdateToNowDate:plusRenderEarlyEpsilon:untilGapOverDuration:coaelscingEpsilon:maximumUpdates:lastValidDate:forPresentation:environmentFilter:.cold.5(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_1(&dword_21FD11000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"nowDate != nil", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end