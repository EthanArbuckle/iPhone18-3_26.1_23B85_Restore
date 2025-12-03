@interface PHASERoomSimulationView
- (PHASEEngine)engine;
- (PHASERoomSimulationView)initWithEngine:(id)engine;
- (id).cxx_construct;
- (void)beginTrackingEnergyHistogram:(id)histogram callback:(id)callback;
- (void)beginTrackingEnergyHistogram:callback:;
- (void)beginTrackingImageSourceLocations:(id)locations callback:(id)callback;
- (void)beginTrackingImageSourceLocations:callback:;
- (void)beginTrackingListenerEarlyResponseMetadata:(id)metadata callback:(id)callback;
- (void)beginTrackingListenerEarlyResponseMetadata:callback:;
- (void)beginTrackingListenerLateReverbMetadata:(id)metadata callback:(id)callback;
- (void)beginTrackingListenerLateReverbMetadata:callback:;
- (void)beginTrackingRayTraceIntersections:(id)intersections callback:(id)callback;
- (void)beginTrackingRayTraceIntersections:callback:;
- (void)beginTrackingRoomData:(id)data callback:(id)callback;
- (void)beginTrackingRoomData:callback:;
- (void)endTrackingEnergyHistogram:(id)histogram;
- (void)endTrackingImageSourceLocations:(id)locations;
- (void)endTrackingListenerEarlyResponseMetadata:(id)metadata;
- (void)endTrackingListenerLateReverbMetadata:(id)metadata;
- (void)endTrackingRayTraceIntersections:(id)intersections;
- (void)endTrackingRoomData:(id)data;
- (void)setEarlyReflectionsAggregationCoef:(float)coef;
- (void)setEarlyReflectionsRayTraceComputeTimeLimit:(float)limit;
- (void)setEarlyScatteringAggregationCoef:(float)coef;
- (void)setEarlyScatteringEnabled:(unint64_t)enabled;
- (void)setImageSourceOrder:(unint64_t)order;
- (void)setLateReverbAggregationCoef:(float)coef;
- (void)setLateReverbRayTraceComputeTimeLimit:(float)limit;
- (void)setRayTraceIntersectionHandleCountLimit:(unint64_t)limit;
- (void)setTailcorrectionEnabled:(unint64_t)enabled;
@end

@implementation PHASERoomSimulationView

- (PHASERoomSimulationView)initWithEngine:(id)engine
{
  engineCopy = engine;
  if (!engineCopy)
  {
    __assert_rtn("[PHASERoomSimulationView initWithEngine:]", "PHASERoomSimulationView.mm", 318, "engine");
  }

  v7.receiver = self;
  v7.super_class = PHASERoomSimulationView;
  v5 = [(PHASERoomSimulationView *)&v7 init];
  objc_storeWeak(&v5->_engine, engineCopy);

  return v5;
}

- (void)beginTrackingRayTraceIntersections:(id)intersections callback:(id)callback
{
  v13[4] = *MEMORY[0x277D85DE8];
  intersectionsCopy = intersections;
  callbackCopy = callback;
  geoEntityHandle = [intersectionsCopy geoEntityHandle];
  v9 = _Block_copy(callbackCopy);
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v11 = *([WeakRetained implementation] + 368);
  geoEntityHandle2 = [intersectionsCopy geoEntityHandle];
  v13[0] = &unk_284D361E0;
  v13[1] = geoEntityHandle;
  v13[2] = _Block_copy(v9);
  v13[3] = v13;
  (*(*v11 + 448))(v11, geoEntityHandle2, v13);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v13);
}

- (void)endTrackingRayTraceIntersections:(id)intersections
{
  intersectionsCopy = intersections;
  v9 = intersectionsCopy;
  if (!intersectionsCopy)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingRayTraceIntersections:]", "PHASERoomSimulationView.mm", 342, "listener");
  }

  engine = [intersectionsCopy engine];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (engine != WeakRetained)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingRayTraceIntersections:]", "PHASERoomSimulationView.mm", 343, "listener.engine == _engine");
  }

  v7 = objc_loadWeakRetained(&self->_engine);
  v8 = *([v7 implementation] + 368);
  (*(*v8 + 456))(v8, [v9 geoEntityHandle]);
}

- (void)beginTrackingEnergyHistogram:(id)histogram callback:(id)callback
{
  v13[4] = *MEMORY[0x277D85DE8];
  histogramCopy = histogram;
  callbackCopy = callback;
  geoEntityHandle = [histogramCopy geoEntityHandle];
  v9 = _Block_copy(callbackCopy);
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v11 = *([WeakRetained implementation] + 368);
  geoEntityHandle2 = [histogramCopy geoEntityHandle];
  v13[0] = &unk_284D36228;
  v13[1] = geoEntityHandle;
  v13[2] = _Block_copy(v9);
  v13[3] = v13;
  (*(*v11 + 472))(v11, geoEntityHandle2, v13);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v13);
}

- (void)endTrackingEnergyHistogram:(id)histogram
{
  histogramCopy = histogram;
  v9 = histogramCopy;
  if (!histogramCopy)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingEnergyHistogram:]", "PHASERoomSimulationView.mm", 365, "listener");
  }

  engine = [histogramCopy engine];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (engine != WeakRetained)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingEnergyHistogram:]", "PHASERoomSimulationView.mm", 366, "listener.engine == _engine");
  }

  v7 = objc_loadWeakRetained(&self->_engine);
  v8 = *([v7 implementation] + 368);
  (*(*v8 + 480))(v8, [v9 geoEntityHandle]);
}

- (void)beginTrackingImageSourceLocations:(id)locations callback:(id)callback
{
  v13[4] = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  callbackCopy = callback;
  geoEntityHandle = [locationsCopy geoEntityHandle];
  v9 = _Block_copy(callbackCopy);
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v11 = *([WeakRetained implementation] + 368);
  geoEntityHandle2 = [locationsCopy geoEntityHandle];
  v13[0] = &unk_284D36270;
  v13[1] = geoEntityHandle;
  v13[2] = _Block_copy(v9);
  v13[3] = v13;
  (*(*v11 + 496))(v11, geoEntityHandle2, v13);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v13);
}

- (void)endTrackingImageSourceLocations:(id)locations
{
  locationsCopy = locations;
  v9 = locationsCopy;
  if (!locationsCopy)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingImageSourceLocations:]", "PHASERoomSimulationView.mm", 388, "source");
  }

  engine = [locationsCopy engine];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (engine != WeakRetained)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingImageSourceLocations:]", "PHASERoomSimulationView.mm", 389, "source.engine == _engine");
  }

  v7 = objc_loadWeakRetained(&self->_engine);
  v8 = *([v7 implementation] + 368);
  (*(*v8 + 504))(v8, [v9 geoEntityHandle]);
}

- (void)beginTrackingListenerEarlyResponseMetadata:(id)metadata callback:(id)callback
{
  v13[4] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  callbackCopy = callback;
  geoEntityHandle = [metadataCopy geoEntityHandle];
  v9 = _Block_copy(callbackCopy);
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v11 = *([WeakRetained implementation] + 368);
  geoEntityHandle2 = [metadataCopy geoEntityHandle];
  v13[0] = &unk_284D362B8;
  v13[1] = geoEntityHandle;
  v13[2] = _Block_copy(v9);
  v13[3] = v13;
  (*(*v11 + 520))(v11, geoEntityHandle2, v13);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v13);
}

- (void)endTrackingListenerEarlyResponseMetadata:(id)metadata
{
  metadataCopy = metadata;
  v9 = metadataCopy;
  if (!metadataCopy)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingListenerEarlyResponseMetadata:]", "PHASERoomSimulationView.mm", 411, "entity");
  }

  engine = [metadataCopy engine];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (engine != WeakRetained)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingListenerEarlyResponseMetadata:]", "PHASERoomSimulationView.mm", 412, "entity.engine == _engine");
  }

  v7 = objc_loadWeakRetained(&self->_engine);
  v8 = *([v7 implementation] + 368);
  (*(*v8 + 528))(v8, [v9 geoEntityHandle]);
}

- (void)beginTrackingListenerLateReverbMetadata:(id)metadata callback:(id)callback
{
  v13[4] = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  callbackCopy = callback;
  geoEntityHandle = [metadataCopy geoEntityHandle];
  v9 = _Block_copy(callbackCopy);
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v11 = *([WeakRetained implementation] + 368);
  geoEntityHandle2 = [metadataCopy geoEntityHandle];
  v13[0] = &unk_284D36300;
  v13[1] = geoEntityHandle;
  v13[2] = _Block_copy(v9);
  v13[3] = v13;
  (*(*v11 + 544))(v11, geoEntityHandle2, v13);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v13);
}

- (void)endTrackingListenerLateReverbMetadata:(id)metadata
{
  metadataCopy = metadata;
  v9 = metadataCopy;
  if (!metadataCopy)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingListenerLateReverbMetadata:]", "PHASERoomSimulationView.mm", 434, "entity");
  }

  engine = [metadataCopy engine];
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  if (engine != WeakRetained)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingListenerLateReverbMetadata:]", "PHASERoomSimulationView.mm", 435, "entity.engine == _engine");
  }

  v7 = objc_loadWeakRetained(&self->_engine);
  v8 = *([v7 implementation] + 368);
  (*(*v8 + 552))(v8, [v9 geoEntityHandle]);
}

- (void)beginTrackingRoomData:(id)data callback:(id)callback
{
  v14[4] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  callbackCopy = callback;
  v8 = dataCopy;
  v9 = _Block_copy(callbackCopy);
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v11 = *([WeakRetained implementation] + 368);
  geoEntityHandle = [v8 geoEntityHandle];
  v13 = v8;
  v14[0] = &unk_284D36348;
  v14[1] = v13;
  v14[2] = _Block_copy(v9);
  v14[3] = v14;
  (*(*v11 + 568))(v11, geoEntityHandle, v14);
  std::__function::__value_func<void ()(Phase::SpatialModeler::RoomSimulationDebugger::RoomSimulationDebugView *)>::~__value_func[abi:ne200100](v14);
}

- (void)endTrackingRoomData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    __assert_rtn("[PHASERoomSimulationView endTrackingRoomData:]", "PHASERoomSimulationView.mm", 455, "nullptr != entity");
  }

  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v5 = *([WeakRetained implementation] + 368);
  (*(*v5 + 576))(v5, [dataCopy geoEntityHandle]);
}

- (void)setTailcorrectionEnabled:(unint64_t)enabled
{
  self->_runtimeDebugParameters.mTailcorrectionEnabled = enabled != 0;
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

- (void)setImageSourceOrder:(unint64_t)order
{
  self->_runtimeDebugParameters.mImageSourceOrder = order;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v5 = *([WeakRetained implementation] + 368);
  v6 = *&self->_runtimeDebugParameters.mLateReverbRayTraceComputeTimeLimit;
  v12[0] = *&self->_runtimeDebugParameters.mTailcorrectionEnabled;
  v12[1] = v6;
  v12[2] = *&self->_runtimeDebugParameters.mRayTraceIntersectionHandleCounter;
  v13 = *&self->_runtimeDebugParameters.mEarlyScatteringAggregationCoef;
  (*(*v5 + 584))(v5, v12, v7, v8, v9, v10, v11);
}

- (void)setEarlyReflectionsRayTraceComputeTimeLimit:(float)limit
{
  self->_runtimeDebugParameters.mEarlyReflectionsRayTraceComputeTimeLimit = limit;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v5 = *([WeakRetained implementation] + 368);
  v6 = *&self->_runtimeDebugParameters.mLateReverbRayTraceComputeTimeLimit;
  v12[0] = *&self->_runtimeDebugParameters.mTailcorrectionEnabled;
  v12[1] = v6;
  v12[2] = *&self->_runtimeDebugParameters.mRayTraceIntersectionHandleCounter;
  v13 = *&self->_runtimeDebugParameters.mEarlyScatteringAggregationCoef;
  (*(*v5 + 584))(v5, v12, v7, v8, v9, v10, v11);
}

- (void)setLateReverbRayTraceComputeTimeLimit:(float)limit
{
  self->_runtimeDebugParameters.mLateReverbRayTraceComputeTimeLimit = limit;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v5 = *([WeakRetained implementation] + 368);
  v6 = *&self->_runtimeDebugParameters.mLateReverbRayTraceComputeTimeLimit;
  v12[0] = *&self->_runtimeDebugParameters.mTailcorrectionEnabled;
  v12[1] = v6;
  v12[2] = *&self->_runtimeDebugParameters.mRayTraceIntersectionHandleCounter;
  v13 = *&self->_runtimeDebugParameters.mEarlyScatteringAggregationCoef;
  (*(*v5 + 584))(v5, v12, v7, v8, v9, v10, v11);
}

- (void)setEarlyScatteringEnabled:(unint64_t)enabled
{
  self->_runtimeDebugParameters.mEarlyScatteringEnabled = enabled != 0;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v5 = *([WeakRetained implementation] + 368);
  v6 = *&self->_runtimeDebugParameters.mLateReverbRayTraceComputeTimeLimit;
  v12[0] = *&self->_runtimeDebugParameters.mTailcorrectionEnabled;
  v12[1] = v6;
  v12[2] = *&self->_runtimeDebugParameters.mRayTraceIntersectionHandleCounter;
  v13 = *&self->_runtimeDebugParameters.mEarlyScatteringAggregationCoef;
  (*(*v5 + 584))(v5, v12, v7, v8, v9, v10, v11);
}

- (void)setEarlyReflectionsAggregationCoef:(float)coef
{
  self->_runtimeDebugParameters.mEarlyReflectionsAggregationCoef = coef;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v5 = *([WeakRetained implementation] + 368);
  v6 = *&self->_runtimeDebugParameters.mLateReverbRayTraceComputeTimeLimit;
  v12[0] = *&self->_runtimeDebugParameters.mTailcorrectionEnabled;
  v12[1] = v6;
  v12[2] = *&self->_runtimeDebugParameters.mRayTraceIntersectionHandleCounter;
  v13 = *&self->_runtimeDebugParameters.mEarlyScatteringAggregationCoef;
  (*(*v5 + 584))(v5, v12, v7, v8, v9, v10, v11);
}

- (void)setEarlyScatteringAggregationCoef:(float)coef
{
  self->_runtimeDebugParameters.mEarlyScatteringAggregationCoef = coef;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v5 = *([WeakRetained implementation] + 368);
  v6 = *&self->_runtimeDebugParameters.mLateReverbRayTraceComputeTimeLimit;
  v12[0] = *&self->_runtimeDebugParameters.mTailcorrectionEnabled;
  v12[1] = v6;
  v12[2] = *&self->_runtimeDebugParameters.mRayTraceIntersectionHandleCounter;
  v13 = *&self->_runtimeDebugParameters.mEarlyScatteringAggregationCoef;
  (*(*v5 + 584))(v5, v12, v7, v8, v9, v10, v11);
}

- (void)setLateReverbAggregationCoef:(float)coef
{
  self->_runtimeDebugParameters.mLateReverbAggregationCoef = coef;
  WeakRetained = objc_loadWeakRetained(&self->_engine);
  v5 = *([WeakRetained implementation] + 368);
  v6 = *&self->_runtimeDebugParameters.mLateReverbRayTraceComputeTimeLimit;
  v12[0] = *&self->_runtimeDebugParameters.mTailcorrectionEnabled;
  v12[1] = v6;
  v12[2] = *&self->_runtimeDebugParameters.mRayTraceIntersectionHandleCounter;
  v13 = *&self->_runtimeDebugParameters.mEarlyScatteringAggregationCoef;
  (*(*v5 + 584))(v5, v12, v7, v8, v9, v10, v11);
}

- (void)setRayTraceIntersectionHandleCountLimit:(unint64_t)limit
{
  self->_runtimeDebugParameters.mRayTraceIntersectionHandleCountLimit = limit;
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

  if (*(self + 8) != *(v2 + 16))
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 330, "handle == inView->mListener");
  }

  v4 = [[PHASERoomSimulationDataSet alloc] initWithRoomSimulationDebugView:v2];
  (*(*(self + 16) + 16))();
}

- (void)beginTrackingEnergyHistogram:callback:
{
  v2 = *a2;
  if (!*a2)
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 352, "nullptr != inView");
  }

  if (*(self + 8) != *(v2 + 16))
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 353, "handle == inView->mListener");
  }

  v4 = [[PHASERoomSimulationDataSet alloc] initWithRoomSimulationDebugView:v2];
  (*(*(self + 16) + 16))();
}

- (void)beginTrackingImageSourceLocations:callback:
{
  v2 = *a2;
  if (!*a2)
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 375, "nullptr != inView");
  }

  if (*(self + 8) != *(v2 + 8))
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 376, "handle == inView->mSource");
  }

  v4 = [[PHASERoomSimulationDataSet alloc] initWithRoomSimulationDebugView:v2];
  (*(*(self + 16) + 16))();
}

- (void)beginTrackingListenerEarlyResponseMetadata:callback:
{
  v2 = *a2;
  if (!*a2)
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 398, "nullptr != inView");
  }

  if (*(self + 8) != *(v2 + 16))
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 399, "handle == inView->mListener");
  }

  v4 = [[PHASERoomSimulationDataSet alloc] initWithRoomSimulationDebugView:v2];
  (*(*(self + 16) + 16))();
}

- (void)beginTrackingListenerLateReverbMetadata:callback:
{
  v2 = *a2;
  if (!*a2)
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 421, "nullptr != inView");
  }

  if (*(self + 8) != *(v2 + 16))
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 422, "handle == inView->mListener");
  }

  v4 = [[PHASERoomSimulationDataSet alloc] initWithRoomSimulationDebugView:v2];
  (*(*(self + 16) + 16))();
}

- (void)beginTrackingRoomData:callback:
{
  if (!*a2)
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 443, "nullptr != inView");
  }

  if (!*(self + 8))
  {
    __assert_rtn("operator()", "PHASERoomSimulationView.mm", 444, "nullptr != entity");
  }

  v3 = [[PHASERoomSimulationDataSet alloc] initWithRoomSimulationDebugView:*a2];
  (*(*(self + 16) + 16))();
}

@end