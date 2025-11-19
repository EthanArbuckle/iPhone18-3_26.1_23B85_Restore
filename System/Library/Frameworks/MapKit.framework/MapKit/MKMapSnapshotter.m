@interface MKMapSnapshotter
- (BOOL)_isWidget;
- (BOOL)_shouldRenderLogoForSnapshotDimensions;
- (MKMapSnapshotter)initWithOptions:(MKMapSnapshotOptions *)options;
- (void)_cancel;
- (void)_cleanupSnapshotCreator;
- (void)_deliverSnapshot:(id)a3;
- (void)_drawAppleLogoIfNecessaryOnSnapshot:(id)a3;
- (void)_enterBackground:(id)a3;
- (void)_exitBackground:(id)a3;
- (void)_failWithError:(id)a3;
- (void)_performSnapshot;
- (void)_performSnapshotOnSnapshotQueue;
- (void)_respondWithError:(id)a3;
- (void)_setupCustomFeaturesForAnnotationViewsIfNeeded;
- (void)_succeedWithSnapshot:(id)a3;
- (void)cancel;
- (void)dealloc;
- (void)startWithQueue:(dispatch_queue_t)queue completionHandler:(MKMapSnapshotCompletionHandler)completionHandler;
@end

@implementation MKMapSnapshotter

- (void)cancel
{
  v3 = _snapshotQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__MKMapSnapshotter_cancel__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_sync(v3, block);

  if (self->_needsResume)
  {
    self->_needsResume = 0;
    CFRelease(self);
  }
}

- (void)_performSnapshotOnSnapshotQueue
{
  v3 = _snapshotQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__MKMapSnapshotter__performSnapshotOnSnapshotQueue__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(v3, block);

  [MEMORY[0x1E69A1598] reportDailyUsageCountType:105];
}

void __51__MKMapSnapshotter__performSnapshotOnSnapshotQueue__block_invoke(uint64_t a1)
{
  v107 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 8) _prepareToSubmit];
  v2 = MKGetSnapshotLog();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_INFO);

  if (!v3)
  {
    goto LABEL_16;
  }

  v4 = [*(*(a1 + 32) + 8) _viewportMode];
  if (v4 == 2)
  {
    v12 = [*(*(a1 + 32) + 8) camera];
    v13 = [v12 debugDescription];
    v14 = @"camera";
  }

  else if (v4 == 1)
  {
    [*(*(a1 + 32) + 8) mapRect];
    v16 = v15;
    v18 = v17;
    v19 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", v20, v21];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{%.1f, %.1f}", v16, v18];
    v13 = [v19 stringWithFormat:@"{%@, %@}", v12, v22];

    v14 = @"mapRect";
  }

  else
  {
    if (v4)
    {
      v13 = 0;
      v14 = @"<unknown>";
      goto LABEL_10;
    }

    [*(*(a1 + 32) + 8) region];
    v6 = v5;
    v8 = v7;
    v9 = MEMORY[0x1E696AEC0];
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", v10, v11];
    v13 = [v9 stringWithFormat:@"<center:%@ span:%+.8f, %+.8f>", v12, v6, v8];
    v14 = @"region";
  }

LABEL_10:
  v23 = [*(*(a1 + 32) + 8) traitCollection];
  v24 = [v23 userInterfaceStyle];

  if (v24 > 2)
  {
    v25 = @", unknown";
  }

  else
  {
    v25 = off_1E76CD988[v24];
  }

  v26 = MKGetSnapshotLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v27 = [*(*(a1 + 32) + 8) signpostId];
    [*(*(a1 + 32) + 8) size];
    v29 = v28;
    [*(*(a1 + 32) + 8) size];
    *buf = 134219267;
    v96 = v27;
    v97 = 2114;
    v98 = *&v14;
    v99 = 2113;
    v100 = v13;
    v101 = 2114;
    v102 = v25;
    v103 = 2050;
    v104 = v29;
    v105 = 2050;
    v106 = v30;
    _os_log_impl(&dword_1A2EA0000, v26, OS_LOG_TYPE_INFO, "<%p> Starting snapshot: <%{public}@: %{private}@%{public}@> (%{public}.1f x %{public}.1f)", buf, 0x3Eu);
  }

LABEL_16:
  v31 = [*(*(a1 + 32) + 8) camera];
  [v31 centerCoordinate];
  if (CLLocationCoordinate2DIsValid(v108))
  {
    v32 = [*(*(a1 + 32) + 8) _customFeatureAnnotations];
    v33 = [v32 count];

    if (v33)
    {
      v34 = objc_alloc_init(_MKCustomFeatureStore);
      v35 = [*(*(a1 + 32) + 8) _customFeatureAnnotations];
      [(_MKCustomFeatureStore *)v34 addAnnotations:v35];
    }

    else
    {
      v34 = 0;
    }

    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __51__MKMapSnapshotter__performSnapshotOnSnapshotQueue__block_invoke_72;
    v94[3] = &unk_1E76CD858;
    v94[4] = *(a1 + 32);
    v42 = MEMORY[0x1A58E9F30](v94);
    v43 = [*(*(a1 + 32) + 8) traitCollection];
    [v43 displayScale];
    v45 = v44;

    v46 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v46 scale];
    v48 = v47;

    if (v45 <= v48)
    {
      if (v45 <= 1.0)
      {
        v53 = 1;
      }

      else
      {
        v53 = 2;
      }

      if (v45 <= 2.0)
      {
        v54 = v53;
      }

      else
      {
        v54 = 3;
      }

      v55 = [MEMORY[0x1E69A2478] modernManager];
      v52 = [v55 activeTileGroup];

      if (v52)
      {
        v56 = [MEMORY[0x1E69DCEB0] mainScreen];
        [v56 scale];
        v57 = GEOResourceFilterScaleForScale();

        if (v54 != v57)
        {
          if ([v52 activeScalesCount])
          {
            v58 = 0;
            while ([v52 activeScaleAtIndex:v58] != v54)
            {
              if (++v58 >= [v52 activeScalesCount])
              {
                goto LABEL_39;
              }
            }
          }

          else
          {
LABEL_39:
            v59 = [MEMORY[0x1E69DCEB0] mainScreen];
            [v59 scale];
            v45 = v60;
          }
        }
      }

      v61 = *(*(a1 + 32) + 8);
      v62 = [*(*(a1 + 32) + 8) traitCollection];
      [v62 displayScale];
      v64 = vabdd_f64(v45, v63);

      if (v64 >= 0.000001)
      {
        v65 = [*(*(a1 + 32) + 8) copy];

        v66 = [*(*(a1 + 32) + 8) traitCollection];
        v93[0] = MEMORY[0x1E69E9820];
        v93[1] = 3221225472;
        v93[2] = __51__MKMapSnapshotter__performSnapshotOnSnapshotQueue__block_invoke_84;
        v93[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
        *&v93[4] = v45;
        v67 = [v66 traitCollectionByModifyingTraits:v93];
        [v65 setTraitCollection:v67];

        v61 = v65;
      }

      if (_shouldUseSnapshotService(*(*(a1 + 32) + 8)))
      {
        v68 = MKGetSnapshotLog();
        v69 = [*(*(a1 + 32) + 8) signpostId];
        if ((v69 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
        {
          v70 = v69;
          if (os_signpost_enabled(v68))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v68, OS_SIGNPOST_INTERVAL_BEGIN, v70, "SnapshotServiceRequest", &unk_1A30FEA0E, buf, 2u);
          }
        }

        v71 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.MapKit.SnapshotService"];
        v72 = *(a1 + 32);
        v73 = *(v72 + 48);
        *(v72 + 48) = v71;

        v74 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F16E54D0];
        [*(*(a1 + 32) + 48) setRemoteObjectInterface:v74];

        [*(*(a1 + 32) + 48) resume];
        v75 = *(a1 + 32);
        v76 = *(v75 + 48);
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 3221225472;
        v92[2] = __51__MKMapSnapshotter__performSnapshotOnSnapshotQueue__block_invoke_97;
        v92[3] = &unk_1E76CD8A0;
        v92[4] = v75;
        v77 = [v76 remoteObjectProxyWithErrorHandler:v92];
        v90[0] = MEMORY[0x1E69E9820];
        v90[1] = 3221225472;
        v90[2] = __51__MKMapSnapshotter__performSnapshotOnSnapshotQueue__block_invoke_100;
        v90[3] = &unk_1E76CD8F0;
        v90[4] = *(a1 + 32);
        v91 = v42;
        [v77 requestSnapshotWithOptions:v61 completionHandler:v90];
      }

      else
      {
        v78 = [MEMORY[0x1E69A2478] modernManager];
        [v78 activateResourceScale:v54];

        v79 = objc_alloc(MEMORY[0x1E69DF448]);
        v80 = _snapshotQueue();
        v81 = [*(*(a1 + 32) + 8) _auditToken];
        v82 = [v79 initWithSnapshotOptions:v61 homeQueue:v80 auditToken:v81];
        v83 = *(a1 + 32);
        v84 = *(v83 + 56);
        *(v83 + 56) = v82;

        v85 = *(*(a1 + 32) + 56);
        if (v85)
        {
          if (v34)
          {
            [v85 addCustomFeatureDataSource:v34];
            v85 = *(*(a1 + 32) + 56);
          }

          [v85 renderSnapshot:v42];
        }

        else
        {
          v86 = MKGetSnapshotLog();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            v87 = [*(*(a1 + 32) + 8) signpostId];
            *buf = 134217984;
            v96 = v87;
            _os_log_impl(&dword_1A2EA0000, v86, OS_LOG_TYPE_ERROR, "<%p> Failed to create underlying snapshotter", buf, 0xCu);
          }

          v88 = objc_alloc(MEMORY[0x1E696ABC0]);
          v89 = [v88 initWithDomain:MKErrorDomain code:1 userInfo:&unk_1F1611F30];
          [*(a1 + 32) _failWithError:v89];
        }
      }
    }

    else
    {
      v49 = MKGetSnapshotLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = [*(*(a1 + 32) + 8) signpostId];
        *buf = 134218240;
        v96 = v50;
        v97 = 2050;
        v98 = v45;
        _os_log_impl(&dword_1A2EA0000, v49, OS_LOG_TYPE_ERROR, "<%p> Invalid content scale: %{public}.1f", buf, 0x16u);
      }

      v51 = objc_alloc(MEMORY[0x1E696ABC0]);
      v52 = [v51 initWithDomain:MKErrorDomain code:1 userInfo:&unk_1F1611F08];
      [*(a1 + 32) _failWithError:v52];
    }
  }

  else
  {
    v36 = MKGetSnapshotLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = [*(*(a1 + 32) + 8) signpostId];
      [v31 centerCoordinate];
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%+.8f, %+.8f", v38, v39];
      *buf = 134218243;
      v96 = v37;
      v97 = 2113;
      v98 = *&v40;
      _os_log_impl(&dword_1A2EA0000, v36, OS_LOG_TYPE_ERROR, "<%p> Center coordinate is not valid: %{private}@", buf, 0x16u);
    }

    v41 = objc_alloc(MEMORY[0x1E696ABC0]);
    v34 = [v41 initWithDomain:MKErrorDomain code:1 userInfo:&unk_1F1611EE0];
    [*(a1 + 32) _failWithError:v34];
  }
}

void __51__MKMapSnapshotter__performSnapshotOnSnapshotQueue__block_invoke_72(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (*(*(a1 + 32) + 16))
  {
    if (v5)
    {
      v7 = [MKMapSnapshot alloc];
      v8 = [*(*(a1 + 32) + 8) traitCollection];
      v9 = [(MKMapSnapshot *)v7 _initWithSnapshot:v5 traitCollection:v8];

      if (v9)
      {
        [*(a1 + 32) _succeedWithSnapshot:v9];
      }

      else
      {
        v13 = MKGetSnapshotLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = [*(*(a1 + 32) + 8) signpostId];
          v17 = 134217984;
          v18 = v14;
          _os_log_impl(&dword_1A2EA0000, v13, OS_LOG_TYPE_ERROR, "<%p> Failed to initialize final snapshot object", &v17, 0xCu);
        }

        v15 = objc_alloc(MEMORY[0x1E696ABC0]);
        v16 = [v15 initWithDomain:MKErrorDomain code:1 userInfo:0];
        [*(a1 + 32) _failWithError:v16];

        v9 = 0;
      }
    }

    else
    {
      v10 = MKGetSnapshotLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [*(*(a1 + 32) + 8) signpostId];
        v17 = 134218242;
        v18 = v11;
        v19 = 2114;
        v20 = v6;
        _os_log_impl(&dword_1A2EA0000, v10, OS_LOG_TYPE_ERROR, "<%p> Snapshot failed to render: %{public}@", &v17, 0x16u);
      }

      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v9 = [v12 initWithDomain:MKErrorDomain code:2 userInfo:0];
      [*(a1 + 32) _failWithError:v9];
    }
  }
}

void __51__MKMapSnapshotter__performSnapshotOnSnapshotQueue__block_invoke_97(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _snapshotQueue();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__MKMapSnapshotter__performSnapshotOnSnapshotQueue__block_invoke_2;
  v6[3] = &unk_1E76CD810;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, v6);
}

void __51__MKMapSnapshotter__performSnapshotOnSnapshotQueue__block_invoke_100(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _snapshotQueue();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__MKMapSnapshotter__performSnapshotOnSnapshotQueue__block_invoke_2_101;
  v11[3] = &unk_1E76CD8C8;
  v8 = *(a1 + 40);
  v11[4] = *(a1 + 32);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

uint64_t __51__MKMapSnapshotter__performSnapshotOnSnapshotQueue__block_invoke_2_101(uint64_t a1)
{
  v2 = MKGetSnapshotLog();
  v3 = [*(*(a1 + 32) + 8) signpostId];
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v2, OS_SIGNPOST_INTERVAL_END, v4, "SnapshotServiceRequest", &unk_1A30FEA0E, v6, 2u);
    }
  }

  return (*(*(a1 + 56) + 16))();
}

void __51__MKMapSnapshotter__performSnapshotOnSnapshotQueue__block_invoke_2(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = MKGetSnapshotLog();
  v3 = [*(*(a1 + 32) + 8) signpostId];
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      LOWORD(v12) = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v2, OS_SIGNPOST_INTERVAL_END, v4, "SnapshotServiceRequest", &unk_1A30FEA0E, &v12, 2u);
    }
  }

  if (*(*(a1 + 32) + 16))
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      v16 = *MEMORY[0x1E696AA08];
      v17[0] = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    }

    else
    {
      v6 = 0;
    }

    v7 = MKGetSnapshotLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [*(*(a1 + 32) + 8) signpostId];
      v9 = *(a1 + 40);
      v12 = 134218242;
      v13 = v8;
      v14 = 2114;
      v15 = v9;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_ERROR, "<%p> Snapshot service encountered error: %{public}@", &v12, 0x16u);
    }

    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = [v10 initWithDomain:MKErrorDomain code:1 userInfo:v6];
    [*(a1 + 32) _failWithError:v11];
  }
}

- (void)_performSnapshot
{
  v3 = MKGetSnapshotLog();
  v4 = [(MKMapSnapshotOptions *)self->_options signpostId];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v5, "PerformSnapshot", &unk_1A30FEA0E, buf, 2u);
    }
  }

  v6 = [(MKMapSnapshotOptions *)self->_options annotationViews];
  v7 = [v6 count];

  if (!v7)
  {
    goto LABEL_7;
  }

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    [(MKMapSnapshotter *)self _setupCustomFeaturesForAnnotationViewsIfNeeded];
LABEL_7:
    [(MKMapSnapshotter *)self _performSnapshotOnSnapshotQueue];
    return;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__MKMapSnapshotter__performSnapshot__block_invoke;
  block[3] = &unk_1E76CDB38;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __36__MKMapSnapshotter__performSnapshot__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setupCustomFeaturesForAnnotationViewsIfNeeded];
  v2 = *(a1 + 32);

  return [v2 _performSnapshotOnSnapshotQueue];
}

- (void)_setupCustomFeaturesForAnnotationViewsIfNeeded
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = [(MKMapSnapshotOptions *)self->_options annotationViews];
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    v8 = *MEMORY[0x1E695EFF8];
    v9 = *(MEMORY[0x1E695EFF8] + 8);
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        [v11 prepareForSnapshotting];
        if ([v11 isProvidingCustomFeature])
        {
          [v11 _updateAnchorPosition:1 alignToPixels:{v8, v9}];
          v12 = [v11 customFeatureAnnotation];
          [v3 addObject:v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  if ([v3 count])
  {
    v13 = [(MKMapSnapshotOptions *)self->_options _customFeatureAnnotations];
    v14 = [v13 count];

    options = self->_options;
    if (v14)
    {
      v16 = [(MKMapSnapshotOptions *)options _customFeatureAnnotations];
      v17 = [v3 arrayByAddingObjectsFromArray:v16];
      [(MKMapSnapshotOptions *)self->_options _setCustomFeatureAnnotations:v17];
    }

    else
    {
      [(MKMapSnapshotOptions *)options _setCustomFeatureAnnotations:v3];
    }
  }
}

- (void)startWithQueue:(dispatch_queue_t)queue completionHandler:(MKMapSnapshotCompletionHandler)completionHandler
{
  v7 = queue;
  v8 = completionHandler;
  v9 = v8;
  if (v7 && v8)
  {
    v10 = 0;
    atomic_compare_exchange_strong_explicit(&self->_loadingFlag, &v10, 1u, memory_order_relaxed, memory_order_relaxed);
    if (v10)
    {
      v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Attempted to start a snapshotter that is still loading." userInfo:0];
      [v11 raise];
    }

    v12 = MKGetSnapshotLog();
    v13 = [(MKMapSnapshotOptions *)self->_options signpostId];
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "StartWithQueue", &unk_1A30FEA0E, buf, 2u);
      }
    }

    objc_storeStrong(&self->_callbackQueue, queue);
    v20 = MEMORY[0x1E69E9820];
    v21 = v9;
    geo_isolate_sync_data();
    if (![(MKMapSnapshotOptions *)self->_options _rendersInBackground:v20])
    {
      v15 = +[MKApplicationStateMonitor sharedInstance];
      if ([v15 isInBackground])
      {
        shouldUseSnapshotService = _shouldUseSnapshotService(self->_options);

        if ((shouldUseSnapshotService & 1) == 0)
        {
          self->_needsResume = 1;
          CFRetain(self);
LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    [(MKMapSnapshotter *)self _performSnapshot];
    v17 = MKGetSnapshotLog();
    v18 = [(MKMapSnapshotOptions *)self->_options signpostId];
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v19 = v18;
      if (os_signpost_enabled(v17))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v17, OS_SIGNPOST_INTERVAL_END, v19, "StartWithQueue", &unk_1A30FEA0E, buf, 2u);
      }
    }

    goto LABEL_17;
  }

LABEL_18:
}

void __53__MKMapSnapshotter_startWithQueue_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
}

- (BOOL)_shouldRenderLogoForSnapshotDimensions
{
  [(MKMapSnapshotOptions *)self->_options size];
  if (v3 < GEOConfigGetInteger())
  {
    return 0;
  }

  [(MKMapSnapshotOptions *)self->_options size];
  return v5 >= GEOConfigGetInteger();
}

- (BOOL)_isWidget
{
  if (!ChronoServicesLibraryCore() || !getCHSIsWidgetExtensionPointSymbolLoc())
  {
    return 0;
  }

  v2 = [MEMORY[0x1E6963668] extensionPointRecordForCurrentProcess];
  v3 = v2;
  if (!v2)
  {
    v6 = 0;
    goto LABEL_8;
  }

  v4 = [v2 identifier];
  CHSIsWidgetExtensionPointSymbolLoc = getCHSIsWidgetExtensionPointSymbolLoc();
  if (CHSIsWidgetExtensionPointSymbolLoc)
  {
    v6 = CHSIsWidgetExtensionPointSymbolLoc(v4);

LABEL_8:
    return v6;
  }

  dlerror();
  abort_report_np();
  return ChronoServicesLibraryCore();
}

- (void)_deliverSnapshot:(id)a3
{
  v4 = a3;
  if (_gate_onceToken != -1)
  {
    dispatch_once(&_gate_onceToken, &__block_literal_global_169);
  }

  v5 = _gate_gate;
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __37__MKMapSnapshotter__deliverSnapshot___block_invoke;
  v11 = &unk_1E76CD810;
  v12 = self;
  v13 = v4;
  v6 = v4;
  [v5 dispatch:&v8];
  v7 = [MKUsageCounter sharedCounter:v8];
  [v7 count:54];
}

void __37__MKMapSnapshotter__deliverSnapshot___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 24);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __37__MKMapSnapshotter__deliverSnapshot___block_invoke_33;
    v9[3] = &unk_1E76CD810;
    v9[4] = v2;
    v10 = *(a1 + 40);
    dispatch_async(v3, v9);
  }

  else
  {
    v4 = MKGetSnapshotLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = [*(*(a1 + 32) + 8) signpostId];
      *buf = 134217984;
      v12 = v5;
      _os_log_impl(&dword_1A2EA0000, v4, OS_LOG_TYPE_INFO, "<%p> Snapshot succeeded, but snapshotter has already been canceled", buf, 0xCu);
    }

    v6 = MKGetSnapshotLog();
    v7 = [*(*(a1 + 32) + 8) signpostId];
    if ((v7 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v8 = v7;
      if (os_signpost_enabled(v6))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v6, OS_SIGNPOST_INTERVAL_END, v8, "PerformSnapshot", &unk_1A30FEA0E, buf, 2u);
      }
    }
  }
}

void __37__MKMapSnapshotter__deliverSnapshot___block_invoke_33(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = 1;
  atomic_compare_exchange_strong_explicit((*(a1 + 32) + 16), &v2, 0, memory_order_relaxed, memory_order_relaxed);
  if (v2 == 1)
  {
    [*(a1 + 32) cancel];
    *v12 = 0;
    v13 = v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__27;
    v16 = __Block_byref_object_dispose__28;
    v17 = 0;
    v10 = MEMORY[0x1E69E9820];
    v11 = *(a1 + 32);
    geo_isolate_sync_data();
    if (*(v13 + 5))
    {
      v3 = MKGetSnapshotLog();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v4 = [*(*(a1 + 32) + 8) signpostId];
        *buf = 134217984;
        v19 = v4;
        _os_log_impl(&dword_1A2EA0000, v3, OS_LOG_TYPE_INFO, "<%p> Successfully rendered map snapshot", buf, 0xCu);
      }

      (*(*(v13 + 5) + 16))();
    }

    v5 = MKGetSnapshotLog();
    v6 = [*(*(a1 + 32) + 8) signpostId];
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PerformSnapshot", &unk_1A30FEA0E, buf, 2u);
    }

    _Block_object_dispose(v12, 8);
  }

  else
  {
    v7 = MKGetSnapshotLog();
    v8 = [*(*(a1 + 32) + 8) signpostId];
    if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v9 = v8;
      if (os_signpost_enabled(v7))
      {
        *v12 = 0;
        _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v7, OS_SIGNPOST_INTERVAL_END, v9, "PerformSnapshot", &unk_1A30FEA0E, v12, 2u);
      }
    }
  }
}

void __37__MKMapSnapshotter__deliverSnapshot___block_invoke_34(uint64_t a1)
{
  v2 = MEMORY[0x1A58E9F30](*(*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = 0;
}

- (void)_drawAppleLogoIfNecessaryOnSnapshot:(id)a3
{
  v4 = a3;
  if (-[MKMapSnapshotter _shouldRenderLogoForSnapshotDimensions](self, "_shouldRenderLogoForSnapshotDimensions") && -[MKMapSnapshotOptions _showsAppleLogo](self->_options, "_showsAppleLogo") && _MKLinkedOnOrAfterReleaseSet(2310) && [MEMORY[0x1E696AAE8] _mapkit_shouldShowAppleLogo] && !-[MKMapSnapshotter _isWidget](self, "_isWidget"))
  {
    v5 = [(MKMapSnapshotOptions *)self->_options mapType];
    v6 = _snapshotQueue();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __56__MKMapSnapshotter__drawAppleLogoIfNecessaryOnSnapshot___block_invoke;
    v7[3] = &unk_1E76CD810;
    v7[4] = self;
    v8 = v4;
    [v8 _displayAppleLogoForMapType:v5 callbackQueue:v6 completionHandler:v7];
  }

  else
  {
    [(MKMapSnapshotter *)self _deliverSnapshot:v4];
  }
}

- (void)_succeedWithSnapshot:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(MKMapSnapshotter *)self _cleanupSnapshotCreator];
  v5 = [(MKMapSnapshotOptions *)self->_options annotationViews];
  v6 = [v5 count];

  if (v6)
  {
    v7 = MEMORY[0x1E695DF70];
    v8 = [(MKMapSnapshotOptions *)self->_options annotationViews];
    v9 = [v7 arrayWithCapacity:{objc_msgSend(v8, "count")}];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [(MKMapSnapshotOptions *)self->_options annotationViews];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if (([v15 _skipDrawingForSnapshots] & 1) == 0)
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    v16 = _snapshotQueue();
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __41__MKMapSnapshotter__succeedWithSnapshot___block_invoke;
    v17[3] = &unk_1E76CD810;
    v17[4] = self;
    v18 = v4;
    [v18 _prepareForRenderWithAnnotationViews:v9 workQueue:v16 completionHandler:v17];
  }

  else
  {
    [(MKMapSnapshotter *)self _drawAppleLogoIfNecessaryOnSnapshot:v4];
  }
}

- (void)_failWithError:(id)a3
{
  [(MKMapSnapshotter *)self _respondWithError:a3];
  v3 = +[MKUsageCounter sharedCounter];
  [v3 count:55];
}

- (void)_respondWithError:(id)a3
{
  v4 = a3;
  [(MKMapSnapshotter *)self _cleanupSnapshotCreator];
  callbackQueue = self->_callbackQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__MKMapSnapshotter__respondWithError___block_invoke;
  v7[3] = &unk_1E76CD810;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(callbackQueue, v7);
}

void __38__MKMapSnapshotter__respondWithError___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2[4])
  {
    [v2 cancel];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v20 = __Block_byref_object_copy__27;
    v21 = __Block_byref_object_dispose__28;
    v22 = 0;
    v3 = *(a1 + 32);
    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __38__MKMapSnapshotter__respondWithError___block_invoke_29;
    v16 = &unk_1E76CD7E8;
    v17 = v3;
    v18 = buf;
    geo_isolate_sync_data();
    v4 = *(*&buf[8] + 40);
    if (v4)
    {
      (*(v4 + 16))(v4, 0, *(a1 + 40));
    }

    v5 = MKGetSnapshotLog();
    v6 = [*(*(a1 + 32) + 8) signpostId];
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      *v12 = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PerformSnapshot", &unk_1A30FEA0E, v12, 2u);
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v7 = MKGetSnapshotLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(*(a1 + 32) + 8) signpostId];
      v9 = *(a1 + 40);
      *buf = 134218243;
      *&buf[4] = v8;
      *&buf[12] = 2113;
      *&buf[14] = v9;
      _os_log_impl(&dword_1A2EA0000, v7, OS_LOG_TYPE_INFO, "<%p> Snapshot failed to render (%{private}@), but snapshotter has already been canceled", buf, 0x16u);
    }

    v10 = MKGetSnapshotLog();
    v11 = [*(*(a1 + 32) + 8) signpostId];
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v10, OS_SIGNPOST_INTERVAL_END, v11, "PerformSnapshot", &unk_1A30FEA0E, buf, 2u);
    }
  }
}

void __38__MKMapSnapshotter__respondWithError___block_invoke_29(uint64_t a1)
{
  v2 = MEMORY[0x1A58E9F30](*(*(a1 + 32) + 32));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 32);
  *(v5 + 32) = 0;
}

- (void)_cleanupSnapshotCreator
{
  [(NSXPCConnection *)self->_snapshotService invalidate];
  snapshotService = self->_snapshotService;
  self->_snapshotService = 0;

  snapshotCreator = self->_snapshotCreator;
  self->_snapshotCreator = 0;
}

- (void)_cancel
{
  v3 = 1;
  atomic_compare_exchange_strong_explicit(&self->_loadingFlag, &v3, 0, memory_order_relaxed, memory_order_relaxed);
  if (v3 == 1)
  {
    v4 = objc_alloc(MEMORY[0x1E696ABC0]);
    v5 = [v4 initWithDomain:MKErrorDomain code:1 userInfo:&unk_1F1611EB8];
    [(MKMapSnapshotter *)self _respondWithError:v5];
  }

  if (_shouldUseSnapshotService(self->_options))
  {
    [(NSXPCConnection *)self->_snapshotService invalidate];
    snapshotService = self->_snapshotService;
    self->_snapshotService = 0;
  }

  else
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = __Block_byref_object_copy__46251;
    v11[4] = __Block_byref_object_dispose__46252;
    v12 = self->_snapshotCreator;
    [(VKMapSnapshotCreator *)v12 cancel];
    snapshotCreator = self->_snapshotCreator;
    self->_snapshotCreator = 0;

    v8 = dispatch_time(0, 10000000);
    v9 = _snapshotQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__MKMapSnapshotter__cancel__block_invoke;
    block[3] = &unk_1E76CD7B0;
    block[4] = v11;
    dispatch_after(v8, v9, block);

    _Block_object_dispose(v11, 8);
  }
}

void __27__MKMapSnapshotter__cancel__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  v2 = *(v1 + 40);
  *(v1 + 40) = 0;
}

- (void)_exitBackground:(id)a3
{
  if (self->_needsResume)
  {
    self->_needsResume = 0;
    [(MKMapSnapshotter *)self _performSnapshot];

    CFRelease(self);
  }
}

- (void)_enterBackground:(id)a3
{
  v4 = a3;
  if (![(MKMapSnapshotOptions *)self->_options _rendersInBackground]&& (_shouldUseSnapshotService(self->_options) & 1) == 0)
  {
    CFRetain(self);
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v5 = _snapshotQueue();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __37__MKMapSnapshotter__enterBackground___block_invoke;
    v7[3] = &unk_1E76CD7E8;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(v5, v7);

    v6 = *(v9 + 24);
    self->_needsResume = v6;
    if ((v6 & 1) == 0)
    {
      CFRelease(self);
    }

    _Block_object_dispose(&v8, 8);
  }
}

void __37__MKMapSnapshotter__enterBackground___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 56) != 0;
  [*(*(a1 + 32) + 56) cancelFlushingTileDecodes:1];
  v2 = *(a1 + 32);
  v3 = *(v2 + 56);
  *(v2 + 56) = 0;
}

- (void)dealloc
{
  [(VKMapSnapshotCreator *)self->_snapshotCreator cancel];
  snapshotCreator = self->_snapshotCreator;
  self->_snapshotCreator = 0;

  if ([MEMORY[0x1E696AF00] isMainThread])
  {
    v4 = +[MKApplicationStateMonitor sharedInstance];
    [v4 stopObserving];
  }

  else
  {
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_16_46258);
  }

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  [v5 removeObserver:self];

  v6 = MKGetSnapshotLog();
  v7 = [(MKMapSnapshotOptions *)self->_options signpostId];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v6, OS_SIGNPOST_INTERVAL_END, v8, "LifeTime", &unk_1A30FEA0E, buf, 2u);
    }
  }

  v9.receiver = self;
  v9.super_class = MKMapSnapshotter;
  [(MKMapSnapshotter *)&v9 dealloc];
}

void __27__MKMapSnapshotter_dealloc__block_invoke()
{
  v0 = +[MKApplicationStateMonitor sharedInstance];
  [v0 stopObserving];
}

- (MKMapSnapshotter)initWithOptions:(MKMapSnapshotOptions *)options
{
  v4 = options;
  v21.receiver = self;
  v21.super_class = MKMapSnapshotter;
  v5 = [(MKMapSnapshotter *)&v21 init];
  if (v5)
  {
    v6 = geo_isolater_create();
    isolation = v5->_isolation;
    v5->_isolation = v6;

    v8 = [(MKMapSnapshotOptions *)v4 copy];
    v9 = v5->_options;
    v5->_options = v8;

    if (!v5->_options)
    {
      v10 = objc_alloc_init(MKMapSnapshotOptions);
      v11 = v5->_options;
      v5->_options = v10;
    }

    v12 = MKGetSnapshotLog();
    v13 = [(MKMapSnapshotOptions *)v5->_options signpostId];
    if ((v13 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v14 = v13;
      if (os_signpost_enabled(v12))
      {
        *v20 = 0;
        _os_signpost_emit_with_name_impl(&dword_1A2EA0000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v14, "LifeTime", &unk_1A30FEA0E, v20, 2u);
      }
    }

    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v15 = +[MKApplicationStateMonitor sharedInstance];
      [v15 startObserving];
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_46270);
    }

    v16 = [MEMORY[0x1E696AD88] defaultCenter];
    [v16 addObserver:v5 selector:sel__enterBackground_ name:@"MKApplicationStateDidEnterBackgroundNotification" object:0];

    v17 = [MEMORY[0x1E696AD88] defaultCenter];
    [v17 addObserver:v5 selector:sel__exitBackground_ name:@"MKApplicationStateWillEnterForegroundNotification" object:0];

    v18 = v5;
  }

  return v5;
}

void __36__MKMapSnapshotter_initWithOptions___block_invoke()
{
  v0 = +[MKApplicationStateMonitor sharedInstance];
  [v0 startObserving];
}

@end