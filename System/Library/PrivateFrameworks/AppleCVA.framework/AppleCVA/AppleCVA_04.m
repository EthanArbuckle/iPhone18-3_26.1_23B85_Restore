__n64 sub_240222548(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 == a1)
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_240222548(&v7);
    result.n64_u64[0] = v7;
    v6 = v8;
    *a1 = v7;
    *(a1 + 16) = v6;
    *(a1 + 32) = v9;
  }

  else
  {
    v4 = **(a2 + 8);
    result.n64_u32[1] = 0;
    *a1 = (((*v3 * *v4) + 0.0) + (v3[3] * v4[3])) + (v3[6] * v4[6]);
    *(a1 + 4) = (((v3[1] * *v4) + 0.0) + (v3[4] * v4[3])) + (v3[7] * v4[6]);
    *(a1 + 8) = (((v3[2] * *v4) + 0.0) + (v3[5] * v4[3])) + (v3[8] * v4[6]);
    *(a1 + 12) = (((*v3 * v4[1]) + 0.0) + (v3[3] * v4[4])) + (v3[6] * v4[7]);
    *(a1 + 16) = (((v3[1] * v4[1]) + 0.0) + (v3[4] * v4[4])) + (v3[7] * v4[7]);
    *(a1 + 20) = (((v3[2] * v4[1]) + 0.0) + (v3[5] * v4[4])) + (v3[8] * v4[7]);
    *(a1 + 24) = (((*v3 * v4[2]) + 0.0) + (v3[3] * v4[5])) + (v3[6] * v4[8]);
    *(a1 + 28) = (((v3[1] * v4[2]) + 0.0) + (v3[4] * v4[5])) + (v3[7] * v4[8]);
    result.n64_f32[0] = (((v3[2] * v4[2]) + 0.0) + (v3[5] * v4[5])) + (v3[8] * v4[8]);
    *(a1 + 32) = result.n64_u32[0];
  }

  return result;
}

void sub_240222718(float32x2_t *a1, float *a2)
{
  v4 = (a1[2].f32[1] - a1[3].f32[1]) * 0.5;
  *a2 = v4;
  v5 = (a1[3].f32[0] - a1[1].f32[0]) * 0.5;
  a2[1] = v5;
  v6 = (a1->f32[1] - a1[1].f32[1]) * 0.5;
  a2[2] = v6;
  v7 = a1->f32[0];
  v8 = a1[2].f32[0];
  v9 = a1[4].f32[0];
  v10 = -1.0;
  v11 = (((a1->f32[0] + v8) + v9) + -1.0) * 0.5;
  v12 = ((v5 * v5) + (v4 * v4)) + (v6 * v6);
  if (v11 >= -1.0 || (v11 + 1.0) <= -0.00001)
  {
    v15 = (v11 + -1.0) < 0.00001 && v11 > 1.0;
    if (v11 > 0.99 || v15)
    {
      v16 = (v12 * ((v12 * (((v12 * 5.0) / 112.0) + 0.075)) + 0.16667)) + 1.0;
      *a2 = v4 * v16;
      a2[1] = v5 * v16;
    }

    else
    {
      if (v11 <= -0.99)
      {
        v10 = (((a1->f32[0] + v8) + v9) + -1.0) * 0.5;
        goto LABEL_19;
      }

      v16 = acosf(v11) / sqrtf(v12);
      *a2 = v4 * v16;
      a2[1] = v5 * v16;
    }

    a2[2] = v6 * v16;
    return;
  }

LABEL_19:
  v17 = asinf(sqrtf(v12));
  v18 = ((3.1416 - v17) * (3.1416 - v17)) / (1.0 - v10);
  v19 = (v7 - v10) * v18;
  v20 = (v8 - v10) * v18;
  v21 = (v9 - v10) * v18;
  if (v19 <= v20)
  {
    v26 = v18 * 0.5;
    if (v20 <= v21)
    {
      v33 = sqrtf(v21);
      if (v6 < 0.0)
      {
        v33 = -v33;
      }

      a2[2] = v33;
      v34.i32[0] = a1[1].i32[0];
      v34.i32[1] = a1[2].i32[1];
      *a2 = vmul_n_f32(vmul_n_f32(vadd_f32(a1[3], v34), v26), 1.0 / v33);
    }

    else
    {
      v27 = sqrtf(v20);
      if (v5 < 0.0)
      {
        v27 = -v27;
      }

      a2[1] = v27;
      v28 = 1.0 / v27;
      v29 = a1[3].f32[1] + a1[2].f32[1];
      *a2 = v28 * (v26 * (a1[1].f32[1] + a1->f32[1]));
      a2[2] = v28 * (v26 * v29);
    }
  }

  else
  {
    v22 = v18 * 0.5;
    v23 = v22 * (a1[3].f32[0] + a1[1].f32[0]);
    if (v19 <= v21)
    {
      v30 = sqrtf(v21);
      if (v6 < 0.0)
      {
        v30 = -v30;
      }

      a2[2] = v30;
      v31 = 1.0 / v30;
      v32 = v31 * (v22 * (a1[3].f32[1] + a1[2].f32[1]));
      *a2 = v31 * v23;
      a2[1] = v32;
    }

    else
    {
      v24 = sqrtf(v19);
      if (v4 < 0.0)
      {
        v24 = -v24;
      }

      *a2 = v24;
      v25 = 1.0 / v24;
      a2[1] = v25 * (v22 * (a1[1].f32[1] + a1->f32[1]));
      a2[2] = v25 * v23;
    }
  }
}

void sub_240222A28(uint64_t a1, CVPixelBufferRef texture, uint64_t a3, uint64_t *a4)
{
  *(a1 + 16) = *(a3 + 8);
  if (a1 + 8 != a3)
  {
    v7 = *(a3 + 16);
    v8 = *(a3 + 32);
    *(a1 + 56) = *(a3 + 48);
    *(a1 + 40) = v8;
    *(a1 + 24) = v7;
    v9 = *(a3 + 52);
    v10 = *(a3 + 68);
    *(a1 + 92) = *(a3 + 84);
    *(a1 + 76) = v10;
    *(a1 + 60) = v9;
    v11 = *(a3 + 88);
    *(a1 + 104) = *(a3 + 96);
    *(a1 + 96) = v11;
  }

  CVPixelBufferRetain(texture);
  if (*a1)
  {
    CVPixelBufferRelease(*a1);
  }

  *a1 = texture;
  if (*(a1 + 124) == 2)
  {
    v12 = *a4;
    *(a1 + 120) = *(a4 + 2);
    *(a1 + 112) = v12;
  }

  else
  {
    *(a1 + 124) = -1;
    v13 = *(a4 + 2);
    *(a1 + 112) = *a4;
    *(a1 + 120) = v13;
    *(a1 + 124) = 2;
  }
}

__CFDictionary *sub_240222AFC(int a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v4 = Mutable;
    v5 = *MEMORY[0x277CBED10];
    CFDictionarySetValue(Mutable, *MEMORY[0x277D1AEA8], *MEMORY[0x277CBED10]);
    v6 = *MEMORY[0x277CBED28];
    CFDictionarySetValue(v4, *MEMORY[0x277D1AE50], *MEMORY[0x277CBED28]);
    if (a1)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    CFDictionarySetValue(v4, *MEMORY[0x277D1AE90], v7);
    CFDictionarySetValue(v4, *MEMORY[0x277D1AEB0], v5);
    valuePtr = 0;
    v8 = CFNumberCreate(v2, kCFNumberIntType, &valuePtr);
    if (v8)
    {
      v9 = v8;
      CFDictionarySetValue(v4, *MEMORY[0x277D1AE40], v8);
    }

    else
    {
      if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
      {
        qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
        __cxa_guard_release(&qword_280C03A00);
      }

      v11 = qword_280C03978;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_2401B8000, v11, OS_LOG_TYPE_ERROR, "could not set up hardware accelerator (setting number)", v13, 2u);
      }

      v9 = v4;
      v4 = 0;
    }

    CFRelease(v9);
  }

  else
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v10 = qword_280C03978;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v10, OS_LOG_TYPE_ERROR, "could not set up hardware accelerator (setting options)", buf, 2u);
    }

    return 0;
  }

  return v4;
}

void sub_240222D60()
{
  if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_280C039F0))
    {
      sub_240222DDC();
    }
  }
}

void sub_240222FB8()
{
  v29[32] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v0 = os_variant_allows_internal_security_policies();
  *(qword_280C03828 + 104) = v0;
  if (v0)
  {
    v1 = CFPreferencesCopyAppValue(@"com.apple.applecva.facekit", *MEMORY[0x277CBF008]);
    if (v1)
    {
      v2 = v1;
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v1);
      cva::DictionaryHandler::DictionaryHandler(v22, MutableCopy);
      CFRelease(v2);
      Dictionary = cva::DictionaryHandler::getDictionary(v22);
      CFRelease(Dictionary);
      v21 = v22;
      sub_240224608(&v21, "facekit_enable_multiuser");
      sub_240224608(&v21, "facekit_enable_recognition");
      sub_240224608(&v21, "facekit_force_enable_recognition");
      sub_240224608(&v21, "facekit_enable_tongue");
      sub_240224608(&v21, "facekit_enable_perspective_warp");
      sub_240224A54(&v21, "face_selection_offcenter_penalty");
      sub_240224ECC(&v21, "facekit_filter_historysize");
      sub_240224ECC(&v21, "gaze_facekit_filter_historysize");
      sub_240224ECC(&v21, "bbox_facekit_filter_historysize");
      sub_240224A54(&v21, "facekit_posefilter_translation_smoothing");
      sub_240224A54(&v21, "facekit_posefilter_rotation_smoothing");
      sub_240224A54(&v21, "facekit_robust_blendshape_smoothing");
      sub_240224A54(&v21, "facekit_robust_blendshape_smoothing_lowest_threshold");
      sub_240224A54(&v21, "facekit_robust_blendshape_smoothing_low_threshold");
      sub_240224A54(&v21, "facekit_robust_blendshape_smoothing_high_threshold");
      sub_240224A54(&v21, "facekit_robust_blendshape_smoothing_highest_threshold");
      sub_240224A54(&v21, "facekit_robust_blendshape_smoothing_temporal_smoothing");
      sub_240224A54(&v21, "facekit_robust_blendshape_smoothing_prediction_factor");
      sub_240224A54(&v21, "facekit_robust_blendshape_smoothing_min_smoothing");
      sub_240224A54(&v21, "facekit_robust_blendshape_smoothing_brow_multiplier");
      sub_240224A54(&v21, "facekit_robust_blendshape_smoothing_eye_multiplier");
      sub_240224A54(&v21, "facekit_robust_blendshape_smoothing_mouth_multiplier");
      sub_240224A54(&v21, "facekit_robust_blendshape_smoothing_mouth_tongue_multiplier");
      sub_240224A54(&v21, "facekit_gaze_smoothing_threshold");
      sub_240224A54(&v21, "facekit_tongue_smoothing_threshold");
      sub_240224608(&v21, "facekit_symmetrize_blendshapes");
      sub_240224A54(&v21, "facekit_blendshape_asymmetry_scale");
      sub_240224A54(&v21, "facekit_blendshape_asymmetry_shift");
      sub_240224A54(&v21, "face_detection_roll_smoothing_threshold");
      sub_240224A54(&v21, "face_detection_bbox_smoothing_threshold");
      sub_240224A54(&v21, "facekit_enlargement_factor");
      sub_240224A54(&v21, "facekit_failure_threshold");
      sub_240224A54(&v21, "facekit_failure_threshold");
      sub_240224A54(&v21, "facekit_maxangle_cara");
      sub_240224A54(&v21, "facekit_mindistance_for_tracking");
      sub_240224A54(&v21, "facekit_maxdistance_for_tracking");
      sub_240224A54(&v21, "facekit_mindistance_for_fitting");
      sub_240224A54(&v21, "facekit_mindistance_for_fitting_rgbd");
      sub_240224A54(&v21, "facekit_maxdistance_for_fitting_rgbd");
      sub_240224A54(&v21, "facekit_maxdistance_for_fitting");
      sub_240224A54(&v21, "facekit_maxtranslationalvelocity");
      sub_240224A54(&v21, "facekit_maxtranslationalacceleration");
      sub_240224A54(&v21, "facekit_maxangularvelocity");
      sub_240224A54(&v21, "facekit_maxangularacceleration");
      sub_240224A54(&v21, "max_angle_recognition");
      sub_240224A54(&v21, "max_translational_velocity_recognition");
      sub_240224A54(&v21, "max_angular_velocity_recognition");
      sub_240224A54(&v21, "max_translational_acceleration_recognition");
      sub_240224A54(&v21, "max_angular_acceleration_recognition");
      sub_240224A54(&v21, "recognition_failure_threshold");
      sub_240224608(&v21, "facekit_robusttongueactivation");
      sub_240224A54(&v21, "facekit_maxangle_tongue");
      sub_240224A54(&v21, "facekit_maxexpression_tongue");
      sub_240224ECC(&v21, "facekit_luxlevel_threshold");
      sub_240224608(&v21, "facekit_use_debug_profile");
      if (cva::DictionaryHandler::hasKey(v22, "facekit_debug_profile_path"))
      {
        cva::DictionaryHandler::item(v28, v22, "facekit_debug_profile_path");
        cva::ItemHandler::getValue<std::string>();
      }

      cva::DictionaryHandler::removeItem(v22, "facekit_debug_profile_path");
      sub_240224A54(&v21, "face_identity_cluster_detection_range_v4");
      sub_240224A54(&v21, "face_identity_cluster_radius_v4");
      sub_240224ECC(&v21, "recognition_update_period");
      sub_240224608(&v21, "facekit_force_debug_info");
      sub_240224ECC(&v21, "facekit_postprocessing_kernel_size");
      if (cva::DictionaryHandler::hasKey(v22, "facekit_postprocessing_time_std"))
      {
        cva::DictionaryHandler::item(v28, v22, "facekit_postprocessing_time_std");
        cva::ItemHandler::getValue<double>();
      }

      cva::DictionaryHandler::removeItem(v22, "facekit_postprocessing_time_std");
      sub_240224A54(&v21, "facekit_postprocessing_blendshape_std");
      sub_240224A54(&v21, "facekit_postprocessing_blendshape_brow_multiplier");
      sub_240224A54(&v21, "facekit_postprocessing_blendshape_eye_multiplier");
      sub_240224A54(&v21, "facekit_postprocessing_blendshape_mouth_multiplier");
      sub_240224A54(&v21, "facekit_postprocessing_rotation_std");
      sub_240224A54(&v21, "facekit_postprocessing_translation_std");
      v5 = cva::DictionaryHandler::getDictionary(v22);
      Count = CFDictionaryGetCount(v5);
      if (Count)
      {
        if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
        {
          qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
          __cxa_guard_release(&qword_280C03A00);
        }

        v7 = qword_280C03978;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          CStringPtr = CFStringGetCStringPtr(@"com.apple.applecva.facekit", 0x8000100u);
          *v28 = 67109378;
          *&v28[4] = Count;
          LOWORD(v29[0]) = 2080;
          *(v29 + 2) = CStringPtr;
          _os_log_impl(&dword_2401B8000, v7, OS_LOG_TYPE_DEFAULT, "%d unrecognized setting(s) in %s defaults", v28, 0x12u);
        }

        cva::DictionaryHandler::getKeys(v28, v22);
        v10 = *v28;
        v9 = v29[0];
        if (*v28 != v29[0])
        {
          do
          {
            if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
            {
              qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
              __cxa_guard_release(&qword_280C03A00);
            }

            v11 = qword_280C03978;
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = v10;
              if (v10[23] < 0)
              {
                v12 = *v10;
              }

              v13 = MEMORY[0x277CCACA8];
              cva::DictionaryHandler::item(&__p, v22, v12);
              v14 = [v13 stringWithFormat:@"%@", cva::ItemHandler::getObject(&__p), context];
              v15 = v14;
              v16 = [v14 UTF8String];
              v24 = 136315394;
              *v25 = v12;
              v26 = 2080;
              v27 = v16;
              _os_log_impl(&dword_2401B8000, v11, OS_LOG_TYPE_DEFAULT, "\tunrecognized facekit setting: %s=%s", &v24, 0x16u);

              cva::ItemHandler::~ItemHandler(&__p);
            }

            v10 += 24;
          }

          while (v10 != v9);
          v10 = *v28;
        }

        if (v10)
        {
          v17 = v29[0];
          v18 = v10;
          if (v29[0] != v10)
          {
            do
            {
              v19 = *(v17 - 1);
              v17 -= 3;
              if (v19 < 0)
              {
                operator delete(*v17);
              }
            }

            while (v17 != v10);
            v18 = *v28;
          }

          v29[0] = v10;
          operator delete(v18);
        }
      }

      cva::DictionaryHandler::~DictionaryHandler(v22);
    }
  }

  objc_autoreleasePoolPop(context);
}

void sub_2402244D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, char a53)
{
  sub_2402254D0(&a53);
  cva::DictionaryHandler::~DictionaryHandler(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_240224608(cva::DictionaryHandler **a1, const char *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (cva::DictionaryHandler::hasKey(*a1, a2))
  {
    cva::DictionaryHandler::item(&v6, v4, a2);
    cva::ItemHandler::getValue<BOOL>();
  }

  return cva::DictionaryHandler::removeItem(*a1, a2);
}

void sub_240224A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  sub_2402254D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_240224A54(cva::DictionaryHandler **a1, const char *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (cva::DictionaryHandler::hasKey(*a1, a2))
  {
    cva::DictionaryHandler::item(&v6, v4, a2);
    cva::ItemHandler::getValue<float>();
  }

  return cva::DictionaryHandler::removeItem(*a1, a2);
}

void sub_240224E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  sub_2402254D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_240224ECC(cva::DictionaryHandler **a1, const char *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  if (cva::DictionaryHandler::hasKey(*a1, a2))
  {
    cva::DictionaryHandler::item(&v6, v4, a2);
    cva::ItemHandler::getValue<int>();
  }

  return cva::DictionaryHandler::removeItem(*a1, a2);
}

void sub_2402252E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  sub_2402254D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_240225318(uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  *(a1 + 112) = MEMORY[0x277D828A0] + 64;
  v3 = a1 + 8;
  v4 = *(MEMORY[0x277D82828] + 16);
  v5 = *(MEMORY[0x277D82828] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, (a1 + 8));
  v7 = MEMORY[0x277D828A0] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  MEMORY[0x245CBC950](a1 + 16);
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  sub_24021EF68(v3);
  return a1;
}

uint64_t sub_2402254D0(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x245CBC9C0](a1 + 112);
  return a1;
}

uint64_t sub_2402255F0(void *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  sub_24024BD98(&__p, "resources_facekit/");
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    operator new();
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v3 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2401B8000, v3, OS_LOG_TYPE_ERROR, "cannot find resources", buf, 2u);
  }

  *a1 = 0;
  a1[1] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return kdebug_trace();
}

void sub_240229D14(uint64_t a1, uint64_t a2, int a3, cva::DictionaryHandler *a4)
{
  cva::DictionaryHandler::DictionaryHandler(v145);
  if (*(a2 + 24) == 1)
  {
    v8 = *(a2 + 16);
    if (!v8)
    {
      goto LABEL_7;
    }

    v9 = *a2;
    v10 = 12 * v8;
  }

  else
  {
    v9 = *a1;
    v11 = *(a1 + 8);
    if (*a1 == v11)
    {
      goto LABEL_7;
    }

    v10 = ((v11 - v9) << 30 >> 30) & 0xFFFFFFFFFFFFFFFCLL;
  }

  v12 = CFDataCreate(0, v9, v10);
  cva::ItemHandler::createData(v150, v12, v13);
  cva::DictionaryHandler::setItem(v145, @"mesh_vertices", v150);
  cva::ItemHandler::~ItemHandler(v150);
  CFRelease(v12);
LABEL_7:
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  if (v14 != v15)
  {
    v16 = CFDataCreate(0, v14, ((v15 - v14) << 30 >> 30) & 0xFFFFFFFFFFFFFFF8);
    cva::ItemHandler::createData(v150, v16, v17);
    cva::DictionaryHandler::setItem(v145, @"mesh_texcoords", v150);
    cva::ItemHandler::~ItemHandler(v150);
    CFRelease(v16);
  }

  if (!a3)
  {
    goto LABEL_143;
  }

  *(a1 + 56) = *(a1 + 48);
  v144 = a4;
  if (*(a1 + 280))
  {
    v18 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - *(a1 + 96)) >> 2);
    v19 = ((*(a1 + 176) - *(a1 + 168)) >> 3) + v18;
    if (v19)
    {
      if (!(v19 >> 60))
      {
        operator new();
      }

      sub_2401BDE28();
    }

    v20 = *(a1 + 264);
    if (v20 != (a1 + 272))
    {
      do
      {
        for (i = v20[7]; i != v20[8]; i += 2)
        {
          v22 = *i;
          v23 = (*i)[3];
          v24 = *i;
          if (v23 != (*i)[4])
          {
            do
            {
              v25 = *v23;
              v27 = *i;
              v26 = i[1];
              if (v26)
              {
                atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
              }

              v28 = (16 * v25);
              v29 = v28[1];
              *v28 = v27;
              v28[1] = v26;
              if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v29->__on_zero_shared)(v29);
                std::__shared_weak_count::__release_weak(v29);
              }

              ++v23;
            }

            while (v23 != v22[4]);
            v24 = *i;
          }

          for (j = *v24; j != v24[1]; ++j)
          {
            v31 = *j;
            v32 = i[1];
            if (v32)
            {
              atomic_fetch_add_explicit(v32 + 1, 1uLL, memory_order_relaxed);
            }

            v33 = (16 * (v18 + 2 * v31));
            v34 = v33[1];
            *v33 = v24;
            v33[1] = v32;
            if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v34->__on_zero_shared)(v34);
              std::__shared_weak_count::__release_weak(v34);
            }

            v35 = *j;
            v37 = *i;
            v36 = i[1];
            if (v36)
            {
              atomic_fetch_add_explicit(v36 + 1, 1uLL, memory_order_relaxed);
            }

            v38 = 16 * (v18 + 2 * v35);
            v39 = *(v38 + 24);
            *(v38 + 16) = v37;
            *(v38 + 24) = v36;
            if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v39->__on_zero_shared)(v39);
              std::__shared_weak_count::__release_weak(v39);
            }

            v24 = *i;
          }

          v22[4] = v22[3];
        }

        v40 = v20[1];
        if (v40)
        {
          do
          {
            v41 = v40;
            v40 = *v40;
          }

          while (v40);
        }

        else
        {
          do
          {
            v41 = v20[2];
            v42 = *v41 == v20;
            v20 = v41;
          }

          while (!v42);
        }

        v20 = v41;
      }

      while (v41 != (a1 + 272));
    }
  }

  v43 = *(a1 + 96);
  v44 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - v43) >> 2) + ((*(a1 + 176) - *(a1 + 168)) >> 3);
  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 112) - v43) >> 2) < v44)
  {
    if (v44 <= 0x1555555555555555)
    {
      operator new();
    }

    goto LABEL_162;
  }

  if (*(a1 + 32) != *(a1 + 24))
  {
    v45 = *(a1 + 120);
    v46 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 128) - v45) >> 2) + ((*(a1 + 176) - *(a1 + 168)) >> 3);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 136) - v45) >> 2) < v46)
    {
      if (v46 <= 0x1555555555555555)
      {
        operator new();
      }

      goto LABEL_162;
    }
  }

  if (*(a1 + 56) != *(a1 + 48))
  {
    v47 = *(a1 + 144);
    v48 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 152) - v47) >> 2) + ((*(a1 + 176) - *(a1 + 168)) >> 3);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 160) - v47) >> 2) < v48)
    {
      if (v48 <= 0x1555555555555555)
      {
        operator new();
      }

      goto LABEL_162;
    }
  }

  v49 = *(a1 + 168);
  if (((*(a1 + 176) - v49) >> 4) >= 1)
  {
    v50 = 0;
    v51 = 0;
    do
    {
      v52 = (v49 + v50);
      v53 = *(v49 + v50);
      v54 = v52[1];
      v55 = (*a1 + 12 * v53);
      v56 = v55[1].f32[0];
      v57 = v52[2];
      v58 = v52[3];
      v59 = (*a1 + 12 * v57);
      v60 = (*a1 + 12 * v58);
      v61 = v59[1].f32[0] - v56;
      v62 = v60[1].f32[0] - v56;
      v63 = vsub_f32(*v59, *v55);
      v64 = vaddv_f32(vmul_f32(vsub_f32(*(*a1 + 12 * v54), *v55), v63)) + ((*(*a1 + 12 * v54 + 8) - v56) * v61);
      v65 = vaddv_f32(vmul_f32(v63, vsub_f32(*v60, *v55))) + (v61 * v62);
      if ((v64 < 0.0 || v65 > 0.0) && (v64 > 0.0 || v65 < 0.0))
      {
        *&v150[0] = __PAIR64__(v54, v53);
        DWORD2(v150[0]) = v58;
        sub_24025C61C(a1 + 96, v150);
        v71 = *(a1 + 168) + v50;
        *&v150[0] = *(v71 + 4);
        DWORD2(v150[0]) = *(v71 + 12);
        sub_24025C61C(a1 + 96, v150);
        if (*(a1 + 32) != *(a1 + 24))
        {
          v72 = *(a1 + 192) + v50;
          *&v150[0] = *v72;
          DWORD2(v150[0]) = *(v72 + 12);
          sub_24025C61C(a1 + 120, v150);
          v73 = *(a1 + 192) + v50;
          *&v150[0] = *(v73 + 4);
          DWORD2(v150[0]) = *(v73 + 12);
          sub_24025C61C(a1 + 120, v150);
        }

        if (*(a1 + 56) == *(a1 + 48))
        {
          goto LABEL_63;
        }

        v74 = *(a1 + 216) + v50;
        *&v150[0] = *v74;
        DWORD2(v150[0]) = *(v74 + 12);
        sub_24025C61C(a1 + 144, v150);
        v75 = *(a1 + 216) + v50;
        *&v150[0] = *(v75 + 4);
        DWORD2(v150[0]) = *(v75 + 12);
      }

      else
      {
        *&v150[0] = __PAIR64__(v54, v53);
        DWORD2(v150[0]) = v57;
        sub_24025C61C(a1 + 96, v150);
        v66 = *(a1 + 168) + v50;
        LODWORD(v150[0]) = *v66;
        *(v150 + 4) = *(v66 + 8);
        sub_24025C61C(a1 + 96, v150);
        if (*(a1 + 32) != *(a1 + 24))
        {
          v67 = *(a1 + 192) + v50;
          *&v150[0] = *v67;
          DWORD2(v150[0]) = *(v67 + 8);
          sub_24025C61C(a1 + 120, v150);
          v68 = *(a1 + 192) + v50;
          LODWORD(v150[0]) = *v68;
          *(v150 + 4) = *(v68 + 8);
          sub_24025C61C(a1 + 120, v150);
        }

        if (*(a1 + 56) == *(a1 + 48))
        {
          goto LABEL_63;
        }

        v69 = *(a1 + 216) + v50;
        *&v150[0] = *v69;
        DWORD2(v150[0]) = *(v69 + 8);
        sub_24025C61C(a1 + 144, v150);
        v70 = *(a1 + 216) + v50;
        LODWORD(v150[0]) = *v70;
        *(v150 + 4) = *(v70 + 8);
      }

      sub_24025C61C(a1 + 144, v150);
LABEL_63:
      ++v51;
      v49 = *(a1 + 168);
      v50 += 16;
    }

    while (v51 < ((*(a1 + 176) - v49) >> 4));
  }

  v151 = 0;
  v152 = 0;
  v153 = 0;
  v76 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - *(a1 + 96)) >> 2);
  if (0xAAAAAAAB00000000 * ((*(a1 + 104) - *(a1 + 96)) >> 2))
  {
    sub_24025A948(&v151, (-1431655765 * ((*(a1 + 104) - *(a1 + 96)) >> 2)));
    v77 = v151;
  }

  else
  {
    v77 = 0;
  }

  if (v76 >= 1)
  {
    v78 = v76 & 0x7FFFFFFF;
    if (v78 >= 8)
    {
      v79 = v78 - (v76 & 7);
      v80 = xmmword_240270930;
      v81 = (v77 + 4);
      v82.i64[0] = 0x400000004;
      v82.i64[1] = 0x400000004;
      v83.i64[0] = 0x800000008;
      v83.i64[1] = 0x800000008;
      v84 = v79;
      do
      {
        v81[-1] = v80;
        *v81 = vaddq_s32(v80, v82);
        v80 = vaddq_s32(v80, v83);
        v81 += 2;
        v84 -= 8;
      }

      while (v84);
      if ((v76 & 7) == 0)
      {
        goto LABEL_86;
      }
    }

    else
    {
      v79 = 0;
    }

    do
    {
      v77[v79] = v79;
      ++v79;
    }

    while (v78 != v79);
  }

LABEL_86:
  v85 = v152;
  v86 = v152 - v77;
  v87 = 126 - 2 * __clz(v86);
  *&v150[0] = a1 + 96;
  *(&v150[0] + 1) = &v148;
  if (v152 == v77)
  {
    v88 = 0;
  }

  else
  {
    v88 = v87;
  }

  sub_24025AA9C(v77, v152, v150, v88, 1);
  v90 = *(a1 + 96);
  v89 = *(a1 + 104);
  if (v89 != v90)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v89 - v90) >> 2) <= 0x1555555555555555)
    {
      operator new();
    }

    goto LABEL_162;
  }

  if (v85 != v77)
  {
    v91 = 0;
    v92 = 0;
    do
    {
      v93 = 12 * v77[v92];
      v94 = *(a1 + 96) + v91;
      if (v94 != v93)
      {
        v95 = *v93;
        *(v94 + 8) = *(12 * v77[v92] + 8);
        *v94 = v95;
      }

      ++v92;
      v91 += 12;
    }

    while (v92 < v86);
  }

  if (*(a1 + 32) != *(a1 + 24))
  {
    v97 = *(a1 + 120);
    v96 = *(a1 + 128);
    if (v96 != v97)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v96 - v97) >> 2) <= 0x1555555555555555)
      {
        operator new();
      }

      goto LABEL_162;
    }

    if (v85 != v77)
    {
      v98 = 0;
      v99 = 0;
      do
      {
        v100 = 12 * v77[v99];
        v101 = *(a1 + 120) + v98;
        if (v101 != v100)
        {
          v102 = *v100;
          *(v101 + 8) = *(12 * v77[v99] + 8);
          *v101 = v102;
        }

        ++v99;
        v98 += 12;
      }

      while (v99 < v86);
    }
  }

  if (*(a1 + 56) != *(a1 + 48))
  {
    v104 = *(a1 + 144);
    v103 = *(a1 + 152);
    if (v103 != v104)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v103 - v104) >> 2) <= 0x1555555555555555)
      {
        operator new();
      }

LABEL_162:
      sub_2401BDE28();
    }

    if (v85 != v77)
    {
      v105 = 0;
      v106 = 0;
      do
      {
        v107 = 12 * v77[v106];
        v108 = *(a1 + 144) + v105;
        if (v108 != v107)
        {
          v109 = *v107;
          *(v108 + 8) = *(12 * v77[v106] + 8);
          *v108 = v109;
        }

        ++v106;
        v105 += 12;
      }

      while (v106 < v86);
    }
  }

  if (*(a1 + 280))
  {
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - *(a1 + 96)) >> 2))
    {
      sub_2402546E0(&v148);
      sub_2402552EC(v150, &v148, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/geometry/src/three_d/quad_mesh.cpp", 0x416u, "assert %s failed. triangle_to_part.size() != m_tris_vi.size()%s", "triangle_to_part.size() == m_tris_vi.size()");
      sub_240256698(v150);
      v110 = v149;
      if (v149 && !atomic_fetch_add(&v149->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v110->__on_zero_shared)(v110);
        std::__shared_weak_count::__release_weak(v110);
      }

      v86 = v152 - v151;
    }

    if (v86)
    {
      sub_2402546E0(&v146);
      sub_2402552EC(&v148, &v146, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/shrek/libs/alg/geometry/src/three_d/quad_mesh.cpp", 0x417u, "assert %s failed. triangle_to_part .size() != order.size()%s", "triangle_to_part.size() == order.size()");
      sub_240256698(&v148);
      v111 = v147;
      if (v147)
      {
        if (!atomic_fetch_add(&v147->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v111->__on_zero_shared)(v111);
          std::__shared_weak_count::__release_weak(v111);
        }
      }
    }

    v112 = v151;
    if (v152 != v151)
    {
      v113 = 0;
      v114 = 8;
      do
      {
        v115 = *(16 * v112[v113]);
        v116 = *(16 * v112[v113] + 8);
        if (v116)
        {
          atomic_fetch_add_explicit((v116 + 8), 1uLL, memory_order_relaxed);
        }

        v117 = *v114;
        *(16 * v113) = v115;
        if (v117 && !atomic_fetch_add(&v117->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v117->__on_zero_shared)(v117);
          std::__shared_weak_count::__release_weak(v117);
        }

        ++v113;
        v112 = v151;
        v114 += 16;
      }

      while (v113 < v152 - v151);
      operator delete(0);
    }

    LODWORD(v146) = 0;
  }

  *(a1 + 416) = *(a1 + 408);
  v119 = *(a1 + 336);
  v118 = *(a1 + 344);
  if (v118 != v119)
  {
    v120 = *(a1 + 344);
    do
    {
      v122 = *(v120 - 24);
      v120 -= 24;
      v121 = v122;
      if (v122)
      {
        *(v118 - 16) = v121;
        operator delete(v121);
      }

      v118 = v120;
    }

    while (v120 != v119);
  }

  *(a1 + 344) = v119;
  if (v151)
  {
    operator delete(v151);
  }

  *(a1 + 176) = *(a1 + 168);
  *(a1 + 200) = *(a1 + 192);
  *(a1 + 224) = *(a1 + 216);
  v123 = *(a1 + 264);
  a4 = v144;
  if (v123 != (a1 + 272))
  {
    while (1)
    {
      v132 = v123[7];
      v133 = v123[8];
      if (v132 == v133)
      {
        goto LABEL_156;
      }

      v134 = v133 - v132 - 16;
      if (v134 <= 0xF)
      {
        goto LABEL_155;
      }

      v135 = (v134 >> 4) + 1;
      v136 = (v132 + 16);
      v137 = v135 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        v138 = *(v136 - 2);
        v139 = *v136;
        v136 += 4;
        v140 = *v139;
        v138[1] = *v138;
        v139[1] = v140;
        v137 -= 2;
      }

      while (v137);
      if (v135 != (v135 & 0x1FFFFFFFFFFFFFFELL))
      {
        break;
      }

LABEL_156:
      v142 = v123[1];
      if (v142)
      {
        do
        {
          v143 = v142;
          v142 = *v142;
        }

        while (v142);
      }

      else
      {
        do
        {
          v143 = v123[2];
          v42 = *v143 == v123;
          v123 = v143;
        }

        while (!v42);
      }

      v123 = v143;
      if (v143 == (a1 + 272))
      {
        goto LABEL_143;
      }
    }

    v132 += 16 * (v135 & 0x1FFFFFFFFFFFFFFELL);
    do
    {
LABEL_155:
      v141 = *v132;
      v132 += 16;
      v141[1] = *v141;
    }

    while (v132 != v133);
    goto LABEL_156;
  }

LABEL_143:
  v124 = *(a1 + 96);
  v125 = *(a1 + 104);
  if (v124 != v125)
  {
    v126 = CFDataCreate(0, v124, ((v125 - v124) << 30 >> 30) & 0xFFFFFFFFFFFFFFFCLL);
    cva::ItemHandler::createData(v150, v126, v127);
    cva::DictionaryHandler::setItem(v145, @"mesh_tri_indices", v150);
    cva::ItemHandler::~ItemHandler(v150);
    CFRelease(v126);
  }

  v128 = *(a1 + 168);
  v129 = *(a1 + 176);
  if (v128 != v129)
  {
    v130 = CFDataCreate(0, v128, ((v129 - v128) << 30 >> 30) & 0xFFFFFFFFFFFFFFF0);
    cva::ItemHandler::createData(v150, v130, v131);
    cva::DictionaryHandler::setItem(v145, @"mesh_quad_indices", v150);
    cva::ItemHandler::~ItemHandler(v150);
    CFRelease(v130);
  }

  cva::ItemHandler::ItemHandler();
  cva::DictionaryHandler::setItem(a4, @"mesh", v150);
  cva::ItemHandler::~ItemHandler(v150);
  cva::DictionaryHandler::~DictionaryHandler(v145);
}

uint64_t sub_24022AEDC(uint64_t a1)
{
  if (*(a1 + 455) < 0)
  {
    operator delete(*(a1 + 432));
  }

  v2 = *(a1 + 408);
  if (v2)
  {
    *(a1 + 416) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 384);
  if (v3)
  {
    *(a1 + 392) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 360);
  if (v4)
  {
    *(a1 + 368) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 336);
  if (v5)
  {
    v6 = *(a1 + 344);
    v7 = *(a1 + 336);
    if (v6 != v5)
    {
      v8 = *(a1 + 344);
      do
      {
        v10 = *(v8 - 24);
        v8 -= 24;
        v9 = v10;
        if (v10)
        {
          *(v6 - 16) = v9;
          operator delete(v9);
        }

        v6 = v8;
      }

      while (v8 != v5);
      v7 = *(a1 + 336);
    }

    *(a1 + 344) = v5;
    operator delete(v7);
  }

  sub_24022B054(*(a1 + 320));
  sub_24022B0CC(*(a1 + 296));
  sub_24022B0CC(*(a1 + 272));
  sub_24022B1B8(*(a1 + 248));
  v11 = *(a1 + 216);
  if (v11)
  {
    *(a1 + 224) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 192);
  if (v12)
  {
    *(a1 + 200) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 168);
  if (v13)
  {
    *(a1 + 176) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 144);
  if (v14)
  {
    *(a1 + 152) = v14;
    operator delete(v14);
  }

  v15 = *(a1 + 120);
  if (v15)
  {
    *(a1 + 128) = v15;
    operator delete(v15);
  }

  v16 = *(a1 + 96);
  if (v16)
  {
    *(a1 + 104) = v16;
    operator delete(v16);
  }

  v17 = *(a1 + 72);
  if (v17)
  {
    *(a1 + 80) = v17;
    operator delete(v17);
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    *(a1 + 56) = v18;
    operator delete(v18);
  }

  v19 = *(a1 + 24);
  if (v19)
  {
    *(a1 + 32) = v19;
    operator delete(v19);
  }

  v20 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v20;
    operator delete(v20);
  }

  return a1;
}

void sub_24022B054(char *a1)
{
  if (!a1)
  {
    return;
  }

  sub_24022B054(*a1);
  sub_24022B054(*(a1 + 1));
  if (a1[79] < 0)
  {
    operator delete(*(a1 + 7));
    if ((a1[55] & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    operator delete(*(a1 + 4));
    goto LABEL_4;
  }

  if (a1[55] < 0)
  {
    goto LABEL_9;
  }

LABEL_4:

  operator delete(a1);
}

void sub_24022B0CC(char *a1)
{
  if (a1)
  {
    sub_24022B0CC(*a1);
    sub_24022B0CC(*(a1 + 1));
    v2 = *(a1 + 7);
    if (v2)
    {
      v3 = *(a1 + 8);
      v4 = *(a1 + 7);
      if (v3 != v2)
      {
        do
        {
          v5 = *(v3 - 8);
          if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }

          v3 -= 16;
        }

        while (v3 != v2);
        v4 = *(a1 + 7);
      }

      *(a1 + 8) = v2;
      operator delete(v4);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void sub_24022B1B8(char *a1)
{
  if (!a1)
  {
    return;
  }

  sub_24022B1B8(*a1);
  sub_24022B1B8(*(a1 + 1));
  if (a1[159] < 0)
  {
    operator delete(*(a1 + 17));
    if ((a1[135] & 0x80000000) == 0)
    {
LABEL_4:
      if ((a1[111] & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_12:
      operator delete(*(a1 + 11));
      if ((a1[55] & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

LABEL_13:
      operator delete(*(a1 + 4));
      goto LABEL_6;
    }
  }

  else if ((a1[135] & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(*(a1 + 14));
  if (a1[111] < 0)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (a1[55] < 0)
  {
    goto LABEL_13;
  }

LABEL_6:

  operator delete(a1);
}

BOOL sub_24022B260(uint64_t a1, CVPixelBufferRef pixelBuffer)
{
  v35 = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v6 = *(a1 + 8) == Width && *(a1 + 12) == Height;
  if (!v6)
  {
    v7 = Height;
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_280C03A00))
      {
        qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
        __cxa_guard_release(&qword_280C03A00);
      }
    }

    v8 = qword_280C03978;
    result = os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v10 = *(a1 + 8);
      v11 = *(a1 + 12);
      v31 = 67109888;
      *v32 = v10;
      *&v32[4] = 1024;
      *&v32[6] = v11;
      LOWORD(v33) = 1024;
      *(&v33 + 2) = Width;
      HIWORD(v33) = 1024;
      v34[0] = v7;
      v12 = "Camera parameters size (%d, %d) does not match buffer size (%d, %d).";
      v13 = v8;
      v14 = 26;
LABEL_32:
      _os_log_error_impl(&dword_2401B8000, v13, OS_LOG_TYPE_ERROR, v12, &v31, v14);
      return 0;
    }

    return result;
  }

  v15 = 0;
  do
  {
    v16 = *(a1 + 16 + v15);
    if ((v16 & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      break;
    }

    v6 = v15 == 32;
    v15 += 4;
  }

  while (!v6);
  if ((v16 & 0x7FFFFFFFu) >= 0x7F800000)
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v27 = qword_280C03978;
    result = os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    LOWORD(v31) = 0;
    v12 = "intrinsic camera parameters contain invalid values";
LABEL_28:
    v13 = v27;
    v14 = 2;
    goto LABEL_32;
  }

  v17 = *(a1 + 16);
  v18 = *(a1 + 32);
  if (v17 <= 0.0 || v18 <= 0.0)
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v28 = qword_280C03978;
    result = os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v31 = 134218240;
      *v32 = v17;
      *&v32[8] = 2048;
      v33 = v18;
      v12 = "intrinsic camera parameters have invalid focal length: %g, %g (should be positive)";
      v13 = v28;
      v14 = 22;
      goto LABEL_32;
    }

    return result;
  }

  v19 = *(a1 + 24);
  v20 = *(a1 + 36);
  v21 = *(a1 + 48);
  v22 = fabsf(v20);
  v23 = fabsf(v19) <= 0.000001 && v22 <= 0.000001;
  v24 = fabsf(v21 + -1.0);
  if (!v23 || v24 > 0.000001)
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v26 = qword_280C03978;
    result = os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v31 = 134218496;
      *v32 = v19;
      *&v32[8] = 2048;
      v33 = v20;
      LOWORD(v34[0]) = 2048;
      *(v34 + 2) = v21;
      v12 = "intrinsic camera parameters have invalid 3rd row: %g, %g, %g (should be 0, 0, 1)";
      v13 = v26;
      v14 = 32;
      goto LABEL_32;
    }

    return result;
  }

  v29 = 0;
  do
  {
    v30 = *(a1 + 52 + v29);
    if ((v30 & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      break;
    }

    v6 = v29 == 32;
    v29 += 4;
  }

  while (!v6);
  if ((v30 & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(a1 + 88) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(a1 + 92) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(a1 + 96) & 0x7FFFFFFFu) < 0x7F800000)
  {
    return 1;
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v27 = qword_280C03978;
  result = os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR);
  if (result)
  {
    LOWORD(v31) = 0;
    v12 = "extrinsic camera parameters contain invalid values";
    goto LABEL_28;
  }

  return result;
}

void sub_24022B740(cva::ArrayHandler **a1, uint64_t a2)
{
  v3 = cva::ArrayHandler::size(*a1);
  if (v3 != *(a2 + 16))
  {
    *(a2 + 16) = v3;
    if (v3)
    {
      v4 = v3;
      if (*(a2 + 8) < v3)
      {
        free(*a2);
        v5 = (4 * v4 + 31) & 0x7FFFFFFE0;
        *a2 = 0;
        *(a2 + 8) = v5 >> 2;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v5, 0xE1AC2527uLL);
        *a2 = memptr;
      }
    }

    else
    {
      free(*a2);
      *a2 = 0;
      *(a2 + 8) = 0;
    }

    v3 = *(a2 + 16);
  }

  if (v3)
  {
    memset_pattern16(*a2, &unk_240270D20, 4 * v3);
  }

  v7[0] = 0;
  v7[1] = 0;
  memptr = v7;
  sub_24022C1FC();
}

void *sub_24022C62C(void *result)
{
  v1 = 0x27E3C8000uLL;
  v2 = 0x27E3C8000uLL;
  if ((atomic_load_explicit(&qword_27E3C89E8, memory_order_acquire) & 1) == 0)
  {
    v6 = result;
    v4 = __cxa_guard_acquire(&qword_27E3C89E8);
    v1 = 0x27E3C8000;
    v2 = 0x27E3C8000;
    v5 = v4;
    result = v6;
    if (v5)
    {
      sub_24022C6E8();
    }
  }

  v3 = *(v2 + 2528);
  *result = *(v1 + 2520);
  result[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_240231660()
{
  qword_27E3C8A00 = 0;
  qword_27E3C89F8 = 0;
  qword_27E3C89F0 = &qword_27E3C89F8;
  operator new();
}

const char *sub_240232074(void *a1, std::__shared_weak_count *a2)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a1)
  {
    result = (*a1 + 160);
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = "(null)";
    if (!a2)
    {
      return result;
    }
  }

  if (!atomic_fetch_add(&a2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = result;
    (a2->__on_zero_shared)(a2);
    std::__shared_weak_count::__release_weak(a2);
    return v3;
  }

  return result;
}

void sub_240232110(void ***a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = *(a2 + 60);
  v8 = *(a2 + 40);
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = **a1;
  v21 = v7;
  v22 = vextq_s8(*(a2 + 24), *(a2 + 24), 8uLL);
  v23 = vextq_s8(*(a2 + 8), vrev64q_s32(*(a2 + 8)), 8uLL);
  v10 = vrev64q_s32(*(a2 + 44));
  v24 = vextq_s8(v10, v10, 8uLL);
  v25 = v8;
  if (v9)
  {
    [v9 processIncomingExpressions:&v21];
    LOBYTE(add) = v26;
    if (v26 >= 4)
    {
      sub_2402546E0(&v21);
      sub_2402552EC(v33, &v21, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/facekit/accessibilityfilter.mm", 0x2Fu, "assert %s failed. activation value not implemented%s", "false");
      sub_240256698(v33);
      v12 = *(v22.i64 + 4);
      if (*(v22.i64 + 4))
      {
        add = atomic_fetch_add((*(v22.i64 + 4) + 8), 0xFFFFFFFFFFFFFFFFLL);
        if (!add)
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }
      }
    }
  }

  else
  {
    LOBYTE(add) = 0;
    v30 = 0;
    v28 = 0uLL;
    v29 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
  }

  *a3 = add;
  LOBYTE(add) = BYTE8(v26);
  if (*(&v26 + 1) >= 4uLL)
  {
    sub_2402546E0(&v31);
    sub_2402552EC(v33, &v31, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/facekit/accessibilityfilter.mm", 0x2Fu, "assert %s failed. activation value not implemented%s", "false");
    sub_240256698(v33);
    v13 = v32;
    if (v32)
    {
      add = atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL);
      if (!add)
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }
    }
  }

  *(a3 + 1) = add;
  LOBYTE(add) = v27;
  if (v27 >= 4)
  {
    sub_2402546E0(&v31);
    sub_2402552EC(v33, &v31, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/facekit/accessibilityfilter.mm", 0x2Fu, "assert %s failed. activation value not implemented%s", "false");
    sub_240256698(v33);
    v14 = v32;
    if (v32)
    {
      add = atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL);
      if (!add)
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }
    }
  }

  *(a3 + 2) = add;
  LOBYTE(add) = BYTE8(v27);
  if (*(&v27 + 1) >= 4uLL)
  {
    sub_2402546E0(&v31);
    sub_2402552EC(v33, &v31, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/facekit/accessibilityfilter.mm", 0x2Fu, "assert %s failed. activation value not implemented%s", "false");
    sub_240256698(v33);
    v15 = v32;
    if (v32)
    {
      add = atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL);
      if (!add)
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }
    }
  }

  *(a3 + 3) = add;
  LOBYTE(add) = v28;
  if (v28 >= 4)
  {
    sub_2402546E0(&v31);
    sub_2402552EC(v33, &v31, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/facekit/accessibilityfilter.mm", 0x2Fu, "assert %s failed. activation value not implemented%s", "false");
    sub_240256698(v33);
    v16 = v32;
    if (v32)
    {
      add = atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL);
      if (!add)
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }
    }
  }

  *(a3 + 4) = add;
  LOBYTE(add) = BYTE8(v28);
  if (*(&v28 + 1) >= 4uLL)
  {
    sub_2402546E0(&v31);
    sub_2402552EC(v33, &v31, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/facekit/accessibilityfilter.mm", 0x2Fu, "assert %s failed. activation value not implemented%s", "false");
    sub_240256698(v33);
    v17 = v32;
    if (v32)
    {
      add = atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL);
      if (!add)
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
      }
    }
  }

  *(a3 + 5) = add;
  LOBYTE(add) = v29;
  if (v29 >= 4)
  {
    sub_2402546E0(&v31);
    sub_2402552EC(v33, &v31, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/facekit/accessibilityfilter.mm", 0x2Fu, "assert %s failed. activation value not implemented%s", "false");
    sub_240256698(v33);
    v18 = v32;
    if (v32)
    {
      add = atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL);
      if (!add)
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }
    }
  }

  *(a3 + 8) = add;
  LOBYTE(add) = BYTE8(v29);
  if (*(&v29 + 1) >= 4uLL)
  {
    sub_2402546E0(&v31);
    sub_2402552EC(v33, &v31, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/facekit/accessibilityfilter.mm", 0x2Fu, "assert %s failed. activation value not implemented%s", "false");
    sub_240256698(v33);
    v19 = v32;
    if (v32)
    {
      add = atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL);
      if (!add)
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }
    }
  }

  *(a3 + 6) = add;
  LOBYTE(add) = v30;
  if (v30 >= 4)
  {
    sub_2402546E0(&v31);
    sub_2402552EC(v33, &v31, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/facekit/accessibilityfilter.mm", 0x2Fu, "assert %s failed. activation value not implemented%s", "false");
    sub_240256698(v33);
    v20 = v32;
    if (v32)
    {
      add = atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL);
      if (!add)
      {
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
      }
    }
  }

  *(a3 + 7) = add;
  *(a3 + 12) = *(a2 + 64);
  *(a3 + 20) = 1;
  objc_autoreleasePoolPop(v6);
}

const void *sub_2402327F4(uint64_t a1)
{
  cva::DictionaryHandler::DictionaryHandler(v5);
  if (*(a1 + 20))
  {
    cva::DictionaryHandler::DictionaryHandler(v4);
    cva::ItemHandler::createValue<int>();
  }

  Dictionary = cva::DictionaryHandler::getDictionary(v5);
  CFRetain(Dictionary);
  cva::DictionaryHandler::~DictionaryHandler(v5);
  return Dictionary;
}

void sub_240232ADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, void *a17)
{
  cva::ItemHandler::~ItemHandler(&a17);
  cva::DictionaryHandler::~DictionaryHandler(&a11);
  cva::DictionaryHandler::~DictionaryHandler(&a13);
  cva::DictionaryHandler::~DictionaryHandler(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_240232B80(uint64_t a1)
{
  *a1 = &unk_285228008;
  if (*(a1 + 152))
  {
    v2 = (a1 + 136);
    v3 = *(a1 + 144);
    v4 = *(*(a1 + 136) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(a1 + 152) = 0;
    if (v3 != (a1 + 136))
    {
      do
      {
        v6 = v3[1];
        v7 = v3[3];
        if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v8 = v3;
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
          v3 = v8;
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  std::condition_variable::~condition_variable((a1 + 80));
  std::mutex::~mutex((a1 + 16));
  return a1;
}

uint64_t **sub_240232C78(uint64_t **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_240207570(v2);
    MEMORY[0x245CBCA30](v4, 0x20C4093837F09);
    return v3;
  }

  return v1;
}

uint64_t sub_240232CCC(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  v2 = *(a1 + 152);
  std::mutex::unlock((a1 + 16));
  return v2;
}

void sub_240232D04(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  if (*(a1 + 152))
  {
    v2 = *(a1 + 144);
    v3 = *(*(a1 + 136) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 152) = 0;
    if (v2 != (a1 + 136))
    {
      do
      {
        v5 = v2[1];
        v6 = v2[3];
        if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v7 = v2;
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
          v2 = v7;
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != (a1 + 136));
    }
  }

  std::mutex::unlock((a1 + 16));
}

uint64_t sub_240232DE8(uint64_t a1)
{
  std::mutex::lock((a1 + 16));
  if (*(a1 + 128) != 1)
  {
    operator new();
  }

  std::mutex::unlock((a1 + 16));
  return 0;
}

void sub_240232F44(uint64_t a1, void *a2, int a3, uint64_t a4)
{
  v23.__m_ = (a1 + 16);
  v23.__owns_ = 1;
  std::mutex::lock((a1 + 16));
  v8 = 0;
  v9 = *(a1 + 152);
  if (a3 < 1 || v9)
  {
    goto LABEL_18;
  }

  v8 = a4 != 0;
  if (a4)
  {
    if ((*(a4 + 8) & 1) == 0)
    {
      goto LABEL_37;
    }

    std::mutex::unlock(*a4);
    *(a4 + 8) = 0;
  }

  std::chrono::steady_clock::now();
  v10.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if (!v10.__d_.__rep_)
  {
    v11 = 0;
    goto LABEL_14;
  }

  if (v10.__d_.__rep_ < 1)
  {
    if (v10.__d_.__rep_ < 0xFFDF3B645A1CAC09)
    {
      v11 = 0x8000000000000000;
      goto LABEL_14;
    }

LABEL_13:
    v11 = 1000 * v10.__d_.__rep_;
    goto LABEL_14;
  }

  if (v10.__d_.__rep_ <= 0x20C49BA5E353F7)
  {
    goto LABEL_13;
  }

  v11 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_14:
  if (v11 <= ((1000000 * a3) ^ 0x7FFFFFFFFFFFFFFFLL))
  {
    v12.__d_.__rep_ = v11 + 1000000 * a3;
  }

  else
  {
    v12.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
  }

  std::condition_variable::__do_timed_wait((a1 + 80), &v23, v12);
  std::chrono::steady_clock::now();
  v9 = *(a1 + 152);
LABEL_18:
  if (v9)
  {
    v13 = *(a1 + 144);
    v15 = *(v13 + 16);
    v14 = *(v13 + 24);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = a2[1];
    *a2 = v15;
    a2[1] = v14;
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v17 = *(a1 + 144);
    v18 = *(a1 + 152);
    v20 = *v17;
    v19 = v17[1];
    *(v20 + 8) = v19;
    *v19 = v20;
    *(a1 + 152) = v18 - 1;
    v21 = v17[3];
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v22 = v17;
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
      v17 = v22;
    }

    operator delete(v17);
  }

  if (v23.__owns_)
  {
    std::mutex::unlock(v23.__m_);
  }

  if (v8)
  {
    if (*a4)
    {
      if (*(a4 + 8) != 1)
      {
        std::mutex::lock(*a4);
        *(a4 + 8) = 1;
        return;
      }
    }

    else
    {
      std::__throw_system_error(1, "unique_lock::lock: references null mutex");
    }

    std::__throw_system_error(11, "unique_lock::lock: already locked");
LABEL_37:
    std::__throw_system_error(1, "unique_lock::unlock: not locked");
    __break(1u);
  }
}

void sub_2402331D4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11.__m_ = (a1 + 16);
  v11.__owns_ = 1;
  std::mutex::lock((a1 + 16));
  for (i = *(a1 + 152); !i; i = *(a1 + 152))
  {
    std::condition_variable::wait((a1 + 80), &v11);
  }

  v5 = *(a1 + 144);
  v6 = v5[3];
  *a2 = v5[2];
  a2[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    v5 = *(a1 + 144);
    i = *(a1 + 152);
    v7 = v5[3];
  }

  else
  {
    v7 = 0;
  }

  v9 = *v5;
  v8 = v5[1];
  *(v9 + 8) = v8;
  *v8 = v9;
  *(a1 + 152) = i - 1;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = v5;
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v5 = v10;
  }

  operator delete(v5);
  if (v11.__owns_)
  {
    std::mutex::unlock(v11.__m_);
  }
}

void sub_2402332D4(uint64_t a1)
{
  *a1 = &unk_285228008;
  if (*(a1 + 152))
  {
    v2 = (a1 + 136);
    v3 = *(a1 + 144);
    v4 = *(*(a1 + 136) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(a1 + 152) = 0;
    if (v3 != (a1 + 136))
    {
      do
      {
        v6 = v3[1];
        v7 = v3[3];
        if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v8 = v3;
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
          v3 = v8;
        }

        operator delete(v3);
        v3 = v6;
      }

      while (v6 != v2);
    }
  }

  std::condition_variable::~condition_variable((a1 + 80));
  std::mutex::~mutex((a1 + 16));

  JUMPOUT(0x245CBCA30);
}

void sub_2402333F0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_24023346C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852267E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_2402334E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = objc_autoreleasePoolPush();
  v21 = 0;
  v22 = 0;
  sub_240232F44(v1 + 40, &v21, 0, 0);
  v4 = v21;
  if (v21)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    std::mutex::lock((v1 + 56));
    v6 = *(v1 + 192);
    std::mutex::unlock((v1 + 56));
    kdebug_trace();
    v20[0] = 0;
    v20[1] = 0;
    v7 = *(v4 + 48);
    if (v7)
    {
      if (v7 != 1)
      {
        v17 = sub_2401F0C48();
        sub_2401C1DF4(&time);
        os_unfair_lock_unlock(&unk_280C03818);
        sub_2401C1DF4(v18);
        kdebug_trace();
        sub_2401C1DF4(v20);
        sub_2401C1DF4(&v21);
        _Unwind_Resume(v17);
      }

      time = *(v4 + 24);
      CMTimeGetSeconds(&time);
    }

    if (!v6 || *(v4 + 200) && v6 <= 9)
    {
      kdebug_trace();
      v8 = *v1;
      v19[0] = v4;
      v19[1] = v22;
      if (v22)
      {
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
      }

      sub_24020D924(&time, v8, v19);
    }

    kdebug_trace();
    v9 = *v1;
    v18[0] = v4;
    v18[1] = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    v10 = *v9;
    v11 = (*v9 + 216);
    v12.i64[0] = *(v4 + 88);
    v12.i64[1] = *(v4 + 200);
    v13.i64[0] = 0x100000001;
    v13.u64[1] = vand_s8(vmovn_s64(vtstq_s64(v12, v12)), 0x100000001);
    v14 = vaddq_s32(*v11, v13);
    *v11 = v14;
    ++*(v10 + 232);
    if (v14.i32[1] >= 0x64u)
    {
      sub_240204B04(v11->i32);
      *(v10 + 220) = 0u;
      v15 = (v10 + 220);
      v15[5] = 0u;
      v15[6] = 0u;
      v15[3] = 0u;
      v15[4] = 0u;
      v15[1] = 0u;
      v15[2] = 0u;
    }

    os_unfair_lock_lock(&unk_280C03818);
    time.value = 0;
    *&time.timescale = 0;
    sub_2402064F0();
  }

  v16 = v22;
  if (v22 && !atomic_fetch_add((v22 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_2402339E0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285228050;
  a2[1] = v2;
  return result;
}

uint64_t sub_240233A74(_BYTE ****a1, const __CFDictionary *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (****a1)
  {
    cva::DictionaryHandler::DictionaryHandler(v4, a2);
    operator new();
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v2 = qword_280C03978;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2401B8000, v2, OS_LOG_TYPE_ERROR, "facekit is not properly initialized", buf, 2u);
  }

  return 0;
}

void sub_240235950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  cva::ItemHandler::~ItemHandler((v40 - 224));
  CVPixelBufferRelease(v39);
  sub_2401C1DF4(&a19);
  cva::DictionaryHandler::~DictionaryHandler(&a21);
  _Unwind_Resume(a1);
}

uint64_t *sub_240235B2C(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_240236180(v2);
    MEMORY[0x245CBCA30](v4, 0x10E0C40B4202082);
    return v3;
  }

  return v1;
}

void sub_240235B80(uint64_t a1, cva::DictionaryHandler **a2, CVPixelBufferRef pixelBuffer)
{
  if (*a2)
  {
    *buf = &off_285227260;
    *v19 = 1065353216;
    *&v19[4] = 0;
    *&v19[12] = 0x3F80000000000000;
    *&v19[20] = 0;
    *&v19[28] = 0;
    *&v20[8] = 0;
    *&v20[16] = 0x3F80000000000000;
    *&v20[24] = 0;
    *&v20[32] = 0x3F80000000000000;
    __asm { FMOV            V0.2S, #1.0 }

    *v20 = _D0;
    v21 = 0;
    v22 = 0;
    LODWORD(v18) = CVPixelBufferGetWidth(pixelBuffer);
    HIDWORD(v18) = CVPixelBufferGetHeight(pixelBuffer);
    if (sub_240236604(*a2))
    {
      if (sub_24022B260(buf, pixelBuffer))
      {
        v11 = v18;
        *a1 = &off_285227260;
        *(a1 + 8) = v11;
        v12 = *&v19[16];
        *(a1 + 16) = *v19;
        *(a1 + 32) = v12;
        *(a1 + 48) = *v20;
        *(a1 + 52) = *&v20[4];
        *(a1 + 68) = *&v20[20];
        *(a1 + 84) = *&v20[36];
        *(a1 + 96) = v22;
        v13 = 1;
        *(a1 + 88) = v21;
LABEL_14:
        *(a1 + 104) = v13;
        return;
      }
    }

    else
    {
      if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
      {
        qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
        __cxa_guard_release(&qword_280C03A00);
      }

      v15 = qword_280C03978;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&dword_2401B8000, v15, OS_LOG_TYPE_ERROR, "Failed to extract camera parameters from dictionary.", v16, 2u);
      }
    }

    v13 = 0;
    *a1 = 0;
    goto LABEL_14;
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v14 = qword_280C03978;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2401B8000, v14, OS_LOG_TYPE_ERROR, "Camera parameters dictionary missing or incomplete.", buf, 2u);
  }

  *a1 = 0;
  *(a1 + 104) = 0;
}

uint64_t sub_240235E04(cva::DictionaryHandler *a1)
{
  result = cva::DictionaryHandler::hasKey(a1, @"disparity_invalid_value");
  if (result)
  {
    cva::DictionaryHandler::item(&v3, a1, @"disparity_invalid_value");
    cva::ItemHandler::getValue<int>();
  }

  return result;
}

uint64_t sub_240235E8C(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    if (!sub_24022B260(a1 + 96, v2))
    {
      if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
      {
        qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
        __cxa_guard_release(&qword_280C03A00);
      }

      v5 = qword_280C03978;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v11 = 0;
      v6 = "rgb camera parameters check failed";
      v7 = &v11;
      goto LABEL_23;
    }

    v3 = *(a1 + 200);
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(a1 + 200);
    if (!v3)
    {
      if (atomic_load_explicit(&qword_280C03A00, memory_order_acquire))
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }
  }

  if (!sub_24022B260(a1 + 208, v3))
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v5 = qword_280C03978;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v10 = 0;
    v6 = "depth camera parameters check failed";
    v7 = &v10;
    goto LABEL_23;
  }

LABEL_7:
  v4 = *(a1 + 48);
  if (!v4)
  {
    return 1;
  }

  if (v4 == 1)
  {
    if ((*(a1 + 36) & 1) == 0)
    {
      if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0)
      {
        if (__cxa_guard_acquire(&qword_280C03A00))
        {
          qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
          __cxa_guard_release(&qword_280C03A00);
        }
      }

      v5 = qword_280C03978;
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_24;
      }

      v9 = 0;
      v6 = "invalid timestamp";
      v7 = &v9;
      goto LABEL_23;
    }

    return 1;
  }

  sub_2401F0C48();
LABEL_30:
  if (__cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

LABEL_21:
  v5 = qword_280C03978;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v6 = "color or depth data missing";
    v7 = buf;
LABEL_23:
    _os_log_error_impl(&dword_2401B8000, v5, OS_LOG_TYPE_ERROR, v6, v7, 2u);
  }

LABEL_24:

  return 0;
}

uint64_t sub_24023613C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_240236180(result);

    JUMPOUT(0x245CBCA30);
  }

  return result;
}

uint64_t sub_240236180(uint64_t a1)
{
  v2 = *(a1 + 360);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 328);
  if (v3)
  {
    *(a1 + 336) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 200);
  if (v4)
  {
    CVPixelBufferRelease(v4);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    CVPixelBufferRelease(v5);
  }

  v6 = *(a1 + 80);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a1 + 64);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  cva::DictionaryHandler::~DictionaryHandler((a1 + 8));

  return a1;
}

void sub_2402362B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_2402362F4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_240236180(result);

    JUMPOUT(0x245CBCA30);
  }

  return result;
}

void sub_240236338(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_240236374(cva::DictionaryHandler *a1, _DWORD *a2)
{
  cva::DictionaryHandler::DictionaryHandler(a1);
  memptr[3] = 16;
  memptr[0] = 0;
  malloc_type_posix_memalign(memptr, 0x20uLL, 0x40uLL, 0xE1AC2527uLL);
  v3 = memptr[0];
  memptr[2] = memptr[0];
  memptr[4] = 0x300000003;
  *memptr[0] = *a2;
  v3[1] = a2[1];
  v3[2] = a2[2];
  v3[3] = a2[3];
  v3[4] = a2[4];
  v3[5] = a2[5];
  v3[6] = a2[6];
  v3[7] = a2[7];
  v3[8] = a2[8];
  cva::ItemHandler::createMatrix<float>();
}

void sub_2402364A0(cva::DictionaryHandler *a1, _DWORD *a2)
{
  cva::DictionaryHandler::DictionaryHandler(a1);
  memptr[3] = 16;
  memptr[0] = 0;
  malloc_type_posix_memalign(memptr, 0x20uLL, 0x40uLL, 0xE1AC2527uLL);
  v3 = memptr[0];
  memptr[2] = memptr[0];
  memptr[4] = 0x300000003;
  *memptr[0] = *a2;
  v3[1] = a2[1];
  v3[2] = a2[2];
  v3[3] = a2[3];
  v3[4] = a2[4];
  v3[5] = a2[5];
  v3[6] = a2[6];
  v3[7] = a2[7];
  v3[8] = a2[8];
  cva::ItemHandler::createMatrix<float>();
}

uint64_t sub_240236604(cva::DictionaryHandler *a1)
{
  result = cva::DictionaryHandler::hasKey(a1, @"intrinsics");
  if (result)
  {
    result = cva::DictionaryHandler::hasKey(a1, @"extrinsics");
    if (result)
    {
      cva::DictionaryHandler::item(v6, a1, @"extrinsics");
      cva::ItemHandler::getDictionary(&v7, v6);
      v4 = v7;
      v3 = v8;
      v7 = 0;
      v8 = 0;
      cva::ItemHandler::~ItemHandler(v6);
      if (v4)
      {
        result = sub_240236798(v4);
        if (result)
        {
          cva::DictionaryHandler::item(v6, a1, @"intrinsics");
          cva::ItemHandler::getMatrix<float>();
        }
      }

      else
      {
        result = 0;
      }

      if (v3)
      {
        if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = result;
          (v3->__on_zero_shared)(v3);
          std::__shared_weak_count::__release_weak(v3);
          return v5;
        }
      }
    }
  }

  return result;
}

uint64_t sub_240236798(cva::DictionaryHandler *a1)
{
  result = cva::DictionaryHandler::hasKey(a1, @"rotation");
  if (result)
  {
    result = cva::DictionaryHandler::hasKey(a1, @"translation");
    if (result)
    {
      cva::DictionaryHandler::item(&v3, a1, @"rotation");
      cva::ItemHandler::getMatrix<float>();
    }
  }

  return result;
}

void sub_240236908(uint64_t a1, unsigned int **a2, uint64_t a3)
{
  if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
  {
    sub_240222DDC();
  }

  v5 = *(qword_280C03828 + 116);
  if (v5 <= 0.0)
  {
    v6 = -3.0;
  }

  else
  {
    v6 = -v5;
  }

  if (v5 <= 0.0)
  {
    v7 = 3.0;
  }

  else
  {
    v7 = *(qword_280C03828 + 116);
  }

  v8 = **a2;
  v9 = (*a2)[1];
  if (v8 > *(a3 + 8) || v9 > *(a3 + 12))
  {
    v11 = *(a3 + 24);
    if (v11)
    {
      free(v11);
      *(a3 + 24) = 0;
    }

    *a3 = 0;
    *(a3 + 8) = v8 | (v9 << 32);
    *(a3 + 16) = ((((v8 + 15) & 0xFFFFFFF0) >> 4) << 36) | 1;
    size = v9 * ((v8 + 15) & 0xFFFFFFF0);
    if (size)
    {
      v12 = malloc_type_malloc(size, 0x100004077774924uLL);
    }

    else
    {
      v12 = 0;
    }

    *(a3 + 24) = v12;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = v8 | (v9 << 32);
  }

  v13 = (v9 * v8);
  if (v13 >= 1)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = (0.5 - (v6 * (255.0 / (v7 - v6)))) + ((255.0 / (v7 - v6)) * *(*(*a2 + 1) + 4 * i));
      v16 = fminf(v15, 255.0);
      if (v15 >= 0.0)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0.0;
      }

      *(*(a3 + 24) + i) = v17;
    }
  }
}

void sub_240236AA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v170 = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 64);
  v5 = *(a3 + 72);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!a2)
  {
    v12 = *(v6 + 152);
    if (!v12)
    {
LABEL_18:
      if (*(v6 + 520))
      {
        goto LABEL_190;
      }

LABEL_19:
      if (v12)
      {
        bzero(*(v6 + 136), 4 * v12);
      }

      v24 = *(*(a1 + 24) + 92);
      if (v24 != *(v6 + 176))
      {
        *(v6 + 176) = v24;
        if (v24)
        {
          if (*(v6 + 168) < v24)
          {
            free(*(v6 + 160));
            v25 = (4 * v24 + 31) & 0x7FFFFFFE0;
            *(v6 + 160) = 0;
            *(v6 + 168) = v25 >> 2;
            memptr = 0;
            malloc_type_posix_memalign(&memptr, 0x20uLL, v25, 0xE1AC2527uLL);
            *(v6 + 160) = memptr;
          }
        }

        else
        {
          free(*(v6 + 160));
          *(v6 + 160) = 0;
          *(v6 + 168) = 0;
        }

        v24 = *(v6 + 176);
      }

      if (v24)
      {
        bzero(*(v6 + 160), 4 * v24);
      }

      v56 = *(a1 + 24);
      v57 = *(v56 + 40);
      v58 = *(v56 + 24);
      v59 = *(v6 + 320);
      if (v57 == *(v6 + 336))
      {
LABEL_88:
        if (v58 != v59)
        {
          if (!v57)
          {
            goto LABEL_123;
          }

          v70 = (v57 - 1) & 0x3FFFFFFFFFFFFFFFLL;
          if (v70 < 7)
          {
            v71 = v59;
          }

          else
          {
            v71 = v59;
            if ((v59 - v58) >= 0x20)
            {
              v72 = (v70 + 1) & 0x7FFFFFFFFFFFFFF8;
              v73 = v59 + 16;
              v74 = (v58 + 16);
              v75 = v72;
              do
              {
                v76 = *v74;
                *(v73 - 1) = *(v74 - 1);
                *v73 = v76;
                v73 += 2;
                v74 += 2;
                v75 -= 8;
              }

              while (v75);
              if (v70 + 1 == v72)
              {
LABEL_123:
                v97 = *(a1 + 24);
                v98 = *(v97 + 40);
                v99 = *(v97 + 44) - 1;
                v100 = *(v97 + 24);
                v101 = &v100[4 * v98];
                if (__PAIR64__(v99, v98) == *(v6 + 360))
                {
                  v102 = *(v6 + 344);
                  goto LABEL_134;
                }

                v102 = *(v6 + 344);
                v103 = (v99 * v98);
                if (v100 != v102)
                {
                  *(v6 + 360) = v98;
                  *(v6 + 364) = v99;
                  if (v103)
                  {
                    if (*(v6 + 352) < v103)
                    {
                      free(v102);
                      v104 = (4 * v103 + 31) & 0x7FFFFFFE0;
                      *(v6 + 344) = 0;
                      *(v6 + 352) = v104 >> 2;
                      memptr = 0;
                      malloc_type_posix_memalign(&memptr, 0x20uLL, v104, 0xE1AC2527uLL);
                      v102 = memptr;
                      *(v6 + 344) = memptr;
                    }
                  }

                  else
                  {
                    free(v102);
                    v102 = 0;
                    *(v6 + 344) = 0;
                    *(v6 + 352) = 0;
                  }

LABEL_134:
                  v108 = *(v6 + 360);
                  v109 = *(v6 + 364);
                  v110 = (v109 * v108);
                  if (v100 != v102)
                  {
                    if (v110)
                    {
                      if (v99 * v98)
                      {
                        v111 = &v100[4 * v98];
                      }

                      else
                      {
                        v111 = 0;
                      }

                      v112 = (v110 - 1) & 0x3FFFFFFFFFFFFFFFLL;
                      if (v112 < 7)
                      {
                        v113 = v102;
                      }

                      else
                      {
                        v113 = v102;
                        if ((v102 - v111) >= 0x20)
                        {
                          v114 = v112 + 1;
                          v115 = 4 * (v114 & 0x7FFFFFFFFFFFFFF8);
                          v113 = (v102 + v115);
                          v116 = (v111 + 4);
                          v117 = v102 + 1;
                          v118 = v114 & 0x7FFFFFFFFFFFFFF8;
                          do
                          {
                            v119 = *v116;
                            *(v117 - 1) = *(v116 - 1);
                            *v117 = v119;
                            v116 += 2;
                            v117 += 2;
                            v118 -= 8;
                          }

                          while (v118);
                          if (v114 == (v114 & 0x7FFFFFFFFFFFFFF8))
                          {
                            goto LABEL_180;
                          }

                          v111 = (v111 + v115);
                        }
                      }

                      do
                      {
                        v134 = *v111++;
                        *v113++ = v134;
                      }

                      while (v113 != (v102 + 4 * v110));
                    }

LABEL_180:
                    if (*(*(a1 + 24) + 240) == 1)
                    {
                      *(v6 + 280) = 0u;
                      *(v6 + 296) = 0u;
                      *(v6 + 264) = 0u;
                      *(v6 + 312) = 1;
                      v152 = *(a1 + 24);
                      v153 = *(v152 + 184);
                      if (v153)
                      {
                        memmove((v6 + 264), *(v152 + 168), 4 * v153);
                      }
                    }

                    v158[0] = v6;
                    v158[1] = v5;
                    if (!v5)
                    {
                      v55 = v158;
                      goto LABEL_188;
                    }

                    p_shared_owners = &v5->__shared_owners_;
                    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
                    v52 = v158;
LABEL_185:
                    v154 = sub_2402377E4(a1, v52);
                    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v5->__on_zero_shared)(v5, v154);
                      std::__shared_weak_count::__release_weak(v5);
                    }

                    goto LABEL_189;
                  }

                  v120 = (4 * v110 + 31) & 0x7FFFFFFE0;
                  v155 = v120 >> 2;
                  memptr = 0;
                  malloc_type_posix_memalign(&memptr, 0x20uLL, v120, 0xE1AC2527uLL);
                  v121 = memptr;
                  if (!v110)
                  {
                    goto LABEL_170;
                  }

                  if (v99 * v98)
                  {
                    v122 = &v100[4 * v98];
                  }

                  else
                  {
                    v122 = 0;
                  }

                  v123 = (v110 - 1) & 0x3FFFFFFFFFFFFFFFLL;
                  if (v123 < 7)
                  {
                    v124 = memptr;
                  }

                  else
                  {
                    v124 = memptr;
                    if ((memptr - v122) >= 0x20)
                    {
                      v125 = v123 + 1;
                      v126 = 4 * (v125 & 0x7FFFFFFFFFFFFFF8);
                      v124 = memptr + v126;
                      v127 = (v122 + 4);
                      v128 = memptr + 16;
                      v129 = v125 & 0x7FFFFFFFFFFFFFF8;
                      do
                      {
                        v130 = *v127;
                        *(v128 - 1) = *(v127 - 1);
                        *v128 = v130;
                        v127 += 2;
                        v128 += 2;
                        v129 -= 8;
                      }

                      while (v129);
                      if (v125 == (v125 & 0x7FFFFFFFFFFFFFF8))
                      {
                        goto LABEL_170;
                      }

                      v122 = (v122 + v126);
                    }
                  }

                  do
                  {
                    v143 = *v122++;
                    *v124 = v143;
                    v124 += 4;
                  }

                  while (v124 != &v121[4 * v110]);
LABEL_170:
                  v144 = *(v6 + 344);
                  *(v6 + 344) = v121;
                  *(v6 + 352) = v155;
                  *(v6 + 360) = v108;
                  *(v6 + 364) = v109;
LABEL_179:
                  free(v144);
                  goto LABEL_180;
                }

                memptr = 0;
                malloc_type_posix_memalign(&memptr, 0x20uLL, (4 * (v99 * v98) + 31) & 0x7FFFFFFE0, 0xE1AC2527uLL);
                v105 = memptr;
                if (v100 != memptr)
                {
                  if (v103)
                  {
                    v106 = (v103 - 1) & 0x3FFFFFFFFFFFFFFFLL;
                    if (v106 >= 7)
                    {
                      v135 = &v100[4 * v98];
                      v107 = memptr;
                      if ((memptr - v135) >= 0x20)
                      {
                        v136 = v106 + 1;
                        v137 = 4 * (v136 & 0x7FFFFFFFFFFFFFF8);
                        v107 = memptr + v137;
                        v138 = (v135 + 16);
                        v139 = memptr + 16;
                        v140 = v136 & 0x7FFFFFFFFFFFFFF8;
                        do
                        {
                          v141 = *v138;
                          *(v139 - 1) = *(v138 - 1);
                          *v139 = v141;
                          v138 += 2;
                          v139 += 2;
                          v140 -= 8;
                        }

                        while (v140);
                        if (v136 == (v136 & 0x7FFFFFFFFFFFFFF8))
                        {
                          goto LABEL_167;
                        }

                        v101 = (v101 + v137);
                      }
                    }

                    else
                    {
                      v107 = memptr;
                    }

                    do
                    {
                      v142 = *v101++;
                      *v107 = v142;
                      v107 += 4;
                    }

                    while (v107 != &v105[4 * v103]);
                  }

LABEL_167:
                  v131 = v105;
LABEL_178:
                  v144 = *(v6 + 344);
                  *(v6 + 344) = v131;
                  *(v6 + 352) = ((4 * (v99 * v98) + 31) & 0x7FFFFFFE0uLL) >> 2;
                  *(v6 + 360) = v98;
                  *(v6 + 364) = v99;
                  goto LABEL_179;
                }

                memptr = 0;
                malloc_type_posix_memalign(&memptr, 0x20uLL, (4 * (v99 * v98) + 31) & 0x7FFFFFFE0, 0xE1AC2527uLL);
                v131 = memptr;
                if (v103)
                {
                  v132 = (v103 - 1) & 0x3FFFFFFFFFFFFFFFLL;
                  if (v132 >= 7)
                  {
                    v133 = memptr;
                    if ((memptr - v100 - 4 * v98) >= 0x20)
                    {
                      v145 = v132 + 1;
                      v146 = 4 * (v145 & 0x7FFFFFFFFFFFFFF8);
                      v133 = memptr + v146;
                      v147 = &v100[4 * v98 + 16];
                      v148 = memptr + 16;
                      v149 = v145 & 0x7FFFFFFFFFFFFFF8;
                      do
                      {
                        v150 = *v147;
                        *(v148 - 1) = *(v147 - 1);
                        *v148 = v150;
                        v147 += 2;
                        v148 += 2;
                        v149 -= 8;
                      }

                      while (v149);
                      if (v145 == (v145 & 0x7FFFFFFFFFFFFFF8))
                      {
                        goto LABEL_177;
                      }

                      v101 = (v101 + v146);
                    }
                  }

                  else
                  {
                    v133 = memptr;
                  }

                  do
                  {
                    v151 = *v101++;
                    *v133 = v151;
                    v133 += 4;
                  }

                  while (v133 != &v131[4 * v103]);
                }

LABEL_177:
                free(v105);
                goto LABEL_178;
              }

              v71 = &v59[4 * v72];
              v58 += 4 * v72;
            }
          }

          do
          {
            v85 = *v58;
            v58 += 4;
            *v71 = v85;
            v71 += 4;
          }

          while (v71 != &v59[4 * v57]);
          goto LABEL_123;
        }

        v61 = (4 * v57 + 31) & 0x7FFFFFFE0;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v61, 0xE1AC2527uLL);
        v77 = memptr;
        if (v57)
        {
          v78 = (v57 - 1) & 0x3FFFFFFFFFFFFFFFLL;
          if (v78 < 7)
          {
            v79 = memptr;
          }

          else
          {
            v79 = memptr;
            if ((memptr - v58) >= 0x20)
            {
              v80 = (v78 + 1) & 0x7FFFFFFFFFFFFFF8;
              v81 = memptr + 16;
              v82 = (v58 + 16);
              v83 = v80;
              do
              {
                v84 = *v82;
                *(v81 - 1) = *(v82 - 1);
                *v81 = v84;
                v81 += 2;
                v82 += 2;
                v83 -= 8;
              }

              while (v83);
              if (v78 + 1 == v80)
              {
                goto LABEL_122;
              }

              v79 = &v77[4 * v80];
              v58 += 4 * v80;
            }
          }

          do
          {
            v93 = *v58;
            v58 += 4;
            *v79 = v93;
            v79 += 4;
          }

          while (v79 != &v77[4 * v57]);
        }

LABEL_122:
        v96 = *(v6 + 320);
        *(v6 + 320) = v77;
        *(v6 + 328) = v61 >> 2;
        *(v6 + 336) = v57;
        free(v96);
        goto LABEL_123;
      }

      if (v58 != v59)
      {
        *(v6 + 336) = v57;
        if (v57)
        {
          if (*(v6 + 328) < v57)
          {
            free(v59);
            v60 = (4 * v57 + 31) & 0x7FFFFFFE0;
            *(v6 + 320) = 0;
            *(v6 + 328) = v60 >> 2;
            memptr = 0;
            malloc_type_posix_memalign(&memptr, 0x20uLL, v60, 0xE1AC2527uLL);
            v59 = memptr;
            *(v6 + 320) = memptr;
          }
        }

        else
        {
          free(v59);
          v59 = 0;
          *(v6 + 320) = 0;
          *(v6 + 328) = 0;
        }

        LODWORD(v57) = *(v6 + 336);
        goto LABEL_88;
      }

      v61 = (4 * v57 + 31) & 0x7FFFFFFE0;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v61, 0xE1AC2527uLL);
      v62 = memptr;
      if (v58 != memptr)
      {
        if (v57)
        {
          v63 = (v57 - 1) & 0x3FFFFFFFFFFFFFFFLL;
          if (v63 < 7)
          {
            v64 = memptr;
          }

          else
          {
            v64 = memptr;
            if ((memptr - v58) >= 0x20)
            {
              v65 = (v63 + 1) & 0x7FFFFFFFFFFFFFF8;
              v66 = memptr + 16;
              v67 = (v58 + 16);
              v68 = v65;
              do
              {
                v69 = *v67;
                *(v66 - 1) = *(v67 - 1);
                *v66 = v69;
                v66 += 2;
                v67 += 2;
                v68 -= 8;
              }

              while (v68);
              if (v63 + 1 == v65)
              {
                goto LABEL_118;
              }

              v64 = &v62[4 * v65];
              v58 += 4 * v65;
            }
          }

          do
          {
            v94 = *v58;
            v58 += 4;
            *v64 = v94;
            v64 += 4;
          }

          while (v64 != &v62[4 * v57]);
        }

LABEL_118:
        v77 = v62;
        goto LABEL_122;
      }

      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v61, 0xE1AC2527uLL);
      v77 = memptr;
      if (v57)
      {
        v86 = (v57 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        if (v86 < 7)
        {
          v87 = memptr;
        }

        else
        {
          v87 = memptr;
          if ((memptr - v58) >= 0x20)
          {
            v88 = (v86 + 1) & 0x7FFFFFFFFFFFFFF8;
            v89 = memptr + 16;
            v90 = (v58 + 16);
            v91 = v88;
            do
            {
              v92 = *v90;
              *(v89 - 1) = *(v90 - 1);
              *v89 = v92;
              v89 += 2;
              v90 += 2;
              v91 -= 8;
            }

            while (v91);
            if (v86 + 1 == v88)
            {
              goto LABEL_121;
            }

            v87 = &v77[4 * v88];
            v58 += 4 * v88;
          }
        }

        do
        {
          v95 = *v58;
          v58 += 4;
          *v87 = v95;
          v87 += 4;
        }

        while (v87 != &v77[4 * v57]);
      }

LABEL_121:
      free(v62);
      goto LABEL_122;
    }

    v13 = *(v6 + 136);
    v14 = *v13 * *v13;
    if (v12 != 1)
    {
      v15 = v13 + 1;
      v16 = 4 * v12 - 8;
      if (v16 < 0x1C)
      {
        goto LABEL_15;
      }

      v17 = (v16 >> 2) + 1;
      v18 = (v13 + 5);
      v19 = v17 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v20 = vmulq_f32(v18[-1], v18[-1]);
        v21 = vmulq_f32(*v18, *v18);
        v14 = (((((((v14 + v20.f32[0]) + v20.f32[1]) + v20.f32[2]) + v20.f32[3]) + v21.f32[0]) + v21.f32[1]) + v21.f32[2]) + v21.f32[3];
        v18 += 2;
        v19 -= 8;
      }

      while (v19);
      if (v17 != (v17 & 0x7FFFFFFFFFFFFFF8))
      {
        v15 += v17 & 0x7FFFFFFFFFFFFFF8;
LABEL_15:
        v22 = &v13[v12];
        do
        {
          v23 = *v15++;
          v14 = v14 + (v23 * v23);
        }

        while (v15 != v22);
      }
    }

    if (v14 > 0.0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v7 = (v6 + 136);
  if (v6 + 136 == a2 + 16)
  {
    v26 = *(v6 + 152);
  }

  else
  {
    v8 = *(a2 + 32);
    if (v8)
    {
      v9 = *(v6 + 136);
      if (*(v6 + 144) >= v8)
      {
        v10 = 4 * v8;
      }

      else
      {
        free(v9);
        v10 = 4 * v8;
        v11 = (v10 + 31) & 0x7FFFFFFE0;
        *(v6 + 136) = 0;
        *(v6 + 144) = v11 >> 2;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v11, 0xE1AC2527uLL);
        v9 = memptr;
        *(v6 + 136) = memptr;
      }

      memcpy(v9, *(a2 + 16), v10);
    }

    else
    {
      free(*v7);
      *v7 = 0;
      *(v6 + 144) = 0;
    }

    v26 = *(a2 + 32);
    *(v6 + 152) = v26;
  }

  v27 = *(a1 + 24);
  v28 = *(v27 + 88);
  v29 = *(v27 + 72);
  v159[0] = v28;
  v159[1] = v26;
  v160 = v29;
  v161 = v28;
  v162 = 0;
  if (v28 == *(v6 + 176))
  {
LABEL_31:
    v167 = v159;
    v168 = v6 + 136;
    v169 = 1065353216;
    sub_2402393DC(v6 + 160, &memptr);
    goto LABEL_38;
  }

  v30 = *(v6 + 160);
  if (v29 != v30 && *v7 != v30)
  {
    *(v6 + 176) = v28;
    if (v28)
    {
      if (*(v6 + 168) < v28)
      {
        free(v30);
        v41 = (4 * v28 + 31) & 0x7FFFFFFE0;
        *(v6 + 160) = 0;
        *(v6 + 168) = v41 >> 2;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v41, 0xE1AC2527uLL);
        *(v6 + 160) = memptr;
      }
    }

    else
    {
      free(v30);
      *(v6 + 160) = 0;
      *(v6 + 168) = 0;
    }

    goto LABEL_31;
  }

  v32 = (4 * v28 + 31) & 0x7FFFFFFE0;
  v164 = v32 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v32, 0xE1AC2527uLL);
  v163 = memptr;
  v165 = v159[0];
  v167 = v159;
  v168 = v6 + 136;
  v169 = 1065353216;
  sub_2402393DC(&v163, &memptr);
  v33 = *(v6 + 160);
  v34 = *(v6 + 168);
  v35 = v164;
  *(v6 + 160) = v163;
  *(v6 + 168) = v35;
  v163 = v33;
  v164 = v34;
  *(v6 + 176) = v165;
  free(v33);
LABEL_38:
  v36 = (v6 + 320);
  if (v6 + 320 != a2 + 40)
  {
    v37 = *(a2 + 56);
    if (v37)
    {
      v38 = *(v6 + 320);
      if (*(v6 + 328) >= v37)
      {
        v39 = 4 * v37;
      }

      else
      {
        free(v38);
        v39 = 4 * v37;
        v40 = (v39 + 31) & 0x7FFFFFFE0;
        *(v6 + 320) = 0;
        *(v6 + 328) = v40 >> 2;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v40, 0xE1AC2527uLL);
        v38 = memptr;
        *(v6 + 320) = memptr;
      }

      memcpy(v38, *(a2 + 40), v39);
    }

    else
    {
      free(*v36);
      *v36 = 0;
      *(v6 + 328) = 0;
    }

    *(v6 + 336) = *(a2 + 56);
  }

  v42 = (v6 + 344);
  if (v6 + 344 != a2 + 64)
  {
    v43 = (*(a2 + 84) * *(a2 + 80));
    if (v43)
    {
      v44 = *(v6 + 344);
      if (*(v6 + 352) >= v43)
      {
        v45 = 4 * v43;
      }

      else
      {
        free(v44);
        v45 = 4 * v43;
        v46 = (4 * v43 + 31) & 0x7FFFFFFE0;
        *(v6 + 344) = 0;
        *(v6 + 352) = v46 >> 2;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v46, 0xE1AC2527uLL);
        v44 = memptr;
        *(v6 + 344) = memptr;
      }

      memcpy(v44, *(a2 + 64), v45);
    }

    else
    {
      free(*v42);
      *v42 = 0;
      *(v6 + 352) = 0;
    }

    *(v6 + 360) = *(a2 + 80);
  }

  v47 = (a2 + 88);
  v48 = (v6 + 264);
  if (*(v6 + 312) == *(a2 + 136))
  {
    if (v48 != v47 && *(v6 + 312))
    {
      v49 = *v47;
      v50 = *(a2 + 120);
      *(v6 + 280) = *(a2 + 104);
      *(v6 + 296) = v50;
      *v48 = v49;
      v156 = v6;
      v157 = v5;
      if (!v5)
      {
        goto LABEL_67;
      }

      goto LABEL_65;
    }
  }

  else
  {
    if (!*(v6 + 312))
    {
      v53 = *v47;
      v54 = *(a2 + 120);
      *(v6 + 280) = *(a2 + 104);
      *(v6 + 296) = v54;
      *v48 = v53;
      *(v6 + 312) = 1;
      v156 = v6;
      v157 = v5;
      if (v5)
      {
        goto LABEL_65;
      }

      goto LABEL_67;
    }

    *(v6 + 312) = 0;
  }

  v156 = v6;
  v157 = v5;
  if (v5)
  {
LABEL_65:
    p_shared_owners = &v5->__shared_owners_;
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v52 = &v156;
    goto LABEL_185;
  }

LABEL_67:
  v55 = &v156;
LABEL_188:
  sub_2402377E4(a1, v55);
LABEL_189:
  *(v6 + 520) = 1;
LABEL_190:
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

float sub_2402377E4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *(v4 + 364);
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v6 = *(v4 + 364);
  }

  v7 = *(v4 + 364);
  v8 = *(*(a1 + 8) + 112);
  v9 = *(v4 + 320);
  v17[0] = *(v4 + 360);
  v17[1] = v7;
  v18 = *(v4 + 344);
  v19 = v17[0];
  v20 = 0;
  sub_240237A0C(v8, v8 + 3, v9, v17, v6, *(v4 + 424), *(v4 + 448), *(v4 + 464));
  if (!v5)
  {
    goto LABEL_7;
  }

  p_shared_owners = &v5->__shared_owners_;
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_11;
    }

LABEL_7:
    v11 = *a2;
    v12 = a2[1];
    if (v12)
    {
      goto LABEL_8;
    }

LABEL_12:
    sub_240237B98(*(*(a1 + 8) + 16), *(*(a1 + 8) + 24), v11);
    goto LABEL_13;
  }

  if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_7;
  }

LABEL_11:
  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v11 = *a2;
  v12 = a2[1];
  if (!v12)
  {
    goto LABEL_12;
  }

LABEL_8:
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_240237B98(*(*(a1 + 8) + 16), *(*(a1 + 8) + 24), v11);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

LABEL_13:
  v13 = *a2;
  v14 = a2[1];
  v16[0] = v13;
  v16[1] = v14;
  if (!v14)
  {
    return sub_240237D00(a1, v16);
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  result = sub_240237D00(a1, v16);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14, result);

    std::__shared_weak_count::__release_weak(v14);
  }

  return result;
}

uint64_t *sub_240237A0C(uint64_t *result, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, int a8)
{
  v8 = *(result + 4);
  if (v8)
  {
    v9 = 0;
    v10 = *a2;
    v11 = *result;
    do
    {
      v12 = 4 * v9;
      v13 = (a3 + 4 * (3 * *(v11 + v12)));
      v14 = *(v10 + v12);
      v15 = (a3 + 4 * (3 * *(v11 + 4 * (v9 + 1))));
      v16 = *(v10 + 4 * (v9 + 1));
      v17 = (a3 + 4 * (3 * *(v11 + 4 * (v9 + 2))));
      v18 = *(v10 + 4 * (v9 + 2));
      v19 = ((v13[1].f32[0] * v14) + (v15[1].f32[0] * v16)) + (v17[1].f32[0] * v18);
      v20 = (a6 + v12);
      *v20 = vadd_f32(vadd_f32(vmul_n_f32(*v13, v14), vmul_n_f32(*v15, v16)), vmul_n_f32(*v17, v18));
      v20[1].f32[0] = v19;
      v9 += 3;
    }

    while (3 * v8 != v9);
  }

  if (a5 && v8)
  {
    v21 = 0;
    v23 = *(a4 + 16);
    v22 = *(a4 + 20);
    v24 = *(a4 + 8) - 4 * v22;
    v25 = *a2;
    v26 = *result;
    v27 = a5;
    v28 = 3 * v8;
    do
    {
      v29 = 0;
      v30 = v24 + 4 * (v22 + v23 * v21);
      result = (a7 + 4 * (v21 * a8));
      do
      {
        v31 = 4 * v29;
        v32 = (v30 + 4 * (3 * *(v26 + v31)));
        v33 = *(v25 + v31);
        v34 = (v30 + 4 * (3 * *(v26 + 4 * (v29 + 1))));
        v35 = *(v25 + 4 * (v29 + 1));
        v36 = (v30 + 4 * (3 * *(v26 + 4 * (v29 + 2))));
        v37 = *(v25 + 4 * (v29 + 2));
        v38 = ((v32[1].f32[0] * v33) + (v34[1].f32[0] * v35)) + (v36[1].f32[0] * v37);
        v39 = (result + v31);
        *v39 = vadd_f32(vadd_f32(vmul_n_f32(*v32, v33), vmul_n_f32(*v34, v35)), vmul_n_f32(*v36, v37));
        v39[1].f32[0] = v38;
        v29 += 3;
      }

      while (v28 != v29);
      ++v21;
    }

    while (v21 != v27);
  }

  return result;
}

int *sub_240237B98(int *result, uint64_t a2, uint64_t a3)
{
  if (((a2 - result) >> 2) >= 1)
  {
    v3 = *(a3 + 320);
    v4 = *(a3 + 360);
    v5 = *(a3 + 364);
    v6 = *(a3 + 344);
    v7 = *(a3 + 472);
    v8 = ((a2 - result) >> 2) & 0x7FFFFFFF;
    if (v3 == v7)
    {
      v15 = 0;
      v16 = result;
      v17 = ((a2 - result) >> 2) & 0x7FFFFFFF;
      do
      {
        v18 = *v16++;
        v19 = (v3 + 4 * (3 * v18));
        v20 = *v19;
        v21 = *(v19 + 1);
        v22 = v7 + 4 * v15;
        *v22 = v20;
        *(v22 + 4) = v21;
        v15 += 3;
        --v17;
      }

      while (v17);
    }

    else
    {
      v9 = 0;
      v10 = result;
      v11 = ((a2 - result) >> 2) & 0x7FFFFFFF;
      do
      {
        v12 = *v10++;
        v13 = (v3 + 4 * (3 * v12));
        v14 = (v7 + 4 * v9);
        *v14 = *v13;
        v14[1] = v13[1];
        v14[2] = v13[2];
        v9 += 3;
        --v11;
      }

      while (v11);
    }

    if (v5)
    {
      v23 = 0;
      v24 = *(a3 + 512);
      v25 = *(a3 + 496);
      do
      {
        v26 = v6 + 4 * (v4 * v23);
        v27 = v25 + 4 * (v24 * v23);
        if (v26 == v27)
        {
          v34 = 0;
          v35 = result;
          v36 = v8;
          do
          {
            v37 = *v35++;
            v38 = (v26 + 4 * (3 * v37));
            v39 = *v38;
            v40 = *(v38 + 1);
            v41 = v27 + 4 * v34;
            *v41 = v39;
            *(v41 + 4) = v40;
            v34 += 3;
            --v36;
          }

          while (v36);
        }

        else
        {
          v28 = 0;
          v29 = result;
          v30 = v8;
          do
          {
            v31 = *v29++;
            v32 = (v26 + 4 * (3 * v31));
            v33 = (v27 + 4 * v28);
            *v33 = *v32;
            v33[1] = v32[1];
            v33[2] = v32[2];
            v28 += 3;
            --v30;
          }

          while (v30);
        }

        ++v23;
      }

      while (v23 != v5);
    }
  }

  return result;
}

float sub_240237D00(uint64_t a1, void *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = *(*a2 + 412);
  v6 = *a2;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *a2;
  }

  v7 = *(*(a1 + 8) + 128);
  v8 = v3[40];
  v13[0] = v3[45];
  v13[1] = v3[43];
  v14 = v13[0];
  v15 = 0;
  sub_240237A0C(v7, v7 + 3, v8, v13, v5, *(v6 + 368), *(v6 + 392), *(v6 + 408));
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v9 = *a2;
  v10 = *(*a2 + 392);
  *(v9 + 416) = *(v10 + 4) - *(v10 + 16);
  v11 = v10 + 4 * *(v9 + 408);
  result = *(v11 + 28) - *(v11 + 40);
  *(v9 + 420) = result;
  return result;
}

float sub_240237DF8(unsigned int a1, unsigned int a2, uint64_t *a3)
{
  v5 = *a3;
  if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
  {
    sub_240222DDC();
  }

  v6 = *(qword_280C03828 + 200);
  if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
  {
    sub_240222DDC();
  }

  v7 = *(qword_280C03828 + 204);
  v8 = *(v5 + 4 * a2);
  v9 = *(v5 + 4 * a1);
  v10 = expf(v6 * (1.0 - v7));
  v11 = expf(-(v7 * v6));
  v12 = expf(v6 * (vabds_f32(v8, v9) - v7));
  v13 = -((v10 + 1.0) * (v11 - v12)) / ((v10 - v11) * (v12 + 1.0));
  v14 = (v8 + v9) * 0.5;
  *(v5 + 4 * a1) = (v9 * v13) + ((1.0 - v13) * v14);
  result = (*(v5 + 4 * a2) * v13) + ((1.0 - v13) * v14);
  *(v5 + 4 * a2) = result;
  return result;
}

float sub_240237F64(uint64_t a1, float32x2_t *a2, float *a3, float *a4, float *a5)
{
  v10 = a2[1].f32[0] - *(a1 + 260);
  v11 = vsub_f32(*a2, *(a1 + 252));
  v12 = 1.0 / sqrtf(vaddv_f32(vmul_f32(v11, v11)) + (v10 * v10));
  v13 = vmuls_lane_f32(v12, v11, 1);
  v14 = atan2f(v12 * v11.f32[0], v10 * v12);
  v15 = asinf(v13);
  v16 = fminf(v15 * -1.637, 1.0);
  if ((v15 * -1.637) >= 0.0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  a3[4] = v17;
  v18 = v15 * 2.2918;
  v19 = fminf(v18, 1.0);
  if (v18 >= 0.0)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0.0;
  }

  a3[12] = v20;
  v21 = fminf(v14 * -1.637, 1.0);
  if ((v14 * -1.637) >= 0.0)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0.0;
  }

  a3[6] = v22;
  v23 = fminf(v14 * 1.637, 1.0);
  if ((v14 * 1.637) >= 0.0)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0.0;
  }

  a3[10] = v24;
  v25 = a2[1].f32[0] - *(a1 + 248);
  v26 = vsub_f32(*a2, *(a1 + 240));
  v27 = 1.0 / sqrtf(vaddv_f32(vmul_f32(v26, v26)) + (v25 * v25));
  v28 = vmuls_lane_f32(v27, v26, 1);
  v29 = atan2f(v27 * v26.f32[0], v25 * v27);
  v30 = asinf(v28);
  v31 = fminf(v30 * -1.637, 1.0);
  if ((v30 * -1.637) >= 0.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0.0;
  }

  a3[5] = v32;
  v33 = v30 * 2.2918;
  v34 = fminf(v33, 1.0);
  if (v33 >= 0.0)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0.0;
  }

  a3[13] = v35;
  v36 = fminf(v29 * 1.637, 1.0);
  if ((v29 * 1.637) >= 0.0)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0.0;
  }

  a3[7] = v37;
  v38 = fminf(v29 * -1.637, 1.0);
  if ((v29 * -1.637) >= 0.0)
  {
    v39 = v38;
  }

  else
  {
    v39 = 0.0;
  }

  a3[11] = v39;
  v40 = a2->f32[0] - *(a1 + 252);
  v41 = a2->f32[1] - *(a1 + 256);
  v42 = a2[1].f32[0] - *(a1 + 260);
  v43 = 1.0 / sqrtf(((v40 * v40) + (v41 * v41)) + (v42 * v42));
  v44 = v41 * v43;
  *a4 = atan2f(v40 * v43, v42 * v43);
  a4[1] = -asinf(v44);
  v45 = a2->f32[0] - *(a1 + 240);
  v46 = a2->f32[1] - *(a1 + 244);
  v47 = a2[1].f32[0] - *(a1 + 248);
  v48 = 1.0 / sqrtf(((v45 * v45) + (v46 * v46)) + (v47 * v47));
  v49 = v46 * v48;
  *a5 = atan2f(v45 * v48, v47 * v48);
  result = -asinf(v49);
  a5[1] = result;
  return result;
}

void sub_2402381E0(unsigned int *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 1) - 4 * a1[5];
  if (*(v4 + 1) - 4 * v4[5] == v5 || (v6 = *(a2 + 16), *(v6 + 8) - 4 * *(v6 + 20) == v5))
  {
    v7 = (4 * *v4 + 31) & 0x7FFFFFFE0;
    v21[1] = (v7 >> 2);
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v7, 0xE1AC2527uLL);
    v21[0] = memptr;
    v22 = **(a2 + 8);
    sub_24023839C(v21, a2);
    v8 = *a1;
    v9 = v21[0];
    if (v8)
    {
      v10 = *(a1 + 1);
      v11 = (v8 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v11 >= 0xB)
      {
        if (v10 >= (v21[0] + 4 * v8) || (v12 = v21[0], v13 = *(a1 + 1), v21[0] >= &v10->f32[v8]))
        {
          v14 = (v11 + 1) & 0x7FFFFFFFFFFFFFF8;
          v12 = (v21[0] + 4 * v14);
          v15 = v10 + 1;
          v16 = (v21[0] + 16);
          v17 = v14;
          do
          {
            v18 = vaddq_f32(*v16, *v15);
            v15[-1] = vaddq_f32(v16[-1], v15[-1]);
            *v15 = v18;
            v15 += 2;
            v16 += 2;
            v17 -= 8;
          }

          while (v17);
          if (v11 + 1 == v14)
          {
            goto LABEL_17;
          }

          v13 = &v10->f32[v14];
        }
      }

      else
      {
        v12 = v21[0];
        v13 = *(a1 + 1);
      }

      v19 = &v10->f32[v8];
      do
      {
        v20 = *v12++;
        *v13 = v20 + *v13;
        ++v13;
      }

      while (v13 != v19);
    }

LABEL_17:
    free(v9);
    return;
  }

  if (v4[1] * *v4)
  {
    if (*v6)
    {
      cva::VecLib<float>::gemm();
    }
  }
}

void sub_24023839C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  if ((*(v4 + 1) - 4 * v4[5]) == v5 || (v6 = *(a2 + 16), (*(v6 + 8) - 4 * *(v6 + 20)) == v5))
  {
    v7 = (4 * *v4 + 31) & 0x7FFFFFFE0;
    v12 = v7 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v7, 0xE1AC2527uLL);
    v11 = memptr;
    v13 = **(a2 + 8);
    sub_24023839C(&v11, a2);
    v8 = *a1;
    v9 = v12;
    *a1 = v11;
    *(a1 + 8) = v9;
    *(a1 + 16) = v13;
    free(v8);
  }

  else
  {
    if (v4[1] * *v4 && *v6)
    {
      cva::VecLib<float>::gemm();
    }

    v10 = *(a1 + 16);
    if (v10)
    {

      bzero(v5, 4 * v10);
    }
  }
}

uint64_t *sub_2402384D8(uint64_t *a1)
{
  (*(**(*a1 + 392) + 24))(*(*a1 + 392));
  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v2 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 0;
    _os_log_impl(&dword_2401B8000, v2, OS_LOG_TYPE_DEFAULT, "~FaceKitLiteScheduler", v8, 2u);
  }

  v3 = *a1;
  if (*a1)
  {
    if (*(v3 + 440) == 1)
    {
      v4 = *(v3 + 424);
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
        }
      }
    }

    sub_240207570((v3 + 408));
    v5 = *(v3 + 400);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = sub_240236180(v3);
    MEMORY[0x245CBCA30](v6, 0x10E2C4027D66A5DLL);
  }

  return a1;
}

void sub_2402386B0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285228108;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_240238724(uint64_t a1, _OWORD *a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, float a9, float a10, void *a11, void *a12)
{
  v17 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v17;
  v18 = *a3;
  v19 = a3[1];
  *(a1 + 64) = *(a3 + 8);
  *(a1 + 32) = v18;
  *(a1 + 48) = v19;
  v20 = *(a3 + 36);
  *(a1 + 76) = *(a3 + 11);
  *(a1 + 68) = v20;
  v21 = *a4;
  v22 = a4[1];
  *(a1 + 112) = *(a4 + 8);
  *(a1 + 80) = v21;
  *(a1 + 96) = v22;
  v23 = *(a4 + 36);
  *(a1 + 124) = *(a4 + 11);
  *(a1 + 116) = v23;
  *(a1 + 128) = a9;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 136) = *a5;
  *a5 = 0;
  *(a1 + 144) = *(a5 + 8);
  *(a5 + 8) = 0;
  *(a1 + 152) = *(a5 + 16);
  *(a5 + 16) = 0;
  v24 = *(a6 + 16);
  v25 = (4 * v24 + 31) & 0x7FFFFFFE0;
  *(a1 + 160) = 0;
  *(a1 + 168) = v25 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v25, 0xE1AC2527uLL);
  v26 = memptr;
  *(a1 + 160) = memptr;
  if (v24)
  {
    memcpy(v26, *a6, 4 * v24);
  }

  *(a1 + 176) = *(a6 + 16);
  v27 = *(a7 + 16);
  v28 = (4 * v27 + 31) & 0x7FFFFFFE0;
  *(a1 + 184) = 0;
  *(a1 + 192) = v28 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v28, 0xE1AC2527uLL);
  v29 = memptr;
  *(a1 + 184) = memptr;
  if (v27)
  {
    memcpy(v29, *a7, 4 * v27);
  }

  *(a1 + 200) = *(a7 + 16);
  v30 = *a8;
  *(a1 + 216) = *(a8 + 2);
  *(a1 + 208) = v30;
  *(a1 + 220) = *a11;
  *(a1 + 228) = *a12;
  *(a1 + 236) = a10;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  return a1;
}

BOOL sub_2402388C0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return 1;
  }

  v3 = *(a2 + 44);
  return v3 < *(a1 + 12) || v3 > *(a1 + 16);
}

uint64_t sub_2402388F8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  v143 = *MEMORY[0x277D85DE8];
  if (*(a7 + 208))
  {
    v14 = *(a7 + 136);
    v15 = *(a7 + 144);
    v16 = *(a7 + 152);
    v17 = *(a7 + 120);
    *(a7 + 136) = *(a7 + 112);
    *(a7 + 144) = v17;
    *(a7 + 152) = *(a7 + 128);
    *(a7 + 112) = v14;
    *(a7 + 120) = v15;
    *(a7 + 128) = v16;
  }

  else
  {
    v18 = *(a7 + 128);
    if (v18)
    {
      memset_pattern16(*(a7 + 112), &unk_240270D10, 4 * v18);
    }
  }

  v19 = (*(*a1 + 56))(a1, a6);
  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v20 = qword_280C03978;
  v21 = os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_DEBUG);
  v132 = v19;
  if (v19)
  {
    if (v21)
    {
      LOWORD(memptr[0]) = 0;
      _os_log_debug_impl(&dword_2401B8000, v20, OS_LOG_TYPE_DEBUG, "Using RGB", memptr, 2u);
    }

    v22 = 5;
  }

  else
  {
    if (v21)
    {
      LOWORD(memptr[0]) = 0;
      _os_log_debug_impl(&dword_2401B8000, v20, OS_LOG_TYPE_DEBUG, "Using RGB + DEPTH", memptr, 2u);
    }

    v22 = 6;
  }

  v23 = a1[v22];
  v24 = *(v23 + 8);
  v131 = (a7 + 8);
  if (0xCCCCCCCCCCCCCCCDLL * ((*(v24 + 16) - *(v24 + 8)) >> 3) != (*(a7 + 16) - *(a7 + 8)) >> 3)
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v128 = a2;
    v27 = qword_280C03978;
    if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_DEBUG))
    {
      v127 = "rgbd";
      if (v132)
      {
        v127 = "rgb only";
      }

      LODWORD(memptr[0]) = 136315138;
      *(memptr + 4) = v127;
      _os_log_debug_impl(&dword_2401B8000, v27, OS_LOG_TYPE_DEBUG, "Switching setup for using %s regressor.", memptr, 0xCu);
    }

    v28 = 0xCCCCCCCCCCCCCCCDLL * ((*(v24 + 16) - *(v24 + 8)) >> 3);
    v29 = *(a7 + 8);
    v30 = *(a7 + 16);
    v31 = (v30 - v29) >> 3;
    v32 = v28 - v31;
    if (v28 <= v31)
    {
      a2 = v128;
      if (v28 < v31)
      {
        *(a7 + 16) = v29 + 0x6666666666666668 * ((*(v24 + 16) - *(v24 + 8)) >> 3);
      }
    }

    else
    {
      v33 = *(a7 + 24);
      if (v32 > (v33 - v30) >> 3)
      {
        if (!(v28 >> 61))
        {
          v34 = v33 - v29;
          if (v34 >> 2 > v28)
          {
            v28 = v34 >> 2;
          }

          if (v34 >= 0x7FFFFFFFFFFFFFF8)
          {
            v28 = 0x1FFFFFFFFFFFFFFFLL;
          }

          if (!(v28 >> 61))
          {
            operator new();
          }

          sub_2401BDE28();
        }

        sub_2401BDE28();
      }

      bzero(*(a7 + 16), 8 * v32);
      *(a7 + 16) = v30 + 8 * v32;
      a2 = v128;
    }
  }

  v25 = sub_2401FD48C(*(v23 + 16), "network_inputs_image_2_0_bridge");
  if (v25)
  {
    v26 = *(v25 + 6);
  }

  else
  {
    v26 = -1;
  }

  v35 = *(v24 + 8) + 40 * v26;
  v36 = *(v35 + 32);
  v37 = *(v35 + 36);
  memcpy(*(a7 + 56), *a4, 4 * *(a4 + 16));
  v39 = *(a7 + 56);
  if (v37 >= 1 && v36 >= 1)
  {
    v38.i32[0] = *a5;
    v41 = *(a5 + 4);
    v42 = (v39 + 4 * *(a4 + 16));
    v43 = v37 & 0x7FFFFFF8;
    v44 = 4 * v43;
    v45 = 1.0 / a8;
    if (v37 > 7)
    {
      v46 = vdupq_lane_s32(v38, 0);
      if (v43 == v37)
      {
        v54 = 0;
        v55 = (v42 + 4);
        v56.i64[0] = 0x400000004;
        v56.i64[1] = 0x400000004;
        v57.i64[0] = 0x800000008;
        v57.i64[1] = 0x800000008;
        do
        {
          v58 = v55;
          v59 = v37;
          v60 = xmmword_240270930;
          do
          {
            v58[-1] = vmulq_n_f32(vsubq_f32(vcvtq_f32_u32(v60), v46), v45);
            *v58 = vmulq_n_f32(vsubq_f32(vcvtq_f32_u32(vaddq_s32(v60, v56)), v46), v45);
            v60 = vaddq_s32(v60, v57);
            v58 += 2;
            v59 -= 8;
          }

          while (v59);
          v42 = (v42 + v44);
          ++v54;
          v55 = (v55 + v44);
        }

        while (v54 != v36);
      }

      else
      {
        v61 = 0;
        v62.i64[0] = 0x400000004;
        v62.i64[1] = 0x400000004;
        v63.i64[0] = 0x800000008;
        v63.i64[1] = 0x800000008;
        do
        {
          v64 = (v42 + 4);
          v65 = v37 & 0x7FFFFFF8;
          v66 = xmmword_240270930;
          do
          {
            v64[-1] = vmulq_n_f32(vsubq_f32(vcvtq_f32_u32(v66), v46), v45);
            *v64 = vmulq_n_f32(vsubq_f32(vcvtq_f32_u32(vaddq_s32(v66, v62)), v46), v45);
            v66 = vaddq_s32(v66, v63);
            v64 += 2;
            v65 -= 8;
          }

          while (v65);
          v42 = (v42 + v44);
          v67 = v37 & 0x7FFFFFF8;
          do
          {
            *v42++ = v45 * (v67++ - *v38.i32);
          }

          while (v37 != v67);
          ++v61;
        }

        while (v61 != v36);
      }
    }

    else
    {
      v46.i32[1] = 0;
      v46.f32[0] = v45 * (0.0 - *v38.i32);
      v47 = v45 * (1.0 - *v38.i32);
      v48 = v45 * (2.0 - *v38.i32);
      v49 = v45 * (3.0 - *v38.i32);
      v50 = v45 * (4.0 - *v38.i32);
      v51 = v45 * (5.0 - *v38.i32);
      v52 = v45 * (6.0 - *v38.i32);
      v53 = v36;
      do
      {
        *v42 = v46.f32[0];
        if (v37 == 1)
        {
          ++v42;
        }

        else
        {
          v42[1] = v47;
          if (v37 == 2)
          {
            v42 += 2;
          }

          else
          {
            v42[2] = v48;
            if (v37 == 3)
            {
              v42 += 3;
            }

            else
            {
              v42[3] = v49;
              if (v37 == 4)
              {
                v42 += 4;
              }

              else
              {
                v42[4] = v50;
                if (v37 == 5)
                {
                  v42 += 5;
                }

                else
                {
                  v42[5] = v51;
                  if (v37 == 6)
                  {
                    v42 += 6;
                  }

                  else
                  {
                    v42[6] = v52;
                    v42 += 7;
                  }
                }
              }
            }
          }
        }

        --v53;
      }

      while (v53);
    }

    if (v37 > 7)
    {
      if (v43 == v37)
      {
        v70 = 0;
        v71 = v42 + 4;
        do
        {
          v46.f32[0] = v45 * (v70 - v41);
          v46 = vdupq_lane_s32(*v46.f32, 0);
          v72 = v71;
          v73 = v37;
          do
          {
            v72[-1] = v46;
            *v72 = v46;
            v72 += 2;
            v73 -= 8;
          }

          while (v73);
          ++v70;
          v71 = (v71 + v44);
        }

        while (v70 != v36);
      }

      else
      {
        v74 = 0;
        do
        {
          v46.f32[0] = v45 * (v74 - v41);
          v75 = vdupq_lane_s32(*v46.f32, 0);
          v76 = (v42 + 4);
          v77 = v37 & 0x7FFFFFF8;
          do
          {
            v76[-1] = v75;
            *v76 = v75;
            v76 += 2;
            v77 -= 8;
          }

          while (v77);
          v42 = (v42 + v44);
          v78 = v37 - v43;
          do
          {
            *v42++ = v46.f32[0];
            --v78;
          }

          while (v78);
          ++v74;
        }

        while (v74 != v36);
      }
    }

    else
    {
      v68 = 0;
      do
      {
        v69 = v37;
        do
        {
          *v42++ = v45 * (v68 - v41);
          --v69;
        }

        while (v69);
        ++v68;
      }

      while (v68 != v36);
    }
  }

  v79 = *v131;
  *(*v131 + 8 * v26) = v39;
  if ((v132 & 1) == 0)
  {
    v80 = a2;
    v81 = sub_2401FD48C(*(v23 + 16), "network_inputs_depth_images_rays_0_bridge");
    if (v81)
    {
      v82 = *(v81 + 6);
    }

    else
    {
      v82 = -1;
    }

    v83 = *(a3 + 12) * *(a3 + 8);
    memcpy(*(a7 + 80), *(a3 + 24), 4 * v83);
    memcpy((*(a7 + 80) + 4 * v83), (*(a7 + 56) + 4 * v83), 8 * v83);
    v79 = *(a7 + 8);
    *(v79 + 8 * v82) = *(a7 + 80);
    a2 = v80;
  }

  v84 = *(v23 + 16);
  v85 = sub_2401FD48C(v84, "network_inputs_reshape_0_bridge");
  if (v85)
  {
    v86 = *(v85 + 6);
  }

  else
  {
    v86 = -1;
  }

  *(v79 + 8 * v86) = *a2;
  v87 = sub_2401FD48C(v84, "network_inputs_reshape_1_0_bridge");
  if (v87)
  {
    v88 = *(v87 + 6);
  }

  else
  {
    v88 = -1;
  }

  v139 = 0;
  v137 = 0u;
  v138 = 0u;
  if (&v137 == a6)
  {
    v97 = 0;
    v98 = 0;
    v99 = *(a6 + 16);
    v100 = vtrn2q_s32(vextq_s8(v99, *a6, 4uLL), *a6);
    v101 = vtrn2q_s32(vextq_s8(*a6, v99, 4uLL), v99);
    *memptr = vextq_s8(v100, v100, 8uLL);
    v141 = vextq_s8(v101, v101, 8uLL);
    v142 = *(a6 + 32);
    v102 = memptr;
    do
    {
      v103 = *v102;
      v102 = (v102 + 4);
      *(&v137 + v97) = v103;
      v104 = v98 < 2;
      v105 = (v98 >> 30) & 0x3FFFFFFFCLL;
      if (v98 < 2)
      {
        v105 = 0;
      }

      v106 = v97 + v105;
      v107 = (v98 + 1);
      v108 = v98 & 0xFFFFFFFF00000000;
      if (!v104)
      {
        v107 = 0;
      }

      v98 = v107 | v108;
      v97 = v106 + 4;
    }

    while (v97 != 36);
  }

  else
  {
    v89 = 0;
    v90 = 0;
    v91 = 0;
    do
    {
      *(&v137 + v89) = *(a6 + 4 * (3 * v91 + HIDWORD(v91)));
      if (v91 >= 2)
      {
        v91 = (v91 & 0xFFFFFFFF00000000) + 0x100000000;
      }

      else
      {
        v91 = (v91 + 1) | v91 & 0xFFFFFFFF00000000;
      }

      v92 = v90 < 2;
      v93 = (v90 >> 30) & 0x3FFFFFFFCLL;
      if (v90 < 2)
      {
        v93 = 0;
      }

      v94 = v89 + v93;
      v95 = (v90 + 1);
      v96 = v90 & 0xFFFFFFFF00000000;
      if (!v92)
      {
        v95 = 0;
      }

      v90 = v95 | v96;
      v89 = v94 + 4;
    }

    while (v89 != 36);
  }

  *(v79 + 8 * v88) = &v137;
  v109 = sub_2401FD48C(v84, "network_inputs_latents_input_0_bridge");
  if (v109)
  {
    v110 = *(v109 + 6);
  }

  else
  {
    v110 = -1;
  }

  *(v79 + 8 * v110) = *(a7 + 112);
  v111 = *(v23 + 24);
  v112 = sub_2401FD48C(v111, "latents_output");
  if (v112)
  {
    v113 = *(v112 + 6);
  }

  else
  {
    v113 = -1;
  }

  v114 = *(a7 + 32);
  *(v114 + 8 * v113) = *(a7 + 136);
  v115 = sub_2401FD48C(v111, "neutral_pca_subset_coeffs_output");
  if (v115)
  {
    v116 = *(v115 + 6);
  }

  else
  {
    v116 = -1;
  }

  *(v114 + 8 * v116) = *(a7 + 160);
  os_unfair_lock_lock(v23);
  (*(**(v23 + 8) + 16))(*(v23 + 8), v131, a7 + 32, 0);
  os_unfair_lock_unlock(v23);
  v117 = a1[3];
  v118 = *(a7 + 176);
  v119 = *(v117 + 136);
  v120 = *(v117 + 120);
  v133[0] = v119;
  v133[1] = v118;
  v134 = v120;
  v135 = v119;
  v136 = 0;
  if (v119 != *(a7 + 200))
  {
    v121 = *(a7 + 184);
    if (v120 == v121 || *(a7 + 160) == v121)
    {
      v123 = (4 * v119 + 31) & 0x7FFFFFFE0;
      *(&v137 + 1) = v123 >> 2;
      memptr[0] = 0;
      malloc_type_posix_memalign(memptr, 0x20uLL, v123, 0xE1AC2527uLL);
      *&v137 = memptr[0];
      LODWORD(v138) = v133[0];
      memptr[1] = v133;
      v141.i64[0] = a7 + 160;
      v141.i32[2] = 1065353216;
      sub_2402393DC(&v137, memptr);
      v124 = *(a7 + 184);
      v125 = *(&v137 + 1);
      *(a7 + 184) = v137;
      *(a7 + 192) = v125;
      *(a7 + 200) = v138;
      free(v124);
      goto LABEL_126;
    }

    *(a7 + 200) = v119;
    if (v119)
    {
      if (*(a7 + 192) < v119)
      {
        free(v121);
        v122 = (4 * v119 + 31) & 0x7FFFFFFE0;
        *(a7 + 184) = 0;
        *(a7 + 192) = v122 >> 2;
        memptr[0] = 0;
        malloc_type_posix_memalign(memptr, 0x20uLL, v122, 0xE1AC2527uLL);
        *(a7 + 184) = memptr[0];
      }
    }

    else
    {
      free(v121);
      *(a7 + 184) = 0;
      *(a7 + 192) = 0;
    }
  }

  memptr[1] = v133;
  v141.i64[0] = a7 + 160;
  v141.i32[2] = 1065353216;
  sub_2402393DC(a7 + 184, memptr);
LABEL_126:
  ++*(a7 + 208);
  return 1;
}

void sub_2402393DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  if ((*(v4 + 1) - 4 * v4[5]) == v5 || (v6 = *(a2 + 16), *v6 == v5))
  {
    v7 = (4 * *v4 + 31) & 0x7FFFFFFE0;
    v12 = v7 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v7, 0xE1AC2527uLL);
    v11 = memptr;
    v13 = **(a2 + 8);
    sub_2402393DC(&v11, a2);
    v8 = *a1;
    v9 = v12;
    *a1 = v11;
    *(a1 + 8) = v9;
    *(a1 + 16) = v13;
    free(v8);
  }

  else
  {
    if (v4[1] * *v4 && *(v6 + 16))
    {
      cva::VecLib<float>::gemm();
    }

    v10 = *(a1 + 16);
    if (v10)
    {

      bzero(v5, 4 * v10);
    }
  }
}

void sub_24023950C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a2 + 136);
  v6 = a3 + 8;
  if (a3 + 8 != a2 + 136)
  {
    v7 = *(a2 + 152);
    if (v7)
    {
      v8 = *(a3 + 8);
      if (*(a3 + 16) >= v7)
      {
        v9 = 4 * v7;
      }

      else
      {
        free(v8);
        v9 = 4 * v7;
        v10 = (v9 + 31) & 0x7FFFFFFE0;
        *(a3 + 8) = 0;
        *(a3 + 16) = v10 >> 2;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v10, 0xE1AC2527uLL);
        v8 = memptr;
        *(a3 + 8) = memptr;
      }

      memcpy(v8, *v5, v9);
    }

    else
    {
      free(*v6);
      *v6 = 0;
      *(v6 + 8) = 0;
    }

    *(a3 + 24) = *(a2 + 152);
  }

  v11 = (a3 + 32);
  if (a3 + 32 != a2 + 184)
  {
    v12 = *(a2 + 200);
    if (v12)
    {
      v13 = *(a3 + 32);
      if (*(a3 + 40) >= v12)
      {
        v14 = 4 * v12;
      }

      else
      {
        free(v13);
        v14 = 4 * v12;
        v15 = (v14 + 31) & 0x7FFFFFFE0;
        *(a3 + 32) = 0;
        *(a3 + 40) = v15 >> 2;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v15, 0xE1AC2527uLL);
        v13 = memptr;
        *(a3 + 32) = memptr;
      }

      memcpy(v13, *(a2 + 184), v14);
    }

    else
    {
      free(*v11);
      *v11 = 0;
      *(a3 + 40) = 0;
    }

    *(a3 + 48) = *(a2 + 200);
  }

  *(a3 + 56) = *(a2 + 208);
}

void sub_240239660(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  (*(*a1 + 16))(a1);
  v5 = *a3;
  v6 = *a3 + 136;
  if (v6 != a2 + 8)
  {
    v7 = *(a2 + 24);
    if (v7)
    {
      v8 = *(v5 + 136);
      if (*(v5 + 144) >= v7)
      {
        v9 = 4 * v7;
      }

      else
      {
        free(v8);
        v9 = 4 * v7;
        v10 = (v9 + 31) & 0x7FFFFFFE0;
        *(v5 + 136) = 0;
        *(v5 + 144) = v10 >> 2;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v10, 0xE1AC2527uLL);
        v8 = memptr;
        *(v5 + 136) = memptr;
      }

      memcpy(v8, *(a2 + 8), v9);
    }

    else
    {
      free(*v6);
      *v6 = 0;
      *(v6 + 8) = 0;
    }

    *(v5 + 152) = *(a2 + 24);
  }

  v11 = (v5 + 184);
  if (v5 + 184 != a2 + 32)
  {
    v12 = *(a2 + 48);
    if (v12)
    {
      v13 = *(v5 + 184);
      if (*(v5 + 192) >= v12)
      {
        v14 = 4 * v12;
      }

      else
      {
        free(v13);
        v14 = 4 * v12;
        v15 = (v14 + 31) & 0x7FFFFFFE0;
        *(v5 + 184) = 0;
        *(v5 + 192) = v15 >> 2;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v15, 0xE1AC2527uLL);
        v13 = memptr;
        *(v5 + 184) = memptr;
      }

      memcpy(v13, *(a2 + 32), v14);
    }

    else
    {
      free(*v11);
      *v11 = 0;
      *(v5 + 192) = 0;
    }

    *(v5 + 200) = *(a2 + 48);
  }

  *(v5 + 208) = *(a2 + 56);
}

void sub_24023992C(uint64_t a1)
{
  *a1 = &unk_285227800;
  free(*(a1 + 32));
  free(*(a1 + 8));

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_24023999C(uint64_t a1)
{
  *a1 = &unk_285227800;
  free(*(a1 + 32));
  free(*(a1 + 8));
  return a1;
}

void sub_240239E40(uint64_t a1)
{
  sub_240239E78(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_240239E78(uint64_t a1)
{
  *a1 = &unk_2852277C8;
  free(*(a1 + 184));
  free(*(a1 + 160));
  free(*(a1 + 136));
  free(*(a1 + 112));
  if (*(a1 + 104) == 1)
  {
    free(*(a1 + 80));
  }

  free(*(a1 + 56));
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    *(a1 + 16) = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_240239F14(void *a1)
{
  sub_240239F4C(a1);

  JUMPOUT(0x245CBCA30);
}

void *sub_240239F4C(void *a1)
{
  *a1 = &unk_285227720;
  v2 = a1[6];
  a1[6] = 0;
  if (v2)
  {
    v3 = sub_24023A014(v2);
    MEMORY[0x245CBCA30](v3, 0x1060C403EFC8172);
  }

  v4 = a1[5];
  a1[5] = 0;
  if (v4)
  {
    v5 = sub_24023A014(v4);
    MEMORY[0x245CBCA30](v5, 0x1060C403EFC8172);
  }

  v6 = a1[4];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void *sub_24023A014(void *a1)
{
  v2 = a1[3];
  a1[3] = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *v2;
    *v2 = 0;
    if (v5)
    {
      operator delete(v5);
    }

    MEMORY[0x245CBCA30](v2, 0x10A0C408EF24B1CLL);
  }

  v6 = a1[2];
  a1[2] = 0;
  if (v6)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      do
      {
        v8 = *v7;
        operator delete(v7);
        v7 = v8;
      }

      while (v8);
    }

    v9 = *v6;
    *v6 = 0;
    if (v9)
    {
      operator delete(v9);
    }

    MEMORY[0x245CBCA30](v6, 0x10A0C408EF24B1CLL);
  }

  v10 = a1[1];
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  return a1;
}

uint64_t sub_24023A100(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a6;
  kdebug_trace();
  if (a3[2] == 1)
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v10 = qword_280C03978;
    if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2401B8000, v10, OS_LOG_TYPE_INFO, "Loading MultiFrame IdentityNet on CPU.", buf, 2u);
    }

    v29 = 0;
  }

  else
  {
    v11 = MGGetBoolAnswer();
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v12 = qword_280C03978;
    v13 = os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&dword_2401B8000, v12, OS_LOG_TYPE_INFO, "Loading MultiFrame IdentityNet on ANE.", buf, 2u);
      }

      v14 = 2;
    }

    else
    {
      if (v13)
      {
        *buf = 0;
        _os_log_impl(&dword_2401B8000, v12, OS_LOG_TYPE_INFO, "Loading MultiFrame IdentityNet on GPU.", buf, 2u);
      }

      v14 = 1;
    }

    v29 = v14;
  }

  LOBYTE(v27) = 0;
  v28 = 0;
  if (*(a5 + 8) == 1)
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v15 = qword_280C03978;
    if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v15, OS_LOG_TYPE_ERROR, "Failed to initialize the surfaces for IdentityFittingMultiFrame.", buf, 2u);
    }

    goto LABEL_22;
  }

  *buf = a3;
  v23 = a4;
  v24 = &v27;
  v25 = &v30;
  v26 = &v29;
  sub_24023A570(&v21, buf, 1, &off_278C9E4C8);
  v16 = v21;
  if (!v21)
  {
LABEL_22:
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_23;
  }

  if ((*a3 & 1) != 0 || (sub_24023A570(&v20, buf, 0, &off_278C9E4E8), v20))
  {
    operator new();
  }

  *a1 = 0;
  a1[1] = 0;
  v19 = sub_24023A014(v16);
  MEMORY[0x245CBCA30](v19, 0x1060C403EFC8172);
LABEL_23:
  if (v28 == 1)
  {
    v17 = v27;
    v27 = 0;
    if (v17)
    {
      MEMORY[0x245CBCA30](v17, 0xC400A2AC0F1);
    }
  }

  return kdebug_trace();
}

uint64_t sub_24023A570(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  if (a3)
  {
    v8 = "RGB";
  }

  else
  {
    v8 = "RGBD";
  }

  if (*(*a2 + 52))
  {
    if (a3)
    {
      v9 = "id_fitting_multiframe_rgb_only";
    }

    else
    {
      v9 = "id_fitting_multiframe_rgbd";
    }

    sub_240220374(&v27, *(a2 + 8), **(a2 + 32), v9, "");
    if (v27)
    {
      if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
      {
        qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
        __cxa_guard_release(&qword_280C03A00);
      }

      v10 = qword_280C03978;
      if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v29 = v8;
        _os_log_impl(&dword_2401B8000, v10, OS_LOG_TYPE_INFO, "%s regressor created.", buf, 0xCu);
      }

      v11 = v27;
      sub_240253A70(&v26, v27 + 1, a4);
      if (v26)
      {
        sub_240253A70(&v25, v11 + 4, &off_278C9E4D8);
        if (v25)
        {
          operator new();
        }

        if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
        {
          qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
          __cxa_guard_release(&qword_280C03A00);
        }

        v15 = qword_280C03978;
        if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v29 = v8;
          _os_log_error_impl(&dword_2401B8000, v15, OS_LOG_TYPE_ERROR, "Failed to map output node names to the %s regressor's output nodes.", buf, 0xCu);
        }

        *a1 = 0;
        v16 = v25;
        if (v25)
        {
          v17 = *(v25 + 16);
          if (v17)
          {
            do
            {
              v18 = *v17;
              operator delete(v17);
              v17 = v18;
            }

            while (v18);
          }

          v19 = *v16;
          *v16 = 0;
          if (v19)
          {
            operator delete(v19);
          }

          MEMORY[0x245CBCA30](v16, 0x10A0C408EF24B1CLL);
        }
      }

      else
      {
        if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
        {
          qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
          __cxa_guard_release(&qword_280C03A00);
        }

        v14 = qword_280C03978;
        if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v29 = v8;
          _os_log_error_impl(&dword_2401B8000, v14, OS_LOG_TYPE_ERROR, "Failed to map input node names to the %s regressor's input nodes.", buf, 0xCu);
        }

        *a1 = 0;
      }

      v20 = v26;
      if (v26)
      {
        v21 = *(v26 + 16);
        if (v21)
        {
          do
          {
            v22 = *v21;
            operator delete(v21);
            v21 = v22;
          }

          while (v22);
        }

        v23 = *v20;
        *v20 = 0;
        if (v23)
        {
          operator delete(v23);
        }

        MEMORY[0x245CBCA30](v20, 0x10A0C408EF24B1CLL);
      }

      goto LABEL_42;
    }
  }

  else
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v12 = qword_280C03978;
    if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v12, OS_LOG_TYPE_ERROR, "Invalid depth source", buf, 2u);
    }

    v27 = 0;
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v13 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v29 = v8;
    _os_log_error_impl(&dword_2401B8000, v13, OS_LOG_TYPE_ERROR, "Failed to initialize %s regressor for IdentityFittingMultiFrame.", buf, 0xCu);
  }

  *a1 = 0;
LABEL_42:
  if (v27)
  {
    (*(*v27 + 8))(v27);
  }

  return kdebug_trace();
}

uint64_t sub_24023AAA8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_24023AAD8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

const void **sub_24023AB14(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_2401BDE28();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

void *sub_24023ACA8(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_2401BDE28();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

const void **sub_24023AE30(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      v9 = (v7 - v4) >> 2;
      if (v7 == v4)
      {
        v9 = 1;
      }

      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_2401BDE28();
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v5 - 8;
  return result;
}

void *sub_24023AFC4(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_2401BDE28();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

void sub_24023B17C(uint64_t a1, uint64_t ***a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      v4 = **v2;
      v5 = *(v4 + 24);
      v6 = *(v4 + 32);
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v7 = *(*v5 + 16);
        if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          if ((v7 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
          if ((v7 & 1) == 0)
          {
LABEL_12:
            v8 = **v2;
            v9 = *(v8 + 24);
            v10 = *(v8 + 32);
            if (v10)
            {
              atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_2401F6D50(v9);
              if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v10->__on_zero_shared)(v10);
                std::__shared_weak_count::__release_weak(v10);
              }
            }

            else
            {
              sub_2401F6D50(v9);
            }
          }
        }
      }

      else if ((*(*v5 + 16) & 1) == 0)
      {
        goto LABEL_12;
      }

      v2 += 2;
    }

    while (v2 != v3);
  }
}

uint64_t sub_24023B2BC(uint64_t a1)
{
  sub_24023B74C(a1 + 536);
  sub_24023B74C(a1 + 480);
  sub_24023B818(a1 + 424);
  v2 = *(a1 + 408);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 392);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  free(*(a1 + 360));
  free(*(a1 + 288));
  free(*(a1 + 264));
  sub_24023B818(a1 + 216);
  v4 = *(a1 + 184);
  if (v4)
  {
    *(a1 + 192) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 144);
  v6 = *(a1 + 152);
  *(a1 + 176) = 0;
  v7 = v6 - v5;
  if (v7 >= 3)
  {
    do
    {
      operator delete(*v5);
      v6 = *(a1 + 152);
      v5 = (*(a1 + 144) + 8);
      *(a1 + 144) = v5;
      v7 = v6 - v5;
    }

    while (v7 > 2);
  }

  if (v7 == 1)
  {
    v8 = 56;
    goto LABEL_15;
  }

  if (v7 == 2)
  {
    v8 = 113;
LABEL_15:
    *(a1 + 168) = v8;
  }

  if (v5 != v6)
  {
    do
    {
      v9 = *v5++;
      operator delete(v9);
    }

    while (v5 != v6);
    v11 = *(a1 + 144);
    v10 = *(a1 + 152);
    if (v10 != v11)
    {
      *(a1 + 152) = v10 + ((v11 - v10 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v12 = *(a1 + 136);
  if (v12)
  {
    operator delete(v12);
  }

  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  *(a1 + 104) = 0;
  v15 = v14 - v13;
  if (v15 >= 3)
  {
    do
    {
      operator delete(*v13);
      v14 = *(a1 + 80);
      v13 = (*(a1 + 72) + 8);
      *(a1 + 72) = v13;
      v15 = v14 - v13;
    }

    while (v15 > 2);
  }

  if (v15 == 1)
  {
    v16 = 512;
    goto LABEL_28;
  }

  if (v15 == 2)
  {
    v16 = 1024;
LABEL_28:
    *(a1 + 96) = v16;
  }

  if (v13 != v14)
  {
    do
    {
      v17 = *v13++;
      operator delete(v17);
    }

    while (v13 != v14);
    v19 = *(a1 + 72);
    v18 = *(a1 + 80);
    if (v18 != v19)
    {
      *(a1 + 80) = v18 + ((v19 - v18 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v20 = *(a1 + 64);
  if (v20)
  {
    operator delete(v20);
  }

  v21 = *(a1 + 16);
  v22 = *(a1 + 24);
  *(a1 + 48) = 0;
  v23 = v22 - v21;
  if (v23 >= 3)
  {
    do
    {
      operator delete(*v21);
      v22 = *(a1 + 24);
      v21 = (*(a1 + 16) + 8);
      *(a1 + 16) = v21;
      v23 = v22 - v21;
    }

    while (v23 > 2);
  }

  if (v23 == 1)
  {
    v24 = 128;
    goto LABEL_41;
  }

  if (v23 == 2)
  {
    v24 = 256;
LABEL_41:
    *(a1 + 40) = v24;
  }

  if (v21 != v22)
  {
    do
    {
      v25 = *v21++;
      operator delete(v25);
    }

    while (v21 != v22);
    v27 = *(a1 + 16);
    v26 = *(a1 + 24);
    if (v26 != v27)
    {
      *(a1 + 24) = v26 + ((v27 - v26 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v28 = *(a1 + 8);
  if (v28)
  {
    operator delete(v28);
  }

  return a1;
}

void sub_24023B5A0(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 != v2)
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 >> 7];
    v7 = *v6 + 32 * (v5 & 0x7F);
    v8 = *(v2 + (((a1[5] + v5) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v5) & 0x7F);
    if (v7 == v8)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v9 = *(v7 + 24);
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        v10 = *(v7 + 8);
        if (v10)
        {
LABEL_8:
          if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v10->__on_zero_shared)(v10);
            std::__shared_weak_count::__release_weak(v10);
          }
        }
      }

      else
      {
        v10 = *(v7 + 8);
        if (v10)
        {
          goto LABEL_8;
        }
      }

      v7 += 32;
      if (v7 - *v6 == 4096)
      {
        v11 = v6[1];
        ++v6;
        v7 = v11;
      }

      if (v7 == v8)
      {
        v2 = a1[1];
        v3 = a1[2];
        goto LABEL_15;
      }
    }
  }

  v4 = a1 + 5;
  v3 = a1[1];
LABEL_15:
  *v4 = 0;
  v12 = v3 - v2;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v2);
      v13 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v12 = (v13 - v2) >> 3;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v14 = 64;
  }

  else
  {
    if (v12 != 2)
    {
      return;
    }

    v14 = 128;
  }

  a1[4] = v14;
}

uint64_t sub_24023B74C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 1024;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_24023B818(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 170;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 341;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_24023B8E4(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *a1;
  v5 = *(*a1 + 32);
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *a1;
  *(v6 + 72) = 0u;
  *(v6 + 56) = 0u;
  *(v6 + 40) = 0u;
  sub_24023B5A0((*a1 + 88));
  v7 = *a1;
  result = *(*a1 + 152);
  *(*a1 + 152) = 0;
  if (result)
  {
    v9 = sub_24023B2BC(result);
    result = MEMORY[0x245CBCA30](v9, 0x10E0C4016A603E8);
    v7 = *a1;
  }

  if (*(v7 + 164) == 1)
  {
    *(v7 + 164) = 0;
  }

  return result;
}

void sub_24023BA04(void *a1)
{
  v2 = a1[14];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[12];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[10];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    free(v5);
    a1[8] = 0;
  }
}

void sub_24023BB0C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226C48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_24023BB84(uint64_t a1)
{
  std::mutex::~mutex((a1 + 1088));
  free(*(a1 + 1064));
  v2 = *(a1 + 1056);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  std::mutex::~mutex((a1 + 976));
  std::mutex::~mutex((a1 + 912));
  free(*(a1 + 824));
  free(*(a1 + 800));
  free(*(a1 + 776));
  v3 = *(a1 + 768);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  free(*(a1 + 680));
  free(*(a1 + 656));
  free(*(a1 + 632));
  v4 = *(a1 + 624);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  free(*(a1 + 536));
  free(*(a1 + 512));
  free(*(a1 + 488));
  v5 = *(a1 + 480);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  free(*(a1 + 392));
  free(*(a1 + 368));
  free(*(a1 + 344));
  v6 = *(a1 + 336);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  std::mutex::~mutex((a1 + 264));
  free(*(a1 + 240));
  free(*(a1 + 152));
  v7 = *(a1 + 136);
  if (v7)
  {
    free(v7);
    *(a1 + 136) = 0;
  }

  v8 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  std::mutex::~mutex((a1 + 32));
}

void sub_24023BDF8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226B30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_24023BE6C(float32x2_t *a1, uint64_t a2, float32x2_t *a3)
{
  if (*a2 > 1)
  {
    v6 = *(a2 + 40);
    if (!v6)
    {
      v8 = *(a2 + 16);
      v7 = *(a2 + 24);
      v9 = 341 * ((v7 - v8) >> 3) - 1;
      v10 = v7 - v8;
      if (v7 == v8)
      {
        v9 = 0;
      }

      if ((v9 - *(a2 + 48)) < 0x155)
      {
        v11 = *(a2 + 32);
        v12 = *(a2 + 8);
        if (v10 < v11 - v12)
        {
          if (v8 != v12)
          {
            operator new();
          }

          operator new();
        }

        if (v11 == v12)
        {
          v13 = 1;
        }

        else
        {
          v13 = (v11 - v12) >> 2;
        }

        if (!(v13 >> 61))
        {
          operator new();
        }

        sub_2401BDE28();
      }

      *(a2 + 40) = 341;
      v48 = *(v7 - 8);
      *(a2 + 24) = v7 - 8;
      sub_24023AE30((a2 + 8), &v48);
      v6 = *(a2 + 40);
    }

    v14 = *(a2 + 16);
    v15 = (v14 + 8 * (v6 / 0x155));
    v16 = *v15 - 4092 * (v6 / 0x155) + 12 * v6;
    if (*(a2 + 24) == v14)
    {
      v16 = 0;
    }

    if (v16 == *v15)
    {
      v16 = *(v15 - 1) + 4092;
    }

    v17 = *a3;
    *(v16 - 4) = a3[1].i32[0];
    *(v16 - 12) = v17;
    v18 = vaddq_s64(*(a2 + 40), xmmword_240270BF0);
    *(a2 + 40) = v18;
    v19 = v18.i64[1];
    v20 = 0.0;
    v21 = 0.0;
    if (v18.i32[2] >= 1)
    {
      v22 = v18.i32[2] & 0x7FFFFFFF;
      v23 = v18.i64[0];
      v24 = 12 * v18.i64[0];
      do
      {
        v25 = (*(*(a2 + 16) + 8 * (v23 / 0x155)) + v24 - 4092 * (v23 / 0x155));
        v26 = vsub_f32(*v25, *a3);
        v27 = sqrtf(vaddv_f32(vmul_f32(v26, v26)) + ((v25[1].f32[0] - a3[1].f32[0]) * (v25[1].f32[0] - a3[1].f32[0])));
        if (v21 < v27)
        {
          v21 = v27;
        }

        ++v23;
        v24 += 12;
        --v22;
      }

      while (v22);
    }

    v47 = v18.i64[0];
    v28 = v21 * *(a2 + 4);
    v29 = -v28;
    if (v28 >= 10.0)
    {
      v29 = -10.0;
    }

    v30 = expf(v29);
    if (v19 >= 1)
    {
      v31 = 1.0;
      v20 = 0.0;
      v32 = v19;
      do
      {
        v20 = v31 + v20;
        v31 = v30 * v31;
        --v32;
      }

      while (v32);
    }

    v33 = 1.0 / v20;
    v34 = *(a2 + 16);
    v35 = (*(v34 + 8 * (v47 / 0x155)) - 4092 * (v47 / 0x155) + 12 * v47);
    v36 = vmul_n_f32(*v35, 1.0 / v20);
    v37 = (1.0 / v20) * v35[1].f32[0];
    if (v19 > 1)
    {
      v38 = 12 * v47;
      v39 = v47 + 1;
      v40 = (v19 & 0x7FFFFFFF) - 1;
      do
      {
        v33 = v30 * v33;
        v41 = *(v34 + 8 * (v39 / 0x155)) + v38 - 4092 * (v39 / 0x155);
        v36 = vadd_f32(vmul_n_f32(*(v41 + 12), v33), v36);
        v37 = (v33 * *(v41 + 20)) + v37;
        v38 += 12;
        ++v39;
        --v40;
      }

      while (v40);
    }

    *a1 = v36;
    a1[1].f32[0] = v37;
    v42 = *a2;
    if (*a2 <= v19)
    {
      v43 = *(a2 + 24);
      do
      {
        v44 = *(a2 + 40);
        if (v43 == *(a2 + 16))
        {
          v45 = 0;
        }

        else
        {
          v45 = 341 * ((v43 - *(a2 + 16)) >> 3) - 1;
        }

        v46 = v19 - 1;
        *(a2 + 48) = v19 - 1;
        if ((v45 - (v19 + v44) + 1) >= 0x2AA)
        {
          operator delete(*(v43 - 8));
          v43 = *(a2 + 24) - 8;
          *(a2 + 24) = v43;
          v46 = *(a2 + 48);
          v42 = *a2;
        }

        v19 = v46;
      }

      while (v42 <= v46);
    }
  }

  else
  {
    *a1 = *a3;
    a1[1].i32[0] = a3[1].i32[0];
  }
}

void sub_24023C490(float *a1, uint64_t a2, _DWORD *a3)
{
  if (*a2 > 1)
  {
    v6 = *(a2 + 40);
    if (!v6)
    {
      v8 = *(a2 + 16);
      v7 = *(a2 + 24);
      v9 = ((v7 - v8) << 7) - 1;
      v10 = v7 - v8;
      if (v7 == v8)
      {
        v9 = 0;
      }

      if ((v9 - *(a2 + 48)) < 0x400)
      {
        v11 = *(a2 + 32);
        v12 = *(a2 + 8);
        if (v10 < v11 - v12)
        {
          if (v8 != v12)
          {
            operator new();
          }

          operator new();
        }

        if (v11 == v12)
        {
          v13 = 1;
        }

        else
        {
          v13 = (v11 - v12) >> 2;
        }

        if (!(v13 >> 61))
        {
          operator new();
        }

        sub_2401BDE28();
      }

      *(a2 + 40) = 1024;
      v42 = *(v7 - 8);
      *(a2 + 24) = v7 - 8;
      sub_24023AE30((a2 + 8), &v42);
      v6 = *(a2 + 40);
    }

    v14 = *(a2 + 16);
    v15 = (v14 + 8 * (v6 >> 10));
    v16 = *v15 + 4 * (v6 & 0x3FF);
    if (*(a2 + 24) == v14)
    {
      v16 = 0;
    }

    if (v16 == *v15)
    {
      v16 = *(v15 - 1) + 4096;
    }

    *(v16 - 4) = *a3;
    v17 = vaddq_s64(*(a2 + 40), xmmword_240270BF0);
    *(a2 + 40) = v17;
    v18 = v17.i64[1];
    v19 = 0.0;
    v20 = 0.0;
    if (v17.i32[2] >= 1)
    {
      v21 = v17.i32[2] & 0x7FFFFFFF;
      v22 = v17.i64[0];
      do
      {
        v23 = *(*(*(a2 + 16) + ((v22 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v22 & 0x3FF)) - *a3;
        v24 = sqrtf(v23 * v23);
        if (v20 < v24)
        {
          v20 = v24;
        }

        ++v22;
        --v21;
      }

      while (v21);
    }

    v41 = v17.i64[0];
    v25 = v20 * *(a2 + 4);
    v26 = -v25;
    if (v25 >= 10.0)
    {
      v26 = -10.0;
    }

    v27 = expf(v26);
    if (v18 >= 1)
    {
      v28 = 1.0;
      v19 = 0.0;
      v29 = v18;
      do
      {
        v19 = v28 + v19;
        v28 = v27 * v28;
        --v29;
      }

      while (v29);
    }

    v30 = *(a2 + 16);
    v31 = 1.0 / v19;
    v32 = (1.0 / v19) * *(*(v30 + ((v41 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v41 & 0x3FF));
    if (v18 > 1)
    {
      v33 = (v18 & 0x7FFFFFFF) - 1;
      v34 = v41 + 1;
      do
      {
        v31 = v27 * v31;
        v32 = (v31 * *(*(v30 + ((v34 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v34 & 0x3FF))) + v32;
        ++v34;
        --v33;
      }

      while (v33);
    }

    *a1 = v32;
    v35 = *a2;
    if (*a2 <= v18)
    {
      v36 = *(a2 + 24);
      do
      {
        v37 = *(a2 + 16);
        v38 = ((v36 - v37) << 7) - 1;
        v39 = *(a2 + 40);
        if (v36 == v37)
        {
          v38 = 0;
        }

        v40 = v18 - 1;
        *(a2 + 48) = v18 - 1;
        if ((v38 - (v18 + v39) + 1) >= 0x800)
        {
          operator delete(*(v36 - 8));
          v36 = *(a2 + 24) - 8;
          *(a2 + 24) = v36;
          v40 = *(a2 + 48);
          v35 = *a2;
        }

        v18 = v40;
      }

      while (v35 <= v40);
    }
  }

  else
  {
    *a1 = *a3;
  }
}

void sub_24023CA00(uint64_t a1)
{
  free(*(a1 + 208));
  free(*(a1 + 184));
  v2 = *(a1 + 160);

  free(v2);
}

void sub_24023CA44(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226AF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

float *sub_24023CAB8(float *result, float **a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2 == result || (v4 = a2[1], v4 == result))
  {
    v5 = 0;
    result = sub_24023CAB8(&v5);
    *v2 = v5;
  }

  else
  {
    *result = (((*v3 * *v4) + 0.0) + (v3[2] * v4[1])) + (v3[4] * v4[2]);
    result[1] = (((v3[1] * *v4) + 0.0) + (v3[3] * v4[1])) + (v3[5] * v4[2]);
  }

  return result;
}

double sub_24023CB5C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 == a1 || (v4 = *(a2 + 8), v5 = *(v4 + 8), &v5[-*(v4 + 20)] == a1))
  {
    v10 = 0uLL;
    v11 = 0;
    sub_24023CB5C(&v10);
    result = *&v10;
    *a1 = v10;
    *(a1 + 16) = v11;
  }

  else
  {
    v6 = *(v4 + 16);
    *a1 = ((*v3 * *v5) + 0.0) + (v3[2] * v5[1]);
    *(a1 + 4) = ((v3[1] * *v5) + 0.0) + (v3[3] * v5[1]);
    v7 = &v5[v6];
    *(a1 + 8) = ((*v3 * *v7) + 0.0) + (v3[2] * v7[1]);
    *(a1 + 12) = ((v3[1] * *v7) + 0.0) + (v3[3] * v7[1]);
    v8 = &v5[(2 * v6)];
    *(a1 + 16) = ((*v3 * *v8) + 0.0) + (v3[2] * v8[1]);
    *&result = ((v3[1] * *v8) + 0.0) + (v3[3] * v8[1]);
    *(a1 + 20) = LODWORD(result);
  }

  return result;
}

float *sub_24023CC70(float *result, uint64_t a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2 == result || (v4 = *(a2 + 8), v5 = *(v4 + 8), &v5[-*(v4 + 20)] == result))
  {
    v6 = 0;
    result = sub_24023CC70(&v6);
    *v2 = v6;
  }

  else
  {
    *result = ((*v3 * *v5) + 0.0) + (v3[2] * v5[1]);
    result[1] = ((v3[1] * *v5) + 0.0) + (v3[3] * v5[1]);
  }

  return result;
}

uint64_t sub_24023CD08(uint64_t a1, __CVBuffer *a2, void *a3)
{
  v116[1] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  if (*a3 == a3[1])
  {
    v95 = 1;
    goto LABEL_104;
  }

  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  v98 = objc_opt_new();
  v96 = a3;
  v7 = *a3;
  v8 = a3[1];
  if (v7 != v8)
  {
    *v9.f32 = vcvt_f32_u32(vmax_s32((Width | (Height << 32)), 0x100000001));
    v9.i64[1] = v9.i64[0];
    __asm { FMOV            V1.4S, #1.0 }

    v15 = vdivq_f32(_Q1, v9);
    v101 = v15;
    do
    {
      v16 = *(*v7 + 52);
      if (*(*v7 + 72) == 1)
      {
        v99 = *(*v7 + 52);
        v15.f32[0] = *(*v7 + 68) / -57.296;
        v17 = [MEMORY[0x277CCABB0] numberWithFloat:*v15.i64];
        v16 = v99;
      }

      else
      {
        v17 = 0;
      }

      *v18.f32 = vadd_f32(*&v16, 0x3F0000003F000000);
      v18.i64[1] = *(&v16 + 1);
      v19 = vmulq_f32(v18, v101);
      v20 = [MEMORY[0x277CE2CD0] faceObservationWithRequestRevision:0 boundingBox:v17 roll:0 yaw:0 pitch:{v19.f32[0], (1.0 - (v19.f32[1] + v19.f32[3])), v19.f32[2], v19.f32[3]}];
      if (v20)
      {
        [v98 addObject:v20];
      }

      v7 += 16;
    }

    while (v7 != v8);
  }

  v102 = sub_24023D7F0(v98);
  v21 = objc_alloc(MEMORY[0x277CE2D50]);
  v22 = v96;
  v93 = [v21 initWithCVPixelBuffer:a2 options:MEMORY[0x277CBEC10]];
  kdebug_trace();
  v116[0] = v102;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v116 count:1];
  v115 = 0;
  v24 = [v93 performRequests:v23 error:&v115];
  v25 = v115;

  v100 = v25;
  if (v25)
  {
    [v25 code];
  }

  kdebug_trace();
  if (v24)
  {
    v26 = v25;
    v27 = [v102 results];
    v28 = [v27 count];

    if (v28 == ((v96[1] - *v96) >> 4))
    {
      v95 = 1;
      if (v28 < 1)
      {
        goto LABEL_103;
      }

      v29 = 0;
      v97 = v28 & 0x7FFFFFFF;
      while (1)
      {
        v30 = [v102 results];
        v31 = [v30 objectAtIndexedSubscript:v29];

        v32 = [v31 faceprint];
        v33 = v32 == 0;

        if (!v33)
        {
          break;
        }

LABEL_45:

        if (++v29 == v97)
        {
          v95 = 1;
          goto LABEL_103;
        }
      }

      v34 = [v31 faceprint];
      v35 = [v34 descriptorData];
      v36 = v35;
      if (!v35)
      {
        v53 = 0;
        v44 = 0;
        LODWORD(v43) = 0;
        goto LABEL_42;
      }

      v37 = [v35 length];
      v38 = v36;
      v39 = [v36 bytes];
      v40 = v37;
      v41 = (v37 >> 2);
      v42 = (4 * v41 + 31) & 0x7FFFFFFE0;
      memptr[0] = 0;
      malloc_type_posix_memalign(memptr, 0x20uLL, v42, 0xE1AC2527uLL);
      v43 = v40 >> 2;
      v44 = v42 >> 2;
      v45 = memptr[0];
      if (v39 != memptr[0])
      {
        if (v43)
        {
          v46 = (v41 - 1) & 0x3FFFFFFFFFFFFFFFLL;
          if (v46 < 7)
          {
            v47 = memptr[0];
          }

          else
          {
            v47 = memptr[0];
            if ((memptr[0] - v39) >= 0x20)
            {
              v48 = (v46 + 1) & 0x7FFFFFFFFFFFFFF8;
              v49 = memptr[0] + 16;
              v50 = (v39 + 4);
              v51 = v48;
              do
              {
                v52 = *v50;
                *(v49 - 1) = *(v50 - 1);
                *v49 = v52;
                v49 += 2;
                v50 += 2;
                v51 -= 8;
              }

              while (v51);
              if (v46 + 1 == v48)
              {
                goto LABEL_37;
              }

              v47 = &v45[4 * v48];
              v39 += v48;
            }
          }

          do
          {
            v61 = *v39++;
            *v47 = v61;
            v47 += 4;
          }

          while (v47 != &v45[4 * v41]);
        }

LABEL_37:
        v53 = v45;
LABEL_41:
        v26 = v100;
        v22 = v96;
LABEL_42:

        v63 = *(*v22 + 16 * v29);
        v64 = *(v63 + 96);
        *(v63 + 96) = v53;
        *(v63 + 104) = v44;
        *(v63 + 112) = v43;
        free(v64);

        v65 = *(*v22 + 16 * v29);
        *(v65 + 120) = 1;
        if (*(v65 + 151) < 0)
        {
          **(v65 + 128) = 0;
          *(v65 + 136) = 0;
        }

        else
        {
          *(v65 + 128) = 0;
          *(v65 + 151) = 0;
        }

        goto LABEL_45;
      }

      memptr[0] = 0;
      malloc_type_posix_memalign(memptr, 0x20uLL, v42, 0xE1AC2527uLL);
      v53 = memptr[0];
      if (v43)
      {
        v54 = (v41 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        if (v54 < 7)
        {
          v55 = memptr[0];
        }

        else
        {
          v55 = memptr[0];
          if ((memptr[0] - v39) >= 0x20)
          {
            v56 = (v54 + 1) & 0x7FFFFFFFFFFFFFF8;
            v57 = memptr[0] + 16;
            v58 = (v39 + 4);
            v59 = v56;
            do
            {
              v60 = *v58;
              *(v57 - 1) = *(v58 - 1);
              *v57 = v60;
              v57 += 2;
              v58 += 2;
              v59 -= 8;
            }

            while (v59);
            if (v54 + 1 == v56)
            {
              goto LABEL_40;
            }

            v55 = &v53[4 * v56];
            v39 += v56;
          }
        }

        do
        {
          v62 = *v39++;
          *v55 = v62;
          v55 += 4;
        }

        while (v55 != &v53[4 * v41]);
      }

LABEL_40:
      free(v45);
      goto LABEL_41;
    }

    sub_240225318(memptr);
    sub_24021F0B0(memptr, "Not enough faceprintRequest results ", 36);
    v71 = MEMORY[0x245CBC7C0](memptr, v28);
    v72 = sub_24021F0B0(v71, " != ", 4);
    MEMORY[0x245CBC7C0](v72, (v96[1] - *v96) >> 4);
    if ((v113 & 0x10) != 0)
    {
      v82 = v112;
      if (v112 < v109)
      {
        v112 = v109;
        v82 = v109;
      }

      v83 = &v108;
    }

    else
    {
      if ((v113 & 8) == 0)
      {
        v73 = 0;
        HIBYTE(v104) = 0;
        goto LABEL_84;
      }

      v83 = v107;
      v82 = v107[2];
    }

    v84 = *v83;
    v73 = v82 - *v83;
    if (v73 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v73 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v104) = v82 - *v83;
      if (v73)
      {
        memmove(&__dst, v84, v73);
      }

      v26 = v25;
LABEL_84:
      *(&__dst + v73) = 0;
      v85 = *v96;
      v86 = v96[1];
      if (*v96 == v86)
      {
        if ((v104 & 0x8000000000000000) == 0)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v87 = SHIBYTE(v104);
        v88 = __dst;
        if (v104 >= 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst;
        }

        if (v104 >= 0)
        {
          v90 = HIBYTE(v104);
        }

        else
        {
          v90 = *(&__dst + 1);
        }

        do
        {
          v91 = *v85;
          *(v91 + 120) = 0;
          if (*(v91 + 151) < 0)
          {
            sub_2401F8070(v91 + 128, p_dst, v90);
          }

          else if (v87 < 0)
          {
            sub_2401F7FA0((v91 + 128), v88, *(&v88 + 1));
          }

          else
          {
            *(v91 + 128) = __dst;
            *(v91 + 144) = v104;
          }

          v85 += 2;
        }

        while (v85 != v86);
        v26 = v100;
        if ((v87 & 0x80) == 0)
        {
          goto LABEL_99;
        }
      }

      operator delete(__dst);
LABEL_99:
      memptr[0] = *MEMORY[0x277D82828];
      *(memptr + *(memptr[0] - 3)) = *(MEMORY[0x277D82828] + 24);
      memptr[1] = (MEMORY[0x277D82878] + 16);
      if (v111 < 0)
      {
        operator delete(__p);
      }

      memptr[1] = (MEMORY[0x277D82868] + 16);
      std::locale::~locale(&v106);
      std::ostream::~ostream();
      MEMORY[0x245CBC9C0](&v114);
      goto LABEL_102;
    }

LABEL_107:
    sub_2401BDE28();
  }

  v66 = [v25 description];
  v67 = v66;
  v68 = [v66 UTF8String];
  v69 = strlen(v68);
  if (v69 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_107;
  }

  v70 = v69;
  if (v69 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v106.__locale_) = v69;
  if (v69)
  {
    memmove(memptr, v68, v69);
  }

  *(memptr + v70) = 0;
  v74 = *v96;
  v75 = v96[1];
  if (*v96 == v75)
  {
    LOBYTE(locale_high) = HIBYTE(v106.__locale_);
  }

  else
  {
    locale_high = SHIBYTE(v106.__locale_);
    v77 = memptr[0];
    v78 = memptr[1];
    if (SHIBYTE(v106.__locale_) >= 0)
    {
      v79 = memptr;
    }

    else
    {
      v79 = memptr[0];
    }

    if (SHIBYTE(v106.__locale_) >= 0)
    {
      v80 = HIBYTE(v106.__locale_);
    }

    else
    {
      v80 = memptr[1];
    }

    do
    {
      v81 = *v74;
      *(v81 + 120) = 0;
      if (*(v81 + 151) < 0)
      {
        sub_2401F8070(v81 + 128, v79, v80);
      }

      else if (locale_high < 0)
      {
        sub_2401F7FA0((v81 + 128), v77, v78);
      }

      else
      {
        *(v81 + 128) = *memptr;
        *(v81 + 144) = v106;
      }

      v74 += 2;
    }

    while (v74 != v75);
  }

  v26 = v100;
  if ((locale_high & 0x80) != 0)
  {
    operator delete(memptr[0]);
  }

LABEL_102:
  v95 = 0;
LABEL_103:

LABEL_104:
  objc_autoreleasePoolPop(context);
  return v95;
}

void sub_24023D6BC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_2402254D0(va);

  _Unwind_Resume(a1);
}

id sub_24023D7F0(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_new();
  v11 = 0;
  v3 = [v2 setRevision:3737841669 error:&v11];
  v4 = v11;
  if ((v3 & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v5 = qword_280C03978;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 description];
      v9 = v8;
      v10 = [v8 UTF8String];
      *buf = 136315138;
      v13 = v10;
      _os_log_error_impl(&dword_2401B8000, v5, OS_LOG_TYPE_ERROR, "Unable to set private faceprint revision (%s).", buf, 0xCu);
    }
  }

  [v2 setInputFaceObservations:v1];
  [v2 setDetectionLevel:2];
  v6 = [MEMORY[0x277CE2DA0] defaultANEDevice];
  [v2 setProcessingDevice:v6];

  return v2;
}

void sub_24023D9A8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

uint64_t sub_24023D9FC()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v0 = objc_autoreleasePoolPush();
  pixelBufferOut = 0;
  if (CVPixelBufferCreate(0, 0x80uLL, 0x80uLL, 0x4C303038u, 0, &pixelBufferOut))
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v1 = qword_280C03978;
    if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_2401B8000, v1, OS_LOG_TYPE_INFO, "Recognition initialization failure: unable to create pixel buffer", buf, 2u);
    }

    v2 = 0;
  }

  else
  {
    v3 = objc_alloc(MEMORY[0x277CE2D50]);
    v1 = [v3 initWithCVPixelBuffer:pixelBufferOut options:MEMORY[0x277CBEC10]];
    v4 = [MEMORY[0x277CE2CD0] faceObservationWithRequestRevision:0 boundingBox:0 roll:0 yaw:0 pitch:{0.0, 0.0, 1.0, 1.0}];
    v14[0] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    v6 = sub_24023D7F0(v5);

    v13 = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    v10 = 0;
    v2 = [v1 performRequests:v7 error:&v10];
    v8 = v10;

    CVPixelBufferRelease(pixelBufferOut);
  }

  objc_autoreleasePoolPop(v0);
  return v2;
}

uint64_t sub_24023DC64@<X0>(_BYTE *a1@<X8>)
{
  sub_240225318(&v7);
  sub_24021F0B0(&v7, "Vision:", 7);
  MEMORY[0x245CBC7A0](&v7, *MEMORY[0x277CE3070]);
  if ((v16 & 0x10) != 0)
  {
    v3 = v15;
    if (v15 < v12)
    {
      v15 = v12;
      v3 = v12;
    }

    v4 = &v11;
  }

  else
  {
    if ((v16 & 8) == 0)
    {
      v2 = 0;
      a1[23] = 0;
      goto LABEL_14;
    }

    v4 = v10;
    v3 = v10[2];
  }

  v5 = *v4;
  v2 = v3 - *v4;
  if (v2 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2401BDE28();
  }

  if (v2 >= 0x17)
  {
    operator new();
  }

  a1[23] = v2;
  if (v2)
  {
    memmove(a1, v5, v2);
  }

LABEL_14:
  a1[v2] = 0;
  v7 = *MEMORY[0x277D82828];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x277D82828] + 24);
  v8 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(__p);
  }

  v8 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v9);
  std::ostream::~ostream();
  return MEMORY[0x245CBC9C0](&v17);
}

void sub_24023DE84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2402254D0(va);
  _Unwind_Resume(a1);
}

void sub_24023DEB0(void *a1@<X8>)
{
  if ((atomic_load_explicit(&qword_280C039E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039E8))
  {
    sub_24023DF40();
  }

  v2 = qword_280C03958;
  *a1 = qword_280C03960;
  a1[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t sub_24023E014(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_24023E044(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_24023E080(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 648));
  sub_240261C70(a1 + 432, a2);
  std::mutex::lock((a1 + 584));
  sub_2402627B8((a1 + 288), (a1 + 432));
  v4 = *(a1 + 328);
  v5 = *(a1 + 40);
  v6 = *(a1 + 344);
  v7 = vabds_f32(*v4, *v5);
  if (v6 != 1)
  {
    v8 = v4 + 1;
    v9 = 4 * v6 - 4;
    v10 = v5 + 1;
    do
    {
      v11 = *v8++;
      v12 = v11;
      v13 = *v10++;
      v14 = vabds_f32(v12, v13);
      if (v7 < v14)
      {
        v7 = v14;
      }

      v9 -= 4;
    }

    while (v9);
  }

  v15 = llroundf((v7 / 5.0) * 10.0);
  if (v15 >= 10)
  {
    v15 = 10;
  }

  if (v15 <= 1)
  {
    v15 = 1;
  }

  *(a1 + 576) = v15;
  std::mutex::unlock((a1 + 584));

  std::mutex::unlock((a1 + 648));
}

uint64_t sub_24023E160(uint64_t a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (a1 != a2)
  {
    v7 = *(a2 + 8);
    if (v7)
    {
      v8 = *(a1 + 16);
      if (*(a1 + 24) >= v7)
      {
        v9 = 4 * v7;
      }

      else
      {
        free(v8);
        v9 = 4 * v7;
        v10 = (v9 + 31) & 0x7FFFFFFE0;
        *(a1 + 16) = 0;
        *(a1 + 24) = v10 >> 2;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v10, 0xE1AC2527uLL);
        v8 = memptr;
        *(a1 + 16) = memptr;
      }

      memcpy(v8, a2[2], v9);
    }

    else
    {
      free(*(a1 + 16));
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }

    *(a1 + 32) = *(a2 + 8);
    v11 = *(a2 + 14);
    if (v11)
    {
      v12 = *(a1 + 40);
      if (*(a1 + 48) >= v11)
      {
        v13 = 4 * v11;
      }

      else
      {
        free(v12);
        v13 = 4 * v11;
        v14 = (v13 + 31) & 0x7FFFFFFE0;
        *(a1 + 40) = 0;
        *(a1 + 48) = v14 >> 2;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v14, 0xE1AC2527uLL);
        v12 = memptr;
        *(a1 + 40) = memptr;
      }

      memcpy(v12, a2[5], v13);
    }

    else
    {
      free(*(a1 + 40));
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
    }

    *(a1 + 56) = *(a2 + 14);
    v15 = (*(a2 + 21) * *(a2 + 20));
    if (v15)
    {
      v16 = *(a1 + 64);
      if (*(a1 + 72) >= v15)
      {
        v17 = 4 * v15;
      }

      else
      {
        free(v16);
        v17 = 4 * v15;
        v18 = (v17 + 31) & 0x7FFFFFFE0;
        *(a1 + 64) = 0;
        *(a1 + 72) = v18 >> 2;
        memptr = 0;
        malloc_type_posix_memalign(&memptr, 0x20uLL, v18, 0xE1AC2527uLL);
        v16 = memptr;
        *(a1 + 64) = memptr;
      }

      memcpy(v16, a2[8], v17);
    }

    else
    {
      free(*(a1 + 64));
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
    }

    *(a1 + 80) = a2[10];
  }

  if (*(a1 + 136) == *(a2 + 136))
  {
    if (a1 != a2 && *(a1 + 136))
    {
      v19 = *(a2 + 11);
      v20 = *(a2 + 13);
      *(a1 + 120) = *(a2 + 15);
      *(a1 + 104) = v20;
      *(a1 + 88) = v19;
    }
  }

  else if (*(a1 + 136))
  {
    *(a1 + 136) = 0;
  }

  else
  {
    v21 = *(a2 + 11);
    v22 = *(a2 + 13);
    *(a1 + 120) = *(a2 + 15);
    *(a1 + 104) = v22;
    *(a1 + 88) = v21;
    *(a1 + 136) = 1;
  }

  return a1;
}

float *sub_24023E3D0(float *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == a1)
  {
    v7 = 0;
    result = sub_24023E3D0(&v7);
    *a1 = v7;
  }

  else
  {
    v4 = *a2;
    v7 = 0;
    result = sub_24023E454(&v7, v4);
    v6 = v7;
    *a1 = ((*&v7 * *v3) + 0.0) + (*(&v7 + 1) * v3[1]);
    a1[1] = ((*&v6 * v3[2]) + 0.0) + (*(&v6 + 1) * v3[3]);
  }

  return result;
}

float *sub_24023E454(float *result, float **a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2 == result || (v4 = a2[1], v4 == result))
  {
    v5 = 0;
    result = sub_24023E454(&v5);
    *v2 = v5;
  }

  else
  {
    *result = ((*v3 * *v4) + 0.0) + (v3[1] * v4[1]);
    result[1] = ((*v3 * v4[2]) + 0.0) + (v3[1] * v4[3]);
  }

  return result;
}

void *sub_24023E4D8(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (v1[9])
    {
      v3 = v1[10];
      v1[9] = 0;
      v1[10] = 0;
      if (v3)
      {
        if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v3->__on_zero_shared)(v3);
          std::__shared_weak_count::__release_weak(v3);
        }
      }
    }

    v4 = v1[10];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = v1[6];
    if (v5)
    {
      v1[7] = v5;
      operator delete(v5);
    }

    v6 = v1[3];
    if (v6)
    {
      v7 = v1[4];
      v8 = v1[3];
      if (v7 != v6)
      {
        do
        {
          v10 = *(v7 - 8);
          v7 -= 8;
          v9 = v10;
          if (v10)
          {
            CVPixelBufferRelease(v9);
          }
        }

        while (v7 != v6);
        v8 = v1[3];
      }

      v1[4] = v6;
      operator delete(v8);
    }

    MEMORY[0x245CBCA30](v1, 0x1020C40612EDB84);
    return v2;
  }

  return result;
}

uint64_t sub_24023E618(uint64_t result)
{
  v1 = *(result + 24);
  *(result + 24) = 0;
  if (v1)
  {
    if (*v1)
    {
      CFRelease(*v1);
    }

    v2 = *(v1 + 8);
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      CFRelease(v3);
    }

    JUMPOUT(0x245CBCA30);
  }

  return result;
}

void sub_24023E694(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226B68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_24023E708()
{
  os_unfair_lock_lock(&unk_280C03948);
  if (!qword_280C03950)
  {
    os_unfair_lock_unlock(&unk_280C03948);
    sub_24023FC1C();
  }

  operator new();
}

void sub_24023FC1C()
{
  if ((atomic_load_explicit(&qword_280C03A28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A28))
  {
    sub_24022C414();
  }

  if (unk_280C03A10)
  {
    atomic_fetch_add_explicit((unk_280C03A10 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void *sub_240241CB0(void *result, void *a2, uint64_t *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[1];
  v9 = result[2];
  v10 = (v9 - v8) >> 3;
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = 341 * v10 - 1;
  }

  v13 = result[4];
  v12 = result[5];
  v14 = v12 + v13;
  v15 = v11 - (v12 + v13);
  v16 = a4 >= v15;
  v17 = a4 - v15;
  if (v17 != 0 && v16)
  {
    v18 = v17 + (v9 == v8);
    if (v18 % 0x155)
    {
      v19 = v18 / 0x155 + 1;
    }

    else
    {
      v19 = v18 / 0x155;
    }

    if (v19 >= v13 / 0x155)
    {
      v20 = v13 / 0x155;
    }

    else
    {
      v20 = v19;
    }

    if (v19 <= v13 / 0x155)
    {
      for (result[4] = v13 - 341 * v20; v20; --v20)
      {
        v25 = v7[1];
        v38 = *v25;
        v7[1] = v25 + 1;
        result = sub_24023AFC4(v7, &v38);
      }
    }

    else
    {
      v21 = v19 - v20;
      v22 = result[3] - *result;
      if (v19 - v20 > (v22 >> 3) - v10)
      {
        v23 = v22 >> 2;
        if (v23 <= v21 + v10)
        {
          v24 = v21 + v10;
        }

        else
        {
          v24 = v23;
        }

        if (v24)
        {
          if (!(v24 >> 61))
          {
            operator new();
          }

          sub_2401BDE28();
        }

        operator new();
      }

      if (v21)
      {
        if (result[3] != result[2])
        {
          operator new();
        }

        operator new();
      }

      for (result[4] = v13 - 341 * v20; v20; --v20)
      {
        v26 = v7[1];
        v38 = *v26;
        v7[1] = v26 + 1;
        result = sub_24023AFC4(v7, &v38);
      }
    }

    v12 = v7[5];
    v8 = v7[1];
    v9 = v7[2];
    v14 = v7[4] + v12;
  }

  v27 = (v8 + 8 * (v14 / 0x155));
  if (v9 != v8)
  {
    v28 = *v27 - 4092 * (v14 / 0x155) + 12 * v14;
    v29 = v28;
    if (a4)
    {
      goto LABEL_33;
    }

LABEL_37:
    v31 = v27;
    if (v28 == v29)
    {
      return result;
    }

    goto LABEL_40;
  }

  v28 = 0;
  v29 = 0;
  if (!a4)
  {
    goto LABEL_37;
  }

LABEL_33:
  v30 = (v29 - *v27) / 12 + a4;
  if (v30 < 1)
  {
    v32 = 340 - v30;
    v31 = &v27[-(v32 / 0x155)];
    v29 = *v31 + 12 * (340 - (v32 % 0x155));
    if (v28 == v29)
    {
      return result;
    }
  }

  else
  {
    v31 = &v27[v30 / 0x155uLL];
    v29 = *v31 - 4092 * (v30 / 0x155uLL) + 12 * v30;
    if (v28 == v29)
    {
      return result;
    }
  }

  do
  {
LABEL_40:
    v33 = v29;
    if (v27 != v31)
    {
      v33 = *v27 + 4092;
    }

    if (v28 == v33)
    {
      v33 = v28;
    }

    else
    {
      v34 = v28;
      do
      {
        v35 = *a3;
        *(v34 + 8) = *(a3 + 2);
        *v34 = v35;
        a3 = (a3 + 12);
        if ((a3 - *a2) == 4092)
        {
          v36 = a2[1];
          ++a2;
          a3 = v36;
        }

        v34 += 12;
      }

      while (v34 != v33);
      v12 = v7[5];
    }

    v12 -= 0x5555555555555555 * ((v33 - v28) >> 2);
    v7[5] = v12;
    if (v27 == v31)
    {
      break;
    }

    v37 = v27[1];
    ++v27;
    v28 = v37;
  }

  while (v37 != v29);
  return result;
}

void *sub_240242568(void *result, void *a2, int *a3, unint64_t a4)
{
  v7 = result;
  v8 = result[1];
  v9 = result[2];
  v10 = v9 - v8;
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = ((v9 - v8) << 7) - 1;
  }

  v13 = result[4];
  v12 = result[5];
  v14 = v12 + v13;
  v15 = v11 - (v12 + v13);
  v16 = a4 >= v15;
  v17 = a4 - v15;
  if (v17 != 0 && v16)
  {
    if (v9 == v8)
    {
      v18 = v17 + 1;
    }

    else
    {
      v18 = v17;
    }

    if ((v18 & 0x3FF) != 0)
    {
      v19 = (v18 >> 10) + 1;
    }

    else
    {
      v19 = v18 >> 10;
    }

    if (v19 >= v13 >> 10)
    {
      v20 = v13 >> 10;
    }

    else
    {
      v20 = v19;
    }

    if (v19 <= v13 >> 10)
    {
      for (result[4] = v13 - (v20 << 10); v20; --v20)
      {
        v25 = v7[1];
        v38 = *v25;
        v7[1] = v25 + 1;
        result = sub_24023AFC4(v7, &v38);
      }
    }

    else
    {
      v21 = v19 - v20;
      v22 = result[3] - *result;
      v23 = v10 >> 3;
      if (v21 > (v22 >> 3) - (v10 >> 3))
      {
        if (v22 >> 2 <= v21 + v23)
        {
          v24 = v21 + v23;
        }

        else
        {
          v24 = v22 >> 2;
        }

        if (v24)
        {
          if (!(v24 >> 61))
          {
            operator new();
          }

          sub_2401BDE28();
        }

        operator new();
      }

      if (v21)
      {
        if (result[3] != result[2])
        {
          operator new();
        }

        operator new();
      }

      for (result[4] = v13 - (v20 << 10); v20; --v20)
      {
        v26 = v7[1];
        v38 = *v26;
        v7[1] = v26 + 1;
        result = sub_24023AFC4(v7, &v38);
      }
    }

    v12 = v7[5];
    v8 = v7[1];
    v9 = v7[2];
    v14 = v7[4] + v12;
  }

  v27 = (v8 + 8 * (v14 >> 10));
  if (v9 == v8)
  {
    v28 = 0;
    v29 = 0;
    if (a4)
    {
LABEL_36:
      v30 = a4 + ((v29 - *v27) >> 2);
      if (v30 < 1)
      {
        v32 = 1023 - v30;
        v31 = &v27[-(v32 >> 10)];
        v29 = *v31 + 4 * (~v32 & 0x3FF);
      }

      else
      {
        v31 = &v27[v30 >> 10];
        v29 = *v31 + 4 * (v30 & 0x3FF);
      }

      goto LABEL_52;
    }
  }

  else
  {
    v28 = *v27 + 4 * (v14 & 0x3FF);
    v29 = v28;
    if (a4)
    {
      goto LABEL_36;
    }
  }

  v31 = v27;
LABEL_52:
  while (v28 != v29)
  {
    v33 = v29;
    if (v27 != v31)
    {
      v33 = *v27 + 4096;
    }

    if (v28 == v33)
    {
      v33 = v28;
    }

    else
    {
      v34 = v28;
      do
      {
        v35 = *a3++;
        *v34++ = v35;
        if ((a3 - *a2) == 4096)
        {
          v36 = a2[1];
          ++a2;
          a3 = v36;
        }
      }

      while (v34 != v33);
      v12 = v7[5];
    }

    v12 += (v33 - v28) >> 2;
    v7[5] = v12;
    if (v27 == v31)
    {
      break;
    }

    v37 = v27[1];
    ++v27;
    v28 = v37;
  }

  return result;
}

double sub_240242D50(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *(a1 + 40) = 0;
  v6 = (v4 - v5) >> 3;
  if (v6 >= 3)
  {
    do
    {
      operator delete(*v5);
      v4 = *(a1 + 16);
      v5 = (*(a1 + 8) + 8);
      *(a1 + 8) = v5;
      v6 = (v4 - v5) >> 3;
    }

    while (v6 > 2);
  }

  if (v6 == 1)
  {
    v7 = 170;
    goto LABEL_7;
  }

  if (v6 == 2)
  {
    v7 = 341;
LABEL_7:
    *(a1 + 32) = v7;
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(a1 + 32);
    if (v9 >= 0x155)
    {
      operator delete(*v5);
      v4 = *(a1 + 16);
      v5 = (*(a1 + 8) + 8);
      *(a1 + 8) = v5;
      v8 = *(a1 + 40);
      v9 = *(a1 + 32) - 341;
      *(a1 + 32) = v9;
    }

    v10 = 341 * ((v4 - v5) >> 3) - 1;
    if (v4 == v5)
    {
      v10 = 0;
    }

    if (v10 - (v8 + v9) >= 0x155)
    {
      operator delete(*(v4 - 8));
      v5 = *(a1 + 8);
      v4 = *(a1 + 16) - 8;
      *(a1 + 16) = v4;
    }
  }

  else
  {
    while (v4 != v5)
    {
      operator delete(*(v4 - 8));
      v5 = *(a1 + 8);
      v4 = *(a1 + 16) - 8;
      *(a1 + 16) = v4;
    }

    *(a1 + 32) = 0;
    v5 = v4;
  }

  v11 = *a1;
  v12 = *(a1 + 24) - *a1;
  v13 = v4 - v5;
  if (v12 > v4 - v5)
  {
    v14 = v13 >> 3;
    if (v4 != v5)
    {
      if (!(v14 >> 61))
      {
        operator new();
      }

      goto LABEL_56;
    }

    if (v13 < v12)
    {
      v15 = *(a1 + 8);
      v16 = (*(a1 + 16) - v15);
      v17 = v16;
      if (!v16)
      {
        goto LABEL_33;
      }

      v18 = (v16 - 1);
      if ((v16 - 1) < 0x18)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0;
        if (-v15 >= 0x20)
        {
          v20 = (v18 >> 3) + 1;
          v19 = (8 * (v20 & 0x3FFFFFFFFFFFFFFCLL));
          v21 = (v15 + 16);
          v22 = 16;
          v23 = v20 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v24 = *v21;
            *(v22 - 16) = *(v21 - 1);
            *v22 = v24;
            v21 += 2;
            v22 += 32;
            v23 -= 4;
          }

          while (v23);
          if (v20 == (v20 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_33:
            *a1 = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = v17;
            *(a1 + 24) = 8 * v14;
            if (v11)
            {
              operator delete(v11);
            }

            goto LABEL_35;
          }

          v15 += 8 * (v20 & 0x3FFFFFFFFFFFFFFCLL);
        }
      }

      do
      {
        v25 = *v15;
        v15 += 8;
        *v19++ = v25;
      }

      while (v19 != v17);
      goto LABEL_33;
    }
  }

LABEL_35:
  v26 = *(a1 + 8);
  v27 = *(a1 + 16);
  if (v27 == v26)
  {
    v28 = *(a1 + 8);
  }

  else
  {
    v28 = v27 + ((v26 - v27 + 7) & 0xFFFFFFFFFFFFFFF8);
    *(a1 + 16) = v28;
  }

  v29 = *a1;
  v30 = *(a1 + 24) - *a1;
  v31 = v28 - v26;
  if (v30 > v28 - v26)
  {
    v32 = v31 >> 3;
    if (v28 != v26)
    {
      if (!(v32 >> 61))
      {
        operator new();
      }

LABEL_56:
      sub_2401BDE28();
    }

    if (v31 < v30)
    {
      v33 = *(a1 + 8);
      v34 = (*(a1 + 16) - v33);
      v35 = v34;
      if (!v34)
      {
        goto LABEL_53;
      }

      v36 = (v34 - 1);
      if ((v34 - 1) < 0x18)
      {
        v37 = 0;
      }

      else
      {
        v37 = 0;
        if (-v33 >= 0x20)
        {
          v38 = (v36 >> 3) + 1;
          v37 = (8 * (v38 & 0x3FFFFFFFFFFFFFFCLL));
          v39 = (v33 + 16);
          v40 = 16;
          v41 = v38 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v42 = *v39;
            *(v40 - 16) = *(v39 - 1);
            *v40 = v42;
            v39 += 2;
            v40 += 32;
            v41 -= 4;
          }

          while (v41);
          if (v38 == (v38 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_53:
            *a1 = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = v35;
            *(a1 + 24) = 8 * v32;
            if (v29)
            {
              operator delete(v29);
            }

            goto LABEL_55;
          }

          v33 += 8 * (v38 & 0x3FFFFFFFFFFFFFFCLL);
        }
      }

      do
      {
        v43 = *v33;
        v33 += 8;
        *v37++ = v43;
      }

      while (v37 != v35);
      goto LABEL_53;
    }
  }

LABEL_55:
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

void sub_2402430EC(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 8) >= a2)
  {
    *(a1 + 16) = a2;
    return;
  }

  v4 = (4 * a2 + 31) & 0x7FFFFFFE0;
  v5 = v4 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v4, 0xE1AC2527uLL);
  v6 = memptr;
  v7 = *(a1 + 16);
  if (v7 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = v7;
  }

  v9 = *a1;
  if (*a1 == memptr)
  {
    v19 = *a1;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, (4 * v8 + 31) & 0x7FFFFFFE0, 0xE1AC2527uLL);
    v20 = memptr;
    if (!v8)
    {
      goto LABEL_32;
    }

    v21 = (v8 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v22 = v21 + 1;
    if (v21 < 7)
    {
      v24 = memptr;
      v23 = v19;
    }

    else
    {
      v23 = v19;
      v24 = memptr;
      if ((memptr - v19) >= 0x20)
      {
        v25 = v22 & 0x7FFFFFFFFFFFFFF8;
        v26 = &v19[v25];
        v27 = memptr + 16;
        v28 = (v19 + 4);
        v29 = v22 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v30 = *v28;
          *(v27 - 1) = *(v28 - 1);
          *v27 = v30;
          v27 += 2;
          v28 += 2;
          v29 -= 8;
        }

        while (v29);
        if (v22 == (v22 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_25;
        }

        v24 = &v20[v25 * 4];
        v23 = v26;
      }
    }

    do
    {
      v31 = *v23++;
      *v24 = v31;
      v24 += 4;
    }

    while (v24 != &v20[4 * v8]);
LABEL_25:
    v32 = v20;
    v33 = v6;
    if (v21 >= 7)
    {
      v32 = v20;
      v33 = v6;
      if ((v6 - v20) >= 0x20)
      {
        v34 = 4 * (v22 & 0x7FFFFFFFFFFFFFF8);
        v32 = &v20[v34];
        v35 = v6 + 16;
        v36 = (v20 + 16);
        v37 = v22 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v38 = *v36;
          *(v35 - 1) = *(v36 - 1);
          *v35 = v38;
          v35 += 2;
          v36 += 2;
          v37 -= 8;
        }

        while (v37);
        if (v22 == (v22 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_32;
        }

        v33 = &v6[v34];
      }
    }

    do
    {
      v39 = *v32;
      v32 += 4;
      *v33 = v39;
      v33 += 4;
    }

    while (v33 != &v6[4 * v8]);
LABEL_32:
    free(v20);
    v9 = *a1;
    goto LABEL_33;
  }

  if (v8)
  {
    v10 = (v8 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v11 = *a1;
    v12 = memptr;
    if (v10 >= 7)
    {
      v11 = *a1;
      v12 = memptr;
      if ((memptr - v9) >= 0x20)
      {
        v13 = (v10 + 1) & 0x7FFFFFFFFFFFFFF8;
        v11 = &v9[v13];
        v14 = memptr + 16;
        v15 = (v9 + 4);
        v16 = v13;
        do
        {
          v17 = *v15;
          *(v14 - 1) = *(v15 - 1);
          *v14 = v17;
          v14 += 2;
          v15 += 2;
          v16 -= 8;
        }

        while (v16);
        if (v10 + 1 == v13)
        {
          goto LABEL_33;
        }

        v12 = &v6[4 * v13];
      }
    }

    do
    {
      v18 = *v11++;
      *v12 = v18;
      v12 += 4;
    }

    while (v12 != &v6[4 * v8]);
  }

LABEL_33:
  *a1 = v6;
  *(a1 + 8) = v5;
  *(a1 + 16) = a2;
  free(v9);
}

void sub_240243360(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226CB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

float *sub_2402433D4(float *result, uint64_t a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2 == result || (v4 = *(a2 + 8), v5 = *v4, (*v4 - 4 * *(v4 + 12)) == result))
  {
    v7 = 0;
    v6 = 0;
    result = sub_2402433D4(&v6);
    *v2 = v6;
    *(v2 + 2) = v7;
  }

  else
  {
    *result = (((*v3 * *v5) + 0.0) + (v3[3] * v5[1])) + (v3[6] * v5[2]);
    result[1] = (((v3[1] * *v5) + 0.0) + (v3[4] * v5[1])) + (v3[7] * v5[2]);
    result[2] = (((v3[2] * *v5) + 0.0) + (v3[5] * v5[1])) + (v3[8] * v5[2]);
  }

  return result;
}

void sub_2402434B4(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 2;
    v9 = (v7 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_2401BDE28();
    }

    v10 = v3 - v6;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 62))
      {
        operator new();
      }

      sub_2401BDE28();
    }

    *(4 * v8) = *a2;
    v5 = 4 * v8 + 4;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

float *sub_2402435B8(float *result, float *a2, float *a3)
{
  while (a3 != a2)
  {
    v3 = a3 - result;
    if (v3 < 2)
    {
      break;
    }

    if (v3 == 3)
    {
      v44 = result[1];
      v45 = *(a3 - 1);
      if (v44 < v45)
      {
        v46 = *(result + 1);
      }

      else
      {
        v46 = *(a3 - 1);
      }

      if (v44 < v45)
      {
        v44 = *(a3 - 1);
      }

      *(a3 - 1) = v44;
      *(result + 1) = v46;
      v47 = *(a3 - 1);
      if (v47 < *result)
      {
        v48 = *(a3 - 1);
      }

      else
      {
        v48 = *result;
      }

      if (v47 < *result)
      {
        v47 = *result;
      }

      *(a3 - 1) = v47;
      v49 = result[1];
      if (v48 < v49)
      {
        result[1] = v49;
      }

      else
      {
        *result = v49;
        result[1] = v48;
      }

      return result;
    }

    if (v3 == 2)
    {
      v50 = *(a3 - 1);
      v51 = *result;
      if (v50 < *result)
      {
        *result = v50;
        *(a3 - 1) = v51;
      }

      return result;
    }

    if (v3 <= 7)
    {
      while (result != a3 - 1)
      {
        v52 = result++;
        if (v52 != a3 && result != a3)
        {
          v53 = *v52;
          v54 = *v52;
          v55 = result;
          v56 = v52;
          v57 = result;
          do
          {
            v58 = *v57++;
            v59 = v58;
            if (v58 < v54)
            {
              v54 = v59;
              v56 = v55;
            }

            v55 = v57;
          }

          while (v57 != a3);
          if (v56 != v52)
          {
            *v52 = *v56;
            *v56 = v53;
          }
        }
      }

      return result;
    }

    v4 = &result[(a3 - result) >> 3];
    v5 = a3 - 1;
    v6 = *(a3 - 1);
    v7 = *v4;
    if (*v4 < v6)
    {
      v8 = *v4;
    }

    else
    {
      v8 = *(a3 - 1);
    }

    if (*v4 < v6)
    {
      v9 = *(a3 - 1);
    }

    else
    {
      v9 = *v4;
    }

    *v5 = v9;
    *v4 = v8;
    v10 = *v5;
    v11 = *result;
    if (*v5 < *result)
    {
      v12 = *v5;
    }

    else
    {
      v12 = *result;
    }

    if (*v5 < *result)
    {
      v13 = *result;
    }

    else
    {
      v13 = *v5;
    }

    *v5 = v13;
    v14 = *v4;
    v15 = *v4;
    if (v12 >= *v4)
    {
      *result = v14;
      v15 = v12;
    }

    v16 = v10 >= v11;
    if (v12 >= v14)
    {
      v16 = 1;
    }

    *v4 = v15;
    if (v7 >= v6)
    {
      v16 = 1;
    }

    v17 = *result;
    if (*result < v15)
    {
LABEL_33:
      v22 = result + 1;
      if (result + 1 >= v5)
      {
        v25 = result + 1;
      }

      else
      {
        v23 = result + 1;
        while (1)
        {
          v24 = *v4;
          do
          {
            v25 = v23;
            v26 = *v23++;
            v27 = v26;
          }

          while (v26 < v24);
          do
          {
            v28 = *--v5;
            v29 = v28;
          }

          while (v28 >= v24);
          if (v25 >= v5)
          {
            break;
          }

          *v25 = v29;
          *v5 = v27;
          ++v16;
          if (v4 == v25)
          {
            v4 = v5;
          }
        }
      }

      if (v25 != v4)
      {
        v30 = *v25;
        if (*v4 < *v25)
        {
          *v25 = *v4;
          *v4 = v30;
          ++v16;
        }
      }

      if (v25 == a2)
      {
        return result;
      }

      if (!v16)
      {
        if (v25 <= a2)
        {
          v36 = v25 + 1;
          while (v36 != a3)
          {
            v38 = *(v36 - 1);
            v37 = *v36++;
            if (v37 < v38)
            {
              goto LABEL_48;
            }
          }
        }

        else
        {
          while (v22 != v25)
          {
            v33 = *(v22 - 1);
            v32 = *v22++;
            if (v32 < v33)
            {
              goto LABEL_48;
            }
          }
        }

        return result;
      }

LABEL_48:
      if (v25 <= a2)
      {
        v31 = v25 + 1;
      }

      else
      {
        a3 = v25;
        v31 = result;
      }
    }

    else
    {
      v18 = a3 - 2;
      while (v18 != result)
      {
        v19 = v18;
        v20 = *v18--;
        v21 = v20;
        if (v20 < v15)
        {
          *result = v21;
          *v19 = v17;
          if (v16)
          {
            v16 = 2;
          }

          else
          {
            v16 = 1;
          }

          v5 = v19;
          goto LABEL_33;
        }
      }

      v34 = result + 1;
      if (v17 >= *v5)
      {
        if (v34 == v5)
        {
          return result;
        }

        while (1)
        {
          v35 = *v34;
          if (v17 < *v34)
          {
            break;
          }

          if (++v34 == v5)
          {
            return result;
          }
        }

        *v34++ = *v5;
        *v5 = v35;
      }

      if (v34 == v5)
      {
        return result;
      }

      while (1)
      {
        v39 = *result;
        do
        {
          v31 = v34;
          v40 = *v34++;
          v41 = v40;
        }

        while (v39 >= v40);
        do
        {
          v42 = *--v5;
          v43 = v42;
        }

        while (v39 < v42);
        if (v31 >= v5)
        {
          break;
        }

        *v31 = v43;
        *v5 = v41;
      }

      if (v31 > a2)
      {
        return result;
      }
    }

    result = v31;
  }

  return result;
}