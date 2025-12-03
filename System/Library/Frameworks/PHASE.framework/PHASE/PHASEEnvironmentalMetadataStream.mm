@interface PHASEEnvironmentalMetadataStream
- (EnvironmentalMetadata)serializeMetadataToCFormatInternal:(id)internal allocateFunc:(function<void *(unsigned)long;
- (PHASEEngine)engine;
- (PHASEEnvironmentalMetadataStream)init;
- (PHASEEnvironmentalMetadataStream)initWithEngine:(id)engine;
- (__n128)orientation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initInternal;
- (unint64_t)calculateByteCountInternal:(id)internal;
- (void)dealloc;
- (void)deserializeBinaryMetadataToCFormatInternal:(void *)internal byteCount:(unint64_t)count outMetadata:(EnvironmentalMetadata *)metadata;
- (void)deserializeCFormatMetadataInternal:(EnvironmentalMetadata *)internal outMetadata:(id)metadata;
- (void)deserializeMetadataInternal:(void *)internal byteCount:(unint64_t)count outMetadata:(id)metadata;
- (void)serializeMetadataInternal:(id)internal byteCount:(unint64_t)count;
- (void)setOrientation:(void *)orientation;
- (void)submit:;
- (void)submit:(id)submit;
@end

@implementation PHASEEnvironmentalMetadataStream

- (PHASEEnvironmentalMetadataStream)init
{
  [(PHASEEnvironmentalMetadataStream *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (id)initInternal
{
  v5.receiver = self;
  v5.super_class = PHASEEnvironmentalMetadataStream;
  v2 = [(PHASEEnvironmentalMetadataStream *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeWeak(&v2->_engine, 0);
    v3->_geoEnvironmentalMetadataStreamHandle.mData = 0;
    [(PHASEEnvironmentalMetadataStream *)v3 setOrientation:*&_PromotedConst];
  }

  return v3;
}

- (PHASEEnvironmentalMetadataStream)initWithEngine:(id)engine
{
  engineCopy = engine;
  if (!engineCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"engine is nil."];
  }

  v10.receiver = self;
  v10.super_class = PHASEEnvironmentalMetadataStream;
  v5 = [(PHASEEnvironmentalMetadataStream *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_engine, engineCopy);
    [(PHASEEnvironmentalMetadataStream *)v6 setOrientation:*&_PromotedConst];
    WeakRetained = objc_loadWeakRetained(&v6->_engine);
    implementation = [WeakRetained implementation];
    v6->_geoEnvironmentalMetadataStreamHandle.mData = (*(**(implementation + 368) + 88))(*(implementation + 368));

    if (!v6->_geoEnvironmentalMetadataStreamHandle.mData)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"failed to create environmental metadata stream."];
    }
  }

  return v6;
}

- (unint64_t)calculateByteCountInternal:(id)internal
{
  internalCopy = internal;
  v4 = 0;
  v5 = 8;
  while (1)
  {
    directionalElements = [internalCopy directionalElements];
    v7 = [directionalElements count];

    if (v7 <= v4)
    {
      break;
    }

    directionalElements2 = [internalCopy directionalElements];
    v9 = [directionalElements2 objectAtIndexedSubscript:v4];

    subbandFrequencies = [v9 subbandFrequencies];
    v11 = [subbandFrequencies count];

    planeWaves = [v9 planeWaves];
    v13 = [planeWaves count];
    v5 += v13 + 16 * v13 + 4 * (v13 + v11 + v13 * v11) + 36;

    ++v4;
  }

  return v5 + 16;
}

- (void)serializeMetadataInternal:(id)internal byteCount:(unint64_t)count
{
  internalCopy = internal;
  if (!internalCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Failed to submit PHASEEnvironmentalMetadata: metadata is nil!"];
  }

  if (!count)
  {
    __assert_rtn("[PHASEEnvironmentalMetadataStream serializeMetadataInternal:byteCount:]", "PHASEEnvironmentalMetadataStream.mm", 383, "byteCount > 0");
  }

  v7 = malloc_type_malloc(count, 0x6A768E0BuLL);
  if (!v7)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:@"Failed to submit PHASEEnvironmentalMetadata: memory allocation error!"];
  }

  directionalElements = [internalCopy directionalElements];
  countCopy = count;
  v39 = v7;
  *v7 = [directionalElements count];
  v9 = v7 + 1;

  v10 = 0;
  selfCopy = self;
  v41 = internalCopy;
  while (1)
  {
    directionalElements2 = [internalCopy directionalElements];
    v12 = [directionalElements2 count];

    if (v12 <= v10)
    {
      break;
    }

    directionalElements3 = [internalCopy directionalElements];
    v14 = [directionalElements3 objectAtIndexedSubscript:v10];

    *v9 = [v14 category];
    [v14 position];
    v43 = v42 = v10;
    [v43 azimuth];
    *(v9 + 2) = v15;
    [v43 elevation];
    *(v9 + 3) = v16;
    [v43 distance];
    *(v9 + 4) = v17;
    subbandFrequencies = [v14 subbandFrequencies];
    v19 = 0;
    *(v9 + 20) = [subbandFrequencies count];
    v9 = (v9 + 36);
    while ([subbandFrequencies count] > v19)
    {
      v20 = [subbandFrequencies objectAtIndexedSubscript:v19];
      [v20 doubleValue];
      if (v21 > 3.40282347e38)
      {
        __assert_rtn("[PHASEEnvironmentalMetadataStream serializeMetadataInternal:byteCount:]", "PHASEEnvironmentalMetadataStream.mm", 415, "subbandFrequency.doubleValue <= FLT_MAX");
      }

      [v20 floatValue];
      *(v9 - 2) = v22;

      ++v19;
      v9 = (v9 + 4);
    }

    planeWaves = [v14 planeWaves];
    v24 = 0;
    *(v9 - 1) = [planeWaves count];
    while ([planeWaves count] > v24)
    {
      v25 = [planeWaves objectAtIndexedSubscript:v24];
      [v25 delayTime];
      *v9 = v26;
      direction = [v25 direction];
      [direction azimuth];
      *(v9 + 1) = v28;
      [direction elevation];
      *(v9 + 2) = v29;
      *(v9 + 12) = [v25 invertPolarity];
      subbandGains = [v25 subbandGains];
      v31 = 0;
      *(v9 + 13) = [subbandGains count];
      v9 = (v9 + 21);
      while ([subbandGains count] > v31)
      {
        v32 = [subbandGains objectAtIndexedSubscript:v31];
        [v32 doubleValue];
        if (v33 > 3.40282347e38)
        {
          __assert_rtn("[PHASEEnvironmentalMetadataStream serializeMetadataInternal:byteCount:]", "PHASEEnvironmentalMetadataStream.mm", 439, "subbandGain.doubleValue <= FLT_MAX");
        }

        [v32 floatValue];
        *v9 = v34;
        v9 = (v9 + 4);

        ++v31;
      }

      ++v24;
    }

    internalCopy = v41;
    v10 = v42 + 1;
    self = selfCopy;
  }

  v35 = 0;
  v36 = (&v39[countCopy] - v9);
  do
  {
    *(v9 + v35) = *&self->_anon_20[4 * (v35 & 3)];
    ++v35;
    v36 -= 4;
  }

  while (v35 != 4);
  if (v36)
  {
    __assert_rtn("[PHASEEnvironmentalMetadataStream serializeMetadataInternal:byteCount:]", "PHASEEnvironmentalMetadataStream.mm", 451, "((size_t) currentData - (size_t) serializedData) == byteCount");
  }

  return v39;
}

- (EnvironmentalMetadata)serializeMetadataToCFormatInternal:(id)internal allocateFunc:(function<void *(unsigned)long
{
  v90 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  if (!internalCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Failed to submit PHASEEnvironmentalMetadata: metadata is nil!"];
  }

  std::__function::__value_func<void * ()(unsigned long,unsigned long long &)>::__value_func[abi:ne200100](v88, a4);
  v6 = internalCopy;
  v72 = internalCopy;
  if (!internalCopy)
  {
    __assert_rtn("AllocateCFormatInternal", "PHASEEnvironmentalMetadataStream.mm", 155, "metadata != nil");
  }

  v80 = v6;
  directionalElements = [v80 directionalElements];
  v82 = [directionalElements count];

  v8 = 40 * v82 + 8;
  if (v82)
  {
    v76 = 0;
    v78 = 0;
    v9 = 0;
    for (i = 0; i != v82; ++i)
    {
      directionalElements2 = [v80 directionalElements];
      v84 = [directionalElements2 objectAtIndexedSubscript:i];

      subbandFrequencies = [v84 subbandFrequencies];
      v13 = [subbandFrequencies count];

      planeWaves = [v84 planeWaves];
      v15 = [planeWaves count];
      if (v15)
      {
        for (j = 0; j != v15; ++j)
        {
          v17 = [planeWaves objectAtIndexedSubscript:j];
          subbandGains = [v17 subbandGains];
          v19 = [subbandGains count];

          v9 += v19;
        }
      }

      v76 += v13;
      v78 += v15;
      v8 += 8 * v15;
    }
  }

  else
  {
    v76 = 0;
    v78 = 0;
    v9 = 0;
  }

  v20 = v8 + 13 * v78 + 4 * (v9 + v76) + 176;
  v86 = 0;
  v87 = v20;
  if (!v89)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v21 = (*(*v89 + 48))(v89, &v87, &v86);
  v21->var0 = v86;
  v21->var1 = v82;
  v22 = (&v21[1].var3 + v82);
  v21->var2 = v20;
  v21->var3 = &v21[1].var3;
  v23 = (v22 + 8 * v82);
  v24 = &v23[v82];
  v21->var4 = v22;
  v21->var5 = v23;
  if (v82)
  {
    for (k = 0; k != v82; ++k)
    {
      directionalElements3 = [v80 directionalElements];
      v27 = [directionalElements3 objectAtIndexedSubscript:k];
      planeWaves2 = [v27 planeWaves];
      v29 = [planeWaves2 count];

      v23 = &v24[v29];
      v21->var5[k] = v24;
      v24 = v23;
    }
  }

  v30 = v23 + v82;
  v31 = &v30[v82];
  v21->var6 = v23;
  v21->var7 = v30;
  v32 = &v31[v82];
  v33 = &v32[v82];
  v21->var8 = v31;
  v21->var9 = v32;
  v34 = &v33[v76];
  v35 = &v34[v78];
  v21->var10 = v33;
  v21->var11 = v34;
  v36 = &v35[v78];
  v37 = &v36[v78];
  v21->var12 = v35;
  v21->var13 = v36;
  v21->var14 = v37;
  v38 = &v37[v9 + 4];
  v21->var16 = v38;
  if (v38 + v78 - v21 != v20)
  {
    __assert_rtn("AllocateCFormatInternal", "PHASEEnvironmentalMetadataStream.mm", 203, "position == metadataSize");
  }

  std::__function::__value_func<void * ()(unsigned long,unsigned long long &)>::~__value_func[abi:ne200100](v88);
  if (!v21->var2)
  {
    __assert_rtn("[PHASEEnvironmentalMetadataStream serializeMetadataToCFormatInternal:allocateFunc:]", "PHASEEnvironmentalMetadataStream.mm", 464, "serializedData != NULL && serializedData->metadataSize > 0");
  }

  v39 = v80;
  var1 = v21->var1;
  v75 = v39;
  directionalElements4 = [v39 directionalElements];
  if (var1 != [directionalElements4 count])
  {
    __assert_rtn("WriteSerializedData", "PHASEEnvironmentalMetadataStream.mm", 214, "directionalElementsCount == metadata.directionalElements.count");
  }

  v83 = 0;
  v85 = 0;
  v42 = 0;
  v74 = 0;
  while (1)
  {
    directionalElements5 = [v75 directionalElements];
    v44 = v83 < [directionalElements5 count];

    if (!v44)
    {
      break;
    }

    directionalElements6 = [v75 directionalElements];
    v77 = [directionalElements6 objectAtIndexedSubscript:v83];

    v21->var6[v83] = [v77 category] == 1684890476;
    position = [v77 position];
    [position azimuth];
    v21->var7[v83] = v47;

    position2 = [v77 position];
    [position2 elevation];
    v21->var8[v83] = v49;

    position3 = [v77 position];
    [position3 distance];
    v21->var9[v83] = v51;

    subbandFrequencies2 = [v77 subbandFrequencies];
    v52 = [subbandFrequencies2 count];
    v21->var3[v83] = v52;
    if (v52)
    {
      for (m = 0; m != v52; ++m)
      {
        v54 = [subbandFrequencies2 objectAtIndexedSubscript:m];
        [v54 doubleValue];
        if (v55 > 3.40282347e38)
        {
          __assert_rtn("WriteSerializedData", "PHASEEnvironmentalMetadataStream.mm", 232, "subbandFrequency.doubleValue <= FLT_MAX");
        }

        [v54 floatValue];
        v21->var10[v74 + m] = v56;
      }

      v74 += m;
    }

    planeWaves3 = [v77 planeWaves];
    v79 = planeWaves3;
    v58 = [planeWaves3 count];
    v21->var4[v83] = v58;
    if (v58)
    {
      for (n = 0; n != v58; ++n)
      {
        v60 = [planeWaves3 objectAtIndexedSubscript:n];
        [v60 delayTime];
        v21->var11[v42] = v61;
        direction = [v60 direction];
        [direction azimuth];
        v21->var12[v42] = v63;
        [direction elevation];
        v21->var13[v42] = v64;
        v21->var16[v42] = [v60 invertPolarity];
        subbandGains2 = [v60 subbandGains];
        v66 = 0;
        v21->var5[v83][n] = [subbandGains2 count];
        while ([subbandGains2 count] > v66)
        {
          v67 = [subbandGains2 objectAtIndexedSubscript:v66];
          [v67 doubleValue];
          if (v68 > 3.40282347e38)
          {
            __assert_rtn("WriteSerializedData", "PHASEEnvironmentalMetadataStream.mm", 261, "subbandGain.doubleValue <= FLT_MAX");
          }

          [v67 floatValue];
          v21->var14[v85 + v66] = v69;

          ++v66;
        }

        ++v42;
        v85 += v66;
        planeWaves3 = v79;
      }
    }

    ++v83;
  }

  for (ii = 0; ii != 4; ++ii)
  {
    v21->var15[ii] = *&self->_anon_20[4 * (ii & 3)];
  }

  return v21;
}

- (void)deserializeMetadataInternal:(void *)internal byteCount:(unint64_t)count outMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (count && internal && metadataCopy)
  {
    countCopy = count;
    internalCopy = internal;
    v8 = *internal;
    v7 = internal + 8;
    v37 = v8;
    if (v8)
    {
      v9 = 0;
      do
      {
        v10 = *v7;
        v11 = objc_alloc_init(PHASESphericalPositionMetadata);
        LODWORD(v12) = *(v7 + 2);
        [(PHASEAngularPositionMetadata *)v11 setAzimuth:v12];
        LODWORD(v13) = *(v7 + 3);
        [(PHASEAngularPositionMetadata *)v11 setElevation:v13];
        LODWORD(v14) = *(v7 + 4);
        [(PHASESphericalPositionMetadata *)v11 setDistance:v14];
        v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v16 = *(v7 + 20);
        v17 = (v7 + 28);
        v18 = v16;
        for (i = v16; v18; --v18)
        {
          v19 = *v17++;
          LODWORD(v15) = v19;
          v20 = [MEMORY[0x277CCABB0] numberWithFloat:{v15, countCopy, internalCopy}];
          [v42 addObject:v20];
        }

        v41 = [[PHASEDirectionalMetadata alloc] initWithSubbandFrequencies:v42];
        [(PHASEDirectionalMetadata *)v41 setPosition:v11];
        [(PHASEDirectionalMetadata *)v41 setCategory:v10];
        v39 = v9;
        v22 = *v17;
        v7 = (v17 + 2);
        v21 = v22;
        if (v22)
        {
          v23 = 0;
          do
          {
            v24 = [[PHASEPlaneWaveMetadata alloc] initWithSubbandCount:i];
            LODWORD(v25) = *v7;
            [(PHASEPlaneWaveMetadata *)v24 setDelayTime:v25];
            v26 = objc_alloc_init(PHASEAngularPositionMetadata);
            LODWORD(v27) = *(v7 + 1);
            [(PHASEAngularPositionMetadata *)v26 setAzimuth:v27];
            LODWORD(v28) = *(v7 + 2);
            [(PHASEAngularPositionMetadata *)v26 setElevation:v28];
            [(PHASEPlaneWaveMetadata *)v24 setDirection:v26];
            [(PHASEPlaneWaveMetadata *)v24 setInvertPolarity:v7[12]];
            v29 = v11;
            v30 = *(v7 + 13);
            v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
            for (v7 += 21; v30; --v30)
            {
              v33 = *v7;
              v7 += 4;
              LODWORD(v32) = v33;
              v34 = [MEMORY[0x277CCABB0] numberWithFloat:{v32, countCopy, internalCopy}];
              [v31 addObject:v34];
            }

            [(PHASEPlaneWaveMetadata *)v24 setSubbandGains:v31, countCopy, internalCopy];
            [(PHASEDirectionalMetadata *)v41 addPlaneWave:v24];

            ++v23;
            v11 = v29;
          }

          while (v23 != v21);
        }

        [metadataCopy addDirectionalElement:{v41, countCopy, internalCopy}];

        v9 = v39 + 1;
      }

      while (v39 + 1 != v37);
    }

    if (v7 - internalCopy != countCopy - 16)
    {
      __assert_rtn("[PHASEEnvironmentalMetadataStream deserializeMetadataInternal:byteCount:outMetadata:]", "PHASEEnvironmentalMetadataStream.mm", 556, "((size_t) currentData - (size_t) serializedMetadata) == metadataByteCount");
    }
  }
}

- (void)deserializeBinaryMetadataToCFormatInternal:(void *)internal byteCount:(unint64_t)count outMetadata:(EnvironmentalMetadata *)metadata
{
  if (count && internal && metadata)
  {
    v7 = internal + 8;
    v6 = *internal;
    metadata->var1 = *internal;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    __p = 0;
    v35 = 0;
    v36 = 0;
    v30 = v6;
    if (v6)
    {
      countCopy = count;
      internalCopy = internal;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      do
      {
        v32 = v8;
        v33 = v9;
        metadata->var6[v10] = *v7 == 1684890476;
        metadata->var7[v10] = *(v7 + 2);
        metadata->var8[v10] = *(v7 + 3);
        metadata->var9[v10] = *(v7 + 4);
        v11 = *(v7 + 20);
        v12 = v7 + 28;
        metadata->var3[v10] = v11;
        v13 = v11;
        for (i = v11; v13; --v13)
        {
          LODWORD(v49[0]) = *v12;
          std::vector<float>::push_back[abi:ne200100](&v46, v49);
          ++v12;
        }

        v15 = *v12;
        v7 = (v12 + 2);
        v14 = v15;
        metadata->var4[v10] = v15;
        if (v15)
        {
          LODWORD(v49[0]) = *v7;
          std::vector<float>::push_back[abi:ne200100](&v43, v49);
          LODWORD(v49[0]) = *(v7 + 1);
          std::vector<float>::push_back[abi:ne200100](&v40, v49);
          LODWORD(v49[0]) = *(v7 + 2);
          std::vector<float>::push_back[abi:ne200100](&v37, v49);
          memset(v49, 0, 24);
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v49, 1uLL);
        }

        v8 = i + v32;
        v9 = v14 + v33;
        ++v10;
      }

      while (v10 != v30);
      if (v8)
      {
        v16 = v46;
        var10 = metadata->var10;
        v18 = v32 + i;
        do
        {
          v19 = *v16++;
          *var10++ = v19;
          --v18;
        }

        while (v18);
      }

      count = countCopy;
      internal = internalCopy;
      if (v9)
      {
        v20 = 0;
        v21 = v43;
        v22 = v40;
        var11 = metadata->var11;
        var12 = metadata->var12;
        v25 = v37;
        var13 = metadata->var13;
        var16 = metadata->var16;
        do
        {
          var11[v20] = v21[v20];
          var12[v20] = v22[v20];
          var13[v20] = v25[v20];
          var16[v20] = (*((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) >> v20) & 1;
          ++v20;
        }

        while (v33 + v14 != v20);
      }
    }

    if (v7 - internal != count - 16)
    {
      __assert_rtn("[PHASEEnvironmentalMetadataStream deserializeBinaryMetadataToCFormatInternal:byteCount:outMetadata:]", "PHASEEnvironmentalMetadataStream.mm", 662, "((size_t) currentData - (size_t) serializedMetadata) == metadataByteCount");
    }

    if (__p)
    {
      v35 = __p;
      operator delete(__p);
    }

    if (v37)
    {
      v38 = v37;
      operator delete(v37);
    }

    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    if (v43)
    {
      v44 = v43;
      operator delete(v43);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }
  }
}

- (void)deserializeCFormatMetadataInternal:(EnvironmentalMetadata *)internal outMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (internal)
  {
    if (metadataCopy)
    {
      var1 = internal->var1;
      if (var1)
      {
        v34 = 0;
        v5 = 0;
        v6 = 0;
        for (i = 0; i != var1; ++i)
        {
          if (internal->var6[i] == 1)
          {
            v8 = 1684890476;
          }

          else
          {
            v8 = 1684890469;
          }

          v9 = objc_alloc_init(PHASESphericalPositionMetadata);
          *&v10 = internal->var7[i];
          [(PHASEAngularPositionMetadata *)v9 setAzimuth:v10];
          *&v11 = internal->var8[i];
          [(PHASEAngularPositionMetadata *)v9 setElevation:v11];
          *&v12 = internal->var9[i];
          [(PHASESphericalPositionMetadata *)v9 setDistance:v12];
          v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v14 = internal->var3[i];
          v37 = v14;
          if (v14)
          {
            v15 = i;
            v16 = v5;
            v17 = v14 + v34;
            v18 = v34;
            do
            {
              *&v13 = internal->var10[v18];
              v19 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
              [v39 addObject:v19];

              ++v18;
              --v14;
            }

            while (v14);
            v34 = v17;
            v5 = v16;
            i = v15;
          }

          v38 = [[PHASEDirectionalMetadata alloc] initWithSubbandFrequencies:v39];
          [(PHASEDirectionalMetadata *)v38 setPosition:v9];
          [(PHASEDirectionalMetadata *)v38 setCategory:v8];
          v36 = internal->var4[i];
          if (v36)
          {
            for (j = 0; j != v36; ++j)
            {
              v21 = [[PHASEPlaneWaveMetadata alloc] initWithSubbandCount:v37];
              *&v22 = internal->var11[v5];
              [(PHASEPlaneWaveMetadata *)v21 setDelayTime:v22];
              v23 = objc_alloc_init(PHASEAngularPositionMetadata);
              *&v24 = internal->var12[v5];
              [(PHASEAngularPositionMetadata *)v23 setAzimuth:v24];
              *&v25 = internal->var13[v5];
              [(PHASEAngularPositionMetadata *)v23 setElevation:v25];
              [(PHASEPlaneWaveMetadata *)v21 setDirection:v23];
              [(PHASEPlaneWaveMetadata *)v21 setInvertPolarity:internal->var16[v5]];
              v26 = v9;
              v27 = i;
              v28 = internal->var5[i][j];
              v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
              if (v28)
              {
                v40 = v28 + v6;
                v41 = v5;
                v31 = v6;
                do
                {
                  *&v30 = internal->var14[v31];
                  v32 = [MEMORY[0x277CCABB0] numberWithFloat:v30];
                  [v29 addObject:v32];

                  ++v31;
                  --v28;
                }

                while (v28);
                v6 = v40;
                v5 = v41;
              }

              [(PHASEPlaneWaveMetadata *)v21 setSubbandGains:v29];
              i = v27;
              [(PHASEDirectionalMetadata *)v38 addPlaneWave:v21];
              ++v5;

              v9 = v26;
            }
          }

          [metadataCopy addDirectionalElement:v38];
        }
      }
    }
  }
}

- (void)setOrientation:(void *)orientation
{
  orientationCopy = orientation;
  objc_sync_enter(orientationCopy);
  v2 = 1.0 - sqrtf(vmuls_lane_f32(a2.f32[3], a2, 3) + (vmuls_lane_f32(a2.f32[2], a2, 2) + (vmulq_f32(a2, a2).f32[0] + vmuls_lane_f32(a2.f32[1], *a2.f32, 1))));
  if (v2 < 0.0)
  {
    v2 = -v2;
  }

  if (v2 <= 0.1)
  {
    orientationCopy[1] = a2;
    orientationCopy[2] = a2;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Failed to set PHASEEnvironmentalMetadataStream: orientation [%f, %f, %f, %f] must be normalized", a2.f32[0], a2.f32[1], a2.f32[2], a2.f32[3]}];
  }

  objc_sync_exit(orientationCopy);
}

- (__n128)orientation
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy[1];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)submit:(id)submit
{
  v12[4] = *MEMORY[0x277D85DE8];
  submitCopy = submit;
  if (!submitCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"metadata is nil."];
  }

  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (!WeakRetained)
  {
    __assert_rtn("[PHASEEnvironmentalMetadataStream submit:]", "PHASEEnvironmentalMetadataStream.mm", 779, "_engine != nil");
  }

  v6 = objc_loadWeakRetained(&self->_engine);
  implementation = [v6 implementation];

  v12[0] = &unk_284D35E28;
  v12[3] = 0;
  v11[0] = &unk_284D35E28;
  v11[3] = v11;
  std::__function::__value_func<void * ()(unsigned long,unsigned long long &)>::~__value_func[abi:ne200100](v12);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  std::__function::__value_func<void * ()(unsigned long,unsigned long long &)>::__value_func[abi:ne200100](v10, v11);
  v9 = [(PHASEEnvironmentalMetadataStream *)selfCopy serializeMetadataToCFormatInternal:submitCopy allocateFunc:v10];
  std::__function::__value_func<void * ()(unsigned long,unsigned long long &)>::~__value_func[abi:ne200100](v10);
  (*(**(implementation + 368) + 96))(*(implementation + 368), v9, &selfCopy->_geoEnvironmentalMetadataStreamHandle);
  free(v9);
  objc_sync_exit(selfCopy);

  std::__function::__value_func<void * ()(unsigned long,unsigned long long &)>::~__value_func[abi:ne200100](v11);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  engine = [(PHASEEnvironmentalMetadataStream *)self engine];
  v6 = [v4 initWithEngine:engine];

  [(PHASEEnvironmentalMetadataStream *)self orientation];
  [v6 setOrientation:?];
  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  if (WeakRetained)
  {
    if (!self->_geoEnvironmentalMetadataStreamHandle.mData)
    {
      std::terminate();
    }

    v4 = objc_loadWeakRetained(&self->_engine);
    implementation = [v4 implementation];
    (*(**(implementation + 368) + 112))(*(implementation + 368), self->_geoEnvironmentalMetadataStreamHandle.mData);
  }

  v6.receiver = self;
  v6.super_class = PHASEEnvironmentalMetadataStream;
  [(PHASEEnvironmentalMetadataStream *)&v6 dealloc];
}

- (PHASEEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

- (void)submit:
{
  v3 = *a2;
  *a3 = -1;
  return malloc_type_malloc(v3, 0xC0F70128uLL);
}

@end