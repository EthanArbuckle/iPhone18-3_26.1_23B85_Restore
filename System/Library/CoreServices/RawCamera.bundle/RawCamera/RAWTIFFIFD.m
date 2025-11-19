@interface RAWTIFFIFD
- (RAWTIFFIFD)initWithNamespace:(id)a3 reverseNamespace:(id)a4;
- (id)objectAtIndexedSubscript:(unint64_t)a3;
- (id)objectForKeyedSubscript:(id)a3;
- (void)dumpMemoryInfoKey:(id)a3 indent:(unint64_t)a4;
- (void)dumpObjCInfoKey:(id)a3 value:(id)a4 indent:(unint64_t)a5;
- (void)setObject:(id)a3 atIndexedSubscript:(unint64_t)a4;
- (void)setObject:(id)a3 forKeyedSubscript:(id)a4;
@end

@implementation RAWTIFFIFD

- (RAWTIFFIFD)initWithNamespace:(id)a3 reverseNamespace:(id)a4
{
  v6 = a3;
  v7 = a4;
  v32.receiver = self;
  v32.super_class = RAWTIFFIFD;
  v12 = [(RAWTIFFIFD *)&v32 init];
  if (v12)
  {
    v13 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v8, v9, v10, v11);
    objc_msgSend_setMTagsByID_(v12, v14, v13, v15, v16);

    v21 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v17, v18, v19, v20);
    objc_msgSend_setMTagsByName_(v12, v22, v21, v23, v24);

    objc_msgSend_setMNamespace_(v12, v25, v6, v26, v27);
    objc_msgSend_setMNamespaceReverse_(v12, v28, v7, v29, v30);
  }

  return v12;
}

- (id)objectAtIndexedSubscript:(unint64_t)a3
{
  mTagsByID = self->mTagsByID;
  v6 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, a3, v3, v4);
  v10 = objc_msgSend_objectForKeyedSubscript_(mTagsByID, v7, v6, v8, v9);

  return v10;
}

- (void)setObject:(id)a3 atIndexedSubscript:(unint64_t)a4
{
  v42 = a3;
  v9 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v6, a4, v7, v8);
  v14 = objc_msgSend_mTagsByID(self, v10, v11, v12, v13);
  objc_msgSend_setObject_forKeyedSubscript_(v14, v15, v42, v9, v16);

  v21 = objc_msgSend_mNamespace(self, v17, v18, v19, v20);
  v25 = objc_msgSend_objectForKeyedSubscript_(v21, v22, v9, v23, v24);
  v29 = objc_msgSend_objectForKeyedSubscript_(v25, v26, @"Name", v27, v28);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = objc_msgSend_mTagsByName(self, v30, v31, v32, v33);
    v39 = objc_msgSend_lowercaseString(v29, v35, v36, v37, v38);
    objc_msgSend_setObject_forKeyedSubscript_(v34, v40, v42, v39, v41);
  }
}

- (id)objectForKeyedSubscript:(id)a3
{
  v7 = a3;
  if ((atomic_load_explicit(&qword_27DE37DA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE37DA0))
  {
    qword_27DE37D98 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x277CCAC68], v4, @"([[:digit:]]+(?:%[[:digit:]]+)?\\[[[:digit:]]+\\])|([[:digit:]]+(?:%[[:digit:]]+)?)|([[:alpha:]][[:alnum:]]*(?:%[[:digit:]]+)?\\[[[:digit:]]\\])|([[:alpha:]][[:alnum:]]*(?:%[[:digit:]]+)?)", 1, 0);
    __cxa_guard_release(&qword_27DE37DA0);
  }

  if ((atomic_load_explicit(&qword_27DE37DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE37DB0))
  {
    qword_27DE37DA8 = objc_msgSend_regularExpressionWithPattern_options_error_(MEMORY[0x277CCAC68], v4, @"([[:alnum:]]+)\\[([[:digit:]]+)\\]", 1, 0);
    __cxa_guard_release(&qword_27DE37DB0);
  }

  if ((atomic_load_explicit(&qword_27DE37DC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DE37DC0))
  {
    qword_27DE37DB8 = NSClassFromString(&cfstr_Nsblock.isa);
    __cxa_guard_release(&qword_27DE37DC0);
  }

  v8 = objc_msgSend_componentsSeparatedByString_(v7, v4, @".", v5, v6);
  v13 = objc_msgSend_firstObject(v8, v9, v10, v11, v12);
  v14 = qword_27DE37D98;
  v19 = objc_msgSend_length(v13, v15, v16, v17, v18);
  v21 = objc_msgSend_firstMatchInString_options_range_(v14, v20, v13, 0, 0, v19);
  if (objc_msgSend_numberOfRanges(v21, v22, v23, v24, v25) != 5)
  {
    goto LABEL_9;
  }

  if (!objc_msgSend_rangeAtIndex_(v21, v26, 1, v27, v28))
  {
    v42 = objc_msgSend_rangeAtIndex_(v21, v29, 1, v30, v31);
    v45 = objc_msgSend_substringWithRange_(v13, v43, v42, v43, v44);
    v46 = qword_27DE37DA8;
    v51 = objc_msgSend_length(v45, v47, v48, v49, v50);
    v53 = objc_msgSend_firstMatchInString_options_range_(v46, v52, v45, 0, 0, v51);
    if (objc_msgSend_numberOfRanges(v53, v54, v55, v56, v57) == 3)
    {
      v61 = objc_msgSend_rangeAtIndex_(v53, v58, 1, v59, v60);
      v265 = objc_msgSend_substringWithRange_(v45, v62, v61, v62, v63);
      v67 = objc_msgSend_rangeAtIndex_(v53, v64, 2, v65, v66);
      v266 = objc_msgSend_substringWithRange_(v45, v68, v67, v68, v69);
      v74 = objc_msgSend_mTagsByID(self, v70, v71, v72, v73);
      v75 = MEMORY[0x277CCABB0];
      v80 = objc_msgSend_integerValue(v265, v76, v77, v78, v79);
      v84 = objc_msgSend_numberWithInteger_(v75, v81, v80, v82, v83);
      v88 = objc_msgSend_objectForKeyedSubscript_(v74, v85, v84, v86, v87);

      v93 = objc_msgSend_integerValue(v266, v89, v90, v91, v92);
      v97 = objc_msgSend_objectAtIndexedSubscript_(v88, v94, v93, v95, v96);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
LABEL_28:

        v132 = v265;
        goto LABEL_29;
      }

LABEL_27:
      v235 = v97[2](v97);

      v240 = objc_msgSend_integerValue(v266, v236, v237, v238, v239);
      objc_msgSend_setObject_atIndexedSubscript_(v88, v241, v235, v240, v242);
      v97 = v235;
      goto LABEL_28;
    }

LABEL_18:
    v41 = 0;
    goto LABEL_30;
  }

  if (objc_msgSend_rangeAtIndex_(v21, v29, 2, v30, v31))
  {
    if (objc_msgSend_rangeAtIndex_(v21, v32, 3, v33, v34))
    {
      if (objc_msgSend_rangeAtIndex_(v21, v35, 4, v36, v37))
      {
LABEL_9:
        v41 = 0;
        goto LABEL_32;
      }

      v191 = objc_msgSend_rangeAtIndex_(v21, v38, 4, v39, v40);
      v45 = objc_msgSend_substringWithRange_(v13, v192, v191, v192, v193);
      v198 = objc_msgSend_mTagsByName(self, v194, v195, v196, v197);
      v203 = objc_msgSend_lowercaseString(v45, v199, v200, v201, v202);
      v207 = objc_msgSend_objectForKeyedSubscript_(v198, v204, v203, v205, v206);

      if (objc_opt_isKindOfClass())
      {
        v97 = v207[2](v207);

        v53 = objc_msgSend_mTagsByName(self, v208, v209, v210, v211);
        v132 = objc_msgSend_lowercaseString(v45, v212, v213, v214, v215);
        objc_msgSend_setObject_forKeyedSubscript_(v53, v216, v97, v132, v217);
        goto LABEL_29;
      }

      v53 = v207;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || objc_msgSend_count(v53, v218, v219, v220, v221) != 1)
      {
        v41 = v53;
        goto LABEL_30;
      }

      v41 = objc_msgSend_firstObject(v53, v222, v223, v224, v225);

      if (objc_opt_isKindOfClass())
      {
        v132 = objc_msgSend_arrayWithArray_(MEMORY[0x277CBEB18], v226, v53, v227, v228);
        v97 = v41[2](v41);

        objc_msgSend_setObject_atIndexedSubscript_(v132, v229, v97, 0, v230);
        goto LABEL_29;
      }

LABEL_30:

      goto LABEL_31;
    }

    v135 = objc_msgSend_rangeAtIndex_(v21, v35, 3, v36, v37);
    v45 = objc_msgSend_substringWithRange_(v13, v136, v135, v136, v137);
    v138 = qword_27DE37DA8;
    v143 = objc_msgSend_length(v45, v139, v140, v141, v142);
    v53 = objc_msgSend_firstMatchInString_options_range_(v138, v144, v45, 0, 0, v143);
    if (objc_msgSend_numberOfRanges(v53, v145, v146, v147, v148) == 3)
    {
      v152 = objc_msgSend_rangeAtIndex_(v53, v149, 1, v150, v151);
      v265 = objc_msgSend_substringWithRange_(v45, v153, v152, v153, v154);
      v158 = objc_msgSend_rangeAtIndex_(v53, v155, 2, v156, v157);
      v266 = objc_msgSend_substringWithRange_(v45, v159, v158, v159, v160);
      v165 = objc_msgSend_mTagsByName(self, v161, v162, v163, v164);
      v170 = objc_msgSend_lowercaseString(v265, v166, v167, v168, v169);
      v174 = objc_msgSend_objectForKeyedSubscript_(v165, v171, v170, v172, v173);

      if (objc_opt_isKindOfClass())
      {
        v88 = v174[2](v174);

        v183 = objc_msgSend_mTagsByName(self, v179, v180, v181, v182);
        v188 = objc_msgSend_lowercaseString(v45, v184, v185, v186, v187);
        objc_msgSend_setObject_forKeyedSubscript_(v183, v189, v88, v188, v190);
      }

      else
      {
        v88 = v174;
      }

      v231 = objc_msgSend_integerValue(v266, v175, v176, v177, v178);
      v97 = objc_msgSend_objectAtIndexedSubscript_(v88, v232, v231, v233, v234);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_27;
    }

    goto LABEL_18;
  }

  v98 = objc_msgSend_rangeAtIndex_(v21, v32, 2, v33, v34);
  v45 = objc_msgSend_substringWithRange_(v13, v99, v98, v99, v100);
  v105 = objc_msgSend_mTagsByID(self, v101, v102, v103, v104);
  v106 = MEMORY[0x277CCABB0];
  v111 = objc_msgSend_integerValue(v45, v107, v108, v109, v110);
  v115 = objc_msgSend_numberWithInteger_(v106, v112, v111, v113, v114);
  v41 = objc_msgSend_objectForKeyedSubscript_(v105, v116, v115, v117, v118);

  if (objc_opt_isKindOfClass())
  {
    v97 = v41[2](v41);

    v53 = objc_msgSend_mTagsByID(self, v119, v120, v121, v122);
    v123 = MEMORY[0x277CCABB0];
    v128 = objc_msgSend_integerValue(v45, v124, v125, v126, v127);
    v132 = objc_msgSend_numberWithInteger_(v123, v129, v128, v130, v131);
    objc_msgSend_setObject_forKeyedSubscript_(v53, v133, v97, v132, v134);
LABEL_29:

    v41 = v97;
    goto LABEL_30;
  }

LABEL_31:

LABEL_32:
  if (objc_msgSend_count(v8, v243, v244, v245, v246) >= 2)
  {
    v251 = objc_msgSend_count(v8, v247, v248, v249, v250);
    v254 = objc_msgSend_subarrayWithRange_(v8, v252, 1, v251 - 1, v253);
    v258 = objc_msgSend_componentsJoinedByString_(v254, v255, @".", v256, v257);

    v262 = objc_msgSend_objectForKeyedSubscript_(v41, v259, v258, v260, v261);

    if (objc_opt_isKindOfClass())
    {
      v263 = v262[2](v262);

      v262 = v263;
    }

    v41 = v262;
  }

  return v41;
}

- (void)setObject:(id)a3 forKeyedSubscript:(id)a4
{
  v19 = a3;
  v6 = a4;
  v11 = objc_msgSend_mTagsByName(self, v7, v8, v9, v10);
  v16 = objc_msgSend_lowercaseString(v6, v12, v13, v14, v15);
  objc_msgSend_setObject_forKeyedSubscript_(v11, v17, v19, v16, v18);
}

- (void)dumpObjCInfoKey:(id)a3 value:(id)a4 indent:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = MEMORY[0x277D85DF8];
    v11 = *MEMORY[0x277D85DF8];
    sub_2337477D0(__b, a5, 9);
    v12 = v100;
    v13 = __b[0];
    v14 = v8;
    v19 = objc_msgSend_UTF8String(v14, v15, v16, v17, v18);
    v20 = __b;
    if (v12 < 0)
    {
      v20 = v13;
    }

    fprintf(v11, "%s%s : (\n", v20, v19);
    if (v100 < 0)
    {
      operator delete(__b[0]);
    }

    v98[0] = MEMORY[0x277D85DD0];
    v98[1] = 3221225472;
    v98[2] = sub_233747880;
    v98[3] = &unk_2789EE9E0;
    v98[4] = self;
    v98[5] = a5;
    objc_msgSend_enumerateObjectsUsingBlock_(v9, v21, v98, v22, v23);
    v24 = *v10;
    sub_2337477D0(__b, a5, 9);
    if (v100 >= 0)
    {
      v25 = __b;
    }

    else
    {
      v25 = __b[0];
    }

    fprintf(v24, "%s)\n", v25);
    if (v100 < 0)
    {
      operator delete(__b[0]);
    }
  }

  else
  {
    v26 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = MEMORY[0x277D85DF8];
      v28 = *MEMORY[0x277D85DF8];
      sub_2337477D0(__b, a5, 9);
      v29 = v100;
      v30 = __b[0];
      v31 = v8;
      v36 = objc_msgSend_UTF8String(v31, v32, v33, v34, v35);
      v37 = __b;
      if (v29 < 0)
      {
        v37 = v30;
      }

      fprintf(v28, "%s%s : {\n", v37, v36);
      if (v100 < 0)
      {
        operator delete(__b[0]);
      }

      v42 = objc_msgSend_count(v26, v38, v39, v40, v41);
      NSLog(&cfstr_NsdictionaryLu.isa, v42);
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = sub_233747A2C;
      v97[3] = &unk_2789EEA08;
      v97[4] = self;
      v97[5] = a5;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v26, v43, v97, v44, v45);
      v46 = *v27;
      sub_2337477D0(__b, a5, 9);
      if (v100 >= 0)
      {
        v47 = __b;
      }

      else
      {
        v47 = __b[0];
      }

      fprintf(v46, "%s}\n", v47);
      if (v100 < 0)
      {
        operator delete(__b[0]);
      }
    }

    else
    {
      v48 = v26;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v49 = *MEMORY[0x277D85DF8];
        sub_2337477D0(__b, a5, 9);
        if (v100 >= 0)
        {
          v50 = __b;
        }

        else
        {
          v50 = __b[0];
        }

        v51 = v8;
        v56 = objc_msgSend_UTF8String(v51, v52, v53, v54, v55);
        v61 = objc_msgSend_stringValue(v48, v57, v58, v59, v60);
        v62 = v61;
        v67 = objc_msgSend_UTF8String(v62, v63, v64, v65, v66);
        fprintf(v49, "%s%s : @%s\n", v50, v56, v67);

        if (v100 < 0)
        {
          operator delete(__b[0]);
        }
      }

      else
      {
        v68 = v48;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v69 = *MEMORY[0x277D85DF8];
          v70 = __b;
          sub_2337477D0(__b, a5, 9);
          if (v100 < 0)
          {
            v70 = __b[0];
          }

          v71 = v8;
          v76 = objc_msgSend_UTF8String(v71, v72, v73, v74, v75);
          v77 = v68;
          v82 = objc_msgSend_UTF8String(v77, v78, v79, v80, v81);
          fprintf(v69, "%s%s : @%s\n", v70, v76, v82);
          if (v100 < 0)
          {
            operator delete(__b[0]);
          }
        }

        else
        {
          v83 = v68;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v84 = *MEMORY[0x277D85DF8];
            v85 = __b;
            sub_2337477D0(__b, a5, 9);
            if (v100 < 0)
            {
              v85 = __b[0];
            }

            v86 = v8;
            v91 = objc_msgSend_UTF8String(v86, v87, v88, v89, v90);
            v96 = objc_msgSend_length(v83, v92, v93, v94, v95);
            fprintf(v84, "%s%s : %lu bytes\n", v85, v91, v96);
            if (v100 < 0)
            {
              operator delete(__b[0]);
            }
          }
        }
      }
    }
  }
}

- (void)dumpMemoryInfoKey:(id)a3 indent:(unint64_t)a4
{
  v162 = *MEMORY[0x277D85DE8];
  v148 = a3;
  v10 = objc_msgSend_mTagsByID(self, v6, v7, v8, v9);
  v15 = objc_msgSend_count(v10, v11, v12, v13, v14);

  if (v15)
  {
    v20 = *MEMORY[0x277D85DF8];
    v21 = __p;
    sub_2337477D0(__p, a4, 9);
    if (v159 < 0)
    {
      v21 = __p[0];
    }

    v22 = v148;
    v27 = objc_msgSend_UTF8String(v148, v23, v24, v25, v26);
    v32 = objc_msgSend_mTagsByID(self, v28, v29, v30, v31);
    v37 = objc_msgSend_count(v32, v33, v34, v35, v36);
    fprintf(v20, "%s%s : TagsByID( %lu items\n", v21, v27, v37);

    if (v159 < 0)
    {
      operator delete(__p[0]);
    }

    v42 = objc_msgSend_mTagsByID(self, v38, v39, v40, v41);
    v47 = objc_msgSend_allKeys(v42, v43, v44, v45, v46);
    v51 = objc_msgSend_sortedArrayUsingComparator_(v47, v48, &unk_284904C10, v49, v50);

    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    v52 = v51;
    v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v154, v161, 16);
    if (v58)
    {
      v59 = *v155;
      do
      {
        for (i = 0; i != v58; ++i)
        {
          if (*v155 != v59)
          {
            objc_enumerationMutation(v52);
          }

          v61 = *(*(&v154 + 1) + 8 * i);
          v62 = objc_msgSend_mTagsByID(self, v54, v55, v56, v57);
          v66 = objc_msgSend_objectForKeyedSubscript_(v62, v63, v61, v64, v65);

          v67 = v66;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v72 = objc_msgSend_stringValue(v61, v68, v69, v70, v71);
            objc_msgSend_dumpMemoryInfoKey_indent_(v67, v73, v72, a4 + 1, v74);
          }

          else
          {
            NSClassFromString(&cfstr_Nsblock.isa);
            if (objc_opt_isKindOfClass())
            {
              v72 = objc_msgSend_stringValue(v61, v75, v76, v77, v78);
              v79 = v67[2](v67);
              objc_msgSend_dumpObjCInfoKey_value_indent_(self, v80, v72, v79, a4 + 1);
            }

            else
            {
              v72 = objc_msgSend_stringValue(v61, v75, v76, v77, v78);
              objc_msgSend_dumpObjCInfoKey_value_indent_(self, v81, v72, v67, a4 + 1);
            }
          }
        }

        v58 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v54, &v154, v161, 16);
      }

      while (v58);
    }

    v82 = *MEMORY[0x277D85DF8];
    sub_2337477D0(__p, a4, 9);
    if (v159 >= 0)
    {
      v83 = __p;
    }

    else
    {
      v83 = __p[0];
    }

    fprintf(v82, "%s)\n", v83);
    if (v159 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v84 = objc_msgSend_mTagsByName(self, v16, v17, v18, v19);
  v89 = objc_msgSend_count(v84, v85, v86, v87, v88) == 0;

  if (!v89)
  {
    v90 = *MEMORY[0x277D85DF8];
    v91 = __p;
    sub_2337477D0(__p, a4, 9);
    if (v159 < 0)
    {
      v91 = __p[0];
    }

    v92 = v148;
    v97 = objc_msgSend_UTF8String(v148, v93, v94, v95, v96);
    v102 = objc_msgSend_mTagsByName(self, v98, v99, v100, v101);
    v107 = objc_msgSend_count(v102, v103, v104, v105, v106);
    fprintf(v90, "%s%s : TagsByName( %lu items\n", v91, v97, v107);

    if (v159 < 0)
    {
      operator delete(__p[0]);
    }

    v112 = objc_msgSend_mTagsByName(self, v108, v109, v110, v111);
    v117 = objc_msgSend_allKeys(v112, v113, v114, v115, v116);
    v121 = objc_msgSend_sortedArrayUsingComparator_(v117, v118, &unk_284904C30, v119, v120);

    v152 = 0u;
    v153 = 0u;
    v150 = 0u;
    v151 = 0u;
    obj = v121;
    v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v122, &v150, v160, 16);
    if (v126)
    {
      v127 = *v151;
      do
      {
        for (j = 0; j != v126; ++j)
        {
          if (*v151 != v127)
          {
            objc_enumerationMutation(obj);
          }

          v129 = *(*(&v150 + 1) + 8 * j);
          v130 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v123, @"@%@", v124, v125, v129);
          v135 = objc_msgSend_mTagsByName(self, v131, v132, v133, v134);
          v139 = objc_msgSend_objectForKeyedSubscript_(v135, v136, v129, v137, v138);

          v140 = v139;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_msgSend_dumpMemoryInfoKey_indent_(v140, v141, v130, a4 + 1, v142);
          }

          else
          {
            NSClassFromString(&cfstr_Nsblock.isa);
            if (objc_opt_isKindOfClass())
            {
              v144 = v140[2](v140);
              objc_msgSend_dumpObjCInfoKey_value_indent_(self, v145, v130, v144, a4 + 1);
            }

            else
            {
              objc_msgSend_dumpObjCInfoKey_value_indent_(self, v143, v130, v140, a4 + 1);
            }
          }
        }

        v126 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v123, &v150, v160, 16);
      }

      while (v126);
    }

    v146 = *MEMORY[0x277D85DF8];
    sub_2337477D0(__p, a4, 9);
    if (v159 >= 0)
    {
      v147 = __p;
    }

    else
    {
      v147 = __p[0];
    }

    fprintf(v146, "%s)\n", v147);
    if (v159 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

@end