@interface ODRDiagnosticsClient
- (void)allRegisteredODRAppsWithReply:(id)reply;
- (void)assetsForBundleID:(id)d withReply:(id)reply;
- (void)cancelMaintenanceWithReply:(id)reply;
- (void)cancelRequestWithUUID:(id)d withCompletion:(id)completion;
- (void)expireAssetURLSForBundleIDs:(id)ds withReply:(id)reply;
- (void)fakeWorkWithCount:(id)count reply:(id)reply;
- (void)fetchManifestForAdamID:(id)d externalVersionID:(id)iD variant:(id)variant withFetchCompletion:(id)completion;
- (void)getSimulatedBandwidthWithReply:(id)reply;
- (void)getSpaceReductionWithReply:(id)reply;
- (void)loadSourceURL:(id)l intoDestinationURL:(id)rL isUrgent:(BOOL)urgent isStreaming:(BOOL)streaming withRequestCompletion:(id)completion;
- (void)manifestDictionaryForBundleID:(id)d withReply:(id)reply;
- (void)nonPurgeableAssetsWithReply:(id)reply;
- (void)pauseRequestWithUUID:(id)d withCompletion:(id)completion;
- (void)performMaintenanceWithReply:(id)reply;
- (void)purgeAllAssetsForApplication:(id)application withRequestCompletion:(id)completion;
- (void)purgeAllAssetsForApplications:(id)applications withRequestCompletion:(id)completion;
- (void)purgeAssetWithIdentifier:(id)identifier withRequestCompletion:(id)completion;
- (void)purgeBytes:(int64_t)bytes odrOnly:(BOOL)only urgency:(int)urgency withReply:(id)reply;
- (void)purgeableAssetsWithReply:(id)reply;
- (void)registerManifest:(id)manifest forBundleID:(id)d withRequestCompletion:(id)completion;
- (void)resumeRequestWithUUID:(id)d withCompletion:(id)completion;
- (void)setLoggingEnabled:(BOOL)enabled reply:(id)reply;
- (void)setSampler:(id)sampler enabled:(BOOL)enabled samplingInterval:(double)interval reply:(id)reply;
- (void)setSimulatedBandwidth:(unint64_t)bandwidth withReply:(id)reply;
- (void)setSpaceReduction:(unint64_t)reduction withReply:(id)reply;
- (void)statusWithReply:(id)reply;
- (void)testPurgeBytes:(int64_t)bytes urgency:(int)urgency withReply:(id)reply;
@end

@implementation ODRDiagnosticsClient

- (void)manifestDictionaryForBundleID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_10037B41C;
  v17 = sub_10037B42C;
  v18 = 0;
  v7 = sub_100399B78(ODRApplication, dCopy);
  v8 = sub_100208FBC();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10037B434;
  v10[3] = &unk_100522160;
  v9 = v7;
  v11 = v9;
  v12 = &v13;
  [v8 readUsingSession:v10];

  replyCopy[2](replyCopy, v14[5], 0);
  _Block_object_dispose(&v13, 8);
}

- (void)allRegisteredODRAppsWithReply:(id)reply
{
  replyCopy = reply;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_10037B41C;
  v10 = sub_10037B42C;
  v11 = 0;
  v4 = sub_100208FBC();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10037B718;
  v5[3] = &unk_10051B610;
  v5[4] = &v6;
  [v4 readUsingSession:v5];

  replyCopy[2](replyCopy, v7[5], 0);
  _Block_object_dispose(&v6, 8);
}

- (void)assetsForBundleID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = sub_10037B41C;
  v93 = sub_10037B42C;
  v94 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x3032000000;
  v86 = sub_10037B41C;
  v87 = sub_10037B42C;
  v88 = 0;
  v56 = dCopy;
  v6 = sub_100399B78(ODRApplication, dCopy);
  v7 = sub_100208FBC();
  v79[0] = _NSConcreteStackBlock;
  v79[1] = 3221225472;
  v79[2] = sub_10037C128;
  v79[3] = &unk_100523AF8;
  v81 = &v89;
  v57 = v6;
  v80 = v57;
  v82 = &v83;
  [v7 readUsingSession:v79];

  v8 = v84[5];
  if (self)
  {
    v69 = objc_opt_new();
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v95 objects:v103 count:16];
    if (v10)
    {
      v11 = *v96;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v96 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v95 + 1) + 8 * i);
          v14 = sub_1002BFFF0(v13);
          v15 = [v69 objectForKeyedSubscript:v14];

          if (!v15)
          {
            v15 = objc_opt_new();
          }

          [v15 addObject:v13];
          v16 = sub_1002BFFF0(v13);
          [v69 setObject:v15 forKeyedSubscript:v16];
        }

        v10 = [v9 countByEnumeratingWithState:&v95 objects:v103 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v69 = 0;
  }

  v61 = +[NSMutableArray array];
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = v90[5];
  v63 = [obj countByEnumeratingWithState:&v75 objects:v102 count:16];
  if (v63)
  {
    v60 = *v76;
    do
    {
      v68 = 0;
      do
      {
        if (*v76 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v75 + 1) + 8 * v68);
        v70 = +[NSMutableDictionary dictionary];
        v100[0] = @"bundleID";
        v67 = sub_100269134(v17);
        v101[0] = v67;
        v100[1] = @"size";
        v66 = sub_100269550(v17);
        v101[1] = v66;
        v100[2] = @"lastUsedDate";
        v18 = sub_10023E0F8(v17, @"last_used_date");
        v65 = v18;
        v19 = @"-Unknown-";
        if (v18)
        {
          v19 = v18;
        }

        v101[2] = v19;
        v100[3] = @"isOnDevice";
        v64 = [NSNumber numberWithBool:sub_100269CA8(v17)];
        v101[3] = v64;
        v100[4] = @"purgeable";
        v20 = [NSNumber numberWithBool:sub_1002694C0(v17)];
        v101[4] = v20;
        v100[5] = @"isStreamable";
        v21 = sub_100269358(v17);
        v101[5] = v21;
        v100[6] = @"pinCount";
        v22 = [NSNumber numberWithLongLong:sub_100269440(v17)];
        v101[6] = v22;
        v100[7] = @"chunkSize";
        v23 = sub_10026916C(v17);
        v101[7] = v23;
        v100[8] = @"md5";
        v24 = sub_100269408(v17);
        v101[8] = v24;
        v100[9] = @"downloadPriority";
        v25 = sub_1002691DC(v17);
        v101[9] = v25;
        v100[10] = @"downloadIdentifier";
        v26 = sub_1002691A4(v17);
        v101[10] = v26;
        v100[11] = @"humanReadablePurgeReason";
        v27 = sub_1001DA3A4(v17);
        v101[11] = v27;
        v28 = [NSDictionary dictionaryWithObjects:v101 forKeys:v100 count:12];
        [v70 addEntriesFromDictionary:v28];

        v29 = sub_100269390(v17);

        if (v29)
        {
          v30 = sub_100269390(v17);
          absoluteString = [v30 absoluteString];
          [v70 setObject:absoluteString forKeyedSubscript:@"localURL"];
        }

        v32 = sub_1002692E8(v17);
        v33 = v32;
        if (self)
        {
          v34 = [v32 count];
          v35 = objc_alloc_init(NSMutableString);
          v36 = v35;
          if (v34 < 1)
          {
            [v35 appendFormat:@"No hashes"];
          }

          else
          {
            for (j = 0; j != v34; ++j)
            {
              v38 = [v33 objectAtIndex:j];
              v39 = v38;
              if (j >= v34 - 1)
              {
                v40 = @"%@";
              }

              else
              {
                v40 = @"%@, ";
              }

              [v36 appendFormat:v40, v38];
            }
          }
        }

        else
        {
          v36 = 0;
        }

        [v70 setObject:v36 forKeyedSubscript:@"Hashes"];
        v41 = sub_100269214(v17);
        v42 = [NSNumber numberWithBool:v41];
        [v70 setObject:v42 forKeyedSubscript:@"effectivelyAlwaysPreserve"];

        v43 = [NSNumber numberWithDouble:sub_10026925C(v17)];
        [v70 setObject:v43 forKeyedSubscript:@"effectivePreservationPriority"];

        if (v41)
        {
          v44 = objc_opt_new();
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v45 = sub_100269134(v17);
          v46 = [v69 objectForKeyedSubscript:v45];

          v47 = [v46 countByEnumeratingWithState:&v71 objects:v99 count:16];
          if (v47)
          {
            v48 = *v72;
            do
            {
              for (k = 0; k != v47; k = k + 1)
              {
                if (*v72 != v48)
                {
                  objc_enumerationMutation(v46);
                }

                v50 = *(*(&v71 + 1) + 8 * k);
                if (sub_1002C0028(v50))
                {
                  v51 = sub_1002C0070(v50);
                  [v44 addObject:v51];
                }
              }

              v47 = [v46 countByEnumeratingWithState:&v71 objects:v99 count:16];
            }

            while (v47);
          }

          [v70 setObject:v44 forKeyedSubscript:@"-PreservingTags-"];
        }

        v52 = sub_100269134(v17);
        v53 = [v69 objectForKeyedSubscript:v52];

        v54 = sub_10036FDEC(v53, &stru_100525560);
        [v70 setObject:v54 forKeyedSubscript:@"tags"];
        [v61 addObject:v70];

        v68 = v68 + 1;
      }

      while (v68 != v63);
      v55 = [obj countByEnumeratingWithState:&v75 objects:v102 count:16];
      v63 = v55;
    }

    while (v55);
  }

  replyCopy[2](replyCopy, v61, 0);
  _Block_object_dispose(&v83, 8);

  _Block_object_dispose(&v89, 8);
}

- (void)expireAssetURLSForBundleIDs:(id)ds withReply:(id)reply
{
  replyCopy = reply;
  dsCopy = ds;
  v6 = sub_100220330();
  v7 = sub_100220BD0(v6, dsCopy);

  if (v7)
  {
    replyCopy[2](replyCopy, 0);
  }

  else
  {
    v8 = [NSError errorWithDomain:@"_OnDemandResourcesErrorDomain" code:900 userInfo:0];
    (replyCopy)[2](replyCopy, v8);
  }
}

- (void)fakeWorkWithCount:(id)count reply:(id)reply
{
  countCopy = count;
  replyCopy = reply;
  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109120;
    v8[1] = [countCopy intValue];
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "Creating [%d] fake work items.", v8, 8u);
  }

  replyCopy[2](replyCopy);
}

- (void)statusWithReply:(id)reply
{
  replyCopy = reply;
  v3 = sub_100220330();
  v4 = sub_1002230D4(v3);

  [qword_1005AAD18 lock];
  if ([qword_1005AAD10 count])
  {
    [v4 appendString:@"\n\nSamplers :\n"];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    allKeys = [qword_1005AAD10 allKeys];
    v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(allKeys);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [qword_1005AAD10 objectForKey:v9];
          currentStatsString = [v10 currentStatsString];
          [v4 appendFormat:@"\t%@ : %@", v9, currentStatsString];
        }

        v6 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }

    [v4 appendString:@"\n"];
  }

  [qword_1005AAD18 unlock];
  v12 = [v4 copy];
  replyCopy[2](replyCopy, v12, 0);
}

- (void)performMaintenanceWithReply:(id)reply
{
  replyCopy = reply;
  v3 = sub_1001C13C8();
  sub_1001C15E8(v3);

  replyCopy[2](replyCopy, 0);
}

- (void)cancelMaintenanceWithReply:(id)reply
{
  replyCopy = reply;
  v3 = sub_1001C13C8();
  sub_1001C14D8(v3);

  replyCopy[2](replyCopy, 0);
}

- (void)setLoggingEnabled:(BOOL)enabled reply:(id)reply
{
  v7 = NSDebugDescriptionErrorKey;
  v8 = @"No longer supported - logging is always on.";
  replyCopy = reply;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v6 = [NSError errorWithDomain:@"_OnDemandResourcesErrorDomain" code:108 userInfo:v5];
  replyCopy[2](replyCopy, 0, v6);
}

- (void)setSampler:(id)sampler enabled:(BOOL)enabled samplingInterval:(double)interval reply:(id)reply
{
  enabledCopy = enabled;
  samplerCopy = sampler;
  replyCopy = reply;
  [qword_1005AAD18 lock];
  if ([samplerCopy isEqualToString:@"memory"])
  {
    v10 = qword_1005AAD10;
    if (enabledCopy)
    {
      if (!qword_1005AAD10)
      {
        v11 = objc_alloc_init(NSMutableDictionary);
        v12 = qword_1005AAD10;
        qword_1005AAD10 = v11;

        v10 = qword_1005AAD10;
      }

      v13 = [v10 objectForKey:@"memory"];
      v14 = v13;
      if (v13)
      {
        sub_10031FD5C(v13);
        [qword_1005AAD10 removeObjectForKey:@"memory"];
      }

      v15 = sub_10031FB5C([ODRMemorySampler alloc], interval);

      [qword_1005AAD10 setObject:v15 forKey:@"memory"];
      sub_10031FBE0(v15);
      samplerCopy = [NSString stringWithFormat:@"Sampler '%@' enabled with %f sampling interval.", samplerCopy, *&interval];
      replyCopy[2](replyCopy, samplerCopy, 0);
    }

    else
    {
      v17 = [qword_1005AAD10 objectForKey:@"memory"];
      v15 = v17;
      if (v17)
      {
        sub_10031FD5C(v17);
        samplerCopy = [NSString stringWithFormat:@"Sampler '%@' disabled.", samplerCopy];
        replyCopy[2](replyCopy, samplerCopy, 0);
      }

      else
      {
        samplerCopy = [NSError errorWithDomain:@"_OnDemandResourcesErrorDomain" code:113 userInfo:0];
        (replyCopy)[2](replyCopy, @"Sampler not found", samplerCopy);
      }
    }
  }

  else
  {
    v15 = [NSError errorWithDomain:@"_OnDemandResourcesErrorDomain" code:112 userInfo:0];
    (replyCopy)[2](replyCopy, @"Unknown sampler", v15);
  }

  [qword_1005AAD18 unlock];
}

- (void)loadSourceURL:(id)l intoDestinationURL:(id)rL isUrgent:(BOOL)urgent isStreaming:(BOOL)streaming withRequestCompletion:(id)completion
{
  completionCopy = completion;
  v9 = [NSError errorWithDomain:@"_OnDemandResourcesErrorDomain" code:3000 userInfo:0];
  (*(completion + 2))(completionCopy, v9);
}

- (void)cancelRequestWithUUID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = [NSError errorWithDomain:@"_OnDemandResourcesErrorDomain" code:3000 userInfo:0];
  (*(completion + 2))(completionCopy, v6);
}

- (void)pauseRequestWithUUID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = [NSError errorWithDomain:@"_OnDemandResourcesErrorDomain" code:3000 userInfo:0];
  (*(completion + 2))(completionCopy, v6);
}

- (void)resumeRequestWithUUID:(id)d withCompletion:(id)completion
{
  completionCopy = completion;
  v6 = [NSError errorWithDomain:@"_OnDemandResourcesErrorDomain" code:3000 userInfo:0];
  (*(completion + 2))(completionCopy, v6);
}

- (void)fetchManifestForAdamID:(id)d externalVersionID:(id)iD variant:(id)variant withFetchCompletion:(id)completion
{
  dCopy = d;
  iDCopy = iD;
  variantCopy = variant;
  completionCopy = completion;
  v13 = sub_100399CD8([ODRMutableApplication alloc], @"com.apple.AppStore");
  sub_10039C490(v13, dCopy);
  sub_10039C634(v13, iDCopy);
  sub_10039C3EC(v13, variantCopy);
  v14 = sub_10024D554([ODRManifestRequestTask alloc], v13);
  objc_initWeak(&location, v14);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10037CDFC;
  v16[3] = &unk_100522188;
  objc_copyWeak(&v18, &location);
  v15 = completionCopy;
  v17 = v15;
  [v14 setCompletionBlock:v16];
  sub_10023EDE4(ODRTaskQueue, v14, -1);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)registerManifest:(id)manifest forBundleID:(id)d withRequestCompletion:(id)completion
{
  manifestCopy = manifest;
  dCopy = d;
  completionCopy = completion;
  v10 = sub_100399B78(ODRApplication, dCopy);
  if (v10)
  {
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v19 = [manifestCopy length];
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[Diagnostics] Importing %{iec-bytes}lu manifest for %{public}@", buf, 0x16u);
    }

    v12 = sub_100338694([ODRApplicationImportTask alloc], v10);
    v14 = sub_100280A90([ODRManifest alloc], manifestCopy, dCopy, 0);
    if (v12)
    {
      objc_setProperty_atomic(v12, v13, v14, 48);
    }

    objc_initWeak(buf, v12);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10037D14C;
    v15[3] = &unk_100522188;
    objc_copyWeak(&v17, buf);
    v16 = completionCopy;
    [v12 setCompletionBlock:v15];
    sub_10023EDE4(ODRTaskQueue, v12, -1);

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)purgeableAssetsWithReply:(id)reply
{
  replyCopy = reply;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10037B41C;
  v12 = sub_10037B42C;
  v13 = 0;
  v4 = sub_100208FBC();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10037D368;
  v7[3] = &unk_10051B610;
  v7[4] = &v8;
  [v4 readUsingSession:v7];

  v5 = v9[5];
  if (v5)
  {
    v6 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"\nAsset Packs : %lu asset packs are purgeable.\n\n", [v5 count]);
    replyCopy[2](replyCopy, v6, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:@"_OnDemandResourcesErrorDomain" code:900 userInfo:0];
    (replyCopy)[2](replyCopy, 0, v6);
  }

  _Block_object_dispose(&v8, 8);
}

- (void)nonPurgeableAssetsWithReply:(id)reply
{
  replyCopy = reply;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_10037B41C;
  v12 = sub_10037B42C;
  v13 = 0;
  v4 = sub_100208FBC();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10037D550;
  v7[3] = &unk_10051B610;
  v7[4] = &v8;
  [v4 readUsingSession:v7];

  v5 = v9[5];
  if (v5)
  {
    v6 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"\nAsset Packs : %lu asset packs are not purgeable.\n\n", [v5 count]);
    replyCopy[2](replyCopy, v6, 0);
  }

  else
  {
    v6 = [NSError errorWithDomain:@"_OnDemandResourcesErrorDomain" code:900 userInfo:0];
    (replyCopy)[2](replyCopy, 0, v6);
  }

  _Block_object_dispose(&v8, 8);
}

- (void)purgeBytes:(int64_t)bytes odrOnly:(BOOL)only urgency:(int)urgency withReply:(id)reply
{
  onlyCopy = only;
  replyCopy = reply;
  v9 = sub_100220330();
  v10 = sub_100220884(v9, bytes, onlyCopy, urgency);

  replyCopy[2](replyCopy, v10, 0);
}

- (void)testPurgeBytes:(int64_t)bytes urgency:(int)urgency withReply:(id)reply
{
  v5 = *&urgency;
  v12 = 0;
  replyCopy = reply;
  v8 = sub_100220330();
  v9 = sub_100222470(v8, v5, bytes, &v12);

  v10 = objc_alloc_init(NSMutableString);
  v11 = [v9 count];
  [v10 appendFormat:@"\nAsset Packs Purge Test : %lu asset packs to purge for urgency %d (requested bytes : %lld; actual bytes : %lld).\n\n", v11, v5, bytes, v12];
  replyCopy[2](replyCopy, v10, 0);
}

- (void)purgeAllAssetsForApplication:(id)application withRequestCompletion:(id)completion
{
  applicationCopy = application;
  completionCopy = completion;
  v6 = sub_100220330();
  sub_100222B74(v6, applicationCopy, 2);

  completionCopy[2](completionCopy, 0);
}

- (void)purgeAllAssetsForApplications:(id)applications withRequestCompletion:(id)completion
{
  applicationsCopy = applications;
  completionCopy = completion;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [applicationsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(applicationsCopy);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = sub_100220330();
        sub_100222B74(v12, v11, 2);

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [applicationsCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  completionCopy[2](completionCopy, 0);
}

- (void)purgeAssetWithIdentifier:(id)identifier withRequestCompletion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  v6 = sub_100220330();
  sub_100222DB8(v6, identifierCopy, 2);

  completionCopy[2](completionCopy, 0);
}

- (void)getSimulatedBandwidthWithReply:(id)reply
{
  replyCopy = reply;
  v4 = sub_1002B3D88();
  (*(reply + 2))(replyCopy, v4, 0);
}

- (void)setSimulatedBandwidth:(unint64_t)bandwidth withReply:(id)reply
{
  replyCopy = reply;
  sub_1002B3D04(ODRSimulatedDownloadsManager, bandwidth);
  v5 = sub_1002B3D88();
  replyCopy[2](replyCopy, v5, 0);
}

- (void)getSpaceReductionWithReply:(id)reply
{
  v3 = qword_1005AAD08;
  replyCopy = reply;
  if (v3)
  {
    v5 = *(v3 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = replyCopy;
  (*(replyCopy + 2))(replyCopy, v5, 0);
}

- (void)setSpaceReduction:(unint64_t)reduction withReply:(id)reply
{
  replyCopy = reply;
  if (reduction)
  {
    v5 = sub_1002E9EE8([ODRSpaceReduction alloc], reduction);
  }

  else
  {
    v5 = 0;
  }

  v6 = qword_1005AAD08;
  qword_1005AAD08 = v5;

  replyCopy[2](replyCopy, reduction, 0);
}

@end