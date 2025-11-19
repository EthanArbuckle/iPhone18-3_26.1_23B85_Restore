void sub_1002A0D0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  sub_100005978((v48 - 96));
  if (*(v48 - 105) < 0)
  {
    operator delete(*(v48 - 128));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1000296E0((v48 - 176));
  _Unwind_Resume(a1);
}

uint64_t sub_1002A0FD0(uint64_t a1, const __CFDictionary *a2, int a3)
{
  v4 = a2;
  sub_10029F8C0(a1, a2);
  Value = CFDictionaryGetValue(v4, @"type-mask");
  buf.n128_u32[0] = 0;
  if (Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 == CFNumberGetTypeID()))
  {
    ctu::cf::assign(&buf, v7, v9);
    v10 = buf.n128_u32[0];
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 152) = v10;
  v11 = CFDictionaryGetValue(v4, @"tech-type-mask");
  v12 = v11;
  buf.n128_u32[0] = 0;
  if (v11)
  {
    v13 = CFGetTypeID(v11);
    if (v13 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&buf, v12, v14);
    }
  }

  *(a1 + 160) = buf.n128_u32[0];
  TypeID = CFDictionaryGetValue(v4, @"AllowedProtocolMask");
  v16 = TypeID;
  buf.n128_u32[0] = 0;
  if (!TypeID)
  {
    goto LABEL_13;
  }

  v17 = CFGetTypeID(TypeID);
  TypeID = CFNumberGetTypeID();
  if (v17 == TypeID)
  {
    TypeID = ctu::cf::assign(&buf, v16, v18);
  }

  if (buf.n128_u32[0])
  {
    *(a1 + 176) = buf.n128_u32[0];
    *(a1 + 180) = 0;
  }

  else
  {
LABEL_13:
    DataUtils::supportDualIPAPNDefault(TypeID);
    sub_1002A215C((a1 + 144), *(a1 + 152), &buf);
    CIPFamily::operator=();
    *(a1 + 180) = 1;
    CIPFamily::~CIPFamily(&buf);
  }

  v19 = CFDictionaryGetValue(v4, @"AllowedProtocolMaskInRoaming");
  v20 = v19;
  buf.n128_u32[0] = 0;
  if (!v19)
  {
    goto LABEL_19;
  }

  v21 = CFGetTypeID(v19);
  if (v21 == CFNumberGetTypeID())
  {
    ctu::cf::assign(&buf, v20, v22);
  }

  if (buf.n128_u32[0])
  {
    *(a1 + 192) = buf.n128_u32[0];
    *(a1 + 196) = 0;
  }

  else
  {
LABEL_19:
    sub_1002A215C((a1 + 144), *(a1 + 152), &buf);
    CIPFamily::operator=();
    *(a1 + 196) = 1;
    CIPFamily::~CIPFamily(&buf);
  }

  v23 = CFDictionaryGetValue(v4, @"AllowedProtocolMaskInDomesticRoaming");
  v24 = v23;
  if (v23)
  {
    v25 = CFGetTypeID(v23);
    if (v25 == CFNumberGetTypeID())
    {
      buf.n128_u32[0] = 0;
      ctu::cf::assign(&buf, v24, v26);
      v27 = buf.n128_u32[0];
      if ((*(a1 + 216) & 1) == 0)
      {
        *(a1 + 216) = 1;
      }

      *(a1 + 208) = v27;
      *(a1 + 212) = 0;
    }
  }

  if (a3)
  {
    v28 = CFDictionaryGetValue(v4, @"InactivityTimer");
    v29 = v28;
    buf.n128_u32[0] = 0;
    if (v28)
    {
      v30 = CFGetTypeID(v28);
      if (v30 == CFNumberGetTypeID())
      {
        ctu::cf::assign(&buf, v29, v31);
      }
    }

    *(a1 + 224) = buf.n128_u32[0];
    v32 = CFDictionaryGetValue(v4, @"TechnologyMask");
    v33 = v32;
    buf.n128_u32[0] = 0;
    if (v32)
    {
      v34 = CFGetTypeID(v32);
      if (v34 == CFNumberGetTypeID())
      {
        ctu::cf::assign(&buf, v33, v35);
      }
    }

    *(a1 + 228) = buf.n128_u32[0];
  }

  v36 = CFDictionaryGetValue(v4, @"AllowNoDNS");
  v37 = v36;
  buf.n128_u32[0] = 0;
  if (v36)
  {
    v38 = CFGetTypeID(v36);
    if (v38 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&buf, v37, v39);
    }
  }

  *(a1 + 232) = buf.n128_u32[0] == 1;
  v40 = CFDictionaryGetValue(v4, @"SupportSwitchOver");
  v41 = v40;
  buf.n128_u8[0] = 0;
  if (v40)
  {
    v42 = CFGetTypeID(v40);
    if (v42 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v41, v43);
    }
  }

  *(a1 + 233) = buf.n128_u8[0];
  v44 = CFDictionaryGetValue(v4, @"AlwaysOnPDU");
  v45 = v44;
  buf.n128_u8[0] = 0;
  if (v44)
  {
    v46 = CFGetTypeID(v44);
    if (v46 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v45, v47);
    }
  }

  *(a1 + 234) = buf.n128_u8[0];
  v48 = CFDictionaryGetValue(v4, @"SuppressPdnTearDown");
  v49 = v48;
  buf.n128_u8[0] = 0;
  if (v48)
  {
    v50 = CFGetTypeID(v48);
    if (v50 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v49, v51);
    }
  }

  *(a1 + 235) = buf.n128_u8[0];
  v52 = CFDictionaryGetValue(v4, @"Support5GSaHandOver");
  v53 = v52;
  buf.n128_u8[0] = 0;
  if (v52)
  {
    v54 = CFGetTypeID(v52);
    if (v54 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v53, v55);
    }
  }

  *(a1 + 236) = buf.n128_u8[0];
  v56 = CFDictionaryGetValue(v4, @"DontSuspend");
  v57 = v56;
  if (v56)
  {
    buf.n128_u8[0] = 0;
    v58 = CFGetTypeID(v56);
    if (v58 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v57, v59);
    }

    *(a1 + 237) = buf.n128_u8[0] | 0x100;
  }

  v60 = CFDictionaryGetValue(v4, @"SuspendOnBBCall");
  v61 = v60;
  if (v60)
  {
    buf.n128_u8[0] = 0;
    v62 = CFGetTypeID(v60);
    if (v62 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v61, v63);
    }

    *(a1 + 239) = buf.n128_u8[0] | 0x100;
  }

  v64 = CFDictionaryGetValue(v4, @"PcoContainerId");
  v65 = v64;
  buf.n128_u16[0] = 0;
  if (v64)
  {
    v66 = CFGetTypeID(v64);
    if (v66 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&buf, v65, v67);
    }
  }

  *(a1 + 242) = buf.n128_u16[0];
  v68 = CFDictionaryGetValue(v4, @"ProxyConfiguration");
  v69 = v68;
  if (v68)
  {
    v70 = CFGetTypeID(v68);
    if (v70 == CFDictionaryGetTypeID())
    {
      buf.n128_u64[0] = v69;
      sub_1002A2218((a1 + 248), &buf);
    }
  }

  v71 = CFDictionaryGetValue(v4, @"UseNetworkMTU");
  v72 = v71;
  buf.n128_u8[0] = 0;
  if (v71)
  {
    v73 = CFGetTypeID(v71);
    if (v73 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v72, v74);
    }
  }

  *(a1 + 256) = buf.n128_u8[0];
  if (CFDictionaryGetValue(v4, @"alt-name"))
  {
    ctu::cf::assign();
    buf.n128_u64[0] = 0;
    *(buf.n128_u64 + 7) = 0;
    memset(&theArray[1], 0, 24);
    if (*(a1 + 312) == 1)
    {
      if (*(a1 + 311) < 0)
      {
        operator delete(*(a1 + 288));
        v143 = buf.n128_u64[0];
        *(a1 + 288) = 0;
        *(a1 + 296) = v143;
      }

      else
      {
        v75 = buf.n128_u64[0];
        *(a1 + 288) = 0;
        *(a1 + 296) = v75;
      }

      *(a1 + 303) = *(buf.n128_u64 + 7);
      *(a1 + 311) = 0;
    }

    else
    {
      v76 = buf.n128_u64[0];
      *(a1 + 288) = 0;
      *(a1 + 296) = v76;
      *(a1 + 303) = *(buf.n128_u64 + 7);
      *(a1 + 311) = 0;
      *(a1 + 312) = 1;
    }
  }

  v77 = CFDictionaryGetValue(v4, @"enableXLAT464");
  v78 = v77;
  buf.n128_u8[0] = 0;
  if (v77)
  {
    v79 = CFGetTypeID(v77);
    if (v79 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&buf, v78, v80);
    }
  }

  *(a1 + 384) = buf.n128_u8[0];
  sub_1002A226C((a1 + 264));
  if (CFDictionaryGetValue(v4, @"NoCellularReconnectCauseCodes"))
  {
    theArray[0] = 0;
    buf.n128_u64[0] = CFDictionaryGetValue(v4, @"NoCellularReconnectCauseCodes");
    sub_1001FA5E0(theArray, &buf);
    if (theArray[0])
    {
      Count = CFArrayGetCount(theArray[0]);
      v82 = Count;
      if (Count >= 1)
      {
        v83 = 0;
        v145 = Count;
        v146 = v4;
        while (1)
        {
          theDict = 0;
          buf.n128_u64[0] = CFArrayGetValueAtIndex(theArray[0], v83);
          sub_100010180(&theDict, &buf);
          if (!theDict)
          {
            goto LABEL_157;
          }

          v84 = CFDictionaryGetValue(theDict, @"Type");
          v85 = theDict;
          if (!v84)
          {
            v91 = 1;
            goto LABEL_94;
          }

          CFDictionaryGetValue(theDict, @"Type");
          buf = 0uLL;
          v158 = 0;
          ctu::cf::assign();
          v154 = v158;
          *__p = buf;
          v86 = HIBYTE(v158);
          if (v158 < 0)
          {
            v86 = __p[1];
          }

          if (v86 == 7)
          {
            break;
          }

          if (v86 == 5)
          {
            v87 = __p[0];
            if (v158 >= 0)
            {
              v87 = __p;
            }

            v88 = *v87;
            v89 = *(v87 + 4);
            if (v88 == 1347438387 && v89 == 50)
            {
              v91 = 2;
              if ((SHIBYTE(v158) & 0x80000000) == 0)
              {
                goto LABEL_92;
              }

              goto LABEL_91;
            }
          }

          v91 = 1;
          if (SHIBYTE(v158) < 0)
          {
            goto LABEL_91;
          }

LABEL_92:
          v85 = theDict;
LABEL_94:
          if (CFDictionaryGetValue(v85, @"RecoversOnAirplaneMode"))
          {
            v92 = CFDictionaryGetValue(theDict, @"RecoversOnAirplaneMode");
            v93 = v92;
            buf.n128_u8[0] = 0;
            if (v92)
            {
              v94 = CFGetTypeID(v92);
              if (v94 == CFBooleanGetTypeID())
              {
                ctu::cf::assign(&buf, v93, v95);
              }
            }

            v96 = buf.n128_u8[0];
          }

          else
          {
            v96 = 0;
          }

          if (CFDictionaryGetValue(theDict, @"RecoversOnWiFiAPChange"))
          {
            v97 = CFDictionaryGetValue(theDict, @"RecoversOnWiFiAPChange");
            v98 = v97;
            buf.n128_u8[0] = 0;
            if (v97)
            {
              v99 = CFGetTypeID(v97);
              if (v99 == CFBooleanGetTypeID())
              {
                ctu::cf::assign(&buf, v98, v100);
              }
            }

            v101 = buf.n128_u8[0];
          }

          else
          {
            v101 = 0;
          }

          if (CFDictionaryGetValue(theDict, @"NumTriesAllowed"))
          {
            v102 = CFDictionaryGetValue(theDict, @"NumTriesAllowed");
            v103 = v102;
            buf.n128_u32[0] = 0;
            if (v102)
            {
              v104 = CFGetTypeID(v102);
              if (v104 == CFNumberGetTypeID())
              {
                ctu::cf::assign(&buf, v103, v105);
              }
            }

            v106 = buf.n128_u32[0];
          }

          else
          {
            v106 = 1;
          }

          if (CFDictionaryGetValue(theDict, @"Timeout"))
          {
            v107 = CFDictionaryGetValue(theDict, @"Timeout");
            v108 = v107;
            buf.n128_u64[0] = 0;
            if (v107)
            {
              v109 = CFGetTypeID(v107);
              if (v109 == CFNumberGetTypeID())
              {
                ctu::cf::assign(&buf, v108, v110);
              }
            }

            v111 = buf.n128_u64[0];
          }

          else
          {
            v111 = 0;
          }

          __p[0] = 0;
          __p[1] = 0;
          v154 = 0;
          v112 = CFDictionaryGetValue(theDict, @"CauseCodes");
          v113 = v112;
          if (v112)
          {
            v114 = CFGetTypeID(v112);
            if (v114 == CFNumberGetTypeID())
            {
              buf.n128_u64[0] = 0;
              v152 = v113;
              sub_1002AF4F0(&buf, &v152);
              if (buf.n128_u64[0])
              {
                LODWORD(v152) = 0;
                ctu::cf::assign(&v152, buf.n128_u64[0], v115);
                LODWORD(ValueAtIndex) = v152;
                sub_1001FDFFC(__p, &ValueAtIndex);
              }

              sub_100029A48(&buf);
            }

            else
            {
              v116 = CFGetTypeID(v113);
              if (v116 == CFArrayGetTypeID())
              {
                buf.n128_u64[0] = 0;
                v152 = v113;
                sub_1001FA5E0(&buf, &v152);
                if (buf.n128_u64[0])
                {
                  v117 = CFArrayGetCount(buf.n128_u64[0]);
                  if (v117 >= 1)
                  {
                    for (i = 0; i != v117; ++i)
                    {
                      v152 = 0;
                      ValueAtIndex = CFArrayGetValueAtIndex(buf.n128_u64[0], i);
                      sub_1002AF4F0(&v152, &ValueAtIndex);
                      if (v152)
                      {
                        LODWORD(ValueAtIndex) = 0;
                        ctu::cf::assign(&ValueAtIndex, v152, v119);
                        v150 = ValueAtIndex;
                        sub_1001FDFFC(__p, &v150);
                      }

                      sub_100029A48(&v152);
                    }
                  }
                }

                sub_100010250(&buf);
              }

              else
              {
                v124 = *(a1 + 40);
                if (os_log_type_enabled(v124, OS_LOG_TYPE_DEFAULT))
                {
                  buf.n128_u32[0] = 136315138;
                  *(buf.n128_u64 + 4) = "fromDict";
                  _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "#I %s: Wrong data type in CauseCodes", &buf, 0xCu);
                }
              }
            }
          }

          v125 = __p[0];
          if (__p[1] == __p[0])
          {
            v82 = v145;
            v4 = v146;
            if (!__p[0])
            {
              goto LABEL_157;
            }
          }

          else
          {
            v148 = 0;
            v149 = 0;
            v147 = 0;
            sub_10024064C(&v147, __p[0], __p[1], (__p[1] - __p[0]) >> 2);
            buf.n128_u32[0] = v91;
            buf.n128_u8[4] = v96 & 1;
            buf.n128_u32[2] = v106;
            v158 = v111;
            v160 = 0;
            v159 = 0uLL;
            sub_10024064C(&v159, v147, v148, (v148 - v147) >> 2);
            v161 = v101 & 1;
            v126 = *(a1 + 272);
            v82 = v145;
            v4 = v146;
            if (v126 >= *(a1 + 280))
            {
              v128 = sub_1002A64AC((a1 + 264), &buf);
              v129 = v159.n128_u64[0];
              *(a1 + 272) = v128;
              if (v129)
              {
                v159.n128_u64[1] = v129;
                operator delete(v129);
              }
            }

            else
            {
              v127 = v158;
              *v126 = buf;
              v126[1].n128_u64[0] = v127;
              v126[1].n128_u64[1] = 0;
              v126[2].n128_u64[0] = 0;
              v126[2].n128_u64[1] = 0;
              *(v126 + 24) = v159;
              v126[2].n128_u64[1] = v160;
              v159 = 0uLL;
              v160 = 0;
              v126[3].n128_u8[0] = v161;
              *(a1 + 272) = v126 + 56;
            }

            if (v147)
            {
              v148 = v147;
              operator delete(v147);
            }

            v125 = __p[0];
            if (!__p[0])
            {
              goto LABEL_157;
            }
          }

          __p[1] = v125;
          operator delete(v125);
LABEL_157:
          sub_10001021C(&theDict);
          if (++v83 == v82)
          {
            goto LABEL_161;
          }
        }

        v120 = __p;
        if (v158 < 0)
        {
          v120 = __p[0];
        }

        v121 = bswap32(*v120);
        v122 = 1315925555;
        if (v121 == 1315925555 && (v121 = bswap32(*(v120 + 3)), v122 = 860311632, v121 == 860311632))
        {
          v123 = 0;
        }

        else if (v121 < v122)
        {
          v123 = -1;
        }

        else
        {
          v123 = 1;
        }

        if (v123)
        {
          v91 = 1;
        }

        else
        {
          v91 = 3;
        }

        if ((SHIBYTE(v158) & 0x80000000) == 0)
        {
          goto LABEL_92;
        }

LABEL_91:
        operator delete(__p[0]);
        goto LABEL_92;
      }
    }

LABEL_161:
    sub_100010250(theArray);
  }

  if (*(a1 + 344) == 1)
  {
    if (*(a1 + 343) < 0)
    {
      operator delete(*(a1 + 320));
    }

    *(a1 + 344) = 0;
  }

  if (CFDictionaryGetValue(v4, @"OrigApn"))
  {
    ctu::cf::assign();
    buf.n128_u64[0] = 0;
    *(buf.n128_u64 + 7) = 0;
    if (*(a1 + 344) == 1)
    {
      if (*(a1 + 343) < 0)
      {
        operator delete(*(a1 + 320));
        v144 = buf.n128_u64[0];
        *(a1 + 320) = 0;
        *(a1 + 328) = v144;
      }

      else
      {
        v130 = buf.n128_u64[0];
        *(a1 + 320) = 0;
        *(a1 + 328) = v130;
      }

      *(a1 + 335) = *(buf.n128_u64 + 7);
      *(a1 + 343) = 0;
    }

    else
    {
      v131 = buf.n128_u64[0];
      *(a1 + 320) = 0;
      *(a1 + 328) = v131;
      *(a1 + 335) = *(buf.n128_u64 + 7);
      *(a1 + 343) = 0;
      *(a1 + 344) = 1;
    }
  }

  if (*(a1 + 376) == 1)
  {
    v132 = *(a1 + 352);
    if (v132)
    {
      *(a1 + 360) = v132;
      operator delete(v132);
    }

    *(a1 + 376) = 0;
  }

  v133 = CFDictionaryGetValue(v4, @"APNSwitchCauseCodes");
  v134 = v133;
  if (v133)
  {
    v135 = CFGetTypeID(v133);
    if (v135 == CFNumberGetTypeID())
    {
      __p[0] = 0;
      buf.n128_u64[0] = v134;
      sub_1002AF4F0(__p, &buf);
      if (__p[0])
      {
        buf = 0uLL;
        v158 = 0;
        sub_1001E9734(a1 + 352, &buf);
        if (buf.n128_u64[0])
        {
          buf.n128_u64[1] = buf.n128_u64[0];
          operator delete(buf.n128_u64[0]);
        }

        if ((*(a1 + 376) & 1) == 0)
        {
          sub_1000D1644();
        }

        buf.n128_u32[0] = 0;
        ctu::cf::assign(&buf, __p[0], v136);
        LODWORD(theArray[0]) = buf.n128_u32[0];
        sub_1001FDFFC((a1 + 352), theArray);
      }

      sub_100029A48(__p);
    }

    else
    {
      v137 = CFGetTypeID(v134);
      if (v137 == CFArrayGetTypeID())
      {
        __p[0] = 0;
        buf.n128_u64[0] = v134;
        sub_1001FA5E0(__p, &buf);
        if (__p[0])
        {
          buf = 0uLL;
          v158 = 0;
          sub_1001E9734(a1 + 352, &buf);
          if (buf.n128_u64[0])
          {
            buf.n128_u64[1] = buf.n128_u64[0];
            operator delete(buf.n128_u64[0]);
          }

          v138 = CFArrayGetCount(__p[0]);
          if (v138 >= 1)
          {
            for (j = 0; j != v138; ++j)
            {
              buf.n128_u64[0] = 0;
              theArray[0] = CFArrayGetValueAtIndex(__p[0], j);
              sub_1002AF4F0(&buf, theArray);
              if (buf.n128_u64[0])
              {
                if ((*(a1 + 376) & 1) == 0)
                {
                  sub_1000D1644();
                }

                LODWORD(theArray[0]) = 0;
                ctu::cf::assign(theArray, buf.n128_u64[0], v140);
                LODWORD(theDict) = theArray[0];
                sub_1001FDFFC((a1 + 352), &theDict);
              }

              sub_100029A48(&buf);
            }
          }
        }

        sub_100010250(__p);
      }

      else
      {
        v141 = *(a1 + 40);
        if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
        {
          buf.n128_u32[0] = 136315138;
          *(buf.n128_u64 + 4) = "fromDict";
          _os_log_impl(&_mh_execute_header, v141, OS_LOG_TYPE_DEFAULT, "#I %s: Wrong data type in APNSwitchCauseCodes", &buf, 0xCu);
        }
      }
    }
  }

  return 1;
}

uint64_t sub_1002A215C@<X0>(DataUtils *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  result = DataUtils::supportDualIPAPNDefault(a1);
  if ((result & 1) != 0 || *a1 > 2u)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    v7 = DataUtils::defaultIPFamily(result);
    CIPFamily::CIPFamily(a3, v7);
    if ((a2 & 0x20000) != 0)
    {
      *(a3 + 8) = 3;
      *(a3 + 12) = 0;
    }

    if ((a2 & 0x40000) != 0)
    {
      *(a3 + 8) = 3;
      *(a3 + 12) = 0;
    }

    return CIPFamily::setDefault(a3);
  }

  else
  {
    *(a3 + 12) = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

const void **sub_1002A2218(const void **a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    CFRetain(*a2);
  }

  v4 = *a1;
  *a1 = v3;
  v6 = v4;
  sub_10001021C(&v6);
  return a1;
}

void sub_1002A226C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

const void **sub_1002A22BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_10029FEBC(a1, 0, &v4);
  sub_1002A2318(&v4, a2);
  return sub_10001021C(&v4);
}

void sub_1002A2304(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

const void **sub_1002A2318@<X0>(CFDictionaryRef *a1@<X0>, void *a2@<X8>)
{
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *a1);
  v14 = 0;
  v15 = MutableCopy;
  v18[2] = *off_101E37FB8;
  v18[3] = *off_101E37FC8;
  v18[4] = *off_101E37FD8;
  v18[5] = *off_101E37FE8;
  v18[0] = *off_101E37F98;
  v18[1] = *off_101E37FA8;
  __p = 0;
  v13 = 0;
  sub_10004EBE4(&__p, v18, &v19, 0xCuLL);
  v5 = __p;
  v6 = v13;
  if (__p != v13)
  {
    do
    {
      v7 = v15;
      v8 = *v5;
      v16 = 0;
      v17 = 0;
      if (ctu::cf::convert_copy(&v17, v8, 0x8000100, kCFAllocatorDefault, v4))
      {
        v9 = v16;
        v16 = v17;
        *&v18[0] = v9;
        sub_100005978(v18);
      }

      key = v16;
      v16 = 0;
      sub_100005978(&v16);
      CFDictionaryRemoveValue(v7, key);
      sub_100005978(&key);
      ++v5;
    }

    while (v5 != v6);
  }

  sub_100010180(a2, &v15);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return sub_1000296E0(&v15);
}

void sub_1002A2474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, uint64_t a13, const void *a14, __int16 a15, char a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000296E0(&a14);
  _Unwind_Resume(a1);
}

const char *sub_1002A24BC(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "UI";
  }

  else
  {
    return off_101E385D8[a1 - 1];
  }
}

void sub_1002A24E4(uint64_t a1, os_log_t *a2)
{
  v3 = a1;
  v4 = *(a1 + 216);
  v5 = *a2;
  v6 = os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT);
  if (v4 == 1)
  {
    if (!v6)
    {
      goto LABEL_105;
    }

    v7 = *(v3 + 144) - 1;
    if (v7 > 4)
    {
      v8 = "UI";
    }

    else
    {
      v8 = off_101E385D8[v7];
    }

    v11 = *(v3 + 148);
    v12 = v3;
    sub_10029FAC8(v133);
    if (v136 >= 0)
    {
      v13 = v133;
    }

    else
    {
      v13 = *v133;
    }

    asStringMask(v131, *(v12 + 152));
    if (v132 >= 0)
    {
      v14 = v131;
    }

    else
    {
      v14 = v131[0];
    }

    v15 = *(v12 + 152);
    asStringMask(v129, *(v12 + 160));
    if (v130 >= 0)
    {
      v16 = v129;
    }

    else
    {
      v16 = v129[0];
    }

    v112 = v16;
    v114 = *(v12 + 160);
    CIPFamily::asString(v127, (v12 + 168));
    if (v128 >= 0)
    {
      v17 = v127;
    }

    else
    {
      v17 = v127[0];
    }

    v110 = v17;
    CIPFamily::asString(v125, (v12 + 184));
    if (v126 >= 0)
    {
      v18 = v125;
    }

    else
    {
      v18 = v125[0];
    }

    v108 = v18;
    CIPFamily::asString(v123, (v12 + 200));
    if (v124 >= 0)
    {
      v19 = v123;
    }

    else
    {
      v19 = v123[0];
    }

    v104 = v19;
    v106 = *(v12 + 224);
    WirelessTechnologyList::asString(__p, (v12 + 228));
    v102 = v14;
    if (v122 >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    v98 = v20;
    v100 = *(v12 + 228);
    v96 = asStringBool(*(v12 + 232));
    v94 = asStringBool(*(v12 + 233));
    v92 = asStringBool();
    v90 = asStringBool();
    v80 = *(v12 + 242);
    v22 = *(v12 + 248);
    log = v5;
    v88 = v8;
    v86 = v11;
    v82 = v15;
    v84 = v13;
    if (v22)
    {
      ctu::cf_to_xpc(&v118, v22, v21);
      xpc::object::to_string(object, &v118);
      if (v120 >= 0)
      {
        v23 = object;
      }

      else
      {
        v23 = object[0];
      }
    }

    else
    {
      v23 = "";
    }

    v79 = v23;
    v77 = asStringBool(*(v12 + 256));
    v45 = v12;
    if (*(v12 + 312) == 1)
    {
      v46 = (v12 + 288);
      if (*(v12 + 311) < 0)
      {
        v46 = *v46;
      }

      v75 = v46;
    }

    else
    {
      v75 = "no alt name";
    }

    v73 = asStringBool(*(v12 + 384));
    if (*(v12 + 344) == 1)
    {
      v47 = (v12 + 320);
      if (*(v12 + 343) < 0)
      {
        v47 = *v47;
      }
    }

    else
    {
      v47 = "no orig apn";
    }

    if (*(v12 + 376) == 1)
    {
      v48 = (*(v12 + 360) - *(v12 + 352)) >> 2;
    }

    else
    {
      LODWORD(v48) = 0;
    }

    v49 = *(v45 + 264);
    v50 = *(v45 + 272);
    v51 = asStringBool(*(v45 + 234));
    v52 = asStringBool(*(v45 + 236));
    v53 = asStringBool(*(v45 + 235));
    *buf = 136322050;
    *&buf[4] = v88;
    *&buf[12] = 1024;
    *&buf[14] = v86;
    *&buf[18] = 2082;
    *&buf[20] = v84;
    *&buf[28] = 2082;
    *&buf[30] = v102;
    *&buf[38] = 2048;
    v141 = v82;
    *v142 = 2082;
    *&v142[2] = v112;
    v143 = 2048;
    v144 = v114;
    v145 = 2082;
    v146 = v110;
    v147 = 2082;
    v148 = v108;
    v149 = 2082;
    *v150 = v104;
    *&v150[8] = 1024;
    *&v150[10] = v106;
    v151 = 2082;
    *v152 = v98;
    *&v152[8] = 1024;
    *&v152[10] = v100;
    v153 = 2080;
    v154 = v96;
    v155 = 2080;
    v156 = v94;
    v157 = 2080;
    v158 = v92;
    v159 = 2080;
    *v160 = v90;
    *&v160[8] = 1024;
    *&v160[10] = v80;
    v161 = 2080;
    v162 = v79;
    v163 = 2080;
    v164 = v77;
    v165 = 2080;
    v166 = v75;
    v167 = 2080;
    *v168 = v73;
    *&v168[8] = 1024;
    *&v168[10] = -1227133513 * ((v50 - v49) >> 3);
    v169 = 2080;
    *v170 = v47;
    *&v170[8] = 1024;
    *&v170[10] = v48;
    v171 = 2080;
    v172 = v51;
    v173 = 2080;
    v174 = v52;
    v175 = 2080;
    v176 = v53;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t APNInfo: src: %s.%d, base: %{public}s, type-mask: %{public}s (0x%llx), tech-type-mask: %{public}s (0x%llx), AllowedProtocolMask: %{public}s, AllowedProtocolMaskInRoaming: %{public}s, AllowedProtocolMaskInDomesticRoaming: %{public}s, inactivity: %u, tech-mask: %{public}s (0x%x), allow no DNS: %s, support SwitchOver: %s, don't suspend context: %s, suspend context on BBCall: %s, Pco Container Id: %u, proxy:{%s}, use network MTU: %s, alt-name:'%s', xlat464: %s, blockers: %u, OrigApn:'%s', APNSwitchCauseCodes: %u, alwaysOnPDU: %s, support5GSaHandOver: %s, SuppressPdnTearDown: %s", buf, 0x102u);
    v3 = v45;
    if (v22)
    {
      if (v120 < 0)
      {
        operator delete(object[0]);
      }

      xpc_release(v118);
    }

    if (v122 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_105;
    }

    v9 = *(v3 + 144) - 1;
    if (v9 > 4)
    {
      v10 = "UI";
    }

    else
    {
      v10 = off_101E385D8[v9];
    }

    v24 = *(v3 + 148);
    v25 = v3;
    sub_10029FAC8(v133);
    if (v136 >= 0)
    {
      v26 = v133;
    }

    else
    {
      v26 = *v133;
    }

    asStringMask(v131, *(v25 + 152));
    if (v132 >= 0)
    {
      v27 = v131;
    }

    else
    {
      v27 = v131[0];
    }

    v28 = *(v25 + 152);
    asStringMask(v129, *(v25 + 160));
    if (v130 >= 0)
    {
      v29 = v129;
    }

    else
    {
      v29 = v129[0];
    }

    v113 = v29;
    v115 = *(v25 + 160);
    CIPFamily::asString(v127, (v25 + 168));
    if (v128 >= 0)
    {
      v30 = v127;
    }

    else
    {
      v30 = v127[0];
    }

    v111 = v30;
    CIPFamily::asString(v125, (v25 + 184));
    if (v126 >= 0)
    {
      v31 = v125;
    }

    else
    {
      v31 = v125[0];
    }

    v107 = v31;
    v109 = *(v25 + 224);
    WirelessTechnologyList::asString(v123, (v25 + 228));
    v105 = v27;
    if (v124 >= 0)
    {
      v32 = v123;
    }

    else
    {
      v32 = v123[0];
    }

    v101 = v32;
    v103 = *(v25 + 228);
    v99 = asStringBool(*(v25 + 232));
    v97 = asStringBool(*(v25 + 233));
    v95 = asStringBool();
    v93 = asStringBool();
    v83 = *(v25 + 242);
    v34 = *(v25 + 248);
    loga = v5;
    v91 = v10;
    v89 = v24;
    v85 = v28;
    v87 = v26;
    if (v34)
    {
      ctu::cf_to_xpc(object, v34, v33);
      xpc::object::to_string(__p, object);
      if (v122 >= 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }
    }

    else
    {
      v35 = "";
    }

    v81 = v35;
    v78 = asStringBool(*(v25 + 256));
    v36 = v25;
    if (*(v25 + 312) == 1)
    {
      v37 = (v25 + 288);
      if (*(v25 + 311) < 0)
      {
        v37 = *v37;
      }

      v76 = v37;
    }

    else
    {
      v76 = "no alt name";
    }

    v74 = asStringBool(*(v25 + 384));
    if (*(v25 + 344) == 1)
    {
      v38 = (v25 + 320);
      if (*(v25 + 343) < 0)
      {
        v38 = *v38;
      }
    }

    else
    {
      v38 = "no orig apn";
    }

    if (*(v25 + 376) == 1)
    {
      v39 = (*(v25 + 360) - *(v25 + 352)) >> 2;
    }

    else
    {
      LODWORD(v39) = 0;
    }

    v40 = *(v36 + 264);
    v41 = *(v36 + 272);
    v42 = asStringBool(*(v36 + 234));
    v43 = asStringBool(*(v36 + 236));
    v44 = asStringBool(*(v36 + 235));
    *buf = 136321794;
    *&buf[4] = v91;
    *&buf[12] = 1024;
    *&buf[14] = v89;
    *&buf[18] = 2082;
    *&buf[20] = v87;
    *&buf[28] = 2082;
    *&buf[30] = v105;
    *&buf[38] = 2048;
    v141 = v85;
    *v142 = 2082;
    *&v142[2] = v113;
    v143 = 2048;
    v144 = v115;
    v145 = 2082;
    v146 = v111;
    v147 = 2082;
    v148 = v107;
    v149 = 1024;
    *v150 = v109;
    *&v150[4] = 2082;
    *&v150[6] = v101;
    v151 = 1024;
    *v152 = v103;
    *&v152[4] = 2080;
    *&v152[6] = v99;
    v153 = 2080;
    v154 = v97;
    v155 = 2080;
    v156 = v95;
    v157 = 2080;
    v158 = v93;
    v159 = 1024;
    *v160 = v83;
    *&v160[4] = 2080;
    *&v160[6] = v81;
    v161 = 2080;
    v162 = v78;
    v163 = 2080;
    v164 = v76;
    v165 = 2080;
    v166 = v74;
    v167 = 1024;
    *v168 = -1227133513 * ((v41 - v40) >> 3);
    *&v168[4] = 2080;
    *&v168[6] = v38;
    v169 = 1024;
    *v170 = v39;
    *&v170[4] = 2080;
    *&v170[6] = v42;
    v171 = 2080;
    v172 = v43;
    v173 = 2080;
    v174 = v44;
    _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t APNInfo: src: %s.%d, base: %{public}s, type-mask: %{public}s (0x%llx), tech-type-mask: %{public}s (0x%llx), AllowedProtocolMask: %{public}s, AllowedProtocolMaskInRoaming: %{public}s, inactivity: %u, tech-mask: %{public}s (0x%x), allow no DNS: %s, support SwitchOver: %s, don't suspend context: %s, suspend context on BBCall: %s, Pco Container Id: %u, proxy:{%s}, use network MTU: %s, alt-name:'%s', xlat464: %s, blockers: %u, OrigApn:'%s', APNSwitchCauseCodes: %u, alwaysOnPDU: %s, support5GSaHandOver: %s, SuppressPdnTearDown: %s", buf, 0xF8u);
    v3 = v36;
    if (v34)
    {
      if (v122 < 0)
      {
        operator delete(__p[0]);
      }

      xpc_release(object[0]);
    }
  }

  if (v124 < 0)
  {
    operator delete(v123[0]);
  }

  if (v126 < 0)
  {
    operator delete(v125[0]);
  }

  if (v128 < 0)
  {
    operator delete(v127[0]);
  }

  if (v130 < 0)
  {
    operator delete(v129[0]);
  }

  if (v132 < 0)
  {
    operator delete(v131[0]);
  }

  if (SHIBYTE(v136) < 0)
  {
    operator delete(*v133);
  }

LABEL_105:
  v54 = *(v3 + 264);
  v55 = *(v3 + 272);
  if (v55 != v54)
  {
    v56 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t APNInfo: blockers: {", buf, 2u);
      v54 = *(v3 + 264);
      v55 = *(v3 + 272);
    }

    for (; v54 != v55; v54 = (v54 + 56))
    {
      *v142 = 0;
      v57 = *v54;
      *&buf[16] = *(v54 + 2);
      *buf = v57;
      *&buf[32] = 0;
      v141 = 0;
      *&buf[24] = 0;
      sub_10024064C(&buf[24], *(v54 + 3), *(v54 + 4), (*(v54 + 4) - *(v54 + 3)) >> 2);
      v142[0] = *(v54 + 48);
      v58 = *a2;
      if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
      {
        v59 = asString();
        v60 = asStringBool(buf[4]);
        *v133 = 136315906;
        *&v133[4] = v59;
        v134 = 2080;
        v135 = v60;
        v136 = 1024;
        v137 = *&buf[8];
        v138 = 2048;
        v139 = *&buf[16];
        _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t type = %s fAirplaneModeRecovery = %s fTries = %u fTimeout = %ld", v133, 0x26u);
      }

      v62 = *&buf[24];
      v61 = *&buf[32];
      if (*&buf[24] != *&buf[32])
      {
        do
        {
          v63 = *a2;
          if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
          {
            v64 = *v62;
            *v133 = 67109120;
            *&v133[4] = v64;
            _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t cause = %d", v133, 8u);
          }

          ++v62;
        }

        while (v62 != v61);
        v62 = *&buf[24];
      }

      if (v62)
      {
        *&buf[32] = v62;
        operator delete(v62);
      }
    }

    v65 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t }", buf, 2u);
    }
  }

  if (*(v3 + 376) == 1 && *(v3 + 360) != *(v3 + 352))
  {
    v66 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t APNInfo: APNSwitchCauseCodes: {", buf, 2u);
      if ((*(v3 + 376) & 1) == 0)
      {
        sub_1000D1644();
      }
    }

    v67 = v3;
    v68 = *(v3 + 352);
    for (i = *(v67 + 360); v68 != i; ++v68)
    {
      v70 = *a2;
      if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
      {
        v71 = *v68;
        *buf = 67109120;
        *&buf[4] = v71;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t\t code = %d", buf, 8u);
      }
    }

    v72 = *a2;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t }", buf, 2u);
    }
  }
}

void sub_1002A312C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1002A3288(uint64_t a1, os_log_t *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = (a1 + 40);
  }

  v5 = *(a1 + 216);
  v6 = *v4;
  v7 = os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT);
  v107 = a1;
  if (v5 == 1)
  {
    if (!v7)
    {
      goto LABEL_107;
    }

    v8 = *(a1 + 144) - 1;
    if (v8 > 4)
    {
      v9 = "UI";
    }

    else
    {
      v9 = off_101E385D8[v8];
    }

    v12 = *(a1 + 148);
    sub_10029FAC8(v128);
    if (v131 >= 0)
    {
      v13 = v128;
    }

    else
    {
      v13 = *v128;
    }

    asStringMask(v126, *(a1 + 152));
    if (v127 >= 0)
    {
      v14 = v126;
    }

    else
    {
      v14 = v126[0];
    }

    v15 = *(a1 + 152);
    asStringMask(v124, *(a1 + 160));
    if (v125 >= 0)
    {
      v16 = v124;
    }

    else
    {
      v16 = v124[0];
    }

    v108 = v16;
    v110 = *(a1 + 160);
    CIPFamily::asString(v122, (a1 + 168));
    if (v123 >= 0)
    {
      v17 = v122;
    }

    else
    {
      v17 = v122[0];
    }

    v105 = v17;
    CIPFamily::asString(v120, (a1 + 184));
    if (v121 >= 0)
    {
      v18 = v120;
    }

    else
    {
      v18 = v120[0];
    }

    v103 = v18;
    CIPFamily::asString(v118, (a1 + 200));
    if (v119 >= 0)
    {
      v19 = v118;
    }

    else
    {
      v19 = v118[0];
    }

    v101 = v19;
    v99 = *(a1 + 224);
    WirelessTechnologyList::asString(__p, (a1 + 228));
    if (v117 >= 0)
    {
      v20 = __p;
    }

    else
    {
      v20 = __p[0];
    }

    v95 = v20;
    v97 = v15;
    v93 = *(a1 + 228);
    v91 = asStringBool(*(a1 + 232));
    v89 = asStringBool(*(a1 + 233));
    v87 = asStringBool();
    v84 = asStringBool();
    v74 = *(a1 + 242);
    v22 = *(a1 + 248);
    v82 = v9;
    v80 = v12;
    v76 = v14;
    v78 = v13;
    if (v22)
    {
      ctu::cf_to_xpc(&v113, v22, v21);
      xpc::object::to_string(object, &v113);
      if (v115 >= 0)
      {
        v23 = object;
      }

      else
      {
        v23 = object[0];
      }
    }

    else
    {
      v23 = "";
    }

    v73 = v23;
    v71 = asStringBool(*(a1 + 256));
    if (*(a1 + 312) == 1)
    {
      v43 = (a1 + 288);
      if (*(a1 + 311) < 0)
      {
        v43 = *v43;
      }

      v69 = v43;
    }

    else
    {
      v69 = "no alt name";
    }

    v44 = asStringBool(*(a1 + 384));
    if (*(a1 + 344) == 1)
    {
      v45 = (a1 + 320);
      if (*(a1 + 343) < 0)
      {
        v45 = *v45;
      }
    }

    else
    {
      v45 = "no orig apn";
    }

    if (*(a1 + 376) == 1)
    {
      v68 = (*(a1 + 360) - *(a1 + 352)) >> 2;
    }

    else
    {
      LODWORD(v68) = 0;
    }

    v47 = *(a1 + 264);
    v46 = *(a1 + 272);
    v48 = asStringBool(*(a1 + 234));
    v49 = asStringBool(*(a1 + 236));
    v176 = asStringBool(*(a1 + 235));
    *&buf[14] = v82;
    LODWORD(v138) = v80;
    *(&v138 + 6) = v78;
    v139 = v76;
    *&v140[2] = v97;
    v142 = v108;
    *v140 = 2048;
    v143 = 2048;
    v144 = v110;
    v146 = v105;
    v148 = v103;
    *v150 = v101;
    *&v150[10] = v99;
    WORD2(v138) = 2082;
    HIWORD(v138) = 2082;
    v141 = 2082;
    v145 = 2082;
    v147 = 2082;
    v149 = 2082;
    v151 = 2082;
    *v152 = v95;
    *&v152[10] = v93;
    v154 = v91;
    v156 = v89;
    v158 = v87;
    *v160 = v84;
    *&v160[10] = v74;
    v162 = v73;
    v164 = v71;
    v166 = v69;
    *v168 = v44;
    *&v168[10] = -1227133513 * ((v46 - v47) >> 3);
    *v170 = v45;
    *&buf[22] = 1024;
    *&v150[8] = 1024;
    *&v152[8] = 1024;
    *&v160[8] = 1024;
    *&v168[8] = 1024;
    *&v170[8] = 1024;
    *&v170[10] = v68;
    v172 = v48;
    v174 = v49;
    *&buf[12] = 2080;
    v153 = 2080;
    v155 = 2080;
    v157 = 2080;
    v159 = 2080;
    v161 = 2080;
    v163 = 2080;
    v165 = 2080;
    v167 = 2080;
    v169 = 2080;
    v171 = 2080;
    v173 = 2080;
    v175 = 2080;
    *buf = 136322306;
    *&buf[4] = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I \t%s APNInfo: src: %s.%d, base: %{public}s, type-mask: %{public}s (0x%llx), tech-type-mask: %{public}s (0x%llx), AllowedProtocolMask: %{public}s, AllowedProtocolMaskInRoaming: %{public}s, AllowedProtocolMaskInDomesticRoaming: %{public}s, inactivity: %u, tech-mask: %{public}s (0x%x), allow no DNS: %s, support SwitchOver: %s, don't suspend context: %s, suspend context on BBCall: %s, Pco Container Id: %u, proxy:{%s}, use network MTU: %s, alt-name:'%s', xlat464: %s, blockers: %u, OrigApn:'%s', APNSwitchCauseCodes: %u, alwaysOnPDU: %s, support5GSaHandOver: %s, SuppressPdnTearDown: %s", buf, 0x10Cu);
    if (v22)
    {
      if (v115 < 0)
      {
        operator delete(object[0]);
      }

      xpc_release(v113);
    }

    if (v117 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    if (!v7)
    {
      goto LABEL_107;
    }

    v10 = *(a1 + 144) - 1;
    if (v10 > 4)
    {
      v11 = "UI";
    }

    else
    {
      v11 = off_101E385D8[v10];
    }

    v24 = *(a1 + 148);
    sub_10029FAC8(v128);
    if (v131 >= 0)
    {
      v25 = v128;
    }

    else
    {
      v25 = *v128;
    }

    asStringMask(v126, *(a1 + 152));
    if (v127 >= 0)
    {
      v26 = v126;
    }

    else
    {
      v26 = v126[0];
    }

    v27 = *(a1 + 152);
    asStringMask(v124, *(a1 + 160));
    if (v125 >= 0)
    {
      v28 = v124;
    }

    else
    {
      v28 = v124[0];
    }

    v109 = v28;
    v111 = *(a1 + 160);
    CIPFamily::asString(v122, (a1 + 168));
    if (v123 >= 0)
    {
      v29 = v122;
    }

    else
    {
      v29 = v122[0];
    }

    v106 = v29;
    CIPFamily::asString(v120, (a1 + 184));
    if (v121 >= 0)
    {
      v30 = v120;
    }

    else
    {
      v30 = v120[0];
    }

    v102 = v30;
    v104 = *(a1 + 224);
    WirelessTechnologyList::asString(v118, (a1 + 228));
    v100 = v26;
    if (v119 >= 0)
    {
      v31 = v118;
    }

    else
    {
      v31 = v118[0];
    }

    v96 = v31;
    v98 = *(a1 + 228);
    v94 = asStringBool(*(a1 + 232));
    v92 = asStringBool(*(a1 + 233));
    v90 = asStringBool();
    v88 = asStringBool();
    v77 = *(a1 + 242);
    v33 = *(a1 + 248);
    v85 = v11;
    log = v6;
    v83 = v24;
    v79 = v27;
    v81 = v25;
    if (v33)
    {
      ctu::cf_to_xpc(object, v33, v32);
      xpc::object::to_string(__p, object);
      if (v117 >= 0)
      {
        v34 = __p;
      }

      else
      {
        v34 = __p[0];
      }
    }

    else
    {
      v34 = "";
    }

    v72 = v34;
    v75 = asStringBool(*(a1 + 256));
    if (*(a1 + 312) == 1)
    {
      v35 = (a1 + 288);
      if (*(a1 + 311) < 0)
      {
        v35 = *v35;
      }
    }

    else
    {
      v35 = "no alt name";
    }

    v70 = asStringBool(*(a1 + 384));
    if (*(a1 + 344) == 1)
    {
      v36 = (a1 + 320);
      if (*(a1 + 343) < 0)
      {
        v36 = *v36;
      }
    }

    else
    {
      v36 = "no orig apn";
    }

    if (*(a1 + 376) == 1)
    {
      v37 = (*(a1 + 360) - *(a1 + 352)) >> 2;
    }

    else
    {
      LODWORD(v37) = 0;
    }

    v38 = *(a1 + 264);
    v39 = *(a1 + 272);
    v40 = asStringBool(*(a1 + 234));
    v41 = asStringBool(*(a1 + 236));
    v42 = asStringBool(*(a1 + 235));
    *buf = 136322050;
    *&buf[4] = a3;
    *&buf[12] = 2080;
    *&buf[14] = v85;
    *&buf[22] = 1024;
    LODWORD(v138) = v83;
    WORD2(v138) = 2082;
    *(&v138 + 6) = v81;
    HIWORD(v138) = 2082;
    v139 = v100;
    *v140 = 2048;
    *&v140[2] = v79;
    v141 = 2082;
    v142 = v109;
    v143 = 2048;
    v144 = v111;
    v145 = 2082;
    v146 = v106;
    v147 = 2082;
    v148 = v102;
    v149 = 1024;
    *v150 = v104;
    *&v150[4] = 2082;
    *&v150[6] = v96;
    v151 = 1024;
    *v152 = v98;
    *&v152[4] = 2080;
    *&v152[6] = v94;
    v153 = 2080;
    v154 = v92;
    v155 = 2080;
    v156 = v90;
    v157 = 2080;
    v158 = v88;
    v159 = 1024;
    *v160 = v77;
    *&v160[4] = 2080;
    *&v160[6] = v72;
    v161 = 2080;
    v162 = v75;
    v163 = 2080;
    v164 = v35;
    v165 = 2080;
    v166 = v70;
    v167 = 1024;
    *v168 = -1227133513 * ((v39 - v38) >> 3);
    *&v168[4] = 2080;
    *&v168[6] = v36;
    v169 = 1024;
    *v170 = v37;
    *&v170[4] = 2080;
    *&v170[6] = v40;
    v171 = 2080;
    v172 = v41;
    v173 = 2080;
    v174 = v42;
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I \t%s APNInfo: src: %s.%d, base: %{public}s, type-mask: %{public}s (0x%llx), tech-type-mask: %{public}s (0x%llx), AllowedProtocolMask: %{public}s, AllowedProtocolMaskInRoaming: %{public}s, inactivity: %u, tech-mask: %{public}s (0x%x), allow no DNS: %s, support SwitchOver: %s, don't suspend context: %s, suspend context on BBCall: %s, Pco Container Id: %u, proxy:{%s}, use network MTU: %s, alt-name:'%s', xlat464: %s, blockers: %u, OrigApn:'%s', APNSwitchCauseCodes: %u, alwaysOnPDU %s, support5GSaHandOver: %s, SuppressPdnTearDown: %s", buf, 0x102u);
    if (v33)
    {
      if (v117 < 0)
      {
        operator delete(__p[0]);
      }

      xpc_release(object[0]);
    }
  }

  if (v119 < 0)
  {
    operator delete(v118[0]);
  }

  if (v121 < 0)
  {
    operator delete(v120[0]);
  }

  if (v123 < 0)
  {
    operator delete(v122[0]);
  }

  if (v125 < 0)
  {
    operator delete(v124[0]);
  }

  if (v127 < 0)
  {
    operator delete(v126[0]);
  }

  if (SHIBYTE(v131) < 0)
  {
    operator delete(*v128);
  }

LABEL_107:
  v51 = *(a1 + 264);
  v50 = *(a1 + 272);
  if (v50 != v51)
  {
    v52 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I \t%s APNInfo: blockers: {", buf, 0xCu);
      v51 = *(a1 + 264);
      v50 = *(a1 + 272);
    }

    for (; v51 != v50; v51 = (v51 + 56))
    {
      *v140 = 0;
      v53 = *v51;
      *&buf[16] = *(v51 + 2);
      *buf = v53;
      v139 = 0;
      v138 = 0uLL;
      sub_10024064C(&v138, *(v51 + 3), *(v51 + 4), (*(v51 + 4) - *(v51 + 3)) >> 2);
      v140[0] = *(v51 + 48);
      v54 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v55 = asString();
        v56 = asStringBool(buf[4]);
        *v128 = 136316162;
        *&v128[4] = a3;
        v129 = 2080;
        v130 = v55;
        v131 = 2080;
        v132 = v56;
        v133 = 1024;
        v134 = *&buf[8];
        v135 = 2048;
        v136 = *&buf[16];
        _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I \t%s \t type = %s fAirplaneModeRecovery = %s fTries = %u fTimeout = %ld", v128, 0x30u);
      }

      v57 = *(&v138 + 1);
      v58 = v138;
      if (v138 != *(&v138 + 1))
      {
        do
        {
          v59 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            v60 = *v58;
            *v128 = 136315394;
            *&v128[4] = a3;
            v129 = 1024;
            LODWORD(v130) = v60;
            _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I \t%s \t\t cause = %d", v128, 0x12u);
          }

          ++v58;
        }

        while (v58 != v57);
        v58 = v138;
      }

      if (v58)
      {
        *(&v138 + 1) = v58;
        operator delete(v58);
      }
    }

    v61 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = a3;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I \t%s }", buf, 0xCu);
    }
  }

  if (*(v107 + 376) == 1 && *(v107 + 360) != *(v107 + 352))
  {
    v62 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I \t APNInfo: APNSwitchCauseCodes: {", buf, 2u);
      if ((*(v107 + 376) & 1) == 0)
      {
        sub_1000D1644();
      }
    }

    v63 = *(v107 + 352);
    for (i = *(v107 + 360); v63 != i; ++v63)
    {
      v65 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v66 = *v63;
        *buf = 67109120;
        *&buf[4] = v66;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#I \t\t code = %d", buf, 8u);
      }
    }

    v67 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#I \t }", buf, 2u);
    }
  }
}

void sub_1002A3F1C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002A4078@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__p = 0u;
  v13 = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  v9 = 0u;
  sub_10000C320(&v9);
  v4 = *(a1 + 144) - 1;
  if (v4 > 4)
  {
    v5 = "UI";
  }

  else
  {
    v5 = off_101E385D8[v4];
  }

  strlen(v5);
  v6 = sub_10000C030(&v10);
  sub_10000C030(v6);
  std::ostream::operator<<();
  sub_10006EE70(&v10 + 8, a2);
  *&v10 = v7;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v11);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

BOOL sub_1002A4294(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v10 = *(a1 + 71);
  if (v10 >= 0)
  {
    v11 = *(a1 + 71);
  }

  else
  {
    v11 = *(a1 + 56);
  }

  v12 = *(a2 + 71);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 56);
  }

  if (v11 == v12)
  {
    v14 = v10 >= 0 ? (a1 + 48) : *(a1 + 48);
    v15 = v13 >= 0 ? (a2 + 48) : *(a2 + 48);
    if (!memcmp(v14, v15, v11))
    {
      v16 = *(a1 + 95);
      if (v16 >= 0)
      {
        v17 = *(a1 + 95);
      }

      else
      {
        v17 = *(a1 + 80);
      }

      v18 = *(a2 + 95);
      v19 = v18;
      if ((v18 & 0x80u) != 0)
      {
        v18 = *(a2 + 80);
      }

      if (v17 == v18)
      {
        v20 = v16 >= 0 ? (a1 + 72) : *(a1 + 72);
        v21 = v19 >= 0 ? (a2 + 72) : *(a2 + 72);
        if (!memcmp(v20, v21, v17))
        {
          v22 = *(a1 + 119);
          if (v22 >= 0)
          {
            v23 = *(a1 + 119);
          }

          else
          {
            v23 = *(a1 + 104);
          }

          v24 = *(a2 + 119);
          v25 = v24;
          if ((v24 & 0x80u) != 0)
          {
            v24 = *(a2 + 104);
          }

          if (v23 == v24)
          {
            v26 = v22 >= 0 ? (a1 + 96) : *(a1 + 96);
            v27 = v25 >= 0 ? (a2 + 96) : *(a2 + 96);
            if (!memcmp(v26, v27, v23))
            {
              v28 = *(a1 + 143);
              if (v28 >= 0)
              {
                v29 = *(a1 + 143);
              }

              else
              {
                v29 = *(a1 + 128);
              }

              v30 = *(a2 + 143);
              v31 = v30;
              if ((v30 & 0x80u) != 0)
              {
                v30 = *(a2 + 128);
              }

              if (v29 == v30)
              {
                v32 = v28 >= 0 ? (a1 + 120) : *(a1 + 120);
                v33 = v31 >= 0 ? (a2 + 120) : *(a2 + 120);
                if (!memcmp(v32, v33, v29))
                {
                  v38 = 152;
                  if (a3)
                  {
                    v38 = 160;
                  }

                  v34 = *(a1 + v38) == *(a2 + v38);
                  if (a4)
                  {
                    goto LABEL_54;
                  }

                  return v34 && *(a1 + 192) == *(a2 + 192);
                }
              }
            }
          }
        }
      }
    }
  }

  v34 = 0;
  if (!a4)
  {
    return v34 && *(a1 + 192) == *(a2 + 192);
  }

LABEL_54:
  v35 = *(a1 + 176);
  v36 = *(a2 + 176);
  if (a5)
  {
    if (*(a1 + 216) == 1)
    {
      v35 = *(a1 + 208);
    }

    if (*(a2 + 216) == 1)
    {
      v36 = *(a2 + 208);
    }
  }

  return v35 == v36 && v34;
}

uint64_t sub_1002A44B4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144) != *(a2 + 144))
  {
    return 0;
  }

  v4 = *(a1 + 71);
  if (v4 >= 0)
  {
    v5 = *(a1 + 71);
  }

  else
  {
    v5 = *(a1 + 56);
  }

  v6 = *(a2 + 71);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 56);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = v4 >= 0 ? (a1 + 48) : *(a1 + 48);
  v9 = v7 >= 0 ? (a2 + 48) : *(a2 + 48);
  if (memcmp(v8, v9, v5))
  {
    return 0;
  }

  v10 = *(a1 + 95);
  if (v10 >= 0)
  {
    v11 = *(a1 + 95);
  }

  else
  {
    v11 = *(a1 + 80);
  }

  v12 = *(a2 + 95);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 80);
  }

  if (v11 != v12)
  {
    return 0;
  }

  v14 = v10 >= 0 ? (a1 + 72) : *(a1 + 72);
  v15 = v13 >= 0 ? (a2 + 72) : *(a2 + 72);
  if (memcmp(v14, v15, v11))
  {
    return 0;
  }

  v16 = *(a1 + 119);
  if (v16 >= 0)
  {
    v17 = *(a1 + 119);
  }

  else
  {
    v17 = *(a1 + 104);
  }

  v18 = *(a2 + 119);
  v19 = v18;
  if ((v18 & 0x80u) != 0)
  {
    v18 = *(a2 + 104);
  }

  if (v17 != v18)
  {
    return 0;
  }

  v20 = v16 >= 0 ? (a1 + 96) : *(a1 + 96);
  v21 = v19 >= 0 ? (a2 + 96) : *(a2 + 96);
  if (memcmp(v20, v21, v17))
  {
    return 0;
  }

  v22 = *(a1 + 143);
  if (v22 >= 0)
  {
    v23 = *(a1 + 143);
  }

  else
  {
    v23 = *(a1 + 128);
  }

  v24 = *(a2 + 143);
  v25 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 128);
  }

  if (v23 != v24)
  {
    return 0;
  }

  v26 = v22 >= 0 ? (a1 + 120) : *(a1 + 120);
  v27 = v25 >= 0 ? (a2 + 120) : *(a2 + 120);
  if (memcmp(v26, v27, v23) || *(a1 + 148) != *(a2 + 148) || *(a1 + 152) != *(a2 + 152) || *(a1 + 160) != *(a2 + 160) || *(a1 + 176) != *(a2 + 176) || *(a1 + 192) != *(a2 + 192))
  {
    return 0;
  }

  v28 = *(a1 + 216);
  v29 = *(a2 + 216);
  if (v28 == v29 && *(a1 + 216))
  {
    v28 = *(a1 + 208);
    v29 = *(a2 + 208);
  }

  if (v28 != v29 || *(a1 + 233) != *(a2 + 233) || *(a1 + 236) != *(a2 + 236) || *(a1 + 234) != *(a2 + 234))
  {
    return 0;
  }

  v30 = *(a1 + 238);
  v31 = *(a2 + 238);
  if (v30 == v31 && *(a1 + 238))
  {
    v30 = *(a1 + 237);
    v31 = *(a2 + 237);
  }

  if (v30 != v31)
  {
    return 0;
  }

  v32 = *(a1 + 240);
  v33 = *(a2 + 240);
  if (v32 == v33 && *(a1 + 240))
  {
    v32 = *(a1 + 239);
    v33 = *(a2 + 239);
  }

  if (v32 != v33)
  {
    return 0;
  }

  if (*(a1 + 242) != *(a2 + 242))
  {
    return 0;
  }

  if (*(a1 + 232) != *(a2 + 232))
  {
    return 0;
  }

  v34 = *(a1 + 248);
  v35 = *(a2 + 248);
  if ((v34 != 0) == (v35 == 0))
  {
    return 0;
  }

  if (v34)
  {
    result = CFEqual(v34, v35);
    if (!result)
    {
      return result;
    }
  }

  if (*(a1 + 256) != *(a2 + 256))
  {
    return 0;
  }

  if (*(a1 + 312))
  {
    if (!*(a2 + 312))
    {
      return 0;
    }

    result = sub_100071DF8((a1 + 288), (a2 + 288));
    if (!result)
    {
      return result;
    }
  }

  else if (*(a2 + 312))
  {
    return 0;
  }

  result = sub_1002A4830((a1 + 264), (a2 + 264));
  if (!result)
  {
    return result;
  }

  if ((*(a1 + 344) & 1) == 0)
  {
    if ((*(a2 + 344) & 1) == 0)
    {
      goto LABEL_93;
    }

    return 0;
  }

  if (!*(a2 + 344))
  {
    return 0;
  }

  result = sub_100071DF8((a1 + 320), (a2 + 320));
  if (!result)
  {
    return result;
  }

LABEL_93:
  if ((*(a1 + 376) & 1) == 0)
  {
    return *(a2 + 376) ^ 1u;
  }

  if (!*(a2 + 376))
  {
    return 0;
  }

  return sub_1002A48A4(a1 + 352, a2 + 352);
}

BOOL sub_1002A4830(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  if (v2 == v3)
  {
    return 1;
  }

  do
  {
    result = sub_1002A685C(v2, v4);
    if (!result)
    {
      break;
    }

    v2 += 56;
    v4 += 56;
  }

  while (v2 != v3);
  return result;
}

BOOL sub_1002A48A4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v4 = *(a1 + 8) - v2;
  v5 = *a2;
  return v4 == *(a2 + 8) - v5 && memcmp(v2, v5, v4) == 0;
}

uint64_t sub_1002A48E8(uint64_t a1, int a2, NSObject **a3)
{
  *a1 = off_101E38008;
  *(a1 + 8) = a2;
  v4 = *a3;
  *(a1 + 16) = *a3;
  if (v4)
  {
    dispatch_retain(v4);
  }

  return a1;
}

void *sub_1002A493C(void *a1)
{
  *a1 = off_101E38008;
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void sub_1002A4998(uint64_t a1@<X0>, NSObject **a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

const char *sub_1002A49AC(int a1, int a2)
{
  v2 = "default-apn";
  if (a1 <= 1)
  {
    v3 = "ui-apn.?";
    if (a2 == 2)
    {
      v3 = "ui-apn.2";
    }

    if (a2 == 1)
    {
      v3 = "ui-apn.1";
    }

    v7 = "ipcu-apn.?";
    if (a2 == 2)
    {
      v7 = "ipcu-apn.2";
    }

    if (a2 == 1)
    {
      v7 = "ipcu-apn.1";
    }

    if (a1 == 1)
    {
      v2 = v7;
    }

    v6 = a1 == 0;
  }

  else
  {
    v3 = "sim-apn.?";
    if (a2 == 2)
    {
      v3 = "sim-apn.2";
    }

    if (a2 == 1)
    {
      v3 = "sim-apn.1";
    }

    v4 = "cb-apn.?";
    if (a2 == 2)
    {
      v4 = "cb-apn.2";
    }

    if (a2 == 1)
    {
      v4 = "cb-apn.1";
    }

    v5 = "special-apn.?";
    if (a2 == 2)
    {
      v5 = "special-apn.2";
    }

    if (a2 == 1)
    {
      v5 = "special-apn.1";
    }

    if (a1 == 4)
    {
      v2 = v5;
    }

    if (a1 == 3)
    {
      v2 = v4;
    }

    v6 = a1 == 2;
  }

  if (v6)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1002A4AC4(uint64_t a1, int a2, NSObject **a3)
{
  *a1 = off_101E38008;
  *(a1 + 8) = a2;
  v4 = *a3;
  *(a1 + 16) = *a3;
  if (v4)
  {
    dispatch_retain(v4);
  }

  *a1 = off_101E380C8;
  return a1;
}

void sub_1002A4B44(dispatch_object_t *a1@<X2>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (*a1)
  {
    dispatch_retain(*a1);
  }

  operator new();
}

void sub_1002A4E3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a9);
  sub_10001021C(&a10);
  sub_100004A34(v18);
  if (v17)
  {
    dispatch_release(v17);
  }

  _Unwind_Resume(a1);
}

void sub_1002A4EEC(dispatch_object_t *a1@<X2>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (*a1)
  {
    dispatch_retain(*a1);
  }

  operator new();
}

void sub_1002A5104(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  v3[1].__vftable = v4;
  shared_weak_owners = v3[1].__shared_weak_owners_;
  if (shared_weak_owners)
  {
    dispatch_release(shared_weak_owners);
  }

  if (v2)
  {
    dispatch_release(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v3);
  operator delete(v7);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1002A516C(char a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a1)
  {
    v6 = 1;
    sub_1001FDFFC(a3, &v6);
    v6 = 2;
    sub_1001FDFFC(a3, &v6);
    v6 = 4;
    sub_1001FDFFC(a3, &v6);
    v6 = 5;
    sub_1001FDFFC(a3, &v6);
  }

  if ((a1 & 2) != 0)
  {
    v6 = 10;
    sub_1001FDFFC(a3, &v6);
    v6 = 11;
    sub_1001FDFFC(a3, &v6);
    v6 = 12;
    sub_1001FDFFC(a3, &v6);
    v6 = 15;
    sub_1001FDFFC(a3, &v6);
  }

  if ((a1 & 4) != 0)
  {
    v6 = 13;
    sub_1001FDFFC(a3, &v6);
  }

  if ((a1 & 8) != 0)
  {
    v6 = 14;
    sub_1001FDFFC(a3, &v6);
    if (a2)
    {
      v6 = 16;
      sub_1001FDFFC(a3, &v6);
      v6 = 17;
      sub_1001FDFFC(a3, &v6);
    }
  }

  if ((a1 & 0x10) != 0)
  {
    v6 = 16;
    sub_1001FDFFC(a3, &v6);
    v6 = 17;
    sub_1001FDFFC(a3, &v6);
  }
}

void sub_1002A52DC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002A532C(uint64_t a1, Registry **a2, uint64_t a3)
{
  v6 = sub_10007259C();
  CFPreferencesSynchronize(@"com.apple.tethering_override", v6, kCFPreferencesCurrentHost);
  v7 = sub_10007259C();
  v8 = CFPreferencesCopyValue(@"AllowTethering", @"com.apple.tethering_override", v7, kCFPreferencesAnyHost);
  ServiceMap = Registry::getServiceMap(*a2);
  v10 = ServiceMap;
  if (v11 < 0)
  {
    v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *__p = v11;
  v15 = sub_100009510(&v10[1].__m_.__sig, __p);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v19 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v19 = 1;
LABEL_9:
  __p[0] = 0;
  if (v8)
  {
    v20 = CFGetTypeID(v8);
    if (v20 == CFBooleanGetTypeID() && (v22 = ctu::cf::assign(__p, v8, v21), (__p[0] & 1) != 0) && ((v23 = capabilities::ct::supportsVoiceCall(v22), !v17) ? (v24 = 1) : (v24 = v23), (v24 & 1) == 0))
    {
      v25 = (*(*v17 + 32))(v17);
    }

    else
    {
      v25 = 0;
    }

    CFRelease(v8);
    if ((v19 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v25 = 0;
    if ((v19 & 1) == 0)
    {
LABEL_18:
      sub_100004A34(v16);
    }
  }

  if (v25)
  {
    v26 = *(a1 + 40);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    sub_1002A4078(a1, __p);
    if (v49 >= 0)
    {
      v27 = __p;
    }

    else
    {
      v27 = *__p;
    }

    *v42 = 136315394;
    *&v42[4] = "is_wireless_modem_allowed";
    v43 = 2080;
    v44 = v27;
    v28 = "#I %s: %s, Validation of wireless modem connection was not necessary because: tethering override is in place";
LABEL_45:
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v28, v42, 0x16u);
    if (SHIBYTE(v49) < 0)
    {
      v34 = *__p;
LABEL_47:
      operator delete(v34);
    }

    return 1;
  }

  if ((capabilities::ct::supportsWirelessModem(v18) & 1) == 0)
  {
    v29 = *(a1 + 40);
    result = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    sub_1002A4078(a1, __p);
    if (v49 >= 0)
    {
      v31 = __p;
    }

    else
    {
      v31 = *__p;
    }

    *v42 = 136315394;
    *&v42[4] = "is_wireless_modem_allowed";
    v43 = 2080;
    v44 = v31;
    v32 = "#I %s: %s, Failed to validate wireless modem connection: it is not supported";
    goto LABEL_36;
  }

  if ((byte_101FBA128 & 1) == 0)
  {
    byte_101FBA128 = 1;
    if (sub_100322A60())
    {
      byte_101FBA129 = 1;
LABEL_40:
      v26 = *(a1 + 40);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      sub_1002A4078(a1, __p);
      if (v49 >= 0)
      {
        v33 = __p;
      }

      else
      {
        v33 = *__p;
      }

      *v42 = 136315394;
      *&v42[4] = "is_wireless_modem_allowed";
      v43 = 2080;
      v44 = v33;
      v28 = "#I %s: %s, Validation of wireless modem connection ignored because: carrier settings override";
      goto LABEL_45;
    }
  }

  if (byte_101FBA129 == 1)
  {
    goto LABEL_40;
  }

  if (sub_1002A593C(a2, a3))
  {
    v35 = *(a1 + 40);
    if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    v36 = subscriber::asString();
    sub_1002A4078(a1, v42);
    v37 = v45 >= 0 ? v42 : *v42;
    *__p = 136315650;
    *&__p[4] = "is_wireless_modem_allowed";
    v47 = 2080;
    v48 = v36;
    v49 = 2080;
    v50 = v37;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %s: %s, Tethering editing supported for sim %s, so wireless modem allowed", __p, 0x20u);
    if ((v45 & 0x80000000) == 0)
    {
      return 1;
    }

    v34 = *v42;
    goto LABEL_47;
  }

  v38 = *(a1 + 144);
  if ((v38 - 2) < 2)
  {
    v26 = *(a1 + 40);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    sub_1002A4078(a1, __p);
    if (v49 >= 0)
    {
      v40 = __p;
    }

    else
    {
      v40 = *__p;
    }

    *v42 = 136315394;
    *&v42[4] = "is_wireless_modem_allowed";
    v43 = 2080;
    v44 = v40;
    v28 = "#I %s: %s, wireless modem allowed";
    goto LABEL_45;
  }

  if (v38)
  {
    if (v38 == 1)
    {
      v26 = *(a1 + 40);
      if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      sub_1002A4078(a1, __p);
      if (v49 >= 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = *__p;
      }

      *v42 = 136315394;
      *&v42[4] = "is_wireless_modem_allowed";
      v43 = 2080;
      v44 = v39;
      v28 = "#I %s: %s, No tethering validation for OMA/IPCU APNs, so wireless modem allowed";
      goto LABEL_45;
    }

    return 0;
  }

  v29 = *(a1 + 40);
  result = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    sub_1002A4078(a1, __p);
    if (v49 >= 0)
    {
      v41 = __p;
    }

    else
    {
      v41 = *__p;
    }

    *v42 = 136315394;
    *&v42[4] = "is_wireless_modem_allowed";
    v43 = 2080;
    v44 = v41;
    v32 = "#I %s: %s, Tethering alteration prohibited, so wireless modem is not allowed";
LABEL_36:
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v32, v42, 0x16u);
    if (SHIBYTE(v49) < 0)
    {
      operator delete(*__p);
    }

    return 0;
  }

  return result;
}

void sub_1002A590C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1002A593C(Registry **a1, uint64_t a2)
{
  theDict = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  v40 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v40);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  (*(*v12 + 96))(&cf1, v12, a2, 1, @"MandatoryVerify", 0, 0);
  sub_100010180(&theDict, &cf1);
  sub_10000A1EC(&cf1);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  cf1 = 0;
  v14 = Registry::getServiceMap(*a1);
  v15 = v14;
  if ((v16 & 0x8000000000000000) != 0)
  {
    v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
    v18 = 5381;
    do
    {
      v16 = v18;
      v19 = *v17++;
      v18 = (33 * v18) ^ v19;
    }

    while (v19);
  }

  std::mutex::lock(v14);
  v40 = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, &v40);
  if (v20)
  {
    v22 = v20[3];
    v21 = v20[4];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v15);
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v21);
      v23 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v15);
  v21 = 0;
  v23 = 1;
LABEL_19:
  (*(*v22 + 192))(&cf1, v22, a2);
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  v24 = 0;
  if (theDict && cf1)
  {
    Value = CFDictionaryGetValue(theDict, @"SIMs");
    v26 = Value;
    if (Value && (v27 = CFGetTypeID(Value), v27 == CFArrayGetTypeID()))
    {
      Count = CFArrayGetCount(v26);
      v29 = Count - 1;
      if (Count < 1)
      {
        v24 = 1;
      }

      else
      {
        v30 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v26, v30);
          v32 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v33 = CFGetTypeID(ValueAtIndex);
            if (v33 == CFStringGetTypeID())
            {
              v34 = v32;
            }

            else
            {
              v34 = 0;
            }
          }

          else
          {
            v34 = 0;
          }

          v35 = CFEqual(cf1, v34);
          v24 = v35 == 0;
          if (v35)
          {
            v36 = 1;
          }

          else
          {
            v36 = v29 == v30;
          }

          ++v30;
        }

        while (!v36);
      }
    }

    else
    {
      v24 = 0;
    }
  }

  sub_100005978(&cf1);
  sub_10001021C(&theDict);
  return v24;
}

void sub_1002A5C20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  sub_100005978(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002A5C8C(Registry **a1, uint64_t a2)
{
  cf = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v18 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v18);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  (*(*v11 + 96))(&cf, v11, a2, 1, @"AllowEDGEEditing", kCFBooleanFalse, 0);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  v13 = cf;
  LOBYTE(v18) = 0;
  if (cf)
  {
    v14 = CFGetTypeID(cf);
    if (v14 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v18, v13, v15);
      LOBYTE(v13) = v18;
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  sub_10000A1EC(&cf);
  return v13 & 1;
}

void sub_1002A5E00(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A5E2C(Registry **a1, uint64_t a2, char a3)
{
  v33 = 0;
  if (a3)
  {
    goto LABEL_13;
  }

  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  v34 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v34);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_10:
  (*(*v13 + 80))(&v31, v13, a2, 1, @"APNEditabilityTypemaskNew", 0, 0);
  sub_10010B240(&v32, &v31);
  v15 = v33;
  v33 = v32;
  v34 = v15;
  v32 = 0;
  sub_100029A48(&v34);
  sub_100029A48(&v32);
  sub_10000A1EC(&v31);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  v17 = v33;
  if (!v33)
  {
LABEL_13:
    v18 = Registry::getServiceMap(*a1);
    v19 = v18;
    if (v20 < 0)
    {
      v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
      v22 = 5381;
      do
      {
        v20 = v22;
        v23 = *v21++;
        v22 = (33 * v22) ^ v23;
      }

      while (v23);
    }

    std::mutex::lock(v18);
    v34 = v20;
    v24 = sub_100009510(&v19[1].__m_.__sig, &v34);
    if (v24)
    {
      v26 = v24[3];
      v25 = v24[4];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v19);
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v25);
        v27 = 0;
LABEL_21:
        (*(*v26 + 80))(&v31, v26, a2, 1, @"APNEditabilityTypemask", 0, 0);
        sub_10010B240(&v32, &v31);
        v28 = v33;
        v33 = v32;
        v34 = v28;
        v32 = 0;
        sub_100029A48(&v34);
        sub_100029A48(&v32);
        sub_10000A1EC(&v31);
        if ((v27 & 1) == 0)
        {
          sub_100004A34(v25);
        }

        v17 = v33;
        goto LABEL_24;
      }
    }

    else
    {
      v26 = 0;
    }

    std::mutex::unlock(v19);
    v25 = 0;
    v27 = 1;
    goto LABEL_21;
  }

LABEL_24:
  LODWORD(v34) = 0;
  ctu::cf::assign(&v34, v17, v16);
  if (v33)
  {
    v29 = v34;
  }

  else
  {
    v29 = 5;
  }

  sub_100029A48(&v33);
  return v29;
}

void sub_1002A60D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11)
{
  sub_10000A1EC(&a9);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  sub_100029A48(&a11);
  _Unwind_Resume(a1);
}

BOOL sub_1002A6140(Registry **a1, uint64_t a2)
{
  v15 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  v16 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v16);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  (*(*v11 + 80))(&v15, v11, a2, 1, @"APNEditabilityTypemaskNew", 0, 0);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  v13 = v15 != 0;
  sub_10000A1EC(&v15);
  return v13;
}

void sub_1002A627C(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A6298(uint64_t result, Registry **a2, uint64_t a3)
{
  if ((*(result + 152) & 0x8000030) != 0)
  {
    v3 = result;
    result = sub_1002A532C(result, a2, a3);
    if ((result & 1) == 0)
    {
      *(v3 + 152) &= 0xFFFFFFFFF7FFFFCFLL;
    }
  }

  return result;
}

void sub_1002A62EC(Registry **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  v16 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v16);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_9:
  (*(*v13 + 80))(&v15, v13, a2, 1, @"OTAActivationAPN", 0, 0);
  sub_100010180(a3, &v15);
  sub_10000A1EC(&v15);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1002A642C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_10000A1EC(&a9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_1002A6458(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1002A226C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_1002A64AC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1000CE3D4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_1002A6618(a1, v6);
  }

  v7 = 56 * v2;
  v15 = 0;
  v16 = v7;
  *(&v17 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 0;
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  *(v7 + 48) = *(a2 + 48);
  *&v17 = 56 * v2 + 56;
  v9 = a1[1];
  v10 = 56 * v2 + *a1 - v9;
  sub_1002A6674(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1002A67C4(&v15);
  return v14;
}

void sub_1002A6604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1002A67C4(va);
  _Unwind_Resume(a1);
}

void sub_1002A6618(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1002A6674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v11 = 0;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(v6 + 24) = 0;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(a4 + 48) = *(v6 + 48);
      v6 += 56;
      a4 += 56;
    }

    while (v6 != a3);
    v13 = a4;
    LOBYTE(v11) = 1;
    while (v5 != a3)
    {
      v8 = *(v5 + 24);
      if (v8)
      {
        *(v5 + 32) = v8;
        operator delete(v8);
      }

      v5 += 56;
    }
  }

  return sub_1002A6744(v10);
}

uint64_t sub_1002A6744(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1002A677C(a1);
  }

  return a1;
}

void sub_1002A677C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 32);
    if (v3)
    {
      *(v1 - 24) = v3;
      operator delete(v3);
    }

    v1 -= 56;
  }
}

uint64_t sub_1002A67C4(uint64_t a1)
{
  sub_1002A67FC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1002A67FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 56;
    v5 = *(v2 - 32);
    if (v5)
    {
      *(v2 - 24) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 56;
    }
  }
}

BOOL sub_1002A685C(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 32) - v4;
    v6 = *(a2 + 24);
    if (v5 == *(a2 + 32) - v6 && !memcmp(v4, v6, v5))
    {
      return *(a1 + 48) == *(a2 + 48);
    }
  }

  return 0;
}

void sub_1002A6924(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E382E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const char *sub_1002A69A0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = "ui-apn.?";
  if (v1 == 2)
  {
    v2 = "ui-apn.2";
  }

  if (v1 == 1)
  {
    return "ui-apn.1";
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1002A69D0(uint64_t a1)
{
  *a1 = off_101E38338;
  v2 = *(a1 + 160);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  sub_10001021C((a1 + 120));
  v5 = (a1 + 96);
  sub_1000212F4(&v5);
  std::mutex::~mutex((a1 + 32));
  ctu::OsLogLogger::~OsLogLogger((a1 + 24));
  *a1 = off_101E38008;
  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
  }

  return a1;
}

void sub_1002A6A84(uint64_t a1)
{
  *a1 = off_101E38338;
  v2 = *(a1 + 160);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  sub_10001021C((a1 + 120));
  v4 = (a1 + 96);
  sub_1000212F4(&v4);
  std::mutex::~mutex((a1 + 32));
  ctu::OsLogLogger::~OsLogLogger((a1 + 24));
  *a1 = off_101E38008;
  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
  }

  operator delete();
}

uint64_t sub_1002A6B54(uint64_t a1)
{
  std::mutex::lock((a1 + 32));
  v2 = (*(a1 + 104) - *(a1 + 96)) >> 4;
  std::mutex::unlock((a1 + 32));
  return v2;
}

void sub_1002A6B94(uint64_t a1)
{
  std::mutex::lock((a1 + 32));
  v2 = (a1 + 24);
  v3 = *(a1 + 24);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DATA:: UI_APN_Storage:", buf, 2u);
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (*(a1 + 104) - *(a1 + 96)) >> 4;
    *buf = 134217984;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t %lu APN(s) found", buf, 0xCu);
  }

  v5 = *(a1 + 96);
  if (*(a1 + 104) != v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v12 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t APNx%zu:", buf, 0xCu);
        v5 = *(a1 + 96);
      }

      sub_1002A24E4(*(v5 + v6), (a1 + 24));
      ++v7;
      v5 = *(a1 + 96);
      v6 += 16;
    }

    while (v7 < (*(a1 + 104) - v5) >> 4);
  }

  v9 = *v2;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 120);
    *buf = 138412290;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t AttachAPN: %@", buf, 0xCu);
  }

  std::mutex::unlock((a1 + 32));
}

uint64_t sub_1002A6D94(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 32));
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = (a1 + 128);
  v7 = *(a1 + 151);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a1 + 136);
  }

  if (v7 == v5 && (v8 >= 0 ? (v9 = (a1 + 128)) : (v9 = *v6), v4 >= 0 ? (v10 = a2) : (v10 = *a2), !memcmp(v9, v10, v5)))
  {
LABEL_18:
    v15 = 1;
  }

  else
  {
    std::string::operator=((a1 + 128), a2);
    theDict = 0;
    *buf = CFPreferencesCopyValue(@"apns.per.iccid", @"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    sub_100138C38(&theDict, buf);
    value = 0;
    if (theDict)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
      v12 = value;
      value = MutableCopy;
      *buf = v12;
      sub_1000296E0(buf);
      v13 = value;
      sub_1002A89DC(@"last.iccid", *(a1 + 8), &v25);
      v14 = v25;
      if (*(a1 + 151) < 0)
      {
        sub_100005F2C(v22, *(a1 + 128), *(a1 + 136));
      }

      else
      {
        *v22 = *v6;
        v23 = *(a1 + 144);
      }

      if (SHIBYTE(v23) < 0)
      {
        sub_100005F2C(__p, v22[0], v22[1]);
      }

      else
      {
        *__p = *v22;
        v30 = v23;
      }

      v28 = 0;
      if (SHIBYTE(v30) < 0)
      {
        sub_100005F2C(buf, __p[0], __p[1]);
      }

      else
      {
        *buf = *__p;
        *&buf[16] = v30;
      }

      v31 = 0;
      if (ctu::cf::convert_copy())
      {
        v16 = v28;
        v28 = v31;
        v32 = v16;
        sub_100005978(&v32);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v17 = v28;
      v24 = v28;
      v28 = 0;
      sub_100005978(&v28);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(__p[0]);
      }

      CFDictionarySetValue(v13, v14, v17);
      sub_100005978(&v24);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22[0]);
      }

      sub_100005978(&v25);
      CFPreferencesSetValue(@"apns.per.iccid", value, @"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    }

    sub_1000296E0(&value);
    sub_10001021C(&theDict);
    v15 = 0;
  }

  v18 = *(a1 + 24);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v19 = *v19;
    }

    *buf = 136315650;
    *&buf[4] = "refresh";
    *&buf[12] = 2080;
    *&buf[14] = v19;
    if (v15)
    {
      v20 = " (same)";
    }

    else
    {
      v20 = " (new one)";
    }

    *&buf[22] = 2080;
    v34 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s: refresh for subscriber:'%s'%s", buf, 0x20u);
  }

  *buf = 0;
  sub_1002A7E7C(a1, buf);
  sub_1002A839C(a1, *buf);
  sub_10001021C(buf);
  std::mutex::unlock((a1 + 32));
  return v15 ^ 1u;
}

void sub_1002A7110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, const void *a18, const void *a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_100005978(&a20);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_100005978(&a17);
  sub_1000296E0(&a18);
  sub_10001021C(&a19);
  std::mutex::unlock((v26 + 32));
  _Unwind_Resume(a1);
}

void sub_1002A71C4(uint64_t a1, char a2)
{
  std::mutex::lock((a1 + 32));
  v17 = 0;
  v4 = *(a1 + 151);
  if (v4 < 0)
  {
    v4 = *(a1 + 136);
  }

  if (!v4 || (a2 & 1) != 0)
  {
    goto LABEL_33;
  }

  theDict = 0;
  *buf = CFPreferencesCopyValue(@"apns.per.iccid", @"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  sub_100138C38(&theDict, buf);
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
    v6 = v17;
    v17 = MutableCopy;
    *buf = v6;
    sub_1000296E0(buf);
  }

  if (v17)
  {
    v7 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      sub_100005F2C(v13, *(a1 + 128), *(a1 + 136));
    }

    else
    {
      *v13 = *v7;
      v14 = *(a1 + 144);
    }

    if (SHIBYTE(v14) < 0)
    {
      sub_100005F2C(__p, v13[0], v13[1]);
    }

    else
    {
      *__p = *v13;
      v20 = v14;
    }

    v18 = 0;
    if (SHIBYTE(v20) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      *&buf[16] = v20;
    }

    v21 = 0;
    if (ctu::cf::convert_copy())
    {
      v8 = v18;
      v18 = v21;
      v22 = v8;
      sub_100005978(&v22);
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v9 = v18;
    v15 = v18;
    v18 = 0;
    sub_100005978(&v18);
    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v14) < 0)
    {
      operator delete(v13[0]);
    }

    CFDictionaryRemoveValue(v17, v9);
    v10 = *(a1 + 24);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 151) < 0)
      {
        v7 = *v7;
      }

      *buf = 136315394;
      *&buf[4] = "erase";
      *&buf[12] = 2080;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: removed UI APNs for subscriber:%s", buf, 0x16u);
    }

    if (!CFDictionaryGetCount(v17))
    {
      v11 = v17;
      v17 = 0;
      *buf = v11;
      sub_1000296E0(buf);
    }

    sub_100005978(&v15);
  }

  sub_10001021C(&theDict);
  if (!v17)
  {
LABEL_33:
    v12 = *(a1 + 24);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "erase";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: reset UI APN storage completely", buf, 0xCu);
    }
  }

  CFPreferencesSetValue(@"apns stuff", 0, @"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  CFPreferencesSetValue(@"apns.per.iccid", v17, @"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  CFPreferencesSynchronize(@"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  sub_1002A7E7C(a1, buf);
  sub_1002A839C(a1, *buf);
  sub_10001021C(buf);
  sub_1000296E0(&v17);
  std::mutex::unlock((a1 + 32));
}

void sub_1002A7548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, const void *a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_100005978(&a20);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_10001021C(&a18);
  sub_1000296E0(&a19);
  std::mutex::unlock((v26 + 32));
  _Unwind_Resume(a1);
}

void sub_1002A75EC(uint64_t a1@<X0>, const void **a2@<X8>)
{
  std::mutex::lock((a1 + 32));
  sub_100010024(a2, (a1 + 120));

  std::mutex::unlock((a1 + 32));
}

void sub_1002A7638(uint64_t a1@<X0>, const __CFDictionary **a2@<X8>)
{
  std::mutex::lock((a1 + 32));
  v4 = *(a1 + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "getAPNs";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: reading UI configuration from storage", &v5, 0xCu);
  }

  sub_1002A7E7C(a1, a2);
  std::mutex::unlock((a1 + 32));
}

void sub_1002A7718(uint64_t a1, char a2, uint64_t a3)
{
  if (*(a1 + 16))
  {
    dispatch_retain(*(a1 + 16));
  }

  v6 = a1;
  v7 = a2;
  sub_10009CF40(&v8, a3);
  operator new();
}

void sub_1002A7820(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002A7848(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (*(a1 + 16))
  {
    dispatch_retain(*(a1 + 16));
  }

  v7 = a1;
  v8 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  sub_1000224C8(&v9, a3);
  operator new();
}

void sub_1002A7970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002A79B0(uint64_t a1, CFTypeRef cf, uint64_t a3)
{
  v6 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  if (*(a1 + 16))
  {
    dispatch_retain(*(a1 + 16));
  }

  v7 = a1;
  v8 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  sub_1000224C8(&v9, a3);
  operator new();
}

void sub_1002A7AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002A7B18(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    dispatch_retain(*(a1 + 16));
  }

  v4 = a1;
  sub_100063614(&v5, a2);
  operator new();
}

void sub_1002A7C0C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002A7C34(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    dispatch_retain(*(a1 + 16));
  }

  v4 = a1;
  sub_100063614(&v5, a2);
  operator new();
}

void sub_1002A7D28(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002A7D50(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W4>, void *a4@<X8>)
{
  std::mutex::lock((a1 + 32));
  v8 = *(a1 + 96);
  v9 = *(a1 + 104) - v8;
  if (v9)
  {
    v10 = v9 >> 4;
    if (v10 <= 1)
    {
      v10 = 1;
    }

    v11 = 152;
    if (a3)
    {
      v11 = 160;
    }

    do
    {
      if ((*(*v8 + v11) & a2) != 0)
      {
        sub_1002AB338();
      }

      v8 += 2;
      --v10;
    }

    while (v10);
  }

  *a4 = 0;
  a4[1] = 0;
  std::mutex::unlock((a1 + 32));
}

const void **sub_1002A7E7C@<X0>(uint64_t a1@<X0>, const __CFDictionary **a2@<X8>)
{
  v4 = *(a1 + 8);
  theDict[0] = 0;
  v5 = kCacheUI;
  sub_1002A89DC(kCacheUI, v4, &v30);
  AttachAPNDevicePersistentCopyValue(buf, v30, 0);
  sub_100010180(theDict, buf);
  sub_10000A1EC(buf);
  sub_100005978(&v30);
  if (theDict[0])
  {
    Value = CFDictionaryGetValue(theDict[0], k3GPP);
    v7 = Value;
    if (Value && (v8 = CFGetTypeID(Value), v8 == CFDictionaryGetTypeID()))
    {
      sub_1002A8CBC(a1, 0, v7, buf);
      v9 = *buf;
      sub_10001021C(buf);
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v10 = *(a1 + 24);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "migrateAttachApn";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s: Invalid AttachAPN dictionary - dropping", buf, 0xCu);
      }
    }

    v11 = *(a1 + 24);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "migrateAttachApn";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s: Migration complete", buf, 0xCu);
    }

    sub_1002A89DC(v5, v4, buf);
    AttachAPNDevicePersistentSaveValue(*buf, 0);
    sub_100005978(buf);
  }

LABEL_11:
  sub_10001021C(theDict);
  *a2 = 0;
  theDict[0] = CFPreferencesCopyValue(@"apns stuff", @"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  *buf = 0;
  v12 = sub_100138C38(buf, theDict);
  v13 = *a2;
  *a2 = *buf;
  *buf = v13;
  result = sub_10001021C(v12);
  if ((*(a1 + 151) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 136))
    {
      return result;
    }
  }

  else if (!*(a1 + 151))
  {
    return result;
  }

  if (*a2)
  {
    CFPreferencesSetValue(@"apns stuff", 0, @"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    sub_1002A8CBC(a1, *a2, 0, theDict);
    if (theDict != a2)
    {
      *buf = *a2;
      *a2 = theDict[0];
      theDict[0] = 0;
      sub_10001021C(buf);
    }

    v15 = theDict;
  }

  else
  {
    v25 = 0;
    *buf = CFPreferencesCopyValue(@"apns.per.iccid", @"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
    sub_100138C38(&v25, buf);
    v16 = v25;
    if (v25)
    {
      if (*(a1 + 151) < 0)
      {
        sub_100005F2C(__p, *(a1 + 128), *(a1 + 136));
      }

      else
      {
        *__p = *(a1 + 128);
        v22 = *(a1 + 144);
      }

      if (SHIBYTE(v22) < 0)
      {
        sub_100005F2C(theDict, __p[0], __p[1]);
      }

      else
      {
        *theDict = *__p;
        v28 = v22;
      }

      v26 = 0;
      if (SHIBYTE(v28) < 0)
      {
        sub_100005F2C(buf, theDict[0], theDict[1]);
      }

      else
      {
        *buf = *theDict;
        v32 = v28;
      }

      v29 = 0;
      if (ctu::cf::convert_copy())
      {
        v17 = v26;
        v26 = v29;
        v30 = v17;
        sub_100005978(&v30);
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(*buf);
      }

      v18 = v26;
      v23 = v26;
      v26 = 0;
      sub_100005978(&v26);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(theDict[0]);
      }

      v24 = CFDictionaryGetValue(v16, v18);
      *buf = 0;
      v19 = sub_100010180(buf, &v24);
      v20 = *a2;
      *a2 = *buf;
      *buf = v20;
      sub_10001021C(v19);
      sub_100005978(&v23);
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }
    }

    v15 = &v25;
  }

  return sub_10001021C(v15);
}

void sub_1002A82C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, const void *a18, const void *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_100005978(&a19);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_10001021C(&a18);
  sub_10001021C(v25);
  _Unwind_Resume(a1);
}

const void **sub_1002A839C(uint64_t a1, const __CFDictionary *a2)
{
  cf1 = 0;
  sub_100010024(&cf1, (a1 + 120));
  sub_100021348((a1 + 96));
  v4 = *(a1 + 120);
  *(a1 + 120) = 0;
  *buf = v4;
  sub_10001021C(buf);
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"source");
    v6 = Value;
    if (Value)
    {
      v7 = CFGetTypeID(Value);
      if (v7 == CFStringGetTypeID())
      {
        CFStringCompare(v6, @"usersettings", 0);
      }
    }

    theArray = 0;
    *buf = CFDictionaryGetValue(a2, @"apns");
    sub_1001FA5E0(&theArray, buf);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      v9 = CFDictionaryGetValue(a2, @"APNEditabilityTypemaskNew");
      if (v9)
      {
        CFGetTypeID(v9);
        CFNumberGetTypeID();
      }

      if (Count >= 1)
      {
        v32 = 0;
        *buf = CFArrayGetValueAtIndex(theArray, 0);
        sub_100010180(&v32, buf);
        if (!v32)
        {
          __TUAssertTrigger();
        }

        *buf = 0;
        *&buf[8] = 0;
        sub_1002A938C(buf);
      }
    }

    v32 = CFDictionaryGetValue(a2, @"attachApn");
    *buf = 0;
    sub_100010180(buf, &v32);
    v10 = *(a1 + 120);
    *(a1 + 120) = *buf;
    *buf = v10;
    sub_10001021C(buf);
    sub_100010250(&theArray);
  }

  v11 = (a1 + 24);
  v12 = *(a1 + 24);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = (*(a1 + 104) - *(a1 + 96)) >> 4;
    *buf = 136315394;
    *&buf[4] = "apply";
    *&buf[12] = 2048;
    *&buf[14] = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s: %zu APN(s) ==>> ", buf, 0x16u);
  }

  v14 = *(a1 + 96);
  if (*(a1 + 104) != v14)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      sub_1002A3288(*(v14 + v15), (a1 + 24), "");
      ++v16;
      v14 = *(a1 + 96);
      v15 += 16;
    }

    while (v16 < (*(a1 + 104) - v14) >> 4);
  }

  v17 = *v11;
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "apply";
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: <<== APN(s)", buf, 0xCu);
    v17 = *v11;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 120);
    *buf = 136315394;
    *&buf[4] = "apply";
    *&buf[12] = 2112;
    *&buf[14] = v18;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s: AttachAPN: %@", buf, 0x16u);
  }

  v19 = *(a1 + 120);
  if ((cf1 != 0) == (v19 == 0) || v19 && !CFEqual(cf1, v19))
  {
    sub_1002A945C(&event::data::refreshAttachApn, *(a1 + 8), "ui-apn");
  }

  v20 = *(a1 + 104) != *(a1 + 96) || *(a1 + 120) != 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 152));
  v22 = ServiceMap;
  if (v23 < 0)
  {
    v24 = (v23 & 0x7FFFFFFFFFFFFFFFLL);
    v25 = 5381;
    do
    {
      v23 = v25;
      v26 = *v24++;
      v25 = (33 * v25) ^ v26;
    }

    while (v26);
  }

  std::mutex::lock(ServiceMap);
  *buf = v23;
  v27 = sub_100009510(&v22[1].__m_.__sig, buf);
  if (!v27)
  {
    v29 = 0;
LABEL_37:
    std::mutex::unlock(v22);
    v28 = 0;
    v30 = 1;
    if (!v29)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v29 = v27[3];
  v28 = v27[4];
  if (!v28)
  {
    goto LABEL_37;
  }

  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v22);
  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v28);
  v30 = 0;
  if (v29)
  {
LABEL_38:
    (*(*v29 + 48))(v29, *(a1 + 8), v20, 0);
  }

LABEL_39:
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  return sub_10001021C(&cf1);
}

void sub_1002A894C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

const void **sub_1002A89DC@<X0>(const __CFString *cf@<X1>, int a2@<W0>, const void **a3@<X8>)
{
  theString2 = cf;
  if (!cf)
  {
    *a3 = 0;
    goto LABEL_5;
  }

  CFRetain(cf);
  if (a2 != 2)
  {
    *a3 = theString2;
LABEL_5:
    theString2 = 0;
    return sub_100005978(&theString2);
  }

  if ((atomic_load_explicit(&qword_101FBA130, memory_order_acquire) & 1) == 0)
  {
    sub_1017691FC();
  }

  v7 = qword_101FBA140;
  if (!qword_101FBA140)
  {
    goto LABEL_17;
  }

  v8 = &qword_101FBA140;
  do
  {
    v9 = CFStringCompare(*(v7 + 32), theString2, 0);
    if (v9 != kCFCompareLessThan)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * (v9 == kCFCompareLessThan));
  }

  while (v7);
  if (v8 == &qword_101FBA140 || CFStringCompare(theString2, v8[4], 0) == kCFCompareLessThan)
  {
LABEL_17:
    *a3 = 0;
    *a3 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@-%d", cf, 2);
    v10 = qword_101FBA140;
    if (!qword_101FBA140)
    {
      goto LABEL_24;
    }

    v11 = &qword_101FBA140;
    while (1)
    {
      while (1)
      {
        v12 = v10;
        if (CFStringCompare(theString2, *(v10 + 32), 0) != kCFCompareLessThan)
        {
          break;
        }

        v10 = *v12;
        v11 = v12;
        if (!*v12)
        {
          goto LABEL_24;
        }
      }

      if (CFStringCompare(*(v12 + 32), theString2, 0) != kCFCompareLessThan)
      {
        break;
      }

      v11 = (v12 + 8);
      v10 = *(v12 + 8);
      if (!v10)
      {
        goto LABEL_24;
      }
    }

    if (!*v11)
    {
LABEL_24:
      operator new();
    }

    sub_100222570((*v11 + 40), a3);
  }

  else
  {
    sub_10005C7A4(a3, v8 + 5);
  }

  return sub_100005978(&theString2);
}

void sub_1002A8C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void sub_1002A8C60(const void **a1)
{
  if (a1)
  {
    sub_1002A8C60(*a1);
    sub_1002A8C60(a1[1]);
    sub_100005978(a1 + 5);
    sub_100005978(a1 + 4);

    operator delete(a1);
  }
}

void sub_1002A8CBC(uint64_t a1@<X0>, const __CFDictionary *a2@<X1>, unint64_t a3@<X2>, void **a4@<X8>)
{
  *a4 = 0;
  if (!(a2 | a3))
  {
    v9 = *(a1 + 24);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *&buf[4] = "save";
    v10 = "#I %s: save() called with empty parameters - ignored";
LABEL_13:
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
    return;
  }

  v8 = (a1 + 128);
  if ((*(a1 + 151) & 0x80000000) == 0)
  {
    if (*(a1 + 151))
    {
      key = 0;
      *__dst = *v8;
      v32 = *(a1 + 144);
      goto LABEL_9;
    }

    goto LABEL_11;
  }

  v11 = *(a1 + 136);
  if (!v11)
  {
LABEL_11:
    v9 = *(a1 + 24);
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 136315138;
    *&buf[4] = "save";
    v10 = "#I %s: UI APN(s)/AttachAPN cannot be stored, no ICCID to tie to";
    goto LABEL_13;
  }

  key = 0;
  sub_100005F2C(__dst, *v8, v11);
LABEL_9:
  if (SHIBYTE(v32) < 0)
  {
    sub_100005F2C(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v38 = v32;
  }

  v34 = 0;
  if (SHIBYTE(v38) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    *&buf[16] = v38;
  }

  v35 = 0;
  if (ctu::cf::convert_copy())
  {
    v12 = v34;
    v34 = v35;
    theDict = v12;
    sub_100005978(&theDict);
  }

  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  key = v34;
  v34 = 0;
  sub_100005978(&v34);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst[0]);
  }

  theDict = 0;
  *buf = CFPreferencesCopyValue(@"apns.per.iccid", @"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  sub_100138C38(&theDict, buf);
  v35 = 0;
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
LABEL_29:
    v14 = v35;
    v35 = MutableCopy;
    *buf = v14;
    sub_1000296E0(buf);
    goto LABEL_30;
  }

  MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (MutableCopy)
  {
    goto LABEL_29;
  }

LABEL_30:
  Value = CFDictionaryGetValue(v35, key);
  v16 = Value;
  if (Value)
  {
    v17 = CFGetTypeID(Value);
    if (v17 == CFDictionaryGetTypeID())
    {
      v34 = 0;
      Mutable = CFDictionaryCreateMutableCopy(0, 0, v16);
LABEL_34:
      v19 = v34;
      v34 = Mutable;
      *buf = v19;
      sub_1000296E0(buf);
      goto LABEL_35;
    }
  }

  v34 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    goto LABEL_34;
  }

LABEL_35:
  if (a2)
  {
    v20 = v34;
    Count = CFDictionaryGetCount(a2);
    memset(buf, 0, sizeof(buf));
    sub_10007D780(buf, Count);
    __p[0] = 0;
    __p[1] = 0;
    v38 = 0;
    sub_10007D780(__p, Count);
    CFDictionaryGetKeysAndValues(a2, *buf, __p[0]);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        CFDictionarySetValue(v20, *(*buf + 8 * i), *(__p[0] + i));
      }
    }

    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (*buf)
    {
      *&buf[8] = *buf;
      operator delete(*buf);
    }

    if (sub_1002A6140((a1 + 152), *(a1 + 8)))
    {
      v23 = v34;
      v24 = sub_1002A5E2C((a1 + 152), *(a1 + 8), 0);
      __p[0] = 0;
      *buf = v24;
      v25 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, buf);
      if (v25)
      {
        v26 = __p[0];
        __p[0] = v25;
        *buf = v26;
        sub_100029A48(buf);
      }

      v27 = __p[0];
      v30 = __p[0];
      __p[0] = 0;
      sub_100029A48(__p);
      CFDictionarySetValue(v23, @"APNEditabilityTypemaskNew", v27);
      sub_100029A48(&v30);
    }
  }

  if (a3)
  {
    CFDictionarySetValue(v34, @"attachApn", a3);
  }

  CFDictionarySetValue(v35, key, v34);
  v28 = v35;
  sub_1002A89DC(@"last.iccid", *(a1 + 8), buf);
  CFDictionarySetValue(v28, *buf, key);
  sub_100005978(buf);
  v29 = *(a1 + 24);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 151) < 0)
    {
      v8 = *v8;
    }

    *buf = 136315394;
    *&buf[4] = "save";
    *&buf[12] = 2080;
    *&buf[14] = v8;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s: saved UI APNs for subscriber:%s", buf, 0x16u);
  }

  sub_100010180(__p, &v34);
  if (__p != a4)
  {
    *buf = *a4;
    *a4 = __p[0];
    __p[0] = 0;
    sub_10001021C(buf);
  }

  sub_10001021C(__p);
  CFPreferencesSetValue(@"apns.per.iccid", v35, @"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  CFPreferencesSynchronize(@"com.apple.commcenter.user_apns", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  sub_1000296E0(&v34);
  sub_1000296E0(&v35);
  sub_10001021C(&theDict);
  sub_100005978(&key);
}

void sub_1002A9274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, const void *a18, const void *a19, const void *a20, const void *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  sub_100029A48(&a10);
  sub_1000296E0(&a19);
  sub_1000296E0(&a20);
  sub_10001021C(&a21);
  sub_100005978(&a18);
  sub_10001021C(v34);
  _Unwind_Resume(a1);
}

void sub_1002A938C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1002A9430(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002A945C(uint64_t a1, int a2, char *a3)
{
  sub_1002A95D8((a1 + 24), a2, a3);
  sub_10000501C(__p, a3);
  v6 = sub_1002A97D0((a1 + 8));
  sub_1002A9814(v6, a2, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1002A94CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002A94E8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = sub_10029F000(a1);
  *v7 = off_101E37F88;
  *(v7 + 144) = a3;
  *(a1 + 148) = a4 + 100 * a3 + 1000 * subscriber::simSlotAsInstance();
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  CIPFamily::CIPFamily((a1 + 168));
  CIPFamily::CIPFamily((a1 + 184));
  *(a1 + 200) = 0;
  *(a1 + 216) = 0;
  *(a1 + 242) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  return a1;
}

void sub_1002A95B4(_Unwind_Exception *a1)
{
  CIPFamily::~CIPFamily((v1 + 168));
  sub_10029F15C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002A95D8(uint64_t *a1, int a2, const char *a3)
{
  v25 = a2;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v13 = 0u;
  v14 = 0u;
  *v12 = 0u;
  memset(v11, 0, sizeof(v11));
  v10 = 0u;
  sub_10000D518(&v10);
  v5 = subscriber::operator<<();
  v6 = sub_10000C030(v5);
  strlen(a3);
  sub_10000C030(v6);
  sub_10006EE70(&v10 + 8, __p);
  sub_1000841A0(a1, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[1]);
  }

  std::locale::~locale(v11);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1002A97A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1002A97D0(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1002A9814(uint64_t *a1, int a2, uint64_t a3)
{
  v26 = a2;
  v25 = 0uLL;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v29, v5);
  v6 = a1[1];
  if (v6)
  {
    if (atomic_load_explicit((v6 + 8), memory_order_acquire) == 1)
    {
      sub_1002A9A90(a1, &v29, 0, 1);
    }

    v7 = *a1;
    v8 = a1[1];
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v8 = 0;
    v7 = *a1;
  }

  v9 = v25;
  *&v25 = v7;
  *(&v25 + 1) = v8;
  v28[0] = v9;
  sub_10004A724(v28 + 1);
  sub_10004A704(*(&v40 + 1));
  sub_10004A6B0(&v29);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  v44 = 0;
  v45 = 10;
  v46 = &v29 + 8;
  v47 = 0;
  v48 = &v26;
  v49 = a3;
  v50 = 0;
  v51 = 0;
  v10 = sub_1002A9B28(&v25);
  v24[0] = &v29;
  v24[1] = a1;
  v24[2] = sub_1002A9D78(v10);
  v11 = sub_1002A9B28(&v25);
  v12 = sub_10004AA88((v11 + 16));
  v13 = sub_1002A9B28(&v25);
  v14 = *(sub_1002A9D78(v13) + 8);
  v15 = sub_1002A9B28(&v25);
  *&v22 = v14;
  *(&v22 + 1) = sub_1002A9D78(v15);
  *&v23 = &v29;
  *(&v23 + 1) = *(&v22 + 1);
  sub_1002A9FC8(&v22);
  v16 = sub_1002A9B28(&v25);
  v17 = sub_1002A9D78(v16);
  v18 = sub_1002A9B28(&v25);
  *&v20 = v17;
  *(&v20 + 1) = sub_1002A9D78(v18);
  *&v21 = &v29;
  *(&v21 + 1) = *(&v20 + 1);
  sub_1002A9FC8(&v20);
  v28[0] = v22;
  v28[1] = v23;
  v27[0] = v20;
  v27[1] = v21;
  sub_1002A9DBC(v12, v28, v27);
  sub_1002AA43C(v24);
  sub_1002AACF4(&v29);
  return sub_10004A724(&v25 + 1);
}

void sub_1002A9A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, atomic_uint *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_1000FFEDC(&a33);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

atomic_uint **sub_1002A9A90(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_1002A9B28(a1);
  v10 = sub_1002A9D78(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_1002A9B28(a1);
    v11 = *(sub_1002A9D78(v12) + 8);
  }

  v14 = v11;
  return sub_1002A9B6C(a1, a2, a3, &v14, a4);
}

uint64_t sub_1002A9B28(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

atomic_uint **sub_1002A9B6C(uint64_t *a1, void *a2, int a3, atomic_uint ***a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_1002A9B28(a1);
  result = sub_1002A9D78(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_1002A9C84(v10 + 2);
        sub_1002A9CC8(v15, a2);
        v10 = v22;
      }

      if (*(sub_1002A9C84(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_1002A9B28(a1);
        v18 = sub_1002A9D78(v17);
        v19 = sub_1002A9C84(v22 + 2);
        v16 = sub_100100CE8(v18, v19 + 64, &v22);
      }

      v22 = v16;
      v20 = sub_1002A9B28(a1);
      result = sub_1002A9D78(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

uint64_t sub_1002A9C84(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_1002A9CC8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_1002A9D34(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_1002A9D34(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_1002A9D78(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1002A9DBC(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_1002A9E44(a2);
    *a2 = *(*a2 + 8);
    sub_1002A9FC8(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_1002A9E44(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_1002A9EE4((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_101761304();
  }

  return v3 + 1;
}

uint64_t sub_1002A9EE4(uint64_t a1, uint64_t *a2)
{
  v2 = sub_1002A9C84(a2);
  v3 = (sub_1002A9D34((v2 + 32)) + 24);

  return sub_1002A9F30(v3);
}

uint64_t sub_1002A9F30(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = &off_101E25EA8;
    sub_1001028A8(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

void sub_1002A9FC8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 != a1[3])
  {
    if (v1 == a1[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10004AB6C((a1[2] + 8), *(a1[2] + 264));
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = sub_1002AA228((*a1 + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_1002A9C84((*a1 + 16));
      sub_1002AA26C(v4, &v14, (a1[2] + 8));
      v5 = sub_1002A9C84((*a1 + 16));
      v6 = a1[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 288);
      }

      else
      {
        ++*(v6 + 292);
      }

      v7 = sub_1002A9C84((*a1 + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_1002AA390(a1, &v14, *a1);
        v9 = 0;
      }

      (*(**(&v25 + 1) + 32))(*(&v25 + 1));
      sub_10004A6B0(&v14);
      v10 = *a1;
      v1 = a1[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *a1 = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = a1[3];
      if (v12 != v1)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = sub_1002AA228((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_1002AA390(a1, &v14, a1[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_1002AA1EC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002AA228(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_1002AA26C(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_1002A9D34(result + 4); ; i += 6)
    {
      result = sub_1002A9D34(v3);
      if (i == result[1])
      {
        break;
      }

      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10004B3DC(v6, a2);
        }

        return sub_10004B040(v8);
      }

      sub_10004AFC8(a3, v8);
      sub_10004B040(v8);
    }
  }

  return result;
}

void sub_1002AA36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_1002AA390(void *a1, void *a2, uint64_t a3)
{
  a1[3] = a3;
  v3 = a1[2];
  if (a1[1] == a3)
  {
    result = *(v3 + 296);
    if (result)
    {
      result = sub_10004B3DC(result, a2);
    }

    *(v3 + 296) = 0;
  }

  else
  {
    v4 = *(a3 + 16);
    v5 = a1[2];

    return sub_1002AA3F0(v5, a2, v4);
  }

  return result;
}

atomic_uint **sub_1002AA3F0(uint64_t a1, void *a2, uint64_t a3)
{
  result = *(a1 + 296);
  if (result)
  {
    result = sub_10004B3DC(result, a2);
  }

  *(a1 + 296) = a3;
  if (a3)
  {
    v6 = *(a3 + 28);
    if (!v6)
    {
      sub_10176135C();
    }

    *(a3 + 28) = v6 + 1;
  }

  return result;
}

uint64_t sub_1002AA43C(uint64_t a1)
{
  if (*(*a1 + 292) > *(*a1 + 288))
  {
    sub_1002AA480(*(a1 + 8), *(a1 + 16));
  }

  return a1;
}

void sub_1002AA480(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_1002A9B28(a1);
  if (sub_1002A9D78(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_1002A9B28(a1);
    v8 = *(sub_1002A9D78(v7) + 8);
    sub_1002A9B6C(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

void sub_1002AA620(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_1002AA6C4(&v2, a2);
}

uint64_t sub_1002AA680(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_1002AA6C4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002AA730(&v2);
}

void sub_1002AA7A0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_1002AA7E0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_1002AA8FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1002AAA84(a1, a2);
  sub_1002AAAF0((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

void *sub_1002AAA84(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_1000FB140();
  }

  return result;
}

uint64_t sub_1002AAAF0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1002AAB58(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1002AABC4(&v2);
}

void sub_1002AAC34(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_1002AAC74(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t sub_1002AACF4(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 296), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_1002AADCC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t *sub_1002AADEC(uint64_t a1)
{
  v4 = a1;
  sub_1002A71C4(*a1, *(a1 + 8));
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(*v2 + 48))(v2);
  }

  return sub_10028C5E0(&v4);
}

void sub_1002AAE58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10028C5E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002AAE6C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 16);
    sub_10001021C((v1 + 8));
    operator delete();
  }

  return result;
}

uint64_t *sub_1002AAEC4(uint64_t *a1)
{
  v7 = a1;
  v2 = *a1;
  v3 = a1[1];
  std::mutex::lock((*a1 + 32));
  v4 = *(v2 + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (v2 + 128);
    if (*(v2 + 151) < 0)
    {
      v5 = *v5;
    }

    *buf = 136315394;
    *&buf[4] = "setAPNs";
    v9 = 2080;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: UI APN(s) update for ICCID:'%s'", buf, 0x16u);
  }

  *buf = 0;
  sub_1002A8CBC(v2, v3, 0, buf);
  sub_1002A839C(v2, *buf);
  sub_10001021C(buf);
  std::mutex::unlock((v2 + 32));
  if (a1[5])
  {
    sub_10000FFD0((a1 + 2), 1);
  }

  return sub_1002AAE6C(&v7);
}

void sub_1002AAFEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_10001021C(va1);
  std::mutex::unlock((v2 + 32));
  sub_1002AAE6C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002AB020(uint64_t *a1)
{
  v7 = a1;
  v2 = *a1;
  v3 = a1[1];
  std::mutex::lock((*a1 + 32));
  v4 = *(v2 + 24);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (v2 + 128);
    if (*(v2 + 151) < 0)
    {
      v5 = *v5;
    }

    *buf = 136315394;
    *&buf[4] = "setAttachAPN";
    v9 = 2080;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s: UI AttachAPN update for ICCID:'%s'", buf, 0x16u);
  }

  *buf = 0;
  sub_1002A8CBC(v2, 0, v3, buf);
  sub_1002A839C(v2, *buf);
  sub_10001021C(buf);
  std::mutex::unlock((v2 + 32));
  if (a1[5])
  {
    sub_10000FFD0((a1 + 2), 1);
  }

  return sub_1002AAE6C(&v7);
}

void sub_1002AB148(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  sub_10001021C(va1);
  std::mutex::unlock((v2 + 32));
  sub_1002AAE6C(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002AB17C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10006372C(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t *sub_1002AB1CC(uint64_t *a1)
{
  v4 = a1;
  if (a1[4])
  {
    sub_1002A7638(*a1, &v5);
    v2 = a1[4];
    if (!v2)
    {
      sub_100022DB4();
    }

    (*(*v2 + 48))(v2, &v5);
    sub_10001021C(&v5);
  }

  return sub_1002AB17C(&v4);
}

uint64_t *sub_1002AB278(void *a1)
{
  v5 = a1;
  if (a1[4])
  {
    v2 = *a1;
    std::mutex::lock((*a1 + 32));
    sub_100010024(&v6, (v2 + 120));
    std::mutex::unlock((v2 + 32));
    v3 = a1[4];
    if (!v3)
    {
      sub_100022DB4();
    }

    (*(*v3 + 48))(v3, &v6);
    sub_10001021C(&v6);
  }

  return sub_1002AB17C(&v5);
}

uint64_t sub_1002AB3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10029F000(a1);
  *v6 = off_101E37F88;
  *(v6 + 156) = 0;
  *(v6 + 148) = 0;
  *(v6 + 164) = 0;
  CIPFamily::CIPFamily((v6 + 168));
  CIPFamily::CIPFamily((a1 + 184));
  *(a1 + 200) = 0;
  *(a1 + 216) = 0;
  *(a1 + 242) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  sub_1002AB638(a1, a2);
  if (*a3)
  {
    if (CIPFamily::operator!())
    {
      CIPFamily::operator=();
    }

    if (CIPFamily::operator!())
    {
      CIPFamily::operator=();
    }

    if ((*(a1 + 216) & 1) == 0)
    {
      sub_1002ABB94((a1 + 200), (*a3 + 200));
    }

    if ((*(a1 + 232) & 1) == 0)
    {
      *(a1 + 232) = *(*a3 + 232);
    }

    if ((*(a1 + 233) & 1) == 0)
    {
      *(a1 + 233) = *(*a3 + 233);
    }

    if ((*(a1 + 256) & 1) == 0)
    {
      *(a1 + 256) = *(*a3 + 256);
    }

    if ((*(a1 + 238) & 1) == 0)
    {
      *(a1 + 237) = *(*a3 + 237);
    }

    if ((*(a1 + 240) & 1) == 0)
    {
      *(a1 + 239) = *(*a3 + 239);
    }

    if ((*(a1 + 236) & 1) == 0)
    {
      *(a1 + 236) = *(*a3 + 236);
    }

    if ((*(a1 + 234) & 1) == 0)
    {
      *(a1 + 234) = *(*a3 + 234);
    }
  }

  return a1;
}

void sub_1002AB58C(_Unwind_Exception *a1)
{
  CIPFamily::~CIPFamily((v1 + 168));
  sub_10029F15C(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AB638(uint64_t a1, uint64_t a2)
{
  sub_1002AB720(a1, a2);
  v4 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v4;
  CIPFamily::operator=();
  CIPFamily::operator=();
  sub_1002ABB94((a1 + 200), (a2 + 200));
  *(a1 + 224) = *(a2 + 224);
  v5 = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 232) = v5;
  sub_1000676D4((a1 + 248), (a2 + 248));
  *(a1 + 256) = *(a2 + 256);
  if (a1 != a2)
  {
    sub_1002AB778((a1 + 264), *(a2 + 264), *(a2 + 272), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 272) - *(a2 + 264)) >> 3));
  }

  sub_10012BF3C((a1 + 288), (a2 + 288));
  sub_10012BF3C((a1 + 320), (a2 + 320));
  sub_1002ABAE4(a1 + 352, a2 + 352);
  *(a1 + 384) = *(a2 + 384);
  return a1;
}

std::string *sub_1002AB720(std::string *a1, const std::string *a2)
{
  std::string::operator=(a1 + 2, a2 + 2);
  std::string::operator=(a1 + 3, a2 + 3);
  std::string::operator=(a1 + 4, a2 + 4);
  std::string::operator=(a1 + 5, a2 + 5);
  return a1;
}

void sub_1002AB778(uint64_t *a1, uint64_t a2, __int128 *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_1002AB8FC(a1);
    if (a4 <= 0x492492492492492)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
      {
        v10 = 0x492492492492492;
      }

      else
      {
        v10 = v9;
      }

      sub_1002AB93C(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1] - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v11 >> 3) >= a4)
  {
    sub_1002ABA54(&v17, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v15 = *(v14 - 32);
        if (v15)
        {
          *(v14 - 24) = v15;
          operator delete(v15);
        }

        v14 -= 56;
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    sub_1002ABA54(&v16, a2, a2 + v11, v8);
    a1[1] = sub_1002AB98C(a1, (a2 + v11), a3, a1[1]);
  }
}

void sub_1002AB8FC(uint64_t *a1)
{
  if (*a1)
  {
    sub_1002A226C(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_1002AB93C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_1002A6618(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_1002AB98C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *(v4 + 16) = *(v6 + 2);
      *v4 = v7;
      *(v4 + 32) = 0;
      *(v4 + 40) = 0;
      *(v4 + 24) = 0;
      sub_10024064C(v4 + 24, *(v6 + 3), *(v6 + 4), (*(v6 + 4) - *(v6 + 3)) >> 2);
      *(v4 + 48) = *(v6 + 48);
      v6 = (v6 + 56);
      v4 = v12 + 56;
      v12 += 56;
    }

    while (v6 != a3);
  }

  LOBYTE(v10) = 1;
  sub_1002A6744(v9);
  return v4;
}

uint64_t sub_1002ABA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 32;
    do
    {
      v8 = v7 - 32;
      v9 = *(v7 - 32);
      *(a4 + 16) = *(v7 - 16);
      *a4 = v9;
      if (a4 != v7 - 32)
      {
        sub_1000B26FC((a4 + 24), *(v7 - 8), *v7, (*v7 - *(v7 - 8)) >> 2);
      }

      *(a4 + 48) = *(v7 + 16);
      a4 += 56;
      v7 += 56;
    }

    while (v8 + 56 != a3);
    return a3;
  }

  return result;
}

void sub_1002ABAE4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *(a2 + 8);
      v4 = &v3[-*a2] >> 2;
      v5 = *a2;

      sub_1000B26FC(a1, v5, v3, v4);
    }
  }

  else if (*(a1 + 24))
  {
    v6 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v6;
      operator delete(v6);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_10024064C(a1, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    *(a1 + 24) = 1;
  }
}

void sub_1002ABB94(CIPFamily *a1, unsigned __int8 *a2)
{
  if (*(a1 + 16) == a2[16])
  {
    if (*(a1 + 16))
    {

      CIPFamily::operator=();
    }
  }

  else if (*(a1 + 16))
  {
    CIPFamily::~CIPFamily(a1);
    *(v2 + 16) = 0;
  }

  else
  {
    CIPFamily::CIPFamily(a1, a2);
    *(v3 + 16) = 1;
  }
}

void sub_1002ABC10(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E384E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const char *sub_1002ABC8C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = "cb-apn.?";
  if (v1 == 2)
  {
    v2 = "cb-apn.2";
  }

  if (v1 == 1)
  {
    return "cb-apn.1";
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1002ABCBC(uint64_t a1)
{
  *a1 = off_101E38530;
  if (*(a1 + 224) == 1)
  {
    v5 = (a1 + 200);
    sub_1000212F4(&v5);
  }

  v2 = *(a1 + 192);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 176) == 1)
  {
    v5 = (a1 + 152);
    sub_1000B25C4(&v5);
  }

  if (*(a1 + 144) == 1)
  {
    v5 = (a1 + 120);
    sub_1000212F4(&v5);
  }

  v5 = (a1 + 96);
  sub_1000212F4(&v5);
  std::mutex::~mutex((a1 + 32));
  ctu::OsLogLogger::~OsLogLogger((a1 + 24));
  *a1 = off_101E38008;
  v3 = *(a1 + 16);
  if (v3)
  {
    dispatch_release(v3);
  }

  return a1;
}

void sub_1002ABDAC(uint64_t a1)
{
  sub_1002ABCBC(a1);

  operator delete();
}

uint64_t sub_1002ABDE8(uint64_t a1)
{
  std::mutex::lock((a1 + 32));
  v2 = (*(a1 + 104) - *(a1 + 96)) >> 4;
  std::mutex::unlock((a1 + 32));
  return v2;
}

void sub_1002ABE28(uint64_t a1)
{
  std::mutex::lock((a1 + 32));
  v2 = (a1 + 24);
  v3 = *(a1 + 24);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DATA:: CB_APN_Storage:", buf, 2u);
    v3 = *v2;
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (*(a1 + 104) - *(a1 + 96)) >> 4;
    *buf = 134217984;
    v16 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t %lu APN(s) found", buf, 0xCu);
  }

  v5 = *(a1 + 96);
  if (*(a1 + 104) != v5)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v16 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t APNx%zu:", buf, 0xCu);
        v5 = *(a1 + 96);
      }

      sub_1002A24E4(*(v5 + v6), (a1 + 24));
      ++v7;
      v5 = *(a1 + 96);
      v6 += 16;
    }

    while (v7 < (*(a1 + 104) - v5) >> 4);
  }

  if (*(a1 + 144))
  {
    v9 = *v2;
    if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
    {
      v10 = (*(a1 + 128) - *(a1 + 120)) >> 4;
      *buf = 134217984;
      v16 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t %lu FallbackAPN(s) found", buf, 0xCu);
      if ((*(a1 + 144) & 1) == 0)
      {
LABEL_20:
        sub_1000D1644();
      }
    }

    v11 = 0;
    v12 = 0;
    v13 = 1;
    while (v12 < (*(a1 + 128) - *(a1 + 120)) >> 4)
    {
      v14 = *v2;
      if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t FallbackAPNx%zu:", buf, 0xCu);
        if ((*(a1 + 144) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else if ((v13 & 1) == 0)
      {
        goto LABEL_20;
      }

      sub_1002A24E4(*(*(a1 + 120) + v11), (a1 + 24));
      ++v12;
      v13 = *(a1 + 144);
      v11 += 16;
      if ((v13 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

  std::mutex::unlock((a1 + 32));
}

void sub_1002AC0F4(uint64_t a1)
{
  std::mutex::lock((a1 + 32));
  sub_100021348((a1 + 96));
  if (*(a1 + 144) == 1)
  {
    *buf = a1 + 120;
    sub_1000212F4(buf);
    *(a1 + 144) = 0;
  }

  if (*(a1 + 176) == 1)
  {
    *buf = a1 + 152;
    sub_1000B25C4(buf);
    *(a1 + 176) = 0;
  }

  v73 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v72 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 184));
  v3 = ServiceMap;
  if (v4 < 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(ServiceMap);
  *buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, buf);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      goto LABEL_13;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_13:
  (*(*v10 + 192))(&ValueAtIndex, v10, *(a1 + 8));
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *__p = *buf;
  v72 = *&buf[16];
  sub_100005978(&ValueAtIndex);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  v12 = (a1 + 24);
  v13 = *(a1 + 24);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = __p;
    if (v72 < 0)
    {
      v14 = __p[0];
    }

    *buf = 136315394;
    *&buf[4] = "refresh";
    *&buf[12] = 2080;
    *&buf[14] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s: reading APNs from: %s", buf, 0x16u);
  }

  v70 = 0;
  v15 = Registry::getServiceMap(*(a1 + 184));
  v16 = v15;
  v18 = v17;
  if (v17 < 0)
  {
    v19 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v18 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(v15);
  *buf = v18;
  v22 = sub_100009510(&v16[1].__m_.__sig, buf);
  if (v22)
  {
    v24 = v22[3];
    v23 = v22[4];
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v16);
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v23);
      v25 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v24 = 0;
  }

  std::mutex::unlock(v16);
  v23 = 0;
  v25 = 1;
LABEL_27:
  (*(*v24 + 80))(&ValueAtIndex, v24, *(a1 + 8), 1, @"apns", 0, 0);
  sub_10006DD00(&v70, &ValueAtIndex);
  sub_10000A1EC(&ValueAtIndex);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  theArray = 0;
  v26 = Registry::getServiceMap(*(a1 + 184));
  v27 = v26;
  if (v17 < 0)
  {
    v28 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
    v29 = 5381;
    do
    {
      v17 = v29;
      v30 = *v28++;
      v29 = (33 * v29) ^ v30;
    }

    while (v30);
  }

  std::mutex::lock(v26);
  *buf = v17;
  v31 = sub_100009510(&v27[1].__m_.__sig, buf);
  if (v31)
  {
    v33 = v31[3];
    v32 = v31[4];
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v27);
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v32);
      v34 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v33 = 0;
  }

  std::mutex::unlock(v27);
  v32 = 0;
  v34 = 1;
LABEL_37:
  (*(*v33 + 80))(&ValueAtIndex, v33, *(a1 + 8), 1, @"fallback-apns", 0, 0);
  sub_10006DD00(&theArray, &ValueAtIndex);
  sub_10000A1EC(&ValueAtIndex);
  if ((v34 & 1) == 0)
  {
    sub_100004A34(v32);
  }

  if (theArray && CFArrayGetCount(theArray))
  {
    v35 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      v36 = SHIBYTE(v72);
      v37 = __p[0];
      Count = CFArrayGetCount(theArray);
      v39 = __p;
      *buf = 136315650;
      *&buf[4] = "refresh";
      if (v36 < 0)
      {
        v39 = v37;
      }

      *&buf[12] = 2080;
      *&buf[14] = v39;
      *&buf[22] = 1024;
      LODWORD(v76) = Count;
      v40 = "#I %s: Fallback APNS in %s: count %d";
      v41 = v35;
      v42 = 28;
LABEL_49:
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v40, buf, v42);
    }
  }

  else
  {
    v43 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      v44 = __p;
      if (v72 < 0)
      {
        v44 = __p[0];
      }

      *buf = 136315394;
      *&buf[4] = "refresh";
      *&buf[12] = 2080;
      *&buf[14] = v44;
      v40 = "#I %s: No Fallback APNS in %s";
      v41 = v43;
      v42 = 22;
      goto LABEL_49;
    }
  }

  if (v70 && CFArrayGetCount(v70))
  {
    *buf = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(v70, 0);
    sub_100010180(buf, &ValueAtIndex);
    v45 = *buf && (!CFDictionaryContainsKey(*buf, @"configuration") || !CFDictionaryContainsKey(*buf, @"technology-mask"));
    sub_10001021C(buf);
    v48 = sub_10029EB94(v70, @"technology-mask");
    if (v45)
    {
      *buf = 236;
      sub_1002AD140(a1, a1 + 96, v70, 3, buf, &v73);
      *buf = 236;
      sub_1002AD2B4(a1, buf);
      if (theArray)
      {
        memset(buf, 0, sizeof(buf));
        sub_1002AE564(a1 + 120, buf);
        ValueAtIndex = buf;
        sub_1000212F4(&ValueAtIndex);
        if ((*(a1 + 144) & 1) == 0)
        {
          sub_1000D1644();
        }

        *buf = 236;
        sub_1002AD140(a1, a1 + 120, theArray, 3, buf, &v73);
      }
    }

    else
    {
      v49 = v48;
      v68 = 1;
      *buf = v70;
      sub_1002AE5E4(a1, __p, v48, &v73, buf, a1 + 96, "", &v68, 1);
      if (theArray)
      {
        memset(buf, 0, sizeof(buf));
        sub_1002AE564(a1 + 120, buf);
        ValueAtIndex = buf;
        sub_1000212F4(&ValueAtIndex);
        *buf = theArray;
        if ((*(a1 + 144) & 1) == 0)
        {
          sub_1000D1644();
        }

        sub_1002AE5E4(a1, __p, v49, &v73, buf, a1 + 120, "Fallback ", &v68, 0);
      }
    }
  }

  else
  {
    v46 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      v47 = __p;
      if (v72 < 0)
      {
        v47 = __p[0];
      }

      *buf = 136315394;
      *&buf[4] = "refresh";
      *&buf[12] = 2080;
      *&buf[14] = v47;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I %s: No APNS in %s", buf, 0x16u);
    }
  }

  v50 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    v51 = (*(a1 + 104) - *(a1 + 96)) >> 4;
    *buf = 136315394;
    *&buf[4] = "refresh";
    *&buf[12] = 2048;
    *&buf[14] = v51;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I %s: %zu APN(s) in CB ==>> ", buf, 0x16u);
  }

  v52 = *(a1 + 96);
  if (*(a1 + 104) != v52)
  {
    v53 = 0;
    v54 = 0;
    do
    {
      v55 = *(v52 + v53);
      if ((*(v55 + 232) & 1) == 0 && ((*(v55 + 160) | *(v55 + 152)) & 0xFFFFFFFFFBF9FFFBLL) == 0)
      {
        *(v55 + 232) = 1;
        v56 = *v12;
        if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
        {
          v57 = (v55 + 48);
          if (*(v55 + 71) < 0)
          {
            v57 = *v57;
          }

          v58 = *(v55 + 144) - 1;
          v59 = "UI";
          if (v58 <= 4)
          {
            v59 = off_101E385D8[v58];
          }

          v60 = *(v55 + 148);
          *buf = 136315906;
          *&buf[4] = "refresh";
          *&buf[12] = 2080;
          *&buf[14] = v57;
          *&buf[22] = 2080;
          v76 = v59;
          v77 = 1024;
          v78 = v60;
          _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I %s: APN %s (%s.%d), allowing no DNS", buf, 0x26u);
          v55 = *(*(a1 + 96) + v53);
        }
      }

      sub_1002A3288(v55, (a1 + 24), "");
      ++v54;
      v52 = *(a1 + 96);
      v53 += 16;
    }

    while (v54 < (*(a1 + 104) - v52) >> 4);
  }

  v61 = *v12;
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "refresh";
    _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I %s: <<== APN(s)", buf, 0xCu);
  }

  if (*(a1 + 144) == 1)
  {
    v62 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      v63 = (*(a1 + 128) - *(a1 + 120)) >> 4;
      *buf = 136315394;
      *&buf[4] = "refresh";
      *&buf[12] = 2048;
      *&buf[14] = v63;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I %s: %zu Fallback APN(s) in CB ==>> ", buf, 0x16u);
      if ((*(a1 + 144) & 1) == 0)
      {
LABEL_89:
        sub_1000D1644();
      }
    }

    v64 = 0;
    v65 = -1;
    while (1)
    {
      v66 = *(a1 + 120);
      if (++v65 >= ((*(a1 + 128) - v66) >> 4))
      {
        break;
      }

      sub_1002A3288(*(v66 + v64), (a1 + 24), "");
      v64 += 16;
      if ((*(a1 + 144) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    v67 = *v12;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "refresh";
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "#I %s: <<== Fallback APN(s)", buf, 0xCu);
    }
  }

  sub_100010250(&theArray);
  sub_100010250(&v70);
  if (SHIBYTE(v72) < 0)
  {
    operator delete(__p[0]);
  }

  std::mutex::unlock((a1 + 32));
}

void sub_1002ACB90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, const void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_1000212F4(&a25);
  sub_100010250(&a15);
  sub_100010250(&a16);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::mutex::unlock((v31 + 32));
  _Unwind_Resume(a1);
}

void sub_1002ACCC4(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  std::mutex::lock((a1 + 32));
  v12 = 0;
  v13 = 0;
  v14 = 0;
  LODWORD(v15) = a3;
  sub_1002AE9C8(a1, a2, &v15, a4, 1, &v12);
  if (v13 == v12)
  {
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v10 = *v12;
    v11 = v12[1];
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }
  }

  v15 = &v12;
  sub_1000212F4(&v15);
  *a5 = v10;
  a5[1] = v11;
  std::mutex::unlock((a1 + 32));
}

uint64_t sub_1002ACD98(uint64_t a1)
{
  std::mutex::lock((a1 + 32));
  v2 = *(a1 + 96);
  v3 = *(a1 + 104) - v2;
  if (v3)
  {
    v4 = v3 >> 4;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    while (1)
    {
      v5 = *(*v2 + 228);
      if ((v5 & 4) == 0)
      {
        break;
      }

      v2 += 16;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }

    if ((v5 & 8) != 0)
    {
      v6 = 8;
    }

    else if ((v5 & 0x20) != 0)
    {
      v6 = 32;
    }

    else if ((v5 & 0x40) != 0)
    {
      v6 = 64;
    }

    else if ((v5 & 0x80) != 0)
    {
      v6 = 128;
    }

    else
    {
      v6 = 4;
    }
  }

  else
  {
LABEL_6:
    v6 = 4;
  }

  std::mutex::unlock((a1 + 32));
  return v6;
}

uint64_t sub_1002ACE38(uint64_t a1, uint64_t *a2, int a3)
{
  result = 0;
  if (a3 && *a2)
  {
    if (*(a1 + 144) == 1)
    {
      v8 = *(a1 + 120);
      v7 = *(a1 + 128);
      if (v8 == v7)
      {
LABEL_14:
        v11 = 0;
      }

      else
      {
        while (1)
        {
          if (sub_10021D09C(&(*v8)[13].__r_.__value_.__s.__data_[8], (*a2 + 48)))
          {
            data = *v8;
            if (HIDWORD((*v8)[9].__r_.__value_.__r.__words[1]) == *(*a2 + 228) && data[15].__r_.__value_.__s.__data_[16] == 1)
            {
              v10 = data[14].__r_.__value_.__r.__words[2];
              data = data[15].__r_.__value_.__l.__data_;
              if (v10 != data)
              {
                while (LODWORD(v10->__r_.__value_.__l.__data_) != a3)
                {
                  v10 = (v10 + 4);
                  if (v10 == data)
                  {
                    goto LABEL_13;
                  }
                }
              }

              if (v10 != data)
              {
                break;
              }
            }
          }

LABEL_13:
          v8 += 2;
          if (v8 == v7)
          {
            goto LABEL_14;
          }
        }

        if ((*(a1 + 176) & 1) == 0)
        {
          v36[0] = 0;
          v36[1] = 0;
          v37 = 0;
          sub_1002AF014(a1 + 152, v36);
          v41 = v36;
          sub_1000B25C4(&v41);
          if ((*(a1 + 176) & 1) == 0)
          {
            sub_1000D1644();
          }
        }

        v12 = *(a1 + 152);
        v13 = *(a1 + 160);
        if (v12 == v13)
        {
LABEL_37:
          sub_1002AF40C(v36, (*a2 + 48), &(*v8)[2], (*a2 + 228));
          v23 = *(a1 + 160);
          if (v23 >= *(a1 + 168))
          {
            v26 = sub_1002AF0FC(a1 + 152, v36);
            v27 = SHIBYTE(v39);
            *(a1 + 160) = v26;
            if (v27 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v24 = *v36;
            *(v23 + 16) = v37;
            *v23 = v24;
            v36[0] = 0;
            v36[1] = 0;
            v25 = v39;
            *(v23 + 24) = *__p;
            *(v23 + 40) = v25;
            v37 = 0;
            __p[0] = 0;
            __p[1] = 0;
            v39 = 0;
            *(v23 + 48) = v40;
            *(a1 + 160) = v23 + 56;
          }

          if (SHIBYTE(v37) < 0)
          {
            operator delete(v36[0]);
          }
        }

        else
        {
          v14 = *a2;
          v15 = *(*a2 + 71);
          if (v15 >= 0)
          {
            v16 = *(*a2 + 71);
          }

          else
          {
            v16 = *(*a2 + 56);
          }

          v17 = v12 + 24;
          while (1)
          {
            v18 = *(v17 - 1);
            v19 = v18;
            if ((v18 & 0x80u) != 0)
            {
              v18 = *(v17 - 16);
            }

            if (v18 == v16)
            {
              v20 = v19 >= 0 ? (v17 - 24) : *(v17 - 24);
              v21 = v15 >= 0 ? (v14 + 48) : *(v14 + 48);
              if (!memcmp(v20, v21, v16) && *(v17 + 24) == *(v14 + 228))
              {
                break;
              }
            }

            v22 = v17 + 32;
            v17 += 56;
            if (v22 == v13)
            {
              goto LABEL_37;
            }
          }

          v28 = *v8;
          v29 = *v8 + 2;
          v30 = *(v17 + 23);
          if (v30 >= 0)
          {
            v31 = *(v17 + 23);
          }

          else
          {
            v31 = *(v17 + 8);
          }

          v32 = HIBYTE(v28[2].__r_.__value_.__r.__words[2]);
          size = v28[2].__r_.__value_.__l.__size_;
          if ((v32 & 0x80u) == 0)
          {
            size = v32;
          }

          if (v31 == size)
          {
            v34 = v30 >= 0 ? v17 : *v17;
            v35 = (v32 & 0x80u) == 0 ? &(*v8)[2] : v29->__r_.__value_.__r.__words[0];
            if (!memcmp(v34, v35, v31))
            {
              LODWORD(data) = 0;
              v11 = 1;
              return v11 & data;
            }
          }

          std::string::operator=(v17, v29);
        }

        v11 = 1;
        LODWORD(data) = 1;
      }

      return v11 & data;
    }

    return 0;
  }

  return result;
}

void sub_1002AD140(int a1, int a2, CFArrayRef theArray, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  if (theArray && CFArrayGetCount(theArray) >= 1)
  {
    v9 = 0;
    v8[0] = CFArrayGetValueAtIndex(theArray, 0);
    sub_100010180(&v9, v8);
    if (!v9)
    {
      __TUAssertTrigger();
    }

    v8[0] = 0;
    v8[1] = 0;
    ++*a6;
    sub_1002A938C(v8);
  }
}

void sub_1002AD288(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_1002AD2B4(uint64_t a1, WirelessTechnologyList *a2)
{
  v2 = a2;
  v3 = a1;
  if ((*(a1 + 224) & 1) == 0)
  {
    __p = 0;
    v151 = 0;
    v152 = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 184));
    v5 = ServiceMap;
    if (v6 < 0)
    {
      v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v8 = 5381;
      do
      {
        v6 = v8;
        v9 = *v7++;
        v8 = (33 * v8) ^ v9;
      }

      while (v9);
    }

    std::mutex::lock(ServiceMap);
    *buf = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, buf);
    if (v10)
    {
      v12 = v10[3];
      v11 = v10[4];
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v5);
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v11);
        v13 = 0;
        goto LABEL_10;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
LABEL_10:
    (*(*v12 + 56))(&__p, v12, 4, 1);
    if ((v13 & 1) == 0)
    {
      sub_100004A34(v11);
    }

    v14 = HIBYTE(v152);
    if (v152 < 0)
    {
      v14 = v151;
    }

    if (!v14)
    {
      v3 = a1;
      v28 = *(a1 + 24);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        *&buf[4] = "readDefaultBundleApns";
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s: Default bundle not yet settled", buf, 0xCu);
      }

      goto LABEL_64;
    }

    memset(buf, 0, sizeof(buf));
    sub_1002AE564(a1 + 200, buf);
    theArray = buf;
    sub_1000212F4(&theArray);
    v15 = (a1 + 24);
    v16 = *(a1 + 24);
    v3 = a1;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      p_p = &__p;
      if (v152 < 0)
      {
        p_p = __p;
      }

      *buf = 136315394;
      *&buf[4] = "readDefaultBundleApns";
      *&buf[12] = 2080;
      *&buf[14] = p_p;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s: reading default APNs from: %s", buf, 0x16u);
    }

    theArray = 0;
    v18 = Registry::getServiceMap(*(a1 + 184));
    v19 = v18;
    if (v20 < 0)
    {
      v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
      v22 = 5381;
      do
      {
        v20 = v22;
        v23 = *v21++;
        v22 = (33 * v22) ^ v23;
      }

      while (v23);
    }

    std::mutex::lock(v18);
    *buf = v20;
    v24 = sub_100009510(&v19[1].__m_.__sig, buf);
    if (v24)
    {
      v26 = v24[3];
      v25 = v24[4];
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v19);
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        v3 = a1;
        sub_100004A34(v25);
        v27 = 0;
LABEL_29:
        (*(*v26 + 80))(&theDict, v26, 1, 4, @"apns", 0, 0);
        sub_10006DD00(&theArray, &theDict);
        sub_10000A1EC(&theDict);
        if ((v27 & 1) == 0)
        {
          sub_100004A34(v25);
        }

        if (theArray && (Count = CFArrayGetCount(theArray)) != 0)
        {
          v30 = *v15;
          if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
          {
            v31 = &__p;
            if (v152 < 0)
            {
              v31 = __p;
            }

            *buf = 136315650;
            *&buf[4] = "readDefaultBundleApns";
            *&buf[12] = 2048;
            *&buf[14] = Count;
            *&buf[22] = 2080;
            v154 = v31;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I %s: Found %zu set(s) of APNS in %s", buf, 0x20u);
          }

          v32 = sub_10029EB94(theArray, @"technology-mask");
          v149 = 0;
          if (Count >= 1)
          {
            v33 = 0;
            if (v32)
            {
              v34 = 224;
            }

            else
            {
              v34 = 32;
            }

            do
            {
              theDict = 0;
              *buf = CFArrayGetValueAtIndex(theArray, v33);
              sub_100010180(&theDict, buf);
              v35 = theDict;
              if (!theDict)
              {
                __TUAssertTrigger();
                v35 = theDict;
              }

              number[0] = 0;
              *buf = CFDictionaryGetValue(v35, @"technology-mask");
              sub_1002AF4F0(number, buf);
              if (number[0])
              {
                valuePtr = 0;
                CFNumberGetValue(number[0], kCFNumberIntType, &valuePtr);
                if ((valuePtr & 0x10) != 0)
                {
                  v36 = v34 & (valuePtr << 28 >> 31) | (4 * (valuePtr & 3)) | 0xC0;
                }

                else
                {
                  v36 = v34 & (valuePtr << 28 >> 31) | (4 * (valuePtr & 3));
                }

                *buf = 0;
                Value = CFDictionaryGetValue(theDict, @"configuration");
                sub_1001FA5E0(buf, &Value);
                LODWORD(Value) = v36;
                sub_1002AD140(v3, v3 + 200, *buf, 5, &Value, &v149);
                sub_100010250(buf);
              }

              else
              {
                v37 = *v15;
                if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  *&buf[4] = "readDefaultBundleApns";
                  *&buf[12] = 2048;
                  *&buf[14] = v33;
                  _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s: No technology mask for default APN configuration %ld, - ignore whole section", buf, 0x16u);
                }
              }

              sub_100029A48(number);
              sub_10001021C(&theDict);
              ++v33;
            }

            while (Count != v33);
          }

          v38 = *v15;
          if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
          {
            v39 = (*(v3 + 208) - *(v3 + 200)) >> 4;
            *buf = 136315394;
            *&buf[4] = "readDefaultBundleApns";
            *&buf[12] = 2048;
            *&buf[14] = v39;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I %s: %zu APN(s) in default bundle ==>> ", buf, 0x16u);
          }

          v40 = *(v3 + 200);
          v2 = a2;
          if (*(v3 + 208) != v40)
          {
            v41 = 0;
            v42 = 0;
            do
            {
              sub_1002A3288(*(v40 + v41), v15, "");
              ++v42;
              v40 = *(a1 + 200);
              v41 += 16;
            }

            while (v42 < (*(a1 + 208) - v40) >> 4);
          }

          v43 = *v15;
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "readDefaultBundleApns";
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I %s: <<== APN(s)", buf, 0xCu);
          }

          v3 = a1;
        }

        else
        {
          v44 = *v15;
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            v45 = &__p;
            if (v152 < 0)
            {
              v45 = __p;
            }

            *buf = 136315394;
            *&buf[4] = "readDefaultBundleApns";
            *&buf[12] = 2080;
            *&buf[14] = v45;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I %s: No default APNS in %s", buf, 0x16u);
          }
        }

        sub_100010250(&theArray);
LABEL_64:
        if (SHIBYTE(v152) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_66;
      }
    }

    else
    {
      v26 = 0;
    }

    std::mutex::unlock(v19);
    v25 = 0;
    v27 = 1;
    goto LABEL_29;
  }

LABEL_66:
  v46 = 2;
  do
  {
    __p = 0;
    v151 = 0;
    v152 = 0;
    *buf = *v2;
    sub_1002AE9C8(v3, v46, buf, 0, 1, &__p);
    v47 = *v2;
    v48 = *(v3 + 224);
    v145 = 0;
    v146 = 0;
    theArray = 0;
    if (v48 == 1)
    {
      v50 = *(v3 + 200);
      v49 = *(v3 + 208);
      if (v50 != v49)
      {
        do
        {
          if ((*(*v50 + 152) & v46) != 0 && (*(*v50 + 228) & v47) != 0)
          {
            sub_1000F2C68(&theArray, v50);
          }

          ++v50;
        }

        while (v50 != v49);
        v47 = *v2;
      }
    }

    theDict = 0;
    v142 = 0;
    v143 = 0;
    *buf = v47;
    v51 = a1;
    sub_1002AE9C8(a1, v46, buf, 1, 0, &theDict);
    v52 = __p;
    v135 = v151;
    if (v151 == __p)
    {
      v76 = theArray;
      v75 = v145;
      for (i = v145; ; v75 = i)
      {
        if (v76 == v75)
        {
          goto LABEL_94;
        }

        v77 = *v76;
        v78 = *a2;
        v79 = v51[12];
        v80 = v51[13];
        if (*(*v76 + 71) < 0)
        {
          sub_100005F2C(buf, *(v77 + 48), *(v77 + 56));
        }

        else
        {
          *buf = *(v77 + 48);
          *&buf[16] = *(v77 + 64);
        }

        LODWORD(v154) = v78;
        v81 = buf[23];
        if (v79 != v80)
        {
          if ((buf[23] & 0x80u) == 0)
          {
            v82 = buf[23];
          }

          else
          {
            v82 = *&buf[8];
          }

          if ((buf[23] & 0x80u) == 0)
          {
            v83 = buf;
          }

          else
          {
            v83 = *buf;
          }

          while (1)
          {
            v84 = *v79;
            if ((*(*v79 + 228) & v78) != 0)
            {
              v85 = *(v84 + 71);
              v86 = v85;
              if ((v85 & 0x80u) != 0)
              {
                v85 = *(v84 + 56);
              }

              if (v85 == v82)
              {
                v89 = *(v84 + 48);
                v87 = v84 + 48;
                v88 = v89;
                v90 = (v86 >= 0 ? v87 : v88);
                if (!memcmp(v90, v83, v82))
                {
                  break;
                }
              }
            }

            v79 += 2;
            if (v79 == v80)
            {
              v79 = v80;
              break;
            }
          }
        }

        if ((v81 & 0x80) != 0)
        {
          operator delete(*buf);
        }

        v51 = a1;
        v91 = *(a1 + 104);
        if (v79 == v91)
        {
          v92 = 0;
        }

        else
        {
          v93 = *v79;
          v92 = v79[1];
          if (v92)
          {
            atomic_fetch_add_explicit(&v92->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v93)
          {
            v136 = v92;
            goto LABEL_175;
          }

          v91 = *(a1 + 104);
        }

        v94 = *v76;
        v95 = *(a1 + 96);
        if (*(*v76 + 71) < 0)
        {
          sub_100005F2C(buf, *(v94 + 48), *(v94 + 56));
        }

        else
        {
          *buf = *(v94 + 48);
          *&buf[16] = *(v94 + 64);
        }

        v96 = buf[23];
        if (v95 != v91)
        {
          if ((buf[23] & 0x80u) == 0)
          {
            v97 = buf[23];
          }

          else
          {
            v97 = *&buf[8];
          }

          if ((buf[23] & 0x80u) == 0)
          {
            v98 = buf;
          }

          else
          {
            v98 = *buf;
          }

          while (1)
          {
            v99 = *v95;
            v100 = *(*v95 + 71);
            v101 = v100;
            if ((v100 & 0x80u) != 0)
            {
              v100 = *(*v95 + 56);
            }

            if (v100 == v97)
            {
              v104 = *(v99 + 48);
              v102 = v99 + 48;
              v103 = v104;
              v105 = (v101 >= 0 ? v102 : v103);
              if (!memcmp(v105, v98, v97))
              {
                break;
              }
            }

            v95 += 2;
            if (v95 == v91)
            {
              v95 = v91;
              break;
            }
          }
        }

        if ((v96 & 0x80) != 0)
        {
          operator delete(*buf);
        }

        v51 = a1;
        if (v95 == *(a1 + 104))
        {
          v106 = 0;
          v93 = 0;
        }

        else
        {
          v93 = *v95;
          v106 = v95[1];
          if (v106)
          {
            atomic_fetch_add_explicit(&v106->__shared_owners_, 1uLL, memory_order_relaxed);
          }
        }

        v136 = v106;
        if (v92)
        {
          sub_100004A34(v92);
        }

LABEL_175:
        v107 = theDict;
        v108 = v142;
        if (v142 == theDict)
        {
          v118 = v51[3];
          v119 = os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT);
          if (!v93)
          {
            if (v119)
            {
              v128 = *v76;
              v129 = (*v76 + 48);
              if (*(*v76 + 71) < 0)
              {
                v129 = *v129;
              }

              v130 = *(v128 + 144) - 1;
              v131 = "UI";
              if (v130 <= 4)
              {
                v131 = off_101E385D8[v130];
              }

              v132 = *(v128 + 148);
              WirelessTechnologyList::asString(number, a2);
              v133 = number;
              if (v140 < 0)
              {
                v133 = number[0];
              }

              *buf = 136316418;
              *&buf[4] = "fillMissingApnsFromDefaultBundle";
              *&buf[12] = 2048;
              *&buf[14] = v46;
              *&buf[22] = 2082;
              v154 = v129;
              v155 = 2080;
              v156 = v131;
              v157 = 1024;
              v158 = v132;
              v159 = 2082;
              v160 = v133;
              _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "#I %s: Service 0x%llx: using APN '%{public}s' (%s.%d) from default bundle for %{public}s", buf, 0x3Au);
              if (v140 < 0)
              {
                operator delete(number[0]);
              }
            }

            *buf = 0;
            *&buf[8] = 0;
            sub_1002AEE08();
          }

          if (v119)
          {
            v120 = *v76;
            v121 = (*v76 + 48);
            if (*(*v76 + 71) < 0)
            {
              v121 = *v121;
            }

            v122 = *(v120 + 144) - 1;
            v123 = "UI";
            if (v122 <= 4)
            {
              v123 = off_101E385D8[v122];
            }

            v124 = *(v120 + 148);
            WirelessTechnologyList::asString(number, a2);
            v125 = number[0];
            if (v140 >= 0)
            {
              v125 = number;
            }

            v126 = (v93 + 48);
            if (*(v93 + 71) < 0)
            {
              v126 = *v126;
            }

            *buf = 136316674;
            *&buf[4] = "fillMissingApnsFromDefaultBundle";
            *&buf[12] = 2048;
            *&buf[14] = v46;
            *&buf[22] = 2082;
            v154 = v121;
            v155 = 2080;
            v156 = v123;
            v157 = 1024;
            v158 = v124;
            v159 = 2082;
            v160 = v125;
            v161 = 2082;
            v162 = v126;
            _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "#I %s: Service 0x%llx: merging APN of same name '%{public}s' (%s.%d) from default bundle for %{public}s into %{public}s", buf, 0x44u);
            if (v140 < 0)
            {
              operator delete(number[0]);
            }

            v51 = a1;
          }

          *(v93 + 152) |= v46;
          v127 = *v76;
          if ((*(*v76 + 160) & v46) != 0)
          {
            *(v93 + 160) |= v46;
          }

          *(v93 + 228) |= *(v127 + 228);
        }

        else
        {
          do
          {
            v109 = v51[3];
            if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
            {
              v110 = *v76;
              v111 = (*v76 + 48);
              if (*(*v76 + 71) < 0)
              {
                v111 = *v111;
              }

              v112 = *(v110 + 144) - 1;
              v113 = "UI";
              if (v112 <= 4)
              {
                v113 = off_101E385D8[v112];
              }

              v114 = *(v110 + 148);
              WirelessTechnologyList::asString(number, a2);
              v115 = number;
              if (v140 < 0)
              {
                v115 = number[0];
              }

              v116 = (*v107 + 48);
              if (*(*v107 + 71) < 0)
              {
                v116 = *v116;
              }

              *buf = 136316674;
              *&buf[4] = "fillMissingApnsFromDefaultBundle";
              *&buf[12] = 2048;
              *&buf[14] = v46;
              *&buf[22] = 2082;
              v154 = v111;
              v155 = 2080;
              v156 = v113;
              v157 = 1024;
              v158 = v114;
              v159 = 2082;
              v160 = v115;
              v161 = 2082;
              v162 = v116;
              _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I %s: Service 0x%llx: merging type-mask of APN '%{public}s' (%s.%d) from default bundle for %{public}s into %{public}s", buf, 0x44u);
              if (v140 < 0)
              {
                operator delete(number[0]);
              }

              v51 = a1;
            }

            v117 = *v107;
            v107 = (v107 + 16);
            *(v117 + 152) |= v46;
          }

          while (v107 != v108);
        }

        if (v136)
        {
          sub_100004A34(v136);
        }

        v76 = (v76 + 16);
      }
    }

    if (v142 == theDict)
    {
      do
      {
        v54 = theArray;
        v53 = v145;
        while (v54 != v53)
        {
          v55 = *v54;
          if ((*(*v54 + 160) & v46) != 0)
          {
            v56 = *(a1 + 24);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
            {
              v57 = (v55 + 48);
              if (*(v55 + 71) < 0)
              {
                v57 = *v57;
              }

              v58 = *(v55 + 144) - 1;
              v59 = "UI";
              if (v58 <= 4)
              {
                v59 = off_101E385D8[v58];
              }

              v60 = *(v55 + 148);
              WirelessTechnologyList::asString(number, a2);
              v61 = number;
              if (v140 < 0)
              {
                v61 = number[0];
              }

              v62 = (*v52 + 48);
              if (*(*v52 + 71) < 0)
              {
                v62 = *v62;
              }

              *buf = 136316674;
              *&buf[4] = "fillMissingApnsFromDefaultBundle";
              *&buf[12] = 2048;
              *&buf[14] = v46;
              *&buf[22] = 2082;
              v154 = v57;
              v155 = 2080;
              v156 = v59;
              v157 = 1024;
              v158 = v60;
              v159 = 2082;
              v160 = v61;
              v161 = 2082;
              v162 = v62;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I %s: Service 0x%llx: merging tech-type-mask of APN '%{public}s' (%s.%d) from default bundle for %{public}s into %{public}s", buf, 0x44u);
              if (v140 < 0)
              {
                operator delete(number[0]);
              }

              v55 = *v54;
            }

            v63 = *v52;
            *(v63 + 160) = *(*v52 + 160) | v46;
            *(v63 + 233) = *(v55 + 233);
          }

          v54 = (v54 + 16);
        }

        v52 += 16;
        v51 = a1;
      }

      while (v52 != v135);
    }

LABEL_94:
    v64 = *a2;
    for (j = v51[12]; j != v51[13]; j += 16)
    {
      if ((*(*j + 152) & v46) != 0)
      {
        v64 &= ~*(*j + 228);
      }
    }

    if (v64 && theArray != v145)
    {
      for (k = (theArray + 16); ; k = (k + 16))
      {
        v67 = *(k - 2);
        if ((*(v67 + 228) & v64) != 0)
        {
          v68 = *(a1 + 24);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            v69 = (v67 + 48);
            if (*(v67 + 71) < 0)
            {
              v69 = *v69;
            }

            v70 = *(v67 + 144) - 1;
            v71 = "UI";
            if (v70 <= 4)
            {
              v71 = off_101E385D8[v70];
            }

            v72 = *(v67 + 148);
            WirelessTechnologyList::asString(number, a2);
            v73 = number;
            if (v140 < 0)
            {
              v73 = number[0];
            }

            *buf = 136316418;
            *&buf[4] = "fillMissingApnsFromDefaultBundle";
            *&buf[12] = 2048;
            *&buf[14] = v46;
            *&buf[22] = 2082;
            v154 = v69;
            v155 = 2080;
            v156 = v71;
            v157 = 1024;
            v158 = v72;
            v159 = 2082;
            v160 = v73;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#I %s: Service 0x%llx: postprocessing: using APN '%{public}s' (%s.%d) from default bundle for %{public}s", buf, 0x3Au);
            if (v140 < 0)
            {
              operator delete(number[0]);
            }
          }

          *buf = 0;
          *&buf[8] = 0;
          sub_1002AEE08();
        }

        if (k == v145)
        {
          break;
        }
      }
    }

    *buf = &theDict;
    sub_1000212F4(buf);
    *buf = &theArray;
    sub_1000212F4(buf);
    *buf = &__p;
    sub_1000212F4(buf);
    v74 = v46 >> 35;
    v46 *= 2;
    v2 = a2;
    v3 = a1;
  }

  while (!v74);
}

void sub_1002AE3E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35)
{
  sub_100010250(&a23);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002AE564(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_1000FA138(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1002AE5E4(uint64_t a1, uint64_t *a2, int a3, _DWORD *a4, CFArrayRef *a5, int a6, CFIndex a7, _BYTE *a8, char a9)
{
  Count = CFArrayGetCount(*a5);
  v16 = *(a1 + 24);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    *buf = 136315906;
    *&buf[4] = "readNonLegacyAPNs";
    v35 = 2048;
    v36 = Count;
    v37 = 2080;
    v38 = a7;
    v39 = 2080;
    v40 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s: Found %zu set(s) of %sAPNS in %s", buf, 0x2Au);
  }

  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      theDict = 0;
      *buf = CFArrayGetValueAtIndex(*a5, i);
      sub_100010180(&theDict, buf);
      v19 = theDict;
      if (!theDict)
      {
        __TUAssertTrigger();
        v19 = theDict;
      }

      number = 0;
      *buf = CFDictionaryGetValue(v19, @"technology-mask");
      sub_1002AF4F0(&number, buf);
      if (number)
      {
        valuePtr = 0;
        CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
        v20 = 4 * (valuePtr & 3);
        v27 = v20;
        v21 = v20;
        if ((valuePtr & 8) != 0)
        {
          v21 = v20 | 0x20;
          v27 = v20 | 0x20;
          if (a3)
          {
            v21 = v20 | 0xE0;
            v27 = v20 | 0xE0;
          }
        }

        if ((valuePtr & 0x10) != 0)
        {
          v21 |= 0xC0u;
          v27 = v21;
        }

        if (*a8 == 1 && Count == 1 && (v21 & 0xEC) != 0xEC)
        {
          v22 = *(a1 + 24);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            WirelessTechnologyList::asString(buf, &v27);
            v23 = buf;
            if (v37 < 0)
            {
              v23 = *buf;
            }

            *v31 = 136315394;
            *&v31[4] = "readNonLegacyAPNs";
            v32 = 2080;
            v33 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I %s: The only set of APNs is for %s. Reassign it to all technologies.", v31, 0x16u);
            if (SHIBYTE(v37) < 0)
            {
              operator delete(*buf);
            }
          }

          v27 = 236;
        }

        else
        {
          *a8 = 0;
        }

        *buf = 0;
        *v31 = CFDictionaryGetValue(theDict, @"configuration");
        sub_1001FA5E0(buf, v31);
        *v31 = v27;
        sub_1002AD140(a1, a6, *buf, 3, v31, a4);
        sub_100010250(buf);
      }

      else
      {
        v24 = *(a1 + 24);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          *&buf[4] = "readNonLegacyAPNs";
          v35 = 2080;
          v36 = a7;
          v37 = 2048;
          v38 = i;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s: No technology mask for CB %sAPN configuration %ld, - ignore whole section", buf, 0x20u);
        }
      }

      sub_100029A48(&number);
      sub_10001021C(&theDict);
    }
  }

  if (a9)
  {
    *buf = 236;
    sub_1002AD2B4(a1, buf);
  }
}

void sub_1002AE980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, const void *);
  sub_100029A48(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

void sub_1002AE9C8(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v9 = *(a1 + 96);
  v10 = *(a1 + 104);
  if (v10 == v9)
  {
    v17 = 0;
    v16 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    if (a4)
    {
      v14 = 160;
    }

    else
    {
      v14 = 152;
    }

    do
    {
      v15 = *(v9 + v12);
      if ((*(v15 + 228) & *a3) != 0 && (*(v15 + v14) & a2) != 0)
      {
        sub_1000F2C68(&v52, (v9 + v12));
        v9 = *(a1 + 96);
        v10 = *(a1 + 104);
      }

      ++v13;
      v12 += 16;
    }

    while (v13 < (v10 - v9) >> 4);
    v17 = v52;
    v16 = v53;
  }

  if (v16 == v17 && a5 && a4)
  {
    if (v10 == v9)
    {
      v10 = v9;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      do
      {
        if ((*(*(v9 + v18) + 160) & a2) != 0)
        {
          sub_1000F2C68(&v52, (v9 + v18));
          v9 = *(a1 + 96);
          v10 = *(a1 + 104);
        }

        ++v19;
        v18 += 16;
      }

      while (v19 < (v10 - v9) >> 4);
      v17 = v52;
      v16 = v53;
    }
  }

  if (a2 == 1 && v16 == v17 && v10 != v9 && (a4 & 1) == 0)
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = *(v9 + v20);
      if ((*(v22 + 228) & *a3) != 0)
      {
        *(v22 + 152) |= 1uLL;
        sub_1000F2C68(&v52, (v9 + v20));
        v9 = *(a1 + 96);
        v10 = *(a1 + 104);
      }

      ++v21;
      v20 += 16;
    }

    while (v21 < (v10 - v9) >> 4);
    v17 = v52;
    v16 = v53;
  }

  v49 = a1;
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  if (v17 != v16)
  {
    v48 = v16;
    while (1)
    {
      v50 = 0;
      v51 = 0;
      v24 = *v17;
      v23 = *(v17 + 1);
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v24 && *(v49 + 176) == 1 && *(v49 + 144) == 1 && (v25 = *(v49 + 152), v26 = *(v49 + 160), v25 != v26))
      {
        while (1)
        {
          v27 = *(v25 + 23);
          if (v27 >= 0)
          {
            v28 = *(v25 + 23);
          }

          else
          {
            v28 = *(v25 + 8);
          }

          v29 = *(v24 + 71);
          v30 = v29;
          if ((v29 & 0x80u) != 0)
          {
            v29 = *(v24 + 56);
          }

          if (v28 == v29)
          {
            v31 = v27 >= 0 ? v25 : *v25;
            v32 = v30 >= 0 ? (v24 + 48) : *(v24 + 48);
            if (!memcmp(v31, v32, v28) && *(v25 + 48) == *(v24 + 228))
            {
              if ((*(v49 + 144) & 1) == 0)
              {
                sub_1000D1644();
              }

              v33 = *(v49 + 120);
              v34 = *(v49 + 128);
              if (v33 != v34)
              {
                break;
              }
            }
          }

LABEL_70:
          v25 += 56;
          if (v25 == v26)
          {
            goto LABEL_71;
          }
        }

        while (1)
        {
          if (*(*v33 + 57) == *(v24 + 228) && sub_10021D09C(*v33 + 320, (v24 + 48)))
          {
            v35 = *v33;
            v36 = *(*v33 + 71);
            if (v36 >= 0)
            {
              v37 = *(*v33 + 71);
            }

            else
            {
              v37 = (*v33)[7];
            }

            v38 = *(v25 + 47);
            v39 = v38;
            if ((v38 & 0x80u) != 0)
            {
              v38 = *(v25 + 32);
            }

            if (v37 == v38)
            {
              v40 = v36 >= 0 ? v35 + 6 : v35[6];
              v41 = v39 >= 0 ? (v25 + 24) : *(v25 + 24);
              if (!memcmp(v40, v41, v37))
              {
                break;
              }
            }
          }

          v33 += 2;
          if (v33 == v34)
          {
            goto LABEL_70;
          }
        }

        v44 = v33[1];
        v50 = v35;
        v51 = v44;
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }
      }

      else
      {
LABEL_71:
        v35 = 0;
        v50 = 0;
        v51 = 0;
      }

      if (v23)
      {
        sub_100004A34(v23);
        v35 = v50;
      }

      v42 = v17;
      if (!v35)
      {
        goto LABEL_81;
      }

      v42 = v17;
      if (v35 == *v17)
      {
        goto LABEL_81;
      }

      v43 = (a4 ? v35[20] : v35[19]);
      if ((v43 & a2) != 0)
      {
        break;
      }

LABEL_82:
      if (v51)
      {
        sub_100004A34(v51);
      }

      if (++v17 == v48)
      {
        goto LABEL_88;
      }
    }

    v42 = &v50;
LABEL_81:
    sub_1000F2C68(a6, v42);
    goto LABEL_82;
  }

LABEL_88:
  v50 = &v52;
  sub_1000212F4(&v50);
}

void sub_1002AEDB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, char a16)
{
  if (v16)
  {
    sub_100004A34(v16);
  }

  a14 = a11;
  sub_1000212F4(&a14);
  a14 = &a16;
  sub_1000212F4(&a14);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AEE90(uint64_t a1, uint64_t a2)
{
  v4 = sub_10029F000(a1);
  *v4 = off_101E37F88;
  *(v4 + 156) = 0;
  *(v4 + 148) = 0;
  *(v4 + 164) = 0;
  CIPFamily::CIPFamily((v4 + 168));
  CIPFamily::CIPFamily((a1 + 184));
  *(a1 + 200) = 0;
  *(a1 + 216) = 0;
  *(a1 + 242) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  sub_1002AB638(a1, a2);
  return a1;
}

void sub_1002AEF64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 376) == 1)
  {
    v6 = *(v2 + 352);
    if (v6)
    {
      *(v2 + 360) = v6;
      operator delete(v6);
    }
  }

  if (*(v2 + 344) == 1 && *(v2 + 343) < 0)
  {
    operator delete(*(v2 + 320));
  }

  if (*(v2 + 312) == 1 && *(v2 + 311) < 0)
  {
    operator delete(*(v2 + 288));
  }

  sub_1002A6458(va);
  sub_10001021C(v4);
  if (*(v2 + 216) == 1)
  {
    CIPFamily::~CIPFamily(v3);
  }

  CIPFamily::~CIPFamily((v2 + 184));
  CIPFamily::~CIPFamily((v2 + 168));
  sub_10029F15C(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1002AF014(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    sub_1002AF094(a1);
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return a1;
}

void sub_1002AF094(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 56;
        sub_1000DD108(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_1002AF0FC(uint64_t a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_1000CE3D4();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    sub_1002AF26C(a1, v6);
  }

  v7 = 56 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  *(v7 + 48) = *(a2 + 12);
  *&v18 = 56 * v2 + 56;
  v10 = *(a1 + 8);
  v11 = (56 * v2 + *a1 - v10);
  sub_1002AF2C8(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1001A8DB8(&v16);
  return v15;
}

void sub_1002AF258(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001A8DB8(va);
  _Unwind_Resume(a1);
}

void sub_1002AF26C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_1002AF2C8(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      sub_1002AF370(__dst, v8);
      v8 = (v8 + 56);
      __dst += 56;
      v7 -= 56;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      sub_1000DD108(v6);
      v6 += 56;
    }
  }
}

void sub_1002AF348(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 56;
    do
    {
      sub_1000DD108(v4);
      v4 -= 56;
      v2 += 56;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1002AF370(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  *(__dst + 12) = *(a2 + 12);
  return __dst;
}

void sub_1002AF3F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1002AF40C(char *__dst, __int128 *a2, __int128 *a3, _DWORD *a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v7;
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__dst + 24, *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(__dst + 5) = *(a3 + 2);
    *(__dst + 24) = v8;
  }

  *(__dst + 12) = *a4;
  return __dst;
}