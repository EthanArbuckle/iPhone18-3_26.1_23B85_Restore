@interface ALAssetRepresentation
- (ALAssetOrientation)orientation;
- (ALAssetRepresentation)initWithManagedAsset:(id)asset sidecar:(id)sidecar extension:(id)extension library:(id)library;
- (BOOL)isValid;
- (CGImage)CGImageWithOptions:(id)options format:(unsigned __int16)format;
- (CGImage)_largeDisplayableImageForFormatID:(unsigned __int16)d;
- (CGImage)zoomableDisplayImage;
- (CGSize)dimensions;
- (NSDictionary)metadata;
- (NSString)UTI;
- (NSString)filename;
- (NSUInteger)getBytes:(uint8_t *)buffer fromOffset:(uint64_t)offset length:(NSUInteger)length error:(NSError *)error;
- (NSURL)url;
- (id)_imageData;
- (int)_fileDescriptor;
- (uint64_t)size;
- (void)dealloc;
@end

@implementation ALAssetRepresentation

- (NSString)filename
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__7;
  v10 = __Block_byref_object_dispose__8;
  v11 = 0;
  internal = [(ALAssetRepresentation *)self internal];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __33__ALAssetRepresentation_filename__block_invoke;
  v5[3] = &unk_278A07658;
  v5[4] = &v6;
  [(ALAssetRepresentationPrivate *)internal _performBlockAndWait:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __33__ALAssetRepresentation_filename__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    if (+[ALAssetsLibrary _linkedBefore7])
    {
      v7 = [a3 filename];
      goto LABEL_7;
    }

    v5 = a3;
  }

  v7 = [v5 originalFilename];
LABEL_7:
  *(*(*(a1 + 32) + 8) + 40) = v7;
  v8 = *(*(*(a1 + 32) + 8) + 40);

  return v8;
}

- (ALAssetOrientation)orientation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  internal = [(ALAssetRepresentation *)self internal];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__ALAssetRepresentation_orientation__block_invoke;
  v5[3] = &unk_278A07658;
  v5[4] = &v6;
  [(ALAssetRepresentationPrivate *)internal _performBlockAndWait:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __36__ALAssetRepresentation_orientation__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 orientation];
  result = PLImageOrientationFromExifOrientation();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (NSDictionary)metadata
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(ALAssetRepresentation *)self isValid])
  {
    if ([(ALAssetRepresentationPrivate *)[(ALAssetRepresentation *)self internal] _isImage])
    {
      [(ALAssetRepresentation *)self setIgnoreRead:1];
      _imageData = [(ALAssetRepresentation *)self _imageData];
      [(ALAssetRepresentation *)self setIgnoreRead:0];
      if (_imageData)
      {
        v5 = CGImageSourceCreateWithData(_imageData, 0);
        if (v5)
        {
          v6 = v5;
          v7 = CGImageSourceCopyPropertiesAtIndex(v5, 0, 0);
          if (v7)
          {
            v8 = v7;
            [(NSDictionary *)dictionary addEntriesFromDictionary:v7];
            CFRelease(v8);
          }

          CFRelease(v6);
        }
      }
    }
  }

  return dictionary;
}

- (NSURL)url
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__7;
  v11 = __Block_byref_object_dispose__8;
  v12 = 0;
  if ([(ALAssetRepresentation *)self isValid])
  {
    internal = [(ALAssetRepresentation *)self internal];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __28__ALAssetRepresentation_url__block_invoke;
    v6[3] = &unk_278A07658;
    v6[4] = &v7;
    [(ALAssetRepresentationPrivate *)internal _performBlockAndWait:v6];
  }

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

id __28__ALAssetRepresentation_url__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = [a2 assetURLForPhoto:a3 extension:a5];
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (CGImage)_largeDisplayableImageForFormatID:(unsigned __int16)d
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__7;
  v14 = __Block_byref_object_dispose__8;
  v15 = 0;
  internal = [(ALAssetRepresentation *)self internal];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__ALAssetRepresentation__largeDisplayableImageForFormatID___block_invoke;
  v8[3] = &unk_278A07680;
  dCopy = d;
  v8[4] = &v10;
  [(ALAssetRepresentationPrivate *)internal _performBlockAndWait:v8];
  cGImage = [v11[5] CGImage];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);
  return cGImage;
}

uint64_t __59__ALAssetRepresentation__largeDisplayableImageForFormatID___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [objc_msgSend(MEMORY[0x277D3AC00] "sharedAssetsSaver")];
  v5 = *(a1 + 40);
  [a3 uniformTypeIdentifier];
  result = PLCreateImageFromDataWithFormat();
  *(*(*(a1 + 32) + 8) + 40) = result;
  return result;
}

- (CGImage)zoomableDisplayImage
{
  v3 = [objc_msgSend(objc_msgSend(MEMORY[0x277D3B228] "defaultFormatChooser")];

  return [(ALAssetRepresentation *)self _largeDisplayableImageForFormatID:v3];
}

- (CGImage)CGImageWithOptions:(id)options format:(unsigned __int16)format
{
  if (![(ALAssetRepresentation *)self isValid])
  {
    return 0;
  }

  if ([(ALAssetRepresentationPrivate *)[(ALAssetRepresentation *)self internal] _isImage])
  {
    if ([(ALAssetRepresentation *)self _imageData])
    {
      [(ALAssetRepresentation *)self filename];
      PLGetSourceTypeHintFromFilename();
      v5 = PLCreateImageFromDataWithFormat();
      cGImage = [v5 CGImage];
      v7 = v5;
      return cGImage;
    }

    return 0;
  }

  if (![(ALAssetRepresentationPrivate *)[(ALAssetRepresentation *)self internal] _isVideo])
  {
    return 0;
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__8;
  v18 = 0;
  internal = [(ALAssetRepresentation *)self internal];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __51__ALAssetRepresentation_CGImageWithOptions_format___block_invoke;
  v12[3] = &unk_278A07658;
  v12[4] = &v13;
  [(ALAssetRepresentationPrivate *)internal _performBlockAndWait:v12];
  cGImage2 = [v14[5] CGImage];
  v11 = v14[5];
  _Block_object_dispose(&v13, 8);
  return cGImage2;
}

uint64_t __51__ALAssetRepresentation_CGImageWithOptions_format___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  PLPushPhotoLibraryClient();
  *(*(*(a1 + 32) + 8) + 40) = [a3 imageWithFormat:4007];

  return MEMORY[0x28219B488]();
}

- (id)_imageData
{
  v3 = [(ALAssetRepresentation *)self size];
  if (v3)
  {
    v4 = v3;
    if (_imageDataUsesMap == 1)
    {
      v5 = mmap(0, v3, 1, 1, [(ALAssetRepresentation *)self _fileDescriptor], 0);
      if (v5 != -1)
      {
        result = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytesNoCopy:v5 length:v4 deallocator:&__block_literal_global_9];
        if (result)
        {
          return result;
        }
      }
    }

    v7 = malloc_type_malloc(v4, 0x9119306DuLL);
    if (v4 == [(ALAssetRepresentation *)self getBytes:v7 fromOffset:0 length:v4 error:0])
    {
      v8 = MEMORY[0x277CBEA90];

      return [v8 dataWithBytesNoCopy:v7 length:v4];
    }

    free(v7);
  }

  v9 = MEMORY[0x277CBEA90];

  return [v9 data];
}

void __35__ALAssetRepresentation__imageData__block_invoke(int a1, void *a2, size_t a3)
{
  if (munmap(a2, a3))
  {
    NSLog(&cfstr_FailureUnmappi.isa, a2, a3);
  }
}

- (NSUInteger)getBytes:(uint8_t *)buffer fromOffset:(uint64_t)offset length:(NSUInteger)length error:(NSError *)error
{
  if (![(ALAssetRepresentation *)self isValid:buffer])
  {
    return 0;
  }

  _fileDescriptor = [(ALAssetRepresentation *)self _fileDescriptor];
  if (_fileDescriptor < 0)
  {
    return 0;
  }

  return pread(_fileDescriptor, buffer, length, offset);
}

- (uint64_t)size
{
  _fileDescriptor = [(ALAssetRepresentation *)self _fileDescriptor];
  if (_fileDescriptor < 0)
  {
    return 0;
  }

  memset(&v4, 0, sizeof(v4));
  if (fstat(_fileDescriptor, &v4))
  {
    return 0;
  }

  else
  {
    return v4.st_size;
  }
}

- (CGSize)dimensions
{
  v3 = MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  v17 = *MEMORY[0x277CBF3A8];
  if ([(ALAssetRepresentation *)self isValid])
  {
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v33[3] = 0x3FF0000000000000;
    v28 = 0;
    v29 = &v28;
    v30 = 0x3010000000;
    v31 = "";
    v32 = *v3;
    v23 = 0;
    v24 = &v23;
    v25 = 0x3010000000;
    v26 = "";
    v27 = v32;
    internal = [(ALAssetRepresentation *)self internal];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __35__ALAssetRepresentation_dimensions__block_invoke;
    v22[3] = &unk_278A07610;
    v22[4] = v33;
    v22[5] = &v28;
    v22[6] = &v23;
    [(ALAssetRepresentationPrivate *)internal _performBlockAndWait:v22];
    if ([(ALAssetRepresentationPrivate *)[(ALAssetRepresentation *)self internal] sidecar])
    {
      v7 = v29[2].f64[0];
      v6 = v29[2].f64[1];
      if (v7 != v17 || v6 != v4)
      {
        v9 = v24[2].f64[0];
        v8 = v24[2].f64[1];
        if (v9 != v17 || v8 != v4)
        {
          v10 = v8 == v6 && v9 == v7;
          v20 = 0;
          v21 = 0;
          v19 = 0;
          MEMORY[0x2383B6BD0]([(ALAssetRepresentation *)self metadata], &v21, &v20, &v19);
          [v21 intValue];
          if (PLExifOrientationSwapsWidthAndHeight())
          {
            [v19 doubleValue];
            v18 = v11;
            [v20 doubleValue];
          }

          else
          {
            [v20 doubleValue];
            v18 = v13;
            [v19 doubleValue];
          }

          v14.f64[0] = v18;
          v14.f64[1] = v12;
          if (!v10)
          {
            v14 = vdivq_f64(v14, vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(v29[2], v24[2]))));
          }

          v4 = v14.f64[1];
          v17 = v14.f64[0];
        }
      }
    }

    else
    {
      v4 = v24[2].f64[1];
      v17 = v24[2].f64[0];
    }

    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v28, 8);
    _Block_object_dispose(v33, 8);
  }

  v15 = v17;
  v16 = v4;
  result.height = v16;
  result.width = v15;
  return result;
}

double __35__ALAssetRepresentation_dimensions__block_invoke(void *a1, uint64_t a2, void *a3)
{
  *(*(a1[4] + 8) + 24) = [a3 orientation];
  v5 = [a3 originalWidth];
  v6 = [a3 originalHeight];
  v7 = [a3 width];
  v8 = [a3 height];
  v9 = *(*(a1[4] + 8) + 24);
  v10 = PLExifOrientationSwapsWidthAndHeight();
  v11 = *(a1[5] + 8);
  if (v10)
  {
    v12 = v6;
  }

  else
  {
    v12 = v5;
  }

  if (v10)
  {
    v13 = v5;
  }

  else
  {
    v13 = v6;
  }

  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  result = v7;
  v15 = *(a1[6] + 8);
  *(v15 + 32) = v7;
  *(v15 + 40) = v8;
  return result;
}

- (int)_fileDescriptor
{
  if ([(ALAssetRepresentation *)self isValid]&& PUTGetCurrentAccess() == 2 && (v3 = [(ALAssetRepresentation *)self url]) != 0)
  {
    v4 = v3;
    v5 = [ALAssetRepresentationPrivate _fileDescriptorForPersistentURL:v3];
    v7 = v5;
    if (v5 == -1)
    {
      [objc_msgSend(objc_msgSend(MEMORY[0x277D3B220] sharedSystemLibraryAssetsdClient];
      LODWORD(v5) = v7;
      if ((v7 & 0x80000000) == 0)
      {
        LODWORD(v5) = [ALAssetRepresentationPrivate _updateFileDescriptor:"_updateFileDescriptor:forPersistentURL:" forPersistentURL:?];
      }
    }
  }

  else
  {
    LODWORD(v5) = -1;
  }

  return v5;
}

- (NSString)UTI
{
  if ([(ALAssetRepresentation *)self isValid])
  {
    [(ALAssetRepresentationPrivate *)[(ALAssetRepresentation *)self internal] extension];
  }

  return 0;
}

- (BOOL)isValid
{
  internal = [(ALAssetRepresentation *)self internal];

  return [(ALAssetRepresentationPrivate *)internal isValid];
}

- (void)dealloc
{
  [(ALAssetRepresentation *)self setInternal:0];
  v3.receiver = self;
  v3.super_class = ALAssetRepresentation;
  [(ALAssetRepresentation *)&v3 dealloc];
}

- (ALAssetRepresentation)initWithManagedAsset:(id)asset sidecar:(id)sidecar extension:(id)extension library:(id)library
{
  v13.receiver = self;
  v13.super_class = ALAssetRepresentation;
  v10 = [(ALAssetRepresentation *)&v13 init];
  if (v10)
  {
    v11 = [[ALAssetRepresentationPrivate alloc] initWithManagedAsset:asset sidecar:sidecar extension:extension library:library];
    [(ALAssetRepresentation *)v10 setInternal:v11];
  }

  return v10;
}

@end