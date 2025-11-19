void ___ZN6H16ISP35H16ISPTimeOfFlightColorSynchronizer37TimeOfFlightColorSynchronizerInternal17handleAggregationEP17ADStreamSyncMatch_block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 data];
  [*(a1 + 32) addObject:v3];
  [v13 timestamp];
  if (v4 != 0.0)
  {
    [v13 timestamp];
    *(*(*(a1 + 40) + 8) + 24) = v5 + *(*(*(a1 + 40) + 8) + 24);
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  v6 = [v13 metadata];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277CF4B88]];
    v9 = [v8 intValue];

    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 24);
    if (!v11 || v11 > v9)
    {
      *(v10 + 24) = v9;
    }
  }
}

uint64_t H16ISP::TimeOfFlightAutoFocusAssistant::updateDecimationRate(uint64_t this, uint64_t a2, int a3)
{
  if (*(this + 76) != a2)
  {
    v3 = a2 / a3;
    v4 = 8.0;
    if (v3 <= 8.0)
    {
      v4 = 1.0;
      if (v3 >= 1.0)
      {
        v4 = vcvtmd_s64_f64(v3);
      }
    }

    *(this + 76) = a2;
    *(this + 80) = vcvtpd_s64_f64(v3 / v4);
    v5 = v3;
    return H16ISP::H16ISPServicesRemote::UpdateFlickerIRSignalRateHint(*(this + 16), v5, a2);
  }

  return this;
}

void H16ISP::NearEventComplianceHandler::handleEvent(uint64_t a1, void *a2, int a3, int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (a3 / a4 < 16 || H16ISP::NearEventComplianceHandler::isDepthDetectedInPointCloud(a1, v7))
  {
    *(a1 + 48) = H16ISP::H16ISPDevice::getSensorChannel(*(a1 + 40), 1785950322, 1852793709);
    if ((*(a1 + 50) & 1) == 0)
    {
      *(a1 + 50) = 1;
      NSLog(&cfstr_PeridotNearEve.isa, 0x101010101010101, v9);
      H16ISP::JasperConfigManager::setJasperProjectorBanksStatus(*(a1 + 40), &v8, *(a1 + 48));
    }

    *(a1 + 32) = mach_absolute_time();
  }

  else
  {
    *(a1 + 48) = H16ISP::H16ISPDevice::getSensorChannel(*(a1 + 40), 1785950322, 1852793709);
    if (*(a1 + 16) <= ((mach_absolute_time() - *(a1 + 32)) * *(a1 + 24) / *(a1 + 28) / 0x3B9ACA00) && *(a1 + 50) == 1)
    {
      *(a1 + 50) = 0;
      NSLog(&cfstr_PeridotNearEve_0.isa, 0x101010100000000, v9);
      H16ISP::JasperConfigManager::setJasperProjectorBanksStatus(*(a1 + 40), &v8, *(a1 + 48));
    }
  }
}

void H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::handleTofMatch(H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal *this)
{
  v26 = *MEMORY[0x277D85DE8];
  if (*(this + 39))
  {
    if (*(this + 344) == 1)
    {
      v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v3 = os_log_create("com.apple.isp", "general");
        v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;

        v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      }

      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23[0]) = 0;
        _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "RGBJ-TofSync-Verbose: reached main handleTofMatch with valid cloud\n", v23, 2u);
      }
    }

    if (*(this + 304) & 1) != 0 || (v5 = *(this + 35)) == 0 || (*(this + 304) = 1, (H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::updateColorCalibration(this, v5, *(this + 36))))
    {
      v6 = *(this + 1);
      if (v6)
      {
        if (*(v6 + 33) == 1 && (*(this + 336) & 1) == 0)
        {
          if (*(this + 216) != 1 || *(v6 + 224) != 1 || (v7 = *(this + 41), v8 = *(this + 37), H16ISP::TimeOfFlightAutoFocusAssistant::getPreviewMasterType(v6) != 1919251564) || !*(this + 35) || (v10 = vabdd_f64(v7, v8), LODWORD(v9) = *(this + 64), v11 = v9 / 1000.0, v10 < v11) || (LODWORD(v11) = *(this + 69), v10 > *&v11 / 1000.0))
          {
            H16ISP::TimeOfFlightAutoFocusAssistant::handleMatch(*(this + 1), *(this + 39), *(this + 40));
            *(this + 336) = 1;
          }
        }
      }

      if (*(this + 344) == 1)
      {
        v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v16 = os_log_create("com.apple.isp", "general");
          v17 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v16;

          v15 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        }

        v18 = v15;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = [*(this + 36) objectForKeyedSubscript:*MEMORY[0x277CF4B88]];
          v20 = [v19 intValue];
          v21 = [*(this + 36) objectForKeyedSubscript:*MEMORY[0x277CF5190]];
          [v21 floatValue];
          v23[0] = 67109376;
          v23[1] = v20;
          v24 = 2048;
          v25 = v22;
          _os_log_impl(&dword_2247DB000, v18, OS_LOG_TYPE_DEFAULT, "RGBJ-TofSync-Verbose: main handleTofMatch fps = %d temperature = %f\n", v23, 0x12u);
        }
      }
    }

    else
    {
      if (*(this + 344) == 1)
      {
        v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
        {
          v13 = os_log_create("com.apple.isp", "general");
          v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
          GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v13;

          v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v23[0]) = 0;
          _os_log_impl(&dword_2247DB000, v12, OS_LOG_TYPE_DEFAULT, "RGBJ-TofSync-Verbose: main handleTofMatch updateColorCalibration failed\n", v23, 2u);
        }
      }

      CVPixelBufferRelease(*(this + 35));
      CFRelease(*(this + 36));
      *(this + 35) = 0;
      *(this + 36) = 0;
    }
  }
}

uint64_t H16ISP::NearEventComplianceHandler::isDepthDetectedInPointCloud(double *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 confidences];
  v5 = [v3 length];
  v6 = *a1;
  v7 = [v3 length];
  if (v5 >= 1)
  {
    v8 = 0;
    v9 = &v4[v5];
    do
    {
      if (a1[1] < *v4)
      {
        if (v8 >= ((1.0 - v6) * v7))
        {
          v10 = 1;
          goto LABEL_9;
        }

        ++v8;
      }

      ++v4;
    }

    while (v4 < v9);
  }

  v10 = 0;
LABEL_9:

  return v10;
}

uint64_t H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::updateColorCalibration(id *this, CVPixelBufferRef pixelBuffer, const __CFDictionary *a3)
{
  v3 = 0;
  if (a3 && this[24])
  {
    Width = CVPixelBufferGetWidth(pixelBuffer);
    Height = CVPixelBufferGetHeight(pixelBuffer);
    v9 = a3;
    v10 = [(__CFDictionary *)v9 objectForKeyedSubscript:*MEMORY[0x277CF5300]];

    if (v10 && CGRectMakeWithDictionaryRepresentation(v10, &rect))
    {
      v11 = Width / Height;
      if (v11 > rect.size.width / rect.size.height * 0.998 && v11 < rect.size.width / rect.size.height * 1.002)
      {
        v3 = [this[24] updateForFrameWithDimensions:v9 metadataDictionary:?];
        goto LABEL_11;
      }

      NSLog(&cfstr_Jaspercolorsyn.isa, Width, Height, *&rect.size.width, *&rect.size.height);
    }

    v3 = 0;
LABEL_11:
  }

  return v3;
}

void H16ISP::TimeOfFlightAutoFocusAssistant::handleMatch(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 80);
  if (v6 && (v7 = *(a1 + 72) + 1, *(a1 + 72) = v7, v7 >= v6))
  {
    *(a1 + 84) = 1;
    *(a1 + 72) = 0;
    H16ISP::TimeOfFlightAutoFocusAssistant::sendCloud(a1, v8, v5);
  }

  else
  {
    *(a1 + 84) = 0;
  }
}

uint64_t H16ISP::TimeOfFlightAutoFocusAssistant::getPreviewMasterType(H16ISP::TimeOfFlightAutoFocusAssistant *this)
{
  v1 = *(this + 29);
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = v1(*(this + 30));
  if (v3 == 0xFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  v5 = *this;

  return H16ISP::H16ISPDevice::getSensorType(v5, v4);
}

uint64_t H16ISP::TimeOfFlightAutoFocusAssistant::sendCloud(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v5 count];
  if ([v4 length])
  {
    operator new[]();
  }

  NSLog(&cfstr_Timeofflightau_3.isa);

  return 3758097084;
}

void sub_22496F868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a23)
  {
    MEMORY[0x22AA55B40](a23, 0x1000C80451B5BE8);
  }

  if (v26)
  {
    MEMORY[0x22AA55B40](v26, 0x1000C8052888210);
  }

  if (v25)
  {
    MEMORY[0x22AA55B40](v25, 0x1000C8052888210);
  }

  if (a21)
  {
    MEMORY[0x22AA55B40](a21, 0x1000C80451B5BE8);
  }

  if (v24)
  {
    MEMORY[0x22AA55B40](v24, 0x1000C80451B5BE8);
  }

  _Unwind_Resume(a1);
}

void ___ZN6H16ISP30TimeOfFlightAutoFocusAssistant9sendCloudEP18ADJasperPointCloudP7NSArrayIP29ADStreamSyncTimestampedObjectEP10__CVBufferPK14__CFDictionary_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  [v6 timestamp];
  *(*(a1 + 32) + 8 * a3) = v5;
}

void H16ISP::TimeOfFlightColorInfieldCalibrationManager::handleMatch(H16ISP::TimeOfFlightColorInfieldCalibrationManager *this, __CVBuffer *a2, NSDictionary *a3, NSArray *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (*this && *(this + 16) <= (mach_absolute_time() - *(this + 7)) * *(this + 12) / *(this + 13) / 0xF4240)
  {
    if (*(this + 108) == 1)
    {
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v10 = os_log_create("com.apple.isp", "general");
        v11 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v10;

        v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2247DB000, v9, OS_LOG_TYPE_DEFAULT, "RGBJ-TofManager-Verbose: reached infield calibration handleMatch\n", buf, 2u);
      }
    }

    ++*(this + 19);
    if (*(this + 1))
    {
      if ([MEMORY[0x277CECFD0] isColorFrameValid:a2 withMetadata:v7 andPipelineParameters:?])
      {
        CVPixelBufferLockBaseAddress(a2, 1uLL);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(a2, 0);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
        v15 = fmin((HeightOfPlane * BytesPerRowOfPlane), 1000000.0);
        if (v15)
        {
          v16 = 0;
          v17 = 0xFFFF;
          do
          {
            v18 = 128;
            do
            {
              if ((v18 & *BaseAddressOfPlane) != 0)
              {
                v19 = ~v17;
              }

              else
              {
                v19 = v17;
              }

              if (v19 < 0)
              {
                v17 = (2 * v17) ^ 0x1021;
              }

              else
              {
                v17 *= 2;
              }

              v20 = v18 >= 2;
              v18 >>= 1;
            }

            while (v20);
            ++BaseAddressOfPlane;
            ++v16;
          }

          while (v16 < v15);
        }

        else
        {
          LOWORD(v17) = -1;
        }

        CVPixelBufferUnlockBaseAddress(a2, 1uLL);
        v21 = v8;
        v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v45 = [*(this + 5) dictionaryRepresentation];
        if ([(NSArray *)v21 count])
        {
          v23 = [*(this + 4) peridotCamera];
          v46 = [v23 dictionaryRepresentation];
        }

        else
        {
          v46 = 0;
        }

        for (i = 0; ; ++i)
        {
          v25 = [(NSArray *)v21 count];
          if (i >= v25)
          {
            break;
          }

          v26 = [(NSArray *)v21 objectAtIndexedSubscript:i];
          v27 = [v26 data];

          v28 = [v27 dictionaryRepresentation];
          [v22 addObject:v28];
        }

        v29 = 1;
        if (v22 && v46 && v45)
        {
          v30 = *(this + 108);
          if (v30 == 1)
          {
            v31 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
            {
              v32 = os_log_create("com.apple.isp", "general");
              v33 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v32;

              v31 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
            }

            v25 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
            if (v25)
            {
              *buf = 0;
              _os_log_impl(&dword_2247DB000, v31, OS_LOG_TYPE_DEFAULT, "RGBJ-TofManager-Verbose: infield calibration sending command to demon (RunRgbj)\n", buf, 2u);
            }

            LOBYTE(v30) = *(this + 108);
          }

          v44 = *this;
          v34 = *(this + 6);
          v35 = *(this + 17);
          FrameMode = H16ISP::JasperConfigManager::getFrameMode(v25);
          *&v43[4] = *(this + 92);
          v43[0] = *(this + 80);
          v29 = H16ISP::H16ISPServicesRemote::RunRgbj(v44, a2, v7, v22, v45, v46, 0, v30 & 1, v34, v35, v17, FrameMode, *v43, *&v43[4] >> 32, *&v43[16], *(this + 18));
          if (v29 == 3)
          {
            if (*(this + 108) == 1)
            {
              v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
              {
                v38 = os_log_create("com.apple.isp", "general");
                v39 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v38;

                v37 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
              }

              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_2247DB000, v37, OS_LOG_TYPE_DEFAULT, "RGBJ-TofManager-Verbose: infield calibration network is busy\n", buf, 2u);
              }
            }

            goto LABEL_56;
          }
        }

        *(this + 7) = mach_absolute_time();
        if (v29 == 5)
        {
          *(this + 80) = 1;
          *(this + 16) = *(this + 21);
          if (*(this + 108) == 1)
          {
            v40 = GetCameraUserspaceLogStream();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v42 = *(this + 16);
              *buf = 67109120;
              v48 = v42;
              _os_log_impl(&dword_2247DB000, v40, OS_LOG_TYPE_DEFAULT, "RGBJ-TofManager-Verbose: infield calibration setting interval HighToLow %dms\n", buf, 8u);
            }

            goto LABEL_55;
          }
        }

        else
        {
          if (v29 != 4)
          {
            if (v29 == 1)
            {
              H16ISP::TimeOfFlightColorInfieldCalibrationManager::deactivate(this);
            }

            goto LABEL_56;
          }

          *(this + 80) = 0;
          *(this + 16) = *(this + 22);
          if (*(this + 108) == 1)
          {
            v40 = GetCameraUserspaceLogStream();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              v41 = *(this + 16);
              *buf = 67109120;
              v48 = v41;
              _os_log_impl(&dword_2247DB000, v40, OS_LOG_TYPE_DEFAULT, "RGBJ-TofManager-Verbose: infield calibration setting interval LowToHigh %dms\n", buf, 8u);
            }

LABEL_55:
          }
        }

LABEL_56:
      }
    }
  }
}

void H16ISP::updateMetadataReplaceField(H16ISP *this, NSMutableDictionary *a2, NSString *a3, NSString *a4)
{
  v10 = this;
  v6 = a2;
  v7 = a3;
  v8 = [(H16ISP *)v10 objectForKeyedSubscript:v6];

  if (v8)
  {
    v9 = [(H16ISP *)v10 objectForKeyedSubscript:v6];
    [(H16ISP *)v10 setObject:v9 forKeyedSubscript:v7];

    [(H16ISP *)v10 setObject:0 forKeyedSubscript:v6];
  }
}

void sub_2249701E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

BOOL H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::doesNeedColor(H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal *this)
{
  if (*(this + 216) != 1)
  {
    return 0;
  }

  v2 = *this;
  result = 1;
  if (!v2 || (H16ISP::TimeOfFlightColorInfieldCalibrationManager::doesNeedColor(v2) & 1) == 0)
  {
    v3 = *(this + 1);
    if (!v3 || (*(v3 + 224) & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t H16ISP::TimeOfFlightColorInfieldCalibrationManager::doesNeedColor(H16ISP::TimeOfFlightColorInfieldCalibrationManager *this)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*(this + 108) == 1)
  {
    v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v3 = os_log_create("com.apple.isp", "general");
      v4 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;

      v2 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 20);
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_impl(&dword_2247DB000, v2, OS_LOG_TYPE_DEFAULT, "RGBJ-TofManager-Verbose: doesNeedColor returned %d\n", v7, 8u);
    }
  }

  return *(this + 20);
}

void H16ISP::TimeOfFlightAutoFocusAssistant::activate(H16ISP::TimeOfFlightAutoFocusAssistant *this, H16ISP::H16ISPFrameReceiver *a2)
{
  if (*(this + 33) != 1 || *(this + 5) != a2)
  {
    SensorChannel = H16ISP::H16ISPDevice::getSensorChannel(*this, 1785950322, 1852793709);
    *(this + 2) = SensorChannel;
    *(this + 33) = 0;
    *(this + 5) = a2;
    *(this + 19) = 0;
    *(this + 20) = 0;
    v20 = 0;
    H16ISP::H16ISPDevice::GetPoolInfo(*this, SensorChannel, 29, &v20, 0);
    if (v5)
    {
      NSLog(&cfstr_Jasperdepthnod_3.isa);
      return;
    }

    if (H16ISP::H16ISPFrameReceiver::getBufferPool(*(this + 5), 27))
    {
      *(this + 33) = 1;
    }

    else
    {
      v6 = *(this + 5);
      memset(v19, 0, sizeof(v19));
      LODWORD(v17) = 0;
      *&v16[20] = 1;
      *&v16[12] = 0;
      *&v16[4] = 10;
      *v16 = 128;
      if (H16ISP::H16ISPFrameReceiver::addBufferPoolToFrameReceiver(v6, 27, v20))
      {
        NSLog(&cfstr_Jasperdepthnod_4.isa, v19, 1, *v16, *&v16[8], *&v16[16], 0, @"AF-Assist", 0, 0, 0, 1, v17);
      }

      else
      {
        *(this + 33) = 1;
      }
    }

    *(this + 12) = H16ISP::H16ISPGetCFPreferenceNumber(@"AutoFocusAssistanceDump", @"com.apple.coremedia", 0);
    v7 = H16ISP::H16ISPGetCFPreferenceNumber(@"AutoFocusAssistanceVerbose", @"com.apple.coremedia", 0);
    *(this + 88) = v7 != 0;
    if (*(this + 12))
    {
      v8 = NSTemporaryDirectory();
      v9 = [v8 stringByAppendingPathComponent:@"JasperAFBuffers"];
      v10 = *(this + 8);
      *(this + 8) = v9;

      NSLog(&cfstr_DumpingTofAfBu.isa, *(this + 8));
      v11 = [MEMORY[0x277CCAA00] defaultManager];
      v12 = *(this + 8);
      v18 = 0;
      [v11 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v18];
      v13 = v18;

      v14 = objc_opt_new();
      v15 = *(this + 7);
      *(this + 7) = v14;

      [*(this + 7) setDateFormat:@"yyyyMMdd-HHmmss-SSS"];
      if ((*(this + 88) & 1) == 0)
      {
LABEL_13:
        H16ISP::H16ISPDevice::SetTOFControlMode(*this, *(this + 2), *(this + 32), *(this + 33), *(this + 9), 0);
        return;
      }
    }

    else if (!v7)
    {
      goto LABEL_13;
    }

    NSLog(&cfstr_Timeofflightau_2.isa, *(this + 2), *(this + 32), *(this + 33), *(this + 9), 0);
    goto LABEL_13;
  }
}

void GridArea::PrepareGrid(_DWORD *a1, float *a2, uint64_t a3, float *a4, int a5)
{
  v5 = ((a4[1] - *a4) / a4[2]);
  v6 = ((((a2[1] - *a2) / a2[2]) + 1.0) + (2 * a5));
  a1[2] = v6;
  a1[3] = v5;
  a1[4] = v6 * v6;
  a1[5] = v6 * v6 + v6 * v6 * v5;
  operator new[]();
}

void GridArea::GridArea(GridArea *this, const GridArea *a2)
{
  v2 = *(a2 + 2);
  v3 = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v2;
  *this = v3;
  operator new[]();
}

{
  v2 = *(a2 + 2);
  v3 = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v2;
  *this = v3;
  operator new[]();
}

{
  v2 = *a2;
  v3 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v3;
  *this = v2;
  operator new[]();
}

{
  v2 = *a2;
  v3 = *(a2 + 2);
  *(this + 1) = *(a2 + 1);
  *(this + 2) = v3;
  *this = v2;
  operator new[]();
}

void GridArea::~GridArea(GridArea *this)
{
  v1 = *this;
  if (v1)
  {
    MEMORY[0x22AA55B40](v1, 0x1000C80F913DBA1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    MEMORY[0x22AA55B40](v1, 0x1000C80F913DBA1);
  }
}

uint64_t GridArea::GetMinimalCostEntryIdx(uint64_t this, int a2)
{
  v2 = *(this + 20);
  if (!v2)
  {
    return 0;
  }

  v3 = this;
  v4 = 0;
  LODWORD(this) = 0;
  v5 = *v3;
  v6 = 16;
  if (a2)
  {
    v6 = 24;
  }

  v7 = (v5 + v6);
  v8 = 1.79769313e308;
  do
  {
    v9 = *v7;
    v7 += 4;
    v10 = v9;
    v11 = v9 < v8;
    if (v9 >= v8)
    {
      this = this;
    }

    else
    {
      this = v4;
    }

    if (v11)
    {
      v8 = v10;
    }

    ++v4;
  }

  while (v2 != v4);
  return this;
}

uint64_t GridArea::ExtendCostGrid(GridArea *this, unsigned int a2, int a3, unsigned int a4)
{
  v5 = *(this + 2);
  v6 = v5 - a4;
  v7 = *this;
  v8 = *this + 32 * a2;
  v9 = *(v8 + 4);
  if (v9 == *(this + 7))
  {
    v10 = 1;
    v11 = a4;
    v12 = *(this + 2);
  }

  else
  {
    v13 = *(this + 6);
    if (v9 == v13)
    {
      v11 = 0;
    }

    else
    {
      v11 = a4;
    }

    v10 = v9 == v13;
    v12 = v5 - a4;
  }

  v14 = *(v8 + 8);
  if (v14 == *(this + 9))
  {
    v6 = *(this + 2);
LABEL_15:
    result = 1;
    if (a4 < v6)
    {
      v18 = v11 + a4 * v5;
      do
      {
        v19 = v12 - v11;
        v20 = v18;
        if (v11 < v12)
        {
          do
          {
            if (a3)
            {
              *(v7 + 32 * v20) = 1;
            }

            else
            {
              *(v7 + 32 * v20 + 1) = 1;
            }

            ++v20;
            --v19;
          }

          while (v19);
        }

        ++a4;
        v18 += v5;
      }

      while (a4 != v6);
      return 1;
    }

    return result;
  }

  result = 0;
  v16 = *(this + 8);
  v17 = v14 == v16 || v10;
  if (v14 == v16)
  {
    a4 = 0;
  }

  if (v17 == 1)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t *GridArea::NormalizeGrid(uint64_t *result, int a2, int a3, _DWORD *a4)
{
  v4 = a4[4];
  v5 = a4[5];
  if (v4 > v5)
  {
    return result;
  }

  v6 = a4[3];
  v7 = 1.79769313e308;
  v8 = 2.22507386e-308;
  v9 = a4[4];
  do
  {
    if (a4[2] <= v6)
    {
      v10 = v7;
      for (i = a4[2]; i <= v6; ++i)
      {
        v12 = *result + 32 * (a2 + *(result + 2) * v9 + i);
        if (a3)
        {
          if (*v12 == 1)
          {
            v7 = *(v12 + 24);
            goto LABEL_10;
          }
        }

        else if (*(v12 + 1) == 1)
        {
          v7 = *(v12 + 16);
LABEL_10:
          if (v7 > v8)
          {
            v8 = v7;
          }

          if (v7 < v10)
          {
            goto LABEL_14;
          }
        }

        v7 = v10;
LABEL_14:
        v10 = v7;
      }
    }

    ++v9;
  }

  while (v9 <= v5);
  v13 = v8 - v7;
  v14 = a4[2];
  v15 = a4[3];
  do
  {
    if (v14 <= v15)
    {
      v16 = *result;
      v17 = a2 + *(result + 2) * v4;
      v18 = v14;
      do
      {
        if (a3)
        {
          v19 = 24;
        }

        else
        {
          v19 = 16;
        }

        *(v16 + 32 * (v17 + v18) + v19) = (*(v16 + 32 * (v17 + v18) + v19) - v7) / v13;
        ++v18;
      }

      while (v18 <= v15);
    }

    ++v4;
  }

  while (v4 <= v5);
  return result;
}

void GridArea::CalcNewConfidence(uint64_t a1, int a2, int a3, int *a4)
{
  v4 = *(a1 + 20);
  v5 = *(a1 + 16) * a2;
  if (v4)
  {
    v6 = 0;
    v7 = 0;
    v8 = 16;
    if (a3)
    {
      v8 = 24;
    }

    v9 = (*a1 + v8);
    v10 = 1.79769313e308;
    do
    {
      v11 = *v9;
      v9 += 4;
      v12 = v11;
      if (v11 < v10)
      {
        v7 = v6;
        v10 = v12;
      }

      ++v6;
    }

    while (v4 != v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = *(a1 + 8);
  v14 = v7 / v13;
  v15 = v7 % v13;
  *a4 = v15;
  a4[1] = v14;
  v16 = v13 - 1;
  v17 = (v16 >> 1) - 1;
  v18 = (v15 - v17) & ~((v15 - v17) >> 31);
  v19 = v15 + v17;
  if (v19 >= v16)
  {
    v19 = v16;
  }

  a4[2] = v18;
  a4[3] = v19;
  v20 = v17 + v14;
  if (v17 + v14 >= v16)
  {
    v20 = v16;
  }

  a4[4] = (v14 - v17) & ~((v14 - v17) >> 31);
  a4[5] = v20;
  GridArea::NormalizeGrid(a1, v5, a3, a4);
  operator new[]();
}

void GridArea::FitParabolaModel(GridArea *this, double *a2, double *a3)
{
  v3 = a3;
  Matrix<double>::Matrix(v15, a3, 3);
  if (v3)
  {
    v6 = 0;
    v7 = 0;
    v8 = v17;
    v9 = v18;
    do
    {
      if (v7 >= v8 || !v9 || (*(v16 + 8 * v6) = a2[v7] * a2[v7], v9 == 1) || (*(v16 + 8 * v6 + 8) = a2[v7], v9 <= 2))
      {
        __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
      }

      *(v16 + 8 * v6 + 16) = 0x3FF0000000000000;
      ++v7;
      v6 += v9;
    }

    while (v3 != v7);
  }

  v10 = &unk_283812C58;
  v11 = this;
  v12 = v3;
  v13 = 1;
  v14 = 0;
  Matrix<double>::Transpose(v15);
}

void sub_2249711C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  Matrix<double>::~Matrix(&a25);
  Matrix<double>::~Matrix(&a9);
  Matrix<double>::~Matrix(&a21);
  Matrix<double>::~Matrix(&a17);
  Matrix<double>::~Matrix(&a13);
  Matrix<double>::~Matrix(v25 - 112);
  Matrix<double>::~Matrix(v25 - 80);
  _Unwind_Resume(a1);
}

void Matrix<double>::Inverse(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  if (v6 == 2)
  {
    if (*(a1 + 20) == 2)
    {
      goto LABEL_4;
    }

LABEL_8:
    Matrix<double>::Inverse();
  }

  if (v6 != 3 || *(a1 + 20) != 3)
  {
    goto LABEL_8;
  }

LABEL_4:
  Matrix<double>::Matrix(a3, v6, v6);
  v7 = Matrix<double>::Det(a1);
  if (v7 == 0.0)
  {
    if (a2)
    {
      *a2 = 0;
    }
  }

  else
  {
    if (a2)
    {
      *a2 = 1;
    }

    if (*(a1 + 16) == 2)
    {
      **(a3 + 8) = *(*(a1 + 8) + 24) / v7;
      *(*(a3 + 8) + 8) = -*(*(a1 + 8) + 8) / v7;
      *(*(a3 + 8) + 16) = -*(*(a1 + 8) + 16) / v7;
      *(*(a3 + 8) + 24) = **(a1 + 8) / v7;
    }

    else
    {
      v8 = *(a1 + 20);
      if (v8)
      {
        v9 = 0;
        v10 = *(a3 + 16);
        v11 = 5;
        v12 = 1;
        v13 = 8;
        v14 = 2;
        v15 = 7;
        v16 = 4;
        do
        {
          v17 = 0;
          v18 = 0;
          v19 = 9 * (v12 / 3);
          v20 = 9 * (v14 / 3);
          v21 = v9 + 1;
          v22 = *(a3 + 20);
          v23 = v11 - v19;
          v24 = v13 - v20;
          v25 = v15 - v20;
          v26 = v16 - v19;
          v27 = 2;
          v28 = 1;
          do
          {
            if (v18 >= v10 || v9 >= v22)
            {
              __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
            }

            v29 = *(a1 + 8);
            *(*(a3 + 8) + 8 * v9 + 8 * v17) = (*(v29 + 8 * (v18 + v26 - 3 * (v28 / 3))) * *(v29 + 8 * (v18 + v24 - 3 * (v27 / 3))) - *(v29 + 8 * (v18 + v23 - 3 * (v27 / 3))) * *(v29 + 8 * (v18 + v25 - 3 * (v28 / 3)))) / v7;
            v17 += v22;
            ++v27;
            ++v28;
            ++v18;
          }

          while (v8 != v18);
          v11 += 3;
          ++v12;
          v13 += 3;
          ++v14;
          v15 += 3;
          v16 += 3;
          ++v9;
        }

        while (v21 != v8);
      }
    }
  }
}

void GridArea::SaveToDictionary()
{
  if (gDbgLvl)
  {
    operator new[]();
  }
}

void sub_224971724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

BOOL GridArea::isMinimumOnBorder(float *a1, int a2, void *a3)
{
  v3 = *a1;
  v4 = *(a1 + 5);
  if (v4)
  {
    v5 = 0;
    LODWORD(v6) = 0;
    v7 = 16;
    if (a2)
    {
      v7 = 24;
    }

    v8 = (v3 + v7);
    v9 = 1.79769313e308;
    do
    {
      v10 = *v8;
      v8 += 4;
      v11 = v10;
      v12 = v10 < v9;
      if (v10 >= v9)
      {
        v6 = v6;
      }

      else
      {
        v6 = v5;
      }

      if (v12)
      {
        v9 = v11;
      }

      ++v5;
    }

    while (v4 != v5);
  }

  else
  {
    v6 = 0;
  }

  v13 = v3 + 32 * v6;
  *a3 = v13;
  v14 = *(v13 + 4);
  result = 1;
  if (v14 != a1[6] && v14 != a1[7])
  {
    v15 = *(v13 + 8);
    if (v15 != a1[8] && v15 != a1[9])
    {
      return 0;
    }
  }

  return result;
}

double Matrix<double>::Det(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 != 2)
  {
    if (v1 == 3 && *(a1 + 20) == 3)
    {
      v2 = *(a1 + 8);
      return *v2 * (v2[4] * v2[8] - v2[5] * v2[7]) - v2[1] * (v2[3] * v2[8] - v2[5] * v2[6]) + v2[2] * (v2[3] * v2[7] - v2[4] * v2[6]);
    }

LABEL_7:
    Matrix<double>::Det();
  }

  if (*(a1 + 20) != 2)
  {
    goto LABEL_7;
  }

  return **(a1 + 8) * *(*(a1 + 8) + 24) - *(*(a1 + 8) + 8) * *(*(a1 + 8) + 16);
}

void PearlInternalIRIsf::PearlInternalIRIsf(PearlInternalIRIsf *this)
{
  *(this + 3) = 0;
  *(this + 8) = 0u;
  *(this + 11) = 0x7FF8000000000000;
  *(this + 72) = xmmword_2249D2A98;
  *(this + 80) = 0;
  *(this + 162) = 0;
  *(this + 41) = 0;
  *this = &unk_283814B90;
  *(this + 15) = 0x1E00000001;
  *(this + 16) = 1;
  *(this + 34) = 1;
  *(this + 148) = 4;
  *(this + 39) = 2;
  operator new[]();
}

void PearlInternalIRIsf::~PearlInternalIRIsf(PearlInternalIRIsf *this)
{
  *this = &unk_283814B90;
  v2 = *(this + 12);
  if (v2)
  {
    MEMORY[0x22AA55B40](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 13);
  if (v3)
  {
    MEMORY[0x22AA55B40](v3, 0x1000C8000313F17);
  }

  IsfInternal::~IsfInternal(this);
}

{
  PearlInternalIRIsf::~PearlInternalIRIsf(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t PearlInternalIRIsf::updatePCECalib(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = IsfInternal::CalcNewRotation(a1, a2);
  if (!v5)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = *(a1 + 72);
    v10 = *(a1 + 88);
    GeomUtils::CalcRotationMatrix<double>(&v9, &v11);
    v6 = v14;
    *(a3 + 32) = v13;
    *(a3 + 48) = v6;
    *(a3 + 64) = v15;
    v7 = v12;
    *a3 = v11;
    *(a3 + 16) = v7;
  }

  return v5;
}

uint64_t GeomUtils::CalcRotationMatrix<double>(double *a1, uint64_t a2)
{
  v4[0] = &unk_283812C58;
  v4[1] = a2;
  v4[2] = 0x300000003;
  v5 = 0;
  v2 = GeomUtils::CalcRotationMatrix<double>(v4, *a1 / 1000.0, a1[1] / 1000.0, a1[2] / 1000.0);
  Matrix<double>::~Matrix(v4);
  return v2;
}

void PearlInternalIsf::PearlInternalIsf(PearlInternalIsf *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 11) = 0x7FF8000000000000;
  *(this + 72) = xmmword_2249D2B08;
  *(this + 80) = 0;
  *(this + 162) = 0;
  *(this + 41) = 0;
  *this = &unk_283814BE0;
  *(this + 15) = 0x3200000003;
  *(this + 8) = xmmword_2249D2AC0;
  *(this + 9) = xmmword_2249D2AD0;
  operator new[]();
}

void PearlInternalIsf::~PearlInternalIsf(PearlInternalIsf *this)
{
  *this = &unk_283814BE0;
  v2 = *(this + 12);
  if (v2)
  {
    MEMORY[0x22AA55B40](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 13);
  if (v3)
  {
    MEMORY[0x22AA55B40](v3, 0x1000C8000313F17);
  }

  IsfInternal::~IsfInternal(this);
}

{
  PearlInternalIsf::~PearlInternalIsf(this);

  JUMPOUT(0x22AA55B60);
}

uint64_t PearlInternalIsf::updatePCECalib(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  v5 = IsfInternal::CalcNewRotation(a1, a2);
  if (!v5)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v9 = *(a1 + 72);
    v10 = *(a1 + 88);
    GeomUtils::CalcRotationMatrix<double>(&v9, &v11);
    v6 = v14;
    *(a3 + 32) = v13;
    *(a3 + 48) = v6;
    *(a3 + 64) = v15;
    v7 = v12;
    *a3 = v11;
    *(a3 + 16) = v7;
  }

  return v5;
}

void PearlIsf::~PearlIsf(PearlIsf *this)
{
  *this = &unk_283814C20;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_283814C20;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_283814C20;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x22AA55B60);
}

void MetalMgt::MetalMgt(MetalMgt *this)
{
  *(this + 3) = 850045863;
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 13) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  v2 = MTLCreateSystemDefaultDevice();
  v3 = *this;
  *this = v2;

  v4 = [*this newCommandQueue];
  v5 = *(this + 1);
  *(this + 1) = v4;

  v6 = [*this newDefaultLibrary];
  v7 = *(this + 2);
  *(this + 2) = v6;

  *(this + 12) = 0;
  v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/PrivateFrameworks/H16ISPServices.framework/CalibrateRgbIr.metallib"];
  v9 = *this;
  v21 = 0;
  v10 = [v9 newLibraryWithURL:v8 error:&v21];
  v11 = v21;
  v12 = *(this + 2);
  *(this + 2) = v10;

  v13 = [*(this + 2) newFunctionWithName:@"Algo_DistortRadialLiteInternal"];
  v14 = *(this + 11);
  *(this + 11) = v13;

  v15 = *(this + 11);
  if (!v15)
  {
    __assert_rtn("MetalMgt", "MetalObjects.mm", 42, "m_algo_DistortRadialLiteInternal_func != 0");
  }

  v16 = *this;
  v20 = 0;
  v17 = [v16 newComputePipelineStateWithFunction:v15 error:&v20];
  v18 = v20;
  v19 = *(this + 13);
  *(this + 13) = v17;
}

void sub_22497232C(_Unwind_Exception *a1)
{
  std::mutex::~mutex(v2);

  _Unwind_Resume(a1);
}

uint64_t MetalObjects::init(MetalObjects *this)
{
  *this = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void MetalObjects::createTexture(void *a1, void *a2, int a3, int a4)
{
  std::mutex::lock((a1[2] + 24));
  v8 = [*a1[2] newBufferWithLength:4 * a4 * a3 options:0];
  std::mutex::unlock((a1[2] + 24));
  [*a1 setPixelFormat:55];
  [*a1 setTextureType:2];
  [*a1 setHeight:a3];
  [*a1 setWidth:a4];
  *a2 = [v8 newTextureWithDescriptor:*a1 offset:0 bytesPerRow:4 * a4];
}

void MetalObjects::createTextureMedian(void *a1, void *a2, int *a3, int a4, int a5, int a6, int a7)
{
  [*a1 setTextureType:2];
  [*a1 setHeight:a4];
  [*a1 setWidth:a5];
  if (a7)
  {
    v17 = 0;
    MetalObjects::createBuffer(a1, &v17, a4, a6);
    v15 = v17;
    [*a1 setPixelFormat:10];
    [*a1 setUsage:3];
    v14 = [v15 newTextureWithDescriptor:*a1 offset:0 bytesPerRow:a6];
  }

  else
  {
    v16 = 0;
    MetalObjects::createBuffer(a1, &v16, a3, a6 * a4);
    v15 = v16;
    [*a1 setPixelFormat:10];
    [*a1 setUsage:1];
    [*a1 setResourceOptions:*(a1[2] + 96)];
    v14 = [v15 newTextureWithDescriptor:*a1 offset:0 bytesPerRow:a6];
  }

  *a2 = v14;
}

void MetalObjects::createBuffer(uint64_t a1, void *a2, int a3, int a4)
{
  std::mutex::lock((*(a1 + 16) + 24));
  *a2 = [**(a1 + 16) newBufferWithLength:4 * a4 * a3 options:*(*(a1 + 16) + 96)];
  v8 = (*(a1 + 16) + 24);

  std::mutex::unlock(v8);
}

void MetalObjects::createBuffer(uint64_t a1, void *a2, int *a3, unint64_t a4)
{
  std::mutex::lock((*(a1 + 16) + 24));
  v8 = *(a1 + 16);
  v9 = *v8;
  if (a4 < 0x14)
  {
    v10 = [v9 newBufferWithLength:20 options:*(v8 + 96)];
    *a2 = v10;
    v11 = [v10 contents];
    if (a4 >= 4)
    {
      v12 = a4 >> 2;
      do
      {
        v13 = *a3++;
        *v11++ = v13;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    *a2 = [v9 newBufferWithBytes:a3 length:a4 options:*(v8 + 96)];
  }

  v14 = (*(a1 + 16) + 24);

  std::mutex::unlock(v14);
}

void MetalObjects::createTexture(id *a1, void *a2, int *a3, int a4, int a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v15 = 0;
  MetalObjects::createBuffer(a1, &v15, a3, 4 * a5 * a4);
  v10 = v15;
  [*a1 setPixelFormat:55];
  [*a1 setTextureType:2];
  [*a1 setHeight:a4];
  [*a1 setWidth:a5];
  if (*a1 && [*a1 width] && (v11 = objc_msgSend(*a1, "height"), a3) && v11)
  {
    *a2 = [v10 newTextureWithDescriptor:*a1 offset:0 bytesPerRow:4 * a5];
  }

  else
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v13 = os_log_create("com.apple.isp", "general");
      v14 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v13;

      v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v17 = "createTexture";
      v18 = 1024;
      v19 = a4;
      v20 = 1024;
      v21 = a5;
      v22 = 2048;
      v23 = a3;
      _os_log_error_impl(&dword_2247DB000, v12, OS_LOG_TYPE_ERROR, "RGB-IR: %s: rdar://112006283 Aborting texture creation rows: %d, cols: %d, buffer: %p\n", buf, 0x22u);
    }
  }
}

{
  v10 = 0;
  MetalObjects::createBuffer(a1, &v10, a3, 2 * a5 * a4);
  v9 = v10;
  [*a1 setPixelFormat:23];
  [*a1 setTextureType:2];
  [*a1 setHeight:a4];
  [*a1 setWidth:a5];
  [*a1 setResourceOptions:0];
  *a2 = [v9 newTextureWithDescriptor:*a1 offset:0 bytesPerRow:2 * a5];
}

void MetalObjects::Algo_DistortRadialLiteInternal(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, char a15)
{
  v30 = a2;
  v29 = a3;
  v38 = a4;
  v36 = a5;
  v35 = a6;
  v34 = a7;
  v33 = a8;
  v37 = a9;
  v32 = a10;
  v31 = a11;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  std::mutex::lock((*(a1 + 16) + 24));
  v25 = [*(*(a1 + 16) + 8) commandBuffer];
  std::mutex::unlock((*(a1 + 16) + 24));
  v26 = [v25 computeCommandEncoder];
  [v26 setComputePipelineState:*(*(a1 + 16) + 104)];
  [v26 setTexture:v30 atIndex:0];
  [v26 setTexture:v29 atIndex:1];
  [v26 setTexture:v38 atIndex:2];
  [v26 setTexture:v37 atIndex:3];
  [v26 setTexture:v24 atIndex:4];
  [v26 setBuffer:v36 offset:0 atIndex:0];
  [v26 setBuffer:v35 offset:0 atIndex:1];
  [v26 setBuffer:v34 offset:0 atIndex:2];
  [v26 setBuffer:v33 offset:0 atIndex:3];
  [v26 setBuffer:v32 offset:0 atIndex:4];
  [v26 setBuffer:v31 offset:0 atIndex:5];
  [v26 setBuffer:v22 offset:0 atIndex:6];
  [v26 setBuffer:v23 offset:0 atIndex:7];
  v27 = [*(*(a1 + 16) + 104) threadExecutionWidth];
  v28 = [*(*(a1 + 16) + 104) maxTotalThreadsPerThreadgroup];
  v40[0] = (v27 + [v30 width] - 1) / v27;
  v40[1] = (v28 / v27 + [v30 height] - 1) / (v28 / v27);
  v40[2] = 1;
  v39[0] = v27;
  v39[1] = v28 / v27;
  v39[2] = 1;
  [v26 dispatchThreadgroups:v40 threadsPerThreadgroup:v39];
  [v26 endEncoding];
  [v25 commit];
  if (a15)
  {
    [v25 waitUntilCompleted];
  }
}

void MetalObjects::convultionFilter(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5)
{
  v12 = a2;
  v9 = a4;
  std::mutex::lock((*(a1 + 16) + 24));
  v10 = [objc_alloc(MEMORY[0x277CD7500]) initWithDevice:**(a1 + 16) kernelWidth:*(a3 + 20) kernelHeight:*(a3 + 16) weights:*(a3 + 8)];
  v11 = [*(*(a1 + 16) + 8) commandBuffer];
  std::mutex::unlock((*(a1 + 16) + 24));
  [v10 encodeToCommandBuffer:v11 sourceTexture:v12 destinationTexture:v9];
  [v11 commit];
  if (a5)
  {
    [v11 waitUntilCompleted];
  }
}

void MetalObjects::medianFilter(uint64_t a1, void *a2, void *a3, unsigned int a4, int a5)
{
  v12 = a2;
  v9 = a3;
  std::mutex::lock((*(a1 + 16) + 24));
  v10 = [objc_alloc(MEMORY[0x277CD7548]) initWithDevice:**(a1 + 16) kernelDiameter:a4];
  v11 = [*(*(a1 + 16) + 8) commandBuffer];
  std::mutex::unlock((*(a1 + 16) + 24));
  [v10 encodeToCommandBuffer:v11 sourceTexture:v12 destinationTexture:v9];
  [v11 commit];
  if (a5)
  {
    [v11 waitUntilCompleted];
  }
}

void IsfInternal::~IsfInternal(IsfInternal *this)
{
  *this = &unk_283814C68;
  v2 = *(this + 1);
  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

uint64_t IsfInternal::ConvertSavedToInternalHistory(uint64_t a1, unsigned int *a2)
{
  v3 = (a1 + 8);
  *(a1 + 16) = *(a1 + 8);
  v4 = *(a1 + 120);
  if (*a2 != v4)
  {
    NSLog(&cfstr_IsfHistoryMism.isa, *a2, v4);
    goto LABEL_41;
  }

  if (a2[1])
  {
    goto LABEL_41;
  }

  v6 = a2[2];
  if (v6 == -1)
  {
    goto LABEL_41;
  }

  if ((v6 & 0x80000000) != 0 || (v7 = *(a1 + 124), v6 >= v7))
  {
    NSLog(&cfstr_IsfHistoryOlde.isa, a2[2]);
    goto LABEL_41;
  }

  v8 = a2[3];
  if ((v8 & 0x80000000) != 0 || v8 >= v7)
  {
    NSLog(&cfstr_IsfHistoryNext.isa, a2[3]);
    goto LABEL_41;
  }

  v9 = __OFSUB__(v8, v6);
  v10 = v8 - v6;
  if (!((v10 < 0) ^ v9 | (v10 == 0)))
  {
    v7 = 0;
  }

  v11 = v10 + v7;
  *(a1 + 64) = v11;
  std::vector<Isf::ReferenceRecord>::reserve((a1 + 8), (v11 + 1));
  std::vector<Isf::ReferenceRecord>::__insert_with_size[abi:nn200100]<Isf::ReferenceRecord const*,Isf::ReferenceRecord const*>(v3, *(a1 + 16), a2 + 40, &a2[18 * *(a1 + 64) + 10], *(a1 + 64));
  v12 = *(a1 + 8);
  if (v12 == *(a1 + 16))
  {
    goto LABEL_28;
  }

  v13 = 0;
  do
  {
    v14 = 0;
    v15 = 60;
    while (1)
    {
      v16 = *(v12 + v15);
      if ((v16 & 0x80000000) != 0)
      {
        if (v16 != -1)
        {
LABEL_23:
          NSLog(&cfstr_IsfElementPrev.isa, v14, v16);
          goto LABEL_25;
        }
      }

      else if (v16 >= *(a1 + 64))
      {
        goto LABEL_23;
      }

      v17 = *(v12 + v15 - 12);
      if ((v17 & 0x80000000) != 0)
      {
        break;
      }

      if (v17 >= *(a1 + 64))
      {
        goto LABEL_24;
      }

LABEL_21:
      *(v12 + v14++ + 45) = 1;
      v15 += 4;
      if (v14 == 3)
      {
        goto LABEL_26;
      }
    }

    if (v17 == -1)
    {
      goto LABEL_21;
    }

LABEL_24:
    NSLog(&cfstr_IsfElementNext.isa, v14, v17);
LABEL_25:
    v13 = 1;
LABEL_26:
    *(v12 + 44) = 1;
    *(v12 + 32) = IsfInternal::GetInitialWeightForRecord(a1, v12);
    v12 += 72;
  }

  while (v12 != *(a1 + 16));
  if (v13)
  {
    goto LABEL_41;
  }

LABEL_28:
  v18 = 0;
  *(a1 + 32) = *(a2 + 1);
  v19 = a2 + 7;
  v20 = (a1 + 40);
  while (2)
  {
    v21 = *(v19 - 3);
    if ((v21 & 0x80000000) != 0)
    {
      if (v21 != -1)
      {
LABEL_44:
        v25 = *(v19 - 3);
        goto LABEL_46;
      }
    }

    else if (v21 >= *(a1 + 124))
    {
      goto LABEL_44;
    }

    v22 = *v19;
    if ((*v19 & 0x80000000) == 0)
    {
      if (v22 >= *(a1 + 124))
      {
        break;
      }

      goto LABEL_37;
    }

    if (v22 == -1)
    {
LABEL_37:
      *v20 = v21;
      v23 = *v19++;
      v20[3] = v23;
      ++v18;
      ++v20;
      if (v18 == 3)
      {
        return 0;
      }

      continue;
    }

    break;
  }

  v25 = *v19;
LABEL_46:
  NSLog(&cfstr_IsfHistoryHead.isa, v18, v25);
LABEL_41:
  NSLog(&cfstr_IsfResettingHi.isa);
  *(a1 + 32) = 0xFFFFFFFFLL;
  *(a1 + 64) = 0;
  *(a1 + 40) = -1;
  *(a1 + 48) = -1;
  *(a1 + 56) = -1;
  return 0;
}

void *std::vector<Isf::ReferenceRecord>::reserve(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      std::allocator<Isf::ReferenceRecord>::allocate_at_least[abi:nn200100](result, a2);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  return result;
}

double IsfInternal::GetInitialWeightForRecord(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 148);
  if (v2)
  {
    v3 = 0;
    while (*(a2 + 24) >= *(*(a1 + 96) + 8 * v3))
    {
      if (v2 == ++v3)
      {
        v3 = *(a1 + 148);
        return *(*(a1 + 104) + 8 * v3);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return *(*(a1 + 104) + 8 * v3);
}

uint64_t IsfInternal::RemoveOldestRecord(IsfInternal *this)
{
  v1 = *(this + 8);
  if ((v1 & 0x80000000) != 0 || v1 >= *(this + 31))
  {
    NSLog(&cfstr_IsfS.isa, "Error: oldest index record is out of range.");
    return 257;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    v4 = *(this + 1);
    v5 = 0x8E38E38E38E38E39 * ((*(this + 2) - v4) >> 3);
    do
    {
      v6 = *(this + 8);
      if (v5 <= v6)
      {
LABEL_19:
        std::string::__throw_length_error[abi:nn200100]();
      }

      v7 = v4 + 72 * v6 + v2;
      v8 = *(v7 + 60);
      v9 = *(v7 + 48);
      if (v9 == -1)
      {
        v10 = (this + v2 + 52);
        if (*v10 != v6)
        {
          IsfInternal::RemoveOldestRecord();
        }
      }

      else
      {
        if (v5 <= v9)
        {
          goto LABEL_19;
        }

        v10 = (v4 + 72 * v9 + 4 * v3 + 60);
      }

      *v10 = v8;
      if (v8 == -1)
      {
        v11 = (this + v2 + 40);
        if (*v11 != *(this + 8))
        {
          IsfInternal::RemoveOldestRecord();
        }
      }

      else
      {
        if (v5 <= v8)
        {
          goto LABEL_19;
        }

        v11 = (v4 + 72 * v8 + 4 * v3 + 48);
      }

      *v11 = v9;
      ++v3;
      v2 += 4;
    }

    while (v2 != 12);
    v12 = 0;
    *(this + 8) = (*(this + 8) + 1) % *(this + 31);
    --*(this + 16);
  }

  return v12;
}

uint64_t IsfInternal::GetElementIdx(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 60);
  if (v2 == -1)
  {
    v4 = (a1 + 40);
  }

  else
  {
    v3 = *(a1 + 8);
    if (0x8E38E38E38E38E39 * ((*(a1 + 16) - v3) >> 3) <= v2)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v4 = (v3 + 72 * v2 + 48);
  }

  return *v4;
}

uint64_t IsfInternal::InsertRecordInSortedList(IsfInternal *this, int a2, int a3)
{
  v3 = *(this + 16);
  if (v3 >= *(this + 31))
  {
    IsfInternal::InsertRecordInSortedList();
  }

  v4 = *(this + 1);
  v5 = 0x8E38E38E38E38E39 * ((*(this + 2) - v4) >> 3);
  if (v5 <= a3)
  {
    goto LABEL_10;
  }

  v6 = v4 + 72 * a3;
  v7 = this + 40;
  if (!v3)
  {
    *&v7[4 * a2] = a3;
    *(this + a2 + 13) = a3;
    v14 = v6 + 4 * a2;
    *(v14 + 48) = -1;
    *(v14 + 60) = -1;
    return 0;
  }

  v8 = *&v7[4 * a2];
  if (v8 == -1)
  {
    IsfInternal::InsertRecordInSortedList();
  }

  v9 = this + 52;
  if (*(this + a2 + 13) == -1)
  {
    IsfInternal::InsertRecordInSortedList();
  }

  v10 = v8;
  if (v5 <= v8)
  {
LABEL_10:
    std::string::__throw_length_error[abi:nn200100]();
  }

  while (1)
  {
    v11 = v4 + 72 * v10;
    if (*(v11 + 8 * a2) >= *(v6 + 8 * a2))
    {
      v15 = v11 + 4 * a2;
      *(v6 + 60 + 4 * a2) = *(v15 + 60);
      *(v15 + 60) = a3;
      *(v6 + 4 * a2 + 48) = v8;
      if (*&v7[4 * a2] == v8)
      {
        *&v7[4 * a2] = a3;
        return 0;
      }

      v17 = *(v6 + 60 + 4 * a2);
      if (v5 > v17)
      {
        *(v4 + 72 * v17 + 4 * a2 + 48) = a3;
        return 0;
      }

      goto LABEL_10;
    }

    v12 = v11 + 48;
    v13 = *(v12 + 4 * a2);
    if (v13 == -1)
    {
      break;
    }

    v10 = v13;
    v8 = v13;
    if (v5 <= v13)
    {
      goto LABEL_10;
    }
  }

  *(v12 + 4 * a2) = a3;
  v16 = v6 + 4 * a2;
  *(v16 + 60) = v8;
  if (*&v9[4 * a2] != v8)
  {
    IsfInternal::InsertRecordInSortedList();
  }

  *(v16 + 48) = -1;
  *&v9[4 * a2] = a3;
  return 0;
}

uint64_t IsfInternal::InsertNewRecord(IsfInternal *this, int a2, double a3, double a4, double a5, double a6)
{
  if (*(this + 16) == *(this + 31))
  {
    if (IsfInternal::RemoveOldestRecord(this))
    {
      return 256;
    }

    v21 = *(this + 9);
    v22 = *(this + 1);
    v23 = v21;
    v24 = 0x8E38E38E38E38E39 * ((*(this + 2) - v22) >> 3);
  }

  else
  {
    v14 = *(this + 2);
    v13 = *(this + 3);
    if (v14 >= v13)
    {
      v16 = *(this + 1);
      v17 = 0x8E38E38E38E38E39 * ((v14 - v16) >> 3);
      v18 = v17 + 1;
      if (v17 + 1 > 0x38E38E38E38E38ELL)
      {
        std::string::__throw_length_error[abi:nn200100]();
      }

      v19 = 0x8E38E38E38E38E39 * ((v13 - v16) >> 3);
      if (2 * v19 > v18)
      {
        v18 = 2 * v19;
      }

      if (v19 >= 0x1C71C71C71C71C7)
      {
        v20 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        std::allocator<Isf::ReferenceRecord>::allocate_at_least[abi:nn200100](this + 8, v20);
      }

      v25 = 72 * v17;
      v15 = 72 * v17 + 72;
      v26 = *(this + 1);
      v27 = *(this + 2) - v26;
      v28 = 72 * v17 - v27;
      memcpy((v25 - v27), v26, v27);
      v29 = *(this + 1);
      *(this + 1) = v28;
      *(this + 2) = v15;
      *(this + 3) = 0;
      if (v29)
      {
        operator delete(v29);
      }
    }

    else
    {
      v15 = v14 + 72;
    }

    *(this + 2) = v15;
    v22 = *(this + 1);
    v24 = 0x8E38E38E38E38E39 * ((v15 - v22) >> 3);
    v21 = *(this + 9);
    v23 = v21;
    if (v24 != v21 + 1)
    {
      IsfInternal::InsertNewRecord();
    }
  }

  if (v24 <= v23)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (*(this + 8) == v21)
  {
    IsfInternal::InsertNewRecord();
  }

  v30 = v22 + 72 * v23;
  if (!*(this + 16))
  {
    *(this + 8) = v21;
  }

  *v30 = a3;
  *(v30 + 8) = a4;
  *(v30 + 40) = a2;
  *(v30 + 16) = a5;
  *(v30 + 24) = a6;
  NSLog(&cfstr_IsfNewCalibrat.isa, *&a6);
  v31 = 0;
  *(v30 + 32) = IsfInternal::GetInitialWeightForRecord(this, v30);
  do
  {
    IsfInternal::InsertRecordInSortedList(this, v31++, *(this + 9));
  }

  while (v31 != 3);
  result = 0;
  *(this + 9) = (*(this + 9) + 1) % *(this + 31);
  ++*(this + 16);
  return result;
}

uint64_t IsfInternal::OutlierDetectAndWeight(IsfInternal *this)
{
  v1 = *(this + 31);
  v2 = *(this + 32);
  if (v1 == v2)
  {
    v3 = *(this + 39);
    if (*(this + 162) == 1)
    {
      v3 = vcvtps_s32_f32((v3 * (v1 - *(this + 41))) / v1);
    }
  }

  else
  {
    v3 = (*(this + 16) - v2) * (*(this + 39) - *(this + 38)) / (v1 - v2) + *(this + 38);
  }

  v5 = (this + 40);
  v4 = *(this + 10);
  v7 = *(this + 1);
  v6 = *(this + 2);
  v8 = 0x8E38E38E38E38E39 * ((v6 - v7) >> 3);
  if (v8 <= v4)
  {
    goto LABEL_33;
  }

  v9 = 0;
  v10 = this + 52;
  while (1)
  {
    v11 = *(v7 + 72 * v4 + 40) == 4 ? 3 : 2;
    if (v9 >= v11)
    {
      return 0;
    }

    v12 = v5[v9];
    if (v8 <= v12)
    {
      goto LABEL_33;
    }

    if (v3 >= 1)
    {
      v13 = 0;
      v14 = v7 + 72 * v12;
      do
      {
        v15 = *&v10[4 * v9];
        if (0x8E38E38E38E38E39 * ((v6 - v7) >> 3) <= v15)
        {
          goto LABEL_33;
        }

        if (v14 == v7 + 72 * v15)
        {
          break;
        }

        if (*(v14 + 44))
        {
          *(v14 + v9 + 45) = 0;
          *(v14 + 32) = *(this + 14);
          ++v13;
        }

        v16 = *(v14 + 4 * v9 + 48);
        if (v16 == -1)
        {
          IsfInternal::OutlierDetectAndWeight();
        }

        v7 = *(this + 1);
        v6 = *(this + 2);
        if (0x8E38E38E38E38E39 * ((v6 - v7) >> 3) <= v16)
        {
          goto LABEL_33;
        }

        v14 = v7 + 72 * v16;
      }

      while (v13 < v3);
      v17 = *&v10[4 * v9];
      if (0x8E38E38E38E38E39 * ((v6 - v7) >> 3) > v17)
      {
        v18 = 0;
        v19 = v7 + 72 * v17;
        while (1)
        {
          v20 = v5[v9];
          v8 = 0x8E38E38E38E38E39 * ((v6 - v7) >> 3);
          if (v8 <= v20)
          {
            break;
          }

          if (v19 == v7 + 72 * v20)
          {
            goto LABEL_32;
          }

          if (*(v19 + 44))
          {
            *(v19 + v9 + 45) = 0;
            *(v19 + 32) = *(this + 14);
            ++v18;
          }

          v21 = *(v19 + 4 * v9 + 60);
          if (v21 == -1)
          {
            IsfInternal::OutlierDetectAndWeight();
          }

          v7 = *(this + 1);
          v6 = *(this + 2);
          v8 = 0x8E38E38E38E38E39 * ((v6 - v7) >> 3);
          if (v8 <= v21)
          {
            break;
          }

          v19 = v7 + 72 * v21;
          if (v18 >= v3)
          {
            goto LABEL_32;
          }
        }
      }

LABEL_33:
      std::string::__throw_length_error[abi:nn200100]();
    }

    v8 = 0x8E38E38E38E38E39 * ((v6 - v7) >> 3);
    if (v8 <= *&v10[4 * v9])
    {
      goto LABEL_33;
    }

LABEL_32:
    ++v9;
    v4 = *v5;
    if (v8 <= v4)
    {
      goto LABEL_33;
    }
  }
}

void IsfInternal::CleanHistory(uint64_t a1, _DWORD *a2)
{
  bzero(a2, 0xE38uLL);
  *a2 = *(a1 + 120);
  *(a2 + 4) = 1;
  a2[2] = -1;
  *(a2 + 2) = -1;
  *(a2 + 3) = -1;
  *(a2 + 4) = -1;
}

double IsfInternal::ConvertInternalHistoryToBufferToSave(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x8E38E38E38E38E39 * ((v4 - v3) >> 3) <= *(a1 + 124))
  {
    if (*(a1 + 64) >= 1)
    {
      *(a2 + 4) = 0;
    }

    if (v4 != v3)
    {
      memmove((a2 + 40), v3, v4 - v3);
    }

    result = *(a1 + 32);
    *(a2 + 8) = result;
    v7 = *(a1 + 40);
    *(a2 + 24) = *(a1 + 48);
    *(a2 + 16) = v7;
    v8 = *(a1 + 52);
    *(a2 + 36) = *(a1 + 60);
    *(a2 + 28) = v8;
  }

  else
  {
    NSLog(&cfstr_IsfErrorExisti.isa, 0x8E38E38E38E38E39 * ((v4 - v3) >> 3));
  }

  return result;
}

uint64_t IsfInternal::CalculateWeightedAvgAngleValue(IsfInternal *this, double *a2)
{
  v11[3] = *MEMORY[0x277D85DE8];
  memset(v11, 0, 24);
  memset(v10, 0, sizeof(v10));
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 == v3)
  {
    goto LABEL_10;
  }

  do
  {
    for (i = 0; i != 3; ++i)
    {
      if (!*(v2 + i + 45) || !*(v2 + 44))
      {
        continue;
      }

      if (i == 2 && (*(v2 + 40) - 2) > 2)
      {
        break;
      }

      v5 = *(v2 + 32);
      *&v10[i] = v5 + *&v10[i];
      *&v11[i] = *&v11[i] + v5 * *(v2 + 8 * i);
    }

    v2 += 72;
  }

  while (v2 != v3);
LABEL_10:
  for (j = 0; j != 3; ++j)
  {
    v7 = *&v10[j];
    if (v7 == 0.0)
    {
      v8 = NAN;
    }

    else
    {
      v8 = *&v11[j] / v7;
    }

    a2[j] = v8;
  }

  return 0;
}

uint64_t IsfInternal::getHistoryAxisStatistics(uint64_t a1, int a2, void *a3)
{
  __src = 0;
  v33 = 0;
  v34 = 0;
  v5 = *(a1 + 4 * a2 + 40);
  if (v5 == -1)
  {
    v21 = 0;
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a2;
    v8 = *(a1 + 8);
    do
    {
      v9 = v8 + 72 * v5;
      if (v6 >= v34)
      {
        v10 = __src;
        v11 = v6 - __src;
        v12 = (v6 - __src) >> 3;
        v13 = v12 + 1;
        if ((v12 + 1) >> 61)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        v14 = v34 - __src;
        if ((v34 - __src) >> 2 > v13)
        {
          v13 = v14 >> 2;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::allocator<double>::allocate_at_least[abi:nn200100](&__src, v15);
        }

        v16 = v12;
        v17 = (8 * v12);
        v18 = *(v9 + 8 * v7);
        v19 = &v17[-v16];
        *v17 = v18;
        v6 = (v17 + 1);
        memcpy(v19, v10, v11);
        v20 = __src;
        __src = v19;
        v33 = v6;
        v34 = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *v6 = *(v9 + 8 * v7);
        v6 += 8;
      }

      v33 = v6;
      v8 = *(a1 + 8);
      v5 = *(v8 + 72 * v5 + 4 * v7 + 48);
    }

    while (v5 != -1);
    v21 = __src;
  }

  v22 = (v6 - v21) >> 3;
  v23 = ((v22 + 1) >> 2) - 1;
  v24 = ((v22 + 1) >> 1) - 1;
  v25 = ((3 * (v22 + 1)) >> 2) - 1;
  v29 = v6 == v21 || v22 != *(a1 + 64) || v23 >= v22 || v24 >= v22 || v25 >= v22;
  v30 = !v29;
  if (!v29)
  {
    *a3 = *v21;
    a3[1] = *&v21[8 * v23];
    a3[2] = *&v21[8 * v24];
    a3[3] = *&v21[8 * v25];
    a3[4] = *(v6 - 1);
LABEL_36:
    v33 = v21;
    operator delete(v21);
    return v30;
  }

  if (v21)
  {
    goto LABEL_36;
  }

  return v30;
}

void sub_224973FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IsfInternal::getHistoryStatistics(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 64);
  result = IsfInternal::getHistoryAxisStatistics(a1, 0, (a2 + 8));
  if (!result || (result = IsfInternal::getHistoryAxisStatistics(a1, 1, (a2 + 48)), !result) || (result = IsfInternal::getHistoryAxisStatistics(a1, 2, (a2 + 88)), (result & 1) == 0))
  {
    *a2 = 0;
  }

  return result;
}

uint64_t IsfInternal::Run(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  *(a1 + 160) = 0;
  if (a3 == 2)
  {
    NSLog(&cfstr_IsfS.isa, "Error: Calibration result cannot be originated from GMC-RGB-IR.");
    return 258;
  }

  v9 = a7;
  *(a1 + 72) = vdupq_n_s64(0x7FF8000000000000uLL);
  *(a1 + 88) = 0x7FF8000000000000;
  NSLog(&cfstr_IsfVDDDNewCali.isa, 1, 3, 1, *&a4, *&a5, *&a6, *&a7, a3);
  IsfInternal::ConvertSavedToInternalHistory(a1, a2);
  if (a3 > 2)
  {
    if (a3 != 3 && a3 != 4)
    {
      goto LABEL_7;
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
LABEL_7:
      NSLog(&cfstr_IsfErrorCalibr.isa, a3);
      return 258;
    }
  }

  else
  {
    LODWORD(v15) = *(a1 + 144);
    v9 = v15;
  }

  v16 = *(a1 + 136);
  if (v9 < *(a1 + 132) || v9 > v16)
  {
    NSLog(&cfstr_IsfConfidenceI.isa, *&v9, *(a1 + 132), v16);
    return 260;
  }

  bzero(a2, 0xE38uLL);
  *a2 = *(a1 + 120);
  *(a2 + 4) = 1;
  *(a2 + 8) = -1;
  *(a2 + 16) = -1;
  *(a2 + 24) = -1;
  *(a2 + 32) = -1;
  if (IsfInternal::InsertNewRecord(a1, a3, a4, a5, a6, v9))
  {
    return 256;
  }

  v18 = *(a1 + 128);
  if (*(a1 + 64) >= v18)
  {
    IsfInternal::ConvertInternalHistoryToBufferToSave(a1, a2);
    if (v20)
    {
      return 256;
    }

    IsfInternal::CalcNewRotation(a1, a2);
    return 0;
  }

  else
  {
    NSLog(&cfstr_IsfHistoryDoes.isa, *(a1 + 64), v18);
    IsfInternal::ConvertInternalHistoryToBufferToSave(a1, a2);
    if (v19)
    {
      return 256;
    }

    else
    {
      return 1;
    }
  }
}

uint64_t IsfInternal::CalcNewRotation(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 160))
  {
    return 0;
  }

  IsfInternal::ConvertSavedToInternalHistory(a1, a2);
  v4 = *(a1 + 128);
  if (*(a1 + 64) < v4)
  {
    NSLog(&cfstr_IsfHistoryDoes.isa, *(a1 + 64), v4);
    return 1;
  }

  if (*(a1 + 161) == 1)
  {
    *(a1 + 162) = 0;
    *(a1 + 164) = 0;
    if ((*(*a1 + 16))(a1) == 261)
    {
      *(a1 + 162) = 1;
      v5 = *(a1 + 32);
      v6 = *(a1 + 8);
      v7 = 0x8E38E38E38E38E39 * ((*(a1 + 16) - v6) >> 3);
      if (v7 <= v5)
      {
        goto LABEL_16;
      }

      v8 = *(a1 + 164);
      if (v8)
      {
        v9 = *(a1 + 124);
        v10 = *(a1 + 164);
        while (1)
        {
          v11 = v5 % v9;
          if (v7 <= v11)
          {
            break;
          }

          *(v6 + 72 * v11 + 44) = 0;
          LODWORD(v5) = v5 + 1;
          if (!--v10)
          {
            goto LABEL_12;
          }
        }

LABEL_16:
        std::string::__throw_length_error[abi:nn200100]();
      }

LABEL_12:
      v12 = 1;
    }

    else
    {
      v12 = *(a1 + 162);
      v8 = *(a1 + 164);
    }

    NSLog(&cfstr_IsfIsfStepDete.isa, v12, v8);
  }

  IsfInternal::OutlierDetectAndWeight(a1);
  IsfInternal::CalculateWeightedAvgAngleValue(a1, (a1 + 72));
  NSLog(&cfstr_IsfNewCalculat.isa, *(a1 + 72), *(a1 + 80), *(a1 + 88));
  result = 0;
  *(a1 + 160) = 1;
  return result;
}

void std::allocator<Isf::ReferenceRecord>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

char *std::vector<Isf::ReferenceRecord>::__insert_with_size[abi:nn200100]<Isf::ReferenceRecord const*,Isf::ReferenceRecord const*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 >= 1)
  {
    v6 = __src;
    v8 = a1[1];
    v9 = a1[2];
    if ((0x8E38E38E38E38E39 * ((v9 - v8) >> 3)) >= a5)
    {
      v15 = v8 - __dst;
      if ((0x8E38E38E38E38E39 * ((v8 - __dst) >> 3)) >= a5)
      {
        v22 = 9 * a5;
        v23 = &__dst[72 * a5];
        v24 = &v8[-72 * a5];
        v25 = a1[1];
        while (v24 < v8)
        {
          *v25 = *v24;
          v26 = *(v24 + 1);
          v27 = *(v24 + 2);
          v28 = *(v24 + 3);
          *(v25 + 64) = *(v24 + 8);
          *(v25 + 32) = v27;
          *(v25 + 48) = v28;
          *(v25 + 16) = v26;
          v24 += 72;
          v25 += 72;
        }

        a1[1] = v25;
        if (v8 != v23)
        {
          memmove(&__dst[72 * a5], __dst, v8 - v23);
        }

        v35 = 8 * v22;
        v36 = v5;
        v37 = v6;
      }

      else
      {
        v16 = &__src[v15];
        v17 = a1[1];
        v18 = v17;
        while (v16 != a4)
        {
          *v18 = *v16;
          v19 = *(v16 + 1);
          v20 = *(v16 + 2);
          v21 = *(v16 + 3);
          *(v18 + 64) = *(v16 + 8);
          *(v18 + 32) = v20;
          *(v18 + 48) = v21;
          *(v18 + 16) = v19;
          v16 += 72;
          v18 += 72;
          v17 += 72;
        }

        a1[1] = v17;
        if (v15 < 1)
        {
          return v5;
        }

        v29 = &__dst[72 * a5];
        v30 = v17 - 72 * a5;
        v31 = v17;
        while (v30 < v8)
        {
          *v31 = *v30;
          v32 = *(v30 + 16);
          v33 = *(v30 + 32);
          v34 = *(v30 + 48);
          *(v31 + 64) = *(v30 + 64);
          *(v31 + 32) = v33;
          *(v31 + 48) = v34;
          *(v31 + 16) = v32;
          v30 += 72;
          v31 += 72;
        }

        a1[1] = v31;
        if (v18 != v29)
        {
          memmove(&__dst[72 * a5], __dst, v17 - v29);
        }

        v36 = v5;
        v37 = v6;
        v35 = v15;
      }

      memmove(v36, v37, v35);
      return v5;
    }

    v10 = *a1;
    v11 = a5 - 0x71C71C71C71C71C7 * (&v8[-*a1] >> 3);
    if (v11 > 0x38E38E38E38E38ELL)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v12 = __dst - v10;
    v13 = 0x8E38E38E38E38E39 * ((v9 - v10) >> 3);
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x1C71C71C71C71C7)
    {
      v14 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      std::allocator<Isf::ReferenceRecord>::allocate_at_least[abi:nn200100](a1, v14);
    }

    v38 = 8 * (v12 >> 3);
    v39 = (v38 + 72 * a5);
    v40 = 72 * a5;
    v41 = v38;
    do
    {
      *v41 = *v6;
      v42 = *(v6 + 1);
      v43 = *(v6 + 2);
      v44 = *(v6 + 3);
      *(v41 + 64) = *(v6 + 8);
      *(v41 + 32) = v43;
      *(v41 + 48) = v44;
      *(v41 + 16) = v42;
      v41 += 72;
      v6 += 72;
      v40 -= 72;
    }

    while (v40);
    memcpy(v39, v5, a1[1] - v5);
    v45 = *a1;
    v46 = &v39[a1[1] - v5];
    a1[1] = v5;
    v47 = v5 - v45;
    v48 = (v38 - (v5 - v45));
    memcpy(v48, v45, v47);
    v49 = *a1;
    *a1 = v48;
    a1[1] = v46;
    a1[2] = 0;
    if (v49)
    {
      operator delete(v49);
    }

    return v38;
  }

  return v5;
}

void std::allocator<double>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void IsfInternal::RemoveOldestRecord()
{
  __assert_rtn("RemoveOldestRecord", "IsfInternal.mm", 128, "m_tail[i] == m_oldestIdx");
}

{
  __assert_rtn("RemoveOldestRecord", "IsfInternal.mm", 138, "m_head[i] == m_oldestIdx");
}

void IsfInternal::InsertRecordInSortedList()
{
  __assert_rtn("InsertRecordInSortedList", "IsfInternal.mm", 176, "m_numberOfRecords < getHistoryWindowSize()");
}

{
  __assert_rtn("InsertRecordInSortedList", "IsfInternal.mm", 206, "m_tail[angleIdx] == newRecord.prevInSorted[angleIdx]");
}

{
  __assert_rtn("InsertRecordInSortedList", "IsfInternal.mm", 189, "m_tail[angleIdx] != -1");
}

{
  __assert_rtn("InsertRecordInSortedList", "IsfInternal.mm", 188, "m_head[angleIdx] != -1");
}

void IsfInternal::InsertNewRecord()
{
  __assert_rtn("InsertNewRecord", "IsfInternal.mm", 252, "m_records.size() == (size_t)m_nextIdx + 1");
}

{
  __assert_rtn("InsertNewRecord", "IsfInternal.mm", 256, "m_oldestIdx != m_nextIdx");
}

void IsfInternal::OutlierDetectAndWeight()
{
  __assert_rtn("OutlierDetectAndWeight", "IsfInternal.mm", 315, "currentRecord->nextInSorted[angleIdx] != -1");
}

{
  __assert_rtn("OutlierDetectAndWeight", "IsfInternal.mm", 329, "currentRecord->prevInSorted[angleIdx] != -1");
}

void RgbIrCalibration::RgbIrCalibration(RgbIrCalibration *this, int a2)
{
  *this = 0;
  gDbgLvl = a2;
  operator new();
}

void RgbIrCalibration::~RgbIrCalibration(RgbIrCalibration *this)
{
  if (*this == 1)
  {
    *(this + 1) = 1;
    CalibrateRgbIr::abort(*(this + 1));
  }

  else
  {
    v1 = *(this + 1);
    if (v1)
    {
      CalibrateRgbIr::~CalibrateRgbIr(v1);
      MEMORY[0x22AA55B60]();
    }
  }
}

uint64_t RgbIrCalibration::Calibrate(uint64_t a1, int a2, const __CFDictionary *a3, int a4, int a5, int a6, unsigned int a7, const __CFBoolean *a8, double *a9, const __CFArray *a10, __int16 a11, uint64_t a12, unsigned int *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  context = objc_autoreleasePoolPush();
  *a1 = 1;
  v20 = CalibrateRgbIr::Calibrate(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a14, a15);
  *a1 = 0;
  if (*(a1 + 1))
  {
    v21 = 4102;
  }

  else
  {
    v21 = v20;
    v22 = *(a1 + 8);
    *a16 = *(v22 + 984);
    *(a16 + 8) = *(v22 + 992);
    *(a16 + 12) = *(v22 + 996);
    *(a16 + 16) = *(v22 + 1000);
    v23 = *(v22 + 1004);
    *a13 = v23;
    if (v23 <= 2)
    {
      *(a16 + 20) = v23;
    }
  }

  objc_autoreleasePoolPop(context);
  return v21;
}

void CalibrateRgbIr::CalibrateRgbIr(CalibrateRgbIr *this)
{
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 21) = 0;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 64) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 50) = 0;
  *(this + 122) = 0;
  *(this + 492) = 0;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 464) = 0;
  MetalMgt::MetalMgt((this + 496));
  for (i = 0; i != 144; i += 24)
  {
    MetalObjects::MetalObjects((this + i + 608));
  }

  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 56) = 0u;
  *(this + 47) = 0u;
  *(this + 48) = 0u;
  *(this + 60) = 0u;
  *(this + 976) = 0;
  *(this + 123) = 0x7FF8000000000000;
  *(this + 62) = 0u;
  CalibrateRgbIr::Init(this);
}

void sub_224974C24(_Unwind_Exception *a1)
{
  CalibrateRgbIr::MTLBufferParams::~MTLBufferParams(v1 + 112);

  v3 = v1 + 91;
  v4 = -144;
  do
  {
    v3 = H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::{unnamed type#3}::~TimeOfFlightColorSynchronizerInternal(v3) - 3;
    v4 += 24;
  }

  while (v4);
  MetalMgt::~MetalMgt((v1 + 62));
  _Unwind_Resume(a1);
}

void MetalMgt::~MetalMgt(MetalMgt *this)
{
  std::mutex::~mutex((this + 24));
}

void MetalObjects::MetalObjects(MetalObjects *this)
{
  *this = 0;
  *(this + 1) = 0;
  MetalObjects::init(this);
}

void CalibrateRgbIr::~CalibrateRgbIr(CalibrateRgbIr *this)
{
  if (gDbgLvl)
  {
    CFRelease(*(this + 126));
  }

  for (i = 0; i != -144; i -= 24)
  {
  }

  std::mutex::~mutex((this + 520));
}

void sub_224974E98(_Unwind_Exception *a1)
{
  CalibrateRgbIr::MTLBufferParams::~MTLBufferParams(v1 + 112);

  v3 = v1 + 91;
  v4 = -144;
  do
  {
    v3 = H16ISP::H16ISPTimeOfFlightColorSynchronizer::TimeOfFlightColorSynchronizerInternal::{unnamed type#3}::~TimeOfFlightColorSynchronizerInternal(v3) - 3;
    v4 += 24;
  }

  while (v4);
  MetalMgt::~MetalMgt((v1 + 62));
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_RgbIrCalibration_mm()
{
  v0 = objc_autoreleasePoolPush();
  v1 = MEMORY[0x277D82640];
  __cxa_atexit(MEMORY[0x277D82640], &gOutputDirName, &dword_2247DB000);
  __cxa_atexit(v1, &gCurrFrameId, &dword_2247DB000);

  objc_autoreleasePoolPop(v0);
}

uint64_t PBCreateDirForFile(uint64_t *a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  v2 = [MEMORY[0x277CCACA8] stringWithCString:v1 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  if ([v3 fileExistsAtPath:v2 isDirectory:&v9])
  {
    goto LABEL_11;
  }

  v4 = [v2 pathExtension];
  v5 = [v4 isEqualToString:&stru_28381ECE0];

  if (v5)
  {
LABEL_10:
    if (![v3 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:0])
    {
      v7 = 0;
      goto LABEL_13;
    }

LABEL_11:
    v7 = 1;
LABEL_13:
    v6 = v2;
    goto LABEL_14;
  }

  v6 = [v2 stringByDeletingLastPathComponent];

  if (![v3 fileExistsAtPath:v6 isDirectory:&v9] || (v9 & 1) == 0)
  {
    v2 = v6;
    goto LABEL_10;
  }

  v7 = 1;
LABEL_14:

  return v7;
}

uint64_t PortableBuffer::GetPixelFormatFromBytePerPixel(PortableBuffer *this)
{
  if (this - 1 > 7)
  {
    return 4294901760;
  }

  else
  {
    return dword_2249D2B40[this - 1];
  }
}

uint64_t PortableBuffer::ReadHeader(std::string *__str, int a2, uint64_t a3, uint64_t a4)
{
  v51[2] = *MEMORY[0x277D85DE8];
  *(&v50.__r_.__value_.__s + 23) = 0;
  v50.__r_.__value_.__s.__data_[0] = 0;
  if (a2)
  {
    std::string::operator=(&v50, __str);
  }

  else
  {
    if (byte_281003B3F >= 0)
    {
      v7 = byte_281003B3F;
    }

    else
    {
      v7 = qword_281003B30;
    }

    p_p = &__p;
    std::string::basic_string[abi:nn200100](&__p, v7 + 1);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v7)
    {
      if (byte_281003B3F >= 0)
      {
        v9 = &PortableBuffer::m_outputDir;
      }

      else
      {
        v9 = PortableBuffer::m_outputDir;
      }

      memmove(p_p, v9, v7);
    }

    *(&p_p->__r_.__value_.__l.__data_ + v7) = 47;
    v10 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if (v10 >= 0)
    {
      v11 = __str;
    }

    else
    {
      v11 = __str->__r_.__value_.__r.__words[0];
    }

    if (v10 >= 0)
    {
      size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __str->__r_.__value_.__l.__size_;
    }

    v13 = std::string::append(&__p, v11, size);
    v14 = v13->__r_.__value_.__r.__words[0];
    v51[0] = v13->__r_.__value_.__l.__size_;
    *(v51 + 7) = *(&v13->__r_.__value_.__r.__words[1] + 7);
    v15 = HIBYTE(v13->__r_.__value_.__r.__words[2]);
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    v50.__r_.__value_.__r.__words[0] = v14;
    v50.__r_.__value_.__l.__size_ = v51[0];
    *(&v50.__r_.__value_.__r.__words[1] + 7) = *(v51 + 7);
    *(&v50.__r_.__value_.__s + 23) = v15;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v16 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Loads file ", 11);
  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v50;
  }

  else
  {
    v17 = v50.__r_.__value_.__r.__words[0];
  }

  if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v18 = v50.__r_.__value_.__l.__size_;
  }

  v19 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, v17, v18);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, ".\n", 2);
  std::ifstream::open();
  if (*(a4 + 136))
  {
    std::istream::read();
    if (*a3 == 0xE010B0A07070009 && *(a3 + 8) == 0x70E0F0F020BLL)
    {
      if (*(a3 + 20) == 1)
      {
        v29 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Loaded header of file ", 22);
        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &v50;
        }

        else
        {
          v30 = v50.__r_.__value_.__r.__words[0];
        }

        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v31 = v50.__r_.__value_.__l.__size_;
        }

        v32 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v29, v30, v31);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, ".\n", 2);
        v33 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "\t descr: ", 9);
        v34 = strlen((a3 + 24));
        v35 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v33, a3 + 24, v34);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v35, ".\n", 2);
        v36 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "\t width: ", 9);
        v37 = MEMORY[0x22AA55970](v36, *(a3 + 172));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v37, ".\n", 2);
        v38 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "\t height: ", 10);
        v39 = MEMORY[0x22AA55970](v38, *(a3 + 176));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v39, ".\n", 2);
        v40 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "\t stride: ", 10);
        v41 = MEMORY[0x22AA55970](v40, *(a3 + 180));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v41, ".\n", 2);
        v42 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "\t pixel format: 0x", 18);
        *(v42 + *(*v42 - 24) + 8) = *(v42 + *(*v42 - 24) + 8) & 0xFFFFFFB5 | 8;
        v43 = MEMORY[0x22AA55970]();
        *(v43 + *(*v43 - 24) + 8) = *(v43 + *(*v43 - 24) + 8) & 0xFFFFFFB5 | 2;
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v43, ".\n", 2);
        v44 = 1;
        goto LABEL_53;
      }

      v45 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "PortableBuffer version (v", 25);
      v46 = MEMORY[0x22AA55970](v45, *(a3 + 20));
      v47 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v46, ") is not the same as the one supported by this software (v", 58);
      v22 = MEMORY[0x22AA55960](v47, 1);
      v21 = ").\n";
      v23 = 3;
    }

    else
    {
      v21 = "Magic number of buffer does not match. File may not be a PortableBuffer or may be corrupted.\n";
      v22 = MEMORY[0x277D82678];
      v23 = 93;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v22, v21, v23);
  }

  else
  {
    v24 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Unable to read from ", 20);
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &v50;
    }

    else
    {
      v25 = v50.__r_.__value_.__r.__words[0];
    }

    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v26 = v50.__r_.__value_.__l.__size_;
    }

    v27 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, v25, v26);
    std::ios_base::getloc((v27 + *(*v27 - 24)));
    v28 = std::locale::use_facet(&__p, MEMORY[0x277D82680]);
    (v28->__vftable[2].~facet_0)(v28, 10);
    std::locale::~locale(&__p);
    std::ostream::put();
    std::ostream::flush();
  }

  v44 = 0;
LABEL_53:
  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
  }

  return v44;
}

void sub_224975624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void *GrayScaleImage::save(int a1, CVPixelBufferRef pixelBuffer)
{
  PlaneCount = CVPixelBufferGetPlaneCount(pixelBuffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  if (PlaneCount)
  {
    CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
    CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
    if (PixelFormatType == 2037741158)
    {
      CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
LABEL_8:
      CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
      CVPixelBufferGetBaseAddress(pixelBuffer);

      return CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    }
  }

  else
  {
    CVPixelBufferGetWidth(pixelBuffer);
    CVPixelBufferGetHeight(pixelBuffer);
    if (PixelFormatType == 825306677 || PixelFormatType == 1278226742 || PixelFormatType == 825437747)
    {
      CVPixelBufferGetBytesPerRow(pixelBuffer);
      goto LABEL_8;
    }
  }

  v6 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Unsupported CVPixelBuffer pixel format: ", 40);
  v7 = MEMORY[0x22AA55970](v6, PixelFormatType);

  return std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, " (see CVPixelBufferPrivate.h). Please contact PortableBuffer support.\n", 70);
}

uint64_t std::string::basic_string[abi:nn200100](uint64_t result, unint64_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
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

void *std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x22AA55910](v13, a1);
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

    if (!std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x22AA55920](v13);
  return a1;
}

uint64_t std::__pad_and_output[abi:nn200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
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
        std::string::__throw_length_error[abi:nn200100]();
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

void sub_224975B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void _GLOBAL__sub_I_PortableBuffer_mm()
{
  v0 = objc_autoreleasePoolPush();
  __cxa_atexit(MEMORY[0x277D82640], &PortableBuffer::m_outputDir, &dword_2247DB000);

  objc_autoreleasePoolPop(v0);
}

uint64_t Isf::RunIsf(double a1, double a2, double a3, double a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, int64x2_t *a9)
{
  result = IsfInternal::Run(a6, a7, a8, a1, a2, a3, a4);
  if (result)
  {
    *a9 = vdupq_n_s64(0x7FF8000000000000uLL);
    v12 = 0x7FF8000000000000;
  }

  else
  {
    a9->i64[0] = a6[9];
    a9->i64[1] = a6[10];
    v12 = a6[11];
  }

  a9[1].i64[0] = v12;
  return result;
}

uint64_t CalibrateRgbIr::Init(CalibrateRgbIr *this)
{
  if (gDbgLvl)
  {
    *(this + 126) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v2 = *(this + 1);
  v18 = *this;
  v19 = v2;
  v20 = *(this + 2);
  v21 = *(this + 6);
  v22 = *(this + 56);
  v23 = *(this + 9);
  v24 = *(this + 5);
  v25 = *(this + 12);
  v26 = *(this + 104);
  v3 = *(this + 120);
  v4 = *(this + 136);
  v5 = *(this + 152);
  v30 = *(this + 21);
  v29 = v5;
  v28 = v4;
  v27 = v3;
  v6 = *(this + 11);
  v7 = *(this + 12);
  v8 = *(this + 13);
  v34 = *(this + 28);
  v32 = v7;
  v33 = v8;
  v31 = v6;
  InitCamParams(&v18);
  v9 = *(this + 248);
  v18 = *(this + 232);
  v19 = v9;
  v20 = *(this + 264);
  v21 = *(this + 35);
  v22 = *(this + 18);
  v23 = *(this + 38);
  v24 = *(this + 312);
  v25 = *(this + 41);
  v10 = *(this + 22);
  v26 = *(this + 21);
  v11 = *(this + 23);
  v12 = *(this + 24);
  v30 = *(this + 50);
  v29 = v12;
  v28 = v11;
  v27 = v10;
  v13 = *(this + 408);
  v14 = *(this + 424);
  v15 = *(this + 440);
  v34 = *(this + 57);
  v32 = v14;
  v33 = v15;
  v31 = v13;
  result = InitCamParams(&v18);
  for (i = 0; i != 144; i += 24)
  {
    *(this + i + 624) = this + 496;
  }

  return result;
}

void sub_22497608C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  Matrix<float>::~Matrix(va);
  Matrix<float>::~Matrix(va1);
  _Unwind_Resume(a1);
}

void OneDimensionHorizontalFilterWithPadding(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != 1)
  {
    OneDimensionHorizontalFilterWithPadding();
  }

  v4 = *(a2 + 20);
  if ((v4 & 1) == 0)
  {
    OneDimensionHorizontalFilterWithPadding();
  }

  ImageUtils::Filter2<float>(a1, a2, a3);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v4 >> 1;
    do
    {
      if (v4 >= 2)
      {
        v10 = 0;
        v11 = *(a1 + 20);
        v12 = *(a2 + 16);
        v13 = *(a2 + 20);
        v14 = v11 - 1;
        v15 = *(a3 + 16);
        v16 = ~(v4 >> 1) + v4;
        v17 = v4 >> 1;
        v18 = 4 * v11 * v8;
        v19 = v4 >> 1;
        do
        {
          if (v15 <= v8 || (v20 = *(a3 + 20), v10 >= v20))
          {
            GMC_Homography();
          }

          v21 = v11 + ~v10;
          if (v20 <= v21)
          {
            GMC_Homography();
          }

          if (v10 == v11)
          {
            GMC_Homography();
          }

          if (v11 <= v21)
          {
            GMC_Homography();
          }

          v22 = *(a3 + 8);
          v23 = v22 + 4 * v10;
          v24 = v20 * v8;
          v25 = v22 + 4 * v21;
          v26 = *(a1 + 8);
          *(v23 + 4 * v24) = 0;
          *(v25 + 4 * v24) = 0;
          if (v10 > (v9 - v13))
          {
            if (v12)
            {
              v27 = (v26 + v18 + 4 * v14);
              v28 = (v26 + 4 * v11 * v8);
              v29 = v16;
              v30 = v17;
              v31 = v19;
              while (v13 > v30)
              {
                *(v23 + 4 * v24) = *(v23 + 4 * v24) + (*v28 * *(*(a2 + 8) + 4 * v30));
                if (v13 <= v29)
                {
                  GMC_Homography();
                }

                v32 = *v27--;
                *(v25 + 4 * v24) = *(v25 + 4 * v24) + (v32 * *(*(a2 + 8) + 4 * v29));
                ++v31;
                ++v30;
                ++v28;
                --v29;
                if (v31 >= v13)
                {
                  goto LABEL_18;
                }
              }
            }

            GMC_Homography();
          }

LABEL_18:
          ++v10;
          --v19;
          v18 += 4;
          --v14;
          LODWORD(v17) = v17 - 1;
          ++v16;
        }

        while (v10 != v9);
      }

      ++v8;
    }

    while (v8 != v7);
  }
}

void OneDimensionVerticalFilterWithPadding(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    if (*(a2 + 20))
    {
      Matrix<float>::Transpose(a2);
    }

    OneDimensionVerticalFilterWithPadding();
  }

  OneDimensionVerticalFilterWithPadding();
}

uint64_t CalibrateRgbIr::SampleWorldPointsOnCam(uint64_t a1, int *a2, void *a3, uint64_t a4)
{
  v13 = 0;
  MetalObjects::createBuffer(a4, &v13, (a1 + 784), 0x6CuLL);
  v8 = v13;
  v12 = 0;
  MetalObjects::createBuffer(a4, &v12, a2, 0x6CuLL);
  v9 = v12;
  v10 = *(a4 + 8);
  *a3 = v10;
  MetalObjects::Algo_DistortRadialLiteInternal(a4, *(a1 + 752), *(a1 + 760), *(a1 + 768), *(a1 + 920), *(a1 + 912), *(a1 + 904), *(a1 + 896), *(a1 + 776), *(a1 + 928), v8, v9, *(a1 + 936), v10, 1);

  return 0;
}

void CalibrateRgbIr::CostFmi(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 16);
  v33 = *a1;
  v34 = v8;
  v35 = *(a1 + 32);
  v9 = *(a1 + 48);
  *&v36[8] = *(a1 + 56);
  v10 = *(a1 + 72);
  *v36 = v9;
  *&v36[24] = v10;
  v37 = *(a1 + 80);
  v11 = *(a1 + 96);
  *&v38[8] = *(a1 + 104);
  v12 = *(a1 + 120);
  v13 = *(a1 + 136);
  v14 = *(a1 + 152);
  v15 = *(a1 + 168);
  *v38 = v11;
  *&v38[72] = v15;
  *&v38[56] = v14;
  *&v38[40] = v13;
  *&v38[24] = v12;
  v16 = *(a1 + 192);
  v39[0] = *(a1 + 176);
  v39[1] = v16;
  v39[2] = *(a1 + 208);
  v40 = *(a1 + 224);
  v37 = vaddq_f64(v37, vcvtq_f64_f32(*(a2 + 4)));
  *v38 = v11 + *(a2 + 12);
  GeomUtils::CalcRotationMatrix<double>(v37.f64, &v38[8]);
  v22 = vcvt_f32_f64(v33);
  v17 = *&v34;
  v23 = v17;
  v24 = DWORD2(v34);
  v25 = vcvt_hight_f32_f64(vcvt_f32_f64(*v36), *&v36[16]);
  v26 = vcvt_hight_f32_f64(vcvt_f32_f64(v37), *v38);
  v27 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v38[16]), *&v38[32]);
  v28 = vcvt_hight_f32_f64(vcvt_f32_f64(*&v38[48]), *&v38[64]);
  v18 = *v39;
  v29 = v18;
  v30 = *(v39 + 8);
  v31 = 0;
  v32 = 0;
  v21 = 0;
  CalibrateRgbIr::SampleWorldPointsOnCam(a1, &v22, &v21, a4);
  v19 = v21;
  [v19 width];
  [v19 height];
  v20 = [v19 buffer];
  [v20 contents];

  operator new[]();
}

void sub_22497695C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  Matrix<float>::~Matrix(va);
  Matrix<float>::~Matrix(va1);

  _Unwind_Resume(a1);
}

void CalibrateRgbIr::ReleaseMetalObjects(CalibrateRgbIr *this)
{
  v2 = *(this + 94);
  *(this + 94) = 0;

  v3 = *(this + 95);
  *(this + 95) = 0;

  v4 = *(this + 94);
  *(this + 94) = 0;

  v5 = *(this + 115);
  *(this + 115) = 0;

  v6 = *(this + 114);
  *(this + 114) = 0;

  v7 = *(this + 116);
  *(this + 116) = 0;

  v8 = *(this + 117);
  *(this + 117) = 0;

  v9 = *(this + 113);
  *(this + 113) = 0;

  v10 = *(this + 112);
  *(this + 112) = 0;

  v11 = *(this + 97);
  *(this + 97) = 0;

  v12 = *(this + 120);
  *(this + 120) = 0;

  v13 = *(this + 121);
  *(this + 121) = 0;
}

void CalibrateRgbIr::CalculateGrid(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3 <= a4)
  {
    v5 = a3;
    v6 = *(a2 + 8);
    v7 = v6;
    do
    {
      if (v7)
      {
        v8 = 0;
        v9 = v7 * v7 * v5;
        do
        {
          if (v6)
          {
            v10 = 0;
            v11 = v9 + v7 * v8;
            do
            {
              if (*(a1 + 976) == 1)
              {
                break;
              }

              ++v10;
              ++v11;
            }

            while (v10 < v6);
          }

          ++v8;
          v7 = *(a2 + 8);
        }

        while (v8 < v6);
      }
    }

    while (v5++ != a4);
  }

  for (i = 0; i != 6; ++i)
  {
    v14 = [*(a1 + 968) objectAtIndexedSubscript:i];
    dispatch_group_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  }
}

uint64_t CalibrateRgbIr::PrepareGridCalculation(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  if (a4 && a5)
  {
    v105[0] = 0;
    MetalObjects::createTexture((a1 + 608), v105, *(a2 + 8), a5, a4);
    v10 = v105[0];
    v11 = v105[0];
    objc_storeStrong((a1 + 752), v10);
    v104 = 0;
    MetalObjects::createTexture((a1 + 608), &v104, (*(a2 + 8) + 4 * *(a2 + 20)), a5, a4);
    v12 = v104;
    v13 = v104;
    objc_storeStrong((a1 + 760), v12);
    v103 = 0;
    MetalObjects::createTexture((a1 + 608), &v103, (*(a2 + 8) + 4 * (2 * *(a2 + 20))), a5, a4);
    v14 = v103;
    v15 = v103;
    objc_storeStrong((a1 + 768), v14);
    if (*(a1 + 752) && *(a1 + 760) && *(a1 + 768))
    {
      *(a1 + 784) = vcvt_f32_f64(*(a1 + 232));
      v16 = *(a1 + 248);
      *(a1 + 792) = v16;
      v17 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 312)), *(a1 + 328));
      *(a1 + 800) = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 280)), *(a1 + 296));
      *(a1 + 816) = v17;
      v18 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 344)), *(a1 + 360));
      v19 = vcvt_hight_f32_f64(vcvt_f32_f64(*(a1 + 376)), *(a1 + 392));
      *(a1 + 796) = *(a1 + 256);
      *(a1 + 832) = v18;
      *(a1 + 848) = v19;
      v20 = *(a1 + 408);
      *(a1 + 864) = v20;
      *(a1 + 868) = *(a1 + 416);
      *(a1 + 884) = a4;
      *(a1 + 888) = a5;
      v102 = 0;
      v78 = v11;
      MetalObjects::createBuffer(a1 + 608, &v102, *(a1 + 272), 4 * *(a1 + 256));
      v21 = v102;
      v22 = v102;
      v101 = 0;
      MetalObjects::createBuffer(a1 + 608, &v101, *(a1 + 264), 4 * *(a1 + 256));
      v77 = v22;
      v23 = v101;
      v76 = v101;
      objc_storeStrong((a1 + 912), v21);
      objc_storeStrong((a1 + 920), v23);
      Matrix<float>::Matrix(v99, 1, *(a1 + 420));
      v24 = *(a1 + 420);
      if (v24)
      {
        v25 = 0;
        if ((v24 + 1) > 2)
        {
          v26 = v24 + 1;
        }

        else
        {
          v26 = 2;
        }

        v27 = (v26 - 1);
        v28 = vdupq_n_s64(v27 - 1);
        v29 = (v27 + 3) & 0x1FFFFFFFCLL;
        v30 = (v100 + 2);
        do
        {
          v31 = vdupq_n_s64(v25);
          v32 = vmovn_s64(vcgeq_u64(v28, vorrq_s8(v31, xmmword_2249B9820)));
          if (vuzp1_s16(v32, *v28.i8).u8[0])
          {
            *(v30 - 2) = (v25 + 1) + -0.5;
          }

          if (vuzp1_s16(v32, *&v28).i8[2])
          {
            *(v30 - 1) = (v25 + 2) + -0.5;
          }

          if (vuzp1_s16(*&v28, vmovn_s64(vcgeq_u64(v28, vorrq_s8(v31, xmmword_2249BBCC0)))).i32[1])
          {
            *v30 = (v25 + 3) + -0.5;
            v30[1] = (v25 + 4) + -0.5;
          }

          v25 += 4;
          v30 += 4;
        }

        while (v29 != v25);
      }

      Matrix<float>::Matrix(v97, 1, *(a1 + 416));
      v33 = *(a1 + 416);
      if (v33)
      {
        v34 = 0;
        if ((v33 + 1) > 2)
        {
          v35 = v33 + 1;
        }

        else
        {
          v35 = 2;
        }

        v36 = (v35 - 1);
        v37 = vdupq_n_s64(v36 - 1);
        v38 = (v36 + 3) & 0x1FFFFFFFCLL;
        v39 = (v98 + 2);
        do
        {
          v40 = vdupq_n_s64(v34);
          v41 = vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_2249B9820)));
          if (vuzp1_s16(v41, *v37.i8).u8[0])
          {
            *(v39 - 2) = (v34 + 1) + -0.5;
          }

          if (vuzp1_s16(v41, *&v37).i8[2])
          {
            *(v39 - 1) = (v34 + 2) + -0.5;
          }

          if (vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, vorrq_s8(v40, xmmword_2249BBCC0)))).i32[1])
          {
            *v39 = (v34 + 3) + -0.5;
            v39[1] = (v34 + 4) + -0.5;
          }

          v34 += 4;
          v39 += 4;
        }

        while (v38 != v34);
      }

      v96 = 0;
      MetalObjects::createBuffer(a1 + 608, &v96, v100, 4 * *(a1 + 420));
      v42 = v96;
      v79 = v96;
      v95 = 0;
      MetalObjects::createBuffer(a1 + 608, &v95, v98, 4 * *(a1 + 416));
      v43 = v95;
      v44 = v95;
      objc_storeStrong((a1 + 904), v43);
      objc_storeStrong((a1 + 896), v42);
      *(a1 + 944) = v97;
      *(a1 + 952) = v99;
      v45 = (a1 + 616);
      v46 = 6;
      do
      {
        obj = 0;
        MetalObjects::createTextureSharedBuffer(v45 - 1, &obj, a5, a4);
        objc_storeStrong(v45, obj);
        v45 += 3;
        --v46;
      }

      while (v46);
      v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v48 = *(a1 + 960);
      *(a1 + 960) = v47;

      v49 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v50 = *(a1 + 968);
      *(a1 + 968) = v49;

      v51 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
      v52 = 6;
      do
      {
        v53 = *(a1 + 960);
        v54 = dispatch_queue_create("com.gmcRgbIr.CPU_GPU", v51);
        [v53 addObject:v54];

        v55 = *(a1 + 968);
        v56 = dispatch_group_create();
        [v55 addObject:v56];

        --v52;
      }

      while (v52);
      v93 = *(a1 + 256);
      v57 = *(a1 + 264);
      v92 = *v57;
      v91 = v57[1] - v92;
      v90 = 0;
      MetalObjects::createBuffer(a1 + 608, &v90, &v91, 0x1CuLL);
      v58 = v90;
      v59 = v90;
      v60 = *(a1 + 420);
      v87 = *(a1 + 416);
      v88 = v60;
      v89 = 2143289344;
      v61 = *(*(a1 + 952) + 8);
      v85 = *v61;
      v86 = v61[v60 - 1];
      v62 = *(*(a1 + 944) + 8);
      v83 = *v62;
      v84 = v62[v87 - 1];
      *&v82[1] = v83;
      v63 = v62[1] - v83;
      *&v82[3] = v85;
      v64 = v61[1];
      *v82 = v63;
      *&v82[2] = v64 - v85;
      v81 = 0;
      MetalObjects::createBuffer(a1 + 608, &v81, v82, 0x2CuLL);
      v65 = v81;
      v66 = v81;
      objc_storeStrong((a1 + 928), v58);
      objc_storeStrong((a1 + 936), v65);
      v80 = 0;
      MetalObjects::createTexture((a1 + 608), &v80, *(a3 + 8), *(a3 + 16), *(a3 + 20));
      objc_storeStrong((a1 + 776), v80);

      Matrix<float>::~Matrix(v97);
      Matrix<float>::~Matrix(v99);

      v67 = 1;
      v68 = v78;
    }

    else
    {
      v68 = v11;
      v72 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v73 = os_log_create("com.apple.isp", "general");
        v74 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v73;

        v72 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      }

      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        CalibrateRgbIr::PrepareGridCalculation(v72);
      }

      v67 = 0;
    }
  }

  else
  {
    v69 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v70 = os_log_create("com.apple.isp", "general");
      v71 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v70;

      v69 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    }

    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      CalibrateRgbIr::PrepareGridCalculation();
    }

    return 0;
  }

  return v67;
}

void sub_224977458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  Matrix<float>::~Matrix(&a29);
  Matrix<float>::~Matrix(v35 - 160);

  _Unwind_Resume(a1);
}

void MetalObjects::createTextureSharedBuffer(void *a1, void *a2, int a3, int a4)
{
  std::mutex::lock((a1[2] + 24));
  v8 = [*a1[2] newBufferWithLength:4 * a4 * a3 options:*(a1[2] + 96)];
  std::mutex::unlock((a1[2] + 24));
  [*a1 setResourceOptions:*(a1[2] + 96)];
  [*a1 setPixelFormat:55];
  [*a1 setTextureType:2];
  [*a1 setUsage:3];
  [*a1 setHeight:a3];
  [*a1 setWidth:a4];
  *a2 = [v8 newTextureWithDescriptor:*a1 offset:0 bytesPerRow:4 * a4];
}

uint64_t CalibrateRgbIr::LocalValidationSelect(uint64_t a1, float *a2, uint64_t *a3)
{
  v10 = 0;
  v11 = 0;
  isMinimumOnBorder = GridArea::isMinimumOnBorder(a2, 1, &v11);
  v6 = GridArea::isMinimumOnBorder(a2, 0, &v10);
  if (!isMinimumOnBorder || (v7 = v6, result = 0, !v7))
  {
    if (isMinimumOnBorder)
    {
      result = 2;
    }

    else
    {
      result = 1;
    }

    if (isMinimumOnBorder)
    {
      v9 = &v10;
    }

    else
    {
      v9 = &v11;
    }

    *a3 = *v9;
  }

  return result;
}

void addValueToDictionary(__CFDictionary *a1, const __CFString *a2, double a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t CalibrateRgbIr::ScanCostGrid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = objc_autoreleasePoolPush();
  v11 = sqrtf(*(a2 + 20));
  if (CalibrateRgbIr::PrepareGridCalculation(a1, a2, a3, v11 & 0xFFFFFFF0, v11 * v11 / (v11 & 0xFFFFFFF0)))
  {
    v12 = *(a6 + 4);
    v24[1] = v12 + 6.0;
    v24[2] = 3.0;
    v23[0] = v12 + -6.0;
    v23[1] = v12 + 6.0;
    v23[2] = 3.0;
    v24[0] = -6.0;
    v22 = 1065353216;
    v21 = 0;
    v19[6] = -1061158912;
    *&v19[7] = v12 + 6.0;
    *&v19[8] = v12 + -6.0;
    *&v19[9] = v12 + 6.0;
    __asm { FMOV            V0.2S, #3.0 }

    v20 = _D0;
    GridArea::PrepareGrid(v19, v24, v23, &v21, 0);
  }

  NSLog(&cfstr_RgbIrCalibS.isa, "PrepareGridCalculation failed.");
  objc_autoreleasePoolPop(v10);
  return 4097;
}

void sub_22497877C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, char a61)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  GridArea::~GridArea(&a22);
  GridArea::~GridArea(&a61);
  GridArea::~GridArea((v61 - 176));
  _Unwind_Resume(a1);
}

uint64_t CalibrateRgbIr::GetCamParamsFromMetaData(int a1, CFDictionaryRef theDict, uint64_t a3)
{
  Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CF4C68]);
  BytePtr = CFDataGetBytePtr(Value);
  *(a3 + 104) = vcvtq_f64_f32(*BytePtr);
  v7 = BytePtr[1].f32[1];
  *(a3 + 120) = BytePtr[1].f32[0];
  *(a3 + 128) = vcvtq_f64_f32(BytePtr[2]);
  v8 = BytePtr[3].f32[1];
  *(a3 + 144) = BytePtr[3].f32[0];
  *(a3 + 56) = v7;
  *(a3 + 64) = v8;
  *(a3 + 152) = vcvtq_f64_f32(BytePtr[4]);
  v9 = BytePtr[5].f32[1];
  *(a3 + 168) = BytePtr[5].f32[0];
  *(a3 + 72) = v9;
  v10 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF5C00]);
  CGPointMakeWithDictionaryRepresentation(v10, &v13);
  *(a3 + 8) = v13;
  v11 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF5030]);
  return CFNumberGetValue(v11, kCFNumberFloatType, a3);
}

uint64_t CalibrateRgbIr::CheckPceCalibValid(int a1, CFDictionaryRef theDict, uint64_t a3)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x277CF5030]);
    if (Value)
    {
      valuePtr = 0.0;
      CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
      if (vabdd_f64(valuePtr, *(a3 + 8936)) < 0.00001)
      {
        v6 = CFDictionaryGetValue(theDict, *MEMORY[0x277CF4C68]);
        if (v6)
        {
          CFDataGetBytePtr(v6);
          operator new[]();
        }
      }
    }
  }

  return 0;
}

void CalibrateRgbIr::GetCommonCamParams(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 8);
  *(a2 + 8) = *(a1 + 16);
  *(a2 + 16) = *(a1 + 24);
  v2 = *(a1 + 4258);
  *(a2 + 184) = *(a1 + 4256);
  *(a2 + 188) = v2;
  operator new[]();
}

void CalibrateRgbIr::GetTargetCam(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12)
{
  v12 = *(a4 + 12);
  v13 = *(a4 + 14);
  *(a5 + 184) = a2;
  *(a5 + 188) = a3;
  v21 = xmmword_2249D2940;
  v20 = 0;
  v22 = 0xBFF0000000000000;
  v23 = 0u;
  v24 = 0u;
  v14 = *(a1 + 4288);
  v15 = v14 * v12 / a3;
  *(a5 + 48) = v15;
  LOWORD(a10) = *(a1 + 8544);
  v16 = *(a1 + 4304) + *&a10 * -0.5 * v14 + vcvtd_n_f64_u32(v12, 1uLL) * v14;
  LOWORD(a12) = *(a1 + 8546);
  v17 = *(a1 + 4312) + *&a12 * -0.5 * v14;
  v25 = 0x3FF0000000000000;
  v18 = v16 + a3 * -0.5 * v15;
  v19 = v17 + vcvtd_n_f64_u32(v13, 1uLL) * v14 + a2 * -0.5 * v15;
  *(a5 + 8) = vcvtd_n_f64_u32(a2, 1uLL) * v15 - (v19 - v18 * 0.0);
  *(a5 + 16) = v18 + v19 * 0.0 + vcvtd_n_f64_u32(a3, 1uLL) * v15;
  *a5 = *(a1 + 4296);
  *(a5 + 24) = 256;
  operator new[]();
}

void CalibrateRgbIr::PrepareColorImage(int a1, __CVBuffer *a2)
{
  memset(&src, 0, sizeof(src));
  PrepareVImgBuffersFromCVPixBuffer(a2, &src);
  operator new[]();
}

void sub_22497941C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  Matrix<float>::~Matrix(&a14);
  Matrix<float>::~Matrix(&a27);
  Matrix<float>::~Matrix(&a31);
  _Unwind_Resume(a1);
}

void SaveToFileWithPrefix<float,float>(_DWORD *a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, int a6, int a7, unint64_t a8)
{
  if (byte_27D6F2867 >= 0)
  {
    v15 = byte_27D6F2867;
  }

  else
  {
    v15 = *(&gCurrFrameId + 1);
  }

  v16 = &v24;
  std::string::basic_string[abi:nn200100](&v24, v15 + 1);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v16 = v24.__r_.__value_.__r.__words[0];
  }

  if (v15)
  {
    if (byte_27D6F2867 >= 0)
    {
      v17 = &gCurrFrameId;
    }

    else
    {
      v17 = gCurrFrameId;
    }

    memmove(v16, v17, v15);
  }

  *(&v16->__r_.__value_.__l.__data_ + v15) = 95;
  v18 = *(a5 + 23);
  if (v18 >= 0)
  {
    v19 = a5;
  }

  else
  {
    v19 = *a5;
  }

  if (v18 >= 0)
  {
    v20 = *(a5 + 23);
  }

  else
  {
    v20 = *(a5 + 8);
  }

  v21 = std::string::append(&v24, v19, v20);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v26 = v21->__r_.__value_.__r.__words[2];
  *__p = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  SaveToFile<float,float>(a1, a2, a3, a4, __p, a6, a7, a8);
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }
}

void sub_224979608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void HistogramEqualize<float,float>(float *a1, uint64_t a2, uint64_t a3, unsigned int a4, float *a5)
{
  v7 = a1;
  v20[1] = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x28223BE20](a1, a2);
  v10 = v20 - v9;
  v13 = (v12 * v11);
  BuildHistogram<float,float>(v8, (v20 - v9), v14, v13);
  if (v13)
  {
    v15 = v13;
    do
    {
      v16 = *v7++;
      v17 = v16 / (1.0 / a4);
      v18 = vcvtmd_u64_f64(v17);
      if (v18 >= a4)
      {
        v18 = a4 - 1;
      }

      LODWORD(v17) = *&v10[4 * v18];
      v19 = *&v17 / v15;
      *a5++ = v19;
      --v13;
    }

    while (v13);
  }
}

uint64_t CalibrateRgbIr::ApplyGaussian2DFilter(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 20);
  if (v4 != *(a3 + 20) || (v7 = *(a2 + 16), v7 != *(a3 + 16)))
  {
    CalibrateRgbIr::ApplyGaussian2DFilter();
  }

  v8 = a4;
  if (a4)
  {
    if (v4 < a4)
    {
      CalibrateRgbIr::ApplyGaussian2DFilter();
    }
  }

  else
  {
    v8 = *(a2 + 20);
  }

  Matrix<float>::Matrix(v26, v7 + 4, v8 + 4);
  v9 = v7 + 2;
  if ((v7 + 2) >= 3)
  {
    v10 = 0;
    do
    {
      if (v28 <= v10 + 2 || v29 < 3 || (v11 = v10, *(a2 + 16) <= v10) || (v12 = *(a2 + 20)) == 0)
      {
        __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
      }

      memcpy((v27 + 4 * v29 * (v10 + 2) + 8), (*(a2 + 8) + 4 * v12 * v10), 4 * v8);
      ++v10;
    }

    while (v11 + 3 != v9);
  }

  Matrix<float>::Matrix(v22, v7 + 4, v8 + 4);
  v31 = 1019113512;
  v30[2] = xmmword_2249D2BFC;
  v30[3] = unk_2249D2C0C;
  v30[4] = xmmword_2249D2C1C;
  v30[5] = unk_2249D2C2C;
  v30[0] = xmmword_2249D2BDC;
  v30[1] = unk_2249D2BEC;
  v20[0] = &unk_283812D20;
  v20[1] = v30;
  v20[2] = 0x500000005;
  v21 = 0;
  ImageUtils::Filter2<float>(v26, v20, v22);
  v13 = *(a3 + 20) * *(a3 + 16);
  if (v13 >= 1)
  {
    v14 = *(a3 + 8);
    v15 = v14 + 4 * v13;
    if (v15 <= v14 + 4)
    {
      v15 = v14 + 4;
    }

    bzero(v14, ((v15 + ~v14) & 0xFFFFFFFFFFFFFFFCLL) + 4);
  }

  if (v9 >= 3)
  {
    v16 = 0;
    v17 = 4 * v8;
    do
    {
      if (*(a3 + 16) <= v16 || (v18 = *(a3 + 20)) == 0 || v24 <= v16 + 2 || v25 <= 2)
      {
        __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
      }

      memcpy((*(a3 + 8) + 4 * v18 * v16), (v23 + 4 * v25 * (v16 + 2) + 8), v17);
      ++v16;
    }

    while (v7 != v16);
  }

  Matrix<float>::~Matrix(v20);
  Matrix<float>::~Matrix(v22);
  Matrix<float>::~Matrix(v26);
  return 0;
}

void sub_224979A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  Matrix<float>::~Matrix(&a9);
  Matrix<float>::~Matrix(&a13);
  Matrix<float>::~Matrix(&a17);
  _Unwind_Resume(a1);
}

uint64_t CalibrateRgbIr::InitDebugDictionary(CFMutableDictionaryRef *this)
{
  CFDictionaryRemoveAllValues(this[126]);
  CFDictionarySetValue(this[126], @"choice", @"None");
  CFDictionarySetValue(this[126], @"resultValid", *MEMORY[0x277CBED10]);
  v2 = CFStringCreateWithFormat(0, 0, @"%d.%d.%d", 1, 12, 0);
  CFDictionarySetValue(this[126], @"AlgoVersion", v2);
  CFRelease(v2);
  return 0;
}

void CalibrateRgbIr::ScaleImage(uint64_t a1, void *a2, vImagePixelCount a3, vImagePixelCount a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  src.data = a2;
  src.height = a4;
  src.width = a3;
  src.rowBytes = 4 * a3;
  v8 = 4 * a5;
  if ((a5 & 0xF) != 0)
  {
    v8 = ((4 * a5) & 0xFFFFFFFFFFFFFFC0) + 64;
  }

  *a8 = v8 >> 2;
  operator new[]();
}

uint64_t CalibrateRgbIr::MedianFilter(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v10 = (a3 + 63) & 0xFFFFFFFFFFFFFFC0;
  Matrix<unsigned char>::Matrix(v35, *(a2 + 16), (a3 + 63) & 0xFFFFFFC0);
  Matrix<float>::Resize(a5, *(a2 + 16), *(a2 + 20));
  if (*(a2 + 16))
  {
    v11 = 0;
    do
    {
      LODWORD(v12) = *(a2 + 20);
      if (v12)
      {
        v13 = 0;
        do
        {
          if (*(a2 + 16) <= v11 || ((v14 = *(*(a2 + 8) + 4 * v11 * v12 + 4 * v13), v14 <= 1.0) ? (v15 = v14 * 255.0) : (v15 = 255.0), v37 <= v11 || v13 >= v38))
          {
            __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
          }

          *(v36 + v11 * v38 + v13++) = llroundf(v15);
          v12 = *(a2 + 20);
        }

        while (v13 < v12);
      }

      if (v37 <= v11 || v38 <= a3)
      {
        __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
      }

      bzero(v36 + a3 + v38 * v11++, v10 - a3);
    }

    while (v11 < *(a2 + 16));
  }

  std::string::basic_string[abi:nn200100]<0>(v33, "irSamplesBeforeMedianU8.pb");
  std::string::basic_string[abi:nn200100]<0>(__p, "IR samples before Median Filter");
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  v30 = 0;
  MetalObjects::createTextureMedian((a1 + 608), &v30, v36, v37, v38, v10, 0);
  v16 = v30;
  v29 = 0;
  MetalObjects::createTextureMedian((a1 + 608), &v29, 0, v37, v38, v10, 1);
  v17 = v29;
  MetalObjects::medianFilter(a1 + 608, v16, v17, a4, 1);
  v18 = [v17 buffer];
  v19 = [v18 contents];

  std::string::basic_string[abi:nn200100]<0>(v33, "irSamplesAfterMedianU8.pb");
  std::string::basic_string[abi:nn200100]<0>(__p, "IR samples after Median Filter (uint8)");
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  if (v34 < 0)
  {
    operator delete(v33[0]);
  }

  v20 = *(a5 + 16);
  if (v20)
  {
    v21 = 0;
    v22 = v10 - *(a2 + 20);
    v23 = *(a5 + 8);
    v24 = *(a5 + 20);
    do
    {
      for (i = v24; i; --i)
      {
        v26 = *v19++;
        v27 = v26 / 255.0;
        *v23++ = v27;
      }

      ++v21;
      v19 += v22;
    }

    while (v21 != v20);
  }

  Matrix<unsigned char>::~Matrix(v35);
  return 0;
}

void sub_224979EEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  Matrix<unsigned char>::~Matrix(&a20);
  _Unwind_Resume(a1);
}

uint64_t CalibrateRgbIr::PrepareIrImage(uint64_t a1, CVPixelBufferRef pixelBuffer, uint64_t a3, size_t *a4, size_t *a5)
{
  *a4 = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  *a5 = Height;
  if (gDbgLvl)
  {
    v10 = *(a1 + 1008);
    v15.width = *a4;
    v15.height = Height;
    addValueToDictionary(v10, @"IrResolution", &v15);
  }

  std::string::basic_string[abi:nn200100]<0>(&v15, "OrigIrFromCVPixB.pb");
  std::string::basic_string[abi:nn200100]<0>(&__p, "Original IR frame from CVPixelBuffer");
  GrayScaleImage::save(&v15, pixelBuffer);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (v16 < 0)
  {
    operator delete(*&v15.width);
  }

  if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 1278226742)
  {
    CVPixelBufferGetBytesPerRow(pixelBuffer);
    if (!CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL))
    {
      CVPixelBufferGetBaseAddress(pixelBuffer);
      if (*a5 == 1315)
      {
        *a5 = 1312;
      }

      operator new[]();
    }

    return 4098;
  }

  else
  {
    NSLog(&cfstr_RgbIrCalibS.isa, "IR buffer is not in a supported format.");
    return 12290;
  }
}

void sub_22497A438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  Matrix<float>::~Matrix(&a13);
  Matrix<float>::~Matrix(&a26);
  Matrix<float>::~Matrix(&a33);
  if (v40)
  {
    MEMORY[0x22AA55B40](v40, v38);
  }

  MEMORY[0x22AA55B40](v39, v38);
  _Unwind_Resume(a1);
}

void addValueToDictionary(__CFDictionary *a1, const __CFString *a2, const CGSize *a3)
{
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*a3);
  CFDictionarySetValue(a1, a2, DictionaryRepresentation);

  CFRelease(DictionaryRepresentation);
}

double CalibrateRgbIr::SetParamsForShiftMaps(uint64_t a1, double *a2)
{
  v2 = a2[1658];
  v3 = v2 > 0.0;
  v4 = 10.0;
  if (v2 > 0.0)
  {
    v4 = 0.0;
  }

  v5 = a2[1116] / 0.8;
  v6 = v2 * a2[1117];
  v7 = 1.0 / a2[1084];
  v8 = ceil(v6 / v5 * (dbl_2249D2B90[v3] - v7));
  v9 = -v5 / v6;
  v10 = v7 - v9 * (v4 + v8);
  result = v9 * 0.03125;
  *(a1 + 472) = result;
  *(a1 + 480) = v10;
  return result;
}

uint64_t CalibrateRgbIr::PrepareDepthImage(uint64_t a1, CVPixelBufferRef pixelBuffer)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v5 = *(a1 + 464);
  if (v5 == 1 && PixelFormatType != 825306677)
  {
    v7 = "Depth pixel buffer format should be kCVPixelFormatType_FixedPointUnsigned11_5 if it is normalized dx";
LABEL_9:
    NSLog(&cfstr_RgbIrCalibS.isa, v7);
    return 12291;
  }

  if ((v5 & 1) == 0 && PixelFormatType != 825437747)
  {
    v7 = "Depth pixel buffer format should be kCVPixelFormatType_FixedPointUnsigned13_3 if they are absolute values (not normalized dx)";
    goto LABEL_9;
  }

  if (gDbgLvl)
  {
    if (*(a1 + 464))
    {
      v9 = MEMORY[0x277CBED28];
    }

    else
    {
      v9 = MEMORY[0x277CBED10];
    }

    CFDictionarySetValue(*(a1 + 1008), @"isNormalizedDx", *v9);
  }

  CVPixelBufferGetBytesPerRow(pixelBuffer);
  if (!CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL))
  {
    operator new[]();
  }

  return 4099;
}

void sub_22497A89C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CalibrateRgbIr::RetrieveRoiInfo(uint64_t a1, CFArrayRef theArray, unint64_t a3, unint64_t a4, CGRect *a5)
{
  if (theArray && CFArrayGetCount(theArray) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    if (ValueAtIndex)
    {
      Value = CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x277CF50B8]);
      if (Value)
      {
        if (CGRectMakeWithDictionaryRepresentation(Value, &rect))
        {
          x = rect.origin.x;
          y = rect.origin.y;
          a5->origin.x = rect.origin.x;
          a5->origin.y = y;
          width = rect.size.width;
          height = rect.size.height;
          a5->size.width = rect.size.width;
          a5->size.height = height;
          NSLog(&cfstr_RgbIrCalibRoiI.isa, *&x, *&y, *&height, *&width);
          if (gDbgLvl)
          {
            v16 = *(a1 + 1008);
            DictionaryRepresentation = CGRectCreateDictionaryRepresentation(*a5);
            CFDictionarySetValue(v16, @"faceRoi", DictionaryRepresentation);
            CFRelease(DictionaryRepresentation);
          }

          result = 0;
          v20 = a5->size.width;
          v19 = a5->size.height;
          v21 = round(a5->origin.x * a4);
          a5->origin.x = round((1.0 - a5->origin.y - v19) * a3);
          a5->origin.y = v21;
          a5->size.width = round(v19 * a3);
          a5->size.height = round(v20 * a4);
          return result;
        }

        v22 = "Could not retrieve ROI information from detected faces array.";
      }

      else
      {
        v22 = "Could not find ROI element in detected faces array.";
      }
    }

    else
    {
      v22 = "Could not retrieve any element from detected faces array.";
    }

    NSLog(&cfstr_RgbIrCalibS.isa, v22);
    if (gDbgLvl)
    {
      CFDictionarySetValue(*(a1 + 1008), @"failureReason", @"Could not retrieve face ROI information. Check detectedFaces argument.");
    }

    return 8193;
  }

  else
  {
    if (gDbgLvl)
    {
      CFDictionarySetValue(*(a1 + 1008), @"failureReason", @"No face ROI specified.");
    }

    NSLog(&cfstr_RgbIrCalibS.isa, "No detected faces provided. Calibration will not be performed.");
    return 16386;
  }
}

uint64_t CalibrateRgbIr::SelectRefineResult(uint64_t a1, uint64_t a2, uint64_t a3, double a4, float a5, float a6)
{
  if (*&a4 < -6.0)
  {
    v9 = -6.0;
  }

  else
  {
    v9 = *&a4;
  }

  v10 = *&a4 >= -6.0;
  if (*&a4 <= 6.0)
  {
    v11 = v9;
  }

  else
  {
    v11 = 6.0;
  }

  if (*&a4 > 6.0)
  {
    v10 = 0;
  }

  if (a5 < -6.0)
  {
    *&a4 = -6.0;
  }

  else
  {
    *&a4 = a5;
  }

  if (a5 < -6.0)
  {
    v10 = 0;
  }

  if (a5 <= 6.0)
  {
    v12 = *&a4;
  }

  else
  {
    v12 = 6.0;
  }

  v13 = a5 <= 6.0 && v10;
  v14 = a6;
  NSLog(&cfstr_RgbIrCalibAppl.isa, a4, v11, v12, a6);
  v40 = xmmword_2249D2100;
  v41 = 0x3FF0000000000000;
  v37 = *(a1 + 80);
  v42 = 0u;
  v43 = 0u;
  v44 = 0x3FF0000000000000;
  v38 = *(a1 + 96);
  v39 = 0;
  v37.f64[0] = v37.f64[0] + v11;
  v37.f64[1] = v37.f64[1] + v12;
  v38 = v38 + v14;
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v15 = v35;
  GeomUtils::CalcRotationMatrix<double>(v37.f64, v35);
  v16 = 0;
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  do
  {
    v17 = 0;
    v18 = &v39;
    do
    {
      v19 = 0;
      v20 = 0.0;
      v21 = v18;
      do
      {
        v22 = *v21;
        v21 += 3;
        v20 = v20 + *(v15 + v19) * v22;
        v19 += 8;
      }

      while (v19 != 24);
      *(&v30 + 3 * v16 + v17++) = v20;
      ++v18;
    }

    while (v17 != 3);
    ++v16;
    v15 = (v15 + 24);
  }

  while (v16 != 3);
  memcpy(a3, a2, 0x3400uLL);
  v23 = v33;
  *(a3 + 8584) = v32;
  *(a3 + 8600) = v23;
  *(a3 + 8616) = v34;
  v24 = v31;
  *(a3 + 8552) = v30;
  *(a3 + 8568) = v24;
  if (v13)
  {
    v29 = *(a2 + 13256);
    v25 = *(a2 + 13240);
    v28[2] = *(a2 + 13224);
    v28[3] = v25;
    v26 = *(a2 + 13208);
    v28[0] = *(a2 + 13192);
    v28[1] = v26;
    GeomUtils::CalcRotationAngleFromMatrix<double>(v28, v37.f64);
    *(a3 + 13288) = vdivq_f64(v37, vdupq_n_s64(0x408F400000000000uLL));
    *(a3 + 13304) = v38 / 1000.0;
  }

  else
  {
    NSLog(&cfstr_RgbIrCalibS.isa, "Rotation was clipped. Will not mark Pearl as calibrated.");
  }

  if (gDbgLvl)
  {
    setValueCFDict<float>(*(a1 + 1008), @"appliedXAngleCorrection", v11);
    setValueCFDict<float>(*(a1 + 1008), @"appliedYAngleCorrection", v12);
  }

  return 0;
}

uint64_t CalibrateRgbIr::CalculateFinalResult(float64x2_t *a1, uint64_t a2, float32x2_t a3, float32_t a4, float a5)
{
  v28 = a1[5];
  v6 = a1[6].f64[0];
  a3.f32[1] = a4;
  v28 = vaddq_f64(v28, vcvtq_f64_f32(a3));
  v29 = v6 + a5;
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v7 = v26;
  GeomUtils::CalcRotationMatrix<double>(v28.f64, v26);
  v8 = 0;
  v19 = 0;
  v20 = 0;
  v21 = xmmword_2249D2100;
  v23 = 0u;
  v24 = 0u;
  v22 = 0x3FF0000000000000;
  v25 = 0x3FF0000000000000;
  memset(v18, 0, sizeof(v18));
  do
  {
    v9 = 0;
    v10 = &v20;
    do
    {
      v11 = 0;
      v12 = 0.0;
      v13 = v10;
      do
      {
        v14 = *v13;
        v13 += 3;
        v12 = v12 + *(v7 + v11) * v14;
        v11 += 8;
      }

      while (v11 != 24);
      *(v18 + 3 * v8 + v9++) = v12;
      ++v10;
    }

    while (v9 != 3);
    ++v8;
    v7 = (v7 + 24);
  }

  while (v8 != 3);
  v16 = 0uLL;
  v17 = 0;
  GeomUtils::CalcRotationAngleFromMatrix<double>(v18, &v16);
  *a2 = v16;
  *(a2 + 16) = v17;
  return 0;
}

uint64_t CalibrateRgbIr::Calibrate(uint64_t a1, int a2, const __CFDictionary *a3, int a4, int a5, int a6, uint64_t a7, const __CFBoolean *a8, double *a9, CFArrayRef theArray, __int16 a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v15 = a7;
  v52 = *MEMORY[0x277D85DE8];
  *(a1 + 976) = 0;
  NSLog(&cfstr_RgbIrCalibStar.isa, 1, 12, 0, a7, a8, a11);
  v16 = std::string::basic_string[abi:nn200100]<0>(&valuePtr, "PCECalib.bin");
  SaveToFileWithPrefix(v16);
  if (v42 < 0)
  {
    operator delete(valuePtr);
  }

  if (gDbgLvl)
  {
    CalibrateRgbIr::InitDebugDictionary(a1);
    v39 = [MEMORY[0x277CCABB0] numberWithDouble:a9[1069]];
    v43 = v39;
    v44 = [MEMORY[0x277CCABB0] numberWithDouble:a9[1070]];
    v37 = v44;
    v36 = [MEMORY[0x277CCABB0] numberWithDouble:a9[1071]];
    v45 = v36;
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:a9[1072]];
    v46 = v17;
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:a9[1073]];
    v47 = v18;
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:a9[1074]];
    v48 = v19;
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:a9[1075]];
    v49 = v20;
    v21 = [MEMORY[0x277CCABB0] numberWithDouble:a9[1076]];
    v50 = v21;
    v22 = [MEMORY[0x277CCABB0] numberWithDouble:a9[1077]];
    v51 = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v43 count:9];

    CFDictionarySetValue(*(a1 + 1008), @"colorRotationMatrix", v23);
  }

  Value = CFBooleanGetValue(a8);
  if (Value)
  {
    v25 = a1;
    *(a1 + 464) = v15;
    if (v15)
    {
      v26 = a9[1658];
      v27 = v26 > 0.0;
      v28 = 10.0;
      if (v26 > 0.0)
      {
        v28 = 0.0;
      }

      v29 = a9[1116] / 0.8;
      v30 = v26 * a9[1117];
      v31 = 1.0 / a9[1084];
      v32 = ceil(v30 / v29 * (dbl_2249D2B90[v27] - v31));
      v33 = -v29 / v30;
      *(a1 + 472) = v33 * 0.03125;
      *(a1 + 480) = v31 - v33 * (v28 + v32);
    }

    if (*(a1 + 492) & 1) != 0 || (Value = CalibrateRgbIr::CheckPceCalibValid(Value, a3, a9), v25 = a1, (Value))
    {
      CalibrateRgbIr::GetCamParams(Value, a9, v25 + 232);
    }

    NSLog(&cfstr_RgbIrCalibS.isa, "PCECalib and IR metadata do not match. PCECalib is probably not valid anymore");
    if (gDbgLvl)
    {
      CFDictionarySetValue(*(a1 + 1008), @"failureReason", @"Calibration data not consistent.");
    }

    CalibrateRgbIr::SaveDebugPlist(a1);
    return 16385;
  }

  else
  {
    NSLog(&cfstr_RgbIrCalibS.isa, "depthPerspectiveCorrected is false. Currently, only perspective corrected depth is supported");
    if (gDbgLvl)
    {
      CFDictionarySetValue(*(a1 + 1008), @"failureReason", @"Depth perspective not corrected.");
    }

    CalibrateRgbIr::SaveDebugPlist(a1);
    return 12289;
  }
}

void sub_22497BABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  Matrix<float>::~Matrix(&a51);
  v55 = *(v53 - 256);
  if (v55)
  {
    MEMORY[0x22AA55B40](v55, 0x1000C8052888210);
  }

  Matrix<float>::~Matrix(v53 - 248);
  _Unwind_Resume(a1);
}

void CalibrateRgbIr::SaveDebugPlist(id *this)
{
  if ((~gDbgLvl & 0x11) == 0)
  {
    v1 = this[126];
    if (byte_27D6F284F >= 0)
    {
      v2 = byte_27D6F284F;
    }

    else
    {
      v2 = qword_27D6F2840;
    }

    v3 = &v17;
    std::string::basic_string[abi:nn200100](&v17, v2 + 1);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v3 = v17.__r_.__value_.__r.__words[0];
    }

    if (v2)
    {
      if (byte_27D6F284F >= 0)
      {
        v4 = &gOutputDirName;
      }

      else
      {
        v4 = gOutputDirName;
      }

      memmove(v3, v4, v2);
    }

    *(&v3->__r_.__value_.__l.__data_ + v2) = 47;
    if (byte_27D6F2867 >= 0)
    {
      v5 = &gCurrFrameId;
    }

    else
    {
      v5 = gCurrFrameId;
    }

    if (byte_27D6F2867 >= 0)
    {
      v6 = byte_27D6F2867;
    }

    else
    {
      v6 = *(&gCurrFrameId + 1);
    }

    v7 = std::string::append(&v17, v5, v6);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    v9 = std::string::append(&v18, "_Debug.plist", 0xCuLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v20 = v9->__r_.__value_.__r.__words[2];
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    CreateDirForFile(__p);
    v11 = MEMORY[0x277CCACA8];
    v12 = SHIBYTE(v20);
    v13 = __p[0];
    v14 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
    if (v12 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = v13;
    }

    v16 = [v11 stringWithCString:v15 encoding:v14];
    [v1 writeToFile:v16 atomically:1];

    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_22497BE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  v30 = v29;

  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CalibrateRgbIr::ReleaseLocalResources(CalibrateRgbIr *this)
{
  v2 = *(this + 248);
  v17 = *(this + 232);
  v18 = v2;
  v20 = *(this + 35);
  v19 = *(this + 264);
  v21 = *(this + 18);
  v22 = *(this + 38);
  v24 = *(this + 41);
  v23 = *(this + 312);
  v3 = *(this + 22);
  v25 = *(this + 21);
  v4 = *(this + 23);
  v5 = *(this + 24);
  v29 = *(this + 50);
  v28 = v5;
  v27 = v4;
  v26 = v3;
  v6 = *(this + 408);
  v7 = *(this + 424);
  v8 = *(this + 440);
  v33 = *(this + 57);
  v31 = v7;
  v32 = v8;
  v30 = v6;
  ReleaseCamParams(&v17);
  v9 = *(this + 1);
  v17 = *this;
  v18 = v9;
  v19 = *(this + 2);
  v20 = *(this + 6);
  v21 = *(this + 56);
  v22 = *(this + 9);
  v23 = *(this + 5);
  v24 = *(this + 12);
  v25 = *(this + 104);
  v10 = *(this + 120);
  v11 = *(this + 136);
  v12 = *(this + 152);
  v29 = *(this + 21);
  v28 = v12;
  v27 = v11;
  v26 = v10;
  v13 = *(this + 11);
  v14 = *(this + 12);
  v15 = *(this + 13);
  v33 = *(this + 28);
  v31 = v14;
  v32 = v15;
  v30 = v13;
  return ReleaseCamParams(&v17);
}

void addValueToDictionary(__CFDictionary *a1, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

void CalibrateRgbIr::PrepareXyzWorld(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a6)
  {
    if (a7)
    {
      v8 = *(a2 + 188) * *(a2 + 184);
      Matrix<float>::Matrix(v44, 2, v8);
      if (v46 && v47)
      {
        if (v46 != 1)
        {
          v9 = *(a2 + 184);
          if (v9)
          {
            v10 = 0;
            v11 = __src;
            v12 = (__src + 4 * v47);
            v13 = *(a2 + 48);
            v14 = *(a2 + 8) / v13;
            v15 = *(a2 + 188);
            v16 = *(a2 + 16) / v13;
            do
            {
              if (v15)
              {
                v17 = 0;
                do
                {
                  v18 = v13 * (v10 + 0.5 - v14);
                  *v11++ = v18;
                  v19 = v13 * (v17 + 0.5 - v16);
                  *v12++ = v19;
                  ++v17;
                }

                while (v15 != v17);
              }

              ++v10;
            }

            while (v10 != v9);
          }

          Matrix<float>::Matrix(&v40, 2, v8);
          v40 = &unk_283814CF8;
          memcpy(__dst, __src, 4 * v47 * v46);
          Matrix<float>::Matrix(v36, *(a2 + 188), *(a2 + 184));
          Matrix<float>::Matrix(v32, *(a2 + 188), *(a2 + 184));
          if (v42 && v43)
          {
            if (v42 != 1)
            {
              v20 = v39;
              if (v39)
              {
                v21 = 0;
                v22 = v38;
                v23 = __dst;
                v24 = __dst + 4 * v43;
                v25 = *(a2 + 48);
                v26 = v34;
                do
                {
                  if (v22)
                  {
                    v27 = 0;
                    v28 = 0;
                    v29 = 0;
                    v30 = 0;
                    v31 = v35;
                    do
                    {
                      *(v37 + 4 * v21 + 4 * v28) = v23[v30] / v25;
                      if (v30 >= v26 || v21 >= v31)
                      {
                        __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
                      }

                      *(v33 + 4 * v21 + 4 * v29) = *&v24[4 * v30++] / v25;
                      v29 += v31;
                      v28 += v20;
                      v27 -= 4;
                    }

                    while (v22 != v30);
                    v24 -= v27;
                    v23 = (v23 - v27);
                  }

                  ++v21;
                }

                while (v21 != v20);
              }

              operator new[]();
            }

            __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
          }

          __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
        }

        __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
      }

      __assert_rtn("operator()", "Matrix.hpp", 119, "row < m_rows && col < m_cols");
    }

    CalibrateRgbIr::PrepareXyzWorld();
  }

  CalibrateRgbIr::PrepareXyzWorld();
}

void sub_22497C6DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va2, a8);
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  va_copy(va2, va1);
  v14 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  Matrix<float>::~Matrix(va);
  Matrix<float>::~Matrix(va1);
  Matrix<float>::~Matrix(va2);
  _Unwind_Resume(a1);
}

BOOL isPixelInRoi(_DWORD *a1, double *a2, double a3)
{
  LODWORD(a3) = *a1;
  v3 = *&a3;
  result = 0;
  if (*a2 <= v3 && *a2 + a2[2] > v3)
  {
    LODWORD(v3) = a1[1];
    v4 = *&v3;
    v5 = a2[1];
    if (v5 <= v4 && v5 + a2[3] > v4)
    {
      return 1;
    }
  }

  return result;
}

BOOL CalibrateRgbIr::ValidateResults(CalibrateRgbIr *this, float a2, float a3)
{
  v3 = vceqq_f32(vdupq_lane_s64(__SPAIR64__(LODWORD(a3), LODWORD(a2)), 0), xmmword_2249D2BB0);
  v4 = vaddvq_s32(vandq_s8(v3, xmmword_2249D2BA0));
  if (vmaxv_u16(vmovn_s32(v3)))
  {
    NSLog(&cfstr_RgbIrCalibErro.isa, a2, a3);
  }

  return (v4 & 0xF) == 0;
}

void GridArea::GridArea(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, int a5)
{
  *(a1 + 24) = *a2;
  v5 = *(a3 + 8);
  *(a1 + 40) = *(a2 + 8);
  *(a1 + 44) = v5;
  GridArea::PrepareGrid(a1, a2, a3, a4, a5);
}

void SaveToFile<float,float>(_DWORD *a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, int a6, int a7, unint64_t a8)
{
  v57[19] = *MEMORY[0x277D85DE8];
  if ((gDbgLvl & 4) != 0)
  {
    if (a8)
    {
      v14 = a8;
    }

    else
    {
      v14 = a3 * a2;
    }

    if (byte_27D6F284F >= 0)
    {
      v15 = byte_27D6F284F;
    }

    else
    {
      v15 = qword_27D6F2840;
    }

    v16 = &v55;
    std::string::basic_string[abi:nn200100](&v55, v15 + 1);
    if ((v55.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v16 = v55.__r_.__value_.__r.__words[0];
    }

    if (v15)
    {
      if (byte_27D6F284F >= 0)
      {
        v17 = &gOutputDirName;
      }

      else
      {
        v17 = gOutputDirName;
      }

      memmove(v16, v17, v15);
    }

    *(&v16->__r_.__value_.__l.__data_ + v15) = 47;
    v18 = *(a5 + 23);
    if (v18 >= 0)
    {
      v19 = a5;
    }

    else
    {
      v19 = *a5;
    }

    if (v18 >= 0)
    {
      v20 = *(a5 + 23);
    }

    else
    {
      v20 = *(a5 + 8);
    }

    v21 = std::string::append(&v55, v19, v20);
    v22 = *&v21->__r_.__value_.__l.__data_;
    v53 = v21->__r_.__value_.__r.__words[2];
    *__p = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v55.__r_.__value_.__l.__data_);
    }

    if (CreateDirForFile(__p))
    {
      goto LABEL_59;
    }

    v57[6] = 0;
    v23 = MEMORY[0x277D82860] + 64;
    v57[0] = MEMORY[0x277D82860] + 64;
    v24 = MEMORY[0x277D82810];
    v25 = *(MEMORY[0x277D82810] + 16);
    v55.__r_.__value_.__r.__words[0] = *(MEMORY[0x277D82810] + 8);
    *(v55.__r_.__value_.__r.__words + *(v55.__r_.__value_.__r.__words[0] - 24)) = v25;
    v26 = (&v55 + *(v55.__r_.__value_.__r.__words[0] - 24));
    std::ios_base::init(v26, &v55.__r_.__value_.__r.__words[1]);
    v27 = MEMORY[0x277D82860] + 24;
    v26[1].__vftable = 0;
    v26[1].__fmtflags_ = -1;
    v55.__r_.__value_.__r.__words[0] = v27;
    v57[0] = v23;
    MEMORY[0x22AA55890](&v55.__r_.__value_.__r.__words[1]);
    if (a6)
    {
      std::ofstream::open();
      if (!v56)
      {
        goto LABEL_58;
      }

      if (a2 && v14)
      {
        LODWORD(v28) = 0;
        v29 = 0;
        v30 = (a4 >> 2) - a3;
        do
        {
          if (a3)
          {
            v31 = 1;
            do
            {
              LODWORD(v54.__locale_) = *a1;
              std::ostream::write();
              ++a1;
              v32 = v31 + 1;
              if (v31 >= a3)
              {
                break;
              }

              v33 = v29 + v31++;
            }

            while (v33 < v14);
            v29 = v29 + v32 - 1;
          }

          v28 = (v28 + 1);
          a1 += v30;
        }

        while (v28 < a2 && v29 < v14);
      }
    }

    else
    {
      std::ofstream::open();
      if (!v56)
      {
        goto LABEL_58;
      }

      *(MEMORY[0x277D82678] + *(*MEMORY[0x277D82678] - 24) + 16) = 10;
      if (a2)
      {
        v35 = 0;
        LODWORD(v36) = 0;
        v37 = 0;
        v50 = a4 >> 2;
        v38 = a3 - 1;
        while (1)
        {
          v48 = v36;
          v49 = v35;
          if (v38)
          {
            break;
          }

LABEL_53:
          v44 = std::ostream::operator<<();
          std::ios_base::getloc((v44 + *(*v44 - 24)));
          v45 = std::locale::use_facet(&v54, MEMORY[0x277D82680]);
          (v45->__vftable[2].~facet_0)(v45, 10);
          std::locale::~locale(&v54);
          std::ostream::put();
          std::ostream::flush();
          ++v37;
          v36 = (v48 + 1);
          v35 = v49 + v50;
          if (v36 >= a2)
          {
            goto LABEL_54;
          }
        }

        if (v14 <= v37)
        {
          v39 = v37;
        }

        else
        {
          v39 = v14;
        }

        v40 = 1;
        while (v39 != v37)
        {
          v41 = std::ostream::operator<<();
          if (a7)
          {
            std::ios_base::getloc((v41 + *(*v41 - 24)));
            v42 = std::locale::use_facet(&v54, MEMORY[0x277D82680]);
            (v42->__vftable[2].~facet_0)(v42, 10);
            std::locale::~locale(&v54);
            std::ostream::put();
            std::ostream::flush();
          }

          else
          {
            std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v41, ",", 1);
          }

          ++v37;
          ++v35;
          if (v38 <= v40++)
          {
            goto LABEL_53;
          }
        }

        v47 = std::filebuf::close();
        v24 = MEMORY[0x277D82810];
        if (v47)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }
    }

LABEL_54:
    v46 = std::filebuf::close();
    v24 = MEMORY[0x277D82810];
    if (!v46)
    {
LABEL_57:
      std::ios_base::clear((&v55 + *(v55.__r_.__value_.__r.__words[0] - 24)), *(&v55 + *(v55.__r_.__value_.__r.__words[0] - 24) + 32) | 4);
    }

LABEL_58:
    v55.__r_.__value_.__r.__words[0] = *v24;
    *(v55.__r_.__value_.__r.__words + *(v55.__r_.__value_.__r.__words[0] - 24)) = v24[3];
    MEMORY[0x22AA558A0](&v55.__r_.__value_.__r.__words[1]);
    std::ostream::~ostream();
    MEMORY[0x22AA55B20](v57);
LABEL_59:
    if (SHIBYTE(v53) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_22497CEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, std::locale a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  std::ofstream::~ofstream(&a23, MEMORY[0x277D82810]);
  MEMORY[0x22AA55B20](a13);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::ofstream::~ofstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x22AA558A0](a1 + 1);

  return std::ostream::~ostream();
}

void BuildHistogram<float,float>(float *a1, _DWORD *a2, unsigned int a3, unsigned int a4)
{
  v6 = a2;
  if (a3)
  {
    bzero(a2, 4 * a3);
  }

  if (a4)
  {
    v8 = a4;
    do
    {
      v9 = *a1++;
      v10 = vcvtmd_u64_f64(v9 / (1.0 / (a3 - 1)));
      if (v10 >= a3)
      {
        v10 = a3 - 1;
      }

      ++v6[v10];
      --v8;
    }

    while (v8);
  }

  if (a3)
  {
    v11 = 0;
    v12 = a3;
    do
    {
      v11 += *v6;
      *v6++ = v11;
      --v12;
    }

    while (v12);
  }
}

uint64_t Matrix<unsigned char>::Matrix(uint64_t result, int a2, int a3)
{
  *result = &unk_283814CC8;
  if (a3 * a2)
  {
    operator new[]();
  }

  *(result + 8) = 0;
  *(result + 16) = a2;
  *(result + 20) = a3;
  *(result + 24) = 0;
  return result;
}

void Matrix<unsigned char>::~Matrix(uint64_t a1)
{
  Matrix<unsigned char>::~Matrix(a1);

  JUMPOUT(0x22AA55B60);
}

uint64_t Matrix<unsigned char>::~Matrix(uint64_t a1)
{
  *a1 = &unk_283814CC8;
  if (*(a1 + 8) && *(a1 + 24) == 1)
  {
    MEMORY[0x22AA55B40]();
    *(a1 + 8) = 0;
  }

  *(a1 + 16) = 0;
  return a1;
}

void OneDimensionHorizontalFilterWithPadding()
{
  __assert_rtn("OneDimensionHorizontalFilterWithPadding", "CalibrateRgbIr.mm", 2468, "filter.Rows() == 1");
}

{
  __assert_rtn("OneDimensionHorizontalFilterWithPadding", "CalibrateRgbIr.mm", 2470, "(filterSize % 2) == 1");
}

void OneDimensionVerticalFilterWithPadding()
{
  __assert_rtn("OneDimensionVerticalFilterWithPadding", "CalibrateRgbIr.mm", 2493, "filter.Rows() == 1");
}

{
  __assert_rtn("OneDimensionVerticalFilterWithPadding", "CalibrateRgbIr.mm", 2495, "(filterSize % 2) == 1");
}

void CalibrateRgbIr::PrepareGridCalculation(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "PrepareGridCalculation";
  _os_log_error_impl(&dword_2247DB000, log, OS_LOG_TYPE_ERROR, "RGB-IR: %s: rdar://112006283 Error creating textures => Aborting Rgb-Ir run\n", &v1, 0xCu);
}

void CalibrateRgbIr::PrepareGridCalculation()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 136315650;
  OUTLINED_FUNCTION_0();
  v4 = v0;
  v5 = v1;
  _os_log_error_impl(&dword_2247DB000, v2, OS_LOG_TYPE_ERROR, "RGB-IR: %s: Invalid input: rows: %u, cols: %u.\n", v3, 0x18u);
}

void CalibrateRgbIr::ApplyGaussian2DFilter()
{
  __assert_rtn("ApplyGaussian2DFilter", "CalibrateRgbIr.mm", 1206, "input.Cols() == output.Cols() && input.Rows() == output.Rows()");
}

{
  __assert_rtn("ApplyGaussian2DFilter", "CalibrateRgbIr.mm", 1208, "input.Cols() >= relevantWidth");
}

void CalibrateRgbIr::PrepareXyzWorld()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_2247DB000, v0, OS_LOG_TYPE_ERROR, "RGB-IR: %s: rdar://112006283 numOfGoodPts is %d < 256 => Aborting Rgb-Ir run\n", v1, 0x12u);
}

{
  __assert_rtn("PrepareXyzWorld", "CalibrateRgbIr.mm", 2162, "goodIdxRoiMask");
}

{
  __assert_rtn("PrepareXyzWorld", "CalibrateRgbIr.mm", 2161, "goodIdx");
}

void vDSPImgfir<float>()
{
  __assert_rtn("vDSPImgfir", "VdspSpecialization.hpp", 543, "nRows2%2 == 1");
}

{
  __assert_rtn("vDSPImgfir", "VdspSpecialization.hpp", 542, "nCols2%2 == 1");
}

uint64_t SaveToFile(uint64_t result)
{
  v24[19] = *MEMORY[0x277D85DE8];
  if ((gDbgLvl & 4) != 0)
  {
    v1 = result;
    v24[6] = 0;
    v2 = MEMORY[0x277D82860] + 64;
    v24[0] = MEMORY[0x277D82860] + 64;
    v3 = MEMORY[0x277D82810];
    v4 = *(MEMORY[0x277D82810] + 16);
    v22 = *(MEMORY[0x277D82810] + 8);
    *(&v23[-1] + *(v22 - 24)) = v4;
    v5 = (&v23[-1] + *(v22 - 24));
    std::ios_base::init(v5, v23);
    v6 = MEMORY[0x277D82860] + 24;
    v5[1].__vftable = 0;
    v5[1].__fmtflags_ = -1;
    v22 = v6;
    v24[0] = v2;
    MEMORY[0x22AA55890](v23);
    if (byte_27D6F284F >= 0)
    {
      v7 = byte_27D6F284F;
    }

    else
    {
      v7 = qword_27D6F2840;
    }

    v8 = &v19;
    std::string::basic_string[abi:nn200100](&v19, v7 + 1);
    if ((v19.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v8 = v19.__r_.__value_.__r.__words[0];
    }

    if (v7)
    {
      if (byte_27D6F284F >= 0)
      {
        v9 = &gOutputDirName;
      }

      else
      {
        v9 = gOutputDirName;
      }

      memmove(v8, v9, v7);
    }

    *(&v8->__r_.__value_.__l.__data_ + v7) = 47;
    v10 = *(v1 + 23);
    if (v10 >= 0)
    {
      v11 = v1;
    }

    else
    {
      v11 = *v1;
    }

    if (v10 >= 0)
    {
      v12 = *(v1 + 23);
    }

    else
    {
      v12 = *(v1 + 8);
    }

    v13 = std::string::append(&v19, v11, v12);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v21 = v13->__r_.__value_.__r.__words[2];
    *__p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (!CreateDirForFile(__p))
    {
      std::ofstream::open();
      if (v23[15])
      {
        std::ostream::write();
        if (!std::filebuf::close())
        {
          std::ios_base::clear((&v23[-1] + *(v22 - 24)), *(&v23[3] + *(v22 - 24)) | 4);
        }
      }

      else
      {
        v15 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Could not open file [", 21);
        if (v21 >= 0)
        {
          v16 = __p;
        }

        else
        {
          v16 = __p[0];
        }

        if (v21 >= 0)
        {
          v17 = HIBYTE(v21);
        }

        else
        {
          v17 = __p[1];
        }

        v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, v16, v17);
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, "] for writing.\n", 15);
      }
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    v22 = *v3;
    *(&v23[-1] + *(v22 - 24)) = v3[3];
    MEMORY[0x22AA558A0](v23);
    std::ostream::~ostream();
    return MEMORY[0x22AA55B20](v24);
  }

  return result;
}

void sub_22497DA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ofstream::~ofstream(&a23);
  _Unwind_Resume(a1);
}

uint64_t CreateDirForFile(uint64_t *a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  v2 = [MEMORY[0x277CCACA8] stringWithCString:v1 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v9 = 0;
  if ([v3 fileExistsAtPath:v2 isDirectory:&v9])
  {
    goto LABEL_11;
  }

  v4 = [v2 pathExtension];
  v5 = [v4 isEqualToString:&stru_28381ECE0];

  if (v5)
  {
LABEL_10:
    if (![v3 createDirectoryAtPath:v2 withIntermediateDirectories:1 attributes:0 error:0])
    {
      v7 = 0xFFFFFFFFLL;
      goto LABEL_13;
    }

LABEL_11:
    v7 = 0;
LABEL_13:
    v6 = v2;
    goto LABEL_14;
  }

  v6 = [v2 stringByDeletingLastPathComponent];

  if (![v3 fileExistsAtPath:v6 isDirectory:&v9] || (v9 & 1) == 0)
  {
    v2 = v6;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_14:

  return v7;
}

void sub_22497DBC8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void *std::ofstream::~ofstream(void *a1)
{
  v2 = MEMORY[0x277D82810];
  v3 = *MEMORY[0x277D82810];
  *a1 = *MEMORY[0x277D82810];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x22AA558A0](a1 + 1);
  std::ostream::~ostream();
  MEMORY[0x22AA55B20](a1 + 52);
  return a1;
}

void SaveToFileWithPrefix(uint64_t a1)
{
  if (byte_27D6F2867 >= 0)
  {
    v2 = byte_27D6F2867;
  }

  else
  {
    v2 = *(&gCurrFrameId + 1);
  }

  v3 = &v10;
  std::string::basic_string[abi:nn200100](&v10, v2 + 1);
  if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v3 = v10.__r_.__value_.__r.__words[0];
  }

  if (v2)
  {
    if (byte_27D6F2867 >= 0)
    {
      v4 = &gCurrFrameId;
    }

    else
    {
      v4 = gCurrFrameId;
    }

    memmove(v3, v4, v2);
  }

  *(&v3->__r_.__value_.__l.__data_ + v2) = 95;
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v8 = std::string::append(&v10, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v12 = v8->__r_.__value_.__r.__words[2];
  *__p = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  SaveToFile(__p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_22497DDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CreateDir(uint64_t *a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  v2 = [MEMORY[0x277CCACA8] stringWithCString:v1 encoding:{objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v6 = 0;
  if ([v3 fileExistsAtPath:v2 isDirectory:&v6] && (v6 & 1) != 0 || (objc_msgSend(v3, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v2, 1, 0, 0) & 1) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = 0xFFFFFFFFLL;
  }

  return v4;
}

uint64_t InitCamParams(uint64_t result)
{
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

uint64_t ReleaseCamParams(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    MEMORY[0x22AA55B60](v2, 0x1000C4052888210);
    *(a1 + 40) = 0;
  }

  result = *(a1 + 32);
  if (result)
  {
    result = MEMORY[0x22AA55B60](result, 0x1000C4052888210);
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t GetFileSize(uint64_t a1)
{
  v12[19] = *MEMORY[0x277D85DE8];
  std::ifstream::basic_ifstream(v10);
  if (v11[15])
  {
    std::istream::tellg();
    v2 = v9;
  }

  else
  {
    v3 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], "Unable to open file ", 20);
    v4 = *(a1 + 23);
    if (v4 >= 0)
    {
      v5 = a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v4 >= 0)
    {
      v6 = *(a1 + 23);
    }

    else
    {
      v6 = *(a1 + 8);
    }

    v7 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v3, v5, v6);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v7, ".\n", 2);
    v2 = 0;
  }

  v10[0] = *MEMORY[0x277D82808];
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x22AA558A0](v11);
  std::istream::~istream();
  MEMORY[0x22AA55B20](v12);
  return v2;
}

void sub_22497E0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::ifstream::~ifstream(&a26, MEMORY[0x277D82808]);
  MEMORY[0x22AA55B20](&STACK[0x230]);
  _Unwind_Resume(a1);
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1)
{
  a1[59] = 0;
  v2 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v3 = *(MEMORY[0x277D82808] + 16);
  v4 = *(MEMORY[0x277D82808] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  a1[1] = 0;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 2);
  v6 = MEMORY[0x277D82858] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[53] = v2;
  MEMORY[0x22AA55890](a1 + 2);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_22497E294(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x22AA55B20](v1);
  _Unwind_Resume(a1);
}

uint64_t SavePixelBufferWithMetadataToFile(__CVBuffer *a1, const void **a2)
{
  v36[19] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  v5 = v32;
  std::string::basic_string[abi:nn200100](v32, v4 + 4);
  if (v33 < 0)
  {
    v5 = v32[0];
  }

  if (v4)
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, ".raw");
  PlaneCount = CVPixelBufferGetPlaneCount(a1);
  std::ofstream::basic_ofstream(&v34);
  if (v35[15])
  {
    if (CVPixelBufferLockBaseAddress(a1, 1uLL))
    {
      NSLog(&cfstr_RgbIrCalibS.isa, "Could not lock pixel buffer.");
      v8 = 4294967294;
    }

    else
    {
      if (PlaneCount)
      {
        for (i = 0; i != PlaneCount; ++i)
        {
          HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, i);
          CVPixelBufferGetWidthOfPlane(a1, i);
          BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, i);
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, i);
          if (HeightOfPlane)
          {
            v14 = BaseAddressOfPlane;
            do
            {
              std::ostream::write();
              v14 += BytesPerRowOfPlane;
              --HeightOfPlane;
            }

            while (HeightOfPlane);
          }
        }
      }

      else
      {
        Height = CVPixelBufferGetHeight(a1);
        CVPixelBufferGetWidth(a1);
        BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
        BaseAddress = CVPixelBufferGetBaseAddress(a1);
        if (Height)
        {
          v18 = BaseAddress;
          do
          {
            std::ostream::write();
            v18 += BytesPerRow;
            --Height;
          }

          while (Height);
        }
      }

      if (!std::filebuf::close())
      {
        std::ios_base::clear((&v35[-1] + *(v34 - 24)), *(&v35[3] + *(v34 - 24)) | 4);
      }

      CVPixelBufferUnlockBaseAddress(a1, 1uLL);
      v19 = CVBufferGetAttachments(a1, kCVAttachmentMode_ShouldPropagate);
      v20 = MEMORY[0x277CCACA8];
      if (*(a2 + 23) >= 0)
      {
        v21 = *(a2 + 23);
      }

      else
      {
        v21 = a2[1];
      }

      v22 = __p;
      std::string::basic_string[abi:nn200100](__p, v21 + 6);
      if (v31 < 0)
      {
        v22 = __p[0];
      }

      if (v21)
      {
        if (*(a2 + 23) >= 0)
        {
          v23 = a2;
        }

        else
        {
          v23 = *a2;
        }

        memmove(v22, v23, v21);
      }

      strcpy(v22 + v21, ".plist");
      v24 = v31;
      v25 = __p[0];
      v26 = [MEMORY[0x277CCACA8] defaultCStringEncoding];
      if (v24 >= 0)
      {
        v27 = __p;
      }

      else
      {
        v27 = v25;
      }

      v28 = [v20 stringWithCString:v27 encoding:v26];
      if (v31 < 0)
      {
        operator delete(__p[0]);
      }

      [v19 writeToFile:v28 atomically:1];

      v8 = 0;
    }
  }

  else
  {
    v9 = v32;
    if (v33 < 0)
    {
      v9 = v32[0];
    }

    NSLog(&cfstr_RgbIrCalibCoul.isa, v9);
    v8 = 0xFFFFFFFFLL;
  }

  v34 = *MEMORY[0x277D82810];
  *(&v35[-1] + *(v34 - 24)) = *(MEMORY[0x277D82810] + 24);
  MEMORY[0x22AA558A0](v35);
  std::ostream::~ostream();
  MEMORY[0x22AA55B20](v36);
  if (v33 < 0)
  {
    operator delete(v32[0]);
  }

  return v8;
}

void sub_22497E6F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23)
{
  std::ofstream::~ofstream(&a23);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::ofstream::basic_ofstream(uint64_t *a1)
{
  a1[58] = 0;
  v2 = MEMORY[0x277D82860] + 64;
  a1[52] = MEMORY[0x277D82860] + 64;
  v3 = *(MEMORY[0x277D82810] + 16);
  v4 = *(MEMORY[0x277D82810] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D82860] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[52] = v2;
  MEMORY[0x22AA55890](a1 + 1);
  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_22497E920(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x22AA55B20](v1);
  _Unwind_Resume(a1);
}

uint64_t PrepareVImgBuffersFromCVPixBuffer(__CVBuffer *a1, vImage_Buffer *a2)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (CVPixelBufferLockBaseAddress(a1, 1uLL))
  {
    return 0xFFFFFFFFLL;
  }

  a2->data = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  a2->height = Height;
  a2->width = Width;
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  result = 0;
  a2->rowBytes = BytesPerRowOfPlane;
  return result;
}

uint64_t std::ifstream::~ifstream(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  *(a1 + *(v2 - 24)) = a2[3];
  MEMORY[0x22AA558A0](a1 + 2);

  return std::istream::~istream();
}

void PearlIRIsf::~PearlIRIsf(PearlIRIsf *this)
{
  *this = &unk_283814D30;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_283814D30;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_283814D30;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x22AA55B60);
}

double DERImg4DecodeFindInSequence(unint64_t *a1, uint64_t a2, _OWORD *a3)
{
  v7 = 0;
  v8 = 0uLL;
  while (!DERDecodeSeqNext(a1, &v7))
  {
    if (v7 == a2)
    {
      result = *&v8;
      *a3 = v8;
      return result;
    }
  }

  return result;
}

uint64_t DERImg4DecodeTagCompare(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 8);
  if (v4 < 4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4 != 4)
  {
    return 1;
  }

  v8 = v2;
  v9 = v3;
  v7 = 0;
  if (DERParseInteger(a1, &v7))
  {
    return 4294967294;
  }

  if (v7 >= a2)
  {
    return v7 > a2;
  }

  return 0xFFFFFFFFLL;
}

uint64_t DERImg4DecodeManifestCommon(void *a1, unint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5)
{
  result = 6;
  if (a1 && a4)
  {
    if (!*a1 || !a1[1])
    {
      return 0;
    }

    if (a2 >= 0x10000)
    {
      __break(0x5507u);
      return result;
    }

    result = DERParseSequenceToObject(a1, a2, a3, a4, 0xC0uLL, 0);
    if (!result)
    {
      if (DERImg4DecodeTagCompare(a4, a5))
      {
        return 2;
      }

      v9 = 0;
      result = DERParseInteger(a4 + 16, &v9);
      if (result)
      {
        return result;
      }

      if (v9 > 2)
      {
        return 2;
      }

      return 0;
    }
  }

  return result;
}

uint64_t DERImg4DecodeProperty(void *a1, uint64_t a2, uint64_t a3)
{
  result = 6;
  if (a1)
  {
    if (a3)
    {
      v14 = 0;
      v15 = 0uLL;
      v13 = 0uLL;
      v11 = 0;
      v12 = 0;
      v9 = 0;
      v10 = 0;
      v8 = 0;
      result = DERDecodeSeqInit(a1, &v9, &v10);
      if (!result)
      {
        if (v9 != 0x2000000000000010)
        {
          return 2;
        }

        result = DERDecodeSeqNext(&v10, &v14);
        if (result)
        {
          return result;
        }

        if (v14 != 22)
        {
          return 2;
        }

        result = DERParseInteger(&v15, &v8);
        if (result)
        {
          return result;
        }

        if ((v8 | 0xE000000000000000) != a2)
        {
          return 2;
        }

        *a3 = v15;
        *(a3 + 16) = 0;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result)
        {
          return result;
        }

        *(a3 + 40) = v12;
        *(a3 + 24) = v13;
        result = DERDecodeSeqNext(&v10, &v12);
        if (result != 1)
        {
          return 2;
        }

        v7 = a1[1];
        if (__CFADD__(*a1, v7))
        {
          __break(0x5513u);
        }

        else if (v11 == *a1 + v7)
        {
          return 0;
        }

        else
        {
          return 7;
        }
      }
    }
  }

  return result;
}

uint64_t DERImg4DecodeFindPropertyInSequence(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v10 = 0;
  v11 = 0uLL;
  while (1)
  {
    result = DERDecodeSeqNext(a1, &v10);
    if (result)
    {
      break;
    }

    if (v10 == a2)
    {
      v9 = v11;
      return DERImg4DecodePropertyWithItem(&v9, a2, a3, a4);
    }
  }

  return result;
}

uint64_t DERImg4DecodeParseManifestPropertiesInternal(uint64_t a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v11 = 0;
  if (!a1 || !(a2 | a3))
  {
    return 6;
  }

  v14 = 0;
  v15[0] = 0;
  v15[1] = 0;
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  result = DERDecodeItem(a1 + 264, &v14);
  if (!result)
  {
    if (v14 == 0x2000000000000011)
    {
      result = DERParseInteger(a1 + 248, &v11);
      if (!result)
      {
        if (v11 == 2)
        {
          v9 = 0x2000000000000010;
          v10 = a4 | 0xE000000000000000;
        }

        else
        {
          v10 = a4 | 0xE000000000000000;
          v9 = 0x2000000000000011;
        }

        result = DERImg4DecodeFindProperty(v15, v10, v9, v13);
        if (!result)
        {
          if (a2)
          {
            *a2 = *(&v13[1] + 8);
          }

          result = DERImg4DecodeFindProperty(&v13[1] + 1, 0xE00000004D414E50, 0x2000000000000011uLL, v12);
          if (a3)
          {
            if (!result)
            {
              *a3 = *(&v12[1] + 8);
            }
          }
        }
      }
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t Img4DecodeParseLengthFromBufferWithTag(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v11 = 0;
  v12 = 0;
  v16[0] = 0;
  v16[1] = 0;
  v14[1] = 0;
  v15 = 0;
  result = 0xFFFFFFFFLL;
  v13 = 0;
  v14[0] = 0;
  if (a1)
  {
    if (a4)
    {
      v17[0] = a1;
      v17[1] = a2;
      result = DERDecodeItemPartialBufferGetLength(v17, &v15, &v12);
      if (!result)
      {
        if (v12)
        {
          if (v15 != 0x2000000000000010)
          {
            return 2;
          }

          result = DERDecodeItemPartialBufferGetLength(v16, &v13, &v11);
          if (result)
          {
            return result;
          }

          if (v11)
          {
            result = DERImg4DecodeTagCompare(v14, a3);
            if (!result)
            {
              v8 = v16[0] - a1;
              if (v12 >= ~(v16[0] - a1))
              {
                return 7;
              }

              v9 = __CFADD__(v12, v8);
              v10 = v12 + v8;
              if (v9)
              {
                __break(0x5500u);
              }

              else
              {
                result = 0;
                *a4 = v10;
              }

              return result;
            }

            return 2;
          }
        }

        return 3;
      }
    }
  }

  return result;
}

uint64_t Img4DecodePayloadExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 136))
    {
      v4 = *(a1 + 144) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayload(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v2 = (a1 + 136);
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *v2;
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadType(uint64_t a1, _DWORD *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = DERParseInteger(a1 + 104, a2);
    }

    else
    {
      result = 1;
    }
  }

  if (a2)
  {
    if (result)
    {
      *a2 = 0;
    }
  }

  return result;
}

uint64_t Img4DecodeGetPayloadVersion(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *(a1 + 120);
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodePayloadKeybagExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 152))
    {
      v4 = *(a1 + 160) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadKeybag(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    if (*(a1 + 136) && *(a1 + 144))
    {
      result = 0;
      *a2 = *(a1 + 152);
      return result;
    }

    result = 1;
    goto LABEL_9;
  }

  result = 6;
  if (a2)
  {
LABEL_9:
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  return result;
}

uint64_t Img4DecodePayloadCompressionInfoExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 168))
    {
      v4 = *(a1 + 176) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetPayloadCompressionInfo(void *a1, _DWORD *a2, _DWORD *a3)
{
  result = 6;
  if (a1 && a2 && a3)
  {
    if (a1[17] && a1[18] && a1[21] && a1[22])
    {
      v7 = 0u;
      v8 = 0u;
      result = DERParseSequenceContentToObject(a1 + 21, 2u, &DERImg4CompressionItemSpecs, &v7, 0x20uLL, 0);
      if (!result)
      {
        result = DERParseInteger(&v7, a2);
        if (!result)
        {
          result = DERParseInteger(&v8, a3);
          if (!result)
          {
            return result;
          }
        }
      }
    }

    else
    {
      result = 1;
    }
  }

  if (a2)
  {
    if (a3)
    {
      *a2 = -1;
      *a3 = -1;
    }
  }

  return result;
}

double Img4DecodeCopyPayloadHashWithCallback(uint64_t a1, void (*a2)(void, void, __int128 *), uint64_t a3, int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1 || a4 != 20 || !a3)
  {
    if (!a3)
    {
      return *&v5;
    }

LABEL_9:
    *a3 = 0;
    *(a3 + 8) = 0;
    return *&v5;
  }

  if (!*(a1 + 136) || !*(a1 + 144))
  {
    goto LABEL_9;
  }

  if (*a1 == 1)
  {
    v5 = *(a1 + 184);
    *(a3 + 16) = *(a1 + 200);
    *a3 = v5;
  }

  else
  {
    v7 = 0uLL;
    v8 = 0;
    a2(*(a1 + 8), *(a1 + 16), &v7);
    *&v5 = v7;
    *a3 = v7;
    *(a3 + 16) = v8;
  }

  return *&v5;
}

uint64_t Img4DecodeManifestExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 24) != 0;
    }
  }

  return result;
}

double Img4DecodeCopyManifestHashWithCallback(uint64_t a1, void (*a2)(void), uint64_t a3, int a4)
{
  if (!a1 || a4 != 20 || !a3)
  {
    if (!a3)
    {
      return *&v5;
    }

LABEL_8:
    *a3 = 0;
    *(a3 + 8) = 0;
    return *&v5;
  }

  if (!*(a1 + 24))
  {
    goto LABEL_8;
  }

  if (*(a1 + 1) == 1)
  {
    v5 = *(a1 + 328);
    *(a3 + 16) = *(a1 + 344);
    *a3 = v5;
  }

  else
  {
    a2();
    *&v5 = 0;
    *a3 = 0uLL;
    *(a3 + 16) = 0;
  }

  return *&v5;
}

uint64_t Img4DecodeSectionExists(void *a1, unsigned int a2, _BYTE *a3)
{
  result = 6;
  if (a2 <= 1 && a1 && a3)
  {
    if (a2)
    {
      if (a1[55])
      {
        v5 = a1[56];
        if (!v5)
        {
          goto LABEL_12;
        }

        goto LABEL_10;
      }
    }

    else if (a1[33])
    {
      v5 = a1[34];
      if (!v5)
      {
LABEL_12:
        result = 0;
        *a3 = v5;
        return result;
      }

LABEL_10:
      LOBYTE(v5) = 1;
      goto LABEL_12;
    }

    LOBYTE(v5) = 0;
    goto LABEL_12;
  }

  return result;
}

uint64_t Img4DecodeRestoreInfoExists(uint64_t a1, BOOL *a2)
{
  result = 6;
  if (a1 && a2)
  {
    if (*(a1 + 440))
    {
      v4 = *(a1 + 448) != 0;
    }

    else
    {
      v4 = 0;
    }

    result = 0;
    *a2 = v4;
  }

  return result;
}

uint64_t Img4DecodeGetBooleanFromSection(uint64_t a1, unsigned int a2, uint64_t a3, BOOL *a4)
{
  memset(v8, 0, sizeof(v8));
  v4 = 6;
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 1uLL, v8);
      v4 = v6;
      if (!v6)
      {
        return DERParseBoolean(&v8[1] + 1, a4);
      }
    }
  }

  return v4;
}

void Img4DecodeGetIntegerFromSection(uint64_t a1, unsigned int a2, uint64_t a3, _DWORD *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (!v5)
      {
        if (DERParseInteger(&v6[1] + 8, a4))
        {
          *a4 = 0;
        }
      }
    }
  }
}

void Img4DecodeGetInteger64FromSection(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (!v5)
      {
        if (DERParseInteger64(&v6[1] + 8, a4))
        {
          *a4 = 0;
        }
      }
    }
  }
}

void Img4DecodeGetDataFromSection(uint64_t a1, unsigned int a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetPropertyFromSection(a1, a2, a3 | 0xE000000000000000, 4uLL, &v9);
    if (v7)
    {
      *a5 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
      *a5 = v8;
    }
  }
}

double Img4DecodeGetObjectProperty(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  v11[0] = 0;
  v11[1] = 0;
  result = 0.0;
  memset(v10, 0, sizeof(v10));
  if (a1 && a5 && (DERImg4DecodeParseManifestProperties(a1, v11, 0) || DERImg4DecodeFindProperty(v11, a2 | 0xE000000000000000, 0x2000000000000011uLL, v10) || DERImg4DecodeFindProperty(&v10[1] + 1, a3, a4, a5)))
  {
    result = 0.0;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

void Img4DecodeGetObjectPropertyInteger(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (v5 || DERParseInteger(&v6[1] + 8, a4))
      {
        *a4 = 0;
      }
    }
  }
}

void Img4DecodeGetObjectPropertyInteger64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  memset(v6, 0, sizeof(v6));
  if (a1)
  {
    if (a4)
    {
      Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 2uLL, v6);
      if (v5 || DERParseInteger64(&v6[1] + 8, a4))
      {
        *a4 = 0;
      }
    }
  }
}

void Img4DecodeGetObjectPropertyData(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 4uLL, &v9);
    if (v7)
    {
      v8 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
    }

    *a5 = v8;
  }
}

void Img4DecodeGetObjectPropertyString(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (a1 && a4 && a5)
  {
    Img4DecodeGetObjectProperty(a1, a2, a3 | 0xE000000000000000, 0x16uLL, &v9);
    if (v7)
    {
      v8 = 0;
      *a4 = 0;
    }

    else
    {
      v8 = v11;
      *a4 = *(&v10 + 1);
    }

    *a5 = v8;
  }
}

double Img4DecodeGetPropertyFromSection(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, _OWORD *a5)
{
  *v11 = 0uLL;
  if (a2 <= 1 && a1 && a5)
  {
    v12 = 0;
    if (!Img4DecodeSectionExists(a1, a2, &v12) && v12 == 1)
    {
      if (a2)
      {
        *v11 = *(a1 + 440);
        goto LABEL_9;
      }

      if (!DERImg4DecodeParseManifestProperties(a1, 0, v11))
      {
LABEL_9:
        if (!DERImg4DecodeFindProperty(v11, a3, a4, a5))
        {
          return result;
        }
      }
    }

    result = 0.0;
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
  }

  return result;
}

uint64_t Img4DecodeGetPropertyData(uint64_t *a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  result = 6;
  if (a3 && a4)
  {
    v8 = *a1;
    v9 = *(a1 + 2);
    v11[0] = v8;
    v11[1] = v9;
    result = DERImg4DecodeProperty(v11, a2 | 0xE000000000000000, &v12);
    if (!result)
    {
      if (*(&v14 + 1) == 4)
      {
        v10 = v14;
        if (!DWORD1(v14))
        {
          result = 0;
          *a3 = *(&v13 + 1);
LABEL_7:
          *a4 = v10;
          return result;
        }

        result = 7;
      }

      else
      {
        result = 2;
      }
    }

    v10 = 0;
    *a3 = 0;
    goto LABEL_7;
  }

  return result;
}

double Img4DecodeInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a3)
    {
      v9[0] = a1;
      v9[1] = a2;
      v7 = 0u;
      v8 = 0u;
      v5 = 0u;
      v6 = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 224) = 0u;
      *(a3 + 240) = 0u;
      *(a3 + 256) = 0u;
      *(a3 + 272) = 0u;
      *(a3 + 288) = 0u;
      *(a3 + 304) = 0u;
      *(a3 + 320) = 0u;
      *(a3 + 336) = 0u;
      *(a3 + 352) = 0u;
      *(a3 + 368) = 0u;
      *(a3 + 384) = 0u;
      *(a3 + 400) = 0u;
      *(a3 + 416) = 0u;
      *(a3 + 432) = 0u;
      *(a3 + 448) = 0;
      if (!DERImg4Decode(v9, &v5) && !DERImg4DecodePayload(&v6, a3 + 88) && !DERImg4DecodeManifest(&v7, a3 + 232) && !DERImg4DecodeRestoreInfo(&v8, (a3 + 424)))
      {
        *(a3 + 8) = v6;
        result = *&v7;
        *(a3 + 24) = v7;
      }
    }
  }

  return result;
}

double Img4DecodeInitPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a3)
  {
    *&v5 = a1;
    *(&v5 + 1) = a2;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 224) = 0u;
    *(a3 + 240) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 272) = 0u;
    *(a3 + 288) = 0u;
    *(a3 + 304) = 0u;
    *(a3 + 320) = 0u;
    *(a3 + 336) = 0u;
    *(a3 + 352) = 0u;
    *(a3 + 368) = 0u;
    *(a3 + 384) = 0u;
    *(a3 + 400) = 0u;
    *(a3 + 416) = 0u;
    *(a3 + 432) = 0u;
    *(a3 + 448) = 0;
    if (!DERImg4DecodePayload(&v5, a3 + 88))
    {
      result = *&v5;
      *(a3 + 8) = v5;
    }
  }

  return result;
}

uint64_t Img4DecodeInitManifestCommon(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5)
{
  result = 6;
  if (a1 && a4)
  {
    v15 = a1;
    v16 = a2;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 240) = 0u;
    *(a4 + 256) = 0u;
    *(a4 + 272) = 0u;
    *(a4 + 288) = 0u;
    *(a4 + 304) = 0u;
    *(a4 + 320) = 0u;
    *(a4 + 336) = 0u;
    *(a4 + 352) = 0u;
    *(a4 + 368) = 0u;
    *(a4 + 384) = 0u;
    *(a4 + 400) = 0u;
    *(a4 + 416) = 0u;
    *(a4 + 432) = 0u;
    *(a4 + 448) = 0;
    if (a5 == 1229796419)
    {
      v10 = a4 + 232;
      if (a3)
      {
        result = DERImg4DecodeCertificate(&v15, v10);
      }

      else
      {
        result = DERImg4DecodeUnsignedCertificate(&v15, v10);
      }
    }

    else
    {
      if (a5 != 1229796429)
      {
        return 2;
      }

      v9 = a4 + 232;
      if (a3)
      {
        result = DERImg4DecodeManifest(&v15, v9);
      }

      else
      {
        result = DERImg4DecodeUnsignedManifest(&v15, v9);
      }
    }

    if (!result)
    {
      if (*(a4 + 264))
      {
        v12 = 0;
        v13 = 0;
        v14 = 0;
        v15 = a1;
        v16 = a2;
        result = DERDecodeItemPartialBufferGetLength(&v15, &v12, 0);
        if (!result)
        {
          *(a4 + 24) = a1;
          v11 = v14 + v13 - a1;
          if (__CFADD__(v14, v13 - a1))
          {
            __break(0x5500u);
          }

          else
          {
            *(a4 + 32) = v11;
            if (v11 == a2)
            {
              return 0;
            }

            else
            {
              return 7;
            }
          }
        }
      }

      else
      {
        return 3;
      }
    }
  }

  return result;
}

uint64_t Img4DecodePerformTrustEvaluation(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = a3;
  return _Img4DecodePerformTrustEvaluationWithCallbacksInternal(a1, a2, v6, a4, 0, a5);
}

uint64_t Img4DecodePerformTrustEvaluatation(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[1] = 0;
  v6[2] = 0;
  v6[0] = a3;
  return _Img4DecodePerformTrustEvaluationWithCallbacksInternal(a1, a2, v6, a4, 0, a5);
}

uint64_t _Img4DecodeValidateManifestPropertyInterposer(unsigned int a1, uint64_t a2, int a3, uint64_t a4)
{
  v10 = a1;
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *a4;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v12[0] = 0;
  v12[1] = 0;
  memset(v11, 0, sizeof(v11));
  if (v8 && !DERImg4DecodeProperty(v8, 0xE00000006D616E78, &v13) && *(&v15 + 1) == 0x2000000000000011 && !DERDecodeSeqContentInit(&v14 + 1, v12))
  {
    v9 = a1 | 0xE000000000000000;
    while (!DERDecodeSeqNext(v12, v11))
    {
      if (v11[0] == v9)
      {
        (*(*(*a4 + 24) + 8))(*(*(*a4 + 16) + 32), a4 + 24, 4, &v10);
        return 0;
      }
    }
  }

  (*(*(*a4 + 24) + 8))(*(*(*a4 + 16) + 32), a4 + 24, *(a2 + 8), *a2);
  return 0;
}

uint64_t OUTLINED_FUNCTION_1_12(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13)
{
  a12 = 0u;
  a13 = 0u;
  a11 = 0u;
  v14 = *(a1 + 2);
  a9 = *a1;
  a10 = v14;
  v15 = a2 | 0xE000000000000000;

  return DERImg4DecodeProperty(&a9, v15, &a11);
}

void OUTLINED_FUNCTION_5_4(uint64_t a1, ...)
{
  va_start(va, a1);

  bzero(va, 0xA0uLL);
}

void *OUTLINED_FUNCTION_6_2(uint64_t a1, const void *a2)
{

  return memcpy(v3, a2, v2);
}

void _Img4DecodePayloadPropertyExistsWithValue(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, BOOL *a5)
{
  v19[8] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    bzero(v18, 0xA0uLL);
    v17 = 0uLL;
    v16 = 0uLL;
    v15 = 0uLL;
    v11 = *(a1 + 8);
    v10 = a1 + 8;
    if (v11)
    {
      bzero(v18, 0xA0uLL);
      if (!DERImg4DecodePayloadWithProperties(v10, v18))
      {
        if (v19[0])
        {
          DERImg4DecodeContentFindItemWithTag(v19, 0x2000000000000010, &v17);
          if (!v12)
          {
            DERImg4DecodeContentFindItemWithTag(&v17, 0x2000000000000011, &v16);
            if (!v13)
            {
              if (a5)
              {
                DERImg4DecodeContentFindItemWithTag(&v16, a2, &v15);
                if (v14)
                {
                  return;
                }

                *a5 = v15 != 0;
              }

              if (a4)
              {
                DERImg4DecodeFindProperty(&v16, a2, a3, a4);
              }
            }
          }
        }
      }
    }
  }
}

void Img4DecodeEvaluateCertificatePropertiesInternal(void *a1, _OWORD *a2)
{
  v21[0] = 0;
  v21[1] = 0;
  v20[0] = 0;
  v20[1] = 0;
  v19 = 0;
  v18 = 0uLL;
  __n = 0;
  v17 = 0;
  v14 = 0;
  __s1 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  __s2 = 0uLL;
  v7 = 0uLL;
  if (a1 && a1[40] && !DERDecodeSeqInit((a1 + 39), &v19, v21) && v19 == 0x2000000000000011)
  {
    while (1)
    {
      if (DERDecodeSeqNext(v21, &v17))
      {
        return;
      }

      v4 = (a1 + 7);
      switch(v17)
      {
        case 0xE00000004D414E50:
LABEL_11:
          v7 = *v4;
          if (DERImg4DecodeProperty(&v18, v17, &v11) || *(&v13 + 1) != 0x2000000000000011 || DERDecodeSeqContentInit(&v12 + 1, v20))
          {
            return;
          }

          while (1)
          {
            v5 = DERDecodeSeqNext(v20, &v14);
            if (v5)
            {
              break;
            }

            if (DERImg4DecodeProperty(&__s1, v14, v9))
            {
              return;
            }

            DERImg4DecodeContentFindItemWithTag(&v7, v14, &__s2);
            if (*(&v10 + 1) <= 4uLL && ((1 << SBYTE8(v10)) & 0x16) != 0)
            {
              if (v6)
              {
                return;
              }

              if (__n != *(&__s2 + 1))
              {
                return;
              }

              v6 = memcmp(__s1, __s2, __n);
              if (v6)
              {
                return;
              }
            }

            else if (*(&v10 + 1) != 0xA000000000000000)
            {
              if (*(&v10 + 1) != 0xA000000000000001 || v6 != 1)
              {
                return;
              }

              v6 = 0;
            }

            if (v6)
            {
              return;
            }
          }

          if (v5 != 1)
          {
            return;
          }

          break;
        case 0xE00000006D616E78:
          if (a2)
          {
            *a2 = v18;
          }

          break;
        case 0xE00000004F424A50:
          v4 = (a1 + 9);
          if (a1[9])
          {
            goto LABEL_11;
          }

          v4 = (a1 + 9);
          if (a1[10])
          {
            goto LABEL_11;
          }

          break;
        default:
          return;
      }
    }
  }
}

uint64_t _Img4DecodePerformTrustEvaluationWithCallbacksInternal(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v20 = 0;
  v21 = 0;
  memset(v22, 0, sizeof(v22));
  result = 6;
  if (!a2)
  {
    return result;
  }

  if (!a3)
  {
    return result;
  }

  if (!a4)
  {
    return result;
  }

  if (!*a3)
  {
    return result;
  }

  if (!*a4)
  {
    return result;
  }

  if (!*(a4 + 24))
  {
    return result;
  }

  if (!*(a4 + 8))
  {
    return result;
  }

  if (!*(a4 + 16))
  {
    return result;
  }

  v10 = *(a4 + 32);
  if (!v10)
  {
    return result;
  }

  if (!*(a2 + 24))
  {
    return 6;
  }

  if (*v10 > 0x30uLL)
  {
    return 7;
  }

  result = (*a4)();
  if (result)
  {
    return result;
  }

  *(a2 + 1) = 1;
  v14 = *(a3 + 8);
  if (v14 && (v15 = v14(a2, a6)) != 0 && !memcmp((a2 + 328), v15, **(a4 + 32)))
  {
    v16 = 0;
  }

  else
  {
    result = (*(a4 + 8))(*(a2 + 296), *(a2 + 304), &v20, &v21, a2 + 312, a2 + 320, a4, a6);
    if (result)
    {
      return result;
    }

    if (**(a4 + 32) > 0x30uLL)
    {
      return 7;
    }

    result = (*a4)(*(a2 + 264), *(a2 + 272), a2 + 376);
    if (result)
    {
      return result;
    }

    result = (*(a4 + 16))(v20, v21, *(a2 + 280), *(a2 + 288), a2 + 376, **(a4 + 32), a4, a6);
    if (result)
    {
      return result;
    }

    v16 = 1;
  }

  result = DERImg4DecodeParseManifestProperties(a2, a2 + 40, a2 + 56);
  if (result)
  {
    return result;
  }

  if ((a5 & 1) == 0)
  {
    v17 = *(a3 + 16);
    v18 = (a2 + 40);
    v19 = a1 | 0xE000000000000000;
    if (v17)
    {
      result = v17(v18, v19, 0x2000000000000011, v22, a6);
      if (result)
      {
        return result;
      }
    }

    else
    {
      result = DERImg4DecodeFindProperty(v18, v19, 0x2000000000000011uLL, v22);
      if (result)
      {
        return result;
      }
    }

    *(a2 + 72) = *(&v22[1] + 8);
  }

  if (v16)
  {
    result = (*(a4 + 24))(a2, a6);
    if (result)
    {
      return result;
    }
  }

  if (**(a4 + 32) > 0x30uLL)
  {
    return 7;
  }

  if (*(a2 + 136) && *(a2 + 144))
  {
    result = (*a4)(*(a2 + 8), *(a2 + 16), a2 + 184);
    if (result)
    {
      return result;
    }

    *a2 = 1;
  }

  result = Img4DecodeEvaluateDictionaryProperties((a2 + 56), 0, *a3, a6);
  if (!result)
  {
    if (a5)
    {
      return 0;
    }

    result = Img4DecodeEvaluateDictionaryProperties((a2 + 72), 1, *a3, a6);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t verify_signature_rsa3k(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a1;
  v13[1] = a2;
  v12[0] = a3;
  v12[1] = a4;
  v11[0] = a5;
  v11[1] = a6;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a7 + 32);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *v8;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v9 != a6)
  {
    return 0xFFFFFFFFLL;
  }

  result = verify_pkcs1_sig(v13, v9[4], v11, v12, 3072);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t verify_pkcs1_sig(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[4] = *MEMORY[0x277D85DE8];
  if (a5 != 4096 && a5 != 3072)
  {
    return 0xFFFFFFFFLL;
  }

  v13[2] = 0;
  v13[3] = 0;
  v6 = (a5 + 63) >> 6;
  MEMORY[0x28223BE20](a1, (24 * v6 + 71) & 0x7FFFFFFFFFFFFFE0);
  v8 = (v12 - v7);
  bzero(v12 - v7, v7);
  *v8 = v6;
  v9 = *(a1 + 8);
  v13[0] = *a1;
  v13[1] = v9;
  memset(v12, 0, sizeof(v12));
  if (DERParseSequenceToObject(v13, DERNumRSAPubKeyPKCS1ItemSpecs, &DERRSAPubKeyPKCS1ItemSpecs, v12, 0x20uLL, 0x20uLL) || ccrsa_pub_init(v8, *(&v12[0] + 1), *&v12[0]))
  {
    return 0xFFFFFFFFLL;
  }

  if (MEMORY[0x277D85C38] && MEMORY[0x28223BE48])
  {
    if (ccrsa_verify_pkcs1v15_digest() || cc_cmp_safe())
    {
      return 0xFFFFFFFFLL;
    }

    return 0;
  }

  LOBYTE(v12[0]) = 0;
  v11 = ccrsa_verify_pkcs1v15();
  result = 0xFFFFFFFFLL;
  if (!v11 && (v12[0] & 1) != 0)
  {
    return 0;
  }

  return result;
}

uint64_t verify_signature_rsa(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a1;
  v13[1] = a2;
  v12[0] = a3;
  v12[1] = a4;
  v11[0] = a5;
  v11[1] = a6;
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a4)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a5)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a6)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a7)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(a7 + 32);
  if (!v7)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *v8;
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  if (*v9 != a6)
  {
    return 0xFFFFFFFFLL;
  }

  result = verify_pkcs1_sig(v13, v9[4], v11, v12, 4096);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t verify_signature_rsa4096_fixed(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 0;
  result = 6;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              if (a7)
              {
                v9 = *(a7 + 32);
                if (v9)
                {
                  v10 = *(v9 + 16);
                  if (v10)
                  {
                    if (*v10)
                    {
                      result = 0xFFFFFFFFLL;
                      if (a2 == 516 && **v10 == a6)
                      {
                        if (a1 >= 0xFFFFFFFFFFFFFE00)
                        {
                          __break(0x5513u);
                        }

                        else
                        {
                          MEMORY[0x28223BE20](0xFFFFFFFFLL, 516);
                          bzero(&v12, 0x638uLL);
                          v11 = 64;
                          result = ccrsa_pub_init(&v11, 0x200uLL, a1);
                          if (!result)
                          {
                            if (MEMORY[0x277D85C38] && MEMORY[0x28223BE48])
                            {
                              result = ccrsa_verify_pkcs1v15_digest();
                              if (!result)
                              {
                                if (cc_cmp_safe())
                                {
                                  return 0xFFFFFFFFLL;
                                }

                                return 0;
                              }
                            }

                            else
                            {
                              v13 = 0;
                              LODWORD(result) = ccrsa_verify_pkcs1v15();
                              if (!result && (v13 & 1) != 0)
                              {
                                return 0;
                              }

                              if (result)
                              {
                                return result;
                              }

                              else
                              {
                                return 0xFFFFFFFFLL;
                              }
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                      return 0xFFFFFFFFLL;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t ccrsa_pub_init(unint64_t *a1, unint64_t a2, _BYTE *a3)
{
  v4 = a2;
  if (a2)
  {
    while (!*a3)
    {
      if (a3 == -1)
      {
        __break(0x5513u);
        goto LABEL_10;
      }

      ++a3;
      if (!--v4)
      {
        break;
      }
    }
  }

  if (v4 >= 0xFFFFFFFFFFFFFFF8)
  {
LABEL_10:
    __break(0x5500u);
  }

  else
  {
    v5 = (v4 + 7) >> 3;
    if (v5 > *a1)
    {
      return 0xFFFFFFFFLL;
    }

    *a1 = v5;
  }

  return MEMORY[0x282201880]();
}

void verify_signature_ecdsa(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        if (a4)
        {
          if (a5)
          {
            if (a6)
            {
              if (a7)
              {
                v9 = *(a7 + 32);
                if (v9)
                {
                  if (v9[2] && *(a7 + 48) && *v9 == a6)
                  {
                    v10[2] = v7;
                    v10[3] = v8;
                    v10[0] = a1;
                    v10[1] = a2;
                    verify_ecdsa_sig(v10);
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void verify_ecdsa_sig(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v12[7] = 0;
  ccec_x963_import_pub_size();
  if (ccec_keysize_is_supported())
  {
    cp = ccec_get_cp();
    v3 = *cp;
    if (*cp >> 61 || !is_mul_ok(8 * v3, 3uLL))
    {
      __break(0x550Cu);
    }

    else
    {
      v4 = 24 * v3;
      v5 = __CFADD__(v4, 16);
      v6 = v4 + 16;
      if (!v5)
      {
        v5 = __CFADD__(v6, 16);
        v7 = v6 + 16;
        if (!v5)
        {
          v8 = cp;
          v9 = v7 - 1;
          MEMORY[0x28223BE20](cp, (v7 - 1) & 0xFFFFFFFFFFFFFFF0);
          v11 = &v12[-v10];
          bzero(&v12[-v10], v10);
          if (v9 < 0x10)
          {
            __break(1u);
          }

          else
          {
            *v11 = v8;
            if (!MEMORY[0x22AA55DB0](v8, a1[1], *a1, v11))
            {
              ccec_verify();
            }
          }

          return;
        }
      }
    }

    __break(0x5500u);
  }
}

uint64_t verify_chain_img4_v1(unint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v9 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(&v31, 0x2F0uLL);
        v29[0] = a1;
        v29[1] = v9;
        v30[0] = &ROOT_CA_CERTIFICATE;
        v30[1] = 1215;
        if (!_crack_chain_with_anchor(v29, v30, 3u) && !parse_chain(v30, 3u, &v32, v34, v37, v40))
        {
          v27 = a3;
          v25 = a6;
          v26 = a5;
          v15 = v35;
          v16 = &v33;
          v17 = 0;
          v18 = 2;
          v19 = v35;
          while (1)
          {
            v20 = &v34[10 * v17];
            v21 = *(v20 + 11);
            v22 = *v19;
            v19 += 20;
            if (v21 != v22)
            {
              break;
            }

            if (memcmp(*(v20 + 10), *(v15 - 1), v21))
            {
              break;
            }

            result = verify_chain_signatures(&v37[v17], v16, a7);
            if (result)
            {
              break;
            }

            v16 += 6;
            ++v17;
            v15 = v19;
            if (!--v18)
            {
              v28 = 0uLL;
              if (v34 > 0xFFFFFFFFFFFFFF5FLL)
              {
LABEL_34:
                __break(0x5513u);
                return result;
              }

              v45[0] = 0;
              v45[1] = 0;
              v43 = 0;
              v44[0] = 0;
              v44[1] = 0;
              if (DERDecodeSeqContentInit(v36, v45))
              {
                return 0xFFFFFFFFLL;
              }

LABEL_14:
              if (!DERDecodeSeqNext(v45, &v43) && v43 == 0x2000000000000011)
              {
                v50[0] = 0;
                v50[1] = 0;
                v48 = 0;
                v49[0] = 0;
                v49[1] = 0;
                v46 = 0u;
                v47 = 0u;
                if (!DERDecodeSeqContentInit(v44, v50))
                {
                  do
                  {
                    v23 = DERDecodeSeqNext(v50, &v48);
                    if (v23)
                    {
                      if (v23 == 1)
                      {
                        goto LABEL_14;
                      }

                      return 0xFFFFFFFFLL;
                    }

                    if (v48 != 0x2000000000000010 || DERParseSequenceContentToObject(v49, DERNumAttributeTypeAndValueItemSpecs, &DERAttributeTypeAndValueItemSpecs, &v46, 0x20uLL, 0x20uLL))
                    {
                      return 0xFFFFFFFFLL;
                    }
                  }

                  while (!DEROidCompare(&oidCommonName, &v46));
                  v28 = v47;
                  result = DEROidCompare(&verify_chain_img4_v1_sboot_item, &v28);
                  if (!result)
                  {
                    return 0xFFFFFFFFLL;
                  }

                  if (v37 > 0xFFFFFFFFFFFFFFDFLL)
                  {
                    goto LABEL_34;
                  }

                  *v27 = v38;
                  *a4 = v39;
                  if (v40 > 0xFFFFFFFFFFFFFFDFLL)
                  {
                    goto LABEL_34;
                  }

                  if (!v41)
                  {
                    return 0;
                  }

                  v24 = v42;
                  if (!v42)
                  {
                    return 0;
                  }

                  result = 0;
                  if (v26)
                  {
                    if (v25)
                    {
                      result = 0;
                      *v26 = v41;
                      *v25 = v24;
                    }
                  }

                  return result;
                }
              }

              return 0xFFFFFFFFLL;
            }
          }
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t parse_chain(uint64_t result, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2)
  {
    return 0;
  }

  v7 = result;
  v8 = 0;
  v19 = ~result;
  v18 = ~a3;
  v16 = ~a4;
  v14 = ~a5;
  v9 = ~a6;
  v10 = a2;
  while (1)
  {
    v11 = 16 * v8;
    if (16 * v8 > v19 || 48 * v8 > v18)
    {
      break;
    }

    result = DERParseSequenceToObject(v7 + 16 * v8, DERNumSignedCertCrlItemSpecs, &DERSignedCertCrlItemSpecs, a3 + 48 * v8, 0x30uLL, 0x30uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (160 * v8 > v16)
    {
      break;
    }

    v12 = a4 + 160 * v8;
    result = DERParseSequenceToObject(a3 + 48 * v8, DERNumTBSCertItemSpecs, &DERTBSCertItemSpecs, v12, 0xA0uLL, 0xA0uLL);
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v14)
    {
      break;
    }

    v23 = 0u;
    v24 = 0u;
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    if (DERParseSequenceContentToObject((v12 + 96), DERNumSubjPubKeyInfoItemSpecs, &DERSubjPubKeyInfoItemSpecs, &v23, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    if (DERParseSequenceContentToObject(&v23, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v20, 0x20uLL, 0x20uLL))
    {
      return 0xFFFFFFFFLL;
    }

    result = DEROidCompare(&v20, &oidRsa);
    if (!result)
    {
      return 0xFFFFFFFFLL;
    }

    if (*(&v21 + 1))
    {
      if (*(&v21 + 1) != 2 || *v21 != 5)
      {
        return 0xFFFFFFFFLL;
      }

      if (v21 == -1)
      {
        break;
      }

      if (*(v21 + 1))
      {
        return 0xFFFFFFFFLL;
      }
    }

    result = DERParseBitString(&v24, (a5 + 16 * v8), &v22);
    if (result || v22)
    {
      return 0xFFFFFFFFLL;
    }

    if (v11 > v9)
    {
      break;
    }

    result = parse_extensions(v12, (a6 + 16 * v8));
    if (result)
    {
      return 0xFFFFFFFFLL;
    }

    if (++v8 == v10)
    {
      return 0;
    }
  }

  __break(0x5513u);
  return result;
}

uint64_t verify_chain_signatures(void *a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = 0u;
  v12 = 0u;
  v10 = 0;
  memset(v13, 0, sizeof(v13));
  v8 = 0;
  v9 = 0;
  v5 = *(a3 + 32);
  if (!v5 || !v5[2] || !*a3 || !*(a3 + 40) || *v5 > 0x30uLL || DERParseSequenceContentToObject(a2 + 2, DERNumAlgorithmIdItemSpecs, &DERAlgorithmIdItemSpecs, &v11, 0x20uLL, 0x20uLL))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(&v12 + 1))
  {
    result = DEROidCompare(&v11, &oidEcPubKey);
    if ((result & 1) == 0)
    {
      if (*(&v12 + 1) != 2 || *v12 != 5)
      {
        return 0xFFFFFFFFLL;
      }

      if (v12 == -1)
      {
        __break(0x5513u);
        return result;
      }

      if (*(v12 + 1))
      {
        return 0xFFFFFFFFLL;
      }
    }
  }

  if (!DEROidCompare(&v11, *(a3 + 40)))
  {
    return 0xFFFFFFFFLL;
  }

  if ((*a3)(*a2, a2[1], v13, **(a3 + 32), a3))
  {
    return 0xFFFFFFFFLL;
  }

  if (DERParseBitString((a2 + 4), &v8, &v10))
  {
    return 0xFFFFFFFFLL;
  }

  if (v10)
  {
    return 0xFFFFFFFFLL;
  }

  result = (*(a3 + 16))(*a1, a1[1], v8, v9, v13, **(a3 + 32), a3, 0);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t verify_chain_img4_v2_with_crack_callback(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, unsigned int (*a8)(void *, _BYTE *, uint64_t))
{
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      if (a3 && a4)
      {
        bzero(v22, 0x300uLL);
        v21[0] = a1;
        v21[1] = v10;
        if (a8(v21, v22, 2))
        {
          return 0xFFFFFFFFLL;
        }

        result = parse_chain(v22, 2u, v23, v24, v27, v28);
        if (result)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          v15 = 1;
          v16 = 1;
          while ((v15 & 1) != 0)
          {
            v17 = &v24[10 * v16];
            if (__n == *(v17 + 7) && !memcmp(__s1, *(v17 + 6), __n))
            {
              result = verify_chain_signatures(v27, &v23[3 * v16], a7);
              v15 = 0;
              v16 = 2;
              if (!result)
              {
                continue;
              }
            }

            return 0xFFFFFFFFLL;
          }

          if (v27 > 0xFFFFFFFFFFFFFFEFLL || (*a3 = v27[2], *a4 = v27[3], v28 > 0xFFFFFFFFFFFFFFEFLL))
          {
            __break(0x5513u);
          }

          else if (v29 && (v18 = v30) != 0)
          {
            result = 0;
            if (a5 && a6)
            {
              result = 0;
              *a5 = v29;
              *a6 = v18;
            }
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t crack_chain_rsa4k_sha384_x86(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_X86_ROOT_CA_CERTIFICATE;
  a2[1] = 1382;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_ROOT_CA_CERTIFICATE;
  a2[1] = 1394;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi_global(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_GLOBAL_ROOT_CA_CERTIFICATE;
  a2[1] = 1404;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi_fake(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_FAKE_ROOT_CA_CERTIFICATE;
  a2[1] = 1425;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_ddi_fake_global(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_DDI_FAKE_GLOBAL_ROOT_CA_CERTIFICATE;
  a2[1] = 1435;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_avp(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_AVP_ROOT_CA_CERTIFICATE;
  a2[1] = 1431;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_tatsu_local_policy(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA4K_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 1382;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa4k_sha384_tatsu_local_policy_hacktivate(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &LOCAL_RSA4K_SHA384_LP_ROOT_CA_CERTIFICATE;
  a2[1] = 1442;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

uint64_t crack_chain_rsa3k_sha384(unint64_t *a1, void *a2, unsigned int a3)
{
  *a2 = &RSA3K_SHA384_ROOT_CA_CERTIFICATE;
  a2[1] = 1118;
  if (_crack_chain_with_anchor(a1, a2, a3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}