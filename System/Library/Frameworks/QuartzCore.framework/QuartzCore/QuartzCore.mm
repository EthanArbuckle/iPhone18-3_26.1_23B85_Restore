void CA::Render::Updater::prepare_sublayer0(void *a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v6 = *a2;
  v7 = CA::Render::Updater::layer_node(a3, a1, *(a2 + 8), *(a2 + 132), &v27);
  *(v7 + 11) = v6;
  v8 = 268435466;
  if ((*(v6[4] + 12) & 0x900) == 0)
  {
    v8 = 8;
  }

  CA::Render::Updater::prepare_layer0(a1, v7, a3, a2, v8 & *(a2 + 64));
  if (*(v7 + 11))
  {
    v10 = *(v7 + 4);
    v11 = *(v7 + 3) & 0xFFFFFFFFFFFFFC7FLL;
    *(v7 + 3) = v11;
    v12 = v6[3] & 0x200 | *(a1[9] + 24) | v11;
    *(v7 + 3) = v12;
    v13 = v12 & 0xC0000000000 | v6[3];
    v6[3] = v13;
    if ((*(v10 + 13) & 9) != 0)
    {
      if ((*(v7 + 24) & 0x20) != 0)
      {
        v6[3] = v13 | 0x20;
      }

      v14 = v7 + 6;
      v15 = *(v7 + 13);
      if (v15 != (v7 + 6))
      {
        if ((*(v10 + 13) & 1) != 0 && (*(v10 + 45) & 0x40) != 0)
        {
          CA::Render::LayerNode::depth_sort_sublayers(v7);
          v15 = *(v7 + 13);
        }

        if (v15 != v14)
        {
          v16 = v15;
          do
          {
            v16[11] = v6;
            v17 = v16[17];
            if (v17)
            {
              *(v17 + 88) = v6;
            }

            v16 = v16[1];
          }

          while (v16 != v14);
        }

        v18 = v6[13];
        v6[13] = v15;
        *v15 = v6 + 12;
        v19 = *(v7 + 12);
        *(v19 + 8) = v18;
        *v18 = v19;
        *(v7 + 12) = v7 + 6;
        *(v7 + 13) = v14;
      }

      v22 = a1[10];
      v21 = a1 + 10;
      v20 = v22;
      *v21 = v7;
      *v7 = v22;
      *(v7 + 1) = v21;
      v23 = v7;
    }

    else
    {
      v23 = v6[13];
      v6[13] = v7;
      *v7 = v6 + 12;
      *v23 = v7;
      v20 = v7;
    }

    *(v20 + 1) = v23;
    if ((v27 & 1) == 0)
    {
      atomic_fetch_add(v7 + 4, 1u);
    }

    v24 = *(a2 + 136);
    if ((v24 & 0x40) == 0)
    {
      v25 = *(v7 + 7);
      if (v25)
      {
        if (v25[2] != 0.0 || v25[6] != 0.0 || v25[10] != 1.0)
        {
LABEL_34:
          *(a2 + 136) = v24 | 0x40;
          return;
        }

        v26 = v25[14];
      }

      else
      {
        v26 = *(v7 + 10);
      }

      if (v26 == 0.0)
      {
        return;
      }

      goto LABEL_34;
    }
  }

  else if (v27 == 1 && atomic_fetch_add(v7 + 4, 0xFFFFFFFF) == 1)
  {

    CA::Render::LayerNode::delete_node(v7, v9);
  }
}

void CA::Render::Updater::prepare_layer0(uint64_t a1, CA::Render::LayerNode *a2, size_t a3, uint64_t a4, uint64_t a5, double a6, int8x16_t a7)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  v10 = a1;
  v935 = *MEMORY[0x1E69E9840];
  v11 = *a1;
  v12 = *(*a1 + 1376);
  if ((v12 & 0x20) == 0 || (*(a4 + 136) & 0x100) != 0 || (*(a3 + 40) & 0x40C00000000) != 0x400000000)
  {
    ++*(v11 + 201);
    v21 = *(a2 + 11);
    if (v21)
    {
      *(a2 + 3) |= *(v21 + 24) & 0x800C000000;
      v12 = *(v11 + 172);
    }

    if ((v12 & 1) != 0 || (v22 = *(a3 + 152)) == 0)
    {
      v22 = 0;
      v23 = a5 | 0x3C;
      if ((a5 & 0x2000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v23 = *&v22[13] | a5;
      if ((v23 & 0x2000000) == 0)
      {
LABEL_17:
        v25 = *(a2 + 3);
        v24 = *(a2 + 4);
        if ((v25 & 0x4000000) != 0)
        {
          v22 = 0;
        }

        v894 = v22;
        if (v24 == a3)
        {
          v26 = v23;
        }

        else
        {
          v26 = v23 | 4;
        }

        v888 = *(a3 + 12) & 0x900;
        if (!v888 && (v26 & 0x8000000008007FBCLL) == 0 && ((v26 & 0x60000000000) == 0 || (*(a4 + 136) & 0x800) == 0) && (!v894 || *&v894[2] == a3))
        {
          goto LABEL_1539;
        }

        v906 = 0;
        v904 = INFINITY;
        v905 = 0;
        v27 = *(a4 + 8);
        if (!v888)
        {
          v27 = a2;
        }

        v900 = a2;
        v901 = v27;
        v908 = *(a4 + 60) + 1;
        v909 = v26;
        v913 = *(a4 + 104);
        v28 = *(a4 + 120);
        v911 = 0;
        v914 = v28;
        v915 = *(a4 + 128);
        v29 = *(a4 + 136);
        if ((v29 & 0x100) != 0)
        {
          v30 = 256;
        }

        else
        {
          v30 = ((*(a3 + 40) & 0xC00000000) == 0x800000000) << 8;
        }

        if (((v26 & 0x1000000000000000) != 0) | ((v29 & 0x800) >> 11))
        {
          v31 = 2048;
        }

        else
        {
          v31 = 0;
        }

        v917 = v29 & 0x23F | v30 | v31;
        if (v894)
        {
          *&v894[13] &= ~0x1000000000000000uLL;
        }

        *(a2 + 3) = v25 & 0xFFFFF3D3FD7FFFFFLL;
        if ((v25 & 0x40) == 0)
        {
          v909.i64[0] = v26 & 0xFFFFFFFFFFF87FFFLL;
        }

        v32 = *(a3 + 136);
        if (v32)
        {
          v33 = *(v32 + 8);
        }

        else
        {
          v33 = 0;
        }

        v880 = *(a3 + 48);
        if ((v880 & 0x100000) != 0)
        {
          v874 = 0;
          v873 = 0u;
          v34 = 0;
          if (v33)
          {
LABEL_45:
            *v929 = 0;
            LODWORD(v918.f64[0]) = 0;
            v902 = *(a4 + 16);
            if (v902 < 0.0 || (a1 = CA::Render::Timing::map_time(v33, &v902, v929), (a1 & 1) == 0))
            {
              v902 = -1.0;
            }

            v903 = *(v7 + 24);
            if (v903 < 0.0 || (a1 = CA::Render::Timing::map_time(v33, &v903, &v918), (a1 & 1) == 0))
            {
              v903 = -1.0;
            }

            v35 = *(v33 + 16) * *(v7 + 56);
            v907 = v35;
            if (v929[0] & 1) != 0 && (*(v33 + 13))
            {
              v907 = -v35;
            }

            MEMORY[0x1EEE9AC00](a1);
            v37 = *(v7 + 80);
            v861[0] = v33;
            v861[1] = v37;
            v910 = v861;
            v38 = v902;
            if (v36 && v36 != LODWORD(v918.f64[0]) && v902 >= 0.0)
            {
              a7 = vorrq_s8(v909, xmmword_183E21290);
              v909 = a7;
            }

            v39 = v903;
LABEL_61:
            v885 = v33;
            if (v38 >= 0.0 || v39 < 0.0)
            {
              v40 = v909.i64[0];
              if (v38 < 0.0 || v39 >= 0.0)
              {
                goto LABEL_68;
              }

              v909.i64[1] |= 0x3CuLL;
              v40 = v909.i64[0] | 0xA;
            }

            else
            {
              v909.i64[1] |= 0x3CuLL;
              v40 = v909.i64[0] | 9;
            }

            v909.i64[0] = v40;
LABEL_68:
            v879 = v25;
            v891 = v7;
            if (v40 & 0x200000000000) != 0 && (!CA::Render::Updater::layer_may_be_hidden_culled(v8, a2) || (v40 & 0x100000000000) != 0 || (byte_1ED4E9821))
            {
              v909.i64[1] |= 0x3CuLL;
              v909.i64[0] = v40 | 0xA;
            }

            v889 = v10;
            v41 = *(v9 + 15);
            if (v41)
            {
              CA::Render::Update::release_object(v11, v41);
              *(v9 + 15) = 0;
            }

            v890 = v8;
            v42 = *(v8 + 17);
            v892 = v9;
            v893 = v11;
            v877 = v26;
            if (v42)
            {
              v43 = *(v42 + 136);
              if (v43)
              {
                if ((*(v11 + 344) & 1) == 0)
                {
                  v44 = *(v43 + 16);
                  if (v44)
                  {
                    v45 = v43 + 8 * v44 + 24;
                    v46 = (v43 + 24);
                    *&v876.f64[0] = v45;
                    do
                    {
                      v47 = *v46;
                      v48 = *(*v46 + 16);
                      v49 = *(v48 + 24);
                      if ((**&v49 & 0x40000000) == 0)
                      {
                        v50 = v891;
                        v51 = *(v891 + 16);
                        v52 = *(v891 + 48) | 0x20;
                        _ZF = *(v891 + 32) == v51 || v51 == 0.0;
                        v54 = *(v891 + 40) | 0x20;
                        if (!_ZF)
                        {
                          v54 = 32;
                        }

                        *(v891 + 40) = v54;
                        *(v50 + 48) = v52;
                        *(v50 + 32) = v51;
                      }

                      v909.i64[1] |= 0x800uLL;
                      v55 = *(v48 + 16);
                      v56 = v55 - 40;
                      if (v55 >= 0x28)
                      {
                        v57 = *(*&v49 + 8);
                        v886.i32[0] = *(v889 + 2);
                        if (v57 != v886.i32[0])
                        {
                          *&v58 = *(*&v49 + 12);
                          if (!WORD1(v58))
                          {
                            v878.i64[0] = v47;
                            *&v887.f64[0] = v55 - 40;
                            os_unfair_lock_lock(&CA::Render::PresentationModifierShmem::_fetch_lock);
                            atomic_fetch_or(*&v49, 0x80000000);
                            v59 = **&v49 & 1;
                            if (LOWORD(v58))
                            {
                              v60 = 0;
                              v61 = *&v887.f64[0];
                              v62 = *&v887.f64[0] >> 3;
                              v63 = *&v49 + v55;
                              v64 = *&v49 + 40;
                              v59 = v59;
                              v884.f64[0] = v49;
                              v883.f64[0] = v58;
                              *&v882 = v55;
                              *&v881 = *&v49 + v55;
                              do
                              {
                                if (v60 == v62)
                                {
                                  break;
                                }

                                v65 = v63 - 8 * v60;
                                v66 = *(v65 - 8);
                                if (!v66)
                                {
                                  break;
                                }

                                v67 = (16 * v66) | 8;
                                v68 = *(v65 - 4);
                                if (3 * v67 + v68 > v61)
                                {
                                  break;
                                }

                                v69 = v64 + v68;
                                v70 = (v69 + v67 * v59);
                                v71 = (v69 + 2 * v67);
                                v72 = *v70;
                                if (*v71 == v72)
                                {
                                  v73 = v59;
                                  v74 = v62;
                                  v75 = v64;
                                  v76 = memcmp(v71 + 4, v70 + 4, 8 * v66);
                                  v64 = v75;
                                  v63 = v881;
                                  v62 = v74;
                                  v59 = v73;
                                  v55 = v882;
                                  v58 = v883.f64[0];
                                  v49 = v884.f64[0];
                                  v61 = *&v887.f64[0];
                                  if (!v76)
                                  {
                                    continue;
                                  }
                                }

                                *v71 = v72;
                                v77 = v71 + 4;
                                v78 = 2 * v66;
                                v79 = (v70 + 4);
                                do
                                {
                                  v80 = *v79++;
                                  *v77++ = v80;
                                  --v78;
                                }

                                while (v78);
                                v71[1] = 0;
                                ++v60;
                                v9 = v892;
                              }

                              while (v60 != *&v58);
                              v45 = *&v876.f64[0];
                            }

                            *(*&v49 + 32) = *(*&v49 + 8 * v59 + 16);
                            **&v49 &= ~0x80000000;
                            *(*&v49 + 8) = v886.i32[0];
                            os_unfair_lock_unlock(&CA::Render::PresentationModifierShmem::_fetch_lock);
                            v56 = *&v887.f64[0];
                            v47 = v878.i64[0];
                          }
                        }

                        v81 = *(v47 + 24);
                        if (v81 < v56 >> 3)
                        {
                          v82 = *&v49 + v55 - 8 * v81;
                          v83 = *(v82 - 8);
                          if (v83)
                          {
                            v84 = (16 * v83) | 8;
                            v85 = *(v82 - 4);
                            if (3 * v84 + v85 <= v56 && !*(*&v49 + v85 + 2 * v84 + 42))
                            {
                              v909.i64[1] |= 0x700uLL;
                            }
                          }
                        }
                      }

                      v11 = v893;
                      if ((*(v47 + 13) & 4) != 0)
                      {
                        v909.i64[1] |= 0x100000000000uLL;
                      }

                      ++v46;
                    }

                    while (v46 != v45);
                  }
                }
              }
            }

            __asm { FMOV            V0.2D, #1.0 }

            v884 = _Q0;
            v897 = _Q0;
            v886.i64[0] = *(v11 + 172);
            LODWORD(v887.f64[0]) = byte_1ED4E984F | (v886.i64[0] >> 35) & 1;
            v89 = LODWORD(v887.f64[0]) | (v886.i64[0] >> 20) & 1;
            v90 = v890;
            v91 = v891;
            v92 = *(v891 + 96);
            if (v92)
            {
              v93 = (v92 + 8);
            }

            else
            {
              v93 = 0;
            }

            if (*(v890 + 18))
            {
              v94 = v902;
              v10 = v889;
              if (v902 < 0.0)
              {
LABEL_147:
                v114 = *(v9 + 4);
                if (v114 != v890)
                {
                  CA::Render::Update::release_object(*v10, v114);
                  *(v9 + 4) = v90;
                  if (!atomic_fetch_add((v90 + 8), 1u))
                  {
                    atomic_fetch_add((v90 + 8), 0xFFFFFFFF);
                  }
                }

                if (v89)
                {
                  v115 = &v897;
                }

                else
                {
                  v115 = 0;
                }

                CA::Render::LayerNode::update_frame_transform(v9, v115->f64, v93);
                v116 = 0;
                v117 = v90;
                goto LABEL_370;
              }
            }

            else
            {
              v95 = *(v890 + 17);
              v10 = v889;
              if (!v95)
              {
                goto LABEL_147;
              }

              if (!*(v95 + 136))
              {
                goto LABEL_147;
              }

              v94 = v902;
              if (v902 < 0.0)
              {
                goto LABEL_147;
              }
            }

            *&v883.f64[0] = v93;
            v878.i32[0] = LODWORD(v887.f64[0]) | (v886.i64[0] >> 20) & 1;
            if (v894)
            {
              v96 = v894 + 6;
              v97 = v894[6];
              if (v97)
              {
                v98 = 0;
                v99 = v907;
                *&_Q0.f64[0] = 134220290;
                v876 = _Q0;
                v882 = xmmword_183E21160;
                v881 = xmmword_183E21170;
                do
                {
                  while (1)
                  {
                    v100 = *v97;
                    v101 = *(*v97 + 40);
                    if (v101)
                    {
                      v102 = v101[5];
                      v103 = CA::Render::Timing::end_time(v101);
                    }

                    else
                    {
                      v102 = 0.0;
                      v103 = INFINITY;
                    }

                    *a7.i64 = v99 >= 0.0 ? v103 : v102;
                    if (!((*v100)[12])(v100, v94, a7, v99))
                    {
                      break;
                    }

                    if (BYTE8(xmmword_1ED4E97DC) == 1)
                    {
                      v918 = 0uLL;
                      v919.f64[0] = 0.0;
                      CA::Render::show_object(&v918, v100);
                      if (x_log_get_render(void)::once[0] != -1)
                      {
                        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
                      }

                      v105 = x_log_get_render(void)::log;
                      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
                      {
                        v106 = mach_absolute_time();
                        v107 = CATimeWithHostTime(v106);
                        v108 = v894[3];
                        if (v108)
                        {
                          v872.i32[0] = *(*&v108 + 16);
                        }

                        else
                        {
                          v872.i32[0] = 0;
                        }

                        v109 = v894[2];
                        v875 = v105;
                        if (v109)
                        {
                          v110 = *(*&v109 + 128);
                          if (v110)
                          {
                            v111 = v110 + 28;
                          }

                          else
                          {
                            v111 = 0;
                          }
                        }

                        else
                        {
                          v111 = 0;
                        }

                        v112 = *(v100 + 20);
                        LODWORD(v871) = *(v100 + 21);
                        v113 = x_stream_get(&v918);
                        *v929 = LODWORD(v876.f64[0]);
                        *&v929[4] = v107;
                        *&v929[12] = 1024;
                        *&v929[14] = v872.i32[0];
                        *&v929[18] = 2080;
                        *&v929[20] = v111;
                        *&v929[28] = 2048;
                        *&v929[30] = v894;
                        *&v929[38] = 2048;
                        *&v929[40] = v100;
                        *&v929[48] = 2048;
                        *&v929[50] = v94;
                        *&v929[58] = 2048;
                        *&v929[60] = v99;
                        *&v929[68] = 1024;
                        *&v929[70] = v112;
                        *&v929[74] = 1024;
                        *&v929[76] = v871;
                        *&v929[80] = 2080;
                        *&v929[82] = v113;
                        _os_log_impl(&dword_183AA6000, v875, OS_LOG_TYPE_DEFAULT, "%f %x %s (%p): collecting %p (t %f; speed %g; eval %u; frames %u):\n%s", v929, 0x5Au);
                        v9 = v892;
                      }

                      if (*&v918.f64[0])
                      {
                        free(*&v918.f64[0]);
                      }
                    }

                    if (BYTE11(xmmword_1ED4E980C) == 1)
                    {
                      kdebug_trace();
                    }

                    CA::Render::invalidate_animation(v894, v100, v104);
                    v97 = x_list_remove_head(v97);
                    *v96 = v97;
                    v98 = 1;
                    if (!v97)
                    {
                      goto LABEL_172;
                    }
                  }

                  v96 = (v97 + 1);
                  v97 = v97[1];
                }

                while (v97);
                if (v98)
                {
LABEL_172:
                  *&v894[13] |= 0x80000uLL;
                  v909 = vorrq_s8(v909, xmmword_183E212A0);
                }
              }
            }

            *&v929[12] = 0;
            v934 = 0u;
            v933 = 0u;
            *v929 = v902;
            *&v929[8] = v907;
            v90 = v890;
            *&v929[16] = v890;
            *&v929[24] = v893;
            *&v929[32] = v9;
            *&v933 = 0x10000000000;
            v931 = 0u;
            v930 = 0u;
            *&v929[136] = 0u;
            memset(&v929[40], 0, 80);
            *&v929[120] = v884;
            v932 = v884;
            BYTE8(v933) = (v917 >> 3) & 7;
            BYTE8(v934) = LOBYTE(v887.f64[0]) & 1;
            v121 = *(v890 + 17);
            if (!v121)
            {
              goto LABEL_265;
            }

            v122 = *(v121 + 136);
            if (!v122 || !*(v122 + 16))
            {
              goto LABEL_265;
            }

            if (x_malloc_get_zone::once != -1)
            {
              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
            }

            v123 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xA0uLL, 0xDEEC3011uLL);
            v126 = v123;
            if (v123)
            {
              CA::Render::Layer::Layer(v123, *&v929[16]);
            }

            v127 = *&v929[40];
            *&v929[40] = v126;
            if (v127 && atomic_fetch_add(v127 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v127 + 16))(v127);
            }

            v128 = *(v122 + 16);
            if (!v128)
            {
LABEL_265:
              CA::Render::AnimationEvaluator::first_pass(v929, (*(v893 + 172) >> 34) & 1);
              v192 = *&v934;
              v10 = v889;
              if (*&v934 != 0.0)
              {
                v193 = v889[8];
                v190.f64[0] = *(v193 + 82);
                if (v190.f64[0] >= *&v934)
                {
                  *&v191.f64[0] = v934;
                }

                else
                {
                  v191.f64[0] = *(v193 + 82);
                }

                if (v190.f64[0] != 0.0)
                {
                  v192 = v191.f64[0];
                }

                *(v193 + 82) = v192;
              }

              add = atomic_fetch_add((v90 + 8), 1u);
              v89 = v878.i32[0];
              v93 = *&v883.f64[0];
              if (!add)
              {
                atomic_fetch_add((v90 + 8), 0xFFFFFFFF);
              }

              v195 = BYTE8(v934);
              v91 = v891;
              if ((BYTE8(v934) & 2) != 0)
              {
                if (*&v929[40])
                {
                  v196 = *&v929[40];
                }

                else
                {
                  v196 = *&v929[16];
                }

                v197 = *(v9 + 4);
                if (v197 != v196)
                {
                  CA::Render::Update::release_object(*v10, v197);
                  *(v9 + 4) = v196;
                  if (!atomic_fetch_add(v196 + 2, 1u))
                  {
                    atomic_fetch_add(v196 + 2, 0xFFFFFFFF);
                  }
                }

                if (v89)
                {
                  v198 = &v897;
                }

                else
                {
                  v198 = 0;
                }

                CA::Render::LayerNode::update_frame_transform(v9, v198->f64, v93);
                CA::Render::AnimationEvaluator::second_pass(v929);
                if ((BYTE8(v934) & 4) == 0)
                {
                  goto LABEL_339;
                }
              }

              else if ((BYTE8(v934) & 4) == 0)
              {
                goto LABEL_329;
              }

              if ((*(*&v929[16] + 13) & 1) != 0 || (v199 = *(*&v929[16] + 144), v200 = *(v199 + 16), !v200))
              {
                v204 = 0;
                goto LABEL_327;
              }

              v201 = 0;
              while (1)
              {
                v202 = *(v199 + 24 + 8 * v201);
                if ((*(v202 + 12) & 0x201FF) == 0x13D)
                {
                  v918.f64[0] = *v929;
                  if (CA::Render::Animation::map_time(v202, v918.f64, 0, 0, 0))
                  {
                    v205 = *&v929[40];
                    v90 = v890;
                    v89 = v878.i32[0];
                    if (!*&v929[40])
                    {
                      if (x_malloc_get_zone::once != -1)
                      {
                        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                      }

                      v205 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xA0uLL, 0xDEEC3011uLL);
                      if (v205)
                      {
                        v205 = CA::Render::Layer::Layer(v205, *&v929[16]);
                      }

                      v206 = *&v929[40];
                      *&v929[40] = v205;
                      if (v206)
                      {
                        if (atomic_fetch_add(v206 + 2, 0xFFFFFFFF) == 1)
                        {
                          (*(*v206 + 16))(v206);
                        }

                        v205 = *&v929[40];
                      }
                    }

                    *(v205 + 12) |= 0x1000u;
                    ++*(v202 + 84);
                    v207 = *&v929[40];
                    HIDWORD(v192) = HIDWORD(v918.f64[0]);
                    v208 = *(v202 + 128);
                    if (v208 && *(v208 + 12) != 30)
                    {
                      goto LABEL_325;
                    }

                    v209 = *(v202 + 104);
                    v210 = v209;
                    v211 = (*(v202 + 108) - v209);
                    v212 = *(v202 + 96);
                    if (v212 == 255)
                    {
                      v213 = *(v202 + 112);
                      if (v213)
                      {
                        v212 = *(v213 + 24);
                      }

                      else
                      {
                        v212 = 0;
                      }
                    }

                    v214 = v210 + v918.f64[0] * v211;
                    v215 = CA::Render::Transition::lookup_transition(v212, v189, v203);
                    if (v215 && (v216 = v214, (v217 = (**v215)(v215, v202, v207, v212, v216)) != 0))
                    {
                      v218 = v217;
                      BYTE8(v934) |= 8u;
                      v219 = *&v929[40];
                      *&v929[40] = v218;
                      v91 = v891;
                      if (v219 && atomic_fetch_add(v219 + 2, 0xFFFFFFFF) == 1)
                      {
                        (*(*v219 + 16))(v219);
                      }

LABEL_325:
                      v204 = 0;
LABEL_326:
                      v93 = *&v883.f64[0];
                    }

                    else
                    {
                      if (x_malloc_get_zone::once != -1)
                      {
                        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                      }

                      v91 = v891;
                      v204 = malloc_type_zone_malloc(malloc_zone, 0x50uLL, 0x165299FDuLL);
                      if (!v204)
                      {
                        goto LABEL_325;
                      }

                      v220 = *(v202 + 12);
                      *(v204 + 2) = 1;
                      *(v204 + 3) = 60;
                      ++dword_1ED4EAB28;
                      *v204 = &unk_1EF1FA338;
                      v192 = *(v202 + 96);
                      v204[2] = v192;
                      v221 = *(v202 + 120);
                      if (v221)
                      {
                        v222 = (v221 + 8);
                        if (!atomic_fetch_add((v221 + 8), 1u))
                        {
                          v221 = 0;
                          atomic_fetch_add(v222, 0xFFFFFFFF);
                        }
                      }

                      *(v204 + 3) = v221;
                      v223 = *(v202 + 112);
                      if (v223)
                      {
                        v224 = (v223 + 8);
                        v225 = atomic_fetch_add((v223 + 8), 1u);
                        v93 = *&v883.f64[0];
                        if (!v225)
                        {
                          v223 = 0;
                          atomic_fetch_add(v224, 0xFFFFFFFF);
                        }
                      }

                      else
                      {
                        v93 = *&v883.f64[0];
                      }

                      v372 = v220 & 0x6000000;
                      *(v204 + 4) = v223;
                      v373 = *(v202 + 128);
                      if (v373)
                      {
                        v374 = (v373 + 8);
                        if (!atomic_fetch_add((v373 + 8), 1u))
                        {
                          v373 = 0;
                          atomic_fetch_add(v374, 0xFFFFFFFF);
                        }
                      }

                      *(v204 + 5) = v373;
                      v375 = v214;
                      *(v204 + 12) = v375;
                      v204[7] = 0.0;
                      *(v204 + 16) = *(v202 + 136);
                      *(v204 + 17) = 0;
                      *(v204 + 18) = *(v202 + 140);
                      *(v204 + 19) = 0;
                      *(v204 + 3) |= v372;
                    }

LABEL_327:
                    *(v9 + 15) = v204;
                    if ((v195 & 2) == 0 || (BYTE8(v934) & 8) != 0)
                    {
LABEL_329:
                      if (*&v929[40])
                      {
                        v226 = *&v929[40];
                      }

                      else
                      {
                        v226 = *&v929[16];
                      }

                      v227 = *(v9 + 4);
                      if (v227 != v226)
                      {
                        CA::Render::Update::release_object(*v10, v227);
                        *(v9 + 4) = v226;
                        if (!atomic_fetch_add(v226 + 2, 1u))
                        {
                          atomic_fetch_add(v226 + 2, 0xFFFFFFFF);
                        }
                      }

                      if (v89)
                      {
                        v228 = &v897;
                      }

                      else
                      {
                        v228 = 0;
                      }

                      CA::Render::LayerNode::update_frame_transform(v9, v228->f64, v93);
                    }

LABEL_339:
                    v11 = v893;
                    if ((LOBYTE(v887.f64[0]) & 1) == 0 || (BYTE8(v934) & 0x10) == 0)
                    {
                      goto LABEL_360;
                    }

                    v229 = v933;
                    if ((v933 & 0x1000) == 0)
                    {
                      v230 = v913;
                      v231 = v897;
                      if ((v933 & 0x200) != 0 && (v933 & 0x30) != 0)
                      {
                        v232 = 9;
                        goto LABEL_347;
                      }

                      if ((v917 & 0x200) != 0)
                      {
                        v300 = *(*&v929[32] + 56);
                        if (!v300 || (v192 = *(v300 + 24), v192 == 0.0) && (v192 = *(v300 + 56), v192 == 0.0))
                        {
                          v301 = *&v929[40];
                          if (*&v929[40])
                          {
                            v302 = *&v929[40];
                          }

                          else
                          {
                            v302 = *&v929[16];
                          }

                          v303 = *(*&v929[32] + 88);
                          if (v303)
                          {
                            v304 = *(v303 + 32);
                            if (v304 && (v305 = *(v304 + 136)) != 0)
                            {
                              v306 = *(v305 + 24);
                              if (v306)
                              {
                                v883 = v897;
                                v887 = v913;
                                if (*(v306 + 16) <= 0xFu)
                                {
                                  v307 = &CA::Mat4Impl::mat4_identity_double;
                                }

                                else
                                {
                                  v307 = (v306 + 24);
                                }

                                if (CA::Mat4Impl::mat4_is_projective(v307, v189))
                                {
                                  v230 = v887;
                                  v231 = v883;
                                  if ((v229 & 0x400) != 0)
                                  {
                                    v308 = 10;
                                    goto LABEL_563;
                                  }

LABEL_542:
                                  v336 = *(v302 + 136);
                                  if (v336)
                                  {
                                    v337 = *(v336 + 168);
                                  }

                                  else
                                  {
                                    v338 = 0.0;
                                    if ((*(v302 + 50) & 0x40) == 0)
                                    {
                                      v338 = 0.5;
                                    }

                                    v337 = vdupq_lane_s64(*&v338, 0);
                                  }

                                  v191 = vcvtq_f64_f32(v914);
                                  v192 = v915;
                                  v190 = *(v302 + 88);
                                  if ((v229 & 0x80) == 0)
                                  {
                                    if (v229)
                                    {
                                      v339 = vmulq_f64(v190, v230);
                                      v340 = vsubq_f64(v884, v337);
                                      __asm { FMOV            V16.2D, #-0.5 }

                                      *&v929[56] = vmulq_f64(*&v929[56], v230);
                                      *&v929[88] = vmulq_f64(*&v929[88], v230);
                                      *&v929[72] = vmulq_f64(*&v929[72], v230);
                                      *&v929[136] = vmulq_f64(*&v929[136], v230);
                                      v342 = vaddq_f64(vaddq_f64(*&v929[56], v191), *&v929[136]);
                                      v343 = vmulq_f64(v339, *&v929[104]);
                                      v344 = vmulq_f64(*&v929[88], v231);
                                      v345 = vaddq_f64(v343, v344);
                                      v346 = vmlsq_f64(v342, v337, v345);
                                      v347 = vnegq_f64(v342);
                                      v348 = vmlaq_f64(v342, v340, v345);
                                      v349 = vcvt_f32_f64(vnegq_f64(vmlaq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmlaq_f64(vcvtq_f64_f32(vcvt_f32_f64(vmlaq_f64(v347, v337, v344))), vaddq_f64(v337, _Q16), v343))), v231, *&v929[72])));
                                      v914 = v349;
                                      v350 = vbslq_s8(vcgtq_f64(v337, v340), v337, v340);
                                      v351 = vmulq_f64(v343, v350);
                                      v352 = sqrt(vaddvq_f64(vmulq_f64(v351, v351)));
                                      v353 = 0.0;
                                      if ((v229 & 0x100) != 0)
                                      {
                                        v354 = vmulq_f64(vmulq_f64(vmulq_f64(v231, v230), v190), v350);
                                        v353 = fabs(*(&v930 + 1)) * sqrt(vaddvq_f64(vmulq_f64(v354, v354)));
                                      }

                                      v190.f64[0] = v352 + v353 + sqrtf(vaddv_f32(vmul_f32(v349, v349)));
                                      v355 = vbslq_s8(vcagtq_f64(v346, v348), vabsq_f64(v346), vabsq_f64(v348));
                                      v356 = v353 + sqrt(vaddvq_f64(vmulq_f64(v355, v355)));
                                      if (v190.f64[0] > v356)
                                      {
                                        v356 = v190.f64[0];
                                      }

                                      if ((*(v301 + 13) & 9) == 0)
                                      {
                                        v190.f64[0] = v356;
                                      }

                                      v11 = v893;
                                      v90 = v890;
                                      v89 = v878.i32[0];
                                      if ((v229 & 0x800) != 0)
                                      {
                                        v357 = vmulq_f64(vmulq_f64(v339, v350), vmulq_f64(*&v929[120], v932));
                                        v352 = sqrt(vaddvq_f64(vmulq_f64(v357, v357)));
                                      }

                                      v191.f64[0] = v353 + v192 + v352;
                                      *v191.f64 = v191.f64[0];
                                      v915 = *v191.f64;
                                    }

                                    else
                                    {
                                      v190.f64[0] = 0.0;
                                      v11 = v893;
                                      v90 = v890;
                                      v89 = v878.i32[0];
                                    }

                                    goto LABEL_648;
                                  }

                                  if (*(v306 + 16) <= 0xFu)
                                  {
                                    v358 = &CA::Mat4Impl::mat4_identity_double;
                                  }

                                  else
                                  {
                                    v358 = (v306 + 24);
                                  }

                                  if ((v229 & 0xFFFFEF7C) == 0 && v358[3] == 0.0 && v358[7] == 0.0)
                                  {
                                    v89 = v878.i32[0];
                                    if (v336)
                                    {
                                      v376 = *(v336 + 192) - *(v336 + 184);
                                    }

                                    else
                                    {
                                      v376 = 0.0;
                                    }

                                    v389 = v358[11];
                                    v390 = v358[15] + v389 * v376;
                                    v391 = -(v389 * *&v930);
                                    v392 = v390 * v390;
                                    if (v336)
                                    {
                                      v393 = *(v336 + 168);
                                    }

                                    else
                                    {
                                      v394 = 0.0;
                                      if ((*(v302 + 50) & 0x40) == 0)
                                      {
                                        v394 = 0.5;
                                      }

                                      v393 = vdupq_lane_s64(*&v394, 0);
                                    }

                                    v395 = 1.0 / v390;
                                    v396 = *(v302 + 56);
                                    v397 = *(v304 + 72);
                                    v398 = vmulq_f64(v393, v190);
                                    v399 = *(v304 + 88);
                                    v400 = *(v304 + 136);
                                    v401 = v391 / v392;
                                    if (v400)
                                    {
                                      v402 = *(v400 + 168);
                                    }

                                    else
                                    {
                                      v403 = 0.0;
                                      if ((*(v304 + 50) & 0x40) == 0)
                                      {
                                        v403 = 0.5;
                                      }

                                      v402 = vdupq_lane_s64(*&v403, 0);
                                    }

                                    v11 = v893;
                                    v90 = v890;
                                    v404 = vsubq_f64(v396, vaddq_f64(v397, vmlaq_f64(v398, v399, v402)));
                                    v405 = vaddq_f64(v404, v190);
                                    v406 = vmulq_n_f64(*&v929[56], v395);
                                    v407 = vmlaq_f64(v191, v230, vmlaq_n_f64(v406, v404, v401));
                                    v408 = vmlaq_f64(v191, v230, vmlaq_n_f64(v406, v405, v401));
                                    __asm { FMOV            V6.2D, #0.5 }

                                    v914 = vcvt_f32_f64(vmulq_f64(vaddq_f64(v408, v407), _Q6));
                                    v190 = vmulq_n_f64(vmulq_f64(v190, v230), v401);
                                    *v190.f64 = v192 + sqrt(vaddvq_f64(vmulq_f64(v190, v190))) * 0.5;
                                    v915 = *v190.f64;
                                    v190.f64[0] = fabs(v407.f64[0]);
                                    v410 = fabs(v408.f64[0]);
                                    if (v190.f64[0] <= v410)
                                    {
                                      v190.f64[0] = v410;
                                    }

                                    v191 = vabsq_f64(vzip2q_s64(v407, v408));
                                    if (v191.f64[0] <= v191.f64[1])
                                    {
                                      v191.f64[0] = v191.f64[1];
                                    }

                                    v190.f64[0] = sqrt(v190.f64[0] * v190.f64[0] + v191.f64[0] * v191.f64[0]);
LABEL_648:
                                    v411 = v190.f64[0] + v192;
                                    if (CA::Render::AnimationEvaluator::velocity_pass(CA::Vec2<double>,CA::Vec2<double>,BOOL,CA::Vec2<float> &,float &)::once != -1)
                                    {
                                      dispatch_once(&CA::Render::AnimationEvaluator::velocity_pass(CA::Vec2<double>,CA::Vec2<double>,BOOL,CA::Vec2<float> &,float &)::once, &__block_literal_global_21076);
                                    }

                                    if (CA::Render::AnimationEvaluator::velocity_pass(CA::Vec2<double>,CA::Vec2<double>,BOOL,CA::Vec2<float> &,float &)::has_thresholds == 1)
                                    {
                                      v192 = *&CA::Render::AnimationEvaluator::velocity_pass(CA::Vec2<double>,CA::Vec2<double>,BOOL,CA::Vec2<float> &,float &)::thresholds;
                                      if (v411 >= *&CA::Render::AnimationEvaluator::velocity_pass(CA::Vec2<double>,CA::Vec2<double>,BOOL,CA::Vec2<float> &,float &)::thresholds)
                                      {
                                        v233 = 5;
                                      }

                                      else
                                      {
                                        v192 = *(&CA::Render::AnimationEvaluator::velocity_pass(CA::Vec2<double>,CA::Vec2<double>,BOOL,CA::Vec2<float> &,float &)::thresholds + 1);
                                        if (v411 >= *(&CA::Render::AnimationEvaluator::velocity_pass(CA::Vec2<double>,CA::Vec2<double>,BOOL,CA::Vec2<float> &,float &)::thresholds + 1))
                                        {
                                          v233 = 4;
                                        }

                                        else
                                        {
                                          v192 = *(&CA::Render::AnimationEvaluator::velocity_pass(CA::Vec2<double>,CA::Vec2<double>,BOOL,CA::Vec2<float> &,float &)::thresholds + 2);
                                          if (v411 >= *(&CA::Render::AnimationEvaluator::velocity_pass(CA::Vec2<double>,CA::Vec2<double>,BOOL,CA::Vec2<float> &,float &)::thresholds + 2))
                                          {
                                            v233 = 3;
                                          }

                                          else if ((BYTE8(v934) & 0x40) != 0)
                                          {
                                            v233 = 2;
                                          }

                                          else
                                          {
                                            v233 = 1;
                                          }
                                        }
                                      }
                                    }

                                    else
                                    {
                                      v233 = 6;
                                    }

                                    if ((byte_1ED4E9850 & 1) == 0 && BYTE8(v933) < v233)
                                    {
                                      v233 = BYTE8(v933);
                                    }
                                  }

                                  else
                                  {
                                    v308 = 5;
LABEL_563:
                                    BYTE4(v933) = v308;
                                    LODWORD(v933) = 4096;
                                    v233 = 6;
                                    v11 = v893;
                                    v90 = v890;
                                    v89 = v878.i32[0];
                                  }

LABEL_349:
                                  v234 = *(v11 + 24);
                                  if (v234 && v233 == 6)
                                  {
                                    if (BYTE9(v933) == 4)
                                    {
                                      LODWORD(v192) = 1117782016;
                                      LODWORD(v190.f64[0]) = 1123024896;
                                      LODWORD(v191.f64[0]) = 1117782016;
LABEL_355:
                                      [v234 addFrameRateRange:{v192, v190.f64[0], v191.f64[0]}];
                                    }

                                    else if (BYTE9(v933) == 5)
                                    {
                                      LODWORD(v190.f64[0]) = 1123024896;
                                      LODWORD(v192) = 1117782016;
                                      LODWORD(v191.f64[0]) = 1123024896;
                                      goto LABEL_355;
                                    }
                                  }

                                  v235 = v917 & 0xFFC7 | (8 * (BYTE8(v933) & 7));
                                  if ((v917 & 7) != 6)
                                  {
                                    v235 = v917 & 0xFFC0 | (8 * (BYTE8(v933) & 7)) | v233;
                                  }

                                  v917 = v235;
                                  if (v233 == 6)
                                  {
                                    [*(v11 + 24) addReason:BYTE4(v933) | 0x20000u];
                                  }

LABEL_360:
                                  v117 = *(v9 + 4);
                                  if (v117 != v90)
                                  {
                                    v236 = *(v117 + 12);
                                    if ((v236 & 0x1000) != 0 || !CA::Render::Layer::is_containerable(*(v9 + 4), v189))
                                    {
                                      v237 = v236 & 0xFFFFF7FF;
                                    }

                                    else
                                    {
                                      v237 = v236 | 0x800;
                                    }

                                    *(v117 + 12) = v237;
                                    v117 = *(v9 + 4);
                                  }

                                  v238 = *&v929[40];
                                  if (*&v929[40] && atomic_fetch_add((*&v929[40] + 8), 0xFFFFFFFF) == 1)
                                  {
                                    (*(*v238 + 16))(v238);
                                  }

                                  v116 = 1;
LABEL_370:
                                  v239 = v91[11];
                                  LODWORD(v882) = v116;
                                  if (v239 && ((v240 = CA::Render::Context::root_layer_handle(v239)) == 0 ? (v241 = 0) : (v241 = *(v240 + 2)), v241 == v90 && (v385 = *(*v91 + 32), (v386 = *(v385 + 136)) != 0) && (v387 = *v386) != 0 && (v388 = *(v387 + 12), v388 == 31)))
                                  {
                                    if ((v388 & 0x1000) == 0 || (v827 = v93, *(v385 + 72) == *(v117 + 72)) && *(v385 + 80) == *(v117 + 80) && *(v385 + 88) == *(v117 + 88) && *(v385 + 96) == *(v117 + 96))
                                    {
                                      if ((v388 & 0x4000) == 0)
                                      {
                                        v242 = v117;
                                        goto LABEL_630;
                                      }

                                      v928[0] = xmmword_183E20E00;
                                      v928[1] = 0u;
                                      v928[2] = xmmword_183E20E60;
                                      memset(&v928[3], 0, 32);
                                      v928[5] = xmmword_183E20E00;
                                      v928[6] = 0u;
                                      v928[7] = xmmword_183E20E60;
                                      *&v896[0] = &unk_1EF204020;
                                      *&v896[1] = v928;
                                      v836 = *(v892 + 11);
                                      if (v836)
                                      {
                                        CA::Render::LayerNode::MapGeometry::map(v896, 0, v836);
                                      }

                                      memset(v929, 0, sizeof(v929));
                                      v839 = CA::Transform::set(v929, v928, 1);
                                      v840 = *v889;
                                      v841 = *(*v889 + 146);
                                      if (v841)
                                      {
                                        CA::Transform::concat_left(v929, v841, v837, v838);
                                      }

                                      v842 = *(v892 + 7);
                                      if (v842)
                                      {
                                        v927 = 0;
                                        v925 = 0u;
                                        v926 = 0u;
                                        v923 = 0u;
                                        v924 = 0u;
                                        v921 = 0u;
                                        v922 = 0u;
                                        v919 = 0u;
                                        v920 = 0u;
                                        v918 = 0u;
                                        CA::Transform::set(&v918, v842, 1);
                                        CA::Transform::concat_left(v929, &v918, v843, v844);
                                      }

                                      else
                                      {
                                        v839.n128_u64[0] = *(v892 + 8);
                                        CA::Transform::translate(v929, v839, *(v892 + 9), *(v892 + 10));
                                      }

                                      if ((*(v840 + 1379) & 4) != 0)
                                      {
                                        v927 = 0;
                                        v925 = 0u;
                                        v926 = 0u;
                                        v923 = 0u;
                                        v924 = 0u;
                                        v921 = 0u;
                                        v922 = 0u;
                                        v919 = 0u;
                                        v920 = 0u;
                                        v918 = 0u;
                                        v845 = *(v840 + 672);
                                        v846 = *(v840 + 688);
                                        v847 = *(v840 + 704);
                                        v895[0] = *(v840 + 656);
                                        v895[1] = v845;
                                        v895[2] = v846;
                                        v895[3] = v847;
                                        v848 = *(v840 + 736);
                                        v849 = *(v840 + 752);
                                        v850 = *(v840 + 768);
                                        v895[4] = *(v840 + 720);
                                        v895[5] = v848;
                                        v895[6] = v849;
                                        v895[7] = v850;
                                        CA::Transform::set(&v918, v895, 1);
                                        CA::Transform::concat_left(v929, &v918, v851, v852);
                                      }

                                      v9 = v892;
                                      CA::Render::LayerNode::set_frame_transform(v892, v929);
                                      v242 = v117;
                                    }

                                    else
                                    {
                                      v828 = X::Allocator0::operator new(0xA0uLL);
                                      v242 = v828;
                                      if (v828)
                                      {
                                        CA::Render::Layer::Layer(v828, v117);
                                      }

                                      v829 = *(*v891 + 32);
                                      v830 = v829[10];
                                      v831 = v829[11];
                                      v832 = v829[12];
                                      v918.f64[0] = v829[9];
                                      v918.f64[1] = v830;
                                      v919.f64[0] = v831 + v918.f64[0];
                                      v919.f64[1] = v830;
                                      v920.f64[0] = v831 + v918.f64[0];
                                      v920.f64[1] = v832 + v830;
                                      v921.f64[0] = v918.f64[0];
                                      v921.f64[1] = v832 + v830;
                                      v833 = *(v117 + 136);
                                      if (v833)
                                      {
                                        v835 = *(v833 + 168);
                                        v834 = *(v833 + 176);
                                      }

                                      else
                                      {
                                        v834 = 0.0;
                                        if ((*(v117 + 50) & 0x40) == 0)
                                        {
                                          v834 = 0.5;
                                        }

                                        v835 = v834;
                                      }

                                      v853 = 0;
                                      *v928 = v835;
                                      *(v928 + 1) = v834;
                                      v854 = vmlaq_n_f64(v918, vsubq_f64(v919, v918), v835);
                                      v855 = vmlaq_n_f64(v854, vmlaq_n_f64(vsubq_f64(v921, v854), vsubq_f64(v920, v921), v835), v834);
                                      v887 = v855;
                                      do
                                      {
                                        v856 = (&v918 + v853);
                                        v857 = vsubq_f64(*(&v918 + v853 + 16), v855);
                                        *v856 = vsubq_f64(*(&v918 + v853), v855);
                                        v856[1] = v857;
                                        v853 += 32;
                                      }

                                      while (v853 != 64);
                                      v895[0] = *(v117 + 88);
                                      CA::Mat4Impl::mat4_set_corner_matrix(v929, &v918, v895, v928);
                                      LODWORD(v896[0]) = 716;
                                      CA::Render::Layer::set_property_value(v242, v896, 1, 0, 0x10, v929, v858);
                                      *(v242 + 40) &= ~0x80000000000uLL;
                                      *(v242 + 56) = v887;
                                      v859 = *(v892 + 4);
                                      if (v859 != v242)
                                      {
                                        CA::Render::Update::release_object(*v889, v859);
                                        *(v892 + 4) = v242;
                                        if (!atomic_fetch_add((v242 + 8), 1u))
                                        {
                                          atomic_fetch_add((v242 + 8), 0xFFFFFFFF);
                                        }
                                      }

                                      if (v89)
                                      {
                                        v860 = &v897;
                                      }

                                      else
                                      {
                                        v860 = 0;
                                      }

                                      CA::Render::LayerNode::update_frame_transform(v892, v860->f64, v827);
                                      if (atomic_fetch_add((v242 + 8), 0xFFFFFFFF) == 1)
                                      {
                                        (*(*v242 + 16))(v242);
                                      }

LABEL_630:
                                      v9 = v892;
                                    }

                                    v10 = v889;
                                    v90 = v890;
                                    v11 = v893;
                                  }

                                  else
                                  {
                                    v242 = v117;
                                  }

                                  if (*(v242 + 13) & 8) != 0 && (*(v11 + 344))
                                  {
                                    v243 = *(v11 + 47);
                                    if (v243)
                                    {
                                      if ((*(*v243 + 32))(v243, v10[9], v9, v242))
                                      {
                                        if (x_malloc_get_zone::once != -1)
                                        {
                                          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                                        }

                                        v244 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xA0uLL, 0xDEEC3011uLL);
                                        if (v244)
                                        {
                                          v244 = CA::Render::Layer::Layer(v244, v242);
                                        }

                                        *(v244 + 12) = *(v244 + 12) & 0xFFFFE7FF | 0x1000;
                                        v245 = *(v9 + 4);
                                        v242 = v244;
                                        if (v245 != v244)
                                        {
                                          CA::Render::Update::release_object(*v10, v245);
                                          *(v9 + 4) = v242;
                                          if (!atomic_fetch_add((v242 + 8), 1u))
                                          {
                                            atomic_fetch_add((v242 + 8), 0xFFFFFFFF);
                                          }
                                        }

                                        if (atomic_fetch_add((v242 + 8), 0xFFFFFFFF) == 1)
                                        {
                                          (*(*v242 + 16))(v242);
                                        }
                                      }
                                    }
                                  }

                                  v246 = *(v242 + 104);
                                  *&v887.f64[0] = v242;
                                  if (!v246)
                                  {
                                    goto LABEL_998;
                                  }

                                  v247 = *(v246 + 12);
                                  if (v247 != 24)
                                  {
                                    if (v247 != 25)
                                    {
                                      goto LABEL_961;
                                    }

                                    v909.i64[1] |= 0x100000000080uLL;
                                    v248 = v242;
                                    v249 = v10[9];
                                    if ((*(v248 + 13) & 4) != 0 && (v250 = *(v246 + 464), v250))
                                    {
                                      v251 = CA::Render::Context::context_by_id(v250);
                                      v252 = v251;
                                      if (v251)
                                      {
                                        pthread_mutex_lock((v251 + 72));
                                        LODWORD(v877) = 0;
                                        v249 = v252;
                                        goto LABEL_403;
                                      }

                                      v249 = 0;
                                    }

                                    else
                                    {
                                      v252 = 0;
                                    }

                                    LODWORD(v877) = 1;
LABEL_403:
                                    v896[0] = 0.0;
                                    if (initialized[0] != -1)
                                    {
                                      dispatch_once_f(initialized, 0, init_debug);
                                    }

                                    if (*&dword_1ED4E9730 == 0.0)
                                    {
                                      v256 = *(*&v887.f64[0] + 40);
                                      v257 = *(*&v887.f64[0] + 136);
                                      if (!(*(*&v887.f64[0] + 48) & 1 | (v256 >= 0)) || (v256 & 0xC000000000) != 0)
                                      {
                                        if (v257)
                                        {
                                          goto LABEL_414;
                                        }

                                        v261 = 1.0;
                                      }

                                      else
                                      {
                                        if (v257)
                                        {
                                          v258 = 0;
                                          if (*(v257 + 268) != 1.0)
                                          {
LABEL_414:
                                            v258 = *(v257 + 268);
                                          }

                                          *(v246 + 416) = v258;
LABEL_416:
                                          v260 = *(v257 + 264);
LABEL_421:
                                          *(v246 + 420) = v260;
                                          v262 = v902;
                                          v263 = v907;
                                          v875 = v10[8];
                                          *&v876.f64[0] = v910;
                                          memset(v929, 0, 136);
                                          v899 = 0;
                                          v898 = 0;
                                          os_unfair_lock_lock((v246 + 56));
                                          v265 = *(*(v246 + 16) + 24);
                                          v266 = *(v246 + 456);
                                          v267 = *(v11 + 68);
                                          v268 = 0.0;
                                          *&v883.f64[0] = v246;
                                          *&v881 = v252;
                                          if (v266 == v267)
                                          {
                                            v269 = 0.0;
                                            goto LABEL_794;
                                          }

                                          if (*(v11 + 344))
                                          {
                                            v269 = 0.0;
                                            if (*(v246 + 24))
                                            {
                                              goto LABEL_794;
                                            }
                                          }

                                          v869 = v34;
                                          *(v265 + 328) = *(v11 + 18);
                                          v270 = COERCE_DOUBLE(atomic_load((v265 + 8)));
                                          if ((LODWORD(v270) & 0x40000) != 0)
                                          {
                                            v262 = *(v11 + 10);
                                          }

                                          atomic_fetch_or((v265 + 264), 0x80000000);
                                          __dmb(0xBu);
                                          v271 = *(v265 + 264) & 1;
                                          v272 = (v265 + 48 * (*(v265 + 264) & 1));
                                          v273 = v272[21];
                                          v274 = v272[22];
                                          v275 = v272[23];
                                          v276 = v275 + (v262 - v273) * v274;
                                          if (v272[24] >= v276)
                                          {
                                            v264.f64[0] = v275 + (v262 - v273) * v274;
                                          }

                                          else
                                          {
                                            v264.f64[0] = v272[24];
                                          }

                                          v277 = *(v272 + 24);
                                          v278 = v272[25];
                                          v279 = v272[26];
                                          __dmb(0xBu);
                                          *(v265 + 264) = v271;
                                          if (v264.f64[0] < 0.0)
                                          {
                                            v264.f64[0] = 0.0;
                                          }

                                          if ((v277 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
                                          {
                                            v276 = v264.f64[0];
                                          }

                                          if (v279 < v276)
                                          {
                                            v276 = v279;
                                          }

                                          if (v278 <= v276)
                                          {
                                            v280 = v276;
                                          }

                                          else
                                          {
                                            v280 = v278;
                                          }

                                          v281 = v274 * v263;
                                          *(v246 + 456) = *(v11 + 68);
                                          *(v246 + 392) = v280;
                                          *(v246 + 400) = v281;
                                          *(v246 + 12) &= 0xFFFA08FF;
                                          if (!v249 || v280 < 0.0)
                                          {
                                            CA::Render::ImageQueue::flush_cache(v246);
                                            v269 = 0.0;
                                            v34 = v869;
                                            goto LABEL_794;
                                          }

                                          v899 = 0;
                                          LODWORD(v871) = CAShmemImageQueueCopyImageInfo(v246, *(v246 + 444), v265, v11, v929, 1, &v899, &v898, v280, v281, v264);
                                          if (v929[116])
                                          {
                                            v282 = 16;
                                          }

                                          else
                                          {
                                            v282 = 0;
                                          }

                                          v283 = (LOWORD(v270) & 0x800) == 0 && *&v929[56] == *(v246 + 40) && *&v929[48] == *(v246 + 48);
                                          v870 = CA::Render::ImageQueue::resolved_display_attributes(v246, v893);
                                          if ((*(v870 + 62) & 1) != 0 || (*(v870 + 17) - 2) <= 2)
                                          {
                                            v260 = 0.0;
                                          }

                                          if (*(v246 + 80))
                                          {
                                            CA::Render::ImageQueue::hdr_processor(v246, v284);
                                            v283 &= CA::CAHDRProcessor::should_invalidate_tonemapping((v246 + 88), v870, *(v246 + 224), v260) ^ 1;
                                          }

                                          v285 = *(v246 + 24);
                                          v872.i64[0] = v246 + 24;
                                          if (v285)
                                          {
                                            if (v285[12] == 57)
                                            {
                                              if ((*(*v285 + 304))(v285))
                                              {
                                                CA::Render::ImageQueue::hdr_processor(v246, v284);
                                                v286 = v246;
                                                v287 = v246 + 232;
                                                if (CA::CAHDRProcessor::should_invalidate_tonemapping(v287, v870, *(v286 + 368), v260))
                                                {
                                                  LOBYTE(v283) = 0;
                                                  v288 = v870;
                                                  *v287 = *v870;
                                                  v289 = *(v288 + 1);
                                                  v290 = *(v288 + 2);
                                                  v291 = *(v288 + 4);
                                                  *(v287 + 48) = *(v288 + 3);
                                                  *(v287 + 64) = v291;
                                                  *(v287 + 16) = v289;
                                                  *(v287 + 32) = v290;
                                                  v292 = *(v288 + 5);
                                                  v293 = *(v288 + 6);
                                                  v294 = *(v288 + 7);
                                                  *(v287 + 128) = *(v288 + 16);
                                                  v282 |= 0x400u;
                                                  *(v287 + 96) = v293;
                                                  *(v287 + 112) = v294;
                                                  *(v287 + 80) = v292;
                                                  *(*&v883.f64[0] + 368) = v260;
                                                }
                                              }
                                            }

                                            v295 = *v872.i64[0];
                                            if (*v872.i64[0])
                                            {
                                              v246 = *&v883.f64[0];
                                              if (*(*&v883.f64[0] + 80))
                                              {
                                                LOBYTE(v283) = (((*&v929[20] ^ (v295[3] >> 8)) & 7) == 0) & v283;
                                              }

                                              if (v871)
                                              {
                                                v296 = *&v929[4];
                                                if (((*&v929[4] == *(*&v883.f64[0] + 452)) & v283) != 0)
                                                {
                                                  v297 = *&v929[8];
                                                  v298 = *&v929[20];
                                                  v299 = v265;
                                                  goto LABEL_489;
                                                }

                                                v864 = 1;
LABEL_494:
                                                v313 = *(v246 + 12);
                                                v314 = v313 >> 8;
                                                v315 = *&v929[8];
                                                v316 = v929[8] & 1;
                                                if (((v313 >> 8) & 8) != 0 && (v929[8] & 1) == 0)
                                                {
                                                  *(v246 + 12) = v313 & 0xFFFFF7FF;
                                                }

                                                if (v316)
                                                {
                                                  v317 = 10;
                                                }

                                                else
                                                {
                                                  v317 = 2;
                                                }

                                                v868 = v317 | v282;
                                                if (!v295 || (v314 & 8) >> 3 != v316 || v295[4] != *&v929[12] || v295[5] != *&v929[16] || ((*&v929[20] ^ (v295[3] >> 8)) & 7) != 0)
                                                {
                                                  v868 |= 4u;
                                                }

                                                v318 = v893;
                                                *(v246 + 24) = 0;
                                                *(v246 + 40) = *&v929[56];
                                                *(v246 + 48) = *&v929[48];
                                                *(v246 + 452) = v296;
                                                v866 = *(v246 + 64);
                                                v867 = v295;
                                                if (v866)
                                                {
                                                  if (atomic_fetch_add(v866 + 2, 0xFFFFFFFF) == 1)
                                                  {
                                                    (*(*v866 + 16))(v866);
                                                  }

                                                  *(v246 + 64) = 0;
                                                }

                                                v319 = *(v246 + 80);
                                                if (v319)
                                                {
                                                  if (atomic_fetch_add(v319 + 2, 0xFFFFFFFF) == 1)
                                                  {
                                                    (*(*v319 + 16))(v319);
                                                  }

                                                  *(v246 + 80) = 0;
                                                }

                                                *(v246 + 404) = 0;
                                                v863 = v265;
                                                v865 = v270;
                                                if (*v929 == 4)
                                                {
LABEL_517:
                                                  v878.i32[0] = v89;
                                                  LODWORD(v884.f64[0]) = *&v929[8];
                                                  v320 = IOSurfaceLookup(*&v929[48]);
                                                  v321 = v320;
                                                  if (v320)
                                                  {
                                                    v322 = CA::Render::iosurface_ycbcr_matrix(v320, v284);
                                                    *&v929[118] = v322 | (CA::Render::iosurface_chroma_location(v321, v322) << 8);
                                                  }

                                                  v323 = (*&v883.f64[0] + 488);
                                                  v324 = *(*&v883.f64[0] + 488);
                                                  if (v324)
                                                  {
                                                    v325 = (*&v883.f64[0] + 488);
                                                    while (1)
                                                    {
                                                      while (1)
                                                      {
                                                        v326 = *v324;
                                                        if (*&v929[48] == *(*v324 + 30))
                                                        {
                                                          break;
                                                        }

                                                        v325 = (v324 + 1);
                                                        v324 = v324[1];
                                                        if (!v324)
                                                        {
                                                          goto LABEL_534;
                                                        }
                                                      }

                                                      if (*(v326 + 16) == *&v929[12] && *(v326 + 20) == *&v929[16])
                                                      {
                                                        v327 = CA::Render::Surface::ycbcr_matrix(*v324, v284);
                                                        v329 = *&v929[118];
                                                        if (v327 == v929[118] && CA::Render::Surface::chroma_location(v326, v328) == v329 >> 8)
                                                        {
                                                          v330 = *(v326 + 12);
                                                          if (((v315 ^ ((v330 & 0x1000) >> 12)) & 1) == 0 && ((LOBYTE(v884.f64[0]) & 8) == 0) != (v330 & 0x800) >> 11 && ((*&v929[20] ^ (v330 >> 8)) & 7) == 0)
                                                          {
                                                            break;
                                                          }
                                                        }
                                                      }

                                                      if (atomic_fetch_add((v326 + 8), 0xFFFFFFFF) == 1)
                                                      {
                                                        (*(*v326 + 16))(v326);
                                                      }

                                                      v324 = x_list_remove_head(v324);
                                                      *v325 = v324;
                                                      v318 = v893;
                                                      if (!v324)
                                                      {
                                                        goto LABEL_534;
                                                      }
                                                    }

                                                    atomic_fetch_add((v326 + 36), 1u);
                                                    if (v321)
                                                    {
                                                      CFRelease(v321);
                                                    }

                                                    v9 = v892;
                                                    v318 = v893;
                                                    v10 = v889;
                                                    v89 = v878.i32[0];
                                                    v331 = &CADeviceNeedsDisplayStateControlDependencyWorkaround::b;
                                                  }

                                                  else
                                                  {
LABEL_534:
                                                    v9 = v892;
                                                    v10 = v889;
                                                    v89 = v878.i32[0];
                                                    v331 = &CADeviceNeedsDisplayStateControlDependencyWorkaround::b;
                                                    if (!v321)
                                                    {
                                                      goto LABEL_688;
                                                    }

                                                    v332 = X::Allocator0::operator new(0x178uLL);
                                                    if (!v332)
                                                    {
                                                      goto LABEL_688;
                                                    }

                                                    v326 = v332;
                                                    CA::Render::Surface::Surface(v332, v321, -1, 126, 0, v929[118], v929[119]);
                                                    *v323 = x_list_prepend(*v323, v326);
                                                  }

                                                  v333 = *(v318 + 10) + 0.5;
                                                  *(v326 + 352) = v333;
                                                  v334 = v872.i64[0];
                                                  v335 = v326;
                                                  goto LABEL_538;
                                                }

                                                if (*v929 != 3)
                                                {
                                                  if (*v929 == 2)
                                                  {
                                                    goto LABEL_517;
                                                  }

                                                  v368 = *v872.i64[0];
                                                  v331 = &CADeviceNeedsDisplayStateControlDependencyWorkaround::b;
                                                  if (*v872.i64[0])
                                                  {
                                                    if (atomic_fetch_add(v368 + 2, 0xFFFFFFFF) == 1)
                                                    {
                                                      (*(*v368 + 16))(v368);
                                                    }

                                                    *v872.i64[0] = 0;
                                                  }

                                                  v369 = *(v246 + 32);
                                                  if (v369)
                                                  {
                                                    if (atomic_fetch_add(v369 + 2, 0xFFFFFFFF) == 1)
                                                    {
                                                      (*(*v369 + 16))(v369);
                                                    }

                                                    *(v246 + 32) = 0;
                                                  }

                                                  v370 = *(v246 + 64);
                                                  if (v370)
                                                  {
                                                    if (atomic_fetch_add(v370 + 2, 0xFFFFFFFF) == 1)
                                                    {
                                                      (*(*v370 + 16))(v370);
                                                    }

                                                    *(v246 + 64) = 0;
                                                  }

                                                  v371 = *(v246 + 80);
                                                  if (v371)
                                                  {
                                                    if (atomic_fetch_add(v371 + 2, 0xFFFFFFFF) == 1)
                                                    {
                                                      (*(*v371 + 16))(v371);
                                                    }

                                                    *(*&v883.f64[0] + 80) = 0;
                                                  }

LABEL_688:
                                                  v424 = *v872.i64[0];
                                                  if (*v872.i64[0])
                                                  {
                                                    v265 = v863;
                                                    if (*(v424 + 12) == 57)
                                                    {
                                                      CA::Render::Surface::reload_iosurface_needs_film_grain(*v872.i64[0]);
                                                      *(v424 + 368) &= ~0x100u;
                                                      v425 = *(v424 + 176);
                                                      *(v424 + 176) = 0;
                                                      if (v425 && atomic_fetch_add(v425 + 2, 0xFFFFFFFF) == 1)
                                                      {
                                                        (*(*v425 + 16))(v425);
                                                      }

                                                      CA::Render::Surface::clear_edr_factor(v424);
                                                      v426 = v883.f64[0];
                                                      X::Ref<CA::CASharedEvent>::operator=((*&v883.f64[0] + 504), (*&v883.f64[0] + 496));
                                                      v427 = *(v424 + 336);
                                                      v428 = *(*&v426 + 496);
                                                      if (v428 != v427)
                                                      {
                                                        if (v428)
                                                        {
                                                          CA::CASharedEvent::unref(v428);
                                                        }

                                                        if (v427)
                                                        {
                                                          atomic_fetch_add((v427 + 128), 1u);
                                                        }

                                                        *(*&v426 + 496) = v427;
                                                      }

                                                      v424 = *v872.i64[0];
                                                    }

                                                    CA::Render::update_texture_flags(v424, v265, *&v929[8], *&v929[20]);
                                                    v429 = *&v929[128];
                                                    if (*&v929[128] <= *&v929[132])
                                                    {
                                                      v429 = *&v929[132];
                                                    }

                                                    if (v429 <= 1073741822)
                                                    {
                                                      v430 = CA::Shape::new_shape(&v929[120], v284);
                                                      X::Ref<CA::Shape>::operator=((*v872.i64[0] + 48), v430);
                                                      CA::Shape::unref(v430);
                                                    }

                                                    atomic_fetch_add((*v872.i64[0] + 36), 1u);
                                                    if (*(v331 + 42) != -1)
                                                    {
                                                      dispatch_once_f(initialized, 0, init_debug);
                                                    }

                                                    if (*&dword_1ED4E965C)
                                                    {
                                                      if (*(*v872.i64[0] + 12) == 57)
                                                      {
                                                        v431 = *(*v872.i64[0] + 128);
                                                        if (v431)
                                                        {
                                                          v432 = CAIOSurfaceWriteToFileWithSuffix(v431, "image-queue");
                                                          free(v432);
                                                          if (*&dword_1ED4E965C > 0.0)
                                                          {
                                                            *&dword_1ED4E965C = *&dword_1ED4E965C + -1.0;
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v433 = *(*&v883.f64[0] + 32);
                                                    v265 = v863;
                                                    if (v433)
                                                    {
                                                      v434 = v318;
                                                      v435 = (*(**(v433 + 24) + 80))(*(v433 + 24));
                                                      v436 = (*(**(v433 + 32) + 80))(*(v433 + 32));
                                                      v437 = *&v929[8];
                                                      v438 = *&v929[20];
                                                      v439 = v435;
                                                      v318 = v434;
                                                      CA::Render::update_texture_flags(v439, v265, *&v929[8], *&v929[20]);
                                                      v440 = v437;
                                                      v9 = v892;
                                                      CA::Render::update_texture_flags(v436, v265, v440, v438);
                                                      atomic_fetch_add((v439 + 36), 1u);
                                                      atomic_fetch_add((v436 + 36), 1u);
                                                    }
                                                  }

                                                  v441 = *v872.i64[0];
                                                  v442 = v864;
                                                  v443 = v864 ^ 1;
                                                  if (!*v872.i64[0])
                                                  {
                                                    v443 = 1;
                                                  }

                                                  if (v443)
                                                  {
                                                    goto LABEL_730;
                                                  }

                                                  if (*(v441 + 16) != v867[4])
                                                  {
                                                    goto LABEL_731;
                                                  }

                                                  if (*(v441 + 20) != v867[5])
                                                  {
                                                    goto LABEL_731;
                                                  }

                                                  v444 = *(v441 + 24);
                                                  v445 = *(v867 + 12);
                                                  if (v444 != v445)
                                                  {
                                                    goto LABEL_731;
                                                  }

                                                  v446 = *(v441 + 26);
                                                  v447 = *(v867 + 13);
                                                  if (v446 != v447)
                                                  {
                                                    goto LABEL_731;
                                                  }

                                                  if (*(v867 + 14) + v445 != *(v441 + 28) + v444)
                                                  {
                                                    goto LABEL_731;
                                                  }

                                                  if (*(v867 + 15) + v447 != *(v441 + 30) + v446)
                                                  {
                                                    goto LABEL_731;
                                                  }

                                                  v448 = *(v441 + 12);
                                                  if (v448 != *(v867 + 12))
                                                  {
                                                    goto LABEL_731;
                                                  }

                                                  if (v448 != 57)
                                                  {
                                                    goto LABEL_730;
                                                  }

                                                  CacheMode = *(v441 + 364);
                                                  if (CacheMode == -1)
                                                  {
                                                    CacheMode = IOSurfaceGetCacheMode();
                                                    *(v441 + 364) = CacheMode;
                                                  }

                                                  v450 = v867[91];
                                                  if (v450 == -1)
                                                  {
                                                    v451 = v867;
                                                    v450 = IOSurfaceGetCacheMode();
                                                    v451[91] = v450;
                                                  }

                                                  v9 = v892;
                                                  v318 = v893;
                                                  v10 = v889;
                                                  v442 = v864;
                                                  if (CacheMode == v450 && *(v441 + 144) == v867[36])
                                                  {
LABEL_730:
                                                    v452 = v868;
                                                    v453 = v868 | 4;
                                                  }

                                                  else
                                                  {
LABEL_731:
                                                    v453 = v868 | 4;
                                                    v452 = v868 | 4;
                                                  }

                                                  v270 = v865;
                                                  if ((v866 != 0) != (*(v318 + 1381) & 4) >> 2)
                                                  {
                                                    v282 = v453;
                                                  }

                                                  else
                                                  {
                                                    v282 = v452;
                                                  }

                                                  if (v442)
                                                  {
                                                    v454 = *v872.i64[0];
                                                    if (*v872.i64[0])
                                                    {
                                                      if (*(v867 + 12) == 57 && *(v454 + 12) == 57)
                                                      {
                                                        if (((*(v454 + 368) >> 4) & 1) != (v867[92] & 0x10) >> 4)
                                                        {
                                                          *(*&v883.f64[0] + 12) |= 0x400u;
                                                        }

                                                        v455 = CA::Render::ImageQueue::hdr_processor(*&v883.f64[0], v284);
                                                        if (v455)
                                                        {
                                                          v456 = v455;
                                                          v457 = v893;
                                                          v458 = (*(*v455 + 48))(v455, v454, v893);
                                                          _ZF = v458 == (*(*v456 + 48))(v456, v867, v457);
                                                          v9 = v892;
                                                          if (!_ZF)
                                                          {
                                                            *(*&v883.f64[0] + 12) |= 0x400u;
                                                          }
                                                        }

                                                        if (*(v870 + 64) == 1)
                                                        {
                                                          if ((*(*v454 + 288))(v454))
                                                          {
                                                            v459 = (*(*v454 + 280))(v454);
                                                            if (v459 != (*(*v867 + 280))(v867))
                                                            {
                                                              *(*&v883.f64[0] + 12) |= 0x400u;
                                                            }
                                                          }
                                                        }
                                                      }

                                                      goto LABEL_748;
                                                    }

LABEL_749:
                                                    if (!*(*&v883.f64[0] + 32))
                                                    {
                                                      CA::Render::ImageQueue::flush_cache(*&v883.f64[0]);
                                                    }
                                                  }

                                                  else
                                                  {
LABEL_748:
                                                    if (!*v872.i64[0])
                                                    {
                                                      goto LABEL_749;
                                                    }
                                                  }

                                                  v460 = v867;
                                                  if (v867 && atomic_fetch_add(v867 + 2, 0xFFFFFFFF) == 1)
                                                  {
                                                    (*(*v460 + 16))(v460);
                                                  }

                                                  v246 = *&v883.f64[0];
LABEL_755:
                                                  v461 = v282 | v899;
                                                  if (byte_1ED4E989E == 1)
                                                  {
                                                    *(v246 + 529) = 0;
                                                    v821 = (*(*(v246 + 16) + 24) + 8);
                                                    v822 = atomic_load(v821);
                                                    v11 = v893;
                                                    if ((v822 & 0x10000000000000) != 0)
                                                    {
                                                      atomic_fetch_and(v821, 0xFFEFFFFFFFFFFFFFLL);
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v462 = v871;
                                                    if (*&v929[96] == 0.0)
                                                    {
                                                      v462 = 0;
                                                    }

                                                    v11 = v893;
                                                    if (v462)
                                                    {
                                                      *(v246 + 529) = 1;
                                                      goto LABEL_761;
                                                    }

                                                    *(v246 + 529) = (*&v270 & 0x800000000000000) != 0;
                                                    if ((*&v270 & 0x800000000000000) != 0)
                                                    {
LABEL_761:
                                                      *(v246 + 536) = *&v929[96];
                                                      *(v11 + 172) |= 0x200000uLL;
                                                    }
                                                  }

                                                  v463 = atomic_load((v265 + 8));
                                                  if ((v463 & 0x200000000000001) == 1)
                                                  {
                                                    v461 |= 0x20u;
                                                    v464 = atomic_load((v265 + 8));
                                                    if ((v464 & 0x40) == 0)
                                                    {
                                                      *(v11 + 38) |= 0x2000000uLL;
                                                    }
                                                  }

                                                  if ((~*&v270 & 0xC00000000000000) == 0)
                                                  {
                                                    *(v11 + 38) |= 0x4000000uLL;
                                                  }

                                                  v465 = v461 | (*&v270 >> 47) & 0x100;
                                                  v466 = *(v246 + 12);
                                                  v467 = (v466 & 0x20000) == 0;
                                                  if ((*&v270 & 0x40000000000000) == 0)
                                                  {
                                                    v466 &= ~0x20000u;
                                                  }

                                                  if (((*&v270 >> 54) & v467) != 0)
                                                  {
                                                    v468 = v465 | 0x600;
                                                  }

                                                  else
                                                  {
                                                    v468 = v465;
                                                  }

                                                  v469 = v466 & 0xFFF7FFFF;
                                                  *(v246 + 12) = v466 & 0xFFF7FFFF;
                                                  v470 = ((v466 >> 9) ^ (v468 >> 1)) & 0x400 | v468;
                                                  if (v929[117] == 1)
                                                  {
                                                    if (v274 == 0.0)
                                                    {
                                                      v471 = INFINITY;
                                                    }

                                                    else
                                                    {
                                                      v471 = (*&v929[64] - v275) / v274 + v273;
                                                    }

                                                    v896[0] = v471;
                                                    v268 = 0.0;
                                                    v34 = v869;
                                                    if ((v929[9] & 8) == 0)
                                                    {
                                                      v472 = *&v929[72];
                                                      if ((*&v929[72] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *&v929[72] > 0.0 && *&v929[72] < 0.1)
                                                      {
                                                        if (vabdd_f64(*&v929[72], *(v246 + 520)) >= 0.005)
                                                        {
                                                          *(v246 + 528) = 4;
                                                        }

                                                        else
                                                        {
                                                          v268 = *&v929[72];
                                                          if (*(v246 + 528))
                                                          {
                                                            v473 = *(v246 + 528) - 1;
                                                            *(v246 + 528) = v473;
                                                            v268 = 0.0;
                                                            if (!v473)
                                                            {
                                                              v268 = v472;
                                                            }
                                                          }
                                                        }

                                                        *(v246 + 520) = v472;
                                                      }
                                                    }

                                                    v476 = atomic_load((v265 + 8));
                                                    if ((v476 & 0x80000) != 0)
                                                    {
                                                      v477 = 192;
                                                    }

                                                    else
                                                    {
                                                      v477 = 64;
                                                    }

                                                    v470 |= v477;
                                                    v469 = *(v246 + 12);
                                                    v475 = v875;
                                                    v474 = v876.f64[0];
LABEL_792:
                                                    *(v246 + 12) = v469 | (v470 << 8);
                                                  }

                                                  else
                                                  {
                                                    v268 = 0.0;
                                                    v475 = v875;
                                                    v474 = v876.f64[0];
                                                    if (v470)
                                                    {
                                                      v34 = v869;
                                                      goto LABEL_792;
                                                    }

                                                    v34 = v869;
                                                  }

                                                  v269 = *&v929[80];
                                                  CAShmemImageQueueUpdate(v265, v475[80].isa, HIDWORD(v475[80].isa), v475[79].isa, *&v474, *(v11 + 21), v470, *(v246 + 460), v281, *(v11 + 14));
LABEL_794:
                                                  v478 = v89;
                                                  v479 = v265;
                                                  v480 = *(v246 + 488);
                                                  v242 = *&v887.f64[0];
                                                  if (v480)
                                                  {
                                                    v481 = *(v11 + 10);
                                                    v482 = (*&v883.f64[0] + 488);
                                                    do
                                                    {
                                                      while (1)
                                                      {
                                                        v483 = *v480;
                                                        if (v481 > *(*v480 + 352))
                                                        {
                                                          break;
                                                        }

                                                        v482 = v480 + 1;
                                                        v480 = v480[1];
                                                        if (!v480)
                                                        {
                                                          goto LABEL_802;
                                                        }
                                                      }

                                                      if (atomic_fetch_add(v483 + 2, 0xFFFFFFFF) == 1)
                                                      {
                                                        (*(*v483 + 16))(v483);
                                                      }

                                                      v480 = x_list_remove_head(v480);
                                                      *v482 = v480;
                                                    }

                                                    while (v480);
                                                  }

LABEL_802:
                                                  v484 = atomic_load((v479 + 8));
                                                  v485 = v484 & 0x4000000000008000;
                                                  if (v898)
                                                  {
                                                    v486 = 1;
                                                  }

                                                  else
                                                  {
                                                    v486 = v485 == 0x4000000000008000;
                                                  }

                                                  v487 = v883.f64[0];
                                                  if (v486)
                                                  {
                                                    CAShmemImageQueueCollectable(v479, *(*&v883.f64[0] + 460), v898, 0);
                                                  }

                                                  os_unfair_lock_unlock((*&v487 + 56));
                                                  v488 = v881;
                                                  v89 = v478;
                                                  if ((v877 & 1) == 0)
                                                  {
                                                    pthread_mutex_unlock((v881 + 72));
                                                    if (atomic_fetch_add(v488 + 2, 0xFFFFFFFF) == 1)
                                                    {
                                                      (*(*v488 + 16))(v488);
                                                    }
                                                  }

                                                  if (v894)
                                                  {
                                                    if (v909.i8[1] < 0)
                                                    {
                                                      v490 = *(*(*&v487 + 16) + 24);
                                                      v489 = *(v490 + 96);
                                                      v491 = v894[16].i32[1] * v894[16].i32[0];
                                                      if (v489 != v491)
                                                      {
                                                        v909.i64[1] |= 0x40000uLL;
                                                        v489 = v491;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v489 = v894[16].i32[1] * v894[16].i32[0];
                                                      v490 = *(*(*&v487 + 16) + 24);
                                                    }

                                                    *(v490 + 96) = v489;
                                                    v492 = *(v11 + 73);
                                                    v493 = atomic_load((v490 + 8));
                                                    if ((v492 & 0x8000) == 0 || (v493 & 0x8000000000000000) != 0)
                                                    {
                                                      if ((v492 & 0x8000) == 0 && (v493 & 0x8000000000000000) != 0)
                                                      {
                                                        atomic_fetch_and((v490 + 8), 0x7FFFFFFFFFFFFFFFuLL);
                                                      }
                                                    }

                                                    else
                                                    {
                                                      atomic_fetch_or((v490 + 8), 0x8000000000000000);
                                                    }

                                                    v494 = v894[13];
                                                    v495 = *(*(*&v487 + 16) + 24);
                                                    v496 = atomic_load((v495 + 8));
                                                    v497 = v496 & 0x100000000000000;
                                                    if ((*&v494 & 0x80000000000) == 0 || v497)
                                                    {
                                                      if ((*&v494 & 0x80000000000) == 0 && v497)
                                                      {
                                                        atomic_fetch_and((v495 + 8), 0xFEFFFFFFFFFFFFFFLL);
                                                      }
                                                    }

                                                    else
                                                    {
                                                      atomic_fetch_or((v495 + 8), 0x100000000000000uLL);
                                                    }

                                                    v498 = *(v11 + 172) & 0x40020000;
                                                    v499 = *(*(*&v487 + 16) + 24);
                                                    v500 = atomic_load((v499 + 8));
                                                    v501 = v500 & 0x8000000000000;
                                                    if (v498 == 0x20000 || v501)
                                                    {
                                                      if (v498 == 0x20000 && v501)
                                                      {
                                                        atomic_fetch_and((v499 + 8), 0xFFF7FFFFFFFFFFFFLL);
                                                      }
                                                    }

                                                    else
                                                    {
                                                      atomic_fetch_or((v499 + 8), 0x8000000000000uLL);
                                                    }

                                                    v502 = *(v11 + 38) & 0xC0000000;
                                                    v503 = atomic_load((*(*(*&v487 + 16) + 24) + 8));
                                                    if ((v503 & 0x400000000000000) != 0 && *(*&v487 + 552) && !v502)
                                                    {
                                                      v909.i64[1] |= 0x40000uLL;
                                                    }

                                                    else if (v502)
                                                    {
                                                      LODWORD(v502) = *(*v10 + 68);
                                                    }

                                                    *(*&v487 + 552) = v502;
                                                  }

                                                  v504 = *(*&v487 + 12);
                                                  if ((v504 & 0x40400) != 0)
                                                  {
                                                    v505 = v909.i64[0] | 3;
                                                    v909.i64[1] = v909.i64[1] & 0xFFFFFFFFFFFD7BFBLL | 0x404 | (8 * v909.i64[0]) & 0x40000;
                                                    goto LABEL_843;
                                                  }

                                                  if ((v504 & 0x200) != 0)
                                                  {
                                                    v506 = (*(**&v487 + 80))(COERCE_FLOAT64_T(*&v487));
                                                    if (!v506)
                                                    {
                                                      goto LABEL_852;
                                                    }

                                                    v507 = *(v506 + 48);
                                                    if (!v507)
                                                    {
                                                      goto LABEL_852;
                                                    }

                                                    if ((v507 & 1) != 0 || v507[1] != 12)
                                                    {
                                                      goto LABEL_1641;
                                                    }

                                                    v508 = v507[8] - v507[7];
                                                    v509 = v507[9] - v507[5];
                                                    if (v508 > v509)
                                                    {
                                                      v509 = v508;
                                                    }

                                                    if (v509 <= 0x3FFFFFFE)
                                                    {
LABEL_1641:
                                                      if (*(v242 + 112))
                                                      {
                                                        v510 = v909.i64[1] | 0x400;
                                                      }

                                                      else
                                                      {
                                                        v510 = v909.i64[1] | 0x8000000;
                                                      }

                                                      v909.i64[1] = v510;
                                                      if ((v909.i8[1] & 0x80) == 0)
                                                      {
                                                        goto LABEL_859;
                                                      }
                                                    }

                                                    else
                                                    {
LABEL_852:
                                                      v510 = v909.i64[1] | 0x400;
                                                      v909.i64[1] |= 0x400uLL;
                                                      if ((v909.i16[0] & 0x8000) == 0)
                                                      {
                                                        v505 = v909.i64[0] | 1;
LABEL_843:
                                                        v909.i64[0] = v505;
                                                        goto LABEL_859;
                                                      }
                                                    }

                                                    v909.i64[1] = v510 | 0x10000;
                                                  }

LABEL_859:
                                                  if ((v504 & 0x2100) == 0 || (*(v9 + 27) & 4) != 0)
                                                  {
                                                    if (v907 == 0.0)
                                                    {
                                                      v515 = *(*(*(*&v487 + 16) + 24) + 128);
                                                      v516 = ((*&v515 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE && (*&v515 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000001;
                                                      v517 = !v516 || *&v515 == 0xFFF0000000000000;
                                                      v518 = !v517 && (*&v515 & 0x7FFFFFFFFFFFFFFFuLL) - 1 > 0xFFFFFFFFFFFFELL;
                                                      if (!v518 && v515 > *(v11 + 10) && v515 < *(v11 + 11))
                                                      {
                                                        if (xmmword_1ED4E988C == 1)
                                                        {
                                                          if (x_log_get_CADebug(void)::once != -1)
                                                          {
                                                            dispatch_once(&x_log_get_CADebug(void)::once, &__block_literal_global_18337);
                                                          }

                                                          v825 = x_log_get_CADebug(void)::log;
                                                          v826 = os_log_type_enabled(x_log_get_CADebug(void)::log, OS_LOG_TYPE_DEFAULT);
                                                          v9 = v892;
                                                          v11 = v893;
                                                          v10 = v889;
                                                          v242 = *&v887.f64[0];
                                                          if (v826)
                                                          {
                                                            *v929 = 0;
                                                            _os_log_impl(&dword_183AA6000, v825, OS_LOG_TYPE_DEFAULT, "kUpdateReasonDisplayBrightness edr_deadline", v929, 2u);
                                                          }
                                                        }

                                                        v519 = *(*(*(*&v883.f64[0] + 16) + 24) + 128);
                                                        *(v11 + 13) |= 8uLL;
                                                        v520 = *(v11 + 11);
                                                        if (v520 >= v519)
                                                        {
                                                          if (v519 == 0.0 || v520 <= v519)
                                                          {
                                                            v521 = *(v11 + 12) | 8;
                                                          }

                                                          else
                                                          {
                                                            v521 = 8;
                                                          }

                                                          goto LABEL_918;
                                                        }
                                                      }
                                                    }
                                                  }

                                                  else if (v504 & 0x4000) == 0 || (byte_1ED4E9826)
                                                  {
                                                    v522 = *(*(*(*&v487 + 16) + 24) + 152);
                                                    if (v522 > 0.0 && v522 <= 30.0)
                                                    {
                                                      *(v11 + 172) |= 0x80000000000000uLL;
                                                    }

                                                    *(v11 + 13) |= 0x80000000uLL;
                                                    v519 = *(v11 + 10);
                                                    v524 = *(v11 + 11);
                                                    if (v524 >= v519)
                                                    {
                                                      if (v519 != 0.0 && v524 > v519)
                                                      {
                                                        goto LABEL_893;
                                                      }

                                                      goto LABEL_917;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v511 = v910;
                                                    if (v910)
                                                    {
                                                      v512 = 1.0;
                                                      do
                                                      {
                                                        v513 = *v511;
                                                        CA::Render::Timing::inverse_map_time(*v511, v896, INFINITY);
                                                        v512 = *(v513 + 16) * v512;
                                                        v511 = v511[1];
                                                      }

                                                      while (v511);
                                                      v514 = v512 + -1.0;
                                                    }

                                                    else
                                                    {
                                                      v514 = 0.0;
                                                    }

                                                    v525 = v896[0];
                                                    if ((v504 & 0x8000) != 0)
                                                    {
                                                      v526 = *(v11 + 22);
                                                      if (v526)
                                                      {
                                                        if ((*&v896[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v268 > 0.0 && v268 < 0.1 && fabsf(v514) < 0.01)
                                                        {
                                                          v527 = CAHostTimeWithTime(v896[0]);
                                                          v528 = CAHostTimeWithTime(v268);
                                                          *v929 = *v526;
                                                          *&v929[16] = *(v526 + 16);
                                                          *&v918.f64[0] = v528;
                                                          phase = get_phase(v929, v527, &v918);
                                                          v530 = *&v918.f64[0] - phase;
                                                          if (!phase)
                                                          {
                                                            v530 = 0;
                                                          }

                                                          v531 = v530 / *(v526 + 16);
                                                          if (*(v11 + 23) < v531)
                                                          {
                                                            v531 = *(v11 + 23);
                                                          }

                                                          *(v11 + 23) = v531;
                                                        }
                                                      }
                                                    }

                                                    v519 = *(v11 + 10);
                                                    v532 = *(v11 + 11);
                                                    if (v532 >= v525)
                                                    {
                                                      if (v519 <= v525)
                                                      {
                                                        v519 = v525;
                                                      }
                                                    }

                                                    else if (v519 <= v532)
                                                    {
                                                      v519 = *(v11 + 11);
                                                    }

                                                    v896[0] = v519;
                                                    *(v11 + 13) |= 0x80000000uLL;
                                                    if (v532 >= v519)
                                                    {
                                                      if (v519 != 0.0 && v532 > v519)
                                                      {
LABEL_893:
                                                        v521 = 0x80000000;
                                                        goto LABEL_918;
                                                      }

LABEL_917:
                                                      v521 = *(v11 + 12) | 0x80000000;
LABEL_918:
                                                      *(v11 + 12) = v521;
                                                      *(v11 + 11) = v519;
                                                    }
                                                  }

                                                  v534 = *(v11 + 24);
                                                  if (v534)
                                                  {
                                                    if (CADeviceSupportsOddQuantaFrameRates::once[0] != -1)
                                                    {
                                                      dispatch_once(CADeviceSupportsOddQuantaFrameRates::once, &__block_literal_global_314);
                                                    }

                                                    if (CADeviceSupportsOddQuantaFrameRates::enabled == 1 && (CADevicePrefers60HzAPT() & 1) == 0)
                                                    {
                                                      v536 = atomic_load((*(*(*&v883.f64[0] + 16) + 24) + 8));
                                                      if ((v536 & 0x10000000000000) == 0 && fabsf(v907) > 0.01)
                                                      {
                                                        if (*(*(*(*&v883.f64[0] + 16) + 24) + 32))
                                                        {
                                                          v537 = *(v893 + 10) - v269;
                                                          HIDWORD(v538) = 1072701986;
                                                          if (v537 < 1.00833333)
                                                          {
                                                            goto LABEL_935;
                                                          }
                                                        }
                                                      }
                                                    }

                                                    HIDWORD(v537) = 1065646817;
                                                    if (fabs(v907 + -1.0) >= 0.01 || v268 == 0.0)
                                                    {
                                                      goto LABEL_936;
                                                    }

                                                    v538 = 0.0125 - v268;
                                                    HIDWORD(v535) = 1059086925;
                                                    if (0.0125 - v268 >= 0.000125)
                                                    {
LABEL_935:
                                                      LODWORD(v537) = 1123024896;
                                                      LODWORD(v538) = 1123024896;
                                                      LODWORD(v535) = 1123024896;
                                                      [v534 addFrameRateRange:{v537, v538, v535}];
                                                      goto LABEL_936;
                                                    }

                                                    v539 = &CA::Render::Updater::prepare_layer0(CA::Render::Updater::GlobalState &,CA::Render::LayerNode *,CA::Render::Layer const*,CA::Render::Updater::LocalState0 &,unsigned long long)::common_rates;
                                                    v540 = 72;
                                                    v541 = 1.0;
                                                    while (1)
                                                    {
                                                      v542 = 1.0 / *v539;
                                                      v543 = vabdd_f64(v268, v542);
                                                      v544 = v542 * 0.01;
                                                      if (v543 < v544)
                                                      {
                                                        break;
                                                      }

                                                      v539 += 3;
                                                      v540 -= 12;
                                                      if (!v540)
                                                      {
                                                        goto LABEL_936;
                                                      }
                                                    }

                                                    v707 = *(v539 + 8);
                                                    *&v537 = v539[1];
                                                    *&v541 = *&v537;
                                                    *&v544 = *&v537;
                                                    [v534 addFrameRateRange:{v537, v541, v544}];
                                                    if (v707)
                                                    {
                                                      [v534 addCompatQuantaIntent];
                                                    }

LABEL_936:
                                                    if (CADeviceSupportsOddQuantaFrameRates::once[0] != -1)
                                                    {
                                                      dispatch_once(CADeviceSupportsOddQuantaFrameRates::once, &__block_literal_global_314);
                                                    }

                                                    v89 = v478;
                                                    v11 = v893;
                                                    v242 = *&v887.f64[0];
                                                    if (CADeviceSupportsOddQuantaFrameRates::enabled == 1)
                                                    {
                                                      if (CADevicePrefers60HzAPT())
                                                      {
                                                        v545 = atomic_load((*(*(*&v883.f64[0] + 16) + 24) + 8));
                                                        if ((v545 & 0x1000000000000) == 0 && fabsf(v907) > 0.01 && *(*(*(*&v883.f64[0] + 16) + 24) + 32) && *(v11 + 10) - v269 < 1.00833333)
                                                        {
                                                          *(v11 + 172) |= 0x40000000000000uLL;
                                                        }
                                                      }
                                                    }
                                                  }

                                                  v546 = v883.f64[0];
                                                  v547 = atomic_load((*(*(*&v883.f64[0] + 16) + 24) + 8));
                                                  if ((v547 & 0x200000) != 0)
                                                  {
                                                    *(v11 + 38) |= 0x200000000uLL;
                                                  }

                                                  v548 = v879;
                                                  if ((*(v11 + 294) & 1) != 0 && CA::Render::ImageQueue::is_protected(*&v546))
                                                  {
                                                    *(v9 + 3) |= 0x2000000uLL;
                                                    v549 = atomic_load((*(*(*&v546 + 16) + 24) + 8));
                                                    if ((v549 & 4) != 0)
                                                    {
                                                      v551 = 1;
                                                    }

                                                    else
                                                    {
                                                      v550 = *(*&v546 + 64);
                                                      if (!v550)
                                                      {
                                                        v550 = *(*&v546 + 80);
                                                        if (!v550)
                                                        {
                                                          v550 = *(*&v546 + 24);
                                                        }
                                                      }

                                                      v551 = (*(*v550 + 256))(v550);
                                                    }

                                                    if (byte_1ED4E98C0 == 1)
                                                    {
                                                      if (x_log_get_render(void)::once[0] != -1)
                                                      {
                                                        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
                                                      }

                                                      v817 = x_log_get_render(void)::log;
                                                      v818 = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT);
                                                      v9 = v892;
                                                      v11 = v893;
                                                      v10 = v889;
                                                      if (v818)
                                                      {
                                                        *v929 = 136315650;
                                                        *&v929[4] = "update disabled protection but iq is protected";
                                                        *&v929[12] = 2048;
                                                        *&v929[14] = v551;
                                                        *&v929[22] = 2048;
                                                        *&v929[24] = 0;
                                                        _os_log_impl(&dword_183AA6000, v817, OS_LOG_TYPE_DEFAULT, "drm content culled - %s <content: %llu> <allowed: %llu>", v929, 0x20u);
                                                      }
                                                    }

                                                    v552 = v909.i64[0];
                                                    v909.i64[1] |= (8 * v909.i64[0]) & 0x40000 | 0x400;
                                                    v242 = *&v887.f64[0];
LABEL_959:
                                                    v259 = v552 | 1;
LABEL_960:
                                                    v909.i64[0] = v259;
                                                  }

                                                  else if ((v548 & 0x2000000) != 0)
                                                  {
                                                    v552 = v909.i64[0];
                                                    v909.i64[1] |= 0x400uLL;
                                                    goto LABEL_959;
                                                  }

                                                  goto LABEL_961;
                                                }

                                                v359 = *&v929[32];
                                                v360 = *&v929[48];
                                                if (!*&v929[32] || !*&v929[48] || ((v361 = *&v929[40], v362 = *&v929[56], v280 > *&v929[40]) ? (_NF = v280 < *&v929[56]) : (_NF = 0), !_NF))
                                                {
                                                  v377 = *(*&v883.f64[0] + 32);
                                                  v331 = &CADeviceNeedsDisplayStateControlDependencyWorkaround::b;
                                                  if (v377)
                                                  {
                                                    if (atomic_fetch_add(v377 + 2, 0xFFFFFFFF) == 1)
                                                    {
                                                      (*(*v377 + 16))(v377);
                                                    }

                                                    *(*&v883.f64[0] + 32) = 0;
                                                    v360 = *&v929[48];
                                                    v359 = *&v929[32];
                                                  }

                                                  if ((LOWORD(v865) & 0x800) != 0 && v359 && v360 && vabdd_f64(v280, *&v929[40]) < vabdd_f64(v280, *&v929[56]))
                                                  {
                                                    v360 = v359;
                                                  }

                                                  v378 = CA::Render::ImageQueue::retain_image_queue(*&v883.f64[0]);
                                                  if (v378)
                                                  {
                                                    v379 = v378;
                                                    v380 = CAImageQueueCopyTexture(v378, v360);
                                                    v381 = *v872.i64[0];
                                                    *v872.i64[0] = v380;
                                                    if (v381 && atomic_fetch_add(v381 + 2, 0xFFFFFFFF) == 1)
                                                    {
                                                      (*(*v381 + 16))(v381);
                                                    }

                                                    CFRelease(v379);
                                                    goto LABEL_688;
                                                  }

                                                  v382 = CA::Render::Context::lookup_object(*(v249 + 17), *(v249 + 37), v360, 0, 0, 0);
                                                  if (!v382)
                                                  {
                                                    goto LABEL_688;
                                                  }

                                                  v335 = (*(*v382 + 80))(v382);
                                                  v334 = v872.i64[0];
LABEL_538:
                                                  X::Ref<CA::Render::Texture>::operator=(v334, v335);
                                                  goto LABEL_688;
                                                }

                                                v364 = CA::Render::ImageQueue::retain_image_queue(*&v883.f64[0]);
                                                if (v364)
                                                {
                                                  v365 = v364;
                                                  v366 = CAImageQueueCopyTexture(v364, v359);
                                                  v367 = CAImageQueueCopyTexture(v365, v360);
                                                  CFRelease(v365);
                                                  v9 = v892;
                                                  v331 = &CADeviceNeedsDisplayStateControlDependencyWorkaround::b;
                                                  if (!v366)
                                                  {
                                                    goto LABEL_685;
                                                  }
                                                }

                                                else
                                                {
                                                  v383 = CA::Render::Context::lookup_object(*(v249 + 17), *(v249 + 37), v359, 0, 0, 0);
                                                  v366 = v383;
                                                  v331 = &CADeviceNeedsDisplayStateControlDependencyWorkaround::b;
                                                  if (v383)
                                                  {
                                                    v384 = atomic_fetch_add((v383 + 8), 1u);
                                                    v9 = v892;
                                                    if (!v384)
                                                    {
                                                      v366 = 0;
                                                      atomic_fetch_add((v383 + 8), 0xFFFFFFFF);
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v9 = v892;
                                                  }

                                                  v412 = CA::Render::Context::lookup_object(*(v249 + 17), *(v249 + 37), *&v929[48], 0, 0, 0);
                                                  v367 = v412;
                                                  if (v412 && !atomic_fetch_add((v412 + 8), 1u))
                                                  {
                                                    v367 = 0;
                                                    atomic_fetch_add((v412 + 8), 0xFFFFFFFF);
                                                    if (!v366)
                                                    {
                                                      goto LABEL_685;
                                                    }
                                                  }

                                                  else if (!v366)
                                                  {
LABEL_685:
                                                    if (v367 && atomic_fetch_add(v367 + 2, 0xFFFFFFFF) == 1)
                                                    {
                                                      (*(*v367 + 16))(v367);
                                                    }

                                                    goto LABEL_688;
                                                  }
                                                }

                                                if ((*(*v366 + 80))(v366) && v367 && (*(*v367 + 80))(v367))
                                                {
                                                  v414 = *(v265 + 432);
                                                  v413 = *(v265 + 448);
                                                  v928[0] = v414;
                                                  v928[1] = v413;
                                                  if (*(v331 + 42) != -1)
                                                  {
                                                    v878 = v414;
                                                    v862 = v413;
                                                    dispatch_once_f(initialized, 0, init_debug);
                                                    v413 = v862;
                                                    v414 = v878;
                                                  }

                                                  v415 = *&dword_1ED4E9674;
                                                  if (*&dword_1ED4E9674)
                                                  {
                                                    *v414.i64 = HIBYTE(v415) * 0.00392156863;
                                                    v416 = vand_s8(vshl_u32(vdup_n_s32(v415), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
                                                    v417.i64[0] = v416.u32[0];
                                                    v417.i64[1] = v416.u32[1];
                                                    v418 = vmulq_f64(vcvtq_f64_u64(v417), vdupq_n_s64(0x3F70101010101010uLL));
                                                    *(v928 + 8) = v418;
                                                    v419 = *&dword_1ED4E9674 * 0.00392156863;
                                                    *v928 = *v414.i64;
                                                    *(&v928[1] + 1) = v419;
                                                  }

                                                  else
                                                  {
                                                    v419 = *&v413.i64[1];
                                                    v418 = vextq_s8(v414, v413, 8uLL);
                                                  }

                                                  *&v420.f64[0] = vdupq_laneq_s64(v418, 1).u64[0];
                                                  v421 = vdupq_lane_s64(v418.i64[0], 0);
                                                  v422 = (v280 - v361) / (v362 - v361);
                                                  *&v421.f64[0] = v414.i64[0];
                                                  v420.f64[1] = v419;
                                                  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v421), vceqq_f64(v420, v884))))))
                                                  {
                                                    v422 = CA::Render::TimingFunction::evaluate(v928, v284, v422, 0.00001);
                                                  }

                                                  *&v925 = 0;
                                                  v923 = 0u;
                                                  v924 = 0u;
                                                  v921 = 0u;
                                                  v922 = 0u;
                                                  v919 = 0u;
                                                  v920 = 0u;
                                                  v918 = *&v422;
                                                  *&v895[0] = 0;
                                                  (*(*v366 + 56))(v895, v366, v367, &v918);
                                                  X::Ref<CA::Render::Texture>::operator=((*&v883.f64[0] + 32), *&v895[0]);
                                                  v423 = *&v895[0];
                                                  if (*&v895[0] && atomic_fetch_add((*&v895[0] + 8), 0xFFFFFFFF) == 1)
                                                  {
                                                    (*(*v423 + 16))(v423);
                                                  }
                                                }

                                                if (atomic_fetch_add(v366 + 2, 0xFFFFFFFF) == 1)
                                                {
                                                  (*(*v366 + 16))(v366);
                                                }

                                                goto LABEL_685;
                                              }

LABEL_491:
                                              CA::Render::ImageQueue::flush_cache(v246);
                                              goto LABEL_755;
                                            }

                                            v246 = *&v883.f64[0];
                                          }

                                          if (v871)
                                          {
                                            v296 = *&v929[4];
                                            if (((*&v929[4] == *(v246 + 452)) & v283) == 0)
                                            {
                                              v864 = 0;
                                              v295 = 0;
                                              goto LABEL_494;
                                            }

                                            v309 = *(v246 + 32);
                                            if (v309)
                                            {
                                              v310 = (*(**(v309 + 24) + 80))(*(v309 + 24));
                                              v311 = *&v929[8];
                                              v312 = *&v929[20];
                                              CA::Render::update_texture_flags(v310, v265, *&v929[8], *&v929[20]);
                                              v295 = (*(**(*(*&v883.f64[0] + 32) + 32) + 80))(*(*(*&v883.f64[0] + 32) + 32));
                                              v299 = v265;
                                              v297 = v311;
                                              v246 = *&v883.f64[0];
                                              v298 = v312;
LABEL_489:
                                              CA::Render::update_texture_flags(v295, v299, v297, v298);
                                            }

                                            goto LABEL_755;
                                          }

                                          if (!*(v246 + 32))
                                          {
                                            goto LABEL_755;
                                          }

                                          goto LABEL_491;
                                        }

                                        v261 = 0.0;
                                      }

                                      *(v246 + 416) = v261;
                                    }

                                    else
                                    {
                                      v257 = *(*&v887.f64[0] + 136);
                                      *(v246 + 416) = dword_1ED4E9730;
                                      if (v257)
                                      {
                                        goto LABEL_416;
                                      }
                                    }

                                    v260 = 0.0;
                                    goto LABEL_421;
                                  }

                                  v253 = *(v11 + 10);
                                  if (v253 >= *(v246 + 200))
                                  {
                                    if ((v877 & 0x80) != 0)
                                    {
                                      v259 = v909.i64[0] | 3;
                                      goto LABEL_960;
                                    }
                                  }

                                  else
                                  {
                                    v909 = vorrq_s8(v909, xmmword_183E212B0);
                                    *(v11 + 13) |= 0x40000000uLL;
                                    v254 = *(v11 + 11);
                                    if (v254 >= v253)
                                    {
                                      if (v253 == 0.0 || v254 <= v253)
                                      {
                                        v255 = *(v11 + 12) | 0x40000000;
                                      }

                                      else
                                      {
                                        v255 = 0x40000000;
                                      }

                                      *(v11 + 12) = v255;
                                      *(v11 + 11) = v253;
                                    }
                                  }

LABEL_961:
                                  if (*(v11 + 294))
                                  {
                                    v553 = (*(**(v242 + 104) + 80))(*(v242 + 104));
                                    if (v553)
                                    {
                                      v554 = v553;
                                      if ((*(*v553 + 248))(v553))
                                      {
                                        v555 = (*(*v554 + 256))(v554);
                                        if (byte_1ED4E98C0 == 1)
                                        {
                                          v556 = v555;
                                          if (x_log_get_render(void)::once[0] != -1)
                                          {
                                            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
                                          }

                                          v557 = x_log_get_render(void)::log;
                                          v558 = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT);
                                          v9 = v892;
                                          v11 = v893;
                                          v10 = v889;
                                          if (v558)
                                          {
                                            *v929 = 136315650;
                                            v559 = "update disabled protection";
                                            goto LABEL_969;
                                          }
                                        }

LABEL_987:
                                        *(v9 + 3) |= 0x2000000uLL;
LABEL_988:
                                        v242 = *&v887.f64[0];
                                        v571 = *(*&v887.f64[0] + 104);
                                        if (*(v571 + 12) == 25)
                                        {
                                          is_protected = CA::Render::ImageQueue::is_protected(*(*&v887.f64[0] + 104));
                                          v90 = v890;
                                          if (is_protected)
                                          {
                                            v573 = *(v571 + 64);
                                            if (v573)
                                            {
                                              goto LABEL_992;
                                            }

                                            v573 = *(v571 + 80);
                                            if (v573)
                                            {
                                              goto LABEL_992;
                                            }

                                            if (*(v571 + 24))
                                            {
                                              v573 = *(v571 + 80);
                                              if (!v573)
                                              {
                                                v573 = *(v571 + 24);
                                              }

LABEL_992:
                                              v574 = (*(*v573 + 256))(v573);
                                            }

                                            else
                                            {
                                              v574 = 0;
                                            }

                                            v575 = atomic_load((*(*(v571 + 16) + 24) + 8));
                                            v576 = (v575 >> 2) & 1 | v574;
LABEL_997:
                                            *(v11 + 41) |= v576;
LABEL_998:
                                            if ((*(v242 + 50) & 8) == 0)
                                            {
                                              v580 = 0;
                                              goto LABEL_1000;
                                            }

                                            v581 = *(v9 + 3);
                                            v580 = (v581 & 0x2000000) == 0;
                                            v7 = v891;
                                            if (byte_1ED4E98C0 == 1)
                                            {
                                              if ((v581 & 0x2000000) != 0)
                                              {
                                                if (x_log_get_render(void)::once[0] != -1)
                                                {
                                                  dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
                                                }

                                                v710 = x_log_get_render(void)::log;
                                                if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
                                                {
                                                  v242 = *&v887.f64[0];
                                                  v711 = *(*&v887.f64[0] + 128);
                                                  if (v711)
                                                  {
                                                    v712 = (v711 + 28);
                                                  }

                                                  else
                                                  {
                                                    v712 = "";
                                                  }

                                                  *v929 = 136315138;
                                                  *&v929[4] = v712;
                                                  _os_log_impl(&dword_183AA6000, v710, OS_LOG_TYPE_DEFAULT, "drm logo shown for layer %s", v929, 0xCu);
                                                  v580 = 0;
                                                  v9 = v892;
                                                  v11 = v893;
                                                  v10 = v889;
                                                  v90 = v890;
LABEL_1000:
                                                  v7 = v891;
                                                }

                                                else
                                                {
                                                  v580 = 0;
                                                  v9 = v892;
                                                  v11 = v893;
                                                  v10 = v889;
                                                  v90 = v890;
                                                  v7 = v891;
                                                  v242 = *&v887.f64[0];
                                                }
                                              }

                                              else
                                              {
                                                v580 = 1;
                                              }
                                            }

                                            v582 = *(v242 + 136);
                                            if (v582 && (v583 = *v582) != 0 && *(v583 + 12) == 63)
                                            {
                                              v584 = 1;
                                              *(v10 + 49) = 1;
                                              if (v894)
                                              {
                                                v585 = *(v11 + 103);
                                                v586 = v894[13];
                                                if ((*&v586 & 0x2000000000000000) != 0)
                                                {
                                                  *(v583 + 40) = v585;
                                                  v587 = v585;
                                                }

                                                else
                                                {
                                                  v587 = *(v583 + 40);
                                                }

                                                if ((byte_1ED4E9873 & 1) != 0 || (v631 = *(v583 + 12), (v631 & 0x200) != 0))
                                                {
LABEL_1077:
                                                  v584 = 0;
                                                }

                                                else
                                                {
                                                  v632 = *(v583 + 48);
                                                  if (v632 != 1)
                                                  {
                                                    if (v632 == 2 || (v631 & 0x100) == 0 && (v586.i16[0] & 0x2000) != 0)
                                                    {
                                                      goto LABEL_1077;
                                                    }

                                                    v584 = *(v583 + 32) <= v585 - v587;
                                                  }
                                                }
                                              }

                                              CA::Render::FlattenManager::evaluate_flatten_state(v9, *v10, v584, 0);
                                              if (*(v583 + 48) != 2)
                                              {
                                                v909.i64[1] |= 4uLL;
                                                *(v10[9] + 3) |= 0x2000u;
                                              }

                                              if ((*(v583 + 13) & 2) != 0)
                                              {
                                                v580 |= (*(*v10 + 1379) & 8) == 0;
                                              }
                                            }

                                            else
                                            {
                                              CA::Render::FlattenManager::evaluate_flatten_state(v9, *v10, ((*(v242 + 40) >> 53) & 1), (*(v242 + 40) >> 54) & 1);
                                            }

                                            v592 = v885;
                                            v884.f64[0] = *(v9 + 3);
                                            if ((*&v884.f64[0] & 0xC00000000) != 0)
                                            {
                                              v909.i64[1] |= 4uLL;
                                              *(v10[9] + 3) |= 0x2000u;
                                              if ((*&v884.f64[0] & 0x800000000) != 0)
                                              {
                                                *(v9 + 3) |= 0x80000000000uLL;
                                                v909.i64[1] |= 0x100000000000uLL;
                                                v10[4] = 0;
                                                *(v10 + 40) = 0;
                                                *(v10 + 48) = 1;
                                              }
                                            }

                                            LODWORD(v881) = v580;
                                            if (*(v10 + 48) == 1)
                                            {
                                              *(v10 + 8) |= (*(v242 + 40) >> 20) & 0x7FF;
                                              v593 = *(v242 + 136);
                                              if (v593)
                                              {
                                                if (*(v593 + 144))
                                                {
                                                  *(v10 + 40) = 1;
                                                }
                                              }
                                            }

                                            v594 = *(v11 + 172);
                                            if ((v594 & 0x800000000) != 0)
                                            {
                                              v595 = v917 & 7;
                                              if (v595 == 6 || v595 == 0)
                                              {
                                                v597 = 2;
                                              }

                                              else
                                              {
                                                v597 = 1;
                                              }

                                              LODWORD(v879) = v597;
                                            }

                                            else
                                            {
                                              LODWORD(v879) = 0;
                                            }

                                            if (!v592 && !*(v90 + 144))
                                            {
                                              v617 = v909.i64[1];
                                              goto LABEL_1178;
                                            }

                                            v598 = &v913;
                                            v599 = *(v7 + 16);
                                            v600 = *(v7 + 56);
                                            v601 = v902;
                                            v602 = v903;
                                            v603 = v907;
                                            v604 = *(v10 + 2);
                                            v877 = *(v11 + 24);
                                            LODWORD(v876.f64[0]) = *(v11 + 74);
                                            if ((v886.i64[0] & 0x100000) == 0)
                                            {
                                              v598 = 0;
                                            }

                                            v875 = v598;
                                            v590.i64[0] = 0x7FF0000000000000;
                                            *v591.i64 = v600;
                                            v605.f64[0] = NAN;
                                            v605.f64[1] = NAN;
                                            v606 = vbslq_s8(vnegq_f64(v605), v590, v591);
                                            v607 = *(v90 + 136);
                                            if (!v607)
                                            {
                                              v870 = 0;
                                              v608 = 0;
                                              goto LABEL_1085;
                                            }

                                            v608 = 0;
                                            v609 = *(v607 + 8);
                                            LODWORD(v607) = v609 != 0;
                                            v870 = v609;
                                            if (v600 != 0.0 && v609)
                                            {
                                              v872 = v606;
                                              v610 = *(v609 + 40);
                                              *v590.i64 = CA::Render::Timing::end_time(v609);
                                              v611 = *(v609 + 12);
                                              v612 = v611 >> 10;
                                              v613 = v611 >> 9;
                                              if (v600 >= 0.0)
                                              {
                                                v614 = v610;
                                                v610 = *v590.i64;
                                                v615 = v611 >> 10;
                                                LOBYTE(v612) = v613;
                                              }

                                              else
                                              {
                                                v614 = *v590.i64;
                                                v615 = v611 >> 9;
                                              }

                                              v606 = v872;
                                              v618 = v614 > v599;
                                              if (v600 <= 0.0)
                                              {
                                                v618 = v614 < v599;
                                              }

                                              if (v618)
                                              {
                                                v619 = (v615 & 1) == 0;
                                                if ((v615 & 1) == 0)
                                                {
                                                  *v606.i64 = v614;
                                                }

                                                goto LABEL_1047;
                                              }

                                              v620 = v610 > v599;
                                              if (v600 <= 0.0)
                                              {
                                                v620 = v610 < v599;
                                              }

                                              if (!v620)
                                              {
                                                goto LABEL_1083;
                                              }

                                              v621 = *(v609 + 32);
                                              if ((*&v621 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *(v609 + 24) != 0.0)
                                              {
                                                v622 = *(v609 + 16);
                                                *v590.i64 = v599;
                                                if ((v622 * v600) != 0.0)
                                                {
                                                  v590.i64[0] = *(v870 + 5);
                                                  if (*v590.i64 <= v599)
                                                  {
                                                    v623 = v622;
                                                    v624 = *(v870 + 6);
                                                    v625 = floor((v624 + (v599 - *v590.i64) * v623) / v621);
                                                    v626 = -0.000001;
                                                    if (v600 > 0.0)
                                                    {
                                                      v626 = v621 + -0.000001;
                                                    }

                                                    v627 = (v626 + v625 * v621 - v624) / v623 + *v590.i64;
                                                    if ((*&v627 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
                                                    {
                                                      v628 = v599;
                                                    }

                                                    else
                                                    {
                                                      v628 = v627;
                                                    }

                                                    *v590.i64 = CA::Render::Timing::end_time(v870) + -0.000001;
                                                    if (v628 <= *v590.i64)
                                                    {
                                                      *v590.i64 = v628;
                                                    }
                                                  }
                                                }

                                                *v606.i64 = *v590.i64 + -0.000001;
                                                LODWORD(v607) = 1;
                                                v608 = 2048;
                                                goto LABEL_1085;
                                              }

                                              if ((*&v610 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
                                              {
                                                v619 = (v612 & 1) == 0;
                                                if ((v612 & 1) == 0)
                                                {
                                                  *v606.i64 = v610;
                                                }

LABEL_1047:
                                                if (v619)
                                                {
                                                  v608 = 2048;
                                                }

                                                else
                                                {
                                                  v608 = 0;
                                                }
                                              }

                                              else
                                              {
LABEL_1083:
                                                v608 = 0;
                                              }

                                              LODWORD(v607) = 1;
                                            }

LABEL_1085:
                                            LODWORD(v928[0]) = 0;
                                            LODWORD(v895[0]) = 0;
                                            v633 = *(v90 + 144);
                                            if (!v633 || (v868 = v607, !*(v633 + 16)))
                                            {
                                              v7 = v891;
                                              goto LABEL_1162;
                                            }

                                            LODWORD(v866) = v604;
                                            v872 = v606;
                                            v865 = v599;
                                            *&v867 = v600;
                                            v878.i32[0] = v89;
                                            v869 = v34;
                                            v634 = 0;
                                            v635 = 0;
                                            *v590.i64 = v603;
                                            v606.i64[0] = 0x7FF0000000000000;
                                            v636.f64[0] = NAN;
                                            v636.f64[1] = NAN;
                                            v883 = v606;
                                            v871 = (v594 >> 34) & 1;
                                            v886 = vbslq_s8(vnegq_f64(v636), v606, v590);
                                            v637 = *v886.i64;
                                            while (2)
                                            {
                                              v638 = *(v633 + 24 + 8 * v635);
                                              v639 = *(v638 + 12);
                                              if ((v639 & 0x20100) == 0x100)
                                              {
                                                v640 = *(v638 + 40);
                                                if (v640)
                                                {
                                                  v641 = *(v640 + 40);
                                                  v642 = CA::Render::Timing::end_time(*(v638 + 40));
                                                  if ((*(v638 + 12) & 0x8000) == 0)
                                                  {
                                                    goto LABEL_1095;
                                                  }
                                                }

                                                else
                                                {
                                                  v641 = 0.0;
                                                  v642 = INFINITY;
                                                  if ((v639 & 0x8000) == 0)
                                                  {
                                                    goto LABEL_1095;
                                                  }
                                                }

                                                v643 = *(v638 + 32);
                                                if (v643 != 0.0)
                                                {
                                                  v644 = 1.0 / v643;
                                                  v641 = v641 - v644;
                                                  v642 = v644 + v642;
                                                }

LABEL_1095:
                                                v608 |= (*&v639 & 0x10000) << 28;
                                                if (v603 == 0.0)
                                                {
                                                  goto LABEL_1136;
                                                }

                                                if (v603 >= 0.0)
                                                {
                                                  v645 = v641;
                                                }

                                                else
                                                {
                                                  v645 = v642;
                                                }

                                                v646 = v645 > v601;
                                                if (v603 >= 0.0)
                                                {
                                                  v647 = v642;
                                                }

                                                else
                                                {
                                                  v647 = v641;
                                                }

                                                if (v603 <= 0.0)
                                                {
                                                  v646 = v645 < v601;
                                                }

                                                if (v646)
                                                {
                                                  v648 = v645 <= v602;
                                                  if (v603 <= 0.0)
                                                  {
                                                    v648 = v645 >= v602;
                                                  }

                                                  goto LABEL_1122;
                                                }

                                                v649 = v647 > v601;
                                                if (v603 <= 0.0)
                                                {
                                                  v649 = v647 < v601;
                                                }

                                                if (v649)
                                                {
                                                  *v929 = v647;
                                                  is_2d_affine = (*(*v638 + 104))(v638);
                                                  v918.f64[0] = INFINITY;
                                                  if (is_2d_affine)
                                                  {
                                                    is_2d_affine = (*(*v638 + 112))(v638, v877, v879, LODWORD(v876.f64[0]), v871, v929, v890, v875, v601, v603, v928);
                                                    if (v602 != v601)
                                                    {
                                                      is_2d_affine = (*(*v638 + 112))(v638, v877, v879, LODWORD(v876.f64[0]), v871, &v918, v890, v875, v602, v603, v895);
                                                      if (*v929 != v918.f64[0])
                                                      {
                                                        goto LABEL_1120;
                                                      }
                                                    }
                                                  }

                                                  v650 = v645 > v602;
                                                  if (v603 <= 0.0)
                                                  {
                                                    v650 = v645 < v602;
                                                  }

                                                  if (v650)
                                                  {
                                                    goto LABEL_1120;
                                                  }

                                                  v651 = v647 > v602;
                                                  if (v603 <= 0.0)
                                                  {
                                                    v651 = v647 < v602;
                                                  }

                                                  if (v651 && *(v638 + 76) != v866)
                                                  {
                                                    v648 = 0;
                                                  }

                                                  else
                                                  {
LABEL_1120:
                                                    v648 = 1;
                                                  }

                                                  v645 = *v929;
LABEL_1122:
                                                  if (v645 != v883.f64[0])
                                                  {
                                                    v608 |= 0x800uLL;
                                                    v652 = v645 < v637;
                                                    if (v603 <= 0.0)
                                                    {
                                                      v652 = v645 > v637;
                                                    }

                                                    v653 = v886;
                                                    if (v652)
                                                    {
                                                      *v653.i64 = v645;
                                                    }

                                                    v886 = v653;
                                                    if (v652)
                                                    {
                                                      v637 = v645;
                                                      v634 = 1;
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  v648 = v647 > v602;
                                                  if (v603 <= 0.0)
                                                  {
                                                    v648 = v647 < v602;
                                                  }
                                                }

                                                if ((*(v638 + 92) & 1) != 0 || !v648)
                                                {
LABEL_1136:
                                                  if (v641 <= v601)
                                                  {
                                                    if (v642 <= v601)
                                                    {
                                                      goto LABEL_1143;
                                                    }

                                                    is_2d_affine = (*(*v638 + 104))(v638);
                                                    if ((is_2d_affine & 1) == 0)
                                                    {
                                                      goto LABEL_1143;
                                                    }
                                                  }

                                                  else if (!v640 || (*(v640 + 12) & 0x400) == 0)
                                                  {
                                                    goto LABEL_1143;
                                                  }

                                                  v608 |= 0x1000uLL;
                                                  goto LABEL_1143;
                                                }

                                                v654 = *(v638 + 12);
                                                v655 = 256;
                                                if ((v654 & 0x1000) == 0)
                                                {
                                                  v655 = 512;
                                                }

                                                v608 |= v655 & 0x7FFFFFFFFFFFFFFFLL | (v654 >> 3) & 0x400 | ((v654 & 0x1000000) >> 24 << 63);
                                              }

LABEL_1143:
                                              if (++v635 >= *(v633 + 16))
                                              {
                                                *v929 = v886.i64[0];
                                                v9 = v892;
                                                if (v634)
                                                {
                                                  v90 = v890;
                                                  v7 = v891;
                                                  LOBYTE(v89) = v878.i8[0];
                                                  v242 = *&v887.f64[0];
                                                  if (v868)
                                                  {
                                                    is_2d_affine = CA::Render::Timing::inverse_map_time(v870, v929, v865);
                                                    v637 = *v929;
                                                  }

                                                  v606.i64[0] = v872.i64[0];
                                                  v656 = v637 < *v872.i64;
                                                  v600 = *&v867;
                                                  v658 = v637 > *v872.i64 && *&v867 < 0.0;
                                                  if (*&v867 <= 0.0)
                                                  {
                                                    v656 = v658;
                                                  }

                                                  if (v656)
                                                  {
                                                    *v606.i64 = v637;
                                                  }

                                                  v11 = v893;
                                                  v34 = v869;
                                                }

                                                else
                                                {
                                                  v11 = v893;
                                                  v90 = v890;
                                                  v7 = v891;
                                                  v34 = v869;
                                                  LOBYTE(v89) = v878.i8[0];
                                                  v242 = *&v887.f64[0];
                                                  v600 = *&v867;
                                                  v606.i64[0] = v872.i64[0];
                                                }

LABEL_1162:
                                                v659 = *(v7 + 32);
                                                v660 = *v606.i64 < v659;
                                                v662 = *v606.i64 > v659 && v600 < 0.0;
                                                if (v600 <= 0.0)
                                                {
                                                  v660 = v662;
                                                }

                                                if (v660)
                                                {
                                                  v663 = *(v7 + 48) | 2;
                                                  v664 = v659 == *v606.i64 || *v606.i64 == 0.0;
                                                  v665 = *(v7 + 40) | 2;
                                                  if (!v664)
                                                  {
                                                    v665 = 2;
                                                  }

                                                  *(v7 + 40) = v665;
                                                  *(v7 + 48) = v663;
                                                  *(v7 + 32) = v606.i64[0];
                                                }

                                                v617 = v909.i64[1] | v608;
                                                v10 = v889;
LABEL_1178:
                                                v666 = v917;
                                                v909.i64[1] = v617 | ((v917 & 7) << 53);
                                                if (v89)
                                                {
                                                  v913 = vmulq_f64(v913, v897);
                                                  v667 = *(v9 + 7);
                                                  if (v667)
                                                  {
                                                    if ((*(v242 + 13) & 9) != 0 && (is_2d_affine = CA::Mat4Impl::mat4_is_2d_affine(*(v9 + 7), v589), !is_2d_affine) || *(v667 + 24) != 0.0 || *(v667 + 56) != 0.0)
                                                    {
                                                      v917 = v666 & 0xFDFF;
                                                    }
                                                  }
                                                }

                                                if (v882 && atomic_fetch_add((v90 + 8), 0xFFFFFFFF) == 1)
                                                {
                                                  is_2d_affine = (*(*v90 + 16))(v90);
                                                }

                                                v668 = v884.f64[0];
                                                v669 = (*&v884.f64[0] >> 34) & 1;
                                                v670 = *(v9 + 4);
                                                v671 = v881;
                                                if ((*(v670 + 45) & 4) != 0)
                                                {
                                                  *(v9 + 29) = 0;
                                                }

                                                else
                                                {
                                                  v672 = *(v670 + 36);
                                                  v673 = v672 | (v672 << 8) | ((v672 | (v672 << 8)) << 16);
                                                  *(v9 + 29) = v673;
                                                  v674 = *(v7 + 96);
                                                  if (v674)
                                                  {
                                                    v675 = (*(v674 + 196) | (*(v674 + 196) << 24)) & 0xFF00FF00FF00FFLL;
                                                    v673 = ((((v675 + v675 * v672) >> 8) & 0xFF00FF00FF00FFLL) >> 24) | ((v675 + v675 * v672) >> 8) & 0xFF00FF;
                                                    *(v9 + 29) = v673;
                                                  }

                                                  if ((*(v9 + 28) & 8) == 0)
                                                  {
                                                    v676 = *(v9 + 11);
                                                    if (v676)
                                                    {
                                                      if ((*(*(v676 + 32) + 13) & 9) != 0)
                                                      {
                                                        v677 = *(v676 + 116);
                                                        if (v673 == -1)
                                                        {
                                                          v673 = v677;
                                                        }

                                                        else if (v677 != -1)
                                                        {
                                                          v678 = vand_s8(vmul_s32(vand_s8(vdup_n_s32(v673 >> 8), 0xFF0000FF00), vadd_s32(vand_s8(vshl_u32(vdup_n_s32(v677), 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL), 0x100000001)), 0x1FF0001FF0000);
                                                          v673 = (((v673 >> 8) & 0xFF0000) + ((v673 >> 8) & 0xFF0000) * HIBYTE(v677)) & 0xFF000000 | ((v673 * v677 + v673) >> 8) | v678.i32[0] | v678.i32[1];
                                                        }

                                                        *(v9 + 29) = v673;
                                                      }
                                                    }
                                                  }

                                                  *(v9 + 280) = v673 == 0;
                                                }

                                                v679 = v671 & 1;
                                                v680 = *(v9 + 15);
                                                if (v680 && *(v680 + 5))
                                                {
                                                  v681 = *(v9 + 17);
                                                  if (!v681)
                                                  {
                                                    v681 = CA::Render::LayerNodeAllocator::alloc_node(is_2d_affine);
                                                    *(v9 + 17) = v681;
                                                  }

                                                  *(v681 + 3) |= 0x4000000uLL;
                                                  *(v681 + 11) = *(v9 + 11);
                                                  ++*(v7 + 132);
                                                  memset(v929, 0, 32);
                                                  *&v929[32] = 1065353216;
                                                  std::vector<std::unordered_map<void *,CA::Render::LayerNode *>>::push_back[abi:nn200100](v11 + 108, v929);
                                                  std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v929);
                                                  CA::Render::Updater::prepare_layer0(v10, v681, *(*(v9 + 15) + 40), v7, v909.i8[0] & 8);
                                                  CA::Render::Update::pop_dependence_group(v11, v682);
                                                  --*(v7 + 132);
                                                  *(v681 + 11) = *(v9 + 11);
                                                }

                                                else
                                                {
                                                  v683 = *(v9 + 17);
                                                  if (v683)
                                                  {
                                                    *(v683 + 88) = 0;
                                                    if (atomic_fetch_add((v683 + 16), 0xFFFFFFFF) == 1)
                                                    {
                                                      CA::Render::LayerNode::delete_node(v683, v680);
                                                    }

                                                    *(v9 + 17) = 0;
                                                    v680 = *(v9 + 15);
                                                  }

                                                  if (v680)
                                                  {
                                                    CA::Render::Update::release_object(v11, v680);
                                                    *(v9 + 15) = 0;
                                                  }
                                                }

                                                LODWORD(v890) = v669 | v679;
                                                v684 = *(v242 + 136);
                                                if (v684)
                                                {
                                                  v685 = *v684;
                                                  v686 = &CADisplayTimerGetTypeID::type;
                                                  if (*v684)
                                                  {
                                                    memset(v929, 0, 24);
                                                    (*(*v685 + 152))(v929, v685, v11, v9, v902, v907);
                                                    if ((*v929 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && v907 != 0.0)
                                                    {
                                                      v909.i64[1] |= 0x704uLL;
                                                      v687 = *(v11 + 10);
                                                      if (vabdd_f64(*v929, v687) <= 0.0001)
                                                      {
                                                        v693 = *v929 == v687 || v687 == 0.0;
                                                        v694 = *&v929[8];
                                                        if (!v693)
                                                        {
                                                          v694 = 0;
                                                        }

                                                        v690 = v694 | *&v929[16];
                                                        *&v929[8] = v690;
                                                        *(v11 + 13) |= *&v929[16];
                                                        v695 = *(v11 + 11);
                                                        if (v695 >= v687)
                                                        {
                                                          if (v687 != 0.0 && v695 > v687)
                                                          {
                                                            goto LABEL_1238;
                                                          }

                                                          goto LABEL_1237;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v687 = (*v929 - v902) / v907 + v687;
                                                        v688 = *v929 == v687 || v687 == 0.0;
                                                        v689 = *&v929[8];
                                                        if (!v688)
                                                        {
                                                          v689 = 0;
                                                        }

                                                        v690 = v689 | *&v929[16];
                                                        *&v929[8] = v690;
                                                        *(v11 + 13) |= *&v929[16];
                                                        v691 = *(v11 + 11);
                                                        if (v691 >= v687)
                                                        {
                                                          if (v687 != 0.0 && v691 > v687)
                                                          {
LABEL_1238:
                                                            *(v11 + 12) = v690;
                                                            *(v11 + 11) = v687;
                                                            goto LABEL_1239;
                                                          }

LABEL_1237:
                                                          v690 |= *(v11 + 12);
                                                          goto LABEL_1238;
                                                        }
                                                      }
                                                    }

LABEL_1239:
                                                    if ((*(v11 + 1379) & 2) != 0 && v685[12] == 3)
                                                    {
                                                      v696 = **(v242 + 136);
                                                      if (*(v696 + 12) != 3)
                                                      {
                                                        v696 = 0;
                                                      }

                                                      if ((~*(v696 + 12) & 0x80400) == 0)
                                                      {
                                                        v909.i64[1] |= 0x100000000000uLL;
                                                        *(v9 + 3) |= 0x40000000000uLL;
                                                      }
                                                    }

                                                    v697 = *(v685 + 3);
                                                    if (v697 == 8)
                                                    {
                                                      *(v11 + 172) |= 0x8000000000uLL;
                                                      v697 = *(v685 + 3);
                                                    }

                                                    if ((v697 & 0x1FF) == 0x122)
                                                    {
                                                      LODWORD(v890) = ((*(v9 + 27) & 2) == 0) | v890;
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  v686 = &CADisplayTimerGetTypeID::type;
                                                }

                                                v698 = v909.i64[1];
                                                if ((v909.i16[4] & 0x300) != 0)
                                                {
                                                  v909.i64[0] |= 7uLL;
                                                }

                                                if ((v909.i16[4] & 0x100) != 0)
                                                {
                                                  v909.i64[0] |= 8uLL;
                                                }

                                                if ((v909.i32[2] & 0x8000400) != 0)
                                                {
                                                  v909.i64[0] |= 0x10uLL;
                                                }

                                                if ((v909.i64[1] & 0x100000000000) != 0)
                                                {
                                                  v909.i64[0] |= 0x100000000000uLL;
                                                }

                                                if ((v909.i16[4] & 0x700) != 0)
                                                {
                                                  v909.i64[0] |= 0x10000000uLL;
                                                }

                                                v699 = *(v7 + 132);
                                                v916 = v699;
                                                v912 = 0;
                                                v700 = *(v242 + 136);
                                                if (v700)
                                                {
                                                  v701 = *v700;
                                                  if (*v700)
                                                  {
                                                    if (*(v701 + 12) == 31)
                                                    {
                                                      v909.i64[1] |= 0x4000000uLL;
                                                      v702 = *(v701 + 12);
                                                      if ((v702 & 0x8000) != 0)
                                                      {
                                                        v916 = v699 + 1;
                                                        v909.i64[1] = v698 | 0x4000100;
                                                        *(v900 + 3) |= 0x20000000uLL;
                                                        v704 = CA::Render::Context::context_by_hosting_token((v701 + 16), v680);
                                                        if (v704)
                                                        {
LABEL_1268:
                                                          CA::Render::Update::add_included_context(v11, v704);
                                                        }

LABEL_1312:
                                                        v242 = *&v887.f64[0];
                                                      }

                                                      else if (v702 & 0x400) == 0 || (v703 = *(v701 + 48)) != 0 && *(v703 + 20) != 1 || (*(v11 + 344))
                                                      {
                                                        CA::Render::LayerHost::retain_hosted_context(v929, v701, v10[9], (*(v9 + 3) >> 26) & 1);
                                                        v704 = *v929;
                                                        if (*v929)
                                                        {
                                                          goto LABEL_1268;
                                                        }

                                                        goto LABEL_1312;
                                                      }

                                                      if (*(v701 + 13))
                                                      {
                                                        *(v9 + 3) |= 0x800000uLL;
                                                      }
                                                    }
                                                  }
                                                }

                                                v904 = INFINITY;
                                                v905 = 0;
                                                v906 = 0;
                                                if (v902 < 0.0)
                                                {
                                                  *(v9 + 11) = 0;
                                                }

                                                if (!CA::Render::Update::allowed_in_update(v11, v10[9], v242, 0))
                                                {
                                                  *(v9 + 11) = 0;
                                                }

                                                if ((*(v686 + 2081) & 1) == 0 && (*(v11 + 344) & 1) == 0 && CA::Render::Updater::layer_may_be_hidden_culled(v242, v713))
                                                {
                                                  v811 = v909.i64[0];
                                                  if ((v909.i64[0] & 0x160000000000) == 0)
                                                  {
                                                    *(v9 + 11) = 0;
                                                    v909.i64[0] = v811 & 0xFFFFE9FFFFFFFFD9;
                                                    v909.i64[1] = 0x200000000000;
                                                  }
                                                }

                                                v716 = *(v11 + 47);
                                                if (v716 && ((*(*v716 + 16))(v716, v10[9], v9, v242) & 1) == 0 && (*(v11 + 344) & 1) != 0)
                                                {
                                                  *(v9 + 11) = 0;
                                                }

                                                v717 = v909.i64[0];
                                                if ((*&v668 & 0x400000000) != 0)
                                                {
                                                  v717 = v909.i64[0] & 0xFFFFFFFFFFFFFFEFLL;
                                                  *&v909 &= __PAIR128__(-17, -17);
                                                }

                                                if ((*(v242 + 50) & 0x80) == 0)
                                                {
                                                  *(v9 + 3) |= 0x8000000000uLL;
                                                }

                                                v718 = v885;
                                                if (*(v9 + 11) != *v7)
                                                {
                                                  if ((*&v668 & 0x800000000) != 0)
                                                  {
                                                    goto LABEL_1465;
                                                  }

                                                  goto LABEL_1467;
                                                }

                                                v886.i64[0] = v717;
                                                v719 = *(v9 + 12);
                                                *&v929[8] = *(v9 + 13);
                                                *v929 = v719;
                                                **&v929[8] = v929;
                                                *(*(v9 + 12) + 8) = v929;
                                                *(v9 + 12) = v9 + 96;
                                                *(v9 + 13) = v9 + 96;
                                                v720 = *&v929[8];
                                                v721 = v894;
                                                while (v720 != v929)
                                                {
                                                  v722 = v720;
                                                  v720 = *(v720 + 1);
                                                  if (v722[4] < 2)
                                                  {
                                                    v723 = *v722;
                                                    *(v723 + 8) = v720;
                                                    *v720 = v723;
                                                    *v722 = v722;
                                                    *(v722 + 1) = v722;
                                                    *(v722 + 11) = 0;
                                                    if (atomic_fetch_add(v722 + 4, 0xFFFFFFFF) == 1)
                                                    {
                                                      CA::Render::LayerNode::delete_node(v722, v713);
                                                    }
                                                  }

                                                  else
                                                  {
                                                    *(v722 + 3) |= 0x800uLL;
                                                  }
                                                }

                                                v724 = v911;
                                                if (v911)
                                                {
                                                  if (BYTE11(xmmword_1ED4E980C) == 1)
                                                  {
                                                    if (!atomic_load((v911 + 228)))
                                                    {
                                                      if (*(v911 + 256))
                                                      {
                                                        v813 = 0;
                                                      }

                                                      else
                                                      {
                                                        v813 = getpid();
                                                      }

                                                      v823 = 0;
                                                      atomic_compare_exchange_strong((v724 + 228), &v823, v813);
                                                      v9 = v892;
                                                      v11 = v893;
                                                      v721 = v894;
                                                      v242 = *&v887.f64[0];
                                                    }

                                                    kdebug_trace();
                                                    v724 = v911;
                                                  }

                                                  pthread_mutex_lock((v724 + 72));
                                                  v725 = *(v911 + 600);
                                                  if (v725)
                                                  {
                                                    CA::Shape::unref(v725);
                                                    *(v911 + 600) = 0;
                                                  }
                                                }

                                                if (v721 && (*&v721[7] || *&v721[8]))
                                                {
                                                  v909.i64[1] |= 0x20000000000uLL;
                                                }

                                                v726 = *(v242 + 152);
                                                if (v726)
                                                {
                                                  for (i = *(v726 + 56); i; v11 = v893)
                                                  {
                                                    v728 = *(v11 + 109);
                                                    if (!std::__hash_table<std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::__unordered_map_hasher<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::hash<CA::Render::Object *>,std::equal_to<CA::Render::Object *>,true>,std::__unordered_map_equal<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::equal_to<CA::Render::Object *>,std::hash<CA::Render::Object *>,true>,std::allocator<std::__hash_value_type<CA::Render::Object *,x_link_struct>>>::find<CA::Render::Object *>((v728 - 40), i))
                                                    {
                                                      if (v9)
                                                      {
                                                        atomic_fetch_add(v9 + 4, 1u);
                                                      }

                                                      v729 = 0x9DDFEA08EB382D69 * ((8 * (i & 0x1FFFFFFF) + 8) ^ HIDWORD(i));
                                                      v730 = 0x9DDFEA08EB382D69 * (HIDWORD(i) ^ (v729 >> 47) ^ v729);
                                                      v731 = 0x9DDFEA08EB382D69 * (v730 ^ (v730 >> 47));
                                                      v732 = *(v728 - 32);
                                                      if (v732)
                                                      {
                                                        v733 = vcnt_s8(v732);
                                                        v733.i16[0] = vaddlv_u8(v733);
                                                        if (v733.u32[0] > 1uLL)
                                                        {
                                                          v734 = 0x9DDFEA08EB382D69 * (v730 ^ (v730 >> 47));
                                                          if (v731 >= *&v732)
                                                          {
                                                            v734 = v731 % *&v732;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v734 = v731 & (*&v732 - 1);
                                                        }

                                                        v735 = *(*(v728 - 40) + 8 * v734);
                                                        if (v735)
                                                        {
                                                          for (j = *v735; j; j = *j)
                                                          {
                                                            v737 = j[1];
                                                            if (v737 == v731)
                                                            {
                                                              if (j[2] == i)
                                                              {
                                                                goto LABEL_1370;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              if (v733.u32[0] > 1uLL)
                                                              {
                                                                if (v737 >= *&v732)
                                                                {
                                                                  v737 %= *&v732;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v737 &= *&v732 - 1;
                                                              }

                                                              if (v737 != v734)
                                                              {
                                                                break;
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }

                                                      operator new();
                                                    }

LABEL_1370:
                                                    i = *(i + 32);
                                                  }
                                                }

                                                v738 = v887.f64[0];
                                                v739 = *(*&v887.f64[0] + 136);
                                                v10 = v889;
                                                if (v739)
                                                {
                                                  v714 = *v739;
                                                  if (*v739)
                                                  {
                                                    if (*(v714 + 12) == 42)
                                                    {
                                                      CA::Render::Updater::prepare_portal(v889, &v900, v9, v714);
                                                    }
                                                  }
                                                }

                                                if ((v890 & 1) == 0 && *(*&v738 + 112) | v911 && v908 <= 0xC0)
                                                {
                                                  v745 = *(v900 + 4);
                                                  if (!v912)
                                                  {
                                                    v757 = *(v745 + 136);
                                                    if (v757)
                                                    {
                                                      v758 = *v757;
                                                      if (*v757)
                                                      {
                                                        if (*(v758 + 12) == 46)
                                                        {
                                                          CA::Render::Updater::prepare_replicator(v10, &v900, v758, v714);
                                                          goto LABEL_1376;
                                                        }
                                                      }
                                                    }
                                                  }

                                                  a3 = *(v745 + 112);
                                                  if ((*(v745 + 13) & 0x20) != 0)
                                                  {
                                                    if (a3)
                                                    {
                                                      CA::Render::Updater::prepare_sublayer0(v10, &v900, a3);
                                                    }
                                                  }

                                                  else if (a3)
                                                  {
                                                    v746 = *(a3 + 16);
                                                    if (v746)
                                                    {
                                                      v747 = (a3 + 24);
                                                      do
                                                      {
                                                        a3 = *v747;
                                                        if (*v747)
                                                        {
                                                          CA::Render::Updater::prepare_sublayer0(v10, &v900, a3);
                                                        }

                                                        ++v747;
                                                        --v746;
                                                      }

                                                      while (v746);
                                                    }
                                                  }

                                                  if (v911)
                                                  {
                                                    v748 = CA::Render::Context::root_layer_handle(v911);
                                                    if (v748)
                                                    {
                                                      a3 = *(v748 + 2);
                                                      if (a3)
                                                      {
                                                        v749 = *(v900 + 3);
                                                        v750 = v749 & 0x4000000;
                                                        v751 = *(v900 + 11);
                                                        if (v751)
                                                        {
                                                          if (((*(v751 + 24) | v749) & 0x20000000) != 0)
                                                          {
                                                            goto LABEL_1400;
                                                          }
                                                        }

                                                        else if ((v749 & 0x20000000) != 0)
                                                        {
LABEL_1400:
                                                          *(v900 + 3) = v749 | 0x4000000;
                                                        }

                                                        v752 = v10[9];
                                                        v10[9] = v911;
                                                        CA::Render::Updater::prepare_sublayer0(v10, &v900, a3);
                                                        *(v900 + 3) = *(v900 + 3) & 0xFFFFFFFFFBFFFFFFLL | v750;
                                                        v10[9] = v752;
                                                      }
                                                    }

                                                    if ((*(*v10 + 344) & 1) == 0)
                                                    {
                                                      v753 = CA::Render::Context::copy_dirty_shape(v911, v713);
                                                      if (v753)
                                                      {
                                                        v754 = v753;
                                                        CA::Render::Context::invalidate(v10[8], v753, a3);
                                                        CA::Shape::unref(v754);
                                                        v755 = v911;
                                                        v756 = *(v911 + 608);
                                                        if (v756)
                                                        {
                                                          CA::Shape::unref(v756);
                                                        }

                                                        *(v755 + 608) = 1;
                                                      }
                                                    }
                                                  }
                                                }

LABEL_1376:
                                                v740 = *(*&v738 + 136);
                                                v7 = v891;
                                                if (v740)
                                                {
                                                  v741 = *v740;
                                                  if (!*v740)
                                                  {
                                                    goto LABEL_1642;
                                                  }

                                                  v742 = *&v887.f64[0];
                                                  if (*(v741 + 12) == 48)
                                                  {
                                                    v743 = *(*&v887.f64[0] + 152);
                                                    if (v743)
                                                    {
                                                      if (*(v743 + 80))
                                                      {
                                                        v744 = *(v743 + 84);
                                                      }

                                                      else
                                                      {
                                                        *(v743 + 80) = atomic_fetch_add(CA::Render::next_cache_id(void)::cache_id, 1u) + 1;
                                                        v744 = *(*v10 + 68);
                                                        *(v743 + 84) = v744;
                                                      }

                                                      if (v744)
                                                      {
                                                        v759 = CA::Render::SDFLayer::set_original(v741);
                                                        if (v759)
                                                        {
                                                          v760 = v759;
                                                          *(v759 + 188) = 0;
                                                          CA::Render::Updater::count_sdf_element_layers(v742, v759, a3);
                                                          if ((BYTE6(xmmword_1ED4E98AC) & 1) != 0 || (*(v743 + 104) & 0x2000000000006000) != 0)
                                                          {
                                                            v761 = *(*v10 + 68);
                                                            *(v743 + 84) = v761;
                                                            v909.i64[0] |= 3uLL;
                                                          }

                                                          else
                                                          {
                                                            v761 = *(v743 + 84);
                                                          }

                                                          *(v760 + 50) = v761;
                                                        }
                                                      }
                                                    }
                                                  }

                                                  v740 = *(v742 + 136);
                                                  if (v740)
                                                  {
LABEL_1642:
                                                    v762 = *(v740 + 96);
                                                    if (v762)
                                                    {
                                                      v763 = *(v762 + 16);
                                                      if (v763)
                                                      {
                                                        v764 = v762 + 8 * v763 + 24;
                                                        v765 = v762 + 24;
                                                        v766 = v900;
                                                        v767 = v900 + 24;
                                                        do
                                                        {
                                                          if ((*(*v765 + 14) & 8) != 0)
                                                          {
                                                            v768 = *(*v765 + 40);
                                                            if (v768)
                                                            {
                                                              v769 = *(v768 + 16);
                                                              if (v769)
                                                              {
                                                                v770 = 0;
                                                                v771 = v768 + 24;
                                                                while (1)
                                                                {
                                                                  v772 = *(v771 + 8 * v770);
                                                                  if (*(v772 + 16) == 431)
                                                                  {
                                                                    break;
                                                                  }

                                                                  if (v769 == ++v770)
                                                                  {
                                                                    goto LABEL_1441;
                                                                  }
                                                                }

                                                                if ((v770 & 0x80000000) == 0)
                                                                {
                                                                  v773 = *(v772 + 24);
                                                                  if (v773)
                                                                  {
                                                                    for (k = *(v766 + 13); k != v767; k = k[1])
                                                                    {
                                                                      v775 = *(k[4] + 128);
                                                                      if (v775)
                                                                      {
                                                                        a3 = *(v773 + 24);
                                                                        if (a3 == *(v775 + 24) && !memcmp((v773 + 28), (v775 + 28), a3))
                                                                        {
                                                                          k[3] |= 0x2000000000uLL;
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }

LABEL_1441:
                                                          v765 += 8;
                                                        }

                                                        while (v765 != v764);
                                                      }
                                                    }
                                                  }
                                                }

                                                v11 = v893;
                                                v242 = *&v887.f64[0];
                                                v776 = v884.f64[0];
                                                if (v911)
                                                {
                                                  pthread_mutex_unlock((v911 + 72));
                                                  if (BYTE11(xmmword_1ED4E980C) == 1)
                                                  {
                                                    v814 = v911;
                                                    if (!atomic_load((v911 + 228)))
                                                    {
                                                      if (*(v911 + 256))
                                                      {
                                                        v816 = 0;
                                                      }

                                                      else
                                                      {
                                                        v816 = getpid();
                                                      }

                                                      v824 = 0;
                                                      atomic_compare_exchange_strong((v814 + 228), &v824, v816);
                                                      v9 = v892;
                                                      v11 = v893;
                                                      v10 = v889;
                                                      v7 = v891;
                                                      v242 = *&v887.f64[0];
                                                      v776 = v884.f64[0];
                                                    }

                                                    kdebug_trace();
                                                  }

                                                  v777 = *(v11 + 47);
                                                  if (v777)
                                                  {
                                                    (*(*v777 + 48))(v777, v911);
                                                  }
                                                }

                                                v778 = *&v929[8];
                                                if (*&v929[8] != v929)
                                                {
                                                  do
                                                  {
                                                    v779 = *(v778 + 1);
                                                    *v778 = v778;
                                                    *(v778 + 1) = v778;
                                                    *(v778 + 3) &= ~0x800uLL;
                                                    *(v778 + 11) = 0;
                                                    if (atomic_fetch_add(v778 + 4, 0xFFFFFFFF) == 1)
                                                    {
                                                      CA::Render::LayerNode::delete_node(v778, v713);
                                                    }

                                                    v778 = v779;
                                                  }

                                                  while (v779 != v929);
                                                }

                                                if (*(v9 + 16) || *(v242 + 120))
                                                {
                                                  v780 = v900;
                                                  v781 = *(v900 + 16);
                                                  if (v781)
                                                  {
                                                    *(v781 + 24) |= 0x800uLL;
                                                    *(v780 + 16) = 0;
                                                  }

                                                  v782 = *(*(v780 + 4) + 120);
                                                  if (v782)
                                                  {
                                                    LOBYTE(v918.f64[0]) = 0;
                                                    v783 = CA::Render::Updater::layer_node(v782, v10, v901, v916, &v918);
                                                    *(v783 + 11) = v780;
                                                    CA::Render::Updater::prepare_layer0(v10, v783, v782, &v900, v909.i8[0] & 8);
                                                    *(v783 + 11) = v780;
                                                    *(v780 + 16) = v783;
                                                    if ((LOBYTE(v918.f64[0]) & 1) == 0)
                                                    {
                                                      atomic_fetch_add(v783 + 4, 1u);
                                                    }

                                                    v9 = v892;
                                                  }

                                                  v242 = *&v887.f64[0];
                                                  if (v781)
                                                  {
                                                    if ((*(v781 + 25) & 8) != 0)
                                                    {
                                                      *(v781 + 88) = 0;
                                                      if (atomic_fetch_add((v781 + 16), 0xFFFFFFFF) == 1)
                                                      {
                                                        CA::Render::LayerNode::delete_node(v781, v713);
                                                      }
                                                    }
                                                  }
                                                }

                                                v718 = v885;
                                                if (v894)
                                                {
                                                  v909.i64[1] |= *&v894[13] & 0x1000000000000000;
                                                }

                                                LOBYTE(v717) = v886.i8[0];
                                                if ((*&v776 & 0x800000000) != 0)
                                                {
LABEL_1465:
                                                  *(v10 + 48) = 0;
                                                  if (CA::Render::FlattenManager::is_stager(v9))
                                                  {
                                                    os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
                                                    v784 = *(v9 + 19);
                                                    memmove(v784, v10[2], 0x88uLL);
                                                    *(v784 + 216) = v10[3];
                                                    *(v784 + 244) = *(v10 + 8);
                                                    *(v784 + 275) = *(v10 + 40);
                                                    v785 = (v784 + 273);
                                                    v242 = *&v887.f64[0];
                                                    *v785 = *(v10 + 41);
                                                    os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
                                                  }
                                                }

LABEL_1467:
                                                v786 = *(v242 + 136);
                                                if (v786)
                                                {
                                                  v787 = *v786;
                                                  if (v787)
                                                  {
                                                    if (*(v787 + 12) == 63)
                                                    {
                                                      *(v10 + 49) = 0;
                                                    }
                                                  }
                                                }

                                                v715.n128_f64[0] = v904;
                                                if (v904 != INFINITY)
                                                {
                                                  if ((v917 & 0x80) != 0)
                                                  {
                                                    *(v7 + 136) |= 0x80u;
                                                  }

                                                  else if (v718)
                                                  {
                                                    CA::Render::Timing::inverse_map_time(v718, &v904, *(v7 + 16));
                                                    v715.n128_f64[0] = v904;
                                                  }

                                                  v788 = v905;
                                                  *(v7 + 48) |= v906;
                                                  v789 = *(v7 + 32);
                                                  if (v789 >= v715.n128_f64[0])
                                                  {
                                                    v790 = v789 <= v715.n128_f64[0] || v715.n128_f64[0] == 0.0;
                                                    v791 = *(v7 + 40);
                                                    if (!v790)
                                                    {
                                                      v791 = 0;
                                                    }

                                                    *(v7 + 40) = v791 | v788;
                                                    *(v7 + 32) = v715.n128_u64[0];
                                                  }
                                                }

                                                if ((v917 & 0x40) != 0)
                                                {
                                                  *(v9 + 3) |= 0x20uLL;
                                                }

                                                if (!v888 && (*(v9 + 24) & 0x20) != 0)
                                                {
                                                  CA::Render::LayerNode::depth_sort_sublayers(v9);
                                                }

                                                v792 = v909.i64[0];
                                                if ((v909.i8[0] & 8) != 0)
                                                {
                                                  if (*(v9 + 7))
                                                  {
                                                    v794 = *(v9 + 3) | 4;
                                                  }

                                                  else
                                                  {
                                                    v715.n128_u64[0] = *(v9 + 10);
                                                    *(v9 + 30) = v715.n128_u64[0];
                                                    *(v9 + 31) = v715.n128_u64[0];
                                                    v794 = *(v9 + 3) & 0xFFFFFFFFFFFFFFF3;
                                                  }

                                                  *(v9 + 3) = v794;
                                                  v793 = v909.i64[1];
                                                  if ((v792 & 0x28000) != 0)
                                                  {
                                                    v793 = v909.i64[1] & 0xFFFFFFFFFFF97FFFLL | 0x40000;
                                                    v909.i64[1] = v793;
                                                    if ((v792 & 0x8000) != 0)
                                                    {
                                                      v792 |= 3uLL;
                                                      v909.i64[0] = v792;
                                                    }
                                                  }
                                                }

                                                else
                                                {
                                                  v793 = v909.i64[1];
                                                  if ((v909.i64[0] & 0x28000) != 0)
                                                  {
                                                    v793 = v909.i64[1] | v909.i16[0] & 0x8000;
                                                    v909.i64[1] = v793;
                                                    if (v909.i16[0] < 0 && (v717 & 0x10) != 0)
                                                    {
                                                      v793 |= 0x10000uLL;
                                                      v909.i64[1] = v793;
                                                    }
                                                  }
                                                }

                                                if ((v792 & 0x8000) != 0)
                                                {
                                                  if (v894)
                                                  {
                                                    if ((v793 & 0x8000) != 0)
                                                    {
                                                      v798 = v894[3];
                                                      if (v798)
                                                      {
                                                        v799 = v900;
                                                        v800 = *(*&v798 + 384);
                                                        if (v800 != v900)
                                                        {
                                                          if (v800 && atomic_fetch_add(v800 + 4, 0xFFFFFFFF) == 1)
                                                          {
                                                            CA::Render::LayerNode::delete_node(v800, v713);
                                                          }

                                                          if (v799)
                                                          {
                                                            atomic_fetch_add(v799 + 4, 1u);
                                                          }

                                                          *(*&v798 + 384) = v799;
                                                          v793 = v909.i64[1];
                                                          v792 = v909.i64[0];
                                                        }
                                                      }
                                                    }
                                                  }
                                                }

                                                if ((v793 & 0x40000) != 0)
                                                {
                                                  *(v7 + 72) |= 0x40000uLL;
                                                  v793 &= 0xFFFFFFFFFFF87FFFLL;
                                                  v792 |= 4uLL;
                                                  v909.i64[1] = v793;
                                                  v909.i64[0] = v792;
                                                }

                                                if (v894 && ((v792 & 0x10) != 0 || (v792 & 8) != 0 && (~*(v242 + 40) & 0x90000000000000) == 0))
                                                {
                                                  v894[9].i32[1] = *(v10 + 2);
                                                }

                                                if ((*(v9 + 24) & 0x40) != 0)
                                                {
                                                  v795 = 0x6F1FC9FFF3F8007FLL;
                                                }

                                                else
                                                {
                                                  v795 = 0x6F1FC9FFF3FF807FLL;
                                                }

                                                v796 = *(v242 + 104);
                                                if (v796)
                                                {
                                                  if (*(v796 + 12) == 25)
                                                  {
                                                    v797 = (*(*v796 + 80))(v796, v715);
                                                    if (!v797)
                                                    {
                                                      v797 = *(v796 + 32);
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v797 = v796;
                                                  }
                                                }

                                                else
                                                {
                                                  v797 = 0;
                                                }

                                                v801 = *(v9 + 6);
                                                if (v801 != v797)
                                                {
                                                  if (v801 && atomic_fetch_add(v801 + 2, 0xFFFFFFFF) == 1)
                                                  {
                                                    (*(*v801 + 16))(v801);
                                                  }

                                                  if (v797)
                                                  {
                                                    v802 = (v797 + 8);
                                                    if (!atomic_fetch_add((v797 + 8), 1u))
                                                    {
                                                      v797 = 0;
                                                      atomic_fetch_add(v802, 0xFFFFFFFF);
                                                    }
                                                  }

                                                  *(v9 + 6) = v797;
                                                }

                                                if ((v880 & 0x100000) == 0)
                                                {
                                                  *(v7 + 16) = v873;
                                                  *(v7 + 56) = v34;
                                                  *(v7 + 80) = v874;
                                                }

                                                v26 = v795 & v792 | v793;
                                                *(v7 + 136) |= v917 & 0x400;
                                                v803 = v911;
                                                if (v911 && atomic_fetch_add((v911 + 8), 0xFFFFFFFF) == 1)
                                                {
                                                  (*(*v803 + 16))(v803);
                                                }

LABEL_1539:
                                                if ((v26 & 1) != 0 && (v26 &= ~1uLL, *(v7 + 136) |= 0x400u, v894) && (*(v7 + 64) & 1) == 0)
                                                {
                                                  v804 = v894;
                                                  CA::Render::Context::invalidate(v10[8], v894 + 15, a3);
                                                  if ((v26 & 0x10000) == 0)
                                                  {
LABEL_1546:
                                                    if (v804)
                                                    {
                                                      v804[13] = v26;
                                                    }

                                                    if (!v888 && (v26 & 4) == 0)
                                                    {
                                                      v26 |= (*(v9 + 3) >> 3) & 4;
                                                    }

                                                    v805 = v26 | 0x2000;
                                                    if ((v26 & 0x8000000008007F80) == 0)
                                                    {
                                                      v805 = v26;
                                                    }

                                                    if ((v805 & 0x300) != 0)
                                                    {
                                                      v805 |= 0x4000uLL;
                                                    }

                                                    if ((v805 & 6) != 0)
                                                    {
                                                      v805 |= 0x20uLL;
                                                    }

                                                    if ((v805 & 0x28000) != 0)
                                                    {
                                                      v806 = (2 * v805) & 0x40000000000 | v805 | 0x20000;
                                                    }

                                                    else
                                                    {
                                                      v806 = (2 * v805) & 0x40000000000 | v805;
                                                    }

                                                    *(v7 + 72) |= v806 & 0x140004066020;
                                                    if ((v806 & 0x12) != 0)
                                                    {
                                                      *(v7 + 64) |= 0x10uLL;
                                                    }

                                                    if (v804)
                                                    {
                                                      if ((v806 & 0x3C) != 0 && *(v7 + 132) == 0)
                                                      {
                                                        v808 = v804[7];
                                                        if (v808)
                                                        {
                                                          v809 = *(v7 + 16);
                                                          v810 = (*(v7 + 136) >> 10) & 1;
                                                          do
                                                          {
                                                            (***&v808)(v808, v11, v804, v810, v809);
                                                            v808 = *(*&v808 + 32);
                                                          }

                                                          while (v808);
                                                        }
                                                      }
                                                    }

                                                    return;
                                                  }
                                                }

                                                else
                                                {
                                                  v804 = v894;
                                                  if ((v26 & 0x10000) == 0)
                                                  {
                                                    goto LABEL_1546;
                                                  }
                                                }

                                                *(v11 + 38) |= 0x100uLL;
                                                goto LABEL_1546;
                                              }

                                              continue;
                                            }
                                          }
                                        }

                                        else
                                        {
                                          v577 = (*(*v571 + 80))(*(*&v887.f64[0] + 104));
                                          v90 = v890;
                                          if (v577)
                                          {
                                            v578 = v577;
                                            v579 = (*(*v577 + 248))(v577);
                                            v576 = (*(*v578 + 256))(v578) | v579;
                                            goto LABEL_997;
                                          }
                                        }

                                        v576 = 0;
                                        goto LABEL_997;
                                      }
                                    }
                                  }

                                  v561 = *(v242 + 104);
                                  if (*(v561 + 12) == 25)
                                  {
                                    v562 = atomic_load((*(*(v561 + 16) + 24) + 8));
                                    if ((v562 & 0x200000) == 0 || (*(v11 + 1382) & 1) == 0)
                                    {
                                      if (!CA::Render::ImageQueue::is_protected(*(v242 + 104)) || *(v11 + 445) != 1 || *(v11 + 39))
                                      {
                                        goto LABEL_976;
                                      }

                                      v705 = atomic_load((*(*(v561 + 16) + 24) + 8));
                                      if ((v705 & 4) != 0)
                                      {
                                        v556 = 1;
                                      }

                                      else
                                      {
                                        v706 = *(v561 + 64);
                                        if (!v706)
                                        {
                                          v706 = *(v561 + 80);
                                          if (!v706)
                                          {
                                            v706 = *(v561 + 24);
                                          }
                                        }

                                        v556 = (*(*v706 + 256))(v706);
                                      }

                                      if (byte_1ED4E98C0 != 1)
                                      {
                                        goto LABEL_987;
                                      }

                                      if (x_log_get_render(void)::once[0] != -1)
                                      {
                                        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
                                      }

                                      v557 = x_log_get_render(void)::log;
                                      v708 = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT);
                                      v9 = v892;
                                      v11 = v893;
                                      v10 = v889;
                                      if (!v708)
                                      {
                                        goto LABEL_987;
                                      }

                                      *v929 = 136315650;
                                      v559 = "wireless display doesn't support protection and iq is protected";
LABEL_969:
                                      *&v929[4] = v559;
                                      *&v929[12] = 2048;
                                      *&v929[14] = v556;
                                      *&v929[22] = 2048;
                                      *&v929[24] = 0;
                                      v560 = v557;
LABEL_1303:
                                      _os_log_impl(&dword_183AA6000, v560, OS_LOG_TYPE_DEFAULT, "drm content culled - %s <content: %llu> <allowed: %llu>", v929, 0x20u);
                                      goto LABEL_987;
                                    }

                                    if (byte_1ED4E98C0 != 1)
                                    {
                                      goto LABEL_987;
                                    }

                                    if (x_log_get_render(void)::once[0] != -1)
                                    {
                                      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
                                    }

                                    v629 = x_log_get_render(void)::log;
                                    v630 = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT);
                                    v9 = v892;
                                    v11 = v893;
                                    v10 = v889;
                                    if (!v630)
                                    {
                                      goto LABEL_987;
                                    }

                                    *v929 = 136315650;
                                    *&v929[4] = "update is aocp and iq disallows aocp";
                                    *&v929[12] = 2048;
                                    *&v929[14] = -1;
                                    *&v929[22] = 2048;
                                    *&v929[24] = -1;
LABEL_1302:
                                    v560 = v629;
                                    goto LABEL_1303;
                                  }

LABEL_976:
                                  if (*(v561 + 12) == 25)
                                  {
                                    if (CA::Render::ImageQueue::is_protected(v561))
                                    {
                                      v563 = *(v561 + 64);
                                      if (v563)
                                      {
                                        goto LABEL_980;
                                      }

                                      v563 = *(v561 + 80);
                                      if (v563)
                                      {
                                        goto LABEL_980;
                                      }

                                      if (*(v561 + 24))
                                      {
                                        v563 = *(v561 + 80);
                                        if (!v563)
                                        {
                                          v563 = *(v561 + 24);
                                        }

LABEL_980:
                                        v564 = (*(*v563 + 256))(v563);
                                      }

                                      else
                                      {
                                        v564 = 0;
                                      }

                                      v565 = atomic_load((*(*(v561 + 16) + 24) + 8));
                                      v566 = (v565 >> 2) & 1 | v564;
LABEL_985:
                                      v570 = *(v11 + 39);
                                      if ((v566 & ~v570) == 0)
                                      {
                                        if (*(v11 + 87))
                                        {
                                          v616 = v887.f64[0];
                                          if ((*(*&v887.f64[0] + 13) & 4) != 0 && byte_1ED4E98C0 == 1)
                                          {
                                            if (x_log_get_render(void)::once[0] != -1)
                                            {
                                              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
                                            }

                                            v819 = x_log_get_render(void)::log;
                                            v820 = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT);
                                            v9 = v892;
                                            v11 = v893;
                                            v10 = v889;
                                            v616 = v887.f64[0];
                                            if (v820)
                                            {
                                              *v929 = 136315650;
                                              *&v929[4] = "tainted content in unentitled pid";
                                              *&v929[12] = 2048;
                                              *&v929[14] = -1;
                                              *&v929[22] = 2048;
                                              *&v929[24] = -1;
                                              _os_log_impl(&dword_183AA6000, v819, OS_LOG_TYPE_DEFAULT, "drm content culled - %s <content: %llu> <allowed: %llu>", v929, 0x20u);
                                            }
                                          }

                                          if ((*(*&v616 + 13) & 4) != 0)
                                          {
                                            goto LABEL_987;
                                          }
                                        }

                                        goto LABEL_988;
                                      }

                                      if (byte_1ED4E98C0 != 1)
                                      {
                                        goto LABEL_987;
                                      }

                                      if (x_log_get_render(void)::once[0] != -1)
                                      {
                                        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
                                      }

                                      v629 = x_log_get_render(void)::log;
                                      v709 = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT);
                                      v9 = v892;
                                      v11 = v893;
                                      v10 = v889;
                                      if (!v709)
                                      {
                                        goto LABEL_987;
                                      }

                                      *v929 = 136315650;
                                      *&v929[4] = "display does not support content protection";
                                      *&v929[12] = 2048;
                                      *&v929[14] = v566;
                                      *&v929[22] = 2048;
                                      *&v929[24] = v570;
                                      goto LABEL_1302;
                                    }
                                  }

                                  else
                                  {
                                    v567 = (*(*v561 + 80))(v561);
                                    if (v567)
                                    {
                                      v568 = v567;
                                      v569 = (*(*v567 + 248))(v567);
                                      v566 = (*(*v568 + 256))(v568) | v569;
                                      goto LABEL_985;
                                    }
                                  }

                                  v566 = 0;
                                  goto LABEL_985;
                                }

                                v230 = v887;
                                v231 = v883;
                              }
                            }

                            else
                            {
                              v306 = 0;
                            }
                          }

                          else
                          {
                            v306 = 0;
                            v304 = 0;
                          }

                          v229 &= 0xFFFFEF7F;
                          LODWORD(v933) = v229;
                          goto LABEL_542;
                        }
                      }

                      v232 = 8;
LABEL_347:
                      BYTE4(v933) = v232;
                      LODWORD(v933) = 4096;
                    }

                    v233 = 6;
                    goto LABEL_349;
                  }

                  v200 = *(v199 + 16);
                }

                if (++v201 >= v200)
                {
                  v204 = 0;
                  v90 = v890;
                  v89 = v878.i32[0];
                  goto LABEL_326;
                }
              }
            }

            v129 = v122 + 8 * v128 + 24;
            v130 = (v122 + 24);
            while (1)
            {
              v131 = *v130;
              v132 = *(*v130 + 16);
              v133 = *(v132 + 24);
              v134 = *(v133 + 32);
              if (*&v934 >= v134)
              {
                v134 = *&v934;
              }

              *&v934 = v134;
              v135 = *&v929[40];
              if ((BYTE8(v934) & 1) != 0 && (*(v131 + 13) & 2) != 0)
              {
                v136 = *(v131 + 32);
                if (v136)
                {
                  if (v136)
                  {
                    v137 = v136 >> 1;
                  }

                  else
                  {
                    v137 = *v136;
                    if (*v136)
                    {
                      v137 = *(v136 + 4);
                    }
                  }
                }

                else
                {
                  v137 = 0;
                }

                v138 = *(v131 + 40);
                v139 = v138 >= 60 || v138 == 0;
                if (v139 && (v140 = *(v132 + 16), v141 = v140 - 40, v140 >= 0x28) && (v142 = *(v131 + 24), v142 < v141 >> 3) && (v143 = v133 + v140 - 8 * v142, v144 = *(v143 - 8), v144) && (v145 = (16 * v144) | 8, v146 = *(v143 - 4), 3 * v145 + v146 <= v141) && (v147 = v133 + v146 + 2 * v145, v149 = *(v147 + 40), v148 = v147 + 40, v149))
                {
                  if (v137 == 716)
                  {
                    CA::Render::VelocityState::init_scale(&v929[48], *&v929[40], v124, v125);
                    v136 = *(v131 + 32);
                  }

                  CA::Render::VelocityState::set_keypath_velocity(&v929[48], v136, 0, 0, v144, (v148 + 8 + 8 * v144), (v148 + 8), 0);
                  v150 = *(v131 + 40);
                  if (!v150)
                  {
                    v150 = 60;
                  }

                  if (v150 >= 49)
                  {
                    if (v150 < 0x51)
                    {
                      v187 = 4;
                    }

                    else
                    {
                      v187 = 5;
                    }

                    if (v150 >= 0x3D)
                    {
                      v151 = v187;
                    }

                    else
                    {
                      v151 = 3;
                    }
                  }

                  else
                  {
                    v151 = 1;
                  }

                  v188 = BYTE8(v933);
                  if (BYTE8(v933) <= v151)
                  {
                    v188 = v151;
                  }

                  BYTE8(v933) = v188;
                  if (v151 > BYTE9(v933))
                  {
                    BYTE9(v933) = v151;
                  }

                  BYTE8(v934) |= 0x50u;
                  v135 = *&v929[40];
                }

                else if (v137 == 716)
                {
                  LODWORD(v933) = v933 | 0x200;
                }
              }

              if (*&v929[32])
              {
                v152 = (*(*&v929[32] + 27) & 4) == 0;
              }

              else
              {
                v152 = 1;
              }

              v153 = *(v131 + 16);
              v154 = *(v153 + 16);
              v155 = v154 - 40;
              if (v154 < 0x28)
              {
                goto LABEL_252;
              }

              v156 = *(v131 + 24);
              if (v156 >= v155 >> 3)
              {
                goto LABEL_252;
              }

              v157 = *(v153 + 24);
              v158 = v157 + v154 - 8 * v156;
              v125 = *(v158 - 8);
              if (!v125)
              {
                goto LABEL_252;
              }

              v159 = (16 * v125) | 8;
              v160 = *(v158 - 4);
              if (3 * v159 + v160 > v155)
              {
                goto LABEL_252;
              }

              v161 = v157 + v160 + 2 * v159;
              v162 = v161 + 40;
              if (v152)
              {
                *(v161 + 42) = 1;
              }

              if (!*v162)
              {
                goto LABEL_252;
              }

              v164 = (v131 + 32);
              v163 = *(v131 + 32);
              if (!v163)
              {
                goto LABEL_252;
              }

              if (v163)
              {
                break;
              }

              v165 = *v163;
              if (v165)
              {
                v166 = v165 - 1;
                if (v166 < *v163)
                {
                  v167 = *(v163 + 4 * v166 + 4);
LABEL_232:
                  if (v167 == 515)
                  {
                    if (v125 >= 6)
                    {
                      v170 = *(v162 + 8);
                      if (is_mul_ok(v170, 5uLL))
                      {
                        v171 = *(v162 + 16);
                        if (!(v171 >> 62))
                        {
                          v172 = 5 * v170;
                          if (5 * v170 < 0xFFFFFFFFFFFFFFFALL && !__CFADD__(5 * v170 + 6, 4 * v171))
                          {
                            *&v881 = v171;
                            *&v876.f64[0] = v170;
                            if (x_malloc_get_zone::once != -1)
                            {
                              dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
                            }

                            v173 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xD0uLL, 0xDEEC3011uLL);
                            v124 = v881;
                            if (v173)
                            {
                              *&v882 = v173;
                              CA::Render::MeshTransform::MeshTransform(v173, *&v876.f64[0], v881, -1);
                              v174 = v876.f64[0];
                              v175 = v882;
                              if (*&v876.f64[0])
                              {
                                v176 = (*(v882 + 24) + 28);
                                v177 = (v162 + 56);
                                do
                                {
                                  *(v176 - 7) = vcvt_f32_f64(*v177);
                                  *(v176 - 3) = vcvt_f32_f64(v177[1]);
                                  v178 = v177[2].f64[0];
                                  *(v176 - 1) = v178;
                                  *v176 = 1.0;
                                  v176 += 8;
                                  v177 = (v177 + 40);
                                  --*&v174;
                                }

                                while (v174 != 0.0);
                              }

                              v179 = v881;
                              if (v881)
                              {
                                v180 = 0;
                                v181 = (v162 + 56 + 8 * v172);
                                v182 = *(v175 + 48);
                                v183 = *(v175 + 72) + 4;
                                do
                                {
                                  for (m = 0; m != 16; m += 4)
                                  {
                                    v185 = *v181++;
                                    *(v182 + m) = v185;
                                    *(v183 + 4 * m) = 0;
                                  }

                                  ++v180;
                                  v183 += 64;
                                  v182 += 16;
                                }

                                while (v180 != v179);
                              }

                              *(v175 + 96) = *(v162 + 24);
                              *(v175 + 100) = *(v162 + 32);
                              *(v175 + 108) = *(v162 + 40) != 0.0;
                              *(v175 + 109) = *(v162 + 48) != 0.0;
                              *(v175 + 12) &= 0xFFFFD4FF;
                              CA::Render::Layer::set_keypath_object(v135, v164, v882);
                              v186 = v882;
                              if (atomic_fetch_add((v882 + 8), 0xFFFFFFFF) == 1)
                              {
                                (*(*v186 + 16))(v186);
                              }
                            }
                          }
                        }
                      }
                    }

                    goto LABEL_252;
                  }
                }

                CA::Render::Layer::set_keypath_value(v135, (v131 + 32), ((*(v131 + 12) >> 8) & 1), v125, (v162 + 8));
              }

LABEL_252:
              ++v130;
              v90 = v890;
              if (v130 == v129)
              {
                goto LABEL_265;
              }
            }

            v168 = HIDWORD(v163);
            v169 = HIDWORD(v163) != 0;
            v167 = v163 >> 1;
            if (v169)
            {
              v167 = 0;
            }

            if (v168)
            {
              v167 = v168;
            }

            goto LABEL_232;
          }
        }

        else
        {
          v873 = *(a4 + 16);
          v34 = *(a4 + 56);
          v874 = *(a4 + 80);
          *(a4 + 16) = *(v11 + 10);
          *(a4 + 24) = *(*(a1 + 64) + 592);
          *(a4 + 56) = 1065353216;
          *(a4 + 80) = 0;
          *(a4 + 136) |= 0x80u;
          if (v33)
          {
            goto LABEL_45;
          }
        }

        v38 = *(a4 + 16);
        v39 = *(a4 + 24);
        v902 = v38;
        v903 = v39;
        v907 = *(a4 + 56);
        v910 = *(a4 + 80);
        goto LABEL_61;
      }
    }

    v23 |= (v12 >> 45) & 4 | (16 * ((v23 >> 3) & 1));
    goto LABEL_17;
  }

  if ((v12 & 1) == 0)
  {
    *(*(a1 + 72) + 12) |= 0x40000u;
    v13 = *(a1 + 72);
    v14 = *(a3 + 128);
    *v929 = v14;
    if (v14)
    {
      v15 = v13[40];
      if (v15)
      {
        v16 = 0x9DDFEA08EB382D69 * ((8 * (v14 & 0x1FFFFFFF) + 8) ^ HIDWORD(v14));
        v17 = 0x9DDFEA08EB382D69 * (HIDWORD(v14) ^ (v16 >> 47) ^ v16);
        v18 = 0x9DDFEA08EB382D69 * (v17 ^ (v17 >> 47));
        v19 = vcnt_s8(v15);
        v19.i16[0] = vaddlv_u8(v19);
        if (v19.u32[0] > 1uLL)
        {
          v20 = v18;
          if (v18 >= *&v15)
          {
            v20 = v18 % *&v15;
          }
        }

        else
        {
          v20 = v18 & (*&v15 - 1);
        }

        v118 = *(*&v13[39] + 8 * v20);
        if (v118)
        {
          for (n = *v118; n; n = *n)
          {
            v120 = n[1];
            if (v120 == v18)
            {
              if (n[2] == v14)
              {
                goto LABEL_169;
              }
            }

            else
            {
              if (v19.u32[0] > 1uLL)
              {
                if (v120 >= *&v15)
                {
                  v120 %= *&v15;
                }
              }

              else
              {
                v120 &= *&v15 - 1;
              }

              if (v120 != v20)
              {
                break;
              }
            }
          }
        }
      }

      std::__hash_table<CA::Render::String *,std::hash<CA::Render::String *>,std::equal_to<CA::Render::String *>,std::allocator<CA::Render::String *>>::__emplace_unique_key_args<CA::Render::String *,CA::Render::String * const&>(&v13[39], v14);
      if (!atomic_fetch_add((v14 + 8), 1u))
      {
        atomic_fetch_add((v14 + 8), 0xFFFFFFFF);
      }
    }

LABEL_169:
    *(*v10 + 38) |= 0x200uLL;
  }

  *(v9 + 11) = 0;
}

void CA::Render::LayerNode::update_frame_transform(uint64_t a1, double *a2, const double *a3)
{
  v5 = *(a1 + 88);
  if ((*(a1 + 26) & 2) == 0)
  {
    if (v5)
    {
      v7 = *&v5[2].f64[0];
      v8 = *&v5[3].f64[1];
      v9 = v5 + 4;
      if (*&v5[5].f64[1])
      {
        v10 = (*(v7 + 13) & 9) != 0;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
      v9 = 0;
      v8 = 0;
      v7 = 0;
    }

    v11 = *(a1 + 56);
    if (a3 || !CA::Render::Layer::compute_frame_offset(*(a1 + 32), v7, (a1 + 64)))
    {
      if (!v11)
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v11 = malloc_type_zone_malloc(malloc_zone, 0x80uLL, 0x1000040AE2C30F4uLL);
      }

      CA::Render::Layer::compute_frame_transform(*(a1 + 32), v7, v11, a3);
      if (a2)
      {
        CA::Mat4Impl::mat4_get_scale(v11, a2, a2 + 1, v23);
      }

      if (v10)
      {
        if (v8)
        {
          CA::Mat4Impl::mat4_concat(v11, v11, v8->f64, v23);
        }

        else
        {
          v24.f64[0] = v9[1].f64[0];
          v25 = *(v11 + 1);
          v26 = *(v11 + 3);
          v27 = *(v11 + 5);
          v28 = *(v11 + 7);
          v29 = vmlaq_laneq_f64(*(v11 + 2), *v9, v26, 1);
          v30 = vmlaq_laneq_f64(*(v11 + 4), *v9, v27, 1);
          v31 = vmlaq_laneq_f64(*(v11 + 6), *v9, v28, 1);
          *v11 = vmlaq_laneq_f64(*v11, *v9, v25, 1);
          *(v11 + 1) = vmlaq_laneq_f64(v25, v24, v25, 1);
          *(v11 + 2) = v29;
          *(v11 + 3) = vmlaq_laneq_f64(v26, v24, v26, 1);
          *(v11 + 4) = v30;
          *(v11 + 5) = vmlaq_laneq_f64(v27, v24, v27, 1);
          *(v11 + 6) = v31;
          *(v11 + 7) = vmlaq_laneq_f64(v28, v24, v28, 1);
        }
      }

      if ((*(*(a1 + 32) + 45) & 0x40) != 0)
      {
        v32 = vmulq_f64(*(v11 + 72), *(v11 + 72));
        if (v32.f64[0] + *(v11 + 8) * *(v11 + 8) + v32.f64[1] == 0.0)
        {
          *(v11 + 6) = 0u;
          *(v11 + 7) = 0u;
          *(v11 + 4) = 0u;
          *(v11 + 5) = 0u;
          *(v11 + 2) = 0u;
          *(v11 + 3) = 0u;
          *v11 = 0u;
          *(v11 + 1) = 0u;
        }
      }

      goto LABEL_27;
    }

    if (v10)
    {
      if (v8)
      {
        if (!v11)
        {
          v11 = x_new<CA::Mat4<double>>();
        }

        v12 = *v8;
        v13 = v8[1];
        v14 = v8[2];
        v15 = v8[3];
        *v11 = *v8;
        *(v11 + 1) = v13;
        *(v11 + 2) = v14;
        *(v11 + 3) = v15;
        v16 = v8[4];
        v17 = v8[5];
        v18 = v8[6];
        v19 = v8[7];
        *(v11 + 4) = v16;
        *(v11 + 5) = v17;
        *(v11 + 6) = v18;
        *(v11 + 7) = v19;
        v20 = *(a1 + 64);
        v21 = *(a1 + 72);
        v22 = *(a1 + 80);
        *(v11 + 6) = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v18, v12, v20), v14, v21), v16, v22);
        *(v11 + 7) = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v19, v13, v20), v15, v21), v17, v22);
        goto LABEL_27;
      }

      v48 = *(a1 + 72);
      *(a1 + 64) = *(a1 + 64) + v9->f64[0];
      *(a1 + 72) = v48 + v9->f64[1];
      *(a1 + 80) = *(a1 + 80) + v9[1].f64[0];
      if (v11)
      {
        if (x_malloc_get_zone::once == -1)
        {
LABEL_56:
          malloc_zone_free(malloc_zone, v11);
          v11 = 0;
          goto LABEL_27;
        }

LABEL_57:
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        goto LABEL_56;
      }
    }

    else if (v11)
    {
      if (x_malloc_get_zone::once == -1)
      {
        goto LABEL_56;
      }

      goto LABEL_57;
    }

LABEL_27:
    *(a1 + 56) = v11;
  }

  v33 = *(a1 + 32);
  v34 = *(v33 + 152);
  if (!v34)
  {
    if (v5)
    {
      v36 = *&v5[1].f64[1] & 0x1000001;
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (!v5)
  {
LABEL_46:
    v36 = 0;
    goto LABEL_47;
  }

  v35 = v5[1].f64[1];
  v36 = LODWORD(v35) & 0x1000001;
  if ((*(v34 + 13) & 1) != 0 && ((LODWORD(v35) ^ HIBYTE(LODWORD(v35))) & 1) != 0 && (*(a1 + 26) & 2) == 0)
  {
    if ((LODWORD(v35) & 0x800000) != 0)
    {
      v36 ^= 0x1000000uLL;
    }

    else
    {
      v37 = *(a1 + 56);
      if (!v37)
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v37 = malloc_type_zone_malloc(malloc_zone, 0x80uLL, 0x1000040AE2C30F4uLL);
        v38 = *(a1 + 80);
        v39 = *(a1 + 64);
        *v37 = xmmword_183E20E00;
        *(v37 + 2) = 0;
        *(v37 + 3) = 0;
        *(v37 + 2) = xmmword_183E20E60;
        *(v37 + 3) = 0u;
        *(v37 + 4) = 0u;
        *(v37 + 5) = xmmword_183E20E00;
        *(v37 + 6) = v39;
        *(v37 + 7) = xmmword_183E20E60;
        *(v37 + 14) = v38;
        *(a1 + 56) = v37;
        v33 = *(a1 + 32);
      }

      v36 ^= 1uLL;
      v40 = *(v33 + 72);
      v41 = *(v33 + 80);
      if (v40 != 0.0 || v41 != 0.0)
      {
        CA::Mat4Impl::mat4_translate(v37, a2, v40, v41, 0.0);
        v40 = *(v33 + 72);
      }

      v42 = *(v33 + 96);
      v43 = *(v37 + 2);
      v44 = *(v37 + 3);
      v45 = vmlaq_n_f64(*(v37 + 7), v44, v42);
      *(v37 + 6) = vmlaq_n_f64(*(v37 + 6), v43, v42);
      *(v37 + 7) = v45;
      *(v37 + 2) = vnegq_f64(v43);
      *(v37 + 3) = vnegq_f64(v44);
      v46 = *(v33 + 80);
      if (v40 != 0.0 || v46 != 0.0)
      {
        CA::Mat4Impl::mat4_translate(v37, a2, -v40, -v46, 0.0);
      }
    }
  }

LABEL_47:
  v47 = (*(*(a1 + 32) + 40) >> 43) & 1 ^ v36 | *(a1 + 24) & 0xFFFFFFFFFEFFFFFELL;
  if (a3)
  {
    v47 |= 0x1000000000uLL;
  }

  *(a1 + 24) = v47;
}

_OWORD *CA::Render::Updater::layer_node(uint64_t a1, CA::Render::LayerNode *a2, uint64_t a3, int a4, char *a5)
{
  if (a4)
  {
    result = CA::Render::LayerNodeAllocator::alloc_node(a1);
    *a5 = 1;
    return result;
  }

  v7 = *(a1 + 152);
  if (v7 && *(v7 + 16) == a1)
  {
    v9 = *(v7 + 40);
    if (v9)
    {
      if (*(v9 + 4) == 1 || (*(v9 + 25) & 8) != 0)
      {
        v10 = *(v7 + 12);
        if ((v10 & 0x400) == 0 && (((v10 >> 9) & 1 ^ ((*(*a2 + 1379) & 4) >> 2)) & 1) == 0)
        {
          if (*(v9 + 11) != a3 && (*(a1 + 13) & 9) == 0)
          {
            *(v7 + 104) |= 4uLL;
            *(v9 + 3) |= 4uLL;
          }

          v11 = *(v9 + 3);
          if ((v11 & 0x800) != 0)
          {
            v14 = *v9;
            v13 = *(v9 + 1);
            *(v14 + 8) = v13;
            *v13 = v14;
            *v9 = v9;
            *(v9 + 1) = v9;
            *(v9 + 3) = v11 & 0xFFFFFFFFFFFFF7FFLL;
            *(v9 + 11) = 0;
            v12 = 1;
          }

          else
          {
            v12 = 0;
          }

          *a5 = v12;
          v15 = *(v9 + 18);
          if (v15)
          {
            do
            {
              v16 = *v15;
              free(v15);
              v15 = v16;
            }

            while (v16);
            *(v9 + 18) = 0;
            *(v7 + 104) |= 8uLL;
          }

          return v9;
        }
      }

      *(v9 + 5) = 0;
      if (atomic_fetch_add(v9 + 4, 0xFFFFFFFF) == 1)
      {
        CA::Render::LayerNode::delete_node(v9, a2);
      }

      *(v7 + 40) = 0;
    }

    v9 = CA::Render::LayerNodeAllocator::alloc_node(a1);
    *(v9 + 3) |= 0x40uLL;
    *(v9 + 5) = v7;
    *(v7 + 40) = v9;
    *(v7 + 12) = (*(*a2 + 1376) >> 17) & 0x200 | *(v7 + 12) & 0xFFFFF9FF;
    *(v7 + 104) |= 4uLL;
    *a5 = 0;
    return v9;
  }

  *a5 = 1;

  return CA::Render::LayerNodeAllocator::alloc_node(a1);
}

BOOL CA::Render::Updater::layer_may_be_hidden_culled(CA::Render::Updater *this, const CA::Render::Layer *a2)
{
  if ((*(this + 45) & 4) != 0)
  {
    return 1;
  }

  if (*(this + 36))
  {
    return 0;
  }

  v3 = *(this + 17);
  return !v3 || (v4 = *(v3 + 88)) == 0 || CA::Render::Filter::compositing_dod(*(v4 + 24)) - 3 < 2;
}

void CA::Render::FlattenManager::evaluate_flatten_state(CA::Render::FlattenManager *this, CA::Render::LayerNode *a2, CA::Render::Update *a3, int a4)
{
  v29 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 1382) & 2) != 0)
  {
    return;
  }

  v5 = *(*(this + 4) + 152);
  if (!v5)
  {
    return;
  }

  v8 = v5[18];
  if (!a3)
  {
    goto LABEL_8;
  }

  if (!v8)
  {
    v8 = atomic_fetch_add(CA::Render::next_cache_id(void)::cache_id, 1u) + 1;
    *(v5 + 9) = v8;
LABEL_8:
    if (!v8 || (a3 & 1) == 0 && (v5[3] & 0x2000) == 0)
    {
      return;
    }

    v24 = a3;
    v11 = v5[3];
    os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_6;
    }

    if ((v24 & 1) == 0)
    {
      CA::Render::FlattenManager::delete_entry(v5, v12);
      goto LABEL_44;
    }

    goto LABEL_14;
  }

  v9 = v5[3];
  os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
  if ((v9 & 0x2000) == 0)
  {
LABEL_6:
    CA::Render::FlattenManager::stage_entry(this, a2, v10);
    goto LABEL_44;
  }

LABEL_14:
  if (a4)
  {
LABEL_15:
    CA::Render::FlattenManager::restage_entry(this, a2, v10);
    goto LABEL_44;
  }

  v13 = *(*(*(this + 4) + 152) + 72);
  v14 = x_hash_table_lookup(CA::Render::FlattenManager::flattened_cache, v13, 0);
  if (!v14)
  {
    if (x_log_get_flatten(void)::once != -1)
    {
      dispatch_once(&x_log_get_flatten(void)::once, &__block_literal_global_10425);
    }

    v22 = x_log_get_flatten(void)::log;
    if (os_log_type_enabled(x_log_get_flatten(void)::log, OS_LOG_TYPE_ERROR))
    {
      v23 = (*(*(*(this + 4) + 152) + 12) >> 13) & 1;
      *buf = 67109376;
      v26 = v13;
      v27 = 1024;
      v28 = v23;
      _os_log_error_impl(&dword_183AA6000, v22, OS_LOG_TYPE_ERROR, "Flatten State Mismatch [%d] [%d]", buf, 0xEu);
    }

    *(*(*(this + 4) + 152) + 12) &= ~0x2000u;
    goto LABEL_44;
  }

  v15 = v14;
  if ((*(v14 + 272) & 1) != 0 || (v16 = *(v14 + 200)) != 0 && [*v16 protectionOptions]) && (*(a2 + 294))
  {
    goto LABEL_44;
  }

  if (*(v15 + 272) == 1 && *(v15 + 216) != *(a2 + 39))
  {
    goto LABEL_44;
  }

  v17 = *(a2 + 172);
  if ((v17 & 0x8000000) != 0)
  {
    goto LABEL_44;
  }

  v18 = *(v15 + 244);
  if ((v18 & 0xC) != 0)
  {
    if ((*(a2 + 73) & 0x10000) != *(v15 + 273))
    {
      goto LABEL_44;
    }

    v18 &= 0xFFFFFFF3;
    if ((v18 & 0x40) == 0)
    {
LABEL_26:
      if (v17)
      {
        goto LABEL_27;
      }

LABEL_31:
      if (*(v15 + 276) != 1 || CA::Render::DisplayAttributes::operator==(a2 + 384, v15)) && ((*(v15 + 212) & 0x10) == 0 || *(a2 + 101) == *(v15 + 20)) && (*(v15 + 277) != 1 || (*(a2 + 294)))
      {
        v20 = *(v15 + 248);
        if ((*(v15 + 240) & 1) == 0)
        {
          *(v15 + 248) = v20 + 1;
          *(this + 19) = v15;
          v21 = *(a2 + 80);
          atomic_fetch_add(this + 4, 1u);
          *(a2 + 80) = x_list_prepend(v21, this);
          *(this + 3) |= 0x400000000uLL;
          goto LABEL_44;
        }

        if (v20)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_15;
    }
  }

  else if ((v18 & 0x40) == 0)
  {
    goto LABEL_26;
  }

  if (*(v15 + 274) != ((v17 >> 5) & 1))
  {
    goto LABEL_44;
  }

  v18 &= 0x40u;
  if ((v17 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_27:
  v19 = CA::Render::Update::allowed_in_update(a2, 0, *(this + 4), v18);
  if ((v18 & 1) == 0 && v19 && (*(v15 + 275) != 1 || !*(a2 + 127)))
  {
    goto LABEL_31;
  }

LABEL_44:

  os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
}

uint64_t CA::Render::Layer::compute_frame_offset(uint64_t a1, uint64_t a2, float64x2_t *a3)
{
  v3 = *(a1 + 136);
  if (v3 && *(v3 + 16))
  {
    return 0;
  }

  if ((*(a1 + 45) & 0x88) != 0)
  {
    return 0;
  }

  if (a2)
  {
    v5 = *(a2 + 136);
    if (v5)
    {
      if (*(v5 + 24))
      {
        return 0;
      }
    }
  }

  if (v3)
  {
    v6 = vsubq_f64(*(a1 + 56), vmlaq_f64(*(a1 + 72), *(a1 + 88), *(v3 + 168)));
    v7 = *(v3 + 192) - *(v3 + 184);
  }

  else
  {
    v8 = 0uLL;
    if ((*(a1 + 50) & 0x40) == 0)
    {
      __asm { FMOV            V1.2D, #0.5 }

      v8 = vmulq_f64(*(a1 + 88), _Q1);
    }

    v6 = vsubq_f64(*(a1 + 56), vaddq_f64(v8, *(a1 + 72)));
    v7 = 0.0;
  }

  *a3 = v6;
  a3[1].f64[0] = v7;
  return 1;
}

uint64_t CA::Render::Layer::Layer(uint64_t result, uint64_t a2)
{
  *result = &unk_1EF1F6D08;
  *(result + 8) = 1;
  *(result + 12) = *(a2 + 12) & 0xFFFFFF00 | 0x1E;
  ++dword_1ED4EAAB0;
  *result = &unk_1EF1F53C8;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(result + 64) = *(a2 + 64);
  *(result + 32) = v3;
  *(result + 48) = v4;
  *(result + 16) = v2;
  *(result + 72) = *(a2 + 72);
  *(result + 88) = *(a2 + 88);
  v5 = *(a2 + 104);
  if (v5)
  {
    v6 = (v5 + 8);
    if (!atomic_fetch_add((v5 + 8), 1u))
    {
      v5 = 0;
      atomic_fetch_add(v6, 0xFFFFFFFF);
    }
  }

  *(result + 104) = v5;
  v7 = *(a2 + 112);
  if (v7)
  {
    v8 = (v7 + 8);
    if (!atomic_fetch_add((v7 + 8), 1u))
    {
      v7 = 0;
      atomic_fetch_add(v8, 0xFFFFFFFF);
    }
  }

  *(result + 112) = v7;
  v9 = *(a2 + 120);
  if (v9)
  {
    v10 = (v9 + 8);
    if (!atomic_fetch_add((v9 + 8), 1u))
    {
      v9 = 0;
      atomic_fetch_add(v10, 0xFFFFFFFF);
    }
  }

  *(result + 120) = v9;
  v11 = *(a2 + 128);
  if (v11)
  {
    v12 = (v11 + 8);
    if (!atomic_fetch_add((v11 + 8), 1u))
    {
      v11 = 0;
      atomic_fetch_add(v12, 0xFFFFFFFF);
    }
  }

  *(result + 128) = v11;
  v13 = *(a2 + 136);
  if (v13)
  {
    atomic_fetch_add((v13 + 352), 1u);
  }

  *(result + 136) = v13;
  *(result + 144) = 0;
  v14 = *(a2 + 152);
  if (v14)
  {
    v15 = (v14 + 8);
    if (!atomic_fetch_add((v14 + 8), 1u))
    {
      v14 = 0;
      atomic_fetch_add(v15, 0xFFFFFFFF);
    }
  }

  *(result + 152) = v14;
  return result;
}

int64x2_t CA::Render::BackdropLayer::update@<Q0>(CA::Render::BackdropLayer *this@<X0>, CA::Render::Update *a2@<X1>, CA::Render::LayerNode *a3@<X2>, __n128 a4@<Q0>, __n128 a5@<Q1>, uint64_t a6@<X8>)
{
  v43 = *MEMORY[0x1E69E9840];
  v10 = *(this + 17);
  if (!v10)
  {
    v13 = 0;
    goto LABEL_50;
  }

  v11 = *(a3 + 3);
  v12 = (v11 & 0x4000000) != 0 && *(a2 + 145) != 0;
  v14 = (v11 & 0x8000000) == 0 && v12;
  v15 = *(a2 + 172);
  if ((v15 & 1) == 0 && *(this + 128) == 1)
  {
    v16 = *(v10 + 56);
    v17 = v16[2];
    if (*(v17 + 576))
    {
      v17 = *(v17 + 576);
    }

    if (v16[3] != v17)
    {
      CA::Render::BackdropGroup::retain_group(&v41, *(v10 + 16), v16[4], *(v10 + 136), *(v10 + 48));
      v18 = v41;
      v19 = *(v10 + 56);
      *(v10 + 56) = v41;
      if (v19)
      {
        if (atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v19 + 16))(v19);
        }

        v18 = *(v10 + 56);
      }

      *(v18 + 12) |= 0x400u;
      v15 = *(a2 + 172);
    }
  }

  if ((v11 & 0x4000000) == 0 && (v15 & 1) == 0)
  {
    v13 = *(this + 17);
    if ((v15 & 0x4000000) == 0)
    {
      if (v13)
      {
        v20 = (v13 + 1);
        if (!atomic_fetch_add(v13 + 2, 1u))
        {
          v13 = 0;
          atomic_fetch_add(v20, 0xFFFFFFFF);
        }
      }

      goto LABEL_50;
    }

    goto LABEL_26;
  }

  v21 = (v11 & 0x4000000) == 0;
  v13 = *(this + 17);
  if ((v21 | v15))
  {
LABEL_26:
    v41 = 0uLL;
    v22 = *(a2 + 145);
    if (v22)
    {
      v23 = *(v22 + 16);
      *&v41 = *(v22 + 24);
      *(&v41 + 1) = v23;
    }

    v13 = CA::Render::BackdropState::copy_isolated(v13, a2, &v41, 0);
    goto LABEL_50;
  }

  v41 = 0uLL;
  v24 = *(a2 + 145);
  if (v24)
  {
    v25 = *(v24 + 16);
    v26 = *(v24 + 24);
    *&v41 = v26;
    *(&v41 + 1) = v25;
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  os_unfair_lock_lock(v13 + 13);
  v27 = v13[18];
  if (!v27)
  {
LABEL_36:
    v42 = CA::Render::BackdropState::copy_isolated(v13, a2, &v41, v14);
    operator new();
  }

  while (*(v27 + 1) != v26 || *(v27 + 2) != v25)
  {
    v27 = *v27;
    if (!v27)
    {
      goto LABEL_36;
    }
  }

  v27[6] = *(a2 + 68);
  v28 = (*(v27 + 4) + 8);
  if (!atomic_fetch_add(v28, 1u))
  {
    atomic_fetch_add(v28, 0xFFFFFFFF);
  }

  v29 = *(v27 + 4);
  v30 = *(v29 + 56);
  v31 = *(a2 + 74);
  v32 = *(a2 + 75);
  if (v31 != v32)
  {
    while (*v31 != v30)
    {
      if (++v31 == v32)
      {
        goto LABEL_44;
      }
    }
  }

  if (v31 == v32)
  {
LABEL_44:
    v33 = (v30 + 8);
    if (!atomic_fetch_add((v30 + 8), 1u))
    {
      v30 = 0;
      atomic_fetch_add(v33, 0xFFFFFFFF);
    }

    v34 = *(a2 + 75);
    v35 = ((v34 - *(a2 + 74)) >> 3) + 1;
    if (*(a2 + 77) < v35)
    {
      X::small_vector_base<CA::Render::BackdropGroup *>::grow(a2 + 592, v35);
      v34 = *(a2 + 75);
    }

    *v34 = v30;
    *(a2 + 75) += 8;
    v29 = *(v27 + 4);
  }

  os_unfair_lock_unlock(v13 + 13);
  v13 = v29;
LABEL_50:
  v36 = *(a3 + 32);
  if (v36 == v13)
  {
    if (!v13)
    {
      goto LABEL_70;
    }

    if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v13 + 2))(v13, a4, a5);
    }

    goto LABEL_59;
  }

  if (v36 && atomic_fetch_add(v36 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v36 + 16))(v36, a4, a5);
  }

  *(a3 + 32) = v13;
  if (v13)
  {
LABEL_59:
    if ((*(a2 + 1379) & 2) != 0 && (*(this + 13) & 4) != 0 && *(v13 + 152) == 1)
    {
      v37 = *(v13 + 12);
      if (*(a2 + 10) >= v37)
      {
        *(a2 + 38) |= 0x40000uLL;
      }

      else
      {
        *(a2 + 13) |= 0x20000uLL;
        v38 = *(a2 + 11);
        if (v38 >= v37)
        {
          if (v37 == 0.0 || v38 <= v37)
          {
            v39 = *(a2 + 12) | 0x20000;
          }

          else
          {
            v39 = 0x20000;
          }

          *(a2 + 12) = v39;
          *(a2 + 11) = v37;
        }
      }
    }
  }

LABEL_70:
  *a6 = 0x7FF0000000000000;
  result = vdupq_n_s64(0x400000000uLL);
  *(a6 + 8) = result;
  return result;
}

void CA::Render::LayerSubclass::update(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0x7FF0000000000000;
}

double CA::Render::Timing::end_time(CA::Render::Timing *this)
{
  v1 = *(this + 3);
  if ((v1 & 0x1000) != 0)
  {
    return *(this + 7);
  }

  v2 = *(this + 4);
  if (v2 != 0.0)
  {
    v5 = 1.0;
    if (v2 == 1.0)
    {
      if ((v1 & 0x800) == 0)
      {
LABEL_7:
        v7 = *(this + 3);
        v6 = *(this + 4);
        if ((v1 & 0x100) != 0)
        {
          v6 = v6 + v6;
        }

        if (v7 > 0.0)
        {
          v6 = v6 * v7;
        }

        goto LABEL_13;
      }
    }

    else
    {
      v5 = fabsf(1.0 / v2);
      if ((v1 & 0x800) == 0)
      {
        goto LABEL_7;
      }
    }

    v6 = *(this + 3);
LABEL_13:
    v3 = v6 * v5;
    goto LABEL_14;
  }

  v3 = INFINITY;
LABEL_14:
  result = v3 + *(this + 5);
  *(this + 7) = result;
  *(this + 3) = v1 | 0x1000;
  return result;
}

uint64_t CA::Render::Animation::map_time(CA::Render::Animation *this, double *a2, int *a3, BOOL *a4, BOOL *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = *(this + 5);
  if (!v7)
  {
    if (a3)
    {
      *a3 = 0;
    }

    return 1;
  }

  v10 = *(this + 8);
  if (v10 != 0.0 && (*(this + 13) & 0x80) != 0)
  {
    *a2 = floor((*a2 - v7[5]) * v10) / v10 + v7[5];
  }

  result = CA::Render::Timing::map_parent_to_active(v7, a2, a5);
  if (result)
  {
    v12 = *(this + 5);
    if (a3)
    {
      v13 = *(v12 + 32);
      if (*(v12 + 13))
      {
        v13 = v13 + v13;
      }

      if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v14 = vcvtmd_s64_f64(*a2 / v13);
      }

      else
      {
        v14 = 0;
      }

      *a3 = v14;
    }

    v20 = 0;
    CA::Render::Timing::map_active_to_local(v12, a2, &v20);
    v16 = *(this + 5);
    if (a4 && (*(v16 + 13) & 1) != 0)
    {
      *a4 = v20 & 1;
    }

    v17 = *(v16 + 32);
    v18 = *a2 / v17;
    *a2 = v18;
    v19 = *(this + 6);
    if (v19)
    {
      if (*(v19 + 16) == 4)
      {
        *a2 = CA::Render::TimingFunction::evaluate((v19 + 24), v15, v18, 0.001 / v17);
      }
    }

    return 1;
  }

  return result;
}

void CA::Render::AnimationEvaluator::first_pass(CA::Render::AnimationEvaluator *this, int a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(*(this + 2) + 144);
  if (v2)
  {
    v4 = *(v2 + 16);
    if (v4)
    {
      v6 = 8 * v4;
      v7 = (v2 + 24);
      v8 = &x_malloc_get_zone::once;
      v9 = &unk_1ED4E5000;
      v10 = &unk_1ED4E5000;
      do
      {
        v11 = *v7;
        v12 = *(*v7 + 12);
        if ((v12 & 0x20000) != 0)
        {
          goto LABEL_11;
        }

        ++*(v11 + 80);
        if ((v12 & 0x100) == 0)
        {
          goto LABEL_11;
        }

        if ((v12 & 0x4000) != 0)
        {
          v13 = *(this + 224) | 2;
        }

        else
        {
          if (v12 != 61)
          {
            v28 = 0;
            v27 = 0;
            v26 = *this;
            if (!CA::Render::Animation::map_time(v11, &v26, &v28, 0, &v27))
            {
              goto LABEL_11;
            }

            if (!*(this + 5))
            {
              v17 = v10;
              v18 = v9;
              v19 = v8;
              if (x_malloc_get_zone::once != -1)
              {
                dispatch_once_f(v8, 0, malloc_zone_init);
              }

              v20 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xA0uLL, 0xDEEC3011uLL);
              v21 = v20;
              if (v20)
              {
                CA::Render::Layer::Layer(v20, *(this + 2));
              }

              v22 = *(this + 5);
              *(this + 5) = v21;
              v8 = v19;
              v9 = v18;
              v10 = v17;
              if (v22 && atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v22 + 16))(v22);
              }
            }

            ++*(v11 + 84);
            *(this + 224) &= ~0x20u;
            (*(*v11 + 120))(v11, this, v28, v27, v26);
            *(v11 + 92) = *(v11 + 92) & 0xFE | ((*(this + 224) & 0x20) != 0);
            if ((*(this + 224) & 1) == 0 || v27 || !CA::Render::Animation::affects_velocity(v11))
            {
              goto LABEL_11;
            }

            v14 = *(v11 + 28);
            if (!v14)
            {
              if (v9[372] != -1)
              {
                dispatch_once(&CAPrefers60HzAPT(void)::once, &__block_literal_global_3);
              }

              if (v10[2168])
              {
                v14 = 60;
              }

              else
              {
                v14 = 120;
              }
            }

            if (!a2 || *(v11 + 88) || (v14 >= 61 ? (v15 = (*(v11 + 12) & 0x800000) == 0) : (v15 = 1), v15))
            {
              if (v14 >= 49)
              {
                if (v14 < 0x3D)
                {
                  goto LABEL_41;
                }

                if (v14 < 0x51)
                {
                  v16 = 4;
                }

                else
                {
                  v16 = 5;
                }
              }

              else
              {
                v16 = 1;
              }
            }

            else
            {
LABEL_41:
              v16 = 3;
            }

            if (*(this + 208) > v16)
            {
              v16 = *(this + 208);
            }

            *(this + 208) = v16;
            v13 = *(this + 224) | 0x10;
            goto LABEL_10;
          }

          v13 = *(this + 224) | 4;
        }

LABEL_10:
        *(this + 224) = v13;
LABEL_11:
        ++v7;
        v6 -= 8;
      }

      while (v6);
    }

    if ((*(this + 224) & 2) != 0 && !*(this + 5))
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v23 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xA0uLL, 0xDEEC3011uLL);
      v24 = v23;
      if (v23)
      {
        CA::Render::Layer::Layer(v23, *(this + 2));
      }

      v25 = *(this + 5);
      *(this + 5) = v24;
      if (v25)
      {
        if (atomic_fetch_add(v25 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v25 + 16))(v25);
        }
      }
    }
  }
}

BOOL CA::Render::Animation::check_should_remove(CA::Render::Animation *this, double a2, double a3, float a4)
{
  v4 = a2 >= a3;
  v5 = a2 <= a3;
  if (a4 >= 0.0)
  {
    v5 = 0;
  }

  if (a4 <= 0.0)
  {
    v4 = v5;
  }

  return (*(this + 13) & 8) != 0 && v4;
}

uint64_t CA::Render::Layer::keypath_is_object(CA::Render::Layer *this, const CA::Render::Layer **a2, void *const *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v16[0] = this;
  v5 = CA::Render::skip_sublayers(v16, a2, a3);
  if ((v5 & 0x80000000) != 0)
  {
    return 0;
  }

  v6 = *a2;
  if (!*a2)
  {
    if (v5 != -1)
    {
      return 0;
    }

    goto LABEL_40;
  }

  if (v6)
  {
    if (HIDWORD(v6))
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = *v6;
  }

  v8 = v7 - v5;
  if (v8 != 1)
  {
    if (v8 > 3 || !v6)
    {
      return 0;
    }

    if (v6)
    {
      if (v5 == 1)
      {
        v9 = HIDWORD(v6);
      }

      else
      {
        LODWORD(v9) = v6 >> 1;
        if (v5)
        {
          LODWORD(v9) = 0;
        }
      }
    }

    else
    {
      if (*v6 <= v5)
      {
        return 0;
      }

      LODWORD(v9) = *(v6 + 4 * v5 + 4);
    }

    if (v9 != 256)
    {
      if (v9 == 124)
      {
        v15 = v5 + 1;
LABEL_52:
        if (v6)
        {
          if (v15 != 1)
          {
            return 0;
          }

          v6 >>= 32;
        }

        else
        {
          if (*v6 <= v15)
          {
            return 0;
          }

          LODWORD(v6) = *(v6 + 4 * v15 + 4);
        }

        return v6 == 363;
      }

      if (v9 != 64)
      {
        return 0;
      }
    }

    v15 = v5 + 2;
    goto LABEL_52;
  }

  if (!v6)
  {
    goto LABEL_40;
  }

  if (v6)
  {
    v10 = v6 >> 1;
    if (v5)
    {
      v10 = 0;
    }

    v6 >>= 32;
    if (v5 != 1)
    {
      LODWORD(v6) = v10;
    }
  }

  else
  {
    if (*v6 <= v5)
    {
      goto LABEL_40;
    }

    LODWORD(v6) = *(v6 + 4 * v5 + 4);
  }

  result = 1;
  if (v6 > 255)
  {
    if (v6 > 644)
    {
      if (v6 == 645 || v6 == 694)
      {
        return result;
      }
    }

    else if (v6 == 256 || v6 == 515)
    {
      return result;
    }
  }

  else
  {
    v12 = (v6 - 124) > 0x23 || ((1 << (v6 - 124)) & 0x800000081) == 0;
    if (!v12 || v6 == 64)
    {
      return result;
    }
  }

LABEL_40:
  v13 = *(this + 17);
  if (!v13)
  {
    return 0;
  }

  result = *v13;
  if (*v13)
  {
    v14 = *(*result + 112);

    return v14();
  }

  return result;
}

unint64_t CA::Render::skip_sublayers(CA::Render *this, const CA::Render::Layer **a2, void *const *a3)
{
  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (v3)
  {
    if (v3 >> 32)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = *v3;
    if (*v3 < 1)
    {
      return 0;
    }
  }

  for (i = 0; v6 > i; i += 2)
  {
    v8 = *a2;
    if (!*a2)
    {
      break;
    }

    if (v8)
    {
      if (i)
      {
        return i;
      }

      v9 = v8 >> 1;
    }

    else
    {
      if (i >= *v8)
      {
        return i;
      }

      v9 = v8[i + 1];
    }

    if (v9 != 694)
    {
      break;
    }

    v10 = *(*this + 112);
    if ((*(*this + 13) & 0x20) != 0)
    {
      if (!v10)
      {
        return 0xFFFFFFFFLL;
      }

      v12 = *(v10 + 128);
      if (!v12 || !CA::Render::String::equal(v12, 0x2B6u))
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      if (!v10)
      {
        return 0xFFFFFFFFLL;
      }

      named_object = CA::Render::TypedArray<CA::Render::Layer>::find_named_object(*(*this + 112), 0x2B6u);
      if ((named_object & 0x80000000) != 0)
      {
        return 0xFFFFFFFFLL;
      }

      v10 = *(v10 + 8 * named_object + 24);
    }

    *this = v10;
  }

  return i;
}

uint64_t CA::Render::Timing::map_parent_to_active(CA::Render::Timing *this, double *a2, BOOL *a3)
{
  v6 = *(this + 3);
  v7 = *a2;
  v8 = *(this + 5);
  v9 = CA::Render::Timing::end_time(this);
  if ((v6 & 0x400) == 0 && v7 < v8 || (v6 & 0x200) == 0 && v7 > v9)
  {
    return 0;
  }

  if (v7 >= v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  v11 = v9 + -0.000001;
  if (v10 <= v11)
  {
    v11 = v10;
  }

  v12 = v11 != v7;
  v13 = *(this + 6) + (v11 - v8) * *(this + 4);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  *a2 = v13;
  if (a3)
  {
    *a3 = v12;
  }

  return 1;
}

uint64_t CA::Render::Timing::map_active_to_local(uint64_t this, double *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *(this + 32);
  v5 = 0.0;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v3 < 0.0 || v3 >= v4))
  {
    v5 = floor(v3 / v4);
    v3 = v3 - v5 * v4;
    if (*(this + 13) & 1) != 0 && (v5)
    {
      v3 = v4 - v3;
      v7 = v4 + -0.000001;
      if (v3 >= v7)
      {
        v3 = v7;
      }
    }
  }

  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    *a2 = v3;
    v8 = v5;
    if (!a3)
    {
      return this;
    }

    goto LABEL_14;
  }

  v8 = 0;
  if (a3)
  {
LABEL_14:
    *a3 = v8;
  }

  return this;
}

BOOL CA::Render::Animation::affects_velocity(CA::Render::Animation *this)
{
  v1 = 0;
  if ((*(this + 3) & 0x88000) == 0x80000 && *(this + 3) != 32)
  {
    v2 = *(this + 5);
    if (v2 && *(v2 + 32) < 0.00208333333)
    {
      return 0;
    }

    else
    {
      v3 = *(this + 7);
      if (v3)
      {
        v4 = v3 <= 59;
      }

      else
      {
        v4 = 0;
      }

      return !v4;
    }
  }

  return v1;
}

uint64_t CA::Render::Layer::get_keypath_value(CA::Render::Layer *this, void *const *a2, unint64_t a3, float64x2_t *a4, float64x2_t **a5)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (v5)
  {
    v11 = HIDWORD(v5) ? 2 : 1;
  }

  else
  {
    v11 = *v5;
  }

  if (v11 - 0x10000 < 0xFFFFFFFFFFFF0001)
  {
    return 0;
  }

  if (v11 > 0x400)
  {
    v17 = malloc_type_malloc(4 * v11, 0x100004052888210uLL);
    if (!v17)
    {
      return 0;
    }

    v15 = v17;
    v5 = *a2;
  }

  else
  {
    MEMORY[0x1EEE9AC00]();
    v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v15, v14);
  }

  CA::Render::key_path_atoms(v5, v15, v16);
  property_value = CA::Render::Layer::get_property_value(this, v15, v11, a3, a4, a5, v18);
  if (v11 >= 0x401)
  {
    free(v15);
  }

  return property_value;
}

uint64_t CA::Render::MatchPropertyAnimation::apply(uint64_t this, CA::Render::AnimationEvaluator *a2, double a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(this + 128);
  if (v3)
  {
    v5 = *(a2 + 4);
    if (v5)
    {
      v6 = this;
      v7 = *(a2 + 3);
      v8 = v7[109];
      v9 = v7[108];
      while (v8 != v9)
      {
        v8 -= 5;
        v10 = std::__hash_table<std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::__unordered_map_hasher<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::hash<CA::Render::Object *>,std::equal_to<CA::Render::Object *>,true>,std::__unordered_map_equal<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::equal_to<CA::Render::Object *>,std::hash<CA::Render::Object *>,true>,std::allocator<std::__hash_value_type<CA::Render::Object *,x_link_struct>>>::find<CA::Render::Object *>(v8, v3);
        if (v10)
        {
          v11 = v10[3];
          this = CA::Render::Update::mark_root_dependence(v7[172], v11, v5);
          if (v11)
          {
            v13 = *(v11 + 4);
            v14 = *(a2 + 5);
            if (CA::Render::Layer::keypath_is_object(v14, (v6 + 120), v12))
            {
              keypath_object = CA::Render::Layer::get_keypath_object(v13, (v6 + 120), v15);
              this = CA::Render::Layer::set_keypath_object(v14, (v6 + 120), keypath_object);
              v17 = *(v6 + 128);
              if (v17)
              {
                if (!keypath_object && (*(v17 + 200) & 1) == 0)
                {
                  *(a2 + 224) |= 0x20u;
                }

                *(v17 + 200) = keypath_object != 0;
              }
            }

            else
            {
              memset(v23, 0, sizeof(v23));
              v22 = 0;
              keypath_value = CA::Render::Layer::get_keypath_value(v13, (v6 + 120), 0x18uLL, v23, &v22);
              v20 = v22;
              if (keypath_value)
              {
                CA::Render::Layer::set_keypath_value(v14, (v6 + 120), ((*(v6 + 12) >> 9) & 1), keypath_value, v22);
                v20 = v22;
                if (v22 != v23)
                {
                  free(v22);
                  v20 = v22;
                }
              }

              if (CA::Render::MatchAnimation::matches_dependence_property(*(v6 + 128), v20, keypath_value))
              {
                v21 = 32;
              }

              else
              {
                v21 = 0;
              }

              *(a2 + 224) = *(a2 + 224) & 0xDF | v21;
              return CA::Render::MatchAnimation::set_dependence_property(v6, v20, keypath_value);
            }
          }

          return this;
        }
      }

      v18 = v7[172];

      return CA::Render::Update::mark_root_dependence(v18, 0, v5);
    }
  }

  return this;
}

uint64_t CA::Render::Layer::get_property_value(CA::Render::Layer *this, const unsigned int *a2, uint64_t a3, unint64_t a4, float64x2_t *a5, float64x2_t **a6, float a7)
{
  v138 = *MEMORY[0x1E69E9840];
  v11 = (a2 + 1);
  if (a6)
  {
    goto LABEL_14;
  }

  while (1)
  {
    if (a4 < 5)
    {
      return 0;
    }

    v16 = (v11 - 1);
    if (!a3)
    {
      goto LABEL_191;
    }

    v17 = a3 - 1;
    if (a3 == 1)
    {
      v31 = *v16;
      if (*v16 <= 295)
      {
        if (v31 > 132)
        {
          if (v31 <= 202)
          {
            switch(v31)
            {
              case 133:
                v32 = *(this + 17);
                if (!v32)
                {
                  goto LABEL_304;
                }

                v33 = *(v32 + 264);
                goto LABEL_324;
              case 134:
                v87 = *(this + 17);
                __asm { FMOV            V1.2D, #1.0 }

                _Q0 = 0uLL;
                if (!v87)
                {
                  goto LABEL_256;
                }

                v82 = *(v87 + 48);
                if (!v82)
                {
                  goto LABEL_256;
                }

                goto LABEL_226;
              case 138:
                v91 = *(this + 17);
                if (!v91)
                {
                  goto LABEL_305;
                }

                v33 = *(v91 + 268);
                goto LABEL_324;
              case 144:
                v90 = *(this + 10) >> 12;
                goto LABEL_232;
              case 145:
                v93 = *(this + 17);
                if (!v93)
                {
                  goto LABEL_304;
                }

                v33 = *(v93 + 272);
                goto LABEL_324;
              case 146:
                v92 = *(this + 17);
                if (!v92)
                {
                  goto LABEL_304;
                }

                v33 = *(v92 + 276);
                goto LABEL_324;
              case 147:
                v83 = *(this + 17);
                if (v83)
                {
                  _Q1 = vcvtq_f64_f32(*(v83 + 284));
                  v85 = vcvtq_f64_f32(*(v83 + 292));
                  v86 = *(v83 + 300);
                }

                else
                {
                  __asm { FMOV            V1.2D, #1.0 }

                  v86 = 0.0;
                  v85 = _Q1;
                }

                *a5 = _Q1;
                a5[1] = v85;
                goto LABEL_312;
              case 149:
                _ZF = (*(this + 5) & 0x8000000000000) == 0;
                goto LABEL_299;
              case 150:
                v81 = *(this + 17);
                __asm { FMOV            V1.2D, #1.0 }

                _Q0 = 0uLL;
                if (!v81)
                {
                  goto LABEL_256;
                }

                v82 = *(v81 + 40);
                if (!v82)
                {
                  goto LABEL_256;
                }

LABEL_226:
                v88 = *(v82 + 16);
                _Q1 = 0uLL;
                goto LABEL_254;
              case 151:
                v102 = *(this + 17);
                if (v102)
                {
                  v33 = *(v102 + 304);
                  goto LABEL_324;
                }

                LOBYTE(a7) = *(this + 38);
                break;
              case 153:
                v89 = *(this + 17);
                if (!v89)
                {
                  goto LABEL_304;
                }

                v90 = *(v89 + 348) & 1;
LABEL_232:
                v42 = v90;
                goto LABEL_325;
              case 154:
                if (a4 == 5)
                {
                  return 0;
                }

                v94 = *(this + 17);
                v95 = MEMORY[0x1E695EFD0];
                v96 = (MEMORY[0x1E695EFD0] + 16);
                v97 = (MEMORY[0x1E695EFD0] + 32);
                if (v94)
                {
                  v98 = *(v94 + 32);
                  if (v98)
                  {
                    v96 = (MEMORY[0x1E695EFD0] + 16);
                    v97 = (v98 + 56);
                    if (*(v98 + 16) >= 6u)
                    {
                      v96 = (v98 + 40);
                    }

                    else
                    {
                      v97 = (MEMORY[0x1E695EFD0] + 32);
                    }

                    if (*(v98 + 16) >= 6u)
                    {
                      v95 = (v98 + 24);
                    }
                  }
                }

                v99 = *v96;
                v100 = *v97;
                *a5 = *v95;
                a5[1] = v99;
                a5[2] = v100;
                return 6;
              case 160:
                v103 = *(this + 17);
                _Q1 = 0uLL;
                __asm { FMOV            V0.2D, #0.5 }

                if (!v103)
                {
                  goto LABEL_256;
                }

                v82 = *(v103 + 64);
                if (!v82)
                {
                  goto LABEL_256;
                }

                v88 = *(v82 + 16);
                _Q0 = 0uLL;
LABEL_254:
                if (v88 >= 4)
                {
                  _Q0 = *(v82 + 24);
                  _Q1 = vsubq_f64(*(v82 + 40), _Q0);
                }

                goto LABEL_256;
              case 163:
                v76 = *(this + 17);
                if (!v76)
                {
                  return 0;
                }

                result = 0;
                if (a4 < 8)
                {
                  return result;
                }

                v77 = *(v76 + 72);
                if (!v77)
                {
                  return result;
                }

                if (*(v77 + 16) != 8)
                {
                  return 0;
                }

                v78 = *(v77 + 24);
                v79 = *(v77 + 40);
                v80 = *(v77 + 72);
                a5[2] = *(v77 + 56);
                a5[3] = v80;
                *a5 = v78;
                a5[1] = v79;
                return 8;
              case 164:
                v101 = *(this + 17);
                v33 = 0.0;
                if (v101)
                {
                  v33 = *(v101 + 232);
                }

                goto LABEL_324;
              default:
                goto LABEL_191;
            }

            goto LABEL_323;
          }

          if (v31 != 203)
          {
            if (v31 != 206)
            {
              if (v31 != 279)
              {
                goto LABEL_191;
              }

              v67 = *(this + 17);
              if (!v67)
              {
LABEL_305:
                v42 = 1.0;
                goto LABEL_325;
              }

              v33 = *(v67 + 316);
              goto LABEL_324;
            }

            _ZF = (*(this + 5) & 0x100000000000) == 0;
            goto LABEL_299;
          }

          v122 = *(this + 17);
          if (v122)
          {
            v33 = *(v122 + 280);
            goto LABEL_324;
          }

LABEL_304:
          v42 = 0.0;
          goto LABEL_325;
        }

        if (v31 <= 61)
        {
          if (v31 <= 22)
          {
            if (v31 != 13)
            {
              if (v31 == 16)
              {
                v70 = 0.0;
                if ((*(this + 5) & 0x2000000000000000) != 0)
                {
                  v70 = 1.0;
                }

                a5->f64[0] = v70;
              }

              goto LABEL_191;
            }

            _ZF = (*(this + 12) & 0x200) == 0;
            goto LABEL_299;
          }

          if (v31 == 23)
          {
            _ZF = (*(this + 5) & 0x4000000000000000) == 0;
            goto LABEL_299;
          }

          if (v31 == 33)
          {
            v104 = *(this + 17);
            if (v104)
            {
              v66 = *(v104 + 168);
            }

            else
            {
              v129 = 0.0;
              if ((*(this + 50) & 0x40) == 0)
              {
                v129 = 0.5;
              }

              v66 = vdupq_lane_s64(*&v129, 0);
            }

            goto LABEL_165;
          }

          if (v31 != 34)
          {
            goto LABEL_191;
          }

          v62 = *(this + 17);
          if (v62)
          {
            v42 = *(v62 + 184);
            goto LABEL_325;
          }

          goto LABEL_304;
        }

        if (v31 > 74)
        {
          switch(v31)
          {
            case 'K':
              v107 = *(this + 17);
              if (v107)
              {
                v33 = *(v107 + 236);
                goto LABEL_324;
              }

              break;
            case 'M':
              v109 = *(this + 17);
              if (v109)
              {
                v33 = *(v109 + 240);
                goto LABEL_324;
              }

              break;
            case 'R':
              _Q1 = *(this + 88);
              _Q0 = *(this + 72);
LABEL_256:
              *a5 = _Q0;
              a5[1] = vaddq_f64(_Q0, _Q1);
              return 4;
            default:
              goto LABEL_191;
          }

          goto LABEL_304;
        }

        if (v31 == 62)
        {
          v105 = *(this + 8);
          v106 = vcvtq_f64_f32(*(this + 24));
          *a5 = vcvtq_f64_f32(*(this + 16));
          a5[1] = v106;
          a5[2].f64[0] = v105;
          return 5;
        }

        if (v31 == 63)
        {
          v108 = *(this + 17);
          if (v108)
          {
            v66 = *(v108 + 152);
          }

          else
          {
            v66 = 0uLL;
          }

          goto LABEL_165;
        }

        if (v31 != 74)
        {
          goto LABEL_191;
        }

        v55 = *(this + 17);
        if (v55)
        {
          v56 = *(v55 + 244);
          v57 = *(v55 + 252);
          v58 = *(v55 + 260);
LABEL_280:
          v114 = vcvtq_f64_f32(v56);
          v115 = vcvtq_f64_f32(v57);
          v86 = v58;
          goto LABEL_282;
        }

        goto LABEL_281;
      }

      if (v31 <= 611)
      {
        if (v31 > 571)
        {
          if (v31 <= 589)
          {
            switch(v31)
            {
              case 572:
                v42 = ((*(this + 5) >> 38) & 3);
                goto LABEL_325;
              case 577:
                _ZF = (*(this + 5) & 0x400000000000000) == 0;
                break;
              case 585:
                _ZF = (*(this + 12) & 0x400) == 0;
                break;
              default:
                goto LABEL_191;
            }
          }

          else if (v31 > 591)
          {
            if (v31 == 592)
            {
              v112 = *(this + 17);
              if (!v112)
              {
                LOBYTE(a7) = *(this + 39);
LABEL_323:
                v33 = LODWORD(a7);
                goto LABEL_324;
              }

              v33 = *(v112 + 308);
LABEL_324:
              v42 = v33;
              goto LABEL_325;
            }

            if (v31 != 593)
            {
              goto LABEL_191;
            }

            _ZF = (*(this + 5) & 0x80000000000000) == 0;
          }

          else if (v31 == 590)
          {
            _ZF = (*(this + 5) & 0x100000000000000) == 0;
          }

          else
          {
            _ZF = (*(this + 5) & 0x200000000000000) == 0;
          }

LABEL_299:
          v42 = 0.0;
          if (!_ZF)
          {
            v42 = 1.0;
          }

          goto LABEL_325;
        }

        if (v31 <= 505)
        {
          switch(v31)
          {
            case 296:
              _ZF = (*(this + 5) & 0x40000000000) == 0;
              break;
            case 450:
              _ZF = (*(this + 5) & 0x20000000000) == 0;
              break;
            case 451:
              _ZF = (*(this + 12) & 0x80) == 0;
              break;
            default:
              goto LABEL_191;
          }

          goto LABEL_299;
        }

        if (v31 <= 538)
        {
          if (v31 == 506)
          {
            _ZF = (*(this + 5) & 0x10000000000) == 0;
            goto LABEL_299;
          }

          if (v31 != 519)
          {
            goto LABEL_191;
          }

          v53 = *(this + 17);
          if (v53)
          {
            v33 = *(v53 + 312);
            goto LABEL_324;
          }

          goto LABEL_304;
        }

        if (v31 != 539)
        {
          if (v31 == 569)
          {
            a5->f64[0] = *(this + 7);
            a5->f64[1] = *(this + 8);
            v73 = *(this + 17);
            if (v73)
            {
              v74 = *(v73 + 192);
            }

            else
            {
              v74 = 0.0;
            }

            a5[1].f64[0] = v74;
            return 3;
          }

          goto LABEL_191;
        }

        LOBYTE(a7) = *(this + 36);
      }

      else
      {
        if (v31 > 645)
        {
          if (v31 <= 650)
          {
            if (v31 > 648)
            {
              if (v31 == 649)
              {
                _ZF = (*(this + 5) & 0x20000000000000) == 0;
              }

              else
              {
                _ZF = (*(this + 5) & 0x10000000000000) == 0;
              }
            }

            else
            {
              if (v31 != 646)
              {
                if (v31 != 647)
                {
                  goto LABEL_191;
                }

                v51 = *(this + 17);
                if (!v51)
                {
                  v42 = 3.0;
                  goto LABEL_325;
                }

                v33 = *(v51 + 228);
                goto LABEL_324;
              }

              _ZF = (*(this + 12) & 0x100) == 0;
            }

            goto LABEL_299;
          }

          if (v31 > 715)
          {
            if (v31 != 716)
            {
              if (v31 != 764)
              {
                goto LABEL_191;
              }

              v75 = *(this + 17);
              if (v75)
              {
                v42 = *(v75 + 192);
                goto LABEL_325;
              }

              goto LABEL_304;
            }

            v117 = *(this + 17);
            if (v117)
            {
              v65 = (v117 + 16);
              goto LABEL_294;
            }
          }

          else
          {
            if (v31 == 651)
            {
              _ZF = (*(this + 5) & 0x40000000000000) == 0;
              goto LABEL_299;
            }

            if (v31 != 693)
            {
              goto LABEL_191;
            }

            v64 = *(this + 17);
            if (v64)
            {
              v65 = (v64 + 24);
LABEL_294:
              v118 = *v65;
              v119 = &CA::Mat4Impl::mat4_identity_double;
              if (v118)
              {
                v120 = *(v118 + 16);
                v121 = (v118 + 24);
                if (v120 > 0xF)
                {
                  v119 = v121;
                }
              }

LABEL_307:
              if (a4 >= 0x10)
              {
                v123 = v119[1];
                v124 = v119[2];
                v125 = v119[3];
                *a5 = *v119;
                a5[1] = v123;
                a5[2] = v124;
                a5[3] = v125;
                v126 = v119[5];
                v127 = v119[6];
                v128 = v119[7];
                a5[4] = v119[4];
                a5[5] = v126;
                a5[6] = v127;
                a5[7] = v128;
                return 16;
              }

              return 0;
            }
          }

          v119 = &CA::Mat4Impl::mat4_identity_double;
          goto LABEL_307;
        }

        if (v31 <= 614)
        {
          if (v31 != 612)
          {
            if (v31 != 613)
            {
              _ZF = (*(this + 12) & 0x800) == 0;
              goto LABEL_299;
            }

            v116 = *(this + 17);
            if (v116)
            {
              v33 = *(v116 + 344);
              goto LABEL_324;
            }

            goto LABEL_304;
          }

          v113 = *(this + 17);
          if (v113)
          {
            v56 = *(v113 + 324);
            v57 = *(v113 + 332);
            v58 = *(v113 + 340);
            goto LABEL_280;
          }

          goto LABEL_281;
        }

        if (v31 <= 642)
        {
          if (v31 == 615)
          {
            v110 = *(this + 17);
            if (v110)
            {
              v33 = *(v110 + 320);
              goto LABEL_324;
            }

            goto LABEL_304;
          }

          if (v31 != 638)
          {
            goto LABEL_191;
          }

          v60 = *(this + 17);
          if (v60)
          {
            v56 = v60[25];
            v57 = v60[26];
            v58 = v60[27].f32[0];
            goto LABEL_280;
          }

LABEL_281:
          v115 = xmmword_183E20E60;
          v114 = 0uLL;
          v86 = 0.0;
LABEL_282:
          *a5 = v114;
          a5[1] = v115;
LABEL_312:
          result = 5;
          a5[2].f64[0] = v86;
          return result;
        }

        if (v31 == 643)
        {
          v111 = *(this + 17);
          if (v111)
          {
            v66 = vcvtq_f64_f32(*(v111 + 220));
          }

          else
          {
            v66 = xmmword_183E20FC0;
          }

          goto LABEL_165;
        }

        if (v31 != 644)
        {
          goto LABEL_191;
        }

        LOBYTE(a7) = *(this + 37);
      }

      v33 = LODWORD(a7) * 0.0039216;
      goto LABEL_324;
    }

    v18 = *v16;
    if (*v16 != 694)
    {
      break;
    }

    v12 = *(this + 14);
    if ((*(this + 13) & 0x20) != 0)
    {
      if (!v12)
      {
        return 0;
      }

      v14 = *v11;
      if ((*v11 & 0x40000000) != 0)
      {
        if ((v14 & 0xBFFFFFFF) != 0)
        {
          return 0;
        }
      }

      else
      {
        result = *(v12 + 16);
        if (!result)
        {
          return result;
        }

        if (!CA::Render::String::equal(result, v14))
        {
          return 0;
        }
      }
    }

    else
    {
      if (!v12)
      {
        return 0;
      }

      named_object = CA::Render::TypedArray<CA::Render::Layer>::find_named_object(*(this + 14), *v11);
      if ((named_object & 0x80000000) != 0)
      {
        return 0;
      }

      v12 = *(v12 + named_object + 3);
    }

    a3 -= 2;
    v11 += 2;
    this = v12;
    if (a6)
    {
LABEL_14:
      *a6 = a5;
    }
  }

  if (v18 > 153)
  {
    if (v18 > 568)
    {
      if (v18 <= 692)
      {
        if (v18 != 569)
        {
          if (v18 != 643)
          {
            goto LABEL_191;
          }

          v20 = *(this + 17);
          if (v20)
          {
            v21 = *(v20 + 220);
            v22 = *(v20 + 224);
          }

          else
          {
            v22 = -3.0;
            v21 = 0.0;
          }

          if (a3 != 2)
          {
            return 0;
          }

          if (*v11 != 753)
          {
            if (*v11 != 295)
            {
              return 0;
            }

            v21 = v22;
          }

          a5->f64[0] = v21;
          return 1;
        }

LABEL_53:
        if (a3 != 2)
        {
          return 0;
        }

        if (*v11 == 756)
        {
          v30 = (this + 56);
        }

        else
        {
          if (*v11 != 760)
          {
            return 0;
          }

          v30 = (this + 64);
        }

        v42 = *v30;
        goto LABEL_325;
      }

      if (v18 == 693)
      {
        v40 = *(this + 17);
        if (v40)
        {
          v29 = *(v40 + 24);
          goto LABEL_89;
        }
      }

      else
      {
        if (v18 != 716)
        {
          goto LABEL_191;
        }

        v28 = *(this + 17);
        if (v28)
        {
          v29 = *(v28 + 16);
LABEL_89:

          return CA::Render::get_transform_property(v29, (a3 - 1), v11, a5, a5->f64);
        }
      }

      v29 = 0;
      goto LABEL_89;
    }

    if (v18 != 154)
    {
      if (v18 == 160)
      {
        v44 = *(this + 17);
        if (!v44 || (v27 = *(v44 + 64), v130 = 0u, v131 = 0u, !v27))
        {
          __asm { FMOV            V0.2D, #0.5 }

          v130 = _Q0;
          v131 = 0uLL;
          return CA::Render::get_rect_property(&v130, (a3 - 1), v11, a5, a5->f64);
        }

        goto LABEL_76;
      }

      if (v18 != 256)
      {
        goto LABEL_191;
      }

      v25 = *(this + 17);
      if (v25)
      {
        v24 = *(v25 + 96);
        goto LABEL_93;
      }

LABEL_92:
      v24 = 0;
      goto LABEL_93;
    }

    v46 = *(this + 17);
    if (v46 && (v47 = *(v46 + 32)) != 0 && *(v47 + 16) > 5u)
    {
      v59 = *(v47 + 40);
      v135 = *(v47 + 24);
      v136 = v59;
      v49 = *(v47 + 56);
    }

    else
    {
      v48 = *(MEMORY[0x1E695EFD0] + 16);
      v135 = *MEMORY[0x1E695EFD0];
      v136 = v48;
      v49 = *(MEMORY[0x1E695EFD0] + 32);
    }

    v137 = v49;
    v134 = 0;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    CA::Mat2Impl::mat2_get_unmatrix(&v135, &v130);
    if (a3 != 3)
    {
      if (a3 != 2)
      {
        return 0;
      }

      v50 = *v11;
      if (*v11 != 720)
      {
        if (v50 == 621)
        {
          v42 = (*(&v130 + 1) + *&v130) * 0.5;
        }

        else
        {
          if (v50 != 616)
          {
            return 0;
          }

          v42 = *&v132;
        }

        goto LABEL_325;
      }

      v66 = v131;
LABEL_165:
      *a5 = v66;
      return 2;
    }

    if (*v11 == 720)
    {
      v63 = v11[1];
      if (v63 == 760)
      {
        v42 = v131.f64[1];
      }

      else
      {
        if (v63 != 756)
        {
          return 0;
        }

        v42 = v131.f64[0];
      }
    }

    else
    {
      if (*v11 != 621)
      {
        return 0;
      }

      v54 = v11[1];
      if (v54 == 760)
      {
        v42 = *(&v130 + 1);
      }

      else
      {
        if (v54 != 756)
        {
          return 0;
        }

        v42 = *&v130;
      }
    }

LABEL_325:
    a5->f64[0] = v42;
    return 1;
  }

  if (v18 <= 81)
  {
    if (v18 != 33)
    {
      if (v18 != 63)
      {
        if (v18 != 64)
        {
          goto LABEL_191;
        }

        v23 = *(this + 17);
        if (v23)
        {
          v24 = *(v23 + 104);
LABEL_93:

          return CA::Render::get_list_property<CA::Render::Filter>(v24, v17, v11, a4, a5->f64);
        }

        goto LABEL_92;
      }

      v41 = *(this + 17);
      if (v41)
      {
        v42 = *(v41 + 152);
        v43 = *(v41 + 160);
      }

      else
      {
        v42 = 0.0;
        v43 = 0.0;
      }

      if (a3 != 2)
      {
        return 0;
      }

      if (*v11 != 756)
      {
        if (*v11 != 760)
        {
          return 0;
        }

        v42 = v43;
      }

      goto LABEL_325;
    }

    goto LABEL_53;
  }

  if (v18 > 133)
  {
    if (v18 == 134)
    {
      v35 = *(this + 17);
      if (!v35)
      {
LABEL_69:
        v130 = 0uLL;
        __asm { FMOV            V0.2D, #1.0 }

        v131 = _Q0;
        return CA::Render::get_rect_property(&v130, (a3 - 1), v11, a5, a5->f64);
      }

      v27 = *(v35 + 48);
    }

    else
    {
      if (v18 != 150)
      {
        goto LABEL_191;
      }

      v26 = *(this + 17);
      if (!v26)
      {
        goto LABEL_69;
      }

      v27 = *(v26 + 40);
    }

    v130 = 0u;
    v131 = 0u;
    if (!v27)
    {
      goto LABEL_69;
    }

LABEL_76:
    if (*(v27 + 16) >= 4u)
    {
      v45 = vsubq_f64(*(v27 + 40), *(v27 + 24));
      v130 = *(v27 + 24);
      v131 = v45;
    }

    return CA::Render::get_rect_property(&v130, (a3 - 1), v11, a5, a5->f64);
  }

  if (v18 == 82)
  {
    v34 = (this + 72);

    return CA::Render::get_rect_property(v34, (a3 - 1), v11, a5, a5->f64);
  }

  else
  {
    if (v18 == 124)
    {
      v19 = *(this + 17);
      if (v19)
      {
        result = *(v19 + 88);
        if (result)
        {

          return CA::Render::Filter::get_property(result, v17, v11, a4, a5->f64);
        }

        return result;
      }

      return 0;
    }

LABEL_191:
    v71 = *(this + 17);
    if (!v71)
    {
      return 0;
    }

    result = *v71;
    if (*v71)
    {
      v72 = *(*result + 136);

      return v72();
    }
  }

  return result;
}

void CA::Render::MatchMoveAnimation::apply(CA::Render::MatchMoveAnimation *this, CA::Render::AnimationEvaluator *a2, double a3)
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = *(this + 16);
  if (v3)
  {
    v5 = *(a2 + 4);
    if (v5)
    {
      v7 = *(a2 + 3);
      v8 = v7[109];
      v9 = v7[108];
      do
      {
        if (v8 == v9)
        {
          v14 = v7[172];

          CA::Render::Update::mark_root_dependence(v14, 0, v5);
          return;
        }

        v8 -= 5;
        v10 = std::__hash_table<std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::__unordered_map_hasher<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::hash<CA::Render::Object *>,std::equal_to<CA::Render::Object *>,true>,std::__unordered_map_equal<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::equal_to<CA::Render::Object *>,std::hash<CA::Render::Object *>,true>,std::allocator<std::__hash_value_type<CA::Render::Object *,x_link_struct>>>::find<CA::Render::Object *>(v8, v3);
      }

      while (!v10);
      v11 = v10[3];
      CA::Render::Update::mark_root_dependence(v7[172], v11, v5);
      if (!v11)
      {
        return;
      }

      v12 = *(this + 15);
      if (!v12)
      {
        goto LABEL_14;
      }

      if (v12)
      {
        v13 = v12 >> 1;
LABEL_16:
        v15 = *(a2 + 4);
        if (v13 != 569)
        {
          goto LABEL_18;
        }

        v16 = 1;
LABEL_19:
        v15 = *(v15 + 11);
        v17 = v16;
        if (!v15)
        {
          return;
        }
      }

      else
      {
        if (*v12)
        {
          v13 = v12[1];
          goto LABEL_16;
        }

LABEL_14:
        v15 = *(a2 + 4);
LABEL_18:
        v16 = 0;
        v17 = 0;
        if ((*(this + 15) & 0x20) != 0)
        {
          goto LABEL_19;
        }
      }

      v18 = *(this + 17);
      v19 = *(v18 + 16);
      v20 = v19 >> 1;
      if (v19 >> 1 >= 4)
      {
        v21 = 4;
      }

      else
      {
        v21 = v20;
      }

      if (v19 >= 2)
      {
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v22 = &v72.f64[1];
        v23 = (v18 + 32);
        v24 = v21;
        do
        {
          *(v22 - 1) = *(v23 - 1);
          v25 = *v23;
          v23 += 2;
          *v22 = v25;
          v22 += 2;
          --v24;
        }

        while (v24);
        if ((*(this + 15) & 0x40) != 0)
        {
          v26 = *(*(v11 + 4) + 88);
          v27 = &v72;
          v28 = v21;
          do
          {
            *v27 = vmulq_f64(*v27, v26);
            ++v27;
            --v28;
          }

          while (v28);
        }

        *&v61.f64[0] = &unk_1EF1FECF0;
        *&v61.f64[1] = v21;
        *&v62.f64[0] = &v72;
        CA::Render::LayerNode::MapGeometry::map(&v61, v11, v15);
        v30 = *(a2 + 5);
        if (v20 != 2)
        {
          if (v20 == 1)
          {
            v69 = v72;
            goto LABEL_56;
          }

          if (v19 < 8)
          {
            return;
          }

          v33 = 0.5;
          v34 = 0.5;
          if (v17)
          {
            v35 = *(v30 + 136);
            if (v35)
            {
              v33 = *(v35 + 168);
              v34 = *(v35 + 176);
            }

            else
            {
              v33 = 0.0;
              if ((*(v30 + 50) & 0x40) == 0)
              {
                v33 = 0.5;
              }

              v34 = v33;
            }
          }

          v60[0] = v33;
          v60[1] = v34;
          v43 = vmlaq_n_f64(v72, vsubq_f64(v73, v72), v33);
          v44 = vmlaq_n_f64(v43, vmlaq_n_f64(vsubq_f64(v75, v43), vsubq_f64(v74, v75), v33), v34);
          v69 = v44;
          if (v17)
          {
            v71[0] = vsubq_f64(v72, v44);
            v71[1] = vsubq_f64(v73, v44);
            v71[2] = vsubq_f64(v74, v44);
            v71[3] = vsubq_f64(v75, v44);
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v59 = *(v30 + 88);
            CA::Mat4Impl::mat4_set_corner_matrix(&v61, v71, &v59, v60);
            v58 = 716;
            CA::Render::Layer::set_property_value(v30, &v58, 1, ((*(this + 3) >> 9) & 1), 0x10, v61.f64, v45);
            v46 = CA::Render::MatchAnimation::matches_dependence_transform(*(this + 16), v61.f64);
            v47 = *(this + 16);
            if (v47 && (*(this + 3) & 0x200) == 0)
            {
              v48 = 0;
              *(v47 + 208) = 716;
              *(v47 + 216) = 16;
              v49 = v47 + 224;
              do
              {
                *(v49 + v48 * 8) = v61.f64[v48];
                ++v48;
              }

              while (v48 != 16);
              goto LABEL_57;
            }

LABEL_80:
            if (v47)
            {
              *(v47 + 208) = 0;
            }

            goto LABEL_57;
          }

LABEL_56:
          v46 = 1;
          goto LABEL_57;
        }

        v31 = 0.5;
        if (v17)
        {
          v32 = *(v30 + 136);
          if (v32)
          {
            v31 = *(v32 + 168);
          }

          else
          {
            v31 = 0.0;
            if ((*(v30 + 50) & 0x40) == 0)
            {
              v31 = 0.5;
            }
          }
        }

        v36 = vsubq_f64(v73, v72);
        v69 = vmlaq_n_f64(v72, v36, v31);
        if (!v17)
        {
          goto LABEL_56;
        }

        v37 = *(this + 3);
        if ((v37 & 0x18000000) == 0)
        {
          goto LABEL_56;
        }

        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        if ((v37 & 0x10000000) != 0)
        {
          v57 = v36;
          v38 = atan2(v36.f64[1], v36.f64[0]);
          v64 = 0u;
          v65 = 0u;
          v66 = xmmword_183E20E00;
          v68 = xmmword_183E20E60;
          v41 = __sincos_stret(v38);
          *v40.i64 = v41.__cosval;
          *v39.i64 = v41.__sinval;
          if (fabs(v41.__sinval) >= 0.0000001)
          {
            if (fabs(v41.__cosval) < 0.0000001)
            {
              v40.i64[0] = 1.0;
              v53.f64[0] = NAN;
              v53.f64[1] = NAN;
              v39.i64[0] = vbslq_s8(vnegq_f64(v53), v40, v39).u64[0];
              v40.i64[0] = 0;
            }
          }

          else
          {
            v39.i64[0] = 1.0;
            v42.f64[0] = NAN;
            v42.f64[1] = NAN;
            v40.i64[0] = vbslq_s8(vnegq_f64(v42), v39, v40).u64[0];
            v39.i64[0] = 0;
          }

          v36 = v57;
          *&v61.f64[0] = v40.i64[0];
          *&v61.f64[1] = v39.i64[0];
          v63.f64[0] = -*v39.i64;
          *&v63.f64[1] = v40.i64[0];
        }

        else
        {
          v61 = xmmword_183E20E00;
          v63 = xmmword_183E20E60;
          v64 = 0uLL;
          v65 = 0uLL;
          v66 = xmmword_183E20E00;
          v68 = xmmword_183E20E60;
        }

        if ((v37 & 0x8000000) != 0)
        {
          v54 = sqrt(vaddvq_f64(vmulq_f64(v36, v36))) / *(v30 + 88);
          v61 = vmulq_n_f64(v61, v54);
          v62 = vmulq_n_f64(0, v54);
          v63 = vmulq_n_f64(v63, v54);
          v64 = v62;
          v65 = 0u;
          v66 = xmmword_183E20E00;
        }

        LODWORD(v71[0].f64[0]) = 716;
        CA::Render::Layer::set_property_value(v30, v71, 1, ((v37 >> 9) & 1), 0x10, v61.f64, v29);
        v46 = CA::Render::MatchAnimation::matches_dependence_transform(*(this + 16), v61.f64);
        v47 = *(this + 16);
        if (!v47 || (*(this + 3) & 0x200) != 0)
        {
          goto LABEL_80;
        }

        v55 = 0;
        *(v47 + 208) = 716;
        *(v47 + 216) = 16;
        v56 = v47 + 224;
        do
        {
          *(v56 + v55 * 8) = v61.f64[v55];
          ++v55;
        }

        while (v55 != 16);
LABEL_57:
        v50 = *(this + 3);
        v51 = (v50 >> 25) & 3;
        if ((v51 - 1) >= 2)
        {
          if (v51)
          {
            goto LABEL_64;
          }
        }

        else
        {
          memset(&v70, 0, 32);
          if (CA::Render::Layer::get_keypath_value(v30, this + 15, 4uLL, &v70, 0) >= 2)
          {
            v50 = *(this + 3);
            if ((v50 & 0x2000000) == 0)
            {
              v69.f64[0] = v70.f64[0];
            }

            if ((v50 & 0x4000000) == 0)
            {
              v69.f64[1] = v70.f64[1];
            }

LABEL_64:
            CA::Render::Layer::set_keypath_value(v30, this + 15, ((v50 >> 9) & 1), 2, v69.f64);
            v46 &= CA::Render::MatchAnimation::matches_dependence_property(*(this + 16), v69.f64, 2uLL);
            CA::Render::MatchAnimation::set_dependence_property(this, v69.f64, 2uLL);
          }
        }

        if (v46)
        {
          v52 = 32;
        }

        else
        {
          v52 = 0;
        }

        *(a2 + 224) = *(a2 + 224) & 0xDF | v52;
      }
    }
  }
}

unint64_t CA::Render::key_path_atoms(unint64_t this, void **a2, unsigned int *a3)
{
  if (this)
  {
    if (this)
    {
      *a2 = this >> 1;
      if (HIDWORD(this))
      {
        *(a2 + 1) = HIDWORD(this);
      }
    }

    else
    {
      v3 = *this;
      if (v3)
      {
        v4 = (this + 4);
        do
        {
          v5 = *v4++;
          *a2 = v5;
          a2 = (a2 + 4);
          --v3;
        }

        while (v3);
      }
    }
  }

  return this;
}

void CA::Render::Layer::set_keypath_value(CA::Render::Layer *this, void *const *a2, const unsigned int *a3, CA::Render::Vector *a4, double *a5)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2)
  {
    if (v5)
    {
      v11 = HIDWORD(v5) ? 2 : 1;
    }

    else
    {
      v11 = *v5;
    }

    if (v11 - 0x10000 >= 0xFFFFFFFFFFFF0001)
    {
      if (v11 > 0x400)
      {
        v15 = malloc_type_malloc(4 * v11, 0x100004052888210uLL);
        if (!v15)
        {
          return;
        }

        v13 = v15;
        v5 = *a2;
      }

      else
      {
        MEMORY[0x1EEE9AC00]();
        v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v13, v12);
      }

      CA::Render::key_path_atoms(v5, v13, v14);
      CA::Render::Layer::set_property_value(this, v13, v11, a3, a4, a5, v16);
      if (v11 >= 0x401)
      {
        free(v13);
      }
    }
  }
}

void CA::Render::Layer::set_property_value(CA::Render::Layer *this, const unsigned int *a2, double *a3, const unsigned int *a4, CA::Render::Vector *a5, double *a6, const double *a7)
{
  v170 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return;
  }

  v7 = a6;
  v9 = a4;
  v13 = a3 - 1;
  if (a3 == 1)
  {
    *&v168[0] = 0;
    v166 = 0u;
    v167 = 0u;
    v165.a = 0.0;
    if (!a4)
    {
LABEL_28:
      v15 = 0;
      v14 = *a2;
      goto LABEL_29;
    }

    v14 = *a2;
    v15 = 1;
    if (*a2 > 692)
    {
      if (v14 != 693 && v14 != 716)
      {
LABEL_23:
        if (CA::Render::Layer::get_property_value(this, a2, 1, 5uLL, &v166, &v165, 0.0) >= a5)
        {
          a = v165.a;
          if (a5)
          {
            v23 = 0;
            do
            {
              *(*&a + 8 * v23) = *(*&a + 8 * v23) + v7[v23];
              v23 = (v23 + 1);
            }

            while (a5 != v23);
          }

          v7 = *&a;
        }

        goto LABEL_28;
      }
    }

    else if (v14 != 154 && v14 != 445)
    {
      goto LABEL_23;
    }

LABEL_29:
    if (v14 <= 295)
    {
      if (v14 > 132)
      {
        if (v14 <= 202)
        {
          switch(v14)
          {
            case 133:
              if (a5)
              {
                v24 = *v7;
                if (v24 != 0.0 || *(this + 17))
                {
                  *(CA::Render::Layer::ensure_ext(this) + 66) = v24;
                }
              }

              goto LABEL_393;
            case 134:
              if (a5 < 4)
              {
                goto LABEL_393;
              }

              v121 = CA::Render::Vector::new_vector(4, v7, a3);
              CA::Render::Layer::set_contents_center(this, v121);
              if (!v121)
              {
                goto LABEL_393;
              }

              goto LABEL_307;
            case 138:
              if (a5)
              {
                v124 = *v7;
                if (v124 != 1.0 || *(this + 17))
                {
                  *(CA::Render::Layer::ensure_ext(this) + 67) = v124;
                }
              }

              goto LABEL_393;
            case 144:
              if (a5)
              {
                *(this + 5) = *(this + 5) & 0xFFFFFFFFFFFF0FFFLL | ((*v7 & 0xFu) << 12);
              }

              goto LABEL_393;
            case 145:
              if (a5)
              {
                v123 = *v7;
                if (v123 != 0.0 || *(this + 17))
                {
                  *(CA::Render::Layer::ensure_ext(this) + 68) = v123;
                }
              }

              goto LABEL_393;
            case 146:
              if (a5)
              {
                v122 = *v7;
                if (v122 != 0.0 || *(this + 17))
                {
                  *(CA::Render::Layer::ensure_ext(this) + 69) = v122;
                }
              }

              goto LABEL_393;
            case 147:
              CA::Render::color_from_vec(&v169, a5, v7);
              if (*(this + 17))
              {
                goto LABEL_304;
              }

              __asm { FMOV            V1.4S, #1.0 }

              if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*&v169.a, _Q1)))))
              {
LABEL_304:
                v129 = CA::Render::Layer::ensure_ext(this);
                *(v129 + 284) = *&v169.a;
                *(v129 + 75) = LODWORD(v169.c);
              }

              goto LABEL_393;
            case 149:
              if (!a5)
              {
                goto LABEL_393;
              }

              v41 = *(this + 5) & 0xFFF7FFFFFFFFFFFFLL | ((*v7 > 0.5) << 51);
              goto LABEL_392;
            case 150:
              if (a5 < 4)
              {
                goto LABEL_393;
              }

              v121 = CA::Render::Vector::new_vector(4, v7, a3);
              CA::Render::Layer::set_contents_rect(this, v121);
              if (!v121)
              {
                goto LABEL_393;
              }

              goto LABEL_307;
            case 151:
              if (a5)
              {
                v125 = *v7;
                CA::Render::Layer::set_contents_scale(this, v125);
              }

              goto LABEL_393;
            case 153:
              if (a5)
              {
                CA::Render::Layer::set_contents_swizzle(this, *v7);
              }

              goto LABEL_393;
            case 154:
              CA::Render::Layer::set_affine_matrix(this, v15, a5, v7);
              goto LABEL_393;
            case 163:
              if (a5 >= 8)
              {
                v121 = CA::Render::Vector::new_vector(8, v7, a3);
                CA::Render::Layer::set_corner_radii(this, v121);
                if (v121)
                {
LABEL_307:
                  if (atomic_fetch_add(v121 + 2, 0xFFFFFFFF) == 1)
                  {
                    (*(*v121 + 16))(v121);
                  }
                }
              }

              goto LABEL_393;
            case 164:
              if (a5)
              {
                v130 = *v7;
                v131 = v130 >= 0.0 ? *v7 : 0.0;
                if (v131 != 0.0 || *(this + 17))
                {
                  *(CA::Render::Layer::ensure_ext(this) + 58) = v131;
                }
              }

              goto LABEL_393;
            default:
              goto LABEL_396;
          }
        }

        if (v14 == 203)
        {
          if (a5)
          {
            v145 = *v7;
            if (v145 != 0.0 || *(this + 17))
            {
              *(CA::Render::Layer::ensure_ext(this) + 70) = v145;
            }
          }

          goto LABEL_393;
        }

        if (v14 != 206)
        {
          if (v14 == 279)
          {
            if (a5)
            {
              v85 = *v7;
              if (v85 != 1.0 || *(this + 17))
              {
                *(CA::Render::Layer::ensure_ext(this) + 79) = v85;
              }
            }

            goto LABEL_393;
          }

          goto LABEL_396;
        }

        if (a5)
        {
          v41 = *(this + 5) & 0xFFFFEFFFFFFFFFFFLL | ((*v7 > 0.5) << 44);
LABEL_392:
          *(this + 5) = v41;
        }

LABEL_393:
        if (*&v165.a != &v166)
        {
          free(*&v165.a);
        }

        return;
      }

      if (v14 > 62)
      {
        if (v14 <= 75)
        {
          switch(v14)
          {
            case '?':
              if (a5 >= 2)
              {
                v142 = *v7;
                v143 = *(v7 + 1);
                v144 = CA::Render::Layer::ensure_ext(this);
                v144[19] = v142;
                v144[20] = v143;
              }

              goto LABEL_393;
            case 'J':
              CA::Render::color_from_vec(&v169, a5, v7);
              if (*(this + 17) || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*&v169.a, xmmword_183E20E40)))) & 1) != 0)
              {
                v138 = CA::Render::Layer::ensure_ext(this);
                *(v138 + 244) = *&v169.a;
                *(v138 + 65) = LODWORD(v169.c);
              }

              goto LABEL_393;
            case 'K':
              if (a5)
              {
                v36 = *v7;
                if (v36 != 0.0 || *(this + 17))
                {
                  *(CA::Render::Layer::ensure_ext(this) + 59) = v36;
                }
              }

              goto LABEL_393;
          }

          goto LABEL_396;
        }

        if (v14 != 76)
        {
          if (v14 == 77)
          {
            if (a5)
            {
              v139 = *v7;
              if (v139 > 0.0 || *(this + 17))
              {
                *(CA::Render::Layer::ensure_ext(this) + 60) = v139;
              }
            }

            goto LABEL_393;
          }

          if (v14 == 82)
          {
            if (a5 >= 4)
            {
              v86 = vsubq_f64(*(v7 + 2), *v7);
              *(this + 72) = *v7;
              *(this + 88) = v86;
            }

            goto LABEL_393;
          }

          goto LABEL_396;
        }

        if (!a5)
        {
          goto LABEL_393;
        }

        v136 = *(this + 12) & 0xFFFFEFFF | ((*v7 > 0.5) << 12);
LABEL_389:
        *(this + 12) = v136;
        goto LABEL_393;
      }

      if (v14 <= 32)
      {
        if (v14 == 13)
        {
          if (!a5)
          {
            goto LABEL_393;
          }

          v136 = *(this + 12) & 0xFFFFFDFF | ((*v7 > 0.5) << 9);
          goto LABEL_389;
        }

        if (v14 == 16)
        {
          if (!a5)
          {
            goto LABEL_393;
          }

          v41 = *(this + 5) & 0xDFFFFFFFFFFFFFFFLL | ((*v7 > 0.5) << 61);
          goto LABEL_392;
        }
      }

      else
      {
        switch(v14)
        {
          case '!':
            if (a5 >= 2)
            {
              *&v169.a = *v7;
              CA::Render::Layer::set_anchor_point(this, &v169);
            }

            goto LABEL_393;
          case '""':
            if (a5 && (*v7 != 0.0 || *(this + 17)))
            {
              v140 = *v7;
              CA::Render::Layer::ensure_ext(this)[23] = v140;
            }

            goto LABEL_393;
          case '>':
            CA::Render::color_from_vec(&v169, a5, v7);
            *(this + 1) = *&v169.a;
            *(this + 8) = LODWORD(v169.c);
            if (*&v169.a == 0.0 && *(&v169.a + 1) == 0.0 && *&v169.b == 0.0)
            {
              v46 = *(this + 12);
              v45 = (this + 48);
              v44 = v46;
              if (*(&v169.b + 1) == 0.0)
              {
                v47 = 0;
LABEL_433:
                *v45 = v47 | v44 & 0xFFFDFFFF;
                goto LABEL_393;
              }
            }

            else
            {
              v156 = *(this + 12);
              v45 = (this + 48);
              v44 = v156;
            }

            v47 = 0x20000;
            goto LABEL_433;
        }
      }

LABEL_396:
      v146 = *(this + 17);
      if (v146)
      {
        if (*v146)
        {
          v147 = *CA::Render::Layer::ensure_ext(this);
          if (v147)
          {
            (*(*v147 + 144))(v147, 1, a2, v15, a5, v7);
          }
        }
      }

      goto LABEL_393;
    }

    if (v14 <= 613)
    {
      if (v14 > 584)
      {
        if (v14 <= 591)
        {
          switch(v14)
          {
            case 585:
              if (!a5)
              {
                goto LABEL_393;
              }

              v136 = *(this + 12) & 0xFFFFFBFF | ((*v7 > 0.5) << 10);
              goto LABEL_389;
            case 590:
              if (!a5)
              {
                goto LABEL_393;
              }

              v41 = *(this + 5) & 0xFEFFFFFFFFFFFFFFLL | ((*v7 > 0.5) << 56);
              goto LABEL_392;
            case 591:
              if (!a5)
              {
                goto LABEL_393;
              }

              v41 = *(this + 5) & 0xFDFFFFFFFFFFFFFFLL | ((*v7 > 0.5) << 57);
              goto LABEL_392;
          }
        }

        else
        {
          if (v14 > 611)
          {
            if (v14 == 612)
            {
              CA::Render::color_from_vec(&v169, a5, v7);
              if (*(this + 17) || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*&v169.a, xmmword_183E20E40)))) & 1) != 0)
              {
                v137 = CA::Render::Layer::ensure_ext(this);
                *(v137 + 324) = *&v169.a;
                *(v137 + 85) = LODWORD(v169.c);
              }
            }

            else if (a5)
            {
              v93 = *v7;
              if (v93 > 0.0 || *(this + 17))
              {
                *(CA::Render::Layer::ensure_ext(this) + 86) = v93;
              }
            }

            goto LABEL_393;
          }

          if (v14 == 592)
          {
            if (a5)
            {
              v135 = *v7;
              CA::Render::Layer::set_rasterization_scale(this, v135);
            }

            goto LABEL_393;
          }

          if (v14 == 593)
          {
            if (!a5)
            {
              goto LABEL_393;
            }

            v41 = *(this + 5) & 0xFF7FFFFFFFFFFFFFLL | ((*v7 > 0.5) << 55);
            goto LABEL_392;
          }
        }

        goto LABEL_396;
      }

      if (v14 <= 518)
      {
        switch(v14)
        {
          case 296:
            if (!a5)
            {
              goto LABEL_393;
            }

            v41 = *(this + 5) & 0xFFFFFBFFFFFFFFFFLL | ((*v7 > 0.5) << 42);
            goto LABEL_392;
          case 451:
            if (!a5)
            {
              goto LABEL_393;
            }

            v136 = *(this + 12) & 0xFFFFFF7F | ((*v7 > 0.5) << 7);
            goto LABEL_389;
          case 506:
            if (!a5)
            {
              goto LABEL_393;
            }

            v41 = *(this + 5) & 0xFFFFFEFFFFFFFFFFLL | ((*v7 > 0.5) << 40);
            goto LABEL_392;
        }

        goto LABEL_396;
      }

      if (v14 <= 568)
      {
        if (v14 == 519)
        {
          if (a5)
          {
            v132 = *v7;
            if (v132 != 0.0 || *(this + 17))
            {
              *(CA::Render::Layer::ensure_ext(this) + 78) = v132;
            }
          }

          goto LABEL_393;
        }

        if (v14 == 539)
        {
          if (a5)
          {
            v25 = *v7 > 1.0 || *v7 < 0.0;
            v26 = 1.0;
            if (*v7 < 0.0 && *v7 <= 1.0)
            {
              v26 = 0.0;
            }

            v27 = *v7;
            if (v25)
            {
              v27 = v26;
            }

            *(this + 36) = ((v27 * 255.0) + 0.5);
          }

          goto LABEL_393;
        }

        goto LABEL_396;
      }

      if (v14 != 569)
      {
        if (v14 == 577)
        {
          if (!a5)
          {
            goto LABEL_393;
          }

          v41 = *(this + 5) & 0xFBFFFFFFFFFFFFFFLL | ((*v7 > 0.5) << 58);
          goto LABEL_392;
        }

        goto LABEL_396;
      }

      if (a5 < 2)
      {
        goto LABEL_393;
      }

      *(this + 56) = *v7;
      if (a5 == 2)
      {
        goto LABEL_393;
      }

      v94 = v7[2];
LABEL_338:
      if (v94 != 0.0 || *(this + 17))
      {
        *(CA::Render::Layer::ensure_ext(this) + 24) = v94;
      }

      goto LABEL_393;
    }

    if (v14 <= 648)
    {
      if (v14 <= 642)
      {
        switch(v14)
        {
          case 614:
            if (!a5)
            {
              goto LABEL_393;
            }

            v136 = *(this + 12) & 0xFFFFF7FF | ((*v7 > 0.5) << 11);
            goto LABEL_389;
          case 615:
            if (a5)
            {
              v141 = *v7;
              if (v141 > 0.0 || *(this + 17))
              {
                *(CA::Render::Layer::ensure_ext(this) + 80) = v141;
              }
            }

            goto LABEL_393;
          case 638:
            CA::Render::color_from_vec(&v169, a5, v7);
            if (*(this + 17) || (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_f32(*&v169.a, xmmword_183E20E40)))) & 1) != 0)
            {
              v87 = CA::Render::Layer::ensure_ext(this);
              *(v87 + 25) = *&v169.a;
              *(v87 + 54) = LODWORD(v169.c);
            }

            goto LABEL_393;
        }
      }

      else if (v14 > 645)
      {
        if (v14 == 646)
        {
          if (!a5)
          {
            goto LABEL_393;
          }

          v136 = *(this + 12) & 0xFFFFFEFF | ((*v7 > 0.5) << 8);
          goto LABEL_389;
        }

        if (v14 == 647)
        {
          if (a5)
          {
            v92 = *v7;
            if (v92 != 3.0 || *(this + 17))
            {
              *(CA::Render::Layer::ensure_ext(this) + 57) = v92;
            }
          }

          goto LABEL_393;
        }
      }

      else
      {
        if (v14 == 643)
        {
          if (a5 >= 2)
          {
            v133 = vcvt_f32_f64(*v7);
            _ZF = v133.f32[0] == 0.0 && v133.f32[1] == -3.0;
            if (!_ZF || *(this + 17))
            {
              *(CA::Render::Layer::ensure_ext(this) + 220) = v133;
            }
          }

          goto LABEL_393;
        }

        if (v14 == 644)
        {
          if (a5)
          {
            v28 = *v7 > 1.0 || *v7 < 0.0;
            v29 = 1.0;
            if (*v7 < 0.0 && *v7 <= 1.0)
            {
              v29 = 0.0;
            }

            v30 = *v7;
            if (v28)
            {
              v30 = v29;
            }

            *(this + 37) = ((v30 * 255.0) + 0.5);
          }

          goto LABEL_393;
        }
      }

      goto LABEL_396;
    }

    if (v14 <= 659)
    {
      switch(v14)
      {
        case 649:
          if (!a5)
          {
            goto LABEL_393;
          }

          v41 = *(this + 5) & 0xFFDFFFFFFFFFFFFFLL | ((*v7 > 0.5) << 53);
          goto LABEL_392;
        case 650:
          if (!a5)
          {
            goto LABEL_393;
          }

          v41 = *(this + 5) & 0xFFEFFFFFFFFFFFFFLL | ((*v7 > 0.5) << 52);
          goto LABEL_392;
        case 651:
          if (!a5)
          {
            goto LABEL_393;
          }

          v41 = *(this + 5) & 0xFFBFFFFFFFFFFFFFLL | ((*v7 > 0.5) << 54);
          goto LABEL_392;
      }

      goto LABEL_396;
    }

    if (v14 > 715)
    {
      if (v14 != 716)
      {
        if (v14 != 764)
        {
          goto LABEL_396;
        }

        if (!a5)
        {
          goto LABEL_393;
        }

        v94 = *v7;
        goto LABEL_338;
      }

      v42 = this;
      v43 = 16;
    }

    else
    {
      if (v14 == 660)
      {
        if (!a5)
        {
          goto LABEL_393;
        }

        v136 = *(this + 12) & 0xFFFFDFFF | ((*v7 > 0.5) << 13);
        goto LABEL_389;
      }

      if (v14 != 693)
      {
        goto LABEL_396;
      }

      v42 = this;
      v43 = 24;
    }

    CA::Render::Layer::set_transform_matrix(v42, v43, v15, a5, v7);
    goto LABEL_393;
  }

  v17 = a2 + 1;
  v16 = *a2;
  if (*a2 > 153)
  {
    if (v16 <= 642)
    {
      if (v16 != 154)
      {
        if (v16 == 256)
        {
          v80 = *(this + 17);
          if (v80)
          {
            v81 = *(v80 + 96);
          }

          else
          {
            v81 = 0;
          }

          v111 = CA::Render::set_list_property<CA::Render::Filter>(v81, a3 - 1, (a2 + 1), a4, a5, a6);
          v112 = v111;
          v113 = *(this + 17);
          if (v113)
          {
            v113 = *(v113 + 96);
          }

          if (v111 != v113)
          {
            v114 = CA::Render::Layer::ensure_ext(this);
            v100 = v114[12];
            v114[12] = v112;
            if (v100)
            {
              goto LABEL_270;
            }
          }
        }

        else
        {
          if (v16 != 569)
          {
            goto LABEL_144;
          }

          v34 = *(this + 7);
          v33 = *(this + 8);
          if (a3 == 2)
          {
            v35 = *v17;
            if (a5 && v35 == 756)
            {
              v34 = *a6 + v34;
              if (!a4)
              {
                v34 = *a6;
              }
            }

            else if (a5)
            {
              if (v35 == 760)
              {
                v33 = *a6 + v33;
                if (!a4)
                {
                  v33 = *a6;
                }
              }
            }
          }

          *(this + 7) = v34;
          *(this + 8) = v33;
        }

        return;
      }

      v66 = *(this + 17);
      v67 = MEMORY[0x1E695EFD0];
      if (v66 && (v68 = *(v66 + 32)) != 0)
      {
        v69 = *(v68 + 16);
        v70 = (v68 + 24);
        v71 = (v68 + 40);
        v72 = (v68 + 56);
        _CF = v69 >= 6;
        if (v69 < 6)
        {
          v72 = (MEMORY[0x1E695EFD0] + 32);
        }

        v74 = (MEMORY[0x1E695EFD0] + 16);
        if (_CF)
        {
          v74 = v71;
        }

        if (_CF)
        {
          v67 = v70;
        }

        v75 = *v74;
        v76 = *v72;
        *&v165.a = *v67;
        *&v165.c = v75;
        *&v165.tx = v76;
      }

      else
      {
        v88 = *(MEMORY[0x1E695EFD0] + 16);
        *&v165.a = *MEMORY[0x1E695EFD0];
        *&v165.c = v88;
        *&v165.tx = *(MEMORY[0x1E695EFD0] + 32);
      }

      memset(v168, 0, 40);
      v166 = 0u;
      v167 = 0u;
      CA::Mat2Impl::mat2_get_unmatrix(&v165, &v166);
      if (v13 == 2)
      {
        if (*v17 == 720)
        {
          v157 = a2[2];
          if (a5 && v157 == 756)
          {
            if (v9)
            {
              v158 = *v7 + v167.f64[0];
            }

            else
            {
              v158 = *v7;
            }

            v167.f64[0] = v158;
          }

          else if (a5 && v157 == 760)
          {
            if (v9)
            {
              v163 = *v7 + v167.f64[1];
            }

            else
            {
              v163 = *v7;
            }

            v167.f64[1] = v163;
          }
        }

        else if (*v17 == 621)
        {
          v119 = a2[2];
          if (a5 && v119 == 756)
          {
            if (v9)
            {
              v120 = *v7 + v166.f64[0];
            }

            else
            {
              v120 = *v7;
            }

            v166.f64[0] = v120;
          }

          else if (a5 && v119 == 760)
          {
            if (v9)
            {
              v162 = *v7 + v166.f64[1];
            }

            else
            {
              v162 = *v7;
            }

            v166.f64[1] = v162;
          }
        }
      }

      else if (v13 == 1)
      {
        v90 = *v17;
        if (a5 && v90 == 616)
        {
          if (v9)
          {
            v91 = *v7 + *v168;
          }

          else
          {
            v91 = *v7;
          }

          *v168 = v91;
        }

        else if (a5 && v90 == 621)
        {
          v153 = vld1q_dup_f64(v7);
          v154 = vaddq_f64(v166, v153);
          if (v9)
          {
            v155 = -1;
          }

          else
          {
            v155 = 0;
          }

          v166 = vbslq_s8(vdupq_n_s64(v155), v154, v153);
        }

        else if (a5 >= 2 && v90 == 720)
        {
          if (v9)
          {
            v159 = vaddq_f64(*v7, v167);
          }

          else
          {
            v159 = *v7;
          }

          v167 = v159;
        }
      }

      *&v165.a = *(v168 + 8);
      *&v165.c = *(&v168[1] + 8);
      *&v165.tx = v167;
      if (*v168 != 0.0)
      {
        CA::Mat2Impl::mat2_rotate(&v165, v89, *v168);
      }

      if (v166.f64[0] != 1.0 || v166.f64[1] != 1.0)
      {
        *&v165.a = vmulq_n_f64(*&v165.a, v166.f64[0]);
        *&v165.c = vmulq_n_f64(*&v165.c, v166.f64[1]);
      }

      v169 = v165;
      if (CGAffineTransformIsIdentity(&v169))
      {

        CA::Render::Layer::set_contents_transform(this, 0);
        return;
      }

      v169 = v165;
      v102 = CA::Render::Vector::new_vector(6, &v169, v164);
      CA::Render::Layer::set_contents_transform(this, v102);
      if (!v102)
      {
        return;
      }
    }

    else
    {
      if (v16 <= 693)
      {
        if (v16 != 643)
        {
          if (v16 == 693)
          {
            v20 = *(this + 17);
            if (v20)
            {
              v21 = *(v20 + 24);
            }

            else
            {
              v21 = 0;
            }

            v102 = CA::Render::set_transform_property(v21, (a3 - 1), a2 + 1, a4, a5, a6, a7);
            CA::Render::Layer::set_sublayer_transform(this, v102);
            if (!v102)
            {
              return;
            }

            goto LABEL_480;
          }

          goto LABEL_144;
        }

        v50 = *(this + 17);
        if (v50)
        {
          v51 = *(v50 + 220);
          v52 = *(v50 + 224);
        }

        else
        {
          v52 = -3.0;
          v51 = 0.0;
        }

        if (a3 == 2)
        {
          v101 = *v17;
          if (a5 && v101 == 753)
          {
            v51 = *a6 + v51;
            if (!a4)
            {
              v51 = *a6;
            }
          }

          else if (a5)
          {
            if (v101 == 295)
            {
              v52 = *a6 + v52;
              if (!a4)
              {
                v52 = *a6;
              }
            }
          }
        }

        v148 = v51;
        v149 = v52;
        if (v50 || v148 != 0.0 || v149 != -3.0)
        {
          v150 = CA::Render::Layer::ensure_ext(this);
          v150[55] = v148;
          v150[56] = v149;
        }

        return;
      }

      if (v16 != 694)
      {
        if (v16 == 716)
        {
          v39 = *(this + 17);
          if (v39)
          {
            v40 = *(v39 + 16);
          }

          else
          {
            v40 = 0;
          }

          v102 = CA::Render::set_transform_property(v40, (a3 - 1), a2 + 1, a4, a5, a6, a7);
          CA::Render::Layer::set_transform(this, v102);
          if (!v102)
          {
            return;
          }

          goto LABEL_480;
        }

        goto LABEL_144;
      }

      v55 = *(this + 14);
      if ((*(this + 13) & 0x20) != 0)
      {
        if (!v55 || !CA::Render::atom_is_single_sublayer(*v17, *(this + 14), a3))
        {
          return;
        }

        v95 = X::Allocator0::operator new(0xA0uLL);
        if (v95)
        {
          v96 = v95;
          v97 = CA::Render::Layer::Layer(v95, v55);
          CA::Render::Layer::set_property_value(v97, a2 + 2, a3 - 2, v9, a5, v7);
          CA::Render::Layer::evaluate_container(v96, v98);
          CA::Render::Layer::set_single_sublayer(this, v96);
          if (atomic_fetch_add(v96 + 2, 0xFFFFFFFF) != 1)
          {
            return;
          }

          v99 = *(*v96 + 16);
          v100 = v96;
LABEL_482:

          v99(v100);
          return;
        }

        CA::Render::Layer::set_property_value(0, a2 + 2, a3 - 2, v9, a5, v7);
        CA::Render::Layer::evaluate_container(0, v161);

        CA::Render::Layer::set_single_sublayer(this, 0);
        return;
      }

      if (!v55)
      {
        return;
      }

      named_object = CA::Render::TypedArray<CA::Render::Layer>::find_named_object(*(this + 14), *v17);
      if ((named_object & 0x80000000) != 0)
      {
        return;
      }

      v57 = named_object;
      v58 = X::Allocator0::operator new(0xA0uLL);
      v59 = v58;
      if (v58)
      {
        v60 = CA::Render::Layer::Layer(v58, *(v55 + 8 * v57 + 24));
        CA::Render::Layer::set_property_value(v60, a2 + 2, a3 - 2, v9, a5, v7);
        v62 = v59;
      }

      else
      {
        CA::Render::Layer::set_property_value(0, a2 + 2, a3 - 2, v9, a5, v7);
        v62 = 0;
      }

      CA::Render::Layer::evaluate_container(v62, v61);
      v102 = CA::Render::Array::new_array(*(v55 + 16), (v55 + 24), 1, 0);
      v160 = *&v102[2 * v57 + 6];
      if (v160 && atomic_fetch_add(v160 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v160 + 16))(v160);
      }

      *&v102[2 * v57 + 6] = v59;
      CA::Render::Layer::set_sublayers(this, v102);
    }

LABEL_480:
    if (atomic_fetch_add(v102 + 2, 0xFFFFFFFF) != 1)
    {
      return;
    }

    v99 = *(*v102 + 16);
    v100 = v102;
    goto LABEL_482;
  }

  if (v16 > 81)
  {
    if (v16 <= 133)
    {
      if (v16 == 82)
      {
        v48 = *(this + 88);
        v166 = *(this + 72);
        v167 = v48;
        CA::Render::set_rect_property(v166.f64, (a3 - 1), a2 + 1, a4, a5, a6, a7);
        v49 = v167;
        *(this + 72) = v166;
        *(this + 88) = v49;
        return;
      }

      if (v16 == 124)
      {
        v18 = *(this + 17);
        if (v18)
        {
          v19 = *(v18 + 88);
        }

        else
        {
          v19 = 0;
        }

        v106 = CA::Render::set_object_property<CA::Render::Filter>(v19, a3 - 1, (a2 + 1), a4, a5, a6);
        v107 = v106;
        v108 = *(this + 17);
        if (v108)
        {
          v108 = *(v108 + 11);
        }

        if (v106 == v108)
        {
          return;
        }

        v109 = CA::Render::Layer::ensure_ext(this);
        v100 = v109[11];
        v109[11] = v107;
        if (!v100)
        {
          return;
        }

        goto LABEL_270;
      }

      goto LABEL_144;
    }

    if (v16 == 134)
    {
      v53 = *(this + 17);
      if (v53)
      {
        v54 = *(v53 + 48);
      }

      else
      {
        v54 = 0;
      }

      v102 = CA::Render::set_rect_vector_property(v54, (a3 - 1), a2 + 1, a4, a5, a6, a7);
      CA::Render::Layer::set_contents_center(this, v102);
      if (!v102)
      {
        return;
      }

      goto LABEL_480;
    }

    if (v16 == 150)
    {
      v37 = *(this + 17);
      if (v37)
      {
        v38 = *(v37 + 40);
      }

      else
      {
        v38 = 0;
      }

      v102 = CA::Render::set_rect_vector_property(v38, (a3 - 1), a2 + 1, a4, a5, a6, a7);
      CA::Render::Layer::set_contents_rect(this, v102);
      if (!v102)
      {
        return;
      }

      goto LABEL_480;
    }

LABEL_144:
    v82 = *(this + 17);
    if (v82)
    {
      if (*v82)
      {
        v83 = *CA::Render::Layer::ensure_ext(this);
        if (v83)
        {
          v84 = *(*v83 + 144);

          v84();
        }
      }
    }

    return;
  }

  switch(v16)
  {
    case '!':
      v63 = *(this + 17);
      if (v63)
      {
        v65 = *(v63 + 168);
        v64 = *(v63 + 176);
      }

      else
      {
        v64 = 0.0;
        if ((*(this + 50) & 0x40) == 0)
        {
          v64 = 0.5;
        }

        v65 = v64;
      }

      v166.f64[0] = v65;
      v166.f64[1] = v64;
      if (a3 == 2)
      {
        v103 = *v17;
        if (a5 && v103 == 756)
        {
          v104 = *a6;
          v105 = *a6 + v65;
          if (a4)
          {
            v104 = v105;
          }

          v166.f64[0] = v104;
        }

        else if (a5 && v103 == 760)
        {
          v151 = *a6 + v64;
          if (!a4)
          {
            v151 = *a6;
          }

          v166.f64[1] = v151;
        }
      }

      CA::Render::Layer::set_anchor_point(this, &v166);
      break;
    case '?':
      v77 = *(this + 17);
      if (v77)
      {
        v78 = *(v77 + 152);
        v79 = *(v77 + 160);
      }

      else
      {
        v78 = 0.0;
        v79 = 0.0;
      }

      if (a3 == 2)
      {
        v110 = *v17;
        if (a5 && v110 == 756)
        {
          if (a4)
          {
            v78 = *a6 + v78;
          }

          else
          {
            v78 = *a6;
          }
        }

        else if (a5 && v110 == 760)
        {
          if (a4)
          {
            v79 = *a6 + v79;
          }

          else
          {
            v79 = *a6;
          }
        }
      }

      v152 = CA::Render::Layer::ensure_ext(this);
      v152[19] = v78;
      v152[20] = v79;
      break;
    case '@':
      v31 = *(this + 17);
      if (v31)
      {
        v32 = *(v31 + 104);
      }

      else
      {
        v32 = 0;
      }

      v115 = CA::Render::set_list_property<CA::Render::Filter>(v32, a3 - 1, (a2 + 1), a4, a5, a6);
      v116 = v115;
      v117 = *(this + 17);
      if (v117)
      {
        v117 = *(v117 + 104);
      }

      if (v115 != v117)
      {
        v118 = CA::Render::Layer::ensure_ext(this);
        v100 = v118[13];
        v118[13] = v116;
        if (v100)
        {
LABEL_270:
          if (atomic_fetch_add(v100 + 2, 0xFFFFFFFF) != 1)
          {
            return;
          }

          v99 = *(*v100 + 16);
          goto LABEL_482;
        }
      }

      break;
    default:
      goto LABEL_144;
  }
}