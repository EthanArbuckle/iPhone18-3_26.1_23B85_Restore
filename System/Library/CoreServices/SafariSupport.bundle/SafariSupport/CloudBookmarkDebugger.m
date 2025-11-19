@interface CloudBookmarkDebugger
- (CloudBookmarkDebugger)initWithStore:(id)a3 databaseAccessor:(id)a4;
- (id)_dataTreeAsPlistWithRecords:(id)a3 deletedRecordIDs:(id)a4 includingDeletedBookmarks:(BOOL)a5;
- (id)_dictionaryRepresentationForCKShare:(id)a3;
- (id)_dictionaryRepresentationForEncryptionRecord:(id)a3;
- (id)_dictionaryRepresentationForGenericRecord:(id)a3;
- (id)_dictionaryRepresentationForMigrationRecord:(id)a3;
- (id)_dictionaryRepresentationForPresenceRecord:(id)a3;
- (id)_dictionaryRepresentationForRecord:(id)a3;
- (id)_dictionaryRepresentationForRecordWrapper:(id)a3;
- (id)_dictionaryRepresentationForSyncRequirementsRecord:(id)a3;
- (id)_dictionaryRepresentationForTabGroupParticipantPositionRecord:(id)a3;
- (id)_dictionaryRepresentationForTabGroupTabParticipantStatusRecord:(id)a3;
- (id)_namesByUserRecordIDsForShare:(id)a3;
- (void)_enumerateRecordTreeWithRecords:(id)a3 deletedRecordIDs:(id)a4 usingBlock:(id)a5;
- (void)_fetchAllChangesInDatabase:(id)a3 recordWasChangedBlock:(id)a4 recordWithIDWasDeletedBlock:(id)a5 completionHandler:(id)a6;
- (void)_printOrderedRecords:(id)a3 deletedRecordIDs:(id)a4 targetFileDescriptor:(int)a5;
- (void)_printToFile:(id)a3 usingBlock:(id)a4;
- (void)_printTreeWithRecords:(id)a3 deletedRecordIDs:(id)a4 includingDeletedBookmarks:(BOOL)a5 targetFileDescriptor:(int)a6;
- (void)dumpCloudKitDataPrintByDates:(BOOL)a3 liveOnly:(BOOL)a4 printTree:(BOOL)a5 printPlist:(BOOL)a6 writeToFile:(BOOL)a7 atFileURL:(id)a8 completionHandler:(id)a9;
@end

@implementation CloudBookmarkDebugger

- (CloudBookmarkDebugger)initWithStore:(id)a3 databaseAccessor:(id)a4
{
  v7 = a3;
  v8 = a4;
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

    objc_storeStrong(&v9->_store, a3);
    objc_storeStrong(&v9->_databaseAccessor, a4);
    v14 = v9;
  }

  return v9;
}

- (void)dumpCloudKitDataPrintByDates:(BOOL)a3 liveOnly:(BOOL)a4 printTree:(BOOL)a5 printPlist:(BOOL)a6 writeToFile:(BOOL)a7 atFileURL:(id)a8 completionHandler:(id)a9
{
  v138 = a7;
  v172 = a6;
  v134 = a5;
  v135 = a4;
  v133 = a3;
  v141 = a8;
  v139 = a9;
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

  v14 = [(CloudBookmarkStore *)self->_store cloudBookmarkItemConfigurations];
  v157 = [v14 copy];

  v15 = [(CloudBookmarkStore *)self->_store container];
  v16 = [v15 privateCloudDatabase];
  v293[0] = v16;
  v17 = [(CloudBookmarkStore *)self->_store container];
  v18 = [v17 sharedCloudDatabase];
  v293[1] = v18;
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
    v31 = [v169 allKeys];
    [v143 addObjectsFromArray:v31];

    v32 = [v170 allKeys];
    [v143 addObjectsFromArray:v32];

    v33 = [v143 allObjects];
    v241[0] = _NSConcreteStackBlock;
    v241[1] = 3221225472;
    v241[2] = sub_100043020;
    v241[3] = &unk_100133228;
    v175 = v166;
    v242 = v175;
    v132 = [v33 sortedArrayUsingComparator:v241];

    v34 = [v169 objectForKeyedSubscript:@"TabGroupTabParticipantPresence"];
    v136 = [v34 sortedArrayUsingComparator:&stru_100133268];

    if (!v172)
    {
      v83 = &CPSharedResourcesDirectory_ptr;
      goto LABEL_61;
    }

    v35 = [(CloudBookmarkDebugger *)self _dataTreeAsPlistWithRecords:v165 deletedRecordIDs:v164 includingDeletedBookmarks:!v135];
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
    v229 = self;
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
          v63 = [v61 recordID];
          v64 = [v63 recordName];
          v65 = [v64 isEqualToString:@"UserTabGroupPresence"];

          if (v65)
          {
            [v57 addObject:v62];
            goto LABEL_43;
          }

          v66 = [v62 mutableCopy];
          v67 = [v61 objectForKeyedSubscript:@"Participant"];
          v68 = [v67 recordID];

          v69 = [v150 objectForKeyedSubscript:v68];
          [v66 setObject:v69 forKeyedSubscript:@"UserName"];

          if (!v68)
          {
LABEL_41:
            v72 = &__kCFBooleanFalse;
            goto LABEL_42;
          }

          v70 = [v68 recordName];
          if ([v70 isEqualToString:CKCurrentUserDefaultName])
          {
          }

          else
          {
            v71 = [v68 isEqual:v276[5]];

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
    v222 = self;
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
    if (!v138)
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
      if (!v138)
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

      v88 = [v171 allKeys];
      v151 = [v88 sortedArrayUsingSelector:"compare:"];

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

            v96 = [*(*(&v211 + 1) + 8 * n) firstObject];
            v97 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v96 length]);
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
            v101 = [v100 stringValue];
            (v174[2])(v174, v101, 1);

            v102 = [v170 objectForKeyedSubscript:v98];
            v103 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v102 count]);
            v104 = [v103 stringValue];
            (v174[2])(v174, v104, 2);

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
                  v111 = &stru_100137BA8;
                  if ([v175 containsObject:v98])
                  {
                    v112 = [v171 objectForKeyedSubscript:v110];
                    v113 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v112 countForObject:v98]);
                    v111 = [v113 stringValue];
                  }

                  (v174[2])(v174, v111, v108);

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
      v193 = self;
      v194 = v136;
      v195 = &v275;
      v126 = objc_retainBlock(v189);
      if (v134)
      {
        if (v138)
        {
          v127 = [NSString stringWithFormat:@"CloudKitData-Tree-%@.txt", v137];
        }

        else
        {
          v127 = 0;
        }

        v182[0] = _NSConcreteStackBlock;
        v182[1] = 3221225472;
        v182[2] = sub_1000442D4;
        v182[3] = &unk_100133510;
        v182[4] = self;
        v183 = v165;
        v184 = v164;
        v187 = v135;
        v186 = v126;
        v188 = v138;
        v185 = v114;
        [(CloudBookmarkDebugger *)self _printToFile:v127 usingBlock:v182];
      }

      if (v133)
      {
        if (v138)
        {
          v128 = [NSString stringWithFormat:@"CloudKitData-Dates-%@.txt", v137];
        }

        else
        {
          v128 = 0;
        }

        v176[0] = _NSConcreteStackBlock;
        v176[1] = 3221225472;
        v176[2] = sub_100044354;
        v176[3] = &unk_100133538;
        v176[4] = self;
        v177 = v165;
        v178 = v164;
        v180 = v126;
        v181 = v138;
        v179 = v114;
        [(CloudBookmarkDebugger *)self _printToFile:v128 usingBlock:v176];
      }

      WBSPrintf();

      goto LABEL_98;
    }

    v216 = 0;
    v75 = [NSPropertyListSerialization dataWithPropertyList:v146 format:200 options:0 error:&v216];
    v76 = v216;
    if (!v141)
    {
      v77 = +[NSFileManager defaultManager];
      v78 = [v77 currentDirectoryPath];
      v79 = [NSString stringWithFormat:@"CloudKitData-Full-%@.plist", v137];
      v80 = [v78 stringByAppendingPathComponent:v79];
      v141 = [NSURL fileURLWithPath:v80];
    }

    if (v75)
    {
      v215 = v76;
      v81 = [v75 writeToURL:v141 options:0 error:&v215];
      v82 = v215;

      if (v81)
      {
        v130 = [v141 path];
        WBSPrintf();

LABEL_59:
        v139[2](v139, v82);
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

- (void)_enumerateRecordTreeWithRecords:(id)a3 deletedRecordIDs:(id)a4 usingBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v57[0] = WBSCloudBookmarkListRecordNameFavoritesBar;
  v57[1] = WBSCloudBookmarkListRecordNameBookmarksMenu;
  v57[2] = WBSCloudBookmarkListRecordNameReadingList;
  v11 = [NSArray arrayWithObjects:v57 count:3];
  v12 = [NSOrderedSet orderedSetWithArray:v11];

  v41 = v9;
  v13 = [NSSet setWithArray:v9];
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
  v18 = v8;
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
  v47 = self;
  [v42 enumerateKeysAndObjectsUsingBlock:v43];
  v37 = v24;
  v25 = [NSMutableArray arrayWithObject:v24];
  v26 = [v25 lastObject];
  if (v26)
  {
    v27 = v26;
    do
    {
      v28 = [v27 firstObject];
      if (v28)
      {
        v29 = v28;
        while (1)
        {
          [v27 removeObjectAtIndex:0];
          v10[2](v10, v29, [v25 count] - 1);
          v30 = [v29 recordID];
          v31 = [v42 objectForKeyedSubscript:v30];
          v32 = [v31 mutableCopy];

          if (v32)
          {
            break;
          }

          v33 = [v27 firstObject];

          v29 = v33;
          if (!v33)
          {
            goto LABEL_16;
          }
        }

        [v25 addObject:v32];
      }

LABEL_16:
      v34 = [v25 lastObject];
      v35 = [v34 count];

      if (!v35)
      {
        [v25 removeLastObject];
      }

      v36 = [v25 lastObject];

      v27 = v36;
    }

    while (v36);
  }
}

- (void)_printToFile:(id)a3 usingBlock:(id)a4
{
  v13 = a3;
  if (v13)
  {
    v5 = a4;
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 currentDirectoryPath];
    v8 = [v7 stringByAppendingPathComponent:v13];

    v9 = +[NSData data];
    [v9 writeToFile:v8 options:0 error:0];

    v10 = [NSFileHandle fileHandleForWritingAtPath:v8];
    v5[2](v5, [v10 fileDescriptor]);

    [v10 closeFile];
    WBSPrintf();
  }

  else
  {
    v11 = __stdoutp;
    v8 = a4;
    v12 = fileno(v11);
    (*(a4 + 2))(v8, v12);
  }
}

- (void)_printTreeWithRecords:(id)a3 deletedRecordIDs:(id)a4 includingDeletedBookmarks:(BOOL)a5 targetFileDescriptor:(int)a6
{
  v10 = a3;
  v11 = a4;
  WBSDPrintf();
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100045258;
  v12[3] = &unk_1001335D8;
  v14 = a5;
  v13 = a6;
  v12[4] = &v15;
  [(CloudBookmarkDebugger *)self _enumerateRecordTreeWithRecords:v10 deletedRecordIDs:v11 usingBlock:v12];
  if ((v16[3] & 1) == 0)
  {
    WBSDPrintf();
  }

  _Block_object_dispose(&v15, 8);
}

- (void)_printOrderedRecords:(id)a3 deletedRecordIDs:(id)a4 targetFileDescriptor:(int)a5
{
  v71 = a4;
  v7 = [a3 sortedArrayUsingComparator:&stru_1001335F8];
  v87 = [(WBSBookmarkDBAccess *)self->_databaseAccessor createDatabase];
  WBSDPrintf();
  WBSDPrintf();
  WBSDPrintf();
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  obj = v7;
  v75 = [obj countByEnumeratingWithState:&v94 objects:v99 count:16];
  v76 = self;
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
        v11 = [v9 safari_state];
        v12 = @" ";
        if (v11 != 1)
        {
          v12 = @"/";
        }

        v88 = v12;
        databaseAccessor = self->_databaseAccessor;
        v14 = [(CloudBookmarkRecordWrapper *)v10 recordName];
        v15 = [(WBSBookmarkDBAccess *)databaseAccessor copyItemWithServerId:v14 database:v87];

        if (v15)
        {
          v16 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copySyncDataWithItem:v15];
          v17 = [WBBookmarkSyncData syncDataWithContentsOfData:v16];

          v18 = [v17 record];
          if (v18)
          {
            v19 = [v17 record];
            v20 = [v19 recordChangeTag];
            v21 = [v9 recordChangeTag];
            v22 = [v20 isEqualToString:v21];

            self = v76;
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
        if (v11 != 1)
        {
          v25 = @"L";
        }

        if ((v11 != 1) != (v15 != 0))
        {
          v26 = v24;
        }

        else
        {
          v26 = @" ";
        }

        v27 = v25;
        v28 = v26;
        v29 = [(CloudBookmarkRecordWrapper *)v10 isFolderRecord];
        v79 = [(CloudBookmarkRecordWrapper *)v10 minimumAPIVersion];
        v30 = [(CloudBookmarkRecordWrapper *)v10 recordName];
        v31 = [v9 modificationDate];
        v32 = [v9 recordChangeTag];
        v33 = [(CloudBookmarkRecordWrapper *)v10 parentRecordName];
        v34 = [(CloudBookmarkRecordWrapper *)v10 title];
        v81 = v32;
        v77 = v31;
        if (v29)
        {
          v35 = [(CloudBookmarkRecordWrapper *)v10 position];
          v67 = v34;
          v68 = v35;
          v65 = v32;
          v66 = v33;
          v63 = v30;
          v64 = v31;
          v61 = v27;
          v62 = v79;
          v36 = v88;
          v59 = v28;
          v60 = v88;
          WBSDPrintf();
        }

        else
        {
          v35 = [(CloudBookmarkRecordWrapper *)v10 url];
          v37 = [(CloudBookmarkRecordWrapper *)v10 isPinned];
          v38 = @"NO";
          if (v37)
          {
            v38 = @"YES";
          }

          v73 = v28;
          v39 = v34;
          v40 = v33;
          v41 = v30;
          v42 = v38;
          [(CloudBookmarkRecordWrapper *)v10 position];
          v70 = v69 = v42;
          v67 = v39;
          v68 = v35;
          v65 = v32;
          v66 = v40;
          v63 = v41;
          v64 = v31;
          v61 = v27;
          v62 = v79;
          v43 = v27;
          v36 = v88;
          v27 = v73;
          v59 = v73;
          v60 = v88;
          WBSDPrintf();

          v30 = v41;
          v33 = v40;
          v34 = v39;

          v28 = v70;
          self = v76;
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
  v80 = v71;
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

        v47 = [*(*(&v90 + 1) + 8 * v46) recordName];
        v48 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyItemWithServerId:v47 database:v87];
        if (v48)
        {
          v49 = v48;
          v50 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copySyncDataWithItem:v48];
          v51 = [WBBookmarkSyncData syncDataWithContentsOfData:v50];

          v89 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyParentServerIdWithItem:v49];
          v86 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyValueForKey:@"Title" item:v49];
          v52 = [v51 record];
          v53 = [v52 objectForKeyedSubscript:@"MinimumAPIVersion"];
          v84 = [v53 integerValue];

          v54 = [(WBSBookmarkDBAccess *)self->_databaseAccessor itemTypeWithItem:v49];
          v55 = [v52 modificationDate];
          v56 = [v52 recordChangeTag];
          if (v54 == 1)
          {
            v57 = [v51 position];
            v64 = v86;
            v65 = v57;
            v62 = v56;
            v63 = v89;
            v60 = v47;
            v61 = v55;
            v59 = v84;
            WBSDPrintf();
          }

          else
          {
            v57 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyValueForKey:@"URL" item:v49];
            v58 = [(WBSBookmarkDBAccess *)self->_databaseAccessor copyValueForKey:@"IsPinned" item:v49];
            [v51 position];
            v67 = v66 = v58;
            v64 = v86;
            v65 = v57;
            v62 = v56;
            v63 = v89;
            v60 = v47;
            v61 = v55;
            v59 = v84;
            WBSDPrintf();

            self = v76;
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

  [(WBSBookmarkDBAccess *)self->_databaseAccessor closeDatabase:v87 shouldSave:0];
  CFRelease(v87);
}

- (id)_dataTreeAsPlistWithRecords:(id)a3 deletedRecordIDs:(id)a4 includingDeletedBookmarks:(BOOL)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[NSMutableDictionary dictionary];
  v11 = +[NSMutableArray array];
  v12 = +[NSMutableArray array];
  v13 = WBSCloudBookmarkListRecordNameTopBookmark;
  [v10 setObject:v12 forKeyedSubscript:WBSCloudBookmarkListRecordNameTopBookmark];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100045F9C;
  v19[3] = &unk_100133620;
  v22 = a5;
  v19[4] = self;
  v20 = v10;
  v21 = v11;
  v14 = v11;
  v15 = v10;
  [(CloudBookmarkDebugger *)self _enumerateRecordTreeWithRecords:v9 deletedRecordIDs:v8 usingBlock:v19];

  v23[0] = @"Root";
  v16 = [v15 objectForKeyedSubscript:v13];
  v23[1] = @"UnrootedParents";
  v24[0] = v16;
  v24[1] = v14;
  v17 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];

  return v17;
}

- (id)_dictionaryRepresentationForRecord:(id)a3
{
  v4 = a3;
  v5 = [(CloudBookmarkStore *)self->_store cloudBookmarkItemConfigurationForRecord:v4];
  if (v5)
  {
    v6 = [[CloudBookmarkRecordWrapper alloc] initWithRecord:v4 configuration:v5];
    v7 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForRecordWrapper:v6];
LABEL_3:

    goto LABEL_19;
  }

  if ([v4 safari_isEncryptionInfoRecord])
  {
    v8 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForEncryptionRecord:v4];
  }

  else if ([v4 safari_isMigrationStateRecord])
  {
    v8 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForMigrationRecord:v4];
  }

  else if ([v4 safari_isSyncRequirementsRecord])
  {
    v8 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForSyncRequirementsRecord:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForCKShare:v4];
    }

    else
    {
      v9 = [v4 recordType];
      v10 = [v9 isEqualToString:@"TabGroupTabParticipantStatus"];

      if (v10)
      {
        v8 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForTabGroupTabParticipantStatusRecord:v4];
      }

      else
      {
        v11 = [v4 recordType];
        v12 = [v11 isEqualToString:@"TabGroupParticipantPosition"];

        if (v12)
        {
          v8 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForTabGroupParticipantPositionRecord:v4];
        }

        else
        {
          v13 = [v4 recordType];
          v14 = [v13 isEqualToString:@"TabGroupTabParticipantPresence"];

          if (!v14)
          {
            v6 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForGenericRecord:v4];
            v24[0] = @"AllKeys";
            v16 = [v4 allKeys];
            v17 = v16;
            if (v16)
            {
              v18 = v16;
            }

            else
            {
              v18 = &__NSArray0__struct;
            }

            v24[1] = @"AllEncryptedKeys";
            v25[0] = v18;
            v19 = [v4 encryptedValues];
            v20 = [v19 allKeys];
            v21 = v20;
            if (v20)
            {
              v22 = v20;
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

          v8 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForPresenceRecord:v4];
        }
      }
    }
  }

  v7 = v8;
LABEL_19:

  return v7;
}

- (id)_dictionaryRepresentationForGenericRecord:(id)a3
{
  v31[0] = @"RecordID";
  v3 = a3;
  v30 = [v3 recordID];
  v29 = [v30 ckShortDescription];
  v32[0] = v29;
  v31[1] = @"RecordType";
  v28 = [v3 recordType];
  v32[1] = v28;
  v31[2] = @"CreationDate";
  v4 = [v3 creationDate];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"(null)";
  }

  v32[2] = v6;
  v31[3] = @"CreatorUserRecordID";
  v27 = [v3 creatorUserRecordID];
  v7 = [v27 ckShortDescription];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"(null)";
  }

  v32[3] = v9;
  v31[4] = @"ModificationDate";
  v10 = [v3 modificationDate];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"(null)";
  }

  v32[4] = v12;
  v31[5] = @"LastModifiedUserRecordID";
  v13 = [v3 lastModifiedUserRecordID];
  v14 = [v13 ckShortDescription];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"(null)";
  }

  v32[5] = v16;
  v31[6] = @"ModifiedByDevice";
  v17 = [v3 modifiedByDevice];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"(null)";
  }

  v32[6] = v19;
  v31[7] = @"ExpirationDate";
  v20 = [v3 expirationDate];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = @"(null)";
  }

  v32[7] = v22;
  v31[8] = @"IsExpired";
  v23 = [v3 isExpired];

  v24 = [NSNumber numberWithBool:v23];
  v32[8] = v24;
  v25 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:9];

  return v25;
}

- (id)_dictionaryRepresentationForRecordWrapper:(id)a3
{
  v4 = a3;
  if ([v4 isPlaceholder])
  {
    v58[0] = @"IsTombstone";
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isTombstone]);
    v58[1] = @"RecordID";
    v59[0] = v5;
    v6 = [v4 record];
    nullRecordID = [v6 recordID];
    v8 = nullRecordID;
    if (!nullRecordID)
    {
      nullRecordID = self->_nullRecordID;
    }

    v9 = [nullRecordID ckShortDescription];
    v59[1] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:2];

    goto LABEL_50;
  }

  v11 = [v4 record];
  v12 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForGenericRecord:v11];
  v5 = [v12 mutableCopy];

  v56[0] = @"Title";
  v13 = [v4 title];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = @"(null)";
  }

  v57[0] = v15;
  v56[1] = @"ParentRecordID";
  v16 = [v4 parentRecordID];
  v17 = [v16 ckShortDescription];
  v18 = v17;
  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = @"(null)";
  }

  v57[1] = v19;
  v56[2] = @"Position";
  v20 = [v4 position];
  v21 = [v20 description];
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
  v24 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 state]);
  v57[3] = v24;
  v56[4] = @"MinimumAPIVersion";
  v25 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 minimumAPIVersion]);
  v57[4] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:5];
  [v5 addEntriesFromDictionary:v26];

  if ([v4 isFolderRecord])
  {
    v27 = [v4 objectForKeyedSubscript:@"IsSelectedFavoritesFolder"];
    if (v27)
    {
      [v5 setObject:v27 forKeyedSubscript:@"IsSelectedFavoritesFolder"];
    }

    v28 = [v4 objectForKeyedSubscript:@"IsTabGroup"];

    if (v28)
    {
      [v5 setObject:v28 forKeyedSubscript:@"IsTabGroup"];
    }

    v29 = [v4 objectForKeyedSubscript:@"ShowIconOnly"];

    v30 = &off_10013C950;
    if (!v29)
    {
      goto LABEL_40;
    }
  }

  else
  {
    v31 = [v4 url];
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
    v34 = [v4 objectForKeyedSubscript:@"DateAdded"];
    if (v34)
    {
      [v5 setObject:v34 forKeyedSubscript:@"DateAdded"];
    }

    v35 = [v4 objectForKeyedSubscript:@"DateLastViewed"];

    if (v35)
    {
      [v5 setObject:v35 forKeyedSubscript:@"DateLastViewed"];
    }

    v36 = [v4 objectForKeyedSubscript:@"HasUserDefinedPreviewText"];

    if (v36)
    {
      [v5 setObject:v36 forKeyedSubscript:@"HasUserDefinedPreviewText"];
    }

    v37 = [v4 objectForKeyedSubscript:@"ImageURL"];

    if (v37)
    {
      v38 = [v37 absoluteString];
      [v5 setObject:v38 forKeyedSubscript:@"ImageURL"];
    }

    v39 = [v4 objectForKeyedSubscript:@"PreviewText"];

    if (v39)
    {
      [v5 setObject:v39 forKeyedSubscript:@"PreviewText"];
    }

    v40 = [v4 objectForKeyedSubscript:@"SymbolImageName"];

    if (v40)
    {
      [v5 setObject:v40 forKeyedSubscript:@"SymbolImageName"];
    }

    v41 = [v4 objectForKeyedSubscript:@"CustomFavoritesFolderServerID"];

    if (v41)
    {
      [v5 setObject:v41 forKeyedSubscript:@"CustomFavoritesFolderServerID"];
    }

    v29 = [v4 objectForKeyedSubscript:@"ShowIconOnly"];

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
  v6 = v30;
  v42 = [v6 countByEnumeratingWithState:&v50 objects:v54 count:16];
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
          objc_enumerationMutation(v6);
        }

        v46 = *(*(&v50 + 1) + 8 * i);
        v47 = [v4 generationForKey:{v46, v50}];
        if ([v47 isValid])
        {
          v48 = [v47 description];
          [v8 setObject:v48 forKeyedSubscript:v46];
        }
      }

      v43 = [v6 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v43);
  }

  [v5 setObject:v8 forKeyedSubscript:@"Generations"];
  v10 = [v5 copy];
LABEL_50:

  return v10;
}

- (id)_dictionaryRepresentationForEncryptionRecord:(id)a3
{
  v4 = a3;
  v5 = [[WBSHashGenerator alloc] initWithEncryptionInfoRecord:v4];
  v6 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForGenericRecord:v4];

  v12[0] = @"Key";
  v7 = [v5 key];
  v12[1] = @"KeyID";
  v13[0] = v7;
  v8 = [v5 keyID];
  v13[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v6 safari_dictionaryByMergingWithDictionary:v9];

  return v10;
}

- (id)_dictionaryRepresentationForMigrationRecord:(id)a3
{
  v4 = a3;
  v5 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForGenericRecord:v4];
  v12[0] = @"MigrationState";
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v4 safari_migrationState]);
  v12[1] = @"MigratorDeviceIdentifier";
  v13[0] = v6;
  v7 = [v4 safari_migratorDeviceIdentifier];

  v8 = @"(null)";
  if (v7)
  {
    v8 = v7;
  }

  v13[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:2];
  v10 = [v5 safari_dictionaryByMergingWithDictionary:v9];

  return v10;
}

- (id)_dictionaryRepresentationForSyncRequirementsRecord:(id)a3
{
  v4 = a3;
  v5 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForGenericRecord:v4];
  v11 = @"MinimumSyncAPIVersion";
  v6 = [v4 safari_minimumSyncAPIVersion];

  v7 = [NSNumber numberWithInteger:v6];
  v12 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  v9 = [v5 safari_dictionaryByMergingWithDictionary:v8];

  return v9;
}

- (id)_namesByUserRecordIDsForShare:(id)a3
{
  v3 = a3;
  +[NSMutableDictionary dictionary];
  v20 = v19 = v3;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 participants];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v21 + 1) + 8 * i) userIdentity];
        v10 = [v9 userRecordID];
        if (v10)
        {
          v11 = [v9 lookupInfo];
          v12 = [v11 emailAddress];

          v13 = [v9 nameComponents];
          if (v13)
          {
            v14 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v13 style:3 options:0];
          }

          else
          {
            v14 = &stru_100137BA8;
          }

          v15 = [(__CFString *)v14 length];
          if (v12)
          {
            v16 = v12;
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

          [v20 setObject:v17 forKeyedSubscript:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  return v20;
}

- (id)_dictionaryRepresentationForCKShare:(id)a3
{
  v3 = a3;
  v48 = [v3 owner];
  v47 = [v3 currentUserParticipant];
  v46 = +[NSMutableArray array];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v43 = v3;
  obj = [v3 participants];
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
        v6 = [v5 userIdentity];
        v7 = [v6 lookupInfo];
        v8 = [v7 emailAddress];

        v9 = [v6 lookupInfo];
        v10 = [v9 phoneNumber];

        v11 = [v6 nameComponents];
        v56 = v11;
        if (v11)
        {
          v12 = [NSPersonNameComponentsFormatter localizedStringFromPersonNameComponents:v11 style:3 options:0];
        }

        else
        {
          v12 = &stru_100137BA8;
        }

        v50 = v12;
        v55 = [v6 userRecordID];
        v64[0] = @"UserRecordID";
        v13 = [v55 ckShortDescription];
        v54 = v13;
        if (v13)
        {
          v14 = v13;
        }

        else
        {
          v14 = @"(null)";
        }

        v65[0] = v14;
        v64[1] = @"ParticipantID";
        v15 = [v5 participantID];
        v16 = v15;
        if (v15)
        {
          v17 = v15;
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
        if (v8)
        {
          v18 = v8;
        }

        else
        {
          v18 = &stru_100137BA8;
        }

        if (v10)
        {
          v19 = v10;
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
        v51 = v10;
        v52 = v8;
        v22 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isCurrentUser]);
        v65[8] = v22;
        v64[9] = @"IsOrgAdminUser";
        v23 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v5 isOrgAdminUser]);
        v65[9] = v23;
        v64[10] = @"IsOwner";
        v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v48 isEqual:v5]);
        v65[10] = v24;
        v64[11] = @"IsCurrentUserParticipant";
        v25 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v47 isEqual:v5]);
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
  v28 = [v57 absoluteString];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
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

- (id)_dictionaryRepresentationForTabGroupTabParticipantStatusRecord:(id)a3
{
  v4 = a3;
  v5 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForGenericRecord:v4];
  v18[0] = @"TabGroupTab";
  v6 = [v4 objectForKeyedSubscript:?];
  v7 = [v6 recordID];
  v8 = [v7 ckShortDescription];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"(null)";
  }

  v18[1] = @"ReadStatus";
  v19[0] = v10;
  v11 = [v4 safari_generationForKey:?];

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

- (id)_dictionaryRepresentationForTabGroupParticipantPositionRecord:(id)a3
{
  v4 = a3;
  v5 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForGenericRecord:v4];
  v24[0] = @"TabGroup";
  v23 = [v4 objectForKeyedSubscript:?];
  v22 = [v23 recordID];
  v6 = [v22 ckShortDescription];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"(null)";
  }

  v25[0] = v8;
  v24[1] = @"LastSelectedTab";
  v9 = [v4 objectForKeyedSubscript:?];
  v10 = [v9 recordID];
  v11 = [v10 ckShortDescription];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = @"(null)";
  }

  v25[1] = v13;
  v24[2] = @"Position";
  v14 = +[CloudBookmarkItemConfiguration encryptedPositionAttributeValueTransformer];
  v15 = [v4 safari_defaultPositionUsingValueTransformer:v14];

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

- (void)_fetchAllChangesInDatabase:(id)a3 recordWasChangedBlock:(id)a4 recordWithIDWasDeletedBlock:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  store = self->_store;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100047DC0;
  v19[3] = &unk_1001336B0;
  v20 = v10;
  v21 = self;
  v22 = v13;
  v23 = v11;
  v24 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  v18 = v10;
  [(CloudBookmarkStore *)store fetchChangesSinceServerChangeToken:0 inDatabase:v18 operationGroup:0 completionHandler:v19];
}

- (id)_dictionaryRepresentationForPresenceRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 recordID];
  v6 = [v5 recordName];
  v7 = [v6 isEqualToString:@"UserTabGroupPresence"];

  v8 = [(CloudBookmarkDebugger *)self _dictionaryRepresentationForGenericRecord:v4];
  if (v7)
  {
    v27[0] = @"CurrentUser";
    v26[0] = @"UserName";
    v26[1] = @"TabGroupTab";
    v9 = [v4 objectForKeyedSubscript:@"TabGroupTab"];

    v10 = [v9 recordID];
    v11 = [v10 ckShortDescription];
    v12 = v11;
    v13 = @"(null)";
    if (v11)
    {
      v13 = v11;
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
    v9 = [v4 objectForKeyedSubscript:@"Participant"];
    v10 = [v9 recordID];
    v16 = [v10 recordName];
    v12 = v16;
    if (v16)
    {
      v17 = v16;
    }

    else
    {
      v17 = @"(null)";
    }

    v25[0] = v17;
    v24[1] = @"TabGroupTab";
    v14 = [v4 objectForKeyedSubscript:@"TabGroupTab"];

    v18 = [v14 recordID];
    v19 = [v18 ckShortDescription];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
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