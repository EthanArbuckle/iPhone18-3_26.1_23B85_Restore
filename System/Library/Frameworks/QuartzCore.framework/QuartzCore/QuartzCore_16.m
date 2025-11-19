uint64_t CA::Render::Context::set_object(CA::Render::Context *this, unint64_t a2, unsigned int a3, CA::Render::Object *a4)
{
  result = MEMORY[0x1EEE9AC00](this);
  v154[509] = *MEMORY[0x1E69E9840];
  if (!v5)
  {
    return result;
  }

  v9 = v7;
  if (!v7)
  {
    return result;
  }

  v10 = v6;
  v11 = v5;
  v12 = result;
  if (*(v7 + 12) == 30)
  {
    v13 = v8;
    v148 = 0;
    result = CA::Render::Context::lookup_handle(result, v5, v6, 1, &v148);
    if (result)
    {
      v15 = result;
      if (*(result + 16) != v9)
      {
        v16 = *(v9 + 12);
        if ((v16 & 0x200) != 0)
        {
          v17 = *(v9 + 120);
          if (v17)
          {
            CA::Render::Layer::set_mask(v9, 0);
            *(v9 + 12) &= ~0x200u;
            v18 = CA::Render::Context::lookup_object(*(v12 + 136), *(v12 + 148), v17, 0, 30, 0);
            if (v18)
            {
              v19 = v15;
              result = CA::Render::Layer::set_mask(v9, v18);
            }

            else
            {
              v19 = v15;
              if (x_log_get_render(void)::once[0] != -1)
              {
                dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
              }

              v21 = x_log_get_render(void)::log;
              result = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR);
              if (result)
              {
                LODWORD(v151) = 134217984;
                *(&v151 + 4) = v17;
                _os_log_error_impl(&dword_183AA6000, v21, OS_LOG_TYPE_ERROR, "missing mask layer 0x%lx\n", &v151, 0xCu);
              }
            }
          }

          else
          {
            v19 = result;
            *(v9 + 12) = v16 & 0xFFFFFDFF;
          }

          v15 = v19;
          if ((*(v9 + 13) & 0x20) == 0)
          {
            v22 = *(v9 + 112);
            if (v22)
            {
              v23 = *(v22 + 16);
              if (!v23)
              {
                CA::Render::Layer::set_sublayers(v9, 0);
                goto LABEL_46;
              }

              v144 = v15;
              v24 = v12;
              v146 = v23;
              if (v23 > 0x200)
              {
                v147 = malloc_type_malloc(8 * v23, 0x2004093837F09uLL);
                if (!v147)
                {
                  CA::Render::Layer::set_sublayers(v9, 0);
                  v15 = v144;
                  goto LABEL_46;
                }
              }

              else
              {
                MEMORY[0x1EEE9AC00](result);
                v147 = (&v130 - ((v25 + 15) & 0xFFFFFFFF0));
                bzero(v147, v25);
              }

              v143 = v13;
              v27 = 0;
              v28 = (v22 + 24);
              *&v26 = 134217984;
              v142 = v26;
              v29 = v146;
              do
              {
                v30 = *v28;
                v31 = CA::Render::Context::lookup_object(*(v24 + 136), *(v24 + 148), *v28, 0, 30, 0);
                if (v31)
                {
                  v147[v27] = v31;
                  v27 = (v27 + 1);
                }

                else
                {
                  if (x_log_get_render(void)::once[0] != -1)
                  {
                    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
                  }

                  v32 = x_log_get_render(void)::log;
                  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
                  {
                    LODWORD(v151) = v142;
                    *(&v151 + 4) = v30;
                    _os_log_error_impl(&dword_183AA6000, v32, OS_LOG_TYPE_ERROR, "missing sublayer %p\n", &v151, 0xCu);
                  }
                }

                ++v28;
                --v29;
              }

              while (v29);
              if (v27 <= 1)
              {
                v13 = v143;
                if (v27 == 1)
                {
                  v34 = *v147;
                }

                else
                {
                  v34 = 0;
                }

                v12 = v24;
                CA::Render::Layer::set_single_sublayer(v9, v34);
              }

              else
              {
                v33 = CA::Render::Array::new_array(v27, v147, 1, 0);
                CA::Render::Layer::set_sublayers(v9, v33);
                v12 = v24;
                v13 = v143;
                if (v33 && atomic_fetch_add(v33 + 2, 0xFFFFFFFF) == 1)
                {
                  (*(*v33 + 16))(v33);
                }
              }

              v15 = v144;
              if (v146 >= 0x201)
              {
                free(v147);
              }
            }
          }
        }

LABEL_46:
        if (v13)
        {
          *(v15 + 92) = 0;
        }

        v35 = *(v9 + 104);
        if (!v35)
        {
          goto LABEL_66;
        }

        v36 = *(v35 + 12);
        if (v36 != 45)
        {
          goto LABEL_66;
        }

        if (v36 >> 8 == 1)
        {
          if (v12)
          {
            v38 = CA::Render::Context::lookup_object(*(v12 + 136), *(v12 + 148), *(v35 + 16), 0, 0, 0);
            v37 = v38;
            if (v38 && !atomic_fetch_add((v38 + 8), 1u))
            {
              v37 = 0;
              atomic_fetch_add((v38 + 8), 0xFFFFFFFF);
            }

            goto LABEL_57;
          }
        }

        else if (!(v36 >> 8))
        {
          v37 = CA::Render::Context::copy_slot(*(v35 + 16));
LABEL_57:
          v36 = *(v35 + 12);
LABEL_59:
          v39 = *(v35 + 16);
          CA::Render::Layer::set_contents(v9, v37);
          if (v36 > 0xFF)
          {
            if (!v37)
            {
              goto LABEL_66;
            }
          }

          else
          {
            *(v9 + 12) |= 0x400u;
            *(v15 + 92) = v39;
            if (!v37)
            {
              goto LABEL_66;
            }

            if (*(v37 + 12) == 25)
            {
              *(*(*(v37 + 16) + 24) + 72) = *(v12 + 16);
            }
          }

          if (atomic_fetch_add((v37 + 8), 0xFFFFFFFF) == 1)
          {
            (*(*v37 + 16))(v37);
          }

LABEL_66:
          v40 = *(v15 + 16);
          if (v40 && v148 == v10)
          {
            CA::Render::Layer::copy_properties(v9, v40, v13, v14);
            if ((*(v15 + 106) & 8) == 0)
            {
              CA::Render::Layer::set_animations(v9, *(*(v15 + 16) + 144));
            }

            v40 = *(v15 + 16);
          }

          if (!v40 || (*(v15 + 106) & 8) != 0)
          {
            v41 = *(v15 + 48);
            if (!v41)
            {
              goto LABEL_90;
            }

            v42 = *(v12 + 12);
            v43 = -1;
            do
            {
              v44 = v43;
              v41 = *(v41 + 8);
              ++v43;
            }

            while (v41);
            if (v44 != -2 && (v45 = CA::Render::Array::new_array((v44 + 2), 0, 0, 0)) != 0)
            {
              v46 = v45;
              if ((v42 & 0x800) != 0)
              {
                v47 = -1;
              }

              else
              {
                v47 = 1;
              }

              v48 = *(v15 + 48);
              if (v48)
              {
                if ((v42 & 0x800) != 0)
                {
                  v49 = v43;
                }

                else
                {
                  v49 = 0;
                }

                do
                {
                  v50 = *v48;
                  if (*v48)
                  {
                    v51 = (v50 + 8);
                    if (!atomic_fetch_add((v50 + 8), 1u))
                    {
                      v50 = 0;
                      atomic_fetch_add(v51, 0xFFFFFFFF);
                    }
                  }

                  *&v45[8 * v49 + 24] = v50;
                  v49 += v47;
                  v48 = v48[1];
                }

                while (v48);
              }

              CA::Render::Layer::set_animations(v9, v45);
              if (atomic_fetch_add(v46 + 2, 0xFFFFFFFF) == 1)
              {
                (*(*v46 + 16))(v46);
              }
            }

            else
            {
LABEL_90:
              CA::Render::Layer::set_animations(v9, 0);
            }

            *(v15 + 104) &= ~0x80000uLL;
          }

          if ((v13 & 2) != 0)
          {
            v72 = *(v15 + 16);
            if (v72)
            {
              v73 = *(v72 + 112);
              if ((*(v72 + 13) & 0x20) != 0)
              {
                if (v73)
                {
                  v77 = *(v73 + 152);
                  if (v77)
                  {
                    if (*(v77 + 32) == v11)
                    {
                      *(v77 + 32) = 0;
                    }
                  }
                }
              }

              else if (v73)
              {
                v74 = *(v73 + 16);
                if (v74)
                {
                  v75 = v73 + 24;
                  do
                  {
                    v76 = *(*v75 + 152);
                    if (v76 && *(v76 + 32) == v11)
                    {
                      *(v76 + 32) = 0;
                    }

                    v75 += 8;
                    --v74;
                  }

                  while (v74);
                }
              }
            }

            v78 = *(v9 + 112);
            if ((*(v9 + 13) & 0x20) != 0)
            {
              if (v78)
              {
                v82 = *(v78 + 152);
                if (v82)
                {
                  *(v82 + 32) = v11;
                }
              }
            }

            else if (v78)
            {
              v79 = *(v78 + 16);
              if (v79)
              {
                v80 = v78 + 24;
                do
                {
                  v81 = *(*v80 + 152);
                  if (v81)
                  {
                    *(v81 + 32) = v11;
                  }

                  v80 += 8;
                  --v79;
                }

                while (v79);
              }
            }
          }

          if ((v13 & 4) != 0)
          {
            v52 = *(v15 + 16);
            if (v52)
            {
              v53 = *(v52 + 120);
              if (v53)
              {
                v54 = *(v53 + 152);
                if (*(v54 + 32) == v11)
                {
                  *(v54 + 32) = 0;
                }
              }
            }

            v55 = *(v9 + 120);
            if (v55)
            {
              *(*(v55 + 152) + 32) = v11;
            }
          }

          v56 = *(v15 + 40);
          if (v56)
          {
            *(v56 + 40) = 0;
            if (atomic_fetch_add((v56 + 16), 0xFFFFFFFF) == 1)
            {
              CA::Render::LayerNode::delete_node(v56, v40);
            }

            *(v15 + 40) = 0;
          }

          v57 = *(v9 + 136);
          if (v57 && *v57)
          {
            CA::Render::Layer::ensure_ext(v9);
          }

          v58 = 0x100000000004;
          v59 = v13 & 0x1FFFF9;
          if ((v13 & 0x1FFFF9) != 0)
          {
            v58 = 0x100000000007;
          }

          if (v59)
          {
            v60 = v13;
            if ((v13 & 1) == 0)
            {
              goto LABEL_159;
            }

            v61 = *(v9 + 104);
            if (v61)
            {
              v62 = (*(*v61 + 80))(v61);
              if (v62)
              {
                v63 = v62;
                v64 = *(v62 + 48);
                if (v59 == 1 && v64)
                {
                  v65 = v15;
                  v66 = *(v15 + 16);
                  if (v66)
                  {
                    v67 = *(v66 + 104);
                    if (v67)
                    {
                      v68 = (*(*v67 + 80))(v67);
                      if (v68)
                      {
                        v69 = *(v68 + 48);
                        if (v69)
                        {
                          v70 = CA::Shape::Union(*(v68 + 48), v64);
                          CA::Render::Texture::set_dirty_shape(v63, v70);
                          if (!CA::Shape::is_valid(v70))
                          {
                            v143 = v13;
                            if (x_log_get_render(void)::once[0] != -1)
                            {
                              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
                            }

                            v71 = x_log_get_render(void)::log;
                            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_FAULT))
                            {
                              is_valid = CA::Shape::is_valid(v64);
                              v129 = CA::Shape::is_valid(v69);
                              LODWORD(v151) = 67109376;
                              DWORD1(v151) = is_valid;
                              WORD4(v151) = 1024;
                              *(&v151 + 10) = v129;
                              _os_log_fault_impl(&dword_183AA6000, v71, OS_LOG_TYPE_FAULT, "Shape union is bogus, new shape: %d, old shape: %d!", &v151, 0xEu);
                            }

                            CA::Render::Texture::set_dirty_shape(v63, &CA::Shape::_infinite_shape);
                            v13 = v143;
                          }

                          if (v70)
                          {
                            CA::Shape::unref(v70);
                          }
                        }
                      }
                    }
                  }

                  v60 = v13 & 0xFFE00006;
                  v58 = 0x100000000014;
                  v15 = v65;
LABEL_159:
                  if ((v60 & 0x5FE78) != 0)
                  {
                    v58 |= 8uLL;
                  }

                  if ((v13 & 4) != 0)
                  {
                    v58 |= 0xBuLL;
                  }

                  if ((v60 & 0xBF3D3) != 0)
                  {
                    v58 |= 0x10uLL;
                  }

                  if ((v60 & 0xFFFFB) != 0)
                  {
                    v83 = v58 | 0x10000000;
                  }

                  else
                  {
                    v83 = v58;
                  }

                  if ((v13 & 2) != 0)
                  {
                    v84 = v83 | 8;
                    v85 = *(v15 + 16);
                    if (v85)
                    {
                      if (*(v85 + 112))
                      {
                        *(v15 + 12) |= 0x4000u;
                      }

                      if ((~(*(v15 + 104) | v83) & 3) != 0)
                      {
                        v149 = 0;
                        v150 = 0;
                        v86 = *(v85 + 112);
                        v87 = *(v85 + 13);
                        v143 = v13;
                        v144 = v15;
                        if ((v87 & 0x20) != 0 || !v86)
                        {
                          v150 = v86;
                          v88 = v86 != 0;
                          if (v86)
                          {
                            v89 = &v150;
                          }

                          else
                          {
                            v89 = 0;
                          }
                        }

                        else
                        {
                          v88 = *(v86 + 16);
                          v89 = (v86 + 24);
                        }

                        goto LABEL_189;
                      }
                    }

                    else if ((~(*(v15 + 104) | v83) & 3) != 0)
                    {
                      v144 = v15;
                      v143 = v13;
                      v88 = 0;
                      v89 = 0;
                      v149 = 0;
                      v150 = 0;
LABEL_189:
                      v93 = *(v9 + 112);
                      if ((*(v9 + 13) & 0x20) != 0 || !v93)
                      {
                        v149 = *(v9 + 112);
                        v94 = v93 != 0;
                        if (v93)
                        {
                          v95 = &v149;
                        }

                        else
                        {
                          v95 = 0;
                        }
                      }

                      else
                      {
                        v94 = *(v93 + 16);
                        v95 = (v93 + 24);
                      }

                      v141 = v12;
                      if ((v94 + v88) >= 0x80)
                      {
                        v96 = 128;
                      }

                      else
                      {
                        v96 = v94 + v88;
                      }

                      v97 = 0;
                      if (v88 >= v94)
                      {
                        v98 = v94;
                      }

                      else
                      {
                        v98 = v88;
                      }

                      if (v98)
                      {
                        while (*(v89[v97] + 152) == *(v95[v97] + 152))
                        {
                          if (v98 == ++v97)
                          {
                            v97 = v98;
                            break;
                          }
                        }
                      }

                      if (v97 == v94)
                      {
                        v99 = v88 - 1;
                      }

                      else
                      {
                        v99 = v88 + 1;
                      }

                      if (v97 == v88)
                      {
                        v100 = v88 + 1;
                      }

                      else
                      {
                        v100 = v88 - 1;
                      }

                      if (v97 != v88 || v97 != v94)
                      {
                        if (v88 <= v94)
                        {
                          v101 = v94;
                        }

                        else
                        {
                          v101 = v88;
                        }

                        if (v101 < 0x401)
                        {
                          v139 = v96;
                          v132 = v83 | 8;
                          v136 = v83;
                          v137 = v60;
                          *(&v151 + 1) = 0;
                          v152 = v154;
                          v153 = xmmword_183E21150;
                          *&v151 = &v151 + 8;
                          v147 = ((16 * v101) | 8);
                          *&v142 = x_heap_malloc(&v151 + 1, v147);
                          v102 = x_heap_malloc(v151, v147);
                          v103 = v142;
                          *(v142 + 8 * v88) = v97;
                          v146 = v102;
                          *(v102 + 8 * v88) = 0;
                          if (v94 + v88)
                          {
                            v104 = v139;
                            if (v139 <= 1)
                            {
                              v104 = 1;
                            }

                            v138 = v104;
                            v135 = -v88;
                            v131 = v95;
                            v134 = &v95[-v88];
                            v105 = 1;
                            v106 = 1;
                            v145 = v9;
                            while (1)
                            {
                              v140 = v106;
                              if (v100 <= v99)
                              {
                                break;
                              }

                              v107 = v100;
LABEL_246:
                              v100 = v107 - 1;
                              ++v99;
                              v106 = v140 + 1;
                              v105 = v140 < v139;
                              if (v140 == v138)
                              {
                                goto LABEL_257;
                              }
                            }

                            v133 = v105;
                            v147 = (v88 - v106);
                            *&v142 = v106 + v88;
                            v108 = v135 + v100;
                            v107 = v100;
                            v109 = &v134[v100];
                            while (1)
                            {
                              v110 = v103;
                              v111 = x_heap_malloc_small_(v151, 0x20uLL);
                              v103 = v110;
                              if (v100 == v147 || v100 != v142 && *(v110 + 8 * v100 + 8) >= *(v110 + 8 * v100 - 8))
                              {
                                v113 = v100 + 1;
                                v114 = *(v110 + 8 * (v100 + 1)) + 1;
                                v115 = 1;
                              }

                              else
                              {
                                v115 = 0;
                                v113 = v100 - 1;
                                v114 = *(v110 + 8 * (v100 - 1));
                              }

                              v9 = v145;
                              v116 = v146;
                              *v111 = *(v146 + 8 * v113);
                              *(v111 + 8) = v115;
                              v117 = v114 + v100 - v88;
                              *(v111 + 16) = v114 - 1;
                              *(v111 + 24) = v117 - 1;
                              *(v116 + 8 * v100) = v111;
                              if (v114 < v88 && v117 < v94)
                              {
                                do
                                {
                                  if (*(v89[v114] + 152) != *(v109[v114] + 152))
                                  {
                                    break;
                                  }

                                  if (++v114 >= v88)
                                  {
                                    break;
                                  }
                                }

                                while (v114 + v108 < v94);
                                v117 = v108 + v114;
                              }

                              *(v103 + 8 * v100) = v114;
                              if (v114 == v88 && v117 == v94)
                              {
                                break;
                              }

                              v119 = v100 + 2;
                              if (v114 == v88)
                              {
                                v107 = v100 + 2;
                              }

                              if (v117 == v94)
                              {
                                v99 = v100 - 2;
                              }

                              v108 += 2;
                              v109 += 2;
                              v100 += 2;
                              if (v119 > v99)
                              {
                                goto LABEL_246;
                              }
                            }

                            v120 = 0;
                            do
                            {
                              v121 = v111;
                              v111 = *v111;
                              *v121 = v120;
                              v120 = v121;
                            }

                            while (v111);
                            v122 = v144;
                            v123 = v131;
                            do
                            {
                              if (*(v121 + 8) == 1)
                              {
                                CA::Render::Context::invalidate(*(v122 + 24), (*(v89[*(v121 + 16)] + 152) + 120), v112);
                              }

                              else
                              {
                                v124 = *(v123[*(v121 + 24)] + 152);
                                if (v124)
                                {
                                  *(v124 + 104) |= 2uLL;
                                }
                              }

                              v121 = *v121;
                            }

                            while (v121);
                            LOBYTE(v105) = v133;
LABEL_257:
                            x_heap_free(v151);
                            v60 = v137;
                            v84 = v132;
                            if (!v105)
                            {
                              v84 = v136 | 0xB;
                            }
                          }

                          else
                          {
                            x_heap_free(v151);
                            v84 = v136 | 0xB;
                            v60 = v137;
                          }
                        }

                        else
                        {
                          v84 = v83 | 0xB;
                        }
                      }

                      v83 = v84;
                      v12 = v141;
                      v13 = v143;
                      v15 = v144;
                      if ((v60 & 0x20000000) != 0)
                      {
                        goto LABEL_261;
                      }

                      goto LABEL_179;
                    }

                    v83 |= 8uLL;
                  }

                  if ((v60 & 0x20000000) != 0)
                  {
LABEL_261:
                    v83 |= 0x2000000000000000uLL;
LABEL_262:
                    *(v15 + 104) |= v83;
                    v125 = *(v9 + 152);
                    if (v125 != v15)
                    {
                      if (v125 && atomic_fetch_add(v125 + 2, 0xFFFFFFFF) == 1)
                      {
                        (*(*v125 + 16))(v125);
                      }

                      v126 = v15;
                      if (!atomic_fetch_add((v15 + 8), 1u))
                      {
                        v126 = 0;
                        atomic_fetch_add((v15 + 8), 0xFFFFFFFF);
                      }

                      *(v9 + 152) = v126;
                    }

                    v127 = *(v9 + 136);
                    if (v127)
                    {
                      if (*v127)
                      {
                        (*(**v127 + 104))(*v127, v12, v9, v15, v13);
                      }
                    }

                    return CA::Render::Handle::set_current_layer(v15, v9);
                  }

LABEL_179:
                  if ((*(v15 + 13) & 1) != 0 && (v60 & 0x1FFFFF) != 0)
                  {
                    v90 = *(v15 + 24);
                    if (v90)
                    {
                      v91 = *(v90 + 448);
                      if (v91)
                      {
                        v92 = *(v91 + 40);
                        if (v92)
                        {
                          *(v92 + 104) |= 0x2000000000000000uLL;
                        }
                      }
                    }
                  }

                  goto LABEL_262;
                }

                if (v64)
                {
                  CA::Shape::unref(*(v62 + 48));
                  *(v63 + 6) = 0;
                }
              }
            }

            v58 = 0x100000000007;
          }

          v60 = v13;
          goto LABEL_159;
        }

        v37 = 0;
        goto LABEL_59;
      }
    }

    if (atomic_fetch_add((v9 + 8), 0xFFFFFFFF) == 1)
    {
      return (*(*v9 + 16))(v9);
    }
  }

  else
  {
    v20 = (result + 136);

    return CA::Render::Context::ResourceTable::insert(v20, v5, v6, v7);
  }

  return result;
}

void *CA::Render::Context::ResourceTable::insert(CA::Render::Context::ResourceTable *this, CA::Render::Object *a2, int a3, CA::Render::Object *a4)
{
  v7 = a2 ^ 0x8000000000000000;
  v8 = ((a2 ^ 0x8000000000000000) + ~(a2 << 32)) ^ (((a2 ^ 0x8000000000000000) + ~(a2 << 32)) >> 22);
  v9 = 9 * ((v8 + ~(v8 << 13)) ^ ((v8 + ~(v8 << 13)) >> 8));
  v10 = (v9 ^ (v9 >> 15)) + ~((v9 ^ (v9 >> 15)) << 27);
  v11 = v10 ^ (v10 >> 31);
  v12 = *this + 8 * (v11 & *(this + 3));
  while (1)
  {
    v12 = *v12;
    if (!v12)
    {
      break;
    }

    if (*(v12 + 8) == v7)
    {
      result = CA::Render::Context::ResourceTable::release_value(*(v12 + 16), a2);
      *(v12 + 16) = a4;
      *(v12 + 24) = a3;
      return result;
    }
  }

  v14 = *(this + 3) + 1;
  *(this + 3) = v14;
  v15 = *(this + 2);
  if (v14 >= (4 * v15))
  {
    v16 = (2 * v15);
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v17 = malloc_type_zone_calloc(malloc_zone, 1uLL, 8 * v16, 0x2004093837F09uLL);
    if (v17)
    {
      v18 = v17;
      v19 = *(this + 4) + 1;
      v20 = ~(-1 << v19);
      *(this + 3) = v20;
      *(this + 4) = v19;
      v21 = *(this + 2);
      if (v21)
      {
        for (i = 0; i < v21; ++i)
        {
          v23 = *(*this + 8 * i);
          if (v23)
          {
            do
            {
              v24 = *v23;
              v25 = v23[1] + ~(v23[1] << 32);
              v26 = (v25 ^ (v25 >> 22)) + ~((v25 ^ (v25 >> 22)) << 13);
              v27 = (9 * (v26 ^ (v26 >> 8))) ^ ((9 * (v26 ^ (v26 >> 8))) >> 15);
              LODWORD(v27) = v20 & (((v27 + ~(v27 << 27)) >> 31) ^ (v27 + ~(v27 << 27)));
              *v23 = v17[v27];
              v17[v27] = v23;
              v23 = v24;
            }

            while (v24);
          }
        }
      }

      v28 = *this;
      if (x_malloc_get_zone::once != -1)
      {
        v31 = *this;
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        v28 = v31;
      }

      malloc_zone_free(malloc_zone, v28);
      *this = v18;
      *(this + 2) = v16;
    }
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_malloc(malloc_zone, 0x20uLL, 0x10200402CFBC8ADuLL);
  result[2] = a4;
  *(result + 6) = a3;
  v29 = *this;
  v30 = v11 & *(this + 3);
  *result = *(*this + 8 * v30);
  result[1] = v7;
  *(v29 + 8 * v30) = result;
  return result;
}

atomic_uint *CA::Render::Layer::set_animations(uint64_t a1, atomic_uint *a2)
{
  result = *(a1 + 144);
  if (result != a2)
  {
    v4 = a2;
    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*result + 16))(result);
    }

    if (v4)
    {
      v5 = v4 + 2;
      if (!atomic_fetch_add(v4 + 2, 1u))
      {
        v4 = 0;
        atomic_fetch_add(v5, 0xFFFFFFFF);
      }
    }

    *(a1 + 144) = v4;
  }

  return result;
}

float CA::Render::Layer::copy_properties(CA::Render::Layer *this, CA::Render::Layer *a2, int a3, __n128 a4)
{
  v6 = this;
  v100[1] = *MEMORY[0x1E69E9840];
  if ((a3 & 1) == 0)
  {
    this = CA::Render::Layer::set_contents(this, *(a2 + 13));
    if ((*(a2 + 13) & 4) != 0)
    {
      *(v6 + 3) |= 0x400u;
    }
  }

  if ((a3 & 4) == 0)
  {
    v7 = *(a2 + 15);
    if (v7)
    {
      v8 = *(v7 + 152);
      if (v8)
      {
        this = CA::Render::Layer::set_mask(v6, *(v8 + 16));
      }
    }

    *(v6 + 5) = *(v6 + 5) & 0xFFFFFDFFFFFFFFFFLL | (((*(a2 + 5) >> 41) & 1) << 41);
  }

  if ((a3 & 2) == 0)
  {
    v9 = *(a2 + 14);
    if ((*(a2 + 13) & 0x20) != 0)
    {
      if (v9)
      {
        v15 = *(v9 + 152);
        if (v15)
        {
          v16 = *(v15 + 16);
          if (v16)
          {
            v17 = (v16 + 8);
            if (!atomic_fetch_add((v16 + 8), 1u))
            {
              v16 = 0;
              atomic_fetch_add(v17, 0xFFFFFFFF);
            }
          }
        }

        else
        {
          v16 = 0;
        }

        v18 = *(v6 + 14);
        if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v18 + 16))(v18);
        }

        *(v6 + 14) = v16;
        *(v6 + 3) |= 0x2000u;
      }
    }

    else if (v9)
    {
      v10 = *(v9 + 16);
      if (!v10)
      {
        goto LABEL_30;
      }

      v11 = 0;
      v12 = v9 + 24;
      while (1)
      {
        v13 = *(v12 + 8 * v11);
        if (v13)
        {
          v14 = *(v13 + 152);
          if (!v14 || *(v14 + 16) != v13)
          {
            break;
          }
        }

        if (v10 == ++v11)
        {
          goto LABEL_30;
        }
      }

      if (v11 != v10)
      {
        if (v10 >= 0x201)
        {
          v88 = malloc_type_malloc(8 * v10, 0x6482ABCFuLL);
          if (!v88)
          {
            goto LABEL_31;
          }
        }

        else
        {
          MEMORY[0x1EEE9AC00](this);
          v88 = (v100 - ((v87 + 15) & 0xFFFFFFFF0));
          bzero(v88, v87);
        }

        v89 = 0;
        v90 = v10;
        do
        {
          if (*v12)
          {
            v91 = *(*v12 + 152);
            if (v91)
            {
              v92 = *(v91 + 16);
              if (v92)
              {
                v88[v89++] = v92;
              }
            }
          }

          v12 += 8;
          --v90;
        }

        while (v90);
        if (v89 < 2)
        {
          if (v89 == 1)
          {
            v96 = *v88;
            if (*v88)
            {
              v97 = (v96 + 8);
              if (!atomic_fetch_add((v96 + 8), 1u))
              {
                v96 = 0;
                atomic_fetch_add(v97, 0xFFFFFFFF);
              }
            }
          }

          else
          {
            v96 = 0;
          }

          v98 = *(v6 + 14);
          if (v98 && atomic_fetch_add(v98 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v98 + 16))(v98);
          }

          *(v6 + 14) = v96;
          v95 = *(v6 + 3) | 0x2000;
        }

        else
        {
          v93 = CA::Render::Array::new_array(v89, v88, 1, 0);
          v94 = *(v6 + 14);
          if (v94 && atomic_fetch_add(v94 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v94 + 16))(v94);
          }

          *(v6 + 14) = v93;
          v95 = *(v6 + 3) & 0xFFFFDFFF;
        }

        *(v6 + 3) = v95;
        if (v10 >= 0x201)
        {
          free(v88);
        }
      }

      else
      {
LABEL_30:
        CA::Render::Layer::set_sublayers(v6, v9);
      }
    }
  }

LABEL_31:
  if ((a3 & 8) == 0)
  {
    *(v6 + 36) = *(a2 + 36);
    *(v6 + 5) = *(v6 + 5) & 0xFFFFFBFFFFFFFFFFLL | (((*(a2 + 5) >> 42) & 1) << 42);
    a4 = *(a2 + 56);
    *(v6 + 56) = a4;
    v19 = *(a2 + 17);
    if (v19)
    {
      v20 = CA::Render::Layer::ensure_ext(v6);
      if (v20)
      {
        a4.n128_u64[0] = *(v19 + 192);
        v20[24] = a4.n128_u64[0];
      }
    }
  }

  if ((a3 & 0x10) == 0)
  {
    v21 = *(a2 + 38);
    *(v6 + 38) = v21;
    v22 = *(v6 + 5) & 0xFFFFFEFFFFFFFFFFLL | (((*(a2 + 5) >> 40) & 1) << 40);
    *(v6 + 5) = v22;
    v23 = v22 & 0xFFFFF7FFFFFFFFFFLL | (((*(a2 + 5) >> 43) & 1) << 43);
    *(v6 + 5) = v23;
    v24 = v23 & 0xFFFFDFFFFFFFFFFFLL | (((*(a2 + 5) >> 45) & 1) << 45);
    *(v6 + 5) = v24;
    v25 = v24 & 0xFFFFBFFFFFFFFFFFLL | (((*(a2 + 5) >> 46) & 1) << 46);
    *(v6 + 5) = v25;
    v26 = v25 & 0xFFFF7FFFFFFFFFFFLL | (((*(a2 + 5) >> 47) & 1) << 47);
    *(v6 + 5) = v26;
    *(v6 + 5) = v26 & 0xFFF7FFFFFFFFFFFFLL | (((*(a2 + 5) >> 51) & 1) << 51);
    v27 = *(a2 + 12) & 0x400000;
    *(v6 + 12) = *(v6 + 12) & 0xFFBFFFFF | v27;
    *(v6 + 72) = *(a2 + 72);
    a4 = *(a2 + 88);
    *(v6 + 88) = a4;
    v28 = *(a2 + 17);
    if (v28)
    {
      v29 = CA::Render::Layer::ensure_ext(v6);
      if (!v29)
      {
        goto LABEL_44;
      }

      *(v29 + 21) = *(v28 + 168);
      v29[23] = *(v28 + 184);
      a4.n128_u32[0] = *(v28 + 304);
    }

    else
    {
      v29 = *(v6 + 17);
      if (!v29)
      {
        goto LABEL_44;
      }

      a4.n128_u64[0] = 0;
      if (!v27)
      {
        a4.n128_f64[0] = 0.5;
      }

      v29[21] = a4.n128_u64[0];
      v29[22] = a4.n128_u64[0];
      a4.n128_f32[0] = v21;
    }

    *(v29 + 76) = a4.n128_u32[0];
  }

LABEL_44:
  v30 = *(a2 + 17);
  if (!v30)
  {
    goto LABEL_60;
  }

  if ((a3 & 0x20) != 0)
  {
    if ((a3 & 0x40) != 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    CA::Render::Layer::set_transform(v6, *(v30 + 16));
    if ((a3 & 0x40) != 0)
    {
LABEL_47:
      if ((a3 & 0x80) != 0)
      {
        goto LABEL_48;
      }

      goto LABEL_102;
    }
  }

  CA::Render::Layer::set_sublayer_transform(v6, *(v30 + 24));
  if ((a3 & 0x80) != 0)
  {
LABEL_48:
    if ((a3 & 0x100) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_103;
  }

LABEL_102:
  CA::Render::Layer::set_contents_transform(v6, *(v30 + 32));
  if ((a3 & 0x100) != 0)
  {
LABEL_49:
    if ((a3 & 0x20000) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_104;
  }

LABEL_103:
  CA::Render::Layer::set_contents_rect(v6, *(v30 + 40));
  if ((a3 & 0x20000) != 0)
  {
LABEL_50:
    if ((a3 & 0x80000) != 0)
    {
      goto LABEL_51;
    }

    goto LABEL_105;
  }

LABEL_104:
  CA::Render::Layer::set_contents_center(v6, *(v30 + 48));
  if ((a3 & 0x80000) != 0)
  {
LABEL_51:
    if ((a3 & 0x1000) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_106;
  }

LABEL_105:
  CA::Render::Layer::set_corner_contents(v6, *(v30 + 56));
  CA::Render::Layer::set_corner_contents_center(v6, *(v30 + 64));
  if ((a3 & 0x1000) != 0)
  {
LABEL_52:
    if ((a3 & 0x200) != 0)
    {
      goto LABEL_53;
    }

    goto LABEL_107;
  }

LABEL_106:
  CA::Render::Layer::set_timing(v6, *(v30 + 8));
  if ((a3 & 0x200) != 0)
  {
LABEL_53:
    if ((a3 & 0x400) != 0)
    {
      goto LABEL_54;
    }

    goto LABEL_108;
  }

LABEL_107:
  CA::Render::Layer::set_filters(v6, *(v30 + 96));
  if ((a3 & 0x400) != 0)
  {
LABEL_54:
    if ((a3 & 0x800) != 0)
    {
      goto LABEL_55;
    }

    goto LABEL_109;
  }

LABEL_108:
  CA::Render::Layer::set_background_filters(v6, *(v30 + 104));
  if ((a3 & 0x800) != 0)
  {
LABEL_55:
    if ((a3 & 0x40000) != 0)
    {
      goto LABEL_56;
    }

    goto LABEL_110;
  }

LABEL_109:
  CA::Render::Layer::set_compositing_filter(v6, *(v30 + 88));
  if ((a3 & 0x40000) != 0)
  {
LABEL_56:
    if ((a3 & 0x10000) != 0)
    {
      goto LABEL_57;
    }

    goto LABEL_111;
  }

LABEL_110:
  CA::Render::Layer::set_mesh_transform(v6, *(v30 + 112));
  if ((a3 & 0x10000) != 0)
  {
LABEL_57:
    if ((a3 & 0x4000) != 0)
    {
      goto LABEL_58;
    }

    goto LABEL_112;
  }

LABEL_111:
  CA::Render::Layer::set_subclass(v6, *v30);
  if ((a3 & 0x4000) != 0)
  {
LABEL_58:
    if ((a3 & 0x100000) != 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_112:
  CA::Render::Layer::set_modifiers(v6, *(v30 + 136));
  if ((a3 & 0x100000) == 0)
  {
LABEL_59:
    CA::Render::Layer::set_identifiers(v6, *(v30 + 144));
  }

LABEL_60:
  if ((a3 & 0x8000) == 0)
  {
    v31 = *(v6 + 16);
    v32 = *(a2 + 16);
    if (v31 != v32)
    {
      if (v31)
      {
        if (atomic_fetch_add(v31 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v31 + 16))(v31);
        }

        v32 = *(a2 + 16);
      }

      if (v32)
      {
        v33 = v32 + 2;
        if (!atomic_fetch_add(v32 + 2, 1u))
        {
          v32 = 0;
          atomic_fetch_add(v33, 0xFFFFFFFF);
        }
      }

      *(v6 + 16) = v32;
    }

    a4 = *(a2 + 1);
    *(v6 + 8) = *(a2 + 8);
    *(v6 + 1) = a4;
    v34 = *(a2 + 39);
    *(v6 + 39) = v34;
    v35 = *(v6 + 5) & 0xFFFFFFFFFFFFFFF0 | *(a2 + 5) & 0xFLL;
    *(v6 + 5) = v35;
    v36 = v35 & 0xFFFFFFFFFFFFFF0FLL | (16 * ((*(a2 + 5) >> 4) & 0xFLL));
    *(v6 + 5) = v36;
    v37 = v36 & 0xFFFFFFFFFFFFF0FFLL | (((*(a2 + 5) >> 8) & 0xFLL) << 8);
    *(v6 + 5) = v37;
    v38 = v37 & 0xFFFEFFFFFFFFFFFFLL | ((HIWORD(*(a2 + 5)) & 1) << 48);
    *(v6 + 5) = v38;
    v39 = v38 & 0xFFFBFFFFFFFFFFFFLL | (((*(a2 + 5) >> 50) & 1) << 50);
    *(v6 + 5) = v39;
    v40 = v39 & 0xFFFFFFFFFFFF0FFFLL | ((HIBYTE(*(a2 + 20)) >> 4) << 12);
    *(v6 + 5) = v40;
    v41 = v40 & 0xFFFFFFFFFFF0FFFFLL | (((*(a2 + 5) >> 16) & 0xFLL) << 16);
    *(v6 + 5) = v41;
    v42 = v41 & 0xFFFFFFFF800FFFFFLL | (((*(a2 + 5) >> 20) & 0x7FFLL) << 20);
    *(v6 + 5) = v42;
    v43 = v42 & 0xFFFFFFFCFFFFFFFFLL | ((HIDWORD(*(a2 + 5)) & 3) << 32);
    *(v6 + 5) = v43;
    v44 = v43 & 0xFFFFFFF3FFFFFFFFLL | (((*(a2 + 5) >> 34) & 3) << 34);
    *(v6 + 5) = v44;
    v45 = v44 & 0xFFFFEFFFFFFFFFFFLL | (((*(a2 + 5) >> 44) & 1) << 44);
    *(v6 + 5) = v45;
    v46 = v45 & 0xFFFDFFFFFFFFFFFFLL | (((*(a2 + 5) >> 49) & 1) << 49);
    *(v6 + 5) = v46;
    v47 = v46 & 0xFFEFFFFFFFFFFFFFLL | (((*(a2 + 5) >> 52) & 1) << 52);
    *(v6 + 5) = v47;
    v48 = v47 & 0xFFDFFFFFFFFFFFFFLL | (((*(a2 + 5) >> 53) & 1) << 53);
    *(v6 + 5) = v48;
    v49 = v48 & 0xFFBFFFFFFFFFFFFFLL | (((*(a2 + 5) >> 54) & 1) << 54);
    *(v6 + 5) = v49;
    v50 = v49 & 0xFF7FFFFFFFFFFFFFLL | (((*(a2 + 5) >> 55) & 1) << 55);
    *(v6 + 5) = v50;
    v51 = v50 & 0xFEFFFFFFFFFFFFFFLL | ((HIBYTE(*(a2 + 5)) & 1) << 56);
    *(v6 + 5) = v51;
    v52 = v51 & 0xFDFFFFFFFFFFFFFFLL | (((*(a2 + 5) >> 57) & 1) << 57);
    *(v6 + 5) = v52;
    v53 = v52 & 0xFBFFFFFFFFFFFFFFLL | (((*(a2 + 5) >> 58) & 1) << 58);
    *(v6 + 5) = v53;
    v54 = v53 & 0xF7FFFFFFFFFFFFFFLL | (((*(a2 + 5) >> 59) & 1) << 59);
    *(v6 + 5) = v54;
    v55 = v54 & 0xEFFFFFFFFFFFFFFFLL | (((*(a2 + 5) >> 60) & 1) << 60);
    *(v6 + 5) = v55;
    v56 = v55 & 0xDFFFFFFFFFFFFFFFLL | (((*(a2 + 5) >> 61) & 1) << 61);
    *(v6 + 5) = v56;
    v57 = *(a2 + 5) & 0x8000000000000000 | v56 & 0x7FFFFFFFFFFFFFFFLL;
    *(v6 + 5) = v57;
    LODWORD(v56) = *(v6 + 12) & 0xFFFFFFFE | *(a2 + 12) & 1;
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFFFFFFD | (2 * ((*(a2 + 12) >> 1) & 1));
    *(v6 + 12) = v56;
    v58 = v57 & 0xBFFFFFFFFFFFFFFFLL | (((*(a2 + 5) >> 62) & 1) << 62);
    *(v6 + 5) = v58;
    LODWORD(v56) = v56 & 0xFFFFFFFB | (4 * ((*(a2 + 12) >> 2) & 1));
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFFFFFF7 | (8 * ((*(a2 + 12) >> 3) & 1));
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFFFFFEF | (16 * ((*(a2 + 12) >> 4) & 1));
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFFFFFDF | (32 * ((*(a2 + 12) >> 5) & 1));
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFFFFFBF | (((*(a2 + 12) >> 6) & 1) << 6);
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFFFBFFF | (((*(a2 + 12) >> 14) & 1) << 14);
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFFF7FFF | (((*(a2 + 12) >> 15) & 1) << 15);
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFFEFFFF | ((HIWORD(*(a2 + 12)) & 1) << 16);
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFFDFFFF | (((*(a2 + 12) >> 17) & 1) << 17);
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFFBFFFF | (((*(a2 + 12) >> 18) & 1) << 18);
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFF7FFFF | (((*(a2 + 12) >> 19) & 1) << 19);
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFEFFFFF | (((*(a2 + 12) >> 20) & 1) << 20);
    *(v6 + 12) = v56;
    LODWORD(v56) = v56 & 0xFFDFFFFF | (((*(a2 + 12) >> 21) & 1) << 21);
    *(v6 + 12) = v56;
    v59 = v58 & 0xFFFFFFCFFFFFFFFFLL | (((*(a2 + 5) >> 36) & 3) << 36);
    *(v6 + 5) = v59;
    *(v6 + 5) = v59 & 0xFFFFFF3FFFFFFFFFLL | (((*(a2 + 5) >> 38) & 3) << 38);
    *(v6 + 12) = v56 & 0xFF7FFFFF | (((*(a2 + 12) >> 23) & 1) << 23);
    v60 = *(a2 + 17);
    if (v60)
    {
      v61 = CA::Render::Layer::ensure_ext(v6);
      if (v61)
      {
        v62 = v61;
        *(v61 + 19) = *(v60 + 152);
        v63 = v61[10];
        v64 = *(v60 + 80);
        if (v63 != v64)
        {
          if (v63)
          {
            if (atomic_fetch_add(v63 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v63 + 16))(v63);
            }

            v64 = *(v60 + 80);
          }

          if (v64)
          {
            v65 = v64 + 2;
            if (!atomic_fetch_add(v64 + 2, 1u))
            {
              v64 = 0;
              atomic_fetch_add(v65, 0xFFFFFFFF);
            }
          }

          v62[10] = v64;
        }

        v62[39] = *(v60 + 312);
        *(v62 + 77) = *(v60 + 308);
        v66 = *(v60 + 244);
        *(v62 + 65) = *(v60 + 260);
        *(v62 + 244) = v66;
        v67 = v62[16];
        v68 = *(v60 + 128);
        if (v67 != v68)
        {
          if (v67)
          {
            if (atomic_fetch_add(v67 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v67 + 16))(v67);
            }

            v68 = *(v60 + 128);
          }

          if (v68)
          {
            v69 = v68 + 2;
            if (!atomic_fetch_add(v68 + 2, 1u))
            {
              v68 = 0;
              atomic_fetch_add(v69, 0xFFFFFFFF);
            }
          }

          v62[16] = v68;
        }

        *(v62 + 236) = *(v60 + 236);
        v70 = v62[9];
        v71 = *(v60 + 72);
        if (v70 != v71)
        {
          if (v70)
          {
            if (atomic_fetch_add(v70 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v70 + 16))(v70);
            }

            v71 = *(v60 + 72);
          }

          if (v71)
          {
            v72 = v71 + 2;
            if (!atomic_fetch_add(v71 + 2, 1u))
            {
              v71 = 0;
              atomic_fetch_add(v72, 0xFFFFFFFF);
            }
          }

          v62[9] = v71;
        }

        *(v62 + 58) = *(v60 + 232);
        *(v62 + 33) = *(v60 + 264);
        *(v62 + 70) = *(v60 + 280);
        a4 = *(v60 + 284);
        *(v62 + 75) = *(v60 + 300);
        *(v62 + 284) = a4;
        *(v62 + 348) = *(v62 + 348) & 0xFE | *(v60 + 348) & 1;
      }
    }

    else
    {
      v73 = *(v6 + 17);
      if (v73)
      {
        a4.n128_f32[0] = v34;
        *(v73 + 308) = v34;
      }
    }
  }

  if ((a3 & 0x2000) == 0)
  {
    *(v6 + 37) = *(a2 + 37);
    v74 = *(v6 + 12) & 0xFFFFFF7F | (((*(a2 + 12) >> 7) & 1) << 7);
    *(v6 + 12) = v74;
    v75 = v74 & 0xFFFFFEFF | (((*(a2 + 12) >> 8) & 1) << 8);
    *(v6 + 12) = v75;
    v76 = v75 & 0xFFFFFDFF | (((*(a2 + 12) >> 9) & 1) << 9);
    *(v6 + 12) = v76;
    v77 = v76 & 0xFFFFFBFF | (((*(a2 + 12) >> 10) & 1) << 10);
    *(v6 + 12) = v77;
    v78 = v77 & 0xFFFFF7FF | (((*(a2 + 12) >> 11) & 1) << 11);
    *(v6 + 12) = v78;
    v79 = v78 & 0xFFFFEFFF | (((*(a2 + 12) >> 12) & 1) << 12);
    *(v6 + 12) = v79;
    *(v6 + 12) = v79 & 0xFFFFDFFF | (((*(a2 + 12) >> 13) & 1) << 13);
    v80 = *(a2 + 17);
    if (v80)
    {
      v81 = CA::Render::Layer::ensure_ext(v6);
      if (v81)
      {
        v82 = v81;
        v83 = *(v80 + 200);
        *(v81 + 54) = *(v80 + 216);
        *(v81 + 25) = v83;
        *(v81 + 220) = *(v80 + 220);
        *(v81 + 57) = *(v80 + 228);
        v84 = v81[15];
        v85 = *(v80 + 120);
        if (v84 != v85)
        {
          if (v84)
          {
            if (atomic_fetch_add(v84 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v84 + 16))(v84);
            }

            v85 = *(v80 + 120);
          }

          if (v85)
          {
            v86 = v85 + 2;
            if (!atomic_fetch_add(v85 + 2, 1u))
            {
              v85 = 0;
              atomic_fetch_add(v86, 0xFFFFFFFF);
            }
          }

          v82[15] = v85;
        }

        a4 = *(v80 + 324);
        *(v82 + 85) = *(v80 + 340);
        *(v82 + 324) = a4;
        *(v82 + 80) = *(v80 + 320);
        a4.n128_u32[0] = *(v80 + 344);
        *(v82 + 86) = a4.n128_u32[0];
      }
    }
  }

  return a4.n128_f32[0];
}

CA::Render::LayerHost *CA::Render::LayerHost::LayerHost(CA::Render::LayerHost *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 31;
  ++dword_1ED4EAAB4;
  *v4 = &unk_1EF1F78A0;
  *(v4 + 2) = &unk_1EF1F57C8;
  *(v4 + 3) = 0;
  *(v4 + 16) = 257;
  *(this + 6) = CA::Render::Decoder::decode_port(a2, 17, v4 + 32);
  *(this + 7) = CA::Render::Decoder::decode_int32(a2);
  v5 = CA::Render::Decoder::decode_int8(a2);
  *(this + 56) = 0u;
  *(this + 33) = v5 != 0;
  *(this + 40) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 10) = CA::Render::Decoder::decode_int64(a2);
  v6 = CA::Render::Decoder::decode_int32(a2);
  std::vector<unsigned long long>::resize(this + 7, v6);
  CA::Render::Decoder::decode_bytes(a2, *(this + 7), 8 * v6);
  v7 = *(this + 3);
  if (byte_1ED4E9809 == 1)
  {
    v7 &= ~0x400u;
    *(this + 3) = v7;
    if ((v7 & 0x2000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v7 & 0x2000) == 0)
  {
    goto LABEL_5;
  }

  if ((*(*(a2 + 9) + 584) & 0x200) == 0)
  {
    CA::Render::Decoder::set_fatal_error(a2, "Missing entitlement for system layer!");
    v7 = *(this + 3);
  }

LABEL_5:
  if ((v7 & 0x10000) != 0 && (*(*(a2 + 9) + 584) & 0x400) == 0)
  {
    CA::Render::Decoder::set_fatal_error(a2, "Missing entitlement for secure layer!");
  }

  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-layer-host.cpp", 1152);
  return this;
}

void std::vector<unsigned long long>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 61))
        {
          operator new();
        }

        std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
      }

      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

void CA::Render::LayerHost::commit_layer(CA::Render::LayerHost *this, CA::Render::Context *a2, CA::Render::Layer *a3, CA::Render::Handle *a4, int a5)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v8 = *(this + 5);
  if (v8 != a4)
  {
    v9 = a4;
    if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v8 + 16))(v8, a2, a3);
    }

    if (v9)
    {
      v10 = (v9 + 8);
      if (!atomic_fetch_add(v9 + 2, 1u))
      {
        v9 = 0;
        atomic_fetch_add(v10, 0xFFFFFFFF);
      }
    }

    *(this + 5) = v9;
  }

  if ((a5 & 0x200000) != 0)
  {
    CA::Render::LayerHost::retain_hosted_context(v13, this, a2, 0);
    v11 = v13[0];
    if (v13[0] && atomic_fetch_add((v13[0] + 8), 0xFFFFFFFF) == 1)
    {
      v12 = *(*v11 + 16);

      v12();
    }
  }

  else
  {

    CA::Render::LayerHost::invalidate(this);
  }
}

uint64_t CA::Render::invalidate_context(CA::Render *this, CA::Render::Context *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  pthread_mutex_lock((this + 72));
  if ((*(this + 14) & 0x20) != 0)
  {
    if (byte_1ED4E9878 == 1)
    {
      if (x_log_get_zombie(void)::once != -1)
      {
        dispatch_once(&x_log_get_zombie(void)::once, &__block_literal_global_4431);
      }

      v7 = x_log_get_zombie(void)::log;
      if (os_log_type_enabled(x_log_get_zombie(void)::log, OS_LOG_TYPE_INFO))
      {
        v8 = *(this + 4);
        v9[0] = 67109120;
        v9[1] = v8;
        _os_log_impl(&dword_183AA6000, v7, OS_LOG_TYPE_INFO, "<ctx:%#x> host invalidated, destroying zombie", v9, 8u);
      }
    }

    if (!atomic_fetch_add(this + 2, 1u))
    {
      atomic_fetch_add(this + 2, 0xFFFFFFFF);
    }

    CA::Render::Server::add_callback(0, CA::Render::Context::schedule_destroy(void)::$_0::__invoke, this, 0.0);
  }

  v3 = CA::Render::Context::root_layer_handle(this);
  if (v3)
  {
    v5 = v3;
    CA::Render::Context::invalidate(this, v3 + 15, v4);
    *&v5[13] |= 0xBuLL;
  }

  return pthread_mutex_unlock((this + 72));
}

uint64_t CA::Render::Context::update_backdrop_namespaces_locked(uint64_t this, const CA::Render::Context *a2)
{
  if (*(this + 584))
  {
    v2 = this;
  }

  else
  {
    v2 = a2;
  }

  *(this + 576) = v2;
  v3 = *(this + 456);
  if (v3)
  {
    v4 = this;
    do
    {
      this = *(*v3 + 88);
      if (this)
      {
        this = CA::Render::Context::update_backdrop_namespaces_locked(this, *(v4 + 576));
      }

      v3 = v3[1];
    }

    while (v3);
  }

  return this;
}

void CA::Render::Context::set_visible_locked(CA::Render::Context *this, int a2)
{
  if (*(this + 88) == a2)
  {
    return;
  }

  *(this + 88) = a2;
  v4 = *(this + 57);
  if (!v4)
  {
    v5 = 0;
    if (a2)
    {
      goto LABEL_15;
    }

LABEL_8:
    os_unfair_lock_lock(&CA::Render::BackdropState::_list_lock);
    v6 = CA::Render::BackdropState::_list;
    v7 = qword_1EA84E8A0;
    if (CA::Render::BackdropState::_list != qword_1EA84E8A0)
    {
      do
      {
        v8 = *v6;
        if (*(*v6 + 8))
        {
          os_unfair_lock_lock((v8 + 52));
          if (*(v8 + 16) == this)
          {
            *(v8 + 153) = 1;
          }

          os_unfair_lock_unlock((v8 + 52));
        }

        v6 += 8;
      }

      while (v6 != v7);
    }

    os_unfair_lock_unlock(&CA::Render::BackdropState::_list_lock);
    goto LABEL_15;
  }

  v5 = 0;
  do
  {
    v5 = x_list_prepend(v5, *v4);
    v4 = v4[1];
  }

  while (v4);
  if ((a2 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_15:
  os_unfair_lock_lock(&CA::Render::Context::_image_queues_lock);
  v10 = *(this + 45);
  v9 = *(this + 46);
  while (v10 != v9)
  {
    v11 = *v10++;
    CA::Render::ImageQueue::set_visible(v11, a2);
  }

  os_unfair_lock_unlock(&CA::Render::Context::_image_queues_lock);
  for (; v5; v5 = x_list_remove_head(v5))
  {
    v12 = *(*v5 + 88);
    if (v12)
    {
      CA::Render::Context::set_visible_locked(v12, a2);
    }
  }
}

void CA::Render::Context::set_display_mask(CA::Render::Context *this, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 160) != a2)
  {
    *(this + 160) = a2;
    if (*(this + 65))
    {
      *(this + 3) |= 0x1000u;
    }
  }

  if ((*(this + 13) & 0x10) != 0)
  {
    v3 = *(this + 65);
    v6 = *MEMORY[0x1E69E99E0];
    v7 = a2;
    *&v5.msgh_bits = 19;
    v5.msgh_voucher_port = 0;
    v5.msgh_id = 40400;
    v5.msgh_remote_port = v3;
    v5.msgh_local_port = 0;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v5);
    }

    v4 = mach_msg(&v5, 17, 0x24u, 0, 0, 0, 0);
    if ((v4 - 268435459) > 1)
    {
      if (!v4)
      {
        *(this + 3) &= ~0x1000u;
      }
    }

    else
    {
      if ((v5.msgh_bits & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x1E69E9A60], v5.msgh_local_port);
      }

      mach_msg_destroy(&v5);
    }
  }
}

void CA::Render::Context::set_display_id(CA::Render::Context *this, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 161) != a2)
  {
    *(this + 161) = a2;
    if (*(this + 65))
    {
      *(this + 3) |= 0x1000000u;
    }
  }

  if (*(this + 15))
  {
    v3 = *(this + 65);
    v6 = *MEMORY[0x1E69E99E0];
    v7 = a2;
    *&v5.msgh_bits = 19;
    v5.msgh_voucher_port = 0;
    v5.msgh_id = 40401;
    v5.msgh_remote_port = v3;
    v5.msgh_local_port = 0;
    if (MEMORY[0x1EEE9AC50])
    {
      voucher_mach_msg_set(&v5);
    }

    v4 = mach_msg(&v5, 17, 0x24u, 0, 0, 0, 0);
    if ((v4 - 268435459) > 1)
    {
      if (!v4)
      {
        *(this + 3) &= ~0x1000000u;
      }
    }

    else
    {
      if ((v5.msgh_bits & 0x1F00) == 0x1100)
      {
        mach_port_deallocate(*MEMORY[0x1E69E9A60], v5.msgh_local_port);
      }

      mach_msg_destroy(&v5);
    }
  }
}

uint64_t CA::Render::Layer::set_timing(uint64_t this, CA::Render::Timing *a2)
{
  v2 = a2;
  if (a2 || *(this + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(this);
    this = v3[1];
    if (this != v2)
    {
      if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
      {
        this = (*(*this + 16))(this);
      }

      if (v2)
      {
        v4 = (v2 + 8);
        if (!atomic_fetch_add(v2 + 2, 1u))
        {
          v2 = 0;
          atomic_fetch_add(v4, 0xFFFFFFFF);
        }
      }

      v3[1] = v2;
    }
  }

  return this;
}

atomic_uint *CA::Render::Array::decode(CA::Render::Decoder *a1, uint64_t a2, int *a3, int a4)
{
  v8 = CA::Render::Decoder::decode_int32(a1);
  LODWORD(v9) = CA::Render::Decoder::decode_int32(a1);
  if (v9 > 0x100000)
  {
    CA::Render::Decoder::set_fatal_error(a1, "%s - suspiciously large array: %u");
    return 0;
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v10 = malloc_type_zone_malloc(malloc_zone, (8 * v9 + 24), 0xE426044uLL);
  v11 = v10;
  if (v10)
  {
    if ((v8 & 1) != a4)
    {
      CA::Render::Decoder::set_fatal_error(a1, "%s - array is %sretained, but %sretained is expected");
      return 0;
    }

    *(v10 + 2) = 1;
    ++dword_1ED4EAA3C;
    *v10 = &unk_1EF2031B0;
    *(v10 + 3) = (v8 << 8) | 1;
    *(v10 + 4) = v9;
    if (v8)
    {
      if (v9)
      {
        v17 = v9;
        v18 = 6;
        do
        {
          *&v11[v18] = CA::Render::Decoder::decode_size_t(a1);
          v18 += 2;
          --v17;
        }

        while (v17);
      }

      goto LABEL_28;
    }

    if (!v9)
    {
      goto LABEL_20;
    }

    v13 = 0;
    v14 = (v10 + 24);
    v9 = v9;
    do
    {
      v15 = CA::Render::Decoder::decode_object(a1, 0);
      *v14++ = v15;
      v13 |= v15 == 0;
      --v9;
    }

    while (v9);
    if (v13)
    {
      v16 = 1;
    }

    else
    {
LABEL_20:
      if (CA::Render::Array::check_types(v11, a2, a3))
      {
LABEL_28:
        CA::Render::Decoder::decode_sanity_check(a1, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-array.cpp", 215);
        return v11;
      }

      v16 = 0;
    }

    if (a3)
    {
      v19 = *a3;
    }

    else
    {
      v19 = -1;
    }

    CA::Render::Decoder::set_fatal_error(a1, "%s - null_pointer? %d, n_types %zu, types[0] = %d", "decode", v16, a2, v19);
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 16))(v11);
    }

    v11 = 0;
    goto LABEL_28;
  }

  return v11;
}

uint64_t CA::Render::Layer::set_sublayer_transform(uint64_t this, CA::Render::Vector *a2)
{
  v2 = a2;
  if (a2 || *(this + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(this);
    this = v3[3];
    if (this != v2)
    {
      if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
      {
        this = (*(*this + 16))(this);
      }

      if (v2)
      {
        v4 = (v2 + 8);
        if (!atomic_fetch_add(v2 + 2, 1u))
        {
          v2 = 0;
          atomic_fetch_add(v4, 0xFFFFFFFF);
        }
      }

      v3[3] = v2;
    }
  }

  return this;
}

uint64_t CA::Render::Layer::set_contents_center(uint64_t this, CA::Render::Vector *a2)
{
  v2 = a2;
  if (a2 || *(this + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(this);
    this = v3[6];
    if (this != v2)
    {
      if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
      {
        this = (*(*this + 16))(this);
      }

      if (v2)
      {
        v4 = (v2 + 8);
        if (!atomic_fetch_add(v2 + 2, 1u))
        {
          v2 = 0;
          atomic_fetch_add(v4, 0xFFFFFFFF);
        }
      }

      v3[6] = v2;
    }
  }

  return this;
}

uint64_t CA::Render::Handle::set_current_layer(uint64_t this, CA::Render::Layer *a2)
{
  v2 = *(this + 16);
  if (v2 != a2)
  {
    *(this + 16) = a2;
    this = CA::Render::Handle::update_container_state(this, a2);
    a2 = v2;
  }

  if (a2 && atomic_fetch_add(a2 + 2, 0xFFFFFFFF) == 1)
  {
    v3 = *(*a2 + 16);

    return v3(a2);
  }

  return this;
}

uint64_t CA::Render::Layer::set_corner_contents_center(uint64_t this, CA::Render::Vector *a2)
{
  v2 = a2;
  if (a2 || *(this + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(this);
    this = v3[8];
    if (this != v2)
    {
      if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
      {
        this = (*(*this + 16))(this);
      }

      if (v2)
      {
        v4 = (v2 + 8);
        if (!atomic_fetch_add(v2 + 2, 1u))
        {
          v2 = 0;
          atomic_fetch_add(v4, 0xFFFFFFFF);
        }
      }

      v3[8] = v2;
    }
  }

  return this;
}

uint64_t CA::Render::Handle::update_container_state(uint64_t this, const double *a2)
{
  v2 = *(this + 16);
  if (v2)
  {
    if ((*(this + 13) & 1) != 0 || *(this + 56) || *(this + 64))
    {
      v3 = *(v2 + 12) | 0x1000;
    }

    else
    {
      v3 = *(v2 + 12) & 0xFFFFEFFF;
    }

    *(v2 + 12) = v3;
    if ((*(this + 13) & 0x40) != 0)
    {
      *(*(this + 16) + 12) |= 0x1000u;
      *(this + 12) &= ~0x4000u;
    }

    v4 = *(this + 16);
    v5 = *(v4 + 12);
    if ((v5 & 0x1000) != 0 || (this = CA::Render::Layer::is_containerable(*(this + 16), a2), !this))
    {
      v6 = v5 & 0xFFFFF7FF;
    }

    else
    {
      v6 = v5 | 0x800;
    }

    *(v4 + 12) = v6;
  }

  return this;
}

uint64_t CA::Render::Layer::set_background_filters(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (a2 || *(result + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(result);
    result = v3[13];
    if (result != v2)
    {
      if (result && atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
      {
        result = (*(*result + 16))(result);
      }

      if (v2)
      {
        v4 = (v2 + 8);
        if (!atomic_fetch_add((v2 + 8), 1u))
        {
          v2 = 0;
          atomic_fetch_add(v4, 0xFFFFFFFF);
        }
      }

      v3[13] = v2;
    }
  }

  return result;
}

BOOL CA::Render::Layer::sublayer_allows_containerization(CA::Render::Layer *this, CA::Render::Layer *a2)
{
  if ((*(a2 + 13) & 9) != 0)
  {
    return 0;
  }

  v4 = *(this + 5);
  if ((v4 & 0x10000000000) != 0)
  {
    if ((*(a2 + 45) & 1) == 0)
    {
      return 0;
    }

    v5 = *(a2 + 17);
    if (v5)
    {
      if (*(v5 + 16))
      {
        return 0;
      }

      v15 = *(v5 + 168);
    }

    else
    {
      v16 = 0.0;
      if ((*(a2 + 50) & 0x40) == 0)
      {
        v16 = 0.5;
      }

      v15 = vdupq_lane_s64(*&v16, 0);
    }

    v17 = *(a2 + 88);
    v18 = *(this + 88);
    v19 = vorrq_s8(vcltzq_f64(v17), vclezq_f64(v18));
    if ((vorrq_s8(vdupq_laneq_s64(v19, 1), v19).u64[0] & 0x8000000000000000) != 0)
    {
      return 0;
    }

    v20 = vmlsq_f64(*(a2 + 56), v17, v15);
    v21 = vandq_s8(vcgeq_f64(vaddq_f64(*(this + 72), v18), vaddq_f64(v20, v17)), vcgeq_f64(v20, *(this + 72)));
    if ((vandq_s8(vdupq_laneq_s64(v21, 1), v21).u64[0] & 0x8000000000000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    v5 = *(a2 + 17);
  }

  if (!v5)
  {
LABEL_15:
    v10 = *(a2 + 18);
    if (!v10)
    {
      return 1;
    }

    v11 = *(v10 + 16);
    if (!v11)
    {
      return 1;
    }

    v12 = 8 * v11;
    v13 = v10 + 24;
    result = 1;
    while (1)
    {
      v14 = *(*v13 + 12);
      if ((v14 & 0x40000) != 0 || (v14 & 0x1000) != 0 && (v4 & 0x10000000000) != 0)
      {
        break;
      }

      v13 += 8;
      v12 -= 8;
      if (!v12)
      {
        return result;
      }
    }

    return 0;
  }

  if (*(v5 + 88) || *(v5 + 104))
  {
    return 0;
  }

  v6 = *(v5 + 16);
  if (!v6 || ((v7 = *(v6 + 16), v8 = (v6 + 24), v7 >= 0x10) ? (v9 = v8) : (v9 = &CA::Mat4Impl::mat4_identity_double), result = CA::Mat4Impl::mat4_is_affine(v9, a2)))
  {
    if (*(v5 + 192) == 0.0 && *(v5 + 184) == 0.0)
    {
      goto LABEL_15;
    }

    return 0;
  }

  return result;
}

uint64_t CA::Render::Layer::set_mesh_transform(uint64_t this, os_unfair_lock_s *a2)
{
  v2 = this;
  if (a2 && (v3 = a2, this = CA::Render::MeshTransform::validate(a2), (this & 1) != 0))
  {
    v4 = 0;
  }

  else
  {
    if (!*(v2 + 17))
    {
      return this;
    }

    v3 = 0;
    v4 = 1;
  }

  v5 = CA::Render::Layer::ensure_ext(v2);
  this = v5[14];
  if (this != v3)
  {
    if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
    {
      this = (*(*this + 16))(this);
    }

    if (v4)
    {
      v3 = 0;
    }

    else
    {
      v6 = &v3[2];
      if (!atomic_fetch_add(&v3[2], 1u))
      {
        v3 = 0;
        atomic_fetch_add(v6, 0xFFFFFFFF);
      }
    }

    v5[14] = v3;
  }

  return this;
}

uint64_t CA::Render::Context::lookup_object(uint64_t a1, int a2, uint64_t a3, int a4, int a5, int *a6)
{
  v6 = ((a3 ^ 0x8000000000000000) + ~(a3 << 32)) ^ (((a3 ^ 0x8000000000000000) + ~(a3 << 32)) >> 22);
  v7 = 9 * ((v6 + ~(v6 << 13)) ^ ((v6 + ~(v6 << 13)) >> 8));
  v8 = (v7 ^ (v7 >> 15)) + ~((v7 ^ (v7 >> 15)) << 27);
  v9 = (a1 + 8 * (((v8 >> 31) ^ v8) & a2));
  do
  {
    v9 = *v9;
    if (!v9)
    {
      if (!a6)
      {
        return 0;
      }

      result = 0;
      v12 = 1;
      goto LABEL_23;
    }
  }

  while (v9[1] != (a3 ^ 0x8000000000000000));
  if (a4 && *(v9 + 6) != a4)
  {
    if (!a6)
    {
      return 0;
    }

    result = 0;
    v12 = 2;
    goto LABEL_23;
  }

  result = v9[2];
  if (!result)
  {
    if (!a6)
    {
      return 0;
    }

    result = 0;
    v12 = 3;
    goto LABEL_23;
  }

  v11 = *(result + 12);
  if (v11 != 22)
  {
    if (!a5 || v11 == a5)
    {
      return result;
    }

    if (!a6)
    {
      return 0;
    }

    result = 0;
    v12 = 5;
LABEL_23:
    *a6 = v12;
    return result;
  }

  if (!a5 || a5 == 30)
  {
    return *(result + 16);
  }

  if (a6)
  {
    result = 0;
    v12 = 4;
    goto LABEL_23;
  }

  return 0;
}

uint64_t CA::Render::Layer::set_identifiers(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (a2 || *(result + 136))
  {
    v3 = CA::Render::Layer::ensure_ext(result);
    result = v3[18];
    if (result != v2)
    {
      if (result && atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
      {
        result = (*(*result + 16))(result);
      }

      if (v2)
      {
        v4 = (v2 + 8);
        if (!atomic_fetch_add((v2 + 8), 1u))
        {
          v2 = 0;
          atomic_fetch_add(v4, 0xFFFFFFFF);
        }
      }

      v3[18] = v2;
    }
  }

  return result;
}

void CA::Render::Context::add_begin_time(os_unfair_lock_s *this, double a2, double a3)
{
  os_unfair_lock_lock(this + 128);
  v6 = *&this[132]._os_unfair_lock_opaque;
  v7 = *&this[130]._os_unfair_lock_opaque;
  if (0xAAAAAAAAAAAAAAABLL * (v6 - v7) < 0x21)
  {
    if (v7 != v6)
    {
      do
      {
        v8 = v7[1];
        v9 = COERCE_DOUBLE(atomic_load(&CA::Render::Context::_begin_time_threshold));
        if (v8 <= v9)
        {
          v11 = *&this[132]._os_unfair_lock_opaque;
          v12 = v11 - (v7 + 3);
          if (v11 != v7 + 3)
          {
            memmove(v7, v7 + 3, v11 - (v7 + 3));
          }

          v10 = (v7 + v12);
          *&this[132]._os_unfair_lock_opaque = v7 + v12;
        }

        else
        {
          v7 += 3;
          v10 = *&this[132]._os_unfair_lock_opaque;
        }
      }

      while (v7 != v10);
    }
  }

  else
  {
    *&this[132]._os_unfair_lock_opaque = v7;
  }

  v13 = mach_absolute_time();
  v14 = CATimeWithHostTime(v13);
  v15 = *&this[132]._os_unfair_lock_opaque;
  v16 = *&this[134]._os_unfair_lock_opaque;
  if (v15 >= v16)
  {
    v18 = *&this[130]._os_unfair_lock_opaque;
    v19 = v15 - v18;
    v20 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v18) >> 3);
    v21 = v20 + 1;
    if (v20 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v22 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v18) >> 3);
    if (2 * v22 > v21)
    {
      v21 = 2 * v22;
    }

    if (v22 >= 0x555555555555555)
    {
      v23 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v23 = v21;
    }

    if (v23)
    {
      if (v23 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<CA::Display::DisplayEDRState *>::__throw_length_error[abi:nn200100]();
    }

    v24 = 24 * v20;
    *v24 = a2;
    *(v24 + 8) = v14;
    *(v24 + 16) = a3;
    v17 = 24 * v20 + 24;
    v25 = 24 * v20 - v19;
    memcpy((v24 - v19), v18, v19);
    *&this[130]._os_unfair_lock_opaque = v25;
    *&this[132]._os_unfair_lock_opaque = v17;
    *&this[134]._os_unfair_lock_opaque = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *v15 = a2;
    v15[1] = v14;
    v17 = (v15 + 3);
    v15[2] = a3;
  }

  *&this[132]._os_unfair_lock_opaque = v17;

  os_unfair_lock_unlock(this + 128);
}

void CA::Render::Context::mark_changed(unint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5)
{
  v6[3] = *MEMORY[0x1E69E9840];
  ++*(a1 + 44);
  if ((*(a1 + 584) & 0x40) == 0)
  {
    v6[0] = a2;
    if (a2)
    {
      *&a4 = -1.0;
    }

    BYTE1(v6[0]) = a3;
    v6[1] = a4;
    v6[2] = a5;
    CA::Render::post_notification(0, a1, v6, 0);
  }
}

uint64_t CA::WindowServer::Server::context_changed(uint64_t this, CA::Render::Object *a2, double *a3, void *a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (!*(this + 448))
  {
    if (!a3 || (*a3 & 1) != 0 || (v6 = a3[1], v6 <= 0.0))
    {
      v10 = 0.0;
      v11 = vdupq_n_s64(4uLL);
    }

    else
    {
      if (*(a3 + 16) == 1)
      {
        v7 = (*(**(a2 + 12) + 776))(*(a2 + 12));
        v6 = a3[1] + ((*(**(a2 + 12) + 784))() + -0.25) * v7;
        a3[1] = v6;
      }

      v10 = v6;
      v11 = vdupq_n_s64(4uLL);
    }

    this = (*(*a2 + 176))(a2, &v10, 0.0);
    if ((BYTE7(xmmword_1ED4E97EC) & 1) == 0)
    {
      this = CA::WindowServer::Display::benchmark_mode(0, v8);
      if (a3)
      {
        if ((this & 1) == 0 && *a3 == 1)
        {
          if (BYTE8(xmmword_1ED4E97EC))
          {
            v9 = 0;
          }

          else
          {
            v9 = *(a3 + 1);
          }

          return (*(*a2 + 464))(a2, v9 & 1);
        }
      }
    }
  }

  return this;
}

CA::Render::PresentationModifier *CA::Render::PresentationModifier::PresentationModifier(CA::Render::PresentationModifier *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 44;
  ++dword_1ED4EAAE8;
  *v4 = &unk_1EF203050;
  *(this + 2) = CA::Render::Decoder::decode_object(a2, 52);
  *(this + 3) = CA::Render::Decoder::decode_size_t(a2);
  *(this + 4) = CA::Render::Decoder::decode_keypath(a2);
  *(this + 10) = CA::Render::Decoder::decode_int32(a2);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-animation.cpp", 3272);
  return this;
}

_DWORD *CA::Render::Shmem::decode(CA::Render::Shmem *this, CA::Render::Decoder *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = CA::Render::Decoder::decode_int32(this);
  if ((v3 & 3) != 0)
  {
    v4 = CA::Render::Decoder::decode_size_t(this);
    CA::Render::Decoder::decode_size_t(this);
    v18[0] = 0;
    v5 = CA::Render::Decoder::decode_port(this, 17, v18);
    if (!v5)
    {
      CA::Render::Decoder::set_fatal_error(this, "Shmem port is MACH_PORT_NULL!");
      goto LABEL_12;
    }

    v6 = v5;
    v7 = v18[0];
    v8 = CA::Render::Shmem::new_shmem(v5, v4, v18[0], v3);
    if (!v8 && v7)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v6);
LABEL_12:
      v8 = 0;
    }
  }

  else
  {
    v17 = 0;
    *v18 = 0;
    v16 = 0;
    v9 = CA::Render::Decoder::decode_data_async(this, v18, &v17, &v16);
    if (!v9)
    {
      CA::Render::Decoder::set_fatal_error(this, "Failed to decode shmem data");
      goto LABEL_12;
    }

    v11 = v9;
    v12 = v17;
    v13 = *v18;
    v14 = v16;
    v8 = CA::Render::Shmem::new_shmem(v9, *v18, v3, v17, v16, v10);
    if (!v8)
    {
      CA::Render::Decoder::set_fatal_error(this, "Failed to decode shmem from data ptr: %p, len: %zu", v11, v13);
      if (v12)
      {
        v12(v11, v14);
      }

      goto LABEL_12;
    }
  }

  CA::Render::Decoder::decode_sanity_check(this, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-shmem.cpp", 566);
  return v8;
}

uint64_t CA::Render::Animation::was_added(uint64_t this, Handle *a2)
{
  v2 = *(this + 12);
  if ((v2 & 0x1000) == 0)
  {
    if ((v2 & 0x2000) == 0)
    {
      return this;
    }

LABEL_5:
    a2[13] = (a2[13] | 0x10);
    return this;
  }

  a2[13] = (a2[13] | 8);
  if ((*(this + 12) & 0x2000) != 0)
  {
    goto LABEL_5;
  }

  return this;
}

void *CA::Render::encode_invalidation(CA::Render *this, const CA::Render::Object *a2, CA::Render *a3, void *a4)
{
  v5 = a2;
  if (CA::Render::Encoder::initialize_render_id_slide(void)::once != -1)
  {
    dispatch_once(&CA::Render::Encoder::initialize_render_id_slide(void)::once, &__block_literal_global_14306);
  }

  if (this)
  {
    v7 = (this + CA::Render::_render_id_slide);
  }

  else
  {
    v7 = 0;
  }

  return CA::Render::encode_delete_object(a3, v7, v5);
}

uint64_t CA::Render::Decoder::decode_keypath(CA::Render::Decoder *this)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  if ((*(this + 18) & 1) == 0)
  {
    v2 = CA::Render::Decoder::decode_int16(this);
    v3 = v2;
    if (v2 >= 0x401)
    {
      v5 = malloc_type_malloc(4 * v2, 0xFAFB1BECuLL);
      if (!v5)
      {
        CA::Render::Decoder::set_fatal_error(this, "%s - atoms = NULL", "decode_keypath");
        v12[0] = 0;
        return v12[0];
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v2);
      v5 = (v12 - v4);
      bzero(v12 - v4, v6);
      if (!v3)
      {
        CA::Render::key_path_set_atoms(v12, v3, v5, v7);
        return v12[0];
      }
    }

    v8 = 0;
    do
    {
      if (CA::Render::Decoder::decode_int8(this))
      {
        v9 = CA::Render::Decoder::decode_int32(this) | 0x40000000;
      }

      else
      {
        v9 = CA::Render::Decoder::decode_atom(this);
      }

      v5[v8] = v9;
      v8 = (v8 + 1);
    }

    while (v3 != v8);
    CA::Render::key_path_set_atoms(v12, v3, v5, v10);
    if (v3 > 0x400)
    {
      free(v5);
    }
  }

  return v12[0];
}

uint64_t CA::Render::Decoder::decode_int16(CA::Render::Decoder *this)
{
  v1 = *(this + 4);
  v2 = *(this + 5);
  v3 = v1 + 1;
  if (v1 + 1 <= v2)
  {
    v4 = *v1;
    *(this + 4) = v3;
  }

  else
  {
    CA::Render::Decoder::set_fatal_error(this, "%s - _buffer_point = %p, _buffer_end = %p", "decode_int16", v1, v2);
    return 0;
  }

  return v4;
}

CA::Render::Animation *CA::Render::Animation::Animation(CA::Render::Animation *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *v4 = &unk_1EF202A30;
  *(v4 + 3) = 0;
  *(v4 + 8) = 0;
  *(this + 5) = CA::Render::Decoder::decode_object(a2, 58);
  *(this + 6) = CA::Render::Decoder::decode_object(a2, 62);
  CFStringGetTypeID();
  *(this + 7) = CA::Render::Decoder::decode_cfobject(a2);
  *(this + 8) = 0;
  *(this + 18) = CA::Render::Decoder::decode_int32(a2);
  *(this + 84) = 0;
  *(this + 76) = 0;
  *(this + 6) = CA::Render::Decoder::decode_int32(a2);
  *(this + 7) = CA::Render::Decoder::decode_int32(a2);
  *(this + 8) = CA::Render::Decoder::decode_int32(a2);
  *(this + 22) = CA::Render::Decoder::decode_int32(a2);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-animation.cpp", 2538);
  v5 = *(this + 7);
  if (v5)
  {
    *(this + 8) = CFHash(v5);
  }

  return this;
}

UInt8 *CA::Render::Decoder::decode_atom(CA::Render::Decoder *this)
{
  v8 = *MEMORY[0x1E69E9840];
  if (*(this + 18))
  {
    return 0;
  }

  v2 = CA::Render::Decoder::decode_int8(this);
  v3 = v2;
  if (v2 > 0xFD)
  {
    if (v2 == 254)
    {
      return CA::Render::Decoder::decode_int16(this);
    }

    numBytes = 0;
    v3 = CA::Render::Decoder::decode_data(this, v7, 0x100uLL, &numBytes, 0x400uLL);
    if (!v3)
    {
      CA::Render::Decoder::set_fatal_error(this, "%s - ptr = NULL", "decode_atom");
      return v3;
    }

    v4 = CFStringCreateWithBytes(*MEMORY[0x1E695E490], v3, numBytes, 0x8000100u, 1u);
    if (v3 != v7)
    {
      free(v3);
    }

    if (v4)
    {
      v3 = CAInternAtom(v4, 1);
      CFRelease(v4);
      return v3;
    }

    CA::Render::Decoder::set_fatal_error(this, "%s - string = NULL", "decode_atom");
    return 0;
  }

  return v3;
}

CA::Render::PropertyAnimation *CA::Render::PropertyAnimation::PropertyAnimation(CA::Render::PropertyAnimation *this, CA::Render::Decoder *a2)
{
  *CA::Render::Animation::Animation(this, a2) = &unk_1EF202AE0;
  *(this + 12) = CA::Render::Decoder::decode_keypath(a2);
  *(this + 13) = CA::Render::Decoder::decode_object(a2, 18);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-animation.cpp", 2559);
  return this;
}

CA::Render::BasicAnimation0 *CA::Render::BasicAnimation0::BasicAnimation0(CA::Render::BasicAnimation0 *this, CA::Render::Decoder *a2)
{
  *CA::Render::PropertyAnimation::PropertyAnimation(this, a2) = &unk_1EF202BA8;
  *(this + 14) = CA::Render::Decoder::decode_object(a2, 0);
  *(this + 15) = CA::Render::Decoder::decode_object(a2, 0);
  *(this + 16) = CA::Render::Decoder::decode_object(a2, 0);
  *(this + 17) = CA::Render::Decoder::decode_int64(a2);
  *(this + 18) = CA::Render::Decoder::decode_int64(a2);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-animation.cpp", 2606);
  return this;
}

CA::Render::BasicAnimation *CA::Render::BasicAnimation::BasicAnimation(CA::Render::BasicAnimation *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::BasicAnimation0::BasicAnimation0(this, a2);
  *(v4 + 12) = 5;
  ++dword_1ED4EAA4C;
  *v4 = &unk_1EF202EB8;
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-animation.cpp", 2620);
  return this;
}

CA::Render::Timing *CA::Render::Timing::Timing(CA::Render::Timing *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 58;
  ++dword_1ED4EAB20;
  *v4 = &unk_1EF2015A8;
  *(this + 4) = CA::Render::Decoder::decode_int32(a2);
  *(this + 3) = CA::Render::Decoder::decode_int64(a2);
  *(this + 4) = CA::Render::Decoder::decode_int64(a2);
  *(this + 5) = CA::Render::Decoder::decode_int64(a2);
  *(this + 6) = CA::Render::Decoder::decode_int64(a2);
  *(this + 7) = CA::Render::Decoder::decode_int64(a2);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-timing.cpp", 402);
  return this;
}

_DWORD *CA::Render::Vector::decode(CA::Render::Vector *this, CA::Render::Decoder *a2)
{
  v3 = CA::Render::Decoder::decode_int32(this);
  v4 = 8 * v3;
  if (v3 < 0x7FFFE)
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v6 = malloc_type_zone_malloc(malloc_zone, v4 + 24, 0x249D216FuLL);
    v5 = v6;
    if (v6)
    {
      v6[2] = 1;
      v6[3] = 62;
      ++dword_1ED4EAB30;
      *v6 = &unk_1EF202890;
      v6[4] = v3;
      CA::Render::Decoder::decode_bytes(this, v6 + 6, v4);
      CA::Render::Decoder::decode_sanity_check(this, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-vector.cpp", 287);
    }
  }

  else
  {
    CA::Render::Decoder::set_fatal_error(this, "%s - suspiciously large vector size: %zu", "decode", v4 + 24);
    return 0;
  }

  return v5;
}

__CFArray *CA::Render::Decoder::decode_cfobject(CA::Render::Decoder *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v49 = *MEMORY[0x1E69E9840];
  if (*(v1 + 18))
  {
    return 0;
  }

  v3 = v2;
  v4 = v1;
  switch(CA::Render::Decoder::decode_int8(v1))
  {
    case 1u:
      goto LABEL_55;
    case 2u:
      if (!CA::Render::Decoder::decode_int8(v4))
      {
        return 0;
      }

      bzero(&context, 0x1000uLL);
      length = 0;
      v5 = CA::Render::Decoder::decode_data(v4, &context, 0x1000uLL, &length, 0);
      if (!v5)
      {
        goto LABEL_76;
      }

      v6 = v5;
      v7 = length - 1;
      if ((length - 1) >= 0xFFF)
      {
        v7 = 4095;
      }

      if (length)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      v5[v8] = 0;
      Mutable = CFStringCreateWithCString(*MEMORY[0x1E695E490], v5, 0x8000100u);
      if (v6 == &context)
      {
        goto LABEL_82;
      }

      v10 = v6;
      goto LABEL_17;
    case 3u:
      v25 = CA::Render::Decoder::decode_int8(v4);
      if (v25 == 1)
      {
        context.version = CA::Render::Decoder::decode_int64(v4);
        v26 = *MEMORY[0x1E695E490];
        v27 = kCFNumberLongLongType;
      }

      else
      {
        if (v25)
        {
          CA::Render::Decoder::set_fatal_error(v4, "%s - wrong type = %u");
          return 0;
        }

        context.version = CA::Render::Decoder::decode_int64(v4);
        v26 = *MEMORY[0x1E695E490];
        v27 = kCFNumberDoubleType;
      }

      v30 = CFNumberCreate(v26, v27, &context);
      goto LABEL_81;
    case 4u:
      v28 = CA::Render::Decoder::decode_int8(v4);
      v29 = MEMORY[0x1E695E4D0];
      if (!v28)
      {
        v29 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_56;
    case 5u:
      v46 = 0;
      length = 0;
      v45 = 0;
      v16 = CA::Render::Decoder::decode_data_async(v4, &length, &v46, &v45);
      v17 = length;
      if (length)
      {
        v18 = v16;
        if (!v16)
        {
          CA::Render::Decoder::set_fatal_error(v4, "%s - data = NULL, data_len = %zu");
          goto LABEL_76;
        }

        if (v46)
        {
          context.version = 0;
          memset(&context.retain, 0, 40);
          context.info = v45;
          context.deallocate = v46;
          context.preferredSize = 0;
          v19 = *MEMORY[0x1E695E480];
          v20 = CFAllocatorCreate(*MEMORY[0x1E695E480], &context);
          Mutable = CFDataCreateWithBytesNoCopy(v19, v18, v17, v20);
          CFRelease(v20);
          goto LABEL_82;
        }

        v35 = *MEMORY[0x1E695E490];
        v36 = v18;
        v37 = length;
      }

      else
      {
        v35 = *MEMORY[0x1E695E490];
        v36 = 0;
        v37 = 0;
      }

      v30 = CFDataCreate(v35, v36, v37);
      goto LABEL_81;
    case 6u:
      v31 = CA::Render::Decoder::decode_size_t(v4);
      if (!v31)
      {
        v30 = CFArrayCreate(0, 0, 0, 0);
        goto LABEL_81;
      }

      v32 = v31;
      if (v31 > 0x8000)
      {
        CA::Render::Decoder::set_fatal_error(v4, "%s - array entries = %zu");
        return 0;
      }

      Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      do
      {
        v39 = CA::Render::Decoder::decode_cfobject(v4, 0);
        if (v39)
        {
          v40 = v39;
          CFArrayAppendValue(Mutable, v39);
          CFRelease(v40);
        }

        else
        {
          CA::Render::Decoder::set_fatal_error(v4, "%s - value = NULL", "decode_cfobject");
        }

        --v32;
      }

      while (v32);
      goto LABEL_82;
    case 7u:
      v33 = CA::Render::Decoder::decode_size_t(v4);
      if (!v33)
      {
        v30 = CFDictionaryCreate(0, 0, 0, 0, 0, 0);
LABEL_81:
        Mutable = v30;
        goto LABEL_82;
      }

      v34 = v33;
      if (v33 > 0x8000)
      {
        CA::Render::Decoder::set_fatal_error(v4, "%s - dicitionary entries = %zu");
        return 0;
      }

      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      do
      {
        v41 = CA::Render::Decoder::decode_cfobject(v4, 0);
        v42 = CA::Render::Decoder::decode_cfobject(v4, 0);
        v43 = v42;
        if (v41)
        {
          v42 = v41;
          if (v43)
          {
            CFDictionarySetValue(Mutable, v41, v43);
            CFRelease(v41);
            CFRelease(v43);
            goto LABEL_71;
          }

LABEL_69:
          CFRelease(v42);
          CA::Render::Decoder::set_fatal_error(v4, "%s - key = %p, value = %p", "decode_cfobject", v41, v43);
          goto LABEL_71;
        }

        if (v42)
        {
          goto LABEL_69;
        }

        CA::Render::Decoder::set_fatal_error(v4, "%s - key = %p, value = %p", "decode_cfobject", 0, 0);
LABEL_71:
        --v34;
      }

      while (v34);
      if ((*(v4 + 18) & 1) == 0)
      {
        goto LABEL_82;
      }

LABEL_85:
      CFRelease(Mutable);
      return 0;
    case 8u:
      v30 = CA::Render::Decoder::decode_colorspace(v4);
      goto LABEL_81;
    case 9u:
      v22 = CA::Render::Decoder::decode_int8(v4);
      if (v22 == 23)
      {
        v21 = CA::Render::Decoder::decode_object(v4, 23);
        Mutable = CA::Render::Image::copy_cgimage(v21);
        if (!v21)
        {
          goto LABEL_82;
        }

        goto LABEL_47;
      }

      v23 = v22;
      if (v22 == 57)
      {
LABEL_26:
        v24 = CA::Render::Decoder::decode_object(v4, 57);
        v21 = v24;
        Mutable = *(v24 + 128);
        if (Mutable)
        {
          CFRetain(*(v24 + 128));
        }

LABEL_47:
        if (atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v21 + 16))(v21);
        }

        goto LABEL_82;
      }

      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v38 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        LODWORD(context.version) = 67109120;
        HIDWORD(context.version) = v23;
        _os_log_error_impl(&dword_183AA6000, v38, OS_LOG_TYPE_ERROR, "decode kCACFTypeImage got unsupported type %d", &context, 8u);
      }

LABEL_55:
      v29 = MEMORY[0x1E695E738];
LABEL_56:
      Mutable = *v29;
      goto LABEL_82;
    case 0xAu:
      memset(&context, 0, 20);
      CA::Render::Decoder::decode_bytes(v4, &context, 0x14uLL);
      CAGetColorSpace(35);
      v30 = CGColorCreateWithContentHeadroom();
      goto LABEL_81;
    case 0xBu:
      goto LABEL_26;
    case 0xCu:
      v11 = CA::Render::Decoder::decode_int8(v4);
      if (v11 >= 8)
      {
        CA::Render::Decoder::set_fatal_error(v4, "%s - incorrect type %d");
        return 0;
      }

      v12 = off_1E6DEBBC0[v11];
      v13 = qword_183E21E28[v11];
      length = 0;
      v14 = CA::Render::Decoder::decode_data(v4, &context, 0xA0uLL, &length, 0xA0uLL);
      if (v14)
      {
        v15 = v14;
        if (v13 == length)
        {
          Mutable = [objc_alloc(MEMORY[0x1E696B098]) initWithBytes:v14 objCType:v12];
          if (v15 != &context)
          {
            v10 = v15;
LABEL_17:
            free(v10);
          }

LABEL_82:
          if (v3 && Mutable && CFGetTypeID(Mutable) != v3)
          {
            goto LABEL_85;
          }

          return Mutable;
        }

        CA::Render::Decoder::set_fatal_error(v4, "%s - size mismatch %zu - %zu", "decode_ns_value", v13, length);
        if (v15 != &context)
        {
          free(v15);
        }
      }

      else
      {
        CA::Render::Decoder::set_fatal_error(v4, "%s - data ptr = NULL");
      }

LABEL_76:
      Mutable = 0;
      goto LABEL_82;
    case 0xDu:
      v21 = CA::Render::Decoder::decode_object(v4, 38);
      Mutable = CA::Render::Path::cg_path(v21);
      CGPathRetain(Mutable);
      if (!v21)
      {
        goto LABEL_82;
      }

      goto LABEL_47;
    default:
      return 0;
  }
}

void *CA::Render::Decoder::decode_data(CA::Render::Decoder *this, void *a2, size_t a3, unint64_t *a4, size_t a5)
{
  if (*(this + 18))
  {
    return 0;
  }

  v9 = a3 <= a5 ? a5 : a3;
  v10 = a5 ? v9 : -1;
  v11 = CA::Render::Decoder::decode_size_t(this);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  if (*(this + 64))
  {
    if (v11 == -1)
    {
LABEL_11:
      v13 = *(this + 6);
      if (!v13 || *(v13 + 8) != 1)
      {
        CA::Render::Decoder::set_fatal_error(this, "%s - _attach_list = %p, type = %u");
        return 0;
      }

      if (*(v13 + 24) > v10)
      {
        CA::Render::Decoder::set_fatal_error(this, "%s - max_size = %zu, size = %zu");
        return 0;
      }

      v15 = *(this + 7) - 1;
      *(this + 6) = *v13;
      *(this + 7) = v15;
      v16 = *(v13 + 24);
      *a4 = v16;
      v17 = *(v13 + 32);
      if (!v17 || v17 == CA::Render::release_free)
      {
        return *(v13 + 16);
      }

      if (v16 > a3)
      {
        a2 = malloc_type_malloc(v16, 0xC0B464FFuLL);
      }

      if (a2)
      {
        memcpy(a2, *(v13 + 16), *(v13 + 24));
      }

      else
      {
        CA::Render::Decoder::set_fatal_error(this, "%s - buf = NULL", "decode_data");
      }

      (*(v13 + 32))(*(v13 + 16), *(v13 + 40));
      return a2;
    }
  }

  else if (v11 == 0xFFFFFFFF)
  {
    goto LABEL_11;
  }

  if (v11 > v10)
  {
    CA::Render::Decoder::set_fatal_error(this, "%s - max_size = %zu, tag = %zu");
    return 0;
  }

  if (v11 > 0x10000000)
  {
    goto LABEL_23;
  }

  if (v11 > a3)
  {
    a2 = malloc_type_malloc(v11, 0x8694DA37uLL);
  }

  if (a2)
  {
    CA::Render::Decoder::decode_bytes(this, a2, v12);
  }

  else
  {
LABEL_23:
    CA::Render::Decoder::set_fatal_error(this, "%s - buf = NULL, size = %zu", "decode_data", v12);
    a2 = 0;
  }

  *a4 = v12;
  return a2;
}

void CA::Render::Context::add_animation(CA::Render::Context *this, CA::Render::Object *a2, CA::Render::Animation *a3)
{
  v74 = *MEMORY[0x1E69E9840];
  v4 = CA::Render::Context::lookup_handle(this, a2, 0, 1, 0);
  if (v4 && a3)
  {
    v5 = v4;
    v6 = (*(*a3 + 136))(a3, *(v4 + 2));
    v8 = (v5 + 48);
    v7 = *(v5 + 6);
    if (v7)
    {
      v9 = (v5 + 48);
      do
      {
        v10 = *v7;
        if (*v7 != a3 && (v11 = *(a3 + 7)) != 0 && (v12 = *(v10 + 56)) != 0 && *(a3 + 8) == *(v10 + 64) && CFEqual(v11, v12))
        {
          if (BYTE8(xmmword_1ED4E97DC) == 1)
          {
            v57 = 0;
            v58 = 0;
            v59 = 0;
            CA::Render::show_object(&v57, v10);
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            log = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              v15 = mach_absolute_time();
              v16 = CATimeWithHostTime(v15);
              v17 = *(v5 + 3);
              if (v17)
              {
                v55 = *(v17 + 16);
              }

              else
              {
                v55 = 0;
              }

              v18 = *(v5 + 2);
              if (v18)
              {
                v19 = *(v18 + 128);
                if (v19)
                {
                  v20 = v19 + 28;
                }

                else
                {
                  v20 = 0;
                }

                v54 = v20;
              }

              else
              {
                v54 = 0;
              }

              v52 = *(v10 + 80);
              v53 = *(v10 + 84);
              v21 = x_stream_get(&v57);
              *buf = 134219778;
              v61 = v16;
              v62 = 1024;
              v63 = v55;
              v64 = 2080;
              v65 = v54;
              v66 = 2048;
              v67 = v5;
              v68 = 2048;
              v69 = v10;
              v70 = 1024;
              *v71 = v52;
              *&v71[4] = 1024;
              *&v71[6] = v53;
              v72 = 2080;
              v73 = v21;
              _os_log_impl(&dword_183AA6000, log, OS_LOG_TYPE_DEFAULT, "%f %x %s (%p): replacing %p (eval %u; frames %u):\n%s", buf, 0x46u);
            }

            if (v57)
            {
              free(v57);
            }
          }

          if (BYTE11(xmmword_1ED4E980C) == 1)
          {
            kdebug_trace();
          }

          CA::Render::invalidate_animation(v5, v10, v13);
          v14 = x_list_remove_head(v7);
          *v9 = v14;
          *(v5 + 13) |= 0x10080003uLL;
        }

        else
        {
          v14 = v7[1];
          v9 = v7 + 1;
        }

        v7 = v14;
      }

      while (v14);
    }

    if (!v6)
    {
      if (BYTE8(xmmword_1ED4E97DC) != 1)
      {
        return;
      }

      v57 = 0;
      v58 = 0;
      v59 = 0;
      CA::Render::show_object(&v57, a3);
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v28 = x_log_get_render(void)::log;
      if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      v36 = mach_absolute_time();
      v37 = CATimeWithHostTime(v36);
      v38 = *(v5 + 3);
      if (v38)
      {
        v39 = *(v38 + 16);
      }

      else
      {
        v39 = 0;
      }

      v44 = *(v5 + 2);
      if (v44)
      {
        v45 = *(v44 + 128);
        if (v45)
        {
          v46 = v45 + 28;
        }

        else
        {
          v46 = 0;
        }
      }

      else
      {
        v46 = 0;
      }

      v49 = x_stream_get(&v57);
      *buf = 134219266;
      v61 = v37;
      v62 = 1024;
      v63 = v39;
      v64 = 2080;
      v65 = v46;
      v66 = 2048;
      v67 = v5;
      v68 = 2048;
      v69 = a3;
      v70 = 2080;
      *v71 = v49;
      v48 = "%f %x %s (%p): not adding %p:\n%s";
      goto LABEL_79;
    }

    v22 = *v8;
    if (*v8)
    {
      v23 = *(a3 + 5);
      do
      {
        v24 = 0.0;
        v25 = 0.0;
        if (v23)
        {
          v25 = *(v23 + 40);
        }

        v26 = *(*v22 + 40);
        if (v26)
        {
          v24 = *(v26 + 40);
        }

        if (v25 < v24 || v25 <= v24 && *(a3 + 18) < *(*v22 + 72))
        {
          break;
        }

        v8 = (v22 + 1);
        v22 = v22[1];
      }

      while (v22);
    }

    v27 = a3;
    if (!atomic_fetch_add(a3 + 2, 1u))
    {
      v27 = 0;
      atomic_fetch_add(a3 + 2, 0xFFFFFFFF);
    }

    *v8 = x_list_prepend(v22, v27);
    *(v5 + 13) |= 0x80003uLL;
    (*(*a3 + 144))(a3, v5);
    if (BYTE11(xmmword_1ED4E980C) != 1)
    {
LABEL_46:
      if (BYTE8(xmmword_1ED4E97DC) != 1)
      {
        return;
      }

      v57 = 0;
      v58 = 0;
      v59 = 0;
      CA::Render::show_object(&v57, a3);
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v28 = x_log_get_render(void)::log;
      if (!os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_80;
      }

      v29 = mach_absolute_time();
      v30 = CATimeWithHostTime(v29);
      v31 = *(v5 + 3);
      if (v31)
      {
        v32 = *(v31 + 16);
      }

      else
      {
        v32 = 0;
      }

      v41 = *(v5 + 2);
      if (v41)
      {
        v42 = *(v41 + 128);
        if (v42)
        {
          v43 = v42 + 28;
        }

        else
        {
          v43 = 0;
        }
      }

      else
      {
        v43 = 0;
      }

      v47 = x_stream_get(&v57);
      *buf = 134219266;
      v61 = v30;
      v62 = 1024;
      v63 = v32;
      v64 = 2080;
      v65 = v43;
      v66 = 2048;
      v67 = v5;
      v68 = 2048;
      v69 = a3;
      v70 = 2080;
      *v71 = v47;
      v48 = "%f %x %s (%p): adding %p:\n%s";
LABEL_79:
      _os_log_impl(&dword_183AA6000, v28, OS_LOG_TYPE_DEFAULT, v48, buf, 0x3Au);
LABEL_80:
      if (v57)
      {
        free(v57);
      }

      return;
    }

    v33 = *(v5 + 3);
    if (v33)
    {
      if (atomic_load((v33 + 228)))
      {
LABEL_89:
        kdebug_trace();
        goto LABEL_46;
      }

      if (*(v33 + 256))
      {
        v35 = 0;
      }

      else
      {
        v35 = getpid();
      }

      v50 = 0;
      v51 = v33 + 228;
    }

    else
    {
      if (atomic_load(0xE4))
      {
        goto LABEL_89;
      }

      if (MEMORY[0x100])
      {
        v35 = 0;
      }

      else
      {
        v35 = getpid();
      }

      v50 = 0;
      v51 = 228;
    }

    atomic_compare_exchange_strong(v51, &v50, v35);
    goto LABEL_89;
  }
}

CA::Render::BackdropLayer *CA::Render::BackdropLayer::BackdropLayer(CA::Render::BackdropLayer *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::Object::Object(this, a2);
  *(v4 + 12) = 3;
  ++dword_1ED4EAA44;
  *v4 = &unk_1EF1FA150;
  *(this + 2) = CA::Render::Decoder::decode_size_t(a2);
  *(this + 3) = CA::Render::Decoder::decode_object(a2, 54);
  *(this + 8) = CA::Render::Decoder::decode_int32(a2);
  *(this + 9) = CA::Render::Decoder::decode_int32(a2);
  *(this + 10) = CA::Render::Decoder::decode_int32(a2);
  *(this + 6) = COERCE_FLOAT(CA::Render::Decoder::decode_int32(a2));
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  CA::Render::Decoder::decode_bytes(a2, this + 56, 0x20uLL);
  v5 = CA::Render::Decoder::decode_int32(a2);
  *(this + 6) = 0u;
  *(this + 22) = v5;
  *(this + 7) = 0u;
  CA::Render::Decoder::decode_bytes(a2, this + 96, 0x20uLL);
  v6 = CA::Render::Decoder::decode_int8(a2);
  if (v6 >= 3)
  {
    CA::Render::Decoder::set_fatal_error(a2, "%s - enum %u out of range of %u", "decode_int8_enum", v6, 3);
    LOBYTE(v6) = 0;
  }

  *(this + 128) = v6;
  *(this + 17) = 0;
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-backdrop-layer.cpp", 587);
  return this;
}

void CA::Render::BackdropGroup::retain_group_common(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t **a5, int a6, int a7, float a8)
{
  v13 = a3;
  v27[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v16 = *a5;
    v17 = a5[1];
    while (v16 != v17)
    {
      v18 = *v16;
      if (*(*v16 + 672) == a4)
      {
        if (a4)
        {
          if (a4 != 2)
          {
            if (a4 != 1)
            {
              goto LABEL_7;
            }

            v21 = *(a2 + 576);
            if (!v21)
            {
              v21 = a2;
            }

            if (*(v18 + 24) != v21)
            {
              goto LABEL_7;
            }
          }
        }

        else if (*(v18 + 16) != a2)
        {
          goto LABEL_7;
        }

        v19 = *(v18 + 32);
        if (v19)
        {
          v20 = *(v13 + 24);
          if (v20 == *(v19 + 24) && !memcmp((v13 + 28), (v19 + 28), v20) && *(v18 + 64) == a8)
          {
            if (atomic_fetch_add((v18 + 8), 1u))
            {
              *a1 = v18;
              return;
            }

            atomic_fetch_add((v18 + 8), 0xFFFFFFFF);
          }
        }
      }

LABEL_7:
      ++v16;
    }
  }

  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v22 = malloc_type_zone_malloc(malloc_zone, 0x2B8uLL, 0x165299FDuLL);
  v23 = v22;
  if (v22)
  {
    *(v22 + 2) = 1;
    *(v22 + 3) = 2;
    ++dword_1ED4EAA40;
    *v22 = &unk_1EF1FA258;
    if (a2)
    {
      v24 = a2;
      if (!atomic_fetch_add((a2 + 8), 1u))
      {
        v24 = 0;
        atomic_fetch_add((a2 + 8), 0xFFFFFFFF);
      }
    }

    else
    {
      v24 = 0;
    }

    v25 = *(a2 + 576);
    if (!v25)
    {
      v25 = a2;
    }

    *(v22 + 2) = v24;
    *(v22 + 3) = v25;
    if (v13)
    {
      v26 = (v13 + 8);
      if (!atomic_fetch_add((v13 + 8), 1u))
      {
        v13 = 0;
        atomic_fetch_add(v26, 0xFFFFFFFF);
      }
    }

    *(v22 + 4) = v13;
    *(v22 + 10) = 0;
    *(v22 + 3) = 0u;
    *(v22 + 16) = a8;
    *(v22 + 9) = v22 + 104;
    *(v22 + 10) = v22 + 104;
    *(v22 + 11) = v22 + 104;
    *(v22 + 12) = 2;
    *(v22 + 61) = 0;
    *(v22 + 124) = 0;
    *(v22 + 159) = 0;
    *(v22 + 620) = 0u;
    *(v22 + 32) = 0u;
    *(v22 + 33) = 0u;
    *(v22 + 34) = 0u;
    *(v22 + 35) = 0u;
    *(v22 + 36) = 0u;
    *(v22 + 37) = 0u;
    *(v22 + 76) = 0;
    v22[672] = a4;
    *(v22 + 344) = 0;
  }

  v27[0] = v22;
  *(v22 + 3) |= a6 << 8;
  X::small_vector_base<CA::Render::BackdropGroup *>::push_back(a5, v27);
  if (a7 && !atomic_fetch_add(v23 + 2, 1u))
  {
    atomic_fetch_add(v23 + 2, 0xFFFFFFFF);
  }

  *a1 = v27[0];
}

void X::small_vector_base<CA::Render::BackdropGroup *>::push_back(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = ((v4 - *a1) >> 3) + 1;
  if (a1[3] < v5)
  {
    X::small_vector_base<CA::Render::BackdropGroup *>::grow(a1, v5);
    v4 = a1[1];
  }

  *v4 = *a2;
  a1[1] += 8;
}

CA::Render::SpringAnimation *CA::Render::SpringAnimation::SpringAnimation(CA::Render::SpringAnimation *this, CA::Render::Decoder *a2)
{
  v4 = CA::Render::BasicAnimation0::BasicAnimation0(this, a2);
  *(v4 + 12) = 53;
  ++dword_1ED4EAB0C;
  *v4 = &unk_1EF202C70;
  *(this + 19) = CA::Render::Decoder::decode_int64(a2);
  *(this + 20) = CA::Render::Decoder::decode_int64(a2);
  *(this + 21) = CA::Render::Decoder::decode_int64(a2);
  *(this + 22) = CA::Render::Decoder::decode_int64(a2);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-animation.cpp", 2642);
  return this;
}

BOOL CA::Render::SpringAnimation::validate(CA::Render::SpringAnimation *this, CA::Render::Layer *a2)
{
  v3 = CA::Render::BasicAnimation0::validate(this, a2);
  if (v3)
  {
    CA::Render::SpringAnimation::State::update(this + 192, *(this + 19), *(this + 20), *(this + 21), *(this + 22), *(this + 184));
  }

  return v3;
}

_DWORD *CA::Render::String::decode(CA::Render::String *this, CA::Render::Decoder *a2)
{
  v3 = CA::Render::Decoder::decode_int32(this);
  v5 = CA::Render::String::new_string(v3, 0, v4);
  v6 = v5;
  if (v5)
  {
    CA::Render::Decoder::decode_bytes(this, v5 + 7, v3);
  }

  CA::Render::Decoder::decode_sanity_check(this, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-string.cpp", 157);
  return v6;
}

BOOL CA::Render::BasicAnimation0::validate(CA::Render::BasicAnimation0 *this, CA::Render::Layer *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = (this + 96);
  v2 = *(this + 12);
  if (!v2 || (v2 & 1) == 0 && !*v2)
  {
    return 0;
  }

  if (*(this + 14) || *(this + 15))
  {
    return 1;
  }

  if (a2 && !*(this + 16))
  {
    v6 = *(this + 5);
    v7 = v6 ? *(v6 + 40) : 0;
    v22[1] = 0;
    v35 = 0u;
    v36 = 0u;
    v22[0] = v7;
    v23 = a2;
    *&v35 = 0x10000000000;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    __asm { FMOV            V0.2D, #1.0 }

    v30 = _Q0;
    v34 = _Q0;
    BYTE8(v35) = 1;
    CA::Render::AnimationEvaluator::first_pass(v22, 0);
    CA::Render::AnimationEvaluator::second_pass(v22);
    v14 = v25 ? v25 : v23;
    if (CA::Render::Layer::keypath_is_object(v14, v3, v13))
    {
      keypath_object = CA::Render::Layer::get_keypath_object(v14, v3, v15);
      CA::Render::BasicAnimation0::set_from(this, keypath_object);
    }

    else
    {
      memset(v37, 0, sizeof(v37));
      v21 = 0;
      keypath_value = CA::Render::Layer::get_keypath_value(v14, v3, 0x18uLL, v37, &v21);
      if (keypath_value)
      {
        v19 = CA::Render::Vector::new_vector(keypath_value, v21, v18);
        CA::Render::BasicAnimation0::set_from(this, v19);
        if (v19 && atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v19 + 16))(v19);
        }

        if (v21 != v37)
        {
          free(v21);
        }
      }
    }

    v20 = v25;
    if (v25 && atomic_fetch_add((v25 + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v20 + 16))(v20);
    }

    if (*(this + 14) || *(this + 15))
    {
      return 1;
    }
  }

  return *(this + 16) != 0;
}

BOOL CA::Render::Array::check_types(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a2 == 1 && !*a3)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 24;
  do
  {
    v6 = 0;
    while (a3[v6] != *(*(v5 + 8 * v4) + 12))
    {
      if (a2 == ++v6)
      {
        return 0;
      }
    }

    result = v6 != a2;
    if (v6 == a2)
    {
      break;
    }

    ++v4;
  }

  while (v4 != v3);
  return result;
}

uint64_t CA::WindowServer::Display::benchmark_mode(CA::WindowServer::Display *this, float *a2)
{
  if ((CA::WindowServer::Display::benchmark_mode(float *)const::initialized & 1) == 0)
  {
    v3 = getenv("CA_BENCHMARK");
    if (v3 || (v3 = getenv("LK_BENCHMARK")) != 0)
    {
      v4 = atoi(v3);
      CA::WindowServer::Display::benchmark_mode(float *)const::benchmark_mode = v4 != 0;
      if (v4 >= 61)
      {
        v5 = 1.0 / v4;
LABEL_8:
        CA::WindowServer::Display::benchmark_mode(float *)const::benchmark_rate = LODWORD(v5);
        CA::WindowServer::Display::benchmark_mode(float *)const::initialized = 1;
        goto LABEL_9;
      }
    }

    else
    {
      CA::WindowServer::Display::benchmark_mode(float *)const::benchmark_mode = 0;
    }

    v5 = 0.002;
    goto LABEL_8;
  }

LABEL_9:
  if (this)
  {
    *this = CA::WindowServer::Display::benchmark_mode(float *)const::benchmark_rate;
  }

  return CA::WindowServer::Display::benchmark_mode(float *)const::benchmark_mode;
}

CA::Render::Filter *CA::Render::Filter::decode(CA::Render::Filter *this, CA::Render::Decoder *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = CA::Render::Decoder::decode_int32(this);
  if ((v3 & 0x100) != 0)
  {
    v10 = CA::Render::Decoder::decode_atom(this);
    v11 = CA::Render::Filter::shared_filter(v10);
    v12 = v11;
    if (v11 && !atomic_fetch_add(v11 + 2, 1u))
    {
      v12 = 0;
      atomic_fetch_add(v11 + 2, 0xFFFFFFFF);
    }
  }

  else
  {
    v4 = v3;
    if (CA::Render::Decoder::decode_int8(this) == 1)
    {
      v5 = CA::Render::Decoder::decode_atom(this);
      v6 = CA::Render::Decoder::decode_object(this, 54);
      v15 = 29;
      v7 = CA::Render::Decoder::decode_array_object(this, 1, &v15, 0);
      if (v7)
      {
        v8 = v7 + 2;
        v9 = v7;
        if (!atomic_fetch_add(v7 + 2, 1u))
        {
          v9 = 0;
          atomic_fetch_add(v8, 0xFFFFFFFF);
        }

        if (atomic_fetch_add(v8, 0xFFFFFFFF) == 1)
        {
          (*(*v7 + 16))(v7);
        }
      }

      else
      {
        v9 = 0;
      }

      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v13 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x38uLL, 0xDEEC3011uLL);
      v12 = v13;
      if (v13)
      {
        CA::Render::Filter::Filter(v13, v5, v6, v9);
      }

      *(v12 + 3) |= v4 << 8;
      if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v9 + 16))(v9);
      }

      if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v6 + 16))(v6);
      }
    }

    else
    {
      v12 = 0;
    }
  }

  CA::Render::Decoder::decode_sanity_check(this, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-filter.cpp", 984);
  return v12;
}

CA::Render::KeyValue *CA::Render::KeyValue::KeyValue(CA::Render::KeyValue *this, CA::Render::Decoder *a2)
{
  *(this + 2) = 1;
  *(this + 3) = 29;
  ++dword_1ED4EAAAC;
  *this = &unk_1EF203140;
  *(this + 4) = CA::Render::Decoder::decode_atom(a2);
  *(this + 3) = CA::Render::Decoder::decode_object(a2, 0);
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-key-value.cpp", 51);
  return this;
}

atomic_uint *CA::Render::Image::decode(CA::Render::Image *this, CA::Render::Decoder *a2)
{
  v44[33] = *MEMORY[0x1E69E9840];
  v3 = CA::Render::Decoder::decode_int32(this);
  v4 = CA::Render::Decoder::decode_int8(this);
  v5 = CA::Render::Decoder::decode_int8(this);
  v6 = CA::Render::Decoder::decode_int32(this);
  v7 = CA::Render::Decoder::decode_int32(this);
  v33 = 0;
  memset(v44, 0, 256);
  if (v5 > 0x20)
  {
    goto LABEL_42;
  }

  v8 = v7;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v44[i] = CA::Render::Decoder::decode_size_t(this);
    }

    v10 = v44[0];
    if (!is_mul_ok(v44[0], v8) || (v11 = v44[0] * v8) == 0)
    {
LABEL_17:
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v18 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 134218496;
        *(buf + 4) = v10;
        WORD6(buf[0]) = 1024;
        *(buf + 14) = v5;
        WORD1(buf[1]) = 1024;
        DWORD1(buf[1]) = v8;
        _os_log_error_impl(&dword_183AA6000, v18, OS_LOG_TYPE_ERROR, "Failed to validate rowbytes: %zu, levels: %u height: %u", buf, 0x18u);
      }

      goto LABEL_42;
    }

    v12 = 1;
    LODWORD(v13) = v8;
    while (v5 != v12)
    {
      v14 = v12;
      if (v13 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v13 >> 1;
      }

      v15 = v44[v12];
      if (is_mul_ok(v15, v13))
      {
        v16 = v15 * v13;
        if (v15 * v13)
        {
          v12 = v14 + 1;
          v17 = __CFADD__(v11, v16);
          v11 += v16;
          if (!v17)
          {
            continue;
          }
        }
      }

      if (v14 >= v5)
      {
        break;
      }

      goto LABEL_17;
    }
  }

  if (!CA::Render::Decoder::decode_int8(this))
  {
    v31 = 0;
    v32 = 0;
    v23 = CA::Render::Decoder::decode_data_async(this, &v33, &v31, &v32);
    if (v23)
    {
      v24 = v23;
      v25 = v31;
      v26 = v32;
      v22 = CA::Render::Image::new_image(v4, v6, v8, v5, 0, v23, v44, v31, v32, v30);
      if (v22 || !v25)
      {
        goto LABEL_38;
      }

      v25(v24, v26);
    }

    else
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v27 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf[0]) = 134217984;
        *(buf + 4) = v33;
        _os_log_error_impl(&dword_183AA6000, v27, OS_LOG_TYPE_ERROR, "Failed to decode_data_async, size: %zu", buf, 0xCu);
      }
    }

    v22 = 0;
    goto LABEL_38;
  }

  v19 = CA::Render::Decoder::decode_object(this, 52);
  if (!v19)
  {
    CA::Render::Decoder::set_fatal_error(this, "Failed to decode shmem.");
    goto LABEL_42;
  }

  v21 = v19;
  v33 = *(v19 + 16);
  v22 = CA::Render::Image::new_image(v4, v6, v8, v5, 0, v19, v44, v20);
  if ((*(v21 + 13) & 8) != 0 && *(v21 + 16) >= 0x24uLL)
  {
    atomic_fetch_add(*(v21 + 24), 0xFFFFFFFF);
  }

  if (atomic_fetch_add((v21 + 8), 0xFFFFFFFF) == 1)
  {
    (*(*v21 + 16))(v21);
  }

LABEL_38:
  if (v22)
  {
    v28 = CA::Render::Image::data_size(v22);
    if (v28 <= v33)
    {
      v22[3] |= (v3 << 8) & 0xFDFFFFFF;
      CA::Render::Texture::decode(v22, this);
      goto LABEL_45;
    }

    CA::Render::Decoder::set_fatal_error(this, "Failed to re-create data_size, encoded: %zu,calculated: %zu", v33, v28);
    if (atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v22 + 16))(v22);
    }
  }

LABEL_42:
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  *space = 0u;
  v36 = 0u;
  memset(buf, 0, sizeof(buf));
  CA::Render::Texture::Texture(buf, 0, 0);
  BYTE12(buf[0]) = 23;
  ++dword_1ED4EAA94;
  *&buf[0] = &unk_1EF1F4BB8;
  DWORD1(v42) = 0;
  WORD4(v42) = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  if (space[1])
  {
    CGColorSpaceRelease(space[1]);
    space[1] = CGColorSpaceRetain(0);
  }

  DWORD1(v42) = 1;
  CA::Render::Texture::decode(buf, this);
  CA::Render::Decoder::set_fatal_error(this, "Image failed to decode!");
  CA::Render::Image::~Image(buf);
  v22 = 0;
LABEL_45:
  CA::Render::Decoder::decode_sanity_check(this, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-image.cpp", 514);
  return v22;
}

CA::Render::CompressedImage *CA::Render::CompressedImage::decode(CA::Render::CompressedImage *this, CA::Render::Decoder *a2)
{
  v53 = *MEMORY[0x1E69E9840];
  v3 = CA::Render::Decoder::decode_int32(this);
  v4 = CA::Render::Decoder::decode_int32(this);
  v5 = CA::Render::Decoder::decode_int32(this);
  v6 = CA::Render::Decoder::decode_int32(this);
  v7 = v6;
  if (v6 < 0x41)
  {
    v41 = v5;
    v42 = v4;
    v43 = v3;
    v9 = 8 * v6;
    MEMORY[0x1EEE9AC00](v6);
    v10 = (v9 + 15) & 0xFFFFFFF0;
    v11 = &v38[-v10];
    bzero(&v38[-v10], 8 * v7);
    MEMORY[0x1EEE9AC00](v12);
    v13 = &v38[-v10];
    bzero(&v38[-v10], 8 * v7);
    MEMORY[0x1EEE9AC00](v14);
    v15 = &v38[-v10];
    bzero(&v38[-v10], 8 * v7);
    if (v7)
    {
      v16 = &v38[-v10];
      v17 = &v38[-v10];
      v18 = v15;
      v19 = v7;
      do
      {
        *v16++ = CA::Render::Decoder::decode_size_t(this);
        *v17++ = CA::Render::Decoder::decode_size_t(this);
        *v18++ = CA::Render::Decoder::decode_size_t(this);
        --v19;
      }

      while (v19);
    }

    v20 = CA::Render::Decoder::decode_int32(this);
    v21 = CA::Render::Decoder::decode_int32(this);
    v22 = CA::Render::Decoder::decode_int8(this);
    v23 = CA::Render::Decoder::decode_size_t(this);
    v45 = 0;
    v24 = CA::Render::Decoder::decode_port(this, 17, &v45);
    if (v24)
    {
      v25 = v24;
      v39 = v20;
      v40 = v22;
      address = 0;
      v26 = mach_vm_map(*MEMORY[0x1E69E9A60], &address, v23, *MEMORY[0x1E69E9AB8], 856686593, v24, 0, 0, 1, 1, 2u);
      v27 = address;
      if (v26)
      {
        v28 = 1;
      }

      else
      {
        v28 = address == 0;
      }

      if (!v28)
      {
        if (x_malloc_get_zone::once != -1)
        {
          dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        }

        v34 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0xC8uLL, 0xDEEC3011uLL);
        v8 = v34;
        if (v34)
        {
          v35 = CA::Render::CompressedImage::CompressedImage(v34, v42, v41, v39, v27, v23, v11, v13, v15, v7, CA::Render::release_deallocate, 0);
          v28 = v40 == 0;
          *(v8 + 46) = v21;
          v36 = *(v8 + 3) & 0xFF7FFFFF | ((v21 == 2) << 23);
          v37 = *(v8 + 192) & 0xFE;
          if (!v28)
          {
            ++v37;
          }

          *(v8 + 192) = v37;
          *(v8 + 3) = v36 | (v43 << 8);
          CA::Render::Texture::decode(v35, this);
        }

        else
        {
          CA::Render::Decoder::set_fatal_error(this, "Failed to decode CompressedImage from data ptr: %p, len: %ld", v27, v23);
          mach_vm_deallocate(*MEMORY[0x1E69E9A60], address, v23);
        }

        if (v45)
        {
          mach_port_deallocate(*MEMORY[0x1E69E9A60], v25);
        }

        goto LABEL_22;
      }

      if (CADeviceHasInternalBuild::once != -1)
      {
        dispatch_once(&CADeviceHasInternalBuild::once, &__block_literal_global_171);
      }

      v29 = CADeviceHasInternalBuild::internal;
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v30 = x_log_get_render(void)::log;
      v31 = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR);
      if (v29)
      {
        if (v31)
        {
          LODWORD(buf[0]) = 134218752;
          *(buf + 4) = v23;
          WORD6(buf[0]) = 1024;
          *(buf + 14) = v25;
          WORD1(buf[1]) = 1024;
          DWORD1(buf[1]) = 1;
          WORD4(buf[1]) = 1024;
          *(&buf[1] + 10) = v26;
          _os_log_error_impl(&dword_183AA6000, v30, OS_LOG_TYPE_ERROR, "CoreAnimation: Failed to map %ld bytes with port = %u, protection = %u, err = 0x%x\n", buf, 0x1Eu);
        }

        abort();
      }

      if (v31)
      {
        LODWORD(buf[0]) = 134218752;
        *(buf + 4) = v23;
        WORD6(buf[0]) = 1024;
        *(buf + 14) = v25;
        WORD1(buf[1]) = 1024;
        DWORD1(buf[1]) = 1;
        WORD4(buf[1]) = 1024;
        *(&buf[1] + 10) = v26;
        _os_log_error_impl(&dword_183AA6000, v30, OS_LOG_TYPE_ERROR, "Failed to map %ld bytes with port = %u, protection = %u, err = 0x%x\n", buf, 0x1Eu);
      }

      v52 = 0;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      memset(buf, 0, sizeof(buf));
      v32 = CA::Render::Texture::Texture(buf, 0, 0);
      ++dword_1ED4EAA5C;
      *&buf[0] = &unk_1EF1FF910;
      v47 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      *&v51 = 0;
      *(&v51 + 1) = 2;
      HIDWORD(buf[0]) = HIDWORD(buf[0]) & 0xFF7FFF00 | 0x800009;
      CA::Render::Texture::decode(v32, this);
      CA::Render::Decoder::set_fatal_error(this, "%s - data = NULL", "decode");
      CA::Render::CompressedImage::~CompressedImage(buf);
    }

    else
    {
      CA::Render::Decoder::set_fatal_error(this, "CompressedImage port is MACH_PORT_NULL!");
    }

    v8 = 0;
LABEL_22:
    CA::Render::Decoder::decode_sanity_check(this, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-image-compressed.mm", 868);
    return v8;
  }

  CA::Render::Decoder::set_fatal_error(this, "Incorrect CompressedImage levels: %u", v6);
  return 0;
}

void CA::Render::BackdropGroup::retain_group(void *a1, uint64_t a2, uint64_t a3, int a4, float a5)
{
  os_unfair_lock_lock(&CA::Render::BackdropGroup::_list_lock);
  CA::Render::BackdropGroup::retain_group_common(a1, a2, a3, a4, &CA::Render::BackdropGroup::_list, 1, 0, a5);

  os_unfair_lock_unlock(&CA::Render::BackdropGroup::_list_lock);
}

uint64_t CA::Render::BackdropLayer::commit_layer(uint64_t this, CA::Render::Context *a2, CA::Render::Layer *a3, CA::Render::Handle *a4, int a5)
{
  v7 = this;
  v19[1] = *MEMORY[0x1E69E9840];
  if (!*(this + 136))
  {
    v10 = *(this + 16);
    v9 = *(this + 24);
    v11 = *(this + 128);
    v12 = *(this + 32);
    os_unfair_lock_lock(&CA::Render::BackdropState::_list_lock);
    v13 = CA::Render::BackdropState::_list;
    v14 = qword_1EA84E8A0;
    while (v13 != v14)
    {
      v15 = *v13;
      if (*(*v13 + 24) == v10 && *(v15 + 2) == a2 && *(v15 + 136) == v11 && *(v15 + 12) == v12 && (*(v15 + 13) & 2) == 0)
      {
        if (v9)
        {
          v16 = *(*(v15 + 7) + 32);
          if (v16)
          {
            v17 = *(v9 + 24);
            if (v17 == *(v16 + 24) && !memcmp((v9 + 28), (v16 + 28), v17))
            {
              if (atomic_fetch_add(v15 + 2, 1u))
              {
                goto LABEL_26;
              }

              atomic_fetch_add(v15 + 2, 0xFFFFFFFF);
            }
          }
        }
      }

      v13 += 8;
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v18 = malloc_type_zone_malloc(malloc_zone, 0xA0uLL, 0x165299FDuLL);
    v15 = v18;
    if (v18)
    {
      v18[2] = 1;
      v18[3] = 4;
      ++dword_1ED4EAA48;
      *v18 = &unk_1EF1FA2C8;
      *(v18 + 2) = a2;
      *(v18 + 3) = v10;
      *(v18 + 4) = 0;
      *(v18 + 5) = 0;
      *(v18 + 12) = v12;
      v18[13] = 0;
      CA::Render::BackdropGroup::retain_group(v18 + 7, a2, v9, v11, v12);
      v15[28] = 0;
      *(v15 + 5) = 0u;
      *(v15 + 6) = 0u;
      *(v15 + 4) = 0u;
      *(v15 + 136) = v11;
      *(v15 + 18) = 0;
      *(v15 + 76) = 0;
    }

    v19[0] = v15;
    v15[3] |= 0x100u;
    X::small_vector_base<CA::Render::BackdropState *>::push_back(v19);
LABEL_26:
    os_unfair_lock_unlock(&CA::Render::BackdropState::_list_lock);
    this = *(v7 + 136);
    *(v7 + 136) = v15;
    if (this && atomic_fetch_add((this + 8), 0xFFFFFFFF) == 1)
    {
      this = (*(*this + 16))(this);
    }
  }

  if ((a5 & 0x5FE78) != 0)
  {
    *(a4 + 13) |= 0x10uLL;
  }

  if ((a5 & 0x200000) == 0)
  {
    *(*(v7 + 136) + 153) = 1;
  }

  return this;
}

CGColorSpaceRef CA::Render::Decoder::decode_colorspace(CA::Render::Decoder *this)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(this + 18))
  {
    return 0;
  }

  if (CA::Render::Decoder::decode_colorspace(void)::once[0] != -1)
  {
    dispatch_once(CA::Render::Decoder::decode_colorspace(void)::once, &__block_literal_global_33);
  }

  v2 = CA::Render::Decoder::decode_int8(this);
  if (v2 <= 1)
  {
    if (!v2)
    {
      return 0;
    }

    if (v2 == 1)
    {
      v7 = CA::Render::Decoder::decode_int8(this);
      if (v7 >= 0x27)
      {
        CA::Render::Decoder::set_fatal_error(this, "%s - enum %u out of range of %u", "decode_int8_enum", v7, 39);
        v7 = 0;
      }

      v8 = CAGetColorSpace(v7);
      v6 = v8;
      if (v8)
      {
        CFRetain(v8);
      }

      return v6;
    }

    goto LABEL_24;
  }

  switch(v2)
  {
    case 2:
      v9 = CA::Render::Decoder::decode_cfobject(this, 0);
      if (v9)
      {
        v6 = v9;
        v10 = CFGetTypeID(v9);
        v11 = v10;
        v12 = 0;
        while (v10 != CA::Render::Decoder::decode_colorspace(void)::types[v12])
        {
          if (++v12 == 3)
          {
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            v15 = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v18 = v11;
              _os_log_error_impl(&dword_183AA6000, v15, OS_LOG_TYPE_ERROR, "decoded cfobject of unexpected type: %lu", buf, 0xCu);
            }

            CFRelease(v6);
            goto LABEL_33;
          }
        }
      }

      else
      {
LABEL_33:
        v6 = *MEMORY[0x1E695E738];
      }

      if (!v6)
      {
        return v6;
      }

      v16 = CGColorSpaceCreateWithPropertyList(v6);
      CFRelease(v6);
      return v16;
    case 3:
      v13 = *(*(this + 9) + 480);

      return CGColorSpaceRetain(v13);
    case 4:
      TypeID = CFStringGetTypeID();
      v4 = CA::Render::Decoder::decode_cfobject(this, TypeID);
      if (v4)
      {
        v5 = v4;
        v6 = CGColorSpaceCreateWithName(v4);
        CFRelease(v5);
        return v6;
      }

      return 0;
    default:
LABEL_24:
      CA::Render::Decoder::set_fatal_error(this, "%s - code = %d", "decode_colorspace", v2);
      return 0;
  }
}

void CA::Render::Texture::decode(CA::Render::Texture *this, CA::Render::Decoder *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  CGColorSpaceRelease(*(this + 7));
  *(this + 7) = CA::Render::Decoder::decode_colorspace(a2);
  *(this + 8) = CA::Render::Decoder::decode_int32(a2);
  *(this + 12) = CA::Render::Decoder::decode_int16(a2);
  *(this + 13) = CA::Render::Decoder::decode_int16(a2);
  *(this + 14) = CA::Render::Decoder::decode_int16(a2);
  *(this + 15) = CA::Render::Decoder::decode_int16(a2);
  if (*(a2 + 18))
  {
    v6 = 0;
    goto LABEL_12;
  }

  v4 = CA::Render::Decoder::decode_int32(a2);
  if (v4 == -2)
  {
    LODWORD(__dst) = CA::Render::Decoder::decode_int32(a2);
    DWORD1(__dst) = CA::Render::Decoder::decode_int32(a2);
    DWORD2(__dst) = CA::Render::Decoder::decode_int32(a2);
    HIDWORD(__dst) = CA::Render::Decoder::decode_int32(a2);
    v6 = CA::Shape::new_shape(&__dst, v7);
    goto LABEL_11;
  }

  v5 = v4;
  if (!v4)
  {
LABEL_10:
    v6 = 0;
    goto LABEL_11;
  }

  if (v4 != -1)
  {
    if ((v4 - 131073) > 0xFFFE000B)
    {
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v12 = malloc_type_zone_malloc(malloc_zone, (4 * v5), 0x100004052888210uLL);
      v6 = v12;
      if (v12)
      {
        *v12 = 1;
        v12[1] = v5;
        v12[2] = v5;
        CA::Render::Decoder::decode_bytes(a2, v12 + 3, 4 * (v5 - 3));
      }

      else
      {
        CA::Render::Decoder::set_fatal_error(a2, "%s - failed shape allocation for size %d", "decode_shape", v5);
      }

      goto LABEL_11;
    }

    CA::Render::Decoder::set_fatal_error(a2, "%s - size = %d", "decode_shape", v4);
    goto LABEL_10;
  }

  v6 = 1;
LABEL_11:
  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-coding.cpp", 1811);
LABEL_12:
  v8 = *(this + 6);
  *(this + 6) = v6;
  if (v8)
  {
    CA::Shape::unref(v8);
  }

  *(this + 16) = CA::Render::Decoder::decode_int32(a2);
  *(this + 17) = CA::Render::Decoder::decode_int32(a2);
  if ((*(this + 14) & 0x10) != 0)
  {
    __dst = 0uLL;
    v14 = 0;
    CA::Render::Decoder::decode_bytes(a2, &__dst, 0x14uLL);
    *(this + 72) = __dst;
    *(this + 22) = v14;
  }

  CA::Render::Decoder::decode_sanity_check(a2, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-texture.cpp", 185);
  v9 = *(a2 + 9);
  if (v9)
  {
    v10 = atomic_load((v9 + 228));
    if (!v10)
    {
      if (*(v9 + 256))
      {
        v11 = 0;
      }

      else
      {
        v11 = getpid();
      }

      v10 = 0;
      atomic_compare_exchange_strong((v9 + 228), &v10, v11);
      if (!v10)
      {
        v10 = v11;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  *(this + 10) = v10;
}

atomic_uint *CA::Render::Layer::set_single_sublayer(CA::Render::Layer *this, CA::Render::Layer *a2)
{
  v2 = a2;
  v4 = *(this + 3);
  result = *(this + 14);
  if ((v4 & 0x2000) != 0)
  {
    if (result == a2)
    {
      return result;
    }

    if (result && atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*result + 16))(result);
    }

    if (!v2)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (result)
  {
    if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*result + 16))(result);
    }

    v4 = *(this + 3);
  }

  *(this + 14) = 0;
  *(this + 3) = v4 | 0x2000;
  if (v2)
  {
LABEL_13:
    v6 = (v2 + 8);
    if (!atomic_fetch_add(v2 + 2, 1u))
    {
      v2 = 0;
      atomic_fetch_add(v6, 0xFFFFFFFF);
    }

LABEL_15:
    *(this + 14) = v2;
  }

  return result;
}

uint64_t x_list_remove_head(void *ptr)
{
  if (!ptr)
  {
    return 0;
  }

  v2 = ptr[1];
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  malloc_zone_free(malloc_zone, ptr);
  return v2;
}

void run_animation_callbacks(void *a1)
{
  while (1)
  {
    v2 = a1[2];
    if (!v2)
    {
      break;
    }

    a1[2] = *v2;
    free_non_deferred_animation(v2, 1);
  }

  for (i = a1[1]; i; i = i[1])
  {
    v4 = *i;
    [objc_msgSend(*i "delegate")];
    CFRelease(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    do
    {
      v6 = *v5;
      [objc_msgSend(*v5 "delegate")];
      CFRelease(v6);
      v5 = v5[1];
    }

    while (v5);
  }

  v7 = a1[1];
  if (v7)
  {
    do
    {
      v8 = v7[1];
      free(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *a1;
  if (*a1)
  {
    do
    {
      v10 = v9[1];
      free(v9);
      v9 = v10;
    }

    while (v10);
  }

  JUMPOUT(0x1865EA9A0);
}

CA::Render::Surface *CA::Render::Surface::decode(CA::Render::Surface *this, CA::Render::Decoder *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = CA::Render::Decoder::decode_int8(this);
  v4 = CA::Render::Decoder::decode_int32(this);
  if (v3)
  {
    v5 = CA::Render::Decoder::decode_object(this, 57);
    if (v5)
    {
      v6 = v5;
      if (x_malloc_get_zone::once != -1)
      {
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
      }

      v7 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x178uLL, 0xDEEC3011uLL);
      v8 = v7;
      if (v7)
      {
        CA::Render::Surface::Surface(v7, v6, v4);
      }

      if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v6 + 16))(v6);
      }

      if ((v4 & 0x200000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    v8 = 0;
    if ((v4 & 0x200000) != 0)
    {
LABEL_19:
      if (CA::Render::Decoder::decode_int8(this))
      {
        v30 = 0;
        v17 = CA::Render::Decoder::decode_port(this, 17, &v30);
        if (v17)
        {
          if (v30)
          {
            mach_port_deallocate(*MEMORY[0x1E69E9A60], v17);
          }
        }
      }
    }

LABEL_24:
    v18 = 0;
    goto LABEL_25;
  }

  v9 = CA::Render::Decoder::decode_int32(this);
  v10 = CA::Render::Decoder::decode_int8(this);
  if ((v10 | 2) != 3 || (v11 = v10, v31 = 0, (v12 = CA::Render::Decoder::decode_port(this, 17, &v31)) == 0))
  {
    v8 = 0;
    goto LABEL_24;
  }

  v13 = v12;
  v14 = IOSurfaceLookupFromMachPort(v12);
  if (v14)
  {
    v15 = v14;
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v16 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x178uLL, 0xDEEC3011uLL);
    v8 = v16;
    if (v16)
    {
      CA::Render::Surface::Surface(v16, v15, v9, 0, v4, 0, 0);
    }
  }

  else
  {
    v8 = 0;
  }

  if (v31)
  {
    mach_port_deallocate(*MEMORY[0x1E69E9A60], v13);
  }

  v18 = v11 == 3;
LABEL_25:
  v19 = CA::Render::Decoder::decode_int8(this);
  v20 = CA::Render::Decoder::decode_int8(this);
  v21 = CA::Render::Decoder::decode_int8(this);
  v22 = CA::Render::Decoder::decode_int8(this);
  v23 = CA::Render::Decoder::decode_int8(this);
  v24 = CA::Render::Decoder::decode_int8(this);
  v25 = CA::Render::Decoder::decode_int8(this);
  if (v8)
  {
    v26 = v25 != 0;
    CA::Render::Texture::decode(v8, this);
    v27 = (16 * (v19 != 0)) | (32 * (v20 != 0)) | *(v8 + 184) & 0xFC0F;
    *(v8 + 360) = v21;
    *(v8 + 184) = ((v22 != 0) << 9) | ((v23 != 0) << 7) | ((v24 != 0) << 8) | (v26 << 6) | v27;
    if (v18)
    {
      CA::Render::Surface::reload_iosurface_color_attributes(v8, 0x7E);
    }
  }

  else
  {
    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v28 = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x178uLL, 0xDEEC3011uLL);
    v8 = v28;
    if (v28)
    {
      v28 = CA::Render::Surface::Surface(v28, 0, 0, 0, 0x10000, 0, 0);
    }

    CA::Render::Texture::decode(v28, this);
  }

  CA::Render::Decoder::decode_sanity_check(this, "/Library/Caches/com.apple.xbs/Sources/QuartzCore/LayerKit/render/render-surface.cpp", 1042);
  return v8;
}

void ___ZN2CA7Context18commit_transactionEPNS_11TransactionEdPd_block_invoke_2_19(uint64_t a1, uint64_t a2)
{
  if (a2 == 8)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], *(a1 + 56), 1u, -1);
    v8 = *(*(*(a1 + 48) + 8) + 40);

    dispatch_release(v8);
  }

  else if (a2 == 2)
  {
    msg = dispatch_mach_msg_get_msg();
    mach_msg_destroy(msg);
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 24);
    if (!v6)
    {
      __assert_rtn("commit_transaction_block_invoke_2", "CAContextInternal.mm", 4020, "pending_count > 0");
    }

    v7 = v6 - 1;
    *(v5 + 24) = v7;
    if (!v7)
    {
      (*(*(a1 + 32) + 16))(*(a1 + 32), v4);
      dispatch_mach_cancel();
    }
  }
}

void X::small_vector_base<CA::Render::BackdropState *>::push_back(void *a1)
{
  v3 = CA::Render::BackdropState::_list;
  v2 = qword_1EA84E8A0;
  v4 = qword_1EA84E8A0 - CA::Render::BackdropState::_list;
  v5 = ((qword_1EA84E8A0 - CA::Render::BackdropState::_list) >> 3) + 1;
  if (qword_1EA84E8B0 < v5)
  {
    v6 = off_1EA84E8A8;
    v7 = (qword_1EA84E8B0 + 1) | ((qword_1EA84E8B0 + 1) >> 1) | (((qword_1EA84E8B0 + 1) | ((qword_1EA84E8B0 + 1) >> 1)) >> 2);
    v8 = v7 | (v7 >> 4) | ((v7 | (v7 >> 4)) >> 8);
    v9 = v8 | (v8 >> 16) | ((v8 | (v8 >> 16)) >> 32);
    if (v9 + 1 > v5)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = ((qword_1EA84E8A0 - CA::Render::BackdropState::_list) >> 3) + 1;
    }

    v11 = malloc_type_malloc(8 * v10, 0x2004093837F09uLL);
    v12 = v11;
    v13 = CA::Render::BackdropState::_list;
    v14 = qword_1EA84E8A0;
    if (CA::Render::BackdropState::_list != qword_1EA84E8A0)
    {
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v15 = v16;
        v15 += 8;
      }

      while (v13 != v14);
    }

    if (v3 != v6)
    {
      free(CA::Render::BackdropState::_list);
    }

    v2 = &v12[v4];
    CA::Render::BackdropState::_list = v12;
    qword_1EA84E8A0 = &v12[v4];
    qword_1EA84E8B0 = v10;
  }

  *v2 = *a1;
  qword_1EA84E8A0 += 8;
}

atomic_uint **CA::Render::Image::new_image(CA::Render::Image *this, unsigned int a2, unsigned int a3, unsigned int a4, CGColorSpace *a5, CGColorSpace **a6, CA::Render::Shmem *a7, const unint64_t *a8)
{
  v8 = a6;
  if ((*(a6 + 13) & 8) != 0)
  {

    return CA::Render::Shmem::copy_image(a6, a5);
  }

  else
  {
    v9 = CA::Render::Image::new_image(this, a2, a3, a4, a5, a6[3], a7, 0, 0, v14);
    v10 = v9;
    if (v9)
    {
      v11 = v9[17];
      if (v11 != v8)
      {
        if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v11 + 16))(v11);
        }

        v12 = (v8 + 1);
        if (!atomic_fetch_add(v8 + 2, 1u))
        {
          v8 = 0;
          atomic_fetch_add(v12, 0xFFFFFFFF);
        }

        v10[17] = v8;
      }
    }

    return v10;
  }
}

uint64_t ___ZN2CA7Context18commit_transactionEPNS_11TransactionEdPd_block_invoke_16(uint64_t a1)
{
  kdebug_trace();
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = 0;
    do
    {
      (*(*v2 + 16))();
      _Block_release(*v2);
      v2 = *(v2 + 8);
      ++v3;
    }

    while (v2);
    v4 = *(a1 + 32);
    if (v4)
    {
      do
      {
        v5 = v4[1];
        free(v4);
        v4 = v5;
      }

      while (v5);
    }
  }

  return kdebug_trace();
}

void std::vector<std::unordered_set<unsigned long long>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__hash_table<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CA::Render::PerModeInfo>>>::~__hash_table(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__hash_table<std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::__unordered_map_hasher<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::hash<CA::Render::Object *>,std::equal_to<CA::Render::Object *>,true>,std::__unordered_map_equal<CA::Render::Object *,std::__hash_value_type<CA::Render::Object *,x_link_struct>,std::equal_to<CA::Render::Object *>,std::hash<CA::Render::Object *>,true>,std::allocator<std::__hash_value_type<CA::Render::Object *,x_link_struct>>>::erase(void *a1, void *__p)
{
  v2 = a1[1];
  v3 = __p[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *(*a1 + 8 * v3);
  do
  {
    v6 = v5;
    v5 = *v5;
  }

  while (v5 != __p);
  if (v6 == a1 + 2)
  {
    goto LABEL_18;
  }

  v7 = v6[1];
  if (v4.u32[0] > 1uLL)
  {
    if (v7 >= *&v2)
    {
      v7 %= *&v2;
    }
  }

  else
  {
    v7 &= *&v2 - 1;
  }

  if (v7 != v3)
  {
LABEL_18:
    if (!*__p)
    {
      goto LABEL_19;
    }

    v8 = *(*__p + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    if (v8 != v3)
    {
LABEL_19:
      *(*a1 + 8 * v3) = 0;
    }
  }

  v9 = *__p;
  if (*__p)
  {
    v10 = *(v9 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v10 >= *&v2)
      {
        v10 %= *&v2;
      }
    }

    else
    {
      v10 &= *&v2 - 1;
    }

    if (v10 != v3)
    {
      *(*a1 + 8 * v10) = v6;
      v9 = *__p;
    }
  }

  *v6 = v9;
  *__p = 0;
  --a1[3];
  operator delete(__p);
}

void CA::Render::Handle::~Handle(CA::Render::Handle *this)
{
  *this = &unk_1EF1FBDA0;
  CA::Render::Handle::set_current_layer(this, 0);
  v4 = *(this + 6);
  if (v4)
  {
    do
    {
      CA::Render::invalidate_animation(this, *v4, v3);
      v4 = *(v4 + 8);
    }

    while (v4);
    v5 = *(this + 6);
    if (v5)
    {
      do
      {
        v6 = v5[1];
        free(v5);
        v5 = v6;
      }

      while (v6);
    }
  }

  v7 = *(this + 5);
  if (v7)
  {
    *(v7 + 40) = 0;
    if (atomic_fetch_add((v7 + 16), 0xFFFFFFFF) == 1)
    {
      CA::Render::LayerNode::delete_node(v7, v2);
    }
  }

  v8 = *(this + 2);
  if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v8 + 16))(v8);
  }

  --dword_1ED4EAA90;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, v2);
  }
}

{
  CA::Render::Handle::~Handle(this);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v2 = malloc_zone;

  malloc_zone_free(v2, this);
}

void CA::Render::BackdropState::~BackdropState(CA::Render::BackdropState *this, const CA::Render::Object *a2)
{
  CA::Render::BackdropState::~BackdropState(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF1FA2C8;
  if (*(this + 13))
  {
    os_unfair_lock_lock(&CA::Render::BackdropState::_list_lock);
    v3 = CA::Render::BackdropState::_list;
    if (CA::Render::BackdropState::_list != qword_1EA84E8A0)
    {
      while (*v3 != this)
      {
        if (++v3 == qword_1EA84E8A0)
        {
          v3 = qword_1EA84E8A0;
          break;
        }
      }
    }

    *v3 = *(qword_1EA84E8A0 - 8);
    if (qword_1EA84E8A0 <= CA::Render::BackdropState::_list)
    {
      __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
    }

    qword_1EA84E8A0 -= 8;
    os_unfair_lock_unlock(&CA::Render::BackdropState::_list_lock);
  }

  v4 = *(this + 18);
  if (v4)
  {
    do
    {
      v5 = *v4;
      v6 = v4[4];
      if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v6 + 16))(v6);
      }

      MEMORY[0x1865EA9A0](v4, 0x1020C400F943929);
      v4 = v5;
    }

    while (v5);
  }

  v7 = *(this + 7);
  if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v7 + 16))(v7);
  }

  --dword_1ED4EAA48;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

void CA::Render::BackdropGroup::~BackdropGroup(CA::Render::BackdropGroup *this, const CA::Render::Object *a2)
{
  CA::Render::BackdropGroup::~BackdropGroup(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF1FA258;
  if (*(this + 13))
  {
    os_unfair_lock_lock(&CA::Render::BackdropGroup::_list_lock);
    v3 = CA::Render::BackdropGroup::_list;
    if (CA::Render::BackdropGroup::_list != qword_1EA84E8E0)
    {
      while (*v3 != this)
      {
        if (++v3 == qword_1EA84E8E0)
        {
          v3 = qword_1EA84E8E0;
          break;
        }
      }
    }

    *v3 = *(qword_1EA84E8E0 - 8);
    if (qword_1EA84E8E0 <= CA::Render::BackdropGroup::_list)
    {
      __assert_rtn("pop_back", "x-small-vector.h", 420, "_end > _begin && pop_back on empty container");
    }

    qword_1EA84E8E0 -= 8;
    os_unfair_lock_unlock(&CA::Render::BackdropGroup::_list_lock);
  }

  v4 = *(this + 6);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 68);
  if (v5)
  {
    CA::Shape::unref(v5);
  }

  v6 = *(this + 73);
  if (v6)
  {
    CA::Shape::unref(v6);
  }

  v7 = *(this + 74);
  if (v7)
  {
    CA::Shape::unref(v7);
  }

  v8 = *(this + 75);
  if (v8)
  {
    CA::Shape::unref(v8);
  }

  v9 = *(this + 76);
  if (v9)
  {
    CA::Shape::unref(v9);
  }

  v10 = *(this + 79);
  if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v10 + 16))(v10);
  }

  v11 = *(this + 78);
  if (v11)
  {
    if (atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 16))(v11);
    }

    *(this + 78) = 0;
  }

  v12 = *(this + 9);
  if (v12 != *(this + 11))
  {
    free(v12);
  }

  v13 = *(this + 4);
  if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v13 + 16))(v13);
  }

  v14 = *(this + 2);
  if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v14 + 16))(v14);
  }

  --dword_1ED4EAA40;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

void CA::Render::VelocityState::init_scale(CA::Render::VelocityState *this, const CA::Render::Layer *a2, uint64_t a3, double *a4)
{
  if (*(this + 157) == 1)
  {
    *(this + 157) = 0;
    v5 = *(a2 + 17);
    if (v5)
    {
      v6 = *(v5 + 16);
      if (v6)
      {
        v7 = *(v6 + 16);
        v8 = (v6 + 24);
        if (v7 >= 0x10)
        {
          v9 = v8;
        }

        else
        {
          v9 = &CA::Mat4Impl::mat4_identity_double;
        }

        if (v9[1].f64[0] != 0.0 || v9[1].f64[1] != 0.0 || v9[3].f64[0] != 0.0 || v9[3].f64[1] != 0.0 || v9[4].f64[0] != 0.0 || v9[4].f64[1] != 0.0 || v9[5].f64[1] != 0.0 || v9[7].f64[1] != 1.0)
        {
          if ((*(this + 153) & 0x10) == 0)
          {
            *(this + 156) = 2;
          }

          v10 = 4096;
          goto LABEL_23;
        }

        CA::Mat4Impl::mat4_get_scale(v9, this + 9, this + 10, a4);
        if (fabs(v9[1].f64[0]) >= 0.000001 || fabs(v9[3].f64[0]) >= 0.000001 || fabs(v9[5].f64[0] + -1.0) >= 0.000001 || fabs(v9[7].f64[0]) >= 0.000001)
        {
          v10 = *(this + 38) | 0x400;
LABEL_23:
          *(this + 38) = v10;
        }
      }
    }
  }
}

uint64_t CA::Render::VelocityState::set_keypath_velocity(uint64_t this, unint64_t a2, CA::Render::Function *a3, int a4, unint64_t a5, CA::Mat4Impl *a6, double *a7, int a8)
{
  v14 = this;
  v126[2] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a2)
    {
      if (HIDWORD(a2))
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = *a2;
      if (v15 >= 4)
      {
        if ((*(this + 153) & 0x10) == 0)
        {
          *(this + 156) = 1;
        }

        v16 = 4096;
        goto LABEL_278;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v17 = (v126 + 4);
  LODWORD(v126[1]) = 0;
  v126[0] = 0;
  this = CA::Render::key_path_atoms(a2, v126, a3);
  v20 = v15 == 1 && LODWORD(v126[0]) == 716;
  if (a5 != 16 || !v20)
  {
    if (!a5)
    {
      return this;
    }

    v23 = a5;
    for (i = a6; *i == 0.0; ++i)
    {
      if (!--v23)
      {
        return this;
      }
    }
  }

  if (a3)
  {
    if (!v20)
    {
      LODWORD(v126[0]) = 0;
      goto LABEL_55;
    }

    v21 = (*(*a3 + 120))(a3);
    v15 = 1;
    if (v21 > 0xC)
    {
      if (v21 == -1)
      {
        LODWORD(v126[0]) = 0;
        v15 = 1;
      }
    }

    else
    {
      if (((1 << v21) & 0x1F8) != 0)
      {
        v22 = 621;
      }

      else if (((1 << v21) & 0x1E00) != 0)
      {
        v22 = 720;
      }

      else
      {
        v22 = 616;
      }

      HIDWORD(v126[0]) = v22;
      v15 = 2;
      v17 = &v126[1];
    }

    this = (*(*a3 + 120))(a3);
    if (this <= 5)
    {
      if (this > 2)
      {
        if (this == 3)
        {
LABEL_51:
          ++v15;
          v25 = 759;
          goto LABEL_54;
        }

        if (this == 4)
        {
          goto LABEL_53;
        }

        goto LABEL_50;
      }

      if (!this)
      {
        goto LABEL_53;
      }

      if (this == 1)
      {
        goto LABEL_50;
      }

      if (this != 2)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if (this <= 9)
      {
        if ((this - 7) >= 3)
        {
          if (this != 6)
          {
            goto LABEL_55;
          }

          goto LABEL_52;
        }

        goto LABEL_51;
      }

      if (this != 12)
      {
        if (this != 11)
        {
          if (this != 10)
          {
            goto LABEL_55;
          }

LABEL_53:
          ++v15;
          v25 = 756;
          goto LABEL_54;
        }

LABEL_50:
        ++v15;
        v25 = 760;
LABEL_54:
        *v17 = v25;
        goto LABEL_55;
      }
    }

LABEL_52:
    ++v15;
    v25 = 762;
    goto LABEL_54;
  }

LABEL_55:
  if (SLODWORD(v126[0]) <= 692)
  {
    if (LODWORD(v126[0]) != 82)
    {
      if (LODWORD(v126[0]) != 569)
      {
        goto LABEL_216;
      }

      if (v15 == 2)
      {
        if (HIDWORD(v126[0]) == 760)
        {
          if (a4)
          {
            v81 = *a6 + *(v14 + 16);
          }

          else
          {
            v81 = *a6;
          }

          *(v14 + 16) = v81;
          v48 = 2;
          goto LABEL_277;
        }

        if (HIDWORD(v126[0]) == 756)
        {
          if (a4)
          {
            v49 = *a6 + *(v14 + 8);
          }

          else
          {
            v49 = *a6;
          }

          *(v14 + 8) = v49;
          v48 = 1;
          goto LABEL_277;
        }

        goto LABEL_276;
      }

      if (v15 != 1 || a5 < 2)
      {
LABEL_276:
        v48 = 0;
        goto LABEL_277;
      }

      if (a4)
      {
        v27 = *(v14 + 16);
        *(v14 + 8) = *a6 + *(v14 + 8);
        *(v14 + 16) = *(a6 + 1) + v27;
        if (a5 != 2)
        {
          v28 = *(a6 + 2) + *(v14 + 104);
LABEL_222:
          *(v14 + 104) = v28;
          v48 = 131;
          goto LABEL_277;
        }
      }

      else
      {
        *(v14 + 8) = *a6;
        *(v14 + 16) = *(a6 + 1);
        if (a5 != 2)
        {
          v28 = *(a6 + 2);
          goto LABEL_222;
        }
      }

      v48 = 3;
      goto LABEL_277;
    }

    if (v15 == 3)
    {
      if (HIDWORD(v126[0]) != 654)
      {
        if (HIDWORD(v126[0]) != 547)
        {
          goto LABEL_276;
        }

        if (LODWORD(v126[1]) != 760)
        {
          if (LODWORD(v126[1]) == 756)
          {
            if (a4)
            {
              v64 = *a6 + *(v14 + 24);
            }

            else
            {
              v64 = *a6;
            }

            *(v14 + 24) = v64;
          }

          goto LABEL_182;
        }

        if (a4)
        {
          v51 = *a6 + *(v14 + 32);
        }

        else
        {
          v51 = *a6;
        }

LABEL_181:
        *(v14 + 32) = v51;
LABEL_182:
        v48 = 4;
        goto LABEL_277;
      }

      if (LODWORD(v126[1]) != 295)
      {
        if (LODWORD(v126[1]) == 753)
        {
          if (a4)
          {
            v83 = *a6 + *(v14 + 40);
          }

          else
          {
            v83 = *a6;
          }

          *(v14 + 40) = v83;
        }

        goto LABEL_255;
      }

      if (a4)
      {
        v66 = *a6 + *(v14 + 48);
      }

      else
      {
        v66 = *a6;
      }
    }

    else
    {
      if (v15 != 2)
      {
        if (v15 == 1 && a5 >= 4)
        {
          if (a4)
          {
            v44 = *(v14 + 32);
            *(v14 + 24) = *a6 + *(v14 + 24);
            *(v14 + 32) = *(a6 + 1) + v44;
            v45 = *(v14 + 48);
            *(v14 + 40) = *(a6 + 2) + *(v14 + 40) - *a6;
            v46 = *(a6 + 1);
            v47 = *(a6 + 3) + v45;
          }

          else
          {
            *(v14 + 24) = *a6;
            *(v14 + 32) = *(a6 + 1);
            *(v14 + 40) = *(a6 + 2) - *a6;
            v47 = *(a6 + 3);
            v46 = *(a6 + 1);
          }

          *(v14 + 48) = v47 - v46;
          v48 = 12;
          goto LABEL_277;
        }

        goto LABEL_276;
      }

      if (a5 >= 2 && HIDWORD(v126[0]) == 547)
      {
        if (a4)
        {
          v50 = *(v14 + 32);
          *(v14 + 24) = *a6 + *(v14 + 24);
          v51 = *(a6 + 1) + v50;
        }

        else
        {
          *(v14 + 24) = *a6;
          v51 = *(a6 + 1);
        }

        goto LABEL_181;
      }

      v48 = 0;
      if (a5 < 2 || HIDWORD(v126[0]) != 654)
      {
        goto LABEL_277;
      }

      if (a4)
      {
        v65 = *(v14 + 48);
        *(v14 + 40) = *a6 + *(v14 + 40);
        v66 = *(a6 + 1) + v65;
      }

      else
      {
        *(v14 + 40) = *a6;
        v66 = *(a6 + 1);
      }
    }

    *(v14 + 48) = v66;
LABEL_255:
    v48 = 8;
    goto LABEL_277;
  }

  if (LODWORD(v126[0]) == 693)
  {
    if (v15 == 1 && a5 == 16 && !a8)
    {
      this = CA::Mat4Impl::mat4_is_velocity_affine_with_z_transform(a6, v18);
      if (!this || *(a6 + 1) != 0.0 || *(a6 + 4) != 0.0)
      {
        goto LABEL_276;
      }

      if (*(a6 + 12) == 0.0 && *(a6 + 13) == 0.0 && *(a6 + 10) == 0.0 && *(a6 + 14) == 0.0)
      {
        v115 = *a6;
        if (*a6 != 0.0 || *(a6 + 5) != 0.0)
        {
          v116 = *a7;
          v117 = *(v14 + 136);
          v118 = *(v14 + 144);
          v119 = *(v14 + 128);
          v120 = v117 * v115 + *(v14 + 120) * *a7;
          v121 = v117 * *a7;
          if (a4)
          {
            v116 = v121;
          }

          *(v14 + 136) = v116;
          if (a4)
          {
            v115 = v120;
          }

          *(v14 + 120) = v115;
          v122 = a7[5];
          v123 = *(a6 + 5);
          v124 = v118 * v122;
          if (!a4)
          {
            v124 = a7[5];
          }

          *(v14 + 144) = v124;
          v125 = v118 * v123 + v119 * v122;
          if (!a4)
          {
            v125 = v123;
          }

          *(v14 + 128) = v125;
          v48 = 2048;
          goto LABEL_277;
        }

        goto LABEL_276;
      }
    }

    if ((*(v14 + 153) & 0x10) != 0)
    {
      goto LABEL_219;
    }

    v29 = 11;
LABEL_218:
    *(v14 + 156) = v29;
    goto LABEL_219;
  }

  if (LODWORD(v126[0]) != 716)
  {
    if (LODWORD(v126[0]) == 764)
    {
      if (a4)
      {
        v26 = *a6 + *(v14 + 104);
      }

      else
      {
        v26 = *a6;
      }

      *(v14 + 104) = v26;
      v48 = 128;
      goto LABEL_277;
    }

LABEL_216:
    if ((*(v14 + 153) & 0x10) == 0)
    {
      v29 = 1;
      goto LABEL_218;
    }

LABEL_219:
    v48 = 0;
    v101 = 4096;
LABEL_220:
    *(v14 + 152) = v101;
    goto LABEL_277;
  }

  if (v15 != 3)
  {
    if (v15 != 2)
    {
      if (v15 == 1)
      {
        if (a8)
        {
          v30 = *a7;
          v31 = *a6;
          v32 = *(v14 + 72);
          v33 = *(v14 + 80);
          v34 = *(v14 + 64);
          v35 = v32 * *a6 + *(v14 + 56) * *a7;
          v36 = v32 * *a7;
          if (a4)
          {
            v30 = v36;
          }

          *(v14 + 72) = v30;
          if (a4)
          {
            v37 = v35;
          }

          else
          {
            v37 = v31;
          }

          *(v14 + 56) = v37;
          v38 = a7[1];
          v39 = *(a6 + 1);
          v40 = v33 * v38;
          if (!a4)
          {
            v40 = a7[1];
          }

          *(v14 + 80) = v40;
          v41 = v33 * v39 + v34 * v38;
          if (!a4)
          {
            v41 = v39;
          }

          *(v14 + 64) = v41;
          if (a4)
          {
            v42 = *(v14 + 96);
            *(v14 + 88) = *(a6 + 2) + *(v14 + 88);
            *(v14 + 96) = *(a6 + 3) + v42;
            v43 = *(a6 + 4) + *(v14 + 112);
          }

          else
          {
            *(v14 + 88) = *(a6 + 2);
            *(v14 + 96) = *(a6 + 3);
            v43 = *(a6 + 4);
          }

          *(v14 + 112) = v43;
          v48 = 368;
          goto LABEL_277;
        }

        if (a5 == 16)
        {
          this = CA::Mat4Impl::mat4_is_velocity_affine_with_z_transform(a6, v18);
          if (this && *(a6 + 1) == 0.0 && *(a6 + 4) == 0.0)
          {
            v67 = *a6;
            if (*a6 == 0.0 && *(a6 + 5) == 0.0)
            {
              v48 = 0;
            }

            else
            {
              v68 = *a7;
              v69 = *(v14 + 72);
              v70 = *(v14 + 80);
              v71 = *(v14 + 64);
              v72 = v69 * v67 + *(v14 + 56) * *a7;
              v73 = v69 * *a7;
              if (a4)
              {
                v68 = v73;
              }

              *(v14 + 72) = v68;
              if (a4)
              {
                v67 = v72;
              }

              *(v14 + 56) = v67;
              v74 = a7[5];
              v75 = *(a6 + 5);
              v76 = v70 * v74;
              if (!a4)
              {
                v76 = a7[5];
              }

              *(v14 + 80) = v76;
              v77 = v70 * v75 + v71 * v74;
              if (!a4)
              {
                v77 = v75;
              }

              *(v14 + 64) = v77;
              v48 = 48;
            }

            v78 = *(a6 + 12);
            if (v78 != 0.0 || *(a6 + 13) != 0.0)
            {
              if (a4)
              {
                v79 = *(v14 + 96);
                *(v14 + 88) = *(v14 + 88) + v78;
                v80 = *(a6 + 13) + v79;
              }

              else
              {
                *(v14 + 88) = v78;
                v80 = *(a6 + 13);
              }

              *(v14 + 96) = v80;
              v48 |= 0x40u;
            }

            if (*(a6 + 10) == 0.0 && *(a6 + 14) == 0.0)
            {
              goto LABEL_277;
            }

            goto LABEL_260;
          }

          goto LABEL_203;
        }

        if (a5 == 6)
        {
          if (*(a6 + 1) == 0.0 && *(a6 + 2) == 0.0)
          {
            v87 = *a6;
            if (*a6 == 0.0 && *(a6 + 3) == 0.0)
            {
              v48 = 0;
            }

            else
            {
              v88 = *a7;
              v89 = *(v14 + 72);
              v90 = *(v14 + 80);
              v91 = *(v14 + 64);
              v92 = v89 * v87 + *(v14 + 56) * *a7;
              v93 = v89 * *a7;
              if (a4)
              {
                v88 = v93;
              }

              *(v14 + 72) = v88;
              if (a4)
              {
                v87 = v92;
              }

              *(v14 + 56) = v87;
              v94 = a7[3];
              v95 = *(a6 + 3);
              v96 = v90 * v94;
              if (!a4)
              {
                v96 = a7[3];
              }

              *(v14 + 80) = v96;
              v97 = v90 * v95 + v91 * v94;
              if (!a4)
              {
                v97 = v95;
              }

              *(v14 + 64) = v97;
              v48 = 48;
            }

            v98 = *(a6 + 4);
            if (v98 != 0.0 || *(a6 + 5) != 0.0)
            {
              if (a4)
              {
                v99 = *(v14 + 96);
                *(v14 + 88) = *(v14 + 88) + v98;
                v100 = *(a6 + 5) + v99;
              }

              else
              {
                *(v14 + 88) = v98;
                v100 = *(a6 + 5);
              }

              *(v14 + 96) = v100;
              v48 |= 0x40u;
            }

            goto LABEL_277;
          }

LABEL_203:
          if ((*(v14 + 153) & 0x10) != 0)
          {
            goto LABEL_219;
          }

          v29 = 3;
          goto LABEL_218;
        }
      }

      goto LABEL_276;
    }

    if (HIDWORD(v126[0]) != 616)
    {
      if (HIDWORD(v126[0]) != 720)
      {
        if (HIDWORD(v126[0]) != 621)
        {
          goto LABEL_276;
        }

LABEL_121:
        v52 = *a7;
        v53 = *a6;
        v54 = *(v14 + 72);
        v55 = *(v14 + 80);
        v56 = *(v14 + 64);
        v57 = v54 * *a6 + *(v14 + 56) * *a7;
        v58 = v54 * *a7;
        if (a4)
        {
          v52 = v58;
        }

        *(v14 + 72) = v52;
        if (a4)
        {
          v59 = v57;
        }

        else
        {
          v59 = v53;
        }

        *(v14 + 56) = v59;
        v60 = *a7;
        v61 = *a6;
        v62 = v55 * *a7;
        if (!a4)
        {
          v62 = *a7;
        }

        *(v14 + 80) = v62;
        v63 = v55 * v61 + v56 * v60;
        if (!a4)
        {
          v63 = v61;
        }

        *(v14 + 64) = v63;
        v48 = 48;
        goto LABEL_277;
      }

      if (a4)
      {
        *(v14 + 88) = *a6 + *(v14 + 88);
        if (a5 > 1)
        {
          v85 = *(v14 + 96);
          v86 = *(a6 + 1);
LABEL_228:
          v102 = v86 + v85;
          goto LABEL_248;
        }
      }

      else
      {
        *(v14 + 88) = *a6;
        if (a5 >= 2)
        {
          v102 = *(a6 + 1);
LABEL_248:
          *(v14 + 96) = v102;
          goto LABEL_249;
        }
      }

      goto LABEL_249;
    }

    goto LABEL_175;
  }

  if (HIDWORD(v126[0]) == 720)
  {
    if (LODWORD(v126[1]) == 760)
    {
      if ((a4 & 1) == 0)
      {
        v102 = *a6;
        goto LABEL_248;
      }

      v85 = *(v14 + 96);
      v86 = *a6;
      goto LABEL_228;
    }

    if (LODWORD(v126[1]) != 756)
    {
      goto LABEL_216;
    }

    if (a4)
    {
      v82 = *a6 + *(v14 + 88);
    }

    else
    {
      v82 = *a6;
    }

    *(v14 + 88) = v82;
LABEL_249:
    v48 = 64;
    goto LABEL_277;
  }

  if (HIDWORD(v126[0]) == 621)
  {
    if (SLODWORD(v126[1]) > 759)
    {
      if (LODWORD(v126[1]) == 760)
      {
        v109 = *a7;
        v110 = *a6;
        v111 = *(v14 + 80);
        v112 = *(v14 + 64);
        v113 = v111 * *a7;
        if (!a4)
        {
          v113 = *a7;
        }

        *(v14 + 80) = v113;
        v114 = v111 * v110 + v112 * v109;
        if (!a4)
        {
          v114 = v110;
        }

        *(v14 + 64) = v114;
        v48 = 32;
        goto LABEL_277;
      }

      if (LODWORD(v126[1]) != 762)
      {
        goto LABEL_216;
      }

      v48 = 0;
LABEL_260:
      v101 = *(v14 + 152) | 0x400;
      goto LABEL_220;
    }

    if (LODWORD(v126[1]) == 756)
    {
      v103 = *a7;
      v104 = *a6;
      v105 = *(v14 + 72);
      v106 = *(v14 + 56);
      v107 = v105 * *a7;
      if (!a4)
      {
        v107 = *a7;
      }

      *(v14 + 72) = v107;
      v108 = v105 * v104 + v106 * v103;
      if (!a4)
      {
        v108 = v104;
      }

      *(v14 + 56) = v108;
      v48 = 16;
      goto LABEL_277;
    }

    if (LODWORD(v126[1]) != 759)
    {
      goto LABEL_216;
    }

    goto LABEL_121;
  }

  v48 = 0;
  if (*(v126 + 4) == 0x2FA00000268)
  {
LABEL_175:
    if (a4)
    {
      v84 = *a6 + *(v14 + 112);
    }

    else
    {
      v84 = *a6;
    }

    *(v14 + 112) = v84;
    v48 = 256;
  }

LABEL_277:
  v16 = *(v14 + 152) | v48;
LABEL_278:
  *(v14 + 152) = v16;
  return this;
}

void CA::Render::LayerNode::update_z_range(CA::Render *this, CA::Render::LayerNode *a2)
{
  v2 = *(this + 3);
  if ((v2 & 4) != 0)
  {
    *(this + 3) = v2 & 0xFFFFFFFFFFFFFFF3;
    v3 = *(this + 7);
    if (v3)
    {
      if (!*(this + 18))
      {
        v5 = *(this + 4);
        v6 = v5[9];
        v7 = v5[10];
        v8 = v5[11];
        v9 = v5[12];
        v10 = xmmword_183E21220;
        for (i = -1; ; ++i)
        {
          v12 = i + 1;
          v13 = i >= 2 ? 0.0 : v8;
          v14 = v13 + v6;
          v15 = v12 >= 2 ? v9 : 0.0;
          v16 = v15 + v7;
          v17 = v3[15] + v3[3] * v14 + v3[7] * v16;
          if (v17 <= 0.0)
          {
            break;
          }

          v18 = v3[14] + v3[2] * v14 + v3[6] * v16;
          if (v17 != 1.0)
          {
            v18 = v18 / v17;
          }

          *&v19.f64[1] = v10.i64[1];
          v19.f64[0] = v18;
          *&v20.f64[0] = v10.i64[0];
          v20.f64[1] = v18;
          v10 = vbslq_s8(vcgtq_f64(v20, v19), vdupq_lane_s64(*&v18, 0), v10);
          if (v12 == 3)
          {
            *(this + 15) = v10;
            return;
          }
        }
      }

      CA::Render::update_z_range_clip(this, a2);
    }

    else
    {
      v4 = *(this + 10);
      *(this + 30) = v4;
      *(this + 31) = v4;
    }
  }
}

uint64_t CA::Render::clip_layer(CA::Render *this, CA::Render::LayerNode *a2, double *a3, double *a4, double *a5)
{
  v75[1] = *MEMORY[0x1E69E9840];
  v9 = *(this + 18);
  if (v9)
  {
    v10 = (32 * (*(v9 + 2) + 5)) | 0xF;
  }

  else
  {
    v10 = 175;
  }

  MEMORY[0x1EEE9AC00](this);
  v11 = (v10 + 15) & 0x3FFFFFFFF0;
  v12 = v75 - v11;
  bzero(v75 - v11, v10);
  v13 = (&v75[1] - v11 + 7) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  bzero(v75 - v11, v10);
  v15 = 0;
  v16 = *(this + 4);
  v17 = v16[9];
  v18 = v16[10];
  v19 = v16[11];
  v20 = v16[12];
  v21 = &CA::Render::compute_occlusion_data(CA::Render::occlusion_closure *,CA::Render::LayerNode *)::my;
  v22 = &CA::Render::compute_occlusion_data(CA::Render::occlusion_closure *,CA::Render::LayerNode *)::mx;
  do
  {
    v23 = *v22++;
    v24 = v13 + v15;
    *v24 = v17 + v23 * v19;
    v25 = *v21++;
    *(v24 + 8) = v18 + v25 * v20;
    *(v24 + 16) = xmmword_183E20E60;
    v15 += 32;
  }

  while (v15 != 128);
  v26 = (&v75[1] - v11 + 7) & 0xFFFFFFFFFFFFFFF0;
  v27 = *(this + 7);
  if (v27)
  {
    v28 = (v13 + 16);
    v29 = 4;
    do
    {
      v30 = *(v28 - 2);
      v31 = *(v28 - 1);
      v32 = *v28;
      v33 = v28[1];
      *(v28 - 2) = *v27 * v30 + v27[4] * v31 + v27[8] * *v28 + v27[12] * v33;
      *(v28 - 1) = v27[1] * v30 + v27[5] * v31 + v27[9] * v32 + v27[13] * v33;
      *v28 = v27[2] * v30 + v27[6] * v31 + v27[10] * v32 + v27[14] * v33;
      v28[1] = v27[3] * v30 + v27[7] * v31 + v27[11] * v32 + v27[15] * v33;
      v28 += 4;
      --v29;
    }

    while (v29);
  }

  else
  {
    v34 = (v13 + 16);
    v35 = 4;
    do
    {
      v36 = *(v34 - 1);
      *(v34 - 2) = *(v34 - 2) + *(this + 8);
      *(v34 - 1) = v36 + *(this + 9);
      *v34 = *v34 + *(this + 10);
      v34 += 4;
      --v35;
    }

    while (v35);
  }

  v37 = 0;
  for (i = 24; i != 152; i += 32)
  {
    if (*(v13 + i) < 0.0001)
    {
      ++v37;
    }
  }

  if (!v37)
  {
    result = 4;
    v13 = (&v75[1] - v11 + 7) & 0xFFFFFFFFFFFFFFF0;
    v26 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
    goto LABEL_32;
  }

  if (v37 == 4)
  {
    return 0;
  }

  v39 = 0;
  v40 = 0;
  result = 0;
  v42 = v13 + 96;
  v43 = *(((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 0x78) + -0.0001;
  while (1)
  {
    v44 = v42;
    v45 = v43;
    v42 = v13 + v39;
    v43 = *(v13 + v39 + 24) + -0.0001;
    if (v45 >= 0.0)
    {
      v49 = 4 * result;
      if (v43 >= 0.0)
      {
        *(v26 + 8 * v49) = *(v13 + v39);
        *(v26 + 8 * ((4 * result) | 1u)) = *(v13 + v39 + 8);
        *(v26 + 8 * ((4 * result) | 2u)) = *(v13 + v39 + 16);
        *(v26 + 8 * ((4 * result) | 3u)) = *(v42 + 24);
      }

      else
      {
        v50 = v45 / (v45 - v43);
        v51 = (v26 + 8 * v49);
        v52 = vmlaq_n_f64(v44[1], vsubq_f64(*(v42 + 16), v44[1]), v50);
        *v51 = vmlaq_n_f64(*v44, vsubq_f64(*v42, *v44), v50);
        v51[1] = v52;
      }

      result = (result + 1);
      goto LABEL_27;
    }

    if (v43 >= 0.0)
    {
      break;
    }

LABEL_27:
    v39 += 32;
    if (v39 == 128)
    {
      goto LABEL_31;
    }
  }

  if (!v40)
  {
    v46 = v45 / (v45 - v43);
    v47 = (v26 + 8 * (4 * result));
    v48 = vmlaq_n_f64(v44[1], vsubq_f64(*(v13 + v39 + 16), v44[1]), v46);
    *v47 = vmlaq_n_f64(*v44, vsubq_f64(*(v13 + v39), *v44), v46);
    v47[1] = v48;
    *(v26 + 8 * (4 * result + 4)) = *(v13 + v39);
    *(v26 + 8 * (4 * result + 5)) = *(v13 + v39 + 8);
    *(v26 + 8 * (4 * result + 6)) = *(v13 + v39 + 16);
    *(v26 + 8 * (4 * result + 7)) = *(v42 + 24);
    result = (result + 2);
    v40 = 1;
    goto LABEL_27;
  }

  result = 0;
LABEL_31:
  v9 = *(this + 18);
LABEL_32:
  if (result >= 3 && v9)
  {
    do
    {
      v53 = 0;
      v54 = 0;
      v55 = v13;
      v13 = v26;
      v56 = v26 + 8 * (4 * result - 4);
      v57 = vaddvq_f64(vmlaq_f64(vmulq_f64(*(v56 + 16), *(v9 + 2)), *(v9 + 1), *v56));
      v58 = result;
      result = 0;
      do
      {
        v59 = v56;
        v60 = v57;
        v56 = v13 + 8 * (v53 & 0xFFFFFFFC);
        v61 = *v56;
        v62 = *(v56 + 16);
        v57 = vaddvq_f64(vmlaq_f64(vmulq_f64(*(v9 + 2), v62), *v56, *(v9 + 1)));
        if (v60 >= 0.0)
        {
          if (v57 >= 0.0)
          {
            *(v55 + 8 * (4 * result)) = v61.f64[0];
            *(v55 + 8 * ((4 * result) | 1u)) = *(v56 + 8);
            *(v55 + 8 * ((4 * result) | 2u)) = *(v56 + 16);
            *(v55 + 8 * ((4 * result) | 3u)) = *(v56 + 24);
          }

          else
          {
            v66 = v60 / (v60 - v57);
            v67 = (v55 + 8 * (4 * result));
            v68 = vmlaq_n_f64(v59[1], vsubq_f64(v62, v59[1]), v66);
            *v67 = vmlaq_n_f64(*v59, vsubq_f64(v61, *v59), v66);
            v67[1] = v68;
          }

          result = (result + 1);
        }

        else if (v57 >= 0.0)
        {
          if (v54)
          {
            return 0;
          }

          v63 = v60 / (v60 - v57);
          v64 = (v55 + 8 * (4 * result));
          v65 = vmlaq_n_f64(v59[1], vsubq_f64(v62, v59[1]), v63);
          *v64 = vmlaq_n_f64(*v59, vsubq_f64(v61, *v59), v63);
          v64[1] = v65;
          *(v55 + 8 * (4 * result + 4)) = *v56;
          *(v55 + 8 * (4 * result + 5)) = *(v56 + 8);
          *(v55 + 8 * (4 * result + 6)) = *(v56 + 16);
          *(v55 + 8 * (4 * result + 7)) = *(v56 + 24);
          result = (result + 2);
          v54 = 1;
        }

        v53 += 4;
        --v58;
      }

      while (v58);
      if (result < 3)
      {
        break;
      }

      v9 = *v9;
      v26 = v55;
    }

    while (v9);
  }

  else
  {
    v55 = v26;
  }

  if (result < 3)
  {
    return 0;
  }

  v69 = 0;
  v70 = a2;
  v71 = a3;
  v72 = a4;
  do
  {
    v73 = *(v55 + 8 * (v69 + 3));
    if (v73 <= 0.0)
    {
      v74 = INFINITY;
    }

    else
    {
      v74 = 1.0 / v73;
    }

    if (a2)
    {
      *v70 = *(v55 + 8 * v69) * v74;
    }

    if (a3)
    {
      *v71 = *(v55 + 8 * (v69 + 1)) * v74;
    }

    if (a4)
    {
      *v72 = *(v55 + 8 * (v69 + 2)) * v74;
    }

    v69 += 4;
    ++v72;
    ++v71;
    ++v70;
  }

  while (4 * result != v69);
  return result;
}

int8x16_t CA::Render::update_z_range_clip(CA::Render *this, CA::Render::LayerNode *a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](this);
  v4 = (v12 - ((v3 + 15) & 0xFFFFFFFF0));
  bzero(v4, v3);
  v6 = CA::Render::clip_layer(this, 0, 0, v4, v5);
  if (v6)
  {
    v7 = v6;
    result = xmmword_183E21220;
    do
    {
      v9 = *v4++;
      *&v10.f64[1] = result.i64[1];
      v10.f64[0] = v9;
      *&v11.f64[0] = result.i64[0];
      v11.f64[1] = v9;
      result = vbslq_s8(vcgtq_f64(v11, v10), vdupq_lane_s64(*&v9, 0), result);
      --v7;
    }

    while (v7);
    *(this + 15) = result;
  }

  else
  {
    result = vdupq_n_s64(0xFFF0000000000000);
    *(this + 15) = result;
    *(this + 3) |= 8uLL;
  }

  return result;
}

double CA::Render::GainMapLayer::get_bounds(CA::Render::GainMapLayer *this, const CA::Render::Layer *a2, Rect *a3, Rect *a4)
{
  if ((*(*this + 200))(this))
  {
    v8 = *(a2 + 72);
    *&a3->top = v8;
    v7 = *(a2 + 88);
    *&a3[2].top = v7;
    if (*&v7 <= *(&v7 + 1))
    {
      v9 = *(&v7 + 1);
    }

    else
    {
      v9 = *&v7;
    }

    if (v9 < 1.79769313e308)
    {
      v10 = *&v7 >= *(&v7 + 1) ? *(&v7 + 1) : *&v7;
      if (v10 > 0.0)
      {
        __asm { FMOV            V3.2D, #-2.0 }

        *&a3->top = vaddq_f64(v8, _Q3);
        _Q3.f64[0] = *&v7 + 4.0;
        *&v7 = *(&v7 + 1) + 4.0;
        a3[2] = *&_Q3.f64[0];
        *&a3[3] = *(&v7 + 1) + 4.0;
        if (_Q3.f64[0] <= 0.0 || *&v7 <= 0.0)
        {
          a3[2] = 0;
          a3[3] = 0;
        }
      }
    }

    if (a4)
    {
      *&v7 = 0;
      *&a4->top = 0u;
      *&a4[2].top = 0u;
    }
  }

  return *&v7;
}

uint64_t CA::Render::GainMapLayer::bounds_are_visible(CA::Render::GainMapLayer *this)
{
  v1 = 1;
  if (*(this + 16) != 3 && (byte_1ED4E985C & 1) == 0)
  {
    if (CADeviceSupportsHWGainMap::once != -1)
    {
      dispatch_once(&CADeviceSupportsHWGainMap::once, &__block_literal_global_86);
    }

    v1 = CADeviceSupportsHWGainMap::supports_gain_map ^ 1;
  }

  return v1 & 1;
}

uint64_t CA::Render::GainMapLayer::has_background(CA::Render::GainMapLayer *this, const CA::Render::Layer *a2, BOOL *a3)
{
  *a3 = 0;
  v3 = 1;
  if (*(this + 16) != 3 && (byte_1ED4E985C & 1) == 0)
  {
    if (CADeviceSupportsHWGainMap::once != -1)
    {
      dispatch_once(&CADeviceSupportsHWGainMap::once, &__block_literal_global_86);
    }

    v3 = CADeviceSupportsHWGainMap::supports_gain_map ^ 1;
  }

  return v3 & 1;
}

void add_non_visible_animating_layer(void *value)
{
  Mutable = non_visible_animating_layers;
  if (!non_visible_animating_layers)
  {
    Mutable = CFSetCreateMutable(0, 0, 0);
    non_visible_animating_layers = Mutable;
  }

  CFSetAddValue(Mutable, value);
}

uint64_t CA::Render::KeyValueArray::get_color_key(CA::Render::KeyValueArray *this, int a2, uint64_t a3)
{
  named_object = CA::Render::KeyValueArray::find_named_object_(this, a2);
  if ((named_object & 0x80000000) == 0)
  {
    v6 = *(*(this + named_object + 3) + 24);
    if (v6)
    {
      if (*(v6 + 12) == 62 && *(v6 + 16) >= 4u)
      {
        v7 = (*(v6 + 24) * 255.0 + 0.5);
        v8 = v7 & ~(v7 >> 31);
        v9 = (*(v6 + 48) * 255.0 + 0.5) & ~((*(v6 + 48) * 255.0 + 0.5) >> 31);
        if (v8 >= 255)
        {
          v8 = 255;
        }

        if (v9 >= 255)
        {
          v9 = 255;
        }

        __asm { FMOV            V2.2D, #0.5 }

        v15 = vshl_u32(vmin_s32(vmax_s32(vmovn_s64(vcvtq_s64_f64(vmlaq_f64(_Q2, vdupq_n_s64(0x406FE00000000000uLL), *(v6 + 32)))), 0), 0xFF000000FFLL), 0x800000010);
        return v15.i32[0] | (v8 << 24) | v9 | v15.i32[1];
      }
    }
  }

  return a3;
}

void X::small_vector_base<CA::Render::BackdropGroup::Item>::resize(uint64_t a1, unint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = &v4[-*a1];
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 6);
  if (v7 <= a2)
  {
    if (v7 >= a2)
    {
      return;
    }

    v9 = *(a1 + 24);
    if (v9 >= a2)
    {
      v16 = *a1;
    }

    else
    {
      v10 = *(a1 + 16);
      v11 = (v9 + 1) | ((v9 + 1) >> 1) | (((v9 + 1) | ((v9 + 1) >> 1)) >> 2);
      v12 = v11 | (v11 >> 4) | ((v11 | (v11 >> 4)) >> 8);
      v13 = v12 | (v12 >> 16) | ((v12 | (v12 >> 16)) >> 32);
      if (v13 + 1 > a2)
      {
        v14 = v13 + 1;
      }

      else
      {
        v14 = a2;
      }

      v15 = malloc_type_malloc(192 * v14, 0x10200405BFFB86AuLL);
      v16 = v15;
      v17 = *a1;
      v18 = *(a1 + 8);
      if (*a1 != v18)
      {
        v19 = v15;
        do
        {
          v20 = v17[1];
          *v19 = *v17;
          v19[1] = v20;
          v19[2] = v17[2];
          v19[3] = v17[3];
          v19[4] = v17[4];
          v19[5] = v17[5];
          v19[6] = v17[6];
          v19[7] = v17[7];
          v21 = v17[8];
          v22 = v17[9];
          v23 = v17[10];
          *(v19 + 172) = *(v17 + 172);
          v19[9] = v22;
          v19[10] = v23;
          v19[8] = v21;
          v19 += 12;
          v17 += 12;
        }

        while (v17 != v18);
      }

      if (v5 != v10)
      {
        free(*a1);
      }

      *a1 = v16;
      v4 = v16 + v6;
      *(a1 + 24) = v14;
    }

    for (i = &v16[12 * a2]; v4 != i; v4 += 192)
    {
      *v4 = 0;
      *(v4 + 1) = 0;
      *(v4 + 2) = 0;
      *(v4 + 90) = 0;
      *(v4 + 46) = 0;
      *(v4 + 8) = 0uLL;
      *(v4 + 9) = 0uLL;
      *(v4 + 2) = 0uLL;
      *(v4 + 3) = 0uLL;
    }
  }

  else
  {
    i = &v5[12 * a2];
  }

  *(a1 + 8) = i;
}

float CA::OGL::copy_gstate(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v2 = *(a2 + 80) | (*(a1 + 81) << 8);
  *(a1 + 80) = v2;
  result = *(a2 + 64);
  *(a1 + 64) = result;
  v4 = *(a2 + 80) & 0x100 | v2 & 0xFEFF;
  *(a1 + 80) = v4;
  *(a1 + 80) = v4 & 0xFBFF | *(a2 + 80) & 0x400;
  *(a1 + 72) = *(a2 + 72);
  return result;
}

void *CA::OGL::MetalContext::test_fence(CA::OGL::MetalContext *this, unint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long,unsigned long long>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned long long>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned long long>>>::find<unsigned long>(this + 417, a2);
  if (result)
  {
    v4 = atomic_load(this + 594);
    return (v4 >= result[3]);
  }

  return result;
}

void CA::Render::SDFLayer::~SDFLayer(CA::Render::SDFLayer *this, const CA::Render::Object *a2)
{
  CA::Render::SDFLayer::~SDFLayer(this, a2);
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v3 = malloc_zone;

  malloc_zone_free(v3, this);
}

{
  *this = &unk_1EF1FE9C0;
  v3 = *(this + 20);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      CA::Render::SDFState::remove_copy(v4, this);
      v5 = *(this + 20);
      v6 = *(v5 + 16);
      *(v5 + 16) = 0;
      if (v6)
      {
        if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
        }
      }
    }

    CA::Render::SDFState::remove_copy(*(this + 20), this);
  }

  if (*(this + 136) == 3)
  {
    v7 = *(this + 3);
    if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v7 + 16))(v7);
    }

    v8 = *(this + 4);
    if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v8 + 16))(v8);
    }
  }

  v9 = *(this + 20);
  if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v9 + 16))(v9);
  }

  --dword_1ED4EAAF8;
  *this = &unk_1EF1F6D08;
  if ((*(this + 3) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(this, a2);
  }
}

uint64_t CA::OGL::GaussianBlurFilter::get_edge_info(uint64_t a1, const CA::Render::Filter *a2, const CA::Render::Layer *a3, uint64_t a4, Rect *a5, float32x2_t *a6, BOOL *a7)
{
  v12 = *(*(a4 + 656) + 24);
  if ((*(v12 + 144) & 0x10) != 0)
  {
    v13 = vaddvq_f64(vmulq_f64(*v12, *v12));
    v14 = vaddvq_f64(vmulq_f64(*(v12 + 32), *(v12 + 32)));
    v15 = *(v12 + 120);
    if (v15 != 1.0)
    {
      v16 = 1.0 / (v15 * v15);
      v13 = v16 * v13;
      v14 = v16 * v14;
    }

    v17 = v13 != 1.0;
    if (v14 != 1.0)
    {
      v17 = 1;
    }

    v18 = sqrt(v13);
    v19 = sqrt(v14);
    if (v17)
    {
      v14 = v19;
      v13 = v18;
    }

    v25 = v14;
    v26 = v13;
  }

  else
  {
    v26 = *(v12 + 128);
    v25 = v26;
  }

  v20 = *(a2 + 5);
  v21 = CA::Render::KeyValueArray::get_float_key(v20, 400, 0.0) * 2.79999995;
  v22.f64[0] = v26;
  v22.f64[1] = v25;
  *a6 = vmul_n_f32(vcvt_f32_f64(v22), v21);
  int_key = CA::Render::KeyValueArray::get_int_key(v20, 392, 0);
  *a7 = int_key != 0;

  return CA::OGL::GaussianBlurFilter::get_bounds(int_key, a2, a3, a5);
}

float16x4_t *CA::OGL::MetalContext::clear_region(float16x4_t *result, uint64_t a2, uint64_t *a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v3 = result[84];
  if (!*&v3)
  {
    __assert_rtn("clear_region", "ogl-metal.mm", 4420, "surf != nullptr");
  }

  if (*a3 || *&v3 == *&result[85] || (v4 = *(*&v3 + 144), v4 < 0))
  {
    v5[0] = *a3;
    return CA::OGL::Context::paint_region(result, a2, v5, 0);
  }

  else
  {
    *(*&v3 + 144) = v4 | 0x20000000;
  }

  return result;
}

void CA::OGL::render_subclass(CA::OGL::Renderer &,CA::OGL::Layer const*)::visitor::visit_subclass(uint64_t a1)
{
  v238 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  v2 = *(*(v1 + 24) + 136);
  if (v2 && (v3 = *v2) != 0)
  {
    if (*(v3 + 12) == 3)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  if ((*(v4 + 13) & 0x10) == 0)
  {
    v5 = *(*(v1 + 16) + 256);
    if (v5)
    {
      v6 = *(a1 + 8);
      os_unfair_lock_lock((v5 + 52));
      v7 = *(v5 + 56);
      if (!v7)
      {
LABEL_17:
        os_unfair_lock_unlock((v5 + 52));
        return;
      }

      os_unfair_lock_lock((v7 + 40));
      v9 = *(v7 + 72);
      v8 = *(v7 + 80);
      if (v9 == v8)
      {
LABEL_16:
        os_unfair_lock_unlock((v7 + 40));
        goto LABEL_17;
      }

      v10 = *v6;
      while (*v9 != *(v5 + 24) || *(v5 + 32) != *(v9 + 8) || *(v9 + 16) != *(v5 + 40))
      {
        v9 += 192;
        if (v9 == v8)
        {
          goto LABEL_16;
        }
      }

      v11 = *(v10 + 82);
      v200 = *(v9 + 32);
      v201 = *(v9 + 48);
      v210 = 0u;
      v211 = 0u;
      CA::Render::BackdropLayer::get_backdrop_bounds(v4, *(v1 + 24), &v210);
      v14 = v211;
      v15 = vclezq_f64(v211);
      v16 = vdupq_laneq_s64(v15, 1);
      v17 = vorrq_s8(v16, v15);
      if ((*&v17.f64[0] & 0x8000000000000000) == 0)
      {
        v13 = v201;
        v18 = vclezq_f64(v201);
        v16 = vdupq_laneq_s64(v18, 1);
        if ((vorrq_s8(v16, v18).u64[0] & 0x8000000000000000) != 0 || (v17 = vmaxnmq_f64(v210, v200), v14 = vsubq_f64(vminnmq_f64(vaddq_f64(v210, v211), vaddq_f64(v200, v201)), v17), v19 = vclezq_f64(v14), v13 = vdupq_laneq_s64(v19, 1), v16 = vorrq_s8(v13, v19), v16.i64[0] < 0))
        {
          v211 = 0uLL;
          v17.f64[1] = 0.0;
          *cf = 0u;
          goto LABEL_25;
        }

        v210 = v17;
        v211 = v14;
      }

      *cf = v14;
LABEL_25:
      v20 = *(v11 + 24);
      v17.f64[0] = 1.0;
      v16.i64[0] = 1.0;
      v21 = CA::OGL::transform_filter_bits(v20, v12, v17, v16, v13);
      v22.i64[0] = 1.0;
      v202 = v210;
      v199 = CA::OGL::rect_filter_bits(v20, v21, v23, v210, *cf, v22, 1.0);
      v214 = 0u;
      v215 = 0u;
      v196 = *(v11 + 36);
      v195 = *(v11 + 32);
      v197 = *(v11 + 38);
      if (*(v9 + 180) != 1 || !(*(*v10 + 232))(v10, 27))
      {
        v49 = *(v7 + 48);
        if (!v49)
        {
          goto LABEL_129;
        }

        if (*(v49 + 8) != v10)
        {
          goto LABEL_129;
        }

        v203 = *(v49 + 32);
        if (!v203)
        {
          goto LABEL_129;
        }

        v194 = v11;
        LODWORD(v25) = *(v49 + 28);
        v50 = &v214;
        v51 = 16;
        *cfa = v25;
        do
        {
          *v50 = *(v9 + 8 * v51);
          CA::Transform::apply_to_point2((v49 + 72), v50, v24);
          v52 = *cfa;
          *v50 = vmul_n_f32(*v50, *cfa);
          ++v50;
          ++v51;
        }

        while (v51 != 20);
        if (*(v49 + 48))
        {
          v53 = 0;
          v54 = *(v49 + 48);
          goto LABEL_126;
        }

        v53 = 0;
        LODWORD(v52) = *(v49 + 24);
LABEL_125:
        v54 = v203;
        if (v203)
        {
LABEL_126:
          *cfc = v52;
          v133 = v54[9];
          if (((*(*v10 + 144))(v10) & *&v133) == *&v133)
          {
            v134 = *(v1 + 24);
            v135 = *(v134 + 40);
            if ((v135 & 0xFu) > 0xAuLL)
            {
              v136 = 1;
            }

            else
            {
              v136 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[v135 & 0xF];
            }

            v137 = v135 >> 4;
            if (v137 > 0xA)
            {
              v138 = 1;
            }

            else
            {
              v138 = CA::OGL::texture_filter(CA::Render::ImageFilter)::filters[v137];
            }

            if ((*(v1 + 40) & 0x10) != 0)
            {
              v143 = *(v134 + 136);
              if (v143)
              {
                v144 = *(v143 + 112);
              }

              else
              {
                v144 = 0;
              }

              CA::OGL::fill_surface_mesh(v10, v144, (v134 + 72), v54, v136, v138, 1, *cfc, 0.0);
              goto LABEL_16;
            }

            v139 = 0.0;
            CA::OGL::Context::bind_surface(v10, v54, 0, v136, v138, 0.0);
            v140 = *(v10 + 2);
            *(v140 + 12) = (v195 | (v196 << 32)) >> 32;
            *(v140 + 8) = v195;
            *(v140 + 14) = v197;
            v141 = *(v10 + 2);
            v141[13] = vmla_f32(v141[13], vcvt_f32_s32(vneg_s32(v54[6])), v141[12]);
            v142 = *(*(v1 + 24) + 136);
            if (v142)
            {
              v139 = *(v142 + 232);
            }

            if (v197 == COERCE_SHORT_FLOAT(COERCE_UNSIGNED_INT(1.0)))
            {
              v145 = v54[18].i16[2];
              if ((v199 & 9) != 0)
              {
                v146 = 0;
                v147 = 1;
                if ((*(v1 + 41) & 0xF) != 0 || (v145 & 0x10) == 0)
                {
                  goto LABEL_155;
                }

                goto LABEL_148;
              }

              if ((v145 & 0x10) != 0)
              {
LABEL_148:
                v148 = v141[62].u8[0];
                if (v148 > 3)
                {
                  v146 = 0;
                }

                else
                {
                  v146 = dword_183E219A0[v148];
                }

                v147 = v139 != 0.0;
                if (v139 == 0.0 && v142)
                {
                  v147 = *(v142 + 72) != 0;
                }

LABEL_155:
                v149 = v141[62].u8[0];
                if (v149 >= 2 && (v149 != 3 || v147))
                {
                  v141[62].i8[1] |= 1u;
                }

                v150 = vsubq_f64(v210, v200);
                v151 = vcvt_f32_f64(vdivq_f64(v150, v201));
                v152 = vdivq_f64(vaddq_f64(v150, v211), v201);
                v153 = vcvt_hight_f32_f64(v151, v152);
                v226 = v153;
                if ((v53 & 1) == 0)
                {
                  v153.i32[0] = *(v4 + 40);
                  if (v153.f32[0] != 0.0)
                  {
                    v154 = vdup_lane_s32(*v153.f32, 0);
                    *v226.f32 = vsub_f32(v151, v154);
                    *&v226.u32[2] = vadd_f32(v154, vcvt_f32_f64(v152));
                  }

                  v155 = *(v10 + 2);
                  v156 = v155[12];
                  v157 = v54[7];
                  v158.i64[0] = v157.i32[0];
                  v158.i64[1] = v157.i32[1];
                  __asm { FMOV            V3.2D, #-0.5 }

                  v155[2].i8[3] = 5;
                  v164 = *(v10 + 2);
                  v164[48] = vmul_f32(v156, 0x3F0000003F000000);
                  v164[49] = vcvt_f32_f64(vmulq_f64(vaddq_f64(vcvtq_f64_s64(v158), _Q3), vcvtq_f64_f32(v156)));
                }

                v165 = *(v1 + 41);
                v166 = *(v194 + 24);
                v231 = &v210;
                *&v232 = v166;
                DWORD2(v232) = v146 | v199;
                HIDWORD(v232) = v165;
                *&v234 = 0;
                *(&v234 + 1) = &v214;
                v167 = *(v1 + 24);
                v168 = *(v167 + 136);
                if (v168)
                {
                  v169 = *(v168 + 72);
                  if (v169)
                  {
                    CA::OGL::fill_uneven_round_rect_tex(v10, &v231, (v169 + 24), &v226, *(v167 + 44) & 3);
                    goto LABEL_174;
                  }

                  v170 = *(v168 + 56);
                  if (v170)
                  {
                    v171 = (*(*v170 + 80))(v170);
                    v172 = *(v1 + 24);
                    v173 = *(v172 + 136);
                    if (v173 && (v174 = *(v173 + 64)) != 0)
                    {
                      if (*(v174 + 16) > 3u)
                      {
                        v176 = vsubq_f64(*(v174 + 40), *(v174 + 24));
                        v220 = *(v174 + 24);
                        v221 = v176;
                      }

                      else
                      {
                        v220 = 0u;
                        v221 = 0u;
                      }
                    }

                    else
                    {
                      __asm { FMOV            V0.2D, #0.5 }

                      v220 = _Q0;
                      v221 = 0uLL;
                    }

                    CA::OGL::fill_corner_rect_tex(v10, &v231, v171, &v220, *(*(v1 + 16) + 24) & 1, HIWORD(*(v172 + 48)) & 1, &v226, *(v172 + 42) & 0xF, v139, v139, 0);
                    goto LABEL_174;
                  }
                }

                CA::OGL::fill_round_rect_tex(v10, &v231, v226.f32, *(v167 + 42) & 0xF, *(v167 + 44) & 3, 0, v139, v139);
LABEL_174:
                *(*(v10 + 2) + 497) &= ~1u;
                CA::OGL::Context::unbind_surface(v10, v54, 0);
                if (v53)
                {
                  CA::OGL::Context::release_surface(v10, v54);
                }

                *(*(v10 + 2) + 19) = 0;
                goto LABEL_16;
              }
            }

            v146 = 0;
            v147 = 1;
            goto LABEL_155;
          }
        }

LABEL_129:
        *(v6 + 100) = 1;
        goto LABEL_16;
      }

      v194 = v11;
      v198 = v10;
      v209[0] = v202;
      v209[1] = *cf;
      v26 = *v6;
      if (!*(*(*v6 + 672) + 8))
      {
        v87 = *(v7 + 624);
        if (v87)
        {
          v88 = *(v87 + 16);
          if (v88)
          {
            v89 = *(v87 + 24);
            if ((*(v89 + 13) & 1) != 0 && v88 == 1)
            {
              v90 = *(v26 + 656);
              if (*(v90 + 80) == 3 && *(*(v1 + 24) + 28) == 0.0 && *(v89 + 24) == 113)
              {
                v91 = *(v26 + 600);
                if (!v91 || (*(*(v6 + 1) + 1376) & 1) != 0 || (LOBYTE(v231) = 0, (*(*v91 + 80))(v91, CA::OGL::render_in_place_backdrop_with_color_matrix(CA::OGL::Renderer &,CA::OGL::Layer const*,CA::Render::BackdropGroup *,CA::Rect)::$_0::__invoke, &v231), (v231 & 1) == 0))
                {
                  *(&v236 + 1) = 0;
                  v237 = 0;
                  v229 = 0u;
                  v230 = 0u;
                  v227 = 0u;
                  v228 = 0u;
                  v226 = 0u;
                  v92 = *(v89 + 40);
                  CA::OGL::get_filter_color_matrix(v92, &v226);
                  v231 = __PAIR64__(DWORD1(v227), v226.u32[0]);
                  *&v232 = __PAIR64__(HIDWORD(v229), DWORD2(v228));
                  *(&v232 + 1) = __PAIR64__(DWORD2(v227), v226.u32[1]);
                  *&v233 = __PAIR64__(v230, HIDWORD(v228));
                  *(&v233 + 1) = __PAIR64__(HIDWORD(v227), v226.u32[2]);
                  *&v234 = __PAIR64__(DWORD1(v230), v229);
                  *(&v234 + 1) = __PAIR64__(v228, v226.u32[3]);
                  *&v235 = __PAIR64__(DWORD2(v230), DWORD1(v229));
                  *(&v235 + 1) = __PAIR64__(DWORD1(v228), v227);
                  *&v236 = __PAIR64__(HIDWORD(v230), DWORD2(v229));
                  float_key = CA::Render::KeyValueArray::get_float_key(v92, 358, 0.0);
                  if (initialized[0] != -1)
                  {
                    dispatch_once_f(initialized, 0, init_debug);
                  }

                  v94 = *&dword_1ED4E9760;
                  if (*&dword_1ED4E9760 == 0.0)
                  {
                    v94 = float_key;
                  }

                  v95 = powf(v94, 1.0 / *(v26 + 576));
                  int_key = CA::Render::KeyValueArray::get_int_key(*(v89 + 40), 359, 0);
                  if (BYTE14(xmmword_1ED4E98AC) == 1)
                  {
                    int_key = 1;
                  }

                  *(&v236 + 2) = v95;
                  *(&v236 + 3) = int_key;
                  v237 = 0;
                  v225 = 0;
                  v223 = 0u;
                  v224 = 0u;
                  v221 = 0u;
                  v222 = 0u;
                  v220 = 0u;
                  CA::OGL::copy_gstate(&v220, v90);
                  *(&v223 + 1) = &v231;
                  LOBYTE(v225) = 43;
                  *&v220 = CA::OGL::Context::set_gstate(v26, &v220);
                  *(*(v26 + 16) + 8) = v222;
                  v97 = *(v26 + 16);
                  if (*(v97 + 496) >= 2u)
                  {
                    *(v97 + 497) |= 1u;
                  }

                  v98 = *(v1 + 41);
                  v216 = v209;
                  v217 = v221.f64[1];
                  LODWORD(v218) = 0;
                  DWORD1(v218) = v98;
                  *(&v218 + 1) = 0;
                  v219 = 0uLL;
                  v99 = *(v1 + 24);
                  v100 = *(v99 + 136);
                  v101 = 0.0;
                  if (v100)
                  {
                    v102 = *(v100 + 56);
                    if (v102)
                    {
                      v103 = (*(*v102 + 80))(v102, 0.0);
                      v104 = *(v1 + 24);
                      v105 = *(v104 + 136);
                      if (v105)
                      {
                        v106 = *(v105 + 64);
                        if (v106)
                        {
                          if (*(v106 + 16) > 3u)
                          {
                            v180 = vsubq_f64(*(v106 + 40), *(v106 + 24));
                            v212 = *(v106 + 24);
                            v213 = v180;
                          }

                          else
                          {
                            v212 = 0u;
                            v213 = 0u;
                          }
                        }

                        else
                        {
                          __asm { FMOV            V0.2D, #0.5 }

                          v212 = _Q0;
                          v213 = 0uLL;
                        }

                        v178 = *(v105 + 232);
                      }

                      else
                      {
                        __asm { FMOV            V0.2D, #0.5 }

                        v212 = _Q0;
                        v213 = 0uLL;
                        v178 = 0.0;
                      }

                      CA::OGL::fill_corner_rect(v26, &v216, v103, v212.i64, *(*(v1 + 16) + 24) & 1, HIWORD(*(v104 + 48)) & 1, 15, v178, v178);
                      goto LABEL_184;
                    }

                    v101 = *(v100 + 232);
                  }

                  CA::OGL::fill_round_rect(v26, &v216, (*(v99 + 42) & 0xF), *(v99 + 44) & 3, v101, v101);
LABEL_184:
                  *(*(v26 + 16) + 497) &= ~1u;
                  CA::OGL::Context::set_gstate(v26, **(v26 + 656));
                  goto LABEL_16;
                }
              }
            }
          }
        }
      }

      v27 = 0;
      v28 = vcvt_f32_f64(*(v9 + 32));
      v29 = vadd_f32(vcvt_f32_f64(*(v9 + 48)), v28);
      *&v214 = v28;
      *(&v214 + 1) = __PAIR64__(v28.u32[1], v29.u32[0]);
      v28.i32[1] = v29.i32[1];
      *&v215 = v29;
      *(&v215 + 1) = v28;
      v30 = *(v194 + 24);
      do
      {
        CA::Transform::apply_to_point2(v30, (&v214 + v27), v24);
        v27 += 8;
      }

      while (v27 != 32);
      v33 = vbsl_s8(vcgt_f32(*(&v214 + 8), *&v214), *&v214, *(&v214 + 8));
      v34 = vbsl_s8(vcgt_f32(*(&v215 + 8), *&v215), *&v215, *(&v215 + 8));
      v35 = vbsl_s8(vcgt_f32(v34, v33), v33, v34);
      v36 = vbsl_s8(vcgt_f32(*&v214, *(&v214 + 8)), *&v214, *(&v214 + 8));
      *v31.i8 = vbsl_s8(vcgt_f32(*&v215, *(&v215 + 8)), *&v215, *(&v215 + 8));
      *v32.i8 = vcgt_f32(v36, *v31.i8);
      v37 = vsub_f32(vbsl_s8(*v32.i8, v36, *v31.i8), v35);
      v31.i32[0] = COERCE_UNSIGNED_INT(vaddv_f32(v37)) & 0x7FFFFFFF;
      v32.i32[0] = 2139095040;
      v38 = vdupq_lane_s32(*&vcgtq_s32(v32, v31), 0);
      v39 = vbslq_s8(v38, vcvtq_f64_f32(v37), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL));
      v40 = vceqzq_f64(v39);
      if ((vorrq_s8(vdupq_laneq_s64(v40, 1), v40).u64[0] & 0x8000000000000000) != 0 || (v41 = vceqq_f64(v39, v39), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v41), 1), v41).u64[0] & 0x8000000000000000) != 0))
      {
        v209[0] = 0uLL;
        v48 = 0;
        v47 = -1;
      }

      else
      {
        v42 = vbslq_s8(v38, vcvtq_f64_f32(v35), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL));
        v43 = vmaxnmq_f64(v42, vdupq_n_s64(0xC1BFFFFFFF000000));
        v44 = vminnmq_f64(vaddq_f64(v42, v39), vdupq_n_s64(0x41C0000000000000uLL));
        v45 = vcvtmq_s64_f64(v43);
        v46 = vsubq_s64(vcvtpq_s64_f64(v44), v45);
        v209[0] = vuzp1q_s32(v45, v46);
        v47 = vadd_s32(vmovn_s64(v45), -1);
        v48 = vmovn_s64(v46);
      }

      v10 = v198;
      if ((v199 & 9) != 0)
      {
        v55 = v48.i32[0];
        if (v48.i32[0] <= v48.i32[1])
        {
          v56 = v48.i32[1];
        }

        else
        {
          v56 = v48.i32[0];
        }

        if (v48.i32[0] >= v48.i32[1])
        {
          v55 = v48.i32[1];
        }

        if (v56 <= 1073741822 && v55 >= 1)
        {
          v58 = vadd_s32(v48, 0x200000002);
          v59 = vclez_s32(v58);
          if (vorr_s8(v59, vdup_lane_s32(v59, 1)).u8[0])
          {
            v60 = -1;
          }

          else
          {
            v60 = 0;
          }

          *&v209[0] = v47;
          *(&v209[0] + 1) = vbic_s8(v58, vdup_n_s32(v60));
        }
      }

      v208 = 0uLL;
      CA::Shape::get_bounds(*(*(v198 + 82) + 8), &v208);
      v61 = *(v198 + 84);
      if (v61)
      {
        v62 = v61 + 6;
      }

      else
      {
        v62 = (v198 + 608);
      }

      v63 = *(&v208 + 8);
      v64 = vclez_s32(*(&v208 + 8));
      if ((vpmax_u32(v64, v64).u32[0] & 0x80000000) == 0)
      {
        v65 = v62[1];
        v66 = vclez_s32(v65);
        if ((vpmax_u32(v66, v66).u32[0] & 0x80000000) != 0 || (*&v67 = vmax_s32(*&v208, *v62), v68 = vsub_s32(vmin_s32(vadd_s32(*&v208, *(&v208 + 8)), vadd_s32(*v62, v65)), *&v67), v69 = vclez_s32(v68), (vpmax_u32(v69, v69).u32[0] & 0x80000000) != 0))
        {
          v63 = 0;
          *(&v208 + 1) = 0;
        }

        else
        {
          *(&v67 + 1) = v68;
          v208 = v67;
          v63 = v68;
        }
      }

      v70 = vclez_s32(*(v209 + 8));
      if ((vpmax_u32(v70, v70).u32[0] & 0x80000000) == 0)
      {
        v71 = vclez_s32(v63);
        if ((vpmax_u32(v71, v71).u32[0] & 0x80000000) != 0 || (v72 = vadd_s32(*&v208, v63), *&v73 = vmax_s32(*&v209[0], *&v208), v74 = vsub_s32(vmin_s32(vadd_s32(*&v209[0], *(v209 + 8)), v72), *&v73), v75 = vclez_s32(v74), (vpmax_u32(v75, v75).u32[0] & 0x80000000) != 0))
        {
          *(&v209[0] + 1) = 0;
        }

        else
        {
          *(&v73 + 1) = v74;
          v209[0] = v73;
        }
      }

      v76 = (*(*v198 + 696))(v198, 1, v209, 2063, @"image-render-backdrop");
      v203 = v76;
      if (!v76)
      {
LABEL_124:
        LODWORD(v52) = 1.0;
        v53 = 1;
        goto LABEL_125;
      }

      v77 = v76;
      if (v1 && (v78 = *(v1 + 24)) != 0)
      {
        v80 = CA::Render::Layer::process_id(*(v78 + 152));
        v81 = *(v1 + 24);
        if (v81)
        {
          layer_resource_text = CA::Render::create_layer_resource_text(v81, v79);
LABEL_75:
          cfb = layer_resource_text;
          (*(*v198 + 888))(v198, v77, 0, v80, @"image-render-backdrop", layer_resource_text);
          v83 = *(*(v198 + 2) + 496);
          v227 = 0u;
          v228 = 0u;
          v226 = 0u;
          CA::Shape::operator=(&v226, v209);
          v233 = 0u;
          v234 = 0u;
          v235 = 0u;
          v236 = 0u;
          v232 = 0u;
          v84 = *(v198 + 82);
          *(&v233 + 1) = 0x3C003C003C003C00;
          v234 = 0uLL;
          *&v235 = 0;
          WORD4(v236) = 1;
          v231 = 0;
          if (v84)
          {
            v232 = *(v84 + 8);
            *&v233 = *(v84 + 24);
            v85 = *(v84 + 64);
            WORD4(v236) = *(v84 + 80) & 0x100 | 1;
            v86 = WORD4(v236) | *(v84 + 80) & 0x400;
          }

          else
          {
            *(&v232 + 1) = 0;
            *&v233 = 0;
            v86 = 1025;
            v85 = 1.0;
          }

          *(&v235 + 2) = v85;
          WORD4(v236) = v86;
          *&v232 = &v226;
          v231 = CA::OGL::Context::set_gstate(v198, &v231);
          CA::OGL::Context::push_surface(v198, v77, 0, 8, 0);
          CA::OGL::capture_in_place_backdrop(v6, 0);
          v107 = *(v1 + 24);
          v108 = v107[2].f32[0];
          v216 = vcvt_f16_f32(v107[1]);
          CA::OGL::colormatched_layer_color(&v220, v6, v1, &v216, v108);
          v109 = v220;
          if (v220 | (WORD1(v220) << 16) | (WORD2(v220) << 32) & 0xFFFFFFFFFFFFLL | (WORD3(v220) << 48))
          {
            v191 = WORD2(v220) << 32;
            v192 = WORD3(v220) << 48;
            v190 = WORD1(v220) << 16;
            *(*(v198 + 2) + 16) = 0;
            *(*(v198 + 2) + 497) |= 1u;
            *(*(v198 + 2) + 496) = 3;
            v193 = v83;
            v110 = v209[0];
            v111 = DWORD1(v209[0]);
            v113 = DWORD2(v209[0]);
            v112 = HIDWORD(v209[0]);
            *(v198 + 18) = 0;
            *(v198 + 14) = v198 + 1386;
            *(v198 + 120) = xmmword_183E20E50;
            CA::OGL::Context::array_check(v198, 1);
            v114 = v110;
            v115 = v111;
            v116 = v113 + v110;
            v77 = v203;
            v117 = v116;
            v118 = v112 + v111;
            v83 = v193;
            v10 = v198;
            CA::OGL::Context::array_rect(v198, v114, v115, v117, v118);
            v119 = *(v10 + 17) + 48 * *(v10 + 18);
            v120 = v192 | v191 | v190 | v109;
            *(v119 - 160) = v120;
            *(v119 - 112) = v120;
            *(v119 - 64) = v120;
            *(v119 - 16) = v120;
            CA::OGL::Context::array_flush(v198);
          }

          *(*(v10 + 2) + 496) = v83;
          v121 = *(v7 + 624);
          if (v121)
          {
            v122 = *(v121 + 16);
            if (v122)
            {
              if (*(*(v121 + 24) + 13))
              {
LABEL_111:
                v212.i32[0] = 0;
                v125 = CA::OGL::prepare_filters(v6, v1, v121, 1, v212.i32, 1, 0);
                if (v125)
                {
                  v126 = v125;
                  v127 = v125;
                  do
                  {
                    v220 = v77;
                    v216 = 0x3F8000003F800000;
                    CA::OGL::emit_filter(v6, v127, v1, &v220, &v216, 0, 0, 0, 1.0, 0, 0, 0);
                    v128 = *(v77 + 148);
                    if ((v128 & 0x10) != 0 && (v129 = v126[6]) != 0)
                    {
                      if (CA::ColorMatrix::is_opaque_identity(v129))
                      {
                        v130 = 16;
                      }

                      else
                      {
                        v130 = 0;
                      }
                    }

                    else
                    {
                      v130 = 0;
                    }

                    v131 = v128 & 0xFFEF | v130;
                    v77 = v203;
                    v203[18].i16[2] = v131;
                    v127 = *v127;
                  }

                  while (v127);
                  do
                  {
                    v132 = *v126;
                    CA::OGL::finalize_filter(v126);
                    v126 = v132;
                  }

                  while (v132);
                }
              }

              else
              {
                v123 = 0;
                while (v122 - 1 != v123)
                {
                  v124 = *(v121 + 32 + 8 * v123++);
                  if (*(v124 + 13))
                  {
                    if (v123 >= v122)
                    {
                      break;
                    }

                    goto LABEL_111;
                  }
                }
              }
            }
          }

          if (BYTE1(xmmword_1ED4E97DC) == 1)
          {
            v225 = 0;
            v223 = 0u;
            v224 = 0u;
            v221 = 0u;
            v222 = 0u;
            v220 = 0u;
            CA::OGL::copy_gstate(&v220, *(v10 + 82));
            *&v221.f64[1] = &CA::identity_transform;
            *&v220 = CA::OGL::Context::set_gstate(v10, &v220);
            if ((*(v77 + 92) & 0x800) != 0)
            {
              v183 = 8388736;
            }

            else
            {
              v183 = 2155872384;
            }

            if (SDWORD2(v209[0]) <= SHIDWORD(v209[0]))
            {
              v184 = HIDWORD(v209[0]);
            }

            else
            {
              v184 = DWORD2(v209[0]);
            }

            v181.i32[0] = 1073741822;
            v182.i32[0] = v184;
            v185 = vdupq_lane_s32(*&vcgtq_s32(v182, v181), 0);
            v186.i64[0] = SLODWORD(v209[0]);
            v186.i64[1] = SDWORD1(v209[0]);
            v188 = vcvtq_f64_s64(v186);
            v187 = vbslq_s8(v185, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), v188);
            *v188.i64 = SDWORD2(v209[0]);
            v189 = SHIDWORD(v209[0]);
            if (v184 > 1073741822)
            {
              *v188.i64 = 1.79769313e308;
              v189 = 1.79769313e308;
            }

            v212 = v187;
            *&v213.f64[0] = v188.i64[0];
            v213.f64[1] = v189;
            v216 = &v212;
            v217 = v221.f64[1];
            v218 = 0u;
            v219 = 0u;
            CA::OGL::fill_color_rect(v10, &v216, v183, 0.0, v188);
            CA::OGL::Context::set_gstate(v10, **(v10 + 82));
          }

          CA::OGL::Context::pop_surface(v10);
          CA::OGL::Context::set_gstate(v10, **(v10 + 82));
          if (cfb)
          {
            CFRelease(cfb);
          }

          goto LABEL_124;
        }
      }

      else
      {
        v80 = 0;
      }

      layer_resource_text = 0;
      goto LABEL_75;
    }
  }
}

{
  __dst[63] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  v2 = *(v1 + 8);
  if (*(v2 + 1380))
  {
    *(v1 + 101) = 1;
  }

  else if ((*(v2 + 306) & 8) == 0)
  {
    v3 = *v1;
    if ((*(*v1 + 1384) & 2) == 0)
    {
      v4 = v3[75];
      if (v4)
      {
        v5 = (*(*v4 + 16))(v4);
        if (v5)
        {
          v6 = v5;
          if ((*(*v5 + 600))(v5))
          {
            v7 = (*(*v6 + 608))(v6);
            if (v7)
            {
              v8 = v7;
              v9 = v3[84];
              do
              {
                v10 = v9;
                v9 = *(v9 + 8);
              }

              while (v9);
              v11 = (*(*v3 + 1016))(v3, v7, 1);
              v12 = *(v10 + 56);
              v20 = *(v10 + 48);
              CA::OGL::Context::push_surface(v3, v11, 0, 0, 0);
              v13 = v3[2];
              memcpy(__dst, v13, 0x1F8uLL);
              v3[2] = __dst;
              v22[4] = 0x3C003C003C003C00;
              memset(&v22[5], 0, 24);
              __dst[0] = v13;
              v22[9] = 0;
              v22[8] = 1065353216;
              v22[10] = 1025;
              v22[2] = 0;
              v22[3] = &CA::identity_transform;
              v22[0] = 0;
              v22[1] = &CA::Shape::_infinite_shape;
              v22[0] = CA::OGL::Context::set_gstate(v3, v22);
              *(v3[2] + 497) &= ~1u;
              *(v3[2] + 16) = 1;
              CA::OGL::Context::bind_surface(v3, v10, 0, 0, 0, 0.0);
              v3[18] = 0;
              v14 = v3 + 1386;
              v3[14] = v3 + 1386;
              *(v3 + 15) = xmmword_183E20E50;
              if (v3[19] <= 3uLL)
              {
                *(v3 + 692) |= 0x20u;
                CA::OGL::Context::array_flush(v3);
                v3[18] = 0;
                v3[14] = v14;
                *(v3 + 15) = xmmword_183E20E50;
              }

              v15 = v20.i32[0];
              v16 = v20.i32[1];
              v21 = vcvt_f32_s32(vadd_s32(v12, v20));
              CA::OGL::Context::array_rect(v3, v15, v16, *v21.i32, *&v21.i32[1]);
              v17 = v3[17] + 48 * v3[18];
              *(v17 - 176) = v15;
              *(v17 - 172) = v16;
              *(v17 - 128) = v21.i32[0];
              *(v17 - 124) = v16;
              *(v17 - 80) = v21;
              *(v17 - 32) = v15;
              *(v17 - 28) = v21.i32[1];
              CA::OGL::Context::array_flush(v3);
              CA::OGL::Context::unbind_surface(v3, v10, 0);
              if (byte_1ED4E9855 == 1)
              {
                *(v3[2] + 497) |= 1u;
                v18 = v3[2];
                *(v18 + 496) = 3;
                *(v18 + 16) = 0;
                CA::OGL::Context::bind_surface(v3, v10, 0, 0, 0, 0.0);
                v3[18] = 0;
                v3[14] = v14;
                *(v3 + 15) = xmmword_183E20E50;
                CA::OGL::Context::array_check(v3, 1);
                CA::OGL::Context::array_rect(v3, v15, v16, *v21.i32, *&v21.i32[1]);
                v19 = v3[17] + 48 * v3[18];
                *(v19 - 160) = 0x3800000000003800;
                *(v19 - 112) = 0x3800000000003800;
                *(v19 - 64) = 0x3800000000003800;
                *(v19 - 16) = 0x3800000000003800;
                CA::OGL::Context::array_flush(v3);
              }

              (*(*v3 + 1048))(v3, *(v8 + 16));
              CA::OGL::Context::set_gstate(v3, *v3[82]);
              v3[2] = __dst[0];
              __dst[0] = 0;
              CA::OGL::Context::pop_surface(v3);
              if (__dst[0])
              {
                __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
              }
            }
          }
        }
      }
    }
  }
}

BOOL CA::OGL::PingPongState::create_surface(CA::OGL::PingPongState *this, unsigned int a2, const CA::Bounds *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = this + 88;
  v7 = *(this + a2 + 11);
  if (v7)
  {
    v8 = *(a3 + 2);
    if (v8 <= *(v7 + 40))
    {
      v9 = *(a3 + 3);
      v10 = v9 < 1 || v8 < 1;
      if (!v10 && v9 <= *(v7 + 44))
      {
        v14 = *this;
        v15 = *a3;
        v16 = v8;
        v17 = v9;
        (*(*v14 + 752))(v14);
        v12 = *&v6[8 * a2];
        return v12 != 0;
      }
    }

    CA::OGL::Context::release_surface(*this, v7);
    *&v6[8 * a2] = 0;
  }

  v12 = (*(**this + 696))(*this, 1, a3, *(this + 9), @"ping-pong-blur");
  *&v6[8 * a2] = v12;
  return v12 != 0;
}

uint64_t CA::OGL::BlurState::in_place_color_matrix(CA::OGL **this, const CA::ColorMatrix *a2, char a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a3)
    {
      v5 = *this;
      v6 = *this + 16;
      *(*v6 + 17) = 42;
      v7 = *(v5 + 84);
      CA::OGL::color_matrix_function(v5, a2, 0, 0, 1);
      v8 = *(v7 + 48);
      v9 = *(v7 + 52);
      v15[0] = *(*v6 + 8);
      CA::OGL::PingPongState::render_pass_final_dest(*this, v8, v9, 0, v15);
LABEL_6:
      *(*v6 + 16) = 0;
      *(*v6 + 17) = 0;
      return 1;
    }

    if ((this[4] & 0x80000000) == 0)
    {
      v10 = *this;
      v6 = *this + 16;
      *(*v6 + 17) = 42;
      v11 = this[(this[4] & 1) + 11];
      CA::OGL::Context::push_surface(v10, v11, 0, 64, 0);
      CA::OGL::color_matrix_function(v10, a2, 0, 0, 1);
      *(v10 + 144) = 0;
      *(v10 + 112) = v10 + 1386;
      *(v10 + 120) = xmmword_183E20E50;
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      v15[0] = *(*v6 + 8);
      CA::OGL::PingPongState::render_pass(this, v12, v13, 1, v15, 1.0, 1.0, 0.0, 0.0);
      CA::OGL::Context::array_flush(v10);
      CA::OGL::Context::pop_surface(v10);
      goto LABEL_6;
    }
  }

  return 0;
}

float32x2_t CA::Transform::apply_to_point2(float64x2_t *this, double *a2, float *a3)
{
  v3 = LOBYTE(this[9].f64[0]);
  if ((v3 & 0x10) != 0)
  {
    return CA::Mat4Impl::mat4_apply_to_point2(this, a2, a3);
  }

  if ((LOBYTE(this[9].f64[0]) & 8) == 0)
  {
    v4.i32[0] = *a2;
    if ((LOBYTE(this[9].f64[0]) & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = vcvt_f32_f64(vmulq_n_f64(vcvtq_f64_f32(*a2), this[8].f64[0]));
  *a2 = *&v4;
  v3 = LOBYTE(this[9].f64[0]);
  if ((v3 & 4) != 0)
  {
LABEL_7:
    v6 = *(a2 + 1);
    *(a2 + 1) = v4.i32[0];
    v4.f32[0] = -v6;
    *a2 = -v6;
    v3 = LOBYTE(this[9].f64[0]);
  }

LABEL_8:
  if ((v3 & 2) != 0)
  {
    v4.f32[0] = -v4.f32[0];
    *a2 = v4.i32[0];
    v3 = LOBYTE(this[9].f64[0]);
  }

  v7 = *(a2 + 1);
  if (v3)
  {
    v7 = -v7;
  }

  v4.f32[1] = v7;
  result = vcvt_f32_f64(vaddq_f64(this[6], vcvtq_f64_f32(v4)));
  *a2 = *&result;
  return result;
}

float32x2_t CA::OGL::anonymous namespace::BackdropRectState::map(uint64_t a1, uint64_t a2, float32x2_t *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a1 + 48);
    v5 = a3 + 2;
    do
    {
      v6 = v5;
      result = vld1_dup_f32(v6++);
      v8 = vmla_f32(*v4, result, vsub_f32(v4[1], *v4));
      *v5 = vmla_n_f32(v8, vmla_f32(vsub_f32(v4[3], v8), result, vsub_f32(v4[2], v4[3])), *v6);
      v5 += 6;
      --a4;
    }

    while (a4);
  }

  return result;
}

void CA::OGL::anonymous namespace::BackdropRectState::post_map(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = (a2 + 8);
    do
    {
      v4 = v3[1];
      if (v4 != 1.0)
      {
        v5 = 1.0 / v4;
        *(v3 - 1) = vmul_n_f32(*(v3 - 2), v5);
        *v3 = *v3 * v5;
        v3[1] = 1.0;
      }

      v3 += 12;
      --a3;
    }

    while (a3);
  }
}

void CA::OGL::anonymous namespace::clear_backdrop_edges(CA::OGL::_anonymous_namespace_ *this, CA::OGL::Context *a2, const CA::Shape *a3, const CA::Shape *a4, float a5)
{
  v18[3] = *MEMORY[0x1E69E9840];
  *(*(this + 2) + 16) = 0;
  *(this + 18) = 0;
  v8 = this + 1386;
  *(this + 14) = this + 1386;
  *(this + 120) = xmmword_183E20E50;
  v9 = CA::Shape::dilate(a2, (16.0 / a5 + 1.0), (16.0 / a5 + 1.0));
  v12 = CA::Shape::subtract(v9, a3, v10, v11);
  v16 = 0;
  v17 = 0;
  v18[1] = 0;
  v18[2] = 0;
  v18[0] = v12;
  while (CA::ShapeIterator::iterate(v18, &v16))
  {
    if (*(this + 27))
    {
      v13 = 6;
    }

    else
    {
      v13 = 4;
    }

    if ((*(this + 18) + 4) > *(this + 19) || (v14 = *(this + 16)) != 0 && *(this + 15) + v13 > v14)
    {
      *(this + 692) |= 0x20u;
      CA::OGL::Context::array_flush(this);
      *(this + 18) = 0;
      *(this + 14) = v8;
      *(this + 120) = xmmword_183E20E50;
    }

    CA::OGL::Context::array_rect(this, floorf(v16 * a5), floorf(SHIDWORD(v16) * a5), ceilf((v17 + v16) * a5), ceilf((HIDWORD(v17) + HIDWORD(v16)) * a5));
    v15 = *(this + 17) + 48 * *(this + 18);
    *(v15 - 160) = 0;
    *(v15 - 112) = 0;
    *(v15 - 64) = 0;
    *(v15 - 16) = 0;
  }

  CA::OGL::Context::array_flush(this);
  if (v12)
  {
    CA::Shape::unref(v12);
  }

  if (v9)
  {

    CA::Shape::unref(v9);
  }
}

void CA::OGL::Context::blur_surface(uint64_t a1, const CA::Bounds *a2, float32x2_t *a3, uint64_t a4, float a5, float a6, double a7, double a8, float64x2_t a9)
{
  v403 = *MEMORY[0x1E69E9840];
  if (BYTE6(xmmword_1ED4E97EC) == 1)
  {
    PerfHud = CA::OGL::GetPerfHud(a1);
    if (PerfHud)
    {
      ++*(PerfHud + 520);
    }
  }

  if (*(a2 + 10) && *(a2 + 11) && (a3->i32[0] & 0x7FFFFFFFu) <= 0x7F7FFFFF && (a3->i32[1] & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    if ((a3[9].i8[0] & 8) != 0)
    {
      v16 = (*(a2 + 23) & 0x30) != 0;
      v15 = (*(*(a1 + 672) + 92) & 0x30) == 0;
      v356 = (*(*(a1 + 672) + 92) & 0x30) != 0;
      v17 = a3[4];
      if ((*(a2 + 23) & 0x30) == 0)
      {
        v363 = 1;
        v365 = (*(*a1 + 736))(a1, a2, 1);
        v16 = 0;
LABEL_11:
        v376 = 0uLL;
        v18 = a3[3];
        v367 = a4;
        v353 = a2;
        if (!*&v18)
        {
          v37 = 0;
          v38 = a3[9].u8[0];
          goto LABEL_43;
        }

        v19 = **&v18;
        v20 = *(*&v18 + 16);
        if (a6 != 1.0)
        {
          v21 = a6;
          a9.f64[0] = 1.79769313e308;
          v22 = vdupq_lane_s64(vcgtq_f64(a9, v20).i64[0], 0);
          v23.i64[1] = *(*&v18 + 8);
          *v23.i64 = a6 * v19.f64[0];
          v19 = vbslq_s8(v22, v23, v19);
          v23.i64[1] = *(*&v18 + 24);
          *v23.i64 = a6 * v20.f64[0];
          v20 = vbslq_s8(v22, v23, v20);
          if (v20.f64[1] < 1.79769313e308)
          {
            v19.f64[1] = vmuld_lane_f64(v21, v19, 1);
            v20.f64[1] = v20.f64[1] * v21;
          }
        }

        v24 = vceqzq_f64(v20);
        if ((vorrq_s8(vdupq_laneq_s64(v24, 1), v24).u64[0] & 0x8000000000000000) != 0 || (v25 = vceqq_f64(v20, v20), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v25), 1), v25).u64[0] & 0x8000000000000000) != 0))
        {
          v30 = 0;
        }

        else
        {
          v26 = vmaxnmq_f64(v19, vdupq_n_s64(0xC1BFFFFFFF000000));
          v27 = vminnmq_f64(vaddq_f64(v19, v20), vdupq_n_s64(0x41C0000000000000uLL));
          v28 = vcvtmq_s64_f64(v26);
          v29 = vsubq_s64(vcvtpq_s64_f64(v27), v28);
          v376 = vuzp1q_s32(v28, v29);
          v30 = vmovn_s64(v29);
        }

        if (v17)
        {
          __dst[0] = 0uLL;
          CA::Shape::get_bounds(v17, __dst);
          v30 = v376.u64[1];
          v31 = *(__dst + 8);
          v32 = vclez_s32(v376.u64[1]);
          v33 = vpmax_u32(v32, v32).u32[0];
          v34 = vclez_s32(*(__dst + 8));
          v35 = vpmax_u32(v34, v34).u32[0];
          if ((v33 & 0x80000000) != 0)
          {
            if ((v35 & 0x80000000) == 0)
            {
              v36 = *&__dst[0];
              goto LABEL_27;
            }
          }

          else if ((v35 & 0x80000000) == 0)
          {
            v36 = vmin_s32(*v376.i8, *&__dst[0]);
            v31 = vsub_s32(vmax_s32(vadd_s32(*v376.i8, v376.u64[1]), vadd_s32(*&__dst[0], *(__dst + 8))), v36);
LABEL_27:
            *v376.i8 = v36;
            v376.u64[1] = v31;
            v30 = v31;
          }
        }

        v38 = a3[9].u8[0];
        if ((v38 & 1) == 0)
        {
          v39 = v30.i32[1];
          if (v30.i32[0] <= v30.i32[1])
          {
            v40 = v30.i32[1];
          }

          else
          {
            v40 = v30.i32[0];
          }

          if (v30.i32[0] < v30.i32[1])
          {
            v39 = v30.i32[0];
          }

          if (v40 <= 1073741822 && v39 >= 1)
          {
            v41 = vadd_s32(*v376.i8, 0x100000001);
            v42 = vadd_s32(v30, 0x100000001);
            v43 = vclez_s32(v42);
            if (vorr_s8(v43, vdup_lane_s32(v43, 1)).u8[0])
            {
              v44 = -1;
            }

            else
            {
              v44 = 0;
            }

            *v376.i8 = v41;
            v376.u64[1] = vbic_s8(v42, vdup_n_s32(v44));
          }
        }

        if (a3[3])
        {
          v37 = &v376;
        }

        else
        {
          v37 = 0;
        }

LABEL_43:
        v398 = 0u;
        v399 = 0u;
        v396 = 0u;
        v397 = 0u;
        v394 = 0u;
        v395 = 0u;
        v45 = a3[5];
        v46 = ((v38 & 4) << 15) ^ 0x20000 | a3[6].i32[1];
        v391 = a1;
        v392 = v365;
        v393 = *(v365 + 48);
        LOWORD(v394) = -1;
        BYTE2(v394) = 1;
        DWORD1(v394) = v46;
        __asm { FMOV            V0.2S, #1.0 }

        v397 = _D0;
        *&v398 = 0;
        if (v17)
        {
          *(&v394 + 1) = CA::Shape::ref(v17, a2);
          v38 = a3[9].u8[0];
        }

        DWORD2(v398) = a3[6].i32[0];
        *&v399 = v45;
        if (v363)
        {
          v51 = 2;
        }

        else
        {
          v51 = 0;
        }

        if (v15)
        {
          v52 = 4;
        }

        else
        {
          v52 = 0;
        }

        if (v37)
        {
          ++v51;
        }

        BYTE8(v399) = v51 | (v38 >> 1) & 8 | v52;
        if (v363)
        {
          DWORD1(v394) = v46 | 0x80;
        }

        __dst[0] = 0uLL;
        CA::Shape::get_bounds(*(*(a1 + 656) + 8), __dst);
        v55 = *(a1 + 672);
        if (v55)
        {
          v56 = v55 + 6;
        }

        else
        {
          v56 = (a1 + 608);
        }

        v57 = *(__dst + 8);
        v58 = vclez_s32(*(__dst + 8));
        *v53.i8 = vpmax_u32(v58, v58);
        if ((v53.i32[0] & 0x80000000) == 0)
        {
          *v53.i8 = v56[1];
          v59 = vclez_s32(*v53.i8);
          *v54.i8 = vpmax_u32(v59, v59);
          if (v54.i32[0] < 0 || (v60 = vadd_s32(*v56, *v53.i8), *v53.i8 = vmax_s32(*&__dst[0], *v56), v57 = vsub_s32(vmin_s32(vadd_s32(*&__dst[0], *(__dst + 8)), v60), *v53.i8), v61 = vclez_s32(v57), *v54.i8 = vpmax_u32(v61, v61), v54.i32[0] < 0))
          {
            v57 = 0;
          }

          else
          {
            v53.u64[1] = v57;
            __dst[0] = v53;
          }
        }

        v62 = v57.i32[1];
        if (v57.i32[0] > v57.i32[1])
        {
          v62 = v57.i32[0];
        }

        v53.i32[0] = v62;
        v54.i32[0] = 1073741822;
        v63.i64[0] = SLODWORD(__dst[0]);
        v63.i64[1] = SDWORD1(__dst[0]);
        v64 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v53, v54), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v63));
        v63.i64[0] = v57.i32[0];
        v63.i64[1] = v57.i32[1];
        v65 = vcvtq_f64_s64(v63);
        v66 = vdup_n_s32(v62 > 1073741822);
        v63.i64[0] = v66.u32[0];
        v63.i64[1] = v66.u32[1];
        v67 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v63, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v65);
        v68 = vsubq_f64(v64, vcvtq_f64_f32(a3[1]));
        v69 = a6 / a5;
        v70 = (a6 / a5);
        _ZF = *v67.i64 >= 1.79769313e308 || v69 == 1.0;
        v72.i64[1] = v68.i64[1];
        v73.i64[1] = v67.i64[1];
        if (_ZF)
        {
          v74 = 0;
        }

        else
        {
          v74 = -1;
        }

        v75 = vdupq_n_s64(v74);
        *v73.i64 = v70 * *v67.i64;
        v76 = vbslq_s8(v75, v73, v67);
        *v72.i64 = v70 * *v68.i64;
        v77 = vbslq_s8(v75, v72, v68);
        if (v69 != 1.0 && v76.f64[1] < 1.79769313e308)
        {
          v77.f64[1] = vmuld_lane_f64(v70, v77, 1);
          v76.f64[1] = v76.f64[1] * v70;
        }

        v78 = vceqzq_f64(v76);
        if ((vorrq_s8(vdupq_laneq_s64(v78, 1), v78).u64[0] & 0x8000000000000000) != 0 || (v79 = vceqq_f64(v76, v76), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v79), 1), v79).u64[0] & 0x8000000000000000) != 0))
        {
          __dst[0] = 0uLL;
          v84 = 0;
          v83 = 0;
          v85 = 0;
        }

        else
        {
          v80 = vcvtmq_s64_f64(vmaxnmq_f64(v77, vdupq_n_s64(0xC1BFFFFFFF000000)));
          v81 = vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v77, v76), vdupq_n_s64(0x41C0000000000000uLL))), v80);
          v82 = vuzp1q_s32(v80, v81);
          __dst[0] = v82;
          v83 = vmovn_s64(v81);
          v83.i32[0] = v82.i32[2];
          v84 = v82.u64[1];
          v85 = vmovn_s64(v80);
          v85.i32[0] = v80.i32[0];
        }

        v86 = v83.i32[1];
        if (v83.i32[0] <= v83.i32[1])
        {
          v87 = v83.i32[1];
        }

        else
        {
          v87 = v83.i32[0];
        }

        if (v83.i32[0] < v83.i32[1])
        {
          v86 = v83.i32[0];
        }

        if (v87 <= 1073741822 && v86 >= 1)
        {
          v88 = vcvt_s32_f32(vneg_f32(vrndp_f32(vcvt_f32_f64(vmulq_f64(vcvtq_f64_f32(*a3), vdupq_n_s64(0x4006666666666666uLL))))));
          v89 = vadd_s32(v85, v88);
          v90 = vsub_s32(v83, vadd_s32(v88, v88));
          v91 = vclez_s32(v90);
          *&__dst[0] = v89;
          *(&__dst[0] + 1) = v90;
          v84 = vand_s8(v90, vdup_lane_s32(vmvn_s8(vorr_s8(v91, vdup_lane_s32(v91, 1))), 0));
        }

        if (BYTE8(v399))
        {
          v92 = vclez_s32(v84);
          if ((vpmax_u32(v92, v92).u32[0] & 0x80000000) == 0)
          {
            v93 = v37[1];
            v94 = vclez_s32(v93);
            if ((vpmax_u32(v94, v94).u32[0] & 0x80000000) != 0 || (v95 = vadd_s32(*&__dst[0], v84), *&v96 = vmax_s32(*&__dst[0], *v37), v97 = vsub_s32(vmin_s32(v95, vadd_s32(*v37, v93)), *&v96), v98 = vclez_s32(v97), (vpmax_u32(v98, v98).u32[0] & 0x80000000) != 0))
            {
              v84 = 0;
            }

            else
            {
              *(&v96 + 1) = v97;
              __dst[0] = v96;
              v84 = v97;
            }
          }
        }

        v99 = v367;
        v100 = *(&v393 + 8);
        v101 = vclez_s32(*(&v393 + 8));
        if ((vpmax_u32(v101, v101).u32[0] & 0x80000000) != 0)
        {
          v104 = *(&v393 + 8);
        }

        else
        {
          v102 = vclez_s32(v84);
          if ((vpmax_u32(v102, v102).u32[0] & 0x80000000) != 0 || (*&v103 = vmax_s32(*&v393, *&__dst[0]), v104 = vsub_s32(vmin_s32(vadd_s32(*&v393, *(&v393 + 8)), vadd_s32(*&__dst[0], v84)), *&v103), v105 = vclez_s32(v104), (vpmax_u32(v105, v105).u32[0] & 0x80000000) != 0))
          {
            v100 = 0;
            *(&v393 + 1) = 0;
            v104 = 0;
          }

          else
          {
            *(&v103 + 1) = v104;
            v393 = v103;
            v100 = v104;
          }
        }

        v106 = v104.i32[0];
        if (v104.i32[0] >= v104.i32[1])
        {
          v107 = v104.i32[1];
        }

        else
        {
          v107 = v104.i32[0];
        }

        if (!v367 && v107 < 1)
        {
          goto LABEL_460;
        }

        v369 = v100;
        v348 = &a3[1];
        DWORD1(v394) |= *(v365 + 92) & 0x30;
        v375.i64[0] = v393;
        v375.u64[1] = v104;
        if (v104.i32[0] <= v104.i32[1])
        {
          v106 = v104.i32[1];
        }

        if (v106 <= 1073741822 && v107 >= 1)
        {
          v108.i64[0] = v393;
          v108.u64[1] = v104;
          v375 = vaddq_s32(v108, xmmword_183E20FD0);
          v109 = vclez_s32(*&vextq_s8(v375, v375, 8uLL));
          if (vorr_s8(v109, vdup_lane_s32(v109, 1)).u8[0])
          {
            v375.i64[1] = 0;
          }
        }

        memset(__dst, 0, 504);
        v110 = *(a1 + 16);
        v360 = v393;
        memcpy(__dst, v110, 0x1F8uLL);
        *&__dst[0] = v110;
        *(a1 + 16) = __dst;
        *v111.i8 = v360;
        v111.u64[1] = vadd_s32(v369, v360);
        v395 = vcvtq_f32_s32(v111);
        v112 = 0uLL;
        if (v16)
        {
          v113 = v391;
          memset(&v400[8], 0, 80);
          v114 = *(v391 + 82);
          *&v400[32] = 0x3C003C003C003C00;
          memset(&v400[40], 0, 24);
          *&v400[80] = 1;
          *v400 = 0;
          if (v114)
          {
            *&v400[8] = *(v114 + 8);
            *&v400[24] = *(v114 + 24);
            v115 = *(v114 + 64);
            *&v400[80] = *(v114 + 80) & 0x100 | 1;
            v116 = *&v400[80] | *(v114 + 80) & 0x400;
          }

          else
          {
            memset(&v400[8], 0, 24);
            v116 = 1025;
            v115 = 1.0;
          }

          *&v400[64] = v115;
          *&v400[80] = v116;
          if (v399)
          {
            *&v400[8] = v399;
          }

          *v400 = CA::OGL::Context::set_gstate(v391, v400);
          *(*(v113 + 2) + 16) = 97;
          *(*(v113 + 2) + 17) = 42;
          *(*(v113 + 2) + 497) &= ~1u;
          CA::OGL::Context::push_surface(v113, v392, 0, 64, 0);
          if (v399)
          {
            v377 = 0uLL;
            CA::Shape::get_bounds(*(*(v113 + 82) + 8), &v377);
            v119 = *(v113 + 84);
            if (v119)
            {
              v120 = v119 + 6;
            }

            else
            {
              v120 = (v113 + 608);
            }

            v121 = v377.u64[1];
            v122 = vclez_s32(v377.u64[1]);
            *v117.i8 = vpmax_u32(v122, v122);
            if ((v117.i32[0] & 0x80000000) == 0)
            {
              *v117.i8 = v120[1];
              v123 = vclez_s32(*v117.i8);
              *v118.i8 = vpmax_u32(v123, v123);
              if (v118.i32[0] < 0 || (v124 = vadd_s32(*v120, *v117.i8), *v117.i8 = vmax_s32(*v377.i8, *v120), v121 = vsub_s32(vmin_s32(vadd_s32(*v377.i8, v377.u64[1]), v124), *v117.i8), v125 = vclez_s32(v121), *v118.i8 = vpmax_u32(v125, v125), v118.i32[0] < 0))
              {
                v121 = 0;
              }

              else
              {
                v117.u64[1] = v121;
                v377 = v117;
              }
            }

            v128 = v121.i32[0];
            if (v121.i32[0] <= v121.i32[1])
            {
              v128 = v121.i32[1];
            }

            v117.i32[0] = v128;
            v118.i32[0] = 1073741822;
            v129.i64[0] = v377.i32[0];
            v129.i64[1] = v377.i32[1];
            v130 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v117, v118), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v129));
            v129.i64[0] = v121.i32[0];
            v129.i64[1] = v121.i32[1];
            v131 = vcvtq_f64_s64(v129);
            v132 = vdup_n_s32(v128 > 1073741822);
            v129.i64[0] = v132.u32[0];
            v129.i64[1] = v132.u32[1];
            v381 = v130;
            v382 = vbslq_s8(vcltzq_s64(vshlq_n_s64(v129, 0x3FuLL)), vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL), v131);
            v386 = &v381;
            *v387 = &CA::identity_transform;
            memset(&v387[8], 0, 32);
            CA::OGL::emit_one_part_rect(v113, &v386, 0, 0, 0);
          }

          else
          {
            *(v113 + 18) = 0;
            *(v113 + 14) = v113 + 1386;
            *(v113 + 120) = xmmword_183E20E50;
            v126 = *(v392 + 48);
            v127 = *(v392 + 52);
            v386 = 0;
            CA::OGL::PingPongState::render_pass(&v391, v126, v127, 0, &v386, 1.0, 1.0, 0.0, 0.0);
            CA::OGL::Context::array_flush(v113);
          }

          CA::OGL::Context::pop_surface(v113);
          *(*(v113 + 2) + 17) = 0;
          *(*(v113 + 2) + 16) = 0;
          CA::OGL::Context::set_gstate(v113, **(v113 + 82));
          v112 = 0uLL;
        }

        *&v387[32] = v112;
        v388 = v112;
        v389 = v112;
        *v387 = v112;
        *&v387[16] = v112;
        v133 = *(a1 + 656);
        *&v387[24] = 0x3C003C003C003C00;
        *&v387[40] = 0;
        *&v387[32] = 0;
        *&v388 = 0;
        WORD4(v389) = 1;
        v386 = 0;
        if (v133)
        {
          v134 = *(v133 + 64);
          WORD4(v389) = *(v133 + 80) & 0x100 | 1;
          v135 = WORD4(v389) | *(v133 + 80) & 0x400;
        }

        else
        {
          v135 = 1025;
          v134 = 1.0;
        }

        *(&v388 + 2) = v134;
        WORD4(v389) = v135;
        *&v387[16] = &CA::identity_transform;
        memset(v385, 0, 48);
        CA::Shape::operator=(v385, v375.i32);
        if (v17)
        {
          v136 = v17;
        }

        else
        {
          v136 = v385;
        }

        *v387 = v136;
        *&v387[8] = 0;
        v386 = CA::OGL::Context::set_gstate(a1, &v386);
        v350 = *(a1 + 64);
        *(*(a1 + 16) + 497) &= ~1u;
        *(a1 + 64) = 0;
        *(*(a1 + 16) + 16) = 0;
        v361 = a3;
        if (a3[3])
        {
          if ((a3[9].i8[0] & 1) == 0)
          {
            if (*(v365 + 48) != v376.i64[0] || (v138 = *(v365 + 56), v138 != v376.i32[2]) || (v139 = *(v365 + 60), v139 != v376.i32[3]) || *(v365 + 40) != v138 || *(v365 + 44) != v139)
            {
              v140 = a3[6].i32[0] ? 16.0 : 32.0;
              v141 = v391;
              if (CA::OGL::PingPongState::attach_dest(&v391, 1, v140))
              {
                v142 = &v397 + (v394 & 1) + 1;
                if ((v394 & 0x8000u) != 0)
                {
                  v142 = &v392;
                }

                v143 = *v142;
                v145 = *(*v142 + 52);
                v381.i32[0] = *(*v142 + 48);
                v144 = v381.i32[0];
                v381.i32[1] = v145;
                CA::OGL::Context::bind_surface(v391, v143, 0, 1u, 1, 0.0);
                *&v400[80] = 0;
                memset(&v400[16], 0, 64);
                *v400 = 0u;
                v146 = *(v141 + 82);
                *&v400[8] = *(v146 + 8);
                v147 = *(v146 + 24);
                v148 = *(v146 + 32);
                *&v400[40] = *(v146 + 40);
                v149 = *(v146 + 56);
                *&v400[32] = v148;
                *&v400[56] = v149;
                LOWORD(v148) = *(v146 + 80);
                *&v400[80] = v148;
                v150 = *(v146 + 64);
                *&v400[80] = *(v146 + 80) & 0x100 | v148;
                LOWORD(v148) = *&v400[80] | *(v146 + 80) & 0x400;
                *&v400[64] = v150;
                *&v400[80] = v148;
                *&v400[72] = *(v146 + 72);
                *&v400[24] = v147;
                *&v400[8] = &CA::Shape::_infinite_shape;
                *v400 = CA::OGL::Context::set_gstate(v141, v400);
                CA::OGL::BlurState::process_edges(&v391, v140, 1.0, 1.0, v381.i32);
                *(*(v141 + 2) + 16) = 1;
                *(v141 + 18) = 0;
                *(v141 + 14) = v141 + 1386;
                *(v141 + 120) = xmmword_183E20E50;
                v377.i64[0] = 0;
                CA::OGL::PingPongState::render_pass(&v391, v144, v145, 0, v377.i64, 1.0, 1.0, 0.0, 0.0);
                CA::OGL::Context::array_flush(v141);
                v151 = &v397 + (v394 & 1) + 1;
                if ((v394 & 0x8000u) != 0)
                {
                  v151 = &v392;
                }

                CA::OGL::Context::unbind_surface(v391, *v151, 0);
                CA::OGL::Context::pop_surface(v391);
                LOWORD(v394) = v394 + 1;
                *(*(v141 + 2) + 16) = 0;
                CA::OGL::Context::set_gstate(v141, **(v141 + 82));
              }
            }
          }
        }

        v351 = a5;
        if (DWORD2(v398) == 2)
        {
          LODWORD(v137) = 1.0;
          CA::OGL::PingPongState::scale_and_dilate(&v391, v137, 1.0, 1, 1);
        }

        v152 = a3[9].i8[0];
        v153 = fminf(a3->f32[0] * a3->f32[0], 100000000.0);
        v154 = fminf(a3->f32[1] * a3->f32[1], 100000000.0);
        v155 = (*(*a1 + 232))(a1, 15);
        if (v155 >= 27)
        {
          v156 = 27;
        }

        else
        {
          v156 = v155;
        }

        if (v156 <= 15)
        {
          v157 = 15;
        }

        else
        {
          v157 = v156;
        }

        if (v155 <= 26)
        {
          v158 = 5.25;
          if (v155 <= 22)
          {
            v158 = 4.35;
            if (v155 <= 18)
            {
              v158 = 3.5;
            }
          }
        }

        else
        {
          v158 = 6.1;
        }

        v159 = v153;
        v160 = v154;
        v352 = v17;
        v349 = v158;
        if ((v152 & 4) != 0)
        {
          v167 = (v152 & 2) == 0;
          v168 = fmax(v159, v160) > 100.0;
          v169 = v167 && v168;
          if (v167 && v168)
          {
            v170 = 7.5;
          }

          else
          {
            v170 = 3.5;
          }

          if ((*(*a1 + 232))(a1, 13))
          {
LABEL_180:
            v173 = v160 * 0.0625 + -1.1025;
            while (1)
            {
              v174 = v159 * 0.0625 + -1.1025;
              if (v174 < v170)
              {
                break;
              }

              _Q0.n128_u32[0] = 0.25;
              CA::OGL::PingPongState::scale_and_dilate(&v391, _Q0.n128_f64[0], 1.0, 4, 0);
              CA::OGL::BlurState::downsample_blur_4(&v391, 4.0, 1.0, flt_183E22A28, v175);
              v159 = v159 * 0.0625 + -1.1025;
              if (v173 >= v170)
              {
LABEL_185:
                _Q0.n128_u32[0] = 1.0;
                CA::OGL::PingPongState::scale_and_dilate(&v391, _Q0.n128_f64[0], 0.25, 0, 4);
                v160 = v160 * 0.0625 + -1.1025;
                v159 = v174;
                goto LABEL_180;
              }
            }

            v174 = v159;
            if (v173 >= v170)
            {
              goto LABEL_185;
            }
          }

          _Q0.n128_u32[1] = 1076396032;
          if (v169)
          {
            v177 = 56.25;
          }

          else
          {
            v177 = 12.25;
          }

          v178 = v160 > v177;
          v179 = v159 > v177;
          if (v159 <= v177 && v160 <= v177)
          {
            v181 = v361;
          }

          else
          {
            v181 = v361;
            do
            {
              if (v179)
              {
                _Q0.n128_u32[0] = 0.5;
                CA::OGL::PingPongState::scale_and_dilate(&v391, _Q0.n128_f64[0], 1.0, 2, 0);
                CA::OGL::BlurState::downsample_blur_2(&v391, 2.0, 1.0, flt_183E22A7C, v182);
                v159 = v159 * 0.25 + -2.56;
              }

              if (v178)
              {
                _Q0.n128_u32[0] = 1.0;
                CA::OGL::PingPongState::scale_and_dilate(&v391, _Q0.n128_f64[0], 0.5, 0, 2);
                v160 = v160 * 0.25 + -2.56;
              }

              v178 = v160 > v177;
              v179 = v159 > v177;
            }

            while (v159 > v177 || v160 > v177);
          }
        }

        else
        {
          if ((v152 & 2) != 0)
          {
            v166 = 20.0;
            v357 = 5.5;
            v346 = 3.5;
          }

          else
          {
            v161 = fmax(v159, v160);
            v162 = 5.5;
            if (v161 <= 100.0)
            {
              v163 = 3.5;
            }

            else
            {
              v163 = 5.5;
            }

            if (v161 > 100.0)
            {
              v162 = 9.5;
            }

            v164 = v163 + 1.0;
            v165 = v162 + 1.0;
            if (v161 > 3600.0)
            {
              v166 = 21.0;
            }

            else
            {
              v164 = v163;
              v165 = v162;
              v166 = 20.0;
            }

            if (v161 <= 10000.0)
            {
              v357 = v165;
              v346 = v164;
            }

            else
            {
              v346 = v164 + 1.0;
              v357 = v165 + 1.0;
              v166 = v166 + 1.0;
            }
          }

          if ((*(*a1 + 232))(a1, 14))
          {
            v185 = v166 * v166;
            if (v166 * v166 < v159 && v185 < v160)
            {
              _Q0.n128_u32[1] = 0;
              do
              {
                _Q0.n128_u32[0] = 0.125;
                CA::OGL::PingPongState::scale_and_dilate(&v391, _Q0.n128_f64[0], 0.125, 0, 0);
                if ((CA::OGL::BlurState::tile_downsample(&v391, 8) & 1) == 0)
                {
                  v186 = v391;
                  v187 = (BYTE8(v399) & 1) != 0 ? 16 : 32;
                  if (CA::OGL::PingPongState::attach_dest(&v391, 1, v187))
                  {
                    v188 = &v397 + (v394 & 1) + 1;
                    if ((v394 & 0x8000u) != 0)
                    {
                      v188 = &v392;
                    }

                    v189 = *v188;
                    v190 = *(*v188 + 48);
                    v191 = *(*v188 + 52);
                    *v400 = v190;
                    *&v400[4] = v191;
                    CA::OGL::Context::bind_surface(v391, v189, 0, 1u, 1, 0.0);
                    v192 = 16.0;
                    if ((BYTE8(v399) & 1) == 0)
                    {
                      v192 = 32.0;
                    }

                    CA::OGL::BlurState::process_edges(&v391, v192, 8.0, 8.0, v400);
                    *(*(v186 + 2) + 16) = 29;
                    v193 = *(v186 + 2);
                    v194 = *(v193 + 96);
                    v195 = *(v193 + 100);
                    *(v186 + 40) = v194;
                    *(v186 + 41) = v195;
                    *(v186 + 42) = v194;
                    *(v186 + 43) = v195 * 3.0;
                    *(v186 + 44) = v194 * 3.0;
                    *(v186 + 45) = v195;
                    *(v186 + 46) = v194 * 3.0;
                    *(v186 + 47) = v195 * 3.0;
                    *(v186 + 18) = 0;
                    *(v186 + 14) = v186 + 1386;
                    *(v186 + 120) = xmmword_183E20E50;
                    v381.i64[0] = 0;
                    CA::OGL::PingPongState::render_pass(&v391, v190, v191, 0, v381.i64, 8.0, 8.0, 0.0, 0.0);
                    CA::OGL::Context::array_flush(v186);
                    v196 = &v397 + (v394 & 1) + 1;
                    if ((v394 & 0x8000u) != 0)
                    {
                      v196 = &v392;
                    }

                    CA::OGL::Context::unbind_surface(v391, *v196, 0);
                    *(*(v186 + 2) + 16) = 0;
                    CA::OGL::Context::pop_surface(v391);
                    LOWORD(v394) = v394 + 1;
                  }
                }

                v159 = v159 * 0.015625 + -0.140625;
                v160 = v160 * 0.015625 + -0.140625;
              }

              while (v159 > v185 && v160 > v185);
            }
          }

          v198 = v357 * v357;
          if (v159 > v357 * v357 && v160 > v198)
          {
            __asm { FMOV            V0.4S, #-1.0 }

            v347 = vnegq_f64(_Q0);
            _Q0.n128_u32[1] = 0;
            do
            {
              _Q0.n128_u32[0] = 0.25;
              CA::OGL::PingPongState::scale_and_dilate(&v391, _Q0.n128_f64[0], 0.25, 0, 0);
              if ((CA::OGL::BlurState::tile_downsample(&v391, 4) & 1) == 0)
              {
                v200 = v391;
                v201 = (BYTE8(v399) & 1) != 0 ? 16 : 32;
                if (CA::OGL::PingPongState::attach_dest(&v391, 1, v201))
                {
                  v202 = &v397 + (v394 & 1) + 1;
                  if ((v394 & 0x8000u) != 0)
                  {
                    v202 = &v392;
                  }

                  v203 = *v202;
                  v205 = *(*v202 + 48);
                  v204 = *(*v202 + 52);
                  *v400 = v205;
                  *&v400[4] = v204;
                  CA::OGL::Context::bind_surface(v391, v203, 0, 1u, 1, 0.0);
                  if (BYTE8(v399))
                  {
                    v206 = 16.0;
                  }

                  else
                  {
                    v206 = 32.0;
                  }

                  CA::OGL::BlurState::process_edges(&v391, v206, 4.0, 4.0, v400);
                  *(*(v200 + 2) + 16) = 27;
                  v207 = *(v200 + 2);
                  v358 = *(v207 + 96);
                  v355 = *(v207 + 100);
                  if ((*(*v200 + 1072))(v200))
                  {
                    v208 = vmulq_n_f32(xmmword_183E20FE0, v355);
                    v209 = vmulq_n_f32(v347, v358);
                    *(v200 + 10) = vzip1q_s32(v209, v208);
                    *(v200 + 11) = vzip2q_s32(v209, v208);
                    *(v200 + 15) = CA::OGL::BlurState::downsample_box_4(void)::weight;
                    *(v200 + 18) = 0;
                    *(v200 + 14) = v200 + 1386;
                    *(v200 + 120) = xmmword_183E20E50;
                    v381.i64[0] = 0;
                    CA::OGL::PingPongState::render_pass(&v391, v205, v204, 0, v381.i64, 4.0, 4.0, 0.0, 0.0);
                    CA::OGL::Context::array_flush(v200);
                  }

                  else
                  {
                    *(*(v200 + 2) + 16) = 3;
                    *(*(v200 + 2) + 496) = 12;
                    *(v200 + 18) = 0;
                    v210 = v200 + 1386;
                    *(v200 + 14) = v200 + 1386;
                    *(v200 + 120) = xmmword_183E20E50;
                    v211 = &unk_183E229F8;
                    v212 = 4;
                    do
                    {
                      if (*(v200 + 27))
                      {
                        v213 = 6;
                      }

                      else
                      {
                        v213 = 4;
                      }

                      if ((*(v200 + 18) + 4) > *(v200 + 19) || (v214 = *(v200 + 16)) != 0 && *(v200 + 15) + v213 > v214)
                      {
                        *(v200 + 692) |= 0x20u;
                        CA::OGL::Context::array_flush(v200);
                        *(v200 + 18) = 0;
                        *(v200 + 14) = v210;
                        *(v200 + 120) = xmmword_183E20E50;
                      }

                      v381.i64[0] = 0x3400340034003400;
                      CA::OGL::PingPongState::render_pass(&v391, v205, v204, 1, v381.i64, 4.0, 4.0, *(v211 - 1), *v211);
                      if (v212 == 4)
                      {
                        CA::OGL::Context::array_flush(v200);
                        *(*(v200 + 2) + 497) |= 1u;
                        *(v200 + 18) = 0;
                        *(v200 + 14) = v210;
                        *(v200 + 120) = xmmword_183E20E50;
                      }

                      v211 += 2;
                      --v212;
                    }

                    while (v212);
                    CA::OGL::Context::array_flush(v200);
                    *(*(v200 + 2) + 497) &= ~1u;
                    v17 = v352;
                  }

                  v215 = &v397 + (v394 & 1) + 1;
                  if ((v394 & 0x8000u) != 0)
                  {
                    v215 = &v392;
                  }

                  CA::OGL::Context::unbind_surface(v391, *v215, 0);
                  *(*(v200 + 2) + 16) = 0;
                  CA::OGL::Context::pop_surface(v391);
                  LOWORD(v394) = v394 + 1;
                }
              }

              v159 = v159 * 0.0625 + -0.47265625;
              v160 = v160 * 0.0625 + -0.47265625;
            }

            while (v159 > v198 && v160 > v198);
          }

          _Q0.n128_f64[0] = v346;
          v217 = _Q0.n128_f64[0] * _Q0.n128_f64[0];
          v218 = v159 <= _Q0.n128_f64[0] * _Q0.n128_f64[0] || v160 <= v217;
          v157 = v157;
          if (v218)
          {
            v181 = a3;
            v99 = v367;
          }

          else
          {
            v181 = a3;
            v99 = v367;
            do
            {
              _Q0.n128_u32[0] = 0.5;
              CA::OGL::PingPongState::scale_and_dilate(&v391, _Q0.n128_f64[0], 0.5, 0, 0);
              if ((CA::OGL::BlurState::tile_downsample(&v391, 2) & 1) == 0)
              {
                CA::OGL::BlurState::downsample_box_2(&v391, 2.0, 2.0);
              }

              v159 = v159 * 0.25 + -0.765625;
              v160 = v160 * 0.25 + -0.765625;
            }

            while (v159 > v217 && v160 > v217);
          }

          v220 = v160 > v217;
          for (i = v159 > v217; v159 > v217 || v160 > v217; i = v159 > v217)
          {
            if (i)
            {
              _Q0.n128_u32[0] = 0.5;
              CA::OGL::PingPongState::scale_and_dilate(&v391, _Q0.n128_f64[0], 1.0, 0, 0);
              CA::OGL::BlurState::downsample_box_2(&v391, 2.0, 1.0);
              v159 = v159 * 0.25 + -0.765625;
            }

            if (v220)
            {
              _Q0.n128_u32[0] = 1.0;
              CA::OGL::PingPongState::scale_and_dilate(&v391, _Q0.n128_f64[0], 0.5, 0, 0);
              CA::OGL::BlurState::downsample_box_2(&v391, 1.0, 2.0);
              v160 = v160 * 0.25 + -0.765625;
            }

            v220 = v160 > v217;
          }
        }

        if (v159 <= v160)
        {
          v224 = v160;
        }

        else
        {
          v224 = v159;
        }

        _Q0.n128_u32[0] = v397;
        v225 = 0;
        if (*&v397 == *(&v397 + 1))
        {
          v226 = *&v397 != 1.0 && v99 == 0;
          v227 = !v226;
          if (v17 && v227)
          {
            v225 = (*(*a1 + 1160))(a1, _Q0) ^ 1;
          }
        }

        if (v224 <= 0.6 && (*(*a1 + 1080))(a1, 45))
        {
          LODWORD(v228) = 1.0;
          CA::OGL::PingPongState::scale_and_dilate(&v391, v228, 1.0, 1, 1);
          if (v225)
          {
            CA::OGL::Context::set_gstate(a1, **(a1 + 656));
            *(a1 + 16) = *&__dst[0];
            *&__dst[0] = 0;
            v381.i64[0] = 0;
            memset(v400, 0, 88);
            CA::OGL::copy_gstate(v400, *(a1 + 656));
            LODWORD(v229) = v397;
            *v400 = CA::OGL::Context::set_gstate(a1, v400);
            v235 = v159;
            v236 = v160;
            CA::OGL::BlurState::single_pass_blur(&v391, v235, v236, 1);
            if (v356)
            {
              CA::OGL::BlurState::convert_linear_to_srgb(&v391, 1);
            }

            CA::OGL::BlurState::in_place_color_matrix(&v391, *&v181[2], 1);
            CA::OGL::Context::set_gstate(a1, **(a1 + 656));
            v237 = v351;
            if (v381.i64[0])
            {
              CA::Shape::unref(v381.i64[0]);
            }

            v225 = 1;
          }

          else
          {
            v305 = v159;
            v306 = v160;
            CA::OGL::BlurState::single_pass_blur(&v391, v305, v306, 0);
            v237 = v351;
          }
        }

        else
        {
          if (v225)
          {
            goto LABEL_322;
          }

          if ((*(*a1 + 232))(a1, 38))
          {
            v239 = DWORD2(v398) == 1;
          }

          else
          {
            v239 = 1;
          }

          v240 = !v239 && *(&v394 + 1) == 0;
          v241 = v363;
          if (!v240)
          {
            v241 = 1;
          }

          if (v241)
          {
LABEL_322:
            v242 = vcvtpd_s64_f64(v159 / (v349 * v349));
            memset(v380, 0, sizeof(v380));
            v384 = 0;
            v382 = 0u;
            v383 = 0u;
            v381 = 0u;
            memset(v379, 0, sizeof(v379));
            v378 = 0;
            memset(&v377, 0, 48);
            v243 = v159 / (v242 & ~(v242 >> 31));
            v245 = v157 - 8;
            v370 = ((v157 - 8) & 0xFFFFFFFC) + 11;
            v246 = ((v157 - 8) & 0xFFFFFFFC) + 4;
            v247 = 3;
            v248 = 2;
            v237 = v351;
            while (*&v380[0].i32[v248] != 0.0)
            {
              v247 += 2;
              ++v248;
              v246 -= 4;
              if (!v246)
              {
                v359 = ((v157 - 8) & 0xFFFFFFFC) + 11;
                v247 = ((v245 >> 1) & 0x7FFFFFFE) + 5;
                goto LABEL_327;
              }
            }

            v359 = v248 * 4 - 1;
LABEL_327:
            v249 = vcvtpd_s64_f64(v160 / (v349 * v349));
            v250 = v249 & ~(v249 >> 31);
            v251 = v160 / v250;
            v253 = (v245 & 0xFFFFFFFC) + 4;
            v254 = 3;
            v255 = 8;
            while (*(v379 + v255) != 0.0)
            {
              v254 += 2;
              v255 += 4;
              v253 -= 4;
              if (!v253)
              {
                v254 = ((v245 >> 1) & 0x7FFFFFFE) + 5;
                goto LABEL_332;
              }
            }

            v370 = v255 - 1;
LABEL_332:
            v256 = v249 > 0;
            v257 = v250 >= v242 && v249 > 0;
            v225 &= v257;
            v258 = v242 > 0;
            if (v242 > 0 || v249 >= 1)
            {
              v259 = 1;
              do
              {
                v260 = v259;
                if ((BYTE8(v399) & (DWORD2(v398) != 1)) != 0)
                {
                  v261 = 1;
                }

                else
                {
                  v261 = v247;
                }

                if ((BYTE8(v399) & (DWORD2(v398) != 1)) != 0)
                {
                  v262 = 1;
                }

                else
                {
                  v262 = v254;
                }

                if (v258)
                {
                  v263 = v261;
                }

                else
                {
                  v263 = 1;
                }

                if (v256)
                {
                  v264 = v262;
                }

                else
                {
                  v264 = 1;
                }

                LODWORD(v252) = 1.0;
                CA::OGL::PingPongState::scale_and_dilate(&v391, v252, 1.0, v263, v264);
                if (v258)
                {
                  CA::OGL::BlurState::narrow_blur(&v391, v359, v381.i32, v380, 0);
                }

                if (v256)
                {
                  if (v250 == v260)
                  {
                    v265 = v225;
                  }

                  else
                  {
                    v265 = 0;
                  }

                  if (v265 == 1)
                  {
                    CA::OGL::Context::set_gstate(a1, **(a1 + 656));
                    *(a1 + 16) = *&__dst[0];
                    *&__dst[0] = 0;
                    v374 = 0;
                    *&v400[80] = 0;
                    memset(&v400[16], 0, 64);
                    *v400 = 0u;
                    v266 = *(a1 + 656);
                    *&v400[8] = *(v266 + 8);
                    v267 = *(v266 + 32);
                    *&v400[24] = *(v266 + 24);
                    *&v400[32] = v267;
                    *&v400[40] = *(v266 + 40);
                    *&v400[56] = *(v266 + 56);
                    v268 = *(v266 + 80);
                    *&v400[80] = v268;
                    *&v400[64] = *(v266 + 64);
                    *&v400[80] = *(v266 + 80) & 0x100 | v268;
                    *&v400[80] |= *(v266 + 80) & 0x400;
                    *&v400[72] = *(v266 + 72);
                    *v400 = CA::OGL::Context::set_gstate(a1, v400);
                    CA::OGL::BlurState::narrow_blur(&v391, v370, v377.i32, v379, 1);
                    if (v356)
                    {
                      CA::OGL::BlurState::convert_linear_to_srgb(&v391, 1);
                    }

                    CA::OGL::BlurState::in_place_color_matrix(&v391, *&v361[2], 1);
                    CA::OGL::Context::set_gstate(a1, **(a1 + 656));
                    if (v374)
                    {
                      CA::Shape::unref(v374);
                    }
                  }

                  else
                  {
                    CA::OGL::BlurState::narrow_blur(&v391, v370, v377.i32, v379, 0);
                  }
                }

                v256 = v260 < v249;
                v259 = v260 + 1;
                v258 = v260 < v242;
              }

              while (v260 < v242 || v260 < v249);
            }
          }

          else
          {
            v377.i32[0] = 0;
            v274 = vcvtpd_s64_f64(v159 / (v349 * v349));
            v380[0].i32[0] = 0;
            v275 = v159 / (v274 & ~(v274 >> 31));
            v276 = vcvtpd_s64_f64(v160 / (v349 * v349));
            v277 = v160 / (v276 & ~(v276 >> 31));
            v280 = v276 > 0;
            v281 = v274 > 0;
            v237 = v351;
            if (v274 > 0 || v276 >= 1)
            {
              v282 = v377.i32[0];
              v283 = 1;
              v284 = v380[0].i32[0];
              do
              {
                v285 = v283;
                if (BYTE8(v399))
                {
                  v286 = 1;
                }

                else
                {
                  v286 = v282;
                }

                if (BYTE8(v399))
                {
                  v287 = 1;
                }

                else
                {
                  v287 = v284;
                }

                if (v281)
                {
                  v288 = v286;
                }

                else
                {
                  v288 = 1;
                }

                if (v280)
                {
                  v289 = v287;
                }

                else
                {
                  v289 = 1;
                }

                LODWORD(v279) = 1.0;
                CA::OGL::PingPongState::scale_and_dilate(&v391, v279, 1.0, v288, v289);
                if (v281)
                {
                  CA::OGL::BlurState::tile_simd_blur(&v391, v282, v400);
                }

                if (v280)
                {
                  CA::OGL::BlurState::tile_simd_blur(&v391, v284, v381.i32);
                }

                v280 = v285 < v276;
                v283 = v285 + 1;
                v281 = v285 < v274;
              }

              while (v285 < v274 || v285 < v276);
            }

            v225 = 0;
          }

          v181 = v361;
          v99 = v367;
        }

        if (v363)
        {
          (*(*a1 + 744))(a1, v353, v365);
          CA::OGL::Context::release_surface(a1, v365);
        }

        if (v350)
        {
          *(a1 + 64) = 1;
        }

        if (v225)
        {
          if (v99)
          {
            *v99 = v397;
          }

          goto LABEL_459;
        }

        if ((v181[9].i8[0] & 8) != 0 && (BYTE4(v394) & 0x30) != 0)
        {
          CA::OGL::BlurState::convert_linear_to_srgb(&v391, 0);
        }

        if (DWORD2(v398) == 2)
        {
          v290 = 0;
        }

        else
        {
          v290 = CA::OGL::BlurState::in_place_color_matrix(&v391, *&v181[2], 0);
        }

        CA::OGL::Context::set_gstate(a1, **(a1 + 656));
        *(a1 + 16) = *&__dst[0];
        *&__dst[0] = 0;
        if (v181[9].i8[0] < 0)
        {
          *v400 = *v181[7].f32;
          CA::OGL::BlurState::upsample_resolve_sdf(&v391, v348, v400, (v237 / a6));
LABEL_459:
          if (*&__dst[0])
          {
            __assert_rtn("~ContextState", "ogl-context.h", 613, "!next && Imbalanced ContextState push/pop");
          }

LABEL_460:
          CA::OGL::PingPongState::~PingPongState(&v391);
          return;
        }

        *&v371 = (v237 / a6);
        v366 = v181[9].u8[0];
        if (v290)
        {
          v291 = 0;
        }

        else
        {
          v291 = v181[2];
        }

        v292 = v391;
        v293 = BYTE8(v399);
        if ((BYTE8(v399) & 8) != 0 && (v394 & 0x80000000) == 0)
        {
          *(*(&v397 + (v394 & 1) + 1) + 148) |= 2u;
        }

        v380[0] = 0;
        CA::OGL::PingPongState::bind_source(&v391, v380, ((v293 >> 1) & 1));
        if (v366 >= 0x40)
        {
          CA::OGL::Context::bind_surface(v391, v392, 1u, 0, 0, 0.0);
        }

        v295 = vcvt_f32_s32(v380[0]);
        v296 = vdupq_lane_s64(v371, 0);
        _Q0 = vdivq_f64(v296, vcvtq_f64_f32(*&v397));
        v297 = vcvt_f32_f64(_Q0);
        _Q0.i64[0] = *v348;
        v372 = *v348;
        v299 = v395;
        v300 = *(v292 + 2);
        v301 = *(v300 + 16);
        if (v291)
        {
          if (v301 == 3)
          {
            v302 = DWORD2(v398) == 2;
            _Q0.i16[0] = *(v300 + 8);
            _H1 = *(v300 + 14);
            __asm
            {
              FCVT            S2, H1
              FCMP            H1, #0
            }

            v296.i32[0] = 0;
            if (!(_NF ^ _VF | _ZF))
            {
              *v296.i32 = 1.0 / _S2;
            }

            __asm { FCVT            S0, H0 }

            *_Q0.i32 = *v296.i32 * *_Q0.i32;
            v294.i32[0] = *(v300 + 10);
            *v400 = *v291;
            *&v400[16] = *(v291 + 1);
            *&v400[32] = *(v291 + 2);
            *&v400[48] = *(v291 + 3);
            *&v400[64] = *(v291 + 4);
            *v296.i8 = vmul_n_f32(*&vcvtq_f32_f16(v294), *v296.i32);
            v311 = vmulq_n_f32(*v400, *_Q0.i32);
            v312 = vzip1q_s32(_Q0, v296);
            *v400 = v311;
            *&v400[16] = vmulq_f32(*&v400[16], vzip1q_s32(v312, vdupq_lane_s32(*v312.i8, 1)));
            v313 = vmulq_f32(*&v400[32], vzip1q_s32(v296, v296));
            *v296.i8 = vdup_lane_s32(*v296.i8, 1);
            v314 = v296;
            *&v314.i32[1] = _S2;
            v315 = vzip1q_s32(v314, v314);
            v315.i32[2] = v296.i32[0];
            *&v400[32] = v313;
            *&v400[48] = vmulq_f32(*&v400[48], v315);
            *&v400[64] = vmulq_n_f32(*&v400[64], _S2);
            v304 = v400;
            v303 = v292;
          }

          else
          {
            if (v301 != 1)
            {
              goto LABEL_426;
            }

            v302 = DWORD2(v398) == 2;
            v303 = v292;
            v304 = v291;
          }

          CA::OGL::color_matrix_function(v303, v304, v302, 0, 1);
        }

        else
        {
          if (DWORD2(v398) != 2)
          {
            goto LABEL_426;
          }

          if (v301 == 3)
          {
            v307 = 4;
          }

          else
          {
            if (v301 != 1)
            {
              goto LABEL_426;
            }

            v307 = 2;
          }

          *(v300 + 16) = v307;
        }

LABEL_426:
        v364 = vsub_f32(*v299.f32, v295);
        v368 = vmla_f32(v372, v297, *v299.f32);
        v362 = vsub_f32(*&v299.u32[2], v295);
        v373 = vmla_f32(v372, v297, *&v299.u32[2]);
        v316 = *(v292 + 84);
        if (v316)
        {
          v317 = v316[12];
          v318 = v316[13];
          v320 = v316[14];
          v319 = v316[15];
        }

        else
        {
          v319 = 0;
          v320 = 0;
          v318 = 0;
          v317 = 0;
        }

        _ZF = v316 == 0;
        v354 = *(v292 + 64);
        *(v292 + 64) = 1;
        v377 = 0uLL;
        v321 = *(*(v292 + 82) + 8);
        v382.i64[0] = 0;
        v381 = v321;
        v323 = !_ZF && v352 != 0;
        v324 = v317 + v320;
        v325 = v318 + v319;
        while (CA::ShapeIterator::iterate(&v381, &v377))
        {
          v326 = v377.i32[0];
          if (v323)
          {
            if (v377.i32[0] == v317)
            {
              v377.i32[0] = v317 - 1;
              ++v377.i32[2];
              v326 = v317 - 1;
            }

            v327 = v377.i32[1];
            if (v377.i32[1] == v318)
            {
              v377.i32[1] = v318 - 1;
              ++v377.i32[3];
              v327 = v318 - 1;
            }

            v328 = v377.i32[2];
            if (v377.i32[2] + v326 == v324)
            {
              v328 = ++v377.i32[2];
            }

            v329 = v377.i32[3];
            if (v377.i32[3] + v327 == v325)
            {
              v329 = ++v377.i32[3];
            }
          }

          else
          {
            v327 = v377.i32[1];
            v328 = v377.i32[2];
            v329 = v377.i32[3];
          }

          *(v292 + 18) = 0;
          *(v292 + 14) = v292 + 1386;
          *(v292 + 120) = xmmword_183E20E50;
          *(v292 + 8) = v326;
          *(v292 + 9) = v327;
          *(v292 + 10) = v328;
          *(v292 + 11) = v329;
          CA::OGL::Context::array_rect(v292, v368.f32[0], v368.f32[1], v373.f32[0], v373.f32[1]);
          v330 = *(*(v292 + 2) + 8);
          v331 = *(v292 + 17) + 48 * *(v292 + 18);
          *(v331 - 160) = v330;
          *(v331 - 112) = v330;
          *(v331 - 64) = v330;
          *(v331 - 16) = v330;
          v332 = *(v292 + 17) + 48 * *(v292 + 18);
          *(v332 - 176) = v364;
          *(v332 - 128) = v362.i32[0];
          *(v332 - 124) = v364.i32[1];
          *(v332 - 80) = v362;
          *(v332 - 32) = __PAIR64__(v362.u32[1], v364.u32[0]);
          if (v366 >= 0x40)
          {
            *(*(v292 + 2) + 16) = 14;
            v333 = *(v392 + 48);
            v334 = v368.f32[0] - v333;
            v335 = *(v392 + 52);
            v336 = v368.f32[1] - v335;
            v337 = v373.f32[0] - v333;
            v338 = v373.f32[1] - v335;
            v339 = *(v292 + 17) + 48 * *(v292 + 18);
            *(v339 - 168) = v334;
            *(v339 - 164) = v336;
            *(v339 - 120) = v337;
            *(v339 - 116) = v336;
            *(v339 - 72) = v337;
            *(v339 - 68) = v338;
            *(v339 - 24) = v334;
            *(v339 - 20) = v338;
          }

          CA::OGL::Context::array_flush(v292);
        }

        if ((v354 & 1) == 0)
        {
          *(v292 + 64) = 0;
        }

        v340 = &v397 + (v394 & 1) + 1;
        if ((v394 & 0x8000u) != 0)
        {
          v340 = &v392;
        }

        CA::OGL::Context::unbind_surface(v391, *v340, 0);
        if (v366 >= 0x40)
        {
          CA::OGL::Context::unbind_surface(v391, v392, 1);
        }

        v341 = *(v292 + 2);
        if (*(v341 + 16) == 12)
        {
          v342 = vcvtq_f64_f32(v368);
          *v400 = v342;
          *&v400[16] = xmmword_183E20E60;
          v343 = vcvtq_f64_f32(v373);
          *&v344 = v343.f64[0];
          *(&v344 + 1) = *&v342.f64[1];
          *&v400[32] = v344;
          *&v400[48] = xmmword_183E20E60;
          *&v400[64] = v343;
          *&v400[80] = xmmword_183E20E60;
          v342.f64[1] = v343.f64[1];
          v401 = v342;
          v402 = xmmword_183E20E60;
          *&v379[0] = *(v341 + 8);
          CA::OGL::emit_quad_surround(v292, v400, v379);
          v341 = *(v292 + 2);
        }

        *(v341 + 16) = v301;
        goto LABEL_459;
      }

      v363 = 0;
    }

    else
    {
      v356 = 0;
      v15 = 0;
      v363 = 0;
      v16 = 0;
      v17 = a3[4];
    }

    v365 = a2;
    goto LABEL_11;
  }
}