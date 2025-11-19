@interface AGXG18PFamilyCommandQueue_mtlnext
- (AGXG18PFamilyCommandQueue_mtlnext)initWithDevice:(id)a3 descriptor:(id)a4 isDriverInternal:(BOOL)a5;
- (BOOL)noMergeCommit:(const void *)a3 count:(unint64_t)a4 options:(id)a5 commitFeedback:(id)a6 error:(id *)a7;
- (id).cxx_construct;
- (void)commit:(const void *)a3 count:(unint64_t)a4;
- (void)commit:(const void *)a3 count:(unint64_t)a4 options:(id)a5;
- (void)copyTextureMappingsFromTexture:(id)a3 toTexture:(id)a4 operations:(id *)a5 count:(unint64_t)a6;
- (void)updateTextureMappings:(id)a3 heap:(id)a4 operations:(id *)a5 count:(unint64_t)a6;
@end

@implementation AGXG18PFamilyCommandQueue_mtlnext

- (id).cxx_construct
{
  *(self + 25) = 0;
  *(self + 26) = 0;
  *(self + 24) = 0;
  *(self + 28) = 0;
  *(self + 29) = 0;
  *(self + 27) = 0;
  return self;
}

- (void)commit:(const void *)a3 count:(unint64_t)a4 options:(id)a5
{
  if (self)
  {
    v9 = [IOGPUMetal4CommandQueue preCommit:"preCommit:count:options:" count:? options:?];
    v10 = v9;
    if (a4 < 2)
    {
      [(AGXG18PFamilyCommandQueue_mtlnext *)self noMergeCommit:a3 count:a4 options:a5 commitFeedback:v9 error:0];
    }

    else
    {
      [AGXG18PFamilyRenderContext_mtlnext mergeRenderEncoders:a3 count:a4 options:a5 commitFeedback:v9 queue:self error:0];
    }
  }
}

- (void)commit:(const void *)a3 count:(unint64_t)a4
{
  if (self)
  {
    v7 = [(IOGPUMetal4CommandQueue *)self preCommit:a3 count:a4 options:0];
    v8 = v7;
    if (a4 < 2)
    {
      [(AGXG18PFamilyCommandQueue_mtlnext *)self noMergeCommit:a3 count:a4 options:0 commitFeedback:v7 error:0];
    }

    else
    {
      [AGXG18PFamilyRenderContext_mtlnext mergeRenderEncoders:a3 count:a4 options:0 commitFeedback:v7 queue:self error:0];
    }
  }
}

- (BOOL)noMergeCommit:(const void *)a3 count:(unint64_t)a4 options:(id)a5 commitFeedback:(id)a6 error:(id *)a7
{
  v7 = a6;
  if (!self->_isDriverInternal && *(self->_device_objc->_impl + 903))
  {
    v8 = self;
    v10 = a4;
    v11 = a3;
    AGX::InternalSparseQueue::flushAndSubmitAllMappings(*(self->_device_objc->_impl + 903));
    self = v8;
    a3 = v11;
    a4 = v10;
    v7 = a6;
  }

  [(IOGPUMetal4CommandQueue *)self _commit:a3 count:a4 commitFeedback:v7];
  return 1;
}

- (void)copyTextureMappingsFromTexture:(id)a3 toTexture:(id)a4 operations:(id *)a5 count:(unint64_t)a6
{
  v10 = [a3 sparseTextureTier];
  if (v10 != [a4 sparseTextureTier])
  {
    return;
  }

  *(&self->super.super.super.super.isa + *MEMORY[0x29EDBB750]) = 0;
  *(&self->super.super.super.super.isa + *MEMORY[0x29EDBB758]) = 0;
  v159 = *MEMORY[0x29EDC55E8];
  os_unfair_lock_lock((self + v159));
  v11 = *MEMORY[0x29EDC55E0];
  v12 = *(&self->super.super.super.super.isa + v11);
  v160 = self;
  if (!v12)
  {
    [(IOGPUMetal4CommandQueue *)self allocateMappingCommandBuffer];
    v12 = *(&self->super.super.super.super.isa + v11);
  }

  v13 = [a3 sparseTextureTier];
  if (v13 != 1)
  {
    if (v13 == 2)
    {
      [(IOGPUMetal4CommandQueue *)self endTier1MappingCommands];
      v14 = v12[15];
      if (!v14)
      {
        [v12 allocateInternalSparseMappingEncoder];
        v14 = v12[15];
      }

      [v14 copyTextureMappingsFromTexture:a3 toTexture:a4 operations:a5 count:a6];
    }

    goto LABEL_222;
  }

  v156 = v12;
  v15 = *(a3 + 74);
  v186 = *(a4 + 74);
  v155 = a3;
  v16 = [a3 placementSparsePageSize];
  if (v16 == [a4 placementSparsePageSize])
  {
    [v156 commitEncoder];
    if (a6)
    {
      v17 = 0;
      v18 = 0;
      v19 = v15[56];
      v148 = a4 + 48;
      v181 = v15 + 99;
      v180 = (v186 + 396);
      v147 = v19 - 1;
      v149 = v15[57];
      v150 = v19;
      v146 = -v19;
      v144 = -v149;
      v145 = v149 - 1;
      v175 = a5;
      v188 = v15;
      while (1)
      {
        v20 = &a5[v17];
        var1 = v20->var1;
        var0 = v20->var0.var0.var0;
        var2 = v20->var0.var0.var2;
        v173 = v20->var0.var1.var0;
        v24 = v20->var0.var1.var2;
        v171 = v20->var0.var1.var1;
        var5 = v20->var5;
        v185 = v20->var2;
        var4 = v20->var4;
        v165 = v20->var3.var0;
        v176 = v20->var3.var1;
        v178 = v20->var0.var0.var1;
        v26 = v20->var3.var2;
        v27 = v15[59];
        v189 = v18;
        if ((*v181 & 0xFF00) == 0x400)
        {
          v28 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v15, 0);
          v29 = (v28 + v27 - 1) & -v27;
          if (!v27)
          {
            v29 = v28;
          }

          v163 = v29;
          v30 = v186;
        }

        else if ((*v181 & 0x10000) != 0)
        {
          v30 = v186;
          if (*v181)
          {
            v31 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v15, 0);
            v32 = (v31 + v27 - 1) & -v27;
            if (!v27)
            {
              v32 = v31;
            }
          }

          else
          {
            v32 = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v15, 0) * v15[33] + 127) & 0xFFFFFFFFFFFFFF80;
          }

          v163 = v32;
        }

        else
        {
          v30 = v186;
          if ((*v181 & 0xFF00) == 0x300)
          {
            v163 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v15, 0);
          }

          else
          {
            v163 = 0;
          }
        }

        v33 = *(v30 + 236);
        v168 = var0;
        if ((*v180 & 0xFF00) == 0x400)
        {
          goto LABEL_34;
        }

        if ((*v180 & 0x10000) != 0)
        {
          break;
        }

        if ((*v180 & 0xFF00) == 0x300)
        {
          v161 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v30, 0);
        }

        else
        {
          v161 = 0;
        }

LABEL_37:
        MipInTail = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v15, 1);
        v37 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v30, 1);
        if (MipInTail < var1)
        {
          goto LABEL_14;
        }

        if (v188[16] <= var1)
        {
          goto LABEL_14;
        }

        v38 = v37;
        if (v37 < var4)
        {
          goto LABEL_14;
        }

        if (*(v186 + 64) <= var4)
        {
          goto LABEL_14;
        }

        v39 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::tailSize(v188, 1, 0);
        v40 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::tailSize(v186, 1, 0);
        if ((MipInTail == var1) != (v38 == var4))
        {
          goto LABEL_14;
        }

        v41 = *v181 & 0xFF00;
        v157 = v40;
        v152 = v39;
        if (v41 == 768)
        {
          if (MipInTail == var1)
          {
            v42 = 0;
          }

          else
          {
            v42 = var2;
          }

          v43 = v188;
          if (MipInTail == var1)
          {
            v45 = v188[34];
            v46 = v45 >> (v188[36] + var1);
            if (v46 <= 1)
            {
              v46 = 1;
            }
          }

          else
          {
            v45 = v188[34];
            v46 = v24;
          }

          if (v42 >= v45)
          {
            v47 = v45;
          }

          else
          {
            v47 = v42;
          }

          v185 = v47;
          v48 = v46 + v42;
          if (v48 >= v45)
          {
            v48 = v45;
          }

          v154 = v48;
        }

        else
        {
          if ((*v181 & 0x10000) != 0 || v41 == 1024)
          {
            if (v41 == 1024)
            {
              v44 = 6 * v188[98];
            }

            else
            {
              v44 = v188[98];
            }
          }

          else
          {
            v44 = 1;
          }

          if (v44 <= v185)
          {
            goto LABEL_14;
          }

          v154 = v185 + 1;
          v43 = v188;
        }

        v49 = *v180 & 0xFF00;
        if (v49 == 768)
        {
          if (v38 == var4)
          {
            v50 = 0;
          }

          else
          {
            v50 = v26;
          }

          if (v38 == var4)
          {
            v53 = *(v186 + 136);
            v54 = v53 >> (*(v186 + 144) + var4);
            if (v54 <= 1)
            {
              v54 = 1;
            }
          }

          else
          {
            v53 = *(v186 + 136);
            v54 = v24;
          }

          if (v50 >= v53)
          {
            v52 = v53;
          }

          else
          {
            v52 = v50;
          }

          v55 = v54 + v50;
          if (v55 >= v53)
          {
            v55 = v53;
          }

          v151 = v55;
        }

        else
        {
          if ((*v180 & 0x10000) != 0 || v49 == 1024)
          {
            if (v49 == 1024)
            {
              v51 = 6 * *(v186 + 392);
            }

            else
            {
              v51 = *(v186 + 392);
            }
          }

          else
          {
            v51 = 1;
          }

          if (v51 <= var5)
          {
            goto LABEL_14;
          }

          v52 = var5;
          v151 = var5 + 1;
          v43 = v188;
        }

        v56 = [v155 placementSparsePageSize];
        v183 = v52;
        switch(v56)
        {
          case 'e':
            v58 = 1;
            v60 = 0x4000;
            v59 = 1;
            break;
          case 'f':
            v61 = MipInTail == var1 || *(v181 + 1) << 8 == 256;
            if (v61)
            {
              v58 = 1;
            }

            else
            {
              v58 = 2;
            }

            if (v61)
            {
              v59 = 4;
            }

            else
            {
              v59 = 2;
            }

            v60 = 0x10000;
            break;
          case 'g':
            v57 = MipInTail == var1 || *(v181 + 1) << 8 == 256;
            if (v57)
            {
              v58 = 1;
            }

            else
            {
              v58 = 4;
            }

            if (v57)
            {
              v59 = 16;
            }

            else
            {
              v59 = 4;
            }

            v60 = 0x40000;
            v43 = v188;
            break;
          default:
            goto LABEL_14;
        }

        v62 = v43[32];
        if (*(v43 + 3) == 9)
        {
          if (v62 >= 0x8000)
          {
            v63 = 0x8000;
          }

          else
          {
            v63 = v43[32];
          }

          v64 = (v62 + 0x7FFF) >> 15;
        }

        else
        {
          v63 = v62 >> (*(v43 + 144) + var1);
          if (v63 <= 1)
          {
            v63 = 1;
          }

          v64 = v43[33] >> (*(v43 + 144) + var1);
          if (v64 <= 1)
          {
            v64 = 1;
          }
        }

        v65 = v64;
        v66 = v63;
        v67 = (v59 * v150);
        v68 = v67 - 1;
        v69 = -v67;
        v70 = (v58 * v149);
        v71 = v70 - 1;
        v72 = -v70;
        if (MipInTail == var1)
        {
          LODWORD(v73) = 1;
          v74 = ((v60 + v152 - 1) & -v60) / v60;
        }

        else
        {
          v74 = ((v68 + v66) & v69) / v67;
          v73 = ((v71 + v65) & v72) / v70;
        }

        if (v178 >= v73)
        {
          v75 = v73;
        }

        else
        {
          v75 = v178;
        }

        v153 = v75;
        if (v171 + v178 >= v73)
        {
          v76 = v73;
        }

        else
        {
          v76 = v171 + v178;
        }

        if (v168 >= v74)
        {
          v77 = v74;
        }

        else
        {
          v77 = v168;
        }

        if (v173 + v168 >= v74)
        {
          v78 = v74;
        }

        else
        {
          v78 = v173 + v168;
        }

        v79 = *(v186 + 128);
        if (*(v186 + 24) == 9)
        {
          if (v79 >= 0x8000)
          {
            v80 = 0x8000;
          }

          else
          {
            v80 = *(v186 + 128);
          }

          v81 = (v79 + 0x7FFF) >> 15;
        }

        else
        {
          v80 = v79 >> (*(v186 + 144) + var4);
          if (v80 <= 1)
          {
            v80 = 1;
          }

          v81 = *(v186 + 132) >> (*(v186 + 144) + var4);
          if (v81 <= 1)
          {
            v81 = 1;
          }
        }

        if (v38 == var4)
        {
          LODWORD(v82) = 1;
          v83 = ((v60 + v157 - 1) & -v60) / v60;
        }

        else
        {
          v83 = ((v68 + v80) & v69) / v67;
          v82 = ((v71 + v81) & v72) / v70;
        }

        if (v176 >= v82)
        {
          v84 = v82;
        }

        else
        {
          v84 = v176;
        }

        if (v176 + v171 >= v82)
        {
          v85 = v82;
        }

        else
        {
          v85 = v176 + v171;
        }

        if (v165 >= v83)
        {
          v86 = v83;
        }

        else
        {
          v86 = v165;
        }

        if (v165 + v173 >= v83)
        {
          v87 = v83;
        }

        else
        {
          v87 = v165 + v173;
        }

        if (v168 < v78 && v58 * (v154 - v185) * (v76 - v75))
        {
          v139 = v87;
          v140 = v86;
          v141 = v80;
          v166 = v77;
          v138 = v81;
          v169 = v66;
          v88 = v59;
          v89 = v65;
          v174 = v85;
          v90 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v188, var1, 0);
          v137 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v186, var4, 0);
          v91 = [v156 reserveKernelCommandBufferSpace:(16 * v58 * (v154 - v185) * (v76 - v153) + 23) & 0xFFFFFFFFFFFFFFFCLL];
          v92 = 0;
          *v91 = 17;
          v93 = *MEMORY[0x29EDC5638];
          v94 = *&v155[v93 + 48];
          v142 = (16 * v58 * (v154 - v185) * (v76 - v153) + 23) & 0xFFFFFFFFFFFFFFFCLL;
          v143 = v91;
          v91[1] = v142;
          LODWORD(v93) = *&v148[v93];
          v91[2] = v94;
          v91[3] = v93;
          if (v154 > v185 && v183 < v151)
          {
            v92 = 0;
            v95 = ((v147 + v169) & v146) / v150;
            v96 = (v147 + v141) & v146;
            if (v88 * v166 >= v95)
            {
              v97 = ((v147 + v169) & v146) / v150;
            }

            else
            {
              v97 = v88 * v166;
            }

            if (v88 * v78 >= v95)
            {
              v98 = ((v147 + v169) & v146) / v150;
            }

            else
            {
              v98 = v88 * v78;
            }

            v99 = v96 / v150;
            if (v88 * v140 >= (v96 / v150))
            {
              v100 = v96 / v150;
            }

            else
            {
              v100 = v88 * v140;
            }

            if (v88 * v139 >= v99)
            {
              v101 = v96 / v150;
            }

            else
            {
              v101 = v88 * v139;
            }

            v102 = v98 - v97;
            v103 = v101 - v100;
            if (v102 < v103)
            {
              v103 = v102;
            }

            if (v178 < v76)
            {
              v104 = v183;
              if (v176 < v174)
              {
                v92 = 0;
                v170 = (v27 - 1 + ((v163 + v27 - 1) & -v27)) / v27;
                v167 = (v33 - 1 + (-v33 & (v161 + v33 - 1))) / v33;
                v105 = ((v145 + v89) & v144) / v149;
                v106 = v174;
                v164 = v97 + ((v90 + v27 - 1) & -v27) / v27;
                v162 = v100 + ((v137 + v33 - 1) & -v33) / v33;
                v107 = v143 + 5;
                v179 = v84 + 1;
                v108 = ((v145 + v138) & v144) / v149;
                v172 = v76;
                v158 = v84;
                while (1)
                {
                  v109 = 0;
                  v110 = v164 + v185 * v170;
                  v184 = v104;
                  v111 = v162 + v104 * v167;
                  v112 = v84;
                  v113 = v153;
                  do
                  {
                    v114 = v113 * v58;
                    if (++v113 * v58 >= v105)
                    {
                      v115 = v105;
                    }

                    else
                    {
                      v115 = v113 * v58;
                    }

                    v116 = v112 * v58;
                    if (++v112 * v58 >= v108)
                    {
                      v117 = ((v145 + v138) & v144) / v149;
                    }

                    else
                    {
                      v117 = v112 * v58;
                    }

                    v118 = v114 >= v115 || v116 >= v117;
                    if (!v118)
                    {
                      v119 = v58 * (v109 + v84);
                      if (v116 >= v108)
                      {
                        v120 = ((v145 + v138) & v144) / v149;
                      }

                      else
                      {
                        v120 = v116;
                      }

                      if (v58 * (v179 + v109) >= v108)
                      {
                        v121 = ((v145 + v138) & v144) / v149;
                      }

                      else
                      {
                        v121 = v58 * (v179 + v109);
                      }

                      if (v119 >= v108)
                      {
                        v119 = ((v145 + v138) & v144) / v149;
                      }

                      v122 = v121 + ~v119;
                      v177 = ~(v58 * v153);
                      if (v122 >= v115 + v177 - v58 * v109)
                      {
                        v122 = v115 + v177 - v58 * v109;
                      }

                      v123 = v122 + 1;
                      v124 = __CFADD__(v92, v122);
                      if (v123 < 2 || v124)
                      {
                        v127 = v114;
                      }

                      else
                      {
                        v125 = 0;
                        v126 = v123 & 0xFFFFFFFE;
                        v127 = v114 + (v123 & 0xFFFFFFFE);
                        v128 = v123 & 0xFFFFFFFE;
                        v129 = v92;
                        do
                        {
                          v130 = (v114 + v125) * v95;
                          v131 = (v120 + v125) * v99;
                          v132 = &v107[4 * v129];
                          v132[1] = v110 + v130;
                          v132[2] = v103;
                          v133 = &v107[4 * (v129 + 1)];
                          v133[1] = v110 + v95 + v130;
                          v133[2] = v103;
                          v132[3] = v111 + v131;
                          v133[3] = v111 + v99 + v131;
                          v125 += 2;
                          v129 += 2;
                          v128 -= 2;
                        }

                        while (v128);
                        v92 += v126;
                        if (v123 == v126)
                        {
                          LODWORD(v76) = v172;
                          v106 = v174;
                          v84 = v158;
                          goto LABEL_217;
                        }

                        v120 += v126;
                        LODWORD(v76) = v172;
                        v106 = v174;
                        v84 = v158;
                      }

                      v134 = v120 + 1;
                      v135 = v127 + 1;
                      do
                      {
                        v136 = &v107[4 * v92];
                        v136[1] = v110 + v127 * v95;
                        v136[2] = v103;
                        v136[3] = v111 + v120 * v99;
                        ++v92;
                        if (v135 >= v115)
                        {
                          break;
                        }

                        ++v127;
                        ++v120;
                        ++v135;
                        v118 = v134++ >= v117;
                      }

                      while (!v118);
                    }

LABEL_217:
                    if (v113 >= v76)
                    {
                      break;
                    }

                    ++v109;
                  }

                  while (v112 < v106);
                  if (++v185 < v154)
                  {
                    v104 = v184 + 1;
                    if (v184 + 1 < v151)
                    {
                      continue;
                    }
                  }

                  break;
                }
              }
            }
          }

          v143[4] = v92;
          [v156 closeKernelCommands:v142 kernelCommand:?];
          *(&v160->super.super.super.super.isa + *MEMORY[0x29EDC55F0]) = 1;
        }

LABEL_14:
        v17 = (v189 + 1);
        v18 = v189 + 1;
        v15 = v188;
        a5 = v175;
        if (v17 >= a6)
        {
          goto LABEL_222;
        }
      }

      if (*v180)
      {
LABEL_34:
        v34 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v30, 0);
        v35 = (v34 + v33 - 1) & -v33;
        if (!v33)
        {
          LODWORD(v35) = v34;
        }
      }

      else
      {
        v35 = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v30, 0) * *(v30 + 132) + 127) & 0xFFFFFFFFFFFFFF80;
      }

      v161 = v35;
      goto LABEL_37;
    }
  }

LABEL_222:

  os_unfair_lock_unlock((v160 + v159));
}

- (void)updateTextureMappings:(id)a3 heap:(id)a4 operations:(id *)a5 count:(unint64_t)a6
{
  v7 = self;
  *(&self->super.super.super.super.isa + *MEMORY[0x29EDBB750]) = 0;
  *(&self->super.super.super.super.isa + *MEMORY[0x29EDBB758]) = 0;
  v8 = *MEMORY[0x29EDC55E8];
  os_unfair_lock_lock((self + v8));
  v9 = *MEMORY[0x29EDC55E0];
  v10 = *(&v7->super.super.super.super.isa + v9);
  v134 = v8;
  if (!v10)
  {
    [(IOGPUMetal4CommandQueue *)v7 allocateMappingCommandBuffer];
    v10 = *(&v7->super.super.super.super.isa + v9);
  }

  v129 = v10;
  v131 = a3;
  if (![a3 buffer])
  {
    v11 = [a3 sparseTextureTier];
    if (v11 == 2)
    {
      [(IOGPUMetal4CommandQueue *)v7 endTier1MappingCommands];
      v110 = v10[15];
      if (!v110)
      {
        [v10 allocateInternalSparseMappingEncoder];
        v110 = v10[15];
      }

      [v110 updateTextureMappings:a3 heap:a4 operations:a5 count:a6];
      goto LABEL_4;
    }

    if (v11 != 1)
    {
      goto LABEL_4;
    }

    v141 = *(a3 + 74);
    [v10 commitEncoder];
    if (!a6)
    {
      goto LABEL_4;
    }

    v12 = 0;
    v13 = 0;
    v14 = *(v141 + 224);
    v15 = *(v141 + 228);
    v130 = (v141 + 396);
    v123 = v14 - 1;
    v124 = v14;
    v122 = -v14;
    v119 = v15;
    v112 = -v15;
    v113 = v15 - 1;
    do
    {
      v148 = v13;
      v16 = &a5[v12];
      var0 = v16->var0;
      if (v16->var0 > 1)
      {
        goto LABEL_11;
      }

      v18 = v16->var1.var0.var0;
      var2 = v16->var1.var0.var2;
      v20 = v16->var1.var1.var2;
      var1 = v16->var1.var0.var1;
      v137 = v16->var1.var1.var1;
      v21 = v16->var2;
      var3 = v16->var3;
      var4 = v16->var4;
      v22 = *(v141 + 236);
      v23 = *v130 & 0xFF00;
      v139 = v16->var1.var1.var0;
      if (v23 == 1024)
      {
        goto LABEL_18;
      }

      if ((*v130 & 0x10000) == 0)
      {
        if (v23 == 768)
        {
          v127 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v141, 0);
        }

        else
        {
          v127 = 0;
        }

        goto LABEL_21;
      }

      if (*v130)
      {
LABEL_18:
        v24 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v141, 0);
        v25 = (v24 + v22 - 1) & -v22;
        if (!v22)
        {
          v25 = v24;
        }
      }

      else
      {
        v25 = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v141, 0) * *(v141 + 132) + 127) & 0xFFFFFFFFFFFFFF80;
      }

      v127 = v25;
LABEL_21:
      MipInTail = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v141, 1);
      if (MipInTail < v21 || *(v141 + 64) <= v21)
      {
        goto LABEL_11;
      }

      v27 = MipInTail;
      v28 = *v130 & 0xFF00;
      if (v28 == 768)
      {
        if (MipInTail == v21)
        {
          v29 = 0;
        }

        else
        {
          v29 = var2;
        }

        v30 = v141;
        if (MipInTail == v21)
        {
          v32 = *(v141 + 136);
          if (v32 >> (*(v141 + 144) + v21) <= 1)
          {
            LODWORD(v20) = 1;
          }

          else
          {
            LODWORD(v20) = v32 >> (*(v141 + 144) + v21);
          }
        }

        else
        {
          v32 = *(v141 + 136);
        }

        if (v29 >= v32)
        {
          v33 = v32;
        }

        else
        {
          v33 = v29;
        }

        var3 = v33;
        v34 = v20 + v29;
        if (v34 >= v32)
        {
          v34 = v32;
        }

        v125 = v34;
      }

      else
      {
        if ((*v130 & 0x10000) != 0 || v28 == 1024)
        {
          if (v28 == 1024)
          {
            v31 = 6 * *(v141 + 392);
          }

          else
          {
            v31 = *(v141 + 392);
          }
        }

        else
        {
          v31 = 1;
        }

        if (v31 <= var3)
        {
          goto LABEL_11;
        }

        v125 = var3 + 1;
        v30 = v141;
      }

      v35 = [v131 placementSparsePageSize];
      switch(v35)
      {
        case 'e':
          v142 = 1;
          v39 = 0x4000;
          v38 = 1;
          goto LABEL_72;
        case 'f':
          v40 = *(v141 + 397) << 8 == 256 || v27 == v21;
          if (v40)
          {
            v41 = 1;
          }

          else
          {
            v41 = 2;
          }

          v142 = v41;
          if (v40)
          {
            v38 = 4;
          }

          else
          {
            v38 = 2;
          }

          v39 = 0x10000;
LABEL_72:
          v42 = *(v30 + 128);
          if (*(v30 + 24) == 9)
          {
            if (v42 >= 0x8000)
            {
              v43 = 0x8000;
            }

            else
            {
              v43 = *(v30 + 128);
            }

            v44 = (v42 + 0x7FFF) >> 15;
          }

          else
          {
            v43 = v42 >> (*(v30 + 144) + v21);
            if (v43 <= 1)
            {
              v43 = 1;
            }

            v44 = *(v30 + 132) >> (*(v30 + 144) + v21);
            if (v44 <= 1)
            {
              v44 = 1;
            }
          }

          v45 = ((v123 + v43) & v122) / v124;
          v120 = v44;
          if (v27 == v21)
          {
            v132 = v18;
            v46 = v38;
            v47 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::tailSize(v30, 1, 0);
            v48 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::tailSize(v30, 1, 1);
            v38 = v46;
            v18 = v132;
            v49 = v48 / v22;
            LODWORD(v50) = 1;
            v51 = ((v39 + v47 - 1) & -v39) / v39;
          }

          else
          {
            v51 = (((v38 * v124) + v43 - 1) & -(v38 * v124)) / (v38 * v124);
            v49 = v45;
            v50 = (((v142 * v119) + v44 - 1) & -(v142 * v119)) / (v142 * v119);
          }

          if (var1 >= v50)
          {
            v52 = v50;
          }

          else
          {
            v52 = var1;
          }

          v53 = v137 + var1;
          if (v137 + var1 >= v50)
          {
            v53 = v50;
          }

          if (v18 >= v51)
          {
            v54 = v51;
          }

          else
          {
            v54 = v18;
          }

          if (v139 + v18 >= v51)
          {
            v55 = v51;
          }

          else
          {
            v55 = v139 + v18;
          }

          if (v18 >= v55)
          {
            break;
          }

          v133 = v38 * v142;
          v140 = v55 - v54;
          v56 = v38 * v142 * (v125 - var3) * (v53 - v52) * (v55 - v54);
          if (!v56)
          {
            break;
          }

          v114 = v49;
          v57 = v38;
          v138 = v53;
          v118 = v52;
          v58 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v141, v21, 0);
          v59 = (16 * v56 + 23) & 0xFFFFFFFFFFFFFFFCLL;
          v60 = [v129 reserveKernelCommandBufferSpace:v59];
          *v60 = 16;
          v60[1] = v59;
          v61 = *MEMORY[0x29EDC5638];
          v117 = v59;
          if (a4)
          {
            v62 = *(*(a4 + *MEMORY[0x29EDC5618]) + v61 + 48);
          }

          else
          {
            v62 = 0;
          }

          v63 = v118;
          v64 = *&v131[v61 + 48];
          v60[2] = v62;
          v60[3] = v64;
          v116 = v60;
          if (v125 > var3)
          {
            v65 = v57 * v54 >= v114 ? v114 : v57 * v54;
            v66 = v57 * v55 >= v114 ? v114 : v57 * v55;
            v67 = v142 - 1;
            if (var1 < v138)
            {
              v115 = (v22 - 1 + ((v127 + v22 - 1) & -v22)) / v22;
              v136 = ((v113 + v120) & v112) / v119;
              v68 = v60 + 5;
              v69 = ((v58 + v22 - 1) & -v22) / v22;
              if (v142 == 1)
              {
                v70 = 0;
                v71 = 0;
                v72 = v66 - v65;
                v73 = var3;
                do
                {
                  v74 = v57 * (var4 + v71);
                  v75 = v118;
                  do
                  {
                    if (v75 < v136)
                    {
                      v76 = &v68[4 * v70];
                      *v76 = (*v76 & 0xFE | var0) ^ 1;
                      v76[1] = v74;
                      v76[2] = v72;
                      v76[3] = v75 * v45 + v69 + v115 * v73 + v65;
                      ++v70;
                    }

                    ++v75;
                    v71 += v140;
                    v74 += v57 * v140;
                  }

                  while (v138 != v75);
                  ++v73;
                }

                while (v73 != v125);
                goto LABEL_143;
              }

              if (v57 * v54 < v66)
              {
                v77 = 32 - __clz(v67);
                v78 = 32 - __clz(v140 * v57 - 1);
                v79 = var3;
                v70 = 0;
                if (v78 | v77)
                {
                  v80 = 0;
                  v81 = v115;
                  v82 = ((v113 + v120) & v112) / v119;
                  v111 = v7;
                  v121 = v69;
                  do
                  {
                    v128 = v79;
                    v83 = v69 + v81 * v79;
                    v84 = v63;
                    do
                    {
                      v85 = v84 * v142;
                      v147 = v84 + 1;
                      if ((v84 + 1) * v142 >= v82)
                      {
                        v86 = v82;
                      }

                      else
                      {
                        v86 = (v84 + 1) * v142;
                      }

                      for (; v85 < v86; ++v85)
                      {
                        v87 = v65;
                        do
                        {
                          v88 = 0;
                          v89 = 0;
                          v90 = 1;
                          v91 = v140 * v57 != 1;
                          v92 = v142 != 1;
                          v93 = v78;
                          v94 = v77;
                          do
                          {
                            --v93;
                            v95 = !v91;
                            if (v91)
                            {
                              v96 = ((v90 & (v87 - v65)) << v88) | v89;
                            }

                            else
                            {
                              v93 = 0;
                              v96 = v89;
                            }

                            if (v95)
                            {
                              v97 = v88;
                            }

                            else
                            {
                              v97 = v88 + 1;
                            }

                            v89 = ((v85 & v67 & v90) << v97) | v96;
                            --v94;
                            if (v92)
                            {
                              v98 = v97 + 1;
                            }

                            else
                            {
                              v94 = 0;
                              v89 = v96;
                              v98 = v97;
                            }

                            v90 *= 2;
                            v88 = v98 - 1;
                            v92 = v94 != 0;
                            v91 = v93 != 0;
                          }

                          while (v94 | v93);
                          v99 = v87 - v66;
                          if (v87 - v66 >= 2)
                          {
                            v99 = 2;
                          }

                          v100 = &v68[4 * v70];
                          *v100 = (*v100 & 0xFE | var0) ^ 1;
                          v100[1] = v89 + (v80 + var4) * v133;
                          v100[2] = v99;
                          v100[3] = v87 + v85 * v45 + v83;
                          ++v70;
                          v87 += 2;
                        }

                        while (v87 < v66);
                      }

                      v80 += v140;
                      v82 = v136;
                      v84 = v147;
                    }

                    while (v147 != v138);
                    v79 = v128 + 1;
                    v7 = v111;
                    v63 = v118;
                    v81 = v115;
                    LODWORD(v69) = v121;
                  }

                  while (v128 + 1 != v125);
                }

                else
                {
                  v101 = 0;
                  do
                  {
                    v102 = v79;
                    v103 = v69 + v115 * v79;
                    v104 = v118;
                    do
                    {
                      v105 = v104 * v142;
                      if (++v104 * v142 >= v136)
                      {
                        v106 = ((v113 + v120) & v112) / v119;
                      }

                      else
                      {
                        v106 = v104 * v142;
                      }

                      for (; v105 < v106; ++v105)
                      {
                        v107 = v65;
                        do
                        {
                          v108 = v107 - v66;
                          if (v107 - v66 >= 2)
                          {
                            v108 = 2;
                          }

                          v109 = &v68[4 * v70];
                          *v109 = (*v109 & 0xFE | var0) ^ 1;
                          v109[1] = (v101 + var4) * v133;
                          v109[2] = v108;
                          v109[3] = v107 + v105 * v45 + v103;
                          ++v70;
                          v107 += 2;
                        }

                        while (v107 < v66);
                      }

                      v101 += v140;
                    }

                    while (v104 != v138);
                    v79 = v102 + 1;
                  }

                  while (v102 + 1 != v125);
                }

                goto LABEL_143;
              }
            }
          }

          v70 = 0;
LABEL_143:
          v116[4] = v70;
          [v129 closeKernelCommands:v117 kernelCommand:v111];
          *(&v7->super.super.super.super.isa + *MEMORY[0x29EDC55F0]) = 1;
          break;
        case 'g':
          v36 = *(v141 + 397) << 8 == 256 || v27 == v21;
          if (v36)
          {
            v37 = 1;
          }

          else
          {
            v37 = 4;
          }

          v142 = v37;
          if (v36)
          {
            v38 = 16;
          }

          else
          {
            v38 = 4;
          }

          v39 = 0x40000;
          v30 = v141;
          goto LABEL_72;
      }

LABEL_11:
      v12 = (v148 + 1);
      v13 = v148 + 1;
    }

    while (v12 < a6);
  }

LABEL_4:

  os_unfair_lock_unlock((v7 + v134));
}

- (AGXG18PFamilyCommandQueue_mtlnext)initWithDevice:(id)a3 descriptor:(id)a4 isDriverInternal:(BOOL)a5
{
  v15 = *MEMORY[0x29EDCA608];
  bzero(v13, 0x408uLL);
  v9 = [a4 lockParameterBufferSizeToMax];
  v10 = 0xEFFFFFFFFLL;
  if (v9)
  {
    v10 = 0x1EFFFFFFFFLL;
  }

  v14 = v10;
  v12.receiver = self;
  v12.super_class = AGXG18PFamilyCommandQueue_mtlnext;
  result = [(IOGPUMetal4CommandQueue *)&v12 initWithDevice:a3 descriptor:a4 args:v13 argsSize:1040];
  if (result)
  {
    result->_device_objc = a3;
    result->_isDriverInternal = a5;
  }

  return result;
}

@end