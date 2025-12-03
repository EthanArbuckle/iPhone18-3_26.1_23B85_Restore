@interface HMCameraClipVideoFileCombiner
+ (id)logCategory;
- (HMCameraClipVideoFileCombiner)initWithVideoFileURLs:(id)ls queue:(id)queue;
- (void)combineToOutputFileURL:(id)l completion:(id)completion;
- (void)writeSamplesFromOutputs:(id)outputs toInput:(id)input completion:(id)completion;
@end

@implementation HMCameraClipVideoFileCombiner

- (void)writeSamplesFromOutputs:(id)outputs toInput:(id)input completion:(id)completion
{
  outputsCopy = outputs;
  inputCopy = input;
  completionCopy = completion;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  queue = [(HMCameraClipVideoFileCombiner *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __76__HMCameraClipVideoFileCombiner_writeSamplesFromOutputs_toInput_completion___block_invoke;
  v15[3] = &unk_1E7546D78;
  v12 = inputCopy;
  v16 = v12;
  v20 = v21;
  v13 = outputsCopy;
  v17 = v13;
  v14 = completionCopy;
  selfCopy = self;
  v19 = v14;
  [v12 requestMediaDataWhenReadyOnQueue:queue usingBlock:v15];

  _Block_object_dispose(v21, 8);
}

void __76__HMCameraClipVideoFileCombiner_writeSamplesFromOutputs_toInput_completion___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (![*(a1 + 32) isReadyForMoreMediaData])
  {
    goto LABEL_19;
  }

  v3 = *MEMORY[0x1E69875A0];
  *&v2 = 138543618;
  v24 = v2;
  while (1)
  {
    v4 = *(*(*(a1 + 64) + 8) + 24);
    if ([*(a1 + 40) count] <= v4)
    {
      [*(a1 + 32) markAsFinished];
      (*(*(a1 + 56) + 16))();
      goto LABEL_19;
    }

    v5 = [*(a1 + 40) objectAtIndexedSubscript:*(*(*(a1 + 64) + 8) + 24)];
    v6 = [v5 copyNextSampleBuffer];
    if (!v6)
    {
      ++*(*(*(a1 + 64) + 8) + 24);
      goto LABEL_13;
    }

    v7 = v6;
    v8 = [v5 track];
    v9 = [v8 mediaType];
    if ([v9 isEqualToString:v3])
    {
      NumSamples = CMSampleBufferGetNumSamples(v7);

      if (!NumSamples)
      {
        v11 = objc_autoreleasePoolPush();
        v12 = *(a1 + 48);
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = HMFGetLogIdentifier();
          *buf = v24;
          v26 = v14;
          v27 = 2048;
          v28 = v7;
          _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Skipping audio sample buffer with no samples: %p", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v11);
        CFRelease(v7);
        goto LABEL_13;
      }
    }

    else
    {
    }

    v15 = [*(a1 + 32) appendSampleBuffer:v7];
    CFRelease(v7);
    if ((v15 & 1) == 0)
    {
      break;
    }

LABEL_13:

    if (([*(a1 + 32) isReadyForMoreMediaData] & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v16 = objc_autoreleasePoolPush();
  v17 = *(a1 + 48);
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    v20 = *(a1 + 32);
    *buf = v24;
    v26 = v19;
    v27 = 2112;
    v28 = v20;
    _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to append sample buffer to input %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  [*(a1 + 32) markAsFinished];
  v21 = *(a1 + 56);
  v22 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
  (*(v21 + 16))(v21, v22);

LABEL_19:
  v23 = *MEMORY[0x1E69E9840];
}

- (void)combineToOutputFileURL:(id)l completion:(id)completion
{
  v144 = *MEMORY[0x1E69E9840];
  lCopy = l;
  completionCopy = completion;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v11;
    *&buf[12] = 2112;
    *&buf[14] = lCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Combining video files and outputting to file URL: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  videoFileURLs = [(HMCameraClipVideoFileCombiner *)selfCopy videoFileURLs];
  v13 = [videoFileURLs count];

  if (!v13)
  {
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v27;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_INFO, "%{public}@Asked to combine empty list of video file URLs", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    completionCopy[2](completionCopy, 0);
    goto LABEL_85;
  }

  v140 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v16 = [defaultManager fileExistsAtPath:path isDirectory:&v140];

  if (v16)
  {
    v17 = v140;
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    v21 = v20;
    if (v17 == 1)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v22;
        *&buf[12] = 2112;
        *&buf[14] = lCopy;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Cannot combine to output file URL because it is a directory: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v18);
      v23 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
      (completionCopy)[2](completionCopy, v23);
      goto LABEL_84;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v28;
      *&buf[12] = 2112;
      *&buf[14] = lCopy;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@Removing existing file at output file URL: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v139 = 0;
    v30 = [defaultManager2 removeItemAtURL:lCopy error:&v139];
    v23 = v139;

    if ((v30 & 1) == 0)
    {
      v70 = objc_autoreleasePoolPush();
      v71 = v19;
      v72 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        v73 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v73;
        *&buf[12] = 2112;
        *&buf[14] = lCopy;
        *&buf[22] = 2112;
        v143 = v23;
        _os_log_impl(&dword_19BB39000, v72, OS_LOG_TYPE_ERROR, "%{public}@Cannot remove existing file at output file URL %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v70);
      v74 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
      (completionCopy)[2](completionCopy, v74);

      goto LABEL_84;
    }
  }

  videoFileURLs2 = [(HMCameraClipVideoFileCombiner *)selfCopy videoFileURLs];
  v32 = [videoFileURLs2 na_map:&__block_literal_global_4585];

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  v135 = 0u;
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v33 = v32;
  v110 = v33;
  v116 = [v33 countByEnumeratingWithState:&v135 objects:v141 count:16];
  if (!v116)
  {
    v111 = 0;
    firstObject3 = 0;
    goto LABEL_43;
  }

  v111 = 0;
  firstObject3 = 0;
  v117 = *v136;
  v115 = *MEMORY[0x1E6987608];
  v114 = *MEMORY[0x1E69875A0];
  v107 = lCopy;
  v108 = completionCopy;
  v119 = selfCopy;
  while (2)
  {
    for (i = 0; i != v116; ++i)
    {
      if (*v136 != v117)
      {
        objc_enumerationMutation(v33);
      }

      v36 = *(*(&v135 + 1) + 8 * i);
      v37 = objc_alloc(MEMORY[0x1E6987E78]);
      v134 = 0;
      v38 = [v37 initWithAsset:v36 error:&v134];
      v39 = v134;
      if (!v38)
      {
        v66 = objc_autoreleasePoolPush();
        v67 = v119;
        v68 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          v69 = HMFGetLogIdentifier();
          *buf = 138543874;
          *&buf[4] = v69;
          *&buf[12] = 2112;
          *&buf[14] = v36;
          *&buf[22] = 2112;
          v143 = v39;
          _os_log_impl(&dword_19BB39000, v68, OS_LOG_TYPE_ERROR, "%{public}@Failed to create asset reader with asset %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v66);
        completionCopy = v108;
        v108[2](v108, v39);
        lCopy = v107;
        goto LABEL_82;
      }

      v40 = [v36 tracksWithMediaType:v115];
      firstObject = [v40 firstObject];

      v120 = v39;
      if (firstObject)
      {
        v42 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:firstObject outputSettings:0];
        if (![v38 canAddOutput:v42])
        {
          v75 = objc_autoreleasePoolPush();
          v76 = v119;
          v77 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
          {
            v78 = HMFGetLogIdentifier();
            *buf = 138543874;
            *&buf[4] = v78;
            *&buf[12] = 2112;
            *&buf[14] = v42;
            *&buf[22] = 2112;
            v143 = v38;
            _os_log_impl(&dword_19BB39000, v77, OS_LOG_TYPE_ERROR, "%{public}@Cannot add video output %@ to reader %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v75);
          v79 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
          completionCopy = v108;
          v108[2](v108, v79);

          lCopy = v107;
          v39 = v120;
          goto LABEL_82;
        }

        [v38 addOutput:v42];
        [array2 addObject:v42];
      }

      else
      {
        v43 = objc_autoreleasePoolPush();
        v44 = v119;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v46;
          *&buf[12] = 2112;
          *&buf[14] = v36;
          _os_log_impl(&dword_19BB39000, v45, OS_LOG_TYPE_INFO, "%{public}@Skipping video for asset because no video track was found: %@", buf, 0x16u);

          v33 = v110;
        }

        objc_autoreleasePoolPop(v43);
      }

      v47 = [v36 tracksWithMediaType:v114];
      firstObject2 = [v47 firstObject];

      if (!firstObject2)
      {
        v50 = objc_autoreleasePoolPush();
        v51 = v119;
        v52 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          v53 = HMFGetLogIdentifier();
          *buf = 138543618;
          *&buf[4] = v53;
          *&buf[12] = 2112;
          *&buf[14] = v36;
          _os_log_impl(&dword_19BB39000, v52, OS_LOG_TYPE_INFO, "%{public}@Skipping audio for asset because no audio track was found: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v50);
        goto LABEL_34;
      }

      formatDescriptions2 = [MEMORY[0x1E6987EA8] assetReaderTrackOutputWithTrack:firstObject2 outputSettings:0];
      if ([v38 canAddOutput:formatDescriptions2])
      {
        [v38 addOutput:formatDescriptions2];
        [array3 addObject:formatDescriptions2];

LABEL_34:
        [v38 startReading];
        [array addObject:v38];
        formatDescriptions = [firstObject formatDescriptions];
        firstObject3 = [formatDescriptions firstObject];

        formatDescriptions2 = [firstObject2 formatDescriptions];
        firstObject4 = [formatDescriptions2 firstObject];
        v56 = 1;
        v111 = firstObject4;
        goto LABEL_38;
      }

      v57 = objc_autoreleasePoolPush();
      v58 = v119;
      v59 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        v60 = HMFGetLogIdentifier();
        *buf = 138543874;
        *&buf[4] = v60;
        *&buf[12] = 2112;
        *&buf[14] = formatDescriptions2;
        *&buf[22] = 2112;
        v143 = v38;
        _os_log_impl(&dword_19BB39000, v59, OS_LOG_TYPE_ERROR, "%{public}@Cannot add audio output %@ to reader %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v57);
      firstObject4 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
      v108[2](v108, firstObject4);
      v56 = 0;
      v33 = v110;
LABEL_38:

      if (!v56)
      {
        lCopy = v107;
        completionCopy = v108;
        goto LABEL_83;
      }
    }

    lCopy = v107;
    completionCopy = v108;
    selfCopy = v119;
    v116 = [v33 countByEnumeratingWithState:&v135 objects:v141 count:16];
    if (v116)
    {
      continue;
    }

    break;
  }

LABEL_43:

  v61 = objc_alloc(MEMORY[0x1E6987ED8]);
  v62 = *MEMORY[0x1E69874B8];
  v133 = 0;
  v63 = [v61 initWithURL:lCopy fileType:v62 error:&v133];
  v33 = v133;
  if (!v63)
  {
    v80 = objc_autoreleasePoolPush();
    v81 = selfCopy;
    v82 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      v83 = HMFGetLogIdentifier();
      *buf = 138543874;
      *&buf[4] = v83;
      *&buf[12] = 2112;
      *&buf[14] = lCopy;
      *&buf[22] = 2112;
      v143 = v33;
      _os_log_impl(&dword_19BB39000, v82, OS_LOG_TYPE_ERROR, "%{public}@Failed to create asset writer with URL %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v80);
    (completionCopy)[2](completionCopy, v33);
    v39 = 0;
    goto LABEL_82;
  }

  v121 = v63;
  if (!firstObject3)
  {
    v84 = objc_autoreleasePoolPush();
    v85 = selfCopy;
    v86 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
    {
      v87 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v87;
      _os_log_impl(&dword_19BB39000, v86, OS_LOG_TYPE_INFO, "%{public}@Skipping video input because no assets contained a video track", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v84);
    v118 = 0;
LABEL_63:
    if (v111)
    {
      v88 = objc_alloc(MEMORY[0x1E6987EE0]);
      v89 = [v88 initWithMediaType:*MEMORY[0x1E69875A0] outputSettings:0 sourceFormatHint:v111];
      v39 = v121;
      if (![v121 canAddInput:v89])
      {
        v102 = objc_autoreleasePoolPush();
        v103 = selfCopy;
        v104 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
        {
          v105 = HMFGetLogIdentifier();
          *buf = 138543874;
          *&buf[4] = v105;
          *&buf[12] = 2112;
          *&buf[14] = v89;
          *&buf[22] = 2112;
          v143 = v121;
          _os_log_impl(&dword_19BB39000, v104, OS_LOG_TYPE_ERROR, "%{public}@Cannot add audio input %@ to writer %@", buf, 0x20u);

          v39 = v121;
        }

        objc_autoreleasePoolPop(v102);
        v100 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
        (completionCopy)[2](completionCopy, v100);
        v94 = v118;
        goto LABEL_80;
      }

      [v121 addInput:v89];
    }

    else
    {
      v95 = objc_autoreleasePoolPush();
      v96 = selfCopy;
      v97 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
      {
        v98 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v98;
        _os_log_impl(&dword_19BB39000, v97, OS_LOG_TYPE_INFO, "%{public}@Skipping audio input because no assets contained an audio track", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v95);
      v89 = 0;
      v39 = v121;
    }

    [v39 startWriting];
    *buf = *MEMORY[0x1E6960CC0];
    *&buf[16] = *(MEMORY[0x1E6960CC0] + 16);
    [v39 startSessionAtSourceTime:buf];
    v99 = dispatch_group_create();
    v100 = v99;
    v94 = v118;
    if (v118)
    {
      dispatch_group_enter(v99);
      v130[0] = MEMORY[0x1E69E9820];
      v130[1] = 3221225472;
      v130[2] = __67__HMCameraClipVideoFileCombiner_combineToOutputFileURL_completion___block_invoke_8;
      v130[3] = &unk_1E7546D50;
      v131 = array;
      v132 = v100;
      [(HMCameraClipVideoFileCombiner *)selfCopy writeSamplesFromOutputs:array2 toInput:v118 completion:v130];
    }

    if (v89)
    {
      dispatch_group_enter(v100);
      v127[0] = MEMORY[0x1E69E9820];
      v127[1] = 3221225472;
      v127[2] = __67__HMCameraClipVideoFileCombiner_combineToOutputFileURL_completion___block_invoke_2;
      v127[3] = &unk_1E7546D50;
      v128 = array;
      v129 = v100;
      [(HMCameraClipVideoFileCombiner *)selfCopy writeSamplesFromOutputs:array3 toInput:v89 completion:v127];
    }

    queue = [(HMCameraClipVideoFileCombiner *)selfCopy queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__HMCameraClipVideoFileCombiner_combineToOutputFileURL_completion___block_invoke_3;
    block[3] = &unk_1E754D208;
    v123 = v39;
    v124 = selfCopy;
    v125 = lCopy;
    v126 = completionCopy;
    dispatch_group_notify(v100, queue, block);

LABEL_80:
    goto LABEL_81;
  }

  v64 = objc_alloc(MEMORY[0x1E6987EE0]);
  v65 = [v64 initWithMediaType:*MEMORY[0x1E6987608] outputSettings:0 sourceFormatHint:firstObject3];
  v118 = v65;
  if ([v121 canAddInput:v65])
  {
    [v121 addInput:v65];
    goto LABEL_63;
  }

  v90 = objc_autoreleasePoolPush();
  v91 = selfCopy;
  v92 = HMFGetOSLogHandle();
  v39 = v121;
  if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
  {
    v93 = HMFGetLogIdentifier();
    *buf = 138543874;
    *&buf[4] = v93;
    *&buf[12] = 2112;
    *&buf[14] = v118;
    *&buf[22] = 2112;
    v143 = v121;
    _os_log_impl(&dword_19BB39000, v92, OS_LOG_TYPE_ERROR, "%{public}@Cannot add video input %@ to writer %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v90);
  v89 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
  (completionCopy)[2](completionCopy, v89);
  v94 = v118;
LABEL_81:

LABEL_82:
LABEL_83:

  v23 = v110;
LABEL_84:

LABEL_85:
  v106 = *MEMORY[0x1E69E9840];
}

void __67__HMCameraClipVideoFileCombiner_combineToOutputFileURL_completion___block_invoke_3(id *a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__HMCameraClipVideoFileCombiner_combineToOutputFileURL_completion___block_invoke_4;
  v9[3] = &unk_1E754D208;
  v2 = a1 + 5;
  v3 = a1[4];
  *&v4 = v3;
  *(&v4 + 1) = *v2;
  v8 = v4;
  v5 = a1[6];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v3 finishWritingWithCompletionHandler:v9];
}

void __67__HMCameraClipVideoFileCombiner_combineToOutputFileURL_completion___block_invoke_4(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) status];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2 == 2)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 48);
      v15 = 138543618;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Successfully combined fragments to %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = *(a1 + 48);
      v11 = [*(a1 + 32) error];
      v15 = 138543874;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to combine fragments to %@: %@", &v15, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    v12 = *(a1 + 56);
    v13 = [*(a1 + 32) error];
    (*(v12 + 16))(v12, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

id __67__HMCameraClipVideoFileCombiner_combineToOutputFileURL_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E6988168];
  v3 = a2;
  v4 = [[v2 alloc] initWithURL:v3 options:0];

  return v4;
}

- (HMCameraClipVideoFileCombiner)initWithVideoFileURLs:(id)ls queue:(id)queue
{
  lsCopy = ls;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = HMCameraClipVideoFileCombiner;
  v9 = [(HMCameraClipVideoFileCombiner *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_videoFileURLs, ls);
    objc_storeStrong(&v10->_queue, queue);
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t19 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t19, &__block_literal_global_12);
  }

  v3 = logCategory__hmf_once_v20;

  return v3;
}

uint64_t __44__HMCameraClipVideoFileCombiner_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v20 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

@end