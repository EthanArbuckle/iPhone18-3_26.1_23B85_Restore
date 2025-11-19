void sub_23B12C944(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

apple::vision::libraries::facecore::FaceCoreAPI::Impl *apple::vision::libraries::facecore::FaceCoreAPI::Impl::updateDetectionProcessingChains(apple::vision::libraries::facecore::FaceCoreAPI::Impl *this)
{
  v1 = this;
  v2 = *(*this + 32);
  switch(v2)
  {
    case 2:
      v3 = *(this + 7);
      if (v3)
      {
        (*(*v3 + 24))(v3);
        *(v1 + 7) = 0;
      }

      operator new();
    case 1:
      apple::vision::libraries::facecore::FaceCoreAPI::Impl::deleteKeypointTrackingProcessingChain(this);
      operator new();
    case 0:
      apple::vision::libraries::facecore::FaceCoreAPI::Impl::deleteKeypointTrackingProcessingChain(this);
      this = *(v1 + 7);
      if (this)
      {
        this = (*(*this + 24))(this);
        *(v1 + 7) = 0;
      }

      *(v1 + 4) = *(v1 + 5);
      break;
  }

  return this;
}

apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager *apple::vision::libraries::facecore::FaceCoreAPI::Impl::deleteKeypointTrackingProcessingChain(apple::vision::libraries::facecore::FaceCoreAPI::Impl *this)
{
  result = *(this + 6);
  if (result)
  {
    apple::vision::libraries::facecore::processing::tracking::KeypointTrackerManager::~KeypointTrackerManager(result);
    result = MEMORY[0x23EE98360]();
    *(this + 6) = 0;
  }

  return result;
}

void apple::vision::libraries::facecore::FaceCoreAPI::Impl::detectFacesAllCardinalDirections(apple::vision::libraries::facecore::FaceCoreContext **this@<X0>, image *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v14 = 0uLL;
  v15 = 0;
  apple::vision::libraries::facecore::FaceCoreAPI::Impl::detectFacesOneDirection(this, a2, &v12);
  std::vector<apple::vision::libraries::facecore::Face>::__vdeallocate(&v14);
  v14 = v12;
  v15 = v13;
  v16 = &v12;
  v13 = 0;
  v12 = 0uLL;
  std::vector<apple::vision::libraries::facecore::Face>::__destroy_vector::operator()[abi:ne200100](&v16);
  std::vector<apple::vision::libraries::facecore::Face>::__insert_with_size[abi:ne200100]<std::__wrap_iter<apple::vision::libraries::facecore::Face*>,std::__wrap_iter<apple::vision::libraries::facecore::Face*>>(a3, a3[1], v14, *(&v14 + 1), 0x8E38E38E38E38E39 * ((*(&v14 + 1) - v14) >> 4));
  v6 = *this;
  v7 = *(*this + 4);
  v8 = *(*this + 20);
  *(*this + 20) = 0x5A00000003;
  v9 = (v7 + 180) % 360;
  if (v9 > 0xFFFFFE97)
  {
    v9 += 360;
  }

  *(v6 + 4) = v9;
  apple::vision::libraries::facecore::FaceCoreAPI::Impl::detectFacesOneDirection(this, a2, &v12);
  std::vector<apple::vision::libraries::facecore::Face>::__vdeallocate(&v14);
  v14 = v12;
  v15 = v13;
  v16 = &v12;
  v13 = 0;
  v12 = 0uLL;
  std::vector<apple::vision::libraries::facecore::Face>::__destroy_vector::operator()[abi:ne200100](&v16);
  apple::vision::libraries::facecore::utils::OverlappingUtils::appendUniqueFaces(&v14, a3, 0.300000012);
  v10 = *this;
  v11 = v7 % 360;
  if ((v7 % 360) > 0xFFFFFE97)
  {
    v11 = v7 % 360 + 360;
  }

  *(v10 + 4) = v11;
  *(v10 + 20) = v8;
  *&v12 = &v14;
  std::vector<apple::vision::libraries::facecore::Face>::__destroy_vector::operator()[abi:ne200100](&v12);
}

void sub_23B12CC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13)
{
  a9 = &a13;
  std::vector<apple::vision::libraries::facecore::Face>::__destroy_vector::operator()[abi:ne200100](&a9);
  std::vector<apple::vision::libraries::facecore::Face>::__destroy_vector::operator()[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

apple::vision::libraries::facecore::Face *apple::vision::libraries::facecore::FaceCoreAPI::Impl::detectFacesOneDirection@<X0>(apple::vision::libraries::facecore::FaceCoreContext **this@<X0>, image *a2@<X1>, void *a3@<X8>)
{
  apple::vision::libraries::facecore::FaceCoreAPI::Impl::initializeDetectionProcessingChainsIfNeeded(this);
  apple::vision::libraries::facecore::FaceCoreContext::setUpForProcessing(*this);
  if (a2->var1 >= 25 && a2->var2 >= 25)
  {
    v7 = *this;
    *(v7 + 6) = *a2;
    *(v7 + 7) = *a2;
    (*(*this[4] + 8))(this[4], *this);
    apple::vision::libraries::facecore::FaceCoreContext::cleanUpTemporaryData(*this);
  }

  v8 = *this;

  return apple::vision::libraries::facecore::FaceCoreContext::getConvertedDetectedFaces(v8, a3);
}

apple::vision::libraries::facecore::Face *std::vector<apple::vision::libraries::facecore::Face>::__insert_with_size[abi:ne200100]<std::__wrap_iter<apple::vision::libraries::facecore::Face*>,std::__wrap_iter<apple::vision::libraries::facecore::Face*>>(void *a1, uint64_t a2, const apple::vision::libraries::facecore::Face *a3, apple::vision::libraries::facecore::Face *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0x8E38E38E38E38E39 * ((v9 - v10) >> 4)) >= a5)
    {
      v16 = v10 - a2;
      if ((0x8E38E38E38E38E39 * ((v10 - a2) >> 4)) >= a5)
      {
        v19 = 9 * a5;
        std::vector<apple::vision::libraries::facecore::Face>::__move_range(a1, a2, a1[1], a2 + 144 * a5);
        v20 = (v7 + 16 * v19);
        v21 = v5;
        do
        {
          apple::vision::libraries::facecore::Face::operator=(v21, v7);
          v7 = (v7 + 144);
          v21 += 144;
        }

        while (v7 != v20);
      }

      else
      {
        v17 = (a3 + v16);
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::Face>,apple::vision::libraries::facecore::Face*,apple::vision::libraries::facecore::Face*,apple::vision::libraries::facecore::Face*>(a1, (a3 + v16), a4, a1[1]);
        if (v16 >= 1)
        {
          std::vector<apple::vision::libraries::facecore::Face>::__move_range(a1, v5, v10, v5 + 144 * a5);
          v18 = v5;
          do
          {
            apple::vision::libraries::facecore::Face::operator=(v18, v7);
            v7 = (v7 + 144);
            v18 += 144;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x71C71C71C71C71C7 * ((v10 - *a1) >> 4);
      if (v12 > 0x1C71C71C71C71C7)
      {
        std::vector<apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptor>::__throw_length_error[abi:ne200100]();
      }

      v13 = a2 - v11;
      v14 = 0x8E38E38E38E38E39 * ((v9 - v11) >> 4);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0xE38E38E38E38E3)
      {
        v15 = 0x1C71C71C71C71C7;
      }

      else
      {
        v15 = v12;
      }

      v29 = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::Face>>(a1, v15);
      }

      v22 = (16 * (v13 >> 4));
      v26[0] = 0;
      v26[1] = v22;
      v27 = v22;
      v28 = 0;
      v23 = (v22 + 144 * a5);
      v24 = 144 * a5;
      do
      {
        apple::vision::libraries::facecore::Face::Face(v22, v7);
        v22 = (v22 + 144);
        v7 = (v7 + 144);
        v24 -= 144;
      }

      while (v24);
      v27 = v23;
      v5 = std::vector<apple::vision::libraries::facecore::Face>::__swap_out_circular_buffer(a1, v26, v5);
      std::__split_buffer<apple::vision::libraries::facecore::Face>::~__split_buffer(v26);
    }
  }

  return v5;
}

uint64_t std::vector<apple::vision::libraries::facecore::Face>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  v8 = v6;
  if (v7 < a3)
  {
    v10 = (a2 + v6 - a4);
    v8 = v6;
    do
    {
      apple::vision::libraries::facecore::Face::Face(v8, v10);
      v10 += 36;
      v8 = v11 + 144;
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<apple::vision::libraries::facecore::Face *,apple::vision::libraries::facecore::Face *,apple::vision::libraries::facecore::Face *>(&v13, a2, v7, v6);
}

uint64_t std::vector<apple::vision::libraries::facecore::Face>::__swap_out_circular_buffer(uint64_t a1, uint64_t a2, apple::vision::libraries::facecore::Face *a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::Face>,apple::vision::libraries::facecore::Face*>(a1, a3, *(a1 + 8), *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::Face>,apple::vision::libraries::facecore::Face*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  *(a1 + 8) = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

apple::vision::libraries::facecore::Face *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<apple::vision::libraries::facecore::Face>,apple::vision::libraries::facecore::Face*,apple::vision::libraries::facecore::Face*,apple::vision::libraries::facecore::Face*>(int a1, apple::vision::libraries::facecore::Face *a2, apple::vision::libraries::facecore::Face *a3, apple::vision::libraries::facecore::Face *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      apple::vision::libraries::facecore::Face::Face(this, v6);
      v6 = (v6 + 144);
      this = (this + 144);
      v7 -= 144;
    }

    while (v6 != a3);
  }

  return this;
}

void sub_23B12D148(_Unwind_Exception *exception_object)
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

uint64_t std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<apple::vision::libraries::facecore::Face *,apple::vision::libraries::facecore::Face *,apple::vision::libraries::facecore::Face *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a2)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = *(a3 + v7 - 144);
      v10 = *(a3 + v7 - 112);
      *(v8 - 128) = *(a3 + v7 - 128);
      *(v8 - 112) = v10;
      *(v8 - 144) = v9;
      std::vector<double>::__move_assign(a4 + v7 - 96, (a3 + v7 - 96));
      *(v8 - 72) = *(a3 + v7 - 72);
      std::vector<double>::__move_assign(a4 + v7 - 64, (a3 + v7 - 64));
      v11 = *(a3 + v7 - 40);
      v12 = *(a3 + v7 - 24);
      *(v8 - 8) = *(a3 + v7 - 8);
      *(v8 - 24) = v12;
      *(v8 - 40) = v11;
      v7 -= 144;
    }

    while (a3 + v7 != a2);
  }

  return a3;
}

void std::vector<apple::vision::libraries::facecore::Face>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        apple::vision::libraries::facecore::Face::~Face((v3 - 144));
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_23B12D49C(_Unwind_Exception *a1)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  std::unique_ptr<apple::vision::libraries::facecore::FaceCoreContext>::~unique_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

apple::vision::libraries::facecore::FaceCoreContext **std::unique_ptr<apple::vision::libraries::facecore::FaceCoreContext>::~unique_ptr[abi:ne200100](apple::vision::libraries::facecore::FaceCoreContext **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    apple::vision::libraries::facecore::FaceCoreContext::~FaceCoreContext(v2);
    MEMORY[0x23EE98360]();
  }

  return a1;
}

void apple::vision::libraries::facecore::FaceCoreAPI::Impl::~Impl(void **this)
{
  apple::vision::libraries::facecore::FaceCoreAPI::Impl::deleteFaceDetectionProcessingChain(this);
  apple::vision::libraries::facecore::FaceCoreAPI::Impl::deleteKeypointTrackingProcessingChain(this);
  v2 = this[7];
  if (v2)
  {
    (*(*v2 + 24))(v2);
    this[7] = 0;
  }

  apple::vision::libraries::facecore::FaceCoreAPI::Impl::deleteDetailsExtractionProcessingChain(this);
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  std::unique_ptr<apple::vision::libraries::facecore::FaceCoreContext>::~unique_ptr[abi:ne200100](this);
}

apple::vision::libraries::facecore::processing::processingchains::FaceDetectionProcessingChain *apple::vision::libraries::facecore::FaceCoreAPI::Impl::deleteFaceDetectionProcessingChain(apple::vision::libraries::facecore::FaceCoreAPI::Impl *this)
{
  result = *(this + 5);
  if (result)
  {
    apple::vision::libraries::facecore::processing::processingchains::FaceDetectionProcessingChain::~FaceDetectionProcessingChain(result);
    result = MEMORY[0x23EE98360]();
    *(this + 5) = 0;
  }

  return result;
}

apple::vision::libraries::facecore::processing::processingchains::DetailsExtractionProcessingChain *apple::vision::libraries::facecore::FaceCoreAPI::Impl::deleteDetailsExtractionProcessingChain(apple::vision::libraries::facecore::FaceCoreAPI::Impl *this)
{
  result = *(this + 8);
  if (result)
  {
    apple::vision::libraries::facecore::processing::processingchains::DetailsExtractionProcessingChain::~DetailsExtractionProcessingChain(result);
    result = MEMORY[0x23EE98360]();
    *(this + 8) = 0;
  }

  return result;
}

void apple::vision::libraries::facecore::mod::facerecognition::LocalGradientFeature::LocalGradientFeature(void *a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = &unk_284DF3D58;
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 2), *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>((a1 + 5), *a3, a3[1], (a3[1] - *a3) >> 2);
  a1[8] = 0;
  operator new();
}

void sub_23B1A52C8(_Unwind_Exception *a1)
{
  v5 = v4;
  MEMORY[0x23EE98360](v5, 0x1080C400571E1DELL);
  v7 = *v3;
  if (*v3)
  {
    *(v1 + 48) = v7;
    operator delete(v7);
  }

  v8 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v8;
    operator delete(v8);
  }

  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::mod::facerecognition::LocalGradientFeature::~LocalGradientFeature(apple::vision::libraries::facecore::mod::facerecognition::LocalGradientFeature *this)
{
  *this = &unk_284DF3D58;
  v2 = *(this + 8);
  if (v2)
  {
    apple::vision::libraries::facecore::mod::facerecognition::FeatureProcessing::~FeatureProcessing(v2);
    MEMORY[0x23EE98360]();
  }

  v3 = *(this + 1);
  if (v3)
  {
    apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor::~GradientLocalDescriptor(v3);
    MEMORY[0x23EE98360]();
  }

  v4 = *(this + 5);
  if (v4)
  {
    *(this + 6) = v4;
    operator delete(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    *(this + 3) = v5;
    operator delete(v5);
  }
}

{
  apple::vision::libraries::facecore::mod::facerecognition::LocalGradientFeature::~LocalGradientFeature(this);

  JUMPOUT(0x23EE98360);
}

apple::vision::libraries::facecore::mod::facerecognition::FeatureProcessing *apple::vision::libraries::facecore::mod::facerecognition::LocalGradientFeature::setFeatureProcessing(apple::vision::libraries::facecore::mod::facerecognition::LocalGradientFeature *this, apple::vision::libraries::facecore::mod::facerecognition::FeatureProcessing *a2)
{
  result = *(this + 8);
  if (result)
  {
    apple::vision::libraries::facecore::mod::facerecognition::FeatureProcessing::~FeatureProcessing(result);
    result = MEMORY[0x23EE98360]();
  }

  *(this + 8) = a2;
  return result;
}

void apple::vision::libraries::facecore::mod::facerecognition::LocalGradientFeature::extractFaceprintPart(apple::vision::libraries::facecore::mod::facerecognition::LocalGradientFeature *this@<X0>, unsigned __int8 *a2@<X1>, apple::vision::libraries::facecore::FaceCoreContext *a3@<X4>, int a4@<W2>, int a5@<W3>, uint64_t a6@<X8>, float a7@<S0>)
{
  v9 = *(this + 6) - *(this + 5);
  v10 = v9 >> 2;
  v11 = *(this + 3) - *(this + 2);
  if (a4 >= 1)
  {
    v12 = 0;
    v13 = (this + 4680);
    do
    {
      v14 = a5;
      v15 = a2;
      v16 = v13;
      if (a5 >= 1)
      {
        do
        {
          LOBYTE(a7) = *v15;
          a7 = LODWORD(a7);
          *v16++ = a7;
          v15 += a4;
          --v14;
        }

        while (v14);
      }

      ++v12;
      v13 += a5;
      ++a2;
    }

    while (v12 != a4);
  }

  v30 = v11 >> 2;
  if ((v11 >> 2) >= 1)
  {
    v17 = 0;
    v18 = (v11 >> 2) & 0x7FFFFFFF;
    v19 = (v9 >> 2) & 0x7FFFFFFF;
    v20 = (this + 96);
    do
    {
      if (v10 >= 1)
      {
        v21 = 0;
        v22 = v20;
        do
        {
          apple::vision::libraries::facecore::FaceCoreContext::getFaceVertices(a3, &__p);
          v23 = *(__p + 2 * *(*(this + 5) + 4 * v21));
          v36 = __p;
          operator delete(__p);
          apple::vision::libraries::facecore::FaceCoreContext::getFaceVertices(a3, &__p);
          v24 = *(__p + 2 * *(*(this + 5) + 4 * v21) + 1);
          v36 = __p;
          operator delete(__p);
          *(v22 - 3) = v23;
          *(v22 - 2) = v24;
          *(v22 - 1) = *(*(this + 2) + 4 * v17);
          *v22 = 0.0;
          v22 += 4;
          ++v21;
        }

        while (v19 != v21);
      }

      ++v17;
      v20 += 4 * v10;
    }

    while (v17 != v18);
  }

  v34 = -1;
  v25 = this + 70216;
  apple::vision::libraries::facecore::mod::facerecognition::GradientLocalDescriptor::extract(*(this + 1), this + 1170, a4, a5, this + 9, v30 * v10, this + 70216, &v34);
  v27 = *(this + 8);
  if (v27)
  {
    apple::vision::libraries::facecore::mod::facerecognition::FeatureProcessing::transformF(v27, this + 70216, 72, 128, 1, a6, v26);
  }

  else
  {
    *a6 = 0;
    *(a6 + 8) = 0;
    v28 = 9216;
    *(a6 + 16) = 0;
    do
    {
      v29 = *v25++;
      *&__p = v29;
      std::vector<double>::push_back[abi:ne200100](a6, &__p);
      --v28;
    }

    while (v28);
  }
}

void sub_23B1A5664(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *v12;
  if (*v12)
  {
    *(a12 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23B1A56E4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void apple::vision::libraries::facecore::processing::tracking::KeypointTracker::~KeypointTracker(apple::vision::libraries::facecore::processing::tracking::KeypointTracker *this)
{
  for (i = 1472; i != -640; i -= 1056)
  {
    apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::~KPointDescriptorArray((this + i));
  }

  for (j = 352; j != 224; j -= 64)
  {
    apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::~KCropImage((this + j));
  }

  apple::vision::libraries::facecore::Face::~Face((this + 72));
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::~KCropImage((this + 8));
}

apple::vision::libraries::facecore::processing::tracking::KeypointTracker *apple::vision::libraries::facecore::processing::tracking::KeypointTracker::KeypointTracker(apple::vision::libraries::facecore::processing::tracking::KeypointTracker *this)
{
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 27) = 0x100000001;
  *(this + 28) = 0x3FF0000000000000;
  *(this + 29) = 0x100000000;
  __asm { FMOV            V1.2D, #1.0 }

  *(this + 15) = _Q1;
  *(this + 16) = _Q1;
  *(this + 17) = _Q1;
  *(this + 19) = 0u;
  *(this + 18) = 0u;
  *(this + 23) = 0u;
  *(this + 22) = 0u;
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::KPointDescriptorArray((this + 416));
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::KPointDescriptorArray((this + 1472));
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KRigidTransformation::KRigidTransformation((this + 2528));
  *this = 0;
  return this;
}

void sub_23B1D0468(_Unwind_Exception *a1)
{
  v5 = (v3 + 1472);
  v6 = -2112;
  do
  {
    apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::~KPointDescriptorArray(v5);
    v5 = (v7 - 1056);
    v6 += 1056;
  }

  while (v6);
  v8 = (v3 + 352);
  v9 = -128;
  do
  {
    apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::~KCropImage(v8);
    v8 = (v10 - 64);
    v9 += 64;
  }

  while (v9);
  apple::vision::libraries::facecore::Face::~Face(v2);
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::~KCropImage(v1);
  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::processing::tracking::KeypointTracker::init(uint64_t a1, const image *a2, int *a3)
{
  apple::vision::libraries::facecore::FaceInternal::operator=(a1 + 72, a3);
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::generateCropWithFace(a1 + 8, a3);

  apple::vision::libraries::facecore::processing::tracking::KeypointTracker::initializeFrameDataAtIndex(a1, 0, a2, (a1 + 8));
}

void apple::vision::libraries::facecore::processing::tracking::KeypointTracker::initializeFrameDataAtIndex(apple::vision::libraries::facecore::processing::tracking::KeypointTracker *this, uint64_t a2, const image *a3, apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage *a4)
{
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::KCropImage(v12, a3, a4);
  v6 = (this + 64 * a2);
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::takeOwnershipToCropBuffer((v6 + 72), v12);
  __p = 0;
  v10 = 0;
  v11 = 0;
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::detectKeypointInCrop((v6 + 72), 3, &__p);
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::KPointDescriptorArray(v13);
  v7 = this + 1056 * a2;
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::clear((v7 + 416));
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::computeDescriptor(v6 + 72, &__p, 3, v13);
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::nonMaxSuppression(v13, (v6 + 72), (v7 + 416), v8);
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::~KPointDescriptorArray(v13);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }

  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::~KCropImage(v12);
}

void apple::vision::libraries::facecore::processing::tracking::KeypointTracker::track(int32x2_t *this, const image *a2, int32x2_t *a3)
{
  this[27].i32[0] = 1;
  memset(v21, 0, 32);
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::generateCropFromPreviousCrop(v21, this + 1, a2, 0x28u);
  apple::vision::libraries::facecore::processing::tracking::KeypointTracker::initializeFrameDataAtIndex(this, 1, a2, v21);
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::MatchingModule::MatchingModule(v18, &this[52], &this[184], &this[36], &this[44]);
  *__p = 0u;
  v17 = 0u;
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::MatchingModule::matchElements(v18);
  if (v20 && (apple::vision::libraries::facecore::processing::tracking::keypointtracker::ransac(&v19, __p), apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KRigidTransformation::isRigid(&this[316])))
  {
    apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::takeOwnershipToCropBuffer(&this[36], &this[44]);
    apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KPointDescriptorArray::swap(&this[52], &this[184]);
    v12 = 0u;
    v13 = 0u;
    apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KRigidTransformation::projectCrop(&this[316], &this[1], &v12);
    v8 = v12;
    v9 = v13;
    v10 = v14;
    v11 = v15;
    if ((v13 & 0x80000000) != 0 || (DWORD1(v9) & 0x80000000) != 0 || v8 + v13 >= a2->var1)
    {
      apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::~KCropImage(&v8);
    }

    else
    {
      v6 = DWORD1(v8) + DWORD1(v9);
      var2 = a2->var2;
      apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::~KCropImage(&v8);
      if (v6 < var2)
      {
        apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::copyCoordinates(&this[1], &v12);
      }
    }

    apple::vision::libraries::facecore::processing::tracking::KeypointTracker::updateTrackedFaceCoordinates(this, &this[316], a3);
    apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::~KCropImage(&v12);
  }

  else
  {
    this[27].i32[0] = 0;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  apple::vision::libraries::facecore::processing::tracking::keypointtracker::MatchingModule::~MatchingModule(v18);
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::~KCropImage(v21);
}

void sub_23B1D07DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::~KCropImage(&a17);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  apple::vision::libraries::facecore::processing::tracking::keypointtracker::MatchingModule::~MatchingModule(&a29);
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage::~KCropImage((v29 - 112));
  _Unwind_Resume(a1);
}

int32x2_t apple::vision::libraries::facecore::processing::tracking::KeypointTracker::updateTrackedFaceCoordinates(apple::vision::libraries::facecore::processing::tracking::KeypointTracker *this, apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KRigidTransformation *a2, int32x2_t *a3)
{
  v5 = vcvtd_n_f64_s32(a3->i32[0], 1uLL);
  *(this + 54) = 1;
  *(this + 18) = v5;
  *(this + 100) = vadd_s32(a3[2], vdup_n_s32(v5));
  v6 = vcvt_f32_s32(*(this + 76));
  v10 = vcvt_f32_s32(*(this + 84));
  v11 = v6;
  v9 = vcvt_f32_s32(*(this + 92));
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KRigidTransformation::projectPoint(a2, &v11, &v11);
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KRigidTransformation::projectPoint(a2, &v10, &v10);
  apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KRigidTransformation::projectPoint(a2, &v9, &v9);
  v7.i64[0] = v11;
  *&v7.u32[2] = v10;
  *(this + 76) = vcvtq_s32_f32(v7);
  result = vcvt_s32_f32(v9);
  *(this + 92) = result;
  return result;
}

void apple::vision::libraries::facecore::mod::smileandblink::SmileDetector::detectSmile(apple::vision::libraries::facecore::mod::smileandblink::SmileDetector *this, image *a2, apple::vision::libraries::facecore::Face *a3)
{
  var1 = a2->var1;
  var0 = a2[1].var0;
  v5 = __OFSUB__(var0, var1);
  v6 = var0 - var1;
  v7 = v6;
  v8 = -v6;
  if (v6 < 0 == v5)
  {
    v8 = v6;
  }

  if (v8 > 0.0)
  {
    v9 = HIDWORD(a2->var0) - a2->var2;
    if (v9 < 0)
    {
      v9 = a2->var2 - HIDWORD(a2->var0);
    }

    atanf(v7 / v9);
  }

  operator new();
}

double apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KRigidTransformation::KRigidTransformation(apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KRigidTransformation *this)
{
  *&result = 1065353216;
  *this = xmmword_23B2C7750;
  *(this + 2) = 0;
  *(this + 3) = 0xBF80000000000000;
  return result;
}

float apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KRigidTransformation::projectPoint(float *a1, float *a2, float *a3)
{
  v3 = a2[1];
  *a3 = a1[4] + ((a1[1] * v3) + (*a1 * *a2));
  result = a1[5] + ((v3 * a1[3]) + (a1[2] * *a2));
  a3[1] = result;
  return result;
}

float apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KRigidTransformation::projectPointReverse(float *a1, float *a2, float *a3)
{
  v3 = a1[2];
  v4 = *a2 - a1[4];
  v5 = sqrtf((v3 * v3) + (*a1 * *a1));
  v6 = *a1 / v5;
  v7 = v3 / v5;
  v8 = a2[1] - a1[5];
  v9 = ((v7 * v8) + (v6 * v4)) / v5;
  result = ((v6 * v8) - (v7 * v4)) / v5;
  *a3 = v9;
  a3[1] = result;
  return result;
}

int32x2_t apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KRigidTransformation::projectCrop(apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KRigidTransformation *this, apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage *a2, apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KCropImage *a3)
{
  v6 = *(a2 + 4);
  v7 = *(a2 + 5);
  v8 = v6;
  v9 = (*a2 + v6);
  v10 = *(a2 + 1) + v7;
  v11 = *(this + 1);
  v12 = v11 * v7;
  v13 = v12 + (*this * v8);
  v3.i32[0] = *(this + 2);
  v14 = *(this + 3);
  v15 = v14 * v7;
  v4.i32[0] = *(this + 4);
  v16 = *(this + 5);
  v17 = v12 + (*this * v9);
  v18 = v11 * v10;
  v19 = v18 + (*this * v9);
  v20 = v14 * v10;
  v21 = v18 + (*this * v8);
  v22.f32[0] = v4.f32[0] + v13;
  v23 = v16 + (v15 + (v3.f32[0] * (v4.f32[0] + v13)));
  v24.f32[0] = v4.f32[0] + v17;
  v25 = v16 + (v15 + (v3.f32[0] * (v4.f32[0] + v17)));
  v26.f32[0] = v4.f32[0] + v19;
  v27 = v16 + (v20 + (v3.f32[0] * (v4.f32[0] + v19)));
  v28.f32[0] = v4.f32[0] + v21;
  v29 = v16 + (v20 + (v3.f32[0] * (v4.f32[0] + v21)));
  v30.f32[0] = v24.f32[0] - v28.f32[0];
  *v5.i32 = ((v22.f32[0] - v26.f32[0]) * (v25 - v29)) - ((v23 - v27) * (v24.f32[0] - v28.f32[0]));
  v31 = (v24.f32[0] * v29) - (v25 * v28.f32[0]);
  v32.f32[0] = -((v22.f32[0] - v26.f32[0]) * v31);
  v30.f32[1] = v25 - v29;
  v32.f32[1] = -((v23 - v27) * v31);
  v33 = vdiv_f32(vmla_n_f32(v32, v30, (v22.f32[0] * v27) - (v23 * v26.f32[0])), vdup_lane_s32(v5, 0));
  v3.f32[0] = sqrtf(((v23 - v27) * (v23 - v27)) + ((v22.f32[0] - v26.f32[0]) * (v22.f32[0] - v26.f32[0])));
  v4.f32[0] = sqrtf(((v25 - v29) * (v25 - v29)) + (v30.f32[0] * v30.f32[0]));
  v30.f32[0] = (v3.f32[0] + v4.f32[0]) * 0.25;
  v3.f32[0] = v30.f32[0] / v3.f32[0];
  v4.f32[0] = v30.f32[0] / v4.f32[0];
  v26.f32[1] = v27;
  v22.f32[1] = v23;
  v34 = vsub_f32(v26, v22);
  v35 = vmls_lane_f32(v33, v34, v3, 0);
  v28.f32[1] = v29;
  v24.f32[1] = v25;
  v36 = vsub_f32(v28, v24);
  v37 = vmls_lane_f32(v33, v36, v4, 0);
  v38 = vmla_n_f32(v33, v34, v3.f32[0]);
  v39 = vmla_n_f32(v33, v36, v4.f32[0]);
  __asm { FMOV            V3.2D, #0.5 }

  v45 = vaddq_f64(vcvtq_f64_f32(v35), _Q3);
  v46 = vaddq_f64(vcvtq_f64_f32(v37), _Q3);
  v47 = vbslq_s8(vcgtq_f64(v46, v45), v45, v46);
  v48 = vaddq_f64(vcvtq_f64_f32(v38), _Q3);
  v49 = vaddq_f64(vcvtq_f64_f32(v39), _Q3);
  v50 = vbslq_s8(vcgtq_f64(v49, v48), v48, v49);
  *&v47.f64[0] = vmovn_s64(vcvtq_s64_f64(vbslq_s8(vcgtq_f64(v50, v47), v47, v50)));
  *(a3 + 2) = *&v47.f64[0];
  v51 = vbslq_s8(vcgeq_f64(v45, v46), v45, v46);
  v52 = vbslq_s8(vcgeq_f64(v48, v49), v48, v49);
  v53.i64[0] = SLODWORD(v47.f64[0]);
  v53.i64[1] = SHIDWORD(v47.f64[0]);
  result = vmovn_s64(vcvtq_s64_f64(vsubq_f64(vbslq_s8(vcgeq_f64(v51, v52), v51, v52), vcvtq_f64_s64(v53))));
  *a3 = result;
  return result;
}

BOOL apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KRigidTransformation::isRigid(apple::vision::libraries::facecore::processing::tracking::keypointtracker::datastructures::KRigidTransformation *this)
{
  result = 0;
  v3 = *this;
  v4 = *(this + 2);
  v5 = ((v4 * v4) + (v3 * v3));
  if (v5 < 1.1 && v5 > 0.9)
  {
    result = 0;
    v6 = *(this + 1);
    v7 = *(this + 3);
    v8 = ((v7 * v7) + (v6 * v6));
    if (v8 < 1.1 && v8 > 0.9)
    {
      return fabsf((v4 * v7) + (v6 * v3)) < 0.1;
    }
  }

  return result;
}

void apple::vision::libraries::facecore::mod::keypoints::EyesAndMouth::EyesAndMouth(apple::vision::libraries::facecore::mod::keypoints::EyesAndMouth *this)
{
  global_queue = dispatch_get_global_queue(2, 0);
  *(this + 2) = &apple::vision::libraries::facecore::mod::keypoints::firstEyePosPcaMean;
  queue = global_queue;
  *(this + 3) = &apple::vision::libraries::facecore::mod::keypoints::firstEyePosPcaModes;
  *(this + 4) = &apple::vision::libraries::facecore::mod::keypoints::firstEyePosInvVar;
  *(this + 5) = &apple::vision::libraries::facecore::mod::keypoints::firstEyeNegPcaMean;
  *(this + 6) = &apple::vision::libraries::facecore::mod::keypoints::firstEyeNegPcaModes;
  *(this + 7) = &apple::vision::libraries::facecore::mod::keypoints::firstEyeNegInvVar;
  v3 = apple::vision::libraries::facecore::mod::keypoints::firstEyeSamplingStep;
  v4 = apple::vision::libraries::facecore::mod::keypoints::firstEyePatchWidth;
  *(this + 18) = apple::vision::libraries::facecore::mod::keypoints::firstEyePatchHeight;
  *(this + 19) = v3;
  *(this + 16) = apple::vision::libraries::facecore::mod::keypoints::firstEyePosPcaDim;
  *(this + 17) = v4;
  *(this + 10) = apple::vision::libraries::facecore::mod::keypoints::firstEyeCenter;
  *(this + 11) = &apple::vision::libraries::facecore::mod::keypoints::secondEyePosPcaMean;
  *(this + 12) = &apple::vision::libraries::facecore::mod::keypoints::secondEyePosPcaModes;
  *(this + 13) = &apple::vision::libraries::facecore::mod::keypoints::secondEyePosInvVar;
  *(this + 14) = &apple::vision::libraries::facecore::mod::keypoints::secondEyeNegPcaMean;
  *(this + 15) = &apple::vision::libraries::facecore::mod::keypoints::secondEyeNegPcaModes;
  *(this + 16) = &apple::vision::libraries::facecore::mod::keypoints::secondEyeNegInvVar;
  v5 = apple::vision::libraries::facecore::mod::keypoints::secondEyeSamplingStep;
  v6 = apple::vision::libraries::facecore::mod::keypoints::secondEyePatchWidth;
  *(this + 36) = apple::vision::libraries::facecore::mod::keypoints::secondEyePatchHeight;
  *(this + 37) = v5;
  *(this + 34) = apple::vision::libraries::facecore::mod::keypoints::secondEyePosPcaDim;
  *(this + 35) = v6;
  *(this + 19) = apple::vision::libraries::facecore::mod::keypoints::secondEyeCenter;
  operator new();
}

void apple::vision::libraries::facecore::mod::keypoints::EyesAndMouth::~EyesAndMouth(apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8 **this)
{
  v2 = *this;
  if (v2)
  {
    apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8::~KeypointLocalization_U8(v2);
    MEMORY[0x23EE98360]();
  }

  v3 = this[1];
  if (v3)
  {
    apple::vision::libraries::facecore::mod::keypoints::KeypointLocalization_U8::~KeypointLocalization_U8(v3);
    MEMORY[0x23EE98360]();
  }
}

void sub_23B22432C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::processing::extraction::FaceprintExtractor::~FaceprintExtractor(apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination **this)
{
  v1 = *this;
  if (v1)
  {
    apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::~FeatureCombination(v1);
    MEMORY[0x23EE98360]();
  }
}

void apple::vision::libraries::facecore::processing::extraction::FaceprintExtractor::ExtractFaceprint(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *(a7 + 72) = 0;
  *(a7 + 80) = 0;
  *(a7 + 88) = 0;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = 0u;
  v13 = *a1;
  apple::vision::libraries::facecore::FaceInternal::FaceInternal(v15, a5);
  apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::extractFaceprint(v13, a2, a3, a4, v15, *(a1 + 8), (a7 + 56), a6, &v16);
  v14 = *a7;
  if (*a7)
  {
    *(a7 + 8) = v14;
    operator delete(v14);
  }

  *a7 = v16;
  *(a7 + 16) = v17;
  v17 = 0;
  v16 = 0uLL;
  apple::vision::libraries::facecore::Face::~Face(v15);
  *(a7 + 48) = 0x4018000000000000;
}

void sub_23B2245AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  apple::vision::libraries::facecore::Face::~Face(va);
  apple::vision::libraries::facecore::processing::extraction::Faceprint::~Faceprint(v2);
  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::processing::extraction::FaceprintExtractor::GetShapeVertices(apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination **this@<X0>, void *a2@<X8>)
{
  AamObject = apple::vision::libraries::facecore::mod::facerecognition::FeatureCombination::getAamObject(*this);
  if (AamObject)
  {

    apple::vision::libraries::facecore::mod::aam::AamFeature::GetShapeVertices(AamObject, a2);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void sub_23B24C394(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);

  _Unwind_Resume(a1);
}

void sub_23B24C42C(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);

  _Unwind_Resume(a1);
}

void apple::vision::libraries::facecore::mod::aam::AamSearch::AamSearch()
{
  OUTLINED_FUNCTION_3();
  do
  {
    OUTLINED_FUNCTION_0();
    do
    {
      free(*(v0 + v1));
      OUTLINED_FUNCTION_2();
    }

    while (!v2);
    OUTLINED_FUNCTION_1();
  }

  while (!v2);
}

{
  OUTLINED_FUNCTION_3();
  do
  {
    OUTLINED_FUNCTION_0();
    do
    {
      free(*(v0 + v1));
      OUTLINED_FUNCTION_2();
    }

    while (!v2);
    OUTLINED_FUNCTION_1();
  }

  while (!v2);
}

{
  OUTLINED_FUNCTION_3();
  do
  {
    OUTLINED_FUNCTION_0();
    do
    {
      free(*(v0 + v1));
      OUTLINED_FUNCTION_2();
    }

    while (!v2);
    OUTLINED_FUNCTION_1();
  }

  while (!v2);
}

{
  OUTLINED_FUNCTION_3();
  do
  {
    OUTLINED_FUNCTION_0();
    do
    {
      free(*(v0 + v1));
      OUTLINED_FUNCTION_2();
    }

    while (!v2);
    OUTLINED_FUNCTION_1();
  }

  while (!v2);
}

void apple::vision::libraries::facecore::mod::aam::AamSearch::AamSearch(uint64_t a1)
{
  for (i = 0; i != 72; i += 8)
  {
    free(*(a1 + i));
  }
}

void apple::vision::libraries::facecore::mod::aam::AamSearch::DoSearch(void *a1, uint64_t a2, _BYTE *a3)
{
  v4 = __cxa_begin_catch(a1);
  if (*a3 == 1)
  {
    v5 = (*(*v4 + 16))(v4);
    printf("! (%s)", v5);
  }

  __cxa_end_catch();
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x2821F7478](this, a2);
}

{
  return MEMORY[0x2821F7490](this, a2);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x2821F7830]();
}

{
  return MEMORY[0x2821F7840]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}