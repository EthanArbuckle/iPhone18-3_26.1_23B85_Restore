void sub_10028A59C(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v4 = sub_1003DB8C8();
  v5 = sub_1002D3F5C(AppInstallEntity, v3, v4);

  *(*(*(a1 + 32) + 8) + 24) = [v5 countOfEntities];
}

void sub_10028A640(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v4 = sub_1003DB600();
  v5 = sub_1002D3F5C(AppInstallEntity, v3, v4);

  *(*(*(a1 + 32) + 8) + 24) = [v5 countOfEntities];
}

void sub_10028A6E4(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v4 = sub_1003DAD0C();
  v5 = sub_1002D3F5C(AppInstallEntity, v3, v4);

  *(*(*(a1 + 32) + 8) + 24) = [v5 countOfEntities];
}

uint64_t sub_10028A788(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = sub_1003C27BC();
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10028A868;
  v4[3] = &unk_10051CCC8;
  v4[4] = &v5;
  [v1 readUsingSession:v4];

  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_10028A850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10028A868(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v4 = sub_1003DB1CC();
  v5 = sub_1002D3F5C(AppInstallEntity, v3, v4);

  *(*(*(a1 + 32) + 8) + 24) = [v5 countOfEntities];
}

void sub_10028A90C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v183 = a4;
  v7 = [_TtC9appstored6LogKey alloc];
  v194 = v6;
  v191 = a2;
  if (a2)
  {
    v8 = [(LogKey *)v7 initWithCategory:@"Ordered" base:&stru_100529300];
    v188 = [(LogKey *)v8 makeActivity];

    if (v6)
    {
      v10 = 32;
LABEL_6:
      Property = objc_getProperty(v6, v9, v10, 1);
      goto LABEL_7;
    }
  }

  else
  {
    v11 = [(LogKey *)v7 initWithCategory:@"NonOrdered" base:&stru_100529300];
    v188 = [(LogKey *)v11 makeActivity];

    if (v6)
    {
      v10 = 24;
      goto LABEL_6;
    }
  }

  Property = 0;
LABEL_7:
  v186 = Property;
  v13 = [v186 count];
  v14 = ASDLogHandleForCategory();
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    v16 = v188;
    if (v15)
    {
      *buf = 138412546;
      *&buf[4] = v188;
      *&buf[12] = 2048;
      *&buf[14] = [v186 count];
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] Attempting metadata lookup for %ld apps", buf, 0x16u);
    }

    v214 = 0u;
    v215 = 0u;
    v212 = 0u;
    v213 = 0u;
    v17 = [v186 keyEnumerator];
    v187 = [v17 countByEnumeratingWithState:&v212 objects:v233 count:16];
    if (!v187)
    {

      v192 = 0;
      v18 = 0;
      goto LABEL_214;
    }

    obj = v17;
    v18 = 0;
    v192 = 0;
    v185 = *v213;
    p_vtable = WallClock.vtable;
    while (1)
    {
      v20 = 0;
      do
      {
        if (*v213 != v185)
        {
          objc_enumerationMutation(obj);
        }

        v189 = v20;
        v21 = *(*(&v212 + 1) + 8 * v20);
        v22 = +[ACAccountStore ams_sharedAccountStore];
        v195 = v21;
        v23 = [v22 ams_iTunesAccountWithDSID:v21];

        v24 = [RestoreBatchInfo alloc];
        if (v194)
        {
          v25 = v194[2];
        }

        else
        {
          v25 = 0;
        }

        v193 = v23;
        if (v24)
        {
          *buf = v24;
          *&buf[8] = RestoreBatchInfo;
          v26 = objc_msgSendSuper2(buf, "init");
          v24 = v26;
          if (v26)
          {
            objc_storeStrong(&v26->_account, v23);
            v24->_batchSize = v25;
            v27 = +[NSMutableArray array];
            hardFailures = v24->_hardFailures;
            v24->_hardFailures = v27;

            v29 = +[NSMutableArray array];
            softFailures = v24->_softFailures;
            v24->_softFailures = v29;

            v31 = +[NSMutableArray array];
            successes = v24->_successes;
            v24->_successes = v31;

            v33 = +[NSMutableArray array];
            tokenFailures = v24->_tokenFailures;
            v24->_tokenFailures = v33;
          }
        }

        if (!v191)
        {
          v35 = v194;
          if (!v24)
          {
            goto LABEL_199;
          }

          v24->_autoFinish = 1;
          if (!v194)
          {
            v36 = 0;
            goto LABEL_27;
          }

          goto LABEL_26;
        }

        v35 = v194;
        if (v194)
        {
          if (!v24)
          {
            goto LABEL_199;
          }

          v24->_autoFinish = v194[1] & 1;
LABEL_26:
          v36 = *(v35 + 8);
          goto LABEL_27;
        }

        if (!v24)
        {
LABEL_199:
          v37 = 1;
          goto LABEL_28;
        }

        v36 = 0;
        v24->_autoFinish = 0;
LABEL_27:
        v37 = 0;
        v24->_userInitiated = v36 & 1;
        v24->_failCoordinators = v183 != 0;
LABEL_28:
        v190 = v18;
        v38 = [v186 objectForKeyedSubscript:v195];
        v39 = v24;
        v202 = v39;
        v204 = v37;
        if (![v38 count])
        {
          v41 = 0;
          goto LABEL_148;
        }

        v200 = 0;
        v40 = 0;
        v41 = 0;
        v198 = v38;
        do
        {
          if (v37)
          {
            if (v40 < [v38 count])
            {
              batchSize = 0;
              goto LABEL_36;
            }
          }

          else
          {
            v42 = v39->_batchSize + v40;
            if (v42 < [v38 count])
            {
              batchSize = v39->_batchSize;
              goto LABEL_36;
            }
          }

          batchSize = [v38 count] - v40;
LABEL_36:
          v201 = batchSize;
          v44 = [v38 subarrayWithRange:v40];
          v45 = v44;
          v205 = v44;
          if (v41)
          {
            v230 = 0u;
            v231 = 0u;
            v228 = 0u;
            v229 = 0u;
            v46 = [v44 countByEnumeratingWithState:&v228 objects:buf count:16];
            if (v46)
            {
              v47 = v46;
              v48 = v40;
              v49 = *v229;
              v37 = v204;
              do
              {
                v50 = 0;
                do
                {
                  if (*v229 != v49)
                  {
                    objc_enumerationMutation(v205);
                  }

                  v51 = *(*(&v228 + 1) + 8 * v50);
                  sub_100398948(v51, v41);
                  if (v204)
                  {
                    v53 = 0;
                  }

                  else
                  {
                    v53 = objc_getProperty(v39, v52, 56, 1);
                  }

                  [v53 addObject:v51];
                  v50 = v50 + 1;
                }

                while (v47 != v50);
                v54 = [v205 countByEnumeratingWithState:&v228 objects:buf count:16];
                v47 = v54;
              }

              while (v54);
              v40 = v48;
            }

            else
            {
              v37 = v204;
            }

            goto LABEL_124;
          }

          v55 = v39;
          v56 = v45;
          v57 = sub_10027157C([RestoreBatchTask alloc], v56);

          if (v204)
          {
            v59 = 0;
          }

          else
          {
            v59 = objc_getProperty(v55, v58, 16, 1);
          }

          self = v55;
          if (v57)
          {
            objc_setProperty_atomic_copy(v57, v58, v59, 42);
          }

          v60 = *(a1 + 16);
          *v237 = v57;
          v61 = [NSArray arrayWithObjects:v237 count:1];
          if (v60)
          {
            [*(v60 + 8) addOperations:v61 waitUntilFinished:1];
          }

          if (v57)
          {
            v63 = objc_getProperty(v57, v62, 32, 1);
          }

          else
          {
            v63 = 0;
          }

          v64 = v63;

          if (v64)
          {
            if (v57)
            {
              v66 = objc_getProperty(v57, v65, 32, 1);
            }

            else
            {
              v66 = 0;
            }

            v67 = self;
            v68 = v66;
          }

          else
          {
            v66 = 0;
            v67 = self;
          }

          sub_10029162C(v57, v67, 0);

          v69 = v66;
          v199 = v69;
          if (v69 && (v70 = v69, ASDErrorIsEqual()))
          {
            v71 = v40;
            v41 = [v70 copy];
            v224 = 0u;
            v225 = 0u;
            v226 = 0u;
            v227 = 0u;
            v72 = v56;
            v73 = [v72 countByEnumeratingWithState:&v224 objects:v244 count:16];
            if (v73)
            {
              v74 = v73;
              v75 = *v225;
              do
              {
                v76 = 0;
                do
                {
                  if (*v225 != v75)
                  {
                    objc_enumerationMutation(v72);
                  }

                  v77 = *(*(&v224 + 1) + 8 * v76);
                  sub_100398948(v77, v41);
                  if (v204)
                  {
                    v79 = 0;
                  }

                  else
                  {
                    v79 = objc_getProperty(self, v78, 56, 1);
                  }

                  [v79 addObject:v77];
                  v76 = v76 + 1;
                }

                while (v74 != v76);
                v80 = [v72 countByEnumeratingWithState:&v224 objects:v244 count:16];
                v74 = v80;
              }

              while (v80);
            }

            v81 = ASDLogHandleForCategory();
            v39 = v202;
            v40 = v71;
            if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
            {
              v129 = [v72 count];
              if (v204)
              {
                v130 = 0;
              }

              else
              {
                v130 = objc_getProperty(self, v128, 16, 1);
              }

              v131 = [v130 ams_DSID];
              *v237 = 134218242;
              *&v237[4] = v129;
              v238 = 2114;
              v239 = v131;
              _os_log_error_impl(&_mh_execute_header, v81, OS_LOG_TYPE_ERROR, "Failed %ld items for accountID: %{public}@ due to token error", v237, 0x16u);
            }

            v82 = [v38 count] - &v201[v40];
            v67 = self;
            if (v82 >= 1)
            {
              v83 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
              {
                if (v204)
                {
                  v132 = 0;
                }

                else
                {
                  v132 = objc_getProperty(self, v84, 16, 1);
                }

                v133 = [v132 ams_DSID];
                *v237 = 134218242;
                *&v237[4] = v82;
                v238 = 2114;
                v239 = v133;
                _os_log_error_impl(&_mh_execute_header, v83, OS_LOG_TYPE_ERROR, "Failing out remaining %ld items for accountID: %{public}@ due to token error", v237, 0x16u);

                v67 = self;
              }
            }
          }

          else
          {
            v41 = 0;
          }

          v85 = [v38 count];
          v86 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
          {
            if (v204)
            {
              v88 = 0;
            }

            else
            {
              v88 = objc_getProperty(v67, v87, 16, 1);
            }

            v90 = [v88 ams_DSID];
            if (v204)
            {
              v91 = 0;
            }

            else
            {
              v91 = objc_getProperty(v67, v89, 32, 1);
            }

            v92 = [v91 count];
            *v237 = 138544130;
            *&v237[4] = v90;
            v238 = 2048;
            v239 = v200;
            v240 = 2048;
            v241 = v92;
            v242 = 2048;
            v243 = &v85[-v40];
            _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "Batch complete for accountID: %{public}@ batch successes: %ld batch failures: %ld batch remaining: %ld", v237, 0x2Au);

            v39 = v202;
          }

          v37 = v204;
          if (v204)
          {
            v94 = 0;
          }

          else
          {
            v94 = objc_getProperty(v67, v93, 48, 1);
          }

          if ([v94 count])
          {
            v222 = 0u;
            v223 = 0u;
            v220 = 0u;
            v221 = 0u;
            v197 = v40;
            if (v204)
            {
              v96 = 0;
            }

            else
            {
              v96 = objc_getProperty(v67, v95, 48, 1);
            }

            v97 = v96;
            v98 = [v97 countByEnumeratingWithState:&v220 objects:v236 count:16];
            if (v98)
            {
              v99 = v98;
              v100 = *v221;
              do
              {
                v101 = 0;
                do
                {
                  if (*v221 != v100)
                  {
                    objc_enumerationMutation(v97);
                  }

                  v102 = *(*(&v220 + 1) + 8 * v101);
                  v103 = [ProgressInfo alloc];
                  v104 = sub_10040908C(v102);
                  v105 = sub_100408EB0(v102);
                  v106 = sub_100403C3C(&v103->super.isa, v104, 0, v105);

                  v107 = sub_10040916C(v102);
                  v109 = v107;
                  if (v106)
                  {
                    objc_setProperty_atomic(v106, v108, v107, 152);

                    v106[18] = 384;
                  }

                  else
                  {
                  }

                  v110 = sub_1003649C8();
                  sub_100364E78(v110, v106, @"Restore bootstrap complete");

                  v111 = sub_1003649C8();
                  v112 = sub_10040908C(v102);
                  v113 = sub_10040916C(v102);
                  sub_10036695C(v111, v112, 0.0);

                  v101 = v101 + 1;
                }

                while (v99 != v101);
                v114 = [v97 countByEnumeratingWithState:&v220 objects:v236 count:16];
                v99 = v114;
              }

              while (v114);
            }

            v37 = v204;
            if (v204)
            {
              v115 = 0;
              p_vtable = (WallClock + 24);
              v40 = v197;
              v38 = v198;
              v39 = v202;
              v67 = self;
              goto LABEL_108;
            }

            v39 = v202;
            v67 = self;
            p_vtable = (WallClock + 24);
            v40 = v197;
            v38 = v198;
            if (v202->_autoFinish)
            {
              sub_10028D31C(v202->_userInitiated, 0);
            }
          }

          else if (v204)
          {
            v115 = 0;
            goto LABEL_108;
          }

          v115 = objc_getProperty(v67, v95, 32, 1);
LABEL_108:
          if ([v115 count])
          {
            v218 = 0u;
            v219 = 0u;
            v216 = 0u;
            v217 = 0u;
            v117 = v40;
            if (v37)
            {
              v118 = 0;
            }

            else
            {
              v118 = objc_getProperty(v67, v116, 32, 1);
            }

            v119 = v118;
            v120 = [v119 countByEnumeratingWithState:&v216 objects:v235 count:16];
            if (v120)
            {
              v121 = v120;
              v122 = *v217;
              do
              {
                for (i = 0; i != v121; i = i + 1)
                {
                  if (*v217 != v122)
                  {
                    objc_enumerationMutation(v119);
                  }

                  v124 = *(*(&v216 + 1) + 8 * i);
                  v125 = sub_10039889C(v124);
                  if (!sub_1002910E4(v125))
                  {
                    v234 = v124;
                    v126 = [NSArray arrayWithObjects:&v234 count:1];
                    sub_10028C78C((p_vtable + 482), v126, @"Metadata lookup failure");
                  }
                }

                v121 = [v119 countByEnumeratingWithState:&v216 objects:v235 count:16];
              }

              while (v121);
            }

            v38 = v198;
            v39 = v202;
            v67 = self;
            v37 = v204;
            v40 = v117;
          }

          if (v37)
          {
            v127 = 0;
          }

          else
          {
            v127 = objc_getProperty(v67, v116, 48, 1);
          }

          v200 = &v200[[v127 count]];

LABEL_124:
          v40 += v201;
        }

        while (v40 < [v38 count]);
        if (v41)
        {
          v134 = v41;
        }

LABEL_148:

        v136 = v41;
        if (v37)
        {
          v137 = 0;
        }

        else
        {
          v137 = objc_getProperty(v39, v135, 48, 1);
        }

        v139 = [v137 count];
        if (v204)
        {
          v140 = 0;
        }

        else
        {
          v140 = objc_getProperty(v39, v138, 32, 1);
        }

        v142 = [v140 count];
        if (v191 == 1 && v136)
        {
          v143 = v194;
          if (v194)
          {
            v143 = objc_getProperty(v194, v141, 24, 1);
          }

          v144 = v143;
          v145 = [v144 objectForKeyedSubscript:v195];

          v210 = 0u;
          v211 = 0u;
          v208 = 0u;
          v209 = 0u;
          v146 = v145;
          v147 = [v146 countByEnumeratingWithState:&v208 objects:v232 count:16];
          if (v147)
          {
            v148 = v147;
            v149 = *v209;
            do
            {
              v150 = 0;
              do
              {
                if (*v209 != v149)
                {
                  objc_enumerationMutation(v146);
                }

                v151 = *(*(&v208 + 1) + 8 * v150);
                sub_100398948(v151, v136);
                if (v204)
                {
                  v153 = 0;
                }

                else
                {
                  v153 = objc_getProperty(v202, v152, 56, 1);
                }

                [v153 addObject:v151];
                v150 = v150 + 1;
              }

              while (v148 != v150);
              v154 = [v146 countByEnumeratingWithState:&v208 objects:v232 count:16];
              v148 = v154;
            }

            while (v154);
          }

          v155 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v155, OS_LOG_TYPE_ERROR))
          {
            v177 = [v146 count];
            *buf = 138412802;
            *&buf[4] = v188;
            *&buf[12] = 2114;
            *&buf[14] = v195;
            v246 = 2048;
            v247 = v177;
            _os_log_error_impl(&_mh_execute_header, v155, OS_LOG_TYPE_ERROR, "[%@][%{public}@] Hard failing %ld non ordered restores due to token failure", buf, 0x20u);
          }

          v157 = v194;
          p_vtable = WallClock.vtable;
          if (v194)
          {
            v157 = objc_getProperty(v194, v156, 24, 1);
          }

          v158 = v157;
          v159 = [v158 objectForKeyedSubscript:v195];

          if (v159)
          {
            v161 = v194;
            if (v194)
            {
              v161 = objc_getProperty(v194, v160, 24, 1);
            }

            v162 = v161;
            [v162 removeObjectForKey:v195];
          }

          v39 = v202;
        }

        if (v204)
        {
          v163 = 0;
          v164 = 1;
        }

        else
        {
          v163 = objc_getProperty(v39, v141, 56, 1);
          v164 = 0;
        }

        if ([v163 count])
        {
          v165 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v165, OS_LOG_TYPE_ERROR))
          {
            if (v164)
            {
              v175 = [0 count];
              failCoordinators = 0;
            }

            else
            {
              v175 = [objc_getProperty(v39 v166];
              failCoordinators = v39->_failCoordinators;
            }

            *buf = 138413058;
            *&buf[4] = v188;
            *&buf[12] = 2114;
            *&buf[14] = v195;
            v246 = 2048;
            v247 = v175;
            v248 = 1024;
            LODWORD(v249) = failCoordinators;
            _os_log_error_impl(&_mh_execute_header, v165, OS_LOG_TYPE_ERROR, "[%@][%{public}@] Failing %ld token failures. Failing coordinators: %d", buf, 0x26u);
          }

          v167 = sub_1003C27BC();
          v206[0] = _NSConcreteStackBlock;
          v206[1] = 3221225472;
          v206[2] = sub_10028C494;
          v206[3] = &unk_10051D6C8;
          v168 = v39;
          v207 = v168;
          [v167 modifyUsingTransaction:v206];

          if ((v164 & 1) == 0 && v168->_failCoordinators)
          {
            v170 = objc_getProperty(v168, v169, 56, 1);
            sub_10028C78C((p_vtable + 482), v170, @"Batch Token failure");
          }
        }

        v192 += v139;
        v171 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
        {
          if (v164)
          {
            v173 = 0;
          }

          else
          {
            v173 = objc_getProperty(v39, v172, 32, 1);
          }

          v174 = [v173 count];
          *buf = 138413058;
          *&buf[4] = v188;
          *&buf[12] = 2114;
          *&buf[14] = v195;
          v246 = 2048;
          v247 = v192;
          v248 = 2048;
          v249 = v174;
          _os_log_impl(&_mh_execute_header, v171, OS_LOG_TYPE_DEFAULT, "[%@][%{public}@] Lookup complete with %ld successful lookups and %ld failures", buf, 0x2Au);
        }

        v18 = &v190[v142];

        v20 = v189 + 1;
      }

      while ((v189 + 1) != v187);
      v178 = [obj countByEnumeratingWithState:&v212 objects:v233 count:16];
      v187 = v178;
      if (!v178)
      {

        if (v191 == 1)
        {
          v16 = v188;
          if (v192 >= 1)
          {
            v179 = v194;
            if (v194)
            {
              v179 = *(v194 + 8);
            }

            sub_10028D31C(v179 & 1, 1);
          }
        }

        else
        {
          v16 = v188;
        }

LABEL_214:
        v14 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          *&buf[4] = v16;
          *&buf[12] = 2048;
          *&buf[14] = v192;
          v246 = 2048;
          v247 = v18;
          v180 = "[%@] Bootstrap completed with successful lookups: %ld hard failures: %ld";
          v181 = v14;
          v182 = 32;
LABEL_216:
          _os_log_impl(&_mh_execute_header, v181, OS_LOG_TYPE_DEFAULT, v180, buf, v182);
        }

        goto LABEL_217;
      }
    }
  }

  if (v15)
  {
    *buf = 138412290;
    v16 = v188;
    *&buf[4] = v188;
    v180 = "[%@] No restores to bootstrap";
    v181 = v14;
    v182 = 12;
    goto LABEL_216;
  }

  v16 = v188;
LABEL_217:
}

uint64_t sub_10028BCA0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v0 = sub_1003C27BC();
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100291588;
  v3[3] = &unk_10051CCC8;
  v3[4] = &v4;
  [v0 readUsingSession:v3];

  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_10028BD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10028BD74(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    if (+[AMSDevice deviceIsAppleTV])
    {
      v4 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Screen sync not preflighting", buf, 2u);
      }
    }

    else
    {
      v38 = a2;
      v5 = objc_opt_new();
      v6 = sub_1003C27BC();
      v52[0] = _NSConcreteStackBlock;
      v52[1] = 3221225472;
      v52[2] = sub_100291990;
      v52[3] = &unk_10051FD88;
      v52[4] = a1;
      v4 = v5;
      v53 = v4;
      [v6 readUsingSession:v52];

      v7 = sub_1003D5368();
      v37 = v4;
      if ([v7 count])
      {
        v8 = +[NSMutableArray array];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v9 = v4;
        v10 = [v9 countByEnumeratingWithState:&v48 objects:v59 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v49;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v49 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v48 + 1) + 8 * i);
              v15 = [v9 objectForKeyedSubscript:v14];
              if ([v7 containsObject:v14])
              {
                v16 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v56 = v15;
                  v57 = 2114;
                  v58 = v14;
                  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Skipping previously attempted preflight of account: %{public}@/%{public}@", buf, 0x16u);
                }

                [v8 addObject:v14];
                sub_100291D68(a1, v15, @"Preflight already attempted", 0);
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v48 objects:v59 count:16];
          }

          while (v11);
        }

        if ([v8 count])
        {
          [v9 removeObjectsForKeys:v8];
        }

        v4 = v37;
      }

      if ([v4 count])
      {
        if (sub_1003D6488())
        {
          sub_10028E378(a1, v4);
        }

        else
        {
          v36 = v7;
          v17 = +[NSMutableArray array];
          v44 = 0u;
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v18 = v4;
          v19 = v38;
          v42 = [v18 countByEnumeratingWithState:&v44 objects:v54 count:16];
          if (v42)
          {
            v41 = *v45;
            v39 = AKAppleIDAuthenticationErrorDomain;
            v40 = v18;
            do
            {
              for (j = 0; j != v42; j = j + 1)
              {
                if (*v45 != v41)
                {
                  objc_enumerationMutation(v18);
                }

                v21 = *(*(&v44 + 1) + 8 * j);
                v22 = [v18 objectForKeyedSubscript:v21];
                v23 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543618;
                  v56 = v22;
                  v57 = 2114;
                  v58 = v21;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Preflighting account: %{public}@/%{public}@", buf, 0x16u);
                }

                v43 = 0;
                v24 = sub_100286B40(a1, v22, &v43);
                v25 = v43;
                v26 = v25;
                if (v25)
                {
                  v27 = v17;
                  v28 = sub_10028F048(v25, v39);
                  if (v28)
                  {
                    v29 = ASDLogHandleForCategory();
                    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138543618;
                      v56 = v22;
                      v57 = 2114;
                      v58 = v26;
                      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Cancel error authenticating for appleID: %{public}@ error: %{public}@", buf, 0x16u);
                    }

                    sub_100291D68(a1, v22, @"User canceled auth dialog", v28);
                    v17 = v27;
                    [v27 addObject:v21];
                  }

                  else
                  {
                    v30 = sub_10028DDEC(v26);
                    v31 = ASDLogHandleForCategory();
                    v32 = v31;
                    if (v30)
                    {
                      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138543618;
                        v56 = v22;
                        v57 = 2114;
                        v58 = v26;
                        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Recoverable error authenticating for appleID: %{public}@ error: %{public}@", buf, 0x16u);
                      }

                      v19 = v38;
                      v17 = v27;
                    }

                    else
                    {
                      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138543618;
                        v56 = v22;
                        v57 = 2114;
                        v58 = v26;
                        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Error authenticating for appleID: %{public}@ error: %{public}@", buf, 0x16u);
                      }

                      v17 = v27;
                      [v27 addObject:v21];
                      v19 = v38;
                    }
                  }

                  v18 = v40;
                }

                if (v24)
                {
                  [v17 addObject:v21];
                  sub_10028997C(a1, v24, v19);
                }
              }

              v42 = [v18 countByEnumeratingWithState:&v44 objects:v54 count:16];
            }

            while (v42);
          }

          v7 = v36;
          v4 = v37;
          if ([v17 count])
          {
            if (!v36)
            {
              v7 = &__NSArray0__struct;
            }

            v33 = [v7 arrayByAddingObjectsFromArray:v17];
            sub_1003D5540(AppDefaultsManager, v33);
            v34 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
            {
              v35 = [v17 componentsJoinedByString:{@", "}];
              *buf = 138543362;
              v56 = v35;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "Updated attempted preflight accountIDs to: [%{public}@]", buf, 0xCu);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10028C494(uint64_t a1, void *a2)
{
  v4 = a2;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 56, 1);
  }

  v6 = Property;
  v7 = [v6 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v39;
    p_vtable = WallClock.vtable;
    *&v8 = 138413058;
    v35 = v8;
    v36 = v4;
    do
    {
      v12 = 0;
      v37 = v9;
      do
      {
        if (*v39 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v38 + 1) + 8 * v12);
        if ([v13 databaseID])
        {
          v14 = objc_alloc((p_vtable + 507));
          v15 = [v13 databaseID];
          v16 = [v4 connection];
          v17 = [v14 initWithPersistentID:v15 onConnection:v16];

          if (v17 && sub_1002944D0(v17) != -20)
          {
            v18 = sub_1003403A0(v17, @"coordinator_id");
            v19 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = sub_10029430C(v17);
              v21 = v10;
              v22 = v18;
              v23 = v6;
              v24 = [v17 persistentID];
              v25 = sub_1002944D0(v17);
              v26 = sub_100382EEC(v25);
              *buf = v35;
              v43 = v20;
              v44 = 2048;
              v45 = v24;
              v6 = v23;
              v18 = v22;
              v10 = v21;
              v9 = v37;
              v46 = 2114;
              v47 = v26;
              v48 = 2114;
              v49 = v18;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[%@] Refreshing non-failed installation (pid = '%lld', phase = '%{public}@', coordinatorID = '%{public}@')", buf, 0x2Au);

              v4 = v36;
            }

            if (v13)
            {
              v27 = v13[2];
              [v17 setValuesWithDictionary:v27];

              v29 = objc_getProperty(v13, v28, 48, 1);
            }

            else
            {
              [v17 setValuesWithDictionary:0];
              v29 = 0;
            }

            v30 = v29;
            v31 = v30;
            if (v30)
            {
              v32 = v30;
            }

            else
            {
              v32 = &__NSArray0__struct;
            }

            sub_1002959F0(v17, v32);

            p_vtable = (WallClock + 24);
          }
        }

        v12 = v12 + 1;
      }

      while (v9 != v12);
      v33 = [v6 countByEnumeratingWithState:&v38 objects:v50 count:16];
      v9 = v33;
    }

    while (v33);
  }

  return 1;
}

void sub_10028C78C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v75 = a3;
  objc_opt_self();
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v84 objects:v88 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v85;
    v76 = v5;
    v78 = *v85;
    do
    {
      v9 = 0;
      v77 = v7;
      do
      {
        if (*v85 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v84 + 1) + 8 * v9);
        v11 = sub_10023E0F8(v10, @"restore_type");
        v12 = [v11 integerValue];

        if ((v12 - 1) <= 2)
        {
          v13 = sub_10039889C(v10);
          if (!v13)
          {
            v13 = ASDErrorWithTitleAndMessage();
          }

          if (v12 == 1)
          {
            v14 = 3;
          }

          else
          {
            v14 = 5;
          }

          v15 = sub_10023E0F8(v10, @"coordinator_id");
          if (v15)
          {
            v83 = 0;
            v16 = sub_100248934(IXAppInstallCoordinator, v15, &v83);
            v17 = v83;
            v18 = v17;
            if (v16)
            {
              if (v17)
              {
                goto LABEL_15;
              }

LABEL_23:
              if (v16 && v12 == 1)
              {
                if (sub_10024989C(v16))
                {
                  v18 = ASDLogHandleForCategory();
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                  {
                    v23 = sub_100408EB0(v10);
                    *buf = 138412802;
                    *&buf[4] = v23;
                    *&buf[12] = 2114;
                    *&buf[14] = v75;
                    *&buf[22] = 2114;
                    v90 = v16;
                    v24 = v18;
                    v25 = "[%@] Skipping fail with reason: %{public}@ of completed restore coordinator: %{public}@";
                    goto LABEL_35;
                  }

                  goto LABEL_55;
                }
              }

              else if (!v16)
              {
                v18 = ASDLogHandleForCategory();
                if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                {
                  v23 = sub_100408EB0(v10);
                  *buf = 138412802;
                  *&buf[4] = v23;
                  *&buf[12] = 2048;
                  *&buf[14] = v12;
                  *&buf[22] = 2114;
                  v90 = v75;
                  v24 = v18;
                  v25 = "[%@] No coordinator with restoreType: %ld reason: '%{public}@' to fail";
LABEL_35:
                  _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, buf, 0x20u);
                }

LABEL_55:

                v8 = v78;
                goto LABEL_56;
              }

              if (sub_10023E4DC(v10, @"supress_dialogs"))
              {
LABEL_30:
                v73 = 0;
                IsEqual = 0;
                v26 = 0;
              }

              else if (ASDErrorIsEqual())
              {
                IsEqual = 0;
                v26 = 0;
                v73 = 1;
              }

              else
              {
                if (ASDErrorIsEqual())
                {
                  goto LABEL_30;
                }

                v73 = 0;
                IsEqual = ASDErrorIsEqual();
                v26 = IsEqual ^ 1u;
              }

              v27 = sub_100249504(IXAppInstallCoordinator, v13, v26, 0);
              if (!v27)
              {
                v27 = IXCreateUserPresentableError();
              }

              v81 = 0;
              v28 = sub_100249ACC(v16, v27, &v81);
              v18 = v81;
              v29 = ASDLogHandleForCategory();
              v30 = v29;
              if (v28)
              {
                if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                {
                  v31 = sub_100408EB0(v10);
                  *buf = 138413314;
                  *&buf[4] = v31;
                  *&buf[12] = 2114;
                  *&buf[14] = v16;
                  *&buf[22] = 2048;
                  v90 = v12;
                  *v91 = 2114;
                  *&v91[2] = v75;
                  *&v91[10] = 2114;
                  *&v91[12] = v13;
                  _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%@] Failed coordinator %{public}@ with restoreType: %ld reason: '%{public}@' error: %{public}@", buf, 0x34u);
                }

                sub_100408EB0(v10);
                v66 = v75;
                v64 = v67 = v13;
                v65 = v12;
                ASDDebugLog();

                if (v73)
                {
                  v72 = v27;
                  v32 = sub_10040916C(v10);
                  v33 = sub_100408EB0(v10);
                  v70 = v32;
                  v34 = v33;
                  objc_opt_self();
                  v35 = [AMSDialogRequest alloc];
                  v36 = ASDLocalizedString();
                  v37 = ASDLocalizedString();
                  v38 = [v35 initWithTitle:v36 message:{v37, v64, v65, v75, v13}];

                  v74 = v34;
                  v39 = [v34 description];
                  [v38 setLogKey:v39];

                  v40 = ASDLocalizedString();
                  v41 = [AMSDialogAction actionWithTitle:v40 style:2];

                  v92 = v41;
                  v42 = [NSArray arrayWithObjects:&v92 count:1];
                  [v38 setButtonActions:v42];

                  sub_100406DAC(v38, @"restoreAppNeedsPurchasing");
                  sub_10022DA8C(v41, @"cancel");
                  v69 = v38;
                  if (sub_10030B58C())
                  {
                    v43 = ASDLocalizedString();
                    v44 = [AMSDialogAction actionWithTitle:v43];

                    [v38 addButtonAction:v44];
                  }

                  else
                  {
                    v44 = 0;
                  }

                  v47 = objc_alloc_init(InteractiveRequestPresenter);
                  *buf = _NSConcreteStackBlock;
                  *&buf[8] = 3221225472;
                  *&buf[16] = sub_10028F1C8;
                  v90 = &unk_10051BAA0;
                  *v91 = v74;
                  *&v91[8] = v44;
                  *&v91[16] = v70;
                  v45 = v70;
                  v48 = v44;
                  v49 = v74;
                  [(InteractiveRequestPresenter *)v47 presentDialogRequest:v69 resultHandler:buf];

                  v7 = v77;
                  v27 = v72;
                  goto LABEL_53;
                }

                v7 = v77;
                if (IsEqual)
                {
                  v45 = [_TtC9appstored22AppCapabilitiesService defaultService:v64];
                  [v45 showIneligibleAlert];
                  goto LABEL_53;
                }
              }

              else
              {
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v50 = sub_100408EB0(v10);
                  *buf = 138413314;
                  *&buf[4] = v50;
                  *&buf[12] = 2114;
                  *&buf[14] = v16;
                  *&buf[22] = 2048;
                  v90 = v12;
                  *v91 = 2114;
                  *&v91[2] = v75;
                  *&v91[10] = 2114;
                  *&v91[12] = v18;
                  _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "[%@] Fail of coordinator: %{public}@ with restoreType: %ld reason: '%{public}@' resulted in error: %{public}@", buf, 0x34u);
                }

                v45 = sub_100408EB0(v10);
                v67 = v75;
                v68 = v18;
                v65 = v16;
                v66 = v12;
                v64 = v45;
                ASDDebugLog();
                v7 = v77;
LABEL_53:
              }

              v5 = v76;
              goto LABEL_55;
            }
          }

          else
          {
            v18 = 0;
          }

          if (((v12 == 1) & ~[AMSDevice deviceIsAppleTV:v64]) != 0)
          {
            v20 = 2;
          }

          else
          {
            v20 = 1;
          }

          v21 = sub_10040908C(v10);
          v82 = v18;
          v5 = v76;
          v16 = sub_100248214(IXAppInstallCoordinator, v21, v14, v20, 0, 0, &v82);
          v22 = v82;

          v7 = v77;
          v18 = v22;
          if (!v22)
          {
            goto LABEL_23;
          }

LABEL_15:
          v19 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v46 = sub_100408EB0(v10);
            *buf = 138413058;
            *&buf[4] = v46;
            *&buf[12] = 2048;
            *&buf[14] = v12;
            *&buf[22] = 2114;
            v90 = v75;
            *v91 = 2114;
            *&v91[2] = v18;
            _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "[%@] Coordinator lookup with restoreType: %ld reason: '%{public}@' resulted in error: %{public}@", buf, 0x2Au);
          }

          goto LABEL_55;
        }

LABEL_56:
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v84 objects:v88 count:16];
    }

    while (v7);
  }

  if ([v5 count])
  {
    v51 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = objc_opt_class();
      v53 = v52;
      v54 = [v5 count];
      *buf = 138412546;
      *&buf[4] = v52;
      *&buf[12] = 2048;
      *&buf[14] = v54;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[%@] Hard failing %ld app(s)", buf, 0x16u);
    }

    if ([v5 count])
    {
      v55 = 0;
      do
      {
        v56 = v55 + 10;
        if (v55 + 10 >= [v5 count])
        {
          v56 = [v5 count];
          v57 = v56 - v55;
        }

        else
        {
          v57 = 10;
        }

        v58 = [v5 subarrayWithRange:{v55, v57}];
        v59 = sub_1003C27BC();
        v79[0] = _NSConcreteStackBlock;
        v79[1] = 3221225472;
        v79[2] = sub_10028ED80;
        v79[3] = &unk_10051D6C8;
        v80 = v58;
        v60 = v58;
        [v59 modifyUsingTransaction:v79];

        v55 = v56;
      }

      while (v56 < [v5 count]);
    }

    v61 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = objc_opt_class();
      *buf = 138543362;
      *&buf[4] = v62;
      v63 = v62;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "[%{public}@] Hard Fail complete", buf, 0xCu);
    }
  }
}

void sub_10028D31C(int a1, int a2)
{
  v4 = ASDLogHandleForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a1)
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    v13 = 0;
    v6 = "Hydrate: Finishing completed content restore items";
    v7 = &v13;
  }

  else if (a2)
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    v12 = 0;
    v6 = "Ordered: Finishing completed content restore items";
    v7 = &v12;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    v11 = 0;
    v6 = "Non Ordered: Finishing completed content restore items";
    v7 = &v11;
  }

  _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v6, v7, 2u);
LABEL_10:

  v8 = sub_1002C0D84();
  v9 = v8;
  if (a2)
  {
    v10 = 512;
  }

  else
  {
    v10 = 256;
  }

  sub_1002C13BC(v8, v10);
}

BOOL sub_10028D40C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = +[BagService appstoredService];
  v2 = [v1 lastBag];
  v3 = [v2 URLForKey:@"p2-content-restore/url"];

  v4 = v3 != 0;
  if (!v3)
  {
    v5 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = objc_opt_class();
      v6 = v9;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Failed to get bag URL for contentRestore", &v8, 0xCu);
    }
  }

  return v4;
}

uint64_t sub_10028DDEC(void *a1)
{
  v1 = a1;
  v2 = [v1 domain];
  if ([v2 isEqualToString:kCFErrorDomainCFNetwork] & 1) != 0 || (objc_msgSend(v2, "isEqualToString:", NSURLErrorDomain) & 1) != 0 || (ASDErrorIsEqual() & 1) != 0 || (ASDErrorIsEqual() & 1) != 0 || (ASDErrorIsEqual() & 1) != 0 || (ASDErrorIsEqual())
  {
    v3 = 1;
  }

  else
  {
    v5 = [v1 underlyingErrors];

    if (v5)
    {
      v11 = 0u;
      v12 = 0u;
      v9 = 0u;
      v10 = 0u;
      v6 = [v1 underlyingErrors];
      v3 = [v6 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        v7 = *v10;
        while (2)
        {
          for (i = 0; i != v3; ++i)
          {
            if (*v10 != v7)
            {
              objc_enumerationMutation(v6);
            }

            if (sub_10028DDEC(*(*(&v9 + 1) + 8 * i)))
            {
              v3 = 1;
              goto LABEL_20;
            }
          }

          v3 = [v6 countByEnumeratingWithState:&v9 objects:v13 count:16];
          if (v3)
          {
            continue;
          }

          break;
        }
      }

LABEL_20:
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

uint64_t sub_10028DFC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 connection];
  v5 = sub_1002D3F5C(AppInstallEntity, v4, *(a1 + 32));

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10028E0E8;
  v10[3] = &unk_10051CA10;
  v11 = v3;
  v12 = *(a1 + 40);
  v6 = v3;
  [v5 enumeratePersistentIDsUsingBlock:v10];
  if (v6)
  {
    v8 = objc_getProperty(v6, v7, 24, 1);
    if (v8)
    {
      v8[17] |= 0x200000uLL;
    }
  }

  else
  {
    v8 = 0;
  }

  return 1;
}

void sub_10028E0E8(uint64_t a1, uint64_t a2)
{
  v4 = [AppInstallEntity alloc];
  v5 = [*(a1 + 32) connection];
  v6 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 40);
    v9 = sub_10029430C(v6);
    v16 = 138412546;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] [%@] Resetting restore bootstrap", &v16, 0x16u);
  }

  [(SQLiteEntity *)v6 setValue:&off_100547860 forProperty:@"bootstrapped"];
  v10 = sub_1003402E8(v6, @"restore_type");
  if (sub_1003402E8(v6, @"IFNULL(app_install.priority, 0)"))
  {
    v12 = 0;
  }

  else
  {
    v12 = v10 == 2;
  }

  if (v12)
  {
    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v11, 24, 1);
    }

    v14 = Property;
    v15 = [NSNumber numberWithLongLong:a2];
    sub_100256064(v14, v15);
  }
}

id sub_10028E298()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1005AA9F0;
  v7 = qword_1005AA9F0;
  if (!qword_1005AA9F0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10029330C;
    v3[3] = &unk_10051E318;
    v3[4] = &v4;
    sub_10029330C(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10028E360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10028E378(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    sub_1003D55B0(AppDefaultsManager, v3);
    if (!*(a1 + 56))
    {
      v4 = [objc_alloc(sub_10028E298()) initWithClientIdentifier:@"com.apple.AppleMediaServices"];
      v5 = *(a1 + 56);
      *(a1 + 56) = v4;
    }

    v48 = 0;
    v49 = &v48;
    v50 = 0x2050000000;
    v6 = qword_1005AAA18;
    v51 = qword_1005AAA18;
    if (!qword_1005AAA18)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100293500;
      v58 = &unk_10051E318;
      v59 = &v48;
      sub_100293500(buf);
      v6 = v49[3];
    }

    v39 = a1;
    v40 = v3;
    v7 = v6;
    _Block_object_dispose(&v48, 8);
    v41 = objc_alloc_init(v6);
    [v41 setDisplayStyle:0];
    [v41 setExtensionIdentifier:@"com.apple.AppStoreDaemon.ASDFollowUpExtension"];
    [v41 setGroupIdentifier:@"com.apple.appstoreDaemon.Restores"];
    [v41 setInformativeText:@"Some app restores require that you sign in to complete."];
    [v41 setTitle:@"Sign in to complete App Restores"];
    [v41 setUniqueIdentifier:@"ASD_RESTORES_FOLLOWUP"];
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Posting notification for accountID: %{public}@", buf, 0xCu);
    }

    v48 = 0;
    v49 = &v48;
    v50 = 0x2050000000;
    v9 = qword_1005AAA20;
    v51 = qword_1005AAA20;
    if (!qword_1005AAA20)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100293570;
      v58 = &unk_10051E318;
      v59 = &v48;
      sub_100293570(buf);
      v9 = v49[3];
    }

    v10 = v9;
    _Block_object_dispose(&v48, 8);
    v11 = objc_alloc_init(v9);
    [v11 setTitle:@"Sign in to complete App Restores"];
    [v11 setInformativeText:@"Some app restores require that you sign in to complete."];
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v12 = qword_1005AAA28;
    v51 = qword_1005AAA28;
    if (!qword_1005AAA28)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1002935E0;
      v58 = &unk_10051E318;
      v59 = &v48;
      v13 = sub_10029337C();
      v14 = dlsym(v13, "FLNotificationOptionLockscreen");
      *(v59[1] + 24) = v14;
      qword_1005AAA28 = *(v59[1] + 24);
      v12 = v49[3];
    }

    _Block_object_dispose(&v48, 8);
    if (!v12)
    {
      goto LABEL_38;
    }

    v15 = *v12;
    v55 = v15;
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    v16 = qword_1005AAA30;
    v51 = qword_1005AAA30;
    if (!qword_1005AAA30)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_100293630;
      v58 = &unk_10051E318;
      v59 = &v48;
      v17 = sub_10029337C();
      v18 = dlsym(v17, "FLNotificationOptionNotificationCenter");
      *(v59[1] + 24) = v18;
      qword_1005AAA30 = *(v59[1] + 24);
      v16 = v49[3];
    }

    _Block_object_dispose(&v48, 8);
    if (!v16)
    {
LABEL_38:
      dlerror();
      abort_report_np();
      __break(1u);
    }

    v56 = *v16;
    v19 = v56;
    v20 = [NSArray arrayWithObjects:&v55 count:2];

    v21 = [NSSet setWithArray:v20];
    [v11 setOptions:v21];

    [v11 setFirstNotificationDelay:0.0];
    [v41 setNotification:v11];

    v42 = objc_opt_new();
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v22 = v40;
    v23 = [v22 countByEnumeratingWithState:&v44 objects:v54 count:16];
    if (v23)
    {
      v24 = *v45;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v45 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v44 + 1) + 8 * i);
          v27 = objc_opt_new();
          v28 = [v22 objectForKeyedSubscript:v26];
          if (v28)
          {
            v29 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v26 longLongValue]);
            [v27 setObject:v29 forKeyedSubscript:@"ASDAccountID"];
            [v27 setObject:v28 forKeyedSubscript:@"ASDAppleID"];
            v30 = [NSString stringWithFormat:@"%@", v28];
            v31 = [sub_1002918B0() actionWithLabel:v30 url:0];
            [v31 setIdentifier:@"auth"];
            [v31 setUserInfo:v27];
            [v42 addObject:v31];
          }

          else
          {
            v29 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              *&buf[4] = v26;
              _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Could not find an appleID for accountID: %{public}@ ", buf, 0xCu);
            }
          }
        }

        v23 = [v22 countByEnumeratingWithState:&v44 objects:v54 count:16];
      }

      while (v23);
    }

    if ([v42 count])
    {
      v32 = [sub_1002918B0() actionWithLabel:@"Clear" url:0];
      [v32 setIdentifier:@"clear"];
      v52 = @"ASDRestore_FOLLOWUP_ID";
      v53 = @"ASD_RESTORES_FOLLOWUP";
      v33 = [NSDictionary dictionaryWithObjects:&v53 forKeys:&v52 count:1];
      [v32 setUserInfo:v33];

      [v42 addObject:v32];
      [v41 setActions:v42];
      v34 = *(v39 + 56);
      v43 = 0;
      v35 = v34;
      [v35 postFollowUpItem:v41 error:&v43];
      v36 = v43;

      v37 = ASDLogHandleForCategory();
      v38 = v37;
      if (v36)
      {
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = v22;
          *&buf[12] = 2114;
          *&buf[14] = v36;
          _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "Error posting followup for actionMap: %{public}@ error: %{public}@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = v22;
        _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "Posted followup for actionMap: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v32 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = v22;
        _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Error posting followup for actionMap: %{public}@ no actions created", buf, 0xCu);
      }
    }

    v3 = v40;
  }
}

void sub_10028EC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10028EC60(uint64_t a1)
{
  if (a1)
  {
    if (!*(a1 + 56))
    {
      v2 = [objc_alloc(sub_10028E298()) initWithClientIdentifier:@"com.apple.AppleMediaServices"];
      v3 = *(a1 + 56);
      *(a1 + 56) = v2;
    }

    sub_1003D55B0(AppDefaultsManager, 0);
    v4 = *(a1 + 56);
    v8 = 0;
    v5 = v4;
    [v5 clearPendingFollowUpItemsWithUniqueIdentifiers:&off_1005493C8 error:&v8];
    v6 = v8;

    if (v6)
    {
      v7 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v10 = v6;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Error posting follow up for accountID: %{public}@", buf, 0xCu);
      }
    }
  }
}

void sub_10028EDA8(void *a1, int a2)
{
  v3 = a1;
  v4 = sub_100408EB0(v3);
  v16[1] = 0;
  v5 = sub_1003A07F4(v3);
  v6 = 0;
  v7 = v6;
  if (v5)
  {
    if (a2)
    {
      v5[7] = 1;
    }

    v16[0] = v6;
    v8 = sub_1003A040C(v5, v16);
    v9 = v16[0];

    if (v8)
    {
      if (a2)
      {
        v15 = v9;
        sub_1002497A4(v8, &v15);
        v10 = v15;

        v9 = v10;
      }

      v11 = [v8 uniqueIdentifier];
      sub_10023E000(v3, v11, @"coordinator_id");

      v12 = ASDLogHandleForCategory();
      v13 = v12;
      if (!v9)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v18 = v4;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Added initial progress", buf, 0xCu);
        }

        v9 = 0;
        goto LABEL_18;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v18 = v4;
        v19 = 2114;
        v20 = v9;
        v14 = "[%@] Error adding initial progress. Error: %{public}@";
LABEL_14:
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v14, buf, 0x16u);
      }
    }

    else
    {
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v18 = v4;
        v19 = 2114;
        v20 = v9;
        v14 = "[%@] Failed to create coordinator with error: %{public}@";
        goto LABEL_14;
      }
    }

LABEL_18:

    v7 = v9;
    goto LABEL_19;
  }

  v8 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v18 = v4;
    v19 = 2114;
    v20 = v7;
    _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Failed to create coordinator builder with error: %{public}@", buf, 0x16u);
  }

LABEL_19:
}

id sub_10028F048(void *a1, void *a2)
{
  v3 = a2;
  [a1 underlyingErrors];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v18 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = v5;
  v7 = *v16;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v16 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v15 + 1) + 8 * i);
      if (ASDErrorIsEqual())
      {
        v10 = v9;
      }

      else
      {
        v11 = [v9 underlyingErrors];
        v12 = [v11 count];

        if (!v12)
        {
          continue;
        }

        v10 = sub_10028F048(v9, v3);
      }

      v13 = v10;
      if (v10)
      {
        goto LABEL_14;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  }

  while (v6);
LABEL_13:
  v13 = 0;
LABEL_14:

  return v13;
}

void sub_10028F1C8(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v12 = a1[4];
      *buf = 138412546;
      v18 = v12;
      v19 = 2114;
      v20 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Wasn't able to display restore must purchase dialog: %{public}@", buf, 0x16u);
    }

    goto LABEL_4;
  }

  if (a1[5])
  {
    v8 = [v5 selectedActionIdentifier];
    v9 = [a1[5] identifier];
    v10 = [v8 isEqualToString:v9];

    if (v10)
    {
      if ([a1[6] longLongValue] < 1)
      {
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10028F4B4;
        v13[3] = &unk_10051B5C0;
        v14 = a1[4];
        sub_1004074EC(AppStore, v13);
        v7 = v14;
      }

      else
      {
        v11 = a1[6];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_10028F3E0;
        v15[3] = &unk_10051B5C0;
        v16 = a1[4];
        sub_1004073F4(AppStore, v11, v15);
        v7 = v16;
      }

LABEL_4:
    }
  }
}

void sub_10028F3E0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Encountered error opening store. Error: %{public}@", &v6, 0x16u);
    }
  }
}

void sub_10028F4B4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 138412546;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%@] Encountered error opening store. Error: %{public}@", &v6, 0x16u);
    }
  }
}

void sub_10028F588(void *a1)
{
  v1 = a1;
  v2 = ASDErrorWithTitleAndMessage();
  v3 = +[NSMutableArray array];
  v4 = sub_1003C27BC();
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10028F6D0;
  v8[3] = &unk_10051F040;
  v5 = v1;
  v9 = v5;
  v6 = v2;
  v10 = v6;
  v7 = v3;
  v11 = v7;
  [v4 modifyUsingTransaction:v8];

  if ([v7 count])
  {
    sub_10028C78C(RestoreManager, v7, @"Distributor needs to be installed");
  }
}

uint64_t sub_10028F6D0(void **a1, void *a2)
{
  v3 = [a2 connection];
  v4 = sub_1002D3F5C(AppInstallEntity, v3, a1[4]);

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10028F7B4;
  v6[3] = &unk_10051FBE0;
  v7 = a1[5];
  v8 = a1[6];
  [v4 enumerateMemoryEntitiesUsingBlock:v6];

  return 1;
}

void sub_10028F7B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  sub_100398948(v4, v3);
  [*(a1 + 40) addObject:v4];
}

uint64_t sub_10028F810(uint64_t a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = sub_10028A788(a1);
  v12 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 2048;
    *&buf[14] = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@] Found %ld app(s) needing to install a distributor", buf, 0x16u);
  }

  if (v11 || a4)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v61 = 0;
    if (v10)
    {
      v14 = [ApplicationProxy proxyForBundleID:v10];
      v40 = sub_1003D266C(v14);
      v41 = v14;
      if (v14)
      {
        [v40 length];
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v40 = 0;
      v41 = 0;
    }

    v15 = ASDLocalizedString();
    v43 = [NSString localizedStringWithFormat:v15];

    v16 = ASDLocalizedString();
    v17 = [AMSDialogRequest requestWithTitle:v16 message:v43];

    v18 = [v9 description];
    [v17 setLogKey:v18];

    v19 = ASDLocalizedString();
    v20 = [AMSDialogAction actionWithTitle:v19 style:2];

    v21 = ASDLocalizedString();
    v22 = [AMSDialogAction actionWithTitle:v21];

    v59[0] = v20;
    v59[1] = v22;
    v23 = [NSArray arrayWithObjects:v59 count:2];
    [v17 setButtonActions:v23];

    v24 = dispatch_semaphore_create(0);
    v42 = objc_alloc_init(InteractiveRequestPresenter);
    v49[0] = _NSConcreteStackBlock;
    v49[1] = 3221225472;
    v49[2] = sub_10028FEC0;
    v49[3] = &unk_10051FC08;
    v25 = v9;
    v50 = v25;
    v26 = v22;
    v51 = v26;
    v54 = buf;
    v39 = v20;
    v52 = v39;
    v27 = v24;
    v53 = v27;
    sub_100312B68(v42, v17, 1, v49);
    dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
    if (*(*&buf[8] + 24) == 1)
    {
      if (v10)
      {
        v28 = sub_1003DBAB8(AppInstallPredicates, v10);
        v29 = sub_100290128(-1, v28);
        if ([v29 count])
        {
          v30 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v38 = [v29 array];
            v31 = [v38 componentsJoinedByString:{@", "}];
            *v57 = 138412546;
            *&v57[4] = v25;
            *&v57[12] = 2114;
            *&v57[14] = v31;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%@] User selected to install distributor [%{public}@]", v57, 0x16u);
          }
        }
      }

      v32 = [[ASDSystemAppMetadata alloc] initWithBundleID:@"com.apple.AppStore"];
      [v32 setUserInitiated:1];
      *v57 = 0;
      *&v57[8] = v57;
      *&v57[16] = 0x2020000000;
      v58 = 0;
      v33 = dispatch_semaphore_create(0);
      v34 = sub_1001F6394();
      v56 = v32;
      v35 = [NSArray arrayWithObjects:&v56 count:1];
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_10029022C;
      v44[3] = &unk_10051FC30;
      v45 = v25;
      v46 = v10;
      v48 = v57;
      v36 = v33;
      v47 = v36;
      [v34 installSystemApps:v35 onPairedDevice:0 withReplyHandler:v44];

      dispatch_semaphore_wait(v36, 0xFFFFFFFFFFFFFFFFLL);
      v55 = *(*&v57[8] + 24);

      _Block_object_dispose(v57, 8);
    }

    else
    {
      if (a5)
      {
        *a5 = ASDErrorWithTitleAndMessage();
      }

      v55 = 0;
    }

    _Block_object_dispose(buf, 8);
    v13 = v55;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

void sub_10028FEC0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    if (*(a1 + 40) && ([v5 selectedActionIdentifier], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 40), "identifier"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqualToString:", v10), v10, v9, v11))
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
      v7 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v12 = *(a1 + 32);
      v19 = 138412290;
      v20 = v12;
      v13 = "[%@] User selected to install distributor";
    }

    else if (*(a1 + 48) && ([v5 selectedActionIdentifier], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(a1 + 48), "identifier"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "isEqualToString:", v15), v15, v14, v16))
    {
      v7 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v17 = *(a1 + 32);
      v19 = 138412290;
      v20 = v17;
      v13 = "[%@] User selected to not install distributor";
    }

    else
    {
      v7 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v18 = *(a1 + 32);
      v19 = 138412290;
      v20 = v18;
      v13 = "[%@] No user selection was made";
    }

    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v13, &v19, 0xCu);
    goto LABEL_15;
  }

  v7 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 32);
    v19 = 138412546;
    v20 = v8;
    v21 = 2114;
    v22 = v6;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@] Wasn't able to display restore distributor dialog: %{public}@", &v19, 0x16u);
  }

LABEL_15:

  dispatch_semaphore_signal(*(a1 + 56));
}

id sub_100290128(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSMutableOrderedSet orderedSet];
  v5 = sub_1003C27BC();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1002903A8;
  v10[3] = &unk_10051FC58;
  v6 = v3;
  v12 = v4;
  v13 = a1;
  v11 = v6;
  v7 = v4;
  [v5 modifyUsingTransaction:v10];

  v8 = [v7 copy];

  return v8;
}

void sub_10029022C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = ASDLogHandleForCategory();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v14 = 138412802;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Promoting distributor app %{public}@ failed: %{public}@", &v14, 0x20u);
    }
  }

  else
  {
    if (v8)
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = [v5 firstObject];
      v14 = 138412802;
      v15 = v11;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Promoting distributor app %{public}@ (%{public}@)", &v14, 0x20u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

uint64_t sub_1002903A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 connection];
  v5 = sub_1002D3F5C(AppInstallEntity, v4, *(a1 + 32));

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100290498;
  v10[3] = &unk_10051D818;
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v11 = v3;
  v13 = v6;
  v12 = v7;
  v8 = v3;
  [v5 enumeratePersistentIDsUsingBlock:v10];

  return 1;
}

void sub_100290498(uint64_t a1, uint64_t a2)
{
  v4 = [AppInstallEntity alloc];
  v5 = [*(a1 + 32) connection];
  v8 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v6 = [NSNumber numberWithInteger:*(a1 + 48)];
  [(SQLiteEntity *)v8 setValue:v6 forProperty:@"bootstrapped"];

  v7 = sub_100340328(v8, @"bundle_id");
  if (v7)
  {
    [*(a1 + 40) addObject:v7];
  }
}

void sub_100290574(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_type" equalToValue:&off_100547890];
  v15[0] = v4;
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_type" equalToValue:&off_100547878];
  v15[1] = v5;
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_type" equalToValue:&off_1005478A8];
  v15[2] = v6;
  v7 = [NSArray arrayWithObjects:v15 count:3];
  v8 = [SQLiteCompoundPredicate predicateMatchingAnyPredicates:v7];

  v9 = [v3 connection];
  v10 = sub_1002D3F5C(AppInstallEntity, v9, v8);

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100290754;
  v12[3] = &unk_10051CA10;
  v13 = v3;
  v14 = *(a1 + 32);
  v11 = v3;
  [v10 enumeratePersistentIDsUsingBlock:v12];
}

void sub_100290754(uint64_t a1, uint64_t a2)
{
  v4 = [AppInstallEntity alloc];
  v5 = [*(a1 + 32) connection];
  v27 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v6 = [(SQLiteEntity *)v27 valueForProperty:@"restore_state"];
  v7 = [v6 integerValue];

  v8 = sub_1003402E8(v27, @"bootstrapped");
  v9 = [(SQLiteEntity *)v27 valueForProperty:@"order_index"];
  v10 = [(SQLiteEntity *)v27 valueForProperty:@"phase"];
  v11 = [(SQLiteEntity *)v27 valueForProperty:@"coordinator_id"];
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &off_1005478C0;
  }

  v13 = [[_TtC9appstored6LogKey alloc] initWithAppInstallEntity:v27];
  v14 = [*(a1 + 40) objectForKeyedSubscript:v12];
  if (!v14)
  {
    v14 = objc_opt_new();
    [*(a1 + 40) setObject:v14 forKeyedSubscript:v12];
  }

  v15 = sub_100340244(v27, @"failure_error");
  if (v9)
  {
    v16 = [NSString stringWithFormat:@"order: %@ ", v9];
  }

  else
  {
    v16 = &stru_100529300;
  }

  v26 = v14;
  v17 = v16;
  if (v15)
  {
    [v15 domain];
    v24 = v12;
    v25 = v9;
    v19 = v18 = v11;
    v20 = v7;
    v21 = [v15 code];
    v22 = [v15 localizedDescription];
    v23 = [NSString stringWithFormat:@"[%@] cid: %@ restoreState: %ld bootstrapPhase: %ld %@error: %@ %ld %@", v13, v18, v20, v8, v17, v19, v21, v22];

    v11 = v18;
    v12 = v24;
    v9 = v25;
  }

  else
  {
    v23 = [NSString stringWithFormat:@"[%@] cid: %@ restoreState: %ld bootstrapPhase: %ld %@", v13, v11, v7, v8, v16];
  }

  [v26 addObject:v23];
}

int64_t sub_1002909EC(id a1, NSString *a2, NSString *a3)
{
  v4 = a3;
  v5 = [(NSString *)a2 integerValue];
  v6 = [(NSString *)v4 integerValue];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return v5 > v6;
  }
}

void sub_100290AB8(uint64_t a1)
{
  v2 = sub_100006B78();
  v3 = sub_10028D40C(*(a1 + 32));
  if (sub_10023D5E0(v2) && sub_10023CFD0(v2) && (sub_100227468(), v4 = objc_claimAutoreleasedReturnValue(), v5 = v3 & [v4 isConnected], v4, v5 == 1))
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Device state changed and ready to restore", v22, 2u);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = v7[6];
    }

    else
    {
      v8 = 0;
    }

    [v7 _bootstrapWhenReadyWithInfo:v8];
    v9 = *(a1 + 32);
    if (v9)
    {
      if (*(v9 + 44) != 1 || (+[NSNotificationCenter defaultCenter](NSNotificationCenter, "defaultCenter"), v10 = objc_claimAutoreleasedReturnValue(), v11 = *(a1 + 32), sub_100006B78(), v12 = objc_claimAutoreleasedReturnValue(), [v10 removeObserver:v11 name:@"DeviceStateDidChangeNotification" object:v12], v12, v10, (v9 = *(a1 + 32)) != 0))
      {
        if (*(v9 + 45) == 1)
        {
          v13 = +[NSNotificationCenter defaultCenter];
          v14 = *(a1 + 32);
          v15 = sub_100227468();
          [v13 removeObserver:v14 name:@"NetworkStateDidChangeNotification" object:v15];

          v9 = *(a1 + 32);
        }
      }
    }

    sub_100232B90(v9, 0);
    v16 = *(a1 + 32);
    if (v16)
    {
      *(v16 + 44) = 0;
      v17 = *(a1 + 32);
      if (v17)
      {
        *(v17 + 45) = 0;
      }
    }
  }

  else
  {
    v18 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = sub_10023D5E0(v2);
      v20 = sub_10023CFD0(v2);
      v21 = sub_100227468();
      v22[0] = 67109888;
      v22[1] = v19;
      v23 = 1024;
      v24 = v20;
      v25 = 1024;
      v26 = [v21 isConnected];
      v27 = 1024;
      v28 = v3;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Device state changed setup not ready for restore. Setup complete: %d migrator complete: %d network connected: %d bag loaded: %d", v22, 0x1Au);
    }
  }
}

uint64_t sub_100290D70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v11 = 0;
  if (a2)
  {
    sub_100207374(a2, v3, 0, 1, &v11, &v16);
    v4 = v11;
  }

  else
  {
    v4 = 0;
    v16 = 0u;
    v17 = 0u;
  }

  v5 = v4;
  v6 = *(*(a1 + 40) + 8);
  v7 = v17;
  *(v6 + 32) = v16;
  *(v6 + 48) = v7;
  if (v5)
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = sub_100408EB0(*(a1 + 32));
      *buf = 138412546;
      v13 = v10;
      v14 = 2114;
      v15 = v5;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Restore import failed with error: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    [*(a1 + 32) setDatabaseID:*(*(*(a1 + 40) + 8) + 32)];
  }

  return 1;
}

uint64_t sub_100290EB8(uint64_t a1, void *a2, void *a3, char a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = [RestoreBatchTask alloc];
  v31 = v9;
  v12 = [NSArray arrayWithObjects:&v31 count:1];
  v13 = sub_10027157C(v11, v12);

  v14 = sub_10023E0F8(v9, @"restore_type");
  v15 = [v14 integerValue];

  if (v15 == 3)
  {
    v17 = 1;
    if (!v13)
    {
      goto LABEL_6;
    }

    v13[58] = 1;
    goto LABEL_5;
  }

  if (v13)
  {
LABEL_5:
    objc_setProperty_atomic_copy(v13, v16, v10, 42);
    v17 = 0;
    v13[59] = a4;
    goto LABEL_6;
  }

  v17 = 1;
LABEL_6:
  v18 = *(a1 + 16);
  v30 = v13;
  v19 = [NSArray arrayWithObjects:&v30 count:1];
  if (v18)
  {
    [*(v18 + 8) addOperations:v19 waitUntilFinished:1];
  }

  sub_10029162C(v13, 0, 1);
  if (v17)
  {
    Property = 0;
  }

  else
  {
    Property = objc_getProperty(v13, v20, 32, 1);
  }

  v22 = Property;

  if (a5 && v22)
  {
    if (v17)
    {
      v24 = 0;
    }

    else
    {
      v24 = objc_getProperty(v13, v23, 32, 1);
    }

    v25 = 0;
    *a5 = v24;
  }

  else
  {
    v26 = sub_10039889C(v9);
    if (a5)
    {
      v27 = v26 == 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = !v27;
    if (!v27)
    {
      v26 = v26;
      *a5 = v26;
    }

    v25 = v28 ^ 1u;
  }

  return v25;
}

BOOL sub_1002910E4(void *a1)
{
  v1 = a1;
  v2 = v1 && ((ASDErrorIsEqual() & 1) != 0 || (ASDErrorIsEqual() & 1) != 0 || (ASDErrorIsEqual() & 1) != 0);

  return v2;
}

uint64_t sub_100291170(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v14 = 0u;
  v15 = 0u;
  if (v3)
  {
    sub_100207374(v3, *(a1 + 32), 0, 1, 0, &v14);
    if (*(a1 + 48) == 1 && *(&v15 + 1) == 1)
    {
      v6 = [AppInstallEntity alloc];
      v7 = v14;
      v8 = [v4 connection];
      v9 = [(SQLiteEntity *)v6 initWithPersistentID:v7 onConnection:v8];

      v10 = sub_100396F9C(v9);
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }

  return 1;
}

void sub_10029127C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = sub_1003C27BC();
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100291354;
  v5[3] = &unk_10051FC58;
  v8 = *(a1 + 48);
  v6 = WeakRetained;
  v7 = *(a1 + 32);
  v4 = WeakRetained;
  [v3 modifyUsingTransaction:v5];
}

uint64_t sub_100291354(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AppInstallEntity alloc];
  v5 = *(a1 + 48);
  v6 = [v3 connection];
  v7 = [(SQLiteEntity *)v4 initWithPersistentID:v5 onConnection:v6];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1002914A0;
  v13[3] = &unk_10051FD10;
  v14 = *(a1 + 32);
  sub_10029591C(v7, v13);
  v9 = [*(a1 + 32) accessWasUnblocked];
  if (v3)
  {
    Property = objc_getProperty(v3, v8, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v11 = Property;

  if (v9)
  {
    if (v11)
    {
      v11[17] |= 0x1000uLL;
    }
  }

  else
  {
    sub_100256A14(v11, *(a1 + 40));
  }

  return 1;
}

void sub_1002914A0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  sub_1003B6764(v4, [v3 constrainedResult]);
  sub_1003B6820(v4, [*(a1 + 32) expensiveResult]);
  sub_1003B66A8(v4, [*(a1 + 32) interfaceMask]);
}

BOOL sub_100291524(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_100340244(a2, @"failure_error");
  v3 = v2;
  if (v2)
  {
    v4 = sub_1002910E4(v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_100291588(uint64_t a1, void *a2)
{
  v3 = [a2 connection];
  v4 = sub_1003DAF34();
  v5 = sub_1002D3F5C(AppInstallEntity, v3, v4);

  *(*(*(a1 + 32) + 8) + 24) = [v5 countOfEntities];
}

void sub_10029162C(void *a1, void *a2, char a3)
{
  v5 = a1;
  v6 = a2;
  v7 = sub_1003C27BC();
  v34 = _NSConcreteStackBlock;
  v35 = 3221225472;
  v36 = sub_100292248;
  v37 = &unk_10051FDD8;
  v8 = v5;
  v38 = v8;
  v39 = a3;
  [v7 modifyUsingTransaction:&v34];

  if (v8)
  {
    Property = objc_getProperty(v8, v9, 82, 1);
  }

  else
  {
    Property = 0;
  }

  v11 = Property;
  v12 = [v11 count];

  if (v6 && v12)
  {
    v15 = objc_getProperty(v6, v13, 48, 1);
    if (v8)
    {
      v16 = objc_getProperty(v8, v14, 82, 1);
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
    [v15 addObjectsFromArray:v17];
  }

  if (v8)
  {
    v18 = objc_getProperty(v8, v13, 66, 1);
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  v20 = [v19 count];

  if (v6 && v20)
  {
    v23 = objc_getProperty(v6, v21, 32, 1);
    if (v8)
    {
      v24 = objc_getProperty(v8, v22, 66, 1);
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
    [v23 addObjectsFromArray:v25];
  }

  if (v8)
  {
    v26 = objc_getProperty(v8, v21, 74, 1);
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;
  v28 = [v27 count];

  if (v6 && v28)
  {
    v31 = objc_getProperty(v6, v29, 40, 1);
    if (v8)
    {
      v32 = objc_getProperty(v8, v30, 74, 1);
    }

    else
    {
      v32 = 0;
    }

    v33 = v32;
    [v31 addObjectsFromArray:v33];
  }
}

id sub_1002918B0()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_1005AAA00;
  v7 = qword_1005AAA00;
  if (!qword_1005AAA00)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100293680;
    v3[3] = &unk_10051E318;
    v3[4] = &v4;
    sub_100293680(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100291978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100291990(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 connection];
  v5 = sub_1003DB8C8();
  v6 = sub_1002D3F5C(AppInstallEntity, v4, v5);

  v15[0] = @"account_id";
  v15[1] = @"downloader_id";
  v15[2] = @"restore_state";
  v7 = [NSArray arrayWithObjects:v15 count:3];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100291B08;
  v11[3] = &unk_10051FD60;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = v3;
  v13 = v8;
  v14 = v9;
  v10 = v3;
  [v6 enumeratePersistentIDsAndProperties:v7 usingBlock:v11];
}

void sub_100291B08(uint64_t a1, uint64_t a2)
{
  v4 = [AppInstallEntity alloc];
  v5 = [*(a1 + 32) connection];
  v6 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v7 = [(SQLiteEntity *)v6 valueForProperty:@"restore_state"];
  v8 = [v7 integerValue];

  if (v8 == 1 && sub_100291524(*(a1 + 40), v6))
  {
    v9 = [(SQLiteEntity *)v6 valueForProperty:@"apple_id"];
    v10 = [(SQLiteEntity *)v6 valueForProperty:@"account_id"];
    v11 = [(SQLiteEntity *)v6 valueForProperty:@"downloader_id"];
    v12 = v11;
    if (v9)
    {
      if (v11 && [v11 longLongValue] >= 1)
      {
        v13 = *(a1 + 48);
        v14 = v12;
LABEL_10:
        v15 = [v14 stringValue];
        [v13 setObject:v9 forKeyedSubscript:v15];

LABEL_17:
        goto LABEL_18;
      }

      if (v10 && [v10 longLongValue] >= 1)
      {
        v13 = *(a1 + 48);
        v14 = v10;
        goto LABEL_10;
      }

      v16 = [[_TtC9appstored6LogKey alloc] initWithAppInstallEntity:v6];
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v16;
        v18 = "[%@] Couldn't find a downloaderID or purchaserID";
        goto LABEL_15;
      }
    }

    else
    {
      v16 = [[_TtC9appstored6LogKey alloc] initWithAppInstallEntity:v6];
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v16;
        v18 = "[%@] Couldn't find an appleID";
LABEL_15:
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v18, &v19, 0xCu);
      }
    }

    goto LABEL_17;
  }

LABEL_18:
}

void sub_100291D68(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v25 = v7;
    v26 = 2114;
    v27 = v9;
    v28 = 2114;
    v29 = v8;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failing all coordinators for appleID: %{public}@ error: %{public}@ reason: %{public}@", buf, 0x20u);
  }

  v11 = +[NSMutableArray array];
  v12 = sub_1003C27BC();
  v16 = _NSConcreteStackBlock;
  v17 = 3221225472;
  v18 = sub_100291F40;
  v19 = &unk_10051FF00;
  v13 = v7;
  v20 = v13;
  v21 = a1;
  v14 = v9;
  v22 = v14;
  v15 = v11;
  v23 = v15;
  [v12 readUsingSession:&v16];

  if ([v15 count])
  {
    sub_10028C78C(RestoreManager, v15, v8);
  }
}

void sub_100291F40(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_type" equalToValue:&off_100547878];
  v19[0] = v4;
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_state" equalToValue:&off_100547878];
  v19[1] = v5;
  v6 = [SQLiteComparisonPredicate predicateWithProperty:@"apple_id" equalToValue:*(a1 + 32)];
  v19[2] = v6;
  v7 = [NSArray arrayWithObjects:v19 count:3];
  v8 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  v9 = [v3 connection];
  v10 = sub_1002D3F5C(AppInstallEntity, v9, v8);

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100292134;
  v14[3] = &unk_10051FDB0;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v15 = v3;
  v16 = v11;
  v17 = v12;
  v18 = *(a1 + 56);
  v13 = v3;
  [v10 enumeratePersistentIDsUsingBlock:v14];
}

void sub_100292134(uint64_t a1, uint64_t a2)
{
  v4 = [AppInstallEntity alloc];
  v5 = [*(a1 + 32) connection];
  v12 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v6 = [(SQLiteEntity *)v12 valueForProperty:@"restore_state"];
  v7 = [v6 integerValue];

  if (v7 == 1 && sub_100291524(*(a1 + 40), v12))
  {
    v8 = [RestoreAppInstall alloc];
    v9 = +[RestoreAppInstall defaultProperties];
    v10 = [(SQLiteMemoryEntity *)v8 initWithDatabaseEntity:v12 properties:v9];

    v11 = *(a1 + 48);
    if (v11)
    {
      sub_100398948(v10, v11);
    }

    [*(a1 + 56) addObject:v10];
  }
}

uint64_t sub_100292248(uint64_t a1, void *a2)
{
  v4 = a2;
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v3, 82, 1);
  }

  v6 = Property;
  v7 = [v6 count];

  if (v7)
  {
    v9 = *(a1 + 32);
    if (v9)
    {
      v9 = objc_getProperty(v9, v8, 82, 1);
    }

    v10 = v9;
    v11 = sub_100207ABC(v4, v10);
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    v12 = *(a1 + 32);
    if (v12)
    {
      v12 = objc_getProperty(v12, v8, 74, 1);
    }

    v13 = v12;
    v14 = [v13 count];

    if (v14)
    {
      v16 = *(a1 + 32);
      if (v16)
      {
        v16 = objc_getProperty(v16, v15, 74, 1);
      }

      v17 = v16;
      v18 = sub_100207ABC(v4, v17);
    }

    v19 = *(a1 + 32);
    if (v19)
    {
      v19 = objc_getProperty(v19, v15, 66, 1);
    }

    v20 = v19;
    v21 = [v20 count];

    if (v21)
    {
      v23 = *(a1 + 32);
      if (v23)
      {
        v23 = objc_getProperty(v23, v22, 66, 1);
      }

      v24 = v23;
      v25 = sub_100207ABC(v4, v24);
    }
  }

  return 1;
}

uint64_t sub_1002923BC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 connection];
  v5 = sub_1003DB8C8();
  v6 = sub_1002D3F5C(AppInstallEntity, v4, v5);

  v7 = +[RestoreAppInstall defaultProperties];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100292500;
  v12[3] = &unk_10051FE00;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v13 = v3;
  v14 = v8;
  v15 = v9;
  v16 = *(a1 + 48);
  v17 = *(a1 + 56);
  v10 = v3;
  [v6 enumeratePersistentIDsAndProperties:v7 usingBlock:v12];

  return 1;
}

void sub_100292500(uint64_t a1, uint64_t a2)
{
  v4 = [AppInstallEntity alloc];
  v5 = [*(a1 + 32) connection];
  v6 = [(SQLiteEntity *)v4 initWithPersistentID:a2 onConnection:v5];

  v7 = [(SQLiteEntity *)v6 valueForProperty:@"restore_state"];
  v8 = [v7 integerValue];

  if (v8 && sub_100291524(*(a1 + 40), v6))
  {
    v9 = [(SQLiteEntity *)v6 valueForProperty:@"apple_id"];
    v10 = [(SQLiteEntity *)v6 valueForProperty:@"bundle_id"];
    v11 = [(SQLiteEntity *)v6 valueForProperty:@"account_id"];
    v12 = [(SQLiteEntity *)v6 valueForProperty:@"downloader_id"];
    if ((v9 && *(a1 + 48) && ([v9 isEqualToString:?] & 1) != 0 || (sub_100292850(*(a1 + 40), *(a1 + 56), v11) & 1) != 0 || sub_100292850(*(a1 + 40), *(a1 + 56), v12)) && v10)
    {
      v18 = [[_TtC9appstored6LogKey alloc] initWithAppInstallEntity:v6];
      v13 = [RestoreAppInstall alloc];
      v14 = +[RestoreAppInstall defaultProperties];
      v15 = [(SQLiteMemoryEntity *)v13 initWithDatabaseEntity:v6 properties:v14];

      [*(*(*(a1 + 64) + 8) + 40) addObject:v15];
      v16 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v10 allowPlaceholder:1 error:0];
      if ([v16 installType] == 7)
      {
        sub_10023E000(v15, &off_100547890, @"restore_type");
        [(SQLiteEntity *)v6 setValue:&off_100547890 forProperty:@"restore_type"];
        v17 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v20 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@] Making a promoting coordinator", buf, 0xCu);
        }
      }

      sub_10023E000(v15, &off_1005478D8, @"phase");
      sub_10023E000(v15, &off_100547860, @"restore_state");
      [(SQLiteEntity *)v6 setValue:&off_1005478D8 forProperty:@"phase"];
      [(SQLiteEntity *)v6 setValue:&off_100547860 forProperty:@"restore_state"];
    }

    else
    {
      [*(*(*(a1 + 72) + 8) + 40) addObject:v10];
    }
  }
}

id sub_100292850(id a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    a1 = 0;
    if (v5)
    {
      if (v6)
      {
        if ([v5 integerValue] && objc_msgSend(v7, "integerValue"))
        {
          a1 = [v5 isEqualToNumber:v7];
        }

        else
        {
          a1 = 0;
        }
      }
    }
  }

  return a1;
}

uint64_t sub_1002928D8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 connection];
  v5 = [SQLiteComparisonPredicate predicateWithProperty:@"restore_type" equalToValue:&off_100547878];
  v6 = sub_1002D3F5C(AppInstallEntity, v4, v5);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100292AB0;
  v15[3] = &unk_10051FE70;
  v7 = v4;
  v18 = *(a1 + 40);
  v8 = *(a1 + 32);
  v16 = v7;
  v17 = v8;
  [v6 enumeratePersistentIDsUsingBlock:v15];
  v9 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(*(*(a1 + 32) + 8) + 24);
    *buf = 134217984;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "(RestoreManager) Updated cellular access for %lu restore(s)", buf, 0xCu);
  }

  if (v3)
  {
    Property = objc_getProperty(v3, v11, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v13 = Property;

  if (v13)
  {
    v13[17] |= 0x1000uLL;
  }

  return 1;
}

void sub_100292AB0(uint64_t a1, uint64_t a2)
{
  v3 = [(SQLiteEntity *)[AppInstallEntity alloc] initWithPersistentID:a2 onConnection:*(a1 + 32)];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100292B64;
  v4[3] = &unk_10051FE48;
  v5 = *(a1 + 48);
  sub_10029591C(v3, v4);
  ++*(*(*(a1 + 40) + 8) + 24);
}

void sub_100292B64(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = sub_1003B67D4(v5);
  if (v3 <= 4 && ((1 << v3) & 0x19) != 0)
  {
    sub_1003B6820(v5, *(a1 + 32));
  }

  sub_1003B66A8(v5, *(a1 + 40));
}

void *sub_100292CAC(void *result)
{
  if (result)
  {
    v1 = result[4];
    v2[0] = _NSConcreteStackBlock;
    v2[1] = 3221225472;
    v2[2] = sub_100292D28;
    v2[3] = &unk_10051FEC0;
    v2[4] = result;
    return [v1 fetchBackgroundRestoreCellularAccessWithCompletion:v2];
  }

  return result;
}

void sub_100292D28(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100292DF4;
  block[3] = &unk_10051AEE8;
  v12 = v6;
  v13 = v7;
  v14 = v5;
  v9 = v5;
  v10 = v6;
  dispatch_async(v8, block);
}

void sub_100292DF4(void *a1)
{
  if (!a1[4])
  {
    v3 = a1[6];
    v4 = *(a1[5] + 24);
    if (v4)
    {
      if (v3)
      {
        v5 = [v4 isEqual:a1[6]];
        v3 = a1[6];
        if (v5)
        {
          goto LABEL_11;
        }
      }
    }

    else if (!v3)
    {
LABEL_11:
      objc_storeStrong((a1[5] + 24), v3);
      return;
    }

    sub_100289164(RestoreManager, v3);
    v3 = a1[6];
    goto LABEL_11;
  }

  v2 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v6 = a1[4];
    v7 = 138543362;
    v8 = v6;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "(RestoreManager) The restore cellular policy changed, but we couldn't fetch it: %{public}@", &v7, 0xCu);
  }
}

void sub_100293054(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = 138543618;
      v10 = v8;
      v11 = 2114;
      v12 = v6;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@] Error in dialog task: %{public}@", &v9, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

Class sub_10029330C(uint64_t a1)
{
  sub_10029337C();
  result = objc_getClass("FLFollowUpController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1005AA9F0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    return sub_10029337C();
  }

  return result;
}

uint64_t sub_10029337C()
{
  v3[0] = 0;
  if (!qword_1005AA9F8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10029348C;
    v3[4] = &unk_10051BD00;
    v3[5] = v3;
    v4 = off_10051FEE0;
    v5 = 0;
    qword_1005AA9F8 = _sl_dlopen();
    v1 = v3[0];
    v0 = qword_1005AA9F8;
    if (qword_1005AA9F8)
    {
      if (!v3[0])
      {
        return v0;
      }
    }

    else
    {
      v1 = abort_report_np();
    }

    free(v1);
    return v0;
  }

  return qword_1005AA9F8;
}

uint64_t sub_10029348C()
{
  result = _sl_dlopen();
  qword_1005AA9F8 = result;
  return result;
}

Class sub_100293500(uint64_t a1)
{
  sub_10029337C();
  result = objc_getClass("FLFollowUpItem");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1005AAA18 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return sub_100293570(v3);
  }

  return result;
}

Class sub_100293570(uint64_t a1)
{
  sub_10029337C();
  result = objc_getClass("FLFollowUpNotification");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1005AAA20 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return sub_1002935E0(v3);
  }

  return result;
}

void *sub_1002935E0(uint64_t a1)
{
  v2 = sub_10029337C();
  result = dlsym(v2, "FLNotificationOptionLockscreen");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1005AAA28 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_100293630(uint64_t a1)
{
  v2 = sub_10029337C();
  result = dlsym(v2, "FLNotificationOptionNotificationCenter");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1005AAA30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class sub_100293680(uint64_t a1)
{
  sub_10029337C();
  result = objc_getClass("FLFollowUpAction");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1005AAA00 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = abort_report_np();
    return +[(AppEventEntity *)v3];
  }

  return result;
}

id sub_10029387C()
{
  objc_opt_self();
  if (qword_1005AAA40 != -1)
  {
    dispatch_once(&qword_1005AAA40, &stru_100520048);
  }

  v0 = qword_1005AAA38;

  return v0;
}

void sub_1002938D4(id a1)
{
  v1 = objc_alloc_init(PowerMonitor);
  v2 = qword_1005AAA38;
  qword_1005AAA38 = v1;
}

void sub_100293A18(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    *(v1 + 16) = -1;
    objc_initWeak(&location, v1);
    v3 = *(v1 + 8);
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_100294138;
    v13 = &unk_10051DDD0;
    objc_copyWeak(&v14, &location);
    v4 = notify_register_dispatch("com.apple.system.powermanagement.poweradapter", (v1 + 16), v3, &v10);
    if (v4)
    {
      v5 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v17 = v4;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "[Power] Registration for power notification failed: %u", buf, 8u);
      }
    }

    else if (*(v1 + 16) != -1)
    {
      *(v1 + 25) = IOPSDrawingUnlimitedPower();
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    v6 = *(a1 + 32);
    if (v6)
    {
      *(v6 + 20) = -1;
      objc_initWeak(&location, v6);
      v7 = *(v6 + 8);
      v10 = _NSConcreteStackBlock;
      v11 = 3221225472;
      v12 = sub_100294198;
      v13 = &unk_10051DDD0;
      objc_copyWeak(&v14, &location);
      v8 = notify_register_dispatch("com.apple.system.lowpowermode", (v6 + 20), v7, &v10);
      if (v8)
      {
        v9 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v17 = v8;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "[Power] Registration for battery saver notification failed: %u", buf, 8u);
        }
      }

      else
      {
        sub_1002941E4(v6);
      }

      objc_destroyWeak(&v14);
      objc_destroyWeak(&location);
    }
  }
}

void sub_100293C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_100293D50(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = *(a1 + 8);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100293E08;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_100293E1C(uint64_t a1)
{
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x2020000000;
    v8 = 0;
    v1 = *(a1 + 8);
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100293ED4;
    v4[3] = &unk_10051B638;
    v4[4] = a1;
    v4[5] = &v5;
    dispatch_sync(v1, v4);
    v2 = *(v6 + 24);
    _Block_object_dispose(&v5, 8);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

void sub_100293ED4(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 25);
  if (os_variant_has_internal_content())
  {
    v2 = sub_1003D5260();
    if (v2)
    {
      v3 = v2;
      *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
      v2 = v3;
    }
  }
}

void sub_100293F68(uint64_t a1)
{
  v2 = ASDLogHandleForCategory();
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);

  if (v3)
  {
    if (*(a1 + 24) == 1)
    {
      v4 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        v5 = "[Power] Low power mode is enabled";
LABEL_12:
        _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, v5, buf, 2u);
      }
    }

    else
    {
      v6 = *(a1 + 25);
      v4 = ASDLogHandleForCategory();
      v7 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
      if (v6 == 1)
      {
        if (v7)
        {
          *buf = 0;
          v5 = "[Power] Power source is plugged in";
          goto LABEL_12;
        }
      }

      else if (v7)
      {
        *buf = 0;
        v5 = "[Power] Power source is battery";
        goto LABEL_12;
      }
    }
  }

  v8 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1002940D8;
  block[3] = &unk_10051AF98;
  block[4] = a1;
  dispatch_async(v8, block);
}

void sub_1002940D8(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  [v2 postNotificationName:@"PowerStateDidChangeNotification" object:*(a1 + 32)];
}

void sub_100294138(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    if (*(WeakRetained + 4) != -1)
    {
      *(WeakRetained + 25) = IOPSDrawingUnlimitedPower();
    }

    sub_100293F68(v2);
    WeakRetained = v2;
  }
}

void sub_100294198(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    sub_1002941E4(WeakRetained);
    sub_100293F68(v2);
    WeakRetained = v2;
  }
}

uint64_t sub_1002941E4(uint64_t a1)
{
  result = *(a1 + 20);
  if (result != -1)
  {
    state64 = 0;
    result = notify_get_state(result, &state64);
    if (result)
    {
      v3 = 1;
    }

    else
    {
      v3 = state64 == 0;
    }

    v4 = !v3;
    *(a1 + 24) = v4;
  }

  return result;
}

id sub_100294244(id result)
{
  if (result)
  {
    v1 = result;
    result = sub_1003402E8(result, @"update_type");
    if (result != 1)
    {
      return (sub_1003402E8(v1, @"automatic_type") != 0);
    }
  }

  return result;
}

id sub_100294298(id result)
{
  if (result)
  {
    return sub_1003402E8(result, @"automatic_type");
  }

  return result;
}

void *sub_1002942AC(void *result)
{
  if (result)
  {
    return (sub_1003402E8(result, @"update_type") != 0);
  }

  return result;
}

void *sub_1002942DC(void *result)
{
  if (result)
  {
    return (sub_1003402E8(result, @"restore_type") != 0);
  }

  return result;
}

void *sub_10029430C(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[3];
    if (!v3)
    {
      v4 = [[_TtC9appstored6LogKey alloc] initWithAppInstallEntity:a1];
      v5 = v2[3];
      v2[3] = v4;

      v3 = v2[3];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

void sub_100294380(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithInteger:a2];
    [a1 setValue:v3 forProperty:@"automatic_type"];
  }
}

id sub_1002943F0(void *a1)
{
  if (a1)
  {
    a1 = sub_100340328(a1, @"bundle_id");
    v1 = vars8;
  }

  return a1;
}

id sub_100294428(void *a1)
{
  if (a1)
  {
    a1 = sub_100340418(a1, @"bundle_url");
    v1 = vars8;
  }

  return a1;
}

id sub_100294460(void *a1)
{
  if (a1)
  {
    a1 = sub_1003403A0(a1, @"coordinator_id");
    v1 = vars8;
  }

  return a1;
}

id sub_100294498(void *a1)
{
  if (a1)
  {
    a1 = sub_1003403A0(a1, @"external_id");
    v1 = vars8;
  }

  return a1;
}

id sub_1002944D0(id result)
{
  if (result)
  {
    return sub_1003402E8(result, @"IFNULL(app_install.phase, 10)");
  }

  return result;
}

void sub_1002944E4(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithInteger:a2];
    [a1 setValue:v3 forProperty:@"phase"];
  }
}

void *sub_100294554(void *a1)
{
  if (a1)
  {
    v1 = [a1 valueForProperty:@"policy"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = sub_1003B65C4([AppInstallPolicy alloc], v1);
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1002945E4(void *a1, id *a2)
{
  if (a1)
  {
    if (a2)
    {
      a2 = [a2[1] copy];
    }

    v3 = a2;
    [a1 setValue:a2 forProperty:@"policy"];
  }
}

id sub_100294650(void *a1)
{
  if (a1)
  {
    a1 = sub_100340328(a1, @"install_verification_token");
    v1 = vars8;
  }

  return a1;
}

id sub_100294688(void *a1)
{
  if (a1)
  {
    a1 = sub_100340154(a1, @"item_id");
    v1 = vars8;
  }

  return a1;
}

id sub_1002946C0(id result)
{
  if (result)
  {
    return sub_1003402E8(result, @"recovery_count");
  }

  return result;
}

void sub_1002946D4(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithInteger:a2];
    [a1 setValue:v3 forProperty:@"priority"];
  }
}

id sub_100294744(id result)
{
  if (result)
  {
    return sub_1003402E8(result, @"software_platform");
  }

  return result;
}

id sub_100294758(id result)
{
  if (result)
  {
    return sub_1003402E8(result, @"source_type");
  }

  return result;
}

void sub_10029476C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = [NSNumber numberWithInteger:a2];
    [a1 setValue:v3 forProperty:@"update_type"];
  }
}

id sub_1002947DC(id a1)
{
  v1 = a1;
  if (a1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = sub_100294A38;
    v15 = sub_100294A48;
    v16 = 0;
    v2 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"parent_id", [a1 persistentID]);
    v18[0] = v2;
    v3 = [SQLiteComparisonPredicate predicateWithProperty:@"blocked" equalToValue:&__kCFBooleanFalse];
    v18[1] = v3;
    v4 = [NSArray arrayWithObjects:v18 count:2];
    v5 = [SQLiteCompoundPredicate predicateMatchingAllPredicates:v4];

    v17 = @"package_type";
    v6 = [NSArray arrayWithObjects:&v17 count:1];
    v7 = [v1 connection];
    v8 = sub_1002D3F5C(AppPackageEntity, v7, v5);

    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100294A50;
    v10[3] = &unk_10051E7B0;
    v10[4] = v1;
    v10[5] = &v11;
    [v8 enumeratePersistentIDsAndProperties:v6 usingBlock:v10];
    v1 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  return v1;
}

void sub_100294A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100294A38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100294A50(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _BYTE *a5)
{
  v8 = a3;
  v9 = [AppPackageEntity alloc];
  v10 = [*(a1 + 32) connection];
  v11 = [(SQLiteEntity *)v9 initWithPersistentID:a2 onConnection:v10];
  v12 = *(*(a1 + 40) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [v8 objectForKeyedSubscript:@"package_type"];

  v15 = [v14 integerValue];
  if (v15 == 1)
  {
    *a5 = 1;
  }
}

AppInstallsDatabaseChangeset *sub_100294BA8(void *a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    v4 = 0;
    goto LABEL_21;
  }

  v4 = objc_alloc_init(AppInstallsDatabaseChangeset);
  v29[0] = @"account_id";
  v29[1] = @"bundle_id";
  v29[2] = @"cancel_download_url";
  v29[3] = @"coordinator_id";
  v29[4] = @"external_id";
  v29[5] = @"gizmo_pairing_id";
  v29[6] = @"item_id";
  v29[7] = @"remote_install";
  v29[8] = @"source_type";
  v29[9] = @"supress_dialogs";
  v29[10] = @"transaction_id";
  v5 = [NSArray arrayWithObjects:v29 count:11];
  v6 = [a1 getValuesForProperties:v5];

  v7 = objc_alloc_init(NSMutableDictionary);
  [v7 setObject:&off_1005478F0 forKeyedSubscript:@"phase"];
  if (!v3)
  {
    v9 = [a1 valueForProperty:@"failure_error"];
    if (v9)
    {
      v8 = v9;
      v3 = 0;
      goto LABEL_6;
    }

    v27 = NSDebugDescriptionErrorKey;
    v28 = @"Failure occurred but no error was provided";
    v26 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v3 = [NSError errorWithDomain:ASDErrorDomain code:929 userInfo:v26];

    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v8 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:0];
  [v7 setObject:v8 forKeyedSubscript:@"failure_error"];
LABEL_6:

LABEL_7:
  [a1 setValuesWithDictionary:v7];
  v10 = [v6 objectForKeyedSubscript:@"coordinator_id"];
  if (v10)
  {
    v11 = [v6 objectForKeyedSubscript:@"bundle_id"];
    v12 = sub_100249094(lib_IXAppInstallCoordinatorTag, v10, v11);

    v13 = [v6 objectForKeyedSubscript:@"supress_dialogs"];
    [v13 BOOLValue];

    v14 = [v3 domain];
    v15 = [v14 isEqualToString:IXUserPresentableErrorDomain];

    if (v15)
    {
      [v3 code];
    }

    v16 = IXCreateUserPresentableError();
    sub_10025698C(v4, v12, v16);
  }

  if (v4)
  {
    v4->_shouldPostUpdatesDone = 1;
  }

  v17 = [v6 objectForKeyedSubscript:@"source_type"];
  v18 = [v17 integerValue];

  v19 = sub_100295060(a1, v18, -20, v6);
  if (v4 && v19)
  {
    v4->_shouldPostAppsDone = 1;
  }

  v20 = [v6 objectForKeyedSubscript:@"bundle_id"];
  sub_1002560F0(v4, v20);

  v21 = [v6 objectForKeyedSubscript:@"external_id"];
  v22 = v21;
  if (v21)
  {
    v30[0] = @"kind";
    v30[1] = @"identifier";
    *buf = @"finish";
    v32 = v21;
    v30[2] = @"phase";
    v23 = [NSNumber numberWithInteger:-20];
    v33 = v23;
    v24 = [NSDictionary dictionaryWithObjects:buf forKeys:v30 count:3];

    sub_100255F64(v4, v24);
  }

  else
  {
    v24 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Skipping legacy finish notification because we don't have an identifier.", buf, 2u);
    }
  }

  sub_1002952D0(v6, v3, v4);
LABEL_21:

  return v4;
}

uint64_t sub_100295060(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (a2)
  {
    goto LABEL_14;
  }

  v8 = objc_alloc_init(NSMutableDictionary);
  v9 = [v7 objectForKeyedSubscript:@"account_id"];
  v10 = [v9 copy];
  [v8 setObject:v10 forKeyedSubscript:@"account_id"];

  if (a3 == -20 || a3 == -30)
  {
    v11 = @"cancel_download_url";
    v12 = [v7 objectForKeyedSubscript:@"cancel_download_url"];

    if (!v12)
    {
LABEL_13:

LABEL_14:
      v24 = 0;
      goto LABEL_15;
    }

    v13 = &off_1005222A8;
  }

  else
  {
    v14 = [v7 objectForKeyedSubscript:@"item_id"];
    if (!v14)
    {
      goto LABEL_13;
    }

    v15 = v14;
    v16 = [v7 objectForKeyedSubscript:@"transaction_id"];

    if (!v16)
    {
      goto LABEL_13;
    }

    v17 = [v7 objectForKeyedSubscript:@"item_id"];
    [v8 setObject:v17 forKeyedSubscript:@"item_id"];

    v13 = &off_1005222B0;
    v11 = @"transaction_id";
  }

  v18 = [v7 objectForKeyedSubscript:v11];
  [v8 setObject:v18 forKeyedSubscript:*v13];

  v19 = [AppDoneEntity alloc];
  v20 = [a1 connection];
  v21 = [(SQLiteEntity *)v19 initWithPropertyValues:v8 onConnection:v20];

  if (!v21)
  {
    goto LABEL_13;
  }

  v22 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = sub_10029430C(a1);
    v26 = 138543362;
    v27 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Clearing item from queue", &v26, 0xCu);
  }

  v24 = 1;
LABEL_15:

  return v24;
}

void sub_1002952D0(void *a1, void *a2, void *a3)
{
  v13 = a1;
  v5 = a2;
  v6 = a3;
  v7 = [v13 objectForKeyedSubscript:@"source_type"];
  v8 = [v7 integerValue];

  if (v8 == 2)
  {
    v9 = [v13 objectForKeyedSubscript:@"bundle_id"];
    v10 = [v13 objectForKeyedSubscript:@"gizmo_pairing_id"];
    v11 = [v13 objectForKeyedSubscript:@"remote_install"];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      sub_100255C7C(v6, v9, v10, v5);
    }
  }
}

AppInstallsDatabaseChangeset *sub_1002953E0(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = objc_alloc_init(AppInstallsDatabaseChangeset);
    v25 = @"phase";
    v5 = [NSNumber numberWithInteger:a2];
    v26 = v5;
    v6 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [a1 setValuesWithDictionary:v6];

    v24[0] = @"account_id";
    v24[1] = @"bundle_id";
    v24[2] = @"cancel_download_url";
    v24[3] = @"coordinator_id";
    v24[4] = @"external_id";
    v24[5] = @"gizmo_pairing_id";
    v24[6] = @"item_id";
    v24[7] = @"remote_install";
    v24[8] = @"source_type";
    v24[9] = @"transaction_id";
    v7 = [NSArray arrayWithObjects:v24 count:10];
    v8 = [a1 getValuesForProperties:v7];

    if (a2 == -30)
    {
      v9 = [v8 objectForKeyedSubscript:@"coordinator_id"];
      if (v9)
      {
        v10 = [v8 objectForKeyedSubscript:@"bundle_id"];
        v11 = sub_100249094(lib_IXAppInstallCoordinatorTag, v9, v10);

        v12 = IXCreateUserPresentableError();
        sub_10025698C(v4, v11, v12);
      }

      if (sub_1003402E8(a1, @"update_type") && !sub_1003402E8(a1, @"source_type"))
      {
        v13 = sub_100340328(a1, @"bundle_id");
        if (v13)
        {
          v14 = sub_1002BB3F0();
          v15 = sub_10029430C(a1);
          sub_1002BBC18(v14, v13, v15);

          if (v4)
          {
            v4->_shouldPostUpdatesDone = 1;
          }
        }
      }
    }

    v16 = [v8 objectForKeyedSubscript:@"source_type"];
    v17 = [v16 integerValue];

    if (sub_100295060(a1, v17, a2, v8) && v4)
    {
      v4->_shouldPostAppsDone = 1;
    }

    if (v17 == 2)
    {
      if (a2 == -40)
      {
        goto LABEL_25;
      }

      if (a2 != -20 && a2 != -30)
      {
        goto LABEL_27;
      }

      v18 = sub_100340244(a1, @"failure_error");
      if (!v18)
      {
        v18 = ASDErrorWithDescription();
      }

      sub_1002952D0(v8, v18, v4);
    }

    if (a2 == -30)
    {
      v19 = [v8 objectForKeyedSubscript:@"bundle_id"];
      sub_1002560F0(v4, v19);
LABEL_26:

      goto LABEL_27;
    }

    if (a2 != -40)
    {
LABEL_27:
      v20 = [v8 objectForKeyedSubscript:@"external_id"];
      v27[0] = @"kind";
      v27[1] = @"identifier";
      v28[0] = @"finish";
      v28[1] = v20;
      v27[2] = @"phase";
      v21 = [NSNumber numberWithInteger:a2];
      v28[2] = v21;
      v22 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];

      sub_100255F64(v4, v22);
      goto LABEL_28;
    }

LABEL_25:
    v19 = [v8 objectForKeyedSubscript:@"bundle_id"];
    sub_100256170(v4, v19);
    goto LABEL_26;
  }

  v4 = 0;
LABEL_28:

  return v4;
}

void sub_1002958BC(id a1)
{
  v1 = [[NSSet alloc] initWithObjects:{@"app_package", 0}];
  v2 = qword_1005AAA48;
  qword_1005AAA48 = v1;
}

void sub_10029591C(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a2;
    v4 = sub_100294554(a1);
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = sub_1003B6560();
    }

    v8 = v6;

    v3[2](v3, v8);
    if (v8)
    {
      v7 = [v8[1] copy];
    }

    else
    {
      v7 = 0;
    }

    [a1 setValue:v7 forProperty:@"policy"];
  }
}

void sub_1002959F0(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[SQLiteComparisonPredicate predicateWithProperty:equalToLongLong:](SQLiteComparisonPredicate, "predicateWithProperty:equalToLongLong:", @"parent_id", [a1 persistentID]);
    v5 = [a1 connection];
    v19 = v4;
    v6 = sub_1002D3F5C(AppPackageEntity, v5, v4);
    [v6 deleteAllEntities];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = v3;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          v13 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [a1 persistentID]);
          sub_10023E000(v12, v13, @"parent_id");

          v14 = [AppPackageEntity alloc];
          if (v12)
          {
            v15 = *(v12 + 16);
          }

          else
          {
            v15 = 0;
          }

          v16 = v15;
          v17 = [a1 connection];

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v18 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v9 = v18;
      }

      while (v18);
    }

    v3 = v20;
  }
}

id *sub_100295DC0(id *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = PurchaseHistoryItemsDAAPResponseMetadataParser;
    v5 = objc_msgSendSuper2(&v7, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
    }
  }

  return a1;
}

uint64_t sub_100296460(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 1)
      {
        v27 = PBReaderReadString();
        v28 = *(a1 + 24);
        *(a1 + 24) = v27;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          while (1)
          {
            v34 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v34 & 0x7F) << v21;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_44;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_44:
          v30 = 8;
        }

        else
        {
          if (v13 != 3)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_50;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          while (1)
          {
            v33 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v33 & 0x7F) << v14;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_48:
          v30 = 16;
        }

        *(a1 + v30) = v20;
      }

LABEL_50:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100296A24(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

NetworkEmulation *sub_100296A50()
{
  objc_opt_self();
  v0 = sub_1003D3F18(AppDefaultsManager, @"NetworkEmulation");
  if (v0)
  {
    v1 = [NetworkEmulation alloc];
    v2 = v0;
    if (v1)
    {
      v4.receiver = v1;
      v4.super_class = NetworkEmulation;
      v1 = objc_msgSendSuper2(&v4, "init");
      if (v1)
      {
        v1->_interfaceType = sub_100237FA0(v2, @"ifce", 0);
        v1->_isConstrained = sub_1002378BC(v2, @"cnst", 0);
        v1->_isExpensive = sub_1002378BC(v2, @"expn", 0);
        v1->_isRoaming = sub_1002378BC(v2, @"roam", 0);
      }
    }
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_10029737C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

void sub_100297394(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

char *sub_100297400(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  objc_opt_self();
  v7 = [TestFlightFeedbackUploadTask alloc];
  v8 = v5;
  if (v7 && (v13.receiver = v7, v13.super_class = TestFlightFeedbackUploadTask, (v9 = objc_msgSendSuper2(&v13, "init")) != 0))
  {
    v10 = v9;
    objc_storeStrong((v9 + 50), a3);

    v11 = v6;
    v8 = *(v10 + 66);
    *(v10 + 66) = v11;
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

void sub_1002976B8(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 58), a2);
    sub_100297808(*(a1 + 32), *(*(a1 + 32) + 50), *(a1 + 40));
  }

  else
  {
    v8 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_1002026B0(*(*(a1 + 32) + 50));
      v10 = 138412546;
      v11 = v9;
      v12 = 2114;
      v13 = v7;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%@] Failed to load bag: %{public}@", &v10, 0x16u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void sub_100297808(uint64_t a1, void *a2, void *a3)
{
  v80 = a2;
  v5 = a3;
  if (a1)
  {
    v6 = sub_100202AE4(v80);
    switch(v6)
    {
      case 2:
        v64 = v80;
        v65 = v5;
        v66 = sub_1002EA968([SubmitTestFlightFeedbackTask alloc], v64, *(a1 + 58));
        *&v90 = 0;
        v67 = [a1 runSubTask:v66 returningError:&v90];
        v68 = v90;
        v69 = ASDLogHandleForCategory();
        p_super = v69;
        if (v67)
        {
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            v71 = sub_1002026B0(v64);
            *buf = 138412290;
            *&buf[4] = v71;
            _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "[%@]: Successfully submitted feedback", buf, 0xCu);
          }

          v72 = *(a1 + 66);
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 3221225472;
          *&buf[16] = sub_100298464;
          v101 = &unk_10051E650;
          v102 = v64;
          [v72 modifyUsingTransaction:buf];
          p_super = &v102->super;
        }

        else if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
        {
          v75 = sub_1002026B0(v64);
          *buf = 138412546;
          *&buf[4] = v75;
          *&buf[12] = 2114;
          *&buf[14] = v68;
          _os_log_error_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "[%@]: Failed to upload feedback: %{public}@", buf, 0x16u);
        }

        v65[2](v65, v68);
        break;
      case 1:
        v38 = v80;
        v39 = v5;
        sub_1002028CC(v38);
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        obj = v93 = 0u;
        v88 = [obj countByEnumeratingWithState:&v90 objects:buf count:16];
        if (!v88)
        {
          goto LABEL_53;
        }

        v77 = v39;
        v79 = v5;
        v85 = *v91;
        v87 = 0;
        do
        {
          v40 = 0;
          do
          {
            if (*v91 != v85)
            {
              objc_enumerationMutation(obj);
            }

            v41 = *(*(&v90 + 1) + 8 * v40);
            v42 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              v43 = sub_1002026B0(v38);
              if (v41)
              {
                v44 = *(v41 + 16);
                v45 = *(v41 + 24);
                v46 = v44;
              }

              else
              {
                v44 = 0;
                v46 = 0;
                v45 = 0;
              }

              v47 = v45;
              *v94 = 138412802;
              v95 = v43;
              v96 = 2114;
              v97 = v44;
              v98 = 2114;
              v99 = v47;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "[%@]: [%{public}@] Starting image upload to %{public}@", v94, 0x20u);
            }

            v48 = sub_100239D44([UploadTestFlightImageTask alloc], v41, v38, *(a1 + 58));
            v89 = 0;
            v49 = a1;
            v50 = [a1 runSubTask:v48 returningError:&v89];
            v51 = v89;
            if (v50)
            {
              if (v48)
              {
                v52 = *(v48 + 66);
                v53 = *(v48 + 42);
              }

              else
              {
                v52 = 0;
                v53 = 0;
              }

              v54 = v53;
              sub_100202DCC(v54, v52);
              v55 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                v56 = sub_1002026B0(v38);
                if (v41)
                {
                  v57 = *(v41 + 16);
                }

                else
                {
                  v57 = 0;
                }

                v58 = v57;
                *v94 = 138412546;
                v95 = v56;
                v96 = 2114;
                v97 = v58;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "[%@]: [%{public}@] Successfully uploaded image", v94, 0x16u);
              }
            }

            else
            {
              v59 = ASDLogHandleForCategory();
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                v60 = sub_1002026B0(v38);
                if (v41)
                {
                  v61 = *(v41 + 16);
                }

                else
                {
                  v61 = 0;
                }

                v62 = v61;
                *v94 = 138412802;
                v95 = v60;
                v96 = 2114;
                v97 = v62;
                v98 = 2114;
                v99 = v51;
                _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "[%@]: [%{public}@] Failed to upload image: %{public}@", v94, 0x20u);
              }

              v52 = v87;
              v87 = v51;
            }

            v40 = v40 + 1;
            a1 = v49;
          }

          while (v88 != v40);
          v63 = [obj countByEnumeratingWithState:&v90 objects:buf count:16];
          v88 = v63;
        }

        while (v63);
        v39 = v77;
        v5 = v79;
        if (v87)
        {
          sub_1002982F4(v49, v38, v87, v77);
        }

        else
        {
LABEL_53:
          sub_100202D5C(v38, 2);
          sub_1002982F4(a1, v38, 0, v39);
        }

        break;
      case 0:
        v7 = v80;
        v8 = v5;
        v9 = sub_10020272C(v7);
        v10 = [v9 imagesData];
        v11 = [v10 count];

        v12 = ASDLogHandleForCategory();
        v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        if (v11)
        {
          if (v13)
          {
            v14 = sub_1002026B0(v7);
            v15 = [v9 imagesData];
            *buf = 138412546;
            *&buf[4] = v14;
            *&buf[12] = 2048;
            *&buf[14] = [v15 count];
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@]: Fetching %lu image URL(s) for feedback", buf, 0x16u);
          }

          v16 = sub_1002EA968([FetchImageUploadURLsTask alloc], v7, *(a1 + 58));
          *&v90 = 0;
          v17 = [a1 runSubTask:v16 returningError:&v90];
          v18 = v90;
          v19 = v18;
          if (v17)
          {
            v78 = v5;
            v86 = v8;
            v84 = v9;
            v82 = v18;
            if (v16)
            {
              v81 = *(v16 + 42);
              v20 = *(v16 + 58);
            }

            else
            {
              v81 = 0;
              v20 = 0;
            }

            v21 = a1;
            v22 = v20;
            v23 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = *(a1 + 50);
              v25 = sub_1002026B0(v24);
              v26 = [v22 count];
              *buf = 138412546;
              *&buf[4] = v25;
              *&buf[12] = 2048;
              *&buf[14] = v26;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[%@]: Successfully fetched %lu image URL(s)", buf, 0x16u);
            }

            v27 = objc_opt_new();
            if ([v22 count])
            {
              v28 = 0;
              do
              {
                v29 = sub_10020272C(*(v21 + 50));
                v30 = [v29 imagesData];

                v31 = [v30 objectAtIndexedSubscript:v28];
                v32 = [v22 objectAtIndexedSubscript:v28];
                v33 = sub_100300950(TFPendingImageUpload, v31, v32);
                [v27 addObject:v33];

                ++v28;
              }

              while ([v22 count] > v28);
            }

            sub_100202C30(v81, v27);
            sub_100202D5C(v81, 1);
            v34 = v7;
            v35 = *(v21 + 42);
            *buf = _NSConcreteStackBlock;
            *&buf[8] = 3221225472;
            *&buf[16] = sub_1002983F4;
            v101 = &unk_10051E650;
            v36 = v34;
            v102 = v36;
            [v35 modifyUsingTransaction:buf];

            if (sub_100202AE4(v81))
            {
              v37 = v21;
              v8 = v86;
              sub_1002982F4(v37, v81, 0, v86);
            }

            else
            {
              v8 = v86;
              v86[2](v86, 0);
            }

            v5 = v78;
            v9 = v84;
            v19 = v82;
          }

          else
          {
            v74 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
            {
              v76 = sub_1002026B0(v7);
              *buf = 138412546;
              *&buf[4] = v76;
              *&buf[12] = 2114;
              *&buf[14] = v19;
              _os_log_error_impl(&_mh_execute_header, v74, OS_LOG_TYPE_ERROR, "[%@]: Error fetching image upload URL(s): %{public}@", buf, 0x16u);
            }

            (*(v8 + 2))(v8, v19);
          }
        }

        else
        {
          if (v13)
          {
            v73 = sub_1002026B0(v7);
            *buf = 138412290;
            *&buf[4] = v73;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[%@]: No images to upload for feedback", buf, 0xCu);
          }

          sub_100202D5C(v7, 2);
          (*(v8 + 2))(v8, 0);
        }

        break;
    }
  }
}

void sub_1002982F4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 66);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002984AC;
  v12[3] = &unk_10051E650;
  v11 = v7;
  v13 = v11;
  [v10 modifyUsingTransaction:v12];
  if (v8)
  {
    v9[2](v9, v8);
  }

  else
  {
    sub_100297808(a1, v11, v9);
  }
}

BOOL sub_1002983F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = sub_10020272C(v2);
  v5 = [v4 appVersion];
  v6 = sub_1003CC604(v3, 1, v5);

  return v6;
}

id sub_100298464(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = sub_1003CB8DC(v3, [v2 databaseID]);

  return v4;
}

uint64_t sub_1002984AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  sub_100202BC0(v3, 0);
  v5 = sub_1003CBF88(v4, *(a1 + 32));

  v6 = ASDLogHandleForCategory();
  v7 = v6;
  if (!v5)
  {
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    v8 = sub_1002026B0(*(a1 + 32));
    v11 = sub_100202AE4(*(a1 + 32));
    v12 = 138412546;
    v13 = v8;
    v14 = 2048;
    v15 = v11;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%@]: Failed to update entity with state: %lu", &v12, 0x16u);
    goto LABEL_4;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = sub_1002026B0(*(a1 + 32));
    v9 = sub_100202AE4(*(a1 + 32));
    v12 = 138412546;
    v13 = v8;
    v14 = 2048;
    v15 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@]: Successfully updated entity with state: %lu", &v12, 0x16u);
LABEL_4:
  }

LABEL_6:

  return v5;
}

id sub_10029869C()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100298740;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AAA60 != -1)
  {
    dispatch_once(&qword_1005AAA60, block);
  }

  v0 = qword_1005AAA58;

  return v0;
}

void sub_100298740(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_1005AAA58;
  qword_1005AAA58 = v1;
}

void sub_100298AF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak((v32 + 32));
  objc_destroyWeak(&a26);
  objc_destroyWeak(&a31);
  objc_destroyWeak((v33 - 168));
  _Unwind_Resume(a1);
}

uint64_t sub_100298BB0(uint64_t a1, uint64_t a2, void *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = a3;
  v30 = v6;
  if (!WeakRetained)
  {
    v26 = 0;
    goto LABEL_19;
  }

  v7 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v28 = [v30 objectForKeyedSubscript:@"CACHE_DELETE_CALLING_PROCESS"];
  v8 = sub_10029A300(a2);
  v9 = sub_10029A298(v7);
  v10 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2048;
    *&buf[14] = a2;
    v33 = 2114;
    v34 = v7;
    v11 = *&buf[4];
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Purgeable request with urgency: %ld volume: %{public}@", buf, 0x20u);
  }

  v12 = WeakRetained;
  objc_sync_enter(v12);
  Current = CFAbsoluteTimeGetCurrent();
  v14 = v12[5];
  if (v14 == 0.0 || Current - v14 > 3600.0)
  {
    goto LABEL_10;
  }

  if (v9 != 2)
  {
    if (*(v12 + 2))
    {
      goto LABEL_8;
    }

LABEL_10:
    objc_sync_exit(v12);

    sub_10029A3D4(v12, @"Purgeable Request", v28);
    v15 = 0;
    goto LABEL_11;
  }

  if (!*(v12 + 1))
  {
    goto LABEL_10;
  }

LABEL_8:
  objc_sync_exit(v12);

  v15 = 1;
LABEL_11:
  v16 = v12;
  objc_sync_enter(v16);
  v17 = 2;
  if (v9 == 2)
  {
    v17 = 1;
  }

  v18 = [*&v16[v17] copy];
  objc_sync_exit(v16);

  v19 = [NSNumber numberWithInteger:v8];
  v20 = [v18 objectForKey:v19];

  if (v20)
  {
    v21 = [v20 longLongValue];
  }

  else
  {
    v21 = 0;
  }

  v22 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = objc_opt_class();
    *buf = 138544386;
    *&buf[4] = v23;
    *&buf[12] = 2048;
    *&buf[14] = v21;
    v33 = 2048;
    v34 = a2;
    v35 = 1024;
    v36 = v15;
    v37 = 2114;
    v38 = v7;
    v24 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Purgeable total: %{bytes}lld for urgency: %ld cached: %{BOOL}d volume: %{public}@", buf, 0x30u);
  }

  v31[0] = @"CACHE_DELETE_VOLUME";
  v31[1] = @"CACHE_DELETE_AMOUNT";
  *buf = v7;
  v25 = [NSNumber numberWithLongLong:v21];
  *&buf[8] = v25;
  v26 = [NSDictionary dictionaryWithObjects:buf forKeys:v31 count:2];

LABEL_19:
  return v26;
}

uint64_t sub_100298F40(uint64_t a1, uint64_t a2, void *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = sub_100298F94(WeakRetained, a3, a2);

  return v6;
}

id sub_100298F94(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
    v63 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
    v8 = [v6 objectForKeyedSubscript:@"CACHE_DELETE_CALLING_PROCESS"];
    v9 = sub_10029A298(v7);
    v10 = sub_10029A300(a3);
    v11 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = v8;
      v14 = v12;
      *buf = 138544130;
      v67 = v12;
      v68 = 2048;
      v69 = [v63 longLongValue];
      v70 = 2048;
      v71 = a3;
      v72 = 2114;
      v73 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Purge request with desired bytes: %{bytes}lld with urgency: %ld volume: %{public}@", buf, 0x2Au);

      v8 = v13;
    }

    v15 = a1;
    objc_sync_enter(v15);
    Current = CFAbsoluteTimeGetCurrent();
    v17 = *(v15 + 5);
    v18 = NSComparisonPredicate_ptr;
    if (v17 == 0.0 || Current - v17 > 3600.0)
    {
      objc_sync_exit(v15);

      if (v9 != 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v9 == 2)
      {
        v19 = *(v15 + 1);
        if (!v19)
        {
LABEL_11:
          objc_sync_exit(v15);

LABEL_13:
          WeakRetained = objc_loadWeakRetained(v15 + 7);
          if (!WeakRetained || (v23 = objc_loadWeakRetained(v15 + 7), v24 = objc_opt_respondsToSelector(), v23, WeakRetained, (v24 & 1) == 0))
          {
            v27 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v60 = objc_opt_class();
              *buf = 138543362;
              v67 = v60;
              v61 = v8;
              v62 = v60;
              _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "[%{public}@] ODR has not been set please make sure everything is configured correctly.", buf, 0xCu);

              v8 = v61;
              v18 = NSComparisonPredicate_ptr;
            }

            v26 = 0;
            goto LABEL_35;
          }

          v25 = objc_loadWeakRetained(v15 + 7);
          v26 = [v25 purgeForVolume:v7 urgency:v10 desiredPurge:v63 client:v8];

          v27 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = objc_opt_class();
            *buf = 138543618;
            v67 = v28;
            v68 = 2048;
            v69 = v26;
            v29 = NSComparisonPredicate_ptr;
            v30 = v8;
            v31 = v28;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Purged %{bytes}ld for odr", buf, 0x16u);

LABEL_34:
            v8 = v30;
            v18 = v29;
            goto LABEL_35;
          }

          goto LABEL_35;
        }

        v20 = [NSNumber numberWithInteger:v10];
        v21 = [v19 objectForKey:v20];

        if (!v21 || [v21 longLongValue])
        {

          goto LABEL_11;
        }

        v51 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          v52 = v8;
          v53 = objc_opt_class();
          *buf = 138543618;
          v67 = v53;
          v68 = 2048;
          v69 = a3;
          v54 = v53;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "[%{public}@][User] Nothing to purge for urgency %ld", buf, 0x16u);

          v8 = v52;
        }

        v78[0] = @"CACHE_DELETE_VOLUME";
        v78[1] = @"CACHE_DELETE_AMOUNT";
        v79[0] = v7;
        v79[1] = &off_100547908;
        v55 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:2];
LABEL_51:
        v49 = v55;

        objc_sync_exit(v15);
LABEL_41:

        goto LABEL_42;
      }

      v32 = *(v15 + 2);
      if (v32)
      {
        v33 = [NSNumber numberWithInteger:v10];
        v21 = [v32 objectForKey:v33];

        if (v21 && ![v21 longLongValue])
        {
          v56 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = v8;
            v58 = objc_opt_class();
            *buf = 138543618;
            v67 = v58;
            v68 = 2048;
            v69 = a3;
            v59 = v58;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "[%{public}@][System] Nothing to purge for urgency %ld", buf, 0x16u);

            v8 = v57;
          }

          v76[0] = @"CACHE_DELETE_VOLUME";
          v76[1] = @"CACHE_DELETE_AMOUNT";
          v77[0] = v7;
          v77[1] = &off_100547908;
          v55 = [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:2];
          goto LABEL_51;
        }
      }

      objc_sync_exit(v15);
    }

    if (objc_opt_respondsToSelector())
    {
      v26 = [*(v15 + 6) purgeForVolume:v7 urgency:v10 desiredPurge:v63 client:v8];
      v34 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = objc_opt_class();
        *buf = 138543618;
        v67 = v35;
        v68 = 2048;
        v69 = v26;
        v36 = v8;
        v37 = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[%{public}@] Purged %{bytes}ld for apps", buf, 0x16u);

        v8 = v36;
        v18 = NSComparisonPredicate_ptr;
      }
    }

    else
    {
      v26 = 0;
    }

    v38 = *(v15 + 8);
    if (!v38)
    {
      goto LABEL_36;
    }

    v39 = v38;
    v40 = objc_opt_respondsToSelector();

    if ((v40 & 1) == 0)
    {
      goto LABEL_36;
    }

    v41 = [*(v15 + 8) purgeForVolume:v7 urgency:v10 desiredPurge:v63 client:v8];
    v27 = ASDLogHandleForCategory();
    v26 += v41;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v42 = objc_opt_class();
      *buf = 138543618;
      v67 = v42;
      v68 = 2048;
      v69 = v41;
      v29 = v18;
      v30 = v8;
      v43 = v42;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Purged %{bytes}ld bytes for partial downloads", buf, 0x16u);

      goto LABEL_34;
    }

LABEL_35:

LABEL_36:
    v44 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = objc_opt_class();
      *buf = 138544386;
      v67 = v45;
      v68 = 2048;
      v69 = v26;
      v70 = 2114;
      v71 = v63;
      v72 = 2048;
      v73 = a3;
      v74 = 2114;
      v75 = v7;
      v46 = v18;
      v47 = v8;
      v48 = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[%{public}@] Purged total: %{bytes}ld desiredPurge: %{public}@ urgency: %ld volume: %{public}@", buf, 0x34u);

      v8 = v47;
      v18 = v46;
    }

    if (v26 >= 1)
    {
      [NSThread sleepForTimeInterval:5.0];
      sub_10029A3D4(v15, @"Purge", v8);
      sub_100299D0C(v15, 0, 0, 1.0);
    }

    v64[0] = @"CACHE_DELETE_VOLUME";
    v64[1] = @"CACHE_DELETE_AMOUNT";
    v65[0] = v7;
    v15 = [v18[23] numberWithLongLong:v26];
    v65[1] = v15;
    v49 = [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:2];
    goto LABEL_41;
  }

  v49 = 0;
LABEL_42:

  return v49;
}

void sub_10029982C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v1 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = objc_opt_class();
      v2 = v12;
      _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[%{public}@] Requested cancel purge for service", buf, 0xCu);
    }

    v3 = objc_loadWeakRetained(WeakRetained + 7);
    if (v3 && (v4 = v3, v5 = objc_loadWeakRetained(WeakRetained + 7), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
    {
      v7 = objc_loadWeakRetained(WeakRetained + 7);
      [v7 cancelPurge];
    }

    else
    {
      v7 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = objc_opt_class();
        *buf = 138543362;
        v12 = v8;
        v9 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] ODR has not been set please make sure everything is configured correctly.", buf, 0xCu);
      }
    }
  }
}

uint64_t sub_1002999D0(uint64_t a1, uint64_t a2, void *a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = sub_100298F94(WeakRetained, a3, a2);

  return v6;
}

void sub_100299A24(id *a1)
{
  if (a1)
  {
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = objc_opt_class();
      v3 = v13;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] Invalidating caches", &v12, 0xCu);
    }

    if (objc_opt_respondsToSelector())
    {
      [a1[6] cacheInvalidated];
    }

    WeakRetained = objc_loadWeakRetained(a1 + 7);
    if (WeakRetained)
    {
      v5 = WeakRetained;
      v6 = objc_loadWeakRetained(a1 + 7);
      v7 = objc_opt_respondsToSelector();

      if (v7)
      {
        v8 = objc_loadWeakRetained(a1 + 7);
        [v8 cacheInvalidated];
      }
    }

    v9 = a1[8];
    if (v9)
    {
      v10 = v9;
      v11 = objc_opt_respondsToSelector();

      if (v11)
      {
        [a1[8] cacheInvalidated];
      }
    }

    sub_100299D0C(a1, 1, 0, 10.0);
  }
}

void sub_100299BA0(void *a1)
{
  if (a1)
  {
    sub_100299D0C(a1, 1, 0, 10.0);
  }
}

uint64_t sub_100299BB8(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v14 = a2;
  v6 = a4;
  v7 = v6;
  if (a1)
  {
    v8 = [v6 UTF8String];
    v9 = v8;
    if (!a3 || (v13 = 0, v10 = fsctl(v8, 0x80084A02uLL, &v13, 0), !v10))
    {
      v11 = open(v9, 0);
      v10 = ffsctl(v11, 0xC0084A44uLL, &v14, 0);
      close(v11);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_100299C74(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v6 = v3;
    v4 = sub_1003BBF50();
    v5 = [v4 isHRNMode];

    if ((v5 & 1) == 0)
    {
      sub_100299D0C(a1, 1, 0, 10.0);
    }

    sub_1001E7A5C(AppPurgeCoordinator, v6);
    v3 = v6;
  }
}

void sub_100299D0C(void *a1, char a2, int a3, float a4)
{
  if (a1)
  {
    v7 = a1;
    objc_sync_enter(v7);
    if (!v7[4])
    {
      v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v7[3]);
      v9 = v7[4];
      v7[4] = v8;

      v10 = v7[4];
      v11 = dispatch_time(0, (a4 * 1000000000.0));
      dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10029AC78;
      v14[3] = &unk_10051C8F8;
      v15 = a2;
      v14[4] = v7;
      v12 = objc_retainBlock(v14);
      if (a3)
      {
        v13 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v12);

        v12 = v13;
      }

      dispatch_source_set_event_handler(v7[4], v12);
      dispatch_resume(v7[4]);
    }

    objc_sync_exit(v7);
  }
}

void sub_100299E54(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = v1[4];
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = v1[4];
      v1[4] = 0;
    }

    objc_sync_exit(v1);

    sub_100299D0C(v1, 1, 1, 1.0);
  }
}

uint64_t sub_10029A298(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 isEqualToString:@"/private/var"] & 1) == 0)
  {
    if ([v2 isEqualToString:@"/private/var/mobile"])
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

uint64_t sub_10029A300(uint64_t result)
{
  if ((result - 1) < 4)
  {
    return result;
  }

  v1 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138543362;
    v4 = objc_opt_class();
    v2 = v4;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "[%{public}@] Unknown urgency value, defaulting to low urgency", &v3, 0xCu);
  }

  return 1;
}

void sub_10029A3D4(id *a1, void *a2, void *a3)
{
  v53 = a2;
  v52 = a3;
  if (!a1)
  {
    goto LABEL_33;
  }

  v5 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v55 = objc_opt_class();
    v56 = 2114;
    v57 = v53;
    v6 = v55;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Refreshing purgeable storage with reason: %{public}@", buf, 0x16u);
  }

  v49 = [[KeepAlive alloc] initWithName:@"com.apple.CacheDeleteCoordinator.refresh"];
  if (objc_opt_respondsToSelector())
  {
    v7 = a1[6];
    v8 = [v7 allPurgeablesForVolume:@"/private/var" reason:v53 client:{v52, v49}];

    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = objc_opt_class();
      *buf = 138543874;
      v55 = v10;
      v56 = 2114;
      v57 = v8;
      v58 = 2114;
      v59 = v52;
      v11 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@] Refreshed app purgeable: %{public}@ client: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = a1[8];
  if (v12 && (v13 = v12, v14 = objc_opt_respondsToSelector(), v13, (v14 & 1) != 0))
  {
    v15 = a1[8];
    v16 = [v15 allPurgeablesForVolume:@"/private/var" reason:v53 client:v52];

    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      *buf = 138543618;
      v55 = v18;
      v56 = 2114;
      v57 = v16;
      v19 = v18;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}@] Refreshed partial download purgeable: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v16 = 0;
  }

  WeakRetained = objc_loadWeakRetained(a1 + 7);
  if (WeakRetained && (v21 = objc_loadWeakRetained(a1 + 7), v22 = objc_opt_respondsToSelector(), v21, WeakRetained, (v22 & 1) != 0))
  {
    v23 = objc_loadWeakRetained(a1 + 7);
    v51 = [v23 allPurgeablesForVolume:@"/private/var/mobile" reason:v53 client:v52];

    v24 = a1;
    objc_sync_enter(v24);
    v25 = [v51 copy];
    v26 = v24[1];
    v24[1] = v25;

    objc_sync_exit(v24);
    v27 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = objc_opt_class();
      *buf = 138543618;
      v55 = v28;
      v56 = 2114;
      v57 = v51;
      v29 = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "[%{public}@] Refreshed odr purgeable: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v51 = 0;
  }

  v30 = +[NSMutableDictionary dictionary];
  for (i = 1; i != 5; ++i)
  {
    if (v8)
    {
      v32 = [NSNumber numberWithInteger:i];
      v33 = [v8 objectForKey:v32];
      v34 = [v33 unsignedLongLongValue];

      if (v16)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v34 = 0;
      if (v16)
      {
LABEL_24:
        v35 = [NSNumber numberWithInteger:i];
        v36 = [v16 objectForKey:v35];
        v37 = [v36 unsignedLongLongValue];

        goto LABEL_27;
      }
    }

    v37 = 0;
LABEL_27:
    v38 = [NSNumber numberWithUnsignedLongLong:&v34[v37]];
    v39 = [NSNumber numberWithInteger:i];
    [v30 setObject:v38 forKey:v39];
  }

  v40 = a1;
  objc_sync_enter(v40);
  v41 = [v30 copy];
  v42 = v40[2];
  v40[2] = v41;

  objc_sync_exit(v40);
  v43 = ASDLogHandleForCategory();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    v44 = objc_opt_class();
    *buf = 138543618;
    v55 = v44;
    v56 = 2114;
    v57 = v30;
    v45 = v44;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "[%{public}@] Refreshed combined system purgeable: %{public}@", buf, 0x16u);
  }

  v46 = v40;
  objc_sync_enter(v46);
  *(v46 + 5) = CFAbsoluteTimeGetCurrent();
  v47 = v46[4];
  if (v47)
  {
    dispatch_source_cancel(v47);
    v48 = v46[4];
    v46[4] = 0;
  }

  objc_sync_exit(v46);

LABEL_33:
}

void sub_10029A9B0(dispatch_queue_t *a1, uint64_t a2)
{
  if (a1)
  {
    dispatch_assert_queue_V2(a1[3]);
    v4 = @"/private/var";
    if (a2 != 1)
    {
      v4 = 0;
    }

    if (a2 == 2)
    {
      v4 = @"/private/var/mobile";
    }

    v5 = v4;
    if (v5)
    {
      v6 = a1;
      objc_sync_enter(v6);
      if (a2 == 2)
      {
        v7 = [v6[1] copy];
      }

      else
      {
        v7 = [v6[2] copy];
      }

      v8 = v7;
      objc_sync_exit(v6);

      if (v8)
      {
        v15[0] = @"CACHE_DELETE_ID";
        v15[1] = @"CACHE_DELETE_VOLUME";
        v16[0] = @"com.apple.appstored.CacheDelete";
        v16[1] = v5;
        v15[2] = @"CACHE_DELETE_AMOUNT";
        v16[2] = v8;
        v10 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:3];
        CacheDeleteUpdatePurgeable();
        v11 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = objc_opt_class();
          *buf = 138543874;
          v18 = v12;
          v19 = 2114;
          v20 = v8;
          v21 = 2114;
          v22 = v5;
          v13 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "[%{public}@] Pushed purgeable amounts: %{public}@ for volume: %{public}@", buf, 0x20u);
        }
      }

      else
      {
        v8 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 138543618;
          v18 = objc_opt_class();
          v19 = 2114;
          v20 = v5;
          v14 = v18;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "[%{public}@] Nothing to push for volume: %{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v8 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v18 = objc_opt_class();
        v19 = 2114;
        v20 = 0;
        v21 = 2114;
        v22 = 0;
        v9 = v18;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Unsupported targetVolume: %{public}@ volume: %{public}@", buf, 0x20u);
      }
    }
  }
}

void sub_10029AC78(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    sub_10029A3D4(*(a1 + 32), @"Update Push", @"com.apple.appstored");
  }

  sub_10029A9B0(*(a1 + 32), 1);
  v2 = *(a1 + 32);

  sub_10029A9B0(v2, 2);
}

void sub_10029ADB0(id a1)
{
  v1 = [GaletteStore alloc];
  v5 = sub_1001C0DF0();
  v2 = sub_1001C0EC4(v5);
  v3 = [(SQLiteDatabaseStore *)v1 initWithDatabase:v2];
  v4 = qword_1005AAA68;
  qword_1005AAA68 = v3;
}

void sub_10029AED8(id a1, int64_t a2, int64_t *a3, id *a4)
{
  if (a2)
  {
    if (a2 != 15400)
    {
      return;
    }

    v4 = &stru_1005203E0;
  }

  else
  {
    v4 = &stru_1005203C0;
  }

  *a3 = 15500;
  v5 = *a4;
  *a4 = v4;
}

void sub_10029AF14(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = v2;
    sub_1003BA14C(v2, @"DROP TABLE IF EXISTS galette;", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS galette (bundle_id TEXT NOT NULL,mode INTEGER NOT NULL,name TEXT NOT NULL,PRIMARY KEY(bundle_id));", 1, 0);
    sub_1003BA14C(v3, @"CREATE TABLE IF NOT EXISTS pending_galette_confirmation (bundle_id TEXT NOT NULL,PRIMARY KEY(bundle_id));", 1, 0);
    v2 = v3;
  }
}

void sub_10029AF94(id a1, SQLiteDatabaseStoreMigrator *a2)
{
  if (a2)
  {
    sub_1003BA14C(a2, @"CREATE TABLE IF NOT EXISTS pending_galette_confirmation (bundle_id TEXT NOT NULL,PRIMARY KEY(bundle_id));", 1, 0);
  }
}

void sub_10029B38C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

void *sub_10029B3B8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = CoordinatorPromiseProvider;
    a1 = objc_msgSendSuper2(&v9, "init");
    if (a1)
    {
      if ([v5 conformsToProtocol:&OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise])
      {
        v6 = v5;
        v7 = a1[1];
        a1[1] = v6;
      }

      else
      {

        if (!a3)
        {
          a1 = 0;
          goto LABEL_8;
        }

        v10 = NSDebugDescriptionErrorKey;
        v11 = @"Coordinator does not conform to IXCoordinatorWithAppAssetPromise";
        v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
        [NSError errorWithDomain:ASDErrorDomain code:807 userInfo:v7];
        *a3 = a1 = 0;
      }
    }
  }

LABEL_8:

  return a1;
}

void *sub_10029B4F0(void *a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = a1[1];
    v16 = 0;
    a1 = [v6 appAssetPromiseWithError:&v16];
    v7 = v16;
    if (a1)
    {
      if (!v5)
      {
        goto LABEL_9;
      }

      v8 = [a1 uniqueIdentifier];
      v9 = [v8 isEqual:v5];

      if (v9)
      {
        goto LABEL_9;
      }

      v17 = NSDebugDescriptionErrorKey;
      v10 = [a1 uniqueIdentifier];
      v11 = objc_claimAutoreleasedReturnValue();
      v18 = v11;
      v12 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];

      v13 = [NSError errorWithDomain:ASDErrorDomain code:801 userInfo:v12];

      v7 = v13;
    }

    if (a3)
    {
      v14 = v7;
      a1 = 0;
      *a3 = v7;
    }

    else
    {
      a1 = 0;
    }

LABEL_9:
  }

  return a1;
}

id sub_10029B69C(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    if (v7)
    {
      v13 = 0;
      v9 = sub_10029B4F0(a1, v7, &v13);
      v10 = v13;
      if (v9)
      {
LABEL_8:

        goto LABEL_9;
      }
    }

    v12 = 0;
    v9 = sub_10029B77C(a1, v8, &v12);
    v10 = v12;
    if (a4 && !v9)
    {
      v10 = v10;
      *a4 = v10;
    }

    goto LABEL_8;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

id sub_10029B77C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = v5;
    objc_opt_self();
    if (v7)
    {
      if (v7[6])
      {

        goto LABEL_5;
      }

      v12 = [IXPromisedStreamingZipTransfer alloc];
      v14 = objc_getProperty(v7, v13, 40, 1);
      v16 = objc_getProperty(v7, v15, 64, 1);
      v18 = v7[2];
      v17 = v7[3];
      Property = objc_getProperty(v7, v19, 32, 1);
    }

    else
    {
      v12 = [IXPromisedStreamingZipTransfer alloc];
      v17 = 0;
      v16 = 0;
      v14 = 0;
      v18 = 0;
      Property = 0;
    }

    v21 = Property;
    v9 = [v12 initWithName:v14 client:1 streamingZipOptions:v16 archiveSize:v18 diskSpaceNeeded:v17 location:v21];

    if (v9)
    {
      v22 = *(a1 + 8);
      v25 = 0;
      v23 = [v22 setAppAssetPromise:v9 error:&v25];
      v10 = v25;
      if (v23)
      {
LABEL_13:

        goto LABEL_14;
      }

      [v9 cancelForReason:v10 client:1 error:0];
LABEL_6:

      if (a3)
      {
        v11 = v10;
        v9 = 0;
        *a3 = v10;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_13;
    }

LABEL_5:
    v26 = NSDebugDescriptionErrorKey;
    v8 = [NSString stringWithFormat:@"Could not create an app data promise using %@", v7];
    v27 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    v10 = [NSError errorWithDomain:ASDErrorDomain code:703 userInfo:v9];
    goto LABEL_6;
  }

  v9 = 0;
LABEL_14:

  return v9;
}

void *sub_10029B9F0(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    a1 = sub_10029B4F0(a1, a2, a3);
    v3 = vars8;
  }

  return a1;
}

id sub_10029BA20(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (a1)
  {
    a1 = sub_10029B77C(a1, a3, a4);
    v4 = vars8;
  }

  return a1;
}

id sub_10029BA64()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10029BB08;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AAA80 != -1)
  {
    dispatch_once(&qword_1005AAA80, block);
  }

  v0 = qword_1005AAA78;

  return v0;
}

void sub_10029BB08()
{
  v0 = sub_10029BBB4();
  if (v0)
  {
    v5 = v0;
    v1 = [v0 URLByAppendingPathComponent:@"Library/"];
    v2 = +[NSFileManager defaultManager];
    [v2 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:0];

    v3 = [v1 path];
    v4 = qword_1005AAA78;
    qword_1005AAA78 = v3;

    v0 = v5;
  }
}

id sub_10029BBB4()
{
  objc_opt_self();
  if (qword_1005AAAA0 != -1)
  {
    dispatch_once(&qword_1005AAAA0, &stru_100520400);
  }

  v0 = qword_1005AAA98;

  return v0;
}

id sub_10029BC0C()
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10029BCB0;
  block[3] = &unk_10051BD00;
  block[4] = objc_opt_self();
  if (qword_1005AAA90 != -1)
  {
    dispatch_once(&qword_1005AAA90, block);
  }

  v0 = qword_1005AAA88;

  return v0;
}

void sub_10029BCB0()
{
  v0 = sub_10029BBB4();
  if (v0)
  {
    v6 = v0;
    v1 = [v0 URLByAppendingPathComponent:@"Library/Caches/"];
    v2 = [v1 URLByAppendingPathComponent:@"Scratch"];
    v3 = +[NSFileManager defaultManager];
    [v3 createDirectoryAtURL:v2 withIntermediateDirectories:1 attributes:0 error:0];

    v4 = [v2 path];
    v5 = qword_1005AAA88;
    qword_1005AAA88 = v4;

    v0 = v6;
  }
}

id sub_10029BD7C()
{
  objc_opt_self();
  v0 = sub_10029BC0C();
  v1 = [v0 stringByAppendingPathComponent:@"ODR"];

  return v1;
}

id sub_10029BDD4()
{
  v0 = objc_opt_self();

  return sub_10029BE04(v0, @"com.apple.appstored");
}

id sub_10029BE04(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = v2;
  v4 = objc_opt_self();
  v5 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v6 = [v5 firstObject];

  if (v6)
  {
    v7 = [NSURL fileURLWithPath:v6];
    v8 = sub_10029C474(v4, v7, v3);
  }

  else
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v12 = 134218498;
      v13 = 13;
      v14 = 2048;
      v15 = 1;
      v16 = 2114;
      v17 = v3;
      _os_log_fault_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Unable to determine path for directory: %ld domain mask: %lu with path component: %{public}@", &v12, 0x20u);
    }

    v8 = 0;
  }

  v10 = [v8 path];

  return v10;
}

void sub_10029BF9C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_self();
  objc_opt_self();
  v4 = sub_10029BE04(v3, v2);

  v5 = &off_1005493F8;
  v27 = v4;
  objc_opt_self();
  v6 = +[NSFileManager defaultManager];
  v37 = 0;
  v7 = [v6 contentsOfDirectoryAtPath:v27 error:&v37];
  v8 = v37;

  if (v7)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v10)
    {
      v11 = v10;
      v25 = v8;
      v26 = v7;
      v12 = *v34;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v34 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v33 + 1) + 8 * i);
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v15 = &off_1005493F8;
          v16 = [&off_1005493F8 countByEnumeratingWithState:&v29 objects:v42 count:16];
          if (v16)
          {
            v17 = *v30;
            while (2)
            {
              for (j = 0; j != v16; j = j + 1)
              {
                if (*v30 != v17)
                {
                  objc_enumerationMutation(&off_1005493F8);
                }

                if ([v14 hasPrefix:{*(*(&v29 + 1) + 8 * j), v25, v26}])
                {
                  LOBYTE(v16) = 1;
                  goto LABEL_17;
                }
              }

              v16 = [&off_1005493F8 countByEnumeratingWithState:&v29 objects:v42 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:

          v19 = [v27 stringByAppendingPathComponent:v14];
          if (v16)
          {
            v20 = ASDLogHandleForCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              v39 = v19;
              _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Keeping allow listed file: %{public}@", buf, 0xCu);
            }
          }

          else
          {
            v21 = +[NSFileManager defaultManager];
            v28 = 0;
            v22 = [v21 removeItemAtPath:v19 error:&v28];
            v20 = v28;

            v23 = ASDLogHandleForCategory();
            v24 = v23;
            if (v22)
            {
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v39 = v19;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Deleted file that didn't match allow list: %{public}@", buf, 0xCu);
              }
            }

            else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v39 = v19;
              v40 = 2114;
              v41 = v20;
              _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Failed to delete file that didn't match allow list: %{public}@ error: %{public}@", buf, 0x16u);
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v11);
      v8 = v25;
      v7 = v26;
    }
  }

  else
  {
    v9 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v43 = 138543618;
      v44 = v27;
      v45 = 2114;
      v46 = v8;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to fetch contents of: %{public}@ error: %{public}@", v43, 0x16u);
    }
  }
}

id sub_10029C3D4()
{
  objc_opt_self();

  return sub_10029C3FC();
}

id sub_10029C3FC()
{
  v0 = objc_opt_self();
  v1 = sub_10029BBB4();
  v2 = sub_10029C474(v0, v1, @"Documents/Persistence");

  v3 = [v2 path];

  return v3;
}

id sub_10029C474(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  objc_opt_self();
  v6 = [v5 URLByAppendingPathComponent:v4];

  if (v6)
  {
    v7 = +[NSFileManager defaultManager];
    v12 = 0;
    v8 = [v7 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:&v12];
    v9 = v12;

    if ((v8 & 1) == 0)
    {
      v10 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v14 = v6;
        v15 = 2114;
        v16 = v9;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to create directory: %{public}@ error: %{public}@", buf, 0x16u);
      }

      v6 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v6;
}

void sub_10029C5DC(id a1)
{
  v1 = container_system_path_for_identifier();
  if (v1)
  {
    v3 = v1;
    v4 = [NSURL fileURLWithFileSystemRepresentation:v1 isDirectory:1 relativeToURL:0];
    v5 = qword_1005AAA98;
    qword_1005AAA98 = v4;

    free(v3);
  }

  else
  {
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      *buf = 134217984;
      v28 = 0;
      _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "Failed to determine container path error: %llu", buf, 0xCu);
    }
  }

  if (qword_1005AAA98)
  {
    v25[0] = @".";
    v23[0] = NSURLIsExcludedFromBackupKey;
    v23[1] = NSURLFileProtectionKey;
    v24[0] = &__kCFBooleanFalse;
    v24[1] = NSURLFileProtectionNone;
    v6 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
    v26[0] = v6;
    v25[1] = @"Documents";
    v21[0] = NSURLIsExcludedFromBackupKey;
    v21[1] = NSURLFileProtectionKey;
    v22[0] = &__kCFBooleanTrue;
    v22[1] = NSURLFileProtectionNone;
    v7 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:2];
    v26[1] = v7;
    v25[2] = @"Library";
    v19[0] = NSURLIsExcludedFromBackupKey;
    v19[1] = NSURLFileProtectionKey;
    v20[0] = &__kCFBooleanFalse;
    v20[1] = NSURLFileProtectionNone;
    v8 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v26[2] = v8;
    v25[3] = @"Library/Caches";
    v17[0] = NSURLIsExcludedFromBackupKey;
    v17[1] = NSURLFileProtectionKey;
    v18[0] = &__kCFBooleanTrue;
    v18[1] = NSURLFileProtectionNone;
    v9 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    v26[3] = v9;
    v25[4] = @"Library/Preferences";
    v15[0] = NSURLIsExcludedFromBackupKey;
    v15[1] = NSURLFileProtectionKey;
    v16[0] = &__kCFBooleanTrue;
    v16[1] = NSURLFileProtectionCompleteUntilFirstUserAuthentication;
    v10 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:2];
    v26[4] = v10;
    v25[5] = @"tmp";
    v13[0] = NSURLIsExcludedFromBackupKey;
    v13[1] = NSURLFileProtectionKey;
    v14[0] = &__kCFBooleanTrue;
    v14[1] = NSURLFileProtectionNone;
    v11 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    v26[5] = v11;
    v12 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:6];

    [v12 enumerateKeysAndObjectsUsingBlock:&stru_100520440];
  }
}

void sub_10029C8D4(id a1, NSString *a2, NSDictionary *a3, BOOL *a4)
{
  v5 = qword_1005AAA98;
  v6 = a3;
  v7 = [v5 URLByAppendingPathComponent:a2];
  v11 = 0;
  v8 = [v7 setResourceValues:v6 error:&v11];

  v9 = v11;
  if ((v8 & 1) == 0)
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v9;
      _os_log_fault_impl(&_mh_execute_header, v10, OS_LOG_TYPE_FAULT, "Failed to set attributes for: %{public}@ error: %{public}@", buf, 0x16u);
    }
  }
}

void *sub_10029C9E8(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = PurchaseHistoryHideShowRequestEncoder;
    a1 = objc_msgSendSuper2(&v7, "init");
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;
    }
  }

  return a1;
}

void *sub_10029CD64(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = PairedDeviceApplicationCatalog;
    v5 = objc_msgSendSuper2(&v10, "init");
    a1 = v5;
    if (v5)
    {
      objc_storeStrong(v5 + 1, a2);
      v6 = +[ACXDeviceConnection sharedDeviceConnection];
      v7 = a1[2];
      a1[2] = v6;

      v8 = sub_100394290();
      sub_1003948DC(v8, a1);
    }
  }

  return a1;
}

id sub_10029D028(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v3 = dispatch_semaphore_create(0);
  v4 = sub_1002B0154();
  v5 = [*(*(a1 + 32) + 8) pairingID];
  v6 = sub_1002B08FC(v4, v5);

  if (v6)
  {
    v7 = *(a1 + 32);
    v9 = *(v7 + 8);
    v8 = *(v7 + 16);
    if (v6[18])
    {
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10029D284;
      v25[3] = &unk_100520468;
      v25[4] = v7;
      v10 = &v26;
      v26 = v3;
      v11 = &v27;
      v27 = *(a1 + 40);
      v12 = &v28;
      v28 = v2;
      [v8 enumerateInstalledApplicationsOnPairedDevice:v9 withBlock:v25];
      goto LABEL_6;
    }
  }

  else
  {
    v7 = *(a1 + 32);
    v9 = *(v7 + 8);
    v8 = *(v7 + 16);
  }

  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_10029D64C;
  v20 = &unk_100520490;
  v21 = v7;
  v10 = &v22;
  v22 = *(a1 + 40);
  v11 = &v23;
  v23 = v2;
  v12 = &v24;
  v24 = v3;
  [v8 fetchInstalledApplicationsForPairedDevice:v9 completion:&v17];
LABEL_6:

  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  v13 = sub_1003649C8();
  v14 = sub_10036662C(v13);

  if ([v14 count])
  {
    [v2 addObjectsFromArray:v14];
  }

  v15 = [v2 objectEnumerator];

  return v15;
}

uint64_t sub_10029D284(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = sub_10029D3B8(*(a1 + 32), v5);
    if (v8 && [*(a1 + 48) evaluateWithObject:v8])
    {
      [*(a1 + 56) addObject:v8];
    }
  }

  else
  {
    if (v6)
    {
      v9 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = *(*(a1 + 32) + 8);
        v12 = 138543618;
        v13 = v11;
        v14 = 2114;
        v15 = v7;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed while fetching from: %{public}@ error: %{public}@", &v12, 0x16u);
      }
    }

    dispatch_semaphore_signal(*(a1 + 40));
  }

  return 1;
}

id sub_10029D3B8(id a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 isBetaApp];
    v6 = [v4 isSystemApp];
    v7 = 512;
    if (!v6)
    {
      v7 = 0;
    }

    v8 = v7 | v5;
    if (([v4 isSystemApp] & 1) == 0 && !objc_msgSend(v4, "isProfileValidated"))
    {
      v8 |= 0x100uLL;
    }

    v9 = [ASDApp alloc];
    v10 = [v4 bundleIdentifier];
    a1 = [v9 initWithBundleID:v10];

    v11 = [v4 bundleShortVersion];
    [a1 setBundleShortVersion:v11];

    v12 = [v4 bundleVersion];
    [a1 setBundleVersion:v12];

    [a1 setWatchApplicationMode:{objc_msgSend(v4, "applicationMode")}];
    v13 = [v4 storeMetadata];
    if (v13)
    {
      if ([v4 isBetaApp])
      {
        [v13 betaExternalVersionIdentifier];
      }

      else
      {
        [v13 softwareVersionExternalIdentifier];
      }
      v14 = ;
      [a1 setStoreExternalVersionID:{objc_msgSend(v14, "longLongValue")}];

      v15 = [v13 artistName];
      [a1 setArtistName:v15];

      v16 = [v13 downloaderID];
      [a1 setDownloaderDSID:{objc_msgSend(v16, "longLongValue")}];

      v17 = [v13 familyID];
      [a1 setFamilyID:{objc_msgSend(v17, "longLongValue")}];

      v18 = [v13 purchaserID];
      [a1 setPurchaserDSID:{objc_msgSend(v18, "longLongValue")}];

      v19 = [v13 itemID];
      [a1 setStoreItemID:{objc_msgSend(v19, "longLongValue")}];

      v20 = [v13 storeCohort];
      [a1 setStoreCohort:v20];

      v21 = [v13 storefront];
      [a1 setStoreFront:v21];
    }

    v22 = [v4 applicationName];
    [a1 setLocalizedName:v22];

    [a1 setStatus:v8 | 4];
  }

  return a1;
}

void sub_10029D64C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [v5 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v5 objectForKeyedSubscript:v12];
        v14 = sub_10029D830(*(a1 + 32), v12, v13);
        if ([*(a1 + 40) evaluateWithObject:v14])
        {
          [*(a1 + 48) addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v9);
  }

  if (v6)
  {
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(a1 + 32) + 8);
      *buf = 138543618;
      v22 = v16;
      v23 = 2114;
      v24 = v6;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed while fetching from: %{public}@ error: %{public}@", buf, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

id sub_10029D830(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v4 = a3;
    v5 = a2;
    v6 = [[ASDApp alloc] initWithBundleID:v5];

    v7 = [v4 objectForKeyedSubscript:ACXShowAppOnWatchKey];
    LODWORD(v5) = [v7 BOOLValue];

    if (v5)
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }

    v9 = [v4 objectForKeyedSubscript:ACXBetaAppKey];
    v10 = [v9 BOOLValue];

    v11 = v8 | v10;
    v12 = [v4 objectForKeyedSubscript:ACXAppShipsWithOS];

    v13 = [v12 BOOLValue];
    v14 = v11 | 0x200;
    if (!v13)
    {
      v14 = v11;
    }

    if (v10)
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 | 0x100;
    }

    [v6 setStatus:v15];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_10029DA30(uint64_t a1)
{
  v2 = dispatch_semaphore_create(0);
  v3 = objc_alloc_init(NSMutableArray);
  v4 = sub_1002B0154();
  v5 = [*(*(a1 + 32) + 8) pairingID];
  v6 = sub_1002B08FC(v4, v5);

  if (v6 && (v6[18] & 1) != 0)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v7 = *(a1 + 40);
    v8 = [v7 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      obj = v7;
      v10 = v3;
      v11 = *v36;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v36 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v35 + 1) + 8 * i);
          v14 = *(a1 + 32);
          v16 = *(v14 + 8);
          v15 = *(v14 + 16);
          v31[0] = _NSConcreteStackBlock;
          v31[1] = 3221225472;
          v31[2] = sub_10029DD14;
          v31[3] = &unk_1005204E0;
          v31[4] = v14;
          v32 = v10;
          v33 = v13;
          v34 = v2;
          [v15 fetchApplicationOnPairedDevice:v16 withBundleID:v13 completion:v31];
        }

        v9 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v9);
      v3 = v10;
      v7 = obj;
    }
  }

  else
  {
    v17 = *(a1 + 32);
    v19 = *(v17 + 8);
    v18 = *(v17 + 16);
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10029DE2C;
    v26[3] = &unk_100520490;
    v20 = *(a1 + 40);
    v21 = *(a1 + 32);
    v27 = v20;
    v28 = v21;
    v29 = v3;
    v22 = v2;
    v30 = v22;
    [v18 fetchInstalledApplicationsForPairedDevice:v19 completion:v26];
    dispatch_semaphore_wait(v22, 0xFFFFFFFFFFFFFFFFLL);

    v7 = v27;
  }

  v23 = [v3 objectEnumerator];

  return v23;
}

void sub_10029DD14(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = sub_10029D3B8(*(a1 + 32), a2);
    if (v6)
    {
      [*(a1 + 40) addObject:v6];
    }
  }

  else
  {
    v6 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 48);
      v8 = *(*(a1 + 32) + 8);
      v9 = 138543874;
      v10 = v7;
      v11 = 2114;
      v12 = v8;
      v13 = 2114;
      v14 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to fetch: %{public}@ from: %{public}@ error: %{public}@", &v9, 0x20u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

void sub_10029DE2C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = [v5 objectForKeyedSubscript:{v12, v17}];
        if (v13)
        {
          v14 = sub_10029D830(*(a1 + 40), v12, v13);
          [*(a1 + 48) addObject:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v9);
  }

  if (v6)
  {
    v15 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = *(*(a1 + 40) + 8);
      *buf = 138543618;
      v22 = v16;
      v23 = 2114;
      v24 = v6;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed while fetching from: %{public}@ error: %{public}@", buf, 0x16u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

id sub_10029E758(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_10029BA64();
    v2 = [v1 stringByAppendingPathComponent:@"apps.plist"];
    v3 = [[NSArray alloc] initWithContentsOfFile:v2];
    if (v3)
    {
      v4 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = objc_opt_class();
        v6 = v5;
        v7 = [v3 componentsJoinedByString:{@", "}];
        v10 = 138543618;
        v11 = v5;
        v12 = 2114;
        v13 = v7;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Found commonly used apps: [%{public}@]", &v10, 0x16u);
      }

      v8 = v3;
    }

    else
    {
      v8 = &__NSArray0__struct;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_10029E8DC(uint64_t a1)
{
  if (a1)
  {
    v1 = objc_alloc_init(_TtC9appstored6LogKey);
    v2 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v96 = objc_opt_class();
      v97 = 2112;
      v98 = v1;
      v3 = v96;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] Persisting usage for restore prioritization", buf, 0x16u);
    }

    v4 = v1;
    v5 = +[NSMutableSet set];
    sub_100336360();
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    obj = v83 = 0u;
    v6 = [obj countByEnumeratingWithState:&v80 objects:buf count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v81;
      v9 = LSUserApplicationType;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v81 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v80 + 1) + 8 * i);
          v12 = [v11 typeForInstallMachinery];
          if ([v12 isEqualToString:v9])
          {
            v13 = [v11 bundleIdentifier];
            [v5 addObject:v13];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v80 objects:buf count:16];
      }

      while (v7);
    }

    v14 = +[_TtC9appstored13LaunchHistory shared];
    v15 = [v14 syncIfNeededWithLogKey:v4];

    v73 = v15;
    v16 = [v15 error];

    if (v16)
    {
      v17 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = objc_opt_class();
        *v92 = 138543618;
        *&v92[4] = v18;
        v93 = 2112;
        v94 = v4;
        v19 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "[%{public}@] [%@] History sync complete", v92, 0x16u);
      }
    }

    v20 = [NSDate dateWithTimeIntervalSinceNow:-604800.0];
    v21 = [NSDateInterval alloc];
    v22 = +[NSDate date];
    v72 = v20;
    v23 = [v21 initWithStartDate:v20 endDate:v22];

    v24 = +[_TtC9appstored13LaunchHistory shared];
    v74 = v4;
    v71 = v23;
    v25 = [v24 getBiomeLaunchesWithLogKey:v4 dateInterval:v23 latestLaunchOnly:0];

    v26 = +[NSMutableDictionary dictionary];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v27 = v25;
    v28 = [v27 countByEnumeratingWithState:&v76 objects:v92 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v77;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v77 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v76 + 1) + 8 * j);
          v33 = sub_10038AD6C(v32);
          v34 = [v5 containsObject:v33];

          if (v34)
          {
            v35 = sub_10038AD6C(v32);
            v36 = [v26 objectForKeyedSubscript:v35];

            if (v36)
            {
              v37 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v36 integerValue] + 1);
              v38 = sub_10038AD6C(v32);
              [v26 setObject:v37 forKeyedSubscript:v38];
            }

            else
            {
              v37 = sub_10038AD6C(v32);
              [v26 setObject:&off_100547920 forKeyedSubscript:v37];
            }
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v76 objects:v92 count:16];
      }

      while (v29);
    }

    if ([v26 count])
    {
      v39 = [v26 keysSortedByValueUsingComparator:&stru_100520548];
      v40 = llround([v5 count] * 0.15);
      if (v40 >= 25)
      {
        v41 = 25;
      }

      else
      {
        v41 = v40;
      }

      v42 = [v39 count];
      if (v42 >= v41)
      {
        v43 = v41;
      }

      else
      {
        v43 = v42;
      }

      if (v43 < 1)
      {
        v47 = &__NSArray0__struct;
      }

      else
      {
        v44 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = objc_opt_class();
          *v84 = 138543618;
          v85 = v45;
          v86 = 2114;
          v87 = v26;
          v46 = v45;
          _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "[%{public}@] All ranked apps: %{public}@", v84, 0x16u);
        }

        v47 = [v39 subarrayWithRange:{0, v43}];
        v48 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          v49 = objc_opt_class();
          v50 = v49;
          v51 = [v47 count];
          v52 = [v5 count];
          *v84 = 138544130;
          v85 = v49;
          v86 = 2048;
          v87 = v51;
          v88 = 2048;
          v89 = v52;
          v90 = 2114;
          v91 = v47;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ranked %ld apps out of %ld candidate(s). Ranked apps: %{public}@", v84, 0x2Au);
        }
      }
    }

    else
    {
      v47 = &__NSArray0__struct;
    }

    if ([v47 count])
    {
      v53 = v74;
      *v92 = 0;
      v54 = [NSPropertyListSerialization dataWithPropertyList:v47 format:100 options:0 error:v92];
      v55 = *v92;
      if (v55)
      {
        v56 = ASDLogHandleForCategory();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v57 = objc_opt_class();
          *buf = 138543874;
          v96 = v57;
          v97 = 2112;
          v98 = v53;
          v99 = 2114;
          v100 = v55;
          v58 = v57;
          _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "[%{public}@] [%@] Unable to write apps usage due serialization: %{public}@", buf, 0x20u);
        }
      }

      else
      {
        v63 = sub_10029BA64();
        v56 = v63;
        if (v63)
        {
          v64 = [v63 stringByAppendingPathComponent:@"apps.plist"];
          [v54 writeToFile:v64 atomically:1];
          v65 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            v66 = objc_opt_class();
            *buf = 138543874;
            v96 = v66;
            v97 = 2112;
            v98 = v53;
            v99 = 2112;
            v100 = v64;
            v67 = v66;
            _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "[%{public}@] [%@] Wrote app usage to path: %@", buf, 0x20u);
          }
        }

        else
        {
          v64 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            v69 = objc_opt_class();
            *buf = 138543618;
            v96 = v69;
            v97 = 2112;
            v98 = v53;
            v70 = v69;
            _os_log_error_impl(&_mh_execute_header, v64, OS_LOG_TYPE_ERROR, "[%{public}@] [%@] Unable to write apps usage due to not being able to find the container path", buf, 0x16u);
          }
        }
      }

      v59 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_61;
      }

      v68 = objc_opt_class();
      *buf = 138543618;
      v96 = v68;
      v97 = 2112;
      v98 = v53;
      v61 = v68;
      v62 = "[%{public}@] [%@] Wrote app usage";
    }

    else
    {
      v59 = ASDLogHandleForCategory();
      if (!os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
LABEL_61:

        return;
      }

      v60 = objc_opt_class();
      *buf = 138543618;
      v96 = v60;
      v97 = 2112;
      v98 = v74;
      v61 = v60;
      v62 = "[%{public}@] [%@] No app usage to save";
    }

    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, v62, buf, 0x16u);

    goto LABEL_61;
  }
}

int64_t sub_10029F260(id a1, NSNumber *a2, NSNumber *a3)
{
  v4 = a3;
  v5 = [(NSNumber *)a2 integerValue];
  v6 = [(NSNumber *)v4 integerValue];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v5 < v6;
  }
}

id sub_10029F2B8(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v3 = v2[3];
    v4 = v2[2];
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  v5 = v4;
  v6 = [AMSDialogRequest requestWithTitle:v3 message:v5];

  v7 = ASDLocalizedString();
  v8 = [AMSDialogAction actionWithTitle:v7 style:2];

  [v8 setIdentifier:@"AuthenticationChallengeDialogActionCancel"];
  [v6 addButtonAction:v8];
  v9 = ASDLocalizedString();
  v10 = [AMSDialogAction actionWithTitle:v9 style:0];

  [v10 setIdentifier:@"AuthenticationChallengeDialogActionOkay"];
  [v6 addButtonAction:v10];
  v11 = ASDLocalizedString();
  v12 = [AMSDialogTextField textFieldWithPlaceholder:v11 secure:0];

  [v12 setKeyboardType:0];
  v13 = sub_10033A69C(v2);

  [v12 setText:v13];
  [v6 addTextField:v12];
  v14 = ASDLocalizedString();
  v15 = [AMSDialogTextField textFieldWithPlaceholder:v14 secure:1];

  [v15 setKeyboardType:0];
  [v6 addTextField:v15];

  return v6;
}

id *sub_10029F4D8(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = [a1 init];
    a1 = v8;
    if (v8)
    {
      objc_storeStrong(v8 + 5, a2);
      objc_storeStrong(a1 + 4, a3);
    }
  }

  return a1;
}

void sub_10029F558(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v6 = +[ACAccountStore ams_sharedAccountStore];
      v5 = [v6 ams_activeiTunesAccount];

      if (!v5)
      {
        (*(v3 + 2))(v3, 0, 0);
        goto LABEL_6;
      }
    }

    v7 = +[BagService appstoredService];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10029F680;
    v9[3] = &unk_10051D970;
    v10 = v5;
    v11 = v3;
    v9[4] = a1;
    v8 = v5;
    [v7 recentBagWithCompletionHandler:v9];
  }

LABEL_6:
}

void sub_10029F680(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 48);
    v6 = *(a1 + 40);
    v7 = v5;
    if (!v4)
    {
LABEL_30:

      return;
    }

    v8 = a2;
    v9 = objc_alloc_init(URLRequestProperties);
    sub_10033C9D4(v9, v6);
    sub_10033CB98(v9, *(v4 + 16));
    v10 = [v8 URLForKey:@"fsEntitlementsSrv"];

    sub_10033D69C(v9, v10);
    v11 = *(v4 + 56);
    if (v11 > 3)
    {
      if (v11 <= 5)
      {
        if (v11 == 4)
        {
          v12 = @"TV";
        }

        else
        {
          v12 = @"iCloud";
        }

        goto LABEL_25;
      }

      if (v11 == 6)
      {
        v12 = @"Podcasts";
        goto LABEL_25;
      }

      if (v11 == 7)
      {
        sub_10033DA38(v9, @"HWBundle", @"segment");
        v14 = +[AMSDevice serialNumber];
        if ([v14 length])
        {
          sub_10033DA38(v9, v14, @"serialNumber");
        }

        goto LABEL_26;
      }
    }

    else
    {
      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v12 = @"Activity";
        }

        else
        {
          v12 = @"Music";
        }

        goto LABEL_25;
      }

      if (!v11)
      {
        v12 = @"News";
        goto LABEL_25;
      }

      if (v11 == 1)
      {
        v12 = @"AppStore";
LABEL_25:
        sub_10033DA38(v9, v12, @"segment");
LABEL_26:
        v16 = *(v4 + 40);
        if (v16)
        {
          v17 = objc_getProperty(v16, v15, 32, 1);
          sub_10033CEF4(v9, v17);
        }

        v18 = sub_100235EC8([URLRequest alloc], v9);
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10029F964;
        v19[3] = &unk_100520578;
        v19[4] = v4;
        v21 = v7;
        v20 = v6;
        sub_100235F3C(v18, v19);

        goto LABEL_29;
      }
    }

    v18 = ASDErrorWithDescription();
    (*(v7 + 2))(v7, 0, v18);
LABEL_29:

    goto LABEL_30;
  }

  v13 = *(*(a1 + 48) + 16);

  v13();
}

void sub_10029F964(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = a2;
    objc_opt_self();
    if ([v7 responseStatusCode] == 200)
    {
      v8 = [v7 object];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [v8 objectForKey:@"status"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 integerValue])
        {
          v10 = [v8 objectForKey:@"errorNumber"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
          }

          else
          {
            v11 = v9;
          }

          v12 = [v11 integerValue];
          v13 = [v8 objectForKey:@"errorMessage"];
          v14 = v13;
          v15 = @"Unknown server error";
          if (v13)
          {
            v15 = v13;
          }

          v16 = v15;

          v17 = ASDServerErrorDomain;
          v45 = NSDebugDescriptionErrorKey;
          *v40 = v16;
          v18 = [NSDictionary dictionaryWithObjects:v40 forKeys:&v45 count:1];
          v19 = [NSError errorWithDomain:v17 code:v12 userInfo:v18];

          goto LABEL_17;
        }

        v28 = [v8 objectForKeyedSubscript:@"entitlements"];
        v29 = sub_100398F44([SubscriptionEntitlementsResponse alloc], v28);

        if (v29)
        {
          v30 = ASDLogHandleForCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = *(*(a1 + 32) + 32);
            *v40 = 138412290;
            *&v40[4] = v31;
            _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[%@] Entitlement fetch succeeded", v40, 0xCu);
          }

          (*(*(a1 + 48) + 16))();
          v32 = 0;
          goto LABEL_35;
        }
      }

      else
      {
      }

      v19 = 0;
      goto LABEL_27;
    }

    v26 = ASDErrorDomain;
    v43 = ASDErrorHTTPStatusCodeKey;
    v27 = [v7 responseStatusCode];

    v8 = [NSNumber numberWithInteger:v27];
    v44 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    v19 = [NSError errorWithDomain:v26 code:521 userInfo:v9];
LABEL_17:

LABEL_27:
    v33 = v19;

    v32 = v19;
    IsEqual = ASDErrorIsEqual();
    v35 = ASDLogHandleForCategory();
    v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    if (IsEqual)
    {
      if (v36)
      {
        v37 = *(*(a1 + 32) + 32);
        *v40 = 138412290;
        *&v40[4] = v37;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%@] Entitlement fetch failed with a no authorization error", v40, 0xCu);
      }

      sub_10029FF04(*(a1 + 32), *(a1 + 40), v32, *(a1 + 48));
    }

    else
    {
      if (v36)
      {
        v38 = *(*(a1 + 32) + 32);
        *v40 = 138412546;
        *&v40[4] = v38;
        v41 = 2114;
        v42 = v32;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[%@] Entitlement fetch failed due to error: %{public}@", v40, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
    }

    v29 = 0;
LABEL_35:

    goto LABEL_36;
  }

  v20 = [v5 userInfo];
  v21 = [v20 objectForKey:AMSErrorUserInfoKeyStatusCode];
  v22 = [v21 integerValue];

  v23 = ASDLogHandleForCategory();
  v24 = v23;
  if (v22 == 401)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(*(a1 + 32) + 32);
      *v40 = 138412290;
      *&v40[4] = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%@] Entitlement fetch failed with a HTTP status 401 error", v40, 0xCu);
    }

    sub_10029FF04(*(a1 + 32), *(a1 + 40), v6, *(a1 + 48));
  }

  else
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v39 = *(*(a1 + 32) + 32);
      *v40 = 138412546;
      *&v40[4] = v39;
      v41 = 2114;
      v42 = v6;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "[%@] Entitlement fetch failed with error: %{public}@", v40, 0x16u);
    }

    (*(*(a1 + 48) + 16))();
  }

LABEL_36:
}

void sub_10029FF04(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      if (*(a1 + 48))
      {
        v12 = @"loud";
      }

      else
      {
        v12 = @"silent";
      }

      v13 = [v7 ams_DSID];
      *buf = 138412802;
      v33 = v11;
      v34 = 2114;
      v35 = v12;
      v36 = 2114;
      v37 = v13;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%@] Attempting to %{public}@ auth for accountID: %{public}@", buf, 0x20u);
    }

    v14 = *(a1 + 40);
    if (v14 && ([v14 isInternal] & 1) == 0 && (objc_msgSend(*(a1 + 40), "notificationClient"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "supportedDialogHandlers"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "handlesAuthentication"), v16, v15, v17) && (objc_msgSend(*(a1 + 40), "notificationClient"), v18 = objc_claimAutoreleasedReturnValue(), sub_10031187C(CallerRequestPresenter, v18), v19 = objc_claimAutoreleasedReturnValue(), v18, v19))
    {
      v20 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 32);
        *buf = 138412290;
        v33 = v21;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%@] Delivering presentation requests to notification client", buf, 0xCu);
      }
    }

    else
    {
      v19 = objc_opt_new();
    }

    v22 = objc_alloc_init(AMSAuthenticateOptions);
    [v22 setCanMakeAccountActive:0];
    [v22 setAuthenticationType:*(a1 + 48) ^ 1];
    if (*(a1 + 40))
    {
      v23 = [NSString stringWithFormat:@"%@ - SubscriptionEntitlementsRequest", *(a1 + 40)];
      [v22 setDebugReason:v23];

      v24 = [*(a1 + 40) processInfo];
      [v22 setClientInfo:v24];
      v25 = [v24 bundleIdentifier];
      [v22 setProxyAppBundleID:v25];
    }

    else
    {
      [v22 setDebugReason:@"SubscriptionEntitlementsRequest"];
    }

    v26 = [[AMSAuthenticateRequest alloc] initWithAccount:*(a1 + 8) options:v22];
    v27 = [*(a1 + 32) description];
    [v26 setLogKey:v27];

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1002A02B8;
    v28[3] = &unk_1005205A0;
    v28[4] = a1;
    v31 = v9;
    v29 = v7;
    v30 = v8;
    [v19 presentAuthenticateRequest:v26 resultHandler:v28];
  }
}

void sub_1002A02B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 account];
  if (v6)
  {
    objc_storeStrong((*(a1 + 32) + 8), v6);
    v7 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(v8 + 32);
      if (*(v8 + 48))
      {
        v10 = @"loud";
      }

      else
      {
        v10 = @"silent";
      }

      v11 = [v6 ams_DSID];
      v24 = 138412802;
      v25 = v9;
      v26 = 2114;
      v27 = v10;
      v28 = 2114;
      v29 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%@] Successfully completed %{public}@ auth accountID: %{public}@", &v24, 0x20u);
    }

    v12 = *(a1 + 32);
    if (*(v12 + 24))
    {
      v13 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(*(a1 + 32) + 32);
        v24 = 138412290;
        v25 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[%@] Retry count exceeded getting subscriptions", &v24, 0xCu);
      }

      v15 = *(a1 + 56);
      v16 = ASDErrorWithDescription();
      (*(v15 + 16))(v15, 0, v16);
    }

    else
    {
      *(v12 + 24) = 1;
      sub_10029F558(*(a1 + 32), *(a1 + 56));
    }
  }

  else
  {
    v17 = ASDLogHandleForCategory();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a1 + 32);
      v19 = *(v18 + 32);
      if (*(v18 + 48))
      {
        v20 = @"loud";
      }

      else
      {
        v20 = @"silent";
      }

      v21 = [*(a1 + 40) ams_DSID];
      v24 = 138412802;
      v25 = v19;
      v26 = 2114;
      v27 = v20;
      v28 = 2114;
      v29 = v21;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "[%@] Failed to %{public}@ auth accountID: %{public}@", &v24, 0x20u);
    }

    v22 = *(a1 + 56);
    v23 = ASDErrorBySettingUserInfoValue();
    (*(v22 + 16))(v22, 0, v23);
  }
}