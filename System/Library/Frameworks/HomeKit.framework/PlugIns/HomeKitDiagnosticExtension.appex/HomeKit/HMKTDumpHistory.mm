@interface HMKTDumpHistory
- (int)main:(id)main;
@end

@implementation HMKTDumpHistory

- (int)main:(id)main
{
  mainCopy = main;
  firstObject = [mainCopy firstObject];
  v4 = [firstObject isEqualToString:@"-h"];

  v5 = mainCopy;
  if (v4)
  {
    self->_useHomeModelIDs = 1;
    [mainCopy removeObjectAtIndex:0];
  }

  v6 = __stdoutp;
  if ([mainCopy count] == 2)
  {
    lastObject = [mainCopy lastObject];
    v8 = fopen([lastObject cString], "w");

    if (v8)
    {
      v6 = v8;
    }

    v5 = mainCopy;
    [mainCopy removeLastObject];
  }

  if ([v5 count] == 1)
  {
    v261 = objc_autoreleasePoolPush();
    lastObject2 = [v5 lastObject];
    if (!self)
    {
LABEL_114:
      v243 = lastObject2;

      objc_autoreleasePoolPop(v261);
      v45 = 0;
      if (!v6 || v6 == __stdoutp)
      {
        goto LABEL_120;
      }

      v46 = __stderrp;
      goto LABEL_117;
    }

    v260 = lastObject2;
    v10 = lastObject2;
    v11 = objc_autoreleasePoolPush();
    v12 = v10;
    v13 = objc_autoreleasePoolPush();
    ppDb[0] = 0;
    uTF8String = [v12 UTF8String];
    v301 = 0;
    v302 = &v301;
    v303 = 0x3032000000;
    v304 = sub_10000BA6C;
    v305 = sub_10000BA7C;
    v306 = 0;
    v15 = v12;
    if (sqlite3_open([v12 UTF8String], ppDb))
    {
      v16 = __stderrp;
      sqlite3_errmsg(ppDb[0]);
      sub_1000055DC(v16, @"failed to open %s: %s \n", v17, v18, v19, v20, v21, v22, uTF8String);
    }

    *stream = _NSConcreteStackBlock;
    *&stream[8] = 3221225472;
    *&stream[16] = sub_10000BA84;
    *&stream[24] = &unk_100030958;
    *&stream[32] = &v301;
    if (sqlite3_exec_b())
    {
      v29 = __stderrp;
      v30 = sqlite3_errmsg(ppDb[0]);
      sqlite3_close(ppDb[0]);
    }

    else
    {
      v47 = v302[5];
      if (v47)
      {
        printf("found cached model with compressed size: %llu \n", [v47 length]);
        sqlite3_close(ppDb[0]);
        v48 = objc_opt_self();
        v37 = v302[5];
LABEL_19:
        _Block_object_dispose(&v301, 8);

        objc_autoreleasePoolPop(v13);
        if (v37)
        {
          if ([v37 length])
          {
            memset(stream, 0, 40);
            v55 = compression_stream_init(stream, COMPRESSION_STREAM_DECODE, COMPRESSION_ZLIB);
            if (v55)
            {
              sub_1000055DC(__stderrp, @"failed to initialize compression decoder: %d", v56, v57, v58, v59, v60, v61, v55);
              v62 = 0;
            }

            else
            {
              v62 = +[NSMutableData data];
              v64 = v37;
              *&stream[16] = [v37 bytes];
              *&stream[24] = [v37 length];
              do
              {
                *stream = &v301;
                *&stream[8] = 1024;
                v65 = compression_stream_process(stream, 1);
                if (v65 > 1)
                {
                  compression_stream_destroy(stream);
                  sub_1000055DC(__stderrp, @"failed to decompress cached model: %d \n", v66, v67, v68, v69, v70, v71, v65);
                  goto LABEL_35;
                }

                if (*&stream[8] != 1024)
                {
                  [v62 appendBytes:&v301 length:1024 - *&stream[8]];
                }
              }

              while (!v65);
              compression_stream_destroy(stream);
              if (v62 && [v62 length])
              {
                printf("decompressed cached model is %llu bytes \n", [v62 length]);
                v62 = v62;
                v63 = v62;
                goto LABEL_36;
              }
            }

LABEL_35:
            v63 = 0;
LABEL_36:

            goto LABEL_37;
          }

          sub_1000055DC(__stderrp, @"compressed cached model has zero size(?!) \n", v49, v50, v51, v52, v53, v54, v246);
        }

        v63 = 0;
LABEL_37:

        objc_autoreleasePoolPop(v11);
        v72 = v63;
        v73 = objc_autoreleasePoolPush();
        if (v72)
        {
          v74 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v72 error:0];
          [v74 setRequiresSecureCoding:1];
          [v74 _allowDecodingCyclesInSecureMode];
          [v74 setDecodingFailurePolicy:1];
          v75 = [NSSet setWithObject:objc_opt_class()];
          v76 = [v74 decodeObjectOfClasses:v75 forKey:@"root"];

          error = [v74 error];
          LOBYTE(v75) = error == 0;

          if (v75)
          {

            v268 = v76;
          }

          else
          {
            v78 = __stderrp;
            error2 = [v74 error];
            v80 = [error2 description];
            v81 = v80;
            uTF8String2 = [v80 UTF8String];
            sub_1000055DC(v78, @"Error Decoding Model - %s \n", v83, v84, v85, v86, v87, v88, uTF8String2);

            v268 = 0;
          }
        }

        else
        {
          v268 = 0;
        }

        objc_autoreleasePoolPop(v73);

        if (v268)
        {
          name = [NSURL fileURLWithPath:v12];
          v264 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v268];
          v299[0] = NSReadOnlyPersistentStoreOption;
          v89 = [NSNumber numberWithBool:1];
          v300[0] = v89;
          v299[1] = NSPersistentHistoryTrackingKey;
          v90 = [NSNumber numberWithBool:1];
          v300[1] = v90;
          v259 = [NSDictionary dictionaryWithObjects:v300 forKeys:v299 count:2];

          v295 = 0;
          v262 = [v264 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:name options:v259 error:&v295];
          v97 = v295;
          if (v262)
          {
            obj = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
            objc_storeStrong(&self->_context, obj);
            [obj setPersistentStoreCoordinator:v264];
            v263 = [NSPersistentHistoryChangeRequest fetchHistoryAfterToken:0];
            v294 = v97;
            v254 = [obj executeRequest:v263 error:&v294];
            v251 = v294;

            result = [v254 result];
            v99 = result == 0;

            if (v99)
            {
              v138 = __stderrp;
              v139 = [v251 description];
              v140 = v139;
              uTF8String3 = [v139 UTF8String];
              v142 = [v262 description];
              v143 = v142;
              [v142 UTF8String];
              sub_1000055DC(v138, @"Error Fetching History - %s for store %s \n", v144, v145, v146, v147, v148, v149, uTF8String3);
            }

            else
            {
              v100 = objc_alloc_init(NSMutableDictionary);
              tombstones = self->_tombstones;
              self->_tombstones = v100;

              context = objc_autoreleasePoolPush();
              v280 = +[NSPersistentHistoryChange fetchRequest];
              v102 = [NSPredicate predicateWithFormat:@"%K = %@", @"changeType", &off_100033790];
              [v280 setPredicate:v102];

              v103 = [NSPersistentHistoryChangeRequest fetchHistoryWithFetchRequest:v280];
              [v103 setResultType:4];
              v104 = self->_context;
              ppDb[0] = 0;
              v105 = [(NSManagedObjectContext *)v104 executeRequest:v103 error:ppDb];
              v106 = ppDb[0];
              v276 = v106;
              if (v105)
              {
                v298 = 0u;
                memset(stream, 0, sizeof(stream));
                result2 = [v105 result];
                v114 = [result2 countByEnumeratingWithState:stream objects:&v301 count:16];
                if (v114)
                {
                  v115 = **&stream[16];
                  do
                  {
                    for (i = 0; i != v114; i = i + 1)
                    {
                      if (**&stream[16] != v115)
                      {
                        objc_enumerationMutation(result2);
                      }

                      v117 = *(*&stream[8] + 8 * i);
                      tombstone = [v117 tombstone];
                      if ([tombstone count])
                      {
                        v119 = self->_tombstones;
                        changedObjectID = [v117 changedObjectID];
                        [(NSMutableDictionary *)v119 setObject:tombstone forKeyedSubscript:changedObjectID];
                      }
                    }

                    v114 = [result2 countByEnumeratingWithState:stream objects:&v301 count:16];
                  }

                  while (v114);
                }
              }

              else
              {
                sub_1000055DC(__stderrp, @"Failed to deletion history: %@\n", v107, v108, v109, v110, v111, v112, v106);
              }

              objc_autoreleasePoolPop(context);
              v250 = objc_autoreleasePoolPush();
              v256 = objc_alloc_init(NSDateFormatter);
              [v256 setDateFormat:@"yyyy-MM-dd HH:mm:ss.SSSZ"];
              v292 = 0u;
              v293 = 0u;
              v290 = 0u;
              v291 = 0u;
              result3 = [v254 result];
              v255 = [result3 countByEnumeratingWithState:&v290 objects:&v301 count:16];
              if (v255)
              {
                v252 = *v291;
                do
                {
                  v150 = 0;
                  do
                  {
                    if (*v291 != v252)
                    {
                      v151 = v150;
                      objc_enumerationMutation(result3);
                      v150 = v151;
                    }

                    v257 = v150;
                    v152 = *(*(&v290 + 1) + 8 * v150);
                    v258 = objc_autoreleasePoolPush();
                    transactionNumber = [v152 transactionNumber];
                    processID = [v152 processID];
                    bundleID = [v152 bundleID];
                    author = [v152 author];
                    timestamp = [v152 timestamp];
                    v158 = [v256 stringFromDate:timestamp];
                    v158 = [NSString stringWithFormat:@"Transaction (%lld): %@:%@:%@ at %@", transactionNumber, processID, bundleID, author, v158];

                    v159 = v158;
                    v160 = [v158 cStringUsingEncoding:4];
                    sub_1000055DC(v6, @"%s\n", v161, v162, v163, v164, v165, v166, v160);
                    v288 = 0u;
                    v289 = 0u;
                    v286 = 0u;
                    v287 = 0u;
                    changes = [v152 changes];
                    v272 = [changes countByEnumeratingWithState:&v286 objects:stream count:16];
                    if (v272)
                    {
                      v271 = *v287;
                      do
                      {
                        v167 = 0;
                        do
                        {
                          if (*v287 != v271)
                          {
                            v168 = v167;
                            objc_enumerationMutation(changes);
                            v167 = v168;
                          }

                          v275 = v167;
                          v169 = *(*(&v286 + 1) + 8 * v167);
                          v277 = objc_autoreleasePoolPush();
                          changeType = [v169 changeType];
                          contexta = [v169 changeID];
                          if (changeType >= 3)
                          {
                            v170 = [NSString stringWithFormat:@"%zd", changeType];
                          }

                          else
                          {
                            v170 = off_100030978[changeType];
                          }

                          changedObjectID2 = [v169 changedObjectID];
                          entity = [changedObjectID2 entity];
                          attributesByName = [entity attributesByName];

                          v174 = [attributesByName objectForKeyedSubscript:@"modelID"];
                          LODWORD(entity) = v174 == 0;

                          if (entity)
                          {
                            v178 = sub_10000CC24(changedObjectID2, 0);
                          }

                          else
                          {
                            v175 = [(NSMutableDictionary *)self->_tombstones objectForKeyedSubscript:changedObjectID2];
                            v176 = v175;
                            if (v175)
                            {
                              v273 = 0;
                              v177 = v175;
                            }

                            else
                            {
                              v273 = [(NSManagedObjectContext *)self->_context existingObjectWithID:changedObjectID2 error:0];
                              v177 = v273;
                            }

                            v179 = [v177 valueForKey:@"modelID"];
                            v180 = v179;
                            v181 = @"???";
                            if (v179)
                            {
                              v181 = v179;
                            }

                            v182 = v181;

                            if (self->_useHomeModelIDs)
                            {
                              v183 = [attributesByName objectForKeyedSubscript:@"homeModelID"];
                              v184 = v183 == 0;

                              if (!v184)
                              {
                                v185 = [v177 valueForKey:@"homeModelID"];
                                v186 = v185;
                                v187 = @"???";
                                if (v185)
                                {
                                  v187 = v185;
                                }

                                v188 = v187;

                                v188 = [NSString stringWithFormat:@"%@[H:%@]", v182, v188];

                                v182 = v188;
                              }
                            }

                            v178 = sub_10000CC24(changedObjectID2, v182);
                          }

                          sub_1000055DC(v6, @"    Change (%lld): %@ %@", v190, v191, v192, v193, v194, v195, contexta);
                          if (changeType == 2)
                          {
                            tombstone2 = [v169 tombstone];
                            if (![tombstone2 count])
                            {
                              goto LABEL_95;
                            }

                            allKeys = [tombstone2 allKeys];
                            if ([allKeys count] <= 1)
                            {
                              firstObject2 = [allKeys firstObject];
                              v230 = [firstObject2 isEqualToString:@"modelID"];

                              if (v230)
                              {

LABEL_95:
LABEL_96:
                                sub_1000055DC(v6, @"\n", v196, v197, v198, v199, v200, v201, v247);
                                goto LABEL_106;
                              }
                            }

                            sub_1000055DC(v6, @" with tombstone\n", v223, v224, v225, v226, v227, v228, v247);
                            v284 = 0u;
                            v285 = 0u;
                            v282 = 0u;
                            v283 = 0u;
                            allKeys2 = [tombstone2 allKeys];
                            v232 = [allKeys2 sortedArrayUsingSelector:"compare:"];

                            v233 = [v232 countByEnumeratingWithState:&v282 objects:ppDb count:16];
                            if (v233)
                            {
                              v234 = *v283;
                              do
                              {
                                for (j = 0; j != v233; j = j + 1)
                                {
                                  if (*v283 != v234)
                                  {
                                    objc_enumerationMutation(v232);
                                  }

                                  v236 = *(*(&v282 + 1) + 8 * j);
                                  v249 = [tombstone2 objectForKeyedSubscript:v236];
                                  sub_1000055DC(v6, @"        %@ = %@\n", v237, v238, v239, v240, v241, v242, v236);
                                }

                                v233 = [v232 countByEnumeratingWithState:&v282 objects:ppDb count:16];
                              }

                              while (v233);
                            }
                          }

                          else
                          {
                            if (changeType != 1)
                            {
                              goto LABEL_96;
                            }

                            updatedProperties = [v169 updatedProperties];
                            v203 = [updatedProperties count];

                            if (v203)
                            {
                              updatedProperties2 = [v169 updatedProperties];
                              allObjects = [updatedProperties2 allObjects];
                              v212 = [allObjects valueForKey:@"name"];

                              v213 = [v212 sortedArrayUsingSelector:"compare:"];
                              v214 = [v213 componentsJoinedByString:{@", "}];
                              sub_1000055DC(v6, @" - %@\n", v215, v216, v217, v218, v219, v220, v214);
                            }

                            else
                            {
                              sub_1000055DC(v6, @" - (no property changes)\n", v204, v205, v206, v207, v208, v209, v247);
                            }
                          }

LABEL_106:
                          objc_autoreleasePoolPop(v277);
                          v167 = v275 + 1;
                        }

                        while ((v275 + 1) != v272);
                        v272 = [changes countByEnumeratingWithState:&v286 objects:stream count:16];
                      }

                      while (v272);
                    }

                    objc_autoreleasePoolPop(v258);
                    v150 = v257 + 1;
                  }

                  while ((v257 + 1) != v255);
                  v255 = [result3 countByEnumeratingWithState:&v290 objects:&v301 count:16];
                }

                while (v255);
              }

              objc_autoreleasePoolPop(v250);
            }

            v97 = v251;
          }

          else
          {
            sub_1000055DC(__stderrp, @"Unable to open persistence store : %@ / %@\n", v91, v92, v93, v94, v95, v96, @"hmktool");
            v128 = __stderrp;
            obj = [v97 description];
            v129 = obj;
            uTF8String4 = [obj UTF8String];
            v263 = [name description];
            v131 = v263;
            [v263 UTF8String];
            sub_1000055DC(v128, @"Error Adding Store - %s at path %s \n", v132, v133, v134, v135, v136, v137, uTF8String4);
          }
        }

        else
        {
          v121 = __stderrp;
          name = [objc_opt_class() name];
          sub_1000055DC(v121, @"nil model found after decompression: %@ / %@\n", v122, v123, v124, v125, v126, v127, @"hmktool");
        }

        lastObject2 = v260;
        goto LABEL_114;
      }

      sub_1000055DC(__stderrp, @"store does not contain a cached model \n", v23, v24, v25, v26, v27, v28, v245);
    }

    v37 = 0;
    goto LABEL_19;
  }

  v38 = __stderrp;
  name2 = [objc_opt_class() name];
  sub_1000055DC(v38, @"Usage: %@ %@ [-h] <sqlite store file>\n", v39, v40, v41, v42, v43, v44, @"hmktool");

  v45 = 1;
  if (!v6 || v6 == __stdoutp)
  {
    goto LABEL_120;
  }

  v46 = __stderrp;
LABEL_117:
  if (v6 != v46 && v6 != __stdinp)
  {
    fflush(v6);
    fclose(v6);
  }

LABEL_120:

  return v45;
}

@end