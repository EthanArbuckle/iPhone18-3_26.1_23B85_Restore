void std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPoint>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPoint>::__append(a1, a2 - v2);
  }
}

void std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPoint>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

apple::vision::libraries::facecore::processing::processingchains::DetailsExtractionProcessingChain *apple::vision::libraries::facecore::processing::processingchains::DetailsExtractionProcessingChain::DetailsExtractionProcessingChain(apple::vision::libraries::facecore::processing::processingchains::DetailsExtractionProcessingChain *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_284DF3EC8;
  *(this + 3) = 0;
  *(this + 4) = &unk_284DF3FE8;
  *(this + 5) = &unk_284DF3FA8;
  *(this + 6) = 0;
  apple::vision::libraries::facecore::processing::extraction::FaceprintAndMeshExtractor::FaceprintAndMeshExtractor(this + 7);
  *(this + 9) = &unk_284DF4078;
  *(this + 10) = &unk_284DF3F28;
  apple::vision::libraries::facecore::processing::processingchains::DetailsExtractionProcessingChain::initializeProcessingChain(this);
  return this;
}

void sub_23AD8FB04(_Unwind_Exception *a1)
{
  apple::vision::libraries::facecore::processing::extraction::FaceprintAndMeshExtractor::~FaceprintAndMeshExtractor((v1 + 7));
  apple::vision::libraries::facecore::processing::postprocessing::EyesAndMouthLocalizer::~EyesAndMouthLocalizer(v3);
  *v1 = v2;
  v5 = v1[1];
  if (v5)
  {
    v1[2] = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::processing::processingchains::DetailsExtractionProcessingChain::initializeProcessingChain(apple::vision::libraries::facecore::processing::processingchains::DetailsExtractionProcessingChain *this)
{
  apple::vision::libraries::facecore::processing::ProcessingChain::appendElement(this, this + 32);
  apple::vision::libraries::facecore::processing::ProcessingChain::appendElement(this, this + 40);
  apple::vision::libraries::facecore::processing::ProcessingChain::appendElement(this, this + 56);
  apple::vision::libraries::facecore::processing::ProcessingChain::appendElement(this, this + 72);

  apple::vision::libraries::facecore::processing::ProcessingChain::appendElement(this, this + 80);
}

void apple::vision::libraries::facecore::processing::processingchains::DetailsExtractionProcessingChain::~DetailsExtractionProcessingChain(apple::vision::libraries::facecore::processing::processingchains::DetailsExtractionProcessingChain *this)
{
  *this = &unk_284DF3EC8;
  apple::vision::libraries::facecore::processing::extraction::FaceprintAndMeshExtractor::~FaceprintAndMeshExtractor((this + 56));
  apple::vision::libraries::facecore::processing::postprocessing::EyesAndMouthLocalizer::~EyesAndMouthLocalizer((this + 40));
  *this = &unk_284DF3F08;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void apple::vision::libraries::facecore::processing::preprocessing::DetailsExtractionImageRotationAndCroppingPreprocessing::performProcessing(apple::vision::libraries::facecore::processing::preprocessing::DetailsExtractionImageRotationAndCroppingPreprocessing *this, apple::vision::libraries::facecore::FaceCoreContext *a2)
{
  if (!*(a2 + 27))
  {
    operator new();
  }

  apple::vision::libraries::facecore::processing::preprocessing::DetailsExtractionImageRotationAndCroppingPreprocessing::performProcessing();
}

float apple::vision::libraries::facecore::processing::postprocessing::DetailsExtractionFaceCoordsTranslation::performProcessing(apple::vision::libraries::facecore::processing::postprocessing::DetailsExtractionFaceCoordsTranslation *this, apple::vision::libraries::facecore::FaceCoreContext *a2, uint64_t a3, image *a4)
{
  v6 = *(a2 + 26);
  v5 = *(a2 + 27);
  apple::vision::libraries::facecore::utils::ImageRotationUtils::computeFaceCoordinatesInImageRotatedByAngle((360 - *(a2 + 4)), v5, a2 + 14, a4);
  apple::vision::libraries::facecore::utils::ImageRotationUtils::translateFaceCoordinatesByVector(v5, *(a2 + 56), *(a2 + 57));
  if (v6 != v5)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((v6 + 48), *(v5 + 48), *(v5 + 56), (*(v5 + 56) - *(v5 + 48)) >> 3);
  }

  *(v6 + 72) = 0;
  *(v6 + 20) = *(v5 + 20);
  *(v6 + 4) = *(v5 + 4);
  *(v6 + 12) = *(v5 + 12);
  *(v6 + 28) = *(v5 + 28);
  if (v6 != v5)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((v6 + 80), *(v5 + 80), *(v5 + 88), (*(v5 + 88) - *(v5 + 80)) >> 3);
  }

  *(v6 + 108) = *(v5 + 108);
  *(v6 + 120) = *(v5 + 120);
  *(v6 + 128) = *(v5 + 128);
  *(v6 + 112) = *(v5 + 112);
  *(v6 + 124) = *(v5 + 124);
  result = *(v5 + 132);
  *(v6 + 132) = result;
  *(v6 + 136) = *(v5 + 136);
  *(v5 + 136) = 0;
  return result;
}

uint64_t apple::vision::libraries::facecore::mod::aam::AamSearch::setBias(apple::vision::libraries::facecore::mod::aam::AamSearch *this)
{
  v1 = this + 9465344;
  v2 = *(this + 490462);
  v3 = *(this + 490463);
  v4 = (this + 9465376);
  v5 = 31;
  do
  {
    *(v4 - 2) = v2;
    *(v4 - 1) = v3;
    *v4 = 0uLL;
    v4[1] = 0uLL;
    v4[2] = 0uLL;
    v4[3] = 0uLL;
    v4[4] = 0uLL;
    v4[5] = 0uLL;
    v4[6] = 0uLL;
    v4[7] = 0uLL;
    v4[8] = 0uLL;
    v4[9] = 0uLL;
    v4[10] = 0uLL;
    v4[11] = 0uLL;
    v4[12] = 0uLL;
    v4[13] = 0uLL;
    v4[14] = 0uLL;
    v4[15] = 0uLL;
    v4[16] = 0uLL;
    v4[17] = 0uLL;
    v4[18] = 0uLL;
    v4[19] = 0uLL;
    v4[20] = 0uLL;
    v4[21] = 0uLL;
    v4[22] = 0uLL;
    v4[23] = 0uLL;
    v4[24] = 0uLL;
    v4[25] = 0uLL;
    v4[26] = 0uLL;
    v4[27] = 0uLL;
    v4 += 30;
    --v5;
  }

  while (v5);
  for (i = 0; i != 5; ++i)
  {
    v7 = 0;
    v8 = flt_23B253370[i];
    do
    {
      result = 0;
      v10 = flt_23B253384[v7];
      v11 = 1;
      do
      {
        v12 = v11;
        v13 = &v1[960 * v7 + 480 * ((6 * i) | 1) + 480 * result];
        *(v13 + 4) = v8;
        v14 = flt_23B253328[result];
        *(v13 + 5) = 0;
        *(v13 + 6) = v10;
        *(v13 + 7) = v14;
        result = 1;
        v11 = 0;
      }

      while ((v12 & 1) != 0);
      ++v7;
    }

    while (v7 != 3);
  }

  return result;
}

void apple::vision::libraries::facecore::mod::aam::AamSearch::CalcPriorsQuad(apple::vision::libraries::facecore::mod::aam::AamSearch *this, int a2)
{
  v47 = *MEMORY[0x277D85DE8];
  apple::vision::libraries::facecore::mod::aam::AamSearch::GetSearchTextureStd(this, a2, &v37);
  apple::vision::libraries::facecore::mod::aam::AamSearch::GetShapeStd(this, &v35);
  v4 = (this + 7847152);
  memset_pattern16(&__b, &unk_23B253340, 0x20uLL);
  memset_pattern16(v40, &unk_23B253350, 0xD0uLL);
  v34 = vdupq_n_s64(0x3FB999999999999AuLL);
  v40[0] = v34;
  v40[1] = v34;
  memset_pattern16(v41, &unk_23B253350, 0x190uLL);
  v41[0] = v34;
  v41[1] = v34;
  memset_pattern16(v46, &unk_23B253360, 0x20uLL);
  v5 = 0;
  v6 = *(this + 16726);
  v42 = v6;
  v7 = *(this + 133816);
  v43 = v7;
  v44 = *(this + 16729);
  v8 = v35;
  v9 = (v36 - v35) >> 3;
  do
  {
    if (v9 == v5)
    {
      std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
    }

    *&v46[8 * v5 + 32] = *&v8[8 * v5];
    v45[v5] = *(this + v5 + 16730);
    ++v5;
  }

  while (v5 != 26);
  v10 = 0;
  v11 = v37;
  v12 = (v38 - v37) >> 3;
  do
  {
    if (v12 == v10)
    {
      std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
    }

    *&v46[8 * v10 + 240] = *&v11[8 * v10];
    *&v45[v10 + 26] = *(this + v10 + 33512);
    ++v10;
  }

  while (v10 != 30);
  v13 = -480;
  v14 = vdupq_n_s64(0x3DDB7CDFD9D7BDBBuLL);
  __asm { FMOV            V3.2D, #-2.0 }

  do
  {
    v20 = *&v46[v13 + 480];
    v21 = vcgtq_f64(v14, vabsq_f64(v20));
    v22 = vmovn_s64(v21);
    if (v22.i8[0])
    {
      *&v46[v13 + 480] = 0x3DDB7CDFD9D7BDBBLL;
    }

    if (v22.i8[4])
    {
      *&v46[v13 + 488] = 0x3DDB7CDFD9D7BDBBLL;
    }

    v23 = vbslq_s8(v21, v14, v20);
    v24 = vsubq_f64(vdivq_f64(*(&v45[56] + v13), v23), *(this + v13 + 9464864));
    v25 = *(&v41[15] + v13);
    v26 = vmulq_f64(v25, v24);
    *v4++ = vcvt_f32_f64(vmulq_f64(v26, v26));
    *(&v41[55] + v13) = vmulq_f64(v24, vdivq_f64(vmulq_f64(vmulq_f64(v25, v25), _Q3), v23));
    v13 += 16;
  }

  while (v13);
  v27 = this + 14400 * a2 + 7717552;
  v28 = this + 7775152;
  do
  {
    for (i = 0; i != 60; ++i)
    {
      v30 = *(&v41[25] + i);
      *&v28[4 * i] = *&v27[4 * i] * v30;
    }

    ++v13;
    v27 += 240;
    v28 += 240;
  }

  while (v13 != 60);
  v31 = 0;
  v32 = v6;
  do
  {
    *(this + v31 + 7775152) = *(this + v31 + 7775152) * v32;
    v31 += 244;
  }

  while (v31 != 976);
  v33 = *&v7;
  *(this + 1943789) = *(this + 1943789) * v33;
  *(this + 1943848) = *(this + 1943848) * v33;
  if (v8)
  {
    v36 = v8;
    operator delete(v8);
    v11 = v37;
  }

  if (v11)
  {
    v38 = v11;
    operator delete(v11);
  }
}

void sub_23AD90300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *apple::vision::libraries::facecore::mod::aam::AamSearch::GetPriorsConstants(apple::vision::libraries::facecore::mod::aam::AamSearch *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v63 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 133808);
  v3 = *(v1 + 133816);
  *(v1 + 133792) = sqrt(v2 * v2 + v3 * v3);
  *(v1 + 133800) = atan(v3 / v2) * 180.0 / 3.14159265;
  bzero(v57, 0x3F0uLL);
  bzero(v56, 0x3F0uLL);
  bzero(v55, 0x3F0uLL);
  v4 = 0;
  v5 = (v1 + 103344);
  v53 = v1 + 7789552;
  v6 = v1 + 7796872;
  v7 = 5;
  v49 = vdupq_n_s64(0x1EuLL);
  v48 = vdupq_n_s64(4uLL);
  do
  {
    v50 = v6;
    v51 = v4;
    v8 = (v53 + 14400 * v4);
    v52 = v7;
    apple::vision::libraries::facecore::mod::aam::AamSearch::setLod(v1, v7);
    apple::vision::libraries::facecore::mod::aam::AffineWarp::UpdateWarpTable(v1 + 34656, v1 + 8);
    bzero(v8, 0x3840uLL);
    v9 = 0;
    v10 = 103344;
    do
    {
      memcpy(__dst, &v5[1008 * v9], sizeof(__dst));
      memcpy(v58, (v1 + 2024), sizeof(v58));
      for (i = 0; i != 63; ++i)
      {
        v58[i] = vsubq_f64(v58[i], *&__dst[i * 16]);
      }

      memcpy(v57, v58, sizeof(v57));
      apple::vision::libraries::facecore::mod::aam::AffineWarp::WarpVertices(v1 + 34656, v57, v58);
      memcpy(v56, v58, sizeof(v56));
      v12 = 0;
      v13 = 0.0;
      do
      {
        v13 = v13 + *(v1 + v10 + v12 + 8) * *&v56[v12 + 8] + *(v1 + v10 + v12) * *&v56[v12];
        v12 += 16;
      }

      while (v12 != 1008);
      *(&v59 + v9++) = v13;
      v10 += 1008;
    }

    while (v9 != 4);
    v14 = v60;
    v15 = *(v1 + 133808);
    v16 = *(v1 + 133816);
    v17 = (v59 - v15) / v15;
    v18 = (v53 + 14400 * (v52 - 5));
    *v18 = v17;
    v19 = (v14 - v16) / v15;
    v18[61] = v19;
    v20 = v62;
    v21 = *(v1 + 133832);
    v22 = (v61 - *(v1 + 133824)) / v15;
    v18[122] = v22;
    v23 = (v20 - v21) / v15;
    v18[183] = v23;
    memcpy(__dst, v5, sizeof(__dst));
    memcpy(v58, (v1 + 2024), sizeof(v58));
    for (j = 0; j != 63; ++j)
    {
      v58[j] = vsubq_f64(v58[j], *&__dst[j * 16]);
    }

    memcpy(v57, v58, sizeof(v57));
    apple::vision::libraries::facecore::mod::aam::AffineWarp::WarpVertices(v1 + 34656, v57, v58);
    memcpy(v56, v58, sizeof(v56));
    v25 = 0.0;
    v26 = (v1 + 104360);
    v27 = &v56[8];
    v28 = 63;
    do
    {
      v25 = v25 + *v26 * *v27 + *(v26 - 1) * *(v27 - 1);
      v27 += 2;
      v26 += 2;
      --v28;
    }

    while (v28);
    v60 = v25;
    v29 = (v25 - *(v1 + 133816)) / *(v1 + 133816);
    v18[1] = v29;
    memcpy(__dst, (v1 + 104352), sizeof(__dst));
    memcpy(v58, (v1 + 2024), sizeof(v58));
    for (k = 0; k != 63; ++k)
    {
      v58[k] = vsubq_f64(v58[k], *&__dst[k * 16]);
    }

    memcpy(v57, v58, sizeof(v57));
    apple::vision::libraries::facecore::mod::aam::AffineWarp::WarpVertices(v1 + 34656, v57, v58);
    memcpy(v56, v58, sizeof(v56));
    v31 = 0.0;
    v32 = (v1 + 103352);
    v33 = &v56[8];
    v34 = 63;
    do
    {
      v31 = v31 + *v32 * *v33 + *(v32 - 1) * *(v33 - 1);
      v33 += 2;
      v32 += 2;
      --v34;
    }

    while (v34);
    v35 = 0;
    v59 = v31;
    v36 = (v31 - *(v1 + 133808)) / *(v1 + 133816);
    v18[60] = v36;
    v37 = v1 + 107376;
    do
    {
      memcpy(__dst, (v1 + 107376 + 1008 * v35), sizeof(__dst));
      memcpy(v58, (v1 + 2024), sizeof(v58));
      for (m = 0; m != 63; ++m)
      {
        v58[m] = vsubq_f64(v58[m], *&__dst[m * 16]);
      }

      memcpy(v57, v58, sizeof(v57));
      apple::vision::libraries::facecore::mod::aam::AffineWarp::WarpVertices(v1 + 34656, v57, v58);
      memcpy(v56, v58, sizeof(v56));
      apple::vision::libraries::facecore::mod::aam::AamSearch::InverseTransformShape(v1, v56, __dst);
      memcpy(v58, __dst, sizeof(v58));
      for (n = 0; n != 63; ++n)
      {
        v58[n] = vsubq_f64(v58[n], *(v1 + 3032 + n * 16));
      }

      result = memcpy(v55, v58, sizeof(v55));
      v41 = 0;
      v42 = 0.0;
      do
      {
        v42 = v42 + *(v37 + v41 + 8) * *&v55[v41 + 8] + *(v37 + v41) * *&v55[v41];
        v41 += 16;
      }

      while (v41 != 1008);
      v43 = v42;
      *(v53 + 14400 * (v52 - 5) + 240 * (v35 + 4) + 4 * (v35 + 4)) = v43;
      ++v35;
      v37 += 1008;
    }

    while (v35 != 26);
    v44 = v50;
    v45 = 32;
    v46 = xmmword_23B251FC0;
    v47 = xmmword_23B253330;
    v5 = (v1 + 103344);
    do
    {
      if (vuzp1_s16(vmovn_s64(vcgtq_u64(v49, v46)), *v46.i8).u8[0])
      {
        *v44 = 1065353216;
      }

      if (vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v46)), *&v46).i8[2])
      {
        v44[61] = 1065353216;
      }

      if (vuzp1_s16(*&v46, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x1EuLL), *&v47))).i32[1])
      {
        v44[122] = 1065353216;
        v44[183] = 1065353216;
      }

      v47 = vaddq_s64(v47, v48);
      v46 = vaddq_s64(v46, v48);
      v44 += 244;
      v45 -= 4;
    }

    while (v45);
    v7 = v52 + 1;
    v4 = v51 + 1;
    v6 = (v50 + 3600);
  }

  while (v51 != 3);
  return result;
}

void apple::vision::libraries::facecore::processing::ProcessingChain::appendElement(void *a1, uint64_t a2)
{
  v5 = a1[2];
  v4 = a1[3];
  if (v5 >= v4)
  {
    v7 = a1[1];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v7;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::processing::detection::IntegralImage *>>((a1 + 1), v11);
    }

    v12 = (8 * v8);
    *v12 = a2;
    v6 = 8 * v8 + 8;
    v13 = a1[1];
    v14 = a1[2] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[1];
    a1[1] = v15;
    a1[2] = v6;
    a1[3] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = a2;
    v6 = (v5 + 1);
  }

  a1[2] = v6;
}

uint64_t apple::vision::libraries::facecore::processing::ProcessingChain::performProcessing(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (((*(result + 16) - v2) >> 3) >= 1)
  {
    v4 = result;
    v5 = 0;
    do
    {
      result = (*(**(v2 + 8 * v5) + 8))(*(v2 + 8 * v5), a2);
      ++v5;
      v2 = *(v4 + 8);
    }

    while (v5 < ((*(v4 + 16) - v2) >> 3));
  }

  return result;
}

void *apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager::KeypointTrackerManager(void *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0;
  *a1 = &unk_284DF3EA8;
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::getPoints((a1 + 9));
  a1[5] = a2;
  a1[4] = 0xFFFFFFFF00000000;
  return a1;
}

void sub_23ADDDD04(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    v1[7] = v5;
    operator delete(v5);
  }

  *v1 = v2;
  v6 = v1[1];
  if (v6)
  {
    v1[2] = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager::~KeypointTrackerManager(apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager *this)
{
  *this = &unk_284DF3EA8;
  v2 = *(this + 6);
  v3 = *(this + 7);
  if (((v3 - v2) >> 3) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(v2 + 8 * v4);
      if (v5)
      {
        apple::vision::libraries::facecore::processing::tracking::KeypointTracker::~KeypointTracker(v5);
        MEMORY[0x23EE98360]();
        v2 = *(this + 6);
        v3 = *(this + 7);
      }

      ++v4;
    }

    while (v4 < ((v3 - v2) >> 3));
  }

  *(this + 7) = v2;
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::getPoints((this + 72));
  v6 = *(this + 6);
  if (v6)
  {
    *(this + 7) = v6;
    operator delete(v6);
  }

  *this = &unk_284DF3F08;
  v7 = *(this + 1);
  if (v7)
  {
    *(this + 2) = v7;
    operator delete(v7);
  }
}

uint64_t apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager::trackCrop(apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager *this, apple::vision::libraries::facecore::processing::tracking::KeypointTracker *a2, const image *a3)
{
  CurrentCrop = apple::vision::libraries::facecore::processing::tracking::KeypointTracker::getCurrentCrop(a2);
  apple::vision::libraries::facecore::processing::tracking::KeypointTracker::track(a2, a3, CurrentCrop);
  if (*(a2 + 54))
  {
    v6 = *(a2 + 25);
    v7 = *(a2 + 18);
    if (v6 < v7 || v7 + v6 >= a3->var1 || (v8 = *(a2 + 26), v8 < v7) || v8 + v7 >= a3->var2)
    {
      *(a2 + 54) = 0;
    }
  }

  ++*a2;
  ++*(a2 + 29);
  return a2 + 72;
}

apple::vision::libraries::facecore::processing::tracking::KeypointTracker *apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager::deleteTrackerAtIndex(apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager *this, int a2)
{
  v3 = a2;
  v4 = *(this + 6);
  result = *(v4 + 8 * a2);
  if (result)
  {
    apple::vision::libraries::facecore::processing::tracking::KeypointTracker::~KeypointTracker(result);
    result = MEMORY[0x23EE98360]();
    v4 = *(this + 6);
  }

  v6 = v4 + 8 * v3;
  v7 = *(this + 7);
  v8 = v7 - (v6 + 8);
  if (v7 != v6 + 8)
  {
    result = memmove(v6, (v6 + 8), v7 - (v6 + 8));
  }

  *(this + 7) = v6 + v8;
  return result;
}

uint64_t apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager::loopThroughDetectedFacesToFindAPotentialOverlap(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4)
{
  if ((1749801491 * ((*(a2 + 8) - *a2) >> 3)) < 1)
  {
    v39 = 0;
  }

  else
  {
    v39 = 0;
    v8 = 0;
    do
    {
      CurrentCrop = apple::vision::libraries::facecore::processing::tracking::KeypointTracker::getCurrentCrop(*(*(a1 + 48) + 8 * *a3));
      v10 = CurrentCrop[3];
      v12 = *CurrentCrop;
      v11 = CurrentCrop[1];
      v43 = CurrentCrop[2];
      v44 = v10;
      v41 = v12;
      v42 = v11;
      apple::vision::libraries::facecore::FaceInternal::FaceInternal(v40, *a2 + 216 * v8);
      if (apple::vision::libraries::facecore::utils::aev::AEVOverlappingUtils::computeSymetricFaceOverlap(v13, v41 + v42, v41 + SDWORD1(v42), v41, v40[7], v40[8], v40[0]) > 0.2)
      {
        v14 = v8 >> 6;
        if ((*(*a4 + 8 * v14) & (1 << v8)) != 0)
        {
          std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal *,apple::vision::libraries::facecore::FaceInternal *,apple::vision::libraries::facecore::FaceInternal *>(&v46, (*a2 + 216 * v8 + 216), *(a2 + 8), *a2 + 216 * v8);
          v16 = v15;
            ;
          }

          *(a2 + 8) = v16;
          v18 = v8 - 63;
          if (v8 < 63)
          {
            v18 = v8;
          }

          v19 = v18 >> 6;
          if (v8 < 0)
          {
            v20 = v19;
          }

          else
          {
            v20 = v8 >> 6;
          }

          v22 = *a4;
          v21 = a4[1];
          v23 = *a4 + 8 * v20;
          v24 = v8 & 0x3F;
          v25 = v20 << 6;
          v26 = v24 + (v20 << 6);
          if (v26 - 63 >= 0)
          {
            v26 -= 63;
          }

          v27 = v26 >> 6;
          v28 = v20 & 0x3FFFFFFFFFFFFFFLL;
          if (v25 < 0)
          {
            v28 = v27;
          }

          v29 = v22 + 8 * v28;
          v30 = (v24 + 1) & 0x3F;
          v31 = ((v24 + 1) >> 3) & 8;
          v32 = v22 + 8 * (v21 >> 6);
          v46 = v29;
          v47 = v8 & 0x3F;
          if (v24 == v30)
          {
            std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>((v31 + v23), v30, v32, v21 & 0x3F, &v46, v45);
          }

          else
          {
            std::__copy_unaligned[abi:ne200100]<std::vector<BOOL>,true>((v31 + v23), v30, v32, v21 & 0x3F, &v46, v45);
          }

          --v8;
          --a4[1];
        }

        else
        {
          v33 = apple::vision::libraries::facecore::processing::tracking::KeypointTracker::getCurrentCrop(*(*(a1 + 48) + 8 * *a3));
          apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::generateCropWithFace(v33, (*a2 + 216 * v8));
          apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::updateFaceWithCrop(v33, *a2 + 216 * v8);
          v34 = *(a1 + 48);
          v35 = *a2 + 216 * v8;
          *(v35 + 40) = *(*(v34 + 8 * *a3) + 112);
          v36 = *(v34 + 8 * *a3);
          v37 = *(v36 + 116) + 1;
          *(v36 + 116) = v37;
          *(v35 + 44) = v37;
          apple::vision::libraries::facecore::FaceInternal::operator=(*(v34 + 8 * *a3) + 72, v35);
          *(*a4 + 8 * v14) |= 1 << v8;
          v39 = 1;
        }
      }

      apple::vision::libraries::facecore::Face::~Face(v40);
      apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::~KCropImage(&v41);
      ++v8;
    }

    while (v8 < (1749801491 * ((*(a2 + 8) - *a2) >> 3)));
  }

  return v39 & 1;
}

void sub_23ADDE2F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  apple::vision::libraries::facecore::Face::~Face(va);
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::~KCropImage((v2 - 208));
  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager::loopThroughOverlapFacesToAddNewKeypointTrackes(uint64_t a1, void *a2)
{
  v2 = a2[1];
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      if (((*(*a2 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager::createFaceKeypointTracker();
      }

      ++v4;
      v3 += 216;
    }

    while (v4 < v2);
  }
}

void apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager::performProcessing(apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager *this, image *a2)
{
  var0 = a2[8].var0;
  v4 = *&a2[8].var1;
  v5 = &a2[8];
  while (v4 != var0)
  {
    apple::vision::libraries::facecore::Face::~Face((v4 - 216));
  }

  *&a2[8].var1 = var0;
  v7 = *(this + 9);
  if (*(this + 7) == *(this + 6))
  {
    if (v7 == -1 || v7 >= 5)
    {
      *(this + 9) = 0;
      (*(**(this + 5) + 8))(*(this + 5), a2);
      if ((1749801491 * ((*&a2[8].var1 - a2[8].var0) >> 3)) >= 1)
      {
        apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager::createFaceKeypointTracker();
      }
    }
  }

  else if (v7 >= a2[2].var1)
  {
    apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager::performRefining(this, v5, a2 + 6, a2);
  }

  else
  {
    apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager::performTracking(this, a2 + 6, a2);
  }

  v10 = a2[8].var0;
    ;
  }

  *&a2[8].var1 = v10;
  v11 = *(this + 6);
  if (((*(this + 7) - v11) >> 3) >= 1)
  {
    v12 = 0;
    do
    {
      std::vector<apple::vision::libraries::facecore::FaceInternal>::push_back[abi:ne200100](v5, *(v11 + 8 * v12++) + 72);
      v11 = *(this + 6);
    }

    while (v12 < ((*(this + 7) - v11) >> 3));
  }

  ++*(this + 9);
}

apple::vision::libraries::facecore::processing::tracking::KeypointTracker *apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager::performTracking(apple::vision::libraries::facecore::processing::tracking::KeypointTracker *this, const image *a2, apple::vision::libraries::facecore::FaceCoreContext *a3)
{
  v3 = *(this + 6);
  if (((*(this + 7) - v3) >> 3) >= 1)
  {
    v6 = this;
    v7 = 0;
    do
    {
      this = apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager::trackCrop(this, *(v3 + 8 * v7), a2);
      if (*(this + 36))
      {
        if (*(a3 + 44) == 1)
        {
          apple::vision::libraries::facecore::processing::detection::histogram::FaceHistogram::GetFaceHistogram(a2->var0, a2->var1, a2->var2, 1, *(this + 7), *(this + 8), *this, &__p, *(this + 26), *(this + 1), *(this + 2), *(this + 3), *(this + 4), *(this + 5), *(this + 6));
        }
      }

      else if (*(a3 + 60) == 1)
      {
        this = apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager::deleteTrackerAtIndex(v6, v7--);
      }

      ++v7;
      v3 = *(v6 + 6);
    }

    while (v7 < ((*(v6 + 7) - v3) >> 3));
  }

  return this;
}

void sub_23ADDE6CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager::performRefining(uint64_t a1, uint64_t *a2, const image *a3, uint64_t a4)
{
  *(a1 + 36) = 0;
  (*(**(a1 + 40) + 8))(*(a1 + 40), a4);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal*,apple::vision::libraries::facecore::FaceInternal*>(&v18, *a2, a2[1], 0x84BDA12F684BDA13 * ((a2[1] - *a2) >> 3));
  v9 = *a2;
    ;
  }

  a2[1] = v9;
  std::vector<BOOL>::vector(__p, 0x84BDA12F684BDA13 * ((v19 - v18) >> 3));
  v16 = 0;
  if (((*(a1 + 56) - *(a1 + 48)) >> 3) >= 1)
  {
    v10 = 0;
    do
    {
      APotentialOverlap = apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager::loopThroughDetectedFacesToFindAPotentialOverlap(a1, &v18, &v16, __p);
      if ((APotentialOverlap & 1) == 0)
      {
        v12 = *(*(a1 + 48) + 8 * v10);
        v13 = *v12 + 1;
        *v12 = v13;
        if (v13 >= *(a4 + 36) || !*(apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager::trackCrop(APotentialOverlap, v12, a3) + 144))
        {
          apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager::deleteTrackerAtIndex(a1, v10--);
        }
      }

      v16 = ++v10;
    }

    while (v10 < ((*(a1 + 56) - *(a1 + 48)) >> 3));
  }

  apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager::loopThroughOverlapFacesToAddNewKeypointTrackes(a1, __p);
  v14 = *(a1 + 48);
  if (((*(a1 + 56) - v14) >> 3) >= 1)
  {
    v15 = 0;
    do
    {
      std::vector<apple::vision::libraries::facecore::FaceInternal>::push_back[abi:ne200100](a2, *(v14 + 8 * v15++) + 72);
      v14 = *(a1 + 48);
    }

    while (v15 < ((*(a1 + 56) - v14) >> 3));
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  __p[0] = &v18;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_23ADDE8C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, uint64_t a13, char a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  __p = &a14;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

unint64_t *std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t *__src@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a4 - a2 + 8 * (a3 - __src);
  if (v8 <= 0)
  {
    v16 = *a5;
  }

  else
  {
    v9 = __src;
    __src = *a5;
    if (a2)
    {
      if (v8 >= (64 - a2))
      {
        v10 = 64 - a2;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v10)) & (-1 << a2);
      v12 = v10 + *(a5 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a5 = __src;
      *(a5 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a5;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a5 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a5 + 8) = v15;
    }
  }

  *a6 = v16;
  *(a6 + 8) = *(a5 + 8);
  return __src;
}

unint64_t *std::__copy_unaligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a4 - a2 + 8 * (a3 - result);
  if (v6 <= 0)
  {
    v18 = *a5;
    v19 = *(a5 + 8);
  }

  else
  {
    if (a2)
    {
      v7 = a2;
      if (v6 >= (64 - a2))
      {
        v8 = 64 - a2;
      }

      else
      {
        v8 = a4 - a2 + 8 * (a3 - result);
      }

      v6 -= v8;
      v9 = (0xFFFFFFFFFFFFFFFFLL >> (64 - a2 - v8)) & (-1 << a2) & *result;
      v10 = *(a5 + 8);
      if (v8 >= (64 - v10))
      {
        v11 = (64 - v10);
      }

      else
      {
        v11 = v8;
      }

      v12 = *a5;
      v13 = v9 >> (a2 - v10);
      v14 = v10 >= a2;
      v16 = v10 - a2;
      v15 = v16 != 0 && v14;
      v17 = v9 << v16;
      if (!v15)
      {
        v17 = v13;
      }

      *v12 = **a5 & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v10 - v11)) & (-1 << v10)) | v17;
      v18 = (v12 + (((v11 + v10) >> 3) & 0x3FFFFFF8));
      *a5 = v18;
      v19 = (v10 + v11) & 0x3F;
      *(a5 + 8) = v19;
      v20 = v8 - v11;
      if (v20 >= 1)
      {
        *v18 = *v18 & ~(0xFFFFFFFFFFFFFFFFLL >> -v20) | (v9 >> (v11 + v7));
        *(a5 + 8) = v20;
        v19 = v20;
      }

      ++result;
    }

    else
    {
      v19 = *(a5 + 8);
      v18 = *a5;
    }

    v21 = 64 - v19;
    v22 = -1 << v19;
    if (v6 >= 64)
    {
      v23 = *v18;
      do
      {
        v24 = v6;
        v26 = *result++;
        v25 = v26;
        *v18 = v23 & ~v22 | (v26 << v19);
        v27 = v18[1];
        ++v18;
        v23 = v27 & v22 | (v25 >> v21);
        *v18 = v23;
        v6 = v24 - 64;
      }

      while (v24 > 0x7F);
      *a5 = v18;
    }

    if (v6 >= 1)
    {
      v28 = *result & (0xFFFFFFFFFFFFFFFFLL >> -v6);
      if (v6 >= v21)
      {
        v29 = 64 - v19;
      }

      else
      {
        v29 = v6;
      }

      *v18 = *v18 & ~((0xFFFFFFFFFFFFFFFFLL >> (v21 - v29)) & v22) | (v28 << v19);
      v18 = (v18 + (((v29 + v19) >> 3) & 0x3FFFFFF8));
      *a5 = v18;
      v19 = (v19 + v29) & 0x3F;
      *(a5 + 8) = v19;
      v30 = v6 - v29;
      if (v30 >= 1)
      {
        *v18 = *v18 & ~(0xFFFFFFFFFFFFFFFFLL >> -v30) | (v28 >> v29);
        *(a5 + 8) = v30;
        v19 = v30;
      }
    }
  }

  *a6 = v18;
  *(a6 + 8) = v19;
  return result;
}

uint64_t std::vector<apple::vision::libraries::facecore::FaceInternal>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal*,apple::vision::libraries::facecore::FaceInternal*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<apple::vision::libraries::facecore::FaceInternal>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23ADDECA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a1, v2);
  }

  std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

char *generateFeaturesForEyeCrop(apple::vision::libraries::facecore::utils::aev::AEVGImage *a1, double **a2, int *a3)
{
  apple::vision::libraries::facecore::utils::aev::AEVGImage::equalizeHistogram(a1);
  apple::vision::libraries::facecore::utils::aev::AEVGImage::performGammaCorrection(a1, 0.5);

  return apple::vision::libraries::facecore::utils::aev::AEVFeaturesGenerationUtils::generateFeaturesVector(a2, a3, a1, 0, 0, 1);
}

void computeBlinkPredictionForEye(apple::vision::libraries::facecore::utils::aev::AEVGImage *this, CGPoint *a2, int a3, int a4, float a5, apple::vision::libraries::facecore::utils::aev::AEVLinearSVMModel *a6, char *a7)
{
  v7 = 4 * a3 + 3;
  if ((a3 & 0x20000000) == 0)
  {
    v7 = 4 * a3;
  }

  v8.height = (4 * a4 / 4);
  v9.width = 48.0;
  v9.height = 42.0;
  v8.width = (v7 >> 2);
  apple::vision::libraries::facecore::utils::aev::AEVGImage::getImageRescaledAndRotatedAroundCenter(this, *a2, a5, v8, v9);
}

void apple::vision::libraries::facecore::mod::smileandblink::BlinkDetector::detectBlink(apple::vision::libraries::facecore::mod::smileandblink::BlinkDetector *this, image *a2, apple::vision::libraries::facecore::Face *a3)
{
  var0_high = HIDWORD(a2->var0);
  var1 = a2->var1;
  var2 = a2->var2;
  var0 = a2[1].var0;
  v7 = -(var0 - var1);
  if (var0 >= var1)
  {
    v7 = (var0 - var1);
  }

  if (v7 > 0.0)
  {
    v8 = var0_high - var2;
    if (var0_high - var2 < 0)
    {
      v8 = var2 - var0_high;
    }

    atanf((var0 - var1) / v8);
  }

  operator new();
}

void apple::vision::libraries::facecore::mod::filters::basic_smoothing(apple::vision::libraries::facecore::mod::filters *this, float *a2, const float *a3, int a4, double a5)
{
  v6 = a3;
  v8 = a5;
  deriche_gradient<float>(a2, this, a3, a4, 0, 120, 1, v8);

  deriche_gradient<float>(this, this, v6, a4, 0, 121, 1, v8);
}

void deriche_gradient<float>(uint64_t a1, uint64_t a2, unsigned int a3, int a4, unsigned int a5, int a6, int a7, float a8)
{
  if (a8 < 0.0 || a5 >= 3)
  {
    printf("deriche() : Bad arguments (sigma=%g, order=%d)", a8, a5);
  }

  if (a8 >= 0.01)
  {
    v17 = 0.0;
    if (a8 <= 0.0)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = 1.695 / a8;
    }

    v19 = expf(v18);
    v20 = expf(-v18);
    v21 = v20 * v20;
    if (a5 == 2)
    {
      v35 = (((((v19 * 3.0) + -1.0) - ((v19 * 3.0) * v19)) + ((v19 * v19) * v19)) * -2.0) / ((((v19 * 3.0) + 1.0) + ((v19 * 3.0) * v19)) + ((v19 * v19) * v19));
      v41 = -(v21 + -1.0) / ((v18 + v18) * v20);
      v36 = v20 * -(v35 * ((v41 * v18) + 1.0));
      v111 = 1.0;
      v37 = v20 * ((1.0 - (v41 * v18)) * v35);
      v38 = -(v35 * v21);
      if (a7)
      {
        v39 = v35;
      }

      else
      {
        v39 = 0.0;
      }

      if (a7)
      {
        v40 = v35 * 0.5;
      }

      else
      {
        v40 = 0.0;
      }

      if (a7)
      {
        v17 = v35 + (v35 * 0.5);
      }
    }

    else
    {
      v22 = 1.0;
      v23 = 1.0 - v20;
      v24 = (v23 * v23) / ((((v18 + v18) * v20) + 1.0) - v21);
      v25 = -(v24 * v21);
      v26 = (v19 + -1.0) * (v19 + -1.0);
      v27 = (((v19 + (v18 * v19)) + -1.0) * v24) / v26;
      v28 = v24 + v27;
      if (a7)
      {
        v29 = v24;
      }

      else
      {
        v29 = 0.0;
      }

      if (!a7)
      {
        v27 = 0.0;
        v28 = 0.0;
      }

      v30 = (v23 * -(v23 * v23)) / (v20 * ((v20 + 1.0) + (v20 + 1.0)));
      v31 = v20 * v30;
      v32 = -(v30 * v20);
      v33 = (v19 * v30) / v26;
      v34 = v33 + 0.0;
      if (!a7)
      {
        v33 = 0.0;
        v34 = 0.0;
      }

      if (a5 == 1)
      {
        v22 = -1.0;
      }

      v111 = v22;
      if (a5 == 1)
      {
        v35 = 0.0;
      }

      else
      {
        v35 = v24;
      }

      if (a5 == 1)
      {
        v36 = v31;
      }

      else
      {
        v36 = (v18 + -1.0) * (v20 * v24);
      }

      if (a5 == 1)
      {
        v37 = v32;
      }

      else
      {
        v37 = (v18 + 1.0) * (v20 * v24);
      }

      if (a5 == 1)
      {
        v38 = 0.0;
      }

      else
      {
        v38 = v25;
      }

      if (a5 == 1)
      {
        v39 = 0.0;
      }

      else
      {
        v39 = v29;
      }

      if (a5 == 1)
      {
        v40 = v33;
      }

      else
      {
        v40 = v27;
      }

      if (a5 == 1)
      {
        v17 = v34;
      }

      else
      {
        v17 = v28;
      }
    }

    v42 = v20 + v20;
    v110 = -(v20 * v20);
    if (a3 <= a4)
    {
      v43 = a4;
    }

    else
    {
      v43 = a3;
    }

    std::vector<double>::vector[abi:ne200100](__p, v43);
    v44 = __p[0];
    if (a6 == 121)
    {
      if (a3 >= 2 && a4 >= 1)
      {
        v76 = 0;
        v77 = 0;
        v78 = a2 + 8;
        v79 = v42;
        v80 = v110;
        v81 = v111 * v40;
        v82 = a1 + 8;
        v83 = __p[0];
        do
        {
          v84 = (a1 + 4 * v77 * a3);
          v85 = *v84;
          v86 = (v17 * *v84);
          v87 = ((v40 * *v84) + (v39 * v84[1]));
          v88 = v83 + 2;
          *v83 = v86;
          v83[1] = v87;
          if (a3 == 2)
          {
            v89 = v84 + 2;
            v90 = v78 + 8 * v77;
          }

          else
          {
            v91 = a3 - 2;
            v92 = v76;
            do
            {
              v93 = *(v82 + v92);
              v94 = ((v36 * v85) + (v35 * v93)) + v79 * v87 + v80 * v86;
              *v88++ = v94;
              v92 += 4;
              v86 = v87;
              v87 = v94;
              v85 = v93;
              --v91;
            }

            while (v91);
            v90 = v78 + v92;
            v89 = (v82 + v92);
          }

          v95 = *(v89 - 1);
          v96 = (v81 * v95);
          v97 = *(v88 - 2);
          v83 = v88 - 2;
          v98 = *(v88 - 1) + v96;
          *(v90 - 4) = v98;
          v99 = *(v89 - 2);
          *&v97 = v97 + v96;
          *(v90 - 8) = LODWORD(v97);
          if (a3 != 2)
          {
            v100 = v88 - 3;
            v101 = (v90 - 12);
            v102 = v89 - 3;
            v103 = a3 - 2;
            v104 = (v81 * v95);
            do
            {
              v105 = ((v38 * v95) + (v37 * v99)) + v79 * v104 + v80 * v96;
              v106 = *v102--;
              v107 = v106;
              v108 = *v100--;
              v109 = v105 + v108;
              *v101-- = v109;
              v95 = v99;
              --v103;
              v96 = v104;
              v104 = v105;
              v99 = v107;
            }

            while (v103 > 0);
            v83 = v100 + 1;
          }

          ++v77;
          v76 += 4 * a3;
        }

        while (v77 != a4);
      }
    }

    else if (a6 == 120 && a4 >= 2 && a3 >= 1)
    {
      v45 = 0;
      v46 = v42;
      v47 = v110;
      v48 = v111 * v40;
      v49 = 4 * a3;
      v50 = 0;
      v51 = __p[0];
      do
      {
        v52 = (a1 + 4 * v50);
        v53 = *v52;
        v54 = v52[a3];
        v55 = (v17 * *v52);
        v56 = ((v40 * *v52) + (v39 * v54));
        v57 = v51 + 2;
        *v51 = v55;
        v51[1] = v56;
        if (a4 < 3)
        {
          v62 = (a2 + 4 * v50);
          v63 = &v62[a3];
        }

        else
        {
          v58 = a4 - 2;
          v59 = v45;
          do
          {
            v60 = v36 * v53;
            v53 = *(a1 + 8 * a3 + v59);
            v61 = (v60 + (v35 * v53)) + v46 * v56 + v47 * v55;
            *v57++ = v61;
            v59 += v49;
            v55 = v56;
            v56 = v61;
            --v58;
          }

          while (v58);
          v62 = (a2 + v59);
          v63 = (a2 + 4 * a3 + v59);
          v52 = (a1 + v59);
          v54 = v53;
        }

        v64 = (v48 * v54);
        v65 = *(v57 - 2);
        v51 = v57 - 2;
        v66 = *(v57 - 1) + v64;
        *v63 = v66;
        v67 = *v52;
        *&v65 = v65 + v64;
        *v62 = LODWORD(v65);
        if (a4 >= 3)
        {
          v68 = v57 - 3;
          v69 = a4 - 2;
          v70 = -4 * a3;
          v71 = (v48 * v54);
          do
          {
            v72 = ((v38 * v54) + (v37 * v67)) + v46 * v71 + v47 * v64;
            v73 = *(v52 + v70);
            v74 = *v68--;
            v75 = v72 + v74;
            *(v62 + v70) = v75;
            v54 = v67;
            v70 -= v49;
            v64 = v71;
            v71 = v72;
            v67 = v73;
            --v69;
          }

          while (v69);
          v51 = v68 + 1;
        }

        ++v50;
        v45 += 4;
      }

      while (v50 != a3);
    }

    if (v44)
    {
      __p[1] = v44;
      operator delete(v44);
    }
  }
}

double apple::vision::libraries::facecore::utils::aev::AEVOverlappingUtils::computeAsymetricFaceOverlap(apple::vision::libraries::facecore::utils::aev::AEVOverlappingUtils *this, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = a4 + a4;
  v8 = a7 + a7;
  v9 = a5 + a7 - (a2 + a4);
  if (v9 >= 0.0)
  {
    result = 0.0;
    if (v9 >= v8)
    {
      return result;
    }

    v11 = a4 + a4;
    if (v7 + v9 >= v8)
    {
      v11 = v8 - v9;
    }
  }

  else
  {
    result = 0.0;
    if (v7 <= -v9)
    {
      return result;
    }

    if (v7 + v9 >= v8)
    {
      v11 = a7 + a7;
    }

    else
    {
      v11 = v7 + v9;
    }
  }

  v12 = a6 + a7 - (a3 + a4);
  if (v12 >= 0.0)
  {
    result = 0.0;
    if (v12 >= v8)
    {
      return result;
    }

    v13 = a4 + a4;
    if (v7 + v12 >= v8)
    {
      v13 = v8 - v12;
    }
  }

  else
  {
    result = 0.0;
    if (v7 <= -v12)
    {
      return result;
    }

    v13 = v7 + v12;
    if (v7 + v12 >= v8)
    {
      v13 = a7 + a7;
    }
  }

  return v11 * v13 / (v7 * v7);
}

void apple::vision::libraries::facecore::processing::extraction::SmileAndBlinkDetailsExtraction::performProcessing(apple::vision::libraries::facecore::processing::extraction::SmileAndBlinkDetailsExtraction *this, image **a2)
{
  if ((*(a2 + 179) & 1) != 0 || (*(a2 + 178) & 1) != 0 || *(a2 + 180) == 1)
  {
    v2 = *(a2 + 180);
    if (v2 == 1)
    {
      operator new();
    }

    if (*(a2 + 178) & 1) != 0 || (v2)
    {
      apple::vision::libraries::facecore::mod::smileandblink::SmileDetector::detectSmile((a2 + 14), a2[27], (v2 & 1));
    }

    if (*(a2 + 179))
    {
      v3 = (a2 + 14);
      v4 = a2[27];

      apple::vision::libraries::facecore::mod::smileandblink::BlinkDetector::detectBlink(v3, v4, 0);
    }
  }
}

void apple::vision::libraries::facecore::processing::detection::FaceTracker::FaceTracker(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 8) = 0u;
  *a1 = &unk_284DF3E78;
  *(a1 + 40) = 0;
  *(a1 + 48) = 20;
  *(a1 + 56) = -1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 89) = 1;
  operator new[]();
}

void sub_23AE2F0BC(_Unwind_Exception *exception_object)
{
  *v1 = &unk_284DF3F08;
  v3 = v1[1];
  if (v3)
  {
    v1[2] = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void apple::vision::libraries::facecore::processing::detection::FaceTracker::~FaceTracker(apple::vision::libraries::facecore::processing::detection::FaceTracker *this)
{
  *this = &unk_284DF3E78;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      v5 = (v2 + 24 * v4 - 24);
      v6 = -24 * v4;
      do
      {
        v9 = v5;
        std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&v9);
        v5 -= 3;
        v6 += 24;
      }

      while (v6);
    }

    MEMORY[0x23EE98340](v3, 0x20C80960023A9);
  }

  v7 = *(this + 9);
  if (v7)
  {
    MEMORY[0x23EE98340](v7, 0x1000C8077774924);
    *(this + 9) = 0;
  }

  *this = &unk_284DF3F08;
  v8 = *(this + 1);
  if (v8)
  {
    *(this + 2) = v8;
    operator delete(v8);
  }
}

{
  apple::vision::libraries::facecore::processing::detection::FaceTracker::~FaceTracker(this);

  JUMPOUT(0x23EE98360);
}

uint64_t apple::vision::libraries::facecore::processing::detection::FaceTracker::getCurrentFaces@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 56);
  if ((v2 & 0x80000000) != 0)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v3 = (*(this + 64) + 24 * v2);
    a2[1] = 0;
    a2[2] = 0;
    *a2 = 0;
    return std::vector<apple::vision::libraries::facecore::FaceInternal>::__init_with_size[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal*,apple::vision::libraries::facecore::FaceInternal*>(a2, *v3, v3[1], 0x84BDA12F684BDA13 * ((v3[1] - *v3) >> 3));
  }

  return this;
}

void apple::vision::libraries::facecore::processing::detection::FaceTracker::performProcessing(apple::vision::libraries::facecore::processing::detection::FaceTracker *this, apple::vision::libraries::facecore::FaceCoreContext *a2)
{
  *(this + 88) = 0;
  *(this + 89) = *(a2 + 2) == 6;
  *(this + 44) = 0;
  apple::vision::libraries::facecore::processing::detection::FaceTracker::detectFaces(this, a2);
  apple::vision::libraries::facecore::processing::detection::FaceTracker::getCurrentFaces(this, v8);
  apple::vision::libraries::facecore::FaceCoreContext::updateDetectedFaces(a2, v8);
  v9 = v8;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&v9);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  v6 = 126 - 2 * __clz(0x84BDA12F684BDA13 * ((v5 - v4) >> 3));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *,false>(v4, v5, v8, v7, 1);
}

void sub_23AE2F330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::processing::detection::FaceTracker::detectFaces(apple::vision::libraries::facecore::processing::detection::FaceTracker *this, apple::vision::libraries::facecore::FaceCoreContext *a2)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v4 = *(a2 + 30);
  v5 = *(a2 + 31);
  v6 = *(a2 + 14);
  if (*(this + 9) && (*(this + 88) & 1) != 0 || (FrameDifference = apple::vision::libraries::facecore::processing::detection::FaceTracker::getFrameDifference(this, *(a2 + 14), v4, v5), v8 = *(this + 14), v8 < 1) || FrameDifference >= 0.01 || *(this + 21) >= *(a2 + 12) || (v10 = (*(this + 8) + 24 * v8), v9 = *v10, v10[1] != *v10) && *(v9 + 160) || (apple::vision::libraries::facecore::processing::detection::FaceTracker::getCurrentFaces(this, &v22), v12 = v22, v11 = v23, v28 = &v22, std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&v28), v11 == v12))
  {
    *(this + 21) = 0;
    (*(**(this + 4) + 8))(*(this + 4), a2);
    if (&v25 != (a2 + 128))
    {
      std::vector<apple::vision::libraries::facecore::FaceInternal>::__assign_with_size[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal*,apple::vision::libraries::facecore::FaceInternal*>(&v25, *(a2 + 16), *(a2 + 17), 0x84BDA12F684BDA13 * ((*(a2 + 17) - *(a2 + 16)) >> 3));
    }
  }

  else
  {
    ++*(this + 21);
    v13 = (*(this + 8) + 24 * *(this + 14));
    if (&v25 != v13)
    {
      std::vector<apple::vision::libraries::facecore::FaceInternal>::__assign_with_size[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal*,apple::vision::libraries::facecore::FaceInternal*>(&v25, *v13, v13[1], 0x84BDA12F684BDA13 * ((v13[1] - *v13) >> 3));
    }

    v14 = 0x84BDA12F684BDA13 * ((v26 - v25) >> 3);
    if (v14 >= 1)
    {
      v15 = v14 & 0x7FFFFFFF;
      v16 = (v25 + 160);
      do
      {
        ++*(v16 - 29);
        if (*v16 >= 1)
        {
          ++*v16;
        }

        v16 += 54;
        --v15;
      }

      while (v15);
    }
  }

  v22 = 0;
  v23 = 0;
  v24 = 0;
  v18 = v25;
  v17 = v26;
  if ((1749801491 * ((v26 - v25) >> 3)) >= 1)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      if (*(v18 + v19 + 144))
      {
        std::vector<apple::vision::libraries::facecore::FaceInternal>::push_back[abi:ne200100](&v22, v18 + v19);
        v18 = v25;
        v17 = v26;
      }

      ++v20;
      v19 += 216;
    }

    while (v20 < (1749801491 * ((v17 - v18) >> 3)));
  }

  apple::vision::libraries::facecore::processing::detection::FaceTracker::addFaces(this, a2, &v22);
  apple::vision::libraries::facecore::processing::detection::FaceTracker::updateSampling(this, a2, v23 != v22);
  v21 = *(this + 9);
  if (v21 && v5 * v4 <= 3999999)
  {
    memcpy(v21, v6, v5 * v4);
  }

  v28 = &v22;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&v28);
  v22 = &v25;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&v22);
}

void sub_23AE2F620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<apple::vision::libraries::facecore::FaceInternal>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

float apple::vision::libraries::facecore::processing::detection::FaceTracker::getFrameDifference(apple::vision::libraries::facecore::processing::detection::FaceTracker *this, unsigned __int8 *a2, int a3, int a4)
{
  v4 = a4 * a3;
  v5 = 1.0;
  if (a4 * a3 <= 4000000)
  {
    v6 = *(this + 9);
    if (!v6)
    {
      operator new[]();
    }

    v7 = 0.0;
    if (v4 >= 1)
    {
      v8 = (a4 * a3);
      do
      {
        v10 = *a2++;
        v9 = v10;
        v11 = *v6++;
        v12 = v9 - v11;
        if (v12 < 0)
        {
          v12 = -v12;
        }

        v7 = v7 + (v12 / 255.0);
        --v8;
      }

      while (v8);
    }

    return v7 / v4;
  }

  return v5;
}

void apple::vision::libraries::facecore::processing::detection::FaceTracker::addFaces(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *a3;
  v6 = 0x84BDA12F684BDA13 * ((a3[1] - *a3) >> 3);
  if (v6 >= 1)
  {
    v7 = v6 & 0x7FFFFFFF;
    v8 = (v6 + 3) & 0xFFFFFFFC;
    v9 = xmmword_23B253330;
    v10 = xmmword_23B251FC0;
    v11 = vdupq_n_s64(v7 - 1);
    v12 = vdupq_n_s64(4uLL);
    v13 = *a3;
    do
    {
      v14 = vmovn_s64(vcgeq_u64(v11, v10));
      if (vuzp1_s16(v14, *v9.i8).u8[0])
      {
        v13[40] = 0;
      }

      if (vuzp1_s16(v14, *&v9).i8[2])
      {
        v13[94] = 0;
      }

      if (vuzp1_s16(*&v9, vmovn_s64(vcgeq_u64(v11, *&v9))).i32[1])
      {
        v13[148] = 0;
        v13[202] = 0;
      }

      v9 = vaddq_s64(v9, v12);
      v10 = vaddq_s64(v10, v12);
      v13 += 216;
      v8 -= 4;
    }

    while (v8);
  }

  v15 = *(a1 + 56);
  if ((v15 & 0x80000000) == 0)
  {
    v16 = *(a1 + 64);
    v17 = (v15 + 1) % *(a1 + 48);
    *(a1 + 56) = v17;
    v18 = (v16 + 24 * v17);
    v20 = *v18;
      ;
    }

    v18[1] = v20;
    operator new[]();
  }

  *(a1 + 56) = 0;
  v21 = *(a1 + 64);
  v23 = *v21;
  v22 = v21[1];
  if (v22 != *v21)
  {
    do
    {
      apple::vision::libraries::facecore::Face::~Face((v22 - 216));
    }

    while (v22 != v23);
    v5 = *a3;
  }

  v21[1] = v23;
  v24 = a3[1];
  if ((1749801491 * ((v24 - v5) >> 3)) >= 1)
  {
    v25 = 0;
    v26 = 0;
    do
    {
      v27 = &v5[v25];
      if (v5[v25 + 36])
      {
        v28 = *(a1 + 52);
        *(a1 + 52) = v28 + 1;
        *(v27 + 40) = v28;
        *(v27 + 44) = 1;
        std::vector<apple::vision::libraries::facecore::FaceInternal>::push_back[abi:ne200100](*(a1 + 64), v27);
        v5 = *a3;
        v24 = a3[1];
      }

      ++v26;
      v25 += 54;
    }

    while (v26 < (1749801491 * ((v24 - v5) >> 3)));
  }

  ++*(a1 + 40);
}

void sub_23AE2FD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  apple::vision::libraries::facecore::Face::~Face(va);
  _Unwind_Resume(a1);
}

uint64_t apple::vision::libraries::facecore::processing::detection::FaceTracker::updateSampling(uint64_t result, uint64_t a2, int a3)
{
  if (*(result + 89) == 1)
  {
    v3 = *(result + 80);
    if (a3)
    {
      if (v3 != 7)
      {
        if (v3 != 5)
        {
          if (v3 != 3)
          {
            return result;
          }

          goto LABEL_13;
        }

LABEL_14:
        *(a2 + 12) = 1036831949;
        *(a2 + 20) = 0x600000003;
        v4 = 3;
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if (v3 > 4)
    {
      if (v3 == 5)
      {
        *(a2 + 12) = 1045220557;
        *(a2 + 20) = 0x600000001;
        *(result + 80) = 1;
        if (*(result + 88) == 1)
        {
          *(a2 + 12) = 1036831949;
          v4 = 7;
          *(a2 + 20) = 7;
          goto LABEL_15;
        }
      }

      else if (v3 == 7)
      {
LABEL_13:
        *(a2 + 12) = 1045220557;
        *(a2 + 20) = 0x600000001;
        v4 = 1;
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 1)
      {
        goto LABEL_14;
      }

      if (v3 == 3)
      {
LABEL_10:
        *(a2 + 12) = 1036831949;
        *(a2 + 20) = 0x600000005;
        v4 = 5;
LABEL_15:
        *(result + 80) = v4;
      }
    }
  }

  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *,false>(int *a1, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = 0x84BDA12F684BDA13;
LABEL_2:
  v48 = a2 - 54;
  v9 = a1;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = a2 - v9;
    v13 = ((a2 - v9) >> 3) * v8;
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return;
    }

    if (v13 == 2)
    {
      v28 = *(a2 - 54);
      v27 = a2 - 54;
      v29 = v27[11];
      v30 = v9[11];
      v31 = v28 > *v9;
      v32 = v29 == v30;
      v33 = v29 > v30;
      if (!v32)
      {
        v31 = v33;
      }

      if (v31)
      {
        v34 = v9;
        v35 = v27;
        goto LABEL_38;
      }

      return;
    }

LABEL_11:
    if (v12 <= 5183)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *,apple::vision::libraries::facecore::FaceInternal *>(v9, a2, a2, a3);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = &v9[54 * (v13 >> 1)];
    if (v12 < 0x6C01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *,0>(v15, v9, v48);
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *,0>(v9, v15, v48);
      v16 = v9 + 54;
      v17 = v8;
      v18 = 54 * v14;
      v19 = &a1[54 * v14 - 54];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *,0>(a1 + 54, v19, a2 - 108);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *,0>(a1 + 108, &v16[v18], a2 - 162);
      v20 = &v16[v18];
      v8 = v17;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *,0>(v19, v15, v20);
      std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a1, v15);
    }

    if ((a5 & 1) == 0)
    {
      v21 = *(a1 - 43);
      v22 = a1[11];
      v32 = v21 == v22;
      v23 = v21 > v22;
      if (v32)
      {
        v23 = *(a1 - 54) > *a1;
      }

      if (!v23)
      {
        v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,apple::vision::libraries::facecore::FaceInternal *,std::__less<void,void> &>(a1, a2);
        goto LABEL_25;
      }
    }

    v24 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,apple::vision::libraries::facecore::FaceInternal *,std::__less<void,void> &>(a1, a2);
    if ((v25 & 1) == 0)
    {
      goto LABEL_23;
    }

    v26 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *>(a1, v24);
    v9 = (v24 + 216);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *>((v24 + 216), a2))
    {
      a4 = -v11;
      a2 = v24;
      if (v26)
      {
        return;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if ((v26 & 1) == 0)
    {
LABEL_23:
      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *,false>(a1, v24, a3, -v11, a5 & 1);
      v9 = (v24 + 216);
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  if (v13 == 3)
  {

    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *,0>(v9, v9 + 54, v48);
    return;
  }

  if (v13 != 4)
  {
    if (v13 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *,0>(v9, v9 + 54, v9 + 108, v9 + 162, v48);
      return;
    }

    goto LABEL_11;
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *,0>(v9, v9 + 54, v9 + 108);
  v37 = *(a2 - 54);
  v36 = (a2 - 54);
  v38 = *(v36 + 44);
  v39 = v9[119];
  v40 = v37 > v9[108];
  v32 = v38 == v39;
  v41 = v38 > v39;
  if (!v32)
  {
    v40 = v41;
  }

  if (v40)
  {
    std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>((v9 + 108), v36);
    v42 = v9[119];
    v43 = v9[65];
    v32 = v42 == v43;
    v44 = v42 > v43;
    if (v32)
    {
      v44 = v9[108] > v9[54];
    }

    if (v44)
    {
      std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>((v9 + 54), (v9 + 108));
      v45 = v9[65];
      v46 = v9[11];
      v32 = v45 == v46;
      v47 = v45 > v46;
      if (v32)
      {
        v47 = v9[54] > *v9;
      }

      if (v47)
      {
        v35 = (v9 + 54);
        v34 = v9;
LABEL_38:

        std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v34, v35);
      }
    }
  }
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *,0>(_DWORD *a1, _DWORD *a2, _DWORD *a3)
{
  v5 = a1;
  v6 = a2[11];
  v7 = a1[11];
  v8 = v6 == v7;
  v9 = v6 > v7;
  if (v8)
  {
    v9 = *a2 > *a1;
  }

  v10 = a3[11];
  v8 = v10 == v6;
  v11 = v10 > v6;
  if (v8)
  {
    v11 = *a3 > *a2;
  }

  if (v9)
  {
    if (!v11)
    {
      std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a1, a2);
      v12 = a3[11];
      v13 = a2[11];
      v8 = v12 == v13;
      v14 = v12 > v13;
      if (v8)
      {
        v14 = *a3 > *a2;
      }

      if (!v14)
      {
        return 1;
      }

      a1 = a2;
    }

    v15 = a3;
LABEL_17:
    std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a1, v15);
    return 1;
  }

  if (v11)
  {
    std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a2, a3);
    v16 = a2[11];
    v17 = v5[11];
    v8 = v16 == v17;
    v18 = v16 > v17;
    if (v8)
    {
      v18 = *a2 > *v5;
    }

    if (!v18)
    {
      return 1;
    }

    a1 = v5;
    v15 = a2;
    goto LABEL_17;
  }

  return 0;
}

double std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *,0>(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *,0>(a1, a2, a3);
  v11 = a4[11];
  v12 = a3[11];
  v13 = v11 == v12;
  v14 = v11 > v12;
  if (v13)
  {
    v14 = *a4 > *a3;
  }

  if (v14)
  {
    *&result = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a3, a4).n128_u64[0];
    v15 = a3[11];
    v16 = a2[11];
    v13 = v15 == v16;
    v17 = v15 > v16;
    if (v13)
    {
      v17 = *a3 > *a2;
    }

    if (v17)
    {
      *&result = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a2, a3).n128_u64[0];
      v18 = a2[11];
      v19 = a1[11];
      v13 = v18 == v19;
      v20 = v18 > v19;
      if (v13)
      {
        v20 = *a2 > *a1;
      }

      if (v20)
      {
        *&result = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a1, a2).n128_u64[0];
      }
    }
  }

  v21 = a5[11];
  v22 = a4[11];
  v13 = v21 == v22;
  v23 = v21 > v22;
  if (v13)
  {
    v23 = *a5 > *a4;
  }

  if (v23)
  {
    *&result = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a4, a5).n128_u64[0];
    v24 = a4[11];
    v25 = a3[11];
    v13 = v24 == v25;
    v26 = v24 > v25;
    if (v13)
    {
      v26 = *a4 > *a3;
    }

    if (v26)
    {
      *&result = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a3, a4).n128_u64[0];
      v27 = a3[11];
      v28 = a2[11];
      v13 = v27 == v28;
      v29 = v27 > v28;
      if (v13)
      {
        v29 = *a3 > *a2;
      }

      if (v29)
      {
        *&result = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a2, a3).n128_u64[0];
        v30 = a2[11];
        v31 = a1[11];
        v13 = v30 == v31;
        v32 = v30 > v31;
        if (v13)
        {
          v32 = *a2 > *a1;
        }

        if (v32)
        {

          *&result = std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a1, a2).n128_u64[0];
        }
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *>(uint64_t a1, int *a2)
{
  if (a1 != a2)
  {
    v47 = v2;
    v48 = v3;
    v6 = (a1 + 216);
    if ((a1 + 216) != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v6;
        v10 = v8[65];
        v11 = v8[11];
        v12 = v10 == v11;
        v13 = v10 > v11;
        if (v12)
        {
          v13 = v8[54] > *v8;
        }

        if (v13)
        {
          apple::vision::libraries::facecore::Face::Face(v32, v9);
          v14 = *(v8 + 102);
          v44 = *(v8 + 98);
          v45 = v14;
          v46 = *(v8 + 53);
          v15 = *(v8 + 94);
          v42 = *(v8 + 90);
          v43 = v15;
          v16 = v7;
          while (1)
          {
            v17 = a1 + v16;
            v18 = *(a1 + v16 + 16);
            *(v17 + 216) = *(a1 + v16);
            *(v17 + 232) = v18;
            *(v17 + 248) = *(a1 + v16 + 32);
            std::vector<double>::__move_assign(a1 + v16 + 264, (a1 + v16 + 48));
            *(v17 + 288) = *(v17 + 72);
            std::vector<double>::__move_assign(v17 + 296, (v17 + 80));
            v19 = *(a1 + v16 + 120);
            *(v17 + 320) = *(v17 + 104);
            *(v17 + 336) = v19;
            *(v17 + 352) = *(v17 + 136);
            v20 = *(a1 + v16 + 192);
            *(v17 + 392) = *(v17 + 176);
            *(v17 + 408) = v20;
            *(v17 + 424) = *(v17 + 208);
            v21 = *(a1 + v16 + 160);
            *(v17 + 360) = *(v17 + 144);
            *(v17 + 376) = v21;
            if (!v16)
            {
              break;
            }

            v22 = *(v17 - 172);
            v12 = HIDWORD(v33) == v22;
            v23 = SHIDWORD(v33) > v22;
            if (v12)
            {
              v23 = SLODWORD(v32[0]) > *(v17 - 216);
            }

            v16 -= 216;
            if (!v23)
            {
              v24 = a1 + v16 + 216;
              goto LABEL_14;
            }
          }

          v24 = a1;
LABEL_14:
          v25 = v32[1];
          *v24 = v32[0];
          *(v24 + 16) = v25;
          *(v24 + 32) = v33;
          v28 = *(v17 + 48);
          v27 = v17 + 48;
          v26 = v28;
          if (v28)
          {
            *(v24 + 56) = v26;
            operator delete(v26);
            *v27 = 0;
            *(v27 + 8) = 0;
            *(v27 + 16) = 0;
          }

          *v27 = v34;
          *(v24 + 56) = v35;
          v35 = 0uLL;
          v34 = 0;
          *(v24 + 72) = v36;
          v29 = *(v27 + 32);
          if (v29)
          {
            *(v24 + 88) = v29;
            operator delete(v29);
            *(v27 + 32) = 0;
            *(v27 + 40) = 0;
            *(v27 + 48) = 0;
          }

          *(v27 + 32) = v37;
          *(v24 + 88) = v38;
          v38 = 0uLL;
          v37 = 0;
          *(v27 + 56) = v39;
          *(v27 + 72) = v40;
          *(v27 + 88) = v41;
          v30 = v45;
          *(v27 + 128) = v44;
          *(v27 + 144) = v30;
          *(v27 + 160) = v46;
          v31 = v43;
          *(v27 + 96) = v42;
          *(v27 + 112) = v31;
          apple::vision::libraries::facecore::Face::~Face(v32);
        }

        v6 = v9 + 54;
        v7 += 216;
        v8 = v9;
      }

      while (v9 + 54 != a2);
    }
  }
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *>(int *a1, int *a2)
{
  if (a1 != a2)
  {
    v45 = v2;
    v46 = v3;
    v5 = a1;
    v6 = a1 + 54;
    if (a1 + 54 != a2)
    {
      v7 = a1 - 54;
      do
      {
        v8 = v6;
        v9 = v5[65];
        v10 = v5[11];
        v11 = v9 == v10;
        v12 = v9 > v10;
        if (v11)
        {
          v12 = v5[54] > *v5;
        }

        if (v12)
        {
          apple::vision::libraries::facecore::Face::Face(v30, v8);
          v13 = *(v5 + 102);
          v42 = *(v5 + 98);
          v43 = v13;
          v44 = *(v5 + 53);
          v14 = *(v5 + 94);
          v40 = *(v5 + 90);
          v41 = v14;
          v15 = v7;
          do
          {
            v16 = *(v15 + 58);
            *(v15 + 27) = *(v15 + 54);
            *(v15 + 28) = v16;
            *(v15 + 29) = *(v15 + 62);
            std::vector<double>::__move_assign((v15 + 120), (v15 + 66));
            v15[126] = v15[72];
            std::vector<double>::__move_assign((v15 + 128), (v15 + 74));
            v17 = v15 + 134;
            v18 = *(v15 + 102);
            *(v15 + 38) = *(v15 + 98);
            *(v15 + 39) = v18;
            v19 = *(v15 + 94);
            *(v15 + 36) = *(v15 + 90);
            *(v15 + 37) = v19;
            v20 = *(v15 + 20);
            v21 = *(v15 + 21);
            *(v15 + 71) = *(v15 + 44);
            *(v15 + 80) = *(v15 + 53);
            v22 = v15[11];
            v23 = SHIDWORD(v31) > v22;
            if (HIDWORD(v31) == v22)
            {
              v23 = SLODWORD(v30[0]) > *v15;
            }

            v15 -= 54;
            *v17 = v20;
            v17[1] = v21;
          }

          while (v23);
          v24 = v30[1];
          *(v15 + 27) = v30[0];
          *(v15 + 28) = v24;
          *(v15 + 29) = v31;
          v25 = *(v15 + 60);
          if (v25)
          {
            *(v15 + 61) = v25;
            operator delete(v25);
            *(v15 + 60) = 0;
            *(v15 + 61) = 0;
            *(v15 + 62) = 0;
          }

          *(v15 + 30) = v32;
          *(v15 + 62) = v33;
          v33 = 0;
          v32 = 0uLL;
          v15[126] = v34;
          v26 = *(v15 + 64);
          if (v26)
          {
            *(v15 + 65) = v26;
            operator delete(v26);
            *(v15 + 64) = 0;
            *(v15 + 65) = 0;
            *(v15 + 66) = 0;
          }

          *(v15 + 32) = v35;
          *(v15 + 66) = v36;
          v36 = 0;
          v35 = 0uLL;
          v27 = v38;
          *(v15 + 134) = v37;
          *(v15 + 138) = v27;
          *(v15 + 71) = v39;
          v28 = v43;
          *(v15 + 38) = v42;
          *(v15 + 39) = v28;
          *(v15 + 80) = v44;
          v29 = v41;
          *(v15 + 36) = v40;
          *(v15 + 37) = v29;
          apple::vision::libraries::facecore::Face::~Face(v30);
        }

        v6 = v8 + 54;
        v7 += 54;
        v5 = v8;
      }

      while (v8 + 54 != a2);
    }
  }
}

_DWORD *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,apple::vision::libraries::facecore::FaceInternal *,std::__less<void,void> &>(uint64_t a1, unint64_t a2)
{
  apple::vision::libraries::facecore::Face::Face(v48, a1);
  v4 = *(a1 + 192);
  v60 = *(a1 + 176);
  v61 = v4;
  v62 = *(a1 + 208);
  v5 = *(a1 + 144);
  v59 = *(a1 + 160);
  v58 = v5;
  v6 = *(a2 - 172);
  v7 = HIDWORD(v49) == v6;
  v8 = SHIDWORD(v49) > v6;
  if (v7)
  {
    v8 = SLODWORD(v48[0]) > *(a2 - 216);
  }

  if (v8)
  {
    v9 = a1;
    do
    {
      v10 = v9[54];
      v9 += 54;
      v11 = v9[11];
      v12 = SLODWORD(v48[0]) > v10;
      v7 = HIDWORD(v49) == v11;
      v13 = SHIDWORD(v49) > v11;
      if (!v7)
      {
        v12 = v13;
      }
    }

    while (!v12);
  }

  else
  {
    v14 = (a1 + 216);
    do
    {
      v9 = v14;
      if (v14 >= a2)
      {
        break;
      }

      v15 = v14[11];
      v16 = SLODWORD(v48[0]) > *v9;
      v7 = HIDWORD(v49) == v15;
      v17 = SHIDWORD(v49) > v15;
      if (!v7)
      {
        v16 = v17;
      }

      v14 = v9 + 54;
    }

    while (!v16);
  }

  if (v9 < a2)
  {
    do
    {
      v18 = *(a2 - 216);
      a2 -= 216;
      v19 = *(a2 + 44);
      v20 = SLODWORD(v48[0]) > v18;
      v7 = HIDWORD(v49) == v19;
      v21 = SHIDWORD(v49) > v19;
      if (!v7)
      {
        v20 = v21;
      }
    }

    while (v20);
  }

  while (v9 < a2)
  {
    std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v9, a2);
    do
    {
      v22 = v9[54];
      v9 += 54;
      v23 = v9[11];
      v24 = SLODWORD(v48[0]) > v22;
      v7 = HIDWORD(v49) == v23;
      v25 = SHIDWORD(v49) > v23;
      if (!v7)
      {
        v24 = v25;
      }
    }

    while (!v24);
    do
    {
      v26 = *(a2 - 216);
      a2 -= 216;
      v27 = *(a2 + 44);
      v28 = SLODWORD(v48[0]) > v26;
      v7 = HIDWORD(v49) == v27;
      v29 = SHIDWORD(v49) > v27;
      if (!v7)
      {
        v28 = v29;
      }
    }

    while (v28);
  }

  v30 = (v9 - 54);
  if (v9 - 54 != a1)
  {
    v31 = *v30;
    v32 = *(v9 - 46);
    *(a1 + 16) = *(v9 - 50);
    *(a1 + 32) = v32;
    *a1 = v31;
    std::vector<double>::__move_assign(a1 + 48, (v9 - 42));
    *(a1 + 72) = *(v9 - 36);
    std::vector<double>::__move_assign(a1 + 80, (v9 - 34));
    v33 = *(v9 - 7);
    v34 = *(v9 - 6);
    *(a1 + 136) = *(v9 - 10);
    *(a1 + 120) = v34;
    *(a1 + 104) = v33;
    v35 = *(v9 - 10);
    v36 = *(v9 - 6);
    v37 = *(v9 - 14);
    *(a1 + 208) = *(v9 - 1);
    *(a1 + 176) = v35;
    *(a1 + 192) = v36;
    *(a1 + 160) = v37;
    *(a1 + 144) = *(v9 - 18);
  }

  v38 = v48[0];
  v39 = v49;
  *(v9 - 50) = v48[1];
  *(v9 - 46) = v39;
  *v30 = v38;
  v40 = *(v9 - 21);
  if (v40)
  {
    *(v9 - 20) = v40;
    operator delete(v40);
    *(v9 - 21) = 0;
    *(v9 - 20) = 0;
    *(v9 - 19) = 0;
  }

  *(v9 - 42) = v50;
  *(v9 - 19) = v51;
  v50 = 0uLL;
  v51 = 0;
  v41 = *(v9 - 17);
  *(v9 - 36) = v52;
  if (v41)
  {
    *(v9 - 16) = v41;
    operator delete(v41);
    *(v9 - 17) = 0;
    *(v9 - 16) = 0;
    *(v9 - 15) = 0;
  }

  *(v9 - 34) = v53;
  *(v9 - 15) = v54;
  v53 = 0uLL;
  v54 = 0;
  v42 = v55;
  v43 = v56;
  *(v9 - 10) = v57;
  *(v9 - 7) = v42;
  *(v9 - 6) = v43;
  v45 = v60;
  v44 = v61;
  v46 = v62;
  *(v9 - 14) = v59;
  *(v9 - 1) = v46;
  *(v9 - 6) = v44;
  *(v9 - 10) = v45;
  *(v9 - 18) = v58;
  apple::vision::libraries::facecore::Face::~Face(v48);
  return v9;
}

void sub_23AE30D1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  apple::vision::libraries::facecore::Face::~Face(va);
  _Unwind_Resume(a1);
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,apple::vision::libraries::facecore::FaceInternal *,std::__less<void,void> &>(uint64_t a1, unint64_t a2)
{
  apple::vision::libraries::facecore::Face::Face(v48, a1);
  v4 = 0;
  v5 = *(a1 + 192);
  v60 = *(a1 + 176);
  v61 = v5;
  v62 = *(a1 + 208);
  v6 = *(a1 + 144);
  v59 = *(a1 + 160);
  v58 = v6;
  do
  {
    v7 = *(a1 + v4 + 260);
    v8 = *(a1 + v4 + 216) > SLODWORD(v48[0]);
    v9 = v7 == HIDWORD(v49);
    v10 = v7 > SHIDWORD(v49);
    if (!v9)
    {
      v8 = v10;
    }

    v4 += 216;
  }

  while (v8);
  v11 = a1 + v4;
  if (v4 == 216)
  {
    do
    {
      if (v11 >= a2)
      {
        break;
      }

      v16 = *(a2 - 216);
      a2 -= 216;
      v17 = *(a2 + 44);
      v18 = v16 > SLODWORD(v48[0]);
      v9 = v17 == HIDWORD(v49);
      v19 = v17 > SHIDWORD(v49);
      if (!v9)
      {
        v18 = v19;
      }
    }

    while (!v18);
  }

  else
  {
    do
    {
      v12 = *(a2 - 216);
      a2 -= 216;
      v13 = *(a2 + 44);
      v14 = v12 > SLODWORD(v48[0]);
      v9 = v13 == HIDWORD(v49);
      v15 = v13 > SHIDWORD(v49);
      if (!v9)
      {
        v14 = v15;
      }
    }

    while (!v14);
  }

  v20 = v11;
  if (v11 < a2)
  {
    v21 = a2;
    do
    {
      std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v20, v21);
      do
      {
        v22 = *(v20 + 216);
        v20 += 216;
        v23 = *(v20 + 44);
        v24 = v22 > SLODWORD(v48[0]);
        v9 = v23 == HIDWORD(v49);
        v25 = v23 > SHIDWORD(v49);
        if (!v9)
        {
          v24 = v25;
        }
      }

      while (v24);
      do
      {
        v26 = *(v21 - 216);
        v21 -= 216;
        v27 = *(v21 + 44);
        v28 = v26 > SLODWORD(v48[0]);
        v9 = v27 == HIDWORD(v49);
        v29 = v27 > SHIDWORD(v49);
        if (!v9)
        {
          v28 = v29;
        }
      }

      while (!v28);
    }

    while (v20 < v21);
  }

  v30 = (v20 - 216);
  if (v20 - 216 != a1)
  {
    v31 = *v30;
    v32 = *(v20 - 184);
    *(a1 + 16) = *(v20 - 200);
    *(a1 + 32) = v32;
    *a1 = v31;
    std::vector<double>::__move_assign(a1 + 48, (v20 - 168));
    *(a1 + 72) = *(v20 - 144);
    std::vector<double>::__move_assign(a1 + 80, (v20 - 136));
    v33 = *(v20 - 112);
    v34 = *(v20 - 96);
    *(a1 + 136) = *(v20 - 80);
    *(a1 + 120) = v34;
    *(a1 + 104) = v33;
    v35 = *(v20 - 40);
    v36 = *(v20 - 24);
    v37 = *(v20 - 56);
    *(a1 + 208) = *(v20 - 8);
    *(a1 + 176) = v35;
    *(a1 + 192) = v36;
    *(a1 + 160) = v37;
    *(a1 + 144) = *(v20 - 72);
  }

  v38 = v48[0];
  v39 = v49;
  *(v20 - 200) = v48[1];
  *(v20 - 184) = v39;
  *v30 = v38;
  v40 = *(v20 - 168);
  if (v40)
  {
    *(v20 - 160) = v40;
    operator delete(v40);
    *(v20 - 168) = 0;
    *(v20 - 160) = 0;
    *(v20 - 152) = 0;
  }

  *(v20 - 168) = v50;
  *(v20 - 152) = v51;
  v50 = 0uLL;
  v51 = 0;
  v41 = *(v20 - 136);
  *(v20 - 144) = v52;
  if (v41)
  {
    *(v20 - 128) = v41;
    operator delete(v41);
    *(v20 - 136) = 0;
    *(v20 - 128) = 0;
    *(v20 - 120) = 0;
  }

  *(v20 - 136) = v53;
  *(v20 - 120) = v54;
  v53 = 0uLL;
  v54 = 0;
  v42 = v55;
  v43 = v56;
  *(v20 - 80) = v57;
  *(v20 - 112) = v42;
  *(v20 - 96) = v43;
  v45 = v60;
  v44 = v61;
  v46 = v62;
  *(v20 - 56) = v59;
  *(v20 - 8) = v46;
  *(v20 - 24) = v44;
  *(v20 - 40) = v45;
  *(v20 - 72) = v58;
  apple::vision::libraries::facecore::Face::~Face(v48);
  return v20 - 216;
}

void sub_23AE30FEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  apple::vision::libraries::facecore::Face::~Face(va);
  _Unwind_Resume(a1);
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *>(_DWORD *a1, char *a2)
{
  v3 = a1;
  v4 = 0x84BDA12F684BDA13 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *,0>(a1, a1 + 54, a2 - 54);
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *,0>(a1, a1 + 54, a1 + 108);
        v39 = *(a2 - 54);
        v38 = (a2 - 216);
        v40 = *(v38 + 44);
        v41 = v3[119];
        v42 = v39 > v3[108];
        v8 = v40 == v41;
        v43 = v40 > v41;
        if (!v8)
        {
          v42 = v43;
        }

        if (!v42)
        {
          return 1;
        }

        std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>((v3 + 108), v38);
        v44 = v3[119];
        v45 = v3[65];
        v8 = v44 == v45;
        v46 = v44 > v45;
        if (v8)
        {
          v46 = v3[108] > v3[54];
        }

        if (!v46)
        {
          return 1;
        }

        std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>((v3 + 54), (v3 + 108));
        v47 = v3[65];
        v48 = v3[11];
        v8 = v47 == v48;
        v49 = v47 > v48;
        if (v8)
        {
          v49 = v3[54] > *v3;
        }

        if (!v49)
        {
          return 1;
        }

        v10 = (v3 + 54);
        a1 = v3;
LABEL_8:
        std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(a1, v10);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *,0>(a1, a1 + 54, a1 + 108, a1 + 162, a2 - 54);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 43);
      v6 = a1[11];
      v7 = *(a2 - 54) > *a1;
      v8 = v5 == v6;
      v9 = v5 > v6;
      if (!v8)
      {
        v7 = v9;
      }

      if (!v7)
      {
        return 1;
      }

      v10 = (a2 - 216);
      goto LABEL_8;
    }
  }

  v11 = a1 + 108;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *,0>(a1, a1 + 54, a1 + 108);
  v12 = v3 + 162;
  if (v3 + 162 != a2)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = v12[11];
      v16 = v11[11];
      v8 = v15 == v16;
      v17 = v15 > v16;
      if (v8)
      {
        v17 = *v12 > *v11;
      }

      if (v17)
      {
        apple::vision::libraries::facecore::Face::Face(v52, v12);
        v18 = *(v12 + 12);
        v64 = *(v12 + 11);
        v65 = v18;
        v66 = *(v12 + 26);
        v19 = *(v12 + 10);
        v62 = *(v12 + 9);
        v63 = v19;
        v20 = v13;
        while (1)
        {
          v21 = v3 + v20;
          v22 = (v3 + v20 + 648);
          v23 = *(v3 + v20 + 448);
          *v22 = *(v3 + v20 + 432);
          v22[1] = v23;
          v22[2] = *(v3 + v20 + 464);
          std::vector<double>::__move_assign(v3 + v20 + 696, (v3 + v20 + 480));
          *(v21 + 180) = *(v21 + 126);
          v24 = (v3 + v20 + 512);
          std::vector<double>::__move_assign((v21 + 728), v21 + 32);
          v25 = (v3 + v20 + 536);
          v26 = *(v3 + v20 + 552);
          *(v21 + 47) = *(v21 + 536);
          *(v21 + 48) = v26;
          *(v21 + 98) = *(v21 + 71);
          v27 = *(v3 + v20 + 624);
          *(v21 + 824) = *(v21 + 38);
          *(v21 + 840) = v27;
          *(v21 + 107) = *(v21 + 80);
          v28 = *(v3 + v20 + 592);
          *(v21 + 792) = *(v21 + 36);
          *(v21 + 808) = v28;
          if (v20 == -432)
          {
            break;
          }

          v29 = *(v21 + 65);
          v8 = HIDWORD(v53) == v29;
          v30 = SHIDWORD(v53) > v29;
          if (v8)
          {
            v30 = SLODWORD(v52[0]) > *(v21 + 54);
          }

          v20 -= 216;
          if (!v30)
          {
            v31 = v3 + v20 + 648;
            goto LABEL_26;
          }
        }

        v31 = v3;
LABEL_26:
        v32 = v52[1];
        *v31 = v52[0];
        *(v31 + 16) = v32;
        *(v31 + 32) = v53;
        v33 = *(v21 + 60);
        if (v33)
        {
          *(v31 + 56) = v33;
          operator delete(v33);
          *(v21 + 60) = 0;
          *(v21 + 61) = 0;
          *(v21 + 62) = 0;
        }

        *(v21 + 60) = v54;
        *(v31 + 56) = v55;
        v55 = 0uLL;
        v54 = 0;
        *(v31 + 72) = v56;
        v34 = *v24;
        if (*v24)
        {
          *(v31 + 88) = v34;
          operator delete(v34);
          *v24 = 0;
          *(v21 + 65) = 0;
          *(v21 + 66) = 0;
        }

        *v24 = v57;
        *(v31 + 88) = v58;
        v58 = 0uLL;
        v57 = 0;
        v35 = v60;
        *v25 = v59;
        *(v21 + 552) = v35;
        *(v21 + 71) = v61;
        v36 = v65;
        *(v21 + 38) = v64;
        *(v21 + 39) = v36;
        *(v21 + 80) = v66;
        v37 = v63;
        ++v14;
        *(v21 + 36) = v62;
        *(v21 + 37) = v37;
        if (v14 == 8)
        {
          v50 = v12 + 54 == a2;
          apple::vision::libraries::facecore::Face::~Face(v52);
          return v50;
        }

        apple::vision::libraries::facecore::Face::~Face(v52);
      }

      v11 = v12;
      v13 += 216;
      v12 += 54;
    }

    while (v12 != a2);
  }

  return 1;
}

__n128 std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(uint64_t a1, uint64_t a2)
{
  apple::vision::libraries::facecore::Face::Face(v20, a1);
  v4 = *(a1 + 192);
  v31 = *(a1 + 176);
  v32 = v4;
  v33 = *(a1 + 208);
  v5 = *(a1 + 144);
  v30 = *(a1 + 160);
  v29 = v5;
  v7 = *(a2 + 16);
  v6 = *(a2 + 32);
  *a1 = *a2;
  *(a1 + 16) = v7;
  *(a1 + 32) = v6;
  std::vector<double>::__move_assign(a1 + 48, (a2 + 48));
  *(a1 + 72) = *(a2 + 72);
  std::vector<double>::__move_assign(a1 + 80, (a2 + 80));
  v8 = *(a2 + 104);
  v9 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v9;
  *(a1 + 104) = v8;
  v11 = *(a2 + 176);
  v10 = *(a2 + 192);
  v12 = *(a2 + 160);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v11;
  *(a1 + 192) = v10;
  *(a1 + 160) = v12;
  *(a1 + 144) = *(a2 + 144);
  v13 = v20[1];
  *a2 = v20[0];
  *(a2 + 16) = v13;
  *(a2 + 32) = v20[2];
  v14 = *(a2 + 48);
  if (v14)
  {
    *(a2 + 56) = v14;
    operator delete(v14);
  }

  *(a2 + 48) = v21;
  *(a2 + 64) = v22;
  v22 = 0;
  v21 = 0uLL;
  *(a2 + 72) = v23;
  v15 = *(a2 + 80);
  if (v15)
  {
    *(a2 + 88) = v15;
    operator delete(v15);
  }

  *(a2 + 80) = v24;
  *(a2 + 96) = v25;
  v25 = 0;
  v24 = 0uLL;
  v16 = v27;
  *(a2 + 104) = v26;
  *(a2 + 120) = v16;
  *(a2 + 136) = v28;
  v17 = v32;
  *(a2 + 176) = v31;
  *(a2 + 192) = v17;
  *(a2 + 208) = v33;
  v18 = v30;
  *(a2 + 144) = v29;
  *(a2 + 160) = v18;
  apple::vision::libraries::facecore::Face::~Face(v20);
  return result;
}

int *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *,apple::vision::libraries::facecore::FaceInternal *>(int *a1, int *a2, int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    v9 = 0x84BDA12F684BDA13 * ((a2 - a1) >> 3);
    if (a2 - a1 >= 217)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[54 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *>(a1, a4, v9, v12);
        v12 -= 54;
        --v11;
      }

      while (v11);
    }

    v13 = v6;
    if (v6 != a3)
    {
      v13 = v6;
      do
      {
        v14 = v13[11];
        v15 = a1[11];
        v16 = v14 == v15;
        v17 = v14 > v15;
        if (v16)
        {
          v17 = *v13 > *a1;
        }

        if (v17)
        {
          std::swap[abi:ne200100]<apple::vision::libraries::facecore::FaceInternal>(v13, a1);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *>(a1, a4, v9, a1);
        }

        v13 += 54;
      }

      while (v13 != a3);
    }

    if (v8 >= 217)
    {
      v18 = 0x84BDA12F684BDA13 * (v8 >> 3);
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,apple::vision::libraries::facecore::FaceInternal *>(a1, v6, a4, v18);
        v6 -= 216;
      }

      while (v18-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *>(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v65 = v4;
    v66 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0x84BDA12F684BDA13 * ((a4 - a1) >> 3)))
    {
      v11 = (0x97B425ED097B426 * ((a4 - a1) >> 3)) | 1;
      v12 = (a1 + 216 * v11);
      if (0x97B425ED097B426 * ((a4 - a1) >> 3) + 2 >= a3)
      {
        v17 = *v12;
      }

      else
      {
        v13 = *(v12 + 11);
        v14 = *(v12 + 65);
        v16 = v13 == v14;
        v15 = v13 > v14;
        if (v16)
        {
          v15 = *v12 > *(v12 + 54);
        }

        v16 = !v15;
        if (v15)
        {
          v17 = *(v12 + 54);
        }

        else
        {
          v17 = *v12;
        }

        if (!v16)
        {
          v12 = (v12 + 216);
          v11 = 0x97B425ED097B426 * ((a4 - a1) >> 3) + 2;
        }
      }

      v18 = *(v12 + 11);
      v19 = a4[11];
      v20 = v17 > *a4;
      v16 = v18 == v19;
      v21 = v18 > v19;
      if (!v16)
      {
        v20 = v21;
      }

      if (!v20)
      {
        apple::vision::libraries::facecore::Face::Face(v50, a4);
        v22 = *(v7 + 12);
        v62 = *(v7 + 11);
        v63 = v22;
        v64 = *(v7 + 26);
        v23 = *(v7 + 9);
        v61 = *(v7 + 10);
        v60 = v23;
        do
        {
          v24 = v12;
          v25 = *v12;
          v26 = v12[2];
          *(v7 + 1) = v12[1];
          *(v7 + 2) = v26;
          *v7 = v25;
          std::vector<double>::__move_assign((v7 + 12), v12 + 3);
          v7[18] = *(v12 + 18);
          std::vector<double>::__move_assign((v7 + 20), v12 + 5);
          v27 = *(v12 + 104);
          v28 = *(v12 + 120);
          *(v7 + 17) = *(v12 + 17);
          *(v7 + 30) = v28;
          *(v7 + 26) = v27;
          v30 = v12[11];
          v29 = v12[12];
          v31 = v12[10];
          *(v7 + 26) = *(v12 + 26);
          *(v7 + 11) = v30;
          *(v7 + 12) = v29;
          *(v7 + 10) = v31;
          *(v7 + 9) = v12[9];
          if (v9 < v11)
          {
            break;
          }

          v12 = (a1 + 216 * ((2 * v11) | 1));
          if (2 * v11 + 2 >= a3)
          {
            v36 = *v12;
            v11 = (2 * v11) | 1;
          }

          else
          {
            v32 = *(v12 + 11);
            v33 = *(v12 + 65);
            v16 = v32 == v33;
            v34 = v32 > v33;
            if (v16)
            {
              v34 = *v12 > *(v12 + 54);
            }

            v35 = !v34;
            v36 = v34 ? *(v12 + 54) : *v12;
            if (v35)
            {
              v11 = (2 * v11) | 1;
            }

            else
            {
              v12 = (v12 + 216);
              v11 = 2 * v11 + 2;
            }
          }

          v37 = *(v12 + 11);
          v38 = v36 > SLODWORD(v50[0]);
          v16 = v37 == HIDWORD(v51);
          v39 = v37 > SHIDWORD(v51);
          if (v16)
          {
            v39 = v38;
          }

          v7 = v24;
        }

        while (!v39);
        v40 = v50[0];
        v41 = v51;
        v24[1] = v50[1];
        v24[2] = v41;
        *v24 = v40;
        v42 = *(v24 + 6);
        if (v42)
        {
          *(v24 + 7) = v42;
          operator delete(v42);
          *(v24 + 6) = 0;
          *(v24 + 7) = 0;
          *(v24 + 8) = 0;
        }

        v24[3] = v52;
        *(v24 + 8) = v53;
        v52 = 0uLL;
        v53 = 0;
        *(v24 + 18) = v54;
        v43 = *(v24 + 10);
        if (v43)
        {
          *(v24 + 11) = v43;
          operator delete(v43);
          *(v24 + 10) = 0;
          *(v24 + 11) = 0;
          *(v24 + 12) = 0;
        }

        v24[5] = v55;
        *(v24 + 12) = v56;
        v55 = 0uLL;
        v56 = 0;
        v44 = v59;
        v45 = v58;
        *(v24 + 104) = v57;
        *(v24 + 120) = v45;
        *(v24 + 17) = v44;
        v47 = v62;
        v46 = v63;
        v48 = v61;
        *(v24 + 26) = v64;
        v24[11] = v47;
        v24[12] = v46;
        v24[10] = v48;
        v24[9] = v60;
        apple::vision::libraries::facecore::Face::~Face(v50);
      }
    }
  }

  return result;
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,apple::vision::libraries::facecore::FaceInternal *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    apple::vision::libraries::facecore::Face::Face(&v36, a1);
    v8 = *(a1 + 192);
    v49 = *(a1 + 176);
    v50 = v8;
    v51 = *(a1 + 208);
    v9 = *(a1 + 160);
    v47 = *(a1 + 144);
    v48 = v9;
    v10 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *>(a1, a3, a4);
    v11 = v10;
    v12 = (a2 - 216);
    if (v10 == (a2 - 216))
    {
      v27 = v36;
      v28 = v38;
      *(v10 + 1) = v37;
      *(v10 + 2) = v28;
      *v10 = v27;
      v29 = *(v10 + 6);
      if (v29)
      {
        *(v11 + 7) = v29;
        operator delete(v29);
        *(v11 + 6) = 0;
        *(v11 + 7) = 0;
        *(v11 + 8) = 0;
      }

      v30 = *(v11 + 10);
      *(v11 + 3) = v39;
      *(v11 + 8) = v40;
      v39 = 0uLL;
      v40 = 0;
      v11[18] = v41;
      if (v30)
      {
        *(v11 + 11) = v30;
        operator delete(v30);
        *(v11 + 10) = 0;
        *(v11 + 11) = 0;
        *(v11 + 12) = 0;
      }

      *(v11 + 5) = v42;
      *(v11 + 12) = v43;
      v42 = 0uLL;
      v43 = 0;
      v31 = v46;
      v32 = v45;
      *(v11 + 26) = v44;
      *(v11 + 30) = v32;
      *(v11 + 17) = v31;
      v34 = v49;
      v33 = v50;
      v35 = v48;
      *(v11 + 26) = v51;
      *(v11 + 11) = v34;
      *(v11 + 12) = v33;
      *(v11 + 10) = v35;
      *(v11 + 9) = v47;
    }

    else
    {
      v13 = *v12;
      v14 = *(a2 - 184);
      *(v10 + 1) = *(a2 - 200);
      *(v10 + 2) = v14;
      *v10 = v13;
      std::vector<double>::__move_assign((v10 + 12), (a2 - 168));
      v11[18] = *(a2 - 144);
      std::vector<double>::__move_assign((v11 + 20), (a2 - 136));
      v15 = *(a2 - 112);
      v16 = *(a2 - 96);
      *(v11 + 17) = *(a2 - 80);
      *(v11 + 30) = v16;
      *(v11 + 26) = v15;
      v17 = *(a2 - 40);
      v18 = *(a2 - 24);
      v19 = *(a2 - 56);
      *(v11 + 26) = *(a2 - 8);
      *(v11 + 11) = v17;
      *(v11 + 12) = v18;
      *(v11 + 10) = v19;
      *(v11 + 9) = *(a2 - 72);
      v20 = (v11 + 54);
      v21 = v37;
      *v12 = v36;
      *(a2 - 200) = v21;
      *(a2 - 184) = v38;
      v22 = *(a2 - 168);
      if (v22)
      {
        *(a2 - 160) = v22;
        operator delete(v22);
        *(a2 - 168) = 0;
        *(a2 - 160) = 0;
        *(a2 - 152) = 0;
      }

      *(a2 - 168) = v39;
      *(a2 - 152) = v40;
      v40 = 0;
      v39 = 0uLL;
      *(a2 - 144) = v41;
      v23 = *(a2 - 136);
      if (v23)
      {
        *(a2 - 128) = v23;
        operator delete(v23);
        *(a2 - 136) = 0;
        *(a2 - 128) = 0;
        *(a2 - 120) = 0;
      }

      *(a2 - 136) = v42;
      *(a2 - 120) = v43;
      v43 = 0;
      v42 = 0uLL;
      v24 = v45;
      *(a2 - 112) = v44;
      *(a2 - 96) = v24;
      *(a2 - 80) = v46;
      v25 = v50;
      *(a2 - 40) = v49;
      *(a2 - 24) = v25;
      *(a2 - 8) = v51;
      v26 = v48;
      *(a2 - 72) = v47;
      *(a2 - 56) = v26;
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *>(a1, v20, a3, 0x84BDA12F684BDA13 * ((v20 - a1) >> 3));
    }

    apple::vision::libraries::facecore::Face::~Face(&v36);
  }
}

_DWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *>(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[54 * v5];
    v8 = v7 + 54;
    if (2 * v5 + 2 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      v9 = v7 + 108;
      v10 = v7[65];
      v11 = v7[119];
      v12 = v7[54] > v7[108];
      v13 = v10 == v11;
      v14 = v10 > v11;
      if (!v13)
      {
        v12 = v14;
      }

      if (v12)
      {
        v8 = v9;
        v5 = 2 * v5 + 2;
      }

      else
      {
        v5 = (2 * v5) | 1;
      }
    }

    v15 = *v8;
    v16 = *(v8 + 2);
    *(a1 + 1) = *(v8 + 1);
    *(a1 + 2) = v16;
    *a1 = v15;
    std::vector<double>::__move_assign((a1 + 12), v8 + 3);
    a1[18] = v8[18];
    std::vector<double>::__move_assign((a1 + 20), v8 + 5);
    v17 = *(v8 + 26);
    v18 = *(v8 + 30);
    *(a1 + 17) = *(v8 + 17);
    *(a1 + 30) = v18;
    *(a1 + 26) = v17;
    v20 = *(v8 + 11);
    v19 = *(v8 + 12);
    v21 = *(v8 + 10);
    *(a1 + 26) = *(v8 + 26);
    *(a1 + 11) = v20;
    *(a1 + 12) = v19;
    *(a1 + 10) = v21;
    *(a1 + 9) = *(v8 + 9);
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

__n128 std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,apple::vision::libraries::facecore::FaceInternal *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v52 = v4;
    v53 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 216 * (v6 >> 1));
    v11 = (a2 - 216);
    v12 = *(v10 + 11);
    v13 = *(a2 - 172);
    v14 = *v10 > *(a2 - 216);
    v15 = v12 == v13;
    v16 = v12 > v13;
    if (!v15)
    {
      v14 = v16;
    }

    if (v14)
    {
      apple::vision::libraries::facecore::Face::Face(v37, (a2 - 216));
      v17 = *(a2 - 56);
      v18 = *(a2 - 24);
      v49 = *(a2 - 40);
      v50 = v18;
      v51 = *(a2 - 8);
      v19 = *(a2 - 72);
      v48 = v17;
      v47 = v19;
      do
      {
        v20 = v10;
        v21 = *v10;
        v22 = v10[2];
        v11[1] = v10[1];
        v11[2] = v22;
        *v11 = v21;
        std::vector<double>::__move_assign((v11 + 3), v10 + 3);
        *(v11 + 18) = *(v10 + 18);
        std::vector<double>::__move_assign((v11 + 5), v10 + 5);
        v23 = *(v10 + 104);
        v24 = *(v10 + 120);
        *(v11 + 17) = *(v10 + 17);
        *(v11 + 120) = v24;
        *(v11 + 104) = v23;
        v26 = v10[11];
        v25 = v10[12];
        v27 = v10[10];
        *(v11 + 26) = *(v10 + 26);
        v11[11] = v26;
        v11[12] = v25;
        v11[10] = v27;
        v11[9] = v10[9];
        if (!v9)
        {
          break;
        }

        v9 = (v9 - 1) >> 1;
        v10 = (a1 + 216 * v9);
        v28 = *(v10 + 11);
        v15 = v28 == HIDWORD(v38);
        v29 = v28 > SHIDWORD(v38);
        if (v15)
        {
          v29 = *v10 > SLODWORD(v37[0]);
        }

        v11 = v20;
      }

      while (v29);
      v30 = v37[1];
      *v20 = v37[0];
      v20[1] = v30;
      v20[2] = v38;
      v31 = *(v20 + 6);
      if (v31)
      {
        *(v20 + 7) = v31;
        operator delete(v31);
        *(v20 + 6) = 0;
        *(v20 + 7) = 0;
        *(v20 + 8) = 0;
      }

      v20[3] = v39;
      *(v20 + 8) = v40;
      v40 = 0;
      v39 = 0uLL;
      *(v20 + 18) = v41;
      v32 = *(v20 + 10);
      if (v32)
      {
        *(v20 + 11) = v32;
        operator delete(v32);
        *(v20 + 10) = 0;
        *(v20 + 11) = 0;
        *(v20 + 12) = 0;
      }

      v20[5] = v42;
      *(v20 + 12) = v43;
      v43 = 0;
      v42 = 0uLL;
      v33 = v45;
      *(v20 + 104) = v44;
      *(v20 + 120) = v33;
      *(v20 + 17) = v46;
      v34 = v50;
      v20[11] = v49;
      v20[12] = v34;
      *(v20 + 26) = v51;
      v35 = v48;
      v20[9] = v47;
      v20[10] = v35;
      apple::vision::libraries::facecore::Face::~Face(v37);
    }
  }

  return result;
}

__n128 apple::vision::libraries::facecore::mod::aam::AamSearch3d::Init3dModel(apple::vision::libraries::facecore::mod::aam::AamSearch3d *this, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v19 = 0;
  apple::vision::libraries::facecore::mod::aam::utils::readFromBase64(0, apple::vision::libraries::facecore::mod::aam::aam3DInlined, 4, &v19, a5);
  if (v19 != 63)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x23EE98180](exception, "MeshVertices missmatch");
    goto LABEL_14;
  }

  apple::vision::libraries::facecore::mod::aam::utils::readFromBase64(4, apple::vision::libraries::facecore::mod::aam::aam3DInlined, 4, &v19, v6);
  if (v19 != 20)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x23EE98180](exception, "MeshPCs missmatch");
    goto LABEL_14;
  }

  v8 = this + 12851008;
  apple::vision::libraries::facecore::mod::aam::utils::readFromBase64(8, apple::vision::libraries::facecore::mod::aam::aam3DInlined, 0x5E8, this + 12851008, v7);
  v10 = this + 12852520;
  v11 = 1520;
  v12 = 20;
  do
  {
    apple::vision::libraries::facecore::mod::aam::utils::readFromBase64(v11, apple::vision::libraries::facecore::mod::aam::aam3DInlined, 0x5E8, v10, v9);
    v11 = (v11 + 1512);
    v10 += 1512;
    --v12;
  }

  while (v12);
  apple::vision::libraries::facecore::mod::aam::utils::readFromBase64(0x7C10, apple::vision::libraries::facecore::mod::aam::aam3DInlined, 0xA0, this + 12882760, v9);
  apple::vision::libraries::facecore::mod::aam::utils::readFromBase64(0x7CB0, apple::vision::libraries::facecore::mod::aam::aam3DInlined, 4, &v19, v13);
  if (v19 != 99)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x23EE98180](exception, "Mesh3dTriangles missmatch");
    goto LABEL_14;
  }

  std::vector<unsigned int>::resize((this + 12885440), 0x129uLL);
  apple::vision::libraries::facecore::mod::aam::utils::readFromBase64(0x7CB4, apple::vision::libraries::facecore::mod::aam::aam3DInlined, (12 * v19), *(this + 1610680), v14);
  apple::vision::libraries::facecore::mod::aam::utils::readFromBase64((12 * v19 + 31924), apple::vision::libraries::facecore::mod::aam::aam3DInlined, 4, &v19, v15);
  if (v19 != 1337)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x23EE98180](exception, "Didn't find termination tag in 3d model file");
LABEL_14:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *(this + 803186) = 0u;
  *(this + 803187) = 0u;
  *(this + 803184) = 0u;
  *(this + 803185) = 0u;
  *(this + 803182) = 0u;
  *(this + 803183) = 0u;
  *(this + 803180) = 0u;
  *(this + 803181) = 0u;
  v16 = 63;
  *(this + 803178) = 0u;
  *(this + 803179) = 0u;
  do
  {
    result = *v8;
    *(v8 + 31912) = *v8;
    *(v8 + 3991) = *(v8 + 2);
    v8 += 24;
    --v16;
  }

  while (v16);
  return result;
}

void std::vector<unsigned int>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v2);
  }
}

uint64_t apple::vision::libraries::facecore::mod::aam::AamSearch3d::GetTriList@<X0>(apple::vision::libraries::facecore::mod::aam::AamSearch3d *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a2, *(this + 1610680), *(this + 1610681), (*(this + 1610681) - *(this + 1610680)) >> 2);
}

double apple::vision::libraries::facecore::mod::aam::AamSearch3d::Get3dShapeParameters@<D0>(apple::vision::libraries::facecore::mod::aam::AamSearch3d *this@<X0>, void *a2@<X8>)
{
  v3 = std::vector<double>::vector[abi:ne200100](a2, 0x14uLL);
  v4 = 0;
  v5 = *v3;
  do
  {
    result = *(this + v4 + 12850848);
    *(v5 + v4) = result;
    v4 += 8;
  }

  while (v4 != 160);
  return result;
}

double apple::vision::libraries::facecore::mod::aam::AamSearch3d::Get3dShapeStd@<D0>(apple::vision::libraries::facecore::mod::aam::AamSearch3d *this@<X0>, void *a2@<X8>)
{
  v3 = std::vector<double>::vector[abi:ne200100](a2, 0x14uLL);
  v4 = 0;
  v5 = *v3;
  do
  {
    result = *(this + v4 + 12882760);
    *(v5 + v4) = result;
    v4 += 8;
  }

  while (v4 != 160);
  return result;
}

void *apple::vision::libraries::facecore::mod::aam::AamSearch3d::Optimize3dOrthographicSuccessive(apple::vision::libraries::facecore::mod::aam::AamSearch3d *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v175 = v2;
  v185 = *MEMORY[0x277D85DE8];
  v3 = (v1 + 12850776);
  *(v1 + 12850792) = 0;
  *(v1 + 12850800) = 0;
  v178 = (v1 + 12882936);
  *(v1 + 12850808) = 0;
  *(v1 + 12850816) = 0xBFF0000000000000;
  *(v1 + 12850832) = 0;
  *(v1 + 12850840) = 0;
  *(v1 + 12850824) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v1 + 12850776) = _Q0;
  v9 = v1 + 12850848;
  *(v1 + 12850848) = 0u;
  *(v1 + 12850864) = 0u;
  *(v1 + 12850880) = 0u;
  *(v1 + 12850896) = 0u;
  *(v1 + 12850912) = 0u;
  *(v1 + 12850928) = 0u;
  v10 = v1 + 12851008;
  *(v1 + 12850944) = 0u;
  *(v1 + 12850960) = 0u;
  v176 = v1;
  v11 = v1 + 12882920;
  v12 = 63;
  v168 = v1 + 12851008;
  *(v1 + 12850976) = 0u;
  *(v1 + 12850992) = 0u;
  do
  {
    *(v10 + 31912) = *v10;
    *(v10 + 31928) = *(v10 + 16);
    v10 += 24;
    --v12;
  }

  while (v12);
  v165[1] = v165;
  v183 = 6;
  MEMORY[0x28223BE20](v1);
  v13 = MEMORY[0x28223BE20](v164);
  v15 = &v164[v14];
  v170 = v13;
  vDSP_vclrD(v13, 1, 0x2F4uLL);
  vDSP_vclrD(v15, 1, 126 * v183);
  v174 = v3;
  if (v175 >= 1)
  {
    v17 = 0;
    v18 = v176 + 805277;
    v169 = v170 + 5;
    v167 = v178 + 94;
    v166 = vdupq_n_s64(0x3FE3333333333333uLL);
    do
    {
      LODWORD(v177) = v17;
      v19 = 0;
      v20 = v3[2];
      v21 = v3[3];
      v22 = v183;
      v23 = v3[4];
      v24 = v3[5];
      v25 = v3[6];
      v27 = *v3;
      v26 = v3[1];
      v28 = v169;
      v29 = apple::vision::libraries::facecore::mod::aam::point3d2d;
      do
      {
        v30 = *v29++;
        v31 = (v11 + 24 * v30);
        v32 = *v31;
        v33 = v31[1];
        v34 = v20 * v33 + v26 * *v31;
        v35 = v31[2];
        v36 = &v15[v19];
        v37 = v34 + v21 * v35;
        *(v28 - 5) = v37;
        v38 = v33 * v24 + v23 * v32 + v25 * v35;
        *v36 = v37;
        v36[1] = v38;
        v39 = &v28[v22];
        *(v39 - 5) = v38;
        v40 = v27 * (v33 * v21 + v32 * 0.0 + -v20 * v35);
        v36[126] = v40;
        v41 = v27 * (v33 * v25 + v32 * 0.0 + -v24 * v35);
        *(v28 - 4) = v40;
        v36[127] = v41;
        v42 = v27 * (v33 * 0.0 + -v21 * v32 + v26 * v35);
        *(v39 - 4) = v41;
        v36[252] = v42;
        *(v28 - 3) = v42;
        v43 = v27 * (v33 * 0.0 + -v25 * v32 + v23 * v35);
        v36[253] = v43;
        *(v39 - 3) = v43;
        v44 = v27 * (v33 * -v26 + v20 * v32 + v35 * 0.0);
        v36[378] = v44;
        *(v28 - 2) = v44;
        v45 = v27 * (v33 * -v23 + v24 * v32 + v35 * 0.0);
        v36[379] = v45;
        *(v39 - 2) = v45;
        v36[504] = 1.0;
        *(v28 - 1) = 1.0;
        v36[505] = 0.0;
        v36[630] = 0.0;
        *(v39 - 1) = 0.0;
        *v28 = 0.0;
        v36[631] = 1.0;
        *v39 = 1.0;
        v19 += 2;
        v28 += 2 * v22;
      }

      while (v19 != 126);
      v173 = v164;
      MEMORY[0x28223BE20](v16);
      v172 = &v164[-v46];
      vDSP_mmulD(v15, 1, v170, 1, &v164[-v46], 1, v183, v183, 0x7EuLL);
      v47 = 0;
      v48 = *v3;
      v49 = v3[1];
      v50 = v3[2];
      v51 = v3[3];
      v52 = v3[4];
      v53 = v3[5];
      v55 = v3[6];
      v54 = v3[7];
      v56 = v167;
      v57 = v3[8];
      do
      {
        v58 = (v11 + 24 * apple::vision::libraries::facecore::mod::aam::point3d2d[v47]);
        v59 = v58[1];
        v60 = v58[2];
        v61 = v59 * v53 + v52 * *v58 + v55 * v60;
        *(v56 - 1) = v54 + v48 * (v50 * v59 + v49 * *v58 + v51 * v60);
        *v56 = v57 + v48 * v61;
        v56 += 2;
        ++v47;
      }

      while (v47 != 63);
      memcpy(v184, &v176[63].f64[1], 0x3F0uLL);
      for (i = 0; i != 1008; i += 16)
      {
        *&v184[i / 4] = vsubq_f64(*&v184[i / 4], v18[i / 0x10]);
      }

      v63 = memcpy(v179, v184, 0x3F0uLL);
      MEMORY[0x28223BE20](v63);
      v171 = &v164[-1008];
      vDSP_mtransD(v179, 1, &v164[-1008], 1, 0x7EuLL, 1uLL);
      MEMORY[0x28223BE20](v64);
      v66 = &v164[-((v65 + 15) & 0xFFFFFFFF0)];
      vDSP_mmulD(v15, 1, v171, 1, v66->f64, 1, v67, 1uLL, 0x7EuLL);
      v184[0] = 1;
      MEMORY[0x28223BE20](v68);
      LODWORD(v182[0]) = 0;
      v16 = dgesv_NEWLAPACK();
      v69 = v174;
      v70 = v174[1];
      v71 = *v174 + v66->f64[0] * 0.6;
      v72 = v66->f64[1] * 0.6;
      v73 = v66[1].f64[0] * 0.6;
      v74 = v66[1].f64[1] * 0.6;
      v75 = v66[2];
      v3 = v174;
      *(v174 + 7) = vmlaq_f64(*(v174 + 7), v166, v75);
      v76 = v69[2];
      v77 = v69[3];
      v78 = v70 + v74 * v76 - v77 * v73;
      v79 = v76 - v70 * v74 + v77 * v72;
      v80 = v77 + v70 * v73 - v72 * v76;
      *v69 = v71;
      v69[1] = v78;
      v69[2] = v79;
      v69[3] = v80;
      v81 = v69[4];
      v82 = v69[5];
      v83 = v69[6];
      v84 = v81 + v74 * v82 - v83 * v73;
      v85 = v82 - v81 * v74 + v83 * v72;
      v86 = v83 + v81 * v73 - v72 * v82;
      v87 = v79 * v86 - v80 * v85;
      v88 = v80 * v84 - v78 * v86;
      v89 = v78 * v85 - v79 * v84;
      v90 = v88 * v80 - v89 * v79;
      v91 = v89 * v78 - v87 * v80;
      v92 = v87 * v79 - v88 * v78;
      v69[4] = v90;
      v69[5] = v91;
      v69[6] = v92;
      v93 = sqrt(v91 * v91 + v90 * v90 + v92 * v92);
      if (v93 != 0.0)
      {
        v94 = 1.0 / v93;
        v3[4] = v90 * v94;
        v3[5] = v91 * v94;
        v3[6] = v92 * v94;
      }

      v95 = sqrt(v79 * v79 + v78 * v78 + v80 * v80);
      v96 = v177;
      if (v95 != 0.0)
      {
        v97 = 1.0 / v95;
        v3[1] = v78 * v97;
        v3[2] = v79 * v97;
        v3[3] = v80 * v97;
      }

      v17 = v96 + 1;
    }

    while (v17 != v175);
  }

  v183 = 20;
  MEMORY[0x28223BE20](v16);
  v98 = MEMORY[0x28223BE20](&v164[-20160]);
  v100 = &v164[v99];
  v173 = v98;
  vDSP_vclrD(v98, 1, 0x9D8uLL);
  vDSP_vclrD(v100, 1, 126 * v183);
  if (v175 >= 1)
  {
    v102 = 0;
    v103 = &v176[803282].f64[1];
    v167 = v176 + 805277;
    *&v166.f64[0] = v178[94].f64;
    v177 = &v179[2];
    do
    {
      LODWORD(v172) = v102;
      v104 = 0;
      v105 = *v3;
      v106 = v3[1];
      v107 = v3[2];
      v108 = v3[3];
      v109 = v183;
      v110 = v3[4];
      v111 = v3[5];
      v113 = v3[6];
      v112 = v3[7];
      v114 = v3[8];
      v115 = v173;
      v116 = 8;
      do
      {
        v117 = 0;
        v118 = v115;
        v119 = v116;
        do
        {
          v120 = &v103[1512 * v104 + 24 * apple::vision::libraries::facecore::mod::aam::point3d2d[v117]];
          v121 = *v120;
          v122 = v120[1];
          v123 = v120[2];
          v124 = v112 + v105 * (v107 * v122 + v106 * *v120 + v108 * v123);
          v125 = (v100 + v119);
          *v118 = v124;
          v126 = v114 + v105 * (v122 * v111 + v110 * v121 + v113 * v123);
          *(v125 - 1) = v124;
          *v125 = v126;
          v118[v109] = v126;
          v119 += 16;
          v118 += 2 * v109;
          ++v117;
        }

        while (v117 != 63);
        ++v104;
        v116 += 1008;
        ++v115;
      }

      while (v104 != 20);
      v171 = v164;
      MEMORY[0x28223BE20](v101);
      v170 = &v164[-v127];
      vDSP_mmulD(v100, 1, v173, 1, &v164[-v127], 1, v183, v183, 0x7EuLL);
      v128 = 0;
      v129 = *v3;
      v130 = v3[1];
      v131 = v3[2];
      v132 = v3[3];
      v133 = v3[4];
      v134 = v3[5];
      v136 = v3[6];
      v135 = v3[7];
      v137 = v166.f64[0];
      v138 = v3[8];
      do
      {
        v139 = (v11 + 24 * apple::vision::libraries::facecore::mod::aam::point3d2d[v128]);
        v140 = v139[1];
        v141 = v139[2];
        v142 = v140 * v134 + v133 * *v139 + v136 * v141;
        *(*&v137 - 8) = v135 + v129 * (v131 * v140 + v130 * *v139 + v132 * v141);
        **&v137 = v138 + v129 * v142;
        *&v137 += 16;
        ++v128;
      }

      while (v128 != 63);
      memcpy(v184, &v176[63].f64[1], 0x3F0uLL);
      v143 = 0;
      v144 = v167;
      do
      {
        *&v184[v143 / 4] = vsubq_f64(*&v184[v143 / 4], v144[v143 / 0x10]);
        v143 += 16;
      }

      while (v143 != 1008);
      v145 = memcpy(v182, v184, sizeof(v182));
      MEMORY[0x28223BE20](v145);
      v169 = &v164[-1008];
      vDSP_mtransD(v182, 1, &v164[-1008], 1, 0x7EuLL, 1uLL);
      MEMORY[0x28223BE20](v146);
      v148 = &v164[-((v147 + 15) & 0xFFFFFFFF0)];
      vDSP_mmulD(v100, 1, v169, 1, v148, 1, v149, 1uLL, 0x7EuLL);
      v181 = 1;
      MEMORY[0x28223BE20](v150);
      v180 = 0;
      dgesv_NEWLAPACK();
      for (j = 0; j != 20; j += 2)
      {
        *(v9 + j * 8) = vaddq_f64(*&v148[j], *(v9 + j * 8));
      }

      v152 = v168;
      v153 = 63;
      do
      {
        *(v152 + 31912) = *v152;
        *(v152 + 31928) = *(v152 + 16);
        v152 += 24;
        --v153;
      }

      while (v153);
      for (k = 0; k != 20; ++k)
      {
        memcpy(v184, &v103[1512 * k], sizeof(v184));
        v155 = 0;
        v156 = *(v9 + 8 * k);
        do
        {
          v157 = &v184[v155];
          *v157 = vmulq_n_f64(*&v184[v155], v156);
          v157[1].f64[0] = v156 * *&v184[v155 + 4];
          v155 += 6;
        }

        while (v155 != 378);
        v101 = memcpy(v179, v184, sizeof(v179));
        v158 = v177;
        v159 = v178;
        v160 = 63;
        do
        {
          *(v159 - 1) = vaddq_f64(*(v158 - 2), *(v159 - 2));
          v161 = *v158;
          v158 += 3;
          *v159 = v161 + *v159;
          v159 += 3;
          --v160;
        }

        while (v160);
      }

      v102 = v172 + 1;
      v3 = v174;
    }

    while (v172 + 1 != v175);
  }

  v162 = v176;
  apple::vision::libraries::facecore::mod::aam::AamSearch::TransformShape(v176, &v176[805277], v184);
  return memcpy(&v162[805277], v184, 0x3F0uLL);
}

void *apple::vision::libraries::facecore::mod::aam::AamSearch3d::Optimize3dOrthographic(apple::vision::libraries::facecore::mod::aam::AamSearch3d *this)
{
  v1 = MEMORY[0x28223BE20](this);
  v137 = v2;
  v152 = *MEMORY[0x277D85DE8];
  *(v1 + 12850792) = 0;
  *(v1 + 12850800) = 0;
  v145 = (v1 + 12882936);
  *(v1 + 12850808) = 0;
  *(v1 + 12850816) = 0xBFF0000000000000;
  *(v1 + 12850832) = 0;
  *(v1 + 12850840) = 0;
  *(v1 + 12850824) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v8 = (v1 + 12850776);
  *(v1 + 12850776) = _Q0;
  v9 = v1 + 12850848;
  *(v1 + 12850848) = 0u;
  *(v1 + 12850864) = 0u;
  *(v1 + 12850880) = 0u;
  *(v1 + 12850896) = 0u;
  *(v1 + 12850912) = 0u;
  *(v1 + 12850928) = 0u;
  v10 = v1 + 12851008;
  *(v1 + 12850944) = 0u;
  *(v1 + 12850960) = 0u;
  v138 = v1;
  v11 = v1 + 12882920;
  v12 = 63;
  v136 = v1 + 12851008;
  *(v1 + 12850976) = 0u;
  *(v1 + 12850992) = 0u;
  do
  {
    *(v10 + 31912) = *v10;
    *(v10 + 31928) = *(v10 + 16);
    v10 += 24;
    --v12;
  }

  while (v12);
  v132[1] = v132;
  v150 = 11;
  v13 = MEMORY[0x28223BE20](v1);
  MEMORY[0x28223BE20](v13);
  v15 = (v131 + v14);
  vDSP_vclrD(v131, 1, 0x56AuLL);
  vDSP_vclrD(v15, 1, 0x56AuLL);
  if (v137 >= 1)
  {
    v16 = v8;
    v17 = 0;
    v18 = &v138[803282].f64[1];
    v134 = v145 + 188;
    v135 = v138 + 805277;
    v144 = &v146[16];
    v19 = xmmword_23B251EC0;
    v143 = v16;
    v133 = xmmword_23B251EC0;
    do
    {
      v142 = v17;
      v20 = 0;
      v21 = v16[2];
      v22 = v16[3];
      v23 = v150;
      v24 = v16[4];
      v25 = v16[5];
      v26 = v16[6];
      v28 = *v16;
      v27 = v16[1];
      v29 = 16 * v150;
      v30 = 8 * v150 + 40;
      v31 = 40;
      v32 = apple::vision::libraries::facecore::mod::aam::point3d2d;
      do
      {
        v33 = *v32++;
        v34 = (v11 + 24 * v33);
        v35 = *v34;
        v36 = v34[1];
        v37 = v21 * v36 + v27 * *v34;
        v38 = v34[2];
        v39 = &v15[v20];
        v40 = (v131 + v31);
        v41 = v37 + v22 * v38;
        *(v40 - 5) = v41;
        v42 = v36 * v25 + v24 * v35 + v26 * v38;
        *v39 = v41;
        v39[1] = v42;
        v43 = (v131 + v30);
        *(v43 - 5) = v42;
        v44 = v28 * (v36 * v22 + v35 * 0.0 + -v21 * v38);
        v39[126] = v44;
        v45 = v28 * (v36 * v26 + v35 * 0.0 + -v25 * v38);
        *(v40 - 4) = v44;
        v39[127] = v45;
        v46 = v28 * (v36 * 0.0 + -v22 * v35 + v27 * v38);
        *(v43 - 4) = v45;
        v39[252] = v46;
        *(v40 - 3) = v46;
        v47 = v28 * (v36 * 0.0 + -v26 * v35 + v24 * v38);
        v39[253] = v47;
        *(v43 - 3) = v47;
        v48 = v28 * (v36 * -v27 + v21 * v35 + v38 * 0.0);
        v39[378] = v48;
        *(v40 - 2) = v48;
        v49 = v28 * (v36 * -v24 + v25 * v35 + v38 * 0.0);
        v39[379] = v49;
        *(v43 - 2) = v49;
        v39[504] = 1.0;
        *(v40 - 1) = 1.0;
        v39[505] = 0.0;
        *(v43 - 1) = 0.0;
        *v40 = 0.0;
        *(v39 + 315) = v19;
        *v43 = 1.0;
        v20 += 2;
        v31 += v29;
        v30 += v29;
      }

      while (v20 != 126);
      v50 = 0;
      v51 = v16[7];
      v52 = v16[8];
      v53 = 6;
      v54 = 6056;
      do
      {
        v55 = 0;
        v56 = v54;
        v57 = v53;
        do
        {
          v58 = &v18[1512 * v50 + 24 * apple::vision::libraries::facecore::mod::aam::point3d2d[v55]];
          v59 = *v58;
          v60 = v58[1];
          v61 = v58[2];
          v62 = v21 * v60 + v27 * *v58 + v22 * v61;
          v63 = (v15 + v56);
          v64 = v60 * v25 + v24 * v59 + v26 * v61;
          v65 = v51 + v28 * v62;
          v66 = v52 + v28 * v64;
          *(v63 - 1) = v65;
          *v63 = v66;
          v131[v57] = v65;
          v131[v23 + v57] = v66;
          v57 += 2 * v23;
          v56 += 16;
          ++v55;
        }

        while (v55 != 63);
        ++v50;
        ++v53;
        v54 += 1008;
      }

      while (v50 != 5);
      v141 = v131;
      MEMORY[0x28223BE20](v16);
      v140 = v131 - v67;
      vDSP_mmulD(v15, 1, v131, 1, (v131 - v67), 1, v150, v150, 0x7EuLL);
      v68 = 0;
      v69 = *v143;
      v70 = v143[1];
      v71 = v143[2];
      v72 = v143[3];
      v73 = v143[4];
      v74 = v143[5];
      v76 = v143[6];
      v75 = v143[7];
      v77 = v134;
      v78 = v143[8];
      do
      {
        v79 = (v11 + 24 * apple::vision::libraries::facecore::mod::aam::point3d2d[v68]);
        v80 = v79[1];
        v81 = v79[2];
        v82 = v80 * v74 + v73 * *v79 + v76 * v81;
        *(v77 - 1) = v75 + v69 * (v71 * v80 + v70 * *v79 + v72 * v81);
        *v77 = v78 + v69 * v82;
        v77 += 2;
        ++v68;
      }

      while (v68 != 63);
      memcpy(v151, &v138[63].f64[1], 0x3F0uLL);
      v83 = 0;
      v84 = v135;
      do
      {
        *&v151[v83 * 16] = vsubq_f64(*&v151[v83 * 16], v84[v83]);
        ++v83;
      }

      while (v83 != 63);
      v85 = memcpy(v149, v151, sizeof(v149));
      MEMORY[0x28223BE20](v85);
      v139 = &v131[-126];
      vDSP_mtransD(v149, 1, &v131[-126], 1, 0x7EuLL, 1uLL);
      MEMORY[0x28223BE20](v86);
      v88 = (v131 - ((v87 + 15) & 0xFFFFFFFF0));
      vDSP_mmulD(v15, 1, v139, 1, v88->f64, 1, v89, 1uLL, 0x7EuLL);
      v148 = 1;
      MEMORY[0x28223BE20](v90);
      v147 = 0;
      dgesv_NEWLAPACK();
      v91 = v88->f64[1];
      v92 = v143;
      v93 = v143[1];
      v94 = v88->f64[0] + *v143;
      v95 = v88[1].f64[0];
      v96 = v88[1].f64[1];
      *(v143 + 7) = vaddq_f64(v88[2], *(v143 + 7));
      v97 = v92[2];
      v98 = v92[3];
      v99 = v93 + v96 * v97 - v98 * v95;
      v100 = v97 - v93 * v96 + v98 * v91;
      v101 = v98 + v93 * v95 - v91 * v97;
      *v92 = v94;
      v92[1] = v99;
      v92[2] = v100;
      v92[3] = v101;
      v102 = v92[4];
      v103 = v92[5];
      v104 = v92[6];
      v105 = v102 + v96 * v103 - v104 * v95;
      v106 = v103 - v102 * v96 + v104 * v91;
      v107 = v104 + v102 * v95 - v91 * v103;
      v108 = v100 * v107 - v101 * v106;
      v109 = v101 * v105 - v99 * v107;
      v110 = v99 * v106 - v100 * v105;
      v111 = v109 * v101 - v110 * v100;
      v112 = v110 * v99 - v108 * v101;
      v113 = v108 * v100 - v109 * v99;
      v92[4] = v111;
      v92[5] = v112;
      v92[6] = v113;
      v114 = sqrt(v112 * v112 + v111 * v111 + v113 * v113);
      if (v114 != 0.0)
      {
        v115 = 1.0 / v114;
        v92[4] = v111 * v115;
        v92[5] = v112 * v115;
        v92[6] = v113 * v115;
      }

      v116 = sqrt(v100 * v100 + v99 * v99 + v101 * v101);
      if (v116 != 0.0)
      {
        v117 = 1.0 / v116;
        v92[1] = v99 * v117;
        v92[2] = v100 * v117;
        v92[3] = v101 * v117;
      }

      for (i = 0; i != 5; ++i)
      {
        *(v9 + i * 8) = v88[3].f64[i] + *(v9 + i * 8);
      }

      v119 = v136;
      v120 = 63;
      do
      {
        *(v119 + 31912) = *v119;
        *(v119 + 31928) = *(v119 + 16);
        v119 += 24;
        --v120;
      }

      while (v120);
      for (j = 0; j != 5; ++j)
      {
        memcpy(v151, &v18[1512 * j], sizeof(v151));
        v122 = 0;
        v123 = *(v9 + 8 * j);
        do
        {
          v124 = &v151[v122];
          *v124 = vmulq_n_f64(*&v151[v122], v123);
          v124[1].f64[0] = v123 * *&v151[v122 + 16];
          v122 += 24;
        }

        while (v122 != 1512);
        memcpy(v146, v151, sizeof(v146));
        v125 = v144;
        v126 = v145;
        v127 = 63;
        do
        {
          *(v126 - 1) = vaddq_f64(*(v125 - 2), *(v126 - 2));
          v128 = *v125;
          v125 += 3;
          *v126 = v128 + *v126;
          v126 += 3;
          --v127;
        }

        while (v127);
      }

      v17 = v142 + 1;
      v16 = v143;
      v19 = v133;
    }

    while (v142 + 1 != v137);
  }

  v129 = v138;
  apple::vision::libraries::facecore::mod::aam::AamSearch::TransformShape(v138, &v138[805277], v151);
  return memcpy(&v129[805277], v151, 0x3F0uLL);
}

void apple::vision::libraries::facecore::mod::aam::AamSearch3d::CalculateParameterUpdatesSic3d(apple::vision::libraries::facecore::mod::aam::AamSearch3d *this, double *a2, double *a3)
{
  v3 = MEMORY[0x28223BE20](this);
  v220 = *MEMORY[0x277D85DE8];
  if (v6 <= 50)
  {
    v7 = v5;
    v8 = v4;
    v9 = v3;
    v209 = 86;
    v10 = MEMORY[0x28223BE20](v3);
    MEMORY[0x28223BE20](v10);
    vDSP_vclrD(v192, 1, 0x56uLL);
    vDSP_vclrD(v193, 1, 0x56uLL);
    memcpy(v192, v8, 0x1E0uLL);
    v208 = 0.0005;
    v207 = 0;
    v206 = 0;
    std::valarray<float>::resize(&v206, 0x1F0uLL);
    v11 = 0;
    v12 = *(v9 + 134128);
    v216 = *(v9 + 134112);
    v217 = v12;
    v218 = *(v9 + 134144);
    v13 = *(v9 + 134064);
    v212 = *(v9 + 134048);
    v213 = v13;
    v14 = *(v9 + 134096);
    v214 = *(v9 + 134080);
    v201 = (v9 + 12882936);
    v211 = 1065353216;
    v219 = *(v9 + 134160);
    v215 = v14;
    v15 = 1;
    v16 = v206;
    v17 = v206;
    do
    {
      v18 = 0;
      v19 = *(&v211 + v11);
      do
      {
        v17[(v11 - 1) * v11 / 2 + v18] = v19 * *(&v211 + v18);
        ++v18;
      }

      while (v15 != v18);
      ++v11;
      ++v15;
      ++v17;
    }

    while (v11 != 31);
    v20 = 0;
    v21 = v207;
    v22 = *(v9 + 55092) - 5;
    do
    {
      v23 = &v193[86 * v20];
      for (i = v20; i != 30; ++i)
      {
        if (v16 == v21)
        {
          v26 = 0.0;
        }

        else
        {
          v25 = (v9 + 161392 + 1785600 * v22 + 59520 * i + 1984 * v20);
          v26 = 0.0;
          v27 = v16;
          do
          {
            v28 = *v27++;
            v29 = v28;
            v30 = *v25++;
            v26 = v26 + (v29 * v30);
          }

          while (v27 != v21);
        }

        v193[86 * i + v20] = v26;
        v23[i] = v26;
      }

      ++v20;
    }

    while (v20 != 30);
    v31 = v9 + 111600 * v22 + 7303792;
    do
    {
      v32 = 0;
      v33 = v31;
      do
      {
        v34 = 0;
        v35 = 0.0;
        do
        {
          v35 = v35 + (*(&v211 + v34) * *(v33 + v34));
          v34 += 4;
        }

        while (v34 != 124);
        v193[86 * v32 + v20] = v35;
        v193[86 * v20 + v32++] = v35;
        v33 += 3720;
      }

      while (v32 != 30);
      ++v20;
      v31 += 124;
    }

    while (v20 != 60);
    v36 = &v194;
    v37 = 30;
    v38 = 20640;
    do
    {
      v39 = 0;
      v40 = v36;
      do
      {
        if (v39)
        {
          v36[v39 / 8] = 0;
          *v40 = 0;
        }

        else
        {
          v193[87 * v37] = 1.0;
        }

        ++v40;
        v39 += 688;
      }

      while (v38 != v39);
      ++v37;
      v36 += 87;
      v38 -= 688;
    }

    while (v37 != 60);
    v41 = 0;
    v42 = v9 + 7775152;
    do
    {
      v43 = v42;
      v44 = v41;
      v45 = &v193[v41];
      do
      {
        v46 = 0;
        v47 = 0.0;
        do
        {
          v47 = v47 + (*(v43 + v46) * *(v42 + v46));
          v46 += 4;
        }

        while (v46 != 236);
        v48 = v45[86 * v44] + v47;
        v45[86 * v44] = v48;
        v193[86 * v41 + v44++] = v48;
        v43 += 240;
      }

      while (v44 != 60);
      ++v41;
      v42 += 240;
    }

    while (v41 != 60);
    v197 = v192;
    v198 = v193;
    v200 = v9 + 12850776;
    v195[2] = v195;
    v209 = 86;
    v49 = MEMORY[0x28223BE20](v23);
    MEMORY[0x28223BE20](v49);
    v51 = (v191 + v50);
    vDSP_vclrD(v191, 1, 0x2A54uLL);
    vDSP_vclrD(v51, 1, 0x2A54uLL);
    v52 = 0;
    v196 = v9 + 1016;
    v53 = v9 + 12886728;
    v54 = v191;
    v55 = v51;
    do
    {
      *(v7 + 448) = 0u;
      *(v7 + 464) = 0u;
      *(v7 + 416) = 0u;
      *(v7 + 432) = 0u;
      *(v7 + 384) = 0u;
      *(v7 + 400) = 0u;
      *(v7 + 352) = 0u;
      *(v7 + 368) = 0u;
      *(v7 + 320) = 0u;
      *(v7 + 336) = 0u;
      *(v7 + 288) = 0u;
      *(v7 + 304) = 0u;
      *(v7 + 256) = 0u;
      *(v7 + 272) = 0u;
      *(v7 + 224) = 0u;
      *(v7 + 240) = 0u;
      *(v7 + 192) = 0u;
      *(v7 + 208) = 0u;
      *(v7 + 160) = 0u;
      *(v7 + 176) = 0u;
      *(v7 + 128) = 0u;
      *(v7 + 144) = 0u;
      *(v7 + 96) = 0u;
      *(v7 + 112) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 80) = 0u;
      *(v7 + 32) = 0u;
      *(v7 + 48) = 0u;
      *v7 = 0u;
      *(v7 + 16) = 0u;
      *(v7 + 8 * v52) = 0x3FF0000000000000;
      apple::vision::libraries::facecore::mod::aam::AamSearch3d::UpdateParametersSic3d(v9, v7);
      apple::vision::libraries::facecore::mod::aam::AamSearch3d::UpdateShapeSic3d(v9);
      v56 = 0;
      v57 = v54;
      do
      {
        v58 = vnegq_f64(vsubq_f64(*(v9 + v56 * 8 + 1016), *(v53 + v56 * 8)));
        *v57 = v58.f64[0];
        *&v55[v56] = v58;
        v57[86] = v58.f64[1];
        v56 += 2;
        v57 += 172;
      }

      while (v56 != 126);
      ++v52;
      v55 += 126;
      ++v54;
    }

    while (v52 != 4);
    v59 = v51 + 504;
    v60 = 4;
    v61 = v191;
    do
    {
      *(v7 + 448) = 0u;
      *(v7 + 464) = 0u;
      *(v7 + 416) = 0u;
      *(v7 + 432) = 0u;
      *(v7 + 384) = 0u;
      *(v7 + 400) = 0u;
      *(v7 + 352) = 0u;
      *(v7 + 368) = 0u;
      *(v7 + 320) = 0u;
      *(v7 + 336) = 0u;
      *(v7 + 288) = 0u;
      *(v7 + 304) = 0u;
      *(v7 + 256) = 0u;
      *(v7 + 272) = 0u;
      *(v7 + 224) = 0u;
      *(v7 + 240) = 0u;
      *(v7 + 192) = 0u;
      *(v7 + 208) = 0u;
      *(v7 + 160) = 0u;
      *(v7 + 176) = 0u;
      *(v7 + 128) = 0u;
      *(v7 + 144) = 0u;
      *(v7 + 96) = 0u;
      *(v7 + 112) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 80) = 0u;
      *(v7 + 32) = 0u;
      *(v7 + 48) = 0u;
      *v7 = 0u;
      *(v7 + 16) = 0u;
      *(v7 + 8 * v60) = 0x3FF0000000000000;
      apple::vision::libraries::facecore::mod::aam::AamSearch3d::UpdateParametersSic3d(v9, v7);
      apple::vision::libraries::facecore::mod::aam::AamSearch3d::UpdateShapeSic3d(v9);
      v62 = -1008;
      v63 = v61;
      do
      {
        v64 = vnegq_f64(vsubq_f64(*(v9 + v62 + 2024), *(v53 + v62 + 1008)));
        v63[4] = v64.f64[0];
        *&v59[v62 / 8 + 126] = v64;
        v63[90] = v64.f64[1];
        v63 += 172;
        v62 += 16;
      }

      while (v62);
      ++v60;
      v59 += 126;
      ++v61;
    }

    while (v60 != 30);
    v65 = 0;
    v66 = v9 + 12882920;
    v67 = v200;
    v68 = *(v200 + 16);
    v69 = *(v200 + 24);
    v70 = *(v200 + 32);
    v71 = *(v200 + 40);
    v72 = *(v200 + 48);
    v73 = *(v200 + 8);
    v74 = -*v200;
    v75 = 4032;
    v76 = 8190;
    v77 = 7560;
    v78 = apple::vision::libraries::facecore::mod::aam::point3d2d;
    do
    {
      v79 = *v78++;
      v80 = (v66 + 24 * v79);
      v81 = *v80;
      v82 = v80[1];
      v83 = v68 * v82 + v73 * *v80;
      v84 = v80[2];
      v85 = &v51[v77];
      v86 = -(v83 + v69 * v84);
      v87 = &v191[v65];
      v88 = -(v82 * v71 + v70 * v81 + v72 * v84);
      *v85 = v86;
      v85[1] = v88;
      v87[146] = v88;
      v89 = (v82 * v69 + v81 * 0.0 + -v68 * v84) * v74;
      v85[126] = v89;
      v90 = (v82 * v72 + v81 * 0.0 + -v71 * v84) * v74;
      v87[60] = v86;
      v87[61] = v89;
      v85[127] = v90;
      v91 = (v82 * 0.0 + -v69 * v81 + v73 * v84) * v74;
      v87[147] = v90;
      v85[252] = v91;
      v92 = (v82 * 0.0 + -v72 * v81 + v70 * v84) * v74;
      v85[253] = v92;
      v87[148] = v92;
      v93 = (v82 * -v73 + v68 * v81 + v84 * 0.0) * v74;
      v85[378] = v93;
      v87[62] = v91;
      v87[63] = v93;
      v94 = (v82 * -v70 + v71 * v81 + v84 * 0.0) * v74;
      v85[379] = v94;
      v87[149] = v94;
      *&v51[2 * v75] = xmmword_23B253520;
      *(v87 + 32) = xmmword_23B253520;
      *&v51[v76] = xmmword_23B253530;
      *(v87 + 75) = xmmword_23B253530;
      v65 += 172;
      ++v75;
      v76 += 2;
      v77 += 2;
    }

    while (v75 != 4095);
    v95 = 0;
    v96 = v67[1];
    v97 = -*v67;
    v98 = v9 + 12852520;
    v99 = v67[2];
    v100 = v67[3];
    v101 = v209;
    v102 = v67[4];
    v103 = v67[5];
    v105 = v67[6];
    v104 = v67[7];
    v106 = 2 * v209;
    v107 = v67[8];
    v108 = 66;
    v109 = 66536;
    do
    {
      v110 = 0;
      v111 = v109;
      v112 = v108;
      do
      {
        v113 = (v98 + 1512 * v95 + 24 * apple::vision::libraries::facecore::mod::aam::point3d2d[v110]);
        v114 = *v113;
        v115 = v113[1];
        v116 = v113[2];
        v117 = v99 * v115 + v96 * *v113 + v100 * v116;
        v118 = (v51 + v111);
        v119 = v115 * v103 + v102 * v114 + v105 * v116;
        v120 = v104 + v97 * v117;
        v121 = v107 + v97 * v119;
        *(v118 - 1) = v120;
        *v118 = v121;
        v122 = (v101 + v112);
        v191[v112] = v120;
        v191[v122] = v121;
        v112 += v106;
        v111 += 16;
        ++v110;
      }

      while (v110 != 63);
      ++v95;
      ++v108;
      v109 += 1008;
    }

    while (v95 != 20);
    v195[1] = v191;
    v199 = v101;
    MEMORY[0x28223BE20](v122);
    v124 = (v191 - v123);
    vDSP_mmulD(v51, 1, v191, 1, (v191 - v123), 1, v101, v101, 0x7EuLL);
    MEMORY[0x28223BE20](v125);
    vDSP_vsmaD(v124, 1, &v208, v198, 1, (v191 - ((v126 + 15) & 0x7FFFFFFF0)), 1, (v101 * v101));
    v127 = 0;
    v128 = *v200;
    v129 = *(v200 + 8);
    v130 = *(v200 + 16);
    v131 = *(v200 + 24);
    v132 = *(v200 + 32);
    v133 = *(v200 + 40);
    v135 = *(v200 + 48);
    v134 = *(v200 + 56);
    v136 = v201 + 188;
    v137 = *(v200 + 64);
    do
    {
      v138 = (v66 + 24 * apple::vision::libraries::facecore::mod::aam::point3d2d[v127]);
      v139 = v138[1];
      v140 = v138[2];
      v141 = v139 * v133 + v132 * *v138 + v135 * v140;
      *(v136 - 1) = v134 + v128 * (v130 * v139 + v129 * *v138 + v131 * v140);
      *v136 = v137 + v128 * v141;
      v136 += 2;
      ++v127;
    }

    while (v127 != 63);
    memcpy(v210, (v9 + 12884432), 0x3F0uLL);
    v142 = 0;
    v143 = v196;
    do
    {
      *&v210[v142] = vsubq_f64(*&v210[v142], *(v143 + v142));
      v142 += 16;
    }

    while (v142 != 1008);
    v144 = memcpy(v205, v210, sizeof(v205));
    MEMORY[0x28223BE20](v144);
    vDSP_mtransD(v205, 1, &v191[-126], 1, 0x7EuLL, 1uLL);
    v146 = MEMORY[0x28223BE20](v145);
    v148 = (v191 - ((v147 + 15) & 0xFFFFFFFF0));
    MEMORY[0x28223BE20](v146);
    v150 = (v191 - v149);
    vDSP_mmulD(v51, 1, &v191[-126], 1, v148, 1, v101, 1uLL, 0x7EuLL);
    vDSP_vsmaD(v148, 1, &v208, v197, 1, v150->f64, 1, v101);
    v204 = 1;
    MEMORY[0x28223BE20](v151);
    v203 = 0;
    dgesv_NEWLAPACK();
    v152 = v150[30].f64[1];
    v153 = v200;
    v154 = *(v200 + 8);
    v155 = v150[30].f64[0] + *v200;
    v156 = v150[31].f64[0];
    v157 = v150[31].f64[1];
    *(v200 + 56) = vaddq_f64(v150[32], *(v200 + 56));
    v158 = v153[2];
    v159 = v153[3];
    v160 = v154 + v157 * v158 - v159 * v156;
    v161 = v158 - v154 * v157 + v159 * v152;
    v162 = v159 + v154 * v156 - v152 * v158;
    *v153 = v155;
    v153[1] = v160;
    v153[2] = v161;
    v153[3] = v162;
    v163 = v153[4];
    v164 = v153[5];
    v165 = v153[6];
    v166 = v163 + v157 * v164 - v165 * v156;
    v167 = v164 - v163 * v157 + v165 * v152;
    v168 = v165 + v163 * v156 - v152 * v164;
    v169 = v161 * v168 - v162 * v167;
    v170 = v162 * v166 - v160 * v168;
    v171 = v160 * v167 - v161 * v166;
    v172 = v170 * v162 - v171 * v161;
    v173 = v171 * v160 - v169 * v162;
    v174 = v169 * v161 - v170 * v160;
    v153[4] = v172;
    v153[5] = v173;
    v153[6] = v174;
    v175 = sqrt(v173 * v173 + v172 * v172 + v174 * v174);
    if (v175 != 0.0)
    {
      v176 = 1.0 / v175;
      v153[4] = v172 * v176;
      v153[5] = v173 * v176;
      v153[6] = v174 * v176;
    }

    v177 = sqrt(v161 * v161 + v160 * v160 + v162 * v162);
    if (v177 != 0.0)
    {
      v178 = 1.0 / v177;
      v153[1] = v160 * v178;
      v153[2] = v161 * v178;
      v153[3] = v162 * v178;
    }

    v179 = 0;
    v180 = v9 + 12850848;
    do
    {
      *(v180 + v179 * 16) = vaddq_f64(v150[v179 + 33], *(v180 + v179 * 16));
      ++v179;
    }

    while (v179 != 10);
    v181 = v9 + 12851008;
    v182 = 63;
    do
    {
      *(v181 + 31912) = *v181;
      *(v181 + 31928) = *(v181 + 16);
      v181 += 24;
      --v182;
    }

    while (v182);
    for (j = 0; j != 20; ++j)
    {
      memcpy(v210, (v98 + 1512 * j), 0x5E8uLL);
      v184 = 0;
      v185 = *(v180 + 8 * j);
      do
      {
        v186 = &v210[v184];
        *v186 = vmulq_n_f64(*&v210[v184], v185);
        v186[1].f64[0] = v185 * *&v210[v184 + 16];
        v184 += 24;
      }

      while (v184 != 1512);
      memcpy(v202, v210, sizeof(v202));
      v187 = &v202[16];
      v188 = v201;
      v189 = 63;
      do
      {
        *(v188 - 1) = vaddq_f64(*(v187 - 2), *(v188 - 2));
        v190 = *v187;
        v187 += 3;
        *v188 = v190 + *v188;
        v188 += 3;
        --v189;
      }

      while (v189);
    }

    memcpy(v7, v150, 0x1E0uLL);
    if (v206)
    {
      if (v207 != v206)
      {
        v207 = (v207 + ((v206 - v207 + 3) & 0xFFFFFFFFFFFFFFFCLL));
      }

      operator delete(v206);
    }
  }
}

void sub_23AE5B9E8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 2600);
  if (v3)
  {
    v4 = *(v1 + 2608);
    if (v4 != v3)
    {
      *(v1 + 2608) = &v4[(v3 - v4 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void apple::vision::libraries::facecore::mod::aam::AamSearch3d::UpdateParametersSic3d(apple::vision::libraries::facecore::mod::aam::AamSearch3d *this, double *a2)
{
  v4 = 0;
  v5 = (this + 12885464);
  v6 = (this + 103352);
  v7 = (this + 103352);
  do
  {
    v8 = a2[v4 + 30];
    *(this + v4 + 33512) = *(this + v4 + 33512) + (v8 * 0.9);
    ++v4;
  }

  while (v4 != 30);
  v9 = a2 + 4;
  memcpy(__dst, this + 2024, sizeof(__dst));
    ;
  }

  for (j = 0; j != 4; ++j)
  {
    v41 = a2[j] * 0.899999976;
    memcpy(__src, this + 1008 * j + 103344, sizeof(__src));
    for (k = 0; k != 63; ++k)
    {
      __src[k] = vmulq_n_f64(__src[k], v41);
    }

    memcpy(v43, __src, sizeof(v43));
    for (m = 0; m != 1008; m += 16)
    {
      *&__dst[m] = vsubq_f64(*&__dst[m], *&v43[m]);
    }
  }

  for (n = 0; n != 26; ++n)
  {
    v42 = v9[n] * 0.899999976;
    memcpy(__src, this + 1008 * n + 107376, sizeof(__src));
    for (ii = 0; ii != 63; ++ii)
    {
      __src[ii] = vmulq_n_f64(__src[ii], v42);
    }

    memcpy(v43, __src, sizeof(v43));
    for (jj = 0; jj != 1008; jj += 16)
    {
      *&__dst[jj] = vsubq_f64(*&__dst[jj], *&v43[jj]);
    }
  }

  apple::vision::libraries::facecore::mod::aam::AffineWarp::WarpVertices(this + 34656, __dst, __src);
  v17 = &__src[0].f64[1];
  v18 = 0.0;
  v19 = 63;
  do
  {
    v18 = v18 + *v7 * *v17 + *(v7 - 1) * *(v17 - 1);
    v17 += 2;
    v7 += 2;
    --v19;
  }

  while (v19);
  *v5 = v18;
  v20 = &__src[0].f64[1];
  v21 = v6 + 126;
  v22 = 0.0;
  v23 = 63;
  do
  {
    v22 = v22 + *v21 * *v20 + *(v21 - 1) * *(v20 - 1);
    v20 += 2;
    v21 += 2;
    --v23;
  }

  while (v23);
  v5[1] = v22;
  v24 = &__src[0].f64[1];
  v25 = v6 + 252;
  v26 = 0.0;
  v27 = 63;
  do
  {
    v26 = v26 + *v25 * *v24 + *(v25 - 1) * *(v24 - 1);
    v24 += 2;
    v25 += 2;
    --v27;
  }

  while (v27);
  v5[2] = v26;
  v28 = &__src[0].f64[1];
  v29 = v6 + 378;
  v30 = 0.0;
  v31 = 63;
  do
  {
    v30 = v30 + *v29 * *v28 + *(v29 - 1) * *(v28 - 1);
    v28 += 2;
    v29 += 2;
    --v31;
  }

  while (v31);
  v32 = sqrt(v18 * v18 + v22 * v22);
  v5[3] = v30;
  v5[4] = v32;
  if (v32 == 0.0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x23EE98180](exception, "0.0 == q_scale");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v5[5] = atan(v22 / v18) * 180.0 / 3.14159265;
  apple::vision::libraries::facecore::mod::aam::AamSearch3d::InverseTransformShapeSic3d(this, __src, v46);
  for (kk = 0; kk != 1008; kk += 16)
  {
    *&v46[kk] = vsubq_f64(*&v46[kk], *(this + kk + 3032));
  }

  v34 = 0;
  v35 = v6 + 504;
  do
  {
    v36 = 0.0;
    v37 = v35;
    v38 = &v47;
    v39 = 63;
    do
    {
      v36 = v36 + *v37 * *v38 + *(v37 - 1) * *(v38 - 1);
      v38 += 2;
      v37 += 2;
      --v39;
    }

    while (v39);
    *(this + v34++ + 1610689) = v36;
    v35 += 126;
  }

  while (v34 != 26);
}

void *apple::vision::libraries::facecore::mod::aam::AamSearch3d::UpdateShapeSic3d(apple::vision::libraries::facecore::mod::aam::AamSearch3d *this)
{
  v2 = 0;
  v3 = this + 12886728;
  do
  {
    *&v3[v2] = *(this + v2 + 3032);
    v2 += 16;
  }

  while (v2 != 1008);
  for (i = 0; i != 26; ++i)
  {
    memcpy(__dst, this + 1008 * i + 107376, sizeof(__dst));
    v6 = 0;
    v5 = (this + 8 * i + 12885512);
    v7 = vld1q_dup_f64(v5);
    do
    {
      *&__dst[v6] = vmulq_f64(v7, *&__dst[v6]);
      v6 += 16;
    }

    while (v6 != 1008);
    memcpy(v10, __dst, sizeof(v10));
    for (j = 0; j != 1008; j += 16)
    {
      *&v3[j] = vaddq_f64(*&v10[j], *&v3[j]);
    }
  }

  apple::vision::libraries::facecore::mod::aam::AamSearch3d::TransformShapeSic3d(this, v3, __dst);
  return memcpy(this + 12885720, __dst, 0x3F0uLL);
}

void *apple::vision::libraries::facecore::mod::aam::AamSearch3d::Constrain3d(apple::vision::libraries::facecore::mod::aam::AamSearch3d *this)
{
  apple::vision::libraries::facecore::mod::aam::AamSearch3d::Optimize3dOrthographic(this);

  return memcpy(this + 8, this + 12884432, 0x3F0uLL);
}

void apple::vision::libraries::facecore::mod::aam::AamSearch3d::InverseTransformShapeSic3d(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = (a1 + 12881920);
  bzero(a3, 0x3F0uLL);
  v7 = 0;
  v12 = *(a1 + 12885464);
  v8.f64[0] = v6[446];
  v9 = vextq_s8(v12, v12, 8uLL);
  v8.f64[1] = -v8.f64[0];
  v10 = vmlaq_f64(vmulq_n_f64(v12, v6[445]), v9, v8);
  v11 = vdupq_lane_s64(COERCE__INT64(v6[447] * v6[447]), 0);
  v12.f64[1] = -*(a1 + 12885472);
  v13 = (a2 + 8);
  do
  {
    v14 = vmlaq_n_f64(vmulq_n_f64(v9, *v13), v12, *(v13 - 1));
    *&v15.f64[0] = *&vsubq_f64(v14, v10);
    v15.f64[1] = vaddq_f64(v14, v10).f64[1];
    *&a3[v7] = vdivq_f64(v15, v11);
    v13 += 2;
    v7 += 16;
  }

  while (v7 != 1008);
}

void apple::vision::libraries::facecore::mod::aam::AamSearch3d::TransformShapeSic3d(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  bzero(a3, 0x3F0uLL);
  v6 = 0;
  v7 = *(a1 + 12885464);
  v8 = *(a1 + 12885480);
  v9 = vdupq_lane_s64(*&v7.f64[0], 0);
  v9.f64[0] = -*(a1 + 12885472);
  v10 = (a2 + 8);
  do
  {
    *&a3[v6] = vaddq_f64(v8, vmlaq_n_f64(vmulq_n_f64(v9, *v10), v7, *(v10 - 1)));
    v10 += 2;
    v6 += 16;
  }

  while (v6 != 1008);
}

void apple::vision::libraries::facecore::mod::aam::AamSearch3d::~AamSearch3d(apple::vision::libraries::facecore::mod::aam::AamSearch3d *this)
{
  apple::vision::libraries::facecore::mod::aam::AamSearch3d::~AamSearch3d(this);

  JUMPOUT(0x23EE98360);
}

{
  v2 = this + 12881920;
  *this = &unk_284DF3D20;
  v3 = *(this + 1610680);
  if (v3)
  {
    *(v2 + 441) = v3;
    operator delete(v3);
  }

  apple::vision::libraries::facecore::mod::aam::AamSearch::~AamSearch(this);
}

void std::vector<unsigned int>::__append(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23AE5C320(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, a2);
  }

  std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
}

void std::valarray<float>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = *(a1 + 8);
    if (v5 != v4)
    {
      *(a1 + 8) = &v5[(v4 - v5 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (a2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }
}

void apple::vision::libraries::facecore::processing::tracking::keypointtracker::MatchingModule::MatchingModule(apple::vision::libraries::facecore::processing::tracking::keypointtracker::MatchingModule *this, apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray *a2, apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray *a3, apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage *a4, apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage *a5)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
  *(this + 3) = a5;
  *(this + 2) = 0u;
  v6 = (this + 32);
  *(this + 3) = 0u;
  *(this + 8) = apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::getPoints(a2);
  *(this + 9) = apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::getPoints(*(this + 1));
  *(this + 21) = 255;
  std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KMatchingElem>::resize(v6, 0x320uLL);
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::computeFirstAndLastRows(*(this + 1), *(this + 3), this + 12, this + 13);
}

void sub_23AE5C504(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KMatchingElem>::resize(void *a1, unint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 2);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KMatchingElem>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 60 * a2;
  }
}

void apple::vision::libraries::facecore::processing::tracking::keypointtracker::MatchingModule::~MatchingModule(apple::vision::libraries::facecore::processing::tracking::keypointtracker::MatchingModule *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    MEMORY[0x23EE98340](v2, 0x1000C8052888210);
  }

  v3 = *(this + 12);
  if (v3)
  {
    MEMORY[0x23EE98340](v3, 0x1000C8052888210);
  }

  v4 = *(this + 4);
  if (v4)
  {
    *(this + 5) = v4;
    operator delete(v4);
  }
}

void apple::vision::libraries::facecore::processing::tracking::keypointtracker::MatchingModule::matchElements(apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray **this)
{
  Points = apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::getPoints(*this);
  if (0xAAAAAAAAAAAAAAABLL * ((Points[1] - *Points) >> 3) >= 2)
  {
    v3 = apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::getPoints(this[1]);
    if (0xAAAAAAAAAAAAAAABLL * ((v3[1] - *v3) >> 3) >= 2)
    {
      v6 = *this;
      v7 = this[1];
      v8 = *(*this + 262);
      if (v8 >= *(v7 + 262))
      {
        v8 = *(v7 + 262);
      }

      *(this + 22) = v8;
      v9 = *(this + 21);
      *(this + 20) = v9;
      if (v9 > v8)
      {
        v10 = *(v6 + v9 + 6);
        v11 = *(v7 + v9 + 6);
        if (v10 < 801 || v11 <= 800)
        {
          v12 = v9 + 5;
          v13 = v9 - 1;
          do
          {
            v9 = v13;
            *(this + 20) = v13;
            if (v12 - 6 <= v8)
            {
              break;
            }

            v10 += *(v6 + v12);
            v11 += *(v7 + v12--);
            --v13;
          }

          while (v10 < 801 || v11 < 801);
        }
      }

      v14 = 0;
      v32 = 0;
      while (v9 >= v8)
      {
        v15 = this[8];
        v16 = *v15;
        if ((-1431655765 * ((*(v15 + 1) - *v15) >> 3)) >= 1)
        {
          v17 = 0;
          do
          {
            v18 = v16 + 24 * v17;
            v19 = *(v18 + 16);
            if (v19 >= *(this + 20) && v19 <= *(this + 21))
            {
              v20 = this[3];
              v21 = *(v18 + 4) + *(this[2] + 5) - *(v20 + 5);
              v22 = v21 + 40;
              v23 = (v21 - 40) & ~((v21 - 40) >> 31);
              LODWORD(v24) = *(v20 + 1) - 1;
              v24 = v22 >= v24 ? v24 : v22;
              if (v23 <= v24)
              {
                v25 = v24 - v23 + 1;
                v26 = (this[12] + 4 * v23);
                while (1)
                {
                  v28 = *v26++;
                  v27 = v28;
                  if (v28 != -1)
                  {
                    break;
                  }

                  if (!--v25)
                  {
                    goto LABEL_32;
                  }
                }

                do
                {
                  v29 = *(this[13] + v24);
                }

                while (v29 == -1 && v24-- > v23);
                *v4.i64 = apple::vision::libraries::facecore::processing::tracking::keypointtracker::MatchingModule::findMatches(this, v27, v29, v17, &v32, v4, v5);
                v15 = this[8];
                v16 = *v15;
                v14 = v32;
              }
            }

LABEL_32:
            ++v17;
          }

          while (v17 < (-1431655765 * ((*(v15 + 1) - v16) >> 3)) && v14 < 800);
          v9 = *(this + 20);
          v8 = *(this + 22);
        }

        if (v9 <= v8)
        {
          break;
        }

        v31 = v9 - 1;
        if (v9 >> 1 <= v8)
        {
          v9 = v8;
        }

        else
        {
          v9 >>= 1;
        }

        *(this + 20) = v9;
        *(this + 21) = v31;
        if (v14 >= 800)
        {
          goto LABEL_42;
        }
      }

      if (v14 < 30)
      {
        return;
      }

LABEL_42:
      *(this + 14) = v14;
    }
  }
}

void std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KMatchingElem>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (0xEEEEEEEEEEEEEEEFLL * ((v5 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 60 * a2;
      do
      {
        *v4 = 0uLL;
        *(v4 + 24) = 0uLL;
        *(v4 + 48) = 0xFFFFFFFF00000000;
        *(v4 + 56) = 0;
        v4 += 60;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v6 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - *a1) >> 2);
    v7 = v6 + a2;
    if (v6 + a2 > 0x444444444444444)
    {
      std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xEEEEEEEEEEEEEEEFLL * ((v5 - *a1) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x222222222222222)
    {
      v9 = 0x444444444444444;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KMatchingElem>>(a1, v9);
    }

    v11 = 60 * v6;
    v12 = 60 * v6 + 60 * a2;
    v13 = v11;
    do
    {
      *v13 = 0uLL;
      *(v13 + 24) = 0uLL;
      *(v13 + 48) = 0xFFFFFFFF00000000;
      *(v13 + 56) = 0;
      v13 += 60;
    }

    while (v13 != v12);
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v12;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KMatchingElem>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x444444444444445)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

double apple::vision::libraries::facecore::processing::tracking::keypointtracker::MatchingModule::findMatches(apple::vision::libraries::facecore::processing::tracking::keypointtracker::MatchingModule *this, int a2, int a3, int a4, int *a5, int32x4_t a6, uint8x8_t a7)
{
  if (a2 <= a3)
  {
    v7 = 999999999;
    v8 = (**(this + 8) + 24 * a4);
    v9 = a2;
    v10 = a3 + 1;
    v11 = 1000000000;
    v12 = -1;
    do
    {
      v13 = (**(this + 9) + 24 * v9);
      v14 = v13[4];
      if (v14 >= *(this + 20) && v14 <= *(this + 21))
      {
        v15 = *v8;
        v16 = *v13;
        v18 = *(this + 2);
        v17 = *(this + 3);
        v19 = v15 + v18[4] - v17[4] - v16;
        if (v19 < 0)
        {
          v19 = v16 - (v15 + v18[4] - v17[4]);
        }

        if (v19 <= 40)
        {
          v20 = v13[5];
          v21 = v8[5];
          v22 = v21 == v20 || v21 == ((v20 + 62) & 0x3F);
          v23 = (v20 + 2) & 0x3F;
          if (v22 || v21 == v23)
          {
            v25 = *(v18 + 3);
            v26 = *v18;
            v27 = (v25 + v26 * v8[1] + v15);
            v28 = *(v17 + 3);
            v29 = v13[1];
            v30 = *v17;
            v31 = *v27 - *(v28 + v30 * v29 + v16);
            if (v31 < 0)
            {
              v31 = *(v28 + v30 * v29 + v16) - *v27;
            }

            if (v31 <= 0x19)
            {
              v32 = 0;
              v33 = &v27[-2 * v26 - 2];
              v34 = (v28 + v16 + v30 * v29 - 2 * v30 + 2);
              v35 = 5;
              do
              {
                a6.i32[0] = *v33;
                a7.i32[0] = *(v34 - 1);
                a7 = vmovl_u8(a7).u64[0];
                v36 = vsubl_u16(*&vmovl_u8(*a6.i8), a7);
                a6 = vmulq_s32(v36, v36);
                v37 = *(v33 + 4) - *v34;
                a6.i32[0] = vaddvq_s32(a6);
                v32 += a6.i32[0] + v37 * v37;
                v33 += v26;
                v34 += v30;
                --v35;
              }

              while (v35);
              if (v32 >= v11)
              {
                if (v32 < v7)
                {
                  v7 = v32;
                }
              }

              else
              {
                v11 = v32;
                v12 = v9;
              }
            }
          }
        }
      }

      ++v9;
    }

    while (v10 != v9);
    if (v11 < 0x8000)
    {
      if (v7)
      {
        v38 = 100 * v11 / v7;
        if (v38 <= 19)
        {
          v39 = (**(this + 8) + 24 * a4);
          v40 = v39[2].i32[1];
          v41 = (**(this + 9) + 24 * v12);
          v42 = v41[2].i32[1];
          v43 = 60 * *a5;
          v44 = *(this + 4) + v43;
          *a6.i8 = vadd_s32(*(*(this + 2) + 16), *v39);
          v45 = vadd_s32(*(*(this + 3) + 16), *v41);
          *(v44 + 52) = 100 - v38;
          *v44 = a6.i64[0];
          *(v44 + 8) = 0;
          *(v44 + 16) = v11;
          *(v44 + 20) = v40;
          v46 = (*(this + 4) + v43);
          v46[3] = v45;
          v46[4] = 0;
          v46[5].i32[0] = v11;
          v46[5].i32[1] = v42;
          *(*(this + 4) + v43 + 48) = 1;
          ++*a5;
        }
      }
    }
  }

  return *a6.i64;
}

void *apple::vision::libraries::facecore::processing::tracking::keypointtracker::storeIndexOfCornerInRow(void *result, uint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  *(a2 + 4 * *(*result + 4)) = 0;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v3) >> 3);
  if (v4 >= 2)
  {
    v5 = v4 & 0x7FFFFFFF;
    v6 = (v3 + 28);
    v7 = 1;
    do
    {
      v8 = *v6;
      if (v8 != *(v6 - 6))
      {
        *(a2 + 4 * v8) = v7;
      }

      v6 += 6;
      ++v7;
    }

    while (v5 != v7);
  }

  return result;
}

BOOL apple::vision::libraries::facecore::processing::tracking::keypointtracker::checkRightForCorner(uint64_t *a1, signed int a2, _DWORD *a3)
{
  v3 = *a1;
  result = 0;
  if ((-1431655765 * ((a1[1] - *a1) >> 3) - 1) > a2)
  {
    v4 = (v3 + 24 * a2);
    if (v4[6] == *a3 + 1 && v4[7] == a3[1] && v4[10] >= *(v3 + 24 * a2 + 16))
    {
      return 1;
    }
  }

  return result;
}

uint64_t apple::vision::libraries::facecore::processing::tracking::keypointtracker::checkAboveForCorner(uint64_t *a1, _DWORD *a2, uint64_t a3, int a4)
{
  v4 = a2[1];
  if (v4)
  {
    v5 = *(a3 + 4 * v4 - 4);
    if (v5 != -1)
    {
      v6 = *a1;
      v7 = *(*a1 + 4);
      if (v7 >= v4 - 1)
      {
        v5 = 0;
      }

      else
      {
        v7 = *(v6 + 24 * v5 + 4);
      }

      if (v7 < v4)
      {
        v8 = (v6 + 24 * v5);
        do
        {
          if (*v8 >= *a2 - 1)
          {
            break;
          }

          ++v5;
          v9 = v8[7];
          v8 += 6;
        }

        while (v9 < v4);
        v7 = *(v6 + 24 * v5 + 4);
      }

      if (v7 < v4)
      {
        v10 = *a2 + 1;
        v11 = v6 + 24 * a4;
        v12 = (v6 + 24 * v5 + 16);
        do
        {
          v13 = *(v12 - 4);
          if (v13 > v10)
          {
            break;
          }

          v15 = v13 == v10 || v13 == *a2 || v13 == *a2 - 1;
          if (v15 && *v12 >= *(v11 + 16))
          {
            return 1;
          }

          v16 = v12[3];
          v12 += 6;
        }

        while (v16 < v4);
      }
    }
  }

  return 0;
}

uint64_t apple::vision::libraries::facecore::processing::tracking::keypointtracker::checkBelowForCorner(uint64_t *a1, int *a2, uint64_t a3, int a4, int a5)
{
  v5 = a2[1];
  if (v5 != a4)
  {
    v6 = *(a3 + 4 * v5 + 4);
    if (v6 != -1)
    {
      v7 = *a1;
      v8 = -1431655765 * ((a1[1] - *a1) >> 3);
      if (v8 >= 1)
      {
        if (*(v7 + 4) <= v5)
        {
          v9 = *(a3 + 4 * v5 + 4);
        }

        else
        {
          v9 = 0;
        }

        if (v9 < v8)
        {
          v10 = (v7 + 24 * v9 + 4);
          v6 = v9;
          while (*v10 == v5 + 1 && *(v10 - 1) < *a2 - 1)
          {
            ++v6;
            v10 += 6;
            if (v8 == v6)
            {
              return 0;
            }
          }
        }

        v11 = __OFSUB__(v8, v6);
        v12 = v8 - v6;
        if (!((v12 < 0) ^ v11 | (v12 == 0)))
        {
          v13 = v5 + 1;
          v14 = v7 + 24 * a5;
          for (i = (v7 + 24 * v6); i[1] == v13; i += 6)
          {
            v16 = *i;
            v17 = *a2;
            v18 = *a2 + 1;
            if (*i > v18)
            {
              break;
            }

            v20 = v16 == v18 || v16 == v17 || v16 == v17 - 1;
            if (v20 && i[4] >= *(v14 + 16))
            {
              return 1;
            }

            result = 0;
            if (!--v12)
            {
              return result;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t apple::vision::libraries::facecore::processing::tracking::keypointtracker::isThereIsACornerAroundWithBetterScore(uint64_t *a1, signed int a2, uint64_t a3, int a4)
{
  v8 = *a1;
  v9 = (*a1 + 24 * a2);
  if (a2 >= 1)
  {
    v10 = v8 + 24 * a2;
    if (*(v10 - 24) == *v9 - 1 && *(v10 - 20) == v9[1] && *(v10 - 8) >= *(v8 + 24 * a2 + 16))
    {
      return 1;
    }
  }

  if (apple::vision::libraries::facecore::processing::tracking::keypointtracker::checkRightForCorner(a1, a2, (*a1 + 24 * a2)) || (apple::vision::libraries::facecore::processing::tracking::keypointtracker::checkAboveForCorner(a1, v9, a3, a2) & 1) != 0)
  {
    return 1;
  }

  return apple::vision::libraries::facecore::processing::tracking::keypointtracker::checkBelowForCorner(a1, v9, a3, a4, a2);
}

void *apple::vision::libraries::facecore::processing::tracking::keypointtracker::nonMaxSuppression(apple::vision::libraries::facecore::processing::tracking::keypointtracker *this, apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray *a2, apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage *a3, apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray *a4)
{
  result = apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::getPoints(this);
  if (result[1] != *result)
  {
    apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::getPoints(this);
    Points = apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::getPoints(a3);
    v8 = apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::getPoints(this);
    std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::resize(Points, 0xAAAAAAAAAAAAAAABLL * ((v8[1] - *v8) >> 3));
    operator new[]();
  }

  return result;
}

void std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::resize(void *a1, unint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + 24 * a2;
  }
}

void std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = 24 * ((24 * a2 - 24) / 0x18) + 24;
      bzero(*(a1 + 8), v10);
      v5 += v10;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>>(a1, v9);
    }

    v11 = 24 * v6;
    v12 = 24 * ((24 * a2 - 24) / 0x18) + 24;
    bzero(v11, v12);
    v13 = v11 + v12;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v16)
    {

      operator delete(v16);
    }
  }
}

uint64_t MY_TRANSPOSE(uint64_t result, const float *a2, int a3, int a4, int a5)
{
  if (a5 >= 1)
  {
    v5 = 0;
    for (i = 0; i != a5; ++i)
    {
      if (a4 >= 1)
      {
        v7 = 0;
        v8 = v5;
        do
        {
          if (a3 >= 1)
          {
            v9 = 0;
            v10 = a3 + a3 / 4;
            do
            {
              *(result + 4 * (v10 % a3 + (i + v7 * a5) * a3)) = a2[v8 + v9++];
              --v10;
            }

            while (a3 != v9);
          }

          ++v7;
          v8 += a3;
        }

        while (v7 != a4);
      }

      v5 += a4 * a3;
    }
  }

  return result;
}

void computeDoG(float *a1, int a2, unsigned int a3, int a4, float **a5)
{
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2000000000;
  v16[3] = a5;
  v9 = (a3 >> 2) + 1;
  global_queue = dispatch_get_global_queue(2, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = ___Z10computeDoGPfjjjPS__block_invoke;
  v11[3] = &unk_278B7A560;
  v12 = 4;
  v13 = a3;
  v14 = a2;
  v15 = a4;
  v11[4] = v16;
  v11[5] = a1;
  dispatch_apply(v9, global_queue, v11);
  _Block_object_dispose(v16, 8);
}

uint64_t ___Z10computeDoGPfjjjPS__block_invoke(uint64_t result, int a2)
{
  v2 = *(result + 48);
  v3 = v2 * a2;
  v4 = v2 + v2 * a2;
  if (v3 < v4)
  {
    v5 = *(result + 52);
    v6 = v5 - 1;
    while (1)
    {
      if (v3 >= v5)
      {
        return result;
      }

      v7 = *(result + 56);
      v8 = v7 * v3;
      v9 = v3 == v6 || v3 == 0;
      v10 = v9 ? 1.0 : 0.5;
      v11 = v3 ? v7 * v3 - v7 : 0;
      if (v7 >= 1)
      {
        break;
      }

LABEL_36:
      if (++v3 == v4)
      {
        return result;
      }
    }

    v12 = 0;
    v13 = *(result + 40);
    v14 = v8;
    v15 = (v13 + 4 * v8);
    v16 = v13 + 4 * v11;
    if (v3 == v6)
    {
      v17 = v14;
    }

    else
    {
      v17 = (v14 + v7);
    }

    if (!v3)
    {
      v17 = (v14 + v7);
    }

    v18 = (v7 - 1);
    v19 = v13 + 4 * v17;
    v20 = *(result + 60);
    v21 = &v15[v18];
    while (1)
    {
      if (v12)
      {
        if (v12 != v18)
        {
          v24 = (v15[v12 + 1] - v15[v12 - 1]) * 0.5;
          goto LABEL_26;
        }

        v23 = *(v21 - 1);
        v22 = *v21;
      }

      else
      {
        v23 = *v15;
        v22 = v15[1];
      }

      v24 = v22 - v23;
LABEL_26:
      v25 = v10 * (*(v19 + 4 * v12) - *(v16 + 4 * v12));
      v26 = fabsf(v25) + 0.00000011921;
      v27 = v24 + v26;
      if (v24 >= 0.0)
      {
        v31 = v24 - v26;
        v29 = 0.7854;
        v30 = v31 / v27;
      }

      else
      {
        v28 = v26 - v24;
        v29 = 2.3562;
        v30 = v27 / v28;
      }

      v32 = v29 + ((((v30 * 0.1821) * v30) + -0.9675) * v30);
      v33 = -v32;
      if (v25 >= 0.0)
      {
        v33 = v32;
      }

      while (v33 > 6.28318531)
      {
        v33 = v33 + -6.2832;
      }

      while (v33 < 0.0)
      {
        v33 = v33 + 6.2832;
      }

      *&v34 = (v25 * v25) + (v24 * v24);
      v35 = ((((*&v34 * -0.5) * COERCE_FLOAT(1597463007 - (v34 >> 1))) * COERCE_FLOAT(1597463007 - (v34 >> 1))) + 1.5) * COERCE_FLOAT(1597463007 - (v34 >> 1));
      v36 = *&v34 * (v35 * ((((*&v34 * -0.5) * v35) * v35) + 1.5));
      v37 = (v33 * v20) / 6.2832;
      v38 = vcvtms_s32_f32(v37);
      v39 = v37 - floorf(v37);
      *(*(*(*(*(result + 32) + 8) + 24) + 8 * (v38 % v20)) + 4 * (v12 + v14)) = v36 * (1.0 - v39);
      *(*(*(*(*(result + 32) + 8) + 24) + 8 * ((v38 + 1) % v20)) + 4 * (v12 + v14)) = v36 * v39;
      if (++v12 == v7)
      {
        goto LABEL_36;
      }
    }
  }

  return result;
}

void apple::vision::libraries::facecore::mod::facerecognition::GradientDenseDescriptor::InitData(apple::vision::libraries::facecore::mod::facerecognition::GradientDenseDescriptor *this, float *a2, int a3, int a4)
{
  *(this + 1) = a3;
  *(this + 2) = a4;
  if (*(this + 7))
  {
    v5 = *this;
    if (!v5)
    {
      goto LABEL_8;
    }

    for (i = 0; i < v5; ++i)
    {
      v7 = *(*(this + 7) + 8 * i);
      if (v7)
      {
        MEMORY[0x23EE98340](v7, 0x1000C8052888210);
        *(*(this + 7) + 8 * i) = 0;
        v5 = *this;
      }
    }

    if (*(this + 7))
    {
LABEL_8:
      MEMORY[0x23EE98340]();
    }
  }

  operator new[]();
}

void apple::vision::libraries::facecore::mod::facerecognition::GradientDenseDescriptor::~GradientDenseDescriptor(apple::vision::libraries::facecore::mod::facerecognition::GradientDenseDescriptor *this)
{
  if (*(this + 7))
  {
    v2 = *this;
    if (!v2)
    {
      goto LABEL_8;
    }

    for (i = 0; i < v2; *(v4 + 8 * i++) = 0)
    {
      v4 = *(this + 7);
      v5 = *(v4 + 8 * i);
      if (v5)
      {
        MEMORY[0x23EE98340](v5, 0x1000C8052888210);
        v4 = *(this + 7);
        v2 = *this;
      }
    }

    if (*(this + 7))
    {
LABEL_8:
      MEMORY[0x23EE98340]();
    }

    *(this + 7) = 0;
  }

  v6 = *(this + 3);
  if (v6)
  {
    MEMORY[0x23EE98340](v6, 0x1000C8052888210);
    *(this + 3) = 0;
  }

  v7 = *(this + 4);
  if (v7)
  {
    MEMORY[0x23EE98340](v7, 0x1000C8000313F17);
    *(this + 4) = 0;
  }

  v8 = *(this + 5);
  if (v8)
  {
    MEMORY[0x23EE98340](v8, 0x1000C8000313F17);
    *(this + 5) = 0;
  }

  v9 = *(this + 6);
  if (v9)
  {
    MEMORY[0x23EE98340](v9, 0x1000C8052888210);
    *(this + 6) = 0;
  }
}

void *apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KMatchingArray::operator=(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KMatchingElem>::__assign_with_size[abi:ne200100]<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KMatchingElem*,apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KMatchingElem*>(a1, *a2, *(a2 + 8), 0xEEEEEEEEEEEEEEEFLL * ((*(a2 + 8) - *a2) >> 2));
  }

  a1[3] = *(a2 + 24);
  return a1;
}

void *std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KMatchingElem>::__assign_with_size[abi:ne200100]<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KMatchingElem*,apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KMatchingElem*>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xEEEEEEEEEEEEEEEFLL * ((v7 - *result) >> 2) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x444444444444444)
    {
      v9 = 0xEEEEEEEEEEEEEEEFLL * (v7 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x222222222222222)
      {
        v11 = 0x444444444444444;
      }

      else
      {
        v11 = v10;
      }

      std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KMatchingElem>::__vallocate[abi:ne200100](v6, v11);
    }

    std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xEEEEEEEEEEEEEEEFLL * ((v12 - v8) >> 2) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KMatchingElem>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x444444444444445)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KMatchingElem>>(a1, a2);
  }

  std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
}

__n128 apple::vision::libraries::facecore::mod::classifiers::FrontalSVMClassifier::FrontalSVMClassifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 2304) = 0;
  result = *a3;
  *(a1 + 3776) = *(a3 + 16);
  *(a1 + 3760) = result;
  *(a1 + 3792) = a2;
  return result;
}

void apple::vision::libraries::facecore::mod::classifiers::FrontalSVMClassifier::~FrontalSVMClassifier(apple::vision::libraries::facecore::mod::classifiers::FrontalSVMClassifier *this)
{
  v1 = *(this + 288);
  if (v1)
  {
    MEMORY[0x23EE98360](v1, 0x1090C40A7E26980);
  }
}

double apple::vision::libraries::facecore::mod::classifiers::FrontalSVMClassifier::setThreshold(apple::vision::libraries::facecore::mod::classifiers::FrontalSVMClassifier *this, double *a2)
{
  result = *a2;
  *(this + 289) = *a2;
  return result;
}

void apple::vision::libraries::facecore::mod::classifiers::FrontalSVMClassifier::classifyFace(apple::vision::libraries::facecore::mod::classifiers::FrontalSVMClassifier *this, const unsigned __int8 *a2, int a3, int a4, int a5, int a6, int a7, int a8, BOOL a9)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(this + 288))
  {
    v16 = __sincosf_stret(a7 / 360.0);
    v17 = 0;
    v18 = a8 / 12.0;
    while (1)
    {
      v19 = 0;
      v20 = v17 + -12.0;
      v21 = 23 - v17;
      if (!a9)
      {
        v21 = v17;
      }

      v22 = this + 96 * v21;
      do
      {
        v23 = v19 + -12.0;
        v24 = (a5 + (v18 * ((v23 * -v16.__sinval) + (v16.__cosval * v20)))) + 0.5;
        v25 = (a6 + (v18 * ((v16.__cosval * v23) + (v16.__sinval * v20)))) + 0.5;
        v26 = v24 & ~(v24 >> 31);
        v27 = v25 & ~(v25 >> 31);
        if (v26 >= a3)
        {
          v26 = a3 - 1;
        }

        if (v27 >= a4)
        {
          v27 = a4 - 1;
        }

        LOBYTE(v25) = a2[v26 + v27 * a3];
        *&v22[4 * v19++] = LODWORD(v25);
      }

      while (v19 != 24);
      if (++v17 == 24)
      {
        v29[0] = 8;
        v30 = 0u;
        v31 = 0u;
        v32 = 0;
        apple::vision::libraries::facecore::mod::facerecognition::GradientDenseDescriptor::InitData(v29, this, 24, 24);
      }
    }
  }

  exception = __cxa_allocate_exception(0x10uLL);
  MEMORY[0x23EE98180](exception, "No SVM model has been loaded");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void apple::vision::libraries::facecore::mod::aam::AamLoader::loadTexture()
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v0 = MEMORY[0x277D82858] + 64;
  v10 = MEMORY[0x277D82858] + 64;
  v1 = *(MEMORY[0x277D82808] + 16);
  v8[0] = *(MEMORY[0x277D82808] + 8);
  *(v8 + *(v8[0] - 24)) = v1;
  v8[1] = 0;
  v2 = (v8 + *(v8[0] - 24));
  std::ios_base::init(v2, v9);
  v3 = MEMORY[0x277D82858] + 24;
  v2[1].__vftable = 0;
  v2[1].__fmtflags_ = -1;
  v8[0] = v3;
  v10 = v0;
  MEMORY[0x23EE981E0](v9);
  std::ifstream::open();
  if (v9[15])
  {
    v7 = 0;
    std::istream::read();
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x23EE98180](exception, "Number of image PCs in texture model file doesn't match code");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = __cxa_allocate_exception(0x10uLL);
  std::operator+<char>();
  MEMORY[0x23EE98190](v4, &v6);
  __cxa_throw(v4, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_23AEAC1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59)
{
  __cxa_free_exception(v59);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&__p, MEMORY[0x277D82818]);
  MEMORY[0x23EE98300](&a39);
  std::ifstream::~ifstream(&a59);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_23AEAC554(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x23EE98300](v1);
  _Unwind_Resume(a1);
}

const void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x277D82808];
  v3 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x23EE981F0](a1 + 2);
  std::istream::~istream();
  MEMORY[0x23EE98300](a1 + 53);
  return a1;
}

void apple::vision::libraries::facecore::mod::aam::AamLoader::loadModel()
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v0 = MEMORY[0x277D82858] + 64;
  v10 = MEMORY[0x277D82858] + 64;
  v1 = *(MEMORY[0x277D82808] + 16);
  v8[0] = *(MEMORY[0x277D82808] + 8);
  *(v8 + *(v8[0] - 24)) = v1;
  v8[1] = 0;
  v2 = (v8 + *(v8[0] - 24));
  std::ios_base::init(v2, v9);
  v3 = MEMORY[0x277D82858] + 24;
  v2[1].__vftable = 0;
  v2[1].__fmtflags_ = -1;
  v8[0] = v3;
  v10 = v0;
  MEMORY[0x23EE981E0](v9);
  std::ifstream::open();
  if (v9[15])
  {
    v7 = 0;
    std::istream::read();
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x23EE98180](exception, "");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v4 = __cxa_allocate_exception(0x10uLL);
  std::operator+<char>();
  MEMORY[0x23EE98190](v4, &v6);
  __cxa_throw(v4, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_23AEAD410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  __cxa_free_exception(v65);
  a24 = *MEMORY[0x277D82818];
  v67 = *(MEMORY[0x277D82818] + 72);
  *(&a24 + *(a24 - 3)) = *(MEMORY[0x277D82818] + 64);
  a26 = v67;
  a27 = MEMORY[0x277D82878] + 16;
  if (a40 < 0)
  {
    operator delete(__p);
  }

  a27 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a28);
  std::iostream::~basic_iostream();
  MEMORY[0x23EE98300](&a43);
  a63 = *MEMORY[0x277D82808];
  *(&a63 + *(a63 - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x23EE981F0](&a65);
  std::istream::~istream();
  MEMORY[0x23EE98300](a11);
  _Unwind_Resume(a1);
}

void std::valarray<unsigned int>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    v5 = *(a1 + 8);
    if (v5 != v4)
    {
      *(a1 + 8) = &v5[(v4 - v5 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
  }

  if (a2)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }
}

uint64_t apple::vision::libraries::facecore::mod::aam::AamLoader::loadOldModel(uint64_t a1, uint64_t a2)
{
  v18[19] = *MEMORY[0x277D85DE8];
  v18[6] = 0;
  v3 = MEMORY[0x277D82858] + 64;
  v18[0] = MEMORY[0x277D82858] + 64;
  v4 = MEMORY[0x277D82808];
  v5 = *(MEMORY[0x277D82808] + 16);
  v16[0] = *(MEMORY[0x277D82808] + 8);
  *(v16 + *(v16[0] - 24)) = v5;
  v16[1] = 0;
  v6 = (v16 + *(v16[0] - 24));
  std::ios_base::init(v6, v17);
  v7 = MEMORY[0x277D82858] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  v16[0] = v7;
  v18[0] = v3;
  MEMORY[0x23EE981E0](v17);
  std::ifstream::open();
  if (!v17[15])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::operator+<char>();
    MEMORY[0x23EE98190](exception, v15);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v8 = a2 + 9480656;
  for (i = 5; i != 7; ++i)
  {
    v10 = exp2(i);
    v11 = (v10 * v10);
    v15[0] = 0;
    if (!*(v8 + 8 * (i - 5)))
    {
      operator new[]();
    }

    v15[0] = 0;
    if (v11 >= 1)
    {
      for (j = 0; j < v11; v15[0] = j)
      {
        MEMORY[0x23EE98220](v16, *(v8 + 8 * (i - 5)) + 8 * j);
        j = v15[0] + 1;
      }
    }

    MEMORY[0x23EE98230](v16, v15);
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear((v16 + *(v16[0] - 24)), *(&v17[2] + *(v16[0] - 24)) | 4);
  }

  v16[0] = *v4;
  *(v16 + *(v16[0] - 24)) = v4[3];
  MEMORY[0x23EE981F0](v17);
  std::istream::~istream();
  MEMORY[0x23EE98300](v18);
  return 1;
}

void sub_23AEADB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      std::ifstream::~ifstream(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x23EE982B0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_23AEADD5C(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x23EE98240](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 144) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x23EE98250](v13);
  return a1;
}

void sub_23AEADFCC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x23EE98250](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x23AEADFACLL);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_23AEAE200(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t apple::vision::libraries::facecore::utils::ImageRotationUtils::rotateImageByAngle(apple::vision::libraries::facecore::utils::ImageRotationUtils *this, image *a2)
{
  if ((a2 % 360) <= 0xFFFFFE97)
  {
    v2 = a2 % 360;
  }

  else
  {
    v2 = a2 % 360 + 360;
  }

  if (v2)
  {
    apple::vision::libraries::facecore::utils::ImageRotationUtils::extractCropFromImageAndRotateByAngle(this, 0);
  }

  return *this;
}

uint64_t apple::vision::libraries::facecore::utils::ImageRotationUtils::computeFaceCoordinatesInImageRotatedByAngle(uint64_t a1, uint64_t a2, coord *a3, image *a4)
{
  apple::vision::libraries::facecore::utils::ImageRotationUtils::computeCoordinateInImageRotatedByAngle(a1, (a2 + 20), a3, a4);
  apple::vision::libraries::facecore::utils::ImageRotationUtils::computeCoordinateInImageRotatedByAngle(a1, (a2 + 4), a3, v7);
  apple::vision::libraries::facecore::utils::ImageRotationUtils::computeCoordinateInImageRotatedByAngle(a1, (a2 + 12), a3, v8);
  result = apple::vision::libraries::facecore::utils::ImageRotationUtils::computeCoordinateInImageRotatedByAngle(a1, (a2 + 28), a3, v9);
  v12 = *(a2 + 80);
  v13 = *(a2 + 88) - v12;
  if (v13 && (v13 >> 3) >= 1)
  {
    v14 = 0;
    v15 = 0;
    do
    {
      result = apple::vision::libraries::facecore::utils::ImageRotationUtils::computeCoordinateInImageRotatedByAngle(a1, (v12 + v14), a3, v11);
      ++v15;
      v12 = *(a2 + 80);
      v14 += 8;
    }

    while (v15 < ((*(a2 + 88) - v12) >> 3));
  }

  return result;
}

uint64_t apple::vision::libraries::facecore::utils::ImageRotationUtils::computeCoordinateInImageRotatedByAngle(uint64_t this, int8x8_t *a2, coord *a3, image *a4)
{
  v4 = this % 360;
  if ((this % 360) > 0xFFFFFE97)
  {
    v4 = this % 360 + 360;
  }

  switch(v4)
  {
    case 90:
      v6 = a2->i32[0];
      a2->i32[0] = a3[1].var1 + ~a2->i32[1];
      a2->i32[1] = v6;
      break;
    case 270:
      v5 = a3[1].var0 + ~a2->i32[0];
      a2->i32[0] = a2->i32[1];
      a2->i32[1] = v5;
      break;
    case 180:
      *a2 = vadd_s32(a3[1], vmvn_s8(*a2));
      break;
  }

  return this;
}

uint64_t apple::vision::libraries::facecore::utils::ImageRotationUtils::translateFaceCoordinatesByVector(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = vdupq_lane_s64(__SPAIR64__(a3, a2), 0);
  *(result + 4) = vaddq_s32(*(result + 4), v3);
  *(result + 20) = vaddq_s32(*(result + 20), v3);
  v4 = *(result + 80);
  v5 = *(result + 88) - v4;
  if (v5 && (v5 >> 3) >= 1)
  {
    v6 = (v5 >> 3) & 0x7FFFFFFF;
    v7 = (v4 + 4);
    do
    {
      v8 = *v7 + a3;
      *(v7 - 1) += a2;
      *v7 = v8;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

void apple::vision::libraries::facecore::processing::detection::histogram::FaceHistogram::GetFaceHistogram(const unsigned __int8 *a1@<X1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, int a7@<W7>, void *a8@<X8>, int a9, int a10, int a11, int a12, int a13, int a14, int a15)
{
  apple::vision::libraries::facecore::processing::detection::histogram::FaceImage::FaceImage(v24, 2);
  *a8 = 0;
  a8[1] = 0;
  a8[2] = 0;
  apple::vision::libraries::facecore::processing::detection::histogram::FaceImage::SetImage(v24, a1, a2, a3, a4, a5, a6, a7, 100.0 / a7, a9);
  operator new[]();
}

void sub_23AED4C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a20)
  {
    operator delete(a20);
  }

  v25 = *v23;
  if (*v23)
  {
    *(v23 + 8) = v25;
    operator delete(v25);
  }

  apple::vision::libraries::facecore::processing::detection::histogram::FaceImage::~FaceImage(&a23);
  _Unwind_Resume(a1);
}

void *apple::vision::libraries::facecore::processing::detection::histogram::FaceHistogram::GetHistogram@<X0>(const unsigned __int8 *a1@<X1>, int a2@<W2>, int a3@<W3>, int a4@<W4>, int a5@<W5>, int a6@<W6>, void *a7@<X8>)
{
  result = std::vector<double>::vector[abi:ne200100](a7, 0x24uLL);
  v44 = a5;
  v15 = a6 + a5;
  if (a5 - a6 <= a6 + a5)
  {
    v16 = 0;
    v17 = a6 + a4;
    v18 = a3 - 1;
    v19 = a6;
    v20 = a4 - a6;
    v47 = a2 - 1;
    v21 = a5 - a6;
    v41 = a2;
    v22 = v18;
    v23 = v15 + 1;
    v40 = a4 - a6 - 1;
    v24 = (2 * a6) | 1;
    v42 = a4 - a6;
    v43 = result;
    v39 = a6;
    v38 = a2;
    v36 = v15 + 1;
    v37 = a6 + a4;
    do
    {
      if (v20 <= v17)
      {
        v26 = 0;
        v27 = *result;
        v46 = (result[1] - *result) >> 3;
        v45 = v42 + v21 * a2;
        v28 = v40 + v21 * a2;
        do
        {
          if (v21 >= 1 && v21 < v22 && v20 + v26 >= 1 && v20 + v26 < v47 && sqrt((v44 - v21) * (v44 - v21) + a6 * a6) <= v19)
          {
            v29 = (a1[v20 + (v21 + 1) * v41 + v26] - a1[v20 + (v21 - 1) * v41 + v26]);
            v30 = (a1[v45 + 1 + v26] - a1[v28 + v26]);
            v31 = atan2f(v29, v30);
            if (v31 < 0.0)
            {
              v31 = v31 + 6.2832;
            }

            LODWORD(v32) = ((v31 * 180.0) / 31.416);
            if (v32 <= 0x23)
            {
              v32 = v32;
            }

            else
            {
              v32 = 0;
            }

            if (v46 <= v32)
            {
              std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
            }

            ++v16;
            *(v27 + 8 * v32) = *(v27 + 8 * v32) + sqrtf((v29 * v29) + (v30 * v30));
          }

          ++v26;
          --a6;
        }

        while (v24 != v26);
        result = v43;
        a6 = v39;
        a2 = v38;
        v23 = v36;
        v17 = v37;
        v25 = v21 + 1;
      }

      else
      {
        v25 = v21 + 1;
      }

      v21 = v25;
    }

    while (v23 != v25);
    if (v16 >= 1)
    {
      v33 = 0;
      v34 = *result;
      v35 = (result[1] - *result) >> 3;
      do
      {
        if (v35 == v33)
        {
          std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
        }

        *(v34 + 8 * v33) = *(v34 + 8 * v33) / v16;
        ++v33;
      }

      while (v33 != 36);
    }
  }

  return result;
}

void sub_23AED4FE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = *a17;
  if (*a17)
  {
    *(a17 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

void apple::vision::libraries::facecore::processing::detection::histogram::FaceHistogram::SmoothHistogram(uint64_t a1, void *a2, int a3)
{
  std::vector<double>::vector[abi:ne200100](&v21, (a2[1] - *a2) >> 3);
  v5 = v21;
  v6 = v22 - v21;
  v7 = *a2;
  v8 = a2[1] - *a2;
  v9 = v8 >> 3;
  if (v6 >= 1)
  {
    v10 = 0;
    v11 = a3 + 1;
    v12 = -a3;
    v13 = ((v22 - v21) >> 3) & 0x7FFFFFFF;
    do
    {
      LODWORD(v14) = v11 + v10;
      if (v11 + v10 >= v9)
      {
        v14 = v9;
      }

      else
      {
        v14 = v14;
      }

      v15 = 0.0;
      if (((v10 - a3) & ~((v10 - a3) >> 31)) < v14)
      {
        v16 = 0;
        v17 = v12 & ~(v12 >> 31);
        do
        {
          if (v9 <= v17 || v6 <= v10)
          {
            std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
          }

          v5[v10] = *&v7[v17] + v5[v10];
          ++v16;
          ++v17;
        }

        while (v17 < v14);
        v15 = v16;
      }

      if (v10 == v6)
      {
        std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
      }

      v5[v10] = v5[v10] / v15;
      ++v10;
      ++v12;
    }

    while (v10 != v13);
  }

  if (v9 < 1)
  {
    if (!v5)
    {
      return;
    }
  }

  else
  {
    v18 = (v8 >> 3) & 0x7FFFFFFF;
    v19 = v5;
    do
    {
      if (!v6 || !v9)
      {
        std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
      }

      v20 = *v19++;
      *v7++ = v20;
      --v9;
      --v6;
      --v18;
    }

    while (v18);
  }

  v22 = v5;
  operator delete(v5);
}

void sub_23AED515C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void apple::vision::libraries::facecore::processing::detection::histogram::FaceHistogram::NormalizeHistogram(uint64_t a1, double **a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = v2 - *a2;
  v5 = v4 >> 3;
  if ((v4 >> 3) >= 1)
  {
    if (v2 == v3)
    {
      goto LABEL_10;
    }

    v6 = (v4 >> 3) & 0x7FFFFFFF;
    v7 = 0.0;
    v8 = v6;
    v9 = *a2;
    do
    {
      v10 = *v9++;
      v7 = v7 + pow(v10, 4.0);
      --v8;
    }

    while (v8);
    if (v7 > 0.0)
    {
      v11 = sqrt(v7);
      while (v5)
      {
        *v3 = *v3 / v11;
        ++v3;
        --v5;
        if (!--v6)
        {
          return;
        }
      }

LABEL_10:
      std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
    }
  }
}

double apple::vision::libraries::facecore::processing::detection::histogram::FaceHistogram::GetFaceHistogramAccuracy(void *a1, uint64_t a2)
{
  v3 = 0;
  __src = 0;
  v45 = 0;
  v46 = 0;
  __p = 0;
  v42 = 0;
  v4 = apple::vision::libraries::facecore::processing::detection::histogram::FaceHistogramArray;
  v43 = 0;
  do
  {
    Distance = apple::vision::libraries::facecore::processing::detection::histogram::FaceHistogram::GetDistance(a1, a2, v3, 145);
    v6 = v45;
    if (v45 >= v46)
    {
      v8 = __src;
      v9 = v45 - __src;
      v10 = (v45 - __src) >> 3;
      v11 = v10 + 1;
      if ((v10 + 1) >> 61)
      {
        std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
      }

      v12 = v46 - __src;
      if ((v46 - __src) >> 2 > v11)
      {
        v11 = v12 >> 2;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v13 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v11;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__src, v13);
      }

      *(8 * v10) = Distance;
      v7 = 8 * v10 + 8;
      memcpy(0, v8, v9);
      a1 = __src;
      __src = 0;
      v45 = v7;
      v46 = 0;
      if (a1)
      {
        operator delete(a1);
      }
    }

    else
    {
      *v45 = Distance;
      v7 = (v6 + 1);
    }

    v45 = v7;
    v14 = v42;
    if (v42 >= v43)
    {
      v16 = __p;
      v17 = v42 - __p;
      v18 = (v42 - __p) >> 3;
      v19 = v18 + 1;
      if ((v18 + 1) >> 61)
      {
        std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
      }

      v20 = v43 - __p;
      if ((v43 - __p) >> 2 > v19)
      {
        v19 = v20 >> 2;
      }

      if (v20 >= 0x7FFFFFFFFFFFFFF8)
      {
        v21 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v21 = v19;
      }

      if (v21)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(&__p, v21);
      }

      *(8 * v18) = *v4;
      v15 = 8 * v18 + 8;
      memcpy(0, v16, v17);
      a1 = __p;
      __p = 0;
      v42 = v15;
      v43 = 0;
      if (a1)
      {
        operator delete(a1);
      }
    }

    else
    {
      *v42 = *v4;
      v15 = (v14 + 8);
    }

    v42 = v15;
    ++v3;
    v4 += 145;
  }

  while (v3 != 403);
  v22 = __src;
  v23 = (v45 - __src) >> 3;
  v24 = __p;
  if (v23 <= 1)
  {
    v26 = (v15 - __p) >> 3;
  }

  else
  {
    v25 = 0;
    v26 = (v15 - __p) >> 3;
    v27 = ((v45 - __src) >> 3) & 0x7FFFFFFF;
    v28 = 1;
    do
    {
      v29 = v25++;
      v30 = v28;
      v31 = v29;
      do
      {
        if (v23 <= v30 || v23 <= v31)
        {
          goto LABEL_56;
        }

        if (v22[v30] < v22[v31])
        {
          v31 = v30;
        }

        ++v30;
      }

      while (v27 != v30);
      if (v29 != v31)
      {
        if (v23 <= v31 || v26 <= v31 || v23 <= v29 || (v32 = v22[v31], v33 = *&v24[8 * v31], v22[v31] = v22[v29], v26 <= v29))
        {
LABEL_56:
          std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
        }

        *&v24[8 * v31] = *&v24[8 * v29];
        v22[v29] = v32;
        *&v24[8 * v29] = v33;
      }

      ++v28;
    }

    while (v25 != v23 - 1);
  }

  if (v26 < 3)
  {
    std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
  }

  v34 = 0;
  v35 = 0.0;
  do
  {
    v35 = v35 + *&v24[v34];
    v34 += 8;
  }

  while (v34 != 24);
  if (v26 < 0xA)
  {
    std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
  }

  v36 = 0;
  v37 = 0.0;
  do
  {
    v37 = v37 + *&v24[v36] + *&v24[v36 + 8];
    v36 += 16;
  }

  while (v36 != 80);
  if (v26 < 0xF)
  {
    std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
  }

  v38 = 0;
  v39 = 0.0;
  do
  {
    v39 = v39 + *&v24[v38];
    v38 += 8;
  }

  while (v38 != 120);
  v42 = v24;
  operator delete(v24);
  if (__src)
  {
    v45 = __src;
    operator delete(__src);
  }

  return (v35 / 3.0 + 0.0 + v37 / 10.0 + v39 / 15.0) / 3.0;
}

void sub_23AED55BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

double apple::vision::libraries::facecore::processing::detection::histogram::FaceHistogram::GetDistance(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = *a2;
  v5 = (*(a2 + 8) - *a2) >> 3;
  LODWORD(v6) = a4 - 1;
  if (a4 - 1 >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v6;
  }

  if (v6 < 1)
  {
    return 0.0;
  }

  if (v5 <= (v6 - 1))
  {
    std::vector<apple::vision::libraries::facecore::FaceInternal>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = &apple::vision::libraries::facecore::processing::detection::histogram::FaceHistogramArray[a4 * a3 + 1];
  result = 0.0;
  do
  {
    v9 = *v4++;
    v10 = v9;
    v11 = *v7++;
    result = result + vabdd_f64(v10, v11);
    --v6;
  }

  while (v6);
  return result;
}

uint64_t apple::vision::libraries::facecore::mod::aam::utils::readFromBase64(apple::vision::libraries::facecore::mod::aam::utils *this, uint64_t a2, char *a3, _BYTE *a4, char *a5)
{
  if (a3)
  {
    v5 = 4 * this;
    v6 = a3;
    do
    {
      v7 = (a2 + v5 / 3uLL);
      v8 = *v7;
      v9 = v8 - 65;
      if ((v8 - 65) >= 0x1A)
      {
        if ((v8 - 97) > 0x19)
        {
          if ((v8 - 48) > 9)
          {
            switch(v8)
            {
              case '+':
                v9 = 62;
                break;
              case '/':
                v9 = 63;
                break;
              case '=':
                v9 = 0;
                break;
              default:
                v9 = *v7;
                break;
            }
          }

          else
          {
            v9 = v8 + 4;
          }
        }

        else
        {
          v9 = v8 - 71;
        }
      }

      v10 = v7[1];
      v11 = v10 - 65;
      if (v10 - 65 >= 0x1A)
      {
        if (v10 - 97 > 0x19)
        {
          if (v10 - 48 > 9)
          {
            switch(v10)
            {
              case '+':
                v11 = 62;
                break;
              case '/':
                v11 = 63;
                break;
              case '=':
                v11 = 0;
                break;
              default:
                v11 = v10;
                break;
            }
          }

          else
          {
            v11 = v10 + 4;
          }
        }

        else
        {
          v11 = v10 - 71;
        }
      }

      if (this % 3 == 2)
      {
        LOBYTE(v9) = v11 & 0x3F | (v9 << 6);
      }

      else if (this % 3 == 1)
      {
        v9 = (16 * v9) | (v11 >> 2) & 0xF;
      }

      else
      {
        v9 = (4 * v9) | (v11 >> 4) & 3;
      }

      *a4++ = v9;
      LODWORD(this) = this + 1;
      v5 += 4;
      --v6;
    }

    while (v6);
  }

  return 1;
}

uint64_t apple::vision::libraries::facecore::processing::tracking::keypointtracker::computeNonHomogeousDescriptor(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (result)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = __clz(result);
      v10 = result << v9;
      v11 = v9 + v8;
      v12 = __clz(~(result << v9));
      if (v12 > v7)
      {
        v5 = v11;
        v6 = v12;
        v7 = v12;
      }

      result = (v10 << v12);
      v8 = v12 + v11;
    }

    while (result);
    v13 = 15 - v5;
  }

  else
  {
    v6 = 0;
    v13 = 15;
  }

  v14 = v13 - v6 + 1;
  v15 = 255;
  if (v14 <= v13)
  {
    v16 = v13 - v6 + 1;
    do
    {
      if (*(a2 + 4 * (v16 & 0xF)) < v15)
      {
        v15 = *(a2 + 4 * (v16 & 0xF));
      }

      ++v16;
      --v6;
    }

    while (v6);
  }

  *(a3 + 16) = a4 + v15 - 1;
  *(a3 + 20) = (a5 != 0) | (2 * (v14 + v13 + 32 * ((v14 + v13) >> 31)));
  return result;
}

void apple::vision::libraries::facecore::processing::tracking::keypointtracker::computeDescriptor(unsigned int *a1, uint64_t *a2, int a3, apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray *this)
{
  v34 = *MEMORY[0x277D85DE8];
  Points = apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::getPoints(this);
  v8 = a2[1] - *a2;
  if (v8)
  {
    v9 = Points;
    std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::resize(Points, (v8 >> 3));
    apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::make_offsets(v32, *a1, v10);
    memset(v31, 0, sizeof(v31));
    v11 = *a2;
    if (((a2[1] - *a2) >> 3) >= 1)
    {
      v12 = 0;
      do
      {
        v13 = 0;
        v14 = 0;
        v15 = v11 + 8 * v12;
        v16 = *(v15 + 4);
        if (v16 >= 0)
        {
          v17 = *(v15 + 4);
        }

        else
        {
          v17 = -v16;
        }

        *(v15 + 4) = v17;
        *(*v9 + 24 * v12) = *v15;
        v11 = *a2;
        v18 = v16 >> 31;
        if (v16 < 0)
        {
          v19 = a3;
        }

        else
        {
          v19 = -a3;
        }

        v20 = *(a1 + 3) + (*(*a2 + 8 * v12 + 4) - 3) * *a1 + *(*a2 + 8 * v12) - 3;
        v21 = v19 + *(v20 + v33);
        v22 = 1;
        do
        {
          v23 = *(v20 + *&v32[v13]);
          v24 = v21 - v23;
          v25 = v23 - v21;
          if (v16 >= 0)
          {
            v25 = v24;
          }

          if (v25 >= 1)
          {
            v14 |= v22;
            *(v31 + v13) = v25;
          }

          v22 *= 2;
          v13 += 4;
        }

        while (v13 != 64);
        v26 = v14 | (v14 << 16);
        v27 = *v9;
        if (v26 == -1)
        {
          v28 = 0;
          v29.i64[0] = 0xFF000000FFLL;
          v29.i64[1] = 0xFF000000FFLL;
          do
          {
            v29 = vminq_s32(v31[v28++], v29);
          }

          while (v28 != 4);
          v30 = v27 + 24 * v12;
          *(v30 + 16) = a3 - 1 + vminvq_s32(v29);
          *(v30 + 20) = v18 | 0x40;
        }

        else
        {
          apple::vision::libraries::facecore::processing::tracking::keypointtracker::computeNonHomogeousDescriptor(v26, v31, v27 + 24 * v12, a3, v18);
          v11 = *a2;
        }

        ++v12;
      }

      while (v12 < ((a2[1] - v11) >> 3));
    }
  }
}

_BYTE *apple::vision::libraries::facecore::mod::facerecognition::b64decode(_BYTE *this, const char *a2, uint64_t a3, char *a4)
{
  v18 = 0;
  if (a2 < 1)
  {
    return this;
  }

  v5 = a2;
  v6 = this;
  v7 = 0;
  LODWORD(v8) = 0;
  v9 = a2;
  do
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v8 = v8;
      do
      {
        if ((v6[v8] - 123) < 0xB0u || (v12 = v6[v8] - 43, apple::vision::libraries::facecore::mod::facerecognition::cd64[v12] == 36) || v12 == 80)
        {
          v13 = 0;
        }

        else
        {
          v13 = apple::vision::libraries::facecore::mod::facerecognition::cd64[v12] - 61;
        }

        ++v8;
      }

      while (v8 < v9 && !v13);
      if (v8 >= v9)
      {
        v14 = 0;
        goto LABEL_17;
      }

      ++v11;
      if (v13)
      {
        v14 = v13 - 1;
LABEL_17:
        *(&v18 + v10) = v14;
      }

      if (v8 >= v5)
      {
        break;
      }
    }

    while (v10++ < 3);
    if (v11)
    {
      __src[0] = (BYTE1(v18) >> 4) | (4 * v18);
      __src[1] = (BYTE2(v18) >> 2) | (16 * BYTE1(v18));
      __src[2] = HIBYTE(v18) | (BYTE2(v18) << 6);
      if (v11 >= 2)
      {
        v16 = v11 - 1;
        this = memcpy((a3 + v7), __src, (v11 - 1));
        v7 += v16;
      }
    }
  }

  while (v8 < v5);
  return this;
}

void computeHOG32FeaturesForImage(apple::vision::libraries::facecore::utils::aev::AEVGImage *a1, float **a2, int *a3)
{
  *&v5[1] = 0;
  v5[0] = 3;
  v3 = 0;
  v4 = 0;
  computeHOG32InputDataForImage(a1, &v4, &v3);
}

void apple::vision::libraries::facecore::utils::aev::AEVHOG32Descriptor::computeHog32Features(apple::vision::libraries::facecore::utils::aev::AEVHOG32Descriptor *this, int32x2_t *a2, int *a3, float **a4, int **a5, int *a6, double a7, double a8)
{
  *&a8 = a6;
  v9 = vcvt_s32_f32(vrnda_f32(vdiv_f32(vcvt_f32_s32(*a2), vdup_lane_s32(*&a8, 0))));
  v10 = v9.i32[1] * v9.i32[0];
  malloc_type_calloc(18 * v9.i32[1] * v9.i32[0], 4uLL, 0x100004052888210uLL);
  malloc_type_calloc(v10, 4uLL, 0x100004052888210uLL);
  *a5 = 3;
  operator new[]();
}

char *apple::vision::libraries::facecore::utils::aev::AEVFeaturesGenerationUtils::generateFeaturesVector(void *a1, int *a2, apple::vision::libraries::facecore::utils::aev::AEVGImage *a3, int a4, uint64_t a5, int a6)
{
  if (!a4)
  {
    v11 = 0;
    if (!a5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = *(a3 + 8) * *(a3 + 7);
  if (a5)
  {
LABEL_5:
    v12 = *(a5 + 8);
    v11 += ((*a5 - v12) / *(a5 + 12) + 1 + ((*a5 - v12) / *(a5 + 12) + 1) * ((*(a5 + 4) - v12) / *(a5 + 12))) * (v12 / *(a5 + 16)) * (v12 / *(a5 + 16)) * *(a5 + 20);
  }

LABEL_6:
  v29 = 0;
  v28 = 0;
  if (a6)
  {
    computeHOG32FeaturesForImage(a3, &v29, &v28);
  }

  result = malloc_type_malloc(8 * v11, 0x100004000313F17uLL);
  if (!a4 || (v15 = *(a3 + 7), v15 < 1))
  {
    v17 = 0;
    if (!a5)
    {
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v16 = 0;
  v17 = 0;
  v18 = *(a3 + 8);
  do
  {
    if (v18 >= 1)
    {
      v19 = *(a3 + 2);
      v20 = &result[8 * v17];
      v17 += v18;
      v21 = v18;
      do
      {
        v22 = *v19++;
        LOBYTE(v14) = *(v22 + v16);
        v14 = *&v14 / 255.0;
        *v20++ = v14;
        --v21;
      }

      while (v21);
    }

    ++v16;
  }

  while (v16 != v15);
  if (a5)
  {
LABEL_18:
    v23 = *(a5 + 8);
    v24 = (((*a5 - v23) / *(a5 + 12) + 1 + ((*a5 - v23) / *(a5 + 12) + 1) * ((*(a5 + 4) - v23) / *(a5 + 12))) * (v23 / *(a5 + 16)) * (v23 / *(a5 + 16)) * *(a5 + 20));
    if (v24 >= 1)
    {
      v25 = *(a5 + 24);
      v26 = &result[8 * v17];
      do
      {
        v27 = *v25++;
        *v26++ = v27;
        --v24;
      }

      while (v24);
    }
  }

LABEL_21:
  *a1 = result;
  *a2 = v11;
  return result;
}

void apple::vision::libraries::facecore::utils::OverlappingUtils::appendUniqueFaces(int **a1, uint64_t a2, double a3)
{
  for (i = *a1; i != a1[1]; i += 36)
  {
    for (j = *a2; ; j += 36)
    {
      v8 = *(a2 + 8);
      if (j == v8)
      {
        break;
      }

      if (apple::vision::libraries::facecore::utils::OverlappingUtils::computeFaceOverlap(j, i) >= a3)
      {
        goto LABEL_10;
      }
    }

    if (v8 >= *(a2 + 16))
    {
      v9 = std::vector<apple::vision::libraries::facecore::Face>::__emplace_back_slow_path<apple::vision::libraries::facecore::Face const&>(a2, i);
    }

    else
    {
      apple::vision::libraries::facecore::Face::Face(*(a2 + 8), i);
      v9 = (v8 + 36);
      *(a2 + 8) = v8 + 36;
    }

    *(a2 + 8) = v9;
LABEL_10:
    ;
  }
}

uint64_t std::vector<apple::vision::libraries::facecore::Face>::__emplace_back_slow_path<apple::vision::libraries::facecore::Face const&>(uint64_t a1, const apple::vision::libraries::facecore::Face *a2)
{
  v2 = 0x8E38E38E38E38E39 * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
  }

  if (0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v6 = 0x1C71C71C71C71C7;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::Face>>(a1, v6);
  }

  v13 = 0;
  v14 = 144 * v2;
  apple::vision::libraries::facecore::Face::Face((144 * v2), a2);
  v15 = 144 * v2 + 144;
  v7 = *(a1 + 8);
  v8 = (144 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::Face>,apple::vision::libraries::facecore::Face*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<apple::vision::libraries::facecore::Face>::~__split_buffer(&v13);
  return v12;
}

void sub_23AF98894(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<apple::vision::libraries::facecore::Face>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::Face>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1C71C71C71C71C8)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::Face>,apple::vision::libraries::facecore::Face*>(int a1, apple::vision::libraries::facecore::Face *a2, apple::vision::libraries::facecore::Face *a3, apple::vision::libraries::facecore::Face *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      apple::vision::libraries::facecore::Face::Face(this, v8);
      v8 = (v8 + 144);
      this = (this + 144);
      v7 -= 144;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      apple::vision::libraries::facecore::Face::~Face(v6);
      v6 = (v6 + 144);
    }
  }
}

void sub_23AF98984(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 144);
    do
    {
      apple::vision::libraries::facecore::Face::~Face(v4);
      v4 = (v5 - 144);
      v2 += 144;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<apple::vision::libraries::facecore::Face>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 144;
    apple::vision::libraries::facecore::Face::~Face((i - 144));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::FeatureCombination(apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination *this, apple::vision::libraries::facecore::FaceCoreContext *a2)
{
  *(this + 28) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 9) = a2;
  operator new();
}

void apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::~FeatureCombination(dispatch_object_t *this)
{
  dispatch_release(this[8]);
  pthread_mutex_lock(&apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::m_mutexRead);
  apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::deleteFeatures(this);
  v2 = this[6];
  if (v2)
  {
    apple::vision::libraries::facecore::mod::facerecognition::SimilarityMatrix::~SimilarityMatrix(v2);
    MEMORY[0x23EE98360]();
    this[6] = 0;
  }

  if (--apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::m_nbInst)
  {
    v3 = 1;
  }

  else
  {
    v3 = apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::m_aam == 0;
  }

  if (!v3)
  {
    apple::vision::libraries::facecore::mod::aam::AamFeature::~AamFeature(apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::m_aam);
    MEMORY[0x23EE98360]();
    apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::m_aam = 0;
    apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::m_initAamDone = 0;
  }

  pthread_mutex_unlock(&apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::m_mutexRead);
}

uint64_t apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::deleteFeatures(apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 4) = 0;
  }

  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    *(this + 3) = 0;
  }

  v4 = *(this + 2);
  if (v4)
  {
    (*(*v4 + 8))(v4);
    *(this + 2) = 0;
  }

  if (*this)
  {
    MEMORY[0x23EE98340](*this, 0x1000C8052888210);
    *this = 0;
  }

  result = *(this + 1);
  if (result)
  {
    result = MEMORY[0x23EE98340](result, 0x1000C8052888210);
    *(this + 1) = 0;
  }

  return result;
}

void apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::loadModelFile(apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination *a1)
{
  apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::deleteFeatures(a1);
  *(a1 + 10) = 0;
  operator new();
}

void sub_23B037990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  MEMORY[0x23EE98360](v33, 0x1020C403A5D3213);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    pthread_mutex_unlock(&apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::m_mutexRead);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::initCombinationParameters(apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination *this, float *a2, float *a3)
{
  v4 = *this;
  if (v4)
  {
    MEMORY[0x23EE98340](v4, 0x1000C8052888210, a3);
    *this = 0;
  }

  v5 = *(this + 1);
  if (v5)
  {
    MEMORY[0x23EE98340](v5, 0x1000C8052888210, a3);
    *(this + 1) = 0;
  }

  operator new[]();
}

void apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::extractFaceprint(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, _BYTE *a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v119 = 0;
  v120 = 0;
  v121 = 0;
  v111 = 0;
  v112 = &v111;
  v113 = 0x4002000000;
  v114 = __Block_byref_object_copy_;
  v115 = __Block_byref_object_dispose_;
  v116 = 0;
  v117 = 0;
  v118 = 0;
  v103 = 0;
  v104 = &v103;
  v105 = 0x4002000000;
  v106 = __Block_byref_object_copy_;
  v107 = __Block_byref_object_dispose_;
  v108 = 0;
  v109 = 0;
  v110 = 0;
  v95 = 0;
  v96 = &v95;
  v97 = 0x4002000000;
  v98 = __Block_byref_object_copy_;
  v99 = __Block_byref_object_dispose_;
  v100 = 0;
  v102 = 0;
  v101 = 0;
  if (!apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::m_aam)
  {
    v25 = 0;
    v26 = 0;
    __src = 0;
    if (!a6)
    {
      goto LABEL_37;
    }

    goto LABEL_10;
  }

  pthread_mutex_lock(&apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::m_mutexComputeAam);
  v16 = apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::m_aam;
  apple::vision::libraries::facecore::FaceInternal::FaceInternal(v94, a5);
  v17 = a2;
  v18 = a2;
  v19 = a3;
  v20 = a3;
  v21 = a4;
  apple::vision::libraries::facecore::mod::aam::AamFeature::setLandmarksAndDoShearch(v16, v18, v20, a4, v94);
  v22 = a9;
  apple::vision::libraries::facecore::Face::~Face(v94);
  v23 = a7;
  if (a6)
  {
    apple::vision::libraries::facecore::mod::aam::AamFeature::extractFaceprint(apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::m_aam, &v79);
    v24 = *(&v79 + 1);
    __src = v79;
  }

  else
  {
    v24 = 0;
    __src = 0;
  }

  apple::vision::libraries::facecore::mod::aam::AamFeature::GetShapeVertices(apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::m_aam, &v79);
  v27 = v96;
  v29 = v96 + 5;
  v28 = v96[5];
  if (v28)
  {
    v96[6] = v28;
    operator delete(v28);
    *v29 = 0;
    v29[1] = 0;
    v29[2] = 0;
  }

  *(v27 + 5) = v79;
  v27[7] = v80;
  apple::vision::libraries::facecore::mod::aam::AamFeature::GetTriList(apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::m_aam, &v79);
  v25 = v79;
  pthread_mutex_unlock(&apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::m_mutexComputeAam);
  v26 = v24;
  a7 = v23;
  a9 = v22;
  a4 = v21;
  a3 = v19;
  a2 = v17;
  v30 = v96[5];
  __asm { FMOV            V2.2D, #0.5 }

  *(a5 + 4) = vuzp1q_s32(vcvtq_s64_f64(vaddq_f64(vmulq_f64(vaddq_f64(v30[10], v30[14]), _Q2), _Q2)), vcvtq_s64_f64(vaddq_f64(vmulq_f64(vaddq_f64(v30[22], v30[18]), _Q2), _Q2)));
  *(a5 + 20) = vmovn_s64(vcvtq_s64_f64(vaddq_f64(vmulq_f64(vaddq_f64(v30[35], v30[38]), _Q2), _Q2)));
  if (a6)
  {
LABEL_10:
    if (*(a1 + 16))
    {
      apple::vision::libraries::facecore::mod::Image::Image(v92, 0, 0, 1);
      apple::vision::libraries::facecore::mod::Image::SetBuffer(v92, a2, a3, a4, 1);
      v36 = *(a1 + 16);
      v37 = *(a5 + 4);
      v38 = *(a5 + 8);
      v39 = *(a5 + 12);
      v40 = *(a5 + 16);
      v41 = *(a5 + 20);
      v42 = *(a5 + 24);
      *(v36 + 24) = 0;
      *(v36 + 20) = 0;
      apple::vision::libraries::facecore::mod::facerecognition::FaceAlignment::_getTranformation(v36, *(v36 + 8), (v36 + 20), (v36 + 24), v37, v38, v39, v40, v41, v42);
      *a7 = apple::vision::libraries::facecore::mod::facerecognition::FaceAlignment::_transformImage(v36, v92, *(v36 + 8), *(v36 + 20), *(v36 + 24), 128, *(v36 + 32));
      apple::vision::libraries::facecore::mod::Image::Image(&v89, 0, 0, 1);
      apple::vision::libraries::facecore::mod::Image::SetBuffer(&v89, *(v36 + 32), 128, 128, v93);
      v43 = v91;
      v44 = v89;
      v45 = v90;
      if (*(a1 + 24))
      {
        v47 = *(a1 + 56);
        v46 = *(a1 + 64);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 0x40000000;
        block[2] = ___ZN5apple6vision9libraries8facecore3mod15facerecognition18FeatureCombination16extractFaceprintEPhiiNS2_12FaceInternalEbRbPNS2_15FaceCoreContextE_block_invoke;
        block[3] = &unk_278B7A588;
        block[4] = &v103;
        block[5] = a1;
        v87 = v89;
        v88 = v90;
        block[6] = v91;
        block[7] = a8;
        dispatch_group_async(v46, v47, block);
      }

      if (apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::m_aam)
      {
        if (*(a1 + 32))
        {
          *&v79 = 0;
          *(&v79 + 1) = &v79;
          v80 = 0x4002000000;
          v81 = __Block_byref_object_copy_;
          v82 = __Block_byref_object_dispose_;
          __p = 0;
          v84 = 0;
          v85 = 0;
          v49 = *(a1 + 56);
          v48 = *(a1 + 64);
          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 0x40000000;
          v76[2] = ___ZN5apple6vision9libraries8facecore3mod15facerecognition18FeatureCombination16extractFaceprintEPhiiNS2_12FaceInternalEbRbPNS2_15FaceCoreContextE_block_invoke_2;
          v76[3] = &unk_278B7A738;
          v76[4] = &v95;
          v76[5] = &v79;
          v76[6] = &v111;
          v76[7] = a1;
          v76[8] = a8;
          v76[9] = v43;
          v77 = v44;
          v78 = v45;
          dispatch_group_async(v48, v49, v76);
          _Block_object_dispose(&v79, 8);
          if (__p)
          {
            v84 = __p;
            operator delete(__p);
          }
        }
      }

      v50 = (v26 - __src) >> 3;
      if (v26 != __src)
      {
        v51 = *(a1 + 8);
        v52 = **a1;
        v53 = *v51 - v52;
        if (vabds_f32(*v51, v52) < 0.000000001)
        {
          v53 = v53 + 0.000000001;
        }

        v54 = 1;
        v55 = __src;
        do
        {
          *v55 = (*v55 - v52) / v53;
          ++v55;
          v56 = v50 > v54++;
        }

        while (v56);
      }

      std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v119, v120, __src, v26, v50);
      v57 = v104[5];
      v58 = v104[6];
      if (v58 == v57)
      {
        v64 = (v58 - v57) >> 3;
      }

      else
      {
        v59 = 0;
        v60 = *(*(a1 + 8) + 4);
        v61 = *(*a1 + 4);
        v62 = v60 - v61;
        if (vabds_f32(v60, v61) < 0.000000001)
        {
          v62 = v62 + 0.000000001;
        }

        v63 = 1;
        do
        {
          *&v57[8 * v59] = (*&v57[8 * v59] - v61) / v62;
          v59 = v63;
          v57 = v104[5];
          v58 = v104[6];
          v64 = (v58 - v57) >> 3;
          v56 = v64 > v63++;
        }

        while (v56);
      }

      std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v119, v120, v57, v58, v64);
      v65 = v112[5];
      v66 = v112[6];
      if (v66 == v65)
      {
        v72 = (v66 - v65) >> 3;
      }

      else
      {
        v67 = 0;
        v68 = *(*(a1 + 8) + 8);
        v69 = *(*a1 + 8);
        v70 = v68 - v69;
        if (vabds_f32(v68, v69) < 0.000000001)
        {
          v70 = v70 + 0.000000001;
        }

        v71 = 1;
        do
        {
          *&v65[8 * v67] = (*&v65[8 * v67] - v69) / v70;
          v67 = v71;
          v65 = v112[5];
          v66 = v112[6];
          v72 = (v66 - v65) >> 3;
          v56 = v72 > v71++;
        }

        while (v56);
      }

      std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v119, v120, v65, v66, v72);
      std::vector<double>::__insert_with_size[abi:ne200100]<std::__wrap_iter<double *>,std::__wrap_iter<double *>>(&v119, v120, 0, 0, 0);
      apple::vision::libraries::facecore::mod::Image::~Image(&v89);
      apple::vision::libraries::facecore::mod::Image::~Image(v92);
    }
  }

LABEL_37:
  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a9, v119, v120, (v120 - v119) >> 3);
  if (v25)
  {
    operator delete(v25);
  }

  _Block_object_dispose(&v95, 8);
  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  _Block_object_dispose(&v103, 8);
  if (v108)
  {
    v109 = v108;
    operator delete(v108);
  }

  _Block_object_dispose(&v111, 8);
  if (v116)
  {
    v117 = v116;
    operator delete(v116);
  }

  if (__src)
  {
    operator delete(__src);
  }

  if (v119)
  {
    v120 = v119;
    operator delete(v119);
  }
}

void sub_23B03838C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  apple::vision::libraries::facecore::mod::Image::~Image(&a42);
  apple::vision::libraries::facecore::mod::Image::~Image(&a46);
  if (v46)
  {
    operator delete(v46);
  }

  _Block_object_dispose(&STACK[0x220], 8);
  v49 = STACK[0x248];
  if (STACK[0x248])
  {
    STACK[0x250] = v49;
    operator delete(v49);
  }

  _Block_object_dispose((v47 - 256), 8);
  v50 = *(v47 - 216);
  if (v50)
  {
    *(v47 - 208) = v50;
    operator delete(v50);
  }

  _Block_object_dispose((v47 - 192), 8);
  v51 = *(v47 - 152);
  if (v51)
  {
    *(v47 - 144) = v51;
    operator delete(v51);
  }

  if (a13)
  {
    operator delete(a13);
  }

  v52 = *(v47 - 128);
  if (v52)
  {
    *(v47 - 120) = v52;
    operator delete(v52);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy_(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

double ___ZN5apple6vision9libraries8facecore3mod15facerecognition18FeatureCombination16extractFaceprintEPhiiNS2_12FaceInternalEbRbPNS2_15FaceCoreContextE_block_invoke(uint64_t a1)
{
  (*(**(*(a1 + 40) + 24) + 16))(&v5);
  v2 = *(*(a1 + 32) + 8);
  v3 = v2[5];
  if (v3)
  {
    v2[6] = v3;
    operator delete(v3);
  }

  result = *&v5;
  *(v2 + 5) = v5;
  v2[7] = v6;
  return result;
}

double ___ZN5apple6vision9libraries8facecore3mod15facerecognition18FeatureCombination16extractFaceprintEPhiiNS2_12FaceInternalEbRbPNS2_15FaceCoreContextE_block_invoke_2(void *a1)
{
  v2 = a1[7];
  v3 = *(*(a1[4] + 8) + 40);
  if ((*(*(a1[4] + 8) + 48) - v3) >= 9)
  {
    v4 = 1;
    v5 = 1;
    do
    {
      *&v15 = 0;
      v17 = 0.0;
      v6 = *(v3 + 8 * (v4 - 1));
      v7 = *(v3 + 8 * v4);
      v8 = *(v2 + 16);
      v9 = *(v8 + 8);
      v10 = *(v8 + 24);
      *&v15 = v7 * v9[1] + *v9 * v6 + *(v8 + 20);
      v17 = v7 * v9[3] + v9[2] * v6 + v10;
      std::vector<double>::push_back[abi:ne200100]((*(a1[5] + 8) + 40), &v15);
      std::vector<double>::push_back[abi:ne200100]((*(a1[5] + 8) + 40), &v17);
      v11 = v5;
      v3 = *(*(a1[4] + 8) + 40);
      ++v5;
      v4 += 2;
    }

    while (v11 < ((*(*(a1[4] + 8) + 48) - v3) >> 3) >> 1);
  }

  apple::vision::libraries::facecore::FaceCoreContext::setFaceVertices(a1[8], (*(a1[5] + 8) + 40));
  (*(**(v2 + 32) + 16))(&v15);
  v12 = *(a1[6] + 8);
  v13 = v12[5];
  if (v13)
  {
    v12[6] = v13;
    operator delete(v13);
  }

  result = *&v15;
  *(v12 + 5) = v15;
  v12[7] = v16;
  return result;
}

uint64_t std::string::basic_string[abi:ne200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 > 0x16)
  {
    operator new();
  }

  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = 0;
  *(result + 23) = a2;
  return result;
}

void apple::vision::libraries::facecore::mod::facerecognition::FeatureProcessing::FeatureProcessing(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v5 = *MEMORY[0x277D85DE8];
  *(a1 + 40) = 0;
  *(a1 + 44) = a4;
  *(a1 + 48) = a5;
  operator new[]();
}

void sub_23B038B78(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x23EE98300](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x23EE981F0](a1 + 2);

  return std::istream::~istream();
}

void apple::vision::libraries::facecore::mod::bundle::initializeGlobals(apple::vision::libraries::facecore::mod::bundle *this)
{
  if (apple::vision::libraries::facecore::mod::bundle::initializeGlobals(void)::onceToken != -1)
  {
    apple::vision::libraries::facecore::mod::bundle::initializeGlobals();
  }

  if (!apple::vision::libraries::facecore::mod::bundle::_bundle)
  {

    [VNFaceCoreExceptionUtils throwRuntimeErrorException:@"Error while trying to get resource path: bundle is NULL!"];
  }
}