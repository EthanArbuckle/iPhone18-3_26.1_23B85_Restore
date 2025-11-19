@interface HMKTDumpHistory
- (int)main:(id)a3;
@end

@implementation HMKTDumpHistory

- (int)main:(id)a3
{
  v269 = a3;
  v3 = [v269 firstObject];
  v4 = [v3 isEqualToString:@"-h"];

  v5 = v269;
  if (v4)
  {
    self->_useHomeModelIDs = 1;
    [v269 removeObjectAtIndex:0];
  }

  v6 = __stdoutp;
  if ([v269 count] == 2)
  {
    v7 = [v269 lastObject];
    v8 = fopen([v7 cString], "w");

    if (v8)
    {
      v6 = v8;
    }

    v5 = v269;
    [v269 removeLastObject];
  }

  if ([v5 count] == 1)
  {
    v261 = objc_autoreleasePoolPush();
    v9 = [v5 lastObject];
    if (!self)
    {
LABEL_114:
      v243 = v9;

      objc_autoreleasePoolPop(v261);
      v45 = 0;
      if (!v6 || v6 == __stdoutp)
      {
        goto LABEL_120;
      }

      v46 = __stderrp;
      goto LABEL_117;
    }

    v260 = v9;
    v10 = v9;
    v11 = objc_autoreleasePoolPush();
    v12 = v10;
    v13 = objc_autoreleasePoolPush();
    ppDb[0] = 0;
    v14 = [v12 UTF8String];
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
      sub_1000055DC(v16, @"failed to open %s: %s \n", v17, v18, v19, v20, v21, v22, v14);
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

          v77 = [v74 error];
          LOBYTE(v75) = v77 == 0;

          if (v75)
          {

            v268 = v76;
          }

          else
          {
            v78 = __stderrp;
            v79 = [v74 error];
            v80 = [v79 description];
            v81 = v80;
            v82 = [v80 UTF8String];
            sub_1000055DC(v78, @"Error Decoding Model - %s \n", v83, v84, v85, v86, v87, v88, v82);

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
          v266 = [NSURL fileURLWithPath:v12];
          v264 = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:v268];
          v299[0] = NSReadOnlyPersistentStoreOption;
          v89 = [NSNumber numberWithBool:1];
          v300[0] = v89;
          v299[1] = NSPersistentHistoryTrackingKey;
          v90 = [NSNumber numberWithBool:1];
          v300[1] = v90;
          v259 = [NSDictionary dictionaryWithObjects:v300 forKeys:v299 count:2];

          v295 = 0;
          v262 = [v264 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v266 options:v259 error:&v295];
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

            v98 = [v254 result];
            v99 = v98 == 0;

            if (v99)
            {
              v138 = __stderrp;
              v139 = [v251 description];
              v140 = v139;
              v141 = [v139 UTF8String];
              v142 = [v262 description];
              v143 = v142;
              [v142 UTF8String];
              sub_1000055DC(v138, @"Error Fetching History - %s for store %s \n", v144, v145, v146, v147, v148, v149, v141);
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
                v113 = [v105 result];
                v114 = [v113 countByEnumeratingWithState:stream objects:&v301 count:16];
                if (v114)
                {
                  v115 = **&stream[16];
                  do
                  {
                    for (i = 0; i != v114; i = i + 1)
                    {
                      if (**&stream[16] != v115)
                      {
                        objc_enumerationMutation(v113);
                      }

                      v117 = *(*&stream[8] + 8 * i);
                      v118 = [v117 tombstone];
                      if ([v118 count])
                      {
                        v119 = self->_tombstones;
                        v120 = [v117 changedObjectID];
                        [(NSMutableDictionary *)v119 setObject:v118 forKeyedSubscript:v120];
                      }
                    }

                    v114 = [v113 countByEnumeratingWithState:stream objects:&v301 count:16];
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
              v253 = [v254 result];
              v255 = [v253 countByEnumeratingWithState:&v290 objects:&v301 count:16];
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
                      objc_enumerationMutation(v253);
                      v150 = v151;
                    }

                    v257 = v150;
                    v152 = *(*(&v290 + 1) + 8 * v150);
                    v258 = objc_autoreleasePoolPush();
                    v153 = [v152 transactionNumber];
                    v154 = [v152 processID];
                    v155 = [v152 bundleID];
                    v156 = [v152 author];
                    v157 = [v152 timestamp];
                    v158 = [v256 stringFromDate:v157];
                    v267 = [NSString stringWithFormat:@"Transaction (%lld): %@:%@:%@ at %@", v153, v154, v155, v156, v158];

                    v159 = v267;
                    v160 = [v267 cStringUsingEncoding:4];
                    sub_1000055DC(v6, @"%s\n", v161, v162, v163, v164, v165, v166, v160);
                    v288 = 0u;
                    v289 = 0u;
                    v286 = 0u;
                    v287 = 0u;
                    v270 = [v152 changes];
                    v272 = [v270 countByEnumeratingWithState:&v286 objects:stream count:16];
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
                            objc_enumerationMutation(v270);
                            v167 = v168;
                          }

                          v275 = v167;
                          v169 = *(*(&v286 + 1) + 8 * v167);
                          v277 = objc_autoreleasePoolPush();
                          v170 = [v169 changeType];
                          contexta = [v169 changeID];
                          if (v170 >= 3)
                          {
                            v281 = [NSString stringWithFormat:@"%zd", v170];
                          }

                          else
                          {
                            v281 = off_100030978[v170];
                          }

                          v171 = [v169 changedObjectID];
                          v172 = [v171 entity];
                          v173 = [v172 attributesByName];

                          v174 = [v173 objectForKeyedSubscript:@"modelID"];
                          LODWORD(v172) = v174 == 0;

                          if (v172)
                          {
                            v178 = sub_10000CC24(v171, 0);
                          }

                          else
                          {
                            v175 = [(NSMutableDictionary *)self->_tombstones objectForKeyedSubscript:v171];
                            v176 = v175;
                            if (v175)
                            {
                              v273 = 0;
                              v177 = v175;
                            }

                            else
                            {
                              v273 = [(NSManagedObjectContext *)self->_context existingObjectWithID:v171 error:0];
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
                              v183 = [v173 objectForKeyedSubscript:@"homeModelID"];
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

                                v189 = [NSString stringWithFormat:@"%@[H:%@]", v182, v188];

                                v182 = v189;
                              }
                            }

                            v178 = sub_10000CC24(v171, v182);
                          }

                          sub_1000055DC(v6, @"    Change (%lld): %@ %@", v190, v191, v192, v193, v194, v195, contexta);
                          if (v170 == 2)
                          {
                            v221 = [v169 tombstone];
                            if (![v221 count])
                            {
                              goto LABEL_95;
                            }

                            v222 = [v221 allKeys];
                            if ([v222 count] <= 1)
                            {
                              v229 = [v222 firstObject];
                              v230 = [v229 isEqualToString:@"modelID"];

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
                            v231 = [v221 allKeys];
                            v232 = [v231 sortedArrayUsingSelector:"compare:"];

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
                                  v249 = [v221 objectForKeyedSubscript:v236];
                                  sub_1000055DC(v6, @"        %@ = %@\n", v237, v238, v239, v240, v241, v242, v236);
                                }

                                v233 = [v232 countByEnumeratingWithState:&v282 objects:ppDb count:16];
                              }

                              while (v233);
                            }
                          }

                          else
                          {
                            if (v170 != 1)
                            {
                              goto LABEL_96;
                            }

                            v202 = [v169 updatedProperties];
                            v203 = [v202 count];

                            if (v203)
                            {
                              v210 = [v169 updatedProperties];
                              v211 = [v210 allObjects];
                              v212 = [v211 valueForKey:@"name"];

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
                        v272 = [v270 countByEnumeratingWithState:&v286 objects:stream count:16];
                      }

                      while (v272);
                    }

                    objc_autoreleasePoolPop(v258);
                    v150 = v257 + 1;
                  }

                  while ((v257 + 1) != v255);
                  v255 = [v253 countByEnumeratingWithState:&v290 objects:&v301 count:16];
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
            v130 = [obj UTF8String];
            v263 = [v266 description];
            v131 = v263;
            [v263 UTF8String];
            sub_1000055DC(v128, @"Error Adding Store - %s at path %s \n", v132, v133, v134, v135, v136, v137, v130);
          }
        }

        else
        {
          v121 = __stderrp;
          v266 = [objc_opt_class() name];
          sub_1000055DC(v121, @"nil model found after decompression: %@ / %@\n", v122, v123, v124, v125, v126, v127, @"hmktool");
        }

        v9 = v260;
        goto LABEL_114;
      }

      sub_1000055DC(__stderrp, @"store does not contain a cached model \n", v23, v24, v25, v26, v27, v28, v245);
    }

    v37 = 0;
    goto LABEL_19;
  }

  v38 = __stderrp;
  v248 = [objc_opt_class() name];
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