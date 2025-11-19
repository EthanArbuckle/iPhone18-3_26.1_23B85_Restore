@interface VNRectangleTracker
+ (id)_trackingRectAroundPoint:(CGPoint)a3 trackingRectSize:(CGSize)a4;
+ (id)supportedComputeDevicesForOptions:(id)a3 error:(id *)a4;
+ (id)trackedCorners;
- (BOOL)isTracking;
- (BOOL)reset:(id *)a3;
- (VNRectangleTracker)initWithOptions:(id)a3 error:(id *)a4;
- (id)_convertCornerObservationsToRectangleObservation:(id)a3 error:(id *)a4;
- (id)_parseInputObservations:(id)a3 imageBuffer:(id)a4 error:(id *)a5;
- (id)setTrackedObjects:(id)a3 inFrame:(id)a4 error:(id *)a5;
- (id)trackInFrame:(id)a3 error:(id *)a4;
@end

@implementation VNRectangleTracker

- (id)_convertCornerObservationsToRectangleObservation:(id)a3 error:(id *)a4
{
  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__7416;
  v73 = __Block_byref_object_dispose__7417;
  v74 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x4012000000;
  v65 = __Block_byref_object_copy__87;
  v66 = __Block_byref_object_dispose__88;
  v67 = "";
  v68 = *MEMORY[0x1E695EFF8];
  v55 = 0;
  v56 = &v55;
  v57 = 0x4012000000;
  v58 = __Block_byref_object_copy__87;
  v59 = __Block_byref_object_dispose__88;
  v60 = "";
  v61 = *MEMORY[0x1E695EFF8];
  v48 = 0;
  v49 = &v48;
  v50 = 0x4012000000;
  v51 = __Block_byref_object_copy__87;
  v52 = __Block_byref_object_dispose__88;
  v53 = "";
  v54 = *MEMORY[0x1E695EFF8];
  v41 = 0;
  v42 = &v41;
  v43 = 0x4012000000;
  v44 = __Block_byref_object_copy__87;
  v45 = __Block_byref_object_dispose__88;
  v46 = "";
  v47 = *MEMORY[0x1E695EFF8];
  v34 = 0;
  v35 = &v34;
  v36 = 0x4012000000;
  v37 = __Block_byref_object_copy__87;
  v38 = __Block_byref_object_dispose__88;
  v39 = "";
  v40 = vdupq_n_s64(0x47EFFFFFE0000000uLL);
  v26 = 0;
  v27 = &v26;
  v28 = 0x4012000000;
  v29 = __Block_byref_object_copy__87;
  v30 = __Block_byref_object_dispose__88;
  v31 = "";
  v32 = 0;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__VNRectangleTracker__convertCornerObservationsToRectangleObservation_error___block_invoke;
  v17[3] = &unk_1E77B3140;
  v17[4] = &v69;
  v17[5] = &v22;
  v17[6] = &v18;
  v17[7] = &v34;
  v17[8] = &v26;
  v17[9] = &v62;
  v17[10] = &v48;
  v17[11] = &v55;
  v17[12] = &v41;
  [a3 enumerateKeysAndObjectsUsingBlock:v17];
  v6 = v70[5];
  if (v6)
  {
    v7 = 0;
    if (a4)
    {
      *a4 = v6;
    }
  }

  else
  {
    v8 = v35[6];
    v9 = v35[7];
    v10 = v27[6];
    v11 = v27[7];
    v12 = [(VNTracker *)self originatingRequestSpecifier];
    v13 = [VNRectangleObservation alloc];
    v7 = [(VNRectangleObservation *)v13 initWithOriginatingRequestSpecifier:v12 topLeft:v49[6] topRight:v49[7] bottomRight:v42[6] bottomLeft:v42[7] boundingBox:v56[6], v56[7], v63[6], v63[7], *&v8, *&v9, v10 - v8, v11 - v9];
    *&v14 = v23[6] / v19[3];
    [(VNObservation *)v7 setConfidence:v14];
    v15 = [(VNTracker *)self key];
    [(VNObservation *)v7 setUUID:v15];
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v34, 8);
  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v48, 8);
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v62, 8);
  _Block_object_dispose(&v69, 8);

  return v7;
}

void __77__VNRectangleTracker__convertCornerObservationsToRectangleObservation_error___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v32 = v7;
  v9 = v8;
  v10 = [v9 objectAtIndexedSubscript:1];
  v11 = [MEMORY[0x1E695DFB0] null];

  if (v10 != v11)
  {
    v12 = [v9 objectAtIndexedSubscript:1];
    v13 = *(a1[4] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    *a4 = 1;
    goto LABEL_15;
  }

  v15 = [v9 objectAtIndexedSubscript:0];
  [v15 confidence];
  if (v16 >= 0.65)
  {
    [v15 confidence];
    *(*(a1[5] + 8) + 24) = v23 + *(*(a1[5] + 8) + 24);
    ++*(*(a1[6] + 8) + 24);
    [v15 boundingBox];
    v26 = v25 + v24 * 0.5;
    v29 = v28 + v27 * 0.5;
    *(*(a1[7] + 8) + 48) = fmin(*(*(a1[7] + 8) + 48), v26);
    *(*(a1[7] + 8) + 56) = fmin(*(*(a1[7] + 8) + 56), v29);
    *(*(a1[8] + 8) + 48) = fmax(*(*(a1[8] + 8) + 48), v26);
    *(*(a1[8] + 8) + 56) = fmax(*(*(a1[8] + 8) + 56), v29);
    if ([v32 isEqualToString:@"VNRectangleTracking_BottomLeftTracker"])
    {
      v30 = a1[9];
    }

    else if ([v32 isEqualToString:@"VNRectangleTracking_TopLeftTracker"])
    {
      v30 = a1[10];
    }

    else if ([v32 isEqualToString:@"VNRectangleTracking_BottomRightTracker"])
    {
      v30 = a1[11];
    }

    else
    {
      if (![v32 isEqualToString:@"VNRectangleTracking_TopRightTracker"])
      {
        goto LABEL_14;
      }

      v30 = a1[12];
    }

    v31 = *(v30 + 8);
    *(v31 + 48) = v26;
    *(v31 + 56) = v29;
    goto LABEL_14;
  }

  v17 = MEMORY[0x1E696AEC0];
  [v15 confidence];
  v19 = [v17 stringWithFormat:@"Tracking of %@ failed: confidence = %f threshold = %f", v32, v18, 0x3FE4CCCCC0000000];;
  v20 = [VNError errorForInternalErrorWithLocalizedDescription:v19];
  v21 = *(a1[4] + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  *a4 = 1;
LABEL_14:

LABEL_15:
}

- (id)_parseInputObservations:(id)a3 imageBuffer:(id)a4 error:(id *)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = v7;
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v8 width];
    [v8 height];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v9 bottomLeft];
    v11 = [VNRectangleTracker _trackingRectAroundPoint:"_trackingRectAroundPoint:trackingRectSize:" trackingRectSize:?];
    [v10 setObject:v11 forKey:@"VNRectangleTracking_BottomLeftTracker"];

    [v9 bottomRight];
    v12 = [VNRectangleTracker _trackingRectAroundPoint:"_trackingRectAroundPoint:trackingRectSize:" trackingRectSize:?];
    [v10 setObject:v12 forKey:@"VNRectangleTracking_BottomRightTracker"];

    [v9 topLeft];
    v13 = [VNRectangleTracker _trackingRectAroundPoint:"_trackingRectAroundPoint:trackingRectSize:" trackingRectSize:?];
    [v10 setObject:v13 forKey:@"VNRectangleTracking_TopLeftTracker"];

    [v9 topRight];
    v14 = [VNRectangleTracker _trackingRectAroundPoint:"_trackingRectAroundPoint:trackingRectSize:" trackingRectSize:?];
    [v10 setObject:v14 forKey:@"VNRectangleTracking_TopRightTracker"];

    v15 = [v9 uuid];
    v18 = v15;
    v19[0] = v10;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  }

  else if (a5)
  {
    [VNError errorForInvalidArgumentWithLocalizedDescription:@"VNRectangleObservation object is expected to initialize Rectangle Tracker"];
    *a5 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)isTracking
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  cornerTrackersImpl = self->_cornerTrackersImpl;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __32__VNRectangleTracker_isTracking__block_invoke;
  v5[3] = &unk_1E77B3118;
  v5[4] = &v6;
  [(NSMutableDictionary *)cornerTrackersImpl enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __32__VNRectangleTracker_isTracking__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(*(*(a1 + 32) + 8) + 24) |= [v4 isTracking];
}

- (BOOL)reset:(id *)a3
{
  if (self->super.mTrackerImpl.__ptr_)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__7416;
    v15 = __Block_byref_object_dispose__7417;
    v16 = 0;
    cornerTrackersImpl = self->_cornerTrackersImpl;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __28__VNRectangleTracker_reset___block_invoke;
    v10[3] = &unk_1E77B30F0;
    v10[4] = &v17;
    v10[5] = &v11;
    [(NSMutableDictionary *)cornerTrackersImpl enumerateKeysAndObjectsUsingBlock:v10];
    v6 = v18[3];
    v7 = v6 == 0;
    if (v6)
    {
      if (a3)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Resetting tracker failed with error: %llu", v18[3]];
        *a3 = [VNError errorForInternalErrorWithLocalizedDescription:v8 underlyingError:v12[5]];
      }
    }

    else
    {
      [(VNTracker *)self setTrackedFrameNumber:-1];
      [(VNTracker *)self setLastTrackedBBox:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    }

    _Block_object_dispose(&v11, 8);

    _Block_object_dispose(&v17, 8);
  }

  else if (a3)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"Tracker is not initialized"];
    *a3 = v7 = 0;
  }

  else
  {
    return 0;
  }

  return v7;
}

void __28__VNRectangleTracker_reset___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  v8 = [v6 reset:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(*(a1 + 32) + 8) + 24) = v8;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    *a4 = 1;
  }
}

- (id)trackInFrame:(id)a3 error:(id *)a4
{
  v43[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  cornerTrackersImpl = self->_cornerTrackersImpl;
  if (cornerTrackersImpl && (v8 = -[NSMutableDictionary count](cornerTrackersImpl, "count"), +[VNRectangleTracker trackedCorners](VNRectangleTracker, "trackedCorners"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 count], v9, v8 == v10))
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__7416;
    v41 = __Block_byref_object_dispose__7417;
    v42 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v11 = v38[5];
    v12 = [MEMORY[0x1E695DFB0] null];
    [v11 setObject:v12 forKey:@"VNRectangleTracking_BottomLeftTracker"];

    v13 = v38[5];
    v14 = [MEMORY[0x1E695DFB0] null];
    [v13 setObject:v14 forKey:@"VNRectangleTracking_BottomRightTracker"];

    v15 = v38[5];
    v16 = [MEMORY[0x1E695DFB0] null];
    [v15 setObject:v16 forKey:@"VNRectangleTracking_TopLeftTracker"];

    v17 = v38[5];
    v18 = [MEMORY[0x1E695DFB0] null];
    [v17 setObject:v18 forKey:@"VNRectangleTracking_TopRightTracker"];

    v19 = dispatch_group_create();
    v20 = self->_cornerTrackersImpl;
    v29 = MEMORY[0x1E69E9820];
    v30 = 3221225472;
    v31 = __41__VNRectangleTracker_trackInFrame_error___block_invoke;
    v32 = &unk_1E77B30C8;
    v21 = v19;
    v33 = v21;
    v34 = self;
    v36 = &v37;
    v22 = v6;
    v35 = v22;
    [(NSMutableDictionary *)v20 enumerateKeysAndObjectsUsingBlock:&v29];
    dispatch_group_wait(v21, 0xFFFFFFFFFFFFFFFFLL);
    v23 = [(VNRectangleTracker *)self _convertCornerObservationsToRectangleObservation:v38[5] error:a4, v29, v30, v31, v32];
    v24 = v23;
    if (v23)
    {
      v43[0] = v23;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
      v26 = [(VNTracker *)self _postProcessTrackingResults:v22 trackerResults:v25 error:a4];

      if (v26)
      {
        [(VNTracker *)self setTrackedFrameNumber:[(VNTracker *)self trackedFrameNumber]+ 1];
        v27 = v26;
      }
    }

    else
    {
      v26 = 0;
    }

    _Block_object_dispose(&v37, 8);
  }

  else if (a4)
  {
    [VNError errorForInternalErrorWithLocalizedDescription:@"Tracker is not initialized"];
    *a4 = v26 = 0;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

void __41__VNRectangleTracker_trackInFrame_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__VNRectangleTracker_trackInFrame_error___block_invoke_2;
  block[3] = &unk_1E77B30A0;
  v14 = v5;
  v15 = v6;
  v12 = *(a1 + 48);
  v9 = v12;
  v16 = v12;
  v10 = v6;
  v11 = v5;
  dispatch_group_async(v7, v8, block);
}

void __41__VNRectangleTracker_trackInFrame_error___block_invoke_2(uint64_t a1)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [v2 UTF8String];
  VNValidatedLog(1, @"trackInFrame started for %s", v5, v6, v7, v8, v9, v10, v4);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [VNError errorForInternalErrorWithLocalizedDescription:@"wrong type of a corner tracker object created"];
    v12 = [MEMORY[0x1E695DFB0] null];
    v31[0] = v12;
    v31[1] = v14;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    [*(*(*(a1 + 56) + 8) + 40) setObject:v26 forKeyedSubscript:v2];
LABEL_9:

    goto LABEL_10;
  }

  v11 = *(a1 + 48);
  v28 = 0;
  v12 = [v3 trackInFrame:v11 error:&v28];
  v13 = v28;
  v14 = v13;
  if (!v12)
  {
    if (!v13)
    {
      v14 = [VNError errorForInternalErrorWithLocalizedDescription:@"tracking of one or more of the rectangle corners failed"];
    }

    v26 = [MEMORY[0x1E695DFB0] null];
    v30[0] = v26;
    v30[1] = v14;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    [*(*(*(a1 + 56) + 8) + 40) setObject:v27 forKeyedSubscript:v2];

    v12 = 0;
    goto LABEL_9;
  }

  if ([v12 count] == 1)
  {
    v15 = [v12 objectAtIndexedSubscript:0];
    v29[0] = v15;
    v16 = [MEMORY[0x1E695DFB0] null];
    v29[1] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
    [*(*(*(a1 + 56) + 8) + 40) setObject:v17 forKeyedSubscript:v2];

    v18 = v2;
    v19 = [v2 UTF8String];
    VNValidatedLog(1, @"trackInFrame finished for %s", v20, v21, v22, v23, v24, v25, v19);
  }

LABEL_10:
}

- (id)setTrackedObjects:(id)a3 inFrame:(id)a4 error:(id *)a5
{
  v45[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [(VNRectangleTracker *)self _parseInputObservations:v8 imageBuffer:v9 error:a5];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_7;
  }

  if ([v10 count] == 1)
  {
    v12 = [v11 allValues];
    v13 = [v12 objectAtIndexedSubscript:0];

    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__7416;
    v43 = __Block_byref_object_dispose__7417;
    v44 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = v40[5];
    v15 = [MEMORY[0x1E695DFB0] null];
    [v14 setObject:v15 forKey:@"VNRectangleTracking_BottomLeftTracker"];

    v16 = v40[5];
    v17 = [MEMORY[0x1E695DFB0] null];
    [v16 setObject:v17 forKey:@"VNRectangleTracking_BottomRightTracker"];

    v18 = v40[5];
    v19 = [MEMORY[0x1E695DFB0] null];
    [v18 setObject:v19 forKey:@"VNRectangleTracking_TopLeftTracker"];

    v20 = v40[5];
    v21 = [MEMORY[0x1E695DFB0] null];
    [v20 setObject:v21 forKey:@"VNRectangleTracking_TopRightTracker"];

    v22 = dispatch_group_create();
    v23 = [(VNTracker *)self originatingRequestSpecifier];
    cornerTrackersImpl = self->_cornerTrackersImpl;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __54__VNRectangleTracker_setTrackedObjects_inFrame_error___block_invoke;
    v32[3] = &unk_1E77B3078;
    v25 = v22;
    v33 = v25;
    v34 = self;
    v38 = &v39;
    v26 = v13;
    v35 = v26;
    v27 = v23;
    v36 = v27;
    v37 = v9;
    [(NSMutableDictionary *)cornerTrackersImpl enumerateKeysAndObjectsUsingBlock:v32];
    dispatch_group_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
    v28 = [(VNRectangleTracker *)self _convertCornerObservationsToRectangleObservation:v40[5] error:a5];
    v29 = v28;
    if (v28)
    {
      [v28 boundingBox];
      [(VNTracker *)self setLastTrackedBBox:?];
      [(VNTracker *)self setTrackedFrameNumber:0];
      v45[0] = v29;
      v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:1];
    }

    else
    {
      v30 = 0;
    }

    _Block_object_dispose(&v39, 8);
    goto LABEL_10;
  }

  if (a5)
  {
    [VNError errorForInvalidArgumentWithLocalizedDescription:@"No objects to track passed to the tracker"];
    *a5 = v30 = 0;
  }

  else
  {
LABEL_7:
    v30 = 0;
  }

LABEL_10:

  return v30;
}

void __54__VNRectangleTracker_setTrackedObjects_inFrame_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 104);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__VNRectangleTracker_setTrackedObjects_inFrame_error___block_invoke_2;
  v16[3] = &unk_1E77B3050;
  v17 = v5;
  v18 = v6;
  v9 = *(a1 + 72);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  *&v12 = *(a1 + 64);
  *(&v12 + 1) = v9;
  *&v13 = v10;
  *(&v13 + 1) = v11;
  v19 = v13;
  v20 = v12;
  v14 = v6;
  v15 = v5;
  dispatch_group_async(v7, v8, v16);
}

void __54__VNRectangleTracker_setTrackedObjects_inFrame_error___block_invoke_2(uint64_t a1)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) UTF8String];
  VNValidatedLog(1, @"setTrackedObjects finished for %s", v3, v4, v5, v6, v7, v8, v2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = *(MEMORY[0x1E695F058] + 16);
    rect.origin = *MEMORY[0x1E695F058];
    rect.size = v9;
    v10 = [*(a1 + 48) objectForKeyedSubscript:*(a1 + 32)];
    v11 = CGRectMakeWithDictionaryRepresentation(v10, &rect);

    if (v11)
    {
      v12 = [VNDetectedObjectObservation alloc];
      v13 = [(VNDetectedObjectObservation *)v12 initWithOriginatingRequestSpecifier:*(a1 + 56) boundingBox:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
      v14 = *(a1 + 40);
      v15 = *(a1 + 64);
      v32 = 0;
      v16 = [v14 setTrackedObjects:v13 inFrame:v15 error:&v32];
      v17 = v32;
      if (v16 && [v16 count] == 1)
      {
        v18 = [v16 objectAtIndexedSubscript:0];
        v34[0] = v18;
        v19 = [MEMORY[0x1E695DFB0] null];
        v34[1] = v19;
        v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
        [*(*(*(a1 + 72) + 8) + 40) setObject:v20 forKeyedSubscript:*(a1 + 32)];

        v21 = [*(a1 + 32) UTF8String];
        VNValidatedLog(1, @"setTrackedObjects finished for %s", v22, v23, v24, v25, v26, v27, v21);
      }

      else
      {
        if (!v17)
        {
          v17 = [VNError errorForInternalErrorWithLocalizedDescription:@"Setting input rectangles to one of the rectangle corners failed"];
        }

        v30 = [MEMORY[0x1E695DFB0] null];
        v35[0] = v30;
        v35[1] = v17;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
        [*(*(*(a1 + 72) + 8) + 40) setObject:v31 forKeyedSubscript:*(a1 + 32)];
      }
    }

    else
    {
      v17 = [VNError errorForInternalErrorWithLocalizedDescription:@"initialization of internal object"];
      v13 = [MEMORY[0x1E695DFB0] null];
      v36[0] = v13;
      v36[1] = v17;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];
      [*(*(*(a1 + 72) + 8) + 40) setObject:v16 forKeyedSubscript:*(a1 + 32)];
    }
  }

  else
  {
    v17 = [VNError errorForInternalErrorWithLocalizedDescription:@"wrong type of a corner tracker allocated"];
    v28 = [MEMORY[0x1E695DFB0] null];
    v37[0] = v28;
    v37[1] = v17;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
    [*(*(*(a1 + 72) + 8) + 40) setObject:v29 forKeyedSubscript:*(a1 + 32)];
  }
}

- (VNRectangleTracker)initWithOptions:(id)a3 error:(id *)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v25.receiver = self;
  v25.super_class = VNRectangleTracker;
  v7 = [(VNTracker *)&v25 initWithOptions:v6 error:a4];
  if (v7)
  {
    v19 = +[VNRectangleTracker trackedCorners];
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v19, "count")}];
    cornerTrackersImpl = v7->_cornerTrackersImpl;
    v7->_cornerTrackersImpl = v8;

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v19;
    v10 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = *v22;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [[VNObjectTrackerRevision1 alloc] initWithOptions:v6 error:a4];
          if (!v14)
          {

            goto LABEL_13;
          }

          [(NSMutableDictionary *)v7->_cornerTrackersImpl setObject:v14 forKey:v13];
        }

        v10 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v15 = [v6 objectForKeyedSubscript:@"VNTrackingOption_ProcessingQueue"];
    rectangleTrackingProcessingQueue = v7->_rectangleTrackingProcessingQueue;
    v7->_rectangleTrackingProcessingQueue = v15;

    if (v7->_rectangleTrackingProcessingQueue)
    {
      v17 = v7;
    }

    else if (a4)
    {
      [VNError errorForMissingOptionNamed:@"VNTrackingOption_ProcessingQueue"];
      *a4 = v17 = 0;
    }

    else
    {
LABEL_13:
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)_trackingRectAroundPoint:(CGPoint)a3 trackingRectSize:(CGSize)a4
{
  {
    height = a4.height;
    width = a4.width;
    y = a3.y;
    x = a3.x;
    a4.width = width;
    a3.x = x;
    a3.y = y;
    a4.height = height;
    if (v8)
    {
      *+[VNRectangleTracker _trackingRectAroundPoint:trackingRectSize:]::fullFrame = 0;
      *&+[VNRectangleTracker _trackingRectAroundPoint:trackingRectSize:]::fullFrame[8] = 0;
      __asm { FMOV            V0.2D, #1.0 }

      *&+[VNRectangleTracker _trackingRectAroundPoint:trackingRectSize:]::fullFrame[16] = _Q0;
      a4.width = width;
      a3.x = x;
      a3.y = y;
      a4.height = height;
    }
  }

  v4 = a3.x - a4.width * 0.5;
  v5 = a3.y - a4.height * 0.5;
  v19 = CGRectIntersection(*&a4.width, *+[VNRectangleTracker _trackingRectAroundPoint:trackingRectSize:]::fullFrame);
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v19);

  return DictionaryRepresentation;
}

+ (id)trackedCorners
{
  if (+[VNRectangleTracker trackedCorners]::onceToken != -1)
  {
    dispatch_once(&+[VNRectangleTracker trackedCorners]::onceToken, &__block_literal_global_7488);
  }

  v3 = +[VNRectangleTracker trackedCorners]::trackedCorners;

  return v3;
}

void __36__VNRectangleTracker_trackedCorners__block_invoke()
{
  v2[4] = *MEMORY[0x1E69E9840];
  v2[0] = @"VNRectangleTracking_BottomLeftTracker";
  v2[1] = @"VNRectangleTracking_BottomRightTracker";
  v2[2] = @"VNRectangleTracking_TopLeftTracker";
  v2[3] = @"VNRectangleTracking_TopRightTracker";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:4];
  v1 = +[VNRectangleTracker trackedCorners]::trackedCorners;
  +[VNRectangleTracker trackedCorners]::trackedCorners = v0;
}

+ (id)supportedComputeDevicesForOptions:(id)a3 error:(id *)a4
{
  v4 = [VNComputeDeviceUtilities allCPUComputeDevices:a3];

  return v4;
}

@end