@interface AVAudioEnvironmentNode
- (AVAudio3DAngularOrientation)listenerAngularOrientation;
- (AVAudio3DPoint)listenerPosition;
- (AVAudio3DVectorOrientation)listenerVectorOrientation;
- (AVAudioEnvironmentDistanceAttenuationParameters)distanceAttenuationParameters;
- (AVAudioEnvironmentOutputType)outputType;
- (AVAudioEnvironmentReverbParameters)reverbParameters;
- (AVAudioNodeBus)nextAvailableInputBus;
- (BOOL)isListenerHeadTrackingEnabled;
- (NSArray)applicableRenderingAlgorithms;
- (float)outputVolume;
- (void)setListenerAngularOrientation:(AVAudio3DAngularOrientation)listenerAngularOrientation;
- (void)setListenerHeadTrackingEnabled:(BOOL)enabled;
- (void)setListenerPosition:(AVAudio3DPoint)listenerPosition;
- (void)setListenerVectorOrientation:(AVAudio3DVectorOrientation *)listenerVectorOrientation;
- (void)setOutputType:(AVAudioEnvironmentOutputType)outputType;
- (void)setOutputVolume:(float)outputVolume;
@end

@implementation AVAudioEnvironmentNode

- (AVAudioEnvironmentReverbParameters)reverbParameters
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->super._impl);
  v3 = *(self->super._impl + 44);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (AVAudioEnvironmentDistanceAttenuationParameters)distanceAttenuationParameters
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->super._impl);
  v3 = *(self->super._impl + 41);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (AVAudio3DAngularOrientation)listenerAngularOrientation
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v10, self->super._impl);
  impl = self->super._impl;
  v4 = impl[73];
  v5 = impl[74];
  v6 = impl[75];
  if (v13 == 1)
  {
    std::recursive_mutex::unlock(v12);
  }

  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  v7 = v4;
  v8 = v5;
  v9 = v6;
  result.roll = v9;
  result.pitch = v8;
  result.yaw = v7;
  return result;
}

- (void)setListenerAngularOrientation:(AVAudio3DAngularOrientation)listenerAngularOrientation
{
  roll = listenerAngularOrientation.roll;
  pitch = listenerAngularOrientation.pitch;
  yaw = listenerAngularOrientation.yaw;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v9, self->super._impl);
  impl = self->super._impl;
  if (*(impl + 73) != yaw || *(impl + 74) != pitch || *(impl + 75) != roll)
  {
    *(impl + 73) = yaw;
    *(impl + 74) = pitch;
    *(impl + 75) = roll;
    *(impl + 284) = 1065353216;
    *(impl + 268) = kInitialVectorOrientation;
    RotateVectorByEulerAngles(yaw, pitch, roll, (impl + 268));
    RotateVectorByEulerAngles(*(impl + 73), *(impl + 74), *(impl + 75), (impl + 280));
    (*(*impl + 128))(impl, 19, 0, 0, *(impl + 73));
    (*(*impl + 128))(impl, 20, 0, 0, *(impl + 74));
    (*(*impl + 128))(impl, 21, 0, 0, *(impl + 75));
  }

  if (v12 == 1)
  {
    std::recursive_mutex::unlock(v11);
  }

  if (v10 == 1)
  {
    v8 = v9;

    std::recursive_mutex::unlock(v8);
  }
}

- (AVAudio3DVectorOrientation)listenerVectorOrientation
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v7, self->super._impl);
  *retstr = *(self->super._impl + 268);
  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  if (v8 == 1)
  {
    v6 = v7;

    std::recursive_mutex::unlock(v6);
  }

  return result;
}

- (void)setListenerVectorOrientation:(AVAudio3DVectorOrientation *)listenerVectorOrientation
{
  v113 = *MEMORY[0x1E69E9840];
  p_impl = &self->super._impl;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v108, self->super._impl);
  v5 = *p_impl;
  x = listenerVectorOrientation->forward.x;
  y = listenerVectorOrientation->forward.y;
  z = listenerVectorOrientation->forward.z;
  v9.i64[0] = *&listenerVectorOrientation->up.x;
  v10 = listenerVectorOrientation->up.z;
  if ((listenerVectorOrientation->forward.x != 0.0 || (vaddvq_s32(vbicq_s8(xmmword_1BA6CF460, vceqzq_f32(*&listenerVectorOrientation->forward.y))) & 0xF) != 0 || v10 != 0.0) && (*(v5 + 67) != x || *(v5 + 68) != y || *(v5 + 69) != z || *(v5 + 70) != v9.f32[0] || *(v5 + 71) != v9.f32[1] || *(v5 + 72) != v10))
  {
    v11 = sqrtf(((y * y) + (x * x)) + (z * z));
    if (v11 != 0.0)
    {
      v12 = 1.0 / v11;
      x = x * v12;
      y = y * v12;
      z = z * v12;
    }

    v13 = sqrtf((COERCE_FLOAT(vmul_f32(*&v9, *&v9).i32[1]) + (v9.f32[0] * v9.f32[0])) + (v10 * v10));
    if (v13 != 0.0)
    {
      v14 = 1.0 / v13;
      *v9.f32 = vmul_n_f32(*v9.f32, v14);
      v10 = v10 * v14;
    }

    *(v5 + 67) = x;
    *(v5 + 68) = y;
    *(v5 + 69) = z;
    *(v5 + 35) = v9.i64[0];
    *(v5 + 72) = v10;
    v15 = LODWORD(y);
    v16 = v9.f32[1];
    v106 = v10;
    v107 = v9;
    v105 = z;
    if (fabsf(z) <= 0.0001)
    {
      *(v5 + 73) = 0;
      if (y >= 0.0)
      {
        v21 = 90;
      }

      else
      {
        v21 = -90;
      }

      *(v5 + 74) = v21;
      v22 = 1.0;
      if (v10 <= 1.0)
      {
        v22 = v10;
        if (v10 < -1.0)
        {
          v22 = -1.0;
        }
      }

      v23 = acosf(v22);
      v25 = v106;
      v26 = v107;
      v27 = 57.296;
    }

    else
    {
      v17 = (SLODWORD(x) >> 31) | 1;
      v18 = (((x * 0.0) + 0.0) - z) / sqrtf(((x * x) + 0.0) + (z * z));
      v104 = y;
      if ((LODWORD(z) & 0x80000000) != 0)
      {
        v28 = 1.0;
        if (v18 <= 1.0)
        {
          v28 = v18;
          if (v18 < -1.0)
          {
            v28 = -1.0;
          }
        }

        v20 = (v17 * 57.296) * acosf(v28);
      }

      else
      {
        v19 = 1.0;
        if (v18 <= 1.0)
        {
          v19 = v18;
          if (v18 < -1.0)
          {
            v19 = -1.0;
          }
        }

        v20 = ((acosf(v19) * -57.296) + 180.0) * -v17;
      }

      *(v5 + 73) = v20;
      v31 = __sincosf_stret((v20 * 0.017453) * 0.5);
      cosval = v31.__cosval;
      LODWORD(v29) = *&v31;
      v32 = (v29 * 0.0) + (cosval * 0.0);
      v33 = v29 - (cosval * 0.0);
      v34 = cosval + ((v29 * 0.0) * 0.0);
      v35 = -v33;
      v36 = -((cosval * 0.0) - (v29 * 0.0));
      v37 = sqrtf((((v32 * v32) + (v34 * v34)) + (v33 * v33)) + (-((v29 * 0.0) - (cosval * 0.0)) * -((v29 * 0.0) - (cosval * 0.0))));
      if (v37 == 0.0)
      {
        v39 = cosval + ((v29 * 0.0) * 0.0);
      }

      else
      {
        v38 = 1.0 / v37;
        v39 = v34 * (1.0 / v37);
        v32 = v32 * v38;
        v35 = v38 * v35;
        v36 = v38 * v36;
      }

      v40 = v36 + (((v32 * -0.0) + (v39 * 0.0)) + (v35 * -0.0));
      v41 = (((v32 * 0.0) + (v39 * 0.0)) - v35) + (v36 * -0.0);
      v42 = ((v32 + (v39 * 0.0)) + (v35 * 0.0)) + (v36 * 0.0);
      v43 = (((v32 * 0.0) - v39) + (v35 * -0.0)) + (v36 * 0.0);
      v44 = (((v34 * v41) - (v40 * v32)) - (v42 * v36)) + (v43 * v35);
      v45 = (((v36 * v41) - (v40 * v35)) + (v42 * v34)) - (v43 * v32);
      v46 = ((-(v35 * v41) - (v40 * v36)) + (v42 * v32)) + (v43 * v34);
      v47 = (((v104 * v45) + (x * v44)) + (v105 * v46)) / sqrtf(((v45 * v45) + (v44 * v44)) + (v46 * v46));
      v48 = 1.0;
      if (v47 <= 1.0)
      {
        v48 = v47;
        if (v47 < -1.0)
        {
          v48 = -1.0;
        }
      }

      v49 = (v15 >> 31) | 1;
      v50 = (acosf(v48) * 57.296) * v49;
      *(v5 + 74) = v50;
      v51 = __sincosf_stret((v50 * 0.017453) * 0.5);
      v52 = -((v29 * v51.__sinval) - ((cosval * v51.__cosval) * 0.0));
      v53 = (v29 * (v51.__cosval * 0.0)) + (v51.__sinval * cosval);
      v54 = (cosval * (v51.__sinval * -0.0)) + (v51.__cosval * v29);
      v55 = (cosval * v51.__cosval) + ((v29 * v51.__sinval) * 0.0);
      v56 = -v54;
      v57 = -(((cosval * v51.__cosval) * 0.0) - (v29 * v51.__sinval));
      v58 = sqrtf((((v53 * v53) + (v55 * v55)) + (v54 * v54)) + (v52 * v52));
      if (v58 == 0.0)
      {
        v60 = (cosval * v51.__cosval) + ((v29 * v51.__sinval) * 0.0);
      }

      else
      {
        v59 = 1.0 / v58;
        v60 = v55 * (1.0 / v58);
        v53 = v53 * v59;
        v56 = v59 * v56;
        v57 = v59 * v57;
      }

      v61 = (((v53 * -0.0) + (v60 * 0.0)) - v56) + (v57 * -0.0);
      v62 = (((v53 * 0.0) + (v60 * 0.0)) + (v56 * 0.0)) - v57;
      v63 = ((v60 + (v53 * -0.0)) + (v56 * 0.0)) + (v57 * 0.0);
      v64 = ((v53 + (v60 * 0.0)) + (v56 * -0.0)) + (v57 * 0.0);
      v65 = (((v55 * v62) - (v61 * v53)) - (v63 * v57)) + (v64 * v56);
      v66 = (((v57 * v62) - (v61 * v56)) + (v63 * v55)) - (v64 * v53);
      v67 = ((-(v56 * v62) - (v61 * v57)) + (v63 * v53)) + (v64 * v55);
      v68 = (((v16 * v66) + (v107.f32[0] * v65)) + (v106 * v67)) / sqrtf(((v66 * v66) + (v65 * v65)) + (v67 * v67));
      v69 = 1.0;
      if (v68 <= 1.0)
      {
        v69 = v68;
        if (v68 < -1.0)
        {
          v69 = -1.0;
        }
      }

      v23 = acosf(v69) * 57.296;
      v25 = v106;
      v26 = v107;
      if (COERCE_INT((v67 * v107.f32[0]) - (v65 * v106)) >= 0)
      {
        v70 = v49;
      }

      else
      {
        v70 = -v49;
      }

      v27 = v70;
    }

    *(v5 + 75) = v23 * v27;
    v24.i64[0] = *(v5 + 268);
    v24.f32[2] = v105;
    v71 = vnegq_f32(v24);
    v72 = v26;
    v72.f32[2] = v25;
    v73 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v71, v71), v71, 0xCuLL), vnegq_f32(v72)), vextq_s8(vuzp1q_s32(v72, v72), v72, 0xCuLL), v24);
    v74 = *&v71.i32[2] + (v16 + v73.f32[2]);
    if (v74 >= 0.0)
    {
      v84 = sqrtf(v74 + 1.0);
      v85 = v84 + v84;
      v86 = vrecpe_f32(COERCE_UNSIGNED_INT(v84 + v84));
      v87 = vmul_f32(v86, vrecps_f32(COERCE_UNSIGNED_INT(v84 + v84), v86));
      v88 = vmul_f32(v87, vrecps_f32(COERCE_UNSIGNED_INT(v84 + v84), v87)).f32[0];
      v94 = (v25 - *&v71.i32[1]) * v88;
      v95 = (*v71.i32 - v73.f32[1]) * v88;
      v96 = (v73.f32[0] - v26.f32[0]) * v88;
      v83 = v85 * 0.25;
    }

    else
    {
      if (v73.f32[2] >= v16 && v73.f32[2] >= *&v71.i32[2])
      {
        v89 = sqrtf(((1.0 - v16) - *&v71.i32[2]) + v73.f32[2]);
        *&v90 = v89 + v89;
        v91 = vrecpe_f32(v90);
        v92 = vmul_f32(v91, vrecps_f32(v90, v91));
        v93 = vmul_f32(v92, vrecps_f32(v90, v92)).f32[0];
        v94 = *&v90 * 0.25;
        v95 = (v26.f32[0] + v73.f32[0]) * v93;
        v96 = (*v71.i32 + v73.f32[1]) * v93;
        v97 = v25 - *&v71.i32[1];
LABEL_57:
        v83 = v97 * v93;
        goto LABEL_58;
      }

      v76 = 1.0 - v73.f32[2];
      v77 = *&v71.i32[1] + v25;
      if (v16 >= *&v71.i32[2])
      {
        v98 = sqrtf(v16 + (v76 - *&v71.i32[2]));
        v99 = v98 + v98;
        v100 = vrecpe_f32(COERCE_UNSIGNED_INT(v98 + v98));
        v101 = vmul_f32(v100, vrecps_f32(COERCE_UNSIGNED_INT(v98 + v98), v100));
        v93 = vmul_f32(v101, vrecps_f32(COERCE_UNSIGNED_INT(v98 + v98), v101)).f32[0];
        v94 = (v26.f32[0] + v73.f32[0]) * v93;
        v95 = v99 * 0.25;
        v96 = v77 * v93;
        v97 = *v71.i32 - v73.f32[1];
        goto LABEL_57;
      }

      v78 = sqrtf(*&v71.i32[2] + (v76 - v16));
      v79 = v78 + v78;
      v80 = vrecpe_f32(COERCE_UNSIGNED_INT(v78 + v78));
      v81 = vmul_f32(v80, vrecps_f32(COERCE_UNSIGNED_INT(v78 + v78), v80));
      v82 = vmul_f32(v81, vrecps_f32(COERCE_UNSIGNED_INT(v78 + v78), v81)).f32[0];
      v94 = (*v71.i32 + v73.f32[1]) * v82;
      v95 = v77 * v82;
      v96 = v79 * 0.25;
      v83 = (v73.f32[0] - v26.f32[0]) * v82;
    }

LABEL_58:
    *&v102 = -v96;
    *(&v102 + 1) = v94;
    *(&v102 + 1) = __PAIR64__(LODWORD(v83), -v95);
    v112 = v102;
    (*(*v5 + 144))(v5, 3102, 0, 0, &v112, 16);
  }

  if (v111 == 1)
  {
    std::recursive_mutex::unlock(v110);
  }

  if (v109 == 1)
  {
    std::recursive_mutex::unlock(v108);
  }

  v103 = *MEMORY[0x1E69E9840];
}

- (AVAudio3DPoint)listenerPosition
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v10, self->super._impl);
  impl = self->super._impl;
  v4 = impl[64];
  v5 = impl[65];
  v6 = impl[66];
  if (v13 == 1)
  {
    std::recursive_mutex::unlock(v12);
  }

  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  v7 = v4;
  v8 = v5;
  v9 = v6;
  result.z = v9;
  result.y = v8;
  result.x = v7;
  return result;
}

- (void)setListenerPosition:(AVAudio3DPoint)listenerPosition
{
  z = listenerPosition.z;
  y = listenerPosition.y;
  x = listenerPosition.x;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v15, self->super._impl);
  impl = self->super._impl;
  v8.n128_u32[0] = impl[64];
  if (v8.n128_f32[0] != x || (v8.n128_u32[0] = impl[65], v8.n128_f32[0] != y) || (v8.n128_u32[0] = impl[66], v8.n128_f32[0] != z))
  {
    *(impl + 64) = x;
    *(impl + 65) = y;
    *(impl + 66) = z;
    v9 = *(impl + 38);
    v10 = impl + 78;
    if (v9 != (impl + 78))
    {
      do
      {
        AVAudio3DMixingImpl::RecalculateAndSetSphericalCoordsOnMixer(v9[4], v8);
        v11 = v9[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v9[2];
            v13 = *v12 == v9;
            v9 = v12;
          }

          while (!v13);
        }

        v9 = v12;
      }

      while (v12 != v10);
    }
  }

  if (v18 == 1)
  {
    std::recursive_mutex::unlock(v17);
  }

  if (v16 == 1)
  {
    v14 = v15;

    std::recursive_mutex::unlock(v14);
  }
}

- (NSArray)applicableRenderingAlgorithms
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v14, self->super._impl);
  v3 = [(*(*self->super._impl + 48))(self->super._impl 0)];
  v4 = MEMORY[0x1E695DEC8];
  if (v3 < 3)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:1];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:2];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:6];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:3];
    v6 = [v4 arrayWithObjects:{v7, v8, v9, v10, v11, objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 7), 0}];
  }

  else
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:3];
    v6 = [v4 arrayWithObjects:{v5, objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 7), 0}];
  }

  v12 = v6;
  if (v17 == 1)
  {
    std::recursive_mutex::unlock(v16);
  }

  if (v15 == 1)
  {
    std::recursive_mutex::unlock(v14);
  }

  return v12;
}

- (AVAudioNodeBus)nextAvailableInputBus
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v8, self->super._impl);
  impl = self->super._impl;
  v4 = impl[4];
  if (v4)
  {
    v5 = 0;
    v6 = impl[3];
    while (((*(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1) != 0)
    {
      if (v4 == ++v5)
      {
        v5 = v4;
        break;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  return v5;
}

- (float)outputVolume
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->super._impl);
  v3 = *(self->super._impl + 44);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (BOOL)isListenerHeadTrackingEnabled
{
  v17 = *MEMORY[0x1E69E9840];
  p_impl = &self->super._impl;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v8, self->super._impl);
  v3 = *p_impl;
  v12 = 0;
  if (((*(*v3 + 152))(v3, 3111, 0, 0, &v12, 4) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v4 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "AVAudioEnvironmentNodeImpl.mm";
      v15 = 1024;
      v16 = 372;
      _os_log_impl(&dword_1BA5AC000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d error getting spatial mixer headtracking property", buf, 0x12u);
    }
  }

  v5 = v12;
  if (v11 == 1)
  {
    std::recursive_mutex::unlock(v10);
  }

  if (v9 == 1)
  {
    std::recursive_mutex::unlock(v8);
  }

  result = v5 != 0;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)setListenerHeadTrackingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v20 = *MEMORY[0x1E69E9840];
  p_impl = &self->super._impl;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v9, self->super._impl);
  v5 = *p_impl;
  v13 = enabledCopy;
  if (((*(*v5 + 144))(v5, 3111, 0, 0, &v13, 4) & 1) == 0)
  {
    if (AVAudioEngineLogCategory(void)::once != -1)
    {
      dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
    }

    v6 = *AVAudioEngineLogCategory(void)::category;
    if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_ERROR))
    {
      v7 = "Enabling";
      v15 = "AVAudioEnvironmentNodeImpl.mm";
      *buf = 136315650;
      if (!v13)
      {
        v7 = "Disabling";
      }

      v16 = 1024;
      v17 = 358;
      v18 = 2080;
      v19 = v7;
      _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d error %s spatial mixer headtracking", buf, 0x1Cu);
    }
  }

  if (v12 == 1)
  {
    std::recursive_mutex::unlock(v11);
  }

  if (v10 == 1)
  {
    std::recursive_mutex::unlock(v9);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setOutputVolume:(float)outputVolume
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v9, self->super._impl);
  impl = self->super._impl;
  if (impl[44] != outputVolume)
  {
    v7 = 1.0;
    if (outputVolume < 1.0)
    {
      v7 = outputVolume;
    }

    if (outputVolume <= 0.0)
    {
      v7 = 0.0;
    }

    impl[44] = v7;
    if (v7 <= 0.0)
    {
      v5.n128_u32[0] = -1024458752;
    }

    else
    {
      v5.n128_f32[0] = log10f(v7) * 20.0;
    }

    (*(*impl + 128))(impl, 3, 2, 0, v5);
  }

  if (v12 == 1)
  {
    std::recursive_mutex::unlock(v11);
  }

  if (v10 == 1)
  {
    v8 = v9;

    std::recursive_mutex::unlock(v8);
  }
}

- (AVAudioEnvironmentOutputType)outputType
{
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v5, self->super._impl);
  v3 = *(self->super._impl + 23);
  if (v8 == 1)
  {
    std::recursive_mutex::unlock(v7);
  }

  if (v6 == 1)
  {
    std::recursive_mutex::unlock(v5);
  }

  return v3;
}

- (void)setOutputType:(AVAudioEnvironmentOutputType)outputType
{
  v20 = *MEMORY[0x1E69E9840];
  p_impl = &self->super._impl;
  AVAudioNodeImplBase::GetAttachAndEngineLock(&v11, self->super._impl);
  v5 = *p_impl;
  if (*(v5 + 23) != outputType)
  {
    *(v5 + 23) = outputType;
    if (outputType > AVAudioEnvironmentOutputTypeHeadphones)
    {
      if (outputType == AVAudioEnvironmentOutputTypeBuiltInSpeakers)
      {
        v15 = 2;
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v9 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v17 = "AVAudioEnvironmentNodeImpl.mm";
          v18 = 1024;
          v19 = 333;
          _os_log_impl(&dword_1BA5AC000, v9, OS_LOG_TYPE_INFO, "%25s:%-5d setting output type = built-in speakers", buf, 0x12u);
        }

        v7 = 2;
      }

      else
      {
        if (outputType != AVAudioEnvironmentOutputTypeExternalSpeakers)
        {
          goto LABEL_24;
        }

        v15 = 3;
        if (AVAudioEngineLogCategory(void)::once != -1)
        {
          dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
        }

        v8 = *AVAudioEngineLogCategory(void)::category;
        if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v17 = "AVAudioEnvironmentNodeImpl.mm";
          v18 = 1024;
          v19 = 323;
          _os_log_impl(&dword_1BA5AC000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d setting output type = external speakers", buf, 0x12u);
        }

        v7 = 3;
      }
    }

    else
    {
      if (outputType == AVAudioEnvironmentOutputTypeAuto)
      {
        AVAudioEnvironmentNodeImpl::UpdateAutomaticOutputType(v5);
        goto LABEL_24;
      }

      if (outputType != AVAudioEnvironmentOutputTypeHeadphones)
      {
        goto LABEL_24;
      }

      v15 = 1;
      if (AVAudioEngineLogCategory(void)::once != -1)
      {
        dispatch_once(&AVAudioEngineLogCategory(void)::once, &__block_literal_global_8660);
      }

      v6 = *AVAudioEngineLogCategory(void)::category;
      v7 = 1;
      if (os_log_type_enabled(*AVAudioEngineLogCategory(void)::category, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v17 = "AVAudioEnvironmentNodeImpl.mm";
        v18 = 1024;
        v19 = 328;
        _os_log_impl(&dword_1BA5AC000, v6, OS_LOG_TYPE_INFO, "%25s:%-5d setting output type = headphones", buf, 0x12u);
      }
    }

    if (v7 != *(v5 + 48))
    {
      *(v5 + 48) = v7;
      (*(*v5 + 144))(v5, 3100, 0, 0, &v15, 4);
    }
  }

LABEL_24:
  if (v14 == 1)
  {
    std::recursive_mutex::unlock(v13);
  }

  if (v12 == 1)
  {
    std::recursive_mutex::unlock(v11);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end