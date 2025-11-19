@interface PHQuestion
+ (id)entityKeyMap;
+ (id)fetchAnsweredQuestionCountsWithOptions:(id)a3;
+ (id)fetchAnsweredQuestionsWithOptions:(id)a3 validQuestionsOnly:(BOOL)a4;
+ (id)fetchAnsweredYesOrNoQuestionsWithOptions:(id)a3 validQuestionsOnly:(BOOL)a4;
+ (id)fetchQuestionsWithLocalIdentifiers:(id)a3 options:(id)a4 validQuestionsOnly:(BOOL)a5;
+ (id)fetchQuestionsWithOptions:(id)a3 validQuestionsOnly:(BOOL)a4;
+ (id)fetchUnansweredQuestionsWithOptions:(id)a3 validQuestionsOnly:(BOOL)a4;
+ (id)propertiesToFetchWithHint:(unint64_t)a3;
+ (id)questionsWithValidEntitiesFromQuestions:(id)a3 photoLibrary:(id)a4;
+ (id)stringForQuestionType:(unsigned __int16)a3;
+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4;
- (PHQuestion)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5;
- (id)description;
@end

@implementation PHQuestion

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PHQuestion;
  v4 = [(PHObject *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, entityIdentifier: %@ type: %hu, state: %hu, entityType: %hu, displayType: %hu, score: %f, \nadditionalInfo: %@\ncreationDate: %@", v4, self->_entityIdentifier, self->_type, self->_state, self->_entityType, self->_displayType, *&self->_score, self->_additionalInfo, self->_creationDate];

  return v5;
}

- (PHQuestion)initWithFetchDictionary:(id)a3 propertyHint:(unint64_t)a4 photoLibrary:(id)a5
{
  v8 = a3;
  v24.receiver = self;
  v24.super_class = PHQuestion;
  v9 = [(PHObject *)&v24 initWithFetchDictionary:v8 propertyHint:a4 photoLibrary:a5];
  if (v9)
  {
    v10 = [v8 objectForKeyedSubscript:@"entityIdentifier"];
    entityIdentifier = v9->_entityIdentifier;
    v9->_entityIdentifier = v10;

    v12 = [v8 objectForKeyedSubscript:@"type"];
    v9->_type = [v12 unsignedIntegerValue];

    v13 = [v8 objectForKeyedSubscript:@"state"];
    v9->_state = [v13 unsignedIntegerValue];

    v14 = [v8 objectForKeyedSubscript:@"entityType"];
    v9->_entityType = [v14 unsignedIntegerValue];

    v15 = [v8 objectForKeyedSubscript:@"displayType"];
    v9->_displayType = [v15 unsignedIntegerValue];

    v16 = [v8 objectForKeyedSubscript:@"score"];
    [v16 doubleValue];
    v9->_score = v17;

    v18 = [v8 objectForKeyedSubscript:@"additionalInfo"];
    additionalInfo = v9->_additionalInfo;
    v9->_additionalInfo = v18;

    v20 = [v8 objectForKeyedSubscript:@"creationDate"];
    creationDate = v9->_creationDate;
    v9->_creationDate = v20;

    v22 = [v8 objectForKeyedSubscript:@"questionVersion"];
    v9->_questionVersion = [v22 shortValue];
  }

  return v9;
}

+ (id)stringForQuestionType:(unsigned __int16)a3
{
  if ((a3 - 1) > 0x1D)
  {
    return @"PHQuestionTypeNone";
  }

  else
  {
    return off_1E75AB120[(a3 - 1)];
  }
}

+ (id)transformValueExpression:(id)a3 forKeyPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__PHQuestion_transformValueExpression_forKeyPath___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (transformValueExpression_forKeyPath__onceToken_53550 != -1)
  {
    dispatch_once(&transformValueExpression_forKeyPath__onceToken_53550, block);
  }

  if ([transformValueExpression_forKeyPath___passThroughSet_53551 containsObject:v7])
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __50__PHQuestion_transformValueExpression_forKeyPath___block_invoke()
{
  v4[9] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"entityIdentifier";
  v4[1] = @"type";
  v4[2] = @"state";
  v4[3] = @"entityType";
  v4[4] = @"displayType";
  v4[5] = @"score";
  v4[6] = @"additionalInfo";
  v4[7] = @"creationDate";
  v4[8] = @"questionVersion";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:9];
  v2 = [v0 setWithArray:v1];
  v3 = transformValueExpression_forKeyPath___passThroughSet_53551;
  transformValueExpression_forKeyPath___passThroughSet_53551 = v2;
}

+ (id)questionsWithValidEntitiesFromQuestions:(id)a3 photoLibrary:(id)a4
{
  v302 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v192 = a4;
  v205 = [MEMORY[0x1E695DF90] dictionary];
  v197 = [MEMORY[0x1E695DF90] dictionary];
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v207 = [MEMORY[0x1E695DF90] dictionary];
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v208 = [MEMORY[0x1E695DF90] dictionary];
  v206 = [MEMORY[0x1E695DF90] dictionary];
  v195 = [MEMORY[0x1E695DF70] array];
  v193 = [MEMORY[0x1E695DF90] dictionary];
  v213 = [MEMORY[0x1E695DF70] array];
  v275 = 0u;
  v276 = 0u;
  v277 = 0u;
  v278 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v275 objects:v301 count:16];
  v198 = v6;
  v194 = v7;
  if (v8)
  {
    v9 = v8;
    v10 = *v276;
    do
    {
      v11 = 0;
      do
      {
        if (*v276 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v275 + 1) + 8 * v11);
        v13 = [v12 entityIdentifier];
        v14 = [v12 entityType];
        if (v14 <= 3)
        {
          if (v14 > 1)
          {
            if (v14 != 2)
            {
              v15 = [(PHObject *)PHAsset localIdentifierWithUUID:v13];
              v19 = [v7 objectForKeyedSubscript:v15];

              if (v19)
              {
                v18 = v7;
                goto LABEL_33;
              }

              v26 = [MEMORY[0x1E695DF70] arrayWithObject:v12];
              v27 = v7;
LABEL_39:
              [v27 setObject:v26 forKeyedSubscript:v15];
LABEL_40:

LABEL_41:
              goto LABEL_42;
            }

            v22 = [(PHObject *)PHMemory localIdentifierWithUUID:v13];
            v23 = [v207 objectForKeyedSubscript:v22];

            if (v23)
            {
              v24 = [v207 objectForKeyedSubscript:v22];
              [v24 addObject:v12];
            }

            else
            {
              v24 = [MEMORY[0x1E695DF70] arrayWithObject:v12];
              [v207 setObject:v24 forKeyedSubscript:v22];
            }

            v7 = v194;
          }

          else
          {
            if (v14)
            {
              if (v14 != 1)
              {
                goto LABEL_42;
              }

              v15 = [(PHObject *)PHPerson localIdentifierWithUUID:v13];
              v17 = [v6 objectForKeyedSubscript:v15];

              if (v17)
              {
                v18 = v6;
                goto LABEL_33;
              }

              v26 = [MEMORY[0x1E695DF70] arrayWithObject:v12];
              v27 = v6;
              goto LABEL_39;
            }

            if ([v12 type] == 18)
            {
              v21 = [v197 objectForKeyedSubscript:v13];

              if (v21)
              {
                v15 = [v197 objectForKeyedSubscript:v13];
                [v15 addObject:v12];
              }

              else
              {
                v15 = [MEMORY[0x1E695DF70] arrayWithObject:v12];
                [v197 setObject:v15 forKeyedSubscript:v13];
              }

              goto LABEL_41;
            }

            v28 = [(PHObject *)PHAsset localIdentifierWithUUID:v13];
            v29 = [v205 objectForKeyedSubscript:v28];

            if (v29)
            {
              v30 = [v205 objectForKeyedSubscript:v28];
              [v30 addObject:v12];
            }

            else
            {
              v30 = [MEMORY[0x1E695DF70] arrayWithObject:v12];
              [v205 setObject:v30 forKeyedSubscript:v28];
            }

            v6 = v198;
          }
        }

        else
        {
          if (v14 > 5)
          {
            switch(v14)
            {
              case 6:
                v15 = [(PHObject *)PHAssetCollection localIdentifierWithUUID:v13];
                v16 = v208;
                break;
              case 7:
                v15 = [(PHObject *)PHMoment localIdentifierWithUUID:v13];
                v16 = v206;
                break;
              case 8:
                v15 = [(PHObject *)PHAsset localIdentifierWithUUID:v13];
                v16 = v193;
                break;
              default:
                goto LABEL_42;
            }

            v25 = [v16 objectForKeyedSubscript:v15];

            if (!v25)
            {
              v26 = [MEMORY[0x1E695DF70] arrayWithObject:v12];
              v27 = v16;
              goto LABEL_39;
            }

            v18 = v16;
LABEL_33:
            v26 = [v18 objectForKeyedSubscript:v15];
            [v26 addObject:v12];
            goto LABEL_40;
          }

          if (v14 == 4)
          {
            v20 = v213;
          }

          else
          {
            v20 = v195;
          }

          [v20 addObject:v12];
        }

LABEL_42:

        ++v11;
      }

      while (v9 != v11);
      v31 = [obj countByEnumeratingWithState:&v275 objects:v301 count:16];
      v9 = v31;
    }

    while (v31);
  }

  if ([v205 count])
  {
    v32 = [v192 librarySpecificFetchOptions];
    v300 = @"PHAssetPropertySetIdentifier";
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v300 count:1];
    [v32 setFetchPropertySets:v33];

    v34 = [v205 allKeys];
    v191 = v32;
    v35 = [PHAsset fetchAssetsWithLocalIdentifiers:v34 options:v32];

    v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v271 = 0u;
    v272 = 0u;
    v273 = 0u;
    v274 = 0u;
    v196 = v35;
    v202 = [v196 countByEnumeratingWithState:&v271 objects:v299 count:16];
    if (v202)
    {
      v200 = *v272;
      do
      {
        v38 = 0;
        do
        {
          if (*v272 != v200)
          {
            objc_enumerationMutation(v196);
          }

          v209 = v38;
          v39 = [*(*(&v271 + 1) + 8 * v38) localIdentifier];
          v40 = [v205 objectForKeyedSubscript:v39];

          v270 = 0u;
          v269 = 0u;
          v267 = 0u;
          v268 = 0u;
          v41 = v40;
          v42 = [v41 countByEnumeratingWithState:&v267 objects:v298 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v268;
            do
            {
              for (i = 0; i != v43; ++i)
              {
                if (*v268 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                v46 = *(*(&v267 + 1) + 8 * i);
                if ([v46 type] == 29)
                {
                  v47 = [v46 additionalInfo];
                  v48 = [v47 objectForKeyedSubscript:@"momentLocalIdentifiers"];

                  v49 = [v48 allObjects];
                  [v36 addObjectsFromArray:v49];

                  [v37 addObject:v46];
                }

                else
                {
                  [v213 addObject:v46];
                }
              }

              v43 = [v41 countByEnumeratingWithState:&v267 objects:v298 count:16];
            }

            while (v43);
          }

          v38 = v209 + 1;
        }

        while (v209 + 1 != v202);
        v202 = [v196 countByEnumeratingWithState:&v271 objects:v299 count:16];
      }

      while (v202);
    }

    if ([v36 count])
    {
      v203 = [v192 librarySpecificFetchOptions];
      v50 = [(PHAssetCollection *)PHMoment fetchAssetCollectionsWithLocalIdentifiers:v36 options:?];
      v51 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v263 = 0u;
      v264 = 0u;
      v265 = 0u;
      v266 = 0u;
      v52 = v50;
      v53 = [v52 countByEnumeratingWithState:&v263 objects:v297 count:16];
      if (v53)
      {
        v54 = v53;
        v55 = *v264;
        do
        {
          for (j = 0; j != v54; ++j)
          {
            if (*v264 != v55)
            {
              objc_enumerationMutation(v52);
            }

            v57 = [*(*(&v263 + 1) + 8 * j) localIdentifier];
            [v51 addObject:v57];
          }

          v54 = [v52 countByEnumeratingWithState:&v263 objects:v297 count:16];
        }

        while (v54);
      }

      v201 = v52;

      v261 = 0u;
      v262 = 0u;
      v259 = 0u;
      v260 = 0u;
      v210 = v37;
      v58 = [v210 countByEnumeratingWithState:&v259 objects:v296 count:16];
      if (v58)
      {
        v59 = v58;
        v60 = *v260;
        do
        {
          for (k = 0; k != v59; ++k)
          {
            if (*v260 != v60)
            {
              objc_enumerationMutation(v210);
            }

            v62 = *(*(&v259 + 1) + 8 * k);
            v63 = [v62 additionalInfo];
            v64 = [v63 objectForKeyedSubscript:@"momentLocalIdentifiers"];

            if ([v64 isSubsetOfSet:v51])
            {
              [v213 addObject:v62];
            }
          }

          v59 = [v210 countByEnumeratingWithState:&v259 objects:v296 count:16];
        }

        while (v59);
      }
    }

    v6 = v198;
    v7 = v194;
  }

  v65 = v208;
  if ([v197 count])
  {
    v258 = 0;
    v66 = [PHPhotoLibrary openPhotoLibraryWithWellKnownIdentifier:3 error:&v258];
    v67 = v258;
    v68 = v67;
    if (v66)
    {
      v211 = v67;
      v69 = [v66 librarySpecificFetchOptions];
      v295[0] = @"PHAssetPropertySetSceneAnalysis";
      v295[1] = @"PHAssetPropertySetMediaAnalysis";
      v295[2] = @"PHAssetPropertySetCuration";
      v70 = [MEMORY[0x1E695DEC8] arrayWithObjects:v295 count:3];
      [v69 setFetchPropertySets:v70];

      [v69 setIncludeGuestAssets:1];
      v71 = [v197 allKeys];
      v72 = [PHAsset fetchAssetsWithSyndicationIdentifiers:v71 options:v69];

      v256 = 0u;
      v257 = 0u;
      v254 = 0u;
      v255 = 0u;
      v73 = v72;
      v74 = [v73 countByEnumeratingWithState:&v254 objects:v294 count:16];
      if (v74)
      {
        v75 = v74;
        v76 = *v255;
        do
        {
          for (m = 0; m != v75; ++m)
          {
            if (*v255 != v76)
            {
              objc_enumerationMutation(v73);
            }

            v78 = *(*(&v254 + 1) + 8 * m);
            v79 = [v78 curationProperties];
            v80 = [v79 syndicationIdentifier];
            v81 = [v197 objectForKeyedSubscript:v80];

            v82 = [v78 syndicationEligibility];
            if ([v81 count])
            {
              v83 = (v82 + 4) > 0xFFFFFFFFFFFFFFFDLL;
            }

            else
            {
              v83 = 1;
            }

            if (!v83)
            {
              [v213 addObjectsFromArray:v81];
            }

            v6 = v198;
          }

          v75 = [v73 countByEnumeratingWithState:&v254 objects:v294 count:16];
        }

        while (v75);
      }

      v7 = v194;
      v65 = v208;
      v68 = v211;
    }

    else
    {
      v69 = PLBackendGetLog();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v293 = v68;
        _os_log_impl(&dword_19C86F000, v69, OS_LOG_TYPE_ERROR, "PHQuestion: Failed to open syndicated library: %@", buf, 0xCu);
      }
    }
  }

  v84 = v207;
  if ([v6 count])
  {
    v85 = [v192 librarySpecificFetchOptions];
    [v85 setIncludedDetectionTypes:&unk_1F102E480];
    v86 = [v6 allKeys];
    v87 = [PHPerson fetchPersonsWithLocalIdentifiers:v86 options:v85];

    v252 = 0u;
    v253 = 0u;
    v250 = 0u;
    v251 = 0u;
    v88 = v87;
    v89 = [v88 countByEnumeratingWithState:&v250 objects:v291 count:16];
    if (v89)
    {
      v90 = v89;
      v91 = *v251;
      do
      {
        for (n = 0; n != v90; ++n)
        {
          if (*v251 != v91)
          {
            objc_enumerationMutation(v88);
          }

          v93 = [*(*(&v250 + 1) + 8 * n) localIdentifier];
          v94 = [v6 objectForKeyedSubscript:v93];

          if ([v94 count])
          {
            [v213 addObjectsFromArray:v94];
          }
        }

        v90 = [v88 countByEnumeratingWithState:&v250 objects:v291 count:16];
      }

      while (v90);
    }

    v65 = v208;
  }

  if ([v195 count])
  {
    v95 = [v192 librarySpecificFetchOptions];
    [v95 setPersonContext:1];
    v290 = @"PHPersonPropertySetIdentifier";
    v96 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v290 count:1];
    [v95 setFetchPropertySets:v96];

    v212 = v95;
    v97 = [PHPerson fetchPersonsWithOptions:v95];
    v98 = [MEMORY[0x1E695DFA8] set];
    v246 = 0u;
    v247 = 0u;
    v248 = 0u;
    v249 = 0u;
    v99 = v97;
    v100 = [v99 countByEnumeratingWithState:&v246 objects:v289 count:16];
    if (v100)
    {
      v101 = v100;
      v102 = *v247;
      do
      {
        for (ii = 0; ii != v101; ++ii)
        {
          if (*v247 != v102)
          {
            objc_enumerationMutation(v99);
          }

          v104 = *(*(&v246 + 1) + 8 * ii);
          v105 = [v104 uuid];
          v106 = [v105 length];

          if (v106)
          {
            v107 = [v104 uuid];
            [v98 addObject:v107];
          }
        }

        v101 = [v99 countByEnumeratingWithState:&v246 objects:v289 count:16];
      }

      while (v101);
    }

    v204 = v99;

    v244 = 0u;
    v245 = 0u;
    v242 = 0u;
    v243 = 0u;
    v108 = v195;
    v109 = [v108 countByEnumeratingWithState:&v242 objects:v288 count:16];
    if (v109)
    {
      v110 = v109;
      v111 = *v243;
      do
      {
        for (jj = 0; jj != v110; ++jj)
        {
          if (*v243 != v111)
          {
            objc_enumerationMutation(v108);
          }

          v113 = *(*(&v242 + 1) + 8 * jj);
          v114 = [v113 additionalInfo];
          v115 = [v114 objectForKeyedSubscript:@"personUUIDs"];

          v116 = [MEMORY[0x1E695DFA8] setWithArray:v115];
          [v116 intersectSet:v98];
          v117 = [v116 count];
          if (v117 == [v115 count])
          {
            [v213 addObject:v113];
          }

          v84 = v207;
        }

        v110 = [v108 countByEnumeratingWithState:&v242 objects:v288 count:16];
      }

      while (v110);
    }

    v6 = v198;
    v65 = v208;
    v7 = v194;
  }

  if ([v84 count])
  {
    v118 = [v192 librarySpecificFetchOptions];
    v119 = [v84 allKeys];
    v120 = [PHAssetCollection fetchAssetCollectionsWithType:4 localIdentifiers:v119 options:v118];

    v240 = 0u;
    v241 = 0u;
    v238 = 0u;
    v239 = 0u;
    v121 = v120;
    v122 = [v121 countByEnumeratingWithState:&v238 objects:v287 count:16];
    if (v122)
    {
      v123 = v122;
      v124 = *v239;
      do
      {
        for (kk = 0; kk != v123; ++kk)
        {
          if (*v239 != v124)
          {
            objc_enumerationMutation(v121);
          }

          v126 = [*(*(&v238 + 1) + 8 * kk) localIdentifier];
          v127 = [v84 objectForKeyedSubscript:v126];

          if ([v127 count])
          {
            [v213 addObjectsFromArray:v127];
          }
        }

        v123 = [v121 countByEnumeratingWithState:&v238 objects:v287 count:16];
      }

      while (v123);
    }

    v65 = v208;
  }

  if ([v7 count])
  {
    v128 = [v192 librarySpecificFetchOptions];
    v286 = @"PHAssetPropertySetIdentifier";
    v129 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v286 count:1];
    [v128 setFetchPropertySets:v129];

    v130 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v234 = 0u;
    v235 = 0u;
    v236 = 0u;
    v237 = 0u;
    v131 = v7;
    v132 = [v131 countByEnumeratingWithState:&v234 objects:v285 count:16];
    if (v132)
    {
      v133 = v132;
      v134 = *v235;
      do
      {
        for (mm = 0; mm != v133; ++mm)
        {
          if (*v235 != v134)
          {
            objc_enumerationMutation(v131);
          }

          v136 = [(PHObject *)PHAsset uuidFromLocalIdentifier:*(*(&v234 + 1) + 8 * mm)];
          if (v136)
          {
            [v130 addObject:v136];
          }
        }

        v133 = [v131 countByEnumeratingWithState:&v234 objects:v285 count:16];
      }

      while (v133);
    }

    v137 = [MEMORY[0x1E696AE18] predicateWithFormat:@"highlightBeingAssets.type = %d && uuid in %@", 5, v130];
    [v128 setInternalPredicate:v137];

    [PHAsset fetchAssetsWithOptions:v128];
    v230 = 0u;
    v231 = 0u;
    v232 = 0u;
    v138 = v233 = 0u;
    v139 = [v138 countByEnumeratingWithState:&v230 objects:v284 count:16];
    if (v139)
    {
      v140 = v139;
      v141 = *v231;
      do
      {
        for (nn = 0; nn != v140; ++nn)
        {
          if (*v231 != v141)
          {
            objc_enumerationMutation(v138);
          }

          v143 = [*(*(&v230 + 1) + 8 * nn) localIdentifier];
          v144 = [v131 objectForKeyedSubscript:v143];

          if ([v144 count])
          {
            [v213 addObjectsFromArray:v144];
          }
        }

        v140 = [v138 countByEnumeratingWithState:&v230 objects:v284 count:16];
      }

      while (v140);
    }

    v6 = v198;
    v7 = v194;
    v65 = v208;
  }

  if ([v65 count])
  {
    v145 = [v192 librarySpecificFetchOptions];
    v146 = [v208 allKeys];
    v147 = [PHAssetCollection fetchAssetCollectionsWithLocalIdentifiers:v146 options:v145];

    v228 = 0u;
    v229 = 0u;
    v226 = 0u;
    v227 = 0u;
    v148 = v147;
    v149 = [v148 countByEnumeratingWithState:&v226 objects:v283 count:16];
    if (v149)
    {
      v150 = v149;
      v151 = *v227;
      do
      {
        for (i1 = 0; i1 != v150; ++i1)
        {
          if (*v227 != v151)
          {
            objc_enumerationMutation(v148);
          }

          v153 = *(*(&v226 + 1) + 8 * i1);
          v154 = [v153 localIdentifier];
          v155 = [v208 objectForKeyedSubscript:v154];

          if ([v153 approximateCount] && objc_msgSend(v155, "count"))
          {
            [v213 addObjectsFromArray:v155];
          }
        }

        v150 = [v148 countByEnumeratingWithState:&v226 objects:v283 count:16];
      }

      while (v150);
    }

    v6 = v198;
  }

  if ([v206 count])
  {
    v156 = [v192 librarySpecificFetchOptions];
    v157 = [v206 allKeys];
    v158 = [(PHAssetCollection *)PHMoment fetchAssetCollectionsWithLocalIdentifiers:v157 options:v156];

    v224 = 0u;
    v225 = 0u;
    v222 = 0u;
    v223 = 0u;
    v159 = v158;
    v160 = [v159 countByEnumeratingWithState:&v222 objects:v282 count:16];
    if (v160)
    {
      v161 = v160;
      v162 = *v223;
      do
      {
        for (i2 = 0; i2 != v161; ++i2)
        {
          if (*v223 != v162)
          {
            objc_enumerationMutation(v159);
          }

          v164 = [*(*(&v222 + 1) + 8 * i2) localIdentifier];
          v165 = [v206 objectForKeyedSubscript:v164];

          if ([v165 count])
          {
            [v213 addObjectsFromArray:v165];
          }
        }

        v161 = [v159 countByEnumeratingWithState:&v222 objects:v282 count:16];
      }

      while (v161);
    }
  }

  v166 = v193;
  if ([v193 count])
  {
    v167 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v193, "count")}];
    v218 = 0u;
    v219 = 0u;
    v220 = 0u;
    v221 = 0u;
    v168 = v193;
    v169 = [v168 countByEnumeratingWithState:&v218 objects:v281 count:16];
    if (v169)
    {
      v170 = v169;
      v171 = *v219;
      do
      {
        for (i3 = 0; i3 != v170; ++i3)
        {
          if (*v219 != v171)
          {
            objc_enumerationMutation(v168);
          }

          v173 = [(PHObject *)PHAsset uuidFromLocalIdentifier:*(*(&v218 + 1) + 8 * i3)];
          if (v173)
          {
            [v167 addObject:v173];
          }
        }

        v170 = [v168 countByEnumeratingWithState:&v218 objects:v281 count:16];
      }

      while (v170);
    }

    v174 = [v192 librarySpecificFetchOptions];
    v280 = @"PHAssetPropertySetIdentifier";
    v175 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v280 count:1];
    [v174 setFetchPropertySets:v175];

    v176 = [MEMORY[0x1E696AE18] predicateWithFormat:@"highlightBeingAssets.kind = %d && uuid in %@", 0, v167];
    [v174 setInternalPredicate:v176];

    [PHAsset fetchAssetsWithOptions:v174];
    v214 = 0u;
    v215 = 0u;
    v216 = 0u;
    v177 = v217 = 0u;
    v178 = [v177 countByEnumeratingWithState:&v214 objects:v279 count:16];
    if (v178)
    {
      v179 = v178;
      v180 = *v215;
      do
      {
        for (i4 = 0; i4 != v179; ++i4)
        {
          if (*v215 != v180)
          {
            objc_enumerationMutation(v177);
          }

          v182 = [*(*(&v214 + 1) + 8 * i4) localIdentifier];
          v183 = [v168 objectForKeyedSubscript:v182];

          if ([v183 count])
          {
            [v213 addObjectsFromArray:v183];
          }
        }

        v179 = [v177 countByEnumeratingWithState:&v214 objects:v279 count:16];
      }

      while (v179);
    }

    v6 = v198;
    v166 = v193;
  }

  v184 = [PHManualFetchResult alloc];
  v185 = [obj photoLibrary];
  v186 = [obj fetchType];
  v187 = [obj fetchPropertySets];
  v188 = [(PHManualFetchResult *)v184 initWithObjects:v213 photoLibrary:v185 fetchType:v186 fetchPropertySets:v187 identifier:0 registerIfNeeded:0];

  v189 = v188;
  return v188;
}

id __51__PHQuestion_fetchInvalidatedQuestionsWithOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForQuestionsWithState:4 options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchUnansweredQuestionsWithOptions:(id)a3 validQuestionsOnly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:v6 fetchBlock:&__block_literal_global_83];
  if (v4)
  {
    v8 = [v6 photoLibrary];
    v9 = [a1 questionsWithValidEntitiesFromQuestions:v7 photoLibrary:v8];

    v7 = v9;
  }

  return v7;
}

id __69__PHQuestion_fetchUnansweredQuestionsWithOptions_validQuestionsOnly___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForQuestionsWithState:0 options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchAnsweredQuestionsWithOptions:(id)a3 validQuestionsOnly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:v6 fetchBlock:&__block_literal_global_81];
  if (v4)
  {
    v8 = [v6 photoLibrary];
    v9 = [a1 questionsWithValidEntitiesFromQuestions:v7 photoLibrary:v8];

    v7 = v9;
  }

  return v7;
}

id __67__PHQuestion_fetchAnsweredQuestionsWithOptions_validQuestionsOnly___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAnsweredQuestionsWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchAnsweredYesOrNoQuestionsWithOptions:(id)a3 validQuestionsOnly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:v6 fetchBlock:&__block_literal_global_79];
  if (v4)
  {
    v8 = [v6 photoLibrary];
    v9 = [a1 questionsWithValidEntitiesFromQuestions:v7 photoLibrary:v8];

    v7 = v9;
  }

  return v7;
}

id __74__PHQuestion_fetchAnsweredYesOrNoQuestionsWithOptions_validQuestionsOnly___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForAnsweredYesOrNoQuestionsWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchQuestionsWithLocalIdentifiers:(id)a3 options:(id)a4 validQuestionsOnly:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__PHQuestion_fetchQuestionsWithLocalIdentifiers_options_validQuestionsOnly___block_invoke;
  v15[3] = &unk_1E75AB0E0;
  v16 = v8;
  v10 = v8;
  v11 = [PHObject authorizationAwareFetchResultWithOptions:v9 fetchBlock:v15];
  if (v5)
  {
    v12 = [v9 photoLibrary];
    v13 = [a1 questionsWithValidEntitiesFromQuestions:v11 photoLibrary:v12];

    v11 = v13;
  }

  return v11;
}

id __76__PHQuestion_fetchQuestionsWithLocalIdentifiers_options_validQuestionsOnly___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForQuestionsWithLocalIdentifiers:*(a1 + 32) options:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchQuestionsWithOptions:(id)a3 validQuestionsOnly:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [PHObject authorizationAwareFetchResultWithOptions:v6 fetchBlock:&__block_literal_global_76];
  if (v4)
  {
    v8 = [v6 photoLibrary];
    v9 = [a1 questionsWithValidEntitiesFromQuestions:v7 photoLibrary:v8];

    v7 = v9;
  }

  return v7;
}

id __59__PHQuestion_fetchQuestionsWithOptions_validQuestionsOnly___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [PHQuery queryForQuestionsWithOptions:a2];
  v3 = [v2 executeQuery];

  return v3;
}

+ (id)fetchAnsweredQuestionCountsWithOptions:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [a1 fetchAnsweredQuestionsWithOptions:v4 validQuestionsOnly:1];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = +[PHQuestion stringForQuestionType:](PHQuestion, "stringForQuestionType:", [*(*(&v17 + 1) + 8 * i) type]);
        v12 = [v5 objectForKeyedSubscript:v11];

        if (v12)
        {
          v13 = MEMORY[0x1E696AD98];
          v14 = [v5 objectForKeyedSubscript:v11];
          v15 = [v13 numberWithInt:{objc_msgSend(v14, "intValue") + 1}];
          [v5 setObject:v15 forKeyedSubscript:v11];
        }

        else
        {
          [v5 setObject:&unk_1F102DD60 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

+ (id)entityKeyMap
{
  pl_dispatch_once();
  v2 = entityKeyMap_pl_once_object_16_53589;

  return v2;
}

void __26__PHQuestion_entityKeyMap__block_invoke()
{
  v25[10] = *MEMORY[0x1E69E9840];
  v12 = [PHEntityKeyMap alloc];
  v23 = @"uuid";
  v24[0] = @"uuid";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  v25[0] = v13;
  v24[1] = @"entityIdentifier";
  v22 = @"entityIdentifier";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v25[1] = v0;
  v24[2] = @"type";
  v21 = @"type";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  v25[2] = v1;
  v24[3] = @"state";
  v20 = @"state";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v25[3] = v2;
  v24[4] = @"entityType";
  v19 = @"entityType";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v25[4] = v3;
  v24[5] = @"displayType";
  v18 = @"displayType";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  v25[5] = v4;
  v24[6] = @"score";
  v17 = @"score";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
  v25[6] = v5;
  v24[7] = @"additionalInfo";
  v16 = @"additionalInfo";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v25[7] = v6;
  v24[8] = @"creationDate";
  v15 = @"creationDate";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
  v25[8] = v7;
  v24[9] = @"questionVersion";
  v14 = @"questionVersion";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
  v25[9] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:10];
  v10 = [(PHEntityKeyMap *)v12 initWithPropertyKeysByEntityKey:v9];
  v11 = entityKeyMap_pl_once_object_16_53589;
  entityKeyMap_pl_once_object_16_53589 = v10;
}

+ (id)propertiesToFetchWithHint:(unint64_t)a3
{
  pl_dispatch_once();
  v3 = propertiesToFetchWithHint__pl_once_object_15_53603;

  return v3;
}

void __40__PHQuestion_propertiesToFetchWithHint___block_invoke()
{
  v4[11] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E69BE570] objectIDDescription];
  v4[0] = v0;
  v4[1] = @"uuid";
  v4[2] = @"entityIdentifier";
  v4[3] = @"type";
  v4[4] = @"state";
  v4[5] = @"entityType";
  v4[6] = @"displayType";
  v4[7] = @"score";
  v4[8] = @"additionalInfo";
  v4[9] = @"creationDate";
  v4[10] = @"questionVersion";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:11];
  v2 = [v1 copy];
  v3 = propertiesToFetchWithHint__pl_once_object_15_53603;
  propertiesToFetchWithHint__pl_once_object_15_53603 = v2;
}

@end