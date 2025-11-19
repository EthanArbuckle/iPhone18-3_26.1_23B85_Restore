@interface SHAssetUtilities
+ (BOOL)buffersFromAudioFile:(id)a3 format:(id)a4 accumulator:(id)a5 error:(id *)a6;
+ (id)pcmBufferFromAudioFile:(id)a3 outputFormat:(id)a4 durationToRead:(double)a5 error:(id *)a6;
+ (id)pcmBufferFromAudioFile:(id)a3 outputFormat:(id)a4 error:(id *)a5;
+ (void)mixedTracksFromAsset:(id)a3 format:(id)a4 accumulator:(id)a5 completionHandler:(id)a6;
@end

@implementation SHAssetUtilities

+ (void)mixedTracksFromAsset:(id)a3 format:(id)a4 accumulator:(id)a5 completionHandler:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    v21 = 0;
    v13 = [objc_alloc(MEMORY[0x277CE6410]) initWithAsset:v9 error:&v21];
    v14 = v21;
    if (v13)
    {
      v15 = *MEMORY[0x277CE5E48];
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __78__SHAssetUtilities_mixedTracksFromAsset_format_accumulator_completionHandler___block_invoke;
      v16[3] = &unk_2788F8118;
      v19 = v12;
      v17 = v10;
      v18 = v13;
      v20 = v11;
      [v9 loadTracksWithMediaType:v15 completionHandler:v16];
    }

    else
    {
      (*(v12 + 2))(v12, v14);
    }
  }
}

void __78__SHAssetUtilities_mixedTracksFromAsset_format_accumulator_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![v3 count])
  {
    v17 = *(a1 + 48);
    v18 = [SHError errorWithCode:100 underlyingError:0];
    (*(v17 + 16))(v17, v18);

    goto LABEL_22;
  }

  v4 = objc_alloc(MEMORY[0x277CE6418]);
  v5 = [*(a1 + 32) settings];
  v6 = [v4 initWithAudioTracks:v3 audioSettings:v5];

  if (([*(a1 + 40) canAddOutput:v6] & 1) == 0)
  {
    goto LABEL_20;
  }

  [*(a1 + 40) addOutput:v6];
  [*(a1 + 40) startReading];
  if ([*(a1 + 40) status] == 2)
  {
LABEL_15:
    (*(*(a1 + 48) + 16))();
    goto LABEL_21;
  }

  v7 = *MEMORY[0x277CBECE8];
  while (1)
  {
    if ([*(a1 + 40) status] != 1)
    {
      goto LABEL_14;
    }

    v8 = [v6 copyNextSampleBuffer];
    if (!v8)
    {
      goto LABEL_14;
    }

    v9 = v8;
    blockBufferOut = 0;
    memset(&bufferListOut, 0, sizeof(bufferListOut));
    AudioBufferListWithRetainedBlockBuffer = CMSampleBufferGetAudioBufferListWithRetainedBlockBuffer(v8, 0, &bufferListOut, 0x18uLL, v7, v7, 1u, &blockBufferOut);
    CFRelease(v9);
    if (AudioBufferListWithRetainedBlockBuffer)
    {
      break;
    }

    v11 = objc_alloc(MEMORY[0x277CB83C8]);
    v12 = [v11 initWithPCMFormat:*(a1 + 32) frameCapacity:bufferListOut.mBuffers[0].mDataByteSize / *(objc_msgSend(*(a1 + 32), "streamDescription") + 24)];
    [v12 setFrameLength:{objc_msgSend(v12, "frameCapacity")}];
    if (bufferListOut.mNumberBuffers)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        memcpy(*([v12 audioBufferList] + v13 * 16 + 16), bufferListOut.mBuffers[v13].mData, bufferListOut.mBuffers[v13].mDataByteSize);
        ++v14;
        ++v13;
      }

      while (v14 < bufferListOut.mNumberBuffers);
    }

    CFRelease(blockBufferOut);
    v15 = *(a1 + 56);
    if (v15)
    {
      v16 = (*(v15 + 16))(v15, v12);
      if (v16)
      {
        v22 = v16;
        (*(*(a1 + 48) + 16))();

        goto LABEL_21;
      }
    }

LABEL_14:
    if ([*(a1 + 40) status] == 2)
    {
      goto LABEL_15;
    }
  }

  v19 = sh_log_object();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *v23 = 0;
    _os_log_impl(&dword_230F52000, v19, OS_LOG_TYPE_ERROR, "Failed to get audio from URL passed to buffersFromAssetURL", v23, 2u);
  }

LABEL_20:
  v20 = *(a1 + 48);
  v21 = [SHError errorWithCode:100 underlyingError:0];
  (*(v20 + 16))(v20, v21);

LABEL_21:
LABEL_22:
}

+ (BOOL)buffersFromAudioFile:(id)a3 format:(id)a4 accumulator:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v8 processingFormat];
  v12 = 0x10000u / *([v11 streamDescription] + 24);

  v13 = objc_alloc(MEMORY[0x277CB83C8]);
  v14 = [v8 processingFormat];
  v31 = [v13 initWithPCMFormat:v14 frameCapacity:v12];

  [v9 sampleRate];
  v16 = v15;
  v17 = [v8 processingFormat];
  [v17 sampleRate];
  LODWORD(v12) = vcvtad_u64_f64(v16 / v18 * v12);

  v19 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:v9 frameCapacity:v12];
  v20 = objc_alloc(MEMORY[0x277CB8380]);
  v21 = [v8 processingFormat];
  v30 = v9;
  v22 = [v20 initFromFormat:v21 toFormat:v9];

  v23 = MEMORY[0x277D85DD0];
  while (1)
  {
    v33[0] = v23;
    v33[1] = 3221225472;
    v33[2] = __66__SHAssetUtilities_buffersFromAudioFile_format_accumulator_error___block_invoke;
    v33[3] = &unk_2788F8140;
    v24 = v8;
    v34 = v24;
    v25 = v31;
    v35 = v25;
    v26 = [v22 convertToBuffer:v19 error:a6 withInputFromBlock:v33];
    if (v26 == 2)
    {
      break;
    }

    v27 = v26;
    if (v26 == 3)
    {
      LOBYTE(v27) = 0;
      goto LABEL_8;
    }

    v28 = v10[2](v10, v19);
    if (v27)
    {
      goto LABEL_8;
    }

    [v25 setFrameLength:0];
    [v19 setFrameLength:0];
  }

  LOBYTE(v27) = 1;
LABEL_8:

  return v27;
}

id __66__SHAssetUtilities_buffersFromAudioFile_format_accumulator_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ([*(a1 + 32) readIntoBuffer:*(a1 + 40) error:0])
  {
    *a3 = 0;
    v5 = *(a1 + 40);
  }

  else
  {
    v6 = [*(a1 + 32) framePosition];
    if (v6 >= [*(a1 + 32) length])
    {
      v5 = 0;
      v7 = 2;
    }

    else
    {
      v5 = 0;
      v7 = 1;
    }

    *a3 = v7;
  }

  return v5;
}

+ (id)pcmBufferFromAudioFile:(id)a3 outputFormat:(id)a4 durationToRead:(double)a5 error:(id *)a6
{
  v7 = [a1 pcmBufferFromAudioFile:a3 outputFormat:a4 error:a6];
  v8 = v7;
  if (v7)
  {
    if (a5 <= 0.0)
    {
      v9 = [v7 frameLength];
      v10 = [v8 format];
      [v10 sampleRate];
      a5 = v9 / v11;
    }

    v12 = [SHAudioUtilities splitBuffer:v8 fromStartPosition:0 intoDurationsOfSize:a5];
    v13 = [v12 firstObject];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)pcmBufferFromAudioFile:(id)a3 outputFormat:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 length];
  [v9 sampleRate];
  v12 = v11;
  v13 = [v8 processingFormat];
  [v13 sampleRate];
  LODWORD(v5) = vcvtad_u64_f64(v12 / v14 * v10);

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = [objc_alloc(MEMORY[0x277CB83C8]) initWithPCMFormat:v9 frameCapacity:v5];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__SHAssetUtilities_pcmBufferFromAudioFile_outputFormat_error___block_invoke;
  v17[3] = &unk_2788F8168;
  v17[4] = &v18;
  if ([SHAssetUtilities buffersFromAudioFile:v8 format:v9 accumulator:v17 error:a5])
  {
    v15 = v19[5];
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v18, 8);

  return v15;
}

uint64_t __62__SHAssetUtilities_pcmBufferFromAudioFile_outputFormat_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [SHAudioUtilities appendBuffer:a2 toBuffer:*(*(*(a1 + 32) + 8) + 40)];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return 0;
}

@end