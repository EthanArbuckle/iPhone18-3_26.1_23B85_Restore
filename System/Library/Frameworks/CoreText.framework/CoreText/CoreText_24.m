void JoiningScriptShapingEngine::SetFeatures(JoiningScriptShapingEngine *this, const OTL::GSUB *a2, unsigned __int16 **a3)
{
  v5 = 0;
  v108 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v88[10] = v6;
  v88[11] = v6;
  v88[8] = v6;
  v88[9] = v6;
  v88[6] = v6;
  v88[7] = v6;
  v88[4] = v6;
  v88[5] = v6;
  v88[2] = v6;
  v88[3] = v6;
  v88[0] = v6;
  v88[1] = v6;
  do
  {
    v7 = &v88[v5];
    *v7 = 0;
    v7[1] = 0;
    v7[2] = 0;
    v7[5] = &v88[v5 + 1] + 8;
    v5 += 3;
  }

  while (v5 != 12);
  v8 = *(this + 2);
  v9 = TRunGlue::length(v8);
  v10 = *(this + 2);
  v80 = v10[6];
  v11 = &JoiningScriptShapingEngine::SetFeatures(OTL::GSUB const&,OTL::GlyphLookups &)::rtlTagArray;
  v76 = this;
  if (v80 < 1)
  {
    v75 = v8;
    v81 = (v9 - 1);
    v79 = -1;
    v78 = 1;
    v74 = 2;
  }

  else
  {
    v79 = TRunGlue::length(v10);
    v81 = 0;
    if (*(a2 + 18) == 1634885986)
    {
      v11 = &JoiningScriptShapingEngine::SetFeatures(OTL::GSUB const&,OTL::GlyphLookups &)::rtlTagArray;
    }

    else
    {
      v11 = "lositinianifidem";
    }

    v78 = 2;
    v74 = 1;
    v75 = v10;
  }

  v12 = 0;
  v84 = v11;
  do
  {
    v106 = 0xAAAAAAAAAAAAAAAALL;
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v104 = v13;
    v105 = v13;
    v102[3] = v13;
    v103 = v13;
    v102[1] = v13;
    v102[2] = v13;
    v102[0] = v13;
    v99 = 0;
    v100 = 0;
    v101 = 0;
    v107 = v102;
    LODWORD(v89) = *&v11[4 * v12];
    OTL::FeatureBuffer::FeatureBuffer(v91, &v89, 1);
    OTL::GCommon::GetLookups(a2, v91, &v99, 0);
    v90[0] = v91;
    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](v90);
    v15 = v99;
    v14 = v100;
    if (v99 != v100)
    {
      v16 = &v88[3 * v12];
      v17 = *(v16 + 1);
      do
      {
        v18 = *v15;
        v19 = *(v15 + 1);
        v20 = *(v16 + 2);
        if (v17 >= v20)
        {
          *&v91[32] = 0xAAAAAAAAAAAAAAAALL;
          *&v21 = 0xAAAAAAAAAAAAAAAALL;
          *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v91 = v21;
          *&v91[16] = v21;
          v22 = (v17 - *v16) >> 2;
          v23 = v22 + 1;
          if ((v22 + 1) >> 62)
          {
            goto LABEL_92;
          }

          v24 = v20 - *v16;
          if (v24 >> 1 > v23)
          {
            v23 = v24 >> 1;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v25 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          std::__split_buffer<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,4ul> &>::__split_buffer(v91, v25, v22, v16 + 24);
          **&v91[16] = v18 | (v19 << 16);
          *&v91[16] += 4;
          v26 = *(v16 + 1) - *v16;
          v27 = *&v91[8] - v26;
          memcpy((*&v91[8] - v26), *v16, v26);
          v28 = *v16;
          *v16 = v27;
          v29 = *(v16 + 2);
          v86 = *&v91[16];
          *(v16 + 8) = *&v91[16];
          *&v91[16] = v28;
          *&v91[24] = v29;
          *v91 = v28;
          *&v91[8] = v28;
          std::__split_buffer<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,4ul> &>::~__split_buffer(v91);
          v17 = v86;
        }

        else
        {
          *v17++ = v18 | (v19 << 16);
        }

        *(v16 + 1) = v17;
        v15 = (v15 + 4);
      }

      while (v15 != v14);
    }

    *v91 = &v99;
    std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v91);
    ++v12;
    v11 = v84;
  }

  while (v12 != 4);
  v30 = 0;
  *v90 = xmmword_18477B840;
  do
  {
    v31 = 16;
    v32 = v11;
    while (*v32 != *(v90 + v30))
    {
      v32 += 4;
      v31 -= 4;
      if (!v31)
      {
        v32 = (v84 + 16);
        break;
      }
    }

    v33 = (v32 - v11) >> 2;
    if (v33 >= 4)
    {
LABEL_91:
      __break(1u);
LABEL_92:
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v34 = &v88[3 * v33];
    v35 = *v34;
    v36 = v34[1];
    while (v35 != v36)
    {
      v37 = *v35;
      v39 = *a3;
      v38 = a3[1];
      v40 = HIWORD(*v35);
      if (*a3 != v38)
      {
        while (*v39 != v37 || v39[1] != v40)
        {
          v39 += 52;
          if (v39 == v38)
          {
            goto LABEL_39;
          }
        }
      }

      if (v39 == v38)
      {
LABEL_39:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        *&v103 = v102;
        *v91 = v37;
        *&v91[2] = v40;
        memset(&v91[8], 0, 24);
        *(&v92 + 1) = &v91[32];
        if (v38 >= a3[2])
        {
          v42 = std::vector<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>::__emplace_back_slow_path<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>>(a3, v91);
        }

        else
        {
          *v38 = *v91;
          v42 = (v38 + 52);
          std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100]<std::__wrap_iter<CFRange const*>,0>(v38 + 1, *&v91[8], *&v91[16]);
        }

        a3[1] = v42;
        v89 = &v91[8];
        std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&v89);
        v89 = &v99;
        std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&v89);
      }

      ++v35;
    }

    v30 += 4;
    v11 = v84;
  }

  while (v30 != 16);
  v43 = *(v76 + 1);
  memset(&v91[8], 0, 80);
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v98 = 0;
  v97 = 0u;
  v44 = *(v43 + 16);
  *v91 = v43;
  *&v97 = v44;
  v45 = v80;
  if (v80 > 0)
  {
    v46 = 1;
  }

  else
  {
    v46 = 2;
  }

  v83 = v46;
  if (v80 <= 0)
  {
    v47 = 1;
  }

  else
  {
    v47 = 2;
  }

  v77 = v47;
  v99 = v75;
  v100 = v81;
  if (v81 == v79)
  {
    goto LABEL_88;
  }

  v48 = v79;
  v49 = 0;
  v85 = 0;
  v87 = 0;
  v50 = 0;
  v51 = -1;
  while (2)
  {
    IsDeleted = TRunGlue::TGlyph::IsDeleted(&v99);
    v53 = v100;
    if ((IsDeleted & 1) == 0)
    {
      v90[0] = TRunGlue::GetStringIndex(v99, v100);
      FullChar = TCharStreamIterator::GetFullChar(v91, v90, 0);
      v55 = JoiningScriptShapingEngine::shapeTypes[u_getIntPropertyValue(FullChar, UCHAR_JOINING_TYPE)];
      if ((TRunGlue::GetGlyphProps(v99, v100) & 0x300) != 0)
      {
        v56 = v51;
LABEL_70:
        if (v49 >= 1 && FullChar >= 0x180B && (FullChar >> 1 < 0xC07 || FullChar == 6159))
        {
          v67 = v81;
          if (v100 < v81)
          {
            v67 = v100;
          }

          if (v81 + v49 <= v100 + 1)
          {
            v68 = v100 + 1;
          }

          else
          {
            v68 = v81 + v49;
          }

          v49 = v68 - v67;
          v81 = v67;
        }

        else if ((*(v76 + 24) & 1) == 0 && !TRunGlue::TGlyph::glyphID(&v99))
        {
          TRunGlue::Delete(*(v76 + 2), v100, 0);
        }
      }

      else
      {
        v56 = v90[0];
        if (v90[0] == v51)
        {
          v57 = 4;
        }

        else
        {
          v57 = v55;
        }

        if ((v57 & 4) != 0)
        {
          goto LABEL_70;
        }

        v58 = (v57 & 8) == 0;
        v59 = v87 && (v57 & v77) != 0;
        if ((v58 & v59) != 0)
        {
          v60 = v78;
        }

        else
        {
          v60 = 0;
        }

        v87 = (v57 & v83) != 0;
        if (v49 >= 1)
        {
          v61 = v74;
          if ((v59 & v85) == 0)
          {
            v61 = 0;
          }

          v62 = v61 + v50;
          if (v62 >= 4u)
          {
            goto LABEL_91;
          }

          v63 = &v88[3 * v62];
          v64 = *v63;
          v65 = v63[1];
          if (*v63 != v65)
          {
            do
            {
              v66 = *v64++;
              FullChar = FullChar & 0xFFFFFFFF00000000 | v66;
              OTL::GlyphLookups::SetLookupInRange<true>(a3, FullChar, v81, v49);
            }

            while (v64 != v65);
          }
        }

        v81 = v100;
        v50 = v60;
        v85 = v58;
        v49 = 1;
        v48 = v79;
        v45 = v80;
      }

      v53 = v100;
      v51 = v56;
    }

    v100 = (v53 + v45);
    if ((v53 + v45) != v48)
    {
      continue;
    }

    break;
  }

  if (v49 > 0)
  {
    v69 = &v88[3 * v50];
    v70 = *v69;
    v71 = v69[1];
    if (*v69 != v71)
    {
      do
      {
        v72 = *v70++;
        v51 = v51 & 0xFFFFFFFF00000000 | v72;
        OTL::GlyphLookups::SetLookupInRange<true>(a3, v51, v81, v49);
      }

      while (v70 != v71);
    }
  }

LABEL_88:
  for (i = 9; i != -3; i -= 3)
  {
    *v91 = &v88[i];
    std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__destroy_vector::operator()[abi:fn200100](v91);
  }
}

CFIndex JoiningScriptShapingEngine::FinishStretching(JoiningScriptShapingEngine *this, const TCharStream *a2, TRunGlue *a3)
{
  v85 = *MEMORY[0x1E69E9840];
  TRunGlue::UpdateAdvancesIfNeeded(a2);
  v5 = *(a2 + 13);
  v6 = v5[1] - *v5;
  result = TRunGlue::length(a2);
  if (result == v6 >> 4)
  {
    v8 = *(a2 + 6);
    v69 = this;
    v80 = 0u;
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v9 = *(this + 2);
    v81 = 0;
    *&v80 = v9;
    result = TRunGlue::length(a2);
    v10 = 0;
    if (v8 > 0 || (v11 = result, v10 = TRunGlue::length(a2) - 1, result = v11, (v10 & 0x8000000000000000) == 0))
    {
      if (result > v10)
      {
        v12 = v8;
        if (v8 >= 1)
        {
          v13 = 0;
        }

        else
        {
          v13 = -1;
        }

        v64 = v13 - v8;
        v14 = 16 * v8;
        v15 = MEMORY[0x1E695F060];
        v63 = v5;
        v66 = v8;
        v65 = 16 * v8;
        do
        {
          v16 = (v5[1] - *v5) >> 4;
          if (v16 <= v10)
          {
LABEL_110:
            __break(1u);
          }

          v17 = *v5 + 16 * v10;
          v20 = *(v17 + 8);
          v18 = (v17 + 8);
          v19 = v20;
          if (!v20)
          {
            goto LABEL_107;
          }

          v21 = 1;
          if (result <= v10)
          {
            goto LABEL_28;
          }

          v22 = v10;
          while (1)
          {
            if (v16 <= v22)
            {
              goto LABEL_110;
            }

            if (*v18 != v19)
            {
              break;
            }

            if (v22 >= v10)
            {
              v23 = v10;
            }

            else
            {
              v23 = v22;
            }

            v24 = v10 + v21;
            if (v10 + v21 <= v22 + 1)
            {
              v24 = v22 + 1;
            }

            v21 = v24 - v23;
            v22 += v8;
            if (v22 >= 0)
            {
              v18 = (v18 + v14);
              v10 = v23;
              if (result > v22)
              {
                continue;
              }
            }

            goto LABEL_24;
          }

          v23 = v10;
          if (*v18)
          {
LABEL_24:
            if (v8 < 1)
            {
              v25 = -1;
            }

            else
            {
              v25 = v21;
            }

            v10 = v23 - v8 + v25;
          }

          else
          {
LABEL_28:
            if (v8 < 1)
            {
              v26 = -1;
            }

            else
            {
              v26 = v21;
            }

            v27 = v26 + v10;
            if (v26 + v10 >= 0 && result > v27)
            {
              v28 = 0;
              v29 = 0.0;
              v30 = v26 + v10;
              v67 = result;
              while (1)
              {
                v82[0] = TRunGlue::GetStringIndex(a2, v30);
                FullChar = TCharStreamIterator::GetFullChar(&v69, v82, 0);
                if (((1 << u_charType(FullChar)) & 0xE3E) == 0)
                {
                  break;
                }

                if (v30 >= v27)
                {
                  v32 = v27;
                }

                else
                {
                  v32 = v30;
                }

                v33 = v27 + v28;
                if (v27 + v28 <= v30 + 1)
                {
                  v33 = v30 + 1;
                }

                v28 = v33 - v32;
                v29 = v29 + TRunGlue::GetAdvance(a2, v30);
                if (v28 >= 256)
                {
                  goto LABEL_46;
                }

                v30 += v8;
                result = v67;
                if (v30 >= 0)
                {
                  v27 = v32;
                  if (v67 > v30)
                  {
                    continue;
                  }
                }

                goto LABEL_45;
              }

              v32 = v27;
              result = v67;
LABEL_45:
              v27 = v32;
              v14 = v65;
              if (v28)
              {
LABEL_46:
                if (v21 < 1)
                {
                  v35 = 0.0;
                }

                else
                {
                  v34 = 0;
                  v35 = 0.0;
                  do
                  {
                    v35 = v35 + TRunGlue::GetAdvance(a2, v10 + v34);
                    v34 += 2;
                  }

                  while (v34 < v21);
                }

                if (v29 >= v35)
                {
                  v36 = v29;
                }

                else
                {
                  v36 = v35;
                }

                if (v8 < 1)
                {
                  v36 = 0.0;
                }

                v37 = v29 - v35;
                v38 = (v29 - v35) / (v21 / 2);
                if ((v21 + 1) < 3)
                {
                  v38 = v29 - v35;
                }

                if (v37 <= 0.0)
                {
                  v39 = v36 + v37 * v12 * 0.5;
                }

                else
                {
                  v39 = v36;
                }

                if (v37 <= 0.0)
                {
                  v40 = 0.0;
                }

                else
                {
                  v40 = v38;
                }

                v41 = v10 + v21 - 1;
                v42 = v39 - TRunGlue::GetAdvance(a2, v41);
                v86.y = 0.0;
                v86.x = v42;
                TRunGlue::SetOrigin(a2, v41, v86);
                TRunGlue::SetAdvance(a2, v41, *v15);
                if (v41 <= v10)
                {
LABEL_96:
                  if (*(a2 + 18))
                  {
                    if (v10 >= v32)
                    {
                      v60.location = v32;
                    }

                    else
                    {
                      v60.location = v10;
                    }

                    v61 = v32 + v28;
                    if (v32 + v28 <= v21 + v10)
                    {
                      v61 = v21 + v10;
                    }

                    v60.length = v61 - v60.location;
                    TRunGlue::ClearSafeToBreakAfter(a2, v60);
                  }

                  if (v8 < 1)
                  {
                    v62 = -1;
                  }

                  else
                  {
                    v62 = v28;
                  }

                  v10 = v62 - v8 + v32;
                  v5 = v63;
                  result = v67;
                  v14 = v65;
                  goto LABEL_107;
                }

                v43 = (v10 + v21 - 2);
                while (2)
                {
                  Advance = TRunGlue::GetAdvance(a2, v43);
                  if (Advance == 0.0)
                  {
                    v45 = 0.0;
                  }

                  else
                  {
                    v45 = v40 / Advance;
                  }

                  v46 = vcvtmd_s64_f64(v45);
                  if (v46)
                  {
                    *&v47 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v47 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v83[3] = v47;
                    v84 = v47;
                    v83[1] = v47;
                    v83[2] = v47;
                    *v82 = v47;
                    v83[0] = v47;
                    v68[0] = a2;
                    v68[1] = v43;
                    v48 = TRunGlue::TGlyph::glyphID(v68);
                    v82[0] = 0;
                    v82[1] = 0;
                    *&v83[0] = 0;
                    *(&v84 + 1) = v83 + 8;
                    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__vallocate[abi:fn200100](v82, v46);
                    v49 = 0;
                    v50 = v82[1] + 2 * v46;
                    v51 = (v46 + 0x7FFFFFFFFFFFFFFFLL) & 0x7FFFFFFFFFFFFFFFLL;
                    v52 = vdupq_n_s64(v51);
                    v53 = (v82[1] + 8);
                    do
                    {
                      v54 = vdupq_n_s64(v49);
                      v55 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v54, xmmword_18475A340)));
                      if (vuzp1_s8(vuzp1_s16(v55, *v52.i8), *v52.i8).u8[0])
                      {
                        *(v53 - 4) = v48;
                      }

                      if (vuzp1_s8(vuzp1_s16(v55, *&v52), *&v52).i8[1])
                      {
                        *(v53 - 3) = v48;
                      }

                      if (vuzp1_s8(vuzp1_s16(*&v52, vmovn_s64(vcgeq_u64(v52, vorrq_s8(v54, xmmword_18475AAF0)))), *&v52).i8[2])
                      {
                        *(v53 - 2) = v48;
                        *(v53 - 1) = v48;
                      }

                      v56 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v54, xmmword_18475AAE0)));
                      if (vuzp1_s8(*&v52, vuzp1_s16(v56, *&v52)).i32[1])
                      {
                        *v53 = v48;
                      }

                      if (vuzp1_s8(*&v52, vuzp1_s16(v56, *&v52)).i8[5])
                      {
                        v53[1] = v48;
                      }

                      if (vuzp1_s8(*&v52, vuzp1_s16(*&v52, vmovn_s64(vcgeq_u64(v52, vorrq_s8(v54, xmmword_18475AAD0))))).i8[6])
                      {
                        v53[2] = v48;
                        v53[3] = v48;
                      }

                      v49 += 8;
                      v53 += 8;
                    }

                    while (v51 - ((v46 + 0x7FFFFFFFFFFFFFFFLL) & 7) + 8 != v49);
                    v82[1] = v50;
                    v8 = v66;
                    if ((TRunGlue::DoGlyphInsertion(a2, v82[0], v46, 0, 1, v43, v43, 0, 0) & 1) == 0)
                    {
                      v68[0] = v82;
                      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v68);
                      goto LABEL_96;
                    }

                    if (v32 <= v10)
                    {
                      v57 = 0;
                    }

                    else
                    {
                      v57 = v46;
                    }

                    v32 += v57;
                    v21 += v46;
                    v67 += v46;
                    v68[0] = v82;
                    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v68);
                    if ((v46 & 0x8000000000000000) == 0)
                    {
                      v58 = v40 / (v46 + 1);
                      do
                      {
LABEL_92:
                        v42 = v42 - v58;
                        v87.y = 0.0;
                        v87.x = v42;
                        TRunGlue::SetOrigin(a2, v43 + v46, v87);
                        TRunGlue::SetAdvance(a2, v43 + v46, *v15);
                        v59 = v46-- + 1;
                      }

                      while (v59 > 1);
                    }

                    v41 -= 2;
                    v42 = v42 - TRunGlue::GetAdvance(a2, v41);
                    v88.y = 0.0;
                    v88.x = v42;
                    TRunGlue::SetOrigin(a2, v41, v88);
                    TRunGlue::SetAdvance(a2, v41, *v15);
                    v43 = (v43 - 2);
                    if (v41 <= v10)
                    {
                      goto LABEL_96;
                    }

                    continue;
                  }

                  break;
                }

                v58 = v40;
                goto LABEL_92;
              }
            }

            v10 = v64 + v27;
          }

LABEL_107:
          v10 += v8;
        }

        while (v10 >= 0 && result > v10);
      }
    }
  }

  return result;
}

_DWORD *JoiningScriptShapingEngine::ApplyStretching(OTL::GSUB const&)::$_0::__invoke(_DWORD *result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (a4 <= 0)
    {
      v9 = result[2];
LABEL_10:
      result[2] = v9 + 1;
    }

    else
    {
      v4 = **result;
      v5 = (*(*result + 8) - v4) >> 4;
      v6 = v5 >= a2;
      v7 = v5 - a2;
      if (!v6)
      {
        v7 = 0;
      }

      v8 = (v4 + 16 * a2 + 8);
      while (v7)
      {
        v9 = result[2];
        *v8 = v9;
        v8 += 4;
        --v7;
        if (!--a4)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  return result;
}

void IndicShapingEngine::FindSyllableEnd(TRunGlue **this, unint64_t a2, int a3)
{
  v6 = TRunGlue::length(this[1]);
  v7 = 0;
  v8 = a2 + 31;
  if ((a2 + 31) >= v6)
  {
    v8 = v6;
  }

  v44 = v8;
  if (a2 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = a2;
  }

  v45 = 16 * a2;
  v42 = 4 * a2;
  v43 = a2 + 1;
  v10 = 1;
  v40 = a2;
  v41 = a3;
  v39 = v9;
LABEL_7:
  v11 = 0;
  v12 = 0;
  v13 = v45;
  v14 = a2;
  while (v9 != v14)
  {
    v15 = v14;
    v16 = *this[3];
    if (v15 >= (*(this[3] + 1) - v16) >> 4)
    {
      goto LABEL_36;
    }

    v17 = v16 + v13;
    *(v17 + 12) = a3;
    v18 = *(v17 + 8);
    v19 = v18;
    if (v18 == 6)
    {
      v11 = 1;
    }

    else if (v18 == 5)
    {
      v7 = 1;
    }

    else if ((v11 & ((v18 & 0xFFFE) == 8)) != 0)
    {
      goto LABEL_18;
    }

    v20 = stateTable[16 * v12 + v18];
    v12 = stateTable[16 * v12 + v19];
    v14 = v15 + 1;
    v13 += 16;
    if (v20 < 0)
    {
      goto LABEL_18;
    }
  }

  v15 = v9;
LABEL_18:
  if ((v10 & v7 & 1) == 0)
  {
    return;
  }

  if (v44 >= (v15 + 1))
  {
    v21 = v15 + 1;
  }

  else
  {
    v21 = v44;
  }

  v22 = this[1];
  v23 = *(v22 + 13);
  v24 = *v23;
  if (a2 < (v23[1] - *v23) >> 4)
  {
    if (v43 == v21)
    {
      return;
    }

    v25 = 0;
    v26 = *(v24 + 16 * a2 + 8);
    v27 = v21 - 1;
    v28 = v42;
    while (1)
    {
      v29 = a2 + 1;
      if (a2 + 1 >= (v23[1] - v24) >> 4)
      {
        break;
      }

      v30 = v26;
      v26 = *(v24 + 4 * v28 + 24);
      if (v30 == 7 && *(v24 + 4 * v28 + 24) == 5)
      {
        StringIndex = TRunGlue::GetStringIndex(v22, a2);
        v32 = TRunGlue::GetStringIndex(v22, a2 + 1);
        TRunGlue::SetStringIndex(v22, a2, v32);
        TRunGlue::SetStringIndex(v22, a2 + 1, StringIndex);
        TRunGlue::Rotate(this[1], a2, a2 + 1, a2 + 2, 0);
        v33 = this[4];
        v34 = (this[5] - v33) >> 2;
        if (v34 <= a2)
        {
          break;
        }

        if (v34 <= v29)
        {
          break;
        }

        v35 = (v33 + v28);
        v36 = *v35;
        *v35 = v35[1];
        v35[1] = v36;
        v23 = *(v22 + 13);
        v24 = *v23;
        v37 = (v23[1] - *v23) >> 4;
        if (v37 <= a2)
        {
          break;
        }

        v38 = (v24 + 4 * v28);
        v38[2] = v26;
        v38[3] = 0;
        if (v37 <= v29)
        {
          break;
        }

        v38[6] = v30;
        v38[7] = 0;
        v25 = 1;
      }

      v28 += 4;
      if (v27 == ++a2)
      {
        v10 = 0;
        v7 = 1;
        a2 = v40;
        a3 = v41;
        v9 = v39;
        if (v25)
        {
          goto LABEL_7;
        }

        return;
      }
    }
  }

LABEL_36:
  __break(1u);
}

void IndicShapingEngine::SetFeatures(IndicShapingEngine *this@<X0>, unsigned int *a2@<X1>, IndicReorderingOutput **a3@<X8>)
{
  v5 = &v159;
  v177 = *MEMORY[0x1E69E9840];
  v6 = *(this + 63);
  if (!v6)
  {
    v6 = *(this + 62);
  }

  v7 = *(this + 1);
  v159 = *(this + 2);
  v160 = 0u;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v171 = 0;
  v170 = 0u;
  *&v170 = *(v159 + 16);
  v8 = TRunGlue::length(v7);
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    for (i = 0; i != v9; ++i)
    {
      StringIndex = TRunGlue::GetStringIndex(v7, i);
      FullChar = TCharStreamIterator::GetFullChar(&v159, &StringIndex, 0);
      v13 = *(v7 + 104);
      v14 = *v13;
      v15 = v13[1] - *v13;
      if (i >= v15 >> 4)
      {
        goto LABEL_306;
      }

      CharClass = IndicClassTable::getCharClass(v6, FullChar);
      v17 = v14 + v10;
      *(v17 + 8) = CharClass;
      *(v17 + 12) = 0;
      v10 += 16;
    }
  }

  if (*(*(this + 64) + 72) != 1802396769 || (v18 = *(this + 1), v19 = TRunGlue::length(v18), v19 < 3))
  {
LABEL_25:
    if (*(this + 888) == 1)
    {
      strcpy(a2, "tkunnhkafhprfrkrferpfwlbflahftsputavtcjc");
      *(a2 + 41) = 0;
      *(a2 + 21) = 0;
      operator new();
    }

    strcpy(a2, "tkunnhkafhprfwlbflahftsputavtiniserpsvbaswlbstspnlah");
    *(a2 + 53) = 0;
    *(a2 + 27) = 0;
    operator new();
  }

  v7 = v19;
  v14 = 0;
  v15 = *(v18 + 13);
  v20 = *v15;
  while (1)
  {
    v21 = (*(v15 + 8) - v20) >> 4;
    if (v21 <= v14)
    {
      goto LABEL_306;
    }

    if ((*(v20 + 16 * v14 + 11) & 0x40) != 0)
    {
      v22 = v14 + 1;
      if (v21 <= v14 + 1)
      {
        goto LABEL_306;
      }

      v23 = *(v20 + 16 * v22 + 8);
      if (v23 == 7)
      {
        break;
      }
    }

    v24 = v14;
LABEL_24:
    v14 = v24 + 1;
    if ((v7 - (v24 + 1)) < 3)
    {
      goto LABEL_25;
    }
  }

  v24 = v14 + 2;
  if (v21 <= v14 + 2)
  {
    goto LABEL_306;
  }

  v5 = *(v20 + 16 * v24 + 8);
  if (*(v20 + 16 * v24 + 8) != 8)
  {
    v24 = v14;
    goto LABEL_23;
  }

  v25 = TRunGlue::GetStringIndex(v18, v14 + 1);
  v26 = TRunGlue::GetStringIndex(v18, v14 + 2);
  TRunGlue::SetStringIndex(v18, v14 + 1, v26);
  TRunGlue::SetStringIndex(v18, v14 + 2, v25);
  TRunGlue::Rotate(*(this + 1), v14 + 1, v14 + 2, v14 + 3, 0);
  v15 = *(this + 4);
  v27 = (*(this + 5) - v15) >> 2;
  if (v27 > v22 && v27 > v24)
  {
    *(v15 + 4 * v22) = vrev64_s32(*(v15 + 4 * v22));
    v15 = *(v18 + 13);
    v20 = *v15;
    v28 = (*(v15 + 8) - *v15) >> 4;
    if (v28 > v22)
    {
      v29 = v20 + 16 * v22;
      *(v29 + 8) = v5;
      *(v29 + 12) = 0;
      if (v28 > v24)
      {
        v30 = v20 + 16 * v24;
        *(v30 + 8) = v23;
        *(v30 + 12) = 0;
LABEL_23:
        v5 = &v159;
        goto LABEL_24;
      }
    }
  }

LABEL_306:
  __break(1u);
  while (v7 != a2)
  {
    v135 = *v7;
    v7 += 4;
    *v15 = v135;
    v15 += 4;
  }

  *(v5 + 440) = v15;
  if (v173 == 1)
  {
    v158 = v172;
    std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v158);
  }

  v158 = &v159;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v158);
  v31 = *(v14 + 12);
  *(v5 + 272) = "tkunnhkafrkrferpfwlbftsputavtcjcserpsvbaswlbstspnlah";
  if ((v31 & 0x1000) != 0)
  {
    v32 = "tkunnhkafrkrflahutavtcjcserpsvbaswlbstspnlah";
  }

  else
  {
    v32 = "tkunnhkafrkrfwlbflahutavtcjcserpsvbaswlbstspnlah";
  }

  v33 = TRunGlue::length(*(this + 1));
  if (v33 >= 1)
  {
    v34 = v33;
    a2 = 0;
    v35 = 0;
    v138 = v14;
    v142 = v32;
    v143 = v33;
    do
    {
      v150 = v35 + 1;
      IndicShapingEngine::FindSyllableEnd(this, a2, v35 + 1);
      v7 = v36;
      if (v36 - a2 >= 2)
      {
        v15 = *(this + 4);
        v37 = (*(this + 5) - v15) >> 2;
        if (v37 <= a2 || v37 <= a2 + 1)
        {
          goto LABEL_306;
        }

        if (IsProhibitedSequence(*(v15 + 4 * a2), *(v15 + 4 * (a2 + 1)), 0))
        {
          v7 = a2 + 1;
        }
      }

      (*(*v157 + 16))(v157, a2);
      v151 = v7;
      if (v7 != a2)
      {
        v38 = v7;
        v39 = 16 * v7 - 8;
        while (1)
        {
          v7 = v38 - 1;
          v15 = *v156;
          if (v38 - 1 >= ((v156[1] - *v156) >> 4))
          {
            goto LABEL_306;
          }

          if ((*(v15 + v39) & 0xFFFE) != 0xC)
          {
            while (1)
            {
              v7 = v38 - 1;
              v40 = v156;
              v15 = *v156;
              v41 = (v156[1] - *v156) >> 4;
              if (v41 <= v38 - 1)
              {
                goto LABEL_306;
              }

              if (*(v15 + v39) != 1)
              {
                if (v38 <= a2)
                {
                  goto LABEL_52;
                }

                v7 = v38;
                do
                {
                  if (v7 <= a2)
                  {
LABEL_89:
                    IndicReorderingOutput::assignReorderClasses(v157, v14);
                    v7 = v151;
                    v57 = IndicReorderingOutput::finishMatras(v157, v151, (*(*(this + 62) + 12) & 0x4000000) == 0);
                    if (v57 >= v38)
                    {
                      v58 = v38;
                    }

                    else
                    {
                      v58 = v57;
                    }

                    if (v57 != v151)
                    {
                      v38 = v58;
                    }

                    v40 = v156;
                    v151 = v57;
                    goto LABEL_52;
                  }

                  if (v41 <= --v7)
                  {
                    goto LABEL_306;
                  }

                  v55 = *(v15 + v39) - 7;
                  v15 -= 16;
                }

                while (v55 < 3);
                while (1)
                {
                  v15 = *(this + 4);
                  if (v7 >= ((*(this + 5) - v15) >> 2))
                  {
                    goto LABEL_306;
                  }

                  v56 = IndicReorderingOutput::noteMatra(v157, v14, *(v15 + 4 * v7), v7, "tkunnhkafrkrferpfwlbftsputavtcjcserpsvbaswlbstspnlah");
                  if (v7 > a2)
                  {
                    --v7;
                    if (v56)
                    {
                      continue;
                    }
                  }

                  goto LABEL_89;
                }
              }

              v15 = *(this + 4);
              if (v7 >= ((*(this + 5) - v15) >> 2))
              {
                goto LABEL_306;
              }

              IndicReorderingOutput::noteVowelModifier(v157, v14, *(v15 + 4 * v38 - 4), v38 - 1, "tkunnhkafrkrferpfwlbftsputavtcjcserpsvbaswlbstspnlah");
              v39 -= 16;
              --v38;
              if (a2 == v7)
              {
                goto LABEL_51;
              }
            }
          }

          v15 = *(this + 4);
          if (v7 >= ((*(this + 5) - v15) >> 2))
          {
            goto LABEL_306;
          }

          IndicReorderingOutput::noteSyllableModifier(v157, v14, *(v15 + 4 * v38 - 4), v38 - 1, "tkunnhkafrkrferpfwlbftsputavtcjcserpsvbaswlbstspnlah");
          v39 -= 16;
          --v38;
          if (a2 == v7)
          {
            break;
          }
        }
      }

LABEL_51:
      v40 = v156;
      v38 = a2;
LABEL_52:
      v42 = *v40;
      v15 = v40[1] - *v40;
      v43 = v15 >> 4;
      if (v15 >> 4 <= a2)
      {
        goto LABEL_306;
      }

      v5 = *(v42 + 16 * a2 + 8);
      if (*(v42 + 16 * a2 + 8) <= 0xFu)
      {
        v44 = 1 << *(v42 + 16 * a2 + 8);
        if ((v44 & 0x3042) != 0)
        {
          v54 = IndicReorderingOutput::writeMpre(v157);
          OpenTypeShapingEngine::InsertDottedCircle(this, a2, v157, "tkunnhkafrkrferpfwlbftsputavtcjcserpsvbaswlbstspnlah", 3, v54);
          std::for_each[abi:fn200100]<std::__wrap_iter<IndicReorderingOutput::MarkInfo *>,IndicReorderingOutput::MarkWriter>(*(v157 + 54), *(v157 + 55), 0x100000000, v157);
          std::for_each[abi:fn200100]<std::__wrap_iter<IndicReorderingOutput::MarkInfo *>,IndicReorderingOutput::MarkWriter>(*(v157 + 54), *(v157 + 55), 0x200000000, v157);
          std::for_each[abi:fn200100]<std::__wrap_iter<IndicReorderingOutput::MarkInfo *>,IndicReorderingOutput::MarkWriter>(*(v157 + 54), *(v157 + 55), 0x300000000, v157);
          std::for_each[abi:fn200100]<std::__wrap_iter<IndicReorderingOutput::MarkInfo *>,IndicReorderingOutput::MarkWriter>(*(v157 + 54), *(v157 + 55), 0x400000000, v157);
          std::for_each[abi:fn200100]<std::__wrap_iter<IndicReorderingOutput::MarkInfo *>,IndicReorderingOutput::MarkWriter>(*(v157 + 54), *(v157 + 55), 2863311362, v157);
          std::for_each[abi:fn200100]<std::__wrap_iter<IndicReorderingOutput::MarkInfo *>,IndicReorderingOutput::MarkWriter>(*(v157 + 54), *(v157 + 55), 2863311363, v157);
          IndicReorderingOutput::writeVMpost(v157);
LABEL_300:
          v5 = &v159;
          v7 = v151;
          goto LABEL_301;
        }

        if ((v44 & 0x801C) != 0)
        {
          v15 = v38 - a2;
          v45 = v38 - a2 < 3 || (v5 & 0x40000000) == 0;
          if (v45)
          {
            goto LABEL_137;
          }

          v46 = a2 + 1;
          if (v43 <= a2 + 1)
          {
            goto LABEL_306;
          }

          v47 = a2 + 2;
          if (v43 <= a2 + 2)
          {
            goto LABEL_306;
          }

          v48 = *(v42 + 16 * v47 + 8);
          if (*(v42 + 16 * v46 + 8) != 7)
          {
            v49 = v15 != 3 && *(v42 + 16 * v46 + 8) == 9;
            if (!v49 || *(v42 + 16 * v47 + 8) != 7)
            {
              goto LABEL_137;
            }
          }

          if ((*(v14 + 13) & 0x20) == 0 && v48 != 9 && *(v42 + 16 * v47 + 8) != 8)
          {
            v15 = *(this + 4);
            v51 = (*(this + 5) - v15) >> 2;
            if (v51 <= a2 || v51 <= v46)
            {
              goto LABEL_306;
            }

            v52 = *(v15 + 4 * a2);
            v53 = *(v15 + 4 * v46);
            *(v157 + 524) = v52;
            *(v157 + 263) = v5;
            *(v157 + 528) = v53;
            *(v157 + 529) = 0;
            *(v157 + 265) = 0;
            *(v157 + 133) = a2;
            *(v157 + 135) = "tkunnhkafhprfrkrferpfwlbflahftsputavtcjcserpsvbaswlbstspnlah";
            a2 = (a2 + 2);
            goto LABEL_137;
          }

          if (v15 == 3)
          {
            goto LABEL_137;
          }

          v7 = *(this + 1);
          if (*(v7 + 144))
          {
            TRunGlue::FocusOnIndex(*(this + 1), a2);
            v59 = *(v7 + 168);
            v60 = a2 - *(v7 + 152);
            v7 = *(this + 1);
            v61 = *(v7 + 144);
            LOWORD(v158) = *(v59 + 2 * v60);
            if (v61)
            {
              TRunGlue::FocusOnIndex(v7, a2 + 1);
              v62 = *(v7 + 168);
              v63 = v46 - *(v7 + 152);
              v7 = *(this + 1);
              v64 = *(v7 + 144);
              WORD1(v158) = *(v62 + 2 * v63);
              if (v64)
              {
                TRunGlue::FocusOnIndex(v7, a2 + 2);
                v65 = (*(v7 + 168) + 2 * &v47[-*(v7 + 152)]);
                goto LABEL_110;
              }

              v67 = *(v7 + 168);
              v68 = *(v7 + 152);
LABEL_109:
              v65 = (v67 + 2 * v68 + 2 * v47);
LABEL_110:
              WORD2(v158) = *v65;
              if (v176)
              {
                v140 = v48;
                *v144 = a2 + 1;
                v146 = a2 + 2;
                v69 = *(*(*(this + 1) + 496) + 408);
                os_unfair_lock_lock_with_options();
                v15 = v176;
                if ((v176 & 1) == 0)
                {
                  goto LABEL_306;
                }

                v70 = StringIndex;
                v136 = v175;
                if (StringIndex != v175)
                {
                  v148 = v69;
                  while (1)
                  {
                    v137 = v70;
                    v71 = TBaseFont::NthLookup<OTL::GSUB>(v69, *(this + 64), *v70);
                    if (v71)
                    {
                      v72 = v71;
                      v152 = ((*(v71 + 26) - *(v71 + 24)) >> 6);
                      if (((*(v71 + 26) - *(v71 + 24)) >> 6))
                      {
                        v73 = 0;
                        v154 = *(this + 64);
LABEL_117:
                        v74 = v72[12];
                        v75 = (v72[13] - v74) >> 6;
                        v14 = v74 + (v73 << 6) + 8;
                        v76 = v75 <= v73 ? 0 : v74 + (v73 << 6) + 8;
                        if (v75 > v73)
                        {
                          break;
                        }
                      }
                    }

LABEL_131:
                    v70 = v137 + 2;
                    v69 = v148;
                    if (v137 + 2 == v136)
                    {
                      goto LABEL_132;
                    }
                  }

                  v77 = &v158;
                  v7 = 3;
                  while (1)
                  {
                    v78 = *(v14 + 16);
                    v79 = *(v14 + 24);
                    v80 = (v76 + (v79 >> 1));
                    if (v79)
                    {
                      v78 = *(*v80 + v78);
                    }

                    v81 = v78(v80, *v77);
                    if (v81)
                    {
                      v82 = v72[12];
                      v83 = v73 >= (v72[13] - v82) >> 6 ? 0 : *(v82 + (v73 << 6));
                      if (OTL::GSUB::WouldSubstituteSubtable(v154, v72, *(v72 + 8), v83, v81, v77, v7))
                      {
                        break;
                      }
                    }

                    ++v77;
                    if (!--v7)
                    {
                      if (++v73 != v152)
                      {
                        goto LABEL_117;
                      }

                      goto LABEL_131;
                    }
                  }

                  os_unfair_lock_unlock(v148 + 89);
                  v15 = *(this + 4);
                  v84 = (*(this + 5) - v15) >> 2;
                  if (v84 > a2)
                  {
                    v14 = v138;
                    v32 = v142;
                    if (v84 > *v144 && v84 > v146)
                    {
                      v85 = *(v15 + 4 * a2);
                      v86 = *(v15 + 4 * *v144);
                      v87 = *(v15 + 4 * v146);
                      *(v157 + 133) = a2;
                      a2 = (a2 + 3);
                      *(v157 + 524) = v85;
                      *(v157 + 263) = v5;
                      *(v157 + 528) = v86;
                      *(v157 + 529) = v87;
                      *(v157 + 265) = v140;
                      *(v157 + 135) = "tkunnhkafhprfrkrferpfwlbflahftsputavtcjcserpsvbaswlbstspnlah";
                      goto LABEL_137;
                    }
                  }

                  goto LABEL_306;
                }

LABEL_132:
                os_unfair_lock_unlock(v69 + 89);
                v14 = v138;
                v32 = v142;
              }

LABEL_137:
              if (a2 >= v38 - 1)
              {
                v88 = (v38 - 1);
              }

              else
              {
                v88 = a2;
              }

              v5 = v88 + 1;
              v89 = *v156;
              v15 = (v156[1] - *v156) >> 4;
              v90 = (*v156 + 16 * v38 - 8);
              v91 = v38;
              while (--v91 > a2)
              {
                if (v15 <= v91)
                {
                  goto LABEL_306;
                }

                v92 = *v90;
                v90 -= 4;
                if (v92 < 0)
                {
                  v5 = v91 + 1;
                  goto LABEL_146;
                }
              }

              v91 = v88;
LABEL_146:
              v93 = v5;
              v94 = v5;
              if (v5 < v38)
              {
                if (v5 <= v15)
                {
                  v95 = (v156[1] - *v156) >> 4;
                }

                else
                {
                  v95 = v5;
                }

                v96 = v89 + 16 * v5;
                v97 = (v96 + 8);
                v93 = v5;
                while (v95 != v93)
                {
                  v98 = *v97;
                  if ((v98 - 7) >= 4 && v98 != 5)
                  {
                    goto LABEL_159;
                  }

                  ++v93;
                  v97 += 8;
                  if (v38 == v93)
                  {
                    v93 = v38;
LABEL_159:
                    if (v15 <= v5)
                    {
                      goto LABEL_306;
                    }

                    if (*(v96 + 8) == 5)
                    {
                      v94 = (v5 + 1);
                    }

                    else
                    {
                      v94 = v5;
                    }

                    goto LABEL_163;
                  }
                }

                goto LABEL_306;
              }

LABEL_163:
              if (v91 > a2)
              {
                v100 = 0;
                v101 = 0;
                v102 = 0;
                v103 = *(v14 + 12) & 0xFFF;
                v153 = -1;
                v104 = v91;
                while (v15 > v104)
                {
                  v105 = *(v89 + 16 * v104 + 8);
                  if (v105 == 8)
                  {
                    v106 = v104 - 1;
                    if (v15 <= v104 - 1)
                    {
                      goto LABEL_306;
                    }

                    if (*(v89 + 16 * v106 + 8) == 7)
                    {
                      goto LABEL_189;
                    }
                  }

                  else if (v105 < 0)
                  {
                    if (!v103)
                    {
                      goto LABEL_189;
                    }

                    v106 = v104 - 1;
                    if (v15 <= v104 - 1)
                    {
                      goto LABEL_306;
                    }

                    if (*(v89 + 16 * v106 + 8) != 7 || (v105 & 0x18000000) == 0 && ((v105 & 0x4000000) == 0) | v100 & 1)
                    {
                      goto LABEL_189;
                    }

                    if ((v105 & 0x4000000) != 0)
                    {
                      v107 = *(this + 4);
                      v108 = (*(this + 5) - v107) >> 2;
                      if (v108 <= v104 || v108 <= v106)
                      {
                        goto LABEL_306;
                      }

                      v109 = *(v107 + 4 * v104);
                      v110 = *(v107 + 4 * v106);
                      *(v157 + 128) = 0;
                      *(v157 + 127) = v104;
                      *(v157 + 500) = v109;
                      *(v157 + 251) = v105;
                      *(v157 + 504) = v110;
                      *(v157 + 130) = "tkunnhkafrkrferpftsputavtcjcserpsvbaswlbstspnlah";
                      v100 = 1;
                      v94 = (v104 - 1);
                      v102 = 2;
                      v153 = v104 - 1;
                    }

                    if ((v105 & 0x8000000) != 0)
                    {
                      if (v101)
                      {
                        goto LABEL_189;
                      }

                      v101 = 0;
                      v94 = v104;
                    }

                    else
                    {
                      v101 |= (v105 & 0x10000000u) >> 28;
                    }

                    --v103;
                  }

                  else
                  {
                    v106 = v104 - 1;
                  }

                  v104 = v106;
                  if (v106 <= a2)
                  {
                    v104 = a2;
                    goto LABEL_189;
                  }
                }

                goto LABEL_306;
              }

              v102 = 0;
              v153 = -1;
              v104 = v91;
LABEL_189:
              if (v15 <= v104)
              {
                goto LABEL_306;
              }

              if (*(v89 + 16 * v104 + 8) == 7)
              {
                v111 = v104 + 1;
              }

              else
              {
                v111 = v104;
              }

              v155 = v111;
              v112 = (v104 + 1) == v94 && *(v89 + 16 * v104 + 8) == 7;
              v113 = v157;
              v141 = v102;
              v149 = v112;
              if (*(v157 + 524))
              {
                v114 = *(v14 + 12) & 0x3000000;
                if (v114 == 50331648)
                {
                  v7 = v111 + 1;
                  if (v111 + 1 < v143)
                  {
                    if (v15 <= v7)
                    {
                      goto LABEL_306;
                    }

                    if (*(v89 + 16 * v7 + 8) == 5)
                    {
                      v7 = v111 + 2;
                    }
                  }
                }

                else
                {
                  v7 = v38;
                  if (v114 == 0x2000000)
                  {
                    v7 = v111;
                    if (v111 <= v91)
                    {
                      v115 = v91;
                    }

                    else
                    {
                      v115 = v111;
                    }

                    v116 = (v89 + 16 * v111 + 24);
                    while (v115 != v7)
                    {
                      if (v15 <= ++v7)
                      {
                        goto LABEL_306;
                      }

                      v117 = *v116;
                      v116 += 4;
                      if ((~v117 & 0x88000000) == 0)
                      {
                        goto LABEL_214;
                      }
                    }

                    v7 = v38;
                  }
                }

LABEL_214:
                IndicReorderingOutput::writeReph(v157);
                v113 = v157;
              }

              else
              {
                v7 = v38;
              }

              v118 = *(v113 + 54);
              v119 = *(v113 + 55);
              if (v118 != v119)
              {
                while (*v118 != 5)
                {
                  v118 += 64;
                  if (v118 == v119)
                  {
                    goto LABEL_220;
                  }
                }
              }

              if (v118 == v119)
              {
LABEL_220:
                if (*(v113 + 500))
                {
                  goto LABEL_221;
                }
              }

              else
              {
LABEL_221:
                IndicReorderingOutput::writeMpre(v113);
              }

              v147 = v94;
              if (a2 < v155)
              {
                v120 = 16 * a2;
                do
                {
                  v15 = *v156;
                  v121 = (v156[1] - *v156) >> 4;
                  if (v121 <= a2)
                  {
                    goto LABEL_306;
                  }

                  v122 = *(v15 + v120 + 8);
                  if (v7 == a2 && *(v157 + 524))
                  {
                    *(v157 + 134) = (*(v157 + 8) - *(v157 + 7)) >> 2;
                  }

                  v123 = v32;
                  if (v122 == 7)
                  {
                    if (v121 <= a2 + 1)
                    {
                      goto LABEL_306;
                    }

                    if (*(v15 + v120 + 24) == 9)
                    {
                      v123 = "tkunnhkafrkrferputavtcjcserpsvbaswlbstspnlah";
                    }

                    else
                    {
                      v123 = v32;
                    }
                  }

                  v15 = *(this + 4);
                  if (a2 >= (*(this + 5) - v15) >> 2)
                  {
                    goto LABEL_306;
                  }

                  OpenTypeReorderingOutput::writeChar(v157, *(v15 + 4 * a2), a2, v123, v122, 0);
                  a2 = (a2 + 1);
                  v120 += 16;
                }

                while (v155 != a2);
              }

              *v145 = v5;
              v5 = v93;
              a2 = v155;
              if (v155 != v91)
              {
                v5 = v155 + 1;
                if (v155 + 1 < v38)
                {
                  v15 = *v156;
                  if (v5 >= ((v156[1] - *v156) >> 4))
                  {
                    goto LABEL_306;
                  }

                  if (*(v15 + 16 * v5 + 8) == 5)
                  {
                    v5 = v155 + 2;
                  }
                }
              }

              IndicReorderingOutput::noteBaseConsonant(v157, 0);
              if (v7 == v155 && *(v157 + 524))
              {
                *(v157 + 134) = (*(v157 + 8) - *(v157 + 7)) >> 2;
              }

              if (v155 < v5)
              {
                a2 = v155;
                v124 = (16 * v155) | 8;
                do
                {
                  v15 = *(this + 4);
                  if (a2 >= (*(this + 5) - v15) >> 2 || a2 >= (v156[1] - *v156) >> 4)
                  {
                    goto LABEL_306;
                  }

                  OpenTypeReorderingOutput::writeChar(v157, *(v15 + 4 * a2), a2, "tkunnhkafrkrferputavtcjcserpsvbaswlbstspnlah", *(*v156 + v124), 0);
                  a2 = (a2 + 1);
                  v124 += 16;
                }

                while (v5 != a2);
              }

              std::for_each[abi:fn200100]<std::__wrap_iter<IndicReorderingOutput::MarkInfo *>,IndicReorderingOutput::MarkWriter>(*(v157 + 54), *(v157 + 55), 0x100000000, v157);
              if (v7 == v5 && *(v157 + 524))
              {
                *(v157 + 134) = (*(v157 + 8) - *(v157 + 7)) >> 2;
              }

              v125 = v147 + v149;
              std::for_each[abi:fn200100]<std::__wrap_iter<IndicReorderingOutput::MarkInfo *>,IndicReorderingOutput::MarkWriter>(*(v157 + 54), *(v157 + 55), 0x200000000, v157);
              v126 = 0;
              v127 = v155;
              if (v155 != v91 && v5 < v125)
              {
                v128 = v125 - 1;
                v14 = (16 * v5) | 8;
                a2 = v5;
                while (1)
                {
                  if (v128 == a2)
                  {
                    v15 = *v156;
                    if (v128 >= (v156[1] - *v156) >> 4)
                    {
                      goto LABEL_306;
                    }

                    if (*(v15 + 16 * v128 + 8) == 7)
                    {
                      break;
                    }
                  }

                  v15 = *(this + 4);
                  if (a2 >= (*(this + 5) - v15) >> 2 || a2 >= (v156[1] - *v156) >> 4)
                  {
                    goto LABEL_306;
                  }

                  OpenTypeReorderingOutput::writeChar(v157, *(v15 + 4 * a2), a2, v172[0], *(*v156 + v14), 0);
                  a2 = (a2 + 1);
                  v14 += 16;
                  if (a2 >= v125)
                  {
                    v126 = 0;
                    goto LABEL_262;
                  }
                }

                v126 = -1;
LABEL_262:
                v14 = v138;
                v127 = v155;
              }

              std::for_each[abi:fn200100]<std::__wrap_iter<IndicReorderingOutput::MarkInfo *>,IndicReorderingOutput::MarkWriter>(*(v157 + 54), *(v157 + 55), 0x300000000, v157);
              if (v5 != v125 && v7 == v125 && *(v157 + 524))
              {
                *(v157 + 134) = (*(v157 + 8) - *(v157 + 7)) >> 2;
              }

              v45 = v127 == v91;
              v34 = v143;
              if (!v45)
              {
                v125 += v126;
                a2 = (v5 <= v125 ? v125 : v5);
                while (a2 < v93)
                {
                  if (a2 == v153)
                  {
                    IndicReorderingOutput::writePreBaseConsonant(v157);
                    a2 = (v153 + v141);
                  }

                  else
                  {
                    v15 = *(this + 4);
                    if (a2 >= (*(this + 5) - v15) >> 2 || a2 >= (v156[1] - *v156) >> 4)
                    {
                      goto LABEL_306;
                    }

                    OpenTypeReorderingOutput::writeChar(v157, *(v15 + 4 * a2), a2, v172[0], *(*v156 + 16 * a2 + 8), 0);
                    a2 = (a2 + 1);
                  }
                }
              }

              if (v7 >= *v145 && v7 != v5 && v7 != v125 && *(v157 + 524))
              {
                *(v157 + 134) = (*(v157 + 8) - *(v157 + 7)) >> 2;
              }

              std::for_each[abi:fn200100]<std::__wrap_iter<IndicReorderingOutput::MarkInfo *>,IndicReorderingOutput::MarkWriter>(*(v157 + 54), *(v157 + 55), 0x400000000, v157);
              v129 = v157;
              v130 = *(v157 + 5);
              a2 = (v130 + 1);
              v32 = v142;
              if (v130 + 1 < v38)
              {
                v131 = 16 * v130 + 24;
                while (1)
                {
                  v15 = *(this + 4);
                  if (a2 >= (*(this + 5) - v15) >> 2 || a2 >= (v156[1] - *v156) >> 4)
                  {
                    goto LABEL_306;
                  }

                  OpenTypeReorderingOutput::writeChar(v157, *(v15 + 4 * a2), a2, v172[0], *(*v156 + v131), 0);
                  a2 = (a2 + 1);
                  v131 += 16;
                  if (v38 == a2)
                  {
                    v129 = v157;
                    break;
                  }
                }
              }

              std::for_each[abi:fn200100]<std::__wrap_iter<IndicReorderingOutput::MarkInfo *>,IndicReorderingOutput::MarkWriter>(*(v129 + 432), *(v129 + 440), 2863311362, v129);
              std::for_each[abi:fn200100]<std::__wrap_iter<IndicReorderingOutput::MarkInfo *>,IndicReorderingOutput::MarkWriter>(*(v157 + 54), *(v157 + 55), 2863311363, v157);
              IndicReorderingOutput::writeVMpost(v157);
              v132 = *(v14 + 12);
              v134 = (~v132 & 0x300000) == 0 && v7 == v5;
              if ((v132 & 0x3000000) == 0 && !v134 && *(v157 + 524))
              {
                *(v157 + 134) = (*(v157 + 8) - *(v157 + 7)) >> 2;
              }

              IndicReorderingOutput::writeRephFixup(v157);
              goto LABEL_300;
            }

            v67 = *(v7 + 168);
            v68 = *(v7 + 152);
          }

          else
          {
            v67 = *(v7 + 168);
            v68 = *(v7 + 152);
            LOWORD(v158) = *(v67 + 2 * v68 + 2 * a2);
          }

          WORD1(v158) = *(v67 + 2 * v68 + 2 * v46);
          goto LABEL_109;
        }

        if ((v44 & 0x1A0) != 0)
        {
          OpenTypeShapingEngine::InsertDottedCircle(this, a2, v157, "tkunnhkafrkrferpfwlbftsputavtcjcserpsvbaswlbstspnlah", 3, 0);
          v15 = *(this + 4);
          if (a2 >= (*(this + 5) - v15) >> 2)
          {
            goto LABEL_306;
          }

          OpenTypeReorderingOutput::writeChar(v157, *(v15 + 4 * a2), a2, "tkunnhkafrkrferpfwlbftsputavtcjcserpsvbaswlbstspnlah", v5, 0);
          goto LABEL_300;
        }
      }

      v7 = v151;
      v5 = &v159;
      if (a2 < v151)
      {
        v66 = (16 * a2) | 8;
        do
        {
          v15 = *(this + 4);
          if (a2 >= (*(this + 5) - v15) >> 2 || a2 >= (v156[1] - *v156) >> 4)
          {
            goto LABEL_306;
          }

          OpenTypeReorderingOutput::writeChar(v157, *(v15 + 4 * a2), a2, "tkunnhkafrkrferpfwlbftsputavtcjcserpsvbaswlbstspnlah", *(*v156 + v66), 0);
          a2 = (a2 + 1);
          v66 += 16;
        }

        while (v151 != a2);
      }

LABEL_301:
      if ((*(v157 + 8) - *(v157 + 7)) >= 1)
      {
        *&v161 = 0;
        operator new();
      }

      a2 = v7;
      v35 = v150;
    }

    while (v7 < v34);
  }

  *a3 = v157;
  if (v176 == 1)
  {
    *(v5 + 272) = &StringIndex;
    std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v172);
  }
}

void OpenTypeReorderingOutput::writeChar(OpenTypeReorderingOutput *this, int a2, uint64_t a3, const unsigned int *a4, int a5, uint64_t a6)
{
  v38 = a5;
  v39 = a2;
  if ((a6 & 0x8000000000000000) == 0)
  {
    v8 = *(this + 3);
    if ((v8 & 0x8000000000000000) == 0)
    {
      *(this + 8) |= 1 << (a3 - v8);
      v9 = *(this + 5);
      if (v9 <= a3)
      {
        v9 = a3;
      }

      *(this + 5) = v9;
    }
  }

  InsertedIndex = OpenTypeReorderingOutput::getInsertedIndex(this, a2, a3, a6);
  v12 = *(this + 11);
  v11 = *(this + 12);
  if (v12 >= v11)
  {
    v14 = *(this + 10);
    v15 = v12 - v14;
    v16 = (v12 - v14) >> 3;
    v17 = v16 + 1;
    if ((v16 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v18 = v11 - v14;
    if (v18 >> 2 > v17)
    {
      v17 = v18 >> 2;
    }

    v19 = v18 >= 0x7FFFFFFFFFFFFFF8;
    v20 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v19)
    {
      v20 = v17;
    }

    if (v20)
    {
      std::allocator<long>::allocate_at_least[abi:fn200100](this + 80, v20);
    }

    v21 = (v12 - v14) >> 3;
    v22 = (8 * v16);
    v23 = (8 * v16 - 8 * v21);
    *v22 = InsertedIndex;
    v13 = v22 + 1;
    memcpy(v23, v14, v15);
    v24 = *(this + 10);
    *(this + 10) = v23;
    *(this + 11) = v13;
    *(this + 12) = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v12 = InsertedIndex;
    v13 = v12 + 1;
  }

  *(this + 11) = v13;
  std::vector<unsigned int>::push_back[abi:fn200100](this + 7, &v39);
  std::vector<unsigned int>::push_back[abi:fn200100](this + 13, &v38);
  v26 = *(this + 17);
  v25 = *(this + 18);
  if (v26 >= v25)
  {
    v28 = *(this + 16);
    v29 = v26 - v28;
    v30 = (v26 - v28) >> 4;
    v31 = v30 + 1;
    if ((v30 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v32 = v25 - v28;
    if (v32 >> 3 > v31)
    {
      v31 = v32 >> 3;
    }

    v19 = v32 >= 0x7FFFFFFFFFFFFFF0;
    v33 = 0xFFFFFFFFFFFFFFFLL;
    if (!v19)
    {
      v33 = v31;
    }

    if (v33)
    {
      std::allocator<std::pair<long,unsigned int const*>>::allocate_at_least[abi:fn200100](this + 128, v33);
    }

    v34 = v30;
    v35 = (16 * v30);
    *v35 = *(this + 6);
    v35[1] = a4;
    v27 = 16 * v30 + 16;
    v36 = &v35[-2 * v34];
    memcpy(v36, v28, v29);
    v37 = *(this + 16);
    *(this + 16) = v36;
    *(this + 17) = v27;
    *(this + 18) = 0;
    if (v37)
    {
      operator delete(v37);
    }
  }

  else
  {
    *v26 = *(this + 6);
    *(v26 + 1) = a4;
    v27 = (v26 + 16);
  }

  *(this + 17) = v27;
}

void OpenTypeReorderingOutput::forEachUnwrittenIndex(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v31[14] = v3;
  v31[13] = v3;
  v31[12] = v3;
  v31[11] = v3;
  v31[10] = v3;
  v31[9] = v3;
  v31[8] = v3;
  v31[7] = v3;
  v31[6] = v3;
  v31[5] = v3;
  v31[4] = v3;
  v31[2] = v3;
  v31[3] = v3;
  v31[0] = v3;
  v31[1] = v3;
  v29 = 0;
  v30 = 0;
  __src = 0;
  v32[0] = v31;
  v4 = a2 - *(a1 + 24);
  if (v4 >= 1)
  {
    v7 = 0;
    for (i = 0; i != v4; ++i)
    {
      if (((*(a1 + 32) >> i) & 1) == 0)
      {
        v9 = i + *(a1 + 24);
        if (v7 >= v30)
        {
          v10 = __src;
          v11 = v7 - __src;
          v12 = (v7 - __src) >> 3;
          v13 = v12 + 1;
          if ((v12 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          v14 = v30 - __src;
          if ((v30 - __src) >> 2 > v13)
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

          v27 = v31;
          if (v15)
          {
            v16 = v32[0];
            if (v32[0] + 8 * v15 > v32)
            {
              if (!(v15 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:fn200100]();
            }

            v32[0] += 8 * v15;
          }

          else
          {
            v16 = 0;
          }

          v17 = (v7 - __src) >> 3;
          v25 = 0u;
          v26 = 0u;
          v18 = (v16 + 8 * v12);
          v19 = v16 + 8 * v15;
          v20 = &v18[-v17];
          *v18 = v9;
          v7 = v18 + 1;
          memcpy(v20, v10, v11);
          v21 = __src;
          v22 = v30;
          __src = v20;
          v29 = v7;
          v30 = v19;
          *&v26 = v21;
          *(&v26 + 1) = v22;
          *&v25 = v21;
          *(&v25 + 1) = v21;
          std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v25);
        }

        else
        {
          *v7++ = v9;
        }

        v29 = v7;
      }
    }

    for (j = __src; j != v7; ++j)
    {
      v24 = *j;
      std::function<void ()(long)>::operator()(a3, v24);
    }
  }

  *&v25 = &__src;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v25);
}

void IndicShapingEngine::~IndicShapingEngine(IndicShapingEngine *this)
{
  *this = &unk_1EF25BA28;
  v2 = (this + 520);
  v4 = (this + 808);
  std::vector<PostGSUBFixups::Adjustment,TInlineBufferAllocator<PostGSUBFixups::Adjustment,2ul>>::__destroy_vector::operator()[abi:fn200100](&v4);
  v4 = v2;
  std::vector<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul>>::__destroy_vector::operator()[abi:fn200100](&v4);
  v3 = *(this + 63);
  *(this + 63) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  OpenTypeShapingEngine::~OpenTypeShapingEngine(this);
}

{
  *this = &unk_1EF25BA28;
  v2 = (this + 520);
  v4 = (this + 808);
  std::vector<PostGSUBFixups::Adjustment,TInlineBufferAllocator<PostGSUBFixups::Adjustment,2ul>>::__destroy_vector::operator()[abi:fn200100](&v4);
  v4 = v2;
  std::vector<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul>>::__destroy_vector::operator()[abi:fn200100](&v4);
  v3 = *(this + 63);
  *(this + 63) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  OpenTypeShapingEngine::~OpenTypeShapingEngine(this);
  MEMORY[0x1865F22D0]();
}

void std::vector<unsigned int>::push_back[abi:fn200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:fn200100](a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

void std::allocator<std::pair<long,unsigned int const*>>::allocate_at_least[abi:fn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fn200100]();
}

void std::vector<PostGSUBFixups::Adjustment,TInlineBufferAllocator<PostGSUBFixups::Adjustment,2ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    v3 = v1 + 9;
    if (v1 + 3 <= v2)
    {
      v4 = v3 >= v2;
      v5 = v3 == v2;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    if (!v5 && v4)
    {
      if (v1[2] == v1[9])
      {
        *v3 = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }
}

__n128 std::__function::__func<IndicShapingEngine::SetV1Features(unsigned int *)::$_0,std::allocator<IndicShapingEngine::SetV1Features(unsigned int *)::$_0>,void ()(long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25BA50;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<IndicShapingEngine::SetV1Features(unsigned int *)::$_0,std::allocator<IndicShapingEngine::SetV1Features(unsigned int *)::$_0>,void ()(long)>::operator()(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *(*(a1 + 16) + 32);
  if (*a2 >= (*(*(a1 + 16) + 40) - v3) >> 2 || (v4 = ***(a1 + 24), v2 >= (*(**(a1 + 24) + 8) - v4) >> 4))
  {
    __break(1u);
  }

  else
  {
    OpenTypeReorderingOutput::writeChar(**(a1 + 8), *(v3 + 4 * v2), v2, "tkunnhkafrkrferpfwlbftsputavtcjcserpsvbaswlbstspnlah", *(v4 + 16 * v2 + 8), 0);
  }
}

__n128 std::__function::__func<IndicShapingEngine::SetV2Features(unsigned int *)::$_0,std::allocator<IndicShapingEngine::SetV2Features(unsigned int *)::$_0>,void ()(long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25BA98;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<IndicShapingEngine::SetV2Features(unsigned int *)::$_0,std::allocator<IndicShapingEngine::SetV2Features(unsigned int *)::$_0>,void ()(long)>::operator()(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *(a1 + 16);
  v4 = *(v3 + 32);
  if (*a2 >= (*(v3 + 40) - v4) >> 2 || (v5 = **(a1 + 32), v2 >= (v5[1] - *v5) >> 4))
  {
    __break(1u);
  }

  else
  {
    OpenTypeReorderingOutput::writeChar(**(a1 + 8), *(v4 + 4 * v2), v2, **(a1 + 24), *(*v5 + 16 * v2 + 8), 0);
  }
}

void IndicClassTable::IndicClassTable(IndicClassTable *this, const IndicClassTable *a2, const __CTFont *a3, OTL::GSUB *a4)
{
  v4 = MEMORY[0x1EEE9AC00](this, a2);
  v7 = v6;
  v9 = v8;
  v10 = v4;
  v11 = 0;
  v24 = *MEMORY[0x1E69E9840];
  v12 = *(v8 + 12);
  *(v4 + 8) = *(v8 + 8);
  *(v4 + 12) = v12;
  *(v4 + 16) = 0;
  *v4 = &unk_1EF25BAE0;
  *(v4 + 24) = *(v8 + 24);
  *(v4 + 32) = *(v8 + 32);
  *(v4 + 40) = *(v8 + 40);
  *(v4 + 48) = v8;
  v13 = *(v8 + 56);
  *(v4 + 64) = 0;
  v14 = (v4 + 64);
  *(v4 + 56) = v13;
  *(v4 + 72) = 0;
  v15 = 8;
  while (*&IndicClassTableCache::kScriptTags[4 * v11] != *(v6 + 72))
  {
    v15 += 8;
    v11 = v11 + 1;
    if (v15 == 80)
    {
      goto LABEL_6;
    }
  }

  v16 = *(v5 + 40);
  TBaseFont::RetainedObject(*(v16 + 408), 3u, v11, &v20[3]);

  explicit = atomic_load_explicit(v14, memory_order_acquire);
  if (!explicit)
  {

    explicit = atomic_load_explicit(v14, memory_order_acquire);
    if (!explicit)
    {
LABEL_6:
      *(v10 + 16) = *(v9 + 16);
      return;
    }

    TBaseFont::SetObject(*(v16 + 408), 3u, v11, atomic_load_explicit(v14, memory_order_acquire));
  }

  v18 = atomic_load_explicit((explicit + v15), memory_order_acquire);
  *(v10 + 16) = v18;
  if (!v18)
  {
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23[9] = v19;
    v23[8] = v19;
    v23[7] = v19;
    v23[6] = v19;
    v23[5] = v19;
    v23[4] = v19;
    v23[3] = v19;
    v23[2] = v19;
    v23[1] = v19;
    v23[0] = v19;
    LODWORD(v22) = 1819239276;
    OTL::FeatureBuffer::FeatureBuffer(&v20[3], &v22, 1);
    OTL::GCommon::GetLookups(v7, &v20[3], v23);
    __dst = &v20[3];
    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&__dst);
    operator new[]();
  }
}

uint64_t hasForm(os_unfair_lock_s *a1, OTL::GSUB *a2, const unsigned __int16 (*a3)[2], __int16 a4, int a5)
{
  v45 = *MEMORY[0x1E69E9840];
  LOWORD(v36) = a3;
  HIWORD(v36) = a4;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42[6] = v7;
  v42[5] = v7;
  v42[4] = v7;
  v42[3] = v7;
  v42[2] = v7;
  v42[1] = v7;
  v42[0] = v7;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v44 = v42;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v35 = a5;
  OTL::FeatureBuffer::FeatureBuffer(v38, &v35, 1);
  Lookups = OTL::GCommon::GetLookups(a2, v38, &v39, 0);
  v37 = v38;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v37);
  v9 = 0;
  if (Lookups)
  {
    os_unfair_lock_lock_with_options();
    v31 = 0;
    v33 = a1;
    while (1)
    {
      v10 = v39;
      for (i = v40; v10 != i; a1 = v33)
      {
        v11 = TBaseFont::NthLookup<OTL::GSUB>(a1, a2, *v10);
        if (v11)
        {
          v12 = v11;
          v34 = ((*(v11 + 26) - *(v11 + 24)) >> 6);
          if (((*(v11 + 26) - *(v11 + 24)) >> 6))
          {
            v13 = 0;
            while (2)
            {
              v14 = v12[12];
              v15 = (v12[13] - v14) >> 6;
              v16 = v14 + (v13 << 6);
              v17 = v16 + 8;
              v18 = v15 <= v13 ? 0 : v16 + 8;
              if (v15 > v13)
              {
                v19 = 0;
                v20 = 2;
                v21 = &v36;
                do
                {
                  v22 = v19;
                  v23 = *(v17 + 16);
                  v24 = *(v17 + 24);
                  v25 = (v18 + (v24 >> 1));
                  if (v24)
                  {
                    v23 = *(*v25 + v23);
                  }

                  v26 = v23(v25, *v21);
                  if (v26)
                  {
                    v27 = v12[12];
                    v28 = v13 >= (v12[13] - v27) >> 6 ? 0 : *(v27 + (v13 << 6));
                    if (OTL::GSUB::WouldSubstituteSubtable(a2, v12, *(v12 + 8), v28, v26, v21, v20))
                    {
                      v9 = 1;
                      a1 = v33;
                      goto LABEL_25;
                    }
                  }

                  v19 = 1;
                  v21 = &v36 + 1;
                  v20 = 1;
                }

                while ((v22 & 1) == 0);
                if (++v13 != v34)
                {
                  continue;
                }
              }

              break;
            }
          }
        }

        v10 += 2;
      }

      if (v31)
      {
        break;
      }

      HIDWORD(v29) = v36;
      LODWORD(v29) = v36;
      v36 = v29 >> 16;
      v31 = 1;
    }

    v9 = 0;
LABEL_25:
    os_unfair_lock_unlock(a1 + 89);
  }

  v38[0] = &v39;
  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v38);
  return v9;
}

void IndicClassTable::~IndicClassTable(id *this)
{
  *this = &unk_1EF25BAE0;
}

{
  *this = &unk_1EF25BAE0;

  JUMPOUT(0x1865F22D0);
}

uint64_t IndicClassTable::getCharClass(IndicClassTable *this, int a2)
{
  switch(a2)
  {
    case 160:
      return 2147483663;
    case 8204:
      return 9;
    case 8205:
      return 2147483656;
  }

  v4 = *(this + 4);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (!v5 || *(this + 5) < a2 || (result = *(*(this + 2) + 4 * v6), !result))
  {
    v7 = *(this + 7);
    if (v7)
    {
      v8 = *(this + 20);
      v5 = a2 >= v8;
      v9 = a2 - v8;
      if (v5 && *(this + 21) >= a2)
      {
        return *(v7 + 4 * v9);
      }
    }

    result = 2147483651;
    if (a2 > 8209)
    {
      if (a2 > 9675)
      {
        if (a2 > 70400)
        {
          if ((a2 - 70459) < 2)
          {
            return 5;
          }

          if (a2 != 70401)
          {
            if (a2 == 70403)
            {
              return 1048588;
            }

            return 0;
          }

          return 3145729;
        }

        if ((a2 - 9676) > 0x32)
        {
          return 0;
        }

        v11 = 1 << (a2 + 52);
        v12 = 0x7800000000001;
        goto LABEL_43;
      }

      if ((a2 - 8304) > 0x19 || ((1 << (a2 - 112)) & 0x3FF03F1) == 0)
      {
        if ((a2 - 8210) > 0x10 || ((1 << (a2 - 18)) & 0x1000F) == 0)
        {
          if (a2 == 8432)
          {
            return 3145740;
          }

          return 0;
        }

        return result;
      }
    }

    else
    {
      v10 = a2 + 48;
      if ((a2 - 7376) <= 0x27)
      {
        if (((1 << v10) & 0x9021FFFFF7) != 0)
        {
          return 13;
        }

        if (((1 << v10) & 0x1E000000) != 0)
        {
          return 14;
        }

        if (((1 << v10) & 0x6000000000) != 0)
        {
          return 2147483652;
        }
      }

      if ((a2 - 160) > 0x37)
      {
        return 0;
      }

      if (((1 << (a2 + 96)) & 0x20C0000) == 0)
      {
        v11 = 1 << (a2 + 96);
        v12 = 0x80000000000001;
LABEL_43:
        if ((v11 & v12) == 0)
        {
          return 0;
        }

        return result;
      }
    }

    return 10;
  }

  return result;
}

uint64_t IndicClassTable::getReorderClass(IndicClassTable *this, int a2, uint64_t a3)
{
  if ((a2 & 0x700000) != 0x100000)
  {
    return 0;
  }

  v3 = *(this + 3) & 0x30000;
  if (v3 == 0x10000)
  {
    return 4;
  }

  if (v3 == 0x20000)
  {
    return 3;
  }

  return (*(**(this + 6) + 16))(*(this + 6), a3);
}

double IndicReorderingOutput::reset(IndicReorderingOutput *this, uint64_t a2)
{
  ++*(this + 6);
  *(this + 3) = a2;
  *(this + 8) = 0;
  *(this + 55) = *(this + 54);
  *(this + 122) = -1;
  *(this + 123) = -1;
  *(this + 133) = 0;
  *(this + 528) = 0;
  *(this + 524) = 0;
  *(this + 129) = -1;
  *(this + 134) = -1;
  *(this + 504) = 0;
  *(this + 500) = 0;
  *(this + 130) = 0;
  result = 0.0;
  *(this + 1016) = 0u;
  return result;
}

void *IndicReorderingOutput::saveMatra(void *this, const IndicClassTable *a2, uint64_t a3, uint64_t a4, int a5, const unsigned int *a6, uint64_t a7)
{
  v11 = a3;
  v12 = this;
  v13 = ((a5 & 0x700000u) - 0x100000) >> 20;
  if (v13 > 1)
  {
    if (v13 == 3)
    {
      v16 = 5;
    }

    else
    {
      v16 = 0;
    }

    if (v13 == 2)
    {
      v14 = 6;
    }

    else
    {
      v14 = v16;
    }

    v15 = 0;
  }

  else if (v13)
  {
    if (v13 == 1)
    {
      v14 = 8;
    }

    else
    {
      v14 = 0;
    }

    v15 = 0;
  }

  else
  {
    this = IndicClassTable::getReorderClass(a2, a5, a3);
    v15 = this;
    v14 = 9;
  }

  v17 = v12 + 55;
  v18 = v12[55];
  v19 = v12[56];
  if (v18 >= v19)
  {
    v37 = 0xAAAAAAAAAAAAAAAALL;
    *&v21 = 0xAAAAAAAAAAAAAAAALL;
    *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v35 = v21;
    v36 = v21;
    v22 = v12[54];
    v23 = (v18 - v22) >> 6;
    v24 = v23 + 1;
    if ((v23 + 1) >> 58)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v25 = v19 - v22;
    if (v25 >> 5 > v24)
    {
      v24 = v25 >> 5;
    }

    if (v25 >= 0x7FFFFFFFFFFFFFC0)
    {
      v26 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v26 = v24;
    }

    std::__split_buffer<IndicReorderingOutput::MarkInfo,TInlineBufferAllocator<IndicReorderingOutput::MarkInfo,8ul> &>::__split_buffer(&v35, v26, v23, (v12 + 57));
    v28 = *(&v35 + 1);
    v27 = v36;
    *v36 = v14;
    *(v27 + 4) = v15;
    *(v27 + 8) = v11;
    *(v27 + 16) = a4;
    *(v27 + 24) = a7;
    *(v27 + 32) = a6;
    *(v27 + 40) = a5;
    *(v27 + 48) = -1;
    *(v27 + 56) = -1;
    *&v36 = v27 + 64;
    v29 = v12[54];
    v30 = v12[55] - v29;
    v31 = v28 - v30;
    memcpy((v28 - v30), v29, v30);
    v32 = v12[54];
    v12[54] = v31;
    v33 = v12[56];
    v34 = v36;
    *v17 = v36;
    *&v36 = v32;
    *(&v36 + 1) = v33;
    *&v35 = v32;
    *(&v35 + 1) = v32;
    this = std::__split_buffer<IndicReorderingOutput::MarkInfo,TInlineBufferAllocator<IndicReorderingOutput::MarkInfo,8ul> &>::~__split_buffer(&v35);
    v20 = v34;
  }

  else
  {
    *v18 = v14;
    *(v18 + 4) = v15;
    *(v18 + 8) = v11;
    *(v18 + 16) = a4;
    *(v18 + 24) = a7;
    *(v18 + 32) = a6;
    *(v18 + 40) = a5;
    v20 = v18 + 64;
    *(v18 + 48) = -1;
    *(v18 + 56) = -1;
  }

  *v17 = v20;
  return this;
}

uint64_t IndicReorderingOutput::noteMatra(IndicReorderingOutput *this, const IndicClassTable *a2, int a3, uint64_t a4, const unsigned int *a5)
{
  CharClass = IndicClassTable::getCharClass(a2, a3);
  v11 = CharClass;
  if (CharClass == 5)
  {
    v26 = (this + 440);
    v27 = *(this + 55);
    v30 = *(this + 56);
    if (v27 < v30)
    {
      v29 = 11;
      goto LABEL_23;
    }

    v55 = 0xAAAAAAAAAAAAAAAALL;
    *&v41 = 0xAAAAAAAAAAAAAAAALL;
    *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v53 = v41;
    v54 = v41;
    v42 = *(this + 54);
    v43 = (v27 - v42) >> 6;
    v44 = v43 + 1;
    if (!((v43 + 1) >> 58))
    {
      v45 = v30 - v42;
      if (v45 >> 5 > v44)
      {
        v44 = v45 >> 5;
      }

      if (v45 >= 0x7FFFFFFFFFFFFFC0)
      {
        v46 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v46 = v44;
      }

      std::__split_buffer<IndicReorderingOutput::MarkInfo,TInlineBufferAllocator<IndicReorderingOutput::MarkInfo,8ul> &>::__split_buffer(&v53, v46, v43, this + 456);
      v39 = v54;
      v40 = 11;
      goto LABEL_39;
    }

LABEL_44:
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  if (CharClass == 10)
  {
    v26 = (this + 440);
    v27 = *(this + 55);
    v28 = *(this + 56);
    if (v27 < v28)
    {
      v29 = 1;
LABEL_23:
      *v27 = v29;
      *(v27 + 4) = 0;
      *(v27 + 8) = a3;
      *(v27 + 16) = a4;
      *(v27 + 24) = 0;
      *(v27 + 32) = a5;
      *(v27 + 40) = CharClass;
      v31 = v27 + 64;
      *(v27 + 48) = -1;
      *(v27 + 56) = -1;
LABEL_40:
      *v26 = v31;
      return 1;
    }

    v55 = 0xAAAAAAAAAAAAAAAALL;
    *&v33 = 0xAAAAAAAAAAAAAAAALL;
    *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v53 = v33;
    v54 = v33;
    v34 = *(this + 54);
    v35 = (v27 - v34) >> 6;
    v36 = v35 + 1;
    if (!((v35 + 1) >> 58))
    {
      v37 = v28 - v34;
      if (v37 >> 5 > v36)
      {
        v36 = v37 >> 5;
      }

      if (v37 >= 0x7FFFFFFFFFFFFFC0)
      {
        v38 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v38 = v36;
      }

      std::__split_buffer<IndicReorderingOutput::MarkInfo,TInlineBufferAllocator<IndicReorderingOutput::MarkInfo,8ul> &>::__split_buffer(&v53, v38, v35, this + 456);
      v39 = v54;
      v40 = 1;
LABEL_39:
      *v39 = v40;
      *(v39 + 4) = 0;
      *(v39 + 8) = a3;
      *(v39 + 16) = a4;
      *(v39 + 24) = 0;
      *(v39 + 32) = a5;
      *(v39 + 40) = v11;
      *(v39 + 48) = -1;
      *(v39 + 56) = -1;
      *&v54 = v39 + 64;
      v47 = *(this + 54);
      v48 = *(this + 55) - v47;
      v49 = *(&v53 + 1) - v48;
      memcpy((*(&v53 + 1) - v48), v47, v48);
      v50 = *(this + 54);
      *(this + 54) = v49;
      v51 = *(this + 56);
      v52 = v54;
      *v26 = v54;
      *&v54 = v50;
      *(&v54 + 1) = v51;
      *&v53 = v50;
      *(&v53 + 1) = v50;
      std::__split_buffer<IndicReorderingOutput::MarkInfo,TInlineBufferAllocator<IndicReorderingOutput::MarkInfo,8ul> &>::~__split_buffer(&v53);
      v31 = v52;
      goto LABEL_40;
    }

    goto LABEL_44;
  }

  if (CharClass != 6)
  {
    return 0;
  }

  if ((CharClass & 0xF0000) != 0)
  {
    v12 = 0;
    v13 = HIWORD(CharClass) & 0xF;
    v14 = *(a2 + 4);
    v15 = v14 + 6 * v13;
    v16 = -6;
    do
    {
      v17 = v12;
      v18 = *(v15 + v16);
      if (*(v15 + v16))
      {
        ++v12;
      }

      v16 += 2;
    }

    while (v16);
    if (v12)
    {
      v19 = 0;
      if (v18)
      {
        v20 = v17 + 1;
      }

      else
      {
        v20 = v17;
      }

      v21 = -v20;
      v22 = v14 + 6 * v13 + 2 * v20 - 8;
      do
      {
        v23 = *(v22 + 2 * v19);
        v24 = IndicClassTable::getCharClass(a2, *(v22 + 2 * v19));
        if (v19)
        {
          v25 = 0x8000000000000000;
        }

        else
        {
          v25 = 0x4000000000000000;
        }

        IndicReorderingOutput::saveMatra(this, a2, v23, a4, v24, a5, v25);
        --v19;
      }

      while (v21 != v19);
    }
  }

  else
  {
    IndicReorderingOutput::saveMatra(this, a2, a3, a4, CharClass, a5, 0);
  }

  return 1;
}

uint64_t IndicReorderingOutput::assignReorderClasses(uint64_t this, const IndicClassTable *a2)
{
  v2 = *(this + 432);
  for (i = *(this + 440); v2 != i; v2 += 64)
  {
    if (!*(v2 + 1))
    {
      v4 = *v2;
      if ((v4 - 6) >= 2)
      {
        if (v4 != 8)
        {
          continue;
        }

        v6 = (*(a2 + 3) >> 18) & 3;
        if (v6 > 1)
        {
          if (v6 == 3)
          {
            v5 = 2;
          }

          else
          {
            v5 = 3;
          }
        }

        else
        {
          if (!v6)
          {
            continue;
          }

          v5 = 4;
        }
      }

      else
      {
        v5 = 4 - ((*(a2 + 3) >> 20) & 3);
      }

      *(v2 + 1) = v5;
    }
  }

  return this;
}

uint64_t IndicReorderingOutput::finishMatras(IndicReorderingOutput *this, uint64_t a2, int a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = *(this + 54);
  v6 = *(this + 55);
  v7 = v6 - 64;
  v8 = v5 != v6 && v7 > v5;
  if (v8)
  {
    v9 = v5 + 64;
    do
    {
      v11 = *(v9 - 2);
      v10 = *(v9 - 1);
      v13 = *(v9 - 4);
      v12 = *(v9 - 3);
      v14 = *(v7 + 3);
      v16 = *v7;
      v15 = *(v7 + 1);
      *(v9 - 2) = *(v7 + 2);
      *(v9 - 1) = v14;
      *(v9 - 4) = v16;
      *(v9 - 3) = v15;
      *v7 = v13;
      *(v7 + 1) = v12;
      *(v7 + 2) = v11;
      *(v7 + 3) = v10;
      v7 -= 64;
      v17 = v9 >= v7;
      v9 += 64;
    }

    while (!v17);
    v5 = *(this + 54);
    v6 = *(this + 55);
  }

  v18 = a3 ^ 1u;
  v40 = v18;
  v42 = 0;
  v41 = 0;
  v19 = v5;
  if (v5 != v6)
  {
    v19 = v5;
    while ((IndicReorderingOutput::DuplicateMarkFinder::operator()(&v40, *v19) & 1) == 0)
    {
      v19 += 64;
      if (v19 == v6)
      {
        goto LABEL_35;
      }
    }
  }

  if (v19 != v6 && *v19 == 9)
  {
    v20 = v19 + 64;
    while (2)
    {
      v21 = v20;
      do
      {
        if (v21 == v6)
        {
          v40 = v18;
          v42 = 0;
          v41 = 0;
          while ((IndicReorderingOutput::DuplicateMarkFinder::operator()(&v40, *v19) & 1) == 0)
          {
            v19 += 64;
            if (v19 == v6)
            {
              v19 = v6;
              goto LABEL_31;
            }
          }

          goto LABEL_31;
        }

        v22 = *(v21 - 64);
        v24 = *v21;
        v21 += 64;
        v23 = v24;
      }

      while (v22 != 9 || v23 != 9);
      v19 += 64;
      v20 += 64;
      if (v19 != v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_31:
  if (v19 != v6 && *v19 <= 9u)
  {
    a2 = *(v19 + 2);
    do
    {
      v6 -= 64;
      *(this + 55) = v6;
    }

    while (*(v6 - 6) >= a2);
  }

LABEL_35:
  if (v5 == v6)
  {
    return a2;
  }

  v26 = 0;
  v27 = v5;
  while (1)
  {
    v28 = *v27;
    if (v28 == 1)
    {
      break;
    }

    if (v28 == 11)
    {
      if (v27 == v5)
      {
        *v5 = 0;
      }

      else
      {
        *v27 = *(v27 - 64);
        *(v27 + 1) = *(v27 - 15);
      }
    }

LABEL_63:
    v27 += 64;
    v26 += 64;
    if (v27 == v6)
    {
      return a2;
    }
  }

  v29 = v5;
  if (v5 != v27)
  {
    v30 = v26;
    v29 = v5;
    while (1)
    {
      v31 = *v29;
      v8 = v31 > 9;
      v32 = (1 << v31) & 0x360;
      if (!v8 && v32 != 0)
      {
        break;
      }

      v29 += 64;
      v30 -= 64;
      if (!v30)
      {
        v29 = v27;
        break;
      }
    }
  }

  v34 = v6;
  if (v27 + 64 != v6)
  {
    v34 = v27 + 64;
    while (1)
    {
      v35 = *v34;
      v8 = v35 > 9;
      v36 = (1 << v35) & 0x360;
      if (!v8 && v36 != 0)
      {
        break;
      }

      v34 += 64;
      if (v34 == v6)
      {
        v34 = v6;
        break;
      }
    }
  }

  if (v29 == v27 || v6 == v34)
  {
    goto LABEL_63;
  }

  a2 = *(v34 + 2);
  do
  {
    *(this + 55) = v6 - 64;
    v38 = *(v6 - 14);
    v6 -= 64;
  }

  while (v38 >= a2);
  return a2;
}

uint64_t IndicReorderingOutput::noteVowelModifier(IndicReorderingOutput *this, const IndicClassTable *a2, int a3, uint64_t a4, const unsigned int *a5)
{
  result = IndicClassTable::getCharClass(a2, a3);
  if (result == 1)
  {
    v10 = result;
    v11 = result & 0x700000;
    if ((result & 0x700000) == 0x200000)
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }

    if (v11 == 3145728)
    {
      v13 = 2;
    }

    else
    {
      v13 = v12;
    }

    if (v11 == 0x100000)
    {
      v14 = 4;
    }

    else
    {
      v14 = v13;
    }

    v15 = (this + 440);
    v16 = *(this + 55);
    v17 = *(this + 56);
    if (v16 >= v17)
    {
      v35 = 0xAAAAAAAAAAAAAAAALL;
      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v33 = v19;
      v34 = v19;
      v20 = *(this + 54);
      v21 = (v16 - v20) >> 6;
      v22 = v21 + 1;
      if ((v21 + 1) >> 58)
      {
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v23 = v17 - v20;
      if (v23 >> 5 > v22)
      {
        v22 = v23 >> 5;
      }

      if (v23 >= 0x7FFFFFFFFFFFFFC0)
      {
        v24 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v24 = v22;
      }

      std::__split_buffer<IndicReorderingOutput::MarkInfo,TInlineBufferAllocator<IndicReorderingOutput::MarkInfo,8ul> &>::__split_buffer(&v33, v24, v21, this + 456);
      v26 = *(&v33 + 1);
      v25 = v34;
      *v34 = v14;
      *(v25 + 4) = 0;
      *(v25 + 8) = a3;
      *(v25 + 16) = a4;
      *(v25 + 24) = 0;
      *(v25 + 32) = a5;
      *(v25 + 40) = v10;
      *(v25 + 48) = -1;
      *(v25 + 56) = -1;
      *&v34 = v25 + 64;
      v27 = *(this + 54);
      v28 = *(this + 55) - v27;
      v29 = v26 - v28;
      memcpy((v26 - v28), v27, v28);
      v30 = *(this + 54);
      *(this + 54) = v29;
      v31 = *(this + 56);
      v32 = v34;
      *v15 = v34;
      *&v34 = v30;
      *(&v34 + 1) = v31;
      *&v33 = v30;
      *(&v33 + 1) = v30;
      result = std::__split_buffer<IndicReorderingOutput::MarkInfo,TInlineBufferAllocator<IndicReorderingOutput::MarkInfo,8ul> &>::~__split_buffer(&v33);
      v18 = v32;
    }

    else
    {
      *v16 = v14;
      *(v16 + 4) = 0;
      *(v16 + 8) = a3;
      *(v16 + 16) = a4;
      *(v16 + 24) = 0;
      *(v16 + 32) = a5;
      *(v16 + 40) = result;
      v18 = v16 + 64;
      *(v16 + 48) = -1;
      *(v16 + 56) = -1;
    }

    *v15 = v18;
  }

  return result;
}

uint64_t IndicReorderingOutput::noteSyllableModifier(IndicReorderingOutput *this, const IndicClassTable *a2, int a3, uint64_t a4, const unsigned int *a5)
{
  result = IndicClassTable::getCharClass(a2, a3);
  if ((result & 0xFFFE) == 0xC)
  {
    v10 = result;
    if ((result & 0x700000) == 0x300000)
    {
      v11 = 7;
    }

    else
    {
      v11 = 0;
    }

    if (a3 == 2817)
    {
      v12 = 2;
    }

    else
    {
      v12 = 5;
    }

    v13 = (this + 440);
    v14 = *(this + 55);
    v15 = *(this + 56);
    if (v14 >= v15)
    {
      v33 = 0xAAAAAAAAAAAAAAAALL;
      *&v17 = 0xAAAAAAAAAAAAAAAALL;
      *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v31 = v17;
      v32 = v17;
      v18 = *(this + 54);
      v19 = (v14 - v18) >> 6;
      v20 = v19 + 1;
      if ((v19 + 1) >> 58)
      {
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v21 = v15 - v18;
      if (v21 >> 5 > v20)
      {
        v20 = v21 >> 5;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFC0)
      {
        v22 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      std::__split_buffer<IndicReorderingOutput::MarkInfo,TInlineBufferAllocator<IndicReorderingOutput::MarkInfo,8ul> &>::__split_buffer(&v31, v22, v19, this + 456);
      v24 = *(&v31 + 1);
      v23 = v32;
      *v32 = v11;
      *(v23 + 4) = v12;
      *(v23 + 8) = a3;
      *(v23 + 16) = a4;
      *(v23 + 24) = 0;
      *(v23 + 32) = a5;
      *(v23 + 40) = v10;
      *(v23 + 48) = -1;
      *(v23 + 56) = -1;
      *&v32 = v23 + 64;
      v25 = *(this + 54);
      v26 = *(this + 55) - v25;
      v27 = v24 - v26;
      memcpy((v24 - v26), v25, v26);
      v28 = *(this + 54);
      *(this + 54) = v27;
      v29 = *(this + 56);
      v30 = v32;
      *v13 = v32;
      *&v32 = v28;
      *(&v32 + 1) = v29;
      *&v31 = v28;
      *(&v31 + 1) = v28;
      result = std::__split_buffer<IndicReorderingOutput::MarkInfo,TInlineBufferAllocator<IndicReorderingOutput::MarkInfo,8ul> &>::~__split_buffer(&v31);
      v16 = v30;
    }

    else
    {
      *v14 = v11;
      *(v14 + 4) = v12;
      *(v14 + 8) = a3;
      *(v14 + 16) = a4;
      *(v14 + 24) = 0;
      *(v14 + 32) = a5;
      *(v14 + 40) = result;
      v16 = v14 + 64;
      *(v14 + 48) = -1;
      *(v14 + 56) = -1;
    }

    *v13 = v16;
  }

  return result;
}

uint64_t *IndicReorderingOutput::noteBaseConsonant(uint64_t *this, int a2)
{
  v2 = this;
  v3 = (this[8] - this[7]) >> 2;
  this[122] = v3;
  if (a2)
  {
    v4 = this[54];
    v5 = this[55];
    v6[0] = 2863311365;
    v6[1] = v3;
    v6[2] = this;
    while (v4 != v5)
    {
      this = IndicReorderingOutput::TargetNoter::operator()(v6, v4);
      v4 += 64;
    }
  }

  else
  {
    this = IndicReorderingOutput::noteMpreTarget(this);
    if (*(v2 + 500))
    {
      v2[129] = (v2[8] - v2[7]) >> 2;
    }
  }

  return this;
}

uint64_t *IndicReorderingOutput::noteMpreTarget(uint64_t *this)
{
  v1 = (this[8] - this[7]) >> 2;
  v2 = this[54];
  v3 = this[55];
  v4[0] = 2863311365;
  v4[1] = v1;
  v4[2] = this;
  while (v2 != v3)
  {
    this = IndicReorderingOutput::TargetNoter::operator()(v4, v2);
    v2 += 64;
  }

  return this;
}

uint64_t *IndicReorderingOutput::writeRephFixup(uint64_t *this)
{
  if (*(this + 524))
  {
    v1 = this[134];
    if ((v1 & 0x8000000000000000) == 0)
    {
      if (*(this + 529))
      {
        v2 = 3;
      }

      else
      {
        v2 = 2;
      }

      return PostGSUBFixups::add(this[124], v1, this[123], v2, 0);
    }
  }

  return this;
}

uint64_t IndicReorderingOutput::MarkWriter::operator()(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 1);
  if (*a1)
  {
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v5 = *a2 == *a1;
    }

    if (!v5 || *(a2 + 1) != 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4)
    {
      v8 = *(a2 + 1) == v4;
    }

    else
    {
      v8 = 0;
    }

    if (!v8)
    {
      return 0;
    }
  }

  v9 = *(a2 + 7);
  v10 = *(a1 + 1);
  v11 = (*(v10 + 64) - *(v10 + 56)) >> 2;
  if (v9 < 0)
  {
    *(a2 + 6) = v11;
  }

  else
  {
    PostGSUBFixups::add(*(v10 + 992), v9, v11, 1, 0);
    v10 = *(a1 + 1);
  }

  OpenTypeReorderingOutput::writeChar(v10, *(a2 + 2), *(a2 + 2), *(a2 + 4), *(a2 + 10), *(a2 + 3));
  return 1;
}

uint64_t IndicReorderingOutput::writeMpre(IndicReorderingOutput *this)
{
  v5[0] = 2863311365;
  v5[1] = this;
  v1 = *(this + 54);
  v2 = *(this + 55);
  if (v1 == v2)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v3 |= IndicReorderingOutput::MarkWriter::operator()(v5, v1);
      v1 += 64;
    }

    while (v1 != v2);
  }

  return v3 & 1;
}

uint64_t IndicReorderingOutput::writeMabove(unsigned __int8 **this)
{
  std::for_each[abi:fn200100]<std::__wrap_iter<IndicReorderingOutput::MarkInfo *>,IndicReorderingOutput::MarkWriter>(this[54], this[55], 6, this);
  v2 = this[54];
  v3 = this[55];

  return std::for_each[abi:fn200100]<std::__wrap_iter<IndicReorderingOutput::MarkInfo *>,IndicReorderingOutput::MarkWriter>(v2, v3, 7, this);
}

uint64_t std::for_each[abi:fn200100]<std::__wrap_iter<IndicReorderingOutput::MarkInfo *>,IndicReorderingOutput::MarkWriter>(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      IndicReorderingOutput::MarkWriter::operator()(v7, v5);
      v5 += 64;
    }

    while (v5 != a2);
    return v7[0];
  }

  return a3;
}

uint64_t IndicReorderingOutput::writeMpost(unsigned __int8 **this)
{
  std::for_each[abi:fn200100]<std::__wrap_iter<IndicReorderingOutput::MarkInfo *>,IndicReorderingOutput::MarkWriter>(this[54], this[55], 0x200000000, this);
  std::for_each[abi:fn200100]<std::__wrap_iter<IndicReorderingOutput::MarkInfo *>,IndicReorderingOutput::MarkWriter>(this[54], this[55], 0x300000000, this);
  v2 = this[54];
  v3 = this[55];

  return std::for_each[abi:fn200100]<std::__wrap_iter<IndicReorderingOutput::MarkInfo *>,IndicReorderingOutput::MarkWriter>(v2, v3, 0x400000000, this);
}

uint64_t IndicReorderingOutput::writeVMpost(unsigned __int8 **this)
{
  std::for_each[abi:fn200100]<std::__wrap_iter<IndicReorderingOutput::MarkInfo *>,IndicReorderingOutput::MarkWriter>(this[54], this[55], 2863311364, this);
  v2 = this[54];
  v3 = this[55];

  return std::for_each[abi:fn200100]<std::__wrap_iter<IndicReorderingOutput::MarkInfo *>,IndicReorderingOutput::MarkWriter>(v2, v3, 0x500000000, this);
}

void IndicReorderingOutput::writePreBaseConsonant(IndicReorderingOutput *this)
{
  v1 = *(this + 500);
  if (*(this + 500))
  {
    v3 = *(this + 129);
    if (v3 < 0)
    {
      if ((*(this + 122) & 0x8000000000000000) == 0)
      {
        PostGSUBFixups::add(*(this + 124), *(this + 122), (*(this + 8) - *(this + 7)) >> 2, 2, 0x20000000);
        v1 = *(this + 500);
      }

      OpenTypeReorderingOutput::writeChar(this, v1, *(this + 127), *(this + 130), *(this + 251), *(this + 128));
      v4 = *(this + 504);
      v5 = *(this + 127) - 1;
      v6 = *(this + 130);
      v9 = this;
      v7 = 7;
      v8 = 0;
    }

    else
    {
      PostGSUBFixups::add(*(this + 124), v3, (*(this + 8) - *(this + 7)) >> 2, 2, 0x10000000);
      OpenTypeReorderingOutput::writeChar(this, *(this + 504), *(this + 127) - 1, *(this + 130), 7, 0);
      v4 = *(this + 500);
      v5 = *(this + 127);
      v6 = *(this + 130);
      v7 = *(this + 251);
      v8 = *(this + 128);
      v9 = this;
    }

    OpenTypeReorderingOutput::writeChar(v9, v4, v5, v6, v7, v8);
  }
}

void IndicReorderingOutput::writeReph(IndicReorderingOutput *this)
{
  v1 = *(this + 524);
  if (*(this + 524))
  {
    *(this + 123) = (*(this + 8) - *(this + 7)) >> 2;
    OpenTypeReorderingOutput::writeChar(this, v1, *(this + 133), *(this + 135), *(this + 263), 0);
    OpenTypeReorderingOutput::writeChar(this, *(this + 528), *(this + 133) + 1, *(this + 135), 7, 0);
    v3 = *(this + 529);
    if (*(this + 529))
    {
      v4 = *(this + 135);
      v5 = *(this + 265);
      v6 = *(this + 133) + 2;

      OpenTypeReorderingOutput::writeChar(this, v3, v6, v4, v5, 0);
    }
  }
}

void IndicReorderingOutput::~IndicReorderingOutput(IndicReorderingOutput *this)
{
  *this = &unk_1EF25BB08;
  std::vector<IndicReorderingOutput::MarkInfo,TInlineBufferAllocator<IndicReorderingOutput::MarkInfo,8ul>>::__destroy_vector::operator()[abi:fn200100](this + 432);

  OpenTypeReorderingOutput::~OpenTypeReorderingOutput(this);
}

{
  *this = &unk_1EF25BB08;
  std::vector<IndicReorderingOutput::MarkInfo,TInlineBufferAllocator<IndicReorderingOutput::MarkInfo,8ul>>::__destroy_vector::operator()[abi:fn200100](this + 432);
  OpenTypeReorderingOutput::~OpenTypeReorderingOutput(this);

  JUMPOUT(0x1865F22D0);
}

void *std::__split_buffer<IndicReorderingOutput::MarkInfo,TInlineBufferAllocator<IndicReorderingOutput::MarkInfo,8ul> &>::__split_buffer(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v5 = *(a4 + 512);
    v6 = v5 + (a2 << 6);
    if (v6 > a4 + 512)
    {
      if (!(a2 >> 58))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    *(a4 + 512) = v6;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5 + (a3 << 6);
  *a1 = v5;
  a1[1] = v7;
  a1[2] = v7;
  a1[3] = v5 + (a2 << 6);
  return a1;
}

uint64_t std::__split_buffer<IndicReorderingOutput::MarkInfo,TInlineBufferAllocator<IndicReorderingOutput::MarkInfo,8ul> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 63) & 0xFFFFFFFFFFFFFFC0);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 32);
    v6 = (v5 + 512);
    if (v5 <= v4 && v6 > v4)
    {
      if (*(a1 + 24) == *v6)
      {
        *v6 = v4;
      }
    }

    else
    {
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t IndicReorderingOutput::DuplicateMarkFinder::operator()(_BYTE *a1, unsigned __int8 a2)
{
  v2 = 0;
  if (a2 && a2 != 11)
  {
    if (*a1 == 1 && (a2 - 5) < 5u && ((0x1Bu >> (a2 - 5)) & 1) != 0)
    {
      return 0;
    }

    else
    {
      if ((a1[a2 + 1] & 1) == 0)
      {
        if (a2 > 9u || ((1 << a2) & 0x360) == 0 || a2 > 8u)
        {
LABEL_19:
          v2 = 0;
          a1[a2 + 1] = 1;
          return v2;
        }

        v3 = a2 + 2;
        while (1)
        {
          v4 = (v3 - 1);
          v5 = v4 > 9;
          v6 = (1 << v4) & 0x360;
          v7 = v5 || v6 == 0;
          if (!v7 && (a1[v3] & 1) != 0)
          {
            break;
          }

          if (++v3 == 11)
          {
            goto LABEL_19;
          }
        }
      }

      return 1;
    }
  }

  return v2;
}

uint64_t *IndicReorderingOutput::TargetNoter::operator()(uint64_t *result, unsigned __int8 *a2)
{
  v2 = *(result + 1);
  if (*result)
  {
    if (v2)
    {
      v3 = 0;
    }

    else
    {
      v3 = *a2 == *result;
    }

    if (!v3 || *(a2 + 1) != 0)
    {
      return result;
    }

LABEL_15:
    v6 = *(a2 + 6);
    if ((v6 & 0x8000000000000000) == 0)
    {
      return PostGSUBFixups::add(*(result[2] + 992), result[1], v6, 1, 0);
    }

    *(a2 + 7) = result[1];
    return result;
  }

  if (v2)
  {
    v5 = *(a2 + 1) == v2;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    goto LABEL_15;
  }

  return result;
}

void std::vector<IndicReorderingOutput::MarkInfo,TInlineBufferAllocator<IndicReorderingOutput::MarkInfo,8ul>>::__destroy_vector::operator()[abi:fn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    v3 = (a1 + 536);
    if (a1 + 24 <= v2)
    {
      v4 = v3 >= v2;
      v5 = v3 == v2;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    if (!v5 && v4)
    {
      if (*(a1 + 16) == *(a1 + 536))
      {
        *v3 = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }
}

uint64_t *DevanagariShapingEngine::GetStaticClassTable(DevanagariShapingEngine *this)
{
  {
    qword_1EA86BCF0 = 0x111A0FFF097F0900;
    unk_1EA86BCF8 = &devaCharClasses;
    DevanagariShapingEngine::GetStaticClassTable(void)::devaClassTable = &unk_1EF25BAE0;
    word_1EA86BD00 = 2381;
    qword_1EA86BD08 = 0;
    dword_1EA86BD10 = -1459640096;
    qword_1EA86BD18 = &DevanagariShapingEngine::GetStaticClassTable(void)::devaClassTable;
    unk_1EA86BD20 = &devaExtendedCharClasses;
    qword_1EA86BD28 = 0;
    unk_1EA86BD30 = 0;
    byte_1EA86BD38 = 1;
  }

  return &DevanagariShapingEngine::GetStaticClassTable(void)::devaClassTable;
}

void DevanagariShapingEngine::~DevanagariShapingEngine(DevanagariShapingEngine *this)
{
  *this = &unk_1EF25BA28;
  v2 = (this + 520);
  v4 = (this + 808);
  std::vector<PostGSUBFixups::Adjustment,TInlineBufferAllocator<PostGSUBFixups::Adjustment,2ul>>::__destroy_vector::operator()[abi:fn200100](&v4);
  v4 = v2;
  std::vector<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul>>::__destroy_vector::operator()[abi:fn200100](&v4);
  v3 = *(this + 63);
  *(this + 63) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  OpenTypeShapingEngine::~OpenTypeShapingEngine(this);
}

{
  DevanagariShapingEngine::~DevanagariShapingEngine(this);

  JUMPOUT(0x1865F22D0);
}

uint64_t *GujaratiShapingEngine::GetStaticClassTable(GujaratiShapingEngine *this)
{
  {
    qword_1EA86BAE0 = 0x1150FFF0AFF0A80;
    unk_1EA86BAE8 = &gujrCharClasses;
    GujaratiShapingEngine::GetStaticClassTable(void)::gujrClassTable = &unk_1EF25BAE0;
    word_1EA86BAF0 = 2765;
    qword_1EA86BAF8 = 0;
    dword_1EA86BB00 = 0;
    qword_1EA86BB08 = &GujaratiShapingEngine::GetStaticClassTable(void)::gujrClassTable;
    unk_1EA86BB10 = 0;
    qword_1EA86BB18 = 0;
    unk_1EA86BB20 = 0;
    byte_1EA86BB28 = 1;
  }

  return &GujaratiShapingEngine::GetStaticClassTable(void)::gujrClassTable;
}

void GujaratiShapingEngine::~GujaratiShapingEngine(GujaratiShapingEngine *this)
{
  DevanagariShapingEngine::~DevanagariShapingEngine(this);

  JUMPOUT(0x1865F22D0);
}

uint64_t *GurmukhiShapingEngine::GetStaticClassTable(GurmukhiShapingEngine *this)
{
  {
    qword_1EA86BA20 = 0x43050FFF0A760A00;
    unk_1EA86BA28 = &guruCharClasses;
    GurmukhiShapingEngine::GetStaticClassTable(void)::guruClassTable = &unk_1EF25BAE0;
    word_1EA86BA30 = 2637;
    qword_1EA86BA38 = 0;
    dword_1EA86BA40 = 0;
    qword_1EA86BA48 = &GurmukhiShapingEngine::GetStaticClassTable(void)::guruClassTable;
    unk_1EA86BA50 = 0;
    qword_1EA86BA58 = 0;
    unk_1EA86BA60 = 0;
    byte_1EA86BA68 = 1;
  }

  return &GurmukhiShapingEngine::GetStaticClassTable(void)::guruClassTable;
}

void GurmukhiShapingEngine::~GurmukhiShapingEngine(GurmukhiShapingEngine *this)
{
  DevanagariShapingEngine::~DevanagariShapingEngine(this);

  JUMPOUT(0x1865F22D0);
}

uint64_t *BengaliShapingEngine::GetStaticClassTable(BengaliShapingEngine *this)
{
  {
    qword_1EA86BBA8 = 0x22090FFF09FF0980;
    unk_1EA86BBB0 = &bengCharClasses;
    BengaliShapingEngine::GetStaticClassTable(void)::bengClassTable = &unk_1EF25BAE0;
    word_1EA86BBB8 = 2509;
    qword_1EA86BBC0 = &bengSplitTable;
    dword_1EA86BBC8 = 0;
    qword_1EA86BBD0 = &BengaliShapingEngine::GetStaticClassTable(void)::bengClassTable;
    unk_1EA86BBD8 = 0;
    qword_1EA86BBE0 = 0;
    unk_1EA86BBE8 = 0;
    byte_1EA86BBF0 = 1;
  }

  return &BengaliShapingEngine::GetStaticClassTable(void)::bengClassTable;
}

void BengaliShapingEngine::~BengaliShapingEngine(BengaliShapingEngine *this)
{
  DevanagariShapingEngine::~DevanagariShapingEngine(this);

  JUMPOUT(0x1865F22D0);
}

uint64_t KannadaClassTable::getReorderClassInternal(KannadaClassTable *this, int a2)
{
  if ((a2 - 3262) > 0x18)
  {
    return 0;
  }

  v2 = 1 << (a2 + 66);
  if ((v2 & 0x1800060) != 0)
  {
    return 3;
  }

  if ((v2 & 0x19) != 0)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t *KannadaShapingEngine::GetStaticClassTable(KannadaShapingEngine *this)
{
  {
    qword_1EA86BB38 = 0x842B10030CF30C80;
    unk_1EA86BB40 = &kndaCharClasses;
    word_1EA86BB48 = 3277;
    qword_1EA86BB50 = &kndaSplitTable;
    dword_1EA86BB58 = 0;
    qword_1EA86BB60 = &KannadaShapingEngine::GetStaticClassTable(void)::kndaClassTable;
    unk_1EA86BB68 = 0;
    qword_1EA86BB70 = 0;
    unk_1EA86BB78 = 0;
    byte_1EA86BB80 = 1;
    KannadaShapingEngine::GetStaticClassTable(void)::kndaClassTable = &unk_1EF25BBD0;
  }

  return &KannadaShapingEngine::GetStaticClassTable(void)::kndaClassTable;
}

void KannadaShapingEngine::~KannadaShapingEngine(KannadaShapingEngine *this)
{
  DevanagariShapingEngine::~DevanagariShapingEngine(this);

  JUMPOUT(0x1865F22D0);
}

void KannadaClassTable::~KannadaClassTable(id *this)
{
  *this = &unk_1EF25BAE0;
}

{
  *this = &unk_1EF25BAE0;

  JUMPOUT(0x1865F22D0);
}

uint64_t *OriyaShapingEngine::GetStaticClassTable(OriyaShapingEngine *this)
{
  {
    qword_1EA86B9B0 = 0x23390FFF0B770B00;
    unk_1EA86B9B8 = &oryaCharClasses;
    OriyaShapingEngine::GetStaticClassTable(void)::oryaClassTable = &unk_1EF25BAE0;
    word_1EA86B9C0 = 2893;
    qword_1EA86B9C8 = "G\vV\v";
    dword_1EA86B9D0 = 0;
    qword_1EA86B9D8 = &OriyaShapingEngine::GetStaticClassTable(void)::oryaClassTable;
    unk_1EA86B9E0 = 0;
    qword_1EA86B9E8 = 0;
    unk_1EA86B9F0 = 0;
    byte_1EA86B9F8 = 1;
  }

  return &OriyaShapingEngine::GetStaticClassTable(void)::oryaClassTable;
}

void OriyaShapingEngine::~OriyaShapingEngine(OriyaShapingEngine *this)
{
  DevanagariShapingEngine::~DevanagariShapingEngine(this);

  JUMPOUT(0x1865F22D0);
}

uint64_t TeluguClassTable::getReorderClassInternal(TeluguClassTable *this, int a2)
{
  if ((a2 - 3137) > 0x15)
  {
    return 0;
  }

  v2 = 1 << (a2 - 65);
  if ((v2 & 0x200003) != 0)
  {
    return 2;
  }

  if ((v2 & 0xC) != 0)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t *TeluguShapingEngine::GetStaticClassTable(TeluguShapingEngine *this)
{
  {
    qword_1EA86BC00 = 0x802B30030C7F0C00;
    unk_1EA86BC08 = &teluCharClasses;
    word_1EA86BC10 = 3149;
    qword_1EA86BC18 = &teluSplitTable;
    dword_1EA86BC20 = 0;
    qword_1EA86BC28 = &TeluguShapingEngine::GetStaticClassTable(void)::teluClassTable;
    unk_1EA86BC30 = 0;
    qword_1EA86BC38 = 0;
    unk_1EA86BC40 = 0;
    byte_1EA86BC48 = 1;
    TeluguShapingEngine::GetStaticClassTable(void)::teluClassTable = &unk_1EF25BC48;
  }

  return &TeluguShapingEngine::GetStaticClassTable(void)::teluClassTable;
}

void TeluguShapingEngine::~TeluguShapingEngine(TeluguShapingEngine *this)
{
  DevanagariShapingEngine::~DevanagariShapingEngine(this);

  JUMPOUT(0x1865F22D0);
}

void TeluguClassTable::~TeluguClassTable(id *this)
{
  *this = &unk_1EF25BAE0;
}

{
  *this = &unk_1EF25BAE0;

  JUMPOUT(0x1865F22D0);
}

uint64_t *MalayalamShapingEngine::GetStaticClassTable(MalayalamShapingEngine *this)
{
  {
    qword_1EA86B920 = 0x4B054FFF0D7F0D00;
    unk_1EA86B928 = &mlymCharClasses;
    MalayalamShapingEngine::GetStaticClassTable(void)::mlymClassTable = &unk_1EF25BAE0;
    word_1EA86B930 = 3405;
    qword_1EA86B938 = "F\r>\r";
    dword_1EA86B940 = 0;
    qword_1EA86B948 = &MalayalamShapingEngine::GetStaticClassTable(void)::mlymClassTable;
    unk_1EA86B950 = 0;
    qword_1EA86B958 = 0;
    unk_1EA86B960 = 0;
    byte_1EA86B968 = 1;
  }

  return &MalayalamShapingEngine::GetStaticClassTable(void)::mlymClassTable;
}

void MalayalamShapingEngine::~MalayalamShapingEngine(MalayalamShapingEngine *this)
{
  DevanagariShapingEngine::~DevanagariShapingEngine(this);

  JUMPOUT(0x1865F22D0);
}

uint64_t *TamilShapingEngine::GetStaticClassTable(TamilShapingEngine *this)
{
  {
    qword_1EA86BC58 = 0x8154FFF0BFA0B80;
    unk_1EA86BC60 = &tamlCharClasses;
    TamilShapingEngine::GetStaticClassTable(void)::tamlClassTable = &unk_1EF25BAE0;
    word_1EA86BC68 = 3021;
    qword_1EA86BC70 = &tamlSplitTable;
    dword_1EA86BC78 = 0;
    qword_1EA86BC80 = &TamilShapingEngine::GetStaticClassTable(void)::tamlClassTable;
    unk_1EA86BC88 = 0;
    qword_1EA86BC90 = 0;
    unk_1EA86BC98 = 0;
    byte_1EA86BCA0 = 1;
  }

  return &TamilShapingEngine::GetStaticClassTable(void)::tamlClassTable;
}

void TamilShapingEngine::~TamilShapingEngine(TamilShapingEngine *this)
{
  DevanagariShapingEngine::~DevanagariShapingEngine(this);

  JUMPOUT(0x1865F22D0);
}

void *__CTEmojiImageSourceCopyImageStrikes(CGImageSource *a1)
{
  Count = CGImageSourceGetCount(a1);
  v25 = objc_opt_new();
  if (Count)
  {
    v2 = 0;
    v22 = *MEMORY[0x1E696DD90];
    v23 = *MEMORY[0x1E696DF28];
    v21 = *MEMORY[0x1E696DF80];
    v3 = *MEMORY[0x1E696DF90];
    v4 = MEMORY[0x1E695F060];
    do
    {
      ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, v2, 0);
      v6 = CGImageSourceCopyPropertiesAtIndex(a1, v2, 0);
      v7 = [(__CFDictionary *)v6 objectForKeyedSubscript:v23];
      v8 = [(__CFDictionary *)v6 objectForKeyedSubscript:v22];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = [MEMORY[0x1E695DF20] dictionary];
      }

      v11 = v10;

      v12 = *v4;
      v13 = v4[1];
      v14 = [v7 objectForKeyedSubscript:v21];
      v15 = v14;
      if (v14)
      {
        [v14 doubleValue];
        v12 = v16;
      }

      v17 = [v7 objectForKeyedSubscript:v3];

      if (v17)
      {
        [v17 doubleValue];
        v13 = v18;
      }

      v19 = [[CTEmojiImageStrike alloc] initWithImage:ImageAtIndex alignmentInset:v11 provenanceInfo:v12, v13];
      [v25 addObject:v19];
      CGImageRelease(ImageAtIndex);

      ++v2;
    }

    while (Count != v2);
  }

  return v25;
}

uint64_t __CTEmojiImageSourceGetImageIndex(CGImageSource *a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v46[1] = *MEMORY[0x1E69E9840];
  Count = CGImageSourceGetCount(a1);
  if (!Count)
  {
    v14 = 0;
    goto LABEL_24;
  }

  v13 = Count;
  *&v42 = a2;
  *(&v42 + 1) = a3;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = ceil(a5 * a6);
  v18 = *MEMORY[0x1E696DEC8];
  v43 = *MEMORY[0x1E696DED8];
  v19 = 0.0;
  v20 = 0x7FFFFFFFFFFFFFFFLL;
  v21 = 0.0;
  do
  {
    v22 = CGImageSourceCopyPropertiesAtIndex(a1, v15, 0);
    v23 = [(__CFDictionary *)v22 objectForKeyedSubscript:v18];
    v24 = v23;
    if (!v23)
    {
      goto LABEL_14;
    }

    [v23 doubleValue];
    v26 = v25;
    if (v25 < v17)
    {
      if (v21 == 0.0)
      {
        v27 = v16;
      }

      else
      {
        v27 = v16;
        if (v16 & 1 | (v25 <= v21))
        {
          goto LABEL_14;
        }
      }

LABEL_13:
      v28 = [(__CFDictionary *)v22 objectForKeyedSubscript:v43, v42];
      [v28 doubleValue];
      v19 = v29;

      v30 = v22;
      v21 = v26;
      v16 = v27;
      v14 = v30;
      v20 = v15;
      goto LABEL_14;
    }

    v27 = 1;
    if (v21 == 0.0 || ((v16 ^ 1) & 1) != 0 || v25 < v21)
    {
      goto LABEL_13;
    }

LABEL_14:

    ++v15;
  }

  while (v13 != v15);
  if (v20 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_24:
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_25;
  }

  if (v42 != 0)
  {
    if (v21 <= a5)
    {
      v31 = 1.0;
    }

    else
    {
      v31 = a5 / v21;
    }

    if (v42)
    {
      if (v19 >= v21)
      {
        if (v21 < v19)
        {
          a5 = v21 * v31;
        }
      }

      else
      {
        a4 = v19 * v31;
      }

      *v42 = a4;
      *(v42 + 8) = a5;
    }

    if (*(&v42 + 1))
    {
      v33 = [(__CFDictionary *)v14 objectForKeyedSubscript:*MEMORY[0x1E696DF28]];
      v34 = *MEMORY[0x1E695EFF8];
      v35 = *(MEMORY[0x1E695EFF8] + 8);
      v36 = [v33 objectForKeyedSubscript:*MEMORY[0x1E696DF80]];
      v37 = v36;
      if (v36)
      {
        [v36 doubleValue];
        v34 = floor(v38 * v31 + 0.5);
      }

      v39 = [v33 objectForKeyedSubscript:{*MEMORY[0x1E696DF90], v42}];

      if (v39)
      {
        [v39 doubleValue];
        v35 = -floor(v40 * v31 + 0.5);
      }

      v45 = @"__NSEmojiImagePropertyKeyOrigin";
      *v44 = v34;
      *&v44[1] = v35;
      v41 = [MEMORY[0x1E696B098] valueWithBytes:v44 objCType:"{CGPoint=dd}"];
      v46[0] = v41;
      **(&v42 + 1) = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    }
  }

LABEL_25:

  return v20;
}

void TAATKernEngine::KernOrderedList::ProcessGlyphsT<TRunGlue::TGlyphInVector>(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 56))
  {
    v4 = *(a1 + 8);
    v5 = **a1;
    v6 = *(v5 + 21);
    v7 = *(v5 + 19);
    v8 = TRunGlue::length(v5);
    if (v8 >= 2)
    {
      v9 = v8;
      v10 = v4 + 8;
      v11 = (v6 + 2 * v7);
      v12 = *v11;
      v13 = v4 + 10;
      for (i = 1; i != v9; ++i)
      {
        v15 = v11[i];
        if (v15 == 0xFFFF)
        {
          v15 = v12;
          goto LABEL_16;
        }

        if (*(a1 + 50) >= v12)
        {
          if (*(*(a1 + 56) + 2 * v12))
          {
            v16 = *(a1 + 48);
            if (v16 > (*(*(a1 + 56) + 2 * v12) - 1))
            {
              v17 = *(*(a1 + 56) + 2 * v12) - 1;
              v18 = (v13 + 6 * v17);
              do
              {
                v19 = bswap32(*(v18 - 1)) >> 16;
                if (v19 == v12)
                {
                  if (v15 <= bswap32(*v18) >> 16)
                  {
                    goto LABEL_18;
                  }
                }

                else if (v19 >= v12)
                {
LABEL_18:
                  v20 = (v10 + 6 * v17);
                  if (v12 != bswap32(*v20) >> 16 || v15 != bswap32(v20[1]) >> 16 || !v20[2])
                  {
                    break;
                  }

                  v21 = *a1;
                  v22 = *(a1 + 24);
                  v23 = *(*a1 + 24) * (bswap32(v20[2]) >> 16);
                  v24 = v23;
                  if ((v22 & 0x4000) != 0)
                  {
                    v42 = v10;
                    v44[0] = i;
                    v44[2] = v44;
                    v26 = v23;
                    v27 = std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>((v21 + 7), v44);
                    if (v26 == -32768)
                    {
                      v28 = 0;
                      *(v27 + 42) = 1;
                      v10 = v42;
                    }

                    else
                    {
                      v28 = v26;
                      v10 = v42;
                      if ((v22 & 0x800) == 0)
                      {
                        v28 = *(v27 + 20) + v26;
                      }
                    }

                    *(v27 + 20) = v28;
                    goto LABEL_55;
                  }

                  if ((*(a1 + 24) & 0x800) == 0)
                  {
                    v25 = v21[5];
                    goto LABEL_42;
                  }

                  v29 = v21[4];
                  v25 = v21[5];
                  if (v29 != v25)
                  {
                    while (*v29 != i)
                    {
                      v29 += 2;
                      if (v29 == v25)
                      {
                        goto LABEL_42;
                      }
                    }

                    if (v29 != v25)
                    {
                      for (j = v29 + 2; j != v25; j += 2)
                      {
                        if (*j != i)
                        {
                          *v29 = *j;
                          *(v29 + 4) = *(j + 4);
                          v29 += 2;
                        }
                      }
                    }
                  }

                  if (v29 > v25)
                  {
                    __break(1u);
                  }

                  else
                  {
                    if (v29 != v25)
                    {
                      v21[5] = v29;
                      v25 = v29;
                    }

LABEL_42:
                    v31 = v21[6];
                    if (v25 < v31)
                    {
                      *v25 = i;
                      *(v25 + 4) = v24;
                      v32 = (v25 + 2);
                      goto LABEL_54;
                    }

                    v33 = v21[4];
                    v34 = v25 - v33;
                    v35 = (v25 - v33) >> 4;
                    v36 = v35 + 1;
                    if (!((v35 + 1) >> 60))
                    {
                      v43 = v10;
                      v37 = v31 - v33;
                      if (v37 >> 3 > v36)
                      {
                        v36 = v37 >> 3;
                      }

                      if (v37 >= 0x7FFFFFFFFFFFFFF0)
                      {
                        v36 = 0xFFFFFFFFFFFFFFFLL;
                      }

                      if (v36)
                      {
                        std::allocator<std::pair<long,TAATDeltaXListEntry>>::allocate_at_least[abi:fn200100]((v21 + 4), v36);
                      }

                      v38 = v21;
                      v39 = 16 * v35;
                      *v39 = i;
                      *(v39 + 8) = v24;
                      v41 = 16 * v35 + 16;
                      memcpy(0, v33, v34);
                      v40 = v38[4];
                      v38[4] = 0;
                      v38[5] = v41;
                      v38[6] = 0;
                      v21 = v38;
                      if (v40)
                      {
                        operator delete(v40);
                        v21 = v38;
                      }

                      v32 = v41;
                      v10 = v43;
LABEL_54:
                      v21[5] = v32;
LABEL_55:
                      *a2 = 1;
                      break;
                    }
                  }

                  std::__throw_bad_array_new_length[abi:fn200100]();
                }

                ++v17;
                v18 += 3;
              }

              while (v16 != v17);
            }
          }
        }

LABEL_16:
        v12 = v15;
      }
    }
  }
}

void TAATKernEngine::KernOrderedList::ProcessGlyphsT<TRunGlue::TGlyph>(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 56))
  {
    v4 = *(a1 + 8);
    v19 = **a1;
    v20 = 0;
    v5 = TRunGlue::length(v19);
    v6 = TRunGlue::TGlyph::glyphID(&v19);
    ++v20;
    if (v5 >= 2)
    {
      v7 = v6;
      v8 = v4 + 8;
      v9 = v4 + 10;
      do
      {
        v10 = TRunGlue::TGlyph::glyphID(&v19);
        if (v10 == 0xFFFF || (v11 = v10, (TRunGlue::IsDeleted(v19, v20) & 1) != 0))
        {
          v11 = v7;
          goto LABEL_7;
        }

        if (*(a1 + 50) >= v7)
        {
          if (*(*(a1 + 56) + 2 * v7))
          {
            v13 = *(a1 + 48);
            if (v13 > (*(*(a1 + 56) + 2 * v7) - 1))
            {
              v14 = *(*(a1 + 56) + 2 * v7) - 1;
              v15 = (v9 + 6 * v14);
              do
              {
                v16 = bswap32(*(v15 - 1)) >> 16;
                if (v16 == v7)
                {
                  if (v11 <= bswap32(*v15) >> 16)
                  {
                    goto LABEL_20;
                  }
                }

                else if (v16 >= v7)
                {
LABEL_20:
                  v17 = (v8 + 6 * v14);
                  if (v7 == bswap32(*v17) >> 16 && v11 == bswap32(v17[1]) >> 16)
                  {
                    v18 = v17[2];
                    if (v18)
                    {
                      TAATKernEngine::HandleKern<TRunGlue::TGlyph>(*a1, v19, v20, bswap32(v18) >> 16, *(a1 + 24));
                      *a2 = 1;
                    }
                  }

                  break;
                }

                ++v14;
                v15 += 3;
              }

              while (v13 != v14);
            }
          }
        }

LABEL_7:
        ++v20;
        v7 = v11;
      }

      while (v5-- > 2);
    }
  }
}

void TAATKernEngine::HandleKern<TRunGlue::TGlyph>(uint64_t a1, uint64_t a2, uint64_t a3, int a4, __int16 a5)
{
  v8 = (*(a1 + 24) * a4);
  if ((a5 & 0x4000) == 0)
  {
    if ((a5 & 0x800) != 0)
    {
      v11 = *(a1 + 32);
      v9 = *(a1 + 40);
      if (v11 != v9)
      {
        while (*v11 != a3)
        {
          v11 += 16;
          if (v11 == v9)
          {
            goto LABEL_22;
          }
        }

        if (v11 != v9)
        {
          for (i = v11 + 16; i != v9; i += 16)
          {
            if (*i != a3)
            {
              *v11 = *i;
              *(v11 + 8) = *(i + 8);
              v11 += 16;
            }
          }
        }
      }

      if (v11 > v9)
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 != v9)
      {
        *(a1 + 40) = v11;
        v9 = v11;
      }
    }

    else
    {
      v9 = *(a1 + 40);
    }

LABEL_22:
    v13 = *(a1 + 48);
    if (v9 < v13)
    {
      *v9 = a3;
      *(v9 + 8) = v8;
      v14 = v9 + 16;
LABEL_33:
      *(a1 + 40) = v14;
      return;
    }

    v15 = *(a1 + 32);
    v16 = v9 - v15;
    v17 = (v9 - v15) >> 4;
    v18 = v17 + 1;
    if (!((v17 + 1) >> 60))
    {
      v19 = v13 - v15;
      if (v19 >> 3 > v18)
      {
        v18 = v19 >> 3;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF0)
      {
        v18 = 0xFFFFFFFFFFFFFFFLL;
      }

      if (v18)
      {
        std::allocator<std::pair<long,TAATDeltaXListEntry>>::allocate_at_least[abi:fn200100](a1 + 32, v18);
      }

      v20 = v17;
      v21 = 16 * v17;
      *v21 = a3;
      *(v21 + 8) = v8;
      v14 = 16 * v17 + 16;
      v22 = (v21 - 16 * v20);
      memcpy(v22, v15, v16);
      v23 = *(a1 + 32);
      *(a1 + 32) = v22;
      *(a1 + 40) = v14;
      *(a1 + 48) = 0;
      if (v23)
      {
        operator delete(v23);
      }

      goto LABEL_33;
    }

LABEL_35:
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  v24[0] = a3;
  v24[2] = v24;
  v10 = std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>(a1 + 56, v24);
  if (v8 == -32768)
  {
    LOWORD(v8) = 0;
    *(v10 + 42) = 1;
  }

  else if ((a5 & 0x800) == 0)
  {
    LOWORD(v8) = *(v10 + 20) + v8;
  }

  *(v10 + 20) = v8;
}

void TAATControlPointAccess::TAATControlPointAccess(TAATControlPointAccess *this, const TBaseFont *a2)
{
  *this = 0;
  *(this + 4) = -1;
  *(this + 2) = 0;
  *(this + 24) = 0u;
  *(this + 133) = this + 40;
  *(this + 67) = 0u;
  *(this + 1088) = 0;
  if (TBaseFont::GetInitializedGraphicsFont(a2))
  {
    ParserFont = CGFontGetParserFont();
    *this = ParserFont;
    if (ParserFont)
    {
      return;
    }
  }

  else
  {
    *this = 0;
  }

  v13 = 0xAAAAAAAAAAAAAAAALL;
  (*(*a2 + 488))(&v13, a2, 1751474532);
  v5 = atomic_load_explicit(&v13, memory_order_acquire);
  v6 = v5;
  if (v5)
  {
    BytePtr = CFDataGetBytePtr(v5);
  }

  else
  {
    BytePtr = 0;
  }

  v8 = atomic_load_explicit(&v13, memory_order_acquire);
  v9 = v8;
  if (v9)
  {
    v10 = v9;
    v11 = CFDataGetBytePtr(v9);

    if (v11)
    {
      v11 += CFDataGetLength(v8);
    }
  }

  else
  {

    v11 = 0;
  }

  if (BytePtr)
  {
    if (BytePtr + 54 <= v11)
    {
      *(this + 1088) = *(BytePtr + 25) != 0;
      (*(*a2 + 488))(&v12, a2, 1819239265);

      (*(*a2 + 488))(&v12, a2, 1735162214);
    }
  }
}

double TAATControlPointAccess::GetControlPointCoordinates(TAATControlPointAccess *this, int a2, unsigned int a3)
{
  if (*this)
  {
    if (*(this + 4) != a2)
    {
      v6 = *(this + 2);
      v7 = (*(this + 3) - v6) >> 4;
      v56 = v7;
      v8 = (*(this + 4) - v6) >> 4;
      if (v8 <= 0x40)
      {
        LODWORD(v8) = 64;
      }

      if (v7 < v8)
      {
        v56 = v8;
        std::vector<CGPoint,TInlineBufferAllocator<CGPoint,64ul>>::resize(this + 2, v8);
      }

      if (!FPFontGetControlPoints())
      {
        goto LABEL_33;
      }

      v9 = *(this + 3) - *(this + 2);
      std::vector<CGPoint,TInlineBufferAllocator<CGPoint,64ul>>::resize(this + 2, v56);
      if (v56 > (v9 >> 4) && (FPFontGetControlPoints() & 1) == 0)
      {
        goto LABEL_33;
      }

      *(this + 4) = a2;
    }

    v10 = *(this + 2);
    if (a3 < ((*(this + 3) - v10) >> 4))
    {
      v11 = (v10 + 16 * a3);
      return *v11;
    }

LABEL_33:
    v11 = MEMORY[0x1E695EFF8];
    return *v11;
  }

  v12 = *(this + 1088);
  v13 = atomic_load_explicit(this + 134, memory_order_acquire);
  v14 = v13;
  if (v12 != 1)
  {
    if (v13)
    {
      BytePtr = CFDataGetBytePtr(v13);

      if (!BytePtr)
      {
        goto LABEL_33;
      }

      v16 = atomic_load_explicit(this + 134, memory_order_acquire);
      v17 = v16;
      if (v17)
      {
        v25 = v17;
        v26 = CFDataGetBytePtr(v17);

        if (v26)
        {
          v27 = &v26[CFDataGetLength(v16)];

          v28 = &BytePtr[2 * a2];
          if ((v28 + 4) > v27)
          {
            goto LABEL_33;
          }

          v29 = bswap32(*v28) >> 16;
          v22 = 2 * v29;
          v23 = 2 * ((bswap32(*(v28 + 1)) >> 16) - v29);
          if (!v23)
          {
            goto LABEL_33;
          }

          goto LABEL_27;
        }

        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_29:
    v34 = 0;
LABEL_32:

    goto LABEL_33;
  }

  if (!v13)
  {
    goto LABEL_29;
  }

  v15 = CFDataGetBytePtr(v13);

  if (!v15)
  {
    goto LABEL_33;
  }

  v16 = atomic_load_explicit(this + 134, memory_order_acquire);
  v17 = v16;
  if (!v17)
  {
LABEL_30:

    goto LABEL_31;
  }

  v18 = v17;
  v19 = CFDataGetBytePtr(v17);

  if (!v19)
  {
LABEL_31:
    v34 = v16;
    goto LABEL_32;
  }

  v20 = &v19[CFDataGetLength(v16)];

  v21 = &v15[4 * a2];
  if ((v21 + 2) > v20)
  {
    goto LABEL_33;
  }

  v22 = bswap32(*v21);
  v23 = bswap32(v21[1]) - v22;
  if (!v23)
  {
    goto LABEL_33;
  }

LABEL_27:
  v30 = (this + 1080);
  v31 = atomic_load_explicit(this + 135, memory_order_acquire);
  v32 = v31;
  if (v31)
  {
    v33 = CFDataGetBytePtr(v31);
  }

  else
  {
    v33 = 0;
  }

  v37 = atomic_load_explicit(v30, memory_order_acquire);
  v38 = v37;
  if (v38)
  {
    v39 = v38;
    v40 = CFDataGetBytePtr(v38);

    if (v40)
    {
      v40 += CFDataGetLength(v37);
    }
  }

  else
  {

    v40 = 0;
  }

  if (!v33)
  {
    goto LABEL_33;
  }

  v41 = &v33[v22];
  v42 = &v33[v22 + v23];
  if (v42 < &v33[v22] || v42 > v40)
  {
    goto LABEL_33;
  }

  v43 = *v41;
  v44 = bswap32(v43) >> 16;
  v35 = *MEMORY[0x1E695EFF8];
  if ((v44 & 0x80000000) == 0)
  {
    v45 = &v41[v23];
    v46 = (v41 + 10);
    v47 = &v46[v44];
    v48 = (v23 - 10) >> 1;
    if (v23 < 12)
    {
      v48 = 0;
    }

    if (v47 <= v45 && v47 >= v46 || v48 == v44)
    {
      if (!v43)
      {
        goto LABEL_63;
      }

      LOWORD(v51) = 0;
      v52 = 0x10000;
      do
      {
        v53 = *v46++;
        v54 = bswap32(v53) >> 16;
        if (v54 <= v51)
        {
          v51 = v51;
        }

        else
        {
          v51 = v54;
        }

        v55 = v44 <= v52 >> 16;
        v52 += 0x10000;
      }

      while (!v55);
      if (((v51 + 1) & 0x10000) == 0)
      {
LABEL_63:
        operator new();
      }
    }
  }

  return v35;
}

void std::vector<CGPoint,TInlineBufferAllocator<CGPoint,64ul>>::resize(char **a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 4;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v14 = &v3[16 * a2];
    goto LABEL_15;
  }

  v6 = a2 - v5;
  v7 = a1[2];
  if (a2 - v5 <= (v7 - v4) >> 4)
  {
    bzero(a1[1], 16 * v6);
    v14 = &v4[16 * v6];
LABEL_15:
    a1[1] = v14;
    return;
  }

  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  v8 = v7 - v3;
  v9 = v8 >> 3;
  if (v8 >> 3 <= a2)
  {
    v9 = a2;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF0)
  {
    v10 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v9;
  }

  v11 = (a1 + 131);
  v12 = a1[131];
  v13 = &v12[16 * v10];
  if (v13 > (a1 + 131))
  {
    if (!(v10 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *v11 = v13;
  v15 = &v12[16 * v5];
  v16 = &v12[16 * v10];
  bzero(v15, 16 * v6);
  v17 = &v15[16 * v6];
  v18 = a1[1] - *a1;
  v19 = &v15[-v18];
  memcpy(v19, *a1, v18);
  v20 = *a1;
  *a1 = v19;
  a1[1] = v17;
  v21 = a1[2];
  a1[2] = v16;
  if (v20)
  {
    if (a1 + 3 > v20 || v11 <= v20)
    {

      operator delete(v20);
    }

    else if (v21 == *v11)
    {
      *v11 = v20;
    }
  }
}

CFArrayRef CTFontManagerCopyAvailablePostScriptNames(void)
{
  TDescriptorSource::TDescriptorSource(&v3);
  TDescriptorSource::CopyAvailablePostScriptNames(&v3, &v4);
  if (atomic_load_explicit(&v4, memory_order_acquire))
  {
    v0 = atomic_exchange(&v4, 0);
  }

  else
  {
    v0 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = v0;
  v1 = atomic_exchange(&v5, 0);

  return v1;
}

CFArrayRef CTFontManagerCopyAvailableFontFamilyNames(void)
{
  TDescriptorSource::TDescriptorSource(v3);
  TDescriptorSource::CopyAvailableFamilyNames(&v4);
  if (atomic_load_explicit(&v4, memory_order_acquire))
  {
    v0 = atomic_exchange(&v4, 0);
  }

  else
  {
    v0 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
  }

  v5 = v0;
  v1 = atomic_exchange(&v5, 0);

  return v1;
}

BOOL CTFontManagerRegisterGraphicsFont(CGFontRef font, CFErrorRef *error)
{
  if (font)
  {
    v9 = -86;
    v8 = 0xAAAAAAAAAAAAAAAALL;
    CreateFontURLFromFont(font, &v9, &v8);
    EnsureGSFontInitialized();
    v4 = GSFontRegisterCGFont();
    v5 = v4 == 0;
    if (v4)
    {
      if (error)
      {
        *error = CreateErrorForFailureToActOnGraphicsFont(1, font, v4);
      }
    }

    else
    {
      values = atomic_load_explicit(&v8, memory_order_acquire);
      v6 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
      CTFontManagerInstalledFontsChanged(v6, 0);
    }
  }

  else
  {
    v5 = 0;
    if (error)
    {
      *error = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E640], 22, 0);
    }
  }

  return v5;
}

CFErrorRef CreateErrorForFailureToActOnGraphicsFont(int a1, void *a2, int a3)
{
  userInfoKeys[2] = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E695E480];
  v6 = "register";
  if (!a1)
  {
    v6 = "unregister";
  }

  v7 = CFStringCreateWithFormat(v5, 0, @"Could not %s the CGFont '%@'", v6, a2);
  userInfoKeys[0] = *MEMORY[0x1E695E620];
  userInfoKeys[1] = @"CTFailedCGFont";
  userInfoValues[0] = v7;
  userInfoValues[1] = a2;
  v8 = CFErrorCreateWithUserInfoKeysAndValues(v5, @"com.apple.CoreText.CTFontManagerErrorDomain", a3, userInfoKeys, userInfoValues, 2);

  return v8;
}

BOOL CTFontManagerUnregisterGraphicsFont(CGFontRef font, CFErrorRef *error)
{
  if (font)
  {
    v9 = -86;
    v8 = 0xAAAAAAAAAAAAAAAALL;
    CreateFontURLFromFont(font, &v9, &v8);
    EnsureGSFontInitialized();
    v4 = GSFontUnregisterCGFont();
    v5 = v4 == 0;
    if (v4)
    {
      if (error)
      {
        *error = CreateErrorForFailureToActOnGraphicsFont(0, font, v4);
      }
    }

    else
    {
      values = atomic_load_explicit(&v8, memory_order_acquire);
      v6 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
      CTFontManagerInstalledFontsChanged(0, v6);
    }
  }

  else
  {
    v5 = 0;
    if (error)
    {
      *error = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E640], 22, 0);
    }
  }

  return v5;
}

CFArrayRef CTFontManagerCreateFontDescriptorsFromURL(CFURLRef fileURL)
{
  FontsWithURL = CGFontCreateFontsWithURL();
  v1 = atomic_exchange(&FontsWithURL, 0);

  v2 = v1;
  v3 = v2;
  if (v2)
  {
    Count = CFArrayGetCount(v2);

    if (Count < 1)
    {
      v3 = 0;
      goto LABEL_14;
    }

    FontsWithURL = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (v1)
    {
      v5 = CFArrayGetCount(v1);
      if (v5)
      {
        v6 = v5;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
          BaseFont = TDescriptor::CreateBaseFont(ValueAtIndex, 1);
          if (BaseFont)
          {
            v10 = BaseFont;
            v11 = TCFBase<TDescriptor>::Allocate();
            v12 = v11;
            if (v11)
            {
              *(v11 + 16) = 0;
              *(v11 + 24) = TDescriptor::Hash;
              *(v11 + 32) = 0;
              *(v11 + 40) = v11 + 48;
              *(v11 + 48) = &unk_1EF257E00;
              *(v11 + 56) = 0;
              *(v11 + 64) = 0x80000000;
              *(v11 + 72) = 0;
              atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
              *(v11 + 80) = v10;
              *(v11 + 88) = 0;
              v13 = v11;
              CFArrayAppendValue(atomic_load_explicit(&FontsWithURL, memory_order_acquire), v13);
            }
          }

          else
          {
            v12 = 0;
          }
        }
      }
    }

    v3 = atomic_exchange(&FontsWithURL, 0);
    v2 = FontsWithURL;
  }

LABEL_14:
  return v3;
}

CTFontDescriptorRef CTFontManagerCreateFontDescriptorFromData(CFDataRef data)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  CreateFontWithData(&v5);
  if (atomic_load_explicit(&v5, memory_order_acquire))
  {
    v4 = 0xAAAAAAAAAAAAAAAALL;
    atomic_load_explicit(&v5, memory_order_acquire);
    v1 = TCFBase<TDescriptor>::Allocate();
    if (v1)
    {
      CTFontDescriptor::CTFontDescriptor(v1);
    }

    v4 = 0;
    v2 = atomic_exchange(&v4, 0);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

unint64_t CTFontManagerCreateMemorySafeFontDescriptorFromData(const __CFData *a1)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  CreateMemorySafeFontWithData(a1, &v5);
  if (atomic_load_explicit(&v5, memory_order_acquire))
  {
    v4 = 0xAAAAAAAAAAAAAAAALL;
    atomic_load_explicit(&v5, memory_order_acquire);
    v1 = TCFBase<TDescriptor>::Allocate();
    if (v1)
    {
      CTFontDescriptor::CTFontDescriptor(v1);
    }

    v4 = 0;
    v2 = atomic_exchange(&v4, 0);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

CFArrayRef CTFontManagerCreateFontDescriptorsFromData(CFDataRef data)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  FontsFromData = CGFontCreateFontsFromData();
  v2 = FontsFromData;
  if (FontsFromData)
  {
    Count = CFArrayGetCount(FontsFromData);
    if (Count)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        CFArrayGetValueAtIndex(v2, i);
        v6 = TCFBase<TDescriptor>::Allocate();
        if (v6)
        {
          CTFontDescriptor::CTFontDescriptor(v6);
        }
      }
    }
  }

  v7 = atomic_exchange(&Mutable, 0);

  return v7;
}

void _CTFontManagerRegisterActionFontURLs(const __CFArray *a1, int a2, uint64_t a3, int a4, int a5, void *a6, void (**a7)(void, void, void))
{
  v8 = a1;
  v32 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    v11 = [MEMORY[0x1E695DF70] array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v12 = [(__CFArray *)v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = 0;
      v15 = *v28;
      obj = v8;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = [MEMORY[0x1E695DF90] dictionaryWithObject:*(*(&v27 + 1) + 8 * i) forKey:@"NSCTFontFileURLAttribute"];
          v18 = v17;
          if (a5 == 1)
          {
            [v17 setObject:MEMORY[0x1E695E118] forKey:@"CTFontIgnoreURLLocationAttribute"];
          }

          if (a6)
          {
            v19 = [a6 objectAtIndex:v14];
            [v18 setObject:objc_msgSend(v19 forKey:{"objectAtIndexedSubscript:", 0), @"CTFontRegistrationUserInfoAttribute"}];
            [v18 setObject:objc_msgSend(v19 forKey:{"objectAtIndexedSubscript:", 1), @"CTFontAssetDataAttribute"}];
          }

          [v11 addObject:v18];
          ++v14;
        }

        v8 = obj;
        v13 = [(__CFArray *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    v25[1] = MEMORY[0x1E69E9820];
    v25[2] = 3221225472;
    v25[3] = ___ZL36_CTFontManagerRegisterActionFontURLsPK9__CFArray18CTFontManagerScopeb6Action8URLTrustS1_U13block_pointerFbS1_bE_block_invoke;
    v25[4] = &unk_1E6E3ED60;
    v25[5] = v8;
    v25[6] = a7;
    v26 = a4;
    if (a4 == 1)
    {
      FSFontProviderRegisterFonts();
    }

    else
    {
      FSFontProviderUnregisterFonts();
    }
  }

  else
  {
    v24 = 0;
    v25[0] = 0;
    _CTFontManagerRegisterActionFontsForURLs(a1, a2, a4, &v24);

    if (a7)
    {
      if (atomic_load_explicit(v25, memory_order_acquire))
      {
        v20 = atomic_exchange(v25, 0);
      }

      else
      {
        v20 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
      }

      (a7)[2](a7, v20, 1);
    }
  }
}

void _CTFontManagerRegisterActionFontDescriptors(CFArrayRef theArray, int a2, unsigned int a3, int a4, uint64_t a5)
{
  v33[1] = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:CFArrayGetCount(theArray)];
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count)
      {
        v10 = Count;
        for (i = 0; i != v10; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          SupportedAttributes = ExtractSupportedAttributes(ValueAtIndex[5], 1);
          if (SupportedAttributes)
          {
            [v8 addObject:SupportedAttributes];
          }
        }
      }
    }

    v29[6] = MEMORY[0x1E69E9820];
    v29[7] = 3221225472;
    v29[8] = ___ZL43_CTFontManagerRegisterActionFontDescriptorsPK9__CFArray18CTFontManagerScopeb6ActionU13block_pointerFbS1_bE_block_invoke;
    v29[9] = &unk_1E6E3ED60;
    v29[10] = theArray;
    v29[11] = a5;
    v30 = a4;
    if (a4 == 1)
    {
      FSFontProviderRegisterFonts();
    }

    else
    {
      FSFontProviderUnregisterFonts();
    }
  }

  else
  {
    v15 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[__CFArray count](theArray, "count")}];
    v16 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[__CFArray count](theArray, "count")}];
    v17 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[__CFArray count](theArray, "count")}];
    if (theArray)
    {
      v18 = CFArrayGetCount(theArray);
      if (v18)
      {
        v19 = v18;
        for (j = 0; j != v19; ++j)
        {
          v21 = CFArrayGetValueAtIndex(theArray, j);
          v22 = CTFontDescriptorCopyAttribute(v21, @"NSCTFontFileURLAttribute");
          if (v22)
          {
            v23 = v22;
            [v15 addObject:v22];
            [v17 setObject:v21 forKeyedSubscript:v23];
          }

          else
          {
            [v16 addObject:v21];
          }
        }
      }
    }

    v24 = [v16 count];
    if (a5 && v24)
    {
      v32 = @"CTFontManagerErrorFontDescriptors";
      v33[0] = v16;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreText.CTFontManagerErrorDomain" code:303 userInfo:v25];
      (*(a5 + 16))(a5, [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1], objc_msgSend(v15, "count") == 0);
    }

    if ([v15 count])
    {
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = ___ZL43_CTFontManagerRegisterActionFontDescriptorsPK9__CFArray18CTFontManagerScopeb6ActionU13block_pointerFbS1_bE_block_invoke_2;
      v29[3] = &unk_1E6E3ED88;
      v29[4] = v17;
      v29[5] = a5;
      _CTFontManagerRegisterActionFontURLs(v15, a2, a3, a4, 1, 0, v29);
    }
  }
}

void CTFontManagerRegisterFontsWithAssetNames(CFArrayRef fontAssetNames, CFBundleRef bundle, CTFontManagerScope scope, BOOL enabled, void *registrationHandler)
{
  v6 = enabled;
  v62 = *MEMORY[0x1E69E9840];
  v9 = [(__CFArray *)fontAssetNames mutableCopy];
  if (bundle && (v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:CFBundleGetIdentifier(bundle)]) != 0)
  {
    v11 = v10;
    v12 = [v10 isEqual:{objc_msgSend(MEMORY[0x1E696AAE8], "mainBundle")}];
  }

  else
  {
    v11 = [MEMORY[0x1E696AAE8] mainBundle];
    v12 = 1;
  }

  if (scope == kCTFontManagerScopePersistent && v12)
  {
    v34 = v6;
    v35 = registrationHandler;
    v39 = v9;
    v48 = 0;
    v49 = &v48;
    v50 = 0x3052000000;
    v51 = __Block_byref_object_copy__3;
    v13 = _MergedGlobals_37;
    v52 = __Block_byref_object_dispose__3;
    v53 = _MergedGlobals_37;
    if (!_MergedGlobals_37)
    {
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = ___ZL19getNSDataAssetClassv_block_invoke;
      v47[3] = &unk_1E6E37AF8;
      v47[4] = &v48;
      ___ZL19getNSDataAssetClassv_block_invoke(v47);
      v13 = v49[5];
    }

    _Block_object_dispose(&v48, 8);
    v38 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[__CFArray count](fontAssetNames, "count")}];
    v37 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[__CFArray count](fontAssetNames, "count")}];
    v36 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[__CFArray count](fontAssetNames, "count")}];
    if (v13)
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v14 = [(__CFArray *)fontAssetNames countByEnumeratingWithState:&v43 objects:v61 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v44;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v44 != v16)
            {
              objc_enumerationMutation(fontAssetNames);
            }

            v18 = *(*(&v43 + 1) + 8 * i);
            v19 = [[v13 alloc] initWithName:v18 bundle:v11];
            if (v19)
            {
              v20 = v19;
              v21 = CFUUIDCreate(0);
              if (v21)
              {
                v22 = v21;
                v23 = CFUUIDCreateString(0, v21);
                if (v23)
                {
                  v24 = v23;
                  v25 = [MEMORY[0x1E695DFF8] fileURLWithPath:{-[NSString stringByAppendingPathComponent:](NSTemporaryDirectory(), "stringByAppendingPathComponent:", objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"%@-%@", v18, v23))}];
                  CFRelease(v24);
                  CFRelease(v22);
                  if (v25)
                  {
                    if ([objc_msgSend(v20 "data")])
                    {
                      v26 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v25 options:8 error:0];
                      if (v26)
                      {
                        v27 = v26;
                        [v39 removeObject:v18];
                        [v38 addObject:v25];
                        v60[0] = v18;
                        v60[1] = v27;
                        [v37 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v60, 2)}];
                        [v36 setObject:v18 forKeyedSubscript:v25];
                      }
                    }
                  }
                }

                else
                {
                  CFRelease(v22);
                }
              }
            }
          }

          v15 = [(__CFArray *)fontAssetNames countByEnumeratingWithState:&v43 objects:v61 count:16];
        }

        while (v15);
      }
    }

    v9 = v39;
    v28 = [v39 count];
    if (v35 && v28)
    {
      v48 = 0;
      if ([v39 count] == 1)
      {
        CTCopyLocalizedString(@"The font resource %@ could not be found in an asset catalog.", @"CTFontManagerErrors", &v42);
        CreateLocalizedStringWithFormat(atomic_load_explicit(&v42, memory_order_acquire), v47, [v39 objectAtIndexedSubscript:0], v33);
      }

      else
      {
        CTCopyLocalizedString(@"%1$d font resources could not be found in an asset catalog: %2$@", @"CTFontManagerErrors", &v42);
        CreateLocalizedStringWithFormat(atomic_load_explicit(&v42, memory_order_acquire), v47, [v39 count], objc_msgSend(v39, "componentsJoinedByString:", @", "));
      }

      v59[0] = v39;
      v31 = *MEMORY[0x1E695E650];
      v58[0] = @"CTFontManagerErrorFontAssetNameKey";
      v58[1] = v31;
      v59[1] = atomic_load_explicit(&v48, memory_order_acquire);
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
      v57 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreText.CTFontManagerErrorDomain" code:107 userInfo:v32];
      v35[2](v35, [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1], objc_msgSend(v38, "count") == 0);
    }

    if ([v38 count])
    {
      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = __CTFontManagerRegisterFontsWithAssetNames_block_invoke;
      v41[3] = &unk_1E6E3ED10;
      v41[5] = v38;
      v41[6] = v35;
      v41[4] = v36;
      _CTFontManagerRegisterActionFontURLs(v38, 2, v34, 1, 1, v37, v41);
    }
  }

  else
  {
    v55 = @"CTFontManagerErrorFontAssetNameKey";
    v56 = v9;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v30 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E695E640] code:22 userInfo:v29];
    if (registrationHandler)
    {
      v54 = v30;
      (*(registrationHandler + 2))(registrationHandler, [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1], 1);
    }
  }
}

uint64_t __CTFontManagerRegisterFontsWithAssetNames_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v6 = TransformErrorsWithURLKeyIntoKey(a2, @"CTFontManagerErrorFontAssetNameKey", *(a1 + 32));
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = a2;
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v7, a3);
  }

  if (a3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = *(a1 + 40);
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
        }

        v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }
  }

  return 1;
}

void *TransformErrorsWithURLKeyIntoKey(void *a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = a1;
  v19 = [a1 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v19)
  {
    v18 = *v26;
    while (2)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v25 + 1) + 8 * i);
        v7 = [objc_msgSend(v6 "userInfo")];
        v8 = [MEMORY[0x1E695DF70] array];
        v9 = [objc_msgSend(v6 "userInfo")];
        if (!v9)
        {
          CFLog();
          return 0;
        }

        v10 = v9;
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v22;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v22 != v13)
              {
                objc_enumerationMutation(v10);
              }

              [v8 addObject:{objc_msgSend(a3, "objectForKeyedSubscript:", *(*(&v21 + 1) + 8 * j))}];
            }

            v12 = [v10 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v12);
        }

        [v7 removeObjectForKey:@"CTFontManagerErrorFontURLs"];
        [v7 setObject:v8 forKeyedSubscript:a2];
        [v20 addObject:{objc_msgSend(MEMORY[0x1E696ABC0], "errorWithDomain:code:userInfo:", objc_msgSend(v6, "domain"), objc_msgSend(v6, "code"), v7)}];
      }

      v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v19)
      {
        continue;
      }

      break;
    }
  }

  return v20;
}

CFArrayRef CTFontManagerCopyRegisteredFontDescriptors(CTFontManagerScope scope, BOOL enabled)
{
  if (scope == kCTFontManagerScopePersistent && (v2 = FSFontProviderRegisteredFontsInfo()) != 0)
  {
    v3 = v2;
    Count = CFArrayGetCount(v2);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
    v6 = CFArrayGetCount(v3);
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
        v10 = CTFontDescriptorCreateWithAttributes(ValueAtIndex);
        if (v10)
        {
          v11 = v10;
          CFArrayAppendValue(Mutable, v10);
          CFRelease(v11);
        }
      }
    }
  }

  else
  {
    CFLog();
    v14 = 0;
    if (atomic_load_explicit(&v14, memory_order_acquire))
    {
      v12 = atomic_exchange(&v14, 0);
    }

    else
    {
      v12 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
    }

    v15 = v12;
    Mutable = atomic_exchange(&v15, 0);
  }

  return Mutable;
}

void CTFontManagerRequestFonts(CFArrayRef fontDescriptors, void *completionHandler)
{
  if (fontDescriptors)
  {
    Count = CFArrayGetCount(fontDescriptors);
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
    v5 = CFArrayGetCount(fontDescriptors);
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(fontDescriptors, i);
        MatchingFontDescriptors = CTFontDescriptorCreateMatchingFontDescriptors(ValueAtIndex, 0);
        if (!MatchingFontDescriptors)
        {
          SupportedAttributes = ExtractSupportedAttributes(ValueAtIndex[5], 0);
          if (SupportedAttributes)
          {
            CFArrayAppendValue(Mutable, SupportedAttributes);
          }
        }
      }
    }

    CFRetain(fontDescriptors);
    FSFontProviderRequestFonts();
  }

  else if (completionHandler)
  {
    v11 = *(completionHandler + 2);

    v11(completionHandler, 0);
  }
}

void *ExtractSupportedAttributes(atomic_ullong *a1, char a2)
{
  v12[8] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E695DF90] dictionary];
  v12[0] = @"NSFontNameAttribute";
  v12[1] = objc_opt_class();
  v12[2] = @"NSFontFamilyAttribute";
  v12[3] = objc_opt_class();
  v12[4] = @"NSCTFontFileURLAttribute";
  v12[5] = objc_opt_class();
  v12[6] = @"CTFontRegistrationUserInfoAttribute";
  v5 = 0;
  v12[7] = objc_opt_class();
  do
  {
    v6 = v12[v5];
    atomic_load_explicit(a1 + 1, memory_order_acquire);
    explicit = atomic_load_explicit(a1 + 1, memory_order_acquire);
    if (explicit)
    {
      Value = CFDictionaryGetValue(explicit, v6);
    }

    else
    {
      Value = 0;
    }

    if (objc_opt_isKindOfClass())
    {
      [v4 setObject:Value forKeyedSubscript:v12[v5]];
    }

    v5 += 2;
  }

  while (v5 != 8);
  if ((a2 & 1) != 0 && (a1[2] & 0x80000000) != 0)
  {
    TDescriptor::CopyAttribute(a1, @"NSCTFontFileURLAttribute", &v11);
    v9 = atomic_exchange(&v11, 0);

    if (v9)
    {
      [v4 setObject:v9 forKeyedSubscript:@"NSCTFontFileURLAttribute"];
    }
  }

  return v4;
}

void __CTFontManagerRequestFonts_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (a2)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      v5 = *(a1 + 40);
      if (v5)
      {
        Count = CFArrayGetCount(*(a1 + 40));
        if (Count)
        {
          v7 = Count;
          for (i = 0; i != v7; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
            MatchingFontDescriptors = CTFontDescriptorCreateMatchingFontDescriptors(ValueAtIndex, 0);
            if (!MatchingFontDescriptors)
            {
              CFArrayAppendValue(Mutable, ValueAtIndex);
            }
          }
        }
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(v3 + 16))(v3, *(a1 + 40));
    }
  }

  v11 = *(a1 + 40);

  CFRelease(v11);
}

void CreateErrorForFailureToActOnFontURLs(CFErrorRef *a1, int a2, unint64_t a3, int a4)
{
  userInfoKeys[2] = *MEMORY[0x1E69E9840];
  v8 = 0xAAAAAAAAAAAAAAAALL;
  if (a2)
  {
    v7 = @"Font registration was unsuccessful.";
  }

  else
  {
    v7 = @"Font unregistration was unsuccessful.";
  }

  CTCopyLocalizedString(v7, @"CTFontManagerErrors", &v8);
  userInfoKeys[0] = *MEMORY[0x1E695E650];
  userInfoKeys[1] = @"CTFontManagerErrorFontURLs";
  userInfoValues = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  userInfoValues = atomic_load_explicit(&v8, memory_order_acquire);
  v10 = a3;
  *a1 = CFErrorCreateWithUserInfoKeysAndValues(*MEMORY[0x1E695E480], @"com.apple.CoreText.CTFontManagerErrorDomain", a4, userInfoKeys, &userInfoValues, 2);
}

uint64_t ___ZL36_CTFontManagerRegisterActionFontURLsPK9__CFArray18CTFontManagerScopeb6Action8URLTrustS1_U13block_pointerFbS1_bE_block_invoke(uint64_t result, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(result + 40))
  {
    v3 = result;
    v4 = [MEMORY[0x1E695DF70] array];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(a2);
          }

          [v4 addObject:{externalizeError(*(*(&v9 + 1) + 8 * v8++), @"CTFontManagerErrorFontURLs", *(v3 + 32), *(v3 + 48))}];
        }

        while (v6 != v8);
        v6 = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    return (*(*(v3 + 40) + 16))();
  }

  return result;
}

uint64_t externalizeError(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v47 = *MEMORY[0x1E69E9840];
  v8 = [a1 userInfo];
  if (v8)
  {
    v9 = v8;
    v10 = *MEMORY[0x1E699F770];
    v11 = [v8 objectForKeyedSubscript:*MEMORY[0x1E699F770]];
    if (v11)
    {
      v12 = v11;
      v37 = a2;
      v38 = a4;
      v13 = [v9 mutableCopy];
      v14 = [MEMORY[0x1E695DF70] array];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v15 = [v12 countByEnumeratingWithState:&v39 objects:v46 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v40;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v40 != v17)
              {
                objc_enumerationMutation(v12);
              }

              [v14 addObject:{objc_msgSend(a3, "objectAtIndexedSubscript:", objc_msgSend(*(*(&v39 + 1) + 8 * i), "intValue"))}];
            }

            v16 = [v12 countByEnumeratingWithState:&v39 objects:v46 count:16];
          }

          while (v16);
        }
      }

      else
      {
        [v14 addObject:{objc_msgSend(a3, "objectAtIndexedSubscript:", objc_msgSend(v12, "intValue"))}];
      }

      a2 = v37;
      [v13 setObject:v14 forKey:v37];
      [v13 removeObjectForKey:v10];
      a4 = v38;
    }

    else
    {
      v13 = 0;
    }

    v19 = *MEMORY[0x1E696AA08];
    v20 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];
    if (v20)
    {
      v21 = v20;
      if (!v13)
      {
        v13 = [v9 mutableCopy];
      }

      [v13 setObject:externalizeError(v21 forKey:{a2, a3, a4), v19}];
    }

    if (v13)
    {
      v22 = [v7 domain];
      v23 = [v7 code];
      if ([v22 isEqualToString:*MEMORY[0x1E699F750]])
      {
        if ((v23 - 1) >= 0xA)
        {
          v36 = v23;
          CFLog();
          v24 = 301;
        }

        else
        {
          v24 = qword_18477D098[v23 - 1];
        }

        v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CoreText.CTFontManagerErrorDomain" code:v24 userInfo:{v13, v36}];
        v45 = 0xAAAAAAAAAAAAAAAALL;
        v26 = CFErrorCopyUserInfo(v25);
        TCFMutableDictionary::TCFMutableDictionary(&v45, v26);

        Value = CFDictionaryGetValue(atomic_load_explicit(&v45, memory_order_acquire), @"CTFontManagerErrorFontURLs");
        if (Value)
        {
          Count = CFArrayGetCount(Value);
        }

        else
        {
          Count = 0;
        }

        v29 = *MEMORY[0x1E695E658];
        if (a4)
        {
          v30 = @"Font registration was unsuccessful.";
        }

        else
        {
          v30 = @"Font unregistration was unsuccessful.";
        }

        CTCopyLocalizedString(v30, @"CTFontManagerErrors", &v44);
        CFDictionarySetValue(atomic_load_explicit(&v45, memory_order_acquire), v29, atomic_load_explicit(&v44, memory_order_acquire));

        Code = CFErrorGetCode(v25);
        v32 = Code;
        if (Code <= 201)
        {
          if (Code <= 103)
          {
            switch(Code)
            {
              case 'e':
                v33 = *MEMORY[0x1E695E650];
                v34 = @"The file does not exist at the specified URL.";
                goto LABEL_64;
              case 'f':
                v33 = *MEMORY[0x1E695E650];
                v34 = @"The file cannot be accessed due to insufficient permissions.";
                goto LABEL_64;
              case 'g':
                v33 = *MEMORY[0x1E695E650];
                v34 = @"The file is not a recognized or supported font file format.";
                goto LABEL_64;
            }
          }

          else
          {
            if (Code <= 105)
            {
              v33 = *MEMORY[0x1E695E650];
              if (Code == 104)
              {
                v34 = @"The file contains invalid font data that could cause system problems.";
              }

              else
              {
                v34 = @"The file has already been registered in the specified scope.";
              }

              goto LABEL_64;
            }

            if (Code == 106)
            {
              v33 = *MEMORY[0x1E695E650];
              v34 = @"The operation failed due to a system limitation.";
              goto LABEL_64;
            }

            if (Code == 201)
            {
              v33 = *MEMORY[0x1E695E650];
              v34 = @"The file is not registered in the specified scope.";
              goto LABEL_64;
            }
          }
        }

        else if (Code > 302)
        {
          if (Code <= 304)
          {
            v33 = *MEMORY[0x1E695E650];
            if (Code == 303)
            {
              v34 = @"The font descriptor does not have information to specify a font file.";
            }

            else
            {
              v34 = @"The operation was cancelled by the user.";
            }

            goto LABEL_64;
          }

          if (Code == 305)
          {
            v33 = *MEMORY[0x1E695E650];
            v34 = @"The file could not be registered because of a duplicated font name.";
            goto LABEL_64;
          }

          if (Code == 306)
          {
            v33 = *MEMORY[0x1E695E650];
            v34 = @"The file is not in an allowed location. It must be either in the application's bundle or an on-demand resource.";
            goto LABEL_64;
          }
        }

        else
        {
          if (Code > 300)
          {
            v33 = *MEMORY[0x1E695E650];
            if (Code == 301)
            {
              v34 = @"The file could not be processed due to an unexpected FontProvider error.";
            }

            else
            {
              v34 = @"The file could not be processed because the provider does not have a necessary entitlement.";
            }

            goto LABEL_64;
          }

          if (Code == 202)
          {
            v33 = *MEMORY[0x1E695E650];
            v34 = @"The file is actively in use and cannot be unregistered.";
            goto LABEL_64;
          }

          if (Code == 203)
          {
            v33 = *MEMORY[0x1E695E650];
            v34 = @"The file is required by the system and cannot be unregistered.";
LABEL_64:
            CTCopyLocalizedString(v34, @"CTFontManagerErrors", &v43);
            CreateLocalizedStringWithFormat(atomic_load_explicit(&v43, memory_order_acquire), &v44, Count);
            CFDictionarySetValue(atomic_load_explicit(&v45, memory_order_acquire), v33, atomic_load_explicit(&v44, memory_order_acquire));
          }
        }

        v44 = CFErrorCreate(*MEMORY[0x1E695E480], @"com.apple.CoreText.CTFontManagerErrorDomain", v32, atomic_load_explicit(&v45, memory_order_acquire));

        v7 = atomic_exchange(&v44, 0);
        return v7;
      }

      return [MEMORY[0x1E696ABC0] errorWithDomain:v22 code:v23 userInfo:v13];
    }
  }

  return v7;
}

uint64_t ___ZL43_CTFontManagerRegisterActionFontDescriptorsPK9__CFArray18CTFontManagerScopeb6ActionU13block_pointerFbS1_bE_block_invoke(uint64_t result, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(result + 40))
  {
    v3 = result;
    v4 = [MEMORY[0x1E695DF70] array];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(a2);
          }

          [v4 addObject:{externalizeError(*(*(&v9 + 1) + 8 * v8++), @"CTFontManagerErrorFontDescriptors", *(v3 + 32), *(v3 + 48))}];
        }

        while (v6 != v8);
        v6 = [a2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    return (*(*(v3 + 40) + 16))();
  }

  return result;
}

uint64_t ___ZL43_CTFontManagerRegisterActionFontDescriptorsPK9__CFArray18CTFontManagerScopeb6ActionU13block_pointerFbS1_bE_block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 40))
  {
    v6 = TransformErrorsWithURLKeyIntoKey(a2, @"CTFontManagerErrorFontDescriptors", *(a1 + 32));
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = a2;
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v7, a3);
  }

  return 1;
}

Class ___ZL19getNSDataAssetClassv_block_invoke(uint64_t a1)
{
  v6[9] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!qword_1ED568268)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = ___ZL20UIKitCoreLibraryCorePPc_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v6[7] = 0;
    v6[8] = 0;
    v6[6] = "/System/Library/PrivateFrameworks/UIKitCore.framework/UIKitCore";
    qword_1ED568268 = _sl_dlopen();
  }

  if (!qword_1ED568268)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *UIKitCoreLibrary()"];
    [v3 handleFailureInFunction:v4 file:@"CTFontManager.cpp" lineNumber:1183 description:{@"%s", v6[0]}];
    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("NSDataAsset");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"Class getNSDataAssetClass()_block_invoke") description:{@"CTFontManager.cpp", 1184, @"Unable to find class %s", "NSDataAsset"}];
LABEL_10:
    __break(1u);
  }

  _MergedGlobals_37 = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t ___ZL20UIKitCoreLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED568268 = result;
  return result;
}

void OpenTypeReorderingOutput::OpenTypeReorderingOutput(OpenTypeReorderingOutput *this, TRunGlue *a2)
{
  *this = &unk_1EF25BD68;
  *(this + 1) = a2;
  *(this + 3) = -1;
  *(this + 8) = 0;
  *(this + 5) = -1;
  *(this + 6) = -1;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 104) = 0u;
  v3 = (this + 104);
  *(this + 56) = 0u;
  v4 = (this + 56);
  *(this + 232) = 0u;
  *(this + 35) = this + 248;
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 47) = this + 312;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 24) = 0u;
  *(this + 2) = *(a2 + 1);
  v5 = TRunGlue::length(a2);
  std::vector<unsigned int>::reserve(v4, v5);
  std::vector<long>::reserve(this + 10, v5);
  std::vector<unsigned int>::reserve(v3, v5);
  std::vector<std::pair<long,unsigned int const*>>::reserve(this + 16, v5);
}

void *std::vector<long>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::allocator<long>::allocate_at_least[abi:fn200100](result, a2);
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  return result;
}

void *std::vector<std::pair<long,unsigned int const*>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::allocator<std::pair<long,unsigned int const*>>::allocate_at_least[abi:fn200100](result, a2);
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  return result;
}

void OpenTypeReorderingOutput::~OpenTypeReorderingOutput(OpenTypeReorderingOutput *this)
{
  *this = &unk_1EF25BD68;
  v2 = *(this + 51);
  if (v2)
  {
    *(this + 52) = v2;
    operator delete(v2);
  }

  v3 = *(this + 48);
  if (v3)
  {
    *(this + 49) = v3;
    operator delete(v3);
  }

  v11 = (this + 288);
  std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&v11);
  v11 = (this + 224);
  std::vector<unsigned int,TInlineBufferAllocator<unsigned int,8ul>>::__destroy_vector::operator()[abi:fn200100](&v11);
  v4 = *(this + 25);
  if (v4)
  {
    *(this + 26) = v4;
    operator delete(v4);
  }

  v5 = *(this + 22);
  if (v5)
  {
    *(this + 23) = v5;
    operator delete(v5);
  }

  v6 = *(this + 19);
  if (v6)
  {
    *(this + 20) = v6;
    operator delete(v6);
  }

  v7 = *(this + 16);
  if (v7)
  {
    *(this + 17) = v7;
    operator delete(v7);
  }

  v8 = *(this + 13);
  if (v8)
  {
    *(this + 14) = v8;
    operator delete(v8);
  }

  v9 = *(this + 10);
  if (v9)
  {
    *(this + 11) = v9;
    operator delete(v9);
  }

  v10 = *(this + 7);
  if (v10)
  {
    *(this + 8) = v10;
    operator delete(v10);
  }
}

{
  OpenTypeReorderingOutput::~OpenTypeReorderingOutput(this);

  JUMPOUT(0x1865F22D0);
}

uint64_t OpenTypeReorderingOutput::finalizeOutput(OpenTypeReorderingOutput *this)
{
  v2 = *(this + 8) - *(this + 7);
  v3 = v2 >> 2;
  v5 = *(this + 28);
  v4 = *(this + 29);
  std::vector<unsigned short>::resize(this + 19, v2 >> 2);
  v6 = *(this + 22);
  v7 = *(this + 23);
  v8 = (v7 - v6) >> 2;
  if (v2 >> 2 <= v8)
  {
    if (v3 >= v8)
    {
      goto LABEL_14;
    }

    v14 = v6 + v2;
  }

  else
  {
    v9 = v3 - v8;
    v10 = *(this + 24);
    if (v9 > (v10 - v7) >> 2)
    {
      if (!(v3 >> 62))
      {
        v11 = v10 - v6;
        v12 = v11 >> 1;
        if (v11 >> 1 <= v3)
        {
          v12 = v2 >> 2;
        }

        if (v11 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v13 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        std::allocator<unsigned int>::allocate_at_least[abi:fn200100](this + 176, v13);
      }

      goto LABEL_26;
    }

    bzero(*(this + 23), 4 * v9);
    v14 = v7 + 4 * v9;
  }

  *(this + 23) = v14;
LABEL_14:
  std::vector<CGSize>::resize(this + 25, v3);
  if ((v4 - v5) >> 2 >= 1)
  {
    std::vector<unsigned short>::resize(this + 48, (v4 - v5) >> 2);
    std::vector<CGSize>::resize(this + 51, (v4 - v5) >> 2);
  }

  v15 = TRunGlue::length(*(this + 1));
  if (v15 < v3)
  {
    v3 = v15;
  }

  if (v3 >= 1)
  {
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v28 = *(this + 1);
      v29 = v17;
      v18 = TRunGlue::TGlyph::glyphID(&v28);
      v19 = *(this + 19);
      if (v17 >= (*(this + 20) - v19) >> 1)
      {
        break;
      }

      *(v19 + 2 * v17) = v18;
      GlyphProps = TRunGlue::GetGlyphProps(v28, v29);
      v21 = *(this + 22);
      if (v17 >= (*(this + 23) - v21) >> 2)
      {
        break;
      }

      *(v21 + 4 * v17) = GlyphProps;
      Advance = TRunGlue::GetAdvance(v28, v29);
      v24 = *(this + 25);
      if (v17 >= (*(this + 26) - v24) >> 4)
      {
        break;
      }

      v25 = v24 + v16;
      *v25 = Advance;
      *(v25 + 8) = v23;
      ++v17;
      v16 += 16;
      if (v3 == v17)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

LABEL_24:
  v26 = *(*(this + 1) + 496);
  GetGlyphsForLongCharacters(v26, *(this + 28), *(this + 48), (v4 - v5) >> 2);
  TFont::GetUnsummedAdvancesForGlyphs(v26, *(this + 48), *(this + 51), 2, (v4 - v5) >> 2, 0, 0);
  return (v4 - v5) >> 2;
}

uint64_t OpenTypeReorderingOutput::getInsertedIndex(OpenTypeReorderingOutput *this, int a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v8 = *(this + 28);
    v9 = *(this + 29);
    v10 = v9 - v8;
    v11 = (v9 - v8) >> 2;
    v12 = *(this + 30);
    if (v9 >= v12)
    {
      v14 = v11 + 1;
      if ((v11 + 1) >> 62)
      {
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v15 = v12 - v8;
      if (v15 >> 1 > v14)
      {
        v14 = v15 >> 1;
      }

      if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v16 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v16 = v14;
      }

      if (v16)
      {
        v17 = *(this + 35);
        v18 = v17 + 4 * v16;
        if (v18 > this + 280)
        {
          if (!(v16 >> 62))
          {
            operator new();
          }

LABEL_46:
          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        *(this + 35) = v18;
      }

      else
      {
        v17 = 0;
      }

      v19 = (v9 - v8) >> 2;
      v20 = (v17 + 4 * v11);
      v21 = v17 + 4 * v16;
      v22 = &v20[-v19];
      *v20 = a2;
      v13 = v20 + 1;
      memcpy(v22, v8, v10);
      v23 = *(this + 28);
      *(this + 28) = v22;
      *(this + 29) = v13;
      v24 = *(this + 30);
      *(this + 30) = v21;
      if (v23)
      {
        if (this + 248 > v23 || (v25 = (this + 280), this + 280 <= v23))
        {
          operator delete(v23);
        }

        else if (v24 == *v25)
        {
          *v25 = v23;
        }
      }
    }

    else
    {
      *v9 = a2;
      v13 = v9 + 4;
    }

    *(this + 29) = v13;
    v27 = *(this + 37);
    v26 = *(this + 38);
    if (v27 < v26)
    {
      *v27 = a3;
      v28 = v27 + 8;
LABEL_42:
      *(this + 37) = v28;
      return v11 | a4;
    }

    v29 = *(this + 36);
    v30 = v27 - v29;
    v31 = (v27 - v29) >> 3;
    v32 = v31 + 1;
    if ((v31 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v33 = v26 - v29;
    if (v33 >> 2 > v32)
    {
      v32 = v33 >> 2;
    }

    if (v33 >= 0x7FFFFFFFFFFFFFF8)
    {
      v34 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v34 = v32;
    }

    if (v34)
    {
      v35 = *(this + 47);
      v36 = v35 + 8 * v34;
      if (v36 > this + 376)
      {
        if (!(v34 >> 61))
        {
          operator new();
        }

        goto LABEL_46;
      }

      *(this + 47) = v36;
    }

    else
    {
      v35 = 0;
    }

    v37 = (v27 - v29) >> 3;
    v38 = (v35 + 8 * v31);
    v39 = v35 + 8 * v34;
    v40 = &v38[-v37];
    *v38 = a3;
    v28 = v38 + 1;
    memcpy(v40, v29, v30);
    v41 = *(this + 36);
    *(this + 36) = v40;
    *(this + 37) = v28;
    v42 = *(this + 38);
    *(this + 38) = v39;
    if (v41)
    {
      if (this + 312 > v41 || (v43 = (this + 376), this + 376 <= v41))
      {
        operator delete(v41);
      }

      else if (v42 == *v43)
      {
        *v43 = v41;
      }
    }

    goto LABEL_42;
  }

  return a3;
}

void *OpenTypeReorderingOutput::getGlyphID(void *this, unint64_t a2)
{
  v2 = this[10];
  if (a2 < (this[11] - v2) >> 3)
  {
    v3 = *(v2 + 8 * a2);
    if (v3 >> 61 && (v4 = v3 & 0x1FFFFFFFFFFFFFFFLL, (v3 & 0x1FFFFFFFFFFFFFFFLL) < (this[29] - this[28]) >> 2))
    {
      v5 = this[48];
      if (v4 < (this[49] - v5) >> 1)
      {
        v6 = (v5 + 2 * v4);
        return *v6;
      }
    }

    else
    {
      v7 = this[19];
      if (v3 < (this[20] - v7) >> 1)
      {
        v6 = (v7 + 2 * v3);
        return *v6;
      }
    }
  }

  __break(1u);
  return this;
}

void *OpenTypeReorderingOutput::getAdvance(void *this, unint64_t a2)
{
  v2 = this[10];
  if (a2 >= (this[11] - v2) >> 3)
  {
    goto LABEL_7;
  }

  v3 = *(v2 + 8 * a2);
  if (!(v3 >> 61) || (v3 & 0x1FFFFFFFFFFFFFFFLL) >= (this[29] - this[28]) >> 2)
  {
    if (v3 < (this[26] - this[25]) >> 4)
    {
      return this;
    }

    goto LABEL_7;
  }

  if ((v3 & 0x1FFFFFFFFFFFFFFFLL) >= (this[52] - this[51]) >> 4)
  {
LABEL_7:
    __break(1u);
  }

  return this;
}

void *OpenTypeReorderingOutput::getProps(void *this, unint64_t a2)
{
  v2 = this[10];
  if (a2 < (this[11] - v2) >> 3)
  {
    v3 = *(v2 + 8 * a2);
    v4 = v3 >> 61;
    if (v3 >> 61)
    {
      v6 = this[36];
      if ((v3 & 0x1FFFFFFFFFFFFFFFLL) < (this[37] - v6) >> 3)
      {
        v3 = *(v6 + 8 * v3);
      }

      LODWORD(v4) = 512;
      v5 = -129;
    }

    else
    {
      v5 = -1;
    }

    v7 = this[22];
    if (v3 < (this[23] - v7) >> 2)
    {
      return (*(v7 + 4 * v3) & v5 | v4);
    }
  }

  __break(1u);
  return this;
}

uint64_t OpenTypeReorderingOutput::reset(uint64_t this, uint64_t a2)
{
  ++*(this + 48);
  *(this + 24) = a2;
  *(this + 32) = 0;
  return this;
}

void std::vector<unsigned int,TInlineBufferAllocator<unsigned int,8ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    v3 = v1 + 7;
    if (v1 + 3 <= v2)
    {
      v4 = v3 >= v2;
      v5 = v3 == v2;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    if (!v5 && v4)
    {
      if (v1[2] == v1[7])
      {
        *v3 = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }
}

void OpenTypeShapingEngine::OpenTypeShapingEngine(OpenTypeShapingEngine *this, const TCharStream *a2, TRunGlue *a3)
{
  *this = &unk_1EF25BD90;
  *(this + 1) = a3;
  *(this + 2) = a2;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 22) = this + 56;
  *(this + 24) = 0;
  *(this + 23) = this + 192;
  *(this + 25) = 0;
  *(this + 26) = 0;
  v4 = (this + 208);
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 59) = this + 232;
  v5 = *(a3 + 5);
  if (v5 == -1)
  {
    TRunGlue::ComputeEndIndex(a3);
    v5 = *(a3 + 5);
    a2 = *(this + 2);
  }

  *(this + 60) = v5;
  *(this + 488) = 0;
  if (a2)
  {
    *(this + 488) = TRunGlue::FilterSurrogates(*(this + 1), a2, 0);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v7 = *(this + 1);
    v22 = *(this + 2);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v34 = 0;
    *&v33 = *(v22 + 16);
    v8 = TRunGlue::length(v7);
    std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::resize(this + 4, v8);
    std::vector<long,TInlineBufferAllocator<long,30ul>>::resize(v4, v8);
    v9 = *(this + 1);
    v10 = TRunGlue::length(v9);
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      while (1)
      {
        StringIndex = TRunGlue::GetStringIndex(v9, v12);
        v21 = StringIndex;
        if (*(this + 488) == 1)
        {
          v14 = StringIndex - *(this + 60);
          v15 = *(this + 24);
          if (!v15)
          {
LABEL_14:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v16 = v15;
              v17 = v15[4];
              if (v17 <= v14)
              {
                break;
              }

              v15 = *v16;
              if (!*v16)
              {
                goto LABEL_14;
              }
            }

            if (v17 >= v14)
            {
              break;
            }

            v15 = v16[1];
            if (!v15)
            {
              goto LABEL_14;
            }
          }

          v16[5] = v12;
        }

        v18 = *(this + 26);
        if (v12 >= (*(this + 27) - v18) >> 3)
        {
          break;
        }

        *(v18 + 8 * v12) = v12;
        FullChar = TCharStreamIterator::GetFullChar(&v22, &v21, 0);
        v20 = *(this + 4);
        if (v12 >= (*(this + 5) - v20) >> 2)
        {
          break;
        }

        *(v20 + 4 * v12++) = FullChar;
        if (v12 == v11)
        {
          return;
        }
      }

      __break(1u);
    }
  }
}

void OpenTypeShapingEngine::~OpenTypeShapingEngine(OpenTypeShapingEngine *this)
{
  *this = &unk_1EF25BD90;
  v2 = (this + 208);
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v2);
  std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::destroy(this + 184, *(this + 24));
  v2 = (this + 32);
  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v2);
}

uint64_t OpenTypeShapingEngine::ApplyScriptShaping(TRunGlue **this, unsigned int *a2)
{
  v2 = this;
  v3 = this[1];
  if ((*(v3 + 6) & 0x80000000) != 0 || *(v2 + 4) == *(v2 + 5) || *(v2 + 26) == *(v2 + 27))
  {
    v9 = 0;
    return v9 & 1;
  }

  v5 = TRunGlue::length(v3);
  v6 = *(*(v2 + 1) + 104);
  *(v2 + 3) = v6;
  std::vector<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul>>::resize(v6, v5);
  v62 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v2 + 16))(&v62, v2, a2);
  OpenTypeReorderingOutput::finalizeOutput(v62);
  v7 = v62;
  v8 = (*(v62 + 8) - *(v62 + 7)) >> 2;
  if (v8 < v5)
  {
    goto LABEL_71;
  }

  if (v8 < 1)
  {
    v9 = 0;
    goto LABEL_57;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v60 = (*(v62 + 8) - *(v62 + 7)) >> 2;
  v61 = v5;
  while (1)
  {
    v12 = *(v7 + 10);
    if (v11 >= (*(v7 + 11) - v12) >> 3)
    {
      v13 = -1;
    }

    else
    {
      v13 = *(v12 + 8 * v11);
      if (v13 >> 61)
      {
        v15 = v7 + 288;
        v14 = *(v7 + 36);
        if ((v13 & 0x1FFFFFFFFFFFFFFFLL) < (*(v15 + 1) - v14) >> 3)
        {
          v13 = *(v14 + 8 * v13);
        }
      }
    }

    if (v13 >= v5)
    {
      v2 = *(v2 + 1);
      if (v9)
      {
        v52 = *(v2 + 18);
        if (v52)
        {
          *(v52 + 256) = 2;
        }

        v9 = 1;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_64;
    }

    v16 = *(v2 + 26);
    if (v13 >= (*(v2 + 27) - v16) >> 3)
    {
      break;
    }

    v17 = *(v16 + 8 * v13);
    StringIndex = TRunGlue::GetStringIndex(*(v2 + 1), v17);
    v19 = *(v62 + 10);
    if (v11 >= (*(v62 + 11) - v19) >> 3)
    {
      break;
    }

    v20 = StringIndex;
    v21 = *(v19 + 8 * v11);
    if ((v21 & 0x8000000000000000) != 0)
    {
      GlyphProps = TRunGlue::GetGlyphProps(*(v2 + 1), v17);
      v25 = *(v62 + 10);
      if (v11 >= (*(v62 + 11) - v25) >> 3)
      {
        break;
      }

      v26 = GlyphProps;
      v27 = *(v25 + 8 * v11);
      v63.location = v11;
      v63.length = 1;
      TRunGlue::InsertGlyphs(*(v2 + 1), v63);
      v28 = *(v2 + 1);
      v29 = *(v28 + 18);
      if (v29)
      {
        *(v29 + 256) = 2;
      }

      v30 = v10++;
      if ((v27 & 0x2000000000000000) != 0)
      {
        if (v11 <= 1)
        {
          v31 = 1;
        }

        else
        {
          v31 = v11;
        }

        v32 = v31 - 1;
        v8 = v60;
        if ((TRunGlue::GetGlyphProps(v28, v31 - 1) & 0x300) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v33 = v10 + v5;
        v32 = v11;
        if ((v11 + 1) >= v33)
        {
          v32 = v30 + v61;
        }

        else
        {
          do
          {
            v34 = TRunGlue::GetStringIndex(*(v2 + 1), v32 + 1);
            v35 = v32 + 2;
            ++v32;
          }

          while (v34 != v20 && v35 < v33);
          v28 = *(v2 + 1);
        }

        v8 = v60;
LABEL_34:
        TRunGlue::SetGlyphProps(v28, v32, v26 | 0x80);
      }

      v22 = v11 + 1;
      v5 = v61;
      v23 = v10 + v61;
      goto LABEL_36;
    }

    if (v17 <= v11)
    {
      goto LABEL_37;
    }

    TRunGlue::Rotate(*(v2 + 1), v11, v17, v17 + 1, 0);
    v22 = v11 + 1;
    v23 = v17 + 1;
LABEL_36:
    OpenTypeShapingEngine::AdjustIndices(v2, v22, v23);
    v9 = 1;
LABEL_37:
    v37 = *(v2 + 1);
    if (!(v21 >> 61))
    {
      if (v11 == v17)
      {
        TRunGlue::ClearGlyphCombiningMark(*(v2 + 1), v11);
      }

      goto LABEL_48;
    }

    v38 = TRunGlue::GetGlyphProps(*(v2 + 1), v11);
    if ((v38 & 0x80) != 0)
    {
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

      v39 = v62;
      v41 = *(v62 + 7);
      if (v11 >= (*(v62 + 8) - v41) >> 2)
      {
        break;
      }

      if (*(v41 + 4 * v11) != 9676)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v39 = v62;
    }

    Props = OpenTypeReorderingOutput::getProps(v39, v11);
    TRunGlue::SetGlyphProps(v37, v11, Props | v38 & 0xFF0000);
LABEL_46:
    TRunGlue::SetStringIndex(v37, v11, v20);
    v42 = *(v62 + 7);
    if (v11 >= (*(v62 + 8) - v42) >> 2)
    {
      break;
    }

    TRunGlue::SetAttachmentCount(v37, v11, (*(v42 + 4 * v11) - 0x10000) < 0x100000);
    GlyphID = OpenTypeReorderingOutput::getGlyphID(v62, v11);
    TRunGlue::SetGlyphID<true>(v37, v11, GlyphID);
    OpenTypeReorderingOutput::getAdvance(v62, v11);
    TRunGlue::SetAdvance(v37, v11, v64);
    TRunGlue::SetOrigin(v37, v11, *MEMORY[0x1E695EFF8]);
LABEL_48:
    v7 = v62;
    v44 = *(v62 + 16);
    if (v11 >= (*(v62 + 17) - v44) >> 4)
    {
      break;
    }

    v45 = **(v37 + 13);
    if (v11 >= (*(*(v37 + 13) + 8) - v45) >> 4)
    {
      break;
    }

    v46 = (v44 + 16 * v11);
    v47 = *v46;
    v48 = v45 + 16 * v11;
    *v48 = v46[1];
    v49 = *(v7 + 13);
    if (v11 >= (*(v7 + 14) - v49) >> 2)
    {
      break;
    }

    *(v48 + 8) = *(v49 + 4 * v11);
    *(v48 + 12) = v47;
    if (++v11 == v8)
    {
      goto LABEL_57;
    }
  }

  while (1)
  {
    __break(1u);
LABEL_71:
    v9 = 0;
    v11 = 0;
    v2 = *(v2 + 1);
LABEL_64:
    v53 = TRunGlue::length(v2);
    v54 = v53 - v11;
    if (v53 <= v11)
    {
      break;
    }

    v55 = **(v2 + 13);
    v56 = (*(*(v2 + 13) + 8) - v55) >> 4;
    v57 = (v55 + 16 * v11);
    v58 = v56 >= v11;
    v59 = v56 - v11;
    if (!v58)
    {
      v59 = 0;
    }

    while (v59)
    {
      *v57 = 0;
      v57 += 2;
      --v59;
      if (!--v54)
      {
        goto LABEL_57;
      }
    }
  }

LABEL_57:
  v51 = v62;
  v62 = 0;
  if (v51)
  {
    (*(*v51 + 8))(v51);
  }

  return v9 & 1;
}

uint64_t OpenTypeShapingEngine::AdjustIndices(uint64_t this, int64_t a2, int64_t a3)
{
  if (a2 < a3)
  {
    v4 = a2;
    v5 = this;
    v6 = (this + 192);
    while (1)
    {
      this = TRunGlue::GetStringIndex(*(v5 + 8), v4);
      v7 = this - *(v5 + 480);
      if (*(v5 + 488) == 1)
      {
        v8 = *v6;
        if (!*v6)
        {
LABEL_11:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v9 = v8;
            v10 = v8[4];
            if (v10 <= v7)
            {
              break;
            }

            v8 = *v9;
            if (!*v9)
            {
              goto LABEL_11;
            }
          }

          if (v10 >= v7)
          {
            break;
          }

          v8 = v9[1];
          if (!v8)
          {
            goto LABEL_11;
          }
        }

        v7 = v9[5];
      }

      v11 = *(v5 + 208);
      if (v7 >= ((*(v5 + 216) - v11) >> 3))
      {
        break;
      }

      ++*(v11 + 8 * v7);
      if (++v4 == a3)
      {
        return this;
      }
    }

    __break(1u);
  }

  return this;
}

void OpenTypeShapingEngine::InsertDottedCircle(OpenTypeShapingEngine *this, uint64_t a2, OpenTypeReorderingOutput *a3, const unsigned int *a4, int a5, int a6)
{
  if (a2)
  {
    v6 = *(this + 4);
    if (a2 - 1 >= ((*(this + 5) - v6) >> 2))
    {
      __break(1u);
      return;
    }

    if (*(v6 + 4 * (a2 - 1)) == 9676)
    {
      return;
    }
  }

  if (a6)
  {
    v7 = 0xA000000000000000;
  }

  else
  {
    v7 = 0x8000000000000000;
  }

  OpenTypeReorderingOutput::writeChar(a3, 9676, a2, a4, a5, v7);
}

uint64_t OpenTypeShapingEngine::SetSafeToBreakAfterEachSyllable(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    v2 = this;
    if (*(*(this + 8) + 144))
    {
      v3 = *v1;
      if (*v1)
      {
        v4 = v1[1];
        v5 = (v4 - v3) >> 4;
        if (v5 < 1)
        {
          v6.location = 0;
        }

        else
        {
          v6.location = 0;
          v7 = 0;
          for (i = 0; i < v5; v7 = i)
          {
            v6.length = v7 - v6.location;
            v9 = (v3 + 28 + 16 * v7);
            while (++i < v5)
            {
              v10 = *v9;
              v9 += 4;
              ++v6.length;
              if (v10 != *(v3 + 16 * v7 + 12))
              {
                this = TRunGlue::ClearSafeToBreakAfter(*(v2 + 8), v6);
                v6.location = i;
                goto LABEL_11;
              }
            }

            i = v7 + 1;
LABEL_11:
            ;
          }
        }

        if (v4 != v3)
        {
          v11 = *(v2 + 8);

          v6.length = v5 - v6.location;
          return TRunGlue::ClearSafeToBreakAfter(v11, v6);
        }
      }
    }
  }

  return this;
}

void OpenTypeClassTable::AddShapingGlyphs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v18 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 8);
  v7 = *(a1 + 10) - v6;
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[2] = v8;
  v16[3] = v8;
  v16[0] = v8;
  v16[1] = v8;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v17 = v16;
  if (v7 != -1)
  {
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__vallocate[abi:fn200100](&v13, v7 + 1);
    v9 = v14;
    bzero(v14, 2 * v7 + 2);
    v14 = &v9[2 * v7 + 2];
    v5 = v13;
  }

  (*(**(a2 + 408) + 680))(*(a2 + 408), v6, v7 + 1, v5);
  v10 = v13;
  v11 = v14;
  while (v10 != v11)
  {
    if (*v10)
    {
      std::function<void ()(unsigned short,unsigned short)>::operator()(a3, *v10, *v10);
    }

    ++v10;
  }

  v12 = &v13;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v12);
}

void TRubyAnnotation::TRubyAnnotation(TRubyAnnotation *this, CTRubyAlignment a2, CTRubyOverhang a3, CTRubyPosition a4, __CFString *a5, id a6)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 1) = 0x3FE0000000000000;
  *(this + 48) = a4;
  *(this + 7) = 0;
  v8 = 0;
  *(this + 8) = a6;
  *(this + 36) = 256;
  do
  {
    if (v8 == *(this + 48))
    {
      v9 = a5;
    }

    else
    {
      v9 = 0;
    }

    *(this + v8++ + 2) = v9;
  }

  while (v8 != 4);
  TRubyAnnotation::SetExtrasForTextAttributes(this);
}

void TRubyAnnotation::SetExtrasForTextAttributes(atomic_ullong *this)
{
  v2 = atomic_load_explicit(this + 8, memory_order_acquire);
  if (v2)
  {
    v3 = v2;
    Value = CFDictionaryGetValue(v2, @"CTRubyAnnotationSizeFactor");

    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberDoubleType, this + 1);
    }
  }

  else
  {
  }

  v5 = atomic_load_explicit(this + 8, memory_order_acquire);
  if (v5)
  {
    v6 = v5;
    v7 = CFDictionaryGetValue(v5, @"CTRubyAnnotationScaleToFit");

    if (v7)
    {
      *(this + 72) = CFBooleanGetValue(v7) != 0;
    }
  }

  else
  {
  }

  v8 = atomic_load_explicit(this + 8, memory_order_acquire);
  if (v8)
  {
    v9 = v8;
    v10 = CFDictionaryGetValue(v8, @"CTRubyAnnotationDrawBaseText");

    if (v10)
    {
      *(this + 73) = CFBooleanGetValue(v10) != 0;
    }
  }

  else
  {
  }
}

void TRubyAnnotation::TRubyAnnotation(TRubyAnnotation *this, CTRubyAlignment a2, CTRubyOverhang a3, CTRubyPosition a4, id a5)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 1) = 0x3FE0000000000000;
  *(this + 48) = a4;
  *(this + 7) = a5;
  *(this + 8) = CFAttributedStringGetAttributes(a5, 0, 0);
  *(this + 36) = 256;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  TRubyAnnotation::SetExtrasForTextAttributes(this);
}

void TRubyAnnotation::TRubyAnnotation(TRubyAnnotation *this, CFTypeRef cf)
{
  *this = 0;
  *(this + 1) = 0x3FE0000000000000;
  *(this + 48) = 0;
  *(this + 7) = 0;
  v4 = (this + 56);
  *(this + 8) = 0;
  *(this + 36) = 256;
  v5 = CFGetTypeID(cf);
  if (v5 == CTRubyAnnotationGetTypeID())
  {
    v6 = *(cf + 5);
    *this = *v6;
    *(this + 1) = *(v6 + 8);
    *(this + 48) = *(v6 + 48);
    TCFRef<__CTFont const*>::Retain(v4, atomic_load_explicit((v6 + 56), memory_order_acquire));
    TCFRef<__CTFont const*>::Retain(this + 8, atomic_load_explicit((v6 + 64), memory_order_acquire));
    v7 = 0;
    *(this + 36) = *(v6 + 72);
    v8 = v6 + 16;
    do
    {
      *(this + v7 + 16) = *(v8 + v7);
      v7 += 8;
    }

    while (v7 != 32);
  }

  else
  {
    *(this + 1) = 0u;
    *(this + 2) = 0u;
  }
}

void TRubyAnnotation::TRubyAnnotation(TRubyAnnotation *this, const TRubyAnnotation *a2)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 48) = *(a2 + 48);
  *(this + 7) = atomic_load_explicit(a2 + 7, memory_order_acquire);
  *(this + 8) = atomic_load_explicit(a2 + 8, memory_order_acquire);
  *(this + 36) = *(a2 + 36);
  for (i = 16; i != 48; i += 8)
  {
    *(this + i) = *(a2 + i);
  }
}

void TRubyAnnotation::~TRubyAnnotation(id *this)
{
  for (i = 2; i != 6; ++i)
  {
  }
}

CFHashCode TRubyAnnotation::Hash(TRubyAnnotation *this)
{
  v2 = 0;
  v4 = *(this + 1) + 2654435769;
  if (*(this + 1) == 0.0)
  {
    v4 = 2654435769;
  }

  v3 = (*(this + 1) + ((*this + 2654435769) << 6) + ((*this + 2654435769u) >> 2) + 2654435769u) ^ (*this + 2654435769);
  v5 = (v4 + (v3 << 6) + (v3 >> 2)) ^ v3;
  v6 = this + 16;
  do
  {
    v7 = *&v6[v2];
    if (v7)
    {
      v5 ^= (v5 << 6) + 2654435769u + (v5 >> 2) + CFHash(v7);
    }

    v2 += 8;
  }

  while (v2 != 32);
  v8 = (this + 56);
  if (atomic_load_explicit(this + 7, memory_order_acquire) || (v8 = (this + 64), atomic_load_explicit(this + 8, memory_order_acquire)))
  {
    v9 = ((v5 << 6) + 2654435769u + (v5 >> 2) + *(this + 48)) ^ v5;
    return (CFHash(atomic_load_explicit(v8, memory_order_acquire)) + 2654435769u + (v9 << 6) + (v9 >> 2)) ^ v9;
  }

  return v5;
}

void ThaiShapingEngine::SetFeatures(ThaiShapingEngine *this, unsigned int *a2)
{
  (*(*this + 24))(this);
  *a2 = 0;
  operator new();
}

void GetThaiClassTable(void)
{
  {
    qword_1EA86BA78 = 243207680;
    qword_1EA86BA80 = &thaiCharClasses;
    GetThaiClassTable(void)::thaiClassTable = &unk_1EF25BDE8;
    dword_1EA86BA88 = 238161485;
  }
}

void ThaiShapingEngine::~ThaiShapingEngine(ThaiShapingEngine *this)
{
  OpenTypeShapingEngine::~OpenTypeShapingEngine(this);

  JUMPOUT(0x1865F22D0);
}

unint64_t CTCreatePathMaskedByLines(const CGPath *a1, const __CFArray *a2, uint64_t a3, CGFloat a4)
{
  if (!a3)
  {
    return 0;
  }

  CopyByStrokingPath = CGPathCreateCopyByStrokingPath(a1, 0, a4, kCGLineCapButt, kCGLineJoinMiter, 10.0);
  Mutable = CGPathCreateMutable();
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v10 = Count;
    v11 = 0;
    v12 = (a3 + 8);
    do
    {
      v13 = *(CFArrayGetValueAtIndex(a2, v11) + 5);
      v14 = *(v12 - 1);
      v15 = *v12;
      *&v16 = -1;
      *(&v16 + 1) = -1;
      *&m.c = v16;
      *&m.tx = v16;
      *&m.a = v16;
      CGAffineTransformMakeTranslation(&m, v14, v15);
      TLine::CopyPath(v13, &v19);
      CGPathAddPath(Mutable, &m, atomic_load_explicit(&v19, memory_order_acquire));

      ++v11;
      v12 += 2;
    }

    while (v10 != v11);
  }

  m.a = -3.72066208e-103;
  CreateMaskedPath(CopyByStrokingPath, Mutable, a4, 0, 0, &m);
  v17 = atomic_exchange(&m, 0);

  return v17;
}

void GetLaoClassTable(void)
{
  {
    qword_1EA86B978 = 251596416;
    qword_1EA86B980 = &laoCharClasses;
    GetLaoClassTable(void)::laoClassTable = &unk_1EF25BDE8;
    dword_1EA86B988 = 246550221;
  }
}

void LaoShapingEngine::~LaoShapingEngine(LaoShapingEngine *this)
{
  OpenTypeShapingEngine::~OpenTypeShapingEngine(this);

  JUMPOUT(0x1865F22D0);
}

double KhmerShapingEngine::GetPresentationFeatures(KhmerShapingEngine *this, char *a2, uint64_t (**a3)(KhmerShapingEngine *this))
{
  strcpy(a2, "serpswlbsvbastspgilc");
  *&result = 1668049255;
  a2[21] = 0;
  *(a2 + 11) = 0;
  *a3 = KhmerShapingEngine::IsRequiredPresentationFeature;
  return result;
}

void KhmerShapingEngine::SetFeatures(KhmerShapingEngine *this, char *a2)
{
  (*(*this + 24))(this);
  strcpy(a2, "ferpfwlbfvbaftsprafc");
  a2[21] = 0;
  *(a2 + 11) = 0;
  operator new();
}

void GetKhmerClassTable(void)
{
  {
    qword_1EA86BCD0 = 402593664;
    qword_1EA86BCD8 = &khmerCharClasses;
    GetKhmerClassTable(void)::khmerClassTable = &unk_1EF25BE68;
  }
}

void KhmerShapingEngine::~KhmerShapingEngine(KhmerShapingEngine *this)
{
  OpenTypeShapingEngine::~OpenTypeShapingEngine(this);

  JUMPOUT(0x1865F22D0);
}

uint64_t TPathProcessor::SortRangeInfo(TPathProcessor *this, double *a2, const void *a3)
{
  if (*this < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *this > *a2;
  }
}

void TPathProcessor::SlicePathH(TPathProcessor *this, BOOL a2, double a3, double a4, const TClippingPathInfo *a5)
{
  v6 = *this;
  if (v6)
  {
    v8 = a4;
    v9 = a3;
    if (a3 >= a4)
    {
      a3 = a4;
      a4 = v9;
    }

    *(this + 2) = a3;
    *(this + 3) = a4;
    *(this + 11) = 0;
    *(this + 4) = 0;
    *(this + 10) = *(this + 1);
    CGPathApply(v6, this, TPathProcessor::ProcessPathElementApplier);
    v11 = *a5;
    if (*a5 >= 1)
    {
      v12 = 0;
      do
      {
        ClippingInfoAtIndex = TClippingPathInfo::GetClippingInfoAtIndex(a5, v12, this + 10, 0);
        CGPathApply(ClippingInfoAtIndex, this, TPathProcessor::ProcessPathElementApplier);
        ++v12;
      }

      while (v11 != v12);
    }

    v14 = *(this + 11);
    if (v14)
    {
      qsort(*(this + 5), v14, 0x10uLL, TPathProcessor::SortRangeInfo);
      v15 = *(this + 11);
      if (v15 < 2)
      {
        goto LABEL_28;
      }

      v16 = 0;
      v17 = *(this + 5);
      v18 = &v17[2 * v15];
      v19 = v17 + 2;
      v20 = v17[1];
      v21 = v17;
      do
      {
        if (v20 >= *v19)
        {
          v22 = v19[1];
          if (v20 >= v22)
          {
            v22 = v20;
          }
        }

        else
        {
          *v21 = v20;
          v21[1] = *v19;
          v22 = v19[1];
          v21 += 2;
          ++v16;
        }

        v19 += 2;
        v20 = v22;
      }

      while (v19 < v18);
      if (v16)
      {
        v23 = 0;
        v24 = 0;
        v25 = (v9 + v8) * 0.5;
        v26 = v17;
        do
        {
          v27 = (*v17 + v17[1]) * 0.5;
          v31.x = v27;
          v31.y = v25;
          if (CGPathContainsPoint(*this, 0, v31, a2))
          {
            if (v11 < 1)
            {
LABEL_23:
              if (v17 != v26)
              {
                *v26 = *v17;
              }

              v26 += 2;
              ++v24;
            }

            else
            {
              v28 = 0;
              while (1)
              {
                v30 = kCTFramePathFillEvenOdd;
                v29 = TClippingPathInfo::GetClippingInfoAtIndex(a5, v28, 0, &v30);
                if (v29)
                {
                  v32.x = v27;
                  v32.y = v25;
                  if (CGPathContainsPoint(v29, 0, v32, v30 == kCTFramePathFillEvenOdd))
                  {
                    break;
                  }
                }

                if (v11 == ++v28)
                {
                  goto LABEL_23;
                }
              }
            }
          }

          v17 += 2;
          ++v23;
        }

        while (v23 != v16);
      }

      else
      {
LABEL_28:
        v24 = 0;
      }

      *(this + 4) = v24;
    }
  }
}

double *TPathProcessor::ProcessPathElementApplier(CGPoint *this, void *a2, CGPathElement *a3)
{
  v4 = *a2;
  v5 = a2[1];
  if (*a2 <= 1)
  {
    if (!v4)
    {
      this[4] = *v5;
      this[3] = *v5;
      goto LABEL_13;
    }

    if (v4 != 1)
    {
      goto LABEL_13;
    }

    TPathProcessor::RemoveRangeForLine(this, this[4], *v5, a2, a3);
    v6 = *v5;
LABEL_11:
    this[4] = v6;
    goto LABEL_13;
  }

  switch(v4)
  {
    case 2:
      v12 = this[4];
      y = v5->y;
      v15 = v5[1];
      v13.x = (v12.x + v5->x * 2.0) / 3.0;
      v13.y = (v12.y + y * 2.0) / 3.0;
      v14.x = (v15.x + v5->x * 2.0) / 3.0;
      v14.y = (v15.y + y * 2.0) / 3.0;
      TPathProcessor::RemoveRangeForCurve(&this->x, v12, v13, v14, v15, a2, a3);
      v6 = v5[1];
      goto LABEL_11;
    case 3:
      TPathProcessor::RemoveRangeForCurve(&this->x, this[4], *v5, v5[1], v5[2], a2, a3);
      v6 = v5[2];
      goto LABEL_11;
    case 4:
      TPathProcessor::RemoveRangeForLine(this, this[4], this[3], a2, a3);
      break;
  }

LABEL_13:
  x = this[4].x;
  v9 = this[4].y;

  return TPathProcessor::RemoveRangeForPoint(&this->x, *&x);
}

void *TClippingPathInfo::GetClippingInfoAtIndex(void *this, unint64_t a2, double *a3, CTFramePathFillRule *a4)
{
  if ((a2 & 0x8000000000000000) != 0 || *this <= a2)
  {
    return 0;
  }

  if (a3)
  {
    v4 = this[10];
    if (a2 >= (this[11] - v4) >> 3)
    {
      goto LABEL_12;
    }

    *a3 = *(v4 + 8 * a2);
  }

  if (!a4)
  {
    goto LABEL_9;
  }

  v5 = this[19];
  if (a2 < (this[20] - v5) >> 2)
  {
    *a4 = *(v5 + 4 * a2);
LABEL_9:
    v6 = this[1];
    if (a2 < (this[2] - v6) >> 3)
    {
      return atomic_load_explicit((v6 + 8 * a2), memory_order_acquire);
    }
  }

LABEL_12:
  __break(1u);
  return this;
}

uint64_t TPathProcessor::RemoveRangeForLine(TPathProcessor *this, CGPoint a2, CGPoint a3, uint64_t a4, double *a5)
{
  y = a3.y;
  x = a3.x;
  v7 = a2.y;
  v8 = a2.x;
  v35 = -1.79769313e308;
  *&v36 = 1.79769313e308;
  v10 = *(this + 10);
  if (v10 == 0.0)
  {
    v11 = v8;
    result = TPathProcessor::CalculateExcludeRange(&v36, a2, a3, *(this + 2), *(this + 3), &v35, a5);
    if ((result & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    v13 = v10 * 0.5;
    v14 = sqrt((a3.y - a2.y) * (a3.y - a2.y) + (a3.x - v8) * (a3.x - v8));
    v15 = (y - a2.y) * v13 / v14;
    v16 = -((a3.x - v8) * v13) / v14;
    v38.x = v8 + v15;
    v38.y = a2.y + v16;
    v31 = v7 + v16;
    v32 = v8 + v15;
    v42.x = a3.x + v15;
    v42.y = y + v16;
    v33 = y + v16;
    v34 = x + v15;
    v17 = *(this + 2);
    v18 = *(this + 3);
    v19 = TPathProcessor::CalculateExcludeRange(&v36, v38, v42, v17, v18, &v35, a5);
    v20 = v8 - v15;
    v21 = v7 - v16;
    v22 = x - v15;
    v23 = y - v16;
    v39.x = v20;
    v39.y = v21;
    v43.x = v22;
    v43.y = v23;
    v25 = TPathProcessor::CalculateExcludeRange(&v36, v39, v43, v17, v18, &v35, v24);
    v40.x = v20;
    v40.y = v21;
    v44.y = v31;
    v44.x = v32;
    v27 = TPathProcessor::CalculateExcludeRange(&v36, v40, v44, v17, v18, &v35, v26);
    v41.x = v22;
    v41.y = v23;
    v45.y = v33;
    v45.x = v34;
    result = TPathProcessor::CalculateExcludeRange(&v36, v41, v45, v17, v18, &v35, v28);
    if ((v19 & 1) == 0 && (v25 & 1) == 0 && (v27 & 1) == 0 && !result)
    {
      return result;
    }
  }

  v30 = v35;
  v29 = *&v36;

  return TPathProcessor::RemoveRange(this, v29, v30);
}

double *TPathProcessor::RemoveRangeForCurve(double *this, CGPoint a2, CGPoint a3, CGPoint a4, CGPoint a5, uint64_t a6, double *a7)
{
  y = a2.y;
  x = a2.x;
  if (a5.y >= a4.y)
  {
    v9 = a4.y;
  }

  else
  {
    v9 = a5.y;
  }

  if (a3.y < a2.y)
  {
    a2.y = a3.y;
  }

  if (v9 < a2.y)
  {
    a2.y = v9;
  }

  v10 = this[10] * 0.5;
  if (a2.y - v10 <= this[3])
  {
    v11 = this;
    if (y >= a3.y)
    {
      v12 = y;
    }

    else
    {
      v12 = a3.y;
    }

    if (a4.y >= a5.y)
    {
      v13 = a4.y;
    }

    else
    {
      v13 = a5.y;
    }

    if (v12 < v13)
    {
      v12 = v13;
    }

    if (v12 + v10 >= this[2])
    {
      v14 = a3.x;
      v15.f64[0] = y;
      v15.f64[1] = x;
      v16 = vsubq_f64(*&a3.y, v15);
      v17 = a4.x;
      v50 = a5.y;
      v18.f64[0] = a5.y;
      v18.f64[1] = a5.x;
      v19 = vsubq_f64(*&a4.y, *&a3.y);
      v20 = vsubq_f64(v19, v16);
      v21 = vsubq_f64(vsubq_f64(v18, *&a4.y), v19);
      v22 = vzip1q_s64(v20, v21);
      v23 = vzip2q_s64(v20, v21);
      v24 = vmlaq_f64(vmulq_f64(v22, v22), v23, v23);
      if (v24.f64[0] <= v24.f64[1])
      {
        v24.f64[0] = v24.f64[1];
      }

      v25 = v24.f64[0] * 9.0 * 0.0625;
      v49 = a5.x;
      v54 = x;
      if (v25 > 0.25)
      {
        v26 = vsubq_f64(v21, v20);
        __asm
        {
          FMOV            V6.2D, #3.0
          FMOV            V7.2D, #6.0
        }

        v33 = vmulq_f64(v26, _Q7);
        v34 = vmlaq_f64(v26, _Q6, vaddq_f64(v16, v20));
        v35 = vmulq_f64(vaddq_f64(v20, v26), _Q7);
        v36 = 1;
        __asm
        {
          FMOV            V3.2D, #0.125
          FMOV            V4.2D, #0.25
          FMOV            V5.2D, #0.5
        }

        do
        {
          v40 = v36;
          v33 = vmulq_f64(v33, _Q3);
          v35 = vsubq_f64(vmulq_f64(v35, _Q4), v33);
          v34 = vsubq_f64(vmulq_f64(v34, _Q5), vmulq_f64(v35, _Q5));
          v36 *= 2;
          v25 = v25 * 0.0625;
        }

        while (v25 > 0.25 && v36 <= 0x10000);
        if (v36 >= 2)
        {
          v41 = (2 * v40) | 1;
          do
          {
            v42 = vaddq_f64(v15, v34);
            v52 = vaddq_f64(v34, v35);
            v53 = v33;
            v51 = vaddq_f64(v33, v35);
            v43 = v15.f64[1];
            v44 = v42.f64[1];
            v54 = v42.f64[1];
            v55 = v42;
            TPathProcessor::RemoveRangeForLine(v11, *(&v15 - 8), *(&v42 - 8), a6, a7);
            v57.x = v54;
            v57.y = v55.f64[0];
            TPathProcessor::RemoveRangeForPoint(v11, v57);
            v35 = v51;
            v34 = v52;
            v33 = v53;
            y = v55.f64[0];
            --v41;
            v15 = v55;
          }

          while (v41 > 2);
        }
      }

      v45 = v54;
      v46 = y;
      v47 = v49;
      v48 = v50;

      return TPathProcessor::RemoveRangeForLine(v11, *&v45, *&v47, a6, a7);
    }
  }

  return this;
}

double *TPathProcessor::RemoveRangeForPoint(double *this, CGPoint a2)
{
  v2 = this[10];
  if (v2 <= 0.0)
  {
    return this;
  }

  v3 = v2 * 0.5;
  v4 = this[2];
  if (a2.y >= v4 && a2.y <= this[3])
  {
    return TPathProcessor::RemoveRange(this, a2.x - v3, a2.x + v3);
  }

  v5 = v4 - a2.y;
  v6 = a2.y < v4 && v5 < v3;
  if (v6 || ((v7 = this[3], v5 = a2.y - v7, a2.y > v7) ? (v8 = v5 < v3) : (v8 = 0), v8))
  {
    v3 = sqrt(v3 * v3 - v5 * v5);
    return TPathProcessor::RemoveRange(this, a2.x - v3, a2.x + v3);
  }

  return this;
}

uint64_t TPathProcessor::CalculateExcludeRange(TPathProcessor *this, CGPoint a2, CGPoint a3, CGFloat a4, CGFloat a5, double *a6, double *a7)
{
  if (a2.y <= a4 && a3.y <= a4)
  {
    return 0;
  }

  if (a2.y >= a5 && a3.y >= a5)
  {
    return 0;
  }

  if (a2.y <= a3.y)
  {
    x = a3.x;
    y = a3.y;
    v11 = a2.x;
    a3.y = a2.y;
  }

  else
  {
    x = a2.x;
    y = a2.y;
    v11 = a3.x;
  }

  if (a3.y < a4 || a3.y > a5 || y < a4 || y > a5)
  {
    if ((*&a3.y & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v15 = x - v11;
      v16 = y - a3.y;
      v13 = v11;
      if (a3.y < a4)
      {
        v13 = v11 + v15 * (a4 - a3.y) / v16;
      }

      if (y > a5)
      {
        v14 = v11 + v15 * (a5 - a3.y) / v16;
        goto LABEL_31;
      }
    }

    else
    {
      if ((*&y & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        v13 = (a2.x + a3.x) * 0.5;
        v14 = v13;
LABEL_31:
        if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          v11 = v13;
        }

        if ((*&x & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
        {
          x = v14;
        }

        goto LABEL_35;
      }

      v13 = v11;
      if (a3.y < a4)
      {
        v13 = x - (a4 - y) * (v11 - x) / (a3.y - y);
      }

      if (y > a5)
      {
        v14 = x - (a5 - y) * (v11 - x) / (a3.y - y);
        goto LABEL_31;
      }
    }

    v14 = x;
    goto LABEL_31;
  }

LABEL_35:
  if (x >= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = x;
  }

  if (v17 < *this)
  {
    *this = v17;
  }

  if (x >= v11)
  {
    v18 = x;
  }

  else
  {
    v18 = v11;
  }

  if (v18 > *a6)
  {
    *a6 = v18;
  }

  return 1;
}

char *TPathProcessor::RemoveRange(uint64_t a1, double a2, double a3)
{
  v6 = *(a1 + 88);
  result = *(a1 + 40);
  if (!(v6 % 0x1E))
  {
    if (result)
    {
      if (is_mul_ok(v6 / 0x1E + 1, 0x1EuLL))
      {
        result = reallocarrayf_DARWIN_EXTSN();
      }

      else
      {
        free(result);
        result = 0;
      }
    }

    else
    {
      result = reallocarray_DARWIN_EXTSN();
    }

    *(a1 + 40) = result;
  }

  if (result)
  {
    v8 = *(a1 + 88);
    v9 = &result[16 * v8];
    *v9 = a2;
    v9[1] = a3;
    *(a1 + 88) = v8 + 1;
  }

  return result;
}

__CFArray *CreateRectArrayFromPath(CFTypeRef cf, BOOL a2, TClippingPathInfo *a3, double *a4, double a5, double a6, double a7)
{
  v27 = unk_18477D8B8;
  v28 = xmmword_18477D8C8;
  cfa[0] = __const_CreateRectArrayFromPath_pathProcessor;
  v25 = unk_18477D898;
  cfa[1] = *&a5;
  v29 = -1;
  v30 = 0;
  capacity[0] = 0;
  capacity[1] = 0;
  if (cf)
  {
    CFRetain(cf);
  }

  cfa[0] = cf;
  TPathProcessor::SlicePathH(cfa, a2, a6, a7, a3);
  v13 = capacity[0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity[0], MEMORY[0x1E695E9C0]);
  if (v13)
  {
    v15 = 0;
    Width = 0.0;
    do
    {
      v17 = *(capacity[1] + v15);
      v18 = *(capacity[1] + v15 + 8) - v17;
      v19 = *&v25;
      v20 = *(&v25 + 1) - *&v25;
      v31.origin.x = v17;
      *&v31.origin.y = v25;
      v31.size.width = v18;
      v31.size.height = *(&v25 + 1) - *&v25;
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v31);
      if (DictionaryRepresentation)
      {
        v22 = DictionaryRepresentation;
        CFArrayAppendValue(Mutable, DictionaryRepresentation);
        CFRelease(v22);
      }

      v32.origin.x = v17;
      v32.origin.y = v19;
      v32.size.width = v18;
      v32.size.height = v20;
      if (Width < CGRectGetWidth(v32))
      {
        v33.origin.x = v17;
        v33.origin.y = v19;
        v33.size.width = v18;
        v33.size.height = v20;
        Width = CGRectGetWidth(v33);
      }

      v15 += 16;
      --v13;
    }

    while (v13);
    if (a4)
    {
      goto LABEL_11;
    }
  }

  else
  {
    Width = 0.0;
    if (a4)
    {
LABEL_11:
      *a4 = Width;
    }
  }

  if (cfa[0])
  {
    CFRelease(cfa[0]);
  }

  free(capacity[1]);
  return Mutable;
}

__CFArray *CreateRectArrayFromPathVertical(uint64_t a1, BOOL a2, const TClippingPathInfo *a3, double a4, double a5, double a6)
{
  *cf = kRotateRightTransform;
  v21 = unk_18477D8F8;
  *capacity = xmmword_18477D908;
  v11 = MEMORY[0x1865F1B30](a1, cf);
  v12 = v11;
  v23 = unk_18477D948;
  v24 = xmmword_18477D958;
  cf[0] = __const_CreateRectArrayFromPathVertical_pathProcessor;
  v21 = unk_18477D928;
  cf[1] = *&a4;
  v25 = -1;
  v26 = 0;
  capacity[0] = 0;
  capacity[1] = 0;
  if (v11)
  {
    CFRetain(v11);
  }

  cf[0] = v12;
  TPathProcessor::SlicePathH(cf, a2, -a5, -a6, a3);
  v13 = capacity[0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], capacity[0], MEMORY[0x1E695E9C0]);
  if (v13)
  {
    v15 = 0;
    do
    {
      v27.origin.x = *(capacity[1] + v15);
      v27.size.width = *(capacity[1] + v15 + 8) - v27.origin.x;
      *&v27.origin.y = v21;
      v27.size.height = *(&v21 + 1) - *&v21;
      v19 = *kRotateLeftTransform;
      v28 = CGRectApplyAffineTransform(v27, &v19);
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v28);
      if (DictionaryRepresentation)
      {
        v17 = DictionaryRepresentation;
        CFArrayAppendValue(Mutable, DictionaryRepresentation);
        CFRelease(v17);
      }

      v15 += 16;
      --v13;
    }

    while (v13);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  free(capacity[1]);

  return Mutable;
}

__CFArray *CTFramesetterCreateCGRectArray(__CFArray *a1, const __CFDictionary *a2, CFArrayRef theArray, double a4, double a5)
{
  RectArrayFromPath = a1;
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13[11] = v9;
    v13[12] = v9;
    v13[9] = v9;
    v13[10] = v9;
    v13[8] = v9;
    v13[6] = v9;
    v13[7] = v9;
    v13[4] = v9;
    v13[5] = v9;
    v13[2] = v9;
    v13[3] = v9;
    v13[0] = v9;
    v13[1] = v9;
    TClippingPathInfo::TClippingPathInfo(v13, theArray, 0);
    v12 = -1431655766;
    PathWidthAndFillRule = GetPathWidthAndFillRule(a2, &v12);
    RectArrayFromPath = CreateRectArrayFromPath(RectArrayFromPath, v12 == kCTFramePathFillEvenOdd, v13, 0, PathWidthAndFillRule, a4, a5);
    TClippingPathInfo::~TClippingPathInfo(v13);
  }

  return RectArrayFromPath;
}

double GetPathWidthAndFillRule(const __CFDictionary *a1, CTFramePathFillRule *a2)
{
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, @"CTFramePathFillRule");
    if (Value)
    {
      valuePtr = -1431655766;
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      v5 = valuePtr;
    }

    else
    {
      v5 = kCTFramePathFillEvenOdd;
    }

    v9 = 0.0;
    v7 = CFDictionaryGetValue(a1, @"CTFramePathWidth");
    v6 = 0.0;
    if (v7)
    {
      CFNumberGetValue(v7, kCFNumberDoubleType, &v9);
      if (v9 >= 0.0)
      {
        v6 = v9;
      }
    }
  }

  else
  {
    v5 = kCTFramePathFillEvenOdd;
    v6 = 0.0;
  }

  *a2 = v5;
  return v6;
}

__CFArray *CTFramesetterCreateCGRectArrayVertical(__CFArray *a1, const __CFDictionary *a2, CFArrayRef theArray, double a4, double a5)
{
  RectArrayFromPathVertical = a1;
  v14 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13[11] = v9;
    v13[12] = v9;
    v13[9] = v9;
    v13[10] = v9;
    v13[8] = v9;
    v13[6] = v9;
    v13[7] = v9;
    v13[4] = v9;
    v13[5] = v9;
    v13[2] = v9;
    v13[3] = v9;
    v13[0] = v9;
    v13[1] = v9;
    TClippingPathInfo::TClippingPathInfo(v13, theArray, 1);
    v12 = -1431655766;
    PathWidthAndFillRule = GetPathWidthAndFillRule(a2, &v12);
    RectArrayFromPathVertical = CreateRectArrayFromPathVertical(RectArrayFromPathVertical, v12 == kCTFramePathFillEvenOdd, v13, PathWidthAndFillRule, a4, a5);
    TClippingPathInfo::~TClippingPathInfo(v13);
  }

  return RectArrayFromPathVertical;
}

void TClippingPathInfo::TClippingPathInfo(TClippingPathInfo *this, CFArrayRef theArray, int a3)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  v64 = this + 32;
  *(this + 9) = this + 32;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 10) = 0;
  v68 = (this + 80);
  v62 = (this + 104);
  *(this + 18) = this + 104;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 19) = 0;
  v69 = (this + 152);
  *(this + 20) = 0;
  *(this + 21) = 0;
  v63 = this + 176;
  *(this + 25) = this + 176;
  if (theArray)
  {
    v6 = theArray;
    v70 = (this + 144);
    v71 = (this + 72);
    *this = CFArrayGetCount(theArray);
    Count = CFArrayGetCount(v6);
    if (Count)
    {
      v7 = 0;
      v67 = this + 196;
      v66 = a3;
      v65 = v6;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, v7);
        v77[0] = 0;
        v9 = CFGetTypeID(ValueAtIndex);
        if (v9 == CFDictionaryGetTypeID())
        {
          Value = CFDictionaryGetValue(ValueAtIndex, @"CTFramePathClippingPath");
          TCFRef<__CTFont const*>::Retain(v77, Value);
        }

        else
        {
          v11 = CFGetTypeID(ValueAtIndex);
          if (v11 == CGPathGetTypeID())
          {
            TCFRef<__CTFont const*>::Retain(v77, ValueAtIndex);
          }

          else
          {
            CFLog();
          }

          ValueAtIndex = 0;
        }

        if (atomic_load_explicit(v77, memory_order_acquire))
        {
          if (a3)
          {
            explicit = atomic_load_explicit(v77, memory_order_acquire);
            *v73 = kRotateRightTransform;
            v74 = unk_18477D8F8;
            v75 = xmmword_18477D908;
            v76 = MEMORY[0x1865F1B30](explicit, v73);
          }

          v14 = *(this + 2);
          v13 = *(this + 3);
          if (v14 >= v13)
          {
            v16 = v14 - *v4;
            if ((v16 + 1) >> 61)
            {
              std::__throw_bad_array_new_length[abi:fn200100]();
            }

            v17 = v13 - *v4;
            v18 = v17 >> 2;
            if (v17 >> 2 <= (v16 + 1))
            {
              v18 = v16 + 1;
            }

            if (v17 >= 0x7FFFFFFFFFFFFFF8)
            {
              v19 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v19 = v18;
            }

            if (v19)
            {
              v20 = *v71;
              v21 = *v71 + 8 * v19;
              if (v21 > v71)
              {
                if (!(v19 >> 61))
                {
                  operator new();
                }

LABEL_92:
                std::__throw_bad_array_new_length[abi:fn200100]();
              }

              *v71 = v21;
            }

            else
            {
              v20 = 0;
            }

            v22 = &v20[8 * v16];
            *v22 = atomic_exchange(v77, 0);
            v15 = v22 + 8;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = &v22[v24 - v23];
            if (v24 != v23)
            {
              v26 = *(this + 1);
              v27 = v25;
              do
              {
                *v27 = atomic_exchange(v26, 0);
                v27 += 8;
                ++v26;
              }

              while (v26 != v23);
              do
              {
                v28 = *v24++;
              }

              while (v24 != v23);
              v24 = *v4;
            }

            *(this + 1) = v25;
            *(this + 2) = v15;
            v29 = *(this + 3);
            *(this + 3) = &v20[8 * v19];
            a3 = v66;
            if (v24)
            {
              if (v64 <= v24 && v71 > v24)
              {
                if (v29 == *v71)
                {
                  *v71 = v24;
                }
              }

              else
              {
                operator delete(v24);
              }

              v6 = v65;
            }

            else
            {
              v6 = v65;
            }
          }

          else
          {
            *v14 = atomic_exchange(v77, 0);
            v15 = v14 + 1;
          }

          *(this + 2) = v15;
          v73[0] = -1431655766;
          PathWidthAndFillRule = GetPathWidthAndFillRule(ValueAtIndex, v73);
          v33 = *(this + 20);
          v32 = *(this + 21);
          if (v33 >= v32)
          {
            v35 = *v69;
            v36 = v33 - *v69;
            v37 = (v36 >> 2) + 1;
            if (v37 >> 62)
            {
              std::__throw_bad_array_new_length[abi:fn200100]();
            }

            v38 = v32 - v35;
            if (v38 >> 1 > v37)
            {
              v37 = v38 >> 1;
            }

            if (v38 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v39 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v39 = v37;
            }

            if (v39)
            {
              v40 = *(this + 25);
              v41 = &v40[4 * v39];
              if (v41 > v67)
              {
                if (!(v39 >> 62))
                {
                  operator new();
                }

                goto LABEL_92;
              }

              *(this + 25) = v41;
            }

            else
            {
              v40 = 0;
            }

            v42 = &v40[4 * (v36 >> 2)];
            v43 = &v40[4 * v39];
            v44 = v40;
            *v42 = v73[0];
            v34 = v42 + 1;
            memcpy(v40, v35, v36);
            v45 = *(this + 19);
            *(this + 19) = v44;
            *(this + 20) = v34;
            v46 = *(this + 21);
            *(this + 21) = v43;
            if (v45)
            {
              if (v63 > v45 || v67 <= v45)
              {
                operator delete(v45);
              }

              else if (v46 == *(this + 25))
              {
                *(this + 25) = v45;
              }
            }
          }

          else
          {
            *v33 = v73[0];
            v34 = v33 + 1;
          }

          *(this + 20) = v34;
          v48 = *(this + 11);
          v47 = *(this + 12);
          if (v48 >= v47)
          {
            v50 = *v68;
            v51 = v48 - *v68;
            v52 = (v51 >> 3) + 1;
            if (v52 >> 61)
            {
              std::__throw_bad_array_new_length[abi:fn200100]();
            }

            v53 = v47 - v50;
            if (v53 >> 2 > v52)
            {
              v52 = v53 >> 2;
            }

            if (v53 >= 0x7FFFFFFFFFFFFFF8)
            {
              v54 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v54 = v52;
            }

            if (v54)
            {
              v55 = *v70;
              v56 = *v70 + 8 * v54;
              if (v56 > v70)
              {
                if (!(v54 >> 61))
                {
                  operator new();
                }

                goto LABEL_92;
              }

              *v70 = v56;
            }

            else
            {
              v55 = 0;
            }

            v57 = &v55[8 * (v51 >> 3)];
            v58 = &v55[8 * v54];
            v59 = v55;
            *v57 = PathWidthAndFillRule;
            v49 = v57 + 1;
            memcpy(v55, v50, v51);
            v60 = *(this + 10);
            *(this + 10) = v59;
            *(this + 11) = v49;
            v61 = *(this + 12);
            *(this + 12) = v58;
            if (v60)
            {
              if (v62 > v60 || v70 <= v60)
              {
                operator delete(v60);
              }

              else if (v61 == *v70)
              {
                *v70 = v60;
              }
            }
          }

          else
          {
            *v48 = PathWidthAndFillRule;
            v49 = v48 + 8;
          }

          *(this + 11) = v49;
        }

        ++v7;
      }

      while (v7 != Count);
    }
  }

  else
  {
    *this = 0;
  }
}

uint64_t CTFramesetterFindRectPosition(const CGPath *a1, const __CFDictionary *a2, const __CFArray *a3, int a4, double *a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v67 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  BoundingBox = CGPathGetBoundingBox(a1);
  if (BoundingBox.size.width < a8 || BoundingBox.size.height < a7)
  {
    return 0;
  }

  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  if (CGRectGetMinY(BoundingBox) > a6)
  {
    return 0;
  }

  v69.origin.x = x;
  v69.origin.y = y;
  v69.size.width = width;
  v69.size.height = height;
  if (a6 + a7 > CGRectGetMaxY(v69))
  {
    return 0;
  }

  v22.width = NAN;
  v22.height = NAN;
  rect.origin = v22;
  rect.size = v22;
  v22.width = -3.72066208e-103;
  v22.height = -3.72066208e-103;
  v65 = v22;
  v66 = v22;
  v63 = v22;
  v64 = v22;
  v61 = v22;
  v62 = v22;
  v59 = v22;
  v60 = v22;
  v57 = v22;
  v58 = v22;
  v55 = v22;
  v56 = v22;
  v54 = v22;
  TClippingPathInfo::TClippingPathInfo(&v54, a3, 0);
  v52 = -1431655766;
  PathWidthAndFillRule = GetPathWidthAndFillRule(a2, &v52);
  v23 = *&v54.width;
  v24 = -1.0;
  if (a4)
  {
    v24 = 1.0;
  }

  v47 = v24;
  v50 = a7;
  do
  {
    MaxY = a6;
    while (2)
    {
      if (v23 < 1)
      {
        MaxY = a6;
      }

      else
      {
        v26 = 0;
        v27 = 0;
        v28 = NAN;
        do
        {
          if (*&v54.width <= v27)
          {
            explicit = 0;
          }

          else
          {
            if (v27 >= (*&v59.height - *&v59.width) >> 3 || v27 >= (*&v55.width - *&v54.height) >> 3)
            {
              __break(1u);
              goto LABEL_54;
            }

            v28 = *(*&v59.width + 8 * v27);
            explicit = atomic_load_explicit((*&v54.height + 8 * v27), memory_order_acquire);
          }

          if (CGPathIsRect(explicit, &rect))
          {
            rect = CGRectInset(rect, v28 * -0.5, v28 * -0.5);
            MinX = CGRectGetMinX(rect);
            v70.origin.x = x;
            v70.origin.y = y;
            v70.size.width = width;
            v70.size.height = height;
            if (MinX <= CGRectGetMinX(v70) + a8)
            {
              MaxX = CGRectGetMaxX(rect);
              v71.origin.x = x;
              v71.origin.y = y;
              v71.size.width = width;
              v71.size.height = height;
              if (MaxX >= CGRectGetMaxX(v71) - a8 && MaxY + v50 > CGRectGetMinY(rect) && MaxY < CGRectGetMaxY(rect))
              {
                v32 = rect.origin.x;
                v33 = rect.origin.y;
                v34 = rect.size.width;
                v35 = rect.size.height;
                if (a4)
                {
                  MaxY = CGRectGetMaxY(*&v32);
                }

                else
                {
                  MaxY = CGRectGetMinY(*&v32) - v50;
                }

                v26 = 1;
              }
            }
          }

          ++v27;
        }

        while (v23 != v27);
        if (v26)
        {
          continue;
        }
      }

      break;
    }

    v72.origin.x = x;
    v72.origin.y = y;
    v72.size.width = width;
    v72.size.height = height;
    if (MaxY < CGRectGetMinY(v72) || (v73.origin.x = x, v73.origin.y = y, v73.size.width = width, v73.size.height = height, MaxY + v50 > CGRectGetMaxY(v73)))
    {
LABEL_54:
      v20 = 0;
      goto LABEL_58;
    }

    v51 = NAN;
    v36 = v52;
    v37 = CreateRectArrayFromPath(a1, v52 == kCTFramePathFillEvenOdd, &v54, &v51, PathWidthAndFillRule, MaxY, MaxY + v50);
    v38 = v37;
    v39 = v38;
    if (v38)
    {
      v40 = CFArrayGetCount(v38) > 0;
    }

    else
    {
      v40 = 0;
    }

    v20 = v51 >= a8 && v40;

    if (v20 == 1)
    {
      if (a5)
      {
        *a5 = MaxY;
      }

LABEL_57:

      goto LABEL_58;
    }

    v41 = v47 + MaxY;
    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = width;
    v74.size.height = height;
    if (v47 + MaxY < CGRectGetMinY(v74))
    {
      goto LABEL_57;
    }

    v75.origin.x = x;
    v75.origin.y = y;
    v75.size.width = width;
    v75.size.height = height;
    if (v41 + v50 > CGRectGetMaxY(v75))
    {
      goto LABEL_57;
    }

    a6 = v47 + MaxY;
    v42 = CreateRectArrayFromPath(a1, v36 == kCTFramePathFillEvenOdd, &v54, &v51, PathWidthAndFillRule, v41, v41 + v50);
    v43 = v42;
    v44 = v43;
    if (v43)
    {
      v45 = CFArrayGetCount(v43) > 0;
    }

    else
    {
      v45 = 0;
    }

    v46 = v51;
  }

  while (!v45 || v46 < a8);
  if (a5)
  {
    *a5 = a6;
  }

  v20 = 1;
LABEL_58:
  TClippingPathInfo::~TClippingPathInfo(&v54);
  return v20;
}

void TBaselineEngine::GetBaselineInfo(uint64_t a1, int a2, uint64_t a3)
{
  v21 = 0xAAAAAAAAAAAAAAAALL;
  (*(**(a1 + 408) + 488))(&v21);
  if (atomic_load_explicit(&v21, memory_order_acquire))
  {
    v6 = atomic_load_explicit(&v21, memory_order_acquire);
    v7 = v6;
    if (v6)
    {
      BytePtr = CFDataGetBytePtr(v6);
    }

    else
    {
      BytePtr = 0;
    }

    v12 = atomic_load_explicit(&v21, memory_order_acquire);
    v13 = v12;
    if (v13)
    {
      v14 = v13;
      v15 = CFDataGetBytePtr(v13);

      if (v15)
      {
        v15 += CFDataGetLength(v12);
      }
    }

    else
    {

      v15 = 0;
    }

    TAATBslnEngine::GetBaselineInfo(BytePtr, v15, a1, a3);
  }

  else
  {
    (*(**(a1 + 408) + 488))(v22);

    if (atomic_load_explicit(&v21, memory_order_acquire))
    {
      v9 = atomic_load_explicit(&v21, memory_order_acquire);
      v10 = v9;
      if (v9)
      {
        v11 = CFDataGetBytePtr(v9);
      }

      else
      {
        v11 = 0;
      }

      v16 = atomic_load_explicit(&v21, memory_order_acquire);
      v17 = v16;
      if (v17)
      {
        v18 = v17;
        v19 = CFDataGetBytePtr(v17);

        if (v19)
        {
          v19 += CFDataGetLength(v16);
        }
      }

      else
      {

        v19 = 0;
      }

      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v24 = v20;
      v25 = v20;
      *v22 = v20;
      v23 = v20;
      OTL::BASE::BASE(v22, v11, v19);
      if (v22[0])
      {
        TOpenTypeBaselineEngine::GetBaselineInfo(v22, a1, a2, a3, 0);
      }
    }

    else if ((*(a1 + 12) & 1) == 0)
    {
      TBaselineEngineImplementation::SynthesizeMissingBaselines(a1, a3, 0.0);
    }
  }
}

uint64_t TBaselineEngineImplementation::AlignBaselinesForRuns(TBaselineEngineImplementation *this)
{
  result = (*(*this + 24))(this);
  if (result)
  {
    v3 = *(this + 1);
    if (*(v3 + 56) < 1)
    {
      return 0;
    }

    else
    {
      v4 = *(v3 + 40);
      v5 = *(v4 + 184);
      if (!v5 || (v6 = *(v5 + 280), v6 == 255))
      {
        v6 = *(v3 + 36);
        if (v6 == 3)
        {
          if ((*(v4 + 178) & 0x2000) != 0)
          {
            v6 = 0;
          }

          else
          {
            v6 = 3;
          }
        }

        else if (v6 == 5 || v6 == 2)
        {
          v8 = *(v3 + 32);
          if (v8 > 1784769902)
          {
            v9 = v8 == 1801547361;
            v10 = 1784769903;
          }

          else
          {
            v9 = v8 == 1751215719;
            v10 = 1751215721;
          }

          if (v9 || v8 == v10)
          {
            v12 = v6 == 2 ? 6 : 7;
            if (TBaselineEngineImplementation::ApplySameBaselineToAllGlyphs(this, v12))
            {
              return 1;
            }
          }
        }
      }

      return TBaselineEngineImplementation::ApplySameBaselineToAllGlyphs(this, v6);
    }
  }

  return result;
}

void TBaselineEngineImplementation::SynthesizeMissingBaselines(uint64_t a1, uint64_t a2, double a3)
{
  TypoAscentDescent = TBaselineEngineImplementation::GetTypoAscentDescent(a1, a2);
  v8 = v7;
  if (a3 != 0.0 || (*(a1 + 12) & 1) == 0)
  {
    goto LABEL_14;
  }

  if ((*(**(a1 + 408) + 480))(*(a1 + 408), 1986884728))
  {
    v9 = a1 + 56;
    v10 = *(a1 + 56);
LABEL_6:
    v12 = v9;
    if (!v10)
    {
      TFont::InitStrikeMetrics(a1);
    }

    v13 = *(v12 + 48);
    if (!*v9)
    {
      TFont::InitStrikeMetrics(a1);
      v9 = v14;
    }

    a3 = v13 * *v9 * -0.5 - v8;
    goto LABEL_14;
  }

  v11 = (*(**(a1 + 408) + 480))(*(a1 + 408), 1448038983);
  v9 = a1 + 56;
  v10 = *(a1 + 56);
  if (v11)
  {
    goto LABEL_6;
  }

  if (!v10)
  {
    TFont::InitStrikeMetrics(a1);
    v9 = v15;
  }

  a3 = *(v9 + 32) * -0.5;
LABEL_14:
  if (*(a2 + 88) != 1)
  {
    *(a2 + 80) = TypoAscentDescent + a3;
    *(a2 + 88) = 1;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    v16 = (*(**(a1 + 408) + 744))(*(a1 + 408));
    v17 = v8;
    if ((v16 & 1) == 0)
    {
      if (*(a1 + 56))
      {
        v18 = a1 + 56;
      }

      else
      {
        TFont::InitStrikeMetrics(a1);
      }

      v17 = *(v18 + 32) * -0.15;
      if (v17 >= 0.0)
      {
        v17 = v8 * 0.5;
      }
    }

    *(a2 + 32) = a3 + v17;
    *(a2 + 40) = 1;
  }

  if ((*(a2 + 8) & 1) == 0)
  {
    *a2 = a3;
    *(a2 + 8) = 1;
  }

  if (*(a2 + 24) & 1) == 0 && (*(a2 + 88))
  {
    *(a2 + 16) = (*(a2 + 80) + *(a2 + 32)) * 0.5;
    *(a2 + 24) = 1;
  }

  if ((*(a2 + 56) & 1) == 0)
  {
    if (*(a1 + 56))
    {
      v19 = a1 + 56;
    }

    else
    {
      TFont::InitStrikeMetrics(a1);
    }

    *(a2 + 48) = a3 + *(v19 + 32);
    *(a2 + 56) = 1;
  }

  if ((*(a2 + 72) & 1) == 0)
  {
    v20 = *(a1 + 408);
    TFont::GetScaledMatrix(a1, &v21);
    *(a2 + 64) = a3 + (*(*v20 + 616))(v20, &v21) * 0.5;
    *(a2 + 72) = 1;
  }
}

void *TBaselineEngineImplementation::TBaselineEngineImplementation(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1EF25BE88;
  a1[1] = a2;
  if (a3)
  {
    v4 = *(*(atomic_load_explicit((*(a2 + 40) + 56), memory_order_acquire) + 40) + 408);
    (*(*v4 + 488))(v4, a3);
  }

  else
  {
    a1[2] = 0;
  }

  v5 = atomic_load_explicit(a1 + 2, memory_order_acquire);
  v6 = v5;
  if (v5)
  {
    BytePtr = CFDataGetBytePtr(v5);
  }

  else
  {
    BytePtr = 0;
  }

  a1[3] = BytePtr;
  v8 = atomic_load_explicit(a1 + 2, memory_order_acquire);
  v9 = v8;
  if (v9)
  {
    v10 = v9;
    v11 = CFDataGetBytePtr(v9);

    if (v11)
    {
      v11 += CFDataGetLength(v8);
    }
  }

  else
  {

    v11 = 0;
  }

  a1[4] = v11;
  return a1;
}

void TBaselineEngineImplementation::~TBaselineEngineImplementation(id *this)
{
  *this = &unk_1EF25BE88;
}

{
  *this = &unk_1EF25BE88;

  JUMPOUT(0x1865F22D0);
}

uint64_t TBaselineEngineImplementation::ApplySameBaselineToAllGlyphs(uint64_t a1, unsigned int a2)
{
  v7[4] = *MEMORY[0x1E69E9840];
  if (a2 >= 8)
  {
    __break(1u);
  }

  v2 = *(a1 + 8);
  v3 = v2 + 208;
  if (*(v2 + 208 + 16 * a2 + 8) != 1)
  {
    return 0;
  }

  v4 = v2 + 80;
  if (*(v4 + 16 * a2 + 8) != 1)
  {
    return 0;
  }

  v5 = *(v3 + 16 * a2) - *(v4 + 16 * a2);
  if (v5 != 0.0)
  {
    v7[0] = &unk_1EF25BEE0;
    *&v7[1] = v5;
    v7[3] = v7;
    TBaselineEngineImplementation::ApplyToRuns(a1, v7);
    std::__function::__value_func<BOOL ()(TRun &)>::~__value_func[abi:fn200100](v7);
  }

  return 1;
}

double TBaselineEngineImplementation::GetTypoAscentDescent(TBaseFont **this, const TFont *a2)
{
  v4 = -1;
  v5 = NAN;
  if (TFont::GetTypoMetrics(this, &v5, &v4, 0))
  {
    return v5;
  }

  else
  {
    return TFont::GetHorizontalAscentDescent(this);
  }
}

BOOL TBaselineEngineImplementation::ApplyToRuns(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2[7] < 1)
  {
    goto LABEL_32;
  }

  v3 = v2[6];
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v3 < ((*(*v2 + 24) - v5) >> 3))
  {
    v6 = v2[9];
    if (v6 >= 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = v2[8];
      v12 = v11 + v6;
      for (i = v5 + 8 * v3; ; i = v33 + 8 * v3)
      {
        v14 = *(*i + 48);
        v15 = v14[26];
        if (v11 != v9)
        {
          v16 = *(*(v14[27] + 48) + 8 * v14[25] + 8 * (v11 - v9));
          v17 = v14[1];
          v18 = v16 - v17;
          if (v16 >= v17 && v18 < v14[2])
          {
            if (v16 == v17)
            {
              return v10 & 1;
            }

            TLine::SplitRun(v4, v3, v18);
            v19 = *(a1 + 8);
            v21 = *(v19 + 48);
            v20 = *(v19 + 56);
            if (v21 <= v3 && v20 + v21 > v3)
            {
              *(v19 + 56) = v20 + 1;
            }

            v23 = *(v4 + 16);
            if (v3 >= ((*(v4 + 24) - v23) >> 3))
            {
              goto LABEL_34;
            }

            v14 = *(*(v23 + 8 * v3) + 48);
            v15 = v14[26];
            v10 = 1;
          }
        }

        if (v12 - v9 < v15)
        {
          v24 = *(*(v14[27] + 48) + 8 * v14[25] + 8 * (v12 - v9));
          v25 = v14[1];
          v26 = v24 - v25;
          if (v24 >= v25 && v26 < v14[2])
          {
            if (v24 == v25)
            {
              return v10 & 1;
            }

            TLine::SplitRun(v4, v3, v26);
            v27 = *(a1 + 8);
            v29 = *(v27 + 48);
            v28 = *(v27 + 56);
            if (v29 <= v3 && v28 + v29 > v3)
            {
              *(v27 + 56) = v28 + 1;
            }

            v31 = *(v4 + 16);
            if (v3 >= ((*(v4 + 24) - v31) >> 3))
            {
              goto LABEL_34;
            }

            v15 = *(*(*(v31 + 8 * v3) + 48) + 208);
            v10 = 1;
          }
        }

        v32 = *(a2 + 24);
        if (!v32)
        {
          goto LABEL_35;
        }

        v10 |= (*(*v32 + 48))(v32);
        v11 += v15;
        if (v11 >= v12)
        {
          break;
        }

        ++v3;
        v33 = *(v4 + 16);
        v34 = *(v4 + 24) - v33;
        if (v3 >= v34 >> 3)
        {
          break;
        }

        if (v34 >> 3 <= v3)
        {
          goto LABEL_34;
        }

        v9 += v15;
      }

      return v10 & 1;
    }

LABEL_32:
    LOBYTE(v10) = 0;
    return v10 & 1;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  v36 = std::__throw_bad_function_call[abi:fn200100]();
  return TBaselineEngineImplementation::CanProcess(v36);
}

BOOL anonymous namespace::BaselineRunComparator::RunsSimilar(_anonymous_namespace_::BaselineRunComparator *this, const TRun *a2, const TRun *a3)
{
  v3 = *(a2 + 23);
  if (v3)
  {
    v4 = v3[280];
  }

  else
  {
    v4 = 255;
  }

  v5 = *(a3 + 23);
  if (v5)
  {
    v6 = v5[280];
  }

  else
  {
    v6 = 255;
  }

  if (v4 != v6)
  {
    return 0;
  }

  if (v3)
  {
    if (v3[128])
    {
      v7 = *(a2 + 23);
    }

    else
    {
      v7 = 0;
    }

    if (v5)
    {
      goto LABEL_13;
    }

LABEL_17:
    v8 = 0;
    goto LABEL_18;
  }

  v7 = 0;
  if (!v5)
  {
    goto LABEL_17;
  }

LABEL_13:
  if (v5[128])
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = 0;
  }

LABEL_18:
  if (v7 != v8)
  {
    if (!v7 || !v8)
    {
      return 0;
    }

    v9 = (v8 + 8);
    v10 = (v7 + 8);
    v11 = 128;
    do
    {
      v12 = *v10;
      v13 = *v9;
      if (v12 != 1 || v13 == 0)
      {
        if (v12 != v13)
        {
          return 0;
        }
      }

      else if (*(v10 - 1) != *(v9 - 1))
      {
        return 0;
      }

      v9 += 2;
      v10 += 2;
      v11 -= 16;
    }

    while (v11);
  }

  if (v3)
  {
    if (v3[264])
    {
      v3 += 136;
    }

    else
    {
      v3 = 0;
    }
  }

  if (v5)
  {
    if (v5[264])
    {
      v5 += 136;
    }

    else
    {
      v5 = 0;
    }
  }

  if (v3 == v5)
  {
    return TRunComparator::RunsSimilar(this, a2, a3);
  }

  if (v3 && v5)
  {
    v15 = (v5 + 8);
    v16 = (v3 + 8);
    v17 = 128;
    do
    {
      v18 = *v16;
      v19 = *v15;
      if (v18 != 1 || v19 == 0)
      {
        if (v18 != v19)
        {
          return 0;
        }
      }

      else if (*(v16 - 1) != *(v15 - 1))
      {
        return 0;
      }

      v15 += 2;
      v16 += 2;
      v17 -= 16;
    }

    while (v17);
    return TRunComparator::RunsSimilar(this, a2, a3);
  }

  return 0;
}

uint64_t std::__function::__func<TBaselineEngineImplementation::ApplySameBaselineToAllGlyphs(BaselineClass)::$_0,std::allocator<TBaselineEngineImplementation::ApplySameBaselineToAllGlyphs(BaselineClass)::$_0>,BOOL ()(TRun &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF25BEE0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<TBaselineEngineImplementation::ApplySameBaselineToAllGlyphs(BaselineClass)::$_0,std::allocator<TBaselineEngineImplementation::ApplySameBaselineToAllGlyphs(BaselineClass)::$_0>,BOOL ()(TRun &)>::operator()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 160);
  if (v3)
  {
    v4 = *(v3 + 48);
    v5 = v4 + *(a1 + 8);
  }

  else
  {
    v4 = 0.0;
    v5 = *(a1 + 8) + 0.0;
  }

  if (v4 != v5)
  {
    *(TAttributes::EnsureRareData((a2 + 40)) + 48) = v5;
    *(a2 + 89) = 1;
  }

  return 1;
}

uint64_t std::__function::__value_func<BOOL ()(TRun &)>::~__value_func[abi:fn200100](uint64_t a1)
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

void *TAATBslnEngine::TAATBslnEngine(void *a1, uint64_t a2)
{
  v3 = TBaselineEngineImplementation::TBaselineEngineImplementation(a1, a2, 1651731566);
  *v3 = &unk_1EF25BF28;
  v3[5] = 0;
  v4 = *(v3[1] + 40);
  explicit = atomic_load_explicit((v4 + 56), memory_order_acquire);
  v6 = v3[3];
  if (!v6 || (*(*(explicit + 40) + 12) & 1) != 0)
  {
    goto LABEL_14;
  }

  v7 = a1[1];
  v8 = *(*(v7 + 40) + 184);
  if (v8 && *(v8 + 128) == 1)
  {
    v9 = v7 + 80;
    v10 = *v8;
    v11 = v8[1];
    v12 = v8[3];
    *(v7 + 112) = v8[2];
    *(v7 + 128) = v12;
    *(v7 + 80) = v10;
    *(v7 + 96) = v11;
    v13 = v8[4];
    v14 = v8[5];
    v15 = v8[7];
    *(v7 + 176) = v8[6];
    *(v7 + 192) = v15;
    *(v7 + 144) = v13;
    *(v7 + 160) = v14;
  }

  else
  {
    v16 = 0;
    v17 = v7 + 88;
    do
    {
      if (*(v17 + v16) == 1)
      {
        *(v17 + v16) = 0;
      }

      v16 += 16;
    }

    while (v16 != 128);
    v9 = v7 + 80;
  }

  if (bswap32(*v6) < 0x10000 || (TAATBslnEngine::GetBaselineInfo(v6, a1[4], *(atomic_load_explicit((v4 + 56), memory_order_acquire) + 40), v9) & 1) == 0)
  {
    v18 = (v4 + 56);
    atomic_load_explicit(v18, memory_order_acquire);
    CFLog();
    v19 = *(*(atomic_load_explicit(v18, memory_order_acquire) + 40) + 408);
    (*(*v19 + 496))(v19);
LABEL_14:
    a1[3] = 0;
  }

  return a1;
}

uint64_t TAATBslnEngine::GetBaselineInfo(unsigned __int16 *a1, unint64_t a2, TFont *this, uint64_t a4)
{
  __b[137] = *MEMORY[0x1E69E9840];
  if (*(this + 12))
  {
    return 0;
  }

  *&v8 = -1;
  *(&v8 + 1) = -1;
  *&v50.c = v8;
  *&v50.tx = v8;
  *&v50.a = v8;
  TFont::GetScaledMatrix(this, &v50);
  v9 = 0;
  v10 = bswap32(a1[2]) >> 16;
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      goto LABEL_68;
    }

    if (v10 != 3)
    {
      goto LABEL_87;
    }

    if ((a1 + 38) > a2)
    {
      goto LABEL_80;
    }

    v9 = 0;
    v11 = bswap32(a1[37]) >> 16;
    if (v11 > 5)
    {
      if (v11 == 6)
      {
        if ((a1 + 40) > a2)
        {
          goto LABEL_80;
        }

        v25 = a1 + (bswap32(a1[39]) >> 16) * (bswap32(a1[38]) >> 16) + 86;
        if (v25 < (a1 + 43) || v25 > a2)
        {
          goto LABEL_80;
        }

        goto LABEL_68;
      }

      if (v11 != 10)
      {
        if (v11 != 8)
        {
          goto LABEL_87;
        }

        v15 = a1 + 40;
        if ((a1 + 40) > a2)
        {
          goto LABEL_80;
        }

        v16 = bswap32(a1[39]) >> 16;
        v17 = &v15[v16];
        v18 = (a1 + 41) <= a2 ? (a2 - v15) >> 1 : 0;
        v19 = v17 <= a2 && v17 >= v15;
        if (!v19 && v18 != v16)
        {
          goto LABEL_80;
        }

        goto LABEL_68;
      }

      v29 = a1 + 41;
      if ((a1 + 41) > a2)
      {
        goto LABEL_80;
      }

      v9 = 0;
      v30 = v29 + (bswap32(a1[40]) >> 16) * (bswap32(a1[38]) >> 16);
      if (v30 >= v29 && v30 <= a2)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if (!v11)
      {
        goto LABEL_68;
      }

      if (v11 == 2 || v11 == 4)
      {
        if ((a1 + 40) <= a2)
        {
          v9 = 0;
          v12 = a1 + (bswap32(a1[39]) >> 16) * (bswap32(a1[38]) >> 16) + 86;
          if (v12 < (a1 + 43) || v12 > a2)
          {
            goto LABEL_87;
          }

LABEL_68:
          if ((a1 + 37) > a2)
          {
            goto LABEL_80;
          }

          v31 = *(this + 51);
          if (!v31)
          {
            goto LABEL_80;
          }

          v32 = a1 + 5;
          v33 = bswap32(a1[4]) >> 16;
          memset(__b, 170, 0x448uLL);
          TAATControlPointAccess::TAATControlPointAccess(__b, v31);
          for (i = 0; i != 32; ++i)
          {
            if ((i - 6) >= 0x1A)
            {
              v35 = bslnToBaselineMap[i];
              ControlPointCoordinates = TAATControlPointAccess::GetControlPointCoordinates(__b, v33, bswap32(v32[i]) >> 16);
              v38 = a4 + 16 * v35;
              if ((*(v38 + 8) & 1) == 0)
              {
                *v38 = v50.ty + v37 * v50.d + v50.b * ControlPointCoordinates;
                *(v38 + 8) = 1;
              }
            }
          }

          v51 = &__b[2];
          std::vector<CGPoint,TInlineBufferAllocator<CGPoint,64ul>>::__destroy_vector::operator()[abi:fn200100](&v51);
LABEL_86:
          v9 = 1;
          goto LABEL_87;
        }

LABEL_80:
        v9 = 0;
      }
    }

LABEL_87:
    v46 = 0;
    LODWORD(__b[0]) = 67306754;
    do
    {
      v47 = *(__b + v46);
      if (v47 >= 8)
      {
        __break(1u);
      }

      v48 = a4 + 16 * v47;
      if (*(v48 + 8) == 1 && *v48 == 0.0)
      {
        *(v48 + 8) = 0;
      }

      ++v46;
    }

    while (v46 != 4);
    TBaselineEngineImplementation::SynthesizeMissingBaselines(this, a4, 0.0);
    return v9;
  }

  if (!v10)
  {
    goto LABEL_79;
  }

  if (v10 != 1)
  {
    goto LABEL_87;
  }

  if ((a1 + 37) > a2)
  {
    return 0;
  }

  v9 = 0;
  v13 = bswap32(a1[36]) >> 16;
  if (v13 > 5)
  {
    switch(v13)
    {
      case 6:
        if ((a1 + 39) > a2)
        {
          return 0;
        }

        v27 = a1 + (bswap32(a1[38]) >> 16) * (bswap32(a1[37]) >> 16) + 84;
        if (v27 < (a1 + 42) || v27 > a2)
        {
          return 0;
        }

        break;
      case 10:
        v39 = a1 + 40;
        if ((a1 + 40) > a2)
        {
          return 0;
        }

        v9 = 0;
        v40 = v39 + (bswap32(a1[39]) >> 16) * (bswap32(a1[37]) >> 16);
        if (v40 < v39 || v40 > a2)
        {
          return v9;
        }

        break;
      case 8:
        v20 = a1 + 39;
        if ((a1 + 39) > a2)
        {
          return 0;
        }

        v21 = bswap32(a1[38]) >> 16;
        v22 = &v20[v21];
        v23 = (a1 + 40) <= a2 ? (a2 - v20) >> 1 : 0;
        v24 = v22 <= a2 && v22 >= v20;
        if (!v24 && v23 != v21)
        {
          return 0;
        }

        break;
      default:
        return v9;
    }

    goto LABEL_79;
  }

  if (!v13)
  {
    goto LABEL_79;
  }

  if (v13 == 2 || v13 == 4)
  {
    if ((a1 + 39) > a2)
    {
      return 0;
    }

    v9 = 0;
    v14 = a1 + (bswap32(a1[38]) >> 16) * (bswap32(a1[37]) >> 16) + 84;
    if (v14 >= (a1 + 42) && v14 <= a2)
    {
LABEL_79:
      if ((a1 + 36) > a2)
      {
        goto LABEL_80;
      }

      v41 = 0;
      b = v50.b;
      d = v50.d;
      ty = v50.ty;
      do
      {
        if ((v41 - 6) >= 0x1A)
        {
          v45 = a4 + 16 * bslnToBaselineMap[v41];
          if ((*(v45 + 8) & 1) == 0)
          {
            *v45 = ty + d * (bswap32(a1[v41 + 4]) >> 16) + b * 0.0;
            *(v45 + 8) = 1;
          }
        }

        ++v41;
      }

      while (v41 != 32);
      goto LABEL_86;
    }
  }

  return v9;
}

void TAATBslnEngine::~TAATBslnEngine(TAATBslnEngine *this)
{
  *this = &unk_1EF25BF28;
  v2 = *(this + 5);
  *(this + 5) = 0;
  if (v2)
  {

    v3 = v2 + 2;
    std::vector<CGPoint,TInlineBufferAllocator<CGPoint,64ul>>::__destroy_vector::operator()[abi:fn200100](&v3);
    MEMORY[0x1865F22D0](v2, 0x10E0C40A1378614);
  }

  *this = &unk_1EF25BE88;
}

{
  TAATBslnEngine::~TAATBslnEngine(this);

  JUMPOUT(0x1865F22D0);
}

BOOL TAATBslnEngine::AlignBaselinesForRuns(TAATBslnEngine *this)
{
  v1 = *(this + 3);
  if (!v1)
  {
    return v1 != 0;
  }

  v2 = *(this + 1);
  if (*(v2 + 56) < 1)
  {
    return v1 != 0;
  }

  v3 = *(v2 + 40);
  v4 = *(v3 + 184);
  if (v4)
  {
    v5 = *(v4 + 280);
    if (v5 != 255)
    {
LABEL_20:
      TBaselineEngineImplementation::ApplySameBaselineToAllGlyphs(this, v5);
      return v1 != 0;
    }
  }

  v5 = *(v2 + 36);
  if (v5 != 255)
  {
    if (v5 == 3)
    {
      if ((*(v3 + 178) & 0x2000) != 0)
      {
        v5 = 0;
      }

      else
      {
        v5 = 3;
      }
    }

    goto LABEL_20;
  }

  v6 = bswap32(*(v1 + 6)) >> 16;
  if (v6 > 0x1F)
  {
    v7 = 0;
  }

  else
  {
    v7 = bslnToBaselineMap[v6];
  }

  v8 = bswap32(*(v1 + 4)) >> 16;
  if (v8 <= 1)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = (v1 + 72);
        goto LABEL_23;
      }

      return v1 != 0;
    }

    goto LABEL_19;
  }

  if (v8 == 3)
  {
    v9 = (v1 + 74);
LABEL_23:
    TAATBslnEngine::ProcessBSLNFormatsWithMap(this, v9, v7);
  }

  if (v8 == 2)
  {
LABEL_19:
    v5 = v7;
    goto LABEL_20;
  }

  return v1 != 0;
}

void TAATBslnEngine::ProcessBSLNFormatsWithMap(uint64_t a1, const SFNTLookupTable *a2, char a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a3;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7 = v3;
  v6 = v3;
  v4 = *(a1 + 32);
  v5[0] = TAATLookupTable::BadTable;
  v5[1] = 0;
  *(&v7 + 1) = 0;
  v8 = 0xAAAAAAAAAAAAFFFFLL;
  TAATLookupTable::SetTable(v5, a2, v4);
  operator new();
}

__n128 std::__function::__func<TAATBslnEngine::ProcessBSLNFormatsWithMap(SFNTLookupTable const*,BaselineClass)::$_0,std::allocator<TAATBslnEngine::ProcessBSLNFormatsWithMap(SFNTLookupTable const*,BaselineClass)::$_0>,BOOL ()(TRun &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25BF58;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<TAATBslnEngine::ProcessBSLNFormatsWithMap(SFNTLookupTable const*,BaselineClass)::$_0,std::allocator<TAATBslnEngine::ProcessBSLNFormatsWithMap(SFNTLookupTable const*,BaselineClass)::$_0>,BOOL ()(TRun &)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 208);
  v5 = *(*(a2 + 216) + 16) + 2 * *(a2 + 200);
  v6 = 0.0;
  v7 = 0.0;
  if (v4 < 1)
  {
LABEL_14:
    v24 = *(a2 + 160);
    if (v24)
    {
      v6 = *(v24 + 48);
    }

    if (v6 != v7 + v6)
    {
      *(TAttributes::EnsureRareData((a2 + 40)) + 48) = v7 + v6;
      *(a2 + 89) = 1;
    }

    if (v4 < 1)
    {
      return 1;
    }

    v25 = 0;
    v26 = MEMORY[0x1E695EFF8];
    while (1)
    {
      v27 = *(v5 + 2 * v25);
      v28 = *(a1 + 16);
      v29 = *(a1 + 24);
      v30 = **(a1 + 8);
      v47 = 0xAAAAAAAAAAAAAAAALL;
      v31 = *v28;
      v32 = *(v28 + 8);
      v33 = (v28 + (v32 >> 1));
      if (v32)
      {
        v31 = *(*v33 + v31);
      }

      v34 = v31(v33, v27, &v47);
      if (v34)
      {
        v35 = bswap32(*v34) >> 16;
        if (v35 <= 0x1F)
        {
          v30 = bslnToBaselineMap[v35];
        }
      }

      if (v30 >= 8)
      {
        break;
      }

      v36 = *(v29 + 8);
      v37 = v36 + 16 * v30;
      if ((*(v37 + 216) & 1) == 0)
      {
        goto LABEL_38;
      }

      v38 = v36 + 16 * v30;
      if ((*(v38 + 88) & 1) == 0)
      {
        goto LABEL_38;
      }

      v39 = *(v37 + 208) - *(v38 + 80);
      if (v39 != v7)
      {
        if ((*(a2 + 225) & 0x10) != 0)
        {
          [*(a2 + 216) originAtIndex:v25 + *(a2 + 200)];
          v41 = v42;
        }

        else
        {
          v41 = *v26;
          v40 = v26[1];
        }

        v43 = v39 - v7 + v40;
        [*(a2 + 216) setOrigin:v25 + *(a2 + 200) atIndex:{v41, v43}];
        if (v41 != *v26 || v43 != v26[1])
        {
          *(a2 + 225) |= 0x10u;
        }
      }

      if (v4 == ++v25)
      {
        return 1;
      }
    }
  }

  else
  {
    v8 = (*(*(a2 + 216) + 16) + 2 * *(a2 + 200));
    v9 = *(a2 + 208);
    while (1)
    {
      v11 = *v8++;
      v10 = v11;
      v12 = *(a1 + 16);
      v13 = *(a1 + 24);
      v14 = **(a1 + 8);
      v47 = 0xAAAAAAAAAAAAAAAALL;
      v15 = *v12;
      v16 = *(v12 + 8);
      v17 = (v12 + (v16 >> 1));
      if (v16)
      {
        v15 = *(*v17 + v15);
      }

      v18 = v15(v17, v10, &v47);
      if (v18)
      {
        v19 = bswap32(*v18) >> 16;
        if (v19 <= 0x1F)
        {
          v14 = bslnToBaselineMap[v19];
        }
      }

      if (v14 >= 8)
      {
        break;
      }

      v20 = *(v13 + 8);
      v21 = v20 + 16 * v14;
      if ((*(v21 + 216) & 1) == 0)
      {
        goto LABEL_38;
      }

      v22 = v20 + 16 * v14;
      if ((*(v22 + 88) & 1) == 0)
      {
        goto LABEL_38;
      }

      v23 = *(v22 + 80);
      if (*(v21 + 208) - v23 < v7)
      {
        v7 = *(v21 + 208) - v23;
      }

      if (!--v9)
      {
        goto LABEL_14;
      }
    }
  }

  __break(1u);
LABEL_38:
  std::__throw_bad_optional_access[abi:fn200100]();
  return TOpenTypeBaselineEngine::TOpenTypeBaselineEngine(v45, v46);
}

void *TOpenTypeBaselineEngine::TOpenTypeBaselineEngine(void *a1, uint64_t a2)
{
  v3 = TBaselineEngineImplementation::TBaselineEngineImplementation(a1, a2, 1111577413);
  *v3 = &unk_1EF25BFA0;
  OTL::BASE::BASE((v3 + 5), v3[3], v3[4]);
  if (!a1[5])
  {
    goto LABEL_13;
  }

  v4 = a1[1];
  v5 = *(v4 + 40);
  v6 = *(v5 + 184);
  if (v6 && *(v6 + 128) == 1)
  {
    v7 = v4 + 80;
    v8 = *v6;
    v9 = v6[1];
    v10 = v6[3];
    *(v4 + 112) = v6[2];
    *(v4 + 128) = v10;
    *(v4 + 80) = v8;
    *(v4 + 96) = v9;
    v11 = v6[4];
    v12 = v6[5];
    v13 = v6[7];
    *(v4 + 176) = v6[6];
    *(v4 + 192) = v13;
    *(v4 + 144) = v11;
    *(v4 + 160) = v12;
    v5 = *(a1[1] + 40);
  }

  else
  {
    v14 = 0;
    v15 = v4 + 88;
    do
    {
      if (*(v15 + v14) == 1)
      {
        *(v15 + v14) = 0;
      }

      v14 += 16;
    }

    while (v14 != 128);
    v7 = v4 + 80;
  }

  v20 = -1;
  v16 = (v5 + 56);
  TOpenTypeBaselineEngine::GetBaselineInfo(a1 + 5, *(atomic_load_explicit((v5 + 56), memory_order_acquire) + 40), *(a1[1] + 32), v7, &v20);
  if (!v17)
  {
    atomic_load_explicit(v16, memory_order_acquire);
    CFLog();
    v18 = *(*(atomic_load_explicit(v16, memory_order_acquire) + 40) + 408);
    (*(*v18 + 496))(v18);
LABEL_13:
    a1[3] = 0;
    return a1;
  }

  *(a1[1] + 36) = v20;
  return a1;
}

void TOpenTypeBaselineEngine::GetBaselineInfo(unint64_t *a1, TFont *this, int a3, uint64_t a4, char *a5)
{
  v7 = this;
  v156 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v8 = a1[1];
  v10 = *(*a1 + 4);
  v11 = (*a1 + __rev16(v10));
  if ((v11 + 2) > v8 || v10 == 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    goto LABEL_79;
  }

  v14 = (v13 + __rev16(*v13));
  if (!*v13)
  {
    v14 = 0;
  }

  v15 = v14 + 1;
  if (v9 <= v14 && v15 <= v8)
  {
    v17 = bswap32(*v14) >> 16;
    v18 = &v15[2 * v17];
    v19 = (v14 + 3) <= v8 ? (v8 - v15) >> 2 : 0;
    v20 = v18 <= v8 && v18 >= v15;
    if (v20 || v19 == v17)
    {
      v22 = (v13 + __rev16(v13[1]));
      if (!v13[1])
      {
        v22 = 0;
      }

      v23 = v22 + 1;
      if (v9 <= v22 && v23 <= v8)
      {
        v25 = bswap32(*v22) >> 16;
        v26 = &v23[3 * v25];
        if (v26 >= v23 && v26 <= v8)
        {
          goto LABEL_79;
        }

        v28 = (v8 - v23) / 6;
        if ((v22 + 4) > v8)
        {
          v28 = 0;
        }

        if (v28 == v25)
        {
LABEL_79:
          v29 = (v9 + (bswap32(*(v9 + 6)) >> 16));
          if ((v29 + 2) > v8 || *(v9 + 6) == 0)
          {
            v29 = 0;
          }

          if (!v29)
          {
            goto LABEL_265;
          }

          v31 = (v29 + __rev16(*v29));
          if (!*v29)
          {
            v31 = 0;
          }

          v32 = v31 + 1;
          if (v9 <= v31 && v32 <= v8)
          {
            v34 = bswap32(*v31) >> 16;
            v35 = &v32[2 * v34];
            v36 = (v31 + 3) <= v8 ? (v8 - v32) >> 2 : 0;
            v37 = v35 <= v8 && v35 >= v32;
            if (v37 || v36 == v34)
            {
              v39 = (v29 + __rev16(v29[1]));
              if (!v29[1])
              {
                v39 = 0;
              }

              v40 = v39 + 1;
              if (v9 <= v39 && v40 <= v8)
              {
                v42 = bswap32(*v39) >> 16;
                v43 = &v40[3 * v42];
                if (v43 >= v40 && v43 <= v8)
                {
                  goto LABEL_265;
                }

                v45 = (v8 - v40) / 6;
                if ((v39 + 4) > v8)
                {
                  v45 = 0;
                }

                if (v45 == v42)
                {
LABEL_265:
                  v46 = (*(this + 12) & 1) != 0 ? v29 : v13;
                  if (v46)
                  {
                    v145 = v13;
                    v47 = v46 + __rev16(*v46);
                    v48 = *v46 ? v47 : 0;
                    v144 = v46;
                    v49 = v46 + __rev16(v46[1]);
                    v50 = v46[1] ? v49 : 0;
                    if (a3)
                    {
                      *&v51 = 0xAAAAAAAAAAAAAAAALL;
                      *(&v51 + 1) = 0xAAAAAAAAAAAAAAAALL;
                      *__p = v51;
                      *v153 = v51;
                      v154 = 0xAAAAAAAAFFFFFFFFLL;
                      OTL::BASE::MapOfBaseScriptTableOffsets(__p, v50);
                      v52 = 0;
                      *v155 = a3;
                      *&v155[4] = 0x6C61746E44464C54;
                      v53 = __p[0];
                      v54 = __p[1];
                      while (1)
                      {
                        Script = OTL::BASE::FindScript(v53, v54, *&v155[v52]);
                        if (Script)
                        {
                          if (*(Script + 10))
                          {
                            break;
                          }
                        }

                        v52 += 4;
                        if (v52 == 12)
                        {
                          std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(__p);
                          goto LABEL_92;
                        }
                      }

                      v56 = __rev16(*(Script + 10));
                      std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(__p);
                    }

                    else
                    {
LABEL_92:
                      if (!*v50 || !*(v50 + 3))
                      {
                        return;
                      }

                      v56 = __rev16(*(v50 + 3));
                    }

                    v57 = &v50[v56];
                    v58 = (v57 + 6);
                    if ((v57 + 4) >= v9 && v58 <= v8)
                    {
                      v60 = bswap32(*(v57 + 2)) >> 16;
                      v61 = &v58[3 * v60];
                      if (v61 >= v58 && v61 <= v8)
                      {
                        goto LABEL_133;
                      }

                      v63 = (v8 - v58) / 6;
                      if ((v57 + 12) > v8)
                      {
                        v63 = 0;
                      }

                      if (v63 == v60)
                      {
LABEL_133:
                        v64 = *v57;
                        v65 = &v57[__rev16(v64)];
                        v66 = v64 ? v65 : 0;
                        v151 = v66;
                        if (v64)
                        {
                          v67 = v65 + 2;
                          v68 = (v65 + 4);
                          if ((v65 + 2) >= v9 && v68 <= v8)
                          {
                            v70 = bswap32(*(v65 + 1)) >> 16;
                            v71 = v68 + 2 * v70;
                            v72 = (v65 + 6) <= v8 ? (v8 - v68) >> 1 : 0;
                            v73 = v71 <= v8 && v71 >= v68;
                            if (v73 || v72 == v70)
                            {
                              v75 = 0;
                              do
                              {
                                v76 = *(v67 + v75);
                                v77 = v48[v75];
                              }

                              while (v76 == v77 && v75++ != 1);
                              if (v76 == v77)
                              {
                                if (a5)
                                {
                                  v79 = bswap32(*v151) >> 16;
                                  if (v79 >= bswap32(*v48) >> 16)
                                  {
                                    v80 = 0;
                                  }

                                  else
                                  {
                                    v80 = bswap32(*&v48[4 * v79 + 2]);
                                  }

                                  v81 = TOpenTypeBaselineEngine::BaselineClassForTag(v80);
                                  if ((v81 & 0xFF00) != 0)
                                  {
                                    v82 = v81;
                                  }

                                  else
                                  {
                                    v82 = -1;
                                  }

                                  *a5 = v82;
                                }

                                v83 = (v7 + 56);
                                v84 = (v7 + 56);
                                if (!*(v7 + 14))
                                {
                                  TFont::InitStrikeMetrics(v7);
                                }

                                v85 = v84[6];
                                if (!*v83)
                                {
                                  TFont::InitStrikeMetrics(v7);
                                  v83 = v86;
                                }

                                v142 = *v83;
                                *v155 = 0xAAAAAAAAAAAAAAAALL;
                                VariationValues = TFont::GetVariationValues(v7, v155);
                                *__p = 0u;
                                *v153 = 0u;
                                v154 = 0xAAAAAAAA3F800000;
                                if (*v67)
                                {
                                  v88 = 0;
                                  v89 = __rev16(*v67);
                                  v149 = v7;
                                  v150 = (v48 + 2);
                                  if (v89 <= 1)
                                  {
                                    v90 = 1;
                                  }

                                  else
                                  {
                                    v90 = v89;
                                  }

                                  v148 = v68;
                                  do
                                  {
                                    if (bswap32(*v67) >> 16 > v88)
                                    {
                                      v91 = v151 + __rev16(*(v68 + 2 * v88));
                                      v92 = !*(v68 + 2 * v88) || v9 > v91;
                                      if (!v92 && (v91 + 4) <= v8)
                                      {
                                        v94 = bswap32(*&v150[2 * v88]);
                                        if (!__p[1])
                                        {
                                          goto LABEL_177;
                                        }

                                        v95 = vcnt_s8(__p[1]);
                                        v95.i16[0] = vaddlv_u8(v95);
                                        if (v95.u32[0] > 1uLL)
                                        {
                                          v96 = v94;
                                          if (__p[1] <= v94)
                                          {
                                            v96 = v94 % LODWORD(__p[1]);
                                          }
                                        }

                                        else
                                        {
                                          v96 = (LODWORD(__p[1]) - 1) & v94;
                                        }

                                        v97 = *(__p[0] + v96);
                                        if (!v97 || (v98 = *v97) == 0)
                                        {
LABEL_177:
                                          operator new();
                                        }

                                        while (1)
                                        {
                                          v99 = v98[1];
                                          if (v99 == v94)
                                          {
                                            if (*(v98 + 4) == v94)
                                            {
                                              v98[3] = v91;
                                              v68 = v148;
                                              v7 = v149;
                                              break;
                                            }
                                          }

                                          else
                                          {
                                            if (v95.u32[0] > 1uLL)
                                            {
                                              if (v99 >= __p[1])
                                              {
                                                v99 %= __p[1];
                                              }
                                            }

                                            else
                                            {
                                              v99 &= __p[1] - 1;
                                            }

                                            if (v99 != v96)
                                            {
                                              goto LABEL_177;
                                            }
                                          }

                                          v98 = *v98;
                                          if (!v98)
                                          {
                                            goto LABEL_177;
                                          }
                                        }
                                      }
                                    }

                                    ++v88;
                                  }

                                  while (v88 != v90);
                                }

                                v100 = v85 * v142;
                                if (*(v7 + 12))
                                {
                                  v105 = VariationValues;
                                  v107 = (v144 + __rev16(*v144));
                                  if (*v144)
                                  {
                                    v108 = v107;
                                  }

                                  else
                                  {
                                    v108 = 0;
                                  }

                                  v110 = *v108;
                                  v109 = v108 + 1;
                                  v111 = __rev16(v110);
                                  v102 = a1;
                                  v101 = a4;
                                  if (v110)
                                  {
                                    v112 = 4 * v111;
                                    v113 = v109;
                                    while (*v113 != 1868915817)
                                    {
                                      v113 += 2;
                                      v112 -= 4;
                                      if (!v112)
                                      {
                                        v106 = 0.0;
                                        goto LABEL_203;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v113 = v109;
                                  }

                                  if (v113 == &v109[2 * v111])
                                  {
                                    v106 = 0.0;
                                  }

                                  else
                                  {
                                    v106 = v100 * -0.5;
                                  }

LABEL_203:
                                  *(a4 + 32) = v106;
                                  v114 = 1;
                                  v115 = 40;
                                  goto LABEL_204;
                                }

                                v102 = a1;
                                v101 = a4;
                                v103 = *(a4 + 40);
                                v104 = *(a4 + 88);
                                v105 = VariationValues;
                                v106 = 0.0;
                                if (v103)
                                {
                                  if (v104)
                                  {
LABEL_205:
                                    v116 = v153[0];
                                    if (v153[0])
                                    {
                                      v117 = *v155;
                                      do
                                      {
                                        v118 = *(v116 + 3);
                                        v119 = TOpenTypeBaselineEngine::BaselineClassForTag(v116[4]);
                                        if (v119 >= 0x100u)
                                        {
                                          if ((v119 & 0xF8) != 0)
                                          {
                                            __break(1u);
                                          }

                                          v120 = v101 + 16 * (v119 & 7);
                                          if ((*(v120 + 8) & 1) == 0)
                                          {
                                            OTL::BaseCoordTable::GetCoord(v118, v102, v7, v117, v105);
                                            *v120 = v106 + v121;
                                            *(v120 + 8) = 1;
                                          }
                                        }

                                        v116 = *v116;
                                      }

                                      while (v116);
                                    }

                                    v122 = (v145 + __rev16(*v145));
                                    if (*v145)
                                    {
                                      v123 = v122;
                                    }

                                    else
                                    {
                                      v123 = 0;
                                    }

                                    v125 = *v123;
                                    v124 = v123 + 1;
                                    v126 = __rev16(v125);
                                    if (v125)
                                    {
                                      v127 = 4 * v126;
                                      v128 = v124;
                                      while (*v128 != 1868915817)
                                      {
                                        v128 += 2;
                                        v127 -= 4;
                                        if (!v127)
                                        {
                                          goto LABEL_226;
                                        }
                                      }
                                    }

                                    else
                                    {
                                      v128 = v124;
                                    }

                                    if (v128 == &v124[2 * v126])
                                    {
LABEL_226:
                                      if (!(*(**(v7 + 51) + 744))(*(v7 + 51)))
                                      {
                                        goto LABEL_233;
                                      }

                                      if (*(v7 + 12))
                                      {
                                        *(v101 + 80) = v100 + v106;
                                        v129 = (v101 + 88);
                                      }

                                      else
                                      {
                                        *(v101 + 80) = TBaselineEngineImplementation::GetTypoAscentDescent(v7, v87);
                                        *(v101 + 88) = 1;
                                        *(v101 + 32) = v131;
                                        v129 = (v101 + 40);
                                      }
                                    }

                                    else
                                    {
                                      v129 = (v101 + 88);
                                      if (*(v101 + 88))
                                      {
                                        goto LABEL_233;
                                      }

                                      if (*(v7 + 12))
                                      {
                                        v130 = v100 + v106;
                                      }

                                      else
                                      {
                                        if ((*(v101 + 40) & 1) == 0)
                                        {
                                          goto LABEL_262;
                                        }

                                        v130 = v100 + *(v101 + 32);
                                      }

                                      *(v101 + 80) = v130;
                                    }

                                    *v129 = 1;
LABEL_233:
                                    if ((*(v101 + 120) & 1) != 0 || (*(v7 + 12) & 1) != 0 || *(v101 + 104) != 1)
                                    {
                                      goto LABEL_256;
                                    }

                                    if (*(v101 + 40) == 1)
                                    {
                                      v132 = *(v101 + 32);
                                    }

                                    else
                                    {
                                      v132 = 1.79769313e308;
                                    }

                                    if (*(v101 + 88) == 1)
                                    {
                                      v133 = *(v101 + 80);
                                    }

                                    else
                                    {
                                      v133 = 1.79769313e308;
                                    }

                                    if (v132 != 1.79769313e308 && v133 == 1.79769313e308)
                                    {
                                      v135 = v100 + v132;
                                    }

                                    else
                                    {
                                      v135 = v132;
                                    }

                                    if (v133 != 1.79769313e308 && v135 != 1.79769313e308)
                                    {
                                      goto LABEL_255;
                                    }

                                    TypoAscentDescent = TBaselineEngineImplementation::GetTypoAscentDescent(v7, v87);
                                    if (v135 == 1.79769313e308)
                                    {
                                      v135 = v137;
                                    }

                                    if (v133 == 1.79769313e308)
                                    {
                                      v133 = TypoAscentDescent;
                                    }

                                    if (*(v101 + 104))
                                    {
LABEL_255:
                                      *(v101 + 112) = v133 - (*(v101 + 96) - v135);
                                      *(v101 + 120) = 1;
LABEL_256:
                                      TBaselineEngineImplementation::SynthesizeMissingBaselines(v7, v101, v106);
                                      v138 = v153[0];
                                      if (v153[0])
                                      {
                                        do
                                        {
                                          v139 = *v138;
                                          operator delete(v138);
                                          v138 = v139;
                                        }

                                        while (v139);
                                      }

                                      v140 = __p[0];
                                      __p[0] = 0;
                                      if (v140)
                                      {
                                        operator delete(v140);
                                      }

                                      return;
                                    }

LABEL_262:
                                    std::__throw_bad_optional_access[abi:fn200100]();
                                    TOpenTypeBaselineEngine::~TOpenTypeBaselineEngine(v141);
                                    return;
                                  }
                                }

                                else if ((v104 & 1) == 0)
                                {
                                  goto LABEL_205;
                                }

                                if (*(a4 + 24) == 1)
                                {
                                  *(a4 + 24) = 0;
                                  if (!v103)
                                  {
                                    goto LABEL_194;
                                  }
                                }

                                else if (!*(a4 + 40))
                                {
LABEL_194:
                                  if (!v104)
                                  {
                                    goto LABEL_205;
                                  }

LABEL_198:
                                  v114 = 0;
                                  v115 = 88;
LABEL_204:
                                  *(v101 + v115) = v114;
                                  goto LABEL_205;
                                }

                                *(a4 + 40) = 0;
                                if (!v104)
                                {
                                  goto LABEL_205;
                                }

                                goto LABEL_198;
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
      }
    }
  }
}

void TOpenTypeBaselineEngine::~TOpenTypeBaselineEngine(id *this)
{
  *this = &unk_1EF25BE88;
}

{
  *this = &unk_1EF25BE88;

  JUMPOUT(0x1865F22D0);
}

uint64_t TOpenTypeBaselineEngine::BaselineClassForTag(TOpenTypeBaselineEngine *this)
{
  if (this <= 1768187246)
  {
    switch(this)
    {
      case 0x68616E67:
        v1 = 1;
        v2 = 3;
        return v2 | (v1 << 8);
      case 0x69636662:
        v1 = 1;
        v2 = 6;
        return v2 | (v1 << 8);
      case 0x69636674:
        v1 = 1;
        v2 = 7;
        return v2 | (v1 << 8);
    }

LABEL_14:
    v2 = 0;
    v1 = 0;
    return v2 | (v1 << 8);
  }

  if (this > 1835103335)
  {
    if (this == 1835103336)
    {
      v1 = 1;
      v2 = 4;
      return v2 | (v1 << 8);
    }

    if (this == 1919905134)
    {
      v2 = 0;
      v1 = 1;
      return v2 | (v1 << 8);
    }

    goto LABEL_14;
  }

  if (this == 1768187247)
  {
    v1 = 1;
    v2 = 2;
    return v2 | (v1 << 8);
  }

  if (this != 1768191088)
  {
    goto LABEL_14;
  }

  v1 = 1;
  v2 = 5;
  return v2 | (v1 << 8);
}

uint64_t OTL::BASE::MapOfBaseScriptTableOffsets(uint64_t result, _WORD *a2)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0xAAAAAAAA3F800000;
  if (*a2)
  {
    v2 = 0;
    v3 = __rev16(*a2);
    if (v3 <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3;
    }

    do
    {
      v5 = &a2[3 * v2 + 1];
      v6 = bswap32(*v5);
      v7 = *(result + 8);
      if (!*&v7)
      {
        goto LABEL_22;
      }

      v8 = vcnt_s8(v7);
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.u32[0] > 1uLL)
      {
        v9 = v6;
        if (*&v7 <= v6)
        {
          v9 = v6 % v7.i32[0];
        }
      }

      else
      {
        v9 = (v7.i32[0] - 1) & v6;
      }

      v10 = *(*result + 8 * v9);
      if (!v10 || (v11 = *v10) == 0)
      {
LABEL_22:
        operator new();
      }

      while (1)
      {
        v12 = v11[1];
        if (v12 == v6)
        {
          break;
        }

        if (v8.u32[0] > 1uLL)
        {
          if (v12 >= *&v7)
          {
            v12 %= *&v7;
          }
        }

        else
        {
          v12 &= *&v7 - 1;
        }

        if (v12 != v9)
        {
          goto LABEL_22;
        }

LABEL_21:
        v11 = *v11;
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      if (*(v11 + 4) != v6)
      {
        goto LABEL_21;
      }

      *(v11 + 10) = *(v5 + 4);
      ++v2;
    }

    while (v2 != v4);
  }

  return result;
}

uint64_t *OTL::BASE::FindScript(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  if (!result)
  {
    if ((v3 - 58) >= 0xFFFFFFF8)
    {
      v7 = v3 & 0xFFFFFF00 | 0x20;
      if (v7 > 1835822367)
      {
        if (v7 <= 1869773087)
        {
          if (v7 == 1835822368)
          {
            v3 = 1835825517;
          }

          else if (v7 == 1836674336)
          {
            v3 = 1836674418;
          }
        }

        else
        {
          switch(v7)
          {
            case 1869773088:
              v3 = 1869773153;
              break;
            case 1952803872:
              v3 = 1952803957;
              break;
            case 1953328160:
              v3 = 1952542060;
              break;
          }
        }
      }

      else if (v7 <= 1735029279)
      {
        if (v7 == 1651402528)
        {
          v3 = 1650814567;
        }

        else if (v7 == 1684370976)
        {
          v3 = 1684371041;
        }
      }

      else
      {
        switch(v7)
        {
          case 1735029280:
            v3 = 1735748210;
            break;
          case 1735750176:
            v3 = 1735750261;
            break;
          case 1802396704:
            v3 = 1802396769;
            break;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void OTL::BaseCoordTable::GetCoord(OTL::BaseCoordTable *this, const OTL::BASE *a2, TBaseFont **a3, unint64_t a4, const __int16 *a5)
{
  v8 = bswap32(*this) >> 16;
  switch(v8)
  {
    case 3u:
      if (*a2 <= this && this + 6 <= *(a2 + 1))
      {
        v14 = a3 + 7;
        if (!*(a3 + 14))
        {
          TFont::InitStrikeMetrics(a3);
        }

        if (a4)
        {
          if (!*v14)
          {
            TFont::InitStrikeMetrics(a3);
          }

          if (*(this + 2))
          {
            v15 = (this + __rev16(*(this + 2)));
            if ((v15 + 3) <= *(a2 + 1) && v15[2] == 128)
            {
              ItemVariationStore::ValueForDeltaSet((a2 + 16), bswap32(*v15) >> 16, bswap32(v15[1]) >> 16, a4, a5, 0);
            }
          }
        }
      }

      break;
    case 2u:
      if (*a2 <= this && this + 8 <= *(a2 + 1))
      {
        if (!*(a3 + 14))
        {
          TFont::InitStrikeMetrics(a3);
        }

        v16 = bswap32(*(this + 3)) >> 16;
        memset(v17, 170, sizeof(v17));
        TFont::GetControlPoints(a3, v16 + 1, v17);
        if (v16 < (v17[1] - v17[0]) >> 4 || v17[0])
        {
          operator delete(v17[0]);
        }
      }

      break;
    case 1u:
      v9 = *a2 > this || this + 4 > *(a2 + 1);
      if (!v9 && !*(a3 + 14))
      {
        TFont::InitStrikeMetrics(a3);
      }

      break;
  }
}

uint64_t OTL::BASE::ValueForTag(OTL::BASE *this, const TFont *a2, unsigned int a3, int a4)
{
  v4 = *this;
  if (!*this)
  {
    return 0;
  }

  v8 = *(this + 1);
  if (*(a2 + 12))
  {
    v9 = *(v4 + 6);
  }

  else
  {
    v9 = *(v4 + 4);
  }

  v11 = (v4 + __rev16(v9));
  if (v9)
  {
    v12 = (v11 + 2) > v8;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    return 0;
  }

  v13 = v11 + __rev16(*v11);
  v14 = *v11 ? v13 : 0;
  v15 = v14 + 2;
  if (v4 > v14 || v15 > v8)
  {
    return 0;
  }

  v17 = __rev16(*v14);
  v18 = &v15[4 * v17];
  v19 = (v14 + 6) <= v8 ? (v8 - v15) >> 2 : 0;
  v20 = v18 <= v8 && v18 >= v15;
  if (!v20 && v19 != v17)
  {
    return 0;
  }

  v22 = 4 * v17;
  if (*v14)
  {
    v23 = v22;
    for (i = (v14 + 2); bswap32(*i) != a4; ++i)
    {
      v23 -= 4;
      if (!v23)
      {
        return 0;
      }
    }
  }

  else
  {
    i = (v14 + 2);
  }

  if (i == &v14[v22 + 2])
  {
    return 0;
  }

  v25 = v11[1];
  v26 = v11 + __rev16(v25);
  v27 = v25 ? v26 : 0;
  v28 = v27 + 2;
  if (v4 > v27 || v28 > v8)
  {
    return 0;
  }

  v30 = bswap32(*v27) >> 16;
  v31 = &v28[3 * v30];
  if (v31 < v28 || v31 > v8)
  {
    v33 = (v8 - v28) / 6;
    v34 = (v27 + 8) <= v8 ? v33 : 0;
    if (v34 != v30)
    {
      return 0;
    }
  }

  *&v35 = 0xAAAAAAAAAAAAAAAALL;
  *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v68 = v35;
  v69 = v35;
  v70 = 0xAAAAAAAAFFFFFFFFLL;
  OTL::BASE::MapOfBaseScriptTableOffsets(v68, v27);
  Script = OTL::BASE::FindScript(v68[0], v68[1], a3);
  if (!Script || !*(Script + 10))
  {
    std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(v68);
    return 0;
  }

  v37 = __rev16(*(Script + 10));
  v38 = &v27[v37];
  std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(v68);
  v39 = *this;
  v40 = *(this + 1);
  v41 = &v27[v37 + 6];
  if (&v27[v37 + 4] < *this || v41 > v40)
  {
    return 0;
  }

  v43 = bswap32(*(v38 + 2)) >> 16;
  v44 = v41 + 6 * v43;
  if (v44 < v41 || v44 > v40)
  {
    v46 = (v40 - v41) / 6;
    if ((v38 + 12) > v40)
    {
      v46 = 0;
    }

    if (v46 != v43)
    {
      return 0;
    }
  }

  v47 = __rev16(*v38);
  v48 = &v38[v47];
  v49 = *v38 ? &v38[v47] : 0;
  if (!*v38)
  {
    return 0;
  }

  v50 = (v48 + 4);
  if ((v48 + 2) < v39 || v50 > v40)
  {
    return 0;
  }

  v52 = bswap32(*(v48 + 1)) >> 16;
  v53 = v50 + 2 * v52;
  v54 = (v48 + 6) <= v40 ? (v40 - v50) >> 1 : 0;
  v55 = v53 <= v40 && v53 >= v50;
  if (!v55 && v54 != v52)
  {
    return 0;
  }

  v57 = 0;
  v58 = i - v15;
  v59 = &v27[v37 + 2 + v47];
  do
  {
    v60 = *(v59 + v57);
    v61 = v14[v57];
  }

  while (v60 == v61 && v57++ != 1);
  result = 0;
  if (v60 == v61 && v52 > (v58 >> 2))
  {
    v63 = *(v50 + 2 * (v58 >> 2));
    if (v63)
    {
      v64 = &v49[__rev16(v63)];
      if (v39 <= v64 && v64 + 4 <= v40)
      {
        v68[0] = 0xAAAAAAAAAAAAAAAALL;
        VariationValues = TFont::GetVariationValues(a2, v68);
        OTL::BaseCoordTable::GetCoord(v64, this, a2, v68[0], VariationValues);
        return v67;
      }
    }

    return 0;
  }

  return result;
}

uint64_t std::__function::__func<TOpenTypeBaselineEngine::ApplyScriptSpecificMetrics(void)::$_0,std::allocator<TOpenTypeBaselineEngine::ApplyScriptSpecificMetrics(void)::$_0>,BOOL ()(TRun &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF25BFD0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<TOpenTypeBaselineEngine::ApplyScriptSpecificMetrics(void)::$_0,std::allocator<TOpenTypeBaselineEngine::ApplyScriptSpecificMetrics(void)::$_0>,BOOL ()(TRun &)>::operator()(uint64_t a1, atomic_ullong *a2)
{
  v2 = *(a1 + 8);
  v3 = *(atomic_load_explicit(a2 + 7, memory_order_acquire) + 40);
  v4 = *(v3 + 408);
  if (v4 && (*(*v4 + 392))(v4))
  {
    v6 = *(*(v2 + 8) + 32);
    if (*(v3 + 12))
    {
      v7 = 1986098019;
    }

    else
    {
      v7 = 1751216995;
    }

    v8 = COERCE_DOUBLE(OTL::BASE::ValueForTag((v2 + 40), v3, *(*(v2 + 8) + 32), v7));
    v10 = v9;
    if ((v9 & 1) != 0 && v8 > 0.0)
    {
      *(TRun::EnsureRareData(a2) + 32) = v8;
    }

    if (*(v3 + 12))
    {
      v11 = 1986294627;
    }

    else
    {
      v11 = 1751413603;
    }

    v12 = COERCE_DOUBLE(OTL::BASE::ValueForTag((v2 + 40), v3, v6, v11));
    if (v13)
    {
      v10 = 1;
      if (v12 != 0.0)
      {
        *(TRun::EnsureRareData(a2) + 40) = fabs(v12);
        v10 = 1;
      }
    }

    if (*(v3 + 12))
    {
      v14 = 1986815856;
    }

    else
    {
      v14 = 1751934832;
    }

    v15 = COERCE_DOUBLE(OTL::BASE::ValueForTag((v2 + 40), v3, v6, v14));
    if (v16)
    {
      if (v15 > 0.0)
      {
        *(TRun::EnsureRareData(a2) + 48) = v15;
      }

      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void *TGenericBaselineEngine::TGenericBaselineEngine(void *a1, uint64_t a2)
{
  v3 = TBaselineEngineImplementation::TBaselineEngineImplementation(a1, a2, 0);
  *v3 = &unk_1EF25C018;
  v4 = v3[1];
  v5 = *(v4 + 40);
  v6 = *(v5 + 184);
  if (v6 && *(v6 + 128) == 1)
  {
    v7 = v4 + 80;
    v8 = *v6;
    v9 = v6[1];
    v10 = v6[3];
    *(v4 + 112) = v6[2];
    *(v4 + 128) = v10;
    *(v4 + 80) = v8;
    *(v4 + 96) = v9;
    v11 = v6[4];
    v12 = v6[5];
    v13 = v6[7];
    *(v4 + 176) = v6[6];
    *(v4 + 192) = v13;
    *(v4 + 144) = v11;
    *(v4 + 160) = v12;
    v5 = *(a1[1] + 40);
  }

  else
  {
    v14 = 0;
    v15 = v4 + 88;
    do
    {
      if (*(v15 + v14) == 1)
      {
        *(v15 + v14) = 0;
      }

      v14 += 16;
    }

    while (v14 != 128);
    v7 = v4 + 80;
  }

  v16 = *(atomic_load_explicit((v5 + 56), memory_order_acquire) + 40);
  if ((*(v16 + 12) & 1) == 0)
  {
    TBaselineEngineImplementation::SynthesizeMissingBaselines(v16, v7, 0.0);
  }

  return a1;
}

void TGenericBaselineEngine::~TGenericBaselineEngine(id *this)
{
  *this = &unk_1EF25BE88;
}

{
  *this = &unk_1EF25BE88;

  JUMPOUT(0x1865F22D0);
}

void TAATAnkrTable::TAATAnkrTable(TAATAnkrTable *this, const TFont *a2)
{
  (*(**(a2 + 51) + 488))(*(a2 + 51), 1634626418);
  v4 = atomic_load_explicit(this, memory_order_acquire);
  v5 = v4;
  if (v4)
  {
    BytePtr = CFDataGetBytePtr(v4);
  }

  else
  {
    BytePtr = 0;
  }

  *(this + 1) = BytePtr;
  v7 = atomic_load_explicit(this, memory_order_acquire);
  v8 = v7;
  if (v8)
  {
    v9 = v8;
    v10 = CFDataGetBytePtr(v8);

    if (v10)
    {
      v10 = (v10 + CFDataGetLength(v7));
    }
  }

  else
  {

    v10 = 0;
  }

  *(this + 3) = TAATLookupTable::BadTable;
  *(this + 2) = v10;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 36) = -1;
  v11 = *(this + 1);
  if (v11)
  {
    if (v11 + 12 > v10 || *v11)
    {
      v12 = TFont::DebugDescription(a2);
      CFLog();

      (*(**(a2 + 51) + 496))(*(a2 + 51));
      *(this + 1) = 0;
    }

    else
    {
      TAATLookupTable::SetTable(this + 24, (v11 + bswap32(*(v11 + 4))), v10);
      *(this + 10) = *(this + 1) + bswap32(*(*(this + 1) + 8));
    }
  }
}

double TAATAnkrTable::GetControlPointCoordinates(TAATAnkrTable *this, uint64_t a2, unsigned int a3)
{
  v5 = *MEMORY[0x1E695EFF8];
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v6 = *(this + 3);
  v7 = *(this + 4);
  v8 = (this + (v7 >> 1) + 24);
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v9 = v6(v8, a2, &v20);
  if (v9)
  {
    v10 = (*(this + 10) + (bswap32(*v9) >> 16));
    v11 = *(this + 1);
    v12 = *(this + 2);
    v13 = v11 > v10 || (v10 + 2) > v12;
    if (!v13)
    {
      v13 = bswap32(*v10) > a3;
      v14 = &v10[a3];
      v15 = (v14 + 1);
      v16 = (v14 + 2);
      if (v13 && v11 <= v15 && v16 <= v12)
      {
        return (bswap32(*v15) >> 16);
      }
    }
  }

  return v5;
}

uint64_t TBaselineAttributes::BaselineClassFromName(CFTypeRef cf1, const __CFString *a2)
{
  v3 = 0;
  v8[16] = *MEMORY[0x1E69E9840];
  v8[1] = 0xAAAAAAAAAAAAAA00;
  v8[3] = 0xAAAAAAAAAAAAAA01;
  v8[5] = 0xAAAAAAAAAAAAAA02;
  v8[7] = 0xAAAAAAAAAAAAAA05;
  v8[9] = 0xAAAAAAAAAAAAAA03;
  v8[11] = 0xAAAAAAAAAAAAAA04;
  v8[13] = 0xAAAAAAAAAAAAAA06;
  v8[0] = @"CTBaselineClassRoman";
  v8[2] = @"CTBaselineClassIdeographicCentered";
  v8[4] = @"CTBaselineClassIdeographicLow";
  v8[6] = @"CTBaselineClassIdeographicHigh";
  v8[8] = @"CTBaselineClassHanging";
  v8[10] = @"CTBaselineClassMath";
  v8[12] = @"CTBaselineClassICFBottom";
  v8[14] = @"CTBaselineClassICFTop";
  v8[15] = 0xAAAAAAAAAAAAAA07;
  while (1)
  {
    v4 = v8[v3];
    v5 = LOBYTE(v8[v3 + 1]);
    if (v4 == cf1 || cf1 && v4 && CFEqual(cf1, v4))
    {
      break;
    }

    v3 += 2;
    if (v3 == 16)
    {
      v5 = 0;
      v6 = 0;
      return v5 | (v6 << 8);
    }
  }

  v6 = 1;
  return v5 | (v6 << 8);
}

double TAATOpbdTable::LookupByDistance(TAATOpbdTable *this, uint64_t a2)
{
  DefaultBounds = TAATOpbdTable::GetDefaultBounds(this, a2);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  SideValues = TAATOpbdTable::GetSideValues(this, a2);
  if (SideValues && (*(*this + 12) & 1) == 0)
  {
    v12 = -(*(this + 1) * (bswap32(*SideValues) >> 16));
    v14.size.width = v8 - (v12 - DefaultBounds);
    v14.origin.x = v12;
    v14.origin.y = v6;
    v14.size.height = v10;
    CGRectGetMaxX(v14);
    return v12;
  }

  return DefaultBounds;
}

double TAATOpbdTable::LookupByControlPoint(TAATControlPointAccess **this, uint64_t a2)
{
  DefaultBounds = TAATOpbdTable::GetDefaultBounds(this, a2);
  SideValues = TAATOpbdTable::GetSideValues(this, a2);
  if (SideValues)
  {
    v6 = SideValues;
    v7 = *SideValues;
    if (v7 != 0xFFFF)
    {
      DefaultBounds = *(this + 1) * TAATControlPointAccess::GetControlPointCoordinates(this[8], a2, __rev16(v7));
    }

    v8 = v6[2];
    if (v8 != 0xFFFF)
    {
      TAATControlPointAccess::GetControlPointCoordinates(this[8], a2, __rev16(v8));
    }

    v9 = v6[3];
    if (v9 != 0xFFFF)
    {
      TAATControlPointAccess::GetControlPointCoordinates(this[8], a2, __rev16(v9));
    }

    v10 = v6[1];
    if (v10 != 0xFFFF)
    {
      TAATControlPointAccess::GetControlPointCoordinates(this[8], a2, __rev16(v10));
    }
  }

  return DefaultBounds;
}

unsigned __int8 *TAATOpbdTable::GetSideValues(TAATOpbdTable *this, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22 = v4;
  v21 = v4;
  v6 = *(this + 4);
  v5 = *(this + 5);
  v19 = TAATLookupTable::BadTable;
  v20 = 0;
  *(&v22 + 1) = 0;
  v23 = 0xAAAAAAAAAAAAFFFFLL;
  TAATLookupTable::SetTable(&v19, (v6 + 6), v5);
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v7 = v19;
  v8 = (&v19 + (v20 >> 1));
  if (v20)
  {
    v7 = *(*v8 + v19);
  }

  result = v7(v8, a2, &v18);
  if (result)
  {
    v10 = v18;
    v12 = *(this + 4);
    v11 = *(this + 5);
    v13 = &result[v18];
    v14 = v12 <= result && v13 >= result;
    if (!v14 || v13 > v11)
    {
      return 0;
    }

    if (v18)
    {
      LODWORD(v16) = 0;
      do
      {
        v17 = *result++;
        v16 = v17 | (v16 << 8);
        --v10;
      }

      while (v10);
    }

    else
    {
      v16 = 0;
    }

    result = (v12 + v16);
    if (v12 + v16 + 8 > v11)
    {
      return 0;
    }
  }

  return result;
}

BOOL TRunComparator::RunsSimilar(TRunComparator *this, const TRun *a2, const TRun *a3)
{
  if (*(a2 + 224) != *(a3 + 224) || *(a2 + 76) != *(a3 + 76))
  {
    return 0;
  }

  v11 = 0xAAAAAAAAAAAAAAAALL;
  TAttributes::OriginalFont(a2 + 5, &v11);
  v10 = 0xAAAAAAAAAAAAAAAALL;
  TAttributes::OriginalFont(a3 + 5, &v10);
  if (atomic_load_explicit(&v11, memory_order_acquire))
  {
    explicit = atomic_load_explicit(&v11, memory_order_acquire);
  }

  else
  {
    explicit = atomic_load_explicit(a2 + 7, memory_order_acquire);
  }

  v7 = *(explicit + 40);
  v8 = &v10;
  if (!atomic_load_explicit(&v10, memory_order_acquire))
  {
    v8 = (a3 + 56);
  }

  v6 = TFont::Compare(v7, *(atomic_load_explicit(v8, memory_order_acquire) + 40), 0) != 0;

  return v6;
}

void TScriptRun::GetScriptRunsForLine(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v104 = *MEMORY[0x1E69E9840];
  v73 = (*(a1 + 24) - *(a1 + 16)) >> 3;
  if (v73 >= 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 2863311360;
    while (1)
    {
      v8 = *(a1 + 16);
      if (v4 >= (*(a1 + 24) - v8) >> 3)
      {
        break;
      }

      v9 = *(*(v8 + 8 * v4) + 40);
      v11 = *(v9 + 8);
      v10 = *(v9 + 16);
      v12 = v4 + 1;
      if (v12 < v73)
      {
        v13 = 1;
        while (1)
        {
          v14 = *(a1 + 16);
          if (v12 >= (*(a1 + 24) - v14) >> 3)
          {
            goto LABEL_98;
          }

          v72 = v13;
          v15 = *(*(v14 + 8 * v12) + 40);
          v16 = v12;
          if (!(*(*a3 + 16))(a3, v9, v15))
          {
            v70 = v16;
            goto LABEL_17;
          }

          v17 = *(v15 + 8);
          if (v17 >= v11)
          {
            v18 = v11;
          }

          else
          {
            v18 = *(v15 + 8);
          }

          v19 = *(v15 + 16) + v17;
          if (v11 + v10 > v19)
          {
            v19 = v11 + v10;
          }

          v10 = v19 - v18;
          v20 = v16 + 1;
          v13 = v20 < v73;
          v11 = v18;
          v12 = v20;
          if (v73 == v20)
          {
            v72 = v20 < v73;
            v11 = v18;
            v70 = v73;
            goto LABEL_17;
          }
        }
      }

      v70 = v12;
      v72 = 0;
LABEL_17:
      *&v21 = 0xAAAAAAAAAAAAAAAALL;
      *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v102[13] = v21;
      v102[14] = v21;
      v102[11] = v21;
      v102[12] = v21;
      v102[9] = v21;
      v102[10] = v21;
      v102[7] = v21;
      v102[8] = v21;
      v102[5] = v21;
      v102[6] = v21;
      v102[3] = v21;
      v102[4] = v21;
      v102[1] = v21;
      v102[2] = v21;
      v101 = v21;
      v102[0] = v21;
      v100 = 0xAAAAAAAAAAAAAAAALL;
      *&v85[8] = v21;
      v82 = v11 + v10;
      v83 = v11;
      v85[16] = 0;
      v84 = 0;
      *v85 = 0;
      *&v85[5] = 0;
      v86 = a1;
      v87 = a2;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0;
      v22 = *(a2 + 16);
      v101 = 0uLL;
      v100 = 0;
      *&v98 = v22;
      v103 = v102;
      v74 = v7 | v6 | v5;
      if (TScriptRun::NextRun(&v82, v74 | 0xAAAAAA0000000000))
      {
        while (1)
        {
          v75 = *&v85[8];
          v23 = v83;
          if (v84 >= 1)
          {
            break;
          }

          v42 = 0;
          v26 = v83;
LABEL_87:
          v79 = v42;
          v81 = -1431655766;
          v78 = v26;
          v80 = v75;
          v63 = *a4;
          v62 = a4[1];
          if (v62 != *a4)
          {
            v64 = 0xAAAAAAAAAAAAAAABLL * (&v62[-*a4] >> 3);
            do
            {
              v65 = v64 >> 1;
              v66 = &v63[24 * (v64 >> 1)];
              v68 = *v66;
              v67 = (v66 + 3);
              v64 += ~(v64 >> 1);
              if (v68 < v26)
              {
                v63 = v67;
              }

              else
              {
                v64 = v65;
              }
            }

            while (v64);
            v62 = v63;
          }

          std::vector<TScriptRunInfo,TInlineBufferAllocator<TScriptRunInfo,30ul>>::insert(a4, v62, &v78);
          if (!TScriptRun::NextRun(&v82, v74 | 0xAAAAAA0000000000))
          {
            goto LABEL_95;
          }
        }

        v24 = (v83 + v84);
        v25 = v83;
        v26 = v83;
        while (1)
        {
          RunWithCharIndex = TLine::FindRunWithCharIndex(a1, v25, 1);
          v28 = *(a1 + 16);
          if (RunWithCharIndex >= (*(a1 + 24) - v28) >> 3)
          {
            goto LABEL_98;
          }

          v29 = *(*(v28 + 8 * RunWithCharIndex) + 40);
          v30 = v29[1];
          v31 = (v30 + v29[2]);
          if (v31 >= v24)
          {
            v32 = v24;
          }

          else
          {
            v32 = (v30 + v29[2]);
          }

          v33 = v32 - v23;
          v34 = v30 <= v23 && v23 < v31;
          if (v34)
          {
            v35 = v23;
          }

          else
          {
            v35 = 0;
          }

          if (!v34)
          {
            v33 = 0;
          }

          v36 = v32 - v30;
          if (v23 <= v30 && v30 < v24)
          {
            v38 = v36;
          }

          else
          {
            v30 = v35;
            v38 = v33;
          }

          if (v30 >= v26)
          {
            v39 = v26;
          }

          else
          {
            v39 = v30;
          }

          v40 = v30 + v38;
          if (v25 <= v40)
          {
            v41 = v40;
          }

          else
          {
            v41 = v25;
          }

          v42 = v41 - v39;
          if (v24 <= v40)
          {
            v26 = v39;
            goto LABEL_87;
          }

          while (1)
          {
            v43 = v29[3];
            if (!v43)
            {
              v26 = v39;
              goto LABEL_83;
            }

            v44 = v43[1];
            v45 = v43[2] + v44;
            if (v45 >= v24)
            {
              v46 = v24;
            }

            else
            {
              v46 = (v43[2] + v44);
            }

            v47 = (v46 - v23);
            v48 = v44 <= v23 && v23 < v45;
            if (v48)
            {
              v49 = v23;
            }

            else
            {
              v49 = 0;
            }

            if (!v48)
            {
              v47 = 0;
            }

            v50 = &v46[-v44];
            v51 = v23 <= v44 && v44 < v24;
            v52 = v51 ? v43[1] : v49;
            v53 = (v51 ? v50 : v47);
            if (!TFont::Compare(*(atomic_load_explicit(v29 + 7, memory_order_acquire) + 40), *(atomic_load_explicit(v43 + 7, memory_order_acquire) + 40), 0))
            {
              break;
            }

            if (v52 >= v39)
            {
              v26 = v39;
            }

            else
            {
              v26 = v52;
            }

            v54 = v39 + v42;
            if (v39 + v42 <= v52 + v53)
            {
              v54 = v52 + v53;
            }

            v42 = v54 - v26;
            v29 = v43;
            v39 = v26;
            if (v24 <= (v52 + v53))
            {
              goto LABEL_83;
            }
          }

          v79 = v42;
          v81 = -1431655766;
          v78 = v39;
          v80 = v75;
          v56 = *a4;
          v55 = a4[1];
          if (v55 != *a4)
          {
            v57 = 0xAAAAAAAAAAAAAAABLL * (&v55[-*a4] >> 3);
            do
            {
              v58 = v57 >> 1;
              v59 = &v56[24 * (v57 >> 1)];
              v61 = *v59;
              v60 = (v59 + 3);
              v57 += ~(v57 >> 1);
              if (v61 < v39)
              {
                v56 = v60;
              }

              else
              {
                v57 = v58;
              }
            }

            while (v57);
            v55 = v56;
          }

          std::vector<TScriptRunInfo,TInlineBufferAllocator<TScriptRunInfo,30ul>>::insert(a4, v55, &v78);
          v26 = (v39 + v42);
          v42 = 0;
LABEL_83:
          v25 = v26 + v42;
          if ((v26 + v42) >= v24)
          {
            goto LABEL_87;
          }
        }
      }

LABEL_95:
      if (!v72)
      {
        goto LABEL_99;
      }

      v5 = v85[12];
      v7 = *&v85[12] & 0xFFFFFF00;
      v6 = *&v85[12] & 0xFF00000000;
      v78 = &v100;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v78);
      v4 = v70;
      if (v70 >= v73)
      {
        return;
      }
    }

LABEL_98:
    __break(1u);
LABEL_99:
    v78 = &v100;
    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v78);
  }
}

void *std::vector<TScriptRunInfo,TInlineBufferAllocator<TScriptRunInfo,30ul>>::insert(void *result, char *__src, unint64_t a3)
{
  v5 = result;
  v6 = result[1];
  v7 = result[2];
  if (v6 < v7)
  {
    if (__src == v6)
    {
      v17 = *a3;
      *(v6 + 2) = *(a3 + 16);
      *v6 = v17;
      result[1] = v6 + 24;
      return result;
    }

    v8 = __src + 24;
    if (v6 < 0x18)
    {
      v9 = result[1];
    }

    else
    {
      v9 = (v6 + 24);
      v10 = *(v6 - 24);
      *(v6 + 2) = *(v6 - 1);
      *v6 = v10;
    }

    result[1] = v9;
    if (v6 != v8)
    {
      result = memmove(__src + 24, __src, v6 - v8 - 4);
      v9 = *(v5 + 8);
    }

    if (v9 >= __src)
    {
      v20 = v9 <= a3 || __src > a3;
      v21 = 24;
      if (v20)
      {
        v21 = 0;
      }

      v22 = a3 + v21;
      v23 = *v22;
      *(__src + 4) = *(v22 + 16);
      *__src = v23;
      return result;
    }

    __break(1u);
LABEL_36:
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  v11 = *result;
  v34 = 0;
  v35 = 0;
  *&v36 = 0;
  v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v11) >> 3) + 1;
  if (v12 > 0xAAAAAAAAAAAAAAALL)
  {
    goto LABEL_36;
  }

  v13 = __src - v11;
  v14 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v11) >> 3);
  if (2 * v14 > v12)
  {
    v12 = 2 * v14;
  }

  if (v14 >= 0x555555555555555)
  {
    v15 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v15 = v12;
  }

  v37 = (result + 3);
  if (v15)
  {
    v16 = std::allocator_traits<TInlineBufferAllocator<TScriptRunInfo,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<TScriptRunInfo,30ul>>((result + 3), v15);
  }

  else
  {
    v16 = 0;
  }

  v18 = v16 + 8 * (v13 >> 3);
  v19 = v16 + 24 * v15;
  *(&v36 + 1) = v19;
  if (0xAAAAAAAAAAAAAAABLL * (v13 >> 3) == v15)
  {
    if (v13 < 1)
    {
      if (v11 == __src)
      {
        v24 = 1;
      }

      else
      {
        v24 = 0x5555555555555556 * (v13 >> 3);
      }

      v42 = v5 + 24;
      v25 = std::allocator_traits<TInlineBufferAllocator<TScriptRunInfo,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<TScriptRunInfo,30ul>>(v5 + 24, v24);
      v38 = v16;
      v39 = v16 + 8 * (v13 >> 3);
      *(&v36 + 1) = v25 + 24 * v26;
      v27 = v25 + 24 * (v24 >> 2);
      v40 = v39;
      v41 = v19;
      std::__split_buffer<std::pair<double,CFRange>,TInlineBufferAllocator<std::pair<double,CFRange>,30ul> &>::~__split_buffer(&v38);
      v18 = v27;
    }

    else
    {
      v18 -= 24 * ((1 - 0x5555555555555555 * (v13 >> 3)) >> 1);
    }
  }

  v28 = *a3;
  *(v18 + 16) = *(a3 + 16);
  *v18 = v28;
  memcpy((v18 + 24), __src, *(v5 + 8) - __src);
  v29 = *v5;
  *&v36 = v18 + 24 + *(v5 + 8) - __src;
  *(v5 + 8) = __src;
  v30 = (__src - v29);
  v31 = (v18 - (__src - v29));
  memcpy(v31, v29, v30);
  v32 = *v5;
  *v5 = v31;
  v33 = *(v5 + 16);
  *(v5 + 8) = v36;
  *&v36 = v32;
  *(&v36 + 1) = v33;
  v34 = v32;
  v35 = v32;
  return std::__split_buffer<std::pair<double,CFRange>,TInlineBufferAllocator<std::pair<double,CFRange>,30ul> &>::~__split_buffer(&v34);
}

uint64_t std::allocator_traits<TInlineBufferAllocator<TScriptRunInfo,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<TScriptRunInfo,30ul>>(uint64_t a1, unint64_t a2)
{
  v2 = (a1 + 720);
  result = *(a1 + 720);
  v4 = result + 24 * a2;
  if (v4 > v2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *v2 = v4;
  return result;
}

atomic_ullong *OS2::OS2(atomic_ullong *a1, atomic_ullong *a2)
{
  *a1 = atomic_exchange(a2, 0);
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if (explicit)
  {
    explicit = CFDataGetBytePtr(explicit);
  }

  a1[1] = explicit;
  Length = atomic_load_explicit(a1, memory_order_acquire);
  if (Length)
  {
    Length = CFDataGetLength(Length);
  }

  a1[2] = Length;
  return a1;
}

BOOL DictHasUnmatchedNames(NSDictionary *a1, NSString *a2, NSString *a3, NSString *a4)
{
  if (!a4)
  {
    return 0;
  }

  v7 = [(NSDictionary *)a1 objectForKey:a2];
  if ([(NSString *)a4 isEqualToString:v7])
  {
    return 0;
  }

  v9 = [(NSDictionary *)a1 objectForKey:a3];
  return ![(NSString *)a4 isEqualToString:v9]&& (v7 | v9) != 0;
}

BOOL CTFontDescriptorMatchFontDescriptorsWithProgressHandlerCore(void *a1, void *a2, uint64_t a3, const void *a4)
{
  if (a1)
  {
    if (qword_1ED5682A0 != -1)
    {
      dispatch_once(&qword_1ED5682A0, &__block_literal_global_186);
    }

    v8 = qword_1ED5682A8;
    v9 = [FontAssetDownloadManager alloc];
    if (v9)
    {
      v14.receiver = v9;
      v14.super_class = FontAssetDownloadManager;
      v10 = objc_msgSendSuper2(&v14, sel_init);
      v11 = v10;
      if (v10)
      {
        TCFRef<__CTFont const*>::Retain(v10 + 1, a1);
        if (atomic_load_explicit(v11 + 2, memory_order_acquire) != a2)
        {
        }

        v11[3] = _Block_copy(a4);
        v11[4] = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
        v11[5] = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
        v11[6] = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
      }
    }

    else
    {
      v11 = 0;
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___ZL59CTFontDescriptorMatchFontDescriptorsWithProgressHandlerCorePK9__CFArrayPK7__CFSetmU13block_pointerFb29CTFontDescriptorMatchingStatePK14__CFDictionaryE_block_invoke;
    v13[3] = &unk_1E6E3F080;
    v13[4] = v11;
    v13[5] = a3;
    dispatch_async(v8, v13);
  }

  return a1 != 0;
}

CFTypeRef CopyDownloadableFontAttributesForRequests(const __CFArray *a1, unint64_t a2)
{
  v84 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v57 = a2;
  if ([(__CFArray *)a1 count]== 1)
  {
    LOBYTE(v4) = (a2 & 0x1000 | [-[__CFArray firstObject](a1 "firstObject")]) != 0;
  }

  else
  {
    v4 = (a2 >> 12) & 1;
  }

  v51 = v4;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  obj = a1;
  v5 = [(__CFArray *)a1 countByEnumeratingWithState:&v75 objects:v83 count:16];
  if (!v5)
  {
    v13 = 2;
    goto LABEL_26;
  }

  v6 = 0;
  v7 = *v76;
  v8 = 1;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v76 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v75 + 1) + 8 * i);
      if (v8)
      {
        v8 = [objc_msgSend(*(*(&v75 + 1) + 8 * i) objectForKey:{@"NSCTFontDownloadedAttribute", "BOOLValue"}];
        if ((v6 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v8 = 0;
        if ((v6 & 1) == 0)
        {
LABEL_11:
          v6 = [objc_msgSend(v10 objectForKey:{@"CTFontAllowCellularDownloadAttribute", "BOOLValue"}];
          continue;
        }
      }

      v6 = 1;
    }

    v5 = [(__CFArray *)obj countByEnumeratingWithState:&v75 objects:v83 count:16];
  }

  while (v5);
  if (v8)
  {
    v11 = 6;
  }

  else
  {
    v11 = 4;
  }

  if (v8)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  if (v6)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

LABEL_26:
  v74 = 0;
  v50 = [FontAssetDownloadManager availableMobileAssetsWithOptions:v13 manager:0 error:&v74];
  cf = [MEMORY[0x1E695DF70] array];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v49 = [v50 countByEnumeratingWithState:&v70 objects:v82 count:16];
  if (!v49)
  {
    goto LABEL_92;
  }

  v53 = 0;
  v46 = (v13 >> 1) & 1;
  v48 = *v71;
  while (2)
  {
    v14 = 0;
    while (2)
    {
      if (*v71 != v48)
      {
        v15 = v14;
        objc_enumerationMutation(v50);
        v14 = v15;
      }

      v47 = v14;
      v60 = *(*(&v70 + 1) + 8 * v14);
      v16 = [v60 attributes];
      v17 = [v16 objectForKey:@"FontDesignLanguages"];
      v54 = [v16 objectForKey:@"FontInfo4"];
      v55 = [v16 objectForKeyedSubscript:@"_DownloadSize"];
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v58 = [v54 countByEnumeratingWithState:&v66 objects:v81 count:16];
      ++v53;
      if (v58)
      {
        v56 = *v67;
        v18 = v46;
        v19 = v46;
        do
        {
          v20 = 0;
          do
          {
            if (*v67 != v56)
            {
              v21 = v20;
              objc_enumerationMutation(v54);
              v20 = v21;
            }

            v59 = v20;
            v22 = *(*(&v66 + 1) + 8 * v20);
            if ((v57 & 2) == 0)
            {
              v23 = [*(*(&v66 + 1) + 8 * v20) objectForKey:@"FontFamilyName"];
              v24 = [(NSDictionary *)v22 objectForKey:@"PlatformDelivery"];
              if (![v23 length] || objc_msgSend(v23, "characterAtIndex:", 0) == 46 || (IsInvisiblePlatformDelivery(v24) & 1) != 0)
              {
                goto LABEL_88;
              }
            }

            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            v25 = [(__CFArray *)obj countByEnumeratingWithState:&v62 objects:v80 count:16];
            if (!v25)
            {
              goto LABEL_88;
            }

            v26 = *v63;
            while (2)
            {
              v27 = 0;
              do
              {
                if (*v63 != v26)
                {
                  objc_enumerationMutation(obj);
                }

                v28 = *(*(&v62 + 1) + 8 * v27);
                v29 = [v28 objectForKey:@"NSCTFontDownloadedAttribute"];
                v30 = v29;
                if (v29)
                {
                  if (v19)
                  {
                    v19 = 1;
                    if ((v18 ^ [v29 BOOLValue]))
                    {
                      goto LABEL_53;
                    }
                  }

                  else
                  {
                    objc_opt_self();
                    v31 = [v60 state];
                    if (v31 <= 6 && ((1 << v31) & 0x6C) != 0)
                    {
                      v19 = 1;
                      v18 = 1;
                      if (([v30 BOOLValue] & 1) == 0)
                      {
                        goto LABEL_53;
                      }
                    }

                    else
                    {
                      v18 = 0;
                      v19 = 1;
                      if ([v30 BOOLValue])
                      {
                        goto LABEL_53;
                      }
                    }
                  }
                }

                if ([FontAssetDownloadManager fontInfo:v22 andAssetDesignLanguages:v17 matchesRequest:v28])
                {
                  objc_opt_self();
                  v33 = [MEMORY[0x1E695DF90] dictionary];
                  [v33 setObject:-[NSDictionary objectForKey:](v22 forKey:{"objectForKey:", @"PostScriptFontName", @"NSFontNameAttribute"}];
                  v34 = [(NSDictionary *)v22 objectForKey:@"FontFamilyName"];
                  if (v34)
                  {
                    [v33 setObject:v34 forKey:@"NSFontFamilyAttribute"];
                  }

                  v35 = [(NSDictionary *)v22 objectForKey:@"PreferredFamilyName"];
                  if (v35)
                  {
                    [v33 setObject:v35 forKey:@"NSFontFamilyAttribute"];
                  }

                  v36 = [(NSDictionary *)v22 objectForKey:@"FontStyleName"];
                  if (v36)
                  {
                    [v33 setObject:v36 forKey:@"NSFontFaceAttribute"];
                  }

                  v37 = [(NSDictionary *)v22 objectForKey:@"PreferredStyleName"];
                  if (v37)
                  {
                    [v33 setObject:v37 forKey:@"NSFontFaceAttribute"];
                  }

                  v38 = [(NSDictionary *)v22 objectForKey:@"FontDesignLanguages"];
                  if ([v38 count] || (v38 = v17, objc_msgSend(v17, "count")))
                  {
                    [v33 setObject:v38 forKey:@"NSCTFontDesignLanguagesAttribute"];
                  }

                  [v33 setObject:MEMORY[0x1E695E118] forKey:@"NSCTFontDownloadableAttribute"];
                  v39 = [(NSDictionary *)v22 objectForKey:@"DisplayNames"];
                  CopyValueForCurrentUser(v39, 0, &v79);
                  explicit = atomic_load_explicit(&v79, memory_order_acquire);

                  if (explicit)
                  {
                    [v33 setObject:explicit forKey:@"NSFontVisibleNameAttribute"];
                  }

                  v41 = [MEMORY[0x1E695DF90] dictionary];
                  if ([(__CFDictionary *)v39 count])
                  {
                    [v41 setObject:v39 forKey:@"NSFontVisibleNameAttribute"];
                  }

                  v42 = [(NSDictionary *)v22 objectForKey:@"LocalizedFamilyNames"];
                  if ([v42 count])
                  {
                    [v41 setObject:v42 forKey:@"NSFontFamilyAttribute"];
                  }

                  v43 = [(NSDictionary *)v22 objectForKey:@"LocalizedStyleNames"];
                  if ([v43 count])
                  {
                    [v41 setObject:v43 forKey:@"NSFontFaceAttribute"];
                  }

                  if ([v41 count])
                  {
                    [v33 setObject:v41 forKey:0x1EF26D230];
                  }

                  if ((v19 & 1) == 0)
                  {
                    objc_opt_self();
                    v44 = [v60 state];
                    if (v44 > 6)
                    {
                      v18 = 0;
                    }

                    else
                    {
                      v18 = 0x6Cu >> v44;
                    }
                  }

                  if (v55)
                  {
                    [v33 setObject:v55 forKey:@"_DownloadSize"];
                  }

                  [v33 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", v18 & 1), @"NSCTFontDownloadedAttribute"}];
                  [v33 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v53), @"LocalID"}];
                  [cf addObject:v33];
                  if ((v51 & 1) == 0)
                  {
                    v19 = 1;
                    goto LABEL_88;
                  }

                  goto LABEL_92;
                }

LABEL_53:
                ++v27;
              }

              while (v25 != v27);
              v32 = [(__CFArray *)obj countByEnumeratingWithState:&v62 objects:v80 count:16];
              v25 = v32;
              if (v32)
              {
                continue;
              }

              break;
            }

LABEL_88:
            v20 = v59 + 1;
          }

          while (v59 + 1 != v58);
          v58 = [v54 countByEnumeratingWithState:&v66 objects:v81 count:16];
        }

        while (v58);
      }

      v14 = v47 + 1;
      if (v47 + 1 != v49)
      {
        continue;
      }

      break;
    }

    v49 = [v50 countByEnumeratingWithState:&v70 objects:v82 count:16];
    if (v49)
    {
      continue;
    }

    break;
  }

LABEL_92:
  if (![cf count])
  {
    return 0;
  }

  return CFRetain(cf);
}

void TDescriptorSource::CopyDownloadableDescriptorsForRequest(TDescriptorSource *this@<X0>, const __CFDictionary *a2@<X1>, void *a3@<X8>)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v17[0] = this;
  v4 = CopyDownloadableFontAttributesForRequests([MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1], a2);
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = CTFontDescriptorCreateWithAttributesAndOptions(*(*(&v12 + 1) + 8 * v8), 0x40000000);
        if (v9)
        {
          v10 = v9;
          [v5 addObject:v9];
          CFRelease(v10);
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = v5;
  *a3 = atomic_exchange(&v11, 0);
}

void *CTFontDescriptorDownloadMatchingFontDescriptors(void *result, uint64_t a2, const void *a3)
{
  if ((a2 & 1) == 0)
  {
    return CTFontDescriptorMatchFontDescriptorsWithProgressHandlerCore(result, 0, a2, a3);
  }

  return result;
}

BOOL CTFontDescriptorRequiresFontAssetRequest(const __CTFontDescriptor *a1)
{
  v1 = CTFontDescriptorCopyAttributes(a1);
  v10 = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableDictionary::TCFMutableDictionary(&v10, v1);
  explicit = atomic_load_explicit(&v10, memory_order_acquire);
  CFDictionarySetValue(explicit, @"NSCTFontDownloadableAttribute", *MEMORY[0x1E695E4D0]);
  v3 = atomic_load_explicit(&v10, memory_order_acquire);
  CFDictionarySetValue(v3, @"NSCTFontDownloadedAttribute", *MEMORY[0x1E695E4C0]);
  v9 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::CopyDownloadableDescriptorsForRequest(atomic_load_explicit(&v10, memory_order_acquire), 0x1000, &v9);
  v4 = atomic_load_explicit(&v9, memory_order_acquire);
  v5 = v4;
  if (v4)
  {
    Count = CFArrayGetCount(v4);
  }

  else
  {
    Count = 0;
  }

  v7 = Count > 0;

  return v7;
}

void sub_1847389CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

uint64_t GSFontLibraryCore(char **a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = GSFontLibraryCore(char **)::frameworkLibrary;
  v6 = GSFontLibraryCore(char **)::frameworkLibrary;
  if (!GSFontLibraryCore(char **)::frameworkLibrary)
  {
    v7 = "/System/Library/PrivateFrameworks/FontServices.framework/libGSFont.dylib";
    v8 = 0;
    v4[3] = _sl_dlopen();
    GSFontLibraryCore(char **)::frameworkLibrary = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_184738B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t getGSFontUpdateFontAssetLastAccessedTimeSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getGSFontUpdateFontAssetLastAccessedTimeSymbolLoc(void)::ptr;
  v6 = getGSFontUpdateFontAssetLastAccessedTimeSymbolLoc(void)::ptr;
  if (!getGSFontUpdateFontAssetLastAccessedTimeSymbolLoc(void)::ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = ___ZL49getGSFontUpdateFontAssetLastAccessedTimeSymbolLocv_block_invoke;
    v2[3] = &unk_1E6E3F058;
    v2[4] = &v3;
    ___ZL49getGSFontUpdateFontAssetLastAccessedTimeSymbolLocv_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_184738BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL17GSFontLibraryCorePPc_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  GSFontLibraryCore(char **)::frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *___ZL49getGSFontUpdateFontAssetLastAccessedTimeSymbolLocv_block_invoke(void *a1)
{
  v7 = 0;
  v3 = GSFontLibraryCore(&v7);
  if (!v3)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *GSFontLibrary()"];
    v4 = [a1 handleFailureInFunction:v6 file:@"TDescriptorSourceDownloadableAsset.cpp" lineNumber:52 description:{@"%s", v7}];
    __break(1u);
    goto LABEL_5;
  }

  v1 = v3;
  v4 = v7;
  if (v7)
  {
LABEL_5:
    free(v4);
  }

  result = dlsym(v1, "GSFontUpdateFontAssetLastAccessedTime");
  *(*(a1[4] + 8) + 24) = result;
  getGSFontUpdateFontAssetLastAccessedTimeSymbolLoc(void)::ptr = *(*(a1[4] + 8) + 24);
  return result;
}

dispatch_queue_t ___ZL48CTFontDescriptorGetDownloadProgressCallbackQueuev_block_invoke()
{
  result = dispatch_queue_create("com.apple.CoreText.downloadProgressCallback", 0);
  qword_1ED568298 = result;
  return result;
}

void ___ZL59CTFontDescriptorMatchFontDescriptorsWithProgressHandlerCorePK9__CFArrayPK7__CFSetmU13block_pointerFb29CTFontDescriptorMatchingStatePK14__CFDictionaryE_block_invoke(uint64_t a1)
{
  location[16] = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v2 = *(a1 + 32);
  if (!v2)
  {
LABEL_222:
    v139 = 0;
    goto LABEL_218;
  }

  v3 = a1;
  v4 = *(a1 + 40);
  if (![(FontAssetDownloadManager *)v2 callProgressCallback:?])
  {
    goto LABEL_217;
  }

  val = v2;
  v146 = v3;
  if ((v4 & 2) != 0)
  {
    explicit = atomic_load_explicit((v2 + 8), memory_order_acquire);
  }

  else
  {
    explicit = [MEMORY[0x1E695DF70] array];
    v6 = atomic_load_explicit((v2 + 8), memory_order_acquire);
    if (v6)
    {
      Count = CFArrayGetCount(v6);
      if (Count)
      {
        v8 = Count;
        v9 = 0;
        allocator = *MEMORY[0x1E695E480];
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
          MatchingFontDescriptorsWithOptions = CTFontDescriptorCreateMatchingFontDescriptorsWithOptions(ValueAtIndex, atomic_load_explicit(val + 2, memory_order_acquire), 512);
          v12 = MatchingFontDescriptorsWithOptions;
          v13 = v12;
          if (!v12)
          {
            break;
          }

          v14 = CFArrayGetCount(v12);

          if (!v14)
          {
            goto LABEL_27;
          }

          if (GSFontLibraryCore(0) && getGSFontUpdateFontAssetLastAccessedTimeSymbolLoc())
          {
            Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
            if (MatchingFontDescriptorsWithOptions)
            {
              v16 = CFArrayGetCount(MatchingFontDescriptorsWithOptions);
              if (v16)
              {
                for (i = 0; i != v16; ++i)
                {
                  v18 = CFArrayGetValueAtIndex(MatchingFontDescriptorsWithOptions, i);
                  v19 = *(v18 + 5);
                  if ((*(v19 + 16) & 0x80000000) == 0)
                  {
                    TDescriptor::InitBaseFont(*(v18 + 5), 0, 0.0);
                  }

                  v20 = atomic_load_explicit((v19 + 32), memory_order_acquire);
                  location[0] = 0xAAAAAAAAAAAAAAAALL;
                  if (v20)
                  {
                    (*(*v20 + 200))(location);
                  }

                  else
                  {
                    location[0] = 0;
                  }

                  if (atomic_load_explicit(location, memory_order_acquire))
                  {
                    v21 = atomic_load_explicit(location, memory_order_acquire);
                    CFArrayAppendValue(Mutable, v21);
                  }
                }
              }
            }

            if (CFArrayGetCount(Mutable) >= 1)
            {
              GSFontUpdateFontAssetLastAccessedTimeSymbolLoc = getGSFontUpdateFontAssetLastAccessedTimeSymbolLoc();
              if (!GSFontUpdateFontAssetLastAccessedTimeSymbolLoc)
              {
                v140 = [MEMORY[0x1E696AAA8] currentHandler];
                [v140 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void gsFontUpdateFontAssetLastAccessedTime(CFArrayRef)") description:{@"TDescriptorSourceDownloadableAsset.cpp", 53, @"%s", dlerror()}];
                __break(1u);
                goto LABEL_222;
              }

              GSFontUpdateFontAssetLastAccessedTimeSymbolLoc(Mutable);
            }
          }

LABEL_28:

          if (++v9 == v8)
          {
            goto LABEL_31;
          }
        }

LABEL_27:
        [explicit addObject:ValueAtIndex];
        goto LABEL_28;
      }
    }
  }

LABEL_31:
  if (![explicit count])
  {
    goto LABEL_195;
  }

  v23 = *(val + 4);
  if (explicit)
  {
    [v23 setObject:explicit forKey:@"CTFontDescriptorMatchingDescriptors"];
  }

  else
  {
    [v23 removeObjectForKey:@"CTFontDescriptorMatchingDescriptors"];
  }

  v189 = 0u;
  v190 = 0u;
  *from = 0u;
  v188 = 0u;
  v24 = [explicit countByEnumeratingWithState:from objects:location count:16];
  if (!v24)
  {
    v36 = 2;
    goto LABEL_61;
  }

  v25 = 0;
  v26 = *v188;
  v27 = 1;
  do
  {
    for (j = 0; j != v24; ++j)
    {
      if (*v188 != v26)
      {
        objc_enumerationMutation(explicit);
      }

      v29 = *(from[1] + j);
      if (v27)
      {
        v30 = (*(v29 + 40) + 8);
        atomic_load_explicit(v30, memory_order_acquire);
        Value = atomic_load_explicit(v30, memory_order_acquire);
        if (Value)
        {
          Value = CFDictionaryGetValue(Value, @"NSCTFontDownloadedAttribute");
        }

        v27 = [(__CFDictionary *)Value BOOLValue];
        if (v25)
        {
LABEL_48:
          v25 = 1;
          continue;
        }
      }

      else
      {
        v27 = 0;
        if (v25)
        {
          goto LABEL_48;
        }
      }

      v32 = (*(v29 + 40) + 8);
      atomic_load_explicit(v32, memory_order_acquire);
      v33 = atomic_load_explicit(v32, memory_order_acquire);
      if (v33)
      {
        v33 = CFDictionaryGetValue(v33, @"CTFontAllowCellularDownloadAttribute");
      }

      v25 = [(__CFDictionary *)v33 BOOLValue];
    }

    v24 = [explicit countByEnumeratingWithState:from objects:location count:16];
  }

  while (v24);
  if (v27)
  {
    v34 = 6;
  }

  else
  {
    v34 = 4;
  }

  if (v27)
  {
    v35 = 2;
  }

  else
  {
    v35 = 0;
  }

  if (v25)
  {
    v36 = v34;
  }

  else
  {
    v36 = v35;
  }

LABEL_61:
  v172[0] = 0;
  obj = [FontAssetDownloadManager availableMobileAssetsWithOptions:v36 manager:val error:v172];
  if (obj)
  {
    v159 = [MEMORY[0x1E695DF70] array];
    v179 = 0u;
    v180 = 0u;
    v177 = 0u;
    v178 = 0u;
    v147 = [obj countByEnumeratingWithState:&v177 objects:&v201 count:16];
    if (v147)
    {
      v144 = *v178;
      do
      {
        for (dsema = 0; dsema != v147; dsema = (dsema + 1))
        {
          if (*v178 != v144)
          {
            objc_enumerationMutation(obj);
          }

          v145 = *(*(&v177 + 1) + 8 * dsema);
          v152 = [v145 attributes];
          v37 = [MEMORY[0x1E695DF70] array];
          v38 = [MEMORY[0x1E695DF70] array];
          v156 = [v152 objectForKey:@"FontInfo4"];
          v39 = [v152 objectForKey:@"FontDesignLanguages"];
          v175 = 0u;
          v176 = 0u;
          v173 = 0u;
          v174 = 0u;
          v163 = [v156 countByEnumeratingWithState:&v173 objects:v200 count:16];
          if (v163)
          {
            v161 = *v174;
            do
            {
              v40 = 0;
              do
              {
                if (*v174 != v161)
                {
                  v41 = v40;
                  objc_enumerationMutation(v156);
                  v40 = v41;
                }

                allocatora = v40;
                v42 = *(*(&v173 + 1) + 8 * v40);
                handler = 0u;
                v168 = 0u;
                v169 = 0u;
                *v170 = 0u;
                v43 = [explicit countByEnumeratingWithState:&handler objects:v191 count:16];
                if (v43)
                {
                  v44 = *v168;
                  do
                  {
                    for (k = 0; k != v43; ++k)
                    {
                      if (*v168 != v44)
                      {
                        objc_enumerationMutation(explicit);
                      }

                      v46 = *(*(&handler + 1) + 8 * k);
                      v47 = CTFontDescriptorCopyAttributes(v46);
                      if ([FontAssetDownloadManager fontInfo:v42 andAssetDesignLanguages:v39 matchesRequest:v47])
                      {
                        [v37 addObject:v46];
                        [v38 addObject:v42];
                      }
                    }

                    v43 = [explicit countByEnumeratingWithState:&handler objects:v191 count:16];
                  }

                  while (v43);
                }

                v40 = (allocatora + 1);
              }

              while ((allocatora + 1) != v163);
              v163 = [v156 countByEnumeratingWithState:&v173 objects:v200 count:16];
            }

            while (v163);
          }

          if ([v37 count])
          {
            [v159 addObject:v145];
            v194 = v37;
            v195 = v38;
            [*(val + 6) setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &v194, 2), v152}];
          }
        }

        v147 = [obj countByEnumeratingWithState:&v177 objects:&v201 count:16];
      }

      while (v147);
    }

    v48 = v159;
  }

  else
  {
    v48 = 0;
  }

  v160 = v48;
  v49 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v48, "count")}];
  v50 = *(val + 4);
  if (v49)
  {
    [v50 setObject:v49 forKey:@"CTFontDescriptorMatchingTotalAssetCount"];
  }

  else
  {
    [v50 removeObjectForKey:@"CTFontDescriptorMatchingTotalAssetCount"];
  }

  [*(val + 4) removeObjectForKey:@"CTFontDescriptorMatchingDescriptors"];
  if (v172[0])
  {
    v51 = obj == 0;
  }

  else
  {
    v51 = 0;
  }

  if (v51)
  {
    [*(val + 4) setObject:? forKey:?];
    [(FontAssetDownloadManager *)val callProgressCallback:?];
    [*(val + 4) removeObjectForKey:@"CTFontDescriptorMatchingError"];
  }

  objc_opt_self();
  v201 = 0u;
  v202 = 0u;
  v203 = 0u;
  v204 = 0u;
  v52 = 0;
  v53 = [v160 countByEnumeratingWithState:&v201 objects:location count:16];
  if (v53)
  {
    v54 = *v202;
    do
    {
      for (m = 0; m != v53; ++m)
      {
        if (*v202 != v54)
        {
          objc_enumerationMutation(v160);
        }

        v56 = *(*(&v201 + 1) + 8 * m);
        v57 = [v56 attributes];
        objc_opt_self();
        v58 = [v56 state];
        if (v58 - 2) < 5 && ((0x1Bu >> (v58 - 2)))
        {
          v60 = 0;
        }

        else
        {
          Helper_x8__ASAttributeDownloadSize = gotLoadHelper_x8__ASAttributeDownloadSize(v59);
          v60 = [objc_msgSend(v57 objectForKey:{**(v62 + 2136), Helper_x8__ASAttributeDownloadSize), "longValue"}];
        }

        v52 += v60;
      }

      v53 = [v160 countByEnumeratingWithState:&v201 objects:location count:16];
    }

    while (v53);
  }

  v63 = [MEMORY[0x1E696AD98] numberWithLong:v52];
  v64 = *(val + 4);
  if (v63)
  {
    [v64 setObject:v63 forKey:@"CTFontDescriptorMatchingTotalAssetSize"];
  }

  else
  {
    [v64 removeObjectForKey:@"CTFontDescriptorMatchingTotalAssetSize"];
  }

  dsemaa = dispatch_semaphore_create(0);
  v181 = 0;
  v182 = &v181;
  v183 = 0x2020000000;
  v184 = 1;
  Helper_x8__ASDownloadPriorityHigh = gotLoadHelper_x8__ASDownloadPriorityHigh(COERCE_DOUBLE(0x2020000000));
  Helper_x8__ASDownloadOptionPriority = gotLoadHelper_x8__ASDownloadOptionPriority(Helper_x8__ASDownloadPriorityHigh);
  [v67 setObject:Helper_x8__ASDownloadOptionPriority forKey:?];
  Helper_x8__ASDownloadOptionAllowBatteryPower = gotLoadHelper_x8__ASDownloadOptionAllowBatteryPower(v68);
  [v71 setObject:MEMORY[0x1E695E118] forKey:{**(v70 + 2192), Helper_x8__ASDownloadOptionAllowBatteryPower}];
  v143 = [v160 count];
  v148 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.CoreText"];
  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  v72 = 0x1E696A000;
  v157 = [v160 countByEnumeratingWithState:&v177 objects:&v201 count:16];
  if (v157)
  {
    v164 = 0;
    v153 = 0;
    obja = *v178;
    v73 = *MEMORY[0x1E695DB78];
LABEL_113:
    v162 = 0;
    while (1)
    {
      if (*v178 != obja)
      {
        objc_enumerationMutation(v160);
      }

      v74 = *(*(&v177 + 1) + 8 * v162);
      v75 = [v74 attributes];
      v76 = [*(val + 6) objectForKey:v75];
      if ([v76 count] == 2)
      {
        v77 = [v76 firstObject];
        v175 = 0u;
        v176 = 0u;
        v173 = 0u;
        v174 = 0u;
        v78 = [v77 countByEnumeratingWithState:&v173 objects:v200 count:16];
        if (v78)
        {
          v79 = *v174;
          while (2)
          {
            for (n = 0; n != v78; ++n)
            {
              if (*v174 != v79)
              {
                objc_enumerationMutation(v77);
              }

              v81 = (*(*(*(&v173 + 1) + 8 * n) + 40) + 8);
              atomic_load_explicit(v81, memory_order_acquire);
              v82 = atomic_load_explicit(v81, memory_order_acquire);
              if (v82)
              {
                v82 = CFDictionaryGetValue(v82, @"CTFontAllowCellularDownloadAttribute");
              }

              if (([(__CFDictionary *)v82 BOOLValue]& 1) != 0)
              {
                LODWORD(v78) = 1;
                goto LABEL_130;
              }
            }

            v78 = [v77 countByEnumeratingWithState:&v173 objects:v200 count:16];
            if (v78)
            {
              continue;
            }

            break;
          }

LABEL_130:
          v72 = 0x1E696A000uLL;
        }

        v83 = *(val + 4);
        if (v77)
        {
          [v83 setObject:v77 forKey:@"CTFontDescriptorMatchingDescriptors"];
        }

        else
        {
          [v83 removeObjectForKey:@"CTFontDescriptorMatchingDescriptors"];
        }

        CopyValueForCurrentUser([objc_msgSend(objc_msgSend(v76 objectAtIndex:{1), "firstObject"), "objectForKey:", @"LocalizedFamilyNames"}], 0, location);
        v84 = atomic_load_explicit(location, memory_order_acquire);

        if (v84)
        {
          [*(val + 4) setObject:v84 forKey:@"CTFontDescriptorMatchingLocalizedFamilyName"];
          v85 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_msgSend(v148, "localizedStringForKey:value:table:", @"Downloading font \\U201C%@\\U201D\\U2026", &stru_1EF25C610, 0), v84];
          v86 = *(val + 4);
          if (v85)
          {
            [v86 setObject:v85 forKey:@"CTFontDescriptorMatchingLocalizedDescription"];
          }

          else
          {
            [v86 removeObjectForKey:@"CTFontDescriptorMatchingLocalizedDescription"];
          }
        }
      }

      else
      {
        LODWORD(v78) = 0;
      }

      v87 = [*(v72 + 3480) numberWithInt:v164];
      v88 = *(val + 4);
      if (v87)
      {
        [v88 setObject:v87 forKey:@"CTFontDescriptorMatchingProcessedAssetCount"];
      }

      else
      {
        [v88 removeObjectForKey:@"CTFontDescriptorMatchingProcessedAssetCount"];
      }

      objc_opt_self();
      v89 = [v74 state];
      if (v89 > 6 || ((1 << v89) & 0x6C) == 0)
      {
        v99 = gotLoadHelper_x8__ASAttributeDownloadSize(v90);
        v101 = [v75 objectForKey:{**(v100 + 2136), v99}];
        v102 = [v101 longValue];
        v103 = *(val + 4);
        if (v101)
        {
          [v103 setObject:v101 forKey:@"CTFontDescriptorMatchingCurrentAssetSize"];
        }

        else
        {
          [v103 removeObjectForKey:@"CTFontDescriptorMatchingCurrentAssetSize"];
        }

        v104 = [*(v72 + 3480) numberWithLong:v153];
        v105 = *(val + 4);
        if (v104)
        {
          [v105 setObject:v104 forKey:@"CTFontDescriptorMatchingTotalDownloadedSize"];
        }

        else
        {
          [v105 removeObjectForKey:@"CTFontDescriptorMatchingTotalDownloadedSize"];
        }

        if (qword_1ED568290 != -1)
        {
          dispatch_once(&qword_1ED568290, &__block_literal_global_183);
        }

        v106 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, qword_1ED568298);
        v194 = MEMORY[0x1E69E9820];
        v195 = 3221225472;
        v196 = __57__FontAssetDownloadManager_executeDownloadingFontAssets___block_invoke;
        v197 = &unk_1E6E3EF20;
        v198 = v106;
        v199 = dsemaa;
        v172[0] = MEMORY[0x1E69E9820];
        v172[1] = 3221225472;
        v172[2] = __57__FontAssetDownloadManager_executeDownloadingFontAssets___block_invoke_2;
        v172[3] = &unk_1E6E3EF70;
        v172[4] = v74;
        v172[5] = &v194;
        objc_initWeak(location, val);
        objc_initWeak(from, v106);
        *&handler = MEMORY[0x1E69E9820];
        *(&handler + 1) = 3221225472;
        *&v168 = __57__FontAssetDownloadManager_executeDownloadingFontAssets___block_invoke_4;
        *(&v168 + 1) = &unk_1E6E3EF98;
        objc_copyWeak(&v169 + 1, location);
        objc_copyWeak(v170, from);
        *&v169 = v172;
        dispatch_source_set_event_handler(v106, &handler);
        v107 = [v172 copy];
        v108 = *(val + 4);
        if (v107)
        {
          [v108 setObject:v107 forKey:@"CTFontDescriptorMatchingCancelDownloadHandler"];
        }

        else
        {
          [v108 removeObjectForKey:@"CTFontDescriptorMatchingCancelDownloadHandler"];
        }

        v109 = [(FontAssetDownloadManager *)val callProgressCallback:?];
        *(v182 + 24) = v109;
        v110 = dispatch_time(0, 500000000);
        dispatch_source_set_timer(v106, v110, 0x1DCD6500uLL, 0x2FAF080uLL);
        dispatch_resume(v106);
        if (*(v182 + 24) == 1)
        {
          v191[0] = MEMORY[0x1E69E9820];
          v191[1] = 3221225472;
          v191[2] = __57__FontAssetDownloadManager_executeDownloadingFontAssets___block_invoke_5;
          v191[3] = &unk_1E6E3EFE8;
          objc_copyWeak(v192, from);
          v191[4] = val;
          v191[5] = v74;
          v193 = v164;
          v192[1] = v153;
          v192[2] = v143;
          v191[7] = &v181;
          v191[6] = v172;
          [v74 attachProgressCallBack:v191];
          gotLoadHelper_x8__OBJC_CLASS___MADownloadOptions(v111);
          v113 = objc_alloc_init(*(v112 + 2384));
          gotLoadHelper_x8__OBJC_CLASS___ASAsset(v114);
          v115 = objc_opt_class();
          v116 = 1;
          if (v115)
          {
            if (([v115 nonUserInitiatedDownloadsAllowed] & 1) != 0 || (MainBundle = CFBundleGetMainBundle()) != 0 && (Identifier = CFBundleGetIdentifier(MainBundle)) != 0 && CFStringHasPrefix(Identifier, @"com.apple."))
            {
              v116 = 0;
            }
          }

          [v113 setDiscretionary:v116];
          if (v78)
          {
            CFLog();
            [v113 setAllowsCellularAccess:1];
          }

          v171[0] = MEMORY[0x1E69E9820];
          v171[1] = 3221225472;
          v171[2] = __57__FontAssetDownloadManager_executeDownloadingFontAssets___block_invoke_7;
          v171[3] = &unk_1E6E3EF48;
          v171[4] = &v194;
          [v74 startDownload:v113 then:v171];

          dispatch_semaphore_wait(dsemaa, 0xFFFFFFFFFFFFFFFFLL);
          v153 += v102;
          v119 = [*(v72 + 3480) numberWithLong:?];
          v120 = *(val + 4);
          if (v119)
          {
            [v120 setObject:v119 forKey:@"CTFontDescriptorMatchingTotalDownloadedSize"];
          }

          else
          {
            [v120 removeObjectForKey:@"CTFontDescriptorMatchingTotalDownloadedSize"];
          }

          v121 = [*(v72 + 3480) numberWithLong:((v164 + 1.0) / v143 * 100.0)];
          v122 = *(val + 4);
          if (v121)
          {
            [v122 setObject:v121 forKey:@"CTFontDescriptorMatchingPercentage"];
          }

          else
          {
            [v122 removeObjectForKey:@"CTFontDescriptorMatchingPercentage"];
          }

          objc_destroyWeak(v192);
        }

        else
        {
          dispatch_source_cancel(v106);
        }

        dispatch_release(v106);
        objc_destroyWeak(v170);
        objc_destroyWeak(&v169 + 1);
        objc_destroyWeak(from);
        objc_destroyWeak(location);
      }

      v91 = [v74 getLocalFileUrl];
      if (v91)
      {
        objc_opt_self();
        v92 = [MEMORY[0x1E696AC08] defaultManager];
        v93 = [v92 enumeratorAtURL:v91 includingPropertiesForKeys:objc_msgSend(MEMORY[0x1E695DEC8] options:"arrayWithObject:" errorHandler:{v73), 0, &__block_literal_global_144}];
        v189 = 0u;
        v190 = 0u;
        *from = 0u;
        v188 = 0u;
        v94 = [v93 countByEnumeratingWithState:from objects:location count:16];
        if (v94)
        {
          v95 = *v188;
          do
          {
            for (ii = 0; ii != v94; ++ii)
            {
              if (*v188 != v95)
              {
                objc_enumerationMutation(v93);
              }

              v97 = *(from[1] + ii);
              v186 = 0;
              if ((![v97 getResourceValue:&v186 forKey:v73 error:{0, v141, v142}] || (objc_msgSend(v186, "BOOLValue") & 1) == 0) && (FSFontProviderSynchronizeFontAsset() & 1) == 0)
              {
                v185 = 0;
                if (!_CTFontManagerRegisterActionFontsForURL(v97, 1, 1, &v185))
                {
                  v141 = v97;
                  v142 = v185;
                  CFLog();
                }
              }
            }

            v94 = [v93 countByEnumeratingWithState:from objects:location count:16];
          }

          while (v94);
        }
      }

      [*(val + 4) removeObjectForKey:{@"CTFontDescriptorMatchingCancelDownloadHandler", v141}];
      v98 = [(FontAssetDownloadManager *)val callProgressCallback:?]? *(v182 + 24) : 0;
      *(v182 + 24) = v98 & 1;
      [*(val + 4) removeObjectForKey:@"CTFontDescriptorMatchingError"];
      [*(val + 4) removeObjectForKey:@"CTFontDescriptorMatchingTotalDownloadedSize"];
      [*(val + 4) removeObjectForKey:@"CTFontDescriptorMatchingPercentage"];
      [*(val + 4) removeObjectForKey:@"CTFontDescriptorMatchingCurrentAssetSize"];
      if (*(v182 + 24) != 1)
      {
        break;
      }

      [*(val + 4) removeObjectForKey:@"CTFontDescriptorMatchingDescriptors"];
      ++v164;
      if (++v162 == v157)
      {
        v123 = [v160 countByEnumeratingWithState:&v177 objects:&v201 count:16];
        v157 = v123;
        if (v123)
        {
          goto LABEL_113;
        }

        break;
      }
    }
  }

  dispatch_release(dsemaa);
  _Block_object_dispose(&v181, 8);
LABEL_195:
  v124 = [MEMORY[0x1E695DF70] array];
  v125 = atomic_load_explicit(val + 1, memory_order_acquire);
  if (v125)
  {
    v126 = CFArrayGetCount(v125);
    if (v126)
    {
      v127 = v126;
      v128 = 0;
      while (1)
      {
        v129 = CFArrayGetValueAtIndex(v125, v128);
        v130 = CTFontDescriptorCreateMatchingFontDescriptorsWithOptions(v129, atomic_load_explicit(val + 2, memory_order_acquire), 513);
        v131 = v130;
        v132 = v131;
        if (!v131)
        {
          break;
        }

        v133 = CFArrayGetCount(v131);

        if (v133 < 1)
        {
LABEL_203:

          if (++v128 == v127)
          {
            goto LABEL_213;
          }
        }

        else
        {
          v134 = *(val + 4);
          if (v129)
          {
            [v134 setObject:v129 forKey:@"CTFontDescriptorMatchingSourceDescriptor"];
          }

          else
          {
            [v134 removeObjectForKey:@"CTFontDescriptorMatchingSourceDescriptor"];
          }

          v135 = *(val + 4);
          if (v130)
          {
            [v135 setObject:v130 forKey:@"CTFontDescriptorMatchingResult"];
          }

          else
          {
            [v135 removeObjectForKey:@"CTFontDescriptorMatchingResult"];
          }

          v136 = [(FontAssetDownloadManager *)val callProgressCallback:?];
          [v124 addObjectsFromArray:v130];

          if (++v128 == v127)
          {
            v137 = 0;
          }

          else
          {
            v137 = v136;
          }

          if ((v137 & 1) == 0)
          {
            goto LABEL_213;
          }
        }
      }

      goto LABEL_203;
    }
  }

LABEL_213:
  [*(val + 4) removeObjectForKey:@"CTFontDescriptorMatchingSourceDescriptor"];
  [*(val + 4) removeObjectForKey:@"CTFontDescriptorMatchingResult"];
  v138 = *(val + 4);
  if (v124)
  {
    [v138 setObject:v124 forKey:@"CTFontDescriptorMatchingResult"];
  }

  else
  {
    [v138 removeObjectForKey:@"CTFontDescriptorMatchingResult"];
  }

  v3 = v146;
  v2 = val;
LABEL_217:
  [(FontAssetDownloadManager *)v2 callProgressCallback:?];
  v139 = *(v3 + 32);
LABEL_218:

  objc_autoreleasePoolPop(context);
}

dispatch_queue_t ___ZL32CTFontDescriptorGetMatchingQueuev_block_invoke()
{
  result = dispatch_queue_create("com.apple.CoreText.fontdescriptorMatching", 0);
  qword_1ED5682A8 = result;
  return result;
}

void TCFBidiLevelsProvider::GetLevels(TCFBidiLevelsProvider *this, CFRange a2, CTWritingDirection a3)
{
  location = a2.location;
  v5 = *(this + 2);
  v6 = *(this + 3) + v5;
  if (a2.location + a2.length >= v6)
  {
    v7 = *(this + 3) + v5;
  }

  else
  {
    v7 = a2.location + a2.length;
  }

  v8 = v7 - v5;
  v9 = a2.location <= v5 && v5 < a2.location + a2.length;
  if (v9)
  {
    v10 = *(this + 2);
  }

  else
  {
    v10 = 0;
  }

  if (!v9)
  {
    v8 = 0;
  }

  v11 = v7 - a2.location;
  v12 = v5 <= a2.location && a2.location < v6;
  if (v12)
  {
    v10 = a2.location;
  }

  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = v8;
  }

  if (v10 != a2.location || v13 != a2.length)
  {
    TCFBidiLevelsProvider::Configure(this, a2, a3, 0);
    v5 = *(this + 2);
  }

  if (*(this + 5) - *(this + 4) <= (location - v5))
  {
    __break(1u);
  }
}

void TCFBidiLevelsProvider::Configure(atomic_ullong *this, CFRange a2, int a3, uint64_t *a4)
{
  length = a2.length;
  location = a2.location;
  parEndIndex = 0xAAAAAAAAAAAAAAAALL;
  parBeginIndex = 0xAAAAAAAAAAAAAAAALL;
  String = CFAttributedStringGetString(atomic_load_explicit(this + 1, memory_order_acquire));
  v55.location = location;
  v55.length = length;
  CFStringGetParagraphBounds(String, v55, &parBeginIndex, &parEndIndex, 0);
  if (a4)
  {
    *a4 = parBeginIndex;
  }

  v10 = this[2];
  v11 = this[3] + v10;
  if (location + length >= v11)
  {
    v12 = this[3] + v10;
  }

  else
  {
    v12 = location + length;
  }

  if (v10 <= location && location < v11)
  {
    v15 = v12 - location;
    v14 = location;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    if (location <= v10 && v10 < location + length)
    {
      v15 = v12 - v10;
      v14 = this[2];
    }
  }

  if (v14 != location || v15 != length)
  {
    v16 = parEndIndex - parBeginIndex;
    this[2] = parBeginIndex;
    this[3] = v16;
    v18 = this[4];
    v17 = this[5];
    v19 = &v17[-v18];
    v20 = v16 - &v17[-v18];
    if (v16 <= &v17[-v18])
    {
      if (v16 < &v17[-v18])
      {
        this[5] = v18 + v16;
      }
    }

    else
    {
      v21 = this[6];
      if (v21 - v17 >= v20)
      {
        v26 = v16 + v18;
        bzero(v17, v16 - &v17[-v18]);
        this[5] = v26;
      }

      else
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          goto LABEL_63;
        }

        v22 = v21 - v18;
        v23 = 2 * v22;
        if (2 * v22 <= v16)
        {
          v23 = v16;
        }

        if (v22 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v24 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v23;
        }

        valuePtr[4] = this + 7;
        v25 = this[11];
        if (v25 + v24 > this + 86)
        {
          operator new();
        }

        this[11] = v25 + v24;
        v27 = &v19[v25];
        v28 = v25 + v24;
        v29 = v25 + v16;
        bzero(v27, v20);
        v30 = this[4];
        v31 = this[5];
        v32 = &v30[v27 - v31];
        memcpy(v32, v30, v31 - v30);
        v33 = this[4];
        this[4] = v32;
        this[5] = v29;
        v34 = this[6];
        this[6] = v28;
        valuePtr[2] = v33;
        valuePtr[3] = v34;
        valuePtr[0] = v33;
        valuePtr[1] = v33;
        std::__split_buffer<char,TInlineBufferAllocator<char,30ul> &>::~__split_buffer(valuePtr);
      }
    }

    v35 = _os_feature_enabled_impl();
    if (a3 != -1)
    {
      goto LABEL_59;
    }

    Attribute = CFAttributedStringGetAttribute(atomic_load_explicit(this + 1, memory_order_acquire), this[2], @"CTFallbackWritingDirection", 0);
    if (Attribute && (v37 = Attribute, v38 = CFGetTypeID(Attribute), v38 == CFNumberGetTypeID()))
    {
      LODWORD(valuePtr[0]) = -1431655766;
      CFNumberGetValue(v37, kCFNumberIntType, valuePtr);
      v39 = valuePtr[0];
    }

    else
    {
      v39 = 0;
    }

    v40 = this[12];
    v41 = this[14];
    if (v41 - v40 >= v16)
    {
      v42 = this[13];
      v43 = v42 - v40;
      if (v42 - v40 >= v16)
      {
        v44 = v16;
      }

      else
      {
        v44 = v42 - v40;
      }

      if (v44)
      {
        memset(v40, v39, v44);
      }

      v45 = v16 >= v43;
      v46 = v16 - v43;
      if (v46 != 0 && v45)
      {
        v47 = this[13];
        memset(v47, v39, v46);
        v48 = &v47[v46];
      }

      else
      {
        v48 = (this[12] + v16);
      }

      goto LABEL_58;
    }

    if (v40)
    {
      this[13] = v40;
      if (this + 15 > v40 || (this + 150) <= v40)
      {
        operator delete(v40);
      }

      else if (v41 == this[19])
      {
        this[19] = v40;
      }

      v41 = 0;
      this[12] = 0;
      this[13] = 0;
      this[14] = 0;
    }

    if ((v16 & 0x8000000000000000) == 0)
    {
      v49 = 2 * v41;
      if (2 * v41 <= v16)
      {
        v49 = v16;
      }

      if (v41 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v50 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v50 = v49;
      }

      std::vector<unsigned char,TInlineBufferAllocator<unsigned char,30ul>>::__vallocate[abi:fn200100](this + 12, v50);
      v51 = this[13];
      memset(v51, v39, v16);
      v48 = &v51[v16];
LABEL_58:
      this[13] = v48;
LABEL_59:
      atomic_load_explicit(this + 1, memory_order_acquire);
      if (v35)
      {
        CFAttributedStringGetStatisticalWritingDirections();
      }

      else
      {
        CFAttributedStringGetBidiLevelsAndResolvedDirections();
      }

      return;
    }

LABEL_63:
    std::__throw_bad_array_new_length[abi:fn200100]();
  }
}

uint64_t TCFBidiLevelsProvider::GetDefaultParagraphDirection(atomic_ullong *this, CFRange a2)
{
  v7 = 0;
  a2.length = 1;
  TCFBidiLevelsProvider::Configure(this, a2, -1, &v7);
  v3 = v7 - this[2];
  v4 = this[12];
  if (v3 >= this[13] - v4)
  {
    return 0;
  }

  else
  {
    return *(v4 + v3);
  }
}

void TCFBidiLevelsProvider::~TCFBidiLevelsProvider(TCFBidiLevelsProvider *this)
{
  *this = &unk_1EF25C108;
  v2 = (this + 8);
  v3 = (this + 96);
  std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](&v3);
  v3 = (this + 32);
  std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](&v3);
}

{
  *this = &unk_1EF25C108;
  v2 = (this + 8);
  v3 = (this + 96);
  std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](&v3);
  v3 = (this + 32);
  std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](&v3);

  MEMORY[0x1865F22D0](this, 0x10F1C409899A524);
}

BOOL CharacterSequence::IsProhibitedAfterAdding(CharacterSequence *this, int a2)
{
  v4 = *(this + 2);
  if (v4 == 3)
  {
    return 0;
  }

  v8 = v2;
  v9 = v3;
  *(this + 2) = v4 + 1;
  *(this + v4) = a2;
  result = 0;
  if ((v4 + 1) >= 2)
  {
    v7 = 0;
    if ((IsProhibitedSequence(*this, *(this + 1), &v7) & 1) != 0 || v7 && *(this + 2) >= 3uLL && *this == 2352 && *(this + 1) == 2381 && *(this + 2) == 2311)
    {
      return 1;
    }
  }

  return result;
}

uint64_t UniversalShapingEngine::ApplyScriptShaping(UniversalShapingEngine *this, const OTL::GSUB *a2, OTL::GlyphLookups *a3)
{
  v3 = MEMORY[0x1EEE9AC00](this, a2);
  v5 = v4;
  v316 = v6;
  v7 = v3;
  v363[1] = *MEMORY[0x1E69E9840];
  v338 = 0;
  v9 = *v4;
  v8 = v4[1];
  if (v8 != *v4)
  {
    do
    {
      v10 = v8 - 52;
      v340 = v8 - 48;
      std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&v340);
      v8 = v10;
    }

    while (v10 != v9);
  }

  v5[1] = v9;
  v338 |= TRunGlue::FilterSurrogates(*(v7 + 8), *v7, 0);
  v11 = *(v7 + 8);
  v12 = *(v11 + 13);
  v13 = TRunGlue::length(v11);
  v323 = v12;
  std::vector<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul>>::resize(v12, v13);
  memset(v362, 170, sizeof(v362));
  __p = 0;
  v360 = 0;
  v361 = 0;
  v363[0] = v362;
  v357[0] = &unk_1EF25C138;
  v357[1] = &__p;
  v358 = v357;
  v341 = 0u;
  memset(v342, 0, 168);
  v14 = *(v7 + 8);
  v15 = *(*v7 + 16);
  v340 = *v7;
  *&v342[9] = v15;
  v16 = TRunGlue::length(v14);
  if (!v16)
  {
LABEL_7:
    v24 = *(v7 + 8);
    TRunGlue::length(v24);
    v25 = *(v7 + 8);
    v26 = v25[6];
    v315 = v5;
    if ((v26 & 0x80000000) != 0)
    {
      v27 = (TRunGlue::length(v25) - 1);
      v28 = *(v7 + 8);
    }

    else
    {
      v27 = 0;
      v28 = *(v7 + 8);
      v25 = v24;
    }

    v29 = TRunGlue::length(v28);
    v324 = v7;
    if (v29 < 1)
    {
      goto LABEL_417;
    }

    v30 = 16 * v26;
    while (1)
    {
      v321 = 0;
      v31 = 0;
      v32 = 0;
      v317 = v29;
      v318 = v27;
      v33 = 31;
      if (v29 < 0x1F)
      {
        v33 = v29;
      }

      v325 = 0;
      v326 = 0xAAAAAAAA00000000;
      v34 = (v27 + v33 * v26);
      v319 = v25;
      v339[0] = v25;
      for (v339[1] = v27; ; v339[1] = (v38 + v26))
      {
        while (1)
        {
          while (1)
          {
LABEL_15:
            v35 = v31;
            while (1)
            {
              if (v339[1] == v34)
              {
                goto LABEL_368;
              }

              v356[0] = TRunGlue::GetStringIndex(v339[0], v339[1]);
              FullChar = TCharStreamIterator::GetFullChar(&v340, v356, 0);
              if (CharacterSequence::IsProhibitedAfterAdding(&v325, FullChar))
              {
                v45 = (v27 + v26);
                v339[0] = v319;
                goto LABEL_365;
              }

              v37 = v339[0];
              v38 = v339[1];
              v39 = **(v339[0] + 13);
              v40 = *(*(v339[0] + 13) + 8);
              if (v339[1] >= ((v40 - v39) >> 4))
              {
                goto LABEL_602;
              }

              v41 = *(v39 + 16 * v339[1] + 8);
              if (v41 != 12)
              {
                break;
              }

              if (!v32)
              {
                v31 = v35;
                goto LABEL_154;
              }

              v42 = v339[1] + v26;
              v339[1] = (v339[1] + v26);
              if ((v38 + v26) == v34)
              {
                goto LABEL_366;
              }

              v356[0] = TRunGlue::GetStringIndex(v339[0], v42);
              v43 = TCharStreamIterator::GetFullChar(&v340, v356, 0);
              if (((1 << u_charType(v43)) & 0x140) == 0)
              {
                goto LABEL_368;
              }
            }

            if (*(v39 + 16 * v339[1] + 8) > 0xCu)
            {
              v31 = v35;
              if (*(v39 + 16 * v339[1] + 8) > 0x10u)
              {
                if (v41 == 17)
                {
                  goto LABEL_49;
                }

                if (v41 == 20)
                {
                  if (!((v32 != 0) | v35 & 1))
                  {
                    v32 = 0;
                    v31 = 1;
                    goto LABEL_47;
                  }

                  goto LABEL_154;
                }
              }

              else
              {
                if (v41 == 13)
                {
                  goto LABEL_353;
                }

                if (v41 == 15)
                {
                  if (!((v32 != 0) | v35 & 1))
                  {
                    v32 = 0;
                    v31 = 1;
                    v44 = 6;
                    goto LABEL_42;
                  }

                  goto LABEL_154;
                }
              }

              goto LABEL_92;
            }

            v31 = v35;
            if (*(v39 + 16 * v339[1] + 8) > 8u)
            {
              break;
            }

            if (v41 != 1)
            {
              if (v41 == 2)
              {
                goto LABEL_103;
              }

              if (v41 != 4)
              {
                goto LABEL_92;
              }
            }

            if (v32)
            {
              goto LABEL_155;
            }

            v339[1] = (v339[1] + v26);
            if (Is<&(UniversalClassTable::isVariationSelector)>(v339, v26, v319, v34))
            {
              v339[1] = (v339[1] + v26);
            }

            if (Is<&(BOOL IsClassWithPosition<&(UniversalClassTable::isNukta),(Position)0>)>(v339, v26, v319, v34))
            {
              do
              {
                v339[1] = (v339[1] + v26);
              }

              while ((Is<&(BOOL IsClassWithPosition<&(UniversalClassTable::isNukta),(Position)0>)>(v339, v26, v319, v34) & 1) != 0);
            }

            if (Is<&(BOOL IsClassWithPosition<&(UniversalClassTable::isNukta),(Position)1>)>(v339, v26, v319, v34))
            {
              do
              {
                v339[1] = (v339[1] + v26);
              }

              while ((Is<&(BOOL IsClassWithPosition<&(UniversalClassTable::isNukta),(Position)1>)>(v339, v26, v319, v34) & 1) != 0);
            }

            v321 = 1;
            v32 = 1;
            v31 = v35;
          }

          if (v41 - 9 < 2)
          {
LABEL_49:
            if (v32 != 1)
            {
              goto LABEL_154;
            }

            v45 = (v339[1] + v26);
            if ((v339[1] + v26) != v34)
            {
              v356[0] = TRunGlue::GetStringIndex(v339[0], v45);
              FullChar = TCharStreamIterator::GetFullChar(&v340, v356, 0);
              IsProhibitedAfterAdding = CharacterSequence::IsProhibitedAfterAdding(&v325, FullChar);
              v31 = v35;
              if (IsProhibitedAfterAdding)
              {
                v339[0] = v37;
                goto LABEL_365;
              }
            }

            while (2)
            {
              v47 = 0;
              v48 = 0;
              v49 = 0;
              v344 = *v339;
              v38 = v339[1];
              v37 = v339[0];
LABEL_53:
              if (v38 == v34)
              {
LABEL_78:
                v38 = v34;
LABEL_79:
                v339[0] = v344;
                v339[1] = v38;
                if ((v49 & 1) == 0 || (v48 & 1) == 0)
                {
                  if ((v47 & 1) == 0)
                  {
                    goto LABEL_107;
                  }

                  goto LABEL_366;
                }

                goto LABEL_81;
              }

              v50 = **(v344 + 104);
              v51 = (*(*(v344 + 104) + 8) - v50) >> 4;
              if (v51 <= v38)
              {
                goto LABEL_602;
              }

              v52 = *(v50 + 16 * v38 + 8);
              if (v52 <= 9)
              {
                if (v52 != 8)
                {
                  if (v52 == 1)
                  {
                    if (v48 & 1 | ((v49 & 1) == 0))
                    {
                      goto LABEL_79;
                    }

                    *(&v344 + 1) = v38 + v26;
                    if (Is<&(UniversalClassTable::isVariationSelector)>(&v344, v26, v319, v34))
                    {
                      *(&v344 + 1) += v26;
                    }

                    if (Is<&(BOOL IsClassWithPosition<&(UniversalClassTable::isNukta),(Position)0>)>(&v344, v26, v319, v34))
                    {
                      do
                      {
                        *(&v344 + 1) += v26;
                      }

                      while ((Is<&(BOOL IsClassWithPosition<&(UniversalClassTable::isNukta),(Position)0>)>(&v344, v26, v319, v34) & 1) != 0);
                    }

                    if (Is<&(BOOL IsClassWithPosition<&(UniversalClassTable::isNukta),(Position)1>)>(&v344, v26, v319, v34))
                    {
                      do
                      {
                        *(&v344 + 1) += v26;
                      }

                      while ((Is<&(BOOL IsClassWithPosition<&(UniversalClassTable::isNukta),(Position)1>)>(&v344, v26, v319, v34) & 1) != 0);
                    }

                    v38 = *(&v344 + 1);
                    v37 = v344;
                    *v339 = v344;
                    v31 = v35;
                    if ((v49 & 1) == 0)
                    {
LABEL_107:
                      if (v38 == v34)
                      {
LABEL_108:
                        v32 = 2;
                        v38 = v34;
                        goto LABEL_155;
                      }

                      v57 = *(v37 + 13);
                      v58 = *v57;
                      v59 = (v57[1] - *v57) >> 4;
                      v60 = (v58 + 16 * v38 + 8);
                      v61 = v38;
                      while (1)
                      {
                        if (v59 <= v61)
                        {
                          goto LABEL_602;
                        }

                        v62 = *v60;
                        if (v62 != 21)
                        {
                          break;
                        }

                        v61 = (v61 + v26);
                        v60 += v30;
                        v32 = 2;
                        if (v34 == v61)
                        {
                          goto LABEL_155;
                        }
                      }

                      if (v62 != 17)
                      {
                        v32 = 2;
                        goto LABEL_155;
                      }

                      v45 = (v61 + v26);
LABEL_365:
                      v339[1] = v45;
LABEL_366:
                      v124 = v321;
LABEL_367:
                      v321 = v124;
                      goto LABEL_368;
                    }

LABEL_81:
                    if (v38 == v34)
                    {
                      goto LABEL_108;
                    }

                    continue;
                  }

                  goto LABEL_71;
                }

                if ((v49 & v48 & 1) == 0)
                {
                  goto LABEL_79;
                }

LABEL_72:
                v48 = 1;
              }

              else
              {
                if (v52 != 10)
                {
                  if (v52 == 13)
                  {
                    v38 = (v38 + v26);
                    if (v38 == v34)
                    {
                      goto LABEL_78;
                    }

                    if (v51 <= v38)
                    {
                      goto LABEL_602;
                    }

                    v53 = *(v50 + 16 * v38 + 8);
                    v54 = v53 != 13;
                    if (v53 == 13)
                    {
                      v55 = 3;
                    }

                    else
                    {
                      v55 = 2;
                    }

                    if ((v54 & v49) == 1)
                    {
                      v55 = 2;
                      v47 = 1;
                      goto LABEL_74;
                    }

                    v49 |= v54;
LABEL_75:
                    if (v55 == 3)
                    {
                      goto LABEL_79;
                    }

                    goto LABEL_53;
                  }

LABEL_71:
                  if ((v52 != 9) | (v49 | v48) & 1)
                  {
                    goto LABEL_79;
                  }

                  goto LABEL_72;
                }

                if ((v49 | v48))
                {
                  goto LABEL_79;
                }

                v48 = 0;
              }

              break;
            }

            v55 = 0;
            v38 = (v38 + v26);
LABEL_74:
            v49 = 1;
            goto LABEL_75;
          }

LABEL_92:
          if (FullChar == 8288 || (v41 ? (v56 = v41 == 14) : (v56 = 1), v56))
          {
LABEL_103:
            if ((v32 != 0) | v31 & 1)
            {
              goto LABEL_154;
            }

            v339[1] = (v339[1] + v26);
            if (Is<&(UniversalClassTable::isVariationSelector)>(v339, v26, v319, v34))
            {
              v321 = 0;
              v45 = (v339[1] + v26);
              goto LABEL_365;
            }

            v124 = 0;
            goto LABEL_367;
          }

          if (v41 > 0x14u)
          {
            if (v41 == 23 || v41 == 25)
            {
              if (v32)
              {
                goto LABEL_155;
              }

              if (Is<&(UniversalClassTable::isHieroglyphSegmentBegin)>(v339, v26, v319, v34))
              {
                do
                {
                  v339[1] = (v339[1] + v26);
                }

                while ((Is<&(UniversalClassTable::isHieroglyphSegmentBegin)>(v339, v26, v319, v34) & 1) != 0);
              }

              if (!Is<&(UniversalClassTable::isHieroglyph)>(v339, v26, v319, v34))
              {
                goto LABEL_408;
              }

              v339[1] = (v339[1] + v26);
              if (Is<&(UniversalClassTable::isVariationSelector)>(v339, v26, v319, v34))
              {
                v339[1] = (v339[1] + v26);
              }

              if (Is<&(UniversalClassTable::isHieroglyphMirror)>(v339, v26, v319, v34))
              {
                v339[1] = (v339[1] + v26);
              }

              if (Is<&(UniversalClassTable::isHieroglyphModifier)>(v339, v26, v319, v34))
              {
                v339[1] = (v339[1] + v26);
              }

              if (Is<&(UniversalClassTable::isHieroglyphSegmentEnd)>(v339, v26, v319, v34))
              {
                do
                {
                  v339[1] = (v339[1] + v26);
                }

                while ((Is<&(UniversalClassTable::isHieroglyphSegmentEnd)>(v339, v26, v319, v34) & 1) != 0);
              }

              if (Is<&(UniversalClassTable::isHieroglyphJoiner)>(v339, v26, v319, v34))
              {
                do
                {
                  do
                  {
                    v339[1] = (v339[1] + v26);
                  }

                  while ((Is<&(UniversalClassTable::isHieroglyphSegmentBegin)>(v339, v26, v319, v34) & 1) != 0);
                  if (Is<&(UniversalClassTable::isHieroglyph)>(v339, v26, v319, v34))
                  {
                    v339[1] = (v339[1] + v26);
                    if (Is<&(UniversalClassTable::isVariationSelector)>(v339, v26, v319, v34))
                    {
                      v339[1] = (v339[1] + v26);
                    }

                    if (Is<&(UniversalClassTable::isHieroglyphMirror)>(v339, v26, v319, v34))
                    {
                      v339[1] = (v339[1] + v26);
                    }

                    if (Is<&(UniversalClassTable::isHieroglyphModifier)>(v339, v26, v319, v34))
                    {
                      v339[1] = (v339[1] + v26);
                    }

                    if (Is<&(UniversalClassTable::isHieroglyphSegmentEnd)>(v339, v26, v319, v34))
                    {
                      do
                      {
                        v339[1] = (v339[1] + v26);
                      }

                      while ((Is<&(UniversalClassTable::isHieroglyphSegmentEnd)>(v339, v26, v319, v34) & 1) != 0);
                    }
                  }

                  isHieroglyph = Is<&(UniversalClassTable::isHieroglyphJoiner)>(v339, v26, v319, v34);
                  v124 = 5;
                }

                while ((isHieroglyph & 1) != 0);
              }

              else
              {
LABEL_408:
                v124 = 5;
              }

              goto LABEL_367;
            }

            if (v41 == 21)
            {
              goto LABEL_47;
            }

            goto LABEL_154;
          }

          if (v41 != 3)
          {
            break;
          }

          if (v32)
          {
            goto LABEL_155;
          }

          v339[1] = (v339[1] + v26);
          if (Is<&(UniversalClassTable::isVariationSelector)>(v339, v26, v319, v34))
          {
            v321 = 3;
            v38 = v339[1];
            v32 = 3;
            v31 = v35;
            goto LABEL_47;
          }

          v321 = 3;
          v32 = 3;
          v31 = v35;
        }

        if (v41 != 11)
        {
          if (v41 == 16)
          {
            if (v32)
            {
              goto LABEL_155;
            }

            v339[1] = (v339[1] + v26);
            if (Is<&(UniversalClassTable::isVariationSelector)>(v339, v26, v319, v34))
            {
              v339[1] = (v339[1] + v26);
            }

            if (Is<&(BOOL IsClassWithPosition<&(UniversalClassTable::isNukta),(Position)0>)>(v339, v26, v319, v34))
            {
              do
              {
                v339[1] = (v339[1] + v26);
              }

              while ((Is<&(BOOL IsClassWithPosition<&(UniversalClassTable::isNukta),(Position)0>)>(v339, v26, v319, v34) & 1) != 0);
            }

            if (Is<&(BOOL IsClassWithPosition<&(UniversalClassTable::isNukta),(Position)1>)>(v339, v26, v319, v34))
            {
              do
              {
                v339[1] = (v339[1] + v26);
                v176 = Is<&(BOOL IsClassWithPosition<&(UniversalClassTable::isNukta),(Position)1>)>(v339, v26, v319, v34);
                v124 = 4;
              }

              while ((v176 & 1) != 0);
            }

            else
            {
              v124 = 4;
            }

            goto LABEL_367;
          }

          goto LABEL_154;
        }

        if (v32 != 3)
        {
          break;
        }

        for (i = *v339; ; i = *v339)
        {
          v344 = i;
          v65 = *(&i + 1);
          if (*(&i + 1) == v34)
          {
            break;
          }

          v66 = 0;
          v67 = **(v344 + 104);
          v68 = (*(*(v344 + 104) + 8) - v67) >> 4;
          while (1)
          {
            if (v68 <= v65)
            {
              goto LABEL_602;
            }

            v69 = *(v67 + 16 * v65 + 8);
            if (v69 == 11)
            {
              if (v66)
              {
                goto LABEL_148;
              }

              v65 += v26;
              goto LABEL_139;
            }

            if (v69 != 13)
            {
              break;
            }

            v65 += v26;
            if (v65 == v34)
            {
              goto LABEL_148;
            }

            if (v68 <= v65)
            {
              goto LABEL_602;
            }

            if (*(v67 + 16 * v65 + 8) == 13)
            {
              goto LABEL_148;
            }

LABEL_139:
            v66 = 1;
            if (v65 == v34)
            {
              goto LABEL_148;
            }
          }

          if ((v66 & (v69 == 3)) == 0)
          {
            break;
          }

          *(&v344 + 1) = v65 + v26;
          isVariation = Is<&(UniversalClassTable::isVariationSelector)>(&v344, v26, v319, v34);
          v31 = v35;
          if (isVariation)
          {
            v71 = v26;
          }

          else
          {
            v71 = 0;
          }

          v37 = v344;
          v38 = (*(&v344 + 1) + v71);
          v339[0] = v344;
          v339[1] = (*(&v344 + 1) + v71);
        }

LABEL_148:
        if (v38 == v34)
        {
          goto LABEL_366;
        }

        v72 = **(v37 + 13);
        if (v38 >= (*(*(v37 + 13) + 8) - v72) >> 4)
        {
          goto LABEL_602;
        }

        if (*(v72 + 16 * v38 + 8) != 11)
        {
          v32 = 5;
          goto LABEL_155;
        }

        v32 = 4;
        v44 = 2;
LABEL_42:
        v321 = v44;
LABEL_47:
        ;
      }

      while (1)
      {
LABEL_154:
        if (!((v32 != 0) | v31 & 1))
        {
          v161 = u_charType(FullChar);
          v162 = v321;
          if (((1 << v161) & 0x140) != 0)
          {
            v162 = 6;
          }

          v321 = v162;
          v45 = (v38 + v26);
          goto LABEL_365;
        }

LABEL_155:
        if (v321 != 1)
        {
          goto LABEL_350;
        }

        if (v38 == v34)
        {
          goto LABEL_359;
        }

        v73 = 0;
        v74 = *(v37 + 13);
        v75 = *v74;
        v76 = (v74[1] - *v74) >> 4;
        v77 = (v75 + 16 * v38 + 8);
        while (1)
        {
          if (v76 <= v38 + v73)
          {
            goto LABEL_602;
          }

          v78 = *v77;
          if ((*v77 & 0x8FF) == 0x807)
          {
            break;
          }

          v79 = (v38 + v26) - v34 + v73;
          v73 += v26;
          v77 = (v77 + v30);
          if (v78 != 21 || v79 == 0)
          {
            goto LABEL_167;
          }
        }

        v38 = (v38 + v26 + v73);
        v339[1] = v38;
LABEL_167:
        if (v38 == v34)
        {
          goto LABEL_359;
        }

        v81 = 0;
        v82 = (v75 + 16 * v38 + 8);
        while (1)
        {
          if (v76 <= v38 + v81)
          {
            goto LABEL_602;
          }

          v83 = *v82;
          if ((*v82 & 0x2FF) == 0x207)
          {
            break;
          }

          v84 = (v38 + v26) - v34 + v81;
          v81 += v26;
          v82 = (v82 + v30);
          if (v83 != 21 || v84 == 0)
          {
            goto LABEL_178;
          }
        }

        v38 = (v38 + v26 + v81);
        v339[1] = v38;
LABEL_178:
        if (v38 == v34)
        {
          goto LABEL_359;
        }

        v86 = 0;
        v87 = (v75 + 16 * v38 + 8);
        while (1)
        {
          if (v76 <= v38 + v86)
          {
            goto LABEL_602;
          }

          v88 = *v87;
          if ((*v87 & 0x4FF) == 0x407)
          {
            break;
          }

          v89 = (v38 + v26) - v34 + v86;
          v86 += v26;
          v87 = (v87 + v30);
          if (v88 != 21 || v89 == 0)
          {
            goto LABEL_189;
          }
        }

        v38 = (v38 + v26 + v86);
        v339[1] = v38;
LABEL_189:
        if (v38 == v34)
        {
          goto LABEL_359;
        }

        v91 = 0;
        v92 = (v75 + 16 * v38 + 8);
        while (1)
        {
          if (v76 <= v38 + v91)
          {
            goto LABEL_602;
          }

          v93 = *v92;
          if ((*v92 & 0x1FF) == 0x107)
          {
            break;
          }

          v94 = (v38 + v26) - v34 + v91;
          v91 += v26;
          v92 = (v92 + v30);
          if (v93 != 21 || v94 == 0)
          {
            goto LABEL_200;
          }
        }

        v38 = (v38 + v26 + v91);
        v339[1] = v38;
LABEL_200:
        if (v38 == v34)
        {
LABEL_359:
          v124 = 1;
          goto LABEL_367;
        }

LABEL_201:
        v96 = 0;
        v97 = (v75 + 8 + 16 * v38);
        do
        {
          if (v76 <= v38 + v96)
          {
            goto LABEL_602;
          }

          v98 = *v97;
          if ((*v97 & 0x8FF) == 0x812)
          {
            v38 = (v38 + v26 + v96);
            v339[1] = v38;
            if (v38 == v34)
            {
              goto LABEL_359;
            }

            goto LABEL_201;
          }

          v99 = (v38 + v26) - v34 + v96;
          v96 += v26;
          v97 = (v97 + v30);
        }

        while (v98 == 21 && v99 != 0);
        if (v38 == v34)
        {
          goto LABEL_359;
        }

LABEL_213:
        v101 = 0;
        v102 = (v75 + 8 + 16 * v38);
        do
        {
          if (v76 <= v38 + v101)
          {
            goto LABEL_602;
          }

          v103 = *v102;
          if ((*v102 & 0x2FF) == 0x212)
          {
            v38 = (v38 + v26 + v101);
            v339[1] = v38;
            if (v38 == v34)
            {
              goto LABEL_359;
            }

            goto LABEL_213;
          }

          v104 = (v38 + v26) - v34 + v101;
          v101 += v26;
          v102 = (v102 + v30);
        }

        while (v103 == 21 && v104 != 0);
        if (v38 == v34)
        {
          goto LABEL_359;
        }

LABEL_225:
        v106 = 0;
        v107 = (v75 + 8 + 16 * v38);
        do
        {
          if (v76 <= v38 + v106)
          {
            goto LABEL_602;
          }

          v108 = *v107;
          if ((*v107 & 0x4FF) == 0x412)
          {
            v38 = (v38 + v26 + v106);
            v339[1] = v38;
            if (v38 == v34)
            {
              goto LABEL_359;
            }

            goto LABEL_225;
          }

          v109 = (v38 + v26) - v34 + v106;
          v106 += v26;
          v107 = (v107 + v30);
        }

        while (v108 == 21 && v109 != 0);
        if (v38 == v34)
        {
          goto LABEL_359;
        }

LABEL_237:
        v111 = 0;
        v112 = (v75 + 8 + 16 * v38);
        do
        {
          if (v76 <= v38 + v111)
          {
            goto LABEL_602;
          }

          v113 = *v112;
          if ((*v112 & 0x1FF) == 0x112)
          {
            v38 = (v38 + v26 + v111);
            v339[1] = v38;
            if (v38 == v34)
            {
              goto LABEL_359;
            }

            goto LABEL_237;
          }

          v114 = (v38 + v26) - v34 + v111;
          v111 += v26;
          v112 = (v112 + v30);
        }

        while (v113 == 21 && v114 != 0);
        if (v38 == v34)
        {
          goto LABEL_359;
        }

        v116 = (v75 + 16 * v38 + 8);
        v117 = v38;
        while (1)
        {
          if (v76 <= v117)
          {
            goto LABEL_602;
          }

          v118 = *v116;
          if (v118 != 21)
          {
            break;
          }

          v117 = (v117 + v26);
          v116 += v30;
          if (v34 == v117)
          {
            goto LABEL_256;
          }
        }

        if (v118 == 10)
        {
          v38 = (v117 + v26);
          v339[1] = (v117 + v26);
        }

LABEL_256:
        if (v38 == v34)
        {
          goto LABEL_359;
        }

LABEL_257:
        v119 = 0;
        v120 = (v75 + 8 + 16 * v38);
        do
        {
          if (v76 <= v38 + v119)
          {
            goto LABEL_602;
          }

          v121 = *v120;
          if ((*v120 & 0x8FF) == 0x813)
          {
            v38 = (v38 + v26 + v119);
            v339[1] = v38;
            v124 = 1;
            if (v38 == v34)
            {
              goto LABEL_367;
            }

            goto LABEL_257;
          }

          v122 = (v38 + v26) - v34 + v119;
          v119 += v26;
          v120 = (v120 + v30);
        }

        while (v121 == 21 && v122 != 0);
        if (v38 == v34)
        {
          goto LABEL_359;
        }

LABEL_269:
        v125 = 0;
        v126 = (v75 + 8 + 16 * v38);
        do
        {
          if (v76 <= v38 + v125)
          {
            goto LABEL_602;
          }

          v127 = *v126;
          if ((*v126 & 0x2FF) == 0x213)
          {
            v38 = (v38 + v26 + v125);
            v339[1] = v38;
            v124 = 1;
            if (v38 == v34)
            {
              goto LABEL_367;
            }

            goto LABEL_269;
          }

          v128 = (v38 + v26) - v34 + v125;
          v125 += v26;
          v126 = (v126 + v30);
        }

        while (v127 == 21 && v128 != 0);
        if (v38 == v34)
        {
          goto LABEL_359;
        }

LABEL_281:
        v130 = 0;
        v131 = (v75 + 8 + 16 * v38);
        do
        {
          if (v76 <= v38 + v130)
          {
            goto LABEL_602;
          }

          v132 = *v131;
          if ((*v131 & 0x4FF) == 0x413)
          {
            v38 = (v38 + v26 + v130);
            v339[1] = v38;
            v124 = 1;
            if (v38 == v34)
            {
              goto LABEL_367;
            }

            goto LABEL_281;
          }

          v133 = (v38 + v26) - v34 + v130;
          v130 += v26;
          v131 = (v131 + v30);
        }

        while (v132 == 21 && v133 != 0);
        if (v38 == v34)
        {
          goto LABEL_359;
        }

LABEL_293:
        v135 = 0;
        v136 = (v75 + 8 + 16 * v38);
        do
        {
          if (v76 <= v38 + v135)
          {
            goto LABEL_602;
          }

          v137 = *v136;
          if ((*v136 & 0x1FF) == 0x113)
          {
            v38 = (v38 + v26 + v135);
            v339[1] = v38;
            v124 = 1;
            if (v38 == v34)
            {
              goto LABEL_367;
            }

            goto LABEL_293;
          }

          v138 = (v38 + v26) - v34 + v135;
          v135 += v26;
          v136 = (v136 + v30);
        }

        while (v137 == 21 && v138 != 0);
        if (v38 == v34)
        {
          goto LABEL_359;
        }

LABEL_305:
        v140 = 0;
        v141 = (v75 + 8 + 16 * v38);
        do
        {
          if (v76 <= v38 + v140)
          {
            goto LABEL_602;
          }

          v142 = *v141;
          if ((*v141 & 0x2FF) == 0x205)
          {
            v38 = (v38 + v26 + v140);
            v339[1] = v38;
            v124 = 1;
            if (v38 == v34)
            {
              goto LABEL_367;
            }

            goto LABEL_305;
          }

          v143 = (v38 + v26) - v34 + v140;
          v140 += v26;
          v141 = (v141 + v30);
        }

        while (v142 == 21 && v143 != 0);
        if (v38 == v34)
        {
          goto LABEL_359;
        }

LABEL_317:
        v145 = 0;
        v146 = (v75 + 8 + 16 * v38);
        do
        {
          if (v76 <= v38 + v145)
          {
            goto LABEL_602;
          }

          v147 = *v146;
          if ((*v146 & 0x4FF) == 0x405)
          {
            v38 = (v38 + v26 + v145);
            v339[1] = v38;
            v124 = 1;
            if (v38 == v34)
            {
              goto LABEL_367;
            }

            goto LABEL_317;
          }

          v148 = (v38 + v26) - v34 + v145;
          v145 += v26;
          v146 = (v146 + v30);
        }

        while (v147 == 21 && v148 != 0);
        if (v38 == v34)
        {
          goto LABEL_359;
        }

LABEL_329:
        v150 = 0;
        v151 = (v75 + 8 + 16 * v38);
        do
        {
          if (v76 <= v38 + v150)
          {
            goto LABEL_602;
          }

          v152 = *v151;
          if ((*v151 & 0x1FF) == 0x105)
          {
            v38 = (v38 + v26 + v150);
            v339[1] = v38;
            v124 = 1;
            if (v38 == v34)
            {
              goto LABEL_367;
            }

            goto LABEL_329;
          }

          v153 = (v38 + v26) - v34 + v150;
          v150 += v26;
          v151 = (v151 + v30);
        }

        while (v152 == 21 && v153 != 0);
        if (v38 == v34)
        {
          goto LABEL_359;
        }

        v155 = v75 + 8;
        while (1)
        {
          v156 = (v38 + v26);
          v157 = (v155 + 16 * v38);
          v158 = v38;
          while (1)
          {
            if (v76 <= v158)
            {
              goto LABEL_602;
            }

            v159 = *v157;
            if (v159 != 21)
            {
              break;
            }

            v158 = (v158 + v26);
            v156 = (v156 + v26);
            v157 += v30;
            if (v34 == v158)
            {
              goto LABEL_350;
            }
          }

          if (v159 != 6)
          {
            break;
          }

          v339[1] = v156;
          v124 = 1;
          v38 = v156;
          if (v34 == v156)
          {
            goto LABEL_367;
          }
        }

LABEL_350:
        if (v38 == v34)
        {
          goto LABEL_366;
        }

        v39 = **(v37 + 13);
        v40 = *(*(v37 + 13) + 8);
        if (v38 >= (v40 - v39) >> 4)
        {
          goto LABEL_602;
        }

        if (*(v39 + 16 * v38 + 8) != 13)
        {
          goto LABEL_366;
        }

LABEL_353:
        if ((v32 != 0) | v31 & 1)
        {
          break;
        }

        v32 = 0;
      }

      v160 = v38 + v26;
      v339[1] = (v38 + v26);
      if ((v38 + v26) == v34)
      {
        goto LABEL_366;
      }

      if (v160 >= (v40 - v39) >> 4)
      {
        goto LABEL_602;
      }

      if (*(v39 + 16 * v160 + 8) != 13)
      {
        goto LABEL_15;
      }

LABEL_368:
      v163 = v339[1];
      v164 = v339[1] - v26;
      if (v27 >= v339[1] - v26)
      {
        v165 = (v339[1] - v26);
      }

      else
      {
        v165 = v27;
      }

      if (v27 - (v339[1] - v26) >= 0)
      {
        v166 = (v27 - (v339[1] - v26));
      }

      else
      {
        v166 = ((v339[1] - v26) - v27);
      }

      StringIndex = TRunGlue::GetStringIndex(v319, v27);
      v168 = TRunGlue::GetStringIndex(*(v324 + 8), v164);
      v169 = *(v324 + 8);
      if (*(v169 + 18))
      {
        TRunGlue::FocusOnIndex(v169, v164);
        v170 = [*(*(v169 + 18) + 216) attachmentCountAtIndex:&v164[*(*(v169 + 18) + 200) - *(v169 + 19)]];
      }

      else
      {
        v170 = 0;
      }

      v171 = v166 + 1;
      v325 = StringIndex;
      *&v326 = v168 - StringIndex + v170 + 1;
      *(&v326 + 1) = v165;
      *&v327 = v166 + 1;
      DWORD2(v327) = v321;
      if (!v358)
      {
        std::__throw_bad_function_call[abi:fn200100]();
      }

      (*(*v358 + 48))(v358, &v325);
      v7 = v324;
      v25 = *(v324 + 8);
      v27 = v163;
      v29 = v317 - v171;
      if (v317 <= v171)
      {
LABEL_417:
        if (v358 == v357)
        {
          (*(*v358 + 32))(v358);
        }

        else if (v358)
        {
          (*(*v358 + 40))();
        }

        v177 = *(v7 + 8);
        v325 = *v7;
        v326 = 0u;
        v327 = 0u;
        v337 = 0;
        v336 = 0u;
        v335 = 0u;
        v334 = 0u;
        v332 = 0u;
        v333 = 0u;
        v330 = 0u;
        v331 = 0u;
        v328 = 0u;
        v329 = 0u;
        *&v336 = *(v325 + 16);
        v178 = v177[6];
        v355[0] = -1;
        v179 = __p;
        v180 = v360;
        if (__p != v360)
        {
          while (2)
          {
            if (LODWORD(v179[2].location) == 6)
            {
              LODWORD(v344) = 9676;
              location = v179->location;
              v182 = *(v7 + 8);
              v183 = *(v182 + 40);
              if (v183 == -1)
              {
                TRunGlue::ComputeEndIndex(*(v7 + 8));
                v183 = *(v182 + 40);
              }

              if (location <= v183 || (v340 = (location - 1), v184 = TCharStreamIterator::GetFullChar(&v325, &v340, 0), v184 != v344))
              {
                v185 = v355[0];
                v186 = *(v7 + 8);
                if (v355[0] == 0xFFFF)
                {
                  GetGlyphsForLongCharacters(*(v186 + 496), &v344, v355, 1);
                  v186 = *(v7 + 8);
                  v185 = v355[0];
                }

                v187 = v179[1].location;
                LOWORD(v340) = v185;
                v188 = TRunGlue::DoGlyphInsertion(v186, &v340, 1u, *(v186 + 24) >= 0, 0, v187, v187, 1, 0);
                v338 |= v188;
                v189 = __p;
                v190 = v360;
                if (__p != v360)
                {
                  v191 = (__p + 24);
                  while (1)
                  {
                    length = v191[-1].length;
                    if (length > v187)
                    {
                      break;
                    }

                    v194 = v191->location;
                    v193 = v191;
                    if (v191->location + length > v187)
                    {
                      goto LABEL_434;
                    }

LABEL_435:
                    v189 = (v189 + 40);
                    v195 = v191 + 1;
                    v191 = (v191 + 40);
                    if (v195 == v190)
                    {
                      goto LABEL_436;
                    }
                  }

                  v193 = v189 + 1;
                  v194 = v191[-1].length;
LABEL_434:
                  v193->location = v194 + 1;
                  goto LABEL_435;
                }

LABEL_436:
                v196 = v179[1].length - 1;
                if (v178 > 0)
                {
                  v196 = 0;
                }

                v197 = v196 + v179[1].location;
                if (v197 >= (*(v323 + 1) - *v323) >> 4)
                {
                  goto LABEL_602;
                }

                *(*v323 + 16 * v197 + 8) = 1;
              }
            }

            v179 = (v179 + 40);
            if (v179 != v180)
            {
              continue;
            }

            break;
          }

          v177 = *(v7 + 8);
        }

        v198 = &v340;
        if (TRunGlue::length(v177) >= 1)
        {
          for (j = 0; j < TRunGlue::length(*(v324 + 8)); ++j)
          {
            if (j >= ((*(v323 + 1) - *v323) >> 4))
            {
              goto LABEL_602;
            }

            if ((*(*v323 + 16 * j + 9) & 0x10) != 0)
            {
              v356[0] = TRunGlue::GetStringIndex(*(v324 + 8), j);
              v200 = TCharStreamIterator::GetFullChar(&v325, v356, 0);
              *&v344 = 0xAAAAAAAAAAAAAAAALL;
              DWORD2(v344) = -1431655766;
              SplitMatra = UniversalClassTable::getSplitMatra(v200);
              v203 = v202;
              *&v344 = SplitMatra;
              DWORD2(v344) = v202;
              if (v202)
              {
                v204 = 3;
              }

              else
              {
                v204 = 2;
              }

              *&v205 = 0xAAAAAAAAAAAAAAAALL;
              *(&v205 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v342[2] = v205;
              v342[3] = v205;
              v342[0] = v205;
              v342[1] = v205;
              v340 = 0;
              v341 = 0uLL;
              *&v342[4] = v342;
              std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__vallocate[abi:fn200100](&v340, v204);
              v206 = v341;
              bzero(v341, ((2 * v204 + 6) & 6) + 2);
              *&v341 = v206 + 2 * v204;
              if (GetGlyphsForLongCharacters(*(*(v324 + 8) + 496), &v344, v340, v204) == v204)
              {
                v338 = 1;
                if (v341 == v340)
                {
                  goto LABEL_602;
                }

                TRunGlue::SetGlyphID<true>(*(v324 + 8), j, *v340);
                if ((v178 & 0x80000000) != 0)
                {
                  v208 = &v344 + 8;
                  v209 = &v344 + 4;
                  if (!v203)
                  {
                    v208 = &v344 + 4;
                  }

                  do
                  {
                    v210 = *(v209 - 1);
                    *(v209 - 1) = *v208;
                    *v208 = v210;
                    v208 -= 4;
                    v211 = v209 >= v208;
                    v209 += 4;
                  }

                  while (!v211);
                  v207 = v340;
                  v212 = (v341 - 2);
                  if (v340 + 1 != v341 && v212 > v340 + 1)
                  {
                    v214 = v340 + 2;
                    do
                    {
                      v215 = *(v214 - 1);
                      *(v214 - 1) = *v212;
                      *v212-- = v215;
                      v211 = v214++ >= v212;
                    }

                    while (!v211);
                  }
                }

                else
                {
                  v207 = v340;
                }

                v216 = v204 - 1;
                if (TRunGlue::DoGlyphInsertion(*(v324 + 8), v207 + 1, (v204 - 1), (v178 >> 31) & 1, 0, j, j, 0, 0))
                {
                  v217 = __p;
                  v218 = v360;
                  if (__p != v360)
                  {
                    v219 = (__p + 24);
                    while (1)
                    {
                      v220 = v219[-1].length;
                      if (v220 > j)
                      {
                        break;
                      }

                      v222 = v219->location;
                      v221 = v219;
                      if (v219->location + v220 > j)
                      {
                        goto LABEL_471;
                      }

LABEL_472:
                      v217 = (v217 + 40);
                      v223 = v219 + 1;
                      v219 = (v219 + 40);
                      if (v223 == v218)
                      {
                        goto LABEL_473;
                      }
                    }

                    v221 = v217 + 1;
                    v222 = v219[-1].length;
LABEL_471:
                    v221->location = v222 + v216;
                    goto LABEL_472;
                  }

LABEL_473:
                  v224 = (16 * j) | 8;
                  v225 = &v344;
                  v226 = j;
                  do
                  {
                    if (v226 >= (*(v323 + 1) - *v323) >> 4)
                    {
                      goto LABEL_602;
                    }

                    v228 = *v225++;
                    v227 = *v323;
                    *(v227 + v224) = UniversalClassTable::getCharClass(*(v324 + 16), v228);
                    v224 += 16;
                    ++v226;
                    --v204;
                  }

                  while (v204);
                  j += v216;
                  v198 = &v340;
                }
              }

              v339[0] = &v340;
              std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v339);
            }
          }
        }

        qmemcpy(v356, "pmcclcolartlmrtltkunnhka", sizeof(v356));
        qmemcpy(v355, "pmcclcolaltrmltrtkunnhka", 24);
        if (v178 <= 0)
        {
          v229 = v355;
        }

        else
        {
          v229 = v356;
        }

        *&v230 = 0xAAAAAAAAAAAAAAAALL;
        *(&v230 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v352 = v230;
        v351 = v230;
        v350 = v230;
        v349 = v230;
        v348 = v230;
        v347 = v230;
        v346 = v230;
        v353 = 0xAAAAAAAAAAAAAAAALL;
        v345 = 0;
        v344 = 0uLL;
        v354 = &v346;
        OTL::FeatureBuffer::FeatureBuffer(&v340, v229, 6);
        OTL::GCommon::GetLookups(v316, &v340, &v344, 0);
        v339[0] = &v340;
        std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](v339);
        memset(v342, 170, sizeof(v342));
        v340 = 0;
        v341 = 0uLL;
        v343 = v342;
        v231 = __p;
        v232 = v360;
        while (v231 != v232)
        {
          v234 = *(&v344 + 1);
          v233 = v344;
          if (v344 != *(&v344 + 1))
          {
            v235 = v231[1].location;
            v236 = v231[1].length;
            do
            {
              v237 = *v233++;
              v198 = v198 & 0xFFFFFFFF00000000 | v237;
              OTL::GlyphLookups::SetLookupInRange<false>(&v340, v198, v235, v236);
            }

            while (v233 != v234);
          }

          v231 = (v231 + 40);
        }

        v339[2] = 0xAAAAAAAA00000000;
        v339[0] = &__p;
        v339[1] = v323;
        OTL::GSUB::ApplyLookups(v316, *(v324 + 8), *(*(v324 + 8) + 24), &v340, &v338, UniversalShapingEngine::ApplyLookups<TInlineVector<UniversalShapingEngine::Syllable,30ul>>(OTL::GSUB const&,OTL::GlyphLookups &,TInlineVector<UniversalShapingEngine::Syllable,30ul> &,SyncState *,TGlyphAuxDataList &,unsigned int)const::{lambda(void *,CFRange,long)#1}::__invoke, v339);
        v339[0] = &v340;
        std::vector<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>::__destroy_vector::operator()[abi:fn200100](v339);
        v340 = &v344;
        v238 = &v340;
        std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v340);
        *&v239 = 0xAAAAAAAAAAAAAAAALL;
        *(&v239 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v352 = v239;
        v351 = v239;
        v350 = v239;
        v349 = v239;
        v348 = v239;
        v347 = v239;
        v346 = v239;
        v353 = 0xAAAAAAAAAAAAAAAALL;
        v345 = 0;
        v344 = 0uLL;
        v354 = &v346;
        LODWORD(v356[0]) = 1919969382;
        OTL::FeatureBuffer::FeatureBuffer(&v340, v356, 1);
        OTL::GCommon::GetLookups(v316, &v340, &v344, 0);
        v339[0] = &v340;
        std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](v339);
        v240 = v342;
        memset(v342, 170, sizeof(v342));
        v340 = 0;
        v341 = 0uLL;
        v343 = v342;
        v241 = __p;
        v242 = v360;
        while (v241 != v242)
        {
          v243 = v241[1].length;
          if (v243 >= 3)
          {
            v244 = (v178 & 0x80000000) == 0 || v243 == 3;
            v245 = v244 ? 0 : v243 - 3;
            v238 = *(&v344 + 1);
            v246 = v344;
            if (v344 != *(&v344 + 1))
            {
              v247 = v241[1].location;
              do
              {
                v248 = *v246++;
                v240 = v240 & 0xFFFFFFFF00000000 | v248;
                OTL::GlyphLookups::SetLookupInRange<false>(&v340, v240, v247 + v245, 3);
              }

              while (v246 != v238);
            }
          }

          v241 = (v241 + 40);
        }

        v339[0] = &__p;
        v339[1] = v323;
        v339[2] = 0xAAAAAAAA0000000FLL;
        OTL::GSUB::ApplyLookups(v316, *(v324 + 8), *(*(v324 + 8) + 24), &v340, &v338, UniversalShapingEngine::ApplyLookups<TInlineVector<UniversalShapingEngine::Syllable,30ul>>(OTL::GSUB const&,OTL::GlyphLookups &,TInlineVector<UniversalShapingEngine::Syllable,30ul> &,SyncState *,TGlyphAuxDataList &,unsigned int)const::{lambda(void *,CFRange,long)#1}::__invoke, v339);
        v339[0] = &v340;
        std::vector<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>::__destroy_vector::operator()[abi:fn200100](v339);
        v340 = &v344;
        std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v340);
        *&v249 = 0xAAAAAAAAAAAAAAAALL;
        *(&v249 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v352 = v249;
        v351 = v249;
        v350 = v249;
        v349 = v249;
        v348 = v249;
        v347 = v249;
        v346 = v249;
        v353 = 0xAAAAAAAAAAAAAAAALL;
        v345 = 0;
        v344 = 0uLL;
        v354 = &v346;
        LODWORD(v356[0]) = 1886545254;
        OTL::FeatureBuffer::FeatureBuffer(&v340, v356, 1);
        OTL::GCommon::GetLookups(v316, &v340, &v344, 0);
        v339[0] = &v340;
        std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](v339);
        memset(v342, 170, sizeof(v342));
        v340 = 0;
        v341 = 0uLL;
        v343 = v342;
        v250 = __p;
        v251 = v360;
        while (v250 != v251)
        {
          v252 = *(&v344 + 1);
          v253 = v344;
          if (v344 != *(&v344 + 1))
          {
            v254 = v250[1].location;
            v255 = v250[1].length;
            do
            {
              v256 = *v253++;
              v238 = v238 & 0xFFFFFFFF00000000 | v256;
              OTL::GlyphLookups::SetLookupInRange<false>(&v340, v238, v254, v255);
            }

            while (v253 != v252);
          }

          v250 = (v250 + 40);
        }

        v339[2] = 0xAAAAAAAA00020812;
        v339[0] = &__p;
        v339[1] = v323;
        OTL::GSUB::ApplyLookups(v316, *(v324 + 8), *(*(v324 + 8) + 24), &v340, &v338, UniversalShapingEngine::ApplyLookups<TInlineVector<UniversalShapingEngine::Syllable,30ul>>(OTL::GSUB const&,OTL::GlyphLookups &,TInlineVector<UniversalShapingEngine::Syllable,30ul> &,SyncState *,TGlyphAuxDataList &,unsigned int)const::{lambda(void *,CFRange,long)#1}::__invoke, v339);
        v339[0] = &v340;
        std::vector<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>::__destroy_vector::operator()[abi:fn200100](v339);
        v340 = &v344;
        std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v340);
        *&v257 = 0xAAAAAAAAAAAAAAAALL;
        *(&v257 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v352 = v257;
        v351 = v257;
        v350 = v257;
        v349 = v257;
        v348 = v257;
        v347 = v257;
        v346 = v257;
        v353 = 0xAAAAAAAAAAAAAAAALL;
        v345 = 0;
        v344 = 0uLL;
        v354 = &v346;
        qmemcpy(v339, "frkrfvbafwlbflahftsputavtcjc", 28);
        OTL::FeatureBuffer::FeatureBuffer(&v340, v339, 7);
        OTL::GCommon::GetLookups(v316, &v340, &v344, 0);
        v356[0] = &v340;
        std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](v356);
        memset(v342, 170, sizeof(v342));
        v340 = 0;
        v341 = 0uLL;
        v343 = v342;
        v258 = __p;
        v259 = v360;
        while (v258 != v259)
        {
          v260 = *(&v344 + 1);
          v261 = v344;
          if (v344 != *(&v344 + 1))
          {
            v262 = v258[1].location;
            v263 = v258[1].length;
            do
            {
              v264 = *v261++;
              v238 = v238 & 0xFFFFFFFF00000000 | v264;
              OTL::GlyphLookups::SetLookupInRange<false>(&v340, v238, v262, v263);
            }

            while (v261 != v260);
          }

          v258 = (v258 + 40);
        }

        v339[2] = 0xAAAAAAAA00000000;
        v339[0] = &__p;
        v265 = v324;
        v339[1] = v323;
        OTL::GSUB::ApplyLookups(v316, *(v324 + 8), *(*(v324 + 8) + 24), &v340, &v338, UniversalShapingEngine::ApplyLookups<TInlineVector<UniversalShapingEngine::Syllable,30ul>>(OTL::GSUB const&,OTL::GlyphLookups &,TInlineVector<UniversalShapingEngine::Syllable,30ul> &,SyncState *,TGlyphAuxDataList &,unsigned int)const::{lambda(void *,CFRange,long)#1}::__invoke, v339);
        v339[0] = &v340;
        std::vector<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>::__destroy_vector::operator()[abi:fn200100](v339);
        v340 = &v344;
        std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v340);
        v266 = __p;
        v320 = v360;
        if (__p == v360)
        {
          goto LABEL_608;
        }

        v318 = 0;
        while (1)
        {
          v268 = v266[1].location;
          v267 = v266[1].length;
          v269 = v267 - 1;
          if (v178 > 0)
          {
            v269 = 0;
          }

          v270 = v269 + v268;
          if (v269 + v268 >= ((*(v323 + 1) - *v323) >> 4))
          {
            goto LABEL_602;
          }

          if (*(*v323 + 16 * v270 + 8) == 15)
          {
            v271 = TRunGlue::GlyphRangeForGlyphIndex(*(v324 + 8), v270);
            v273 = v271;
            v274 = v272;
            if (v178 <= 0)
            {
              v275 = -1;
            }

            else
            {
              v275 = v272;
            }

            v276 = v275 + v271;
            v277 = v267 + v268;
            if (v268 <= v275 + v271 && v277 > v276)
            {
              do
              {
                if (TRunGlue::IsDeleted(*(v324 + 8), v276))
                {
                  goto LABEL_536;
                }

                v284 = *v323;
                v285 = (*(v323 + 1) - *v323) >> 4;
                if (v285 <= v276)
                {
                  goto LABEL_602;
                }

                v286 = *(v284 + 16 * v276 + 8);
                if (v286 == 1 || v286 == 4)
                {
                  goto LABEL_536;
                }

                if (v286 != 10)
                {
                  break;
                }

                if ((v286 & 0x1000A) != 0xA)
                {
LABEL_536:
                  v288 = v276;
                }

                else
                {
                  v288 = v276 + v178;
                  if (v268 > (v276 + v178) || v277 <= v288)
                  {
                    break;
                  }

                  if (v285 <= v288)
                  {
                    goto LABEL_602;
                  }

                  if (*(v284 + 16 * v288 + 8) != 13)
                  {
                    break;
                  }
                }

                v276 = v288 + v178;
              }

              while (v268 <= (v288 + v178) && v277 > v276);
            }

            v280 = TRunGlue::GlyphRangeForGlyphIndex(*(v324 + 8), v276 - v178);
            if (v178 < 1)
            {
              v282 = v270 + 1;
              v283 = v280;
              v281 = v273;
            }

            else
            {
              v281 = v273 + v274;
              v282 = v280 + v279;
              v283 = v270;
            }

            TRunGlue::Rotate(*(v324 + 8), v283, v281, v282, v323);
            v318 = 1;
          }

          else
          {
            v277 = v267 + v268;
          }

          if (v268 <= v270 && v277 > v270)
          {
            break;
          }

LABEL_555:
          v266 = (v266 + 40);
          if (v266 == v320)
          {
            goto LABEL_603;
          }
        }

        v290 = 0;
        v322 = 0;
        if (v178 <= 0)
        {
          v291 = -1;
        }

        else
        {
          v291 = v267;
        }

        v292 = v291 + v268;
        v293 = (16 * v270) | 8;
        v294 = v270;
        while (2)
        {
          if ((TRunGlue::IsDeleted(*(v324 + 8), v294) & 1) == 0)
          {
            if (v294 >= ((*(v323 + 1) - *v323) >> 4))
            {
              goto LABEL_602;
            }

            v295 = *(*v323 + v293);
            v296 = v295;
            if (v295 <= 0x11u)
            {
              if (v295 == 1 || v295 == 4)
              {
                if (v268 <= v292 && v277 > v292)
                {
                  goto LABEL_562;
                }

                v298 = TRunGlue::GlyphRangeForGlyphIndex(*(v324 + 8), v294);
                v300 = v299 - 1;
                if (v178 > 0)
                {
                  v300 = 0;
                }
              }

              else
              {
                v301 = v295 & 0x100FF;
                if (v296 != 10 || v301 != 10)
                {
                  goto LABEL_562;
                }

                v298 = TRunGlue::GlyphRangeForGlyphIndex(*(v324 + 8), v294);
                if (v178 <= 0)
                {
                  v300 = -1;
                }

                else
                {
                  v300 = v303;
                }
              }

              v292 = v300 + v298;
              goto LABEL_562;
            }

            if (v295 - 18 < 2 && (v295 & 0x800) != 0)
            {
              if (*&v322 & ((v295 & 0x20000u) >> 17))
              {
                v322 = 1;
              }

              else
              {
                if (v270 >= v294)
                {
                  v304 = v294;
                }

                else
                {
                  v304 = v270;
                }

                if (v290 >= 0)
                {
                  v305 = v290;
                }

                else
                {
                  v305 = -v290;
                }

                v322 = 1;
                if (v304 <= v292 && v304 + v305 + 1 > v292)
                {
                  if (v178 < 1)
                  {
                    v308 = v294 + 1;
                    v306 = v292 + 1;
                    v307 = v294;
                  }

                  else
                  {
                    v306 = v294 + 1;
                    v307 = v292;
                    v308 = v294;
                  }

                  TRunGlue::Rotate(*(v324 + 8), v307, v308, v306, v323);
                  v322 = 1;
                  v318 = 1;
                }
              }
            }
          }

LABEL_562:
          v294 += v178;
          if (v268 > v294)
          {
            goto LABEL_555;
          }

          v293 += 16 * v178;
          v290 -= v178;
          if (v277 <= v294)
          {
            goto LABEL_555;
          }

          continue;
        }
      }
    }
  }

  v17 = v16;
  v18 = 0;
  v19 = 0;
  while (1)
  {
    v325 = TRunGlue::GetStringIndex(v14, v19);
    v20 = TCharStreamIterator::GetFullChar(&v340, &v325, 0);
    CharClass = UniversalClassTable::getCharClass(*(v7 + 16), v20);
    v22 = **(v14 + 13);
    if (v19 >= (*(*(v14 + 13) + 8) - v22) >> 4)
    {
      break;
    }

    v23 = v22 + v18;
    *(v23 + 8) = CharClass;
    *(v23 + 12) = 0;
    ++v19;
    v18 += 16;
    if (v17 == v19)
    {
      goto LABEL_7;
    }
  }

LABEL_602:
  __break(1u);
LABEL_603:
  v265 = v324;
  if (v318)
  {
    v338 = 1;
    if (*(*(v324 + 8) + 144))
    {
      v309 = __p;
      v310 = v360;
      while (v309 != v310)
      {
        TRunGlue::ClearSafeToBreakAfter(*(v324 + 8), v309[1]);
        v309 = (v309 + 40);
      }
    }
  }

LABEL_608:
  if (*(v265[2] + 8) == 1)
  {
    *&v342[0] = 0xAAAAAAAAAAAAAA01;
    v312 = *v265;
    v311 = v265[1];
    v340 = &unk_1EF25B9F8;
    *&v341 = v312;
    *(&v341 + 1) = v311;
    if (v312)
    {
      *(v311 + 512) = 257;
      off_1EF25BA10(&v340, v316, v315);
      v313 = 1;
    }

    else
    {
      v313 = 0;
    }

    v338 |= v313;
  }

  if (__p)
  {
    v360 = __p;
    if (v362 > __p || v363 <= __p)
    {
      operator delete(__p);
    }
  }

  return v338;
}

uint64_t Is<&(UniversalClassTable::isVariationSelector(unsigned int))>(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 == a4)
  {
    return 0;
  }

  v5 = *(*result + 104);
  v6 = *v5;
  v7 = (v5[1] - *v5) >> 4;
  v8 = (v6 + 16 * v4 + 8);
  while (1)
  {
    if (v7 <= v4)
    {
      __break(1u);
      return result;
    }

    v9 = *v8;
    if (v9 != 21)
    {
      break;
    }

    v4 += a2;
    v8 += 16 * a2;
    if (a4 == v4)
    {
      return 0;
    }
  }

  if (v9 != 22)
  {
    return 0;
  }

  *(result + 8) = v4;
  return 1;
}

uint64_t Is<&(UniversalClassTable::isHieroglyphSegmentBegin(unsigned int))>(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 == a4)
  {
    return 0;
  }

  v5 = *(*result + 104);
  v6 = *v5;
  v7 = (v5[1] - *v5) >> 4;
  v8 = (v6 + 16 * v4 + 8);
  while (1)
  {
    if (v7 <= v4)
    {
      __break(1u);
      return result;
    }

    v9 = *v8;
    if (v9 != 21)
    {
      break;
    }

    v4 += a2;
    v8 += 16 * a2;
    if (a4 == v4)
    {
      return 0;
    }
  }

  if (v9 != 25)
  {
    return 0;
  }

  *(result + 8) = v4;
  return 1;
}

uint64_t Is<&(UniversalClassTable::isHieroglyph(unsigned int))>(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 == a4)
  {
    return 0;
  }

  v5 = *(*result + 104);
  v6 = *v5;
  v7 = (v5[1] - *v5) >> 4;
  v8 = (v6 + 16 * v4 + 8);
  while (1)
  {
    if (v7 <= v4)
    {
      __break(1u);
      return result;
    }

    v9 = *v8;
    if (v9 != 21)
    {
      break;
    }

    v4 += a2;
    v8 += 16 * a2;
    if (a4 == v4)
    {
      return 0;
    }
  }

  if (v9 != 23)
  {
    return 0;
  }

  *(result + 8) = v4;
  return 1;
}

uint64_t Is<&(UniversalClassTable::isHieroglyphMirror(unsigned int))>(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 == a4)
  {
    return 0;
  }

  v5 = *(*result + 104);
  v6 = *v5;
  v7 = (v5[1] - *v5) >> 4;
  v8 = (v6 + 16 * v4 + 8);
  while (1)
  {
    if (v7 <= v4)
    {
      __break(1u);
      return result;
    }

    v9 = *v8;
    if (v9 != 21)
    {
      break;
    }

    v4 += a2;
    v8 += 16 * a2;
    if (a4 == v4)
    {
      return 0;
    }
  }

  if (v9 != 28)
  {
    return 0;
  }

  *(result + 8) = v4;
  return 1;
}

uint64_t Is<&(UniversalClassTable::isHieroglyphModifier(unsigned int))>(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 == a4)
  {
    return 0;
  }

  v5 = *(*result + 104);
  v6 = *v5;
  v7 = (v5[1] - *v5) >> 4;
  v8 = (v6 + 16 * v4 + 8);
  while (1)
  {
    if (v7 <= v4)
    {
      __break(1u);
      return result;
    }

    v9 = *v8;
    if (v9 != 21)
    {
      break;
    }

    v4 += a2;
    v8 += 16 * a2;
    if (a4 == v4)
    {
      return 0;
    }
  }

  if (v9 != 27)
  {
    return 0;
  }

  *(result + 8) = v4;
  return 1;
}

uint64_t Is<&(UniversalClassTable::isHieroglyphSegmentEnd(unsigned int))>(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 == a4)
  {
    return 0;
  }

  v5 = *(*result + 104);
  v6 = *v5;
  v7 = (v5[1] - *v5) >> 4;
  v8 = (v6 + 16 * v4 + 8);
  while (1)
  {
    if (v7 <= v4)
    {
      __break(1u);
      return result;
    }

    v9 = *v8;
    if (v9 != 21)
    {
      break;
    }

    v4 += a2;
    v8 += 16 * a2;
    if (a4 == v4)
    {
      return 0;
    }
  }

  if (v9 != 26)
  {
    return 0;
  }

  *(result + 8) = v4;
  return 1;
}

uint64_t Is<&(UniversalClassTable::isHieroglyphJoiner(unsigned int))>(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 == a4)
  {
    return 0;
  }

  v5 = *(*result + 104);
  v6 = *v5;
  v7 = (v5[1] - *v5) >> 4;
  v8 = (v6 + 16 * v4 + 8);
  while (1)
  {
    if (v7 <= v4)
    {
      __break(1u);
      return result;
    }

    v9 = *v8;
    if (v9 != 21)
    {
      break;
    }

    v4 += a2;
    v8 += 16 * a2;
    if (a4 == v4)
    {
      return 0;
    }
  }

  if (v9 != 24)
  {
    return 0;
  }

  *(result + 8) = v4;
  return 1;
}

uint64_t Is<&(BOOL IsClassWithPosition<&(UniversalClassTable::isNukta(unsigned int)),(Position)0>(unsigned int))>(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 == a4)
  {
    return 0;
  }

  v5 = *(*result + 104);
  v6 = *v5;
  v7 = (v5[1] - *v5) >> 4;
  v8 = (v6 + 16 * v4 + 8);
  while (v7 > v4)
  {
    if ((*v8 & 0x2FF) == 0x208)
    {
      *(result + 8) = v4;
      return 1;
    }

    v9 = *v8 != 21 || a4 - a2 == v4;
    v4 += a2;
    v8 += 4 * a2;
    if (v9)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t Is<&(BOOL IsClassWithPosition<&(UniversalClassTable::isNukta(unsigned int)),(Position)1>(unsigned int))>(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  if (v4 == a4)
  {
    return 0;
  }

  v5 = *(*result + 104);
  v6 = *v5;
  v7 = (v5[1] - *v5) >> 4;
  v8 = (v6 + 16 * v4 + 8);
  while (v7 > v4)
  {
    if ((*v8 & 0x4FF) == 0x408)
    {
      *(result + 8) = v4;
      return 1;
    }

    v9 = *v8 != 21 || a4 - a2 == v4;
    v4 += a2;
    v8 += 4 * a2;
    if (v9)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t std::__function::__func<UniversalShapingEngine::ApplyScriptShaping(OTL::GSUB const&,OTL::GlyphLookups *)::$_0,std::allocator<UniversalShapingEngine::ApplyScriptShaping(OTL::GSUB const&,OTL::GlyphLookups *)::$_0>,void ()(UniversalShapingEngine::Syllable)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF25C138;
  a2[1] = v2;
  return result;
}

void std::__function::__func<UniversalShapingEngine::ApplyScriptShaping(OTL::GSUB const&,OTL::GlyphLookups *)::$_0,std::allocator<UniversalShapingEngine::ApplyScriptShaping(OTL::GSUB const&,OTL::GlyphLookups *)::$_0>,void ()(UniversalShapingEngine::Syllable)>::operator()(uint64_t a1, __int128 *a2)
{
  v21 = *a2;
  v22 = a2[1];
  v23 = *(a2 + 4);
  v2 = *(a1 + 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  if (v3 >= v4)
  {
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *v2) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x666666666666666)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *v2) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x333333333333333)
    {
      v11 = 0x666666666666666;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = *(v2 + 1224);
      v13 = v12 + 40 * v11;
      if (v13 > v2 + 1224)
      {
        if (v11 <= 0x666666666666666)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      *(v2 + 1224) = v13;
    }

    else
    {
      v12 = 0;
    }

    v14 = v12 + 40 * v8;
    v15 = v12 + 40 * v11;
    *v14 = v21;
    *(v14 + 16) = v22;
    *(v14 + 32) = v23;
    v7 = v14 + 40;
    v16 = *(v2 + 8) - *v2;
    v17 = v14 - v16;
    memcpy((v14 - v16), *v2, v16);
    v18 = *v2;
    *v2 = v17;
    *(v2 + 8) = v7;
    v19 = *(v2 + 16);
    *(v2 + 16) = v15;
    if (v18)
    {
      if (v2 + 24 > v18 || (v20 = (v2 + 1224), v2 + 1224 <= v18))
      {
        operator delete(v18);
      }

      else if (v19 == *v20)
      {
        *v20 = v18;
      }
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    v7 = v3 + 40;
  }

  *(v2 + 8) = v7;
}

_DWORD *UniversalShapingEngine::ApplyLookups<TInlineVector<UniversalShapingEngine::Syllable,30ul>>(OTL::GSUB const&,OTL::GlyphLookups &,TInlineVector<UniversalShapingEngine::Syllable,30ul> &,SyncState *,TGlyphAuxDataList &,unsigned int)const::{lambda(void *,CFRange,long)#1}::__invoke(_DWORD *result, int64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 - a3 >= 1)
  {
    v4 = **result;
    v5 = *(*result + 8);
    if (v4 != v5)
    {
      v6 = v4 + 3;
      while (1)
      {
        v7 = *(v6 - 1);
        if (v7 > a2)
        {
          break;
        }

        v9 = *v6;
        v8 = v6;
        if (*v6 + v7 > a2)
        {
          goto LABEL_7;
        }

LABEL_8:
        v4 += 5;
        v10 = v6 + 2;
        v6 += 5;
        if (v10 == v5)
        {
          goto LABEL_9;
        }
      }

      v8 = v4 + 2;
      v9 = *(v6 - 1);
LABEL_7:
      *v8 = v9 + a4 - a3;
      goto LABEL_8;
    }
  }

LABEL_9:
  v11 = **(result + 1);
  if (a2 >= ((*(*(result + 1) + 8) - v11) >> 4))
  {
    __break(1u);
  }

  else
  {
    v12 = result[4];
    v13 = v11 + 16 * a2;
    if (!v12)
    {
      v12 = *(v13 + 8) | 0x10000;
    }

    *(v13 + 8) = v12;
  }

  return result;
}

void TAATLtagTable::TAATLtagTable(TAATLtagTable *this, const TBaseFont *a2)
{
  CommonTable = TBaseFont::GetCommonTable(a2, 1634497633, 0);
  *this = CommonTable;
  v5 = (this + 8);
  if (CommonTable)
  {
    BytePtr = CFDataGetBytePtr(CommonTable);
    v7 = *this;
    *(this + 1) = BytePtr;
    if (v7)
    {
      v8 = CFDataGetBytePtr(v7);
      if (v8)
      {
        v9 = &v8[CFDataGetLength(v7)];
      }

      else
      {
        v9 = 0;
      }

      BytePtr = *v5;
    }

    else
    {
      v9 = 0;
    }

    *(this + 2) = v9;
    if (BytePtr && ((BytePtr + 12) > v9 || *BytePtr != 0x1000000))
    {
      (*(*a2 + 496))(a2, 1819566439);
    }
  }

  else
  {
    *v5 = 0;
    *(this + 2) = 0;
  }
}

void TAATLtagTable::CopyLanguageTags(TAATLtagTable *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 1);
  if (v3)
  {
    v5 = v3 + 12;
    v6 = bswap32(*(v3 + 8));
    v7 = *(this + 2);
    v8 = v3 + 12 + 4 * v6;
    if (v3 + 16 <= v7)
    {
      v9 = (v7 - (v3 + 12)) >> 2;
    }

    else
    {
      v9 = 0;
    }

    if (v8 <= v7 && v8 >= v5)
    {
      v11 = v6;
    }

    else
    {
      v11 = v9;
    }

    if (v11 >= 0xFFFF)
    {
      v12 = 0xFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    v13 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], v12, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (v11)
    {
      v14 = 0;
      do
      {
        v15 = *(this + 1);
        v16 = bswap32(*(v15 + 4 * v14 + 12));
        v17 = v16;
        v18 = (v15 + HIWORD(v16));
        if (v15 <= &v18[v16 - 1] && &v18[v16] <= *(this + 2))
        {
          TaggedPointerString = _CFStringCreateTaggedPointerString();
          if (atomic_load_explicit(&TaggedPointerString, memory_order_acquire) || (atomic_exchange(&TaggedPointerString, CFStringCreateWithBytes(v13, v18, v17, 0x8000100u, 0)), atomic_load_explicit(&TaggedPointerString, memory_order_acquire)))
          {
            CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v13, atomic_load_explicit(&TaggedPointerString, memory_order_acquire));
            if (CanonicalLanguageIdentifierFromString)
            {
              valuePtr = v14;
              v21 = CFNumberCreate(v13, kCFNumberIntType, &valuePtr);
              if (v21)
              {
                v22 = CanonicalLanguageIdentifierFromString;
                CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), v22, v21);
              }
            }
          }
        }

        ++v14;
      }

      while (v12 != v14);
    }

    *a2 = atomic_exchange(&Mutable, 0);
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t TTrackingEngine::TrackRuns(TTrackingEngine *this, TRunGlue *a2, const TCharStream *a3, CFRange a4, double a5)
{
  result = 0;
  __b[65] = *MEMORY[0x1E69E9840];
  if (a4.location >= 1 && a5 != 0.0)
  {
    v9 = *this;
    v10 = a3 + a4.location - 1;
    if (v10 <= 0)
    {
      v14 = 0;
      v10 = 0;
      v11 = *(v9 + 16);
      v12 = (*(v9 + 24) - v11) >> 3;
    }

    else
    {
      v11 = *(v9 + 16);
      v12 = (*(v9 + 24) - v11) >> 3;
      if (v12 <= a3 + a4.location - 2)
      {
        goto LABEL_25;
      }

      v13 = 0;
      v14 = 0;
      do
      {
        v14 += *(*(*(v11 + 8 * v13++) + 40) + 208);
      }

      while (v10 != v13);
    }

    if (v12 > v10)
    {
      v15 = 0;
      v16 = *(*(v11 + 8 * v10) + 48);
      for (i = v10 - 1; ; --i)
      {
        if ((*(v16 + 178) & 0x40) != 0)
        {
          goto LABEL_20;
        }

        if (*(v16 + 260))
        {
          goto LABEL_18;
        }

        memset(__b, 170, 0x208uLL);
        v18 = *(v16 + 8);
        __b[0] = *(v16 + 16) + v18;
        __b[1] = v18;
        LOBYTE(__b[5]) = 0;
        __b[2] = 0;
        __b[3] = 0;
        *(&__b[3] + 5) = 0;
        __b[6] = v9;
        __b[7] = a2;
        memset(&__b[8], 0, 208);
        __b[28] = *(a2 + 2);
        __b[64] = &__b[34];
        if (TScriptRun::NextRun(__b, 0) && LODWORD(__b[4]) != 1145457748)
        {
          if (LODWORD(__b[4]) == 1634885986)
          {
            break;
          }

          v19 = *(*(atomic_load_explicit((v16 + 56), memory_order_acquire) + 40) + 408);
          if ((*(*v19 + 480))(v19, 1786082164))
          {
            break;
          }
        }

        v23 = &__b[31];
        std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v23);
        TSimpleTracking::TrackRun(v16, v20, a5);
        v15 = 1;
LABEL_20:
        if ((i + 1) <= a3)
        {
          return v15 & 1;
        }

        v21 = *(v9 + 16);
        if (i >= (*(v9 + 24) - v21) >> 3)
        {
          goto LABEL_25;
        }

        v16 = *(*(v21 + 8 * i) + 48);
        v14 -= *(v16 + 208);
      }

      v23 = &__b[31];
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v23);
LABEL_18:
      v15 |= TJustEngine::ApplyTrackingToRun(this, a2, i + 1, v14, a5);
      goto LABEL_20;
    }

LABEL_25:
    __break(1u);
  }

  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFRange CFURLGetByteRangeForComponent(CFURLRef url, CFURLComponentType component, CFRange *rangeIncludingSeparators)
{
  v3 = MEMORY[0x1EEDB7D88](url, component, rangeIncludingSeparators);
  result.length = v4;
  result.location = v3;
  return result;
}

CGPoint CGContextGetTextPosition(CGContextRef c)
{
  MEMORY[0x1EEDB9600](c);
  result.y = v2;
  result.x = v1;
  return result;
}

CGRect CGFontGetFontBBox(CGFontRef font)
{
  MEMORY[0x1EEDB9B58](font);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC38](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPathGetPathBoundingBox(CGPathRef path)
{
  MEMORY[0x1EEDBAC58](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE78](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

double gotLoadHelper_x8__ASAttributeDownloadSize(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MobileAsset))
  {
    return dlopenHelper_MobileAsset(result);
  }

  return result;
}

double gotLoadHelper_x8__ASDownloadOptionAllowBatteryPower(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MobileAsset))
  {
    return dlopenHelper_MobileAsset(result);
  }

  return result;
}

double gotLoadHelper_x8__ASDownloadOptionPriority(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MobileAsset))
  {
    return dlopenHelper_MobileAsset(result);
  }

  return result;
}

double gotLoadHelper_x8__ASDownloadPriorityHigh(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MobileAsset))
  {
    return dlopenHelper_MobileAsset(result);
  }

  return result;
}

double gotLoadHelper_x8__InternationalSupportVersionNumber(double result)
{
  if (!atomic_load(&dlopenHelperFlag_InternationalSupport))
  {
    return dlopenHelper_InternationalSupport(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___ASAsset(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MobileAsset))
  {
    return dlopenHelper_MobileAsset(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___MAAsset(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MobileAsset))
  {
    return dlopenHelper_MobileAsset(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___MAAssetQuery(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MobileAsset))
  {
    return dlopenHelper_MobileAsset(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___MADownloadOptions(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MobileAsset))
  {
    return dlopenHelper_MobileAsset(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_InternationalSupport(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/InternationalSupport.framework/InternationalSupport", 0);
  atomic_store(1u, &dlopenHelperFlag_InternationalSupport);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_MobileAsset(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/MobileAsset.framework/MobileAsset", 0);
  atomic_store(1u, &dlopenHelperFlag_MobileAsset);
  return a1;
}