@interface PHImportDuplicateChecker
+ (id)_dateWithDate:(id)date;
+ (id)_fetchAssetInfoFromLibrary:(id)library forFileSizes:(id)sizes;
+ (id)duplicatesFromResults:(id)results forLibrary:(id)library;
- (BOOL)_findFingerprint:(id)fingerprint forItem:(id)item inCache:(id)cache considerTrash:(BOOL)trash;
- (PHImportDuplicateChecker)initWithLibrary:(id)library;
- (id)_checkForDuplicate:(id)duplicate considerItemsInTheTrash:(BOOL)trash;
- (id)_filterDuplicatesForItem:(id)item duplicateSet:(id)set considerItemsInTrash:(BOOL)trash;
- (id)_findMatchingAssetsForItem:(id)item inSet:(id)set matchingDate:(id *)date confidence:(unsigned __int8 *)confidence;
- (unint64_t)_populateCachesWithAssetsInfos:(id)infos;
- (void)_populateCachesWithAssetInfo:(id)info;
- (void)_setDupInfo:(id)info forFingerprint:(id)fingerprint inCache:(id)cache;
- (void)_updateAssetsFromDupInfos;
- (void)findDuplicatesOfItems:(id)items considerItemsInTrash:(BOOL)trash forEach:(id)each atEnd:(id)end;
@end

@implementation PHImportDuplicateChecker

- (void)findDuplicatesOfItems:(id)items considerItemsInTrash:(BOOL)trash forEach:(id)each atEnd:(id)end
{
  trashCopy = trash;
  v51 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  eachCopy = each;
  endCopy = end;
  v10 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(itemsCopy, "count")}];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = itemsCopy;
  v12 = [v11 countByEnumeratingWithState:&v41 objects:v50 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v42;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(v11);
        }

        sizeKey = [*(*(&v41 + 1) + 8 * i) sizeKey];
        [v10 addObject:sizeKey];
      }

      v13 = [v11 countByEnumeratingWithState:&v41 objects:v50 count:16];
    }

    while (v13);
  }

  v32 = v10;
  v31 = [PHImportDuplicateChecker _fetchAssetInfoFromLibrary:self->_library forFileSizes:v10];
  [(PHImportDuplicateChecker *)self _populateCachesWithAssetsInfos:?];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v18 = v17;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = v11;
  v19 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v22 = *v38;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v37 + 1) + 8 * j);
        isDuplicate = [v24 isDuplicate];
        v26 = [(PHImportDuplicateChecker *)self _checkForDuplicate:v24 considerItemsInTheTrash:trashCopy];
        if (v26)
        {
          if (!v21)
          {
            v21 = objc_opt_new();
          }

          uuid = [v24 uuid];
          [v21 setObject:v26 forKey:uuid];
        }

        if (eachCopy)
        {
          eachCopy[2](eachCopy, v24, v26, isDuplicate ^ [v24 isDuplicate]);
        }
      }

      v20 = [obj countByEnumeratingWithState:&v37 objects:v49 count:16];
    }

    while (v20);
  }

  else
  {
    v21 = 0;
  }

  v28 = PLImportGetLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v29 = [v31 count];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    *buf = 134218240;
    v46 = v29;
    v47 = 2048;
    v48 = v30 - v18;
    _os_log_impl(&dword_19C86F000, v28, OS_LOG_TYPE_DEBUG, "DUPLICATE CHECK: time to CHECK caches for %lu asset infos: %g", buf, 0x16u);
  }

  if (endCopy)
  {
    endCopy[2](endCopy, v21);
  }

  [(PHImportDuplicateChecker *)self _updateAssetsFromDupInfos];
}

- (id)_checkForDuplicate:(id)duplicate considerItemsInTheTrash:(BOOL)trash
{
  trashCopy = trash;
  v239 = *MEMORY[0x1E69E9840];
  duplicateCopy = duplicate;
  lastDuplicateCheck = [duplicateCopy lastDuplicateCheck];
  if (!lastDuplicateCheck || (v8 = lastDuplicateCheck, -[NSObject lastDuplicateCheck](duplicateCopy, "lastDuplicateCheck"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 compare:self->_lastChange], v9, v8, v10 == -1))
  {
    [duplicateCopy setIsDuplicate:0];
    avchdAssetId = [duplicateCopy avchdAssetId];
    v25 = [(PHImportDuplicateChecker *)self _findFingerprint:avchdAssetId forItem:duplicateCopy inCache:self->_avchdAssetIdentifierCache considerTrash:trashCopy];

    if (v25)
    {
      v26 = PLImportGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        nameKey = [duplicateCopy nameKey];
        originatingAssetID = [duplicateCopy originatingAssetID];
        *buf = 138412546;
        v226 = nameKey;
        v227 = 2112;
        v228 = originatingAssetID;
        v29 = "DUPLICATE CHECK: name: %@, avchdAssetId (UUID): %@ ==> FOUND";
LABEL_20:
        _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_DEBUG, v29, buf, 0x16u);

        goto LABEL_21;
      }

      goto LABEL_21;
    }

    fingerprint = [duplicateCopy fingerprint];
    v31 = [(PHImportDuplicateChecker *)self _findFingerprint:fingerprint forItem:duplicateCopy inCache:self->_assetIdentifierCache considerTrash:trashCopy];

    if (v31)
    {
      v26 = PLImportGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        nameKey = [duplicateCopy nameKey];
        originatingAssetID = [duplicateCopy originatingAssetID];
        *buf = 138412546;
        v226 = nameKey;
        v227 = 2112;
        v228 = originatingAssetID;
        v29 = "DUPLICATE CHECK: name: %@, assetId (fingerprint): %@ ==> FOUND";
        goto LABEL_20;
      }

LABEL_21:

LABEL_22:
      v14 = 0;
      goto LABEL_23;
    }

    originatingAssetID2 = [duplicateCopy originatingAssetID];
    v39 = [(PHImportDuplicateChecker *)self _findFingerprint:originatingAssetID2 forItem:duplicateCopy inCache:self->_assetIdentifierCache considerTrash:trashCopy];

    if (v39)
    {
      v26 = PLImportGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        nameKey = [duplicateCopy nameKey];
        originatingAssetID = [duplicateCopy originatingAssetID];
        *buf = 138412546;
        v226 = nameKey;
        v227 = 2112;
        v228 = originatingAssetID;
        v29 = "DUPLICATE CHECK: name: %@, originatingAssetID (fingerprint): %@ ==> FOUND";
        goto LABEL_20;
      }

      goto LABEL_21;
    }

    sizeKey = [duplicateCopy sizeKey];
    nameKey2 = [duplicateCopy nameKey];
    v43 = nameKey2;
    v187 = sizeKey;
    if (!sizeKey || !nameKey2)
    {
LABEL_42:

      goto LABEL_22;
    }

    sizeNameCache = self->_sizeNameCache;
    if (sizeNameCache)
    {
      v169 = [(NSMutableDictionary *)sizeNameCache objectForKeyedSubscript:sizeKey];
      if (v169)
      {
        v45 = [duplicateCopy url];
        v219 = 0;
        v46 = *MEMORY[0x1E695DE18];
        v218 = 0;
        v165 = v45;
        v47 = [v45 getResourceValue:&v219 forKey:v46 error:&v218];
        v167 = v219;
        v172 = duplicateCopy;
        v166 = v218;
        if (v166)
        {
          v48 = PLImportGetLog();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            sizeKey2 = [duplicateCopy sizeKey];
            nameKey3 = [duplicateCopy nameKey];
            fileName = [duplicateCopy fileName];
            dateKey = [duplicateCopy dateKey];
            v53 = [PHImportDuplicateChecker _dateWithDate:dateKey];
            *buf = 138413314;
            v226 = sizeKey2;
            v227 = 2112;
            v228 = nameKey3;
            v229 = 2112;
            v230 = fileName;
            v231 = 2112;
            v232 = v53;
            v233 = 2112;
            v234 = v166;
            _os_log_impl(&dword_19C86F000, v48, OS_LOG_TYPE_DEBUG, "DUPLICATE CHECK: Looking for size: %@, name: %@ (%@), date: %@: ERROR => File case sensitivity checking:\n%@", buf, 0x34u);

            duplicateCopy = v172;
          }
        }

        v168 = v43;
        if (v47)
        {
          v54 = [v167 BOOLValue] ^ 1;
        }

        else
        {
          v54 = 1;
        }

        lowercaseString = [v168 lowercaseString];
        v63 = [v169 objectForKeyedSubscript:?];
        v64 = v63;
        if ((v54 & 1) == 0)
        {
          v184 = trashCopy;
          v65 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v63, "count")}];
          v214 = 0u;
          v215 = 0u;
          v216 = 0u;
          v217 = 0u;
          v66 = v64;
          v67 = [v66 countByEnumeratingWithState:&v214 objects:v238 count:16];
          if (v67)
          {
            v68 = v67;
            v69 = *v215;
            do
            {
              for (i = 0; i != v68; ++i)
              {
                if (*v215 != v69)
                {
                  objc_enumerationMutation(v66);
                }

                v71 = *(*(&v214 + 1) + 8 * i);
                fileName2 = [v172 fileName];
                fileName3 = [v71 fileName];
                v74 = [fileName2 isEqualToString:fileName3];

                if (v74)
                {
                  [v65 addObject:v71];
                }
              }

              v68 = [v66 countByEnumeratingWithState:&v214 objects:v238 count:16];
            }

            while (v68);
          }

          duplicateCopy = v172;
          v64 = v65;
          trashCopy = v184;
        }

        v163 = v64;
        if (!v64)
        {
          v77 = objc_opt_new();
          v196 = 0u;
          v197 = 0u;
          v198 = 0u;
          v199 = 0u;
          obj = v169;
          v171 = [obj countByEnumeratingWithState:&v196 objects:v222 count:16];
          if (v171)
          {
            v170 = *v197;
            do
            {
              v88 = 0;
              do
              {
                if (*v197 != v170)
                {
                  objc_enumerationMutation(obj);
                }

                v173 = v88;
                v89 = *(*(&v196 + 1) + 8 * v88);
                v192 = 0u;
                v193 = 0u;
                v194 = 0u;
                v195 = 0u;
                v176 = v89;
                v182 = [obj objectForKeyedSubscript:?];
                v90 = [v182 countByEnumeratingWithState:&v192 objects:v221 count:16];
                if (v90)
                {
                  v91 = v90;
                  v92 = *v193;
                  v174 = *v193;
                  do
                  {
                    v93 = 0;
                    v180 = v91;
                    do
                    {
                      if (*v193 != v92)
                      {
                        objc_enumerationMutation(v182);
                      }

                      v94 = *(*(&v192 + 1) + 8 * v93);
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v185 = v93;
                        v190 = 0u;
                        v191 = 0u;
                        v188 = 0u;
                        v189 = 0u;
                        v95 = [obj objectForKeyedSubscript:v176];
                        v96 = [v95 objectForKeyedSubscript:v94];

                        v97 = [v96 countByEnumeratingWithState:&v188 objects:v220 count:16];
                        if (v97)
                        {
                          v98 = v97;
                          v99 = *v189;
                          do
                          {
                            for (j = 0; j != v98; ++j)
                            {
                              if (*v189 != v99)
                              {
                                objc_enumerationMutation(v96);
                              }

                              v101 = *(*(&v188 + 1) + 8 * j);
                              if (([v101 isInTrash] & 1) == 0)
                              {
                                v102 = MEMORY[0x1E696AEC0];
                                fileName4 = [v101 fileName];
                                v104 = [v102 stringWithFormat:@"[size: %@, name: %@, date: %@]", v187, fileName4, v94];
                                [v77 addObject:v104];
                              }
                            }

                            v98 = [v96 countByEnumeratingWithState:&v188 objects:v220 count:16];
                          }

                          while (v98);
                        }

                        v92 = v174;
                        v91 = v180;
                        v93 = v185;
                      }

                      ++v93;
                    }

                    while (v93 != v91);
                    v91 = [v182 countByEnumeratingWithState:&v192 objects:v221 count:16];
                  }

                  while (v91);
                }

                v88 = v173 + 1;
              }

              while (v173 + 1 != v171);
              v171 = [obj countByEnumeratingWithState:&v196 objects:v222 count:16];
            }

            while (v171);
          }

          v105 = PLImportGetLog();
          if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
          {
            sizeKey3 = [v172 sizeKey];
            nameKey4 = [v172 nameKey];
            fileName5 = [v172 fileName];
            dateKey2 = [v172 dateKey];
            v110 = [PHImportDuplicateChecker _dateWithDate:dateKey2];
            *buf = 138413058;
            v226 = sizeKey3;
            v227 = 2112;
            v228 = nameKey4;
            v229 = 2112;
            v230 = fileName5;
            v231 = 2112;
            v232 = v110;
            _os_log_impl(&dword_19C86F000, v105, OS_LOG_TYPE_DEBUG, "DUPLICATE CHECK: size: %@, name: %@ (%@), date: %@ ==> NOT FOUND: No matching name.", buf, 0x2Au);
          }

          v111 = v168;
          if (![v77 count])
          {
            v14 = 0;
            v113 = lowercaseString;
LABEL_138:

            duplicateCopy = v172;
            goto LABEL_23;
          }

          v79 = PLImportGetLog();
          if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
          {
            v112 = [v77 componentsJoinedByString:{@", "}];
            *buf = 138412290;
            v226 = v112;
            _os_log_impl(&dword_19C86F000, v79, OS_LOG_TYPE_DEBUG, "DUPLICATE CHECK: In cache: %@", buf, 0xCu);
          }

          v14 = 0;
          v113 = lowercaseString;
LABEL_137:

          goto LABEL_138;
        }

        dateKey3 = [duplicateCopy dateKey];
        [PHImportDuplicateChecker _dateWithDate:dateKey3];
        v77 = v76 = duplicateCopy;

        v213 = 0;
        v212 = 0;
        v78 = [(PHImportDuplicateChecker *)self _findMatchingAssetsForItem:v76 inSet:v64 matchingDate:&v212 confidence:&v213];
        v79 = v212;
        if (![v78 count])
        {
          v175 = v78;
          v177 = v79;
          v114 = objc_opt_new();
          v115 = [(NSMutableDictionary *)self->_sizeNameCache objectForKeyedSubscript:v187];
          v116 = [v115 objectForKeyedSubscript:v168];

          v206 = 0u;
          v207 = 0u;
          v204 = 0u;
          v205 = 0u;
          v117 = v116;
          v118 = [v117 countByEnumeratingWithState:&v204 objects:v224 count:16];
          v181 = v117;
          if (v118)
          {
            v119 = v118;
            v120 = *v205;
            obja = *v205;
            do
            {
              v121 = 0;
              v183 = v119;
              do
              {
                if (*v205 != v120)
                {
                  objc_enumerationMutation(v117);
                }

                v122 = *(*(&v204 + 1) + 8 * v121);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v186 = v121;
                  v202 = 0u;
                  v203 = 0u;
                  v200 = 0u;
                  v201 = 0u;
                  v123 = [v117 objectForKeyedSubscript:v122];
                  v124 = [v123 countByEnumeratingWithState:&v200 objects:v223 count:16];
                  if (v124)
                  {
                    v125 = v124;
                    v126 = *v201;
                    do
                    {
                      for (k = 0; k != v125; ++k)
                      {
                        if (*v201 != v126)
                        {
                          objc_enumerationMutation(v123);
                        }

                        v128 = *(*(&v200 + 1) + 8 * k);
                        if (([v128 isInTrash] & 1) == 0)
                        {
                          v129 = MEMORY[0x1E696AEC0];
                          fileName6 = [v128 fileName];
                          [v77 timeIntervalSinceDate:v122];
                          v163 = [v129 stringWithFormat:@"[size: %@, name: %@, date: %@ (diff: %gh)]", v187, fileName6, v122, fabs(v131 / 3600.0), v163];
                          [v114 addObject:v163];
                        }
                      }

                      v125 = [v123 countByEnumeratingWithState:&v200 objects:v223 count:16];
                    }

                    while (v125);
                  }

                  v120 = obja;
                  v117 = v181;
                  v119 = v183;
                  v121 = v186;
                }

                ++v121;
              }

              while (v121 != v119);
              v119 = [v117 countByEnumeratingWithState:&v204 objects:v224 count:16];
            }

            while (v119);
          }

          creationDate = [v172 creationDate];

          v134 = PLImportGetLog();
          v135 = os_log_type_enabled(v134, OS_LOG_TYPE_DEBUG);
          if (creationDate)
          {
            if (v135)
            {
              sizeKey4 = [v172 sizeKey];
              sizeKey5 = [v172 sizeKey];
              fileName7 = [v172 fileName];
              dateKey4 = [v172 dateKey];
              v140 = [PHImportDuplicateChecker _dateWithDate:dateKey4];
              creationDate2 = [v172 creationDate];
              *buf = 138413314;
              v226 = sizeKey4;
              v227 = 2112;
              v228 = sizeKey5;
              v229 = 2112;
              v230 = fileName7;
              v231 = 2112;
              v232 = v140;
              v233 = 2112;
              v234 = creationDate2;
              _os_log_impl(&dword_19C86F000, v134, OS_LOG_TYPE_DEBUG, "DUPLICATE CHECK: Looking for size: %@, name: %@ (%@), date: %@ ==> NOT FOUND: CHECKING EXIF date: %@ ==> NOT FOUND: No matching date.", buf, 0x34u);

              v117 = v181;
            }
          }

          else if (v135)
          {
            sizeKey6 = [v172 sizeKey];
            nameKey5 = [v172 nameKey];
            fileName8 = [v172 fileName];
            dateKey5 = [v172 dateKey];
            v157 = [PHImportDuplicateChecker _dateWithDate:dateKey5];
            *buf = 138413314;
            v226 = sizeKey6;
            v227 = 2112;
            v228 = nameKey5;
            v229 = 2112;
            v230 = fileName8;
            v231 = 2112;
            v232 = v157;
            v233 = 2112;
            v234 = v172;
            _os_log_impl(&dword_19C86F000, v134, OS_LOG_TYPE_DEBUG, "DUPLICATE CHECK: Looking for size: %@, name: %@ (%@), date: %@ ==> NOT FOUND: No EXIF date, no matching date. %@", buf, 0x34u);
          }

          v142 = v114;
          v158 = [v114 count];
          v14 = v175;
          v79 = v177;
          v111 = v168;
          if (v158)
          {
            v159 = PLImportGetLog();
            if (os_log_type_enabled(v159, OS_LOG_TYPE_DEBUG))
            {
              v160 = [v142 componentsJoinedByString:@", "];
              *buf = 138412290;
              v226 = v160;
              _os_log_impl(&dword_19C86F000, v159, OS_LOG_TYPE_DEBUG, "DUPLICATE CHECK: In cache: %@", buf, 0xCu);

              v79 = v177;
            }
          }

          goto LABEL_136;
        }

        v80 = [(PHImportDuplicateChecker *)self _filterDuplicatesForItem:v76 duplicateSet:v78 considerItemsInTrash:trashCopy];

        if ([v80 count])
        {
          [v76 setIsDuplicate:1];
          [v76 setDuplicateStateConfidence:v213];
          uuid = [(PHPhotoLibrary *)self->_library uuid];
          [v76 setDuplicates:v80 forLibrary:uuid];

          if ([v76 isLivePhoto])
          {
            v82 = v79;
            v210 = 0u;
            v211 = 0u;
            v208 = 0u;
            v209 = 0u;
            v83 = v80;
            v84 = [v83 countByEnumeratingWithState:&v208 objects:v237 count:16];
            if (v84)
            {
              v85 = v84;
              v86 = *v209;
              while (2)
              {
                for (m = 0; m != v85; ++m)
                {
                  if (*v209 != v86)
                  {
                    objc_enumerationMutation(v83);
                  }

                  if ([*(*(&v208 + 1) + 8 * m) hasVideoComplement])
                  {
                    videoComplement = [v172 videoComplement];
                    [videoComplement setIsDuplicate:1];

                    goto LABEL_131;
                  }
                }

                v85 = [v83 countByEnumeratingWithState:&v208 objects:v237 count:16];
                if (v85)
                {
                  continue;
                }

                break;
              }
            }

LABEL_131:

            v79 = v82;
          }

          v142 = PLImportGetLog();
          if (!os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_135;
          }

          sizeKey7 = [v172 sizeKey];
          [v172 nameKey];
          v145 = v144 = v79;
          fileName9 = [v172 fileName];
          [v172 dateKey];
          v148 = v147 = v142;
          v149 = [PHImportDuplicateChecker _dateWithDate:v148];
          [v77 timeIntervalSinceDate:v144];
          *buf = 138413570;
          v226 = sizeKey7;
          v227 = 2112;
          v228 = v145;
          v229 = 2112;
          v230 = fileName9;
          v231 = 2112;
          v232 = v149;
          v233 = 2112;
          v234 = v144;
          v235 = 2048;
          v236 = fabs(v162 / 3600.0);
          v150 = "DUPLICATE CHECK: Looking for size: %@, name: %@ (%@), date: %@ ==> FOUND: dupDate: %@ (diff: %gh)";
          v151 = v147;
          v152 = 62;
        }

        else
        {
          v142 = PLImportGetLog();
          if (!os_log_type_enabled(v142, OS_LOG_TYPE_DEBUG))
          {
LABEL_135:
            v14 = v80;
            v111 = v168;
LABEL_136:
            v113 = lowercaseString;

            goto LABEL_137;
          }

          sizeKey7 = [v172 sizeKey];
          [v172 nameKey];
          v145 = v144 = v79;
          fileName9 = [v172 fileName];
          [v172 dateKey];
          v148 = v147 = v142;
          v149 = [PHImportDuplicateChecker _dateWithDate:v148];
          *buf = 138413058;
          v226 = sizeKey7;
          v227 = 2112;
          v228 = v145;
          v229 = 2112;
          v230 = fileName9;
          v231 = 2112;
          v232 = v149;
          v150 = "DUPLICATE CHECK: Looking for size: %@, name: %@ (%@), date: %@: Filtered out";
          v151 = v147;
          v152 = 42;
        }

        _os_log_impl(&dword_19C86F000, v151, OS_LOG_TYPE_DEBUG, v150, buf, v152);

        v142 = v147;
        v79 = v144;

        goto LABEL_135;
      }

      v55 = PLImportGetLog();
      if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_41;
      }

      sizeKey8 = [duplicateCopy sizeKey];
      nameKey6 = [duplicateCopy nameKey];
      fileName10 = [duplicateCopy fileName];
      dateKey6 = [duplicateCopy dateKey];
      v60 = [PHImportDuplicateChecker _dateWithDate:dateKey6];
      *buf = 138413058;
      v226 = sizeKey8;
      v227 = 2112;
      v228 = nameKey6;
      v229 = 2112;
      v230 = fileName10;
      v231 = 2112;
      v232 = v60;
      _os_log_impl(&dword_19C86F000, v55, OS_LOG_TYPE_DEBUG, "DUPLICATE CHECK: Looking for size: %@, name: %@ (%@), date: %@ ==> NOT FOUND: No matching size.", buf, 0x2Au);
    }

    else
    {
      v55 = PLImportGetLog();
      if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
LABEL_41:

        goto LABEL_42;
      }

      sizeKey8 = [duplicateCopy sizeKey];
      nameKey6 = [duplicateCopy nameKey];
      fileName10 = [duplicateCopy fileName];
      dateKey7 = [duplicateCopy dateKey];
      v60 = [PHImportDuplicateChecker _dateWithDate:dateKey7];
      uuid2 = [(PHPhotoLibrary *)self->_library uuid];
      *buf = 138413314;
      v226 = sizeKey8;
      v227 = 2112;
      v228 = nameKey6;
      v229 = 2112;
      v230 = fileName10;
      v231 = 2112;
      v232 = v60;
      v233 = 2112;
      v234 = uuid2;
      _os_log_impl(&dword_19C86F000, v55, OS_LOG_TYPE_DEBUG, "DUPLICATE CHECK: Looking for size: %@, name: %@ (%@), date: %@: Can't dedup against databse %@ because it's not in the cache. Possibly shut down?", buf, 0x34u);
    }

    goto LABEL_41;
  }

  if (![duplicateCopy isDuplicate])
  {
    v26 = PLImportGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      sizeKey9 = [duplicateCopy sizeKey];
      nameKey7 = [duplicateCopy nameKey];
      fileName11 = [duplicateCopy fileName];
      dateKey8 = [duplicateCopy dateKey];
      v36 = [PHImportDuplicateChecker _dateWithDate:dateKey8];
      nameKey8 = [duplicateCopy nameKey];
      *buf = 138413314;
      v226 = sizeKey9;
      v227 = 2112;
      v228 = nameKey7;
      v229 = 2112;
      v230 = fileName11;
      v231 = 2112;
      v232 = v36;
      v233 = 2112;
      v234 = nameKey8;
      _os_log_impl(&dword_19C86F000, v26, OS_LOG_TYPE_DEBUG, "DUPLICATE CHECK: Looking for size: %@, name: %@ (%@), date: %@: No change in DB since last check, %@ is not a dup", buf, 0x34u);
    }

    goto LABEL_21;
  }

  duplicates = [duplicateCopy duplicates];
  uuid3 = [(PHPhotoLibrary *)self->_library uuid];
  v13 = [duplicates objectForKeyedSubscript:uuid3];
  v14 = [(PHImportDuplicateChecker *)self _filterDuplicatesForItem:duplicateCopy duplicateSet:v13 considerItemsInTrash:trashCopy];

  v15 = PLImportGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    sizeKey10 = [duplicateCopy sizeKey];
    nameKey9 = [duplicateCopy nameKey];
    fileName12 = [duplicateCopy fileName];
    dateKey9 = [duplicateCopy dateKey];
    v20 = [PHImportDuplicateChecker _dateWithDate:dateKey9];
    nameKey10 = [duplicateCopy nameKey];
    v22 = [v14 count];
    *buf = 138413570;
    v23 = &stru_1F0FC60C8;
    v226 = sizeKey10;
    v227 = 2112;
    if (!v22)
    {
      v23 = @": Filtered out";
    }

    v228 = nameKey9;
    v229 = 2112;
    v230 = fileName12;
    v231 = 2112;
    v232 = v20;
    v233 = 2112;
    v234 = nameKey10;
    v235 = 2112;
    v236 = *&v23;
    _os_log_impl(&dword_19C86F000, v15, OS_LOG_TYPE_DEBUG, "DUPLICATE CHECK: Looking for size: %@, name: %@ (%@), date: %@: No change in DB since last check, %@ is a dup%@", buf, 0x3Eu);
  }

LABEL_23:

  return v14;
}

- (BOOL)_findFingerprint:(id)fingerprint forItem:(id)item inCache:(id)cache considerTrash:(BOOL)trash
{
  trashCopy = trash;
  v25 = *MEMORY[0x1E69E9840];
  fingerprintCopy = fingerprint;
  itemCopy = item;
  if (fingerprintCopy)
  {
    v12 = [cache objectForKeyedSubscript:fingerprintCopy];
    if ([v12 count])
    {
      v13 = [(PHImportDuplicateChecker *)self _filterDuplicatesForItem:itemCopy duplicateSet:v12 considerItemsInTrash:trashCopy];

      if ([v13 count])
      {
        v14 = 1;
        [itemCopy setIsDuplicate:1];
        [itemCopy setDuplicateStateConfidence:2];
        uuid = [(PHPhotoLibrary *)self->_library uuid];
        [itemCopy setDuplicates:v13 forLibrary:uuid];
      }

      else
      {
        v18 = PLImportGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          nameKey = [itemCopy nameKey];
          v21 = 138412546;
          v22 = nameKey;
          v23 = 2112;
          v24 = fingerprintCopy;
          _os_log_impl(&dword_19C86F000, v18, OS_LOG_TYPE_DEBUG, "DUPLICATE CHECK: name: %@, fingerprint: %@ ==> FOUND : Filtered out", &v21, 0x16u);
        }

        v14 = 0;
      }
    }

    else
    {
      v16 = PLImportGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        nameKey2 = [itemCopy nameKey];
        v21 = 138412546;
        v22 = nameKey2;
        v23 = 2112;
        v24 = fingerprintCopy;
        _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEBUG, "DUPLICATE CHECK: name: %@, fingerprint: %@ ==> NOT FOUND", &v21, 0x16u);
      }

      v14 = 0;
      v13 = v12;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_findMatchingAssetsForItem:(id)item inSet:(id)set matchingDate:(id *)date confidence:(unsigned __int8 *)confidence
{
  v48 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  setCopy = set;
  v41 = objc_opt_new();
  dateKey = [itemCopy dateKey];
  v13 = [PHImportDuplicateChecker _dateWithDate:dateKey];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = setCopy;
  v14 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v44;
    confidenceCopy = confidence;
    selfCopy = self;
    do
    {
      v17 = 0;
      do
      {
        if (*v44 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v43 + 1) + 8 * v17);
        imageDate = [v18 imageDate];
        [v13 timeIntervalSinceDate:imageDate];
        v21 = fabs(v20);

        if (v21 <= 86400.0)
        {
          v32 = PLImportGetLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_19C86F000, v32, OS_LOG_TYPE_DEBUG, "DUPLICATE CHECK: Matched date against EXIF image date (CONFIDENT)", buf, 2u);
          }

          [v41 addObject:v18];
          if (!confidence)
          {
            goto LABEL_23;
          }

          v33 = 2;
          goto LABEL_22;
        }

        alternateImportImageDate = [v18 alternateImportImageDate];
        if (!alternateImportImageDate || (v23 = alternateImportImageDate, [v18 alternateImportImageDate], v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "timeIntervalSinceDate:", v24), v26 = fabs(v25), v24, v23, v26 > 86400.0))
        {
          metadata = [itemCopy metadata];

          if (!metadata)
          {
            [itemCopy loadMetadataSync];
            metadata2 = [itemCopy metadata];

            if (metadata2)
            {
              v29 = [(PHImportDuplicateChecker *)selfCopy _findMatchingAssetsForItem:itemCopy inSet:obj matchingDate:date confidence:confidence];
              if ([v29 count])
              {
                allObjects = [v29 allObjects];
                [v41 addObjectsFromArray:allObjects];

                fileCreationDate = [itemCopy fileCreationDate];
                [v18 setAlternateImportImageDate:fileCreationDate];

                [(NSMutableSet *)selfCopy->_updatedDupInfos addObject:v18];
              }

              confidence = confidenceCopy;
            }

            else
            {
              v35 = PLImportGetLog();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_19C86F000, v35, OS_LOG_TYPE_ERROR, "DUPLICATE CHECK: Failed to load metadata for date check.", buf, 2u);
              }
            }
          }

          goto LABEL_25;
        }

        v34 = PLImportGetLog();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19C86F000, v34, OS_LOG_TYPE_DEBUG, "DUPLICATE CHECK: Matched date against Alternate Import image date (POSSIBLE)", buf, 2u);
        }

        [v41 addObject:v18];
        if (confidence)
        {
          v33 = 1;
LABEL_22:
          *confidence = v33;
        }

LABEL_23:
        if (date)
        {
          *date = [v18 imageDate];
        }

LABEL_25:
        ++v17;
      }

      while (v15 != v17);
      v36 = [obj countByEnumeratingWithState:&v43 objects:v47 count:16];
      v15 = v36;
    }

    while (v36);
  }

  return v41;
}

- (id)_filterDuplicatesForItem:(id)item duplicateSet:(id)set considerItemsInTrash:(BOOL)trash
{
  v21 = *MEMORY[0x1E69E9840];
  setCopy = set;
  v7 = setCopy;
  if (trash)
  {
    v8 = setCopy;
  }

  else
  {
    v8 = [MEMORY[0x1E695DFA8] set];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * i);
          if (([v14 isInTrash] & 1) == 0)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }
  }

  return v8;
}

- (void)_populateCachesWithAssetInfo:(id)info
{
  v43 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = [[PHImportDuplicateInfo alloc] initWithAssetInfo:infoCopy];

  fileName = [(PHImportDuplicateInfo *)v5 fileName];
  fileSize = [(PHImportDuplicateInfo *)v5 fileSize];
  v8 = fileSize;
  if (!infoCopy || (fileName ? (v9 = fileSize == 0) : (v9 = 1), v9))
  {
    avchdFingerprint = PLImportGetLog();
    if (os_log_type_enabled(avchdFingerprint, OS_LOG_TYPE_ERROR))
    {
      objectID = [(PHImportDuplicateInfo *)v5 objectID];
      fileName2 = [(PHImportDuplicateInfo *)v5 fileName];
      fileSize2 = [(PHImportDuplicateInfo *)v5 fileSize];
      *buf = 134218754;
      v34 = v5;
      v35 = 2112;
      v36 = objectID;
      v37 = 2112;
      v38 = fileName2;
      v39 = 2112;
      v40 = fileSize2;
      _os_log_impl(&dword_19C86F000, avchdFingerprint, OS_LOG_TYPE_ERROR, "DUPLICATE ERROR: Attempting to populate cache with assetIfo: <%p>(objectID: %@), fileName: %@, fileSize: %@", buf, 0x2Au);
    }
  }

  else
  {
    avchdFingerprint = [(PHImportDuplicateInfo *)v5 avchdFingerprint];
    [avchdFingerprint containsString:fileName];
    [(PHImportDuplicateChecker *)self _setDupInfo:v5 forFingerprint:avchdFingerprint inCache:self->_avchdAssetIdentifierCache];
    fingerprint = [(PHImportDuplicateInfo *)v5 fingerprint];
    [(PHImportDuplicateChecker *)self _setDupInfo:v5 forFingerprint:fingerprint inCache:self->_assetIdentifierCache];

    originatingAssetIdentifier = [(PHImportDuplicateInfo *)v5 originatingAssetIdentifier];
    [(PHImportDuplicateChecker *)self _setDupInfo:v5 forFingerprint:originatingAssetIdentifier inCache:self->_assetIdentifierCache];

    v13 = [(NSMutableDictionary *)self->_sizeNameCache objectForKeyedSubscript:v8];
    if (!v13)
    {
      v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
      [(NSMutableDictionary *)self->_sizeNameCache setObject:v13 forKeyedSubscript:v8];
    }

    lowercaseString = [(PHImportDuplicateInfo *)fileName lowercaseString];
    v15 = [v13 objectForKeyedSubscript:lowercaseString];
    if (!v15)
    {
      v15 = objc_opt_new();
      [v13 setObject:v15 forKeyedSubscript:lowercaseString];
    }

    [v15 addObject:v5];
    v16 = PLImportGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      imageDate = [(PHImportDuplicateInfo *)v5 imageDate];
      v18 = imageDate;
      v19 = &stru_1F0FC60C8;
      if (imageDate)
      {
        v19 = imageDate;
      }

      v31 = v19;
      alternateImportImageDate = [(PHImportDuplicateInfo *)v5 alternateImportImageDate];
      v32 = lowercaseString;
      v21 = alternateImportImageDate;
      v22 = &stru_1F0FC60C8;
      if (alternateImportImageDate)
      {
        v22 = alternateImportImageDate;
      }

      v30 = v22;
      isInTrash = [(PHImportDuplicateInfo *)v5 isInTrash];
      *buf = 138413314;
      v24 = @"NO";
      v34 = fileName;
      v35 = 2112;
      if (isInTrash)
      {
        v24 = @"YES";
      }

      v36 = v8;
      v37 = 2112;
      v38 = v31;
      v39 = 2112;
      v40 = v30;
      v41 = 2112;
      v42 = v24;
      _os_log_impl(&dword_19C86F000, v16, OS_LOG_TYPE_DEBUG, "DUPLICATE POPULATE: name: %@, size: %@, dates: %@%@, isInTrash: %@", buf, 0x34u);

      lowercaseString = v32;
    }

    date = [MEMORY[0x1E695DF00] date];
    lastChange = self->_lastChange;
    self->_lastChange = date;
  }
}

- (void)_setDupInfo:(id)info forFingerprint:(id)fingerprint inCache:(id)cache
{
  v24 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  fingerprintCopy = fingerprint;
  cacheCopy = cache;
  v10 = cacheCopy;
  if (fingerprintCopy)
  {
    v11 = [cacheCopy objectForKeyedSubscript:fingerprintCopy];
    if (v11)
    {
      v12 = v11;
      v13 = PLImportGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v18 = 138412802;
        v19 = fingerprintCopy;
        v20 = 2112;
        v21 = infoCopy;
        v22 = 2112;
        v23 = v12;
        _os_log_impl(&dword_19C86F000, v13, OS_LOG_TYPE_DEBUG, "DUPLICATE POPULATE: More than one master for fingerprint '%@': adding: %@, in cache: %@", &v18, 0x20u);
      }
    }

    else
    {
      v12 = objc_opt_new();
      [v10 setObject:v12 forKeyedSubscript:fingerprintCopy];
    }

    [(__CFString *)v12 addObject:infoCopy];
    v14 = PLImportGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      fileName = [infoCopy fileName];
      isInTrash = [infoCopy isInTrash];
      v17 = @"NO";
      v18 = 138412802;
      v19 = fileName;
      v20 = 2112;
      if (isInTrash)
      {
        v17 = @"YES";
      }

      v21 = fingerprintCopy;
      v22 = 2112;
      v23 = v17;
      _os_log_impl(&dword_19C86F000, v14, OS_LOG_TYPE_DEBUG, "DUPLICATE POPULATE: name: %@, fingerprint: %@, isInTrash: %@", &v18, 0x20u);
    }
  }
}

- (void)_updateAssetsFromDupInfos
{
  v31 = *MEMORY[0x1E69E9840];
  p_updatedDupInfos = &self->_updatedDupInfos;
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableSet count](self->_updatedDupInfos, "count")}];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = *p_updatedDupInfos;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v5)
  {
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        alternateImportImageDate = [v8 alternateImportImageDate];
        objectID = [v8 objectID];
        [v3 setObject:alternateImportImageDate forKeyedSubscript:objectID];
      }

      v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v5);
  }

  allKeys = [v3 allKeys];
  v11 = [[PHManualFetchResult alloc] initWithOids:allKeys photoLibrary:self->_library fetchType:@"PHAsset" fetchPropertySets:0 identifier:0 registerIfNeeded:0];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v12 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{0, -[PHFetchResult count](v11, "count")}];
  v13 = 0;
  while ([v12 count])
  {
    library = self->_library;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __53__PHImportDuplicateChecker__updateAssetsFromDupInfos__block_invoke;
    v19[3] = &unk_1E75A9B78;
    v20 = v11;
    v21 = v12;
    v23 = v25;
    v22 = v3;
    v24 = 100;
    v18 = v13;
    [(PHPhotoLibrary *)library performChangesAndWait:v19 error:&v18];
    v15 = v18;

    v13 = v15;
  }

  _Block_object_dispose(v25, 8);
}

void __53__PHImportDuplicateChecker__updateAssetsFromDupInfos__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__PHImportDuplicateChecker__updateAssetsFromDupInfos__block_invoke_2;
  v6[3] = &unk_1E75A3450;
  v9 = *(a1 + 56);
  v7 = v2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v8 = v4;
  v10 = v5;
  [v3 enumerateObjectsAtIndexes:v7 options:0 usingBlock:v6];
}

void __53__PHImportDuplicateChecker__updateAssetsFromDupInfos__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v7 = a2;
  ++*(*(*(a1 + 48) + 8) + 24);
  [*(a1 + 32) removeIndex:a3];
  v12 = v7;
  v8 = [PHAssetChangeRequest changeRequestForAsset:v12];
  v9 = *(a1 + 40);
  v10 = [v12 objectID];

  v11 = [v9 objectForKeyedSubscript:v10];
  [v8 setAlternateImportImageDate:v11];

  *a4 = *(*(*(a1 + 48) + 8) + 24) >= *(a1 + 56);
}

- (PHImportDuplicateChecker)initWithLibrary:(id)library
{
  libraryCopy = library;
  if (libraryCopy)
  {
    v17.receiver = self;
    v17.super_class = PHImportDuplicateChecker;
    v6 = [(PHImportDuplicateChecker *)&v17 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_library, library);
      v8 = objc_opt_new();
      sizeNameCache = v7->_sizeNameCache;
      v7->_sizeNameCache = v8;

      v10 = objc_opt_new();
      avchdAssetIdentifierCache = v7->_avchdAssetIdentifierCache;
      v7->_avchdAssetIdentifierCache = v10;

      v12 = objc_opt_new();
      assetIdentifierCache = v7->_assetIdentifierCache;
      v7->_assetIdentifierCache = v12;

      v14 = objc_opt_new();
      updatedDupInfos = v7->_updatedDupInfos;
      v7->_updatedDupInfos = v14;
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (unint64_t)_populateCachesWithAssetsInfos:(id)infos
{
  v31 = *MEMORY[0x1E69E9840];
  infosCopy = infos;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v6 = v5;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = infosCopy;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{v12, v22}];
        v14 = MEMORY[0x1E696AD98];
        v15 = [v12 objectForKeyedSubscript:@"asset.kindSubtype"];
        v16 = [v14 numberWithInt:{objc_msgSend(v15, "integerValue") == 2}];
        [v13 setObject:v16 forKeyedSubscript:@"hasVideoComplement"];

        [(PHImportDuplicateChecker *)self _populateCachesWithAssetInfo:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v9);
  }

  v17 = PLImportGetLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = [v7 count];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    *buf = 134218240;
    v27 = v18;
    v28 = 2048;
    v29 = v19 - v6;
    _os_log_impl(&dword_19C86F000, v17, OS_LOG_TYPE_DEBUG, "DUPLICATE POPULATE: time to POPULATE caches for %lu asset infos: %g", buf, 0x16u);
  }

  v20 = [v7 count];
  return v20;
}

+ (id)_fetchAssetInfoFromLibrary:(id)library forFileSizes:(id)sizes
{
  v50[2] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  sizesCopy = sizes;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v7 = v6;
  if (_fetchAssetInfoFromLibrary_forFileSizes__onceToken != -1)
  {
    dispatch_once(&_fetchAssetInfoFromLibrary_forFileSizes__onceToken, &__block_literal_global_62);
  }

  sizesCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"originalFilesize", sizesCopy];
  v8 = MEMORY[0x1E696AB28];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex:(%K) == %d", @"asset.visibilityState", 0];
  v50[0] = v9;
  v10 = MEMORY[0x1E696AB28];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"asset.avalancheUUID"];
  v49[0] = v11;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"asset.avalancheKind", 1];
  v49[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v14 = [v10 andPredicateWithSubpredicates:v13];
  v50[1] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:2];
  v16 = [v8 orPredicateWithSubpredicates:v15];

  v17 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:"maskForUserLibrary") keyPathPrefix:{0, @"asset"}];
  v18 = MEMORY[0x1E696AB28];
  v48[0] = sizesCopy;
  v48[1] = v16;
  v48[2] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];
  v20 = [v18 andPredicateWithSubpredicates:v19];

  v21 = MEMORY[0x1E695D5E0];
  entityName = [MEMORY[0x1E69BE250] entityName];
  v23 = [v21 fetchRequestWithEntityName:entityName];

  [v23 setPredicate:v20];
  [v23 setPropertiesToFetch:_fetchAssetInfoFromLibrary_forFileSizes__properties];
  [v23 setResultType:2];
  managedObjectContext = [libraryCopy managedObjectContext];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = 0;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __68__PHImportDuplicateChecker__fetchAssetInfoFromLibrary_forFileSizes___block_invoke_152;
  v34[3] = &unk_1E75AA3F8;
  v37 = &v38;
  v25 = managedObjectContext;
  v35 = v25;
  v26 = v23;
  v36 = v26;
  [v25 performBlockAndWait:v34];

  v27 = PLImportGetLog();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v28 = [sizesCopy count];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    *buf = 134218240;
    v45 = v28;
    v46 = 2048;
    v47 = v29 - v7;
    _os_log_impl(&dword_19C86F000, v27, OS_LOG_TYPE_DEBUG, "DUPLICATE QUERY: time to FETCH asset info from database for %lu file sizes: %g", buf, 0x16u);
  }

  v30 = v39[5];
  _Block_object_dispose(&v38, 8);

  return v30;
}

uint64_t __68__PHImportDuplicateChecker__fetchAssetInfoFromLibrary_forFileSizes___block_invoke_152(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) executeFetchRequest:*(a1 + 40) error:0];

  return MEMORY[0x1EEE66BB8]();
}

void __68__PHImportDuplicateChecker__fetchAssetInfoFromLibrary_forFileSizes___block_invoke()
{
  v4[12] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v0 setName:@"objectID"];
  v1 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  [v0 setExpression:v1];

  [v0 setExpressionResultType:2000];
  v4[0] = v0;
  v4[1] = @"asset";
  v4[2] = @"originalFilesize";
  v4[3] = @"originalFilename";
  v4[4] = @"alternateImportImageDate";
  v4[5] = @"timeZoneOffset";
  v4[6] = @"originalStableHash";
  v4[7] = @"originatingAssetIdentifier";
  v4[8] = @"asset.dateCreated";
  v4[9] = @"asset.trashedState";
  v4[10] = @"asset.kindSubtype";
  v4[11] = @"asset.uuid";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:12];
  v3 = _fetchAssetInfoFromLibrary_forFileSizes__properties;
  _fetchAssetInfoFromLibrary_forFileSizes__properties = v2;
}

+ (id)_dateWithDate:(id)date
{
  if (date)
  {
    [date timeIntervalSinceReferenceDate];
    v3 = vars8;
  }

  else
  {
    v4 = NAN;
  }

  v5 = MEMORY[0x1E695DF00];

  return [v5 dateWithTimeIntervalSinceReferenceDate:v4];
}

+ (id)duplicatesFromResults:(id)results forLibrary:(id)library
{
  resultsCopy = results;
  photoLibraryURL = [library photoLibraryURL];
  path = [photoLibraryURL path];
  v8 = [resultsCopy objectForKeyedSubscript:path];

  allObjects = [v8 allObjects];

  return allObjects;
}

@end