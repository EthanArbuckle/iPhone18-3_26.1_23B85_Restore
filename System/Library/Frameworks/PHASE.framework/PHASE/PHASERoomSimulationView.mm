@interface PHASERoomSimulationView
- (PHASEEngine)engine;
- (PHASERoomSimulationView)initWithEngine:(id)a3;
- (id).cxx_construct;
- (void)beginTrackingEnergyHistogram:(id)a3 callback:(id)a4;
- (void)beginTrackingEnergyHistogram:callback:;
- (void)beginTrackingImageSourceLocations:(id)a3 callback:(id)a4;
- (void)beginTrackingImageSourceLocations:callback:;
- (void)beginTrackingListenerEarlyResponseMetadata:(id)a3 callback:(id)a4;
- (void)beginTrackingListenerEarlyResponseMetadata:callback:;
- (void)beginTrackingListenerLateReverbMetadata:(id)a3 callback:(id)a4;
- (void)beginTrackingListenerLateReverbMetadata:callback:;
- (void)beginTrackingRayTraceIntersections:(id)a3 callback:(id)a4;
- (void)beginTrackingRayTraceIntersections:callback:;
- (void)beginTrackingRoomData:(id)a3 callback:(id)a4;
- (void)beginTrackingRoomData:callback:;
- (void)endTrackingEnergyHistogram:(id)a3;
- (void)endTrackingImageSourceLocations:(id)a3;
- (void)endTrackingListenerEarlyResponseMetadata:(id)a3;
- (void)endTrackingListenerLateReverbMetadata:(id)a3;
- (void)endTrackingRayTraceIntersections:(id)a3;
- (void)endTrackingRoomData:(id)a3;
- (void)setEarlyReflectionsAggregationCoef:(float)a3;
- (void)setEarlyReflectionsRayTraceComputeTimeLimit:(float)a3;
- (void)setEarlyScatteringAggregationCoef:(float)a3;
- (void)setEarlyScatteringEnabled:(unint64_t)a3;
- (void)setImageSourceOrder:(unint64_t)a3;
- (void)setLateReverbAggregationCoef:(float)a3;
- (void)setLateReverbRayTraceComputeTimeLimit:(float)a3;
- (void)setRayTraceIntersectionHandleCountLimit:(unint64_t)a3;
- (void)setTailcorrectionEnabled:(unint64_t)a3;
@end

@implementation PHASERoomSimulationView

- (PHASERoomSimulationView)initWithEngine:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    __assert_rtn("[PHASERoomSimulationView initWithEngine:]", "PHASERoomSimulationView.mm", 318, "engine");
  }

  v7.receiver = self;
  v7.super_class = PHASERoomSimulationView;
  v5 = [(PHASERoomSimulationView *)&v7 init];
  objc_storeWeak(&v5->_engine, v4);

  return v5;
}

- (void)beginTrackingRayTraceIntersections:(id)a3 callback:(id)a4
{
  v13[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 geoEntityHandle];
  v9 = _Block_copy(v7);
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v11 = *([WeakRetained implementation] + 368);
  v12 = [v6 geoEntityHandle];
  v13[0] = &unk_284D361E0;
  v13[1] = v8;
  v13[2] = _Block_copy(v9);
  v13[3] = v13;
  (*(*v11 + 448))(v11, v12, v13);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v13);
}

- (void)endTrackingRayTraceIntersections:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (!v4)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingRayTraceIntersections:]", "PHASERoomSimulationView.mm", 342, "listener");
  }

  v5 = [v4 engine];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (v5 != WeakRetained)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingRayTraceIntersections:]", "PHASERoomSimulationView.mm", 343, "listener.engine == _engine");
  }

  v7 = objc_loadWeakRetained(&self->_engine);
  v8 = *([v7 implementation] + 368);
  (*(*v8 + 456))(v8, [v9 geoEntityHandle]);
}

- (void)beginTrackingEnergyHistogram:(id)a3 callback:(id)a4
{
  v13[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 geoEntityHandle];
  v9 = _Block_copy(v7);
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v11 = *([WeakRetained implementation] + 368);
  v12 = [v6 geoEntityHandle];
  v13[0] = &unk_284D36228;
  v13[1] = v8;
  v13[2] = _Block_copy(v9);
  v13[3] = v13;
  (*(*v11 + 472))(v11, v12, v13);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v13);
}

- (void)endTrackingEnergyHistogram:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (!v4)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingEnergyHistogram:]", "PHASERoomSimulationView.mm", 365, "listener");
  }

  v5 = [v4 engine];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (v5 != WeakRetained)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingEnergyHistogram:]", "PHASERoomSimulationView.mm", 366, "listener.engine == _engine");
  }

  v7 = objc_loadWeakRetained(&self->_engine);
  v8 = *([v7 implementation] + 368);
  (*(*v8 + 480))(v8, [v9 geoEntityHandle]);
}

- (void)beginTrackingImageSourceLocations:(id)a3 callback:(id)a4
{
  v13[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 geoEntityHandle];
  v9 = _Block_copy(v7);
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v11 = *([WeakRetained implementation] + 368);
  v12 = [v6 geoEntityHandle];
  v13[0] = &unk_284D36270;
  v13[1] = v8;
  v13[2] = _Block_copy(v9);
  v13[3] = v13;
  (*(*v11 + 496))(v11, v12, v13);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v13);
}

- (void)endTrackingImageSourceLocations:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (!v4)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingImageSourceLocations:]", "PHASERoomSimulationView.mm", 388, "source");
  }

  v5 = [v4 engine];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (v5 != WeakRetained)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingImageSourceLocations:]", "PHASERoomSimulationView.mm", 389, "source.engine == _engine");
  }

  v7 = objc_loadWeakRetained(&self->_engine);
  v8 = *([v7 implementation] + 368);
  (*(*v8 + 504))(v8, [v9 geoEntityHandle]);
}

- (void)beginTrackingListenerEarlyResponseMetadata:(id)a3 callback:(id)a4
{
  v13[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 geoEntityHandle];
  v9 = _Block_copy(v7);
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v11 = *([WeakRetained implementation] + 368);
  v12 = [v6 geoEntityHandle];
  v13[0] = &unk_284D362B8;
  v13[1] = v8;
  v13[2] = _Block_copy(v9);
  v13[3] = v13;
  (*(*v11 + 520))(v11, v12, v13);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v13);
}

- (void)endTrackingListenerEarlyResponseMetadata:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (!v4)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingListenerEarlyResponseMetadata:]", "PHASERoomSimulationView.mm", 411, "entity");
  }

  v5 = [v4 engine];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (v5 != WeakRetained)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingListenerEarlyResponseMetadata:]", "PHASERoomSimulationView.mm", 412, "entity.engine == _engine");
  }

  v7 = objc_loadWeakRetained(&self->_engine);
  v8 = *([v7 implementation] + 368);
  (*(*v8 + 528))(v8, [v9 geoEntityHandle]);
}

- (void)beginTrackingListenerLateReverbMetadata:(id)a3 callback:(id)a4
{
  v13[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 geoEntityHandle];
  v9 = _Block_copy(v7);
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v11 = *([WeakRetained implementation] + 368);
  v12 = [v6 geoEntityHandle];
  v13[0] = &unk_284D36300;
  v13[1] = v8;
  v13[2] = _Block_copy(v9);
  v13[3] = v13;
  (*(*v11 + 544))(v11, v12, v13);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v13);
}

- (void)endTrackingListenerLateReverbMetadata:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (!v4)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingListenerLateReverbMetadata:]", "PHASERoomSimulationView.mm", 434, "entity");
  }

  v5 = [v4 engine];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (v5 != WeakRetained)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingListenerLateReverbMetadata:]", "PHASERoomSimulationView.mm", 435, "entity.engine == _engine");
  }

  v7 = objc_loadWeakRetained(&self->_engine);
  v8 = *([v7 implementation] + 368);
  (*(*v8 + 552))(v8, [v9 geoEntityHandle]);
}

- (void)beginTrackingRoomData:(id)a3 callback:(id)a4
{
  v14[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = _Block_copy(v7);
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v11 = *([WeakRetained implementation] + 368);
  v12 = [v8 geoEntityHandle];
  v13 = v8;
  v14[0] = &unk_284D36348;
  v14[1] = v13;
  v14[2] = _Block_copy(v9);
  v14[3] = v14;
  (*(*v11 + 568))(v11, v12, v14);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v14);
}

- (void)endTrackingRoomData:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingRoomData:]", "PHASERoomSimulationView.mm", 455, "nullptr != entity");
  }

  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v5 = *([WeakRetained implementation] + 368);
  (*(*v5 + 576))(v5, [v6 geoEntityHandle]);
}

- (void)setTailcorrectionEnabled:(unint64_t)a3
{
  self->_runtimeDebugParameters.mTailcorrectionEnabled = a3 != 0;
  p_runtimeDebugParameters = &self->_runtimeDebugParameters;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v5 = *([WeakRetained implementation] + 368);
  v6 = *&p_runtimeDebugParameters->mLateReverbRayTraceComputeTimeLimit;
  v12[0] = *&p_runtimeDebugParameters->mTailcorrectionEnabled;
  v12[1] = v6;
  v12[2] = *&p_runtimeDebugParameters->mRayTraceIntersectionHandleCounter;
  v13 = *&p_runtimeDebugParameters->mEarlyScatteringAggregationCoef;
  (*(*v5 + 584))(v5, v12, v7, v8, v9, v10, v11);
}

- (void)setImageSourceOrder:(unint64_t)a3
{
  self->_runtimeDebugParameters.mImageSourceOrder = a3;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v5 = *([WeakRetained implementation] + 368);
  v6 = *&self->_runtimeDebugParameters.mLateReverbRayTraceComputeTimeLimit;
  v12[0] = *&self->_runtimeDebugParameters.mTailcorrectionEnabled;
  v12[1] = v6;
  v12[2] = *&self->_runtimeDebugParameters.mRayTraceIntersectionHandleCounter;
  v13 = *&self->_runtimeDebugParameters.mEarlyScatteringAggregationCoef;
  (*(*v5 + 584))(v5, v12, v7, v8, v9, v10, v11);
}

- (void)setEarlyReflectionsRayTraceComputeTimeLimit:(float)a3
{
  self->_runtimeDebugParameters.mEarlyReflectionsRayTraceComputeTimeLimit = a3;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v5 = *([WeakRetained implementation] + 368);
  v6 = *&self->_runtimeDebugParameters.mLateReverbRayTraceComputeTimeLimit;
  v12[0] = *&self->_runtimeDebugParameters.mTailcorrectionEnabled;
  v12[1] = v6;
  v12[2] = *&self->_runtimeDebugParameters.mRayTraceIntersectionHandleCounter;
  v13 = *&self->_runtimeDebugParameters.mEarlyScatteringAggregationCoef;
  (*(*v5 + 584))(v5, v12, v7, v8, v9, v10, v11);
}

- (void)setLateReverbRayTraceComputeTimeLimit:(float)a3
{
  self->_runtimeDebugParameters.mLateReverbRayTraceComputeTimeLimit = a3;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v5 = *([WeakRetained implementation] + 368);
  v6 = *&self->_runtimeDebugParameters.mLateReverbRayTraceComputeTimeLimit;
  v12[0] = *&self->_runtimeDebugParameters.mTailcorrectionEnabled;
  v12[1] = v6;
  v12[2] = *&self->_runtimeDebugParameters.mRayTraceIntersectionHandleCounter;
  v13 = *&self->_runtimeDebugParameters.mEarlyScatteringAggregationCoef;
  (*(*v5 + 584))(v5, v12, v7, v8, v9, v10, v11);
}

- (void)setEarlyScatteringEnabled:(unint64_t)a3
{
  self->_runtimeDebugParameters.mEarlyScatteringEnabled = a3 != 0;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v5 = *([WeakRetained implementation] + 368);
  v6 = *&self->_runtimeDebugParameters.mLateReverbRayTraceComputeTimeLimit;
  v12[0] = *&self->_runtimeDebugParameters.mTailcorrectionEnabled;
  v12[1] = v6;
  v12[2] = *&self->_runtimeDebugParameters.mRayTraceIntersectionHandleCounter;
  v13 = *&self->_runtimeDebugParameters.mEarlyScatteringAggregationCoef;
  (*(*v5 + 584))(v5, v12, v7, v8, v9, v10, v11);
}

- (void)setEarlyReflectionsAggregationCoef:(float)a3
{
  self->_runtimeDebugParameters.mEarlyReflectionsAggregationCoef = a3;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v5 = *([WeakRetained implementation] + 368);
  v6 = *&self->_runtimeDebugParameters.mLateReverbRayTraceComputeTimeLimit;
  v12[0] = *&self->_runtimeDebugParameters.mTailcorrectionEnabled;
  v12[1] = v6;
  v12[2] = *&self->_runtimeDebugParameters.mRayTraceIntersectionHandleCounter;
  v13 = *&self->_runtimeDebugParameters.mEarlyScatteringAggregationCoef;
  (*(*v5 + 584))(v5, v12, v7, v8, v9, v10, v11);
}

- (void)setEarlyScatteringAggregationCoef:(float)a3
{
  self->_runtimeDebugParameters.mEarlyScatteringAggregationCoef = a3;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v5 = *([WeakRetained implementation] + 368);
  v6 = *&self->_runtimeDebugParameters.mLateReverbRayTraceComputeTimeLimit;
  v12[0] = *&self->_runtimeDebugParameters.mTailcorrectionEnabled;
  v12[1] = v6;
  v12[2] = *&self->_runtimeDebugParameters.mRayTraceIntersectionHandleCounter;
  v13 = *&self->_runtimeDebugParameters.mEarlyScatteringAggregationCoef;
  (*(*v5 + 584))(v5, v12, v7, v8, v9, v10, v11);
}

- (void)setLateReverbAggregationCoef:(float)a3
{
  self->_runtimeDebugParameters.mLateReverbAggregationCoef = a3;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v5 = *([WeakRetained implementation] + 368);
  v6 = *&self->_runtimeDebugParameters.mLateReverbRayTraceComputeTimeLimit;
  v12[0] = *&self->_runtimeDebugParameters.mTailcorrectionEnabled;
  v12[1] = v6;
  v12[2] = *&self->_runtimeDebugParameters.mRayTraceIntersectionHandleCounter;
  v13 = *&self->_runtimeDebugParameters.mEarlyScatteringAggregationCoef;
  (*(*v5 + 584))(v5, v12, v7, v8, v9, v10, v11);
}

- (void)setRayTraceIntersectionHandleCountLimit:(unint64_t)a3
{
  self->_runtimeDebugParameters.mRayTraceIntersectionHandleCountLimit = a3;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v5 = *([WeakRetained implementation] + 368);
  v6 = *&self->_runtimeDebugParameters.mLateReverbRayTraceComputeTimeLimit;
  v12[0] = *&self->_runtimeDebugParameters.mTailcorrectionEnabled;
  v12[1] = v6;
  v12[2] = *&self->_runtimeDebugParameters.mRayTraceIntersectionHandleCounter;
  v13 = *&self->_runtimeDebugParameters.mEarlyScatteringAggregationCoef;
  (*(*v5 + 584))(v5, v12, v7, v8, v9, v10, v11);
}

- (PHASEEngine)engine
{
  WeakRetained = objc_loadWeakRetained(&self->_engine);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 8) = 1;
  *(self + 2) = 2;
  *(self + 3) = 0x3C03126F3C23D70ALL;
  *(self + 4) = 0;
  *(self + 5) = 0;
  *(self + 48) = 0;
  *(self + 52) = vdup_n_s32(0x3F51EB85u);
  *(self + 15) = 1049918178;
  return self;
}

- (void)beginTrackingRayTraceIntersections:callback:
{
  v2 = *a2;
  if (!*a2)
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 329, "nullptr != inView");
  }

  if (*(a1 + 8) != *(v2 + 16))
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 330, "handle == inView->mListener");
  }

  v4 = [[PHASERoomSimulationDataSet alloc] initWithRoomSimulationDebugView:v2];
  (*(*(a1 + 16) + 16))();
}

- (void)beginTrackingEnergyHistogram:callback:
{
  v2 = *a2;
  if (!*a2)
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 352, "nullptr != inView");
  }

  if (*(a1 + 8) != *(v2 + 16))
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 353, "handle == inView->mListener");
  }

  v4 = [[PHASERoomSimulationDataSet alloc] initWithRoomSimulationDebugView:v2];
  (*(*(a1 + 16) + 16))();
}

- (void)beginTrackingImageSourceLocations:callback:
{
  v2 = *a2;
  if (!*a2)
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 375, "nullptr != inView");
  }

  if (*(a1 + 8) != *(v2 + 8))
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 376, "handle == inView->mSource");
  }

  v4 = [[PHASERoomSimulationDataSet alloc] initWithRoomSimulationDebugView:v2];
  (*(*(a1 + 16) + 16))();
}

- (void)beginTrackingListenerEarlyResponseMetadata:callback:
{
  v2 = *a2;
  if (!*a2)
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 398, "nullptr != inView");
  }

  if (*(a1 + 8) != *(v2 + 16))
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 399, "handle == inView->mListener");
  }

  v4 = [[PHASERoomSimulationDataSet alloc] initWithRoomSimulationDebugView:v2];
  (*(*(a1 + 16) + 16))();
}

- (void)beginTrackingListenerLateReverbMetadata:callback:
{
  v2 = *a2;
  if (!*a2)
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 421, "nullptr != inView");
  }

  if (*(a1 + 8) != *(v2 + 16))
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 422, "handle == inView->mListener");
  }

  v4 = [[PHASERoomSimulationDataSet alloc] initWithRoomSimulationDebugView:v2];
  (*(*(a1 + 16) + 16))();
}

- (void)beginTrackingRoomData:callback:
{
  if (!*a2)
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 443, "nullptr != inView");
  }

  if (!*(a1 + 8))
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 444, "nullptr != entity");
  }

  v3 = [[PHASERoomSimulationDataSet alloc] initWithRoomSimulationDebugView:*a2];
  (*(*(a1 + 16) + 16))();
}

@end