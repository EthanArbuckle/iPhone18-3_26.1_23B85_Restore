@interface PHASERoomSimulationDataSet
- (PHASERoomSimulationDataSet)init;
- (PHASERoomSimulationDataSet)initWithRoomSimulationDebugView:(const void *)view;
- (__n128)getImageSourceIntersectionAt:(unint64_t)at intersectionIndex:(unint64_t)index;
- (__n128)getImageSourceLocationAtIndex:(unint64_t)index;
- (__n128)getIntersectionAtIndex:(unint64_t)index;
- (__n128)getOriginAtIndex:(unint64_t)index;
- (double)getEarlyMetadataDirectionAt:(unint64_t)at;
- (double)getLateMetadataDirectionAt:(unint64_t)at;
- (float)getCenterFrequencyAtSubband:(int64_t)subband;
- (float)getEarlyMetadataDelayAt:(int64_t)at;
- (float)getEarlyMetadataPolarityAt:(int64_t)at;
- (float)getEarlyMetadataSubbandGainAt:(int64_t)at subbandIndex:(int64_t)index;
- (float)getEquivalentAbsorptionAreaAtSubband:(int64_t)subband;
- (float)getLateMetadataDelayAt:(int64_t)at;
- (float)getLateMetadataPolarityAt:(int64_t)at;
- (float)getLateMetadataSubbandGainAt:(int64_t)at subbandIndex:(int64_t)index;
- (float)getMeanAbsorptionAtSubband:(int64_t)subband;
- (float)getRt60AtSubband:(int64_t)subband;
- (float)getTimeHistogramBin:(int64_t)bin timeIndex:(int64_t)index;
- (id).cxx_construct;
- (int64_t)getImageSourceIntersectionContainerSize:(int64_t)size;
- (unint64_t)getRoomDataSubbandCount;
@end

@implementation PHASERoomSimulationDataSet

- (PHASERoomSimulationDataSet)init
{
  v3.receiver = self;
  v3.super_class = PHASERoomSimulationDataSet;
  return [(PHASERoomSimulationDataSet *)&v3 init];
}

- (int64_t)getImageSourceIntersectionContainerSize:(int64_t)size
{
  v11 = *MEMORY[0x277D85DE8];
  if (size < 0 || (begin = self->_imageSourceIntersectionPoints.__begin_, 0xAAAAAAAAAAAAAAABLL * ((self->_imageSourceIntersectionPoints.__end_ - begin) >> 3) <= size))
  {
    v5 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PHASERoomSimulationView.mm";
      v9 = 1024;
      v10 = 76;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: index >= 0 && index < _imageSourceIntersectionPoints.size() is false.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: index >= 0 && index < _imageSourceIntersectionPoints.size() is false.");
  }

  return (begin[3 * size + 1] - begin[3 * size]) >> 4;
}

- (unint64_t)getRoomDataSubbandCount
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = self->_roomData.mMeanAbsorption.__end_ - self->_roomData.mMeanAbsorption.__begin_;
  if (v2 != self->_roomData.mRt60.__end_ - self->_roomData.mRt60.__begin_)
  {
    v4 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "PHASERoomSimulationView.mm";
      v10 = 1024;
      v11 = 113;
      _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: _roomData.mMeanAbsorption.size() == _roomData.mRt60.size() is false.", &v8, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: _roomData.mMeanAbsorption.size() == _roomData.mRt60.size() is false.");
  }

  if (v2 != self->_roomData.mCenterFrequencies.__end_ - self->_roomData.mCenterFrequencies.__begin_)
  {
    v6 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "PHASERoomSimulationView.mm";
      v10 = 1024;
      v11 = 115;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: _roomData.mMeanAbsorption.size() == _roomData.mCenterFrequencies.size() is false.", &v8, 0x12u);
    }

    v7 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v7, "PRECONDITION: _roomData.mMeanAbsorption.size() == _roomData.mCenterFrequencies.size() is false.");
  }

  return v2 >> 2;
}

- (float)getMeanAbsorptionAtSubband:(int64_t)subband
{
  v11 = *MEMORY[0x277D85DE8];
  if (subband < 0 || (begin = self->_roomData.mMeanAbsorption.__begin_, subband >= (self->_roomData.mMeanAbsorption.__end_ - begin)))
  {
    v5 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PHASERoomSimulationView.mm";
      v9 = 1024;
      v10 = 123;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: subbandIndex >= 0 && subbandIndex < _roomData.mMeanAbsorption.size() is false.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: subbandIndex >= 0 && subbandIndex < _roomData.mMeanAbsorption.size() is false.");
  }

  return begin[subband];
}

- (float)getEquivalentAbsorptionAreaAtSubband:(int64_t)subband
{
  v11 = *MEMORY[0x277D85DE8];
  if (subband < 0 || (begin = self->_roomData.mEquivalentAbsorptionArea.__begin_, subband >= (self->_roomData.mEquivalentAbsorptionArea.__end_ - begin)))
  {
    v5 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PHASERoomSimulationView.mm";
      v9 = 1024;
      v10 = 131;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: subbandIndex >= 0 && subbandIndex < _roomData.mEquivalentAbsorptionArea.size() is false.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: subbandIndex >= 0 && subbandIndex < _roomData.mEquivalentAbsorptionArea.size() is false.");
  }

  return begin[subband];
}

- (float)getRt60AtSubband:(int64_t)subband
{
  v11 = *MEMORY[0x277D85DE8];
  if (subband < 0 || (begin = self->_roomData.mRt60.__begin_, subband >= (self->_roomData.mRt60.__end_ - begin)))
  {
    v5 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PHASERoomSimulationView.mm";
      v9 = 1024;
      v10 = 139;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: subbandIndex >= 0 && subbandIndex < _roomData.mRt60.size() is false.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: subbandIndex >= 0 && subbandIndex < _roomData.mRt60.size() is false.");
  }

  return begin[subband];
}

- (float)getCenterFrequencyAtSubband:(int64_t)subband
{
  v11 = *MEMORY[0x277D85DE8];
  if (subband < 0 || (begin = self->_roomData.mCenterFrequencies.__begin_, subband >= (self->_roomData.mCenterFrequencies.__end_ - begin)))
  {
    v5 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PHASERoomSimulationView.mm";
      v9 = 1024;
      v10 = 146;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: subbandIndex >= 0 && subbandIndex < _roomData.mCenterFrequencies.size() is false.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: subbandIndex >= 0 && subbandIndex < _roomData.mCenterFrequencies.size() is false.");
  }

  return begin[subband];
}

- (double)getEarlyMetadataDirectionAt:(unint64_t)at
{
  v11 = *MEMORY[0x277D85DE8];
  if ((at & 0x8000000000000000) != 0 || (v3 = *(self + 22), 0xAAAAAAAAAAAAAAABLL * ((*(self + 23) - v3) >> 2) <= at))
  {
    v5 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PHASERoomSimulationView.mm";
      v9 = 1024;
      v10 = 153;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: index >= 0 && index < _earlyResponseMetadata.mDirections.size() is false.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: index >= 0 && index < _earlyResponseMetadata.mDirections.size() is false.");
  }

  return *(v3 + 12 * at);
}

- (float)getEarlyMetadataDelayAt:(int64_t)at
{
  v11 = *MEMORY[0x277D85DE8];
  if (at < 0 || (begin = self->_earlyResponseMetadata.mDelaysInSeconds.__begin_, at >= (self->_earlyResponseMetadata.mDelaysInSeconds.__end_ - begin)))
  {
    v5 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PHASERoomSimulationView.mm";
      v9 = 1024;
      v10 = 161;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: index >= 0 && index < _earlyResponseMetadata.mDelaysInSeconds.size() is false.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: index >= 0 && index < _earlyResponseMetadata.mDelaysInSeconds.size() is false.");
  }

  return begin[at];
}

- (float)getEarlyMetadataPolarityAt:(int64_t)at
{
  v11 = *MEMORY[0x277D85DE8];
  if (at < 0 || (begin = self->_earlyResponseMetadata.mInvertPolarity.__begin_, (self->_earlyResponseMetadata.mInvertPolarity.__end_ - begin) <= at))
  {
    v5 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PHASERoomSimulationView.mm";
      v9 = 1024;
      v10 = 168;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: index >= 0 && index < _earlyResponseMetadata.mInvertPolarity.size() is false.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: index >= 0 && index < _earlyResponseMetadata.mInvertPolarity.size() is false.");
  }

  result = -1.0;
  if (!begin[at])
  {
    return 1.0;
  }

  return result;
}

- (float)getEarlyMetadataSubbandGainAt:(int64_t)at subbandIndex:(int64_t)index
{
  v16 = *MEMORY[0x277D85DE8];
  if (at < 0 || (begin = self->_earlyResponseMetadata.mSubbandGains.__begin_, 0xAAAAAAAAAAAAAAABLL * ((self->_earlyResponseMetadata.mSubbandGains.__end_ - begin) >> 3) <= at))
  {
    v8 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "PHASERoomSimulationView.mm";
      v14 = 1024;
      v15 = 176;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: index >= 0 && index < _earlyResponseMetadata.mSubbandGains.size() is false.", &v12, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: index >= 0 && index < _earlyResponseMetadata.mSubbandGains.size() is false.");
  }

  if (index < 0 || (v6 = &begin[24 * at], v5 = *v6, index >= ((*(v6 + 1) - *v6) >> 2)))
  {
    v10 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "PHASERoomSimulationView.mm";
      v14 = 1024;
      v15 = 179;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: subbandIndex >= 0 && subbandIndex < _earlyResponseMetadata.mSubbandGains[index].size() is false.", &v12, 0x12u);
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "PRECONDITION: subbandIndex >= 0 && subbandIndex < _earlyResponseMetadata.mSubbandGains[index].size() is false.");
  }

  return *(v5 + 4 * index);
}

- (double)getLateMetadataDirectionAt:(unint64_t)at
{
  v11 = *MEMORY[0x277D85DE8];
  if ((at & 0x8000000000000000) != 0 || (v3 = *(self + 35), 0xAAAAAAAAAAAAAAABLL * ((*(self + 36) - v3) >> 2) <= at))
  {
    v5 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PHASERoomSimulationView.mm";
      v9 = 1024;
      v10 = 192;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: index >= 0 && index < _lateReverberationMetadata.mDirections.size() is false.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: index >= 0 && index < _lateReverberationMetadata.mDirections.size() is false.");
  }

  return *(v3 + 12 * at);
}

- (float)getLateMetadataDelayAt:(int64_t)at
{
  v11 = *MEMORY[0x277D85DE8];
  if (at < 0 || (begin = self->_lateReverberationMetadata.mDelaysInSeconds.__begin_, at >= (self->_lateReverberationMetadata.mDelaysInSeconds.__end_ - begin)))
  {
    v5 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PHASERoomSimulationView.mm";
      v9 = 1024;
      v10 = 200;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: index >= 0 && index < _lateReverberationMetadata.mDelaysInSeconds.size() is false.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: index >= 0 && index < _lateReverberationMetadata.mDelaysInSeconds.size() is false.");
  }

  return begin[at];
}

- (float)getLateMetadataPolarityAt:(int64_t)at
{
  v11 = *MEMORY[0x277D85DE8];
  if (at < 0 || (begin = self->_lateReverberationMetadata.mInvertPolarity.__begin_, (self->_lateReverberationMetadata.mInvertPolarity.__end_ - begin) <= at))
  {
    v5 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PHASERoomSimulationView.mm";
      v9 = 1024;
      v10 = 207;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: index >= 0 && index < _lateReverberationMetadata.mInvertPolarity.size() is false.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: index >= 0 && index < _lateReverberationMetadata.mInvertPolarity.size() is false.");
  }

  result = -1.0;
  if (!begin[at])
  {
    return 1.0;
  }

  return result;
}

- (float)getLateMetadataSubbandGainAt:(int64_t)at subbandIndex:(int64_t)index
{
  v16 = *MEMORY[0x277D85DE8];
  if (at < 0 || (begin = self->_lateReverberationMetadata.mSubbandGains.__begin_, 0xAAAAAAAAAAAAAAABLL * ((self->_lateReverberationMetadata.mSubbandGains.__end_ - begin) >> 3) <= at))
  {
    v8 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "PHASERoomSimulationView.mm";
      v14 = 1024;
      v15 = 215;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: index >= 0 && index < _lateReverberationMetadata.mSubbandGains.size() is false.", &v12, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: index >= 0 && index < _lateReverberationMetadata.mSubbandGains.size() is false.");
  }

  if (index < 0 || (v6 = &begin[24 * at], v5 = *v6, index >= ((*(v6 + 1) - *v6) >> 2)))
  {
    v10 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315394;
      v13 = "PHASERoomSimulationView.mm";
      v14 = 1024;
      v15 = 218;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: subbandIndex >= 0 && subbandIndex < _lateReverberationMetadata.mSubbandGains[index].size() is false.", &v12, 0x12u);
    }

    v11 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v11, "PRECONDITION: subbandIndex >= 0 && subbandIndex < _lateReverberationMetadata.mSubbandGains[index].size() is false.");
  }

  return *(v5 + 4 * index);
}

- (PHASERoomSimulationDataSet)initWithRoomSimulationDebugView:(const void *)view
{
  v52.receiver = self;
  v52.super_class = PHASERoomSimulationDataSet;
  v4 = [(PHASERoomSimulationDataSet *)&v52 init];
  *(v4 + 1) = *(view + 2);
  *(v4 + 2) = *(view + 1);
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v4 + 3, 0x6DB6DB6DB6DB6DB7 * ((*(view + 5) - *(view + 4)) >> 2));
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v4 + 6, 0x6DB6DB6DB6DB6DB7 * ((*(view + 5) - *(view + 4)) >> 2));
  v6 = *(v4 + 3);
  if (*(v4 + 4) != v6)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = *(view + 4) + v7;
      *&v5 = *v9;
      DWORD2(v5) = *(v9 + 8);
      *(v6 + 16 * v8) = v5;
      v10 = *(view + 4) + v7;
      *&v5 = *(v10 + 12);
      DWORD2(v5) = *(v10 + 20);
      *(*(v4 + 6) + 16 * v8++) = v5;
      v6 = *(v4 + 3);
      v7 += 28;
    }

    while (v8 < (*(v4 + 4) - v6) >> 4);
  }

  v11 = *(v4 + 15);
  *(v4 + 61) = *(view + 7);
  v12 = *(view + 9);
  *(v4 + 62) = *(view + 8);
  v13 = *(view + 10);
  v14 = v13 - v12;
  v15 = *(v4 + 17);
  if (v15 - v11 < (v13 - v12))
  {
    v16 = v14 >> 2;
    if (v11)
    {
      *(v4 + 16) = v11;
      operator delete(v11);
      v15 = 0;
      *(v4 + 15) = 0;
      *(v4 + 16) = 0;
      *(v4 + 17) = 0;
    }

    if (!(v16 >> 62))
    {
      v17 = v15 >> 1;
      if (v15 >> 1 <= v16)
      {
        v17 = v16;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v18 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v17;
      }

      std::vector<float>::__vallocate[abi:ne200100]((v4 + 120), v18);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v19 = *(v4 + 16);
  v20 = v19 - v11;
  if (v19 - v11 >= v14)
  {
    if (v13 != v12)
    {
      memmove(v11, v12, v13 - v12);
    }

    v25 = &v11[v14];
  }

  else
  {
    v21 = &v12[v20];
    if (v19 != v11)
    {
      memmove(v11, v12, v20);
      v19 = *(v4 + 16);
    }

    v22 = v19;
    if (v21 != v13)
    {
      v22 = v19;
      v23 = v19;
      do
      {
        v24 = *v21;
        v21 += 4;
        *v23 = v24;
        v23 += 4;
        v22 += 4;
      }

      while (v21 != v13);
    }

    v25 = v22;
  }

  *(v4 + 16) = v25;
  v26 = 0xCCCCCCCCCCCCCCCDLL * ((*(view + 14) - *(view + 13)) >> 3);
  *(v4 + 63) = v26;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm(v4 + 9, v26);
  v28 = *(v4 + 63);
  v29 = *(v4 + 12);
  v30 = *(v4 + 13);
  v31 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v29) >> 3);
  v32 = v28 - v31;
  if (v28 <= v31)
  {
    if (v28 < v31)
    {
      v36 = v29 + 24 * v28;
      if (v30 != v36)
      {
        v37 = *(v4 + 13);
        do
        {
          v39 = *(v37 - 24);
          v37 -= 24;
          v38 = v39;
          if (v39)
          {
            *(v30 - 16) = v38;
            operator delete(v38);
          }

          v30 = v37;
        }

        while (v37 != v36);
      }

      *(v4 + 13) = v36;
    }
  }

  else
  {
    v33 = *(v4 + 14);
    if (0xAAAAAAAAAAAAAAABLL * ((v33 - v30) >> 3) < v32)
    {
      if (v28 <= 0xAAAAAAAAAAAAAAALL)
      {
        v34 = 0xAAAAAAAAAAAAAAABLL * ((v33 - v29) >> 3);
        if (2 * v34 > v28)
        {
          v28 = 2 * v34;
        }

        if (v34 >= 0x555555555555555)
        {
          v35 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v35 = v28;
        }

        if (v35 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(v4 + 13), 24 * ((24 * v32 - 24) / 0x18) + 24);
    *(v4 + 13) = v30 + 24 * ((24 * v32 - 24) / 0x18) + 24;
  }

  v40 = *(v4 + 9);
  if (*(v4 + 10) != v40)
  {
    v41 = 0;
    do
    {
      v42 = *(view + 13) + 40 * v41;
      *&v27 = *v42;
      DWORD2(v27) = *(v42 + 8);
      *(v40 + 16 * v41) = v27;
      v43 = *(view + 13) + 40 * v41;
      v45 = *(v43 + 16);
      v44 = *(v43 + 24);
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE6resizeEm((*(v4 + 12) + 24 * v41), 0xAAAAAAAAAAAAAAABLL * ((v44 - v45) >> 2));
      if (v44 != v45)
      {
        v46 = 0;
        v47 = 0;
        if (0xAAAAAAAAAAAAAAABLL * ((v44 - v45) >> 2) <= 1)
        {
          v48 = 1;
        }

        else
        {
          v48 = 0xAAAAAAAAAAAAAAABLL * ((v44 - v45) >> 2);
        }

        do
        {
          v49 = *(*(view + 13) + 40 * v41 + 16) + v46;
          *&v27 = *v49;
          DWORD2(v27) = *(v49 + 8);
          *(*(*(v4 + 12) + 24 * v41) + 16 * v47++) = v27;
          v46 += 12;
        }

        while (v48 != v47);
      }

      ++v41;
      v40 = *(v4 + 9);
    }

    while (v41 < (*(v4 + 10) - v40) >> 4);
  }

  *(v4 + 21) = *(view + 16);
  if (v4 + 168 != view + 128)
  {
    std::vector<Phase::Vector<float,3ul>>::__assign_with_size[abi:ne200100]<Phase::Vector<float,3ul>*,Phase::Vector<float,3ul>*>(v4 + 22, *(view + 17), *(view + 18), 0xAAAAAAAAAAAAAAABLL * ((*(view + 18) - *(view + 17)) >> 2));
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v4 + 25, *(view + 20), *(view + 21), (*(view + 21) - *(view + 20)) >> 2);
    std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v4 + 28, *(view + 23), *(view + 24), 0xAAAAAAAAAAAAAAABLL * ((*(view + 24) - *(view + 23)) >> 3));
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v4 + 31, *(view + 26), *(view + 27), *(view + 27) - *(view + 26));
  }

  *(v4 + 34) = *(view + 29);
  if (v4 + 272 != view + 232)
  {
    std::vector<Phase::Vector<float,3ul>>::__assign_with_size[abi:ne200100]<Phase::Vector<float,3ul>*,Phase::Vector<float,3ul>*>(v4 + 35, *(view + 30), *(view + 31), 0xAAAAAAAAAAAAAAABLL * ((*(view + 31) - *(view + 30)) >> 2));
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v4 + 38, *(view + 33), *(view + 34), (*(view + 34) - *(view + 33)) >> 2);
    std::vector<std::vector<float>>::__assign_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v4 + 41, *(view + 36), *(view + 37), 0xAAAAAAAAAAAAAAABLL * ((*(view + 37) - *(view + 36)) >> 3));
    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<unsigned char *,unsigned char *>(v4 + 44, *(view + 39), *(view + 40), *(view + 40) - *(view + 39));
  }

  v50 = *(view + 42);
  *(v4 + 96) = *(view + 86);
  *(v4 + 47) = v50;
  if (v4 + 376 != view + 336)
  {
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v4 + 49, *(view + 44), *(view + 45), (*(view + 45) - *(view + 44)) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v4 + 52, *(view + 47), *(view + 48), (*(view + 48) - *(view + 47)) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v4 + 55, *(view + 50), *(view + 51), (*(view + 51) - *(view + 50)) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v4 + 58, *(view + 53), *(view + 54), (*(view + 54) - *(view + 53)) >> 2);
  }

  return v4;
}

- (__n128)getOriginAtIndex:(unint64_t)index
{
  v11 = *MEMORY[0x277D85DE8];
  if ((index & 0x8000000000000000) != 0 || (v3 = *(self + 3), index >= (*(self + 4) - v3) >> 4))
  {
    v5 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PHASERoomSimulationView.mm";
      v9 = 1024;
      v10 = 269;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: index >= 0 && index < _rayOriginPoints.size() is false.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: index >= 0 && index < _rayOriginPoints.size() is false.");
  }

  return *(v3 + 16 * index);
}

- (__n128)getIntersectionAtIndex:(unint64_t)index
{
  v11 = *MEMORY[0x277D85DE8];
  if ((index & 0x8000000000000000) != 0 || (v3 = *(self + 6), index >= (*(self + 7) - v3) >> 4))
  {
    v5 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PHASERoomSimulationView.mm";
      v9 = 1024;
      v10 = 275;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: index >= 0 && index < _rayIntersectPoints.size() is false.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: index >= 0 && index < _rayIntersectPoints.size() is false.");
  }

  return *(v3 + 16 * index);
}

- (__n128)getImageSourceLocationAtIndex:(unint64_t)index
{
  v11 = *MEMORY[0x277D85DE8];
  if ((index & 0x8000000000000000) != 0 || (v3 = *(self + 9), index >= (*(self + 10) - v3) >> 4))
  {
    v5 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PHASERoomSimulationView.mm";
      v9 = 1024;
      v10 = 281;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: index >= 0 && index < _imageSourcePoints.size() is false.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: index >= 0 && index < _imageSourcePoints.size() is false.");
  }

  return *(v3 + 16 * index);
}

- (__n128)getImageSourceIntersectionAt:(unint64_t)at intersectionIndex:(unint64_t)index
{
  v14 = *MEMORY[0x277D85DE8];
  if ((at & 0x8000000000000000) != 0 || at >= (*(self + 10) - *(self + 9)) >> 4)
  {
    v6 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "PHASERoomSimulationView.mm";
      v12 = 1024;
      v13 = 287;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: ISindex >= 0 && ISindex < _imageSourcePoints.size() is false.", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: ISindex >= 0 && ISindex < _imageSourcePoints.size() is false.");
  }

  if ((index & 0x8000000000000000) != 0 || (v4 = *(*(self + 12) + 24 * at), index >= (*(*(self + 12) + 24 * at + 8) - v4) >> 4))
  {
    v8 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "PHASERoomSimulationView.mm";
      v12 = 1024;
      v13 = 289;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: intersectionIndex >= 0 && intersectionIndex < _imageSourceIntersectionPoints[ISindex].size() is false.", &v10, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "PRECONDITION: intersectionIndex >= 0 && intersectionIndex < _imageSourceIntersectionPoints[ISindex].size() is false.");
  }

  return *(v4 + 16 * index);
}

- (float)getTimeHistogramBin:(int64_t)bin timeIndex:(int64_t)index
{
  v14 = *MEMORY[0x277D85DE8];
  if (bin < 0 || self->_numHistogramFrequencies <= bin)
  {
    v6 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "PHASERoomSimulationView.mm";
      v12 = 1024;
      v13 = 296;
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: fIndex >= 0 && fIndex < _numHistogramFrequencies is false.", &v10, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: fIndex >= 0 && fIndex < _numHistogramFrequencies is false.");
  }

  if (index < 0 || (numHistogramTimeSteps = self->_numHistogramTimeSteps, numHistogramTimeSteps <= index))
  {
    v8 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "PHASERoomSimulationView.mm";
      v12 = 1024;
      v13 = 297;
      _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: tIndex >= 0 && tIndex < _numHistogramTimeSteps is false.", &v10, 0x12u);
    }

    v9 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v9, "PRECONDITION: tIndex >= 0 && tIndex < _numHistogramTimeSteps is false.");
  }

  return self->_timeFrequencyHistogramData.__begin_[numHistogramTimeSteps * bin + index];
}

- (id).cxx_construct
{
  *(self + 15) = 0u;
  *(self + 16) = 0u;
  *(self + 13) = 0u;
  *(self + 14) = 0u;
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 280) = 0u;
  *(self + 296) = 0u;
  *(self + 312) = 0u;
  *(self + 328) = 0u;
  *(self + 344) = 0u;
  *(self + 360) = 0u;
  *(self + 392) = 0u;
  *(self + 408) = 0u;
  *(self + 424) = 0u;
  *(self + 440) = 0u;
  *(self + 456) = 0u;
  *(self + 472) = 0u;
  *(self + 152) = 0u;
  *(self + 136) = 0u;
  *(self + 120) = 0u;
  *(self + 104) = 0u;
  *(self + 88) = 0u;
  *(self + 72) = 0u;
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  return self;
}

@end