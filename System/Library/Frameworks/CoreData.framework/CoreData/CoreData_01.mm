uint64_t _prepareResultsFromResultSet_0(uint64_t a1, uint64_t *a2, void *a3)
{
  v150 = a2;
  v187 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = a3[17];
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 4);
  v161 = *(v5 + 56);
  if (v6 <= 0x40000000)
  {
    LODWORD(v7) = v6;
  }

  else
  {
    LODWORD(v7) = 0;
  }

  v8 = PF_ALLOCATE_OBJECT_ARRAY(v7);
  if (v8)
  {
    v7 = v7;
  }

  else
  {
    v7 = 0;
  }

  v179 = *(v5 + 72);
  v9 = (v179 >> 2) & 7;
  v162 = a1;
  if (!a3)
  {
    v142 = *(a1 + 64);
    v178 = (a1 + 64);
    v12 = *v142;
    v13 = [*(v5 + 8) _disablePersistentStoreResultCaching];
    v172 = v13;
    v163 = 0;
    v10 = 0;
LABEL_238:
    v173 = 0;
    goto LABEL_15;
  }

  v10 = a3[4];
  v11 = *(a1 + 64);
  v178 = (a1 + 64);
  v12 = *v11;
  if (v9 == 3)
  {
    v163 = a3[16];
  }

  else
  {
    v163 = 0;
  }

  v13 = [*(v5 + 8) _disablePersistentStoreResultCaching];
  v172 = v13;
  if (!v10)
  {
    goto LABEL_238;
  }

  v173 = *(v10 + 42) >> 7;
LABEL_15:
  v176 = *(v5 + 72);
  MEMORY[0x1EEE9AC00](v13);
  v152 = v16;
  v181 = a3;
  if (v16 > 0x200)
  {
    v17 = NSAllocateScannedUncollectable();
    v177 = v17;
  }

  else
  {
    v177 = &v149 - v15;
    bzero(&v149 - v15, 8 * v14);
  }

  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v149 - v19);
  v153 = v21;
  if (v21 > 0x200)
  {
    v20 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v149 - v19, 8 * v18);
  }

  v175 = v20;
  if (v177)
  {
    v22 = v20 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (v22)
  {
    PF_FREE_OBJECT_ARRAY(v8);
    v8 = 0;
    v168 = 0;
  }

  else
  {
    v168 = v7;
  }

  v23 = v181 == 0;
  v160 = sel_setForeignEntityKeySlot_entityKey_;
  v159 = [NSSQLRow instanceMethodForSelector:?];
  v167 = sel_setForeignKeySlot_int64_;
  v166 = [NSSQLRow instanceMethodForSelector:?];
  v158 = sel_setForeignOrderKeySlot_orderKey_;
  v157 = [NSSQLRow instanceMethodForSelector:?];
  v165 = sel_setOptLock_;
  v164 = [NSSQLRow instanceMethodForSelector:?];
  if (v23)
  {
    v183 = 0;
  }

  else
  {
    v183 = [v181[1] objectIDFactoryForSQLEntity:*(v5 + 40)];
  }

  v24 = (v176 & 1) == 0;
  v156 = [MEMORY[0x1E696AC08] defaultManager];
  v170 = v10;
  v171 = v9;
  if (v24)
  {
    v25 = (v179 & 2) == 0;
    v26 = [v183 allocateBatch:v177 count:v168];
    if (v168 == v26)
    {
      v27 = v168;
    }

    else
    {
      v27 = 0;
    }

    if (v27)
    {
      v28 = v25;
    }

    else
    {
      v28 = 0;
    }

    if (v28)
    {
      if (v27 != [NSSQLRow newBatchRowAllocation:v175 count:v27 forSQLEntity:*(v5 + 40) withOwnedObjectIDs:v177 andTimestamp:*(v162 + 8)])
      {
LABEL_38:
        PF_FREE_OBJECT_ARRAY(v8);
        v29 = 0;
        v168 = 0;
        v8 = 0;
        goto LABEL_232;
      }
    }

    else if (!v27)
    {
      goto LABEL_38;
    }
  }

  if (v168 < 1)
  {
    v29 = 0;
    goto LABEL_232;
  }

  v186 = 0;
  v30 = 0;
  v151 = 0;
  v155 = 0;
  v154 = 0;
  v174 = v168;
  v169 = v8;
  while (1)
  {
    if ((*v12 & 0x80000000) != 0)
    {
      v31 = v181;
      v32 = v186;
      do
      {
        v12 = *(*v178 + 8 * *(v12 + 4)) + *(v12 + 16);
      }

      while ((*v12 & 0x80000000) != 0);
    }

    else
    {
      v31 = v181;
      v32 = v186;
    }

    if (v31)
    {
      v33 = v31[14];
    }

    else
    {
      v33 = 0;
    }

    v34 = _sqlEntityForEntityID(v33, *(v12 + 8));
    v35 = v183;
    if (v34 != v30)
    {
      v35 = 0;
    }

    v185 = v34;
    if (v31 && v34 != v30)
    {
      v35 = [v31[1] objectIDFactoryForSQLEntity:?];
    }

    v183 = v35;
    if (v176)
    {
      v40 = [[v35 alloc] initWithPK64:*(v12 + 24)];
      v38 = v40;
      if ((v179 & 2) != 0)
      {
        goto LABEL_200;
      }

      v180 = v40;
      v41 = v185;
      v42 = [NSSQLRow allocForSQLEntity:v185];
      v43 = [v42 initWithSQLEntity:v41 ownedObjectID:v180 andTimestamp:*(v162 + 8)];
      v175[v32] = v43;
    }

    else
    {
      v36 = *&v177[8 * v32];
      v37 = _PFSetPrimaryKey(v36, *(v12 + 24));
      v38 = v37;
      if (v36 == v37)
      {
        v38 = v36;
        if ((v179 & 2) != 0)
        {
LABEL_200:
          if ((v9 - 1) < 2)
          {
            goto LABEL_225;
          }

          if (!v9 || v9 == 3)
          {
            v128 = v38;
            v129 = [NSManagedObjectContext _retainedObjectWithID:v10 optionalHandler:v38 withInlineStorage:v163];
            v130 = v128;
            v131 = v129;

            v38 = v131;
            goto LABEL_225;
          }

LABEL_221:
          v38 = 0;
          goto LABEL_225;
        }
      }

      else
      {
        *&v177[8 * v32] = v37;
        if ((v179 & 2) != 0)
        {
          goto LABEL_200;
        }

        v39 = v37;
        [v175[v32] setObjectID:?];
        v38 = v39;
      }

      v180 = v38;
      v43 = v175[v32];
    }

    v44 = atomic_load(v43 + 5);
    plan_for_entity = _sql_fetch_plan_for_entity(v185);
    v184 = v43;
    v46 = *(plan_for_entity + 4);
    if (v46)
    {
      v47 = (v12 + 32);
      v182 = v44 + 28;
      v48 = (plan_for_entity + 24);
      do
      {
        v49 = *(v48 - 4);
        if ((v49 - 2) >= 7)
        {
          v50 = 3;
        }

        else
        {
          v50 = qword_18592EDE0[(v49 - 2)];
        }

        v51 = ((v47 + v50) & ~v50);
        if (*(v48 - 1))
        {
          v53 = *v51;
          v51 = (v51 + 1);
          v52 = v53 != 0;
        }

        else
        {
          v52 = 0;
        }

        v54 = (v48 - 2);
        v55 = ~v50;
        if (*(v48 - 4) <= 6u)
        {
          if ((v49 - 4) < 3)
          {
            goto LABEL_104;
          }

          if ((v49 - 2) >= 2)
          {
            if (v49 != 1)
            {
              goto LABEL_112;
            }

            v61 = ((v51 + v50) & v55);
            v58 = v61 + 1;
            if (v52)
            {
              v47 = v51;
            }

            else
            {
              v47 = v61 + 1;
            }

            v62 = *(v48 - 3);
            switch(v62)
            {
              case 10:
                v97 = *v54;
                if (!v52)
                {
                  v104 = v158;
                  v105 = &v188;
                  goto LABEL_159;
                }

                v98 = v158;
                v99 = &v188;
                goto LABEL_148;
              case 4:
                v97 = *v54;
                if (!v52)
                {
                  v104 = v160;
                  v105 = &v189;
LABEL_159:
                  (*(v105 - 32))(v184, v104, v97, *v61);
                  break;
                }

                v98 = v160;
                v99 = &v189;
LABEL_148:
                (*(v99 - 32))(v184, v98, v97, 0);
                break;
              case 1:
                v63 = *v48;
                if (v52)
                {
                  if (![objc_msgSend(v63 "propertyDescription")])
                  {
                    goto LABEL_110;
                  }

                  goto LABEL_106;
                }

                if (![objc_msgSend(v63 "propertyDescription")])
                {
                  type = snapshot_get_type(v44, *v54);
                  v116 = *v54;
                  v117 = *v61;
                  if (type == 99)
                  {
                    Class = object_getClass(v44);
                    IndexedIvars = object_getIndexedIvars(Class);
                    v182[v116 >> 3] &= ~(1 << (v116 & 7));
                    v44[IndexedIvars[v116 + 19]] = v117;
                  }

                  else if (type == 115)
                  {
                    v118 = object_getClass(v44);
                    v119 = object_getIndexedIvars(v118);
                    v182[v116 >> 3] &= ~(1 << (v116 & 7));
                    *&v44[v119[v116 + 19]] = v117;
                  }

                  else
                  {
                    v126 = object_getClass(v44);
                    v127 = object_getIndexedIvars(v126);
                    v182[v116 >> 3] &= ~(1 << (v116 & 7));
                    *&v44[v127[v116 + 19]] = v117;
                  }

                  goto LABEL_175;
                }

                setMultiColumnValueDictionary(v44, (v48 - 2), [MEMORY[0x1E696AD98] numberWithInt:*v61]);
                v47 = v61 + 1;
                break;
            }
          }

          else
          {
            v57 = ((v51 + v50) & v55);
            v58 = (v57 + 1);
            if (v52)
            {
              v47 = v51;
            }

            else
            {
              v47 = (v57 + 1);
            }

            v59 = *(v48 - 3);
            switch(v59)
            {
              case 6:
                if (v52)
                {
                  v83 = 0;
                }

                else
                {
                  v83 = *v57;
                }

                v164(v184, v165, v83);
                break;
              case 3:
                if (v52)
                {
                  v82 = 0;
                }

                else
                {
                  v82 = *v57;
                }

                v166(v184, v167, *v54, v82);
                break;
              case 1:
                v60 = *v48;
                if (v52)
                {
                  if (![objc_msgSend(v60 "propertyDescription")])
                  {
                    goto LABEL_110;
                  }

LABEL_106:
                  setMultiColumnValueNullFlag(v44, v48 - 4);
                  v47 = v51;
                  break;
                }

                v100 = [objc_msgSend(v60 "propertyDescription")];
                v101 = *v57;
                if (!v100)
                {
                  v111 = *v54;
                  v112 = object_getClass(v44);
                  v113 = object_getIndexedIvars(v112);
                  v182[v111 >> 3] &= ~(1 << (v111 & 7));
                  *&v44[v113[v111 + 19]] = v101;
LABEL_175:
                  v47 = v58;
                  break;
                }

                setMultiColumnValueDictionary(v44, (v48 - 2), [MEMORY[0x1E696AD98] numberWithLongLong:*v57]);
                v47 = (v57 + 1);
                break;
            }
          }
        }

        else
        {
          if (*(v48 - 4) > 0xBu)
          {
            if ((v49 - 13) < 2)
            {
              goto LABEL_111;
            }

            if (v49 != 12)
            {
              if (v49 == 16)
              {
                v56 = [*v48 propertyDescription];
                if (!v173 || ([v56 _isFileBackedFuture] & 1) != 0)
                {
                  if (!v52)
                  {
                    v84 = ((v51 + v50) & v55);
                    v86 = v84 + 1;
                    v85 = *(v84 + 4);
                    if (v85 == 3)
                    {
                      if (v181 && !v154)
                      {
                        v154 = v181[13];
                      }

                      v106 = [MEMORY[0x1E695DEF0] dataWithBytes:v86 length:*v84];
                      v107 = [_NSDataFileBackedFuture alloc];
                      v89 = -[_NSDataFileBackedFuture initWithStoreMetadata:directory:](v107, "initWithStoreMetadata:directory:", v106, [MEMORY[0x1E695DFF8] fileURLWithPath:v154 isDirectory:1]);
LABEL_189:
                      v66 = v89;
                    }

                    else
                    {
                      if (v85 == 1)
                      {
                        v87 = [_PFExternalReferenceData alloc];
                        if (v181)
                        {
                          v88 = *(v181 + 46);
                        }

                        else
                        {
                          v88 = 0;
                        }

                        v89 = [(_PFExternalReferenceData *)v87 initWithStoreBytes:v86 length:*v84 externalLocation:0 safeguardLocation:0 protectionLevel:v88];
                        goto LABEL_189;
                      }

                      v108 = strnlen(v84 + 5, *v84 - 1);
                      v109 = [v156 stringWithFileSystemRepresentation:v84 + 5 length:v108];
                      v110 = v151;
                      if (v151)
                      {
                        if (!v181)
                        {
                          goto LABEL_185;
                        }
                      }

                      else
                      {
                        if (!v181)
                        {
                          v110 = 0;
                          goto LABEL_185;
                        }

                        v110 = v181[11];
                      }

                      if (!v155)
                      {
                        v155 = v181[12];
                      }

LABEL_185:
                      v151 = v110;
                      v120 = [v110 stringByAppendingPathComponent:v109];
                      v121 = [v155 stringByAppendingPathComponent:v109];
                      if ([v156 fileExistsAtPath:v120])
                      {
                        v122 = [_PFExternalReferenceData alloc];
                        if (v181)
                        {
                          v123 = *(v181 + 46);
                        }

                        else
                        {
                          v123 = 0;
                        }

                        v89 = [(_PFExternalReferenceData *)v122 initWithStoreBytes:v86 length:*v84 externalLocation:v120 safeguardLocation:v121 protectionLevel:v123];
                        goto LABEL_189;
                      }

                      v66 = 0;
                    }

                    v47 = (v86 + *v84);
                    if (![objc_msgSend(*v48 "propertyDescription")])
                    {
LABEL_191:
                      snapshot_set_object(v44, *v54, v66);
                      goto LABEL_192;
                    }

                    goto LABEL_123;
                  }

                  if (![objc_msgSend(*v48 "propertyDescription")])
                  {
LABEL_110:
                    v182[*v54 >> 3] |= 1 << (*v54 & 7);
LABEL_111:
                    v47 = v51;
                    goto LABEL_192;
                  }

                  goto LABEL_106;
                }
              }

              goto LABEL_112;
            }

LABEL_104:
            if (!v52)
            {
              v64 = ((v51 + v50) & v55);
              v65 = (v64 + 4);
              v66 = CFStringCreateWithCString(0, v64 + 4, 0x8000100u);
              v67 = *v64;
              v68 = *(v48 - 4);
              if (v68 == 12)
              {
                v69 = [MEMORY[0x1E695DFF8] URLWithString:v66];
                CFRelease(v66);
LABEL_121:
                v66 = v69;
              }

              else if (v68 == 4)
              {
                v69 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:v66];
                CFRelease(v66);
                goto LABEL_121;
              }

              v47 = (v65 + v67);
              if (![objc_msgSend(*v48 "propertyDescription")])
              {
                goto LABEL_191;
              }

LABEL_123:
              setMultiColumnValueDictionary(v44, (v48 - 2), v66);

              goto LABEL_192;
            }

LABEL_105:
            if (![objc_msgSend(*v48 "propertyDescription")])
            {
              goto LABEL_110;
            }

            goto LABEL_106;
          }

          if ((v49 - 7) >= 2)
          {
            if (v49 == 9)
            {
              goto LABEL_104;
            }

LABEL_112:
            if (!v52)
            {
              v75 = ((v51 + v50) & v55);
              v76 = (v75 + 4);
              v77 = CFDataCreate(0, v75 + 4, *v75);
              v78 = v77;
              v79 = *v75;
              v80 = *(v48 - 4);
              if (v80 == 11)
              {
                if ([(__CFData *)v77 length]== 16)
                {
                  v81 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{-[__CFData bytes](v78, "bytes")}];
                  CFRelease(v78);
                }

                else
                {

                  v81 = 0;
                }
              }

              else if (v80 == 15)
              {
                v81 = +[_PFRoutines retainedDecodeValue:forTransformableAttribute:](_PFRoutines, v77, [*v48 propertyDescription]);
                CFRelease(v78);
              }

              else
              {
                v81 = v77;
              }

              if ([objc_msgSend(*v48 "propertyDescription")])
              {
                setMultiColumnValueDictionary(v44, (v48 - 2), v81);
              }

              else
              {
                snapshot_set_object(v44, *v54, v81);
              }

              v47 = (v76 + v79);
              goto LABEL_192;
            }

            goto LABEL_105;
          }

          if (v52)
          {
            goto LABEL_105;
          }

          v70 = [objc_msgSend(*v48 "propertyDescription")];
          v71 = ((v51 + v50) & v55);
          v47 = (v71 + 1);
          v72 = *(v48 - 4);
          if (v70)
          {
            if (v72 == 7)
            {
              if (snapshot_get_type(v44, *v54) == 102)
              {
                v73 = kCFNumberFloatType;
              }

              else
              {
                v73 = kCFNumberDoubleType;
              }

              v74 = CFNumberCreate(0, v73, v71);
            }

            else
            {
              v74 = CFDateCreate(0, *v71);
            }

            v96 = v74;
            setMultiColumnValueDictionary(v44, (v48 - 2), v74);

            goto LABEL_192;
          }

          v90 = *v54;
          if (v72 != 7)
          {
            v92 = *v71;
            v102 = object_getClass(v44);
            v103 = object_getIndexedIvars(v102);
LABEL_177:
            v182[v90 >> 3] &= ~(1 << (v90 & 7));
            *&v44[v103[v90 + 19]] = v92;
            goto LABEL_192;
          }

          v91 = snapshot_get_type(v44, *v54);
          v90 = *v54;
          v92 = *v71;
          if (v91 != 102)
          {
            v114 = object_getClass(v44);
            v103 = object_getIndexedIvars(v114);
            goto LABEL_177;
          }

          v93 = object_getClass(v44);
          v94 = object_getIndexedIvars(v93);
          v95 = v92;
          v182[v90 >> 3] &= ~(1 << (v90 & 7));
          *&v44[v94[v90 + 19]] = v95;
        }

LABEL_192:
        v48 += 3;
        --v46;
      }

      while (v46);
    }

    if (v172)
    {
      v10 = v170;
      v9 = v171;
      v8 = v169;
      v32 = v186;
      if (v171 == 2)
      {
        goto LABEL_220;
      }

      [(atomic_uint *)v184 knownKeyValuesPointer];
      v132 = v44;
      v175[v32] = v132;
    }

    else
    {
      v10 = v170;
      v9 = v171;
      v8 = v169;
      [(atomic_uint *)v184 knownKeyValuesPointer];
      v32 = v186;
      [(NSPersistentStoreCache *)v161 registerRow:v184 forObjectID:v180 options:0];
    }

    if (v9 > 1)
    {
      v133 = v180;
      if (v9 == 2)
      {
LABEL_220:
        v38 = v184;
        goto LABEL_225;
      }

      if (v9 != 3)
      {
        goto LABEL_221;
      }
    }

    else
    {
      v133 = v180;
      if (v9)
      {
        if (v9 == 1)
        {
          _PFfastOidRetain(0, v180);
          v38 = v180;
          goto LABEL_225;
        }

        goto LABEL_221;
      }
    }

    v134 = [NSManagedObjectContext _retainedObjectWithID:v10 optionalHandler:v133 withInlineStorage:v163];
    v38 = v134;
    if (v172)
    {
      goto LABEL_225;
    }

    if (!v134)
    {
      goto LABEL_218;
    }

    v135 = *(v134 + 4);
    if ((v135 & 0x200) == 0)
    {
      *(v134 + 4) = v135 | 0x200;
LABEL_218:
      if (!v184)
      {
        goto LABEL_225;
      }

      v136 = v184 + 3;
LABEL_224:
      atomic_fetch_add_explicit(v136, 1u, memory_order_relaxed);
      goto LABEL_225;
    }

    if (v184)
    {
      v136 = v184 + 3;
      if (atomic_fetch_add(v184 + 3, 0) <= 0)
      {
        goto LABEL_224;
      }
    }

LABEL_225:
    *(v8 + v32) = v38;
    v137 = *(v12 + 4);
    if ((v137 & 0x80000000) != 0)
    {
      break;
    }

    v138 = *(*v178 + 8 * v137);
    v29 = 1;
    if (v138)
    {
      v12 = v138 + *(v12 + 16);
      v30 = v185;
      if (++v186 != v174)
      {
        continue;
      }
    }

    goto LABEL_232;
  }

  v29 = 1;
LABEL_232:
  v139 = v177;
  if ((v179 & 2) == 0)
  {
    if (v150 && v9 == 3)
    {
      v140 = [_PFArray alloc];
      v141 = [(_PFArray *)v140 initWithObjects:v175 count:v168 andFlags:26 andContext:v10];
      *v150 = v141;
    }

    else if ((v179 & 2) == 0 && v9 != 2 && v29)
    {
      v143 = v168;
      v144 = v175;
      do
      {

        --v143;
      }

      while (v143);
    }
  }

  if (v153 >= 0x201)
  {
    NSZoneFree(0, v175);
  }

  if (v152 >= 0x201)
  {
    NSZoneFree(0, v139);
  }

  if (v9 >= 4)
  {
    v145 = 10;
  }

  else
  {
    v145 = dword_18592E780[v9];
  }

  v146 = [_PFArray alloc];
  result = [(_PFArray *)v146 initWithObjects:v8 count:v168 andFlags:v145 andContext:v10];
  v148 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185675334(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    v4 = *(v2 - 240);
    v3 = *(v2 - 232);
    v5 = *(v2 - 192);
    JUMPOUT(0x185675210);
  }

  _Unwind_Resume(a1);
}

void sub_185675374(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x185675380);
}

void *PF_ALLOCATE_OBJECT_ARRAY(uint64_t a1)
{
  v2 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v2 = malloc_default_zone();
  }

  return malloc_type_zone_malloc(v2, 8 * a1, 0x80040B8603338uLL);
}

uint64_t _PFAllocateObjects(objc_class *a1, void **a2, unsigned int a3, uint64_t a4)
{
  v4 = 0;
  if (a2 && a3)
  {
    v7 = a2;
    v9 = class_getInstanceSize(a1) + 7;
    v10 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v10 = malloc_default_zone();
    }

    LODWORD(v4) = 0;
    v11 = v9 & 0xFFFFFFFFFFFFFFF8;
    v12 = a3;
    v13 = v7;
    do
    {
      v14 = malloc_zone_batch_malloc(v10, v11 + a4, v13, v12);
      v4 = v14 + v4;
      if (v12 == v14)
      {
        v12 = 0;
      }

      else
      {
        v15 = v14;
        v16 = malloc_type_zone_malloc(v10, v11 + a4, 0x8C357073uLL);
        if (!v16)
        {
          break;
        }

        v17 = &v13[v15];
        *v17 = v16;
        v13 = v17 + 1;
        v4 = (v4 + 1);
        v12 += ~v15;
      }
    }

    while (v4 < a3);
    v18 = a3 - v4;
    if (a3 > v4)
    {
      v19 = &v7[v4];
      do
      {
        v20 = _PF_Private_Malloc_Zone;
        if (!_PF_Private_Malloc_Zone)
        {
          v20 = malloc_default_zone();
        }

        v21 = malloc_type_zone_malloc(v20, v11 + a4, 0x99877102uLL);
        if (v21)
        {
          *v19 = v21;
          v4 = (v4 + 1);
        }

        ++v19;
        --v18;
      }

      while (v18);
    }

    if (v4 >= a3)
    {
      v25 = v4;
      do
      {
        bzero(*v7, v11 + a4);
        v26 = *v7++;
        objc_constructInstance(a1, v26);
        --v25;
      }

      while (v25);
    }

    else if (v4)
    {
      v22 = v4;
      do
      {
        v23 = _PF_Private_Malloc_Zone;
        if (!_PF_Private_Malloc_Zone)
        {
          v23 = malloc_default_zone();
        }

        v24 = *v7++;
        malloc_zone_free(v23, v24);
        --v22;
      }

      while (v22);
      return 0;
    }
  }

  return v4;
}

unint64_t _PFSetPrimaryKey(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  if ((a1 & 0x8000000000000000) == 0)
  {
    Class = object_getClass(a1);
    if (*(object_getIndexedIvars(Class) + 4))
    {
      if (HIWORD(a2))
      {
        v11 = objc_alloc(_PFFallbackFactoryForOID(v3));
        goto LABEL_17;
      }

      *(v3 + 8) |= a2 << 16;
    }

    else
    {
      *(v3 + 16) = a2;
    }

    return v3;
  }

  if (a2 <= 0x3FFFFFFFFFFLL)
  {
    if ((~a1 & 0xC000000000000007) != 0)
    {
      v4 = *MEMORY[0x1E69E5910];
    }

    else
    {
      v4 = 7;
    }

    v3 = (v4 ^ a1) & 0x1FFFF0 | (a2 << 21) | 0x8000000000000005;
    v5 = v3 ^ *MEMORY[0x1E69E5910];
    if ((~v5 & 0xC000000000000007) != 0)
    {
      return v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7));
    }

    return v3;
  }

  v7 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v7 = 7;
  }

  v8 = (_PFTaggedPointersPool + 32 * (((v7 ^ a1) >> 4) & 0x1FFFF));
  v9 = atomic_load(v8);
  v10 = atomic_load(v8 + 1);
  v11 = [objc_msgSend(objc_msgSend(v9 objectIDFactoryForEntity:{v10), "_fallbackFactory"), "alloc"}];
LABEL_17:

  return [v11 initWithPK64:a2];
}

unint64_t _PFCDSnapshotClassForEntity(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = (result + 16);
    if (atomic_load((result + 16)))
    {
      return atomic_load(v2);
    }

    else
    {
      v4 = [_CDSnapshot classForEntity:result];
      v5 = 0;
      atomic_compare_exchange_strong(v2, &v5, v4);
      if (v5)
      {
        v6 = atomic_load((v1 + 16));
        if (v4 != v6)
        {
          [(objc_class *)v4 _entityDeallocated];
        }
      }

      return atomic_load((v1 + 16));
    }
  }

  return result;
}

void *snapshot_set_transient_default_values(id *a1)
{
  result = [a1[2] entity];
  if (result)
  {
    v3 = result[14];
    v4 = *(v3 + 88);
    if (!v4)
    {
      return result;
    }

    v5 = *(v3 + 80);
    v6 = v5 + v4;
    v7 = result[12];
  }

  else
  {
    if (!MEMORY[0x58])
    {
      return result;
    }

    v7 = 0;
    v5 = MEMORY[0x50];
    v6 = MEMORY[0x50] + MEMORY[0x58];
  }

  if (v5 < v6)
  {
    v8 = v7 + 24;
    v9 = a1 + 28;
    v10 = v6 - 1;
    v11 = v5 >> 3;
    v12 = 255 << (v5 & 7);
    if (v5 >> 3 == (v6 - 1) >> 3)
    {
      v13 = (0xFFu >> (~v10 & 7)) & v12;
    }

    else
    {
      v9[v11] |= v12;
      if (v11 + 1 < v10 >> 3)
      {
        memset(a1 + v11 + 29, 255, ((v10 >> 3) - v11 - 2) + 1);
      }

      v13 = 0xFFu >> (~v10 & 7);
      v11 = v10 >> 3;
    }

    v9[v11] |= v13;
    do
    {
      v14 = *(v8 + 8 * v5);
      if ([v14 _propertyType] == 7)
      {
        result = [v14 _buildDefaultValue];
      }

      else
      {
        result = [v14 defaultValue];
      }

      if (result)
      {
        result = snapshot_set_value_as_object(a1, v5, result);
      }

      ++v5;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t _PFfastRowRetain(uint64_t a1, uint64_t a2)
{
  result = a2;
  atomic_fetch_add_explicit((a2 + 8), 1u, memory_order_relaxed);
  return result;
}

uint64_t snapshot_get_type(void *a1, unsigned int a2)
{
  Class = object_getClass(a1);
  IndexedIvars = object_getIndexedIvars(Class);
  return *_CDSnapshotDataTypeToObjCType(*(IndexedIvars[7] + a2));
}

const char *_CDSnapshotDataTypeToObjCType(int a1)
{
  result = "c";
  if (a1 <= 4)
  {
    if (a1 <= 2)
    {
      if (a1 == 2)
      {
        return "s";
      }

      else if (!a1)
      {
        __break(1u);
      }
    }

    else
    {
      v6 = "q";
      if (a1 != 4)
      {
        v6 = "c";
      }

      if (a1 == 3)
      {
        return "i";
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    v3 = a1 - 7;
    v4 = "f";
    if (a1 != 6)
    {
      v4 = "c";
    }

    if (a1 == 5)
    {
      v5 = "d";
    }

    else
    {
      v5 = v4;
    }

    if (v3 >= 2)
    {
      return v5;
    }

    else
    {
      return "@";
    }
  }

  return result;
}

void fetchResultSetReallocCurrentRow(uint64_t a1, int a2)
{
  v3 = *(a1 + 24);
  if ((v3 & 0x80000000) != 0)
  {
    v4 = 0;
  }

  else
  {
    v4 = (*(*(a1 + 64) + 8 * v3) + *(a1 + 32));
  }

  v5 = *(a1 + 88) - v4;
  v6 = (a2 + v5 + 7) & 0xFFFFFFF8;
  if (v6 >= 0x3BFF)
  {
    v7 = v6 + 15359;
  }

  else
  {
    v7 = 15359;
  }

  *(a1 + 16) = v7;
  if (!v3 && !*(a1 + 32))
  {
    v16 = **(a1 + 64);
    v19 = _PF_Private_Malloc_Zone;
    if ((*(a1 + 48) & 4) != 0)
    {
      if (!_PF_Private_Malloc_Zone)
      {
        v19 = malloc_default_zone();
      }

      v20 = malloc_type_zone_calloc(v19, 1uLL, v7, 0xCE18387CuLL);
    }

    else
    {
      if (!_PF_Private_Malloc_Zone)
      {
        v19 = malloc_default_zone();
      }

      v20 = malloc_type_zone_malloc(v19, v7, 0xB030E47uLL);
    }

    v8 = 0;
    *(a1 + 80) = v20;
    **(a1 + 64) = v20;
    v21 = *(a1 + 80);
    **(a1 + 72) = v7;
    *(a1 + 88) = v21;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    goto LABEL_30;
  }

  v8 = *(a1 + 20);
  v9 = v8 + 1;
  *(a1 + 20) = v8 + 1;
  v10 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v10 = malloc_default_zone();
  }

  v11 = malloc_type_zone_realloc(v10, *(a1 + 64), 8 * (v8 + 2), 0x80040B8603338uLL);
  *(a1 + 64) = v11;
  v11[v9] = 0;
  v12 = _PF_Private_Malloc_Zone;
  if ((*(a1 + 48) & 4) != 0)
  {
    if (!_PF_Private_Malloc_Zone)
    {
      v12 = malloc_default_zone();
    }

    v13 = malloc_type_zone_calloc(v12, 1uLL, v7, 0x48B4EA43uLL);
  }

  else
  {
    if (!_PF_Private_Malloc_Zone)
    {
      v12 = malloc_default_zone();
    }

    v13 = malloc_type_zone_malloc(v12, v7, 0xAA384719uLL);
  }

  *(a1 + 80) = v13;
  *(*(a1 + 64) + 8 * v8) = v13;
  v14 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v14 = malloc_default_zone();
  }

  v15 = malloc_type_zone_realloc(v14, *(a1 + 72), 8 * (v8 + 2), 0x100004000313F17uLL);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  *(a1 + 72) = v15;
  v15[v9] = 0;
  v15[v8] = v7;
  *(a1 + 88) = *(a1 + 80);
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  if ((v8 & 0x80000000) == 0)
  {
LABEL_30:
    v18 = *(*(a1 + 64) + 8 * v8);
    v17 = v16;
  }

  memcpy(v18, v4, v5);
  *(a1 + 88) += v5;
  if (v17)
  {
    v22 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v22 = malloc_default_zone();
    }

    malloc_zone_free(v22, v17);
  }
}

BOOL _compareUnknownStrings(void *a1, __CFString *a2)
{
  v4 = [a1 length];
  if (v4 != [(__CFString *)a2 length])
  {
    return 0;
  }

  v5 = [a1 UTF8String];
  Class = object_getClass(a1);
  if (Class == object_getClass(a2))
  {
    CStringPtr = [(__CFString *)a2 UTF8String];
    return memcmp(v5, CStringPtr, v4) == 0;
  }

  if (a2)
  {
    SystemEncoding = CFStringGetSystemEncoding();
    CStringPtr = CFStringGetCStringPtr(a2, SystemEncoding);
    if (CStringPtr)
    {
      return memcmp(v5, CStringPtr, v4) == 0;
    }
  }

  memset(v26, 0, sizeof(v26));
  theString = a2;
  v30 = 0;
  v31 = v4;
  CharactersPtr = CFStringGetCharactersPtr(a2);
  v10 = 0;
  v28 = CharactersPtr;
  if (!CharactersPtr)
  {
    v10 = CFStringGetCStringPtr(a2, 0x600u);
  }

  v32 = 0;
  v33 = 0;
  v29 = v10;
  if (v4 >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 64;
    while (1)
    {
      if (v14 >= 4)
      {
        v16 = 4;
      }

      else
      {
        v16 = v14;
      }

      v17 = v31;
      if (v31 <= v14)
      {
        v19 = 0;
      }

      else
      {
        if (v28)
        {
          v18 = &v28[v30];
LABEL_15:
          v19 = v18[v14];
          goto LABEL_17;
        }

        if (!v29)
        {
          if (v33 <= v14 || v12 > v14)
          {
            v21 = v16 + v11;
            v22 = v15 - v16;
            v23 = v14 - v16;
            v24 = v23 + 64;
            if (v23 + 64 >= v31)
            {
              v24 = v31;
            }

            v32 = v23;
            v33 = v24;
            if (v31 >= v22)
            {
              v17 = v22;
            }

            v34.location = v23 + v30;
            v34.length = v17 + v21;
            CFStringGetCharacters(theString, v34, v26);
            v12 = v32;
          }

          v18 = v26 - v12;
          goto LABEL_15;
        }

        v19 = v29[v30 + v14];
      }

LABEL_17:
      if (v19 == v5[v14])
      {
        v13 = ++v14 >= v4;
        --v11;
        ++v15;
        if (v4 != v14)
        {
          continue;
        }
      }

      return v13;
    }
  }

  return 1;
}

void fetchResultSetDeallocate(uint64_t a1)
{
  v2 = *(a1 + 20);
  if (v2)
  {
    v3 = 0;
    v4 = 8 * v2;
    do
    {
      v5 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v5 = malloc_default_zone();
      }

      malloc_zone_free(v5, *(*(a1 + 64) + v3));
      v3 += 8;
    }

    while (v4 != v3);
  }

  v6 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v6 = malloc_default_zone();
  }

  malloc_zone_free(v6, *(a1 + 64));
  v7 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v7 = malloc_default_zone();
  }

  malloc_zone_free(v7, *(a1 + 72));
  v8 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v8 = malloc_default_zone();
  }

  malloc_zone_free(v8, a1);
}

void *_sharedIMPL_setvfk_core_scalar(void *a1, unint64_t a2, uint64_t a3)
{
  if (_PF_Threading_Debugging_level)
  {
    _PFAssertSafeMultiThreadedAccess_impl([a1 managedObjectContext], sel_setValue_forKey_);
  }

  v6 = _PFEntityForManagedObject(a1);
  v7 = *(_kvcPropertysPrimitiveSetters(v6) + 8 * a2);
  v8 = *(*(v6[12] + 16) + 40);
  v9 = *(v8 + 8 * a2);
  v10 = *(a1 + 4);
  if ((v10 & 0x40000) != 0)
  {
    _PF_ManagedObject_WillChangeValueForKeyIndex(a1, sel_willChangeValueForKey_, v9, a2, 0);
  }

  else
  {
    [a1 willChangeValueForKey:*(v8 + 8 * a2)];
  }

  _PF_CopyOnWrite_Snapshot(a1);
  (*(a3 + 16))(a3, v7);
  if ((v10 & 0x40000) != 0)
  {

    return _PF_ManagedObject_DidChangeValueForKeyIndex(a1, sel_didChangeValueForKey_, v9, a2);
  }

  else
  {

    return [a1 didChangeValueForKey:v9];
  }
}

void *_sharedIMPL_setvfk_core_q(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___sharedIMPL_setvfk_core_q_block_invoke;
  v5[3] = &unk_1E6EC22C8;
  v5[4] = a1;
  v5[5] = a4;
  v5[6] = a3;
  return _sharedIMPL_setvfk_core_scalar(a1, a4, v5);
}

unsigned int *___sharedIMPL_setvfk_core_q_block_invoke(void *a1, uint64_t a2)
{
  if (a2)
  {
    [MEMORY[0x1E696AD98] numberWithLongLong:a1[6]];
    v8 = a1[4];

    return _NSSetUsingKeyValueSetter();
  }

  else
  {
    v3 = a1[5];
    v4 = *(a1[4] + 24);
    v5 = a1[6];
    Class = object_getClass(v4);
    result = object_getIndexedIvars(Class);
    v4[(v3 >> 3) + 28] &= ~(1 << (v3 & 7));
    *&v4[result[v3 + 19]] = v5;
  }

  return result;
}

void _PFDeallocateObject(id obj)
{
  if (*MEMORY[0x1E696AA90])
  {

    _PFPerformDebugZombie(obj);
  }

  else
  {
    if (obj)
    {
      objc_destructInstance(obj);
    }

    v2 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v2 = malloc_default_zone();
    }

    malloc_zone_free(v2, obj);
  }
}

void sub_1856775F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1856784FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1856784F0);
  }

  JUMPOUT(0x185678518);
}

void sub_185678508(void *a1, int a2)
{
  if (a2)
  {
    if (a2 != 2)
    {
      objc_begin_catch(a1);
      JUMPOUT(0x185678410);
    }

    v2 = objc_begin_catch(a1);
    objc_exception_rethrow();
  }

  JUMPOUT(0x1856784F0);
}

void sub_185678550(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x185678524);
  }

  JUMPOUT(0x1856784F0);
}

void _PFCMT_RemoveAllValues(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    if (v2)
    {
      CFDictionaryRemoveAllValues(v2);
    }

    if (a1[3])
    {
      v3 = a1[1];
      if (v3)
      {
        for (i = 0; i < v3; ++i)
        {
          v5 = *(a1[3] + 8 * i);
          if (v5)
          {
            CFDictionaryRemoveAllValues(v5);
            v3 = a1[1];
          }
        }
      }
    }

    if (a1[4])
    {
      v6 = a1[1];
      if (v6)
      {
        for (j = 0; j < v6; ++j)
        {
          v8 = *(a1[4] + 8 * j);
          if (v8)
          {
            CFDictionaryRemoveAllValues(v8);
            v6 = a1[1];
          }
        }
      }
    }
  }
}

void _NSQLRow_dealloc_standard(id obj)
{
  v2 = atomic_load(obj + 21);
  if ((v2 & 1) == 0)
  {
    v3 = atomic_load(obj + 5);
    v4 = v3;
    atomic_compare_exchange_strong(obj + 5, &v4, 0);
    if (v4 == v3)
    {
      v5 = v3;
    }

    else
    {
      v5 = v4;
    }
  }

  v6 = *(obj + 3);
  if (v6)
  {
    *(obj + 3) = 0;
    if (*v6 != v6)
    {
      v7 = 0;
      do
      {
        v8 = &v6[v7];

        v7 += 3;
      }

      while (v8[3] != v6);
      if (v7)
      {
        PF_FREE_OBJECT_ARRAY(v6);
      }
    }
  }

  v9 = atomic_load(obj + 21);
  if ((v9 & 1) == 0)
  {

    _PFDeallocateObject(obj);
  }
}

void _PFfastRowRelease(int a1, atomic_uint *obj)
{
  if (atomic_fetch_add_explicit(obj + 2, 0xFFFFFFFF, memory_order_relaxed) <= 0)
  {
    atomic_fetch_add_explicit(obj + 2, 0x20000000u, memory_order_relaxed);
    _NSQLRow_dealloc_standard(obj);
  }
}

void _PFfastOidRelease(int a1, id a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    Class = object_getClass(a2);
    if (*(object_getIndexedIvars(Class) + 4))
    {
      do
      {
        while (1)
        {
          while (1)
          {
            v4 = *(a2 + 1);
            if ((v4 & 0x8000) != 0)
            {
              break;
            }

            v5 = *(a2 + 1);
            atomic_compare_exchange_strong(a2 + 1, &v5, v4 - 1);
            if (v5 == v4)
            {
              goto LABEL_13;
            }
          }

          os_unfair_lock_lock_with_options();
          v6 = v4;
          atomic_compare_exchange_strong_explicit(a2 + 1, &v6, v4, memory_order_relaxed, memory_order_relaxed);
          if (v6 == v4)
          {
            break;
          }

          os_unfair_lock_unlock(&_extraRetainsLock);
        }

        if (!NSDecrementExtraRefCountWasZero(a2))
        {

          os_unfair_lock_unlock(&_extraRetainsLock);
          return;
        }

        v7 = v4;
        atomic_compare_exchange_strong_explicit(a2 + 1, &v7, v4 ^ 0xFFFF, memory_order_relaxed, memory_order_relaxed);
        v8 = v7 == v4;
        os_unfair_lock_unlock(&_extraRetainsLock);
      }

      while (!v8);
LABEL_13:
      if (v4)
      {
        return;
      }
    }

    else if (atomic_fetch_add_explicit(a2 + 2, 0xFFFFFFFF, memory_order_relaxed) > 0)
    {
      return;
    }

    v9 = object_getClass(a2);
    [a2 dealloc];

    _PFfastFactoryRelease1(v9);
  }
}

id _executeSaveChangesRequest(uint64_t a1)
{
  v261 = *MEMORY[0x1E69E9840];
  result = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v194 = result;
  if (!a1 || !*(a1 + 24))
  {
    __break(1u);
    return result;
  }

  v196 = *(a1 + 96);
  v195 = [objc_msgSend(a1 "persistentStoreRequest")];
  self = a1;
  [(NSSQLiteConnection *)*(a1 + 24) _setSaveRequest:a1];
  if (v195)
  {
    [(NSSQLiteConnection *)*(a1 + 24) setSecureDeleteMode:?];
  }

  v3 = a1;
  if (!*(a1 + 88))
  {
    v4 = *(a1 + 96);
    if (!v4)
    {
      v197 = 0;
      goto LABEL_155;
    }

    v3 = self;
    if ((*(v4 + 148) & 2) == 0)
    {
      v197 = 0;
      goto LABEL_23;
    }
  }

  v5 = v3[1];
  if (v5)
  {
    [*(v5 + 216) lock];
  }

  v6 = *(self + 12);
  if (v6 && (v7 = *(v6 + 8)) != 0)
  {
    v8 = [v7 persistentStoreRequest];
  }

  else
  {
    v8 = 0;
  }

  v9 = *(self + 3);
  if (v9)
  {
    if (*(v9 + 40))
    {
      v90 = MEMORY[0x1E695DF30];
      v91 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SaveChanges: NSSQLCore: %p Transactions cannot be nested\n", *(self + 1)];
      objc_exception_throw([v90 exceptionWithName:*MEMORY[0x1E695D930] reason:v91 userInfo:0]);
    }

    [(NSSQLiteConnection *)v9 beginTransaction];
  }

  else
  {
    [(NSSQLiteConnection *)0 beginTransaction];
  }

  v10 = *(self + 1);
  v11 = MEMORY[0x1E696AD80];
  v12 = MEMORY[0x1E695DF20];
  v13 = [MEMORY[0x1E696AD98] numberWithInt:1];
  if (v6)
  {
    v14 = atomic_load((v6 + 144));
    v15 = [MEMORY[0x1E696AD98] numberWithInt:v14];
    v16 = *(v6 + 8);
    if (v16)
    {
      v16 = *(v16 + 32);
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AD98] numberWithInt:0];
    v16 = 0;
  }

  v17 = [v11 notificationWithName:@"_NSSQLCoreTransactionStateChangeNotification" object:v10 userInfo:{objc_msgSend(v12, "dictionaryWithObjectsAndKeys:", v13, @"_NSSQLCoreTransactionType", v15, @"_NSSQLCoreTransientSequenceNumber", v8, @"_NSSQLCoreActiveSaveRequest", v16, @"_NSSQLCoreActiveSavingContext", self, @"requestContext", 0)}];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v4 = *(self + 12);
  v18 = *(self + 11);
  if (v18)
  {
    [(NSSQLiteConnection *)*(self + 3) saveMetadata:v18];
  }

  v197 = 1;
  if (v4)
  {
LABEL_23:
    if ((*(v4 + 148) & 2) != 0)
    {
      v19 = [(NSSQLSavePlan *)*(self + 12) newObjectsForFastLockConflictDetection];
      v20 = *(self + 3);
      if ([v19 count] && (v21 = +[_PFRoutines _groupObjectsByRootEntity:](_PFRoutines, v19), (v22 = objc_msgSend(v21, "count")) != 0))
      {
        v23 = 0;
        v190 = v21;
        v192 = v20;
        v189 = v22;
        while (1)
        {
          v203 = [objc_msgSend(v21 objectAtIndex:{v23), "sortedArrayUsingFunction:context:", compareManagedObjectsBySQLPKs, 0}];
          v24 = _rowsForConflictDetection(*(self + 1), v203, v20);
          Count = CFArrayGetCount(v24);
          v26 = [v203 count];
          v27 = v26;
          if (Count - 1 != v26)
          {
            if (v24)
            {
              CFRelease(v24);
            }

            goto LABEL_155;
          }

          obj = v23;
          if (v26)
          {
            break;
          }

LABEL_41:
          v23 = obj + 1;
          v21 = v190;
          v20 = v192;
          if (obj + 1 == v189)
          {
            if (v24)
            {
              CFRelease(v24);
            }

            goto LABEL_44;
          }
        }

        v28 = 1;
        while (1)
        {
          v29 = objc_autoreleasePoolPush();
          ValueAtIndex = CFArrayGetValueAtIndex(v24, v28);
          v31 = v28 - 1;
          v32 = [objc_msgSend(v203 objectAtIndex:{v28 - 1), "objectID"}];
          v33 = [(NSSQLSaveChangesRequestContext *)self originalRowForObjectID:v32];
          if (!v33)
          {
            v34 = [(NSSQLStoreRequestContext *)self createNestedObjectFaultContextForObjectWithID:v32];
            [(NSSQLStoreRequestContext *)v34 setConnection:?];
            [(NSSQLStoreRequestContext *)v34 setQueryGenerationToken:?];
            v33 = _executeObjectFaultRequest(v34);
            if (v33)
            {
              [*(self + 17) setObject:v33 forKey:v32];
            }

            [(NSSQLStoreRequestContext *)v34 setConnection:?];
          }

          if ([v32 _referenceData64] != *ValueAtIndex)
          {
            break;
          }

          if (v33)
          {
            v35 = atomic_load(v33 + 5);
            v36 = *(v35 + 12);
          }

          else
          {
            v36 = 0;
          }

          if (v36 != ValueAtIndex[1])
          {
            break;
          }

          objc_autoreleasePoolPop(v29);
          v28 = v31 + 2;
          if (v31 + 1 == v27)
          {
            goto LABEL_41;
          }
        }

        CFRelease(v24);
        objc_autoreleasePoolPop(v29);
      }

      else
      {
LABEL_44:
        v37 = *(self + 3);
        v38 = *(self + 12);
        v204 = objc_alloc_init(MEMORY[0x1E695DF70]);
        if (v38)
        {
          obja = *(v38 + 40);
        }

        else
        {
          obja = 0;
        }

        v193 = v38;
        v229 = 0u;
        v230 = 0u;
        v227 = 0u;
        v228 = 0u;
        v39 = [obja countByEnumeratingWithState:&v227 objects:v259 count:16];
        if (v39)
        {
          v40 = *v228;
          do
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v228 != v40)
              {
                objc_enumerationMutation(obja);
              }

              v42 = *(*(&v227 + 1) + 8 * i);
              v43 = objc_autoreleasePoolPush();
              if (([(NSSQLiteConnection *)v37 deleteRow:v42 forRequestContext:self]& 1) == 0)
              {
                v44 = [v42 objectID];
                v45 = -[NSSQLStoreRequestContext createNestedObjectFaultContextForObjectWithID:](self, [v42 objectID]);
                [(NSSQLStoreRequestContext *)v45 setConnection:?];
                [(NSSQLStoreRequestContext *)v45 setQueryGenerationToken:?];
                v46 = _executeObjectFaultRequest(v45);
                [(NSSQLStoreRequestContext *)v45 setConnection:?];

                if (v46)
                {
                  if ([(NSSQLStoreRequestContext *)self debugLogLevel]>= 2)
                  {
                    v84 = objc_autoreleasePoolPush();
                    _pflogInitialize(4);
                    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                    {
                      if (_pflogging_catastrophic_mode)
                      {
                        LogStream = _PFLogGetLogStream(1);
                        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412802;
                          v245 = v44;
                          v246 = 2112;
                          v247 = v42;
                          v248 = 2112;
                          v249 = v46;
                          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@.  During write changes, deletion failed.  Row was updated.  Original row = %@ New Row = %@\n", buf, 0x20u);
                        }
                      }

                      else
                      {
                        v92 = _PFLogGetLogStream(4);
                        if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412802;
                          v245 = v44;
                          v246 = 2112;
                          v247 = v42;
                          v248 = 2112;
                          v249 = v46;
                          _os_log_impl(&dword_18565F000, v92, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@.  During write changes, deletion failed.  Row was updated.  Original row = %@ New Row = %@\n", buf, 0x20u);
                        }
                      }
                    }

                    if (_pflogging_catastrophic_mode)
                    {
                      v86 = 1;
                    }

                    else
                    {
                      v86 = 4;
                    }

                    _NSCoreDataLog_console(v86, "Optimistic locking failure for %@.  During write changes, deletion failed.  Row was updated.  Original row = %@ New Row = %@", v44, v42, v46);
                    goto LABEL_137;
                  }

                  if ([(NSSQLStoreRequestContext *)self debugLogLevel]>= 1)
                  {
                    v84 = objc_autoreleasePoolPush();
                    _pflogInitialize(4);
                    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                    {
                      if (_pflogging_catastrophic_mode)
                      {
                        v87 = _PFLogGetLogStream(1);
                        if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412290;
                          v245 = v44;
                          _os_log_error_impl(&dword_18565F000, v87, OS_LOG_TYPE_ERROR, "CoreData: error: Optimistic locking failure for %@.  During write changes, deletion failed.  Row was updated.\n", buf, 0xCu);
                        }
                      }

                      else
                      {
                        v93 = _PFLogGetLogStream(4);
                        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412290;
                          v245 = v44;
                          _os_log_impl(&dword_18565F000, v93, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: Optimistic locking failure for %@.  During write changes, deletion failed.  Row was updated.\n", buf, 0xCu);
                        }
                      }
                    }

                    if (_pflogging_catastrophic_mode)
                    {
                      v88 = 1;
                    }

                    else
                    {
                      v88 = 4;
                    }

                    _NSCoreDataLog_console(v88, "Optimistic locking failure for %@.  During write changes, deletion failed.  Row was updated.", v44);
LABEL_137:
                    objc_autoreleasePoolPop(v84);
                  }

                  v242 = @"_NSCoreDataOptimisticLockingFailureConflictsKey";
                  v241 = v44;
                  v243 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v241 count:1];
                  v89 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v243 forKeys:&v242 count:1];
                  objc_exception_throw([_NSCoreDataOptimisticLockingException exceptionWithName:*MEMORY[0x1E695D930] reason:@"optimistic locking failure" userInfo:v89]);
                }
              }

              objc_autoreleasePoolPop(v43);
            }

            v39 = [obja countByEnumeratingWithState:&v227 objects:v259 count:16];
          }

          while (v39);
        }

        v191 = [MEMORY[0x1E695DFA8] set];
        v225 = 0u;
        v226 = 0u;
        v223 = 0u;
        v224 = 0u;
        theArray = [(NSSQLSavePlan *)v193 newInsertedRows];
        v47 = [(__CFArray *)theArray countByEnumeratingWithState:&v223 objects:v258 count:16];
        if (v47)
        {
          v48 = *v224;
          do
          {
            for (j = 0; j != v47; ++j)
            {
              if (*v224 != v48)
              {
                objc_enumerationMutation(theArray);
              }

              v50 = *(*(&v223 + 1) + 8 * j);
              v51 = objc_autoreleasePoolPush();
              if (!v50 || (*(v50 + 16) & 1) != 0)
              {
                v53 = 0;
              }

              else
              {
                v52 = atomic_load((v50 + 40));
                v53 = [*(v52 + 16) _storeInfo1];
              }

              if (-[NSEntityDescription _hasUniqueProperties]([v53 entityDescription]))
              {
                [v204 addObject:v50];
              }

              [(NSSQLiteConnection *)v37 insertRow:v50];
              objc_autoreleasePoolPop(v51);
            }

            v47 = [(__CFArray *)theArray countByEnumeratingWithState:&v223 objects:v258 count:16];
          }

          while (v47);
        }

        if (v193)
        {
          v54 = [*(v193 + 48) mutableCopy];
        }

        else
        {
          v54 = 0;
        }

        v221 = 0u;
        v222 = 0u;
        v219 = 0u;
        v220 = 0u;
        v55 = v54;
        v56 = [v54 countByEnumeratingWithState:&v219 objects:&v254 count:16];
        if (v56)
        {
          v57 = *v220;
          do
          {
            for (k = 0; k != v56; ++k)
            {
              if (*v220 != v57)
              {
                objc_enumerationMutation(v55);
              }

              v59 = *(*(&v219 + 1) + 8 * k);
              v60 = objc_autoreleasePoolPush();
              if (!v59 || (*(v59 + 16) & 1) != 0)
              {
                v62 = 0;
              }

              else
              {
                v61 = atomic_load((v59 + 40));
                v62 = [*(v61 + 16) _storeInfo1];
              }

              if (-[NSEntityDescription _hasUniqueProperties]([v62 entityDescription]))
              {
                v63 = -[NSSQLSaveChangesRequestContext originalRowForObjectID:](self, [v59 objectID]);
                if ([(NSSQLRow *)v59 hasUniqueConstraintDiffFrom:v63])
                {
                  [v204 addObject:v59];
                }
              }

              [(NSSQLiteConnection *)v37 updateRow:v59 forRequestContext:self];
              objc_autoreleasePoolPop(v60);
            }

            v56 = [v55 countByEnumeratingWithState:&v219 objects:&v254 count:16];
          }

          while (v56);
        }

        if (v193)
        {
          v64 = [*(v193 + 56) mutableCopy];
        }

        else
        {
          v64 = 0;
        }

        v217 = 0u;
        v218 = 0u;
        v215 = 0u;
        v216 = 0u;
        v65 = [v64 countByEnumeratingWithState:&v215 objects:&v250 count:16];
        if (v65)
        {
          v66 = *v216;
          do
          {
            for (m = 0; m != v65; ++m)
            {
              if (*v216 != v66)
              {
                objc_enumerationMutation(v64);
              }

              v68 = *(*(&v215 + 1) + 8 * m);
              v69 = objc_autoreleasePoolPush();
              if (!v68 || (*(v68 + 16) & 1) != 0)
              {
                v71 = 0;
              }

              else
              {
                v70 = atomic_load((v68 + 40));
                v71 = [*(v70 + 16) _storeInfo1];
              }

              if (-[NSEntityDescription _hasUniqueProperties]([v71 entityDescription]))
              {
                v72 = -[NSSQLSaveChangesRequestContext originalRowForObjectID:](self, [v68 objectID]);
                if ([(NSSQLRow *)v68 hasUniqueConstraintDiffFrom:v72])
                {
                  [v204 addObject:v68];
                }
              }

              [(NSSQLiteConnection *)v37 updateRow:v68 forRequestContext:self];
              objc_autoreleasePoolPop(v69);
            }

            v65 = [v64 countByEnumeratingWithState:&v215 objects:&v250 count:16];
          }

          while (v65);
        }

        v213 = 0u;
        v214 = 0u;
        v211 = 0u;
        v212 = 0u;
        v73 = [v204 countByEnumeratingWithState:&v211 objects:&v237 count:16];
        if (v73)
        {
          v74 = *v212;
          do
          {
            for (n = 0; n != v73; ++n)
            {
              if (*v212 != v74)
              {
                objc_enumerationMutation(v204);
              }

              v76 = *(*(&v211 + 1) + 8 * n);
              v77 = objc_autoreleasePoolPush();
              [(NSSQLiteConnection *)v37 updateConstrainedValuesForRow:v76];
              objc_autoreleasePoolPop(v77);
            }

            v73 = [v204 countByEnumeratingWithState:&v211 objects:&v237 count:16];
          }

          while (v73);
        }

        if ([v191 count])
        {
          v235 = @"_NSCoreDataOptimisticLockingFailureConflictsKey";
          v236 = v191;
          v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v236 forKeys:&v235 count:1];
          objc_exception_throw([_NSCoreDataConstraintViolationException exceptionWithName:*MEMORY[0x1E695D940] reason:@"Constraint violation" userInfo:v94]);
        }

        v78 = [(NSSQLSavePlan *)v193 newCorrelationTableUpdates];
        v209 = 0u;
        v210 = 0u;
        v207 = 0u;
        v208 = 0u;
        v79 = [v78 countByEnumeratingWithState:&v207 objects:&v231 count:16];
        if (v79)
        {
          v80 = *v208;
          do
          {
            for (ii = 0; ii != v79; ++ii)
            {
              if (*v208 != v80)
              {
                objc_enumerationMutation(v78);
              }

              v82 = *(*(&v207 + 1) + 8 * ii);
              v83 = objc_autoreleasePoolPush();
              [(NSSQLiteConnection *)v37 writeCorrelationChangesFromTracker:v82];
              objc_autoreleasePoolPop(v83);
            }

            v79 = [v78 countByEnumeratingWithState:&v207 objects:&v231 count:16];
          }

          while (v79);
        }
      }
    }
  }

LABEL_155:
  v95 = v196;
  if (v196)
  {
    v96 = v196[14];
    if (v96)
    {
      v97 = [MEMORY[0x1E695DF70] array];
      v257 = 0u;
      v256 = 0u;
      v255 = 0u;
      v254 = 0u;
      v98 = [v96 countByEnumeratingWithState:&v254 objects:v259 count:16];
      if (v98)
      {
        v99 = *v255;
        do
        {
          for (jj = 0; jj != v98; ++jj)
          {
            if (*v255 != v99)
            {
              objc_enumerationMutation(v96);
            }

            [*(*(&v254 + 1) + 8 * jj) _copyToInterimLocation];
          }

          v98 = [v96 countByEnumeratingWithState:&v254 objects:v259 count:16];
        }

        while (v98);
      }

      v252 = 0u;
      v253 = 0u;
      v250 = 0u;
      v251 = 0u;
      v101 = [v96 countByEnumeratingWithState:&v250 objects:v258 count:16];
      if (v101)
      {
        v102 = *v251;
        do
        {
          for (kk = 0; kk != v101; ++kk)
          {
            if (*v251 != v102)
            {
              objc_enumerationMutation(v96);
            }

            v104 = *(*(&v250 + 1) + 8 * kk);
            [v104 _moveToPermanentLocation];
            [v97 addObject:v104];
          }

          v101 = [v96 countByEnumeratingWithState:&v250 objects:v258 count:16];
        }

        while (v101);
      }

      v95 = v196;
    }

    v105 = v95[12];
    if (v105)
    {
      v106 = [MEMORY[0x1E695DF70] array];
      v257 = 0u;
      v256 = 0u;
      v255 = 0u;
      v254 = 0u;
      v107 = [v105 countByEnumeratingWithState:&v254 objects:v259 count:16];
      if (v107)
      {
        v108 = *v255;
        do
        {
          for (mm = 0; mm != v107; ++mm)
          {
            if (*v255 != v108)
            {
              objc_enumerationMutation(v105);
            }

            [*(*(&v254 + 1) + 8 * mm) _writeExternalReferenceToInterimLocation];
          }

          v107 = [v105 countByEnumeratingWithState:&v254 objects:v259 count:16];
        }

        while (v107);
      }

      v252 = 0u;
      v253 = 0u;
      v250 = 0u;
      v251 = 0u;
      v110 = [v105 countByEnumeratingWithState:&v250 objects:v258 count:16];
      if (v110)
      {
        v111 = *v251;
        do
        {
          for (nn = 0; nn != v110; ++nn)
          {
            if (*v251 != v111)
            {
              objc_enumerationMutation(v105);
            }

            v113 = *(*(&v250 + 1) + 8 * nn);
            [v113 _moveExternalReferenceToPermanentLocation];
            [v106 addObject:v113];
          }

          v110 = [v105 countByEnumeratingWithState:&v250 objects:v258 count:16];
        }

        while (v110);
      }
    }
  }

  v114 = *(self + 1);
  if (v114 && (*(v114 + 201) & 4) != 0)
  {
    v116 = *(self + 3);
    if (!v116 || *(v116 + 40) != 1)
    {
      v188 = [_NSCoreDataException exceptionWithName:134030 code:@"Missing transaction scope for change tracking of changes." reason:0 userInfo:?];
      objc_exception_throw(v188);
    }

    [(NSSQLiteConnection *)v116 processSaveRequest:?];
    v115 = self;
    objb = *(self + 9);
  }

  else
  {
    objb = 0;
    v115 = self;
  }

  v117 = v115[12];
  if (v117)
  {
    v118 = *(v117 + 136);
  }

  else
  {
    v118 = 0;
  }

  if ([v118 count])
  {
    +[NSSQLiteIndexTrackingModel updateIndexStatistics:usingConnection:model:](NSSQLiteIndexTrackingModel, v118, *(self + 3), [objc_msgSend(*(self + 1) "ancillarySQLModels")]);
  }

  v119 = *(self + 3);
  v120 = *(self + 12);
  v121 = [self rowCache];
  if (!v119 || *(v119 + 40) != 1)
  {
    v187 = [_NSCoreDataException exceptionWithName:134030 code:@"Missing transaction scope for commit changes." reason:0 userInfo:?];
    objc_exception_throw(v187);
  }

  v122 = v121;
  theArraya = *(self + 23);
  v123 = *(self + 12);
  if (v123 && (v124 = *(v123 + 8)) != 0)
  {
    v205 = [v124 persistentStoreRequest];
  }

  else
  {
    v205 = 0;
  }

  v125 = *(self + 1);
  v126 = MEMORY[0x1E696AD80];
  v127 = MEMORY[0x1E695DF20];
  v128 = [MEMORY[0x1E696AD98] numberWithInt:2];
  if (v123)
  {
    v129 = atomic_load((v123 + 144));
    v130 = [MEMORY[0x1E696AD98] numberWithInt:v129];
    v131 = *(v123 + 8);
    if (v131)
    {
      v131 = *(v131 + 32);
    }

    v132 = *(v123 + 104);
  }

  else
  {
    v130 = [MEMORY[0x1E696AD98] numberWithInt:0];
    v131 = 0;
    v132 = 0;
  }

  v133 = [v126 notificationWithName:@"_NSSQLCoreTransactionStateChangeNotification" object:v125 userInfo:{objc_msgSend(v127, "dictionaryWithObjectsAndKeys:", v128, @"_NSSQLCoreTransactionType", v130, @"_NSSQLCoreTransientSequenceNumber", v205, @"_NSSQLCoreActiveSaveRequest", v131, @"_NSSQLCoreActiveSavingContext", v132, @"_NSSQLCoreTransactionExternalDataReferencesToDelete", self, @"requestContext", 0)}];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v134 = *(self + 3);
  if (v134)
  {
    if (v134[40] == 1)
    {
      [(NSSQLiteConnection *)*(self + 3) commitTransaction];
      v135 = *(self + 1);
      if (v135)
      {
        if (atomic_load((v135 + 208)))
        {
          v137 = [v134 registerCurrentQueryGenerationWithStore:*(self + 1)];
          if (v137)
          {
            v138 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
            {
              *v259 = 67109120;
              v260 = v137;
              _os_log_error_impl(&dword_18565F000, v138, OS_LOG_TYPE_ERROR, "CoreData: fault: Save changes failed to generate a post transaction query generation with error %d\n", v259, 8u);
            }

            v139 = _PFLogGetLogStream(17);
            if (os_log_type_enabled(v139, OS_LOG_TYPE_FAULT))
            {
              *v259 = 67109120;
              v260 = v137;
              _os_log_fault_impl(&dword_18565F000, v139, OS_LOG_TYPE_FAULT, "CoreData: Save changes failed to generate a post transaction query generation with error %d", v259, 8u);
            }
          }
        }
      }
    }
  }

  v140 = *(self + 1);
  v141 = MEMORY[0x1E696AD80];
  v142 = MEMORY[0x1E695DF20];
  v143 = [MEMORY[0x1E696AD98] numberWithInt:3];
  if (v123)
  {
    v144 = atomic_load((v123 + 144));
    v145 = [MEMORY[0x1E696AD98] numberWithInt:v144];
    v146 = *(v123 + 8);
    if (v146)
    {
      v146 = *(v146 + 32);
    }

    v147 = *(v123 + 104);
  }

  else
  {
    v145 = [MEMORY[0x1E696AD98] numberWithInt:0];
    v146 = 0;
    v147 = 0;
  }

  v148 = [v141 notificationWithName:@"_NSSQLCoreTransactionStateChangeNotification" object:v140 userInfo:{objc_msgSend(v142, "dictionaryWithObjectsAndKeys:", v143, @"_NSSQLCoreTransactionType", v145, @"_NSSQLCoreTransientSequenceNumber", v205, @"_NSSQLCoreActiveSaveRequest", v146, @"_NSSQLCoreActiveSavingContext", v147, @"_NSSQLCoreTransactionExternalDataReferencesToDelete", self, @"requestContext", 0)}];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  if (v120)
  {
    v149 = *(v120 + 40);
  }

  else
  {
    v149 = 0;
  }

  v239 = 0u;
  v240 = 0u;
  v237 = 0u;
  v238 = 0u;
  v150 = [v149 countByEnumeratingWithState:&v237 objects:v259 count:16];
  if (v150)
  {
    v151 = *v238;
    do
    {
      for (i1 = 0; i1 != v150; ++i1)
      {
        if (*v238 != v151)
        {
          objc_enumerationMutation(v149);
        }

        -[NSPersistentStoreCache forgetRowForObjectID:](v122, [*(*(&v237 + 1) + 8 * i1) objectID]);
      }

      v150 = [v149 countByEnumeratingWithState:&v237 objects:v259 count:16];
    }

    while (v150);
  }

  if (v120)
  {
    v153 = *(v120 + 64);
  }

  else
  {
    v153 = 0;
  }

  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  v154 = [v153 countByEnumeratingWithState:&v231 objects:v258 count:16];
  if (v154)
  {
    v155 = *v232;
    v157 = v122 == theArraya || theArraya == 0;
    do
    {
      for (i2 = 0; i2 != v154; ++i2)
      {
        if (*v232 != v155)
        {
          objc_enumerationMutation(v153);
        }

        v159 = *(*(&v231 + 1) + 8 * i2);
        v160 = [v159 objectID];
        if (v157)
        {
          [(NSPersistentStoreCache *)v122 registerRow:v159 forObjectID:v160 options:4];
        }

        else
        {
          [(NSPersistentStoreCache *)v122 forgetRowForObjectID:v160];
        }
      }

      v154 = [v153 countByEnumeratingWithState:&v231 objects:v258 count:16];
    }

    while (v154);
  }

  if (v120)
  {
    v161 = *(v120 + 72);
  }

  else
  {
    v161 = 0;
  }

  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  v162 = [v161 countByEnumeratingWithState:&v227 objects:&v254 count:16];
  if (v162)
  {
    v163 = *v228;
    do
    {
      for (i3 = 0; i3 != v162; ++i3)
      {
        if (*v228 != v163)
        {
          objc_enumerationMutation(v161);
        }

        [(NSPersistentStoreCache *)v122 forgetRowForObjectID:?];
      }

      v162 = [v161 countByEnumeratingWithState:&v227 objects:&v254 count:16];
    }

    while (v162);
  }

  if (v120)
  {
    v165 = [*(v120 + 56) mutableCopy];
  }

  else
  {
    v165 = 0;
  }

  if ([v165 count])
  {
    v166 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v166 = 0;
  }

  v225 = 0u;
  v226 = 0u;
  v223 = 0u;
  v224 = 0u;
  v167 = [v165 countByEnumeratingWithState:&v223 objects:&v250 count:16];
  if (v167)
  {
    v168 = *v224;
    v170 = v122 == theArraya || theArraya == 0;
    do
    {
      for (i4 = 0; i4 != v167; ++i4)
      {
        if (*v224 != v168)
        {
          objc_enumerationMutation(v165);
        }

        v172 = *(*(&v223 + 1) + 8 * i4);
        v173 = [v172 objectID];
        if (v170)
        {
          [(NSPersistentStoreCache *)v122 registerRow:v172 forObjectID:v173 options:4];
        }

        else
        {
          [(NSPersistentStoreCache *)v122 forgetRowForObjectID:v173];
        }

        [v166 addObject:{objc_msgSend(v172, "objectID")}];
      }

      v167 = [v165 countByEnumeratingWithState:&v223 objects:&v250 count:16];
    }

    while (v167);
  }

  if (v166)
  {
    if (v120 && (v174 = *(v120 + 8)) != 0)
    {
      v175 = *(v174 + 32);
    }

    else
    {
      v175 = 0;
    }

    [(NSManagedObjectContext *)v175 _persistentStoreDidUpdateAdditionalRows:v166];
  }

  v176 = *(self + 12);
  if (v176)
  {
    v178 = *(v176 + 80);
    v177 = *(v176 + 88);
  }

  else
  {
    v178 = 0;
    v177 = 0;
  }

  if (v178 | v177)
  {
    v179 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v180 = v179;
    if (v178)
    {
      [v179 setObject:v178 forKey:@"addedOrUpdated"];
    }

    if (v177)
    {
      [v180 setObject:v177 forKey:@"deleted"];
    }

    v181 = [MEMORY[0x1E696AD80] notificationWithName:@"NSPersistentStoreOrderKeyUpdateNotification" object:*(self + 1) userInfo:v180];

    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  -[NSSQLiteConnection _performPostSaveTasks:andForceFullVacuum:](*(self + 3), [objc_msgSend(self "persistentStoreRequest")], 0);
  if (v197)
  {
    v182 = *(self + 1);
    if (v182)
    {
      [*(v182 + 216) unlock];
    }
  }

  if (v196)
  {
    v183 = v196[13];
    if (v183)
    {
      _deleteExternalDataReferences(v183);
    }

    v184 = v196[15];
    if (v184)
    {
      _deleteFileBackedFutures(v184);
    }
  }

  [(NSSQLCore *)*(self + 1) _postChangeNotificationWithTransactionID:?];
  v185 = *(self + 3);
  [(NSSQLiteConnection *)v185 endFetchAndRecycleStatement:?];
  if (v195)
  {
    [(NSSQLiteConnection *)v185 setSecureDeleteMode:?];
  }

  [(NSSQLiteConnection *)v185 _clearSaveGeneratedCachedStatements];
  if (v185)
  {

    *(v185 + 192) = 0;
  }

  [v194 drain];
  result = NSArray_EmptyArray;
  v186 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18567C1F0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18567BEDCLL);
  }

  JUMPOUT(0x18567B120);
}

uint64_t PFVectorHash(const __CFBitVector *a1)
{
  *bytes = 0;
  Count = CFBitVectorGetCount(a1);
  if (Count >= 64)
  {
    v3.length = 64;
  }

  else
  {
    v3.length = Count;
  }

  v3.location = 0;
  CFBitVectorGetBits(a1, v3, bytes);
  return *bytes;
}

void sub_18567C8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t readFileSizeFromJournalHandle(sqlite3 *a1)
{
  v1 = -1;
  v3 = 0;
  v4 = -1;
  if (!sqlite3_file_control(a1, 0, 28, &v3) && v3 && *v3)
  {
    if ((*(*v3 + 48))())
    {
      return -1;
    }

    else
    {
      return v4;
    }
  }

  return v1;
}

void sub_18567E35C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  _Unwind_Resume(a1);
}

void sub_18567E4F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __internalBlockToDeallocNSManagedObjectContext_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  [(NSManagedObjectContext *)v2 _dealloc__];
  MEMORY[0x1865FAAD0]([v3 drain]);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v5 = *(StatusReg + 712);
  if (v5 == v2)
  {
    *(StatusReg + 712) = 0;
  }

  else
  {
    if (v5)
    {
      v6 = atomic_load((v5 + 8));
    }

    else
    {
      v6 = 0;
    }

    if (v6 == v2)
    {
      _PF_actor_set_owner(v6, v5, 0);
    }
  }

  if (v2)
  {
    do
    {
      v7 = atomic_load(v2 + 1);
    }

    while (!_PF_actor_set_owner(v7, v2, 0));
  }

  __dmb(0xBu);
  v2[3] = 0;
  *(StatusReg + 712) = 0;
  if (!*(a1 + 48))
  {
    objc_destructInstance(v2);
  }

  v8 = dispatch_time(0, 3000000000);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __internalBlockToDeallocNSManagedObjectContext_block_invoke_2;
  block[3] = &unk_1E6EC26D8;
  v12 = *(a1 + 48);
  v10 = *(a1 + 40);
  block[4] = *(a1 + 32);
  block[5] = v10;
  dispatch_after(v8, global_queue, block);
}

id returnUIntegerThing1(void *a1, const char *a2)
{
  v3 = [a1 _underlyingProperty];

  return [v3 a2];
}

id returnIdThing1(void *a1, const char *a2)
{
  v3 = [a1 _underlyingProperty];

  return [v3 a2];
}

id _executeNewRowValuesForObjectFaultRequest(void *a1)
{
  v1 = a1;
  v22 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = a1[11];
    a1 = a1[4];
  }

  else
  {
    v2 = 0;
  }

  [a1 stalenessInterval];
  v4 = v3;
  if (v3 <= 0.0)
  {
    v5 = *&NSSQLDistantPastTimeInterval;
  }

  else
  {
    v5 = CFAbsoluteTimeGetCurrent() - v3;
  }

  if (v4 == 0.0)
  {
    v6 = *&NSSQLDistantFutureTimeInterval;
  }

  else
  {
    v6 = v5;
  }

  v7 = -[NSPersistentStoreCache rowForObjectID:afterTimestamp:]([v1 rowCache], v2, v6);
  if (!v7)
  {
    v7 = _executeObjectFaultRequest(v1);
  }

  v8 = v7;
  if ([(NSSQLStoreRequestContext *)v1 debugLogLevel]>= 3)
  {
    v9 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        LogStream = _PFLogGetLogStream(1);
        if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v19 = v2;
          v20 = 2112;
          v21 = v8;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: fault fulfilled from database for : %@ with row values: %@\n", buf, 0x16u);
        }
      }

      else
      {
        v12 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v19 = v2;
          v20 = 2112;
          v21 = v8;
          _os_log_impl(&dword_18565F000, v12, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: fault fulfilled from database for : %@ with row values: %@\n", buf, 0x16u);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v13 = 1;
    }

    else
    {
      v13 = 4;
    }

    _NSCoreDataLog_console(v13, "fault fulfilled from database for : %@ with row values: %@", v2, v8);
LABEL_35:
    objc_autoreleasePoolPop(v9);
    goto LABEL_36;
  }

  if ([(NSSQLStoreRequestContext *)v1 debugLogLevel]>= 1)
  {
    v9 = objc_autoreleasePoolPush();
    _pflogInitialize(4);
    if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v11 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v19 = v2;
          _os_log_error_impl(&dword_18565F000, v11, OS_LOG_TYPE_ERROR, "CoreData: error: fault fulfilled from database for : %@\n", buf, 0xCu);
        }
      }

      else
      {
        v14 = _PFLogGetLogStream(4);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v19 = v2;
          _os_log_impl(&dword_18565F000, v14, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: fault fulfilled from database for : %@\n", buf, 0xCu);
        }
      }
    }

    if (_pflogging_catastrophic_mode)
    {
      v15 = 1;
    }

    else
    {
      v15 = 4;
    }

    _NSCoreDataLog_console(v15, "fault fulfilled from database for : %@", v2);
    goto LABEL_35;
  }

LABEL_36:
  result = v8;
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

void *_executeObjectFaultRequest(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  if (!a1 || (v3 = *(a1 + 88)) == 0)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: _executeObjectFaultRequest passed a nil objectID\n", buf, 2u);
    }

    v6 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v6, OS_LOG_TYPE_FAULT, "CoreData: _executeObjectFaultRequest passed a nil objectID", buf, 2u);
    }

    goto LABEL_15;
  }

  if ([*(a1 + 88) isTemporaryID])
  {
    goto LABEL_15;
  }

  if (PFInstrumentsRecordingEnabled())
  {
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = ___executeObjectFaultRequest_block_invoke;
    v44[3] = &unk_1E6EC2C88;
    v44[4] = v3;
    v4 = ___executeObjectFaultRequest_block_invoke(v44);
  }

  else
  {
    v4 = 0;
  }

  Request = [(NSSQLObjectFaultRequestContext *)a1 createFetchRequestContext];
  [(NSSQLStoreRequestContext *)Request setConnection:?];
  v8 = [(NSSQLCore *)*(a1 + 8) entityForObjectID:v3];
  if (!v8)
  {
LABEL_15:
    objc_autoreleasePoolPop(v2);
    result = 0;
LABEL_16:
    v14 = *MEMORY[0x1E69E9840];
    return result;
  }

  v9 = [(NSSQLiteConnection *)*(a1 + 24) statementCacheForEntity:v8];
  v10 = v9;
  if (v9)
  {
    p_isa = &v9->_faultingStatementCache->super.isa;
    v12 = [v3 _referenceData64];
    if (p_isa)
    {
      [objc_msgSend(objc_msgSend(p_isa "bindVariables")];
      [(NSSQLFetchRequestContext *)Request setFetchStatement:p_isa];
      goto LABEL_21;
    }
  }

  else
  {
    v12 = [v3 _referenceData64];
  }

  v15 = [(NSSQLFetchRequestContext *)Request fetchStatement];
  p_isa = v15;
  if (v15)
  {
    [*(v15 + 16) removeAllObjects];
  }

  v16 = [[NSSQLBindVariable alloc] initWithInt64:v12 sqlType:2];
  [(NSSQLiteStatement *)p_isa addBindVariable:v16];

  [(NSSQLiteStatementCache *)v10 cacheFaultingStatement:?];
LABEL_21:
  if (Request)
  {
    Request->_isUsingCachedStatement = 1;
    v17 = p_isa;
    v18 = 0;
    v19 = 0;
    Request->_fetchPlan->flags = (*&Request->_fetchPlan->flags & 0xFFFFFFE3 | 8);
    while (!v19 && v18 != 1)
    {
      v19 = _newFetchedRowsForRequest(Request);
      [(NSSQLStoreRequestContext *)Request setConnection:?];

      Request = 0;
      ++v18;
    }

    v20 = [(_PFArray *)v19 count];
    v21 = [(_PFArray *)v19 lastObject];
    v22 = v21;

    if (v21)
    {
      [v21 knownKeyValuesPointer];
    }

    if (!v20)
    {

      v27 = MEMORY[0x1E696ABC0];
      v45 = @"objectID";
      v46 = v3;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v29 = [v27 errorWithDomain:*MEMORY[0x1E696A250] code:133000 userInfo:v28];
      objc_setProperty_nonatomic(a1, v30, v29, 40);
LABEL_38:
      v21 = 0;
      goto LABEL_39;
    }

    if (v20 == 1)
    {
      if ([objc_msgSend(v21 "objectID")])
      {
LABEL_39:
        if (v4)
        {
          if (PFInstrumentsGetLog_logtoken != -1)
          {
            dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
          }

          if (v4 != -1)
          {
            v35 = PFInstrumentsGetLog_coreDataInstrumentsLog;
            if (os_signpost_enabled(PFInstrumentsGetLog_coreDataInstrumentsLog))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_18565F000, v35, OS_SIGNPOST_INTERVAL_END, v4, "Fault", &unk_1859905C6, buf, 2u);
            }
          }
        }

        objc_autoreleasePoolPop(v2);
        result = v21;
        goto LABEL_16;
      }

      v23 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_37;
      }

      v24 = _pflogging_catastrophic_mode == 0;
      v25 = _PFLogGetLogStream(1);
      v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
      if (v24)
      {
        if (v26)
        {
LABEL_60:
          v43 = [v21 objectID];
          *buf = 138412546;
          v50 = v3;
          v51 = 2112;
          v52 = v43;
          _os_log_error_impl(&dword_18565F000, v25, OS_LOG_TYPE_ERROR, "CoreData: error: Asked to fault objectID %@ but database returned row with different objectID %@\n", buf, 0x16u);
        }
      }

      else if (v26)
      {
        goto LABEL_60;
      }

LABEL_37:
      _NSCoreDataLog_console(1, "Asked to fault objectID %@ but database returned row with different objectID %@", v3, [v21 objectID]);
      objc_autoreleasePoolPop(v23);
      v31 = MEMORY[0x1E696ABC0];
      v47[0] = @"objectID";
      v47[1] = @"message";
      v48[0] = v3;
      v48[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Database appears corrupt.  Asked to fault objectID %@ but database returned row with different objectID %@", v3, objc_msgSend(v21, "objectID")];
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];
      v33 = [v31 errorWithDomain:*MEMORY[0x1E696A250] code:134071 userInfo:v32];
      objc_setProperty_nonatomic(a1, v34, v33, 40);

      goto LABEL_38;
    }

    if (v4)
    {
      if (PFInstrumentsGetLog_logtoken != -1)
      {
        dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
      }

      if (v4 != -1)
      {
        v36 = PFInstrumentsGetLog_coreDataInstrumentsLog;
        if (os_signpost_enabled(PFInstrumentsGetLog_coreDataInstrumentsLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_18565F000, v36, OS_SIGNPOST_INTERVAL_END, v4, "Fault", &unk_1859905C6, buf, 2u);
        }
      }
    }

    v37 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v38 = _pflogging_catastrophic_mode == 0;
      v39 = _PFLogGetLogStream(1);
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
      if (v38)
      {
        if (!v40)
        {
          goto LABEL_59;
        }

        *buf = 138412290;
        v50 = v3;
      }

      else
      {
        if (!v40)
        {
          goto LABEL_59;
        }

        *buf = 138412290;
        v50 = v3;
      }

      _os_log_error_impl(&dword_18565F000, v39, OS_LOG_TYPE_ERROR, "CoreData: error: Asked to fault objectID %@ but database returned multiple rows\n", buf, 0xCu);
    }

LABEL_59:
    _NSCoreDataLog_console(1, "Asked to fault objectID %@ but database returned multiple rows", v3);
    objc_autoreleasePoolPop(v37);

    v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to resolve fault to exactly one object for %@", v3];
    v42 = [_NSCoreDataException exceptionWithName:134071 code:v41 reason:0 userInfo:?];
    objc_exception_throw(v42);
  }

  result = p_isa;
  __break(1u);
  return result;
}

void sub_185680424(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x185680430);
}

os_signpost_id_t ___executeObjectFaultRequest_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (PFInstrumentsGetLog_logtoken != -1)
  {
    dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
  }

  v2 = os_signpost_id_generate(PFInstrumentsGetLog_coreDataInstrumentsLog);
  if (PFInstrumentsGetLog_logtoken != -1)
  {
    dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
  }

  v3 = PFInstrumentsGetLog_coreDataInstrumentsLog;
  kdebug_trace();
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v4 = *(a1 + 32);
    v7 = 138412290;
    v8 = v4;
    _os_signpost_emit_with_name_impl(&dword_18565F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "Fault", "%@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

void *_PF_Handler_Public_GetProperty(id **a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = *(a1 + 5);
    if (v6)
    {
      v7 = a1 + v6;
    }

    else
    {
      v7 = 0;
    }

    if (((v7[(a2 >> 3) + -4 * *(a1 + 19)] >> (a2 & 7)) & 1) == 0)
    {
      _PF_FulfillDeferredFault(a1, a2);
    }

    v8 = _NSGetUsingKeyValueGetter();
    v9 = *(*(_PFEntityForManagedObject(a1) + 19) + 72);
    if (v9 && (*(v9 + a2) & 0x10) != 0 && v8 && [v8 isNSNumber])
    {
      v10 = MEMORY[0x1E695DF00];
      [v8 doubleValue];
      v8 = [v10 dateWithTimeIntervalSinceReferenceDate:?];
    }
  }

  else
  {
    v8 = [a1 _genericValueForKey:a3 withIndex:a2 flags:1];
    if (!a1)
    {
      return v8;
    }
  }

  if ((*(a1 + 17) & 0x40) != 0)
  {
    v12 = a1;
    *(a1 + 4) &= ~0x4000u;
  }

  return v8;
}

uint64_t _kvcPropertysPublicGetters(void *a1)
{
  if (*(a1[19] + 24))
  {
    return *(a1[19] + 24);
  }

  else
  {
    return _resolveForSelectorAndType(a1, sel__createValueGetterWithContainerClassID_key_, qword_1ED4BE9A8, 3u);
  }
}

Class override_instace_class(void *a1)
{
  Class = object_getClass(a1);

  return class_getSuperclass(Class);
}

Class override_instace_class_0(void *a1)
{
  Class = object_getClass(a1);

  return class_getSuperclass(Class);
}

uint64_t _PF_Handler_Public_SetProperty(unsigned int *a1, unint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    v10 = *(*(_PFEntityForManagedObject(a1) + 19) + 72);
    if (v10 && a3 && (*(v10 + a2) & 1) != 0 && [a3 isNSDate])
    {
      v11 = MEMORY[0x1E696AD98];
      [a3 timeIntervalSinceReferenceDate];
      [v11 numberWithDouble:?];
    }

    if (*a5 == _NSKeyValueIvarSetterClass)
    {
      [a1 willChangeValueForKey:a4];
      _NSSetUsingKeyValueSetter();
      result = [a1 didChangeValueForKey:a4];
    }

    else
    {
      result = _NSSetUsingKeyValueSetter();
    }

    v13 = a1[5];
    if (v13)
    {
      v14 = a1 + v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = &v14[-4 * *(a1 + 19)];
    v15[a2 >> 3] |= 1 << (a2 & 7);
  }

  else
  {

    return [a1 _setGenericValue:a3 forKey:a4 withIndex:a2 flags:1];
  }

  return result;
}

CFAllocatorRef _PFStackAllocatorCreate(unint64_t *a1, uint64_t a2)
{
  v3 = (a1 + 47) & 0xFFFFFFFFFFFFFFF0;
  *a1 = v3;
  a1[1] = v3;
  a1[2] = a1 + a2;
  a1[3] = 0;
  context.version = 0;
  context.info = a1;
  memset(&context.retain, 0, 24);
  context.allocate = stack_allocate;
  context.reallocate = stack_reallocate;
  context.deallocate = stack_deallocate;
  context.preferredSize = preferredSize;
  result = CFAllocatorCreate(*MEMORY[0x1E695E4B0], &context);
  v5 = (a1[1] + 15) & 0xFFFFFFFFFFFFFFF0;
  *a1 = v5;
  a1[1] = v5;
  return result;
}

void *stack_allocate(size_t size, uint64_t a2, void *a3)
{
  if (size - 1 > 0x7FFFFE || (result = a3[1], v6 = (result + size + 15) & 0xFFFFFFFFFFFFFFF0, v6 >= a3[2]))
  {
    v7 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v7 = malloc_default_zone();
    }

    result = malloc_type_zone_malloc(v7, size, 0x5C48A1B7uLL);
    if (result)
    {
      ++a3[3];
    }
  }

  else
  {
    a3[1] = v6;
  }

  return result;
}

void stack_deallocate(void *ptr, void *a2)
{
  if (*a2 > ptr || a2[2] <= ptr)
  {
    --a2[3];
    v3 = _PF_Private_Malloc_Zone;
    if (!_PF_Private_Malloc_Zone)
    {
      v3 = malloc_default_zone();
    }

    malloc_zone_free(v3, ptr);
  }
}

id _executeNewValuesForRelationshipFaultRequest(uint64_t *a1)
{
  v124 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v119 = a1[12];
    v2 = a1[11];
    v3 = a1[4];
  }

  else
  {
    v2 = 0;
    v119 = 0;
    v3 = 0;
  }

  v4 = [v2 name];
  if ([v2 isToMany])
  {
    [v3 stalenessInterval];
    v6 = v5;
    Current = CFAbsoluteTimeGetCurrent();
    v8 = Current - v6;
    if (v6 <= 0.0)
    {
      v8 = *&NSSQLDistantPastTimeInterval;
    }

    if (v6 == 0.0)
    {
      v9 = *&NSSQLDistantFutureTimeInterval;
    }

    else
    {
      v9 = v8;
    }

    v10 = -[NSPersistentStoreCache toManyInformationForSourceObjectID:forProperty:afterTimestamp:]([a1 rowCache], v119, v2, v9);
    if (v10)
    {
      v11 = *MEMORY[0x1E69E9840];

      return v10;
    }

    v116 = [v2 isOrdered];
    v117 = objc_alloc_init(MEMORY[0x1E696AAC8]);
    if (a1)
    {
      v18 = a1[12];
      if (([v18 isTemporaryID] & 1) == 0)
      {
        v19 = [(NSSQLCore *)a1[1] entityForObjectID:v18];
        if (v19)
        {
          v20 = a1[11];
          goto LABEL_21;
        }
      }
    }

    else if (([0 isTemporaryID] & 1) == 0)
    {
      v19 = [(NSSQLCore *)0 entityForObjectID:?];
      v18 = 0;
      v20 = 0;
      v58 = 0;
      if (!v19)
      {
        goto LABEL_106;
      }

LABEL_21:
      v21 = [v19[5] objectForKey:{objc_msgSend(v20, "name")}];
      if (PFInstrumentsRecordingEnabled())
      {
        *v121 = MEMORY[0x1E69E9820];
        *&v121[8] = 3221225472;
        *&v121[16] = ___newFetchedPKsForRelationshipFaultRequest_block_invoke;
        *&v122 = &unk_1E6EC57B8;
        *(&v122 + 1) = v18;
        v123 = v20;
        v114 = ___newFetchedPKsForRelationshipFaultRequest_block_invoke(v121);
      }

      else
      {
        v114 = 0;
      }

      if (a1)
      {
        v25 = a1[3];
      }

      else
      {
        v25 = 0;
      }

      v115 = [(NSSQLiteConnection *)v25 statementCacheForEntity:v19];
      if (v115)
      {
        v26 = -[NSMutableDictionary objectForKey:](v115->_toManyRelationshipStatementCache, "objectForKey:", [v21 name]);
      }

      else
      {
        v26 = 0;
      }

      if ([v26 count] >= 2)
      {
        v27 = [v26 objectAtIndex:0];
        if (v27)
        {
          v118 = [v26 objectAtIndex:1];
          v28 = v118;
          [objc_msgSend(objc_msgSend(v27 "bindVariables")];
          v29 = *(v27 + 48);
          v30 = v29 != 0;
          [(NSFetchRequest *)v118 setIncludesPropertyValues:v29 != 0];
          v31 = v27;
          v33 = 0;
          v34 = 0;
LABEL_70:
          LODWORD(v113) = v34;
          v57 = 0;
          v115 = 0;
          v58 = 0;
          v112 = sel_userInfo;
          *&v32 = 138412546;
          v111 = v32;
          while (1)
          {
            if (v58 || v57 == 1)
            {

              if (((v113 | !v30) & 1) == 0)
              {
                v68 = [(_PFArray *)v58 count:v111];
                v69 = v68;
                if (v68)
                {
                  v70 = PF_ALLOCATE_OBJECT_ARRAY(v68);
                  v126.location = 0;
                  v126.length = v69;
                  CFArrayGetValues(v58, v126, v70);
                  CFMergeSortArray();
                  v71 = [[_PFArray alloc] initWithObjects:v70 count:v69 andFlags:11];

                  v58 = v71;
                }
              }

              if (v114)
              {
                if (PFInstrumentsGetLog_logtoken != -1)
                {
                  dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
                }

                if (v114 != -1)
                {
                  v72 = PFInstrumentsGetLog_coreDataInstrumentsLog;
                  if (os_signpost_enabled(PFInstrumentsGetLog_coreDataInstrumentsLog))
                  {
                    *buf = 0;
                    _os_signpost_emit_with_name_impl(&dword_18565F000, v72, OS_SIGNPOST_INTERVAL_END, v114, "RelationshipFault", &unk_1859905C6, buf, 2u);
                  }
                }
              }

LABEL_106:
              if ([(_PFArray *)v58 count])
              {
                v73 = v58;
                if (v116)
                {
                  v74 = [(_PFArray *)v58 count];
                  v118 = &v111;
                  v75 = MEMORY[0x1EEE9AC00](v74);
                  v78 = &v111 - v77;
                  v79 = 8 * v76;
                  if (v75 >= 0x201)
                  {
                    v78 = NSAllocateScannedUncollectable();
                    v81 = NSAllocateScannedUncollectable();
                  }

                  else
                  {
                    bzero(&v111 - v77, 8 * v76);
                    MEMORY[0x1EEE9AC00](v80);
                    v81 = &v111 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
                    bzero(v81, v79);
                    if (!v74)
                    {
LABEL_122:
                      v83 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v81 count:v74];
                      v84 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v78 count:v74];
                      if (v74 >= 0x201)
                      {
                        NSZoneFree(0, v78);
                        NSZoneFree(0, v81);
                      }

LABEL_124:
                      if ([(NSSQLStoreRequestContext *)a1 debugLogLevel]>= 2)
                      {
                        v89 = objc_autoreleasePoolPush();
                        _pflogInitialize(4);
                        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                        {
                          if (_pflogging_catastrophic_mode)
                          {
                            LogStream = _PFLogGetLogStream(1);
                            if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                            {
                              v91 = [v2 name];
                              v92 = [(_PFArray *)v58 count];
                              *v121 = 138413058;
                              *&v121[4] = v91;
                              *&v121[12] = 2112;
                              *&v121[14] = v119;
                              *&v121[22] = 1024;
                              LODWORD(v122) = v92;
                              WORD2(v122) = 2112;
                              *(&v122 + 6) = v58;
                              _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: to-many relationship fault %@ for objectID %@ fulfilled from database.  Got %d rows with values: %@\n", v121, 0x26u);
                            }
                          }

                          else
                          {
                            v96 = _PFLogGetLogStream(4);
                            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
                            {
                              v97 = [v2 name];
                              v98 = [(_PFArray *)v58 count];
                              *v121 = 138413058;
                              *&v121[4] = v97;
                              *&v121[12] = 2112;
                              *&v121[14] = v119;
                              *&v121[22] = 1024;
                              LODWORD(v122) = v98;
                              WORD2(v122) = 2112;
                              *(&v122 + 6) = v58;
                              _os_log_impl(&dword_18565F000, v96, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: to-many relationship fault %@ for objectID %@ fulfilled from database.  Got %d rows with values: %@\n", v121, 0x26u);
                            }
                          }
                        }

                        if (_pflogging_catastrophic_mode)
                        {
                          v99 = [v2 name];
                          v100 = [(_PFArray *)v58 count];
                          v101 = 1;
                        }

                        else
                        {
                          v99 = [v2 name];
                          v100 = [(_PFArray *)v58 count];
                          v101 = 4;
                        }

                        _NSCoreDataLog_console(v101, "to-many relationship fault %@ for objectID %@ fulfilled from database.  Got %d rows with values: %@", v99, v119, v100, v58);
                        goto LABEL_148;
                      }

                      if ([(NSSQLStoreRequestContext *)a1 debugLogLevel]>= 1)
                      {
                        v89 = objc_autoreleasePoolPush();
                        _pflogInitialize(4);
                        if (_NSCoreDataIsLogEnabled(4) && _pflogging_enable_oslog >= 1)
                        {
                          if (_pflogging_catastrophic_mode)
                          {
                            v93 = _PFLogGetLogStream(1);
                            if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                            {
                              v94 = [v2 name];
                              v95 = [(_PFArray *)v58 count];
                              *v121 = 138412802;
                              *&v121[4] = v94;
                              *&v121[12] = 2112;
                              *&v121[14] = v119;
                              *&v121[22] = 1024;
                              LODWORD(v122) = v95;
                              _os_log_error_impl(&dword_18565F000, v93, OS_LOG_TYPE_ERROR, "CoreData: error: to-many relationship fault %@ for objectID %@ fulfilled from database.  Got %d rows\n", v121, 0x1Cu);
                            }
                          }

                          else
                          {
                            v102 = _PFLogGetLogStream(4);
                            if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
                            {
                              v103 = [v2 name];
                              v104 = [(_PFArray *)v58 count];
                              *v121 = 138412802;
                              *&v121[4] = v103;
                              *&v121[12] = 2112;
                              *&v121[14] = v119;
                              *&v121[22] = 1024;
                              LODWORD(v122) = v104;
                              _os_log_impl(&dword_18565F000, v102, OS_LOG_TYPE_DEFAULT, "CoreData: annotation: to-many relationship fault %@ for objectID %@ fulfilled from database.  Got %d rows\n", v121, 0x1Cu);
                            }
                          }
                        }

                        if (_pflogging_catastrophic_mode)
                        {
                          v105 = [v2 name];
                          v106 = [(_PFArray *)v58 count];
                          v107 = 1;
                        }

                        else
                        {
                          v105 = [v2 name];
                          v106 = [(_PFArray *)v58 count];
                          v107 = 4;
                        }

                        _NSCoreDataLog_console(v107, "to-many relationship fault %@ for objectID %@ fulfilled from database.  Got %d rows", v105, v119, v106);
LABEL_148:
                        objc_autoreleasePoolPop(v89);
                      }

                      v108 = [a1 rowCache];
                      if (v108)
                      {
                        [NSPersistentStoreCache registerToMany:v108 withOrderKeys:v84 forSourceObjectID:v83 forProperty:v119 options:v2 andTimestamp:Current];
                      }

                      [v117 drain];
                      v109 = 0;
                      v23 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v84, v83, 0}];

LABEL_152:
                      v110 = *MEMORY[0x1E69E9840];
                      return v23;
                    }
                  }

                  v85 = 0;
                  do
                  {
                    v86 = [(_PFArray *)v58 objectAtIndex:v85];
                    *&v78[8 * v85] = [v86 valueAtIndex:0];
                    v87 = [v86 valueAtIndex:1];
                    if (v87)
                    {
                      v88 = v87;
                    }

                    else
                    {
                      v88 = &unk_1EF435F50;
                    }

                    *&v81[8 * v85++] = v88;
                  }

                  while (v74 != v85);
                  goto LABEL_122;
                }
              }

              else
              {
                if (v116)
                {
                  v82 = &NSOrderedSet_EmptyOrderedSet;
                }

                else
                {
                  v82 = &NSSet_EmptySet;
                }

                v73 = *v82;
              }

              v83 = 0;
              v84 = v73;
              goto LABEL_124;
            }

            if (v33)
            {
              goto LABEL_78;
            }

            v59 = [NSSQLFetchRequestContext alloc];
            v60 = a1 ? a1[1] : 0;
            v61 = [(NSSQLFetchRequestContext *)v59 initWithRequest:v118 context:0 sqlCore:v60, v111, *(&v111 + 1), v112];
            [(NSSQLFetchRequestContext *)v61 setIsFaultRequest:1];
            [(NSSQLFetchRequestContext *)v61 setFetchStatement:v27];
            if (v61)
            {
              break;
            }

            v33 = 0;
            if (a1)
            {
LABEL_79:
              v62 = a1[3];
              goto LABEL_80;
            }

LABEL_92:
            v62 = 0;
LABEL_80:
            [(NSSQLStoreRequestContext *)v33 setConnection:v62];
            if (v33)
            {
              v63 = *(v33 + 136);
            }

            else
            {
              v63 = 0;
            }

            v64 = *(v63 + 72) & 0xFFFFFFE3;
            if (v30)
            {
              v65 = v64 | 0x10;
              *(v63 + 72) = v65;
              if (v27)
              {
                v66 = *(v27 + 48);
              }

              else
              {
                v66 = 0;
              }

              *(v63 + 40) = v66;
              v67 = v65 & 0xFFFFFFF2;
            }

            else
            {
              v67 = v64 | 4;
            }

            *(v63 + 72) = v67;
            v58 = _newFetchedRowsForRequest(v33);
            [(NSSQLStoreRequestContext *)v33 setConnection:?];

            v33 = 0;
            ++v57;
          }

          v61->_isUsingCachedStatement = 1;
          v33 = v61;
LABEL_78:
          if (a1)
          {
            goto LABEL_79;
          }

          goto LABEL_92;
        }
      }

      v118 = objc_alloc_init(NSFetchRequest);
      -[NSFetchRequest setEntity:](v118, "setEntity:", [objc_msgSend(v21 "destinationEntity")]);
      [(NSFetchRequest *)v118 setIncludesPropertyValues:0];
      v113 = [v18 _referenceData64];
      if (v21 && *(v21 + 24) == 9)
      {
        v35 = [objc_alloc(MEMORY[0x1E696ACC0]) initWithObject:{objc_msgSend(*(v21 + 56), "name")}];
        v36 = [objc_alloc(MEMORY[0x1E696ACB8]) initWithKeyPath:v35];

        v37 = [objc_alloc(MEMORY[0x1E696AB40]) initWithObject:v18];
        v38 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v37 rightExpression:v36 modifier:0 type:10 options:0];
      }

      else
      {
        v39 = [v18 _referenceData64];
        v40 = objc_alloc(MEMORY[0x1E696ACC0]);
        if (v21)
        {
          v41 = *(v21 + 56);
        }

        else
        {
          v41 = 0;
        }

        v42 = [v40 initWithObject:{objc_msgSend(objc_msgSend(v41, "foreignKey"), "name")}];
        v37 = [objc_alloc(MEMORY[0x1E696ACB8]) initWithKeyPath:v42];

        v43 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:v39];
        v36 = [objc_alloc(MEMORY[0x1E696AB40]) initWithObject:v43];

        v38 = [objc_alloc(MEMORY[0x1E696AB18]) initWithLeftExpression:v37 rightExpression:v36 modifier:0 type:4 options:0];
      }

      v44 = v38;

      [(NSFetchRequest *)v118 setPredicate:v44];
      if (v21)
      {
        if ([objc_msgSend(v21 "propertyDescription")])
        {
          if (*(v21 + 24) == 9)
          {
            if (*(v21 + 56) == v21)
            {
              *buf = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:objc_msgSend(*(v21 + 56) ascending:{"name"), 1}];
              v46 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:buf count:1];

              [(NSFetchRequest *)v118 setSortDescriptors:v46];
              v45 = *(v21 + 24) == 9;
              v34 = 1;
            }

            else
            {
              v34 = 0;
              v45 = 1;
            }
          }

          else
          {
            v34 = 0;
            v45 = 0;
          }

          goto LABEL_51;
        }

        v30 = 0;
        v34 = 0;
      }

      else
      {
        v34 = 0;
        v45 = 0;
        v30 = 0;
        if ([0 isOrdered])
        {
LABEL_51:
          v47 = objc_alloc_init(NSExpressionDescription);
          [(NSPropertyDescription *)v47 setName:@"objectID"];
          [(NSExpressionDescription *)v47 setExpressionResultType:2000];
          -[NSExpressionDescription setExpression:](v47, "setExpression:", [MEMORY[0x1E696ABC8] expressionForEvaluatedObject]);
          if (v45)
          {
            v112 = [(NSSQLManyToMany *)v21 inverseOrderColumnName];
            v48 = objc_alloc_init(NSExpressionDescription);
            [(NSPropertyDescription *)v48 setName:@"orderKey"];
            [(NSExpressionDescription *)v48 setExpressionResultType:200];
            -[NSExpressionDescription setExpression:](v48, "setExpression:", [MEMORY[0x1E696ABC8] expressionForFunction:NSStringFromSelector(sel_inverseOrderKey_) arguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", objc_msgSend(MEMORY[0x1E696ABC8], "expressionForConstantValue:", v112))}]);
          }

          else
          {
            if (v21 && (v49 = *(v21 + 56)) != 0)
            {
              v112 = *(v49 + 80);
            }

            else
            {
              v112 = 0;
            }

            v48 = objc_alloc_init(NSExpressionDescription);
            [(NSPropertyDescription *)v48 setName:@"orderKey"];
            [(NSExpressionDescription *)v48 setExpressionResultType:200];
            *&v111 = MEMORY[0x1E696ABC8];
            -[NSExpressionDescription setExpression:](v48, "setExpression:", [MEMORY[0x1E696ABC8] expressionForFunction:NSStringFromSelector(sel_inverseOrderKey_) arguments:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObject:", objc_msgSend(MEMORY[0x1E696ABC8], "expressionForConstantValue:", -[__CFString columnName](v112, "columnName")))}]);
          }

          -[NSFetchRequest setPropertiesToFetch:](v118, "setPropertiesToFetch:", [MEMORY[0x1E695DEC8] arrayWithObjects:{v47, v48, 0}]);

          [(NSFetchRequest *)v118 setResultType:2];
          v30 = 1;
          [(NSFetchRequest *)v118 setIncludesPropertyValues:1];
        }
      }

      v50 = [NSSQLFetchRequestContext alloc];
      if (a1)
      {
        v51 = a1[1];
      }

      else
      {
        v51 = 0;
      }

      v33 = [(NSSQLFetchRequestContext *)v50 initWithRequest:v118 context:0 sqlCore:v51, v111];
      [v33 setIsFaultRequest:1];
      v52 = [v33 fetchStatement];
      v27 = v52;
      if (v33)
      {
        *(v33 + 201) = 1;
      }

      if (!v30)
      {
        v53 = _rawSQLForToManyFaultStatement(v52, 0, 0);
        if (v27)
        {
          v54 = v53;
          v55 = *(v27 + 32);
          if (v55 != v53)
          {

            *(v27 + 32) = [v54 copy];
          }
        }

        [v33 setFetchStatement:v27];
      }

      if (v27)
      {
        [*(v27 + 16) removeAllObjects];
      }

      v56 = [[NSSQLBindVariable alloc] initWithInt64:v113 sqlType:2];
      [(NSSQLiteStatement *)v27 addBindVariable:v56];

      [(NSSQLiteStatementCache *)v115 cacheFaultingStatement:v27 andFetchRequest:v118 forRelationship:v21];
      goto LABEL_70;
    }

    v58 = 0;
    goto LABEL_106;
  }

  v13 = [(NSSQLStoreRequestContext *)a1 createNestedObjectFaultContextForObjectWithID:v119];
  v14 = v13;
  if (a1)
  {
    v15 = a1[3];
  }

  else
  {
    v15 = 0;
  }

  [(NSSQLStoreRequestContext *)v13 setConnection:v15];
  v17 = _executeNewRowValuesForObjectFaultRequest(v14);
  if (!v17)
  {
    if (v14)
    {
      v22 = v14[5];
      if (!a1)
      {
LABEL_26:
        v17 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      v22 = 0;
      if (!a1)
      {
        goto LABEL_26;
      }
    }

    objc_setProperty_nonatomic(a1, v16, v22, 40);
    goto LABEL_26;
  }

LABEL_27:
  [(NSSQLStoreRequestContext *)v14 setConnection:?];

  v23 = [v17 valueForKey:v4];
  if (!v23)
  {
    goto LABEL_152;
  }

  result = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{v23, 0}];
  v24 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_185682510(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x185681264);
  }

  _Unwind_Resume(exc_buf);
}

void sub_18568252C(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    if (a2 == 3)
    {
      v3 = [objc_begin_catch(exc_buf) errorObjectWithUserInfo:0];
      if (v2)
      {
        objc_setProperty_nonatomic(v2, v4, v3, 40);
      }

      objc_end_catch();
      JUMPOUT(0x185682378);
    }

    if (a2 != 2)
    {
      objc_begin_catch(exc_buf);
      JUMPOUT(0x185682380);
    }

    v5 = objc_begin_catch(exc_buf);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_1856825EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1856825C0);
  }

  _Unwind_Resume(a1);
}

os_signpost_id_t ___newFetchedPKsForRelationshipFaultRequest_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if (PFInstrumentsGetLog_logtoken != -1)
  {
    dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
  }

  v2 = os_signpost_id_generate(PFInstrumentsGetLog_coreDataInstrumentsLog);
  if (PFInstrumentsGetLog_logtoken != -1)
  {
    dispatch_once(&PFInstrumentsGetLog_logtoken, &__block_literal_global_26);
  }

  v3 = PFInstrumentsGetLog_coreDataInstrumentsLog;
  kdebug_trace();
  if (v2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    v4 = *(a1 + 32);
    v5 = [*(a1 + 40) name];
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    _os_signpost_emit_with_name_impl(&dword_18565F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v2, "RelationshipFault", "%@ - %@", &v8, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v2;
}

void _sharedIMPL_copying_setvfk_core(id **a1, uint64_t a2, void *a3, unint64_t a4)
{
  if (a3)
  {
    v7 = [a3 copy];
    _sharedIMPL_setvfk_core(a1, v6, v7, a4);
    if (v7)
    {
    }
  }

  else
  {

    _sharedIMPL_setvfk_core(a1, a2, 0, a4);
  }
}

uint64_t _PFAssertSafeMultiThreadedAccess_impl(uint64_t result, const char *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    goto LABEL_59;
  }

  v2 = result;
  v3 = *(result + 24);
  v4 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 712);
  if (v3)
  {
    if (v4)
    {
      v5 = 0;
      v6 = 0;
      v7 = v4;
      while (v7 != result)
      {
        if (v7 == v5)
        {
          goto LABEL_23;
        }

        if (!v5)
        {
          v5 = v7;
        }

        v7 = atomic_load((v7 + 8));
        if (!v7)
        {
          goto LABEL_26;
        }
      }

      v6 = 1;
LABEL_23:
      if (v6)
      {
        v14 = atomic_load((result + 49));
        if (v14)
        {
          goto LABEL_36;
        }

        goto LABEL_59;
      }

LABEL_26:
      v15 = 0;
      v16 = 0;
      v17 = result;
      do
      {
        v18 = v17 == v4;
        if (v17 == v4)
        {
          v16 = 1;
        }

        if (v17 == v15)
        {
          v18 = 1;
        }

        if (v18)
        {
          break;
        }

        if (!v15)
        {
          v15 = v17;
        }

        v17 = atomic_load((v17 + 8));
      }

      while (v17);
      v19 = atomic_load((result + 49));
      if (v19)
      {
        goto LABEL_36;
      }

      if (v16)
      {
        v21 = v18;
      }

      else
      {
        v21 = 0;
      }

      if (v21)
      {
        goto LABEL_59;
      }

      goto LABEL_94;
    }

    v13 = atomic_load((result + 49));
    if ((v13 & 1) == 0)
    {
LABEL_94:
      result = objc_opt_self();
      __break(1u);
      return result;
    }

LABEL_36:
    result = _PFIsSerializedWithMainQueue();
    if ((result & 1) == 0)
    {
      goto LABEL_94;
    }

LABEL_59:
    v28 = *MEMORY[0x1E69E9840];
    return result;
  }

  v9 = *(*(result + 168) + 56);
  if (v4)
  {
    v10 = 0;
    v11 = 0;
    v12 = v4;
    while (v12 != result)
    {
      if (v12 == v10)
      {
        goto LABEL_45;
      }

      if (!v10)
      {
        v10 = v12;
      }

      v12 = atomic_load((v12 + 8));
      if (!v12)
      {
        goto LABEL_48;
      }
    }

    v11 = 1;
LABEL_45:
    if (v11)
    {
      v22 = atomic_load((result + 49));
      if (v22)
      {
        goto LABEL_58;
      }

      goto LABEL_59;
    }

LABEL_48:
    v23 = 0;
    v24 = 0;
    v25 = result;
    do
    {
      v26 = v25 == v4;
      if (v25 == v4)
      {
        v24 = 1;
      }

      if (v25 == v23)
      {
        v26 = 1;
      }

      if (v26)
      {
        break;
      }

      if (!v23)
      {
        v23 = v25;
      }

      v25 = atomic_load((v25 + 8));
    }

    while (v25);
    v27 = atomic_load((result + 49));
    if (v27)
    {
      goto LABEL_58;
    }

    if (v24)
    {
      v29 = v26;
    }

    else
    {
      v29 = 0;
    }

    if (v29)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v20 = atomic_load((result + 49));
    if (v20)
    {
LABEL_58:
      result = _PFIsSerializedWithMainQueue();
      if (result)
      {
        goto LABEL_59;
      }
    }
  }

  v30 = v9[1];
  v31 = pthread_self();
  if (([*(v2 + 136) tryLock] & 1) == 0)
  {
    v40 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v41 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v43 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v41)
      {
        if (v43)
        {
LABEL_84:
          *buf = 134218242;
          *&buf[4] = v2;
          *&buf[12] = 2112;
          *&buf[14] = NSStringFromSelector(a2);
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Multiple threads illegally accessing an NSManagedObjectContext (%p) during %@\n", buf, 0x16u);
        }
      }

      else if (v43)
      {
        goto LABEL_84;
      }
    }

    v47 = NSStringFromSelector(a2);
    _NSCoreDataLog_console(1, "Multiple threads illegally accessing an NSManagedObjectContext (%p) during %@", v2, v47, *buf, *&buf[16]);
LABEL_93:
    objc_autoreleasePoolPop(v40);
    goto LABEL_94;
  }

  if (v31 != v30)
  {
    v33 = v9[2];
    v32 = v9[3];
    v34 = [MEMORY[0x1E696ADC8] currentQueue];
    v35 = [v34 maxConcurrentOperationCount] == 1 ? v34 : 0;
    if (!v35 || v35 != v33)
    {
      current_queue = dispatch_get_current_queue();
      v37 = current_queue == dispatch_get_global_queue(0, 0) ? 0 : current_queue;
      if (!v37 || v37 != v32)
      {
        v40 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(1))
        {
          v44 = _pflogging_catastrophic_mode;
          v45 = _PFLogGetLogStream(1);
          v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
          if (v44)
          {
            if (v46)
            {
LABEL_91:
              *buf = 134218242;
              *&buf[4] = v2;
              *&buf[12] = 2112;
              *&buf[14] = NSStringFromSelector(a2);
              _os_log_error_impl(&dword_18565F000, v45, OS_LOG_TYPE_ERROR, "CoreData: error: The current thread is not the recognized owner of this NSManagedObjectContext(%p).  Illegal access during %@\n", buf, 0x16u);
            }
          }

          else if (v46)
          {
            goto LABEL_91;
          }
        }

        v48 = NSStringFromSelector(a2);
        _NSCoreDataLog_console(1, "The current thread is not the recognized owner of this NSManagedObjectContext(%p).  Illegal access during %@", v2, v48, *buf, *&buf[16]);
        goto LABEL_93;
      }
    }
  }

  v38 = *(v2 + 136);
  v39 = *MEMORY[0x1E69E9840];

  return [v38 unlock];
}

void calculateNextBranchOperation(const __CFArray *a1, CFIndex a2, const void ***a3, _DWORD *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  v43 = a3;
  v44 = a4;
  v48 = *MEMORY[0x1E69E9840];
  *a7 = 0;
  *a5 = 1;
  v10 = a2 - 1;
  if (a2 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a2;
  }

  if (a2 >= 0x201)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v13 = 8 * v12;
  MEMORY[0x1EEE9AC00](a1);
  v16 = (&v43 - v15);
  v17 = 8 * v14;
  if (v18 > 0x200)
  {
    v16 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v43 - v15, 8 * v14);
  }

  v49.location = 0;
  v49.length = a2;
  CFArrayGetValues(a1, v49, v16);
  v19 = strlen(*v16);
  MEMORY[0x1EEE9AC00](v19);
  v20 = (&v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2 > 0x200)
  {
    v20 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v20, v17);
  }

  if (v19 < 1)
  {
    v21 = 0;
    goto LABEL_35;
  }

  v21 = 0;
  v22 = 0;
  v23 = 1;
  while (1)
  {
    if (a2 < 1)
    {
      CFMergeSortArray();
LABEL_25:
      v28 = 1;
      goto LABEL_26;
    }

    v24 = 0;
    do
    {
      v20[v24] = *(v16[v24] + v22);
      ++v24;
    }

    while (a2 != v24);
    CFMergeSortArray();
    if (a2 < 2)
    {
      goto LABEL_25;
    }

    v25 = *v20;
    v26 = v20 + 1;
    v27 = v10;
    v28 = 1;
    do
    {
      v30 = *v26++;
      v29 = v30;
      if (v30 != v25)
      {
        ++v28;
      }

      v25 = v29;
      --v27;
    }

    while (v27);
LABEL_26:
    if (v28 == a2)
    {
      break;
    }

    v31 = v23 < v28;
    if (v23 <= v28)
    {
      v23 = v28;
    }

    if (v31)
    {
      v21 = v22;
    }

    if (++v22 == v19)
    {
      goto LABEL_35;
    }
  }

  v21 = v22;
LABEL_35:
  *a6 = v21;
  v45 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(v45, 0, 0, 0);
  if (a2 >= 1)
  {
    v33 = v16;
    v34 = a2;
    do
    {
      v35 = *v33;
      v36 = *(*v33 + v21);
      Value = CFDictionaryGetValue(Mutable, v36);
      if (!Value)
      {
        Value = CFArrayCreateMutable(v45, 0, 0);
        CFDictionarySetValue(Mutable, v36, Value);
      }

      CFArrayAppendValue(Value, v35);
      ++v33;
      --v34;
    }

    while (v34);
  }

  Count = CFDictionaryGetCount(Mutable);
  v39 = Count;
  v40 = PF_ALLOCATE_OBJECT_ARRAY(Count);
  CFDictionaryGetKeysAndValues(Mutable, 0, v40);
  CFRelease(Mutable);
  v46 = customCharAt;
  v47 = v21;
  CFMergeSortArray();
  v41 = v44;
  *v43 = v40;
  *v41 = v39;
  if (a2 >= 0x201)
  {
    NSZoneFree(0, v20);
    NSZoneFree(0, v16);
  }

  v42 = *MEMORY[0x1E69E9840];
}

void freeArrayOfCFObjects(const void **ptr, int a2)
{
  if (a2 >= 1)
  {
    v3 = a2;
    v4 = ptr;
    do
    {
      v5 = *v4++;
      CFRelease(v5);
      --v3;
    }

    while (v3);
  }

  PF_FREE_OBJECT_ARRAY(ptr);
}

void makeBranchRow(CFArrayRef *a1, CFArrayRef *a2, uint64_t a3, const __CFDictionary *a4, int a5, signed int a6, uint64_t a7, int a8)
{
  Count = CFArrayGetCount(*a1);
  v61 = a8 + 1;
  if ((a8 + 1) > 0x8000)
  {
LABEL_68:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Recursion count exceeded" userInfo:{0, key, v58}]);
  }

  v15 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(*a2, 0);
  v60 = a3 - 1;
  v17 = a2[a3 - 1];
  v18 = CFArrayGetCount(v17);
  v19 = CFArrayGetValueAtIndex(v17, v18 - 1);
  v20 = v19;
  key = v19;
  v58 = ValueAtIndex;
  v59 = v15;
  if (a5)
  {
    v21 = ValueAtIndex[a6];
    if (v19[a6] <= 1u)
    {
      v22 = 1;
    }

    else
    {
      v22 = v19[a6];
    }

    if (a5 == 1)
    {
      v23 = 0;
      v24 = 0;
      v25 = 8;
      goto LABEL_19;
    }

    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal branch data: operation\n", buf, 2u);
    }

    v28 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v28, OS_LOG_TYPE_FAULT, "CoreData: Illegal branch data: operation", buf, 2u);
    }

    if (byte_1ED4BEECE == 1)
    {
      goto LABEL_67;
    }

    v23 = 0;
    v25 = 0;
  }

  else
  {
    v21 = strlen(ValueAtIndex);
    v26 = strlen(v20);
    v25 = 0;
    if (v26 <= 1)
    {
      v22 = 1;
    }

    else
    {
      v22 = v26;
    }

    v23 = v26 > 0xFFFE;
  }

  v24 = 1;
LABEL_19:
  if (a6 >= 0x80000)
  {
    v29 = v25;
    v30 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, v30, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal branch data: parameter\n", buf, 2u);
    }

    v31 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v31, OS_LOG_TYPE_FAULT, "CoreData: Illegal branch data: parameter", buf, 2u);
    }

    if (byte_1ED4BEECE == 1)
    {
      goto LABEL_67;
    }

    a6 = 0;
    v25 = v29;
  }

  if (a7 >= 0xFFFFFFFE)
  {
    v32 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, v32, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal branch data: offset\n", buf, 2u);
    }

    v33 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v33, OS_LOG_TYPE_FAULT, "CoreData: Illegal branch data: offset", buf, 2u);
    }

    if (byte_1ED4BEECE == 1)
    {
      goto LABEL_67;
    }

    a7 = 0;
  }

  if (v21 < 0xFFFE)
  {
    goto LABEL_40;
  }

  v34 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_18565F000, v34, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal branch data: lower\n", buf, 2u);
  }

  v35 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_18565F000, v35, OS_LOG_TYPE_FAULT, "CoreData: Illegal branch data: lower", buf, 2u);
  }

  if (byte_1ED4BEECE == 1)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v21 = 0;
LABEL_40:
  if (!v23)
  {
    goto LABEL_47;
  }

  v36 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_18565F000, v36, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal branch data: upper\n", buf, 2u);
  }

  v37 = _PFLogGetLogStream(17);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_18565F000, v37, OS_LOG_TYPE_FAULT, "CoreData: Illegal branch data: upper", buf, 2u);
  }

  if (byte_1ED4BEECE == 1)
  {
    goto LABEL_67;
  }

  v22 = 1;
LABEL_47:
  v38 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v38 = malloc_default_zone();
  }

  v39 = malloc_type_zone_calloc(v38, 1uLL, 2 * ((v22 + ~v21) & ~((v22 + ~v21) >> 31)) + 16, 0x1000040451B5BE8uLL);
  *v39 = v25 | (a6 << 13) | 1u | (a7 << 32);
  v40 = v21 + 1;
  v39[4] = v21 + 1;
  v39[6] = v22 - 1;
  CFArrayAppendValue(*a1, v39);
  v41 = CFArrayGetCount(*a2);
  if (v41 == 1)
  {
    v42 = v59 + 1;
    v39[5] = CFDictionaryGetValue(a4, v58);
  }

  else
  {
    v65 = 0;
    *buf = 0;
    v64 = 0;
    calculateNextBranchOperation(*a2, v41, buf, &v65, &v65 + 1, &v64 + 1, &v64);
    v39[5] = ~v59;
    v43 = *buf;
    v44 = v65;
    makeBranchRow(a1, *buf, v65, a4, HIDWORD(v65), HIDWORD(v64), v64, v61, key, v58);
    v42 = CFArrayGetCount(*a1);
    freeArrayOfCFObjects(v43, v44);
  }

  if (a3 == 1)
  {
    v39[7] = v39[5];
  }

  else
  {
    v45 = CFArrayGetCount(a2[v60]);
    if (v45 == 1)
    {
      v39[7] = CFDictionaryGetValue(a4, key);
    }

    else
    {
      v65 = 0;
      *buf = 0;
      v64 = 0;
      calculateNextBranchOperation(a2[v60], v45, buf, &v65, &v65 + 1, &v64 + 1, &v64);
      v39[7] = -v42;
      v46 = *buf;
      v47 = v65;
      makeBranchRow(a1, *buf, v65, a4, HIDWORD(v65), HIDWORD(v64), v64, v61, key, v58);
      v42 = CFArrayGetCount(*a1);
      freeArrayOfCFObjects(v46, v47);
    }

    if (v60 >= 2)
    {
      v48 = v39 + 8;
      v49 = a3 - 2;
      v50 = a2 + 1;
      do
      {
        v51 = CFArrayGetCount(*v50);
        v52 = CFArrayGetValueAtIndex(*v50, 0);
        v53 = v52;
        if (v24)
        {
          v54 = strlen(v52);
        }

        else
        {
          v54 = v52[a6];
        }

        if (v51 == 1)
        {
          v48[v54 - v40] = CFDictionaryGetValue(a4, v53);
        }

        else
        {
          v65 = 0;
          *buf = 0;
          v64 = 0;
          calculateNextBranchOperation(*v50, v51, buf, &v65, &v65 + 1, &v64 + 1, &v64);
          v48[v54 - v40] = -v42;
          v55 = *buf;
          v56 = v65;
          makeBranchRow(a1, *buf, v65, a4, HIDWORD(v65), HIDWORD(v64), v64, v61, key, v58);
          v42 = CFArrayGetCount(*a1);
          freeArrayOfCFObjects(v55, v56);
        }

        ++v50;
        --v49;
      }

      while (v49);
    }
  }
}

unint64_t sortByFunctionComparison(void *a1, void *a2, uint64_t a3)
{
  v5 = *a3;
  v4 = *(a3 + 8);
  v6 = (*a3)(*a1, v4);
  v7 = v5(*a2, v4);
  return (v6 > v7) - (v6 < v7);
}

uint64_t NSManagedObjectContext.performAndWait<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  v15 = *(a3 - 8);
  (*(v15 + 56))(&v21 - v13, 1, 1, a3);
  v31 = 0;
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a1;
  v16[4] = a2;
  v25 = a3;
  v26 = v14;
  v27 = _sxs5Error_pIgrzo_xsAA_pIegrzo_lTRTA_0;
  v28 = v16;
  v29 = &v31;
  v17 = swift_allocObject();
  *(v17 + 16) = partial apply for closure #1 in closure #1 in NSManagedObjectContext._rethrowsHelper_performAndWait<A>(fn:execute:rescue:);
  *(v17 + 24) = &v24;
  aBlock[4] = _sIgh_Iegh_TRTA_0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_0;
  v18 = _Block_copy(aBlock);

  [v23 performBlockAndWait_];
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    goto LABEL_9;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if (v31)
  {
    swift_willThrow();
    return (*(v8 + 8))(v14, v7);
  }

  (*(v8 + 16))(v12, v14, v7);
  result = (*(v15 + 48))(v12, 1, a3);
  if (result == 1)
  {
    goto LABEL_10;
  }

  (*(v8 + 8))(v14, v7);
  return (*(v15 + 32))(v22, v12, a3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for thunk for @callee_guaranteed () -> (@out A, @error @owned Error)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t _sxs5Error_pIgrzo_xsAA_pIegrzo_lTRTA_0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  return thunk for @callee_guaranteed () -> (@out A, @error @owned Error)(*(v0 + 24));
}

void _PFCMT_RemoveValue(void *a1, void *a2)
{
  if (!a2)
  {
    return;
  }

  if ([a2 isTemporaryID])
  {
    v4 = a1[2];
    if (!v4)
    {
      return;
    }

    goto LABEL_10;
  }

  v5 = _PFModelMapSlotForEntity(a1[7], [a2 entity]);
  if ((v5 & 0x80000000) == 0 && (v6 = a1[4]) != 0 && (v4 = *(v6 + 8 * (v5 & 0x7FFFFFFF))) != 0 || (v7 = a1[3]) != 0 && (v4 = *(v7 + 8 * (v5 & 0x7FFFFFFF))) != 0)
  {
LABEL_10:

    CFDictionaryRemoveValue(v4, a2);
  }
}

void sub_1856860E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 buf)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: An NSPersistentStore illegally threw an exception from -willRemoveFromPersistentStoreCoordinator:\n", &buf, 2u);
    }

    v14 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      buf = 0;
      _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: An NSPersistentStore illegally threw an exception from -willRemoveFromPersistentStoreCoordinator:", &buf, 2u);
    }

    objc_end_catch();
    JUMPOUT(0x18568609CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1856862B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_185686690(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  v67 = objc_begin_catch(a1);
  if (a2 != 2)
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: disconnectAllConnections failed with unknown excception\n", &buf, 2u);
    }

    v72 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
    {
      LOWORD(buf) = 0;
      _os_log_fault_impl(&dword_18565F000, v72, OS_LOG_TYPE_FAULT, "CoreData: disconnectAllConnections failed with unknown excception", &buf, 2u);
    }

    objc_end_catch();
LABEL_17:
    JUMPOUT(0x1856865ACLL);
  }

  v68 = v67;
  v69 = objc_autoreleasePoolPush();
  if (_NSCoreDataIsOSLogEnabled(1))
  {
    if (_pflogging_catastrophic_mode)
    {
      v70 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v68;
LABEL_15:
        _os_log_error_impl(&dword_18565F000, v70, OS_LOG_TYPE_ERROR, "CoreData: error: disconnectAllConnections failed with excception: %@\n", &buf, 0xCu);
      }
    }

    else
    {
      v70 = _PFLogGetLogStream(1);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v68;
        goto LABEL_15;
      }
    }
  }

  _NSCoreDataLog_console(1, "disconnectAllConnections failed with excception: %@");
  objc_autoreleasePoolPop(v69);
  *(*(*(v65 + 40) + 8) + 40) = v68;
  objc_end_catch();
  goto LABEL_17;
}

void sub_1856870E0(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x185686F70);
  }

  _Unwind_Resume(exc_buf);
}

os_log_t __PFInstrumentsGetLog_block_invoke()
{
  result = os_log_create("com.apple.coredata", "instruments");
  PFInstrumentsGetLog_coreDataInstrumentsLog = result;
  return result;
}

void rawIntegerRowsRelease(int a1, void *ptr)
{
  v3 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v3 = malloc_default_zone();
  }

  malloc_zone_free(v3, ptr);
}

id static NSManagedObject.fetchRequest()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [ObjCClassFromMetadata entity];
  if (v1)
  {
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSFetchRequestCMd, &_sSo14NSFetchRequestCMR);
    v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    [v3 setEntity_];

    return v3;
  }

  else
  {
    v5 = [ObjCClassFromMetadata entityName];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSFetchRequestCMd, &_sSo14NSFetchRequestCMR);
    return NSFetchRequest.__allocating_init(entityName:)(v6, v8);
  }
}

id _PFEntityForClass(void *a1)
{
  v99 = *MEMORY[0x1E69E9840];
  v2 = [a1 _PFMOClassFactoryData];
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      goto LABEL_103;
    }
  }

  cStr = class_getName(a1);
  if (!strncmp(cStr, "NSManagedObject", 0xFuLL))
  {
LABEL_102:
    v3 = 0;
    goto LABEL_103;
  }

  AssociatedObject = objc_getAssociatedObject(a1, PFEntityDescriptionAssociationKey);
  if ([AssociatedObject count])
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v5 = [AssociatedObject countByEnumeratingWithState:&v79 objects:v98 count:16];
    if (v5)
    {
      v6 = v5;
      v3 = 0;
      v7 = *v80;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v80 != v7)
          {
            objc_enumerationMutation(AssociatedObject);
          }

          v9 = *(*(&v79 + 1) + 8 * i);
          if (v9)
          {
            WeakRetained = objc_loadWeakRetained((v9 + 8));
            if (WeakRetained)
            {
              if (v3 && WeakRetained != v3)
              {

                os_unfair_lock_lock_with_options();
                v15 = CFStringCreateWithCString(0, cStr, 0x8000100u);
                Mutable = qword_1ED4BEA08;
                if (!qword_1ED4BEA08)
                {
                  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
                  qword_1ED4BEA08 = Mutable;
                }

                v17 = CFSetContainsValue(Mutable, v15);
                if (v17)
                {
                  CFRelease(v15);
                  os_unfair_lock_unlock(&unk_1ED4BE9E8);
                  goto LABEL_38;
                }

                CFSetAddValue(qword_1ED4BEA08, v15);
                CFRelease(v15);
                os_unfair_lock_unlock(&unk_1ED4BE9E8);
                v19 = objc_autoreleasePoolPush();
                _pflogInitialize(2);
                if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
                {
                  if (_pflogging_catastrophic_mode)
                  {
                    LogStream = _PFLogGetLogStream(1);
                    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315138;
                      v85 = cStr;
                      v21 = "CoreData: error: Multiple NSEntityDescriptions claim the NSManagedObject subclass '%s' so +entity is unable to disambiguate.\n";
                      goto LABEL_111;
                    }
                  }

                  else
                  {
                    LogStream = _PFLogGetLogStream(2);
                    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315138;
                      v85 = cStr;
                      v21 = "CoreData: warning: Multiple NSEntityDescriptions claim the NSManagedObject subclass '%s' so +entity is unable to disambiguate.\n";
LABEL_111:
                      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, v21, buf, 0xCu);
                    }
                  }
                }

                if (_pflogging_catastrophic_mode)
                {
                  v22 = 1;
                }

                else
                {
                  v22 = 2;
                }

                _NSCoreDataLog_console(v22, "Multiple NSEntityDescriptions claim the NSManagedObject subclass '%s' so +entity is unable to disambiguate.", cStr);
                objc_autoreleasePoolPop(v19);
LABEL_38:
                v77 = 0u;
                v78 = 0u;
                v75 = 0u;
                v76 = 0u;
                v23 = [AssociatedObject countByEnumeratingWithState:&v75 objects:v97 count:16];
                if (!v23)
                {
                  v18 = 1;
                  goto LABEL_63;
                }

                v24 = v23;
                v25 = *v76;
                while (2)
                {
                  v26 = 0;
LABEL_41:
                  if (*v76 != v25)
                  {
                    objc_enumerationMutation(AssociatedObject);
                  }

                  v27 = *(*(&v75 + 1) + 8 * v26);
                  if (v27)
                  {
                    v28 = objc_loadWeakRetained((v27 + 8));
                    if (v28)
                    {
                      v29 = v28;
                      if (!v17)
                      {
                        v30 = objc_autoreleasePoolPush();
                        _pflogInitialize(2);
                        if (_NSCoreDataIsLogEnabled(2) && _pflogging_enable_oslog >= 1)
                        {
                          if (_pflogging_catastrophic_mode)
                          {
                            v31 = _PFLogGetLogStream(1);
                            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                            {
                              v32 = [v29 name];
                              v33 = [v29 managedObjectModel];
                              *buf = 138413058;
                              v85 = v32;
                              v86 = 2048;
                              v87 = v29;
                              v88 = 2048;
                              v89 = v33;
                              v90 = 2080;
                              v91 = cStr;
                              v34 = v31;
                              v35 = "CoreData: error:  \t '%@' (%p) from NSManagedObjectModel (%p) claims '%s'.\n";
                              goto LABEL_59;
                            }
                          }

                          else
                          {
                            v36 = _PFLogGetLogStream(2);
                            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                            {
                              v41 = [v29 name];
                              v42 = [v29 managedObjectModel];
                              *buf = 138413058;
                              v85 = v41;
                              v86 = 2048;
                              v87 = v29;
                              v88 = 2048;
                              v89 = v42;
                              v90 = 2080;
                              v91 = cStr;
                              v34 = v36;
                              v35 = "CoreData: warning:  \t '%@' (%p) from NSManagedObjectModel (%p) claims '%s'.\n";
LABEL_59:
                              _os_log_error_impl(&dword_18565F000, v34, OS_LOG_TYPE_ERROR, v35, buf, 0x2Au);
                            }
                          }
                        }

                        v37 = _pflogging_catastrophic_mode;
                        v38 = [v29 name];
                        v39 = [v29 managedObjectModel];
                        v40 = 1;
                        if (!v37)
                        {
                          v40 = 2;
                        }

                        _NSCoreDataLog_console(v40, " \t '%@' (%p) from NSManagedObjectModel (%p) claims '%s'.", v38, v29, v39, cStr);
                        objc_autoreleasePoolPop(v30);
                      }
                    }
                  }

                  if (v24 == ++v26)
                  {
                    v43 = [AssociatedObject countByEnumeratingWithState:&v75 objects:v97 count:16];
                    v24 = v43;
                    if (!v43)
                    {
                      v18 = 1;
                      goto LABEL_63;
                    }

                    continue;
                  }

                  goto LABEL_41;
                }
              }

              v3 = WeakRetained;
            }
          }
        }

        v6 = [AssociatedObject countByEnumeratingWithState:&v79 objects:v98 count:16];
      }

      while (v6);
      if (v3)
      {
        goto LABEL_103;
      }
    }
  }

  v11 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v12 = _pflogging_catastrophic_mode;
    v13 = _PFLogGetLogStream(1);
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      if (v14)
      {
        *buf = 136315138;
        v85 = cStr;
LABEL_107:
        _os_log_error_impl(&dword_18565F000, v13, OS_LOG_TYPE_ERROR, "CoreData: error: No NSEntityDescriptions in any model claim the NSManagedObject subclass '%s' so +entity is confused.  Have you loaded your NSManagedObjectModel yet ?\n", buf, 0xCu);
      }
    }

    else if (v14)
    {
      *buf = 136315138;
      v85 = cStr;
      goto LABEL_107;
    }
  }

  _NSCoreDataLog_console(1, "No NSEntityDescriptions in any model claim the NSManagedObject subclass '%s' so +entity is confused.  Have you loaded your NSManagedObjectModel yet ?", cStr);
  objc_autoreleasePoolPop(v11);
  v18 = 0;
LABEL_63:
  v44 = *(_ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3)) + 712);
  if (!v44)
  {
    goto LABEL_96;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_96;
  }

  v45 = [objc_msgSend(v44 "persistentStoreCoordinator")];
  if (!v45)
  {
    v55 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_92;
    }

    v56 = _pflogging_catastrophic_mode;
    v57 = _PFLogGetLogStream(1);
    v58 = os_log_type_enabled(v57, OS_LOG_TYPE_ERROR);
    if (v56)
    {
      if (!v58)
      {
        goto LABEL_92;
      }
    }

    else if (!v58)
    {
      goto LABEL_92;
    }

    *buf = 134218242;
    v85 = v44;
    v86 = 2080;
    v87 = cStr;
    _os_log_error_impl(&dword_18565F000, v57, OS_LOG_TYPE_ERROR, "CoreData: error: This NSManagedObjectContext (%p) does not have a coordinator and model assigned yet so +entity on '%s' is sad.\n", buf, 0x16u);
LABEL_92:
    _NSCoreDataLog_console(1, "This NSManagedObjectContext (%p) does not have a coordinator and model assigned yet so +entity on '%s' is sad.");
LABEL_95:
    objc_autoreleasePoolPop(v55);
LABEL_96:
    v62 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_101;
    }

    v63 = _pflogging_catastrophic_mode;
    v64 = _PFLogGetLogStream(1);
    v65 = os_log_type_enabled(v64, OS_LOG_TYPE_ERROR);
    if (v63)
    {
      if (v65)
      {
        *buf = 136315138;
        v85 = cStr;
LABEL_105:
        _os_log_error_impl(&dword_18565F000, v64, OS_LOG_TYPE_ERROR, "CoreData: error: +[%s entity] Failed to find a unique match for an NSEntityDescription to a managed object subclass\n", buf, 0xCu);
      }
    }

    else if (v65)
    {
      *buf = 136315138;
      v85 = cStr;
      goto LABEL_105;
    }

LABEL_101:
    _NSCoreDataLog_console(1, "+[%s entity] Failed to find a unique match for an NSEntityDescription to a managed object subclass", cStr);
    objc_autoreleasePoolPop(v62);
    goto LABEL_102;
  }

  v46 = v45;
  v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:cStr];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v48 = [v46 countByEnumeratingWithState:&v71 objects:v96 count:16];
  if (!v48)
  {
    goto LABEL_96;
  }

  v49 = v48;
  v3 = 0;
  v50 = *v72;
  while (2)
  {
    for (j = 0; j != v49; ++j)
    {
      if (*v72 != v50)
      {
        objc_enumerationMutation(v46);
      }

      v52 = *(*(&v71 + 1) + 8 * j);
      v53 = [v52 managedObjectClassName];
      if (v53 && [v47 isEqualToString:v53])
      {
        if (!v3)
        {
          v3 = v52;
          continue;
        }

        v55 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v59 = _pflogging_catastrophic_mode;
          v60 = _PFLogGetLogStream(1);
          v61 = os_log_type_enabled(v60, OS_LOG_TYPE_ERROR);
          if (v59)
          {
            if (v61)
            {
              goto LABEL_112;
            }
          }

          else if (v61)
          {
LABEL_112:
            v68 = [v52 name];
            v69 = [v3 name];
            *buf = 134219266;
            v85 = v46;
            v86 = 2080;
            v87 = cStr;
            v88 = 2112;
            v89 = v68;
            v90 = 2048;
            v91 = v52;
            v92 = 2112;
            v93 = v69;
            v94 = 2048;
            v95 = v3;
            _os_log_error_impl(&dword_18565F000, v60, OS_LOG_TYPE_ERROR, "CoreData: error: Multiple NSEntityDescriptions in NSManagedObjectModel (%p) claim the NSManagedObject subclass '%s' so +entity is unable to disambiguate.  Both entities '%@' (%p) and '%@' (%p)\n", buf, 0x3Eu);
          }
        }

        _NSCoreDataLog_console(1, "Multiple NSEntityDescriptions in NSManagedObjectModel (%p) claim the NSManagedObject subclass '%s' so +entity is unable to disambiguate.  Both entities '%@' (%p) and '%@' (%p)", v46, cStr, [v52 name], v52, objc_msgSend(v3, "name"), v3);
        goto LABEL_95;
      }
    }

    v49 = [v46 countByEnumeratingWithState:&v71 objects:v96 count:16];
    if (v49)
    {
      continue;
    }

    break;
  }

  if (v3)
  {
    v54 = v18;
  }

  else
  {
    v54 = 1;
  }

  if (v54)
  {
    if (v3)
    {
      goto LABEL_103;
    }

    goto LABEL_96;
  }

  v83 = [_PFWeakReference weakReferenceWithObject:v3];
  objc_setAssociatedObject(a1, PFEntityDescriptionAssociationKey, [MEMORY[0x1E695DEC8] arrayWithObjects:&v83 count:1], 0x303);
LABEL_103:
  v66 = *MEMORY[0x1E69E9840];
  return v3;
}

id @objc static NSManagedObject.fetchRequest()(id a1, SEL a2)
{
  swift_getObjCClassMetadata();
  v2 = static NSManagedObject.fetchRequest()();

  return v2;
}

void sub_1856898E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1856899B0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    [(NSSQLiteConnection *)v3 disconnect];
    if (v2)
    {
      objc_setProperty_nonatomic(v2, v5, v4, 48);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t _PFLogGetErrorLog()
{
  if (_MergedGlobals_62 != -1)
  {
    dispatch_once(&_MergedGlobals_62, &__block_literal_global);
  }

  return __pflogFaultLog;
}

uint64_t _readPFEncodedStringFromData(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v8 = _readPFEncodedStringFromData_myStringClass;
  if (!_readPFEncodedStringFromData_myStringClass)
  {
    v8 = objc_opt_class();
    _readPFEncodedStringFromData_myStringClass = v8;
  }

  v9 = (*a3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 24;
  if (v9 + 24 > a4)
  {
    return 0;
  }

  v12 = a2 + v9;
  object_setClass(v12, v8);
  *(v12 + 16) = a1;
  v13 = bswap32(*(v12 + 12));
  *(v12 + 12) = v13;
  v14 = v10 + v13 + 1;
  *a3 = v14;
  if (v14 <= a4)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

id _newReadStringFromBytes(uint64_t a1, unint64_t *a2, unint64_t a3)
{
  v3 = (*a2 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v3 + 4 > a3)
  {
    return 0;
  }

  v5 = *(a1 + v3);
  v6 = bswap32(v5);
  v7 = v3 + 8;
  v8 = v3 + 8 + v6;
  if (v8 > a3)
  {
    return 0;
  }

  *a2 = v8;
  if (v5)
  {
    v10 = v6 >> 1;
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);

    return [v11 initWithCharactersNoCopy:a1 + v7 length:v10 freeWhenDone:0];
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];

    return objc_alloc_init(v12);
  }
}

unsigned int *_readPFEncodedDataFromData(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v8 = _readPFEncodedDataFromData_myDataClass;
  if (!_readPFEncodedDataFromData_myDataClass)
  {
    v8 = NSClassFromString(@"_PFEncodedData");
    _readPFEncodedDataFromData_myDataClass = v8;
  }

  v9 = (*a3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v9 + 24;
  if (v9 + 24 > a4)
  {
    return 0;
  }

  v12 = (a2 + v9);
  *v12 = 0;
  object_setClass(v12, v8);
  *(v12 + 1) = a1;
  v13 = bswap32(v12[4]);
  v12[4] = v13;
  v14 = v10 + v13;
  *a3 = v14;
  if (v14 <= a4)
  {
    return v12;
  }

  else
  {
    return 0;
  }
}

uint64_t _newReadKKDMappingStrategyFromByes(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5)
{
  v72 = *MEMORY[0x1E69E9840];
  v5 = (*a3 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v5 | 4) > a4)
  {
    goto LABEL_77;
  }

  v10 = _newReadKKDMappingStrategyFromByes_myKnownKeysMappingStrategy;
  if (!_newReadKKDMappingStrategyFromByes_myKnownKeysMappingStrategy)
  {
    v10 = NSClassFromString(@"NSKnownKeysMappingStrategy2");
    _newReadKKDMappingStrategyFromByes_myKnownKeysMappingStrategy = v10;
  }

  *(a2 + v5) = 0;
  object_setClass((a2 + v5), v10);
  v11 = v5 + 8;
  if (v5 + 8 > a4)
  {
    v11 = v5;
  }

  if (v11 + 8 <= a4)
  {
    v11 += 8;
  }

  if (v11 + 8 <= a4)
  {
    v11 += 8;
  }

  if (((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= a4)
  {
    v11 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= a4)
  {
    v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v12 = v11;
  }

  v13 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v14 = v13 + 4;
  if (v13 + 4 <= a4)
  {
    v15 = bswap32(*(a2 + v13));
    v13 = (v13 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v16 = v13 + 4;
  }

  else
  {
    v15 = 0;
    v16 = v13 + 4;
    v14 = v12;
  }

  if (v16 > a4)
  {
    v17 = 0;
    v18 = (a2 + v14);
    v19 = 0xFFFFFFFFLL;
    goto LABEL_29;
  }

  v17 = *(a2 + v13);
  v18 = (a2 + v16);
  if (!v17)
  {
    v19 = 0xFFFFFFFFLL;
LABEL_28:
    v14 = v16;
LABEL_29:
    v23 = 0;
    v16 = v14;
    while (1)
    {
      v24 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (v24 + 16 > a4)
      {
        break;
      }

      v25 = a2 + v24;
      if ((v24 | 4) <= a4)
      {
        v26 = bswap32(*v25);
        v24 |= 4uLL;
      }

      else
      {
        v26 = 0;
      }

      v27 = v26 & 0xFFFFE000 | (*(v25 + 4) << 32) | v26 & 0x1FF8 | (v26 & 7);
      *v25 = v27;
      v28 = (v24 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v29 = v28 + 4;
      if (v28 + 4 <= a4)
      {
        v30 = bswap32(*(a2 + v28)) << 32;
        v24 = v29;
      }

      else
      {
        v30 = 0;
      }

      *v25 = v30 | v27;
      v31 = (v24 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v32 = v31 + 2;
      if (v31 + 2 <= a4)
      {
        v33 = bswap32(*(a2 + v31)) >> 16;
        v31 = (v31 + 3) & 0xFFFFFFFFFFFFFFFELL;
        v34 = v31 + 2;
        v24 = v32;
      }

      else
      {
        v33 = 0;
        v34 = v31 + 2;
      }

      *(v25 + 8) = v33;
      if (v34 <= a4)
      {
        v35 = bswap32(*(a2 + v31)) >> 16;
        v31 = (v34 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v36 = v31 + 2;
        v24 = v34;
      }

      else
      {
        LOWORD(v35) = 0;
        v36 = v34;
      }

      *(v25 + 10) = v35;
      if (v36 <= a4)
      {
        v37 = bswap32(*(a2 + v31)) >> 16;
        v31 = (v36 + 1) & 0xFFFFFFFFFFFFFFFELL;
        v38 = v31 + 2;
        v24 = v36;
      }

      else
      {
        v37 = 0;
        v38 = v36;
      }

      *(v25 + 12) = v37;
      if (v38 <= a4)
      {
        v39 = bswap32(*(a2 + v31)) >> 16;
        v24 = v38;
      }

      else
      {
        LOWORD(v39) = 0;
      }

      *(v25 + 14) = v39;
      v40 = v37 - v33;
      v41 = v37 < v33 ? -1 : v37 - v33;
      v42 = (v41 + 1);
      if (v16 + 2 * v42 > a4)
      {
        break;
      }

      if (v42)
      {
        if ((v40 & 0x80000000) == 0)
        {
          v43 = (v25 + 16);
          v44 = v42;
          do
          {
            *v43 = bswap32(*v43) >> 16;
            ++v43;
            --v44;
          }

          while (v44);
        }

        v16 = v24 + 2 * v42;
      }

      else
      {
        v16 = v24;
      }

      v18[v23++] = v25;
      if (v23 == v19)
      {
        goto LABEL_60;
      }
    }

    v52 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_75;
    }

    v53 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v55 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v53)
    {
      if (v55)
      {
        *buf = 0;
LABEL_99:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Corrupted archive (failed to read row).\n", buf, 2u);
      }
    }

    else if (v55)
    {
      *buf = 0;
      goto LABEL_99;
    }

LABEL_75:
    _NSCoreDataLog_console(1, "Corrupted archive (failed to read row).");
    goto LABEL_76;
  }

  v20 = bswap32(v17);
  v21 = v20;
  do
  {
    v22 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v22 + 8 <= a4)
    {
      v16 = v22 + 8;
      if (*(a2 + v22))
      {
        v52 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v62 = _pflogging_catastrophic_mode;
          v63 = _PFLogGetLogStream(1);
          v64 = os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);
          if (v62)
          {
            if (v64)
            {
              *buf = 0;
LABEL_101:
              _os_log_error_impl(&dword_18565F000, v63, OS_LOG_TYPE_ERROR, "CoreData: error: Corrupted archive (unexpected data in pointer space).\n", buf, 2u);
            }
          }

          else if (v64)
          {
            *buf = 0;
            goto LABEL_101;
          }
        }

        _NSCoreDataLog_console(1, "Corrupted archive (unexpected data in pointer space).");
        goto LABEL_76;
      }
    }

    --v21;
  }

  while (v21);
  v17 = 1;
  v19 = (v20 - 1);
  if (v19)
  {
    goto LABEL_28;
  }

  v19 = 0;
LABEL_60:
  if (a2 && v17)
  {
    v18[v19] = 0;
  }

  v45 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = a2 + v45;
  if (!v15)
  {
    *a3 = v16;
    if (a2)
    {
      goto LABEL_79;
    }

LABEL_83:
    v61 = *MEMORY[0x1E69E9840];

    return [a2 + v5 _setupForKeys:v46 count:? table:? inData:?];
  }

  v47 = (a2 + v45);
  v48 = v15;
  do
  {
    v49 = (v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v50 = v49 + 8;
    if (v49 + 8 <= a4)
    {
      v51 = bswap64(*(a2 + v49));
      v16 = v50;
    }

    else
    {
      v51 = 0;
    }

    *v47++ = *(a5 + 8 * v51);
    --v48;
  }

  while (v48);
  *a3 = v16;
LABEL_79:
  v58 = *v18;
  if (!*v18)
  {
    goto LABEL_83;
  }

  v59 = v18;
  while ((*v58 & 7) == 1)
  {
    v60 = v59[1];
    ++v59;
    v58 = v60;
    if (!v60)
    {
      goto LABEL_83;
    }
  }

  v52 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v65 = _pflogging_catastrophic_mode;
    v66 = _PFLogGetLogStream(1);
    v67 = os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);
    if (v65)
    {
      if (v67)
      {
LABEL_102:
        v68 = descriptionForBranchRow(*v59, 0xFFFFFFFFLL);
        *buf = 138412290;
        v71 = v68;
        _os_log_error_impl(&dword_18565F000, v66, OS_LOG_TYPE_ERROR, "CoreData: error: Corrupted branch row in optimized model detected:\n\t%@\n", buf, 0xCu);
      }
    }

    else if (v67)
    {
      goto LABEL_102;
    }
  }

  v69 = descriptionForBranchRow(*v59, 0xFFFFFFFFLL);
  _NSCoreDataLog_console(1, "Corrupted branch row in optimized model detected:\n\t%@", v69);
LABEL_76:
  objc_autoreleasePoolPop(v52);
LABEL_77:
  v56 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t _newReadPFEncodedArrayFromData(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = _newReadPFEncodedArrayFromData_myArrayClass;
  if (!_newReadPFEncodedArrayFromData_myArrayClass)
  {
    v11 = objc_opt_class();
    _newReadPFEncodedArrayFromData_myArrayClass = v11;
  }

  v12 = (*a3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = v12 + 24;
  if (v12 + 24 > a4)
  {
    return 0;
  }

  v15 = a2 + v12;
  *(a2 + v12) = 0;
  object_setClass((a2 + v12), v11);
  *(v15 + 16) = 0;
  *(v15 + 20) = bswap32(*(v15 + 20));
  if (*(v15 + 20) >= 1)
  {
    v16 = 0;
    v17 = a2 + v13;
    if (a6)
    {
      a5 = a6;
    }

    do
    {
      if (a6)
      {
        v13 += 8;
      }

      *(v17 + 8 * v16++) = *(a5 + 8 * bswap64(*(a2 + v13)));
      v13 += 8;
    }

    while (v16 < *(v15 + 20));
  }

  *a3 = v13;
  if (v13 <= a4)
  {
    return v15;
  }

  else
  {
    return 0;
  }
}

uint64_t _readRelationshipIntoShellFromBytes(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, void *a5, uint64_t a6)
{
  v10 = (*a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v11 = v10 + 4;
  if (v10 + 4 <= a4)
  {
    v12 = bswap32(*(a2 + v10));
    v10 = (v10 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v13 = v10 + 4;
  }

  else
  {
    v12 = 0;
    v13 = v10 + 4;
    v11 = *a3;
  }

  a5[12] = *(a6 + 8 * v12);
  if (v13 <= a4)
  {
    if (*(a2 + v10))
    {
      v14 = (v10 + 7) & 0xFFFFFFFFFFFFFFFCLL;
      if (v14 + 4 <= a4)
      {
        v15 = bswap32(*(a2 + v14));
        v13 = v14 + 4;
      }

      else
      {
        v15 = 0;
      }

      a5[14] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
    }

    v11 = v13;
  }

  v16 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v17 = v16 + 4;
  if (v16 + 4 <= a4)
  {
    v18 = bswap32(*(a2 + v16));
    v16 = (v16 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v19 = v16 + 4;
    v11 = v17;
  }

  else
  {
    v18 = 0;
    v19 = v16 + 4;
  }

  a5[16] = v18;
  if (v19 <= a4)
  {
    v20 = bswap32(*(a2 + v16));
    v16 = (v19 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v21 = v16 + 4;
    v11 = v19;
  }

  else
  {
    v20 = 0;
    v21 = v19;
  }

  a5[17] = v20;
  if (v21 <= a4)
  {
    v22 = bswap32(*(a2 + v16));
    v11 = v21;
  }

  else
  {
    v22 = 0;
  }

  a5[18] = v22;
  *a3 = v11;
  return 1;
}

uint64_t _readPropertyIntoShellFromBytes(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t *a18)
{
  v19 = a3;
  v20 = a2;
  v21 = a18;
  v157 = *MEMORY[0x1E69E9840];
  v22 = *a3;
  v23 = (*a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v24 = v23 + 4;
  if (v23 + 4 <= a4)
  {
    v25 = bswap32(*(a2 + v23));
    v22 = v24;
  }

  else
  {
    v25 = 0;
  }

  v26 = v22 + v25;
  if (v26 > a4)
  {
    if (!a18)
    {
      goto LABEL_150;
    }

    v27 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A250];
    v29 = MEMORY[0x1E695DF20];
    v30 = @"Can't read property into shell: Not enough bytes left";
LABEL_39:
    v53 = [v27 errorWithDomain:v28 code:134060 userInfo:{objc_msgSend(v29, "dictionaryWithObject:forKey:", v30, @"Root cause"}];
    a8 = 0;
    *v21 = v53;
    goto LABEL_151;
  }

  v31 = v26 - 4;
  v32 = (v22 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v33 = v32 + 4;
  if (v32 + 4 > v31)
  {
LABEL_8:
    if (!a18)
    {
      goto LABEL_150;
    }

    v27 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A250];
    v29 = MEMORY[0x1E695DF20];
    v30 = @"Can't read property into shell: Unknown type";
    goto LABEL_39;
  }

  v34 = *(a2 + v32);
  v35 = bswap32(v34);
  v151 = v32 + 4;
  if (v35 > 4)
  {
    switch(v35)
    {
      case 5:
        v36 = 0;
        a8 = a12;
        break;
      case 7:
        v36 = 0;
        a8 = a10;
        break;
      case 6:
        v36 = 0;
        a8 = a9;
        break;
      default:
        goto LABEL_8;
    }
  }

  else
  {
    switch(v35)
    {
      case 2:
        v36 = 0;
        break;
      case 3:
        v36 = 0;
        a8 = a13;
        break;
      case 4:
        a8 = a11;
        v36 = 1;
        break;
      default:
        goto LABEL_8;
    }
  }

  v37 = (v32 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v38 = v37 + 4;
  if (v37 + 4 <= v31)
  {
    v40 = bswap32(*(a2 + v37));
    v151 = v37 + 4;
    *(a8 + 72) = v40;
    if (a17 <= 4 && (v40 & 0x100) != 0)
    {
      goto LABEL_150;
    }

    v141 = a7;
    v144 = a1;
    v37 = (v37 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v39 = v37 + 4;
  }

  else
  {
    v141 = a7;
    v144 = a1;
    *(a8 + 72) = 0;
    v39 = v37 + 4;
    v38 = v33;
  }

  v41 = a15;
  if (v39 <= v31)
  {
    v42 = *(a2 + v37);
    v151 = v39;
    if (v42)
    {
      v142 = a8;
      v44 = v36;
      v45 = v35;
      v46 = v31;
      v48 = a5;
      v49 = *(a15 + 8 * bswap32(v42));
      a5 = v48;
      v21 = a18;
      v19 = a3;
      v31 = v46;
      v35 = v45;
      v36 = v44;
      v20 = a2;
      a8 = v142;
      *(v142 + 8) = v49;
      v41 = a15;
    }

    v38 = v39;
  }

  v50 = (v38 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v51 = v50 + 4;
  if (v50 + 4 <= v31)
  {
    v52 = bswap32(*(v20 + v50));
    v151 = v51;
    v38 = v51;
  }

  else
  {
    v52 = 0;
  }

  if (v34 != 83886080 && !v52)
  {
    if (!v21)
    {
      goto LABEL_150;
    }

    v27 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E696A250];
    v29 = MEMORY[0x1E695DF20];
    v30 = @"Can't read property into shell: Missing version hash value";
    goto LABEL_39;
  }

  v145 = v41;
  v143 = a5;
  v54 = a16;
  *(a8 + 16) = *(a16 + 8 * v52);
  v55 = (v38 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v56 = v55 + 4;
  if (v55 + 4 > v31)
  {
    v57 = 0;
    v56 = v38;
    v58 = v143;
LABEL_44:
    *(a8 + 24) = *(v58 + 8 * v57);
    goto LABEL_45;
  }

  v59 = *(v20 + v55);
  v151 = v56;
  v58 = v143;
  if (v59 != -1)
  {
    v57 = bswap32(v59);
    goto LABEL_44;
  }

LABEL_45:
  v60 = (v56 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v61 = v60 + 4;
  if (v60 + 4 > v31 || (v62 = *(v20 + v60), v151 = v60 + 4, !v62))
  {
    v94 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v95 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v97 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v95)
      {
        if (v97)
        {
          *buf = 0;
LABEL_134:
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Corrupted archive (missing property name).\n", buf, 2u);
        }
      }

      else if (v97)
      {
        *buf = 0;
        goto LABEL_134;
      }
    }

    _NSCoreDataLog_console(1, "Corrupted archive (missing property name).");
    objc_autoreleasePoolPop(v94);
    a8 = 0;
    *v19 = v151;
    goto LABEL_151;
  }

  *(a8 + 32) = *(a14 + 8 * bswap32(v62));
  v63 = (v60 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v64 = v63 + 4;
  if (v63 + 4 <= v31)
  {
    v65 = *(v20 + v63);
    v151 = v64;
    v61 = v64;
    if (v65)
    {
      v137 = v36;
      v66 = _newReadPFEncodedArrayFromData(v144, v20, &v151, v31, a16, 0);
      if (!v66)
      {
        if (!v21)
        {
          goto LABEL_150;
        }

        v27 = MEMORY[0x1E696ABC0];
        v28 = *MEMORY[0x1E696A250];
        v29 = MEMORY[0x1E695DF20];
        v30 = @"Can't read property into shell: Can't read validation predicates";
        goto LABEL_39;
      }

      v67 = v66;
      v139 = v35;
      v68 = [v66 count];
      v140 = v68;
      if (v68)
      {
        v69 = 0;
        while (1)
        {
          v70 = [v67 objectAtIndex:v69];
          v150 = 0;
          v71 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
          v72 = [_PFRoutines unarchiveCylicGraphObjectOfClasses:v71 fromData:v70 error:&v150];
          if (!v72)
          {
            break;
          }

          v73 = v72;
          if ((byte_1ED4BEECE & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v73 allowEvaluation];
            }
          }

          [v67 _replaceObject:v73 atIndex:v69++];
          if (v140 == v69)
          {
            goto LABEL_57;
          }
        }

        v119 = objc_autoreleasePoolPush();
        if (_NSCoreDataIsOSLogEnabled(1))
        {
          v123 = _pflogging_catastrophic_mode;
          v124 = _PFLogGetLogStream(1);
          v125 = os_log_type_enabled(v124, OS_LOG_TYPE_ERROR);
          if (v123)
          {
            if (v125)
            {
              goto LABEL_153;
            }
          }

          else if (v125)
          {
LABEL_153:
            v132 = [a8 name];
            *buf = 138412546;
            v154 = v132;
            v155 = 2112;
            v156 = v150;
            _os_log_error_impl(&dword_18565F000, v124, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to decode validation predicate for property %@ : %@\n", buf, 0x16u);
          }
        }

        v135 = [a8 name];
        _NSCoreDataLog_console(1, "Unable to decode validation predicate for property %@ : %@", v135, v150);
        goto LABEL_148;
      }

LABEL_57:
      *(a8 + 40) = v67;
      v146 = 0u;
      v147 = 0u;
      v148 = 0u;
      v149 = 0u;
      v74 = [v67 countByEnumeratingWithState:&v146 objects:v152 count:16];
      if (v74)
      {
        v75 = v74;
        v76 = *v147;
        do
        {
          for (i = 0; i != v75; ++i)
          {
            if (*v147 != v76)
            {
              objc_enumerationMutation(v67);
            }

            [*(*(&v146 + 1) + 8 * i) allowEvaluation];
          }

          v75 = [v67 countByEnumeratingWithState:&v146 objects:v152 count:16];
        }

        while (v75);
      }

      v54 = a16;
      v78 = _newReadPFEncodedArrayFromData(v144, v20, &v151, v31, v145, a16);
      if (!v78)
      {
        if (!v21)
        {
          goto LABEL_150;
        }

        v27 = MEMORY[0x1E696ABC0];
        v28 = *MEMORY[0x1E696A250];
        v29 = MEMORY[0x1E695DF20];
        v30 = @"Can't read property into shell: Can't read validation warnings";
        goto LABEL_39;
      }

      v79 = v78;
      if (v140)
      {
        for (j = 0; v140 != j; ++j)
        {
          v81 = [v79 objectAtIndex:j];
          if (([v81 isNSString] & 1) == 0)
          {
            v150 = 0;
            v82 = MEMORY[0x1E695DFD8];
            v83 = objc_opt_class();
            v84 = [v82 setWithObjects:{v83, objc_opt_class(), 0}];
            v85 = [_PFRoutines unarchiveCylicGraphObjectOfClasses:v84 fromData:v81 error:&v150];
            if (!v85)
            {
              v119 = objc_autoreleasePoolPush();
              if (_NSCoreDataIsOSLogEnabled(1))
              {
                v126 = _pflogging_catastrophic_mode;
                v127 = _PFLogGetLogStream(1);
                v128 = os_log_type_enabled(v127, OS_LOG_TYPE_ERROR);
                if (v126)
                {
                  if (v128)
                  {
LABEL_154:
                    v133 = [a8 name];
                    *buf = 138412546;
                    v154 = v133;
                    v155 = 2112;
                    v156 = v150;
                    _os_log_error_impl(&dword_18565F000, v127, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to decode validation warning for property %@ : %@\n", buf, 0x16u);
                  }
                }

                else if (v128)
                {
                  goto LABEL_154;
                }
              }

              v136 = [a8 name];
              _NSCoreDataLog_console(1, "Unable to decode validation warning for property %@ : %@", v136, v150);
LABEL_148:
              objc_autoreleasePoolPop(v119);
              if (v21)
              {
                *v21 = v150;
              }

LABEL_150:
              a8 = 0;
              goto LABEL_151;
            }

            [v79 _replaceObject:v85 atIndex:j];
            v35 = v139;
            v54 = a16;
          }
        }
      }

      *(a8 + 48) = v79;
      v61 = v151;
      v36 = v137;
    }
  }

  v86 = (v61 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v87 = v86 + 4;
  if (v86 + 4 <= v31)
  {
    v88 = *(v20 + v86);
    v151 = v87;
    v61 = v87;
    if (v88)
    {
      v138 = v36;
      v89 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v89 = malloc_default_zone();
      }

      v90 = 1;
      v91 = malloc_type_zone_calloc(v89, 1uLL, 0x30uLL, 0x108004025C94E70uLL);
      v92 = (v151 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v61 = v92 + 4;
      if (v92 + 4 <= v31)
      {
        v98 = *(v20 + v92);
        v151 = v92 + 4;
        v90 = v98 == 0;
        v92 = (v92 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        v93 = v92 + 4;
      }

      else
      {
        v93 = v92 + 4;
        v61 = v151;
      }

      if (v93 <= v31)
      {
        v99 = bswap32(*(v20 + v92));
        v151 = v93;
        v61 = v93;
      }

      else
      {
        v99 = 0;
      }

      if (v90)
      {
        v100 = 0;
      }

      else
      {
        v100 = [*(v145 + 8 * v99) mutableCopy];
        v61 = v151;
      }

      *v91 = v100;
      v101 = (v61 + 7) & 0xFFFFFFFFFFFFFFF8;
      v102 = v101 + 8;
      if (v101 + 8 <= v31)
      {
        v103 = bswap64(*(v20 + v101));
        v151 = v101 + 8;
        v101 = (v101 + 15) & 0xFFFFFFFFFFFFFFF8;
        v104 = v101 + 8;
        v61 = v102;
      }

      else
      {
        v103 = 0;
        v104 = v101 + 8;
      }

      v91[1] = v103;
      if (v104 <= v31)
      {
        v105 = bswap64(*(v20 + v101));
        v151 = v104;
        v61 = v104;
      }

      else
      {
        v105 = 0;
      }

      v91[2] = v105;
      atomic_store(v91, (a8 + 56));
      *(a8 + 72) &= ~0x80u;
      v36 = v138;
    }
  }

  v106 = (v61 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v107 = v106 + 4;
  if (v106 + 4 <= v31)
  {
    v108 = *(v20 + v106);
    v151 = v107;
    v61 = v107;
    if (v108)
    {
      v109 = *(v54 + 8 * bswap32(v108));
      v150 = 0;
      v110 = +[_PFRoutines plistClassesForSecureCoding];
      v111 = [_PFRoutines unarchiveCylicGraphObjectOfClasses:v110 fromData:v109 error:&v150];
      if (v111)
      {
        *(a8 + 64) = v111;
        v61 = v151;
        goto LABEL_102;
      }

      v119 = objc_autoreleasePoolPush();
      if (_NSCoreDataIsOSLogEnabled(1))
      {
        v120 = _pflogging_catastrophic_mode;
        v121 = _PFLogGetLogStream(1);
        v122 = os_log_type_enabled(v121, OS_LOG_TYPE_ERROR);
        if (v120)
        {
          if (v122)
          {
            goto LABEL_152;
          }
        }

        else if (v122)
        {
LABEL_152:
          v131 = [a8 name];
          *buf = 138412546;
          v154 = v131;
          v155 = 2112;
          v156 = v150;
          _os_log_error_impl(&dword_18565F000, v121, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to decode userInfo for property %@ : %@\n", buf, 0x16u);
        }
      }

      v134 = [a8 name];
      _NSCoreDataLog_console(1, "Unable to decode userInfo for property %@ : %@", v134, v150);
      goto LABEL_148;
    }
  }

LABEL_102:
  v112 = (v61 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v113 = v112 + 4;
  if (v112 + 4 <= v31)
  {
    v114 = bswap32(*(v20 + v112));
    v151 = v113;
    v61 = v113;
  }

  else
  {
    v114 = 0;
  }

  *(a8 + 76) = v114;
  if (v36)
  {
    v115 = _readRelationshipIntoShellFromBytes(v144, v20, &v151, v31, a8, v143);
  }

  else if (v35 <= 4)
  {
    if (v35 != 2)
    {
      if (v35 == 3)
      {
        v116 = (v61 + 3) & 0xFFFFFFFFFFFFFFFCLL;
        v117 = v116 + 4;
        if (v116 + 4 <= v31)
        {
          v118 = bswap32(*(v20 + v116));
          v61 = v117;
        }

        else
        {
          v118 = 0;
        }

        *(a8 + 96) = *(v141 + 8 * v118);
      }

      else
      {
        a8 = 0;
      }

      *v19 = v61;
      goto LABEL_151;
    }

    v115 = _readAttributeIntoShellFromBytes(v144, v20, &v151, v31, a8, a14, v54, v145, v21);
  }

  else if (v35 == 5)
  {
    v115 = _readExpressionDescriptionIntoShellFromBytes(v144, v20, &v151, v31, a8, a14, v54, v145, v21);
  }

  else if (v35 == 6)
  {
    v115 = _readDerivedAttributeIntoShellFromBytes(v144, v20, &v151, v31, a8, a14, v54, v145, v21);
  }

  else
  {
    v115 = _readCompositeAttributeIntoShellFromBytes(v144, v20, &v151, v31, a8, a14, v54, v145, v21);
  }

  *v19 = v151;
  if ((v115 & 1) == 0)
  {
    goto LABEL_150;
  }

LABEL_151:
  v129 = *MEMORY[0x1E69E9840];
  return a8;
}

uint64_t _readAttributeIntoShellFromBytes(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  v68 = *MEMORY[0x1E69E9840];
  v16 = *a3;
  v17 = (*a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v17 + 4 <= a4)
  {
    v16 = v17 + 4;
    v18 = *(a2 + v17);
    if (v18)
    {
      v19 = bswap32(v18);
      v20 = *(a8 + 8 * v19);
      if (v20)
      {
        if ([*(a8 + 8 * v19) isEqualToString:@"NSSecureUnarchiveFromDataTransformerName"])
        {
          v21 = [*MEMORY[0x1E696A8B0] copy];
        }

        else
        {
          v21 = v20;
        }
      }

      else
      {
        v21 = 0;
      }

      *(a5 + 96) = v21;
    }
  }

  v22 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v23 = v22 + 4;
  if (v22 + 4 <= a4)
  {
    v24 = bswap32(*(a2 + v22));
    v22 = (v22 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v25 = v22 + 4;
    v16 = v23;
  }

  else
  {
    v24 = 0;
    v25 = v22 + 4;
  }

  *(a5 + 80) = v24;
  if (v25 <= a4)
  {
    v26 = *(a2 + v22);
    if (v26)
    {
      *(a5 + 104) = *(a6 + 8 * bswap32(v26));
    }

    v16 = v25;
  }

  v27 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v28 = v27 + 4;
  if (v27 + 4 > a4)
  {
LABEL_53:
    v51 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v52 = v51 + 4;
    if (v51 + 4 > a4)
    {
LABEL_63:
      *a3 = v16;
      result = 1;
      goto LABEL_64;
    }

    v53 = bswap32(*(a2 + v51));
    if (v53)
    {
      *(a5 + 72) |= 0x200u;
      if ((v53 & 2) == 0)
      {
LABEL_56:
        if ((v53 & 4) == 0)
        {
          goto LABEL_57;
        }

        goto LABEL_67;
      }
    }

    else if ((v53 & 2) == 0)
    {
      goto LABEL_56;
    }

    *(a5 + 72) |= 0x400u;
    if ((v53 & 4) == 0)
    {
LABEL_57:
      if ((v53 & 8) == 0)
      {
        goto LABEL_58;
      }

      goto LABEL_68;
    }

LABEL_67:
    *(a5 + 72) |= 0x800u;
    if ((v53 & 8) == 0)
    {
LABEL_58:
      if ((v53 & 0x10) == 0)
      {
        goto LABEL_59;
      }

      goto LABEL_69;
    }

LABEL_68:
    *(a5 + 72) |= 0x2000u;
    if ((v53 & 0x10) == 0)
    {
LABEL_59:
      if ((v53 & 0x20) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_70;
    }

LABEL_69:
    *(a5 + 72) |= 0x1000u;
    if ((v53 & 0x20) == 0)
    {
LABEL_60:
      if ((v53 & 0x40) == 0)
      {
LABEL_62:
        v16 = v52;
        goto LABEL_63;
      }

LABEL_61:
      *(a5 + 72) |= 0x8000u;
      goto LABEL_62;
    }

LABEL_70:
    *(a5 + 72) |= 0x4000u;
    if ((v53 & 0x40) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  if (!*(a2 + v27))
  {
LABEL_52:
    v16 = v28;
    goto LABEL_53;
  }

  v29 = *(a5 + 80);
  if (v29 <= 0x1F3)
  {
    if (*(a5 + 80) > 0x12Bu)
    {
      if (v29 != 300)
      {
        if (v29 == 400)
        {
          v36 = (v27 + 7) & 0xFFFFFFFFFFFFFFFCLL;
          if (v36 + 4 <= a4)
          {
            v37 = bswap32(*(a2 + v36));
            v28 = v36 + 4;
          }

          else
          {
            v37 = 0;
          }

          v50 = [objc_alloc(MEMORY[0x1E696AB90]) initWithString:*(a6 + 8 * v37)];
          goto LABEL_51;
        }

        goto LABEL_44;
      }

      v43 = (v27 + 11) & 0xFFFFFFFFFFFFFFF8;
      v44 = v43 + 8;
      if (v43 + 8 <= a4)
      {
        v45 = bswap64(*(a2 + v43));
        v28 = v44;
      }

      else
      {
        v45 = 0;
      }

      *valuePtr = v45;
      v42 = kCFNumberLongLongType;
LABEL_50:
      v50 = CFNumberCreate(0, v42, valuePtr);
LABEL_51:
      *(a5 + 112) = v50;
      goto LABEL_52;
    }

    if (v29 != 100 && v29 != 200)
    {
      goto LABEL_44;
    }

LABEL_28:
    v33 = (v27 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v34 = v33 + 4;
    if (v33 + 4 <= a4)
    {
      v35 = bswap32(*(a2 + v33));
      v28 = v34;
    }

    else
    {
      v35 = 0;
    }

    *valuePtr = v35;
    v42 = kCFNumberIntType;
    goto LABEL_50;
  }

  if (*(a5 + 80) <= 0x2BBu)
  {
    if (v29 != 500)
    {
      if (v29 == 600)
      {
        v38 = (v27 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        v39 = bswap32(*(a2 + v38));
        v40 = objc_alloc(MEMORY[0x1E696AD98]);
        LODWORD(v41) = v39;
        *(a5 + 112) = [v40 initWithFloat:v41];
        v16 = v38 + 4;
        goto LABEL_53;
      }

      goto LABEL_44;
    }

    v46 = (v27 + 11) & 0xFFFFFFFFFFFFFFF8;
    v47 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:COERCE_DOUBLE(bswap64(*(a2 + v46)))];
LABEL_43:
    *(a5 + 112) = v47;
    v16 = v46 + 8;
    goto LABEL_53;
  }

  switch(v29)
  {
    case 0x384u:
      v46 = (v27 + 11) & 0xFFFFFFFFFFFFFFF8;
      v47 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:COERCE_DOUBLE(bswap64(*(a2 + v46)))];
      goto LABEL_43;
    case 0x320u:
      goto LABEL_28;
    case 0x2BCu:
      v30 = (v27 + 7) & 0xFFFFFFFFFFFFFFFCLL;
      v31 = v30 + 4;
      if (v30 + 4 <= a4)
      {
        v32 = bswap32(*(a2 + v30));
        v28 = v31;
      }

      else
      {
        v32 = 0;
      }

      v50 = *(a8 + 8 * v32);
      goto LABEL_51;
  }

LABEL_44:
  v48 = (v27 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  if (v48 + 4 <= a4)
  {
    v49 = bswap32(*(a2 + v48));
    v28 = v48 + 4;
  }

  else
  {
    v49 = 0;
  }

  v64 = 0;
  v56 = +[_PFRoutines attributeClassesForSecureCoding];
  v57 = [_PFRoutines unarchiveCylicGraphObjectOfClasses:v56 fromData:*(a7 + 8 * v49) error:&v64];
  if (v57)
  {
    v50 = v57;
    goto LABEL_51;
  }

  v58 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v59 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v61 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v59)
    {
      if (v61)
      {
        goto LABEL_85;
      }
    }

    else if (v61)
    {
LABEL_85:
      v63 = [a5 name];
      *valuePtr = 138412546;
      *&valuePtr[4] = v63;
      v66 = 2112;
      v67 = v64;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Error decoding default value for %@ : %@\n", valuePtr, 0x16u);
    }
  }

  v62 = [a5 name];
  _NSCoreDataLog_console(1, "Error decoding default value for %@ : %@", v62, v64);
  objc_autoreleasePoolPop(v58);
  if (a9)
  {
    *a9 = v64;
  }

  result = 0;
LABEL_64:
  v55 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _readEntityIntoShellFromData(void *a1, char *a2, void *a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t *a9, uint64_t a10, void *a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t *a18)
{
  v18 = a18;
  v275 = *MEMORY[0x1E69E9840];
  v19 = (*a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v20 = v19 + 4;
  if (v19 + 4 > a4 || (v21 = a2, *&a2[v19] != -335614502))
  {
    if (!a18)
    {
      goto LABEL_242;
    }

    v30 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A250];
    v32 = MEMORY[0x1E695DF20];
    v33 = @"Can't read entity into shell: Missing entity frontside delimiter";
LABEL_7:
    v34 = [v30 errorWithDomain:v31 code:134060 userInfo:{objc_msgSend(v32, "dictionaryWithObject:forKey:", v33, @"Root cause", v251, v252)}];
    result = 0;
    *v18 = v34;
    goto LABEL_243;
  }

  v22 = a8;
  v23 = a7;
  v25 = a3;
  v26 = a1;
  v27 = (v19 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v28 = v27 + 4;
  if (v27 + 4 <= a4)
  {
    v29 = bswap32(*&a2[v27]);
    v20 = v28;
  }

  else
  {
    v29 = 0;
  }

  v36 = v20 + v29;
  if (v20 + v29 > a4)
  {
    if (!a18)
    {
      goto LABEL_242;
    }

    v30 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A250];
    v32 = MEMORY[0x1E695DF20];
    v33 = @"Can't read entity: Not enough bytes left";
    goto LABEL_7;
  }

  v37 = a13;
  v38 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v39 = v38 + 4;
  if (v38 + 4 <= v36)
  {
    v40 = *&a2[v38];
    if (v40)
    {
      v41 = a13[bswap32(v40)];
      v42 = a6;
      v268 = a2;
      v44 = v36;
      v48 = v41;
      v37 = a13;
      v26 = a1;
      v22 = a8;
      v23 = a7;
      v36 = v44;
      v18 = a18;
      v25 = a3;
      v21 = v268;
      a6 = v42;
      a5[3] = v48;
    }

    v20 = v39;
  }

  v49 = (v20 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v50 = v49 + 4;
  if (v49 + 4 > v36 || (v51 = *&v21[v49], v270 = v49 + 4, !v51))
  {
    if (!v18)
    {
      goto LABEL_242;
    }

    v30 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A250];
    v32 = MEMORY[0x1E695DF20];
    v33 = @"Can't read entity: Missing version hash value";
    goto LABEL_7;
  }

  v265 = v37;
  v266 = a6;
  v267 = a12;
  v264 = a14;
  atomic_store(*(a14 + 8 * bswap32(v51)), a5 + 4);
  v52 = (v49 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v53 = v52 + 4;
  if (v52 + 4 <= v36)
  {
    v54 = *&v21[v52];
    if (v54)
    {
      a5[6] = *(v267 + 8 * bswap32(v54));
    }

    v50 = v53;
  }

  v268 = a5;
  v55 = (v50 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v56 = v55 + 4;
  if (v55 + 4 > v36 || (v57 = *&v21[v55], v270 = v55 + 4, !v57))
  {
    if (!v18)
    {
      goto LABEL_242;
    }

    v30 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A250];
    v32 = MEMORY[0x1E695DF20];
    v33 = @"Can't read entity: Missing entity name";
    goto LABEL_7;
  }

  v263 = a15;
  *(v268 + 8) = *(v267 + 8 * bswap32(v57));
  v58 = v55 + 5;
  if (v55 + 5 > v36)
  {
    v59 = v268;
    v60 = v266;
LABEL_34:
    v64 = v263;
    goto LABEL_37;
  }

  v61 = v21[v56];
  v270 = v55 + 5;
  v60 = v266;
  if (!v61)
  {
    v56 = v55 + 5;
    v59 = v268;
    goto LABEL_34;
  }

  v62 = (v50 + 11) & 0xFFFFFFFFFFFFFFFCLL;
  v63 = v62 + 4;
  v59 = v268;
  v64 = v263;
  if (v62 + 4 <= v36)
  {
    v65 = bswap32(*&v21[v62]);
    v270 = v63;
    v58 = v63;
  }

  else
  {
    v65 = 0;
  }

  *(v268 + 10) = *(v263 + 8 * v65);
  v56 = v58;
LABEL_37:
  v66 = (v56 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v67 = v66 + 4;
  if (v66 + 4 <= v36)
  {
    v68 = bswap32(*&v21[v66]);
    v270 = v67;
    v56 = v67;
  }

  else
  {
    v68 = 0;
  }

  *(v59 + 9) = *(v64 + 8 * v68);
  v69 = v56 + 1;
  if (v56 + 1 <= v36)
  {
    v70 = v21[v56];
    v270 = v56 + 1;
    if (v70)
    {
      if ((v56 & 0xFFFFFFFFFFFFFFFCLL) + 8 <= v36)
      {
        v71 = bswap32(*&v21[(v56 & 0xFFFFFFFFFFFFFFFCLL) + 4]);
        v270 = (v56 & 0xFFFFFFFFFFFFFFFCLL) + 8;
        v69 = v270;
      }

      else
      {
        v71 = 0;
      }

      v72 = *(v60 + 8 * v71);
      *(v59 + 11) = v72;
      if ([v72 count])
      {
        if (!v18)
        {
          goto LABEL_242;
        }

        v30 = MEMORY[0x1E696ABC0];
        v31 = *MEMORY[0x1E696A250];
        v32 = MEMORY[0x1E695DF20];
        v33 = @"Cant' read entity: Miswired subentities dictionary";
        goto LABEL_7;
      }

      v73 = (v69 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      if (v73 + 4 <= v36)
      {
        v74 = bswap32(*&v21[v73]);
        v270 = v73 + 4;
        v69 = v73 + 4;
      }

      else
      {
        v74 = 0;
      }

      if ([objc_msgSend(*(v59 + 11) "mapping")] != v74)
      {
        if (!v18)
        {
          goto LABEL_242;
        }

        v30 = MEMORY[0x1E696ABC0];
        v31 = *MEMORY[0x1E696A250];
        v32 = MEMORY[0x1E695DF20];
        v33 = @"Cant' read entity: Mismatched subentity count";
        goto LABEL_7;
      }

      v75 = v74;
      v76 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
      v77 = &v21[v76];
      if (v74)
      {
        v78 = &v21[v76];
        v79 = v263;
        do
        {
          v80 = (v69 + 7) & 0xFFFFFFFFFFFFFFF8;
          v81 = v80 + 8;
          if (v80 + 8 <= v36)
          {
            v82 = bswap64(*&v21[v80]);
            v270 = v81;
            v69 = v81;
          }

          else
          {
            v82 = 0;
          }

          *v78 = *(v79 + 8 * v82);
          v78 += 8;
          --v75;
        }

        while (v75);
      }

      [*(v59 + 11) _setValues:v77 retain:1];
      v56 = v69;
      v60 = v266;
    }

    else
    {
      ++v56;
    }
  }

  v83 = (v56 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v84 = v83 + 4;
  if (v83 + 4 <= v36)
  {
    v85 = bswap32(*&v21[v83]);
    v270 = v84;
    v56 = v84;
  }

  else
  {
    v85 = 0;
  }

  v86 = *(v60 + 8 * v85);
  *(v59 + 12) = v86;
  if ([v86 count])
  {
    if (!v18)
    {
      goto LABEL_242;
    }

    v30 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A250];
    v32 = MEMORY[0x1E695DF20];
    v33 = @"Cant' read entity: Properties dictionary has content";
    goto LABEL_7;
  }

  v87 = [*(v59 + 12) mapping];
  *(v59 + 13) = v87;
  v88 = [v87 length];
  v262 = (v56 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v88)
  {
    v89 = v88;
    v90 = v88;
    do
    {
      v91 = (v56 + 7) & 0xFFFFFFFFFFFFFFF8;
      v92 = v91 + 8;
      if (v91 + 8 <= v36)
      {
        v93 = *&v21[v91];
        v270 = v92;
        v56 = v92;
        if (v93)
        {
          if (!v18)
          {
            goto LABEL_242;
          }

          v30 = MEMORY[0x1E696ABC0];
          v31 = *MEMORY[0x1E696A250];
          v32 = MEMORY[0x1E695DF20];
          v33 = @"Cant' read entity: Properties buffer has content";
          goto LABEL_7;
        }
      }

      --v90;
    }

    while (v90);
    v94 = v262;
    do
    {
      v95 = (v270 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v96 = v95 + 4;
      if (v95 + 4 <= v36)
      {
        v97 = *&v21[v95];
        v270 = v95 + 4;
        if (v97)
        {
          v98 = _newReadPropertyProxyFromBytes(v26, v21, &v270, v36, v59, v23);
          *&v21[v94] = v98;
          if ([v98 entity] != v59)
          {
            if (!v18)
            {
              goto LABEL_242;
            }

            v30 = MEMORY[0x1E696ABC0];
            v31 = *MEMORY[0x1E696A250];
            v32 = MEMORY[0x1E695DF20];
            v33 = @"Cant' read entity: Property entity does not match entity being decoded (2)";
            goto LABEL_7;
          }

          goto LABEL_81;
        }

        v95 = (v95 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        v96 = v95 + 4;
      }

      if (v96 <= v36)
      {
        v99 = bswap32(*&v21[v95]);
        v270 = v96;
      }

      else
      {
        v99 = 0;
      }

      v100 = *(v23 + 8 * v99);
      *&v21[v94] = v100;
      if ([v100 entity] != v59)
      {
        if (!v18)
        {
          goto LABEL_242;
        }

        v30 = MEMORY[0x1E696ABC0];
        v31 = *MEMORY[0x1E696A250];
        v32 = MEMORY[0x1E695DF20];
        v33 = @"Cant' read entity: Property entity does not match entity being decoded (1)";
        goto LABEL_7;
      }

LABEL_81:
      v94 += 8;
      --v89;
    }

    while (v89);
  }

  [*(v59 + 12) _setValues:&v21[v262] retain:0];
  if (a17 == 1)
  {
    v101 = malloc_type_malloc(0x120uLL, 0x1000040451B5BE8uLL);
    v102 = 0;
    v103 = v270;
    v104 = (v101 + 8);
    while (1)
    {
      if (v102 > 11)
      {
        if (v102 == 12)
        {
          *(v101 + 24) = 0;
          *(v101 + 25) = 0;
        }

        else
        {
          if (v102 != 13)
          {
LABEL_91:
            v105 = (v103 + 7) & 0xFFFFFFFFFFFFFFF8;
            v106 = v105 + 8;
            if (v105 + 8 <= v36)
            {
              v107 = bswap64(*&v21[v105]);
              v270 = v105 + 8;
              v105 = (v105 + 15) & 0xFFFFFFFFFFFFFFF8;
              v108 = v105 + 8;
              v103 = v106;
            }

            else
            {
              v107 = 0;
              v108 = v105 + 8;
            }

            *(v104 - 1) = v107;
            if (v108 <= v36)
            {
              v109 = bswap64(*&v21[v105]);
              v270 = v108;
              v103 = v108;
            }

            else
            {
              v109 = 0;
            }

            *v104 = v109;
            goto LABEL_100;
          }

          *(v101 + 13) = *(v101 + 11);
        }
      }

      else if (v102 == 8)
      {
        *(v101 + 16) = 0;
        *(v101 + 17) = 0;
      }

      else
      {
        if (v102 != 9)
        {
          goto LABEL_91;
        }

        *(v101 + 9) = *(v101 + 7);
      }

LABEL_100:
      ++v102;
      v104 += 2;
      if (v102 == 17)
      {
        goto LABEL_110;
      }
    }
  }

  v103 = v270;
  v101 = &v21[(v270 + 7) & 0xFFFFFFFFFFFFFFF8];
  v110 = (v101 + 8);
  v111 = 18;
  do
  {
    v112 = (v103 + 7) & 0xFFFFFFFFFFFFFFF8;
    v113 = v112 + 8;
    if (v112 + 8 <= v36)
    {
      v114 = bswap64(*&v21[v112]);
      v270 = v112 + 8;
      v112 = (v112 + 15) & 0xFFFFFFFFFFFFFFF8;
      v115 = v112 + 8;
      v103 = v113;
    }

    else
    {
      v114 = 0;
      v115 = v112 + 8;
    }

    *(v110 - 1) = v114;
    if (v115 <= v36)
    {
      v116 = bswap64(*&v21[v112]);
      v270 = v115;
      v103 = v115;
    }

    else
    {
      v116 = 0;
    }

    *v110 = v116;
    v110 += 2;
    --v111;
  }

  while (v111);
LABEL_110:
  *(v59 + 14) = v101;
  v117 = (v103 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v118 = v117 + 4;
  if (v117 + 4 <= v36)
  {
    v119 = bswap32(*&v21[v117]);
    v270 = v118;
    *(v59 + 30) = v119;
    v120 = (v59 + 120);
    if ((v119 & 4) != 0)
    {
      atomic_store(1u, v59 + 124);
    }

    v103 = v118;
  }

  else
  {
    v119 = 0;
    *(v59 + 30) = 0;
    v120 = (v59 + 120);
  }

  v121 = a11;
  v122 = a9;
  if (a17 != 1)
  {
    *v120 = v119 | 0x80;
  }

  v256 = a10;
  v123 = 8;
  do
  {
    if (((v103 + 7) & 0xFFFFFFFFFFFFFFF8) + 8 <= v36)
    {
      v270 = ((v103 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
      v103 = v270;
    }

    --v123;
  }

  while (v123);
  v124 = &v21[v103 - 64];
  *(v59 + 16) = v124;
  v125 = (v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  v126 = v125 + 8;
  if (v125 + 8 <= v36)
  {
    v127 = *&v21[v125 + 4] << 32;
    v270 = v126;
    v103 = v126;
    if (v127)
    {
      v128 = v265[bswap64(v127)];
      v265 = a17;
      v101 = v128;
      v122 = a9;
      v121 = a11;
      v124 = *(v59 + 16);
      *v124 = v101;
      v103 = v270;
    }
  }

  if (a17 < 0xB)
  {
    goto LABEL_130;
  }

  v129 = (v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  v130 = v129 + 8;
  if (v129 + 8 > v36)
  {
    goto LABEL_130;
  }

  v131 = *&v21[v129 + 4] << 32;
  v270 = v130;
  v103 = v130;
  if (!v131)
  {
    goto LABEL_130;
  }

  v251 = v122;
  v252 = v121;
  v265 = *(v264 + 8 * bswap64(v131));
  v269 = 0;
  v262 = _PFRoutines;
  v132 = MEMORY[0x1E695DFD8];
  v133 = objc_opt_class();
  v134 = [v132 setWithObjects:{v133, objc_opt_class(), 0}];
  v135 = [_PFRoutines unarchiveCylicGraphObjectOfClasses:v134 fromData:v265 error:&v269];
  if (!v135)
  {
    v227 = objc_autoreleasePoolPush();
    v233 = v268;
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v234 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v236 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v234)
      {
        v233 = v268;
        if (v236)
        {
          goto LABEL_245;
        }
      }

      else
      {
        v233 = v268;
        if (v236)
        {
LABEL_245:
          v247 = [v268 name];
          v248 = [v269 code];
          *buf = 138412546;
          v272 = v247;
          v273 = 1024;
          LODWORD(v274) = v248;
          _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Can't decode coreSpotlightDisplayNameExpression for entity %@ error %d\n", buf, 0x12u);
        }
      }
    }

    v242 = [v233 name];
    _NSCoreDataLog_console(1, "Can't decode coreSpotlightDisplayNameExpression for entity %@ error %d", v242, [v269 code]);
    goto LABEL_237;
  }

  v136 = v135;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v237 = objc_autoreleasePoolPush();
    if (_NSCoreDataIsOSLogEnabled(1))
    {
      v238 = _pflogging_catastrophic_mode;
      v239 = _PFLogGetLogStream(1);
      v240 = os_log_type_enabled(v239, OS_LOG_TYPE_ERROR);
      if (v238)
      {
        if (v240)
        {
          goto LABEL_246;
        }
      }

      else if (v240)
      {
LABEL_246:
        v249 = objc_opt_class();
        *buf = 138412290;
        v272 = v249;
        _os_log_error_impl(&dword_18565F000, v239, OS_LOG_TYPE_ERROR, "CoreData: error: Can't decode coreSpotlightDisplayNameExpression - wrong class decoded - %@\n", buf, 0xCu);
      }
    }

    v244 = objc_opt_class();
    _NSCoreDataLog_console(1, "Can't decode coreSpotlightDisplayNameExpression - wrong class decoded - %@", v244);
    v243 = v237;
LABEL_240:
    objc_autoreleasePoolPop(v243);
    if (v18)
    {
      *v18 = v269;
    }

    goto LABEL_242;
  }

  v101 = v136;
  v59 = v268;
  v124 = *(v268 + 16);
  *(v124 + 32) = v101;
  v103 = v270;
  v121 = v252;
  v122 = v251;
LABEL_130:
  v137 = (v103 + 7) & 0xFFFFFFFFFFFFFFF8;
  v138 = v137 + 8;
  if (v137 + 8 > v36)
  {
    v139 = 0;
    v140 = 0;
    v141 = 0;
LABEL_185:
    *(v124 + 40) = v140;
    *(v124 + 48) = 0;
    *v122 = v139;
    *v121 = v141;
    v179 = (v103 + 7) & 0xFFFFFFFFFFFFFFF8;
    v180 = v179 + 8;
    v181 = v267;
    if (v179 + 8 <= v36)
    {
      v182 = *&v21[v179 + 4] << 32;
      v270 = v180;
      v103 = v180;
      if (v182)
      {
        v183 = bswap64(v182);
        MEMORY[0x1EEE9AC00](v101);
        v185 = (&v251 - ((v184 + 15) & 0xFFFFFFFF0));
        v186 = 0;
        do
        {
          v185[v186++] = _newReadPFEncodedArrayFromData(v26, v21, &v270, v36, v181, 0);
        }

        while (v183 != v186);
        v187 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v185 count:v183];
        do
        {
          v188 = *v185++;

          --v183;
        }

        while (v183);
        v59 = v268;
        *(*(v268 + 16) + 24) = v187;
        v103 = v270;
      }
    }

    v189 = (v103 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v190 = v189 + 4;
    if (v189 + 4 > v36)
    {
      goto LABEL_196;
    }

    v191 = *&v21[v189];
    v270 = v190;
    v103 = v190;
    if (!v191)
    {
      goto LABEL_196;
    }

    v192 = *(v264 + 8 * bswap32(v191));
    v269 = 0;
    v193 = +[_PFRoutines plistClassesForSecureCoding];
    v194 = [_PFRoutines unarchiveCylicGraphObjectOfClasses:v193 fromData:v192 error:&v269];
    if (v194)
    {
      v195 = v194;
      v59 = v268;
      *(v268 + 17) = v195;
      v103 = v270;
LABEL_196:
      v196 = (v103 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v197 = v196 + 4;
      if (v196 + 4 <= v36)
      {
        v198 = *&v21[v196];
        v270 = v197;
        v103 = v197;
        if (v198)
        {
          v199 = _newReadPFEncodedArrayFromData(v26, v21, &v270, v36, v263, 0);
          v200 = [v199 _values];
          v201 = *MEMORY[0x1E695E480];
          v202 = [v199 count];
          v203 = v201;
          v59 = v268;
          *(v59 + 18) = CFSetCreate(v203, v200, v202, 0);

          v103 = v270;
        }
      }

      v204 = (v103 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v205 = v204 + 4;
      if (v204 + 4 <= v36)
      {
        v206 = bswap32(*&v21[v204]);
        v270 = v205;
      }

      else
      {
        v206 = 0;
      }

      *(v59 + 20) = v206;
      v207 = *(v59 + 13);
      v208 = [v207 keys];
      v209 = [v207 length];
      v210 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v210 = malloc_default_zone();
      }

      *(v59 + 19) = malloc_type_zone_calloc(v210, 0xAuLL, 8uLL, 0x80040B8603338uLL);
      *(*(v59 + 19) + 48) = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v208 count:v209];
      v211 = [*(v59 + 12) values];
      v212 = v211;
      v213 = (v270 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v214 = v213 + 4;
      if (v213 + 4 <= v36)
      {
        v215 = bswap32(*&v21[v213]);
        v270 = v214;
      }

      else
      {
        v215 = 0;
      }

      v216 = *(v266 + 8 * v215);
      v217 = v268;
      [v216 setValues:v211 + 8 * *(*(v268 + 14) + 16)];
      *(*(v217 + 19) + 56) = v216;
      v218 = (v270 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v219 = v218 + 4;
      if (v218 + 4 <= v36)
      {
        v220 = bswap32(*&v21[v218]);
        v270 = v219;
      }

      else
      {
        v220 = 0;
      }

      v221 = *(v266 + 8 * v220);
      v222 = v268;
      [v221 setValues:v212 + 8 * *(*(v268 + 14) + 32)];
      *(*(v222 + 19) + 64) = v221;
      v223 = _PF_Private_Malloc_Zone;
      if (!_PF_Private_Malloc_Zone)
      {
        v223 = malloc_default_zone();
      }

      *(*(v222 + 19) + 72) = malloc_type_zone_calloc(v223, v209, 1uLL, 0xDE525084uLL);
      v224 = (v270 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v225 = v224 + 4;
      if (v224 + 4 <= v36)
      {
        v226 = *&v21[v224];
        v270 = v225;
        if (v226 == -335614502)
        {
          [(NSEntityDescription *)v222 _commonCachesAndOptimizedState];
          *v25 = v270;
          result = 1;
          goto LABEL_243;
        }
      }

      v30 = MEMORY[0x1E696ABC0];
      v31 = *MEMORY[0x1E696A250];
      v32 = MEMORY[0x1E695DF20];
      v33 = @"Can't read entity into shell: Missing entity back-end delimiter";
      goto LABEL_7;
    }

    v227 = objc_autoreleasePoolPush();
    IsOSLogEnabled = _NSCoreDataIsOSLogEnabled(1);
    v229 = v268;
    if (!IsOSLogEnabled)
    {
      goto LABEL_234;
    }

    v230 = _pflogging_catastrophic_mode;
    v231 = _PFLogGetLogStream(1);
    v232 = os_log_type_enabled(v231, OS_LOG_TYPE_ERROR);
    if (v230)
    {
      if (v232)
      {
        goto LABEL_244;
      }
    }

    else if (v232)
    {
LABEL_244:
      v246 = [v229 name];
      *buf = 138412546;
      v272 = v246;
      v273 = 2112;
      v274 = v269;
      _os_log_error_impl(&dword_18565F000, v231, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to decode userInfo for entity '%@' : %@\n", buf, 0x16u);
    }

LABEL_234:
    v250 = [v229 name];
    _NSCoreDataLog_console(1, "Unable to decode userInfo for entity '%@' : %@", v250, v269);
LABEL_237:
    v243 = v227;
    goto LABEL_240;
  }

  v142 = *&v21[v137 + 4] << 32;
  v270 = v137 + 8;
  if (!v142)
  {
    v139 = 0;
    v140 = 0;
    v141 = 0;
    v103 = v138;
    goto LABEL_185;
  }

  v143 = bswap64(v142);
  if (*v122 < v143)
  {
    if (!v18)
    {
      goto LABEL_242;
    }

    v30 = MEMORY[0x1E696ABC0];
    v31 = *MEMORY[0x1E696A250];
    v32 = MEMORY[0x1E695DF20];
    v33 = @"Cant' read entity: Mismatched number of fetch indexes";
    goto LABEL_7;
  }

  v251 = v122;
  v252 = v121;
  v253 = *v121;
  v257 = v143;
  v258 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v143];
  v262 = 0;
  v255 = 0;
  while (1)
  {
    v144 = (v270 + 7) & 0xFFFFFFFFFFFFFFF8;
    v145 = v144 + 8;
    if (v144 + 8 <= v36)
    {
      v146 = *&v21[v144];
      v270 = v144 + 8;
      v260 = v146 ? *(v267 + 8 * bswap64(v146)) : 0;
    }

    else
    {
      v260 = 0;
      v145 = v270;
    }

    v147 = *(v22 + 8 * v262);
    v148 = (v145 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (v148 + 8 <= v36)
    {
      v149 = *&v21[v148];
      v270 = v148 + 8;
      if (v149)
      {
        v150 = (v148 + 15) & 0xFFFFFFFFFFFFFFF8;
        v151 = v150 + 8;
        if (v150 + 8 <= v36)
        {
          v152 = bswap64(*&v21[v150]);
          v270 = v151;
        }

        else
        {
          v152 = 0;
        }

        v265 = *(v264 + 8 * v152);
        v153 = MEMORY[0x1E695DFD8];
        v154 = objc_opt_class();
        v155 = [v153 setWithObjects:{v154, objc_opt_class(), 0}];
        v259 = [_PFRoutines unarchiveCylicGraphObjectOfClasses:v155 fromData:v265 error:0];
        v145 = v270;
        v59 = v268;
      }

      else
      {
        v259 = 0;
        v145 = v148 + 8;
      }
    }

    else
    {
      v259 = 0;
    }

    v156 = (v145 + 7) & 0xFFFFFFFFFFFFFFF8;
    v157 = v156 + 8;
    v261 = v147;
    if (v156 + 8 <= v36)
    {
      v158 = *&v21[v156];
      v270 = v157;
      if (v158)
      {
        break;
      }
    }

    v161 = objc_alloc_init(MEMORY[0x1E695DF70]);
LABEL_183:
    v178 = v161;
    [v261 initWithName:v260 predicate:v259 elements:v161 entity:{v59, v251, v252}];

    [v258 addObject:v261];
    ++v262;
    v139 = v257;
    if (v262 == v257)
    {
      v124 = *(v59 + 16);
      v103 = v270;
      v121 = v252;
      v122 = v251;
      v141 = v255;
      v140 = v258;
      goto LABEL_185;
    }
  }

  v159 = bswap64(v158);
  if (v253 >= v159)
  {
    v160 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v159];
    v161 = v160;
    if (v159 >= 1)
    {
      v265 = v160;
      v254 = v159 + v255;
      v162 = (v256 + 8 * v255);
      do
      {
        v163 = (v270 + 7) & 0xFFFFFFFFFFFFFFF8;
        v164 = v163 + 8;
        if (v163 + 8 <= v36)
        {
          v166 = *&v21[v163];
          v270 = v163 + 8;
          if (v166)
          {
            v165 = *(v267 + 8 * bswap64(v166));
          }

          else
          {
            v165 = 0;
          }
        }

        else
        {
          v165 = 0;
          v164 = v270;
        }

        v167 = (v164 + 7) & 0xFFFFFFFFFFFFFFF8;
        v168 = v167 + 8;
        if (v167 + 8 <= v36)
        {
          v169 = bswap64(*&v21[v167]);
          v270 = v167 + 8;
          v167 = (v167 + 15) & 0xFFFFFFFFFFFFFFF8;
          v168 = v167 + 8;
        }

        else
        {
          v169 = 0;
        }

        if (v168 <= v36)
        {
          v171 = *&v21[v167];
          v270 = v168;
          v170 = v171 != 0;
          v167 = (v168 + 7) & 0xFFFFFFFFFFFFFFF8;
          v168 = v167 + 8;
        }

        else
        {
          v170 = 0;
        }

        if (v168 <= v36 && (v172 = *&v21[v167], v270 = v168, v172))
        {
          v173 = (v168 + 7) & 0xFFFFFFFFFFFFFFF8;
          v174 = v173 + 8;
          if (v173 + 8 <= v36)
          {
            v175 = bswap64(*&v21[v173]);
            v270 = v174;
          }

          else
          {
            v175 = 0;
          }

          v176 = *(v23 + 8 * v175);
        }

        else
        {
          v176 = 0;
        }

        v177 = *v162++;
        [(NSFetchIndexElementDescription *)v177 initWithPropertyName:v165 property:v176 collationType:v169 ascending:v170];
        [v265 addObject:v177];

        --v159;
        v59 = v268;
      }

      while (v159);
      v255 = v254;
      v161 = v265;
    }

    goto LABEL_183;
  }

  v241 = v258;
  if (v18)
  {
    *v18 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObject:forKey:", @"Cant' read entity: Mismatched number of fetch index elements", @"Root cause"}];
  }

LABEL_242:
  result = 0;
LABEL_243:
  v245 = *MEMORY[0x1E69E9840];
  return result;
}

NSManagedObjectModel *_newReadModelFromBytes(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, NSMutableDictionary *a5, NSMutableDictionary *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v127 = *MEMORY[0x1E69E9840];
  v120 = *a3;
  v18 = v120;
  v106 = objc_alloc_init(NSManagedObjectModel);
  v19 = (v120 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v20 = v19 + 4;
  v21 = a2;
  if (v19 + 4 <= a4)
  {
    v23 = *(a2 + v19);
    v120 = v20;
    v22 = bswap32(v23 & 0xFBFFFFFF);
    v18 = v20;
  }

  else
  {
    v22 = 0;
  }

  v106->_managedObjectModelFlags = v22;
  entities = v106->_entities;
  if (entities)
  {
  }

  v106->_entities = a5;
  v25 = [-[NSMutableDictionary mapping](a5 "mapping")];
  v26 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  if (v26 + 4 <= a4)
  {
    v27 = bswap32(*(a2 + v26));
    v120 = v26 + 4;
    v18 = v26 + 4;
  }

  else
  {
    v27 = 0;
  }

  v103 = v25;
  if (v25 != v27)
  {
    v31 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v32 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v34 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v32)
      {
        if (v34)
        {
          goto LABEL_102;
        }
      }

      else if (v34)
      {
LABEL_102:
        *buf = 134218240;
        *&buf[4] = v103;
        *&buf[12] = 1024;
        v126 = v27;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Mismatch: strategy has %lu length, archive has %u values\n", buf, 0x12u);
      }
    }

    _NSCoreDataLog_console(1, "Mismatch: strategy has %lu length, archive has %u values");
LABEL_81:
    v89 = v31;
LABEL_93:
    objc_autoreleasePoolPop(v89);
    goto LABEL_94;
  }

  [(NSMutableDictionary *)a5 _setValues:a7 retain:0];
  v28 = (v18 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v29 = v28 + 4;
  v102 = a4;
  v99 = a5;
  if (v28 + 4 > a4)
  {
    if (!a6)
    {
LABEL_29:
      v29 = v18;
      goto LABEL_30;
    }

    v30 = 0;
LABEL_19:
    fetchRequestTemplates = v106->_fetchRequestTemplates;
    if (fetchRequestTemplates)
    {
    }

    v106->_fetchRequestTemplates = a6;
    v37 = [(NSMutableDictionary *)a6 mapping];
    if ([v37 length] == v30)
    {
      v38 = v21 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v30)
      {
        v39 = v30;
        v40 = (v21 + ((v18 + 7) & 0xFFFFFFFFFFFFFFF8));
        do
        {
          v41 = (v18 + 7) & 0xFFFFFFFFFFFFFFF8;
          v42 = v41 + 8;
          if (v41 + 8 <= v102)
          {
            v43 = bswap64(*(v21 + v41));
            v120 = v42;
            v18 = v42;
          }

          else
          {
            v43 = 0;
          }

          *v40++ = *(a8 + 8 * v43);
          --v39;
        }

        while (v39);
      }

      [(NSMutableDictionary *)a6 _setValues:v38 retain:1];
      goto LABEL_29;
    }

    v46 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_92;
    }

    v47 = _pflogging_catastrophic_mode;
    v48 = _PFLogGetLogStream(1);
    v49 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);
    if (v47)
    {
      if (v49)
      {
        goto LABEL_107;
      }
    }

    else if (v49)
    {
LABEL_107:
      *buf = 134218240;
      *&buf[4] = [v37 length];
      *&buf[12] = 1024;
      v126 = v30;
      _os_log_error_impl(&dword_18565F000, v48, OS_LOG_TYPE_ERROR, "CoreData: error: Mismatch: frt strategy has %lu length, archive has %u values\n", buf, 0x12u);
    }

LABEL_92:
    _NSCoreDataLog_console(1, "Mismatch: frt strategy has %lu length, archive has %u values", [v37 length], v30);
    v89 = v46;
    goto LABEL_93;
  }

  v35 = *(v21 + v28);
  v30 = bswap32(v35);
  v120 = v29;
  if (a6)
  {
    v18 = v29;
    goto LABEL_19;
  }

  if (v35)
  {
    v31 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v90 = _pflogging_catastrophic_mode;
      v91 = _PFLogGetLogStream(1);
      v92 = os_log_type_enabled(v91, OS_LOG_TYPE_ERROR);
      if (v90)
      {
        if (v92)
        {
          *buf = 67109376;
          *&buf[8] = 1024;
          *&buf[10] = v30;
LABEL_109:
          _os_log_error_impl(&dword_18565F000, v91, OS_LOG_TYPE_ERROR, "CoreData: error: Mismatch: frt strategy has %d length, archive has %u values\n", buf, 0xEu);
        }
      }

      else if (v92)
      {
        *buf = 67109376;
        *&buf[8] = 1024;
        *&buf[10] = v30;
        goto LABEL_109;
      }
    }

    _NSCoreDataLog_console(1, "Mismatch: frt strategy has %d length, archive has %u values");
    goto LABEL_81;
  }

LABEL_30:
  v44 = (v29 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v98 = a3;
  if (v44 + 4 <= v102)
  {
    v45 = bswap32(*(v21 + v44));
    v120 = v44 + 4;
  }

  else
  {
    v45 = 0;
  }

  for (i = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v103]; v45; --v45)
  {
    v51 = (v120 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    if (v51 + 4 <= v102)
    {
      v52 = bswap32(*(v21 + v51));
      v120 = v51 + 4;
    }

    else
    {
      v52 = 0;
    }

    v53 = _newReadPFEncodedArrayFromData(a1, v21, &v120, v102, a7, 0);
    [(NSMutableDictionary *)i setObject:v53 forKey:*(a9 + 8 * v52)];
  }

  v100 = v21;
  v101 = a1;
  v106->_configurations = i;
  *(v106->_additionalPrivateIvars + 3) = objc_alloc_init(MEMORY[0x1E695DF90]);
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = [(NSMutableDictionary *)i allKeys];
  v54 = [obj countByEnumeratingWithState:&v116 objects:v124 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v117;
    do
    {
      for (j = 0; j != v55; ++j)
      {
        if (*v117 != v56)
        {
          objc_enumerationMutation(obj);
        }

        v58 = *(*(&v116 + 1) + 8 * j);
        v59 = [MEMORY[0x1E695DFA8] set];
        v112 = 0u;
        v113 = 0u;
        v114 = 0u;
        v115 = 0u;
        v60 = [(NSMutableDictionary *)i objectForKeyedSubscript:v58];
        v61 = [v60 countByEnumeratingWithState:&v112 objects:v123 count:16];
        if (v61)
        {
          v62 = v61;
          v63 = *v113;
          do
          {
            for (k = 0; k != v62; ++k)
            {
              if (*v113 != v63)
              {
                objc_enumerationMutation(v60);
              }

              [v59 addObject:{objc_msgSend(*(*(&v112 + 1) + 8 * k), "name")}];
            }

            v62 = [v60 countByEnumeratingWithState:&v112 objects:v123 count:16];
          }

          while (v62);
        }

        [v106->_additionalPrivateIvars[3] setObject:v59 forKeyedSubscript:v58];
      }

      v55 = [obj countByEnumeratingWithState:&v116 objects:v124 count:16];
    }

    while (v55);
  }

  obja = _newReadPFEncodedArrayFromData(v101, v100, &v120, v102, a10, 0);
  versionIdentifiers = v106->_versionIdentifiers;
  if (versionIdentifiers)
  {
  }

  v66 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:v103];
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v67 = [obja countByEnumeratingWithState:&v108 objects:v122 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v109;
LABEL_60:
    v70 = 0;
    while (1)
    {
      if (*v109 != v69)
      {
        objc_enumerationMutation(obja);
      }

      v71 = *(*(&v108 + 1) + 8 * v70);
      v107 = 0;
      v72 = MEMORY[0x1E695DFD8];
      v121[0] = objc_opt_class();
      v121[1] = objc_opt_class();
      v121[2] = objc_opt_class();
      v73 = +[_PFRoutines unarchiveCylicGraphObjectOfClasses:fromData:error:](_PFRoutines, [v72 setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v121, 3)}], v71, &v107);
      if (!v73)
      {
        break;
      }

      [(NSSet *)v66 addObject:v73];
      if (v68 == ++v70)
      {
        v68 = [obja countByEnumeratingWithState:&v108 objects:v122 count:16];
        if (!v68)
        {
          goto LABEL_66;
        }

        goto LABEL_60;
      }
    }

    v85 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_90;
    }

    v86 = _pflogging_catastrophic_mode;
    v87 = _PFLogGetLogStream(1);
    v88 = os_log_type_enabled(v87, OS_LOG_TYPE_ERROR);
    if (v86)
    {
      if (v88)
      {
        *buf = 138412290;
        *&buf[4] = v107;
LABEL_106:
        _os_log_error_impl(&dword_18565F000, v87, OS_LOG_TYPE_ERROR, "CoreData: error: Unable to decode versionIdentifiers for model: %@\n", buf, 0xCu);
      }
    }

    else if (v88)
    {
      *buf = 138412290;
      *&buf[4] = v107;
      goto LABEL_106;
    }

LABEL_90:
    _NSCoreDataLog_console(1, "Unable to decode versionIdentifiers for model: %@", v107);
    objc_autoreleasePoolPop(v85);

LABEL_94:
    v106 = 0;
    goto LABEL_95;
  }

LABEL_66:
  v106->_versionIdentifiers = v66;

  v74 = (v120 + 7) & 0xFFFFFFFFFFFFFFF8;
  v75 = [(NSMutableDictionary *)v99 count];
  v76 = v101;
  if (v75)
  {
    v77 = v75;
    v78 = v120;
    v79 = v75;
    while (1)
    {
      v80 = (v78 + 7) & 0xFFFFFFFFFFFFFFF8;
      v81 = v80 + 8;
      if (v80 + 8 <= v102)
      {
        v82 = *(v100 + v80);
        v120 = v81;
        v78 = v81;
        if (v82)
        {
          break;
        }
      }

      if (!--v79)
      {
        v83 = v74;
        do
        {
          *(v100 + v83) = _newReadPFEncodedArrayFromData(v101, v100, &v120, v102, a9, 0);
          v83 += 8;
          --v77;
        }

        while (v77);
        goto LABEL_73;
      }
    }

    v31 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v95 = _pflogging_catastrophic_mode;
      v96 = _PFLogGetLogStream(1);
      v97 = os_log_type_enabled(v96, OS_LOG_TYPE_ERROR);
      if (v95)
      {
        if (v97)
        {
          *buf = 0;
LABEL_111:
          _os_log_error_impl(&dword_18565F000, v96, OS_LOG_TYPE_ERROR, "CoreData: error: Corrupted archive (missing pointer space).\n", buf, 2u);
        }
      }

      else if (v97)
      {
        *buf = 0;
        goto LABEL_111;
      }
    }

    _NSCoreDataLog_console(1, "Corrupted archive (missing pointer space).");
    goto LABEL_81;
  }

LABEL_73:
  v106->_optimizationHints = (v100 + v74);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v84 = v101;
  }

  else
  {
    v76 = [[_PFVMData alloc] initWithBytes:[(_PFVMData *)v101 bytes] length:[(_PFVMData *)v101 length]];
  }

  v106->_dataForOptimization = v76;
  *v98 = v120;
LABEL_95:
  v93 = *MEMORY[0x1E69E9840];
  return v106;
}

uint64_t _readDerivedAttributeIntoShellFromBytes(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9)
{
  AttributeIntoShellFromBytes = _readAttributeIntoShellFromBytes(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  if (AttributeIntoShellFromBytes)
  {
    v15 = *a3;
    v16 = (*a3 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v17 = v16 + 4;
    if (v16 + 4 <= a4)
    {
      v18 = *(a2 + v16);
      if (v18)
      {
        v30 = *(a7 + 8 * bswap32(v18));
        v19 = MEMORY[0x1E695DFD8];
        v20 = objc_opt_class();
        v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
        *(a5 + 120) = [_PFRoutines unarchiveCylicGraphObjectOfClasses:v21 fromData:v30 error:a9];
      }

      v15 = v17;
    }

    v22 = (v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v23 = v22 + 4;
    if (v22 + 4 <= a4)
    {
      v24 = *(a2 + v22);
      if (v24)
      {
        v25 = *(a7 + 8 * bswap32(v24));
        v26 = MEMORY[0x1E695DFD8];
        v27 = objc_opt_class();
        v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
        *(a5 + 128) = [_PFRoutines unarchiveCylicGraphObjectOfClasses:v28 fromData:v25 error:a9];
      }

      v15 = v23;
    }

    *a3 = v15;
  }

  return AttributeIntoShellFromBytes;
}