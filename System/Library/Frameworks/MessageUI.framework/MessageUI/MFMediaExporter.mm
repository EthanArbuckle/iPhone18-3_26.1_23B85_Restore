@interface MFMediaExporter
+ (id)log;
+ (int)exportAsset:(id)a3 progressHandler:(id)a4 completion:(id)a5;
+ (void)jpegRepresentationForImageData:(id)a3 inputContentType:(id)a4 completion:(id)a5;
@end

@implementation MFMediaExporter

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __22__MFMediaExporter_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_7 != -1)
  {
    dispatch_once(&log_onceToken_7, block);
  }

  v2 = log_log_7;

  return v2;
}

void __22__MFMediaExporter_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_7;
  log_log_7 = v1;
}

+ (int)exportAsset:(id)a3 progressHandler:(id)a4 completion:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[MFMediaExporter log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 mf_localIdentifier];
    *buf = 138543362;
    v39 = v12;
    _os_log_impl(&dword_1BE819000, v11, OS_LOG_TYPE_DEFAULT, "Exporting asset: %{public}@", buf, 0xCu);
  }

  if ([v8 canPlayAutoloop])
  {
    v13 = +[MFMediaExporter log];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BE819000, v13, OS_LOG_TYPE_DEFAULT, "\tAsset is an auto loop, converting to gif.", buf, 2u);
    }

    v14 = objc_alloc_init(MEMORY[0x1E6978868]);
    [v14 setNetworkAccessAllowed:1];
    v15 = v37;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke;
    v37[3] = &unk_1E806FE78;
    v37[4] = v9;
    [v14 setProgressHandler:v37];
    v16 = [MEMORY[0x1E6978860] defaultManager];
    v17 = v36;
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_33;
    v36[3] = &unk_1E806FEC8;
    v36[4] = v10;
    v18 = [v16 requestURLForVideo:v8 options:0 resultHandler:v36];
LABEL_14:
    v23 = v18;
    v24 = (v15 + 4);
    v25 = (v17 + 4);
    goto LABEL_15;
  }

  if (![v8 isVideo])
  {
    v26 = +[MFMediaExporter log];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BE819000, v26, OS_LOG_TYPE_DEFAULT, "\tAsset is an image. Exporting as a web-friendly image.", buf, 2u);
    }

    v14 = objc_alloc_init(MEMORY[0x1E6978868]);
    v15 = v29;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_50;
    v29[3] = &unk_1E806FE78;
    v29[4] = v9;
    [v14 setProgressHandler:v29];
    [v14 setNetworkAccessAllowed:1];
    [v14 setDeliveryMode:1];
    v16 = [MEMORY[0x1E6978860] defaultManager];
    v17 = v28;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_51;
    v28[3] = &unk_1E806FF90;
    v28[4] = v10;
    v28[5] = a1;
    v18 = [v16 requestImageDataAndOrientationForAsset:v8 options:v14 resultHandler:v28];
    goto LABEL_14;
  }

  v19 = +[MFMediaExporter log];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BE819000, v19, OS_LOG_TYPE_DEFAULT, "\tAsset is a video. Exporting as a mov.", buf, 2u);
  }

  v14 = objc_alloc_init(MEMORY[0x1E6978B18]);
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_40;
  v34[3] = &unk_1E806FE78;
  v20 = v9;
  v35 = v20;
  [v14 setProgressHandler:v34];
  [v14 setNetworkAccessAllowed:1];
  [v14 setVersion:0];
  v21 = [MEMORY[0x1E6978860] defaultManager];
  v22 = *MEMORY[0x1E6987320];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_41;
  v30[3] = &unk_1E806FF40;
  v32 = v20;
  v33 = v10;
  v31 = v8;
  v23 = [v21 requestExportSessionForVideo:v31 options:v14 exportPreset:v22 resultHandler:v30];

  v24 = &v35;
  v25 = &v32;
  v16 = v33;
LABEL_15:

  return v23;
}

void __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke(uint64_t a1, void *a2, double a3, uint64_t a4, void *a5)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = [a5 objectForKey:*MEMORY[0x1E6978DE8]];
  if ([v9 BOOLValue])
  {
    v10 = +[MFMediaExporter log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 ef_publicDescription];
      __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_cold_1(v11, v12, v10);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))(a3);
  }
}

void __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1E695DFF8];
  v5 = NSTemporaryDirectory();
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];
  v8 = [v5 stringByAppendingPathComponent:v7];
  v9 = [v4 fileURLWithPath:v8];

  v11 = v3;
  v12 = *(a1 + 32);
  v10 = v9;
  PFCreateGIFFromVideoURL();
}

void __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_2(void *a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = +[MFMediaExporter log];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v10 = 138543362;
      v11 = v6;
      _os_log_impl(&dword_1BE819000, v5, OS_LOG_TYPE_DEFAULT, "\tAuto-loop exported to: %{public}@", &v10, 0xCu);
    }

    v7 = [MEMORY[0x1E695DF90] dictionary];
    v8 = v7;
    v9 = a1[4];
    if (v9)
    {
      [v7 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69DE8E0]];
    }

    [v8 setObject:a1[5] forKeyedSubscript:*MEMORY[0x1E69DDE08]];
    (*(a1[6] + 16))();
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_2_cold_1(v5);
    }

    (*(a1[6] + 16))();
  }
}

void __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_40(uint64_t a1, void *a2, double a3, uint64_t a4, void *a5)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = [a5 objectForKey:*MEMORY[0x1E6978DE8]];
  if ([v9 BOOLValue])
  {
    v10 = +[MFMediaExporter log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 ef_publicDescription];
      __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_cold_1(v11, v12, v10);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))(a3 * 0.5);
  }
}

void __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_41(id *a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1E695DFF8];
  v5 = NSTemporaryDirectory();
  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];
  v8 = [v5 stringByAppendingPathComponent:v7];
  v9 = [v8 stringByAppendingPathExtension:@"mov"];
  v10 = [v4 fileURLWithPath:v9];

  [v3 setOutputURL:v10];
  [v3 setOutputFileType:*MEMORY[0x1E69874C0]];
  v11 = +[MFMediaExporter log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 absoluteString];
    *buf = 138543618;
    v31 = v12;
    v32 = 2114;
    v33 = v3;
    _os_log_impl(&dword_1BE819000, v11, OS_LOG_TYPE_DEFAULT, "\tExporting to %{public}@ with export session: %{public}@", buf, 0x16u);
  }

  v13 = +[MFMediaExporter conversionTimers];
  if (!v13)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v14 = MEMORY[0x1E695DFF0];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_44;
  v26[3] = &unk_1E806FEF0;
  v15 = v3;
  v27 = v15;
  v29 = a1[5];
  v16 = v13;
  v28 = v16;
  v17 = [v14 timerWithTimeInterval:1 repeats:v26 block:0.1];
  [v16 addObject:v17];
  [MFMediaExporter setConversionTimers:v16];
  v18 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [v18 addTimer:v17 forMode:*MEMORY[0x1E695D918]];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_2_47;
  v21[3] = &unk_1E806FF18;
  v19 = v15;
  v22 = v19;
  v20 = v10;
  v23 = v20;
  v25 = a1[6];
  v24 = a1[4];
  [v19 exportAsynchronouslyWithCompletionHandler:v21];
}

void __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_44(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) progress];
  v4 = v3;
  (*(*(a1 + 48) + 16))(v3 * 0.5 + 0.5);
  if (v4 >= 1.0)
  {
    [v5 invalidate];
    [*(a1 + 40) removeObject:v5];
  }
}

void __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_2_47(uint64_t a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = +[MFMediaExporter log];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) status];
    v10 = 134217984;
    v11 = v3;
    _os_log_impl(&dword_1BE819000, v2, OS_LOG_TYPE_DEFAULT, "\tFinished exporting with status %ld", &v10, 0xCu);
  }

  if ([*(a1 + 32) status] == 3)
  {
    v4 = *(a1 + 40);
    v14 = *MEMORY[0x1E69DDE08];
    v15[0] = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = +[MFMediaExporter log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 48) mf_localIdentifier];
      v8 = [*(a1 + 32) error];
      v9 = [v8 ef_publicDescription];
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v9;
      _os_log_error_impl(&dword_1BE819000, v6, OS_LOG_TYPE_ERROR, "\tError exporting asset %{public}@ with error %{public}@", &v10, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }
}

void __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_50(uint64_t a1, void *a2, double a3, uint64_t a4, void *a5)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = [a5 objectForKey:*MEMORY[0x1E6978DE8]];
  if ([v9 BOOLValue])
  {
    v10 = +[MFMediaExporter log];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [v8 ef_publicDescription];
      __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_cold_1(v11, v12, v10);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))(a3);
  }
}

void __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_51(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = *MEMORY[0x1E6978DF8];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E6978DF8]];

  if (v10)
  {
    v11 = [MEMORY[0x1E695DF90] dictionary];
    if (v7)
    {
      v12 = [MEMORY[0x1E6982C40] typeWithIdentifier:v7];
      v13 = v12;
      if (v12 && [v12 conformsToType:*MEMORY[0x1E6982E30]])
      {
        if (([v13 conformsToType:*MEMORY[0x1E6982E58]] & 1) != 0 || (objc_msgSend(v13, "conformsToType:", *MEMORY[0x1E6982F28]) & 1) != 0 || objc_msgSend(v13, "conformsToType:", *MEMORY[0x1E6982DE8]))
        {
          v14 = [v8 objectForKeyedSubscript:v9];
          [v11 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69DE960]];

          v15 = +[MFMediaExporter log];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1BE819000, v15, OS_LOG_TYPE_DEFAULT, "\tSuccessfully exported the image.", buf, 2u);
          }

          (*(*(a1 + 32) + 16))();
        }

        else
        {
          v18 = *(a1 + 40);
          v19 = [v8 objectForKeyedSubscript:v9];
          v20[0] = MEMORY[0x1E69E9820];
          v20[1] = 3221225472;
          v20[2] = __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_53;
          v20[3] = &unk_1E806FF68;
          v21 = v11;
          v22 = *(a1 + 32);
          [v18 jpegRepresentationForImageData:v19 inputContentType:v7 completion:v20];
        }

LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
      v13 = 0;
    }

    v17 = +[MFMediaExporter log];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_51_cold_1(v7, v17);
    }

    (*(*(a1 + 32) + 16))();
    goto LABEL_18;
  }

  v16 = +[MFMediaExporter log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_51_cold_2(v16);
  }

  (*(*(a1 + 32) + 16))();
LABEL_19:
}

void __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_53(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) setObject:v3 forKeyedSubscript:*MEMORY[0x1E69DE960]];
  v4 = +[MFMediaExporter log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1BE819000, v4, OS_LOG_TYPE_DEFAULT, "\tSuccessfully converted and exported the image as JPEG.", v5, 2u);
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)jpegRepresentationForImageData:(id)a3 inputContentType:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (_imageConversionScheduler_onceToken != -1)
  {
    +[MFMediaExporter jpegRepresentationForImageData:inputContentType:completion:];
  }

  v10 = _imageConversionScheduler_sInstance;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__MFMediaExporter_jpegRepresentationForImageData_inputContentType_completion___block_invoke;
  v14[3] = &unk_1E806CA10;
  v15 = v8;
  v16 = v7;
  v17 = v9;
  v11 = v9;
  v12 = v7;
  v13 = v8;
  [v10 performBlock:v14];
}

void __78__MFMediaExporter_jpegRepresentationForImageData_inputContentType_completion___block_invoke(uint64_t a1)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v15 = *MEMORY[0x1E696E118];
  v16[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v4 = CGImageSourceCreateWithData(*(a1 + 40), v3);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = [MEMORY[0x1E695DF88] data];
  v6 = [*MEMORY[0x1E6982E58] identifier];
  v7 = CGImageDestinationCreateWithData(v5, v6, 1uLL, 0);

  if (v7)
  {
    v8 = *MEMORY[0x1E696D350];
    v13[0] = *MEMORY[0x1E696D360];
    v13[1] = v8;
    v14[0] = MEMORY[0x1E695E118];
    v14[1] = MEMORY[0x1E695E118];
    v13[2] = *MEMORY[0x1E696D338];
    v14[2] = &unk_1F3D16810;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];
    PrimaryImageIndex = CGImageSourceGetPrimaryImageIndex(v4);
    CGImageDestinationAddImageFromSource(v7, v4, PrimaryImageIndex, v9);
    v11 = CGImageDestinationFinalize(v7) ? v5 : 0;
    CFRelease(v7);
  }

  else
  {
    v11 = 0;
  }

  CFRelease(v4);

  if (!v11)
  {
LABEL_9:
    v12 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithData:*(a1 + 40)];
    v11 = _UIImageJPEGRepresentation();
  }

  (*(*(a1 + 48) + 16))();
}

void __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_0_3(&dword_1BE819000, a2, a3, "\tAsset export cancelled with error: %{public}@", a2);
}

void __58__MFMediaExporter_exportAsset_progressHandler_completion___block_invoke_51_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BE819000, a2, OS_LOG_TYPE_ERROR, "\tUnable to export the image. The contentType is not an image - %{public}@.", &v2, 0xCu);
}

@end