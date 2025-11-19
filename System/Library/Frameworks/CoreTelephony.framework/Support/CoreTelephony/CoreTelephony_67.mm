void sub_10044B7DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10044B8A8(uint64_t a1, uint64_t a2)
{
  memset(v242, 0, 32);
  v241 = 0u;
  v2 = *(a1 + 40);
  v3 = os_signpost_id_generate(v2);
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *(a1 + 40);
    if (os_signpost_enabled(v4))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v3, "LoadPrivateNetworkSettings", "", &buf, 2u);
    }
  }

  *&buf = off_101E4DF20;
  *(&v224 + 1) = &buf;
  *&v241 = v3;
  *(&v241 + 1) = os_retain(v2);
  sub_1000148FC(v242, &buf);
  sub_10001499C(&buf);
  v215 = 0;
  v214 = 0;
  (***(a1 + 48))(&buf);
  sub_10000501C(&__p, "loadPrivateNetworkSettings_sync");
  v239 = v241;
  sub_1000148FC(&v240, v242);
  v241 = 0uLL;
  sub_100014A28(v242);
  Registry::createXpcJetsamAssertion();
  sub_100014DA8(&v239);
  if (v213 < 0)
  {
    operator delete(__p);
  }

  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  v211 = 0;
  v5 = *(a1 + 48);
  sub_100444744(&v132);
  v6 = std::string::append(&v132, "com.apple.CommCenter.PrivateNetworkData.plist", 0x2DuLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  *&v224 = *(&v6->__r_.__value_.__l + 2);
  buf = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  (*(*v5 + 904))(&v211, v5, &buf);
  if (SBYTE7(v224) < 0)
  {
    operator delete(buf);
  }

  if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v132.__r_.__value_.__l.__data_);
  }

  v8 = v211;
  v85 = v8;
  if (v8)
  {
    v197 = 0;
    obj = [NSJSONSerialization JSONObjectWithData:v8 options:0 error:&v197];
    v9 = v197;
    if (!v9)
    {
      if (obj)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_16;
        }
      }
    }

    v50 = *(a1 + 40);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Migration from NSKeyedUnarchiver to NSJSONSerialization decoding", &buf, 2u);
    }

    v51 = [NSKeyedUnarchiver alloc];
    v196 = 0;
    v52 = [v51 initForReadingFromData:v85 error:&v196];
    v53 = v196;
    v54 = v53;
    if (!v52 || v53)
    {
      v68 = *(a1 + 40);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v54;
        _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#I No unarchiver or error: %@", &buf, 0xCu);
      }

      v184[1] = 0;
      v184[0] = 0;
      v183 = v184;
      v185 = 0;
      v195 = 0;
      v69 = *(a2 + 24);
      if (!v69)
      {
        sub_100022DB4();
      }

      (*(*v69 + 48))(v69, &v183);
      if (v195 == 1)
      {
        sub_1001349A0(v194, v194[1]);
        if (v193 < 0)
        {
          operator delete(v192);
        }

        if (v191 < 0)
        {
          operator delete(v190);
        }

        if (v189 < 0)
        {
          operator delete(v188);
        }

        if (v187 < 0)
        {
          operator delete(v186);
        }
      }

      sub_1004504C0(&v183, v184[0]);
    }

    else
    {
      v55 = [v52 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
      if (v55 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if ([v55 intValue] == 4)
        {
          v56 = objc_opt_class();
          v57 = objc_opt_class();
          v58 = objc_opt_class();
          v59 = [NSSet setWithObjects:v56, v57, v58, objc_opt_class(), 0];
          v60 = [v52 decodeObjectOfClasses:v59 forKey:@"iccidProfileDictKey"];

          obj = v60;
          if (!v60 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_10177092C();
            }

            [v52 finishDecoding];
            v145[1] = 0;
            v145[0] = 0;
            v144 = v145;
            v146 = 0;
            v156 = 0;
            v77 = *(a2 + 24);
            if (!v77)
            {
              sub_100022DB4();
            }

            (*(*v77 + 48))(v77, &v144);
            if (v156 == 1)
            {
              sub_1001349A0(v155, v155[1]);
              if (v154 < 0)
              {
                operator delete(v153);
              }

              if (v152 < 0)
              {
                operator delete(v151);
              }

              if (v150 < 0)
              {
                operator delete(v149);
              }

              if (v148 < 0)
              {
                operator delete(v147);
              }
            }

            sub_1004504C0(&v144, v145[0]);

LABEL_173:
            v54 = 0;
            goto LABEL_174;
          }

          [v52 finishDecoding];
          v143 = 0;
          v61 = [NSJSONSerialization dataWithJSONObject:v60 options:0 error:&v143];
          v54 = v143;
          v62 = *(a1 + 40);
          if (v54)
          {
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
            {
              v63 = [v54 description];
              v64 = v63;
              v65 = [v63 UTF8String];
              LODWORD(buf) = 136315138;
              *(&buf + 4) = v65;
              _os_log_error_impl(&_mh_execute_header, v62, OS_LOG_TYPE_ERROR, "NSJSONSerialization Encode Error: %s", &buf, 0xCu);
            }
          }

          else
          {
            if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
            {
              v78 = [obj count];
              LODWORD(buf) = 134217984;
              *(&buf + 4) = v78;
              _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I Saving private network settings for iccids count: %lu", &buf, 0xCu);
            }

            *&v119 = 0;
            sub_1003F50D4(&v119, v61);
            v79 = *(a1 + 48);
            sub_100444744(&v132);
            v80 = std::string::append(&v132, "com.apple.CommCenter.PrivateNetworkData.plist", 0x2DuLL);
            v81 = *&v80->__r_.__value_.__l.__data_;
            *&v224 = *(&v80->__r_.__value_.__l + 2);
            buf = v81;
            v80->__r_.__value_.__l.__size_ = 0;
            v80->__r_.__value_.__r.__words[2] = 0;
            v80->__r_.__value_.__r.__words[0] = 0;
            sub_10002D728(&v142, &v119);
            (*(*v79 + 896))(v79, &buf, &v142);
            sub_10002D760(&v142);
            if (SBYTE7(v224) < 0)
            {
              operator delete(buf);
            }

            if (SHIBYTE(v132.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v132.__r_.__value_.__l.__data_);
            }

            sub_10002D760(&v119);
          }

          if (v54)
          {
            goto LABEL_174;
          }

LABEL_16:
          v10 = *(a1 + 40);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [obj count];
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v11;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Loading private network settings for iccids count: %lu", &buf, 0xCu);
          }

          v141 = 0u;
          v140 = 0u;
          v139 = 0u;
          v138 = 0u;
          v137 = 0u;
          v136 = 0u;
          v135 = 0u;
          v134 = 0u;
          v133 = 0u;
          *&v132.__r_.__value_.__r.__words[1] = 0u;
          v132.__r_.__value_.__r.__words[0] = &v132.__r_.__value_.__l.__size_;
          BYTE8(v141) = 0;
          v128 = 0u;
          v129 = 0u;
          v130 = 0u;
          v131 = 0u;
          obj = obj;
          v93 = [obj countByEnumeratingWithState:&v128 objects:v238 count:16];
          if (v93)
          {
            v102 = 0;
            v92 = *v129;
            for (i = *v129; ; i = *v129)
            {
              if (i != v92)
              {
                objc_enumerationMutation(obj);
              }

              v96 = *(*(&v128 + 1) + 8 * v102);
              v13 = [obj objectForKey:?];
              v236 = 0u;
              v237 = 0u;
              v234 = 0u;
              v235 = 0u;
              v232 = 0u;
              v233 = 0u;
              v230 = 0u;
              v231 = 0u;
              v228 = 0u;
              v229 = 0u;
              memset(v227, 0, sizeof(v227));
              memset(v226, 0, sizeof(v226));
              memset(v225, 0, sizeof(v225));
              buf = 0u;
              v224 = 0u;
              sub_100450684(&buf);
              v14 = [v13 objectForKey:@"supportPrivateNetworkKey"];
              v15 = [v14 BOOLValue];

              BYTE8(v228) = v15;
              v101 = [v13 objectForKey:@"mccKey"];
              if (v101)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v16 = v101;
                  sub_100016890(&v225[1], [v101 UTF8String]);
                }
              }

              v100 = [v13 objectForKey:@"mncKey"];
              if (v100)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v17 = v100;
                  sub_100016890(v226, [v100 UTF8String]);
                }
              }

              v99 = [v13 objectForKey:@"gid1Key"];
              if (v99)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v18 = v99;
                  sub_100016890(&v226[1], [v99 UTF8String]);
                }
              }

              v98 = [v13 objectForKey:@"gid2Key"];
              if (v98)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v19 = v98;
                  sub_100016890(v227, [v98 UTF8String]);
                }
              }

              v95 = [v13 objectForKey:@"allowsAutomaticToggling"];
              if (v95)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  BYTE9(v228) = [v95 BOOLValue];
                }
              }

              v97 = [v13 objectForKey:@"simCsgIdentifierKey"];
              if (v97)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v20 = v97;
                  *&v119 = [v97 UTF8String];
                  sub_100184AD0(&v227[24], &v119);
                }
              }

              v21 = [v13 objectForKey:@"simNidIdentifierKey"];
              if (v21)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v22 = v21;
                  *&v119 = [v21 UTF8String];
                  sub_100184AD0(&v227[56], &v119);
                }
              }

              v23 = [v13 objectForKey:@"pnwProfileNameKey"];
              if (v23)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && (BYTE8(v141) & 1) == 0)
                {
                  v127 = 0;
                  v125 = 0u;
                  v126 = 0u;
                  v123 = 0u;
                  v124 = 0u;
                  v121 = 0u;
                  v122 = 0u;
                  v119 = 0u;
                  v120 = 0u;
                  sub_10000501C(&v122 + 8, "");
                  sub_10000501C(&v124, "");
                  WORD4(v125) = 0;
                  HIDWORD(v125) = 0;
                  *(&v126 + 1) = 0;
                  v127 = 0;
                  *&v126 = &v126 + 8;
                  v24 = v23;
                  sub_100016890((&v119 + 8), [v23 UTF8String]);
                  v90 = [v13 objectForKey:@"pnwProfileVersionKey"];
                  if (v90)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v25 = v90;
                      sub_100016890(&v121, [v90 UTF8String]);
                    }
                  }

                  v86 = [v13 objectForKey:@"supportsCellOverWifiKey"];
                  if (v86)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      BYTE9(v125) = [v86 BOOLValue];
                    }
                  }

                  v87 = [v13 objectForKey:@"5GStandaloneEnabled"];
                  if (v87)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      HIDWORD(v125) = [v87 intValue];
                    }
                  }

                  v88 = [v13 objectForKey:@"pnwProfileTypeKey"];
                  if (v88)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      LODWORD(v119) = [v88 integerValue];
                    }
                  }

                  v89 = [v13 objectForKey:@"geofenceListKey"];
                  if (v89)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v217 = 0;
                      memset(v216, 0, sizeof(v216));
                      v115 = 0u;
                      v116 = 0u;
                      v117 = 0u;
                      v118 = 0u;
                      v26 = v89;
                      v27 = [v26 countByEnumeratingWithState:&v115 objects:v222 count:16];
                      if (v27)
                      {
                        v28 = 0;
                        v29 = *v116;
                        for (j = *v116; ; j = *v116)
                        {
                          if (j != v29)
                          {
                            objc_enumerationMutation(v26);
                          }

                          v31 = [v26 objectForKeyedSubscript:*(*(&v115 + 1) + 8 * v28)];
                          v32 = [v31 objectForKeyedSubscript:@"radiusKey"];
                          [v32 doubleValue];
                          *v216 = v33;

                          v34 = [v31 objectForKeyedSubscript:@"longitudeKey"];
                          [v34 doubleValue];
                          *&v216[8] = v35;

                          v36 = [v31 objectForKeyedSubscript:@"latitudeKey"];
                          [v36 doubleValue];
                          *&v216[16] = v37;

                          v38 = [v31 objectForKeyedSubscript:@"geofenceIdKey"];
                          v39 = v38;
                          sub_100016890(&v216[24], [v38 UTF8String]);

                          sub_1004604CC(&v126, &v216[24]);
                          if (++v28 >= v27)
                          {
                            v27 = [v26 countByEnumeratingWithState:&v115 objects:v222 count:16];
                            if (!v27)
                            {
                              break;
                            }

                            v28 = 0;
                          }
                        }
                      }

                      if (SHIBYTE(v217) < 0)
                      {
                        operator delete(*&v216[48]);
                      }

                      if ((v216[47] & 0x80000000) != 0)
                      {
                        operator delete(*&v216[24]);
                      }
                    }
                  }

                  sub_10044D4B4(&v133, &v119);
                  v40 = *(a1 + 40);
                  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
                  {
                    log = v40;
                    v82 = sub_10071FFA8(v119);
                    if (v120 >= 0)
                    {
                      v41 = &v119 + 8;
                    }

                    else
                    {
                      v41 = *(&v119 + 1);
                    }

                    if ((SBYTE7(v122) & 0x80u) == 0)
                    {
                      v42 = &v121;
                    }

                    else
                    {
                      v42 = v121;
                    }

                    if (v123 >= 0)
                    {
                      v43 = &v122 + 8;
                    }

                    else
                    {
                      v43 = *(&v122 + 1);
                    }

                    if ((SBYTE7(v125) & 0x80u) == 0)
                    {
                      v44 = &v124;
                    }

                    else
                    {
                      v44 = v124;
                    }

                    v45 = asString(BYTE8(v125));
                    v46 = asString(BYTE9(v125));
                    v47 = asString();
                    *v216 = 136317186;
                    *&v216[4] = v82;
                    *&v216[12] = 2080;
                    *&v216[14] = v41;
                    *&v216[22] = 2080;
                    *&v216[24] = v42;
                    *&v216[32] = 2080;
                    *&v216[34] = v43;
                    *&v216[42] = 2080;
                    *&v216[44] = v44;
                    *&v216[52] = 2080;
                    *&v216[54] = v45;
                    *&v216[62] = 2080;
                    v217 = v46;
                    v218 = 2080;
                    v219 = v47;
                    v220 = 2048;
                    v221 = v127;
                    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I profile migration case: profileType=%s, profileName=%s, profileVersion=%s, CsgIdentifier=%s, NidIdentifier=%s, isSetAside=%s, supportsCellularOverWifi=%s, 5GStandaloneEnabled=%s, geofenceSize=#%lu", v216, 0x5Cu);
                  }

                  sub_1001349A0(&v126, *(&v126 + 1));
                  if (SBYTE7(v125) < 0)
                  {
                    operator delete(v124);
                  }

                  if (SHIBYTE(v123) < 0)
                  {
                    operator delete(*(&v122 + 1));
                  }

                  if (SBYTE7(v122) < 0)
                  {
                    operator delete(v121);
                  }

                  if (SHIBYTE(v120) < 0)
                  {
                    operator delete(*(&v119 + 1));
                  }
                }
              }

              v48 = v96;
              sub_10000501C(&v119, [v96 UTF8String]);
              *v216 = &v119;
              v49 = sub_1004606E4(&v132, &v119);
              sub_10044D558(v49 + 56, &buf);
              if (SBYTE7(v120) < 0)
              {
                operator delete(v119);
              }

              sub_100135324(&buf);
              if (++v102 >= v93)
              {
                v93 = [obj countByEnumeratingWithState:&v128 objects:v238 count:16];
                if (!v93)
                {
                  break;
                }

                v102 = 0;
              }
            }
          }

          sub_1004501B4(v103, &v132);
          sub_10045051C(v104, &v133);
          v72 = *(a2 + 24);
          if (!v72)
          {
            sub_100022DB4();
          }

          (*(*v72 + 48))(v72, v103);
          if (v114 == 1)
          {
            sub_1001349A0(v113, v113[1]);
            if (v112 < 0)
            {
              operator delete(v111);
            }

            if (v110 < 0)
            {
              operator delete(v109);
            }

            if (v108 < 0)
            {
              operator delete(v107);
            }

            if (v106 < 0)
            {
              operator delete(v105);
            }
          }

          sub_1004504C0(v103, v103[1]);
          if (BYTE8(v141) == 1)
          {
            sub_1001349A0(&v140, *(&v140 + 1));
            if (SBYTE7(v139) < 0)
            {
              operator delete(v138);
            }

            if (SHIBYTE(v137) < 0)
            {
              operator delete(*(&v136 + 1));
            }

            if (SBYTE7(v136) < 0)
            {
              operator delete(v135);
            }

            if (SHIBYTE(v134) < 0)
            {
              operator delete(*(&v133 + 1));
            }
          }

          sub_1004504C0(&v132, v132.__r_.__value_.__l.__size_);
          goto LABEL_173;
        }

        v74 = *(a1 + 40);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          v75 = [v55 intValue];
          LODWORD(buf) = 67109120;
          DWORD1(buf) = v75;
          _os_log_impl(&_mh_execute_header, v74, OS_LOG_TYPE_DEFAULT, "#I Version mismatch [%d]", &buf, 8u);
        }

        [v52 finishDecoding];
        v158[1] = 0;
        v158[0] = 0;
        v157 = v158;
        v159 = 0;
        v169 = 0;
        v76 = *(a2 + 24);
        if (!v76)
        {
          sub_100022DB4();
        }

        (*(*v76 + 48))(v76, &v157);
        if (v169 == 1)
        {
          sub_1001349A0(v168, v168[1]);
          if (v167 < 0)
          {
            operator delete(v166);
          }

          if (v165 < 0)
          {
            operator delete(v164);
          }

          if (v163 < 0)
          {
            operator delete(v162);
          }

          if (v161 < 0)
          {
            operator delete(v160);
          }
        }

        sub_1004504C0(&v157, v158[0]);
      }

      else
      {
        v70 = *(a1 + 40);
        if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#I Version decoding failure", &buf, 2u);
        }

        [v52 finishDecoding];
        v171[1] = 0;
        v171[0] = 0;
        v170 = v171;
        v172 = 0;
        v182 = 0;
        v71 = *(a2 + 24);
        if (!v71)
        {
          sub_100022DB4();
        }

        (*(*v71 + 48))(v71, &v170);
        if (v182 == 1)
        {
          sub_1001349A0(v181, v181[1]);
          if (v180 < 0)
          {
            operator delete(v179);
          }

          if (v178 < 0)
          {
            operator delete(v177);
          }

          if (v176 < 0)
          {
            operator delete(v175);
          }

          if (v174 < 0)
          {
            operator delete(v173);
          }
        }

        sub_1004504C0(&v170, v171[0]);
      }

      v54 = 0;
    }

LABEL_174:
    goto LABEL_175;
  }

  v66 = *(a1 + 40);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#I loadPrivateNetworkSettings: No data", &buf, 2u);
  }

  v199[1] = 0;
  v199[0] = 0;
  v198 = v199;
  v200 = 0;
  v210 = 0;
  v67 = *(a2 + 24);
  if (!v67)
  {
    sub_100022DB4();
  }

  (*(*v67 + 48))(v67, &v198);
  if (v210 == 1)
  {
    sub_1001349A0(v209, v209[1]);
    if (v208 < 0)
    {
      operator delete(v207);
    }

    if (v206 < 0)
    {
      operator delete(v205);
    }

    if (v204 < 0)
    {
      operator delete(v203);
    }

    if (v202 < 0)
    {
      operator delete(v201);
    }
  }

  sub_1004504C0(&v198, v199[0]);
LABEL_175:

  sub_10002D760(&v211);
  if (v215)
  {
    sub_100004A34(v215);
  }

  return sub_100014DA8(&v241);
}

void sub_10044CFF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33)
{
  sub_10002D760(&STACK[0x6D8]);
  if (STACK[0x700])
  {
    sub_100004A34(STACK[0x700]);
  }

  sub_100014DA8((v38 - 160));
  _Unwind_Resume(a1);
}

uint64_t sub_10044D3E8(uint64_t a1)
{
  if (*(a1 + 160) == 1)
  {
    sub_1001349A0(a1 + 136, *(a1 + 144));
    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }
  }

  sub_1004504C0(a1, *(a1 + 8));
  return a1;
}

uint64_t sub_10044D470(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_10044D4B4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 136) == 1)
  {
    *a1 = *a2;
    std::string::operator=((a1 + 8), (a2 + 8));
    std::string::operator=((a1 + 32), (a2 + 32));
    std::string::operator=((a1 + 56), (a2 + 56));
    std::string::operator=((a1 + 80), (a2 + 80));
    *(a1 + 104) = *(a2 + 104);
    if (a1 != a2)
    {
      sub_100135418((a1 + 112), *(a2 + 112), (a2 + 120));
    }
  }

  else
  {
    sub_100134E64(a1, a2);
    *(a1 + 136) = 1;
  }

  return a1;
}

uint64_t sub_10044D558(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (a1 != a2)
  {
    sub_1001741DC((a1 + 8), *(a2 + 8), (a2 + 16));
  }

  v4 = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = v4;
  std::string::operator=((a1 + 40), (a2 + 40));
  std::string::operator=((a1 + 64), (a2 + 64));
  std::string::operator=((a1 + 88), (a2 + 88));
  std::string::operator=((a1 + 112), (a2 + 112));
  sub_10012BF3C((a1 + 136), (a2 + 136));
  sub_10012BF3C((a1 + 168), (a2 + 168));
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  std::string::operator=((a1 + 216), (a2 + 216));
  std::string::operator=((a1 + 240), (a2 + 240));
  std::string::operator=((a1 + 264), (a2 + 264));
  std::string::operator=((a1 + 288), (a2 + 288));
  *(a1 + 312) = *(a2 + 312);
  if (a1 != a2)
  {
    sub_100135418((a1 + 320), *(a2 + 320), (a2 + 328));
  }

  *(a1 + 344) = *(a2 + 344);
  return a1;
}

uint64_t *sub_10044D660(uint64_t a1, void *a2)
{
  memset(v64, 0, sizeof(v64));
  v63 = 0u;
  v4 = *(a1 + 40);
  v5 = os_signpost_id_generate(v4);
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v6 = *(a1 + 40);
    if (os_signpost_enabled(v6))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SavePrivateNetworkProfiles", "", &buf, 2u);
    }
  }

  *&buf = off_101E4DFA0;
  p_buf = &buf;
  *&v63 = v5;
  *(&v63 + 1) = os_retain(v4);
  sub_1000148FC(v64, &buf);
  sub_10001499C(&buf);
  v59 = 0;
  v60 = 0;
  (***(a1 + 48))(&buf);
  sub_10000501C(&__p, "savePrivateNetworkProfiles_sync");
  v61 = v63;
  sub_1000148FC(&v62, v64);
  v63 = 0uLL;
  sub_100014A28(v64);
  Registry::createXpcJetsamAssertion();
  sub_100014DA8(&v61);
  if (v58 < 0)
  {
    operator delete(__p);
  }

  v49 = a1;
  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  v51 = objc_opt_new();
  v7 = *a2;
  v50 = a2 + 1;
  if (*a2 != a2 + 1)
  {
    do
    {
      v52 = objc_opt_new();
      v8 = v7 + 8;
      if (*(v7 + 87) < 0)
      {
        v8 = *v8;
      }

      v9 = [NSString stringWithUTF8String:v8];
      [v52 setValue:v9 forKey:@"pnwProfileNameKey"];

      v10 = v7 + 11;
      if (*(v7 + 111) < 0)
      {
        v10 = *v10;
      }

      v11 = [NSString stringWithUTF8String:v10];
      [v52 setValue:v11 forKey:@"pnwProfileVersionKey"];

      v12 = v7 + 14;
      if (*(v7 + 135) < 0)
      {
        v12 = *v12;
      }

      v13 = [NSString stringWithUTF8String:v12];
      [v52 setValue:v13 forKey:@"profileCsgIdentifierKey"];

      v14 = v7 + 17;
      if (*(v7 + 159) < 0)
      {
        v14 = *v14;
      }

      v15 = [NSString stringWithUTF8String:v14];
      [v52 setValue:v15 forKey:@"profileNidIdentifierKey"];

      v16 = [NSNumber numberWithBool:*(v7 + 161)];
      [v52 setValue:v16 forKey:@"supportsCellOverWifiKey"];

      v17 = [NSNumber numberWithInt:*(v7 + 41)];
      [v52 setValue:v17 forKey:@"5GStandaloneEnabled"];

      v18 = [NSNumber numberWithInt:*(v7 + 14)];
      [v52 setValue:v18 forKey:@"pnwProfileTypeKey"];

      v19 = objc_opt_new();
      v20 = v7[21];
      if (v20 != v7 + 22)
      {
        v21 = 0;
        do
        {
          v22 = objc_opt_new();
          v23 = [NSNumber numberWithDouble:*(v20 + 9)];
          [v22 setValue:v23 forKey:@"latitudeKey"];

          v24 = [NSNumber numberWithDouble:*(v20 + 8)];
          [v22 setValue:v24 forKey:@"longitudeKey"];

          v25 = [NSNumber numberWithDouble:*(v20 + 7)];
          [v22 setValue:v25 forKey:@"radiusKey"];

          v26 = v20 + 10;
          if (*(v20 + 103) < 0)
          {
            v26 = *v26;
          }

          v27 = [NSString stringWithUTF8String:v26];
          [v22 setValue:v27 forKey:@"geofenceIdKey"];

          v28 = [NSNumber numberWithUnsignedInt:v21];
          v29 = [v28 stringValue];
          [v19 setValue:v22 forKey:v29];

          v30 = v20[1];
          if (v30)
          {
            do
            {
              v31 = v30;
              v30 = *v30;
            }

            while (v30);
          }

          else
          {
            do
            {
              v31 = v20[2];
              v32 = *v31 == v20;
              v20 = v31;
            }

            while (!v32);
          }

          v21 = (v21 + 1);
          v20 = v31;
        }

        while (v31 != v7 + 22);
      }

      [v52 setValue:v19 forKey:@"geofenceListKey"];
      v33 = v7 + 4;
      if (*(v7 + 55) < 0)
      {
        v33 = *v33;
      }

      v34 = [NSString stringWithUTF8String:v33];
      [v51 setValue:v52 forKey:v34];

      v35 = v7[1];
      if (v35)
      {
        do
        {
          v36 = v35;
          v35 = *v35;
        }

        while (v35);
      }

      else
      {
        do
        {
          v36 = v7[2];
          v32 = *v36 == v7;
          v7 = v36;
        }

        while (!v32);
      }

      v7 = v36;
    }

    while (v36 != v50);
  }

  v56 = 0;
  v37 = [NSJSONSerialization dataWithJSONObject:v51 options:0 error:&v56];
  v38 = v56;
  if (v38)
  {
    v39 = *(v49 + 40);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [v38 description];
      v41 = v40;
      v42 = [v40 UTF8String];
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v42;
      _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Save Private Network Profile Encode Error: %s", &buf, 0xCu);
    }
  }

  else
  {
    cf = v37;
    if (v37)
    {
      CFRetain(v37);
    }

    v43 = *(v49 + 40);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = [v51 count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v44;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I Saving private network profiles count: %lu", &buf, 0xCu);
    }

    v45 = *(v49 + 48);
    sub_100444744(&v54);
    v46 = std::string::append(&v54, "com.apple.CommCenter.PrivateNetworkProfiles.plist", 0x31uLL);
    v47 = *&v46->__r_.__value_.__l.__data_;
    v66 = v46->__r_.__value_.__r.__words[2];
    buf = v47;
    v46->__r_.__value_.__l.__size_ = 0;
    v46->__r_.__value_.__r.__words[2] = 0;
    v46->__r_.__value_.__r.__words[0] = 0;
    v53 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    (*(*v45 + 896))(v45, &buf, &v53);
    sub_10002D760(&v53);
    if (SHIBYTE(v66) < 0)
    {
      operator delete(buf);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    sub_10002D760(&cf);
  }

  if (v60)
  {
    sub_100004A34(v60);
  }

  return sub_100014DA8(&v63);
}

void sub_10044DDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, const void *a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::__shared_weak_count *a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  sub_10002D760(&a21);

  if (a30)
  {
    sub_100004A34(a30);
  }

  sub_100014DA8(&a37);
  _Unwind_Resume(a1);
}

uint64_t *sub_10044DFA0(uint64_t a1, uint64_t a2)
{
  memset(v106, 0, sizeof(v106));
  v105 = 0u;
  v3 = *(a1 + 40);
  v4 = os_signpost_id_generate(v3);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = *(a1 + 40);
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v5, OS_SIGNPOST_INTERVAL_BEGIN, v4, "LoadPrivateNetworkProfiles", "", buf, 2u);
    }
  }

  *buf = off_101E4E020;
  *(&v94 + 1) = buf;
  *&v105 = v4;
  *(&v105 + 1) = os_retain(v3);
  sub_1000148FC(v106, buf);
  sub_10001499C(buf);
  v90 = 0;
  v89 = 0;
  (***(a1 + 48))(buf);
  sub_10000501C(&__p, "loadPrivateNetworkProfiles_sync");
  v103 = v105;
  sub_1000148FC(&v104, v106);
  v105 = 0uLL;
  sub_100014A28(v106);
  Registry::createXpcJetsamAssertion();
  sub_100014DA8(&v103);
  if (v88 < 0)
  {
    operator delete(__p);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v86 = 0;
  v6 = *(a1 + 48);
  sub_100444744(&v68);
  v7 = std::string::append(&v68, "com.apple.CommCenter.PrivateNetworkProfiles.plist", 0x31uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  *&v94 = *(&v7->__r_.__value_.__l + 2);
  *buf = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  (*(*v6 + 904))(&v86, v6, buf);
  if (SBYTE7(v94) < 0)
  {
    operator delete(*buf);
  }

  if (SBYTE7(v69) < 0)
  {
    operator delete(v68);
  }

  v9 = v86;
  v48 = v9;
  if (v9)
  {
    v82 = 0;
    v47 = [NSJSONSerialization JSONObjectWithData:v9 options:0 error:&v82];
    v10 = v82;
    v11 = *(a1 + 40);
    v46 = v10;
    if (v10)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v43 = [v46 description];
        v44 = v43;
        v45 = [v43 UTF8String];
        *buf = 136315138;
        *&buf[4] = v45;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Load Private Network Profile Decode Error: %s", buf, 0xCu);
      }

      v79[0] = 0;
      v81 = 0;
      v12 = *(a2 + 24);
      if (!v12)
      {
        sub_100022DB4();
      }

      (*(*v12 + 48))(v12, v79);
      if (v81 != 1)
      {
        goto LABEL_86;
      }

      v13 = v80;
      v14 = v79;
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v47 count];
        *buf = 134217984;
        *&buf[4] = v17;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Loading private network profiles count: %lu", buf, 0xCu);
      }

      v78[0] = 0;
      v78[1] = 0;
      v77 = v78;
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      obj = v47;
      v51 = [obj countByEnumeratingWithState:&v73 objects:v102 count:16];
      if (v51)
      {
        v60 = 0;
        v18 = *v74;
        v50 = *v74;
        while (1)
        {
          if (v18 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v55 = *(*(&v73 + 1) + 8 * v60);
          v61 = [obj objectForKey:?];
          v101 = 0;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          *v98 = 0u;
          *v95 = 0u;
          *v96 = 0u;
          *buf = 0u;
          v94 = 0u;
          sub_10000501C(&v96[1], "");
          sub_10000501C(v98, "");
          WORD4(v99) = 0;
          HIDWORD(v99) = 0;
          *(&v100 + 1) = 0;
          v101 = 0;
          *&v100 = &v100 + 8;
          v59 = [v61 objectForKey:@"pnwProfileNameKey"];
          if (v59)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = v59;
              sub_100016890(&buf[8], [v59 UTF8String]);
            }
          }

          v58 = [v61 objectForKey:@"pnwProfileVersionKey"];
          if (v58)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v20 = v58;
              sub_100016890(v95, [v58 UTF8String]);
            }
          }

          v57 = [v61 objectForKey:@"profileCsgIdentifierKey"];
          if (v57)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v21 = v57;
              sub_100016890(&v96[1], [v57 UTF8String]);
            }
          }

          v56 = [v61 objectForKey:@"profileNidIdentifierKey"];
          if (v56)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = v56;
              sub_100016890(v98, [v56 UTF8String]);
            }
          }

          v53 = [v61 objectForKey:@"supportsCellOverWifiKey"];
          if (v53)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              BYTE9(v99) = [v53 BOOLValue];
            }
          }

          v54 = [v61 objectForKey:@"5GStandaloneEnabled"];
          if (v54)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              HIDWORD(v99) = [v54 intValue];
            }
          }

          v23 = [v61 objectForKey:@"pnwProfileTypeKey"];
          if (v23)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              *buf = [v23 integerValue];
            }
          }

          v24 = [v61 objectForKey:@"geofenceListKey"];
          if (v24)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v72 = 0;
              v70 = 0u;
              *v71 = 0u;
              v68 = 0u;
              v69 = 0u;
              v64 = 0u;
              v65 = 0u;
              v66 = 0u;
              v67 = 0u;
              v25 = v24;
              v26 = [v25 countByEnumeratingWithState:&v64 objects:v92 count:16];
              if (v26)
              {
                v27 = 0;
                v28 = *v65;
                for (i = *v65; ; i = *v65)
                {
                  if (i != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = [v25 objectForKeyedSubscript:*(*(&v64 + 1) + 8 * v27)];
                  v31 = [v30 objectForKeyedSubscript:@"radiusKey"];
                  [v31 doubleValue];
                  *&v68 = v32;

                  v33 = [v30 objectForKeyedSubscript:@"longitudeKey"];
                  [v33 doubleValue];
                  *(&v68 + 1) = v34;

                  v35 = [v30 objectForKeyedSubscript:@"latitudeKey"];
                  [v35 doubleValue];
                  *&v69 = v36;

                  v37 = [v30 objectForKeyedSubscript:@"geofenceIdKey"];
                  v38 = v37;
                  sub_100016890((&v69 + 8), [v37 UTF8String]);

                  sub_1004604CC(&v100, &v69 + 1);
                  if (++v27 >= v26)
                  {
                    v26 = [v25 countByEnumeratingWithState:&v64 objects:v92 count:16];
                    if (!v26)
                    {
                      break;
                    }

                    v27 = 0;
                  }
                }
              }

              if (SHIBYTE(v72) < 0)
              {
                operator delete(v71[0]);
              }

              if (SHIBYTE(v70) < 0)
              {
                operator delete(*(&v69 + 1));
              }
            }
          }

          v39 = v55;
          sub_10000501C(&v68, [v55 UTF8String]);
          v91 = &v68;
          v40 = sub_100460B64(&v77, &v68);
          *(v40 + 56) = *buf;
          std::string::operator=((v40 + 64), &buf[8]);
          std::string::operator=((v40 + 88), v95);
          std::string::operator=((v40 + 112), &v96[1]);
          std::string::operator=((v40 + 136), v98);
          *(v40 + 160) = *(&v99 + 1);
          if ((v40 + 56) != buf)
          {
            sub_100135418((v40 + 168), v100, &v100 + 1);
          }

          if (SBYTE7(v69) < 0)
          {
            operator delete(v68);
          }

          sub_1001349A0(&v100, *(&v100 + 1));
          if (SBYTE7(v99) < 0)
          {
            operator delete(v98[0]);
          }

          if (SHIBYTE(v97) < 0)
          {
            operator delete(v96[1]);
          }

          if (SHIBYTE(v96[0]) < 0)
          {
            operator delete(v95[0]);
          }

          if (SHIBYTE(v94) < 0)
          {
            operator delete(*&buf[8]);
          }

          if (++v60 >= v51)
          {
            v51 = [obj countByEnumeratingWithState:&v73 objects:v102 count:16];
            if (!v51)
            {
              break;
            }

            v60 = 0;
          }

          v18 = *v74;
        }
      }

      sub_100450860(v62, &v77);
      v63 = 1;
      v41 = *(a2 + 24);
      if (!v41)
      {
        sub_100022DB4();
      }

      (*(*v41 + 48))(v41, v62);
      if (v63 == 1)
      {
        sub_100450B8C(v62, v62[1]);
      }

      v13 = v78[0];
      v14 = &v77;
    }

    sub_100450B8C(v14, v13);
LABEL_86:

    goto LABEL_87;
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I loadPrivateNetworkSettings: No data", buf, 2u);
  }

  v83[0] = 0;
  v85 = 0;
  v16 = *(a2 + 24);
  if (!v16)
  {
    sub_100022DB4();
  }

  (*(*v16 + 48))(v16, v83);
  if (v85 == 1)
  {
    sub_100450B8C(v83, v84);
  }

LABEL_87:

  sub_10002D760(&v86);
  if (v90)
  {
    sub_100004A34(v90);
  }

  return sub_100014DA8(&v105);
}

void sub_10044EB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10002D760(&a69);
  if (STACK[0x208])
  {
    sub_100004A34(STACK[0x208]);
  }

  sub_100014DA8((v69 - 160));
  _Unwind_Resume(a1);
}

uint64_t sub_10044EDCC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10044EE54(result, a4);
  }

  return result;
}

void sub_10044EE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10044F294(&a9);
  _Unwind_Resume(a1);
}

void sub_10044EE54(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    sub_10044EEA4(a1, a2);
  }

  sub_1000CE3D4();
}

void sub_10044EEA4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x11A7B9611A7B962)
  {
    operator new();
  }

  sub_100013D10();
}

char *sub_10044EF00(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_10044EF84(__dst, v6);
      v6 = (v6 + 232);
      __dst += 232;
      v7 -= 232;
    }

    while (v6 != a3);
  }

  return __dst;
}

void sub_10044EF60(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 232;
    do
    {
      v4 = sub_10044F1E0(v4) - 232;
      v2 += 232;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10044EF84(char *__dst, __int128 *a2)
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

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100005F2C(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  if (*(a2 + 119) < 0)
  {
    sub_100005F2C(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v8;
  }

  if (*(a2 + 143) < 0)
  {
    sub_100005F2C(__dst + 120, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(__dst + 17) = *(a2 + 17);
    *(__dst + 120) = v9;
  }

  if (*(a2 + 167) < 0)
  {
    sub_100005F2C(__dst + 144, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = a2[9];
    *(__dst + 20) = *(a2 + 20);
    *(__dst + 9) = v10;
  }

  if (*(a2 + 191) < 0)
  {
    sub_100005F2C(__dst + 168, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v11 = *(a2 + 168);
    *(__dst + 23) = *(a2 + 23);
    *(__dst + 168) = v11;
  }

  *(__dst + 12) = a2[12];
  if (*(a2 + 231) < 0)
  {
    sub_100005F2C(__dst + 208, *(a2 + 26), *(a2 + 27));
  }

  else
  {
    v12 = a2[13];
    *(__dst + 28) = *(a2 + 28);
    *(__dst + 13) = v12;
  }

  return __dst;
}

void sub_10044F11C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10044F1E0(uint64_t a1)
{
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10044F294(void ***a1)
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
        v4 = sub_10044F1E0(v4 - 232);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_10044F318(uint64_t a1)
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

uint64_t sub_10044F398(uint64_t a1)
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

uint64_t sub_10044F418(uint64_t a1)
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

uint64_t sub_10044F498(uint64_t a1)
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

std::string *sub_10044F518(void *a1, std::string *a2, void *a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v6 = a5;
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3);
      if (v17 >= a5)
      {
        sub_1001E2D70(a1, v5, a1[1], &v5[a5]);
        std::string::operator=(v5, (v7 + 4));
        if (v6 != 1)
        {
          v20 = v5;
          do
          {
            v21 = v7[1];
            if (v21)
            {
              do
              {
                v22 = v21;
                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              do
              {
                v22 = v7[2];
                v23 = *v22 == v7;
                v7 = v22;
              }

              while (!v23);
            }

            std::string::operator=(++v20, (v22 + 4));
            v7 = v22;
          }

          while (v6-- > 2);
        }
      }

      else
      {
        *v33 = a3;
        sub_10044F868(v33, v17);
        v19 = *v33;
        a1[1] = sub_10044F8F4(a1, *v33, a4, a1[1]);
        if (v16 >= 1)
        {
          sub_1001E2D70(a1, v5, v10, &v5[v6]);
          sub_10016FF00(v33, v7, v19, v5);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1000CE3D4();
      }

      v13 = a2 - v11;
      v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
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

      v36 = a1;
      if (v15)
      {
        sub_100005348(a1, v15);
      }

      *v33 = 0;
      v34 = 8 * (v13 >> 3);
      v35 = v34;
      sub_10044F7B8(v33, a3, a5);
      v25 = v34;
      memcpy(v35, v5, a1[1] - v5);
      v26 = *a1;
      v27 = v34;
      *&v35 = v35 + a1[1] - v5;
      a1[1] = v5;
      v28 = v5 - v26;
      v29 = (v27 - (v5 - v26));
      memcpy(v29, v26, v28);
      v30 = *a1;
      *a1 = v29;
      v31 = a1[2];
      *(a1 + 1) = v35;
      *&v35 = v30;
      *(&v35 + 1) = v31;
      *v33 = v30;
      v34 = v30;
      sub_1000054E0(v33);
      return v25;
    }
  }

  return v5;
}

void *sub_10044F7B8(void *result, void *a2, uint64_t a3)
{
  v3 = result;
  v4 = result[2];
  if (a3)
  {
    v6 = v4 + 24 * a3;
    do
    {
      if (*(a2 + 55) < 0)
      {
        result = sub_100005F2C(v4, a2[4], a2[5]);
      }

      else
      {
        v7 = *(a2 + 2);
        *(v4 + 16) = a2[6];
        *v4 = v7;
      }

      v8 = a2[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = a2[2];
          v10 = *v9 == a2;
          a2 = v9;
        }

        while (!v10);
      }

      v4 += 24;
      a2 = v9;
    }

    while (v4 != v6);
    v4 = v6;
  }

  v3[2] = v4;
  return result;
}

void **sub_10044F868(void **result, uint64_t a2)
{
  if (a2 < 0)
  {
    v7 = *result;
    do
    {
      v8 = *v7;
      if (*v7)
      {
        do
        {
          v4 = v8;
          v8 = v8[1];
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v7[2];
          v5 = *v4 == v7;
          v7 = v4;
        }

        while (v5);
      }

      v7 = v4;
    }

    while (!__CFADD__(a2++, 1));
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = *result;
    do
    {
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (a2-- > 1);
  }

  *result = v4;
  return result;
}

void *sub_10044F8F4(uint64_t a1, void *a2, void *a3, void *__dst)
{
  v4 = __dst;
  v14 = __dst;
  v15 = __dst;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 55) < 0)
      {
        sub_100005F2C(v4, v6[4], v6[5]);
      }

      else
      {
        v7 = *(v6 + 2);
        v4[2] = v6[6];
        *v4 = v7;
      }

      v8 = v6[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      v4 = v15 + 24;
      v15 += 24;
      v6 = v9;
    }

    while (v9 != a3);
  }

  LOBYTE(v13) = 1;
  sub_1000083D4(v12);
  return v4;
}

uint64_t sub_10044F9DC(uint64_t a1)
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

uint64_t sub_10044FA5C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_10027E628(a1, *a2, *(a2 + 8), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 8) - *a2) >> 3));
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_1000B2128(a1 + 24, *(a2 + 24), *(a2 + 32), 0xCF3CF3CF3CF3CF3DLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  sub_100288F04((a1 + 48), a2 + 48);
  sub_10006F264(a1 + 72, (a2 + 72));
  if (*(a2 + 127) < 0)
  {
    sub_100005F2C((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v4 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v4;
  }

  sub_10044FBC0((a1 + 128), a2 + 128);
  return a1;
}

void sub_10044FB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 + 96) == 1 && *(v10 + 95) < 0)
  {
    operator delete(*(v10 + 72));
  }

  sub_100077CD4(v10 + 48, *(v10 + 56));
  sub_1000B2AF8(&a10);
  a10 = v10;
  sub_100112048(&a10);
  _Unwind_Resume(a1);
}

void *sub_10044FBC0(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10044FC18(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_10044FC18(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_10044FCA0(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_10044FCA0(void *a1, uint64_t a2, void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *sub_100074A00(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_10044FD40();
  }

  return v3;
}

uint64_t sub_10044FDB8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10028C8F8(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

_BYTE *sub_10044FE04(_BYTE *__dst, __int128 *a2)
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

  sub_10027EF58(__dst + 24, (a2 + 24));
  return __dst;
}

void sub_10044FE60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10044FE7C(uint64_t a1)
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

uint64_t sub_10044FEFC(uint64_t a1)
{
  sub_10028C89C(a1 + 128, *(a1 + 136));
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  sub_100077CD4(a1 + 48, *(a1 + 56));
  v3 = (a1 + 24);
  sub_1000B2AF8(&v3);
  v3 = a1;
  sub_100112048(&v3);
  return a1;
}

uint64_t sub_10044FF88(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10044FFCC(uint64_t a1)
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

uint64_t sub_10045004C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    sub_1000E0918(a1, a2);
    if (*(a2 + 47) < 0)
    {
      sub_100005F2C((a1 + 24), *(a2 + 24), *(a2 + 32));
    }

    else
    {
      v4 = *(a2 + 24);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 24) = v4;
    }

    if (*(a2 + 71) < 0)
    {
      sub_100005F2C((a1 + 48), *(a2 + 48), *(a2 + 56));
    }

    else
    {
      v5 = *(a2 + 48);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 48) = v5;
    }

    *(a1 + 72) = 1;
  }

  return a1;
}

void sub_1004500E8(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  sub_1000DD0AC(v1, *(v1 + 8));
  if (*(v1 + 72) == 1)
  {
    sub_10014C84C(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100450134(uint64_t a1)
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

void *sub_1004501B4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_10045020C(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_10045020C(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100450294(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_100450294(void *a1, uint64_t a2, void **a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *sub_100074A00(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    sub_100450334();
  }

  return v3;
}

uint64_t sub_1004503AC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_100450470(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_1004503F8(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_100134A24((__dst + 3), a2 + 24);
  return __dst;
}

void sub_100450454(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100450470(uint64_t a1)
{
  sub_100135324(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_1004504C0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1004504C0(a1, *a2);
    sub_1004504C0(a1, a2[1]);
    sub_100450470((a2 + 4));

    operator delete(a2);
  }
}

_BYTE *sub_10045051C(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[136] = 0;
  if (*(a2 + 136) == 1)
  {
    sub_100134E64(a1, a2);
    a1[136] = 1;
  }

  return a1;
}

void sub_100450564(_Unwind_Exception *exception_object)
{
  if (*(v1 + 136) == 1)
  {
    sub_100130470(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100450584(uint64_t a1)
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

uint64_t sub_100450604(uint64_t a1)
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

uint64_t sub_100450684(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 36) = 0;
  sub_10000501C((a1 + 40), "");
  sub_10000501C((a1 + 64), "");
  sub_10000501C((a1 + 88), "");
  sub_10000501C((a1 + 112), "");
  *(a1 + 216) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 256;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  sub_10000501C((a1 + 264), "");
  sub_10000501C((a1 + 288), "");
  *(a1 + 312) = 0;
  *(a1 + 316) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 320) = a1 + 328;
  *(a1 + 328) = 0;
  return a1;
}

void sub_100450778(_Unwind_Exception *a1)
{
  if (*(v2 + 287) < 0)
  {
    operator delete(v4[6]);
  }

  if (*(v2 + 263) < 0)
  {
    operator delete(*(v2 + 240));
  }

  if (*(v2 + 239) < 0)
  {
    operator delete(*v4);
  }

  if (*(v2 + 192) == 1 && *(v2 + 191) < 0)
  {
    operator delete(*(v2 + 168));
  }

  if (*(v2 + 160) == 1 && *(v2 + 159) < 0)
  {
    operator delete(*(v2 + 136));
  }

  if (*(v2 + 135) < 0)
  {
    operator delete(*(v2 + 112));
  }

  if (*(v2 + 111) < 0)
  {
    operator delete(*(v2 + 88));
  }

  if (*(v2 + 87) < 0)
  {
    operator delete(*(v2 + 64));
  }

  if (*(v2 + 63) < 0)
  {
    operator delete(*(v2 + 40));
  }

  sub_100009970(v1, *v3);
  _Unwind_Resume(a1);
}

void *sub_100450860(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1004508B8(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_1004508B8(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100450940(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_100450940(void *a1, uint64_t a2, void **a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_100074A00(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1004509D0();
  }

  return result;
}

void sub_100450A48(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100450ADC(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_100450A64(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_100134E64((__dst + 3), a2 + 24);
  return __dst;
}

void sub_100450AC0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100450ADC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_1001349A0(a2 + 168, *(a2 + 176));
    if (*(a2 + 159) < 0)
    {
      operator delete(*(a2 + 136));
    }

    if (*(a2 + 135) < 0)
    {
      operator delete(*(a2 + 112));
    }

    if (*(a2 + 111) < 0)
    {
      operator delete(*(a2 + 88));
    }

    if (*(a2 + 87) < 0)
    {
      operator delete(*(a2 + 64));
    }

    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_100450B8C(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_100450B8C(a1, *a2);
    sub_100450B8C(a1, *(a2 + 1));
    sub_1001349A0((a2 + 168), *(a2 + 22));
    if (a2[159] < 0)
    {
      operator delete(*(a2 + 17));
    }

    if (a2[135] < 0)
    {
      operator delete(*(a2 + 14));
    }

    if (a2[111] < 0)
    {
      operator delete(*(a2 + 11));
    }

    if (a2[87] < 0)
    {
      operator delete(*(a2 + 8));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_100450C3C(uint64_t **a1)
{
  v1 = **a1;
  v9 = &off_101EA1020;
  sub_100444744(&__p);
  v2 = sub_1009C7B10(&v9, &__p);
  v3 = v2;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v3)
    {
      goto LABEL_14;
    }
  }

  else if (v2)
  {
    goto LABEL_14;
  }

  sub_100444744(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v5 = sub_1009C804C(&v9, p_p, 448, 1);
  v6 = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v6)
    {
      goto LABEL_14;
    }
  }

  else if (!v5)
  {
    goto LABEL_14;
  }

  v7 = *(v1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = strerror(v6);
    LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
    *(__p.__r_.__value_.__r.__words + 4) = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E Could not create directory: %s", &__p, 0xCu);
  }

LABEL_14:
  FileSystemInterface::~FileSystemInterface(&v9);
  operator delete();
}

uint64_t *sub_100450E10(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_10016A310(v6, (v1 + 1));
  sub_100443F64(v2, v6);
  if (v14 < 0)
  {
    operator delete(v13[3]);
  }

  sub_10016A798(v13, v13[1]);
  sub_1000DD0AC(v12, v12[1]);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v9 < 0)
  {
    operator delete(v8[3]);
  }

  sub_100009970(v8, v8[1]);
  sub_100009970(v6, v7);
  sub_100450EF8(&v5);
  return sub_1000049E0(&v4);
}

void sub_100450ECC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  sub_1001589C8(va2);
  sub_100450EF8(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100450EF8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 175) < 0)
    {
      operator delete(*(v1 + 152));
    }

    sub_10016A798(v1 + 128, *(v1 + 136));
    sub_1000DD0AC(v1 + 104, *(v1 + 112));
    if (*(v1 + 103) < 0)
    {
      operator delete(*(v1 + 80));
    }

    if (*(v1 + 79) < 0)
    {
      operator delete(*(v1 + 56));
    }

    sub_100009970(v1 + 32, *(v1 + 40));
    sub_100009970(v1 + 8, *(v1 + 16));
    operator delete();
  }

  return result;
}

uint64_t sub_100450FA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100451038(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_1004510B8(uint64_t **a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  sub_100444918(*v1, v6);
  v2 = v1[4];
  if (!v2)
  {
    sub_100022DB4();
  }

  (*(*v2 + 48))(v2, v6);
  if (v15 == 1)
  {
    if (v14 < 0)
    {
      operator delete(v13[3]);
    }

    sub_10016A798(v13, v13[1]);
    sub_1000DD0AC(v12, v12[1]);
    if (v11 < 0)
    {
      operator delete(v10);
    }

    if (v9 < 0)
    {
      operator delete(v8[3]);
    }

    sub_100009970(v8, v8[1]);
    sub_100009970(v6, v7);
  }

  sub_1004511D8(&v5);
  return sub_1000049E0(&v4);
}

void sub_1004511AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1004511D8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004511D8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100171930(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t *sub_100451228(void **a1)
{
  v1 = *a1;
  v38 = a1;
  v39 = v1;
  v2 = *v1;
  if (v1[2] == v1[1])
  {
    v32 = *(v2 + 40);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = "com.apple.CommCenter.TransferBlacklistInfo.plist";
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Remove file: %s", buf, 0xCu);
    }

    v33 = *(v2 + 48);
    sub_100444744(&v42);
    v34 = std::string::append(&v42, "com.apple.CommCenter.TransferBlacklistInfo.plist", 0x30uLL);
    v35 = *&v34->__r_.__value_.__l.__data_;
    v44 = v34->__r_.__value_.__r.__words[2];
    *buf = v35;
    v34->__r_.__value_.__l.__size_ = 0;
    v34->__r_.__value_.__r.__words[2] = 0;
    v34->__r_.__value_.__r.__words[0] = 0;
    (*(*v33 + 912))(v33, buf);
    if (SHIBYTE(v44) < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v3 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
    v4 = [NSNumber numberWithInt:4];
    [v3 encodeObject:v4 forKey:@"version"];
    v37 = v3;

    v5 = objc_opt_new();
    v7 = v1[1];
    v6 = v1[2];
    if (v7 != v6)
    {
      while (1)
      {
        v8 = objc_opt_new();
        if (*(v7 + 23) < 0)
        {
          break;
        }

        v9 = v7;
        if (*(v7 + 23))
        {
          goto LABEL_8;
        }

LABEL_9:
        v11 = v7 + 3;
        if (*(v7 + 47) < 0)
        {
          if (!v7[4])
          {
            goto LABEL_15;
          }

          v11 = *v11;
LABEL_14:
          v12 = [NSString stringWithUTF8String:v11];
          [v8 setValue:v12 forKey:@"blacklistSourceEIDKey"];

          goto LABEL_15;
        }

        if (*(v7 + 47))
        {
          goto LABEL_14;
        }

LABEL_15:
        v13 = v7 + 6;
        if (*(v7 + 71) < 0)
        {
          if (!v7[7])
          {
            goto LABEL_21;
          }

          v13 = *v13;
LABEL_20:
          v14 = [NSString stringWithUTF8String:v13];
          [v8 setValue:v14 forKey:@"blacklistSourceICCIDKey"];

          goto LABEL_21;
        }

        if (*(v7 + 71))
        {
          goto LABEL_20;
        }

LABEL_21:
        v15 = v7 + 9;
        if (*(v7 + 95) < 0)
        {
          if (!v7[10])
          {
            goto LABEL_27;
          }

          v15 = *v15;
LABEL_26:
          v16 = [NSString stringWithUTF8String:v15];
          [v8 setValue:v16 forKey:@"blacklistTargetIMEIKey"];

          goto LABEL_27;
        }

        if (*(v7 + 95))
        {
          goto LABEL_26;
        }

LABEL_27:
        v17 = v7 + 12;
        if (*(v7 + 119) < 0)
        {
          if (!v7[13])
          {
            goto LABEL_33;
          }

          v17 = *v17;
LABEL_32:
          v18 = [NSString stringWithUTF8String:v17];
          [v8 setValue:v18 forKey:@"blacklistTargetEIDKey"];

          goto LABEL_33;
        }

        if (*(v7 + 119))
        {
          goto LABEL_32;
        }

LABEL_33:
        v19 = v7 + 15;
        if (*(v7 + 143) < 0)
        {
          if (!v7[16])
          {
            goto LABEL_39;
          }

          v19 = *v19;
LABEL_38:
          v20 = [NSString stringWithUTF8String:v19];
          [v8 setValue:v20 forKey:@"blacklistTargetICCIDKey"];

          goto LABEL_39;
        }

        if (*(v7 + 143))
        {
          goto LABEL_38;
        }

LABEL_39:
        v21 = v7 + 18;
        if (*(v7 + 167) < 0)
        {
          if (!v7[19])
          {
            goto LABEL_45;
          }

          v21 = *v21;
LABEL_44:
          v22 = [NSString stringWithUTF8String:v21];
          [v8 setValue:v22 forKey:@"blacklistCarrierNameKey"];

          goto LABEL_45;
        }

        if (*(v7 + 167))
        {
          goto LABEL_44;
        }

LABEL_45:
        v23 = v7 + 21;
        if ((*(v7 + 191) & 0x80000000) == 0)
        {
          if (!*(v7 + 191))
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }

        if (v7[22])
        {
          v23 = *v23;
LABEL_50:
          v24 = [NSString stringWithUTF8String:v23];
          [v8 setValue:v24 forKey:@"blacklistPhoneNumberKey"];
        }

LABEL_51:
        v25 = [NSNumber numberWithInt:*(v7 + 48)];
        [v8 setValue:v25 forKey:@"blacklistTriggerKey"];

        v26 = [NSNumber numberWithDouble:*(v7 + 25)];
        [v8 setValue:v26 forKey:@"blocklistCreationDateKey"];

        [v5 addObject:v8];
        v7 += 29;
        if (v7 == v6)
        {
          goto LABEL_52;
        }
      }

      if (!v7[1])
      {
        goto LABEL_9;
      }

      v9 = *v7;
LABEL_8:
      v10 = [NSString stringWithUTF8String:v9];
      [v8 setValue:v10 forKey:@"blacklistSourceIMEIKey"];

      goto LABEL_9;
    }

LABEL_52:
    [v37 encodeObject:v5 forKey:@"blacklistInfosKey"];
    v27 = [v37 encodedData];
    cf = v27;
    if (v27)
    {
      CFRetain(v27);
    }

    v28 = *(v2 + 40);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = [v5 count];
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I saveBlacklistInfos: Saved [%lu] blacklist info", buf, 0xCu);
    }

    v29 = *(v2 + 48);
    sub_100444744(&v42);
    v30 = std::string::append(&v42, "com.apple.CommCenter.TransferBlacklistInfo.plist", 0x30uLL);
    v31 = *&v30->__r_.__value_.__l.__data_;
    v44 = v30->__r_.__value_.__r.__words[2];
    *buf = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v40 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    (*(*v29 + 888))(v29, buf, &v40);
    sub_10002D760(&v40);
    if (SHIBYTE(v44) < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }

    sub_10002D760(&cf);
  }

  sub_10045194C(&v39);
  return sub_1000049E0(&v38);
}

void sub_10045181C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, __int16 a14, char a15, char a16, int a17, const void *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_10002D760(&a18);

  sub_10045194C(&a13);
  sub_1000049E0(&a12);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045194C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (v1 + 8);
    sub_10044F294(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1004519AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100451A44(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_100451AC4(void **a1)
{
  v1 = *a1;
  v83 = a1;
  v84 = v1;
  v74 = v1;
  v2 = *v1;
  v90 = 0;
  v91 = 0;
  v92 = 0;
  v75 = v2;
  v3 = *(v2 + 48);
  sub_100444744(&v102);
  v4 = std::string::append(&v102, "com.apple.CommCenter.TransferBlacklistInfo.plist", 0x30uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  *&v95[0] = *(&v4->__r_.__value_.__l + 2);
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  (*(*v3 + 904))(&v85, v3, __p);
  v81 = v85;
  sub_10002D760(&v85);
  if (SBYTE7(v95[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  if (v81)
  {
    v6 = [NSKeyedUnarchiver alloc];
    v89 = 0;
    v7 = [v6 initForReadingFromData:v81 error:&v89];
    v8 = v89;
    v80 = v7;
    v73 = v8;
    if (!v7 || v8)
    {
      v56 = *(v75 + 40);
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I loadTransferBlacklistInfo: No unarchiver or error", __p, 2u);
      }

      __p[0] = 0;
      __p[1] = 0;
      *&v95[0] = 0;
      sub_10044EDCC(__p, v90, v91, 0x34F72C234F72C235 * (&v91[-v90] >> 3));
      v57 = v74[4];
      if (!v57)
      {
        sub_100022DB4();
      }

      (*(*v57 + 48))(v57, __p);
      v102.__r_.__value_.__r.__words[0] = __p;
      sub_10044F294(&v102);
      v82 = 0;
    }

    else
    {
      v82 = [v7 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
      if (v82 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if ([v82 intValue] == 4)
        {
          v9 = objc_opt_class();
          v10 = objc_opt_class();
          v11 = objc_opt_class();
          v68 = [NSSet setWithObjects:v9, v10, v11, objc_opt_class(), 0];
          v69 = [v7 decodeObjectOfClasses:v68 forKey:@"blacklistInfosKey"];
          if (v69 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            obj = v69;
            v72 = [obj countByEnumeratingWithState:&v85 objects:&v102 count:16];
            if (v72)
            {
              v79 = 0;
              v12 = *v86;
              v70 = *v86;
              while (1)
              {
                if (v12 != v70)
                {
                  objc_enumerationMutation(obj);
                }

                v13 = *(*(&v85 + 1) + 8 * v79);
                v101 = 0;
                v99 = 0u;
                v100 = 0u;
                memset(v98, 0, sizeof(v98));
                memset(v97, 0, sizeof(v97));
                memset(v96, 0, sizeof(v96));
                *__p = 0u;
                memset(v95, 0, sizeof(v95));
                v78 = [v13 objectForKeyedSubscript:@"blacklistSourceIMEIKey"];
                if (v78)
                {
                  v14 = +[NSNull null];
                  v15 = v78 == v14;

                  if (!v15)
                  {
                    v16 = v78;
                    sub_100016890(__p, [v78 UTF8String]);
                  }
                }

                v77 = [v13 objectForKeyedSubscript:@"blacklistSourceEIDKey"];
                if (v77)
                {
                  v17 = +[NSNull null];
                  v18 = v77 == v17;

                  if (!v18)
                  {
                    v19 = v77;
                    sub_100016890((v95 + 8), [v77 UTF8String]);
                  }
                }

                v76 = [v13 objectForKeyedSubscript:@"blacklistSourceICCIDKey"];
                if (v76)
                {
                  v20 = +[NSNull null];
                  v21 = v76 == v20;

                  if (!v21)
                  {
                    v22 = v76;
                    sub_100016890(v96, [v76 UTF8String]);
                  }
                }

                v23 = [v13 objectForKeyedSubscript:@"blacklistTargetIMEIKey"];
                if (v23)
                {
                  v24 = +[NSNull null];
                  v25 = v23 == v24;

                  if (!v25)
                  {
                    v26 = v23;
                    sub_100016890(&v96[1], [v23 UTF8String]);
                  }
                }

                v27 = [v13 objectForKeyedSubscript:@"blacklistTargetEIDKey"];
                if (v27)
                {
                  v28 = +[NSNull null];
                  v29 = v27 == v28;

                  if (!v29)
                  {
                    v30 = v27;
                    sub_100016890(v97, [v27 UTF8String]);
                  }
                }

                v31 = [v13 objectForKeyedSubscript:@"blacklistTargetICCIDKey"];
                if (v31)
                {
                  v32 = +[NSNull null];
                  v33 = v31 == v32;

                  if (!v33)
                  {
                    v34 = v31;
                    sub_100016890(&v97[1], [v31 UTF8String]);
                  }
                }

                v35 = [v13 objectForKeyedSubscript:@"blacklistCarrierNameKey"];
                if (v35)
                {
                  v36 = +[NSNull null];
                  v37 = v35 == v36;

                  if (!v37)
                  {
                    v38 = v35;
                    sub_100016890(v98, [v35 UTF8String]);
                  }
                }

                v39 = [v13 objectForKeyedSubscript:@"blacklistPhoneNumberKey"];
                if (v39)
                {
                  v40 = +[NSNull null];
                  v41 = v39 == v40;

                  if (!v41)
                  {
                    v42 = v39;
                    sub_100016890(&v98[1], [v39 UTF8String]);
                  }
                }

                v43 = [v13 objectForKeyedSubscript:@"blacklistTriggerKey"];
                if (v43)
                {
                  v44 = +[NSNull null];
                  v45 = v44;
                  if (v43 == v44)
                  {
                  }

                  else
                  {
                    objc_opt_class();
                    isKindOfClass = objc_opt_isKindOfClass();

                    if (isKindOfClass)
                    {
                      LODWORD(v99) = [v43 intValue];
                    }
                  }
                }

                v47 = [v13 objectForKeyedSubscript:@"blocklistCreationDateKey"];
                if (v47)
                {
                  v48 = +[NSNull null];
                  v49 = v48;
                  if (v47 == v48)
                  {
                  }

                  else
                  {
                    objc_opt_class();
                    v50 = objc_opt_isKindOfClass();

                    if (v50)
                    {
                      [v47 doubleValue];
                      *(&v99 + 1) = v51;
                    }
                  }
                }

                v52 = v91;
                if (v91 >= v92)
                {
                  v53 = sub_100452A54(&v90, __p);
                }

                else
                {
                  sub_10044EF84(v91, __p);
                  v53 = v52 + 232;
                }

                v91 = v53;

                sub_10044F1E0(__p);
                if (++v79 >= v72)
                {
                  v72 = [obj countByEnumeratingWithState:&v85 objects:&v102 count:16];
                  if (!v72)
                  {
                    break;
                  }

                  v79 = 0;
                }

                v12 = *v86;
              }
            }

            [v80 finishDecoding];
            v65 = *(v75 + 40);
            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
            {
              v66 = [obj count];
              LODWORD(__p[0]) = 134217984;
              *(__p + 4) = v66;
              _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#I loadTransferBlacklistInfo: Loaded %lu items", __p, 0xCu);
            }

            __p[0] = 0;
            __p[1] = 0;
            *&v95[0] = 0;
            sub_10044EDCC(__p, v90, v91, 0x34F72C234F72C235 * (&v91[-v90] >> 3));
            sub_100452A0C((v74 + 1));
            v93 = __p;
            sub_10044F294(&v93);
          }

          else
          {
            [v7 finishDecoding];
            __p[0] = 0;
            __p[1] = 0;
            *&v95[0] = 0;
            sub_10044EDCC(__p, v90, v91, 0x34F72C234F72C235 * (&v91[-v90] >> 3));
            v63 = v74[4];
            if (!v63)
            {
              sub_100022DB4();
            }

            (*(*v63 + 48))(v63, __p);
            v102.__r_.__value_.__r.__words[0] = __p;
            sub_10044F294(&v102);
            v64 = *(v75 + 40);
            if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v102.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#I loadTransferBlacklistInfo: Failed to decode (blacklistInfosKey)", &v102, 2u);
            }
          }
        }

        else
        {
          [v7 finishDecoding];
          v60 = *(v75 + 40);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v61 = [v82 intValue];
            LODWORD(__p[0]) = 67109120;
            HIDWORD(__p[0]) = v61;
            _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I loadTransferBlacklistInfo: Version mismatch [%d]", __p, 8u);
          }

          __p[0] = 0;
          __p[1] = 0;
          *&v95[0] = 0;
          sub_10044EDCC(__p, v90, v91, 0x34F72C234F72C235 * (&v91[-v90] >> 3));
          v62 = v74[4];
          if (!v62)
          {
            sub_100022DB4();
          }

          (*(*v62 + 48))(v62, __p);
          v102.__r_.__value_.__r.__words[0] = __p;
          sub_10044F294(&v102);
        }
      }

      else
      {
        [v7 finishDecoding];
        __p[0] = 0;
        __p[1] = 0;
        *&v95[0] = 0;
        sub_10044EDCC(__p, v90, v91, 0x34F72C234F72C235 * (&v91[-v90] >> 3));
        v58 = v74[4];
        if (!v58)
        {
          sub_100022DB4();
        }

        (*(*v58 + 48))(v58, __p);
        v102.__r_.__value_.__r.__words[0] = __p;
        sub_10044F294(&v102);
        v59 = *(v75 + 40);
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v102.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I loadTransferBlacklistInfo: Version decoding failure", &v102, 2u);
        }
      }
    }
  }

  else
  {
    v54 = *(v75 + 40);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I loadTransferBlacklistInfo: No data", __p, 2u);
    }

    __p[0] = 0;
    __p[1] = 0;
    *&v95[0] = 0;
    sub_10044EDCC(__p, v90, v91, 0x34F72C234F72C235 * (&v91[-v90] >> 3));
    v55 = v74[4];
    if (!v55)
    {
      sub_100022DB4();
    }

    (*(*v55 + 48))(v55, __p);
    v102.__r_.__value_.__r.__words[0] = __p;
    sub_10044F294(&v102);
  }

  v93 = &v90;
  sub_10044F294(&v93);
  sub_1004529BC(&v84);
  return sub_1000049E0(&v83);
}

void sub_100452784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, char *a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  a44 = &a41;
  sub_10044F294(&a44);
  sub_1004529BC(&a30);
  sub_1000049E0(&a29);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004529BC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10044F318(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_100452A0C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t sub_100452A54(uint64_t *a1, __int128 *a2)
{
  v2 = 0x34F72C234F72C235 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x11A7B9611A7B961)
  {
    sub_1000CE3D4();
  }

  if (0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x69EE58469EE5846ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x34F72C234F72C235 * ((a1[2] - *a1) >> 3)) >= 0x8D3DCB08D3DCB0)
  {
    v6 = 0x11A7B9611A7B961;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10044EEA4(a1, v6);
  }

  v13 = 0;
  v14 = 232 * v2;
  sub_10044EF84((232 * v2), a2);
  v15 = (232 * v2 + 232);
  v7 = a1[1];
  v8 = 232 * v2 + *a1 - v7;
  sub_100452B9C(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100452CD4(&v13);
  return v12;
}

void sub_100452B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100452CD4(va);
  _Unwind_Resume(a1);
}

void sub_100452B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 16);
      *a4 = v7;
      *(v6 + 8) = 0;
      *(v6 + 16) = 0;
      *v6 = 0;
      v8 = *(v6 + 24);
      *(a4 + 40) = *(v6 + 40);
      *(a4 + 24) = v8;
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 24) = 0;
      v9 = *(v6 + 48);
      *(a4 + 64) = *(v6 + 64);
      *(a4 + 48) = v9;
      *(v6 + 56) = 0;
      *(v6 + 64) = 0;
      *(v6 + 48) = 0;
      v10 = *(v6 + 72);
      *(a4 + 88) = *(v6 + 88);
      *(a4 + 72) = v10;
      *(v6 + 72) = 0;
      *(v6 + 80) = 0;
      *(v6 + 88) = 0;
      v11 = *(v6 + 96);
      *(a4 + 112) = *(v6 + 112);
      *(a4 + 96) = v11;
      *(v6 + 96) = 0;
      *(v6 + 104) = 0;
      *(v6 + 112) = 0;
      v12 = *(v6 + 120);
      *(a4 + 136) = *(v6 + 136);
      *(a4 + 120) = v12;
      *(v6 + 120) = 0;
      *(v6 + 128) = 0;
      *(v6 + 136) = 0;
      v13 = *(v6 + 144);
      *(a4 + 160) = *(v6 + 160);
      *(a4 + 144) = v13;
      *(v6 + 144) = 0;
      *(v6 + 152) = 0;
      *(v6 + 160) = 0;
      v14 = *(v6 + 168);
      *(a4 + 184) = *(v6 + 184);
      *(a4 + 168) = v14;
      *(v6 + 168) = 0;
      *(v6 + 176) = 0;
      *(v6 + 184) = 0;
      *(a4 + 192) = *(v6 + 192);
      v15 = *(v6 + 208);
      *(a4 + 224) = *(v6 + 224);
      *(a4 + 208) = v15;
      *(v6 + 208) = 0;
      *(v6 + 216) = 0;
      *(v6 + 224) = 0;
      v6 += 232;
      a4 += 232;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v5 = sub_10044F1E0(v5) + 232;
    }
  }
}

uint64_t sub_100452CD4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 232;
    sub_10044F1E0(i - 232);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_100452D24(uint64_t **a1)
{
  v1 = *a1;
  v19 = a1;
  v20 = v1;
  v2 = *v1;
  (***(*v1 + 48))(__p);
  ServiceMap = Registry::getServiceMap(__p[0]);
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
  v21.__r_.__value_.__r.__words[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v21);
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
  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  if (!v11)
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101770960();
      if (v12)
      {
        goto LABEL_26;
      }
    }

    else if (v12)
    {
      goto LABEL_26;
    }

LABEL_25:
    sub_100004A34(v10);
    goto LABEL_26;
  }

  v13 = sub_100453098(v1 + 1);
  v14 = v13;
  v24 = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  sub_100444744(&v21);
  v15 = std::string::append(&v21, "com.apple.CommCenter.DeleteBlocklistInfo.plist", 0x2EuLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v23 = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (v23 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  v21.__r_.__value_.__r.__words[0] = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, v17, 0x8000100u, kCFAllocatorNull);
  (*(*v11 + 16))(v11, @"kDeleteBlocklistKey", v24, v21.__r_.__value_.__r.__words[0], kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100005978(&v21.__r_.__value_.__l.__data_);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  sub_100010250(&v24);

  if ((v12 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_26:
  sub_100453038(&v20);
  return sub_1000049E0(&v19);
}

void sub_100452FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, const void *a24)
{
  sub_100005978(&a12);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_100010250(&a24);

  if ((v26 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  sub_100453038(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100453038(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (v1 + 8);
    sub_10027E114(&v2);
    operator delete();
  }

  return result;
}

id sub_100453098(uint64_t *a1)
{
  v1 = a1[1] - *a1;
  if (v1)
  {
    v3 = [NSMutableArray arrayWithCapacity:0x8E38E38E38E38E39 * (v1 >> 3)];
    v4 = *a1;
    v5 = a1[1];
    while (v4 != v5)
    {
      v6 = codec::toJSONObject<rest::DeleteCloudCellularPlanBlacklistRecord>();
      if (v6)
      {
        [v3 addObject:v6];
      }

      v4 += 72;
    }

    if ([v3 count])
    {
      v7 = v3;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_10045318C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100453224(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_1004532A4(void **a1)
{
  v1 = *a1;
  v22 = a1;
  v23 = v1;
  v2 = *v1;
  (***(*v1 + 48))(__p);
  ServiceMap = Registry::getServiceMap(__p[0]);
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
  v29.__r_.__value_.__r.__words[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v29);
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
  if (__p[1])
  {
    sub_100004A34(__p[1]);
  }

  if (v11)
  {
    __p[0] = 0;
    __p[1] = 0;
    v31 = 0;
    sub_100444744(&v29);
    v13 = std::string::append(&v29, "com.apple.CommCenter.DeleteBlocklistInfo.plist", 0x2EuLL);
    v14 = *&v13->__r_.__value_.__l.__data_;
    v31 = v13->__r_.__value_.__r.__words[2];
    *__p = v14;
    v13->__r_.__value_.__l.__size_ = 0;
    v13->__r_.__value_.__r.__words[2] = 0;
    v13->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    v28 = 0;
    if (v31 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    v27 = 0;
    v28 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, v15, 0x8000100u, kCFAllocatorNull);
    (*(*v11 + 40))(&v29, v11, @"kDeleteBlocklistKey", v28, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_10006DD00(&v27, &v29.__r_.__value_.__l.__data_);
    sub_10000A1EC(&v29.__r_.__value_.__l.__data_);
    v16 = v27;
    if (v16)
    {
      memset(&v29, 0, sizeof(v29));
      if (sub_100453838(&v29, v16))
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        sub_1002831D0(&v24, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_, 0x8E38E38E38E38E39 * ((v29.__r_.__value_.__l.__size_ - v29.__r_.__value_.__r.__words[0]) >> 3));
        v17 = v1[4];
        if (!v17)
        {
          sub_100022DB4();
        }
      }

      else
      {
        if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101770994();
        }

        v24 = 0;
        v25 = 0;
        v26 = 0;
        v17 = v1[4];
        if (!v17)
        {
          sub_100022DB4();
        }
      }

      (*(*v17 + 48))(v17, &v24);
      v32 = &v24;
      sub_10027E114(&v32);
      v32 = &v29;
      v20 = &v32;
    }

    else
    {
      memset(&v29, 0, sizeof(v29));
      v19 = v1[4];
      if (!v19)
      {
        sub_100022DB4();
      }

      (*(*v19 + 48))(v19, &v29);
      v24 = &v29;
      v20 = &v24;
    }

    sub_10027E114(v20);

    sub_100010250(&v27);
    sub_100005978(&v28);
    if (SHIBYTE(v31) < 0)
    {
      operator delete(__p[0]);
      if (v12)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    if ((v12 & 1) == 0)
    {
LABEL_34:
      sub_100004A34(v10);
    }
  }

  else
  {
    if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
    {
      sub_101770960();
    }

    __p[0] = 0;
    __p[1] = 0;
    v31 = 0;
    v18 = v1[4];
    if (!v18)
    {
      sub_100022DB4();
    }

    (*(*v18 + 48))(v18, __p);
    v29.__r_.__value_.__r.__words[0] = __p;
    sub_10027E114(&v29);
    if ((v12 & 1) == 0)
    {
      goto LABEL_34;
    }
  }

LABEL_35:
  sub_1004537E8(&v23);
  return sub_1000049E0(&v22);
}

void sub_1004536EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, const void *a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  *(v30 - 72) = &a11;
  sub_10027E114((v30 - 72));
  *(v30 - 72) = &a16;
  sub_10027E114((v30 - 72));

  sub_100010250(&a14);
  sub_100005978(&a15);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if ((v29 & 1) == 0)
  {
    sub_100004A34(v27);
  }

  sub_1004537E8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1004537E8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10044F398(v1 + 8);
    operator delete();
  }

  return result;
}

BOOL sub_100453838(uint64_t *a1, void *a2)
{
  v3 = a2;
  sub_10027E168(a1, *a1);
  v4 = [NSArray typecast:v3];
  v5 = v4;
  if (v4)
  {
    sub_100453B08(a1, [v4 count]);
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v7)
    {
      v8 = *v24;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v23 + 1) + 8 * v9);
          v22 = 0;
          *__p = 0u;
          *v19 = 0u;
          memset(v20, 0, sizeof(v20));
          if ((codec::fromJSONObject<rest::DeleteCloudCellularPlanBlacklistRecord>() & 1) == 0)
          {
            if (SHIBYTE(v22) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v20[3]) < 0)
            {
              operator delete(v20[1]);
            }

            if (SHIBYTE(v20[0]) < 0)
            {
              operator delete(v19[0]);
            }

            goto LABEL_26;
          }

          v11 = a1[1];
          if (v11 >= a1[2])
          {
            v15 = sub_10027C8C4(a1, v19);
            v16 = SHIBYTE(v22);
            a1[1] = v15;
            if (v16 < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v12 = *v19;
            *(v11 + 16) = v20[0];
            *v11 = v12;
            v19[1] = 0;
            v20[0] = 0;
            v19[0] = 0;
            v13 = v20[3];
            *(v11 + 24) = *&v20[1];
            *(v11 + 40) = v13;
            v20[1] = 0;
            v20[2] = 0;
            v14 = *__p;
            *(v11 + 64) = v22;
            *(v11 + 48) = v14;
            __p[1] = 0;
            v22 = 0;
            v20[3] = 0;
            __p[0] = 0;
            a1[1] = v11 + 72;
          }

          if (SHIBYTE(v20[3]) < 0)
          {
            operator delete(v20[1]);
          }

          if (SHIBYTE(v20[0]) < 0)
          {
            operator delete(v19[0]);
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v17 = [v6 count] == (0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3));
  }

  else
  {
LABEL_26:
    v17 = 0;
  }

  return v17;
}

void *sub_100453B08(void *result, unint64_t a2)
{
  if (0x8E38E38E38E38E39 * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      sub_10027CA44(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_100453BDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10027CC90(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100453BF0(uint64_t *a1)
{
  v1 = *a1;
  v23 = a1;
  v24 = v1;
  v2 = *(v1 + 8);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *v1;
      if (*v1)
      {
        if (*(v1 + 24) == *(v1 + 16))
        {
          v19 = *(v5 + 48);
          sub_100444744(&v32);
          v20 = std::string::append(&v32, "com.apple.CommCenter.TransferDevicePlanInfo.plist", 0x31uLL);
          v21 = *&v20->__r_.__value_.__l.__data_;
          v29 = v20->__r_.__value_.__r.__words[2];
          *__p = v21;
          v20->__r_.__value_.__l.__size_ = 0;
          v20->__r_.__value_.__r.__words[2] = 0;
          v20->__r_.__value_.__r.__words[0] = 0;
          (*(*v19 + 912))(v19, __p);
          if (SHIBYTE(v29) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__r_.__value_.__l.__data_);
          }

          *(v5 + 88) = *(v5 + 80);
          if (*(v5 + 127) < 0)
          {
            **(v5 + 104) = 0;
            *(v5 + 112) = 0;
          }

          else
          {
            *(v5 + 104) = 0;
            *(v5 + 127) = 0;
          }
        }

        else
        {
          v6 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:1];
          v7 = [NSNumber numberWithInt:4];
          [v6 encodeObject:v7 forKey:@"version"];

          v8 = objc_alloc_init(NSMutableArray);
          v9 = *(v1 + 16);
          v10 = *(v1 + 24);
          __p[0] = _NSConcreteStackBlock;
          __p[1] = 3221225472;
          v29 = sub_100454138;
          v30 = &unk_101E4D728;
          v11 = v8;
          v31 = v11;
          v12 = sub_1004540A8(v9, v10, __p);
          [v6 encodeObject:v11 forKey:@"transferDeviceInfo"];
          v13 = v1 + 40;
          if (*(v1 + 63) < 0)
          {
            v13 = *(v1 + 40);
          }

          v14 = [NSString stringWithUTF8String:v13];
          [v6 encodeObject:v14 forKey:@"uuid"];

          v15 = [v6 encodedData];
          cf = v15;
          if (v15)
          {
            CFRetain(v15);
          }

          v16 = *(v5 + 48);
          sub_100444744(&v26);
          v17 = std::string::append(&v26, "com.apple.CommCenter.TransferDevicePlanInfo.plist", 0x31uLL);
          v18 = *&v17->__r_.__value_.__l.__data_;
          v32.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
          *&v32.__r_.__value_.__l.__data_ = v18;
          v17->__r_.__value_.__l.__size_ = 0;
          v17->__r_.__value_.__r.__words[2] = 0;
          v17->__r_.__value_.__r.__words[0] = 0;
          v25 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          (*(*v16 + 888))(v16, &v32, &v25);
          sub_10002D760(&v25);
          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v26.__r_.__value_.__l.__data_);
          }

          if (v5 + 80 != v1 + 16)
          {
            sub_1001122C4((v5 + 80), *(v1 + 16), *(v1 + 24), *(v1 + 24) - *(v1 + 16));
          }

          std::string::operator=((v5 + 104), (v1 + 40));
          sub_10002D760(&cf);
        }
      }

      sub_100004A34(v4);
    }
  }

  sub_100454034(&v24);
  return sub_1000049E0(&v23);
}

void sub_100453F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (*(v30 - 73) < 0)
  {
    operator delete(*(v30 - 96));
  }

  sub_100004A34(v29);
  sub_100454034(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_100454034(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    v2 = *(v1 + 16);
    if (v2)
    {
      *(v1 + 24) = v2;
      operator delete(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return result;
}

void (**sub_1004540A8(unsigned __int8 *a1, unsigned __int8 *a2, void *a3))(id, void)
{
  for (i = a3; a1 != a2; ++a1)
  {
    i[2](i, *a1);
  }

  v6 = objc_retainBlock(i);

  return v6;
}

void sub_100454138(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithInt:a2];
  [v2 addObject:?];
}

uint64_t sub_1004541AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100454244(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_1004542C4(void **a1)
{
  v1 = *a1;
  v35 = a1;
  v36 = v1;
  v2 = v1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *v1;
      if (*v1)
      {
        memset(&__str, 0, sizeof(__str));
        v5 = *(v4 + 48);
        sub_100444744(&__dst);
        v6 = std::string::append(&__dst, "com.apple.CommCenter.TransferDevicePlanInfo.plist", 0x31uLL);
        v7 = *&v6->__r_.__value_.__l.__data_;
        v45 = v6->__r_.__value_.__r.__words[2];
        *v44 = v7;
        v6->__r_.__value_.__l.__size_ = 0;
        v6->__r_.__value_.__r.__words[2] = 0;
        v6->__r_.__value_.__r.__words[0] = 0;
        (*(*v5 + 904))(buf, v5, v44);
        v8 = *buf;
        sub_10002D760(buf);
        if (SHIBYTE(v45) < 0)
        {
          operator delete(*v44);
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
          if (v8)
          {
LABEL_8:
            v9 = [NSKeyedUnarchiver alloc];
            v41 = 0;
            v10 = [v9 initForReadingFromData:v8 error:&v41];
            v11 = v41;
            v12 = v11;
            if (!v10 || v11)
            {
              v24 = *(v4 + 40);
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *v44 = 0;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I No unarchiver or error", v44, 2u);
              }

              memset(v44, 0, sizeof(v44));
              v45 = 0;
              if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
              {
                sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
              }

              else
              {
                __dst = __str;
              }

              v26 = v1[5];
              if (!v26)
              {
                sub_100022DB4();
              }

              (*(*v26 + 48))(v26, v44, &__dst);
              if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__dst.__r_.__value_.__l.__data_);
              }

              if (*v44)
              {
                *&v44[8] = *v44;
                operator delete(*v44);
              }

              v13 = 0;
            }

            else
            {
              v13 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
              if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                if ([v13 intValue] == 4)
                {
                  v14 = objc_opt_class();
                  v15 = objc_opt_class();
                  v34 = [NSSet setWithObjects:v14, v15, objc_opt_class(), 0];
                  v16 = [v10 decodeObjectOfClasses:? forKey:?];
                  if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    *v44 = 0;
                    *&v44[8] = v44;
                    v45 = 0x4812000000;
                    v46 = sub_100454EE8;
                    v47 = sub_100454F0C;
                    v48 = &unk_101CF8E15;
                    v50 = 0;
                    v51 = 0;
                    v49 = 0;
                    __dst.__r_.__value_.__r.__words[0] = _NSConcreteStackBlock;
                    __dst.__r_.__value_.__l.__size_ = 3221225472;
                    __dst.__r_.__value_.__r.__words[2] = sub_100454F24;
                    v39 = &unk_101E4D750;
                    v40 = v44;
                    [v16 enumerateObjectsUsingBlock:&__dst];
                    if (v4 + 80 != *&v44[8] + 48)
                    {
                      sub_1001122C4((v4 + 80), *(*&v44[8] + 48), *(*&v44[8] + 56), *(*&v44[8] + 56) - *(*&v44[8] + 48));
                    }

                    v17 = [v10 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
                    if (v17)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v18 = v17;
                        sub_100016890(&__str, [v17 UTF8String]);
                      }
                    }

                    std::string::operator=((v4 + 104), &__str);
                    [v10 finishDecoding];
                    v19 = *(v4 + 40);
                    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                    {
                      v20 = [v16 count];
                      p_str = &__str;
                      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                      {
                        p_str = __str.__r_.__value_.__r.__words[0];
                      }

                      *buf = 134218242;
                      *&buf[4] = v20;
                      *&buf[12] = 2080;
                      *&buf[14] = p_str;
                      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Loaded %lu bytes for %s", buf, 0x16u);
                    }

                    memset(buf, 0, 24);
                    sub_100034C50(buf, *(*&v44[8] + 48), *(*&v44[8] + 56), *(*&v44[8] + 56) - *(*&v44[8] + 48));
                    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                    {
                      sub_100005F2C(&__p, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      __p = __str;
                    }

                    sub_100454EA0((v1 + 2));
                    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__p.__r_.__value_.__l.__data_);
                    }

                    if (*buf)
                    {
                      *&buf[8] = *buf;
                      operator delete(*buf);
                    }

                    _Block_object_dispose(v44, 8);
                    if (v49)
                    {
                      v50 = v49;
                      operator delete(v49);
                    }
                  }

                  else
                  {
                    [v10 finishDecoding];
                    memset(v44, 0, sizeof(v44));
                    v45 = 0;
                    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                    {
                      sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
                    }

                    else
                    {
                      __dst = __str;
                    }

                    sub_100454EA0((v1 + 2));
                    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(__dst.__r_.__value_.__l.__data_);
                    }

                    if (*v44)
                    {
                      *&v44[8] = *v44;
                      operator delete(*v44);
                    }

                    v32 = *(v4 + 40);
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Failed to decode (kTransferDeviceInfoKey)", buf, 2u);
                    }
                  }
                }

                else
                {
                  [v10 finishDecoding];
                  v29 = *(v4 + 40);
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    v30 = [v13 intValue];
                    *v44 = 67109120;
                    *&v44[4] = v30;
                    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Version mismatch [%d]", v44, 8u);
                  }

                  memset(v44, 0, sizeof(v44));
                  v45 = 0;
                  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                  {
                    sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
                  }

                  else
                  {
                    __dst = __str;
                  }

                  v31 = v1[5];
                  if (!v31)
                  {
                    sub_100022DB4();
                  }

                  (*(*v31 + 48))(v31, v44, &__dst);
                  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__dst.__r_.__value_.__l.__data_);
                  }

                  if (*v44)
                  {
                    *&v44[8] = *v44;
                    operator delete(*v44);
                  }
                }
              }

              else
              {
                [v10 finishDecoding];
                memset(v44, 0, sizeof(v44));
                v45 = 0;
                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
                }

                else
                {
                  __dst = __str;
                }

                v27 = v1[5];
                if (!v27)
                {
                  sub_100022DB4();
                }

                (*(*v27 + 48))(v27, v44, &__dst);
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }

                if (*v44)
                {
                  *&v44[8] = *v44;
                  operator delete(*v44);
                }

                v28 = *(v4 + 40);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Version decoding failure", buf, 2u);
                }
              }
            }

LABEL_94:
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }

LABEL_96:
            sub_100004A34(v3);
            goto LABEL_97;
          }
        }

        else if (v8)
        {
          goto LABEL_8;
        }

        v23 = *(v4 + 40);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *v44 = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I No data", v44, 2u);
        }

        memset(v44, 0, sizeof(v44));
        v45 = 0;
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&__dst, __str.__r_.__value_.__l.__data_, __str.__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = __str;
        }

        v25 = v1[5];
        if (!v25)
        {
          sub_100022DB4();
        }

        (*(*v25 + 48))(v25, v44, &__dst);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (*v44)
        {
          *&v44[8] = *v44;
          operator delete(*v44);
        }

        goto LABEL_94;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  memset(v44, 0, sizeof(v44));
  v45 = 0;
  memset(&__dst, 0, sizeof(__dst));
  v22 = v1[5];
  if (!v22)
  {
    sub_100022DB4();
  }

  (*(*v22 + 48))(v22, v44, &__dst);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (*v44)
  {
    *&v44[8] = *v44;
    operator delete(*v44);
  }

  if (v3)
  {
    goto LABEL_96;
  }

LABEL_97:
  sub_100454E44(&v36);
  return sub_1000049E0(&v35);
}

void sub_100454C3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    a39 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v45 - 176), 8);
  v47 = *(v45 - 128);
  if (v47)
  {
    *(v45 - 120) = v47;
    operator delete(v47);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  sub_100004A34(v39);
  sub_100454E44(&a14);
  sub_1000049E0(&a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_100454E44(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10044F418(v1 + 16);
    v2 = *(v1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_100454EA0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

__n128 sub_100454EE8(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_100454F0C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_100454F24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v15 = v3;
  v5 = [v3 intValue];
  v7 = v4[7];
  v6 = v4[8];
  if (v7 >= v6)
  {
    v9 = v4[6];
    v10 = (v7 - v9);
    v11 = v7 - v9 + 1;
    if (v11 < 0)
    {
      sub_1000CE3D4();
    }

    v12 = v6 - v9;
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      operator new();
    }

    v14 = v7 - v9;
    *v10 = v5;
    v8 = v10 + 1;
    memcpy(0, v9, v14);
    v4[6] = 0;
    v4[7] = v10 + 1;
    v4[8] = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    *v7 = v5;
    v8 = v7 + 1;
  }

  v4[7] = v8;
}

uint64_t *sub_100455054(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *(v1 + 8);
  sub_100444744(&v9);
  v3 = std::string::append(&v9, "com.apple.CommCenter.PendingTransfer.plist", 0x2AuLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v11 = v3->__r_.__value_.__r.__words[2];
  *__p = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  sub_10002D728(&v8, v1);
  (*(*v2 + 896))(v2, __p, &v8);
  sub_10002D760(&v8);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  sub_100455194(&v7);
  return sub_1000049E0(&v6);
}

void sub_100455140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, const void *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_10002D760(&a11);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  sub_100455194(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100455194(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_10002D760(v1);
    operator delete();
  }

  return result;
}

uint64_t sub_1004551EC(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_10045526C(void **a1)
{
  v1 = *a1;
  v33 = a1;
  v34 = v1;
  v2 = *v1;
  v37 = 0uLL;
  v38 = 0;
  v3 = *(v2 + 48);
  sub_100444744(&v35);
  v4 = std::string::append(&v35, "com.apple.CommCenter.PendingTransfer.plist", 0x2AuLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v41 = v4->__r_.__value_.__r.__words[2];
  *buf = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  (*(*v3 + 904))(&v36, v3, buf);
  v6 = v36;
  sub_10002D760(&v36);
  if (SHIBYTE(v41) < 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
    if (v6)
    {
      goto LABEL_5;
    }
  }

  else if (v6)
  {
LABEL_5:
    v7 = [NSKeyedUnarchiver alloc];
    v36 = 0;
    v8 = [v7 initForReadingFromData:v6 error:&v36];
    v9 = v36;
    v10 = v9;
    if (!v8 || v9)
    {
      if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101770AAC();
      }

      memset(buf, 0, sizeof(buf));
      v41 = 0;
      sub_10005A388(buf, v37, *(&v37 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&v37 + 1) - v37) >> 8));
      v24 = v1[4];
      if (!v24)
      {
        sub_100022DB4();
      }

      (*(*v24 + 48))(v24, buf);
      v35.__r_.__value_.__r.__words[0] = buf;
      sub_10005C284(&v35);
      goto LABEL_40;
    }

    v11 = [v8 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
    if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      if ([v11 intValue] == 4)
      {
        v12 = objc_opt_class();
        v13 = objc_opt_class();
        v14 = objc_opt_class();
        v15 = [NSSet setWithObjects:v12, v13, v14, objc_opt_class(), 0, v33, v34];
        v16 = [v8 decodeObjectOfClasses:v15 forKey:@"pendingTransferInfo"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (!sub_100455B44(&v37, v16))
          {
            if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_101770A10();
            }

            *&buf[8] = 0;
            v41 = 0;
            *buf = &buf[8];
            if (sub_100455D98(buf, v16))
            {
              v17 = *buf;
              if (*buf != &buf[8])
              {
                do
                {
                  std::string::operator=((v17 + 488), (v17 + 32));
                  v18 = *(&v37 + 1);
                  if (*(&v37 + 1) >= v38)
                  {
                    v19 = sub_100456554(&v37, (v17 + 56));
                  }

                  else
                  {
                    sub_1002939FC(*(&v37 + 1), (v17 + 56));
                    v19 = v18 + 1280;
                  }

                  *(&v37 + 1) = v19;
                  v20 = *(v17 + 1);
                  if (v20)
                  {
                    do
                    {
                      v21 = v20;
                      v20 = *v20;
                    }

                    while (v20);
                  }

                  else
                  {
                    do
                    {
                      v21 = *(v17 + 2);
                      v22 = *v21 == v17;
                      v17 = v21;
                    }

                    while (!v22);
                  }

                  v17 = v21;
                }

                while (v21 != &buf[8]);
              }
            }

            else if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
            {
              sub_101770A44();
            }

            sub_100456120(buf, *&buf[8]);
          }

          [v8 finishDecoding];
          *buf = v37;
          v41 = v38;
          v38 = 0;
          v37 = 0uLL;
          v29 = v1[4];
          if (!v29)
          {
            sub_100022DB4();
          }
        }

        else
        {
          v28 = *(v2 + 40);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            v30 = [@"pendingTransferInfo" description];
            v31 = v30;
            v32 = [v30 UTF8String];
            *buf = 136315138;
            *&buf[4] = v32;
            _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "failed to decode object for key %s", buf, 0xCu);
          }

          [v8 finishDecoding];
          memset(buf, 0, sizeof(buf));
          v41 = 0;
          sub_10005A388(buf, v37, *(&v37 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&v37 + 1) - v37) >> 8));
          v29 = v1[4];
          if (!v29)
          {
            sub_100022DB4();
          }
        }

        (*(*v29 + 48))(v29, buf);
        v35.__r_.__value_.__r.__words[0] = buf;
        sub_10005C284(&v35);

        goto LABEL_39;
      }

      v27 = *(v2 + 40);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        sub_1017709C8(v39, [v11 intValue], v27);
      }

      [v8 finishDecoding];
      memset(buf, 0, sizeof(buf));
      v41 = 0;
      sub_10005A388(buf, v37, *(&v37 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&v37 + 1) - v37) >> 8));
      v25 = v1[4];
      if (!v25)
      {
        sub_100022DB4();
      }
    }

    else
    {
      if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101770A78();
      }

      [v8 finishDecoding];
      memset(buf, 0, sizeof(buf));
      v41 = 0;
      sub_10005A388(buf, v37, *(&v37 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&v37 + 1) - v37) >> 8));
      v25 = v1[4];
      if (!v25)
      {
        sub_100022DB4();
      }
    }

    (*(*v25 + 48))(v25, buf);
    v35.__r_.__value_.__r.__words[0] = buf;
    sub_10005C284(&v35);
LABEL_39:

LABEL_40:
    goto LABEL_41;
  }

  if (os_log_type_enabled(*(v2 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101770AE0();
  }

  memset(buf, 0, sizeof(buf));
  v41 = 0;
  sub_10005A388(buf, v37, *(&v37 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&v37 + 1) - v37) >> 8));
  v23 = v1[4];
  if (!v23)
  {
    sub_100022DB4();
  }

  (*(*v23 + 48))(v23, buf);
  v35.__r_.__value_.__r.__words[0] = buf;
  sub_10005C284(&v35);
LABEL_41:

  v35.__r_.__value_.__r.__words[0] = &v37;
  sub_10005C284(&v35);
  sub_100455AF4(&v34);
  return sub_1000049E0(&v33);
}

void sub_1004559A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23)
{
  sub_100456120(v28 - 112, *(v28 - 104));

  __p = &a22;
  sub_10005C284(&__p);
  sub_100455AF4(&a14);
  sub_1000049E0(&a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_100455AF4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10044F498(v1 + 8);
    operator delete();
  }

  return result;
}

BOOL sub_100455B44(uint64_t *a1, void *a2)
{
  v3 = a2;
  v5 = *a1;
    ;
  }

  a1[1] = v5;
  v6 = [NSArray typecast:v3];
  v7 = v6;
  if (v6)
  {
    sub_100455FB8(a1, [v6 count]);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v9)
    {
      v10 = *v18;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v17 + 1) + 8 * v11);
          bzero(v21, 0x500uLL);
          if (!sub_100736304(v21, v12))
          {
            sub_1002813D0(v21);

            goto LABEL_18;
          }

          v13 = a1[1];
          if (v13 >= a1[2])
          {
            v14 = sub_100456554(a1, v21);
          }

          else
          {
            sub_1002939FC(a1[1], v21);
            v14 = v13 + 1280;
            a1[1] = v13 + 1280;
          }

          a1[1] = v14;
          sub_1002813D0(v21);

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v15 = [v8 count] == (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 8));
  }

  else
  {
LABEL_18:
    v15 = 0;
  }

  return v15;
}

BOOL sub_100455D98(uint64_t a1, void *a2)
{
  v3 = a2;
  sub_100456120(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v4 = [NSArray typecast:v3];
  v5 = v4;
  if (v4)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v7)
    {
      v8 = *v14;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v13 + 1) + 8 * v9);
          bzero(&__p, 0x518uLL);
          if (!sub_100456094(&__p, v10))
          {
            sub_1002813D0(v18);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            goto LABEL_16;
          }

          sub_10045635C(a1, &__p.__r_.__value_.__l.__data_);
          sub_1002813D0(v18);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v13 objects:v19 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = [v6 count] == *(a1 + 16);
  }

  else
  {
LABEL_16:
    v11 = 0;
  }

  return v11;
}

void *sub_100455FB8(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 8) < a2)
  {
    if (a2 < 0x33333333333334)
    {
      sub_10027B5B4(result, a2);
    }

    sub_1000CE3D4();
  }

  return result;
}

void sub_100456080(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100281380(va);
  _Unwind_Resume(a1);
}

BOOL sub_100456094(std::string *a1, uint64_t a2)
{
  v3 = [NSDictionary typecast:a2];
  v4 = v3 && (sub_1004561CC(a1, @"key", v3) & 1) != 0 && sub_1004562B4(&a1[1], @"value", v3);

  return v4;
}

void sub_100456120(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_100456120(a1, *a2);
    sub_100456120(a1, a2[1]);
    sub_10045617C((a2 + 4));

    operator delete(a2);
  }
}

void sub_10045617C(uint64_t a1)
{
  sub_1002813D0(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_1004561CC(std::string *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      sub_100016890(a1, [v7 UTF8String]);
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL sub_1004562B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_opt_respondsToSelector())
  {
    v7 = [v6 objectForKey:v5];
    v8 = sub_100736304(a1, v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_10045635C(uint64_t a1, void **a2)
{
  v7 = 0;
  v2 = *sub_100005C2C(a1, &v7, a2);
  if (!v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    sub_1004563F8();
  }

  return v2;
}

uint64_t sub_100456470(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_10045617C(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1004564BC(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  sub_1002939FC(a1 + 24, (a2 + 24));
  return a1;
}

void sub_1004564FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100456518(uint64_t a1)
{
  sub_1002813D0(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100456554(uint64_t a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 8) - *a1) >> 8);
  v3 = v2 + 1;
  if (v2 + 1 > 0x33333333333333)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 8) > v3)
  {
    v3 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 8);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 8) >= 0x19999999999999)
  {
    v6 = 0x33333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10027B5B4(a1, v6);
  }

  v13 = 0;
  v14 = 1280 * v2;
  sub_1002939FC(1280 * v2, a2);
  v15 = 1280 * v2 + 1280;
  v7 = *(a1 + 8);
  v8 = 1280 * v2 + *a1 - v7;
  sub_1002812DC(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100281380(&v13);
  return v12;
}

void sub_100456670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100281380(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100456684(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_10045671C(void *a1)
{
  *a1 = off_101E4D780;
  sub_100446FF0((a1 + 1));
  return a1;
}

void sub_100456760(void *a1)
{
  *a1 = off_101E4D780;
  sub_100446FF0((a1 + 1));

  operator delete();
}

void sub_100456870(void *a1)
{
  sub_100446FF0(a1 + 8);

  operator delete(a1);
}

void sub_1004568AC(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    v6 = 0;
LABEL_10:
    sub_100456F04(a1 + 208, v3);
    goto LABEL_14;
  }

  v5 = *(a1 + 24);
  v6 = std::__shared_weak_count::lock(v4);
  if (!v6 || !*(a1 + 8))
  {
    goto LABEL_10;
  }

  v7 = *(v5 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v3 & 1;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Upload to cloud complete: %d", buf, 8u);
  }

  if (v3)
  {
    *buf = 0;
    v11 = 0;
    v12 = 0;
    sub_100034C50(buf, *(a1 + 104), *(a1 + 112), *(a1 + 112) - *(a1 + 104));
    if (*(a1 + 151) < 0)
    {
      sub_100005F2C(__p, *(a1 + 128), *(a1 + 136));
    }

    else
    {
      *__p = *(a1 + 128);
      v9 = *(a1 + 144);
    }

    sub_1004462B4(v5, buf, __p);
  }

  sub_100456F04(a1 + 208, v3);
LABEL_14:
  if (v6)
  {
    sub_100004A34(v6);
  }
}

uint64_t sub_100456C6C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100456CB8(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t sub_100456D38(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 16) = *(a2 + 16);
  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_100034C50(a1 + 48, *(a2 + 48), *(a2 + 56), *(a2 + 56) - *(a2 + 48));
  *(a1 + 72) = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  sub_100034C50(a1 + 96, *(a2 + 96), *(a2 + 104), *(a2 + 104) - *(a2 + 96));
  if (*(a2 + 143) < 0)
  {
    sub_100005F2C((a1 + 120), *(a2 + 120), *(a2 + 128));
  }

  else
  {
    v7 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v7;
  }

  if (*(a2 + 167) < 0)
  {
    sub_100005F2C((a1 + 144), *(a2 + 144), *(a2 + 152));
  }

  else
  {
    v8 = *(a2 + 144);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 144) = v8;
  }

  v9 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 168) = v9;
  sub_100456684(a1 + 200, a2 + 200);
  return a1;
}

void sub_100456E70(_Unwind_Exception *a1)
{
  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  v4 = *v2;
  if (*v2)
  {
    *(v1 + 104) = v4;
    operator delete(v4);
  }

  v5 = *(v1 + 88);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_1001DE0AC(v1 + 24);
  v6 = *(v1 + 8);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  _Unwind_Resume(a1);
}

void sub_100456EEC()
{
  if (*(v0 + 47) < 0)
  {
    operator delete(*(v0 + 24));
  }

  JUMPOUT(0x100456ED8);
}

uint64_t sub_100456F04(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

BOOL sub_100456F58(void *a1, CFAbsoluteTime a2)
{
  v2 = *a1;
  if (*a1)
  {
    v5 = CFDateCreate(kCFAllocatorDefault, a2);
    (*(**a1 + 16))(*a1, @"kLastUploadTimestamp", v5, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_1003EC530(&v5);
  }

  return v2 != 0;
}

void sub_100457004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1003EC530(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100457018(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void *sub_100457098(void *a1)
{
  *a1 = off_101E4D800;
  sub_1003F2928((a1 + 1));
  return a1;
}

void sub_1004570DC(void *a1)
{
  *a1 = off_101E4D800;
  sub_1003F2928((a1 + 1));

  operator delete();
}

void sub_1004571EC(void *a1)
{
  sub_1003F2928(a1 + 8);

  operator delete(a1);
}

uint64_t sub_100457238(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100457284(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void sub_10045731C(void *a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  v4 = 0uLL;
  v5[0] = "CellularPlanPersistenceControllerImpl";
  sub_1001048A4();
}

void sub_100457530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
{
  sub_10000FF50(v18 - 72);
  sub_1004575CC(&a15);
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100370DE4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1004575CC(uint64_t a1)
{
  sub_10000FF50(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void *sub_100457610(void *a1)
{
  *a1 = off_101E4D880;
  sub_10000FF50((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10045766C(void *a1)
{
  *a1 = off_101E4D880;
  sub_10000FF50((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_100457780(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1004577AC(void *a1, void *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  *a2 = off_101E4D880;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a1[4];
  a2[3] = a1[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_1000224C8((a2 + 5), (a1 + 5));
}

void sub_100457828(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_10045784C(uint64_t a1)
{
  sub_10000FF50(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_1004578A4(void *a1)
{
  sub_10000FF50((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_1004578F8(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    v5 = 0;
    goto LABEL_8;
  }

  v4 = *a2;
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5 || (v6 = *(a1 + 8)) == 0)
  {
LABEL_8:
    sub_10000FFD0(a1 + 40, 0);
    if (!v5)
    {
      return;
    }

    goto LABEL_9;
  }

  v7 = *(v6 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I isZoneExisted: %d", v8, 8u);
  }

  sub_10000FFD0(a1 + 40, v4);
LABEL_9:
  sub_100004A34(v5);
}

uint64_t sub_100457A08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100457A54(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100457AEC(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_100457B6C(void *a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  v4 = 0;
  v5 = 0;
  v6[0] = "CellularPlanPersistenceControllerImpl";
  sub_1001048A4();
}

void sub_100457D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15)
{
  sub_10000FF50(v15 - 88);
  sub_100457E74(&a15);
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_100457E18(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100457E18(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10044F9DC(v1 + 32);
    sub_100009970(v1 + 8, *(v1 + 16));
    operator delete();
  }

  return result;
}

uint64_t sub_100457E74(uint64_t a1)
{
  sub_10044F9DC(a1 + 48);
  sub_100009970(a1 + 24, *(a1 + 32));
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

uint64_t sub_100457EB8(uint64_t a1)
{
  *a1 = off_101E4D900;
  sub_10044F9DC(a1 + 56);
  sub_100009970(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_100457F14(uint64_t a1)
{
  *a1 = off_101E4D900;
  sub_10044F9DC(a1 + 56);
  sub_100009970(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_100458024(_Unwind_Exception *a1)
{
  sub_100009970(v1 + 32, *(v1 + 40));
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100458058(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4D900;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100074920((a2 + 32), a1 + 32);
  return sub_100457A54(a2 + 56, a1 + 56);
}

void sub_1004580D0(_Unwind_Exception *a1)
{
  sub_100009970(v1 + 32, *(v1 + 40));
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1004580FC(uint64_t a1)
{
  sub_10044F9DC(a1 + 56);
  sub_100009970(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 24);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void sub_100458154(uint64_t a1)
{
  sub_10044F9DC(a1 + 56);
  sub_100009970(a1 + 32, *(a1 + 40));
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(a1);
}

void sub_1004581A8(void *a1, _BYTE *a2)
{
  v3 = a1[1];
  if (*a2)
  {
    *buf = a1[1];
    sub_100004AA0(&v17, (v3 + 8));
    v4 = v18;
    *&buf[8] = v17;
    v11 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v4);
    }

    v5 = a1[3];
    v12 = a1[2];
    v13 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    sub_100074920(&v14, (a1 + 4));
    v15 = 0;
    sub_100457A54(&v16, (a1 + 7));
    v19 = 0;
    operator new();
  }

  v6 = *(v3 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Zone not existed, skip cleanup", buf, 2u);
  }

  sub_10000501C(buf, "");
  v9 = 1;
  LODWORD(v17) = 0;
  v8 = 0;
  v7 = a1[10];
  if (!v7)
  {
    sub_100022DB4();
  }

  (*(*v7 + 48))(v7, &v9, buf, &v17, &v8);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(*buf);
  }
}

void sub_100458464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_10028B224(v17 - 104);
  sub_100458528(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_1004584DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100458528(uint64_t a1)
{
  sub_10044F9DC(a1 + 72);
  sub_100009970(a1 + 40, *(a1 + 48));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_100458578(uint64_t a1)
{
  *a1 = off_101E4D970;
  sub_10044F9DC(a1 + 80);
  sub_100009970(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_1004585E0(uint64_t a1)
{
  *a1 = off_101E4D970;
  sub_10044F9DC(a1 + 80);
  sub_100009970(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_10045871C(_Unwind_Exception *a1)
{
  sub_100009970(v1 + 48, *(v1 + 56));
  v3 = *(v1 + 40);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10045875C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4D970;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100074920((a2 + 48), a1 + 48);
  *(a2 + 72) = *(a1 + 72);
  return sub_100457A54(a2 + 80, a1 + 80);
}

void sub_1004587F4(_Unwind_Exception *a1)
{
  sub_100009970(v1 + 48, *(v1 + 56));
  v3 = *(v1 + 40);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_10045882C(uint64_t a1)
{
  sub_10044F9DC(a1 + 80);
  sub_100009970(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_100458890(uint64_t a1)
{
  sub_10044F9DC(a1 + 80);
  sub_100009970(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_1004588F0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v19 = *(a2 + 1);
  v20 = a2[3];
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = *(a1 + 8);
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = *(a1 + 16);
      if (v7)
      {
        if (v3)
        {
          v22 = 0;
          v23 = 0;
          v24 = 0;
          sub_100447084(v5, a1 + 48, &v19, &v22);
          v8 = v22;
          v9 = 0xAAAAAAAAAAAAAAABLL * ((v23 - v22) >> 3);
          if (v9 == 1)
          {
            v15 = *(v5 + 40);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I One matching recordID/uuid, keep it.", buf, 2u);
              v8 = v22;
            }

            if (SHIBYTE(v8->__r_.__value_.__r.__words[2]) < 0)
            {
              sub_100005F2C(buf, v8->__r_.__value_.__l.__data_, v8->__r_.__value_.__l.__size_);
            }

            else
            {
              v16 = *&v8->__r_.__value_.__l.__data_;
              v28 = v8->__r_.__value_.__r.__words[2];
              *buf = v16;
            }

            v18 = *(a1 + 72);
            LOBYTE(v21[0]) = 1;
            v30[0] = v18;
            v25 = 0;
            v12 = *(a1 + 104);
            if (!v12)
            {
              sub_100022DB4();
            }
          }

          else
          {
            if (v9)
            {
              v17 = *(a1 + 40);
              v21[0] = *(a1 + 32);
              v21[1] = v17;
              if (v17)
              {
                atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
              }

              *buf = v5;
              *&buf[8] = v7;
              v28 = v6;
              atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100457A54(&v29, a1 + 80);
              v31 = 0;
              operator new();
            }

            v10 = *(v5 + 40);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I No matching recordID/uuid, abort cleanup.", buf, 2u);
            }

            sub_10000501C(buf, "");
            v11 = *(a1 + 72);
            LOBYTE(v21[0]) = 1;
            v30[0] = v11;
            v25 = 0;
            v12 = *(a1 + 104);
            if (!v12)
            {
              sub_100022DB4();
            }
          }

          (*(*v12 + 48))(v12, v21, buf, v30, &v25);
          if (SHIBYTE(v28) < 0)
          {
            operator delete(*buf);
          }

          v26 = &v22;
          sub_1000087B4(&v26);
LABEL_16:
          sub_100004A34(v6);
          goto LABEL_17;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  sub_10000501C(buf, "");
  v13 = *(a1 + 72);
  LOBYTE(v21[0]) = 0;
  v30[0] = v13;
  LOBYTE(v26) = 0;
  v14 = *(a1 + 104);
  if (!v14)
  {
    sub_100022DB4();
  }

  (*(*v14 + 48))(v14, v21, buf, v30, &v26);
  if (SHIBYTE(v28) < 0)
  {
    operator delete(*buf);
  }

  if (v6)
  {
    goto LABEL_16;
  }

LABEL_17:
  *buf = &v19;
  sub_10027B3D0(buf);
}

void sub_100458CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, void *__p, uint64_t a22, uint64_t a23)
{
  sub_1003F2928(v25 - 104);
  sub_100458DE8(&__p);
  if (v24)
  {
    sub_100004A34(v24);
  }

  a20 = &a16;
  sub_1000087B4(&a20);
  sub_100004A34(v23);
  sub_10027B3D0(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_100458D9C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100458DE8(uint64_t a1)
{
  sub_10044F9DC(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void *sub_100458E20(void *a1)
{
  *a1 = off_101E4D9E0;
  sub_10044F9DC((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_100458E70(void *a1)
{
  *a1 = off_101E4D9E0;
  sub_10044F9DC((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_100458F68(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100458F88(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4D9E0;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_100457A54(a2 + 32, a1 + 32);
}

void sub_100458FF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100459014(void *a1)
{
  sub_1004591F0(a1 + 8);

  operator delete(a1);
}

void sub_100459050(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = v4;
    v12 = 1024;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Remove records result: %d, ckModified: %d", buf, 0xEu);
  }

  sub_10000501C(buf, "");
  v10 = v4;
  v9 = 8;
  v8 = v5;
  v7 = *(a1 + 56);
  if (!v7)
  {
    sub_100022DB4();
  }

  (*(*v7 + 48))(v7, &v10, buf, &v9, &v8);
  if (v14 < 0)
  {
    operator delete(*buf);
  }
}

uint64_t sub_1004591A4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E4DA40))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1004591F0(uint64_t a1)
{
  sub_10044F9DC(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

uint64_t sub_10045923C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void *sub_1004592BC(void *a1)
{
  *a1 = off_101E4DA80;
  sub_100448164((a1 + 1));
  return a1;
}

void sub_100459300(void *a1)
{
  *a1 = off_101E4DA80;
  sub_100448164((a1 + 1));

  operator delete();
}

void sub_100459410(void *a1)
{
  sub_100448164(a1 + 8);

  operator delete(a1);
}

uint64_t sub_10045944C(uint64_t a1, int *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *(a1 + 256);
  v6 = *(a1 + 264);
  v7 = v6 - v5;
  if (v6 != v5)
  {
    v8 = v4[10];
    v9 = v4[11] - v8;
    v10 = v9 && v9 == v7;
    if (!v10 || memcmp(v8, v5, v7))
    {
      sub_10092F704((a1 + 64), &v14);
      *buf = v4;
      *&buf[8] = 0;
      v16 = 0uLL;
      sub_100034C50(&buf[8], *(a1 + 256), *(a1 + 264), *(a1 + 264) - *(a1 + 256));
      if (*(a1 + 191) < 0)
      {
        sub_100005F2C(__p, *(a1 + 168), *(a1 + 176));
      }

      else
      {
        *__p = *(a1 + 168);
        __p[2] = *(a1 + 184);
      }

      v13 = *(a1 + 208);
      v18 = *(a1 + 192);
      v19 = v13;
      v20 = v3;
      sub_100459828(v21, a1 + 224);
      v21[8] = 0;
      operator new();
    }
  }

  v11 = v4[5];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I No data change, abort uploading.", buf, 2u);
  }

  return sub_1004598C0(a1 + 224, 0x1388000000000, v3, 0);
}

void sub_100459690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, char *a11, uint64_t a12, char a13, void *__p, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  sub_100009970(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_100459700(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10045974C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1 + 160;
  sub_10044FA5C(a1 + 8, a2 + 8);
  if (*(a2 + 183) < 0)
  {
    sub_100005F2C(v4, *(a2 + 160), *(a2 + 168));
  }

  else
  {
    v5 = *(a2 + 160);
    *(v4 + 16) = *(a2 + 176);
    *v4 = v5;
  }

  v6 = *(a2 + 184);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 184) = v6;
  sub_100459828(a1 + 216, a2 + 216);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  sub_100034C50(a1 + 248, *(a2 + 248), *(a2 + 256), *(a2 + 256) - *(a2 + 248));
  return a1;
}

uint64_t sub_100459828(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_1004598C0(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = a2;
  v6 = a4;
  v7 = a3;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

uint64_t sub_100459920(uint64_t a1)
{
  sub_10044FE7C(a1 + 96);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_10045996C(uint64_t a1)
{
  *a1 = off_101E4DB00;
  sub_10044FE7C(a1 + 104);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_1004599D0(uint64_t a1)
{
  *a1 = off_101E4DB00;
  sub_10044FE7C(a1 + 104);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  operator delete();
}

void sub_100459B1C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    v1[3] = v4;
    operator delete(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100459B60(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *(a2 + 16) = 0;
  *a2 = off_101E4DB00;
  *(a2 + 8) = v4;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  sub_100034C50(a2 + 16, *(a1 + 16), *(a1 + 24), *(a1 + 24) - *(a1 + 16));
  if (*(a1 + 63) < 0)
  {
    sub_100005F2C((a2 + 40), *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v5 = *(a1 + 40);
    *(a2 + 56) = *(a1 + 56);
    *(a2 + 40) = v5;
  }

  v6 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v6;
  *(a2 + 96) = *(a1 + 96);
  return sub_100459828(a2 + 104, a1 + 104);
}

void sub_100459C0C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_100459C40(uint64_t a1)
{
  sub_10044FE7C(a1 + 104);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;

    operator delete(v2);
  }
}

void sub_100459CA0(uint64_t a1)
{
  sub_10044FE7C(a1 + 104);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 24) = v2;
    operator delete(v2);
  }

  operator delete(a1);
}

void sub_100459CFC(uint64_t a1, char *a2, std::string *a3, int *a4, unsigned __int8 *a5)
{
  v6 = *a2;
  v21 = *a3;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  v7 = *a4;
  v8 = *(a1 + 8);
  if (v6)
  {
    v9 = SHIBYTE(v21.__r_.__value_.__r.__words[2]);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v21.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v21.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
LABEL_29:
      v22 = 0;
      v23 = 0;
      *buf = "CellularPlanPersistenceControllerImpl";
      sub_1001048A4();
    }

    v11 = (v8 + 104);
    v12 = *(v8 + 127);
    if (v12 < 0)
    {
      if (!*(v8 + 112))
      {
LABEL_28:
        std::string::operator=((v8 + 104), &v21);
        goto LABEL_29;
      }
    }

    else if (!*(v8 + 127))
    {
      goto LABEL_28;
    }

    v15 = *(v8 + 112);
    if (v12 >= 0)
    {
      v15 = *(v8 + 127);
    }

    if (v15 != size || (v12 >= 0 ? (v16 = (v8 + 104)) : (v16 = *v11), (v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v17 = &v21) : (v17 = v21.__r_.__value_.__r.__words[0]), memcmp(v16, v17, size)))
    {
      v18 = *(v8 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = (v8 + 104);
        if ((v12 & 0x80000000) != 0)
        {
          v19 = *v11;
        }

        v20 = v21.__r_.__value_.__r.__words[0];
        if (v9 >= 0)
        {
          v20 = &v21;
        }

        *buf = 136315394;
        *&buf[4] = v19;
        buf_12 = 2080;
        buf_14 = v20;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Clobering cached UUID: [%s] with UUID found on cloud: [%s]", buf, 0x16u);
      }
    }

    goto LABEL_28;
  }

  v13 = *a5;
  if (os_log_type_enabled(*(v8 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101770B48();
  }

  if (v13)
  {
    v14 = 0x1388000000100;
  }

  else
  {
    v14 = 0x1388000000000;
  }

  sub_1004598C0(a1 + 104, v14, *(a1 + 96), v7);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }
}

void sub_10045A190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, char a24, uint64_t a25)
{
  if (a23)
  {
    sub_100004A34(a23);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10045A250(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10045A29C(void *a1)
{
  *a1 = off_101E4DB80;
  sub_10044FE7C((a1 + 1));
  return a1;
}

void sub_10045A2E0(void *a1)
{
  *a1 = off_101E4DB80;
  sub_10044FE7C((a1 + 1));

  operator delete();
}

uint64_t sub_10045A3C4(uint64_t a1, void *a2)
{
  *a2 = off_101E4DB80;
  result = sub_100459828((a2 + 1), a1 + 8);
  a2[5] = *(a1 + 40);
  return result;
}

void sub_10045A420(void *a1)
{
  sub_10044FE7C(a1 + 8);

  operator delete(a1);
}

uint64_t sub_10045A46C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10045A4B8(void *a1)
{
  *a1 = off_101E4DC00;
  sub_10044FE7C((a1 + 1));
  return a1;
}

void sub_10045A4FC(void *a1)
{
  *a1 = off_101E4DC00;
  sub_10044FE7C((a1 + 1));

  operator delete();
}

uint64_t sub_10045A5E0(uint64_t a1, void *a2)
{
  *a2 = off_101E4DC00;
  result = sub_100459828((a2 + 1), a1 + 8);
  a2[5] = *(a1 + 40);
  return result;
}

void sub_10045A63C(void *a1)
{
  sub_10044FE7C(a1 + 8);

  operator delete(a1);
}

uint64_t sub_10045A688(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10045A6D4(uint64_t a1)
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

uint64_t sub_10045A754(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10045A7EC(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void sub_10045A86C(void *a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  v4 = 0uLL;
  v5[0] = "CellularPlanPersistenceControllerImpl";
  sub_1001048A4();
}

void sub_10045AA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18)
{
  sub_10028B224(v18 - 72);
  sub_10045AB6C(&a15);
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_10045AB1C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045AB1C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10028B224(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_10045AB6C(uint64_t a1)
{
  sub_10028B224(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void *sub_10045ABB0(void *a1)
{
  *a1 = off_101E4DCA0;
  sub_10028B224((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10045AC0C(void *a1)
{
  *a1 = off_101E4DCA0;
  sub_10028B224((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_10045AD20(_Unwind_Exception *a1)
{
  v3 = v1[4];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = v1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10045AD4C(void *a1, void *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  *a2 = off_101E4DCA0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a1[4];
  a2[3] = a1[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_10045A754((a2 + 5), (a1 + 5));
}

void sub_10045ADC8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_10045ADEC(uint64_t a1)
{
  sub_10028B224(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_10045AE44(void *a1)
{
  sub_10028B224((a1 + 5));
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_10045AE98(void *a1, unint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v12 = v3;
  v5 = *(a2 + 1);
  v13 = v5;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  v6 = a1[2];
  if (v6)
  {
    v11 = v5;
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = a1[1];
      if (v8)
      {
        v9 = *(v8 + 40);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 134217984;
          *(&buf + 4) = 0x6DB6DB6DB6DB6DB7 * ((v11 - v3) >> 3);
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I fetched %ld records from cloud", &buf, 0xCu);
        }
      }
    }

    *&v5 = v11;
  }

  else
  {
    v7 = 0;
  }

  buf = v4;
  v16 = 0;
  v17 = 0;
  sub_10045B0C8(&buf + 8, v3, v5, 0x6DB6DB6DB6DB6DB7 * ((v5 - v3) >> 3));
  v10 = a1[8];
  if (!v10)
  {
    sub_100022DB4();
  }

  (*(*v10 + 48))(v10, &buf);
  v14 = &buf + 1;
  sub_10027B3D0(&v14);
  if (v7)
  {
    sub_100004A34(v7);
  }

  *&buf = &v12;
  sub_10027B3D0(&buf);
}

void sub_10045B044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_10027B3D0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10045B07C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10045B0C8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10028A1D4(result, a4);
  }

  return result;
}

void sub_10045B130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10027B3D0(&a9);
  _Unwind_Resume(a1);
}

void sub_10045B150(void *a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  v4 = 0uLL;
  v5.__r_.__value_.__r.__words[0] = "CellularPlanPersistenceControllerImpl";
  sub_1001048A4();
}

void sub_10045B4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *__p, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_10028B224(v23 - 120);
  sub_10045B62C(&__p);
  if (a15)
  {
    sub_100004A34(a15);
  }

  sub_10045B5D0(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045B5D0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1003F2928(v1 + 32);
    sub_100009970(v1 + 8, *(v1 + 16));
    operator delete();
  }

  return result;
}

uint64_t sub_10045B62C(uint64_t a1)
{
  sub_1003F2928(a1 + 64);
  sub_100009970(a1 + 40, *(a1 + 48));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t sub_10045B67C(uint64_t a1)
{
  *a1 = off_101E4DD20;
  sub_1003F2928(a1 + 72);
  sub_100009970(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10045B6E4(uint64_t a1)
{
  *a1 = off_101E4DD20;
  sub_1003F2928(a1 + 72);
  sub_100009970(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

void sub_10045B818(_Unwind_Exception *a1)
{
  sub_100009970(v1 + 48, *(v1 + 56));
  v3 = *(v1 + 40);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10045B858(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4DD20;
  *(a2 + 8) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(a2 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  sub_100074920((a2 + 48), a1 + 48);
  return sub_100457284(a2 + 72, a1 + 72);
}

void sub_10045B8E8(_Unwind_Exception *a1)
{
  sub_100009970(v1 + 48, *(v1 + 56));
  v3 = *(v1 + 40);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void sub_10045B920(uint64_t a1)
{
  sub_1003F2928(a1 + 72);
  sub_100009970(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_10045B984(uint64_t a1)
{
  sub_1003F2928(a1 + 72);
  sub_100009970(a1 + 48, *(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(a1);
}

void sub_10045B9E4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v9 = *(a2 + 1);
  v10 = a2[3];
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = a1[2];
      if (v7)
      {
        if (v3)
        {
          v13 = 0;
          v14 = 0;
          v15 = 0;
          sub_100447084(v5, (a1 + 6), &v9, &v13);
          if (v13 != v14)
          {
            v8 = a1[5];
            v11 = a1[4];
            v12 = v8;
            if (v8)
            {
              atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
            }

            v17[0] = v5;
            v17[1] = v7;
            v17[2] = &v6->__vftable;
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100457284(v18, (a1 + 9));
            v18[7] = 0;
            operator new();
          }

          if (os_log_type_enabled(*(v5 + 40), OS_LOG_TYPE_ERROR))
          {
            sub_101770BB0();
          }

          sub_100447630((a1 + 9), 0, 0);
          v16 = &v13;
          sub_1000087B4(&v16);
          goto LABEL_11;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  sub_100447630((a1 + 9), 0, 0);
  if (v6)
  {
LABEL_11:
    sub_100004A34(v6);
  }

  v17[0] = &v9;
  sub_10027B3D0(v17);
}

uint64_t sub_10045BC9C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10045BCE8(uint64_t a1)
{
  sub_1003F2928(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void *sub_10045BD20(void *a1)
{
  *a1 = off_101E4DD90;
  sub_1003F2928((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10045BD70(void *a1)
{
  *a1 = off_101E4DD90;
  sub_1003F2928((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_10045BE68(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10045BE88(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E4DD90;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_100457284(a2 + 32, a1 + 32);
}

void sub_10045BEF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10045BF14(void *a1)
{
  sub_10045C068(a1 + 8);

  operator delete(a1);
}

uint64_t sub_10045BF50(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109376;
    v8[1] = v4;
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Remove records result: %d, CK modifiled: %d", v8, 0xEu);
  }

  return sub_100447630(a1 + 32, v4, v5);
}

uint64_t sub_10045C01C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10045C068(uint64_t a1)
{
  sub_1003F2928(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

uint64_t *sub_10045C0B4(uint64_t *a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = (v1 + 8);
  if (*(v1 + 31) < 0)
  {
    v4 = *(v1 + 16);
    if (v4 != 1)
    {
      if (v4 != 3)
      {
        goto LABEL_12;
      }

      v3 = *v2;
      goto LABEL_8;
    }

    v8 = **v2;
LABEL_17:
    if ((v8 - 48) >= 3)
    {
      goto LABEL_12;
    }

LABEL_18:
    v12 = 0;
    v13 = 0;
    v14 = "CellularPlanPersistenceControllerImpl";
    sub_1001048A4();
  }

  if (*(v1 + 31) == 1)
  {
    v8 = *v2;
    goto LABEL_17;
  }

  v3 = (v1 + 8);
  if (*(v1 + 31) == 3)
  {
LABEL_8:
    v5 = *v3;
    v6 = *(v3 + 2);
    if (v5 != 27745 || v6 != 108)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_12:
  if (os_log_type_enabled(*(*v1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101770BE4();
  }

  sub_10000FFD0(v1 + 32, 0);
  sub_10045C408(&v11);
  return sub_1000049E0(&v10);
}

void sub_10045C358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, char a28)
{
  sub_10000FF50(v28 - 72);
  sub_10000FF50(&a28);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a27)
  {
    sub_100004A34(a27);
  }

  sub_10045C408(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045C408(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10000FF50(v1 + 32);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

void *sub_10045C468(void *a1)
{
  *a1 = off_101E4DE20;
  sub_10000FF50((a1 + 1));
  return a1;
}

void sub_10045C4AC(void *a1)
{
  *a1 = off_101E4DE20;
  sub_10000FF50((a1 + 1));

  operator delete();
}

void sub_10045C5BC(void *a1)
{
  sub_10000FF50(a1 + 8);

  operator delete(a1);
}

uint64_t sub_10045C604(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10045C650(uint64_t *a1)
{
  v15 = a1;
  v16 = *a1;
  v1 = *v16;
  if (v16[2] == v16[1])
  {
    v11 = *(v1 + 6);
    sub_100444744(&v20);
    v12 = std::string::append(&v20, "com.apple.CommCenter.SubscriptionDetails.plist", 0x2EuLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v22 = v12->__r_.__value_.__r.__words[2];
    *buf = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v19 = 0;
    (*(*v11 + 896))(v11, buf, &v19);
    sub_10002D760(&v19);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v19 = 0;
    sub_1009242DC(v16 + 1, &v19);
    v2 = [[NSKeyedArchiver alloc] initRequiringSecureCoding:{1, v15}];
    v3 = [NSNumber numberWithInt:4];
    [v2 encodeObject:v3 forKey:@"version"];

    v4 = v19;
    [v2 encodeObject:v4 forKey:@"kSubscriptionDetailsKey"];
    v5 = [v2 encodedData];
    cf = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    v6 = *(v1 + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v4 count];
      *buf = 134217984;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I saveSubscriptionDetails: Saved [%lu] subscription info", buf, 0xCu);
    }

    v8 = *(v1 + 6);
    sub_100444744(&v20);
    v9 = std::string::append(&v20, "com.apple.CommCenter.SubscriptionDetails.plist", 0x2EuLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    v22 = v9->__r_.__value_.__r.__words[2];
    *buf = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v17 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    (*(*v8 + 896))(v8, buf, &v17);
    sub_10002D760(&v17);
    if (SHIBYTE(v22) < 0)
    {
      operator delete(*buf);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v20.__r_.__value_.__l.__data_);
    }

    sub_10002D760(&cf);

    sub_100010250(&v19);
  }

  sub_10045CA10(&v16);
  return sub_1000049E0(&v15);
}

void sub_10045C91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14, const void *a15, const void *a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_10002D760(&a15);

  sub_100010250(&a16);
  sub_10045CA10(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10045CA10(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (v1 + 8);
    sub_1000E2698(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_10045CA70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_10045CB08(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *sub_10045CB88(void **a1)
{
  v1 = *a1;
  v29 = a1;
  v30 = v1;
  v2 = *v1;
  v34 = 0uLL;
  v35 = 0;
  v3 = *(v2 + 48);
  sub_100444744(&v32);
  v4 = std::string::append(&v32, "com.apple.CommCenter.SubscriptionDetails.plist", 0x2EuLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v37 = v4->__r_.__value_.__r.__words[2];
  *__p = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  (*(*v3 + 904))(&v33, v3, __p);
  v6 = v33;
  sub_10002D760(&v33);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
    if (v6)
    {
LABEL_5:
      v7 = [NSKeyedUnarchiver alloc];
      v33 = 0;
      v8 = [v7 initForReadingFromData:v6 error:&v33];
      v9 = v33;
      v10 = v9;
      if (!v8 || v9)
      {
        v19 = *(v2 + 40);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p[0]) = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I loadSubscriptionDetails: No unarchiver or error", __p, 2u);
        }

        __p[0] = 0;
        __p[1] = 0;
        v37 = 0;
        sub_10016B908(__p, v34, *(&v34 + 1), 0x8F5C28F5C28F5C29 * ((*(&v34 + 1) - v34) >> 3));
        v20 = v1[4];
        if (!v20)
        {
          sub_100022DB4();
        }

        (*(*v20 + 48))(v20, __p);
        v32.__r_.__value_.__r.__words[0] = __p;
        sub_1000E2698(&v32);
        v11 = 0;
      }

      else
      {
        v11 = [v8 decodeObjectOfClass:objc_opt_class() forKey:@"version"];
        if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if ([v11 intValue] == 4)
          {
            v12 = objc_opt_class();
            v13 = [NSSet setWithObjects:v12, objc_opt_class(), 0];
            v14 = [v8 decodeObjectOfClasses:v13 forKey:@"kSubscriptionDetailsKey"];

            if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v8 finishDecoding];
              v15 = *(v2 + 40);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
              {
                v16 = [v14 count];
                LODWORD(__p[0]) = 134217984;
                *(__p + 4) = v16;
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I loadSubscriptionDetails: Loaded %lu items", __p, 0xCu);
              }

              v31 = v14;
              CFRetain(v14);
              sub_100926660(&v31, __p);
              sub_10045D4E4(&v34);
              v34 = *__p;
              v35 = v37;
              __p[1] = 0;
              v37 = 0;
              __p[0] = 0;
              v32.__r_.__value_.__r.__words[0] = __p;
              sub_1000E2698(&v32);
              sub_100010250(&v31);
              __p[1] = 0;
              v37 = 0;
              __p[0] = 0;
              sub_10016B908(__p, v34, *(&v34 + 1), 0x8F5C28F5C28F5C29 * ((*(&v34 + 1) - v34) >> 3));
              sub_10045D49C((v1 + 1));
              v32.__r_.__value_.__r.__words[0] = __p;
              sub_1000E2698(&v32);
            }

            else
            {
              [v8 finishDecoding];
              __p[0] = 0;
              __p[1] = 0;
              v37 = 0;
              sub_10016B908(__p, v34, *(&v34 + 1), 0x8F5C28F5C28F5C29 * ((*(&v34 + 1) - v34) >> 3));
              v26 = v1[4];
              if (!v26)
              {
                sub_100022DB4();
              }

              (*(*v26 + 48))(v26, __p);
              v32.__r_.__value_.__r.__words[0] = __p;
              sub_1000E2698(&v32);
              v27 = *(v2 + 40);
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v32.__r_.__value_.__l.__data_) = 0;
                _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I loadSubscriptionDetails: Failed to decode (CTCellularPlanSubscription)", &v32, 2u);
              }
            }
          }

          else
          {
            [v8 finishDecoding];
            v23 = *(v2 + 40);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v11 intValue];
              LODWORD(__p[0]) = 67109120;
              HIDWORD(__p[0]) = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I loadSubscriptionDetails: Version mismatch [%d]", __p, 8u);
            }

            __p[0] = 0;
            __p[1] = 0;
            v37 = 0;
            sub_10016B908(__p, v34, *(&v34 + 1), 0x8F5C28F5C28F5C29 * ((*(&v34 + 1) - v34) >> 3));
            v25 = v1[4];
            if (!v25)
            {
              sub_100022DB4();
            }

            (*(*v25 + 48))(v25, __p);
            v32.__r_.__value_.__r.__words[0] = __p;
            sub_1000E2698(&v32);
          }
        }

        else
        {
          [v8 finishDecoding];
          __p[0] = 0;
          __p[1] = 0;
          v37 = 0;
          sub_10016B908(__p, v34, *(&v34 + 1), 0x8F5C28F5C28F5C29 * ((*(&v34 + 1) - v34) >> 3));
          v21 = v1[4];
          if (!v21)
          {
            sub_100022DB4();
          }

          (*(*v21 + 48))(v21, __p);
          v32.__r_.__value_.__r.__words[0] = __p;
          sub_1000E2698(&v32);
          v22 = *(v2 + 40);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v32.__r_.__value_.__l.__data_) = 0;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I loadSubscriptionDetails: Version decoding failure", &v32, 2u);
          }
        }
      }

      goto LABEL_36;
    }
  }

  else if (v6)
  {
    goto LABEL_5;
  }

  v17 = *(v2 + 40);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I loadSubscriptionDetails: No data", __p, 2u);
  }

  __p[0] = 0;
  __p[1] = 0;
  v37 = 0;
  sub_10016B908(__p, v34, *(&v34 + 1), 0x8F5C28F5C28F5C29 * ((*(&v34 + 1) - v34) >> 3));
  v18 = v1[4];
  if (!v18)
  {
    sub_100022DB4();
  }

  (*(*v18 + 48))(v18, __p);
  v32.__r_.__value_.__r.__words[0] = __p;
  sub_1000E2698(&v32);
LABEL_36:

  v32.__r_.__value_.__r.__words[0] = &v34;
  sub_1000E2698(&v32);
  sub_10045D44C(&v30);
  return sub_1000049E0(&v29);
}