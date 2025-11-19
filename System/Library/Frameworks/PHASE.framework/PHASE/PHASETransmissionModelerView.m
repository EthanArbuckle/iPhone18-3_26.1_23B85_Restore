@interface PHASETransmissionModelerView
- (PHASEEngine)engine;
- (PHASETransmissionModelerView)initWithEngine:(id)a3;
- (__n128)overrideGeometrySubdivisionForSource:subdivideGeometry:;
- (__n128)overrideMaximumSampleCountForSource:count:;
- (__n128)overrideSampleHistoryLengthForSource:length:;
- (__n128)overrideSampleSubdivisionIndexForSource:index:;
- (void)beginTrackingAudibleGeometryForSource:(id)a3 callback:(id)a4;
- (void)beginTrackingAudibleGeometryForSource:callback:;
- (void)beginTrackingSource:(id)a3 callback:(id)a4;
- (void)beginTrackingSource:callback:;
- (void)endTrackingAudibleGeometryForSource:(id)a3;
- (void)endTrackingSource:(id)a3;
- (void)overrideGeometrySubdivisionForSource:(id)a3 subdivideGeometry:(BOOL)a4;
- (void)overrideGeometrySubdivisionForSource:subdivideGeometry:;
- (void)overrideMaximumSampleCountForSource:(id)a3 count:(int64_t)a4;
- (void)overrideMaximumSampleCountForSource:count:;
- (void)overrideSampleHistoryLengthForSource:(id)a3 length:(int64_t)a4;
- (void)overrideSampleHistoryLengthForSource:length:;
- (void)overrideSampleSubdivisionIndexForSource:(id)a3 index:(int64_t)a4;
- (void)overrideSampleSubdivisionIndexForSource:index:;
@end

@implementation PHASETransmissionModelerView

- (PHASETransmissionModelerView)initWithEngine:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[PHASETransmissionModelerView initWithEngine:]", "PHASETransmissionModelerView.mm", 114, "engine");
  }

  v7.receiver = self;
  v7.super_class = PHASETransmissionModelerView;
  v5 = [(PHASETransmissionModelerView *)&v7 init];
  objc_storeWeak(&v5->_engine, v4);

  return v5;
}

- (void)beginTrackingSource:(id)a3 callback:(id)a4
{
  v13[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 geoEntityHandle];
  v9 = _Block_copy(v7);
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v11 = *([WeakRetained implementation] + 368);
  v12 = [v6 geoEntityHandle];
  v13[0] = &unk_284D36570;
  v13[1] = v8;
  v13[2] = _Block_copy(v9);
  v13[3] = v13;
  (*(*v11 + 368))(v11, v12, v13);
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::RenderSourceView const*)>::~__value_func[abi:ne200100](v13);
}

- (void)endTrackingSource:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (!v4)
  {
    __assert_rtn("[PHASETransmissionModelerView endTrackingSource:]", "PHASETransmissionModelerView.mm", 137, "source");
  }

  v5 = [v4 engine];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (v5 != WeakRetained)
  {
    __assert_rtn("[PHASETransmissionModelerView endTrackingSource:]", "PHASETransmissionModelerView.mm", 138, "source.engine == _engine");
  }

  v7 = objc_loadWeakRetained(&self->_engine);
  v8 = *([v7 implementation] + 368);
  (*(*v8 + 384))(v8, [v9 geoEntityHandle]);
}

- (void)beginTrackingAudibleGeometryForSource:(id)a3 callback:(id)a4
{
  v15[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    __assert_rtn("[PHASETransmissionModelerView beginTrackingAudibleGeometryForSource:callback:]", "PHASETransmissionModelerView.mm", 145, "source");
  }

  v8 = [v6 engine];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (v8 != WeakRetained)
  {
    __assert_rtn("[PHASETransmissionModelerView beginTrackingAudibleGeometryForSource:callback:]", "PHASETransmissionModelerView.mm", 146, "source.engine == _engine");
  }

  v10 = [v6 geoEntityHandle];
  v11 = _Block_copy(v7);
  v12 = objc_loadWeakRetained(&self->_engine);
  v13 = *([v12 implementation] + 368);
  v14 = [v6 geoEntityHandle];
  v15[0] = &unk_284D365B8;
  v15[1] = v10;
  v15[2] = _Block_copy(v11);
  v15[3] = v15;
  (*(*v13 + 392))(v13, v14, v15);
  std::__function::__value_func<void ()(Phase::SpatialModeler::DirectPathTransmissionDebugger::AudibleTriangleView const*)>::~__value_func[abi:ne200100](v15);
}

- (void)endTrackingAudibleGeometryForSource:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (!v4)
  {
    __assert_rtn("[PHASETransmissionModelerView endTrackingAudibleGeometryForSource:]", "PHASETransmissionModelerView.mm", 181, "source");
  }

  v5 = [v4 engine];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (v5 != WeakRetained)
  {
    __assert_rtn("[PHASETransmissionModelerView endTrackingAudibleGeometryForSource:]", "PHASETransmissionModelerView.mm", 182, "source.engine == _engine");
  }

  v7 = objc_loadWeakRetained(&self->_engine);
  v8 = *([v7 implementation] + 368);
  (*(*v8 + 408))(v8, [v9 geoEntityHandle]);
}

- (void)overrideMaximumSampleCountForSource:(id)a3 count:(int64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v8 = [WeakRetained engineMode];

  if (v8)
  {
    v10 = **(Phase::Logger::GetInstance(v9) + 448);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v13 = 136315394;
      *&v13[4] = "PHASETransmissionModelerView.mm";
      *&v13[12] = 1024;
      *&v13[14] = 192;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d overrideMaximumSampleCountForSource: Cannot be called when running Client/Server mode.", v13, 0x12u);
    }
  }

  else
  {
    v11 = objc_loadWeakRetained(&self->_engine);
    v12 = Phase::Controller::TaskManager::GetService<Phase::Geometry::System>(([v11 implementation] + 48), 2);

    if (!v12)
    {
      __assert_rtn("[PHASETransmissionModelerView overrideMaximumSampleCountForSource:count:]", "PHASETransmissionModelerView.mm", 197, "nullptr != geoSystem");
    }

    *v13 = &unk_284D36600;
    *&v13[8] = [v6 geoEntityHandle];
    *&v13[16] = a4;
    v14 = v13;
    Phase::Geometry::SystemScheduler::RunDebugFunction(v12 + 2784, v13);
    std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](v13);
  }
}

- (void)overrideSampleHistoryLengthForSource:(id)a3 length:(int64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v8 = [WeakRetained engineMode];

  if (v8)
  {
    v10 = **(Phase::Logger::GetInstance(v9) + 448);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v13 = 136315394;
      *&v13[4] = "PHASETransmissionModelerView.mm";
      *&v13[12] = 1024;
      *&v13[14] = 211;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d overrideSampleHistoryLengthForSource: Cannot be called when running Client/Server mode.", v13, 0x12u);
    }
  }

  else
  {
    v11 = objc_loadWeakRetained(&self->_engine);
    v12 = Phase::Controller::TaskManager::GetService<Phase::Geometry::System>(([v11 implementation] + 48), 2);

    if (!v12)
    {
      __assert_rtn("[PHASETransmissionModelerView overrideSampleHistoryLengthForSource:length:]", "PHASETransmissionModelerView.mm", 216, "nullptr != geoSystem");
    }

    *v13 = &unk_284D36648;
    *&v13[8] = [v6 geoEntityHandle];
    *&v13[16] = a4;
    v14 = v13;
    Phase::Geometry::SystemScheduler::RunDebugFunction(v12 + 2784, v13);
    std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](v13);
  }
}

- (void)overrideSampleSubdivisionIndexForSource:(id)a3 index:(int64_t)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v8 = [WeakRetained engineMode];

  if (v8)
  {
    v10 = **(Phase::Logger::GetInstance(v9) + 448);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v13 = 136315394;
      *&v13[4] = "PHASETransmissionModelerView.mm";
      *&v13[12] = 1024;
      *&v13[14] = 231;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d overrideSampleSubdivisionIndexForSource: Cannot be called when running Client/Server mode.", v13, 0x12u);
    }
  }

  else
  {
    v11 = objc_loadWeakRetained(&self->_engine);
    v12 = Phase::Controller::TaskManager::GetService<Phase::Geometry::System>(([v11 implementation] + 48), 2);

    if (!v12)
    {
      __assert_rtn("[PHASETransmissionModelerView overrideSampleSubdivisionIndexForSource:index:]", "PHASETransmissionModelerView.mm", 236, "nullptr != geoSystem");
    }

    *v13 = &unk_284D36690;
    *&v13[8] = [v6 geoEntityHandle];
    *&v13[16] = a4;
    v14 = v13;
    Phase::Geometry::SystemScheduler::RunDebugFunction(v12 + 2784, v13);
    std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](v13);
  }
}

- (void)overrideGeometrySubdivisionForSource:(id)a3 subdivideGeometry:(BOOL)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v8 = [WeakRetained engineMode];

  if (v8)
  {
    v10 = **(Phase::Logger::GetInstance(v9) + 448);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v13 = 136315394;
      *&v13[4] = "PHASETransmissionModelerView.mm";
      *&v13[12] = 1024;
      *&v13[14] = 250;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d overrideGeometrySubdivisionForSource: Cannot be called when running Client/Server mode.", v13, 0x12u);
    }
  }

  else
  {
    v11 = objc_loadWeakRetained(&self->_engine);
    v12 = Phase::Controller::TaskManager::GetService<Phase::Geometry::System>(([v11 implementation] + 48), 2);

    if (!v12)
    {
      __assert_rtn("[PHASETransmissionModelerView overrideGeometrySubdivisionForSource:subdivideGeometry:]", "PHASETransmissionModelerView.mm", 255, "nullptr != geoSystem");
    }

    *v13 = &unk_284D366D8;
    *&v13[8] = [v6 geoEntityHandle];
    v13[16] = a4;
    v14 = v13;
    *&v13[17] = 0;
    *&v13[20] = 0;
    Phase::Geometry::SystemScheduler::RunDebugFunction(v12 + 2784, v13);
    std::__function::__value_func<void ()(Phase::Geometry::SystemDebugger *)>::~__value_func[abi:ne200100](v13);
  }
}

- (PHASEEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

- (void)beginTrackingSource:callback:
{
  v2 = *a2;
  if (!*a2)
  {
    __assert_rtn("operator()", "PHASETransmissionModelerView.mm", 125, "nullptr != inView");
  }

  if (*(a1 + 8) != *v2)
  {
    __assert_rtn("operator()", "PHASETransmissionModelerView.mm", 126, "handle == inView->mSource");
  }

  v4 = [[PHASETransmissionModelerSourcePointSet alloc] initWithRenderSourceView:v2];
  (*(*(a1 + 16) + 16))();
}

- (void)beginTrackingAudibleGeometryForSource:callback:
{
  v2 = *a2;
  if (!*a2)
  {
    __assert_rtn("operator()", "PHASETransmissionModelerView.mm", 150, "nullptr != inView");
  }

  if (*(a1 + 8) != *v2)
  {
    __assert_rtn("operator()", "PHASETransmissionModelerView.mm", 151, "handle == inView->mSource");
  }

  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:v2[7]];
  v4 = v2[7];
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0x7ABA4977B4617663;
    v8 = 0x5BC180D1366118D2;
    do
    {
      v9 = (v2[2] + v5);
      v10 = v9[5];
      if (v10)
      {
        v11 = [MEMORY[0x277CBEA90] dataWithBytes:*v9 length:36 * v10];
        v12 = [PHASETriangleSet alloc];
        v13 = (v7 >> 26) ^ ((v8 ^ (v8 << 23)) >> 17) ^ v7 ^ v8 ^ (v8 << 23);
        *&v14 = vcvts_n_f32_u64(v13 + v7, 0x40uLL) + 0.0;
        v8 = ((v7 ^ (v7 << 23)) >> 17) ^ (v13 >> 26) ^ v7 ^ (v7 << 23) ^ v13;
        v7 = ((v13 ^ (v13 << 23)) >> 17) ^ (v8 >> 26) ^ v13 ^ (v13 << 23) ^ v8;
        *(&v14 + 1) = vcvts_n_f32_u64(v8 + v13, 0x40uLL) + 0.0;
        v15 = [(PHASETriangleSet *)v12 initWithTriangleData:v11 color:v14];
        [v16 addObject:v15];

        v4 = v2[7];
      }

      ++v6;
      v5 += 48;
    }

    while (v4 > v6);
  }

  (*(*(a1 + 16) + 16))();
}

- (__n128)overrideMaximumSampleCountForSource:count:
{
  *a2 = &unk_284D36600;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

- (void)overrideMaximumSampleCountForSource:count:
{
  v2 = *a2;
  v3 = *(a1 + 16);
  v5[0] = *(a1 + 8);
  v5[2] = v5;
  result = std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>>>::__emplace_unique_key_args<Phase::Handle64,std::piecewise_construct_t const&,std::tuple<Phase::Handle64 const&>,std::tuple<>>(v2 + 16, v5);
  *(result + 10) = v3;
  return result;
}

- (__n128)overrideSampleHistoryLengthForSource:length:
{
  *a2 = &unk_284D36648;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

- (void)overrideSampleHistoryLengthForSource:length:
{
  v2 = *a2;
  v3 = *(a1 + 16);
  v5[0] = *(a1 + 8);
  v5[2] = v5;
  result = std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>>>::__emplace_unique_key_args<Phase::Handle64,std::piecewise_construct_t const&,std::tuple<Phase::Handle64 const&>,std::tuple<>>(v2 + 16, v5);
  *(result + 11) = v3;
  return result;
}

- (__n128)overrideSampleSubdivisionIndexForSource:index:
{
  *a2 = &unk_284D36690;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

- (void)overrideSampleSubdivisionIndexForSource:index:
{
  v2 = *a2;
  v3 = *(a1 + 16);
  v5[0] = *(a1 + 8);
  v5[2] = v5;
  result = std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>>>::__emplace_unique_key_args<Phase::Handle64,std::piecewise_construct_t const&,std::tuple<Phase::Handle64 const&>,std::tuple<>>(v2 + 16, v5);
  *(result + 12) = v3;
  return result;
}

- (__n128)overrideGeometrySubdivisionForSource:subdivideGeometry:
{
  *a2 = &unk_284D366D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

- (void)overrideGeometrySubdivisionForSource:subdivideGeometry:
{
  v2 = *a2;
  v3 = *(a1 + 16);
  v5[0] = *(a1 + 8);
  v5[2] = v5;
  result = std::__tree<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::__map_value_compare<Phase::Handle64,std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>,std::less<Phase::Handle64>,true>,std::allocator<std::__value_type<Phase::Handle64,Phase::SpatialModeler::DirectPathTransmissionDebugger::SourceDebugInfo>>>::__emplace_unique_key_args<Phase::Handle64,std::piecewise_construct_t const&,std::tuple<Phase::Handle64 const&>,std::tuple<>>(v2 + 16, v5);
  *(result + 52) = v3;
  return result;
}

@end