uint64_t amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::left(void *a1, int a2)
{
  if (a2 < 0 || ((a1[1] - *a1) >> 3) <= a2)
  {
    amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::left();
  }

  return (2 * a2) | 1u;
}

uint64_t amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::right(void *a1, int a2)
{
  if (a2 < 0 || ((a1[1] - *a1) >> 3) <= a2)
  {
    amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::right();
  }

  return (2 * a2 + 2);
}

void *amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::upheap(void *result, int a2)
{
  v2 = (result[1] - *result) >> 3;
  if (v2)
  {
    if (a2 < 0 || v2 <= a2)
    {
      amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::upheap();
    }

    v4 = result;
    v5 = *(*result + 8 * a2);
    result = amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::parent(result, a2);
    if (a2)
    {
      v6 = a2;
      while (1)
      {
        v7 = *(*v4 + 8 * result);
        if (*v5 <= *v7)
        {
          break;
        }

        v8 = result;
        *(*v4 + 8 * v6) = v7;
        *(v7 + 40) = v6;
        result = amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::parent(v4, result);
        v6 = v8;
        if (v8 <= 0)
        {
          goto LABEL_10;
        }
      }

      v8 = v6;
LABEL_10:
      if (v8 != a2)
      {
        *(*v4 + 8 * v8) = v5;
        *(v5 + 40) = v8;
      }
    }
  }

  return result;
}

uint64_t amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::parent(void *a1, int a2)
{
  if (a2 < 0 || ((a1[1] - *a1) >> 3) <= a2)
  {
    amt::MutablePriorityHeap<amt::TriangleMeshDecimatorImpl::DEdge>::parent();
  }

  return ((a2 - 1) / 2);
}

void amt::TriangleMeshDecimatorImpl::~TriangleMeshDecimatorImpl(amt::TriangleMeshDecimatorImpl *this)
{
  std::__function::__value_func<BOOL ()(float)>::~__value_func[abi:ne200100](this + 440);
  amt::Adjacency<int>::~Adjacency(this + 368);
  v2 = *(this + 43);
  if (v2)
  {
    *(this + 44) = v2;
    operator delete(v2);
  }

  amt::TriangleMesh::~TriangleMesh(this + 16);
  v3 = *(this + 13);
  if (v3)
  {
    *(this + 14) = v3;
    operator delete(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    *(this + 11) = v4;
    operator delete(v4);
  }

  v5 = (this + 56);
  std::vector<amt::TriangleMeshDecimatorImpl::DTriangle>::__destroy_vector::operator()[abi:ne200100](&v5);
  v5 = (this + 32);
  std::vector<amt::TriangleMeshDecimatorImpl::DVertex>::__destroy_vector::operator()[abi:ne200100](&v5);
}

uint64_t std::__function::__value_func<BOOL ()(float)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

__CFDictionary *amt::AMTPipelineOptions::createOptionsInfo(amt::AMTPipelineOptions *this, const __CFAllocator *a2)
{
  Mutable = CFDictionaryCreateMutable(this, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  PreprocessingOptionsInfo = amt::AMTPipelineOptions::createPreprocessingOptionsInfo(this, v4);
  value = amt::AMTPipelineOptions::createSimplificationOptionsInfo(this, v5);
  ParameterizationOptionsInfo = amt::AMTPipelineOptions::createParameterizationOptionsInfo(this, v6);
  FittingOptionsInfo = amt::AMTPipelineOptions::createFittingOptionsInfo(this, v7);
  DisplacementOptionsInfo = amt::AMTPipelineOptions::createDisplacementOptionsInfo(this, v8);
  AttributeMapTransferOptionsInfo = amt::AMTPipelineOptions::createAttributeMapTransferOptionsInfo(this, v9);
  CFDictionaryAddValue(Mutable, @"option_group.preprocessing", PreprocessingOptionsInfo);
  CFDictionaryAddValue(Mutable, @"option_group.simplification", value);
  CFDictionaryAddValue(Mutable, @"option_group.parameterization", ParameterizationOptionsInfo);
  CFDictionaryAddValue(Mutable, @"option_group.fitting", FittingOptionsInfo);
  CFDictionaryAddValue(Mutable, @"option_group.displacement", DisplacementOptionsInfo);
  CFDictionaryAddValue(Mutable, @"option_group.attribute_map_transfer", AttributeMapTransferOptionsInfo);
  amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(&AttributeMapTransferOptionsInfo);
  amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(&DisplacementOptionsInfo);
  amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(&FittingOptionsInfo);
  amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(&ParameterizationOptionsInfo);
  amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(&value);
  amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(&PreprocessingOptionsInfo);
  return Mutable;
}

void sub_23E780180(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v8 = va_arg(va3, const void *);
  amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(va);
  amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(va1);
  amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(va2);
  amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(va3);
  amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper((v2 - 24));
  _Unwind_Resume(a1);
}

CFMutableDictionaryRef amt::AMTPipelineOptions::createPreprocessingOptionsInfo(amt::AMTPipelineOptions *this, const __CFAllocator *a2)
{
  Mutable = CFDictionaryCreateMutable(this, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  amt::addBoolParameterInfo(this, Mutable, @"option.normalize", @"enable input normalization ", 1);
  amt::addBoolParameterInfo(this, Mutable, @"option.remove_degenerated_triangles", @"enable degenerated triangles removal", 1);
  amt::addBoolParameterInfo(this, Mutable, @"option.remove_duplicated_triangles", @"enable duplicated triangles removal", 1);
  amt::addFloatParameterInfo(this, Mutable, @"option.merge_close_points_distance", @"minimum distance to merge two points", v4, 0.0001, 0.0, 1.79769313e308);
  return Mutable;
}

CFMutableDictionaryRef amt::AMTPipelineOptions::createSimplificationOptionsInfo(amt::AMTPipelineOptions *this, const __CFAllocator *a2)
{
  Mutable = CFDictionaryCreateMutable(this, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  amt::addFloatParameterInfo(this, Mutable, @"option.target_triangle_ratio", @"target triangle ratio", v4, 0.03, 0.0, 1.0);
  amt::addFloatParameterInfo(this, Mutable, @"option.triangle_flip_threshold", @"triangle flip threshold", v5, 0.3, -1.0, 1.0);
  amt::addFloatParameterInfo(this, Mutable, @"option.tracked_triangle_flip_threshold", @"tracked triangle flip threshold", v6, 0.1, -1.0, 1.0);
  amt::addFloatParameterInfo(this, Mutable, @"option.tracked_point_normal_flip_threshold", @"tracked point normal flip threshold", v7, 0.5, -1.0, 1.0);
  amt::addFloatParameterInfo(this, Mutable, @"option.triangle_flip_penalty", @"triangle flip penalty", v8, 10000000.0, 0.0, 10000000.0);
  amt::addFloatParameterInfo(this, Mutable, @"option.boundary_weight", @"boundary weight", v9, 10000000.0, 0.0, 10000000.0);
  amt::addFloatParameterInfo(this, Mutable, @"option.angle_quality_threshold", @"angle quality threshold", v10, 1.0, 0.0, 10000000.0);
  amt::addFloatParameterInfo(this, Mutable, @"option.max_error", @"max error", v11, 1.0, 0.0, 10000000.0);
  amt::addIntParameterInfo(this, Mutable, @"option.vertex_placement_strategy", @"vertex placement", 2, 0, 2);
  amt::addIntParameterInfo(this, Mutable, @"option.minimum_connected_component_triangle_count", @"minimum triangle count per connected component", 0, 0, 0x7FFFFFFFLL);
  amt::addBoolParameterInfo(this, Mutable, @"option.kAMTOptionPreserveTrackedTriangleNormalsOrientation", @"preserve tracked triangle normals orientation", 1);
  amt::addBoolParameterInfo(this, Mutable, @"option.use_area_weighted_quadratics", @"use area weighted quadratics", 1);
  return Mutable;
}

CFMutableDictionaryRef amt::AMTPipelineOptions::createParameterizationOptionsInfo(amt::AMTPipelineOptions *this, const __CFAllocator *a2)
{
  Mutable = CFDictionaryCreateMutable(this, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  amt::addFloatParameterInfo(this, Mutable, @"option.maximum_stretch_ratio", @"maximum stretch ratio", v4, 0.166669995, 0.0, 1.0);
  amt::addFloatParameterInfo(this, Mutable, @"option.texture_gutter", @"minimum space between patches in pixels", v5, 16.0, 0.0, 256.0);
  amt::addIntParameterInfo(this, Mutable, @"option.target_number_of_charts", @"target number of charts", 0xA, 1, 0x7FFFFFFFLL);
  amt::addIntParameterInfo(this, Mutable, @"option.texture_resolution", @"texture resolution", 0x1000, 1, 0x7FFFFFFFLL);
  amt::addIntParameterInfo(this, Mutable, @"option.optimize_boundary_if_face_number_less_than", @"threshold for enabling boundary optimization", 0x186A0, 1, 0x7FFFFFFFLL);
  amt::addIntParameterInfo(this, Mutable, @"option.number_of_textures", @"number of textures", 1, 1, 1);
  amt::addBoolParameterInfo(this, Mutable, @"option.enable_parallel_processing", @"enable parallel processing", 1);
  amt::addBoolParameterInfo(this, Mutable, @"option.", @"skip initial stretch optimization", 0);
  amt::addBoolParameterInfo(this, Mutable, @"option.repair_uv_self_intersection", @"repair UV self intersection", 0);
  return Mutable;
}

CFMutableDictionaryRef amt::AMTPipelineOptions::createFittingOptionsInfo(amt::AMTPipelineOptions *this, const __CFAllocator *a2)
{
  Mutable = CFDictionaryCreateMutable(this, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  amt::addIntParameterInfo(this, Mutable, @"option.sampling_subdivision_iteration_count", @"sampling subdivision iteration count", 3, 1, 3);
  amt::addIntParameterInfo(this, Mutable, @"option.subdivision_iteration_count", @"subdivision iteration count", 3, 1, 10);
  amt::addIntParameterInfo(this, Mutable, @"option.fitting_iteration_count", @"fitting iteration count", 0x10, 0, 32);
  amt::addIntParameterInfo(this, Mutable, @"option.missed_vertices_smoothing_iteration_count", @"missed vertices smoothing iteration count", 0xA, 0, 32);
  amt::addIntParameterInfo(this, Mutable, @"option.initial_deform_nearest_neighbor_count", @"initial deform nearest neighbor count", 1, 0, 32);
  amt::addIntParameterInfo(this, Mutable, @"option.smoothing_method", @"smoothing method", 1, 0, 2);
  amt::addFloatParameterInfo(this, Mutable, @"option.smoothing_coeffcient", @"smoothing coeffcient", v4, 0.25, 0.0, 1.0);
  amt::addFloatParameterInfo(this, Mutable, @"option.smoothing_coeffcient_decay_ratio", @"smoothing coeffcient decay ratio", v5, 0.75, 0.0, 1.0);
  amt::addFloatParameterInfo(this, Mutable, @"option.missed_vertices_smoothing_coeffcient", @"missed vertices smoothing coeffcient", v6, 0.1, 0.0, 1.0);
  amt::addFloatParameterInfo(this, Mutable, @"option.triangle_normal_flip_threshold", @"triangle normal flip threshold", v7, -0.5, -1.0, 1.0);
  amt::addFloatParameterInfo(this, Mutable, @"option.normal_deviation_threshold", @"normal deviation threshold", v8, 0.1, -1.0, 1.0);
  amt::addBoolParameterInfo(this, Mutable, @"option.optimize_base_mesh_geometry", @"optimize base mesh geometry", 1);
  amt::addBoolParameterInfo(this, Mutable, @"option.force_normal_displacement", @"force normal displacement", 0);
  amt::addBoolParameterInfo(this, Mutable, @"option.apply_smoothing_deformation", @"apply smoothing deformation", 1);
  amt::addBoolParameterInfo(this, Mutable, @"option.update_normals", @"update normals", 1);
  amt::addBoolParameterInfo(this, Mutable, @"option.use_initial_geometry", @"use initial geometry", 1);
  return Mutable;
}

CFMutableDictionaryRef amt::AMTPipelineOptions::createDisplacementOptionsInfo(amt::AMTPipelineOptions *this, const __CFAllocator *a2)
{
  Mutable = CFDictionaryCreateMutable(this, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  amt::addIntParameterInfo(this, Mutable, @"option.coordinate_system", @"coordinate system", 0, 0, 0);
  return Mutable;
}

CFMutableDictionaryRef amt::AMTPipelineOptions::createAttributeMapTransferOptionsInfo(amt::AMTPipelineOptions *this, const __CFAllocator *a2)
{
  Mutable = CFDictionaryCreateMutable(this, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  amt::addIntParameterInfo(this, Mutable, @"option.attribute_map_resolution", @"attribute map resolution", 0x800, 0, 0x10000);
  amt::addIntParameterInfo(this, Mutable, @"option.sampling_grid_size", @"coordinate system", 0x400, 2, 0x10000);
  amt::addIntParameterInfo(this, Mutable, @"option.padding_dilation_iteration_count", @"coordinate system", 2, 0, 256);
  amt::addBoolParameterInfo(this, Mutable, @"option.enable_normal_map_transfer", @"enable normal map transfer", 1);
  amt::addBoolParameterInfo(this, Mutable, @"option.input_normal_map_world_frame", @"input normal map is in world frame", 0);
  amt::addBoolParameterInfo(this, Mutable, @"option.output_normal_map_world_frame", @"output normal map should be in world frame", 0);
  return Mutable;
}

const void **amt::addBoolParameterInfo(amt *this, void *cf, __CFDictionary *a3, const __CFString *a4, const __CFString *a5)
{
  if (!cf || (v5 = a5, v10 = CFGetTypeID(cf), v10 != CFDictionaryGetTypeID()))
  {
    amt::addBoolParameterInfo();
  }

  theDict = CFDictionaryCreateMutable(this, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(theDict, @"info.name", a3);
  CFDictionaryAddValue(theDict, @"info.description", a4);
  CFDictionaryAddValue(theDict, @"info.data_type", @"info.data_type.BOOL");
  v11 = MEMORY[0x277CBED10];
  if (v5)
  {
    v11 = MEMORY[0x277CBED28];
  }

  CFDictionaryAddValue(theDict, @"info.default", *v11);
  CFDictionaryAddValue(cf, a3, theDict);
  return amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&theDict);
}

void sub_23E780C8C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(va);
  _Unwind_Resume(a1);
}

const void **amt::addFloatParameterInfo(amt *this, void *cf, __CFDictionary *a3, const __CFString *a4, const __CFString *a5, double a6, double a7, double a8)
{
  v19 = a7;
  valuePtr = a6;
  v18 = a8;
  if (!cf || (v12 = CFGetTypeID(cf), v12 != CFDictionaryGetTypeID()))
  {
    amt::addFloatParameterInfo();
  }

  theDict = CFDictionaryCreateMutable(this, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(theDict, @"info.description", a4);
  CFDictionaryAddValue(theDict, @"info.data_type", @"info.data_type.float");
  v16 = CFNumberCreate(this, kCFNumberFloat64Type, &valuePtr);
  value = CFNumberCreate(this, kCFNumberFloat64Type, &v19);
  v14 = CFNumberCreate(this, kCFNumberFloat64Type, &v18);
  CFDictionaryAddValue(theDict, @"info.default", v16);
  CFDictionaryAddValue(theDict, @"info.min", value);
  CFDictionaryAddValue(theDict, @"info.max", v14);
  CFDictionaryAddValue(cf, a3, theDict);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v14);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&value);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v16);
  return amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&theDict);
}

void sub_23E780E14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(va);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(va1);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(va2);
  _Unwind_Resume(a1);
}

const void **amt::addIntParameterInfo(amt *this, void *cf, __CFDictionary *a3, const __CFString *a4, const __CFString *a5, uint64_t a6, uint64_t a7)
{
  v18 = a6;
  valuePtr = a5;
  v17 = a7;
  if (!cf || (v11 = CFGetTypeID(cf), v11 != CFDictionaryGetTypeID()))
  {
    amt::addIntParameterInfo();
  }

  theDict = CFDictionaryCreateMutable(this, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  CFDictionaryAddValue(theDict, @"info.description", a4);
  CFDictionaryAddValue(theDict, @"info.data_type", @"info.data_type.integer");
  v15 = CFNumberCreate(this, kCFNumberSInt64Type, &valuePtr);
  value = CFNumberCreate(this, kCFNumberSInt64Type, &v18);
  v13 = CFNumberCreate(this, kCFNumberSInt64Type, &v17);
  CFDictionaryAddValue(theDict, @"info.default", v15);
  CFDictionaryAddValue(theDict, @"info.min", value);
  CFDictionaryAddValue(theDict, @"info.max", v13);
  CFDictionaryAddValue(cf, a3, theDict);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v13);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&value);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(&v15);
  return amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&theDict);
}

void sub_23E780FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(va);
  amt::AMTWrapper<__CFNumber const*>::~AMTWrapper(va1);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(va2);
  _Unwind_Resume(a1);
}

BOOL amt::AMTPipelineOptions::parsePreprocessingParameters(const __CFDictionary *a1, const __CFDictionary *a2, double *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFDictionaryGetTypeID()))
  {
    if (a2 && (v7 = CFGetTypeID(a2), v7 == CFDictionaryGetTypeID()))
    {
      Count = CFDictionaryGetCount(a1);
      std::vector<void const*>::vector[abi:ne200100](keys, Count);
      std::vector<void const*>::vector[abi:ne200100](values, Count);
      CFDictionaryGetKeysAndValues(a1, keys[0], values[0]);
      if (Count < 1)
      {
        v11 = 1;
      }

      else
      {
        v9 = *keys[0];
        if (*keys[0])
        {
          v10 = 0;
          v11 = 0;
          do
          {
            v12 = CFGetTypeID(v9);
            if (v12 != CFStringGetTypeID())
            {
              break;
            }

            Value = CFDictionaryGetValue(a2, v9);
            v14 = Value;
            if (!Value)
            {
              break;
            }

            v15 = CFGetTypeID(Value);
            if (v15 != CFDictionaryGetTypeID())
            {
              break;
            }

            v16 = values[0][v10];
            v17 = CFStringCompare(v9, @"option.normalize", 1uLL);
            v19 = (a3 + 1);
            if (v17 && (v20 = CFStringCompare(v9, @"option.remove_degenerated_triangles", 1uLL), v19 = (a3 + 9), v20) && (v21 = CFStringCompare(v9, @"option.remove_duplicated_triangles", 1uLL), v19 = (a3 + 10), v21))
            {
              if (CFStringCompare(v9, @"option.merge_close_points_distance", 1uLL))
              {
                break;
              }

              v22 = amt::parseFloatParameter<double>(v16, v14, a3);
            }

            else
            {
              v22 = amt::parseBoolParameter(v16, v19, v18);
            }

            if ((v22 & 1) == 0)
            {
              break;
            }

            v11 = v10 + 1 >= Count;
            if (Count - 1 == v10)
            {
              break;
            }

            v9 = keys[0][++v10];
          }

          while (v9);
        }

        else
        {
          v11 = 0;
        }
      }

      if (values[0])
      {
        values[1] = values[0];
        operator delete(values[0]);
      }

      if (keys[0])
      {
        keys[1] = keys[0];
        operator delete(keys[0]);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return v11;
}

void sub_23E78126C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t amt::parseBoolParameter(uint64_t this, const __CFBoolean *a2, BOOL *a3)
{
  if (this)
  {
    v4 = this;
    v5 = CFGetTypeID(this);
    if (v5 == CFBooleanGetTypeID())
    {
      *a2 = CFBooleanGetValue(v4) != 0;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return this;
}

BOOL amt::parseFloatParameter<double>(_BOOL8 result, const __CFDictionary *a2, double *a3)
{
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFNumberGetTypeID() && CFNumberGetType(v5) == kCFNumberFloat64Type && (Value = CFDictionaryGetValue(a2, @"info.min"), v8 = CFDictionaryGetValue(a2, @"info.max"), Value) && (v9 = v8, v10 = CFGetTypeID(Value), v10 == CFNumberGetTypeID()) && (CFNumberGetType(Value) == kCFNumberFloat64Type ? (v11 = v9 == 0) : (v11 = 1), !v11 && (v12 = CFGetTypeID(v9), v12 == CFNumberGetTypeID()) && CFNumberGetType(v9) == kCFNumberFloat64Type))
    {
      v14 = 0.0;
      valuePtr = 0.0;
      v13 = 0.0;
      CFNumberGetValue(v5, kCFNumberFloat64Type, &valuePtr);
      CFNumberGetValue(Value, kCFNumberFloat64Type, &v14);
      CFNumberGetValue(v9, kCFNumberFloat64Type, &v13);
      result = valuePtr <= v13 && valuePtr >= v14;
      if (result)
      {
        *a3 = valuePtr;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL amt::AMTPipelineOptions::parseSimplificationParameters(const __CFDictionary *a1, const __CFDictionary *a2, uint64_t a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFDictionaryGetTypeID()))
  {
    if (a2 && (v7 = CFGetTypeID(a2), v7 == CFDictionaryGetTypeID()))
    {
      Count = CFDictionaryGetCount(a1);
      std::vector<void const*>::vector[abi:ne200100](v35, Count);
      std::vector<void const*>::vector[abi:ne200100](v34, Count);
      CFDictionaryGetKeysAndValues(a1, v35[0], v34[0]);
      if (Count < 1)
      {
        v11 = 1;
      }

      else
      {
        v9 = *v35[0];
        if (*v35[0])
        {
          v10 = 0;
          v11 = 0;
          while (1)
          {
            v12 = CFGetTypeID(v9);
            if (v12 != CFStringGetTypeID())
            {
              break;
            }

            Value = CFDictionaryGetValue(a2, v9);
            v14 = Value;
            if (!Value)
            {
              break;
            }

            v15 = CFGetTypeID(Value);
            if (v15 != CFDictionaryGetTypeID())
            {
              break;
            }

            v16 = *(v34[0] + v10);
            v17 = CFStringCompare(v9, @"option.target_triangle_ratio", 1uLL);
            v18 = a3;
            if (v17 == kCFCompareEqualTo)
            {
              goto LABEL_26;
            }

            v19 = CFStringCompare(v9, @"option.tracked_point_normal_flip_threshold", 1uLL);
            v18 = (a3 + 24);
            if (v19 == kCFCompareEqualTo)
            {
              goto LABEL_26;
            }

            v20 = CFStringCompare(v9, @"option.tracked_triangle_flip_threshold", 1uLL);
            v18 = (a3 + 16);
            if (v20 == kCFCompareEqualTo)
            {
              goto LABEL_26;
            }

            v21 = CFStringCompare(v9, @"option.triangle_flip_threshold", 1uLL);
            v18 = (a3 + 8);
            if (v21 == kCFCompareEqualTo)
            {
              goto LABEL_26;
            }

            v22 = CFStringCompare(v9, @"option.tracked_triangle_flip_threshold", 1uLL);
            v18 = (a3 + 16);
            if (v22 == kCFCompareEqualTo)
            {
              goto LABEL_26;
            }

            v23 = CFStringCompare(v9, @"option.tracked_point_normal_flip_threshold", 1uLL);
            v18 = (a3 + 24);
            if (v23 == kCFCompareEqualTo)
            {
              goto LABEL_26;
            }

            v24 = CFStringCompare(v9, @"option.triangle_flip_penalty", 1uLL);
            v18 = (a3 + 32);
            if (v24 == kCFCompareEqualTo)
            {
              goto LABEL_26;
            }

            v25 = CFStringCompare(v9, @"option.boundary_weight", 1uLL);
            v18 = (a3 + 40);
            if (v25 && (v26 = CFStringCompare(v9, @"option.angle_quality_threshold", 1uLL), v18 = (a3 + 48), v26) && (v27 = CFStringCompare(v9, @"option.max_error", 1uLL), v18 = (a3 + 56), v27))
            {
              if (CFStringCompare(v9, @"option.vertex_placement_strategy", 1uLL))
              {
                if (CFStringCompare(v9, @"option.minimum_connected_component_triangle_count", 1uLL))
                {
                  v28 = CFStringCompare(v9, @"option.kAMTOptionPreserveTrackedTriangleNormalsOrientation", 1uLL);
                  v30 = (a3 + 72);
                  if (v28)
                  {
                    v31 = CFStringCompare(v9, @"option.use_area_weighted_quadratics", 1uLL);
                    v30 = (a3 + 73);
                    if (v31)
                    {
                      break;
                    }
                  }

                  v32 = amt::parseBoolParameter(v16, v30, v29);
                }

                else
                {
                  v32 = amt::parseIntParameter<amt::VertexPlacementStrategy>(v16, v14, (a3 + 68));
                }
              }

              else
              {
                v32 = amt::parseIntParameter<amt::VertexPlacementStrategy>(v16, v14, (a3 + 64));
              }
            }

            else
            {
LABEL_26:
              v32 = amt::parseFloatParameter<double>(v16, v14, v18);
            }

            if (v32)
            {
              v11 = v10 + 1 >= Count;
              if (Count - 1 != v10)
              {
                v9 = *(v35[0] + ++v10);
                if (v9)
                {
                  continue;
                }
              }
            }

            break;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      if (v34[0])
      {
        v34[1] = v34[0];
        operator delete(v34[0]);
      }

      if (v35[0])
      {
        v35[1] = v35[0];
        operator delete(v35[0]);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return v11;
}

void sub_23E781884(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 136);
  if (v3)
  {
    *(v1 - 128) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 112);
  if (v4)
  {
    *(v1 - 104) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

BOOL amt::parseIntParameter<amt::VertexPlacementStrategy>(const void *a1, CFTypeRef cf, _DWORD *a3)
{
  v6 = CFGetTypeID(cf);
  TypeID = CFDictionaryGetTypeID();
  result = 0;
  if (a1 && v6 == TypeID)
  {
    v9 = CFGetTypeID(a1);
    if (v9 != CFNumberGetTypeID())
    {
      return 0;
    }

    if (CFNumberGetType(a1) != kCFNumberSInt64Type)
    {
      return 0;
    }

    Value = CFDictionaryGetValue(cf, @"info.min");
    v11 = CFDictionaryGetValue(cf, @"info.max");
    if (!Value)
    {
      return 0;
    }

    v12 = v11;
    v13 = CFGetTypeID(Value);
    if (v13 != CFNumberGetTypeID())
    {
      return 0;
    }

    Type = CFNumberGetType(Value);
    result = 0;
    if (Type != kCFNumberSInt64Type || !v12)
    {
      return result;
    }

    v15 = CFGetTypeID(v12);
    if (v15 != CFNumberGetTypeID() || CFNumberGetType(v12) != kCFNumberSInt64Type)
    {
      return 0;
    }

    v18 = 0;
    valuePtr = 0;
    v17 = 0;
    CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
    CFNumberGetValue(Value, kCFNumberSInt64Type, &v18);
    CFNumberGetValue(v12, kCFNumberSInt64Type, &v17);
    result = valuePtr >= v18 && valuePtr <= v17;
    if (result)
    {
      *a3 = valuePtr;
    }
  }

  return result;
}

BOOL amt::AMTPipelineOptions::parseParameterizationParameters(const __CFDictionary *a1, const __CFDictionary *a2, uint64_t a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFDictionaryGetTypeID()))
  {
    if (a2 && (v7 = CFGetTypeID(a2), v7 == CFDictionaryGetTypeID()))
    {
      Count = CFDictionaryGetCount(a1);
      std::vector<void const*>::vector[abi:ne200100](v33, Count);
      std::vector<void const*>::vector[abi:ne200100](values, Count);
      CFDictionaryGetKeysAndValues(a1, v33[0], values[0]);
      if (Count < 1)
      {
        v11 = 1;
      }

      else
      {
        v9 = *v33[0];
        if (*v33[0])
        {
          v10 = 0;
          v11 = 0;
          while (1)
          {
            v12 = CFGetTypeID(v9);
            if (v12 != CFStringGetTypeID())
            {
              break;
            }

            Value = CFDictionaryGetValue(a2, v9);
            v14 = Value;
            if (!Value)
            {
              break;
            }

            v15 = CFGetTypeID(Value);
            if (v15 != CFDictionaryGetTypeID())
            {
              break;
            }

            v16 = values[0][v10];
            v17 = CFStringCompare(v9, @"option.maximum_stretch_ratio", 1uLL);
            v18 = a3;
            if (v17 && (v19 = CFStringCompare(v9, @"option.texture_gutter", 1uLL), v18 = (a3 + 4), v19))
            {
              v20 = CFStringCompare(v9, @"option.target_number_of_charts", 1uLL);
              v21 = (a3 + 8);
              if (v20 && (v22 = CFStringCompare(v9, @"option.texture_resolution", 1uLL), v21 = (a3 + 12), v22) && (v23 = CFStringCompare(v9, @"option.optimize_boundary_if_face_number_less_than", 1uLL), v21 = (a3 + 16), v23) && (v24 = CFStringCompare(v9, @"option.number_of_textures", 1uLL), v21 = (a3 + 20), v24))
              {
                v25 = CFStringCompare(v9, @"option.enable_parallel_processing", 1uLL);
                v27 = (a3 + 24);
                if (v25)
                {
                  v28 = CFStringCompare(v9, @"option.", 1uLL);
                  v27 = (a3 + 25);
                  if (v28)
                  {
                    v29 = CFStringCompare(v9, @"option.repair_uv_self_intersection", 1uLL);
                    v27 = (a3 + 26);
                    if (v29)
                    {
                      break;
                    }
                  }
                }

                v30 = amt::parseBoolParameter(v16, v27, v26);
              }

              else
              {
                v30 = amt::parseIntParameter<amt::VertexPlacementStrategy>(v16, v14, v21);
              }
            }

            else
            {
              v30 = amt::parseFloatParameter<float>(v16, v14, v18);
            }

            if (v30)
            {
              v11 = v10 + 1 >= Count;
              if (Count - 1 != v10)
              {
                v9 = *(v33[0] + ++v10);
                if (v9)
                {
                  continue;
                }
              }
            }

            break;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      if (values[0])
      {
        values[1] = values[0];
        operator delete(values[0]);
      }

      if (v33[0])
      {
        v33[1] = v33[0];
        operator delete(v33[0]);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return v11;
}

void sub_23E781D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(exception_object);
}

BOOL amt::parseFloatParameter<float>(_BOOL8 result, const __CFDictionary *a2, float *a3)
{
  if (result)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    if (v6 == CFNumberGetTypeID() && CFNumberGetType(v5) == kCFNumberFloat64Type && (Value = CFDictionaryGetValue(a2, @"info.min"), v8 = CFDictionaryGetValue(a2, @"info.max"), Value) && (v9 = v8, v10 = CFGetTypeID(Value), v10 == CFNumberGetTypeID()) && (CFNumberGetType(Value) == kCFNumberFloat64Type ? (v11 = v9 == 0) : (v11 = 1), !v11 && (v12 = CFGetTypeID(v9), v12 == CFNumberGetTypeID()) && CFNumberGetType(v9) == kCFNumberFloat64Type))
    {
      v15 = 0.0;
      valuePtr = 0.0;
      v14 = 0.0;
      CFNumberGetValue(v5, kCFNumberFloat64Type, &valuePtr);
      CFNumberGetValue(Value, kCFNumberFloat64Type, &v15);
      CFNumberGetValue(v9, kCFNumberFloat64Type, &v14);
      result = valuePtr <= v14 && valuePtr >= v15;
      if (result)
      {
        v13 = valuePtr;
        *a3 = v13;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL amt::AMTPipelineOptions::parseFittingParameters(const __CFDictionary *a1, const __CFDictionary *a2, uint64_t a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFDictionaryGetTypeID()))
  {
    if (a2 && (v7 = CFGetTypeID(a2), v7 == CFDictionaryGetTypeID()))
    {
      Count = CFDictionaryGetCount(a1);
      std::vector<void const*>::vector[abi:ne200100](v40, Count);
      std::vector<void const*>::vector[abi:ne200100](v39, Count);
      CFDictionaryGetKeysAndValues(a1, v40[0], v39[0]);
      if (Count < 1)
      {
        v11 = 1;
      }

      else
      {
        v9 = *v40[0];
        if (*v40[0])
        {
          v10 = 0;
          v11 = 0;
          while (1)
          {
            v12 = CFGetTypeID(v9);
            if (v12 != CFStringGetTypeID())
            {
              break;
            }

            Value = CFDictionaryGetValue(a2, v9);
            v14 = Value;
            if (!Value)
            {
              break;
            }

            v15 = CFGetTypeID(Value);
            if (v15 != CFDictionaryGetTypeID())
            {
              break;
            }

            v16 = *(v39[0] + v10);
            v17 = CFStringCompare(v9, @"option.smoothing_coeffcient", 1uLL);
            v18 = (a3 + 24);
            if (v17 == kCFCompareEqualTo)
            {
              goto LABEL_29;
            }

            v19 = CFStringCompare(v9, @"option.smoothing_coeffcient_decay_ratio", 1uLL);
            v18 = (a3 + 32);
            if (v19 == kCFCompareEqualTo)
            {
              goto LABEL_29;
            }

            v20 = CFStringCompare(v9, @"option.missed_vertices_smoothing_coeffcient", 1uLL);
            v18 = (a3 + 40);
            if (v20 == kCFCompareEqualTo)
            {
              goto LABEL_29;
            }

            v21 = CFStringCompare(v9, @"option.missed_vertices_smoothing_coeffcient", 1uLL);
            v18 = (a3 + 40);
            if (v21 && (v22 = CFStringCompare(v9, @"option.triangle_normal_flip_threshold", 1uLL), v18 = (a3 + 48), v22) && (v23 = CFStringCompare(v9, @"option.normal_deviation_threshold", 1uLL), v18 = (a3 + 56), v23))
            {
              v24 = CFStringCompare(v9, @"option.sampling_subdivision_iteration_count", 1uLL);
              v25 = a3;
              if (v24 == kCFCompareEqualTo)
              {
                goto LABEL_34;
              }

              v26 = CFStringCompare(v9, @"option.subdivision_iteration_count", 1uLL);
              v25 = (a3 + 4);
              if (v26 == kCFCompareEqualTo)
              {
                goto LABEL_34;
              }

              v27 = CFStringCompare(v9, @"option.missed_vertices_smoothing_iteration_count", 1uLL);
              v25 = (a3 + 12);
              if (v27 && (v28 = CFStringCompare(v9, @"option.fitting_iteration_count", 1uLL), v25 = (a3 + 8), v28) && (v29 = CFStringCompare(v9, @"option.initial_deform_nearest_neighbor_count", 1uLL), v25 = (a3 + 16), v29))
              {
                if (CFStringCompare(v9, @"option.smoothing_method", 1uLL))
                {
                  v30 = CFStringCompare(v9, @"option.optimize_base_mesh_geometry", 1uLL);
                  v32 = (a3 + 64);
                  if (v30)
                  {
                    v33 = CFStringCompare(v9, @"option.force_normal_displacement", 1uLL);
                    v32 = (a3 + 65);
                    if (v33)
                    {
                      v34 = CFStringCompare(v9, @"option.apply_smoothing_deformation", 1uLL);
                      v32 = (a3 + 66);
                      if (v34)
                      {
                        v35 = CFStringCompare(v9, @"option.update_normals", 1uLL);
                        v32 = (a3 + 67);
                        if (v35)
                        {
                          v36 = CFStringCompare(v9, @"option.use_initial_geometry", 1uLL);
                          v32 = (a3 + 68);
                          if (v36)
                          {
                            break;
                          }
                        }
                      }
                    }
                  }

                  v37 = amt::parseBoolParameter(v16, v32, v31);
                }

                else
                {
                  v37 = amt::parseIntParameter<amt::VertexPlacementStrategy>(v16, v14, (a3 + 20));
                }
              }

              else
              {
LABEL_34:
                v37 = amt::parseIntParameter<amt::VertexPlacementStrategy>(v16, v14, v25);
              }
            }

            else
            {
LABEL_29:
              v37 = amt::parseFloatParameter<double>(v16, v14, v18);
            }

            if (v37)
            {
              v11 = v10 + 1 >= Count;
              if (Count - 1 != v10)
              {
                v9 = *(v40[0] + ++v10);
                if (v9)
                {
                  continue;
                }
              }
            }

            break;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      if (v39[0])
      {
        v39[1] = v39[0];
        operator delete(v39[0]);
      }

      if (v40[0])
      {
        v40[1] = v40[0];
        operator delete(v40[0]);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return v11;
}

void sub_23E7823F4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 136);
  if (v3)
  {
    *(v1 - 128) = v3;
    operator delete(v3);
  }

  v4 = *(v1 - 112);
  if (v4)
  {
    *(v1 - 104) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

BOOL amt::AMTPipelineOptions::parseDisplacementParameters(const __CFDictionary *a1, const __CFDictionary *a2, _DWORD *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFDictionaryGetTypeID()))
  {
    if (a2 && (v7 = CFGetTypeID(a2), v7 == CFDictionaryGetTypeID()))
    {
      Count = CFDictionaryGetCount(a1);
      std::vector<void const*>::vector[abi:ne200100](keys, Count);
      std::vector<void const*>::vector[abi:ne200100](values, Count);
      CFDictionaryGetKeysAndValues(a1, keys[0], values[0]);
      if (Count < 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = 0;
        for (i = 0; i != Count; v9 = i >= Count)
        {
          v11 = keys[0][i];
          if (!v11)
          {
            break;
          }

          v12 = CFGetTypeID(keys[0][i]);
          if (v12 != CFStringGetTypeID())
          {
            break;
          }

          Value = CFDictionaryGetValue(a2, v11);
          v14 = Value;
          if (!Value)
          {
            break;
          }

          v15 = CFGetTypeID(Value);
          if (v15 != CFDictionaryGetTypeID())
          {
            break;
          }

          v16 = values[0][i];
          if (CFStringCompare(v11, @"option.coordinate_system", 1uLL))
          {
            break;
          }

          v17 = CFGetTypeID(v14);
          TypeID = CFDictionaryGetTypeID();
          if (!v16)
          {
            break;
          }

          if (v17 != TypeID)
          {
            break;
          }

          v19 = CFGetTypeID(v16);
          if (v19 != CFNumberGetTypeID())
          {
            break;
          }

          if (CFNumberGetType(v16) != kCFNumberSInt64Type)
          {
            break;
          }

          v20 = CFDictionaryGetValue(v14, @"info.min");
          v21 = CFDictionaryGetValue(v14, @"info.max");
          if (!v20)
          {
            break;
          }

          v22 = v21;
          v23 = CFGetTypeID(v20);
          if (v23 != CFNumberGetTypeID())
          {
            break;
          }

          if (CFNumberGetType(v20) != kCFNumberSInt64Type)
          {
            break;
          }

          if (!v22)
          {
            break;
          }

          v24 = CFGetTypeID(v22);
          if (v24 != CFNumberGetTypeID())
          {
            break;
          }

          if (CFNumberGetType(v22) != kCFNumberSInt64Type)
          {
            break;
          }

          v29 = 0;
          valuePtr = 0;
          v28 = 0;
          CFNumberGetValue(v16, kCFNumberSInt64Type, &valuePtr);
          CFNumberGetValue(v20, kCFNumberSInt64Type, &v29);
          CFNumberGetValue(v22, kCFNumberSInt64Type, &v28);
          if (valuePtr < v29)
          {
            break;
          }

          if (valuePtr > v28)
          {
            break;
          }

          *a3 = valuePtr;
          ++i;
        }
      }

      if (values[0])
      {
        values[1] = values[0];
        operator delete(values[0]);
      }

      if (keys[0])
      {
        keys[1] = keys[0];
        operator delete(keys[0]);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return v9;
}

void sub_23E7826F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

BOOL amt::AMTPipelineOptions::parse(const void *a1, const __CFDictionary *a2, uint64_t a3)
{
  if (!a1)
  {
    return 1;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFDictionaryGetTypeID())
  {
    return 1;
  }

  if (!a2)
  {
    v7 = CFGetTypeID(0);
    if (v7 != CFDictionaryGetTypeID())
    {
      amt::AMTPipelineOptions::parse();
    }
  }

  Value = CFDictionaryGetValue(a2, @"option_group.preprocessing");
  v9 = CFDictionaryGetValue(a2, @"option_group.simplification");
  v18 = CFDictionaryGetValue(a2, @"option_group.parameterization");
  v16 = CFDictionaryGetValue(a2, @"option_group.displacement");
  v10 = CFDictionaryGetValue(a1, @"option_group.preprocessing");
  v11 = CFDictionaryGetValue(a1, @"option_group.simplification");
  v12 = CFDictionaryGetValue(a1, @"option_group.parameterization");
  v17 = CFDictionaryGetValue(a1, @"option_group.fitting");
  v13 = CFDictionaryGetValue(a2, @"option_group.fitting");
  v14 = CFDictionaryGetValue(a1, @"option_group.displacement");
  result = amt::AMTPipelineOptions::parsePreprocessingParameters(v10, Value, a3);
  if (result)
  {
    result = amt::AMTPipelineOptions::parseSimplificationParameters(v11, v9, a3 + 16);
    if (result)
    {
      result = amt::AMTPipelineOptions::parseParameterizationParameters(v12, v18, a3 + 96);
      if (result)
      {
        result = amt::AMTPipelineOptions::parseFittingParameters(v17, v13, a3 + 128);
        if (result)
        {

          return amt::AMTPipelineOptions::parseDisplacementParameters(v14, v16, (a3 + 200));
        }
      }
    }
  }

  return result;
}

BOOL amt::AMTPipelineOptions::parseAttributeMapTransferParameters(const __CFDictionary *a1, const __CFDictionary *a2, _DWORD *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFDictionaryGetTypeID()))
  {
    if (a2 && (v7 = CFGetTypeID(a2), v7 == CFDictionaryGetTypeID()))
    {
      Count = CFDictionaryGetCount(a1);
      std::vector<void const*>::vector[abi:ne200100](keys, Count);
      std::vector<void const*>::vector[abi:ne200100](values, Count);
      CFDictionaryGetKeysAndValues(a1, keys[0], values[0]);
      if (Count < 1)
      {
        v11 = 1;
      }

      else
      {
        v9 = *keys[0];
        if (*keys[0])
        {
          v10 = 0;
          v11 = 0;
          while (1)
          {
            v12 = CFGetTypeID(v9);
            if (v12 != CFStringGetTypeID())
            {
              break;
            }

            Value = CFDictionaryGetValue(a2, v9);
            v14 = Value;
            if (!Value)
            {
              break;
            }

            v15 = CFGetTypeID(Value);
            if (v15 != CFDictionaryGetTypeID())
            {
              break;
            }

            v16 = values[0][v10];
            v17 = CFStringCompare(v9, @"option.attribute_map_resolution", 1uLL);
            v18 = a3;
            if (v17 && (v19 = CFStringCompare(v9, @"option.sampling_grid_size", 1uLL), v18 = a3 + 1, v19) && (v20 = CFStringCompare(v9, @"option.padding_dilation_iteration_count", 1uLL), v18 = a3 + 2, v20))
            {
              v21 = CFStringCompare(v9, @"option.enable_normal_map_transfer", 1uLL);
              v23 = (a3 + 3);
              if (v21)
              {
                v24 = CFStringCompare(v9, @"option.input_normal_map_world_frame", 1uLL);
                v23 = (a3 + 13);
                if (v24)
                {
                  v25 = CFStringCompare(v9, @"option.output_normal_map_world_frame", 1uLL);
                  v23 = (a3 + 14);
                  if (v25)
                  {
                    break;
                  }
                }
              }

              v26 = amt::parseBoolParameter(v16, v23, v22);
            }

            else
            {
              v26 = amt::parseIntParameter<amt::VertexPlacementStrategy>(v16, v14, v18);
            }

            if (v26)
            {
              v11 = v10 + 1 >= Count;
              if (Count - 1 != v10)
              {
                v9 = keys[0][++v10];
                if (v9)
                {
                  continue;
                }
              }
            }

            break;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      if (values[0])
      {
        values[1] = values[0];
        operator delete(values[0]);
      }

      if (keys[0])
      {
        keys[1] = keys[0];
        operator delete(keys[0]);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }

  return v11;
}

void sub_23E782BE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

BOOL amt::AMTPipelineOptions::parse(const void *a1, const __CFDictionary *a2, _DWORD *a3)
{
  if (!a1)
  {
    return 1;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != CFDictionaryGetTypeID())
  {
    return 1;
  }

  if (!a2)
  {
    v7 = CFGetTypeID(0);
    if (v7 != CFDictionaryGetTypeID())
    {
      amt::AMTPipelineOptions::parse();
    }
  }

  Value = CFDictionaryGetValue(a2, @"option_group.attribute_map_transfer");
  v9 = CFDictionaryGetValue(a1, @"option_group.attribute_map_transfer");

  return amt::AMTPipelineOptions::parseAttributeMapTransferParameters(v9, Value, a3);
}

void *std::vector<void const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<void const*>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_23E782D38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<void const*>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a1, a2);
  }

  std::vector<AMTMeshSourceSemantic>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void __AMTAdaptiveMesh::__AMTAdaptiveMesh(__AMTAdaptiveMesh *this)
{
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 18) = 0u;
  *(this + 1) = 0u;
  *(this + 265) = 0u;
}

{
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 2) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 18) = 0u;
  *(this + 1) = 0u;
  *(this + 265) = 0u;
}

void __AMTAdaptiveMesh::~__AMTAdaptiveMesh(const void **this)
{
  amt::AMTWrapper<__AMTMeshSource *>::~AMTWrapper(this + 45);
  amt::AMTWrapper<__AMTMesh *>::~AMTWrapper(this + 44);
  amt::AMTWrapper<__AMTMesh *>::~AMTWrapper(this + 43);
  amt::AMTWrapper<__AMTMeshSource *>::~AMTWrapper(this + 42);
  amt::AMTWrapper<__AMTMesh *>::~AMTWrapper(this + 41);
  amt::AMTWrapper<__AMTMesh *>::~AMTWrapper(this + 40);
  amt::AMTWrapper<__CFDictionary const*>::~AMTWrapper(this + 39);
  v2 = this[36];
  if (v2)
  {
    this[37] = v2;
    operator delete(v2);
  }

  v3 = this[32];
  if (v3)
  {
    this[33] = v3;
    operator delete(v3);
  }

  amt::Adjacency<int>::~Adjacency((this + 23));
  v4 = this[20];
  if (v4)
  {
    this[21] = v4;
    operator delete(v4);
  }

  amt::Adjacency<int>::~Adjacency((this + 11));
  amt::Adjacency<int>::~Adjacency((this + 2));
}

_OWORD *__AMTAdaptiveMesh::_cfInit(__AMTAdaptiveMesh *this, const void *a2)
{
  *(this + 1) = 0u;
  result = (this + 16);
  *(result + 249) = 0u;
  result[14] = 0u;
  result[15] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  result[8] = 0u;
  result[9] = 0u;
  result[6] = 0u;
  result[7] = 0u;
  result[4] = 0u;
  result[5] = 0u;
  result[2] = 0u;
  result[3] = 0u;
  result[1] = 0u;
  result[20] = 0u;
  result[21] = 0u;
  result[18] = 0u;
  result[19] = 0u;
  result[17] = 0u;
  return result;
}

CFStringRef __AMTAdaptiveMesh::_cfCopyFormatDescription(__AMTAdaptiveMesh *this, const void *a2, const __CFDictionary *a3)
{
  v3 = CFGetAllocator(this);

  return CFStringCreateWithFormat(v3, 0, @"AMTAdaptiveMesh");
}

CFStringRef __AMTAdaptiveMesh::_cfCopyDebugDescription(__AMTAdaptiveMesh *this, const void *a2)
{
  v2 = CFGetAllocator(this);

  return CFStringCreateWithFormat(v2, 0, @"AMTAdaptiveMesh");
}

uint64_t AMTAdaptiveMeshGetTypeID()
{
  result = AMTAdaptiveMeshGetTypeID::typeID;
  if (!AMTAdaptiveMeshGetTypeID::typeID)
  {
    {
      {
        AMTAdaptiveMeshGetTypeID::kAMTAdaptiveMeshContextClass = 0;
        qword_27E34F9B0 = CFStringGetCStringPtr(@"AMTAdaptiveMesh", 0x8000100u);
        *algn_27E34F9B8 = __AMTAdaptiveMesh::_cfInit;
        qword_27E34F9D0 = 0;
        unk_27E34F9D8 = 0;
        qword_27E34F9C0 = 0;
        unk_27E34F9C8 = __AMTAdaptiveMesh::_cfFinalize;
        qword_27E34F9E0 = __AMTAdaptiveMesh::_cfCopyFormatDescription;
        qword_27E34F9E8 = __AMTAdaptiveMesh::_cfCopyDebugDescription;
        unk_27E34F9F0 = 0;
        qword_27E34F9F8 = 0;
        unk_27E34FA00 = 0;
      }
    }

    result = _CFRuntimeRegisterClass();
    AMTAdaptiveMeshGetTypeID::typeID = result;
  }

  return result;
}

const void *AMTAdaptiveMeshCreateWithBaseMesh(uint64_t a1, void *cf, void *a3, const void *a4, const void *a5, CFErrorRef *a6)
{
  if (!cf || (v12 = CFGetTypeID(cf), TypeID = AMTMeshGetTypeID(), !a4) || v12 != TypeID || (v14 = CFGetTypeID(a4), v15 = CFDictionaryGetTypeID(), !a3) || v14 != v15 || (v16 = CFGetTypeID(a3), v16 != AMTMeshSourceGetTypeID()) || a5 && (v17 = CFGetTypeID(a5), v17 != CFDictionaryGetTypeID()))
  {
    if (!a6)
    {
      return 0;
    }

    v20 = AMTErrorCreateWithErrorCode(-1);
    v19 = 0;
    goto LABEL_14;
  }

  v22[0] = a1;
  v22[1] = a5;
  v22[2] = a6;
  v18 = amt::AMTAdaptiveMeshCreateWithBaseMesh(cf, a3, a4, v22);
  v19 = v18;
  if (a6 && !v18)
  {
    v20 = AMTErrorCreateWithMessages(-1, "Could not create adaptive mesh from input data", 0);
LABEL_14:
    *a6 = v20;
  }

  return v19;
}

const void *AMTAdaptiveMeshCreateWithBaseMeshOnly(uint64_t a1, void *cf, unsigned int a3, const void *a4, CFErrorRef *a5)
{
  if (cf && (v10 = CFGetTypeID(cf), v10 == AMTMeshGetTypeID()) && (!a4 || (v11 = CFGetTypeID(a4), v11 == CFDictionaryGetTypeID())))
  {
    v14[0] = a1;
    v14[1] = a4;
    v14[2] = a5;
    return amt::AMTAdaptiveMeshCreateWithBaseMesh(cf, a3, v14);
  }

  else if (a5)
  {
    v13 = AMTErrorCreateWithErrorCode(-1);
    result = 0;
    *a5 = v13;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t AMTAdaptiveMeshCreateWithMesh(const __CFAllocator *a1, void *cf, uint64_t a3, __int128 *a4, CFErrorRef *a5)
{
  if (cf && (v10 = CFGetTypeID(cf), v10 == AMTMeshGetTypeID()))
  {
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v14[0] = a1;
    v14[1] = a3;
    v14[2] = a5;
    v14[3] = Mutable;
    v11 = a4[1];
    v15 = *a4;
    v16 = v11;
    v17 = a4[2];
    v18 = *(a4 + 6);
    v12 = amt::AMTAdaptiveMeshCreateWithMesh(cf, v14);
    amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&Mutable);
  }

  else
  {
    v12 = 0;
    if (a5)
    {
      *a5 = AMTErrorCreateWithErrorCode(-1);
    }
  }

  return v12;
}

void *AMTAdaptiveMeshGetInfo(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == AMTAdaptiveMeshGetTypeID())
    {
      return v1[39];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *AMTAdaptiveMeshGetBaseMesh(char *result, const __CFDictionary *a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == AMTAdaptiveMeshGetTypeID())
    {
      v5 = parseOptionUnifyIndices(a2);
      v6 = 320;
      if (v5)
      {
        v6 = 344;
      }

      return *&v3[v6];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFDictionary *parseOptionUnifyIndices(const __CFDictionary *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 != CFDictionaryGetTypeID())
    {
      return 0;
    }

    result = CFDictionaryGetValue(v1, @"option.unify_indices");
    if (!result)
    {
      return result;
    }

    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFBooleanGetTypeID())
    {
      return (CFBooleanGetValue(v3) != 0);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *AMTAdaptiveMeshGetHighestResolutionMesh(char *result, const __CFDictionary *a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == AMTAdaptiveMeshGetTypeID())
    {
      v5 = parseOptionUnifyIndices(a2);
      v6 = 328;
      if (v5)
      {
        v6 = 352;
      }

      return *&v3[v6];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *AMTAdaptiveMeshGetDisplacements(char *result, const __CFDictionary *a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == AMTAdaptiveMeshGetTypeID())
    {
      v5 = parseOptionUnifyIndices(a2);
      v6 = 336;
      if (v5)
      {
        v6 = 360;
      }

      return *&v3[v6];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AMTAdaptiveMeshGetAdjacencyConfigurationCount(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTAdaptiveMeshGetTypeID())
  {
    return ((a1[3] - a1[2]) >> 1);
  }

  else
  {
    return -1;
  }
}

uint64_t AMTAdaptiveMeshGetAdjacencyMainNeighborCount(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTAdaptiveMeshGetTypeID())
  {
    return ((a1[6] - a1[5]) >> 2);
  }

  else
  {
    return -1;
  }
}

uint64_t AMTAdaptiveMeshGetAdjacencyAdditionalNeighborCount(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTAdaptiveMeshGetTypeID())
  {
    return ((a1[9] - a1[8]) >> 3);
  }

  else
  {
    return -1;
  }
}

void *AMTAdaptiveMeshGetAdjacencyConfigurations(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == AMTAdaptiveMeshGetTypeID())
    {
      return v1[2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *AMTAdaptiveMeshGetAdjacencyMainNeighbors(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == AMTAdaptiveMeshGetTypeID())
    {
      return v1[5];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *AMTAdaptiveMeshGetTexCoordToVertexMapping(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == AMTAdaptiveMeshGetTypeID())
    {
      return v1[36];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *AMTAdaptiveMeshGetAdjacencyAdditionalNeighbors(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == AMTAdaptiveMeshGetTypeID())
    {
      return v1[8];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AMTAdaptiveMeshGetAdjacencyShiftCount(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTAdaptiveMeshGetTypeID())
  {
    return (a1[24] - a1[23]) >> 2;
  }

  else
  {
    return -1;
  }
}

uint64_t AMTAdaptiveMeshGetAdjacencyNeighborCount(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTAdaptiveMeshGetTypeID())
  {
    return (a1[30] - a1[29]) >> 3;
  }

  else
  {
    return -1;
  }
}

void *AMTAdaptiveMeshGetAdjacencyShifts(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == AMTAdaptiveMeshGetTypeID())
    {
      return v1[23];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *AMTAdaptiveMeshGetAdjacencyNeighbors(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == AMTAdaptiveMeshGetTypeID())
    {
      return v1[29];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFMutableDictionaryRef AMTComputeQuality(const __CFAllocator *a1, void *a2, void *cf, const __CFArray *a4, const __CFArray *a5, uint64_t a6, uint64_t a7, __int128 *a8, CFErrorRef *a9)
{
  if (cf && (v17 = CFGetTypeID(cf), TypeID = AMTMeshGetTypeID(), a2) && v17 == TypeID && (v19 = CFGetTypeID(a2), v20 = AMTMeshGetTypeID(), a4) && v19 == v20 && (v21 = CFGetTypeID(a4), v22 = CFArrayGetTypeID(), a5) && v21 == v22 && (v23 = CFGetTypeID(a5), v23 == CFArrayGetTypeID()))
  {
    v27[0] = a1;
    v27[1] = a7;
    v27[2] = a9;
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v24 = a8[1];
    v29 = *a8;
    v30 = v24;
    v31 = a8[2];
    v32 = *(a8 + 6);
    v33 = Mutable;
    v25 = amt::AMTComputeQuality(a2, cf, a4, a5, a6, v27);
    amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&v33);
  }

  else
  {
    v25 = 0;
    if (a9)
    {
      *a9 = AMTErrorCreateWithErrorCode(-1);
    }
  }

  return v25;
}

void sub_23E783A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef AMTCreateAttributeMaps(const __CFAllocator *a1, void *a2, void *cf, const __CFArray *a4, uint64_t a5, uint64_t a6, __int128 *a7, CFErrorRef *a8)
{
  if (cf && (v16 = CFGetTypeID(cf), TypeID = AMTMeshGetTypeID(), a2) && v16 == TypeID && (v18 = CFGetTypeID(a2), v19 = AMTMeshGetTypeID(), a4) && v18 == v19 && (v20 = CFGetTypeID(a4), v20 == CFArrayGetTypeID()))
  {
    v24[0] = a1;
    v24[1] = a6;
    v24[2] = a8;
    Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v21 = a7[1];
    v26 = *a7;
    v27 = v21;
    v28 = a7[2];
    v29 = *(a7 + 6);
    v30 = Mutable;
    v22 = amt::AMTCreateAttributeMaps(a2, cf, a4, a5, v24);
    amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(&v30);
  }

  else
  {
    v22 = 0;
    if (a8)
    {
      *a8 = AMTErrorCreateWithErrorCode(-1);
    }
  }

  return v22;
}

void sub_23E783B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  amt::AMTWrapper<__CFDictionary *>::~AMTWrapper(va);
  _Unwind_Resume(a1);
}

CFMutableArrayRef AMTTransferAttributeMaps(const __CFAllocator *a1, void *a2, void *a3, const __CFArray *a4, uint64_t a5, uint64_t a6, uint64_t a7, CFErrorRef *a8)
{
  v8 = *(a7 + 16);
  v10[0] = *a7;
  v10[1] = v8;
  v10[2] = *(a7 + 32);
  v11 = *(a7 + 48);
  return AMTCreateAttributeMaps(a1, a2, a3, a4, a5, a6, v10, a8);
}

CFMutableArrayRef AMTCreateAttributeMaps(const __CFAllocator *a1, char *a2, void *a3, const __CFArray *a4, uint64_t a5, uint64_t a6, uint64_t a7, CFErrorRef *a8)
{
  HighestResolutionMesh = AMTAdaptiveMeshGetHighestResolutionMesh(a2, 0);
  v16 = *(a7 + 16);
  v18[0] = *a7;
  v18[1] = v16;
  v18[2] = *(a7 + 32);
  v19 = *(a7 + 48);
  return AMTCreateAttributeMaps(a1, HighestResolutionMesh, a3, a4, a5, a6, v18, a8);
}

unint64_t AMTGetBaseMeshTriangleIndexFromSubdvidedIndex(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (*(a1 + 280))
  {
    AMTGetBaseMeshTriangleIndexFromSubdvidedIndex_cold_1();
  }

  if ((a2 & 0x8000000000000000) != 0 || (v3 = *(a1 + 160), a2 >= (*(a1 + 168) - v3) >> 3))
  {
    AMTGetBaseMeshTriangleIndexFromSubdvidedIndex_cold_2();
  }

  if ((a3 & 0x8000000000000000) != 0 || *(v3 + 8 * a2 + 4) <= a3)
  {
    AMTGetBaseMeshTriangleIndexFromSubdvidedIndex_cold_3();
  }

  return a3 >> (2 * a2);
}

uint64_t AMTAdaptiveMeshTessellate(uint64_t a1, CFTypeRef cf, const void *a3, CFErrorRef *a4)
{
  if (cf && (v8 = CFGetTypeID(cf), v8 == AMTAdaptiveMeshGetTypeID()) && (!a3 || (v9 = CFGetTypeID(a3), v9 == CFDictionaryGetTypeID())))
  {
    v12[0] = a1;
    v12[1] = a3;
    v12[2] = a4;
    return amt::AMTAdaptiveMeshTessellate(cf, v12);
  }

  else if (a4)
  {
    v11 = AMTErrorCreateWithErrorCode(-1);
    result = 0;
    *a4 = v11;
  }

  else
  {
    return 0;
  }

  return result;
}

const void **amt::AMTWrapper<__AMTMesh *>::~AMTWrapper(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void __AMTMeshElement::_cfFinalize(__AMTMeshElement *this, const void *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }
}

CFStringRef __AMTMeshElement::_cfCopyFormatDescription(__AMTMeshElement *this, const void *a2, const __CFDictionary *a3)
{
  v3 = CFGetAllocator(this);

  return CFStringCreateWithFormat(v3, 0, @"AMTMeshElement");
}

CFStringRef __AMTMeshElement::_cfCopyDebugDescription(__AMTMeshElement *this, const void *a2)
{
  v2 = CFGetAllocator(this);

  return CFStringCreateWithFormat(v2, 0, @"AMTMeshElement");
}

uint64_t AMTMeshElementGetTypeID()
{
  result = AMTMeshElementGetTypeID::typeID;
  if (!AMTMeshElementGetTypeID::typeID)
  {
    {
      {
        AMTMeshElementGetTypeID::kAMTMeshElementContextClass = 0;
        qword_27E34FA20 = CFStringGetCStringPtr(@"AMTMeshElement", 0x8000100u);
        *algn_27E34FA28 = __AMTMeshElement::_cfInit;
        qword_27E34FA40 = 0;
        unk_27E34FA48 = 0;
        qword_27E34FA30 = 0;
        unk_27E34FA38 = __AMTMeshElement::_cfFinalize;
        qword_27E34FA50 = __AMTMeshElement::_cfCopyFormatDescription;
        qword_27E34FA58 = __AMTMeshElement::_cfCopyDebugDescription;
        unk_27E34FA60 = 0;
        qword_27E34FA68 = 0;
        unk_27E34FA70 = 0;
      }
    }

    result = _CFRuntimeRegisterClass();
    AMTMeshElementGetTypeID::typeID = result;
  }

  return result;
}

uint64_t AMTMeshElementCreateWithSourceIndicesArray(const __CFAllocator *a1, CFTypeRef cf, char a3, uint64_t a4, uint64_t a5)
{
  if (!cf || (v10 = CFGetTypeID(cf), v11 = CFArrayGetTypeID(), a4 < 0) || v10 != v11 || a5 < 0 || (a4 <= 0x10000000 ? (v12 = a5 > 16) : (v12 = 1), v12))
  {
    CFLog();
    return 0;
  }

  else
  {
    TypeID = AMTMeshElementGetTypeID();
    Instance = _AMTTypeCreateInstance(a1, TypeID, 0x20uLL);
    if (Instance)
    {
      v15 = CFRetain(cf);
      *(Instance + 40) = a3;
      *(Instance + 16) = v15;
      *(Instance + 24) = a4;
      *(Instance + 32) = a5;
    }
  }

  return Instance;
}

uint64_t AMTMeshElementGetFaceType(unsigned __int8 *a1)
{
  if (!a1)
  {
    return 255;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTMeshElementGetTypeID())
  {
    return a1[40];
  }

  else
  {
    return 255;
  }
}

uint64_t AMTMeshElementGetFaceCount(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTMeshElementGetTypeID())
  {
    return a1[3];
  }

  else
  {
    return -1;
  }
}

uint64_t AMTMeshElementGetMaterialIndex(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTMeshElementGetTypeID())
  {
    return a1[4];
  }

  else
  {
    return -1;
  }
}

void *AMTMeshElementGetSourceIndicesArray(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == AMTMeshElementGetTypeID())
    {
      return v1[2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned __int8 *AMTMeshElementGetSourceIndicesWithSemantic(const void *a1, int a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  v6 = CFGetTypeID(a1);
  if (v6 != AMTMeshElementGetTypeID())
  {
    return 0;
  }

  return __AMTMeshElement::findSourceIndices(a1, a2, a3);
}

unsigned __int8 *__AMTMeshElement::findSourceIndices(uint64_t a1, int a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = CFGetTypeID(v4);
  if (v7 != CFArrayGetTypeID())
  {
    return 0;
  }

  Count = CFArrayGetCount(*(a1 + 16));
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  v10 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v10);
    if (ValueAtIndex)
    {
      v12 = ValueAtIndex;
      v13 = CFGetTypeID(ValueAtIndex);
      if (v13 == AMTMeshSourceIndicesGetTypeID() && AMTMeshSourceIndicesGetSemantic(v12) == a2 && AMTMeshSourceIndicesGetInstance(v12) == a3)
      {
        break;
      }
    }

    if (v9 == ++v10)
    {
      return 0;
    }
  }

  return v12;
}

void __AMTMeshSourceIndices::_cfFinalize(__AMTMeshSourceIndices *this, const void *a2)
{
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }
}

CFStringRef __AMTMeshSourceIndices::_cfCopyFormatDescription(__AMTMeshSourceIndices *this, const void *a2, const __CFDictionary *a3)
{
  v3 = CFGetAllocator(this);

  return CFStringCreateWithFormat(v3, 0, @"AMTMeshSourceIndices");
}

CFStringRef __AMTMeshSourceIndices::_cfCopyDebugDescription(__AMTMeshSourceIndices *this, const void *a2)
{
  v2 = CFGetAllocator(this);

  return CFStringCreateWithFormat(v2, 0, @"AMTMeshSourceIndices");
}

uint64_t AMTMeshSourceIndicesGetTypeID()
{
  result = AMTMeshSourceIndicesGetTypeID::typeID;
  if (!AMTMeshSourceIndicesGetTypeID::typeID)
  {
    {
      {
        AMTMeshSourceIndicesGetTypeID::kAMTMeshSourceIndicesContextClass = 0;
        qword_27E34FA90 = CFStringGetCStringPtr(@"AMTMeshSourceIndices", 0x8000100u);
        *algn_27E34FA98 = __AMTMeshSourceIndices::_cfInit;
        qword_27E34FAB0 = 0;
        unk_27E34FAB8 = 0;
        qword_27E34FAA0 = 0;
        unk_27E34FAA8 = __AMTMeshSourceIndices::_cfFinalize;
        qword_27E34FAC0 = __AMTMeshSourceIndices::_cfCopyFormatDescription;
        qword_27E34FAC8 = __AMTMeshSourceIndices::_cfCopyDebugDescription;
        unk_27E34FAD0 = 0;
        qword_27E34FAD8 = 0;
        unk_27E34FAE0 = 0;
      }
    }

    result = _CFRuntimeRegisterClass();
    AMTMeshSourceIndicesGetTypeID::typeID = result;
  }

  return result;
}

uint64_t AMTMeshSourceIndicesCreateWithData(const __CFAllocator *a1, CFTypeRef cf, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!cf || (v16 = CFGetTypeID(cf), v16 != CFDataGetTypeID()) || (a6 | a4) < 0 || a4 >= 4 || a8 < 1 || a7 < 0 || a6 >= 0x10000000)
  {
    CFLog();
    return 0;
  }

  else
  {
    TypeID = AMTMeshSourceIndicesGetTypeID();
    Instance = _AMTTypeCreateInstance(a1, TypeID, 0x38uLL);
    if (Instance)
    {
      v19 = CFRetain(cf);
      *(Instance + 16) = v19;
      BytePtr = CFDataGetBytePtr(v19);
      *(Instance + 64) = a3;
      *(Instance + 24) = BytePtr;
      *(Instance + 32) = a4;
      *(Instance + 65) = a5;
      *(Instance + 40) = a6;
      *(Instance + 48) = a7;
      *(Instance + 56) = a8;
    }
  }

  return Instance;
}

uint64_t AMTMeshSourceIndicesGetSemantic(unsigned __int8 *a1)
{
  if (!a1)
  {
    return 255;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTMeshSourceIndicesGetTypeID())
  {
    return a1[64];
  }

  else
  {
    return 255;
  }
}

uint64_t AMTMeshSourceIndicesGetInstance(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTMeshSourceIndicesGetTypeID())
  {
    return a1[4];
  }

  else
  {
    return -1;
  }
}

void *AMTMeshSourceIndicesGetData(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 == AMTMeshSourceIndicesGetTypeID())
    {
      return v1[2];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AMTMeshSourceIndicesGetIndexType(unsigned __int8 *a1)
{
  if (!a1)
  {
    return 255;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTMeshSourceIndicesGetTypeID())
  {
    return a1[65];
  }

  else
  {
    return 255;
  }
}

uint64_t AMTMeshSourceIndicesGetIndexCount(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTMeshSourceIndicesGetTypeID())
  {
    return a1[5];
  }

  else
  {
    return -1;
  }
}

uint64_t AMTMeshSourceIndicesGetDataOffset(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTMeshSourceIndicesGetTypeID())
  {
    return a1[6];
  }

  else
  {
    return -1;
  }
}

uint64_t AMTMeshSourceIndicesGetDataStride(void *a1)
{
  if (!a1)
  {
    return -1;
  }

  v2 = CFGetTypeID(a1);
  if (v2 == AMTMeshSourceIndicesGetTypeID())
  {
    return a1[7];
  }

  else
  {
    return -1;
  }
}

void AMTMeshSourceCopyToVector()
{
  __assert_rtn("AMTMeshSourceCopyToVector", "AMTMeshSourceInternal.h", 83, "AMTMeshSourceGetComponentsPerVector(source) == len");
}

{
  __assert_rtn("AMTMeshSourceCopyToVector", "AMTMeshSourceInternal.h", 82, "source && CFGetTypeID(source) == AMTMeshSourceGetTypeID()");
}

{
  __assert_rtn("AMTMeshSourceCopyToVector", "AMTMeshSourceInternal.h", 111, "AMTMeshSourceGetComponentsPerVector(source) == len");
}

{
  __assert_rtn("AMTMeshSourceCopyToVector", "AMTMeshSourceInternal.h", 110, "source && CFGetTypeID(source) == AMTMeshSourceGetTypeID()");
}

void __AMTMeshSource::vectorAtIndex<double>()
{
  __assert_rtn("vectorAtIndex", "AMTMeshSourceInternal.h", 35, "index >= 0 && index < _vectorCount");
}

{
  __assert_rtn("vectorAtIndex", "AMTMeshSourceInternal.h", 34, "_bytes");
}

void AMTMeshSourceIndicesAppendToVector<int>()
{
  __assert_rtn("AMTMeshSourceIndicesAppendToVector", "AMTMeshSourceIndicesInternal.h", 56, "indices && CFGetTypeID(indices) == AMTMeshSourceIndicesGetTypeID()");
}

{
  __assert_rtn("AMTMeshSourceIndicesAppendToVector", "AMTMeshSourceIndicesInternal.h", 60, "indexCount % 3 == 0");
}

void __AMTMeshSourceIndices::indexAtIndex<int>()
{
  __assert_rtn("indexAtIndex", "AMTMeshSourceIndicesInternal.h", 34, "index >= 0 && index < _indexCount");
}

{
  __assert_rtn("indexAtIndex", "AMTMeshSourceIndicesInternal.h", 33, "_bytes");
}

void amt::TriangleMesh::position()
{
  __assert_rtn("position", "AMTTriangleMesh.hpp", 83, "positionIndex >= 0 && positionIndex < positionCount()");
}

{
  __assert_rtn("position", "AMTTriangleMesh.hpp", 78, "positionIndex >= 0 && positionIndex < positionCount()");
}

void amt::TriangleMesh::normal()
{
  __assert_rtn("normal", "AMTTriangleMesh.hpp", 113, "normalIndex >= 0 && normalIndex < normalCount()");
}

{
  __assert_rtn("normal", "AMTTriangleMesh.hpp", 108, "normalIndex >= 0 && normalIndex < normalCount()");
}

void amt::updateSamples()
{
  __assert_rtn("row", "AMTMatrix.hpp", 517, "rowIndex < _rowCount");
}

{
  __assert_rtn("clamp", "AMTMath.hpp", 433, "!(hi < lo)");
}

void amt::AMTComputeQuality()
{
  __assert_rtn("AMTComputeQuality", "AMTPipeline.cpp", 2018, "sourceMesh && CFGetTypeID(sourceMesh) == AMTMeshGetTypeID()");
}

{
  __assert_rtn("AMTComputeQuality", "AMTPipeline.cpp", 2017, "targetMesh && CFGetTypeID(targetMesh) == AMTMeshGetTypeID()");
}

void amt::AMTCreateAttributeMaps()
{
  __assert_rtn("AMTCreateAttributeMaps", "AMTPipeline.cpp", 2122, "sourceMesh && CFGetTypeID(sourceMesh) == AMTMeshGetTypeID()");
}

{
  __assert_rtn("AMTCreateAttributeMaps", "AMTPipeline.cpp", 2121, "targetMesh && CFGetTypeID(targetMesh) == AMTMeshGetTypeID()");
}

void amt::AMTAdaptiveMeshCreateWithBaseMesh()
{
  __assert_rtn("parseAdaptiveMeshGenerationParameters", "AMTPipeline.cpp", 2479, "info && CFGetTypeID(info) == CFDictionaryGetTypeID()");
}

{
  __assert_rtn("AMTAdaptiveMeshCreateWithBaseMesh", "AMTPipeline.cpp", 2614, "info && CFGetTypeID(info) == CFDictionaryGetTypeID()");
}

{
  __assert_rtn("AMTAdaptiveMeshCreateWithBaseMesh", "AMTPipeline.cpp", 2613, "displacements && CFGetTypeID(displacements) == AMTMeshSourceGetTypeID()");
}

{
  __assert_rtn("AMTAdaptiveMeshCreateWithBaseMesh", "AMTPipeline.cpp", 2612, "baseMesh && CFGetTypeID(baseMesh) == AMTMeshGetTypeID()");
}

{
  __assert_rtn("AMTAdaptiveMeshCreateWithBaseMesh", "AMTPipeline.cpp", 2628, "baseMesh && CFGetTypeID(baseMesh) == AMTMeshGetTypeID()");
}

void amt::TriangleMesh::color()
{
  __assert_rtn("color", "AMTTriangleMesh.hpp", 88, "colorIndex >= 0 && colorIndex < colorCount()");
}

{
  __assert_rtn("color", "AMTTriangleMesh.hpp", 93, "colorIndex >= 0 && colorIndex < colorCount()");
}

void amt::TriangleMesh::texCoord()
{
  __assert_rtn("texCoord", "AMTTriangleMesh.hpp", 98, "texCoordIndex >= 0 && texCoordIndex < texCoordCount()");
}

{
  __assert_rtn("texCoord", "AMTTriangleMesh.hpp", 103, "texCoordIndex >= 0 && texCoordIndex < texCoordCount()");
}

void amt::extractConnectedComponents()
{
  __assert_rtn("extractConnectedComponents", "AMTTriangleMesh.hpp", 951, "mesh.normalTriangleCount() == 0 || mesh.normalTriangleCount() == triangleCount");
}

{
  __assert_rtn("extractConnectedComponents", "AMTTriangleMesh.hpp", 949, "mesh.texCoordTriangleCount() == 0 || mesh.texCoordTriangleCount() == triangleCount");
}

{
  __assert_rtn("extractConnectedComponents", "AMTTriangleMesh.hpp", 947, "mesh.triangleCount() == 0 || mesh.triangleCount() == triangleCount");
}

void amt::TriangleMesh::setTexCoord()
{
  __assert_rtn("setTexCoord", "AMTTriangleMesh.hpp", 331, "texCoordIndex >= 0 && texCoordIndex < texCoordCount()");
}

{
  __assert_rtn("setTexCoord", "AMTTriangleMesh.hpp", 326, "texCoordIndex >= 0 && texCoordIndex < texCoordCount()");
}

void amt::TriangleMesh::setTriangle()
{
  __assert_rtn("setTriangle", "AMTTriangleMesh.hpp", 400, "triangleIndex >= 0 && triangleIndex < triangleCount()");
}

{
  __assert_rtn("setTriangle", "AMTTriangleMesh.hpp", 395, "triangleIndex >= 0 && triangleIndex < triangleCount()");
}

void amt::PointCloudWrapper::kdtree_get_pt()
{
  __assert_rtn("kdtree_get_pt", "AMTPipeline.cpp", 50, "idx >= 0 && idx < kdtree_get_point_count()");
}

{
  __assert_rtn("kdtree_get_pt", "AMTPipeline.cpp", 51, "dim >= 0 && dim < 3");
}

atomic_ullong *std::future<nanoflann::KDTreeBaseClass<nanoflann::KDTreeSingleIndexAdaptor<nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>,nanoflann::L2_Simple_Adaptor<float,amt::PointCloudWrapper,float,unsigned int>,amt::PointCloudWrapper,3,unsigned int>::Node *>::get(atomic_ullong *result)
{
  if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    return (*(*result + 16))();
  }

  return result;
}

void amt::SparseMatrix<float>::addElementInOrder()
{
  __assert_rtn("addElementInOrder", "AMTMatrix.hpp", 825, "rowIndex < _rowCount");
}

{
  __assert_rtn("addElementInOrder", "AMTMatrix.hpp", 826, "columnIndex < _columnCount");
}

void amt::SparseMatrix<float>::SparseMatrix(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (v3)
  {
    *(a2 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v4;
    operator delete(v4);
  }
}

void amt::AMTImageWrapper::pixelBytes()
{
  __assert_rtn("pixelBytes", "AMTImage.hpp", 128, "x >= 0 && x < width()");
}

{
  __assert_rtn("pixelBytes", "AMTImage.hpp", 129, "y >= 0 && y < height()");
}

void amt::dilatePadding()
{
  __assert_rtn("dilatePadding", "AMTPipeline.cpp", 1633, "occupancyInput.columnCount() == width && occupancyInput.rowCount() == height");
}

{
  __assert_rtn("dilatePadding", "AMTPipeline.cpp", 1634, "!mask || (mask->columnCount() == width && mask->rowCount() == height)");
}

{
  __assert_rtn("row", "AMTMatrix.hpp", 521, "rowIndex < _rowCount");
}

void AMTLog::AMTLog()
{
  {
    AMTLog::AMTLog(void)::log = os_log_create(kAMTSubSystem, kAMTPipelineSubSystemCategory);
  }
}

void amt::HashAdjacency::setConfiguration()
{
  __assert_rtn("setConfiguration", "AMTHashAdjacency.hpp", 65, "a >= 0 && a < size()");
}

{
  __assert_rtn("setConfiguration", "AMTHashAdjacency.hpp", 70, "simd_all(config >= simd_char4(0)) && simd_all(config < simd_char4(16))");
}

void amt::HashAdjacency::setMainNeighbor()
{
  __assert_rtn("setMainNeighbor", "AMTHashAdjacency.hpp", 129, "a >= 0 && a < size()");
}

{
  __assert_rtn("setMainNeighbor", "AMTHashAdjacency.hpp", 130, "k >= 0 && k < (1 << Log2BucketSize)");
}

void amt::HashAdjacency::mainNeighbor()
{
  __assert_rtn("mainNeighbor", "AMTHashAdjacency.hpp", 122, "a >= 0 && a < size()");
}

{
  __assert_rtn("mainNeighbor", "AMTHashAdjacency.hpp", 123, "k >= 0 && k < (1 << Log2BucketSize)");
}

void amt::computeVertexToTriangle()
{
  __assert_rtn("computeVertexToTriangle", "AMTTriangleMesh.cpp", 31, "tri[2] >= 0 && tri[2] < vertexCount");
}

{
  __assert_rtn("computeVertexToTriangle", "AMTTriangleMesh.cpp", 30, "tri[1] >= 0 && tri[1] < vertexCount");
}

{
  __assert_rtn("computeVertexToTriangle", "AMTTriangleMesh.cpp", 29, "tri[0] >= 0 && tri[0] < vertexCount");
}

void amt::Adjacency<int>::addNeighbor()
{
  __assert_rtn("addNeighbor", "AMTAdjacency.hpp", 91, "_neighborCounts[i] < maxNeighborCount(i)");
}

{
  __assert_rtn("addNeighbor", "AMTAdjacency.hpp", 90, "neighbor >= 0");
}

{
  __assert_rtn("addNeighbor", "AMTAdjacency.hpp", 89, "i >= 0 && i <= size()");
}

void amt::Adjacency<int>::maxNeighborCount()
{
  __assert_rtn("maxNeighborCount", "AMTAdjacency.hpp", 57, "i < size()");
}

{
  __assert_rtn("maxNeighborCount", "AMTAdjacency.hpp", 58, "_shifts[i + 1] >= _shifts[i]");
}

void amt::TriangleMeshDecimatorImpl::TriangleMeshDecimatorImpl(void **a1, void **a2, void **a3, uint64_t a4)
{
  amt::TriangleMesh::~TriangleMesh(a1);
  v7 = *a2;
  if (*a2)
  {
    *(a4 + 112) = v7;
    operator delete(v7);
  }

  v8 = *a3;
  if (*a3)
  {
    *(a4 + 88) = v8;

    operator delete(v8);
  }
}

void amt::AMTPipelineOptions::parse()
{
  __assert_rtn("parse", "AMTPipelineOptions.cpp", 862, "optionsInfo || CFGetTypeID(optionsInfo) == CFDictionaryGetTypeID()");
}

{
  __assert_rtn("parse", "AMTPipelineOptions.cpp", 979, "optionsInfo || CFGetTypeID(optionsInfo) == CFDictionaryGetTypeID()");
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7918]();
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