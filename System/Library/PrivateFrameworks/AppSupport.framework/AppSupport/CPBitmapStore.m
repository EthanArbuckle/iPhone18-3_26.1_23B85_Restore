@interface CPBitmapStore
- (CGImage)_copyAndStoreImageForKey:(id)a3 inGroup:(id)a4 withSize:(CGSize)a5 format:(unsigned __int8)a6 scale:(double)a7 fillMem:(id)a8 alternateCompletion:(id)a9;
- (CGImage)copyImageForKey:(id)a3 inGroup:(id)a4;
- (CPBitmapStore)initWithPath:(id)a3 version:(int)a4;
- (id)_versionPath;
- (id)cacheNumberForKey:(id)a3;
- (id)imageNameForKey:(id)a3 inGroup:(id)a4;
- (id)imagePath;
- (int)version;
- (unint64_t)imageCount;
- (void)dealloc;
- (void)openAndMmap:(id)a3 withInfo:(_img *)a4;
- (void)purge;
- (void)removeImagesInGroups:(id)a3 completion:(id)a4;
- (void)storeGrayscaleImageDataForKey:(id)a3 inGroup:(id)a4 withSize:(CGSize)a5 opaque:(BOOL)a6 scale:(double)a7 data:(id)a8;
@end

@implementation CPBitmapStore

- (CPBitmapStore)initWithPath:(id)a3 version:(int)a4
{
  v14.receiver = self;
  v14.super_class = CPBitmapStore;
  v6 = [(CPBitmapStore *)&v14 init];
  if (v6)
  {
    v7 = a3;
    v6->_path = v7;
    if (access([(NSString *)v7 fileSystemRepresentation], 4))
    {
      mkpath_np([-[CPBitmapStore imagePath](v6 "imagePath")], 0x1EDu);
    }

    v8 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    v6->_cache = v8;
    [(NSCache *)v8 setName:@"com.apple.cpbitmapstore"];
    [(NSCache *)v6->_cache setCountLimit:40];
    v9 = dispatch_queue_create("SerialQueueRemoveImagesBackground", 0);
    v6->_serialQueueRemoveImagesBackground = v9;
    global_queue = dispatch_get_global_queue(9, 0);
    dispatch_set_target_queue(v9, global_queue);
    v11 = dispatch_queue_create("SerialQueueRemoveImagesDefault", 0);
    v6->_serialQueueRemoveImagesDefault = v11;
    v12 = dispatch_get_global_queue(21, 0);
    dispatch_set_target_queue(v11, v12);
    v6->_version = a4;
  }

  return v6;
}

- (void)dealloc
{
  dispatch_release(self->_serialQueueRemoveImagesBackground);
  dispatch_release(self->_serialQueueRemoveImagesDefault);
  v3.receiver = self;
  v3.super_class = CPBitmapStore;
  [(CPBitmapStore *)&v3 dealloc];
}

- (id)imageNameForKey:(id)a3 inGroup:(id)a4
{
  result = malloc_type_malloc(0x32uLL, 0x100004077774924uLL);
  if (result)
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:result length:snprintf(result encoding:0x32uLL freeWhenDone:{"%lu%lu", objc_msgSend(a4, "hash"), objc_msgSend(a3, "hash")), 1, 1}];

    return v7;
  }

  return result;
}

- (id)cacheNumberForKey:(id)a3
{
  v3 = MEMORY[0x1E696AD98];
  v4 = [a3 hash];

  return [v3 numberWithUnsignedLong:v4];
}

- (void)openAndMmap:(id)a3 withInfo:(_img *)a4
{
  v5 = open([a3 fileSystemRepresentation], 256);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = v5;
    memset(&v19, 0, sizeof(v19));
    if (fstat(v5, &v19) < 0 || ((v19.st_mode & 0xF000) == 0x8000 ? (v7 = v19.st_nlink > 1u) : (v7 = 1), v7 || (v8 = mmap(0, v19.st_size, 1, 1, v6, 0), v8 == -1)))
    {
      close(v6);
    }

    else
    {
      v9 = v8;
      st_size = v19.st_size;
      close(v6);
      if (v9)
      {
        if (st_size >= 0x30 && *v9 == 1129333331 && v9[1] == 1)
        {
          a4->var1 = v9[2];
          v11 = *(v9 + 3);
          *&v12 = v11;
          *(&v12 + 1) = HIDWORD(v11);
          *&a4->var2 = v12;
          a4->var4 = v9[5];
          v13 = *(v9 + 24);
          a4->var5 = v13;
          a4->var6[0] = *(v9 + 25);
          a4->var6[1] = *(v9 + 26);
          a4->var6[2] = *(v9 + 27);
          a4->var6[3] = *(v9 + 28);
          if (v13 <= 5)
          {
            v14 = qword_195EA88F0[v13];
          }

          AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
          if (a4->var4 == AlignedBytesPerRow)
          {
            v17 = (*MEMORY[0x1E69E9AC8] + a4->var3 * AlignedBytesPerRow + 47) & -*MEMORY[0x1E69E9AC8];
            if (a4->var1 == v17 && v17 == st_size)
            {
              return v9 + 12;
            }
          }
        }

        munmap(v9, st_size);
      }
    }
  }

  return 0;
}

- (CGImage)copyImageForKey:(id)a3 inGroup:(id)a4
{
  v7 = [(CPBitmapStore *)self cacheNumberForKey:?];
  v8 = [(NSCache *)self->_cache objectForKey:v7];
  if (v8)
  {

    return CGImageRetain(v8);
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    *v13 = 0u;
    if (![(CPBitmapStore *)self findImageWithKey:a3 inGroup:a4 andInfo:v13])
    {
      return 0;
    }

    v10 = [(CPBitmapStore *)self imagePath];
    image_with_memory = -[CPBitmapStore openAndMmap:withInfo:](self, "openAndMmap:withInfo:", [v10 stringByAppendingPathComponent:v13[0]], v13);
    if (image_with_memory)
    {
      if ([(CPBitmapStore *)self lockOnRead])
      {
        mlock(image_with_memory - 48, v13[1]);
      }

      v12 = [(CPBitmapStore *)self memContentOffset];
      v13[1] -= v12;
      image_with_memory = create_image_with_memory(image_with_memory, v13, [(CPBitmapStore *)self memContentOffset]);
      if (image_with_memory)
      {
        [(NSCache *)self->_cache setObject:image_with_memory forKey:v7];
      }
    }

    return image_with_memory;
  }
}

- (CGImage)_copyAndStoreImageForKey:(id)a3 inGroup:(id)a4 withSize:(CGSize)a5 format:(unsigned __int8)a6 scale:(double)a7 fillMem:(id)a8 alternateCompletion:(id)a9
{
  if (a7 == 0.0)
  {
    return 0;
  }

  v36 = 0u;
  *v34 = 0u;
  v14 = vcvtpd_u64_f64(a5.height * a7);
  *&v35 = vcvtpd_u64_f64(a5.width * a7);
  *(&v35 + 1) = v14;
  BYTE8(v36) = a6;
  if (a6 <= 5u)
  {
    v15 = qword_195EA88F0[a6];
  }

  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v17 = AlignedBytesPerRow * v14;
  v18 = [(CPBitmapStore *)self memContentOffset:v34[0]];
  v19 = (v17 + v18 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  v34[1] = v19;
  *(&v36 + 9) = 0;
  v20 = [(CPBitmapStore *)self imagePath];
  v21 = strdup([objc_msgSend(v20 stringByAppendingPathComponent:{@"tmp.XXXXXXXX", "fileSystemRepresentation"}]);
  if (!v21)
  {
    return 0;
  }

  v22 = v21;
  v23 = mkstemp(v21);
  if (v23 < 0)
  {
    goto LABEL_16;
  }

  v24 = v23;
  if (fchmod(v23, 0x180u) < 0 || ftruncate(v24, v19) < 0)
  {
    close(v24);
    goto LABEL_15;
  }

  v25 = mmap(0, v19, 3, 1, v24, 0);
  close(v24);
  if (v25 == -1)
  {
LABEL_15:
    unlink(v22);
    goto LABEL_16;
  }

  if (!v25)
  {
LABEL_16:
    free(v22);
    return 0;
  }

  (*(a8 + 2))(a8, v25, v34);
  v34[0] = [(CPBitmapStore *)self imageNameForKey:a3 inGroup:a4];
  munmap(v25, v34[1]);
  v26 = [v20 stringByAppendingPathComponent:v34[0]];
  v27 = [v26 fileSystemRepresentation];
  rename(v22, v27, v28);
  v30 = v29;
  free(v22);
  if (v30 < 0 || ![(CPBitmapStore *)self saveImageWithKey:a3 inGroup:a4 andInfo:v34])
  {
    return 0;
  }

  if (a9)
  {
    (*(a9 + 2))(a9);
    return 0;
  }

  image_with_memory = [(CPBitmapStore *)self openAndMmap:v26 withInfo:v34];
  if (image_with_memory)
  {
    v33 = [(CPBitmapStore *)self memContentOffset];
    v34[1] -= v33;
    image_with_memory = create_image_with_memory(image_with_memory, v34, [(CPBitmapStore *)self memContentOffset]);
    if (image_with_memory)
    {
      [(NSCache *)self->_cache setObject:image_with_memory forKey:[(CPBitmapStore *)self cacheNumberForKey:a3]];
    }
  }

  return image_with_memory;
}

void __76__CPBitmapStore_copyAndStoreImageForKey_inGroup_withSize_opaque_scale_draw___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) memContentOffset];
  if (v6 >= 1)
  {
    *a2 = 0x143504253;
    *(a2 + 8) = vuzp1q_s32(*(a3 + 8), *(a3 + 24));
    *(a2 + 24) = *(a3 + 40);
    *(a2 + 25) = *(a3 + 41);
    *(a2 + 26) = *(a3 + 42);
    *(a2 + 27) = *(a3 + 43);
    *(a2 + 28) = *(a3 + 44);
  }

  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v9 = *(a3 + 40);
  if (v9 < 3)
  {
    DeviceRGB = CGColorSpaceCreateDeviceRGB();
LABEL_7:
    v11 = DeviceRGB;
    v9 = *(a3 + 40);
    goto LABEL_8;
  }

  if (v9 - 3 < 2)
  {
    DeviceRGB = CGColorSpaceCreateDeviceGray();
    goto LABEL_7;
  }

  v11 = 0;
LABEL_8:
  v12 = *(a3 + 16);
  v13 = *(a3 + 24);
  if (v9 > 5)
  {
    v14 = 0;
  }

  else
  {
    v14 = qword_195EA8920[v9];
  }

  v15 = (a2 + v6);
  v16 = *(a3 + 32);
  v17 = format_bitmapinfo(v9);
  v18 = CGBitmapContextCreate(v15, v12, v13, v14, v16, v11, v17);
  CGColorSpaceRelease(v11);
  CGContextTranslateCTM(v18, 0.0, *(a3 + 24));
  CGContextScaleCTM(v18, v7, -v7);
  CGAffineTransformMakeScale(&v19, v7, -v7);
  CGContextSetBaseCTM();
  (*(v8 + 16))(v8, v18);
  CGContextRelease(v18);
}

void __55__CPBitmapStore_storeImageForKey_inGroup_opaque_image___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) memContentOffset];
  if (v6 >= 1)
  {
    *a2 = 0x143504253;
    *(a2 + 8) = vuzp1q_s32(*(a3 + 8), *(a3 + 24));
    *(a2 + 24) = *(a3 + 40);
    *(a2 + 25) = *(a3 + 41);
    *(a2 + 26) = *(a3 + 42);
    *(a2 + 27) = *(a3 + 43);
    *(a2 + 28) = *(a3 + 44);
  }

  DataProvider = CGImageGetDataProvider(*(a1 + 40));
  if (DataProvider)
  {
    v8 = CGDataProviderCopyData(DataProvider);
    if (v8)
    {
      v9 = v8;
      v10 = (a2 + v6);
      BytePtr = CFDataGetBytePtr(v8);
      Length = CFDataGetLength(v9);
      memcpy(v10, BytePtr, Length);

      CFRelease(v9);
    }
  }
}

uint64_t __55__CPBitmapStore_storeImageForKey_inGroup_opaque_image___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) cacheNumberForKey:*(a1 + 40)];

  return [v1 setObject:v2 forKey:v3];
}

void *__73__CPBitmapStore_storeImageDataForKey_inGroup_withSize_opaque_scale_data___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) memContentOffset];
  if (v6 >= 1)
  {
    *a2 = 0x143504253;
    *(a2 + 8) = vuzp1q_s32(*(a3 + 8), *(a3 + 24));
    *(a2 + 24) = *(a3 + 40);
    *(a2 + 25) = *(a3 + 41);
    *(a2 + 26) = *(a3 + 42);
    *(a2 + 27) = *(a3 + 43);
    *(a2 + 28) = *(a3 + 44);
  }

  v7 = (a2 + v6);
  v8 = [*(a1 + 40) bytes];
  v9 = [*(a1 + 40) length];

  return memcpy(v7, v8, v9);
}

- (void)storeGrayscaleImageDataForKey:(id)a3 inGroup:(id)a4 withSize:(CGSize)a5 opaque:(BOOL)a6 scale:(double)a7 data:(id)a8
{
  if (a8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __82__CPBitmapStore_storeGrayscaleImageDataForKey_inGroup_withSize_opaque_scale_data___block_invoke;
    v9[3] = &unk_1E74510D0;
    v9[4] = self;
    v9[5] = a8;
    if (a6)
    {
      v8 = 4;
    }

    else
    {
      v8 = 3;
    }

    [(CPBitmapStore *)self _copyAndStoreImageForKey:a3 inGroup:a4 withSize:v8 format:v9 scale:&__block_literal_global_18 fillMem:a5.width alternateCompletion:a5.height, a7];
  }
}

unint64_t __82__CPBitmapStore_storeGrayscaleImageDataForKey_inGroup_withSize_opaque_scale_data___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) memContentOffset];
  if (v6 >= 1)
  {
    *a2 = 0x143504253;
    *(a2 + 8) = vuzp1q_s32(*(a3 + 8), *(a3 + 24));
    *(a2 + 24) = *(a3 + 40);
    *(a2 + 25) = *(a3 + 41);
    *(a2 + 26) = *(a3 + 42);
    *(a2 + 27) = *(a3 + 43);
    *(a2 + 28) = *(a3 + 44);
  }

  v7 = 4 * *(a3 + 16);
  AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
  v9 = 2 * *(a3 + 16);
  v10 = CGBitmapGetAlignedBytesPerRow();
  v11 = [*(a1 + 40) bytes];
  result = [*(a1 + 40) length];
  if (result >= 4)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = *(a3 + 16);
    do
    {
      if (v15 + 1 == v16)
      {
        v17 = ((AlignedBytesPerRow - v7) >> 2);
      }

      else
      {
        v17 = 0;
      }

      v18 = v13 + v17;
      v19 = *(v11 + 4 * v13 + 2);
      if (v15 + 1 == v16)
      {
        v20 = ((v10 - v9) >> 1);
      }

      else
      {
        v20 = 0;
      }

      v21 = v14 + v20;
      *(a2 + v6 + 2 * v14) = v19;
      if (v15 + 1 == v16)
      {
        v15 = 0;
      }

      else
      {
        ++v15;
      }

      v14 = v21 + 1;
      v13 = v18 + 1;
    }

    while (v18 + 1 < result >> 2);
  }

  return result;
}

uint64_t __85__CPBitmapStore_storeImageDataForKey_inGroup_withSize_format_formatColor_scale_data___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [*(a1 + 32) memContentOffset];
  if (v6 >= 1)
  {
    if (a3)
    {
      v7 = *(a1 + 48);
      if (v7)
      {
        if (*(a3 + 40) == 5)
        {
          NumberOfComponents = CGColorGetNumberOfComponents(*(a1 + 48));
          Components = CGColorGetComponents(v7);
          if (NumberOfComponents)
          {
            v10 = (a3 + 41);
            do
            {
              v11 = *Components++;
              *v10++ = (v11 * 255.0);
              --NumberOfComponents;
            }

            while (NumberOfComponents);
          }
        }
      }
    }

    *a2 = 0x143504253;
    *(a2 + 8) = vuzp1q_s32(*(a3 + 8), *(a3 + 24));
    *(a2 + 24) = *(a3 + 40);
    *(a2 + 25) = *(a3 + 41);
    *(a2 + 26) = *(a3 + 42);
    *(a2 + 27) = *(a3 + 43);
    *(a2 + 28) = *(a3 + 44);
  }

  v12 = *(a1 + 40);
  v13 = [v12 length];

  return [v12 getBytes:a2 + v6 length:v13];
}

- (void)removeImagesInGroups:(id)a3 completion:(id)a4
{
  if ([a3 count])
  {
    v7 = [(CPBitmapStore *)self imagePath];
    v8 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
    v9 = [a4 copy];
    serialQueueRemoveImagesBackground = self->_serialQueueRemoveImagesBackground;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__CPBitmapStore_removeImagesInGroups_completion___block_invoke;
    block[3] = &unk_1E7451148;
    block[4] = a3;
    block[5] = v8;
    block[6] = v7;
    block[7] = self;
    block[8] = v9;
    dispatch_async(serialQueueRemoveImagesBackground, block);
  }
}

void __49__CPBitmapStore_removeImagesInGroups_completion___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = *(a1 + 32);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __49__CPBitmapStore_removeImagesInGroups_completion___block_invoke_2;
  v33[3] = &unk_1E7451120;
  v33[4] = v2;
  [v3 enumerateObjectsUsingBlock:v33];
  v4 = dispatch_group_create();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = *(a1 + 40);
  v22 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v22)
  {
    v21 = *v30;
    do
    {
      v5 = 0;
      do
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v5;
        v6 = *(*(&v29 + 1) + 8 * v5);
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v7 = [v2 countByEnumeratingWithState:&v25 objects:v34 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v26;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v26 != v9)
              {
                objc_enumerationMutation(v2);
              }

              v11 = *(*(&v25 + 1) + 8 * i);
              if ([objc_msgSend(v6 "lastPathComponent")])
              {
                v12 = [v6 isAbsolutePath];
                v13 = v6;
                if ((v12 & 1) == 0)
                {
                  v13 = [*(a1 + 48) stringByAppendingPathComponent:v6];
                }

                unlink([v13 fileSystemRepresentation]);
                v14 = [objc_msgSend(v6 "lastPathComponent")];
                v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{strtoull(objc_msgSend(v14, "UTF8String"), 0, 10)}];
                v16 = *(a1 + 56);
                v17 = *(v16 + 56);
                block[0] = MEMORY[0x1E69E9820];
                block[1] = 3221225472;
                block[2] = __49__CPBitmapStore_removeImagesInGroups_completion___block_invoke_3;
                block[3] = &unk_1E7450C88;
                block[4] = v16;
                block[5] = v15;
                dispatch_group_async(v4, v17, block);
              }
            }

            v8 = [v2 countByEnumeratingWithState:&v25 objects:v34 count:16];
          }

          while (v8);
        }

        v5 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v22);
  }

  v18 = *(a1 + 64);
  if (v18)
  {
    dispatch_group_notify(v4, *(*(a1 + 56) + 48), v18);
  }

  dispatch_release(v4);
  v19 = *MEMORY[0x1E69E9840];
}

char *__49__CPBitmapStore_removeImagesInGroups_completion___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  result = malloc_type_malloc(0x32uLL, 0x100004077774924uLL);
  if (result)
  {
    result = [*(a1 + 32) addObject:{objc_msgSend(objc_alloc(MEMORY[0x1E696AEC0]), "initWithBytesNoCopy:length:encoding:freeWhenDone:", result, snprintf(result, 0x32uLL, "%lu", objc_msgSend(a2, "hash")), 1, 1)}];
    *a3 = 0;
  }

  return result;
}

- (id)imagePath
{
  result = self->_imagePath;
  if (!result)
  {
    result = [(NSString *)self->_path stringByAppendingPathComponent:@"images"];
    self->_imagePath = result;
  }

  return result;
}

- (unint64_t)imageCount
{
  v2 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];

  return [v2 count];
}

- (void)purge
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  path = self->_path;

  [v3 removeItemAtPath:path error:0];
}

- (id)_versionPath
{
  result = self->_versionPath;
  if (!result)
  {
    result = [(NSString *)self->_path stringByAppendingPathComponent:@"version"];
    self->_versionPath = result;
  }

  return result;
}

- (int)version
{
  if (![objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
  {
    return -1;
  }

  v5 = 0;
  v3 = [MEMORY[0x1E696AEC0] stringWithContentsOfFile:-[CPBitmapStore _versionPath](self encoding:"_versionPath") error:{4, &v5}];
  if (v5)
  {
    return -1;
  }

  result = [v3 intValue];
  self->_version = result;
  return result;
}

@end