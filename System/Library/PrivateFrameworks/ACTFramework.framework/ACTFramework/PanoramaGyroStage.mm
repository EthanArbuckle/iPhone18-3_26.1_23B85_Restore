@interface PanoramaGyroStage
- (PanoramaGyroStage)init;
- (int)prepareToProcess:(int)process sliceWidth:(unint64_t)width sliceHeight:(unint64_t)height;
- (int)resetState;
- (int)update:(id)update sliceType:(int)type sliceID:(unint64_t)d;
- (int)updateWithTransformMatrix:(float *)matrix sliceType:(int)type;
- (int)updateWithTranslation:(float *)translation sliceType:(int)type;
- (void)currentAccumulatedHomographyForThread:(double)thread;
@end

@implementation PanoramaGyroStage

- (PanoramaGyroStage)init
{
  objc_msgSend_resetState(self, a2, v2, v3);
  fig_note_initialize_category_with_default_work();
  return self;
}

- (int)resetState
{
  *&self->_txty[7] = 0;
  *&self->_txty[15] = 0;
  *&self->_txtyAccumulatedForFinal[7] = 0;
  v2 = MEMORY[0x277D860B0];
  v3 = *(MEMORY[0x277D860B0] + 16);
  *&self->_anon_60[7] = *MEMORY[0x277D860B0];
  *&self->_anon_60[23] = v3;
  *&self->_anon_60[39] = *(v2 + 32);
  self->_curRotationRate = 0.0;
  *&self->_sliceHeight = 0x457C0000453D0000;
  self->_motionSource = 0;
  return 0;
}

- (int)prepareToProcess:(int)process sliceWidth:(unint64_t)width sliceHeight:(unint64_t)height
{
  self->_sliceHeight = height;
  self->_sliceWidth = width;
  self->_gyroMode = process;
  return 0;
}

- (int)update:(id)update sliceType:(int)type sliceID:(unint64_t)d
{
  dCopy = d;
  v6 = *&type;
  v51[16] = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v11 = updateCopy;
  if (updateCopy)
  {
    self->_motionSource = 0;
    v12 = objc_msgSend_objectForKey_(updateCopy, v9, @"Attitude", v10);

    if (v12)
    {
      v15 = objc_msgSend_objectForKeyedSubscript_(v11, v13, @"Attitude", v14);
      if (objc_msgSend_length(v15, v16, v17, v18) == 24)
      {
        v51[0] = 0.0;
        objc_msgSend_getBytes_length_(v15, v19, v51, 8);
        self->_curRotationRate = fabs(v51[0] * 30.0);
        v22 = objc_msgSend_objectForKeyedSubscript_(v11, v20, @"ExposureTime", v21);
        v26 = v22;
        if (v22)
        {
          objc_msgSend_floatValue(v22, v23, v24, v25);
          self->_curRotationRate = self->_curRotationRate * (v27 * 0.02632 + 0.7368);
        }
      }
    }

    v28 = objc_msgSend_objectForKey_(v11, v13, @"TransformMatrix", v14);

    if (v28)
    {
      v31 = objc_msgSend_objectForKeyedSubscript_(v11, v29, @"TransformMatrix", v30);
      if (objc_msgSend_length(v31, v32, v33, v34) == 36)
      {
        objc_msgSend_getBytes_length_(v31, v35, v51, 36);
        LODWORD(v28) = objc_msgSend_updateWithTransformMatrix_sliceType_(self, v36, v51, v6);
        if (!v28)
        {
          self->_motionSource |= 2u;
        }

        HostTime = ACT_getHostTime();
        panoLog(32, "FrameID:%04d time %.3f: gyro updated with TransformMatrix\n", dCopy, HostTime);
      }

      else
      {
        LODWORD(v28) = 0;
      }
    }

    v38 = objc_msgSend_objectForKey_(v11, v29, @"Translation", v30);

    if (v38)
    {
      v41 = objc_msgSend_objectForKeyedSubscript_(v11, v39, @"Translation", v40);
      if (objc_msgSend_length(v41, v42, v43, v44) == 8)
      {
        objc_msgSend_getBytes_length_(v41, v45, v51, 8);
        LODWORD(v28) = objc_msgSend_updateWithTranslation_sliceType_(self, v46, v51, v6);
        if (!v28)
        {
          self->_motionSource |= 1u;
        }

        v47 = ACT_getHostTime();
        panoLog(32, "FrameID:%04d time %.3f: gyro updated with txty = %f %f\n", dCopy, v47, *v51, *(v51 + 1));
      }
    }

    if (!self->_motionSource)
    {
      v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      v49 = ACT_getHostTime();
      panoLog(4, "FrameID:%04d time %.3f: NO motion data available\n", dCopy, v49);
    }
  }

  else
  {
    LODWORD(v28) = 2;
  }

  return v28;
}

- (int)updateWithTranslation:(float *)translation sliceType:(int)type
{
  *&v4 = vmul_f32(*translation, vrev64_s32(vdiv_f32(*&self->_sliceHeight, 0x457B7000453D0000)));
  if (type)
  {
    v5 = vsub_f32(*&v4, *&self->_txty[7]);
  }

  else
  {
    v5 = 0;
  }

  *(&v4 + 1) = v5;
  *&self->_txty[7] = v4;
  *&self->_txtyAccumulatedForFinal[7] = vadd_f32(v5, *&self->_txtyAccumulatedForFinal[7]);
  return 0;
}

- (int)updateWithTransformMatrix:(float *)matrix sliceType:(int)type
{
  v4 = *(MEMORY[0x277D860B0] + 16);
  v17 = *MEMORY[0x277D860B0];
  v18 = v4;
  v19 = *(MEMORY[0x277D860B0] + 32);
  if (type)
  {
    for (i = 0; i != 3; ++i)
    {
      v6 = 0;
      v7 = &v17;
      do
      {
        if (i >= 2)
        {
          v8 = 2;
        }

        else
        {
          v8 = i;
        }

        v7[v8] = matrix[v6++];
        v7 += 4;
      }

      while (v6 != 3);
      matrix += 3;
    }
  }

  v9 = 0;
  v10 = *&self->_anon_60[7];
  v11 = *&self->_anon_60[23];
  v12 = *&self->_anon_60[39];
  v20[0] = v17;
  v20[1] = v18;
  v20[2] = v19;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  do
  {
    *(&v21 + v9 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, COERCE_FLOAT(v20[v9])), v11, *&v20[v9], 1), v12, v20[v9], 2);
    ++v9;
  }

  while (v9 != 3);
  v13 = v21;
  v14 = v22;
  v15 = v23;
  *&self->_anon_60[15] = DWORD2(v21);
  *&self->_anon_60[7] = v13;
  *&self->_anon_60[31] = DWORD2(v14);
  *&self->_anon_60[23] = v14;
  *&self->_anon_60[47] = DWORD2(v15);
  *&self->_anon_60[39] = v15;
  return 0;
}

- (void)currentAccumulatedHomographyForThread:(double)thread
{
  v7 = self[10].n128_u32[0];
  if (v7)
  {
    self[2].n128_u64[1] = 0;
  }

  else
  {
    v8 = MEMORY[0x277D860B0];
    if ((v7 & 2) != 0)
    {
      a6.n128_u32[0] = self[9].n128_u32[2];
      transformToHomography(self[6].n128_f64[0], self[7].n128_f64[0], self[8], self[9].n128_f32[3], a6);
      v9 = v8[1];
      self[6] = *v8;
      self[7] = v9;
      self[8] = v8[2];
    }
  }
}

@end