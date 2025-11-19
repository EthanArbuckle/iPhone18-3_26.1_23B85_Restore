uint64_t _BSUITransformFromOrientationToOrientation@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = MEMORY[0x1E695EFD0];
  v5 = *(MEMORY[0x1E695EFD0] + 16);
  *a3 = *MEMORY[0x1E695EFD0];
  a3[1] = v5;
  a3[2] = *(v4 + 32);
  if (result != a2)
  {
    BSDegreesToRadians();
    CGAffineTransformMakeRotation(&v7, v6);
    return UIIntegralTransform();
  }

  return result;
}

id __pathForKeyAndExtension(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v10 = v6;
    v11 = v8;
    if (qword_1ED61C7C0 != -1)
    {
      dispatch_once(&qword_1ED61C7C0, &__block_literal_global_0);
    }

    v12 = [v10 stringByAddingPercentEncodingWithAllowedCharacters:qword_1ED61C7B8];
    v13 = [v12 stringByAppendingPathExtension:v11];

    v9 = [v5 stringByAppendingPathComponent:v13];
  }

  return v9;
}

id _readCPBitmapImageFromPathWithOptions(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = a1;
  MappedDataFromPath = CPBitmapCreateMappedDataFromPath();
  if (MappedDataFromPath)
  {
    ImagesFromData = CPBitmapCreateImagesFromData();
    if (ImagesFromData)
    {
      Count = CFArrayGetCount(ImagesFromData);
      if (Count == 1)
      {
        goto LABEL_7;
      }

      v5 = BSLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v10 = CFArrayGetCount(ImagesFromData);
        LODWORD(valuePtr) = 67109378;
        HIDWORD(valuePtr) = v10;
        v12 = 2114;
        v13 = v1;
        _os_log_error_impl(&dword_1A2D36000, v5, OS_LOG_TYPE_ERROR, "BSUIMappedImageCache: unexpected imageCount=%i in CPBitmapData from path=%{public}@", &valuePtr, 0x12u);
      }

      if (Count >= 1)
      {
LABEL_7:
        valuePtr = 1.0;
        v6 = objc_alloc(MEMORY[0x1E69DCAB8]);
        ValueAtIndex = CFArrayGetValueAtIndex(ImagesFromData, 0);
        v8 = [v6 initWithCGImage:ValueAtIndex scale:0 orientation:valuePtr];
      }

      else
      {
        v8 = 0;
      }

      CFRelease(ImagesFromData);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(MappedDataFromPath);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id _workBlockGenerator(void *a1, void *a2, char a3, void *a4, uint64_t a5, int a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12)
{
  v17 = a1;
  v18 = a2;
  v19 = a4;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v67 = a11;
  v24 = v20;
  v65 = a12;
  v66 = v19;
  v68 = v17;
  if (v17)
  {
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v35 = v21;
    v36 = [MEMORY[0x1E696AAA8] currentHandler];
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BSUIMappedImageCacheFutureWorkBlock _workBlockGenerator(BSUIMappedImageCacheFuture *__strong, UIImage *__strong, BOOL, NSString *__strong, BSUIMappedImageCachePersistenceOptions, CPBitmapReadFlags, NSString *__strong, NSString *__strong, __strong dispatch_queue_t, __strong dispatch_queue_t, NSMutableDictionary<NSString *, id> *__strong, __strong BSUIMappedImageCachePersistenceCompletion)"}];
    [v36 handleFailureInFunction:v37 file:@"BSUIMappedImageCache.m" lineNumber:374 description:{@"Invalid parameter not satisfying: %@", @"future"}];

    v21 = v35;
    if (v18)
    {
LABEL_3:
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  v38 = v21;
  v39 = [MEMORY[0x1E696AAA8] currentHandler];
  v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BSUIMappedImageCacheFutureWorkBlock _workBlockGenerator(BSUIMappedImageCacheFuture *__strong, UIImage *__strong, BOOL, NSString *__strong, BSUIMappedImageCachePersistenceOptions, CPBitmapReadFlags, NSString *__strong, NSString *__strong, __strong dispatch_queue_t, __strong dispatch_queue_t, NSMutableDictionary<NSString *, id> *__strong, __strong BSUIMappedImageCachePersistenceCompletion)"}];
  [v39 handleFailureInFunction:v40 file:@"BSUIMappedImageCache.m" lineNumber:375 description:{@"Invalid parameter not satisfying: %@", @"image"}];

  v21 = v38;
  if (v19)
  {
LABEL_4:
    if (v24)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  v41 = v21;
  v42 = [MEMORY[0x1E696AAA8] currentHandler];
  v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BSUIMappedImageCacheFutureWorkBlock _workBlockGenerator(BSUIMappedImageCacheFuture *__strong, UIImage *__strong, BOOL, NSString *__strong, BSUIMappedImageCachePersistenceOptions, CPBitmapReadFlags, NSString *__strong, NSString *__strong, __strong dispatch_queue_t, __strong dispatch_queue_t, NSMutableDictionary<NSString *, id> *__strong, __strong BSUIMappedImageCachePersistenceCompletion)"}];
  [v42 handleFailureInFunction:v43 file:@"BSUIMappedImageCache.m" lineNumber:376 description:{@"Invalid parameter not satisfying: %@", @"key"}];

  v21 = v41;
  if (v24)
  {
LABEL_5:
    if (v21)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  v44 = v21;
  v45 = [MEMORY[0x1E696AAA8] currentHandler];
  v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BSUIMappedImageCacheFutureWorkBlock _workBlockGenerator(BSUIMappedImageCacheFuture *__strong, UIImage *__strong, BOOL, NSString *__strong, BSUIMappedImageCachePersistenceOptions, CPBitmapReadFlags, NSString *__strong, NSString *__strong, __strong dispatch_queue_t, __strong dispatch_queue_t, NSMutableDictionary<NSString *, id> *__strong, __strong BSUIMappedImageCachePersistenceCompletion)"}];
  [v45 handleFailureInFunction:v46 file:@"BSUIMappedImageCache.m" lineNumber:377 description:{@"Invalid parameter not satisfying: %@", @"tmp_dir_path"}];

  v21 = v44;
  if (v44)
  {
LABEL_6:
    if (v23)
    {
      goto LABEL_7;
    }

LABEL_18:
    v50 = v21;
    v51 = [MEMORY[0x1E696AAA8] currentHandler];
    v52 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BSUIMappedImageCacheFutureWorkBlock _workBlockGenerator(BSUIMappedImageCacheFuture *__strong, UIImage *__strong, BOOL, NSString *__strong, BSUIMappedImageCachePersistenceOptions, CPBitmapReadFlags, NSString *__strong, NSString *__strong, __strong dispatch_queue_t, __strong dispatch_queue_t, NSMutableDictionary<NSString *, id> *__strong, __strong BSUIMappedImageCachePersistenceCompletion)"}];
    [v51 handleFailureInFunction:v52 file:@"BSUIMappedImageCache.m" lineNumber:379 description:{@"Invalid parameter not satisfying: %@", @"completion_queue"}];

    v21 = v50;
    if (v22)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_17:
  v47 = v21;
  v48 = [MEMORY[0x1E696AAA8] currentHandler];
  v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BSUIMappedImageCacheFutureWorkBlock _workBlockGenerator(BSUIMappedImageCacheFuture *__strong, UIImage *__strong, BOOL, NSString *__strong, BSUIMappedImageCachePersistenceOptions, CPBitmapReadFlags, NSString *__strong, NSString *__strong, __strong dispatch_queue_t, __strong dispatch_queue_t, NSMutableDictionary<NSString *, id> *__strong, __strong BSUIMappedImageCachePersistenceCompletion)"}];
  [v48 handleFailureInFunction:v49 file:@"BSUIMappedImageCache.m" lineNumber:378 description:{@"Invalid parameter not satisfying: %@", @"local_path"}];

  v21 = v47;
  if (!v23)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (v22)
  {
    goto LABEL_8;
  }

LABEL_19:
  v53 = v21;
  v54 = [MEMORY[0x1E696AAA8] currentHandler];
  v55 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BSUIMappedImageCacheFutureWorkBlock _workBlockGenerator(BSUIMappedImageCacheFuture *__strong, UIImage *__strong, BOOL, NSString *__strong, BSUIMappedImageCachePersistenceOptions, CPBitmapReadFlags, NSString *__strong, NSString *__strong, __strong dispatch_queue_t, __strong dispatch_queue_t, NSMutableDictionary<NSString *, id> *__strong, __strong BSUIMappedImageCachePersistenceCompletion)"}];
  [v54 handleFailureInFunction:v55 file:@"BSUIMappedImageCache.m" lineNumber:380 description:{@"Invalid parameter not satisfying: %@", @"local_queue"}];

  v21 = v53;
LABEL_8:
  v25 = v67;
  if (!v67)
  {
    v56 = v21;
    v57 = [MEMORY[0x1E696AAA8] currentHandler];
    v58 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BSUIMappedImageCacheFutureWorkBlock _workBlockGenerator(BSUIMappedImageCacheFuture *__strong, UIImage *__strong, BOOL, NSString *__strong, BSUIMappedImageCachePersistenceOptions, CPBitmapReadFlags, NSString *__strong, NSString *__strong, __strong dispatch_queue_t, __strong dispatch_queue_t, NSMutableDictionary<NSString *, id> *__strong, __strong BSUIMappedImageCachePersistenceCompletion)"}];
    [v57 handleFailureInFunction:v58 file:@"BSUIMappedImageCache.m" lineNumber:381 description:{@"Invalid parameter not satisfying: %@", @"local_queue_keysToImagesOrFutures"}];

    v21 = v56;
    v25 = 0;
  }

  v26 = [MEMORY[0x1E698E7B8] referenceWithObject:v17];
  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = ___workBlockGenerator_block_invoke;
  v69[3] = &unk_1E76B7D00;
  v70 = v26;
  v80 = a6;
  v60 = v18;
  v71 = v60;
  v79 = a5;
  v62 = v24;
  v72 = v62;
  v27 = v66;
  v73 = v27;
  v28 = v22;
  v74 = v28;
  v29 = v25;
  v75 = v29;
  v30 = v21;
  v76 = v30;
  v31 = v65;
  v78 = v31;
  v32 = v23;
  v77 = v32;
  v81 = a3;
  v64 = v26;
  v33 = MEMORY[0x1A58E5D00](v69);
  v59 = [v33 copy];

  return v59;
}

void ___workBlockGenerator_block_invoke(uint64_t a1, void *a2)
{
  v39[5] = *MEMORY[0x1E69E9840];
  v19 = a2;
  v3 = [*(a1 + 32) object];
  if (v3)
  {
    if ([*(a1 + 40) ioSurface])
    {
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = ___workBlockGenerator_block_invoke_2;
      v38[3] = &unk_1E76B7C40;
      v39[0] = *(a1 + 40);
      v18 = MEMORY[0x1A58E5D00](v38);
      v4 = v39;
      v5 = v37;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v6 = @"surface";
      v7 = ___workBlockGenerator_block_invoke_3;
    }

    else
    {
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = ___workBlockGenerator_block_invoke_4;
      v35[3] = &unk_1E76B7C88;
      v8 = *(a1 + 40);
      v9 = *(a1 + 104);
      v36[0] = v8;
      v36[1] = v9;
      v18 = MEMORY[0x1A58E5D00](v35);
      v4 = v36;
      v5 = v34;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v6 = @"cpbitmap";
      v7 = ___workBlockGenerator_block_invoke_5;
    }

    v5[2] = v7;
    v5[3] = &__block_descriptor_36_e27___UIImage_16__0__NSString_8l;
    *(v5 + 8) = *(a1 + 112);
    v10 = MEMORY[0x1A58E5D00]();

    v33 = -1;
    v11 = __pathForKeyAndExtension(*(a1 + 48), *(a1 + 56), v6);
    v12 = BSTemporaryFileAtPath();

    v13 = *(a1 + 40);
    v19[2](v19, v13);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___workBlockGenerator_block_invoke_236;
    block[3] = &unk_1E76B7CD8;
    v14 = *(a1 + 64);
    v21 = *(a1 + 72);
    v22 = *(a1 + 56);
    v23 = v3;
    v24 = v13;
    v25 = 0;
    v26 = *(a1 + 80);
    v27 = v6;
    v28 = v12;
    v31 = -1;
    v30 = *(a1 + 96);
    v29 = *(a1 + 88);
    v32 = *(a1 + 116);
    v15 = v12;
    v16 = 0;
    v17 = v13;
    dispatch_async(v14, block);
  }
}

void ___workBlockGenerator_block_invoke_236(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  v3 = v2;
  if (v2 == *(a1 + 48) || v2 == *(a1 + 56))
  {
    [*(a1 + 32) setObject:? forKey:?];
    if (*(a1 + 64) == *(a1 + 56))
    {
      v5 = __pathForKeyAndExtension(*(a1 + 72), *(a1 + 40), *(a1 + 80));
      v6 = [*(a1 + 88) fileSystemRepresentation];
      v7 = [v5 fileSystemRepresentation];
      rename(v6, v7, v8);
      if (v9)
      {
        unlink([*(a1 + 88) fileSystemRepresentation]);
        v10 = BSLogCommon();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          v17 = *(a1 + 88);
          *buf = 138543618;
          v23 = v17;
          v24 = 2114;
          v25 = v5;
          _os_log_error_impl(&dword_1A2D36000, v10, OS_LOG_TYPE_ERROR, " **** failed to move item at tempPath=%{public}@ to path=%{public}@ : leaving in cache but it won't survive process termination", buf, 0x16u);
        }
      }
    }

    else
    {
      if (*(a1 + 112) == -1)
      {
        goto LABEL_18;
      }

      unlink([*(a1 + 88) fileSystemRepresentation]);
      v5 = BSLogCommon();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 88);
        *buf = 138543362;
        v23 = v16;
        _os_log_error_impl(&dword_1A2D36000, v5, OS_LOG_TYPE_ERROR, " **** failed to write item at tempPath=%{public}@", buf, 0xCu);
      }
    }
  }

  else if (*(a1 + 112) != -1)
  {
    unlink([*(a1 + 88) fileSystemRepresentation]);
  }

LABEL_18:
  v11 = *(a1 + 112);
  if (v11 == -1)
  {
    v12 = BSLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 88);
      *buf = 138543362;
      v23 = v15;
      _os_log_error_impl(&dword_1A2D36000, v12, OS_LOG_TYPE_ERROR, " **** failed to open fd at tempPath=%{public}@", buf, 0xCu);
    }
  }

  else
  {
    close(v11);
  }

  v13 = *(a1 + 104);
  if (v13)
  {
    v14 = *(a1 + 96);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___workBlockGenerator_block_invoke_237;
    block[3] = &unk_1E76B7CB0;
    v20 = v13;
    v21 = *(a1 + 116);
    v19 = *(a1 + 64);
    dispatch_async(v14, block);
  }
}

uint64_t ___workBlockGenerator_block_invoke_4(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = [v2 CGImage];
  v4 = v3;
  if (v3)
  {
    if ((v1 & 4) == 0 && (v1 & 8) == 0 && !CGImageIsMask(v3) && (CGImageHasAlpha() & 1) == 0)
    {
      ColorSpace = CGImageGetColorSpace(v4);
      if (CGColorSpaceGetNumberOfComponents(ColorSpace) >= 3)
      {
        CGImageGetBitsPerComponent(v4);
      }
    }

    [v2 scale];
    valuePtr = v7;
    if (BSFloatIsOne())
    {
      v8 = 0;
    }

    else
    {
      v8 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCGFloatType, &valuePtr);
    }

    v9 = CPBitmapWriterCreateWithFileDescriptor();
    if (v9)
    {
      v6 = CPBitmapWriterAddImage();
      CPBitmapWriterFinalize();
      CFRelease(v9);
      if (!v8)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v6 = 0;
    if (v8)
    {
LABEL_16:
      CFRelease(v8);
    }
  }

  else
  {
    v5 = BSLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1A2D36000, v5, OS_LOG_TYPE_ERROR, "BSUIMappedImageCache: error serializing non-CGImage to CPBitmap", buf, 2u);
    }

    v6 = 0;
  }

LABEL_17:

  return v6;
}

id ___workBlockGenerator_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = _readCPBitmapImageFromPathWithOptions(a2);

  return v2;
}

void sub_1A2D3A950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = BSUIMappedImageCacheFuture;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A2D3AB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = BSUIScrollView;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void _setLayerFilters(void *a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v36 = a1;
  v33 = a2;
  if (qword_1ED61C820 != -1)
  {
    dispatch_once(&qword_1ED61C820, &__block_literal_global_164);
  }

  v34 = qword_1ED61C818;
  v30 = [v36 filters];
  v3 = [v30 count];
  if (v3 != [v33 count])
  {
    goto LABEL_12;
  }

  v4 = 0;
  v5 = 0;
  while (v4 < [v33 count])
  {
    v6 = [v30 objectAtIndexedSubscript:v4];
    v7 = [v33 objectAtIndexedSubscript:v4];
    v8 = [v7 name];

    if (!v8 || ([v6 name], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "name"), v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualObjects(), v10, v9, !v11) || (objc_msgSend(v6, "type"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "type"), v13 = objc_claimAutoreleasedReturnValue(), v14 = BSEqualObjects(), v13, v12, !v14))
    {

      goto LABEL_12;
    }

    v15 = [v7 type];
    v16 = [v34 objectForKeyedSubscript:v15];

    ++v4;
    v5 = 1;
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  if (v5)
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = v33;
    v32 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v32)
    {
      v31 = *v42;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v42 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v41 + 1) + 8 * i);
          v18 = [v17 type];
          v19 = [v34 objectForKeyedSubscript:v18];

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v20 = v19;
          v21 = [v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v21)
          {
            v22 = *v38;
            do
            {
              for (j = 0; j != v21; ++j)
              {
                if (*v38 != v22)
                {
                  objc_enumerationMutation(v20);
                }

                v24 = *(*(&v37 + 1) + 8 * j);
                v25 = MEMORY[0x1E696AEC0];
                v26 = [v17 name];
                v27 = [v25 stringWithFormat:@"filters.%@.%@", v26, v24];

                v28 = [v17 valueForKey:v24];
                [v36 setValue:v28 forKeyPath:v27];
              }

              v21 = [v20 countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v21);
          }
        }

        v32 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v32);
    }
  }

  else
  {
LABEL_12:
    [v36 setFilters:v33];
  }
}

float32x4_t _lerpColorMatrices(uint64_t a1, float32x2_t *a2, float32x4_t *a3, double a4)
{
  if (a4 == 0.0)
  {
    v4 = *a2[6].f32;
    *(a1 + 32) = *a2[4].f32;
    *(a1 + 48) = v4;
    *(a1 + 64) = *a2[8].f32;
    v6 = *a2->f32;
    result = *a2[2].f32;
LABEL_5:
    *a1 = v6;
    *(a1 + 16) = result;
    return result;
  }

  if (a4 == 1.0)
  {
    v7 = a3[3];
    *(a1 + 32) = a3[2];
    *(a1 + 48) = v7;
    *(a1 + 64) = a3[4];
    v6 = *a3;
    result = a3[1];
    goto LABEL_5;
  }

  v8 = a4;
  v9 = 1.0 - v8;
  v10 = vmulq_n_f32(*a3, v8);
  v11 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(*v10.f32), vcvtq_f64_f32(*a2), v9)), vmlaq_n_f64(vcvt_hight_f64_f32(v10), vcvt_hight_f64_f32(*a2->f32), v9));
  v12 = vmulq_n_f32(a3[1], v8);
  v13 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(*v12.f32), vcvtq_f64_f32(a2[2]), v9)), vmlaq_n_f64(vcvt_hight_f64_f32(v12), vcvt_hight_f64_f32(*a2[2].f32), v9));
  *a1 = v11;
  *(a1 + 16) = v13;
  v14 = vmulq_n_f32(a3[2], v8);
  v15 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(*v14.f32), vcvtq_f64_f32(a2[4]), v9)), vmlaq_n_f64(vcvt_hight_f64_f32(v14), vcvt_hight_f64_f32(*a2[4].f32), v9));
  v16 = vmulq_n_f32(a3[3], v8);
  v17 = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(*v16.f32), vcvtq_f64_f32(a2[6]), v9)), vmlaq_n_f64(vcvt_hight_f64_f32(v16), vcvt_hight_f64_f32(*a2[6].f32), v9));
  *(a1 + 32) = v15;
  *(a1 + 48) = v17;
  v18 = vmulq_n_f32(a3[4], v8);
  result = vcvt_hight_f32_f64(vcvt_f32_f64(vmlaq_n_f64(vcvtq_f64_f32(*v18.f32), vcvtq_f64_f32(a2[8]), v9)), vmlaq_n_f64(vcvt_hight_f64_f32(v18), vcvt_hight_f64_f32(*a2[8].f32), v9));
  *(a1 + 64) = result;
  return result;
}

id _transformUIColor(void *a1, float *a2)
{
  v11 = 0.0;
  v12 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  [a1 getRed:&v12 green:&v11 blue:&v10 alpha:&v9];
  v3 = v12;
  v4 = v11;
  v5 = v10;
  v6 = v9;
  v7 = [MEMORY[0x1E69DC888] colorWithRed:(a2[4] + ((((a2[1] * v4) + (v3 * *a2)) + (v5 * a2[2])) + (v6 * a2[3]))) green:(a2[9] + ((((a2[6] * v4) + (v3 * a2[5])) + (v5 * a2[7])) + (v6 * a2[8]))) blue:(a2[14] + ((((a2[11] * v4) + (v3 * a2[10])) + (v5 * a2[12])) + (v6 * a2[13]))) alpha:(a2[19] + ((((a2[16] * v4) + (v3 * a2[15])) + (v5 * a2[17])) + (v6 * a2[18])))];

  return v7;
}

float _curve(double a1, float a2, double a3, __n128 a4)
{
  v4 = a4.n128_u32[0];
  v6 = *&a3 - a2;
  v7 = fminf(fmaxf((*&a1 - a4.n128_f32[1]) / (*&a3 - a4.n128_f32[1]), 0.0), 1.0);
  LODWORD(a3) = a4.n128_u32[2];
  a4.n128_u32[0] = a4.n128_u32[3];
  LODWORD(a1) = v4;
  v8 = [MEMORY[0x1E69793D0] functionWithControlPoints:a1 :COERCE_DOUBLE(a4.n128_u32[1]) :a3 :a4.n128_f64[0]];
  *&v9 = v7;
  [v8 _solveForInput:v9];
  v11 = a2 + (v6 * v10);

  return v11;
}

uint64_t BSIntervalInterpolatorUIRubberBanding_block_invoke()
{
  BSIntervalMin();
  BSIntervalMax();
  result = BSFloatIsZero();
  if ((result & 1) == 0)
  {
    return BSIntervalMin();
  }

  return result;
}

uint64_t BSIntervalInterpolatorInvertUIRubberBanding_block_invoke_2()
{
  BSIntervalMin();
  BSIntervalMax();
  result = BSFloatIsZero();
  if ((result & 1) == 0)
  {
    return BSIntervalMin();
  }

  return result;
}

double BSUIConstrainValueToIntervalWithRubberBand(double a1)
{
  BSIntervalMin();
  v3 = v2;
  BSIntervalMax();
  if (v3 <= a1)
  {
    v6 = v4;
    if (v4 < a1)
    {
      BSIntervalInterpolate();
      return v6 + v7;
    }
  }

  else
  {
    BSIntervalInterpolate();
    return v3 - v5;
  }

  return a1;
}

double BSUIInvertRubberBandValueForInterval(double a1)
{
  BSIntervalMin();
  v3 = v2;
  BSIntervalMax();
  if (v3 <= a1)
  {
    v6 = v4;
    if (v4 < a1)
    {
      BSIntervalInterpolate();
      return v6 + v7;
    }
  }

  else
  {
    BSIntervalInterpolate();
    return v3 - v5;
  }

  return a1;
}

void sub_1A2D3F13C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_1A2D4013C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, objc_super a13)
{
  a13.super_class = BSUIMappedImageCache;
  [(_Unwind_Exception *)&a13 dealloc];
  _Unwind_Resume(a1);
}

void sub_1A2D405C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, void *a38)
{
  _Block_object_dispose((v42 - 200), 8);

  _Block_object_dispose((v42 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ____filenameForKeyAndExtension_block_invoke()
{
  v3 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"%/"];
  v0 = [v3 invertedSet];
  v1 = [v0 copy];
  v2 = qword_1ED61C7B8;
  qword_1ED61C7B8 = v1;
}

id ___workBlockGenerator_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [BSUIMappedSurfaceImage mappedSurfaceImageFromPath:a2 loadEagerly:(*(a1 + 32) >> 1) & 1];

  return v2;
}

id BSUISurfaceWithColorSpaceAndDrawBlock(uint64_t a1, CGColorSpace *a2, void *a3, double a4, double a5, double a6)
{
  v11 = a3;
  if (!v11)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"IOSurface *BSUISurfaceWithColorSpaceAndDrawBlock(CGSize, CGFloat, BSIOSurfaceOptions, CGColorSpaceRef, __strong BSBlock)"}];
    [v25 handleFailureInFunction:v26 file:@"BSUIImageUtilities.m" lineNumber:105 description:{@"Invalid parameter not satisfying: %@", @"drawBlock", 0}];
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__0;
  v12 = vcvtpd_u64_f64(a4 * a6);
  v13 = vcvtpd_u64_f64(a5 * a6);
  v45 = __Block_byref_object_dispose__0;
  v46 = 0;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v35 = __BSUISurfaceWithColorSpaceAndDrawBlock_block_invoke;
  v36 = &unk_1E76B7D28;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  v14 = v11;
  v37 = v14;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v31 = __BSUISurfaceWithColorSpaceAndDrawBlock_block_invoke_2;
  v32 = &unk_1E76B7D50;
  v33 = &v41;
  v29 = v34;
  v28 = v30;
  v47 = a1;
  v15 = [MEMORY[0x1E696CDE8] bs_IOSurfaceWithWidth:v12 height:v13 options:&v47];
  if (v15)
  {
    space = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
    if ((v47 & 2) != 0)
    {
      v16 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F110]);
    }

    else
    {
      v16 = CGColorSpaceRetain(space);
    }

    v17 = v16;
    if (a2)
    {
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      if (CGColorSpaceEqualToColorSpace())
      {
        a2 = space;
      }

      CGColorSpaceRelease(DeviceRGB);
    }

    if (!a2)
    {
      a2 = v17;
    }

    if (v17)
    {
      v19 = CGIOSurfaceContextCreate();
      v20 = v19;
      if (v19)
      {
        if (a1)
        {
          CGContextSaveGState(v19);
          v21 = [MEMORY[0x1E69DC888] blackColor];
          CGContextSetFillColorWithColor(v20, [v21 CGColor]);

          v49.size.width = v12;
          v49.size.height = v13;
          v49.origin.x = 0.0;
          v49.origin.y = 0.0;
          CGContextFillRect(v20, v49);
          CGContextRestoreGState(v20);
        }

        v35(v29, v20);
        CGContextFlush(v20);
        if (CGColorSpaceEqualToColorSpace())
        {
          v22 = 0;
        }

        else
        {
          v22 = a2;
        }

        v31(v28, v20, v22);
        CGContextRelease(v20);
      }

      CGColorSpaceRelease(v17);
    }

    CGColorSpaceRelease(space);
  }

  v23 = v42[5];
  _Block_object_dispose(&v41, 8);

  return v23;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __BSUISurfaceWithColorSpaceAndDrawBlock_block_invoke(uint64_t a1, CGContext *a2)
{
  v4 = *(a1 + 48);
  v3 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = v5;
  if (!a2)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void __BSUIImagePerformUIDrawBlock(CGContextRef, CGSize, CGFloat, __strong BSBlock)"}];
    [v7 handleFailureInFunction:v8 file:@"BSUIImageUtilities.m" lineNumber:75 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void __BSUIImagePerformUIDrawBlock(CGContextRef, CGSize, CGFloat, __strong BSBlock)"}];
    [v9 handleFailureInFunction:v10 file:@"BSUIImageUtilities.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"drawBlock"}];

    goto LABEL_3;
  }

  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  CGContextSaveGState(a2);
  CGContextTranslateCTM(a2, 0.0, v3 * v4);
  CGContextScaleCTM(a2, v3, -v3);
  CGContextGetCTM(&v11, a2);
  CGContextSetBaseCTM();
  UIGraphicsPushContext(a2);
  v6[2](v6);
  UIGraphicsPopContext();
  CGContextRestoreGState(a2);
}

void __BSUISurfaceWithColorSpaceAndDrawBlock_block_invoke_2(uint64_t a1, uint64_t a2, CGColorSpace *a3)
{
  Surface = CGIOSurfaceContextGetSurface();
  if (!Surface)
  {
    return;
  }

  v6 = Surface;
  CFRetain(Surface);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  buffer = *(*(*(a1 + 32) + 8) + 40);
  if (buffer)
  {
    if (a3)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void __BSUIIOSurfaceSetColorSpace(IOSurface *__strong, CGColorSpaceRef)"}];
    [v10 handleFailureInFunction:v11 file:@"BSUIImageUtilities.m" lineNumber:93 description:{@"Invalid parameter not satisfying: %@", @"surface"}];

    if (a3)
    {
LABEL_4:
      v9 = CGColorSpaceCopyPropertyList(a3);
      if (v9)
      {
        IOSurfaceSetValue(buffer, *MEMORY[0x1E696CEE0], v9);
        CFRelease(v9);
      }
    }
  }
}

id BSUISurfaceImageWithColorSpaceAndDrawBlock(uint64_t a1, CGColorSpace *a2, void *a3, double a4, double a5, double a6)
{
  v11 = a3;
  v12 = BSUISurfaceWithColorSpaceAndDrawBlock(a1, a2, v11, a4, a5, a6);
  if (v12)
  {
    v13 = [objc_alloc(MEMORY[0x1E69DCAB8]) _initWithIOSurface:v12 scale:0 orientation:a6];
    CFRelease(v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id BSLutIdentifierForName(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v5 = [@"luminance_reduced_" stringByAppendingString:v3];
  }

  else
  {
    v5 = v3;
  }

  v6 = v5;

  return v6;
}

void sub_1A2D432E8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A2D43BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = BSUIRelativeDateLabel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

BOOL __writeDataToFileDescriptor(int __fd, uint64_t a2, unint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  for (i = 0; i < a3; i += v7 & ~(v7 >> 63))
  {
    v7 = write(__fd, (a2 + i), a3 - i);
    if (v7 < 0)
    {
      break;
    }
  }

  return v7 >= 0;
}

void sub_1A2D45D48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1A2D46068(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a17, 8);
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose((v31 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2D46F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = BSUIDateLabelFactory;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t _BSUI_Private_IsN84()
{
  if (qword_1ED61C7E0 != -1)
  {
    dispatch_once(&qword_1ED61C7E0, &__block_literal_global_3);
  }

  return _MergedGlobals_11;
}

void sub_1A2D4A398(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1A2D4A598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_destroyWeak((v14 + 48));
  objc_destroyWeak((v15 - 56));
  _Unwind_Resume(a1);
}

void sub_1A2D4ACA0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1A2D4B218(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1A2D4B2AC(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_1A2D4C8A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = BSUIDefaultDateLabel;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1A2D4F71C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1A2D4F95C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void ___filterPropertyKeysByType_block_invoke()
{
  v11[3] = *MEMORY[0x1E69E9840];
  v10[0] = *MEMORY[0x1E6979880];
  v9 = *MEMORY[0x1E6979AC0];
  v0 = v9;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  v11[0] = v1;
  v10[1] = *MEMORY[0x1E6979D78];
  v8 = v0;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v8 count:1];
  v11[1] = v2;
  v10[2] = *MEMORY[0x1E6979928];
  v3 = *MEMORY[0x1E6979B48];
  v7[0] = *MEMORY[0x1E6979BA8];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v11[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v6 = qword_1ED61C818;
  qword_1ED61C818 = v5;
}

void sub_1A2D501A8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}