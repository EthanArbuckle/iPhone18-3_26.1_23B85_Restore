@interface BLSHDateSpecifierModel
- (BLSHDateSpecifierModel)initWithInactiveBudgetPolicy:(id)a3;
- (BLSHEnvironmentDatesModel)environmentModelForKey:(uint64_t)a1;
- (BOOL)isEmpty;
- (BOOL)missingAnySpecifiersInDateInterval:(id)a3 forPresentation:(id)a4;
- (id)missingIntervalsForMinimumInterval:(id)a3 requestInterval:(id)a4 ofPresentation:(id)a5;
- (id)updatesAfterSpecifier:(id)a3 coalesceFirstUpdateToNowDate:(id)a4 plusRenderEarlyEpsilon:(double)a5 untilGapOverDuration:(double)a6 coaelscingEpsilon:(double)a7 maximumUpdates:(int64_t)a8 lastValidDate:(id)a9 forPresentation:(id)a10 environmentFilter:(id)a11;
- (void)addObserver:(id)a3;
- (void)notifyObserversWithBlock:(uint64_t)a1;
- (void)purgeSpecifiersBefore:(id)a3;
- (void)registerSpecifiers:(id)a3 forDateInterval:(id)a4 environment:(id)a5;
- (void)removeEnvironmentModelForKey:(void *)a3 reason:;
- (void)removeObserver:(id)a3;
@end

@implementation BLSHDateSpecifierModel

- (BLSHDateSpecifierModel)initWithInactiveBudgetPolicy:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = BLSHDateSpecifierModel;
  v6 = [(BLSHDateSpecifierModel *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_inactiveBudgetPolicy, a3);
    v8 = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:512 capacity:4];
    environmentModels = v7->_environmentModels;
    v7->_environmentModels = v8;

    v10 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:517 capacity:2];
    observers = v7->_observers;
    v7->_observers = v10;
  }

  return v7;
}

- (BOOL)missingAnySpecifiersInDateInterval:(id)a3 forPresentation:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [a4 presentationEntries];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v20 + 1) + 8 * v11) environment];
        if ([v12 isAlwaysOnEnabledForEnvironment])
        {
          v13 = [(BLSHDateSpecifierModel *)self environmentModelForKey:v12];
          v14 = [v13 dateInterval];
          v15 = [v6 intersectionWithDateInterval:v14];

          LOBYTE(v14) = [v15 isEqual:v6];
          if ((v14 & 1) == 0)
          {

            v17 = 1;
            goto LABEL_13;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v16 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v9 = v16;
    }

    while (v16);
  }

  v17 = 0;
LABEL_13:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (id)missingIntervalsForMinimumInterval:(id)a3 requestInterval:(id)a4 ofPresentation:(id)a5
{
  v48 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v33 = a4;
  v9 = a5;
  v10 = [v9 expirationDate];
  if (v10)
  {
    v11 = [v8 endDate];
    v12 = [v11 compare:v10];

    if (v12 == 1)
    {
      v13 = bls_flipbook_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v29 = [v8 bls_shortLoggingString];
        v30 = [v10 bls_shortLoggingString];
        *buf = 134218754;
        v41 = self;
        v42 = 2114;
        v43 = v29;
        v44 = 2114;
        v45 = v30;
        v46 = 2114;
        v47 = v9;
        _os_log_fault_impl(&dword_21FD11000, v13, OS_LOG_TYPE_FAULT, "%p minimumInterval:%{public}@ extends past expirationDate:%{public}@ for presentation:%{public}@", buf, 0x2Au);
      }
    }
  }

  v32 = v9;
  v14 = [v9 presentationEntries];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
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
        objc_enumerationMutation(v14);
      }

      v19 = [*(*(&v35 + 1) + 8 * v18) environment];
      if ([v19 isAlwaysOnEnabledForEnvironment])
      {
        v20 = [(BLSHDateSpecifierModel *)self environmentModelForKey:v19];
        v21 = [v20 dateInterval];
        v22 = [v8 intersectionWithDateInterval:v21];

        if (([v22 isEqual:v8] & 1) == 0)
        {
          v23 = [v20 missingIntervalForDateInterval:v33];
          if (v23)
          {
            v24 = v34;
            if (!v34)
            {
              v24 = [MEMORY[0x277CBEB18] array];
            }

            v34 = v24;
            [v24 addObject:v23];
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

        v22 = [v19 identifier];
        *buf = 134218242;
        v41 = self;
        v42 = 2114;
        v43 = v22;
        _os_log_debug_impl(&dword_21FD11000, v20, OS_LOG_TYPE_DEBUG, "%p missingIntervals skipping (alwaysOnDisabled) env:%{public}@", buf, 0x16u);
      }

LABEL_13:
      ++v18;
    }

    while (v16 != v18);
    v25 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
    v16 = v25;
  }

  while (v25);
LABEL_26:
  v26 = [v34 copy];

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)updatesAfterSpecifier:(id)a3 coalesceFirstUpdateToNowDate:(id)a4 plusRenderEarlyEpsilon:(double)a5 untilGapOverDuration:(double)a6 coaelscingEpsilon:(double)a7 maximumUpdates:(int64_t)a8 lastValidDate:(id)a9 forPresentation:(id)a10 environmentFilter:(id)a11
{
  v313 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a4;
  v247 = a9;
  v253 = a10;
  v246 = a11;
  v236 = v18;
  if (a5 > a7 || v18 == 0)
  {
    v21 = a5;
  }

  else
  {
    v21 = a7;
  }

  v235 = [v19 dateByAddingTimeInterval:v21];
  v22 = bls_flipbook_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v218 = [v235 bls_shortLoggingString];
    [v247 bls_shortLoggingString];
    v220 = v219 = v19;
    v221 = [v253 bls_shortLoggingString];
    *buf = 134220034;
    v301 = self;
    v302 = 2114;
    *v303 = v236;
    *&v303[8] = 2114;
    *&v303[10] = v218;
    *&v303[18] = 2048;
    *&v303[20] = a6;
    *&v303[28] = 2048;
    *&v303[30] = a7;
    *&v303[38] = 2048;
    *&v303[40] = a8;
    *&v303[48] = 2114;
    *&v303[50] = v220;
    *&v303[58] = 2114;
    *&v303[60] = v221;
    *&v303[68] = 1024;
    *&v303[70] = v246 != 0;
    _os_log_debug_impl(&dword_21FD11000, v22, OS_LOG_TYPE_DEBUG, "%p updates (start) after:%{public}@ coalesceTo:%{public}@ gapDuration:%1.3lg epsilon:%.3lf max:%ld upTo:%{public}@ pres:%{public}@ filtered:%{BOOL}u", buf, 0x58u);

    v19 = v219;
  }

  if (!v19)
  {
    [BLSHDateSpecifierModel updatesAfterSpecifier:a2 coalesceFirstUpdateToNowDate:? plusRenderEarlyEpsilon:? untilGapOverDuration:? coaelscingEpsilon:? maximumUpdates:? lastValidDate:? forPresentation:? environmentFilter:?];
  }

  v23 = [MEMORY[0x277CBEAA8] distantFuture];
  v24 = [v23 isEqualToDate:v19];

  if (v24)
  {
    [BLSHDateSpecifierModel updatesAfterSpecifier:a2 coalesceFirstUpdateToNowDate:self plusRenderEarlyEpsilon:? untilGapOverDuration:? coaelscingEpsilon:? maximumUpdates:? lastValidDate:? forPresentation:? environmentFilter:?];
  }

  if (!v253)
  {
    [BLSHDateSpecifierModel updatesAfterSpecifier:a2 coalesceFirstUpdateToNowDate:? plusRenderEarlyEpsilon:? untilGapOverDuration:? coaelscingEpsilon:? maximumUpdates:? lastValidDate:? forPresentation:? environmentFilter:?];
  }

  v233 = v19;
  v252 = [MEMORY[0x277CBEB18] array];
  v267 = [MEMORY[0x277CBEB38] dictionary];
  v296 = 0u;
  v297 = 0u;
  v298 = 0u;
  v299 = 0u;
  v25 = [v253 presentationEntries];
  v26 = [v25 countByEnumeratingWithState:&v296 objects:v312 count:16];
  v27 = v246;
  if (v26)
  {
    v28 = v26;
    v29 = *v297;
    v30 = 0x7FFFFFFFFFFFFFFFLL;
    v265 = v25;
    do
    {
      v31 = 0;
      do
      {
        if (*v297 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v32 = [*(*(&v296 + 1) + 8 * v31) environment];
        if (v27 && (v27[2](v27, v32) & 1) == 0)
        {
          v33 = bls_flipbook_log();
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_23;
          }

          v34 = [v32 identifier];
          *buf = 134218242;
          v301 = self;
          v302 = 2114;
          *v303 = v34;
          _os_log_debug_impl(&dword_21FD11000, v33, OS_LOG_TYPE_DEBUG, "%p updates skipping env:%{public}@", buf, 0x16u);
          goto LABEL_29;
        }

        if (([v32 isAlwaysOnEnabledForEnvironment] & 1) == 0)
        {
          v33 = bls_flipbook_log();
          if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_23;
          }

          v34 = [v32 identifier];
          *buf = 134218242;
          v301 = self;
          v302 = 2114;
          *v303 = v34;
          _os_log_debug_impl(&dword_21FD11000, v33, OS_LOG_TYPE_DEBUG, "%p updates skipping (alwaysOnDisabled) env:%{public}@", buf, 0x16u);

LABEL_29:
          goto LABEL_23;
        }

        obj = (v30 - 1);
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v30 - 1];
        v36 = [v32 identifier];
        [v267 setValue:v35 forKey:v36];

        v33 = [(BLSHDateSpecifierModel *)self environmentModelForKey:v32];
        v37 = [v33 specifiers];
        v38 = bls_flipbook_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
        {
          v43 = [v32 identifier];
          v44 = [v37 bls_boundedDescriptionWithMax:6 transformer:&__block_literal_global_5];
          *buf = 134218498;
          v301 = self;
          v302 = 2114;
          *v303 = v43;
          *&v303[8] = 2114;
          *&v303[10] = v44;
          _os_log_debug_impl(&dword_21FD11000, v38, OS_LOG_TYPE_DEBUG, "%p updates env:%{public}@ specifiers:%{public}@", buf, 0x20u);
        }

        v39 = [v37 objectEnumerator];
        v40 = [v39 nextObject];
        v41 = [v33 dateInterval];
        v42 = [BLSHEnvironmentDatesEnumerator createWithInitialSpecifier:v40 enumerator:v39 dateInterval:v41 environment:v32 sourceModel:v33];
        [v252 addObject:v42];

        v27 = v246;
        v25 = v265;
        v30 = obj;
LABEL_23:

        ++v31;
      }

      while (v28 != v31);
      v45 = [v25 countByEnumeratingWithState:&v296 objects:v312 count:16];
      v28 = v45;
    }

    while (v45);
  }

  v294[0] = MEMORY[0x277D85DD0];
  v294[1] = 3221225472;
  v294[2] = __202__BLSHDateSpecifierModel_updatesAfterSpecifier_coalesceFirstUpdateToNowDate_plusRenderEarlyEpsilon_untilGapOverDuration_coaelscingEpsilon_maximumUpdates_lastValidDate_forPresentation_environmentFilter___block_invoke_21;
  v294[3] = &unk_27841F018;
  v232 = v267;
  v295 = v232;
  v234 = MEMORY[0x223D70730](v294);
  v46 = [v252 count];
  table = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:517 valueOptions:512 capacity:v46];
  v47 = v236;
  if (v236)
  {
    v292 = 0u;
    v293 = 0u;
    v290 = 0u;
    v291 = 0u;
    v48 = [v236 specifiers];
    v49 = [v48 countByEnumeratingWithState:&v290 objects:v311 count:16];
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
            objc_enumerationMutation(v48);
          }

          v53 = *(*(&v290 + 1) + 8 * i);
          v54 = [v53 environment];
          v55 = [v253 containsEnvironment:v54];

          if (v55)
          {
            v56 = [v53 environment];
            [(NSMapTable *)table setObject:v53 forKey:v56];
          }
        }

        v50 = [v48 countByEnumeratingWithState:&v290 objects:v311 count:16];
      }

      while (v50);
    }

    v47 = v236;
  }

  v57 = [v47 presentationDate];
  if (v57)
  {
    v237 = [v233 earlierDate:v57];

    v58 = [v235 laterDate:v57];
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
  v244 = v57;
  do
  {
    v60 = v59;
    v268 = (v57 != 0) & (v250 ^ 1);
    if (v268)
    {
      v61 = [MEMORY[0x277CBEAA8] distantPast];
      v62 = v57;
      v250 = 1;
      v251 = v60;
    }

    else
    {
      while ((v60 & 1) == 0)
      {
        if (v57)
        {
          v61 = v57;
        }

        else
        {
          v61 = [MEMORY[0x277CBEAA8] distantPast];
        }

        v62 = v58;
        if ([v61 compare:v62] == -1)
        {
          v251 = 1;
          goto LABEL_66;
        }

        v63 = bls_flipbook_log();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
        {
          v64 = [v61 bls_shortLoggingString];
          v65 = [v62 bls_shortLoggingString];
          *buf = 134218754;
          v301 = self;
          v302 = 1024;
          *v303 = v264;
          *&v303[4] = 2114;
          *&v303[6] = v64;
          *&v303[14] = 2114;
          *&v303[16] = v65;
          _os_log_debug_impl(&dword_21FD11000, v63, OS_LOG_TYPE_DEBUG, "%p updates(%d) (skipping initial) valid:(%{public}@->%{public}@)", buf, 0x26u);
        }

        LOBYTE(v60) = 1;
      }

      v248 = v60;
      v66 = [MEMORY[0x277CBEAA8] distantFuture];
      v67 = [MEMORY[0x277CBEAA8] distantFuture];
      v286 = 0u;
      v287 = 0u;
      v288 = 0u;
      v289 = 0u;
      v68 = v252;
      v69 = [v68 countByEnumeratingWithState:&v286 objects:v310 count:16];
      if (v69)
      {
        v70 = v69;
        v71 = *v287;
        do
        {
          v72 = 0;
          v73 = v67;
          v74 = v66;
          do
          {
            if (*v287 != v71)
            {
              objc_enumerationMutation(v68);
            }

            v75 = *(*(&v286 + 1) + 8 * v72);
            v76 = [v75 specifier];
            v77 = [v76 date];
            v66 = [v77 earlierDate:v74];

            v78 = [v75 dateInterval];
            v79 = [v78 endDate];
            v67 = [v79 earlierDate:v73];

            ++v72;
            v73 = v67;
            v74 = v66;
          }

          while (v70 != v72);
          v70 = [v68 countByEnumeratingWithState:&v286 objects:v310 count:16];
        }

        while (v70);
      }

      v80 = [MEMORY[0x277CBEAA8] distantFuture];
      v81 = [v66 isEqualToDate:v80];

      if (v81)
      {

        v240 = v67;
        v58 = v243;
        v57 = v244;
        break;
      }

      v61 = v66;
      v62 = [v61 dateByAddingTimeInterval:a7];

      v251 = 1;
      v58 = v243;
      v57 = v244;
      LOBYTE(v60) = v248;
    }

LABEL_66:
    if (v247)
    {
      v82 = [v62 earlierDate:?];

      v62 = v82;
    }

    v249 = v60;
    v83 = v60 ^ 1;
    v84 = bls_flipbook_log();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
    {
      v150 = [v61 bls_shortLoggingString];
      v151 = [v62 bls_shortLoggingString];
      *buf = 134219266;
      v301 = self;
      v302 = 1024;
      *v303 = v264;
      *&v303[4] = 2114;
      *&v303[6] = v150;
      *&v303[14] = 2114;
      *&v303[16] = v151;
      *&v303[24] = 1024;
      *&v303[26] = v268;
      *&v303[30] = 1024;
      *&v303[32] = v83 & 1;
      _os_log_debug_impl(&dword_21FD11000, v84, OS_LOG_TYPE_DEBUG, "%p updates(%d) (loop) valid:(%{public}@->%{public}@) (skip:%{BOOL}u initial:%{BOOL}u)", buf, 0x32u);
    }

    v245 = v83;

    v259 = [MEMORY[0x277CBEAA8] distantPast];
    v85 = [MEMORY[0x277CBEAA8] distantFuture];
    v282 = 0u;
    v283 = 0u;
    v284 = 0u;
    v285 = 0u;
    v86 = v252;
    v87 = [v86 countByEnumeratingWithState:&v282 objects:v309 count:16];
    v270 = v62;
    if (!v87)
    {

      v136 = 0;
      v137 = v259;
      goto LABEL_124;
    }

    v88 = v87;
    v266 = 0;
    v256 = 0;
    v89 = *v283;
    v263 = v61;
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
        v92 = [v91 specifier];
        v93 = [v92 date];
        obja = [v91 environment];
        if (![v93 bls_isOnOrAfter:v61])
        {
          goto LABEL_110;
        }

        if (![v93 bls_isOnOrBefore:v62])
        {
          v102 = v92;
          goto LABEL_108;
        }

        v260 = v85;
        v94 = 0;
        while (1)
        {
          v95 = v94;
          v96 = [v91 enumerator];
          v94 = [v96 nextObject];

          v97 = [v94 date];
          v98 = v97;
          if (v97)
          {
            v99 = v97;
          }

          else
          {
            v99 = [MEMORY[0x277CBEAA8] distantFuture];
          }

          if ([v99 bls_isOnOrAfter:v61 andOnOrBefore:v62])
          {
            v100 = bls_flipbook_log();
            if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
            {
              v112 = [v61 bls_shortLoggingString];
              v113 = [v62 bls_shortLoggingString];
              v114 = [obja identifier];
              *buf = 134219778;
              v301 = self;
              v302 = 1024;
              *v303 = v264;
              *&v303[4] = 2114;
              *&v303[6] = v92;
              *&v303[14] = 2114;
              *&v303[16] = v94;
              *&v303[24] = 2114;
              *&v303[26] = v112;
              *&v303[34] = 2114;
              *&v303[36] = v113;
              *&v303[44] = 2048;
              *&v303[46] = a6;
              *&v303[54] = 2114;
              *&v303[56] = v114;
              _os_log_debug_impl(&dword_21FD11000, v100, OS_LOG_TYPE_DEBUG, "%p updates(%d) (will coaelsce) specifier:%{public}@ nextSpecifier:%{public}@ valid:(%{public}@->%{public}@) gapDuration:%1.3lg env:%{public}@", buf, 0x4Eu);

              v61 = v263;
              v62 = v270;
            }

            v101 = v94;
LABEL_93:
            LOBYTE(v110) = 1;
            goto LABEL_94;
          }

          if (!v268)
          {
            break;
          }

          v102 = v92;
          if (v102)
          {
            goto LABEL_97;
          }

LABEL_89:
          v103 = [v94 date];
          v104 = [v103 bls_isOnOrAfter:v61 andOnOrBefore:v62];

          v105 = bls_flipbook_log();
          v106 = os_log_type_enabled(v105, OS_LOG_TYPE_INFO);
          if (!v104)
          {
            if (v106)
            {
              v254 = [v61 bls_shortLoggingString];
              v116 = [v270 bls_shortLoggingString];
              v117 = [obja identifier];
              *buf = 134219778;
              v301 = self;
              v302 = 1024;
              *v303 = v264;
              *&v303[4] = 2114;
              *&v303[6] = v92;
              *&v303[14] = 2114;
              *&v303[16] = v94;
              *&v303[24] = 2114;
              *&v303[26] = v254;
              *&v303[34] = 2114;
              *&v303[36] = v116;
              v118 = v116;
              *&v303[44] = 2048;
              *&v303[46] = a6;
              *&v303[54] = 2114;
              v119 = v117;
              *&v303[56] = v117;
              v266 = 1;
              _os_log_impl(&dword_21FD11000, v105, OS_LOG_TYPE_INFO, "%p updates(%d) (exceeded budget - will not coaelsce) specifier:%{public}@ nextSpecifier:%{public}@ valid:(%{public}@->%{public}@) gapDuration:%1.3lg env:%{public}@", buf, 0x4Eu);

              v62 = v270;
              v61 = v263;
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
            v107 = [v61 bls_shortLoggingString];
            v108 = [v270 bls_shortLoggingString];
            v109 = [obja identifier];
            *buf = 134219778;
            v301 = self;
            v302 = 1024;
            *v303 = v264;
            *&v303[4] = 2114;
            *&v303[6] = v92;
            *&v303[14] = 2114;
            *&v303[16] = v94;
            *&v303[24] = 2114;
            *&v303[26] = v107;
            *&v303[34] = 2114;
            *&v303[36] = v108;
            *&v303[44] = 2048;
            *&v303[46] = a6;
            *&v303[54] = 2114;
            *&v303[56] = v109;
            _os_log_impl(&dword_21FD11000, v105, OS_LOG_TYPE_INFO, "%p updates(%d) (exceeded budget - will coaelsce) specifier:%{public}@ nextSpecifier:%{public}@ valid:(%{public}@->%{public}@) gapDuration:%1.3lg env:%{public}@", buf, 0x4Eu);

            v61 = v263;
          }

          v110 = v94;
          v111 = [v110 date];

          v266 = 1;
          v62 = v270;
          v93 = v111;
          if (v110)
          {
            goto LABEL_93;
          }

LABEL_94:

          v92 = v94;
          if ((v110 & 1) == 0)
          {
            v102 = v94;
            goto LABEL_104;
          }
        }

        v102 = [(BLSHInactiveBudgetPolicing_Private *)self->_inactiveBudgetPolicy validateAndChargeFutureSpecifier:v92 nextSpecifier:v94 forEnvironment:obja];

        if (!v102)
        {
          goto LABEL_89;
        }

LABEL_97:
        v115 = bls_flipbook_log();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
        {
          v255 = [v61 bls_shortLoggingString];
          v128 = [v62 bls_shortLoggingString];
          v129 = [obja identifier];
          *buf = 134220034;
          v301 = self;
          v302 = 1024;
          *v303 = v264;
          *&v303[4] = 2114;
          *&v303[6] = v102;
          *&v303[14] = 2114;
          *&v303[16] = v92;
          *&v303[24] = 2114;
          *&v303[26] = v94;
          *&v303[34] = 2114;
          *&v303[36] = v255;
          *&v303[44] = 2114;
          *&v303[46] = v128;
          v130 = v128;
          *&v303[54] = 2048;
          *&v303[56] = a6;
          *&v303[64] = 2114;
          v131 = v129;
          *&v303[66] = v129;
          _os_log_debug_impl(&dword_21FD11000, v115, OS_LOG_TYPE_DEBUG, "%p updates(%d) (will not coaelsce) validSpecifier:%{public}@ specifier:%{public}@ nextSpecifier:%{public}@ valid:(%{public}@->%{public}@) gapDuration:%1.3lg env:%{public}@", buf, 0x58u);

          v62 = v270;
          v61 = v263;
        }

        v105 = v92;
        v92 = v102;
LABEL_103:

LABEL_104:
        [v91 setSpecifier:v94];
        v120 = bls_flipbook_log();
        if (os_log_type_enabled(v120, OS_LOG_TYPE_DEBUG))
        {
          v125 = [v61 bls_shortLoggingString];
          v126 = [v62 bls_shortLoggingString];
          v127 = [obja identifier];
          *buf = 134219778;
          v301 = self;
          v302 = 1024;
          *v303 = v264;
          *&v303[4] = 2114;
          *&v303[6] = v102;
          *&v303[14] = 2114;
          *&v303[16] = v94;
          *&v303[24] = 2114;
          *&v303[26] = v125;
          *&v303[34] = 2114;
          *&v303[36] = v126;
          *&v303[44] = 2048;
          *&v303[46] = a6;
          *&v303[54] = 2114;
          *&v303[56] = v127;
          _os_log_debug_impl(&dword_21FD11000, v120, OS_LOG_TYPE_DEBUG, "%p updates(%d) (set enumerater) validSpecifier:%{public}@ nextSpecifier:%{public}@ valid:(%{public}@->%{public}@) gapDuration:%1.3lg env:%{public}@", buf, 0x4Eu);

          v62 = v270;
        }

        if (v102)
        {
          v121 = [v102 date];
          v122 = [v102 date];
          v123 = [BLSHEnvironmentDateSpecifier specifierWithPresentationDate:v122 fidelity:[v102 fidelity] environment:obja userObject:0];

          [(NSMapTable *)table setObject:v123 forKey:obja];
          v124 = [v121 laterDate:v259];

          v62 = v270;
          v256 = 1;
          v259 = v124;
          v85 = v260;
          v86 = v258;
LABEL_108:
          [v93 earlierDate:v85];
          v85 = v94 = v85;
        }

        else
        {
          v85 = v260;
          v86 = v258;
        }

        v92 = v102;
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
      v57 = v244;
      v137 = v259;
      v136 = v266;
LABEL_124:
      v259 = v137;
      if (v268)
      {
        v138 = bls_flipbook_log();
        if (!os_log_type_enabled(v138, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_126;
        }

        v140 = [v61 bls_shortLoggingString];
        v141 = [v62 bls_shortLoggingString];
        *buf = 134218754;
        v301 = self;
        v302 = 1024;
        *v303 = v264;
        *&v303[4] = 2114;
        *&v303[6] = v140;
        *&v303[14] = 2114;
        *&v303[16] = v141;
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
            v145 = [v61 bls_shortLoggingString];
            v146 = [v62 bls_shortLoggingString];
            *buf = 134218754;
            v301 = self;
            v302 = 1024;
            *v303 = v264;
            *&v303[4] = 2114;
            *&v303[6] = v145;
            *&v303[14] = 2114;
            *&v303[16] = v146;
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
            v167 = [v61 bls_shortLoggingString];
            v168 = [v62 bls_shortLoggingString];
            v169 = [v85 bls_shortLoggingString];
            *buf = 134219010;
            v301 = self;
            v302 = 1024;
            *v303 = v264;
            *&v303[4] = 2114;
            *&v303[6] = v167;
            *&v303[14] = 2114;
            *&v303[16] = v168;
            *&v303[24] = 2114;
            *&v303[26] = v169;
            _os_log_debug_impl(&dword_21FD11000, v138, OS_LOG_TYPE_DEBUG, "%p updates(%d) (invalid - stopping) valid:(%{public}@->%{public}@) earliestDate:%{public}@", buf, 0x30u);

            v62 = v270;
          }

          v85 = v85;
          v135 = 1;
          v138 = v240;
          v240 = v85;
          goto LABEL_150;
        }

        if (!v139)
        {
LABEL_126:
          v135 = 0;
          goto LABEL_150;
        }

        v140 = [v61 bls_shortLoggingString];
        v141 = [v62 bls_shortLoggingString];
        *buf = 134218754;
        v301 = self;
        v302 = 1024;
        *v303 = v264;
        *&v303[4] = 2114;
        *&v303[6] = v140;
        *&v303[14] = 2114;
        *&v303[16] = v141;
        v142 = v138;
        v143 = "%p updates(%d) (invalid, exceeded budget - continuing) valid:(%{public}@->%{public}@)";
      }

      _os_log_debug_impl(&dword_21FD11000, v142, OS_LOG_TYPE_DEBUG, v143, buf, 0x26u);

      goto LABEL_126;
    }

    v58 = v243;
    v57 = v244;
    if (v264 < a8)
    {
      if (v242)
      {
        [v259 timeIntervalSinceDate:?];
        if (v133 > a6)
        {
          v134 = bls_flipbook_log();
          if (os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG))
          {
            v173 = [v242 bls_shortLoggingString];
            v174 = [v85 bls_shortLoggingString];
            [v259 bls_shortLoggingString];
            v176 = v175 = v85;
            v177 = [v61 bls_shortLoggingString];
            v178 = [v270 bls_shortLoggingString];
            v179 = [v243 bls_shortLoggingString];
            *buf = 134220290;
            v301 = self;
            v302 = 1024;
            *v303 = v264;
            *&v303[4] = 2114;
            *&v303[6] = v173;
            *&v303[14] = 2112;
            *&v303[16] = v174;
            *&v303[24] = 2112;
            *&v303[26] = v176;
            *&v303[34] = 2114;
            *&v303[36] = v177;
            *&v303[44] = 2114;
            *&v303[46] = v178;
            *&v303[54] = 1024;
            *&v303[56] = v245 & 1;
            *&v303[60] = 2114;
            *&v303[62] = v179;
            *&v303[70] = 2048;
            *&v303[72] = a6;
            _os_log_debug_impl(&dword_21FD11000, v134, OS_LOG_TYPE_DEBUG, "%p updates(%d) (gap reached - stopping) previous:%{public}@ earliest:%@ latest:%@ valid:(%{public}@->%{public}@) (initial:%{BOOL}u) startingAtDate:%{public}@ gapDuration:%1.3lg", buf, 0x5Eu);

            v58 = v243;
            v57 = v244;

            v85 = v175;
          }

          v85 = v85;
          if (v268)
          {
            [BLSHDateSpecifierModel updatesAfterSpecifier:a2 coalesceFirstUpdateToNowDate:? plusRenderEarlyEpsilon:? untilGapOverDuration:? coaelscingEpsilon:? maximumUpdates:? lastValidDate:? forPresentation:? environmentFilter:?];
          }

          v135 = 1;
          v240 = v85;
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
          v145 = [v61 bls_shortLoggingString];
          v146 = [v62 bls_shortLoggingString];
          [v144 bls_shortLoggingString];
          v149 = v148 = v85;
          *buf = 134219522;
          v301 = self;
          v302 = 1024;
          *v303 = v264;
          *&v303[4] = 2114;
          *&v303[6] = v145;
          *&v303[14] = 2114;
          *&v303[16] = v146;
          *&v303[24] = 1024;
          *&v303[26] = v245 & 1;
          v57 = v244;
          *&v303[30] = 2114;
          *&v303[32] = v149;
          *&v303[40] = 2048;
          *&v303[42] = a6;
          _os_log_debug_impl(&dword_21FD11000, v138, OS_LOG_TYPE_DEBUG, "%p updates(%d) (skipping) previous=start valid:(%{public}@->%{public}@) (initial:%{BOOL}u) startingAtDate:%{public}@ gapDuration:%1.3lg", buf, 0x40u);

          v85 = v148;
LABEL_140:

          v62 = v270;
        }

        goto LABEL_141;
      }

      v152 = v85;
      v153 = v259;

      v154 = v238;
      if (!v238)
      {
        v154 = [MEMORY[0x277CBEB18] array];
      }

      v155 = NSAllMapTableValues(table);
      v280[0] = MEMORY[0x277D85DD0];
      v280[1] = 3221225472;
      v280[2] = __202__BLSHDateSpecifierModel_updatesAfterSpecifier_coalesceFirstUpdateToNowDate_plusRenderEarlyEpsilon_untilGapOverDuration_coaelscingEpsilon_maximumUpdates_lastValidDate_forPresentation_environmentFilter___block_invoke_27;
      v280[3] = &unk_27841F040;
      v281 = v234;
      v156 = [v155 sortedArrayUsingComparator:v280];

      v157 = [BLSHPresentationDateSpecifier specifierWithPresentationDate:v153 specifiers:v156];
      v238 = v154;
      [v154 addObject:v157];
      ++v264;
      v158 = [v237 earlierDate:v153];

      v159 = bls_flipbook_log();
      if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
      {
        v170 = [v61 bls_shortLoggingString];
        v171 = [v270 bls_shortLoggingString];
        v172 = [v243 bls_shortLoggingString];
        *buf = 134219778;
        v301 = self;
        v302 = 1024;
        *v303 = v264;
        *&v303[4] = 2114;
        *&v303[6] = v157;
        *&v303[14] = 2114;
        *&v303[16] = v170;
        *&v303[24] = 2114;
        *&v303[26] = v171;
        *&v303[34] = 1024;
        *&v303[36] = v245 & 1;
        *&v303[40] = 2114;
        *&v303[42] = v172;
        *&v303[50] = 2048;
        *&v303[52] = a6;
        _os_log_debug_impl(&dword_21FD11000, v159, OS_LOG_TYPE_DEBUG, "%p updates(%d) (add) update:%{public}@ valid:(%{public}@->%{public}@) (initial:%{BOOL}u) startingAtDate:%{public}@ gapDuration:%1.3lg", buf, 0x4Au);

        v58 = v243;
        v57 = v244;
      }

      v135 = 0;
      v138 = v281;
      v259 = v153;
      v242 = v153;
      v237 = v158;
      v62 = v270;
      v85 = v152;
LABEL_150:

      goto LABEL_151;
    }

    v147 = bls_flipbook_log();
    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEBUG))
    {
      v160 = [v242 bls_shortLoggingString];
      v161 = [v85 bls_shortLoggingString];
      [v259 bls_shortLoggingString];
      v163 = v162 = v85;
      v164 = [v61 bls_shortLoggingString];
      v165 = [v62 bls_shortLoggingString];
      v166 = [v243 bls_shortLoggingString];
      *buf = 134220546;
      v301 = self;
      v302 = 1024;
      *v303 = v264;
      *&v303[4] = 1024;
      *&v303[6] = a8;
      *&v303[10] = 2114;
      *&v303[12] = v160;
      *&v303[20] = 2112;
      *&v303[22] = v161;
      *&v303[30] = 2112;
      *&v303[32] = v163;
      *&v303[40] = 2114;
      *&v303[42] = v164;
      *&v303[50] = 2114;
      *&v303[52] = v165;
      *&v303[60] = 1024;
      *&v303[62] = v245 & 1;
      *&v303[66] = 2114;
      *&v303[68] = v166;
      *&v303[76] = 2048;
      *&v303[78] = a6;
      _os_log_debug_impl(&dword_21FD11000, v147, OS_LOG_TYPE_DEBUG, "%p updates(%d) (%d limit reached - stopping) previous:%{public}@ earliest:%@ latest:%@ valid:(%{public}@->%{public}@) (initial:%{BOOL}u) startingAtDate:%{public}@ gapDuration:%1.3lg", buf, 0x64u);

      v58 = v243;
      v62 = v270;

      v57 = v244;
      v85 = v162;
    }

    v85 = v85;
    if (v268)
    {
      [BLSHDateSpecifierModel updatesAfterSpecifier:a2 coalesceFirstUpdateToNowDate:? plusRenderEarlyEpsilon:? untilGapOverDuration:? coaelscingEpsilon:? maximumUpdates:? lastValidDate:? forPresentation:? environmentFilter:?];
    }

    v135 = 1;
    v240 = v85;
LABEL_151:

    v59 = v251;
  }

  while ((v135 & 1) == 0);
  v180 = v240;
  if (!v240)
  {
    if (v247)
    {
      v181 = v247;
    }

    else
    {
      v181 = [MEMORY[0x277CBEAA8] distantFuture];
    }

    v278 = 0u;
    v279 = 0u;
    v276 = 0u;
    v277 = 0u;
    v182 = v252;
    v183 = [v182 countByEnumeratingWithState:&v276 objects:v308 count:16];
    if (v183)
    {
      v184 = v183;
      v185 = *v277;
      objb = v182;
      do
      {
        v186 = 0;
        v187 = v181;
        do
        {
          if (*v277 != v185)
          {
            objc_enumerationMutation(objb);
          }

          v188 = *(*(&v276 + 1) + 8 * v186);
          v189 = [v188 specifier];
          v190 = [v189 date];
          v191 = [v188 sourceModel];
          v192 = [v191 dateInterval];
          v193 = [v192 endDate];
          v194 = [v190 earlierDate:v193];

          v181 = [v187 earlierDate:v194];

          ++v186;
          v187 = v181;
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
      v229 = [v181 bls_shortLoggingString];
      v230 = [v243 bls_shortLoggingString];
      *buf = 134219010;
      v301 = self;
      v302 = 1024;
      *v303 = v264;
      *&v303[4] = 1024;
      *&v303[6] = v228;
      *&v303[10] = 2114;
      *&v303[12] = v229;
      *&v303[20] = 2114;
      *&v303[22] = v230;
      _os_log_debug_impl(&dword_21FD11000, v195, OS_LOG_TYPE_DEBUG, "%p updates(%d) (no nextStart) - will use earliest of %u environment model end next:%{public}@ startingAtDate:%{public}@", buf, 0x2Cu);
    }

    v180 = v181;
    v57 = v244;
  }

  v196 = v180;
  [v180 timeIntervalSinceDate:v58];
  if (v197 < a7)
  {
    v198 = bls_flipbook_log();
    if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
    {
      v226 = [v196 bls_shortLoggingString];
      v227 = [v58 bls_shortLoggingString];
      *buf = 134219010;
      v301 = self;
      v302 = 1024;
      *v303 = v264;
      *&v303[4] = 2048;
      *&v303[6] = a7;
      *&v303[14] = 2114;
      *&v303[16] = v226;
      *&v303[24] = 2114;
      *&v303[26] = v227;
      _os_log_error_impl(&dword_21FD11000, v198, OS_LOG_TYPE_ERROR, "%p updates(%d) startDate->lastValidDate interval too small (<%.lfs) startDate:%{public}@ lastValidDate:%{public}@", buf, 0x30u);
    }

    v199 = [v58 dateByAddingTimeInterval:a7];

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
      v212 = [v235 bls_shortLoggingString];
      v213 = [v247 bls_shortLoggingString];
      v214 = [v243 bls_shortLoggingString];
      v215 = v236;
      if (v236)
      {
        v216 = @"<skip>";
        v217 = v253;
      }

      else
      {
        v217 = v253;
        v216 = [v253 bls_shortLoggingString];
        v215 = 0;
      }

      *buf = 134221058;
      v301 = self;
      v302 = 1024;
      *v303 = v264;
      *&v303[4] = 2114;
      *&v303[6] = v215;
      *&v303[14] = 2114;
      *&v303[16] = v212;
      *&v303[24] = 2048;
      *&v303[26] = a6;
      *&v303[34] = 2048;
      *&v303[36] = a7;
      *&v303[44] = 2048;
      *&v303[46] = a8;
      *&v303[54] = 2114;
      *&v303[56] = v213;
      *&v303[64] = 2048;
      *&v303[66] = v217;
      *&v303[74] = 1024;
      *&v303[76] = v246 != 0;
      *&v303[80] = 2114;
      *&v303[82] = objc;
      v304 = 2114;
      v305 = v214;
      v306 = 2114;
      v307 = v216;
      v222 = v215;
      _os_log_impl(&dword_21FD11000, v203, OS_LOG_TYPE_INFO, "%p updates(%d) (complete) after:%{public}@ coalesceTo:%{public}@ gapDuration:%1.3lg epsilon:%.3lf max:%ld upTo:%{public}@ pres:%p filtered:%{BOOL}u result:%{public}@ startingAtDate:%{public}@ pres:%{public}@", buf, 0x7Cu);
      if (!v222)
      {
      }

      v211 = v235;
      v209 = v236;
      v207 = v246;
      v205 = v247;
      v210 = v253;
      v58 = v243;
      v57 = v244;
      v200 = objc;
    }

    else
    {
      v211 = v235;
      v209 = v236;
      v207 = v246;
      v205 = v247;
      v210 = v253;
      v58 = v243;
    }
  }

  else
  {
    v203 = bls_flipbook_log();
    if (os_log_type_enabled(v203, OS_LOG_TYPE_INFO))
    {
      v204 = [v235 bls_shortLoggingString];
      v205 = v247;
      [v247 bls_shortLoggingString];
      v206 = objd = v200;
      v207 = v246;
      v208 = [v58 bls_shortLoggingString];
      *buf = 134220802;
      v301 = self;
      v302 = 1024;
      *v303 = v264;
      *&v303[4] = 2048;
      v209 = v236;
      *&v303[6] = v236;
      *&v303[14] = 2114;
      *&v303[16] = v204;
      *&v303[24] = 2048;
      *&v303[26] = a6;
      *&v303[34] = 2048;
      *&v303[36] = a7;
      *&v303[44] = 2048;
      *&v303[46] = a8;
      *&v303[54] = 2114;
      *&v303[56] = v206;
      *&v303[64] = 2048;
      v210 = v253;
      *&v303[66] = v253;
      *&v303[74] = 1024;
      *&v303[76] = v246 != 0;
      v57 = v244;
      *&v303[80] = 2114;
      *&v303[82] = objd;
      v304 = 2114;
      v305 = v208;
      _os_log_impl(&dword_21FD11000, v203, OS_LOG_TYPE_INFO, "%p updates(%d) (complete) after:%p coalesceTo:%{public}@ gapDuration:%1.3lg epsilon:%.3lf max:%ld upTo:%{public}@ pres:%p filtered:%{BOOL}u result:%{public}@ startingAtDate:%{public}@", buf, 0x72u);

      v200 = objd;
      v211 = v235;
    }

    else
    {
      v211 = v235;
      v209 = v236;
      v207 = v246;
      v205 = v247;
      v210 = v253;
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

- (void)purgeSpecifiersBefore:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v5 = [(NSMapTable *)self->_environmentModels objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = [v11 dateInterval];
        v13 = [v12 endDate];
        [v4 timeIntervalSinceDate:v13];
        v15 = v14;

        if (v15 <= 600.0)
        {
          [v11 purgeSpecifiersBefore:v4];
        }

        else
        {
          if (!v8)
          {
            v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMapTable count](self->_environmentModels, "count")}];
          }

          v16 = [v11 environment];
          [v8 addObject:v16];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
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

- (void)addObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers addObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_observers removeObject:v4];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEmpty
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMapTable *)self->_environmentModels count]== 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (BLSHEnvironmentDatesModel)environmentModelForKey:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 32));
    v4 = [*(a1 + 16) objectForKey:v3];
    if (v4)
    {
      v5 = v4;
      os_unfair_lock_unlock((a1 + 32));
    }

    else
    {
      v5 = [[BLSHEnvironmentDatesModel alloc] initWithEnvironment:v3];
      [*(a1 + 16) setObject:v5 forKey:v3];
      os_unfair_lock_unlock((a1 + 32));
      OUTLINED_FUNCTION_12();
      v7[1] = 3221225472;
      v7[2] = __49__BLSHDateSpecifierModel_environmentModelForKey___block_invoke;
      v7[3] = &unk_27841F068;
      v7[4] = a1;
      v8 = v3;
      [(BLSHDateSpecifierModel *)a1 notifyObserversWithBlock:v7];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)removeEnvironmentModelForKey:(void *)a3 reason:
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 32));
    v7 = [*(a1 + 16) objectForKey:v5];
    if (v7)
    {
      v9 = bls_flipbook_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = [v5 identifier];
        v11 = [v7 count];
        v12 = [v7 dateInterval];
        v13 = [v12 bls_shortLoggingString];
        *buf = 134219010;
        v17 = a1;
        v18 = 2114;
        v19 = v10;
        v20 = 1024;
        v21 = v11;
        v22 = 2114;
        v23 = v13;
        v24 = 2114;
        v25 = v6;
        _os_log_debug_impl(&dword_21FD11000, v9, OS_LOG_TYPE_DEBUG, "%p:%{public}@ will clear %d specifiers from interval:%{public}@ (%{public}@)", buf, 0x30u);
      }

      [*(a1 + 16) removeObjectForKey:v5];
      os_unfair_lock_unlock((a1 + 32));
      OUTLINED_FUNCTION_12();
      v14[1] = 3221225472;
      v14[2] = __62__BLSHDateSpecifierModel_removeEnvironmentModelForKey_reason___block_invoke;
      v14[3] = &unk_27841F068;
      v14[4] = a1;
      v15 = v5;
      [(BLSHDateSpecifierModel *)a1 notifyObserversWithBlock:v14];
    }

    else
    {
      os_unfair_lock_unlock((a1 + 32));
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)registerSpecifiers:(id)a3 forDateInterval:(id)a4 environment:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(BLSHDateSpecifierModel *)self environmentModelForKey:a5];
  [v10 registerSpecifiers:v9 forDateInterval:v8];
}

- (void)notifyObserversWithBlock:(uint64_t)a1
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 32));
    v4 = [*(a1 + 24) allObjects];
    os_unfair_lock_unlock((a1 + 32));
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = v4;
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