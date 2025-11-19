uint64_t sub_240243924(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  kdebug_trace();
  sub_24021D414(*v1 + 16);

  return kdebug_trace();
}

void sub_24024399C(uint64_t a1, void *a2, void *a3)
{
  v408 = *MEMORY[0x277D85DE8];
  v3 = *(*(a1 + 8) + 16);
  v403 = 0;
  v404 = 0uLL;
  if (os_unfair_lock_trylock(*v3 + 38))
  {
    v4 = *v3;
    v403 = *&(*v3)[32]._os_unfair_lock_opaque;
    v5 = v403;
    v395 = *&v4[34]._os_unfair_lock_opaque;
    *&v4[32]._os_unfair_lock_opaque = 0;
    *&v4[34]._os_unfair_lock_opaque = 0;
    v404 = v395;
    *&v4[36]._os_unfair_lock_opaque = 0;
    os_unfair_lock_unlock(v4 + 38);
    v6.n128_u64[1] = *(&v395 + 1);
    v7 = v395;
    if (v5 != v395)
    {
      v8 = v395 - v5 - 16;
      v9 = v5;
      if (v8 < 0x10)
      {
        goto LABEL_603;
      }

      v10 = (v8 >> 4) + 1;
      v9 = &v5[2 * (v10 & 0x1FFFFFFFFFFFFFFELL)];
      v11 = v5 + 2;
      v12 = v10 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        v13 = *(v11 - 2);
        v14 = *v11;
        v11 += 4;
        v15 = **(v14 + 32);
        *(**(v13 + 32) + 168) = 0;
        *(v15 + 168) = 0;
        v12 -= 2;
      }

      while (v12);
      if (v10 != (v10 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_603:
        do
        {
          v16 = *v9;
          v9 += 2;
          *(**(v16 + 32) + 168) = 0;
        }

        while (v9 != v395);
      }
    }

    if (v5 != v395)
    {
      v6.n128_u32[1] = 0;
      while (1)
      {
        v17 = **(*v5 + 32);
        v18 = *(v17 + 24);
        v19 = *(v17 + 32);
        *&v402 = v18;
        *(&v402 + 1) = v19;
        if (v19)
        {
          atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
        }

        if (!v18)
        {
          if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
          {
            qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
            __cxa_guard_release(&qword_280C03A00);
          }

          v31 = qword_280C03978;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_2401B8000, v31, OS_LOG_TYPE_DEBUG, "Warning: no user for this track", buf, 2u);
          }

          goto LABEL_27;
        }

        v20 = *v5;
        v21 = *(*v5 + 120);
        if (v21 == 2)
        {
          if (*(*v18 + 16))
          {
            goto LABEL_494;
          }

          sub_2401F6D50(v18);
          if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
          {
            qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
            __cxa_guard_release(&qword_280C03A00);
          }

          v31 = qword_280C03978;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_2401B8000, v31, OS_LOG_TYPE_DEBUG, "Tracking new user with no faceprint", buf, 2u);
          }

LABEL_27:

          goto LABEL_494;
        }

        if (!v21)
        {
          if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
          {
            qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
            __cxa_guard_release(&qword_280C03A00);
          }

          v22 = qword_280C03978;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v125 = (*v5 + 128);
            if (*(*v5 + 151) < 0)
            {
              v125 = *v125;
            }

            *buf = 136315138;
            *&buf[4] = v125;
            _os_log_debug_impl(&dword_2401B8000, v22, OS_LOG_TYPE_DEBUG, "Error getting faceprint: %s.", buf, 0xCu);
          }

          v23 = v402;
          if (*(*v402 + 24) == *(*v402 + 32))
          {
            v24 = 0.1;
          }

          else
          {
            v24 = 0.5;
          }

          v25 = *v5;
          v26 = v24 * *(*(a1 + 8) + 32) * 0.001;
          *&v407[24] = 0;
          *v407 = v26;
          sub_240269D58(buf, v25, v407);
          v27 = *v23;
          v28 = *(*v23 + 80);
          v6 = *buf;
          v29 = *&buf[16];
          *(v27 + 48) = *buf;
          *(v27 + 64) = v29;
          if (v28)
          {
            goto LABEL_494;
          }

          *(v27 + 80) = 1;
          v30 = *(&v402 + 1);
          if (*(&v402 + 1))
          {
LABEL_495:
            if (!atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v30->__on_zero_shared)(v30);
              std::__shared_weak_count::__release_weak(v30);
            }
          }

          goto LABEL_10;
        }

        v32 = *(a1 + 8);
        __p_8 = 0;
        __p = 0;
        *buf = 0;
        *&buf[8] = 0;
        v33 = **v32;
        v34 = (*v32)[1];
        v388 = v5;
        if (v33 == v34)
        {
          v90 = 0;
          v91 = 0;
          v92 = INFINITY;
          v93 = a2;
        }

        else
        {
          v35 = INFINITY;
          do
          {
            v36 = *v33;
            v37 = **v33;
            v38 = *(v37 + 24);
            v39 = *(v37 + 32);
            if (v38 != v39)
            {
              v6.n128_u32[0] = *(*v32 + 7);
              v40 = *(v20 + 112);
              if (v40)
              {
                v41 = *(v20 + 96);
                if (v40 == 1)
                {
                  v42 = INFINITY;
                  do
                  {
                    if (*(*v38 + 4) == 1)
                    {
                      v43 = (1.0 - (***v38 * *v41)) * 0.5;
                      if (v43 <= v6.n128_f32[0])
                      {
                        goto LABEL_88;
                      }
                    }

                    else
                    {
                      v43 = INFINITY;
                    }

                    if (v43 < v42)
                    {
                      v42 = v43;
                    }

                    ++v38;
                  }

                  while (v38 != v39);
                }

                else
                {
                  v49 = 4 * *(v20 + 112);
                  if ((v49 - 8) >= 0x1C)
                  {
                    v61 = ((v49 - 8) >> 2) + 1;
                    v62 = 4 * (v61 & 0x7FFFFFFFFFFFFFF8);
                    v63 = v49 - v62 - 4;
                    v42 = INFINITY;
                    while (1)
                    {
                      v65 = *v38;
                      if (*(*v38 + 4) == v40)
                      {
                        v66 = *v65;
                        v67 = (*v65 + 1);
                        v69 = *v66;
                        v68 = (v66 + 5);
                        v70 = v69 * *v41;
                        v71 = (v41 + 5);
                        v72 = v61 & 0x7FFFFFFFFFFFFFF8;
                        do
                        {
                          v73 = vmulq_f32(v68[-1], v71[-1]);
                          v74 = vmulq_f32(*v68, *v71);
                          v70 = (((((((v70 + v73.f32[0]) + v73.f32[1]) + v73.f32[2]) + v73.f32[3]) + v74.f32[0]) + v74.f32[1]) + v74.f32[2]) + v74.f32[3];
                          v71 += 2;
                          v68 += 2;
                          v72 -= 8;
                        }

                        while (v72);
                        if (v61 != (v61 & 0x7FFFFFFFFFFFFFF8))
                        {
                          v75 = (v67 + v62);
                          v76 = &v41[v62 / 4 + 1];
                          v77 = v63;
                          do
                          {
                            v78 = *v75++;
                            v79 = v78;
                            v80 = *v76++;
                            v70 = v70 + (v79 * v80);
                            v77 -= 4;
                          }

                          while (v77);
                        }

                        v64 = (1.0 - v70) * 0.5;
                        if (v64 <= v6.n128_f32[0])
                        {
                          goto LABEL_88;
                        }
                      }

                      else
                      {
                        v64 = INFINITY;
                      }

                      if (v64 < v42)
                      {
                        v42 = v64;
                      }

                      if (++v38 == v39)
                      {
                        goto LABEL_59;
                      }
                    }
                  }

                  v50 = v49 - 4;
                  v42 = INFINITY;
                  do
                  {
                    if (*(*v38 + 4) == v40)
                    {
                      v52 = **v38;
                      v54 = *v52;
                      v53 = v52 + 1;
                      v55 = v54 * *v41;
                      v56 = v41 + 1;
                      v57 = v50;
                      do
                      {
                        v58 = *v53++;
                        v59 = v58;
                        v60 = *v56++;
                        v55 = v55 + (v59 * v60);
                        v57 -= 4;
                      }

                      while (v57);
                      v51 = (1.0 - v55) * 0.5;
                      if (v51 <= v6.n128_f32[0])
                      {
                        goto LABEL_88;
                      }
                    }

                    else
                    {
                      v51 = INFINITY;
                    }

                    if (v51 < v42)
                    {
                      v42 = v51;
                    }

                    ++v38;
                  }

                  while (v38 != v39);
                }

LABEL_59:
                if (v42 < v35)
                {
                  v47 = v33[1];
                  if (v47)
                  {
                    atomic_fetch_add_explicit(v47 + 1, 1uLL, memory_order_relaxed);
                  }

                  v48 = *&buf[8];
                  *buf = v36;
                  *&buf[8] = v47;
                  if (v48 && !atomic_fetch_add(&v48->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v48->__on_zero_shared)(v48, v6);
                    std::__shared_weak_count::__release_weak(v48);
                  }

                  v35 = v42;
                }
              }

              else
              {
                v42 = INFINITY;
                while (1)
                {
                  v44 = *(*v38 + 4);
                  if (!v44 && v6.n128_f32[0] >= 0.5)
                  {
                    break;
                  }

                  v46 = INFINITY;
                  if (!v44)
                  {
                    v46 = 0.5;
                  }

                  if (v46 < v42)
                  {
                    v42 = v46;
                  }

                  if (++v38 == v39)
                  {
                    goto LABEL_59;
                  }
                }

LABEL_88:
                v81 = (__p_8 - __p) >> 4;
                v82 = v81 + 1;
                if ((v81 + 1) >> 60)
                {
                  sub_2401BDE28();
                }

                v83 = -__p;
                if (-__p >> 3 > v82)
                {
                  v82 = v83 >> 3;
                }

                if (v83 >= 0x7FFFFFFFFFFFFFF0)
                {
                  v84 = 0xFFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v84 = v82;
                }

                if (v84)
                {
                  if (!(v84 >> 60))
                  {
                    operator new();
                  }

                  goto LABEL_596;
                }

                v85 = 16 * v81;
                v86 = *v33;
                *(16 * v81) = *v33;
                if (*(&v86 + 1))
                {
                  atomic_fetch_add_explicit((*(&v86 + 1) + 8), 1uLL, memory_order_relaxed);
                }

                v87 = (v85 + 16);
                v88 = __p;
                v89 = (v85 - (__p_8 - __p));
                memcpy(v89, __p, __p_8 - __p);
                __p = v89;
                if (v88)
                {
                  operator delete(v88);
                }

                v5 = v388;
                __p_8 = v87;
              }
            }

            v33 += 2;
          }

          while (v33 != v34);
          v90 = *buf;
          v91 = *&buf[8];
          v92 = v35;
          v93 = a2;
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
          }
        }

        v7 = v395;
        v400 = v90;
        v401 = v91;
        v94 = 126 - 2 * __clz((__p_8 - __p) >> 4);
        if (__p_8 == __p)
        {
          v95 = 0;
        }

        else
        {
          v95 = v94;
        }

        sub_2401F57F8(__p, __p_8, v95, 1);
        v96 = *&buf[8];
        if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v96->__on_zero_shared)(v96);
          std::__shared_weak_count::__release_weak(v96);
        }

        v97 = v93;
        v98 = *v93;
        v99 = v97[1];
        while (v98 != v99)
        {
          if (*v98 != *(*v5 + 32))
          {
            v100 = **v98;
            v101 = *(v100 + 24);
            v102 = *(v100 + 32);
            if (v102)
            {
              atomic_fetch_add_explicit(&v102->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v101)
            {
              if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
              {
                qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
                __cxa_guard_release(&qword_280C03A00);
              }

              v103 = qword_280C03978;
              if (os_log_type_enabled(v103, OS_LOG_TYPE_DEBUG))
              {
                v112 = (*v101 + 20);
                *buf = 136315138;
                *&buf[4] = v112;
                _os_log_debug_impl(&dword_2401B8000, v103, OS_LOG_TYPE_DEBUG, "Excluding user %s from matches, they are currently being tracked", buf, 0xCu);
              }

              v104 = __p_8;
              v105 = __p;
              if (__p != __p_8)
              {
                while (*v105 != v101)
                {
                  v105 += 2;
                  if (v105 == __p_8)
                  {
                    goto LABEL_144;
                  }
                }

                if (v105 != __p_8)
                {
                  v106 = v105 + 2;
                  if (v105 + 2 != __p_8)
                  {
                    do
                    {
                      v107 = *v106;
                      if (*v106 != v101)
                      {
                        v108 = v106[1];
                        *v106 = 0;
                        v106[1] = 0;
                        v109 = v105[1];
                        *v105 = v107;
                        v105[1] = v108;
                        if (v109 && !atomic_fetch_add(&v109->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v109->__on_zero_shared)(v109);
                          std::__shared_weak_count::__release_weak(v109);
                        }

                        v105 += 2;
                      }

                      v106 += 2;
                    }

                    while (v106 != __p_8);
                    v104 = __p_8;
                  }

                  v5 = v388;
                }

                v110 = v104;
                if (v105 != v104)
                {
                  while (v110 != v105)
                  {
                    v111 = *(v110 - 1);
                    if (v111 && !atomic_fetch_add(&v111->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v111->__on_zero_shared)(v111);
                      std::__shared_weak_count::__release_weak(v111);
                    }

                    v110 -= 2;
                  }

                  __p_8 = v105;
                }
              }
            }

LABEL_144:
            v7 = v395;
            if (v102 && !atomic_fetch_add(&v102->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v102->__on_zero_shared)(v102);
              std::__shared_weak_count::__release_weak(v102);
            }
          }

          v98 += 2;
        }

        if ((*(*v402 + 16) & 1) == 0)
        {
          break;
        }

        if (*(*v402 + 24) == *(*v402 + 32))
        {
          sub_2401F5508(*(a1 + 8), &v402);
          if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
          {
            qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
            __cxa_guard_release(&qword_280C03A00);
          }

          v113 = qword_280C03978;
          if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
          {
            v316 = *v402 + 160;
            v317 = (*(**(a1 + 8) + 8) - ***(a1 + 8)) >> 4;
            *buf = 136315394;
            *&buf[4] = v316;
            *&buf[12] = 2048;
            *&buf[14] = v317;
            _os_log_debug_impl(&dword_2401B8000, v113, OS_LOG_TYPE_DEBUG, "Added tracked user %s with no faceprint to DB. New DB size %zu", buf, 0x16u);
          }

LABEL_178:
        }

LABEL_179:
        v128 = __p;
        v129 = v402;
        if (__p_8 - __p < 0x11)
        {
          goto LABEL_352;
        }

        memset(buf, 0, sizeof(buf));
        v406[0] = 1065353216;
        v130 = *v402;
        if ((*(*v402 + 16) & 1) == 0)
        {
          _os_crash();
          __break(1u);
LABEL_600:
          sub_2401F0C48();
        }

        v387 = *v402;
        if (__p == __p_8)
        {
          goto LABEL_301;
        }

        do
        {
          v131 = *v128;
          v132 = **v128;
          if ((v132[2] & 1) == 0)
          {
            goto LABEL_594;
          }

          if (*v132 != *v130 || v132[1] != v130[1])
          {
            v134 = bswap64(*v130);
            v135 = bswap64(*v132);
            if (v134 == v135 && (v134 = bswap64(v130[1]), v135 = bswap64(v132[1]), v134 == v135))
            {
              v136 = 0;
            }

            else if (v134 < v135)
            {
              v136 = -1;
            }

            else
            {
              v136 = 1;
            }

            v137 = *(a1 + 8);
            v138 = v136 < 0;
            if (v136 < 0)
            {
              v139 = v130;
            }

            else
            {
              v139 = **v128;
            }

            if (v138)
            {
              v140 = **v128;
            }

            else
            {
              v140 = v130;
            }

            *v407 = *v139;
            *&v407[16] = *v140;
            v143 = *(v137 + 48);
            v141 = v137 + 48;
            v142 = v143;
            if (!v143)
            {
              goto LABEL_239;
            }

            v144 = v141;
            do
            {
              v150 = bswap64(*(v142 + 25));
              v151 = bswap64(*v407);
              if (v150 == v151 && (v150 = bswap64(*(v142 + 33)), v151 = bswap64(*&v407[8]), v150 == v151))
              {
                v152 = 0;
              }

              else if (v150 < v151)
              {
                v152 = -1;
              }

              else
              {
                v152 = 1;
              }

              if (v152 < 0)
              {
                v147 = -1;
              }

              else
              {
                v147 = 1;
              }

              if (!v152)
              {
                v153 = bswap64(*(v142 + 41));
                v154 = bswap64(*&v407[16]);
                if (v153 == v154 && (v153 = bswap64(*(v142 + 49)), v154 = bswap64(*&v407[24]), v153 == v154))
                {
                  v145 = 0;
                }

                else
                {
                  v145 = v153 < v154 ? -1 : 1;
                }

                v146 = v145 == 0;
                v147 = v145 < 0 ? -1 : 1;
                if (v146)
                {
                  v147 = 0;
                }
              }

              v148 = v147;
              v149 = v147 & 8;
              if (v148 >= 0)
              {
                v144 = v142;
              }

              v142 = *(v142 + v149);
            }

            while (v142);
            if (v144 == v141)
            {
LABEL_239:
              v390 = v128;
              v160 = *(*v402 + 24);
              v161 = ((v132[4] - v132[3]) >> 3) + ((*(*v402 + 32) - v160) >> 3);
              if (v161 > (*(*v402 + 40) - v160) >> 3)
              {
                if (!(v161 >> 61))
                {
                  operator new();
                }

                sub_2401BDE28();
              }

              v162 = *v131;
              v164 = (*v131)[3];
              v163 = (*v131)[4];
              if (v164 == v163)
              {
                v128 = v390;
                v165 = v402;
              }

              else
              {
                v165 = v402;
                v166 = *v402;
                v167 = *(*v402 + 32);
                v128 = v390;
                do
                {
                  if (v167 < *(v166 + 40))
                  {
                    v168 = *v164;
                    *v164 = 0;
                    *v167++ = v168;
                    *(v166 + 32) = v167;
                  }

                  else
                  {
                    v167 = sub_2401F6E78(v166 + 24, v164);
                  }

                  *(v166 + 32) = v167;
                  ++v164;
                }

                while (v164 != v163);
                v162 = *v131;
                v164 = (*v131)[3];
                v163 = (*v131)[4];
              }

              while (v163 != v164)
              {
                v170 = *--v163;
                v169 = v170;
                *v163 = 0;
                if (v170)
                {
                  free(v169[3]);
                  free(*v169);
                  MEMORY[0x245CBCA30](v169, 0x1080C407C7A2332);
                }
              }

              v162[4] = v164;
              if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
              {
                qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
                __cxa_guard_release(&qword_280C03A00);
              }

              v171 = qword_280C03978;
              v130 = v387;
              if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
              {
                v172 = (*v131 + 20);
                v173 = *v165 + 160;
                v174 = (*(*v165 + 32) - *(*v165 + 24)) >> 3;
                *v407 = 136315650;
                *&v407[4] = v172;
                *&v407[12] = 2080;
                *&v407[14] = v173;
                *&v407[22] = 2048;
                *&v407[24] = v174;
                _os_log_impl(&dword_2401B8000, v171, OS_LOG_TYPE_DEFAULT, "Transferred cluster information from user %s to %s. New cluster count: %lu.", v407, 0x20u);
              }

              v175 = v132[1] ^ *v132;
              if (*&buf[8])
              {
                v176 = vcnt_s8(*&buf[8]);
                v176.i16[0] = vaddlv_u8(v176);
                if (v176.u32[0] > 1uLL)
                {
                  v177 = v132[1] ^ *v132;
                  if (v175 >= *&buf[8])
                  {
                    v177 = v175 % *&buf[8];
                  }
                }

                else
                {
                  v177 = (*&buf[8] - 1) & v175;
                }

                v178 = *(*buf + 8 * v177);
                if (v178)
                {
                  v179 = *v178;
                  if (v179)
                  {
                    if (v176.u32[0] < 2uLL)
                    {
                      while (1)
                      {
                        v183 = v179[1];
                        if (v183 == v175)
                        {
                          if (v179[2] == *v132 && v179[3] == v132[1])
                          {
                            goto LABEL_183;
                          }
                        }

                        else if ((v183 & (*&buf[8] - 1)) != v177)
                        {
                          goto LABEL_282;
                        }

                        v179 = *v179;
                        if (!v179)
                        {
                          goto LABEL_282;
                        }
                      }
                    }

                    do
                    {
                      v181 = v179[1];
                      if (v181 == v175)
                      {
                        if (v179[2] == *v132 && v179[3] == v132[1])
                        {
                          goto LABEL_183;
                        }
                      }

                      else
                      {
                        if (v181 >= *&buf[8])
                        {
                          v181 %= *&buf[8];
                        }

                        if (v181 != v177)
                        {
                          break;
                        }
                      }

                      v179 = *v179;
                    }

                    while (v179);
                  }
                }
              }

LABEL_282:
              operator new();
            }

            v155 = bswap64(*v407);
            v156 = bswap64(*(v144 + 25));
            if (v155 == v156 && (v155 = bswap64(*&v407[8]), v156 = bswap64(*(v144 + 33)), v155 == v156))
            {
              v158 = bswap64(*&v407[16]);
              v159 = bswap64(*(v144 + 41));
              if (v158 == v159)
              {
                v158 = bswap64(*&v407[24]);
                v159 = bswap64(*(v144 + 49));
                if (v158 == v159)
                {
                  goto LABEL_183;
                }
              }

              if (v158 < v159)
              {
                v157 = -1;
              }

              else
              {
                v157 = 1;
              }
            }

            else if (v155 < v156)
            {
              v157 = -1;
            }

            else
            {
              v157 = 1;
            }

            if (v157 < 0)
            {
              goto LABEL_239;
            }
          }

LABEL_183:
          v128 += 2;
        }

        while (v128 != __p_8);
        if (!*&buf[24])
        {
LABEL_301:
          if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
          {
            qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
            __cxa_guard_release(&qword_280C03A00);
          }

          v195 = qword_280C03978;
          v5 = v388;
          if (os_log_type_enabled(v195, OS_LOG_TYPE_INFO))
          {
            *v407 = 0;
            _os_log_impl(&dword_2401B8000, v195, OS_LOG_TYPE_INFO, "No user identities to remove", v407, 2u);
          }

          goto LABEL_319;
        }

        v184 = *(a1 + 8);
        v185 = *v184;
        v186 = (*v184)[1];
        if (**v184 == v186)
        {
          v189 = **v184;
          v5 = v388;
LABEL_305:
          if (v189 != v186)
          {
            goto LABEL_311;
          }

          goto LABEL_316;
        }

        v187 = *buf;
        v188 = *&buf[8];
        v189 = **v184;
        v5 = v388;
        while (1)
        {
          v190 = **v189;
          if (*(v190 + 16) == 1)
          {
            if (sub_2401F6C6C(v187, v188, v190))
            {
              break;
            }
          }

          v189 += 2;
          if (v189 == v186)
          {
            goto LABEL_316;
          }
        }

        if (v189 == v186)
        {
          goto LABEL_305;
        }

        v191 = v189 + 2;
        if (v189 + 2 != v186)
        {
          do
          {
            v192 = **v191;
            if (*(v192 + 16) != 1 || !sub_2401F6C6C(*buf, *&buf[8], v192))
            {
              v193 = *v191;
              *v191 = 0;
              v191[1] = 0;
              v194 = v189[1];
              *v189 = v193;
              if (v194 && !atomic_fetch_add(&v194->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v194->__on_zero_shared)(v194);
                std::__shared_weak_count::__release_weak(v194);
              }

              v189 += 2;
            }

            v191 += 2;
          }

          while (v191 != v186);
          v185 = *v184;
          v186 = (*v184)[1];
        }

        v130 = v387;
        if (v189 != v186)
        {
LABEL_311:
          while (v186 != v189)
          {
            v196 = *(v186 - 1);
            if (v196 && !atomic_fetch_add(&v196->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v196->__on_zero_shared)(v196);
              std::__shared_weak_count::__release_weak(v196);
            }

            v186 -= 2;
          }

          v185[1] = v189;
        }

LABEL_316:
        if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
        {
          qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
          __cxa_guard_release(&qword_280C03A00);
        }

        v195 = qword_280C03978;
        if (os_log_type_enabled(v195, OS_LOG_TYPE_DEBUG))
        {
          v315 = ((*v184)[1] - **v184) >> 4;
          *v407 = 134217984;
          *&v407[4] = v315;
          _os_log_debug_impl(&dword_2401B8000, v195, OS_LOG_TYPE_DEBUG, "Remaining number of user identities in db: %lu", v407, 0xCu);
        }

LABEL_319:

        if (*&buf[24])
        {
          v197 = v130[1] ^ *v130;
          v198 = a3[1];
          if (v198)
          {
            v199 = vcnt_s8(v198);
            v199.i16[0] = vaddlv_u8(v199);
            if (v199.u32[0] > 1uLL)
            {
              v200 = v130[1] ^ *v130;
              if (v197 >= *&v198)
              {
                v200 = v197 % *&v198;
              }
            }

            else
            {
              v200 = (*&v198 - 1) & v197;
            }

            v201 = *(*a3 + 8 * v200);
            if (v201)
            {
              v202 = *v201;
              if (v202)
              {
                if (v199.u32[0] < 2uLL)
                {
                  while (1)
                  {
                    v206 = v202[1];
                    if (v206 == v197)
                    {
                      if (v202[2] == *v130 && v202[3] == v130[1])
                      {
                        goto LABEL_347;
                      }
                    }

                    else if ((v206 & (*&v198 - 1)) != v200)
                    {
                      goto LABEL_346;
                    }

                    v202 = *v202;
                    if (!v202)
                    {
                      goto LABEL_346;
                    }
                  }
                }

                do
                {
                  v204 = v202[1];
                  if (v204 == v197)
                  {
                    if (v202[2] == *v130 && v202[3] == v130[1])
                    {
                      goto LABEL_347;
                    }
                  }

                  else
                  {
                    if (v204 >= *&v198)
                    {
                      v204 %= *&v198;
                    }

                    if (v204 != v200)
                    {
                      break;
                    }
                  }

                  v202 = *v202;
                }

                while (v202);
              }
            }
          }

LABEL_346:
          operator new();
        }

LABEL_347:
        v207 = *&buf[16];
        if (*&buf[16])
        {
          do
          {
            v208 = *v207;
            operator delete(v207);
            v207 = v208;
          }

          while (v208);
        }

        v209 = *buf;
        *buf = 0;
        if (v209)
        {
          operator delete(v209);
        }

        v129 = v402;
        v7 = v395;
LABEL_352:
        v210 = *v5;
        v211 = *(*(a1 + 8) + 32) * 0.001;
        *&v407[24] = 0;
        *v407 = v211;
        sub_240269D58(buf, v210, v407);
        v212 = *v129;
        v213 = *(*v129 + 80);
        v214 = *&buf[16];
        *(v212 + 48) = *buf;
        *(v212 + 64) = v214;
        if ((v213 & 1) == 0)
        {
          *(v212 + 80) = 1;
        }

        v215 = *v5;
        v216 = *(*v5 + 24);
        if (!v216)
        {
          goto LABEL_361;
        }

        if (v216 != 1)
        {
          goto LABEL_600;
        }

        if ((*(v215 + 12) & 1) == 0)
        {
          if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
          {
            qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
            __cxa_guard_release(&qword_280C03A00);
          }

          v217 = qword_280C03978;
          if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2401B8000, v217, OS_LOG_TYPE_ERROR, "Invalid timestamp for point", buf, 2u);
          }

          goto LABEL_483;
        }

LABEL_361:
        v218 = *(*v129 + 24);
        v219 = *(*v129 + 32);
        if (v218 == v219)
        {
          if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
          {
            qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
            __cxa_guard_release(&qword_280C03A00);
          }

          v234 = qword_280C03978;
          if (os_log_type_enabled(v234, OS_LOG_TYPE_DEBUG))
          {
            v312 = *v129 + 160;
            *buf = 136315138;
            *&buf[4] = v312;
            _os_log_debug_impl(&dword_2401B8000, v234, OS_LOG_TYPE_DEBUG, "%s: No cluster representation. Adding first cluster.", buf, 0xCu);
          }

          sub_24024BA70();
        }

        v220 = *(v215 + 112);
        if (v220 != *(*v218 + 16))
        {
          if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
          {
            qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
            __cxa_guard_release(&qword_280C03A00);
          }

          v235 = qword_280C03978;
          v7 = v395;
          if (os_log_type_enabled(v235, OS_LOG_TYPE_ERROR))
          {
            v313 = *(v215 + 112);
            v314 = *(**(*v129 + 24) + 16);
            *buf = 67109376;
            *&buf[4] = v313;
            *&buf[8] = 1024;
            *&buf[10] = v314;
            _os_log_error_impl(&dword_2401B8000, v235, OS_LOG_TYPE_ERROR, "Point size does not match cluster dimensionality %u != %u", buf, 0xEu);
          }

          goto LABEL_483;
        }

        v221 = (v219 - v218) >> 3;
        v222 = *(v215 + 96);
        if (v221 <= 1)
        {
          v223 = 1;
        }

        else
        {
          v223 = v221;
        }

        v224 = 4 * *(v215 + 112);
        v225 = v224 - 8;
        v226 = ((v224 - 8) >> 2) + 1;
        v227 = v226 & 0x7FFFFFFFFFFFFFF8;
        v228 = 4 * (v226 & 0x7FFFFFFFFFFFFFF8);
        if (v220)
        {
          if (v220 == 1)
          {
            v229 = 0;
            v230 = 0;
            v231 = INFINITY;
            do
            {
              v233 = *(v218 + 8 * v229);
              if (*(v233 + 16) == 1)
              {
                v232 = (1.0 - (**v233 * *v222)) * 0.5;
              }

              else
              {
                v232 = INFINITY;
              }

              if (v231 > v232)
              {
                v230 = v229;
                v231 = v232;
              }

              ++v229;
            }

            while (v223 != v229);
          }

          else if (v225 >= 0x1C)
          {
            v266 = 0;
            v230 = 0;
            v231 = INFINITY;
            do
            {
              v268 = *(v218 + 8 * v266);
              if (*(v268 + 16) == v220)
              {
                v269 = *v268;
                v270 = *v268 + 4;
                v272 = *v269;
                v271 = (v269 + 5);
                v273 = v272 * *v222;
                v274 = (v222 + 5);
                v275 = v226 & 0x7FFFFFFFFFFFFFF8;
                do
                {
                  v276 = vmulq_f32(v271[-1], v274[-1]);
                  v277 = vmulq_f32(*v271, *v274);
                  v273 = (((((((v273 + v276.f32[0]) + v276.f32[1]) + v276.f32[2]) + v276.f32[3]) + v277.f32[0]) + v277.f32[1]) + v277.f32[2]) + v277.f32[3];
                  v274 += 2;
                  v271 += 2;
                  v275 -= 8;
                }

                while (v275);
                if (v226 != v227)
                {
                  v278 = (v270 + v228);
                  v279 = &v222[v228 / 4 + 1];
                  v280 = v224 - v228 - 4;
                  do
                  {
                    v281 = *v278++;
                    v282 = v281;
                    v283 = *v279++;
                    v273 = v273 + (v282 * v283);
                    v280 -= 4;
                  }

                  while (v280);
                }

                v267 = (1.0 - v273) * 0.5;
              }

              else
              {
                v267 = INFINITY;
              }

              if (v231 > v267)
              {
                v230 = v266;
                v231 = v267;
              }

              ++v266;
            }

            while (v266 != v223);
          }

          else
          {
            v254 = 0;
            v230 = 0;
            v231 = INFINITY;
            do
            {
              v256 = *(v218 + 8 * v254);
              if (*(v256 + 16) == v220)
              {
                v257 = *v256;
                v259 = *v257;
                v258 = v257 + 1;
                v260 = v259 * *v222;
                v261 = v222 + 1;
                v262 = v224 - 4;
                do
                {
                  v263 = *v258++;
                  v264 = v263;
                  v265 = *v261++;
                  v260 = v260 + (v264 * v265);
                  v262 -= 4;
                }

                while (v262);
                v255 = (1.0 - v260) * 0.5;
              }

              else
              {
                v255 = INFINITY;
              }

              if (v231 > v255)
              {
                v230 = v254;
                v231 = v255;
              }

              ++v254;
            }

            while (v254 != v223);
          }
        }

        else
        {
          v236 = 0;
          v230 = 0;
          v231 = INFINITY;
          do
          {
            if (*(*(v218 + 8 * v236) + 16))
            {
              v237 = INFINITY;
            }

            else
            {
              v237 = 0.5;
            }

            if (v231 > v237)
            {
              v230 = v236;
              v231 = v237;
            }

            ++v236;
          }

          while (v223 != v236);
        }

        if (v231 > *(*(a1 + 8) + 36))
        {
          sub_24024BA70();
        }

        v238 = *(v218 + 8 * v230);
        if (*(v238 + 16) != v220)
        {
          goto LABEL_472;
        }

        v239 = 0.0;
        v240 = 0.0;
        if (v220)
        {
          v240 = *v222 * *v222;
          if (v220 != 1)
          {
            v241 = v222 + 1;
            if (v225 < 0x1C)
            {
LABEL_400:
              v246 = &v222[v224 / 4];
              do
              {
                v247 = *v241++;
                v240 = v240 + (v247 * v247);
              }

              while (v241 != v246);
            }

            else
            {
              v242 = (v222 + 5);
              v243 = v226 & 0x7FFFFFFFFFFFFFF8;
              do
              {
                v244 = vmulq_f32(v242[-1], v242[-1]);
                v245 = vmulq_f32(*v242, *v242);
                v240 = (((((((v240 + v244.f32[0]) + v244.f32[1]) + v244.f32[2]) + v244.f32[3]) + v245.f32[0]) + v245.f32[1]) + v245.f32[2]) + v245.f32[3];
                v242 += 2;
                v243 -= 8;
              }

              while (v243);
              if (v226 != v227)
              {
                v241 = (v241 + v228);
                goto LABEL_400;
              }
            }
          }
        }

        v248 = *(v238 + 24);
        v249 = *(v238 + 40);
        if (v249)
        {
          v250 = 1.0 / sqrtf(v240);
          v251 = (v249 - 1) & 0x3FFFFFFFFFFFFFFFLL;
          v252 = v249;
          if (v251 < 7)
          {
            v253 = *(v238 + 24);
            goto LABEL_433;
          }

          if (v248 < &v222[v252] && (v253 = *(v238 + 24), v222 < &v248[v252]))
          {
            do
            {
LABEL_433:
              v290 = *v222++;
              *v253 = (v250 * v290) + *v253;
              ++v253;
            }

            while (v253 != &v248[v249]);
          }

          else
          {
            v284 = v251 + 1;
            v285 = v284 & 0x7FFFFFFFFFFFFFF8;
            v253 = &v248[v285];
            v286 = (v222 + 4);
            v287 = (v248 + 4);
            v288 = v284 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v289 = vaddq_f32(vmulq_n_f32(*v286, v250), *v287);
              v287[-1] = vaddq_f32(vmulq_n_f32(v286[-1], v250), v287[-1]);
              *v287 = v289;
              v286 += 2;
              v287 += 2;
              v288 -= 8;
            }

            while (v288);
            if (v284 != (v284 & 0x7FFFFFFFFFFFFFF8))
            {
              v222 = (v222 + v285 * 4);
              goto LABEL_433;
            }
          }

          v239 = *v248 * *v248;
          if (v249 != 1)
          {
            v291 = v248 + 1;
            if ((v252 * 4 - 8) < 0x1C)
            {
LABEL_440:
              v297 = &v248[v252];
              do
              {
                v298 = *v291++;
                v239 = v239 + (v298 * v298);
              }

              while (v291 != v297);
            }

            else
            {
              v292 = ((v252 * 4 - 8) >> 2) + 1;
              v293 = (v248 + 5);
              v294 = v292 & 0x7FFFFFFFFFFFFFF8;
              do
              {
                v295 = vmulq_f32(v293[-1], v293[-1]);
                v296 = vmulq_f32(*v293, *v293);
                v239 = (((((((v239 + v295.f32[0]) + v295.f32[1]) + v295.f32[2]) + v295.f32[3]) + v296.f32[0]) + v296.f32[1]) + v296.f32[2]) + v296.f32[3];
                v293 += 2;
                v294 -= 8;
              }

              while (v294);
              if (v292 != (v292 & 0x7FFFFFFFFFFFFFF8))
              {
                v291 += v292 & 0x7FFFFFFFFFFFFFF8;
                goto LABEL_440;
              }
            }
          }
        }

        v299 = 1.0 / sqrtf(v239);
        v300 = *v238;
        if (v249 != v220)
        {
          if (v248 != v300)
          {
            *(v238 + 16) = v249;
            if (!v249)
            {
              v393 = v299;
              free(v300);
              v299 = v393;
              v300 = 0;
              *v238 = 0;
              *(v238 + 8) = 0;
              goto LABEL_443;
            }

            if (*(v238 + 8) < v249)
            {
              v391 = v299;
              free(v300);
              v311 = (4 * v249 + 31) & 0x7FFFFFFE0;
              *v238 = 0;
              *(v238 + 8) = v311 >> 2;
              *buf = 0;
              malloc_type_posix_memalign(buf, 0x20uLL, v311, 0xE1AC2527uLL);
              v299 = v391;
              v300 = *buf;
              *v238 = *buf;
              goto LABEL_443;
            }

            v302 = &v300[v249];
LABEL_445:
            v303 = v302 - v300 - 4;
            if (v303 < 0x1C)
            {
              v306 = v300;
            }

            else if ((v300 - v248) < 0x20)
            {
              v306 = v300;
            }

            else
            {
              v304 = (v303 >> 2) + 1;
              v305 = v304 & 0x7FFFFFFFFFFFFFF8;
              v306 = &v300[v305];
              v307 = (v248 + 4);
              v308 = (v300 + 4);
              v309 = v304 & 0x7FFFFFFFFFFFFFF8;
              do
              {
                v310 = vmulq_n_f32(*v307, v299);
                v308[-1] = vmulq_n_f32(v307[-1], v299);
                *v308 = v310;
                v307 += 2;
                v308 += 2;
                v309 -= 8;
              }

              while (v309);
              if (v304 == (v304 & 0x7FFFFFFFFFFFFFF8))
              {
                goto LABEL_471;
              }

              v248 = (v248 + v305 * 4);
            }

            do
            {
              v329 = *v248++;
              *v306++ = v299 * v329;
            }

            while (v306 != v302);
            goto LABEL_471;
          }

          *buf = 0;
          v392 = v299;
          malloc_type_posix_memalign(buf, 0x20uLL, (4 * v249 + 31) & 0x7FFFFFFE0, 0xE1AC2527uLL);
          v318 = *buf;
          v319 = *(v238 + 40);
          if (v319)
          {
            v320 = *(v238 + 24);
            v321 = (v319 - 1) & 0x3FFFFFFFFFFFFFFFLL;
            if (v321 < 7)
            {
              v322 = *buf;
              goto LABEL_469;
            }

            v322 = *buf;
            if (*buf - v320 < 0x20uLL)
            {
              do
              {
LABEL_469:
                v330 = *v320++;
                *v322++ = v392 * v330;
              }

              while (v322 != (v318 + 4 * v319));
            }

            else
            {
              v323 = v321 + 1;
              v324 = 4 * (v323 & 0x7FFFFFFFFFFFFFF8);
              v322 = (*buf + v324);
              v325 = (v320 + 4);
              v326 = (*buf + 16);
              v327 = v323 & 0x7FFFFFFFFFFFFFF8;
              do
              {
                v328 = vmulq_n_f32(*v325, v392);
                v326[-1] = vmulq_n_f32(v325[-1], v392);
                *v326 = v328;
                v325 += 2;
                v326 += 2;
                v327 -= 8;
              }

              while (v327);
              if (v323 != (v323 & 0x7FFFFFFFFFFFFFF8))
              {
                v320 = (v320 + v324);
                goto LABEL_469;
              }
            }
          }

          v331 = *v238;
          *v238 = v318;
          *(v238 + 8) = ((4 * v249 + 31) & 0x7FFFFFFE0) >> 2;
          *(v238 + 16) = v319;
          free(v331);
          goto LABEL_471;
        }

LABEL_443:
        v301 = *(v238 + 16);
        if (v301)
        {
          v302 = &v300[v301];
          v248 = *(v238 + 24);
          goto LABEL_445;
        }

LABEL_471:
        ++*(*(v218 + 8 * v230) + 48);
LABEL_472:
        if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
        {
          qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
          __cxa_guard_release(&qword_280C03A00);
        }

        v332 = qword_280C03978;
        v7 = v395;
        if (os_log_type_enabled(v332, OS_LOG_TYPE_DEBUG))
        {
          v342 = *(*(*(*v129 + 24) + 8 * v230) + 48);
          v343 = *v129 + 160;
          *buf = 136315650;
          *&buf[4] = v343;
          *&buf[12] = 2048;
          *&buf[14] = v230;
          *&buf[22] = 1024;
          *&buf[24] = v342;
          _os_log_debug_impl(&dword_2401B8000, v332, OS_LOG_TYPE_DEBUG, "%s: Cluster index %lu match -> adding point. Total points in cluster: %u", buf, 0x1Cu);
        }

        v333 = *v129;
        v334 = *v129 + 120;
        if (v334 != v215 + 96)
        {
          v335 = *(v215 + 112);
          if (v335)
          {
            v336 = *(v333 + 120);
            v337 = 4 * v335;
            if (*(v333 + 128) < v335)
            {
              free(v336);
              v338 = (v337 + 31) & 0x7FFFFFFE0;
              *(v333 + 120) = 0;
              *(v333 + 128) = v338 >> 2;
              *buf = 0;
              malloc_type_posix_memalign(buf, 0x20uLL, v338, 0xE1AC2527uLL);
              v336 = *buf;
              *v334 = *buf;
            }

            memcpy(v336, *(v215 + 96), v337);
          }

          else
          {
            free(*v334);
            *v334 = 0;
            *(v334 + 8) = 0;
          }

          *(v333 + 136) = *(v215 + 112);
          v333 = *v129;
        }

        v6 = *v215;
        *(v333 + 104) = *(v215 + 16);
        *(v333 + 88) = v6;
LABEL_483:
        if (__p)
        {
          v339 = __p_8;
          v340 = __p;
          if (__p_8 != __p)
          {
            do
            {
              v341 = *(v339 - 1);
              if (v341 && !atomic_fetch_add(&v341->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v341->__on_zero_shared)(v341);
                std::__shared_weak_count::__release_weak(v341);
              }

              v339 -= 2;
            }

            while (v339 != __p);
            v340 = __p;
          }

          operator delete(v340);
        }

        if (v401 && !atomic_fetch_add(&v401->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v401->__on_zero_shared)(v401);
          std::__shared_weak_count::__release_weak(v401);
          v30 = *(&v402 + 1);
          if (*(&v402 + 1))
          {
            goto LABEL_495;
          }
        }

        else
        {
LABEL_494:
          v30 = *(&v402 + 1);
          if (*(&v402 + 1))
          {
            goto LABEL_495;
          }
        }

LABEL_10:
        v5 += 2;
        if (v5 == v7)
        {
          goto LABEL_523;
        }
      }

      if (__p != __p_8)
      {
        if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
        {
          qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
          __cxa_guard_release(&qword_280C03A00);
        }

        v114 = qword_280C03978;
        if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
        {
          v115 = **__p + 160;
          v116 = *v402 + 160;
          *buf = 136315394;
          *&buf[4] = v115;
          *&buf[12] = 2080;
          *&buf[14] = v116;
          _os_log_impl(&dword_2401B8000, v114, OS_LOG_TYPE_DEFAULT, "Found match: recognized user %s, replacing user %s", buf, 0x16u);
        }

        v117 = **(*v5 + 32);
        v119 = *__p;
        v118 = *(__p + 8);
        if (v118)
        {
          atomic_fetch_add_explicit((v118 + 8), 1uLL, memory_order_relaxed);
        }

        v120 = *(v117 + 32);
        *(v117 + 24) = v119;
        *(v117 + 32) = v118;
        if (v120 && !atomic_fetch_add(&v120->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v120->__on_zero_shared)(v120);
          std::__shared_weak_count::__release_weak(v120);
        }

        v122 = *__p;
        v121 = *(__p + 8);
        if (v121)
        {
          atomic_fetch_add_explicit((v121 + 8), 1uLL, memory_order_relaxed);
        }

        v123 = *(&v402 + 1);
        *&v402 = v122;
        *(&v402 + 1) = v121;
        if (v123 && !atomic_fetch_add(&v123->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v123->__on_zero_shared)(v123);
          std::__shared_weak_count::__release_weak(v123);
        }

        goto LABEL_179;
      }

      sub_2401F6D50(v402);
      sub_2401F5508(*(a1 + 8), &v402);
      if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
      {
        qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
        __cxa_guard_release(&qword_280C03A00);
      }

      v113 = qword_280C03978;
      if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
      {
        if (v400)
        {
          v124 = (*v400 + 160);
        }

        else
        {
          v124 = "n/a";
        }

        v126 = *v402 + 160;
        v127 = (*(**(a1 + 8) + 8) - ***(a1 + 8)) >> 4;
        *buf = 136315906;
        *&buf[4] = v126;
        *&buf[12] = 2048;
        *&buf[14] = v127;
        *&buf[22] = 2080;
        *&buf[24] = v124;
        LOWORD(v406[0]) = 2048;
        *(v406 + 2) = v92;
        _os_log_impl(&dword_2401B8000, v113, OS_LOG_TYPE_DEFAULT, "Unknown user, assigned new UUID %s. New DB size %zu. Closest mismatch %s, d=%f", buf, 0x2Au);
      }

      goto LABEL_178;
    }
  }

LABEL_523:
  v344 = a2;
  v345 = *a2;
  if (a2[1] != *a2)
  {
    v346 = 0;
    v347 = 0;
    do
    {
      while (1)
      {
        v348 = 16 * v346;
        v349 = *v345[2 * v346];
        v350 = *(v349 + 24);
        v351 = *(v349 + 32);
        if (v351)
        {
          atomic_fetch_add_explicit(&v351->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v350)
        {
          break;
        }

        v356 = 1;
        if (!v351)
        {
          goto LABEL_538;
        }

LABEL_537:
        if (atomic_fetch_add(&v351->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_538;
        }

        (v351->__on_zero_shared)(v351);
        std::__shared_weak_count::__release_weak(v351);
        if (v356)
        {
          goto LABEL_525;
        }

LABEL_539:
        v357 = **(*a2 + v348);
        v358 = *(v357 + 24);
        v359 = *(v357 + 32);
        *buf = v358;
        *&buf[8] = v359;
        if (v359)
        {
          atomic_fetch_add_explicit(&v359->__shared_owners_, 1uLL, memory_order_relaxed);
          v360 = *v358;
          if (((*v358)[2] & 1) == 0)
          {
            goto LABEL_595;
          }

          if (!atomic_fetch_add(&v359->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v359->__on_zero_shared)(v359);
            std::__shared_weak_count::__release_weak(v359);
          }
        }

        else
        {
          v360 = *v358;
          if (((*v358)[2] & 1) == 0)
          {
            goto LABEL_595;
          }
        }

        v361 = v347 + 1;
        v345 = *a2;
        v362 = (a2[1] - *a2) >> 4;
        v363 = v361;
        v396 = v347 + 1;
        v394 = v361;
        if (v362 > v361)
        {
          do
          {
            v364 = 16 * v363;
            v365 = *v345[2 * v363];
            v366 = *(v365 + 24);
            v367 = *(v365 + 32);
            if (v367)
            {
              atomic_fetch_add_explicit(&v367->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v366)
            {
              v368 = **(*a2 + 16 * v363);
              v369 = *(v368 + 24);
              v370 = *(v368 + 32);
              if (v370)
              {
                atomic_fetch_add_explicit(&v370->__shared_owners_, 1uLL, memory_order_relaxed);
                v371 = *(*v369 + 16);
                if (!atomic_fetch_add(&v370->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v370->__on_zero_shared)(v370);
                  std::__shared_weak_count::__release_weak(v370);
                }

                v372 = v371 ^ 1;
                if (!v367)
                {
LABEL_562:
                  if ((v372 & 1) == 0)
                  {
                    goto LABEL_563;
                  }

                  goto LABEL_549;
                }
              }

              else
              {
                v372 = *(*v369 + 16) ^ 1;
                if (!v367)
                {
                  goto LABEL_562;
                }
              }
            }

            else
            {
              v372 = 1;
              if (!v367)
              {
                goto LABEL_562;
              }
            }

            if (atomic_fetch_add(&v367->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              goto LABEL_562;
            }

            (v367->__on_zero_shared)(v367);
            std::__shared_weak_count::__release_weak(v367);
            if ((v372 & 1) == 0)
            {
LABEL_563:
              v373 = **(*a2 + v364);
              v374 = *(v373 + 24);
              v375 = *(v373 + 32);
              *buf = v374;
              *&buf[8] = v375;
              if (v375)
              {
                atomic_fetch_add_explicit(&v375->__shared_owners_, 1uLL, memory_order_relaxed);
                v376 = *v374;
                if ((*v374)[2])
                {
                  if (!atomic_fetch_add(&v375->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                  {
                    (v375->__on_zero_shared)(v375);
                    std::__shared_weak_count::__release_weak(v375);
                  }

LABEL_570:
                  v377 = bswap64(*v360);
                  v378 = bswap64(*v376);
                  if (v377 == v378 && (v377 = bswap64(v360[1]), v378 = bswap64(v376[1]), v377 == v378))
                  {
                    v379 = 0;
                  }

                  else if (v377 < v378)
                  {
                    v379 = -1;
                  }

                  else
                  {
                    v379 = 1;
                  }

                  v380 = v379 < 0;
                  if (v379 < 0)
                  {
                    v381 = v360;
                  }

                  else
                  {
                    v381 = v376;
                  }

                  if (v380)
                  {
                    v382 = v376;
                  }

                  else
                  {
                    v382 = v360;
                  }

                  *buf = *v381;
                  *&buf[16] = *v382;
                  operator new();
                }
              }

              else
              {
                v376 = *v374;
                if ((*v374)[2])
                {
                  goto LABEL_570;
                }
              }

              _os_crash();
              __break(1u);
LABEL_594:
              _os_crash();
              __break(1u);
LABEL_595:
              _os_crash();
              __break(1u);
LABEL_596:
              sub_2401BDE28();
            }

LABEL_549:
            v345 = *a2;
            v362 = (a2[1] - *a2) >> 4;
            LODWORD(v361) = v361 + 1;
            v363 = v361;
          }

          while (v362 > v361);
        }

        v344 = a2;
        v347 = v396;
        v346 = v394;
        if (v362 <= v394)
        {
          goto LABEL_583;
        }
      }

      v352 = **(*v344 + 16 * v346);
      v353 = *(v352 + 24);
      v354 = *(v352 + 32);
      if (!v354)
      {
        v356 = *(*v353 + 16) ^ 1;
        if (!v351)
        {
          goto LABEL_538;
        }

        goto LABEL_537;
      }

      atomic_fetch_add_explicit(&v354->__shared_owners_, 1uLL, memory_order_relaxed);
      v355 = *(*v353 + 16);
      if (!atomic_fetch_add(&v354->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v354->__on_zero_shared)(v354);
        std::__shared_weak_count::__release_weak(v354);
      }

      v356 = v355 ^ 1;
      if (v351)
      {
        goto LABEL_537;
      }

LABEL_538:
      if ((v356 & 1) == 0)
      {
        goto LABEL_539;
      }

LABEL_525:
      v344 = a2;
      v345 = *a2;
      v346 = ++v347;
    }

    while ((a2[1] - *a2) >> 4 > v347);
  }

LABEL_583:
  v383 = v403;
  if (v403)
  {
    v384 = v404;
    if (v404 != v403)
    {
      do
      {
        v385 = *(v384 - 1);
        if (v385)
        {
          if (!atomic_fetch_add(&v385->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v385->__on_zero_shared)(v385);
            std::__shared_weak_count::__release_weak(v385);
          }
        }

        v384 -= 16;
      }

      while (v384 != v383);
      v383 = v403;
    }

    operator delete(v383);
  }
}

void sub_240247364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, char a42, uint64_t a43, void *a44)
{
  sub_24024BCC4((v44 - 256));
  sub_2401E213C(&a37);
  sub_2401C1DF4(&a40);
  sub_2401C1DF4(&a42);
  sub_2401E213C(&a44);
  _Unwind_Resume(a1);
}

uint64_t sub_240247414(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_240247460(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[6];
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

      v5 = v1[4];
      v1[4] = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_2402474D4(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 8) + 16);
  if (*(*v1 + 104) != *(*v1 + 112))
  {
    kdebug_trace();
    v2 = *(*v1 + 104);
    v3 = *(*v1 + 112);
    if (v3 != v2)
    {
      if (((v3 - v2) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_2401BDE28();
    }

    v4 = *v1;
    *(*v1 + 112) = v2;
    if ((*(v4 + 164) & 1) == 0)
    {
      if ((atomic_load_explicit(&qword_280C03A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A00))
      {
        qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
        __cxa_guard_release(&qword_280C03A00);
      }

      v5 = qword_280C03978;
      if (os_log_type_enabled(qword_280C03978, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = 0;
        _os_log_impl(&dword_2401B8000, v5, OS_LOG_TYPE_DEFAULT, "buffer copy for faceprinting was unnecessary, candidate(s) discarded (%d)", buf, 8u);
      }
    }

    kdebug_trace();
  }
}

void sub_240248AEC(uint64_t a1, uint64_t ***a2, __CVBuffer *a3, _OWORD *a4)
{
  v20[4] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v7 = *(*(a1 + 8) + 16);
    v8 = *v7;
    v9 = *(*v7 + 104);
    v10 = *(*v7 + 112);
    v11 = *v7;
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 8);
        if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }

        v10 -= 16;
      }

      while (v10 != v9);
      v11 = *v7;
    }

    *(v8 + 112) = v9;
    v13 = *(v11 + 96);
    v14 = a4[1];
    *(v11 + 64) = *a4;
    *(v11 + 80) = v14;
    if ((v13 & 1) == 0)
    {
      *(v11 + 96) = 1;
    }

    if (*a2 != a2[1])
    {
      kdebug_trace();
      v15 = atomic_load((*v7 + 156));
      v16 = *v7;
      if (v15)
      {
        *(v16 + 164) = 0;
        v17 = atomic_load((v16 + 160));
        if (v17 < 1)
        {
          sub_24021E1DC(*a2, a2[1], a4, *v7 + 104);
          v18 = *v7;
          if (*(*v7 + 104) != *(*v7 + 112))
          {
            CVPixelBufferRetain(a3);
            v19 = *(v18 + 16);
            if (v19)
            {
              CVPixelBufferRelease(v19);
            }

            *(v18 + 16) = a3;
            atomic_store(1u, (v18 + 40));
            v20[0] = &unk_285227EF0;
            v20[1] = v7;
            v20[3] = v20;
            sub_24021DBDC();
          }
        }
      }

      else
      {
        sub_24021E1DC(*a2, a2[1], a4, v16 + 104);
        *(*v7 + 164) = 1;
      }

      kdebug_trace();
    }
  }
}

void sub_240248EC8(void *a1)
{
  v1 = a1[1];
  *a1 = &unk_2852276D0;
  a1[1] = 0;
  if (v1)
  {
    v2 = sub_240248F4C(v1);
    MEMORY[0x245CBCA30](v2, 0x1022C40D1E9885DLL);
  }

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_240248F4C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_24021FD84(*(a1 + 48));
  v3 = *(a1 + 24);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  if (*(a1 + 8) == 1)
  {
    v4 = *a1;
    *a1 = 0;
    if (v4)
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = v4[1];
        v7 = *v4;
        if (v6 != v5)
        {
          do
          {
            v8 = *(v6 - 1);
            if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
            }

            v6 -= 16;
          }

          while (v6 != v5);
          v7 = *v4;
        }

        v4[1] = v5;
        operator delete(v7);
      }

      MEMORY[0x245CBCA30](v4, 0x1020C4016EE4530);
    }
  }

  return a1;
}

void *sub_2402490C8(void *a1)
{
  v1 = a1;
  v2 = a1[1];
  *v1 = &unk_2852276D0;
  v1[1] = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_240248F4C(v2);
    MEMORY[0x245CBCA30](v4, 0x1022C40D1E9885DLL);
    return v3;
  }

  return v1;
}

uint64_t sub_240249138(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*v1)
    {
      sub_24026D6A0(*v1, 0);
    }

    v2 = *(v1 + 128);
    if (v2)
    {
      v3 = *(v1 + 136);
      v4 = *(v1 + 128);
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
        v4 = *(v1 + 128);
      }

      *(v1 + 136) = v2;
      operator delete(v4);
    }

    v6 = *(v1 + 104);
    if (v6)
    {
      v7 = *(v1 + 112);
      v8 = *(v1 + 104);
      if (v7 != v6)
      {
        do
        {
          v9 = *(v7 - 8);
          if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }

          v7 -= 16;
        }

        while (v7 != v6);
        v8 = *(v1 + 104);
      }

      *(v1 + 112) = v6;
      operator delete(v8);
    }

    v10 = *(v1 + 56);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = *(v1 + 32);
    if (v11)
    {
      VTPixelTransferSessionInvalidate(*(v1 + 32));
      CFRelease(v11);
      *(v1 + 32) = 0;
    }

    v12 = *(v1 + 24);
    if (v12)
    {
      CVPixelBufferRelease(v12);
    }

    v13 = *(v1 + 16);
    if (v13)
    {
      CVPixelBufferRelease(v13);
    }

    v14 = *(v1 + 8);
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    JUMPOUT(0x245CBCA30);
  }

  return result;
}

void sub_240249378(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285228140;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_2402493EC(uint64_t a1, void *a2, unsigned int *a3, void *a4, __int128 *a5, unsigned int *a6, float a7)
{
  std::mutex::lock((a1 + 160));
  *(a1 + 40) = a2 != 0;
  if (!a2)
  {
    goto LABEL_30;
  }

  v14 = a2[1];
  v15 = *(a1 + 16);
  if (v14 <= v15 && HIDWORD(v14) <= HIDWORD(v15))
  {
    v19 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = v14;
    v18 = *(a1 + 32);
    v20 = a2[3];
    if (!v20)
    {
      goto LABEL_30;
    }

    goto LABEL_15;
  }

  v17 = *(a1 + 32);
  if (v17)
  {
    free(v17);
    *(a1 + 32) = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = v14;
  *(a1 + 24) = ((((4 * v14 + 15) & 0xFFFFFFF0) >> 4) << 36) | 4;
  size = ((4 * v14 + 15) & 0xFFFFFFF0) * HIDWORD(v14);
  if (size)
  {
    v18 = malloc_type_malloc(size, 0x100004052888210uLL);
    v19 = *(a1 + 8);
    v14 = *(a1 + 16);
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  *(a1 + 32) = v18;
  v20 = a2[3];
  if (v20)
  {
LABEL_15:
    v21 = a2[1];
    v22 = a2[2];
    v23 = (HIDWORD(v22) * HIDWORD(v21));
    if (v23)
    {
      v24 = 0;
      v25 = 0;
      v26 = *(a1 + 24);
      v27 = (v20 + *a2);
      v28 = (v27 + v23);
      v29 = &v18[v19];
      if (v18)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      do
      {
        *v30 = *v27;
        v27 = (v27 + v22);
        v31 = v25 + 1;
        if (v25 + 1 == v21)
        {
          v25 = 0;
        }

        else
        {
          ++v25;
        }

        if (v31 == v21)
        {
          v27 = (v27 + HIDWORD(v22) - (v31 * v22));
        }

        v30 = (v30 + v26);
        v32 = v24 + 1;
        if (v24 + 1 == v14)
        {
          v24 = 0;
        }

        else
        {
          ++v24;
        }

        if (v32 == v14)
        {
          v30 = (v30 + HIDWORD(v26) - (v32 * v26));
        }
      }

      while (v27 != v28);
    }
  }

LABEL_30:
  v33 = *(a1 + 48);
  v34 = *a3;
  if (v34 == *(a1 + 64))
  {
    goto LABEL_31;
  }

  if ((*(a3 + 1) - 4 * a3[5]) == v33)
  {
    v47 = (4 * v34 + 31) & 0x7FFFFFFE0;
    size = 0;
    malloc_type_posix_memalign(&size, 0x20uLL, v47, 0xE1AC2527uLL);
    v59 = size;
    v60 = *a3;
    LODWORD(v36) = *a3;
    v61 = *(a3 + 1);
    if (&v61[-a3[5]] != size)
    {
      if (v36)
      {
        v62 = (v60 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        if (v62 < 7)
        {
          v63 = size;
        }

        else
        {
          v63 = size;
          if (size - v61 >= 0x20)
          {
            v64 = v62 + 1;
            v65 = (v62 + 1) & 0x7FFFFFFFFFFFFFF8;
            v66 = &v61[v65];
            v67 = (size + 16);
            v68 = (v61 + 4);
            v69 = v65;
            do
            {
              v70 = *v68;
              *(v67 - 1) = *(v68 - 1);
              *v67 = v70;
              v67 += 2;
              v68 += 2;
              v69 -= 8;
            }

            while (v69);
            if (v64 == v65)
            {
              goto LABEL_74;
            }

            v63 = &v59[4 * v65];
            v61 = v66;
          }
        }

        do
        {
          v83 = *v61++;
          *v63 = v83;
          v63 += 4;
        }

        while (v63 != &v59[4 * v60]);
      }

LABEL_74:
      v48 = v59;
      goto LABEL_78;
    }

    size = 0;
    v47 = (4 * v60 + 31) & 0x7FFFFFFE0;
    malloc_type_posix_memalign(&size, 0x20uLL, v47, 0xE1AC2527uLL);
    v48 = size;
    if (v36)
    {
      v72 = *(a3 + 1);
      v73 = (v60 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v73 < 7)
      {
        v74 = size;
      }

      else
      {
        v74 = size;
        if (size - v72 >= 0x20)
        {
          v75 = v73 + 1;
          v76 = (v73 + 1) & 0x7FFFFFFFFFFFFFF8;
          v77 = &v72[v76];
          v78 = (size + 16);
          v79 = (v72 + 4);
          v80 = v76;
          do
          {
            v81 = *v79;
            *(v78 - 1) = *(v79 - 1);
            *v78 = v81;
            v78 += 2;
            v79 += 2;
            v80 -= 8;
          }

          while (v80);
          if (v75 == v76)
          {
            goto LABEL_77;
          }

          v74 = (v48 + 4 * v76);
          v72 = v77;
        }
      }

      do
      {
        v84 = *v72++;
        *v74++ = v84;
      }

      while (v74 != (v48 + 4 * v60));
    }

LABEL_77:
    free(v59);
    goto LABEL_78;
  }

  *(a1 + 64) = v34;
  if (v34)
  {
    if (*(a1 + 56) < v34)
    {
      free(v33);
      v46 = (4 * v34 + 31) & 0x7FFFFFFE0;
      *(a1 + 48) = 0;
      *(a1 + 56) = v46 >> 2;
      size = 0;
      malloc_type_posix_memalign(&size, 0x20uLL, v46, 0xE1AC2527uLL);
      v33 = size;
      *(a1 + 48) = size;
    }
  }

  else
  {
    free(v33);
    v33 = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
  }

LABEL_31:
  v35 = *(a3 + 1);
  v36 = *(a1 + 64);
  if (&v35[-a3[5]] == v33)
  {
    v47 = (4 * v36 + 31) & 0x7FFFFFFE0;
    size = 0;
    malloc_type_posix_memalign(&size, 0x20uLL, v47, 0xE1AC2527uLL);
    v48 = size;
    if (v36)
    {
      v49 = *(a3 + 1);
      v50 = (v36 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v50 < 7)
      {
        v51 = size;
      }

      else
      {
        v51 = size;
        if (size - v49 >= 0x20)
        {
          v52 = v50 + 1;
          v53 = (v50 + 1) & 0x7FFFFFFFFFFFFFF8;
          v54 = &v49[v53];
          v55 = (size + 16);
          v56 = (v49 + 4);
          v57 = v53;
          do
          {
            v58 = *v56;
            *(v55 - 1) = *(v56 - 1);
            *v55 = v58;
            v55 += 2;
            v56 += 2;
            v57 -= 8;
          }

          while (v57);
          if (v52 == v53)
          {
            goto LABEL_78;
          }

          v51 = (v48 + 4 * v53);
          v49 = v54;
        }
      }

      do
      {
        v82 = *v49++;
        *v51++ = v82;
      }

      while (v51 != (v48 + 4 * v36));
    }

LABEL_78:
    v85 = *(a1 + 48);
    *(a1 + 48) = v48;
    *(a1 + 56) = v47 >> 2;
    *(a1 + 64) = v36;
    free(v85);
    goto LABEL_79;
  }

  if (!v36)
  {
    goto LABEL_79;
  }

  v37 = (v36 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v37 < 7)
  {
    v38 = v33;
    do
    {
LABEL_60:
      v71 = *v35++;
      *v38++ = v71;
    }

    while (v38 != &v33[v36]);
    goto LABEL_79;
  }

  v38 = v33;
  if ((v33 - v35) < 0x20)
  {
    goto LABEL_60;
  }

  v39 = v37 + 1;
  v40 = (v37 + 1) & 0x7FFFFFFFFFFFFFF8;
  v41 = &v35[v40];
  v42 = v33 + 4;
  v43 = (v35 + 4);
  v44 = v40;
  do
  {
    v45 = *v43;
    *(v42 - 1) = *(v43 - 1);
    *v42 = v45;
    v42 += 2;
    v43 += 2;
    v44 -= 8;
  }

  while (v44);
  if (v39 != v40)
  {
    v38 = &v33[v40];
    v35 = v41;
    goto LABEL_60;
  }

LABEL_79:
  *(a1 + 72) = a7;
  if ((a1 + 76) != a4)
  {
    *(a1 + 76) = *a4;
  }

  if ((a1 + 84) != a5)
  {
    v86 = *a5;
    v87 = a5[1];
    *(a1 + 116) = *(a5 + 8);
    *(a1 + 84) = v86;
    *(a1 + 100) = v87;
    v88 = *(a5 + 36);
    *(a1 + 128) = *(a5 + 11);
    *(a1 + 120) = v88;
  }

  v89 = *(a1 + 136);
  v90 = *a6;
  if (v90 != *(a1 + 152))
  {
    if ((*(a6 + 1) - 4 * a6[5]) != v89)
    {
      *(a1 + 152) = v90;
      if (v90)
      {
        if (*(a1 + 144) < v90)
        {
          free(v89);
          v102 = (4 * v90 + 31) & 0x7FFFFFFE0;
          *(a1 + 136) = 0;
          *(a1 + 144) = v102 >> 2;
          size = 0;
          malloc_type_posix_memalign(&size, 0x20uLL, v102, 0xE1AC2527uLL);
          v89 = size;
          *(a1 + 136) = size;
        }
      }

      else
      {
        free(v89);
        v89 = 0;
        *(a1 + 136) = 0;
        *(a1 + 144) = 0;
      }

      goto LABEL_84;
    }

    v103 = (4 * v90 + 31) & 0x7FFFFFFE0;
    size = 0;
    malloc_type_posix_memalign(&size, 0x20uLL, v103, 0xE1AC2527uLL);
    v115 = size;
    v116 = *a6;
    LODWORD(v92) = *a6;
    v117 = *(a6 + 1);
    if (&v117[-a6[5]] != size)
    {
      if (v92)
      {
        v118 = (v116 - 1) & 0x3FFFFFFFFFFFFFFFLL;
        if (v118 < 7)
        {
          v119 = size;
        }

        else
        {
          v119 = size;
          if (size - v117 >= 0x20)
          {
            v120 = v118 + 1;
            v121 = (v118 + 1) & 0x7FFFFFFFFFFFFFF8;
            v122 = &v117[v121];
            v123 = (size + 16);
            v124 = (v117 + 4);
            v125 = v121;
            do
            {
              v126 = *v124;
              *(v123 - 1) = *(v124 - 1);
              *v123 = v126;
              v123 += 2;
              v124 += 2;
              v125 -= 8;
            }

            while (v125);
            if (v120 == v121)
            {
              goto LABEL_127;
            }

            v119 = &v115[4 * v121];
            v117 = v122;
          }
        }

        do
        {
          v139 = *v117++;
          *v119 = v139;
          v119 += 4;
        }

        while (v119 != &v115[4 * v116]);
      }

LABEL_127:
      v104 = v115;
      goto LABEL_131;
    }

    v103 = (4 * v116 + 31) & 0x7FFFFFFE0;
    size = 0;
    malloc_type_posix_memalign(&size, 0x20uLL, v103, 0xE1AC2527uLL);
    v104 = size;
    if (v92)
    {
      v128 = *(a6 + 1);
      v129 = (v116 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v129 < 7)
      {
        v130 = size;
      }

      else
      {
        v130 = size;
        if (size - v128 >= 0x20)
        {
          v131 = v129 + 1;
          v132 = (v129 + 1) & 0x7FFFFFFFFFFFFFF8;
          v133 = &v128[v132];
          v134 = (size + 16);
          v135 = (v128 + 4);
          v136 = v132;
          do
          {
            v137 = *v135;
            *(v134 - 1) = *(v135 - 1);
            *v134 = v137;
            v134 += 2;
            v135 += 2;
            v136 -= 8;
          }

          while (v136);
          if (v131 == v132)
          {
            goto LABEL_130;
          }

          v130 = (v104 + 4 * v132);
          v128 = v133;
        }
      }

      do
      {
        v140 = *v128++;
        *v130++ = v140;
      }

      while (v130 != (v104 + 4 * v116));
    }

LABEL_130:
    free(v115);
    goto LABEL_131;
  }

LABEL_84:
  v91 = *(a6 + 1);
  v92 = *(a1 + 152);
  if (&v91[-a6[5]] == v89)
  {
    v103 = (4 * v92 + 31) & 0x7FFFFFFE0;
    size = 0;
    malloc_type_posix_memalign(&size, 0x20uLL, v103, 0xE1AC2527uLL);
    v104 = size;
    if (v92)
    {
      v105 = *(a6 + 1);
      v106 = (v92 - 1) & 0x3FFFFFFFFFFFFFFFLL;
      if (v106 < 7)
      {
        v107 = size;
      }

      else
      {
        v107 = size;
        if (size - v105 >= 0x20)
        {
          v108 = v106 + 1;
          v109 = (v106 + 1) & 0x7FFFFFFFFFFFFFF8;
          v110 = &v105[v109];
          v111 = (size + 16);
          v112 = (v105 + 4);
          v113 = v109;
          do
          {
            v114 = *v112;
            *(v111 - 1) = *(v112 - 1);
            *v111 = v114;
            v111 += 2;
            v112 += 2;
            v113 -= 8;
          }

          while (v113);
          if (v108 == v109)
          {
            goto LABEL_131;
          }

          v107 = (v104 + 4 * v109);
          v105 = v110;
        }
      }

      do
      {
        v138 = *v105++;
        *v107++ = v138;
      }

      while (v107 != (v104 + 4 * v92));
    }

LABEL_131:
    v141 = *(a1 + 136);
    *(a1 + 136) = v104;
    *(a1 + 144) = v103 >> 2;
    *(a1 + 152) = v92;
    free(v141);
    goto LABEL_132;
  }

  if (!v92)
  {
    goto LABEL_132;
  }

  v93 = (v92 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  if (v93 < 7)
  {
    v94 = v89;
    do
    {
LABEL_113:
      v127 = *v91++;
      *v94++ = v127;
    }

    while (v94 != &v89[v92]);
    goto LABEL_132;
  }

  v94 = v89;
  if ((v89 - v91) < 0x20)
  {
    goto LABEL_113;
  }

  v95 = v93 + 1;
  v96 = (v93 + 1) & 0x7FFFFFFFFFFFFFF8;
  v97 = &v91[v96];
  v98 = v89 + 4;
  v99 = (v91 + 4);
  v100 = v96;
  do
  {
    v101 = *v99;
    *(v98 - 1) = *(v99 - 1);
    *v98 = v101;
    v98 += 2;
    v99 += 2;
    v100 -= 8;
  }

  while (v100);
  if (v95 != v96)
  {
    v94 = &v89[v96];
    v91 = v97;
    goto LABEL_113;
  }

LABEL_132:
  std::mutex::unlock((a1 + 160));
  atomic_store(1u, a1);
}

double sub_240249D10(cva::DictionaryHandler *a1, uint64_t a2)
{
  if (cva::DictionaryHandler::hasKey(a1, @"pose"))
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    v12 = 0;
    v11 = 0;
    cva::DictionaryHandler::item(v8, a1, @"pose");
    cva::ItemHandler::getDictionary(&v9, v8);
    v5 = sub_240236798(v9);
    v6 = v10;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    cva::ItemHandler::~ItemHandler(v8);
    if (v5)
    {
      result = *&v13;
      v7 = v14;
      *a2 = v13;
      *(a2 + 16) = v7;
      *(a2 + 32) = v15;
      *(a2 + 36) = v11;
      *(a2 + 44) = v12;
    }
  }

  return result;
}

uint64_t sub_240249E14()
{
  if ((atomic_load_explicit(&qword_280C03A30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C03A30))
  {
    sub_24022E97C();
  }

  v0 = qword_280C03A20;
  v1 = qword_280C03A18;
  if (qword_280C03A18)
  {
    atomic_fetch_add_explicit((qword_280C03A18 + 8), 1uLL, memory_order_relaxed);
  }

  if (cva::ArrayHandler::size(v0) >= 1)
  {
    cva::ArrayHandler::item(v0);
    cva::ItemHandler::getValue<std::string>();
  }

  sub_2402546E0(&v5);
  sub_2402552EC(v4, &v5, 0, 0, "[RELEASE ERROR  ]", "/Library/Caches/com.apple.xbs/Sources/AppleCVA/shared/src/modules/avatar/facekit/facekitlitefilter.cpp", 0xADu, "assert %s failed. missing landmark%s", "false");
  sub_240256698(v4);
  v2 = v6;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  return 0x80000000;
}

uint64_t sub_24024A078(uint64_t *a1, cva::DictionaryHandler *this, char a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (this)
  {
    v5 = *a1;
    if ((*(*a1 + 248) & 1) == 0)
    {
      *(v5 + 240) = 0;
      *(v5 + 208) = 0u;
      *(v5 + 224) = 0u;
      *(v5 + 176) = 0u;
      *(v5 + 192) = 0u;
      *(v5 + 144) = 0u;
      *(v5 + 160) = 0u;
      *(v5 + 112) = 0u;
      *(v5 + 128) = 0u;
      *(v5 + 80) = 0u;
      *(v5 + 96) = 0u;
      *(v5 + 48) = 0u;
      *(v5 + 64) = 0u;
      *(v5 + 16) = 0u;
      *(v5 + 32) = 0u;
      *v5 = 0u;
      *(v5 + 248) = 1;
    }

    *(v5 + 240) = a3;
    if (cva::DictionaryHandler::hasKey(this, @"timestamp_seconds"))
    {
      cva::DictionaryHandler::item(buf, this, @"timestamp_seconds");
      cva::ItemHandler::getValue<double>();
    }

    if (cva::DictionaryHandler::hasKey(this, @"rgb_camera"))
    {
      cva::DictionaryHandler::item(buf, this, @"rgb_camera");
      cva::ItemHandler::getDictionary(&v15, buf);
      cva::ItemHandler::~ItemHandler(buf);
      LODWORD(v19) = 0;
      *buf = 0u;
      v18 = 0u;
      v14 = 0;
      *v12 = 0u;
      v13 = 0u;
      if (sub_240236604(v15))
      {
        v6 = v18;
        *(v5 + 56) = *buf;
        *(v5 + 72) = v6;
        *(v5 + 88) = v19;
        *(v5 + 8) = *v12;
        *(v5 + 24) = v13;
        *(v5 + 40) = v14;
        *(v5 + 44) = 0;
        *(v5 + 52) = 0;
      }

      v7 = v16;
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }

    if (cva::DictionaryHandler::hasKey(this, @"data_failure"))
    {
      cva::DictionaryHandler::item(buf, this, @"data_failure");
      cva::ItemHandler::getDictionary(v12, buf);
      cva::ItemHandler::~ItemHandler(buf);
      hasKey = cva::DictionaryHandler::hasKey(*v12, @"image_too_dark");
      *(v5 + 92) = hasKey;
      if (hasKey)
      {
        cva::DictionaryHandler::item(buf, *v12, @"image_too_dark");
        cva::ItemHandler::getValue<BOOL>();
      }

      *(v5 + 93) = 0;
      v9 = cva::DictionaryHandler::hasKey(*v12, @"sensor_covered");
      *(v5 + 94) = v9;
      if (v9)
      {
        cva::DictionaryHandler::item(buf, *v12, @"sensor_covered");
        cva::ItemHandler::getValue<BOOL>();
      }

      *(v5 + 95) = 0;
      if (cva::DictionaryHandler::hasKey(*v12, @"timestamp_gap"))
      {
        cva::DictionaryHandler::item(buf, *v12, @"timestamp_gap");
        cva::ItemHandler::getValue<BOOL>();
      }

      *(v5 + 96) = 0;
      v10 = *&v12[8];
      if (*&v12[8] && !atomic_fetch_add((*&v12[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
      }
    }

    else
    {
      *(v5 + 96) = 0;
      *(v5 + 92) = 0;
    }
  }

  result = 0;
  if (*(*a1 + 248) == 1)
  {
    *(*a1 + 248) = 0;
  }

  return result;
}

void sub_24024AD34(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v1)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v1);
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v1;

    operator delete(v4);
  }
}

void sub_24024ADC0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852266D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_24024AE34(char **a1, unint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (0x7E3F1F8FC7E3F1F9 * ((v3 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v11 = 1168 * ((1168 * a2 - 1168) / 0x490) + 1168;
      bzero(a1[1], v11);
      v4 += v11;
    }

    a1[1] = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = 0x7E3F1F8FC7E3F1F9 * (v6 >> 4);
    if (v7 + a2 > 0x381C0E070381C0)
    {
      sub_2401BDE28();
    }

    v8 = 0x7E3F1F8FC7E3F1F9 * ((v3 - v5) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + a2)
    {
      v9 = v7 + a2;
    }

    if (v8 >= 0x1C0E070381C0E0)
    {
      v10 = 0x381C0E070381C0;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      if (v10 <= 0x381C0E070381C0)
      {
        operator new();
      }

      sub_2401BDE28();
    }

    v12 = (16 * (v6 >> 4));
    v13 = 1168 * ((1168 * a2 - 1168) / 0x490) + 1168;
    bzero(v12, v13);
    v14 = &v12[v13];
    v15 = &v12[-v6];
    if (v5 != v4)
    {
      v16 = v5;
      v17 = v15;
      do
      {
        *v17 = 0;
        v17[24] = 0;
        if (v16[24] == 1)
        {
          *v17 = 0;
          *(v17 + 1) = 0;
          v18 = *(v16 + 1);
          *v17 = *v16;
          *(v17 + 1) = v18;
          *v16 = 0;
          *(v16 + 1) = 0;
          *(v17 + 4) = *(v16 + 4);
          *(v16 + 4) = 0;
          v17[24] = 1;
        }

        v17[32] = 0;
        v17[56] = 0;
        if (v16[56] == 1)
        {
          *(v17 + 4) = 0;
          *(v17 + 5) = 0;
          v19 = *(v16 + 5);
          *(v17 + 4) = *(v16 + 4);
          *(v17 + 5) = v19;
          *(v16 + 4) = 0;
          *(v16 + 5) = 0;
          *(v17 + 12) = *(v16 + 12);
          *(v16 + 12) = 0;
          v17[56] = 1;
        }

        v17[64] = 0;
        v17[88] = 0;
        if (v16[88] == 1)
        {
          *(v17 + 8) = 0;
          *(v17 + 9) = 0;
          v20 = *(v16 + 9);
          *(v17 + 8) = *(v16 + 8);
          *(v17 + 9) = v20;
          *(v16 + 8) = 0;
          *(v16 + 9) = 0;
          *(v17 + 20) = *(v16 + 20);
          *(v16 + 20) = 0;
          v17[88] = 1;
        }

        v17[96] = 0;
        v17[120] = 0;
        if (v16[120] == 1)
        {
          v21 = *(v16 + 6);
          *(v17 + 14) = *(v16 + 14);
          *(v17 + 6) = v21;
          *(v16 + 13) = 0;
          *(v16 + 14) = 0;
          *(v16 + 12) = 0;
          v17[120] = 1;
        }

        v22 = *(v16 + 8);
        v23 = *(v16 + 9);
        v24 = *(v16 + 153);
        v17[176] = 0;
        *(v17 + 153) = v24;
        *(v17 + 8) = v22;
        *(v17 + 9) = v23;
        v17[200] = 0;
        if (v16[200] == 1)
        {
          v25 = *(v16 + 11);
          *(v17 + 24) = *(v16 + 24);
          *(v17 + 11) = v25;
          *(v16 + 23) = 0;
          *(v16 + 24) = 0;
          *(v16 + 22) = 0;
          v17[200] = 1;
        }

        v17[208] = 0;
        v17[256] = 0;
        if (v16[256] == 1)
        {
          v26 = *(v16 + 13);
          v27 = *(v16 + 14);
          *(v17 + 60) = *(v16 + 60);
          *(v17 + 13) = v26;
          *(v17 + 14) = v27;
          v28 = *(v16 + 244);
          *(v17 + 63) = *(v16 + 63);
          *(v17 + 244) = v28;
          v17[256] = 1;
        }

        v17[264] = 0;
        v17[288] = 0;
        if (v16[288] == 1)
        {
          *(v17 + 33) = 0;
          *(v17 + 34) = 0;
          v29 = *(v16 + 34);
          *(v17 + 33) = *(v16 + 33);
          *(v17 + 34) = v29;
          *(v16 + 33) = 0;
          *(v16 + 34) = 0;
          *(v17 + 70) = *(v16 + 70);
          *(v16 + 70) = 0;
          v17[288] = 1;
        }

        v17[296] = 0;
        v17[308] = 0;
        if (v16[308] == 1)
        {
          v30 = *(v16 + 37);
          *(v17 + 76) = *(v16 + 76);
          *(v17 + 37) = v30;
          v17[308] = 1;
        }

        v31 = *(v16 + 328);
        *(v17 + 312) = *(v16 + 312);
        *(v17 + 328) = v31;
        v32 = *(v16 + 344);
        v33 = *(v16 + 360);
        v34 = *(v16 + 376);
        *(v17 + 389) = *(v16 + 389);
        *(v17 + 360) = v33;
        *(v17 + 376) = v34;
        *(v17 + 344) = v32;
        v17[400] = 0;
        v17[412] = 0;
        if (v16[412] == 1)
        {
          v35 = *(v16 + 50);
          *(v17 + 102) = *(v16 + 102);
          *(v17 + 50) = v35;
          v17[412] = 1;
        }

        v17[416] = 0;
        v17[428] = 0;
        if (v16[428] == 1)
        {
          v36 = *(v16 + 52);
          *(v17 + 106) = *(v16 + 106);
          *(v17 + 52) = v36;
          v17[428] = 1;
        }

        v17[432] = 0;
        v17[480] = 0;
        if (v16[480] == 1)
        {
          v37 = *(v16 + 27);
          v38 = *(v16 + 29);
          *(v17 + 28) = *(v16 + 28);
          *(v17 + 29) = v38;
          *(v17 + 27) = v37;
          v17[480] = 1;
        }

        v17[488] = 0;
        v17[512] = 0;
        if (v16[512] == 1)
        {
          *(v17 + 61) = 0;
          *(v17 + 62) = 0;
          v39 = *(v16 + 62);
          *(v17 + 61) = *(v16 + 61);
          *(v17 + 62) = v39;
          *(v16 + 61) = 0;
          *(v16 + 62) = 0;
          *(v17 + 126) = *(v16 + 126);
          *(v16 + 126) = 0;
          v17[512] = 1;
        }

        *(v17 + 65) = *(v16 + 65);
        v17[528] = 0;
        v17[552] = 0;
        if (v16[552] == 1)
        {
          v40 = *(v16 + 33);
          *(v17 + 68) = *(v16 + 68);
          *(v17 + 33) = v40;
          *(v16 + 68) = 0;
          *(v16 + 67) = 0;
          *(v16 + 66) = 0;
          v17[552] = 1;
        }

        *(v17 + 35) = *(v16 + 35);
        *(v16 + 35) = 0uLL;
        v17[576] = 0;
        v17[600] = 0;
        if (v16[600] == 1)
        {
          v41 = *(v16 + 36);
          *(v17 + 74) = *(v16 + 74);
          *(v17 + 36) = v41;
          *(v16 + 74) = 0;
          *(v16 + 73) = 0;
          *(v16 + 72) = 0;
          v17[600] = 1;
        }

        *(v17 + 38) = *(v16 + 38);
        *(v16 + 38) = 0uLL;
        *(v17 + 39) = *(v16 + 39);
        *(v16 + 39) = 0uLL;
        v17[640] = 0;
        v17[688] = 0;
        if (v16[688] == 1)
        {
          *(v17 + 160) = *(v16 + 160);
          *(v17 + 644) = *(v16 + 644);
          *(v17 + 652) = *(v16 + 652);
          v42 = *(v16 + 660);
          *(v17 + 42) = *(v16 + 42);
          *(v17 + 660) = v42;
          v17[688] = 1;
        }

        v17[696] = 0;
        v17[744] = 0;
        if (v16[744] == 1)
        {
          *(v17 + 174) = *(v16 + 174);
          *(v17 + 700) = *(v16 + 700);
          *(v17 + 708) = *(v16 + 708);
          v43 = *(v16 + 716);
          *(v17 + 728) = *(v16 + 728);
          *(v17 + 716) = v43;
          v17[744] = 1;
        }

        v17[752] = 0;
        v17[760] = 0;
        if (v16[760] == 1)
        {
          sub_240257808();
        }

        v17[768] = 0;
        v17[792] = 0;
        if (v16[792] == 1)
        {
          *(v17 + 96) = 0;
          *(v17 + 97) = 0;
          *(v17 + 96) = *(v16 + 96);
          *(v16 + 96) = 0;
          *(v17 + 97) = *(v16 + 97);
          *(v16 + 97) = 0;
          *(v17 + 196) = *(v16 + 196);
          *(v16 + 196) = 0;
          v17[792] = 1;
        }

        *(v17 + 50) = *(v16 + 50);
        *(v16 + 50) = 0uLL;
        v17[816] = 0;
        v17[864] = 0;
        if (v16[864] == 1)
        {
          *(v17 + 204) = *(v16 + 204);
          *(v17 + 820) = *(v16 + 820);
          *(v17 + 828) = *(v16 + 828);
          v44 = *(v16 + 836);
          *(v17 + 53) = *(v16 + 53);
          *(v17 + 836) = v44;
          v17[864] = 1;
        }

        v17[872] = 0;
        v17[920] = 0;
        if (v16[920] == 1)
        {
          *(v17 + 218) = *(v16 + 218);
          *(v17 + 876) = *(v16 + 876);
          *(v17 + 884) = *(v16 + 884);
          v45 = *(v16 + 892);
          *(v17 + 904) = *(v16 + 904);
          *(v17 + 892) = v45;
          v17[920] = 1;
        }

        v17[928] = 0;
        v17[936] = 0;
        if (v16[936] == 1)
        {
          sub_240257808();
        }

        v17[944] = 0;
        v17[968] = 0;
        if (v16[968] == 1)
        {
          *(v17 + 118) = 0;
          *(v17 + 119) = 0;
          *(v17 + 118) = *(v16 + 118);
          *(v16 + 118) = 0;
          *(v17 + 119) = *(v16 + 119);
          *(v16 + 119) = 0;
          *(v17 + 240) = *(v16 + 240);
          *(v16 + 240) = 0;
          v17[968] = 1;
        }

        *(v17 + 61) = *(v16 + 61);
        *(v16 + 61) = 0uLL;
        v17[992] = 0;
        v17[1040] = 0;
        if (v16[1040] == 1)
        {
          *(v17 + 248) = *(v16 + 248);
          *(v17 + 996) = *(v16 + 996);
          *(v17 + 1004) = *(v16 + 1004);
          v46 = *(v16 + 1012);
          *(v17 + 64) = *(v16 + 64);
          *(v17 + 1012) = v46;
          v17[1040] = 1;
        }

        v17[1048] = 0;
        v17[1096] = 0;
        if (v16[1096] == 1)
        {
          *(v17 + 262) = *(v16 + 262);
          *(v17 + 1052) = *(v16 + 1052);
          *(v17 + 1060) = *(v16 + 1060);
          v47 = *(v16 + 1068);
          *(v17 + 1080) = *(v16 + 1080);
          *(v17 + 1068) = v47;
          v17[1096] = 1;
        }

        v17[1104] = 0;
        v17[1112] = 0;
        if (v16[1112] == 1)
        {
          sub_240257808();
        }

        v17[1120] = 0;
        v17[1144] = 0;
        if (v16[1144] == 1)
        {
          *(v17 + 140) = 0;
          *(v17 + 141) = 0;
          *(v17 + 140) = *(v16 + 140);
          *(v16 + 140) = 0;
          *(v17 + 141) = *(v16 + 141);
          *(v16 + 141) = 0;
          *(v17 + 284) = *(v16 + 284);
          *(v16 + 284) = 0;
          v17[1144] = 1;
        }

        *(v17 + 72) = *(v16 + 72);
        *(v16 + 72) = 0uLL;
        v16 += 1168;
        v17 += 1168;
      }

      while (v16 != v4);
      do
      {
        sub_24020B670(v5);
        v5 += 1168;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = v15;
    a1[1] = v14;
    a1[2] = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

__n128 sub_24024B6B8(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 24) == 1)
  {
    if (*(a1 + 23) < 0)
    {
      v2 = a1;
      v3 = a2;
      operator delete(*a1);
      a2 = v3;
      a1 = v2;
    }

    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2[1].n128_u8[7] = 0;
    a2->n128_u8[0] = 0;
  }

  else
  {
    result = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    *a1 = result;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    a2->n128_u64[0] = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

void sub_24024B744(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v10 = 12 * ((12 * a2 - 12) / 0xC) + 12;
      bzero(*(a1 + 8), v10);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = &v4[-*a1];
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 2) + a2;
    if (v7 > 0x1555555555555555)
    {
      sub_2401BDE28();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 2);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x1555555555555555;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (v9 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_2401BDE28();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 12 * ((12 * a2 - 12) / 0xC) + 12;
    bzero(v11, v12);
    if (v5 != v4)
    {
      v13 = &v11[-v6];
      do
      {
        v14 = *v5;
        *(v13 + 2) = *(v5 + 2);
        *v13 = v14;
        v13 += 12;
        v5 += 12;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = &v11[-v6];
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void sub_24024B90C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if (a2)
    {
      v10 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 = (v4 + v10);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = (v4 - *a1) >> 4;
    v7 = v6 + a2;
    if ((v6 + a2) >> 60)
    {
      sub_2401BDE28();
    }

    v8 = v3 - v5;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 60))
      {
        operator new();
      }

      sub_2401BDE28();
    }

    v11 = (v4 - *a1) >> 4;
    v12 = (16 * v6);
    v13 = 16 * a2;
    bzero(v12, 16 * a2);
    if (v5 != v4)
    {
      v14 = &v12[-16 * v11];
      do
      {
        v15 = *v5++;
        *v14 = v15;
        v14 += 16;
      }

      while (v5 != v4);
      v5 = *a1;
    }

    *a1 = &v12[-16 * v11];
    *(a1 + 8) = &v12[v13];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void ***sub_24024BCC4(void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    free(v1[3]);
    free(*v1);
    MEMORY[0x245CBCA30](v1, 0x1080C407C7A2332);
    return v2;
  }

  return result;
}

uint64_t sub_24024BD20()
{
  if (atomic_load_explicit(&qword_280C03A00, memory_order_acquire))
  {
    return qword_280C03978;
  }

  v1 = __cxa_guard_acquire(&qword_280C03A00);
  v2 = 0x280C03000;
  if (v1)
  {
    qword_280C03978 = os_log_create("com.apple.AppleCVA", "FaceKit");
    __cxa_guard_release(&qword_280C03A00);
    v2 = 0x280C03000uLL;
  }

  return *(v2 + 2424);
}

void sub_24024BD98(std::string *a1, const char *a2)
{
  v4 = MEMORY[0x277CCA8D8];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.AppleCVA"];
  v6 = [v4 bundleWithIdentifier:v5];

  if (v6)
  {
    v7 = [v6 resourcePath];
    v8 = v7;
    if (!v7)
    {
      *(&a1->__r_.__value_.__s + 23) = 0;
      a1->__r_.__value_.__s.__data_[0] = 0;
      goto LABEL_45;
    }

    v9 = [v7 cStringUsingEncoding:4];
    v10 = strlen(v9);
    if (v10 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_47;
    }

    v11 = v10;
    if (v10 >= 0x17)
    {
      operator new();
    }

    *(&a1->__r_.__value_.__s + 23) = v10;
    if (v10)
    {
      memmove(a1, v9, v10);
    }

    a1->__r_.__value_.__s.__data_[v11] = 0;
    v12 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    if ((v12 & 0x8000000000000000) != 0)
    {
      size = a1->__r_.__value_.__l.__size_;
      if (!size)
      {
        goto LABEL_45;
      }

      v13 = a1->__r_.__value_.__r.__words[0];
    }

    else
    {
      if (!*(&a1->__r_.__value_.__s + 23))
      {
        goto LABEL_19;
      }

      v13 = a1;
      size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
    }

    if (v13->__r_.__value_.__s.__data_[size - 1] != 47)
    {
      std::string::append(a1, "/", 1uLL);
      LOBYTE(v12) = *(&a1->__r_.__value_.__s + 23);
    }

    if ((v12 & 0x80) != 0)
    {
      v12 = a1->__r_.__value_.__l.__size_;
      if (!a2)
      {
        goto LABEL_45;
      }

      goto LABEL_22;
    }

LABEL_19:
    v12 = v12;
    if (!a2)
    {
      goto LABEL_45;
    }

LABEL_22:
    if (v12)
    {
      v15 = strlen(a2);
      if (v15 <= 0x7FFFFFFFFFFFFFF7)
      {
        v16 = v15;
        if (v15 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v15;
        if (v15)
        {
          memcpy(&__dst, a2, v15);
        }

        __dst.__r_.__value_.__s.__data_[v16] = 0;
        v17 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        v18 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        v20 = __dst.__r_.__value_.__l.__size_;
        v19 = __dst.__r_.__value_.__r.__words[0];
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_dst = &__dst;
        }

        else
        {
          p_dst = __dst.__r_.__value_.__r.__words[0];
        }

        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = __dst.__r_.__value_.__l.__size_;
        }

        if (p_dst->__r_.__value_.__s.__data_[v22 - 1] != 47)
        {
          std::string::append(&__dst, "/", 1uLL);
          v17 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
          v20 = __dst.__r_.__value_.__l.__size_;
          v19 = __dst.__r_.__value_.__r.__words[0];
          v18 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        if (v18 >= 0)
        {
          v23 = &__dst;
        }

        else
        {
          v23 = v19;
        }

        if (v18 >= 0)
        {
          v24 = v17;
        }

        else
        {
          v24 = v20;
        }

        std::string::append(a1, v23, v24);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        goto LABEL_45;
      }

LABEL_47:
      sub_2401BDE28();
    }

LABEL_45:

    goto LABEL_46;
  }

  *(&a1->__r_.__value_.__s + 23) = 0;
  a1->__r_.__value_.__s.__data_[0] = 0;
LABEL_46:
}

void sub_24024C040(_Unwind_Exception *a1)
{
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

BOOL sub_24024C080(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v105 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v7 = a2[1];
  if (((v7 - *a2) >> 3) >= 1)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v10 = 0;
        do
        {
          v11 = *(*(a1 + 56) + 48);
          v12 = (*(v11 + 24) + 40 * v10);
          v13 = v12[9];
          if (v13 >= 1)
          {
            v14 = v12[8];
            if (v14 >= 1)
            {
              v15 = v12[6];
              v16 = v12[7];
              if (v16 >= 1 && v15 >= 1)
              {
                v18 = *(v8 + 8 * v10);
                v19 = *(*(v11 + 72) + 168 * v10);
                if (v16 == 1)
                {
                  memcpy(v19, v18, 4 * v13 * v14 * v15);
                  v8 = *a2;
                  v7 = a2[1];
                }

                else
                {
                  v20 = v14 * v13;
                  v21 = 4 * v13;
                  if (v13 >= 0xC)
                  {
                    v32 = 0;
                    v33 = 0;
                    do
                    {
                      v34 = 0;
                      v35 = v32;
                      do
                      {
                        v36 = 0;
                        v37 = &v19[4 * v35];
                        v38 = v32;
                        do
                        {
                          v39 = v38;
                          v40 = v37;
                          v41 = v13;
                          do
                          {
                            *v40 = *(v18 + v34 + v39);
                            v40 += 4;
                            v39 += v16;
                            --v41;
                          }

                          while (v41);
                          ++v36;
                          v37 += v21;
                          v38 += v13 * v16;
                        }

                        while (v36 != v14);
                        ++v34;
                        v35 += v20;
                      }

                      while (v34 != v16);
                      ++v33;
                      v32 += v13 * v16 * v14;
                    }

                    while (v33 != v15);
                  }

                  else
                  {
                    v22 = 0;
                    v23 = 0;
                    do
                    {
                      v24 = 0;
                      v25 = v22;
                      do
                      {
                        v26 = 0;
                        v27 = &v19[4 * v25];
                        v28 = v22;
                        do
                        {
                          v29 = v28;
                          v30 = v27;
                          v31 = v13;
                          do
                          {
                            *v30 = *(v18 + v24 + v29);
                            v30 += 4;
                            v29 += v16;
                            --v31;
                          }

                          while (v31);
                          ++v26;
                          v27 += v21;
                          v28 += v13 * v16;
                        }

                        while (v26 != v14);
                        ++v24;
                        v25 += v20;
                      }

                      while (v24 != v16);
                      ++v23;
                      v22 += v13 * v16 * v14;
                    }

                    while (v23 != v15);
                  }
                }
              }
            }
          }

          ++v10;
        }

        while (v10 < ((v7 - v8) >> 3));
      }

      else
      {
        v53 = 0;
        v54 = 0;
        v55 = 0;
        do
        {
          v56 = *(*(a1 + 56) + 48);
          v57 = *(v56 + 24);
          v58 = v57 + v54;
          v59 = *(v57 + v54 + 36);
          if (v59 >= 1)
          {
            v60 = *(v58 + 32);
            if (v60 >= 1)
            {
              v61 = *(v58 + 24);
              if (*(v57 + v54 + 28) == 1 && v61 >= 1)
              {
                memcpy(*(*(v56 + 72) + v53), *(v8 + 8 * v55), 4 * v59 * v60 * v61);
                v8 = *a2;
                v7 = a2[1];
              }
            }
          }

          ++v55;
          v54 += 40;
          v53 += 168;
        }

        while (v55 < ((v7 - v8) >> 3));
      }
    }

    else
    {
      v42 = 0;
      v43 = 0;
      v44 = 0;
      do
      {
        v45 = *(*(a1 + 56) + 48);
        v46 = *(v45 + 24);
        v47 = v46 + v43;
        v48 = *(v46 + v43 + 36);
        if (v48 >= 1)
        {
          v49 = *(v47 + 32);
          if (v49 >= 1)
          {
            v50 = *(v46 + v43 + 28);
            v51 = *(v47 + 24);
            if (v50 >= 1 && v51 >= 1)
            {
              memcpy(*(*(v45 + 72) + v42), *(v8 + 8 * v44), 4 * v48 * v49 * v50 * v51);
              v8 = *a2;
              v7 = a2[1];
            }
          }
        }

        ++v44;
        v43 += 40;
        v42 += 168;
      }

      while (v44 < ((v7 - v8) >> 3));
    }
  }

  kdebug_trace();
  v63 = espresso_plan_execute_sync();
  if (v63)
  {
    if ((atomic_load_explicit(&qword_280C039F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F8))
    {
      qword_280C03970 = os_log_create("com.apple.AppleCVA", "CVAEspressoRegressor");
      __cxa_guard_release(&qword_280C039F8);
    }

    v64 = qword_280C03970;
    if (os_log_type_enabled(qword_280C03970, OS_LOG_TYPE_ERROR))
    {
      v102[0] = 67109378;
      v102[1] = v63;
      v103 = 2080;
      status_string = espresso_get_status_string();
      _os_log_error_impl(&dword_2401B8000, v64, OS_LOG_TYPE_ERROR, "could not execute espresso network [%d, %s]", v102, 0x12u);
    }

    kdebug_trace();
  }

  else
  {
    kdebug_trace();
    v67 = *a3;
    v66 = a3[1];
    if (((v66 - *a3) >> 3) >= 1)
    {
      v68 = 0;
      do
      {
        v69 = *(*(a1 + 56) + 48);
        v70 = (*(v69 + 48) + 40 * v68);
        v71 = v70[9];
        if (v71 >= 1)
        {
          v72 = v70[8];
          if (v72 >= 1)
          {
            v74 = v70[6];
            v73 = v70[7];
            if (v73 >= 1 && v74 >= 1)
            {
              v76 = *(*(v69 + 96) + 168 * v68);
              v77 = *(v67 + 8 * v68);
              if (!a4 || v73 == 1)
              {
                memcpy(v77, v76, 4 * v71 * v72 * v73 * v74);
                v67 = *a3;
                v66 = a3[1];
              }

              else if (a4 == 1)
              {
                v78 = v72 * v71;
                v79 = 4 * v71;
                if (v71 >= 0xC)
                {
                  v91 = 0;
                  v92 = 0;
                  do
                  {
                    v93 = 0;
                    v94 = v91;
                    do
                    {
                      v95 = 0;
                      v96 = &v76[4 * v94];
                      v97 = v91;
                      do
                      {
                        v98 = v96;
                        v99 = v97;
                        v100 = v71;
                        do
                        {
                          v101 = *v98;
                          v98 += 4;
                          *(v77 + v93 + v99) = v101;
                          v99 += v73;
                          --v100;
                        }

                        while (v100);
                        ++v95;
                        v97 += v71 * v73;
                        v96 += v79;
                      }

                      while (v95 != v72);
                      ++v93;
                      v94 += v78;
                    }

                    while (v93 != v73);
                    ++v92;
                    v91 += v72 * v71 * v73;
                  }

                  while (v92 != v74);
                }

                else
                {
                  v80 = 0;
                  v81 = 0;
                  do
                  {
                    v82 = 0;
                    v83 = v80;
                    do
                    {
                      v84 = 0;
                      v85 = &v76[4 * v83];
                      v86 = v80;
                      do
                      {
                        v87 = v85;
                        v88 = v86;
                        v89 = v71;
                        do
                        {
                          v90 = *v87;
                          v87 += 4;
                          *(v77 + v82 + v88) = v90;
                          v88 += v73;
                          --v89;
                        }

                        while (v89);
                        ++v84;
                        v86 += v71 * v73;
                        v85 += v79;
                      }

                      while (v84 != v72);
                      ++v82;
                      v83 += v78;
                    }

                    while (v82 != v73);
                    ++v81;
                    v80 += v72 * v71 * v73;
                  }

                  while (v81 != v74);
                }
              }
            }
          }
        }

        ++v68;
      }

      while (v68 < ((v66 - v67) >> 3));
    }
  }

  return v63 == 0;
}

void sub_24024C6CC(void *a1)
{
  *a1 = &unk_2852275E8;
  sub_24024C75C(a1[7]);
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    v3 = sub_24024C974(v2);
    MEMORY[0x245CBCA30](v3, 0x10B2C4010D42EDDLL);
  }

  sub_24024F968(a1);

  JUMPOUT(0x245CBCA30);
}

void sub_24024C75C(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  if (*(a1 + 88))
  {
    v3 = *(a1 + 80);
    if (v3)
    {
      do
      {
        v4 = *v3;
        v5 = *(v3 + 6);
        if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        if (v3[39] < 0)
        {
          operator delete(*(v3 + 2));
        }

        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    *(a1 + 80) = 0;
    v6 = *(a1 + 72);
    if (v6)
    {
      bzero(*(a1 + 64), 8 * v6);
    }

    *(a1 + 88) = 0;
  }

  if (*a1)
  {
    v7 = espresso_context_destroy();
    if (v7)
    {
      v8 = v7;
      if ((atomic_load_explicit(&qword_280C039F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F8))
      {
        qword_280C03970 = os_log_create("com.apple.AppleCVA", "CVAEspressoRegressor");
        __cxa_guard_release(&qword_280C039F8);
      }

      v9 = qword_280C03970;
      if (os_log_type_enabled(qword_280C03970, OS_LOG_TYPE_ERROR))
      {
        v10[0] = 67109378;
        v10[1] = v8;
        v11 = 2080;
        status_string = espresso_get_status_string();
        _os_log_error_impl(&dword_2401B8000, v9, OS_LOG_TYPE_ERROR, "could not delete espresso context [%d, %s]", v10, 0x12u);
      }
    }

    *a1 = 0;
  }
}

uint64_t sub_24024C974(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 6);
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 56);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_14;
  }

  if (*(a1 + 47) < 0)
  {
LABEL_14:
    operator delete(*(a1 + 24));
  }

  return a1;
}

void *sub_24024CA9C(void *a1)
{
  *a1 = &unk_2852275E8;
  sub_24024C75C(a1[7]);
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    v3 = sub_24024C974(v2);
    MEMORY[0x245CBCA30](v3, 0x10B2C4010D42EDDLL);
  }

  return sub_24024F968(a1);
}

uint64_t sub_24024CB18()
{
  if (atomic_load_explicit(&qword_280C039F8, memory_order_acquire))
  {
    return qword_280C03970;
  }

  v1 = __cxa_guard_acquire(&qword_280C039F8);
  v2 = 0x280C03000;
  if (v1)
  {
    qword_280C03970 = os_log_create("com.apple.AppleCVA", "CVAEspressoRegressor");
    __cxa_guard_release(&qword_280C039F8);
    v2 = 0x280C03000uLL;
  }

  return *(v2 + 2416);
}

void sub_24024E110(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v2 = espresso_plan_destroy();
    if (v2)
    {
      v3 = v2;
      if ((atomic_load_explicit(&qword_280C039F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F8))
      {
        qword_280C03970 = os_log_create("com.apple.AppleCVA", "CVAEspressoRegressor");
        __cxa_guard_release(&qword_280C039F8);
      }

      v4 = qword_280C03970;
      if (os_log_type_enabled(qword_280C03970, OS_LOG_TYPE_ERROR))
      {
        v5[0] = 67109378;
        v5[1] = v3;
        v6 = 2080;
        status_string = espresso_get_status_string();
        _os_log_error_impl(&dword_2401B8000, v4, OS_LOG_TYPE_ERROR, "could not delete espresso plan [%d, %s]", v5, 0x12u);
      }
    }

    *a1 = 0;
  }
}

void sub_24024E230(uint64_t *a1, const void **a2, const void **a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = a1[1];
      v11 = *a1;
      if (v10 != v8)
      {
        do
        {
          v12 = *(v10 - 17);
          v10 -= 5;
          if (v12 < 0)
          {
            operator delete(*v10);
          }
        }

        while (v10 != v8);
        v11 = *a1;
      }

      a1[1] = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x666666666666666)
    {
      v27 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v28 = 2 * v27;
      if (2 * v27 <= a4)
      {
        v28 = a4;
      }

      if (v27 >= 0x333333333333333)
      {
        v29 = 0x666666666666666;
      }

      else
      {
        v29 = v28;
      }

      if (v29 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_2401BDE28();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v13 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        if (v5 != v8)
        {
          v25 = *(v5 + 23);
          if (*(v8 + 23) < 0)
          {
            if (v25 >= 0)
            {
              v23 = v5;
            }

            else
            {
              v23 = *v5;
            }

            if (v25 >= 0)
            {
              v24 = *(v5 + 23);
            }

            else
            {
              v24 = v5[1];
            }

            sub_2401F8070(v8, v23, v24);
          }

          else if ((*(v5 + 23) & 0x80) != 0)
          {
            sub_2401F7FA0(v8, *v5, v5[1]);
          }

          else
          {
            v26 = *v5;
            *(v8 + 16) = v5[2];
            *v8 = v26;
          }
        }

        *(v8 + 24) = *(v5 + 3);
        v5 += 5;
        v8 += 40;
      }

      while (v5 != a3);
      v13 = a1[1];
    }

    while (v13 != v8)
    {
      v35 = *(v13 - 17);
      v13 -= 5;
      if (v35 < 0)
      {
        operator delete(*v13);
      }
    }

    a1[1] = v8;
  }

  else
  {
    v15 = &v14[a2];
    if (v13 != v8)
    {
      v16 = 0;
      do
      {
        v19 = &v16[v8];
        v20 = &v16[v5];
        if (v5 != v8)
        {
          v21 = *(v20 + 23);
          if (*(v19 + 23) < 0)
          {
            if (v21 >= 0)
            {
              v17 = &v16[v5];
            }

            else
            {
              v17 = *&v16[v5];
            }

            if (v21 >= 0)
            {
              v18 = *(v20 + 23);
            }

            else
            {
              v18 = *&v16[v5 + 8];
            }

            v19 = sub_2401F8070(v19, v17, v18);
          }

          else if ((*(v20 + 23) & 0x80) != 0)
          {
            v19 = sub_2401F7FA0(v19, *&v16[v5], *&v16[v5 + 8]);
          }

          else
          {
            v22 = *v20;
            *(v19 + 16) = v20[2];
            *v19 = v22;
          }
        }

        *(v19 + 24) = *(v20 + 3);
        v16 += 40;
      }

      while (v14 != v16);
      v13 = a1[1];
    }

    v30 = v13;
    if (v15 != a3)
    {
      v31 = 0;
      do
      {
        v32 = &v13[v31];
        v33 = &v15[v31 * 8];
        if (v15[v31 * 8 + 23] < 0)
        {
          sub_2401C2FCC(v32, *v33, *(v33 + 1));
        }

        else
        {
          v34 = *v33;
          v32[2] = *(v33 + 2);
          *v32 = v34;
        }

        *&v13[v31 + 3] = *&v15[v31 * 8 + 24];
        v31 += 5;
      }

      while (&v15[v31 * 8] != a3);
      v30 = &v13[v31];
    }

    a1[1] = v30;
  }
}

BOOL sub_24024E564(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, int a5)
{
  v56 = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 1))
    {
      v9 = *a2;
    }

    else
    {
      v9 = 0;
    }
  }

  else if (*(a2 + 23))
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  v10 = espresso_network_bind_buffer();
  if (v10)
  {
    v11 = v10;
    if ((atomic_load_explicit(&qword_280C039F8, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_280C039F8))
      {
        qword_280C03970 = os_log_create("com.apple.AppleCVA", "CVAEspressoRegressor");
        __cxa_guard_release(&qword_280C039F8);
      }
    }

    v12 = qword_280C03970;
    result = os_log_type_enabled(qword_280C03970, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v49 = 136315650;
      *v50 = v9;
      *&v50[8] = 1024;
      *v51 = v11;
      *&v51[4] = 2080;
      *&v51[6] = espresso_get_status_string();
      v14 = "could not create blob for %s [%d, %s]";
LABEL_41:
      v22 = v12;
      v23 = 28;
      goto LABEL_42;
    }

    return result;
  }

  if (a3 != a2)
  {
    v15 = *(a2 + 23);
    if (*(a3 + 23) < 0)
    {
      if (v15 >= 0)
      {
        v17 = a2;
      }

      else
      {
        v17 = *a2;
      }

      if (v15 >= 0)
      {
        v18 = *(a2 + 23);
      }

      else
      {
        v18 = *(a2 + 1);
      }

      sub_2401F8070(a3, v17, v18);
    }

    else if ((*(a2 + 23) & 0x80) != 0)
    {
      sub_2401F7FA0(a3, *a2, *(a2 + 1));
    }

    else
    {
      v16 = *a2;
      *(a3 + 16) = *(a2 + 2);
      *a3 = v16;
    }
  }

  *(a3 + 24) = *(a4 + 104);
  v19 = *(a4 + 88);
  *(a3 + 32) = v19;
  v20 = *(a4 + 80);
  *(a3 + 36) = v20;
  *(a3 + 28) = *(a4 + 96);
  if (*(a4 + 112) >= 2uLL)
  {
    if ((atomic_load_explicit(&qword_280C039F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F8))
    {
      qword_280C03970 = os_log_create("com.apple.AppleCVA", "CVAEspressoRegressor");
      __cxa_guard_release(&qword_280C039F8);
    }

    v21 = qword_280C03970;
    result = os_log_type_enabled(qword_280C03970, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(v49) = 0;
      v14 = "only blob dimensions with sequence length=1 are currently supported";
      v22 = v21;
      v23 = 2;
LABEL_42:
      _os_log_error_impl(&dword_2401B8000, v22, OS_LOG_TYPE_ERROR, v14, &v49, v23);
      return 0;
    }

    return result;
  }

  if (*(a4 + 120) == 1 && *(a4 + 128) == v20 && *(a4 + 136) == v20 * v19)
  {
    if ((atomic_load_explicit(&qword_280C039F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F8))
    {
      qword_280C03970 = os_log_create("com.apple.AppleCVA", "CVAEspressoRegressor");
      __cxa_guard_release(&qword_280C039F8);
    }

    v24 = qword_280C03970;
    v25 = os_log_type_enabled(qword_280C03970, OS_LOG_TYPE_INFO);
    if (a5)
    {
      if (!v25)
      {
        goto LABEL_50;
      }

      if (*(a3 + 23) >= 0)
      {
        v26 = a3;
      }

      else
      {
        v26 = *a3;
      }

      v49 = 136315138;
      *v50 = v26;
      v27 = "Input Layer name: %s";
    }

    else
    {
      if (!v25)
      {
        goto LABEL_50;
      }

      if (*(a3 + 23) >= 0)
      {
        v28 = a3;
      }

      else
      {
        v28 = *a3;
      }

      v49 = 136315138;
      *v50 = v28;
      v27 = "Output Layer name: %s";
    }

    _os_log_impl(&dword_2401B8000, v24, OS_LOG_TYPE_INFO, v27, &v49, 0xCu);
LABEL_50:
    if ((atomic_load_explicit(&qword_280C039F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F8))
    {
      qword_280C03970 = os_log_create("com.apple.AppleCVA", "CVAEspressoRegressor");
      __cxa_guard_release(&qword_280C039F8);
    }

    v29 = qword_280C03970;
    if (os_log_type_enabled(qword_280C03970, OS_LOG_TYPE_INFO))
    {
      v30 = *(a3 + 32);
      v31 = *(a3 + 36);
      v32 = *(a3 + 24);
      v33 = *(a3 + 28);
      v49 = 67109888;
      *v50 = v32;
      *&v50[4] = 1024;
      *&v50[6] = v30;
      *v51 = 1024;
      *&v51[2] = v31;
      *&v51[6] = 1024;
      *&v51[8] = v33;
      _os_log_impl(&dword_2401B8000, v29, OS_LOG_TYPE_INFO, "Size: %d %d %d %d", &v49, 0x1Au);
    }

    if ((atomic_load_explicit(&qword_280C039F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F8))
    {
      qword_280C03970 = os_log_create("com.apple.AppleCVA", "CVAEspressoRegressor");
      __cxa_guard_release(&qword_280C039F8);
    }

    v34 = qword_280C03970;
    if (os_log_type_enabled(qword_280C03970, OS_LOG_TYPE_INFO))
    {
      v36 = *(a4 + 104);
      v35 = *(a4 + 112);
      v38 = *(a4 + 88);
      v37 = *(a4 + 96);
      v39 = *(a4 + 80);
      v49 = 134219008;
      *v50 = v35;
      *&v50[8] = 2048;
      *v51 = v36;
      *&v51[8] = 2048;
      *&v51[10] = v37;
      v52 = 2048;
      v53 = v38;
      v54 = 2048;
      v55 = v39;
      _os_log_impl(&dword_2401B8000, v34, OS_LOG_TYPE_INFO, "Size (%zd, %zd, %zd, %zd, %zd)", &v49, 0x34u);
    }

    if ((atomic_load_explicit(&qword_280C039F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F8))
    {
      qword_280C03970 = os_log_create("com.apple.AppleCVA", "CVAEspressoRegressor");
      __cxa_guard_release(&qword_280C039F8);
    }

    v40 = qword_280C03970;
    if (os_log_type_enabled(qword_280C03970, OS_LOG_TYPE_INFO))
    {
      v42 = *(a4 + 144);
      v41 = *(a4 + 152);
      v44 = *(a4 + 128);
      v43 = *(a4 + 136);
      v45 = *(a4 + 120);
      v49 = 134219008;
      *v50 = v41;
      *&v50[8] = 2048;
      *v51 = v42;
      *&v51[8] = 2048;
      *&v51[10] = v43;
      v52 = 2048;
      v53 = v44;
      v54 = 2048;
      v55 = v45;
      _os_log_impl(&dword_2401B8000, v40, OS_LOG_TYPE_INFO, "Stride (%zd, %zd, %zd, %zd, %zd)", &v49, 0x34u);
    }

    if ((atomic_load_explicit(&qword_280C039F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F8))
    {
      qword_280C03970 = os_log_create("com.apple.AppleCVA", "CVAEspressoRegressor");
      __cxa_guard_release(&qword_280C039F8);
    }

    v46 = qword_280C03970;
    v47 = os_log_type_enabled(qword_280C03970, OS_LOG_TYPE_INFO);
    result = 1;
    if (v47)
    {
      v48 = *(a4 + 160);
      v49 = 67109120;
      *v50 = v48;
      _os_log_impl(&dword_2401B8000, v46, OS_LOG_TYPE_INFO, "Storage: %d", &v49, 8u);
      return 1;
    }

    return result;
  }

  if ((atomic_load_explicit(&qword_280C039F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C039F8))
  {
    qword_280C03970 = os_log_create("com.apple.AppleCVA", "CVAEspressoRegressor");
    __cxa_guard_release(&qword_280C039F8);
  }

  v12 = qword_280C03970;
  result = os_log_type_enabled(qword_280C03970, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v49 = 136315650;
    *v50 = v9;
    *&v50[8] = 1024;
    *v51 = 0;
    *&v51[4] = 2080;
    *&v51[6] = espresso_get_status_string();
    v14 = "unsupported stride sizes for %s [%d, %s]";
    goto LABEL_41;
  }

  return result;
}

uint64_t sub_24024EC54(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x666666666666666)
  {
    sub_2401BDE28();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_2401BDE28();
  }

  v6 = 8 * ((a1[1] - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_2401C2FCC(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    *(v6 + 16) = *(a2 + 16);
  }

  *(v6 + 24) = *(a2 + 24);
  v7 = v6 + 40;
  v8 = *a1;
  v9 = a1[1];
  v10 = v6 + *a1 - v9;
  if (*a1 != v9)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      *(v12 + 24) = *(v11 + 24);
      v11 = (v11 + 40);
      v12 += 40;
    }

    while (v11 != v9);
    do
    {
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      v8 += 40;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_24024EDE4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v14 = *a1;
    v15 = 0xCF3CF3CF3CF3CF3DLL * ((v3 - *a1) >> 3);
    v16 = v15 + 1;
    if (v15 + 1 > 0x186186186186186)
    {
      sub_2401BDE28();
    }

    v17 = 0xCF3CF3CF3CF3CF3DLL * ((v4 - v14) >> 3);
    if (2 * v17 > v16)
    {
      v16 = 2 * v17;
    }

    if (v17 >= 0xC30C30C30C30C3)
    {
      v18 = 0x186186186186186;
    }

    else
    {
      v18 = v16;
    }

    if (v18)
    {
      if (v18 <= 0x186186186186186)
      {
        operator new();
      }

      sub_2401BDE28();
    }

    v19 = a2[9];
    v20 = 8 * ((v3 - *a1) >> 3);
    *(v20 + 128) = a2[8];
    *(v20 + 144) = v19;
    *(v20 + 160) = *(a2 + 20);
    v21 = a2[5];
    *(v20 + 64) = a2[4];
    *(v20 + 80) = v21;
    v22 = a2[7];
    *(v20 + 96) = a2[6];
    *(v20 + 112) = v22;
    v23 = a2[1];
    *v20 = *a2;
    *(v20 + 16) = v23;
    v24 = a2[3];
    v13 = 168 * v15 + 168;
    v25 = 168 * v15 - (v3 - v14);
    *(v20 + 32) = a2[2];
    *(v20 + 48) = v24;
    memcpy((v20 - (v3 - v14)), v14, v3 - v14);
    *a1 = v25;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[2];
    *(v3 + 16) = a2[1];
    *(v3 + 32) = v6;
    *v3 = v5;
    v7 = a2[3];
    v8 = a2[4];
    v9 = a2[6];
    *(v3 + 80) = a2[5];
    *(v3 + 96) = v9;
    *(v3 + 48) = v7;
    *(v3 + 64) = v8;
    v10 = a2[7];
    v11 = a2[8];
    v12 = a2[9];
    *(v3 + 160) = *(a2 + 20);
    *(v3 + 128) = v11;
    *(v3 + 144) = v12;
    *(v3 + 112) = v10;
    v13 = v3 + 168;
  }

  *(a1 + 8) = v13;
}

void sub_24024EF80(void *a1)
{
  sub_24024E110(a1 + 3);
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  v3 = a1[12];
  if (v3)
  {
    a1[13] = v3;
    operator delete(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    v5 = a1[10];
    v6 = a1[9];
    if (v5 != v4)
    {
      do
      {
        v7 = *(v5 - 17);
        v5 -= 5;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = a1[9];
    }

    a1[10] = v4;
    operator delete(v6);
  }

  v8 = a1[6];
  if (v8)
  {
    v9 = a1[7];
    v10 = a1[6];
    if (v9 != v8)
    {
      do
      {
        v11 = *(v9 - 17);
        v9 -= 5;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = a1[6];
    }

    a1[7] = v8;

    operator delete(v10);
  }
}

void sub_24024F07C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852269E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_24024F0F0(uint64_t a1, int a2, char *__s)
{
  *a1 = a2;
  v5 = (a1 + 8);
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2401BDE28();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = v6;
  if (v6)
  {
    memmove(v5, __s, v6);
  }

  *(v5 + v7) = 0;
  return a1;
}

uint64_t sub_24024F1AC(uint64_t result)
{
  if (!*(&xmmword_27E3C8A20 + 1))
  {
    goto LABEL_22;
  }

  v1 = vcnt_s8(*(&xmmword_27E3C8A20 + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = result;
    if (*(&xmmword_27E3C8A20 + 1) <= result)
    {
      v2 = result % *(&xmmword_27E3C8A20 + 1);
    }
  }

  else
  {
    v2 = (*(&xmmword_27E3C8A20 + 1) - 1) & result;
  }

  v3 = *(xmmword_27E3C8A20 + 8 * v2);
  if (!v3 || (v4 = *v3) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v1.u32[0] < 2uLL)
  {
    while (1)
    {
      v5 = v4[1];
      if (v5 == result)
      {
        if (*(v4 + 4) == result)
        {
          return result;
        }
      }

      else if ((v5 & (*(&xmmword_27E3C8A20 + 1) - 1)) != v2)
      {
        goto LABEL_22;
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v6 = v4[1];
    if (v6 == result)
    {
      break;
    }

    if (v6 >= *(&xmmword_27E3C8A20 + 1))
    {
      v6 %= *(&xmmword_27E3C8A20 + 1);
    }

    if (v6 != v2)
    {
      goto LABEL_22;
    }

LABEL_17:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_22;
    }
  }

  if (*(v4 + 4) != result)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_24024F63C(const void **a1)
{
  if ((atomic_load_explicit(&qword_27E3C8A48, memory_order_acquire) & 1) == 0)
  {
    v9 = a1;
    v10 = __cxa_guard_acquire(&qword_27E3C8A48);
    a1 = v9;
    if (v10)
    {
      operator new();
    }
  }

  v1 = qword_27E3C8A30;
  if (!qword_27E3C8A30)
  {
    return 0;
  }

  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  if (v2 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  while (1)
  {
    v5 = *(v1 + 47);
    v6 = v5;
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(v1 + 32);
    }

    if (v5 == v3)
    {
      v7 = v6 >= 0 ? (v1 + 24) : *(v1 + 24);
      if (!memcmp(v7, v4, v3))
      {
        break;
      }
    }

    v1 = *v1;
    if (!v1)
    {
      return 0;
    }
  }

  return *(v1 + 16);
}

void *sub_24024F968(void *a1)
{
  *a1 = &unk_2852275C0;
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[4];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 17);
        v3 -= 5;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  v6 = a1[1];
  if (v6)
  {
    v7 = a1[2];
    v8 = a1[1];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 17);
        v7 -= 5;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = a1[1];
    }

    a1[2] = v6;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_24024FA40(uint64_t a1, void *a2, void *a3, int a4)
{
  if (a4)
  {
    return 0;
  }

  v14 = *(a1 + 56);
  if (a2[1] != *a2)
  {
    v4 = *(*(a1 + 56) + 16);
    if (*(v4 + 84) == 3)
    {
      v5 = *(v4 + 48);
      IOSurfaceLock(v5, 0, 0);
      IOSurfaceGetBaseAddress(v5);
      operator new();
    }

    v6 = *(v4 + 48);
    IOSurfaceLock(v6, 0, 0);
    IOSurfaceGetBaseAddress(v6);
    operator new();
  }

  if (e5rt_execution_stream_execute_sync())
  {
    return 0;
  }

  result = 1;
  if (a3[1] != *a3)
  {
    v8 = 0;
    do
    {
      v9 = *(v14 + 40) + 88 * v8;
      v10 = *(v9 + 84);
      if (v10 == 6)
      {
        v12 = *(v9 + 48);
        IOSurfaceLock(v12, 1u, 0);
        IOSurfaceGetBaseAddress(v12);
        operator new();
      }

      if (v10 == 3)
      {
        v11 = *(v9 + 48);
        IOSurfaceLock(v11, 1u, 0);
        IOSurfaceGetBaseAddress(v11);
        operator new();
      }

      ++v8;
    }

    while (v8 < (a3[1] - *a3) >> 3);
    return 1;
  }

  return result;
}

uint64_t sub_240250898(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 sub_240250934(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285228250;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 sub_2402509FC(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285228208;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 sub_240250AC4(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2852281C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

__n128 sub_240250B8C(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_285228178;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_240250C38(void *a1)
{
  *a1 = &unk_285227610;
  v2 = a1[7];
  a1[7] = 0;
  if (v2)
  {
    v3 = sub_240250CC0(v2);
    MEMORY[0x245CBCA30](v3, 0x20C400FA965B2);
  }

  sub_24024F968(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t *sub_240250CC0(uint64_t *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  if (v2)
  {
    v3 = a1[6];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_240250E78(v3 - 88);
      }

      while (v3 != v2);
      v4 = a1[5];
    }

    a1[6] = v2;
    operator delete(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    v6 = a1[3];
    v7 = a1[2];
    if (v6 != v5)
    {
      do
      {
        v6 = sub_240250E78(v6 - 88);
      }

      while (v6 != v5);
      v7 = a1[2];
    }

    a1[3] = v5;
    operator delete(v7);
  }

  v8 = a1[1];
  a1[1] = 0;
  if (v8)
  {
    v9 = e5rt_execution_stream_operation_release();
    if (v9)
    {
      v14 = v9;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v16 = v14;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }
  }

  v10 = *a1;
  *a1 = 0;
  if (v10)
  {
    v11 = e5rt_execution_stream_reset();
    v12 = e5rt_execution_stream_release();
    if (!v11)
    {
      v11 = v12;
    }

    if (v11 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v16 = v11;
      _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
    }
  }

  return a1;
}

uint64_t sub_240250E78(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    v3 = e5rt_buffer_object_release();
    if (v3)
    {
      v9 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v13 = v9;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }
  }

  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v4)
  {
    v5 = e5rt_tensor_desc_release();
    if (v5)
    {
      v10 = v5;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v13 = v10;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }
  }

  v6 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v6)
  {
    v7 = e5rt_io_port_release();
    if (v7)
    {
      v11 = v7;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v13 = v11;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_24025103C(void *a1)
{
  *a1 = &unk_285227610;
  v1 = a1[7];
  a1[7] = 0;
  if (v1)
  {
    v2 = a1;
    v3 = sub_240250CC0(v1);
    MEMORY[0x245CBCA30](v3, 0x20C400FA965B2);
    a1 = v2;
  }

  return sub_24024F968(a1);
}

BOOL sub_2402510B4(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = e5rt_tensor_desc_alloc_buffer_object();
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = e5rt_buffer_object_release();
    if (v3)
    {
      v5 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v8 = v5;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }
  }

  return !v1 && e5rt_buffer_object_get_iosurface() == 0;
}

void sub_2402511CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2401E8AB4(va);
  _Unwind_Resume(a1);
}

BOOL sub_2402511E0(uint64_t a1, uint64_t *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  *a2 = 0;
  v4 = *(a1 + 8);
  *(a1 + 8) = v2;
  if (v4)
  {
    *v30 = v4;
    v5 = e5rt_execution_stream_operation_release();
    if (v5)
    {
      v15 = v5;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v15;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }
  }

  v29 = 0;
  if (MEMORY[0x282218288])
  {
    v6 = v28;
    v28[0] = &unk_285226F68;
    v28[1] = MEMORY[0x282218288];
    v29 = v28;
  }

  else
  {
    v6 = 0;
  }

  v27 = 0;
  if (MEMORY[0x282218280])
  {
    v26[0] = &unk_285226F20;
    v26[1] = MEMORY[0x282218280];
    v27 = v26;
  }

  v25 = 0;
  if (MEMORY[0x2822182A0])
  {
    v24[0] = &unk_285226FB0;
    v24[1] = MEMORY[0x2822182A0];
    v25 = v24;
  }

  v7 = sub_24025189C(a1, v6, v26);
  if (v25 == v24)
  {
    (*(*v25 + 32))(v25);
  }

  else if (v25)
  {
    (*(*v25 + 40))();
  }

  if (v27 == v26)
  {
    (*(*v27 + 32))(v27);
  }

  else if (v27)
  {
    (*(*v27 + 40))(v27);
  }

  if (v29 == v28)
  {
    (*(*v29 + 32))(v29);
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    if (v29)
    {
      (*(*v29 + 40))(v29);
    }

    if (!v7)
    {
      return 0;
    }
  }

  v23 = 0;
  if (MEMORY[0x282218290])
  {
    v8 = v22;
    v22[0] = &unk_285226F68;
    v22[1] = MEMORY[0x282218290];
    v23 = v22;
  }

  else
  {
    v8 = 0;
  }

  v21 = 0;
  if (MEMORY[0x282218298])
  {
    v20[0] = &unk_285226F20;
    v20[1] = MEMORY[0x282218298];
    v21 = v20;
  }

  v19 = 0;
  if (MEMORY[0x2822182A8])
  {
    v18[0] = &unk_285226FB0;
    v18[1] = MEMORY[0x2822182A8];
    v19 = v18;
  }

  v9 = sub_24025189C(a1, v8, v20);
  if (v19 == v18)
  {
    (*(*v19 + 32))(v19);
  }

  else if (v19)
  {
    (*(*v19 + 40))();
  }

  if (v21 == v20)
  {
    (*(*v21 + 32))(v21);
  }

  else if (v21)
  {
    (*(*v21 + 40))();
  }

  if (v23 == v22)
  {
    (*(*v23 + 32))(v23);
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (v23)
    {
      (*(*v23 + 40))();
    }

    if (!v9)
    {
      return 0;
    }
  }

  if (!e5rt_execution_stream_operation_prepare_op_for_encode())
  {
    *buf = a1;
    v17 = 0;
    v10 = e5rt_execution_stream_create();
    v11 = **buf;
    **buf = v17;
    if (v11)
    {
      v12 = e5rt_execution_stream_reset();
      v13 = e5rt_execution_stream_release();
      if (!v12)
      {
        v12 = v13;
      }

      if (v12)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v30 = 67109120;
          *&v30[4] = v12;
          _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", v30, 8u);
        }
      }
    }

    if (!v10)
    {
      return e5rt_execution_stream_encode_operation() == 0;
    }
  }

  return 0;
}

void sub_240251778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_240252548(va);
  _Unwind_Resume(a1);
}

void sub_240251790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  sub_2402523C8(va);
  sub_240252448(va1);
  sub_2402524C8(va2);
  _Unwind_Resume(a1);
}

void *sub_2402517D0(void *result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = e5rt_execution_stream_operation_release();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

BOOL sub_24025189C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v9 = 0;
  *buf = *(a1 + 8);
  *v12 = &v9;
  if (!a2)
  {
    goto LABEL_10;
  }

  if (!(*(*a2 + 48))(a2, buf, v12))
  {
    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_2401BDE28();
    }

    v6 = *(a1 + 8);
    v10 = 0;
    *buf = v6;
    *v12 = 0;
    v7 = *(a3 + 24);
    if (v7)
    {
      return (*(*v7 + 48))(v7, buf, v12, &v10) == 0;
    }

LABEL_10:
    sub_240202D80();
  }

  return 0;
}

void sub_240252328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  sub_2401E6FA8(&a21);
  sub_2401E5918(&a15);
  sub_2401E5918(&a17);
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2402523C8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_240252448(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2402524C8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t **sub_240252548(uint64_t **result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **result;
  **result = result[1];
  if (v1)
  {
    v2 = result;
    v3 = e5rt_execution_stream_reset();
    v4 = e5rt_execution_stream_release();
    if (!v3)
    {
      v3 = v4;
    }

    if (v3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v3;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

uint64_t sub_240252640(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285226FB0;
  a2[1] = v2;
  return result;
}

uint64_t sub_2402526F0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285226F20;
  a2[1] = v2;
  return result;
}

uint64_t sub_24025279C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285226F68;
  a2[1] = v2;
  return result;
}

void sub_240252830(void ***a1, void ***a2)
{
  v4 = *a2;
  v5 = a2[1];
  if (v5 != *a2)
  {
    do
    {
      v6 = *(v5 - 17);
      v5 -= 5;
      if (v6 < 0)
      {
        operator delete(*v5);
      }
    }

    while (v5 != v4);
    v5 = *a2;
  }

  a2[1] = v4;
  v7 = 0x2E8BA2E8BA2E8BA3 * (a1[1] - *a1);
  if (0xCCCCCCCCCCCCCCCDLL * (a2[2] - v5) < v7)
  {
    if (v7 <= 0x666666666666666)
    {
      operator new();
    }

LABEL_41:
    sub_2401BDE28();
  }

  v8 = *a1;
  v9 = a1[1];
  if (*a1 != v9)
  {
    do
    {
      HIBYTE(v26) = 5;
      strcpy(__p, "dummy");
      *&v27 = -1;
      *(&v27 + 1) = -1;
      if (__p != v8)
      {
        if (*(v8 + 23) < 0)
        {
          sub_2401F7FA0(__p, *v8, v8[1]);
        }

        else
        {
          v11 = *v8;
          v26 = v8[2];
          *__p = v11;
        }
      }

      v27 = *(v8 + 7);
      v13 = a2[1];
      v12 = a2[2];
      if (v13 < v12)
      {
        v10 = *__p;
        v13[2] = v26;
        *v13 = v10;
        __p[1] = 0;
        v26 = 0;
        __p[0] = 0;
        *(v13 + 3) = v27;
        a2[1] = v13 + 5;
      }

      else
      {
        v14 = *a2;
        v15 = v13 - *a2;
        v16 = 0xCCCCCCCCCCCCCCCDLL * (v15 >> 3) + 1;
        if (v16 > 0x666666666666666)
        {
          goto LABEL_41;
        }

        v17 = 0xCCCCCCCCCCCCCCCDLL * (v12 - v14);
        if (2 * v17 > v16)
        {
          v16 = 2 * v17;
        }

        if (v17 >= 0x333333333333333)
        {
          v18 = 0x666666666666666;
        }

        else
        {
          v18 = v16;
        }

        if (v18)
        {
          if (v18 <= 0x666666666666666)
          {
            operator new();
          }

          sub_2401BDE28();
        }

        v19 = 8 * (v15 >> 3);
        *v19 = *__p;
        *(v19 + 16) = v26;
        __p[1] = 0;
        v26 = 0;
        __p[0] = 0;
        *(v19 + 24) = v27;
        v20 = v19 - v15;
        if (v14 != v13)
        {
          v21 = v14;
          v22 = v20;
          do
          {
            v23 = *v21;
            *(v22 + 16) = v21[2];
            *v22 = v23;
            v21[1] = 0;
            v21[2] = 0;
            *v21 = 0;
            *(v22 + 24) = *(v21 + 3);
            v21 += 5;
            v22 += 40;
          }

          while (v21 != v13);
          do
          {
            if (*(v14 + 23) < 0)
            {
              operator delete(*v14);
            }

            v14 += 5;
          }

          while (v14 != v13);
          v14 = *a2;
        }

        *a2 = v20;
        a2[1] = (v19 + 40);
        a2[2] = 0;
        if (v14)
        {
          operator delete(v14);
        }

        v24 = SHIBYTE(v26);
        a2[1] = (v19 + 40);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v8 += 11;
    }

    while (v8 != v9);
  }
}

void sub_240252BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_240252BF8(uint64_t **result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **result;
  **result = result[1];
  if (v1)
  {
    v2 = result;
    v3 = e5rt_e5_compiler_release();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

uint64_t **sub_240252CC8(uint64_t **result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **result;
  **result = result[1];
  if (v1)
  {
    v2 = result;
    v3 = e5rt_e5_compiler_options_release();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

void *sub_240252D98(void *result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = e5rt_e5_compiler_options_release();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

void *sub_240252E64(void *result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = e5rt_e5_compiler_release();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

uint64_t sub_240252F30()
{
  v41 = *MEMORY[0x277D85DE8];
  v32 = 0;
  *v36 = &v32;
  v37 = 0;
  v34 = 0;
  *v38 = &v34;
  v39 = 0;
  precompiled_compute_operation_with_options = e5rt_e5_compiler_create();
  v1 = **v38;
  **v38 = v39;
  if (v1)
  {
    v35 = v1;
    v2 = e5rt_e5_compiler_release();
    if (v2)
    {
      v22 = v2;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v22;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }
  }

  if (!precompiled_compute_operation_with_options)
  {
    v33 = 0;
    *v38 = &v33;
    v39 = 0;
    precompiled_compute_operation_with_options = e5rt_e5_compiler_options_create();
    v3 = **v38;
    **v38 = v39;
    if (v3)
    {
      v35 = v3;
      v4 = e5rt_e5_compiler_options_release();
      if (v4)
      {
        v26 = v4;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v26;
          _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
        }
      }
    }

    if (!precompiled_compute_operation_with_options)
    {
      precompiled_compute_operation_with_options = e5rt_e5_compiler_options_set_compute_device_types_mask();
      if (!precompiled_compute_operation_with_options)
      {
        precompiled_compute_operation_with_options = e5rt_e5_compiler_compile();
      }
    }

    v5 = v33;
    v33 = 0;
    if (v5)
    {
      *buf = v5;
      v6 = e5rt_e5_compiler_options_release();
      if (v6)
      {
        v27 = v6;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v38 = 67109120;
          *&v38[4] = v27;
          _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", v38, 8u);
        }
      }
    }
  }

  v7 = v34;
  v34 = 0;
  if (v7)
  {
    *buf = v7;
    v8 = e5rt_e5_compiler_release();
    if (v8)
    {
      v23 = v8;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v38 = 67109120;
        *&v38[4] = v23;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", v38, 8u);
      }
    }
  }

  v9 = **v36;
  **v36 = v37;
  if (v9)
  {
    *buf = v9;
    v10 = e5rt_program_library_release();
    if (v10)
    {
      v24 = v10;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v38 = 67109120;
        *&v38[4] = v24;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", v38, 8u);
      }
    }
  }

  if (!precompiled_compute_operation_with_options)
  {
    v35 = 0;
    *v38 = &v35;
    v39 = 0;
    precompiled_compute_operation_with_options = e5rt_program_library_retain_program_function();
    v11 = **v38;
    **v38 = v39;
    if (v11)
    {
      *buf = v11;
      v12 = e5rt_program_function_release();
      if (v12)
      {
        v28 = v12;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v36 = 67109120;
          *&v36[4] = v28;
          _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", v36, 8u);
        }
      }
    }

    if (!precompiled_compute_operation_with_options)
    {
      v34 = 0;
      *v38 = &v34;
      v39 = 0;
      precompiled_compute_operation_with_options = e5rt_precompiled_compute_op_create_options_create_with_program_function();
      v13 = **v38;
      **v38 = v39;
      if (v13)
      {
        *buf = v13;
        options_release = e5rt_precompiled_compute_op_create_options_release();
        if (options_release)
        {
          v30 = options_release;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *v36 = 67109120;
            *&v36[4] = v30;
            _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", v36, 8u);
          }
        }
      }

      if (!precompiled_compute_operation_with_options)
      {
        precompiled_compute_operation_with_options = e5rt_execution_stream_operation_create_precompiled_compute_operation_with_options();
      }

      v15 = v34;
      v34 = 0;
      if (v15)
      {
        *v36 = v15;
        v16 = e5rt_precompiled_compute_op_create_options_release();
        if (v16)
        {
          v31 = v16;
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            *v38 = 67109120;
            *&v38[4] = v31;
            _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", v38, 8u);
          }
        }
      }
    }

    v17 = v35;
    v35 = 0;
    if (v17)
    {
      *v36 = v17;
      v18 = e5rt_program_function_release();
      if (v18)
      {
        v29 = v18;
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *v38 = 67109120;
          *&v38[4] = v29;
          _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", v38, 8u);
        }
      }
    }
  }

  v19 = v32;
  v32 = 0;
  if (v19)
  {
    *v36 = v19;
    v20 = e5rt_program_library_release();
    if (v20)
    {
      v25 = v20;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *v38 = 67109120;
        *&v38[4] = v25;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", v38, 8u);
      }
    }
  }

  return precompiled_compute_operation_with_options;
}

void sub_240253518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_24025380C(&a11);
  sub_2402538D8(&a12);
  sub_2402539A4(&a9);
  _Unwind_Resume(a1);
}

uint64_t **sub_24025359C(uint64_t **result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **result;
  **result = result[1];
  if (v1)
  {
    v2 = result;
    v3 = e5rt_program_library_release();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

uint64_t **sub_24025366C(uint64_t **result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **result;
  **result = result[1];
  if (v1)
  {
    v2 = result;
    v3 = e5rt_program_function_release();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

uint64_t **sub_24025373C(uint64_t **result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **result;
  **result = result[1];
  if (v1)
  {
    v2 = result;
    options_release = e5rt_precompiled_compute_op_create_options_release();
    if (options_release)
    {
      v4 = options_release;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

void *sub_24025380C(void *result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    options_release = e5rt_precompiled_compute_op_create_options_release();
    if (options_release)
    {
      v4 = options_release;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

void *sub_2402538D8(void *result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = e5rt_program_function_release();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

void *sub_2402539A4(void *result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = e5rt_program_library_release();
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v6 = v4;
        _os_log_error_impl(&dword_2401B8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "e5rt::AssertSuccess failed with error code %d.", buf, 8u);
      }
    }

    return v2;
  }

  return result;
}

void *sub_240253A70(void *result, void *a2, uint64_t a3)
{
  v3 = a2[1];
  if (*a2 != v3 && 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a2) >> 3) == *(a3 + 8))
  {
    operator new();
  }

  *result = 0;
  return result;
}

uint64_t sub_240254148(uint64_t a1, __CVBuffer *a2, uint64_t *a3)
{
  v58[1] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v5 = objc_alloc(MEMORY[0x277CE2D50]);
  v56 = [v5 initWithCVPixelBuffer:a2 options:MEMORY[0x277CBEC10]];
  v6 = objc_opt_new();
  [v6 setRevision:3737841664 error:0];
  v58[0] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:1];
  v57 = 0;
  v8 = [v56 performRequests:v7 error:&v57];
  v55 = v57;

  if (v8)
  {
    v9 = [v6 results];
    if (v9)
    {
      Width = CVPixelBufferGetWidth(a2);
      Height = CVPixelBufferGetHeight(a2);
      v12 = [v9 count];
      if (0xAAAAAAAAAAAAAAABLL * ((a3[2] - *a3) >> 4) < v12)
      {
        if (v12 <= 0x555555555555555)
        {
          operator new();
        }

LABEL_32:
        sub_2401BDE28();
      }

      v13 = 1;
      if (v12 >= 1)
      {
        v14 = 0;
        v15 = Width;
        v16 = v12 & 0x7FFFFFFF;
        v17 = Height;
        while (1)
        {
          v18 = [v9 objectAtIndexedSubscript:v14];
          v19 = v18;
          if (!v18)
          {
            break;
          }

          [v18 boundingBox];
          v21 = v20;
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v28 = [v19 roll];
          [v28 floatValue];
          v30 = v29;

          v31 = [v19 yaw];
          [v31 floatValue];
          v33 = v32;

          v34 = v21;
          v35 = v23 + v27;
          v36 = v25;
          v37 = v27;
          *&v38 = (v34 * v15) + -0.5;
          *(&v38 + 1) = ((1.0 - v35) * v17) + -0.5;
          *(&v38 + 2) = v36 * v15;
          *(&v38 + 3) = v37 * v17;
          v39 = v30 / -0.017453;
          v40 = v33 / 0.017453;
          v42 = a3[1];
          v41 = a3[2];
          if (v42 >= v41)
          {
            v44 = *a3;
            v45 = &v42[-*a3];
            v46 = 0xAAAAAAAAAAAAAAABLL * (v45 >> 4) + 1;
            if (v46 > 0x555555555555555)
            {
              goto LABEL_32;
            }

            v47 = 0xAAAAAAAAAAAAAAABLL * ((v41 - v44) >> 4);
            if (2 * v47 > v46)
            {
              v46 = 2 * v47;
            }

            if (v47 >= 0x2AAAAAAAAAAAAAALL)
            {
              v48 = 0x555555555555555;
            }

            else
            {
              v48 = v46;
            }

            if (v48)
            {
              if (v48 <= 0x555555555555555)
              {
                operator new();
              }

              sub_2401BDE28();
            }

            v49 = 16 * (v45 >> 4);
            *v49 = 5;
            *(v49 + 4) = v38;
            *(v49 + 20) = v39;
            *(v49 + 24) = 1;
            *(v49 + 28) = v40;
            *(v49 + 32) = 1;
            *(v49 + 40) = v14;
            v50 = v49 - v45;
            if (v44 != v42)
            {
              v51 = v50;
              do
              {
                *v51 = *v44;
                *(v51 + 4) = *(v44 + 4);
                *(v51 + 12) = *(v44 + 12);
                v52 = *(v44 + 20);
                *(v51 + 32) = *(v44 + 2);
                *(v51 + 20) = v52;
                v44 += 48;
                v51 += 48;
              }

              while (v44 != v42);
              v44 = *a3;
            }

            v43 = v49 + 48;
            *a3 = v50;
            a3[1] = v49 + 48;
            a3[2] = 0;
            if (v44)
            {
              operator delete(v44);
            }
          }

          else
          {
            *v42 = 5;
            *(v42 + 4) = v38;
            *(v42 + 5) = v39;
            v42[24] = 1;
            *(v42 + 7) = v40;
            v42[32] = 1;
            v43 = (v42 + 48);
            *(v42 + 5) = v14;
          }

          a3[1] = v43;

          if (++v14 == v16)
          {
            goto LABEL_27;
          }
        }

        v13 = 0;
      }
    }

    else
    {
LABEL_27:
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  objc_autoreleasePoolPop(context);
  return v13;
}

void *sub_2402546E0(void *result)
{
  if ((atomic_load_explicit(&qword_27E3C8A60, memory_order_acquire) & 1) == 0)
  {
    v3 = result;
    v2 = __cxa_guard_acquire(&qword_27E3C8A60);
    result = v3;
    if (v2)
    {
      operator new();
    }
  }

  v1 = qword_27E3C8A58;
  *result = qword_27E3C8A50;
  result[1] = v1;
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_240254800(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      v3 = *(v2 + 8);
      if (v3)
      {
        fclose(v3);
      }

      *(v2 + 8) = 0;
      MEMORY[0x245CBCA30](v2, 0x1020C4075DEAD68);
    }

    JUMPOUT(0x245CBCA30);
  }

  return result;
}

void sub_240254884(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x245CBCA30);
}

uint64_t sub_2402548C0(_BYTE *a1, uint64_t a2)
{
  sub_24021EC88(v17);
  v4 = *(&v17[2] + *(v17[0] - 24));
  sub_24021EC88(v22);
  *(&v25.__locale_ + *(v23 - 24)) = v4;
  v5 = *(a2 + 23);
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  sub_24021F0B0(&v23, v6, v7);
  if ((v32 & 0x10) != 0)
  {
    v9 = v31;
    if (v31 < v28)
    {
      v31 = v28;
      v9 = v28;
    }

    v10 = &v27;
  }

  else
  {
    if ((v32 & 8) == 0)
    {
      v8 = 0;
      a1[23] = 0;
      goto LABEL_20;
    }

    v10 = v26;
    v9 = v26[2];
  }

  v11 = *v10;
  v8 = v9 - *v10;
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2401BDE28();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  a1[23] = v8;
  if (v8)
  {
    memmove(a1, v11, v8);
  }

LABEL_20:
  a1[v8] = 0;
  v22[0] = *MEMORY[0x277D82818];
  v12 = v22[0];
  v13 = *(MEMORY[0x277D82818] + 72);
  v14 = *(MEMORY[0x277D82818] + 64);
  *(v22 + *(v22[0] - 24)) = v14;
  v15 = v13;
  v23 = v13;
  v24 = MEMORY[0x277D82878] + 16;
  if (v30 < 0)
  {
    operator delete(__p);
  }

  v24 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v25);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBC9C0](&v33);
  v17[0] = v12;
  *(v17 + *(v12 - 24)) = v14;
  v17[2] = v15;
  v18 = MEMORY[0x277D82878] + 16;
  if (v20 < 0)
  {
    operator delete(v19[7].__locale_);
  }

  v18 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return MEMORY[0x245CBC9C0](&v21);
}

uint64_t sub_240254C2C(_BYTE *a1)
{
  sub_24021EC88(v12);
  v2 = *(&v12[2] + *(v12[0] - 24));
  sub_24021EC88(v17);
  *(&v20.__locale_ + *(v18 - 24)) = v2;
  sub_24021F0B0(&v18, ": ", 2);
  if ((v27 & 0x10) != 0)
  {
    v4 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v4 = v23;
    }

    v5 = &v22;
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v3 = 0;
      a1[23] = 0;
      goto LABEL_14;
    }

    v5 = v21;
    v4 = v21[2];
  }

  v6 = *v5;
  v3 = v4 - *v5;
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2401BDE28();
  }

  if (v3 >= 0x17)
  {
    operator new();
  }

  a1[23] = v3;
  if (v3)
  {
    memmove(a1, v6, v3);
  }

LABEL_14:
  a1[v3] = 0;
  v17[0] = *MEMORY[0x277D82818];
  v7 = v17[0];
  v8 = *(MEMORY[0x277D82818] + 72);
  v9 = *(MEMORY[0x277D82818] + 64);
  *(v17 + *(v17[0] - 24)) = v9;
  v10 = v8;
  v18 = v8;
  v19 = MEMORY[0x277D82878] + 16;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v20);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBC9C0](&v28);
  v12[0] = v7;
  *(v12 + *(v7 - 24)) = v9;
  v12[2] = v10;
  v13 = MEMORY[0x277D82878] + 16;
  if (v15 < 0)
  {
    operator delete(v14[7].__locale_);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return MEMORY[0x245CBC9C0](&v16);
}

uint64_t sub_240254F88(_BYTE *a1, const char *a2)
{
  sub_24021EC88(v15);
  v4 = *(&v15[2] + *(v15[0] - 24));
  sub_24021EC88(v20);
  *(&v23.__locale_ + *(v21 - 24)) = v4;
  v5 = strlen(a2);
  sub_24021F0B0(&v21, a2, v5);
  if ((v30 & 0x10) != 0)
  {
    v7 = v29;
    if (v29 < v26)
    {
      v29 = v26;
      v7 = v26;
    }

    v8 = &v25;
  }

  else
  {
    if ((v30 & 8) == 0)
    {
      v6 = 0;
      a1[23] = 0;
      goto LABEL_14;
    }

    v8 = v24;
    v7 = v24[2];
  }

  v9 = *v8;
  v6 = v7 - *v8;
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_2401BDE28();
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, v9, v6);
  }

LABEL_14:
  a1[v6] = 0;
  v20[0] = *MEMORY[0x277D82818];
  v10 = v20[0];
  v11 = *(MEMORY[0x277D82818] + 72);
  v12 = *(MEMORY[0x277D82818] + 64);
  *(v20 + *(v20[0] - 24)) = v12;
  v13 = v11;
  v21 = v11;
  v22 = MEMORY[0x277D82878] + 16;
  if (v28 < 0)
  {
    operator delete(__p);
  }

  v22 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBC9C0](&v31);
  v15[0] = v10;
  *(v15 + *(v10 - 24)) = v12;
  v15[2] = v13;
  v16 = MEMORY[0x277D82878] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x245CBC9C0](&v19);
}

uint64_t sub_2402552EC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const char *a5, char *a6, unsigned int a7, const char *a8, char a9)
{
  __s = a6;
  v133[48] = *MEMORY[0x277D85DE8];
  *a1 = *a2;
  v13 = a2[1];
  *(a1 + 8) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 176) = 0;
  v14 = MEMORY[0x277D828A0] + 24;
  v15 = MEMORY[0x277D828A0] + 64;
  *(a1 + 128) = MEMORY[0x277D828A0] + 64;
  v16 = *(MEMORY[0x277D82828] + 16);
  v17 = *(MEMORY[0x277D82828] + 8);
  *(a1 + 16) = v17;
  *(a1 + 16 + *(v17 - 24)) = v16;
  v18 = (a1 + 16 + *(*(a1 + 16) - 24));
  std::ios_base::init(v18, (a1 + 24));
  v18[1].__vftable = 0;
  v18[1].__fmtflags_ = -1;
  *(a1 + 128) = v15;
  v19 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v14;
  *(a1 + 24) = v19;
  MEMORY[0x245CBC950](a1 + 32);
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 16;
  sub_24021EF68(a1 + 24);
  *(a1 + 280) = 1;
  if (*(**a2 + 1) != 1)
  {
    goto LABEL_86;
  }

  v20.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
  if ((v20.__d_.__rep_ % 1000000) <= 0xFFFFFFFFFFF0BDBFLL)
  {
    v21 = v20.__d_.__rep_ % 1000000;
  }

  else
  {
    v21 = v20.__d_.__rep_ % 1000000 + 1000000;
  }

  __t.__d_.__rep_ = v20.__d_.__rep_ - v21;
  __dst[0] = std::chrono::system_clock::to_time_t(&__t);
  memset(&v113, 0, sizeof(v113));
  localtime_r(__dst, &v125);
  v22 = 84;
  do
  {
    v27 = v22 | 1;
    size = SHIBYTE(v113.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v113.__r_.__value_.__l.__size_;
      if (v113.__r_.__value_.__l.__size_ <= v22)
      {
LABEL_8:
        std::string::append(&v113, v27 - size, 0);
        goto LABEL_9;
      }

      v29 = v113.__r_.__value_.__r.__words[0];
      v113.__r_.__value_.__l.__size_ = v22 | 1;
    }

    else
    {
      if (v22 >= SHIBYTE(v113.__r_.__value_.__r.__words[2]))
      {
        goto LABEL_8;
      }

      *(&v113.__r_.__value_.__s + 23) = v22 | 1;
      v29 = &v113;
    }

    v29->__r_.__value_.__s.__data_[v27] = 0;
LABEL_9:
    if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v113;
    }

    else
    {
      v23 = v113.__r_.__value_.__r.__words[0];
    }

    v24 = strftime(v23, v22, "%Y-%m-%d %H:%M:%S", &v125);
    v26 = v24 - 1 >= v22;
    v22 *= 2;
  }

  while (v26);
  v30 = SHIBYTE(v113.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    v30 = v113.__r_.__value_.__l.__size_;
    if (v113.__r_.__value_.__l.__size_ < v24)
    {
      goto LABEL_24;
    }

    v31 = v113.__r_.__value_.__r.__words[0];
    v113.__r_.__value_.__l.__size_ = v24;
LABEL_26:
    v31->__r_.__value_.__s.__data_[v24] = 0;
  }

  else
  {
    if (v24 <= SHIBYTE(v113.__r_.__value_.__r.__words[2]))
    {
      *(&v113.__r_.__value_.__s + 23) = v24;
      v31 = &v113;
      goto LABEL_26;
    }

LABEL_24:
    std::string::append(&v113, v24 - v30, 0);
  }

  cva::Sprintf::sprintf(&v125.tm_sec, ".%06lld", v25, v21);
  if (v125.tm_year >= 0)
  {
    v32 = &v125;
  }

  else
  {
    v32 = *&v125.tm_sec;
  }

  if (v125.tm_year >= 0)
  {
    tm_year_high = HIBYTE(v125.tm_year);
  }

  else
  {
    tm_year_high = *&v125.tm_hour;
  }

  std::string::append(&v113, v32, tm_year_high);
  if (SHIBYTE(v125.tm_year) < 0)
  {
    operator delete(*&v125.tm_sec);
  }

  sub_2402548C0(&v125, &v113);
  if (v125.tm_year >= 0)
  {
    v34 = &v125;
  }

  else
  {
    v34 = *&v125.tm_sec;
  }

  if (v125.tm_year >= 0)
  {
    v35 = HIBYTE(v125.tm_year);
  }

  else
  {
    v35 = *&v125.tm_hour;
  }

  sub_24021F0B0((a1 + 16), v34, v35);
  if (SHIBYTE(v125.tm_year) < 0)
  {
    operator delete(*&v125.tm_sec);
    if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_58;
    }
  }

  else
  {
    if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_58:
    operator delete(v113.__r_.__value_.__l.__data_);
  }

LABEL_43:
  sub_240254C2C(&v125);
  if (v125.tm_year >= 0)
  {
    v36 = &v125;
  }

  else
  {
    v36 = *&v125.tm_sec;
  }

  if (v125.tm_year >= 0)
  {
    v37 = HIBYTE(v125.tm_year);
  }

  else
  {
    v37 = *&v125.tm_hour;
  }

  sub_24021F0B0((a1 + 16), v36, v37);
  if (SHIBYTE(v125.tm_year) < 0)
  {
    operator delete(*&v125.tm_sec);
  }

  sub_24021EC88(&v113);
  v38 = *(&v113.__r_.__value_.__r.__words[2] + *(v113.__r_.__value_.__r.__words[0] - 24));
  sub_24021EC88(&v125);
  *(&v125.tm_isdst + *(*&v125.tm_mon - 24)) = v38;
  v39 = strlen(a5);
  sub_24021F0B0(&v125.tm_mon, a5, v39);
  if ((v132 & 0x10) != 0)
  {
    v41 = v131;
    if (v131 < v128)
    {
      v131 = v128;
      v41 = v128;
    }

    p_tm_gmtoff = &v127;
  }

  else
  {
    if ((v132 & 8) == 0)
    {
      v40 = 0;
      HIBYTE(v107) = 0;
      goto LABEL_66;
    }

    p_tm_gmtoff = &v125.tm_gmtoff;
    v41 = v126;
  }

  v43 = *p_tm_gmtoff;
  v40 = v41 - *p_tm_gmtoff;
  if (v40 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_221;
  }

  if (v40 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v107) = v41 - *p_tm_gmtoff;
  if (v40)
  {
    memmove(__dst, v43, v40);
  }

LABEL_66:
  *(__dst + v40) = 0;
  *&v125.tm_sec = *MEMORY[0x277D82818];
  v44 = *&v125.tm_sec;
  v45 = *(MEMORY[0x277D82818] + 72);
  v46 = *(MEMORY[0x277D82818] + 64);
  *(&v125.tm_sec + *(*&v125.tm_sec - 24)) = v46;
  v47 = v45;
  *&v125.tm_mon = v45;
  *&v125.tm_wday = MEMORY[0x277D82878] + 16;
  if (v130 < 0)
  {
    operator delete(__p);
  }

  *&v125.tm_wday = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v125.tm_isdst);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBC9C0](v133);
  v113.__r_.__value_.__r.__words[0] = v44;
  *(v113.__r_.__value_.__r.__words + *(v44 - 24)) = v46;
  v113.__r_.__value_.__r.__words[2] = v47;
  v114 = MEMORY[0x277D82878] + 16;
  if (v121 < 0)
  {
    operator delete(v120);
  }

  v114 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v115);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBC9C0](v124);
  if (v107 >= 0)
  {
    v48 = __dst;
  }

  else
  {
    v48 = __dst[0];
  }

  if (v107 >= 0)
  {
    v49 = HIBYTE(v107);
  }

  else
  {
    v49 = __dst[1];
  }

  sub_24021F0B0((a1 + 16), v48, v49);
  if (SHIBYTE(v107) < 0)
  {
    operator delete(__dst[0]);
  }

  sub_240254C2C(&v125);
  if (v125.tm_year >= 0)
  {
    v50 = &v125;
  }

  else
  {
    v50 = *&v125.tm_sec;
  }

  if (v125.tm_year >= 0)
  {
    v51 = HIBYTE(v125.tm_year);
  }

  else
  {
    v51 = *&v125.tm_hour;
  }

  sub_24021F0B0((a1 + 16), v50, v51);
  if (SHIBYTE(v125.tm_year) < 0)
  {
    operator delete(*&v125.tm_sec);
  }

LABEL_86:
  v102 = &a9;
  vsnprintf(&v125, 0x200uLL, a8, &a9);
  sub_24021EC88(__dst);
  v52 = *(&__dst[2] + *(__dst[0] - 24));
  sub_24021EC88(&v113);
  *(&v115.__locale_ + *(v113.__r_.__value_.__r.__words[2] - 24)) = v52;
  v53 = strlen(&v125);
  sub_24021F0B0(&v113.__r_.__value_.__r.__words[2], &v125, v53);
  if ((v123 & 0x10) != 0)
  {
    v55 = v122;
    if (v122 < v119)
    {
      v122 = v119;
      v55 = v119;
    }

    v56 = &v118;
  }

  else
  {
    if ((v123 & 8) == 0)
    {
      v54 = 0;
      v105 = 0;
      goto LABEL_99;
    }

    v56 = v116;
    v55 = v117;
  }

  v57 = *v56;
  v54 = v55 - *v56;
  if (v54 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_221;
  }

  if (v54 >= 0x17)
  {
    operator new();
  }

  v105 = v55 - *v56;
  if (v54)
  {
    memmove(&__t, v57, v54);
  }

LABEL_99:
  *(&__t.__d_.__rep_ + v54) = 0;
  v113.__r_.__value_.__r.__words[0] = *MEMORY[0x277D82818];
  v58 = v113.__r_.__value_.__r.__words[0];
  v59 = *(MEMORY[0x277D82818] + 72);
  v60 = *(MEMORY[0x277D82818] + 64);
  *(v113.__r_.__value_.__r.__words + *(v113.__r_.__value_.__r.__words[0] - 24)) = v60;
  v61 = v59;
  v113.__r_.__value_.__r.__words[2] = v59;
  v114 = MEMORY[0x277D82878] + 16;
  if (v121 < 0)
  {
    operator delete(v120);
  }

  v114 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v115);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBC9C0](v124);
  __dst[0] = v58;
  *(__dst + *(v58 - 24)) = v60;
  v107 = v61;
  v108 = MEMORY[0x277D82878] + 16;
  if (v111 < 0)
  {
    operator delete(v110);
  }

  v108 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v109);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBC9C0](v112);
  v62 = (v105 & 0x80u) == 0 ? &__t : __t.__d_.__rep_;
  v63 = (v105 & 0x80u) == 0 ? v105 : v104;
  sub_24021F0B0((a1 + 16), v62, v63);
  if (v105 < 0)
  {
    operator delete(__t.__d_.__rep_);
    v64 = __s;
    if (!__s)
    {
      goto LABEL_210;
    }
  }

  else
  {
    v64 = __s;
    if (!__s)
    {
      goto LABEL_210;
    }
  }

  if ((*(**a2 + 1) & 1) == 0)
  {
    goto LABEL_210;
  }

  v65 = strlen(v64);
  if (v65 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_221;
  }

  v66 = v65;
  if (v65 >= 0x17)
  {
    operator new();
  }

  v101 = v65;
  if (v65)
  {
    memcpy(&v99, v64, v65);
  }

  *(&v99 + v66) = 0;
  v67 = &v99;
  v68 = v99;
  v69 = v100;
  if (v101 < 0)
  {
    v67 = v99;
  }

  if (v101 >= 0)
  {
    v69 = v101;
  }

  v70 = &v67[v69];
  do
  {
    if (!v69)
    {
      goto LABEL_136;
    }

    v72 = *--v70;
    v71 = v72;
    if (v72 == 92)
    {
      break;
    }

    --v69;
  }

  while (v71 != 47);
  v73 = v70 - v67;
  if (v73 == -1)
  {
    goto LABEL_136;
  }

  if (v101 < 0)
  {
    if (v73 == -2)
    {
      v100 = 0;
      goto LABEL_135;
    }

LABEL_133:
    sub_2401BDE38(&v99, 0, v73 + 1);
    goto LABEL_136;
  }

  if (v73 != -2)
  {
    goto LABEL_133;
  }

  v101 = 0;
  v68 = &v99;
LABEL_135:
  *v68 = 0;
LABEL_136:
  sub_24021EC88(__dst);
  v74 = *(&__dst[2] + *(__dst[0] - 24));
  sub_24021EC88(&v113);
  *(&v115.__locale_ + *(v113.__r_.__value_.__r.__words[2] - 24)) = v74;
  sub_24021F0B0(&v113.__r_.__value_.__r.__words[2], "\t\t[", 3);
  if ((v123 & 0x10) != 0)
  {
    v76 = v122;
    if (v122 < v119)
    {
      v122 = v119;
      v76 = v119;
    }

    v77 = &v118;
  }

  else
  {
    if ((v123 & 8) == 0)
    {
      v75 = 0;
      v105 = 0;
      goto LABEL_149;
    }

    v77 = v116;
    v76 = v117;
  }

  v78 = *v77;
  v75 = v76 - *v77;
  if (v75 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_221;
  }

  if (v75 >= 0x17)
  {
    operator new();
  }

  v105 = v76 - *v77;
  if (v75)
  {
    memmove(&__t, v78, v75);
  }

LABEL_149:
  *(&__t.__d_.__rep_ + v75) = 0;
  v113.__r_.__value_.__r.__words[0] = v58;
  *(v113.__r_.__value_.__r.__words + *(v58 - 24)) = v60;
  v113.__r_.__value_.__r.__words[2] = v61;
  v114 = MEMORY[0x277D82878] + 16;
  if (v121 < 0)
  {
    operator delete(v120);
  }

  v114 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v115);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBC9C0](v124);
  __dst[0] = v58;
  *(__dst + *(v58 - 24)) = v60;
  v107 = v61;
  v108 = MEMORY[0x277D82878] + 16;
  if (v111 < 0)
  {
    operator delete(v110);
  }

  v108 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v109);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBC9C0](v112);
  if ((v105 & 0x80u) == 0)
  {
    p_t = &__t;
  }

  else
  {
    p_t = __t.__d_.__rep_;
  }

  if ((v105 & 0x80u) == 0)
  {
    v80 = v105;
  }

  else
  {
    v80 = v104;
  }

  sub_24021F0B0((a1 + 16), p_t, v80);
  if (v105 < 0)
  {
    operator delete(__t.__d_.__rep_);
  }

  sub_2402548C0(&v113, &v99);
  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v81 = &v113;
  }

  else
  {
    v81 = v113.__r_.__value_.__r.__words[0];
  }

  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v82 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v82 = v113.__r_.__value_.__l.__size_;
  }

  sub_24021F0B0((a1 + 16), v81, v82);
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  sub_240254F88(&v113, " ");
  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v83 = &v113;
  }

  else
  {
    v83 = v113.__r_.__value_.__r.__words[0];
  }

  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v84 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v84 = v113.__r_.__value_.__l.__size_;
  }

  sub_24021F0B0((a1 + 16), v83, v84);
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  sub_24021EC88(__dst);
  v85 = *(&__dst[2] + *(__dst[0] - 24));
  sub_24021EC88(&v113);
  *(&v115.__locale_ + *(v113.__r_.__value_.__r.__words[2] - 24)) = v85;
  MEMORY[0x245CBC7C0](&v113.__r_.__value_.__r.__words[2], a7);
  if ((v123 & 0x10) != 0)
  {
    v87 = v122;
    if (v122 < v119)
    {
      v122 = v119;
      v87 = v119;
    }

    v88 = &v118;
LABEL_184:
    v89 = *v88;
    v86 = v87 - *v88;
    if (v86 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v86 >= 0x17)
      {
        operator new();
      }

      v105 = v87 - *v88;
      if (v86)
      {
        memmove(&__t, v89, v86);
      }

      goto LABEL_190;
    }

LABEL_221:
    sub_2401BDE28();
  }

  if ((v123 & 8) != 0)
  {
    v88 = v116;
    v87 = v117;
    goto LABEL_184;
  }

  v86 = 0;
  v105 = 0;
LABEL_190:
  *(&__t.__d_.__rep_ + v86) = 0;
  v113.__r_.__value_.__r.__words[0] = v58;
  *(v113.__r_.__value_.__r.__words + *(v58 - 24)) = v60;
  v113.__r_.__value_.__r.__words[2] = v61;
  v114 = MEMORY[0x277D82878] + 16;
  if (v121 < 0)
  {
    operator delete(v120);
  }

  v114 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v115);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBC9C0](v124);
  __dst[0] = v58;
  *(__dst + *(v58 - 24)) = v60;
  v107 = v61;
  v108 = MEMORY[0x277D82878] + 16;
  if (v111 < 0)
  {
    operator delete(v110);
  }

  v108 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v109);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBC9C0](v112);
  if ((v105 & 0x80u) == 0)
  {
    rep = &__t;
  }

  else
  {
    rep = __t.__d_.__rep_;
  }

  if ((v105 & 0x80u) == 0)
  {
    v91 = v105;
  }

  else
  {
    v91 = v104;
  }

  sub_24021F0B0((a1 + 16), rep, v91);
  if (v105 < 0)
  {
    operator delete(__t.__d_.__rep_);
  }

  sub_240254F88(&v113, "]");
  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v92 = &v113;
  }

  else
  {
    v92 = v113.__r_.__value_.__r.__words[0];
  }

  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v93 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v93 = v113.__r_.__value_.__l.__size_;
  }

  sub_24021F0B0((a1 + 16), v92, v93);
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
    if ((v101 & 0x80000000) == 0)
    {
      goto LABEL_210;
    }
  }

  else if ((v101 & 0x80000000) == 0)
  {
    goto LABEL_210;
  }

  operator delete(v99);
LABEL_210:
  sub_240254F88(&v113, "\n");
  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v94 = &v113;
  }

  else
  {
    v94 = v113.__r_.__value_.__r.__words[0];
  }

  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v95 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v95 = v113.__r_.__value_.__l.__size_;
  }

  sub_24021F0B0((a1 + 16), v94, v95);
  if (SHIBYTE(v113.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v113.__r_.__value_.__l.__data_);
  }

  return a1;
}

uint64_t sub_240256698(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    v4 = 0;
    v3 = 0;
    v5 = *(a1 + 120);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    v8 = *(a1 + 112);
    v9 = *(a1 + 72);
    if (v8 < v9)
    {
      *(a1 + 112) = v9;
      v8 = v9;
    }

    v7 = (a1 + 64);
    goto LABEL_13;
  }

  v3 = std::__shared_weak_count::lock(v2);
  if (!v3)
  {
    v4 = 0;
    v5 = *(a1 + 120);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  v4 = *a1;
  v5 = *(a1 + 120);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v5 & 8) == 0)
  {
    v6 = 0;
    HIBYTE(v26) = 0;
    goto LABEL_19;
  }

  v7 = (a1 + 40);
  v8 = *(a1 + 56);
LABEL_13:
  v10 = *v7;
  v6 = v8 - *v7;
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_61;
  }

  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v26) = v8 - *v7;
  if (v6)
  {
    memmove(&__dst, v10, v6);
  }

LABEL_19:
  *(&__dst + v6) = 0;
  if (SHIBYTE(v26) < 0)
  {
    v11 = v25;
    if (!v25)
    {
      goto LABEL_34;
    }

    p_dst = __dst;
    if (__dst[v25 - 1] == 10)
    {
      goto LABEL_34;
    }

    if (v25 != (v26 & 0x7FFFFFFFFFFFFFFFLL) - 1)
    {
      ++v25;
LABEL_33:
      *(p_dst + v11) = 10;
      goto LABEL_34;
    }

    if ((v26 & 0x7FFFFFFFFFFFFFFFLL) != 0x7FFFFFFFFFFFFFF8)
    {
      if (v25 >= 0x3FFFFFFFFFFFFFF3)
      {
        operator new();
      }

LABEL_29:
      operator new();
    }

LABEL_61:
    sub_2401BDE28();
  }

  if (HIBYTE(v26))
  {
    v11 = HIBYTE(v26);
    if (*(&__dst + HIBYTE(v26) - 1) != 10)
    {
      if (HIBYTE(v26) == 22)
      {
        goto LABEL_29;
      }

      HIBYTE(v26) = (HIBYTE(v26) + 1) & 0x7F;
      p_dst = &__dst;
      goto LABEL_33;
    }
  }

LABEL_34:
  if (!v4)
  {
    goto LABEL_51;
  }

  if (SHIBYTE(v26) < 0)
  {
    if (v25)
    {
      v13 = __dst;
      goto LABEL_40;
    }
  }

  else if (HIBYTE(v26))
  {
    v13 = &__dst;
LABEL_40:
    v14 = *v4;
    os_unfair_lock_lock(*v4 + 1);
    v15 = *v4;
    if (LOBYTE((*v4)->_os_unfair_lock_opaque) == 1)
    {
      fputs(v13, *MEMORY[0x277D85E08]);
      v15 = *v4;
    }

    v16 = *&v15[2]._os_unfair_lock_opaque;
    if (v16)
    {
      fputs(v13, v16);
    }

    os_unfair_lock_unlock(v14 + 1);
  }

  if (*(a1 + 280) == 1)
  {
    v17 = *v4;
    os_unfair_lock_lock(*v4 + 1);
    v18 = *v4;
    if (LOBYTE((*v4)->_os_unfair_lock_opaque) == 1)
    {
      fflush(*MEMORY[0x277D85E08]);
      v18 = *v4;
    }

    v19 = *&v18[2]._os_unfair_lock_opaque;
    if (v19)
    {
      fflush(v19);
    }

    os_unfair_lock_unlock(v17 + 1);
  }

LABEL_51:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__dst);
  }

  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v20 = MEMORY[0x277D82828];
  v21 = *MEMORY[0x277D82828];
  *(a1 + 16) = *MEMORY[0x277D82828];
  *(a1 + 16 + *(v21 - 24)) = *(v20 + 24);
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::ostream::~ostream();
  MEMORY[0x245CBC9C0](a1 + 128);
  v22 = *(a1 + 8);
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  return a1;
}

void sub_240256B48(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = &unk_285226DD8;
  v1[54] = &unk_285226E28;
  v1[2] = &unk_285226E00;
  MEMORY[0x245CBC6E0](v1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBC9C0](v1 + 54);

  JUMPOUT(0x245CBCA30);
}

void sub_240256C1C(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  *v1 = &unk_285226DD8;
  v1[54] = &unk_285226E28;
  v1[2] = &unk_285226E00;
  MEMORY[0x245CBC6E0](v1 + 3);
  std::iostream::~basic_iostream();

  JUMPOUT(0x245CBC9C0);
}

void sub_240256CD8(void *a1)
{
  *(a1 - 2) = &unk_285226DD8;
  v1 = a1 + 52;
  a1[52] = &unk_285226E28;
  *a1 = &unk_285226E00;
  MEMORY[0x245CBC6E0](a1 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBC9C0](v1);

  JUMPOUT(0x245CBCA30);
}

void sub_240256D90(void *a1)
{
  *(a1 - 2) = &unk_285226DD8;
  a1[52] = &unk_285226E28;
  *a1 = &unk_285226E00;
  MEMORY[0x245CBC6E0](a1 + 1);
  std::iostream::~basic_iostream();

  JUMPOUT(0x245CBC9C0);
}

void sub_240256E30(void *a1)
{
  *a1 = &unk_285226DD8;
  v1 = a1 + 54;
  a1[54] = &unk_285226E28;
  a1[2] = &unk_285226E00;
  MEMORY[0x245CBC6E0](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBC9C0](v1);

  JUMPOUT(0x245CBCA30);
}

void *sub_240256EF0(void *a1)
{
  *a1 = &unk_285226DD8;
  v2 = a1 + 54;
  a1[54] = &unk_285226E28;
  a1[2] = &unk_285226E00;
  MEMORY[0x245CBC6E0](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x245CBC9C0](v2);
  return a1;
}

uint64_t sub_240256F90(uint64_t a1, _DWORD *a2)
{
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  LOBYTE(v30[0]) = 0;
  while ((*(**(a1 + 8) + 88))(*(a1 + 8), v30, 1) == 1)
  {
    if (LOBYTE(v30[0]) > 0x20u || ((1 << SLOBYTE(v30[0])) & 0x100002600) == 0)
    {
      break;
    }

    v4 = *(a1 + 8);
    if (*(v4 + 8) != 2)
    {
      v5 = (*(*v4 + 144))(*(a1 + 8), v30, 1);
      if (v5 >= 1)
      {
        *(v4 + 16) += v5;
      }
    }
  }

  LOBYTE(v28[0]) = 0;
  HIBYTE(v29) = 0;
  LOBYTE(v30[0]) = 0;
  while (1)
  {
    v9 = *(a1 + 8);
    if (*(v9 + 8) == 2)
    {
      break;
    }

    v10 = (*(*v9 + 144))(*(a1 + 8), v30, 1);
    if (v10 < 1)
    {
      break;
    }

    *(v9 + 16) += v10;
    if (v10 != 1)
    {
      break;
    }

    if (LOBYTE(v30[0]) <= 0x20u && ((1 << SLOBYTE(v30[0])) & 0x100002600) != 0)
    {
      break;
    }

    if (SHIBYTE(v29) < 0)
    {
      v12 = ((v29 & 0x7FFFFFFFFFFFFFFFLL) - 1);
      if (v28[1] == v12)
      {
        if ((v29 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
        {
          sub_2401BDE28();
        }

LABEL_27:
        operator new();
      }

      v7 = v28[0];
      v6 = v28[1]++;
    }

    else
    {
      if (HIBYTE(v29) == 22)
      {
        goto LABEL_27;
      }

      v6 = HIBYTE(v29);
      HIBYTE(v29) = (HIBYTE(v29) + 1) & 0x7F;
      v7 = v28;
    }

    v8 = &v6[v7];
    *v8 = v30[0];
    v8[1] = 0;
  }

  v13 = HIBYTE(v29);
  v14 = HIBYTE(v29);
  if (v29 < 0)
  {
    v13 = v28[1];
  }

  *(a1 + 64) = v13 != 0;
  if (v13)
  {
    v41[0] = 0;
    v40[6] = 0;
    v26 = MEMORY[0x277D82890] + 24;
    v15 = MEMORY[0x277D82890] + 104;
    v40[0] = MEMORY[0x277D82890] + 104;
    v16 = MEMORY[0x277D82890] + 64;
    v31 = MEMORY[0x277D82890] + 64;
    v17 = MEMORY[0x277D82818];
    v18 = *(MEMORY[0x277D82818] + 24);
    v30[0] = *(MEMORY[0x277D82818] + 16);
    *(v30 + *(v30[0] - 24)) = v18;
    v30[1] = 0;
    v19 = (v30 + *(v30[0] - 24));
    std::ios_base::init(v19, &v32);
    v19[1].__vftable = 0;
    v19[1].__fmtflags_ = -1;
    v20 = v17[5];
    v31 = v17[4];
    *(&v31 + *(v31 - 24)) = v20;
    v30[0] = v17[1];
    *(v30 + *(v30[0] - 24)) = v17[6];
    v40[0] = v15;
    v30[0] = v26;
    v21 = MEMORY[0x277D82868] + 16;
    v31 = v16;
    v32 = MEMORY[0x277D82868] + 16;
    MEMORY[0x245CBC950](&v33);
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v22 = MEMORY[0x277D82878] + 16;
    v32 = MEMORY[0x277D82878] + 16;
    *__p = 0u;
    v38 = 0u;
    v39 = 24;
    if (SHIBYTE(v29) < 0)
    {
      sub_2401F7FA0(__p, v28[0], v28[1]);
    }

    else
    {
      *__p = *v28;
      *&v38 = v29;
    }

    sub_24021EF68(&v32);
    MEMORY[0x245CBC730](v30, v41);
    v23 = v41[0];
    v30[0] = *v17;
    v24 = v17[9];
    *(v30 + *(v30[0] - 24)) = v17[8];
    v31 = v24;
    v32 = v22;
    if (SBYTE7(v38) < 0)
    {
      operator delete(__p[0]);
    }

    v32 = v21;
    std::locale::~locale(&v33);
    std::iostream::~basic_iostream();
    MEMORY[0x245CBC9C0](v40);
    *a2 = v23;
    v14 = HIBYTE(v29);
  }

  if (v14 < 0)
  {
    operator delete(v28[0]);
  }

  return a1;
}

uint64_t sub_240257694(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = (4 * v4 + 31) & 0x7FFFFFFE0;
  *a1 = 0;
  *(a1 + 8) = v5 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v5, 0xE1AC2527uLL);
  v6 = memptr;
  *a1 = memptr;
  if (v4)
  {
    memcpy(v6, *a2, 4 * v4);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    goto LABEL_12;
  }

  v9 = *(a2 + 64);
  v10 = (4 * v9 + 31) & 0x7FFFFFFE0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v10 >> 2;
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v10, 0xE1AC2527uLL);
  v11 = memptr;
  *(a1 + 48) = memptr;
  if (v9)
  {
    memcpy(v11, *(a2 + 48), 4 * v9);
  }

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  v13 = *(a2 + 72);
  v12 = *(a2 + 80);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

LABEL_12:
    sub_2401BDE28();
  }

  return a1;
}

void *sub_240258180(void *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = result;
    v3 = *(v1 + 816);
    if (v3)
    {
      *(v1 + 824) = v3;
      operator delete(v3);
    }

    free(*(v1 + 792));
    free(*(v1 + 768));
    free(*(v1 + 744));
    free(*(v1 + 720));
    v4 = *(v1 + 696);
    if (v4)
    {
      *(v1 + 704) = v4;
      operator delete(v4);
    }

    free(*(v1 + 672));
    free(*(v1 + 648));
    free(*(v1 + 624));
    free(*(v1 + 600));
    v5 = *(v1 + 576);
    if (v5)
    {
      *(v1 + 584) = v5;
      operator delete(v5);
    }

    free(*(v1 + 552));
    free(*(v1 + 528));
    free(*(v1 + 504));
    free(*(v1 + 480));
    v6 = *(v1 + 456);
    if (v6)
    {
      *(v1 + 464) = v6;
      operator delete(v6);
    }

    free(*(v1 + 432));
    v7 = *(v1 + 408);
    if (v7)
    {
      *(v1 + 416) = v7;
      operator delete(v7);
    }

    free(*(v1 + 384));
    free(*(v1 + 360));
    free(*(v1 + 336));
    free(*(v1 + 312));
    free(*(v1 + 288));
    free(*(v1 + 264));
    free(*(v1 + 240));
    v8 = *(v1 + 216);
    if (v8)
    {
      *(v1 + 224) = v8;
      operator delete(v8);
    }

    free(*(v1 + 192));
    v9 = *(v1 + 168);
    if (v9)
    {
      *(v1 + 176) = v9;
      operator delete(v9);
    }

    free(*(v1 + 144));
    free(*(v1 + 120));
    free(*(v1 + 96));
    free(*(v1 + 72));
    free(*(v1 + 48));
    free(*(v1 + 24));
    free(*v1);
    MEMORY[0x245CBCA30](v1, 0x1080C40BC4CA667);
    return v2;
  }

  return result;
}

void sub_240258314(uint64_t a1, int a2, int a3)
{
  *(a1 + 16) = a2;
  *(a1 + 20) = a3;
  v3 = (a3 * a2);
  if (v3)
  {
    if (*(a1 + 8) < v3)
    {
      free(*a1);
      v5 = (4 * v3 + 31) & 0x7FFFFFFE0;
      *a1 = 0;
      *(a1 + 8) = v5 >> 2;
      memptr = 0;
      malloc_type_posix_memalign(&memptr, 0x20uLL, v5, 0xE1AC2527uLL);
      *a1 = memptr;
    }
  }

  else
  {
    free(*a1);
    *a1 = 0;
    *(a1 + 8) = 0;
  }
}

void **sub_2402583AC(void **a1, uint64_t a2)
{
  v3 = (4 * a2 + 31) & 0x7FFFFFFFFFFFFFE0;
  *a1 = 0;
  a1[1] = (v3 >> 2);
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, v3, 0xE1AC2527uLL);
  *a1 = memptr;
  return a1;
}

void sub_24025840C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v6 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (*v6 == v4 || (*(v5 + 8) - 4 * *(v5 + 20)) == v4)
  {
    v7 = (4 * (*(v5 + 4) * *(v6 + 16)) + 31) & 0x7FFFFFFE0;
    v13 = v7 >> 2;
    memptr = 0;
    malloc_type_posix_memalign(&memptr, 0x20uLL, v7, 0xE1AC2527uLL);
    v12 = memptr;
    v8 = *(*(a2 + 16) + 4);
    LODWORD(v14) = *(*(a2 + 8) + 16);
    HIDWORD(v14) = v8;
    sub_24025840C(&v12, a2);
    v9 = *a1;
    v10 = v13;
    *a1 = v12;
    *(a1 + 8) = v10;
    *(a1 + 16) = v14;
    free(v9);
  }

  else
  {
    if (*(v6 + 20) * *(v6 + 16) && *(v5 + 4) * *v5)
    {
      cva::VecLib<float>::gemm();
    }

    v11 = *(a1 + 20) * *(a1 + 16);
    if (v11)
    {

      bzero(v4, 4 * v11);
    }
  }
}

double sub_24025854C(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    v1 = a1;
    free(*(a1 + 72));
    free(*(v1 + 48));
    free(*(v1 + 24));
    a1 = v1;
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
      a1 = v1;
    }
  }

  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 96) = 1;
  return result;
}

uint64_t sub_2402585CC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    if (*(v1 + 240) == 1)
    {
      free(*(v1 + 216));
      free(*(v1 + 192));
      free(*(v1 + 168));
      if (*(v1 + 167) < 0)
      {
        operator delete(*(v1 + 144));
      }
    }

    free(*(v1 + 120));
    free(*(v1 + 96));
    free(*(v1 + 72));
    free(*(v1 + 48));
    free(*(v1 + 24));
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    JUMPOUT(0x245CBCA30);
  }

  return result;
}