@interface VNFaceSegments
+ (NSDictionary)faceSegmentIndexToFlagMap;
+ (NSDictionary)faceSegmentToSegmentMaskGrayLevelDictionary;
- (BOOL)isEqual:(id)equal;
- (CGRect)_normalizeRegion:(CGRect)region;
- (CGRect)boundingBox;
- (VNFaceSegments)initWithCoder:(id)coder;
- (VNFaceSegments)initWithRequestRevision:(unint64_t)revision outputBufferWidth:(unint64_t)width outputBufferHeight:(unint64_t)height outputBufferData:(id)data numberOfFaceSegments:(unint64_t)segments faceSegmentBBox:(CGRect)box faceSegmentLabelToProbabilityMap:(id)map;
- (__CVBuffer)createMaskImageOfFaceSegments:(unint64_t)segments error:(id *)error;
- (__CVBuffer)createProbabilityImageOfFaceSegment:(unint64_t)segment region:(CGRect)region normalize:(BOOL)normalize error:(id *)error;
- (id).cxx_construct;
- (unint64_t)hash;
- (vImage_Buffer)_makeFaceSegmentProbabilityDataImageBuffer:(SEL)buffer rect:(id)rect;
- (void)_calculateProbabilityNormalSumsForRect:(CGRect)rect;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VNFaceSegments

- (id).cxx_construct
{
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 13) = 0;
  return self;
}

- (CGRect)boundingBox
{
  x = self->_boundingBox.origin.x;
  y = self->_boundingBox.origin.y;
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_calculateProbabilityNormalSumsForRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v25 = *MEMORY[0x1E69E9840];
  p_probabilityNormSums = &self->_probabilityNormSums;
  if (self->_probabilityNormSums.__begin_ == self->_probabilityNormSums.__end_)
  {
    v8 = self->_outputBufferHeight * self->_outputBufferWidth;
    v23 = 2143289344;
    std::vector<float>::resize(p_probabilityNormSums, v8, &v23, *&rect.origin.x);
  }

  numberOfFaceSegments = self->_numberOfFaceSegments;
  if (numberOfFaceSegments)
  {
    if (!(numberOfFaceSegments >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned char const*,unsigned long>>>(numberOfFaceSegments);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  memset(v22, 0, sizeof(v22));
  v10 = +[VNFaceSegments faceSegmentToSegmentMaskGrayLevelDictionary];
  allKeys = [v10 allKeys];

  if ([allKeys countByEnumeratingWithState:v22 objects:v24 count:16])
  {
    v12 = [(NSDictionary *)self->_faceSegmentLabelToProbabilityMap objectForKeyedSubscript:**(&v22[0] + 1)];
    v13 = [v12 objectForKeyedSubscript:@"data"];
    v14 = v13;
    [v13 bytes];

    v15 = [v12 objectForKeyedSubscript:@"rowBytes"];
    [v15 unsignedIntegerValue];

    std::__allocate_at_least[abi:ne200100]<std::allocator<std::tuple<unsigned char const*,unsigned long>>>(1uLL);
  }

  if (height >= 1)
  {
    outputBufferWidth = self->_outputBufferWidth;
    v17 = y;
    v18 = *v21 + 4 * outputBufferWidth * v17;
    do
    {
      v19 = x;
      if (width >= 1)
      {
        do
        {
          ++v19;
        }

        while (v19 < x + width);
      }

      v18 += 4 * outputBufferWidth;
      ++v17;
    }

    while (v17 < y + height);
  }
}

- (vImage_Buffer)_makeFaceSegmentProbabilityDataImageBuffer:(SEL)buffer rect:(id)rect
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  rectCopy = rect;
  v10 = [rectCopy objectForKeyedSubscript:@"rowBytes"];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  v12 = [rectCopy objectForKeyedSubscript:@"data"];
  v13 = ([v12 bytes] + unsignedIntegerValue * y + 4 * x);

  retstr->data = v13;
  retstr->height = height;
  retstr->width = width;
  retstr->rowBytes = unsignedIntegerValue;

  return result;
}

- (CGRect)_normalizeRegion:(CGRect)region
{
  width = self->_boundingBox.size.width;
  height = self->_boundingBox.size.height;
  v5 = (region.origin.x - self->_boundingBox.origin.x) / (1.0 / width);
  v6 = (region.origin.y - self->_boundingBox.origin.y) / (1.0 / height);
  v7 = region.size.width / width;
  v8 = region.size.height / height;
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (__CVBuffer)createProbabilityImageOfFaceSegment:(unint64_t)segment region:(CGRect)region normalize:(BOOL)normalize error:(id *)error
{
  normalizeCopy = normalize;
  height = region.size.height;
  width = region.size.width;
  y = region.origin.y;
  x = region.origin.x;
  faceSegmentLabelToProbabilityMap = self->_faceSegmentLabelToProbabilityMap;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:segment];
  v15 = [(NSDictionary *)faceSegmentLabelToProbabilityMap objectForKeyedSubscript:v14];

  if (!v15)
  {
    if (error)
    {
      v39 = [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot create CVPixelBuffer object: faceSegment parameter is out of range"];
LABEL_16:
      v27 = 0;
      *error = v39;
      goto LABEL_23;
    }

LABEL_22:
    v27 = 0;
    goto LABEL_23;
  }

  v49.origin.x = x;
  v49.origin.y = y;
  v49.size.width = width;
  v49.size.height = height;
  if (!CGRectContainsRect(self->_boundingBox, v49))
  {
    if (error)
    {
      v39 = [VNError errorForInvalidArgumentWithLocalizedDescription:@"Cannot create CVPixelBuffer object: region parameter is out of range"];
      goto LABEL_16;
    }

    goto LABEL_22;
  }

  [(VNFaceSegments *)self _normalizeRegion:x, y, width, height];
  outputBufferHeight = self->_outputBufferHeight;
  outputBufferWidth = self->_outputBufferWidth;
  v21 = v20 * outputBufferWidth;
  v23 = v22 * outputBufferWidth;
  v24 = (1.0 - v16 - v17) * outputBufferHeight;
  v25 = v17 * outputBufferHeight;
  memset(&src, 0, sizeof(src));
  [(VNFaceSegments *)self _makeFaceSegmentProbabilityDataImageBuffer:v15 rect:v20 * outputBufferWidth, v24, v22 * outputBufferWidth, v25];
  v26 = [(VNFaceSegments *)self _createFaceSegmentProabilityDataPixelBufferWithSize:error error:v23, v25];
  v27 = v26;
  if (v26)
  {
    CVPixelBufferLockBaseAddress(v26, 0);
    if (normalizeCopy)
    {
      [(VNFaceSegments *)self _calculateProbabilityNormalSumsForRect:v21, v24, v23, v25];
      rowBytes = src.rowBytes;
      data = src.data;
      BytesPerRow = CVPixelBufferGetBytesPerRow(v27);
      BaseAddress = CVPixelBufferGetBaseAddress(v27);
      if (v25 < 1)
      {
        v38 = 0;
      }

      else
      {
        v30 = BaseAddress;
        errorCopy = error;
        v43 = v15;
        v44 = v23;
        v31 = v21 + v23;
        v32 = v24;
        v33 = 4 * v32;
        do
        {
          if (v44 >= 1)
          {
            v34 = 0;
            v35 = self->_probabilityNormSums.__begin_ + self->_outputBufferWidth * v33;
            v36 = v21;
            do
            {
              v37 = *&v35[4 * v36];
              *&v30[v34] = expf(*&data[v34]) / v37;
              ++v36;
              v34 += 4;
            }

            while (v36 < v31);
          }

          v30 += BytesPerRow;
          data += rowBytes;
          ++v32;
          v33 += 4;
        }

        while (v32 < v24 + v25);
        v38 = 0;
        error = errorCopy;
        v15 = v43;
      }
    }

    else
    {
      dest.data = CVPixelBufferGetBaseAddress(v27);
      dest.height = CVPixelBufferGetHeight(v27);
      dest.width = CVPixelBufferGetWidth(v27);
      dest.rowBytes = CVPixelBufferGetBytesPerRow(v27);
      v38 = vImageCopyBuffer(&src, &dest, 4uLL, 0);
    }

    CVPixelBufferUnlockBaseAddress(v27, 0);
    if (v38)
    {
      if (error)
      {
        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot copy face segment probability map. Error = %d", v38];
        *error = [VNError errorForInternalErrorWithLocalizedDescription:v40];
      }

      goto LABEL_22;
    }
  }

LABEL_23:

  return v27;
}

- (__CVBuffer)createMaskImageOfFaceSegments:(unint64_t)segments error:(id *)error
{
  segmentsCopy = segments;
  selfCopy = self;
  errorCopy = error;
  v5 = [VNCVPixelBufferHelper createPixelBufferUsingIOSurfaceWithWidth:[(VNFaceSegments *)self outputBufferHeight] height:1278226488 pixelFormatType:error error:?];
  v6 = v5;
  if (v5)
  {
    CVPixelBufferLockBaseAddress(v5, 0);
    BaseAddress = CVPixelBufferGetBaseAddress(v6);
    Height = CVPixelBufferGetHeight(v6);
    Width = CVPixelBufferGetWidth(v6);
    BytesPerRow = CVPixelBufferGetBytesPerRow(v6);
    v29 = BaseAddress;
    bzero(BaseAddress, BytesPerRow * Height);
    v32 = +[VNFaceSegments faceSegmentIndexToFlagMap];
    numberOfFaceSegments = [(VNFaceSegments *)selfCopy numberOfFaceSegments];
    if (numberOfFaceSegments)
    {
      v12 = 0;
      v13 = BytesPerRow - Width;
      v30 = numberOfFaceSegments;
      while (1)
      {
        v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v12, errorCopy}];
        v15 = [v32 objectForKeyedSubscript:v14];

        if (!v15)
        {
          break;
        }

        if (([v15 intValue] & segmentsCopy) != 0)
        {
          v33 = +[VNFaceSegments faceSegmentToSegmentMaskGrayLevelDictionary];
          v16 = selfCopy;
          outputBufferData = [(VNFaceSegments *)selfCopy outputBufferData];
          v18 = v6;
          bytes = [outputBufferData bytes];

          v20 = [v33 objectForKey:v15];
          unsignedCharValue = [v20 unsignedCharValue];

          v6 = v18;
          selfCopy = v16;
          if (Height)
          {
            v22 = 0;
            v23 = v29;
            do
            {
              v24 = bytes;
              for (i = Width; i; --i)
              {
                v26 = *v24++;
                if (v12 == v26)
                {
                  *v23 = unsignedCharValue;
                }

                ++v23;
              }

              v23 += v13;
              ++v22;
              bytes += Width;
            }

            while (v22 != Height);
          }
        }

        if (++v12 == v30)
        {
          goto LABEL_15;
        }
      }

      if (errorCopy)
      {
        *errorCopy = [VNError errorForInternalErrorWithLocalizedDescription:@"Cannot create CVPixelBuffer object: faceSegments is out of range"];
      }

      CVPixelBufferUnlockBaseAddress(v6, 0);
      v6 = 0;
    }

    else
    {
LABEL_15:
      CVPixelBufferUnlockBaseAddress(v6, 0);
    }
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v27 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      requestRevision = [(VNFaceSegments *)self requestRevision];
      if (requestRevision == [(VNFaceSegments *)v5 requestRevision]&& (v7 = [(VNFaceSegments *)self outputBufferWidth], v7 == [(VNFaceSegments *)v5 outputBufferWidth]) && (v8 = [(VNFaceSegments *)self outputBufferHeight], v8 == [(VNFaceSegments *)v5 outputBufferHeight]) && ([(VNFaceSegments *)self outputBufferData], v9 = objc_claimAutoreleasedReturnValue(), [(VNFaceSegments *)v5 outputBufferData], v10 = objc_claimAutoreleasedReturnValue(), v11 = VisionCoreEqualOrNilObjects(), v10, v9, (v11 & 1) != 0) && (v12 = [(VNFaceSegments *)self numberOfFaceSegments], v12 == [(VNFaceSegments *)v5 numberOfFaceSegments]) && ([(VNFaceSegments *)self boundingBox], v14 = v13, v16 = v15, v18 = v17, v20 = v19, [(VNFaceSegments *)v5 boundingBox], v30.origin.x = v21, v30.origin.y = v22, v30.size.width = v23, v30.size.height = v24, v29.origin.x = v14, v29.origin.y = v16, v29.size.width = v18, v29.size.height = v20, CGRectEqualToRect(v29, v30)))
      {
        faceSegmentLabelToProbabilityMap = [(VNFaceSegments *)self faceSegmentLabelToProbabilityMap];
        faceSegmentLabelToProbabilityMap2 = [(VNFaceSegments *)v5 faceSegmentLabelToProbabilityMap];
        v27 = VisionCoreEqualOrNilObjects();
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
    }
  }

  return v27;
}

- (unint64_t)hash
{
  outputBufferData = [(VNFaceSegments *)self outputBufferData];
  v4 = [outputBufferData hash];

  faceSegmentLabelToProbabilityMap = [(VNFaceSegments *)self faceSegmentLabelToProbabilityMap];
  v6 = [faceSegmentLabelToProbabilityMap hash] ^ __ROR8__(v4, 51);

  v7 = [(VNFaceSegments *)self numberOfFaceSegments]^ __ROR8__([(VNFaceSegments *)self outputBufferHeight]^ __ROR8__([(VNFaceSegments *)self outputBufferWidth]^ __ROR8__([(VNFaceSegments *)self requestRevision]^ __ROR8__(v6, 51), 51), 51), 51);
  [(VNFaceSegments *)self boundingBox];
  v12 = v11;
  if (v11 == 0.0)
  {
    v12 = 0.0;
  }

  v13 = v8;
  if (v8 == 0.0)
  {
    v13 = 0.0;
  }

  v14 = *&v13 ^ __ROR8__(*&v12, 51);
  v15 = v9;
  if (v9 == 0.0)
  {
    v15 = 0.0;
  }

  v16 = *&v15 ^ __ROR8__(v14, 51);
  v17 = v10;
  if (v10 == 0.0)
  {
    v17 = 0.0;
  }

  return *&v17 ^ __ROR8__(v16, 51) ^ __ROR8__(v7, 51);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:0];
  [coderCopy encodeObject:v4 forKey:@"VNFaceSegmentsVersion"];

  [coderCopy encodeInteger:self->_requestRevision forKey:@"fsRev"];
  [coderCopy encodeInteger:self->_outputBufferWidth forKey:@"fsWidth"];
  [coderCopy encodeInteger:self->_outputBufferHeight forKey:@"fsHeight"];
  [coderCopy encodeObject:self->_outputBufferData forKey:@"fsData"];
  [coderCopy encodeInteger:self->_numberOfFaceSegments forKey:@"fsNumOfSgmnts"];
  x = self->_boundingBox.origin.x;
  *&x = x;
  [coderCopy encodeFloat:@"fsBBoxOrgX" forKey:x];
  y = self->_boundingBox.origin.y;
  *&y = y;
  [coderCopy encodeFloat:@"fsBBoxOrgY" forKey:y];
  width = self->_boundingBox.size.width;
  *&width = width;
  [coderCopy encodeFloat:@"fsBBoxSzW" forKey:width];
  height = self->_boundingBox.size.height;
  *&height = height;
  [coderCopy encodeFloat:@"fsBBoxSzH" forKey:height];
  [coderCopy encodeObject:self->_faceSegmentLabelToProbabilityMap forKey:@"fsLblToProbMap"];
}

- (VNFaceSegments)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"VNFaceSegmentsVersion"];
  v6 = v5;
  if (v5 && ![v5 unsignedIntValue])
  {
    v8 = [coderCopy decodeIntegerForKey:@"fsRev"];
    v9 = [coderCopy decodeIntegerForKey:@"fsWidth"];
    v10 = [coderCopy decodeIntegerForKey:@"fsHeight"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fsData"];
    v12 = [coderCopy decodeIntegerForKey:@"fsNumOfSgmnts"];
    faceSegmentsPixelSizeInBytes = [objc_opt_class() faceSegmentsPixelSizeInBytes];
    if (v10 * v9 * faceSegmentsPixelSizeInBytes == [v11 length])
    {
      [coderCopy decodeFloatForKey:@"fsBBoxOrgX"];
      v15 = v14;
      [coderCopy decodeFloatForKey:@"fsBBoxOrgY"];
      v17 = v16;
      [coderCopy decodeFloatForKey:@"fsBBoxSzW"];
      v19 = v18;
      v30 = v12;
      v31 = v8;
      [coderCopy decodeFloatForKey:@"fsBBoxSzH"];
      v21 = v20;
      v22 = MEMORY[0x1E695DFD8];
      v23 = objc_opt_class();
      v24 = objc_opt_class();
      v25 = objc_opt_class();
      v26 = [v22 setWithObjects:{v23, v24, v25, objc_opt_class(), 0}];
      v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"fsLblToProbMap"];

      self = [(VNFaceSegments *)self initWithRequestRevision:v31 outputBufferWidth:v9 outputBufferHeight:v10 outputBufferData:v11 numberOfFaceSegments:v30 faceSegmentBBox:v27 faceSegmentLabelToProbabilityMap:v15, v17, v19, v21];
      selfCopy = self;
    }

    else
    {
      v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Data integrity check failed when un-archiving an object of type: %@", objc_opt_class()];
      v28 = [VNError errorForInternalErrorWithLocalizedDescription:v27];
      [coderCopy failWithError:v28];

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (VNFaceSegments)initWithRequestRevision:(unint64_t)revision outputBufferWidth:(unint64_t)width outputBufferHeight:(unint64_t)height outputBufferData:(id)data numberOfFaceSegments:(unint64_t)segments faceSegmentBBox:(CGRect)box faceSegmentLabelToProbabilityMap:(id)map
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  dataCopy = data;
  mapCopy = map;
  v26.receiver = self;
  v26.super_class = VNFaceSegments;
  v21 = [(VNFaceSegments *)&v26 init];
  if (v21 && (v22 = [objc_opt_class() faceSegmentsPixelSizeInBytes], height * width * v22 == objc_msgSend(dataCopy, "length")))
  {
    v21->_requestRevision = revision;
    v21->_outputBufferWidth = width;
    v21->_outputBufferHeight = height;
    objc_storeStrong(&v21->_outputBufferData, data);
    v21->_numberOfFaceSegments = segments;
    v21->_boundingBox.origin.x = x;
    v21->_boundingBox.origin.y = y;
    v21->_boundingBox.size.width = width;
    v21->_boundingBox.size.height = height;
    objc_storeStrong(&v21->_faceSegmentLabelToProbabilityMap, map);
    v23 = v21;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

+ (NSDictionary)faceSegmentIndexToFlagMap
{
  if (+[VNFaceSegments faceSegmentIndexToFlagMap]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceSegments faceSegmentIndexToFlagMap]::onceToken, &__block_literal_global_74_24623);
  }

  v3 = +[VNFaceSegments faceSegmentIndexToFlagMap]::faceSegmentIndexToFlagMap;

  return v3;
}

void __43__VNFaceSegments_faceSegmentIndexToFlagMap__block_invoke()
{
  v3[15] = *MEMORY[0x1E69E9840];
  v2[0] = &unk_1F19C1660;
  v2[1] = &unk_1F19C1690;
  v3[0] = &unk_1F19C1678;
  v3[1] = &unk_1F19C16A8;
  v2[2] = &unk_1F19C16C0;
  v2[3] = &unk_1F19C16F0;
  v3[2] = &unk_1F19C16D8;
  v3[3] = &unk_1F19C1708;
  v2[4] = &unk_1F19C1720;
  v2[5] = &unk_1F19C1750;
  v3[4] = &unk_1F19C1738;
  v3[5] = &unk_1F19C1768;
  v2[6] = &unk_1F19C1780;
  v2[7] = &unk_1F19C17B0;
  v3[6] = &unk_1F19C1798;
  v3[7] = &unk_1F19C17C8;
  v2[8] = &unk_1F19C17E0;
  v2[9] = &unk_1F19C1810;
  v3[8] = &unk_1F19C17F8;
  v3[9] = &unk_1F19C1828;
  v2[10] = &unk_1F19C1840;
  v2[11] = &unk_1F19C1870;
  v3[10] = &unk_1F19C1858;
  v3[11] = &unk_1F19C1888;
  v2[12] = &unk_1F19C18A0;
  v2[13] = &unk_1F19C18D0;
  v3[12] = &unk_1F19C18B8;
  v3[13] = &unk_1F19C18E8;
  v2[14] = &unk_1F19C1900;
  v3[14] = &unk_1F19C1918;
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:15];
  v1 = +[VNFaceSegments faceSegmentIndexToFlagMap]::faceSegmentIndexToFlagMap;
  +[VNFaceSegments faceSegmentIndexToFlagMap]::faceSegmentIndexToFlagMap = v0;
}

+ (NSDictionary)faceSegmentToSegmentMaskGrayLevelDictionary
{
  if (+[VNFaceSegments faceSegmentToSegmentMaskGrayLevelDictionary]::onceToken != -1)
  {
    dispatch_once(&+[VNFaceSegments faceSegmentToSegmentMaskGrayLevelDictionary]::onceToken, &__block_literal_global_24629);
  }

  v3 = +[VNFaceSegments faceSegmentToSegmentMaskGrayLevelDictionary]::faceSegmentToSegmentMaskGrayLevelDictionary;

  return v3;
}

void __61__VNFaceSegments_faceSegmentToSegmentMaskGrayLevelDictionary__block_invoke()
{
  v8 = +[VNFaceSegments faceSegmentIndexToFlagMap];
  v0 = [v8 count];
  v1 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v0];
  if (v0)
  {
    for (i = 0; i != v0; ++i)
    {
      v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
      v4 = [v8 objectForKeyedSubscript:v3];

      v5 = [MEMORY[0x1E696AD98] numberWithInt:~(i + 5)];
      [v1 setObject:v5 forKeyedSubscript:v4];
    }
  }

  v6 = [v1 copy];
  v7 = +[VNFaceSegments faceSegmentToSegmentMaskGrayLevelDictionary]::faceSegmentToSegmentMaskGrayLevelDictionary;
  +[VNFaceSegments faceSegmentToSegmentMaskGrayLevelDictionary]::faceSegmentToSegmentMaskGrayLevelDictionary = v6;
}

@end