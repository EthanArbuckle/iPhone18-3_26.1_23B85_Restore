uint64_t sub_2401F1F30(uint64_t a1, float32x2_t *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 264) & 1) == 0)
  {
    *(a1 + 248) = 0;
    *(a1 + 256) = 0;
    *(a1 + 120) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 200) = 0u;
    v5 = MEMORY[0x277CC0898];
    *(a1 + 224) = *MEMORY[0x277CC0898];
    *(a1 + 240) = *(v5 + 16);
    *(a1 + 264) = 1;
  }

  *(a1 + 216) = 0x3FA999999999999ALL;
  *v31 = *a3;
  *&v31[16] = *(a3 + 16);
  v6 = sub_2401CF9D8(a1 + 224, v31);
  v7 = v6 != 0;
  if (v6)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v8 = (2 * v7);
    v9 = qword_280C03850;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      if ((v8 - 1) > 7)
      {
        v29 = "Success, no error";
      }

      else
      {
        v29 = off_278C9DF08[(v8 - 1)];
      }

      *v31 = 136315394;
      *&v31[4] = "Precondition was violated";
      *&v31[12] = 2080;
      *&v31[14] = v29;
      _os_log_error_impl(&dword_2401B8000, v9, OS_LOG_TYPE_ERROR, "Running m_timeDiff.update(timestamp) failed with %s, returning %s", v31, 0x16u);
    }

    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v10 = qword_280C03850;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v30 = off_278C9DF08[(v8 - 1)];
      *v31 = 136315394;
      *&v31[4] = v30;
      *&v31[12] = 2080;
      *&v31[14] = v30;
      _os_log_error_impl(&dword_2401B8000, v10, OS_LOG_TYPE_ERROR, "Running m_normalizedLandmarks->update(landmarks, timestamp) failed with %s, returning %s", v31, 0x16u);
    }
  }

  else if (*(a1 + 256))
  {
    v11 = *(a1 + 216);
    v12 = 1.0;
    if (v11 > 0.0)
    {
      v12 = 1.0 - exp(-*(a1 + 248) / v11);
    }

    v8 = 0;
    v13 = vmla_n_f32(*(a1 + 128), vsub_f32(a2[1], *(a1 + 128)), v12);
    v14 = vmla_n_f32(*(a1 + 136), vsub_f32(a2[2], *(a1 + 136)), v12);
    v15 = vmla_n_f32(*(a1 + 144), vsub_f32(a2[3], *(a1 + 144)), v12);
    v16 = vmla_n_f32(*(a1 + 152), vsub_f32(a2[4], *(a1 + 152)), v12);
    v17 = vmla_n_f32(*(a1 + 160), vsub_f32(a2[5], *(a1 + 160)), v12);
    v18 = vmla_n_f32(*(a1 + 168), vsub_f32(a2[6], *(a1 + 168)), v12);
    v19 = vmla_n_f32(*(a1 + 176), vsub_f32(a2[7], *(a1 + 176)), v12);
    v20 = vmla_n_f32(*(a1 + 184), vsub_f32(a2[8], *(a1 + 184)), v12);
    v21 = vmla_n_f32(*(a1 + 192), vsub_f32(a2[9], *(a1 + 192)), v12);
    v22 = vmla_n_f32(*(a1 + 200), vsub_f32(a2[10], *(a1 + 200)), v12);
    v23 = vmla_n_f32(*(a1 + 208), vsub_f32(a2[11], *(a1 + 208)), v12);
    *(a1 + 120) = vmla_n_f32(*(a1 + 120), vsub_f32(*a2, *(a1 + 120)), v12);
    *(a1 + 128) = v13;
    *(a1 + 136) = v14;
    *(a1 + 144) = v15;
    *(a1 + 152) = v16;
    *(a1 + 160) = v17;
    *(a1 + 168) = v18;
    *(a1 + 176) = v19;
    *(a1 + 184) = v20;
    *(a1 + 192) = v21;
    *(a1 + 200) = v22;
    *(a1 + 208) = v23;
  }

  else
  {
    v8 = 0;
    v24 = *a2->f32;
    *(a1 + 136) = *a2[2].f32;
    *(a1 + 120) = v24;
    v25 = *a2[4].f32;
    v26 = *a2[6].f32;
    v27 = *a2[8].f32;
    *(a1 + 200) = *a2[10].f32;
    *(a1 + 184) = v27;
    *(a1 + 168) = v26;
    *(a1 + 152) = v25;
  }

  return v8;
}

uint64_t sub_2401F22B8(uint64_t a1, float *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  *v14 = *a3;
  *&v14[16] = *(a3 + 16);
  v5 = sub_2401CF9D8(a1 + 16, v14);
  v6 = v5 != 0;
  if (v5)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v7 = (2 * v6);
    v8 = qword_280C03850;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      if ((v7 - 1) > 7)
      {
        v13 = "Success, no error";
      }

      else
      {
        v13 = off_278C9DF08[(v7 - 1)];
      }

      *v14 = 136315394;
      *&v14[4] = "Precondition was violated";
      *&v14[12] = 2080;
      *&v14[14] = v13;
      _os_log_error_impl(&dword_2401B8000, v8, OS_LOG_TYPE_ERROR, "Running m_timeDiff.update(timestamp) failed with %s, returning %s", v14, 0x16u);
    }
  }

  else
  {
    if (*(a1 + 48))
    {
      v9 = *(a1 + 8);
      v10 = 1.0;
      if (v9 > 0.0)
      {
        v10 = 1.0 - exp(-*(a1 + 40) / v9);
      }

      v7 = 0;
      v11 = *a1 + (v10 * (*a2 - *a1));
    }

    else
    {
      v7 = 0;
      v11 = *a2;
    }

    *a1 = v11;
  }

  return v7;
}

void sub_2401F2480(uint64_t a1, __int128 *a2, float32x4_t a3, double a4, double a5, double a6, __n128 a7, float32x4_t a8)
{
  a8.i32[0] = 1127481344;
  v8 = a8;
  v8.i32[1] = 0;
  v8.i32[2] = *(a1 + 528);
  v43 = *a2;
  *&v44 = *(a2 + 2);
  DWORD2(v44) = 1;
  if ((BYTE12(v43) & 1) == 0)
  {
    return;
  }

  v10 = *(a1 + 296);
  if (!v10)
  {
    v33 = v8;
    v34 = a3;
    *&v38.value = *a2;
    v38.epoch = *(a2 + 2);
    memset(&v47, 0, sizeof(v47));
    CMTimeMakeWithSeconds(&v47, *(a1 + 272), 1000000);
LABEL_8:
    memset(&v46, 0, sizeof(v46));
    lhs = v38;
    rhs = v47;
    CMTimeSubtract(&v46, &lhs, &rhs);
    lhs = v46;
    v42 = 1;
    a3 = v34;
    v8 = v33;
    goto LABEL_9;
  }

  if (v10 != 1)
  {
    v32 = sub_2401F0C48();
    sub_2401F28CC(v32);
    return;
  }

  if (*(a1 + 284))
  {
    v33 = v8;
    v34 = a3;
    *&v38.value = *a2;
    v38.epoch = *(a2 + 2);
    v47.value = 0;
    *&v47.timescale = 0;
    v47 = *(a1 + 272);
    goto LABEL_8;
  }

  v42 = 0;
  lhs.value = 0x7FF8000000000000;
LABEL_9:
  v11 = vsubq_f32(a3, v8);
  a7.n128_u64[0] = vmla_f32(*v11.f32, vdup_n_s32(0xC3B40000), vrndm_f32(vdiv_f32(vadd_f32(*v11.f32, vdup_n_s32(0x43340000u)), vdup_n_s32(0x43B40000u))));
  v35 = v11.f32[2] + (floorf((v11.f32[2] + 180.0) / 360.0) * -360.0);
  v36 = a7;
  v12 = *(a1 + 332);
  if (v12 >= 1)
  {
    v13 = *(a1 + 328);
    v14 = *(a1 + 304);
    while (sub_240269ECC(v14 + 48 * v13 + 16, &lhs) == 0xFF)
    {
      v14 = *(a1 + 304);
      v13 = (*(a1 + 328) + 1) % (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 312) - v14) >> 4));
      *(a1 + 328) = v13;
      v15 = *(a1 + 332);
      v16 = __OFSUB__(v15, 1);
      v12 = v15 - 1;
      *(a1 + 332) = v12;
      if ((v12 < 0) ^ v16 | (v12 == 0))
      {
        goto LABEL_16;
      }
    }

    v12 = *(a1 + 332);
LABEL_16:
    a7 = v36;
  }

  v17 = *(a1 + 304);
  if (v12 > 0)
  {
    v18 = *(a1 + 328) + v12;
    v19 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 312) - v17) >> 4);
    v20 = (v19 + (~(v18 / v19 * v19) + v18)) % v19;
    do
    {
      v21 = sub_240269ECC(&v43, v17 + 48 * v20 + 16);
      v12 = *(a1 + 332);
      v17 = *(a1 + 304);
      if (v21 != -1)
      {
        break;
      }

      v22 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 312) - v17) >> 4);
      v20 = (v22 + (((v20 << 32) - 0x100000000) >> 32)) % v22;
      v16 = __OFSUB__(v12--, 1);
      *(a1 + 332) = v12;
    }

    while (!((v12 < 0) ^ v16 | (v12 == 0)));
    a7 = v36;
  }

  a7.n128_f32[2] = v35;
  v23 = v12;
  v24 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 312) - v17) >> 4);
  if (v24 == v12)
  {
    v25 = __CFADD__(v12, 1);
    v26 = v12 + 1;
    v37 = a7;
    if (v25)
    {
      v28 = v17 + 48 * v26;
      *(a1 + 312) = v28;
    }

    else
    {
      sub_2401F1A3C(a1 + 304, v26 - v23);
      v17 = *(a1 + 304);
      v28 = *(a1 + 312);
    }

    v29 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 320) - v17) >> 4);
    v30 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v17) >> 4);
    if (v29 <= v30)
    {
      if (v29 < v30)
      {
        v28 = *(a1 + 320);
        *(a1 + 312) = v28;
      }
    }

    else
    {
      sub_2401F1A3C(a1 + 304, v29 - v30);
      v17 = *(a1 + 304);
      v28 = *(a1 + 312);
    }

    a7 = v37;
    v27 = *(a1 + 328);
    v12 = *(a1 + 332);
    if (v27)
    {
      if (v12 == v27)
      {
        v12 = *(a1 + 328);
      }

      else
      {
        memmove((v28 - 48 * (v12 - v27)), (v17 + 48 * v27), 48 * (v12 - v27));
        a7 = v37;
        v17 = *(a1 + 304);
        v28 = *(a1 + 312);
        v12 = *(a1 + 332);
        v27 = *(a1 + 328);
      }

      v24 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v17) >> 4);
      v27 = v27 - v12 + v24;
      *(a1 + 328) = v27;
    }

    else
    {
      v24 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v17) >> 4);
    }
  }

  else
  {
    v27 = *(a1 + 328);
  }

  v39 = v43;
  v40 = v44;
  v31 = v17 + 48 * ((v12 + v27) % v24);
  *v31 = a7;
  *(v31 + 16) = v39;
  *(v31 + 32) = v40;
  ++*(a1 + 332);
}

uint64_t sub_2401F28CC(uint64_t a1, float32x4_t *a2, int a3, CMTime *a4, float a5, float a6)
{
  v109 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 497) & 1) == 0)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v11 = qword_280C03850;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v11, OS_LOG_TYPE_ERROR, "Precondition violated: isValid()", buf, 2u);
    }

    goto LABEL_15;
  }

  if (a6 <= 0.0)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v11 = qword_280C03850;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2401B8000, v11, OS_LOG_TYPE_ERROR, "Precondition violated: faceDistanceFadeoutThresholdsMultiplier > 0.f", buf, 2u);
    }

LABEL_15:

    return 1;
  }

  *(a1 + 528) = roundf(a5 / 90.0) * 90.0;
  if (*(a1 + 40) == a2[1].u8[8])
  {
    if (*(a1 + 40))
    {
      if ((a1 + 16) != a2)
      {
        *(a1 + 16) = a2->i64[0];
        *(a1 + 24) = a2->i64[1];
      }

      *(a1 + 32) = a2[1].i64[0];
    }
  }

  else if (*(a1 + 40))
  {
    *(a1 + 40) = 0;
  }

  else
  {
    *(a1 + 16) = a2->i64[0];
    *(a1 + 24) = a2->i64[1];
    *(a1 + 32) = a2[1].i64[0];
    *(a1 + 40) = 1;
  }

  if (a2[1].i8[8] != 1)
  {
    goto LABEL_77;
  }

  *(a1 + 64) = 0x3FD3333333333333;
  *buf = *&a4->value;
  *&buf[16] = a4->epoch;
  v14 = sub_2401CF9D8(a1 + 72, buf);
  v16 = v14 != 0;
  if (v14)
  {
    v17 = v14;
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v12 = (2 * v16);
    v18 = qword_280C03850;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v60 = off_278C9DF08[v17 - 1];
      if ((v12 - 1) > 7)
      {
        v61 = "Success, no error";
      }

      else
      {
        v61 = off_278C9DF08[(v12 - 1)];
      }

      *buf = 136315394;
      *&buf[4] = v60;
      *&buf[12] = 2080;
      *&buf[14] = v61;
      _os_log_error_impl(&dword_2401B8000, v18, OS_LOG_TYPE_ERROR, "Running m_timeDiff.update(timestamp) failed with %s, returning %s", buf, 0x16u);
    }

    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v19 = qword_280C03850;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v62 = off_278C9DF08[(v12 - 1)];
      *buf = 136315394;
      *&buf[4] = v62;
      *&buf[12] = 2080;
      *&buf[14] = v62;
      _os_log_error_impl(&dword_2401B8000, v19, OS_LOG_TYPE_ERROR, "Running m_position.update(face->position, timestamp) failed with %s, returning %s", buf, 0x16u);
    }

    return v12;
  }

  v20 = (a1 + 48);
  if (*(a1 + 104))
  {
    v21 = *(a1 + 64);
    v22 = 1.0;
    if (v21 > 0.0)
    {
      v22 = 1.0 - exp(-*(a1 + 96) / v21);
    }

    *v20 = vaddq_f32(vmulq_n_f32(*v20, 1.0 - v22), vmulq_n_f32(*a2, v22));
  }

  else if (v20 != a2)
  {
    *(a1 + 48) = a2->i64[0];
    *(a1 + 56) = a2->i64[1];
  }

  *(a1 + 544) = 0x3FE0000000000000;
  v23 = a2->f32[1];
  v25 = a2->f32[2];
  v24 = a2->f32[3];
  *&v26 = v23 + (v24 * 0.5);
  v15.f32[0] = a2->f32[0] + (v25 * 0.5);
  v27 = v15;
  v27.f32[1] = v23;
  v15.f32[1] = v23 + v24;
  v104 = v27;
  v105 = v15;
  __asm { FMOV            V1.4S, #1.0 }

  v32.i64[1] = _Q1.i64[1];
  v32.i32[0] = a2->i32[0];
  *&v33 = a2->f32[0] + v25;
  v32.i32[1] = v26;
  v34 = vmulq_f32(v32, v32);
  *&v35 = v34.f32[2] + vaddv_f32(*v34.f32);
  *v34.f32 = vrsqrte_f32(v35);
  *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32)));
  v36 = vmulq_n_f32(v32, vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32))).f32[0]);
  _Q1.i64[0] = __PAIR64__(v26, v33);
  v37 = vmulq_f32(_Q1, _Q1);
  v34.f32[0] = v37.f32[2] + vaddv_f32(*v37.f32);
  *v37.f32 = vrsqrte_f32(v34.u32[0]);
  *v37.f32 = vmul_f32(*v37.f32, vrsqrts_f32(v34.u32[0], vmul_f32(*v37.f32, *v37.f32)));
  v38 = vmulq_f32(v36, vmulq_n_f32(_Q1, vmul_f32(*v37.f32, vrsqrts_f32(v34.u32[0], vmul_f32(*v37.f32, *v37.f32))).f32[0]));
  v39 = acosf(v38.f32[2] + vaddv_f32(*v38.f32));
  v40 = v104;
  v40.i32[2] = 1.0;
  v41 = vmulq_f32(v40, v40);
  v42 = v40;
  v40.f32[0] = v41.f32[2] + vaddv_f32(*v41.f32);
  *v41.f32 = vrsqrte_f32(v40.u32[0]);
  *v41.f32 = vmul_f32(*v41.f32, vrsqrts_f32(v40.u32[0], vmul_f32(*v41.f32, *v41.f32)));
  v43 = vmulq_n_f32(v42, vmul_f32(*v41.f32, vrsqrts_f32(v40.u32[0], vmul_f32(*v41.f32, *v41.f32))).f32[0]);
  v44 = v105;
  v44.i32[2] = 1.0;
  v45 = vmulq_f32(v44, v44);
  v42.f32[0] = v45.f32[2] + vaddv_f32(*v45.f32);
  *v45.f32 = vrsqrte_f32(v42.u32[0]);
  *v45.f32 = vmul_f32(*v45.f32, vrsqrts_f32(v42.u32[0], vmul_f32(*v45.f32, *v45.f32)));
  v46 = vmulq_f32(v43, vmulq_n_f32(v44, vmul_f32(*v45.f32, vrsqrts_f32(v42.u32[0], vmul_f32(*v45.f32, *v45.f32))).f32[0]));
  v47 = acosf(v46.f32[2] + vaddv_f32(*v46.f32));
  if (v39 >= v47)
  {
    v47 = v39;
  }

  LODWORD(lhs.value) = fminf(10.0 / tanf(v47 * 0.5), 1000.0);
  *buf = *&a4->value;
  *&buf[16] = a4->epoch;
  v48 = sub_2401F22B8(a1 + 536, &lhs, buf);
  v49 = v48 - 1;
  if (v48 == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = v48;
  }

  if (v48)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v50 = qword_280C03850;
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    v51 = off_278C9DF08[v49];
    v52 = off_278C9DF08[(v12 - 1)];
    *buf = 136315394;
    *&buf[4] = v51;
    *&buf[12] = 2080;
    *&buf[14] = v52;
    v53 = "Running m_distanceCm.update(distance_cm, timestamp) failed with %s, returning %s";
    goto LABEL_132;
  }

  *buf = *&a4->value;
  *&buf[16] = a4->epoch;
  v54 = sub_2401CF9D8(a1 + 456, buf);
  if (v54)
  {
    v12 = 2 * (v54 != 0);
    v50 = sub_2401F3718();
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
LABEL_45:

      return v12;
    }

    if ((v12 - 1) > 7)
    {
      v103 = "Success, no error";
    }

    else
    {
      v103 = off_278C9DF08[(v12 - 1)];
    }

    *buf = 136315394;
    *&buf[4] = "Precondition was violated";
    *&buf[12] = 2080;
    *&buf[14] = v103;
    v53 = "Running m_timeDiff.update(timestamp) failed with %s, returning %s";
LABEL_132:
    _os_log_error_impl(&dword_2401B8000, v50, OS_LOG_TYPE_ERROR, v53, buf, 0x16u);
    goto LABEL_45;
  }

  if (*(a1 + 488))
  {
    v55 = a2[1].f32[0];
      ;
    }

      ;
    }

    v57 = fabsf(i);
    if (v57 > 75.0)
    {
      v58 = sub_2401F3718();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        *&buf[4] = v57;
        *&buf[12] = 2048;
        *&buf[14] = 0x4052C00000000000;
        _os_log_impl(&dword_2401B8000, v58, OS_LOG_TYPE_DEFAULT, "Roll angle diff (%f) was larger than expected (%f)", buf, 0x16u);
      }

      if ((*(a1 + 524) & 1) == 0)
      {
        v59 = *&a4->value;
        *(a1 + 516) = a4->epoch;
        *(a1 + 500) = v59;
        *(a1 + 524) = 1;
      }

      goto LABEL_77;
    }

    if (*(a1 + 524) == 1)
    {
      *(a1 + 524) = 0;
    }
  }

  else
  {
    if (*(a1 + 524))
    {
      goto LABEL_77;
    }

    v55 = a2[1].f32[0];
  }

  v63 = fabsf((v55 - *(a1 + 528)) + (floorf(((v55 - *(a1 + 528)) + 180.0) / 360.0) * -360.0));
  _NF = fabsf(a2[1].f32[1]) < 90.0 && v63 < 60.0;
  v65 = _NF;
  *buf = *&a4->value;
  *&buf[16] = a4->epoch;
  v66 = sub_2401CFC08(a1 + 592, v65, buf);
  v67 = v66 - 1;
  if (v66 == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = v66;
  }

  if (v66)
  {
    v50 = sub_2401F3718();
    if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_45;
    }

    v68 = off_278C9DF08[v67];
    v69 = off_278C9DF08[(v12 - 1)];
    *buf = 136315394;
    *&buf[4] = v68;
    *&buf[12] = 2080;
    *&buf[14] = v69;
    v53 = "Running m_coarseHeadPoseCorrectionStrength.update(headPoseInValidRange, timestamp) failed with %s, returning %s";
    goto LABEL_132;
  }

  *(a1 + 112) = a2[1].i32[0];
LABEL_77:
  if (*(a1 + 524) == 1 && (*(a1 + 496) & 1) == 0)
  {
    lhs = *a4;
    rhs = *(a1 + 500);
    CMTimeSubtract(buf, &lhs, &rhs);
    if (CMTimeGetSeconds(buf) >= 0.25)
    {
      v70 = sub_2401F3718();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2401B8000, v70, OS_LOG_TYPE_DEFAULT, "Roll angle did not recover. Disabling correction.", buf, 2u);
      }

      *(a1 + 496) = 1;
    }
  }

  if (*(a1 + 400) >= 1.0)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v71 = qword_280C03850;
    if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
    {
      memset(buf, 0, sizeof(buf));
      uuid_unparse_upper(a1, buf);
      operator new();
    }

    *(a1 + 496) = 1;
  }

  v72 = 0;
  *(a1 + 648) = a6;
  if (a2[1].i8[8] == 1 && a3)
  {
    v72 = *(a1 + 496) ^ 1;
  }

  *buf = *&a4->value;
  *&buf[16] = a4->epoch;
  v73 = sub_2401CFC08(a1 + 336, v72 & 1, buf);
  v74 = v73 - 1;
  if (v73 == 1)
  {
    v12 = 2;
  }

  else
  {
    v12 = v73;
  }

  if (v73)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v75 = qword_280C03850;
    if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
    {
      v101 = off_278C9DF08[v74];
      v102 = off_278C9DF08[(v12 - 1)];
      *buf = 136315394;
      *&buf[4] = v101;
      *&buf[12] = 2080;
      *&buf[14] = v102;
      _os_log_error_impl(&dword_2401B8000, v75, OS_LOG_TYPE_ERROR, "Running m_trackingTimedSmoothStep.update(successfulTracking, timestamp) failed with %s, returning %s", buf, 0x16u);
    }
  }

  else
  {
    if (*(a1 + 496) == 1)
    {
      v76 = sub_2401F1BD8(a1);
      v78 = *(a1 + 332);
      if (v78)
      {
        if (v78 < 1)
        {
          v81 = 0uLL;
        }

        else
        {
          v79 = *(a1 + 328);
          v80 = *(a1 + 304);
          v81 = 0uLL;
          v82 = *(a1 + 332);
          do
          {
            v77 = *(v80 + 48 * v79);
            v81 = vaddq_f32(v81, v77);
            v79 = (v79 + 1) % (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 312) - v80) >> 4));
            --v82;
          }

          while (v82);
        }

        v77.f32[0] = v78;
        v87 = vdivq_f32(v81, vdupq_lane_s32(*v77.f32, 0));
      }

      else
      {
        v87.i64[0] = 0;
        v87.i32[2] = 0;
      }

      v12 = 0;
      v88 = (fabsf(v87.f32[2]) + -30.0) / 15.0;
      if (v88 <= 1.0)
      {
        v89 = v88;
      }

      else
      {
        v89 = 1.0;
      }

      v90 = 1.0 - v89;
      v91 = vdiv_f32(vadd_f32(vabs_f32(*v87.f32), 0xC1600000C1F00000), 0x4160000041700000);
      __asm { FMOV            V6.2S, #1.0 }

      v93 = vbsl_s8(vcltz_f32(v91), _D6, vsub_f32(_D6, vbsl_s8(vcgt_f32(v91, _D6), _D6, v91)));
      LODWORD(v94) = vmul_lane_f32(v93, v93, 1).u32[0];
      if (v88 >= 0.0)
      {
        v95 = v90;
      }

      else
      {
        v95 = 1.0;
      }

      v96 = v76 * (v95 * v94);
      v97 = (*(a1 + 400) + -0.1875) * 8.0;
      if (v97 <= 1.0)
      {
        v98 = (*(a1 + 400) + -0.1875) * 8.0;
      }

      else
      {
        v98 = 1.0;
      }

      v99 = 1.0 - v98;
      if (v97 >= 0.0)
      {
        v100 = v99;
      }

      else
      {
        v100 = 1.0;
      }

      v83 = (v96 * v100) > 0.0;
    }

    else
    {
      if (v72)
      {
        v83 = 1;
      }

      else
      {
        v84 = *(a1 + 348) + *(a1 + 348);
        _NF = v84 < 1.0;
        v85 = (((v84 + -1.0) * ((v84 + -1.0) + -2.0)) + -1.0) * -0.5;
        v86 = v84 * (v84 * 0.5);
        if (!_NF)
        {
          v86 = v85;
        }

        v83 = v86 > 0.0;
      }

      v12 = 0;
    }

    *(a1 + 497) = v83;
  }

  return v12;
}

uint64_t sub_2401F3718()
{
  if (atomic_load_explicit(&qword_280C03940, memory_order_acquire))
  {
    return qword_280C03850;
  }

  v1 = __cxa_guard_acquire(&qword_280C03940);
  v2 = 0x280C03000;
  if (v1)
  {
    qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
    __cxa_guard_release(&qword_280C03940);
    v2 = 0x280C03000uLL;
  }

  return *(v2 + 2128);
}

void sub_2401F3FC4(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRelease(v3);
      *(v2 + 8) = 0;
    }

    MEMORY[0x245CBCA30](v2, 0xA0C40BD48D6D6);
  }

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_2401F405C(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      CFRelease(v3);
      *(v2 + 8) = 0;
    }

    MEMORY[0x245CBCA30](v2, 0xA0C40BD48D6D6);
  }

  return a1;
}

uint64_t sub_2401F40D4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, simd_float3x3 *a6, void *a7, void *a8)
{
  v89 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  v20 = v19;
  if (!v15 || !v16 || !v19)
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v67 = qword_280C03850;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v83.columns[0].i16[0] = 0;
      _os_log_error_impl(&dword_2401B8000, v67, OS_LOG_TYPE_ERROR, "Inputs must not be nil", &v83, 2u);
    }

    goto LABEL_42;
  }

  if (![v15 width] || !objc_msgSend(v15, "height") || (v21 = objc_msgSend(v15, "width"), v21 != 2 * objc_msgSend(v16, "width")) || (v22 = objc_msgSend(v15, "height"), v22 != 2 * objc_msgSend(v16, "height")))
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v67 = qword_280C03850;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v83.columns[0].i16[0] = 0;
      _os_log_error_impl(&dword_2401B8000, v67, OS_LOG_TYPE_ERROR, "YCBCr texture sizes invalid / not matching", &v83, 2u);
    }

    goto LABEL_42;
  }

  if (![v17 width] || !objc_msgSend(v17, "height") || (v23 = objc_msgSend(v17, "width"), v23 != objc_msgSend(v18, "width")) || (v24 = objc_msgSend(v17, "height"), v24 != objc_msgSend(v18, "height")))
  {
    if ((atomic_load_explicit(&qword_280C03940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03940))
    {
      qword_280C03850 = os_log_create("com.apple.AppleCVA", "ViewpointCorrection");
      __cxa_guard_release(&qword_280C03940);
    }

    v67 = qword_280C03850;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v83.columns[0].i16[0] = 0;
      _os_log_error_impl(&dword_2401B8000, v67, OS_LOG_TYPE_ERROR, "Flow texture sizes invalid / not matching", &v83, 2u);
    }

    goto LABEL_42;
  }

  v25 = [v17 width];
  if (v25 != [v17 height])
  {
    v67 = sub_2401F3718();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v83.columns[0].i16[0] = 0;
      _os_log_error_impl(&dword_2401B8000, v67, OS_LOG_TYPE_ERROR, "Currently we only support square flows", &v83, 2u);
    }

LABEL_42:

    v62 = 1;
    goto LABEL_43;
  }

  v83 = __invert_f3(*a6);
  v26 = [a7 contents];
  v27 = a6->columns[0];
  v28 = a6->columns[2];
  v26[2] = a6->columns[1];
  v26[3] = v28;
  v26[1] = v27;
  v29 = [a7 contents];
  v30 = v83.columns[1];
  *(v29 + 64) = v83.columns[0];
  *(v29 + 80) = v30;
  *(v29 + 96) = v83.columns[2];
  v85 = 0;
  v31 = [v17 height];
  LODWORD(v32) = 0;
  *(&v32 + 1) = v31;
  v86 = v32;
  v33 = [v17 width];
  v34 = [v17 height];
  *&v35 = v33;
  *(&v35 + 1) = v34;
  v87 = v35;
  v88 = COERCE_UNSIGNED_INT([v17 width]);
  sub_2401F4D18(buf, 4uLL);
  v36 = *buf;
  sub_2401F49EC(&v80, *buf, *&buf[8]);
  *&v40 = sub_2401EE210(v80, v81, v37, v38, v39);
  v42 = v41;
  v44 = v43;
  if (v36)
  {
    operator delete(v36);
  }

  v45 = [v15 width];
  v46 = floorf(fmaxf(*&v42, 0.0) * 0.5);
  LODWORD(v47) = (v46 + v46);
  if (v45 >= v47)
  {
    v47 = v47;
  }

  else
  {
    v47 = v45;
  }

  v76 = v47;
  v48 = [v15 height];
  v49 = *(&v42 + 1);
  v50 = floorf(fmaxf(*(&v42 + 1), 0.0) * 0.5);
  v51 = (v50 + v50);
  if (v48 >= v51)
  {
    v52 = v51;
  }

  else
  {
    v52 = v48;
  }

  *[a7 contents] = __PAIR64__(v52, v76);
  v53 = [v15 width];
  v54 = ceilf(fmaxf((*&v42 + v44) - v76, 0.0) * 0.5);
  v55 = (v54 + v54);
  if (v53 - v76 >= v55)
  {
    v56 = v55;
  }

  else
  {
    v56 = (v53 - v76);
  }

  v57 = [v15 height];
  v58 = ceilf(fmaxf((v44 + v49) - v52, 0.0) * 0.5);
  LODWORD(v59) = (v58 + v58);
  if (v57 - v52 >= v59)
  {
    v59 = v59;
  }

  else
  {
    v59 = (v57 - v52);
  }

  v75 = v59;
  if (v59 * v56)
  {
    sub_2401F1324(*(a1 + 8), v15, (a1 + 16));
    sub_2401F1324(*(a1 + 8), v16, (a1 + 24));
    v60 = [v20 computeCommandEncoder];
    [v60 setLabel:@"FlowWarper"];
    if (v60)
    {
      [v60 setComputePipelineState:*a1];
      [v60 setTexture:v15 atIndex:0];
      [v60 setTexture:v16 atIndex:1];
      [v60 setTexture:*(a1 + 16) atIndex:2];
      [v60 setTexture:*(a1 + 24) atIndex:3];
      [v60 setTexture:v17 atIndex:4];
      [v60 setTexture:v18 atIndex:5];
      [v60 setBuffer:a7 offset:0 atIndex:0];
      v73 = v56;
      v61 = sub_2401F18DC(v60, *a1, v56, v75);
      if (v61 == 1)
      {
        v62 = 2;
      }

      else
      {
        v62 = v61;
      }

      if (v61)
      {
        v63 = v61 - 1;
        v64 = sub_2401F3718();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v65 = off_278C9DF08[v63];
          v66 = off_278C9DF08[(v62 - 1)];
          *buf = 136315394;
          *&buf[4] = v65;
          *&buf[12] = 2080;
          *&buf[14] = v66;
          _os_log_error_impl(&dword_2401B8000, v64, OS_LOG_TYPE_ERROR, "Running m_metalHelpers->runComputeEncoder(computeEncoder, m_pipeline, cropWidth, cropHeight) failed with %s, returning %s", buf, 0x16u);
        }

        goto LABEL_57;
      }

      [v60 endEncoding];
      v74 = [v20 blitCommandEncoder];
      [v74 setLabel:@"TextureCopy"];
      if (v74)
      {
        v69 = *(a1 + 16);
        *buf = v76;
        *&buf[8] = v52;
        *&buf[16] = 0;
        v80 = v73;
        v81 = v75;
        v82 = [v15 depth];
        v77 = v76;
        v78 = v52;
        v79 = 0;
        [v74 copyFromTexture:v69 sourceSlice:0 sourceLevel:0 sourceOrigin:buf sourceSize:&v80 toTexture:v15 destinationSlice:0 destinationLevel:0 destinationOrigin:&v77];
        v70 = *(a1 + 24);
        v71 = v52 >> 1;
        *buf = v76 >> 1;
        *&buf[8] = v71;
        *&buf[16] = 0;
        v80 = v73 >> 1;
        v81 = (v75 >> 1);
        v82 = [v16 depth];
        v77 = v76 >> 1;
        v78 = v71;
        v79 = 0;
        [v74 copyFromTexture:v70 sourceSlice:0 sourceLevel:0 sourceOrigin:buf sourceSize:&v80 toTexture:v16 destinationSlice:0 destinationLevel:0 destinationOrigin:&v77];
        [v74 endEncoding];
        v62 = 0;
        v64 = v74;
        goto LABEL_57;
      }

      v72 = sub_2401F3718();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2401B8000, v72, OS_LOG_TYPE_ERROR, "Could not create blitCommandEncoder", buf, 2u);
      }

      v64 = 0;
    }

    else
    {
      v64 = sub_2401F3718();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2401B8000, v64, OS_LOG_TYPE_ERROR, "Could not create computeCommandEncoder", buf, 2u);
      }
    }

    v62 = 6;
LABEL_57:

    goto LABEL_43;
  }

  v62 = 0;
LABEL_43:

  return v62;
}

uint64_t *sub_2401F49EC(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = (a3 - a2) >> 3;
  if (v3 < 0 || (*result = v3, (result[1] = a2) == 0) && a3)
  {
    sub_2401E3818();
  }

  return result;
}

__n64 sub_2401F4A44(uint64_t a1, uint64_t *a2)
{
  if (a2[1] == a1)
  {
    v14 = 0.0;
    v12 = 0u;
    v13 = 0u;
    sub_2401F4A44(&v12);
    result.n64_u64[0] = v12;
    v11 = v13;
    *a1 = v12;
    *(a1 + 16) = v11;
    *(a1 + 32) = v14;
  }

  else
  {
    v3 = *a2;
    v12 = 0u;
    v13 = 0u;
    v14 = 0.0;
    sub_2401F4BB4(&v12, v3);
    v5 = a2[1];
    result.n64_u32[1] = 0;
    v6 = v12;
    v7 = *(&v13 + 1);
    *a1 = (((*&v12 * *v5) + 0.0) + (*(&v12 + 3) * v5[1])) + (*(&v13 + 2) * v5[2]);
    v8 = v13;
    *(a1 + 4) = (((*(&v6 + 1) * *v5) + 0.0) + (*&v13 * v5[1])) + (*(&v7 + 1) * v5[2]);
    v9 = v14;
    *(a1 + 8) = (((*(&v6 + 2) * *v5) + 0.0) + (*(&v8 + 1) * v5[1])) + (v14 * v5[2]);
    *(a1 + 12) = (((*&v6 * v5[3]) + 0.0) + (*(&v6 + 3) * v5[4])) + (*&v7 * v5[5]);
    *(a1 + 16) = (((*(&v6 + 1) * v5[3]) + 0.0) + (*&v8 * v5[4])) + (*(&v7 + 1) * v5[5]);
    *(a1 + 20) = (((*(&v6 + 2) * v5[3]) + 0.0) + (*(&v8 + 1) * v5[4])) + (v9 * v5[5]);
    *(a1 + 24) = (((*&v6 * v5[6]) + 0.0) + (*(&v6 + 3) * v5[7])) + (*&v7 * v5[8]);
    *(a1 + 28) = (((*(&v6 + 1) * v5[6]) + 0.0) + (*&v8 * v5[7])) + (*(&v7 + 1) * v5[8]);
    result.n64_f32[0] = (((*(&v6 + 2) * v5[6]) + 0.0) + (*(&v8 + 1) * v5[7])) + (v9 * v5[8]);
    *(a1 + 32) = result.n64_u32[0];
  }

  return result;
}

__n64 sub_2401F4BB4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == a1)
  {
    v13 = 0.0;
    v11 = 0u;
    v12 = 0u;
    sub_2401F4BB4(&v11);
    result.n64_u64[0] = v11;
    v10 = v12;
    *a1 = v11;
    *(a1 + 16) = v10;
    *(a1 + 32) = v13;
  }

  else
  {
    v4 = *a2;
    v11 = 0u;
    v12 = 0u;
    v13 = 0.0;
    sub_2401EDF8C(&v11, v4);
    result.n64_u32[1] = 0;
    v5 = v11;
    v6 = *(&v12 + 1);
    *a1 = (((*&v11 * *v3) + 0.0) + (*(&v11 + 3) * v3[1])) + (*(&v12 + 2) * v3[2]);
    v7 = v12;
    *(a1 + 4) = (((*(&v5 + 1) * *v3) + 0.0) + (*&v12 * v3[1])) + (*(&v6 + 1) * v3[2]);
    v8 = v13;
    *(a1 + 8) = (((*(&v5 + 2) * *v3) + 0.0) + (*(&v7 + 1) * v3[1])) + (v13 * v3[2]);
    *(a1 + 12) = (((*&v5 * v3[3]) + 0.0) + (*(&v5 + 3) * v3[4])) + (*&v6 * v3[5]);
    *(a1 + 16) = (((*(&v5 + 1) * v3[3]) + 0.0) + (*&v7 * v3[4])) + (*(&v6 + 1) * v3[5]);
    *(a1 + 20) = (((*(&v5 + 2) * v3[3]) + 0.0) + (*(&v7 + 1) * v3[4])) + (v8 * v3[5]);
    *(a1 + 24) = (((*&v5 * v3[6]) + 0.0) + (*(&v5 + 3) * v3[7])) + (*&v6 * v3[8]);
    *(a1 + 28) = (((*(&v5 + 1) * v3[6]) + 0.0) + (*&v7 * v3[7])) + (*(&v6 + 1) * v3[8]);
    result.n64_f32[0] = (((*(&v5 + 2) * v3[6]) + 0.0) + (*(&v7 + 1) * v3[7])) + (v8 * v3[8]);
    *(a1 + 32) = result.n64_u32[0];
  }

  return result;
}

void *sub_2401F4D18(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_2401BDE28();
  }

  return result;
}

void sub_2401F4DD8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = a4;
  operator new();
}

void sub_2401F536C(_Unwind_Exception *a1, uint64_t a2, void *a3, void *a4, ...)
{
  va_start(va, a4);

  sub_2401F53D8(va);
  _Unwind_Resume(a1);
}

id **sub_2401F53D8(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;

    MEMORY[0x245CBCA30](v1, 0x80C40803F642BLL);
    return v2;
  }

  return result;
}

void ***sub_2401F5430(void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *v1;
    if (*v1)
    {
      v4 = v1[1];
      v5 = *v1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          if (v6)
          {
            if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v6->__on_zero_shared)(v6);
              std::__shared_weak_count::__release_weak(v6);
            }
          }

          v4 -= 16;
        }

        while (v4 != v3);
        v5 = *v1;
      }

      v1[1] = v3;
      operator delete(v5);
    }

    MEMORY[0x245CBCA30](v1, 0x1020C4016EE4530);
    return v2;
  }

  return result;
}

void sub_2401F5508(uint64_t **a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *v4;
  v6 = v4[1];
  if (*(v4 + 6) <= ((v6 - *v4) >> 4))
  {
    DWORD2(v17) = 0;
    *&v16 = 0x7FF8000000000000;
    if (v6 != v5)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v11 = **(v5 + v7);
        if (*(v11 + 24) != *(v11 + 32))
        {
          if (DWORD2(v17))
          {
            if (DWORD2(v17) != 1)
            {
              v4 = sub_2401F0C48();
              goto LABEL_4;
            }

            if ((BYTE12(v16) & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          if (sub_240269ECC(v11 + 88, &v16) == 0xFF)
          {
LABEL_7:
            v10 = *(v11 + 104);
            v16 = *(v11 + 88);
            v17 = v10;
            v8 = v9;
          }
        }

        ++v9;
        v5 = **a1;
        v7 += 16;
        if (v9 >= ((*a1)[1] - v5) >> 4)
        {
          goto LABEL_16;
        }
      }
    }

    v8 = 0;
LABEL_16:
    v12 = (v5 + 16 * v8);
    v14 = *a2;
    v13 = *(a2 + 1);
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v15 = v12[1];
    *v12 = v14;
    v12[1] = v13;
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);

      std::__shared_weak_count::__release_weak(v15);
    }
  }

  else
  {

LABEL_4:
    sub_2401F56D0(v4, a2);
  }
}

void sub_2401F56D0(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = (v3 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      sub_2401BDE28();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      sub_2401BDE28();
    }

    v11 = 16 * v7;
    v12 = *a2;
    *(16 * v7) = *a2;
    if (*(&v12 + 1))
    {
      atomic_fetch_add_explicit((*(&v12 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v6 = (v11 + 16);
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = v11 - v14;
    memcpy((v11 - v14), *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    v5 = *(a2 + 1);
    *v3 = *a2;
    v3[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = v3 + 2;
  }

  *(a1 + 8) = v6;
}

void sub_2401F57F8(uint64_t a1, void *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = (a2 - 2);
  v114 = (a2 - 6);
  v115 = (a2 - 4);
  v9 = a1;
  v119 = a2;
  while (1)
  {
    a1 = v9;
    v10 = (a2 - v9) >> 4;
    v11 = v10 - 2;
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          sub_2401F662C(v9, (v9 + 16), v8);
          return;
        case 4:
          sub_2401F662C(v9, (v9 + 16), (v9 + 32));
          if (sub_240269ECC(**v8 + 88, **(v9 + 32) + 88) == 1)
          {
            v47 = *(v9 + 32);
            *(v9 + 32) = *v8;
            *v8 = v47;
            if (sub_240269ECC(**(v9 + 32) + 88, **(v9 + 16) + 88) == 1)
            {
              v49 = *(v9 + 16);
              v48 = *(v9 + 32);
              *(v9 + 16) = v48;
              *(v9 + 32) = v49;
              if (sub_240269ECC(*v48 + 88, **v9 + 88) == 1)
              {
                v50 = *v9;
                *v9 = *(v9 + 16);
                *(v9 + 16) = v50;
              }
            }
          }

          return;
        case 5:

          sub_2401F6780(v9, (v9 + 16), (v9 + 32), (v9 + 48), v8);
          return;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v45 = sub_240269ECC(**v8 + 88, **v9 + 88);
        if (v45 == 1)
        {
          v46 = *v9;
          *v9 = *v8;
          *v8 = v46;
        }

        return;
      }
    }

    if (v10 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (v9 == a2)
      {
        return;
      }

      v67 = v11 >> 1;
      v68 = v11 >> 1;
      do
      {
        v69 = v68;
        if (v67 >= v68)
        {
          v70 = (2 * v68) | 1;
          v71 = a1 + 16 * v70;
          if (2 * v68 + 2 < v10)
          {
            v72 = sub_240269ECC(**v71 + 88, **(v71 + 16) + 88);
            if (v72 == 1)
            {
              v71 += 16;
            }

            a2 = v119;
            if (v72 == 1)
            {
              v70 = 2 * v69 + 2;
            }
          }

          v73 = a1 + 16 * v69;
          if (sub_240269ECC(**v71 + 88, **v73 + 88) != 1)
          {
            v74 = *v73;
            *v73 = 0;
            *(v73 + 8) = 0;
            v118 = v74;
            v75 = v74;
            do
            {
              v76 = v71;
              v77 = *v71;
              *v71 = 0;
              *(v71 + 8) = 0;
              v78 = *(v73 + 8);
              *v73 = v77;
              if (v78 && !atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v78->__on_zero_shared)(v78);
                std::__shared_weak_count::__release_weak(v78);
              }

              if (v67 < v70)
              {
                break;
              }

              v79 = (2 * v70) | 1;
              v71 = a1 + 16 * v79;
              if (2 * v70 + 2 < v10 && sub_240269ECC(**v71 + 88, **(v71 + 16) + 88) == 1)
              {
                v71 += 16;
                v79 = 2 * v70 + 2;
              }

              v73 = v76;
              v70 = v79;
            }

            while (sub_240269ECC(**v71 + 88, *v75 + 88) != 1);
            v80 = *(v76 + 8);
            *v76 = v118;
            a2 = v119;
            if (v80 && !atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v80->__on_zero_shared)(v80);
              std::__shared_weak_count::__release_weak(v80);
            }
          }
        }

        v68 = v69 - 1;
      }

      while (v69);
      while (2)
      {
        v82 = 0;
        v83 = a2;
        v121 = *a1;
        *a1 = 0;
        *(a1 + 8) = 0;
        v84 = a1;
        do
        {
          v85 = v84;
          v86 = v84 + 16 * v82;
          v84 = v86 + 16;
          v87 = (2 * v82) | 1;
          v82 = 2 * v82 + 2;
          if (v82 >= v10)
          {
            v82 = v87;
          }

          else
          {
            v89 = *(v86 + 32);
            v88 = v86 + 32;
            if (sub_240269ECC(**(v88 - 16) + 88, *v89 + 88) == 1)
            {
              v84 = v88;
            }

            else
            {
              v82 = v87;
            }
          }

          v90 = *v84;
          *v84 = 0;
          *(v84 + 8) = 0;
          v91 = *(v85 + 8);
          *v85 = v90;
          if (v91 && !atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v91->__on_zero_shared)(v91);
            std::__shared_weak_count::__release_weak(v91);
          }
        }

        while (v82 <= ((v10 - 2) >> 1));
        a2 = v83 - 2;
        if (v84 == v83 - 2)
        {
          v104 = *(v84 + 8);
          *v84 = v121;
          if (!v104)
          {
            goto LABEL_125;
          }
        }

        else
        {
          v92 = *(v83 - 1);
          *a2 = 0;
          *(v83 - 1) = 0;
          v93 = *(v84 + 8);
          *v84 = v92;
          if (v93 && !atomic_fetch_add(&v93->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v93->__on_zero_shared)(v93);
            std::__shared_weak_count::__release_weak(v93);
          }

          v94 = *(v83 - 1);
          *(v83 - 1) = v121;
          if (v94 && !atomic_fetch_add(&v94->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v94->__on_zero_shared)(v94);
            std::__shared_weak_count::__release_weak(v94);
          }

          v95 = (v84 + 16 - a1) >> 4;
          v81 = v95 < 2;
          v96 = v95 - 2;
          if (v81)
          {
            goto LABEL_125;
          }

          v97 = v96 >> 1;
          v98 = a1 + 16 * (v96 >> 1);
          if (sub_240269ECC(**v98 + 88, **v84 + 88) != 1)
          {
            goto LABEL_125;
          }

          v99 = *v84;
          *v84 = 0;
          *(v84 + 8) = 0;
          v122 = v99;
          v100 = v99;
          do
          {
            v101 = v98;
            v102 = *v98;
            *v98 = 0;
            *(v98 + 8) = 0;
            v103 = *(v84 + 8);
            *v84 = v102;
            if (v103 && !atomic_fetch_add(&v103->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v103->__on_zero_shared)(v103);
              std::__shared_weak_count::__release_weak(v103);
            }

            if (!v97)
            {
              break;
            }

            v97 = (v97 - 1) >> 1;
            v98 = a1 + 16 * v97;
            v84 = v101;
          }

          while (sub_240269ECC(**v98 + 88, *v100 + 88) == 1);
          v104 = *(v101 + 8);
          *v101 = v122;
          if (!v104)
          {
LABEL_125:
            v81 = v10-- <= 2;
            if (v81)
            {
              return;
            }

            continue;
          }
        }

        break;
      }

      if (!atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v104->__on_zero_shared)(v104);
        std::__shared_weak_count::__release_weak(v104);
      }

      goto LABEL_125;
    }

    v12 = (v9 + 16 * (v10 >> 1));
    if (v10 < 0x81)
    {
      sub_2401F662C(a1 + 16 * (v10 >> 1), a1, v8);
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_16:
      v15 = *a1;
      *a1 = 0;
      *(a1 + 8) = 0;
      v116 = v15;
      v16 = v15;
      v17 = a1;
      do
      {
        v18 = v17;
        v19 = *(v17 + 16);
        v17 += 16;
      }

      while (sub_240269ECC(*v19 + 88, *v16 + 88) == 1);
      v20 = v119;
      if (v18 == a1)
      {
        v20 = v119;
        do
        {
          if (v17 >= v20)
          {
            break;
          }

          v22 = *(v20-- - 2);
        }

        while (sub_240269ECC(*v22 + 88, *v16 + 88) != 1);
      }

      else
      {
        do
        {
          v21 = *(v20-- - 2);
        }

        while (sub_240269ECC(*v21 + 88, *v16 + 88) != 1);
      }

      v9 = v17;
      if (v17 >= v20)
      {
        a2 = v119;
      }

      else
      {
        v23 = v20;
        a2 = v119;
        do
        {
          v24 = *v9;
          *v9 = *v23;
          *v23 = v24;
          do
          {
            v25 = *(v9 + 16);
            v9 += 16;
          }

          while (sub_240269ECC(*v25 + 88, *v16 + 88) == 1);
          do
          {
            v26 = *(v23-- - 2);
          }

          while (sub_240269ECC(*v26 + 88, *v16 + 88) != 1);
        }

        while (v9 < v23);
      }

      v27 = (v9 - 16);
      if (v9 - 16 != a1)
      {
        v28 = *v27;
        *v27 = 0;
        *(v9 - 8) = 0;
        v29 = *(a1 + 8);
        *a1 = v28;
        if (v29)
        {
          if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v29->__on_zero_shared)(v29);
            std::__shared_weak_count::__release_weak(v29);
          }
        }
      }

      v30 = *(v9 - 8);
      *(v9 - 16) = v116;
      if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v30->__on_zero_shared)(v30);
        std::__shared_weak_count::__release_weak(v30);
      }

      if (v17 < v20)
      {
        goto LABEL_42;
      }

      v31 = sub_2401F694C(a1, v9 - 16);
      if (sub_2401F694C(v9, a2))
      {
        a2 = (v9 - 16);
        if (v31)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v31)
      {
LABEL_42:
        sub_2401F57F8(a1, v9 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      sub_2401F662C(a1, (a1 + 16 * (v10 >> 1)), v8);
      v13 = 16 * (v10 >> 1);
      sub_2401F662C(a1 + 16, (a1 + v13 - 16), v115);
      sub_2401F662C(a1 + 32, (a1 + 16 + v13), v114);
      sub_2401F662C(a1 + v13 - 16, v12, (a1 + 16 + v13));
      v14 = *a1;
      *a1 = *(a1 + v13);
      *(a1 + v13) = v14;
      --a3;
      if (a4)
      {
        goto LABEL_16;
      }

LABEL_15:
      if (sub_240269ECC(**(a1 - 16) + 88, **a1 + 88) == 1)
      {
        goto LABEL_16;
      }

      v32 = *a1;
      *a1 = 0;
      *(a1 + 8) = 0;
      v117 = v32;
      v33 = v32;
      if (sub_240269ECC(*v32 + 88, **v8 + 88) == 1)
      {
        v9 = a1;
        do
        {
          v34 = *(v9 + 16);
          v9 += 16;
        }

        while (sub_240269ECC(*v33 + 88, *v34 + 88) != 1);
      }

      else
      {
        v35 = a1 + 16;
        do
        {
          v9 = v35;
          if (v35 >= a2)
          {
            break;
          }

          v35 += 16;
        }

        while (sub_240269ECC(*v33 + 88, **v9 + 88) != 1);
      }

      v36 = a2;
      if (v9 < a2)
      {
        v36 = a2;
        do
        {
          v37 = *(v36-- - 2);
        }

        while (sub_240269ECC(*v33 + 88, *v37 + 88) == 1);
      }

      while (v9 < v36)
      {
        v38 = *v9;
        *v9 = *v36;
        *v36 = v38;
        do
        {
          v39 = *(v9 + 16);
          v9 += 16;
        }

        while (sub_240269ECC(*v33 + 88, *v39 + 88) != 1);
        do
        {
          v40 = *(v36-- - 2);
        }

        while (sub_240269ECC(*v33 + 88, *v40 + 88) == 1);
      }

      v41 = (v9 - 16);
      if (v9 - 16 != a1)
      {
        v42 = *v41;
        *v41 = 0;
        *(v9 - 8) = 0;
        v43 = *(a1 + 8);
        *a1 = v42;
        if (v43)
        {
          if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v43->__on_zero_shared)(v43);
            std::__shared_weak_count::__release_weak(v43);
          }
        }
      }

      a4 = 0;
      v44 = *(v9 - 8);
      *(v9 - 16) = v117;
      if (v44)
      {
        a4 = 0;
        if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v44->__on_zero_shared)(v44);
          std::__shared_weak_count::__release_weak(v44);
          a4 = 0;
        }
      }
    }
  }

  v51 = (v9 + 16);
  v53 = v9 == a2 || v51 == a2;
  if (a4)
  {
    if (!v53)
    {
      v54 = 0;
      v55 = v9;
      do
      {
        v56 = *(v55 + 16);
        v57 = *v55;
        v55 = v51;
        if (sub_240269ECC(*v56 + 88, *v57 + 88) == 1)
        {
          v58 = *v55;
          *v55 = 0;
          *(v55 + 8) = 0;
          v120 = v58;
          v59 = v58;
          v60 = v54;
          while (1)
          {
            v61 = a1 + v60;
            v62 = *(a1 + v60);
            *v61 = 0;
            *(v61 + 8) = 0;
            v63 = *(a1 + v60 + 24);
            *(v61 + 16) = v62;
            if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v63->__on_zero_shared)(v63);
              std::__shared_weak_count::__release_weak(v63);
            }

            if (!v60)
            {
              break;
            }

            v64 = sub_240269ECC(*v59 + 88, **(a1 + v60 - 16) + 88);
            v60 -= 16;
            if (v64 != 1)
            {
              v65 = a1 + v60 + 16;
              goto LABEL_98;
            }
          }

          v65 = a1;
LABEL_98:
          v66 = *(v65 + 8);
          *v65 = v120;
          if (v66 && !atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v66->__on_zero_shared)(v66);
            std::__shared_weak_count::__release_weak(v66);
          }
        }

        v51 = (v55 + 16);
        v54 += 16;
      }

      while ((v55 + 16) != a2);
    }
  }

  else if (!v53)
  {
    do
    {
      v105 = *(a1 + 16);
      v106 = *a1;
      a1 = v51;
      if (sub_240269ECC(*v105 + 88, *v106 + 88) == 1)
      {
        v107 = *a1;
        *a1 = 0;
        *(a1 + 8) = 0;
        v123 = v107;
        v108 = v107;
        v109 = a1;
        do
        {
          v111 = *(v109 - 16);
          *(v109 - 16) = 0;
          *(v109 - 8) = 0;
          v112 = *(v109 + 8);
          *v109 = v111;
          if (v112 && !atomic_fetch_add(&v112->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v112->__on_zero_shared)(v112);
            std::__shared_weak_count::__release_weak(v112);
          }

          v110 = sub_240269ECC(*v108 + 88, **(v109 - 32) + 88);
          v109 -= 16;
        }

        while (v110 == 1);
        v113 = *(v109 + 8);
        *v109 = v123;
        if (v113 && !atomic_fetch_add(&v113->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v113->__on_zero_shared)(v113);
          std::__shared_weak_count::__release_weak(v113);
        }
      }

      v51 = (a1 + 16);
    }

    while ((a1 + 16) != a2);
  }
}

uint64_t sub_2401F662C(uint64_t a1, void **a2, void **a3)
{
  v4 = a2;
  v6 = sub_240269ECC(**a2 + 88, **a1 + 88);
  result = sub_240269ECC(**a3 + 88, **v4 + 88);
  if (v6 == 1)
  {
    v8 = *a1;
    if (result == 1)
    {
      *a1 = *a3;
      *a3 = v8;
      v9 = (a1 + 8);
    }

    else
    {
      v12 = *(a1 + 8);
      *a1 = *v4;
      v4[1] = v12;
      v9 = v4 + 1;
      *v4 = v8;
      result = sub_240269ECC(**a3 + 88, *v8 + 88);
      if (result != 1)
      {
        return result;
      }

      v13 = *v4;
      *v4 = *a3;
      *a3 = v13;
    }

    v4 = a3;
    goto LABEL_10;
  }

  if (result == 1)
  {
    v10 = *v4;
    *v4 = *a3;
    *a3 = v10;
    result = sub_240269ECC(**v4 + 88, **a1 + 88);
    if (result == 1)
    {
      v11 = *a1;
      *a1 = *v4;
      v9 = (a1 + 8);
      *v4 = v11;
LABEL_10:
      v14 = *v9;
      *v9 = v4[1];
      v4[1] = v14;
    }
  }

  return result;
}

__n128 sub_2401F6780(__int128 *a1, void **a2, void **a3, _OWORD *a4, _OWORD *a5)
{
  sub_2401F662C(a1, a2, a3);
  if (sub_240269ECC(**a4 + 88, **a3 + 88) == 1)
  {
    v10 = *a3;
    *a3 = *a4;
    *a4 = v10;
    if (sub_240269ECC(**a3 + 88, **a2 + 88) == 1)
    {
      v11 = *a2;
      *a2 = *a3;
      *a3 = v11;
      if (sub_240269ECC(**a2 + 88, **a1 + 88) == 1)
      {
        v12 = *a1;
        *a1 = *a2;
        *a2 = v12;
      }
    }
  }

  if (sub_240269ECC(**a5 + 88, **a4 + 88) == 1)
  {
    v14 = *a4;
    *a4 = *a5;
    *a5 = v14;
    if (sub_240269ECC(**a4 + 88, **a3 + 88) == 1)
    {
      v15 = *a3;
      *a3 = *a4;
      *a4 = v15;
      if (sub_240269ECC(**a3 + 88, **a2 + 88) == 1)
      {
        v16 = *a2;
        *a2 = *a3;
        *a3 = v16;
        if (sub_240269ECC(**a2 + 88, **a1 + 88) == 1)
        {
          result = *a2;
          v17 = *a1;
          *a1 = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL sub_2401F694C(uint64_t a1, uint64_t a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_2401F662C(a1, (a1 + 16), (a2 - 16));
        break;
      case 4:
        sub_2401F662C(a1, (a1 + 16), (a1 + 32));
        if (sub_240269ECC(**(a2 - 16) + 88, **(a1 + 32) + 88) == 1)
        {
          v19 = *(a1 + 32);
          *(a1 + 32) = *(a2 - 16);
          *(a2 - 16) = v19;
          if (sub_240269ECC(**(a1 + 32) + 88, **(a1 + 16) + 88) == 1)
          {
            v21 = *(a1 + 16);
            v20 = *(a1 + 32);
            *(a1 + 16) = v20;
            *(a1 + 32) = v21;
            if (sub_240269ECC(*v20 + 88, **a1 + 88) == 1)
            {
              v22 = *a1;
              *a1 = *(a1 + 16);
              *(a1 + 16) = v22;
            }
          }
        }

        return 1;
      case 5:
        sub_2401F6780(a1, (a1 + 16), (a1 + 32), (a1 + 48), (a2 - 16));
        break;
      default:
        goto LABEL_11;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (sub_240269ECC(**(a2 - 16) + 88, **a1 + 88) == 1)
    {
      v5 = *a1;
      *a1 = *(a2 - 16);
      *(a2 - 16) = v5;
    }

    return 1;
  }

LABEL_11:
  v6 = (a1 + 32);
  sub_2401F662C(a1, (a1 + 16), (a1 + 32));
  v7 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    if (sub_240269ECC(**v7 + 88, **v6 + 88) == 1)
    {
      v10 = *v7;
      *v7 = 0;
      *(v7 + 8) = 0;
      v24 = v10;
      v11 = v10;
      v12 = v8;
      while (1)
      {
        v13 = a1 + v12;
        v14 = *(a1 + v12 + 32);
        *(v13 + 32) = 0;
        *(v13 + 40) = 0;
        v15 = *(a1 + v12 + 56);
        *(v13 + 48) = v14;
        if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        if (v12 == -32)
        {
          break;
        }

        v16 = sub_240269ECC(*v11 + 88, **(a1 + v12 + 16) + 88);
        v12 -= 16;
        if (v16 != 1)
        {
          v17 = a1 + v12 + 48;
          goto LABEL_24;
        }
      }

      v17 = a1;
LABEL_24:
      v18 = *(v17 + 8);
      *v17 = v24;
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      if (++v9 == 8)
      {
        return v7 + 16 == a2;
      }
    }

    v6 = v7;
    v8 += 16;
    v7 += 16;
    if (v7 == a2)
    {
      return 1;
    }
  }
}

void *sub_2401F6C6C(uint64_t a1, unint64_t a2, void *a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = a3[1] ^ *a3;
  v4 = vcnt_s8(a2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a3[1] ^ *a3;
    if (v3 >= a2)
    {
      v5 = v3 % a2;
    }
  }

  else
  {
    v5 = (a2 - 1) & v3;
  }

  v6 = *(a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    if (v4.u32[0] < 2uLL)
    {
      while (1)
      {
        v9 = result[1];
        if (v3 == v9)
        {
          if (result[2] == *a3 && result[3] == a3[1])
          {
            return result;
          }
        }

        else if ((v9 & (a2 - 1)) != v5)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v11 = result[1];
      if (v3 == v11)
      {
        if (result[2] == *a3 && result[3] == a3[1])
        {
          return result;
        }
      }

      else
      {
        if (v11 >= a2)
        {
          v11 %= a2;
        }

        if (v11 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t *sub_2401F6D50(uint64_t *result)
{
  v6 = *MEMORY[0x277D85DE8];
  if ((*(*result + 16) & 1) == 0)
  {
    v1 = result;
    MEMORY[0x245CBD530](out);
    v2 = *v1;
    v3 = *(*v1 + 16);
    **v1 = *out;
    if ((v3 & 1) == 0)
    {
      *(v2 + 16) = 1;
    }

    v4 = *v1;
    if (*(*v1 + 16) == 1)
    {
      memset(out, 0, 37);
      uuid_unparse_upper(v4, out);
      operator new();
    }

    return snprintf((v4 + 160), 0x40uLL, "(%p uuid=%s)", v1, "unset");
  }

  return result;
}

uint64_t sub_2401F6E78(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = &v3[-*a1];
  v5 = v4 >> 3;
  v6 = (v4 >> 3) + 1;
  if (v6 >> 61)
  {
    sub_2401BDE28();
  }

  v8 = *(a1 + 16) - v2;
  if (v8 >> 2 > v6)
  {
    v6 = v8 >> 2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    v9 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v6;
  }

  if (v9)
  {
    if (!(v9 >> 61))
    {
      operator new();
    }

    sub_2401BDE28();
  }

  v10 = v4 >> 3;
  v11 = *a2;
  *a2 = 0;
  *(8 * v5) = v11;
  v12 = 8 * v5 + 8;
  if (v2 != v3)
  {
    v13 = v3 - v2 - 8;
    v14 = v2;
    v15 = 0;
    if (v13 < 0x98)
    {
      goto LABEL_33;
    }

    v16 = v2 >= v4 + (v13 & 0xFFFFFFFFFFFFFFF8) - 8 * v10 + 8 || &v2[(v13 & 0xFFFFFFFFFFFFFFF8) + 8] == 0;
    v14 = v2;
    v15 = 0;
    if (!v16)
    {
      goto LABEL_33;
    }

    v17 = (v13 >> 3) + 1;
    v15 = (8 * (v17 & 0x3FFFFFFFFFFFFFFCLL));
    v14 = v15 + v2;
    v18 = (-8 * v10 + 8 * v5 + 16);
    v19 = (v2 + 16);
    v20 = v17 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v21 = *(v19 - 1);
      v22 = *v19;
      *(v19 - 1) = 0uLL;
      *v19 = 0uLL;
      *(v18 - 1) = v21;
      *v18 = v22;
      v18 += 2;
      v19 += 2;
      v20 -= 4;
    }

    while (v20);
    if (v17 != (v17 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_33:
      do
      {
        v23 = *v14;
        *v14 = 0;
        v14 += 8;
        *v15++ = v23;
      }

      while (v14 != v3);
    }

    do
    {
      v24 = *v2;
      *v2 = 0;
      if (v24)
      {
        free(v24[3]);
        free(*v24);
        MEMORY[0x245CBCA30](v24, 0x1080C407C7A2332);
      }

      v2 += 8;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = 0;
  *(a1 + 8) = v12;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return v12;
}

uint64_t sub_2401F7074(uint64_t a1)
{
  *a1 = 0;
  if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
  {
    sub_240222DDC();
  }

  *(a1 + 1) = *(qword_280C03828 + 106);
  if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
  {
    sub_240222DDC();
  }

  *(a1 + 3) = *(qword_280C03828 + 108);
  if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
  {
    sub_240222DDC();
  }

  *(a1 + 4) = *(qword_280C03828 + 220);
  *(a1 + 5) = 0;
  *(a1 + 9) = 0;
  *(a1 + 12) = 1;
  if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
  {
    sub_240222DDC();
  }

  *(a1 + 16) = *(qword_280C03828 + 320);
  sub_24024BD98((a1 + 24), "resources_facekit/");
  *(a1 + 48) = 0x100000000;
  if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
  {
    sub_240222DDC();
  }

  v2 = qword_280C03828;
  v4 = *(qword_280C03828 + 16);
  v3 = *(qword_280C03828 + 32);
  *(a1 + 56) = *qword_280C03828;
  *(a1 + 72) = v4;
  *(a1 + 88) = v3;
  v6 = *(v2 + 64);
  v5 = *(v2 + 80);
  v7 = *(v2 + 96);
  *(a1 + 104) = *(v2 + 48);
  *(a1 + 152) = v7;
  *(a1 + 136) = v5;
  *(a1 + 120) = v6;
  return a1;
}

double sub_2401F7248(unsigned __int8 *a1)
{
  v47 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v2 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v3 = *a1;
    v45 = 67109120;
    LODWORD(v46) = v3;
    _os_log_impl(&dword_2401B8000, v2, OS_LOG_TYPE_INFO, "using rgb only: %d", &v45, 8u);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v4 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v5 = a1[1];
    v45 = 67109120;
    LODWORD(v46) = v5;
    _os_log_impl(&dword_2401B8000, v4, OS_LOG_TYPE_INFO, "using recognition: %d", &v45, 8u);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v6 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v7 = a1[2];
    v45 = 67109120;
    LODWORD(v46) = v7;
    _os_log_impl(&dword_2401B8000, v6, OS_LOG_TYPE_INFO, "using force CPU: %d", &v45, 8u);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v8 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v9 = a1[3];
    v45 = 67109120;
    LODWORD(v46) = v9;
    _os_log_impl(&dword_2401B8000, v8, OS_LOG_TYPE_INFO, "using tongue: %d", &v45, 8u);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v10 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v11 = a1[4];
    v45 = 67109120;
    LODWORD(v46) = v11;
    _os_log_impl(&dword_2401B8000, v10, OS_LOG_TYPE_INFO, "using robust tongue: %d", &v45, 8u);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v12 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 12);
    v45 = 67109120;
    LODWORD(v46) = v13;
    _os_log_impl(&dword_2401B8000, v12, OS_LOG_TYPE_INFO, "using pyramid behavior: %d", &v45, 8u);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v14 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v15 = a1[5];
    v45 = 67109120;
    LODWORD(v46) = v15;
    _os_log_impl(&dword_2401B8000, v14, OS_LOG_TYPE_INFO, "running deterministically: %d", &v45, 8u);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v16 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v17 = *(a1 + 3);
    v45 = 67109120;
    LODWORD(v46) = v17;
    _os_log_impl(&dword_2401B8000, v16, OS_LOG_TYPE_INFO, "running with #faces: %d", &v45, 8u);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v18 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v19 = *(a1 + 4);
    v45 = 67109120;
    LODWORD(v46) = v19;
    _os_log_impl(&dword_2401B8000, v18, OS_LOG_TYPE_INFO, "using recognition update period: %d", &v45, 8u);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v20 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v21 = a1 + 24;
    if (a1[47] < 0)
    {
      v21 = *v21;
    }

    v45 = 136315138;
    v46 = *&v21;
    _os_log_impl(&dword_2401B8000, v20, OS_LOG_TYPE_INFO, "using resource path: %s", &v45, 0xCu);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v22 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v23 = a1[6];
    v45 = 67109120;
    LODWORD(v46) = v23;
    _os_log_impl(&dword_2401B8000, v22, OS_LOG_TYPE_INFO, "using face detector: %d", &v45, 8u);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v24 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v25 = a1[7];
    v45 = 67109120;
    LODWORD(v46) = v25;
    _os_log_impl(&dword_2401B8000, v24, OS_LOG_TYPE_INFO, "using key points: %d", &v45, 8u);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v26 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v27 = a1[8];
    v45 = 67109120;
    LODWORD(v46) = v27;
    _os_log_impl(&dword_2401B8000, v26, OS_LOG_TYPE_INFO, "using pose refinement: %d", &v45, 8u);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v28 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v29 = a1[9];
    v45 = 67109120;
    LODWORD(v46) = v29;
    _os_log_impl(&dword_2401B8000, v28, OS_LOG_TYPE_INFO, "using caranet_plus: %d", &v45, 8u);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v30 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v31 = *(a1 + 13);
    v45 = 67109120;
    LODWORD(v46) = v31;
    _os_log_impl(&dword_2401B8000, v30, OS_LOG_TYPE_INFO, "using depth source: %d", &v45, 8u);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v32 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v33 = *(a1 + 15);
    v45 = 134217984;
    v46 = v33;
    _os_log_impl(&dword_2401B8000, v32, OS_LOG_TYPE_INFO, "using failure threshold: %f", &v45, 0xCu);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v34 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v35 = *(a1 + 17);
    v45 = 134217984;
    v46 = v35;
    _os_log_impl(&dword_2401B8000, v34, OS_LOG_TYPE_INFO, "using bounding box tolerance: %f", &v45, 0xCu);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v36 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v37 = *(a1 + 35);
    v45 = 134217984;
    v46 = v37;
    _os_log_impl(&dword_2401B8000, v36, OS_LOG_TYPE_INFO, "using max angle: %f", &v45, 0xCu);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v38 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v39 = *(a1 + 39);
    v45 = 134217984;
    v46 = v39;
    _os_log_impl(&dword_2401B8000, v38, OS_LOG_TYPE_INFO, "using max distance for tracking: %f mm", &v45, 0xCu);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v40 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v41 = *(a1 + 37);
    v45 = 134217984;
    v46 = v41;
    _os_log_impl(&dword_2401B8000, v40, OS_LOG_TYPE_INFO, "using max distance for fitting: %f mm", &v45, 0xCu);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v42 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_INFO))
  {
    v44 = *(a1 + 29);
    v45 = 134217984;
    v46 = v44;
    _os_log_impl(&dword_2401B8000, v42, OS_LOG_TYPE_INFO, "using max angle for recognition: %f", &v45, 0xCu);
  }

  return result;
}

uint64_t sub_2401F7E10(unsigned int *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
  {
    sub_240222DDC();
  }

  if (*(qword_280C03828 + 105))
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  if (*(a1 + 4))
  {
    v3 = *a1;
  }

  else
  {
    v3 = v2;
  }

  if ((v3 - 4) <= 0xFFFFFFFC)
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v4 = qword_280C03978;
    if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_DEFAULT))
    {
      v7[0] = 67109376;
      v7[1] = v3;
      v8 = 1024;
      v9 = 3;
      _os_log_impl(&dword_2401B8000, v4, OS_LOG_TYPE_DEFAULT, "Unsupported number of faces: %i, limiting to range [1, %i]", v7, 0xEu);
    }

    if (v3 >= 3)
    {
      v5 = 3;
    }

    else
    {
      v5 = v3;
    }

    if (v5 <= 1)
    {
      return 1;
    }

    else
    {
      return v5;
    }
  }

  return v3;
}

_BYTE *sub_2401F7FA0(_BYTE *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

    sub_2401BDE28();
  }

  __dst[23] = __len;
  v5 = __dst;
  if (__len)
  {
    memmove(__dst, a2, __len);
    v5 = __dst;
  }

  v5[__len] = 0;
  return __dst;
}

uint64_t sub_2401F8070(uint64_t a1, const void *a2, size_t __len)
{
  v5 = *(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v5 >= __len - v5 + 1)
    {
      operator new();
    }

    sub_2401BDE28();
  }

  v6 = *a1;
  *(a1 + 8) = __len;
  if (__len)
  {
    memmove(v6, a2, __len);
  }

  *(v6 + __len) = 0;
  return a1;
}

void sub_2401F8198(uint64_t a1, float *a2, uint64_t a3, unint64_t a4, __int128 *a5, uint64_t a6, float a7)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v9 = *(a1 + 16);
      if (*(a2 - 2) > v9)
      {
        v10 = a2 - 6;
        v11 = *a1;
        *a1 = 0;
        *(a1 + 8) = 0;
        v12 = *(a2 - 6);
        *v10 = 0;
        *(v10 + 1) = 0;
        v13 = *(a1 + 8);
        *a1 = v12;
        if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v50 = v11;
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
          v11 = v50;
        }

        *(a1 + 16) = *(a2 - 2);
        v14 = *(a2 - 2);
        *(a2 - 6) = v11;
        if (v14)
        {
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
          }
        }

        *(a2 - 2) = v9;
      }
    }

    else if (a4 <= 0)
    {
      if (a1 != a2)
      {
        v22 = a1 + 24;
        if ((a1 + 24) != a2)
        {
          v23 = 0;
          v24 = a1;
          do
          {
            v25 = v22;
            if (*(v24 + 40) > *(v24 + 16))
            {
              v51 = *v22;
              *v22 = 0;
              *(v22 + 8) = 0;
              v26 = *(v24 + 40);
              v27 = v23;
              while (1)
              {
                v28 = a1 + v27;
                v29 = *(a1 + v27);
                *v28 = 0;
                *(v28 + 8) = 0;
                v30 = *(a1 + v27 + 32);
                *(v28 + 24) = v29;
                if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v30->__on_zero_shared)(v30);
                  std::__shared_weak_count::__release_weak(v30);
                }

                *(v28 + 40) = *(v28 + 16);
                if (!v27)
                {
                  break;
                }

                v31 = *(a1 + v27 - 8);
                v27 -= 24;
                if (v26 <= v31)
                {
                  v32 = a1 + v27 + 24;
                  goto LABEL_31;
                }
              }

              v32 = a1;
LABEL_31:
              v33 = *(v32 + 8);
              *v32 = v51;
              if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v33->__on_zero_shared)(v33);
                std::__shared_weak_count::__release_weak(v33);
              }

              *(v32 + 16) = v26;
            }

            v22 = v25 + 24;
            v23 += 24;
            v24 = v25;
          }

          while ((v25 + 24) != a2);
        }
      }
    }

    else
    {
      v16 = a4 >> 1;
      v17 = (a1 + 24 * (a4 >> 1));
      if (a4 <= a6)
      {
        v35 = sub_2401F8B40(a1, (a1 + 24 * (a4 >> 1)), a3, a4 >> 1, a5, a7);
        v36 = a4 - v16;
        v37 = a5 + 24 * v16;
        v38.n128_f32[0] = sub_2401F8B40(v17, a2, a3, v36, v37, v35);
        v39 = (a5 + 24 * a4);
        v40 = (a1 + 16);
        v41 = v37;
        v42 = a5;
        while (v41 != v39)
        {
          if (v41[1].n128_f32[0] <= v42[1].n128_f32[0])
          {
            v38 = *v42;
            v42->n128_u64[0] = 0;
            v42->n128_u64[1] = 0;
            v44 = v40[-1].n128_u64[1];
            v40[-1] = v38;
            if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v44->__on_zero_shared)(v44);
              std::__shared_weak_count::__release_weak(v44);
            }

            v38.n128_u32[0] = v42[1].n128_u32[0];
            v40->n128_u32[0] = v38.n128_u32[0];
            v42 = (v42 + 24);
          }

          else
          {
            v38 = *v41;
            v41->n128_u64[0] = 0;
            v41->n128_u64[1] = 0;
            v43 = v40[-1].n128_u64[1];
            v40[-1] = v38;
            if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v43->__on_zero_shared)(v43);
              std::__shared_weak_count::__release_weak(v43);
            }

            v38.n128_u32[0] = v41[1].n128_u32[0];
            v40->n128_u32[0] = v38.n128_u32[0];
            v41 = (v41 + 24);
          }

          v40 = (v40 + 24);
          if (v42 == v37)
          {
            for (; v41 != v39; v41 = (v41 + 24))
            {
              v38 = *v41;
              v41->n128_u64[0] = 0;
              v41->n128_u64[1] = 0;
              v46 = v40[-1].n128_u64[1];
              v40[-1] = v38;
              if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v46->__on_zero_shared)(v46);
                std::__shared_weak_count::__release_weak(v46);
              }

              v38.n128_u32[0] = v41[1].n128_u32[0];
              v40->n128_u32[0] = v38.n128_u32[0];
              v40 = (v40 + 24);
            }

            goto LABEL_58;
          }
        }

        for (; v42 != v37; v42 = (v42 + 24))
        {
          v38 = *v42;
          v42->n128_u64[0] = 0;
          v42->n128_u64[1] = 0;
          v45 = v40[-1].n128_u64[1];
          v40[-1] = v38;
          if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v45->__on_zero_shared)(v45);
            std::__shared_weak_count::__release_weak(v45);
          }

          v38.n128_u32[0] = v42[1].n128_u32[0];
          v40->n128_u32[0] = v38.n128_u32[0];
          v40 = (v40 + 24);
        }

LABEL_58:
        if (a5)
        {
          v47 = 0;
          v48 = a5 + 1;
          do
          {
            v49 = *v48;
            if (*v48 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v49->__on_zero_shared)(v49, v38);
              std::__shared_weak_count::__release_weak(v49);
            }

            ++v47;
            v48 += 3;
          }

          while (v47 < a4);
        }
      }

      else
      {
        sub_2401F8198(a1, a1 + 24 * (a4 >> 1), a3, a4 >> 1, a5, a6);
        v21 = a4 - v16;
        sub_2401F8198(v17, a2, a3, v21, a5, a6);

        sub_2401F8F68(a1, v17, a2, v16, v21, a5, a6);
      }
    }
  }
}

void sub_2401F8760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_2401F8EB0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2401F8778(uint64_t result)
{
  v1 = *(result + 24);
  *(result + 24) = 0;
  if (v1)
  {
    v2 = *(v1 + 152);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    free(*(v1 + 120));
    v3 = *(v1 + 24);
    if (v3)
    {
      v4 = *(v1 + 32);
      v5 = *(v1 + 24);
      if (v4 != v3)
      {
        do
        {
          v7 = *--v4;
          v6 = v7;
          *v4 = 0;
          if (v7)
          {
            free(v6[3]);
            free(*v6);
            MEMORY[0x245CBCA30](v6, 0x1080C407C7A2332);
          }
        }

        while (v4 != v3);
        v5 = *(v1 + 24);
      }

      *(v1 + 32) = v3;
      operator delete(v5);
    }

    JUMPOUT(0x245CBCA30);
  }

  return result;
}

void sub_2401F88A4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226C80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_2401F891C(uint64_t result)
{
  v1 = *(result + 24);
  *(result + 24) = 0;
  if (v1)
  {
    v2 = v1[19];
    v1[19] = 0;
    if (v2)
    {
      v3 = sub_24023B2BC(v2);
      MEMORY[0x245CBCA30](v3, 0x10E0C4016A603E8);
    }

    v4 = v1[18];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    sub_24023B5A0(v1 + 11);
    v5 = v1[12];
    v6 = v1[13];
    if (v5 != v6)
    {
      do
      {
        v7 = *v5++;
        operator delete(v7);
      }

      while (v5 != v6);
      v5 = v1[12];
      v6 = v1[13];
    }

    if (v6 != v5)
    {
      v1[13] = v6 + ((v5 - v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    }

    v8 = v1[11];
    if (v8)
    {
      operator delete(v8);
    }

    v9 = v1[4];
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = v1[2];
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    JUMPOUT(0x245CBCA30);
  }

  return result;
}

void sub_2401F8ACC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226C10;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

float sub_2401F8B40(float *a1, float *a2, uint64_t a3, uint64_t a4, uint64_t a5, float result)
{
  if (a4)
  {
    v6 = a5;
    v8 = a1;
    if (a4 == 2)
    {
      v11 = *(a2 - 2);
      v12 = a2 - 6;
      v9 = a1 + 4;
      v13 = a1[4];
      v10 = (a5 + 40);
      if (v11 <= v13)
      {
        *a5 = *a1;
        *a1 = 0;
        *(a1 + 1) = 0;
        *(a5 + 16) = v13;
        *(a5 + 24) = *v12;
        *v12 = 0;
        *(a2 - 2) = 0;
        v9 = a2 - 2;
      }

      else
      {
        *a5 = *v12;
        *v12 = 0;
        *(a2 - 2) = 0;
        *(a5 + 16) = v11;
        *(a5 + 24) = *a1;
        *a1 = 0;
        *(a1 + 1) = 0;
      }

      goto LABEL_27;
    }

    if (a4 == 1)
    {
      *a5 = *a1;
      *a1 = 0;
      *(a1 + 1) = 0;
      v9 = a1 + 4;
      v10 = (a5 + 16);
LABEL_27:
      result = *v9;
      *v10 = *v9;
      return result;
    }

    if (a4 > 8)
    {
      v26 = a4 >> 1;
      v27 = 24 * (a4 >> 1);
      v28 = &a1[v27 / 4];
      sub_2401F8198(a1, &a1[v27 / 4], a3, v26, a5, v26);
      sub_2401F8198(v8 + v27, a2, a3, a4 - v26, v6 + v27, a4 - v26);
      v31 = v8 + v27;
      while (v31 != a2)
      {
        result = *(v31 + 16);
        v32 = *(v8 + 4);
        if (result <= v32)
        {
          *v6 = *v8;
          *v8 = 0;
          *(v8 + 1) = 0;
          v8 = (v8 + 24);
          result = v32;
        }

        else
        {
          *v6 = *v31;
          *v31 = 0;
          *(v31 + 8) = 0;
          v31 += 24;
        }

        *(v6 + 16) = result;
        v6 += 24;
        if (v8 == v28)
        {
          if (v31 != a2)
          {
            v36 = 0;
            do
            {
              v37 = (v31 + v36);
              v38 = v6 + v36;
              *v38 = *(v31 + v36);
              *v37 = 0;
              v37[1] = 0;
              result = *(v31 + v36 + 16);
              *(v38 + 16) = result;
              v36 += 24;
            }

            while (v37 + 3 != a2);
          }

          return result;
        }
      }

      if (v8 != v28)
      {
        v33 = 0;
        do
        {
          v34 = v6 + v33;
          v35 = (v8 + v33);
          *v34 = *(v8 + v33);
          *v35 = 0;
          v35[1] = 0;
          result = *(v8 + v33 + 16);
          *(v34 + 16) = result;
          v33 += 24;
        }

        while (v35 + 3 != v28);
      }
    }

    else if (a1 != a2)
    {
      *a5 = *a1;
      *a1 = 0;
      *(a1 + 1) = 0;
      result = a1[4];
      *(a5 + 16) = result;
      v14 = (a1 + 6);
      if (a1 + 6 != a2)
      {
        v15 = 0;
        v16 = a5;
        do
        {
          v17 = v14;
          result = *(v8 + 10);
          v18 = *(v16 + 16);
          if (result <= v18)
          {
            *(v16 + 24) = *v14;
            *v14 = 0;
            *(v14 + 1) = 0;
            *(v16 + 40) = result;
          }

          else
          {
            *(v16 + 24) = *v16;
            *v16 = 0;
            *(v16 + 8) = 0;
            *(v16 + 40) = v18;
            v19 = v6;
            if (v16 != v6)
            {
              v20 = v15;
              while (1)
              {
                v19 = v6 + v20;
                if (*(v8 + 10) <= *(v6 + v20 - 8))
                {
                  break;
                }

                v21 = (v19 - 24);
                v22 = *(v19 - 24);
                *v21 = 0;
                v21[1] = 0;
                v23 = *(v19 + 8);
                *v19 = v22;
                if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v23->__on_zero_shared)(v23);
                  std::__shared_weak_count::__release_weak(v23);
                }

                *(v6 + v20 + 16) = *(v19 - 8);
                v20 -= 24;
                if (!v20)
                {
                  v19 = v6;
                  break;
                }
              }
            }

            v24 = *v17;
            *v17 = 0;
            *(v17 + 1) = 0;
            v25 = *(v19 + 8);
            *v19 = v24;
            if (v25)
            {
              if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v25->__on_zero_shared)(v25);
                std::__shared_weak_count::__release_weak(v25);
              }
            }

            result = *(v8 + 10);
            *(v19 + 16) = result;
          }

          v16 += 24;
          v14 = (v17 + 24);
          v15 += 24;
          v8 = v17;
        }

        while ((v17 + 24) != a2);
      }
    }
  }

  return result;
}

uint64_t *sub_2401F8EB0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    if (*v3)
    {
      v4 = 0;
      v5 = (v2 + 8);
      do
      {
        v6 = *v5;
        if (*v5 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }

        ++v4;
        v5 += 3;
      }

      while (v4 < *v3);
    }
  }

  return a1;
}

void sub_2401F8F68(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  if (!a5)
  {
    return;
  }

  v8 = a2;
  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return;
    }

    while (1)
    {
      v10 = *(a1 + 4);
      if (*(v8 + 4) > v10)
      {
        break;
      }

      a1 = (a1 + 24);
      if (!--a4)
      {
        return;
      }
    }

    if (a4 >= a5)
    {
      if (a4 == 1)
      {
        v71 = *a1;
        *a1 = 0;
        *(a1 + 1) = 0;
        v72 = *v8;
        *v8 = 0;
        *(v8 + 1) = 0;
        v73 = *(a1 + 1);
        *a1 = v72;
        if (v73 && !atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v92 = v71;
          (v73->__on_zero_shared)(v73);
          std::__shared_weak_count::__release_weak(v73);
          v71 = v92;
        }

        *(a1 + 4) = *(v8 + 4);
        v74 = *(v8 + 1);
        *v8 = v71;
        if (v74 && !atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v74->__on_zero_shared)(v74);
          std::__shared_weak_count::__release_weak(v74);
        }

        *(v8 + 4) = v10;
        return;
      }

      v88 = a4 / 2;
      v13 = (a1 + 24 * (a4 / 2));
      v12 = v8;
      if (v8 != a3)
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * ((a3 - v8) >> 3);
        v12 = v8;
        do
        {
          v20 = v19 >> 1;
          v21 = &v12[24 * (v19 >> 1)];
          v22 = *(v21 + 4);
          v23 = v21 + 24;
          v19 += ~(v19 >> 1);
          if (v22 > *(v13 + 4))
          {
            v12 = v23;
          }

          else
          {
            v19 = v20;
          }
        }

        while (v19);
      }

      v11 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3);
    }

    else
    {
      v11 = a5 / 2;
      v12 = v8 + 24 * (a5 / 2);
      v13 = v8;
      if (v8 != a1)
      {
        v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - a1) >> 3);
        v13 = a1;
        do
        {
          v15 = v14 >> 1;
          v16 = v13 + 24 * (v14 >> 1);
          v17 = *(v16 + 16);
          v18 = (v16 + 24);
          v14 += ~(v14 >> 1);
          if (*(v12 + 4) > v17)
          {
            v14 = v15;
          }

          else
          {
            v13 = v18;
          }
        }

        while (v14);
      }

      v88 = 0xAAAAAAAAAAAAAAABLL * ((v13 - a1) >> 3);
    }

    v24 = v12;
    if (v13 != v8)
    {
      v24 = v13;
      if (v8 != v12)
      {
        v83 = v11;
        v84 = a5;
        v85 = a7;
        v86 = a3;
        v87 = a6;
        v24 = (v13 + 24);
        v25 = (v13 + 24);
        v26 = v8;
        while (1)
        {
          v27 = v25 - 3;
          v28 = *(v25 - 24);
          *v27 = 0;
          v27[1] = 0;
          v29 = *(v25 - 2);
          v30 = *v26;
          *v26 = 0;
          *(v26 + 1) = 0;
          v31 = *(v25 - 2);
          *v27 = v30;
          if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v89 = v28;
            (v31->__on_zero_shared)(v31);
            std::__shared_weak_count::__release_weak(v31);
            v28 = v89;
          }

          *(v25 - 2) = *(v26 + 4);
          v32 = *(v26 + 1);
          *v26 = v28;
          if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v32->__on_zero_shared)(v32);
            std::__shared_weak_count::__release_weak(v32);
          }

          *(v26 + 4) = v29;
          v26 = (v26 + 24);
          if (v26 == v12)
          {
            break;
          }

          if (v25 == v8)
          {
            v8 = v26;
          }

          v25 = (v25 + 24);
          v24 = (v24 + 24);
        }

        if (v25 != v8)
        {
          v33 = v8;
          while (1)
          {
            v35 = *v25;
            *v25 = 0;
            *(v25 + 1) = 0;
            v36 = *(v25 + 4);
            v37 = *v33;
            *v33 = 0;
            *(v33 + 1) = 0;
            v38 = *(v25 + 1);
            *v25 = v37;
            if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v90 = v35;
              (v38->__on_zero_shared)(v38);
              std::__shared_weak_count::__release_weak(v38);
              v35 = v90;
            }

            *(v25 + 4) = *(v33 + 4);
            v39 = *(v33 + 1);
            *v33 = v35;
            if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v39->__on_zero_shared)(v39);
              std::__shared_weak_count::__release_weak(v39);
            }

            *(v33 + 4) = v36;
            v25 = (v25 + 24);
            v33 = (v33 + 24);
            v34 = v25 == v8;
            if (v33 == v12)
            {
              if (v25 == v8)
              {
                break;
              }

              v33 = (v8 + 24);
              while (1)
              {
                v40 = *v25;
                *v25 = 0;
                *(v25 + 1) = 0;
                v41 = *(v25 + 4);
                v42 = *v8;
                *v8 = 0;
                *(v8 + 1) = 0;
                v43 = *(v25 + 1);
                *v25 = v42;
                if (v43 && !atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v91 = v40;
                  (v43->__on_zero_shared)(v43);
                  std::__shared_weak_count::__release_weak(v43);
                  v40 = v91;
                }

                *(v25 + 4) = *(v8 + 4);
                v44 = *(v8 + 1);
                *v8 = v40;
                if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v44->__on_zero_shared)(v44);
                  std::__shared_weak_count::__release_weak(v44);
                }

                *(v8 + 4) = v41;
                v25 = (v25 + 24);
                v34 = v25 == v8;
                if (v33 != v12)
                {
                  break;
                }

                if (v25 == v8)
                {
                  goto LABEL_59;
                }
              }
            }

            if (v34)
            {
              v8 = v33;
            }
          }
        }

LABEL_59:
        a3 = v86;
        a6 = v87;
        a5 = v84;
        a7 = v85;
        v11 = v83;
      }
    }

    a4 -= v88;
    v45 = a5 - v11;
    if (v88 + v11 >= a4 + v45)
    {
      v49 = a6;
      v50 = a7;
      sub_2401F8F68(v24, v12, a3, a4);
      v12 = v13;
      a5 = v11;
      a4 = v88;
      a3 = v24;
    }

    else
    {
      v46 = a1;
      v47 = a3;
      v48 = v45;
      v49 = a6;
      v50 = a7;
      sub_2401F8F68(v46, v13, v24, v88);
      a5 = v48;
      a3 = v47;
      a1 = v24;
    }

    v8 = v12;
    a6 = v49;
    a7 = v50;
    if (!a5)
    {
      return;
    }
  }

  v51 = a6;
  if (a4 > a5)
  {
    if (v8 == a3)
    {
      return;
    }

    v52 = 0;
    v53 = a6;
    v54 = v8;
    do
    {
      *v53 = *v54;
      *v54 = 0;
      *(v54 + 1) = 0;
      *(v53 + 4) = *(v54 + 4);
      ++v52;
      v54 = (v54 + 24);
      v53 = (v53 + 24);
    }

    while (v54 != a3);
    v55 = a3 - 2;
    while (1)
    {
      if (v8 == a1)
      {
        if (v53 != a6)
        {
          v75 = v53;
          do
          {
            v76 = *(v75 - 24);
            v75 = (v75 - 24);
            *v75 = 0;
            *(v75 + 1) = 0;
            v77 = *(v55 - 1);
            *(v55 - 1) = v76;
            if (v77 && !atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v77->__on_zero_shared)(v77);
              std::__shared_weak_count::__release_weak(v77);
              a6 = v51;
            }

            *v55 = *(v53 - 2);
            v55 -= 6;
            v53 = v75;
          }

          while (v75 != a6);
        }

        goto LABEL_113;
      }

      v57 = v8 - 2;
      v56 = v53 - 2;
      if (*(v53 - 2) <= *(v8 - 2))
      {
        break;
      }

      v8 = (v8 - 24);
      v58 = *(v57 - 1);
      *v8 = 0;
      *(v8 + 1) = 0;
      v59 = *(v55 - 1);
      *(v55 - 1) = v58;
      if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v56 = v57;
LABEL_79:
        (v59->__on_zero_shared)(v59);
        std::__shared_weak_count::__release_weak(v59);
        a6 = v51;
        goto LABEL_71;
      }

      v56 = v57;
LABEL_71:
      *v55 = *v56;
      v55 -= 6;
      if (v53 == a6)
      {
        goto LABEL_113;
      }
    }

    v53 = (v53 - 24);
    v60 = *(v56 - 1);
    *v53 = 0;
    *(v53 + 1) = 0;
    v59 = *(v55 - 1);
    *(v55 - 1) = v60;
    if (!v59 || atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_71;
    }

    goto LABEL_79;
  }

  if (v8 != a1)
  {
    v52 = 0;
    v61 = a6;
    v62 = a1;
    do
    {
      v63 = v61;
      *v61 = *v62;
      *v62 = 0;
      *(v62 + 1) = 0;
      *(v61 + 4) = *(v62 + 4);
      ++v52;
      v62 = (v62 + 24);
      v61 = (v61 + 24);
    }

    while (v62 != v8);
    v64 = a1 + 1;
    v65 = a6;
    while (v8 != a3)
    {
      v66 = a3;
      if (*(v8 + 4) <= *(v65 + 4))
      {
        v69 = *v65;
        *v65 = 0;
        *(v65 + 1) = 0;
        v70 = *(v64 - 1);
        *(v64 - 1) = v69;
        if (v70 && !atomic_fetch_add(&v70->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v70->__on_zero_shared)(v70);
          std::__shared_weak_count::__release_weak(v70);
          a6 = v51;
        }

        *v64 = *(v65 + 4);
        v65 = (v65 + 24);
      }

      else
      {
        v67 = *v8;
        *v8 = 0;
        *(v8 + 1) = 0;
        v68 = *(v64 - 1);
        *(v64 - 1) = v67;
        if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v68->__on_zero_shared)(v68);
          std::__shared_weak_count::__release_weak(v68);
          a6 = v51;
        }

        *v64 = *(v8 + 4);
        v8 = (v8 + 24);
      }

      a3 = v66;
      v64 += 6;
      if (v65 == v61)
      {
        goto LABEL_113;
      }
    }

    do
    {
      v79 = *v65;
      *v65 = 0;
      *(v65 + 1) = 0;
      v80 = *(v64 - 1);
      *(v64 - 1) = v79;
      if (v80 && !atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v80->__on_zero_shared)(v80);
        std::__shared_weak_count::__release_weak(v80);
        a6 = v51;
      }

      *v64 = *(v65 + 4);
      v64 += 6;
      v78 = v65 == v63;
      v65 = (v65 + 24);
    }

    while (!v78);
LABEL_113:
    if (a6 && v52)
    {
      v81 = a6 + 1;
      do
      {
        v82 = *v81;
        if (*v81 && !atomic_fetch_add(&v82->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v82->__on_zero_shared)(v82, a2, a3);
          std::__shared_weak_count::__release_weak(v82);
        }

        v81 += 3;
        --v52;
      }

      while (v52);
    }
  }
}

void sub_2401F98FC(void *a1)
{
  *a1 = &unk_285227820;
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[8];
    v4 = a1[7];
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
      v4 = a1[7];
    }

    a1[8] = v2;
    operator delete(v4);
  }

  v6 = a1[6];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  *a1 = &unk_285227638;
  v7 = a1[4];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  JUMPOUT(0x245CBCA30);
}

void *sub_2401F9AE0(void *a1)
{
  *a1 = &unk_285227820;
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[8];
    v4 = a1[7];
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
      v4 = a1[7];
    }

    a1[8] = v2;
    operator delete(v4);
  }

  v6 = a1[6];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  *a1 = &unk_285227638;
  v7 = a1[4];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[2];
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  return a1;
}

void sub_2401F9CA4(void *a1, uint64_t **a2, char a3)
{
  v423 = *MEMORY[0x277D85DE8];
  v384 = *a2;
  v385 = a2[1];
  kdebug_trace();
  v7 = *a2;
  v396 = a2;
  v397 = a2[1];
  if (*a2 != v397)
  {
    v8 = &loc_240270000;
    do
    {
      v9 = *v7;
      v10 = *(*v7 + 48);
      v11 = *(*v7 + 56);
      v12 = *v7;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        v12 = *v7;
      }

      v13 = *(v12 + 64);
      v14 = *(v12 + 72);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v15 = *(v9 + 40);
      v16 = *(v10 + 8);
      if (v15)
      {
        _ZF = v16 == 0;
      }

      else
      {
        _ZF = 1;
      }

      if (!_ZF)
      {
        v18 = (*(v10 + 4) * *v10);
        if ((v15 & 0xF) != 0)
        {
          v19 = 0;
        }

        else
        {
          v19 = *(v9 + 40);
        }

        if ((v16 & 0xF) != 0)
        {
          v20 = 0;
        }

        else
        {
          v20 = *(v10 + 8);
        }

        if (((*(v10 + 4) * *v10) & 0xF) == 0 && ((v16 | v15) & 0xF) == 0)
        {
          v23 = (v18 >> 4);
          if (v23 >= 1)
          {
            do
            {
              v24 = *v19++;
              v25 = vdupq_n_s32(0x4B400000u);
              v26 = vorrq_s8(vqtbl1q_s8(v24, xmmword_240270970), v25);
              v27 = vorrq_s8(vqtbl1q_s8(v24, xmmword_240270980), v25);
              v6 = vorrq_s8(vqtbl1q_s8(v24, v8[153]), v25);
              v28 = vorrq_s8(vqtbl1q_s8(v24, xmmword_2402709A0), v25);
              v29 = vdupq_n_s32(0xCB400000);
              v5 = vaddq_f32(v28, v29);
              v20[2] = vaddq_f32(v27, v29);
              v20[3] = vaddq_f32(v26, v29);
              v4 = vaddq_f32(v6, v29);
              *v20 = v5;
              v20[1] = v4;
              v20 += 4;
              --v23;
            }

            while (v23);
            v16 = *(v10 + 8);
          }
        }

        else
        {
          if (v18 < 1)
          {
            goto LABEL_43;
          }

          if (v18 < 4)
          {
            i = 0;
            goto LABEL_42;
          }

          if (v16 < v15 + v18 && v15 < &v16[v18])
          {
            for (i = 0; i != v18; ++i)
            {
LABEL_42:
              v4.i8[0] = *(v15 + i);
              v4.f32[0] = v4.u32[0];
              v16[i] = v4.f32[0];
            }

            goto LABEL_43;
          }

          if (v18 >= 0x10)
          {
            i = v18 & 0x7FFFFFF0;
            v31 = *(v9 + 40);
            v32 = *(v10 + 8);
            v33 = i;
            do
            {
              v34 = *v31++;
              v4 = vcvtq_f32_u32(vqtbl1q_s8(v34, xmmword_2402709A0));
              v35 = vcvtq_f32_u32(vqtbl1q_s8(v34, v8[153]));
              v6 = vcvtq_f32_u32(vqtbl1q_s8(v34, xmmword_240270980));
              v5 = vcvtq_f32_u32(vqtbl1q_s8(v34, xmmword_240270970));
              v32[2] = v6;
              v32[3] = v5;
              *v32 = v4;
              v32[1] = v35;
              v32 += 4;
              v33 -= 16;
            }

            while (v33);
            if (i == v18)
            {
              goto LABEL_43;
            }

            if ((v18 & 0xC) == 0)
            {
              goto LABEL_42;
            }
          }

          else
          {
            i = 0;
          }

          v36 = i;
          i = v18 & 0x7FFFFFFC;
          v37 = v36 - i;
          v38 = v36;
          v39 = (v15 + v36);
          do
          {
            v40 = *v39++;
            v4.i32[0] = v40;
            v4 = vcvtq_f32_u32(vmovl_u16(*&vmovl_u8(*v4.f32)));
            *&v16[v38] = v4;
            v38 += 4;
            v37 += 4;
          }

          while (v37);
          if (i != v18)
          {
            goto LABEL_42;
          }
        }
      }

LABEL_43:
      v41 = *(v10 + 24);
      if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
      {
        sub_240222DDC();
      }

      v4.i32[0] = *(qword_280C03828 + 116);
      v42 = *(v10 + 24);
      v43 = *(v10 + 8);
      if ((v43 & 0xF) != 0)
      {
        v44 = 0;
      }

      else
      {
        v44 = *(v10 + 8);
      }

      if ((v16 & 0xF) != 0)
      {
        v45 = 0;
      }

      else
      {
        v45 = v16;
      }

      if (v44)
      {
        v46 = v45 == 0;
      }

      else
      {
        v46 = 1;
      }

      if (!v46 && (*(v10 + 24) & 3) == 0)
      {
        v53 = *v44;
        v54 = vmulq_f32(v53, v53);
        v55 = (v42 >> 2);
        if (v55 >= 2)
        {
          v56 = v55 - 1;
          v57 = v44 + 1;
          do
          {
            v58 = *v57++;
            v53 = vaddq_f32(v53, v58);
            v54 = vmlaq_f32(v54, v58, v58);
            --v56;
          }

          while (v56);
        }

        v59 = vadd_f32(*v53.f32, *&vextq_s8(v53, v53, 8uLL));
        v60 = vadd_f32(v59, vdup_lane_s32(v59, 1));
        v61 = vadd_f32(*v54.f32, *&vextq_s8(v54, v54, 8uLL));
        v62 = vmul_f32(v60, v60);
        *v62.i32 = (vaddv_f32(v61) - (*v62.i32 / v42)) / (v42 - 1);
        v61.f32[0] = vaddv_f32(v59) / v42;
        v5 = vdupq_lane_s32(v61, 0);
        v63 = sqrtf(*v62.i32);
        if (v63 < 0.001)
        {
          v63 = 0.001;
        }

        v64 = 1.0 / v63;
        if (v4.f32[0] <= 0.0)
        {
          if (v55 >= 1)
          {
            do
            {
              v68 = *v44++;
              *v45++ = vmulq_n_f32(vsubq_f32(v68, v5), v64);
              --v55;
            }

            while (v55);
          }
        }

        else if (v55 >= 1)
        {
          *v62.i32 = -v4.f32[0];
          v65 = vdupq_lane_s32(v62, 0);
          v66 = vdupq_lane_s32(*v4.f32, 0);
          do
          {
            v67 = *v44++;
            *v45++ = vminnmq_f32(vmaxnmq_f32(vmulq_n_f32(vsubq_f32(v67, v5), v64), v65), v66);
            --v55;
          }

          while (v55);
        }

        goto LABEL_115;
      }

      if (!v42)
      {
        v6.i64[0] = 0;
        goto LABEL_80;
      }

      v6.i32[0] = v43->i32[0];
      if (v42 == 1)
      {
        goto LABEL_80;
      }

      v48 = &v43->f32[1];
      if (4 * v42 == 8)
      {
        goto LABEL_64;
      }

      v49 = ((4 * v42 - 8) >> 2) + 1;
      v50 = &v43->f32[2];
      v51 = v49 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v6.f32[0] = (v6.f32[0] + *(v50 - 1)) + *v50;
        v50 += 2;
        v51 -= 2;
      }

      while (v51);
      if (v49 != (v49 & 0x7FFFFFFFFFFFFFFELL))
      {
        v48 += v49 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
LABEL_64:
          v52 = *v48++;
          v6.f32[0] = v6.f32[0] + v52;
        }

        while (v48 != &v43->f32[v42]);
      }

LABEL_80:
      if (!v41)
      {
        goto LABEL_115;
      }

      v69 = v42;
      v6.f32[0] = v6.f32[0] / v42;
      v70 = &v16[v41];
      v71 = (v41 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v71 < 7)
      {
        v72 = v16;
        do
        {
LABEL_88:
          v80 = v43->f32[0];
          v43 = (v43 + 4);
          *v72++ = v80 - v6.f32[0];
        }

        while (v72 != v70);
        goto LABEL_89;
      }

      v72 = v16;
      if ((v16 - v43) < 0x20)
      {
        goto LABEL_88;
      }

      v73 = v71 + 1;
      v74 = v73 & 0x7FFFFFFFFFFFFFF8;
      v72 = &v16[v74];
      v75 = vdupq_lane_s32(*v6.f32, 0);
      v76 = v43 + 1;
      v77 = (v16 + 4);
      v78 = v73 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v79 = vsubq_f32(*v76, v75);
        v77[-1] = vsubq_f32(v76[-1], v75);
        *v77 = v79;
        v76 += 2;
        v77 += 2;
        v78 -= 8;
      }

      while (v78);
      if (v73 != (v73 & 0x7FFFFFFFFFFFFFF8))
      {
        v43 = (v43 + v74 * 4);
        goto LABEL_88;
      }

LABEL_89:
      v81 = 4 * v41;
      v82 = *v16 * *v16;
      if (v41 == 1)
      {
        goto LABEL_96;
      }

      v83 = v16 + 1;
      if ((v81 - 8) < 0x1C)
      {
        goto LABEL_95;
      }

      v84 = ((v81 - 8) >> 2) + 1;
      v85 = (v16 + 5);
      v86 = v84 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v87 = vmulq_f32(v85[-1], v85[-1]);
        v88 = vmulq_f32(*v85, *v85);
        v82 = (((((((v82 + v87.f32[0]) + v87.f32[1]) + v87.f32[2]) + v87.f32[3]) + v88.f32[0]) + v88.f32[1]) + v88.f32[2]) + v88.f32[3];
        v85 += 2;
        v86 -= 8;
      }

      while (v86);
      if (v84 != (v84 & 0x7FFFFFFFFFFFFFF8))
      {
        v83 += v84 & 0x7FFFFFFFFFFFFFF8;
        do
        {
LABEL_95:
          v89 = *v83++;
          v82 = v82 + (v89 * v89);
        }

        while (v83 != &v16[v81 / 4]);
      }

LABEL_96:
      v5.f32[0] = sqrtf(v82 / v69);
      if (v5.f32[0] < 0.001)
      {
        v5.f32[0] = 0.001;
      }

      v90 = v81 - 4;
      v91 = ((v81 - 4) >> 2) + 1;
      v92 = v16;
      if (v90 >= 0x1C)
      {
        v93 = vdupq_lane_s32(*v5.f32, 0);
        v94 = (v16 + 4);
        v95 = v91 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v96 = vdivq_f32(*v94, v93);
          v94[-1] = vdivq_f32(v94[-1], v93);
          *v94 = v96;
          v94 += 2;
          v95 -= 8;
        }

        while (v95);
        if (v91 == (v91 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_104;
        }

        v92 = &v16[v91 & 0x7FFFFFFFFFFFFFF8];
      }

      do
      {
        *v92 = *v92 / v5.f32[0];
        ++v92;
      }

      while (v92 != v70);
LABEL_104:
      if (v4.f32[0] <= 0.0)
      {
        goto LABEL_115;
      }

      v5.f32[0] = -v4.f32[0];
      if (v90 >= 0x1C)
      {
        v97 = vdupq_lane_s32(*v4.f32, 0);
        v98 = vdupq_lane_s32(*v5.f32, 0);
        v99 = (v16 + 4);
        v100 = v91 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v101 = vbslq_s8(vcgtq_f32(v97, v99[-1]), v99[-1], v97);
          v102 = vbslq_s8(vcgtq_f32(v97, *v99), *v99, v97);
          v99[-1] = vbslq_s8(vcgtq_f32(v101, v98), v101, v98);
          *v99 = vbslq_s8(vcgtq_f32(v102, v98), v102, v98);
          v99 += 2;
          v100 -= 8;
        }

        while (v100);
        if (v91 == (v91 & 0x7FFFFFFFFFFFFFF8))
        {
          goto LABEL_115;
        }

        v16 += v91 & 0x7FFFFFFFFFFFFFF8;
      }

      do
      {
        v103 = *v16;
        if (*v16 >= v4.f32[0])
        {
          v103 = v4.f32[0];
        }

        if (v103 <= v5.f32[0])
        {
          v103 = -v4.f32[0];
        }

        *v16++ = v103;
      }

      while (v16 != v70);
LABEL_115:
      v421 = 0uLL;
      *v13 = 0;
      *(v13 + 8) = 0;
      *(v13 + 12) = *(&v421 + 4);
      *(v13 + 20) = HIDWORD(v421);
      v104 = *(v13 + 40);
      if (v104)
      {
        bzero(*(v13 + 24), 4 * v104);
      }

      *(v13 + 80) = 0;
      *(v13 + 48) = 0u;
      *(v13 + 64) = 0u;
      v8 = &loc_240270000;
      if (2 * *(v13 + 208))
      {
        bzero(*(v13 + 192), 4 * (2 * *(v13 + 208)));
      }

      v105 = *(v13 + 232);
      if (v105)
      {
        bzero(*(v13 + 216), 4 * (3 * v105));
      }

      *(v13 + 240) = 0;
      *(v13 + 248) = 0;
      *(v13 + 256) = 0;
      v5.f32[0] = (*v10 - 1);
      v106 = (*v9 * 200.0) / v5.f32[0];
      v107 = vmul_f32(vsub_f32(0x3F0000003F000000, vdiv_f32(*(v9 + 4), vdup_lane_s32(*v5.f32, 0))), vdup_n_s32(0x43480000u));
      v108 = 1.0 / sqrtf((v106 * v106) + (vmul_f32(v107, v107).f32[0] + vmuls_lane_f32(v107.f32[1], v107, 1)));
      v400 = v107;
      v109 = -(v107.f32[0] * v108);
      v110 = -(v106 * v108);
      v111 = sqrtf((v109 * v109) + (v110 * v110));
      v112 = -(v108 * -v106) / v111;
      v113 = v109 / v111;
      v114 = atan2f(-((v109 * -0.0) + (v112 * -(v107.f32[1] * v108))), v110);
      *v13 = v114;
      *(v13 + 4) = asinf(v113);
      *(v13 + 8) = atan2f(-0.0, v112);
      if (v114 < 0.0)
      {
        *v13 = v114 + 6.2832;
      }

      *v4.f32 = v400;
      *(v13 + 12) = v400;
      *(v13 + 20) = v106;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        if (v11)
        {
LABEL_126:
          if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v11->__on_zero_shared)(v11);
            std::__shared_weak_count::__release_weak(v11);
          }
        }
      }

      else if (v11)
      {
        goto LABEL_126;
      }

      v7 += 2;
    }

    while (v7 != v397);
  }

  kdebug_trace();
  kdebug_trace();
  v115 = v396[1] - *v396;
  v116 = v115 >> 4;
  v415 = 0;
  v416 = 0;
  v414 = &v415;
  if ((v115 >> 4) < 1)
  {
    goto LABEL_185;
  }

  v117 = 0;
  v394 = (v115 >> 4) & 0x7FFFFFFF;
  v118 = 1;
  do
  {
    v119 = *(*v396 + 16 * v117);
    v121 = *(v119 + 64);
    v120 = *(v119 + 72);
    if (v120 && (atomic_fetch_add_explicit(&v120->__shared_owners_, 1uLL, memory_order_relaxed), !atomic_fetch_add(&v120->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL)))
    {
      (v120->__on_zero_shared)(v120);
      std::__shared_weak_count::__release_weak(v120);
      v122 = *(v119 + 48);
      v123 = *(v119 + 56);
      if (!v123)
      {
        goto LABEL_141;
      }
    }

    else
    {
      v122 = *(v119 + 48);
      v123 = *(v119 + 56);
      if (!v123)
      {
        goto LABEL_141;
      }
    }

    atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v123->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v123->__on_zero_shared)(v123);
      std::__shared_weak_count::__release_weak(v123);
    }

LABEL_141:
    sub_2401FC208(&v420, a1, v117, v116);
    v124 = v420;
    if (!v420)
    {
      v118 = 0;
      v174 = v421;
      if (!v421)
      {
        goto LABEL_134;
      }

LABEL_165:
      if (!atomic_fetch_add(&v174->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v174->__on_zero_shared)(v174);
        std::__shared_weak_count::__release_weak(v174);
      }

      goto LABEL_134;
    }

    v125 = DWORD2(v421);
    v126 = *(v121 + 160);
    v127 = *v119;
    if ((atomic_load_explicit(&qword_280C039F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F0))
    {
      sub_240222DDC();
    }

    if ((v125 & 0x80000000) != 0 || v124[8] <= v125)
    {
      if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
      {
        qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
        __cxa_guard_release(&qword_280C03A00);
      }

      v169 = qword_280C03978;
      if (!os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_154;
      }

      LOWORD(memptr) = 0;
      v176 = v169;
      v177 = "invalid batch index";
      goto LABEL_173;
    }

    if (*(v122 + 24) != 0x4000)
    {
      if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
      {
        qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
        __cxa_guard_release(&qword_280C03A00);
      }

      v175 = qword_280C03978;
      if (!os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_154;
      }

      LOWORD(memptr) = 0;
      v176 = v175;
      v177 = "image input size is not correct";
LABEL_173:
      _os_log_error_impl(&dword_2401B8000, v176, OS_LOG_TYPE_ERROR, v177, &memptr, 2u);
LABEL_154:
      v170 = 0;
      goto LABEL_155;
    }

    memcpy((*(v124 + 5) + 196608 * v125), *(v122 + 8), 0x10000uLL);
    LODWORD(v393) = HIDWORD(*(v119 + 4));
    v128 = vdupq_lane_s32(*(v119 + 4), 0);
    v129 = 1.0 / v127;
    v398 = vmulq_n_f32(vsubq_f32(xmmword_2402709C0, v128), 1.0 / v127);
    v401 = vmulq_n_f32(vsubq_f32(xmmword_2402709B0, v128), 1.0 / v127);
    v130 = vmulq_n_f32(vsubq_f32(xmmword_2402709D0, v128), 1.0 / v127);
    v131 = vmulq_n_f32(vsubq_f32(xmmword_2402709E0, v128), 1.0 / v127);
    v132 = vmulq_n_f32(vsubq_f32(xmmword_2402709F0, v128), 1.0 / v127);
    v133 = vmulq_n_f32(vsubq_f32(xmmword_240270A00, v128), 1.0 / v127);
    v134 = vmulq_n_f32(vsubq_f32(xmmword_240270A10, v128), 1.0 / v127);
    v135 = vmulq_n_f32(vsubq_f32(xmmword_240270A20, v128), 1.0 / v127);
    v136 = vmulq_n_f32(vsubq_f32(xmmword_240270A30, v128), 1.0 / v127);
    v137 = vmulq_n_f32(vsubq_f32(xmmword_240270A40, v128), 1.0 / v127);
    v138 = (*(v124 + 5) + 196608 * v125 + 0x10000);
    v139 = vmulq_n_f32(vsubq_f32(xmmword_240270A50, v128), 1.0 / v127);
    v140 = vmulq_n_f32(vsubq_f32(xmmword_240270A60, v128), 1.0 / v127);
    v141 = vmulq_n_f32(vsubq_f32(xmmword_240270A70, v128), 1.0 / v127);
    v142 = vmulq_n_f32(vsubq_f32(xmmword_240270A80, v128), 1.0 / v127);
    v143 = vmulq_n_f32(vsubq_f32(xmmword_240270A90, v128), 1.0 / v127);
    v144 = vmulq_n_f32(vsubq_f32(xmmword_240270AA0, v128), 1.0 / v127);
    v145 = vmulq_n_f32(vsubq_f32(xmmword_240270AB0, v128), 1.0 / v127);
    v146 = vmulq_n_f32(vsubq_f32(xmmword_240270AC0, v128), 1.0 / v127);
    v147 = vmulq_n_f32(vsubq_f32(xmmword_240270AD0, v128), 1.0 / v127);
    v148 = vmulq_n_f32(vsubq_f32(xmmword_240270AE0, v128), 1.0 / v127);
    v149 = vmulq_n_f32(vsubq_f32(xmmword_240270AF0, v128), 1.0 / v127);
    v150 = vmulq_n_f32(vsubq_f32(xmmword_240270B00, v128), 1.0 / v127);
    v151 = vmulq_n_f32(vsubq_f32(xmmword_240270B10, v128), 1.0 / v127);
    v152 = vmulq_n_f32(vsubq_f32(xmmword_240270B20, v128), v129);
    v153 = vmulq_n_f32(vsubq_f32(xmmword_240270B30, v128), v129);
    v154 = vmulq_n_f32(vsubq_f32(xmmword_240270B40, v128), v129);
    v155 = vmulq_n_f32(vsubq_f32(xmmword_240270B50, v128), v129);
    v156 = vmulq_n_f32(vsubq_f32(xmmword_240270B60, v128), v129);
    v157 = vsubq_f32(xmmword_240270B80, v128);
    v158 = vsubq_f32(xmmword_240270B90, v128);
    v159 = vsubq_f32(xmmword_240270BA0, v128);
    v160 = vmulq_n_f32(vsubq_f32(xmmword_240270B70, v128), v129);
    v161 = vmulq_n_f32(v157, v129);
    v162 = vmulq_n_f32(v158, v129);
    v163 = 128;
    v164 = vmulq_n_f32(v159, v129);
    do
    {
      v165 = v138 + 32;
      *v138 = v401;
      v138[1] = v398;
      v138[2] = v130;
      v138[3] = v131;
      v138[4] = v132;
      v138[5] = v133;
      v138[6] = v134;
      v138[7] = v135;
      v138[8] = v136;
      v138[9] = v137;
      v138[10] = v139;
      v138[11] = v140;
      v138[12] = v141;
      v138[13] = v142;
      v138[14] = v143;
      v138[15] = v144;
      v138[16] = v145;
      v138[17] = v146;
      v138[18] = v147;
      v138[19] = v148;
      v138[20] = v149;
      v138[21] = v150;
      v138[22] = v151;
      v138[23] = v152;
      v138[24] = v153;
      v138[25] = v154;
      v138[26] = v155;
      v138[27] = v156;
      v138[28] = v160;
      v138[29] = v161;
      v138[30] = v162;
      v138[31] = v164;
      v138 += 32;
      --v163;
    }

    while (v163);
    for (j = 0; j != 128; ++j)
    {
      v164.f32[0] = v129 * (j - v393);
      v164 = vdupq_lane_s32(*v164.f32, 0);
      *v165 = v164;
      v165[1] = v164;
      v165[2] = v164;
      v165[3] = v164;
      v165[4] = v164;
      v165[5] = v164;
      v165[6] = v164;
      v165[7] = v164;
      v165[8] = v164;
      v165[9] = v164;
      v165[10] = v164;
      v165[11] = v164;
      v165[12] = v164;
      v165[13] = v164;
      v165[14] = v164;
      v165[15] = v164;
      v165[16] = v164;
      v165[17] = v164;
      v165[18] = v164;
      v165[19] = v164;
      v165[20] = v164;
      v165[21] = v164;
      v165[22] = v164;
      v165[23] = v164;
      v165[24] = v164;
      v165[25] = v164;
      v165[26] = v164;
      v165[27] = v164;
      v165[28] = v164;
      v165[29] = v164;
      v165[30] = v164;
      v165[31] = v164;
      v165 += 32;
    }

    v167 = *(v124 + 8);
    v168 = &v167[(10 * v125)];
    if (v126 == v167)
    {
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, 0x40uLL, 0xE1AC2527uLL);
      v178 = memptr;
      v179 = *v126;
      *memptr = *v126;
      v178[1] = v126[1];
      v178[2] = v126[2];
      v178[3] = v126[3];
      v178[4] = v126[4];
      v178[5] = v126[5];
      v178[6] = v126[6];
      v178[7] = v126[7];
      v178[8] = v126[8];
      v178[9] = v126[9];
      *v168 = v179;
      v168[1] = v178[1];
      v168[2] = v178[2];
      v168[3] = v178[3];
      v168[4] = v178[4];
      v168[5] = v178[5];
      v168[6] = v178[6];
      v168[7] = v178[7];
      v168[8] = v178[8];
      v168[9] = v178[9];
      free(v178);
    }

    else
    {
      *v168 = *v126;
      v168[1] = v126[1];
      v168[2] = v126[2];
      v168[3] = v126[3];
      v168[4] = v126[4];
      v168[5] = v126[5];
      v168[6] = v126[6];
      v168[7] = v126[7];
      v168[8] = v126[8];
      v168[9] = v126[9];
    }

    v170 = 1;
LABEL_155:
    v118 &= v170;
    v171 = v415;
    if (!v415)
    {
LABEL_161:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v172 = v171;
        v173 = v171[4];
        if (v124 >= v173)
        {
          break;
        }

        v171 = *v172;
        if (!*v172)
        {
          goto LABEL_161;
        }
      }

      if (v173 >= v124)
      {
        break;
      }

      v171 = v172[1];
      if (!v171)
      {
        goto LABEL_161;
      }
    }

    v174 = v421;
    if (v421)
    {
      goto LABEL_165;
    }

LABEL_134:
    ++v117;
  }

  while (v117 != v394);
  if (v414 == &v415)
  {
    v180 = 0;
  }

  else
  {
    v180 = v118;
  }

  if (v180 == 1)
  {
    operator new();
  }

LABEL_185:
  v181 = (v385 - v384) >> 4;
  sub_2401FD3F8(v415);
  kdebug_trace();
  kdebug_trace();
  if (v181 >= 1)
  {
    v182 = 0;
    for (k = 0; (((v385 - v384) >> 4) & 0x7FFFFFFF) != k; ++k)
    {
      v184 = *(*v396 + v182);
      v186 = *(v184 + 64);
      v185 = *(v184 + 72);
      if (v185)
      {
        atomic_fetch_add_explicit(&v185->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_2401FC208(&v420, a1, k, v181);
        atomic_fetch_add_explicit(&v185->__shared_owners_, 1uLL, memory_order_relaxed);
        v187 = v185;
      }

      else
      {
        sub_2401FC208(&v420, a1, k, v181);
        v187 = 0;
      }

      v405 = v186;
      v406 = v187;
      v188 = v421;
      v404[0] = v420;
      v404[1] = v421;
      if (v421)
      {
        atomic_fetch_add_explicit((v421 + 8), 1uLL, memory_order_relaxed);
        sub_2401FC38C(a1, &v405, v404, DWORD2(v421));
        if (!atomic_fetch_add(&v188->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v188->__on_zero_shared)(v188);
          std::__shared_weak_count::__release_weak(v188);
        }

        v189 = v406;
        if (!v406)
        {
LABEL_198:
          v190 = v421;
          if (v421)
          {
            goto LABEL_199;
          }

          goto LABEL_202;
        }
      }

      else
      {
        sub_2401FC38C(a1, &v405, v404, DWORD2(v421));
        v189 = v406;
        if (!v406)
        {
          goto LABEL_198;
        }
      }

      if (atomic_fetch_add(&v189->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_198;
      }

      (v189->__on_zero_shared)(v189);
      std::__shared_weak_count::__release_weak(v189);
      v190 = v421;
      if (v421)
      {
LABEL_199:
        if (!atomic_fetch_add(&v190->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v190->__on_zero_shared)(v190);
          std::__shared_weak_count::__release_weak(v190);
        }
      }

LABEL_202:
      if (v185 && !atomic_fetch_add(&v185->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v185->__on_zero_shared)(v185);
        std::__shared_weak_count::__release_weak(v185);
      }

      v182 += 16;
    }
  }

  kdebug_trace();
  kdebug_trace();
  v191 = *v396;
  v386 = v396[1];
  if (*v396 != v386)
  {
    __asm { FMOV            V12.2S, #12.5 }

    while (1)
    {
      v194 = *v191;
      v196 = *(*v191 + 64);
      v195 = *(*v191 + 72);
      if (v195)
      {
        atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
        v194 = *v191;
        atomic_fetch_add_explicit(&v195->__shared_owners_, 1uLL, memory_order_relaxed);
        v197 = v195;
      }

      else
      {
        v197 = 0;
      }

      v395 = v197;
      v399 = v195;
      v199 = a1[1];
      v198 = a1[2];
      if (v198)
      {
        atomic_fetch_add_explicit(&v198->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v392 = v198;
      v402 = a1[5];
      v200 = *(v196 + 40);
      v201 = *(v196 + 24);
      v202 = *(v196 + 336);
      v388 = *(v196 + 320);
      v203 = *(v196 + 424);
      v414 = *(v196 + 464);
      v415 = *(v196 + 448);
      v416 = v414;
      v204 = v414;
      v205 = *(v196 + 472);
      v411[0] = *(v196 + 512);
      v411[1] = *(v196 + 496);
      v412 = v411[0];
      v413 = 0;
      v407 = v200 - 2;
      v408 = v201;
      v409 = v200;
      v410 = 0;
      v387 = (v194 + 4);
      v389 = v199;
      v206 = (3 * (v414 / 3));
      v207 = *(v196 + 216);
      v391 = *v194;
      v390 = *(v199 + 144);
      if (v203 == v207)
      {
        v420 = 0;
        malloc_type_posix_memalign(&v420, 0x20uLL, (4 * v206 + 31) & 0x7FFFFFFE0, 0xE1AC2527uLL);
        v216 = v420;
        v208 = v204 + 2;
        if (v208 >= 5)
        {
          v217 = (v206 - 1) & 0x3FFFFFFFFFFFFFFFLL;
          v218 = v217 + 1;
          if (v217 < 7)
          {
            v219 = v420;
            goto LABEL_232;
          }

          v219 = v420;
          if ((v420 - v203) < 0x20)
          {
            do
            {
LABEL_232:
              v227 = *v203++;
              *v219 = v227;
              v219 += 4;
            }

            while (v219 != &v216[4 * v206]);
          }

          else
          {
            v220 = v218 & 0x7FFFFFFFFFFFFFF8;
            v221 = &v203[v220];
            v222 = v420 + 16;
            v223 = (v203 + 4);
            v224 = v218 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v225 = *v223;
              *(v222 - 1) = *(v223 - 1);
              *v222 = v225;
              v222 += 2;
              v223 += 2;
              v224 -= 8;
            }

            while (v224);
            if (v218 != (v218 & 0x7FFFFFFFFFFFFFF8))
            {
              v219 = &v216[v220 * 4];
              v203 = v221;
              goto LABEL_232;
            }
          }

          v228 = v216;
          v229 = v207;
          if (v217 < 7 || (v228 = v216, v229 = v207, (v207 - v216) < 0x20))
          {
            do
            {
LABEL_239:
              v235 = *v228;
              v228 += 4;
              *v229++ = v235;
            }

            while (v229 != (v207 + 4 * v206));
          }

          else
          {
            v230 = 4 * (v218 & 0x7FFFFFFFFFFFFFF8);
            v228 = &v216[v230];
            v231 = (v207 + 16);
            v232 = (v216 + 16);
            v233 = v218 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v234 = *v232;
              *(v231 - 1) = *(v232 - 1);
              *v231 = v234;
              v231 += 2;
              v232 += 2;
              v233 -= 8;
            }

            while (v233);
            if (v218 != (v218 & 0x7FFFFFFFFFFFFFF8))
            {
              v229 = (v207 + v230);
              goto LABEL_239;
            }
          }
        }

        free(v216);
        goto LABEL_241;
      }

      v208 = v414 + 2;
      if ((v414 + 2) < 5)
      {
        goto LABEL_241;
      }

      v209 = (v206 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v209 < 7)
      {
        break;
      }

      v210 = *(v196 + 216);
      if ((v207 - v203) < 0x20)
      {
        goto LABEL_229;
      }

      v211 = (v209 + 1) & 0x7FFFFFFFFFFFFFF8;
      v212 = (v207 + 16);
      v213 = (v203 + 4);
      v214 = v211;
      do
      {
        v215 = *v213;
        *(v212 - 1) = *(v213 - 1);
        *v212 = v215;
        v212 += 2;
        v213 += 2;
        v214 -= 8;
      }

      while (v214);
      if (v209 + 1 != v211)
      {
        v210 = (v207 + 4 * v211);
        v203 += v211;
        goto LABEL_229;
      }

LABEL_241:
      v236 = v402;
      LODWORD(memptr) = v206;
      v418 = v207;
      v419 = v206;
      *&v421 = &v414;
      *(&v421 + 1) = &v407;
      v422 = 1065353216;
      sub_2402381E0(&memptr, &v420);
      v237 = (v388 + 4 * (v202 - 6));
      v238 = v237[1].f32[0];
      v239 = *(v196 + 56) - v238;
      v240 = vsub_f32(*(v196 + 48), *v237);
      v241 = 1.0 / sqrtf(vaddv_f32(vmul_f32(v240, v240)) + (v239 * v239));
      *(v207 + 72) = vadd_f32(*v237, vmul_f32(vmul_n_f32(v240, v241), _D12));
      *(v207 + 80) = v238 + ((v239 * v241) * 12.5);
      v242 = (v388 + 4 * (v202 - 3));
      v243 = v242[1].f32[0];
      v244 = *(v196 + 56) - v243;
      v245 = vsub_f32(*(v196 + 48), *v242);
      v246 = 1.0 / sqrtf(vaddv_f32(vmul_f32(v245, v245)) + (v244 * v244));
      *(v207 + 156) = vadd_f32(*v242, vmul_f32(vmul_n_f32(v245, v246), _D12));
      *(v207 + 164) = v243 + ((v244 * v246) * 12.5);
      v247 = __sincosf_stret(*v196);
      v248 = __sincosf_stret(*(v196 + 4));
      v250 = __sincosf_stret(*(v196 + 8));
      if (v208 >= 5)
      {
        v251 = 0;
        v249.i64[0] = *(v196 + 12);
        v249.i32[2] = *(v196 + 20);
        v253.i64[0] = __PAIR64__((-(v247.__sinval * v248.__sinval) * v250.__sinval) + (v247.__cosval * v250.__cosval), -(v248.__cosval * v250.__sinval));
        v254.i32[3] = 0;
        v254.i32[0] = LODWORD(v248.__sinval);
        do
        {
          v255 = 4 * v251;
          v256 = (v207 + 4 * (v251 + 2));
          v254.f32[2] = v247.__cosval * v248.__cosval;
          v254.f32[1] = -(v248.__cosval * v247.__sinval);
          v252.i64[1] = COERCE_UNSIGNED_INT((v248.__sinval * -(v247.__cosval * v250.__cosval)) + (v247.__sinval * v250.__sinval));
          v253.i64[1] = COERCE_UNSIGNED_INT(((v247.__cosval * v248.__sinval) * v250.__sinval) + (v250.__cosval * v247.__sinval));
          v252.f32[1] = (v248.__sinval * (v247.__sinval * v250.__cosval)) + (v247.__cosval * v250.__sinval);
          v252.f32[0] = v248.__cosval * v250.__cosval;
          v257 = vaddq_f32(v249, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v253, *(v207 + 4 * (v251 + 1))), v252, *(v207 + v255)), v254, *v256));
          *(v207 + v255) = v257.i64[0];
          *v256 = v257.f32[2];
          v251 += 3;
        }

        while (v251 < v206);
      }

      v258 = *v402;
      v259 = *(v402 + 4);
      v260 = (3 * v259);
      if (v205 == *v402)
      {
        v420 = 0;
        malloc_type_posix_memalign(&v420, 0x20uLL, (4 * v260 + 31) & 0x7FFFFFFE0, 0xE1AC2527uLL);
        v268 = v420;
        if (v259)
        {
          v269 = (v260 - 1) & 0x3FFFFFFFFFFFFFFFLL;
          v270 = v269 + 1;
          if (v269 < 7)
          {
            v271 = v420;
            goto LABEL_263;
          }

          v271 = v420;
          if ((v420 - v205) < 0x20)
          {
            do
            {
LABEL_263:
              v279 = *v205++;
              *v271 = v279;
              v271 += 4;
            }

            while (v271 != &v268[4 * v260]);
          }

          else
          {
            v272 = v270 & 0x7FFFFFFFFFFFFFF8;
            v273 = &v205[v272];
            v274 = v420 + 16;
            v275 = (v205 + 4);
            v276 = v270 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v277 = *v275;
              *(v274 - 1) = *(v275 - 1);
              *v274 = v277;
              v274 += 2;
              v275 += 2;
              v276 -= 8;
            }

            while (v276);
            if (v270 != (v270 & 0x7FFFFFFFFFFFFFF8))
            {
              v271 = &v268[v272 * 4];
              v205 = v273;
              goto LABEL_263;
            }
          }

          v280 = v268;
          v281 = v258;
          if (v269 < 7 || (v280 = v268, v281 = v258, (v258 - v268) < 0x20))
          {
            do
            {
LABEL_270:
              v287 = *v280;
              v280 += 4;
              *v281++ = v287;
            }

            while (v281 != (v258 + 4 * v260));
          }

          else
          {
            v282 = 4 * (v270 & 0x7FFFFFFFFFFFFFF8);
            v280 = &v268[v282];
            v283 = (v258 + 16);
            v284 = (v268 + 16);
            v285 = v270 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v286 = *v284;
              *(v283 - 1) = *(v284 - 1);
              *v283 = v286;
              v283 += 2;
              v284 += 2;
              v285 -= 8;
            }

            while (v285);
            if (v270 != (v270 & 0x7FFFFFFFFFFFFFF8))
            {
              v281 = (v258 + v282);
              goto LABEL_270;
            }
          }
        }

        free(v268);
        v236 = v402;
        goto LABEL_272;
      }

      if (!v259)
      {
        goto LABEL_272;
      }

      v261 = (v260 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v261 < 7)
      {
        v262 = *v402;
        do
        {
LABEL_260:
          v278 = *v205++;
          *v262++ = v278;
        }

        while (v262 != (v258 + 4 * v260));
        goto LABEL_272;
      }

      v262 = *v402;
      if ((v258 - v205) < 0x20)
      {
        goto LABEL_260;
      }

      v263 = (v261 + 1) & 0x7FFFFFFFFFFFFFF8;
      v264 = (v258 + 16);
      v265 = (v205 + 4);
      v266 = v263;
      do
      {
        v267 = *v265;
        *(v264 - 1) = *(v265 - 1);
        *v264 = v267;
        v264 += 2;
        v265 += 2;
        v266 -= 8;
      }

      while (v266);
      if (v261 + 1 != v263)
      {
        v262 = (v258 + 4 * v263);
        v205 += v263;
        goto LABEL_260;
      }

LABEL_272:
      LODWORD(memptr) = 3 * v259;
      v418 = v258;
      v419 = v260;
      *&v421 = v411;
      *(&v421 + 1) = &v407;
      v422 = 1065353216;
      sub_2402381E0(&memptr, &v420);
      v288 = __sincosf_stret(*v196);
      v289 = __sincosf_stret(*(v196 + 4));
      v293 = __sincosf_stret(*(v196 + 8));
      v291.n128_f32[0] = v293.__cosval;
      v290.n128_f32[0] = v293.__sinval;
      if (v259)
      {
        v294 = 0;
        v292.i64[0] = *(v196 + 12);
        v292.i32[2] = *(v196 + 20);
        v290.n128_f32[0] = v289.__cosval * v293.__cosval;
        v290.n128_f32[1] = (v289.__sinval * (v288.__sinval * v293.__cosval)) + (v288.__cosval * v293.__sinval);
        v290.n128_u64[1] = COERCE_UNSIGNED_INT((v289.__sinval * -(v288.__cosval * v293.__cosval)) + (v288.__sinval * v293.__sinval));
        v291.n128_u64[0] = __PAIR64__((-(v288.__sinval * v289.__sinval) * v293.__sinval) + (v288.__cosval * v293.__cosval), -(v289.__cosval * v293.__sinval));
        v291.n128_u64[1] = COERCE_UNSIGNED_INT(((v288.__cosval * v289.__sinval) * v293.__sinval) + (v293.__cosval * v288.__sinval));
        v295.i32[3] = 0;
        v295.i32[0] = LODWORD(v289.__sinval);
        do
        {
          v296 = 4 * v294;
          v297 = (v258 + 4 * (v294 + 2));
          v295.f32[2] = v288.__cosval * v289.__cosval;
          v295.f32[1] = -(v289.__cosval * v288.__sinval);
          v298 = vaddq_f32(v292, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v291, *(v258 + 4 * (v294 + 1))), v290, *(v258 + v296)), v295, *v297));
          *(v258 + v296) = v298.i64[0];
          *v297 = v298.f32[2];
          v294 += 3;
        }

        while (v294 < v260);
      }

      v299 = *(v389 + 104);
      if (v299)
      {
        v300 = 0;
        v301 = *(v389 + 88);
        v302 = *v236;
        v303 = 3 * v299;
        v304 = v236[3];
        do
        {
          v305 = 4 * v300;
          v306 = (v302 + 4 * (3 * *(v301 + v305)));
          v307 = *v306;
          v308 = v306[1];
          v309 = v306[2];
          v310 = (v302 + 4 * (3 * *(v301 + 4 * (v300 + 1))));
          v311 = (v302 + 4 * (3 * *(v301 + 4 * (v300 + 2))));
          v312 = *v310 - v307;
          v313 = v310[1] - v308;
          v314 = v310[2] - v309;
          v315 = *v311 - v307;
          v316 = v311[1] - v308;
          v317 = v311[2] - v309;
          v318 = (v313 * v317) - (v314 * v316);
          v319 = (v314 * v315) - (v312 * v317);
          v320 = (v312 * v316) - (v313 * v315);
          v321 = v304 + v305;
          v291.n128_f32[0] = sqrtf((v320 * v320) + ((v318 * v318) + (v319 * v319)));
          if (v291.n128_f32[0] < 1.0e-12)
          {
            v291.n128_f32[0] = 1.0e-12;
          }

          *v321 = v318 / v291.n128_f32[0];
          *(v321 + 4) = v319 / v291.n128_f32[0];
          v290.n128_f32[0] = v320 / v291.n128_f32[0];
          *(v321 + 8) = v290.n128_u32[0];
          v300 += 3;
        }

        while (v303 != v300);
      }

      v322 = *(v390 + 4);
      if (v322 >= 10)
      {
        v323 = 0;
        v324 = 0;
        v325 = v322 / 0xAuLL;
        v326 = *(v196 + 216);
        v327 = *v390;
        v328 = *v236;
        v329 = v390[3];
        v330 = v236[3];
        do
        {
          v331 = v326 + 4 * (3 * v324 + v206);
          v290.n128_u32[0] = 1.0;
          v332 = 10;
          v333 = v323;
          do
          {
            v334 = 4 * v333;
            v335 = (v328 + 4 * (3 * *(v327 + v334)));
            v336 = (v328 + 4 * (3 * *(v327 + v334 + 4)));
            v337 = (v328 + 4 * (3 * *(v327 + v334 + 8)));
            v338 = *(v329 + v334);
            v339 = *(v329 + v334 + 4);
            v340 = *(v329 + v334 + 8);
            v291.n128_u64[0] = vadd_f32(vadd_f32(vmul_n_f32(*v335, v338), vmul_n_f32(*v336, v339)), vmul_n_f32(*v337, v340));
            v341 = ((v338 * v335[1].f32[0]) + (v339 * v336[1].f32[0])) + (v340 * v337[1].f32[0]);
            v342 = sqrtf((vmul_f32(v291.n128_u64[0], v291.n128_u64[0]).f32[0] + vmuls_lane_f32(v291.n128_f32[1], v291.n128_u64[0], 1)) + (v341 * v341));
            v343 = 1.0e-12;
            if (v342 < 1.0e-12)
            {
              v342 = 1.0e-12;
            }

            v344 = (v330 + v334);
            v345 = *v344;
            v346 = v344[1];
            v347 = v344[2];
            v348 = sqrtf(((v345 * v345) + (v346 * v346)) + (v347 * v347));
            if (v348 >= 1.0e-12)
            {
              v343 = v348;
            }

            v349 = (((v345 * v291.n128_f32[0]) + vmuls_lane_f32(v346, v291.n128_u64[0], 1)) + (v341 * v347)) / (v342 * v343);
            v350 = fabsf(v349);
            if (v349 < 0.0 || v350 < v290.n128_f32[0])
            {
              if (v350 < v290.n128_f32[0])
              {
                v290.n128_f32[0] = v350;
              }

              *v331 = v291.n128_u64[0];
              *(v331 + 8) = v341;
            }

            v333 += 3;
            --v332;
          }

          while (v332);
          ++v324;
          v323 += 30;
        }

        while (v324 != v325);
      }

      v352 = *(v196 + 208);
      if (v352)
      {
        v353 = 0;
        v354 = *(v196 + 216);
        v355 = *(v196 + 192);
        if (v352 < 4 || v352 - 2147483649u < 0xFFFFFFFF80000000)
        {
          goto LABEL_314;
        }

        v353 = 0;
        v356 = v355 + 8 * v352;
        v357 = v355 >= v354 + 12 * v352 || v354 >= v356;
        v358 = !v357;
        if (v355 < v194 + 12 && v356 > v387)
        {
          goto LABEL_314;
        }

        if (v358)
        {
          goto LABEL_314;
        }

        v360 = 0;
        v361 = 0;
        v353 = v352 & 0xFFFFFFFC;
        do
        {
          v362 = (v354 + 4 * (v361 & 0xFFFFFFFC));
          *(&v291 - 1) = vld3q_f32(v362);
          v363 = (v355 + 4 * (v360 & 0xFFFFFFF8));
          __asm { FMOV            V3.4S, #1.0 }

          v366 = vbslq_s8(vcgtq_f32(_Q3, v365), _Q3, v365);
          v424.val[0] = vaddq_f32(vdupq_lane_s32(*v387, 0), vdivq_f32(vmulq_n_f32(v367, v391), v366));
          v290 = vdivq_f32(vmulq_n_f32(v291, v391), v366);
          v424.val[1] = vaddq_f32(vdupq_lane_s32(*v387, 1), v290);
          vst2q_f32(v363, v424);
          v361 += 12;
          v360 += 8;
        }

        while (12 * (v352 >> 2) != v361);
        if (v353 != v352)
        {
LABEL_314:
          v368 = v352 - v353;
          v369 = 2 * v353;
          v370 = 3 * v353;
          do
          {
            v371 = (v354 + 4 * v370);
            v372 = *v371;
            v373 = v371[1];
            v374 = v371[2];
            v375 = v355 + 4 * (v369 & 0xFFFFFFFE);
            if (v374 < 1.0)
            {
              v374 = 1.0;
            }

            *v375 = *(v194 + 4) + ((v372 * v391) / v374);
            v376 = v373 * v391;
            v291.n128_u32[0] = *(v194 + 8);
            v290.n128_f32[0] = v291.n128_f32[0] + (v376 / v374);
            *(v375 + 4) = v290.n128_u32[0];
            v369 += 2;
            v370 += 3;
            --v368;
          }

          while (v368);
        }
      }

      if (v392 && !atomic_fetch_add(&v392->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v392->__on_zero_shared)(v392, v290, v291);
        std::__shared_weak_count::__release_weak(v392);
        if (v395)
        {
LABEL_321:
          if (!atomic_fetch_add(&v395->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v395->__on_zero_shared)(v395, v290, v291);
            std::__shared_weak_count::__release_weak(v395);
          }
        }
      }

      else if (v395)
      {
        goto LABEL_321;
      }

      if (v399 && !atomic_fetch_add(&v399->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v399->__on_zero_shared)(v399, v290, v291);
        std::__shared_weak_count::__release_weak(v399);
      }

      v191 += 2;
      if (v191 == v386)
      {
        goto LABEL_327;
      }
    }

    v210 = *(v196 + 216);
    do
    {
LABEL_229:
      v226 = *v203++;
      *v210++ = v226;
    }

    while (v210 != (v207 + 4 * v206));
    goto LABEL_241;
  }

LABEL_327:
  kdebug_trace();
  v377 = *v396;
  v378 = v396[1];
  if (*v396 != v378)
  {
    if (a3)
    {
      do
      {
        v380 = *(*v377 + 64);
        v379 = *(*v377 + 72);
        if (v379)
        {
          atomic_fetch_add_explicit(&v379->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_240237DF8(0x33u, 0x34u, (v380 + 24));
          sub_240237DF8(0, 1u, (v380 + 24));
          sub_240237DF8(2u, 3u, (v380 + 24));
          sub_240237DF8(8u, 9u, (v380 + 24));
          sub_240237DF8(0xEu, 0xFu, (v380 + 24));
          v381 = sub_240237DF8(0x11u, 0x12u, (v380 + 24));
          if (!atomic_fetch_add(&v379->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v379->__on_zero_shared)(v379, v381);
            std::__shared_weak_count::__release_weak(v379);
          }
        }

        else
        {
          sub_240237DF8(0x33u, 0x34u, (v380 + 24));
          sub_240237DF8(0, 1u, (v380 + 24));
          sub_240237DF8(2u, 3u, (v380 + 24));
          sub_240237DF8(8u, 9u, (v380 + 24));
          sub_240237DF8(0xEu, 0xFu, (v380 + 24));
          sub_240237DF8(0x11u, 0x12u, (v380 + 24));
        }

        v377 += 16;
      }

      while (v377 != v378);
    }

    else
    {
      do
      {
        v382 = *(*v377 + 72);
        if (v382)
        {
          atomic_fetch_add_explicit(&v382->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v382->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v382->__on_zero_shared)(v382);
            std::__shared_weak_count::__release_weak(v382);
          }
        }

        v377 += 16;
      }

      while (v377 != v378);
    }
  }
}

void sub_2401FC208(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (a3 < 0 || a3 >= a4)
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
    {
      qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
      __cxa_guard_release(&qword_280C03A00);
    }

    v6 = qword_280C03978;
    if (!os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v7 = "invalid face index";
    v8 = buf;
    goto LABEL_15;
  }

  v5 = *(a2 + 56);
  if (((*(a2 + 64) - v5) >> 4) < a4)
  {
    if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_280C03A00))
      {
        qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
        __cxa_guard_release(&qword_280C03A00);
      }
    }

    v6 = qword_280C03978;
    if (!os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v12 = 0;
    v7 = "too many faces";
    v8 = &v12;
LABEL_15:
    _os_log_error_impl(&dword_2401B8000, v6, OS_LOG_TYPE_ERROR, v7, v8, 2u);
LABEL_9:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = -1;
    return;
  }

  v9 = v5 + 16 * a4;
  v11 = *(v9 - 16);
  v10 = *(v9 - 8);
  *a1 = v11;
  *(a1 + 8) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = a3;
}

void sub_2401FC38C(uint64_t a1, float32x2_t **a2, uint64_t *a3, unsigned int a4)
{
  v262 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  v6 = 12 * a4;
  v7 = (*(*a3 + 184) + v6);
  v8 = v7[1].f32[0];
  v9 = *a2;
  *v9 = vadd_f32(*v7, **a2);
  v9[1].f32[0] = v8 + v9[1].f32[0];
  v10 = (*(v5 + 208) + v6);
  v11 = v10[1].f32[0];
  *(v9 + 12) = vadd_f32(vmul_f32(*v10, vdup_n_s32(0x42C80000u)), *(v9 + 12));
  v9[2].f32[1] = (v11 * 100.0) + v9[2].f32[1];
  v12 = *(v5 + 284);
  v13 = v12 * a4;
  v14 = *(v5 + 136);
  v15 = &v14[4 * v13];
  v16 = v9[14];
  v236 = 3 * a4;
  if (v12 == v9[16].i32[0])
  {
    goto LABEL_12;
  }

  if (v14 == v16)
  {
    v18 = (4 * v12 + 31) & 0x7FFFFFFE0;
    memptr[0] = 0;
    malloc_type_posix_memalign(memptr, 0x20uLL, v18, 0xE1AC2527uLL);
    v19 = memptr[0];
    if (v14 != memptr[0])
    {
      if (v12)
      {
        v20 = (v12 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        if (v20 >= 7)
        {
          v21 = memptr[0];
          if ((memptr[0] - v14 - 4 * v13) >= 0x20)
          {
            v42 = (v20 + 1) & 0x7FFFFFFFFFFFFFF8;
            v15 += 4 * v42;
            v43 = memptr[0] + 16;
            v44 = &v14[4 * v13 + 16];
            v45 = v42;
            do
            {
              v46 = *v44;
              *(v43 - 1) = *(v44 - 1);
              *v43 = v46;
              v43 += 2;
              v44 += 32;
              v45 -= 8;
            }

            while (v45);
            if (v20 + 1 == v42)
            {
              goto LABEL_42;
            }

            v21 = &v19[4 * v42];
          }
        }

        else
        {
          v21 = memptr[0];
        }

        do
        {
          v47 = *v15;
          v15 += 4;
          *v21 = v47;
          v21 += 4;
        }

        while (v21 != &v19[4 * v12]);
      }

LABEL_42:
      v24 = v19;
      goto LABEL_50;
    }

    memptr[0] = 0;
    malloc_type_posix_memalign(memptr, 0x20uLL, v18, 0xE1AC2527uLL);
    v24 = memptr[0];
    if (v12)
    {
      v40 = (v12 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v40 >= 7)
      {
        v41 = memptr[0];
        if ((memptr[0] - v14 - 4 * v13) >= 0x20)
        {
          v48 = (v40 + 1) & 0x7FFFFFFFFFFFFFF8;
          v15 += 4 * v48;
          v49 = memptr[0] + 16;
          v50 = &v14[4 * v13 + 16];
          v51 = v48;
          do
          {
            v52 = *v50;
            *(v49 - 1) = *(v50 - 1);
            *v49 = v52;
            v49 += 2;
            v50 += 32;
            v51 -= 8;
          }

          while (v51);
          if (v40 + 1 == v48)
          {
            goto LABEL_49;
          }

          v41 = &v24[4 * v48];
        }
      }

      else
      {
        v41 = memptr[0];
      }

      do
      {
        v53 = *v15;
        v15 += 4;
        *v41 = v53;
        v41 += 4;
      }

      while (v41 != &v24[4 * v12]);
    }

LABEL_49:
    free(v19);
    goto LABEL_50;
  }

  v9[16].i32[0] = v12;
  if (v12)
  {
    if (*&v9[15] < v12)
    {
      free(v16);
      v17 = (4 * v12 + 31) & 0x7FFFFFFE0;
      v9[14] = 0;
      v9[15] = (v17 >> 2);
      memptr[0] = 0;
      malloc_type_posix_memalign(memptr, 0x20uLL, v17, 0xE1AC2527uLL);
      v16 = memptr[0];
      v9[14] = memptr[0];
    }
  }

  else
  {
    free(v16);
    v16 = 0;
    v9[14] = 0;
    v9[15] = 0;
  }

  LODWORD(v12) = v9[16].i32[0];
LABEL_12:
  if (v14 == v16)
  {
    v18 = (4 * v12 + 31) & 0x7FFFFFFE0;
    memptr[0] = 0;
    malloc_type_posix_memalign(memptr, 0x20uLL, v18, 0xE1AC2527uLL);
    v24 = memptr[0];
    if (v12)
    {
      v25 = (v12 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v25 >= 7)
      {
        v26 = memptr[0];
        if ((memptr[0] - v14 - 4 * v13) >= 0x20)
        {
          v34 = (v25 + 1) & 0x7FFFFFFFFFFFFFF8;
          v15 += 4 * v34;
          v35 = memptr[0] + 16;
          v36 = &v14[4 * v13 + 16];
          v37 = v34;
          do
          {
            v38 = *v36;
            *(v35 - 1) = *(v36 - 1);
            *v35 = v38;
            v35 += 2;
            v36 += 32;
            v37 -= 8;
          }

          while (v37);
          if (v25 + 1 == v34)
          {
            goto LABEL_50;
          }

          v26 = &v24[4 * v34];
        }
      }

      else
      {
        v26 = memptr[0];
      }

      do
      {
        v39 = *v15;
        v15 += 4;
        *v26 = v39;
        v26 += 4;
      }

      while (v26 != &v24[4 * v12]);
    }

LABEL_50:
    v54 = v9[14];
    v9[14] = v24;
    v9[15] = (v18 >> 2);
    v9[16].i32[0] = v12;
    free(v54);
    goto LABEL_51;
  }

  if (!v12)
  {
    goto LABEL_51;
  }

  v22 = (v12 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v22 < 7)
  {
    v23 = v16;
    goto LABEL_24;
  }

  v27 = &v14[4 * v13];
  v23 = v16;
  if ((v16 - v27) < 0x20)
  {
    do
    {
LABEL_24:
      v33 = *v15;
      v15 += 4;
      *v23 = v33;
      v23 += 4;
    }

    while (v23 != &v16[4 * v12]);
    goto LABEL_51;
  }

  v28 = (v22 + 1) & 0x7FFFFFFFFFFFFFF8;
  v15 += 4 * v28;
  v29 = v16 + 16;
  v30 = (v27 + 16);
  v31 = v28;
  do
  {
    v32 = *v30;
    *(v29 - 1) = *(v30 - 1);
    *v29 = v32;
    v29 += 2;
    v30 += 2;
    v31 -= 8;
  }

  while (v31);
  if (v22 + 1 != v28)
  {
    v23 = &v16[4 * v28];
    goto LABEL_24;
  }

LABEL_51:
  v55 = *(*a3 + 288);
  v56 = v55 * a4;
  v57 = *(*a3 + 112);
  v58 = &v57[4 * v56];
  v59 = *a2;
  v61 = &(*a2)[11];
  v60 = *v61;
  if (v55 == (*a2)[13].i32[0])
  {
    goto LABEL_62;
  }

  if (v57 == v60)
  {
    v63 = (4 * v55 + 31) & 0x7FFFFFFE0;
    memptr[0] = 0;
    malloc_type_posix_memalign(memptr, 0x20uLL, v63, 0xE1AC2527uLL);
    v64 = memptr[0];
    if (v57 != memptr[0])
    {
      if (v55)
      {
        v65 = (v55 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        if (v65 >= 7)
        {
          v66 = memptr[0];
          if ((memptr[0] - v57 - 4 * v56) >= 0x20)
          {
            v87 = (v65 + 1) & 0x7FFFFFFFFFFFFFF8;
            v58 += 4 * v87;
            v88 = memptr[0] + 16;
            v89 = &v57[4 * v56 + 16];
            v90 = v87;
            do
            {
              v91 = *v89;
              *(v88 - 1) = *(v89 - 1);
              *v88 = v91;
              v88 += 2;
              v89 += 32;
              v90 -= 8;
            }

            while (v90);
            if (v65 + 1 == v87)
            {
              goto LABEL_92;
            }

            v66 = &v64[4 * v87];
          }
        }

        else
        {
          v66 = memptr[0];
        }

        do
        {
          v92 = *v58;
          v58 += 4;
          *v66 = v92;
          v66 += 4;
        }

        while (v66 != &v64[4 * v55]);
      }

LABEL_92:
      v69 = v64;
      goto LABEL_100;
    }

    memptr[0] = 0;
    malloc_type_posix_memalign(memptr, 0x20uLL, v63, 0xE1AC2527uLL);
    v69 = memptr[0];
    if (v55)
    {
      v85 = (v55 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v85 >= 7)
      {
        v86 = memptr[0];
        if ((memptr[0] - v57 - 4 * v56) >= 0x20)
        {
          v93 = (v85 + 1) & 0x7FFFFFFFFFFFFFF8;
          v58 += 4 * v93;
          v94 = memptr[0] + 16;
          v95 = &v57[4 * v56 + 16];
          v96 = v93;
          do
          {
            v97 = *v95;
            *(v94 - 1) = *(v95 - 1);
            *v94 = v97;
            v94 += 2;
            v95 += 32;
            v96 -= 8;
          }

          while (v96);
          if (v85 + 1 == v93)
          {
            goto LABEL_99;
          }

          v86 = &v69[4 * v93];
        }
      }

      else
      {
        v86 = memptr[0];
      }

      do
      {
        v98 = *v58;
        v58 += 4;
        *v86 = v98;
        v86 += 4;
      }

      while (v86 != &v69[4 * v55]);
    }

LABEL_99:
    free(v64);
    goto LABEL_100;
  }

  v59[13].i32[0] = v55;
  if (v55)
  {
    if (*&v59[12] < v55)
    {
      free(v60);
      v62 = (4 * v55 + 31) & 0x7FFFFFFE0;
      v59[11] = 0;
      v59[12] = (v62 >> 2);
      memptr[0] = 0;
      malloc_type_posix_memalign(memptr, 0x20uLL, v62, 0xE1AC2527uLL);
      v60 = memptr[0];
      v59[11] = memptr[0];
    }
  }

  else
  {
    free(v60);
    v60 = 0;
    *v61 = 0;
    *(v61 + 8) = 0;
  }

  LODWORD(v55) = v59[13].i32[0];
LABEL_62:
  if (v57 == v60)
  {
    v63 = (4 * v55 + 31) & 0x7FFFFFFE0;
    memptr[0] = 0;
    malloc_type_posix_memalign(memptr, 0x20uLL, v63, 0xE1AC2527uLL);
    v69 = memptr[0];
    if (v55)
    {
      v70 = (v55 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v70 >= 7)
      {
        v71 = memptr[0];
        if ((memptr[0] - v57 - 4 * v56) >= 0x20)
        {
          v79 = (v70 + 1) & 0x7FFFFFFFFFFFFFF8;
          v58 += 4 * v79;
          v80 = memptr[0] + 16;
          v81 = &v57[4 * v56 + 16];
          v82 = v79;
          do
          {
            v83 = *v81;
            *(v80 - 1) = *(v81 - 1);
            *v80 = v83;
            v80 += 2;
            v81 += 32;
            v82 -= 8;
          }

          while (v82);
          if (v70 + 1 == v79)
          {
            goto LABEL_100;
          }

          v71 = &v69[4 * v79];
        }
      }

      else
      {
        v71 = memptr[0];
      }

      do
      {
        v84 = *v58;
        v58 += 4;
        *v71 = v84;
        v71 += 4;
      }

      while (v71 != &v69[4 * v55]);
    }

LABEL_100:
    v99 = v59[11];
    v59[11] = v69;
    v59[12] = (v63 >> 2);
    v59[13].i32[0] = v55;
    free(v99);
    goto LABEL_101;
  }

  if (!v55)
  {
    goto LABEL_101;
  }

  v67 = (v55 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v67 < 7)
  {
    v68 = v60;
    goto LABEL_74;
  }

  v72 = &v57[4 * v56];
  v68 = v60;
  if ((v60 - v72) < 0x20)
  {
    do
    {
LABEL_74:
      v78 = *v58;
      v58 += 4;
      *v68 = v78;
      v68 += 4;
    }

    while (v68 != &v60[4 * v55]);
    goto LABEL_101;
  }

  v73 = (v67 + 1) & 0x7FFFFFFFFFFFFFF8;
  v58 += 4 * v73;
  v74 = v60 + 16;
  v75 = (v72 + 16);
  v76 = v73;
  do
  {
    v77 = *v75;
    *(v74 - 1) = *(v75 - 1);
    *v74 = v77;
    v74 += 2;
    v75 += 2;
    v76 -= 8;
  }

  while (v76);
  if (v67 + 1 != v73)
  {
    v68 = &v60[4 * v73];
    goto LABEL_74;
  }

LABEL_101:
  v100 = *a2;
  v101 = (*a2)[13].u32[0];
  if (!v101)
  {
    goto LABEL_112;
  }

  v102 = v100[11];
  v103 = (v101 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v103 > 2)
  {
    v105 = v103 + 1;
    v106 = (v103 + 1) & 0x7FFFFFFFFFFFFFFCLL;
    __asm { FMOV            V1.4S, #1.0 }

    v240 = vdupq_n_s32(0x2B8CBCCCu);
    v242 = _Q1;
    v112 = v100[11];
    v113 = v106;
    do
    {
      v250 = vnegq_f32(*v112);
      v244 = expf(v250.f32[1]);
      v114.f32[0] = expf(v250.f32[0]);
      v114.f32[1] = v244;
      v245 = v114;
      v115 = expf(v250.f32[2]);
      v116 = v245;
      v116.f32[2] = v115;
      v246 = v116;
      v117 = expf(v250.f32[3]);
      v118 = v246;
      v118.f32[3] = v117;
      v119 = vaddq_f32(v118, v242);
      *v112++ = vdivq_f32(v242, vbslq_s8(vcgtq_f32(v240, v119), v240, v119));
      v113 -= 4;
    }

    while (v113);
    if (v105 == v106)
    {
      goto LABEL_112;
    }

    v104 = (*&v102 + 4 * v106);
  }

  else
  {
    v104 = v100[11];
  }

  v120 = (*&v102 + 4 * v101);
  do
  {
    v121 = expf(-*v104) + 1.0;
    if (v121 < 1.0e-12)
    {
      v121 = 1.0e-12;
    }

    *v104++ = 1.0 / v121;
  }

  while (v104 != v120);
LABEL_112:
  v122 = v100[16].u32[0];
  if (!v122)
  {
    goto LABEL_123;
  }

  v123 = v100[14];
  v124 = (v122 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v124 > 2)
  {
    v126 = v124 + 1;
    v127 = (v124 + 1) & 0x7FFFFFFFFFFFFFFCLL;
    __asm { FMOV            V1.4S, #1.0 }

    v241 = vdupq_n_s32(0x2B8CBCCCu);
    v243 = _Q1;
    v129 = v123;
    v130 = v127;
    do
    {
      v251 = vnegq_f32(*v129);
      v247 = expf(v251.f32[1]);
      v131.f32[0] = expf(v251.f32[0]);
      v131.f32[1] = v247;
      v248 = v131;
      v132 = expf(v251.f32[2]);
      v133 = v248;
      v133.f32[2] = v132;
      v249 = v133;
      v134 = expf(v251.f32[3]);
      v135 = v249;
      v135.f32[3] = v134;
      v136 = vaddq_f32(v135, v243);
      *v129++ = vdivq_f32(v243, vbslq_s8(vcgtq_f32(v241, v136), v241, v136));
      v130 -= 4;
    }

    while (v130);
    if (v126 == v127)
    {
      goto LABEL_123;
    }

    v125 = &v123->f32[v127];
  }

  else
  {
    v125 = v100[14];
  }

  v137 = &v123->f32[v122];
  do
  {
    v138 = expf(-*v125) + 1.0;
    if (v138 < 1.0e-12)
    {
      v138 = 1.0e-12;
    }

    *v125++ = 1.0 / v138;
  }

  while (v125 != v137);
LABEL_123:
  v139 = *(*a3 + 280);
  v140 = v139 * a4;
  v141 = *(*a3 + 88);
  v142 = &v141[4 * v140];
  v143 = 4 * v139 + 31;
  memptr[0] = 0;
  malloc_type_posix_memalign(memptr, 0x20uLL, v143 & 0x7FFFFFFE0, 0xE1AC2527uLL);
  v144 = memptr[0];
  if (v141 != memptr[0])
  {
    if (v139)
    {
      v145 = (v139 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v145 >= 7)
      {
        v146 = memptr[0];
        if ((memptr[0] - v141 - 4 * v140) >= 0x20)
        {
          v150 = (v145 + 1) & 0x7FFFFFFFFFFFFFF8;
          v142 += 4 * v150;
          v151 = memptr[0] + 16;
          v152 = &v141[4 * v140 + 16];
          v153 = v150;
          do
          {
            v154 = *v152;
            *(v151 - 1) = *(v152 - 1);
            *v151 = v154;
            v151 += 2;
            v152 += 32;
            v153 -= 8;
          }

          while (v153);
          if (v145 + 1 == v150)
          {
            goto LABEL_136;
          }

          v146 = &v144[v150];
        }
      }

      else
      {
        v146 = memptr[0];
      }

      do
      {
        v155 = *v142;
        v142 += 4;
        *v146 = v155;
        v146 += 4;
      }

      while (v146 != &v144[v139]);
    }

LABEL_136:
    v147 = v144;
    goto LABEL_144;
  }

  memptr[0] = 0;
  malloc_type_posix_memalign(memptr, 0x20uLL, v143 & 0x7FFFFFFE0, 0xE1AC2527uLL);
  v147 = memptr[0];
  if (v139)
  {
    v148 = (v139 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v148 >= 7)
    {
      v149 = memptr[0];
      if ((memptr[0] - v141 - 4 * v140) >= 0x20)
      {
        v156 = (v148 + 1) & 0x7FFFFFFFFFFFFFF8;
        v142 += 4 * v156;
        v157 = memptr[0] + 16;
        v158 = &v141[4 * v140 + 16];
        v159 = v156;
        do
        {
          v160 = *v158;
          *(v157 - 1) = *(v158 - 1);
          *v157 = v160;
          v157 += 2;
          v158 += 32;
          v159 -= 8;
        }

        while (v159);
        if (v148 + 1 == v156)
        {
          goto LABEL_143;
        }

        v149 = &v147[v156];
      }
    }

    else
    {
      v149 = memptr[0];
    }

    do
    {
      v161 = *v142;
      v142 += 4;
      *v149++ = v161;
    }

    while (v149 != &v147[v139]);
  }

LABEL_143:
  free(v144);
LABEL_144:
  v162 = *a2;
  v163 = *(a1 + 8);
  v164 = *(v163 + 56);
  if (v164)
  {
    v165 = 0;
    v166 = *(v163 + 40);
    v167 = v162[3];
    v168 = 2 * v164;
    do
    {
      v169 = (v166 + 4 * (v165 & 0xFFFFFFFE));
      v170 = v169[1];
      v171 = expf(-v147[*v169]) + 1.0;
      if (v171 < 1.0e-12)
      {
        v171 = 1.0e-12;
      }

      *(*&v167 + 4 * v170) = 1.0 / v171;
      v165 += 2;
    }

    while (v168 != v165);
  }

  v172 = *(v163 + 80);
  if (v172)
  {
    v173 = 0;
    v174 = *(v163 + 64);
    v175 = v162[3];
    v176 = 3 * v172;
    do
    {
      v177 = (v174 + 4 * v173);
      v178 = v177[1];
      v179 = v177[2];
      v180 = expf(-v147[*v177]) + 1.0;
      if (v180 < 1.0e-12)
      {
        v180 = 1.0e-12;
      }

      v181 = ((1.0 / v180) * 2.0) + -1.0;
      v182 = -v181;
      v183 = fmaxf(v181, 0.0);
      if (v181 > 0.0)
      {
        v182 = 0.0;
      }

      *(v175 + v178) = v183;
      *(v175 + v179) = v182;
      v173 += 3;
    }

    while (v176 != v173);
  }

  else
  {
    v175 = v162[3];
  }

  *(v175 + 204) = *v175;
  *v175 = vneg_f32(0x3F0000003FLL);
  v184 = (*(*a3 + 232) + 4 * v236);
  v185 = v184[1].f32[0];
  v162[6] = vadd_f32(vmul_f32(*v184, vdup_n_s32(0x42C80000u)), v162[6]);
  v162[7].f32[0] = (v185 * 100.0) + v162[7].f32[0];
  v186 = v162[40];
  v187 = 3 * (v162[42].i32[0] / 3u);
  v188 = &v186[-1] + v187 - 1;
  v189 = *v188;
  if (v186 == &v162[31].i32[1])
  {
    v191 = v188[1];
    v190 = v188[2];
    v162[31].i32[1] = v189;
    v162[32].i32[0] = v191;
  }

  else
  {
    v162[31].i32[1] = v189;
    v162[32].i32[0] = v188[1];
    v190 = v188[2];
  }

  v162[32].i32[1] = v190;
  v192 = &v186[-3] + v187;
  v193 = *a2;
  v194 = *v192;
  if (v186 == &(*a2)[30])
  {
    v196 = v192[1];
    v195 = v192[2];
    v193[30].i32[0] = v194;
    v193[30].i32[1] = v196;
  }

  else
  {
    v193[30].i32[0] = v194;
    v193[30].i32[1] = v192[1];
    v195 = v192[2];
  }

  v193[31].i32[0] = v195;
  v197 = *a2;
  v198 = a2[1];
  if (v198)
  {
    atomic_fetch_add_explicit(&v198->__shared_owners_, 1uLL, memory_order_relaxed);
    v199 = sub_240237F64(v197, *a2 + 6, v162[3], &(*a2)[7] + 1, &(*a2)[8] + 1);
    if (!atomic_fetch_add(&v198->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v198->__on_zero_shared)(v198, v199);
      std::__shared_weak_count::__release_weak(v198);
    }
  }

  else
  {
    sub_240237F64(v197, v197 + 6, v162[3], &v197[7] + 1, &v197[8] + 1);
  }

  v200 = *a2;
  v201 = a2[1];
  if (v201)
  {
    atomic_fetch_add_explicit(&v201->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v202 = v200[3];
  v204 = *(*&v202 + 204);
  v203 = *(*&v202 + 208);
  **&v202 = 0;
  v205 = *(*(a1 + 8) + 8);
  v206 = (3 * v205);
  memptr[0] = 0;
  malloc_type_posix_memalign(memptr, 0x20uLL, (4 * v206 + 31) & 0x7FFFFFFE0, 0xE1AC2527uLL);
  v207 = memptr[0];
  if (v205)
  {
    bzero(memptr[0], 4 * (3 * v205));
  }

  v208 = v200[5].i32[0];
  v209 = v200[3];
  v252 = *(*(a1 + 8) + 4);
  v253 = v209;
  v254 = v208;
  v255 = 0;
  v256 = v206;
  v257 = v207;
  v258 = v206;
  v259 = 0;
  if (v205)
  {
    v210 = v200[46];
    v211 = (v206 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v211 < 7)
    {
      v212 = v207;
      do
      {
LABEL_180:
        v220 = *v210++;
        *v212++ = v220;
      }

      while (v212 != &v207[v206]);
      goto LABEL_181;
    }

    v212 = v207;
    if ((v207 - v210) < 0x20)
    {
      goto LABEL_180;
    }

    v213 = v211 + 1;
    v214 = (v211 + 1) & 0x7FFFFFFFFFFFFFF8;
    v215 = &v210[v214];
    v216 = v207 + 4;
    v217 = (v210 + 4);
    v218 = v214;
    do
    {
      v219 = *v217;
      *(v216 - 1) = *(v217 - 1);
      *v216 = v219;
      v216 += 2;
      v217 += 2;
      v218 -= 8;
    }

    while (v218);
    if (v213 != v214)
    {
      v212 = &v207[v214];
      v210 = v215;
      goto LABEL_180;
    }
  }

LABEL_181:
  memptr[1] = &v200[49];
  memptr[2] = &v252;
  v261 = 1065353216;
  sub_2402061E0(&v256, memptr);
  v221 = v207[10] - v207[7];
  v222 = v204 * ((v207[4] - v207[1]) / v200[52].f32[0]);
  v223 = fminf(v222, 1.0);
  _NF = v222 < 0.0;
  v224 = 0.0;
  if (_NF)
  {
    v223 = 0.0;
  }

  v225 = v200[3];
  *v225 = v223;
  v226 = v203 * (v221 / v200[52].f32[1]);
  v227 = fminf(v226, 1.0);
  if (v226 >= 0.0)
  {
    v224 = v227;
  }

  v225[1] = v224;
  free(v207);
  if (v201 && !atomic_fetch_add(&v201->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v201->__on_zero_shared)(v201);
    std::__shared_weak_count::__release_weak(v201);
  }

  v228 = *a3;
  v229 = *(*a3 + 256) + 8 * a4;
  v230 = *(v229 + 4);
  v231 = expf(*v229);
  v232 = expf(v230);
  v233 = v231 + v232;
  if ((v231 + v232) < 1.0e-12)
  {
    v233 = 1.0e-12;
  }

  v234 = *a2;
  v234[10].f32[0] = v232 / v233;
  v235 = expf(-*(*(v228 + 160) + 4 * a4)) + 1.0;
  if (v235 < 1.0e-12)
  {
    v235 = 1.0e-12;
  }

  v234[9].f32[1] = 1.0 / v235;
  free(v147);
}

void sub_2401FD3F8(void *a1)
{
  if (a1)
  {
    sub_2401FD3F8(*a1);
    sub_2401FD3F8(a1[1]);
    v2 = a1[5];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete(a1);
  }
}

void *sub_2401FD48C(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    if (v6.u32[0] < 2uLL)
    {
      v10 = *&v2 - 1;
      while (1)
      {
        v11 = result[1];
        if (v5 == v11)
        {
          if (result[2] == a2)
          {
            return result;
          }
        }

        else if ((v11 & v10) != v7)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v12 = result[1];
      if (v5 == v12)
      {
        if (result[2] == a2)
        {
          return result;
        }
      }

      else
      {
        if (v12 >= *&v2)
        {
          v12 %= *&v2;
        }

        if (v12 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void sub_2401FD598(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24) >> 39)
  {
    v3 = (*(a2 + 24) & 0xFFFFFF80) == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    v4 = *(a2 + 40);
    if (v4)
    {
      free(v4);
      *(a2 + 40) = 0;
    }

    *(a2 + 16) = xmmword_240270BB0;
    *(a2 + 32) = 0x8000000001;
    *(a2 + 40) = malloc_type_malloc(0x4000uLL, 0x100004077774924uLL);
  }

  else
  {
    *(a2 + 16) = xmmword_240270BB0;
  }

  operator new();
}

void sub_2401FDEEC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226A50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_2401FDF64(uint64_t a1)
{
  free(*(a1 + 520));
  free(*(a1 + 496));
  free(*(a1 + 472));
  free(*(a1 + 448));
  free(*(a1 + 416));
  free(*(a1 + 392));
  free(*(a1 + 368));
  free(*(a1 + 344));
  free(*(a1 + 240));
  free(*(a1 + 216));
  free(*(a1 + 184));
  free(*(a1 + 160));
  free(*(a1 + 136));
  free(*(a1 + 112));
  v2 = *(a1 + 48);

  free(v2);
}

void sub_2401FE008(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226BA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_2401FE088(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226BD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_2401FE0FC(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (*(a1 + 64) == v1)
  {
    return 0;
  }

  else
  {
    return (*v1 != 0) << 7;
  }
}

uint64_t sub_2401FE128(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_2401FE158(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_240200D88(uint64_t a1)
{
  free(*(a1 + 48));
  v2 = *(a1 + 24);

  free(v2);
}

void sub_240200DC4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226AC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_240200E3C(uint64_t a1)
{
  v2 = *(a1 + 176);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 160);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 144);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  free(*(a1 + 112));
  free(*(a1 + 88));
  free(*(a1 + 64));
  v5 = *(a1 + 40);
  if (v5)
  {
    *(a1 + 48) = v5;

    operator delete(v5);
  }
}

void sub_240200F74(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226A88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_240200FEC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    free(*(v1 + 256));
    free(*(v1 + 232));
    free(*(v1 + 208));
    free(*(v1 + 184));
    free(*(v1 + 160));
    free(*(v1 + 136));
    free(*(v1 + 112));
    free(*(v1 + 88));
    free(*(v1 + 64));
    free(*(v1 + 40));
    v2 = *(v1 + 24);
    *(v1 + 24) = 0;
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

    v6 = *(v1 + 16);
    *(v1 + 16) = 0;
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

    v10 = *(v1 + 8);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    JUMPOUT(0x245CBCA30);
  }

  return result;
}

void sub_240201174(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_2402011B4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

void sub_2402011E4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_240201220(uint64_t a1, uint64_t *a2)
{
  kdebug_trace();
  v4 = *a2;
  std::mutex::lock((*a2 + 8));
  v5 = *a2;
  v6 = *(a1 + 16);
  v7 = *(*a2 + 1024);
  v8 = *(*a2 + 1032);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *v7;
  v9 = (v7 + 1);
  std::mutex::lock(v9);
  (*(*v6 + 32))(&v17, v6, v10);
  v11 = v17;
  v17 = 0;
  v12 = *(v5 + 72);
  *(v5 + 72) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
    v13 = v17;
    v17 = 0;
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }
  }

  std::mutex::unlock(v9);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v14 = *a2;
  v15 = (*(**(v14 + 72) + 16))(*(v14 + 72));
  sub_24023E080(v14 + 304, v15);
  std::mutex::unlock((v4 + 8));
  return kdebug_trace();
}

uint64_t sub_2402013FC(uint64_t a1, uint64_t **a2)
{
  v34 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    v6 = &qword_280C03A00;
    while (1)
    {
      v8 = *v4;
      std::mutex::lock((*v4 + 8));
      v9 = *(*v4 + 72);
      kdebug_trace();
      v10 = *v4;
      v11 = *v4 + 88;
      std::mutex::lock((*v4 + 240));
      if (*(v10 + 120))
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      v13 = (*(**(a1 + 16) + 48))(*(a1 + 16), v10 + 216, v12, v10 + 128, v10 + 156, v10 + 164, v9, *(v10 + 152));
      std::mutex::unlock((v10 + 240));
      kdebug_trace();
      if ((atomic_load_explicit(v6, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(v6))
      {
        qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
        __cxa_guard_release(v6);
      }

      v14 = qword_280C03978;
      if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_DEBUG))
      {
        break;
      }

      if (v13)
      {
        goto LABEL_14;
      }

LABEL_7:
      v7 = *v4;
      v4 += 2;
      atomic_store(0, (v7 + 80));
      std::mutex::unlock((v8 + 8));
      if (v4 == v5)
      {
        goto LABEL_31;
      }
    }

    v31 = "unsuccessful";
    if (v13)
    {
      v31 = "successful";
    }

    *memptr = 136315138;
    *&memptr[4] = v31;
    _os_log_debug_impl(&dword_2401B8000, v14, OS_LOG_TYPE_DEBUG, "fit was %s", memptr, 0xCu);
    if (!v13)
    {
      goto LABEL_7;
    }

LABEL_14:
    v15 = v5;
    v16 = v6;
    kdebug_trace();
    v17 = *v4;
    v18 = (*(*v9 + 16))(v9);
    sub_24023E080(v17 + 304, v18);
    v19 = *(a1 + 16);
    v20 = *(*v4 + 1024);
    v21 = *(*v4 + 1032);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v23 = *v20;
    v22 = (v20 + 1);
    std::mutex::lock(v22);
    (*(*v19 + 40))(v19, v9, v23);
    std::mutex::unlock(v22);
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }

    v6 = v16;
    v5 = v15;
    if ((*(*v9 + 32))(v9))
    {
      v24 = (*(*v9 + 32))(v9);
      v25 = *v4;
      v26 = *v4 + 1040;
      std::mutex::lock((*v4 + 1064));
      if (v26 != v24)
      {
        v27 = *(v24 + 16);
        if (v27)
        {
          v28 = *(v25 + 1040);
          v29 = 4 * v27;
          if (*(v25 + 1048) < v27)
          {
            free(v28);
            *(v25 + 1040) = 0;
            v30 = (v29 + 31) & 0x7FFFFFFE0;
            *(v25 + 1048) = v30 >> 2;
            *memptr = 0;
            malloc_type_posix_memalign(memptr, 0x20uLL, v30, 0xE1AC2527uLL);
            v28 = *memptr;
            *(v25 + 1040) = *memptr;
          }

          memcpy(v28, *v24, v29);
        }

        else
        {
          free(*v26);
          *v26 = 0;
          *(v26 + 8) = 0;
        }

        *(v25 + 1056) = *(v24 + 16);
      }

      std::mutex::unlock((v25 + 1064));
    }

    kdebug_trace();
    goto LABEL_7;
  }

LABEL_31:
  atomic_fetch_add(a1, 0xFFFFFFFF);
  return kdebug_trace();
}

uint64_t sub_240201874(uint64_t result, uint64_t a2)
{
  v7[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v2 = *(result + 24);
    v3 = *(a2 + 24);
    if (v2 == result)
    {
      if (v3 == a2)
      {
        v5 = a2;
        v6 = result;
        (*(*v2 + 24))(*(result + 24), v7);
        (*(**(v6 + 24) + 32))(*(v6 + 24));
        *(v6 + 24) = 0;
        (*(**(v5 + 24) + 24))(*(v5 + 24), v6);
        (*(**(v5 + 24) + 32))(*(v5 + 24));
        *(v5 + 24) = 0;
        *(v6 + 24) = v6;
        (*(v7[0] + 24))(v7, v5);
        result = (*(v7[0] + 32))(v7);
        goto LABEL_10;
      }

      v4 = result;
      v5 = a2;
      (*(*v2 + 24))(*(result + 24));
    }

    else
    {
      if (v3 != a2)
      {
        *(result + 24) = v3;
        *(a2 + 24) = v2;
        return result;
      }

      v5 = result;
      v4 = a2;
      (*(*v3 + 24))(*(a2 + 24), result);
    }

    result = (*(**(v4 + 24) + 32))(*(v4 + 24));
    *(v4 + 24) = *(v5 + 24);
LABEL_10:
    *(v5 + 24) = v5;
  }

  return result;
}

uint64_t sub_240201AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = *v4;
  *v4 = 0;
  __lk.__m_ = (v5 + 24);
  __lk.__owns_ = 1;
  std::mutex::lock((v5 + 24));
  std::__assoc_sub_state::__sub_wait(v5, &__lk);
  v6 = *(v5 + 16);
  v11[0].__ptr_ = 0;
  std::exception_ptr::~exception_ptr(v11);
  if (!v6)
  {
    LOBYTE(v11[0].__ptr_) = 0;
    v7 = *(v5 + 160);
    if (v7 == 1)
    {
      *&v11[0].__ptr_ = *(v5 + 144);
      *(v5 + 144) = 0;
      *(v5 + 152) = 0;
    }

    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (atomic_fetch_add((v5 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      if (v7)
      {
LABEL_8:
        *a2 = *&v11[0].__ptr_;
        goto LABEL_11;
      }
    }

    else
    {
      (*(*v5 + 16))(v5);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    *a2 = 0;
    *(a2 + 8) = 0;
LABEL_11:
    v8 = *(a1 + 32);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  std::exception_ptr::exception_ptr(v11, (v5 + 16));
  v9.__ptr_ = v11;
  std::rethrow_exception(v9);
  return sub_2402021B8();
}

void sub_2402021B8(void *a1)
{
  sub_2402021F4(a1 + 1);

  operator delete(a1);
}

void sub_2402021F4(void *a1)
{
  v2 = a1[5];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1[1];
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = a1[1];
    if (!v4)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void *sub_240202318(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_285227CA0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = result[6];
  a2[5] = result[5];
  a2[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_24020241C(void *a1)
{
  *a1 = &unk_285227CA0;
  v1 = a1[6];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  v3 = a1[4];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = a1;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    a1 = v4;
  }

  v5 = a1[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  JUMPOUT(0x245CBCA30);
}

void *sub_240202564(void *result)
{
  *result = &unk_285227CA0;
  v1 = result[6];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = result;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    result = v2;
  }

  v3 = result[4];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v4 = result;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    result = v4;
  }

  v5 = result[2];
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = result;
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      return v6;
    }
  }

  return result;
}

atomic_ullong *sub_240202690(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      return (*(*result + 16))();
    }
  }

  return result;
}

void sub_2402026D0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285227C68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_240202744(uint64_t a1)
{
  if ((*(a1 + 136) & 1) != 0 && *(a1 + 160) == 1)
  {
    v1 = *(a1 + 152);
    if (v1)
    {
      if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v2 = a1;
        (v1->__on_zero_shared)(v1);
        std::__shared_weak_count::__release_weak(v1);
        a1 = v2;
      }
    }
  }

  v3 = *(*a1 + 8);

  return v3();
}

void sub_2402027F4(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_240202874(uint64_t a1)
{
  *a1 = MEMORY[0x277D82880] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

uint64_t sub_2402028E0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    (*(*result + 48))(&v5);
    v6 = v5;
    v5 = 0uLL;
    v7 = 1;
    sub_240202A60(*(a1 + 40), &v6);
    if (v7 == 1)
    {
      v3 = *(&v6 + 1);
      if (*(&v6 + 1))
      {
        if (!atomic_fetch_add((*(&v6 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v3->__on_zero_shared)(v3);
          std::__shared_weak_count::__release_weak(v3);
        }
      }
    }

    v4 = *(&v5 + 1);
    if (*(&v5 + 1) && !atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    result = *(a1 + 32);
    *(a1 + 32) = 0;
    if (result == a1 + 8)
    {
      return (*(*result + 32))(result);
    }

    else if (result)
    {
      return (*(*result + 40))(result);
    }
  }

  return result;
}

void sub_240202A60(uint64_t a1, uint64_t a2)
{
  if (!a1 || (std::mutex::lock((a1 + 24)), (*(a1 + 136) & 1) != 0) || (v6.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v6), v4))
  {
    v5 = sub_2401EAB94();
    sub_240202B04(v5);
  }

  else
  {
    *(a1 + 144) = 0;
    *(a1 + 160) = 0;
    if (*(a2 + 16) == 1)
    {
      *(a1 + 144) = *a2;
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a1 + 160) = 1;
    }

    *(a1 + 136) |= 5u;
    std::condition_variable::notify_all((a1 + 88));
    std::mutex::unlock((a1 + 24));
  }
}

void sub_240202B04(void *a1)
{
  sub_240202B3C(a1);

  JUMPOUT(0x245CBCA30);
}

void *sub_240202B3C(void *a1)
{
  *a1 = &unk_285227520;
  if (a1[4] && (LOBYTE(v8.__ptr_) = 0, v10 = 0, sub_240202A60(a1[5], &v8), v10 == 1) && (v2 = v9) != 0 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = a1[5];
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v3 = a1[5];
    if (!v3)
    {
      goto LABEL_11;
    }
  }

  if ((*(v3 + 136) & 1) == 0)
  {
    v8.__ptr_ = 0;
    v4 = *(v3 + 16);
    std::exception_ptr::~exception_ptr(&v8);
    v3 = a1[5];
    if (!v4 && *(v3 + 8) >= 1)
    {
      v7 = std::future_category();
      MEMORY[0x245CBC6A0](&v8, 4, v7);
      abort();
    }
  }

  if (!atomic_fetch_add((v3 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v3 + 16))(v3);
  }

LABEL_11:
  v5 = a1[4];
  if (v5 == a1 + 1)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  return a1;
}

void sub_240202D0C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226938;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_240202D98@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_240202DB4(void *a1)
{
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void sub_240202E30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_240202EAC(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_285227CE8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_240202F50(void *a1)
{
  *a1 = &unk_285227CE8;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CBCA30);
}

void *sub_240202FF8(void *result)
{
  *result = &unk_285227CE8;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_240203080(uint64_t *a1)
{
  v2 = *(*a1 + 56);
  if (v2)
  {
    (*(*v2 + 48))(&v10);
    v3 = *a1;
    v4 = v10;
    v10 = 0uLL;
    v5 = *(v3 + 24);
    *(v3 + 16) = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = *(&v10 + 1);
    if (*(&v10 + 1) && !atomic_fetch_add((*(&v10 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = *a1 + 32;
    v8 = *(*a1 + 56);
    *(*a1 + 56) = 0;
    if (v8 == v7)
    {
      (*(*v8 + 32))(v8);
    }

    else if (v8)
    {
      (*(*v8 + 40))(v8);
    }
  }

  else
  {
    v9 = sub_240202D80();
    operator delete(v9);
  }
}

uint64_t sub_2402031EC(uint64_t a1)
{
  std::mutex::~mutex((a1 + 32));
  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

void sub_24020325C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226900;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_2402032D0(void *a1)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = (a1[3] + (v4 >> 1));
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  v12 = v1;
  v13 = v2;
  v8 = a1[4];
  v7 = a1[5];
  v10 = v8;
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5(v6, &v10);
  v9 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void sub_240203384(void *a1)
{
  v1 = a1[5];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void sub_240203400(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_24020347C(uint64_t result, uint64_t a2)
{
  *a2 = &unk_285227D30;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  v3 = *(result + 40);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_240203540(void *a1)
{
  *a1 = &unk_285227D30;
  v1 = a1[5];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CBCA30);
}

void *sub_2402035E8(void *result)
{
  *result = &unk_285227D30;
  v1 = result[5];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_240203698(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285226740;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_24020370C(void *a1)
{
  v1 = a1[2];
  v2 = a1[1];
  v3 = (a1[3] + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, a1 + 4);
}

void sub_24020373C(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    v3 = __p[5];
    v4 = __p[4];
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
      v4 = __p[4];
    }

    __p[5] = v2;
    operator delete(v4);
  }

  operator delete(__p);
}

void sub_240203800(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 32);
    if (v3 != v1)
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

      while (v3 != v1);
      v4 = *(a1 + 32);
    }

    *(a1 + 40) = v1;

    operator delete(v4);
  }
}

__n128 sub_2402038D0(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285227D78;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2401BDE28();
  }

  return result;
}

void sub_240203A7C(void *a1)
{
  *a1 = &unk_285227D78;
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[4];
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
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  JUMPOUT(0x245CBCA30);
}

void *sub_240203B6C(void *a1)
{
  *a1 = &unk_285227D78;
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[4];
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
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_240203C3C()
{
  v2 = *MEMORY[0x277D85DE8];
  sub_240203E84(&__p);
  *buf = 1;
  operator new();
}

void sub_240203E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_2401C1DF4(&a10);
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_240203E84(uint64_t a1)
{
  cva::Path::Path();
  cva::Path::Path();
  cva::Path::Path(v6, v4);
  cva::Path::append();
  cva::Path::Path(v5, v6);
  cva::Path::~Path(v6);
  v2 = cva::Path::string(v5);
  if (*(v2 + 23) < 0)
  {
    sub_2401C2FCC(a1, *v2, *(v2 + 8));
  }

  else
  {
    *a1 = *v2;
    *(a1 + 16) = *(v2 + 16);
  }

  cva::Path::~Path(v5);
  cva::Path::~Path(&v3);
  cva::Path::~Path(v4);
}

void sub_240203F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  cva::Path::~Path(&a9);
  cva::Path::~Path(&a10);
  _Unwind_Resume(a1);
}

void sub_240203FA0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852268C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_2402040AC()
{
  v30[9] = *MEMORY[0x277D85DE8];
  v29[0] = &unk_28522C000;
  v27[0] = &unk_28522BFB8;
  v27[1] = &unk_28522BFD0;
  v28[0] = &unk_28522C0A8;
  v28[1] = &unk_28522C0B8;
  v27[2] = &unk_28522BFE8;
  v28[2] = &unk_28522C0C8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v30[0] = v10;
  v29[1] = &unk_28522BFB8;
  v25[0] = &unk_28522BFB8;
  v25[1] = &unk_28522BFD0;
  v26[0] = &unk_28522C0D8;
  v26[1] = &unk_28522C0B8;
  v25[2] = &unk_28522BFE8;
  v26[2] = &unk_28522C0E8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v30[1] = v9;
  v29[2] = &unk_28522BFD0;
  v23[0] = &unk_28522BFB8;
  v23[1] = &unk_28522BFD0;
  v24[0] = &unk_28522C0F8;
  v24[1] = &unk_28522C108;
  v23[2] = &unk_28522BFE8;
  v24[2] = &unk_28522C118;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v30[2] = v8;
  v29[3] = &unk_28522BFE8;
  v21[0] = &unk_28522BFB8;
  v21[1] = &unk_28522BFD0;
  v22[0] = &unk_28522C0A8;
  v22[1] = &unk_28522C118;
  v21[2] = &unk_28522BFE8;
  v22[2] = &unk_28522C128;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v30[3] = v7;
  v29[4] = &unk_28522C018;
  v19[0] = &unk_28522BFB8;
  v19[1] = &unk_28522BFD0;
  v20[0] = &unk_28522C0B8;
  v20[1] = &unk_28522C118;
  v19[2] = &unk_28522BFE8;
  v20[2] = &unk_28522C138;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
  v30[4] = v6;
  v29[5] = &unk_28522C030;
  v17[0] = &unk_28522BFB8;
  v17[1] = &unk_28522BFD0;
  v18[0] = &unk_28522C148;
  v18[1] = &unk_28522C108;
  v17[2] = &unk_28522BFE8;
  v18[2] = &unk_28522C0E8;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  v30[5] = v0;
  v29[6] = &unk_28522C048;
  v15[0] = &unk_28522BFB8;
  v15[1] = &unk_28522BFD0;
  v16[0] = &unk_28522C158;
  v16[1] = &unk_28522C0B8;
  v15[2] = &unk_28522BFE8;
  v16[2] = &unk_28522C168;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v30[6] = v1;
  v29[7] = &unk_28522C060;
  v13[0] = &unk_28522BFB8;
  v13[1] = &unk_28522BFD0;
  v14[0] = &unk_28522C178;
  v14[1] = &unk_28522C0B8;
  v13[2] = &unk_28522BFE8;
  v14[2] = &unk_28522C0E8;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v30[7] = v2;
  v29[8] = &unk_28522C078;
  v11[0] = &unk_28522BFB8;
  v11[1] = &unk_28522BFD0;
  v12[0] = &unk_28522C178;
  v12[1] = &unk_28522C0B8;
  v11[2] = &unk_28522BFE8;
  v12[2] = &unk_28522C0E8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v30[8] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:9];
  v5 = qword_27E3C89B0;
  qword_27E3C89B0 = v4;
}

void sub_240204B04(int *a1)
{
  v59 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v2 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *a1;
    v4 = a1[1];
    v5 = a1[2];
    v6 = a1[3];
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    v10 = a1[7];
    v11 = a1[8];
    v12 = a1[9];
    v13 = a1[10];
    v14 = a1[11];
    v15 = a1[12];
    v31 = 67112192;
    v32 = v3;
    v33 = 1024;
    v34 = v4;
    v35 = 1024;
    v36 = v5;
    v37 = 1024;
    v38 = v6;
    v39 = 1024;
    v40 = v7;
    v41 = 1024;
    v42 = v8;
    v43 = 1024;
    v44 = v9;
    v45 = 1024;
    v46 = v10;
    v47 = 1024;
    v48 = v11;
    v49 = 1024;
    v50 = v12;
    v51 = 1024;
    v52 = v13;
    v53 = 1024;
    v54 = v14;
    v55 = 1024;
    v56 = v15;
    _os_log_impl(&dword_2401B8000, v2, OS_LOG_TYPE_DEFAULT, "FaceKitStatistics: total: %u; deltas: %u (color/depth: %u/%u); dropped: %u; face detections (0/1/2/3+): %u/%u/%u/%u; selected faces (0/1/2/3): %u/%u/%u/%u", &v31, 0x50u);
  }

  if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
  }

  v16 = qword_280C03978;
  if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_DEFAULT))
  {
    v17 = a1[13];
    v18 = a1[14];
    v19 = a1[25];
    v20 = a1[26];
    v21 = a1[15];
    v22 = a1[16];
    v23 = a1[17];
    v24 = a1[18];
    v25 = a1[21];
    v26 = a1[22];
    v27 = a1[23];
    v28 = a1[24];
    v29 = a1[27];
    v30 = a1[28];
    v31 = 67112448;
    v32 = v17;
    v33 = 1024;
    v34 = v18;
    v35 = 1024;
    v36 = v19;
    v37 = 1024;
    v38 = v21;
    v39 = 1024;
    v40 = v20;
    v41 = 1024;
    v42 = v22;
    v43 = 1024;
    v44 = v23;
    v45 = 1024;
    v46 = v24;
    v47 = 1024;
    v48 = v25;
    v49 = 1024;
    v50 = v27;
    v51 = 1024;
    v52 = v26;
    v53 = 1024;
    v54 = v28;
    v55 = 1024;
    v56 = v29;
    v57 = 1024;
    v58 = v30;
    _os_log_impl(&dword_2401B8000, v16, OS_LOG_TYPE_DEFAULT, "FaceKitStatistics: ok %u; ML %u (%u); outside %u (%u); close %u; far %u; non-frontal %u; velocity %u/%u; acceleration %u/%u; fittable %u; faceprintable %u", &v31, 0x56u);
  }
}

void **sub_240204D84(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5)
        {
          free(v5);
          *(v3 - 1) = 0;
        }

        v3 -= 32;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_240204DF8(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 47) < 0)
    {
      operator delete(*(v1 + 24));
    }

    MEMORY[0x245CBCA30](v1, 0x1012C409C40065ELL);
    return v2;
  }

  return result;
}

void sub_240204E50(uint64_t a1, uint64_t *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  memset(v18, 0, sizeof(v18));
  v3 = *a2;
  v4 = *(*a2 + 152) - 2;
  v5 = *(*a2 + 136);
  v6 = 4 * v4;
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], v6);
  theData = Mutable;
  CFDataSetLength(Mutable, v6);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  if (v4)
  {
    memcpy(MutableBytePtr, v5, v6);
  }

  v9 = *(v3 + 136);
  HIDWORD(v18[1]) = *v9;
  LODWORD(v19) = *(v9 + 4);
  *(&v19 + 4) = *(v9 + 204);
  *CFDataGetMutableBytePtr(Mutable) = DWORD1(v19);
  *(CFDataGetMutableBytePtr(theData) + 1) = DWORD2(v19);
  v10 = *a2;
  v11 = *a2 + 208;
  if (v18 != v11)
  {
    *&v18[0] = *v11;
    DWORD2(v18[0]) = *(v11 + 8);
  }

  *(v18 + 12) = vuzp2q_s32(*(v10 + 220), vrev64q_s32(*(v10 + 220)));
  HIDWORD(v19) = *(v10 + 236);
  cva::DictionaryHandler::DictionaryHandler(&v14);
  cva::ItemHandler::createData(v16, theData, v12);
  cva::DictionaryHandler::setItem(&v14, @"blendshapes", v16);
  cva::ItemHandler::~ItemHandler(v16);
  v16[1] = 8;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, 0x20uLL, 0xE1AC2527uLL);
  v13 = memptr;
  v16[0] = memptr;
  LODWORD(v17) = 3;
  *memptr = *&v18[0];
  v13[2] = DWORD2(v18[0]);
  cva::ItemHandler::createVector<float>();
}

void sub_240205814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29)
{
  cva::ItemHandler::~ItemHandler(&a27);
  cva::DictionaryHandler::~DictionaryHandler(&a25);
  cva::DictionaryHandler::~DictionaryHandler(&a29);
  _Unwind_Resume(a1);
}

void sub_2402059B4(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *a1;
  cva::DictionaryHandler::DictionaryHandler(v25);
  v23 = *(*a2 + 128);
  if (!a3)
  {
LABEL_12:
    v19 = *a1[1];
    v20 = *(v19 + 252);
    v21 = *(v19 + 260);
    v26[1] = 8;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, 0x20uLL, 0xE1AC2527uLL);
    v22 = memptr;
    v26[0] = memptr;
    v27 = 3;
    *memptr = vmul_n_f32(v20, v23);
    v22[2] = v23 * v21;
    cva::ItemHandler::createVector<float>();
  }

  sub_240206034(*a1[1] + 184, *(*a2 + 136), *(*a2 + 152), v6 + 408);
  v7 = *(v6 + 408);
  v8 = *(v6 + 424);
  if (v23 != 1.0 && v8)
  {
    v9 = (3 * v8);
    v10 = (v9 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v11 = *(v6 + 408);
    if (v10 >= 7)
    {
      v12 = (v10 + 1) & 0x7FFFFFFFFFFFFFF8;
      v13 = (v7 + 16);
      v14 = v12;
      do
      {
        v15 = vmulq_n_f32(*v13, v23);
        v13[-1] = vmulq_n_f32(v13[-1], v23);
        *v13 = v15;
        v13 += 2;
        v14 -= 8;
      }

      while (v14);
      if (v10 + 1 == v12)
      {
        goto LABEL_11;
      }

      v11 = &v7[4 * v12];
    }

    v16 = &v7[4 * v9];
    do
    {
      *v11 = v23 * *v11;
      ++v11;
    }

    while (v11 != v16);
  }

LABEL_11:
  v17 = CFDataCreate(0, v7, 4 * (3 * v8 - 6));
  cva::ItemHandler::createData(v26, v17, v18);
  cva::DictionaryHandler::setItem(v25, @"vertices", v26);
  cva::ItemHandler::~ItemHandler(v26);
  CFRelease(v17);
  goto LABEL_12;
}

void sub_240205F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, void *a17)
{
  cva::ItemHandler::~ItemHandler(&a17);
  cva::DictionaryHandler::~DictionaryHandler(&a11);
  cva::DictionaryHandler::~DictionaryHandler(&a13);
  _Unwind_Resume(a1);
}

void sub_240206034(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v24 = a3 - 2;
  v25 = a2;
  v26 = a3;
  v27 = 0;
  v6 = *(a1 + 152);
  *(a4 + 16) = v6 / 3;
  if (v6 > 2)
  {
    v8 = 3 * (v6 / 3);
    v7 = *a4;
    if (*(a4 + 8) < v8)
    {
      free(v7);
      v9 = (4 * v8 + 31) & 0x7FFFFFFE0;
      *a4 = 0;
      *(a4 + 8) = v9 >> 2;
      memptr[0] = 0;
      malloc_type_posix_memalign(memptr, 0x20uLL, v9, 0xE1AC2527uLL);
      v7 = memptr[0];
      *a4 = memptr[0];
    }
  }

  else
  {
    free(*a4);
    v7 = 0;
    *a4 = 0;
    *(a4 + 8) = 0;
  }

  v10 = *(a4 + 16);
  v11 = (3 * v10);
  v28 = 3 * v10;
  v29 = v7;
  v30 = 3 * v10;
  v31 = 0;
  if (v10)
  {
    v12 = *(a1 + 136);
    v13 = (v11 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v13 < 7)
    {
      v14 = v7;
LABEL_13:
      v22 = v7 + v11;
      do
      {
        v23 = *v12++;
        *v14++ = v23;
      }

      while (v14 != v22);
      goto LABEL_15;
    }

    v14 = v7;
    if ((v7 - v12) < 0x20)
    {
      goto LABEL_13;
    }

    v15 = v13 + 1;
    v16 = (v13 + 1) & 0x7FFFFFFFFFFFFFF8;
    v17 = &v12[v16];
    v18 = v7 + 1;
    v19 = (v12 + 4);
    v20 = v16;
    do
    {
      v21 = *v19;
      *(v18 - 1) = *(v19 - 1);
      *v18 = v21;
      v18 += 2;
      v19 += 2;
      v20 -= 8;
    }

    while (v20);
    if (v15 != v16)
    {
      v14 = v7 + v16;
      v12 = v17;
      goto LABEL_13;
    }
  }

LABEL_15:
  memptr[1] = (a1 + 160);
  memptr[2] = &v24;
  v33 = 1065353216;
  sub_2402061E0(&v28, memptr);
}

void sub_2402061E0(unsigned int *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(a1 + 1) - 4 * a1[5];
  if (*v4 == v5 || (v6 = *(a2 + 16), *(v6 + 8) - 4 * *(v6 + 20) == v5))
  {
    v7 = (4 * *(v4 + 16) + 31) & 0x7FFFFFFE0;
    v21[1] = (v7 >> 2);
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v7, 0xE1AC2527uLL);
    v21[0] = memptr;
    v22 = *(*(a2 + 8) + 16);
    sub_2402063A8(v21, a2);
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

  if (*(v4 + 20) * *(v4 + 16))
  {
    if (*v6)
    {
      cva::VecLib<float>::gemm();
    }
  }
}

void sub_2402063A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  if (*v4 == v5 || (v6 = *(a2 + 16), (*(v6 + 8) - 4 * *(v6 + 20)) == v5))
  {
    v7 = (4 * *(v4 + 16) + 31) & 0x7FFFFFFE0;
    v12 = v7 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v7, 0xE1AC2527uLL);
    v11 = memptr;
    v13 = *(*(a2 + 8) + 16);
    sub_2402063A8(&v11, a2);
    v8 = *a1;
    v9 = v12;
    *a1 = v11;
    *(a1 + 8) = v9;
    *(a1 + 16) = v13;
    free(v8);
  }

  else
  {
    if (*(v4 + 20) * *(v4 + 16) && *v6)
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

void sub_240206DD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, void *a21)
{
  __cxa_guard_abort(&qword_280C039F0);
  cva::DictionaryHandler::~DictionaryHandler(&a13);
  sub_2401C1DF4(&a15);
  cva::DictionaryHandler::~DictionaryHandler(&a17);
  sub_2401C1DF4(&a19);
  _Unwind_Resume(a1);
}

uint64_t sub_240206FAC(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_240207018(void *a1, uint64_t a2)
{
  v3 = a1[2];
  v4 = a1[1];
  v5 = (a1[3] + (v3 >> 1));
  if (v3)
  {
    v4 = *(*v5 + v4);
  }

  v7 = a1[4];
  v6 = a1[5];
  v9 = v7;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4(v5, a2, &v9);
  v8 = v10;
  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_2402070E0(void *a1)
{
  v1 = a1[5];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  operator delete(a1);
}

void sub_24020715C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_2402071D8(uint64_t result, uint64_t a2)
{
  *a2 = &unk_285227040;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  v3 = *(result + 40);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_24020729C(void *a1)
{
  *a1 = &unk_285227040;
  v1 = a1[5];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x245CBCA30);
}

void *sub_240207344(void *result)
{
  *result = &unk_285227040;
  v1 = result[5];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}