void AUSM::Metadata::PImpl::ParseDynamicObjectMetadata(uint64_t a1, unsigned __int8 *a2, __n128 a3)
{
  v68 = a2;
  v81 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = *v68;
    v6 = a1 + 8;
    do
    {
      v7 = *(v4 + 28);
      v8 = v7 >= v5;
      v9 = v7 < v5;
      if (v8)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * v9);
    }

    while (v4);
    if (v6 != a1 + 8 && *(v6 + 28) <= v5)
    {
      v10 = *(v6 + 32);
      if (v10 < *(a1 + 32))
      {
        goto LABEL_10;
      }

      if (getAUSMV2Log(void)::onceToken != -1)
      {
        dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
      }

      v59 = getAUSMV2Log(void)::gLog;
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
LABEL_115:

        return;
      }

      v60 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v60 = *v60;
      }

      *buf = 136315906;
      *v78 = v60;
      *&v78[8] = 2080;
      *&v78[10] = "ParseDynamicObjectMetadata";
      *&v78[18] = 1024;
      *&v78[20] = v10;
      *&v78[24] = 1024;
      *&v78[26] = v5;
      v61 = "[%s|%s] Input Element #%u referenced for objectID #%u does not exist";
LABEL_127:
      _os_log_error_impl(&dword_1DDB85000, v59, OS_LOG_TYPE_ERROR, v61, buf, 0x22u);
      goto LABEL_115;
    }
  }

  v10 = (*(a1 + 88) + 1);
  if (v10 >= *(a1 + 32))
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v59 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_115;
    }

    v62 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v62 = *v62;
    }

    v63 = *(a1 + 88);
    *buf = 136315906;
    *v78 = v62;
    *&v78[8] = 2080;
    *&v78[10] = "ParseDynamicObjectMetadata";
    *&v78[18] = 1024;
    *&v78[20] = v10;
    *&v78[24] = 1024;
    *&v78[26] = v63;
    v61 = "[%s|%s] Input Element #%u for ASC #%u does not exist";
    goto LABEL_127;
  }

LABEL_10:
  LODWORD(v11) = v68[1];
  v12 = v68 + 4;
  v67 = v68 + 4;
  if (!v11)
  {
    v12 = 0;
  }

  v72 = v12;
  v13 = llround(**(a1 + 72)) - *(a1 + 24) + llround(*(*(a1 + 80) + 12));
  if (AUSM::Metadata::mTraceLevel >= 1)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v14 = getAUSMV2Log(void)::gLog;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = (a1 + 48);
      if (*(a1 + 71) < 0)
      {
        v15 = *v15;
      }

      v16 = llround(**(a1 + 72));
      v17 = llround(*(*(a1 + 80) + 12));
      v18 = *(a1 + 24);
      *buf = 136316418;
      *v78 = v15;
      *&v78[8] = 2080;
      *&v78[10] = "ParseDynamicObjectMetadata";
      *&v78[18] = 1024;
      *&v78[20] = v13;
      *&v78[24] = 1024;
      *&v78[26] = v16;
      *v79 = 1024;
      *&v79[2] = v17;
      LOWORD(v80[0]) = 1024;
      *(v80 + 2) = v18;
      _os_log_impl(&dword_1DDB85000, v14, OS_LOG_TYPE_INFO, "[%s|%s] eventOffsetInAudioBuffer (%d) = mCurrentMDHeader->frameStartTime (%d) + mCurrentMDEvent->eventStartTime (%d) - mFirstAudioBufferSampleTime (%d)", buf, 0x2Eu);
    }

    LODWORD(v11) = v68[1];
  }

  if (v11)
  {
    v19 = 0;
    v66 = (a1 + 48);
    a3.n128_u64[0] = 136316162;
    v64 = a3;
    a3.n128_u64[0] = 136315906;
    v65 = a3;
    do
    {
      v20 = v72;
      v72 = &v67[500 * v19];
      v21 = v19 + 1;
      v71 = v19 + 1;
      if (!v19 || v21 == v11)
      {
        v22 = 0;
        if (v11 >= 2 && v21 == v11)
        {
          v22 = *(*(a1 + 80) + 20);
        }
      }

      else
      {
        v22 = *(v72 + 1);
      }

      if (*v72)
      {
        v23 = v72;
      }

      else
      {
        v23 = v20;
      }

      v24 = *(v23 + 2);
      if (v23[4] == 1)
      {
        v25 = *(v23 + 3);
        v26 = *(v23 + 4);
        v27 = atan2f(*(v23 + 2), v25) * 57.296;
        v28 = hypotf(v24, v25);
        v29 = atan2f(v26, v28) * 57.296;
        v30 = hypotf(v28, v26);
      }

      else
      {
        v27 = -v24;
        v29 = *(v23 + 3);
        v30 = *(v23 + 4);
      }

      AUSM::Metadata::PImpl::setScheduledParameter(a1, 0, v10, v22 + v13, v27, 0);
      AUSM::Metadata::PImpl::setScheduledParameter(a1, 1u, v10, v22 + v13, v29, 0);
      AUSM::Metadata::PImpl::setScheduledParameter(a1, 2u, v10, v22 + v13, v30, 0);
      if (v23[20] == 1)
      {
        if (v23[24] == 1)
        {
          AUSM::Metadata::PImpl::setScheduledParameter(a1, 0x22u, v10, v22 + v13, *(v23 + 7), 0);
        }

        if (v23[32] == 1)
        {
          AUSM::Metadata::PImpl::setScheduledParameter(a1, 0x19u, v10, v22 + v13, *(v23 + 9), 0);
          AUSM::Metadata::PImpl::setScheduledParameter(a1, 0x1Au, v10, v22 + v13, *(v23 + 10), 0);
          AUSM::Metadata::PImpl::setScheduledParameter(a1, 0x1Bu, v10, v22 + v13, *(v23 + 11), 0);
        }

        if (v23[48] == 1)
        {
          v32 = *(v23 + 13);
          if ((v23[49] & 1) == 0)
          {
            if (v32 < 1.1755e-38)
            {
              v32 = 1.1755e-38;
            }

            v32 = log10f(v32) * 20.0;
          }

          AUSM::Metadata::PImpl::setScheduledParameter(a1, 3u, v10, v22 + v13, v32, 0);
        }

        if (v23[56] == 1)
        {
          AUSM::Metadata::PImpl::setScheduledParameter(a1, 0x21u, v10, v22 + v13, *(v23 + 15), 0);
        }

        LOBYTE(v31) = v23[64];
        AUSM::Metadata::PImpl::setScheduledParameter(a1, 0x20u, v10, v22 + v13, v31, 0);
        if (v23[72] == 1)
        {
          AUSM::Metadata::PImpl::setScheduledParameter(a1, 0x1Cu, v10, v22 + v13, *(v23 + 19), 0);
          if (v23[4])
          {
            v33 = 30;
          }

          else
          {
            v33 = 29;
          }

          AUSM::Metadata::PImpl::setScheduledParameter(a1, v33, v10, v22 + v13, *(v23 + 22), 0);
        }

        if (v23[95])
        {
          v34 = 1.0;
        }

        else
        {
          v34 = 0.0;
        }

        AUSM::Metadata::PImpl::setScheduledParameter(a1, 0x1Fu, v10, v22 + v13, v34, 0);
        v35 = *(v23 + 12);
        if (v35)
        {
          if ((v35 & 0x100) != 0)
          {
            v36 = 1.0;
          }

          else
          {
            v36 = 0.0;
          }

          AUSM::Metadata::PImpl::setScheduledParameter(a1, 0x27u, v10, v22 + v13, v36, 0);
        }

        if (v23[104] == 1)
        {
          if ((v23[105] & 1) == 0)
          {
            v74 = 0;
            v75 = 0;
            v76 = 0;
            if (v23[106])
            {
              v37 = 0;
              v70 = v23 + 140;
              v69 = v23 + 122;
              do
              {
                if (v23[v37 + 107] == 1)
                {
                  AUSM::ExclusionZone::getPreset(v69[v37], &v74);
                }

                else
                {
                  v39 = &v70[24 * v37];
                  if (v23[4] == 1)
                  {
                    *buf = 1;
                    *v78 = *v39;
                    *&v78[16] = v39[1].i64[0];
                  }

                  else
                  {
                    *buf = 0;
                    *v78 = vextq_s8(*v39, *v39, 8uLL);
                  }

                  std::vector<AUSM::ExclusionZone>::push_back[abi:ne200100](&v74, buf);
                }

                v40 = v74;
                if (v74 == v75)
                {
                  goto LABEL_79;
                }

                v41 = 0;
                v42 = v74;
                do
                {
                  v44 = *v42;
                  v42 += 7;
                  v43 = v44;
                  v45 = v41 + 5;
                  if (v44)
                  {
                    v45 = v41;
                  }

                  if (v43 == 1)
                  {
                    v41 += 7;
                  }

                  else
                  {
                    v41 = v45;
                  }
                }

                while (v42 != v75);
                if (!v41)
                {
LABEL_79:
                  v41 = 0;
                }

                MEMORY[0x1EEE9AC00](v38);
                v47 = &v64 - v46;
                AUSM::ExclusionZone::arrayFromZones(v40, v48, &v64 - v46);
                v49 = AUSpatialMixerV2::SetAPACProperty(*(a1 + 40), 3226, 1, v10, v47, (4 * v41));
                if (v49)
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v50 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                  {
                    v53 = v66;
                    if (*(a1 + 71) < 0)
                    {
                      v53 = *v66;
                    }

                    *buf = v65.n128_u32[0];
                    *v78 = v53;
                    *&v78[8] = 2080;
                    *&v78[10] = "ParseDynamicObjectMetadata";
                    *&v78[18] = 1024;
                    *&v78[20] = v10;
                    *&v78[24] = 1024;
                    *&v78[26] = v49;
                    _os_log_error_impl(&dword_1DDB85000, v50, OS_LOG_TYPE_ERROR, "[%s|%s] Could not set exclusion zone array on input %u, err = %d", buf, 0x22u);
                  }
                }

                v73 = v49 == 0;
                v51 = AUSpatialMixerV2::SetAPACProperty(*(a1 + 40), 3224, 1, v10, &v73, 4);
                if (v51)
                {
                  if (getAUSMV2Log(void)::onceToken != -1)
                  {
                    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
                  }

                  v52 = getAUSMV2Log(void)::gLog;
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                  {
                    v54 = v66;
                    if (*(a1 + 71) < 0)
                    {
                      v54 = *v66;
                    }

                    v55 = "enable";
                    if (!v73)
                    {
                      v55 = "disable";
                    }

                    *buf = v64.n128_u32[0];
                    *v78 = v54;
                    *&v78[8] = 2080;
                    *&v78[10] = "ParseDynamicObjectMetadata";
                    *&v78[18] = 2080;
                    *&v78[20] = v55;
                    *&v78[28] = 1024;
                    *v79 = v10;
                    *&v79[4] = 1024;
                    v80[0] = v51;
                    _os_log_error_impl(&dword_1DDB85000, v52, OS_LOG_TYPE_ERROR, "[%s|%s] Could not %s exclusion zone on input %u, err = %d", buf, 0x2Cu);
                  }
                }

                ++v37;
              }

              while (v37 < v23[106]);
              if (v40)
              {
                operator delete(v40);
              }
            }
          }
        }

        else
        {
          LODWORD(v74) = 0;
          v56 = AUSpatialMixerV2::SetAPACProperty(*(a1 + 40), 3224, 1, v10, &v74, 4);
          if (v56)
          {
            if (getAUSMV2Log(void)::onceToken != -1)
            {
              dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
            }

            v57 = getAUSMV2Log(void)::gLog;
            if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
            {
              v58 = v66;
              if (*(a1 + 71) < 0)
              {
                v58 = *v66;
              }

              *buf = v65.n128_u32[0];
              *v78 = v58;
              *&v78[8] = 2080;
              *&v78[10] = "ParseDynamicObjectMetadata";
              *&v78[18] = 1024;
              *&v78[20] = v10;
              *&v78[24] = 1024;
              *&v78[26] = v56;
              _os_log_error_impl(&dword_1DDB85000, v57, OS_LOG_TYPE_ERROR, "[%s|%s] Could not disable exclusion zone for input %u, err = %d", buf, 0x22u);
            }
          }
        }
      }

      v11 = v68[1];
      v19 = v71;
    }

    while (v71 < v11);
  }
}

void sub_1DDF6718C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 232);
  if (v3)
  {
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSM::DynamicSpatializer::ERSpatializerProxy::setDecorrelationAmount(AUSM::DynamicSpatializer::ERSpatializerProxy **this, float a2)
{
  result = AUSM::DynamicSpatializer::ERSpatializerProxy::getParentERSpatializer(this[1]);
  if (result)
  {
    v5 = *(*result + 640);
    v4.n128_f32[0] = a2;

    return v5(v4);
  }

  return result;
}

uint64_t AUSM::DynamicSpatializer::ERSpatializerProxy::getParentERSpatializer(AUSM::DynamicSpatializer::ERSpatializerProxy *this)
{
  if (*(this + 107) == 1 && (v1 = atomic_load(this + 104), (v1 & 1) == 0))
  {
    v4 = this + 8;
  }

  else
  {
    v3 = *(this + 2);
    v2 = this + 16;
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v4 = v2 - 8;
    }
  }

  v5 = *v4;
  if ((*(**v4 + 344))(*v4))
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t AUSM::DynamicSpatializer::ERSpatializerProxy::setDecorrelationCutoff(AUSM::DynamicSpatializer::ERSpatializerProxy **this, float a2)
{
  result = AUSM::DynamicSpatializer::ERSpatializerProxy::getParentERSpatializer(this[1]);
  if (result)
  {
    v5 = *(*result + 632);
    v4.n128_f32[0] = a2;

    return v5(v4);
  }

  return result;
}

uint64_t AUSM::DynamicSpatializer::ERSpatializerProxy::setEnableDistanceAttenuation(AUSM::DynamicSpatializer::ERSpatializerProxy **this)
{
  result = AUSM::DynamicSpatializer::ERSpatializerProxy::getParentERSpatializer(this[1]);
  if (result)
  {
    v2 = *(*result + 624);

    return v2();
  }

  return result;
}

uint64_t AUSM::DynamicSpatializer::ERSpatializerProxy::setMinDistanceGain(AUSM::DynamicSpatializer::ERSpatializerProxy **this, float a2)
{
  result = AUSM::DynamicSpatializer::ERSpatializerProxy::getParentERSpatializer(this[1]);
  if (result)
  {
    v5 = *(*result + 616);
    v4.n128_f32[0] = a2;

    return v5(v4);
  }

  return result;
}

uint64_t AUSM::DynamicSpatializer::ERSpatializerProxy::setAttenuationDistanceFactor(AUSM::DynamicSpatializer::ERSpatializerProxy **this, float a2)
{
  result = AUSM::DynamicSpatializer::ERSpatializerProxy::getParentERSpatializer(this[1]);
  if (result)
  {
    v5 = *(*result + 608);
    v4.n128_f32[0] = a2;

    return v5(v4);
  }

  return result;
}

uint64_t AUSM::DynamicSpatializer::ERSpatializerProxy::setERGainModifier(AUSM::DynamicSpatializer::ERSpatializerProxy **this, float a2)
{
  result = AUSM::DynamicSpatializer::ERSpatializerProxy::getParentERSpatializer(this[1]);
  if (result)
  {
    v5 = *(*result + 584);
    v4.n128_f32[0] = a2;

    return v5(v4);
  }

  return result;
}

uint64_t AUSM::DynamicSpatializer::ERSpatializerProxy::setDirectivityAttributes(AUSM::DynamicSpatializer::ERSpatializerProxy **this, const IR::IRDataAttributes *a2)
{
  result = AUSM::DynamicSpatializer::ERSpatializerProxy::getParentERSpatializer(this[1]);
  if (result)
  {
    v3 = *(*result + 576);

    return v3();
  }

  return result;
}

uint64_t AUSM::DynamicSpatializer::ERSpatializerProxy::setHRIRAttributes(AUSM::DynamicSpatializer::ERSpatializerProxy **this, const IR::IRDataAttributes *a2)
{
  result = AUSM::DynamicSpatializer::ERSpatializerProxy::getParentERSpatializer(this[1]);
  if (result)
  {
    v3 = *(*result + 568);

    return v3();
  }

  return result;
}

uint64_t AUSM::DynamicSpatializer::ERSpatializerProxy::setMaxReflectionIRTaps(AUSM::DynamicSpatializer::ERSpatializerProxy **this)
{
  result = AUSM::DynamicSpatializer::ERSpatializerProxy::getParentERSpatializer(this[1]);
  if (result)
  {
    v2 = *(*result + 544);

    return v2();
  }

  return result;
}

uint64_t AUSM::DynamicSpatializer::ERSpatializerProxy::setMaxReflections(AUSM::DynamicSpatializer::ERSpatializerProxy **this)
{
  result = AUSM::DynamicSpatializer::ERSpatializerProxy::getParentERSpatializer(this[1]);
  if (result)
  {
    v2 = *(*result + 520);

    return v2();
  }

  return result;
}

uint64_t AUSM::DynamicSpatializer::ERSpatializerProxy::setWallsSpecularAttenuation(AUSM::DynamicSpatializer::ERSpatializerProxy **this, float a2)
{
  result = AUSM::DynamicSpatializer::ERSpatializerProxy::getParentERSpatializer(this[1]);
  if (result)
  {
    v5 = *(*result + 512);
    v4.n128_f32[0] = a2;

    return v5(v4);
  }

  return result;
}

uint64_t AUSM::DynamicSpatializer::ERSpatializerProxy::setWallsScatterCutoff(AUSM::DynamicSpatializer::ERSpatializerProxy **this, float a2)
{
  result = AUSM::DynamicSpatializer::ERSpatializerProxy::getParentERSpatializer(this[1]);
  if (result)
  {
    v5 = *(*result + 504);
    v4.n128_f32[0] = a2;

    return v5(v4);
  }

  return result;
}

uint64_t AUSM::DynamicSpatializer::ERSpatializerProxy::setWallsScatter(AUSM::DynamicSpatializer::ERSpatializerProxy **this, float a2)
{
  result = AUSM::DynamicSpatializer::ERSpatializerProxy::getParentERSpatializer(this[1]);
  if (result)
  {
    v5 = *(*result + 496);
    v4.n128_f32[0] = a2;

    return v5(v4);
  }

  return result;
}

uint64_t AUSM::DynamicSpatializer::ERSpatializerProxy::getRoomPreset@<X0>(AUSM::DynamicSpatializer::ERSpatializerProxy **this@<X0>, void *a2@<X8>)
{
  result = AUSM::DynamicSpatializer::ERSpatializerProxy::getParentERSpatializer(this[1]);
  if (result)
  {
    v4 = *(*result + 448);

    return v4();
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t AUSM::DynamicSpatializer::ERSpatializerProxy::setRoomPreset(AUSM::DynamicSpatializer::ERSpatializerProxy **this, const applesauce::CF::DictionaryRef *a2)
{
  result = AUSM::DynamicSpatializer::ERSpatializerProxy::getParentERSpatializer(this[1]);
  if (result)
  {
    v3 = *(*result + 440);

    return v3();
  }

  return result;
}

uint64_t AUSM::DynamicSpatializer::ERSpatializerProxy::setWallsSubbandGains(uint64_t a1)
{
  result = AUSM::DynamicSpatializer::ERSpatializerProxy::getParentERSpatializer(*(a1 + 8));
  if (result)
  {
    v2 = *(*result + 416);

    return v2();
  }

  return result;
}

uint64_t AUSM::DynamicSpatializer::ERSpatializerProxy::setRoomDimensions(uint64_t a1, __n128 a2)
{
  result = AUSM::DynamicSpatializer::ERSpatializerProxy::getParentERSpatializer(*(a1 + 8));
  if (result)
  {
    v3 = *(*result + 384);

    return v3(a2);
  }

  return result;
}

uint64_t AUSM::DynamicSpatializer::ERSpatializerProxy::setRoomRotation(AUSM::DynamicSpatializer::ERSpatializerProxy **this, __n128 a2)
{
  result = AUSM::DynamicSpatializer::ERSpatializerProxy::getParentERSpatializer(this[1]);
  if (result)
  {
    v3 = *(*result + 376);

    return v3(a2);
  }

  return result;
}

uint64_t AUSM::DynamicSpatializer::ERSpatializerProxy::setRoomPosition(uint64_t a1, __n128 a2)
{
  result = AUSM::DynamicSpatializer::ERSpatializerProxy::getParentERSpatializer(*(a1 + 8));
  if (result)
  {
    v3 = *(*result + 368);

    return v3(a2);
  }

  return result;
}

void AUSM::DynamicSpatializer::DynamicSpatializer(uint64_t a1, uint64_t a2, int a3)
{
  *a1 = a3;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  AUSM::Messenger::instance(a1);
  AUSM::Messenger::get((a1 + 56));
  *(a1 + 80) = 0;
  *(a1 + 72) = a2;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 105) = 16777217;
  *(a1 + 109) = 0;
  *(a1 + 112) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 116) = _D0;
  *(a1 + 132) = 0;
  *(a1 + 124) = 0;
  *(a1 + 140) = 0xFFFFFFFFLL;
  caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((a1 + 148));
  caulk::pooled_semaphore_mutex::pooled_semaphore_mutex((a1 + 152));
  _ZNSt3__115allocate_sharedB8ne200100I17SpatializerParamsNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
}

void sub_1DDF67E48(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    v1[11] = v5;
    operator delete(v5);
  }

  v6 = v1[8];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  v7 = v1[6];
  v1[6] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = v1[5];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v9 = v1[3];
  v1[3] = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = v1[2];
  v1[2] = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *v2;
  *v2 = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AUSM::DynamicSpatializer::setSpatializer(uint64_t a1, void *a2)
{
  caulk::pooled_semaphore_mutex::_lock((a1 + 148));
  v4 = *(a1 + 16);
  *(a1 + 16) = *a2;
  *a2 = v4;
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_22:
    atomic_store(1u, (a1 + 104));
    return caulk::pooled_semaphore_mutex::_unlock((a1 + 148));
  }

  if ((*(v5 + 16) & 1) == 0)
  {
    v7 = *(a1 + 32);
    v6 = *(a1 + 40);
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(v5 + 56);
    *(v5 + 48) = v7;
    *(v5 + 56) = v6;
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    v9 = *(a1 + 8);
    if (v9)
    {
      (*(*v9 + 216))(&cf);
      v10 = cf;
      if (cf)
      {
        v11 = *(a1 + 16);
        CFRetain(cf);
        v16 = v10;
        (*(*v11 + 224))(v11, &v16);
        if (v16)
        {
          CFRelease(v16);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      (*(**(a1 + 8) + 232))(&cf);
      v12 = cf;
      if (cf)
      {
        v13 = *(a1 + 16);
        CFRetain(cf);
        v15 = v12;
        (*(*v13 + 240))(v13, &v15);
        if (v15)
        {
          CFRelease(v15);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      *(*(a1 + 16) + 24) = *(*(a1 + 8) + 24);
    }

    if (*(a1 + 107) == 1 && ((*(**(a1 + 16) + 248))(*(a1 + 16)) & 1) == 0)
    {
      (*(**(a1 + 16) + 264))(*(a1 + 16), *(a1 + 132), *(a1 + 136), *(a1 + 128));
    }

    goto LABEL_22;
  }

  return caulk::pooled_semaphore_mutex::_unlock((a1 + 148));
}

void sub_1DDF68184(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  applesauce::CF::DictionaryRef::~DictionaryRef(va1);
  caulk::pooled_semaphore_mutex::_unlock((v2 + 148));
  _Unwind_Resume(a1);
}

uint64_t AUSM::DynamicSpatializer::initialize(AUSM::DynamicSpatializer *this, float a2, int a3, unsigned int a4)
{
  std::lock[abi:ne200100]<caulk::pooled_semaphore_mutex,caulk::pooled_semaphore_mutex>((this + 148), (this + 152));
  *(this + 107) = 256;
  *(this + 32) = a2;
  *(this + 33) = a3;
  *(this + 34) = a4;
  atomic_store(0xFFFFFFFF, this + 35);
  *(this + 15) = 1065353216;
  *(this + 14) = 0x3B00000000000200;
  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  std::vector<float>::resize(this + 10, a4);
  v9 = atomic_load(this + 104);
  if (v9)
  {
    v10 = *(this + 1);
    *(this + 1) = *(this + 2);
    *(this + 2) = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  v11 = *(this + 1);
  if (!v11 || (v12 = (*(*v11 + 264))(v11, *(this + 33), *(this + 34), *(this + 32)), !v12))
  {
    v12 = 0;
    *(this + 107) = 1;
    atomic_store(0, this + 104);
  }

  caulk::pooled_semaphore_mutex::_unlock((this + 148));
  caulk::pooled_semaphore_mutex::_unlock((this + 152));
  return v12;
}

void sub_1DDF6832C(_Unwind_Exception *a1)
{
  caulk::pooled_semaphore_mutex::_unlock((v1 + 148));
  caulk::pooled_semaphore_mutex::_unlock((v1 + 152));
  _Unwind_Resume(a1);
}

uint64_t AUSM::DynamicSpatializer::reset(AUSM::DynamicSpatializer *this)
{
  std::lock[abi:ne200100]<caulk::pooled_semaphore_mutex,caulk::pooled_semaphore_mutex>((this + 148), (this + 152));
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 280))(v2);
  }

  *(this + 108) = 1;
  caulk::pooled_semaphore_mutex::_unlock((this + 148));

  return caulk::pooled_semaphore_mutex::_unlock((this + 152));
}

void sub_1DDF683D0(_Unwind_Exception *a1)
{
  caulk::pooled_semaphore_mutex::_unlock((v1 + 148));
  caulk::pooled_semaphore_mutex::_unlock((v1 + 152));
  _Unwind_Resume(a1);
}

void AUSM::DynamicSpatializer::updateParameters(AUSM::DynamicSpatializer *this, char a2)
{
  if ((a2 & 1) == 0)
  {
    atomic_store(1u, this + 106);
    return;
  }

  atomic_store(0, this + 106);
  v3 = *(this + 9);
  v4 = 48;
  if (*this != 2)
  {
    v4 = 0;
  }

  v5 = 32;
  if (*this != 1)
  {
    v5 = v4;
  }

  v6 = *(v3 + v5 + 576);
  LODWORD(v7) = HIDWORD(*(v3 + v5 + 576));
  LODWORD(v8) = *(v3 + v5 + 584);
  v9 = fmaxf(fabsf(*&v6), fmaxf(fabsf(v7), fabsf(v8)));
  if (v9 <= 1.8447e19)
  {
    v11 = 1.0;
    if (v9 >= 5.421e-20)
    {
      goto LABEL_12;
    }

    v10 = 1769996288;
  }

  else
  {
    v10 = 360710144;
  }

  v11 = *&v10;
LABEL_12:
  v49 = *&v6;
  v12 = hypotf(*&v6, v7);
  v13 = atan2f(-v8, v12) * 57.296;
  v14 = atan2f(v7, v49) * 57.296;
  v15 = sqrtf((((v7 * v11) * (v7 * v11)) + ((v49 * v11) * (v49 * v11))) + ((v8 * v11) * (v8 * v11)));
  v16 = *v3;
  v17 = -v14;
  if (!*(*v3 + 179))
  {
    v17 = v14;
  }

  v18 = *(this + 4);
  v19 = *v18 != v17;
  if (*v18 != v17)
  {
    *v18 = v17;
  }

  v20 = v15 / v11;
  if (*(v18 + 4) != v13)
  {
    *(v18 + 4) = v13;
    v19 = 1;
  }

  if (*(v18 + 8) != v20)
  {
    *(v18 + 8) = v20;
    v19 = 1;
  }

  v21 = v3[161];
  if (*(v18 + 12) != v21)
  {
    *(v18 + 12) = v21;
    v19 = 1;
  }

  v22 = v3 + 160;
  v23 = v3[162];
  if (*(v18 + 16) != v23)
  {
    *(v18 + 16) = v23;
    v19 = 1;
  }

  if (*(v18 + 20) != *v22)
  {
    *(v18 + 20) = *v22;
    v19 = 1;
  }

  Parameter = ausdk::AUElement::GetParameter(*v16, 0x21u);
  if (*(v18 + 52) != Parameter)
  {
    *(v18 + 52) = Parameter;
    v19 = 1;
  }

  v25 = *(this + 4);
  v26 = **(this + 9);
  if (*(v26 + 176) == 1)
  {
    v27 = *(v26 + 177) ^ 1;
  }

  else
  {
    v27 = 0;
  }

  v28 = v27 & 1;
  if (*(v25 + 81) != v28)
  {
    *(v25 + 81) = v28;
    v19 = 1;
  }

  v29 = *(v26 + 64);
  if (*(v25 + 128) != v29)
  {
    *(v25 + 128) = v29;
    v19 = 1;
  }

  v30 = v3[175];
  if (*(v25 + 56) != v30)
  {
    *(v25 + 56) = v30;
    v19 = 1;
  }

  v31 = ausdk::AUElement::GetParameter(*v26, 0x28u);
  if (*(v25 + 60) != v31)
  {
    *(v25 + 60) = v31;
    v19 = 1;
  }

  v32 = *(this + 4);
  v33 = *(this + 9);
  v34 = v33->i64[1];
  v35 = *(v34 + 556);
  if (*(v32 + 132) != v35)
  {
    *(v32 + 132) = v35;
    v19 = 1;
  }

  v36 = v33->i64[0];
  v37 = *(v33->i64[0] + 200);
  if (*(v32 + 64) != v37)
  {
    *(v32 + 64) = v37;
    v19 = 1;
  }

  v38 = *(v36 + 204);
  if (*(v32 + 68) != v38)
  {
    *(v32 + 68) = v38;
    v19 = 1;
  }

  v40 = v33[10];
  f32 = v33[10].f32;
  if ((vminv_u16(vmovn_s32(vceqq_f32(*(v32 + 32), v40))) & 1) == 0)
  {
    *(v32 + 32) = *f32;
    v32 = *(this + 4);
    v34 = *(*(this + 9) + 8);
    v19 = 1;
  }

  v41 = *(v34 + 512);
  v42 = *(v32 + 96);
  if (*v42.i32 != *v41.i32 || (v43 = vceq_f32(vext_s8(*v42.i8, *&vextq_s8(v42, v42, 8uLL), 4uLL), vext_s8(*v41.i8, *&vextq_s8(v41, v41, 8uLL), 4uLL)), (v43.i8[0] & 1) == 0) || (v43.i8[4] & 1) == 0)
  {
    *(v32 + 96) = v41;
    v47 = *(this + 4);
    v48 = v47[7];
    v44 = v47 + 7;
    v46 = *(*(*(this + 9) + 8) + 528);
    if (vminv_u16(vmovn_s32(vceqq_f32(v48, v46))))
    {
      goto LABEL_55;
    }

LABEL_54:
    *v44 = v46;
    goto LABEL_55;
  }

  v45 = *(v32 + 112);
  v44 = (v32 + 112);
  v46 = *(v34 + 528);
  if ((vminv_u16(vmovn_s32(vceqq_f32(v45, v46))) & 1) == 0)
  {
    goto LABEL_54;
  }

  if (v19)
  {
LABEL_55:
    *(this + 109) = 1;
  }
}

uint64_t AUSM::DynamicSpatializer::processAccumulating(uint64_t a1, const float *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, float a9, unsigned int a10, uint64_t a11)
{
  if (*(a1 + 107) != 1)
  {
    return 4294956429;
  }

  v20 = atomic_load((a1 + 104));
  if (v20)
  {
    v21 = atomic_load((a1 + 140));
    if (v21 == -1)
    {
      if (caulk::pooled_semaphore_mutex::try_lock((a1 + 148)))
      {
        v22 = *(a1 + 16);
        if (v22)
        {
          if (*(a1 + 108) == 1)
          {
            atomic_store(0xFFFFFFFF, (a1 + 140));
            *(a1 + 120) = 1065353216;
            v23 = *(a1 + 24);
            if (v23)
            {
              v24 = *(a1 + 56);
              if (v24)
              {
                *(a1 + 24) = 0;
                __Start = v23;
                caulk::concurrent::messenger::enqueue_call<AUSM::DynamicSpatializer::processAccumulating(float const*,float * const*,unsigned int,std::optional<std::reference_wrapper<AUSM::OutputBuffers>>,float * const*,unsigned int,unsigned int,float,IR::ComplexDataCircBuffer *)::$_0>(v24, &__Start);
                if (__Start)
                {
                  (*(*__Start + 8))(__Start);
                }

                v22 = *(a1 + 16);
              }
            }
          }

          else
          {
            v26 = *(a1 + 24);
            *(a1 + 24) = *(a1 + 8);
            *(a1 + 8) = v26;
            atomic_store(0, (a1 + 140));
            *(a1 + 120) = 0x3F80000000000000;
          }

          v27 = *(a1 + 8);
          *(a1 + 8) = v22;
          *(a1 + 16) = v27;
          atomic_store(0, (a1 + 104));
          v28 = *(a1 + 56);
          if (v28)
          {
            *(a1 + 16) = 0;
            __Start = v27;
            caulk::concurrent::messenger::enqueue_call<AUSM::DynamicSpatializer::processAccumulating(float const*,float * const*,unsigned int,std::optional<std::reference_wrapper<AUSM::OutputBuffers>>,float * const*,unsigned int,unsigned int,float,IR::ComplexDataCircBuffer *)::$_1>(v28, &__Start);
            if (__Start)
            {
              (*(*__Start + 8))(__Start);
            }
          }
        }

        caulk::pooled_semaphore_mutex::_unlock((a1 + 148));
      }
    }
  }

  result = caulk::pooled_semaphore_mutex::try_lock((a1 + 152));
  if (result)
  {
    v29 = atomic_load((a1 + 106));
    if (v29)
    {
      AUSM::DynamicSpatializer::updateParameters(a1, 1);
    }

    v30 = atomic_load((a1 + 105));
    *(*(a1 + 32) + 82) = v30 & 1;
    v65 = a5;
    if (a6)
    {
      v31 = *(a5 + 24);
      v66 = *(a5 + 52);
    }

    else
    {
      v31 = 0;
      v66 = 0;
    }

    v67 = 0;
    v32 = (a1 + 8);
    v33 = *(**(a1 + 72) + 80);
    if (*(a1 + 8))
    {
      v34 = *(a1 + 120);
      v35 = a2;
      if (v34 < 1.0)
      {
        v63 = v31;
        if (v34 < 0.0)
        {
          *(a1 + 120) = 0;
          v34 = 0.0;
        }

        v36 = *(a1 + 116);
        v37 = ((1.0 - v34) / v36);
        if (v37 >= a10)
        {
          v38 = a10;
        }

        else
        {
          v38 = v37;
        }

        v39 = *(a1 + 80);
        v40 = (*(a1 + 88) - v39) >> 2;
        *&__Start = v34;
        __Step = v36;
        if (v40 >= v38)
        {
          v41 = v38;
        }

        else
        {
          v41 = v40;
        }

        vDSP_vrampmul(a2, 1, &__Start, &__Step, v39, 1, v41);
        *(a1 + 120) = __Start;
        if (v37 < a10)
        {
          memcpy((*(a1 + 80) + 4 * v38), &a2[v38], 4 * (a10 - v38));
        }

        v35 = *(a1 + 80);
        v31 = v63;
      }

      AUSM::DynamicSpatializer::preFlight(a1, (a1 + 8));
      if (v31)
      {
        (*(**v32 + 272))(*v32, v31, v66, &v67 + 1, v33);
      }

      (*(**v32 + 296))(*v32, v35, a3, a4, a7, a8, a10, a11, a9);
    }

    v42 = (a1 + 24);
    if (!*(a1 + 24) || (v43 = atomic_load((a1 + 140)), (v43 & 0x80000000) != 0))
    {
      atomic_store(0xFFFFFFFF, (a1 + 140));
LABEL_64:
      if (v31 && ((v67 & 0x100) != 0 || v67 == 1))
      {
        *(v65 + 48) = 0;
      }

      *(a1 + 108) = 0;
      caulk::pooled_semaphore_mutex::_unlock((a1 + 152));
      return 0;
    }

    v44 = *(a1 + 124);
    if (v44 <= 0.0)
    {
      v52 = *(a1 + 80);
      v53 = 4 * a10;
    }

    else
    {
      v64 = v31;
      if (v44 > 1.0)
      {
        *(a1 + 124) = 1065353216;
        v44 = 1.0;
      }

      v45 = *(a1 + 116);
      v46 = (v44 / v45);
      if (v46 >= a10)
      {
        v47 = a10;
      }

      else
      {
        v47 = v46;
      }

      v48 = *(a1 + 80);
      v49 = (*(a1 + 88) - v48) >> 2;
      *&__Start = v44;
      __Step = -v45;
      if (v49 >= v47)
      {
        v50 = v47;
      }

      else
      {
        v50 = v49;
      }

      vDSP_vrampmul(a2, 1, &__Start, &__Step, v48, 1, v50);
      *(a1 + 124) = __Start;
      v51 = v46 >= a10;
      v31 = v64;
      if (v51)
      {
LABEL_56:
        AUSM::DynamicSpatializer::preFlight(a1, (a1 + 24));
        if (v31)
        {
          (*(**v42 + 272))(*v42, v31, v66, &v67, v33);
        }

        (*(**(a1 + 24) + 296))(*(a1 + 24), *(a1 + 80), a3, a4, a7, a8, a10, a11, a9);
        v54 = (a1 + 140);
        v55 = atomic_load((a1 + 140));
        v56 = __OFADD__(v55, a10);
        v57 = v55 + a10;
        v58 = ((v55 | a10) >> 31) ^ 0x7FFFFFFF;
        if (!v56)
        {
          v58 = v57;
        }

        atomic_store(v58, v54);
        v59 = atomic_load(v54);
        if (v59 >= *(a1 + 112) + (*(**(a1 + 24) + 336))(*(a1 + 24)))
        {
          atomic_store(0xFFFFFFFF, (a1 + 140));
          v60 = *(a1 + 56);
          if (v60)
          {
            v61 = *v42;
            *v42 = 0;
            result = *MEMORY[0x1E69E3C08];
            if (!*MEMORY[0x1E69E3C08])
            {
              __break(1u);
              return result;
            }

            v62 = caulk::rt_safe_memory_resource::rt_allocate(result);
            *(v62 + 16) = 0;
            *(v62 + 24) = v61;
            *v62 = &unk_1F592F3E8;
            *(v62 + 8) = 0;
            caulk::concurrent::messenger::enqueue(v60, v62);
          }
        }

        goto LABEL_64;
      }

      v52 = (*(a1 + 80) + 4 * v47);
      v53 = 4 * (a10 - v47);
    }

    bzero(v52, v53);
    goto LABEL_56;
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<AUSM::DynamicSpatializer::processAccumulating(float const*,float * const*,unsigned int,std::optional<std::reference_wrapper<AUSM::OutputBuffers>>,float * const*,unsigned int,unsigned int,float,IR::ComplexDataCircBuffer *)::$_0>(caulk::concurrent::messenger *a1, uint64_t *a2)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v5 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    v6 = *a2;
    *a2 = 0;
    *(v5 + 24) = v6;
    *v5 = &unk_1F592F348;

    return caulk::concurrent::messenger::enqueue(a1, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

caulk::rt_safe_memory_resource *caulk::concurrent::messenger::enqueue_call<AUSM::DynamicSpatializer::processAccumulating(float const*,float * const*,unsigned int,std::optional<std::reference_wrapper<AUSM::OutputBuffers>>,float * const*,unsigned int,unsigned int,float,IR::ComplexDataCircBuffer *)::$_1>(caulk::concurrent::messenger *a1, uint64_t *a2)
{
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {
    v5 = caulk::rt_safe_memory_resource::rt_allocate(result);
    *(v5 + 8) = 0;
    *(v5 + 16) = 0;
    v6 = *a2;
    *a2 = 0;
    *(v5 + 24) = v6;
    *v5 = &unk_1F592F398;

    return caulk::concurrent::messenger::enqueue(a1, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AUSM::DynamicSpatializer::preFlight(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 109);
  v4 = *a2;
  if (v3 == 1)
  {
    if ((*(*v4 + 56))(v4) != 0.0)
    {
      (*(**a2 + 64))(**(a1 + 32));
      (*(**a2 + 72))(*(*(a1 + 32) + 4));
    }

    v4 = *a2;
    *(*a2 + 288) = 1;
  }

  v6 = *(*v4 + 208);

  return v6();
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUSM::DynamicSpatializer::processAccumulating(float const*,float * const*,unsigned int,std::optional<std::reference_wrapper<AUSM::OutputBuffers>>,float * const*,unsigned int,unsigned int,float,IR::ComplexDataCircBuffer *)::$_2>::perform(caulk::concurrent::message *this)
{
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v2 = *(this + 3);
  }

  *this = &unk_1F592F410;
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::concurrent::message::~message(this);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, this);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t caulk::concurrent::details::message_call<AUSM::DynamicSpatializer::processAccumulating(float const*,float * const*,unsigned int,std::optional<std::reference_wrapper<AUSM::OutputBuffers>>,float * const*,unsigned int,unsigned int,float,IR::ComplexDataCircBuffer *)::$_2>::perform(uint64_t a1)
{
  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void caulk::concurrent::details::message_call<AUSM::DynamicSpatializer::processAccumulating(float const*,float * const*,unsigned int,std::optional<std::reference_wrapper<AUSM::OutputBuffers>>,float * const*,unsigned int,unsigned int,float,IR::ComplexDataCircBuffer *)::$_2>::~message_call(caulk::concurrent::message *this)
{
  *this = &unk_1F592F410;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592F410;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::concurrent::message::~message(this);
}

void caulk::concurrent::details::rt_message_call<AUSM::DynamicSpatializer::processAccumulating(float const*,float * const*,unsigned int,std::optional<std::reference_wrapper<AUSM::OutputBuffers>>,float * const*,unsigned int,unsigned int,float,IR::ComplexDataCircBuffer *)::$_2>::~rt_message_call(caulk::concurrent::message *this)
{
  *this = &unk_1F592F410;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592F410;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::concurrent::message::~message(this);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUSM::DynamicSpatializer::processAccumulating(float const*,float * const*,unsigned int,std::optional<std::reference_wrapper<AUSM::OutputBuffers>>,float * const*,unsigned int,unsigned int,float,IR::ComplexDataCircBuffer *)::$_1>::perform(caulk::concurrent::message *this)
{
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v2 = *(this + 3);
  }

  *this = &unk_1F592F3C0;
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::concurrent::message::~message(this);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, this);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t caulk::concurrent::details::message_call<AUSM::DynamicSpatializer::processAccumulating(float const*,float * const*,unsigned int,std::optional<std::reference_wrapper<AUSM::OutputBuffers>>,float * const*,unsigned int,unsigned int,float,IR::ComplexDataCircBuffer *)::$_1>::perform(uint64_t a1)
{
  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void caulk::concurrent::details::message_call<AUSM::DynamicSpatializer::processAccumulating(float const*,float * const*,unsigned int,std::optional<std::reference_wrapper<AUSM::OutputBuffers>>,float * const*,unsigned int,unsigned int,float,IR::ComplexDataCircBuffer *)::$_1>::~message_call(caulk::concurrent::message *this)
{
  *this = &unk_1F592F3C0;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592F3C0;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::concurrent::message::~message(this);
}

void caulk::concurrent::details::rt_message_call<AUSM::DynamicSpatializer::processAccumulating(float const*,float * const*,unsigned int,std::optional<std::reference_wrapper<AUSM::OutputBuffers>>,float * const*,unsigned int,unsigned int,float,IR::ComplexDataCircBuffer *)::$_1>::~rt_message_call(caulk::concurrent::message *this)
{
  *this = &unk_1F592F3C0;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592F3C0;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::concurrent::message::~message(this);
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUSM::DynamicSpatializer::processAccumulating(float const*,float * const*,unsigned int,std::optional<std::reference_wrapper<AUSM::OutputBuffers>>,float * const*,unsigned int,unsigned int,float,IR::ComplexDataCircBuffer *)::$_0>::perform(caulk::concurrent::message *this)
{
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v2 = *(this + 3);
  }

  *this = &unk_1F592F370;
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::concurrent::message::~message(this);
  result = *MEMORY[0x1E69E3C08];
  if (*MEMORY[0x1E69E3C08])
  {

    return caulk::rt_safe_memory_resource::rt_deallocate(result, this);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t caulk::concurrent::details::message_call<AUSM::DynamicSpatializer::processAccumulating(float const*,float * const*,unsigned int,std::optional<std::reference_wrapper<AUSM::OutputBuffers>>,float * const*,unsigned int,unsigned int,float,IR::ComplexDataCircBuffer *)::$_0>::perform(uint64_t a1)
{
  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void caulk::concurrent::details::message_call<AUSM::DynamicSpatializer::processAccumulating(float const*,float * const*,unsigned int,std::optional<std::reference_wrapper<AUSM::OutputBuffers>>,float * const*,unsigned int,unsigned int,float,IR::ComplexDataCircBuffer *)::$_0>::~message_call(caulk::concurrent::message *this)
{
  *this = &unk_1F592F370;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592F370;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::concurrent::message::~message(this);
}

void caulk::concurrent::details::rt_message_call<AUSM::DynamicSpatializer::processAccumulating(float const*,float * const*,unsigned int,std::optional<std::reference_wrapper<AUSM::OutputBuffers>>,float * const*,unsigned int,unsigned int,float,IR::ComplexDataCircBuffer *)::$_0>::~rt_message_call(caulk::concurrent::message *this)
{
  *this = &unk_1F592F370;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::concurrent::message::~message(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592F370;
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  caulk::concurrent::message::~message(this);
}

uint64_t AUSM::DynamicSpatializer::setInputChannelLabel(AUSM::DynamicSpatializer *this, uint64_t a2)
{
  caulk::pooled_semaphore_mutex::_lock((this + 148));
  if (*(this + 107) == 1 && (v4 = atomic_load(this + 104), (v4 & 1) == 0))
  {
    v5 = this + 8;
  }

  else
  {
    v5 = this + 16;
    if (!*(this + 2))
    {
      v5 = this + 8;
    }
  }

  if (*v5)
  {
    (*(**v5 + 184))(*v5, a2);
  }

  return caulk::pooled_semaphore_mutex::_unlock((this + 148));
}

uint64_t AUSM::DynamicSpatializer::setRenderingFlags(AUSM::DynamicSpatializer *this, int a2)
{
  caulk::pooled_semaphore_mutex::_lock((this + 148));
  if (*(this + 107) == 1 && (v4 = atomic_load(this + 104), (v4 & 1) == 0))
  {
    v5 = this + 8;
  }

  else
  {
    v5 = this + 16;
    if (!*(this + 2))
    {
      v5 = this + 8;
    }
  }

  v6 = *v5;
  if (v6)
  {
    *(v6 + 24) = a2;
  }

  return caulk::pooled_semaphore_mutex::_unlock((this + 148));
}

uint64_t AUSM::DynamicSpatializer::setEnableExclusionZones(AUSM::DynamicSpatializer *this, uint64_t a2)
{
  caulk::pooled_semaphore_mutex::_lock((this + 148));
  if (*(this + 107) == 1 && (v4 = atomic_load(this + 104), (v4 & 1) == 0))
  {
    v5 = this + 8;
  }

  else
  {
    v5 = this + 16;
    if (!*(this + 2))
    {
      v5 = this + 8;
    }
  }

  if (*v5)
  {
    (*(**v5 + 168))(*v5, a2);
  }

  return caulk::pooled_semaphore_mutex::_unlock((this + 148));
}

uint64_t AUSM::DynamicSpatializer::setPropertyDictionary(uint64_t a1, const void **a2)
{
  caulk::pooled_semaphore_mutex::_lock((a1 + 148));
  if (*(a1 + 107) == 1 && (v4 = atomic_load((a1 + 104)), (v4 & 1) == 0))
  {
    v5 = (a1 + 8);
  }

  else
  {
    v5 = (a1 + 16);
    if (!*(a1 + 16))
    {
      v5 = (a1 + 8);
    }
  }

  v6 = *v5;
  if (*v5)
  {
    v7 = *a2;
    if (v7)
    {
      CFRetain(v7);
    }

    cf = v7;
    (*(*v6 + 224))(v6, &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return caulk::pooled_semaphore_mutex::_unlock((a1 + 148));
}

void sub_1DDF69C14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  caulk::pooled_semaphore_mutex::_unlock((v2 + 148));
  _Unwind_Resume(a1);
}

uint64_t AUSM::DynamicSpatializer::propertyDictionarySetValue(uint64_t a1, const void *a2, const void **a3)
{
  caulk::pooled_semaphore_mutex::_lock((a1 + 148));
  if (*(a1 + 107) == 1 && (v6 = atomic_load((a1 + 104)), (v6 & 1) == 0))
  {
    v7 = (a1 + 8);
  }

  else
  {
    v7 = (a1 + 16);
    if (!*(a1 + 16))
    {
      v7 = (a1 + 8);
    }
  }

  v8 = *v7;
  if (*v7)
  {
    v9 = *a3;
    if (v9)
    {
      CFRetain(v9);
      v10 = *(v8 + 32);
      if (v10)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v10);
      }

      else
      {
        MutableCopy = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      }

      v12 = MutableCopy;
      CFDictionarySetValue(MutableCopy, a2, v9);
      if (v12)
      {
        CFRetain(v12);
        v13 = CFGetTypeID(v12);
        if (v13 != CFDictionaryGetTypeID())
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Could not construct");
        }
      }

      v14 = *(v8 + 32);
      *(v8 + 32) = v12;
      if (v14)
      {
        CFRelease(v14);
      }

      atomic_store(1u, (v8 + 290));
      if (v12)
      {
        CFRelease(v12);
      }

      CFRelease(v9);
    }
  }

  return caulk::pooled_semaphore_mutex::_unlock((a1 + 148));
}

void sub_1DDF69DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, const void *a12)
{
  __cxa_free_exception(v13);
  applesauce::CF::ObjectRef<__CFDictionary const*>::~ObjectRef(&a11);
  applesauce::CF::ObjectRef<__CFDictionary *>::~ObjectRef(&a12);
  applesauce::CF::URLRef::~URLRef(&a10);
  caulk::pooled_semaphore_mutex::_unlock((v12 + 148));
  _Unwind_Resume(a1);
}

uint64_t AUSM::DynamicSpatializer::setOptionalFeatureSupportDictionary(uint64_t a1, const void **a2)
{
  caulk::pooled_semaphore_mutex::_lock((a1 + 148));
  if (*(a1 + 107) == 1 && (v4 = atomic_load((a1 + 104)), (v4 & 1) == 0))
  {
    v5 = (a1 + 8);
  }

  else
  {
    v5 = (a1 + 16);
    if (!*(a1 + 16))
    {
      v5 = (a1 + 8);
    }
  }

  v6 = *v5;
  if (*v5)
  {
    v7 = *a2;
    if (v7)
    {
      CFRetain(v7);
    }

    cf = v7;
    (*(*v6 + 240))(v6, &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return caulk::pooled_semaphore_mutex::_unlock((a1 + 148));
}

void sub_1DDF69EF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::DictionaryRef::~DictionaryRef(va);
  caulk::pooled_semaphore_mutex::_unlock((v2 + 148));
  _Unwind_Resume(a1);
}

uint64_t AUSM::DynamicSpatializer::setExclusionZones(uint64_t a1, uint64_t a2)
{
  v4 = caulk::pooled_semaphore_mutex::_lock((a1 + 148));
  if (*(a1 + 107) == 1 && (v5 = atomic_load((a1 + 104)), (v5 & 1) == 0))
  {
    v6 = (a1 + 8);
  }

  else
  {
    v6 = (a1 + 16);
    if (!*(a1 + 16))
    {
      v6 = (a1 + 8);
    }
  }

  v7 = *v6;
  if (*v6)
  {
    v4 = (*(*v7 + 160))(v7, a2);
  }

  if (v7)
  {
    v8 = v4;
  }

  else
  {
    v8 = 4294956429;
  }

  caulk::pooled_semaphore_mutex::_unlock((a1 + 148));
  return v8;
}

uint64_t AUSM::DynamicSpatializer::setBypassCoeffs(AUSM::DynamicSpatializer *this, float *a2, uint64_t a3)
{
  v6 = caulk::pooled_semaphore_mutex::_lock((this + 148));
  if (*(this + 107) == 1 && (v7 = atomic_load(this + 104), (v7 & 1) == 0))
  {
    v8 = this + 8;
  }

  else
  {
    v8 = this + 16;
    if (!*(this + 2))
    {
      v8 = this + 8;
    }
  }

  v9 = *v8;
  if (*v8)
  {
    v6 = (*(*v9 + 48))(v9, a2, a3);
  }

  if (v9)
  {
    v10 = v6;
  }

  else
  {
    v10 = 4294956429;
  }

  caulk::pooled_semaphore_mutex::_unlock((this + 148));
  return v10;
}

uint64_t AUSM::DynamicSpatializer::setIRSource(uint64_t a1, uint64_t *a2)
{
  caulk::pooled_semaphore_mutex::_lock((a1 + 148));
  if (*(a1 + 107) == 1 && (v4 = atomic_load((a1 + 104)), (v4 & 1) == 0))
  {
    v5 = (a1 + 8);
  }

  else
  {
    v5 = (a1 + 16);
    if (!*(a1 + 16))
    {
      v5 = (a1 + 8);
    }
  }

  v6 = *v5;
  if (*v5)
  {
    v7 = a2[1];
    v10 = *a2;
    v11 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v8 = (*(*v6 + 304))(v6, &v10);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else
  {
    v8 = 0;
  }

  caulk::pooled_semaphore_mutex::_unlock((a1 + 148));
  return v8;
}

void sub_1DDF6A188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  caulk::pooled_semaphore_mutex::_unlock((v10 + 148));
  _Unwind_Resume(a1);
}

void sub_1DDF6A380(_Unwind_Exception *a1)
{
  DspLib::AlgorithmBase::~AlgorithmBase(v1);
  MEMORY[0x1E12BD160](v1, v2);
  _Unwind_Resume(a1);
}

void AUVirtualBass::~AUVirtualBass(AUVirtualBass *this)
{
  AUDspLib::~AUDspLib(this);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUVariableEQV2::GetScopeExtended(AUVariableEQV2 *this, int a2)
{
  if (a2 == 4)
  {
    return this + 624;
  }

  else
  {
    return 0;
  }
}

uint64_t AUVariableEQV2::SupportedNumChannels(AUVariableEQV2 *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUVariableEQV2::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUVariableEQV2::GetParameterValueStrings(AUVariableEQV2 *this, int a2, unsigned int a3, const __CFArray **a4)
{
  v7[11] = *MEMORY[0x1E69E9840];
  result = 4294956418;
  if (a2 == 4 && a3 >= 0x3E8 && a3 % 0x3E8 <= 7 && 1000 * (a3 / 0x3E8) == 2000)
  {
    if (a4)
    {
      v7[0] = @"Parametric";
      v7[1] = @"Butterworth Low Pass";
      v7[2] = @"Butterworth High Pass";
      v7[3] = @"Resonant Low Pass";
      v7[4] = @"Resonant High Pass";
      v7[5] = @"Band Pass";
      v7[6] = @"Band Stop";
      v7[7] = @"Low Shelf";
      v7[8] = @"High Shelf";
      v7[9] = @"Resonant Low Shelf";
      v7[10] = @"Resonant High Shelf";
      v6 = CFArrayCreate(0, v7, 11, 0);
      result = 0;
      *a4 = v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t AUVariableEQV2::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0);
  if ((v5 & 1) == 0 || (Parameter = ausdk::AUElement::GetParameter(v4, 5u), v7 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>((this + 4), 0), (v8 & 1) == 0))
  {
    abort();
  }

  v9 = ausdk::AUElement::GetParameter(v7, 7u);
  v10 = ausdk::AUBase::RestoreState(this, a2);
  if (!v10)
  {
    ++*(this + 134);
    ++*(this + 136);
    (*(*this + 19))(this, 5, 0, 0, 0, Parameter);
    (*(*this + 19))(this, 7, 0, 0, 0, v9);
  }

  return v10;
}

uint64_t AUVariableEQV2::SaveExtendedScopes(AUVariableEQV2 *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

uint64_t AUVariableEQV2::GetParameterInfo(AUVariableEQV2 *this, int a2, signed int a3, AudioUnitParameterInfo *buffer)
{
  buffer->flags = 1207959552;
  buffer->unitName = 0;
  if (a2 == 4)
  {
    if (!a3)
    {
      buffer->cfNameString = @"global gain";
      CFStringGetCString(@"global gain", buffer->name, 52, 0x8000100u);
      result = 0;
      v10 = buffer->flags | 0x80000000;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v11 = 0x41C00000C2C00000;
LABEL_20:
      *&buffer->minValue = v11;
      buffer->defaultValue = 0.0;
      buffer->flags = v10;
      return result;
    }

    if (a3 >= 0x3E8)
    {
      v9 = a3 % 0x3E8u;
      if (a3 % 0x3E8u > 7)
      {
        return 4294956418;
      }

      a3 = 1000 * (a3 / 0x3E8u);
    }

    else
    {
      v9 = 0;
    }

    v12 = v9 + 1;
    result = 4294956418;
    if (a3 <= 2999)
    {
      if (a3 == 1000)
      {
        buffer->cfNameString = @"bypass";
        CFStringGetCString(@"bypass", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->clumpID = v12;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Boolean;
        *&buffer->minValue = 0x3F80000000000000;
        v14 = 1.0;
LABEL_41:
        v22 = flags | 0xC0100000;
        buffer->defaultValue = v14;
        goto LABEL_42;
      }

      if (a3 != 2000)
      {
        return result;
      }

      buffer->cfNameString = @"type";
      CFStringGetCString(@"type", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = v12;
      v15 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      v16 = 0x4120000000000000;
    }

    else
    {
      if (a3 == 3000)
      {
        buffer->cfNameString = @"frequency";
        CFStringGetCString(@"frequency", buffer->name, 52, 0x8000100u);
        buffer->clumpID = v12;
        buffer->flags |= 0x100000u;
        *&buffer->unit = 0x4220000000000008;
        Element = ausdk::AUScope::GetElement((this + 128), 0);
        if (!Element)
        {
          ausdk::Throw(0xFFFFD583);
        }

        v20 = Element;
        result = 0;
        v21 = *(v20 + 80) * 0.49000001;
        buffer->maxValue = v21;
        v17 = 1000.0;
        v18 = buffer->flags | 0xC0000000;
        goto LABEL_37;
      }

      if (a3 != 4000)
      {
        if (a3 != 5000)
        {
          return result;
        }

        buffer->cfNameString = @"bandwidth";
        CFStringGetCString(@"bandwidth", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->clumpID = v12;
        flags = buffer->flags;
        buffer->unit = kAudioUnitParameterUnit_Octaves;
        *&buffer->minValue = 0x40A000003D4CCCCDLL;
        v14 = 0.5;
        goto LABEL_41;
      }

      buffer->cfNameString = @"gain";
      CFStringGetCString(@"gain", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->clumpID = v12;
      v15 = buffer->flags;
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v16 = 0x41C00000C2C00000;
    }

    *&buffer->minValue = v16;
    v22 = v15 | 0xC0100000;
    buffer->defaultValue = 0.0;
LABEL_42:
    buffer->flags = v22;
    return result;
  }

  if (a2)
  {
    return 4294956418;
  }

  result = 4294956418;
  if (a3 <= 3)
  {
    switch(a3)
    {
      case 1:
        buffer->cfNameString = @"Max Gain for EQ1";
        CFStringGetCString(@"Max Gain for EQ1", buffer->name, 52, 0x8000100u);
        result = 0;
        v6 = buffer->flags | 0x80000000;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x3F80000000000000;
        v7 = 0.2;
        break;
      case 2:
        buffer->cfNameString = @"Max Gain for EQ2";
        CFStringGetCString(@"Max Gain for EQ2", buffer->name, 52, 0x8000100u);
        result = 0;
        v6 = buffer->flags | 0x80000000;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x3F80000000000000;
        v7 = 0.5;
        break;
      case 3:
        buffer->cfNameString = @"Max Gain for EQ3";
        CFStringGetCString(@"Max Gain for EQ3", buffer->name, 52, 0x8000100u);
        result = 0;
        v6 = buffer->flags | 0x80000000;
        buffer->unit = kAudioUnitParameterUnit_Generic;
        *&buffer->minValue = 0x3F80000000000000;
        v7 = 0.8;
        break;
      default:
        return result;
    }

LABEL_34:
    buffer->defaultValue = v7;
    buffer->flags = v6;
    return result;
  }

  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      buffer->cfNameString = @"Max Gain for EQ4";
      CFStringGetCString(@"Max Gain for EQ4", buffer->name, 52, 0x8000100u);
      result = 0;
      v6 = buffer->flags | 0x80000000;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      v7 = 0.9;
    }

    else
    {
      buffer->cfNameString = @"Current Gain";
      CFStringGetCString(@"Current Gain", buffer->name, 52, 0x8000100u);
      result = 0;
      v6 = buffer->flags | 0x8000;
      buffer->unit = kAudioUnitParameterUnit_Generic;
      *&buffer->minValue = 0x3F80000000000000;
      v7 = 1.0;
    }

    goto LABEL_34;
  }

  if (a3 == 6)
  {
    buffer->cfNameString = @"Noise SPL";
    CFStringGetCString(@"Noise SPL", buffer->name, 52, 0x8000100u);
    result = 0;
    buffer->unit = kAudioUnitParameterUnit_Generic;
    *&buffer->minValue = 0x42C8000000000000;
    v17 = 40.0;
    v18 = buffer->flags | 0x40008000;
LABEL_37:
    buffer->defaultValue = v17;
    buffer->flags = v18;
    return result;
  }

  if (a3 == 7)
  {
    buffer->cfNameString = @"PreGain (dB)";
    CFStringGetCString(@"PreGain (dB)", buffer->name, 52, 0x8000100u);
    result = 0;
    v10 = buffer->flags | 0x8000;
    buffer->unit = kAudioUnitParameterUnit_Generic;
    v11 = 0x41400000C2C00000;
    goto LABEL_20;
  }

  return result;
}

uint64_t AUVariableEQV2::GetParameterList(AUVariableEQV2 *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (a2 == 4)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v6 = 0;
    v7 = a3 + 5;
    do
    {
      if (a3)
      {
        *(v7 - 1) = vorrq_s8(vdupq_n_s32(v6), xmmword_1DE09E1C0);
        *v7 = v6 + 5000;
      }

      ++v6;
      v7 += 5;
    }

    while (v6 != 8);
    v4 = 41;
    goto LABEL_17;
  }

  if (!a2)
  {
    v4 = 0;
    for (i = 1; i != 8; ++i)
    {
      if (i != 6)
      {
        if (a3)
        {
          a3[v4] = i;
        }

        ++v4;
      }
    }

LABEL_17:
    result = 0;
    *a4 = v4;
    return result;
  }

  return 4294956430;
}

ausdk::AUInputElement *AUVariableEQV2::Render(AUVariableEQV2 *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  v13 = 0;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v9)
  {
    result = ausdk::AUInputElement::PullInput(result, &v13, a3, 0, a4);
  }

  if (!result)
  {
    Element = ausdk::AUScope::GetElement((this + 80), 0);
    if (Element)
    {
      if (!*(Element + 144))
      {
        goto LABEL_11;
      }

      v11 = *(Element + 152);
      v12 = ausdk::AUScope::GetElement((this + 128), 0);
      if (v12)
      {
        if (*(v12 + 144))
        {
          return (*(*this + 176))(this, a2, v11 + 48, *(v12 + 152) + 48, a4);
        }

LABEL_11:
        ausdk::Throw(0xFFFFFFFFLL);
      }
    }

    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t AUVariableEQV2::ProcessBufferLists(AUVariableEQV2 *this, unsigned int *a2, AudioBufferList *a3, AudioBufferList *a4, vDSP_Length __N)
{
  v9 = *(this + 134);
  if (v9 != *(this + 135) && *(this + 573) == 1)
  {
    AUVariableEQV2::UpdateVarEQState(this);
    *(this + 135) = v9;
  }

  v10 = *(this + 136);
  if (v10 != *(this + 137))
  {
    AUVariableEQV2::UpdateVolumeState(this);
    *(this + 137) = v10;
  }

  if ((*(this + 575) & 1) == 0 && a3->mNumberBuffers)
  {
    v11 = 0;
    v12 = 16;
    while (1)
    {
      __C = 0.0;
      vDSP_svemg(*(&a3->mNumberBuffers + v12), 1, &__C, __N);
      if (__C > 0.0)
      {
        break;
      }

      ++v11;
      v12 += 16;
      if (v11 >= a3->mNumberBuffers)
      {
        goto LABEL_13;
      }
    }

    *(this + 575) = 1;
  }

LABEL_13:
  mDataByteSize = a3->mBuffers[0].mDataByteSize;
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_84;
  }

  if (mDataByteSize != *(Element + 104) * __N)
  {
    *(this + 672) = 1;
  }

  if (((*(*this + 576))(this) & 1) == 0)
  {
    v15 = *(this + 142);
    if (v15 == 0.0)
    {
      if (*(this + 140) != 1.0 && a3->mNumberBuffers)
      {
        v23 = 0;
        v24 = 16;
        do
        {
          MEMORY[0x1E12BE940](*(&a3->mNumberBuffers + v24), 1, this + 560, *(&a3->mNumberBuffers + v24), 1, __N);
          ++v23;
          v24 += 16;
        }

        while (v23 < a3->mNumberBuffers);
      }
    }

    else if (__N)
    {
      v16 = 0;
      mNumberBuffers = a3->mNumberBuffers;
      do
      {
        p_mData = &a3->mBuffers[0].mData;
        v19 = mNumberBuffers;
        if (mNumberBuffers)
        {
          do
          {
            v20 = *p_mData;
            p_mData += 2;
            v20[v16] = *(this + 140) * v20[v16];
            --v19;
          }

          while (v19);
          v15 = *(this + 142);
        }

        v21 = v15 + *(this + 140);
        *(this + 140) = v21;
        if (v15 < 0.0 && (v22 = *(this + 141), v21 <= v22) || v15 > 0.0 && (v22 = *(this + 141), v21 >= v22))
        {
          *(this + 142) = 0;
          *(this + 140) = v22;
          v15 = 0.0;
        }

        ++v16;
      }

      while (v16 != __N);
    }
  }

  v25 = *(this + 76);
  v26 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v26)
  {
    goto LABEL_84;
  }

  v27 = ausdk::AUBufferList::PrepareBufferOrError(v25, v26 + 2, __N);
  v28 = v27;
  if ((v29 & 1) == 0)
  {
    ausdk::Throw(v27);
  }

  v30 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v30)
  {
LABEL_84:
    ausdk::Throw(0xFFFFD583);
  }

  CopyBufferList(a3, v28, (*(v30 + 104) * __N));
  if (((*(*this + 576))(this) & 1) != 0 || (v31 = *(this + 74), !v31[4]))
  {
    v32 = ausdk::AUScope::GetElement((this + 80), 0);
    if (!v32)
    {
      goto LABEL_84;
    }

    CopyBufferList(a3, a4, (*(v32 + 104) * __N));
  }

  else
  {
    (*(*v31 + 32))(v31, __N, a3, a4);
  }

  if (*(this + 572) == 1)
  {
    if (*(this + 573) == 1)
    {
      v33 = 576;
      if (*(this + 74) == *(this + 72))
      {
        v33 = 584;
      }

      v34 = *(this + v33);
      *(this + 75) = v34;
      if (*(this + 574) == 1)
      {
        v35 = *(this + 77);
        if (!*v35)
        {
          goto LABEL_88;
        }

        (*(*v34 + 32))(v34, *(this + 133), *(v35 + 8) + 48, *(v35 + 8) + 48);
      }

      *(this + 573) = 0;
    }

    v36 = *(this + 77);
    v37 = ausdk::AUScope::GetElement((this + 80), 0);
    if (!v37)
    {
      goto LABEL_84;
    }

    v38 = ausdk::AUBufferList::PrepareBufferOrError(v36, v37 + 2, __N);
    if ((v39 & 1) == 0)
    {
      ausdk::Throw(v38);
    }

    if (((*(*this + 576))(this) & 1) != 0 || (v40 = *(this + 75), !v40[4]))
    {
      v42 = *(this + 77);
      if (!*v42)
      {
        goto LABEL_88;
      }

      v43 = *(v42 + 8);
      v44 = ausdk::AUScope::GetElement((this + 80), 0);
      if (!v44)
      {
        goto LABEL_84;
      }

      CopyBufferList(v28, v43 + 2, (*(v44 + 104) * __N));
    }

    else
    {
      v41 = *(this + 77);
      if (!*v41)
      {
        goto LABEL_88;
      }

      (*(*v40 + 32))(v40, __N, v28, *(v41 + 8) + 48);
    }

    v45 = *(this + 77);
    if (*v45)
    {
      v46 = *(v45 + 8);
      if (*(v46 + 48) == a4->mNumberBuffers)
      {
        v47 = ausdk::AUScope::GetElement((this + 128), 0);
        if (!v47)
        {
          goto LABEL_84;
        }

        v48 = (*(v47 + 80) * 0.02);
        if (v48 <= __N)
        {
          v49 = __N;
        }

        else
        {
          v49 = (*(v47 + 80) * 0.02);
        }

        v50 = *(v46 + 48);
        if (v50)
        {
          v51 = 0;
          v52 = 1.0 / v49;
          do
          {
            v53 = *(v46 + 56 + 16 * v51 + 8);
            mData = a4->mBuffers[v51].mData;
            if (v53 != mData && __N != 0)
            {
              v56 = v52 * *(this + 138);
              v57 = __N;
              do
              {
                v58 = *v53++;
                *mData = ((1.0 - v56) * *mData) + (v56 * v58);
                ++mData;
                v56 = v52 + v56;
                if (v56 >= 1.0)
                {
                  v56 = 1.0;
                }

                --v57;
              }

              while (v57);
            }

            ++v51;
          }

          while (v51 != v50);
        }

        v59 = *(this + 138) + __N;
        *(this + 138) = v59;
        if (v59 >= v48)
        {
          *(this + 573) = 1;
          *(this + 138) = 0;
        }
      }

      if (*(this + 573) == 1)
      {
        *(this + 74) = *(this + 75);
        *(this + 572) = 0;
      }

      goto LABEL_80;
    }

LABEL_88:
    ausdk::Throw(0xFFFFFFFFLL);
  }

LABEL_80:
  v60 = *(this + 77);
  v61 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v61)
  {
    goto LABEL_84;
  }

  v62 = ausdk::AUBufferList::PrepareBufferOrError(v60, v61 + 2, __N);
  v63 = v62;
  if ((v64 & 1) == 0)
  {
    ausdk::Throw(v62);
  }

  v65 = ausdk::AUScope::GetElement((this + 80), 0);
  if (!v65)
  {
    goto LABEL_84;
  }

  CopyBufferList(v28, v63, (*(v65 + 104) * __N));
  *(this + 133) = __N;
  *(this + 574) = 1;
  return 0;
}

uint64_t AUVariableEQV2::UpdateVarEQState(AUVariableEQV2 *this)
{
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    goto LABEL_87;
  }

  Parameter = ausdk::AUElement::GetParameter(v2, 5u);
  if (*(this + 139) != Parameter)
  {
    if (*(this + 17) == 1 && *(this + 575) == 1)
    {
      *(this + 572) = 1;
    }

    *(this + 139) = Parameter;
  }

  v5 = 0;
  memset(__src, 0, 320);
  do
  {
    v6 = (__src + v5);
    *v6 = 0;
    v6[1] = 0;
    v6[3] = 0;
    v6[4] = 0;
    v5 += 40;
    v6[2] = 0x3FF0000000000000;
  }

  while (v5 != 320);
  memcpy(this + 680, __src, 0x140uLL);
  v7 = 0;
  memset(__src, 0, 320);
  do
  {
    v8 = (__src + v7);
    *v8 = 0;
    v8[1] = 0;
    v8[3] = 0;
    v8[4] = 0;
    v7 += 40;
    v8[2] = 0x3FF0000000000000;
  }

  while (v7 != 320);
  memcpy(this + 1000, __src, 0x140uLL);
  v9 = 0;
  do
  {
    v10 = *(this + 139);
    v11 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
    if ((v12 & 1) == 0)
    {
      goto LABEL_87;
    }

    v13 = v9 + 1;
    if (v10 <= ausdk::AUElement::GetParameter(v11, v9 + 1))
    {
      break;
    }

    ++v9;
  }

  while (v13 != 4);
  v14 = *(this + 139);
  v15 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v16 & 1) == 0)
  {
    goto LABEL_87;
  }

  if (v14 <= ausdk::AUElement::GetParameter(v15, 1u))
  {
    v125 = 0;
  }

  else
  {
    if (*(this + 139) < 1.0)
    {
      AUVariableEQV2::SetCoefficients(this, this + 680, v9 - 1);
      AUVariableEQV2::SetCoefficients(this, this + 1000, v9);
      v17 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
      if (v18)
      {
        v19 = ausdk::AUElement::GetParameter(v17, v9);
        v20 = 1.0;
        if (v9 > 3)
        {
LABEL_22:
          v23 = (*(this + 139) - v19) / (v20 - v19);
          Element = ausdk::AUScope::GetElement((this + 624), v9 - 1);
          v25 = ausdk::AUElement::GetParameter(Element, 0);
          v26 = ausdk::AUScope::GetElement((this + 624), v9);
          v27 = ausdk::AUElement::GetParameter(v26, 0);
          v28 = 0;
          v134 = v23;
          *&v29 = 1.0 - v23;
          v30 = (v23 * v27) + *&v29 * v25;
          v135 = *&v29;
          v133 = vdupq_lane_s64(v29, 0);
          v31 = (this + 680);
          while (1)
          {
            v32 = ausdk::AUScope::GetElement((this + 624), v9 - 1);
            v33 = ausdk::AUElement::GetParameter(v32, v28 | 0x3E8);
            v34 = ausdk::AUScope::GetElement((this + 624), v9);
            v35 = ausdk::AUElement::GetParameter(v34, v28 | 0x3E8);
            v36 = ausdk::AUScope::GetElement((this + 624), v9 - 1);
            v37 = ausdk::AUElement::GetParameter(v36, v28 | 0x7D0);
            v38 = ausdk::AUScope::GetElement((this + 624), v9);
            v39 = ausdk::AUElement::GetParameter(v38, v28 | 0x7D0);
            if (v37 == v39 && v33 == v35)
            {
              v57 = ausdk::AUScope::GetElement((this + 624), v9 - 1);
              v58 = ausdk::AUElement::GetParameter(v57, v28 | 0xBB8);
              v59 = ausdk::AUScope::GetElement((this + 624), v9 - 1);
              v60 = ausdk::AUElement::GetParameter(v59, v28 | 0xFA0);
              v61 = ausdk::AUScope::GetElement((this + 624), v9 - 1);
              v62 = ausdk::AUElement::GetParameter(v61, v28 | 0x1388);
              v63 = ausdk::AUScope::GetElement((this + 624), v9);
              v64 = ausdk::AUElement::GetParameter(v63, v28 | 0xBB8);
              v65 = ausdk::AUScope::GetElement((this + 624), v9);
              v66 = ausdk::AUElement::GetParameter(v65, v28 | 0xFA0);
              v67 = ausdk::AUScope::GetElement((this + 624), v9);
              v68 = ausdk::AUElement::GetParameter(v67, v28 | 0x1388);
              v51 = (v23 * v64) + v135 * v58;
              v69 = (v23 * v66) + v135 * v60;
              v50 = (v23 * v68) + v135 * v62;
              v52 = this;
              v53 = this + 680;
              v54 = v28;
              v55 = v33;
              v56 = v37;
            }

            else
            {
              v41 = v33 == 0.0;
              if (v35 != 0.0)
              {
                v41 = 1;
              }

              if (!v41 && (v39 - 7 >= 4 ? (v70 = v39 == 0) : (v70 = 1), v70))
              {
                v71 = ausdk::AUScope::GetElement((this + 624), v9);
                v72 = ausdk::AUElement::GetParameter(v71, v28 | 0xBB8);
                v73 = ausdk::AUScope::GetElement((this + 624), v9);
                v74 = ausdk::AUElement::GetParameter(v73, v28 | 0xFA0);
                v75 = ausdk::AUScope::GetElement((this + 624), v9);
                v50 = ausdk::AUElement::GetParameter(v75, v28 | 0x1388);
                v69 = v23 * v74;
                v52 = this;
                v53 = this + 680;
                v54 = v28;
                v55 = v35;
                v56 = v39;
                v51 = v72;
              }

              else
              {
                v42 = v35 == 0.0;
                if (v33 != 0.0)
                {
                  v42 = 1;
                }

                if (!v42 && (v37 - 7 >= 4 ? (v76 = v37 == 0) : (v76 = 1), v76))
                {
                  v77 = ausdk::AUScope::GetElement((this + 624), v9 - 1);
                  v78 = ausdk::AUElement::GetParameter(v77, v28 | 0xBB8);
                  v79 = ausdk::AUScope::GetElement((this + 624), v9 - 1);
                  v80 = ausdk::AUElement::GetParameter(v79, v28 | 0xFA0);
                  v81 = ausdk::AUScope::GetElement((this + 624), v9 - 1);
                  v50 = ausdk::AUElement::GetParameter(v81, v28 | 0x1388);
                  v69 = v135 * v80;
                  v52 = this;
                  v53 = this + 680;
                  v54 = v28;
                  v55 = v33;
                  v56 = v37;
                  v51 = v78;
                }

                else
                {
                  v43 = (v39 & 0xFFFFFFFD) != 1 || v41;
                  if ((v43 & 1) == 0)
                  {
                    v82 = ausdk::AUScope::GetElement((this + 624), v9);
                    v83 = ausdk::AUElement::GetParameter(v82, v28 | 0xBB8);
                    v84 = ausdk::AUScope::GetElement((this + 624), v9);
                    v85 = ausdk::AUElement::GetParameter(v84, v28 | 0xFA0);
                    v86 = ausdk::AUScope::GetElement((this + 624), v9);
                    v87 = ausdk::AUElement::GetParameter(v86, v28 | 0x1388);
                    v88 = ausdk::AUScope::GetElement((this + 128), 0);
                    if (!v88)
                    {
                      goto LABEL_88;
                    }

                    v51 = (v23 * v83) + v135 * (*(v88 + 80) * 0.5);
                    v52 = this;
                    v53 = this + 680;
                    v54 = v28;
                    v55 = v35;
                    v56 = v39;
LABEL_64:
                    v69 = v85;
                    v50 = v87;
                    goto LABEL_65;
                  }

                  v44 = (v37 & 0xFFFFFFFD) != 1 || v42;
                  if ((v44 & 1) == 0)
                  {
                    v89 = ausdk::AUScope::GetElement((this + 624), v9 - 1);
                    v90 = ausdk::AUElement::GetParameter(v89, v28 | 0xBB8);
                    v91 = ausdk::AUScope::GetElement((this + 624), v9 - 1);
                    v85 = ausdk::AUElement::GetParameter(v91, v28 | 0xFA0);
                    v92 = ausdk::AUScope::GetElement((this + 624), v9 - 1);
                    v87 = ausdk::AUElement::GetParameter(v92, v28 | 0x1388);
                    v93 = ausdk::AUScope::GetElement((this + 128), 0);
                    if (!v93)
                    {
LABEL_88:
                      ausdk::Throw(0xFFFFD583);
                    }

                    v51 = *(v93 + 80) * 0.5 * v134 + v135 * v90;
                    v52 = this;
                    v53 = this + 680;
                    v54 = v28;
                    v55 = v33;
                    v56 = v37;
                    goto LABEL_64;
                  }

                  if (!v41 && (v39 == 4 || v39 == 2))
                  {
                    v45 = ausdk::AUScope::GetElement((this + 624), v9);
                    v46 = ausdk::AUElement::GetParameter(v45, v28 | 0xBB8);
                    v47 = ausdk::AUScope::GetElement((this + 624), v9);
                    v48 = ausdk::AUElement::GetParameter(v47, v28 | 0xFA0);
                    v49 = ausdk::AUScope::GetElement((this + 624), v9);
                    v50 = ausdk::AUElement::GetParameter(v49, v28 | 0x1388);
                    v51 = 40.0;
                    if ((v23 * v46) >= 40.0)
                    {
                      v51 = v23 * v46;
                    }

                    v52 = this;
                    v53 = this + 680;
                    v54 = v28;
                    v55 = v35;
                    v56 = v39;
                  }

                  else
                  {
                    if (v42 || v37 != 4 && v37 != 2)
                    {
                      __src[0] = 0uLL;
                      v140 = 0.0;
                      v141 = 0.0;
                      v138 = 0.0;
                      v139 = 0.0;
                      v136 = 0.0;
                      v137 = 0.0;
                      GetQuadraticRoots(__src, &v140, v31->f64[0], v31->f64[1]);
                      GetQuadraticRoots(&v138, &v136, v31[20].f64[0], v31[20].f64[1]);
                      v99 = __src[0];
                      v100 = hypot(*__src, *(__src + 1));
                      v101 = atan2(*(&v99 + 1), *&v99);
                      v102 = v138;
                      v103 = v139;
                      v104 = hypot(v138, v139);
                      v105 = atan2(v103, v102);
                      v106 = v104 * v134 + v135 * v100;
                      v107 = v105 * v134 + v135 * v101;
                      v108 = v140;
                      v109 = v141;
                      v110 = hypot(v140, v141);
                      v111 = atan2(v109, v108);
                      v112 = v136;
                      v113 = v137;
                      v132 = v30;
                      v114 = hypot(v136, v137);
                      v115 = atan2(v113, v112) * v134 + v135 * v111;
                      std::polar[abi:ne200100]<double>(v106, v107);
                      v117 = v116;
                      v119 = v118;
                      std::polar[abi:ne200100]<double>(v114 * v134 + v135 * v110, v115);
                      v121 = -(v117 + v120);
                      v123 = std::operator*[abi:ne200100]<double,0>(v117, v119, v120, v122);
                      v124 = v31[22].f64[0] * v134 + v135 * v31[2].f64[0];
                      v31[1] = vmlaq_f64(vmulq_n_f64(v31[21], v134), v31[1], v133);
                      v31[2].f64[0] = v124;
                      v31->f64[0] = v121;
                      v31->f64[1] = v123;
                      v30 = v132;
                      goto LABEL_66;
                    }

                    v94 = ausdk::AUScope::GetElement((this + 624), v9);
                    v95 = ausdk::AUElement::GetParameter(v94, v28 | 0xBB8);
                    v96 = ausdk::AUScope::GetElement((this + 624), v9);
                    v48 = ausdk::AUElement::GetParameter(v96, v28 | 0xFA0);
                    v97 = ausdk::AUScope::GetElement((this + 624), v9);
                    v50 = ausdk::AUElement::GetParameter(v97, v28 | 0x1388);
                    v98 = v135 * v95;
                    v51 = 40.0;
                    if (v98 >= 40.0)
                    {
                      v51 = v135 * v95;
                    }

                    v52 = this;
                    v53 = this + 680;
                    v54 = v28;
                    v55 = v33;
                    v56 = v37;
                  }

                  v69 = v48;
                }
              }
            }

LABEL_65:
            AUVariableEQV2::SetCoefficientsForBand(v52, v53, v54, v56, v55, v51, v69, v50);
LABEL_66:
            ++v28;
            v31 = (v31 + 40);
            if (v28 == 8)
            {
              goto LABEL_79;
            }
          }
        }

        v21 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if (v22)
        {
          v20 = ausdk::AUElement::GetParameter(v21, v9 + 1);
          goto LABEL_22;
        }
      }

LABEL_87:
      abort();
    }

    v125 = 4;
  }

  AUVariableEQV2::SetCoefficients(this, this + 680, v125);
  v126 = ausdk::AUScope::GetElement((this + 624), v125);
  v30 = ausdk::AUElement::GetParameter(v126, 0);
LABEL_79:
  v127.n128_f64[0] = AUVariableEQV2::AdjustForGlobalGain((this + 680), v30);
  v128 = *(this + 74);
  if (*(this + 572) == 1)
  {
    if (v128 == *(this + 73))
    {
      v129 = this + 576;
      v128 = *(this + 72);
    }

    else
    {
      v129 = this + 584;
      v128 = *(this + 73);
    }
  }

  else
  {
    v129 = this + 592;
  }

  (*(*v128 + 16))(v128, 8, this + 680, v127);
  v130 = *(**v129 + 24);

  return v130();
}

float AUVariableEQV2::UpdateVolumeState(AUVariableEQV2 *this)
{
  *(this + 142) = 0;
  v2 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v3 & 1) == 0)
  {
    abort();
  }

  Parameter = ausdk::AUElement::GetParameter(v2, 7u);
  result = __exp10f(Parameter / 20.0);
  *(this + 141) = result;
  if (*(this + 575) == 1)
  {
    v6 = *(this + 140);
  }

  else
  {
    *(this + 140) = result;
    v6 = result;
  }

  if (v6 != result)
  {
    Element = ausdk::AUScope::GetElement((this + 128), 0);
    if (!Element)
    {
      ausdk::Throw(0xFFFFD583);
    }

    result = (*(this + 141) - *(this + 140)) / (*(Element + 80) * 0.02);
    *(this + 142) = result;
  }

  return result;
}

const void **CopyBufferList(const void **result, AudioBufferList *a2, size_t __n)
{
  v3 = *result;
  if (v3 == a2->mNumberBuffers && v3 != 0)
  {
    v5 = __n;
    v6 = result;
    v7 = 0;
    p_mData = &a2->mBuffers[0].mData;
    v9 = result + 2;
    v10 = __n;
    do
    {
      if (*(v9 - 1) >= v5 && *(p_mData - 1) >= v5)
      {
        result = *p_mData;
        if (*v9 != *p_mData)
        {
          result = memcpy(result, *v9, v10);
          v3 = *v6;
        }
      }

      ++v7;
      p_mData += 2;
      v9 += 2;
    }

    while (v7 < v3);
  }

  return result;
}

BiquadCoefficients *AUVariableEQV2::SetCoefficients(uint64_t a1, uint64_t a2, unsigned int a3)
{
  for (i = 3000; i != 3008; ++i)
  {
    Element = ausdk::AUScope::GetElement((a1 + 624), a3);
    Parameter = ausdk::AUElement::GetParameter(Element, i - 1000);
    v9 = ausdk::AUScope::GetElement((a1 + 624), a3);
    v10 = ausdk::AUElement::GetParameter(v9, i);
    v11 = ausdk::AUScope::GetElement((a1 + 624), a3);
    v12 = ausdk::AUElement::GetParameter(v11, i + 1000);
    v13 = ausdk::AUScope::GetElement((a1 + 624), a3);
    v14 = ausdk::AUElement::GetParameter(v13, i + 2000);
    v15 = ausdk::AUScope::GetElement((a1 + 624), a3);
    v16 = ausdk::AUElement::GetParameter(v15, i - 2000);
    result = AUVariableEQV2::SetCoefficientsForBand(a1, a2, i - 3000, Parameter, v16, v10, v12, v14);
  }

  return result;
}

double AUVariableEQV2::AdjustForGlobalGain(float64x2_t *a1, float a2)
{
  v2 = a1;
  v3 = 0;
  while (1)
  {
    v4 = a1[2].f64[v3];
    if (fabs(a1->f64[v3]) + fabs(a1->f64[v3 + 1]) + fabs(a1[1].f64[v3 + 1]) + fabs(v4) + fabs(a1[1].f64[v3] + -1.0) >= 1.0e-15)
    {
      break;
    }

    v3 += 5;
    if (v3 == 40)
    {
      v4 = a1[2].f64[0];
      goto LABEL_6;
    }
  }

  v2 = (a1 + v3 * 8);
LABEL_6:
  v5 = __exp10(a2 * 0.05);
  v2[1] = vmulq_n_f64(v2[1], v5);
  result = v4 * v5;
  v2[2].f64[0] = result;
  return result;
}

BiquadCoefficients *AUVariableEQV2::SetCoefficientsForBand(uint64_t a1, uint64_t a2, unsigned int a3, int a4, float a5, float a6, float a7, float a8)
{
  result = ausdk::AUScope::GetElement((a1 + 128), 0);
  if (!result)
  {
    ausdk::Throw(0xFFFFD583);
  }

  if (a5 != 0.0 || (v16 = *(result + 10), v16 * 0.49 < a6))
  {
    v17 = (a2 + 40 * a3);
    *v17 = 0;
    v17[1] = 0;
    v17[3] = 0;
    v17[4] = 0;
    v17[2] = 0x3FF0000000000000;
    return result;
  }

  v18 = a6 * 6.28318531 / v16;
  result = (a2 + 40 * a3);
  if (a4 <= 4)
  {
    if (a4 <= 1)
    {
      if (a4)
      {
        if (a4 == 1 && v18 > 0.0)
        {
          v20 = fmin(v18, 3.11017673);
          v19 = 0.0;
          v21 = 1;
          goto LABEL_35;
        }

LABEL_38:
        *result = 0;
        *(result + 1) = 0;
        *(result + 3) = 0;
        *(result + 4) = 0;
        *(result + 2) = 0x3FF0000000000000;
        return result;
      }

      v22 = v18;
      v23 = a8;
      v24 = a7;
      v25 = 6;
    }

    else
    {
      if (a4 == 2)
      {
        if (v18 > 0.0)
        {
          v20 = fmin(v18, 3.11017673);
          v19 = 0.0;
          v21 = 2;
          goto LABEL_35;
        }

        goto LABEL_38;
      }

      v22 = v18;
      v23 = a8;
      v24 = 0.0;
      if (a4 == 3)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }
    }
  }

  else if (a4 > 7)
  {
    switch(a4)
    {
      case 8:
        if (v18 > 0.0)
        {
          v19 = a7;
          v20 = fmin(v18, 3.11017673);
          v21 = 8;
          goto LABEL_35;
        }

        goto LABEL_38;
      case 9:
        v22 = v18;
        v23 = a8;
        v24 = a7;
        v25 = 7;
        break;
      case 10:
        v22 = v18;
        v23 = a8;
        v24 = a7;
        v25 = 8;
        break;
      default:
        goto LABEL_38;
    }
  }

  else if (a4 == 5)
  {
    v22 = v18;
    v23 = a8;
    v24 = 0.0;
    v25 = 3;
  }

  else
  {
    if (a4 != 6)
    {
      if (v18 > 0.0)
      {
        v19 = a7;
        v20 = fmin(v18, 3.11017673);
        v21 = 7;
LABEL_35:

        return BiquadCoefficients::SetPriv(result, v21, v20, 0.707106781, v19);
      }

      goto LABEL_38;
    }

    v22 = v18;
    v23 = a8;
    v24 = 0.0;
    v25 = 4;
  }

  return BiquadCoefficients::SetBW(result, v25, v22, v23, v24);
}

void GetQuadraticRoots(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v23 = *&a3;
  v7 = std::operator*[abi:ne200100]<double,0>(a3, 0.0, a3, 0.0);
  v9 = v8;
  v10 = std::operator*[abi:ne200100]<double,0>(4.0, 0.0, a4, 0.0);
  std::sqrt[abi:ne200100]<double>(v7 - v10, v9 - v11);
  v24 = v12;
  v22 = v13;
  v14 = __divdc3(1.0, 0.0, 2.0, 0.0);
  v16 = v15;
  v17.f64[0] = v24;
  v17.f64[1] = v22;
  v25 = v17;
  v18 = vsubq_f64(v17, v23);
  *a1 = std::operator*[abi:ne200100]<double,0>(v18.f64[0], v18.f64[1], v14, v16);
  *(a1 + 8) = v19;
  v20 = vsubq_f64(vnegq_f64(v23), v25);
  *a2 = std::operator*[abi:ne200100]<double,0>(v20.f64[0], v20.f64[1], v14, v16);
  *(a2 + 8) = v21;
}

uint64_t AUVariableEQV2::SetParameter(AUVariableEQV2 *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  if (a3 == 4)
  {
    Element = ausdk::AUScope::GetElement((this + 624), a4);
    ausdk::AUElement::SetParameter(Element, a2, a5);
    v10 = 536;
LABEL_8:
    result = 0;
    ++*(this + v10);
    return result;
  }

  v12 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v13 & 1) == 0)
  {
    abort();
  }

  Parameter = ausdk::AUElement::GetParameter(v12, a2);
  result = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  if (!result && Parameter != a5)
  {
    v10 = 536;
    if (a2 == 7)
    {
      v10 = 544;
    }

    goto LABEL_8;
  }

  return result;
}

uint64_t AUVariableEQV2::GetParameter(AUVariableEQV2 *this, unsigned int a2, unsigned int a3, unsigned int a4, float *a5)
{
  if (a3 == 4)
  {
    Element = ausdk::AUScope::GetElement((this + 624), a4);
    *a5 = ausdk::AUElement::GetParameter(Element, a2);
    return 0;
  }

  else
  {

    return ausdk::AUBase::GetParameter(this, a2, a3, a4, a5);
  }
}

uint64_t AUVariableEQV2::SetProperty(AUVariableEQV2 *this, int a2, int a3, unsigned int a4, int *a5, unsigned int a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    if (a6 >= 4)
    {
      v8 = *a5;
      v9 = *a5 != 0;
      if (v9 != (*(*this + 576))(this))
      {
        (*(*this + 584))(this, v8 != 0);
      }

      return 0;
    }

    else
    {
      return 4294956445;
    }
  }

  return result;
}

uint64_t AUVariableEQV2::GetProperty(AUVariableEQV2 *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    v8 = (*(*this + 576))(this);
    result = 0;
    *a5 = v8;
  }

  return result;
}

uint64_t AUVariableEQV2::GetPropertyInfo(AUVariableEQV2 *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  result = 4294956417;
  if (a2 == 21 && !a3)
  {
    result = 0;
    *a6 = 1;
    *a5 = 4;
  }

  return result;
}

uint64_t AUVariableEQV2::Reset(AUVariableEQV2 *this)
{
  v2 = *(this + 72);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 73);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  *(this + 138) = 0;
  *(this + 573) = 1;
  *(this + 575) = 0;
  v4 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
  if ((v5 & 1) == 0)
  {
    abort();
  }

  Parameter = ausdk::AUElement::GetParameter(v4, 7u);
  v7 = __exp10f(Parameter / 20.0);
  *(this + 140) = v7;
  *(this + 141) = v7;
  *(this + 142) = 0;
  return 0;
}

uint64_t AUVariableEQV2::Cleanup(AUVariableEQV2 *this)
{
  v2 = *(this + 72);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 72) = 0;
  }

  result = *(this + 73);
  if (result)
  {
    result = (*(*result + 8))(result);
    *(this + 73) = 0;
  }

  return result;
}

uint64_t AUVariableEQV2::Initialize(AUVariableEQV2 *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v3 = Element, (v4 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v5 = v4;
  if (!memcmp(&v3[2], (v4 + 80), 0x28uLL))
  {
    v7 = NewIIRFilter(v3 + 2, v5 + 2);
    v8 = *(this + 72);
    if (v8 != v7)
    {
      if (v8)
      {
        (*(*v8 + 8))(v8);
      }

      *(this + 72) = v7;
    }

    if (v7)
    {
      v9 = NewIIRFilter(v3 + 2, v5 + 2);
      v10 = *(this + 73);
      if (v10 == v9)
      {
        v9 = *(this + 73);
        if (!v10)
        {
          return 4294956428;
        }
      }

      else
      {
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }

        *(this + 73) = v9;
        if (!v9)
        {
          return 4294956428;
        }
      }

      *(this + 74) = *(this + 72);
      *(this + 75) = v9;
      operator new();
    }
  }

  return 4294956428;
}

const void **AUVariableEQV2::CreateExtendedElements(AUVariableEQV2 *this)
{
  ausdk::AUScope::Initialize((this + 624), this, 4, 5);
  Element = ausdk::AUScope::GetElement((this + 624), 0);
  ausdk::Owned<__CFString const*>::operator=((Element + 72), @"EQ1");
  v3 = ausdk::AUScope::GetElement((this + 624), 1u);
  ausdk::Owned<__CFString const*>::operator=((v3 + 72), @"EQ2");
  v4 = ausdk::AUScope::GetElement((this + 624), 2u);
  ausdk::Owned<__CFString const*>::operator=((v4 + 72), @"EQ3");
  v5 = ausdk::AUScope::GetElement((this + 624), 3u);
  ausdk::Owned<__CFString const*>::operator=((v5 + 72), @"EQ4");
  v6 = (ausdk::AUScope::GetElement((this + 624), 4u) + 72);

  return ausdk::Owned<__CFString const*>::operator=(v6, @"EQ5");
}

void AUVariableEQV2::~AUVariableEQV2(AUVariableEQV2 *this)
{
  AUVariableEQV2::~AUVariableEQV2(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592F6C8;
  AUVariableEQV2::Cleanup(this);
  v4 = (this + 640);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&v4);
  CADeprecated::CAAutoDelete<ausdk::AUBufferList>::set(this + 77, 0);
  CADeprecated::CAAutoDelete<ausdk::AUBufferList>::set(this + 76, 0);
  v2 = *(this + 73);
  if (v2)
  {
    (*(*v2 + 8))(v2);
    *(this + 73) = 0;
  }

  v3 = *(this + 72);
  if (v3)
  {
    (*(*v3 + 8))(v3);
    *(this + 72) = 0;
  }

  ausdk::AUBase::~AUBase(this);
}

uint64_t AUChannelSpecificDelay::GetScopeExtended(AUChannelSpecificDelay *this, int a2)
{
  if (a2 == 4)
  {
    return this + 2200;
  }

  else
  {
    return 0;
  }
}

uint64_t AUChannelSpecificDelay::SupportedNumChannels(AUChannelSpecificDelay *this, const AUChannelInfo **a2)
{
  if (atomic_load_explicit(&AUChannelSpecificDelay::SupportedNumChannels(AUChannelInfo const**)::sOnceFlag, memory_order_acquire) != -1)
  {
    v7 = &v5;
    v6 = &v7;
    std::__call_once(&AUChannelSpecificDelay::SupportedNumChannels(AUChannelInfo const**)::sOnceFlag, &v6, std::__call_once_proxy[abi:ne200100]<std::tuple<AUChannelSpecificDelay::SupportedNumChannels(AUChannelInfo const**)::$_0 &&>>);
  }

  if (a2)
  {
    *a2 = &AUChannelSpecificDelay::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  if (*(this + 562))
  {
    return 32;
  }

  else
  {
    return 8;
  }
}

int16x8_t std::__call_once_proxy[abi:ne200100]<std::tuple<AUChannelSpecificDelay::SupportedNumChannels(AUChannelInfo const**)::$_0 &&>>()
{
  v0 = 0;
  result = xmmword_1DE09E1D0;
  v2.i64[0] = 0x8000800080008;
  v2.i64[1] = 0x8000800080008;
  do
  {
    v3 = (&AUChannelSpecificDelay::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs + v0);
    v4 = result;
    vst2q_s16(v3, *result.i8);
    result = vaddq_s16(result, v2);
    v0 += 32;
  }

  while (v0 != 128);
  return result;
}

double AUChannelSpecificDelay::GetLatency(AUChannelSpecificDelay *this)
{
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v3 = *(Element + 108);
  if (v3)
  {
    v4 = 0;
    v5 = 0.0;
    do
    {
      if (*(this + 562))
      {
        v6 = ausdk::AUScope::GetElement((this + 2200), v4);
        v7 = 0;
      }

      else
      {
        v6 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
        if ((v8 & 1) == 0)
        {
          abort();
        }

        v7 = v4;
      }

      Parameter = ausdk::AUElement::GetParameter(v6, v7);
      if (v5 <= Parameter)
      {
        v5 = Parameter;
      }

      ++v4;
    }

    while (v3 != v4);
  }

  else
  {
    v5 = 0.0;
  }

  return v5 / 1000.0;
}

uint64_t AUChannelSpecificDelay::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  v3 = ausdk::AUBase::RestoreState(this, a2);
  if (!v3)
  {
    AUChannelSpecificDelay::ClearRingBuffers(this);
  }

  return v3;
}

void AUChannelSpecificDelay::ClearRingBuffers(AUChannelSpecificDelay *this)
{
  Element = ausdk::AUScope::GetElement((this + 128), 0);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v3 = *(Element + 108);
  if (v3)
  {
    v4 = (this + 1816);
    v5 = (this + 568);
    do
    {
      if (*(v5 - 7))
      {
        v6 = *(v5 - 1);
        v7 = *v5 - v6;
        if (v7 >= 1)
        {
          bzero(v6, v7);
        }
      }

      *(v5 - 20) = 0;
      *(v5 - 6) = 0;
      ++*v4++;
      v5 += 5;
      --v3;
    }

    while (v3);
  }

  *(this + 533) = 1;
}

uint64_t AUChannelSpecificDelay::SaveExtendedScopes(AUChannelSpecificDelay *this, __CFData *a2)
{
  v3 = (*(*this + 408))(this, 4);
  if (!v3)
  {
    ausdk::ThrowQuiet(0);
  }

  return ausdk::AUScope::SaveState(v3, a2);
}

uint64_t AUChannelSpecificDelay::GetParameterInfo(AUChannelSpecificDelay *this, int a2, unsigned int a3, AudioUnitParameterInfo *buffer)
{
  if (*(this + 562))
  {
    if (a2 == 4)
    {
      if (!a3)
      {
        buffer->cfNameString = @"Desired delay in millisecond";
        buffer->flags |= 0x8000000u;
        CFStringGetCString(@"Desired delay in millisecond", buffer->name, 52, 0x8000100u);
        result = 0;
        buffer->unit = kAudioUnitParameterUnit_Milliseconds;
        *&buffer->minValue = 0x42C8000000000000;
        *&buffer->defaultValue = 0xC080000000000000;
        return result;
      }

      return 4294956418;
    }

    return 4294956430;
  }

  else
  {
    buffer->flags = 0;
    buffer->unitName = 0;
    if (a2)
    {
      return 4294956418;
    }

    if (a3 > 7)
    {
      return 0;
    }

    else
    {
      buffer->cfNameString = @"Desired delay in millisecond";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Desired delay in millisecond", buffer->name, 52, 0x8000100u);
      result = 0;
      buffer->unit = kAudioUnitParameterUnit_Milliseconds;
      *&buffer->minValue = 0x42C8000000000000;
      v6 = buffer->flags | 0xC0800000;
      buffer->defaultValue = 0.0;
      buffer->flags = v6;
    }
  }

  return result;
}

uint64_t AUChannelSpecificDelay::GetParameterList(AUChannelSpecificDelay *this, int a2, unsigned int *a3, unsigned int *a4)
{
  if (!*(this + 562))
  {
    if (!a2)
    {
      Element = ausdk::AUScope::GetElement((this + 128), 0);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      v6 = *(Element + 108);
      if (v6)
      {
        for (i = 0; i != v6; ++i)
        {
          if (a3)
          {
            a3[i] = i;
          }
        }
      }

      goto LABEL_14;
    }

    return 4294956430;
  }

  if (a2 != 4)
  {
    return 4294956430;
  }

  if (a3)
  {
    *a3 = 0;
  }

  LODWORD(v6) = 1;
LABEL_14:
  result = 0;
  *a4 = v6;
  return result;
}

ausdk::AUInputElement *AUChannelSpecificDelay::Render(AUChannelSpecificDelay *this, unsigned int *a2, const AudioTimeStamp *a3, uint64_t a4)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element || (v9 = Element, (v10 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
  {
    ausdk::Throw(0xFFFFD583);
  }

  v11 = v10;
  v14 = 0;
  result = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 80, 0);
  if (v13)
  {
    result = ausdk::AUInputElement::PullInput(result, &v14, a3, 0, a4);
  }

  if (!result)
  {
    if (!*(v9 + 144) || !*(v11 + 144))
    {
      ausdk::Throw(0xFFFFFFFFLL);
    }

    return (*(*this + 176))(this, a2, *(v9 + 152) + 48, *(v11 + 152) + 48, a4);
  }

  return result;
}

uint64_t AUChannelSpecificDelay::ProcessBufferLists(AUChannelSpecificDelay *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, unsigned int a5)
{
  if (*(this + 84) < a5)
  {
    return 4294956422;
  }

  if (!*(this + 132))
  {
    v15 = a5;
    Element = ausdk::AUScope::GetElement((this + 128), 0);
    if (!Element || (v17 = *(Element + 108), (v18 = ausdk::AUScope::GetElement((this + 128), 0)) == 0))
    {
      ausdk::Throw(0xFFFFD583);
    }

    if (!v17)
    {
LABEL_82:
      result = 0;
      *(this + 266) = 0;
      return result;
    }

    v20 = 0;
    v21 = *(v18 + 80);
    LODWORD(v19) = *(this + 84);
    v22 = (ceil(v21 * 100.0 / 1000.0) + v19);
    v23 = this + 1816;
    v24 = this + 1944;
    v73 = this + 536;
    v74 = this + 2072;
    mBuffers = a4->mBuffers;
    v70 = a3->mBuffers;
    p_mData = &a4->mBuffers[0].mData;
    v72 = &a3->mBuffers[0].mData;
    v68 = v15;
    v67 = v17;
    while (1)
    {
      v25 = *&v23[4 * v20];
      if (v25 == *&v24[4 * v20])
      {
        if (!*&v74[4 * v20])
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (*(this + 562))
        {
          v39 = ausdk::AUScope::GetElement((this + 2200), v20);
          v40 = 0;
        }

        else
        {
          v39 = ausdk::AUScope::GetElementOrError<ausdk::AUElement>(this + 32, 0);
          if ((v41 & 1) == 0)
          {
            abort();
          }

          v40 = v20;
        }

        v42 = vcvtad_u64_f64(v21 * ausdk::AUElement::GetParameter(v39, v40) / 1000.0);
        if (*&v74[4 * v20] != v42 || *(this + 533) == 1)
        {
          v43 = &v73[40 * v20];
          *v43 = v22;
          *(v43 + 4) = xmmword_1DE09C160;
          v44 = *(v43 + 3);
          v45 = *(v43 + 4);
          if (v22 == (v45 - v44) >> 2)
          {
            if (v45 != v44)
            {
              bzero(*(v43 + 3), v45 - v44);
            }

            v46 = v22;
          }

          else
          {
            std::valarray<float>::resize((v43 + 24), v22);
            v44 = *(v43 + 3);
            v46 = (*(v43 + 4) - v44) >> 2;
          }

          if (v46 >= 1)
          {
            bzero(v44, 4 * v46);
          }

          if (v42 >= v22)
          {
            v47 = v22;
          }

          else
          {
            v47 = v42;
          }

          *(v43 + 2) = v47;
          *(v43 + 4) = v47;
          *&v74[4 * v20] = v42;
          v24 = this + 1944;
        }

        *&v24[4 * v20] = v25;
        if (!v42)
        {
LABEL_56:
          v48 = &v70[v20];
          v49 = &mBuffers[v20];
          mDataByteSize = v48->mDataByteSize;
          if (mDataByteSize == v49->mDataByteSize)
          {
            mData = v48->mData;
            v52 = v49->mData;
            if (mData != v52)
            {
              memcpy(v52, mData, mDataByteSize);
            }
          }

          goto LABEL_81;
        }
      }

      v76[0] = v72[2 * v20];
      v75 = p_mData[2 * v20];
      v26 = &v73[40 * v20];
      if (*(v26 + 1) == 1)
      {
        v27 = *v26;
        v28 = *(v26 + 2);
        LODWORD(v29) = 1;
        if (v15 && v27 != v28)
        {
          v30 = 0;
          if (v27 - v28 >= v15)
          {
            v31 = v15;
          }

          else
          {
            v31 = v27 - v28;
          }

          v32 = v27 - *(v26 + 4);
          if (v32 >= v31)
          {
            v33 = v31;
          }

          else
          {
            v33 = v32;
          }

          v34 = v76;
          do
          {
            v35 = *v34;
            v34 += 2;
            memcpy((*(v26 + 3) + 4 * (*(v26 + 4) + *v26 * v30++)), v35, 4 * v33);
            v29 = *(v26 + 1);
          }

          while (v30 < v29);
          if (v32 >= v31)
          {
            v23 = this + 1816;
          }

          else
          {
            v23 = this + 1816;
            if (v29)
            {
              v36 = 0;
              v37 = v76;
              do
              {
                v38 = *v37;
                v37 += 2;
                memcpy((*(v26 + 3) + 4 * (*v26 * v36++)), (v38 + 4 * v33), 4 * (v31 - v33));
                v29 = *(v26 + 1);
              }

              while (v36 < v29);
            }
          }

          v28 = *(v26 + 2) + v31;
          *(v26 + 2) = v28;
          v53 = *(v26 + 4) + v31;
          *(v26 + 4) = v53;
          v27 = *v26;
          v54 = v53 >= *v26;
          v55 = v53 - *v26;
          v15 = v68;
          v17 = v67;
          if (v54)
          {
            *(v26 + 4) = v55;
          }

          v24 = this + 1944;
        }

        if (v15 && v29 == 1 && v28)
        {
          v56 = 0;
          if (v28 >= v15)
          {
            v57 = v15;
          }

          else
          {
            v57 = v28;
          }

          v58 = v27 - *(v26 + 3);
          if (v58 >= v57)
          {
            v59 = v57;
          }

          else
          {
            v59 = v58;
          }

          v60 = &v75;
          do
          {
            v61 = *v60;
            v60 += 2;
            memcpy(v61, (*(v26 + 3) + 4 * (*(v26 + 3) + *v26 * v56++)), 4 * v59);
            v62 = *(v26 + 1);
          }

          while (v56 < v62);
          if (v58 < v57 && v62)
          {
            v63 = 0;
            v64 = &v75;
            do
            {
              v65 = *v64;
              v64 += 2;
              memcpy(&v65[4 * v59], (*(v26 + 3) + 4 * (*v26 * v63++)), 4 * (v57 - v59));
            }

            while (v63 < *(v26 + 1));
          }

          v66 = *(v26 + 3) + v57;
          *(v26 + 2) -= v57;
          *(v26 + 3) = v66;
          v15 = v68;
          v23 = this + 1816;
          v17 = v67;
          v24 = this + 1944;
          if (v66 >= *v26)
          {
            *(v26 + 3) = v66 - *v26;
          }
        }
      }

LABEL_81:
      if (++v20 == v17)
      {
        goto LABEL_82;
      }
    }
  }

  if ((*(this + 532) & 1) == 0)
  {
    AUChannelSpecificDelay::ClearRingBuffers(this);
  }

  mNumberBuffers = a3->mNumberBuffers;
  if (mNumberBuffers == a4->mNumberBuffers && mNumberBuffers != 0)
  {
    v11 = 0;
    v12 = &a4->mBuffers[0].mData;
    v13 = &a3->mBuffers[0].mData;
    do
    {
      v14 = *(v13 - 1);
      if (v14 == *(v12 - 1) && *v13 != *v12)
      {
        memcpy(*v12, *v13, v14);
        mNumberBuffers = a3->mNumberBuffers;
      }

      ++v11;
      v12 += 2;
      v13 += 2;
    }

    while (v11 < mNumberBuffers);
  }

  result = 0;
  *(this + 532) = 1;
  return result;
}

uint64_t AUChannelSpecificDelay::SetParameter(AUChannelSpecificDelay *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  v5 = a4;
  v13 = *MEMORY[0x1E69E9840];
  v9 = ausdk::AUBase::SetParameter(this, a2, a3, a4, a5);
  if (*(this + 562))
  {
    if (a3 != 4)
    {
      return 4294956430;
    }

LABEL_7:
    ++*(this + v5 + 454);
    return v9;
  }

  {
    v12[0] = xmmword_1DE103580;
    v12[1] = unk_1DE103590;
    v12[2] = xmmword_1DE1035A0;
    v12[3] = unk_1DE1035B0;
    std::unordered_map<unsigned int,unsigned int>::unordered_map(v12, 8);
    __cxa_atexit(std::unordered_map<unsigned int,unsigned int>::~unordered_map[abi:ne200100], &AUChannelSpecificDelay::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::channelIndexMapByParameterID, &dword_1DDB85000);
  }

  v10 = std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::find<unsigned int>(&AUChannelSpecificDelay::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::channelIndexMapByParameterID, a2);
  if (v10)
  {
    v5 = *(v10 + 5);
    goto LABEL_7;
  }

  return v9;
}

unsigned int *std::unordered_map<unsigned int,unsigned int>::unordered_map(unsigned int *result, uint64_t a2)
{
  AUChannelSpecificDelay::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::channelIndexMapByParameterID = 0u;
  *&qword_1ECDA9DA0 = 0u;
  dword_1ECDA9DB0 = 1065353216;
  if (a2)
  {
    for (i = result; i != &result[2 * a2]; i += 2)
    {
      v3 = *i;
      if (!*(&AUChannelSpecificDelay::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::channelIndexMapByParameterID + 1))
      {
        goto LABEL_19;
      }

      v4 = vcnt_s8(*(&AUChannelSpecificDelay::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::channelIndexMapByParameterID + 8));
      v4.i16[0] = vaddlv_u8(v4);
      if (v4.u32[0] > 1uLL)
      {
        v5 = *i;
        if (*(&AUChannelSpecificDelay::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::channelIndexMapByParameterID + 1) <= v3)
        {
          v5 = v3 % DWORD2(AUChannelSpecificDelay::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::channelIndexMapByParameterID);
        }
      }

      else
      {
        v5 = (DWORD2(AUChannelSpecificDelay::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::channelIndexMapByParameterID) - 1) & v3;
      }

      v6 = *(AUChannelSpecificDelay::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::channelIndexMapByParameterID + 8 * v5);
      if (!v6 || (v7 = *v6) == 0)
      {
LABEL_19:
        operator new();
      }

      while (1)
      {
        v8 = v7[1];
        if (v8 == v3)
        {
          break;
        }

        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *(&AUChannelSpecificDelay::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::channelIndexMapByParameterID + 1))
          {
            v8 %= *(&AUChannelSpecificDelay::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::channelIndexMapByParameterID + 1);
          }
        }

        else
        {
          v8 &= *(&AUChannelSpecificDelay::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::channelIndexMapByParameterID + 1) - 1;
        }

        if (v8 != v5)
        {
          goto LABEL_19;
        }

LABEL_18:
        v7 = *v7;
        if (!v7)
        {
          goto LABEL_19;
        }
      }

      if (*(v7 + 4) != v3)
      {
        goto LABEL_18;
      }
    }
  }

  return result;
}

void sub_1DDF6DAF4(_Unwind_Exception *a1)
{
  operator delete(v1);
  std::__hash_table<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::tuple<__CFString const*,float,float,float,AudioUnitParameterUnit,unsigned int>>>>::~__hash_table(&AUChannelSpecificDelay::SetParameter(unsigned int,unsigned int,unsigned int,float,unsigned int)::channelIndexMapByParameterID);
  _Unwind_Resume(a1);
}

uint64_t AUChannelSpecificDelay::SetProperty(AUChannelSpecificDelay *this, int a2, int a3, unsigned int a4, _DWORD *a5, unsigned int a6)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 64102)
  {
    if (a6 >= 4)
    {
      v8 = 2248;
      goto LABEL_11;
    }

    return 4294956445;
  }

  if (a2 == 21)
  {
    if (a6 >= 4)
    {
      v8 = 528;
LABEL_11:
      v6 = 0;
      *(this + v8) = *a5;
      return v6;
    }

    return 4294956445;
  }

  return 4294956417;
}

uint64_t AUChannelSpecificDelay::GetProperty(AUChannelSpecificDelay *this, int a2, int a3, unsigned int a4, _DWORD *a5)
{
  if (a3)
  {
    return 4294956417;
  }

  if (a2 == 21)
  {
    v6 = 528;
    goto LABEL_7;
  }

  if (a2 == 64102)
  {
    v6 = 2248;
LABEL_7:
    v5 = 0;
    *a5 = *(this + v6);
    return v5;
  }

  return 4294956417;
}

uint64_t AUChannelSpecificDelay::GetPropertyInfo(AUChannelSpecificDelay *this, int a2, int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a3 || a2 != 64102 && a2 != 21)
  {
    return 4294956417;
  }

  result = 0;
  *a6 = 1;
  *a5 = 4;
  return result;
}

uint64_t AUChannelSpecificDelay::Initialize(AUChannelSpecificDelay *this)
{
  Element = ausdk::AUScope::GetElement((this + 80), 0);
  if (!Element)
  {
    goto LABEL_27;
  }

  v3 = *(Element + 96);
  v20 = *(Element + 80);
  *v21 = v3;
  *&v21[16] = *(Element + 112);
  v4 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v4)
  {
    goto LABEL_27;
  }

  v6 = *(v4 + 96);
  *&v19.mSampleRate = *(v4 + 80);
  *&v19.mBytesPerPacket = v6;
  *&v19.mBitsPerChannel = *(v4 + 112);
  if (*&v20 != v19.mSampleRate)
  {
    return 4294956428;
  }

  if (DWORD2(v20) != v19.mFormatID)
  {
    return 4294956428;
  }

  if (*v21 != *&v19.mBytesPerPacket)
  {
    return 4294956428;
  }

  v7 = *&v21[12];
  if (*&v21[12] != *&v19.mChannelsPerFrame || !CA::Implementation::EquivalentFormatFlags(&v20, &v19, v5))
  {
    return 4294956428;
  }

  v8 = *(this + 562) ? 32 : 8;
  if (v7 > v8)
  {
    return 4294956428;
  }

  v10 = ausdk::AUScope::GetElement((this + 128), 0);
  if (!v10)
  {
LABEL_27:
    ausdk::Throw(0xFFFFD583);
  }

  v12 = 0;
  LODWORD(v11) = *(this + 84);
  v13 = (ceil(*(v10 + 80) * 100.0 / 1000.0) + v11);
  v14 = (this + 568);
  do
  {
    *(v14 - 8) = v13;
    *(v14 - 28) = xmmword_1DE09C160;
    v15 = *(v14 - 1);
    v16 = *v14 - v15;
    if (v13 == v16 >> 2)
    {
      if (*v14 != v15)
      {
        bzero(*(v14 - 1), v16);
      }

      v17 = v13;
    }

    else
    {
      std::valarray<float>::resize((v14 - 1), v13);
      v15 = *(v14 - 1);
      v17 = (*v14 - v15) >> 2;
    }

    if (v17 >= 1)
    {
      bzero(v15, 4 * v17);
    }

    result = 0;
    *(v14 - 6) = 0;
    *(v14 - 4) = 0;
    ++v12;
    if (*(this + 562))
    {
      v18 = 32;
    }

    else
    {
      v18 = 8;
    }

    v14 += 5;
  }

  while (v12 < v18);
  return result;
}

void AUChannelSpecificDelay::CreateExtendedElements(AUChannelSpecificDelay *this)
{
  ausdk::AUScope::Initialize((this + 2200), this, 4, 32);
  for (i = 0; i != 32; ++i)
  {
    std::to_string(&v10, i);
    v3 = std::string::insert(&v10, 0, "Channel", 7uLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v12 = v3->__r_.__value_.__r.__words[2];
    *__p = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (v12 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if (v5)
    {
      if (v12 >= 0)
      {
        v6 = HIBYTE(v12);
      }

      else
      {
        v6 = __p[1];
      }

      v13 = CFStringCreateWithBytes(0, v5, v6, 0x8000100u, 0);
      if (!v13)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "Could not construct");
      }

      if (v12 < 0)
      {
LABEL_11:
        operator delete(__p[0]);
      }
    }

    else
    {
      v13 = 0;
      if (v12 < 0)
      {
        goto LABEL_11;
      }
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    Element = ausdk::AUScope::GetElement((this + 2200), i);
    ausdk::Owned<__CFString const*>::operator=((Element + 72), v13);
    v8 = ausdk::AUScope::GetElement((this + 2200), i);
    (*(*v8 + 40))(v8, 1);
    if (v13)
    {
      CFRelease(v13);
    }
  }
}

void sub_1DDF6DFB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef((v21 - 40));
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void AUChannelSpecificDelay::~AUChannelSpecificDelay(AUChannelSpecificDelay *this)
{
  AUChannelSpecificDelay::~AUChannelSpecificDelay(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592F928;
  v7 = (this + 2216);
  std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v2 = 1280;
  do
  {
    v3 = this + v2;
    v4 = *(this + v2 + 520);
    if (v4)
    {
      v5 = *(v3 + 66);
      if (v5 != v4)
      {
        *(v3 + 66) = &v5[(v4 - v5 + 3) & 0xFFFFFFFFFFFFFFFCLL];
      }

      v6 = v3 + 520;
      operator delete(v4);
      *v6 = 0;
      v6[1] = 0;
    }

    v2 -= 40;
  }

  while (v2);

  ausdk::AUBase::~AUBase(this);
}

uint64_t ABLRingBuffer<float>::~ABLRingBuffer(uint64_t a1)
{
  v3 = (a1 + 24);
  v2 = *(a1 + 24);
  if (v2)
  {
    v4 = v3[1];
    if (v4 != v2)
    {
      *(a1 + 32) = &v4[(v2 - v4 + 3) & 0xFFFFFFFFFFFFFFFCLL];
    }

    operator delete(v2);
    *v3 = 0;
    v3[1] = 0;
  }

  return a1;
}

uint64_t AUToneMeister::algorithm(AUToneMeister *this, int a2)
{
  if (a2)
  {
    return 0;
  }

  else
  {
    return *(this + 544);
  }
}

uint64_t AUToneMeister::GetParameterValueStrings(AUToneMeister *this, unsigned int a2, unsigned int a3, const __CFArray **a4)
{
  if (!a4)
  {
    return 0;
  }

  v5 = *(*(this + 211) + 4 * a3);
  if (DspLib::ToneMeister::Parameters::isAutomatedFilterStateParameter(v5))
  {
    v6 = _ZGRN6DspLib11ToneMeister10ParametersL26kAutomatedFilterStateNamesE__4479;
    v7 = 3;
LABEL_4:
    v8 = AUDspLib::CFArrayOfStringsCreateWithCArrayOfStrings(v6, v7);
    result = 0;
    *a4 = v8;
    return result;
  }

  if (DspLib::ToneMeister::Parameters::isFilterParameter(v5))
  {
    if (DspLib::ToneMeister::Parameters::filterParameter(v5) == 1)
    {
      v6 = _ZGRN6DspLib11ToneMeister10ParametersL16kFilterTypeNamesE__4483;
      v7 = 25;
      goto LABEL_4;
    }

    if (!DspLib::ToneMeister::Parameters::filterParameter(v5))
    {
      v6 = &_ZGRN6DspLib11ToneMeister10ParametersL17kFilterStateNamesE_;
      v7 = 8;
      goto LABEL_4;
    }
  }

  return 4294956418;
}

uint64_t AUToneMeister::RestoreState(id *this, void *a2)
{
  [this[269] removeAllObjects];
  v4 = this[269];
  v5 = [a2 objectForKey:@"groupNames"];
  [v4 addEntriesFromDictionary:v5];

  v6 = AUDspLib::RestoreState(this, a2);
  if (!v6)
  {
    (*(*this + 19))(this, 3, 0, 0, 0, *(this + 536));
    AUToneMeister::enqueueNewToneMeister(this);
  }

  return v6;
}

_BYTE *AUToneMeister::enqueueNewToneMeister(_BYTE *this)
{
  v1 = atomic_load(this + 2160);
  if (v1)
  {
    v2 = this;
    if (this[17] == 1)
    {
      this = *MEMORY[0x1E69E3C08];
      if (*MEMORY[0x1E69E3C08])
      {
        v3 = *(v2 + 273);
        v4 = caulk::rt_safe_memory_resource::rt_allocate(this);
        *(v4 + 16) = 0;
        *(v4 + 24) = v2;
        *v4 = &unk_1F592FE68;
        *(v4 + 8) = 0;

        return caulk::concurrent::messenger::enqueue(v3, v4);
      }

      else
      {
        __break(1u);
      }
    }
  }

  return this;
}

caulk::rt_safe_memory_resource *caulk::concurrent::details::rt_message_call<AUToneMeister::enqueueNewToneMeister(void)::$_0>::perform(caulk::concurrent::message *a1)
{
  v3 = a1;
  v1 = atomic_load((*(a1 + 3) + 2160));
  if (v1)
  {
    AUToneMeister::newToneMeister(&v4);
  }

  return caulk::concurrent::details::rt_message_call<AUECMIMO::LogMaster(void)::$_1,int &,float,float>::rt_cleanup::~rt_cleanup(&v3);
}

BOOL ca::concurrent::deferred_deletion_queue<DspLib::ToneMeister::Algorithm,10ul,std::default_delete<DspLib::ToneMeister::Algorithm>>::pop(uint64_t a1, uint64_t *a2)
{
  v11 = 0;
  v4 = boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::pop<std::vector<std::vector<float>> *>((a1 + 64), &v11);
  if (v4)
  {
    v5 = v11;
    if (!v11)
    {
      __assert_rtn("pop", "deferred_deletion_queue.h", 115, "pendingObject");
    }

    v6 = *a2;
    if (*a2)
    {
      *a2 = 0;
      v10 = v6;
      if (!boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::do_push<false>(a1 + 1024, &v10))
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, "trash queue exceeded capacity, object memory leaked");
      }

      v7 = *a2;
      *a2 = v5;
      if (v7)
      {
        (*(*v7 + 8))(v7);
      }
    }

    else
    {
      *a2 = v11;
    }
  }

  return v4;
}

BOOL ca::concurrent::deferred_deletion_queue<DspLib::ToneMeister::Algorithm,10ul,std::default_delete<DspLib::ToneMeister::Algorithm>>::drain_trash(uint64_t a1)
{
  for (i = 0; ; (*(*i + 8))(i))
  {
    result = boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::pop<std::vector<std::vector<float>> *>((a1 + 1024), &i);
    if (!result)
    {
      break;
    }

    if (!i)
    {
      __assert_rtn("drain_trash", "deferred_deletion_queue.h", 148, "trashObject");
    }
  }

  return result;
}

DspLib::ToneMeister::Algorithm *DspLib::ToneMeister::Algorithm::Algorithm(DspLib::ToneMeister::Algorithm *this)
{
  v2 = DspLib::AlgorithmBase::AlgorithmBase(this, &DspLib::ToneMeister::Parameters::kDefault, 0x300uLL, DspLib::ToneMeister::Parameters::kMinimum, 768, &DspLib::ToneMeister::Parameters::kMaximum, 768);
  *v2 = &unk_1F591A748;
  *(v2 + 3312) = 0;
  *(v2 + 3320) = 0u;
  *(v2 + 3336) = 0u;
  *(v2 + 3352) = 0u;
  *(v2 + 3368) = 0u;
  *(v2 + 3384) = 0u;
  *(v2 + 3400) = 0u;
  *(v2 + 3416) = 0u;
  *(v2 + 3432) = 0u;
  *(v2 + 3448) = 0;
  DspLib::FFT::Filterbank::Filterbank((v2 + 3456), 0);
  *(this + 980) = 0;
  *(this + 1962) = 0;
  *(this + 978) = 0;
  *(this + 3864) = 0u;
  *(this + 3880) = 0u;
  *(this + 3896) = 0u;
  *(this + 982) = 1065353216;
  *(this + 246) = 0u;
  *(this + 247) = 0u;
  *(this + 248) = 0u;
  *(this + 249) = 0u;
  DspLib::copy(&DspLib::ToneMeister::Parameters::kMaximum, 768, this + 240);
  return this;
}

void sub_1DDF6E9A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  std::unique_ptr<DspLib::ToneMeister::CrossFade>::reset[abi:ne200100]((v10 + 3992), 0);
  a10 = (v10 + 3968);
  std::vector<std::unique_ptr<DspLib::AlgorithmInterface>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v13 = *(v10 + 3960);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v14 = *(v10 + 3944);
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v15 = *(v10 + 3888);
  if (v15)
  {
    operator delete(v15);
  }

  v16 = *v11;
  if (*v11)
  {
    *(v10 + 3872) = v16;
    operator delete(v16);
  }

  DspLib::FFT::Filterbank::~Filterbank((v10 + 3456));
  v17 = *(v10 + 3432);
  if (v17)
  {
    *(v10 + 3440) = v17;
    operator delete(v17);
  }

  v18 = *(v10 + 3408);
  if (v18)
  {
    *(v10 + 3416) = v18;
    operator delete(v18);
  }

  v19 = *(v10 + 3384);
  if (v19)
  {
    *(v10 + 3392) = v19;
    operator delete(v19);
  }

  DspLib::Biquad::Filter::~Filter((v10 + 3312));
  DspLib::AlgorithmBase::~AlgorithmBase(v10);
  _Unwind_Resume(a1);
}

void caulk::concurrent::details::rt_message_call<AUToneMeister::enqueueNewToneMeister(void)::$_0>::~rt_message_call(caulk::concurrent::message *a1)
{
  caulk::concurrent::message::~message(a1);

  JUMPOUT(0x1E12BD160);
}

uint64_t AUToneMeister::SaveState(id *this, ausdk **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  AUDspLib::SaveState(this, a2);
  if ((*(*this + 79))(this, 0))
  {
    [this[269] allKeys];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v4 = v13 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = *v13;
      do
      {
        v7 = 0;
        do
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v12 + 1) + 8 * v7);
          v9 = (*(*this + 79))(this, 0);
          if (DspLib::ToneMeister::Algorithm::groupIsEmpty(v9, [v8 integerValue]))
          {
            [this[269] removeObjectForKey:v8];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }
  }

  v10 = *a2;
  applesauce::CF::StringRef::get_ns(*a2);
  [objc_claimAutoreleasedReturnValue() setObject:this[269] forKey:@"groupNames"];

  return 0;
}

uint64_t AUToneMeister::ProcessMultipleBufferLists(AUToneMeister *this, unsigned int *a2, uint64_t a3, int a4, const AudioBufferList **a5, int a6, AudioBufferList **a7)
{
  if (a4 == 1 && a6 == 1)
  {
    return (*(*this + 176))(this, a2, *a5, *a7, a3);
  }

  else
  {
    return 4294956428;
  }
}

uint64_t AUToneMeister::ProcessBufferLists(AUToneMeister *this, unsigned int *a2, const AudioBufferList *a3, AudioBufferList *a4, unsigned int a5)
{
  v55 = *MEMORY[0x1E69E9840];
  if (*(this + 452) < a5)
  {
    return 4294956422;
  }

  if (*(this + 17) != 1)
  {
    return 4294956429;
  }

  result = SimpleMeters::ProcessInputBufferList((this + 1832), a5, a3);
  if (!result)
  {
    if (a3 != a4)
    {
      v10 = 0;
      p_mData = &a3->mBuffers[0].mData;
      for (i = &a4->mBuffers[0].mData; ; i += 2)
      {
        v13 = *(this + 265);
        v14 = v13 == *(this + 266) ? 0 : *v13;
        if (v10 >= v14)
        {
          break;
        }

        result = *i;
        if (*p_mData != *i)
        {
          result = memcpy(result, *p_mData, 4 * a5);
        }

        ++v10;
        p_mData += 2;
      }
    }

    if ((*(this + 2113) & 1) == 0)
    {
      if (*(*(this + 271) + 32))
      {
        goto LABEL_23;
      }

      v15 = 0;
      do
      {
        v16 = v15;
        result = ca::concurrent::deferred_deletion_queue<DspLib::ToneMeister::Algorithm,10ul,std::default_delete<DspLib::ToneMeister::Algorithm>>::pop(this + 2304, this + 545);
        v15 = 1;
      }

      while ((result & 1) != 0);
      if ((v16 & 1) == 0)
      {
LABEL_23:
        v18 = 0;
      }

      else
      {
        v17 = *(this + 544);
        result = *(this + 545);
        *(this + 544) = result;
        *(this + 545) = v17;
        v18 = 1;
        if (result && v17)
        {
          DspLib::ToneMeister::Algorithm::copyStatesFrom(result, v17);
        }
      }

      MEMORY[0x1EEE9AC00](result);
      v20 = v49 - ((v19 + 15) & 0xFFFFFFFF0);
      if (v19 >= 0x200)
      {
        v21 = 512;
      }

      else
      {
        v21 = v19;
      }

      bzero(v49 - ((v19 + 15) & 0xFFFFFFFF0), v21);
      v23 = *(this + 265);
      if (v23 == *(this + 266))
      {
        v24 = 0;
      }

      else
      {
        v24 = *v23;
        if (v24)
        {
          v25 = &a4->mBuffers[0].mData;
          v26 = v20;
          v27 = v24;
          do
          {
            v28 = *v25;
            v25 += 2;
            *v26++ = v28;
            --v27;
          }

          while (v27);
        }
      }

      if ((v18 & 1) != 0 || *(*(this + 271) + 32) == 1)
      {
        v49[1] = v49;
        if (a5 <= 1uLL)
        {
          v29 = 1;
        }

        else
        {
          v29 = a5;
        }

        if (v24 == 1)
        {
          v30 = v29;
        }

        else
        {
          v30 = ((v29 - 1) & 0xFFFFFFFC) + 4;
        }

        MEMORY[0x1EEE9AC00](v22);
        v32 = v49 - v31;
        MEMORY[0x1EEE9AC00](v33);
        v35 = v49 - ((v34 + 15) & 0xFFFFFFFF0);
        if (v34 >= 0x200)
        {
          v36 = 512;
        }

        else
        {
          v36 = v34;
        }

        bzero(v49 - ((v34 + 15) & 0xFFFFFFFF0), v36);
        if (v24)
        {
          v37 = v35;
          v38 = v24;
          do
          {
            *v37++ = v32;
            v32 += 4 * v30;
            --v38;
          }

          while (v38);
        }

        if (*(this + 544))
        {
          v50[0] = v20;
          v50[1] = v24;
          v50[2] = a5;
          v52 = v35;
          v53 = v24;
          v54 = a5;
          DspLib::copy(v50, &v52);
          v39 = *(this + 544);
          v52 = v35;
          v53 = v24;
          v54 = a5;
          LOBYTE(v50[0]) = 0;
          v51 = 0;
          (*(*v39 + 176))(v39, &v52, v50);
        }

        v40 = *(this + 545);
        if (v40)
        {
          v52 = v20;
          v53 = v24;
          v54 = a5;
          LOBYTE(v50[0]) = 0;
          v51 = 0;
          (*(*v40 + 176))(v40, &v52, v50);
          AUDspLib::enqueueStatusForInstance(this, 0, *(this + 545), a5);
        }

        v41 = *(this + 265);
        if (v41 == *(this + 266))
        {
          v42 = 0;
        }

        else
        {
          v42 = *v41;
        }

        if (v42)
        {
          DspLib::multiply();
        }

        v43 = *(this + 271);
        v44 = *(v43 + 24);
        v45 = *(v43 + 16) + a5;
        v46 = v45 >= v44;
        v47 = v45 < v44;
        if (v46)
        {
          v45 = 0;
        }

        *(v43 + 16) = v45;
        *(v43 + 32) = v47;
      }

      else
      {
        v48 = *(this + 544);
        if (v48)
        {
          v52 = v20;
          v53 = v24;
          v54 = a5;
          LOBYTE(v50[0]) = 0;
          v51 = 0;
          (*(*v48 + 176))(v48, &v52, v50);
          AUDspLib::enqueueStatusForInstance(this, 0, *(this + 544), a5);
        }
      }
    }

    SimpleMeters::ProcessOutputBufferList((this + 1832), a5, a4);
    return 0;
  }

  return result;
}

uint64_t AUToneMeister::SetParameter(AUToneMeister *this, unsigned int a2, float a3)
{
  if (a2 == 3)
  {
    *(this + 536) = a3;
    if (!AUToneMeister::parameterValueDidChange(this, 3u, a3))
    {
      return 0;
    }

    goto LABEL_5;
  }

  if (AUToneMeister::parameterValueDidChange(this, a2, a3))
  {
LABEL_5:
    AUToneMeister::enqueueNewToneMeister(this);
  }

  return 0;
}

BOOL AUToneMeister::parameterValueDidChange(AUToneMeister *this, unsigned int a2, float a3)
{
  v11 = 0.0;
  Parameter = ausdk::AUBase::GetParameter(this, a2, 0, 0, &v11);
  if (a2 == 3)
  {
    v10 = 0.0;
    ausdk::AUBase::GetParameter(this, 0x2FEu, 0, 0, &v10);
    result = 0;
    if (vabds_f32(a3, v11) <= v10)
    {
      return result;
    }

    v8 = this;
    v9 = 3;
  }

  else
  {
    if (DspLib::isEqual(Parameter, a3, v11, 1.0e-20))
    {
      return 0;
    }

    v8 = this;
    v9 = a2;
  }

  return AUDspLib::SetParameter(v8, v9, 0, 0, a3) == 0;
}

uint64_t AUToneMeister::SetProperty(AUToneMeister *this, int a2, int a3, unsigned int a4, int *a5, void *a6, int *a7)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a2 <= 6619)
  {
    if (a2 == 6602)
    {
      if (a6 == 4)
      {
        *(this + 544) = *a5;
        AUToneMeister::enqueueNewToneMeister(this);
        return 0;
      }
    }

    else
    {
      if (a2 != 6604)
      {
LABEL_26:
        v19 = AUDspLib::SetProperty(this, a2, a3, a4, a5, a6, a7);
        v11 = v19;
        if (a2 == 6601 && !v19)
        {
          AUToneMeister::enqueueNewToneMeister(this);
        }

        return v11;
      }

      if (a6 == 8)
      {
        v12 = *a5;
        applesauce::CF::StringRef::get_ns(*a5);
        v13 = [objc_claimAutoreleasedReturnValue() objectForKeyedSubscript:@"channelSplitMode"];
        *(this + 544) = [v13 intValue];
        AUToneMeister::enqueueNewToneMeister(this);

LABEL_21:
        return 0;
      }
    }

    return 4294956445;
  }

  if (a2 != 6620)
  {
    if (a2 != 1953326958)
    {
      if (a2 == 1718773107)
      {
        v10 = 0.0;
        if (*a5 >= 0.0)
        {
          v10 = (*(this + 453) >> 1);
          if (*a5 <= v10)
          {
            v10 = *a5;
          }
        }

        v11 = 0;
        *(this + 537) = v10;
        return v11;
      }

      goto LABEL_26;
    }

    if (a6 == 8)
    {
      [*(this + 269) removeAllObjects];
      v18 = *(this + 269);
      v12 = *a5;
      applesauce::CF::StringRef::get_ns(v12);
      objc_claimAutoreleasedReturnValue();
      [v18 addEntriesFromDictionary:v12];
      goto LABEL_21;
    }

    return 4294956445;
  }

  v14 = *(this + 265);
  if (v14 != *(this + 266))
  {
    v15 = *v14;
    if (*v14)
    {
      v16 = *a5;
      if (!v16)
      {
        v17 = toneMeisterLog();
        if (os_log_type_enabled(&v17->super, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1DDB85000, &v17->super, OS_LOG_TYPE_ERROR, "SetProperty( kAudioUnitProperty_DspLibDictionary) Error data\n", buf, 2u);
        }

        v11 = 4294956417;
        goto LABEL_49;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        *buf = 200;
        v17 = [MEMORY[0x1E696AE40] propertyListWithData:v16 options:0 format:buf error:0];
        if (!v17)
        {
          v11 = 0;
LABEL_50:

          return v11;
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v17 = toneMeisterLog();
          if (os_log_type_enabled(&v17->super, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1DDB85000, &v17->super, OS_LOG_TYPE_ERROR, "SetProperty( kAudioUnitProperty_DspLibDictionary) Error: unknown plist format\n", buf, 2u);
          }

          goto LABEL_48;
        }

        v17 = v16;
      }

      DspLib::ToneMeister::Algorithm::Algorithm(buf);
      v30 = buf;
      v31 = v15;
      v29 = 0;
      v22 = AUToneMeisterParameterImporter::importParameters(&v30, v17, &v29, v21);
      if (v29 == 1)
      {
        atomic_store(0, this + 2160);
        v34 = 0;
        (*(*this + 144))(this, 3, 0, 0, &v34);
        v23 = *buf;
        *(v33 + 12) = v34;
        (*(v23 + 160))(buf);
        if (*(this + 439))
        {
          v24 = 0;
          do
          {
            (*(*this + 152))(this, v24, 0, 0, 0, *(v33 + 4 * *(*(this + 211) + 4 * v24)));
            ++v24;
          }

          while (v24 < *(this + 439));
        }

        atomic_store(1u, this + 2160);
        ++*(this + 545);
        AUToneMeister::enqueueNewToneMeister(this);
      }

      else
      {
        v25 = toneMeisterLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v27 = v22;
          v28 = [v22 cStringUsingEncoding:4];
          v34 = 136315138;
          v35 = v28;
          _os_log_error_impl(&dword_1DDB85000, v25, OS_LOG_TYPE_ERROR, "SetProperty( kAudioUnitProperty_DspLibDictionary) Error : importer : %s\n", &v34, 0xCu);
        }
      }

      DspLib::ToneMeister::Algorithm::~Algorithm(buf);
LABEL_48:
      v11 = 0;
LABEL_49:

      goto LABEL_50;
    }
  }

  v20 = toneMeisterLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1DDB85000, v20, OS_LOG_TYPE_ERROR, "SetProperty( kAudioUnitProperty_DspLibDictionary) Error: AU has zero channels, uninitialized?\n", buf, 2u);
  }

  return 4294956429;
}

void sub_1DDF6F7D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  v9 = v7;

  DspLib::ToneMeister::Algorithm::~Algorithm(va);
  _Unwind_Resume(a1);
}

id toneMeisterLog(void)
{
  v1 = &xmmword_1ECDA9000;
  {
    v1 = &xmmword_1ECDA9000;
    if (v4)
    {
      toneMeisterLog(void)::log = os_log_create("com.apple.coreaudio", "AUToneMeister");
      v1 = &xmmword_1ECDA9000;
    }
  }

  v2 = *(v1 + 442);

  return v2;
}

uint64_t AUToneMeister::GetProperty(AUToneMeister *this, int a2, unsigned int a3, unsigned int a4, unint64_t *a5, int *a6)
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (a2 > 6619)
  {
    if (a2 != 6620)
    {
      if (a2 != 1718773107)
      {
        if (a2 != 1953326958)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

      v10 = *(this + 544);
      if (!v10)
      {
LABEL_13:
        v17 = *(this + 269);
        v9 = 0;
        *a5 = v17;
        return v9;
      }

      v22 = *(this + 537);
      v20 = 0;
      v21 = 0.0;
      v11 = (*(*v10 + 48))(v10);
      DspLib::Biquad::amplitudeAndPhaseResponse(v10 + 414, &v22, 1uLL, &v21, 1, &v20, 1, a4, v11, v12, v13);
      v15 = DspLib::amp2dBSafe(v14, v21, 0.000001);
      v9 = 0;
      v16 = v20;
      *a5 = v15;
      *(a5 + 1) = v16;
      return v9;
    }

    if (a3)
    {
      return 4294956430;
    }

    v23 = @"counterSetPropertyDspLibDictionary";
    v19 = [MEMORY[0x1E696AD98] numberWithInt:*(this + 545)];
    v24 = v19;
    *a5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];

    return 0;
  }

  if (a2 == 6602)
  {
    v9 = 0;
    *a5 = *(this + 544);
    return v9;
  }

  if (a2 == 6604)
  {
    v25 = @"channelSplitMode";
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(this + 544)];
    v26[0] = v8;
    *a5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];

    return 0;
  }

LABEL_15:

  return AUDspLib::GetProperty(this, a2, a3, a4, a5, a6);
}

uint64_t AUToneMeister::GetPropertyInfo(AUToneMeister *this, int a2, unsigned int a3, unsigned int a4, unsigned int *a5, BOOL *a6)
{
  if (a2 <= 6619)
  {
    if (a2 == 6602)
    {
      *a6 = 1;
      v6 = 4;
    }

    else
    {
      if (a2 != 6604)
      {
        return AUDspLib::GetPropertyInfo(this, a2, a3, a4, a5, a6);
      }

      *a6 = 1;
      v6 = 8;
    }

    *a5 = v6;
    return 0;
  }

  if (a2 == 6620 || a2 == 1718773107 || a2 == 1953326958)
  {
    *a5 = 8;
    *a6 = 1;
    return 0;
  }

  return AUDspLib::GetPropertyInfo(this, a2, a3, a4, a5, a6);
}

uint64_t AUToneMeister::Reset(AUToneMeister *this)
{
  if (*(this + 17) == 1)
  {
    caulk::pooled_semaphore_mutex::_lock((this + 1824));
    v2 = *(this + 544);
    if (v2)
    {
      (*(*v2 + 168))(v2);
    }

    v3 = *(this + 271);
    if (v3)
    {
      *(v3 + 16) = 0;
      *(v3 + 32) = 0;
    }

    caulk::pooled_semaphore_mutex::_unlock((this + 1824));
  }

  SimpleMeters::Reset(this + 1832);
  return 0;
}

double AUToneMeister::Cleanup(AUToneMeister *this)
{
  v2 = this + 2160;
  atomic_store(0, this + 2160);
  caulk::concurrent::messenger::drain(*(this + 273));
  atomic_store(1u, v2);
  (*(*this + 592))(this);
  *(this + 1585) = 0;
  result = 0.0;
  *(this + 226) = 0;
  *(this + 230) = *(this + 229);
  *(this + 233) = *(this + 232);
  *(this + 266) = *(this + 265);
  return result;
}

uint64_t AUToneMeister::Initialize(AUToneMeister *this)
{
  v1 = AUDspLib::Initialize(this);
  if (!v1)
  {
    AUToneMeister::newToneMeister(&v3);
  }

  return v1;
}

void AUToneMeister::~AUToneMeister(AUToneMeister *this)
{
  AUToneMeister::~AUToneMeister(this);

  JUMPOUT(0x1E12BD150);
}

{
  *this = &unk_1F592FB98;
  v2 = *(this + 545);
  *(this + 545) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 544);
  *(this + 544) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 280) = &unk_1F592FE28;
  ca::concurrent::deferred_deletion_queue<DspLib::ToneMeister::Algorithm,10ul,std::default_delete<DspLib::ToneMeister::Algorithm>>::~deferred_deletion_queue(this + 2304);
  v4 = *(this + 274);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::unique_ptr<DspLib::ToneMeister::CrossFade>::reset[abi:ne200100](this + 271, 0);

  AUDspLib::~AUDspLib(this);
}

uint64_t ca::concurrent::deferred_deletion_queue<DspLib::ToneMeister::Algorithm,10ul,std::default_delete<DspLib::ToneMeister::Algorithm>>::~deferred_deletion_queue(uint64_t a1)
{
  *a1 = &unk_1F592FE48;
  ca::concurrent::deferred_deletion_queue<DspLib::ToneMeister::Algorithm,10ul,std::default_delete<DspLib::ToneMeister::Algorithm>>::drain_trash(a1);
  v3 = 0;
  while (boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::pop<std::vector<std::vector<float>> *>((a1 + 64), &v3))
  {
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::~queue(a1 + 1024);
  boost::lockfree::queue<std::vector<std::vector<float>> *,boost::lockfree::capacity<10ul>>::~queue(a1 + 64);
  return a1;
}

void ca::concurrent::deferred_deletion_queue<DspLib::ToneMeister::Algorithm,10ul,std::default_delete<DspLib::ToneMeister::Algorithm>>::~deferred_deletion_queue(uint64_t a1)
{
  ca::concurrent::deferred_deletion_queue<DspLib::ToneMeister::Algorithm,10ul,std::default_delete<DspLib::ToneMeister::Algorithm>>::~deferred_deletion_queue(a1);

  JUMPOUT(0x1E12BD150);
}

void ca::concurrent::deferred_deletion_stash<DspLib::ToneMeister::Algorithm,10ul,std::default_delete<DspLib::ToneMeister::Algorithm>>::~deferred_deletion_stash(void *a1)
{
  *a1 = &unk_1F592FE28;
  ca::concurrent::deferred_deletion_queue<DspLib::ToneMeister::Algorithm,10ul,std::default_delete<DspLib::ToneMeister::Algorithm>>::~deferred_deletion_queue((a1 + 8));

  JUMPOUT(0x1E12BD150);
}

void *ca::concurrent::deferred_deletion_stash<DspLib::ToneMeister::Algorithm,10ul,std::default_delete<DspLib::ToneMeister::Algorithm>>::~deferred_deletion_stash(void *a1)
{
  *a1 = &unk_1F592FE28;
  ca::concurrent::deferred_deletion_queue<DspLib::ToneMeister::Algorithm,10ul,std::default_delete<DspLib::ToneMeister::Algorithm>>::~deferred_deletion_queue((a1 + 8));
  return a1;
}

uint64_t NoiseSuppression::SNR::VPv3::SetVideoMode(uint64_t this, int a2)
{
  v2 = 0.89;
  if (a2)
  {
    v2 = 0.19;
  }

  *(this + 36) = v2;
  *(this + 92) = v2;
  return this;
}

unsigned int *NoiseSuppression::SNR::VPv3::Process(NoiseSuppression::SNR::VPv3 *this, float *a2, float *a3, const float *a4, const float *a5, float *a6, float *a7, float *a8, float *a9, float *a10, float *a11)
{
  NoiseSuppression::SNR::VPv3::Core::UpdateSNR(this + 8, a2, a4, a6, a8, a10);
  result = NoiseSuppression::SNR::VPv3::Core::UpdateSNR(this + 22, a3, a5, a7, a9, a11);
  ++*(this + 5);
  return result;
}

unsigned int *NoiseSuppression::SNR::VPv3::Core::UpdateSNR(unsigned int *this, float *a2, const float *a3, float *a4, float *a5, float *a6)
{
  v6 = *this;
  if (v6)
  {
    v7 = *(this + 1);
    v8 = v7;
    v9 = *this;
    do
    {
      v10 = *a4++;
      *v8++ = v10 + 1.0e-20;
      --v9;
    }

    while (v9);
    v11 = v7;
    v12 = a6;
    v13 = v6;
    do
    {
      v14 = *a2++;
      v15 = v14;
      v16 = *v11++;
      *v12++ = (v15 / v16) + -1.0;
      --v13;
    }

    while (v13);
    v17 = a6;
    v18 = v6;
    do
    {
      v19 = *v17;
      if (*v17 > 100.0)
      {
        v19 = 100.0;
      }

      *v17++ = v19;
      --v18;
    }

    while (v18);
    v20 = *(this + 4);
    v21 = a3;
    v22 = v7;
    v23 = v20;
    v24 = v6;
    do
    {
      v25 = *v21++;
      v26 = v25;
      v27 = *v22++;
      *v23++ = (1.0 - (*(this + 1) + 0.01)) + (*(this + 1) * ((v26 / (v26 + v27)) * (v26 / (v26 + v27))));
      --v24;
    }

    while (v24);
    v28 = a5;
    v29 = v6;
    do
    {
      v30 = *v20++;
      v31 = v30;
      v32 = *a6++;
      v33 = v32;
      if (v32 < 0.0)
      {
        v33 = 0.0;
      }

      v34 = *a3++;
      v35 = v34;
      v36 = *v7++;
      *v28++ = ((1.0 - v31) * (v35 / v36)) + (v31 * v33);
      --v29;
    }

    while (v29);
    do
    {
      v37 = *a5;
      if (*a5 < -1.0e20)
      {
        v37 = -1.0e20;
      }

      if (v37 > 100.0)
      {
        v37 = 100.0;
      }

      *a5++ = v37;
      --v6;
    }

    while (v6);
  }

  return this;
}

void NoiseSuppression::SNR::VPv3::Init(NoiseSuppression::SNR::VPv3 *this)
{
  std::vector<float>::resize(this + 5, *(this + 8));
  std::vector<float>::resize(this + 8, *(this + 8));
  std::vector<float>::resize(this + 12, *(this + 22));
  std::vector<float>::resize(this + 15, *(this + 22));
  *(this + 24) = 1;
}

void NoiseSuppression::SNR::VPv3::~VPv3(NoiseSuppression::SNR::VPv3 *this)
{
  NoiseSuppression::SNR::VPv3::~VPv3(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592FE90;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;
    operator delete(v5);
  }
}

void NoiseSuppression::SNR::SNREstimator::SetVideoMode(NoiseSuppression::SNR::SNREstimator *this)
{
  v5 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315394;
    v2 = "SNREstimator.h";
    v3 = 1024;
    v4 = 56;
    _os_log_impl(&dword_1DDB85000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d SetVideoMode was set on an SNR estimator that does not support it.", &v1, 0x12u);
  }
}

void NoiseSuppression::SNR::TSNR::Process(NoiseSuppression::SNR::TSNR *this, const float *a2, const float *a3, const float *a4, const float *a5, const float *a6, const float *a7, float *a8, float *a9, float *a10, float *a11)
{
  NoiseSuppression::SNR::TSNR::Core::UpdateSNR((this + 32), a2, a4, a6, a8, a10);
  NoiseSuppression::SNR::TSNR::Core::UpdateSNR((this + 88), a3, a5, a7, a9, a11);
  ++*(this + 5);
}

void NoiseSuppression::SNR::TSNR::Core::UpdateSNR(NoiseSuppression::SNR::TSNR::Core *this, const float *a2, const float *a3, const float *a4, float *a5, float *a6)
{
  v15 = 507307272;
  MEMORY[0x1E12BE5D0](a4, 1, &v15, 0, *(this + 1), 1, *this);
  vDSP_vdiv(*(this + 1), 1, a2, 1, a6, 1, *this);
  __B = 1.0;
  __C = 100.0;
  vDSP_vclip(a6, 1, &__B, &__C, a6, 1, *this);
  v12 = 1.0 - *(this + 1);
  MEMORY[0x1E12BE7F0](a3, 1, this + 4, 0, a5, 1, *this);
  vDSP_vdiv(*(this + 1), 1, a5, 1, a5, 1, *this);
  MEMORY[0x1E12BE9A0](&v12, 0, a5, 1, a5, 1, *this);
  MEMORY[0x1E12BE8F0](a6, 1, &v12, a5, 1, a5, 1, *this);
  v11 = 1065353216;
  MEMORY[0x1E12BE5D0](a5, 1, &v11, 0, *(this + 4), 1, *this);
  vDSP_vdiv(*(this + 4), 1, a5, 1, *(this + 4), 1, *this);
  MEMORY[0x1E12BE990](*(this + 4), 1, *(this + 4), 1, *this);
  MEMORY[0x1E12BE7F0](*(this + 4), 1, a2, 1, a5, 1, *this);
  vDSP_vdiv(*(this + 1), 1, a5, 1, a5, 1, *this);
}

void NoiseSuppression::SNR::TSNR::Init(NoiseSuppression::SNR::TSNR *this)
{
  std::vector<float>::resize(this + 8, *(this + 8));
  std::vector<float>::resize(this + 5, *(this + 8));
  std::vector<float>::resize(this + 15, *(this + 22));
  std::vector<float>::resize(this + 12, *(this + 22));
  v2 = expf(-1.0 / (*(this + 36) * *(this + 4)));
  *(this + 9) = v2;
  *(this + 23) = v2;
  *(this + 24) = 1;
}

void NoiseSuppression::SNR::TSNR::~TSNR(NoiseSuppression::SNR::TSNR *this)
{
  NoiseSuppression::SNR::TSNR::~TSNR(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592FEC8;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  v3 = *(this + 12);
  if (v3)
  {
    *(this + 13) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    *(this + 9) = v4;
    operator delete(v4);
  }

  v5 = *(this + 5);
  if (v5)
  {
    *(this + 6) = v5;
    operator delete(v5);
  }
}

float clsp::PilotTempSensor::processGoertzel(clsp::PilotTempSensor *this, float *a2, float *a3, uint64_t a4)
{
  clsp::PwrGoertzel<float,double>::processBufferReIm(this + 30, a2, a4);
  v8 = *(this + 24) * v7;
  clsp::PwrGoertzel<float,double>::processBufferReIm(this + 35, a3, a4);
  return v8;
}

float clsp::PwrGoertzel<float,double>::processBufferReIm(float *a1, float *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = a1[2];
    do
    {
      v6 = v4;
      v7 = *a2++;
      v4 = (v7 + (v3 * v4)) - v5;
      a1[1] = v4;
      a1[2] = v6;
      v5 = v6;
      --a3;
    }

    while (a3);
  }

  else
  {
    v4 = a1[1];
    v6 = a1[2];
  }

  return -(v6 - (a1[3] * v4));
}

double clsp::PilotTempSensor::reset(clsp::PilotTempSensor *this)
{
  v1 = *(this + 4);
  *(this + 28) = v1;
  *(this + 29) = *(this + 23);
  *(this + 44) = 0;
  result = 0.0;
  *(this + 18) = 0;
  *(this + 124) = 0;
  return result;
}

double clsp::PilotTempSensor::calcCoeffs(clsp::PilotTempSensor *this, double a2)
{
  v4 = 0;
  v47 = *MEMORY[0x1E69E9840];
  v5 = vcvtmd_u64_f64(*(this + 1) * a2 + 0.5);
  do
  {
    v6 = 1 << ++v4;
  }

  while (1 << v4 < v5);
  *(this + 23) = v6;
  v7 = 1.0 / (v6 << v4);
  *(this + 24) = v7;
  v8 = v6;
  v9 = 1.0 - exp(-v6 / (*(this + 3) * a2));
  *(this + 25) = v9;
  v10 = a2 / v8 * round(*(this + 2) / (a2 / v8));
  *(this + 13) = v10;
  v11 = __sincos_stret(v10 * 6.28318531 / a2);
  v12 = v11.__cosval + v11.__cosval;
  *(this + 30) = v12;
  cosval = v11.__cosval;
  sinval = v11.__sinval;
  *(this + 33) = cosval;
  *(this + 34) = sinval;
  *(this + 35) = v12;
  *(this + 38) = cosval;
  *(this + 39) = sinval;
  v15 = spp3Subsystem();
  if (v15)
  {
    if (*(v15 + 8))
    {
      v16 = *v15;
      if (*v15)
      {
        if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEBUG))
        {
          v17 = *(this + 28);
          v18 = *(this + 23);
          v20 = *(this + 3);
          v19 = *(this + 4);
          v21 = *(this + 29);
          v22 = *(this + 1);
          v23 = *(this + 2);
          v25 = 136317698;
          v26 = "PilotTempSensor.cpp";
          v27 = 1024;
          v28 = 77;
          v29 = 2048;
          v30 = v17;
          v31 = 2048;
          v32 = v19;
          v33 = 2048;
          v34 = v22;
          v35 = 1024;
          v36 = v18;
          v37 = 2048;
          v38 = v20;
          v39 = 1024;
          v40 = v21;
          v41 = 2048;
          v42 = v23;
          v43 = 2048;
          v44 = v10;
          v45 = 2048;
          v46 = a2;
          _os_log_impl(&dword_1DDB85000, v16, OS_LOG_TYPE_DEBUG, "%25s:%-5d rebv=%f, reb20=%f desiredwin=%f, thermalsampleperiod=%d, tau=%f, cnt=%d, f_a_des=%f, f_a=%f, fs=%f", &v25, 0x64u);
        }
      }
    }
  }

  return v10;
}

float clsp::PilotTempSensor::processBuffer(clsp::PilotTempSensor *this, const float *a2, const float *a3, unsigned int a4)
{
  shouldTraceRender();
  if (a4)
  {
    v8 = *(this + 10);
    v9 = *(this + 11);
    v10 = *(this + 13);
    v11 = *(this + 14);
    while (1)
    {
      v12 = a4;
      v13 = *(this + 29);
      v14 = a4 >= v13 ? v13 : a4;
      (*(*this + 80))(this, a2, a3, v14);
      v18 = *(this + 29);
      v19 = a4 >= v18;
      a4 -= v18;
      if (!v19)
      {
        break;
      }

      *(this + 124) = 0;
      *(this + 18) = 0;
      *(this + 29) = *(this + 23);
      v20 = v15 <= v10 || v16 <= v11;
      if (!v20 && ((v21 = *(this + 28) + (*(this + 25) * (v17 - *(this + 28))), *(this + 28) = v21, v21 > v8) ? (v22 = v21 < v9) : (v22 = 0), v22))
      {
        v23 = 1;
        *(this + 88) = 1;
      }

      else
      {
        v23 = 0;
      }

      a2 += v14;
      *(this + 89) = v23;
      a3 += v14;
      shouldTraceRender();
      if (!a4)
      {
        return *(this + 28) * *(this + 12);
      }
    }

    shouldTraceRender();
    *(this + 29) -= v12;
  }

  return *(this + 28) * *(this + 12);
}

void clsp::PilotTempSensor::logCoeffs(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v10[0] = *a2;
  v10[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    clsp::TempSensorParams::logCoeffs(a1 + 8, v10);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    clsp::TempSensorParams::logCoeffs(a1 + 8, v10);
  }

  v5 = *a2;
  if (*a2)
  {
    __src = *(a1 + 92);
    clsp::CLSP_Log::LogCLSPData(v5, &__src, 1);
    v5 = *a2;
    if (*a2)
    {
      __src = *(a1 + 96);
      clsp::CLSP_Log::LogCLSPData(v5, &__src, 1);
      v5 = *a2;
      if (*a2)
      {
        __src = *(a1 + 100);
        clsp::CLSP_Log::LogCLSPData(v5, &__src, 1);
        v5 = *a2;
        if (*a2)
        {
          v6 = *(a1 + 104);
          __src = v6;
          clsp::CLSP_Log::LogCLSPData(v5, &__src, 1);
          v5 = *a2;
        }
      }
    }
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v5)
  {
    __src = *(a1 + 120);
    clsp::CLSP_Log::LogCLSPData(v5, &__src, 1);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = *a2;
  v9 = *(a2 + 8);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v8)
  {
    __src = *(a1 + 140);
    clsp::CLSP_Log::LogCLSPData(v8, &__src, 1);
  }

  if (v9)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }
}

float clsp::TempSensorParams::logCoeffs(uint64_t a1, clsp::CLSP_Log **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v5 = *a1;
    __src = v5;
    clsp::CLSP_Log::LogCLSPData(v3, &__src, 1);
    v7 = *a2;
    if (*a2)
    {
      v8 = *(a1 + 8);
      __src = v8;
      clsp::CLSP_Log::LogCLSPData(v7, &__src, 1);
      v9 = *a2;
      if (*a2)
      {
        v10 = *(a1 + 16);
        __src = v10;
        clsp::CLSP_Log::LogCLSPData(v9, &__src, 1);
        v11 = *a2;
        if (*a2)
        {
          v12 = *(a1 + 24);
          __src = v12;
          clsp::CLSP_Log::LogCLSPData(v11, &__src, 1);
          v13 = *a2;
          if (*a2)
          {
            __src = *(a1 + 32);
            clsp::CLSP_Log::LogCLSPData(v13, &__src, 1);
            v14 = *a2;
            if (*a2)
            {
              __src = *(a1 + 36);
              clsp::CLSP_Log::LogCLSPData(v14, &__src, 1);
              v15 = *a2;
              if (*a2)
              {
                __src = *(a1 + 40);
                clsp::CLSP_Log::LogCLSPData(v15, &__src, 1);
                v16 = *a2;
                if (*a2)
                {
                  __src = *(a1 + 44);
                  clsp::CLSP_Log::LogCLSPData(v16, &__src, 1);
                  v17 = *a2;
                  if (*a2)
                  {
                    __src = *(a1 + 48);
                    clsp::CLSP_Log::LogCLSPData(v17, &__src, 1);
                    v18 = *a2;
                    if (*a2)
                    {
                      __src = *(a1 + 56);
                      clsp::CLSP_Log::LogCLSPData(v18, &__src, 1);
                      v19 = *a2;
                      if (*a2)
                      {
                        v20 = *(a1 + 64);
                        __src = v20;
                        clsp::CLSP_Log::LogCLSPData(v19, &__src, 1);
                        v21 = *a2;
                        if (*a2)
                        {
                          v22 = *(a1 + 72);
                          __src = v22;
                          clsp::CLSP_Log::LogCLSPData(v21, &__src, 1);
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
    }
  }

  return result;
}

void *clsp::PilotTempSensor::dump(uint64_t a1, void *a2)
{
  clsp::TempSensorParams::dump(a1 + 8, a2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\nPTSamplePeriod = ", 18);
  v5 = MEMORY[0x1E12BCC20](v4, *(a1 + 92));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\nPTPeriodNormFactor = ", 22);
  v6 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\nGsmooth = ", 11);
  v7 = std::ostream::operator<<();
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\nAnalysisFreq = ", 16);
  v9 = MEMORY[0x1E12BCBF0](v8, *(a1 + 104));
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\n\nGoertzv:\n  ", 13);
  clsp::PwrGoertzel<float,double>::dump(a1 + 120, v10);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "\n\nGoertzi:\n  ", 13);
  clsp::PwrGoertzel<float,double>::dump(a1 + 140, v11);
  return a2;
}

void *clsp::TempSensorParams::dump(uint64_t a1, void *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "DesiredWindowTime = ", 20);
  v5 = MEMORY[0x1E12BCBF0](v4, *a1);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\nDesiredAnalysisFreq = ", 23);
  v7 = MEMORY[0x1E12BCBF0](v6, *(a1 + 8));
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\nSmoothingTau = ", 16);
  v9 = MEMORY[0x1E12BCBF0](v8, *(a1 + 16));
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "\nReb_20C = ", 11);
  v11 = MEMORY[0x1E12BCBF0](v10, *(a1 + 24));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "\nRebMin = ", 10);
  v12 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\nRebMax = ", 10);
  v13 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "\nRebScale = ", 12);
  v14 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "\nVPwrThres = ", 13);
  v15 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\nIPwrThres = ", 13);
  v16 = std::ostream::operator<<();
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "\nmaxBlockSize = ", 16);
  v18 = MEMORY[0x1E12BCC30](v17, *(a1 + 56));
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\nnoiseSampleRate = ", 19);
  v20 = MEMORY[0x1E12BCBF0](v19, *(a1 + 64));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "\nnoiseBandLowerCorner = ", 24);
  MEMORY[0x1E12BCBF0](v21, *(a1 + 72));
  return a2;
}

void *clsp::PwrGoertzel<float,double>::dump(uint64_t a1, void *a2)
{
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "a1 = ", 5);
  v3 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", s1 = ", 7);
  v4 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, ", s2 = ", 7);
  std::ostream::operator<<();
  return a2;
}

uint64_t clsp::BandTempSensor::reset(clsp::BandTempSensor *this)
{
  v2 = *(this + 4);
  *(this + 26) = v2;
  *(this + 44) = 0;
  *(this + 108) = 0;
  *(this + 29) = *(this + 23);
  *(this + 132) = 0;
  *(this + 19) = 0;
  (*(**(this + 20) + 88))(*(this + 20));
  v3 = *(**(this + 21) + 88);

  return v3();
}

double clsp::BandTempSensor::calcCoeffs(clsp::BandTempSensor *this, double a2)
{
  v4 = *(this + 9);
  v5 = exp(*(this + 10) * -6.28318531 / v4);
  v6 = *(this + 1) * v4 + 0.5;
  *&v5 = v5;
  *&v5 = -*&v5;
  *(this + 30) = LODWORD(v5);
  __asm { FMOV            V2.2S, #1.0 }

  v12 = -_D2;
  *(this + 124) = v12;
  *(this + 35) = LODWORD(v5);
  v13 = vcvtmd_u64_f64(v6);
  *(this + 18) = v12;
  *(this + 23) = v13;
  *&v6 = 1.0 / v13;
  *(this + 24) = LODWORD(v6);
  v14 = 1.0 - exp(-v13 / (*(this + 3) * a2));
  *(this + 25) = v14;
  return 0.0;
}

float clsp::BandTempSensor::processBuffer(clsp::BandTempSensor *this, const float *a2, const float *a3, uint64_t a4)
{
  shouldTraceRender();
  v39 = a4;
  v40 = a4;
  v38 = (*(**(this + 20) + 144))(*(this + 20), a4);
  v37 = (*(**(this + 21) + 144))(*(this + 21), a4);
  (*(**(this + 20) + 32))(*(this + 20), a2, 0, *(this + 22), 0, &v40, &v38, 1, 1);
  (*(**(this + 21) + 32))(*(this + 21), a3, 0, *(this + 25), 0, &v39, &v37, 1, 1);
  v8 = v38;
  if (v38)
  {
    v9 = 0;
    v10 = *(this + 22);
    v11 = *(this + 25);
    v12 = 4 * v38;
    do
    {
      v13 = v10[v9 / 4];
      v14 = ((*(this + 32) * *(this + 33)) + (v13 * *(this + 31))) - (*(this + 34) * *(this + 30));
      *(this + 33) = v13;
      *(this + 34) = v14;
      v10[v9 / 4] = v14;
      v15 = v11[v9 / 4];
      v16 = ((*(this + 37) * *(this + 38)) + (v15 * *(this + 36))) - (*(this + 39) * *(this + 35));
      *(this + 38) = v15;
      *(this + 39) = v16;
      v11[v9 / 4] = v16;
      v9 += 4;
    }

    while (v12 != v9);
    v17 = *(this + 10);
    v18 = *(this + 11);
    v19 = *(this + 13);
    v20 = *(this + 14);
    while (1)
    {
      v21 = *(this + 29);
      v22 = v8 >= v21 ? v21 : v8;
      __C = 0;
      vDSP_svesq(v10, 1, &__C + 1, v22);
      vDSP_svesq(v11, 1, &__C, v22);
      v23 = *(&__C + 1) + *(this + 27);
      v24 = *&__C + *(this + 28);
      *(this + 27) = v23;
      *(this + 28) = v24;
      v25 = *(this + 29);
      v26 = v8 - v25;
      if (v8 < v25)
      {
        break;
      }

      v27 = *(this + 24);
      v28 = v23 * v27;
      v29 = v24 * v27;
      if (v28 <= v19 || v29 <= v20)
      {
        goto LABEL_19;
      }

      v31 = v23 / v24;
      if (v31 < 0.0)
      {
        v31 = 0.0;
      }

      v32 = *(this + 26) + (*(this + 25) * (sqrtf(v31) - *(this + 26)));
      *(this + 26) = v32;
      if (v32 > v17 && v32 < v18)
      {
        v34 = 1;
        *(this + 88) = 1;
      }

      else
      {
LABEL_19:
        v34 = 0;
      }

      v10 += v22;
      v11 += v22;
      *(this + 89) = v34;
      *(this + 27) = 0;
      *(this + 28) = 0;
      *(this + 29) = *(this + 23);
      shouldTraceRender();
      v8 = v26;
      if (!v26)
      {
        return *(this + 26) * *(this + 12);
      }
    }

    shouldTraceRender();
    *(this + 29) -= v8;
  }

  return *(this + 26) * *(this + 12);
}

void clsp::BandTempSensor::logCoeffs(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v8[0] = *a2;
  v8[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    clsp::TempSensorParams::logCoeffs(a1 + 8, v8);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    clsp::TempSensorParams::logCoeffs(a1 + 8, v8);
  }

  v5 = *a2;
  if (*a2)
  {
    __src = *(a1 + 92);
    clsp::CLSP_Log::LogCLSPData(v5, &__src, 1);
    v6 = *a2;
    if (*a2)
    {
      __src = *(a1 + 96);
      clsp::CLSP_Log::LogCLSPData(v6, &__src, 1);
      v7 = *a2;
      if (*a2)
      {
        __src = *(a1 + 100);
        clsp::CLSP_Log::LogCLSPData(v7, &__src, 1);
      }
    }
  }
}

void *clsp::BandTempSensor::dump(uint64_t a1, void *a2)
{
  clsp::TempSensorParams::dump(a1 + 8, a2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "\nSamplePeriod = ", 16);
  v5 = MEMORY[0x1E12BCC20](v4, *(a1 + 92));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "\nPeriodNormFactor = ", 20);
  v6 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "\nGsmooth = ", 11);
  v7 = std::ostream::operator<<();
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\nDCBlkV = ", 10);
  clsp::IIROrder1<float>::dump(a1 + 120, v8);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "\nDCBlkI = ", 10);
  clsp::IIROrder1<float>::dump(a1 + 140, v9);
  return a2;
}

void clsp::BandTempSensor::~BandTempSensor(clsp::BandTempSensor *this)
{
  *this = &unk_1F592FF68;
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    *(this + 23) = v3;
    operator delete(v3);
  }

  v4 = *(this + 21);
  *(this + 21) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 20);
  *(this + 20) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592FF68;
  v2 = *(this + 25);
  if (v2)
  {
    *(this + 26) = v2;
    operator delete(v2);
  }

  v3 = *(this + 22);
  if (v3)
  {
    *(this + 23) = v3;
    operator delete(v3);
  }

  v4 = *(this + 21);
  *(this + 21) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 20);
  *(this + 20) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }
}

double learnrate_v5::initStatistics_new(uint64_t a1, uint64_t *a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, float a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, float a19, float a20, int a21, int a22, int a23, int a24, float a25, int a26, int a27, int a28)
{
  v36 = *(a1 + 40);
  v37 = *(a1 + 44);
  v38 = *(a1 + 156);
  v39 = *(a1 + 36);
  v40 = *(a1 + 16);
  v41 = *(a1 + 128);
  v42 = *a2;
  v43 = *a2;
  if (!*a2)
  {
    v192 = *(a1 + 36);
    v44 = *(a1 + 144);
    v45 = malloc_type_malloc(0x288uLL, 0xD61AC177uLL);
    if (!v45)
    {
      goto LABEL_166;
    }

    v46 = v45;
    bzero(v45, 0x288uLL);
    *a2 = v46;
    v47 = malloc_type_malloc(4 * v41, 0x49981BCAuLL);
    v48 = v47;
    if (!v47)
    {
      if (v41)
      {
        goto LABEL_166;
      }
    }

    v191 = v42;
    bzero(v47, 4 * v41);
    *(*a2 + 8) = v48;
    v49 = malloc_type_malloc(4 * v36, 0xE90543E1uLL);
    v50 = v49;
    if (!v49)
    {
      if (v36)
      {
        goto LABEL_166;
      }
    }

    bzero(v49, 4 * v36);
    *(*a2 + 48) = v50;
    v51 = malloc_type_malloc(4 * v44, 0xBEA3C630uLL);
    v52 = v51;
    if (!v51)
    {
      if (v44)
      {
        goto LABEL_166;
      }
    }

    bzero(v51, 4 * v44);
    *(*a2 + 56) = v52;
    v53 = malloc_type_malloc(4 * v36, 0xD3373054uLL);
    v54 = v53;
    if (!v53)
    {
      if (v36)
      {
        goto LABEL_166;
      }
    }

    bzero(v53, 4 * v36);
    *(*a2 + 64) = v54;
    if ((v36 & 0x80000000) != 0)
    {
      goto LABEL_166;
    }

    v55 = malloc_type_malloc(4 * v36, 0xBED7C4D9uLL);
    v56 = v55;
    if (!v55)
    {
      if (v36)
      {
        goto LABEL_166;
      }
    }

    bzero(v55, 4 * v36);
    *(*a2 + 72) = v56;
    v57 = malloc_type_malloc(4 * v36, 0xF2E24A30uLL);
    v58 = v57;
    if (!v57)
    {
      if (v36)
      {
        goto LABEL_166;
      }
    }

    bzero(v57, 4 * v36);
    *(*a2 + 80) = v58;
    v59 = malloc_type_malloc(4 * v36, 0x2B8E3F27uLL);
    v60 = v59;
    if (v36 << 34)
    {
      if (!v59)
      {
        goto LABEL_166;
      }
    }

    bzero(v59, 4 * v36);
    *(*a2 + 112) = v60;
    v61 = malloc_type_malloc(4 * v36, 0x426410A7uLL);
    v62 = v61;
    if (v36 << 34)
    {
      if (!v61)
      {
        goto LABEL_166;
      }
    }

    bzero(v61, 4 * v36);
    *(*a2 + 96) = v62;
    v63 = malloc_type_malloc(4 * v38, 0x9A2B048uLL);
    v64 = v63;
    if (!v63)
    {
      if (v38)
      {
        goto LABEL_166;
      }
    }

    bzero(v63, 4 * v38);
    *(*a2 + 120) = v64;
    v65 = malloc_type_malloc(4 * v38, 0x7E67400EuLL);
    v66 = v65;
    if (!v65)
    {
      if (v38)
      {
        goto LABEL_166;
      }
    }

    bzero(v65, 4 * v38);
    *(*a2 + 104) = v66;
    v67 = malloc_type_malloc(4 * v38, 0xC227BD3FuLL);
    v68 = v67;
    if (!v67)
    {
      if (v38)
      {
        goto LABEL_166;
      }
    }

    bzero(v67, 4 * v38);
    *(*a2 + 632) = v68;
    v69 = malloc_type_malloc(4 * v36, 0x6A9B3D37uLL);
    v70 = v69;
    if (!v69)
    {
      if (v36)
      {
        goto LABEL_166;
      }
    }

    bzero(v69, 4 * v36);
    *(*a2 + 296) = v70;
    v71 = malloc_type_malloc(4 * v36, 0xF35D4214uLL);
    v72 = v71;
    if (!v71)
    {
      if (v36)
      {
        goto LABEL_166;
      }
    }

    bzero(v71, 4 * v36);
    *(*a2 + 304) = v72;
    v73 = *(a1 + 128);
    v74 = malloc_type_malloc(4 * v73, 0x95ED5F5CuLL);
    v75 = v74;
    if (v73)
    {
      if (!v74)
      {
        goto LABEL_166;
      }
    }

    bzero(v74, 4 * v73);
    *(*a2 + 328) = v75;
    v43 = *a2;
    v42 = v191;
    v39 = v192;
  }

  *v43 = 1;
  *(v43 + 4) = 813694978;
  *(v43 + 16) = xmmword_1DE09E1E0;
  v76 = vdup_n_s32(0x30800002u);
  v77 = v40 / a3;
  *(v43 + 32) = v76;
  *(v43 + 40) = 813694978;
  *(v43 + 88) = v76;
  if (a3 >= 24000.0)
  {
    v78 = 1.0 - expf(v77 / -0.65);
  }

  else
  {
    v78 = v39 / 8000.0;
  }

  *(v43 + 128) = v78;
  *(v43 + 132) = v77 + v77;
  *(v43 + 136) = v77 * 0.5;
  *(v43 + 148) = 0;
  *(v43 + 140) = 0;
  if (v36 >= 1)
  {
    v79 = *(v43 + 112);
    v80 = *(v43 + 96);
    v81 = v36;
    do
    {
      *v79++ = 813130719;
      *v80++ = 813130719;
      --v81;
    }

    while (v81);
  }

  __A[0] = 0.0;
  vDSP_vfill(__A, *(v43 + 120), 1, v38);
  *v82.i32 = expf(-2.4 / *(a1 + 44));
  v83 = *(*a2 + 104);
  if (v38 >= 1)
  {
    v84 = 0;
    if (v37 <= v38)
    {
      v85 = v38;
    }

    else
    {
      v85 = v37;
    }

    v86 = (v85 - 1) / v37;
    v87 = vdupq_n_s64(v86);
    v88 = (v86 & 0xFFFFFFFFFFFFFFFCLL) + 4;
    v89 = *(*a2 + 104);
    do
    {
      v90 = vdupq_n_s64(v84);
      v91 = vmovn_s64(vcgeq_u64(v87, vorrq_s8(v90, xmmword_1DE095160)));
      if (vuzp1_s16(v91, v82).u8[0])
      {
        *v89 = 1060320051;
      }

      if (vuzp1_s16(v91, v82).i8[2])
      {
        v89[v37] = 1060320051;
      }

      if (vuzp1_s16(v82, vmovn_s64(vcgeq_u64(v87, vorrq_s8(v90, xmmword_1DE095150)))).i32[1])
      {
        v89[2 * v37] = 1060320051;
        v89[3 * v37] = 1060320051;
      }

      v84 += 4;
      v89 += 4 * v37;
    }

    while (v88 != v84);
  }

  __A[0] = 0.0;
  if (v41 < 1)
  {
    v94 = 0.0;
  }

  else
  {
    v92 = 0;
    v93 = 0;
    v94 = 0.0;
    do
    {
      v94 = v94 + *(v83 + 4 * v93 * v37);
      __A[0] = v94;
      if (v37 >= 2)
      {
        v95 = (v83 + 4 + 4 * v92);
        v96 = v37 - 1;
        do
        {
          v97 = *v82.i32 * *(v95 - 1);
          *v95++ = v97;
          v94 = v97 + __A[0];
          __A[0] = v94;
          --v96;
        }

        while (v96);
      }

      ++v93;
      v92 += v37;
    }

    while (v93 != v41);
  }

  v196 = 1.0 / v94;
  MEMORY[0x1E12BE940](v83, 1, &v196, v83, 1, v38);
  v98 = *a2;
  *(v98 + 216) = vdup_n_s32(0x30800002u);
  *(v98 + 232) = 0;
  *(v98 + 224) = 0;
  *&v99 = 0x100000001;
  *(&v99 + 1) = 0x100000001;
  *(v98 + 240) = v99;
  *(v98 + 256) = 1;
  *(v98 + 268) = 0;
  *(v98 + 276) = 0;
  *(v98 + 260) = 0;
  *(v98 + 284) = 0x3080000230800002;
  if (v36 >= 1)
  {
    v100 = *(v98 + 296);
    v101 = *(v98 + 304);
    do
    {
      *v100++ = 0;
      *v101++ = 0;
      --v36;
    }

    while (v36);
  }

  v102 = floorf(a4 / *(a1 + 24));
  if (v102 <= 1.0)
  {
    v102 = 1.0;
  }

  v103 = v102;
  *(v98 + 236) = v102;
  v104 = 2 * *(a1 + 44);
  if (v104 > v102)
  {
    v103 = v104 | 1;
    *(v98 + 236) = v104 | 1;
  }

  if (v103 >= 5)
  {
    if (v103 < 0x51)
    {
      goto LABEL_71;
    }

    v103 = 80;
  }

  else
  {
    v103 = 5;
  }

  *(v98 + 236) = v103;
LABEL_71:
  if (!v42)
  {
    v105 = 4 * v103;
    v106 = malloc_type_malloc(v105, 0x95BE46D2uLL);
    if (!v106)
    {
      goto LABEL_166;
    }

    v107 = v106;
    bzero(v106, v105);
    *(*a2 + 192) = v107;
    v108 = malloc_type_malloc(v105, 0x137CD0F2uLL);
    if (!v108)
    {
      goto LABEL_166;
    }

    v109 = v108;
    bzero(v108, v105);
    *(*a2 + 200) = v109;
    v110 = malloc_type_malloc(v105, 0xEFA13FFDuLL);
    if (!v110)
    {
      goto LABEL_166;
    }

    v111 = v110;
    bzero(v110, v105);
    *(*a2 + 208) = v111;
    v112 = (4 * *(*a2 + 236));
    v113 = malloc_type_malloc(v112, 0xB3BFCF39uLL);
    v114 = v113;
    if (!v113)
    {
      if (v112)
      {
        goto LABEL_166;
      }
    }

    bzero(v113, v112);
    *(*a2 + 160) = v114;
    v115 = malloc_type_malloc(v112, 0x66843270uLL);
    v116 = v115;
    if (v112)
    {
      if (!v115)
      {
        goto LABEL_166;
      }
    }

    bzero(v115, v112);
    *(*a2 + 168) = v116;
    v117 = malloc_type_malloc(v112, 0xDC9FDC75uLL);
    v118 = v117;
    if (v112)
    {
      if (!v117)
      {
        goto LABEL_166;
      }
    }

    bzero(v117, v112);
    *(*a2 + 176) = v118;
    v98 = *a2;
    v103 = *(*a2 + 236);
  }

  v119 = v103;
  vDSP_vclr(*(v98 + 160), 1, v103);
  vDSP_vclr(*(*a2 + 168), 1, v119);
  vDSP_vclr(*(*a2 + 176), 1, v119);
  v120.i32[0] = *(a1 + 24);
  v121 = *a2;
  v122 = vrndm_f32(vdiv_f32(__PAIR64__(LODWORD(a6), LODWORD(a5)), vdup_lane_s32(v120, 0)));
  __asm { FMOV            V2.2S, #1.0 }

  v127 = vcvt_u32_f32(vbsl_s8(vcge_f32(_D2, v122), _D2, v122));
  v128 = floorf(a7 / *v120.i32);
  if (v128 <= 1.0)
  {
    v128 = 1.0;
  }

  v129 = v128;
  v130 = floorf(a20 / *v120.i32);
  if (v130 <= 1.0)
  {
    v130 = 1.0;
  }

  v131 = floorf(a8 / *v120.i32);
  if (v131 <= 1.0)
  {
    v131 = 1.0;
  }

  v132 = v131;
  if (v104 > v131)
  {
    v132 = v104;
    if (a8 > a4)
    {
      v132 = v104 + 2;
    }
  }

  v133 = *(v121 + 236);
  *(v121 + 240) = vmin_u32(vdup_n_s32(v133), v127);
  if (v133 >= v129)
  {
    v134 = v129;
  }

  else
  {
    v134 = v133;
  }

  if (v133 >= v130)
  {
    v135 = v130;
  }

  else
  {
    v135 = v133;
  }

  *(v121 + 256) = v135;
  if (v132 >= v133 + 1)
  {
    v136 = v133 + 1;
  }

  else
  {
    v136 = v132;
  }

  *(v121 + 248) = v134;
  *(v121 + 252) = v136;
  if (!v42)
  {
    if (v136 > v133)
    {
      v133 = v136;
    }

    v137 = 4 * v133;
    v138 = malloc_type_malloc(v137, 0xB9A1AFFBuLL);
    if (v137)
    {
      _ZF = v138 == 0;
    }

    else
    {
      _ZF = 0;
    }

    if (_ZF)
    {
      goto LABEL_166;
    }

    v140 = v138;
    bzero(v138, v137);
    *(*a2 + 184) = v140;
    v121 = *a2;
    v133 = *(*a2 + 236);
  }

  if (v133)
  {
    v141 = *(v121 + 184);
    v142 = *(v121 + 192);
    v143 = v133;
    v144 = *(v121 + 200);
    v145 = *(v121 + 208);
    do
    {
      *v141++ = 1;
      *v142++ = 1;
      *v144++ = 1;
      *v145++ = 1;
      --v143;
    }

    while (v143);
  }

  v146 = *(v121 + 252);
  if (v133 < v146)
  {
    memset_pattern16((*(v121 + 184) + 4 * v133), &unk_1DE09EA50, 4 * (v146 + ~v133) + 4);
  }

  *(v121 + 260) = __exp10f(a9 / 10.0);
  *(v121 + 264) = a10;
  *(v121 + 268) = a17;
  *(v121 + 272) = a18;
  *(v121 + 276) = __exp10f(a19 / 10.0);
  *(v121 + 320) = 0;
  *(v121 + 336) = 0u;
  *(v121 + 352) = 0u;
  *(v121 + 380) = 0;
  *(v121 + 372) = 0;
  *(v121 + 388) = 1022739087;
  v148 = 0;
  if (!*(a1 + 100))
  {
    if (!v42)
    {
      v149 = *(a1 + 128);
      v150 = malloc_type_malloc(4 * v149, 0x73999A28uLL);
      v151 = v150;
      if (v149 && !v150)
      {
        goto LABEL_166;
      }

      bzero(v150, 4 * v149);
      *(*a2 + 312) = v151;
      v121 = *a2;
    }

    vDSP_vclr(*(v121 + 312), 1, *(a1 + 128));
    v121 = *a2;
    *(v121 + 320) = 0;
    *(v121 + 336) = a23;
    *(v121 + 340) = a24;
    *(v121 + 344) = a21;
    v153 = *(a1 + 44);
    *(v121 + 348) = a22;
    if ((*(a1 + 24) * v153) >= 0xC9)
    {
      *(v121 + 336) = 0x3E570A3D3F0CCCCDLL;
      *(v121 + 348) = 1048576000;
    }

    v154 = *(a1 + 80);
    *v152.i32 = a3 / (2 * v154);
    if (a3 >= 4000.0)
    {
      v156 = vcvt_s32_f32(vrndm_f32(vdiv_f32(0x44E1000043960000, vdup_lane_s32(v152, 0))));
      v155 = 0x7080000012CLL;
    }

    else
    {
      LODWORD(v155) = *v152.i32;
      HIDWORD(v155) = -(*v152.i32 - a3 * 0.5);
      v156.i32[0] = 1;
      v156.i32[1] = v154 - 1;
    }

    v195 = v155;
    *(v121 + 352) = v156;
    *(v121 + 360) = v155;
    *(v121 + 368) = a25 / 1000.0;
    *(v121 + 372) = expf(-v77 / (a25 / 1000.0));
    *(v121 + 380) = 0;
    *(v121 + 384) = v153;
    *(v121 + 388) = a26;
    v148 = vcvt_f32_s32(v195);
  }

  __asm { FMOV            V3.4S, #1.0 }

  *(v121 + 400) = _Q3;
  *(v121 + 416) = 1065353216;
  *(v121 + 432) = 0;
  *(v121 + 440) = 0;
  *(v121 + 424) = 0;
  *(v121 + 392) = a27;
  *(v121 + 396) = a28;
  if (a3 >= 44000.0)
  {
    v158 = 1024;
  }

  else if (a3 >= 32000.0)
  {
    v158 = 640;
  }

  else if (a3 >= 22000.0)
  {
    v158 = 512;
  }

  else if (a3 >= 16000.0)
  {
    v158 = 320;
  }

  else if (a3 >= 11000.0)
  {
    v158 = 256;
  }

  else
  {
    v158 = 160;
  }

  if (v158 <= *(a1 + 16))
  {
    v158 = *(a1 + 16);
  }

  *(v121 + 424) = v158;
  *(v121 + 428) = 2 * v158;
  *(v121 + 440) = v158 + 1;
  *v147.i32 = a3 / (2 * v158);
  v159 = vmin_s32(vadd_s32(vmax_s32(vcvt_s32_f32(vrndm_f32(vdiv_f32(v148, vdup_lane_s32(v147, 0)))), 0x100000001), -1), vdup_n_s32((((2 * v158) * 0.5) + -1.0)));
  *(v121 + 432) = v159;
  v160 = v159.i32[1] + 1;
  *(v121 + 444) = v159.i32[1] + 1;
  if (!v42)
  {
    v161 = 4 * v160;
    v162 = 4 * v160;
    v163 = malloc_type_malloc(4 * v160, 0xD2C151ADuLL);
    if (v161)
    {
      v164 = v163 == 0;
    }

    else
    {
      v164 = 0;
    }

    if (v164)
    {
      goto LABEL_166;
    }

    v165 = v163;
    bzero(v163, v161);
    *(*a2 + 496) = v165;
    v166 = malloc_type_malloc(v161, 0x35B6B37EuLL);
    if (v162 && v166 == 0)
    {
      goto LABEL_166;
    }

    v168 = v166;
    bzero(v166, v161);
    *(*a2 + 504) = v168;
    v169 = malloc_type_malloc(v161, 0xC8CBDEADuLL);
    if (v162 && v169 == 0)
    {
      goto LABEL_166;
    }

    v171 = v169;
    bzero(v169, v161);
    *(*a2 + 480) = v171;
    v172 = malloc_type_malloc(v161, 0x4E66C1F0uLL);
    if (v162 && v172 == 0)
    {
      goto LABEL_166;
    }

    v174 = v172;
    bzero(v172, v161);
    *(*a2 + 488) = v174;
    v121 = *a2;
    v160 = *(*a2 + 444);
  }

  v175 = v160;
  vDSP_vclr(*(v121 + 496), 1, v160);
  vDSP_vclr(*(*a2 + 504), 1, v175);
  vDSP_vclr(*(*a2 + 480), 1, v175);
  vDSP_vclr(*(*a2 + 488), 1, v175);
  if (!v42)
  {
    v176 = 4 * *(*a2 + 440);
    v177 = malloc_type_malloc(v176, 0x6F2E8946uLL);
    v178 = v177;
    if (v177 || !v176)
    {
      bzero(v177, v176);
      *(*a2 + 448) = v178;
      v179 = malloc_type_malloc(v176, 0x228451A8uLL);
      v180 = v179;
      if (!v176 || v179)
      {
        bzero(v179, v176);
        *(*a2 + 456) = v180;
        v181 = malloc_type_malloc(v176, 0xE8607662uLL);
        v182 = v181;
        if (!v176 || v181)
        {
          bzero(v181, v176);
          *(*a2 + 464) = v182;
          v183 = malloc_type_malloc(v176, 0x9711E8B2uLL);
          v184 = v183;
          if (!v176 || v183)
          {
            bzero(v183, v176);
            *(*a2 + 472) = v184;
            goto LABEL_165;
          }
        }
      }
    }

LABEL_166:
    exception = __cxa_allocate_exception(8uLL);
    v190 = std::bad_alloc::bad_alloc(exception);
  }

LABEL_165:
  v185 = *(*a2 + 440);
  vDSP_vclr(*(*a2 + 448), 1, v185);
  vDSP_vclr(*(*a2 + 456), 1, v185);
  vDSP_vclr(*(*a2 + 464), 1, v185);
  vDSP_vclr(*(*a2 + 472), 1, v185);
  v186 = expf(v77 / -0.03);
  v187 = *a2;
  *(v187 + 412) = v186;
  *(v187 + 416) = v186;
  *(v187 + 420) = 1.0 - expf(v77 * -2.0);
  *(v187 + 512) = 813694978;
  *(v187 + 548) = 0;
  result = 0.0;
  *(v187 + 516) = 0u;
  *(v187 + 532) = 0u;
  *(v187 + 552) = xmmword_1DE09E1F0;
  *(v187 + 568) = 0x3CCCCCCD00000000;
  *(v187 + 576) = xmmword_1DE09E200;
  *(v187 + 592) = 0;
  *(v187 + 600) = 0xC1A0000000000000;
  *(v187 + 608) = 0u;
  *(v187 + 624) = 0;
  *(v187 + 640) = 3184315597;
  return result;
}

void learnrate_v5::adaptLmsFilter_v4(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v133 = v6;
  v8 = v7;
  v10 = v9;
  v150 = *MEMORY[0x1E69E9840];
  v11 = v6[4];
  v12 = v6[10];
  v102 = v6[11];
  v103 = v13;
  v14 = v13[23];
  v15 = v13[9];
  v16 = v6[15];
  v17 = v13[19];
  v118 = v13[18];
  *(v18 + 72) = v118;
  *(v18 + 76) = v17;
  v99 = v18;
  v116 = v17;
  __A = 0.0;
  MEMORY[0x1E12BE7F0](*(v3 + 96), 1, *(v3 + 112), 1, *(v3 + 112), 1, v12, v1);
  v96 = v10;
  MEMORY[0x1E12BE7F0](*(v3 + 112), 1, v10, 1, v149, 1, v11);
  v97 = v8;
  v98 = v3;
  MEMORY[0x1E12BE7F0](*(v3 + 112), 1, v8, 1, v148, 1, v11);
  if (v14 >= 1)
  {
    v19 = v16;
    v20 = 0;
    v100 = (v116 + 1) * v11;
    v21 = 4 * v11;
    __N = (v118 * v11);
    v104 = __N;
    v22 = *(v98 + 104);
    v24 = v5[2];
    v23 = v5[3];
    v25 = *(v99 + 24);
    v130 = *(v99 + 16);
    v26 = *v99;
    v27 = *(v99 + 8);
    v108 = 4 * v102;
    v110 = 4 * v15;
    v29 = *v103;
    v28 = *(v103 + 1);
    v30 = v22 + 4 * v118;
    v112 = v19;
    v114 = v14;
    v101 = v15;
    v134 = v5;
    v131 = 4 * v11;
    do
    {
      v126 = v28;
      v128 = v26;
      v122 = v25;
      v124 = v29;
      if (*(v5[16] + v20) == 1)
      {
        v105 = v30;
        __C = v27;
        if (v102 >= 1)
        {
          v31 = 0;
          v32 = v145;
          v33 = v146;
          v34 = v102;
          do
          {
            *v33++ = *(v29 + v31);
            *v32++ = *(v28 + v31);
            v31 += v21;
            --v34;
          }

          while (v34);
        }

        v106 = v20;
        if (v103[17] == 1)
        {
          __A = 0.0;
          if (__N >= 1)
          {
            v35 = v22;
            v36 = v23;
            v37 = v24;
            vDSP_vfill(&__A, v26, 1, __N);
            vDSP_vfill(&__A, v27, 1, __N);
            vDSP_vfill(&__A, v130, 1, __N);
            vDSP_vfill(&__A, v25, 1, __N);
            v24 = v37;
            v23 = v36;
            v22 = v35;
          }

          v38 = *(v99 + 36);
          v39 = (v38 - v100);
          if (v39 >= 1)
          {
            v40 = &v26[v100];
            v41 = v22;
            v42 = v23;
            v43 = v24;
            vDSP_vfill(&__A, v40, 1, (v38 - v100));
            vDSP_vfill(&__A, &v27[v100], 1, v39);
            vDSP_vfill(&__A, &v130[v100], 1, v39);
            vDSP_vfill(&__A, &v25[v100], 1, v39);
            v24 = v43;
            v23 = v42;
            v22 = v41;
          }
        }

        v44 = v21;
        if (v118 <= v116)
        {
          v45 = 4 * v118;
          v46 = v116 + 1 - v118;
          v47 = v124;
          v48 = v126;
          v49 = v128;
          v50 = __C;
          v138 = v23;
          v140 = v22;
          v136 = v24;
          do
          {
            __A = *(v22 + v45);
            v51 = *(v5[11] + v45) * v11;
            v52 = (v24 + 4 * v51);
            v53 = &v23[v51];
            vDSP_vmma(v149, 1, v52, 1, v148, 1, v53, 1, __E, 1, v11);
            MEMORY[0x1E12BE8F0](__E, 1, &__A, v47 + v104 * 4, 1, &v49[v104], 1, v11);
            v54 = v53;
            v5 = v134;
            vDSP_vmmsb(v148, 1, v52, 1, v149, 1, v54, 1, __E, 1, v11);
            MEMORY[0x1E12BE8F0](__E, 1, &__A, v48 + v104 * 4, 1, &v50[v104], 1, v11);
            v44 = 4 * v11;
            v24 = v136;
            v23 = v138;
            v22 = v140;
            v50 = (v50 + v131);
            v49 = (v49 + v131);
            v48 += v131;
            v47 += v131;
            v45 += 4;
            --v46;
          }

          while (v46);
        }

        v27 = __C;
        v55 = v112;
        v56 = v114;
        v15 = v101;
        v57 = v105;
        v20 = v106;
        v58 = v110;
        v21 = v44;
        v59 = v128;
        if (v118 <= v116)
        {
          v60 = 0;
          v61 = *(v98 + 112);
          v62 = *v96 * *v61;
          v63 = *v97 * v61[v11];
          v64 = v5[11] + 4 * v118;
          v65 = 4 * __N;
          do
          {
            v66 = *(v64 + 4 * v60) * v11;
            *(v128 + v65) = *&v146[v118 + v60] + ((v62 * *(v105 + 4 * v60)) * *(v24 + 4 * v66));
            *(__C + v65) = *&v145[v118 + v60] + ((v63 * *(v105 + 4 * v60)) * v23[v66]);
            v65 += v21;
            ++v60;
          }

          while (v116 + 1 - v118 != v60);
        }
      }

      else
      {
        v67 = v26;
        v68 = v22;
        v69 = v23;
        v70 = v24;
        v71 = v30;
        vDSP_vclr(v67, 1, v15);
        vDSP_vclr(v27, 1, v15);
        v58 = v110;
        v55 = v112;
        v57 = v71;
        v56 = v114;
        v24 = v70;
        v23 = v69;
        v22 = v68;
        v59 = v128;
      }

      v130 += v15;
      v25 = &v122[v15];
      v26 = (v59 + v58);
      v27 = (v27 + v58);
      ++v20;
      v28 = v126 + v58;
      v29 = v124 + v58;
      v22 += v108;
      v30 = v57 + v108;
      v24 += 4 * v55;
      v23 += v55;
    }

    while (v20 != v56);
  }

  v117 = *(v99 + 92);
  if (v117 >= 1)
  {
    v72 = 0;
    v115 = v5[16];
    v73 = *v133 >> 1;
    v74 = *(v99 + 72);
    v129 = *(v99 + 48);
    v135 = *v99;
    v137 = *(v99 + 8);
    v132 = v73;
    v75 = 4 * v73;
    v76 = *v133 >> 2;
    v127 = ((v73 - 1) >> 1) + 1;
    v109 = *(v99 + 76);
    v139 = *(v99 + 16);
    v141 = v73;
    v77 = v74 * v73;
    v119 = *(v99 + 36);
    v111 = v74;
    v113 = 4 * v119;
    v107 = ~v74;
    v78 = *(v99 + 24);
    v123 = &v78[v77];
    v125 = &v139[v77];
    do
    {
      __Ca = v72;
      if (*(v72 + v115) == 1)
      {
        if (v111 <= v109)
        {
          v79 = v123;
          v80 = v125;
          v81 = v107;
          v82 = v111;
          do
          {
            v83 = &v139[v82 * v132];
            v84 = &v78[v82 * v132];
            v144.realp = v83;
            v144.imagp = v84;
            memcpy(v83, &v135[v82 * v132], v75);
            memcpy(v84, (v137 + 4 * v82 * v132), v75);
            v86 = *(v133 + 1);
            if (v86)
            {
              MultiRadixRealFFT::RealInPlaceTransform(v86, &v144, -1, v85);
            }

            v143 = *(v133 + 22) * *(v133 + 21);
            MEMORY[0x1E12BE940](v83, 1, &v143, v83, 1, v76);
            MEMORY[0x1E12BE940](v84, 1, &v143, v84, 1, v76);
            vDSP_vclr(&v83[v76], 1, v76);
            vDSP_vclr(&v84[v76], 1, v76);
            if (v141 >= 1)
            {
              v88 = v127;
              v89 = &v129[v141 * (v133[11] + v81)];
              v90 = v79;
              v91 = v80;
              do
              {
                v92 = *v91++;
                *v89 = v92;
                v93 = *v90++;
                v87 = v93;
                v89[1] = v93;
                v89 += 2;
                --v88;
              }

              while (v88);
            }

            v94 = *(v133 + 1);
            if (v94)
            {
              MultiRadixRealFFT::RealInPlaceTransform(v94, &v144, 1, v87);
            }

            ++v82;
            v80 = (v80 + v75);
            --v81;
            v79 = (v79 + v75);
          }

          while (v109 + 1 != v82);
        }
      }

      else
      {
        vDSP_vclr(v139, 1, v119);
        vDSP_vclr(v78, 1, v119);
        vDSP_vclr(v129, 1, v119);
      }

      v135 += v119;
      v137 += 4 * v119;
      v129 = (v129 + v113);
      v72 = (__Ca + 1);
      v139 += v119;
      v125 = (v125 + v113);
      v123 = (v123 + v113);
      v78 += v119;
    }

    while ((__Ca + 1) != v117);
  }
}

id getIntToNSStringAUScopeMap(void)
{
  v3[8] = *MEMORY[0x1E69E9840];
  {
    v2[0] = &unk_1F595D2A8;
    v2[1] = &unk_1F595D2C0;
    v3[0] = @"Global";
    v3[1] = @"Input";
    v2[2] = &unk_1F595D2D8;
    v2[3] = &unk_1F595D2F0;
    v3[2] = @"Output";
    v3[3] = @"Group";
    v2[4] = &unk_1F595D308;
    v2[5] = &unk_1F595D320;
    v3[4] = @"Part";
    v3[5] = @"Note";
    v2[6] = &unk_1F595D338;
    v2[7] = &unk_1F595D350;
    v3[6] = @"Layer";
    v3[7] = @"LayerItem";
    getIntToNSStringAUScopeMap(void)::intToNSStringMapAUScope = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:8];
  }

  v0 = getIntToNSStringAUScopeMap(void)::intToNSStringMapAUScope;

  return v0;
}

id createNSDescriptionFromAudioUnit(OpaqueAudioComponentInstance *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v33 = [MEMORY[0x1E695DF90] dictionary];
  Component = AudioComponentInstanceGetComponent(a1);
  if (!AudioComponentGetDescription(Component, &outDesc))
  {
    v42[0] = @"ComponentManufacturer";
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:outDesc.componentManufacturer];
    v43 = v3;
    v42[1] = @"ComponentSubType";
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:outDesc.componentSubType];
    v44 = v4;
    v42[2] = @"ComponentType";
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:outDesc.componentType];
    v45 = v5;
    v42[3] = @"ComponentFlags";
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:outDesc.componentFlags];
    v46 = v6;
    v42[4] = @"ComponentFlagsMask";
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:outDesc.componentFlagsMask];
    v47 = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:v42 count:5];

    [v33 setObject:v8 forKey:@"AudioComponentDescription"];
    v32 = [MEMORY[0x1E695DF90] dictionary];
    v34 = getIntToNSStringAUScopeMap();
    v36 = [v34 count];
    if (v36)
    {
      for (i = 0; i != v36; ++i)
      {
        ioDataSize = 4;
        outData = 0;
        if (!AudioUnitGetProperty(a1, 0xBu, i, 0, &outData, &ioDataSize))
        {
          v10 = AudioComponentInstanceGetComponent(a1);
          if (!AudioComponentGetDescription(v10, v42))
          {
            v11 = [MEMORY[0x1E695DF90] dictionary];
            if (outData)
            {
              v12 = 0;
              do
              {
                v13 = [MEMORY[0x1E695DF90] dictionary];
                v14 = [MEMORY[0x1E695DF90] dictionary];
                v43 = a1;
                v44 = __PAIR64__(v12, i);
                v15 = v14;
                v45 = v15;
                addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0xCu, @"Latency", &getABHelperSerializer<double>(void)::sSerializer);
                addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x14u, @"TailTime", &getABHelperSerializer<double>(void)::sSerializer);
                addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 2u, @"SampleRate", &getABHelperSerializer<double>(void)::sSerializer);
                addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x3Au, @"SupportsMPE", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 8u, @"StreamFormat", &getABHelperSerializer<AudioStreamBasicDescription>(void)::sSerializer);
                addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0xBu, @"ElementCount", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x15u, @"BypassEffect", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x1Au, @"RenderQuality", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x25u, @"OfflineRender", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x16u, @"LastRenderError", &getABHelperSerializer<int>(void)::sSerializer);
                addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x19u, @"ContextName", &getABHelperSerializer<__CFString const*>(void)::sSerializer);
                addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x13u, @"AudioChannelLayout", &getABHelperSerializer<AudioChannelLayout>(void)::sSerializer);
                addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x1Du, @"InPlaceProcessing", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0xE74u, @"UsesFixedBlockSize", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x33u, @"ShouldAllocateBuffer", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x34u, @"FrequencyResponse", &getABHelperSerializer<AudioUnitFrequencyResponseBin>(void)::sSerializer);
                addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0xEu, @"MaximumFramesPerSlice", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0xDu, @"SupportedNumChannels", &getABHelperSerializer<AUChannelInfo>(void)::sSerializer);
                addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x19E1u, @"DspLibExcludeChannelMask", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                addGenericAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x20u, @"SupportedChannelLayoutTags", &getABHelperSerializer<unsigned int []>(void)::sSerializer);

                [v13 setObject:v15 forKey:@"Generic"];
                v16 = v13;
                v17 = [MEMORY[0x1E695DF90] dictionary];
                v18 = HIDWORD(v42[0]);
                v43 = a1;
                v44 = __PAIR64__(v12, i);
                v19 = v17;
                v45 = v19;
                if (v18 <= 1851942256)
                {
                  if (v18 <= 1684366706)
                  {
                    if (v18 > 1651733297)
                    {
                      switch(v18)
                      {
                        case 1651733298:
                          v20 = 4501;
                          v21 = @"Algorithm";
                          goto LABEL_73;
                        case 1668051820:
                          v20 = 1936483181;
                          v21 = @"ChannelMap";
                          v22 = &getABHelperSerializer<unsigned int []>(void)::sSerializer;
                          goto LABEL_74;
                        case 1668440929:
                          addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x2268u, @"AlgoOrder", &getABHelperSerializer<__CFNumber const*>(void)::sSerializer);
                          addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x636E6667u, @"ConfigPlist", &getABHelperSerializer<__CFDictionary const*>(void)::sSerializer);
                          addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x2261u, @"SpksInRows", &getABHelperSerializer<__CFArray const*>(void)::sSerializer);
                          addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x2262u, @"SpksOffset", &getABHelperSerializer<__CFArray const*>(void)::sSerializer);
                          addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x2260u, @"BeamComp", &getABHelperSerializer<__CFArray const*>(void)::sSerializer);
                          addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x2263u, @"BeamFIR", &getABHelperSerializer<__CFArray const*>(void)::sSerializer);
                          addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x2264u, @"ModalFIR", &getABHelperSerializer<__CFArray const*>(void)::sSerializer);
                          addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x2265u, @"EQBiQuad", &getABHelperSerializer<__CFArray const*>(void)::sSerializer);
                          addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x2266u, @"DriverBQ", &getABHelperSerializer<__CFArray const*>(void)::sSerializer);
                          addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x2267u, @"CongifPlistVersion", &getABHelperSerializer<__CFString const*>(void)::sSerializer);
                          v20 = 8809;
                          v21 = @"BeamDescriptions";
                          v22 = &getABHelperSerializer<__CFArray const*>(void)::sSerializer;
                          goto LABEL_74;
                      }
                    }

                    else
                    {
                      switch(v18)
                      {
                        case 1634758759:
                          v20 = 6611;
                          v21 = @"DspLibPeakPowerGuardAdmittanceFilterCoefficients";
                          goto LABEL_67;
                        case 1650814258:
                          addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0xE75u, @"TransformSize", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                          addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0xE78u, @"AuxVectorEnable", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                          v20 = 3709;
                          v21 = @"ReverseMicChannelFlag";
                          goto LABEL_73;
                        case 1651338854:
                          addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0xE75u, @"TransformSize", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                          v20 = 3704;
                          v21 = @"AuxVectorEnable";
                          goto LABEL_73;
                      }
                    }
                  }

                  else if (v18 <= 1719166829)
                  {
                    switch(v18)
                    {
                      case 1684366707:
                        v20 = 64001;
                        v21 = @"DeesserMode";
                        goto LABEL_73;
                      case 1718186597:
                        addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x636E6667u, @"ConfigPlist", &getABHelperSerializer<__CFDictionary const*>(void)::sSerializer);
                        addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x66697273u, @"FIRMatrices", &getABHelperSerializer<__CFArray const*>(void)::sSerializer);
                        v20 = 1717924720;
                        v21 = @"SetParameters";
                        goto LABEL_67;
                      case 1718186598:
                        v20 = 4503;
                        v21 = @"ReportedLatency";
                        v22 = &getABHelperSerializer<__CFNumber const*>(void)::sSerializer;
                        goto LABEL_74;
                    }
                  }

                  else if (v18 > 1835165040)
                  {
                    if (v18 == 1835165041)
                    {
LABEL_56:
                      addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x898u, @"NumberOfBands", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                      v20 = 2201;
                      v21 = @"MaxNumberOfBands";
                      goto LABEL_73;
                    }

                    if (v18 == 1835298866)
                    {
                      addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0xFA03u, @"MaxNumBands", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                      addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0xFA04u, @"CrossoverOrder", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                      addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0xFA05u, @"PrioritizeLatency", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                      v20 = 64006;
                      v21 = @"AllowLookahead";
                      goto LABEL_73;
                    }
                  }

                  else
                  {
                    if (v18 == 1719166830)
                    {
                      addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0xFA02u, @"GainsDB", &getABHelperSerializer<float []>(void)::sSerializer);
                      v20 = 64003;
                      v21 = @"Gains";
                      goto LABEL_69;
                    }

                    if (v18 == 1819243876)
                    {
                      v20 = 8900;
                      v21 = @"BQPlist";
                      goto LABEL_67;
                    }
                  }
                }

                else if (v18 > 1919906663)
                {
                  if (v18 <= 1936747628)
                  {
                    switch(v18)
                    {
                      case 1919906664:
                        v20 = 64002;
                        v21 = @"ShadingMode";
                        goto LABEL_73;
                      case 1935897721:
                        v20 = 1885566051;
                        v21 = @"ParameterChangeTimeConstant";
                        v22 = &getABHelperSerializer<float>(void)::sSerializer;
                        goto LABEL_74;
                      case 1936027251:
                        v20 = 1003;
                        v21 = @"ChannelSplitMode";
                        goto LABEL_73;
                    }
                  }

                  else if (v18 > 1986814769)
                  {
                    if (v18 == 1986814770)
                    {
                      v20 = 64001;
                      v21 = @"AllowLookAhead";
                      goto LABEL_73;
                    }

                    if (v18 == 1987013737)
                    {
                      addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0xFA01u, @"ForThermalProtection", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                      addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0xFA02u, @"ForNonCLTMHaptics", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                      v20 = 64003;
                      v21 = @"AttenuationActiveState";
                      goto LABEL_73;
                    }
                  }

                  else
                  {
                    if (v18 == 1936747629)
                    {
                      v20 = 64001;
                      v21 = @"VolumeMap";
LABEL_67:
                      v22 = &getABHelperSerializer<__CFDictionary const*>(void)::sSerializer;
                      goto LABEL_74;
                    }

                    if (v18 == 1936748595)
                    {
                      addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0xFA01u, @"TransducerCalibration", &getABHelperSerializer<__CFArray const*>(void)::sSerializer);
                      addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0xFA02u, @"VPMode", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                      addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0xFA04u, @"EnableClosedLoop", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                      addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0xFA05u, @"SpeakerInputDataSourceOrder", &getABHelperSerializer<unsigned int []>(void)::sSerializer);
                      addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0xFA06u, @"IgnoreChannelTelemetry", &getABHelperSerializer<unsigned int []>(void)::sSerializer);
                      v20 = 64007;
                      v21 = @"ThermalStateOverride";
LABEL_73:
                      v22 = &getABHelperSerializer<unsigned int>(void)::sSerializer;
                      goto LABEL_74;
                    }
                  }
                }

                else if (v18 <= 1868787314)
                {
                  switch(v18)
                  {
                    case 1851942257:
                      goto LABEL_56;
                    case 1852732272:
                      addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0xE73u, @"NeuralNetSPPMask", &getABHelperSerializer<float []>(void)::sSerializer);
                      v20 = 36999;
                      v21 = @"NeuralNetSPPPostMask";
LABEL_69:
                      v22 = &getABHelperSerializer<float []>(void)::sSerializer;
LABEL_74:
                      addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, v20, v21, v22);
                      break;
                    case 1868787301:
                      v20 = 5200;
                      v21 = @"NoiseSpectrumEstimate";
                      goto LABEL_69;
                  }
                }

                else if (v18 > 1885562993)
                {
                  if (v18 == 1885562994)
                  {
                    v20 = 1667788397;
                    v21 = @"IOChannelNames";
                    goto LABEL_67;
                  }

                  if (v18 == 1886156135)
                  {
                    v20 = 64002;
                    v21 = @"InitialGainDB";
                    goto LABEL_69;
                  }
                }

                else
                {
                  if (v18 == 1868787315)
                  {
                    addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x11A9u, @"UseVideoMode", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                    addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x11ABu, @"UseVADMode", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                    addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x11ADu, @"VADModeThresholdMultiplier", &getABHelperSerializer<float>(void)::sSerializer);
                    addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x11AEu, @"VADModeThresholdMultiplierPower", &getABHelperSerializer<float>(void)::sSerializer);
                    v20 = 4527;
                    v21 = @"VADModeThresholdMultiplierLUT";
                    goto LABEL_69;
                  }

                  if (v18 == 1869509428)
                  {
                    addSubTypeSpecificAuPropToDescription(NSMutableDictionary *,OpaqueAudioComponentInstance *,unsigned int const&,unsigned int const&,unsigned int const&)::$_0::operator()(&v43, 0x11A9u, @"UseVideoMode", &getABHelperSerializer<unsigned int>(void)::sSerializer);
                    v20 = 4522;
                    v21 = @"UseV1Mode";
                    goto LABEL_73;
                  }
                }

                [v16 setObject:v19 forKey:@"SubTypeSpecific"];
                v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Element: %d", v12];
                [v11 setObject:v16 forKey:v23];

                v12 = (v12 + 1);
              }

              while (v12 < outData);
            }

            v24 = MEMORY[0x1E696AEC0];
            v25 = [MEMORY[0x1E696AD98] numberWithInt:i];
            v26 = [v34 objectForKey:v25];
            v27 = [v24 stringWithFormat:@"Scope: %@", v26];
            [v32 setObject:v11 forKey:v27];
          }
        }
      }
    }

    [v33 setObject:v32 forKey:@"AUProperties"];
    v35 = [MEMORY[0x1E695DF90] dictionary];
    v37 = getIntToNSStringAUScopeMap();
    v28 = [v37 count];
    if (v28)
    {
      for (j = 0; j != v28; ++j)
      {
        v30 = [MEMORY[0x1E695DF90] dictionary];
        LODWORD(v42[0]) = 0;
        outWritable = 0;
        if (!AudioUnitGetPropertyInfo(a1, 3u, j, 0, v42, &outWritable) && LODWORD(v42[0]))
        {
          operator new[]();
        }
      }
    }

    [v33 setObject:v35 forKey:@"AUParameters"];
  }

  return v33;
}

void EndpointVADViterbiModel::parseObservationPriorFloat32(uint64_t a1, uint64_t a2, _DWORD **a3)
{
  memset(v8, 0, sizeof(v8));
  LODWORD(__p) = 1;
  std::vector<unsigned int>::push_back[abi:ne200100](v8, &__p);
  v7 = 1;
  v4 = *a3;
  if (*a3 != a3[1])
  {
    v5 = 1;
    do
    {
      v5 *= *v4;
      v7 = v5;
      std::vector<unsigned int>::push_back[abi:ne200100](v8, &v7);
      ++v4;
    }

    while (v4 != a3[1]);
  }

  operator new[]();
}

void sub_1DDF746F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void EndpointVADViterbiModel::parseObservationTransitionFloat32(uint64_t a1, uint64_t a2, _DWORD **a3)
{
  memset(v7, 0, sizeof(v7));
  LODWORD(__p) = 1;
  std::vector<unsigned int>::push_back[abi:ne200100](v7, &__p);
  v6 = 1;
  v4 = *a3;
  if (*a3 != a3[1])
  {
    v5 = 1;
    do
    {
      v5 *= *v4;
      v6 = v5;
      std::vector<unsigned int>::push_back[abi:ne200100](v7, &v6);
      ++v4;
    }

    while (v4 != a3[1]);
  }

  operator new[]();
}

void sub_1DDF74C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char *a17, void *__p, uint64_t a19, uint64_t a20)
{
  if (__p)
  {
    a19 = __p;
    operator delete(__p);
  }

  a17 = &a10;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a17);
  if (a14)
  {
    a15 = a14;
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t EndpointVADRTViterbi::decodeStateSequence(EndpointVADRTViterbi *this, unsigned int a2, unsigned int a3)
{
  EndpointVADRTViterbi::expandWithZerosIfNecessary(this + 24, a2);
  v6 = *(this + 9);
  if (a2 >= ((*(this + 10) - v6) >> 4))
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  v7 = *(v6 + 16 * a2 + 8) > fmax(*(v6 + 16 * a2), 0.0);
  v8 = *(this + 3);
  v9 = *(this + 4);

  return EndpointVADRTViterbi::backtraceBackpointerArray(this, v8, v9, a2, a3, v7);
}

void EndpointVADRTViterbi::expandWithZerosIfNecessary(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 16) - *a1) >> 2 >= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = (*(a1 + 16) - *a1) >> 2;
  }

  v3 = (*(a1 + 8) - *a1) >> 2;
  if (v2 + 1 > v3 && v2 >= v3)
  {
    do
    {
      v6 = 0;
      std::vector<unsigned int>::push_back[abi:ne200100](a1, &v6);
      LODWORD(v3) = v3 + 1;
    }

    while (v3 <= v2);
  }
}

uint64_t EndpointVADRTViterbi::backtraceBackpointerArray(uint64_t result, _DWORD *a2, uint64_t a3, unsigned int a4, unsigned int a5, int a6)
{
  if (a4 >= a5)
  {
    v7 = *(result + 120);
    v6 = *(result + 128);
    v8 = ~a4;
    v9 = a3 - 4 * (v8 + ((a3 - a2) >> 2));
    *(v9 - 4) = a6;
    v10 = (v9 - 4);
    if (a4 > a5)
    {
      v11 = (a3 + 4 * (a5 - ((a3 - a2) >> 2)));
      v12 = v10 == v11 || v10 == a2;
      if (!v12)
      {
        v13 = v6 - ((v6 + 8 * v8 - v7) & 0xFFFFFFFFFFFFFFF8) - 8;
        v14 = (a3 - 4 * (v8 + ((a3 - a2) >> 2)) - 8);
        do
        {
          v15 = v14[1];
          if (v15 >= 2)
          {
            std::__throw_out_of_range[abi:ne200100]("array::at");
          }

          *v14 = *(v13 + 4 * v15);
          if (v14 == v11)
          {
            break;
          }

          v13 -= 8;
          v12 = v14-- == a2;
        }

        while (!v12);
      }
    }
  }

  return result;
}

uint64_t std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

AudioDSP::Utility *AudioDSP::Utility::DetectNonFinites(AudioDSP::Utility *this, _DWORD *a2, const AudioBufferList *a3, const AudioStreamBasicDescription *a4, BOOL *a5)
{
  if (a2)
  {
    if (a4)
    {
      LOBYTE(a4->mSampleRate) = 0;
      if (*a2)
      {
        v8 = this;
        v9 = 0;
        v10 = (a2 + 2);
        do
        {
          v11 = 0;
          this = AudioDSP::Utility::DetectNonFinites(v8, v10, a3->mBuffers[0].mNumberChannels, a3[1].mBuffers[0].mNumberChannels, &v11);
          if (this)
          {
            break;
          }

          if (v11)
          {
            LOBYTE(a4->mSampleRate) = v11;
            return this;
          }

          ++v9;
          v10 += 16;
        }

        while (v9 < *a2);
      }
    }
  }

  return this;
}

uint64_t AudioDSP::Utility::DetectNonFinites(AudioDSP::Utility *this, uint64_t a2, const AudioBuffer *a3, const AudioStreamBasicDescription *a4, BOOL *a5)
{
  result = 2;
  if (a3)
  {
    if (a2)
    {
      if (a4 == 32)
      {
        v12 = v5;
        v13 = v6;
        result = 2;
        if (a5)
        {
          v9 = *(a2 + 8);
          if (v9)
          {
            v10 = *(a2 + 4) >> 2;
            __C = 0.0;
            vDSP_sve(v9, 1, &__C, v10);
            result = 0;
            *a5 = (LODWORD(__C) & 0x7FFFFFFFu) > 0x7F7FFFFF;
          }
        }
      }
    }
  }

  return result;
}

uint64_t SphericalHeadSpatializer::processAccumulating(SphericalHeadSpatializer *this, const float *a2, float **a3, unsigned int a4, float *const *a5, int a6, unsigned int a7, float a8, IR::ComplexDataCircBuffer *a9, __n128 a10, double a11, double a12, double a13, __n128 a14)
{
  v167 = *MEMORY[0x1E69E9840];
  if (a4 <= 1)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v17 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      return 4294956445;
    }

    std::string::basic_string[abi:ne200100]<0>(&v155, "SphericalHeadSpatializer");
    v18 = std::string::append(&v155, "::", 2uLL);
    v19 = *&v18->__r_.__value_.__l.__data_;
    *&v156[16] = *(&v18->__r_.__value_.__l + 2);
    *v156 = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(v156, "processAccumulating", 0x13uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    *&__Start[16] = *(&v20->__r_.__value_.__l + 2);
    *__Start = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = __Start;
    if (__Start[23] < 0)
    {
      v22 = *__Start;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v22;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = a4;
    _os_log_debug_impl(&dword_1DDB85000, v17, OS_LOG_TYPE_DEBUG, "%s: ERROR: cannot process with %d output channels != 2", &buf, 0x12u);
    if ((__Start[23] & 0x80000000) != 0)
    {
      operator delete(*__Start);
    }

    if ((v156[23] & 0x80000000) != 0)
    {
      operator delete(*v156);
    }

    if ((SHIBYTE(v155.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 4294956445;
    }

    v23 = v155.__r_.__value_.__r.__words[0];
LABEL_99:
    operator delete(v23);
    return 4294956445;
  }

  if (a6 != a4)
  {
    if (getAUSMV2Log(void)::onceToken != -1)
    {
      dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
    }

    v35 = getAUSMV2Log(void)::gLog;
    if (!os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
    {
      return 4294956445;
    }

    std::string::basic_string[abi:ne200100]<0>(&buf, "SphericalHeadSpatializer");
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v155, &buf, "::");
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v156, &v155, "processAccumulating");
    if (v156[23] >= 0)
    {
      v118 = v156;
    }

    else
    {
      v118 = *v156;
    }

    *__Start = 136315650;
    *&__Start[4] = v118;
    *&__Start[12] = 1024;
    *&__Start[14] = a4;
    *&__Start[18] = 1024;
    *&__Start[20] = a6;
    _os_log_debug_impl(&dword_1DDB85000, v35, OS_LOG_TYPE_DEBUG, "%s: ERROR: cannot process with %d output channels != %d", __Start, 0x18u);
    if ((v156[23] & 0x80000000) != 0)
    {
      operator delete(*v156);
    }

    if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v155.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return 4294956445;
    }

    v23 = buf.__r_.__value_.__r.__words[0];
    goto LABEL_99;
  }

  if (*(this + 16))
  {
    v28 = *(this + 39);
    v29 = *a5;
    v30 = *(a5 + 1);
    v28[2] = *a5;
    v28[3] = v30;
    v31 = *(this + 6);
    v32 = *(v31 + 82);
    if (!*(v31 + 82))
    {
      a8 = 0.0;
    }

    v34 = *(this + 17);
    if (v34 == 1)
    {
      *(this + 75) = a8;
      *(this + 146) = v32;
      *(this + 17) = 0;
    }

    else if (v32 == *(this + 146))
    {
      v38 = *(this + 75);
      if (v38 == a8 || vabds_f32(v38, a8) < 0.0001)
      {
        *(this + 75) = a8;
      }

      else if (!*(this + 73))
      {
        a8 = a8 + ((v38 - a8) * *(this + 76));
      }
    }

    else
    {
      *(this + 146) = v32;
    }

    v40 = *v31;
    v39 = *(v31 + 4);
    if (*v31 == *(this + 16) && (v39 == *(this + 17) ? (v41 = v34 == 0) : (v41 = 0), v41))
    {
      if (*(v31 + 8) == *(this + 18))
      {
        v42 = 0;
LABEL_40:
        *(v28 + 192) = v42;
        v43 = *(this + 75);
        *(v28 + 53) = v43;
        *(v28 + 54) = v43;
        *(v28 + 28) = a8;
        *(v28 + 29) = a8;
        if (v42)
        {
          v44 = *(v31 + 68);
          v45 = (v44 / 1000.0) * 200.0;
          v46 = *(this + 2) * 0.5;
          if (*(v31 + 8) <= v44)
          {
            v44 = *(v31 + 8);
          }

          if (v44 < *(v31 + 64))
          {
            v44 = *(v31 + 64);
          }

          v47 = v45 - v44;
          if (v47 < 0.0)
          {
            v47 = 0.0;
          }

          v48 = powf(275.62, v47 / v45) * 80.0;
          if (v48 > v46)
          {
            v48 = v46;
          }

          if (v48 < 80.0)
          {
            v48 = 80.0;
          }

          *(v28 + 8) = v48;
          v49 = v40 * 3.14159265 / 180.0;
          v50 = v49 + 1.57079633;
          v51 = cosf(v50);
          *(v28 + 9) = ((v51 + 1.0) * 20000.0) + 4000.0;
          *(v28 + 10) = ((1.0 - v51) * 20000.0) + 4000.0;
          *(this + 8) = *v31;
          *(this + 18) = *(v31 + 8);
        }

        v53 = *a3;
        v52 = a3[1];
        v54 = *(v28 + 196);
        v55 = *(v28 + 3);
        if (a7)
        {
          v56 = vcvt_f32_u32(*(v28 + 204));
          *v14.i32 = a7;
          v57 = vdiv_f32(vsub_f32(vcvt_f32_u32(v54), v56), vdup_lane_s32(v14, 0));
          v58 = *(v28 + 2);
          v59 = v58 - 1;
          v60 = *v28;
          v61 = v58;
          v62 = a7;
          v63 = vcltz_s32(vshl_n_s32(vdup_n_s32(v42), 0x1FuLL));
          v64 = v29;
          v65 = v30;
          do
          {
            v66 = v55;
            v67 = *a2++;
            v68 = v67;
            v69 = v55 - v56.f32[0];
            if (v56.f32[0] > v55)
            {
              v69 = v69 + v61;
            }

            *(v60 + 4 * v55) = v68;
            if (v56.f32[1] <= v66)
            {
              v70 = v66 - v56.f32[1];
            }

            else
            {
              v70 = (v66 - v56.f32[1]) + v61;
            }

            v71 = v69 + (SLODWORD(v69) >> 31);
            v72 = v70 + (SLODWORD(v70) >> 31);
            *v64++ = *(v60 + 4 * (v71 & v59)) + ((v69 - (v71 & v59)) * (*(v60 + 4 * ((v71 + 1) & v59)) - *(v60 + 4 * (v71 & v59))));
            v73 = *(v60 + 4 * (v72 & v59));
            *v65++ = v73 + ((v70 - (v72 & v59)) * (*(v60 + 4 * ((v72 + 1) & v59)) - v73));
            v56 = vbsl_s8(v63, vadd_f32(v57, v56), v56);
            v55 = (v55 + 1) & v59;
            --v62;
          }

          while (v62);
        }

        *(v28 + 3) = v55;
        *(v28 + 204) = v54;
        LODWORD(buf.__r_.__value_.__l.__data_) = 1;
        LODWORD(buf.__r_.__value_.__r.__words[1]) = 1;
        LODWORD(v155.__r_.__value_.__l.__data_) = 1;
        LODWORD(v155.__r_.__value_.__r.__words[1]) = 1;
        v120 = v52;
        __O = v53;
        if (v42)
        {
          v74 = *(v28 + 23);
          v75 = *(v28 + 9) / v74 * 3.14159265;
          v76 = xmmword_1DE095300;
          v77 = 0uLL;
          a14.n128_u64[0] = 0;
          a10.n128_u64[0] = 0;
          v78 = xmmword_1DE095300;
          v79 = 0uLL;
          if (v75 > 0.0)
          {
            v80 = __sincos_stret(fmin(v75, 3.11017673));
            v76 = xmmword_1DE095300;
            a14.n128_u64[0] = 0;
            v81 = v80.__sinval * 1.41421356;
            v77 = 0uLL;
            v79.f64[0] = v80.__cosval * -4.0 * (1.0 / (v80.__sinval * 1.41421356 + 2.0));
            a10.n128_f64[0] = (2.0 - v81) * (1.0 / (v81 + 2.0));
            *&v78 = (v81 + 2.0) * (1.0 / (v81 + 2.0));
            *(&v78 + 1) = v79.f64[0];
            v79.f64[1] = a10.n128_f64[0];
          }

          v144 = v78;
          v147 = v79;
          v150 = a10;
          v82 = *(v28 + 10) / v74 * 3.14159265;
          v83 = v76;
          if (v82 > 0.0)
          {
            v84 = __sincos_stret(fmin(v82, 3.11017673));
            v76 = xmmword_1DE095300;
            v85 = v84.__sinval * 1.41421356;
            v77.f64[0] = v84.__cosval * -4.0 * (1.0 / (v84.__sinval * 1.41421356 + 2.0));
            a14.n128_f64[0] = (2.0 - v85) * (1.0 / (v85 + 2.0));
            v83.f64[0] = (v85 + 2.0) * (1.0 / (v85 + 2.0));
            v83.f64[1] = v77.f64[0];
            v77.f64[1] = a14.n128_f64[0];
          }

          v86 = *(v28 + 8) / v74 * 3.14159265;
          if (v86 <= 0.0)
          {
            v89 = 0uLL;
            v15.f64[0] = 0.0;
          }

          else
          {
            v136 = a14;
            v139 = v77;
            v133 = v83;
            v87 = __sincos_stret(fmin(v86, 3.11017673));
            v83 = v133;
            a14 = v136;
            v88 = 1.0 / (v87.__sinval * 0.707106781 + 1.0);
            v89.f64[0] = v87.__cosval * -2.0 * v88;
            v77 = v139;
            v89.f64[1] = v88 - v87.__sinval * 0.707106781 * v88;
            v90.f64[0] = 0.5 - v87.__cosval * 0.5;
            v90.f64[1] = v90.f64[0] + v90.f64[0];
            v15 = vmulq_n_f64(v90, v88);
            v76 = v15;
          }

          v91 = v147;
          v93 = v150;
          v92 = v144;
          v94 = v30;
          v102 = a7;
          if (a7)
          {
            v103 = (1.0 / a7);
            v128 = vmulq_n_f64(vsubq_f64(v147, *(v28 + 3)), v103);
            v104 = (v150.n128_f64[0] - *(v28 + 10)) * v103;
            v126 = vmulq_n_f64(vsubq_f64(v77, *(v28 + 11)), v103);
            v127 = vmulq_n_f64(vsubq_f64(v144, *(v28 + 4)), v103);
            v125 = vmulq_n_f64(vsubq_f64(v83, *(v28 + 13)), v103);
            v105 = (a14.n128_f64[0] - *(v28 + 15)) * v103;
            v124 = vmulq_n_f64(vsubq_f64(v89, *(v28 + 8)), v103);
            __N_4 = vmulq_n_f64(vsubq_f64(v76, *(v28 + 9)), v103);
            v106 = (v15.f64[0] - *(v28 + 20)) * v103;
            v107 = v29;
            v108 = v94;
            do
            {
              v155.__r_.__value_.__r.__words[2] = v107;
              if (v102 >= 0x80)
              {
                v109 = 128;
              }

              else
              {
                v109 = v102;
              }

              buf.__r_.__value_.__r.__words[2] = v108;
              HIDWORD(buf.__r_.__value_.__r.__words[1]) = 4 * v109;
              HIDWORD(v155.__r_.__value_.__r.__words[1]) = 4 * v109;
              *__Start = v91;
              *&__Start[16] = v92;
              v163 = v89;
              v164 = v76;
              v162 = v93.n128_u64[0];
              v165 = v15.f64[0];
              *v156 = v77;
              *&v156[16] = v83;
              v157 = a14.n128_u64[0];
              v158 = v89;
              v159 = v76;
              v160 = v15.f64[0];
              v110 = v28[21];
              v138 = a14;
              v141 = v77;
              v149 = v91;
              v152 = v93;
              v143 = v76;
              v146 = v92;
              v132 = v89;
              v135 = v83;
              v130 = v15;
              if (v110)
              {
                (*(*v110 + 16))(v110, 2, __Start);
                (*(*v28[21] + 32))(v28[21], v109, &v155, &v155);
                a14 = v138;
                v77 = v141;
                v91 = v149;
                v93 = v152;
                v76 = v143;
                v92 = v146;
                v89 = v132;
                v83 = v135;
                v15 = v130;
              }

              v111 = v28[22];
              if (v111)
              {
                (*(*v111 + 16))(v111, 2, v156);
                (*(*v28[22] + 32))(v28[22], v109, &buf, &buf);
                a14 = v138;
                v77 = v141;
                v91 = v149;
                v93 = v152;
                v76 = v143;
                v92 = v146;
                v89 = v132;
                v83 = v135;
                v15 = v130;
              }

              v91 = vmlaq_n_f64(v91, v128, v109);
              v92 = vmlaq_n_f64(v92, v127, v109);
              v93.n128_f64[0] = v93.n128_f64[0] + v104 * v109;
              v77 = vmlaq_n_f64(v77, v126, v109);
              v83 = vmlaq_n_f64(v83, v125, v109);
              a14.n128_f64[0] = a14.n128_f64[0] + v105 * v109;
              v89 = vmlaq_n_f64(v89, v124, v109);
              v76 = vmlaq_n_f64(v76, __N_4, v109);
              v15.f64[0] = v15.f64[0] + v106 * v109;
              v107 += 4 * v109;
              v108 += 4 * v109;
              v102 -= v109;
            }

            while (v102);
          }
        }

        else
        {
          v91 = *(v28 + 3);
          v92 = *(v28 + 4);
          v93.n128_u64[0] = v28[10];
          v77 = *(v28 + 11);
          v83 = *(v28 + 13);
          a14.n128_u64[0] = v28[15];
          *&v15.f64[0] = v28[20];
          v155.__r_.__value_.__r.__words[2] = v29;
          v94 = v30;
          buf.__r_.__value_.__r.__words[2] = v30;
          HIDWORD(buf.__r_.__value_.__r.__words[1]) = 4 * a7;
          HIDWORD(v155.__r_.__value_.__r.__words[1]) = 4 * a7;
          v95 = *(v28 + 4);
          *__Start = *(v28 + 3);
          *&__Start[16] = v95;
          v96 = v28[10];
          v76 = *(v28 + 9);
          v163 = *(v28 + 8);
          v89 = *(v28 + 8);
          v164 = *(v28 + 9);
          v98 = *(v28 + 20);
          v97 = v28[21];
          v162 = v96;
          v165 = v98;
          v99 = *(v28 + 13);
          *v156 = *(v28 + 11);
          *&v156[16] = v99;
          v157 = v28[15];
          v100 = *(v28 + 9);
          v158 = *(v28 + 8);
          v159 = v100;
          v160 = *(v28 + 20);
          v137 = a14.n128_u64[0];
          v140 = v77;
          v148 = v91;
          v151 = v93.n128_u64[0];
          v142 = v76;
          v145 = v92;
          v131 = v89;
          v134 = v83;
          v129 = v15.f64[0];
          if (v97)
          {
            (*(*v97 + 16))(v97, 2, __Start);
            (*(*v28[21] + 32))(v28[21], a7, &v155, &v155);
            a14.n128_u64[0] = v137;
            v77 = v140;
            v91 = v148;
            v93.n128_u64[0] = v151;
            v76 = v142;
            v92 = v145;
            v89 = v131;
            v83 = v134;
            v15.f64[0] = v129;
          }

          v101 = v28[22];
          if (v101)
          {
            (*(*v101 + 16))(v101, 2, v156);
            (*(*v28[22] + 32))(v28[22], a7, &buf, &buf);
            a14.n128_u64[0] = v137;
            v77 = v140;
            v91 = v148;
            v93.n128_u64[0] = v151;
            v76 = v142;
            v92 = v145;
            v89 = v131;
            v83 = v134;
            v15.f64[0] = v129;
          }
        }

        *(v28 + 3) = v91;
        *(v28 + 4) = v92;
        v28[10] = v93.n128_u64[0];
        *(v28 + 11) = v77;
        *(v28 + 13) = v83;
        v28[15] = a14.n128_u64[0];
        *(v28 + 8) = v89;
        *(v28 + 9) = v76;
        v28[20] = *&v15.f64[0];
        v112 = *(v28 + 54);
        *__Start = *(v28 + 53);
        *v156 = v112;
        v113 = *(v28 + 28);
        if (v113 == *__Start)
        {
          v115 = v112;
          v114 = *(v28 + 29);
          if (v114 == v115)
          {
            MEMORY[0x1E12BE8F0](v29, 1, __Start, __O, 1, __O, 1, a7);
            MEMORY[0x1E12BE8F0](v94, 1, v156, v120, 1, v120, 1, a7);
            goto LABEL_86;
          }
        }

        else
        {
          v114 = *(v28 + 29);
          v115 = v112;
        }

        v116 = (v113 - *__Start) / a7;
        __Step = v116;
        v117 = (v114 - v115) / a7;
        v153 = v117;
        vDSP_vrampmuladd(v29, 1, __Start, &__Step, __O, 1, a7);
        vDSP_vrampmuladd(v94, 1, v156, &v153, v120, 1, a7);
LABEL_86:
        result = 0;
        *(this + 75) = a8;
        return result;
      }
    }

    else
    {
      *(v28 + 49) = SphericalHeadSpatializer::CalculateInterauralTimeDelays(this, *v31, v39, *(this + 2));
      *(v28 + 50) = a10.n128_f32[0];
    }

    v42 = 1;
    goto LABEL_40;
  }

  if (getAUSMV2Log(void)::onceToken != -1)
  {
    dispatch_once(&getAUSMV2Log(void)::onceToken, &__block_literal_global_9299);
  }

  v37 = getAUSMV2Log(void)::gLog;
  if (os_log_type_enabled(getAUSMV2Log(void)::gLog, OS_LOG_TYPE_DEBUG))
  {
    std::string::basic_string[abi:ne200100]<0>(&v155, "SphericalHeadSpatializer");
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v156, &v155, "::");
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__Start, v156, "processAccumulating");
    if (__Start[23] >= 0)
    {
      v119 = __Start;
    }

    else
    {
      v119 = *__Start;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v119;
    _os_log_debug_impl(&dword_1DDB85000, v37, OS_LOG_TYPE_DEBUG, "%s: ERROR: not initialized", &buf, 0xCu);
    if ((__Start[23] & 0x80000000) != 0)
    {
      operator delete(*__Start);
    }

    if ((v156[23] & 0x80000000) != 0)
    {
      operator delete(*v156);
    }

    if (SHIBYTE(v155.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v155.__r_.__value_.__l.__data_);
    }
  }

  return 4294956429;
}

void sub_1DDF75DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (a55 < 0)
  {
    operator delete(__p);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  _Unwind_Resume(exception_object);
}

float SphericalHeadSpatializer::CalculateInterauralTimeDelays(SphericalHeadSpatializer *this, float a2, float a3, float a4)
{
  v5 = ((180.0 - a2) / 180.0) * 3.14159265;
  v6 = (a3 / 180.0) * 3.14159265;
  v7 = cosf(v6);
  v8 = (1.0 - v7) * 0.5;
  v9 = v5;
  v10 = v9 + -1.57079633;
  v11 = cosf(v10);
  asinf(sqrtf(v8 + (v7 * ((1.0 - v11) * 0.5))));
  v12 = v9 + -4.71238898;
  v13 = cosf(v12);
  return (a4 * 0.00052353) * asinf(sqrtf(v8 + (v7 * ((1.0 - v13) * 0.5))));
}

uint64_t SphericalHeadSpatializer::initialize(SphericalHeadSpatializer *this, float a2, unsigned int a3)
{
  if (a3 >= 2)
  {
    operator new();
  }

  return 4294900553;
}

void sub_1DDF76164(_Unwind_Exception *a1)
{
  v4 = *(v1 + 176);
  if (v4)
  {
    (*(*v4 + 8))(v4);
    *(v1 + 176) = 0;
  }

  v5 = *(v1 + 168);
  if (v5)
  {
    (*(*v5 + 8))(v5);
    *(v1 + 168) = 0;
  }

  if (*v1)
  {
    free(*v1);
    *v1 = 0;
  }

  MEMORY[0x1E12BD160](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<SphericalHeadPanner>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 176);
    if (v3)
    {
      (*(*v3 + 8))(v3);
      *(v2 + 176) = 0;
    }

    v4 = *(v2 + 168);
    if (v4)
    {
      (*(*v4 + 8))(v4);
      *(v2 + 168) = 0;
    }

    if (*v2)
    {
      free(*v2);
      *v2 = 0;
    }

    JUMPOUT(0x1E12BD160);
  }

  return result;
}

void SphericalHeadSpatializer::~SphericalHeadSpatializer(SphericalHeadSpatializer *this)
{
  *this = &unk_1F592FFE8;
  std::unique_ptr<SphericalHeadPanner>::reset[abi:ne200100](this + 39, 0);
  Spatializer::~Spatializer(this);

  JUMPOUT(0x1E12BD160);
}

{
  *this = &unk_1F592FFE8;
  std::unique_ptr<SphericalHeadPanner>::reset[abi:ne200100](this + 39, 0);

  Spatializer::~Spatializer(this);
}

uint64_t AUBeamNFSelector::SupportedNumChannels(AUBeamNFSelector *this, const AUChannelInfo **a2)
{
  if (a2)
  {
    *a2 = &AUBeamNFSelector::SupportedNumChannels(AUChannelInfo const**)::sSupportedChannelConfigs;
  }

  return 1;
}

uint64_t AUBeamNFSelector::GetParameterValueStrings(AUBeamNFSelector *this, int a2, int a3, const __CFArray **a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return 0;
  }

  if (a2)
  {
    return 4294956430;
  }

  result = 0;
  if (a3 <= 1)
  {
    if (!a3)
    {
      v9 = xmmword_1E866FA08;
      v10 = *&off_1E866FA18;
      v6 = 4;
      goto LABEL_17;
    }

    if (a3 != 1)
    {
      return result;
    }

    v7 = &xmmword_1E866FA28;
    goto LABEL_15;
  }

  if (a3 != 2)
  {
    if (a3 != 3)
    {
      if (a3 != 4)
      {
        return result;
      }

      v9 = xmmword_1E866FA80;
      v6 = 2;
      goto LABEL_17;
    }

    v7 = &xmmword_1E866FA68;
LABEL_15:
    v9 = *v7;
    *&v10 = *(v7 + 2);
    v6 = 3;
    goto LABEL_17;
  }

  v9 = xmmword_1E866FA40;
  v10 = *&off_1E866FA50;
  v11 = @"-X beam.";
  v6 = 5;
LABEL_17:
  v8 = CFArrayCreate(0, &v9, v6, 0);
  result = 0;
  *a4 = v8;
  return result;
}

uint64_t AUBeamNFSelector::RestoreState(OpaqueAudioComponentInstance **this, const void *a2)
{
  result = ausdk::AUBase::RestoreState(this, a2);
  if (!result)
  {
    ++*(this + 132);
  }

  return result;
}

uint64_t AUBeamNFSelector::GetParameterInfo(AUBeamNFSelector *this, int a2, int a3, AudioUnitParameterInfo *buffer)
{
  if (a2)
  {
    return 4294956430;
  }

  buffer->flags = 0;
  buffer->unitName = 0;
  switch(a3)
  {
    case 0:
      buffer->cfNameString = @"Position detection mode.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Position detection mode.", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      v6 = 0x4040000000000000;
      goto LABEL_9;
    case 1:
      v11 = 1073774592;
      buffer->cfNameString = @"Detected phone position.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Detected phone position.", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v13 = 0x4000000000000000;
      goto LABEL_19;
    case 2:
      v11 = 1073774592;
      buffer->cfNameString = @"Current beam.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Current beam.", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v13 = 0x4080000000000000;
LABEL_19:
      *&buffer->minValue = v13;
      buffer->defaultValue = 0.0;
      goto LABEL_44;
    case 3:
      buffer->cfNameString = @"Output mode.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Output mode.", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      *&buffer->minValue = 0x4000000000000000;
      buffer->defaultValue = 0.0;
      goto LABEL_37;
    case 4:
      buffer->cfNameString = @"Update threshold mode.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Update threshold mode.", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Indexed;
      v6 = 0x3F80000000000000;
LABEL_9:
      *&buffer->minValue = v6;
      buffer->defaultValue = 1.0;
      goto LABEL_37;
    case 5:
      v14 = @"Update threshold.";
      goto LABEL_23;
    case 6:
      buffer->cfNameString = @"Update threshold at Noise level 1.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Update threshold at Noise level 1.", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v16 = 7.0;
      goto LABEL_28;
    case 7:
      v14 = @"Update threshold at Noise level 2.";
LABEL_23:
      buffer->cfNameString = v14;
      buffer->flags = 0x8000000;
      CFStringGetCString(v14, buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v16 = 4.0;
LABEL_28:
      buffer->defaultValue = v16;
      v7 = 524288.0;
      goto LABEL_36;
    case 8:
      buffer->cfNameString = @"Noise level 1.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Noise level 1.", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v10 = 60.0;
      goto LABEL_32;
    case 9:
      buffer->cfNameString = @"Noise level 2.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Noise level 2.", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v10 = 75.0;
LABEL_32:
      buffer->defaultValue = v10;
      v7 = 5.27765667e13;
      goto LABEL_36;
    case 10:
      v11 = 1073774592;
      buffer->cfNameString = @"Current noise level.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Current noise level.", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      buffer->defaultValue = 60.0;
      v22 = 0x42C8000041A00000;
      goto LABEL_43;
    case 11:
      buffer->cfNameString = @"Wind detection probability.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Wind detection probability.", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      buffer->defaultValue = 0.0;
      goto LABEL_35;
    case 12:
      buffer->cfNameString = @"Wind detection threshold.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Wind detection threshold.", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      v9 = 1.0;
      goto LABEL_34;
    case 13:
      buffer->cfNameString = @"Threshold left.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Threshold left.", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v8 = 0.84;
      goto LABEL_26;
    case 14:
      buffer->cfNameString = @"Threshold right.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Threshold right.", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      v8 = -0.13;
LABEL_26:
      buffer->defaultValue = v8;
      __asm { FMOV            V0.2S, #-4.0 }

      v7 = -_D0;
      goto LABEL_36;
    case 15:
      buffer->cfNameString = @"Start frequency (Fmin).";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Start frequency (Fmin).", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Hertz;
      buffer->defaultValue = 160.0;
      v7 = 7.67384672e21;
      goto LABEL_36;
    case 16:
      buffer->cfNameString = @"End frequency (Fmax).";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"End frequency (Fmax).", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Hertz;
      buffer->defaultValue = 800.0;
      v7 = 3.32454649e25;
      goto LABEL_36;
    case 17:
      v11 = 1073774592;
      v15 = @"Update threshold crossed.";
      goto LABEL_41;
    case 18:
      v11 = 1073774592;
      v12 = @"M1 Separation.";
      goto LABEL_39;
    case 19:
      v11 = 1073774592;
      v12 = @"M4 Separation.";
      goto LABEL_39;
    case 20:
      v11 = 1073774592;
      v12 = @"MaxSep: max([M1],[M4],[+X],[-X]).";
      goto LABEL_39;
    case 21:
      buffer->cfNameString = @"PSD smoothing time constant.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"PSD smoothing time constant.", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      v9 = 0.1;
      goto LABEL_34;
    case 22:
      buffer->cfNameString = @"Separation Difference smoothing time constant.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Separation Difference smoothing time constant.", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Seconds;
      v9 = 0.5;
LABEL_34:
      buffer->defaultValue = v9;
LABEL_35:
      v7 = 0.0078125;
LABEL_36:
      *&buffer->minValue = v7;
LABEL_37:
      v11 = -1073741824;
      goto LABEL_44;
    case 23:
      v11 = 1073774592;
      v15 = @"Downlink speech presence probabiility";
LABEL_41:
      buffer->cfNameString = v15;
      buffer->flags = 0x8000000;
      CFStringGetCString(v15, buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      buffer->defaultValue = 0.0;
      v22 = 0x3F80000000000000;
      goto LABEL_43;
    case 24:
      v11 = 1073774592;
      v12 = @"+X Separation.";
      goto LABEL_39;
    case 25:
      v11 = 1073774592;
      v12 = @"-X Separation.";
LABEL_39:
      buffer->cfNameString = v12;
      buffer->flags = 0x8000000;
      CFStringGetCString(v12, buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Decibels;
      buffer->defaultValue = 0.0;
      v22 = 0x41A0000000000000;
      goto LABEL_43;
    case 26:
      v11 = 1073774592;
      buffer->cfNameString = @"Mic Status.";
      buffer->flags = 0x8000000;
      CFStringGetCString(@"Mic Status.", buffer->name, 52, 0x8000100u);
      buffer->unit = kAudioUnitParameterUnit_Generic;
      buffer->defaultValue = 5.0;
      v22 = 0x40A0000000000000;
LABEL_43:
      *&buffer->minValue = v22;
LABEL_44:
      result = 0;
      buffer->flags |= v11;
      break;
    default:
      result = 4294956418;
      break;
  }

  return result;
}