@interface CloudBookmarkDebugger
- (CloudBookmarkDebugger)initWithStore:(id)store databaseAccessor:(id)accessor;
- (id)_dataTreeAsPlistWithRecords:(id)records deletedRecordIDs:(id)ds includingDeletedBookmarks:(BOOL)bookmarks;
- (id)_dictionaryRepresentationForCKShare:(id)share;
- (id)_dictionaryRepresentationForEncryptionRecord:(id)record;
- (id)_dictionaryRepresentationForGenericRecord:(id)record;
- (id)_dictionaryRepresentationForMigrationRecord:(id)record;
- (id)_dictionaryRepresentationForPresenceRecord:(id)record;
- (id)_dictionaryRepresentationForRecord:(id)record;
- (id)_dictionaryRepresentationForRecordWrapper:(id)wrapper;
- (id)_dictionaryRepresentationForSyncRequirementsRecord:(id)record;
- (id)_dictionaryRepresentationForTabGroupParticipantPositionRecord:(id)record;
- (id)_dictionaryRepresentationForTabGroupTabParticipantStatusRecord:(id)record;
- (id)_namesByUserRecordIDsForShare:(id)share;
- (void)_enumerateRecordTreeWithRecords:(id)records deletedRecordIDs:(id)ds usingBlock:(id)block;
- (void)_fetchAllChangesInDatabase:(id)database recordWasChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock completionHandler:(id)handler;
- (void)_printOrderedRecords:(id)records deletedRecordIDs:(id)ds targetFileDescriptor:(int)descriptor;
- (void)_printToFile:(id)file usingBlock:(id)block;
- (void)_printTreeWithRecords:(id)records deletedRecordIDs:(id)ds includingDeletedBookmarks:(BOOL)bookmarks targetFileDescriptor:(int)descriptor;
- (void)dumpCloudKitDataPrintByDates:(BOOL)dates liveOnly:(BOOL)only printTree:(BOOL)tree printPlist:(BOOL)plist writeToFile:(BOOL)file atFileURL:(id)l completionHandler:(id)handler;
@end

@implementation CloudBookmarkDebugger

- (CloudBookmarkDebugger)initWithStore:(id)store databaseAccessor:(id)accessor
{
  storeCopy = store;
  accessorCopy = accessor;
  v16.receiver = self;
  v16.super_class = CloudBookmarkDebugger;
  v9 = [(CloudBookmarkDebugger *)&v16 init];
  if (v9)
  {
    v10 = [CKRecordID alloc];
    v11 = [[CKRecordZoneID alloc] initWithZoneName:@"(null)" ownerName:CKCurrentUserDefaultName];
    v12 = [v10 initWithRecordName:@"(null)" zoneID:v11];
    nullRecordID = v9->_nullRecordID;
    v9->_nullRecordID = v12;

    objc_storeStrong(&v9->_store, store);
    objc_storeStrong(&v9->_databaseAccessor, accessor);
    v14 = v9;
  }

  return v9;
}

- (void)dumpCloudKitDataPrintByDates:(BOOL)dates liveOnly:(BOOL)only printTree:(BOOL)tree printPlist:(BOOL)plist writeToFile:(BOOL)file atFileURL:(id)l completionHandler:(id)handler
{
  fileCopy = file;
  plistCopy = plist;
  treeCopy = tree;
  onlyCopy = only;
  datesCopy = dates;
  lCopy = l;
  handlerCopy = handler;
  dsema = dispatch_semaphore_create(0);
  v142 = +[NSDate date];
  v9 = dispatch_group_create();
  v275 = 0;
  v276 = &v275;
  v277 = 0x3032000000;
  v278 = sub_1000014B0;
  v279 = sub_1000429D4;
  v280 = 0;
  dispatch_group_enter(v9);
  store = self->_store;
  v272[0] = _NSConcreteStackBlock;
  v272[1] = 3221225472;
  v272[2] = sub_1000429DC;
  v272[3] = &unk_100133160;
  v274 = &v275;
  group = v9;
  v273 = group;
  [(CloudBookmarkStore *)store fetchUserIdentityInOperationGroup:0 withCompletionHandler:v272];
  v161 = +[NSMutableDictionary dictionary];
  v160 = +[NSMutableDictionary dictionary];
  v159 = +[NSMutableArray array];
  v165 = +[NSMutableArray array];
  v158 = +[NSMutableArray array];
  v164 = +[NSMutableArray array];
  v169 = +[NSMutableDictionary dictionary];
  v170 = +[NSMutableDictionary dictionary];
  v166 = +[NSMutableSet set];
  v171 = +[NSMutableDictionary dictionary];
  v11 = +[NSCountedSet set];
  [v171 setObject:v11 forKeyedSubscript:&off_10013C3C8];

  v12 = +[NSCountedSet set];
  [v171 setObject:v12 forKeyedSubscript:&off_10013C3E0];

  v13 = +[NSCountedSet set];
  [v171 setObject:v13 forKeyedSubscript:&off_10013C3F8];

  cloudBookmarkItemConfigurations = [(CloudBookmarkStore *)self->_store cloudBookmarkItemConfigurations];
  v157 = [cloudBookmarkItemConfigurations copy];

  container = [(CloudBookmarkStore *)self->_store container];
  privateCloudDatabase = [container privateCloudDatabase];
  v293[0] = privateCloudDatabase;
  container2 = [(CloudBookmarkStore *)self->_store container];
  sharedCloudDatabase = [container2 sharedCloudDatabase];
  v293[1] = sharedCloudDatabase;
  v19 = [NSArray arrayWithObjects:v293 count:2];

  v291[0] = &off_10013C3F8;
  v20 = +[NSMutableArray array];
  v291[1] = &off_10013C410;
  v292[0] = v20;
  v21 = +[NSMutableArray array];
  v292[1] = v21;
  v163 = [NSDictionary dictionaryWithObjects:v292 forKeys:v291 count:2];

  v289[0] = &off_10013C3F8;
  v22 = +[NSMutableArray array];
  v289[1] = &off_10013C410;
  v290[0] = v22;
  v23 = +[NSMutableArray array];
  v290[1] = v23;
  v162 = [NSDictionary dictionaryWithObjects:v290 forKeys:v289 count:2];

  v268 = 0;
  v269 = &v268;
  v270 = 0x2020000000;
  v271 = 0;
  v264 = 0u;
  v265 = 0u;
  v266 = 0u;
  v267 = 0u;
  obj = v19;
  v24 = [obj countByEnumeratingWithState:&v264 objects:v288 count:16];
  if (v24)
  {
    v25 = *v265;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v265 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v264 + 1) + 8 * i);
        dispatch_group_enter(group);
        v256[0] = _NSConcreteStackBlock;
        v256[1] = 3221225472;
        v256[2] = sub_100042A3C;
        v256[3] = &unk_1001331B0;
        v257 = v159;
        v258 = v161;
        v28 = v157;
        v259 = v28;
        v260 = v165;
        v29 = v166;
        v261 = v29;
        v262 = v171;
        v263 = v169;
        v249[0] = _NSConcreteStackBlock;
        v249[1] = 3221225472;
        v249[2] = sub_100042D2C;
        v249[3] = &unk_1001331D8;
        v250 = v160;
        v251 = v170;
        v252 = v158;
        v253 = v28;
        v254 = v164;
        v255 = v29;
        v243[0] = _NSConcreteStackBlock;
        v243[1] = 3221225472;
        v243[2] = sub_100042F10;
        v243[3] = &unk_100133200;
        v248 = &v268;
        v244 = v163;
        v245 = v27;
        v246 = v162;
        v247 = group;
        [(CloudBookmarkDebugger *)self _fetchAllChangesInDatabase:v27 recordWasChangedBlock:v256 recordWithIDWasDeletedBlock:v249 completionHandler:v243];
      }

      v24 = [obj countByEnumeratingWithState:&v264 objects:v288 count:16];
    }

    while (v24);
  }

  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  if ((v269[3] & 1) == 0)
  {
    v137 = +[NSDate date];
    [v137 timeIntervalSinceDate:v142];
    v129 = v30;
    WBSPrintf();
    v143 = +[NSMutableSet set];
    allKeys = [v169 allKeys];
    [v143 addObjectsFromArray:allKeys];

    allKeys2 = [v170 allKeys];
    [v143 addObjectsFromArray:allKeys2];

    allObjects = [v143 allObjects];
    v241[0] = _NSConcreteStackBlock;
    v241[1] = 3221225472;
    v241[2] = sub_100043020;
    v241[3] = &unk_100133228;
    v175 = v166;
    v242 = v175;
    v132 = [allObjects sortedArrayUsingComparator:v241];

    v34 = [v169 objectForKeyedSubscript:@"TabGroupTabParticipantPresence"];
    v136 = [v34 sortedArrayUsingComparator:&stru_100133268];

    if (!plistCopy)
    {
      v83 = &CPSharedResourcesDirectory_ptr;
      goto LABEL_61;
    }

    v35 = [(CloudBookmarkDebugger *)self _dataTreeAsPlistWithRecords:v165 deletedRecordIDs:v164 includingDeletedBookmarks:!onlyCopy];
    v146 = [v35 mutableCopy];

    v36 = +[NSMutableDictionary dictionary];
    [v146 setObject:v36 forKeyedSubscript:@"Tombstones"];
    v154 = v36;
    v239 = 0u;
    v240 = 0u;
    v237 = 0u;
    v238 = 0u;
    v37 = v143;
    v38 = [v37 countByEnumeratingWithState:&v237 objects:v287 count:16];
    if (v38)
    {
      v39 = *v238;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v238 != v39)
          {
            objc_enumerationMutation(v37);
          }

          v41 = *(*(&v237 + 1) + 8 * j);
          v42 = [v170 objectForKeyedSubscript:v41];
          if ([v42 count])
          {
            v43 = [v42 sortedArrayUsingComparator:&stru_1001332A8];
            v44 = [v43 safari_mapObjectsUsingBlock:&stru_1001332E8];
            [v154 setObject:v44 forKeyedSubscript:v41];
          }
        }

        v38 = [v37 countByEnumeratingWithState:&v237 objects:v287 count:16];
      }

      while (v38);
    }

    v173 = +[NSMutableDictionary dictionary];
    v235 = 0u;
    v236 = 0u;
    v233 = 0u;
    v234 = 0u;
    v45 = v37;
    v46 = [v45 countByEnumeratingWithState:&v233 objects:v286 count:16];
    if (v46)
    {
      v47 = *v234;
      do
      {
        for (k = 0; k != v46; k = k + 1)
        {
          if (*v234 != v47)
          {
            objc_enumerationMutation(v45);
          }

          v49 = *(*(&v233 + 1) + 8 * k);
          v50 = +[NSMutableDictionary dictionary];
          [v173 setObject:v50 forKeyedSubscript:v49];
          v51 = [v169 objectForKeyedSubscript:v49];
          v52 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v51 count]);
          [v50 setObject:v52 forKeyedSubscript:@"NumberOfRecords"];

          v53 = [v170 objectForKeyedSubscript:v49];
          v54 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v53 count]);
          [v50 setObject:v54 forKeyedSubscript:@"NumberOfTombstones"];

          if ([v175 containsObject:v49])
          {
            v230[0] = _NSConcreteStackBlock;
            v230[1] = 3221225472;
            v230[2] = sub_100043264;
            v230[3] = &unk_100133310;
            v231 = v50;
            v232 = v49;
            [v171 enumerateKeysAndObjectsUsingBlock:v230];
          }
        }

        v46 = [v45 countByEnumeratingWithState:&v233 objects:v286 count:16];
      }

      while (v46);
    }

    [v146 setObject:v173 forKeyedSubscript:@"RecordCountsByTypes"];
    v55 = +[NSMutableDictionary dictionary];
    v144 = [v169 objectForKeyedSubscript:CKRecordTypeShare];
    v227[0] = _NSConcreteStackBlock;
    v227[1] = 3221225472;
    v227[2] = sub_100043344;
    v227[3] = &unk_100133338;
    v150 = v55;
    v228 = v150;
    selfCopy = self;
    v56 = [v144 safari_mapObjectsUsingBlock:v227];
    [v146 setObject:v56 forKeyedSubscript:@"Shares"];

    if ([v136 count])
    {
      v57 = +[NSMutableArray array];
      [v146 setObject:v57 forKeyedSubscript:@"Presence"];
      v225 = 0u;
      v226 = 0u;
      v223 = 0u;
      v224 = 0u;
      v152 = v136;
      v58 = [v152 countByEnumeratingWithState:&v223 objects:v285 count:16];
      if (!v58)
      {
        goto LABEL_45;
      }

      v59 = *v224;
      while (1)
      {
        for (m = 0; m != v58; m = m + 1)
        {
          if (*v224 != v59)
          {
            objc_enumerationMutation(v152);
          }

          v61 = *(*(&v223 + 1) + 8 * m);
          v62 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForPresenceRecord:v61];
          recordID = [v61 recordID];
          recordName = [recordID recordName];
          v65 = [recordName isEqualToString:@"UserTabGroupPresence"];

          if (v65)
          {
            [v57 addObject:v62];
            goto LABEL_43;
          }

          v66 = [v62 mutableCopy];
          v67 = [v61 objectForKeyedSubscript:@"Participant"];
          recordID2 = [v67 recordID];

          v69 = [v150 objectForKeyedSubscript:recordID2];
          [v66 setObject:v69 forKeyedSubscript:@"UserName"];

          if (!recordID2)
          {
LABEL_41:
            v72 = &__kCFBooleanFalse;
            goto LABEL_42;
          }

          recordName2 = [recordID2 recordName];
          if ([recordName2 isEqualToString:CKCurrentUserDefaultName])
          {
          }

          else
          {
            v71 = [recordID2 isEqual:v276[5]];

            if (!v71)
            {
              goto LABEL_41;
            }
          }

          v72 = &__kCFBooleanTrue;
LABEL_42:
          [v66 setObject:v72 forKeyedSubscript:@"IsCurrentUser"];
          [v57 addObject:v66];

LABEL_43:
        }

        v58 = [v152 countByEnumeratingWithState:&v223 objects:v285 count:16];
        if (!v58)
        {
LABEL_45:

          break;
        }
      }
    }

    +[NSMutableDictionary dictionary];
    v220[0] = _NSConcreteStackBlock;
    v220[1] = 3221225472;
    v220[2] = sub_1000433C8;
    v73 = v220[3] = &unk_1001333A8;
    v221 = v73;
    selfCopy2 = self;
    [v161 enumerateKeysAndObjectsUsingBlock:v220];
    [v146 setObject:v73 forKeyedSubscript:@"RecordsByZones"];
    +[NSMutableDictionary dictionary];
    v218[0] = _NSConcreteStackBlock;
    v218[1] = 3221225472;
    v218[2] = sub_10004352C;
    v74 = v218[3] = &unk_100133410;
    v219 = v74;
    [v160 enumerateKeysAndObjectsUsingBlock:v218];
    [v146 setObject:v74 forKeyedSubscript:@"DeletedRecordIDsByZones"];
    if (!fileCopy)
    {
      v217 = 0;
      v75 = [NSPropertyListSerialization dataWithPropertyList:v146 format:100 options:0 error:&v217];
      v82 = v217;
      if (v75)
      {
        v131 = [[NSString alloc] initWithData:v75 encoding:4];
        WBSPrintf();
      }

      else
      {
        WBSPrintf();
      }

      dispatch_semaphore_signal(dsema);
LABEL_60:

      v83 = &CPSharedResourcesDirectory_ptr;
      if (!fileCopy)
      {
LABEL_98:

        goto LABEL_99;
      }

LABEL_61:
      v84 = [v83[429] arrayWithObjects:{@"Type", &stru_100137BA8, 0}];
      v284[0] = v84;
      v85 = [NSMutableArray arrayWithObjects:@"Count", &stru_100137BA8, 0];
      v284[1] = v85;
      v86 = [NSMutableArray arrayWithObjects:@"Tombstones", &stru_100137BA8, 0];
      v284[2] = v86;
      v87 = [NSArray arrayWithObjects:v284 count:3];

      allKeys3 = [v171 allKeys];
      v151 = [allKeys3 sortedArrayUsingSelector:"compare:"];

      v89 = [v151 safari_mapObjectsUsingBlock:&stru_100133450];
      v90 = [v87 arrayByAddingObjectsFromArray:v89];

      v91 = +[NSMutableArray array];
      v213 = 0u;
      v214 = 0u;
      v211 = 0u;
      v212 = 0u;
      v92 = v90;
      v93 = [v92 countByEnumeratingWithState:&v211 objects:v283 count:16];
      if (v93)
      {
        v94 = *v212;
        do
        {
          for (n = 0; n != v93; n = n + 1)
          {
            if (*v212 != v94)
            {
              objc_enumerationMutation(v92);
            }

            firstObject = [*(*(&v211 + 1) + 8 * n) firstObject];
            v97 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [firstObject length]);
            [v91 addObject:v97];
          }

          v93 = [v92 countByEnumeratingWithState:&v211 objects:v283 count:16];
        }

        while (v93);
      }

      v208[0] = _NSConcreteStackBlock;
      v208[1] = 3221225472;
      v208[2] = sub_100043774;
      v208[3] = &unk_100133478;
      v147 = v92;
      v209 = v147;
      v145 = v91;
      v210 = v145;
      v174 = objc_retainBlock(v208);
      v206 = 0u;
      v207 = 0u;
      v204 = 0u;
      v205 = 0u;
      v148 = v132;
      v153 = [v148 countByEnumeratingWithState:&v204 objects:v282 count:16];
      if (v153)
      {
        v149 = *v205;
        do
        {
          for (ii = 0; ii != v153; ii = ii + 1)
          {
            if (*v205 != v149)
            {
              objc_enumerationMutation(v148);
            }

            v98 = *(*(&v204 + 1) + 8 * ii);
            (v174[2])(v174, v98, 0);
            v99 = [v169 objectForKeyedSubscript:v98];
            v100 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v99 count]);
            stringValue = [v100 stringValue];
            (v174[2])(v174, stringValue, 1);

            v102 = [v170 objectForKeyedSubscript:v98];
            v103 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v102 count]);
            stringValue2 = [v103 stringValue];
            (v174[2])(v174, stringValue2, 2);

            v202 = 0u;
            v203 = 0u;
            v200 = 0u;
            v201 = 0u;
            v105 = v151;
            v106 = [v105 countByEnumeratingWithState:&v200 objects:v281 count:16];
            if (v106)
            {
              v107 = *v201;
              v108 = 3;
              do
              {
                for (jj = 0; jj != v106; jj = jj + 1)
                {
                  if (*v201 != v107)
                  {
                    objc_enumerationMutation(v105);
                  }

                  v110 = *(*(&v200 + 1) + 8 * jj);
                  stringValue3 = &stru_100137BA8;
                  if ([v175 containsObject:v98])
                  {
                    v112 = [v171 objectForKeyedSubscript:v110];
                    v113 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v112 countForObject:v98]);
                    stringValue3 = [v113 stringValue];
                  }

                  (v174[2])(v174, stringValue3, v108);

                  ++v108;
                }

                v106 = [v105 countByEnumeratingWithState:&v200 objects:v281 count:16];
              }

              while (v106);
            }
          }

          v153 = [v148 countByEnumeratingWithState:&v204 objects:v282 count:16];
        }

        while (v153);
      }

      v114 = [NSMutableString stringWithFormat:@"Did finish fetching records:\n"];
      v115 = [v163 objectForKeyedSubscript:&off_10013C3F8];
      v116 = [v115 count];
      v117 = [v162 objectForKeyedSubscript:&off_10013C3F8];
      [v114 appendFormat:@"\tRetrieved private database zones: %zu, deleted zones: %zu\n", v116, objc_msgSend(v117, "count")];

      v118 = [v163 objectForKeyedSubscript:&off_10013C410];
      v119 = [v118 count];
      v120 = [v162 objectForKeyedSubscript:&off_10013C410];
      [v114 appendFormat:@"\tRetrieved shared database zones: %zu, deleted zones: %zu\n", v119, objc_msgSend(v120, "count")];

      [v114 appendFormat:@"\tRetrieved records: %zu, deleted records: %zu\n", objc_msgSend(v159, "count"), objc_msgSend(v158, "count")];
      [v114 appendString:@"\n"];
      v121 = [v147 objectAtIndexedSubscript:0];
      v122 = [v121 count];

      if (v122)
      {
        for (kk = 0; kk != v122; ++kk)
        {
          v124 = [@"|" mutableCopy];
          v196[0] = _NSConcreteStackBlock;
          v196[1] = 3221225472;
          v196[2] = sub_100043850;
          v196[3] = &unk_1001334A0;
          v199 = kk;
          v125 = v124;
          v197 = v125;
          v198 = v147;
          [v145 enumerateObjectsUsingBlock:v196];
          [v125 appendString:@"\n"];
          [v114 appendString:v125];
        }
      }

      [v114 appendString:@"\n"];
      v189[0] = _NSConcreteStackBlock;
      v189[1] = 3221225472;
      v189[2] = sub_100043980;
      v189[3] = &unk_1001334E8;
      v190 = v170;
      v191 = v148;
      v192 = v169;
      selfCopy3 = self;
      v194 = v136;
      v195 = &v275;
      v126 = objc_retainBlock(v189);
      if (treeCopy)
      {
        if (fileCopy)
        {
          v137 = [NSString stringWithFormat:@"CloudKitData-Tree-%@.txt", v137];
        }

        else
        {
          v137 = 0;
        }

        v182[0] = _NSConcreteStackBlock;
        v182[1] = 3221225472;
        v182[2] = sub_1000442D4;
        v182[3] = &unk_100133510;
        v182[4] = self;
        v183 = v165;
        v184 = v164;
        v187 = onlyCopy;
        v186 = v126;
        v188 = fileCopy;
        v185 = v114;
        [(CloudBookmarkDebugger *)self _printToFile:v137 usingBlock:v182];
      }

      if (datesCopy)
      {
        if (fileCopy)
        {
          v1372 = [NSString stringWithFormat:@"CloudKitData-Dates-%@.txt", v137];
        }

        else
        {
          v1372 = 0;
        }

        v176[0] = _NSConcreteStackBlock;
        v176[1] = 3221225472;
        v176[2] = sub_100044354;
        v176[3] = &unk_100133538;
        v176[4] = self;
        v177 = v165;
        v178 = v164;
        v180 = v126;
        v181 = fileCopy;
        v179 = v114;
        [(CloudBookmarkDebugger *)self _printToFile:v1372 usingBlock:v176];
      }

      WBSPrintf();

      goto LABEL_98;
    }

    v216 = 0;
    v75 = [NSPropertyListSerialization dataWithPropertyList:v146 format:200 options:0 error:&v216];
    v76 = v216;
    if (!lCopy)
    {
      v77 = +[NSFileManager defaultManager];
      currentDirectoryPath = [v77 currentDirectoryPath];
      v1373 = [NSString stringWithFormat:@"CloudKitData-Full-%@.plist", v137];
      v80 = [currentDirectoryPath stringByAppendingPathComponent:v1373];
      lCopy = [NSURL fileURLWithPath:v80];
    }

    if (v75)
    {
      v215 = v76;
      v81 = [v75 writeToURL:lCopy options:0 error:&v215];
      v82 = v215;

      if (v81)
      {
        path = [lCopy path];
        WBSPrintf();

LABEL_59:
        handlerCopy[2](handlerCopy, v82);
        goto LABEL_60;
      }
    }

    else
    {
      v82 = v76;
    }

    WBSPrintf();
    goto LABEL_59;
  }

LABEL_99:
  _Block_object_dispose(&v268, 8);

  _Block_object_dispose(&v275, 8);
}

- (void)_enumerateRecordTreeWithRecords:(id)records deletedRecordIDs:(id)ds usingBlock:(id)block
{
  recordsCopy = records;
  dsCopy = ds;
  blockCopy = block;
  v57[0] = WBSCloudBookmarkListRecordNameFavoritesBar;
  v57[1] = WBSCloudBookmarkListRecordNameBookmarksMenu;
  v57[2] = WBSCloudBookmarkListRecordNameReadingList;
  v11 = [NSArray arrayWithObjects:v57 count:3];
  v12 = [NSOrderedSet orderedSetWithArray:v11];

  v41 = dsCopy;
  v13 = [NSSet setWithArray:dsCopy];
  v14 = +[NSMutableDictionary dictionary];
  v15 = +[NSMutableDictionary dictionary];
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100044820;
  v52[3] = &unk_100133588;
  v52[4] = self;
  v16 = v14;
  v53 = v16;
  v42 = v15;
  v54 = v42;
  v40 = v12;
  v55 = v40;
  v17 = objc_retainBlock(v52);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v18 = recordsCopy;
  v19 = [v18 countByEnumeratingWithState:&v48 objects:v56 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v49;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v49 != v21)
        {
          objc_enumerationMutation(v18);
        }

        (v17[2])(v17, *(*(&v48 + 1) + 8 * i));
      }

      v20 = [v18 countByEnumeratingWithState:&v48 objects:v56 count:16];
    }

    while (v20);
  }

  v23 = +[NSMutableArray array];
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_100044B5C;
  v43[3] = &unk_1001335B0;
  v39 = v16;
  v44 = v39;
  v38 = v13;
  v45 = v38;
  v24 = v23;
  v46 = v24;
  selfCopy = self;
  [v42 enumerateKeysAndObjectsUsingBlock:v43];
  v37 = v24;
  v25 = [NSMutableArray arrayWithObject:v24];
  lastObject = [v25 lastObject];
  if (lastObject)
  {
    v27 = lastObject;
    do
    {
      firstObject = [v27 firstObject];
      if (firstObject)
      {
        v29 = firstObject;
        while (1)
        {
          [v27 removeObjectAtIndex:0];
          blockCopy[2](blockCopy, v29, [v25 count] - 1);
          recordID = [v29 recordID];
          v31 = [v42 objectForKeyedSubscript:recordID];
          v32 = [v31 mutableCopy];

          if (v32)
          {
            break;
          }

          firstObject2 = [v27 firstObject];

          v29 = firstObject2;
          if (!firstObject2)
          {
            goto LABEL_16;
          }
        }

        [v25 addObject:v32];
      }

LABEL_16:
      lastObject2 = [v25 lastObject];
      v35 = [lastObject2 count];

      if (!v35)
      {
        [v25 removeLastObject];
      }

      lastObject3 = [v25 lastObject];

      v27 = lastObject3;
    }

    while (lastObject3);
  }
}

- (void)_printToFile:(id)file usingBlock:(id)block
{
  fileCopy = file;
  if (fileCopy)
  {
    blockCopy = block;
    v6 = +[NSFileManager defaultManager];
    currentDirectoryPath = [v6 currentDirectoryPath];
    blockCopy2 = [currentDirectoryPath stringByAppendingPathComponent:fileCopy];

    v9 = +[NSData data];
    [v9 writeToFile:blockCopy2 options:0 error:0];

    v10 = [NSFileHandle fileHandleForWritingAtPath:blockCopy2];
    blockCopy[2](blockCopy, [v10 fileDescriptor]);

    [v10 closeFile];
    WBSPrintf();
  }

  else
  {
    v11 = __stdoutp;
    blockCopy2 = block;
    v12 = fileno(v11);
    (*(block + 2))(blockCopy2, v12);
  }
}

- (void)_printTreeWithRecords:(id)records deletedRecordIDs:(id)ds includingDeletedBookmarks:(BOOL)bookmarks targetFileDescriptor:(int)descriptor
{
  recordsCopy = records;
  dsCopy = ds;
  WBSDPrintf();
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100045258;
  v12[3] = &unk_1001335D8;
  bookmarksCopy = bookmarks;
  descriptorCopy = descriptor;
  v12[4] = &v15;
  [(CloudBookmarkDebugger *)self _enumerateRecordTreeWithRecords:recordsCopy deletedRecordIDs:dsCopy usingBlock:v12];
  if ((v16[3] & 1) == 0)
  {
    WBSDPrintf();
  }

  _Block_object_dispose(&v15, 8);
}

- (void)_printOrderedRecords:(id)records deletedRecordIDs:(id)ds targetFileDescriptor:(int)descriptor
{
  dsCopy = ds;
  v7 = [records sortedArrayUsingComparator:&stru_1001335F8];
  createDatabase = [(WBSBookmarkDBAccess *)self->_databaseAccessor createDatabase];
  WBSDPrintf();
  WBSDPrintf();
  WBSDPrintf();
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = v7;
  v75 = [obj countByEnumeratingWithState:&v94 objects:v99 count:16];
  selfCopy = self;
  if (v75)
  {
    v74 = *v95;
    do
    {
      v8 = 0;
      do
      {
        if (*v95 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v85 = v8;
        v9 = *(*(&v94 + 1) + 8 * v8);
        v83 = [(CloudBookmarkStore *)self->_store cloudBookmarkItemConfigurationForRecord:v9, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70];
        v10 = [[CloudBookmarkRecordWrapper alloc] initWithRecord:v9 configuration:v83];
        safari_state = [v9 safari_state];
        v12 = @" ";
        if (safari_state != 1)
        {
          v12 = @"/";
        }

        v88 = v12;
        databaseAccessor = self->_databaseAccessor;
        recordName = [(CloudBookmarkRecordWrapper *)v10 recordName];
        v15 = [(WBSBookmarkDBAccess *)databaseAccessor copyItemWithServerId:recordName database:createDatabase];

        if (v15)
        {
          v16 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copySyncDataWithItem:v15];
          v17 = [WBBookmarkSyncData syncDataWithContentsOfData:v16];

          record = [v17 record];
          if (record)
          {
            record2 = [v17 record];
            recordChangeTag = [record2 recordChangeTag];
            recordChangeTag2 = [v9 recordChangeTag];
            v22 = [recordChangeTag isEqualToString:recordChangeTag2];

            self = selfCopy;
            v23 = @" ";
            if (!v22)
            {
              v23 = @"*";
            }
          }

          else
          {

            v23 = @"/";
          }

          v88 = v23;
          CFRelease(v15);

          v24 = @"-";
        }

        else
        {
          v24 = @"+";
        }

        v25 = @"D";
        if (safari_state != 1)
        {
          v25 = @"L";
        }

        if ((safari_state != 1) != (v15 != 0))
        {
          v26 = v24;
        }

        else
        {
          v26 = @" ";
        }

        v27 = v25;
        v28 = v26;
        isFolderRecord = [(CloudBookmarkRecordWrapper *)v10 isFolderRecord];
        minimumAPIVersion = [(CloudBookmarkRecordWrapper *)v10 minimumAPIVersion];
        recordName2 = [(CloudBookmarkRecordWrapper *)v10 recordName];
        modificationDate = [v9 modificationDate];
        recordChangeTag3 = [v9 recordChangeTag];
        parentRecordName = [(CloudBookmarkRecordWrapper *)v10 parentRecordName];
        title = [(CloudBookmarkRecordWrapper *)v10 title];
        v81 = recordChangeTag3;
        v77 = modificationDate;
        if (isFolderRecord)
        {
          position = [(CloudBookmarkRecordWrapper *)v10 position];
          v67 = title;
          v68 = position;
          v65 = recordChangeTag3;
          v66 = parentRecordName;
          v63 = recordName2;
          v64 = modificationDate;
          v61 = v27;
          v62 = minimumAPIVersion;
          v36 = v88;
          v59 = v28;
          v60 = v88;
          WBSDPrintf();
        }

        else
        {
          position = [(CloudBookmarkRecordWrapper *)v10 url];
          isPinned = [(CloudBookmarkRecordWrapper *)v10 isPinned];
          v38 = @"NO";
          if (isPinned)
          {
            v38 = @"YES";
          }

          v73 = v28;
          v39 = title;
          v40 = parentRecordName;
          v41 = recordName2;
          v42 = v38;
          [(CloudBookmarkRecordWrapper *)v10 position];
          v70 = v69 = v42;
          v67 = v39;
          v68 = position;
          v65 = recordChangeTag3;
          v66 = v40;
          v63 = v41;
          v64 = modificationDate;
          v61 = v27;
          v62 = minimumAPIVersion;
          v43 = v27;
          v36 = v88;
          v27 = v73;
          v59 = v73;
          v60 = v88;
          WBSDPrintf();

          recordName2 = v41;
          parentRecordName = v40;
          title = v39;

          v28 = v70;
          self = selfCopy;
        }

        v8 = v85 + 1;
      }

      while (v75 != (v85 + 1));
      v75 = [obj countByEnumeratingWithState:&v94 objects:v99 count:16];
    }

    while (v75);
  }

  WBSDPrintf();
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v80 = dsCopy;
  v44 = [v80 countByEnumeratingWithState:&v90 objects:v98 count:16];
  if (v44)
  {
    v45 = v44;
    v82 = *v91;
    do
    {
      v46 = 0;
      v78 = v45;
      do
      {
        if (*v91 != v82)
        {
          objc_enumerationMutation(v80);
        }

        recordName3 = [*(*(&v90 + 1) + 8 * v46) recordName];
        v48 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyItemWithServerId:recordName3 database:createDatabase];
        if (v48)
        {
          v49 = v48;
          v50 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copySyncDataWithItem:v48];
          v51 = [WBBookmarkSyncData syncDataWithContentsOfData:v50];

          v89 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyParentServerIdWithItem:v49];
          v86 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyValueForKey:@"Title" item:v49];
          record3 = [v51 record];
          v53 = [record3 objectForKeyedSubscript:@"MinimumAPIVersion"];
          integerValue = [v53 integerValue];

          v54 = [(WBSBookmarkDBAccess *)self->_databaseAccessor itemTypeWithItem:v49];
          modificationDate2 = [record3 modificationDate];
          recordChangeTag4 = [record3 recordChangeTag];
          if (v54 == 1)
          {
            position2 = [v51 position];
            v64 = v86;
            v65 = position2;
            v62 = recordChangeTag4;
            v63 = v89;
            v60 = recordName3;
            v61 = modificationDate2;
            v59 = integerValue;
            WBSDPrintf();
          }

          else
          {
            position2 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyValueForKey:@"URL" item:v49];
            v58 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyValueForKey:@"IsPinned" item:v49];
            [v51 position];
            v67 = v66 = v58;
            v64 = v86;
            v65 = position2;
            v62 = recordChangeTag4;
            v63 = v89;
            v60 = recordName3;
            v61 = modificationDate2;
            v59 = integerValue;
            WBSDPrintf();

            self = selfCopy;
            v45 = v78;
          }

          CFRelease(v49);
        }

        v46 = v46 + 1;
      }

      while (v45 != v46);
      v45 = [v80 countByEnumeratingWithState:&v90 objects:v98 count:16];
    }

    while (v45);
  }

  [(WBSBookmarkDBAccess *)self->_databaseAccessor closeDatabase:createDatabase shouldSave:0];
  CFRelease(createDatabase);
}

- (id)_dataTreeAsPlistWithRecords:(id)records deletedRecordIDs:(id)ds includingDeletedBookmarks:(BOOL)bookmarks
{
  dsCopy = ds;
  recordsCopy = records;
  v10 = +[NSMutableDictionary dictionary];
  v11 = +[NSMutableArray array];
  v12 = +[NSMutableArray array];
  v13 = WBSCloudBookmarkListRecordNameTopBookmark;
  [v10 setObject:v12 forKeyedSubscript:WBSCloudBookmarkListRecordNameTopBookmark];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100045F9C;
  v19[3] = &unk_100133620;
  bookmarksCopy = bookmarks;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v14 = v11;
  v15 = v10;
  [(CloudBookmarkDebugger *)self _enumerateRecordTreeWithRecords:recordsCopy deletedRecordIDs:dsCopy usingBlock:v19];

  v23[0] = @"Root";
  v16 = [v15 objectForKeyedSubscript:v13];
  v23[1] = @"UnrootedParents";
  v24[0] = v16;
  v24[1] = v14;
  v17 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];

  return v17;
}

- (id)_dictionaryRepresentationForRecord:(id)record
{
  recordCopy = record;
  v5 = [(CloudBookmarkStore *)self->_store cloudBookmarkItemConfigurationForRecord:recordCopy];
  if (v5)
  {
    v6 = [[CloudBookmarkRecordWrapper alloc] initWithRecord:recordCopy configuration:v5];
    v7 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForRecordWrapper:v6];
LABEL_3:

    goto LABEL_19;
  }

  if ([recordCopy safari_isEncryptionInfoRecord])
  {
    v8 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForEncryptionRecord:recordCopy];
  }

  else if ([recordCopy safari_isMigrationStateRecord])
  {
    v8 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForMigrationRecord:recordCopy];
  }

  else if ([recordCopy safari_isSyncRequirementsRecord])
  {
    v8 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForSyncRequirementsRecord:recordCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForCKShare:recordCopy];
    }

    else
    {
      recordType = [recordCopy recordType];
      v10 = [recordType isEqualToString:@"TabGroupTabParticipantStatus"];

      if (v10)
      {
        v8 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForTabGroupTabParticipantStatusRecord:recordCopy];
      }

      else
      {
        recordType2 = [recordCopy recordType];
        v12 = [recordType2 isEqualToString:@"TabGroupParticipantPosition"];

        if (v12)
        {
          v8 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForTabGroupParticipantPositionRecord:recordCopy];
        }

        else
        {
          recordType3 = [recordCopy recordType];
          v14 = [recordType3 isEqualToString:@"TabGroupTabParticipantPresence"];

          if (!v14)
          {
            v6 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForGenericRecord:recordCopy];
            v24[0] = @"AllKeys";
            allKeys = [recordCopy allKeys];
            v17 = allKeys;
            if (allKeys)
            {
              v18 = allKeys;
            }

            else
            {
              v18 = &__NSArray0__struct;
            }

            v24[1] = @"AllEncryptedKeys";
            v25[0] = v18;
            encryptedValues = [recordCopy encryptedValues];
            allKeys2 = [encryptedValues allKeys];
            v21 = allKeys2;
            if (allKeys2)
            {
              v22 = allKeys2;
            }

            else
            {
              v22 = &__NSArray0__struct;
            }

            v25[1] = v22;
            v23 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:2];
            v7 = [(CloudBookmarkRecordWrapper *)v6 safari_dictionaryByMergingWithDictionary:v23];

            goto LABEL_3;
          }

          v8 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForPresenceRecord:recordCopy];
        }
      }
    }
  }

  v7 = v8;
LABEL_19:

  return v7;
}

- (id)_dictionaryRepresentationForGenericRecord:(id)record
{
  v31[0] = @"RecordID";
  recordCopy = record;
  recordID = [recordCopy recordID];
  ckShortDescription = [recordID ckShortDescription];
  v32[0] = ckShortDescription;
  v31[1] = @"RecordType";
  recordType = [recordCopy recordType];
  v32[1] = recordType;
  v31[2] = @"CreationDate";
  creationDate = [recordCopy creationDate];
  v5 = creationDate;
  if (creationDate)
  {
    v6 = creationDate;
  }

  else
  {
    v6 = @"(null)";
  }

  v32[2] = v6;
  v31[3] = @"CreatorUserRecordID";
  creatorUserRecordID = [recordCopy creatorUserRecordID];
  ckShortDescription2 = [creatorUserRecordID ckShortDescription];
  v8 = ckShortDescription2;
  if (ckShortDescription2)
  {
    v9 = ckShortDescription2;
  }

  else
  {
    v9 = @"(null)";
  }

  v32[3] = v9;
  v31[4] = @"ModificationDate";
  modificationDate = [recordCopy modificationDate];
  v11 = modificationDate;
  if (modificationDate)
  {
    v12 = modificationDate;
  }

  else
  {
    v12 = @"(null)";
  }

  v32[4] = v12;
  v31[5] = @"LastModifiedUserRecordID";
  lastModifiedUserRecordID = [recordCopy lastModifiedUserRecordID];
  ckShortDescription3 = [lastModifiedUserRecordID ckShortDescription];
  v15 = ckShortDescription3;
  if (ckShortDescription3)
  {
    v16 = ckShortDescription3;
  }

  else
  {
    v16 = @"(null)";
  }

  v32[5] = v16;
  v31[6] = @"ModifiedByDevice";
  modifiedByDevice = [recordCopy modifiedByDevice];
  v18 = modifiedByDevice;
  if (modifiedByDevice)
  {
    v19 = modifiedByDevice;
  }

  else
  {
    v19 = @"(null)";
  }

  v32[6] = v19;
  v31[7] = @"ExpirationDate";
  expirationDate = [recordCopy expirationDate];
  v21 = expirationDate;
  if (expirationDate)
  {
    v22 = expirationDate;
  }

  else
  {
    v22 = @"(null)";
  }

  v32[7] = v22;
  v31[8] = @"IsExpired";
  isExpired = [recordCopy isExpired];

  v24 = [NSNumber numberWithBool:isExpired];
  v32[8] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:9];

  return v25;
}

- (id)_dictionaryRepresentationForRecordWrapper:(id)wrapper
{
  wrapperCopy = wrapper;
  if ([wrapperCopy isPlaceholder])
  {
    v58[0] = @"IsTombstone";
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [wrapperCopy isTombstone]);
    v58[1] = @"RecordID";
    v59[0] = v5;
    record = [wrapperCopy record];
    nullRecordID = [record recordID];
    v8 = nullRecordID;
    if (!nullRecordID)
    {
      nullRecordID = self->_nullRecordID;
    }

    ckShortDescription = [nullRecordID ckShortDescription];
    v59[1] = ckShortDescription;
    v10 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:2];

    goto LABEL_50;
  }

  record2 = [wrapperCopy record];
  v12 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForGenericRecord:record2];
  v5 = [v12 mutableCopy];

  v56[0] = @"Title";
  title = [wrapperCopy title];
  v14 = title;
  if (title)
  {
    v15 = title;
  }

  else
  {
    v15 = @"(null)";
  }

  v57[0] = v15;
  v56[1] = @"ParentRecordID";
  parentRecordID = [wrapperCopy parentRecordID];
  ckShortDescription2 = [parentRecordID ckShortDescription];
  v18 = ckShortDescription2;
  if (ckShortDescription2)
  {
    v19 = ckShortDescription2;
  }

  else
  {
    v19 = @"(null)";
  }

  v57[1] = v19;
  v56[2] = @"Position";
  position = [wrapperCopy position];
  v21 = [position description];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = @"(null)";
  }

  v57[2] = v23;
  v56[3] = @"State";
  v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [wrapperCopy state]);
  v57[3] = v24;
  v56[4] = @"MinimumAPIVersion";
  v25 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [wrapperCopy minimumAPIVersion]);
  v57[4] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:5];
  [v5 addEntriesFromDictionary:v26];

  if ([wrapperCopy isFolderRecord])
  {
    v27 = [wrapperCopy objectForKeyedSubscript:@"IsSelectedFavoritesFolder"];
    if (v27)
    {
      [v5 setObject:v27 forKeyedSubscript:@"IsSelectedFavoritesFolder"];
    }

    v28 = [wrapperCopy objectForKeyedSubscript:@"IsTabGroup"];

    if (v28)
    {
      [v5 setObject:v28 forKeyedSubscript:@"IsTabGroup"];
    }

    v29 = [wrapperCopy objectForKeyedSubscript:@"ShowIconOnly"];

    v30 = &off_10013C950;
    if (!v29)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v31 = [wrapperCopy url];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = @"(null)";
    }

    [v5 setObject:v33 forKeyedSubscript:@"URL"];

    v55[0] = @"ParentAndPosition";
    v55[1] = @"TitleURLAndIdentityHash";
    v55[2] = @"Deleted";
    v55[3] = @"DateAdded";
    v55[4] = @"DateLastViewed";
    v55[5] = @"PreviewTextAndHasUserDefinedPreviewText";
    v55[6] = @"ImageURL";
    v55[7] = @"ShowIconOnly";
    v30 = [NSArray arrayWithObjects:v55 count:8];
    v34 = [wrapperCopy objectForKeyedSubscript:@"DateAdded"];
    if (v34)
    {
      [v5 setObject:v34 forKeyedSubscript:@"DateAdded"];
    }

    v35 = [wrapperCopy objectForKeyedSubscript:@"DateLastViewed"];

    if (v35)
    {
      [v5 setObject:v35 forKeyedSubscript:@"DateLastViewed"];
    }

    v36 = [wrapperCopy objectForKeyedSubscript:@"HasUserDefinedPreviewText"];

    if (v36)
    {
      [v5 setObject:v36 forKeyedSubscript:@"HasUserDefinedPreviewText"];
    }

    v37 = [wrapperCopy objectForKeyedSubscript:@"ImageURL"];

    if (v37)
    {
      absoluteString = [v37 absoluteString];
      [v5 setObject:absoluteString forKeyedSubscript:@"ImageURL"];
    }

    v39 = [wrapperCopy objectForKeyedSubscript:@"PreviewText"];

    if (v39)
    {
      [v5 setObject:v39 forKeyedSubscript:@"PreviewText"];
    }

    v40 = [wrapperCopy objectForKeyedSubscript:@"SymbolImageName"];

    if (v40)
    {
      [v5 setObject:v40 forKeyedSubscript:@"SymbolImageName"];
    }

    v41 = [wrapperCopy objectForKeyedSubscript:@"CustomFavoritesFolderServerID"];

    if (v41)
    {
      [v5 setObject:v41 forKeyedSubscript:@"CustomFavoritesFolderServerID"];
    }

    v29 = [wrapperCopy objectForKeyedSubscript:@"ShowIconOnly"];

    if (!v29)
    {
      goto LABEL_40;
    }
  }

  [v5 setObject:v29 forKeyedSubscript:@"ShowIconOnly"];
LABEL_40:

  v8 = +[NSMutableDictionary dictionary];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  record = v30;
  v42 = [record countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v51;
    do
    {
      for (i = 0; i != v43; i = i + 1)
      {
        if (*v51 != v44)
        {
          objc_enumerationMutation(record);
        }

        v46 = *(*(&v50 + 1) + 8 * i);
        v47 = [wrapperCopy generationForKey:{v46, v50}];
        if ([v47 isValid])
        {
          v48 = [v47 description];
          [v8 setObject:v48 forKeyedSubscript:v46];
        }
      }

      v43 = [record countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v43);
  }

  [v5 setObject:v8 forKeyedSubscript:@"Generations"];
  v10 = [v5 copy];
LABEL_50:

  return v10;
}

- (id)_dictionaryRepresentationForEncryptionRecord:(id)record
{
  recordCopy = record;
  v5 = [[WBSHashGenerator alloc] initWithEncryptionInfoRecord:recordCopy];
  v6 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForGenericRecord:recordCopy];

  v12[0] = @"Key";
  v7 = [v5 key];
  v12[1] = @"KeyID";
  v13[0] = v7;
  keyID = [v5 keyID];
  v13[1] = keyID;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 safari_dictionaryByMergingWithDictionary:v9];

  return v10;
}

- (id)_dictionaryRepresentationForMigrationRecord:(id)record
{
  recordCopy = record;
  v5 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForGenericRecord:recordCopy];
  v12[0] = @"MigrationState";
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [recordCopy safari_migrationState]);
  v12[1] = @"MigratorDeviceIdentifier";
  v13[0] = v6;
  safari_migratorDeviceIdentifier = [recordCopy safari_migratorDeviceIdentifier];

  v8 = @"(null)";
  if (safari_migratorDeviceIdentifier)
  {
    v8 = safari_migratorDeviceIdentifier;
  }

  v13[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v5 safari_dictionaryByMergingWithDictionary:v9];

  return v10;
}

- (id)_dictionaryRepresentationForSyncRequirementsRecord:(id)record
{
  recordCopy = record;
  v5 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForGenericRecord:recordCopy];
  v11 = @"MinimumSyncAPIVersion";
  safari_minimumSyncAPIVersion = [recordCopy safari_minimumSyncAPIVersion];

  v7 = [NSNumber numberWithInteger:safari_minimumSyncAPIVersion];
  v12 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v9 = [v5 safari_dictionaryByMergingWithDictionary:v8];

  return v9;
}

- (id)_namesByUserRecordIDsForShare:(id)share
{
  shareCopy = share;
  +[NSMutableDictionary dictionary];
  v20 = v19 = shareCopy;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  participants = [shareCopy participants];
  v5 = [participants countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(participants);
        }

        userIdentity = [*(*(&v21 + 1) + 8 * i) userIdentity];
        userRecordID = [userIdentity userRecordID];
        if (userRecordID)
        {
          lookupInfo = [userIdentity lookupInfo];
          emailAddress = [lookupInfo emailAddress];

          nameComponents = [userIdentity nameComponents];
          if (nameComponents)
          {
            v14 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:nameComponents style:3 options:0];
          }

          else
          {
            v14 = &stru_100137BA8;
          }

          v15 = [(__CFString *)v14 length];
          if (emailAddress)
          {
            v16 = emailAddress;
          }

          else
          {
            v16 = &stru_100137BA8;
          }

          if (v15)
          {
            v17 = v14;
          }

          else
          {
            v17 = v16;
          }

          [v20 setObject:v17 forKeyedSubscript:userRecordID];
        }
      }

      v6 = [participants countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  return v20;
}

- (id)_dictionaryRepresentationForCKShare:(id)share
{
  shareCopy = share;
  owner = [shareCopy owner];
  currentUserParticipant = [shareCopy currentUserParticipant];
  v46 = +[NSMutableArray array];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v43 = shareCopy;
  obj = [shareCopy participants];
  v49 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v49)
  {
    v45 = *v59;
    do
    {
      for (i = 0; i != v49; i = i + 1)
      {
        if (*v59 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v58 + 1) + 8 * i);
        userIdentity = [v5 userIdentity];
        lookupInfo = [userIdentity lookupInfo];
        emailAddress = [lookupInfo emailAddress];

        lookupInfo2 = [userIdentity lookupInfo];
        phoneNumber = [lookupInfo2 phoneNumber];

        nameComponents = [userIdentity nameComponents];
        v56 = nameComponents;
        if (nameComponents)
        {
          v12 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:nameComponents style:3 options:0];
        }

        else
        {
          v12 = &stru_100137BA8;
        }

        v50 = v12;
        userRecordID = [userIdentity userRecordID];
        v64[0] = @"UserRecordID";
        ckShortDescription = [userRecordID ckShortDescription];
        v54 = ckShortDescription;
        if (ckShortDescription)
        {
          v14 = ckShortDescription;
        }

        else
        {
          v14 = @"(null)";
        }

        v65[0] = v14;
        v64[1] = @"ParticipantID";
        participantID = [v5 participantID];
        v16 = participantID;
        if (participantID)
        {
          v17 = participantID;
        }

        else
        {
          v17 = @"(null)";
        }

        v65[1] = v17;
        v64[2] = @"Role";
        [v5 role];
        v53 = CKStringFromParticipantRole();
        v65[2] = v53;
        v65[3] = v12;
        v64[3] = @"Name";
        v64[4] = @"Email";
        if (emailAddress)
        {
          v18 = emailAddress;
        }

        else
        {
          v18 = &stru_100137BA8;
        }

        if (phoneNumber)
        {
          v19 = phoneNumber;
        }

        else
        {
          v19 = &stru_100137BA8;
        }

        v65[4] = v18;
        v65[5] = v19;
        v64[5] = @"PhoneNumber";
        v64[6] = @"Permission";
        [v5 permission];
        v20 = CKStringFromParticipantPermission();
        v65[6] = v20;
        v64[7] = @"AcceptanceStatus";
        [v5 acceptanceStatus];
        v21 = CKStringFromParticipantAcceptanceStatus();
        v65[7] = v21;
        v64[8] = @"IsCurrentUser";
        v51 = phoneNumber;
        v52 = emailAddress;
        v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isCurrentUser]);
        v65[8] = v22;
        v64[9] = @"IsOrgAdminUser";
        v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isOrgAdminUser]);
        v65[9] = v23;
        v64[10] = @"IsOwner";
        v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [owner isEqual:v5]);
        v65[10] = v24;
        v64[11] = @"IsCurrentUserParticipant";
        v25 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [currentUserParticipant isEqual:v5]);
        v65[11] = v25;
        v26 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:12];
        [v46 addObject:v26];
      }

      v49 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v49);
  }

  v27 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForGenericRecord:v43];
  v62[0] = @"URL";
  v57 = [v43 URL];
  absoluteString = [v57 absoluteString];
  v29 = absoluteString;
  if (absoluteString)
  {
    v30 = absoluteString;
  }

  else
  {
    v30 = @"(null)";
  }

  v63[0] = v30;
  v62[1] = @"Type";
  v31 = [v43 objectForKeyedSubscript:CKShareTypeKey];
  v32 = v31;
  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = @"(null)";
  }

  v63[1] = v33;
  v62[2] = @"Title";
  v34 = [v43 objectForKeyedSubscript:CKShareTitleKey];
  v35 = v34;
  if (v34)
  {
    v36 = v34;
  }

  else
  {
    v36 = @"(null)";
  }

  v63[2] = v36;
  v62[3] = @"PublicPermission";
  [v43 publicPermission];
  v37 = CKStringFromParticipantPermission();
  v63[3] = v37;
  v62[4] = @"ParticipantSelfRemovalBehavior";
  [v43 participantSelfRemovalBehavior];
  v38 = CKStringFromShareParticipantSelfRemovalBehavior();
  v62[5] = @"Participants";
  v63[4] = v38;
  v63[5] = v46;
  v39 = [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:6];
  v40 = [v27 safari_dictionaryByMergingWithDictionary:v39];

  return v40;
}

- (id)_dictionaryRepresentationForTabGroupTabParticipantStatusRecord:(id)record
{
  recordCopy = record;
  v5 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForGenericRecord:recordCopy];
  v18[0] = @"TabGroupTab";
  v6 = [recordCopy objectForKeyedSubscript:?];
  recordID = [v6 recordID];
  ckShortDescription = [recordID ckShortDescription];
  v9 = ckShortDescription;
  if (ckShortDescription)
  {
    v10 = ckShortDescription;
  }

  else
  {
    v10 = @"(null)";
  }

  v18[1] = @"ReadStatus";
  v19[0] = v10;
  v11 = [recordCopy safari_generationForKey:?];

  v12 = [v11 description];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"(null)";
  }

  v19[1] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];
  v16 = [v5 safari_dictionaryByMergingWithDictionary:v15];

  return v16;
}

- (id)_dictionaryRepresentationForTabGroupParticipantPositionRecord:(id)record
{
  recordCopy = record;
  v5 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForGenericRecord:recordCopy];
  v24[0] = @"TabGroup";
  v23 = [recordCopy objectForKeyedSubscript:?];
  recordID = [v23 recordID];
  ckShortDescription = [recordID ckShortDescription];
  v7 = ckShortDescription;
  if (ckShortDescription)
  {
    v8 = ckShortDescription;
  }

  else
  {
    v8 = @"(null)";
  }

  v25[0] = v8;
  v24[1] = @"LastSelectedTab";
  v9 = [recordCopy objectForKeyedSubscript:?];
  recordID2 = [v9 recordID];
  ckShortDescription2 = [recordID2 ckShortDescription];
  v12 = ckShortDescription2;
  if (ckShortDescription2)
  {
    v13 = ckShortDescription2;
  }

  else
  {
    v13 = @"(null)";
  }

  v25[1] = v13;
  v24[2] = @"Position";
  v14 = +[CloudBookmarkItemConfiguration encryptedPositionAttributeValueTransformer];
  v15 = [recordCopy safari_defaultPositionUsingValueTransformer:v14];

  v16 = [v15 description];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = @"(null)";
  }

  v25[2] = v18;
  v19 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];
  v20 = [v5 safari_dictionaryByMergingWithDictionary:v19];

  return v20;
}

- (void)_fetchAllChangesInDatabase:(id)database recordWasChangedBlock:(id)block recordWithIDWasDeletedBlock:(id)deletedBlock completionHandler:(id)handler
{
  databaseCopy = database;
  blockCopy = block;
  deletedBlockCopy = deletedBlock;
  handlerCopy = handler;
  store = self->_store;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100047DC0;
  v19[3] = &unk_1001336B0;
  v20 = databaseCopy;
  selfCopy = self;
  v22 = handlerCopy;
  v23 = blockCopy;
  v24 = deletedBlockCopy;
  v15 = deletedBlockCopy;
  v16 = blockCopy;
  v17 = handlerCopy;
  v18 = databaseCopy;
  [(CloudBookmarkStore *)store fetchChangesSinceServerChangeToken:0 inDatabase:v18 operationGroup:0 completionHandler:v19];
}

- (id)_dictionaryRepresentationForPresenceRecord:(id)record
{
  recordCopy = record;
  recordID = [recordCopy recordID];
  recordName = [recordID recordName];
  v7 = [recordName isEqualToString:@"UserTabGroupPresence"];

  v8 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForGenericRecord:recordCopy];
  if (v7)
  {
    v27[0] = @"CurrentUser";
    v26[0] = @"UserName";
    v26[1] = @"TabGroupTab";
    v9 = [recordCopy objectForKeyedSubscript:@"TabGroupTab"];

    recordID2 = [v9 recordID];
    ckShortDescription = [recordID2 ckShortDescription];
    v12 = ckShortDescription;
    v13 = @"(null)";
    if (ckShortDescription)
    {
      v13 = ckShortDescription;
    }

    v26[2] = @"Type";
    v27[1] = v13;
    v27[2] = @"Expected Current User Presence";
    v14 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];
    v15 = [v8 safari_dictionaryByMergingWithDictionary:v14];
  }

  else
  {
    v24[0] = @"UserRecordID";
    v9 = [recordCopy objectForKeyedSubscript:@"Participant"];
    recordID2 = [v9 recordID];
    recordName2 = [recordID2 recordName];
    v12 = recordName2;
    if (recordName2)
    {
      v17 = recordName2;
    }

    else
    {
      v17 = @"(null)";
    }

    v25[0] = v17;
    v24[1] = @"TabGroupTab";
    v14 = [recordCopy objectForKeyedSubscript:@"TabGroupTab"];

    recordID3 = [v14 recordID];
    ckShortDescription2 = [recordID3 ckShortDescription];
    v20 = ckShortDescription2;
    if (ckShortDescription2)
    {
      v21 = ckShortDescription2;
    }

    else
    {
      v21 = @"(null)";
    }

    v24[2] = @"Type";
    v25[1] = v21;
    v25[2] = @"Shared User Presence";
    v22 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];
    v15 = [v8 safari_dictionaryByMergingWithDictionary:v22];
  }

  return v15;
}

@end