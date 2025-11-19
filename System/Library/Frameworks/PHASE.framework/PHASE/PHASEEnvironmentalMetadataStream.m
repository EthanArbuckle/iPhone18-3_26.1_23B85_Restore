@interface PHASEEnvironmentalMetadataStream
- (EnvironmentalMetadata)serializeMetadataToCFormatInternal:(id)a3 allocateFunc:(function<void *(unsigned)long;
- (PHASEEngine)engine;
- (PHASEEnvironmentalMetadataStream)init;
- (PHASEEnvironmentalMetadataStream)initWithEngine:(id)a3;
- (__n128)orientation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initInternal;
- (unint64_t)calculateByteCountInternal:(id)a3;
- (void)dealloc;
- (void)deserializeBinaryMetadataToCFormatInternal:(void *)a3 byteCount:(unint64_t)a4 outMetadata:(EnvironmentalMetadata *)a5;
- (void)deserializeCFormatMetadataInternal:(EnvironmentalMetadata *)a3 outMetadata:(id)a4;
- (void)deserializeMetadataInternal:(void *)a3 byteCount:(unint64_t)a4 outMetadata:(id)a5;
- (void)serializeMetadataInternal:(id)a3 byteCount:(unint64_t)a4;
- (void)setOrientation:(void *)a1;
- (void)submit:;
- (void)submit:(id)a3;
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

- (PHASEEnvironmentalMetadataStream)initWithEngine:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"engine is nil."];
  }

  v10.receiver = self;
  v10.super_class = PHASEEnvironmentalMetadataStream;
  v5 = [(PHASEEnvironmentalMetadataStream *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_engine, v4);
    [(PHASEEnvironmentalMetadataStream *)v6 setOrientation:*&_PromotedConst];
    WeakRetained = objc_loadWeakRetained(&v6->_engine);
    v8 = [WeakRetained implementation];
    v6->_geoEnvironmentalMetadataStreamHandle.mData = (*(**(v8 + 368) + 88))(*(v8 + 368));

    if (!v6->_geoEnvironmentalMetadataStreamHandle.mData)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"failed to create environmental metadata stream."];
    }
  }

  return v6;
}

- (unint64_t)calculateByteCountInternal:(id)a3
{
  v3 = a3;
  v4 = 0;
  v5 = 8;
  while (1)
  {
    v6 = [v3 directionalElements];
    v7 = [v6 count];

    if (v7 <= v4)
    {
      break;
    }

    v8 = [v3 directionalElements];
    v9 = [v8 objectAtIndexedSubscript:v4];

    v10 = [v9 subbandFrequencies];
    v11 = [v10 count];

    v12 = [v9 planeWaves];
    v13 = [v12 count];
    v5 += v13 + 16 * v13 + 4 * (v13 + v11 + v13 * v11) + 36;

    ++v4;
  }

  return v5 + 16;
}

- (void)serializeMetadataInternal:(id)a3 byteCount:(unint64_t)a4
{
  v6 = a3;
  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Failed to submit PHASEEnvironmentalMetadata: metadata is nil!"];
  }

  if (!a4)
  {
    __assert_rtn("[PHASEEnvironmentalMetadataStream serializeMetadataInternal:byteCount:]", "PHASEEnvironmentalMetadataStream.mm", 383, "byteCount > 0");
  }

  v7 = malloc_type_malloc(a4, 0x6A768E0BuLL);
  if (!v7)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE728] format:@"Failed to submit PHASEEnvironmentalMetadata: memory allocation error!"];
  }

  v8 = [v6 directionalElements];
  v38 = a4;
  v39 = v7;
  *v7 = [v8 count];
  v9 = v7 + 1;

  v10 = 0;
  v40 = self;
  v41 = v6;
  while (1)
  {
    v11 = [v6 directionalElements];
    v12 = [v11 count];

    if (v12 <= v10)
    {
      break;
    }

    v13 = [v6 directionalElements];
    v14 = [v13 objectAtIndexedSubscript:v10];

    *v9 = [v14 category];
    [v14 position];
    v43 = v42 = v10;
    [v43 azimuth];
    *(v9 + 2) = v15;
    [v43 elevation];
    *(v9 + 3) = v16;
    [v43 distance];
    *(v9 + 4) = v17;
    v18 = [v14 subbandFrequencies];
    v19 = 0;
    *(v9 + 20) = [v18 count];
    v9 = (v9 + 36);
    while ([v18 count] > v19)
    {
      v20 = [v18 objectAtIndexedSubscript:v19];
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

    v23 = [v14 planeWaves];
    v24 = 0;
    *(v9 - 1) = [v23 count];
    while ([v23 count] > v24)
    {
      v25 = [v23 objectAtIndexedSubscript:v24];
      [v25 delayTime];
      *v9 = v26;
      v27 = [v25 direction];
      [v27 azimuth];
      *(v9 + 1) = v28;
      [v27 elevation];
      *(v9 + 2) = v29;
      *(v9 + 12) = [v25 invertPolarity];
      v30 = [v25 subbandGains];
      v31 = 0;
      *(v9 + 13) = [v30 count];
      v9 = (v9 + 21);
      while ([v30 count] > v31)
      {
        v32 = [v30 objectAtIndexedSubscript:v31];
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

    v6 = v41;
    v10 = v42 + 1;
    self = v40;
  }

  v35 = 0;
  v36 = (&v39[v38] - v9);
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

- (EnvironmentalMetadata)serializeMetadataToCFormatInternal:(id)a3 allocateFunc:(function<void *(unsigned)long
{
  v90 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Failed to submit PHASEEnvironmentalMetadata: metadata is nil!"];
  }

  std::__function::__value_func<void * ()(unsigned long,unsigned long long &)>::__value_func[abi:ne200100](v88, a4);
  v6 = v5;
  v72 = v5;
  if (!v5)
  {
    __assert_rtn("AllocateCFormatInternal", "PHASEEnvironmentalMetadataStream.mm", 155, "metadata != nil");
  }

  v80 = v6;
  v7 = [v80 directionalElements];
  v82 = [v7 count];

  v8 = 40 * v82 + 8;
  if (v82)
  {
    v76 = 0;
    v78 = 0;
    v9 = 0;
    for (i = 0; i != v82; ++i)
    {
      v11 = [v80 directionalElements];
      v84 = [v11 objectAtIndexedSubscript:i];

      v12 = [v84 subbandFrequencies];
      v13 = [v12 count];

      v14 = [v84 planeWaves];
      v15 = [v14 count];
      if (v15)
      {
        for (j = 0; j != v15; ++j)
        {
          v17 = [v14 objectAtIndexedSubscript:j];
          v18 = [v17 subbandGains];
          v19 = [v18 count];

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
      v26 = [v80 directionalElements];
      v27 = [v26 objectAtIndexedSubscript:k];
      v28 = [v27 planeWaves];
      v29 = [v28 count];

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
  v41 = [v39 directionalElements];
  if (var1 != [v41 count])
  {
    __assert_rtn("WriteSerializedData", "PHASEEnvironmentalMetadataStream.mm", 214, "directionalElementsCount == metadata.directionalElements.count");
  }

  v83 = 0;
  v85 = 0;
  v42 = 0;
  v74 = 0;
  while (1)
  {
    v43 = [v75 directionalElements];
    v44 = v83 < [v43 count];

    if (!v44)
    {
      break;
    }

    v45 = [v75 directionalElements];
    v77 = [v45 objectAtIndexedSubscript:v83];

    v21->var6[v83] = [v77 category] == 1684890476;
    v46 = [v77 position];
    [v46 azimuth];
    v21->var7[v83] = v47;

    v48 = [v77 position];
    [v48 elevation];
    v21->var8[v83] = v49;

    v50 = [v77 position];
    [v50 distance];
    v21->var9[v83] = v51;

    v81 = [v77 subbandFrequencies];
    v52 = [v81 count];
    v21->var3[v83] = v52;
    if (v52)
    {
      for (m = 0; m != v52; ++m)
      {
        v54 = [v81 objectAtIndexedSubscript:m];
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

    v57 = [v77 planeWaves];
    v79 = v57;
    v58 = [v57 count];
    v21->var4[v83] = v58;
    if (v58)
    {
      for (n = 0; n != v58; ++n)
      {
        v60 = [v57 objectAtIndexedSubscript:n];
        [v60 delayTime];
        v21->var11[v42] = v61;
        v62 = [v60 direction];
        [v62 azimuth];
        v21->var12[v42] = v63;
        [v62 elevation];
        v21->var13[v42] = v64;
        v21->var16[v42] = [v60 invertPolarity];
        v65 = [v60 subbandGains];
        v66 = 0;
        v21->var5[v83][n] = [v65 count];
        while ([v65 count] > v66)
        {
          v67 = [v65 objectAtIndexedSubscript:v66];
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
        v57 = v79;
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

- (void)deserializeMetadataInternal:(void *)a3 byteCount:(unint64_t)a4 outMetadata:(id)a5
{
  v38 = a5;
  if (a4 && a3 && v38)
  {
    v35 = a4;
    v36 = a3;
    v8 = *a3;
    v7 = a3 + 8;
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
          v20 = [MEMORY[0x277CCABB0] numberWithFloat:{v15, v35, v36}];
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
              v34 = [MEMORY[0x277CCABB0] numberWithFloat:{v32, v35, v36}];
              [v31 addObject:v34];
            }

            [(PHASEPlaneWaveMetadata *)v24 setSubbandGains:v31, v35, v36];
            [(PHASEDirectionalMetadata *)v41 addPlaneWave:v24];

            ++v23;
            v11 = v29;
          }

          while (v23 != v21);
        }

        [v38 addDirectionalElement:{v41, v35, v36}];

        v9 = v39 + 1;
      }

      while (v39 + 1 != v37);
    }

    if (v7 - v36 != v35 - 16)
    {
      __assert_rtn("[PHASEEnvironmentalMetadataStream deserializeMetadataInternal:byteCount:outMetadata:]", "PHASEEnvironmentalMetadataStream.mm", 556, "((size_t) currentData - (size_t) serializedMetadata) == metadataByteCount");
    }
  }
}

- (void)deserializeBinaryMetadataToCFormatInternal:(void *)a3 byteCount:(unint64_t)a4 outMetadata:(EnvironmentalMetadata *)a5
{
  if (a4 && a3 && a5)
  {
    v7 = a3 + 8;
    v6 = *a3;
    a5->var1 = *a3;
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
      v28 = a4;
      v29 = a3;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      do
      {
        v32 = v8;
        v33 = v9;
        a5->var6[v10] = *v7 == 1684890476;
        a5->var7[v10] = *(v7 + 2);
        a5->var8[v10] = *(v7 + 3);
        a5->var9[v10] = *(v7 + 4);
        v11 = *(v7 + 20);
        v12 = v7 + 28;
        a5->var3[v10] = v11;
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
        a5->var4[v10] = v15;
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
        var10 = a5->var10;
        v18 = v32 + i;
        do
        {
          v19 = *v16++;
          *var10++ = v19;
          --v18;
        }

        while (v18);
      }

      a4 = v28;
      a3 = v29;
      if (v9)
      {
        v20 = 0;
        v21 = v43;
        v22 = v40;
        var11 = a5->var11;
        var12 = a5->var12;
        v25 = v37;
        var13 = a5->var13;
        var16 = a5->var16;
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

    if (v7 - a3 != a4 - 16)
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

- (void)deserializeCFormatMetadataInternal:(EnvironmentalMetadata *)a3 outMetadata:(id)a4
{
  v35 = a4;
  if (a3)
  {
    if (v35)
    {
      var1 = a3->var1;
      if (var1)
      {
        v34 = 0;
        v5 = 0;
        v6 = 0;
        for (i = 0; i != var1; ++i)
        {
          if (a3->var6[i] == 1)
          {
            v8 = 1684890476;
          }

          else
          {
            v8 = 1684890469;
          }

          v9 = objc_alloc_init(PHASESphericalPositionMetadata);
          *&v10 = a3->var7[i];
          [(PHASEAngularPositionMetadata *)v9 setAzimuth:v10];
          *&v11 = a3->var8[i];
          [(PHASEAngularPositionMetadata *)v9 setElevation:v11];
          *&v12 = a3->var9[i];
          [(PHASESphericalPositionMetadata *)v9 setDistance:v12];
          v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v14 = a3->var3[i];
          v37 = v14;
          if (v14)
          {
            v15 = i;
            v16 = v5;
            v17 = v14 + v34;
            v18 = v34;
            do
            {
              *&v13 = a3->var10[v18];
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
          v36 = a3->var4[i];
          if (v36)
          {
            for (j = 0; j != v36; ++j)
            {
              v21 = [[PHASEPlaneWaveMetadata alloc] initWithSubbandCount:v37];
              *&v22 = a3->var11[v5];
              [(PHASEPlaneWaveMetadata *)v21 setDelayTime:v22];
              v23 = objc_alloc_init(PHASEAngularPositionMetadata);
              *&v24 = a3->var12[v5];
              [(PHASEAngularPositionMetadata *)v23 setAzimuth:v24];
              *&v25 = a3->var13[v5];
              [(PHASEAngularPositionMetadata *)v23 setElevation:v25];
              [(PHASEPlaneWaveMetadata *)v21 setDirection:v23];
              [(PHASEPlaneWaveMetadata *)v21 setInvertPolarity:a3->var16[v5]];
              v26 = v9;
              v27 = i;
              v28 = a3->var5[i][j];
              v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
              if (v28)
              {
                v40 = v28 + v6;
                v41 = v5;
                v31 = v6;
                do
                {
                  *&v30 = a3->var14[v31];
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

          [v35 addDirectionalElement:v38];
        }
      }
    }
  }
}

- (void)setOrientation:(void *)a1
{
  v4 = a1;
  objc_sync_enter(v4);
  v2 = 1.0 - sqrtf(vmuls_lane_f32(a2.f32[3], a2, 3) + (vmuls_lane_f32(a2.f32[2], a2, 2) + (vmulq_f32(a2, a2).f32[0] + vmuls_lane_f32(a2.f32[1], *a2.f32, 1))));
  if (v2 < 0.0)
  {
    v2 = -v2;
  }

  if (v2 <= 0.1)
  {
    v4[1] = a2;
    v4[2] = a2;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Failed to set PHASEEnvironmentalMetadataStream: orientation [%f, %f, %f, %f] must be normalized", a2.f32[0], a2.f32[1], a2.f32[2], a2.f32[3]}];
  }

  objc_sync_exit(v4);
}

- (__n128)orientation
{
  v1 = a1;
  objc_sync_enter(v1);
  v3 = v1[1];
  objc_sync_exit(v1);

  return v3;
}

- (void)submit:(id)a3
{
  v12[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"metadata is nil."];
  }

  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (!WeakRetained)
  {
    __assert_rtn("[PHASEEnvironmentalMetadataStream submit:]", "PHASEEnvironmentalMetadataStream.mm", 779, "_engine != nil");
  }

  v6 = objc_loadWeakRetained(&self->_engine);
  v7 = [v6 implementation];

  v12[0] = &unk_284D35E28;
  v12[3] = 0;
  v11[0] = &unk_284D35E28;
  v11[3] = v11;
  std::__function::__value_func<void * ()(unsigned long,unsigned long long &)>::~__value_func[abi:ne200100](v12);
  v8 = self;
  objc_sync_enter(v8);
  std::__function::__value_func<void * ()(unsigned long,unsigned long long &)>::__value_func[abi:ne200100](v10, v11);
  v9 = [(PHASEEnvironmentalMetadataStream *)v8 serializeMetadataToCFormatInternal:v4 allocateFunc:v10];
  std::__function::__value_func<void * ()(unsigned long,unsigned long long &)>::~__value_func[abi:ne200100](v10);
  (*(**(v7 + 368) + 96))(*(v7 + 368), v9, &v8->_geoEnvironmentalMetadataStreamHandle);
  free(v9);
  objc_sync_exit(v8);

  std::__function::__value_func<void * ()(unsigned long,unsigned long long &)>::~__value_func[abi:ne200100](v11);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(PHASEEnvironmentalMetadataStream *)self engine];
  v6 = [v4 initWithEngine:v5];

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
    v5 = [v4 implementation];
    (*(**(v5 + 368) + 112))(*(v5 + 368), self->_geoEnvironmentalMetadataStreamHandle.mData);
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