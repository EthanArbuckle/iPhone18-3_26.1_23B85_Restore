@interface MPAssistantSubscriptionStatusSyncHandler
- (void)beginSyncWithAnchor:(id)a3 validity:(id)a4 forKey:(id)a5 beginInfo:(id)a6;
- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4;
- (void)syncDidEnd;
@end

@implementation MPAssistantSubscriptionStatusSyncHandler

- (void)syncDidEnd
{
  v3 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_2334D9000, v3, OS_LOG_TYPE_DEFAULT, "Subscription Status Sync Handler (end): sync ended", v6, 2u);
  }

  postAnchor = self->_postAnchor;
  self->_postAnchor = 0;

  clientState = self->_clientState;
  self->_clientState = 0;
}

- (void)getChangeAfterAnchor:(id)a3 changeInfo:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (([a3 isEqualToString:self->_postAnchor] & 1) == 0)
  {
    v7 = MEMORY[0x277CBEBC0];
    v8 = [MEMORY[0x277D472D0] uniqueObjectIdentifier];
    v9 = [v7 URLWithString:v8];
    [(SADynamiteClientState *)self->_clientState setIdentifier:v9];

    [v6 setObject:self->_clientState];
    v10 = _MPLogCategoryAssistant_Oversize();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(SADynamiteClientState *)self->_clientState dictionary];
      v13 = 138477827;
      v14 = v11;
      _os_log_impl(&dword_2334D9000, v10, OS_LOG_TYPE_DEFAULT, "Subscription Status Sync Handler (get): %{private}@", &v13, 0xCu);
    }
  }

  [v6 setPostAnchor:self->_postAnchor];

  v12 = *MEMORY[0x277D85DE8];
}

- (void)beginSyncWithAnchor:(id)a3 validity:(id)a4 forKey:(id)a5 beginInfo:(id)a6
{
  v253[0] = *MEMORY[0x277D85DE8];
  v221 = a3;
  v220 = a4;
  v218 = a5;
  v219 = a6;
  v10 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138478083;
    *&buf[4] = v221;
    *&buf[12] = 2114;
    *&buf[14] = v220;
    _os_log_impl(&dword_2334D9000, v10, OS_LOG_TYPE_DEFAULT, "Subscription Status Sync Handler (begin): anchor: %{private}@, validity: %{public}@", buf, 0x16u);
  }

  v11 = dispatch_semaphore_create(0);
  v229 = 0;
  v230 = &v229;
  v231 = 0x3032000000;
  v232 = sub_23350408C;
  v233 = sub_23350409C;
  v234 = 0;
  v226[0] = MEMORY[0x277D85DD0];
  v226[1] = 3221225472;
  v226[2] = sub_2335040A4;
  v226[3] = &unk_2789DBCA0;
  v226[4] = self;
  v228 = &v229;
  v12 = v11;
  v227 = v12;
  sub_2335040A4(v226, 0);
  v13 = dispatch_time(0, 10000000000);
  v217 = v12;
  if (dispatch_semaphore_wait(v12, v13))
  {
    v14 = v221;
    postAnchor = self->_postAnchor;
    self->_postAnchor = v14;
    goto LABEL_209;
  }

  v216 = [v230[5] allKeys];
  v214 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v236 = v214;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v236 count:1];
  v17 = [v216 sortedArrayUsingDescriptors:v16];

  v18 = [MEMORY[0x277CCACA8] string];
  v224 = 0u;
  v225 = 0u;
  v222 = 0u;
  v223 = 0u;
  v19 = v17;
  v20 = [v19 countByEnumeratingWithState:&v222 objects:v235 count:16];
  if (v20)
  {
    v21 = *v223;
    do
    {
      v22 = 0;
      v23 = v18;
      do
      {
        if (*v223 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [v230[5] objectForKeyedSubscript:*(*(&v222 + 1) + 8 * v22)];
        v18 = [v23 stringByAppendingFormat:@"%@:", v24];

        ++v22;
        v23 = v18;
      }

      while (v20 != v22);
      v20 = [v19 countByEnumeratingWithState:&v222 objects:v235 count:16];
    }

    while (v20);
  }

  v215 = [v18 stringByAppendingString:@"END"];

  v25 = MEMORY[0x277CCACA8];
  v26 = [(SADynamiteClientState *)self->_clientState defaultUserState];
  v27 = [v26 status];
  v28 = [v27 isEqualToString:*MEMORY[0x277D47D60]];
  v29 = [(SADynamiteClientState *)self->_clientState expirationDate];
  v30 = [v29 date];
  [v30 timeIntervalSinceReferenceDate];
  v32 = v31;
  v33 = [(SADynamiteClientState *)self->_clientState defaultUserState];
  v34 = [v33 userHistoryUnmodifiable];
  v35 = [v25 stringWithFormat:@"FuseEligibility_%d_%f:PL_%@_UserAnchors_%@", v28, v32, v34, v215];

  v36 = v35;
  v248 = 0u;
  v247 = 0u;
  v246 = 0u;
  v245 = 0u;
  v244 = 0u;
  v243 = 0u;
  v242 = 0u;
  v241 = 0u;
  v240 = 0u;
  v239 = 0u;
  v238 = 0u;
  memset(&buf[8], 0, 32);
  *buf = 4256;
  CC_SHA256_Init(&buf[8]);
  v37 = v36;
  v38 = v37;
  v39 = [v37 UTF8String];
  v40 = [v37 length];
  v41 = v40;
  if (*buf <= 3000)
  {
    if (*buf <= 1999)
    {
      if (!*buf)
      {
        v77 = [MEMORY[0x277CCA890] currentHandler];
        v78 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void _MSVHasherAppendBytes(MSVHasher * _Nonnull, const void * _Nonnull, size_t)"}];
        [v77 handleFailureInFunction:v78 file:@"MSVHasher+Algorithms.h" lineNumber:262 description:@"Cannot append to unknown hasher algorithm"];

        goto LABEL_108;
      }

      if (*buf != 1000)
      {
        goto LABEL_108;
      }

      v42 = BYTE7(v238);
      v43 = v238 & 0xFFFFFFFFFFFFFFLL;
      v44 = BYTE7(v238) & 7;
      if (v44)
      {
        v45 = 8 - v44;
        v46 = v40 - (8 - v44);
        if (v40 < 8 - v44)
        {
LABEL_30:
          if (v41)
          {
            v69 = 0;
            v70 = 0;
            v71 = v41;
            do
            {
              v72 = *v39++;
              v70 |= v72 << v69;
              v69 += 8;
              --v71;
            }

            while (v71);
            if (v44)
            {
              v73 = (v70 << (8 * v44)) | ((v41 + v42) << 56) | v43;
            }

            else
            {
              v73 = v70 | ((v41 + v42) << 56);
            }
          }

          else
          {
            if (v44)
            {
              goto LABEL_108;
            }

            v73 = v42 << 56;
          }

          *&v238 = v73;
          goto LABEL_108;
        }

        v47 = 8 * v44;
        v48 = v39;
        v49 = v238 & 0xFFFFFFFFFFFFFFLL;
        do
        {
          v50 = *v48++;
          v49 |= v50 << v47;
          v47 += 8;
        }

        while (v47 != 64);
        v51 = (*&buf[8] + *&buf[16]) ^ __ROR8__(*&buf[16], 51);
        v52 = *&buf[24] + (*&buf[32] ^ v49);
        v53 = __ROR8__(*&buf[32] ^ v49, 48);
        v54 = (v52 ^ v53) + __ROR8__(*&buf[8] + *&buf[16], 32);
        v55 = v54 ^ __ROR8__(v52 ^ v53, 43);
        v56 = v52 + v51;
        *&buf[24] = __ROR8__(v56, 32);
        *&buf[32] = v55;
        *&buf[8] = v54 ^ v49;
        *&buf[16] = v56 ^ __ROR8__(v51, 47);
        v39 += v45;
        *&v238 = (v45 + v42) << 56;
        v41 = v46;
      }

      if (v41 >= 8)
      {
        v57 = *&buf[8];
        v60 = *&buf[24];
        v59 = *&buf[16];
        v58 = *&buf[32];
        do
        {
          v61 = *v39;
          v39 += 8;
          v62 = v58 ^ v61;
          v63 = v57 + v59;
          v64 = v63 ^ __ROR8__(v59, 51);
          v65 = v60 + v62;
          v66 = __ROR8__(v62, 48);
          v67 = (v65 ^ v66) + __ROR8__(v63, 32);
          v58 = v67 ^ __ROR8__(v65 ^ v66, 43);
          v68 = v65 + v64;
          v59 = v68 ^ __ROR8__(v64, 47);
          v60 = __ROR8__(v68, 32);
          *&buf[24] = v60;
          *&buf[32] = v58;
          v57 = v67 ^ v61;
          *&buf[8] = v57;
          *&buf[16] = v59;
          v41 -= 8;
          v42 += 8;
        }

        while (v41 > 7);
      }

      v44 = 0;
      goto LABEL_30;
    }

    if (*buf != 2000)
    {
      if (*buf != 3000 || !v39)
      {
        goto LABEL_108;
      }

      v75 = v40 > 0xF || (*&buf[8] + v40) > 0xF;
      *&buf[8] += v40;
      *&buf[12] |= v75;
      if (v40 + DWORD2(v238) > 0xF)
      {
        v86 = &v39[v40];
        if (DWORD2(v238))
        {
          memcpy(&buf[DWORD2(v238) + 32], v39, (16 - DWORD2(v238)));
          HIDWORD(v87) = *&buf[16] - 2048144777 * *&buf[32];
          LODWORD(v87) = HIDWORD(v87);
          v88 = -1640531535 * (v87 >> 19);
          HIDWORD(v87) = *&buf[20] - 2048144777 * *&buf[36];
          LODWORD(v87) = HIDWORD(v87);
          *&buf[16] = v88;
          *&buf[20] = -1640531535 * (v87 >> 19);
          HIDWORD(v87) = *&buf[24] - 2048144777 * v238;
          LODWORD(v87) = HIDWORD(v87);
          *&buf[24] = -1640531535 * (v87 >> 19);
          HIDWORD(v87) = *&buf[28] - 2048144777 * DWORD1(v238);
          LODWORD(v87) = HIDWORD(v87);
          v39 += (16 - DWORD2(v238));
          *&buf[28] = -1640531535 * (v87 >> 19);
          DWORD2(v238) = 0;
        }

        if (v39 <= v86 - 16)
        {
          v89 = *&buf[16];
          v90 = *&buf[20];
          v91 = *&buf[24];
          v92 = *&buf[28];
          do
          {
            HIDWORD(v93) = v89 - 2048144777 * *v39;
            LODWORD(v93) = HIDWORD(v93);
            v89 = -1640531535 * (v93 >> 19);
            HIDWORD(v93) = v90 - 2048144777 * *(v39 + 1);
            LODWORD(v93) = HIDWORD(v93);
            v90 = -1640531535 * (v93 >> 19);
            HIDWORD(v93) = v91 - 2048144777 * *(v39 + 2);
            LODWORD(v93) = HIDWORD(v93);
            v91 = -1640531535 * (v93 >> 19);
            HIDWORD(v93) = v92 - 2048144777 * *(v39 + 3);
            LODWORD(v93) = HIDWORD(v93);
            v92 = -1640531535 * (v93 >> 19);
            v39 += 16;
          }

          while (v39 <= v86 - 16);
          *&buf[16] = v89;
          *&buf[20] = v90;
          *&buf[24] = v91;
          *&buf[28] = v92;
        }

        if (v39 >= v86)
        {
          goto LABEL_108;
        }

        v76 = v86 - v39;
        __memcpy_chk();
      }

      else
      {
        memcpy(&buf[DWORD2(v238) + 32], v39, v40);
        v76 = DWORD2(v238) + v41;
      }

      DWORD2(v238) = v76;
      goto LABEL_108;
    }

    v79 = v40 + buf[19];
    if (v79 < 4)
    {
      v80 = &buf[buf[19]];
      if (v40 <= 1u)
      {
        if (!v40)
        {
LABEL_107:
          *&buf[12] += v41;
          goto LABEL_108;
        }

        if (v40 == 1)
        {
          v80[16] = *v39;
          goto LABEL_107;
        }

LABEL_91:
        memcpy(v80 + 16, v39, v40);
        goto LABEL_107;
      }

      if (v40 == 2)
      {
        v99 = *v39;
      }

      else
      {
        if (v40 != 3)
        {
          goto LABEL_91;
        }

        v99 = *v39;
        v80[18] = v39[2];
      }

      *(v80 + 8) = v99;
      goto LABEL_107;
    }

    LOBYTE(v82) = 0;
    v83 = v79 & 0xFFFFFFFFFFFFFFFCLL;
    if (buf[19] > 1u)
    {
      if (buf[19] != 2)
      {
        LOBYTE(v84) = 0;
        LOBYTE(v85) = 0;
        v100 = 0;
        if (buf[19] == 3)
        {
          LOBYTE(v84) = buf[16];
          v82 = HIBYTE(*&buf[16]);
          LOBYTE(v85) = buf[18];
          v100 = *v39;
        }

        goto LABEL_97;
      }

      LOBYTE(v84) = buf[16];
      v82 = HIBYTE(*&buf[16]);
      v85 = *v39;
    }

    else
    {
      if (!buf[19])
      {
        v84 = *v39;
        v82 = *v39 >> 8;
        v85 = HIWORD(*v39);
        v100 = HIBYTE(*v39);
        goto LABEL_97;
      }

      LOBYTE(v84) = buf[16];
      LOBYTE(v82) = *v39;
      v85 = *(v39 + 1);
    }

    v100 = v85 >> 8;
LABEL_97:
    v101 = v79 & 3;
    v102 = (v85 << 16) | (v100 << 24) | v84 | (v82 << 8);
    HIDWORD(v103) = (461845907 * ((380141568 * v102) | ((-862048943 * v102) >> 17))) ^ *&buf[8];
    LODWORD(v103) = HIDWORD(v103);
    v104 = 5 * (v103 >> 19) - 430675100;
    *&buf[8] = v104;
    v105 = &v39[-buf[19] + 4];
    v106 = &v39[v83 - buf[19]];
    while (v105 < v106)
    {
      v107 = *v105;
      v105 += 4;
      HIDWORD(v108) = (461845907 * ((380141568 * v107) | ((-862048943 * v107) >> 17))) ^ v104;
      LODWORD(v108) = HIDWORD(v108);
      v104 = 5 * (v108 >> 19) - 430675100;
      *&buf[8] = v104;
    }

    if (v101 > 1)
    {
      if (v101 == 2)
      {
        *&buf[16] = *v106;
      }

      else
      {
        v109 = *v106;
        buf[18] = v106[2];
        *&buf[16] = v109;
      }
    }

    else if (v101)
    {
      buf[16] = *v106;
    }

    buf[19] = v101;
    goto LABEL_107;
  }

  if (*buf > 4000)
  {
    switch(*buf)
    {
      case 0xFA1:
        CC_SHA1_Update(&buf[8], v39, v40);
        break;
      case 0x10A0:
        CC_SHA256_Update(&buf[8], v39, v40);
        break;
      case 0x11A0:
        CC_SHA512_Update(&buf[8], v39, v40);
        break;
    }

    goto LABEL_108;
  }

  if (*buf != 3001)
  {
    if (*buf == 4000)
    {
      CC_MD5_Update(&buf[8], v39, v40);
    }

    goto LABEL_108;
  }

  if (!v39)
  {
    goto LABEL_108;
  }

  *&buf[8] += v40;
  if (v40 + DWORD2(v240) <= 0x1F)
  {
    memcpy(&v238 + DWORD2(v240) + 8, v39, v40);
    v81 = DWORD2(v240) + v41;
LABEL_82:
    DWORD2(v240) = v81;
    goto LABEL_108;
  }

  v94 = &v39[v40];
  if (DWORD2(v240))
  {
    memcpy(&v238 + DWORD2(v240) + 8, v39, (32 - DWORD2(v240)));
    *&buf[16] = 0x9E3779B185EBCA87 * __ROR8__(*&buf[16] - 0x3D4D51C2D82B14B1 * *(&v238 + 1), 33);
    *&buf[24] = 0x9E3779B185EBCA87 * __ROR8__(*&buf[24] - 0x3D4D51C2D82B14B1 * v239, 33);
    *&buf[32] = 0x9E3779B185EBCA87 * __ROR8__(*&buf[32] - 0x3D4D51C2D82B14B1 * *(&v239 + 1), 33);
    *&v238 = 0x9E3779B185EBCA87 * __ROR8__(v238 - 0x3D4D51C2D82B14B1 * v240, 33);
    v39 += (32 - DWORD2(v240));
    DWORD2(v240) = 0;
  }

  if ((v39 + 32) <= v94)
  {
    v96 = *&buf[24];
    v95 = *&buf[16];
    v98 = *&buf[32];
    v97 = v238;
    do
    {
      v95 = 0x9E3779B185EBCA87 * __ROR8__(v95 - 0x3D4D51C2D82B14B1 * *v39, 33);
      v96 = 0x9E3779B185EBCA87 * __ROR8__(v96 - 0x3D4D51C2D82B14B1 * *(v39 + 1), 33);
      v98 = 0x9E3779B185EBCA87 * __ROR8__(v98 - 0x3D4D51C2D82B14B1 * *(v39 + 2), 33);
      v97 = 0x9E3779B185EBCA87 * __ROR8__(v97 - 0x3D4D51C2D82B14B1 * *(v39 + 3), 33);
      v39 += 32;
    }

    while (v39 <= v94 - 32);
    *&buf[16] = v95;
    *&buf[24] = v96;
    *&buf[32] = v98;
    *&v238 = v97;
  }

  if (v39 < v94)
  {
    v81 = v94 - v39;
    __memcpy_chk();
    goto LABEL_82;
  }

LABEL_108:

  memset(&v249[8], 0, 64);
  *v249 = *buf;
  if (*buf <= 3000)
  {
    if (*buf <= 1999)
    {
      if (!*buf)
      {
        v142 = [MEMORY[0x277CCA890] currentHandler];
        v143 = [MEMORY[0x277CCACA8] stringWithUTF8String:"MSVHash _MSVHasherFinalize(MSVHasher * _Nonnull)"];
        [v142 handleFailureInFunction:v143 file:@"MSVHasher+Algorithms.h" lineNumber:156 description:@"Cannot finalize unknown hasher algorithm"];

        goto LABEL_155;
      }

      if (*buf != 1000)
      {
        goto LABEL_155;
      }

      v110 = (*&buf[8] + *&buf[16]) ^ __ROR8__(*&buf[16], 51);
      v111 = *&buf[24] + (*&buf[32] ^ v238);
      v112 = __ROR8__(*&buf[32] ^ v238, 48);
      v113 = (v111 ^ v112) + __ROR8__(*&buf[8] + *&buf[16], 32);
      v114 = v113 ^ __ROR8__(v111 ^ v112, 43);
      v115 = v111 + v110;
      v116 = v115 ^ __ROR8__(v110, 47);
      v117 = (v113 ^ v238) + v116;
      v118 = v117 ^ __ROR8__(v116, 51);
      v119 = (__ROR8__(v115, 32) ^ 0xFFLL) + v114;
      v120 = __ROR8__(v114, 48);
      v121 = __ROR8__(v117, 32) + (v119 ^ v120);
      v122 = v121 ^ __ROR8__(v119 ^ v120, 43);
      v123 = v118 + v119;
      v124 = v123 ^ __ROR8__(v118, 47);
      v125 = v124 + v121;
      v126 = v125 ^ __ROR8__(v124, 51);
      v127 = __ROR8__(v123, 32) + v122;
      v128 = __ROR8__(v122, 48);
      v129 = __ROR8__(v125, 32) + (v127 ^ v128);
      v130 = v129 ^ __ROR8__(v127 ^ v128, 43);
      v131 = v126 + v127;
      v132 = v131 ^ __ROR8__(v126, 47);
      v133 = v132 + v129;
      v134 = v133 ^ __ROR8__(v132, 51);
      v135 = __ROR8__(v131, 32) + v130;
      v136 = __ROR8__(v130, 48);
      v137 = __ROR8__(v133, 32) + (v135 ^ v136);
      v138 = v137 ^ __ROR8__(v135 ^ v136, 43);
      v139 = v134 + v135;
      *&buf[8] = v137;
      *&buf[16] = v139 ^ __ROR8__(v134, 47);
      *&buf[24] = __ROR8__(v139, 32);
      *&buf[32] = v138;
      v140 = *&buf[16] ^ v137 ^ *&buf[24] ^ v138;
      goto LABEL_142;
    }

    if (*buf != 2000)
    {
      if (*buf != 3000)
      {
        goto LABEL_155;
      }

      if (*&buf[12])
      {
        v141 = vaddvq_s32(vorrq_s8(vshlq_u32(*&buf[16], xmmword_2335115B0), vshlq_u32(*&buf[16], xmmword_2335115A0)));
      }

      else
      {
        v141 = *&buf[24] + 374761393;
      }

      v153 = *&buf[8] + v141;
      v154 = &buf[32];
      v155 = BYTE8(v238) & 0xF;
      if (v155 >= 4)
      {
        do
        {
          v156 = *v154;
          v154 += 4;
          HIDWORD(v157) = v153 - 1028477379 * v156;
          LODWORD(v157) = HIDWORD(v157);
          v153 = 668265263 * (v157 >> 15);
          v155 -= 4;
        }

        while (v155 > 3);
      }

      for (; v155; --v155)
      {
        v158 = *v154++;
        HIDWORD(v159) = v153 + 374761393 * v158;
        LODWORD(v159) = HIDWORD(v159);
        v153 = -1640531535 * (v159 >> 21);
      }

      v160 = (-2048144777 * (v153 ^ (v153 >> 15))) ^ ((-2048144777 * (v153 ^ (v153 >> 15))) >> 13);
      v161 = (-1028477379 * v160) ^ ((-1028477379 * v160) >> 16);
      goto LABEL_154;
    }

    switch(buf[19])
    {
      case 1:
        v144 = buf[16];
        break;
      case 2:
        v144 = *&buf[16];
        break;
      case 3:
        v144 = *&buf[16] | (buf[18] << 16);
        break;
      default:
        v162 = *&buf[8];
        goto LABEL_153;
    }

    v162 = (461845907 * ((380141568 * v144) | ((-862048943 * v144) >> 17))) ^ *&buf[8];
LABEL_153:
    v163 = -2048144789 * (v162 ^ *&buf[12] ^ ((v162 ^ *&buf[12]) >> 16));
    v161 = (-1028477387 * (v163 ^ (v163 >> 13))) ^ ((-1028477387 * (v163 ^ (v163 >> 13))) >> 16);
    *&buf[8] = v161;
LABEL_154:
    *&v249[8] = v161;
    goto LABEL_155;
  }

  if (*buf > 4000)
  {
    switch(*buf)
    {
      case 0xFA1:
        CC_SHA1_Final(&v249[8], &buf[8]);
        break;
      case 0x10A0:
        CC_SHA256_Final(&v249[8], &buf[8]);
        break;
      case 0x11A0:
        CC_SHA512_Final(&v249[8], &buf[8]);
        break;
    }

    goto LABEL_155;
  }

  if (*buf == 3001)
  {
    if (*&buf[8] < 0x20uLL)
    {
      v145 = *&buf[32] + 0x27D4EB2F165667C5;
    }

    else
    {
      v145 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * ((__ROR8__(*&buf[24], 57) + __ROR8__(*&buf[16], 63) + __ROR8__(*&buf[32], 52) + __ROR8__(v238, 46)) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * *&buf[16], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * *&buf[24], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * *&buf[32], 33)))) ^ (0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v238, 33)));
    }

    v146 = v145 + *&buf[8];
    v147 = &v238 + 1;
    v148 = buf[8] & 0x1F;
    if (v148 >= 8)
    {
      do
      {
        v149 = *v147++;
        v146 = 0x85EBCA77C2B2AE63 - 0x61C8864E7A143579 * __ROR8__((0x9E3779B185EBCA87 * __ROR8__(0xC2B2AE3D27D4EB4FLL * v149, 33)) ^ v146, 37);
        v148 -= 8;
      }

      while (v148 > 7);
    }

    if (v148 >= 4)
    {
      v150 = *v147;
      v147 = (v147 + 4);
      v146 = 0x165667B19E3779F9 - 0x3D4D51C2D82B14B1 * __ROR8__((0x9E3779B185EBCA87 * v150) ^ v146, 41);
      v148 -= 4;
    }

    for (; v148; --v148)
    {
      v151 = *v147;
      v147 = (v147 + 1);
      v146 = 0x9E3779B185EBCA87 * __ROR8__((0x27D4EB2F165667C5 * v151) ^ v146, 53);
    }

    v152 = 0x165667B19E3779F9 * ((0xC2B2AE3D27D4EB4FLL * (v146 ^ (v146 >> 33))) ^ ((0xC2B2AE3D27D4EB4FLL * (v146 ^ (v146 >> 33))) >> 29));
    v140 = v152 ^ HIDWORD(v152);
LABEL_142:
    *&v249[8] = v140;
    goto LABEL_155;
  }

  if (*buf == 4000)
  {
    CC_MD5_Final(&v249[8], &buf[8]);
  }

LABEL_155:
  v250[0] = *v249;
  v250[1] = *&v249[16];
  v250[2] = *&v249[32];
  v250[3] = *&v249[48];
  v251 = *&v249[64];
  if (*v249 > 3999)
  {
    if (*v249 > 4255)
    {
      if (*v249 == 4256)
      {
        v201 = malloc_type_calloc(0x40uLL, 1uLL, 0x100004077774924uLL);
        v170 = v201;
        v202 = 0;
        v203 = v250 + 8;
        do
        {
          v204 = *v203++;
          v205 = &v201[v202];
          *v205 = a0123456789abcd[v204 >> 4];
          v205[1] = a0123456789abcd[v204 & 0xF];
          v202 += 2;
        }

        while (v202 != 64);
        v175 = objc_alloc(MEMORY[0x277CCACA8]);
        v176 = 64;
      }

      else
      {
        if (*v249 != 4512)
        {
          goto LABEL_210;
        }

        v181 = malloc_type_calloc(0x80uLL, 1uLL, 0x100004077774924uLL);
        v170 = v181;
        v182 = 0;
        v183 = v250 + 8;
        do
        {
          v184 = *v183++;
          v185 = &v181[v182];
          *v185 = a0123456789abcd[v184 >> 4];
          v185[1] = a0123456789abcd[v184 & 0xF];
          v182 += 2;
        }

        while (v182 != 128);
        v175 = objc_alloc(MEMORY[0x277CCACA8]);
        v176 = 128;
      }
    }

    else if (*v249 == 4000)
    {
      v192 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      v170 = v192;
      v193 = 0;
      v194 = v250 + 8;
      do
      {
        v195 = *v194++;
        v196 = &v192[v193];
        *v196 = a0123456789abcd[v195 >> 4];
        v196[1] = a0123456789abcd[v195 & 0xF];
        v193 += 2;
      }

      while (v193 != 32);
      v175 = objc_alloc(MEMORY[0x277CCACA8]);
      v176 = 32;
    }

    else
    {
      if (*v249 != 4001)
      {
        goto LABEL_210;
      }

      v169 = malloc_type_calloc(0x28uLL, 1uLL, 0x100004077774924uLL);
      v170 = v169;
      v171 = 0;
      v172 = v250 + 8;
      do
      {
        v173 = *v172++;
        v174 = &v169[v171];
        *v174 = a0123456789abcd[v173 >> 4];
        v174[1] = a0123456789abcd[v173 & 0xF];
        v171 += 2;
      }

      while (v171 != 40);
      v175 = objc_alloc(MEMORY[0x277CCACA8]);
      v176 = 40;
    }

    v168 = [v175 initWithBytesNoCopy:v170 length:v176 encoding:4 freeWhenDone:1];
  }

  else
  {
    if (*v249 <= 2999)
    {
      if (*v249 == 1000)
      {
        v186 = *(&v250[0] + 1);
        if (*(&v250[0] + 1))
        {
          v187 = v253 + 1;
          quot = *(&v250[0] + 1);
          do
          {
            v189 = lldiv(quot, 10);
            quot = v189.quot;
            if (v189.rem >= 0)
            {
              LOBYTE(v190) = v189.rem;
            }

            else
            {
              v190 = -v189.rem;
            }

            *(v187 - 2) = v190 + 48;
            v191 = (v187 - 2);
            --v187;
          }

          while (v189.quot);
          if (v186 < 0)
          {
            *(v187 - 2) = 45;
            v191 = (v187 - 2);
          }

          v168 = CFStringCreateWithBytes(0, v191, v253 - v191, 0x8000100u, 0);
          goto LABEL_201;
        }

        goto LABEL_211;
      }

      if (*v249 == 2000)
      {
        v164 = DWORD2(v250[0]);
        if (DWORD2(v250[0]))
        {
          v165 = v253;
          do
          {
            v166 = ldiv(v164, 10);
            v164 = v166.quot;
            if (v166.rem >= 0)
            {
              LOBYTE(v167) = v166.rem;
            }

            else
            {
              v167 = -v166.rem;
            }

            *--v165 = v167 + 48;
          }

          while (v166.quot);
          v168 = CFStringCreateWithBytes(0, v165, v253 - v165, 0x8000100u, 0);
          goto LABEL_201;
        }

LABEL_211:
        v206 = @"0";
        goto LABEL_202;
      }

LABEL_210:
      v212 = [MEMORY[0x277CCA890] currentHandler];
      v213 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString * _Nonnull _MSVHashGetDigest(MSVHash)"];
      [v212 handleFailureInFunction:v213 file:@"MSVHasher+Algorithms.h" lineNumber:356 description:@"Cannot obtain digest from unknown hasher algorithm"];

      v206 = &stru_2848D4AE0;
      goto LABEL_202;
    }

    if (*v249 == 3000)
    {
      LODWORD(v252[0]) = bswap32(DWORD2(v250[0]));
      v197 = malloc_type_calloc(8uLL, 1uLL, 0x100004077774924uLL);
      v198 = 0;
      v199 = v197 + 1;
      do
      {
        v200 = *(v252 + v198);
        *(v199 - 1) = a0123456789abcd[v200 >> 4];
        *v199 = a0123456789abcd[v200 & 0xF];
        v199 += 2;
        ++v198;
      }

      while (v198 != 4);
      v168 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v197 length:8 encoding:4 freeWhenDone:1];
    }

    else
    {
      if (*v249 != 3001)
      {
        goto LABEL_210;
      }

      v252[0] = bswap64(*(&v250[0] + 1));
      v177 = malloc_type_calloc(0x10uLL, 1uLL, 0x100004077774924uLL);
      v178 = 0;
      v179 = v177 + 1;
      do
      {
        v180 = *(v252 + v178);
        *(v179 - 1) = a0123456789abcd[v180 >> 4];
        *v179 = a0123456789abcd[v180 & 0xF];
        v179 += 2;
        ++v178;
      }

      while (v178 != 8);
      v168 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v177 length:16 encoding:4 freeWhenDone:1];
    }
  }

LABEL_201:
  v206 = v168;
LABEL_202:

  v207 = self->_postAnchor;
  self->_postAnchor = &v206->isa;

  if (![(NSString *)self->_postAnchor isEqualToString:v221])
  {
    v208 = _MPLogCategoryAssistant();
    if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2334D9000, v208, OS_LOG_TYPE_DEFAULT, "Subscription Status Sync Handler (anchor): anchor changed, sync expected", buf, 2u);
    }
  }

  v209 = _MPLogCategoryAssistant();
  if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
  {
    v210 = self->_postAnchor;
    *buf = 138477827;
    *&buf[4] = v210;
    _os_log_impl(&dword_2334D9000, v209, OS_LOG_TYPE_DEFAULT, "Subscription Status Sync Handler (anchor): %{private}@", buf, 0xCu);
  }

  postAnchor = v216;
LABEL_209:

  _Block_object_dispose(&v229, 8);
  v211 = *MEMORY[0x277D85DE8];
}

@end