uint64_t FigCEA608DataGeneratorEndCaption(uint64_t a1, CMTime *a2, CMTime *a3, uint64_t a4)
{
  if (a1)
  {
    if (*(a1 + 112))
    {
      result = cea608dgStoreCCDataSequentially(a1, a2, a3);
      if (a4)
      {
        if (!result)
        {
          v7 = *(a1 + 120);
          *(a4 + 16) = *(a1 + 136);
          *a4 = v7;
        }
      }
    }

    else
    {
      FigCEA608DataGeneratorEndCaption_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigCEA608DataGeneratorEndCaption_cold_2(&v9);
    return v9;
  }

  return result;
}

uint64_t cea608dgStoreCCDataSequentially(uint64_t a1, CMTime *a2, CMTime *a3)
{
  v167 = *MEMORY[0x1E69E9840];
  allocator = *a1;
  v123 = *(a1 + 60);
  v124 = *(a1 + 76);
  v4 = MEMORY[0x1E6960C70];
  v151 = *MEMORY[0x1E6960C70];
  v152 = *(MEMORY[0x1E6960C70] + 8);
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v6 = MEMORY[0x1E6960C98];
  v7 = *MEMORY[0x1E6960C98];
  v149 = v7;
  v8 = *(MEMORY[0x1E6960C98] + 8);
  v150 = v8;
  v147 = v7;
  v148 = v8;
  v9 = *(MEMORY[0x1E6960C98] + 32);
  v116 = *(MEMORY[0x1E6960C98] + 16);
  v117 = *MEMORY[0x1E6960C98];
  *&v122.start.value = *MEMORY[0x1E6960C98];
  *&v122.start.epoch = v116;
  v118 = v9;
  *&v122.duration.timescale = v9;
  v10 = *(a1 + 112);
  v113 = v5;
  if (v10)
  {
    *&time1.start.value = *(a1 + 60);
    time1.start.epoch = *(a1 + 76);
    v11 = *(v10 + 8);
    *v156 = *MEMORY[0x1E6960C70];
    *&v156[16] = v5;
    if (v11 == 1 && (v12 = *(v10 + 112)) != 0)
    {
      v13 = CFRetain(v12);
    }

    else
    {
      v13 = 0;
    }

    *&range.start.value = *&time1.start.value;
    range.start.epoch = time1.start.epoch;
    AheadDuration = cea608dgCCDataGetDuration(v13, &range.start, v156);
    if (AheadDuration)
    {
      goto LABEL_161;
    }

    v151 = *v156;
    v15 = *&v156[12];
    v152 = *&v156[8];
    v103 = *&v156[16];
    if (v11 == 1 && v13)
    {
      *(a1 + 101) = 1;
    }
  }

  else
  {
    v13 = 0;
    v15 = *(MEMORY[0x1E6960C70] + 12);
    v103 = v5;
  }

  v16 = *(v6 + 12);
  v17 = *(v6 + 16);
  v18 = *(v6 + 24);
  v19 = *(v6 + 32);
  v20 = *(v6 + 36);
  v21 = *(v6 + 40);
  v22 = *(a1 + 104);
  v95 = v18;
  v96 = v17;
  v94 = v21;
  v92 = v20;
  v93 = v19;
  v110 = v13;
  v91 = v16;
  v104 = v15;
  if (!v22)
  {
    cf = 0;
    v28 = v16;
    v29 = v17;
    v115 = v18;
    v111 = v19;
    v30 = v20;
    v98 = v21;
    goto LABEL_32;
  }

  v23 = *(a1 + 112);
  v24 = *(a1 + 8);
  v121.start.value = 0;
  *v156 = v117;
  *&v156[16] = v116;
  *&v156[32] = v118;
  if (!v23)
  {
    goto LABEL_21;
  }

  v25 = *(v22 + 80);
  *&range.start.value = *(v22 + 64);
  *&range.start.epoch = v25;
  *&range.duration.timescale = *(v22 + 96);
  CMTimeRangeGetEnd(&time1.start, &range);
  *&range.start.value = *(v23 + 64);
  range.start.epoch = *(v23 + 80);
  v26 = CMTimeCompare(&time1.start, &range.start);
  v27 = *(v23 + 8);
  if (v27 == 3)
  {
    if (*(v22 + 8) == 3)
    {
      goto LABEL_26;
    }

    *&time1.start.value = *v4;
    time1.start.epoch = v113;
    v35 = *(v23 + 120);
    *&range.start.value = v123;
    range.start.epoch = v124;
    AheadDuration = cea608dgGetAheadDuration(&range.start, v35, &time1.start);
    if (!AheadDuration)
    {
      memset(&v135, 0, 24);
      *&range.start.value = *(v23 + 64);
      range.start.epoch = *(v23 + 80);
      *&rhs.start.value = *&time1.start.value;
      rhs.start.epoch = time1.start.epoch;
      CMTimeSubtract(&v135.start, &range.start, &rhs.start);
      v36 = *(v22 + 80);
      *&range.start.value = *(v22 + 64);
      *&range.start.epoch = v36;
      *&range.duration.timescale = *(v22 + 96);
      CMTimeRangeGetEnd(&rhs.start, &range);
      *&range.start.value = *&v135.start.value;
      range.start.epoch = v135.start.epoch;
      v26 = CMTimeCompare(&range.start, &rhs.start);
      goto LABEL_26;
    }

LABEL_161:
    EraseCCData = AheadDuration;
    goto LABEL_150;
  }

  if (v27 == 2)
  {
    if (v26 || *(v22 + 8) != 2)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  if (v27 != 1)
  {
    goto LABEL_27;
  }

  if (v24)
  {
    goto LABEL_21;
  }

LABEL_26:
  if (v26)
  {
LABEL_21:
    v31 = *(v22 + 80);
    *&range.start.value = *(v22 + 64);
    *&range.start.epoch = v31;
    *&range.duration.timescale = *(v22 + 96);
    CMTimeRangeGetEnd(&time1.start, &range);
    *&range.start.value = v123;
    range.start.epoch = v124;
    EraseCCData = cea608dgCreateEraseCCData(&range, &time1.start, allocator, &v121, v156);
    value = v121.start.value;
    if (EraseCCData)
    {
      if (v121.start.value)
      {
        goto LABEL_149;
      }

      goto LABEL_150;
    }

    v34 = 1;
    goto LABEL_28;
  }

LABEL_27:
  value = 0;
  v34 = 0;
LABEL_28:
  v149 = *v156;
  v28 = *&v156[12];
  v150 = *&v156[8];
  v29 = *&v156[16];
  v115 = *&v156[24];
  v111 = *&v156[32];
  v30 = *&v156[36];
  cf = value;
  v98 = *&v156[40];
  if (value && v34)
  {
    *(a1 + 100) = 0;
  }

  v18 = v95;
  v17 = v96;
  v21 = v94;
  v20 = v92;
  v19 = v93;
LABEL_32:
  v37 = *(a1 + 112);
  if (!v37)
  {
    v112 = 0;
    v114 = v91;
    v108 = v17;
    v105 = v18;
    v106 = v21;
    v100 = v19;
    v107 = v20;
LABEL_37:
    v41 = cf;
    goto LABEL_52;
  }

  v38 = *(v37 + 8);
  *v156 = v117;
  *&v156[16] = v116;
  *&v156[32] = v118;
  if ((v38 - 2) < 2)
  {
    v39 = *(v37 + 112);
    if (v39)
    {
      v40 = CFRetain(v39);
    }

    else
    {
      v40 = 0;
    }

    *&range.start.value = *v4;
    range.start.epoch = v113;
    v44 = *(v37 + 120);
    *&time1.start.value = v123;
    time1.start.epoch = v124;
    v45 = cea608dgGetAheadDuration(&time1.start, v44, &range.start);
    if (v45)
    {
      EraseCCData = v45;
      v41 = cf;
      goto LABEL_168;
    }

    *&time1.start.value = *(v37 + 64);
    time1.start.epoch = *(v37 + 80);
    *&v135.start.value = *&range.start.value;
    v135.start.epoch = range.start.epoch;
    CMTimeSubtract(v156, &time1.start, &v135.start);
    goto LABEL_45;
  }

  if (v38 != 1)
  {
    v40 = 0;
LABEL_45:
    v43 = 1;
    goto LABEL_46;
  }

  LOWORD(range.start.value) = 12052;
  v42 = CFDataCreate(allocator, &range, 2);
  if (v42)
  {
    v40 = v42;
    v43 = 0;
    *v156 = *(v37 + 64);
    *&v156[16] = *(v37 + 80);
LABEL_46:
    *&range.start.value = v123;
    range.start.epoch = v124;
    v46 = cea608dgCCDataGetDuration(v40, &range.start, &v156[24]);
    v41 = cf;
    if (!v46)
    {
      v147 = *v156;
      v114 = *&v156[12];
      v148 = *&v156[8];
      v108 = *&v156[16];
      v107 = *&v156[36];
      v100 = *&v156[32];
      v105 = *&v156[24];
      v106 = *&v156[40];
      v112 = v40;
      if (v40)
      {
        if (v43)
        {
          *(a1 + 100) = 1;
        }

        else
        {
          v47 = *(a1 + 100);
          *(a1 + 100) = *(a1 + 101);
          *(a1 + 101) = v47;
        }
      }

      else
      {
        v112 = 0;
      }

LABEL_52:
      v48 = *(a1 + 112);
      if (v48)
      {
        v49 = v48[5];
        *v156 = v48[4];
        *&v156[16] = v49;
        *&v156[32] = v48[6];
        CMTimeRangeGetEnd(&range.start, v156);
        *v156 = v123;
        *&v156[16] = v124;
        ByteLengthFromDuration = cea608dgCreateEraseCCData(v156, &range.start, allocator, 0, &v122);
        if (ByteLengthFromDuration)
        {
          goto LABEL_172;
        }
      }

      v145 = v151;
      v146 = v152;
      v143 = v149;
      timescale = v150;
      v141 = v147;
      v142 = v148;
      v121 = v122;
      memset(&v136, 0, sizeof(v136));
      CMTimeMakeWithSeconds(&v136, 3.0, *(a1 + 68));
      *&v135.start.value = v117;
      *&v135.start.epoch = v116;
      *&v135.duration.timescale = v118;
      *&rhs.start.value = v117;
      *&rhs.start.epoch = v116;
      *&rhs.duration.timescale = v118;
      v166 = 0u;
      v165 = 0u;
      v164 = 0u;
      v163 = 0u;
      memset(&v162, 0, sizeof(v162));
      v161 = 0u;
      v160 = 0u;
      v159 = 0u;
      v158 = 0u;
      v157 = 0u;
      memset(v156, 0, sizeof(v156));
      v154 = v7;
      v155 = v8;
      *&v133.value = *MEMORY[0x1E6960CC0];
      v51 = *(MEMORY[0x1E6960CC0] + 16);
      v133.epoch = v51;
      *&v132.value = *&v133.value;
      v132.epoch = v51;
      *allocatora = *&v133.value;
      *&v131.value = *&v133.value;
      v131.epoch = v51;
      if ((v28 & 1) == 0 || (v52 = v30, (v30 & 1) == 0) || v98 || (epoch = v29, flags = v28, v55 = 0, v115 < 0))
      {
        *&time1.start.value = *(a1 + 120);
        time1.start.epoch = *(a1 + 136);
        *&duration.value = *&v133.value;
        duration.epoch = v51;
        CMTimeRangeMake(&range, &time1.start, &duration);
        v143 = range.start.value;
        flags = range.start.flags;
        timescale = range.start.timescale;
        epoch = range.start.epoch;
        v115 = range.duration.value;
        v111 = range.duration.timescale;
        v52 = range.duration.flags;
        v55 = range.duration.epoch;
      }

      if (!*(a1 + 9) || (range.start.value = v143, range.start.timescale = timescale, range.start.flags = flags, range.start.epoch = epoch, *&time1.start.value = *(a1 + 120), time1.start.epoch = *(a1 + 136), (CMTimeCompare(&range.start, &time1.start) & 0x80000000) == 0))
      {
        memset(&v130, 0, sizeof(v130));
        range.start.value = v143;
        range.start.timescale = timescale;
        range.start.flags = flags;
        range.start.epoch = epoch;
        *&time1.start.value = *(a1 + 120);
        time1.start.epoch = *(a1 + 136);
        CMTimeSubtract(&v130, &range.start, &time1.start);
        v97 = v55;
        v99 = epoch;
        if ((v104 & 1) != 0 && (range.start.value = v151, range.start.timescale = v152, range.start.flags = v104, range.start.epoch = v103, *&time1.start.value = *allocatora, time1.start.epoch = v51, CMTimeCompare(&range.start, &time1.start)))
        {
          memset(&time1, 0, 24);
          range.start.value = v143;
          range.start.timescale = timescale;
          range.start.flags = flags;
          range.start.epoch = epoch;
          range.duration.value = v115;
          range.duration.timescale = v111;
          range.duration.flags = v52;
          range.duration.epoch = v55;
          CMTimeRangeGetEnd(&duration, &range);
          range.start.value = v141;
          range.start.timescale = v142;
          range.start.flags = v114;
          range.start.epoch = v108;
          CMTimeSubtract(&time1.start, &range.start, &duration);
          range.start.value = v145;
          range.start.timescale = v146;
          range.start.flags = v104;
          range.start.epoch = v103;
          duration = v130;
          if (CMTimeCompare(&range.start, &duration) <= 0 && (*&range.start.value = *&time1.start.value, range.start.epoch = time1.start.epoch, duration = v136, CMTimeCompare(&range.start, &duration) <= 0))
          {
            duration.value = v143;
            duration.timescale = timescale;
            duration.flags = flags;
            duration.epoch = epoch;
            v137.value = v145;
            v137.timescale = v146;
            v137.flags = v104;
            v137.epoch = v103;
            CMTimeSubtract(&range.start, &duration, &v137);
            duration.value = v145;
            duration.timescale = v146;
            duration.flags = v104;
            duration.epoch = v103;
            CMTimeRangeMake(&v135, &range.start, &duration);
            v58 = 1;
          }

          else
          {
            range.start.value = v145;
            range.start.timescale = v146;
            range.start.flags = v104;
            range.start.epoch = v103;
            duration = time1.start;
            if (CMTimeCompare(&range.start, &duration) > 0)
            {
              duration = time1.start;
              memset(&v137, 0, sizeof(v137));
              range.start.value = v141;
              range.start.timescale = v142;
              range.start.flags = v114;
              range.start.epoch = v108;
              start = time1.start;
              CMTimeSubtract(&v137, &range.start, &start);
              start = v137;
              v153 = duration;
              CMTimeRangeMake(&range, &start, &v153);
              rhs = range;
              memset(&start, 0, sizeof(start));
              range.start.value = v145;
              range.start.timescale = v146;
              range.start.flags = v104;
              range.start.epoch = v103;
              v153 = duration;
              CMTimeSubtract(&start, &range.start, &v153);
              memset(&v153, 0, sizeof(v153));
              range.start.value = v143;
              range.start.timescale = timescale;
              range.start.flags = flags;
              range.start.epoch = epoch;
              time2 = start;
              CMTimeSubtract(&v153, &range.start, &time2);
              time2 = v153;
              v127 = start;
              CMTimeRangeMake(&range, &time2, &v127);
              v135 = range;
              range.start = range.duration;
              time2 = v130;
              CMTimeSubtract(&v133, &range.start, &time2);
              *&range.start.value = *allocatora;
              range.start.epoch = v51;
              time2 = v133;
              if (CMTimeCompare(&range.start, &time2) < 0 && (v132 = v133, *(a1 + 9)))
              {
                time2 = v135.start;
                v127 = v133;
                CMTimeAdd(&range.start, &time2, &v127);
                *&v135.start.value = *&range.start.value;
                v135.start.epoch = range.start.epoch;
                time2 = v135.duration;
                v127 = v132;
                CMTimeSubtract(&range.start, &time2, &v127);
                v135.duration = range.start;
                time2 = rhs.duration;
                v127 = v132;
                CMTimeAdd(&range.start, &time2, &v127);
                rhs.duration = range.start;
                time2.value = v141;
                time2.timescale = v142;
                time2.flags = v114;
                time2.epoch = v108;
                v127 = v132;
                CMTimeAdd(&range.start, &time2, &v127);
                v63 = range.start.flags;
                v142 = range.start.timescale;
                v141 = range.start.value;
                v64 = range.start.epoch;
                *&range.start.value = *&v121.start.value;
                range.start.epoch = v121.start.epoch;
                time2.value = v141;
                time2.timescale = v142;
                v114 = v63;
                time2.flags = v63;
                v108 = v64;
                time2.epoch = v64;
                v65 = CMTimeCompare(&range.start, &time2);
                if (v65 >= 1)
                {
                  v56 = v112;
                }

                else
                {
                  v56 = 0;
                }

                if (v65 >= 1)
                {
                  v57 = v110;
                }

                else
                {
                  v57 = 0;
                }
              }

              else
              {
                v56 = v112;
                v57 = v110;
              }

              v59 = *allocatora;
              v58 = 1;
LABEL_97:
              range.start = v132;
              *&time1.start.value = v59;
              time1.start.epoch = v51;
              CMTimeCompare(&range.start, &time1.start);
              v126 = 0;
              range.start = v135.duration;
              *&time1.start.value = *(a1 + 60);
              time1.start.epoch = *(a1 + 76);
              ByteLengthFromDuration = cea608dgCCDataGetByteLengthFromDuration(&range, &time1, &v126);
              if (!ByteLengthFromDuration)
              {
                v125 = 0;
                range.start = rhs.duration;
                *&time1.start.value = *(a1 + 60);
                time1.start.epoch = *(a1 + 76);
                ByteLengthFromDuration = cea608dgCCDataGetByteLengthFromDuration(&range, &time1, &v125);
                if (!ByteLengthFromDuration)
                {
                  if (v57)
                  {
                    *v156 = CFDataGetBytePtr(v57);
                    *&v156[8] = v126;
                    *&v156[16] = v135;
                  }

                  if (!v41)
                  {
                    v66 = 0;
                    if (!v57)
                    {
                      goto LABEL_107;
                    }

                    goto LABEL_106;
                  }

                  if ((v58 & 1) != 0 || (*&range.start.value = *allocatora, range.start.epoch = v51, time1.start = v130, (CMTimeCompare(&range.start, &time1.start) & 0x80000000) == 0))
                  {
                    v66 = 0;
                    goto LABEL_105;
                  }

                  v80 = *a1;
                  v153.value = v143;
                  v153.timescale = timescale;
                  start = *(a1 + 60);
                  LOWORD(time2.value) = kFigCEA608MiscControlCodes;
                  Length = CFDataGetLength(v41);
                  *&range.start.value = v117;
                  *&range.start.epoch = v116;
                  *&range.duration.timescale = v118;
                  Mutable = CFDataCreateMutable(v80, Length + 2);
                  v66 = Mutable;
                  if (Mutable)
                  {
                    CFDataAppendBytes(Mutable, &time2, 2);
                    BytePtr = CFDataGetBytePtr(v41);
                    v84 = CFDataGetLength(v41);
                    CFDataAppendBytes(v66, BytePtr, v84);
                    time1.start.value = v153.value;
                    time1.start.timescale = v153.timescale;
                    time1.start.flags = flags;
                    time1.start.epoch = v99;
                    duration = start;
                    CMTimeSubtract(&range.start, &time1.start, &duration);
                    duration.value = v115;
                    duration.timescale = v111;
                    duration.flags = v52;
                    duration.epoch = v97;
                    v137 = start;
                    CMTimeAdd(&time1.start, &duration, &v137);
                    *&range.duration.value = *&time1.start.value;
                    v85 = time1.start.epoch;
                    v154 = range.start.value;
                    flags = range.start.flags;
                    v155 = range.start.timescale;
                    v86 = range.start.epoch;
                    v87 = time1.start.value;
                    v88 = time1.start.timescale;
                    v52 = time1.start.flags;
LABEL_155:
                    v143 = v154;
                    v97 = v85;
                    v99 = v86;
                    v111 = v88;
                    timescale = v155;
                    v115 = v87;
                    v41 = v66;
LABEL_105:
                    *&v157 = CFDataGetBytePtr(v41);
                    *(&v157 + 1) = CFDataGetLength(v41);
                    *&v158 = v143;
                    *(&v158 + 1) = __PAIR64__(flags, timescale);
                    *&v159 = v99;
                    *(&v159 + 1) = v115;
                    *&v160 = __PAIR64__(v52, v111);
                    *(&v160 + 1) = v97;
                    if (!v57)
                    {
LABEL_107:
                      if (v56)
                      {
                        *&v163 = CFDataGetBytePtr(v56);
                        *(&v163 + 1) = CFDataGetLength(v56);
                        *&v164 = v141;
                        *(&v164 + 1) = __PAIR64__(v114, v142);
                        *&v165 = v108;
                        *(&v165 + 1) = v105;
                        *&v166 = __PAIR64__(v107, v100);
                        v68 = 1;
                        *(&v166 + 1) = v106;
                      }

                      else
                      {
                        v68 = 0;
                      }

                      v69 = 0;
                      v70 = 0;
                      *&range.start.value = v117;
                      *&range.start.epoch = v116;
                      v71 = *allocatora;
                      *&range.duration.timescale = v118;
                      while (1)
                      {
                        v72 = &v156[v69];
                        if ((v156[v69 + 28] & 1) != 0 && (v72[52] & 1) != 0 && !*&v156[v69 + 56] && (*(v72 + 5) & 0x8000000000000000) == 0)
                        {
                          *&time1.start.value = *(v72 + 40);
                          time1.start.epoch = *(v72 + 7);
                          *&duration.value = v71;
                          duration.epoch = v51;
                          if (CMTimeCompare(&time1.start, &duration))
                          {
                            time1 = range;
                            CMTimeRangeGetEnd(&duration, &time1);
                            *&time1.start.value = *(v72 + 1);
                            time1.start.epoch = *(v72 + 4);
                            if (CMTimeCompare(&duration, &time1.start))
                            {
                              if (v70)
                              {
                                time1 = range;
                                cea608dgOutputCCData(a1, v70);
                                if (v75)
                                {
                                  goto LABEL_157;
                                }

                                CFRelease(v70);
                              }

                              v73 = CFDataCreateMutable(*a1, 0);
                              if (!v73)
                              {
                                cea608dgStoreCCDataSequentially_cold_1(&time1);
                                EraseCCData = LODWORD(time1.start.value);
                                v77 = a2;
                                v40 = v112;
LABEL_158:
                                v76 = a3;
                                v71 = *allocatora;
                                if (EraseCCData)
                                {
                                  v68 = 0;
                                  goto LABEL_139;
                                }

LABEL_130:
                                if (v77)
                                {
                                  *v77 = v132;
                                }

                                if (v76)
                                {
                                  range.start = v131;
                                  *&time1.start.value = v71;
                                  time1.start.epoch = v51;
                                  if (!CMTimeCompare(&range.start, &time1.start))
                                  {
                                    memset(&time1, 0, 24);
                                    range = v121;
                                    CMTimeRangeGetEnd(&duration, &range);
                                    v78 = *(a1 + 28);
                                    *&range.start.value = *(a1 + 12);
                                    *&range.start.epoch = v78;
                                    *&range.duration.timescale = *(a1 + 44);
                                    CMTimeRangeGetEnd(&v137, &range);
                                    CMTimeSubtract(&time1.start, &duration, &v137);
                                    if (time1.start.flags)
                                    {
                                      *&range.start.value = *allocatora;
                                      range.start.epoch = v51;
                                      duration = time1.start;
                                      if (CMTimeCompare(&range.start, &duration) < 0)
                                      {
                                        CMTimeMake(&v131, -time1.start.value, time1.start.timescale);
                                      }
                                    }
                                  }

                                  EraseCCData = 0;
                                  *v76 = v131;
                                }

                                else
                                {
                                  EraseCCData = 0;
                                }

LABEL_139:
                                v41 = cf;
                                if (v66)
                                {
                                  CFRelease(v66);
                                }

                                v13 = v110;
                                if (!EraseCCData)
                                {
                                  if (!v68)
                                  {
                                    goto LABEL_143;
                                  }

LABEL_144:
                                  FigCEA608DataGeneratorCaptionInfoRelease(*(a1 + 104));
                                  EraseCCData = 0;
                                  *(a1 + 104) = *(a1 + 112);
                                  *(a1 + 112) = 0;
                                }

                                goto LABEL_145;
                              }

                              v70 = v73;
                              CFDataAppendBytes(v73, *&v156[v69], *&v156[v69 + 8]);
                              v74 = *(v72 + 2);
                              *&range.start.value = *(v72 + 1);
                              *&range.start.epoch = v74;
                              *&range.duration.timescale = *(v72 + 3);
                            }

                            else
                            {
                              CFDataAppendBytes(v70, *&v156[v69], *&v156[v69 + 8]);
                              time1.start = range.duration;
                              duration = *(v72 + 40);
                              CMTimeAdd(&range.duration, &time1.start, &duration);
                            }
                          }

                          v71 = *allocatora;
                        }

                        v69 += 64;
                        if (v69 == 256)
                        {
                          if (!v70)
                          {
                            v77 = a2;
                            v76 = a3;
                            v40 = v112;
                            goto LABEL_130;
                          }

                          time1 = range;
                          cea608dgOutputCCData(a1, v70);
LABEL_157:
                          EraseCCData = v75;
                          v77 = a2;
                          v40 = v112;
                          CFRelease(v70);
                          goto LABEL_158;
                        }
                      }
                    }

LABEL_106:
                    v67 = CFDataGetBytePtr(v57);
                    *&v161 = &v67[v126];
                    *(&v161 + 1) = v125;
                    v162 = rhs;
                    goto LABEL_107;
                  }

                  fig_log_get_emitter();
                  ByteLengthFromDuration = FigSignalErrorAtGM();
                  flags = v91;
                  v52 = v92;
                  v87 = v95;
                  v86 = v96;
                  v85 = v94;
                  v88 = v93;
                  if (!ByteLengthFromDuration)
                  {
                    goto LABEL_155;
                  }
                }
              }

LABEL_172:
              EraseCCData = ByteLengthFromDuration;
              v13 = v110;
              v40 = v112;
              goto LABEL_145;
            }

            duration.value = v141;
            duration.timescale = v142;
            duration.flags = v114;
            duration.epoch = v108;
            v137.value = v145;
            v137.timescale = v146;
            v137.flags = v104;
            v137.epoch = v103;
            CMTimeSubtract(&range.start, &duration, &v137);
            duration.value = v145;
            duration.timescale = v146;
            duration.flags = v104;
            duration.epoch = v103;
            CMTimeRangeMake(&rhs, &range.start, &duration);
            v58 = 0;
          }
        }

        else
        {
          v58 = 0;
          if (v114)
          {
            v59 = *allocatora;
            if ((v107 & 1) == 0 || v106 || v105 < 0)
            {
              v56 = v112;
              v57 = v110;
              goto LABEL_97;
            }

            range.start.value = v143;
            range.start.timescale = timescale;
            range.start.flags = flags;
            range.start.epoch = epoch;
            range.duration.value = v115;
            range.duration.timescale = v111;
            range.duration.flags = v52;
            range.duration.epoch = v55;
            CMTimeRangeGetEnd(&time1.start, &range);
            duration.value = v141;
            duration.timescale = v142;
            duration.flags = v114;
            duration.epoch = v108;
            CMTimeSubtract(&range.start, &time1.start, &duration);
            v133 = range.start;
            memset(&time1, 0, 24);
            range.start.value = v141;
            range.start.timescale = v142;
            range.start.flags = v114;
            range.start.epoch = v108;
            range.duration.value = v105;
            range.duration.timescale = v100;
            range.duration.flags = v107;
            range.duration.epoch = 0;
            CMTimeRangeGetEnd(&duration, &range);
            *&range.start.value = *&v121.start.value;
            range.start.epoch = v121.start.epoch;
            CMTimeSubtract(&time1.start, &duration, &range.start);
            *&range.start.value = *allocatora;
            range.start.epoch = v51;
            duration = v133;
            if (CMTimeCompare(&range.start, &duration) < 0 && (v132 = v133, *(a1 + 9)))
            {
              duration.value = v141;
              duration.timescale = v142;
              duration.flags = v114;
              duration.epoch = v108;
              v137 = v133;
              CMTimeAdd(&range.start, &duration, &v137);
              v60 = range.start.flags;
              v142 = range.start.timescale;
              v141 = range.start.value;
              v61 = range.start.epoch;
              *&range.start.value = *&v121.start.value;
              range.start.epoch = v121.start.epoch;
              duration.value = v141;
              duration.timescale = v142;
              v114 = v60;
              duration.flags = v60;
              v108 = v61;
              duration.epoch = v61;
              v62 = CMTimeCompare(&range.start, &duration);
              if (v62 >= 1)
              {
                v56 = v112;
              }

              else
              {
                v56 = 0;
              }

              if (v62 >= 1)
              {
                v57 = v110;
              }

              else
              {
                v57 = 0;
              }
            }

            else
            {
              v56 = v112;
              v57 = v110;
            }

            *&range.start.value = *allocatora;
            range.start.epoch = v51;
            duration = time1.start;
            if (CMTimeCompare(&range.start, &duration) < 0)
            {
              v131 = time1.start;
            }

            v58 = 0;
LABEL_96:
            v59 = *allocatora;
            goto LABEL_97;
          }
        }

        v56 = v112;
        v57 = v110;
        goto LABEL_96;
      }

      fig_log_get_emitter();
      v89 = FigSignalErrorAtGM();
      v13 = v110;
      v40 = v112;
      if (!v89)
      {
LABEL_143:
        FigCEA608DataGeneratorCaptionInfoRelease(*(a1 + 112));
        *(a1 + 112) = 0;
        goto LABEL_144;
      }

      EraseCCData = v89;
LABEL_145:
      if (v40)
      {
        CFRelease(v40);
      }

      if (v41)
      {
        goto LABEL_148;
      }

      goto LABEL_150;
    }

    EraseCCData = v46;
LABEL_168:
    v13 = v110;
    goto LABEL_145;
  }

  fig_log_get_emitter();
  v90 = FigSignalErrorAtGM();
  if (!v90)
  {
    v112 = 0;
    v114 = v91;
    v108 = v96;
    v100 = v93;
    v107 = v92;
    v105 = v95;
    v106 = v94;
    goto LABEL_37;
  }

  EraseCCData = v90;
  v41 = cf;
  v13 = v110;
  if (cf)
  {
LABEL_148:
    value = v41;
LABEL_149:
    CFRelease(value);
  }

LABEL_150:
  if (v13)
  {
    CFRelease(v13);
  }

  return EraseCCData;
}

uint64_t FigCEA608DataGeneratorSetShouldAdjustOverlappedDataTime(uint64_t a1, char a2)
{
  if (a1)
  {
    if (*(a1 + 96))
    {
      FigCEA608DataGeneratorSetShouldAdjustOverlappedDataTime_cold_1(&v4);
      return v4;
    }

    else
    {
      result = 0;
      *(a1 + 9) = a2;
    }
  }

  else
  {
    FigCEA608DataGeneratorSetShouldAdjustOverlappedDataTime_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t FigCEA608DataGeneratorGetTimeLineRange(uint64_t a1, _OWORD *a2)
{
  if (a1)
  {
    if (a2)
    {
      v2 = *(a1 + 12);
      v3 = *(a1 + 44);
      a2[1] = *(a1 + 28);
      a2[2] = v3;
      *a2 = v2;
    }

    else
    {
      FigCEA608DataGeneratorGetTimeLineRange_cold_1();
    }
  }

  else
  {
    FigCEA608DataGeneratorGetTimeLineRange_cold_2();
  }

  return 0;
}

uint64_t FigCEA608DataGeneratorSetTimeLineRange(uint64_t a1, __int128 *a2)
{
  if (a1)
  {
    if (*(a1 + 96))
    {
      FigCEA608DataGeneratorSetTimeLineRange_cold_1(&v6);
      return v6;
    }

    else
    {
      result = 0;
      v4 = *a2;
      v5 = a2[1];
      *(a1 + 44) = a2[2];
      *(a1 + 28) = v5;
      *(a1 + 12) = v4;
    }
  }

  else
  {
    FigCEA608DataGeneratorSetTimeLineRange_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t FigCEA608DataGeneratorGetClosedCaptionChannel(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    *a2 = 1;
  }

  else
  {
    FigCEA608DataGeneratorGetClosedCaptionChannel_cold_1();
  }

  return 0;
}

void cea608dgCCDataAppendPaddingIfNeeded(__CFData *a1)
{
  if (CFDataGetLength(a1))
  {
    bytes = 0;
    CFDataAppendBytes(a1, &bytes, 1);
  }
}

uint64_t cea608dgCharacterMappingGetControlCodeForCharacter(CFDictionaryRef theDict, unsigned int a2, char *a3, int *a4, char *a5, char *a6)
{
  v11 = 0;
  value = 0;
  v12 = a2;
  while (1)
  {
    v13 = CFDictionaryGetValue(theDict, off_1E74787E8[v11]);
    ValueIfPresent = CFDictionaryGetValueIfPresent(v13, v12, &value);
    if (ValueIfPresent)
    {
      break;
    }

    if (++v11 == 4)
    {
      goto LABEL_4;
    }
  }

  if (FigCFEqual())
  {
    v15 = 0;
    v17 = 0;
    v18 = 0;
    v16 = 1;
    v19 = value;
  }

  else
  {
    if (FigCFEqual())
    {
      v18 = 0;
      v19 = 17;
      v17 = 1;
    }

    else
    {
      if (FigCFEqual())
      {
        v17 = 0;
        v19 = 18;
      }

      else
      {
        if (!FigCFEqual())
        {
LABEL_4:
          v15 = 0;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          goto LABEL_15;
        }

        v17 = 0;
        v19 = 19;
      }

      v18 = 1;
    }

    v16 = 2;
    v15 = value;
  }

LABEL_15:
  *a3 = v19;
  a3[1] = v15;
  *a4 = v16;
  *a5 = v17;
  *a6 = v18;
  return ValueIfPresent;
}

uint64_t cea608dgCreateEraseCCData(uint64_t a1, CMTime *a2, CFAllocatorRef allocator, const __CFData **a4, _OWORD *a5)
{
  *bytes = 11284;
  v9 = CFDataCreate(allocator, bytes, 2);
  if (v9)
  {
    v10 = v9;
    v17 = **&MEMORY[0x1E6960C70];
    *&v16.start.value = *a1;
    v16.start.epoch = *(a1 + 16);
    Duration = cea608dgCCDataGetDuration(v9, &v16.start, &v17);
    if (Duration)
    {
      goto LABEL_7;
    }

    if (a5)
    {
      start = *a2;
      v14 = v17;
      CMTimeRangeMake(&v16, &start, &v14);
      v12 = *&v16.start.epoch;
      *a5 = *&v16.start.value;
      a5[1] = v12;
      a5[2] = *&v16.duration.timescale;
    }

    if (!a4)
    {
LABEL_7:
      CFRelease(v10);
    }

    else
    {
      Duration = 0;
      *a4 = v10;
    }
  }

  else
  {
    cea608dgCreateEraseCCData_cold_1(&v16);
    return LODWORD(v16.start.value);
  }

  return Duration;
}

uint64_t cea608dgCCDataGetDuration(const __CFData *a1, CMTime *a2, CMTime *a3)
{
  v8 = **&MEMORY[0x1E6960CC0];
  if (a1)
  {
    Length = CFDataGetLength(a1);
    if (Length)
    {
      cea608dgCCDataGetDuration_cold_1(&v7);
      return LODWORD(v7.value);
    }

    v7 = *a2;
    CMTimeMultiply(&v8, &v7, Length >> 1);
  }

  result = 0;
  *a3 = v8;
  return result;
}

uint64_t cea608dgGetAheadDuration(CMTime *a1, uint64_t a2, CMTime *a3)
{
  if (a2 < 0)
  {
    cea608dgGetAheadDuration_cold_1(&v5);
    return LODWORD(v5.value);
  }

  else
  {
    memset(&v6, 0, sizeof(v6));
    v5 = *a1;
    CMTimeMultiply(&v6, &v5, a2);
    result = 0;
    *a3 = v6;
  }

  return result;
}

uint64_t cea608dgCCDataGetByteLengthFromDuration(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if ((*(a1 + 12) & 1) == 0 || (time1 = *a1, v8 = **&MEMORY[0x1E6960CC0], !CMTimeCompare(&time1, &v8)))
  {
    v6 = 0;
    goto LABEL_7;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    cea608dgCCDataGetByteLengthFromDuration_cold_1(&time1);
    return LODWORD(time1.value);
  }

  if (*a1 % *a2)
  {
    cea608dgCCDataGetByteLengthFromDuration_cold_2(&time1);
    return LODWORD(time1.value);
  }

  v6 = 2 * (*a1 / *a2);
LABEL_7:
  result = 0;
  *a3 = v6;
  return result;
}

void OUTLINED_FUNCTION_3_8(CFMutableDataRef theData@<X2>, _WORD *a2@<X1>, __int16 a3@<W8>, uint64_t a4, int a5, __int16 a6, char a7, UInt8 bytes)
{
  *a2 = a3;
  bytes = 32;

  CFDataAppendBytes(theData, &bytes, 1);
}

void FigByteRateHistoryClear(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3 >= 1)
    {
      bzero(v2, 16 * v3);
    }
  }

  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
}

double FigByteRateHistoryReportMovingAverage(uint64_t a1, double *a2)
{
  if (a2)
  {
    result = *(a1 + 40);
    *a2 = result;
  }

  return result;
}

uint64_t ParseDescriptorAtoms(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (a2 + 8);
  while (1)
  {
    result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
    if (result)
    {
      return result;
    }

    if (a3 >= 1)
    {
      v9 = v7;
      v10 = v7;
      v11 = a3;
      while (*(v10 - 2))
      {
        v10 += 2;
        v9 += 4;
        if (!--v11)
        {
          goto LABEL_9;
        }
      }

      result = (*v10)(a1, a4);
      if (result)
      {
        return result;
      }
    }

LABEL_9:
    LODWORD(result) = FigAtomStreamAdvanceToNextAtom();
    if (result)
    {
      if (result == -12890)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }
  }
}

uint64_t ParseReferenceMovieDataRefAtom(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 24);
  if (*(a2 + 24))
  {
    return 0;
  }

  v4 = 0;
  result = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
  if (!result)
  {
    if (CMBlockBufferGetDataLength(*v2) <= 0xD)
    {
      ParseReferenceMovieDataRefAtom_cold_1(&v5);
      return v5;
    }

    result = CMBlockBufferGetDataPointer(*v2, 0, 0, 0, &v4);
    if (!result)
    {
      if (*(v4 + 1) == 543978101)
      {
        return 0;
      }

      result = *v2;
      if (*v2)
      {
        CFRelease(result);
        result = 0;
        *v2 = 0;
      }
    }
  }

  return result;
}

uint64_t ParseReferenceMovieVersionCheckAtom(uint64_t a1, uint64_t a2)
{
  BBuf = FigAtomStreamReadCurrentAtomDataAndCreateBBuf();
  if (BBuf)
  {
    return BBuf;
  }

  if (CMBlockBufferGetDataLength(0) != 18)
  {
    ParseReferenceMovieVersionCheckAtom_cold_1(&v7);
    return v7;
  }

  Mutable = *(a2 + 16);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    *(a2 + 16) = Mutable;
    if (!Mutable)
    {
      ParseReferenceMovieVersionCheckAtom_cold_2(&v7);
      return v7;
    }
  }

  CFArrayAppendValue(Mutable, 0);
  return 0;
}

void DisposeReferenceMovieAlternate(void *a1)
{
  if (a1)
  {
    v2 = a1[1];
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[3];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

uint64_t InitMobiGestaltOnce()
{
  result = CelestialIsiPad();
  if (result)
  {
    v1 = 16;
  }

  else
  {
    result = CelestialIsiPhone();
    v1 = 1;
  }

  sMobiGestaltValue = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_9(OpaqueCMBlockBuffer *a1)
{
  *(v1 - 120) = 0;

  return CMBlockBufferGetDataPointer(a1, 0, 0, 0, (v1 - 120));
}

uint64_t RegisterFigBytePumpBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigBytePumpGetTypeID()
{
  MEMORY[0x19A8D3660](&FigBytePumpGetClassID_sRegisterFigBytePumpBaseTypeOnce, RegisterFigBytePumpBaseType);

  return CMBaseClassGetCFTypeID();
}

CFTypeRef FigBytePumpRetain(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

void FigBytePumpRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t FigBytePumpIsBytePumpProperty(__CFString *a1)
{
  v1 = 0;
  while (*(&bytePumpProperties)[v1] != a1)
  {
    if (++v1 == 70)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t FigICYBytePumpInvalidate(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  FigRetainProxyInvalidate();
  if (!*(DerivedStorage + 16))
  {
    *(DerivedStorage + 16) = 1;
    FigHTTPStopAndReleaseTimer((DerivedStorage + 88));
    FigICY_InvalidateHTTP(DerivedStorage);
    v3 = *(DerivedStorage + 96);
    if (v3)
    {
      CFRelease(v3);
      *(DerivedStorage + 96) = 0;
    }

    v4 = *(DerivedStorage + 104);
    if (v4)
    {
      CFRelease(v4);
      *(DerivedStorage + 104) = 0;
    }

    v5 = *(DerivedStorage + 112);
    if (v5)
    {
      CFRelease(v5);
      *(DerivedStorage + 112) = 0;
    }

    v6 = *(DerivedStorage + 296);
    if (v6)
    {
      CFRelease(v6);
      *(DerivedStorage + 296) = 0;
    }

    v7 = *(DerivedStorage + 160);
    if (v7)
    {
      CFRelease(v7);
      *(DerivedStorage + 160) = 0;
    }

    v8 = *(DerivedStorage + 168);
    if (v8)
    {
      PlaylistFileParserDestroy(v8);
      *(DerivedStorage + 168) = 0;
    }

    if (*(DerivedStorage + 18) && !*(DerivedStorage + 17))
    {
      FigBytePumpRetain(a1);
      if (dword_1EAF16B70)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      fbp_SendDataCallback(a1, DerivedStorage, *(DerivedStorage + 72), 0, 2, 0, MEMORY[0x1E6960C70], 4294954511);
      FigBytePumpRelease(a1);
    }

    *(DerivedStorage + 64) = 0;
    *(DerivedStorage + 17) = 1;
  }

  FigRetainProxyUnlockMutex();
  FigRetainProxyRelease();
  return 0;
}

void FigICYBytePumpFinalize(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigICYBytePumpInvalidate(a1);
  FigRetainProxyRelease();
  v3 = *(DerivedStorage + 128);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 128) = 0;
  }

  v4 = *(DerivedStorage + 136);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 136) = 0;
  }

  v5 = *(DerivedStorage + 312);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 312) = 0;
  }

  v6 = *(DerivedStorage + 328);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 328) = 0;
  }

  v7 = *(DerivedStorage + 360);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 360) = 0;
  }

  v8 = *(DerivedStorage + 216);
  if (v8)
  {
    CFRelease(v8);
    *(DerivedStorage + 216) = 0;
  }

  v9 = *(DerivedStorage + 184);
  if (v9)
  {
    CFRelease(v9);
    *(DerivedStorage + 184) = 0;
  }

  FigRetainProxyRelease();
  *(DerivedStorage + 8) = 0;
  FigHTTPSchedulerRelease(*(DerivedStorage + 80));
  *(DerivedStorage + 80) = 0;
  v10 = *(DerivedStorage + 120);
  if (v10)
  {
    CFRelease(v10);
    *(DerivedStorage + 120) = 0;
  }

  v11 = *DerivedStorage;
  if (*DerivedStorage)
  {

    CFRelease(v11);
  }
}

__CFString *FigICYBytePumpCopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppend(Mutable, @"\tFigICYBytePump :");
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    CFStringAppend(Mutable, @"invalidated");
  }

  else
  {
    v3 = *(DerivedStorage + 96);
    if (v3)
    {
      v4 = FigCFHTTPCreateURLString(v3);
      if (v4)
      {
        v5 = v4;
        CFStringAppend(Mutable, v4);
        CFRelease(v5);
      }
    }
  }

  FigRetainProxyUnlockMutex();
  return Mutable;
}

uint64_t FigICYBytePumpCopyProperty(uint64_t a1, __CFString *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    FigICYBytePumpCopyProperty_cold_1(&v13);
    value_low = LODWORD(v13.value);
    goto LABEL_19;
  }

  if (CFEqual(a2, @"FBP_CanContinueWithoutGapBitField"))
  {
    LODWORD(v13.value) = 7;
    if (!*(DerivedStorage + 208) && *(DerivedStorage + 19) && FigGetUpTimeNanoseconds() - *(DerivedStorage + 288) >= 0xDF8475801)
    {
      LODWORD(v13.value) = 0;
    }

    v8 = CFNumberCreate(a3, kCFNumberSInt32Type, &v13);
    goto LABEL_18;
  }

  if (CFEqual(a2, @"FBP_PlaybackSessionID"))
  {
    v8 = *(DerivedStorage + 112);
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (CFEqual(a2, @"FBP_SessionConfiguration"))
  {
    v8 = *(DerivedStorage + 296);
    if (!v8)
    {
LABEL_13:
      value_low = 4294954513;
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (CFEqual(a2, @"FBP_NetworkCostMonitor"))
  {
    v11 = (DerivedStorage + 184);
    v10 = *(DerivedStorage + 184);
    if (!v10)
    {
      value_low = FigNetworkCostMonitorCreate(a3, (DerivedStorage + 184));
      if (value_low)
      {
        goto LABEL_19;
      }

      v10 = *v11;
      if (!*v11)
      {
        value_low = 0;
        goto LABEL_19;
      }
    }

    CMBaseObjectSetProperty(v10, 0x1F0B5F7B8, *MEMORY[0x1E695E4C0]);
    v8 = *v11;
    if (!*v11)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = CFRetain(v8);
LABEL_18:
    value_low = 0;
    *a4 = v8;
    goto LABEL_19;
  }

  if (CFEqual(a2, @"FBP_Duration"))
  {
    v13 = **&MEMORY[0x1E6960C68];
    v8 = CMTimeCopyAsDictionary(&v13, a3);
    goto LABEL_18;
  }

  if (FigBytePumpIsBytePumpProperty(a2))
  {
    value_low = 4294954513;
  }

  else
  {
    value_low = 4294954512;
  }

LABEL_19:
  FigRetainProxyUnlockMutex();
  return value_low;
}

uint64_t FigICYBytePumpSetProperty(int a1, CFTypeRef cf1)
{
  if (CFEqual(cf1, @"FBP_SendToNero"))
  {
    return 0;
  }

  return FigSignalErrorAtGM();
}

void FigICY_InvalidateHTTP(uint64_t a1)
{
  if (*(a1 + 304))
  {
    v2 = *(a1 + 312);
    if (v2)
    {
      v3 = *(a1 + 320);
      v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
      if (v4)
      {
        v4(v2, v3);
      }

      *(a1 + 320) = 0;
      CFArrayRemoveAllValues(*(a1 + 360));
      *(a1 + 368) = 0;
      *(a1 + 376) = 0;
    }
  }

  else
  {
    v5 = *(a1 + 144);
    if (v5)
    {
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 24);
      if (v6)
      {
        v6(v5);
      }

      v7 = *(a1 + 144);
      if (v7)
      {
        CFRelease(v7);
        *(a1 + 144) = 0;
      }
    }
  }

  FigHTTPStopAndReleaseTimer((a1 + 48));
  *(a1 + 48) = 0;
}

uint64_t fbp_SendDataCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8)
{
  v11 = a5;
  v13 = a3;
  v26 = *MEMORY[0x1E69E9840];
  v15 = *(a2 + 64);
  cf = 0;
  if ((a5 & 2) != 0)
  {
    if (dword_1EAF16B70)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v13 = a3;
    }

    *(a2 + 17) = 1;
  }

  if (*(a2 + 21))
  {
    v11 = v11 | 1;
    ++*(a2 + 24);
    *(a2 + 21) = 0;
  }

  if (!v15)
  {
    return 0;
  }

  FigCreateErrorForOSStatus(a8, &cf);
  if (cf)
  {
    v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigRetainProxyUnlockAll();
  v19 = *(a2 + 24);
  v24 = *a7;
  v25 = *(a7 + 2);
  v15(a1, v13, a4, v11, 0, 0, a6, &v24, 0, 0, v19, cf, 0, 0);
  FigRetainProxyRelock();
  if (FigRetainProxyIsInvalidated())
  {
    v18 = 4294954413;
  }

  else
  {
    v18 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v18;
}

uint64_t FigICYBytePumpClientHasEnough(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    FigICYBytePumpClientHasEnough_cold_1(&v9);
    v7 = v9;
    goto LABEL_15;
  }

  if (!a2 && !*(DerivedStorage + 19))
  {
    if (*(DerivedStorage + 304))
    {
      if (!*(DerivedStorage + 312) || !*(DerivedStorage + 320))
      {
LABEL_12:
        *(DerivedStorage + 19) = 1;
        *(DerivedStorage + 288) = FigGetUpTimeNanoseconds();
        v6 = *(DerivedStorage + 48);
        if (v6)
        {
          FigHTTPRescheduleTimer(0.0, *(DerivedStorage + 80), v6);
        }

        goto LABEL_14;
      }
    }

    else
    {
      v4 = *(DerivedStorage + 144);
      if (!v4)
      {
        goto LABEL_12;
      }

      v5 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v5)
      {
        v5(v4);
      }
    }

    FigHTTPCreateTimer(*(DerivedStorage + 8), fbp_PauseTimer, *(DerivedStorage + 80), (DerivedStorage + 88), 62.0);
    goto LABEL_12;
  }

LABEL_14:
  v7 = 0;
LABEL_15:
  FigRetainProxyUnlockMutex();
  return v7;
}

uint64_t FigICYBytePumpClientNeedsMore(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    FigICYBytePumpClientNeedsMore_cold_1(block);
    v5 = LODWORD(block[0]);
    goto LABEL_24;
  }

  if (a2)
  {
    goto LABEL_3;
  }

  if (*(DerivedStorage + 19))
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    FigHTTPStopAndReleaseTimer((DerivedStorage + 88));
    v7 = *(DerivedStorage + 48);
    if (v7)
    {
      *(DerivedStorage + 40) = UpTimeNanoseconds;
      FigHTTPRescheduleTimer(15.0, *(DerivedStorage + 80), v7);
    }

    if (*(DerivedStorage + 304))
    {
      if (*(DerivedStorage + 368) || *(DerivedStorage + 320))
      {
        if (UpTimeNanoseconds - *(DerivedStorage + 288) <= 60000000000)
        {
          if (*(DerivedStorage + 19))
          {
            v8 = FigRetainProxyRetain();
            v9 = *(DerivedStorage + 80);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 0x40000000;
            block[2] = __FigICY_ResumeHTTP_block_invoke;
            block[3] = &unk_1E7478F38;
            block[4] = v8;
            dispatch_async(v9, block);
          }

LABEL_22:
          v5 = 0;
LABEL_23:
          *(DerivedStorage + 19) = 0;
          goto LABEL_24;
        }

LABEL_28:
        FigICY_InvalidateHTTP(DerivedStorage);
        v14 = *(DerivedStorage + 96);
        v15 = a1;
        if (!*(DerivedStorage + 208))
        {
          FigICY_CreateHTTPRequest(a1, v14, 0);
          v5 = v16;
          *(DerivedStorage + 21) = 1;
          goto LABEL_23;
        }

        v17 = 1;
LABEL_35:
        FigICY_CreateHTTPRequest(v15, v14, v17);
        v5 = v18;
        goto LABEL_23;
      }
    }

    else if (*(DerivedStorage + 144))
    {
      if (UpTimeNanoseconds - *(DerivedStorage + 288) <= 60000000000)
      {
        v10 = *(DerivedStorage + 144);
        if (v10)
        {
          v11 = *(*(CMBaseObjectGetVTable() + 16) + 16);
          if (v11)
          {
            v11(v10);
          }
        }

        goto LABEL_22;
      }

      goto LABEL_28;
    }

    if (!*(DerivedStorage + 208) && *(DerivedStorage + 376))
    {
      *(DerivedStorage + 21) = 1;
    }

    *(DerivedStorage + 376) = 0;
    v14 = *(DerivedStorage + 96);
    v15 = a1;
    v17 = 0;
    goto LABEL_35;
  }

  if (*(DerivedStorage + 304))
  {
    if (!*(DerivedStorage + 368) && !*(DerivedStorage + 320))
    {
LABEL_26:
      if (!*(DerivedStorage + 208))
      {
        *(DerivedStorage + 21) = 1;
        *(DerivedStorage + 376) = 0;
        FigICY_CreateHTTPRequest(a1, *(DerivedStorage + 96), 0);
        v5 = v13;
        goto LABEL_24;
      }
    }
  }

  else if (!*(DerivedStorage + 144))
  {
    goto LABEL_26;
  }

LABEL_3:
  v5 = 0;
LABEL_24:
  FigRetainProxyUnlockMutex();
  return v5;
}

uint64_t FigICYBytePumpLikelyToKeepUp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6, _OWORD *a7, _DWORD *a8, BOOL *a9)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *&time.start.value = *a2;
  time.start.epoch = *(a2 + 16);
  Seconds = CMTimeGetSeconds(&time.start);
  v15 = 1.0;
  if (!*(DerivedStorage + 17))
  {
    v16 = Seconds / 5.0;
    if (v16 > 1.0)
    {
      v16 = 1.0;
    }

    v15 = fmaxf(v16, 0.0);
  }

  if (a6)
  {
    *a6 = v15;
  }

  if (a7)
  {
    start = **&MEMORY[0x1E6960C70];
    v19 = start;
    CMTimeRangeMake(&time, &start, &v19);
    v17 = *&time.start.epoch;
    *a7 = *&time.start.value;
    a7[1] = v17;
    a7[2] = *&time.duration.timescale;
  }

  if (a8)
  {
    *a8 = 2 * (v15 == 1.0);
  }

  if (a9)
  {
    *a9 = v15 == 1.0;
  }

  return 0;
}

uint64_t FigICYBytePumpSetCallback(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    FigICYBytePumpSetCallback_cold_1(&v6);
    v4 = v6;
  }

  else
  {
    *(DerivedStorage + 64) = a2;
    *(DerivedStorage + 72) = FigRetainProxyRetain();
    FigRetainProxyRelease();
    v4 = 0;
  }

  FigRetainProxyUnlockMutex();
  return v4;
}

uint64_t FigICYBytePumpSetPlayerRate(float a1)
{
  CMBaseObjectGetDerivedStorage();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    FigICYBytePumpSetPlayerRate_cold_1(&v4);
    v2 = v4;
  }

  else if (a1 > 1.0 || a1 < 0.0)
  {
    v2 = FigSignalErrorAtGM();
  }

  else
  {
    v2 = 0;
  }

  FigRetainProxyUnlockMutex();
  return v2;
}

uint64_t fbp_PauseTimer()
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    FigRetainProxyGetOwner();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v2 = UpTimeNanoseconds - *(DerivedStorage + 288);
    if (v2 < 0xDF8475801)
    {
      FigHTTPRescheduleTimer(v2 / -1000000000.0 + 62.0, *(DerivedStorage + 80), *(DerivedStorage + 88));
    }

    else
    {
      FigICY_InvalidateHTTP(DerivedStorage);
    }
  }

  return FigRetainProxyUnlockMutex();
}

uint64_t fbp_NetworkInactivityTimer()
{
  FigRetainProxyLockMutex();
  if (!FigRetainProxyIsInvalidated())
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    Owner = FigRetainProxyGetOwner();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    v4 = DerivedStorage;
    v5 = UpTimeNanoseconds - *(DerivedStorage + 40);
    if (v5 <= 0x37E11D5FFLL)
    {
      v7 = *(DerivedStorage + 48);
      if (v7)
      {
        v8 = (15000000000 - v5) / 1000000000.0;
        if (v8 < 1.0)
        {
          v8 = 1.0;
        }

        FigHTTPRescheduleTimer(v8, *(DerivedStorage + 80), v7);
      }
    }

    else if (*(DerivedStorage + 19))
    {
      if (dword_1EAF16B70)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      if (dword_1EAF16B70)
      {
        v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      fbp_CancelAndRetryRequest(Owner, v4, 4294950466);
    }
  }

  return FigRetainProxyUnlockMutex();
}

void fbp_SetMetadataPeriod(uint64_t a1, CFStringRef str)
{
  IntValue = CFStringGetIntValue(str);
  *(a1 + 240) = IntValue;
  if ((IntValue - 0x7FFFFFFF) <= 1)
  {
    *(a1 + 240) = CFStringGetDoubleValue(str);
  }
}

uint64_t fbp_CancelAndRetryRequest(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 56) <= 1 && !*(a2 + 208) && !*(a2 + 19) && *(a2 + 60))
  {
    result = FigICY_CreateHTTPRequest(a1, *(a2 + 96), 0);
    if (!result)
    {
      ++*(a2 + 56);
      *(a2 + 21) = 1;
      return result;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1EAF16B70)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return fbp_SendDataCallback(a1, a2, *(a2 + 72), 0, 2, *(a2 + 192), MEMORY[0x1E6960C70], a3);
}

uint64_t fbp_GrabHeaderPayload(uint64_t a1, size_t a2, CFStringRef *a3, _BYTE *a4)
{
  v8 = *(a1 + 216);
  v9 = *(a1 + 232);
  v10 = v9 + a2;
  DataLength = CMBlockBufferGetDataLength(v8);
  v12 = DataLength - v10;
  if (DataLength != v10)
  {
    v15 = 0;
    dataPointerOut = 0;
    lengthAtOffsetOut = 0;
    while (!CMBlockBufferGetDataPointer(v8, v15 + v10, &lengthAtOffsetOut, 0, &dataPointerOut))
    {
      if (lengthAtOffsetOut)
      {
        v16 = 0;
        while (dataPointerOut[v16] != 13)
        {
          if (lengthAtOffsetOut == ++v16)
          {
            v15 += lengthAtOffsetOut;
            goto LABEL_12;
          }
        }

        v17 = *(a1 + 232);
        v18 = v9 + v15 - v17 + v16;
        v19 = *(a1 + 216);
        if (v19)
        {
          v20 = CMBlockBufferGetDataLength(v19) - *(a1 + 232);
        }

        else
        {
          v20 = 0;
        }

        if (v20 < v18 + 2)
        {
          goto LABEL_17;
        }

        *a4 = 0;
        fbp_AdvanceChars(a1, a2);
        if (a3)
        {
          v22 = MEMORY[0x19A8CC720](*MEMORY[0x1E695E480], v9 + v15 - v17 + v16 + 1, 0x100004077774924, 0);
          if (!v22)
          {
            return FigSignalErrorAtGM();
          }

          v23 = v22;
          fbp_CopyChars(a1, v22, v18);
        }

        else
        {
          v23 = 0;
        }

        fbp_AdvanceChars(a1, v18);
        fbp_CopyChars(a1, &lengthAtOffsetOut, 2uLL);
        fbp_AdvanceChars(a1, 2uLL);
        if (lengthAtOffsetOut != 2573)
        {
          if (v23)
          {
            CFAllocatorDeallocate(*MEMORY[0x1E695E480], v23);
          }

          return FigSignalErrorAtGM();
        }

        if (!v23)
        {
          return 0;
        }

        v23[v9 + v15 - v17 + v16] = 0;
        v24 = *MEMORY[0x1E695E480];
        v25 = CFStringCreateWithCStringNoCopy(*MEMORY[0x1E695E480], v23, 0x8000100u, *MEMORY[0x1E695E480]);
        *a3 = v25;
        if (v25)
        {
          return 0;
        }

        v14 = FigSignalErrorAtGM();
        CFAllocatorDeallocate(v24, v23);
        return v14;
      }

LABEL_12:
      if (v15 >= v12)
      {
        break;
      }
    }
  }

  v13 = *(a1 + 216);
  if (v13 && CMBlockBufferGetDataLength(v13) - *(a1 + 232) > 0x1000)
  {
    return FigSignalErrorAtGM();
  }

LABEL_17:
  v14 = 0;
  *a4 = 1;
  return v14;
}

int64x2_t OUTLINED_FUNCTION_2_15(int64x2_t a1, int64x2_t a2)
{
  result = vaddq_s64(a1, a2);
  v2[12] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_8_3()
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_9_4()
{

  return _os_log_send_and_compose_impl();
}

uint64_t OUTLINED_FUNCTION_14_2()
{
  v2 = *v0;

  return CMBlockBufferCreateEmpty(v2, 0, 0, v0 + 20);
}

BOOL OUTLINED_FUNCTION_15_3(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, os_log_type_t type, int a21, int a22)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_16_4(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int16 a17, char a18, os_log_type_t type, int a20)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_17_3()
{

  return CMBaseObjectGetVTable();
}

uint64_t MovieSampleDataWriterCreate(const void *a1, const void *a2, uint64_t a3, uint64_t a4, char a5, unsigned int a6, uint64_t *a7)
{
  if (!a2)
  {
    MovieSampleDataWriterCreate_cold_5(&v23);
    return v23;
  }

  if (!a7)
  {
    MovieSampleDataWriterCreate_cold_4(&v23);
    return v23;
  }

  if (sMovieSampleDataWriterRegisterTypeOnce != -1)
  {
    MovieSampleDataWriterCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    MovieSampleDataWriterCreate_cold_3(&v23);
    return v23;
  }

  v15 = Instance;
  if (a1)
  {
    v16 = CFRetain(a1);
  }

  else
  {
    v16 = 0;
  }

  *(v15 + 16) = v16;
  *(v15 + 24) = CFRetain(a2);
  v17 = MediaDataChunkWriterCreate(a1, (v15 + 32));
  if (v17)
  {
LABEL_21:
    v20 = v17;
    goto LABEL_29;
  }

  v18 = FigSimpleMutexCreate();
  *(v15 + 48) = v18;
  if (!v18)
  {
    v22 = 764;
LABEL_28:
    MovieSampleDataWriterCreate_cold_2(v22, &v23);
    v20 = v23;
    goto LABEL_29;
  }

  Mutable = CFArrayCreateMutable(a1, 0, 0);
  *(v15 + 56) = Mutable;
  if (!Mutable)
  {
    v22 = 767;
    goto LABEL_28;
  }

  *(v15 + 72) = a5 & 1;
  v17 = MovieHeaderMakerCopyFileTypeMajorBrand(a1, a2, a3, a4, (v15 + 80));
  if (v17)
  {
    goto LABEL_21;
  }

  v17 = MovieHeaderMakerCopyFileTypeMinorVersion(a1, a2, a3, a4, (v15 + 88));
  if (v17)
  {
    goto LABEL_21;
  }

  v17 = MovieHeaderMakerCopyFileTypeCompatibleBrands(a1, a2, a3, a4, (v15 + 96));
  if (v17)
  {
    goto LABEL_21;
  }

  if (a6 <= 3)
  {
    *(v15 + 105) = 0x1010100u >> (8 * a6);
    *(v15 + 104) = 0x1000100u >> (8 * a6);
    *(v15 + 106) = 0x1000000u >> (8 * a6);
  }

  v17 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], 0, 0x4000uLL, *MEMORY[0x1E695E480], 0, 0, 0x4000uLL, 1u, (v15 + 144));
  if (v17)
  {
    goto LABEL_21;
  }

  v20 = CMBlockBufferFillDataBytes(0, *(v15 + 144), 0, 0);
  if (v20)
  {
LABEL_29:
    CFRelease(v15);
    return v20;
  }

  *a7 = v15;
  return v20;
}

uint64_t MovieSampleDataWriterAddTrack(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  if (!a1)
  {
    MovieSampleDataWriterAddTrack_cold_4(&v14);
    return v14;
  }

  if (!a3)
  {
    MovieSampleDataWriterAddTrack_cold_3(&v14);
    return v14;
  }

  if (!a5)
  {
    MovieSampleDataWriterAddTrack_cold_2(&v14);
    return v14;
  }

  v10 = MEMORY[0x19A8CC720](*(a1 + 16), 16, 0x1020040D5A9D86FLL, 0);
  if (!v10)
  {
    MovieSampleDataWriterAddTrack_cold_1(&v14);
    return v14;
  }

  v11 = v10;
  *v10 = 0;
  v10[1] = 0;
  *v10 = a2;
  v12 = MediaDataChunkWriterAddTrack(*(a1 + 32), a2, 0, a3, a4, v10 + 1);
  if (v12)
  {
    CFAllocatorDeallocate(*(a1 + 16), v11);
  }

  else
  {
    CFArrayAppendValue(*(a1 + 56), v11);
    *a5 = v11;
  }

  return v12;
}

uint64_t MovieSampleDataWriterSetThreadPriorityAndClientPID(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 64))
    {
      MovieSampleDataWriterSetThreadPriorityAndClientPID_cold_1(&v4);
      return v4;
    }

    else
    {
      v2 = FigDispatchQueueCreateWithPriorityAndClientPID();
      *(a1 + 64) = v2;
      if (v2)
      {
        return 0;
      }

      else
      {
        MovieSampleDataWriterSetThreadPriorityAndClientPID_cold_2(&v5);
        return v5;
      }
    }
  }

  else
  {
    MovieSampleDataWriterSetThreadPriorityAndClientPID_cold_3(&v6);
    return v6;
  }
}

NSObject *MovieSampleDataWriterFlushPendingAsynchronousTasks(uint64_t a1)
{
  if (a1)
  {
    result = *(a1 + 64);
    if (result)
    {
      dispatch_sync_f(result, 0, doNothingFunc);
      return 0;
    }
  }

  else
  {
    MovieSampleDataWriterFlushPendingAsynchronousTasks_cold_1(&v2);
    return v2;
  }

  return result;
}

size_t MovieSampleDataWriterPatchMediaDataAtomSizeIfNeeded(uint64_t a1)
{
  if (a1)
  {
    FigSimpleMutexLock();
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = MediaDataChunkWriterFlush(*(a1 + 32), v2);
      if (!v3)
      {
        v3 = patchMediaDataAtomSizeIfNeeded(a1);
      }

      v4 = v3;
    }

    else
    {
      MovieSampleDataWriterPatchMediaDataAtomSizeIfNeeded_cold_1(&v6);
      v4 = v6;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    MovieSampleDataWriterPatchMediaDataAtomSizeIfNeeded_cold_2(&v7);
    return v7;
  }

  return v4;
}

uint64_t MovieSampleDataWriterGetFirstMediaDataAtomOffset(uint64_t a1, int a2, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      FigSimpleMutexLock();
      if (*(a1 + 120) == 1)
      {
        if (a2)
        {
          v6 = -8;
          if (!*(a1 + 104))
          {
            v6 = 0;
          }
        }

        else
        {
          v6 = 0;
        }

        v7 = 0;
        *a3 = v6 + *(a1 + 128);
      }

      else
      {
        MovieSampleDataWriterGetFirstMediaDataAtomOffset_cold_1(&v9);
        v7 = v9;
      }

      FigSimpleMutexUnlock();
    }

    else
    {
      MovieSampleDataWriterGetFirstMediaDataAtomOffset_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    MovieSampleDataWriterGetFirstMediaDataAtomOffset_cold_3(&v11);
    return v11;
  }

  return v7;
}

uint64_t MovieSampleDataWriterPatchFirstMediaDataAtomSize(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    MovieSampleDataWriterPatchFirstMediaDataAtomSize_cold_4(&v6);
    return v6;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    MovieSampleDataWriterPatchFirstMediaDataAtomSize_cold_3(&v6);
    return v6;
  }

  FigSimpleMutexLock();
  if (!*(a1 + 40))
  {
    MovieSampleDataWriterPatchFirstMediaDataAtomSize_cold_2(&v6);
LABEL_13:
    v4 = v6;
    goto LABEL_6;
  }

  if (*(a1 + 120) != 1)
  {
    MovieSampleDataWriterPatchFirstMediaDataAtomSize_cold_1(&v6);
    goto LABEL_13;
  }

  v4 = patchMediaDataAtomSize(a1, *(a1 + 128), a2, *(a1 + 106));
LABEL_6:
  FigSimpleMutexUnlock();
  return v4;
}

uint64_t patchMediaDataAtomSize(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v16 = 0;
  if (HIDWORD(a3) || a4)
  {
    if (*(a1 + 104) != 1)
    {
      patchMediaDataAtomSize_cold_2(&v15);
      return v15;
    }

    v15 = 0x7461646D01000000;
    v14 = bswap64(a3 + 8);
    v9 = *(a1 + 40);
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (!v10)
    {
      return 4294954514;
    }

    result = v10(v9, 8, a2 - 8, &v15, &v16);
    if (result)
    {
      return result;
    }

    if (v16 == 8)
    {
      v11 = *(a1 + 40);
      v12 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (!v12)
      {
        return 4294954514;
      }

      result = v12(v11, 8, a2, &v14, &v16);
      if (result)
      {
        return result;
      }

      if (v16 == 8)
      {
        goto LABEL_14;
      }

      v13 = 603;
    }

    else
    {
      v13 = 598;
    }

    patchMediaDataAtomSize_cold_3(v13, &v17);
    return v17;
  }

  LODWORD(v14) = bswap32(a3);
  v6 = *(a1 + 40);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v7)
  {
    return 4294954514;
  }

  result = v7(v6, 4, a2, &v14, &v16);
  if (!result)
  {
    if (v16 != 4)
    {
      patchMediaDataAtomSize_cold_1(&v15);
      return v15;
    }

LABEL_14:
    result = 0;
    *(a1 + 108) = 2;
  }

  return result;
}

uint64_t MovieSampleDataWriterSetPredeterminedMediaDataAtomSize(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (a2 && a2 <= 7)
    {
      MovieSampleDataWriterSetPredeterminedMediaDataAtomSize_cold_2(&v5);
      return v5;
    }

    else if (*(a1 + 108))
    {
      MovieSampleDataWriterSetPredeterminedMediaDataAtomSize_cold_1(&v4);
      return v4;
    }

    else
    {
      result = 0;
      *(a1 + 136) = a2;
    }
  }

  else
  {
    MovieSampleDataWriterSetPredeterminedMediaDataAtomSize_cold_3(&v6);
    return v6;
  }

  return result;
}

uint64_t MovieSampleDataWriterSetDefaultByteStream(uint64_t a1, const void *a2)
{
  if (a1)
  {
    if (a2)
    {
      MovieSampleDataWriterSetDefaultByteStream_cold_1(a1, a2, &v3);
      return v3;
    }

    else
    {
      MovieSampleDataWriterSetDefaultByteStream_cold_2(&v4);
      return v4;
    }
  }

  else
  {
    MovieSampleDataWriterSetDefaultByteStream_cold_3(&v5);
    return v5;
  }
}

const __CFArray *startNewChunkForAllTracks(uint64_t a1)
{
  result = *(a1 + 56);
  if (result)
  {
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v4 = Count;
      v5 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v5);
        result = MediaDataChunkWriterTrackStartNewChunk(*(a1 + 32), ValueAtIndex[1]);
        if (result)
        {
          break;
        }

        if (v4 == ++v5)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t MovieSampleDataWriterGetLengthOfDefaultByteStream(uint64_t a1, void *a2)
{
  v7 = 0;
  if (!a1)
  {
    MovieSampleDataWriterGetLengthOfDefaultByteStream_cold_3(&v8);
    return v8;
  }

  if (!a2)
  {
    MovieSampleDataWriterGetLengthOfDefaultByteStream_cold_2(&v8);
    return v8;
  }

  FigSimpleMutexLock();
  v4 = *(a1 + 40);
  if (v4)
  {
    EntireLength = MediaDataChunkWriterGetEntireLength(*(a1 + 32), v4, &v7);
    if (!EntireLength)
    {
      *a2 = v7;
    }
  }

  else
  {
    MovieSampleDataWriterGetLengthOfDefaultByteStream_cold_1(&v8);
    EntireLength = v8;
  }

  FigSimpleMutexUnlock();
  return EntireLength;
}

uint64_t MovieSampleDataWriterCopyURLOfDefaultByteStream(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = 0;
  if (!a1)
  {
    MovieSampleDataWriterCopyURLOfDefaultByteStream_cold_3(&v11);
    return v11;
  }

  if (!a3)
  {
    MovieSampleDataWriterCopyURLOfDefaultByteStream_cold_2(&v11);
    return v11;
  }

  FigSimpleMutexLock();
  if (*(a1 + 40))
  {
    CMBaseObject = CMByteStreamGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(CMBaseObject, *MEMORY[0x1E695FFA0], a2, &v10);
      v7 = v10;
    }

    v8 = 0;
    *a3 = v7;
  }

  else
  {
    MovieSampleDataWriterCopyURLOfDefaultByteStream_cold_1(&v11);
    v8 = v11;
  }

  FigSimpleMutexUnlock();
  return v8;
}

uint64_t MovieSampleDataWriterSynchronizeDefaultByteStream(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    MovieSampleDataWriterSynchronizeDefaultByteStream_cold_4(&v12);
    return v12;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    MovieSampleDataWriterSynchronizeDefaultByteStream_cold_3(&v12);
    return v12;
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200403A5D3213uLL);
    if (v7)
    {
      v8 = v7;
      *v7 = CFRetain(v3);
      v8[2] = a2;
      if (a3)
      {
        dispatch_async_f(v6, v8, byteStreamSynchronizeFunc);
      }

      else
      {
        dispatch_sync_f(v6, v8, byteStreamSynchronizeFunc);
      }

      return 0;
    }

    MovieSampleDataWriterSynchronizeDefaultByteStream_cold_1(&v12);
    return v12;
  }

  if (a3)
  {
    MovieSampleDataWriterSynchronizeDefaultByteStream_cold_2(&v12);
    return v12;
  }

  v9 = *(CMBaseObjectGetVTable() + 16);
  if (*v9 < 2uLL)
  {
    return 4294954514;
  }

  v10 = v9[5];
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v3, a2);
}

uint64_t MovieSampleDataWriterWriteData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    MovieSampleDataWriterWriteData_cold_5(&v14);
    return v14;
  }

  if (a3 < 0)
  {
    MovieSampleDataWriterWriteData_cold_4(&v14);
    return v14;
  }

  if (!a4)
  {
    MovieSampleDataWriterWriteData_cold_3(&v14);
    return v14;
  }

  FigSimpleMutexLock();
  v8 = *(a1 + 40);
  if (!v8)
  {
    MovieSampleDataWriterWriteData_cold_2(&v14);
LABEL_18:
    v11 = v14;
    goto LABEL_10;
  }

  v13 = 0;
  v9 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v9)
  {
    v11 = 4294954514;
    goto LABEL_10;
  }

  v10 = v9(v8, a2, a3, a4, &v13);
  if (v10)
  {
    v11 = v10;
    goto LABEL_10;
  }

  if (v13 != a2)
  {
    MovieSampleDataWriterWriteData_cold_1(&v14);
    goto LABEL_18;
  }

  v11 = 0;
LABEL_10:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t MovieSampleDataWriterWriteFreeAtom(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    FigSimpleMutexLock();
    if (*(a1 + 40))
    {
      v6 = writeFreeAtom(a1, a2, a3);
    }

    else
    {
      MovieSampleDataWriterWriteFreeAtom_cold_1(&v8);
      v6 = v8;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    MovieSampleDataWriterWriteFreeAtom_cold_2(&v9);
    return v9;
  }

  return v6;
}

uint64_t MovieSampleDataWriterAppendFreeAtom(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    MovieSampleDataWriterAppendFreeAtom_cold_2(&v10);
    return v10;
  }

  FigSimpleMutexLock();
  if (!*(a1 + 40))
  {
    MovieSampleDataWriterAppendFreeAtom_cold_1(&v10);
    v7 = v10;
    goto LABEL_9;
  }

  appended = appendFileTypeAtomIfNeeded(a1);
  if (!appended)
  {
    v9 = 0;
    v5 = *(a1 + 40);
    v6 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v6)
    {
      v7 = 4294954514;
      goto LABEL_9;
    }

    appended = v6(v5, 0, &v9);
    if (!appended)
    {
      appended = writeFreeAtom(a1, v9, a2);
    }
  }

  v7 = appended;
LABEL_9:
  FigSimpleMutexUnlock();
  return v7;
}

uint64_t appendFileTypeAtomIfNeeded(uint64_t a1)
{
  theBuffer = 0;
  appended = createFileTypeAtomIfNeeded(a1, &theBuffer);
  v3 = theBuffer;
  if (!appended && theBuffer)
  {
    appended = byteStreamAppendBlockBuffer(*(a1 + 40), theBuffer);
LABEL_5:
    CFRelease(v3);
    return appended;
  }

  if (theBuffer)
  {
    goto LABEL_5;
  }

  return appended;
}

uint64_t MovieSampleDataWriterAppendBlockBuffer(uint64_t *a1, OpaqueCMBlockBuffer *a2, void *a3)
{
  if (!a1)
  {
    MovieSampleDataWriterAppendBlockBuffer_cold_4(&v14);
    return v14;
  }

  if (!a2)
  {
    MovieSampleDataWriterAppendBlockBuffer_cold_3(&v14);
    return v14;
  }

  FigSimpleMutexLock();
  if (!a1[5])
  {
    MovieSampleDataWriterAppendBlockBuffer_cold_2(&v14);
LABEL_20:
    v11 = v14;
    goto LABEL_12;
  }

  appendFileTypeAtomAndMediaDataAtomHeaderAndPaddingIfNeeded(a1, 0);
  v13 = 0;
  v6 = a1[5];
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v7)
  {
    appended = v7(v6, 0, &v13);
    if (!appended)
    {
      DataLength = CMBlockBufferGetDataLength(a2);
      appended = CMByteStreamAppendBlockBuffer();
      if (!appended)
      {
        if (!DataLength)
        {
          v10 = checkIfMediaDataAtomSizeExceededPredeterminedSizeIfNeeded(a1);
          v11 = v10;
          if (a3 && !v10)
          {
            *a3 = v13;
          }

          goto LABEL_12;
        }

        MovieSampleDataWriterAppendBlockBuffer_cold_1(&v14);
        goto LABEL_20;
      }
    }

    v11 = appended;
  }

  else
  {
    v11 = 4294954514;
  }

LABEL_12:
  FigSimpleMutexUnlock();
  return v11;
}

uint64_t MovieSampleDataWriterAppendHeader(uint64_t a1, OpaqueCMBlockBuffer *a2, void *a3)
{
  if (!a1)
  {
    MovieSampleDataWriterAppendHeader_cold_5(&v17);
    return v17;
  }

  if (!a2)
  {
    MovieSampleDataWriterAppendHeader_cold_4(&v17);
    return v17;
  }

  FigSimpleMutexLock();
  if (!*(a1 + 40))
  {
    MovieSampleDataWriterAppendHeader_cold_3(&v17);
    goto LABEL_27;
  }

  appended = appendFileTypeAtomIfNeeded(a1);
  if (appended || (appended = MediaDataChunkWriterFlush(*(a1 + 32), *(a1 + 40)), appended) || (appended = patchMediaDataAtomSizeIfNeeded(a1), appended))
  {
LABEL_22:
    v11 = appended;
    goto LABEL_20;
  }

  if (!*(a1 + 136))
  {
    goto LABEL_12;
  }

  v17 = 0;
  v7 = *(a1 + 40);
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v8)
  {
LABEL_19:
    v11 = 4294954514;
    goto LABEL_20;
  }

  appended = v8(v7, 0, &v17);
  if (appended)
  {
    goto LABEL_22;
  }

  v9 = v17 - *(a1 + 112);
  v10 = *(a1 + 136);
  if (v10 < v9)
  {
    MovieSampleDataWriterAppendHeader_cold_1(&v18);
    v11 = v18;
    if (v18)
    {
      goto LABEL_20;
    }

LABEL_12:
    v16 = 0;
    v12 = *(a1 + 40);
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v13)
    {
      appended = v13(v12, 0, &v16);
      if (!appended)
      {
        DataLength = CMBlockBufferGetDataLength(a2);
        appended = CMByteStreamAppendBlockBuffer();
        if (!appended)
        {
          if (!DataLength)
          {
            appended = startNewChunkForAllTracks(a1);
            if (!appended)
            {
              *(a1 + 108) = 0;
              v11 = 0;
              if (a3)
              {
                *a3 = v16;
              }

              goto LABEL_20;
            }

            goto LABEL_22;
          }

          MovieSampleDataWriterAppendHeader_cold_2(&v17);
LABEL_27:
          v11 = v17;
          goto LABEL_20;
        }
      }

      goto LABEL_22;
    }

    goto LABEL_19;
  }

  v11 = writeZeroData(a1, *(a1 + 40), v17, v10 - v9);
  if (!v11)
  {
    goto LABEL_12;
  }

LABEL_20:
  FigSimpleMutexUnlock();
  return v11;
}

size_t MovieSampleDataWriterFlush(uint64_t a1)
{
  if (a1)
  {
    FigSimpleMutexLock();
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = MediaDataChunkWriterFlush(*(a1 + 32), v2);
    }

    else
    {
      MovieSampleDataWriterFlush_cold_1(&v5);
      v3 = v5;
    }

    FigSimpleMutexUnlock();
  }

  else
  {
    MovieSampleDataWriterFlush_cold_2(&v6);
    return v6;
  }

  return v3;
}

uint64_t MovieSampleDataWriterTrackAppendSampleData(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, size_t *a9, const __CFArray *a10, uint64_t a11)
{
  if (a1)
  {
    if (a2)
    {
      FigSimpleMutexLock();
      if (a1[5])
      {
        appended = appendFileTypeAtomAndMediaDataAtomHeaderAndPaddingIfNeeded(a1, a2);
        if (!appended)
        {
          appended = MediaDataChunkWriterTrackAppendSampleData(a1[4], a2[1], a1[5], a3, a4, a5, a6, a7, a8, a9, a10, a11);
          if (!appended)
          {
            appended = checkIfMediaDataAtomSizeExceededPredeterminedSizeIfNeeded(a1);
          }
        }

        v20 = appended;
      }

      else
      {
        MovieSampleDataWriterTrackAppendSampleData_cold_1(&v22);
        v20 = v22;
      }

      FigSimpleMutexUnlock();
    }

    else
    {
      MovieSampleDataWriterTrackAppendSampleData_cold_2(&v23);
      return v23;
    }
  }

  else
  {
    MovieSampleDataWriterTrackAppendSampleData_cold_3(&v24);
    return v24;
  }

  return v20;
}

uint64_t MovieSampleDataWriterTrackAppendSampleReference(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, size_t *a9, const __CFArray *a10, uint64_t a11)
{
  if (a1)
  {
    if (a2)
    {
      v11 = *(a1 + 32);
      v12 = *(a2 + 8);

      return MediaDataChunkWriterTrackAppendSampleReference(v11, v12, a3, a4, a5, a6, a7, a8, a9, a10, a11);
    }

    else
    {
      MovieSampleDataWriterTrackAppendSampleReference_cold_1(&v14);
      return v14;
    }
  }

  else
  {
    MovieSampleDataWriterTrackAppendSampleReference_cold_2(&v15);
    return v15;
  }
}

uint64_t MovieSampleDataWriterTrackSetPreferredChunkSize(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 32);
      v4 = *(a2 + 8);

      return MediaDataChunkWriterTrackSetPreferredChunkSize(v3, v4, a3);
    }

    else
    {
      MovieSampleDataWriterTrackSetPreferredChunkSize_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    MovieSampleDataWriterTrackSetPreferredChunkSize_cold_2(&v7);
    return v7;
  }
}

uint64_t MovieSampleDataWriterTrackGetPreferredChunkSize(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v3 = *(a1 + 32);
        v4 = *(a2 + 8);

        return MediaDataChunkWriterTrackGetPreferredChunkSize(v3, v4, a3);
      }

      else
      {
        MovieSampleDataWriterTrackGetPreferredChunkSize_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      MovieSampleDataWriterTrackGetPreferredChunkSize_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    MovieSampleDataWriterTrackGetPreferredChunkSize_cold_3(&v8);
    return v8;
  }
}

uint64_t MovieSampleDataWriterTrackSetPreferredChunkDuration(uint64_t a1, uint64_t a2, CMTime *a3)
{
  if (!a1)
  {
    MovieSampleDataWriterTrackSetPreferredChunkDuration_cold_2(&v6);
    return LODWORD(v6.value);
  }

  if (!a2)
  {
    MovieSampleDataWriterTrackSetPreferredChunkDuration_cold_1(&v6);
    return LODWORD(v6.value);
  }

  v3 = *(a1 + 32);
  v4 = *(a2 + 8);
  v6 = *a3;
  return MediaDataChunkWriterTrackSetPreferredChunkDuration(v3, v4, &v6);
}

uint64_t MovieSampleDataWriterTrackGetPreferredChunkDuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v3 = *(a1 + 32);
        v4 = *(a2 + 8);

        return MediaDataChunkWriterTrackGetPreferredChunkDuration(v3, v4, a3);
      }

      else
      {
        MovieSampleDataWriterTrackGetPreferredChunkDuration_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      MovieSampleDataWriterTrackGetPreferredChunkDuration_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    MovieSampleDataWriterTrackGetPreferredChunkDuration_cold_3(&v8);
    return v8;
  }
}

uint64_t MovieSampleDataWriterTrackSetPreferredChunkAlignment(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 32);
      v4 = *(a2 + 8);

      return MediaDataChunkWriterTrackSetPreferredChunkAlignment(v3, v4, a3);
    }

    else
    {
      MovieSampleDataWriterTrackSetPreferredChunkAlignment_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    MovieSampleDataWriterTrackSetPreferredChunkAlignment_cold_2(&v7);
    return v7;
  }
}

uint64_t MovieSampleDataWriterTrackGetPreferredChunkAlignment(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v3 = *(a1 + 32);
        v4 = *(a2 + 8);

        return MediaDataChunkWriterTrackGetPreferredChunkAlignment(v3, v4, a3);
      }

      else
      {
        MovieSampleDataWriterTrackGetPreferredChunkAlignment_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      MovieSampleDataWriterTrackGetPreferredChunkAlignment_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    MovieSampleDataWriterTrackGetPreferredChunkAlignment_cold_3(&v8);
    return v8;
  }
}

uint64_t MovieSampleDataWriterCopyFileTypeAtomAsBlockBuffer(void *a1, const __CFAllocator *a2, CMBlockBufferRef *a3)
{
  if (a1)
  {
    if (a3)
    {
      v5 = a1[10];
      v4 = a1[11];
      v6 = a1[12];

      return MovieHeaderMakerCopyFileTypeAtomAsBlockBuffer(a2, v5, v4, v6, a3);
    }

    else
    {
      MovieSampleDataWriterCopyFileTypeAtomAsBlockBuffer_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    MovieSampleDataWriterCopyFileTypeAtomAsBlockBuffer_cold_2(&v9);
    return v9;
  }
}

uint64_t MovieSampleDataWriterSetMajorBrand(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf)
    {
      v4 = CFGetTypeID(cf);
      if (v4 == CFNumberGetTypeID())
      {
        v5 = *(a1 + 80);
        *(a1 + 80) = cf;
        CFRetain(cf);
        if (v5)
        {
          CFRelease(v5);
        }

        return 0;
      }

      else
      {
        MovieSampleDataWriterSetMajorBrand_cold_1(&v7);
        return v7;
      }
    }

    else
    {
      MovieSampleDataWriterSetMajorBrand_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    MovieSampleDataWriterSetMajorBrand_cold_3(&v9);
    return v9;
  }
}

uint64_t MovieSampleDataWriterCopyMajorBrand(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 80);
      if (v3)
      {
        v4 = CFRetain(v3);
      }

      else
      {
        v4 = 0;
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      MovieSampleDataWriterCopyMajorBrand_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    MovieSampleDataWriterCopyMajorBrand_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t MovieSampleDataWriterSetMinorVersion(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf)
    {
      v4 = CFGetTypeID(cf);
      if (v4 == CFNumberGetTypeID())
      {
        v5 = *(a1 + 88);
        *(a1 + 88) = cf;
        CFRetain(cf);
        if (v5)
        {
          CFRelease(v5);
        }

        return 0;
      }

      else
      {
        MovieSampleDataWriterSetMinorVersion_cold_1(&v7);
        return v7;
      }
    }

    else
    {
      MovieSampleDataWriterSetMinorVersion_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    MovieSampleDataWriterSetMinorVersion_cold_3(&v9);
    return v9;
  }
}

uint64_t MovieSampleDataWriterCopyMinorVersion(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 88);
      if (v3)
      {
        v4 = CFRetain(v3);
      }

      else
      {
        v4 = 0;
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      MovieSampleDataWriterCopyMinorVersion_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    MovieSampleDataWriterCopyMinorVersion_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t MovieSampleDataWriterSetCompatibleBrands(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf)
    {
      v4 = CFGetTypeID(cf);
      if (v4 == CFArrayGetTypeID())
      {
        v5 = *(a1 + 96);
        *(a1 + 96) = cf;
        CFRetain(cf);
        if (v5)
        {
          CFRelease(v5);
        }

        return 0;
      }

      else
      {
        MovieSampleDataWriterSetCompatibleBrands_cold_1(&v7);
        return v7;
      }
    }

    else
    {
      MovieSampleDataWriterSetCompatibleBrands_cold_2(&v8);
      return v8;
    }
  }

  else
  {
    MovieSampleDataWriterSetCompatibleBrands_cold_3(&v9);
    return v9;
  }
}

uint64_t MovieSampleDataWriterCopyCompatibleBrands(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 96);
      if (v3)
      {
        v4 = CFRetain(v3);
      }

      else
      {
        v4 = 0;
      }

      result = 0;
      *a2 = v4;
    }

    else
    {
      MovieSampleDataWriterCopyCompatibleBrands_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    MovieSampleDataWriterCopyCompatibleBrands_cold_2(&v7);
    return v7;
  }

  return result;
}

uint64_t movieSampleDataWriterRegisterType()
{
  result = _CFRuntimeRegisterClass();
  sMovieSampleDataWriterID = result;
  return result;
}

double movieSampleDataWriter_Init(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  return result;
}

void movieSampleDataWriter_Finalize(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 56);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), i);
        if (ValueAtIndex)
        {
          CFAllocatorDeallocate(v2, ValueAtIndex);
        }
      }
    }

    v8 = *(a1 + 56);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 88);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 96);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 144);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    CFRelease(v14);
  }

  FigSimpleMutexDestroy();
  MediaDataChunkWriterRelease(*(a1 + 32));
  v15 = *(a1 + 64);
  if (v15)
  {
    dispatch_release(v15);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

__CFString *movieSampleDataWriter_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<MovieSampleDataWriter %p>{fileType:%@}", a1, *(a1 + 24));
  return Mutable;
}

void byteStreamSynchronizeFunc(const void **a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(CMBaseObjectGetVTable() + 16);
  if (*v4 >= 2uLL)
  {
    v5 = v4[5];
    if (v5)
    {
      v5(v2, v3);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

uint64_t createPadding(uint64_t a1, size_t a2, CMBlockBufferRef *a3)
{
  DataLength = CMBlockBufferGetDataLength(*(a1 + 144));
  blockBufferOut = 0;
  appended = CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0, 0, &blockBufferOut);
  if (appended)
  {
LABEL_7:
    v9 = appended;
    if (blockBufferOut)
    {
      CFRelease(blockBufferOut);
    }
  }

  else
  {
    while (a2)
    {
      if (a2 >= DataLength)
      {
        v8 = DataLength;
      }

      else
      {
        v8 = a2;
      }

      appended = CMBlockBufferAppendBufferReference(blockBufferOut, *(a1 + 144), 0, v8, 0);
      a2 -= v8;
      if (appended)
      {
        goto LABEL_7;
      }
    }

    v9 = 0;
    *a3 = blockBufferOut;
  }

  return v9;
}

uint64_t OUTLINED_FUNCTION_1_14(OpaqueCMBlockBuffer *a1, OpaqueCMBlockBuffer *a2)
{

  return CMBlockBufferAppendBufferReference(a1, a2, 0, 0, 0);
}

uint64_t FigCLCPCaptionFormatConformerCreate(uint64_t a1, const void *a2, void *a3)
{
  v9 = 0;
  if (!a3)
  {
    FigCLCPCaptionFormatConformerCreate_cold_2(&v10);
    return v10;
  }

  FigCaptionFormatConformerGetClassID();
  v5 = CMDerivedObjectCreate();
  if (v5)
  {
    FigCLCPCaptionFormatConformerCreate_cold_1(v5, &v9, &v10);
    return v10;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v7 = CFRetain(a2);
  }

  else
  {
    v7 = 0;
  }

  result = 0;
  *DerivedStorage = v7;
  *a3 = v9;
  return result;
}

void clcpcfc_Finalize()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v1 = *(DerivedStorage + 8);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 8) = 0;
  }

  v2 = *(DerivedStorage + 16);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 16) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

__CFString *clcpcfc_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigCLCPCaptionFormatConformer %p>", a1);
  return Mutable;
}

uint64_t clcpcfc_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (a4)
    {
      return 4294954512;
    }

    v7 = 184;
  }

  else
  {
    v7 = 183;
  }

  v9 = v4;
  v10 = v5;
  clcpcfc_CopyProperty_cold_1(v7, &v8);
  return v8;
}

uint64_t clcpcfc_SetProperty(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return 4294954512;
  }

  v6 = v2;
  v7 = v3;
  clcpcfc_SetProperty_cold_1(&v5);
  return v5;
}

uint64_t clcpcfc_CreateConformedCaptionData(uint64_t a1, void *a2, __int128 *a3, void *a4, _OWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    clcpcfc_CreateConformedCaptionData_cold_5(v42);
    return LODWORD(v42[0]);
  }

  if ((*(a3 + 12) & 1) == 0 || (*(a3 + 36) & 1) == 0 || *(a3 + 5) || (*(a3 + 3) & 0x8000000000000000) != 0)
  {
    clcpcfc_CreateConformedCaptionData_cold_4(v42);
    return LODWORD(v42[0]);
  }

  if (!a4)
  {
    clcpcfc_CreateConformedCaptionData_cold_3(v42);
    return LODWORD(v42[0]);
  }

  if (!a5)
  {
    clcpcfc_CreateConformedCaptionData_cold_2(v42);
    return LODWORD(v42[0]);
  }

  v10 = DerivedStorage;
  v11 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v11)
  {
    v12 = v11(a2);
    if (!v12)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v12 = &stru_1F0B1AFB8;
  }

  if (!CFStringGetLength(v12))
  {
LABEL_36:
    v31 = CFRetain(a2);
    v24 = 0;
    *a4 = v31;
    v33 = a3[1];
    v32 = a3[2];
    *a5 = *a3;
    a5[1] = v33;
    a5[2] = v32;
    return v24;
  }

  v35 = *a3;
  v36 = a3[1];
  v37 = a3[2];
  values = a2;
  v13 = *v10;
  *&v40 = clcpcfcFromSbufOutputCallback;
  *(&v40 + 1) = v10;
  *&v39 = clcpcfcToSbufOutputCallback;
  *(&v39 + 1) = v10;
  v38 = 0;
  v14 = FigCLCPCaptionGroupConverterFromSampleBufferCreate(&v40, v13, (v10 + 8));
  if (v14 || (v14 = FigCLCPCaptionGroupConverterToSampleBufferCreate(&v39, v13, &v38), v14))
  {
    v24 = v14;
    v15 = 0;
    goto LABEL_27;
  }

  v15 = CFArrayCreate(v13, &values, 1, MEMORY[0x1E695E9C0]);
  if (!v15)
  {
    clcpcfc_CreateConformedCaptionData_cold_1(v42);
    v24 = LODWORD(v42[0]);
    goto LABEL_27;
  }

  v16 = FigCaptionGroupCreate();
  if (v16)
  {
    goto LABEL_45;
  }

  v17 = v38;
  v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v18)
  {
    v42[0] = v35;
    v42[1] = v36;
    v42[2] = v37;
    v16 = v18(v17, 0, v42);
    if (v16)
    {
      goto LABEL_45;
    }

    v19 = v38;
    v20 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v20)
    {
      v16 = v20(v19);
      if (!v16)
      {
        v21 = *(v10 + 8);
        v22 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v22)
        {
          v16 = v22(v21);
          if (!v16)
          {
            v23 = *(v10 + 16);
            if (v23)
            {
              v23 = CFRetain(v23);
            }

            v24 = 0;
            *a4 = v23;
            v25 = *(v10 + 24);
            v26 = *(v10 + 56);
            a5[1] = *(v10 + 40);
            a5[2] = v26;
            *a5 = v25;
            goto LABEL_27;
          }

          goto LABEL_45;
        }

        goto LABEL_26;
      }

LABEL_45:
      v24 = v16;
      goto LABEL_27;
    }
  }

LABEL_26:
  v24 = 4294954514;
LABEL_27:
  if (v15)
  {
    CFRelease(v15);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  v27 = *(v10 + 16);
  if (v27)
  {
    CFRelease(v27);
    *(v10 + 16) = 0;
  }

  v28 = *(v10 + 8);
  if (v28)
  {
    CFRelease(v28);
    *(v10 + 8) = 0;
  }

  v29 = MEMORY[0x1E6960C98];
  v30 = *(MEMORY[0x1E6960C98] + 16);
  *(v10 + 24) = *MEMORY[0x1E6960C98];
  *(v10 + 40) = v30;
  *(v10 + 56) = *(v29 + 32);
  return v24;
}

uint64_t clcpcfcFromSbufOutputCallback(uint64_t a1, __int128 *a2, uint64_t a3)
{
  result = FigCaptionGroupGetSliceCount();
  if (result == 1)
  {
    if (*(a3 + 16))
    {
      clcpcfcFromSbufOutputCallback_cold_1(&v10);
      return v10;
    }

    else
    {
      CaptionData = FigCaptionGroupGetCaptionData();
      if (CaptionData)
      {
        v7 = CFRetain(CaptionData);
      }

      else
      {
        v7 = 0;
      }

      result = 0;
      *(a3 + 16) = v7;
      v8 = *a2;
      v9 = a2[1];
      *(a3 + 56) = a2[2];
      *(a3 + 40) = v9;
      *(a3 + 24) = v8;
    }
  }

  else if (result)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  return result;
}

uint64_t clcpcfcToSbufOutputCallback(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v4)
  {
    return 4294954514;
  }

  return v4(v3, a1);
}

uint64_t AudioFileStreamStartupPackets(void *a1, unsigned int a2, unsigned int a3, const void *a4, AudioStreamPacketDescription *a5)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 136) += a3;
  return result;
}

uint64_t fim_ConfigureAudioFileStreamOptionalProperties(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  inPropertyData = 0x5052495669643365;
  if (a2)
  {
    v3 = 8;
  }

  else
  {
    v9 = 1986225779;
    v6 = 0;
    ioPropertyDataSize = 4;
    if (AudioFileStreamGetProperty(*(a1 + 152), 0x66666D74u, &ioPropertyDataSize, &v6))
    {
      v4 = 0;
    }

    else
    {
      v4 = v6 == 1332176742;
    }

    if (v4)
    {
      v10 = 1818586995;
      v3 = 16;
    }

    else
    {
      v3 = 12;
    }
  }

  ioPropertyDataSize = v3;
  return AudioFileStreamSetProperty(*(a1 + 152), 0x6F707470u, v3, &inPropertyData);
}

uint64_t FigIcyManifoldInjectData(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    FigIcyManifoldInjectData(&lengthAtOffsetOut);
    return lengthAtOffsetOut;
  }

  v7 = DerivedStorage;
  CFRetain(a1);
  CFRetain(a4);
  FigSimpleMutexLock();
  ++*(v7 + 24);
  if (*(v7 + 32))
  {
    FigIcyManifoldInjectData(&lengthAtOffsetOut);
LABEL_84:
    LODWORD(v9) = lengthAtOffsetOut;
    goto LABEL_71;
  }

  if (*(v7 + 36))
  {
    FigIcyManifoldInjectData(&lengthAtOffsetOut);
    goto LABEL_84;
  }

  *(v7 + 36) = 1;
  *(v7 + 44) = 0;
  *(v7 + 39) = 1;
  v8 = CMGetAttachment(a4, @"FBPAKey_TimedData", 0);
  if (v8)
  {
    if (CFEqual(v8, @"FBPA_TimedData_ICY"))
    {
      v9 = fim_PushMetaData(a1, a4, 0x69637920u);
      if (!v9)
      {
        goto LABEL_70;
      }

LABEL_69:
      fim_EndAllTracks(a1, v9);
      goto LABEL_70;
    }
  }

  else
  {
    cf = 0;
    v10 = CMGetAttachment(a4, @"FMFD_BufferAudioDecryptor", 0);
    if (!v10)
    {
      v10 = CMGetAttachment(a4, @"FMFD_BufferDecryptor", 0);
    }

    if (!FigCFEqual())
    {
      v11 = *(v7 + 568);
      if (!v11)
      {
        *(v7 + 272) = 1;
      }

      *(v7 + 568) = v10;
      if (v10)
      {
        CFRetain(v10);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      *(v7 + 275) = 1;
    }

    if (CMBlockBufferGetDataLength(a4))
    {
      v36 = a4;
      if (CMBlockBufferIsRangeContiguous(a4, 0, 0))
      {
        v12 = CFRetain(a4);
        cf = v12;
      }

      else
      {
        ContiguousBlockBuffer = FigMemoryPoolCreateContiguousBlockBuffer();
        if (ContiguousBlockBuffer)
        {
          LODWORD(v9) = ContiguousBlockBuffer;
          goto LABEL_70;
        }

        v12 = 0;
      }

      dataPointerOut = 0;
      lengthAtOffsetOut = 0;
      v14 = CMBaseObjectGetDerivedStorage();
      DataLength = CMBlockBufferGetDataLength(v12);
      if (DataLength)
      {
        v16 = DataLength;
        v17 = 0;
        v18 = (v14 + 504);
        while (1)
        {
          v19 = *(v14 + 520);
          if (v19)
          {
            if (v16 >= *(v14 + 536))
            {
              v20 = *(v14 + 536);
            }

            else
            {
              v20 = v16;
            }

            appended = CMBlockBufferAppendBufferReference(v19, v12, v17, v20, 0);
            if (appended)
            {
LABEL_77:
              v9 = appended;
              goto LABEL_80;
            }

            v22 = *(v14 + 536) - v20;
            *(v14 + 536) = v22;
            if (!v22)
            {
              fim_PushMetaData(a1, *(v14 + 520), 0x69643320u);
              v23 = *(v14 + 520);
              if (v23)
              {
                CFRelease(v23);
              }

              *(v14 + 520) = 0;
              *(v14 + 544) = 0;
            }
          }

          appended = CMBlockBufferGetDataPointer(v12, v17, &lengthAtOffsetOut, 0, &dataPointerOut);
          if (appended)
          {
            goto LABEL_77;
          }

          if (v16 >= lengthAtOffsetOut)
          {
            v24 = lengthAtOffsetOut;
          }

          else
          {
            v24 = v16;
          }

          *(v14 + 320) = dataPointerOut;
          *(v14 + 328) = v24;
          *(v14 + 336) = v12;
          *(v14 + 344) = v17;
          v25 = *(v14 + 528);
          if (v25)
          {
            if (v25 + v24 >= 0xA)
            {
              v28 = -*(v14 + 528);
              *(v14 + 528) = 0;
              ProcessID3HeaderTagFromAudioFileStream(a1, v28);
            }

            else
            {
              *(v14 + 528) = v25 + v24;
            }
          }

          v26 = *(v14 + 152);
          if (!v26)
          {
            appended = fim_NewAudioStream(a1);
            if (appended)
            {
              goto LABEL_77;
            }

            v26 = *(v14 + 152);
          }

          v9 = AudioFileStreamParseBytes(v26, v24, dataPointerOut, *(v14 + 34) != 0);
          if (v24 > 9)
          {
            v27 = *&dataPointerOut[v24 - 2];
            *v18 = *&dataPointerOut[v24 - 10];
            *(v14 + 512) = v27;
          }

          else
          {
            memmove((v14 + 504), v18 + v24, 10 - v24);
            memmove(v18 + 10 - v24, dataPointerOut, v24);
          }

          *(v14 + 34) = 0;
          if (*(v14 + 352))
          {
            v24 = *(v14 + 356);
            *(v14 + 352) = 0;
            *(v14 + 356) = 0;
            fim_DestroyAudioStream(v14 + 80);
          }

          if (!*(v14 + 33) && v9)
          {
            goto LABEL_80;
          }

          if (*(v14 + 44))
          {
            break;
          }

          if (*(v14 + 32) || *(v14 + 37))
          {
            v9 = 4294951251;
            goto LABEL_80;
          }

          v17 += v24;
          v16 -= v24;
          if (!v16)
          {
            goto LABEL_59;
          }
        }

        v9 = *(v14 + 44);
LABEL_80:
        a4 = v36;
      }

      else
      {
        v9 = 0;
LABEL_59:
        v29 = *(v14 + 464);
        a4 = v36;
        if (v29)
        {
          v30 = (v14 + 464);
          while (1)
          {
            v31 = fim_PushMetaData(a1, v29[1], *(v29 + 4));
            if (v31)
            {
              break;
            }

            v32 = **v30;
            *v30 = v32;
            if (!v32)
            {
              *(v14 + 472) = v30;
            }

            v33 = v29[1];
            if (v33)
            {
              CFRelease(v33);
            }

            free(v29);
            v29 = *v30;
            if (!*v30)
            {
              v9 = 0;
              goto LABEL_68;
            }
          }

          v9 = v31;
        }
      }

LABEL_68:
      CFRelease(cf);
      if (!v9)
      {
        goto LABEL_70;
      }

      goto LABEL_69;
    }
  }

  LODWORD(v9) = 0;
LABEL_70:
  *(v7 + 36) = 0;
LABEL_71:
  if (v9 == -16045)
  {
    v34 = 0;
  }

  else
  {
    v34 = v9;
  }

  --*(v7 + 24);
  FigSimpleMutexUnlock();
  CFRelease(a4);
  CFRelease(a1);
  return v34;
}

uint64_t FigIcyManifoldInvalidate(void *a1)
{
  CFRetain(a1);
  FigIcyManifoldInvalidateGuts(a1);
  CFRelease(a1);
  return 0;
}

uint64_t FigIcyManifoldFinalize(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 40) = 1;
  FigIcyManifoldInvalidateGuts(a1);
  fim_DestroyAudioStream(DerivedStorage + 80);
  fim_DestroyMetaTrack((DerivedStorage + 400));
  v3 = *(DerivedStorage + 560);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 560) = 0;
  }

  v4 = *(DerivedStorage + 568);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 568) = 0;
  }

  v5 = *(DerivedStorage + 520);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 520) = 0;
  }

  v6 = *(DerivedStorage + 16);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 16) = 0;
  }

  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
  }

  result = *(DerivedStorage + 8);
  if (result)
  {
    result = FigSimpleMutexDestroy();
    *(DerivedStorage + 8) = 0;
  }

  return result;
}

__CFString *FigIcyManifoldCopyDebugDescription()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"\tFigIcyManifold :");
  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  return Mutable;
}

uint64_t FigIcyManifoldCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  if (*(DerivedStorage + 32))
  {
    FigIcyManifoldCopyProperty(&v13);
    v10 = v13;
    goto LABEL_12;
  }

  if (CFEqual(a2, @"FMFD_ParserState"))
  {
    valuePtr = 0;
    if (*(DerivedStorage + 39))
    {
      if (*(DerivedStorage + 120))
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }

      valuePtr = v8;
    }

    v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  }

  else
  {
    if (!CFEqual(a2, @"FMFD_Type"))
    {
      v10 = 4294954512;
      goto LABEL_12;
    }

    v9 = CFStringCreateWithCString(a3, "AAC", 0x8000100u);
  }

  v10 = 0;
  *a4 = v9;
LABEL_12:
  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t FigIcyManifoldSetProperty(uint64_t a1, const void *a2, const void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  if (!CFEqual(a2, @"FMFD_HintForStartTime"))
  {
    value_low = 4294954512;
    goto LABEL_7;
  }

  if (!a3 || (v6 = CFGetTypeID(a3), v6 != CFDictionaryGetTypeID()))
  {
    FigIcyManifoldSetProperty(&v12);
LABEL_10:
    value_low = LODWORD(v12.value);
    goto LABEL_7;
  }

  CMTimeMakeFromDictionary(&v12, a3);
  value = v12.value;
  flags = v12.flags;
  timescale = v12.timescale;
  if ((v12.flags & 0x1D) != 1)
  {
    FigIcyManifoldSetProperty(&v12);
    goto LABEL_10;
  }

  value_low = 0;
  epoch = v12.epoch;
  *(DerivedStorage + 576) = value;
  *(DerivedStorage + 584) = timescale;
  *(DerivedStorage + 588) = flags;
  *(DerivedStorage + 592) = epoch;
  v10 = MEMORY[0x1E6960C70];
  *(DerivedStorage + 600) = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 616) = *(v10 + 16);
LABEL_7:
  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  return value_low;
}

uint64_t FigIcyManifoldInvalidateGuts(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = v3 + 1;
  if (!*(DerivedStorage + 32))
  {
    *(DerivedStorage + 32) = 1;
    *(DerivedStorage + 56) = 0;
    if (!*(DerivedStorage + 40))
    {
      fim_EndAllTracks(a1, 4294954511);
      v3 = *(DerivedStorage + 24) - 1;
    }
  }

  *(DerivedStorage + 24) = v3;

  return FigSimpleMutexUnlock();
}

void fim_EndAllTracks(void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    CFRetain(a1);
  }

  v5 = *(DerivedStorage + 104);
  v6 = *(DerivedStorage + 80);
  *(DerivedStorage + 80) = 0;
  if (v5)
  {
    v7 = v5;
    if (a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v7 = 0;
  if (!a2)
  {
LABEL_5:
    FigIcyManifoldFlush(a1);
  }

LABEL_6:
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = *(DerivedStorage + 112);
    v10 = *(DerivedStorage + 24);
    *(DerivedStorage + 24) = 0;
    if (v10 >= 1)
    {
      v11 = v10;
      do
      {
        FigSimpleMutexUnlock();
        --v11;
      }

      while (v11);
    }

    if (v9)
    {
      v7(a1, v6, v9, a2);
    }

    do
    {
      FigSimpleMutexLock();
      v12 = *(DerivedStorage + 24) + 1;
      *(DerivedStorage + 24) = v12;
    }

    while (v12 < v10);
  }

  if (a1)
  {
    CFRelease(a1);
    v13 = CMBaseObjectGetDerivedStorage();
    CFRetain(a1);
  }

  else
  {
    v13 = CMBaseObjectGetDerivedStorage();
  }

  v14 = *(v13 + 400);
  *(v13 + 400) = 0;
  v15 = *(v13 + 424);
  if (v15 && v14)
  {
    v16 = *(v13 + 432);
    v17 = *(v13 + 24);
    *(v13 + 24) = 0;
    if (v17 >= 1)
    {
      v18 = v17;
      do
      {
        FigSimpleMutexUnlock();
        --v18;
      }

      while (v18);
    }

    if (v16)
    {
      v15(a1, v14, v16, a2);
    }

    do
    {
      FigSimpleMutexLock();
      v19 = *(v13 + 24) + 1;
      *(v13 + 24) = v19;
    }

    while (v19 < v17);
  }

  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t FigIcyManifoldFlush(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  if (*(DerivedStorage + 32))
  {
    FigIcyManifoldFlush(&v11);
LABEL_24:
    v9 = v11;
    goto LABEL_18;
  }

  if (*(DerivedStorage + 36))
  {
    FigIcyManifoldFlush(&v11);
    goto LABEL_24;
  }

  v3 = CMBaseObjectGetDerivedStorage();
  v4 = v3;
  v11 = 0;
  v5 = *(v3 + 568);
  if (v5)
  {
    if (*(v3 + 276))
    {
      v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v6 || v6(v5, *MEMORY[0x1E6961118], *MEMORY[0x1E695E480], &v11))
      {
        goto LABEL_20;
      }

      v7 = v11;
    }

    else
    {
      v7 = CFRetain(*MEMORY[0x1E695E4D0]);
      v11 = v7;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v7 != *MEMORY[0x1E695E4D0])
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  FigIcyManifoldFlush(v4, a1);
LABEL_20:
  v7 = v11;
  if (v11)
  {
LABEL_12:
    CFRelease(v7);
  }

LABEL_13:
  if (*(DerivedStorage + 39))
  {
    v8 = *(DerivedStorage + 152);
    if (v8)
    {
      if (*(DerivedStorage + 120))
      {
        AudioFileStreamParseBytes(v8, 0, 0, 0);
      }
    }
  }

  v9 = 0;
  *(DerivedStorage + 37) = 1;
LABEL_18:
  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  return v9;
}

uint64_t fim_emitSampleApplier(opaqueCMSampleBuffer *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = DerivedStorage;
  if (*(DerivedStorage + 96))
  {
    v6 = *(DerivedStorage + 96);
  }

  else
  {
    v6 = 0;
  }

  result = fim_MakePushSampleBufferCallback(a2, DerivedStorage, *(DerivedStorage + 80), v6, *(DerivedStorage + 112), a1);
  if (result)
  {
    *(v5 + 44) = result;
  }

  return result;
}

void fim_DestroyMetaTrack(void *a1)
{
  FigFormatDescriptionRelease();
  a1[7] = 0;
  v2 = a1[5];
  if (v2)
  {
    CFRelease(v2);
    a1[5] = 0;
  }

  v4 = (a1 + 8);
  v3 = a1[8];
  if (v3)
  {
    do
    {
      v5 = *v3;
      *v4 = *v3;
      if (!v5)
      {
        a1[9] = v4;
      }

      v6 = v3[1];
      if (v6)
      {
        CFRelease(v6);
      }

      free(v3);
      v3 = *v4;
    }

    while (*v4);
  }
}

void fim_DestroyAudioStream(uint64_t a1)
{
  if (*(a1 + 40))
  {
    FigFormatDescriptionRelease();
    *(a1 + 40) = 0;
  }

  v2 = *(a1 + 72);
  if (v2)
  {
    AudioFileStreamClose(v2);
    *(a1 + 72) = 0;
  }

  free(*(a1 + 224));
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 280) = 0;
  v3 = *(a1 + 304);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 304) = 0;
  }

  v4 = *(a1 + 288);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 288) = 0;
  }

  *(a1 + 296) = 0;
  v5 = *(a1 + 312);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 312) = 0;
  }
}

uint64_t FigIcyManifoldNoteStreamEnd(void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CFRetain(a1);
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  if (*(DerivedStorage + 32))
  {
    FigIcyManifoldNoteStreamEnd(&v7);
    v5 = v7;
  }

  else
  {
    *(DerivedStorage + 37) = 1;
    fim_EndAllTracks(a1, a2);
    v5 = 0;
  }

  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  CFRelease(a1);
  return v5;
}

uint64_t FigIcyManifoldCopyCurrentFormatDescriptionForTrack(uint64_t a1, int a2, uint64_t *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  ++*(DerivedStorage + 24);
  if (*(DerivedStorage + 32))
  {
    FigIcyManifoldCopyCurrentFormatDescriptionForTrack(&v8);
    v6 = v8;
    goto LABEL_10;
  }

  if (!a2)
  {
    goto LABEL_9;
  }

  if (*(DerivedStorage + 80) == a2)
  {
    if (!*(DerivedStorage + 120))
    {
LABEL_9:
      fig_log_get_emitter();
      v6 = FigSignalErrorAtGM();
      goto LABEL_10;
    }
  }

  else if (*(DerivedStorage + 400) != a2 || !*(DerivedStorage + 456))
  {
    goto LABEL_9;
  }

  v6 = 0;
  *a3 = FigFormatDescriptionRetain();
LABEL_10:
  --*(DerivedStorage + 24);
  FigSimpleMutexUnlock();
  return v6;
}

uint64_t fim_ReannounceTrack(uint64_t a1, uint64_t a2, const opaqueCMFormatDescription *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(DerivedStorage + 72);
  v10 = *(DerivedStorage + 24);
  *(DerivedStorage + 24) = 0;
  if (v10 >= 1)
  {
    v11 = v10;
    do
    {
      FigSimpleMutexUnlock();
      --v11;
    }

    while (v11);
  }

  v12 = *(DerivedStorage + 56);
  MediaType = CMFormatDescriptionGetMediaType(a3);
  v14 = v12(a1, v9, MediaType, a2);
  do
  {
    FigSimpleMutexLock();
    v15 = *(DerivedStorage + 24) + 1;
    *(DerivedStorage + 24) = v15;
  }

  while (v15 < v10);
  if (v14)
  {
    return v14;
  }

  if (*(DerivedStorage + 32) || *(DerivedStorage + 37))
  {
    return 4294951251;
  }

  return fim_MakeFormatDescriptionCallback(a1, DerivedStorage, a2, a4, v9, a3, 0);
}

uint64_t fim_PushMetaData(uint64_t a1, OpaqueCMBlockBuffer *a2, FourCharCode a3)
{
  v36 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v34 = 0;
  sampleSizeArray = 0;
  if (a3 != 1768174368)
  {
    goto LABEL_74;
  }

  returnedPointerOut.value = 0;
  v7 = CMBlockBufferAccessDataBytes(a2, 0xAuLL, 4uLL, temporaryBlock, &returnedPointerOut);
  if (v7)
  {
    goto LABEL_68;
  }

  if (strncasecmp(returnedPointerOut.value, "PRIV", 4uLL) || CMBlockBufferAccessDataBytes(a2, 0x14uLL, 0x2DuLL, &time1, &returnedPointerOut) || strcmp("com.apple.streaming.transportStreamTimestamp", returnedPointerOut.value) || (destination = 0, CMBlockBufferCopyDataBytes(a2, 0x41uLL, 8uLL, &destination)))
  {
LABEL_74:
    if (*(DerivedStorage + 120))
    {
      v8 = CMBaseObjectGetDerivedStorage();
      v9 = v8;
      if (a3 == 1768126752 || a3 == 1886155636 || a3 == 1768174368)
      {
        v10 = *(v8 + 452);
        v11 = *(v8 + 456);
        if (v10 == a3)
        {
          if (v11)
          {
            goto LABEL_42;
          }
        }

        else if (v11)
        {
          CFRelease(v11);
          *(v9 + 456) = 0;
        }

        v7 = CMFormatDescriptionCreate(*v9, 0x6D657461u, a3, 0, (v9 + 456));
        if (!v7)
        {
          if (!*(v9 + 456))
          {
            fim_PushMetaData(&time1);
            value_low = LODWORD(time1.duration.value);
            if (LODWORD(time1.duration.value))
            {
              goto LABEL_57;
            }

LABEL_45:
            v21 = *(v9 + 456);
            if (!v21)
            {
              goto LABEL_57;
            }

            if (!*(DerivedStorage + 416))
            {
              value_low = 0;
              goto LABEL_57;
            }

            fim_GetCurrentAudioTime(DerivedStorage + 80, &time1.duration);
            timescale = time1.duration;
            if (*(DerivedStorage + 492))
            {
              time1.duration = timescale;
              time2 = *(DerivedStorage + 480);
              if (CMTimeCompare(&time1.duration, &time2) <= 0)
              {
                timescale = *(DerivedStorage + 480);
              }
            }

            fim_AdjustPTS(DerivedStorage, &timescale);
            time1.decodeTimeStamp = **&MEMORY[0x1E6960C70];
            time1.presentationTimeStamp = timescale;
            CMTimeMake(&time1.duration, 1, timescale.timescale);
            sampleSizeArray = CMBlockBufferGetDataLength(a2);
            v7 = CMSampleBufferCreate(*DerivedStorage, a2, 1u, 0, 0, v21, 1, 1, &time1, 1, &sampleSizeArray, &v34);
            if (!v7)
            {
              lhs = timescale;
              returnedPointerOut = time1.duration;
              CMTimeAdd(&time2, &lhs, &returnedPointerOut);
              *(DerivedStorage + 480) = time2;
              if (*(DerivedStorage + 416))
              {
                v22 = *(DerivedStorage + 416);
              }

              else
              {
                v22 = 0;
              }

              PushSampleBufferCallback = fim_MakePushSampleBufferCallback(a1, DerivedStorage, *(DerivedStorage + 400), v22, *(DerivedStorage + 432), v34);
              value_low = PushSampleBufferCallback;
              if (PushSampleBufferCallback)
              {
                *(DerivedStorage + 44) = PushSampleBufferCallback;
              }

              goto LABEL_57;
            }

            goto LABEL_68;
          }

          if (*(v9 + 452) != a3)
          {
            *(v9 + 452) = a3;
            v14 = *(v9 + 56);
            if (v14)
            {
              v15 = *(v9 + 400);
              if (v15)
              {
                goto LABEL_40;
              }

              v16 = 101;
              *(v9 + 400) = 101;
              v17 = *(v9 + 24);
              *(v9 + 24) = 0;
              if (v17 >= 1)
              {
                v18 = v17;
                do
                {
                  FigSimpleMutexUnlock();
                  --v18;
                }

                while (v18);
                v14 = *(v9 + 56);
                v16 = *(v9 + 400);
              }

              value_low = v14(a1, *(v9 + 72), 1835365473, v16);
              do
              {
                FigSimpleMutexLock();
                v19 = *(v9 + 24) + 1;
                *(v9 + 24) = v19;
              }

              while (v19 < v17);
              if (value_low)
              {
                goto LABEL_57;
              }

              if (!*(v9 + 32) && !*(v9 + 37))
              {
                v15 = *(v9 + 400);
LABEL_40:
                if (*(v9 + 408))
                {
                  v20 = *(v9 + 408);
                }

                else
                {
                  v20 = 0;
                }

                value_low = fim_MakeFormatDescriptionCallback(a1, v9, v15, v20, *(v9 + 432), *(v9 + 456), 0);
                if (value_low)
                {
                  goto LABEL_57;
                }

                goto LABEL_45;
              }

              value_low = 4294951251;
LABEL_57:
              if (v34)
              {
                CFRelease(v34);
              }

              return value_low;
            }
          }

LABEL_42:
          value_low = 0;
          goto LABEL_45;
        }

LABEL_68:
        value_low = v7;
        goto LABEL_57;
      }
    }

    else if (a3 == 1768126752 || a3 == 1886155636 || a3 == 1768174368)
    {
      v12 = *(DerivedStorage + 440);
      *(DerivedStorage + 440) = a2;
      if (a2)
      {
        CFRetain(a2);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      value_low = 0;
      *(DerivedStorage + 448) = a3;
      goto LABEL_57;
    }

    value_low = 4294954516;
    goto LABEL_57;
  }

  v25 = bswap64(destination & 0xFFFFFFFF01000000);
  destination = v25;
  if (*(DerivedStorage + 273))
  {
    time2 = *(DerivedStorage + 280);
    CMTimeMake(&lhs, *(DerivedStorage + 136), *(DerivedStorage + 192));
    CMTimeAdd(&timescale, &time2, &lhs);
    *&lhs.value = *&timescale.timescale;
    time2 = timescale;
    CMTimeConvertScale(&timescale, &time2, 90000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v26 = (destination - timescale.value) | 0xFFFFFFFE00000000;
    if (((destination - timescale.value) & 0x100000000) == 0)
    {
      v26 = (destination - LODWORD(timescale.value));
    }

    if (v26 - 3 <= 0xFFFFFFFFFFFFFFFALL)
    {
      CMTimeMake(&timescale, v26 + timescale.value, 90000);
      *(DerivedStorage + 280) = timescale;
      *(DerivedStorage + 136) = 0;
      *(DerivedStorage + 274) = 1;
    }
  }

  else if (!*(DerivedStorage + 136))
  {
    *(DerivedStorage + 273) = 1;
    CMTimeMake(&timescale, v25, 90000);
    *(DerivedStorage + 280) = timescale;
  }

  return 0;
}

double fim_GetCurrentAudioTime@<D0>(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  if (*(a1 + 40))
  {
    CMTimeMake(a2, *(a1 + 56), *(a1 + 112));
  }

  else
  {
    v5 = MEMORY[0x1E6960CC0];
    v4 = *MEMORY[0x1E6960CC0];
    *&a2->value = *MEMORY[0x1E6960CC0];
    a2->epoch = *(v5 + 16);
  }

  if (*(a1 + 212))
  {
    lhs = *a2;
    v7 = *(a1 + 200);
    CMTimeAdd(&v9, &lhs, &v7);
    *&v4 = v9.value;
    *a2 = v9;
  }

  return *&v4;
}

__n128 fim_AdjustPTS(uint64_t a1, CMTime *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = (a1 + 576);
  if ((*(a1 + 588) & 0x1D) != 1)
  {
    v5 = MEMORY[0x1E6960CC0];
    result = *MEMORY[0x1E6960CC0];
    *v4 = *MEMORY[0x1E6960CC0];
    *(a1 + 592) = *(v5 + 16);
  }

  if (a2)
  {
    if ((a2->flags & 0x1D) == 1)
    {
      if ((v17 = *a2, *&time1.value = *v4, time1.epoch = *(a1 + 592), FigManifoldAdjustTimestampAndUpdateRefTime(&time1, &v17, v4), value = a2->value, flags = a2->flags, timescale = a2->timescale, epoch = a2->epoch, v22 = v17.value, v9 = v17.flags, v23 = v17.timescale, v10 = v17.epoch, (flags & 0x1F) != 3) && (v17.flags & 0x1F) != 3 || (memset(&time1, 0, sizeof(time1)), v11 = a2->value, rhs.epoch = v17.epoch, lhs.value = v11, lhs.timescale = a2->timescale, lhs.flags = flags, lhs.epoch = epoch, *&rhs.value = *&v17.value, CMTimeSubtract(&time, &lhs, &rhs), CMTimeAbsoluteValue(&time1, &time), time = time1, CMTimeMake(&lhs, 1, 1000000000), CMTimeCompare(&time, &lhs) > 0))
      {
        time1.value = value;
        time1.timescale = timescale;
        time1.flags = flags;
        time1.epoch = epoch;
        time.value = v22;
        time.timescale = v23;
        time.flags = v9;
        time.epoch = v10;
        if (CMTimeCompare(&time1, &time))
        {
          result.n128_u64[0] = v17.value;
          *a2 = v17;
        }
      }
    }

    v12 = (a1 + 600);
    if ((*(a1 + 612) & 0x1D) != 1)
    {
      v13 = MEMORY[0x1E6960CC0];
      v14 = *MEMORY[0x1E6960CC0];
      *v12 = *MEMORY[0x1E6960CC0];
      v15 = *(v13 + 16);
      *(a1 + 616) = v15;
      time1 = *a2;
      *&time.value = v14;
      time.epoch = v15;
      if (CMTimeCompare(&time1, &time) < 0)
      {
        CMTimeMake(&time1, 0x200000000, 90000);
        result.n128_u64[0] = time1.value;
        *v12 = *&time1.value;
        *(a1 + 616) = time1.epoch;
      }
    }

    if ((a2->flags & 0x1D) == 1)
    {
      time = *a2;
      *&lhs.value = *v12;
      lhs.epoch = *(a1 + 616);
      CMTimeAdd(&time1, &time, &lhs);
      result.n128_u64[0] = time1.value;
      *a2 = time1;
    }
  }

  else if ((*(a1 + 612) & 0x1D) != 1)
  {
    v16 = MEMORY[0x1E6960CC0];
    result = *MEMORY[0x1E6960CC0];
    *(a1 + 600) = *MEMORY[0x1E6960CC0];
    *(a1 + 616) = *(v16 + 16);
  }

  return result;
}

void OUTLINED_FUNCTION_8_4()
{
  *(v0 + 264) = 0;
  *(v0 + 248) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;

  fim_DestroyMetaTrack((v0 + 400));
}

uint64_t OUTLINED_FUNCTION_12_4()
{
  --*(v0 + 24);

  return FigSimpleMutexUnlock();
}

uint64_t FigStreamingLiveServerClockCreate(uint64_t a1, uint64_t a2, CFTypeRef *a3)
{
  cf = 0;
  if (a3)
  {
    CMClockGetHostTimeClock();
    CMTimeMake(&v11, 0, 1);
    TimeCallback = FigDerivedClockCreateWithGetTimeCallback();
    if (TimeCallback)
    {
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      DerivedStorage = FigDerivedClockGetDerivedStorage();
      *DerivedStorage = 0x3FF0000000000000;
      HostTimeClock = CMClockGetHostTimeClock();
      CMClockGetTime(&v11, HostTimeClock);
      v8 = *&v11.value;
      epoch = v11.epoch;
      *(DerivedStorage + 24) = v11.epoch;
      *(DerivedStorage + 8) = v8;
      *(DerivedStorage + 32) = *(DerivedStorage + 8);
      *(DerivedStorage + 48) = epoch;
      *(DerivedStorage + 56) = a2;
      *(DerivedStorage + 64) = FigReentrantMutexCreate();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      TimeCallback = 0;
      *a3 = cf;
    }
  }

  else
  {
    FigStreamingLiveServerClockCreate_cold_1(&v11);
    return LODWORD(v11.value);
  }

  return TimeCallback;
}

uint64_t fslscHandleRateDelta(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = 0.0;
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  memset(&v12, 0, sizeof(v12));
  memset(&v11, 0, sizeof(v11));
  FigSimpleMutexLock();
  if (a5)
  {
    fslscGetAnchorTime(a2, &v12, &v11);
    if (FigCFDictionaryGetDoubleIfPresent())
    {
      v8 = v13;
    }

    else
    {
      if (!FigCFDictionaryGetDoubleIfPresent())
      {
LABEL_7:
        v9 = *&v12.value;
        *(DerivedStorage + 24) = v12.epoch;
        *(DerivedStorage + 8) = v9;
        *(DerivedStorage + 32) = v11;
        return FigSimpleMutexUnlock();
      }

      v8 = v13 + *DerivedStorage;
    }

    *DerivedStorage = v8;
    goto LABEL_7;
  }

  return FigSimpleMutexUnlock();
}

CFStringRef fslscCopyDebugDesc(const void *a1)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v3, 0, @"LowLatencyServerClock(minder = %p, Rate = %f)", DerivedStorage[7], *DerivedStorage);
}

uint64_t fslscFinalize()
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  result = *(DerivedStorage + 64);
  if (result)
  {

    return FigSimpleMutexDestroy();
  }

  return result;
}

BOOL fslscMightDrift()
{
  if (FigDerivedClockVerifyCallbacksMatch() && FigDerivedClockVerifyCallbacksMatch() && (DerivedStorage = FigDerivedClockGetDerivedStorage(), v1 = FigDerivedClockGetDerivedStorage(), (v2 = *(DerivedStorage + 56)) != 0))
  {
    return v2 != *(v1 + 56);
  }

  else
  {
    return 1;
  }
}

double fslscGetRate()
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  FigSimpleMutexLock();
  v1 = *DerivedStorage;
  FigSimpleMutexUnlock();
  return v1;
}

uint64_t fslscGetAnchorTime(uint64_t a1, CMTime *a2, CMTime *a3)
{
  DerivedStorage = FigDerivedClockGetDerivedStorage();
  FigSimpleMutexLock();
  memset(&v12, 0, sizeof(v12));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v12, HostTimeClock);
  if (a2)
  {
    lhs = v12;
    v9 = *(DerivedStorage + 32);
    CMTimeSubtract(&time, &lhs, &v9);
    CMTimeMultiplyByFloat64(&lhs, &time, *DerivedStorage);
    v7 = *(DerivedStorage + 8);
    v9.epoch = *(DerivedStorage + 24);
    *&v9.value = v7;
    CMTimeAdd(&time, &v9, &lhs);
    *a2 = time;
  }

  if (a3)
  {
    *a3 = v12;
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t RegisterFigContentKeySessionType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigContentKeySessionGetTypeID()
{
  MEMORY[0x19A8D3660](&FigContentKeySessionGetClassID_sRegisterFigContentKeySessionTypeOnce, RegisterFigContentKeySessionType);

  return CMBaseClassGetCFTypeID();
}

__CFString *fcks_copyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*DerivedStorage)
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigContentKeySession %p retainCount: %ld%s allocator: %p, ", a1, v5, v6, v7);
  CFStringAppendFormat(Mutable, 0, @">");
  return Mutable;
}

uint64_t fcks_copyProperty(const void *a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    fcks_copyProperty_cold_4(&cf);
    return cf;
  }

  if (!a4)
  {
    fcks_copyProperty_cold_3(&cf);
    return cf;
  }

  v9 = DerivedStorage;
  *a4 = 0;
  FigSimpleMutexLock();
  if (*v9)
  {
    fcks_copyProperty_cold_1(&cf);
    v10 = cf;
    goto LABEL_38;
  }

  if (CFEqual(*MEMORY[0x1E6960F90], a2))
  {
    v10 = *(v9 + 16);
    if (!v10)
    {
      goto LABEL_38;
    }

    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v11)
    {
      v10 = 4294954514;
      goto LABEL_38;
    }

    v12 = v11(v10, @"SessionID", a3, a4);
    goto LABEL_28;
  }

  if (CFEqual(*MEMORY[0x1E6960F88], a2))
  {
    if (!*(v9 + 16))
    {
      goto LABEL_34;
    }

    goto LABEL_26;
  }

  if (CFEqual(@"kFigCKSPropertyKey_SecureStopManager", a2))
  {
    v12 = fcks_ensureSecureStopManager(a1);
    if (!v12)
    {
      v26 = *(v9 + 168);
      if (v26)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    goto LABEL_28;
  }

  if (!CFEqual(@"kFigCKSPropertyKey_ShouldProvideFPSSecureStop", a2))
  {
    v12 = FigSignalErrorAtGM();
LABEL_28:
    v10 = v12;
    goto LABEL_38;
  }

  v13 = CMBaseObjectGetDerivedStorage();
  v14 = *(v13 + 152);
  LOBYTE(v15) = v14 != 0;
  v16 = *(v13 + 8);
  if (!v16 || (Count = CFArrayGetCount(v16), v14) || (v18 = Count, Count < 1))
  {
LABEL_25:
    if ((v15 & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_26:
    v25 = MEMORY[0x1E695E4D0];
    goto LABEL_35;
  }

  v19 = *MEMORY[0x1E695E480];
  v20 = *MEMORY[0x1E695E4D0];
  v21 = 1;
  while (1)
  {
    CFArrayGetValueAtIndex(*(v13 + 8), v21 - 1);
    v15 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (!v15)
    {
      goto LABEL_23;
    }

    cf = 0;
    v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v22)
    {
      break;
    }

    v23 = v22(v15, @"kFigCKSPropertyKey_ShouldProvideFPSSecureStop", v19, &cf);
    CFRelease(v15);
    if (v23)
    {
      goto LABEL_33;
    }

    LOBYTE(v15) = v20 == cf;
    if (cf)
    {
      CFRelease(cf);
    }

LABEL_23:
    if ((v15 & 1) == 0 && v21++ < v18)
    {
      continue;
    }

    goto LABEL_25;
  }

  CFRelease(v15);
LABEL_33:
  fcks_copyProperty_cold_2();
LABEL_34:
  v25 = MEMORY[0x1E695E4C0];
LABEL_35:
  v26 = *v25;
LABEL_36:
  v26 = CFRetain(v26);
LABEL_37:
  v10 = 0;
  *a4 = v26;
LABEL_38:
  FigSimpleMutexUnlock();
  return v10;
}

uint64_t fcks_setProperty(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    fcks_setProperty_cold_9(&v27);
    return v27;
  }

  if (!a3)
  {
    fcks_setProperty_cold_8(&v27);
    return v27;
  }

  v7 = DerivedStorage;
  FigSimpleMutexLock();
  if (*v7)
  {
    fcks_setProperty_cold_1(&v27);
    goto LABEL_34;
  }

  if (CFEqual(a2, *MEMORY[0x1E6960F80]))
  {
    v8 = CFGetTypeID(a3);
    if (v8 == CFDataGetTypeID())
    {
      if (FigCFEqual())
      {
        goto LABEL_10;
      }

      v9 = *(v7 + 48);
      *(v7 + 48) = a3;
      CFRetain(a3);
      if (v9)
      {
        CFRelease(v9);
      }

      fcks_resetSessionGuts(a1);
      v10 = *(CMBaseObjectGetDerivedStorage() + 8);
      if (!v10)
      {
        goto LABEL_10;
      }

      Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v10);
      if (Copy)
      {
        fcks_setProperty_cold_3(Copy, a1, a3, &v27);
      }

      else
      {
        fcks_setProperty_cold_4(&v27);
      }
    }

    else
    {
      fcks_setProperty_cold_2(&v27);
    }

LABEL_34:
    v11 = v27;
    goto LABEL_11;
  }

  if (CFEqual(a2, @"kFigCKSPropertyKey_SendToNero"))
  {
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(a3))
    {
      CFDictionaryGetValue(a3, @"kFigCKSPropertyKeySendToNero_Visuals");
      v14 = FigCFEqual();
      if (v14 != *(v7 + 56))
      {
        *(v7 + 56) = v14;
        if (v14)
        {
          Value = CFDictionaryGetValue(a3, @"kFigCKSPropertyKeySendToNero_NeroTransport");
          if (Value)
          {
            v16 = *(v7 + 144);
            *(v7 + 144) = Value;
            CFRetain(Value);
            if (v16)
            {
              CFRelease(v16);
            }
          }
        }

        else
        {
          v26 = *(v7 + 144);
          if (v26)
          {
            CFRelease(v26);
            *(v7 + 144) = 0;
          }
        }

        fcks_resetSessionGuts(a1);
      }
    }

    goto LABEL_10;
  }

  if (!CFEqual(a2, *MEMORY[0x1E6960F78]))
  {
    if (CFEqual(a2, *MEMORY[0x1E6960F98]))
    {
      v24 = CFGetTypeID(a3);
      if (v24 == CFBooleanGetTypeID())
      {
        v11 = 0;
        *(v7 + 184) = *MEMORY[0x1E695E4D0] == a3;
        goto LABEL_11;
      }

      fcks_setProperty_cold_7(&v27);
      goto LABEL_34;
    }

    v19 = FigSignalErrorAtGM();
LABEL_40:
    v11 = v19;
    goto LABEL_11;
  }

  v17 = CFGetTypeID(a3);
  if (v17 != CFDataGetTypeID())
  {
    fcks_setProperty_cold_5(&v27);
    goto LABEL_34;
  }

  if (!*(v7 + 160))
  {
    goto LABEL_52;
  }

  if (!FigCFEqual())
  {
    fcks_setProperty_cold_6(&v27);
    goto LABEL_34;
  }

  if (!*(v7 + 160))
  {
LABEL_52:
    *(v7 + 160) = CFRetain(a3);
    if (*(v7 + 152))
    {
      v18 = CMBaseObjectGetDerivedStorage();
      v19 = fcks_ensureSecureStopManager(a1);
      if (!v19)
      {
        v21 = v18[20];
        v20 = v18[21];
        v22 = v18[19];
        v23 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v23)
        {
          v11 = 4294954514;
          goto LABEL_11;
        }

        v19 = v23(v20, v21, v22);
      }

      goto LABEL_40;
    }
  }

LABEL_10:
  v11 = 0;
LABEL_11:
  FigSimpleMutexUnlock();
  return v11;
}

void fcks_freeAllCryptorEntries(const void *a1)
{
  v2 = *(CMBaseObjectGetDerivedStorage() + 128);
  if (v2)
  {
    do
    {
      v3 = *(v2 + 8);
      fcks_freeCryptorEntry(a1, v2);
      v2 = v3;
    }

    while (v3);
  }
}

void fcks_freeCryptorEntry(const void *a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = FigCFWeakReferenceHolderCopyReferencedObject();
  v6 = v5;
  if (a1 && v5)
  {
    fcks_freeCryptorEntry_cold_1();
LABEL_4:
    CFRelease(v6);
    goto LABEL_5;
  }

  if (v5)
  {
    goto LABEL_4;
  }

LABEL_5:
  if (*a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = (DerivedStorage + 136);
  if (v7)
  {
    v9 = (v7 + 16);
  }

  *v9 = v8;
  *v8 = v7;
  v10 = CFGetAllocator(a1);

  CFAllocatorDeallocate(v10, a2);
}

uint64_t fcks_secureStopDidFinalizeRecordCallback(uint64_t a1, uint64_t a2)
{
  VTable = CMBaseObjectGetVTable();
  v5 = *(VTable + 16);
  result = VTable + 16;
  v6 = *(v5 + 56);
  if (v6)
  {

    return v6(a2);
  }

  return result;
}

void fcks_resetSessionGuts(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  fcks_freeAllCryptorEntries(a1);
  v3 = *(DerivedStorage + 16);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 16) = 0;
  }

  v4 = *(DerivedStorage + 24);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 24) = 0;
  }
}

uint64_t fcks_addChildSession(const void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (a2)
  {
    if (a1 != a2)
    {
      v5 = DerivedStorage;
      FigSimpleMutexLock();
      if (*v5)
      {
        fcks_addChildSession_cold_1(v17);
      }

      else
      {
        v6 = fcks_setClientAuditTokenForChildSession(a1, a2, *(v5 + 48));
        if (v6)
        {
          goto LABEL_24;
        }

        v7 = CFGetAllocator(a1);
        v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v8)
        {
          v13 = 4294954514;
          goto LABEL_14;
        }

        v6 = v8(a2, @"kFigCKSPropertyKey_SecureStopManager", v7, &cf);
        if (v6)
        {
LABEL_24:
          v13 = v6;
          goto LABEL_14;
        }

        v9 = *(v5 + 168);
        v10 = cf;
        *(v5 + 168) = cf;
        if (v10)
        {
          CFRetain(v10);
        }

        if (v9)
        {
          CFRelease(v9);
        }

        v11 = FigCFWeakReferenceHolderCreateWithReferencedObject();
        if (v11)
        {
          v12 = v11;
          CFArrayAppendValue(*(v5 + 8), v11);
          CFRelease(v12);
          v13 = 0;
LABEL_14:
          FigSimpleMutexUnlock();
          goto LABEL_15;
        }

        fcks_addChildSession_cold_2(v17);
      }

      v13 = v17[0];
      goto LABEL_14;
    }

    fcks_addChildSession_cold_3(v17);
  }

  else
  {
    fcks_addChildSession_cold_4(v17);
  }

  v13 = v17[0];
LABEL_15:
  if (dword_1EAF16B90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v13;
}

uint64_t fcks_copyCryptor(const void *a1, const __CFAllocator *a2, const __CFDictionary *a3, int a4, CFTypeRef *a5)
{
  cf[16] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a3)
  {
    fcks_copyCryptor_cold_12(cf);
    return LODWORD(cf[0]);
  }

  if (!a5)
  {
    fcks_copyCryptor_cold_11(cf);
    return LODWORD(cf[0]);
  }

  v10 = DerivedStorage;
  v93 = a4;
  *a5 = 0;
  v11 = *MEMORY[0x1E6960F58];
  v12 = CFDictionaryContainsKey(a3, *MEMORY[0x1E6960F58]);
  v13 = MEMORY[0x1E6960F40];
  v14 = MEMORY[0x1E6960F48];
  v95 = a5;
  if (v12 || CFDictionaryContainsKey(a3, *MEMORY[0x1E6960F48]))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(a2, 0, a3);
    if (MutableCopy)
    {
      v16 = MutableCopy;
      if (CFDictionaryContainsKey(MutableCopy, *v13))
      {
        v17 = 0;
        goto LABEL_15;
      }

      Value = CFDictionaryGetValue(a3, v11);
      v19 = CFDictionaryGetValue(a3, *v14);
      cf[0] = 0;
      if (v19)
      {
        v20 = PKDCopyDecryptFormatTypeFromFormatDescription(v19, cf);
        if (v20)
        {
LABEL_179:
          v27 = v20;
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          v21 = 0;
          goto LABEL_29;
        }
      }

      else if (Value)
      {
        v20 = PKDCopyDecryptFormatTypeFromSinfArray(Value, cf);
        if (v20)
        {
          goto LABEL_179;
        }
      }

      v17 = cf[0];
      FigCFDictionarySetValue();
LABEL_15:
      if (!CFDictionaryContainsKey(a3, v11))
      {
        v24 = 0;
        v26 = 0;
LABEL_22:
        CFDictionaryRemoveValue(v16, v11);
        CFDictionaryRemoveValue(v16, *v14);
        v27 = 0;
        v21 = v16;
        v16 = 0;
        if (!v17)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

      v22 = CFDictionaryGetValue(a3, v11);
      cf[0] = 0;
      if (v22)
      {
        v23 = PKDCopyDefaultKeyIDFromSinfArray(v22, cf);
        v24 = cf[0];
        if (v23)
        {
          v27 = v23;
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          v21 = 0;
          v24 = 0;
          goto LABEL_165;
        }

        cf[0] = 0;
        if (v24)
        {
          Base64EncodedStringFromCFData = FigCreateBase64EncodedStringFromCFData();
          v26 = cf[0];
          if (!Base64EncodedStringFromCFData)
          {
LABEL_20:
            FigCFDictionarySetValue();
            goto LABEL_22;
          }

          v27 = Base64EncodedStringFromCFData;
          if (cf[0])
          {
            CFRelease(cf[0]);
          }

          v21 = 0;
LABEL_165:
          v26 = 0;
          if (!v17)
          {
LABEL_24:
            if (v24)
            {
              CFRelease(v24);
            }

            if (v26)
            {
              CFRelease(v26);
            }

            a5 = v95;
            if (!v16)
            {
LABEL_30:
              if (v27)
              {
                goto LABEL_146;
              }

              goto LABEL_31;
            }

LABEL_29:
            CFRelease(v16);
            goto LABEL_30;
          }

LABEL_23:
          CFRelease(v17);
          goto LABEL_24;
        }
      }

      else
      {
        v24 = 0;
      }

      v26 = 0;
      goto LABEL_20;
    }

    fcks_copyCryptor_cold_1(cf);
    v21 = 0;
    v27 = LODWORD(cf[0]);
    if (LODWORD(cf[0]))
    {
      goto LABEL_146;
    }
  }

  else
  {
    v21 = CFRetain(a3);
  }

LABEL_31:
  FigSimpleMutexLock();
  if (*v10)
  {
    fcks_copyCryptor_cold_2(cf);
    v27 = LODWORD(cf[0]);
    goto LABEL_154;
  }

  v28 = CMBaseObjectGetDerivedStorage();
  *v100 = 0;
  LOBYTE(v97) = 0;
  *a5 = 0;
  FigCFDictionaryGetBooleanIfPresent();
  if (v97)
  {
    if (*(v28 + 24))
    {
      v29 = FigCFWeakReferenceHolderCopyReferencedObject();
      *v100 = v29;
      if (v29)
      {
        v30 = v29;
        v27 = 0;
        goto LABEL_73;
      }
    }
  }

  v31 = *(v28 + 8);
  if (!v31)
  {
    v27 = 0;
LABEL_58:
    v42 = CMBaseObjectGetDerivedStorage();
    cf[0] = 0;
    v43 = *(v42 + 128);
    if (v43)
    {
      v44 = *MEMORY[0x1E69610A8];
      v45 = *MEMORY[0x1E695E480];
      do
      {
        while (1)
        {
          v46 = v43;
          v43 = *(v43 + 8);
          v47 = FigCFWeakReferenceHolderCopyReferencedObject();
          if (v47)
          {
            break;
          }

          fcks_freeCryptorEntry(a1, v46);
          if (!v43)
          {
            goto LABEL_69;
          }
        }

        v30 = v47;
        v48 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v48 && !v48(v30, v44, v45, cf) && FigCFEqual())
        {
          goto LABEL_70;
        }

        CFRelease(v30);
        if (cf[0])
        {
          CFRelease(cf[0]);
          cf[0] = 0;
        }
      }

      while (v43);
LABEL_69:
      v30 = 0;
LABEL_70:
      a5 = v95;
      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    else
    {
      v30 = 0;
    }

LABEL_73:
    *a5 = v30;
    if (v27)
    {
      goto LABEL_154;
    }

    goto LABEL_74;
  }

  Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], v31);
  if (!Copy)
  {
    fcks_copyCryptor_cold_4(cf);
    goto LABEL_170;
  }

  v33 = Copy;
  FigSimpleMutexUnlock();
  Count = CFArrayGetCount(v33);
  if (Count < 1)
  {
    v27 = 0;
    goto LABEL_56;
  }

  v35 = Count;
  v36 = 1;
  while (1)
  {
    CFArrayGetValueAtIndex(v33, v36 - 1);
    v37 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v37)
    {
      break;
    }

LABEL_47:
    if (*v100)
    {
      v41 = 0;
    }

    else
    {
      v41 = v36 < v35;
    }

    ++v36;
    if (!v41)
    {
      v27 = 0;
      goto LABEL_55;
    }
  }

  v38 = v37;
  v39 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (v39)
  {
    v27 = v39(v38, 0, v21, 0, v100);
    CFRelease(v38);
    if (v27)
    {
      v40 = v27 == -17293;
    }

    else
    {
      v40 = 1;
    }

    if (!v40)
    {
      goto LABEL_55;
    }

    goto LABEL_47;
  }

  CFRelease(v38);
  v27 = 4294954514;
LABEL_55:
  a5 = v95;
LABEL_56:
  CFRelease(v33);
  FigSimpleMutexLock();
  if (!*v28)
  {
    v30 = *v100;
    if (!*v100)
    {
      goto LABEL_58;
    }

    goto LABEL_73;
  }

  fcks_copyCryptor_cold_3(cf);
LABEL_170:
  v27 = LODWORD(cf[0]);
  if (LODWORD(cf[0]))
  {
LABEL_154:
    FigSimpleMutexUnlock();
    goto LABEL_146;
  }

LABEL_74:
  if (v93 && !*a5)
  {
    *type = 1;
    v98 = 0;
    v97 = 0;
    v49 = CMBaseObjectGetDerivedStorage();
    v50 = CFDictionaryGetValue(v21, *MEMORY[0x1E6960F50]);
    if (v50)
    {
      v51 = v50;
      v52 = *(v49 + 32);
      if (!v52)
      {
        goto LABEL_80;
      }

      if (CFEqual(v50, v52))
      {
        if (!*(v49 + 32))
        {
LABEL_80:
          *(v49 + 32) = CFRetain(v51);
        }

        v53 = CFDictionaryGetValue(v21, *MEMORY[0x1E6960F40]);
        v54 = v53;
        v55 = *MEMORY[0x1E695E480];
        if (*(v49 + 16))
        {
          v56 = 0;
          goto LABEL_83;
        }

        v94 = v53;
        Mutable = CFDictionaryCreateMutable(v55, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v63 = Mutable;
        if (Mutable)
        {
          v80 = *MEMORY[0x1E695E4C0];
          if (*(v49 + 56))
          {
            v81 = *MEMORY[0x1E695E4C0];
          }

          else
          {
            v81 = *MEMORY[0x1E695E4D0];
          }

          CFDictionarySetValue(Mutable, @"ExternalProtectionMonitorPerCryptor", v81);
          if (!*(v49 + 184))
          {
            CFDictionarySetValue(v63, @"RequiresReencryptionContext", v80);
            if (!*(v49 + 184))
            {
              CFDictionarySetValue(v63, @"RequiresReencryptionContext", v80);
            }
          }

          v82 = FigCPEProtectorCreateForScheme(a2, v51, v63, v49 + 16);
          v56 = v63;
          if (!v82)
          {
            v83 = *(v49 + 16);
            v84 = *(v49 + 144);
            v85 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (!v85)
            {
              v63 = 0;
              v58 = 0;
              goto LABEL_126;
            }

            v82 = v85(v83, @"NeroTransport", v84);
            if (!v82)
            {
              if (dword_1EAF16B90 >= 2)
              {
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              v54 = v94;
LABEL_83:
              v57 = CFDictionaryCreateMutable(v55, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              v58 = v57;
              if (!v57)
              {
                fcks_copyCryptor_cold_8(cf);
                v63 = 0;
                goto LABEL_178;
              }

              if (v54)
              {
                CFDictionarySetValue(v57, @"FormatType", v54);
              }

              v59 = *(v49 + 48);
              if (v59)
              {
                CFDictionarySetValue(v58, @"AuditToken", v59);
              }

              FigCFDictionarySetValueFromKeyInDict();
              FigCFDictionarySetValueFromKeyInDict();
              FigCFDictionarySetValueFromKeyInDict();
              FigCFDictionarySetValueFromKeyInDict();
              FigCFDictionaryGetInt32IfPresent();
              v60 = (CMBaseObjectGetDerivedStorage() + 168);
              if (!*v60)
              {
                v61 = CFGetAllocator(a1);
                v62 = FigSecureStopManagerCopyDefaultRuntimeInstance(v61, v60);
                if (v62)
                {
                  v27 = v62;
                  v63 = 0;
                  goto LABEL_127;
                }
              }

              FigCFDictionarySetValue();
              v63 = CFDictionaryCreateCopy(a2, v21);
              if (!v63)
              {
                fcks_copyCryptor_cold_7(cf);
                goto LABEL_178;
              }

              FigCFDictionarySetValue();
              v64 = *(v49 + 16);
              v65 = *(*(CMBaseObjectGetVTable() + 16) + 104);
              if (v65)
              {
                v66 = v65(v64, a2, *type, v58, &v97);
                if (v66)
                {
                  v27 = v66;
                }

                else
                {
                  FigCFDictionaryGetBooleanIfPresent();
                  if (v98)
                  {
                    v67 = *(v49 + 24);
                    if (v67)
                    {
                      CFRelease(v67);
                    }

                    *(v49 + 24) = FigCFWeakReferenceHolderCreateWithReferencedObject();
                  }

                  v68 = CFGetAllocator(a1);
                  v69 = MEMORY[0x19A8CC720](v68, 24, 0xA0040E93CF5C4, 0);
                  v70 = v69;
                  if (v69)
                  {
                    *v69 = 0;
                    v69[1] = 0;
                    v69[2] = 0;
                    v71 = FigCFWeakReferenceHolderCreateWithReferencedObject();
                    *v70 = v71;
                    if (v71)
                    {
                      v70[1] = 0;
                      v72 = *(v49 + 136);
                      v70[2] = v72;
                      *v72 = v70;
                      *(v49 + 136) = v70 + 1;
                      goto LABEL_100;
                    }

                    v92 = 816;
                  }

                  else
                  {
                    v92 = 811;
                  }

                  if ((fcks_copyCryptor_cold_6(v68, v70, v92, cf) & 1) == 0)
                  {
LABEL_178:
                    v27 = LODWORD(cf[0]);
                    goto LABEL_127;
                  }

LABEL_100:
                  if (!a1 || !v97 || ((CMNotificationCenterGetDefaultLocalCenter(), v73 = FigNotificationCenterAddWeakListener(), !v73) || (v27 = v73, v73 == -12724)) && ((CMNotificationCenterGetDefaultLocalCenter(), v74 = FigNotificationCenterAddWeakListener(), !v74) || (v27 = v74, v74 == -12724)) && ((CMNotificationCenterGetDefaultLocalCenter(), v75 = FigNotificationCenterAddWeakListener(), !v75) || (v27 = v75, v75 == -12724)) && ((CMNotificationCenterGetDefaultLocalCenter(), v76 = FigNotificationCenterAddWeakListener(), !v76) || (v27 = v76, v76 == -12724)))
                  {
                    v27 = 0;
                    *v95 = v97;
                    v97 = 0;
                    goto LABEL_130;
                  }
                }

LABEL_127:
                if (v97)
                {
                  CFRelease(v97);
                }

                if (v58)
                {
LABEL_130:
                  CFRelease(v58);
                }

                if (v56)
                {
                  CFRelease(v56);
                }

                if (v63)
                {
                  CFRelease(v63);
                }

                if (v27)
                {
                  goto LABEL_154;
                }

                PKDLogPrivateData(a3);
                v77 = FigCFCopyCompactDescription();
                if (dword_1EAF16B90)
                {
                  LODWORD(v97) = 0;
                  type[0] = OS_LOG_TYPE_DEFAULT;
                  v87 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v88 = v97;
                  if (os_log_type_enabled(v87, type[0]))
                  {
                    v89 = v88;
                  }

                  else
                  {
                    v89 = v88 & 0xFFFFFFFE;
                  }

                  if (v89)
                  {
                    v90 = *v95;
                    *v100 = 136316162;
                    *&v100[4] = "fcks_copyCryptor";
                    v101 = 2048;
                    v102 = a1;
                    v103 = 2114;
                    v104 = v90;
                    v105 = 2114;
                    v106 = v77;
                    v107 = 1024;
                    v108 = 0;
                    _os_log_send_and_compose_impl();
                  }

LABEL_142:
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                goto LABEL_143;
              }

LABEL_126:
              v27 = 4294954514;
              goto LABEL_127;
            }
          }

          v27 = v82;
          v63 = 0;
          v58 = 0;
          goto LABEL_127;
        }

        fcks_copyCryptor_cold_9(cf);
LABEL_177:
        v56 = 0;
        v58 = 0;
        goto LABEL_178;
      }

      fcks_copyCryptor_cold_5(cf);
    }

    else
    {
      fcks_copyCryptor_cold_10(cf);
    }

    v63 = 0;
    goto LABEL_177;
  }

  PKDLogPrivateData(a3);
  v77 = FigCFCopyCompactDescription();
  if (dword_1EAF16B90)
  {
    LODWORD(v97) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v78 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT);
    goto LABEL_142;
  }

LABEL_143:
  FigSimpleMutexUnlock();
  if (v77)
  {
    CFRelease(v77);
  }

  v27 = 0;
LABEL_146:
  if (v21)
  {
    CFRelease(v21);
  }

  return v27;
}

uint64_t fcks_resetSession(const void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*DerivedStorage)
  {
    fcks_resetSession_cold_1(v6);
    v3 = v6[0];
  }

  else
  {
    fcks_resetSessionGuts(a1);
    v3 = 0;
  }

  FigSimpleMutexUnlock();
  if (dword_1EAF16B90)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v3;
}

uint64_t fcks_invokeKeyResponseErrorCallbackAsync(uint64_t a1, const void *a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  FigSimpleMutexLock();
  if (!*DerivedStorage)
  {
    FigContentKeySessionCallbackContext = fcks_createFigContentKeySessionCallbackContext(DerivedStorage);
    v19 = FigContentKeySessionCallbackContext;
    if (FigContentKeySessionCallbackContext)
    {
      v9 = FigContentKeySessionCallbackContext;
      if (a2)
      {
        v10 = CFRetain(a2);
      }

      else
      {
        v10 = 0;
      }

      *v9 = v10;
      if (a4)
      {
        v11 = CFRetain(a4);
      }

      else
      {
        v11 = 0;
      }

      v9[3] = v11;
      v9[1] = a3;
      dispatch_async_f(*(DerivedStorage + 64), v9, fcks_dispatchKeyResponseErrorCallback);
    }

    for (i = 0; ; ++i)
    {
      Count = *(DerivedStorage + 8);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      CFArrayGetValueAtIndex(*(DerivedStorage + 8), i);
      v14 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v14)
      {
        v15 = v14;
        v16 = *(*(CMBaseObjectGetVTable() + 16) + 32);
        if (!v16)
        {
          CFRelease(v15);
          v17 = 4294954514;
LABEL_19:
          FigSignalErrorAtGM();
          goto LABEL_20;
        }

        v17 = v16(v15, a2, a3, a4);
        CFRelease(v15);
        if (v17)
        {
          goto LABEL_19;
        }
      }
    }

    goto LABEL_22;
  }

  if (fcks_invokeKeyResponseErrorCallbackAsync_cold_1())
  {
LABEL_22:
    v17 = 0;
    goto LABEL_23;
  }

  v17 = v20;
LABEL_20:
  fcks_releaseAndClearFigContentKeySessionCallbackContext(&v19);
LABEL_23:
  FigSimpleMutexUnlock();
  return v17;
}

uint64_t fcks_invokeKeyResponseSuccessfullyProcessedCallbackAsync(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v16 = 0;
  FigSimpleMutexLock();
  if (!*DerivedStorage)
  {
    FigContentKeySessionCallbackContext = fcks_createFigContentKeySessionCallbackContext(DerivedStorage);
    v16 = FigContentKeySessionCallbackContext;
    if (FigContentKeySessionCallbackContext)
    {
      v7 = FigContentKeySessionCallbackContext;
      if (a2)
      {
        v8 = CFRetain(a2);
      }

      else
      {
        v8 = 0;
      }

      *v7 = v8;
      v7[1] = a3;
      dispatch_async_f(*(DerivedStorage + 64), v7, fcks_dispatchKeyResponseSuccessfullyProcessedCallback);
    }

    for (i = 0; ; ++i)
    {
      Count = *(DerivedStorage + 8);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      CFArrayGetValueAtIndex(*(DerivedStorage + 8), i);
      v11 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v11)
      {
        v12 = v11;
        v13 = *(*(CMBaseObjectGetVTable() + 16) + 40);
        if (!v13)
        {
          CFRelease(v12);
          v14 = 4294954514;
LABEL_16:
          FigSignalErrorAtGM();
          goto LABEL_17;
        }

        v14 = v13(v12, a2, a3);
        CFRelease(v12);
        if (v14)
        {
          goto LABEL_16;
        }
      }
    }

    goto LABEL_19;
  }

  if (fcks_invokeKeyResponseSuccessfullyProcessedCallbackAsync_cold_1())
  {
LABEL_19:
    v14 = 0;
    goto LABEL_20;
  }

  v14 = v17;
LABEL_17:
  fcks_releaseAndClearFigContentKeySessionCallbackContext(&v16);
LABEL_20:
  FigSimpleMutexUnlock();
  return v14;
}

uint64_t fcks_invokePersistentKeyUpdatedCallbackAsync(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = 0;
  FigSimpleMutexLock();
  if (!*DerivedStorage)
  {
    FigContentKeySessionCallbackContext = fcks_createFigContentKeySessionCallbackContext(DerivedStorage);
    v17 = FigContentKeySessionCallbackContext;
    if (FigContentKeySessionCallbackContext)
    {
      v7 = FigContentKeySessionCallbackContext;
      if (a2)
      {
        v8 = CFRetain(a2);
      }

      else
      {
        v8 = 0;
      }

      v7[2] = v8;
      if (a3)
      {
        v9 = CFRetain(a3);
      }

      else
      {
        v9 = 0;
      }

      v7[4] = v9;
      dispatch_async_f(*(DerivedStorage + 64), v7, fcks_dispatchPersistentKeyUpdatedCallback);
    }

    for (i = 0; ; ++i)
    {
      Count = *(DerivedStorage + 8);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      CFArrayGetValueAtIndex(*(DerivedStorage + 8), i);
      v12 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v12)
      {
        v13 = v12;
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 48);
        if (!v14)
        {
          CFRelease(v13);
          v15 = 4294954514;
LABEL_19:
          FigSignalErrorAtGM();
          goto LABEL_20;
        }

        v15 = v14(v13, a2, a3);
        CFRelease(v13);
        if (v15)
        {
          goto LABEL_19;
        }
      }
    }

    goto LABEL_22;
  }

  if (fcks_invokePersistentKeyUpdatedCallbackAsync_cold_1())
  {
LABEL_22:
    v15 = 0;
    goto LABEL_23;
  }

  v15 = v18;
LABEL_20:
  fcks_releaseAndClearFigContentKeySessionCallbackContext(&v17);
LABEL_23:
  FigSimpleMutexUnlock();
  return v15;
}

uint64_t fcks_invokeSecureStopDidFinalizeRecordCallbackAsync()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  FigContentKeySessionCallbackContext = fcks_createFigContentKeySessionCallbackContext(DerivedStorage);
  if (FigContentKeySessionCallbackContext)
  {
    dispatch_async_f(*(DerivedStorage + 64), FigContentKeySessionCallbackContext, fcks_dispatchSecureStopDidFinalizeRecordCallback);
  }

  FigSimpleMutexUnlock();
  return 0;
}

uint64_t fcks_invokeDispatchExternalProtectionStateChangedCallbackAsync(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v14 = 0;
  FigSimpleMutexLock();
  if (!*DerivedStorage)
  {
    FigContentKeySessionCallbackContext = fcks_createFigContentKeySessionCallbackContext(DerivedStorage);
    v14 = FigContentKeySessionCallbackContext;
    if (FigContentKeySessionCallbackContext)
    {
      v5 = FigContentKeySessionCallbackContext;
      if (a2)
      {
        v6 = CFRetain(a2);
      }

      else
      {
        v6 = 0;
      }

      *v5 = v6;
      dispatch_async_f(*(DerivedStorage + 64), v5, fcks_dispatchExternalProtectionStateChangedCallback);
    }

    for (i = 0; ; ++i)
    {
      Count = *(DerivedStorage + 8);
      if (Count)
      {
        Count = CFArrayGetCount(Count);
      }

      if (i >= Count)
      {
        break;
      }

      CFArrayGetValueAtIndex(*(DerivedStorage + 8), i);
      v9 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v9)
      {
        v10 = v9;
        v11 = *(CMBaseObjectGetVTable() + 16);
        if (!*(v11 + 56))
        {
          CFRelease(v10);
          v12 = 4294954514;
LABEL_16:
          FigSignalErrorAtGM();
          goto LABEL_17;
        }

        v12 = (*(v11 + 64))(v10, a2);
        CFRelease(v10);
        if (v12)
        {
          goto LABEL_16;
        }
      }
    }

    goto LABEL_19;
  }

  if (fcks_invokeDispatchExternalProtectionStateChangedCallbackAsync_cold_1())
  {
LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  v12 = v15;
LABEL_17:
  fcks_releaseAndClearFigContentKeySessionCallbackContext(&v14);
LABEL_20:
  FigSimpleMutexUnlock();
  return v12;
}

uint64_t fcks_setAuthorizationToken(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a3)
    {
      v6 = DerivedStorage;
      FigSimpleMutexLock();
      if (*v6)
      {
        fcks_setAuthorizationToken_cold_1(&v9);
        v7 = v9;
      }

      else
      {
        CFDictionarySetValue(*(v6 + 176), a2, a3);
        v7 = 0;
      }

      FigSimpleMutexUnlock();
    }

    else
    {
      fcks_setAuthorizationToken_cold_2(&v10);
      return v10;
    }
  }

  else
  {
    fcks_setAuthorizationToken_cold_3(&v11);
    return v11;
  }

  return v7;
}

uint64_t fcks_copyAuthorizationToken(uint64_t a1, const void *a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf = 0;
  if (!a2)
  {
    fcks_copyAuthorizationToken_cold_3(&v18);
    return v18;
  }

  if (!a3)
  {
    fcks_copyAuthorizationToken_cold_2(&v18);
    return v18;
  }

  v6 = DerivedStorage;
  *a3 = 0;
  FigSimpleMutexLock();
  if (*v6)
  {
    fcks_copyAuthorizationToken_cold_1(&v18);
    v15 = v18;
LABEL_19:
    FigSimpleMutexUnlock();
    v9 = cf;
    if (v15)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  Value = CFDictionaryGetValue(*(v6 + 176), a2);
  if (Value)
  {
    v8 = CFRetain(Value);
    cf = v8;
    if (v8)
    {
      v9 = v8;
      FigSimpleMutexUnlock();
LABEL_20:
      v15 = 0;
      *a3 = v9;
      return v15;
    }
  }

  else
  {
    cf = 0;
  }

  for (i = 0; ; ++i)
  {
    Count = *(v6 + 8);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    if (i >= Count)
    {
      goto LABEL_17;
    }

    CFArrayGetValueAtIndex(*(v6 + 8), i);
    v12 = FigCFWeakReferenceHolderCopyReferencedObject();
    if (v12)
    {
      break;
    }

LABEL_15:
    ;
  }

  v13 = v12;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 80);
  if (!v14)
  {
    CFRelease(v13);
    v15 = 4294954514;
    goto LABEL_23;
  }

  v15 = v14(v13, a2, &cf);
  CFRelease(v13);
  if (v15 == -17295)
  {
    goto LABEL_15;
  }

  if (v15)
  {
LABEL_23:
    FigSignalErrorAtGM();
    goto LABEL_24;
  }

LABEL_17:
  if (cf)
  {
    v15 = 0;
    goto LABEL_19;
  }

  v15 = 4294950001;
LABEL_24:
  FigSimpleMutexUnlock();
  v9 = cf;
LABEL_25:
  if (v9)
  {
    CFRelease(v9);
  }

  return v15;
}

CFTypeRef *fcks_createFigContentKeySessionCallbackContext(uint64_t a1)
{
  v5 = 0;
  if (*(a1 + 64) && *(a1 + 120) && (v2 = malloc_type_calloc(1uLL, 0x60uLL, 0x10E0040C7BBEF1CuLL), v5 = v2, *v2 = 0u, *(v2 + 1) = 0u, *(v2 + 2) = 0u, *(v2 + 3) = 0u, *(v2 + 4) = 0u, *(v2 + 5) = 0u, v3 = FigCFWeakReferenceHolderCopyReferencedObject(), (v2[5] = v3) != 0))
  {
    __copy_assignment_8_8_t0w4_pa0_52572_8_pa0_57120_16_pa0_14239_24_pa0_30190_32_pa0_41757_40((v2 + 6), a1 + 72);
  }

  else
  {
    fcks_releaseAndClearFigContentKeySessionCallbackContext(&v5);
    return v5;
  }

  return v2;
}

void fcks_dispatchKeyResponseErrorCallback(CFTypeRef *a1)
{
  v2 = a1;
  v1 = a1[7];
  if (v1)
  {
    v1(a1[5], *a1, a1[1], a1[3]);
  }

  fcks_releaseAndClearFigContentKeySessionCallbackContext(&v2);
}

uint64_t FigAssetWriterCreateForWritingFragmentedData(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5, const __CFDictionary *a6, void *a7)
{
  cf = 0;
  FigKTraceInit();
  if (a7)
  {
    v14 = assetWriter_CreateWithByteStreamOrFormatWriterSegmentCallback(a1, 0, assetWriter_FormatWriterSegmentCallback, a5, a6, &cf);
    v15 = cf;
    if (v14)
    {
      v17 = v14;
      if (cf)
      {
        CFRelease(cf);
      }
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *(DerivedStorage + 304) = 1;
      *(DerivedStorage + 312) = a2;
      *(DerivedStorage + 320) = a3;
      *(DerivedStorage + 328) = a4;
      if (*MEMORY[0x1E695FF58] == 1)
      {
        kdebug_trace();
      }

      v17 = 0;
      *a7 = v15;
    }
  }

  else
  {
    FigAssetWriterCreateForWritingFragmentedData_cold_1(&v20);
    return v20;
  }

  return v17;
}

uint64_t assetWriter_CopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage >= 7u)
  {
    assetWriter_CopyProperty_cold_2(&v19);
    return LODWORD(v19.value);
  }

  if (!a4)
  {
    assetWriter_CopyProperty_cold_1(&v19);
    return LODWORD(v19.value);
  }

  v8 = DerivedStorage;
  if (!CFEqual(a2, @"AssetWriter_RealTime"))
  {
    if (CFEqual(a2, @"AssetWriter_MaximizePowerEfficiency"))
    {
      v10 = MEMORY[0x1E695E4D0];
      v11 = *(v8 + 424);
LABEL_9:
      if (!v11)
      {
        v10 = MEMORY[0x1E695E4C0];
      }

      v12 = CFRetain(*v10);
      goto LABEL_15;
    }

    if (CFEqual(a2, @"AssetWriter_ClientPID"))
    {
      v13 = *MEMORY[0x1E695E480];
      v14 = v8 + 9;
      v15 = kCFNumberSInt32Type;
    }

    else
    {
      if (CFEqual(a2, @"AssetWriter_ThrottleForBackground"))
      {
        v10 = MEMORY[0x1E695E4D0];
        v11 = *(v8 + 40);
        goto LABEL_9;
      }

      if (!CFEqual(a2, @"AssetWriter_IOPolicy"))
      {
        if (CFEqual(a2, @"AssetWriter_PreferredOutputSegmentInterval"))
        {
          v17 = v8 + 67;
          v18 = *(v8 + 67);
        }

        else
        {
          if (!CFEqual(a2, @"AssetWriter_InitialSegmentStartTime"))
          {
            return 4294954512;
          }

          v17 = v8 + 61;
          v18 = *(v8 + 61);
        }

        *&v19.value = v18;
        v19.epoch = *(v17 + 2);
        v12 = CMTimeCopyAsDictionary(&v19, a3);
        goto LABEL_15;
      }

      v13 = *MEMORY[0x1E695E480];
      v14 = v8 + 114;
      v15 = kCFNumberIntType;
    }

    v12 = CFNumberCreate(v13, v15, v14);
LABEL_15:
    v16 = v12;
    result = 0;
    *a4 = v16;
    return result;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t assetWriter_SetProperty(const void *a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage >= 7u)
  {
    assetWriter_SetProperty_cold_13(&v24);
    return LODWORD(v24.value);
  }

  v7 = DerivedStorage;
  if (!CFEqual(a2, @"AssetWriter_ClientSecTask"))
  {
    if (CFEqual(a2, @"AssetWriter_Metadata"))
    {
      if (*v7 < 5u)
      {
        if (!a3)
        {
          result = *(v7 + 50);
          if (result)
          {
            CFRelease(result);
            result = 0;
            *(v7 + 50) = 0;
          }

          return result;
        }

        v11 = CFGetTypeID(a3);
        if (v11 == CFArrayGetTypeID())
        {
          v12 = *(v7 + 50);
          if (v12)
          {
            CFRelease(v12);
            *(v7 + 50) = 0;
          }

          Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], a3);
          result = 0;
          *(v7 + 50) = Copy;
          return result;
        }

        assetWriter_SetProperty_cold_2(&v24);
        return LODWORD(v24.value);
      }

      assetWriter_SetProperty_cold_3();
      return 0;
    }

    if (CFEqual(a2, @"AssetWriter_RealTime"))
    {
      fig_log_get_emitter();

      return FigSignalErrorAtGM();
    }

    if (CFEqual(a2, @"AssetWriter_ClientPID"))
    {
      if (a3)
      {
        v14 = CFGetTypeID(a3);
        if (v14 == CFNumberGetTypeID())
        {
          CFNumberGetValue(a3, kCFNumberSInt32Type, v7 + 9);

          return remakerfamily_updateClientPID();
        }
      }

      assetWriter_SetProperty_cold_4(&v24);
      return LODWORD(v24.value);
    }

    if (CFEqual(a2, @"AssetWriter_ThrottleForBackground"))
    {
      if (a3)
      {
        v15 = CFGetTypeID(a3);
        if (v15 == CFBooleanGetTypeID())
        {
          *(v7 + 40) = CFBooleanGetValue(a3);

          return remakerfamily_updateThrottleForBackground(a1);
        }
      }

      assetWriter_SetProperty_cold_5(&v24);
      return LODWORD(v24.value);
    }

    if (CFEqual(a2, @"AssetWriter_IOPolicy"))
    {
      if (a3)
      {
        v16 = CFGetTypeID(a3);
        if (v16 == CFNumberGetTypeID())
        {
          CFNumberGetValue(a3, kCFNumberIntType, v7 + 114);

          return remakerfamily_updateIOPolicy();
        }
      }

      assetWriter_SetProperty_cold_6(&v24);
      return LODWORD(v24.value);
    }

    if (CFEqual(a2, @"AssetWriter_MaximizePowerEfficiency"))
    {
      if (a3)
      {
        v17 = CFGetTypeID(a3);
        if (v17 == CFBooleanGetTypeID())
        {
          Value = CFBooleanGetValue(a3);
          result = 0;
          *(v7 + 424) = Value;
          return result;
        }
      }

      assetWriter_SetProperty_cold_7(&v24);
      return LODWORD(v24.value);
    }

    if (CFEqual(a2, @"AssetWriter_PreferredOutputSegmentInterval"))
    {
      if (*(v7 + 304) != 1)
      {
        assetWriter_SetProperty_cold_8(&v24);
        return LODWORD(v24.value);
      }

      memset(&v24, 0, sizeof(v24));
      CMTimeMakeFromDictionary(&v24, a3);
      if ((~v24.flags & 0x11) == 0 || (v24.flags & 0x1D) == 1 && (time1 = **&MEMORY[0x1E6960CC0], v22 = v24, CMTimeCompare(&time1, &v22) < 0))
      {
        result = FigFormatWriterSetProperty(*(v7 + 23), @"PreferredOutputSegmentInterval", a3);
        if (result)
        {
          return result;
        }

        v19 = v7 + 67;
        *(v7 + 67) = *&v24.value;
        goto LABEL_59;
      }

      assetWriter_SetProperty_cold_9(&time1);
    }

    else
    {
      if (!CFEqual(a2, @"AssetWriter_InitialSegmentStartTime"))
      {
        if (!CFEqual(a2, @"AssetWriter_MinimizeMemoryUsage"))
        {
          return 4294954512;
        }

        if (!a3 || (v20 = CFGetTypeID(a3), v20 != CFBooleanGetTypeID()))
        {
          assetWriter_SetProperty_cold_12(&v24);
          return LODWORD(v24.value);
        }

        v21 = CFBooleanGetValue(a3);
        *(v7 + 425) = v21;
        remakerFamily_setMemoryUsage(a1, v21);
        return 0;
      }

      if (*(v7 + 304) != 1)
      {
        assetWriter_SetProperty_cold_10(&v24);
        return LODWORD(v24.value);
      }

      memset(&v24, 0, sizeof(v24));
      CMTimeMakeFromDictionary(&v24, a3);
      if ((v24.flags & 0x1D) == 1)
      {
        result = FigFormatWriterSetProperty(*(v7 + 23), @"InitialSegmentStartTime", a3);
        if (result)
        {
          return result;
        }

        v19 = v7 + 61;
        *(v7 + 61) = *&v24.value;
LABEL_59:
        *(v19 + 2) = v24.epoch;
        return result;
      }

      assetWriter_SetProperty_cold_11(&time1);
    }

    return LODWORD(time1.value);
  }

  if (a3)
  {
    v8 = CFGetTypeID(a3);
    if (v8 == SecTaskGetTypeID())
    {
      v9 = *(v7 + 55);
      *(v7 + 55) = a3;
      CFRetain(a3);
      if (v9)
      {
        CFRelease(v9);
      }

      return 0;
    }

    assetWriter_SetProperty_cold_1(&v24);
    return LODWORD(v24.value);
  }

  result = *(v7 + 55);
  if (result)
  {
    CFRelease(result);
    result = 0;
    *(v7 + 55) = 0;
  }

  return result;
}

uint64_t FigFormatWriterSetProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  FigBaseObject = FigFormatWriterGetFigBaseObject(a1);
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(FigBaseObject, a2, a3);
}

uint64_t assetWriter_AddAudioTrackWithPresetCompression(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (*CMBaseObjectGetDerivedStorage() != 1)
  {
    assetWriter_AddAudioTrackWithPresetCompression_cold_1(&v17);
    return v17;
  }

  if (!a2)
  {
    assetWriter_AddAudioTrackWithPresetCompression_cold_2(&v17);
    return v17;
  }

  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  result = FigAudioCompressionOptionsGetPreset(a2, &v17, &v16, &v15, &v14);
  if (!result)
  {
    v10 = v16;
    v9 = v17;
    v12 = v14;
    v11 = v15;
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v13)
    {
      return v13(a1, v9, v10, v11, v12, a3, a4);
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t assetWriter_AddVideoTrackWithCompression(const void *a1, int a2, int a3, uint64_t a4, uint64_t a5, const __CFDictionary *a6, const void *a7, uint64_t a8, uint64_t a9, const __CFDictionary *a10, _DWORD *a11)
{
  v12 = *a9;
  v13 = *(a9 + 16);
  return assetWriter_AddVideoTrackWithCompressionAndMediaType(a1, a2, a3, a4, 1986618469, a5, a6, a7, a8, &v12, a10, a11);
}

uint64_t assetWriter_SetTrackProperty(uint64_t a1, int a2, const void *a3, const void *a4)
{
  if (*CMBaseObjectGetDerivedStorage() != 1)
  {
    assetWriter_SetTrackProperty_cold_1(&v20);
    return v20;
  }

  ChannelByWriterTrackID = assetWriter_getChannelByWriterTrackID(a1, a2);
  if (!ChannelByWriterTrackID)
  {
    assetWriter_SetTrackProperty_cold_5(&v20);
    return v20;
  }

  v9 = ChannelByWriterTrackID;
  if (!*(ChannelByWriterTrackID + 16) || (v10 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    assetWriter_SetTrackProperty_cold_4(&v20);
    return v20;
  }

  v11 = v10;
  if (CFEqual(a3, @"AssetWriterTrack_Metadata"))
  {
    if (!a4)
    {
      v18 = v11[24];
      if (v18)
      {
        CFRelease(v18);
        v15 = 0;
        v11[24] = 0;
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_19;
    }

    v12 = CFGetTypeID(a4);
    if (v12 == CFArrayGetTypeID())
    {
      v13 = v11[24];
      if (v13)
      {
        CFRelease(v13);
        v11[24] = 0;
      }

      Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], a4);
      v15 = 0;
      v11[24] = Copy;
      goto LABEL_19;
    }

    assetWriter_SetTrackProperty_cold_2(&v20);
    goto LABEL_27;
  }

  if (CFEqual(a3, @"AssetWriterTrack_ShouldVerifyFirstAudioSampleBufferPriming"))
  {
    if (!a4 || (v16 = CFGetTypeID(a4), v16 != CFBooleanGetTypeID()))
    {
      assetWriter_SetTrackProperty_cold_3(&v20);
LABEL_27:
      v15 = v20;
      goto LABEL_19;
    }

    Value = CFBooleanGetValue(a4);
    v15 = 0;
    *(v9 + 192) = Value;
  }

  else
  {
    v15 = 4294954512;
  }

LABEL_19:
  CFRelease(v11);
  return v15;
}

uint64_t assetWriter_CopyTrackProperty(const void *a1, int a2, const void *a3, uint64_t a4, void *a5)
{
  if (*CMBaseObjectGetDerivedStorage() >= 7u)
  {
    assetWriter_CopyTrackProperty_cold_5(&propertyValueOut);
    return propertyValueOut;
  }

  if (!a5)
  {
    assetWriter_CopyTrackProperty_cold_4(&propertyValueOut);
    return propertyValueOut;
  }

  ChannelByWriterTrackID = assetWriter_getChannelByWriterTrackID(a1, a2);
  if (!ChannelByWriterTrackID)
  {
    assetWriter_CopyTrackProperty_cold_3(&propertyValueOut);
    return propertyValueOut;
  }

  v10 = ChannelByWriterTrackID;
  if (!*(ChannelByWriterTrackID + 16) || (v11 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    assetWriter_CopyTrackProperty_cold_2(&propertyValueOut);
    return propertyValueOut;
  }

  v12 = v11;
  if (!CFEqual(a3, @"AssetWriterTrack_PixelBufferPool"))
  {
    if (!CFEqual(a3, @"AssetWriterTrack_EncoderSupportsMultiPass"))
    {
      if (CFEqual(a3, @"AssetWriterTrack_ShouldVerifyFirstAudioSampleBufferPriming"))
      {
        v21 = MEMORY[0x1E695E4D0];
        if (!*(v10 + 192))
        {
          v21 = MEMORY[0x1E695E4C0];
        }

        v22 = *v21;
        if (*v21)
        {
          v22 = CFRetain(v22);
        }

        v14 = 0;
        *a5 = v22;
      }

      else
      {
        v14 = 4294954512;
      }

      goto LABEL_10;
    }

    if (!*(v10 + 120) || (v13 = assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes(a1, v10, 0), !v13))
    {
      v16 = *(v12 + 288);
      if (v16)
      {
        v17 = *(v12 + 32);
        if (v17 == 1986618469 || v17 == 1635088502)
        {
          propertyValueOut = 0;
          VTCompressionSession = FigMediaProcessorGetVTCompressionSession(v16);
          v19 = VTSessionCopyProperty(VTCompressionSession, *MEMORY[0x1E6983740], *MEMORY[0x1E695E480], &propertyValueOut);
          v20 = MEMORY[0x1E695E4D0];
          if (v19)
          {
            v20 = MEMORY[0x1E695E4C0];
          }

          *a5 = *v20;
          if (propertyValueOut)
          {
            CFRelease(propertyValueOut);
          }

          v14 = 0;
          goto LABEL_10;
        }
      }

      fig_log_get_emitter();
      v13 = FigSignalErrorAtGM();
    }

    goto LABEL_30;
  }

  if (*(v10 + 120))
  {
    v13 = assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes(a1, v10, 0);
    if (v13)
    {
LABEL_30:
      v14 = v13;
      goto LABEL_10;
    }
  }

  assetWriter_CopyTrackProperty_cold_1(v12, a5, &propertyValueOut);
  v14 = propertyValueOut;
LABEL_10:
  CFRelease(v12);
  return v14;
}

uint64_t assetWriter_AddSampleBuffer(const void *a1, uint64_t a2, opaqueCMSampleBuffer *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage >= 7u)
  {
    assetWriter_AddSampleBuffer_cold_11(&time1);
    return LODWORD(time1.value);
  }

  v7 = DerivedStorage;
  if (DerivedStorage[5])
  {
    assetWriter_AddSampleBuffer_cold_1();
    return LODWORD(time1.value);
  }

  if (*DerivedStorage != 3)
  {
    assetWriter_AddSampleBuffer_cold_2(&time1);
    return LODWORD(time1.value);
  }

  if (!a3)
  {
    assetWriter_AddSampleBuffer_cold_10(&time1);
    return LODWORD(time1.value);
  }

  ChannelByWriterTrackID = assetWriter_getChannelByWriterTrackID(a1, a2);
  if (!ChannelByWriterTrackID)
  {
    assetWriter_AddSampleBuffer_cold_9(&time1);
    return LODWORD(time1.value);
  }

  v9 = ChannelByWriterTrackID;
  if (!*(ChannelByWriterTrackID + 16) || (v10 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    assetWriter_AddSampleBuffer_cold_8(&time1);
    return LODWORD(time1.value);
  }

  v11 = v10;
  if (!CMSampleBufferGetNumSamples(a3) || assetWriter_IsTrackNativeTrack(a1, v9) || (DataBuffer = CMSampleBufferGetDataBuffer(a3), ImageBuffer = CMSampleBufferGetImageBuffer(a3), CaptionGroup = FigSampleBufferGetCaptionGroup(), DataBuffer) || ImageBuffer || CaptionGroup)
  {
    CMSampleBufferGetDuration(&time1, a3);
    if ((time1.flags & 1) == 0)
    {
      goto LABEL_15;
    }

    CMSampleBufferGetDuration(&lhs, a3);
    if ((lhs.flags & 8) == 0)
    {
      goto LABEL_15;
    }

    assetWriter_AddSampleBuffer_cold_4(&rhs);
  }

  else
  {
    assetWriter_AddSampleBuffer_cold_3(&rhs);
  }

  value_low = LODWORD(rhs.value);
  if (LODWORD(rhs.value))
  {
    goto LABEL_54;
  }

LABEL_15:
  if (v11[8] != 1936684398)
  {
    goto LABEL_41;
  }

  if (!*(v9 + 120))
  {
LABEL_20:
    if (*(v9 + 192))
    {
      if (CMSampleBufferGetNumSamples(a3) >= 1)
      {
        v40 = **&MEMORY[0x1E6960C70];
        if (!*(v9 + 193))
        {
          v19 = CMGetAttachment(a3, *MEMORY[0x1E6960560], 0);
          CMTimeMakeFromDictionary(&time1, v19);
          value = time1.value;
          flags = time1.flags;
          timescale = time1.timescale;
          if (time1.flags)
          {
            epoch = time1.epoch;
          }

          else
          {
            value = *MEMORY[0x1E6960CC0];
            flags = *(MEMORY[0x1E6960CC0] + 12);
            timescale = *(MEMORY[0x1E6960CC0] + 8);
            epoch = *(MEMORY[0x1E6960CC0] + 16);
          }

          if (*(v9 + 208))
          {
            lhs = *(v9 + 196);
            rhs.value = value;
            rhs.timescale = timescale;
            rhs.flags = flags;
            rhs.epoch = epoch;
            CMTimeAdd(&time1, &lhs, &rhs);
            *(v9 + 196) = time1;
          }

          else
          {
            *(v9 + 196) = value;
            *(v9 + 204) = timescale;
            *(v9 + 208) = flags;
            *(v9 + 212) = epoch;
          }

          CMSampleBufferGetDuration(&v40, a3);
          time1 = v40;
          lhs.value = value;
          lhs.timescale = timescale;
          lhs.flags = flags;
          lhs.epoch = epoch;
          if (CMTimeCompare(&time1, &lhs) >= 1)
          {
            FormatDescription = CMSampleBufferGetFormatDescription(a3);
            *&v39.value = *(v9 + 196);
            v39.epoch = *(v9 + 212);
            MostCompatibleFormat = CMAudioFormatDescriptionGetMostCompatibleFormat(FormatDescription);
            if (MostCompatibleFormat)
            {
              memset(&time1, 0, sizeof(time1));
              CMTimeMake(&time1, MostCompatibleFormat->mASBD.mFramesPerPacket, MostCompatibleFormat->mASBD.mSampleRate);
              GradualDecoderRefresh = FigGaplessInfoCreateGradualDecoderRefresh(FormatDescription);
              SInt32 = FigCFNumberGetSInt32();
              memset(&lhs, 0, sizeof(lhs));
              rhs = time1;
              CMTimeMultiply(&lhs, &rhs, SInt32);
              memset(&rhs, 0, sizeof(rhs));
              FigGaplessInfoGetDefaultAudioPrimingDuration(FormatDescription, &rhs);
              memset(&v43, 0, sizeof(v43));
              time = lhs;
              time2 = rhs;
              CMTimeMinimum(&v43, &time, &time2);
              time = v39;
              time2 = v43;
              if (CMTimeCompare(&time, &time2) < 0)
              {
                v26 = *MEMORY[0x1E695E480];
                time = v39;
                v27 = CMTimeCopyDescription(v26, &time);
                time = rhs;
                v28 = CMTimeCopyDescription(v26, &time);
                time = time1;
                v29 = CMTimeCopyDescription(v26, &time);
                if (v29)
                {
                  CFRelease(v29);
                }

                if (v28)
                {
                  CFRelease(v28);
                }

                if (v27)
                {
                  CFRelease(v27);
                }
              }

              if (GradualDecoderRefresh)
              {
                CFRelease(GradualDecoderRefresh);
              }
            }

            *(v9 + 193) = 1;
          }
        }
      }
    }

LABEL_41:
    if (!*(v9 + 120))
    {
      goto LABEL_48;
    }

    time1.value = 0;
    v30 = CMSampleBufferGetImageBuffer(a3);
    if (v30)
    {
      v31 = assetWriter_copyPixelBufferAttributesForHintingEncoder(v30, &time1);
      if (v31)
      {
LABEL_50:
        value_low = v31;
        goto LABEL_54;
      }

      v32 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v32)
      {
        v33 = v32;
        v34 = time1.value;
        value_low = assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes(a1, v9, time1.value);
        if (v34)
        {
          CFRelease(v34);
        }

        CFRelease(v33);
        if (value_low)
        {
          goto LABEL_54;
        }

LABEL_48:
        v35 = *(v9 + 32);
        if (v35)
        {
          v31 = CMBufferQueueEnqueue(v35, a3);
        }

        else
        {
          v36 = *(v7 + 23);
          v37 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (!v37)
          {
            value_low = 4294954514;
            goto LABEL_54;
          }

          v31 = v37(v36, a2, a3);
        }

        goto LABEL_50;
      }

      assetWriter_AddSampleBuffer_cold_6(&lhs);
    }

    else
    {
      assetWriter_AddSampleBuffer_cold_7(&lhs);
    }

    value_low = LODWORD(lhs.value);
    goto LABEL_54;
  }

  v15 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (!v15)
  {
    assetWriter_AddSampleBuffer_cold_5(&time1);
    value_low = LODWORD(time1.value);
    goto LABEL_54;
  }

  v16 = v15;
  v17 = CMSampleBufferGetFormatDescription(a3);
  value_low = assetWriter_finishBuildingAudioTrackWithSourceFormatDescription(a1, v9, v17);
  CFRelease(v16);
  if (!value_low)
  {
    if (v11[8] != 1936684398)
    {
      goto LABEL_41;
    }

    goto LABEL_20;
  }

LABEL_54:
  CFRelease(v11);
  return value_low;
}

opaqueCMBufferQueue *assetWriter_IsTrackQueueAboveHighWaterLevel(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = **&MEMORY[0x1E6960C70];
  if (*DerivedStorage >= 7u)
  {
    assetWriter_IsTrackQueueAboveHighWaterLevel_cold_2();
    return 0;
  }

  ChannelByWriterTrackID = assetWriter_getChannelByWriterTrackID(a1, a2);
  if (!ChannelByWriterTrackID)
  {
    assetWriter_IsTrackQueueAboveHighWaterLevel_cold_1();
    return 0;
  }

  v6 = ChannelByWriterTrackID;
  result = *(ChannelByWriterTrackID + 32);
  if (result)
  {
    CMBufferQueueGetDuration(&v13, result);
    TotalSize = CMBufferQueueGetTotalSize(*(v6 + 32));
    CMBufferQueueGetBufferCount(*(v6 + 32));
    v9 = *(v6 + 96);
    time1 = v13;
    v11 = *(v6 + 64);
    if (CMTimeCompare(&time1, &v11) <= 0)
    {
      return (v9 && TotalSize > v9);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t assetWriter_MarkEndOfDataForTrack(uint64_t a1, int a2)
{
  v4 = *CMBaseObjectGetDerivedStorage();
  if (v4 >= 7)
  {
    assetWriter_MarkEndOfDataForTrack_cold_4(&v10);
    return v10;
  }

  if (v4 <= 2)
  {
    assetWriter_MarkEndOfDataForTrack_cold_3(&v10);
    return v10;
  }

  ChannelByWriterTrackID = assetWriter_getChannelByWriterTrackID(a1, a2);
  if (!ChannelByWriterTrackID)
  {
    assetWriter_MarkEndOfDataForTrack_cold_2(&v10);
    return v10;
  }

  if (!*(ChannelByWriterTrackID + 16) || (v6 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    assetWriter_MarkEndOfDataForTrack_cold_1(&v10);
    return v10;
  }

  v7 = v6;
  v8 = remakerFamily_MarkEndOfDataForTrack(v6, 1);
  CFRelease(v7);
  return v8;
}

uint64_t assetWriter_Finish(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage >= 7u)
  {
    assetWriter_Finish_cold_3(&v7);
    return v7;
  }

  else
  {
    v3 = DerivedStorage;
    if (*(DerivedStorage + 5))
    {
      assetWriter_Finish_cold_1();
      return v5;
    }

    else if (*DerivedStorage <= 2u)
    {
      assetWriter_Finish_cold_2(&v6);
      return v6;
    }

    else
    {
      if (*MEMORY[0x1E695FF58] == 1)
      {
        kdebug_trace();
      }

      FigAtomicCompareAndSwap32();
      dispatch_sync_f(v3[7], a1, assetWriter_finishAsyncDispatch);
      FigSemaphoreWaitRelative();
      FigSemaphoreSignal();
      remakerFamily_registerPowerLogEvent();
      return *(v3 + 5);
    }
  }
}

uint64_t assetWriter_FinishAsync(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage >= 7u)
  {
    assetWriter_FinishAsync_cold_3(&v7);
    return v7;
  }

  else
  {
    v3 = DerivedStorage;
    if (*(DerivedStorage + 5))
    {
      assetWriter_FinishAsync_cold_1();
      return v5;
    }

    else if (*DerivedStorage <= 2u)
    {
      assetWriter_FinishAsync_cold_2(&v6);
      return v6;
    }

    else
    {
      if (*MEMORY[0x1E695FF58] == 1)
      {
        kdebug_trace();
      }

      FigAtomicCompareAndSwap32();
      remakerFamily_safeDispatchAsync(v3[7], a1, assetWriter_finishAsyncDispatch);
      return 0;
    }
  }
}

uint64_t assetWriter_BeginPass(uint64_t a1, int a2)
{
  v14 = 0;
  v15 = 0;
  v4 = *CMBaseObjectGetDerivedStorage();
  if (v4 >= 7)
  {
    assetWriter_BeginPass_cold_6(&v16);
    return v16;
  }

  if (v4 != 3)
  {
    assetWriter_BeginPass_cold_1(&v16);
    return v16;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  ChannelByWriterTrackID = assetWriter_getChannelByWriterTrackID(a1, a2);
  if (!ChannelByWriterTrackID)
  {
    assetWriter_BeginPass_cold_5(&v16);
    return v16;
  }

  v6 = ChannelByWriterTrackID;
  if (!*(ChannelByWriterTrackID + 16) || (v7 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    assetWriter_BeginPass_cold_4(&v16);
    return v16;
  }

  v8 = v7;
  if (!*(v7 + 356))
  {
    assetWriter_BeginPass_cold_3(&v16);
LABEL_28:
    v9 = v16;
    goto LABEL_19;
  }

  *(v7 + 424) = 0;
  if (!*(v6 + 120))
  {
    if (*(v7 + 288))
    {
      v10 = *(v7 + 400);
      if (!v10 || CFArrayGetCount(v10) < 1 || (Pass = remakerFamily_createTimeRangesCArray(*(v8 + 400), &v14, &v15), !Pass) && (Pass = VTFrameSiloSetTimeRangesForNextPass(*(v8 + 360), v14, v15), !Pass))
      {
        VTCompressionSession = FigMediaProcessorGetVTCompressionSession(*(v8 + 288));
        Pass = VTCompressionSessionBeginPass(VTCompressionSession, 0, 0);
        if (!Pass)
        {
          *(v8 + 296) = 0;
          Pass = CMBufferQueueReset(*(v6 + 32));
        }
      }

      v9 = Pass;
      goto LABEL_19;
    }

    assetWriter_BeginPass_cold_2(&v16);
    goto LABEL_28;
  }

  v9 = 0;
  *(v6 + 220) = 1;
LABEL_19:
  free(v15);
  CFRelease(v8);
  return v9;
}

uint64_t assetWriter_EndPass(uint64_t a1, int a2)
{
  v4 = *CMBaseObjectGetDerivedStorage();
  if (v4 >= 7)
  {
    assetWriter_EndPass_cold_4(&v11);
    return v11;
  }

  if (v4 != 3)
  {
    assetWriter_EndPass_cold_1(&v11);
    return v11;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  ChannelByWriterTrackID = assetWriter_getChannelByWriterTrackID(a1, a2);
  if (!ChannelByWriterTrackID)
  {
    assetWriter_EndPass_cold_3(&v11);
    return v11;
  }

  if (!*(ChannelByWriterTrackID + 16) || (v6 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    assetWriter_EndPass_cold_2(&v11);
    return v11;
  }

  v7 = v6;
  if (*(v6 + 356))
  {
    v8 = 0;
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM();
    v8 = v7[356] == 0;
  }

  v9 = remakerFamily_MarkEndOfDataForTrack(v7, v8);
  CFRelease(v7);
  return v9;
}

uint64_t assetWriter_AddCaptionTrack(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v46 = 0;
  v45 = **&MEMORY[0x1E6960C70];
  v44 = 0;
  if (*DerivedStorage != 1)
  {
    assetWriter_AddCaptionTrack_cold_1(&time);
LABEL_35:
    value_low = LODWORD(time.value);
    goto LABEL_13;
  }

  if (!a5)
  {
    assetWriter_AddCaptionTrack_cold_2(&time);
    goto LABEL_35;
  }

  v10 = DerivedStorage;
  v11 = remakerFamily_createChannel(a1, 0, a2, &v46);
  if (v11)
  {
    goto LABEL_32;
  }

  v12 = *(v10 + 23);
  v13 = v46;
  v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v14)
  {
    value_low = 4294954514;
LABEL_13:
    remakerFamily_discardChannel(a1, v46);
    return value_low;
  }

  v11 = v14(v12, a2, 0, v13 + 300);
  if (v11 || (v11 = remakerFamily_setFormatWriterTrackProperties(a1, *(v46 + 300), a3, 0), v11) || (v11 = remakerFamily_setFormatWriterProperties(a1, a3), v11))
  {
LABEL_32:
    value_low = v11;
    goto LABEL_13;
  }

  CMTimeIfPresent = FigCFDictionaryGetCMTimeIfPresent();
  v16 = MEMORY[0x1E695E480];
  if (CMTimeIfPresent && (v45.flags & 0x1D) == 1)
  {
    v17 = *MEMORY[0x1E695E480];
    time = v45;
    v18 = CMTimeCopyAsDictionary(&time, v17);
    v19 = *(v10 + 23);
    v20 = *(v46 + 300);
    v21 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v21)
    {
      v21(v19, v20, @"CaptionTimeCodeFrameDuration", v18);
    }
  }

  else
  {
    v18 = 0;
  }

  if (FigCFDictionaryGetBooleanIfPresent())
  {
    v23 = *(v10 + 23);
    v24 = *(v46 + 300);
    v25 = (v44 ? MEMORY[0x1E695E4D0] : MEMORY[0x1E695E4C0]);
    v26 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v26)
    {
      v26(v23, v24, @"UseDropFrameTimeCode", *v25);
    }
  }

  v27 = CFGetAllocator(a1);
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v29 = CMBufferQueueCreate(v27, 0, CallbacksForUnsortedSampleBuffers, (*(v46 + 160) + 32));
  v30 = v46;
  if (v29 || (v31 = *(v46 + 160), remakerFamily_getLowWaterLevel(*(v10 + 32), &time), *(v31 + 40) = time, v32 = *(v46 + 160), remakerFamily_getHighWaterLevel(*(v10 + 32), &time), *(v32 + 64) = time, v33 = *(v46 + 160), v34 = *(v33 + 32), time = *(v33 + 40), v29 = CMBufferQueueInstallTrigger(v34, assetWriterTrack_reachedLowWater, v33, 2, &time, (v33 + 104)), v30 = v46, v29))
  {
    value_low = v29;
  }

  else
  {
    v35 = *v16;
    v36 = *(*(v46 + 160) + 32);
    v37 = *(v10 + 23);
    v38 = *(v46 + 300);
    CMTimeMake(&time, 2, 1);
    CMTimeMake(&v42, 1, 1);
    if (*(v10 + 32))
    {
      v39 = 0;
    }

    else
    {
      v39 = 31;
    }

    v40 = FigMediaProcessorCreateForCaptionConversionWithFormatWriter(v35, a2, a3, v36, v37, v38, &time.value, 0, &v42, 0, v39, (v46 + 288));
    if (v40)
    {
      value_low = v40;
      v30 = v46;
    }

    else
    {
      CMNotificationCenterGetDefaultLocalCenter();
      value_low = FigNotificationCenterAddWeakListeners();
      v30 = v46;
      if (!value_low)
      {
        *a5 = *(v46 + 300);
        remakerFamily_commitChannel(a1, v30);
        v30 = 0;
        v46 = 0;
      }
    }
  }

  remakerFamily_discardChannel(a1, v30);
  if (v18)
  {
    CFRelease(v18);
  }

  return value_low;
}

uint64_t assetWriter_Flush()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 20))
  {
    assetWriter_Flush_cold_1();
    return v4;
  }

  if (*DerivedStorage >= 5u)
  {
    assetWriter_Flush_cold_4(&v4);
    return v4;
  }

  if (*DerivedStorage <= 2u)
  {
    assetWriter_Flush_cold_3(&v4);
    return v4;
  }

  if (*(DerivedStorage + 304) != 1)
  {
    assetWriter_Flush_cold_2(&v4);
    return v4;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v1 = *(DerivedStorage + 184);
  v2 = *(*(CMBaseObjectGetVTable() + 16) + 40);
  if (!v2)
  {
    return 4294954514;
  }

  return v2(v1, 0);
}

uint64_t assetWriter_AddVideoTrackWithCompressionAndMediaType(const void *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, const __CFDictionary *a7, const void *a8, uint64_t a9, __int128 *a10, const __CFDictionary *a11, _DWORD *a12)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v50 = 0;
  v51 = 0;
  if (*DerivedStorage != 1)
  {
    assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_1(&time);
LABEL_57:
    value_low = LODWORD(time.value);
    goto LABEL_18;
  }

  if (!a6)
  {
    assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_8(&time);
    goto LABEL_57;
  }

  if (!a12)
  {
    assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_7(&time);
    goto LABEL_57;
  }

  v19 = DerivedStorage;
  v20 = remakerFamily_createChannel(a1, 0, a5, &v51);
  if (v20)
  {
    goto LABEL_20;
  }

  v47 = a2;
  v21 = *(v19 + 23);
  v22 = v51;
  v23 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v23)
  {
    value_low = 4294954514;
    goto LABEL_18;
  }

  v20 = v23(v21, a5, 0, v22 + 300);
  if (v20)
  {
    goto LABEL_20;
  }

  v20 = remakerFamily_setFormatWriterTrackProperties(a1, *(v51 + 300), a6, 0);
  if (v20)
  {
    goto LABEL_20;
  }

  v20 = remakerFamily_setFormatWriterProperties(a1, a6);
  if (v20)
  {
    goto LABEL_20;
  }

  v24 = CFGetAllocator(a1);
  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v20 = CMBufferQueueCreate(v24, 0, CallbacksForUnsortedSampleBuffers, (*(v51 + 160) + 32));
  if (v20)
  {
    goto LABEL_20;
  }

  v26 = *(v51 + 160);
  remakerFamily_getLowWaterLevel(*(v19 + 32), &time);
  *(v26 + 40) = time;
  v27 = *(v51 + 160);
  remakerFamily_getHighWaterLevel(*(v19 + 32), &time);
  *(v27 + 64) = time;
  *(*(v51 + 160) + 88) = remakerFamily_getLowWaterTotalSize();
  HighWaterTotalSize = remakerFamily_getHighWaterTotalSize();
  v29 = *(v51 + 160);
  *(v29 + 96) = HighWaterTotalSize;
  v30 = *(v29 + 32);
  if (*(v29 + 88))
  {
    time = *(v29 + 40);
    v20 = FigBufferQueueInstallTriggerWithTimeAndIntegerThresholds();
    if (!v20)
    {
      goto LABEL_12;
    }

LABEL_20:
    value_low = v20;
    goto LABEL_18;
  }

  time = *(v29 + 40);
  v20 = CMBufferQueueInstallTrigger(v30, assetWriterTrack_reachedLowWater, v29, 2, &time, (v29 + 104));
  if (v20)
  {
    goto LABEL_20;
  }

LABEL_12:
  *(*(v51 + 160) + 120) = 1;
  if (a6 <= 1634743415)
  {
    if (a6 == 1634742376 || a6 == 1634742888)
    {
      goto LABEL_27;
    }

    v31 = 13416;
  }

  else
  {
    if ((a6 - 1634755432) <= 0xB && ((1 << (a6 - 104)) & 0x8C1) != 0 || (a6 - 1634759272) <= 6 && ((1 << (a6 - 104)) & 0x51) != 0)
    {
      goto LABEL_27;
    }

    v31 = 13432;
  }

  if (a6 == (v31 | 0x61700000))
  {
LABEL_27:
    if (hasProResHWEncoder_pred != -1)
    {
      assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_2();
    }

    if (hasProResHWEncoder_hasProResHW == 1)
    {
      if (doesProResHWEncoderSupportInterlaced_pred != -1)
      {
        assetWriter_AddVideoTrackWithCompressionAndMediaType_cold_3();
      }

      if ((doesProResHWEncoderSupportInterlaced_proResHWSupportsInterlaced & 1) == 0)
      {
        FigCFDictionaryGetInt32IfPresent();
      }
    }
  }

  RemakerVideoEncoderSpecification = remakerFamily_createRemakerVideoEncoderSpecification(a1, a7, &v50);
  if (RemakerVideoEncoderSpecification)
  {
    goto LABEL_58;
  }

  RemakerVideoEncoderSpecification = remakerFamily_setupMultiPassTrackIfNecessary(a1, v51);
  if (RemakerVideoEncoderSpecification)
  {
    goto LABEL_58;
  }

  v34 = v50;
  v35 = v51;
  v36 = *(v51 + 160);
  *(v36 + 228) = v47;
  *(v36 + 232) = a3;
  *(v36 + 236) = a6;
  if (v34)
  {
    v34 = CFRetain(v34);
    v35 = v51;
    v36 = *(v51 + 160);
  }

  *(v36 + 240) = v34;
  v37 = *a10;
  *(v36 + 264) = *(a10 + 2);
  *(v36 + 248) = v37;
  v38 = a8;
  if (a8)
  {
    v38 = CFRetain(a8);
    v35 = v51;
  }

  v39 = *(v35 + 160);
  *(v39 + 272) = v38;
  if (a11)
  {
    RemakerVideoEncoderSpecification = assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes(a1, v39, a11);
    if (RemakerVideoEncoderSpecification)
    {
      goto LABEL_58;
    }
  }

  else
  {
    RemakerVideoEncoderSpecification = VTSelectAndCreateVideoEncoderInstance();
    if (RemakerVideoEncoderSpecification)
    {
LABEL_58:
      value_low = RemakerVideoEncoderSpecification;
      goto LABEL_18;
    }
  }

  v40 = v51;
  *a12 = *(v51 + 300);
  if ((*(a10 + 3) & 0x1D) == 1)
  {
    v41 = *(a10 + 2);
    if (v41 <= 600)
    {
      v41 = 600;
    }

    LODWORD(time.value) = v41;
    v42 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &time);
    v43 = *(v19 + 23);
    v44 = *(v51 + 300);
    v45 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v45)
    {
      v45(v43, v44, @"MediaTimeScale", v42);
    }

    remakerFamily_setFormatWriterMovieTimeScaleIfAppropriate(a1, v42, a5);
    CFRelease(v42);
    v40 = v51;
  }

  remakerFamily_commitChannel(a1, v40);
  value_low = 0;
  v51 = 0;
LABEL_18:
  remakerFamily_discardChannel(a1, v51);
  if (v50)
  {
    CFRelease(v50);
  }

  return value_low;
}

void assetWriterTrack_reachedLowWater(uint64_t a1)
{
  if (a1 && *(a1 + 16) && (v2 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
  {
    v3 = v2;
    if (*(a1 + 16) && (v4 = FigCFWeakReferenceHolderCopyReferencedObject()) != 0)
    {
      v5 = v4;
      v6 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v6)
      {
        assetWriterTrack_reachedLowWater_cold_1(v6, v5, @"AssetWriter_TrackQueueNowBelowLowWaterLevel");
      }

      else
      {
        CFRelease(v5);
      }
    }

    else
    {
      assetWriterTrack_reachedLowWater_cold_2();
    }

    CFRelease(v3);
  }

  else
  {
    assetWriterTrack_reachedLowWater_cold_3();
  }
}

uint64_t assetWriter_finishBuildingAudioTrackWithSourceFormatDescription(uint64_t a1, uint64_t a2, const void *a3)
{
  CMBaseObjectGetDerivedStorage();
  if (!a2 || !*(a2 + 16) || (v6 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    if (assetWriter_finishBuildingAudioTrackWithSourceFormatDescription_cold_3(&v16))
    {
      return 0;
    }

    v7 = 0;
    v8 = v16;
    v13 = 1;
    goto LABEL_17;
  }

  v7 = v6;
  v8 = 0;
  if (a3 && *(a2 + 120))
  {
    v9 = CFGetTypeID(a3);
    if (v9 == CMFormatDescriptionGetTypeID())
    {
      *(a2 + 120) = 0;
      if (CMFormatDescriptionGetMediaSubType(a3) == 1819304813)
      {
        v10 = remakerFamily_buildMediaProcessorForAudioCompressionFromLPCMWithFormatWriter(a1, v7, a3, a2 + 128, *(a2 + 168), *(a2 + 176), *(a2 + 184), *(a2 + 32));
        if (!v10)
        {
          v11 = v7[36];
          if (v11)
          {
            FigMediaProcessorGo(v11);
          }

          v8 = 0;
          goto LABEL_12;
        }

        v8 = v10;
        goto LABEL_24;
      }

      assetWriter_finishBuildingAudioTrackWithSourceFormatDescription_cold_2(&v15);
      v8 = v15;
    }

    else
    {
      assetWriter_finishBuildingAudioTrackWithSourceFormatDescription_cold_1(&v14);
      v8 = v14;
    }

    if (v8)
    {
LABEL_24:
      v13 = 0;
LABEL_17:
      remakerfamily_setFailureStatusIfError(a1, v8);
      remakerFamily_invalidateAllMediaProcessors();
      if (v13)
      {
        return v8;
      }
    }
  }

LABEL_12:
  CFRelease(v7);
  return v8;
}

uint64_t assetWriter_getChannelByWriterTrackID(uint64_t a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Count = CFArrayGetCount(*(DerivedStorage + 80));
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 80), v6);
    if (ValueAtIndex[75] == a2)
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return *(ValueAtIndex + 20);
}

uint64_t assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes(const void *a1, uint64_t a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v29 = 0;
  timeRangeArray = 0;
  if (!a2 || (v7 = DerivedStorage, !*(a2 + 16)) || (v8 = FigCFWeakReferenceHolderCopyReferencedObject()) == 0)
  {
    if (assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes_cold_2(&v27))
    {
      return 0;
    }

    v9 = 0;
    value_low = LODWORD(v27.value);
    v25 = 1;
    goto LABEL_33;
  }

  v9 = v8;
  v10 = *(v8 + 32);
  if (v10 == 1635088502 || v10 == 1986618469)
  {
    if (!*(a2 + 120))
    {
LABEL_26:
      value_low = 0;
      goto LABEL_27;
    }

    *(a2 + 120) = 0;
    v12 = *(a2 + 228);
    v13 = *(a2 + 232);
    v14 = *(a2 + 236);
    v15 = *(a2 + 240);
    v16 = *(a2 + 32);
    *&v27.value = *(a2 + 248);
    v17 = *(a2 + 272);
    v27.epoch = *(a2 + 264);
    Pass = remakerFamily_setupCompressionMediaProcessorAndFileOutput(a1, v12, v13, v14, &v27, v15, a3, v8, v16, 0, v17);
    if (!Pass)
    {
      v19 = *(a2 + 240);
      if (v19)
      {
        CFRelease(v19);
        *(a2 + 240) = 0;
      }

      if (!*(v9 + 356) || !*(a2 + 220))
      {
        goto LABEL_21;
      }

      v20 = *(v9 + 400);
      if (!v20 || CFArrayGetCount(v20) < 1 || (Pass = remakerFamily_createTimeRangesCArray(*(v9 + 400), &v29, &timeRangeArray), !Pass) && (Pass = VTFrameSiloSetTimeRangesForNextPass(*(v9 + 360), v29, timeRangeArray), !Pass))
      {
        VTCompressionSession = FigMediaProcessorGetVTCompressionSession(*(v9 + 288));
        Pass = VTCompressionSessionBeginPass(VTCompressionSession, *(a2 + 224), 0);
        if (!Pass)
        {
          *(a2 + 220) = 0;
          *(a2 + 224) = 0;
LABEL_21:
          v22 = *(a2 + 272);
          if (v22)
          {
            CFRelease(v22);
            *(a2 + 272) = 0;
          }

          if (*v7 == 3)
          {
            v23 = *(v9 + 288);
            if (v23)
            {
              FigMediaProcessorGo(v23);
            }
          }

          goto LABEL_26;
        }
      }
    }

    value_low = Pass;
    v25 = 0;
LABEL_33:
    remakerfamily_setFailureStatusIfError(a1, value_low);
    remakerFamily_invalidateAllMediaProcessors();
    free(timeRangeArray);
    if (v25)
    {
      return value_low;
    }

    goto LABEL_28;
  }

  assetWriter_finishBuildingVideoTrackWithPixelBufferAttributes_cold_1(&v27);
  value_low = LODWORD(v27.value);
LABEL_27:
  free(timeRangeArray);
LABEL_28:
  CFRelease(v9);
  return value_low;
}