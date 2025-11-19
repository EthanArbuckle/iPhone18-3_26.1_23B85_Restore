void sub_100002634(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = a2;
  v4 = [v27 mutableCopy];
  v5 = [v27 objectForKey:MTRAttributePathKey];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 hmf_numberForKey:HMEndpointIDKey];
    v8 = [v6 hmf_numberForKey:HMClusterIDKey];
    v9 = [v6 hmf_numberForKey:HMAttributeIDKey];
    v10 = [MTRAttributePath attributePathWithEndpointID:v7 clusterID:v8 attributeID:v9];

    [v4 setObject:v10 forKey:MTRAttributePathKey];
  }

  v11 = [v27 objectForKey:{MTRCommandPathKey, a3}];
  v12 = v11;
  if (v11)
  {
    v13 = [v11 hmf_numberForKey:HMEndpointIDKey];
    v14 = [v12 hmf_numberForKey:HMClusterIDKey];
    v15 = [v12 hmf_numberForKey:HMCommandIDKey];
    v16 = [MTRCommandPath commandPathWithEndpointID:v13 clusterID:v14 commandID:v15];

    [v4 setObject:v16 forKey:MTRCommandPathKey];
  }

  v17 = [v27 objectForKey:MTREventPathKey];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 hmf_numberForKey:HMEndpointIDKey];
    v20 = [v18 hmf_numberForKey:HMClusterIDKey];
    v21 = [v18 hmf_numberForKey:HMEventIDKey];
    v22 = [MTREventPath eventPathWithEndpointID:v19 clusterID:v20 eventID:v21];

    [v4 setObject:v22 forKey:MTREventPathKey];
  }

  v23 = *(a1 + 32);
  v24 = [v4 copy];
  [v23 replaceObjectAtIndex:v26 withObject:v24];
}

void sub_100002B3C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2;
  v4 = [v3 mutableCopy];
  v5 = [v3 objectForKeyedSubscript:MTRAttributePathKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v35[0] = HMAttributeIDKey;
    v8 = [v7 attribute];
    v36[0] = v8;
    v35[1] = HMClusterIDKey;
    v9 = [v7 cluster];
    v36[1] = v9;
    v35[2] = HMEndpointIDKey;
    v10 = [v7 endpoint];
    v36[2] = v10;
    v11 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:3];

    [v4 setObject:v11 forKey:MTRAttributePathKey];
  }

  v12 = [v3 objectForKeyedSubscript:{MTRCommandPathKey, a1}];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    v33[0] = HMCommandIDKey;
    v15 = [v14 command];
    v34[0] = v15;
    v33[1] = HMClusterIDKey;
    v16 = [v14 cluster];
    v34[1] = v16;
    v33[2] = HMEndpointIDKey;
    v17 = [v14 endpoint];
    v34[2] = v17;
    v18 = [NSDictionary dictionaryWithObjects:v34 forKeys:v33 count:3];

    [v4 setObject:v18 forKey:MTRCommandPathKey];
  }

  v19 = [v3 objectForKeyedSubscript:MTREventPathKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  if (v21)
  {
    v31[0] = HMEventIDKey;
    v22 = [v21 event];
    v32[0] = v22;
    v31[1] = HMClusterIDKey;
    v23 = [v21 cluster];
    v32[1] = v23;
    v31[2] = HMEndpointIDKey;
    v24 = [v21 endpoint];
    v32[2] = v24;
    v25 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];

    [v4 setObject:v25 forKey:MTREventPathKey];
  }

  v26 = *(v29 + 32);
  v27 = [v4 copy];
  [v26 replaceObjectAtIndex:a3 withObject:v27];
}

void sub_100004934(id a1)
{
  qword_10003B158 = [[NSUUID alloc] initWithUUIDString:@"8FCBC859-A091-41C8-A50D-A7652422D734"];

  _objc_release_x1();
}

void sub_100005424(id a1)
{
  qword_10003B168 = [[NSUUID alloc] initWithUUIDString:@"DCD43BD3-6928-461D-9C9B-1BC859E81BC7"];

  _objc_release_x1();
}

void sub_1000055DC(FILE *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a2;
  v11 = [[NSString alloc] initWithFormat:v10 arguments:&a9];

  fputs([v11 UTF8String], a1);
  fflush(a1);
}

void sub_100005A88(id a1)
{
  qword_10003B178 = [[NSUUID alloc] initWithUUIDString:@"A08F6CA5-EC1E-4DD6-A068-377BA45247B6"];

  _objc_release_x1();
}

uint64_t sub_10000633C(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    v12 = [v11 rangeOfString:@"/"];
    v13 = v11;
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = [v11 substringToIndex:v12];
    }

    if ([v13 containsString:@"self-token:"])
    {
      v14 = [v13 mutableCopy];
      [v14 replaceOccurrencesOfString:@"self-token:" withString:@"token:" options:1 range:{0, objc_msgSend(v14, "length")}];
      v15 = [v14 copy];

      v13 = v15;
    }

    if (([v13 hasPrefix:@"token:"] & 1) == 0)
    {
      if (a5)
      {
        [NSError hmErrorWithCode:19 description:@"Invalid destination." reason:@"Missing token prefix." suggestion:0];
        *a5 = v23 = 0;
LABEL_28:

        goto LABEL_29;
      }

LABEL_27:
      v23 = 0;
      goto LABEL_28;
    }

    if (a2)
    {
      v16 = [NSUUID alloc];
      v17 = +[_HMDDeviceHandle identifierNamespace];
      v18 = [v13 dataUsingEncoding:4];
      *a2 = [v16 initWithNamespace:v17 data:v18];
    }

    v19 = [v13 substringFromIndex:{objc_msgSend(@"token:", "length")}];
    if ([v19 length])
    {
      v20 = [NSData alloc];
      v21 = [v20 hmf_initWithHexadecimalString:v19 options:0];

      if (v21)
      {
        if (a3)
        {
          v22 = v21;
          *a3 = v21;
        }

        if (a4)
        {
          *a4 = [HMDAccountHandle accountHandleForDestination:v11];
        }

        v23 = 1;
        goto LABEL_28;
      }

      if (!a5)
      {
        goto LABEL_26;
      }

      v24 = @"Invalid token string.";
      v25 = 3;
    }

    else
    {
      if (!a5)
      {
LABEL_26:

        goto LABEL_27;
      }

      v24 = @"Missing token string.";
      v25 = 19;
    }

    *a5 = [NSError hmErrorWithCode:v25 description:@"Invalid destination." reason:v24 suggestion:0];
    goto LABEL_26;
  }

  if (a5)
  {
    [NSError hmErrorWithCode:20];
    *a5 = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

LABEL_29:

  return v23;
}

id sub_100006D90(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    if (a2)
    {
      v9 = [NSError hmErrorWithCode:20];
LABEL_10:
      v7 = 0;
      *a2 = v9;
      goto LABEL_18;
    }

LABEL_11:
    v7 = 0;
    goto LABEL_18;
  }

  if (([v3 hasPrefix:@"device:"] & 1) == 0)
  {
    if (a2)
    {
      v9 = [NSError hmErrorWithCode:19 description:@"Invalid destination." reason:@"Missing local device prefix." suggestion:0];
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v5 = [v4 substringFromIndex:{objc_msgSend(@"device:", "length")}];
  if ([v5 length])
  {
    v6 = [[NSUUID alloc] initWithUUIDString:v5];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else if (a2)
    {
      *a2 = [NSError hmErrorWithCode:19 description:@"Invalid destination." reason:@"Invalid device identifier" suggestion:0];
    }
  }

  else if (a2)
  {
    [NSError hmErrorWithCode:19 description:@"Invalid destination." reason:@"Missing device identifier." suggestion:0];
    *a2 = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_18:

  return v7;
}

id sub_10000A384()
{
  if (qword_10003B198 != -1)
  {
    dispatch_once(&qword_10003B198, &stru_100030930);
  }

  v1 = qword_10003B1A0;

  return v1;
}

void sub_10000A3D8(id a1)
{
  qword_10003B1A0 = [NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ01234567890._-"];

  _objc_release_x1();
}

void sub_10000A68C(id a1)
{
  v1 = sub_10000A384();
  v2 = [v1 mutableCopy];

  [v2 addCharactersInString:@"%0123456789abcdefABCDEF"];
  v3 = [v2 copy];

  v4 = qword_10003B190;
  qword_10003B190 = v3;
}

void sub_10000BA1C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_begin_catch(a1);

    objc_exception_rethrow();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10000BA6C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_10000BA84(uint64_t a1, sqlite3_stmt *a2)
{
  if (sqlite3_column_type(a2, 0) != 4)
  {
    __assert_rtn("compressedModelData_block_invoke", "HMKTDumpHistory.m", 137, "SQLITE_BLOB == sqlite3_column_type(stmt, 0)");
  }

  if (*(*(*(a1 + 32) + 8) + 40))
  {
    __assert_rtn("compressedModelData_block_invoke", "HMKTDumpHistory.m", 138, "compressedModel == nil");
  }

  v4 = sqlite3_column_blob(a2, 0);
  v5 = [NSData dataWithBytes:v4 length:sqlite3_column_bytes(a2, 0)];
  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  return 0;
}

void sub_10000C070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000C094(uint64_t a1)
{
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  v136 = 0u;
  obj = [*(a1 + 32) entities];
  v109 = [obj countByEnumeratingWithState:&v133 objects:v140 count:16];
  if (v109)
  {
    v106 = *v134;
    do
    {
      v2 = 0;
      do
      {
        if (*v134 != v106)
        {
          v3 = v2;
          objc_enumerationMutation(obj);
          v2 = v3;
        }

        v110 = v2;
        v4 = *(*(&v133 + 1) + 8 * v2);
        v111 = objc_autoreleasePoolPush();
        v5 = [v4 superentity];

        if (!v5)
        {
          v6 = [NSFetchRequest alloc];
          v7 = [v4 name];
          v107 = [v6 initWithEntityName:v7];

          [v107 setReturnsObjectsAsFaults:0];
          v8 = *(a1 + 40);
          v132 = 0;
          v103 = [v8 executeFetchRequest:v107 error:&v132];
          v101 = v132;
          if (v103)
          {
            v130 = 0u;
            v131 = 0u;
            v128 = 0u;
            v129 = 0u;
            v100 = v103;
            v105 = [v100 countByEnumeratingWithState:&v128 objects:v139 count:16];
            if (!v105)
            {
              goto LABEL_61;
            }

            v102 = *v129;
            while (1)
            {
              v112 = 0;
              do
              {
                if (*v129 != v102)
                {
                  objc_enumerationMutation(v100);
                }

                v115 = *(*(&v128 + 1) + 8 * v112);
                v108 = objc_autoreleasePoolPush();
                v9 = *(a1 + 64);
                v10 = sub_10000CB30(*(a1 + 48), v115);
                sub_1000055DC(v9, @"%@ {\n", v11, v12, v13, v14, v15, v16, v10);

                v126 = 0u;
                v127 = 0u;
                v124 = 0u;
                v125 = 0u;
                v17 = *(a1 + 48);
                v18 = [v115 entity];
                v19 = v18;
                if (v17)
                {
                  v20 = [v18 propertiesByName];
                  v21 = [v20 allValues];
                  v113 = [v21 sortedArrayUsingComparator:&stru_100030A58];
                }

                else
                {
                  v113 = 0;
                }

                v116 = [v113 countByEnumeratingWithState:&v124 objects:v138 count:16];
                if (v116)
                {
                  v114 = *v125;
                  do
                  {
                    v22 = 0;
                    do
                    {
                      if (*v125 != v114)
                      {
                        objc_enumerationMutation(v113);
                      }

                      v23 = *(*(&v124 + 1) + 8 * v22);
                      context = objc_autoreleasePoolPush();
                      v24 = [v23 name];
                      v25 = [v115 valueForKey:v24];

                      v26 = v23;
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v27 = v26;
                      }

                      else
                      {
                        v27 = 0;
                      }

                      v28 = v27;

                      if (!v28)
                      {
                        v56 = [v26 userInfo];
                        v117 = [v56 objectForKeyedSubscript:@"HMKTTransformerNameKey"];

                        v57 = *(a1 + 48);
                        if (v117 && v25)
                        {
                          if (*(v57 + 8) == 1)
                          {
                            v25 = v25;
                            goto LABEL_48;
                          }

                          v67 = [HMDValueTransformer valueTransformerForName:v117];
                          v68 = v67;
                          if (v67)
                          {
                            v123 = 0;
                            v66 = [v67 reverseTransformedValue:v25 error:&v123];
                            v69 = v123;

                            if (!v66)
                            {
                              v66 = [NSString stringWithFormat:@"[[%@: %@]]", v117, v69];
                            }

                            v25 = v69;
                          }

                          else
                          {
                            v66 = [NSString stringWithFormat:@"[[%@: transformer not found]]", v117];
                          }

                          v57 = *(a1 + 48);
                        }

                        else
                        {
                          v66 = v25;
                        }

                        v25 = v66;
                        if (v57)
                        {
LABEL_48:
                          v70 = HMFDescribeCollection();
                        }

                        else
                        {
                          v70 = 0;
                        }

                        v71 = [v70 stringByReplacingOccurrencesOfString:@"\n" withString:@"\n    "];

                        v72 = *(a1 + 64);
                        v73 = [v26 name];
                        v80 = v73;
                        if (v117)
                        {
                          sub_1000055DC(v72, @"    %@ (%@) = %@\n", v74, v75, v76, v77, v78, v79, v73);
                        }

                        else
                        {
                          sub_1000055DC(v72, @"    %@ = %@\n", v74, v75, v76, v77, v78, v79, v73);
                        }

                        goto LABEL_53;
                      }

                      if ([v28 isToMany])
                      {
                        v29 = [v25 count] == 0;
                        v30 = *(a1 + 64);
                        v31 = [v26 name];
                        v38 = v31;
                        if (v29)
                        {
                          sub_1000055DC(v30, @"    %@ -> []\n", v32, v33, v34, v35, v36, v37, v31);
                        }

                        else
                        {
                          sub_1000055DC(v30, @"    %@ -> [\n", v32, v33, v34, v35, v36, v37, v31);

                          v121 = 0u;
                          v122 = 0u;
                          v119 = 0u;
                          v120 = 0u;
                          v25 = v25;
                          v39 = [v25 countByEnumeratingWithState:&v119 objects:v137 count:16];
                          if (v39)
                          {
                            v40 = *v120;
                            do
                            {
                              for (i = 0; i != v39; i = i + 1)
                              {
                                if (*v120 != v40)
                                {
                                  objc_enumerationMutation(v25);
                                }

                                v42 = *(a1 + 64);
                                v43 = sub_10000CB30(*(a1 + 48), *(*(&v119 + 1) + 8 * i));
                                sub_1000055DC(v42, @"        %@\n", v44, v45, v46, v47, v48, v49, v43);
                              }

                              v39 = [v25 countByEnumeratingWithState:&v119 objects:v137 count:16];
                            }

                            while (v39);
                          }

                          sub_1000055DC(*(a1 + 64), @"    ]\n", v50, v51, v52, v53, v54, v55, v98);
                        }
                      }

                      else
                      {
                        v58 = *(a1 + 64);
                        v59 = [v26 name];
                        v99 = sub_10000CB30(*(a1 + 48), v25);
                        sub_1000055DC(v58, @"    %@ -> %@\n", v60, v61, v62, v63, v64, v65, v59);
                      }

LABEL_53:

                      objc_autoreleasePoolPop(context);
                      v22 = v22 + 1;
                    }

                    while (v22 != v116);
                    v81 = [v113 countByEnumeratingWithState:&v124 objects:v138 count:16];
                    v116 = v81;
                  }

                  while (v81);
                }

                sub_1000055DC(*(a1 + 64), @"}\n\n", v82, v83, v84, v85, v86, v87, v97);
                objc_autoreleasePoolPop(v108);
                v112 = v112 + 1;
              }

              while (v112 != v105);
              v88 = [v100 countByEnumeratingWithState:&v128 objects:v139 count:16];
              v105 = v88;
              if (!v88)
              {
LABEL_61:

                goto LABEL_63;
              }
            }
          }

          v89 = __stderrp;
          v90 = [v4 name];
          sub_1000055DC(v89, @"Failed to fetch %@ objects: %@\n", v91, v92, v93, v94, v95, v96, v90);

          *(*(*(a1 + 56) + 8) + 24) = 2;
LABEL_63:
        }

        objc_autoreleasePoolPop(v111);
        v2 = v110 + 1;
      }

      while ((v110 + 1) != v109);
      v109 = [obj countByEnumeratingWithState:&v133 objects:v140 count:16];
    }

    while (v109);
  }
}

void sub_10000C9E0(id a1, NSEntityDescription *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [(NSEntityDescription *)v4 setManagedObjectClassName:v6];

  v8 = [(NSEntityDescription *)v4 attributesByName];

  v7 = [v8 allValues];
  [v7 hmf_enumerateWithAutoreleasePoolUsingBlock:&stru_100030A18];
}

void sub_10000CA80(id a1, NSAttributeDescription *a2, unint64_t a3, BOOL *a4)
{
  v7 = a2;
  if ([(NSAttributeDescription *)v7 attributeType]== 1800)
  {
    v4 = [(NSAttributeDescription *)v7 userInfo];
    v5 = [v4 mutableCopy];

    v6 = [(NSAttributeDescription *)v7 valueTransformerName];
    [v5 setObject:v6 forKeyedSubscript:@"HMKTTransformerNameKey"];

    [(NSAttributeDescription *)v7 setUserInfo:v5];
    [(NSAttributeDescription *)v7 setValueTransformerName:@"HMDIdentityTransformer"];
  }
}

id sub_10000CB30(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 entity];
    v8 = [v7 attributesByName];
    v9 = [v8 objectForKeyedSubscript:@"modelID"];
    if (v9)
    {
      v10 = [v4 valueForKey:@"modelID"];
    }

    else
    {
      v10 = 0;
    }

    v11 = [v4 objectID];
    v5 = sub_10000CC24(v11, v10);

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

id sub_10000CC24(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_autoreleasePoolPush();
  v6 = [v3 URIRepresentation];
  v7 = [v6 path];
  v8 = [v7 componentsSeparatedByString:@"/"];

  v9 = [v8 objectAtIndexedSubscript:1];
  v10 = [v8 objectAtIndexedSubscript:2];
  v11 = v10;
  if (v4)
  {
    [NSString stringWithFormat:@"<%@/%@/%@>", v9, v10, v4];
  }

  else
  {
    [NSString stringWithFormat:@"<%@/%@>", v9, v10, v14];
  }
  v12 = ;

  objc_autoreleasePoolPop(v5);

  return v12;
}

int64_t sub_10000CD48(id a1, NSPropertyDescription *a2, NSPropertyDescription *a3)
{
  v4 = a3;
  v5 = [(NSPropertyDescription *)a2 name];
  v6 = [(NSPropertyDescription *)v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t sub_10000D26C(uint64_t a1, uint64_t a2, void *a3)
{
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = isKindOfClass;
  if (a3 && (isKindOfClass & 1) == 0)
  {
    v7 = [NSString stringWithFormat:@"Expected %@", a2];
    *a3 = [NSError hmfErrorWithCode:3 reason:v7];
  }

  return v6 & 1;
}

void sub_10000DD94()
{
  v0 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"class methods are not supported when adapting NSValueTransformers" userInfo:0];
  objc_exception_throw(v0);
}

void sub_10000DE10(id a1)
{
  v1 = objc_alloc_init(NSCache);
  v2 = qword_10003B1A8;
  qword_10003B1A8 = v1;

  v3 = objc_opt_class();
  v5 = NSStringFromClass(v3);
  v4 = [v5 stringByAppendingString:@".adaptersByName"];
  [qword_10003B1A8 setName:v4];
}

id sub_10000DFC0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_self() valueTransformerForName:v2];
  if (v3)
  {
    v4 = v3;

    return v4;
  }

  else
  {
    v6 = _HMFPreconditionFailureWithFormat();
    return [(HMDValueTransformer *)v6 encodeValue:v7 withTransformerNamed:v8 error:v9, v10];
  }
}

void sub_10000EFEC(id a1)
{
  qword_10003B1C0 = HMFCreateOSLogHandle();

  _objc_release_x1();
}

void sub_100010D10(id a1)
{
  qword_10003B1D0 = HMFCreateOSLogHandle();

  _objc_release_x1();
}

void sub_10001201C(id a1)
{
  qword_10003B1D8 = CFArrayGetTypeID();
  qword_10003B1E0 = CFDictionaryGetTypeID();
  qword_10003B1E8 = CFNullGetTypeID();
  qword_10003B1F0 = CFBooleanGetTypeID();
  qword_10003B1F8 = CFStringGetTypeID();
  qword_10003B200 = CFNumberGetTypeID();
  qword_10003B208 = CFDataGetTypeID();
  qword_10003B210 = CFDateGetTypeID();
}

void sub_100012FCC(id a1)
{
  qword_10003B230 = [[NSUUID alloc] initWithUUIDString:@"297A1FDB-8A3E-443F-A8A8-1F3360785587"];

  _objc_release_x1();
}

void sub_100013100(id a1)
{
  qword_10003B228 = HMFCreateOSLogHandle();

  _objc_release_x1();
}

void sub_10001375C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100013774(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = a3;
  if (![v11 isEqual:@"$top"])
  {
    v9 = [qword_10003B258 objectForKeyedSubscript:v11];
    v10 = [v7 isEqual:v9];

    if (v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_5:
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

LABEL_6:
}

void sub_10001385C(id a1)
{
  v1 = [NSKeyedArchiver archivedDataWithRootObject:0];
  if (!v1)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v6 = v1;
  qword_10003B250 = [v1 length];
  v2 = [NSPropertyListSerialization propertyListWithData:v6 options:0 format:0 error:0];
  v3 = qword_10003B258;
  qword_10003B258 = v2;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_7:
    v4 = _HMFPreconditionFailure();
    +[(HMDSecureUnarchiveFromDataTransformer *)v4];
    return;
  }
}

void sub_1000139C8(id a1)
{
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v3[7] = objc_opt_class();
  v3[8] = objc_opt_class();
  v3[9] = objc_opt_class();
  v3[10] = objc_opt_class();
  v3[11] = objc_opt_class();
  v3[12] = objc_opt_class();
  v3[13] = objc_opt_class();
  v3[14] = objc_opt_class();
  v3[15] = objc_opt_class();
  v3[16] = objc_opt_class();
  v3[17] = objc_opt_class();
  v3[18] = objc_opt_class();
  v3[19] = objc_opt_class();
  v3[20] = objc_opt_class();
  v3[21] = objc_opt_class();
  v3[22] = objc_opt_class();
  v3[23] = objc_opt_class();
  v3[24] = objc_opt_class();
  v1 = [NSArray arrayWithObjects:v3 count:25];
  v2 = qword_10003B248;
  qword_10003B248 = v1;
}

void sub_100013F0C(uint64_t a1, void *a2)
{
  [a2 point];
  v4 = v3;
  v5 = *(a1 + 32);
  *&v6 = v6;
  v7 = [NSNumber numberWithFloat:v6];
  [v5 addObject:v7];

  v8 = *(a1 + 32);
  *&v9 = v4;
  v10 = [NSNumber numberWithFloat:v9];
  [v8 addObject:v10];
}

void sub_1000141BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000141D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000141EC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  v8 = [HMDCoreDataTransformerHMCameraActivityZone valueFromOPACK:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    [*(a1 + 32) addObject:v8];
  }

  else
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v9 = [NSString stringWithFormat:@"Failed to create HMCameraActivityZone: %@", v6];
      v10 = [NSError hmfErrorWithCode:15 reason:v9];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    *a4 = 1;
  }
}

void sub_100014450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100014468(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = *(*(a1 + 40) + 8);
  obj = *(v6 + 40);
  v7 = [HMDCoreDataTransformerHMCameraActivityZone OPACKFromValue:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (v7)
  {
    [*(a1 + 32) addObject:v7];
  }

  else
  {
    v8 = [NSString stringWithFormat:@"Failed to opack HMCameraActivityZone: %@", v5];
    v9 = [NSError hmfErrorWithCode:15 reason:v8];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a3 = 1;
  }
}

void sub_100014BF0(id a1)
{
  qword_10003B270 = HMFCreateOSLogHandle();

  _objc_release_x1();
}

void sub_100015018(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000155B4;
  block[3] = &unk_100030C68;
  block[4] = v5;
  v9 = v4;
  v10 = v3;
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_1000150E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = a2;
  if (!a2)
  {
    v3 = *(a1 + 32);
  }

  v6 = v3;
  v4 = a2;
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  (*(v2 + 16))(v2, v5);
}

void sub_100015194(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 40);
  v5 = a2;
  if (!a2)
  {
    v5 = *(a1 + 32);
  }

  v10[0] = v5;
  v6 = a3;
  if (!a3)
  {
    v6 = *(a1 + 32);
  }

  v10[1] = v6;
  v7 = a3;
  v8 = a2;
  v9 = [NSArray arrayWithObjects:v10 count:2];
  (*(v4 + 16))(v4, v9);
}

void sub_100015264(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  if (!a2)
  {
    v6 = *(a1 + 32);
  }

  v7 = *(a1 + 40);
  v14[0] = v6;
  v8 = a3;
  if (!a3)
  {
    v8 = *(a1 + 32);
  }

  v14[1] = v8;
  v9 = a4;
  if (!a4)
  {
    v9 = *(a1 + 32);
  }

  v14[2] = v9;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = [NSArray arrayWithObjects:v14 count:3];
  (*(v7 + 16))(v7, v13);
}

void sub_10001535C(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  if (!a2)
  {
    v8 = *(a1 + 32);
  }

  v9 = *(a1 + 40);
  v18[0] = v8;
  v10 = a3;
  if (!a3)
  {
    v10 = *(a1 + 32);
  }

  v18[1] = v10;
  v11 = a4;
  if (!a4)
  {
    v11 = *(a1 + 32);
  }

  v18[2] = v11;
  v12 = a5;
  if (!a5)
  {
    v12 = *(a1 + 32);
  }

  v18[3] = v12;
  v13 = a5;
  v14 = a4;
  v15 = a3;
  v16 = a2;
  v17 = [NSArray arrayWithObjects:v18 count:4];
  (*(v9 + 16))(v9, v17);
}

void sub_100015474(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a2;
  if (!a2)
  {
    v10 = *(a1 + 32);
  }

  v11 = *(a1 + 40);
  v22[0] = v10;
  v12 = a3;
  if (!a3)
  {
    v12 = *(a1 + 32);
  }

  v22[1] = v12;
  v13 = a4;
  if (!a4)
  {
    v13 = *(a1 + 32);
  }

  v22[2] = v13;
  v14 = a5;
  if (!a5)
  {
    v14 = *(a1 + 32);
  }

  v22[3] = v14;
  v15 = a6;
  if (!a6)
  {
    v15 = *(a1 + 32);
  }

  v22[4] = v15;
  v16 = a6;
  v17 = a5;
  v18 = a4;
  v19 = a3;
  v20 = a2;
  v21 = [NSArray arrayWithObjects:v22 count:5];
  (*(v11 + 16))(v11, v21);
}

void sub_1000155B4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) isValid];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v6)
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v12 = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Forwarding block from server for key %@.", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v9 = [*(*(a1 + 32) + 16) remoteObjectProxy];
    [v9 _fireActualBlockWithArguments:*(a1 + 48) forKey:*(a1 + 40)];
  }

  else
  {
    if (v6)
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 40);
      v12 = 138543618;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Dropping request to forward block to remote for key %@, connection is invalid.", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }
}

void sub_1000159B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000159C8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000159E0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

void sub_100015B28(uint64_t a1)
{
  if ([*(*(a1 + 32) + 16) isValid])
  {
    v7 = [*(*(a1 + 32) + 16) remoteObjectProxy];
    [v7 _removeActualBlockForKey:*(a1 + 40)];
  }

  else
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 40);
      *buf = 138543618;
      v9 = v5;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}@Dropping request to remove remote block for key %@, connection is invalid.", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
  }
}

void sub_10001616C(id *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v3 allKeys], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "containsObject:", @"argument-is-block"), v4, v5))
  {
    v6 = [v3 objectForKey:@"uniqueKey"];
    v7 = [v3 objectForKey:@"encoding"];
    v8 = +[NSMethodSignature signatureWithObjCTypes:](NSMethodSignature, "signatureWithObjCTypes:", [v7 UTF8String]);
    v9 = [*(a1[4] + 65) forwardingBlockWithArgumentCount:objc_msgSend(v8 forKey:{"numberOfArguments") - 1, v6}];
    if (v9)
    {
      [*(a1[4] + 65) addBlockNoCopy:v9 forKey:v6];
      v10 = objc_autoreleasePoolPush();
      v11 = a1[4];
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v13 = v20 = v8;
        v14 = [*(a1[4] + 65) count];
        *buf = 138543874;
        v23 = v13;
        v24 = 2048;
        v25 = v14;
        v26 = 2112;
        v27 = v6;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@Added block (%lu) on server for key %@.", buf, 0x20u);

        v8 = v20;
      }

      objc_autoreleasePoolPop(v10);
      [a1[5] addObject:v9];
      objc_setAssociatedObject(v9, &unk_10003B278, v6, 0x301);
      [a1[6] addObject:v9];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = a1[4];
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v18 = v21 = v8;
        v19 = [*(a1[4] + 65) count];
        *buf = 138543874;
        v23 = v18;
        v24 = 2048;
        v25 = v19;
        v26 = 2112;
        v27 = v6;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%{public}@Failed to construct dummy block (%lu) on client for key %@.", buf, 0x20u);

        v8 = v21;
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    [a1[6] addObject:v3];
  }
}

void sub_10001687C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100016C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

id sub_100016C90(uint64_t a1, void *a2)
{
  v3 = [a2 copy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return [HMCAMDEmbeddedDeviceService confirmSemaphoreAndSignal:v6];
}

id sub_100016CE8(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 copy];
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = [v5 copy];
  v10 = *(a1[6] + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = a1[4];

  return [HMCAMDEmbeddedDeviceService confirmSemaphoreAndSignal:v12];
}

void sub_100016E34(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%{public}@XPC communication error: %@.", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v3);
  }
}

void sub_1000174B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}@Service invalidated, it may have crashed.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  v3[34] = 0;
  v6 = *(v3 + 57);
  if (v6)
  {
    (*(v6 + 16))();
  }

  v7 = dispatch_time(0, 1000000000 * *(v3 + 25));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017AF4;
  block[3] = &unk_100030F08;
  block[4] = v3;
  dispatch_after(v7, &_dispatch_main_q, block);
}

void sub_100017640(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_autoreleasePoolPush();
  v3 = WeakRetained;
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(v3 + 17) processIdentifier];
    *buf = 138543618;
    v15 = v5;
    v16 = 1024;
    v17 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}@Service interrupted, it may have crashed, pid %u.", buf, 0x12u);
  }

  objc_autoreleasePoolPop(v2);
  v3[34] = 0;
  v7 = *(v3 + 49);
  if (v7)
  {
    (*(v7 + 16))();
  }

  v8 = objc_autoreleasePoolPush();
  v9 = v3;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "%{public}@Will attempt to re-establish communication after 10 seconds.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  v12 = dispatch_time(0, 10000000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017858;
  block[3] = &unk_100030F08;
  block[4] = v9;
  dispatch_after(v12, &_dispatch_main_q, block);
}

void sub_100017858(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}@Attempting to re-establish communication.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  if ([*(a1 + 32) testCommunication])
  {
    *(*(a1 + 32) + 34) = 1;
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@Successfully re-established communication.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v17 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@Failed to re-establish communication.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v14 = dispatch_time(0, 1000000000 * *(*(a1 + 32) + 25));
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100017AEC;
    block[3] = &unk_100030F08;
    block[4] = *(a1 + 32);
    dispatch_after(v14, &_dispatch_main_q, block);
  }
}

void sub_100017BB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_getAssociatedObject(v3, &unk_10003B278);
  [*(*(a1 + 32) + 65) removeBlock:v3];
  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 32);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [*(*(a1 + 32) + 65) count];
    v10 = 138543874;
    v11 = v8;
    v12 = 2048;
    v13 = v9;
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%{public}@Removed block (%lu) on server for key %@.", &v10, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
}

void sub_100017EF4(id a1)
{
  qword_10003B288 = HMFCreateOSLogHandle();

  _objc_release_x1();
}

void sub_100018B50(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = v1;
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%{public}@Preparing homed for the diagnostic extension.", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    v6 = dispatch_group_create();
    dispatch_group_enter(v6);
    v7 = v3[1];
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v17 = sub_10001D7A0;
    v18 = &unk_100030EE0;
    v19 = v3;
    v8 = v6;
    v20 = v8;
    [v7 prepareForDiagnosticExtensionWithCompletion:&buf];
    v9 = dispatch_time(0, 120000000000);
    if (dispatch_group_wait(v8, v9))
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v3;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        v14 = 138543362;
        v15 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@Timed out preparing.", &v14, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
    }
  }
}

void sub_100018D60(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = +[NSDate now];
    v9 = objc_autoreleasePoolPush();
    v10 = a1;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v12;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%{public}@Phase Started: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v6[2](v6);
    v13 = +[NSDate now];
    [v13 timeIntervalSinceDate:v8];
    v15 = v14;

    v16 = objc_autoreleasePoolPush();
    v17 = v10;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = 138543874;
      v21 = v19;
      v22 = 2112;
      v23 = v5;
      v24 = 2048;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%{public}@Phase Finished: %@, elapsed: %fs", &v20, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    objc_autoreleasePoolPop(v7);
  }
}

void sub_100018F78(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    objc_opt_self();
    objc_opt_self();
    v3 = [NSURL fileURLWithPath:@"/var/mobile/Library/Logs/CrashReporter"];
    v4 = [v3 URLByAppendingPathComponent:@"DiagnosticLogs"];

    objc_opt_self();
    v5 = [NSRegularExpression regularExpressionWithPattern:@"HomeKit.(.)*.log(.gz)?" options:1 error:0];
    v6 = [v2 filesInDir:v4 matchingPattern:v5 excludingPattern:0];
    v7 = [v6 mutableCopy];

    [v7 sortUsingComparator:&stru_100030F98];
    v8 = [v7 count];
    if (v8 >= 5)
    {
      v9 = v8 - 5;
    }

    else
    {
      v9 = 0;
    }

    if (v8 >= 5)
    {
      v10 = 5;
    }

    else
    {
      v10 = v8;
    }

    v11 = [v7 subarrayWithRange:{v9, v10}];

    [v1 addObjectsFromArray:v11];
  }

  else
  {
    v11 = 0;
    [v1 addObjectsFromArray:0];
  }
}

void sub_1000190B8(uint64_t a1)
{
  v32 = *(a1 + 32);
  v34 = *(a1 + 40);
  if (v34)
  {
    v31 = [NSString stringWithFormat:@"_(homed)_.*memgraph$"];
    v39 = [NSRegularExpression regularExpressionWithPattern:"regularExpressionWithPattern:options:error:" options:? error:?];
    v1 = MREExceptionTypeToString();
    v51[0] = v1;
    v2 = MREExceptionTypeToString();
    v51[1] = v2;
    v3 = MREExceptionTypeToString();
    v51[2] = v3;
    v4 = MREExceptionTypeToString();
    v51[3] = v4;
    v38 = [NSArray arrayWithObjects:v51 count:4];

    v5 = +[NSMutableArray array];
    v35 = +[NSMutableArray array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = +[RMECacheEnumerator getLogPathsSortedByTime];
    v6 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v43;
      v9 = v41;
      v10 = &unk_100030F58;
      v11 = &MREExceptionTypeToString_ptr;
      v33 = v5;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v43 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v42 + 1) + 8 * i);
          v14 = [v39 firstMatchInString:v13 options:0 range:{0, objc_msgSend(v13, "length")}];

          if (v14)
          {
            v40[0] = _NSConcreteStackBlock;
            v40[1] = 3221225472;
            v41[0] = sub_10001D724;
            v41[1] = v10;
            v41[2] = v13;
            v15 = [v38 na_any:v40];
            v16 = [v5 count];
            if ((v15 & 1) != 0 || (v17 = v35, !v16))
            {
              v18 = v10;
              v19 = v7;
              v20 = v9;
              v21 = v8;
              v22 = objc_autoreleasePoolPush();
              v23 = v34;
              v24 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
              {
                v25 = HMFGetLogIdentifier();
                *buf = 138543618;
                v47 = v25;
                v48 = 2112;
                v49 = v13;
                _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "%{public}@Prioritizing %@", buf, 0x16u);

                v5 = v33;
              }

              objc_autoreleasePoolPop(v22);
              v17 = v5;
              v8 = v21;
              v9 = v20;
              v7 = v19;
              v10 = v18;
              v11 = &MREExceptionTypeToString_ptr;
            }

            v26 = [v11[164] attachmentWithPath:v13];
            [v17 addObject:v26];
          }
        }

        v7 = [obj countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v7);
    }

    v27 = [v5 arrayByAddingObjectsFromArray:v35];
    v28 = [v27 count];
    if (v28 >= 5)
    {
      v29 = 5;
    }

    else
    {
      v29 = v28;
    }

    v30 = [v27 subarrayWithRange:{0, v29}];
    obja = [v30 copy];

    [v32 addObjectsFromArray:obja];
  }

  else
  {
    obja = 0;
    [v32 addObjectsFromArray:0];
  }
}

void sub_1000194D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v3 = +[NSFileManager defaultManager];
    v4 = [v3 temporaryDirectory];
    v5 = [v4 URLByAppendingPathComponent:@"homed-ddt.txt"];

    v7 = sub_10001BBD4(v1, @"ddt homed", v5);

    v6 = v7;
    if (v7)
    {
      [*(a1 + 40) addObject:v7];
      v6 = v7;
    }
  }

  else
  {
    v6 = 0;
  }
}

uint64_t sub_1000195A4(uint64_t a1)
{
  v2 = sub_10001BB1C(*(a1 + 32), 1);
  if (v2)
  {
    [*(a1 + 40) addObject:v2];
  }

  return _objc_release_x1();
}

void sub_100019608(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (!v1)
  {
    v151 = 0;
    [v2 addObjectsFromArray:0];
    goto LABEL_68;
  }

  v3 = +[NSFileManager defaultManager];
  if (!v3)
  {
    v101 = objc_autoreleasePoolPush();
    v102 = v1;
    v103 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      v104 = HMFGetLogIdentifier();
      *v169 = 138543362;
      *&v169[4] = v104;
      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "%{public}@Failed to get NSFileManager", v169, 0xCu);
    }

    objc_autoreleasePoolPop(v101);
    v100 = 0;
    goto LABEL_65;
  }

  v146 = v1;
  v4 = getuid();
  v5 = [NSString stringWithUTF8String:getpwuid(v4)->pw_dir];
  v6 = [NSURL fileURLWithPath:v5];
  v7 = [v6 URLByAppendingPathComponent:@"Library"];

  v8 = [v7 URLByAppendingPathComponent:@"homed"];

  if (!v8)
  {
LABEL_63:
    v100 = 0;
    goto LABEL_64;
  }

  v154 = 0;
  v9 = [v8 path];
  v10 = [v3 fileExistsAtPath:v9 isDirectory:&v154];

  if ((v10 & 1) == 0)
  {
    v105 = objc_autoreleasePoolPush();
    v106 = v146;
    v107 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
    {
      v108 = HMFGetLogIdentifier();
      *v169 = 138543618;
      *&v169[4] = v108;
      v170 = 2112;
      v171 = v8;
      v109 = "%{public}@Database path doesn't exist: '%@'";
      v110 = v107;
      v111 = OS_LOG_TYPE_INFO;
LABEL_61:
      _os_log_impl(&_mh_execute_header, v110, v111, v109, v169, 0x16u);
    }

LABEL_62:

    objc_autoreleasePoolPop(v105);
    goto LABEL_63;
  }

  if ((v154 & 1) == 0)
  {
    v105 = objc_autoreleasePoolPush();
    v106 = v146;
    v107 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      v108 = HMFGetLogIdentifier();
      *v169 = 138543618;
      *&v169[4] = v108;
      v170 = 2112;
      v171 = v8;
      v109 = "%{public}@Database path is not a directory: '%@'";
      v110 = v107;
      v111 = OS_LOG_TYPE_ERROR;
      goto LABEL_61;
    }

    goto LABEL_62;
  }

  v153 = 0;
  v11 = [v3 URLForDirectory:99 inDomain:1 appropriateForURL:v8 create:1 error:&v153];
  v12 = v153;
  if (!v11)
  {
    v113 = objc_autoreleasePoolPush();
    v114 = v146;
    v115 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
    {
      v116 = HMFGetLogIdentifier();
      *v169 = 138543874;
      *&v169[4] = v116;
      v170 = 2112;
      v171 = v8;
      v172 = 2112;
      v173 = v12;
      _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_ERROR, "%{public}@Failed to create temporary directory %@: %@", v169, 0x20u);
    }

    objc_autoreleasePoolPop(v113);
    v100 = 0;
    v15 = v12;
    goto LABEL_83;
  }

  v13 = [v11 URLByAppendingPathComponent:@"homed-database"];
  v152 = v12;
  v14 = [v3 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:0 error:&v152];
  v15 = v152;

  if ((v14 & 1) == 0)
  {
    v117 = objc_autoreleasePoolPush();
    v118 = v146;
    v119 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
    {
      v120 = HMFGetLogIdentifier();
      *v169 = 138543874;
      *&v169[4] = v120;
      v170 = 2112;
      v171 = v13;
      v172 = 2112;
      v173 = v15;
      _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_ERROR, "%{public}@Failed to create target directory %@: %@", v169, 0x20u);
    }

    objc_autoreleasePoolPop(v117);
    v100 = 0;
    goto LABEL_82;
  }

  v131 = v15;
  v16 = v3;
  v17 = v8;
  v132 = v13;
  v150 = v13;
  v160[0] = _NSConcreteStackBlock;
  v160[1] = 3221225472;
  v160[2] = sub_10001D604;
  v160[3] = &unk_100030FC0;
  v160[4] = v146;
  v145 = v16;
  v129 = objc_retainBlock(v160);
  v130 = v17;
  v18 = [v16 enumeratorAtURL:v17 includingPropertiesForKeys:0 options:7 errorHandler:?];
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  v159 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v156 objects:v169 count:16];
  v147 = v19;
  if (!v20)
  {

    goto LABEL_78;
  }

  v21 = v20;
  v125 = v11;
  v126 = v8;
  v127 = v3;
  v128 = v2;
  v22 = 0;
  v23 = *v157;
  v24 = v146;
  v25 = v19;
  v148 = *v157;
  do
  {
    v26 = 0;
    v149 = v21;
    do
    {
      if (*v157 != v23)
      {
        objc_enumerationMutation(v25);
      }

      v27 = *(*(&v156 + 1) + 8 * v26);
      v28 = objc_autoreleasePoolPush();
      v29 = [v27 pathExtension];
      v30 = [v29 hasPrefix:@"sqlite"];

      if (v30)
      {
        v31 = [v27 lastPathComponent];
        if ([v31 hasPrefix:@"datastore."])
        {
          goto LABEL_17;
        }

        v32 = [v27 lastPathComponent];
        if ([v32 hasPrefix:@"core"])
        {

LABEL_17:
        }

        else
        {
          v91 = [v27 lastPathComponent];
          v92 = [v91 hasPrefix:@"eventstore"];

          if ((v92 & 1) == 0)
          {
            v23 = v148;
            v21 = v149;
            goto LABEL_50;
          }
        }

        v33 = [v27 lastPathComponent];
        v34 = [v150 URLByAppendingPathComponent:v33];

        if (!v34)
        {
          v82 = objc_autoreleasePoolPush();
          v83 = v24;
          v84 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            v85 = HMFGetLogIdentifier();
            v86 = [v27 lastPathComponent];
            *buf = 138543874;
            v162 = v85;
            v163 = 2112;
            v164 = v150;
            v165 = 2112;
            v166 = v86;
            _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_ERROR, "%{public}@Failed to create temporary file URL: '%@' '%@'", buf, 0x20u);

            v25 = v147;
          }

          objc_autoreleasePoolPop(v82);
          v23 = v148;
          v21 = v149;
          goto LABEL_49;
        }

        v155 = 0;
        v35 = [v145 copyItemAtURL:v27 toURL:v34 error:&v155];
        v36 = v155;
        if ((v35 & 1) == 0)
        {
          v87 = objc_autoreleasePoolPush();
          v88 = v24;
          v89 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
          {
            v90 = HMFGetLogIdentifier();
            *buf = 138544130;
            v162 = v90;
            v163 = 2112;
            v164 = v27;
            v165 = 2112;
            v166 = v34;
            v167 = 2112;
            v168 = v36;
            _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_ERROR, "%{public}@Failed to copy '%@' to '%@': %@", buf, 0x2Au);

            v24 = v146;
          }

          objc_autoreleasePoolPop(v87);
          goto LABEL_48;
        }

        if ((v22 & 1) == 0)
        {
          v37 = objc_autoreleasePoolPush();
          v38 = v24;
          v39 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            v40 = HMFGetLogIdentifier();
            *buf = 138543618;
            v162 = v40;
            v163 = 2112;
            v164 = v150;
            _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_INFO, "%{public}@Copying database files to '%@'", buf, 0x16u);

            v24 = v146;
          }

          objc_autoreleasePoolPop(v37);
        }

        v41 = objc_autoreleasePoolPush();
        v42 = v24;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          v44 = HMFGetLogIdentifier();
          *buf = 138543618;
          v162 = v44;
          v163 = 2112;
          v164 = v27;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_INFO, "%{public}@Copied '%@'", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v41);
        v45 = v27;
        v46 = v34;
        v47 = [v45 pathExtension];
        v48 = [v47 isEqualToString:@"sqlite"];

        if (v48)
        {
          v49 = [v45 absoluteString];
          v50 = [v49 lastPathComponent];
          v51 = [v50 hasPrefix:@"core"];

          if (v51)
          {
            v141 = v45;
            v142 = v36;
            v52 = v45;
            v140 = v46;
            v53 = v46;
            context = objc_autoreleasePoolPush();
            v134 = +[NSMutableArray array];
            v54 = [v52 path];
            [v134 addObject:v54];

            v143 = v53;
            v136 = [v53 path];
            v133 = [v136 stringByDeletingLastPathComponent];
            v144 = v52;
            v55 = [v52 lastPathComponent];
            v56 = [v55 pathComponents];
            v57 = [v56 firstObject];
            v58 = [v57 stringByDeletingPathExtension];
            v59 = [NSString stringWithFormat:@"%@/%@-dumpobjects.txt", v133, v58];
            [v134 addObject:v59];

            v60 = objc_alloc_init(HMKTDumpObjects);
            v61 = [(HMKTDumpObjects *)v60 main:v134];

            v62 = objc_autoreleasePoolPush();
            v63 = v42;
            v64 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
            {
              v65 = HMFGetLogIdentifier();
              v66 = [NSNumber numberWithInt:v61];
              *buf = 138543874;
              v162 = v65;
              v163 = 2112;
              v164 = v134;
              v165 = 2112;
              v166 = v66;
              _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "%{public}@dumpObject for [%@] finished with %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v62);
            objc_autoreleasePoolPop(context);
            contexta = objc_autoreleasePoolPush();
            v67 = +[NSMutableArray array];
            v68 = [v144 path];
            [v67 addObject:v68];

            v135 = [v143 path];
            v69 = [v135 stringByDeletingLastPathComponent];
            v70 = [v144 lastPathComponent];
            v71 = [v70 pathComponents];
            v72 = [v71 firstObject];
            [v72 stringByDeletingPathExtension];
            v73 = v137 = v63;
            v74 = [NSString stringWithFormat:@"%@/%@-dumphistory.txt", v69, v73];
            [v67 addObject:v74];

            v75 = objc_alloc_init(HMKTDumpHistory);
            v76 = [(HMKTDumpHistory *)v75 main:v67];

            v77 = objc_autoreleasePoolPush();
            v78 = v137;
            v79 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
            {
              v80 = HMFGetLogIdentifier();
              v81 = [NSNumber numberWithInt:v76];
              *buf = 138543874;
              v162 = v80;
              v163 = 2112;
              v164 = v67;
              v165 = 2112;
              v166 = v81;
              _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "%{public}@dumpHistory for [%@] finished with %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(v77);
            objc_autoreleasePoolPop(contexta);

            v24 = v146;
            v45 = v141;
            v36 = v142;
            v46 = v140;
LABEL_47:

            v22 = 1;
LABEL_48:
            v25 = v147;
            v23 = v148;
            v21 = v149;

LABEL_49:
            goto LABEL_50;
          }

          v93 = objc_autoreleasePoolPush();
          v94 = v42;
          v95 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            v96 = HMFGetLogIdentifier();
            *buf = 138543618;
            v162 = v96;
            v163 = 2112;
            v164 = v45;
            v97 = v95;
            v98 = "%{public}@%@ is not core data database file. Skipping dumpobjects on it.";
LABEL_45:
            _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_ERROR, v98, buf, 0x16u);
          }
        }

        else
        {
          v93 = objc_autoreleasePoolPush();
          v94 = v42;
          v95 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
          {
            v96 = HMFGetLogIdentifier();
            *buf = 138543618;
            v162 = v96;
            v163 = 2112;
            v164 = v45;
            v97 = v95;
            v98 = "%{public}@%@ is not sqlite file";
            goto LABEL_45;
          }
        }

        objc_autoreleasePoolPop(v93);
        v24 = v146;
        goto LABEL_47;
      }

LABEL_50:
      objc_autoreleasePoolPop(v28);
      v26 = v26 + 1;
    }

    while (v21 != v26);
    v21 = [v25 countByEnumeratingWithState:&v156 objects:v169 count:16];
  }

  while (v21);

  v3 = v127;
  v2 = v128;
  v11 = v125;
  v8 = v126;
  if (v22)
  {

    v99 = [[DEAttachmentItem alloc] initWithPathURL:v150];
    [v99 setShouldCompress:&__kCFBooleanTrue];
    [v99 setDeleteOnAttach:&__kCFBooleanTrue];
    *v169 = v99;
    v100 = [NSArray arrayWithObjects:v169 count:1];

    goto LABEL_81;
  }

LABEL_78:
  v121 = objc_autoreleasePoolPush();
  v122 = v146;
  v123 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
  {
    v124 = HMFGetLogIdentifier();
    *buf = 138543362;
    v162 = v124;
    _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_INFO, "%{public}@No files copied", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v121);
  v100 = 0;
LABEL_81:
  v15 = v131;
  v13 = v132;
LABEL_82:

LABEL_83:
LABEL_64:

LABEL_65:
  v112 = &__NSArray0__struct;
  if (v100)
  {
    v112 = v100;
  }

  v151 = v112;

  [v2 addObjectsFromArray:v151];
LABEL_68:
}

void sub_10001A6B0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v51 = *(a1 + 32);
  if (v1)
  {
    v2 = +[NSUUID UUID];
    objc_opt_class();
    objc_opt_self();
    if (qword_10003B290 != -1)
    {
      dispatch_once(&qword_10003B290, &stru_100031000);
    }

    v3 = qword_10003B298;
    v4 = +[NSDate now];
    v5 = [v3 stringFromDate:v4];

    v6 = +[NSFileManager defaultManager];
    v7 = [v6 temporaryDirectory];
    v50 = v5;
    v8 = [NSString stringWithFormat:@"HK_Network_Diagnostics_%@", v5];
    v9 = [v7 URLByAppendingPathComponent:v8];

    v10 = [HMFNetworkDiagnosticCollector alloc];
    v12 = [v10 initWithQueue:{objc_getProperty(v1, v11, 32, 1)}];
    v13 = objc_autoreleasePoolPush();
    v14 = v1;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      *&buf[4] = v16;
      *&buf[12] = 2112;
      *&buf[14] = v2;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%{public}@Starting network diagnostics session: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [HMFDispatchContext alloc];
    v19 = [v17 initWithQueue:{objc_getProperty(v14, v18, 32, 1)}];
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_10001C630;
    v69 = &unk_100031078;
    v70 = v14;
    v20 = v2;
    v71 = v20;
    v21 = v9;
    v72 = v21;
    v22 = v12;
    v73 = v22;
    v23 = [HMFFuture inContext:v19 perform:buf];

    location = 0;
    v57 = 0;
    v49 = v23;
    [v23 waitForResult:&v57 orError:&location withTimeout:150.0];
    [v22 stop];
    v53 = [v22 diagnosticReport];
    v24 = objc_autoreleasePoolPush();
    v25 = v14;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      *v64 = 138544130;
      *&v64[4] = v27;
      *&v64[12] = 2112;
      *&v64[14] = v57;
      *&v64[22] = 2112;
      v65 = location;
      LOWORD(v66) = 2112;
      *(&v66 + 2) = v53;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%{public}@Completed network diagnostics with result/error: %@/%@. Report:\n%@", v64, 0x2Au);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [NSMutableArray arrayWithCapacity:2];
    v29 = +[NSFileManager defaultManager];
    v30 = [v21 path];
    v31 = [v29 fileExistsAtPath:v30 isDirectory:0];

    if ((v31 & 1) == 0)
    {
      v32 = +[NSFileManager defaultManager];
      [v32 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:0];
    }

    v33 = [v21 URLByAppendingPathComponent:@"bonjour_records.txt"];
    obj = location;
    [v53 writeToURL:v33 atomically:1 encoding:4 error:&obj];
    objc_storeStrong(&location, obj);
    if (location)
    {
      v34 = objc_autoreleasePoolPush();
      v35 = v25;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v38 = v37 = v20;
        *v64 = 138543618;
        *&v64[4] = v38;
        *&v64[12] = 2112;
        *&v64[14] = location;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to write network diagnostics report to file with error: %@", v64, 0x16u);

        v20 = v37;
      }

      objc_autoreleasePoolPop(v34);
    }

    v39 = [[DEAttachmentItem alloc] initWithPathURL:v33];
    [v28 addObject:v39];

    v40 = +[NSFileManager defaultManager];
    v41 = [v21 path];
    v54 = location;
    v42 = [v40 contentsOfDirectoryAtPath:v41 error:&v54];
    objc_storeStrong(&location, v54);
    *v64 = _NSConcreteStackBlock;
    *&v64[8] = 3221225472;
    *&v64[16] = sub_10001CB2C;
    v65 = &unk_1000310A0;
    *&v66 = v25;
    v43 = v21;
    *(&v66 + 1) = v43;
    v44 = v28;
    v67 = v44;
    [v42 na_each:v64];

    v45 = objc_autoreleasePoolPush();
    v46 = v25;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = HMFGetLogIdentifier();
      *v58 = 138543874;
      v59 = v48;
      v60 = 2112;
      v61 = v44;
      v62 = 2112;
      v63 = location;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%{public}@Done with diagnostic attachments %@. Error: %@", v58, 0x20u);
    }

    objc_autoreleasePoolPop(v45);
    v52 = [v44 copy];

    [v51 addObjectsFromArray:v52];
  }

  else
  {
    v52 = 0;
    [v51 addObjectsFromArray:0];
  }
}

void sub_10001ADFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!v1)
  {
    goto LABEL_41;
  }

  v86 = +[NSFileManager defaultManager];
  v84 = [NSURL fileURLWithPath:@"/tmp"];
  v87 = [v84 URLByAppendingPathComponent:@"HKSV" isDirectory:1];
  v2 = [v87 path];
  v3 = [v86 fileExistsAtPath:v2];

  if (v3)
  {
    v85 = [NSMutableArray arrayWithObject:@"VideoAnalysisSessionLogs"];
    v77 = objc_alloc_init(NSDateFormatter);
    [v77 setDateFormat:@"yyyy-MM-dd_HH-mm-ss"];
    v4 = +[NSDate now];
    v5 = [v77 stringFromDate:v4];
    [v85 addObject:v5];

    v6 = +[NSMutableCharacterSet alphanumericCharacterSet];
    v82 = [v6 invertedSet];

    v7 = [*(v1 + 8) currentHome];
    v8 = [v7 name];
    v9 = [v8 componentsSeparatedByCharactersInSet:v82];
    v76 = [v9 componentsJoinedByString:&stru_100033238];

    [v85 na_safeAddObject:v76];
    v10 = [*(v1 + 16) name];
    v11 = [v10 componentsSeparatedByCharactersInSet:v82];
    v75 = [v11 componentsJoinedByString:&stru_100033238];

    [v85 na_safeAddObject:v75];
    v81 = +[HMFSystemInfo systemInfo];
    [v81 productClass];
    v12 = HMFProductClassToString();
    [v85 na_safeAddObject:v12];

    v13 = [v81 softwareVersion];
    v14 = [v13 buildVersion];
    [v85 na_safeAddObject:v14];

    v74 = [v85 componentsJoinedByString:@"_"];
    v15 = [v86 temporaryDirectory];
    v16 = [v15 URLByAppendingPathComponent:v74];

    v17 = [NSRegularExpression regularExpressionWithPattern:@"\\.jsonl$" options:1 error:0];
    v72 = v87;
    v83 = v16;
    v79 = v17;
    v73 = objc_opt_self();
    v80 = +[NSFileManager defaultManager];
    [v80 removeItemAtURL:v83 error:0];
    v107 = 0;
    LOBYTE(v15) = [v80 createDirectoryAtURL:v83 withIntermediateDirectories:1 attributes:0 error:&v107];
    v71 = v107;
    if (v15)
    {
      v103 = 0;
      v104 = &v103;
      v105 = 0x2020000000;
      v106 = 0;
      v96[0] = _NSConcreteStackBlock;
      v96[1] = 3221225472;
      v97 = sub_10001C29C;
      v98 = &unk_100031138;
      v68 = v83;
      v99 = v68;
      v18 = v80;
      v101 = &v103;
      v102 = v73;
      v67 = v18;
      v100 = v18;
      v70 = v72;
      v89 = v79;
      v88 = v96;
      v91 = objc_opt_self();
      v116[0] = _NSConcreteStackBlock;
      v116[1] = 3221225472;
      v116[2] = sub_10001C4F8;
      v116[3] = &unk_100031110;
      v116[4] = v91;
      v69 = objc_retainBlock(v116);
      v19 = +[NSFileManager defaultManager];
      v129[0] = NSURLNameKey;
      v129[1] = NSURLIsDirectoryKey;
      v20 = [NSArray arrayWithObjects:v129 count:2];
      v21 = [v19 enumeratorAtURL:v70 includingPropertiesForKeys:v20 options:4 errorHandler:v69];

      v114 = 0u;
      v115 = 0u;
      v112 = 0u;
      v113 = 0u;
      obj = v21;
      v22 = [obj countByEnumeratingWithState:&v112 objects:v123 count:16];
      if (v22)
      {
        v92 = *v113;
        do
        {
          v93 = v22;
          for (i = 0; i != v93; i = i + 1)
          {
            if (*v113 != v92)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v112 + 1) + 8 * i);
            v25 = objc_autoreleasePoolPush();
            v110 = 0;
            v111 = 0;
            v26 = [v24 getResourceValue:&v111 forKey:NSURLNameKey error:&v110];
            v94 = v111;
            v27 = v110;
            if (v26)
            {
              v108 = 0;
              v109 = 0;
              v28 = [v24 getResourceValue:&v109 forKey:NSURLIsDirectoryKey error:&v108];
              v29 = v109;
              v30 = v108;
              if (v28)
              {
                if (([v29 BOOLValue] & 1) == 0)
                {
                  if (!v89 || ([v89 firstMatchInString:v94 options:0 range:{0, objc_msgSend(v94, "length")}], v31 = objc_claimAutoreleasedReturnValue(), v32 = v31 == 0, v31, !v32))
                  {
                    v97(v88, v24);
                  }
                }
              }

              else
              {
                v38 = objc_autoreleasePoolPush();
                v39 = v91;
                v40 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  v41 = HMFGetLogIdentifier();
                  v42 = [v24 path];
                  *buf = 138543874;
                  v118 = v41;
                  v119 = 2112;
                  v120 = v42;
                  v121 = 2112;
                  v122 = v30;
                  _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "%{public}@Could not get NSURLIsDirectoryKey for '%@': %@", buf, 0x20u);
                }

                objc_autoreleasePoolPop(v38);
              }
            }

            else
            {
              v33 = objc_autoreleasePoolPush();
              v34 = v91;
              v35 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v36 = HMFGetLogIdentifier();
                v37 = [v24 path];
                *buf = 138543874;
                v118 = v36;
                v119 = 2112;
                v120 = v37;
                v121 = 2112;
                v122 = v27;
                _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@Could not get NSURLNameKey for '%@': %@", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v33);
            }

            objc_autoreleasePoolPop(v25);
          }

          v22 = [obj countByEnumeratingWithState:&v112 objects:v123 count:16];
        }

        while (v22);
      }

      v43 = v104[3] == 0;
      v44 = objc_autoreleasePoolPush();
      v45 = v73;
      if (v43)
      {
        v64 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          v65 = HMFGetLogIdentifier();
          v66 = [v70 path];
          *v123 = 138543618;
          v124 = v65;
          v125 = 2112;
          v126 = v66;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_INFO, "%{public}@Did not find any files matching inclusion/exclusion regexes in '%@'", v123, 0x16u);
        }

        objc_autoreleasePoolPop(v44);
        [v67 removeItemAtURL:v68 error:0];
        v50 = 0;
      }

      else
      {
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = HMFGetLogIdentifier();
          v48 = v104[3];
          v49 = [v70 path];
          *v123 = 138543874;
          v124 = v47;
          v125 = 2048;
          v126 = v48;
          v127 = 2112;
          v128 = v49;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%{public}@Found %lu files matching inclusion/exclusion regexes in '%@'", v123, 0x20u);
        }

        objc_autoreleasePoolPop(v44);
        v50 = [[DEAttachmentItem alloc] initWithPathURL:v68];
        v51 = [NSNumber numberWithBool:1];
        [v50 setShouldCompress:v51];

        v52 = [NSNumber numberWithBool:1];
        [v50 setDeleteOnAttach:v52];
      }

      v63 = v50;

      _Block_object_dispose(&v103, 8);
    }

    else
    {
      v58 = objc_autoreleasePoolPush();
      v59 = v73;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = HMFGetLogIdentifier();
        v62 = [v83 path];
        *v123 = 138543874;
        v124 = v61;
        v125 = 2112;
        v126 = v62;
        v127 = 2112;
        v128 = v71;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%{public}@Could not create directory at '%@': %@", v123, 0x20u);
      }

      objc_autoreleasePoolPop(v58);
      v63 = 0;
    }

    v95 = v63;
  }

  else
  {
    v53 = objc_autoreleasePoolPush();
    v54 = objc_opt_class();
    v55 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v56 = HMFGetLogIdentifier();
      v57 = [v87 path];
      *v123 = 138543618;
      v124 = v56;
      v125 = 2112;
      v126 = v57;
      _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_INFO, "%{public}@No HKSV directory exists at '%@'", v123, 0x16u);
    }

    objc_autoreleasePoolPop(v53);
    v95 = 0;
  }

  if (v95)
  {
    [*(a1 + 40) addObject:?];
  }

  else
  {
LABEL_41:
    v95 = 0;
  }
}

uint64_t sub_10001BAB8(uint64_t a1)
{
  v2 = sub_10001BB1C(*(a1 + 32), 0);
  if (v2)
  {
    [*(a1 + 40) addObject:v2];
  }

  return _objc_release_x1();
}

id sub_10001BB1C(id a1, int a2)
{
  v2 = a1;
  if (a1)
  {
    v4 = +[NSFileManager defaultManager];
    v5 = [v4 temporaryDirectory];
    v6 = [v5 URLByAppendingPathComponent:@"homeutil-dump-all.txt"];

    if (a2)
    {
      v7 = @"homeutil dump-all -S -p 1";
    }

    else
    {
      v7 = @"homeutil dump-all -S -p 0";
    }

    v2 = sub_10001BBD4(v2, v7, v6);
  }

  return v2;
}

id sub_10001BBD4(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = a1;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543874;
    v59 = v10;
    v60 = 2112;
    v61 = v5;
    v62 = 2112;
    v63 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%{public}@Asked to run shell command: [%@] with output: [%@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = [[HMCAMDEmbeddedDeviceService alloc] initAsRoot];
  [v11 setDirectInvocations:0];
  [v11 start];
  v57 = v5;
  v12 = [NSArray arrayWithObjects:&v57 count:1];
  v54 = 0;
  v13 = [v11 performCommandFromClass:@"os" method:@"executeShellCommand:" arguments:v12 error:&v54];
  v14 = v54;

  if (!v13 || v14)
  {
    v28 = objc_autoreleasePoolPush();
    v29 = v8;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543874;
      v59 = v31;
      v60 = 2112;
      v61 = v5;
      v62 = 2112;
      v63 = v14;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "%{public}@%@ error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v28);
    v32 = 0;
  }

  else
  {
    v15 = v13;
    objc_opt_class();
    v16 = objc_opt_isKindOfClass() & 1;
    if (v16)
    {
      v17 = v15;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17;

    if (v16)
    {
      v52 = v18;
      v19 = [v15 objectForKey:@"standardOutput"];
      v20 = objc_opt_self();
      v56 = 0;
      v64 = NSStringEncodingDetectionSuggestedEncodingsKey;
      v65 = &off_1000337E0;
      v21 = [NSDictionary dictionaryWithObjects:&v65 forKeys:&v64 count:1];
      v55 = 0;
      v22 = [NSString stringEncodingForData:v19 encodingOptions:v21 convertedString:&v55 usedLossyConversion:&v56];
      v23 = v55;

      if (v22)
      {
        v18 = v52;
        if (v56 == 1)
        {
          context = objc_autoreleasePoolPush();
          v24 = v20;
          v25 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = HMFGetLogIdentifier();
            *buf = 138543362;
            v59 = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}@Lossy conversion was required to convert task data to a string.", buf, 0xCu);

            v18 = v52;
          }

          objc_autoreleasePoolPop(context);
        }

        v27 = v23;
      }

      else
      {
        v37 = objc_autoreleasePoolPush();
        v38 = v20;
        v39 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v40 = contexta = v37;
          *buf = 138543362;
          v59 = v40;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "%{public}@Unable to convert task data to a string.", buf, 0xCu);

          v37 = contexta;
        }

        objc_autoreleasePoolPop(v37);
        v27 = 0;
        v18 = v52;
      }

      if (v27)
      {
        v53 = 0;
        [v27 writeToURL:v6 atomically:1 encoding:4 error:&v53];
        v14 = v53;
        if (v14)
        {
          v41 = objc_autoreleasePoolPush();
          v42 = v8;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = HMFGetLogIdentifier();
            *buf = 138543874;
            v59 = v44;
            v60 = 2112;
            v61 = v5;
            v62 = 2112;
            v63 = v14;
            _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to write [%@] stdout, error: %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v41);
          v32 = 0;
          v18 = v52;
        }

        else
        {
          v32 = [[DEAttachmentItem alloc] initWithPathURL:v6];
          [v32 setShouldCompress:&__kCFBooleanTrue];
          [v32 setDeleteOnAttach:&__kCFBooleanTrue];
        }
      }

      else
      {
        v45 = objc_autoreleasePoolPush();
        v46 = v8;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v48 = HMFGetLogIdentifier();
          *buf = 138543618;
          v59 = v48;
          v60 = 2112;
          v61 = v5;
          _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "%{public}@no stdout for: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v45);
        v14 = 0;
        v32 = 0;
      }
    }

    else
    {
      v33 = objc_autoreleasePoolPush();
      v34 = v8;
      v35 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v36 = HMFGetLogIdentifier();
        *buf = 138543618;
        v59 = v36;
        v60 = 2112;
        v61 = v5;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@%@ shell result is not a dictionary", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v33);
      v14 = 0;
      v32 = 0;
    }
  }

  return v32;
}

void sub_10001C29C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 lastPathComponent];
  v6 = [v4 URLByAppendingPathComponent:v5];

  v7 = *(a1 + 40);
  v20 = 0;
  v8 = [v7 copyItemAtURL:v3 toURL:v6 error:&v20];
  v9 = v20;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 56);
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v8)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v3 path];
      v16 = [v6 path];
      *buf = 138543874;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%{public}@Copied '%@' to '%@'", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v3 path];
      v19 = [v6 path];
      *buf = 138544130;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      v27 = 2112;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to copy '%@' to '%@': %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
  }
}

uint64_t sub_10001C4F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [v5 path];
    v13 = 138543874;
    v14 = v10;
    v15 = 2112;
    v16 = v11;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to read '%@': %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  return 1;
}

uint64_t sub_10001C630(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 40);
  v38 = v3;
  v5 = &off_100023000;
  if (!v2)
  {
    goto LABEL_13;
  }

  v6 = [sub_10001CED8() sharedClient];
  if (v6)
  {
    v7 = [NSNumber numberWithInt:getpid()];
    v8 = [v4 UUIDString];
    v9 = [v8 substringToIndex:8];
    [NSString stringWithFormat:@"HKExtension[%@][%@]", v7, v9];
    v10 = v35 = v6;

    v11 = sub_10001D1A8();
    v55 = @"UUID";
    v56 = v4;
    v37 = v4;
    v12 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v13 = [v11 requestWithItemID:24 configuration:v12];
    v57[0] = v13;
    v14 = sub_10001D1A8();
    v53 = @"Delay";
    v15 = [NSNumber numberWithDouble:150000.0];
    v54 = v15;
    v16 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v17 = [v14 requestWithItemID:69 configuration:v16];
    v57[1] = v17;
    v18 = [NSArray arrayWithObjects:v57 count:2];

    v51[0] = @"Reason";
    v51[1] = @"OutputDirectory";
    v36 = v10;
    v52[0] = v10;
    v6 = v35;
    v52[1] = v38;
    v19 = [NSDictionary dictionaryWithObjects:v52 forKeys:v51 count:2];
    *&v47 = _NSConcreteStackBlock;
    *(&v47 + 1) = 3221225472;
    v48 = sub_10001D288;
    v49 = &unk_1000310C8;
    v50 = v2;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_10001D388;
    v42[3] = &unk_1000310F0;
    v42[4] = v2;
    v20 = [v35 collectLogs:v18 configuration:v19 update:&v47 reply:v42];
    v21 = objc_autoreleasePoolPush();
    v22 = v2;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v24;
      v45 = 2112;
      v46 = v20;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%{public}@Started W5Client with UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [HMFFuture futureWithValue:v20];

    v4 = v37;
    v5 = &off_100023000;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = v2;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      LODWORD(v47) = 138543362;
      *(&v47 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%{public}@No W5Client!", &v47, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v25 = +[HMFFuture futureWithNoValue];
  }

  while (1)
  {

    v39[0] = _NSConcreteStackBlock;
    v39[1] = *(v5 + 420);
    v39[2] = sub_10001CCCC;
    v39[3] = &unk_100031050;
    v30 = *(a1 + 56);
    v31 = *(a1 + 32);
    v40 = v30;
    v41 = v31;
    v32 = [v25 then:v39];
    if (v32)
    {
      break;
    }

    _HMFPreconditionFailure();
LABEL_13:
    v25 = 0;
  }

  v33 = v32;

  return 3;
}

void sub_10001CB2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 pathExtension];
  v5 = [v4 isEqualToString:@"pcap"];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [*(a1 + 40) URLByAppendingPathComponent:v3];
      v11 = [v10 path];
      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%{public}@Adding pcap file: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v12 = *(a1 + 48);
    v13 = [DEAttachmentItem alloc];
    v14 = [*(a1 + 40) URLByAppendingPathComponent:v3];
    v15 = [v13 initWithPathURL:v14];
    [v12 addObject:v15];
  }
}

uint64_t sub_10001CCCC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) run];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10001CDB4;
  v11[3] = &unk_100031028;
  v5 = v3;
  v6 = *(a1 + 40);
  v12 = v5;
  v13 = v6;
  v7 = [v4 finally:v11];
  if (v7)
  {
    v8 = v7;

    return 3;
  }

  else
  {
    v10 = _HMFPreconditionFailure();
    return sub_10001CDB4(v10);
  }
}

uint64_t sub_10001CDB4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [sub_10001CED8() sharedClient];
    [v2 cancelRequestWithUUID:*(a1 + 32)];

    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 40);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = *(a1 + 32);
      v9 = 138543618;
      v10 = v6;
      v11 = 2112;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%{public}@Stopped W5Client with UUID: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }

  return 1;
}

id sub_10001CED8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10003B2B0;
  v7 = qword_10003B2B0;
  if (!qword_10003B2B0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10001CFB8;
    v3[3] = &unk_100031180;
    v3[4] = &v4;
    sub_10001CFB8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10001CFA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001CFB8(uint64_t a1)
{
  sub_10001D028();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("W5Client");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10003B2B0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    abort_report_np();
    sub_10001D028();
  }
}

void sub_10001D028()
{
  v1[0] = 0;
  if (!qword_10003B2B8)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_10001D134;
    v1[4] = &unk_1000311B8;
    v1[5] = v1;
    v2 = off_1000311A0;
    v3 = 0;
    qword_10003B2B8 = _sl_dlopen();
    v0 = v1[0];
    if (qword_10003B2B8)
    {
      if (!v1[0])
      {
        return;
      }
    }

    else
    {
      v0 = abort_report_np();
    }

    free(v0);
  }
}

uint64_t sub_10001D134(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_10003B2B8 = result;
  return result;
}

id sub_10001D1A8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_10003B2C0;
  v7 = qword_10003B2C0;
  if (!qword_10003B2C0)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10001D510;
    v3[3] = &unk_100031180;
    v3[4] = &v4;
    sub_10001D510(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10001D270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10001D288(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v7;
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "%{public}@Received event update: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_10001D388(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = objc_autoreleasePoolPush();
  v11 = *(a1 + 32);
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = +[NSFileManager defaultManager];
    v15 = [v9 path];
    [v14 isReadableFileAtPath:v15];
    v16 = HMFBooleanToString();
    v17 = 138544130;
    v18 = v13;
    v19 = 2112;
    v20 = v16;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%{public}@Received URL(Readable: %@): %@ with error: %@", &v17, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
}

void sub_10001D510(uint64_t a1)
{
  sub_10001D028();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("W5LogItemRequest");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_10003B2C0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np();
    sub_10001D580(v2);
  }
}

void sub_10001D580(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_10003B298;
  qword_10003B298 = v1;

  [qword_10003B298 setDateFormat:@"yyyy-MM-dd_HH:mm:ss.SSSZZZ"];
  v3 = +[NSTimeZone systemTimeZone];
  [qword_10003B298 setTimeZone:v3];
}

uint64_t sub_10001D604(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = objc_opt_class();
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543874;
    v14 = v11;
    v15 = 2112;
    v16 = v5;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to read '%@': %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  return 1;
}

int64_t sub_10001D730(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = [a2 modificationDate];
  v6 = [v4 modificationDate];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_10001D7A0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = 138543618;
      v9 = v7;
      v10 = 2112;
      v11 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to prepare for diagnostic extension, error: %@", &v8, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_10001D9B0(id a1)
{
  qword_10003B2A8 = HMFCreateOSLogHandle();

  _objc_release_x1();
}