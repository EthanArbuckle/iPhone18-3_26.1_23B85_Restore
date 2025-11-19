@interface NWURLSessionMultipartParser
- (void)task:(void *)a3 handleMultipartData:(int)a4 complete:(void *)a5 error:(void *)a6 completionHandler:;
@end

@implementation NWURLSessionMultipartParser

- (void)task:(void *)a3 handleMultipartData:(int)a4 complete:(void *)a5 error:(void *)a6 completionHandler:
{
  v11 = a2;
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (!a1)
  {
    goto LABEL_34;
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    size = dispatch_data_get_size(*(a1 + 40));
    v51 = v12 != 0;
    if (!v12)
    {
      goto LABEL_10;
    }

    v16 = v15;
    concat = dispatch_data_create_concat(v16, v12);
    v18 = *(a1 + 40);
    *(a1 + 40) = concat;
  }

  else
  {
    size = 0;
    v19 = 0;
    v51 = v12 != 0;
    if (!v12)
    {
      goto LABEL_12;
    }

    v20 = v12;
    v16 = *(a1 + 40);
    *(a1 + 40) = v20;
  }

  v15 = *(a1 + 40);
  if (v15)
  {
LABEL_10:
    v19 = dispatch_data_get_size(v15);
    goto LABEL_12;
  }

  v19 = 0;
LABEL_12:
  v52 = v14;
  v86 = 0;
  v87 = &v86;
  v88 = 0x2020000000;
  v89 = 0;
  v21 = dispatch_group_create();
  v84[0] = 0;
  v84[1] = v84;
  v84[2] = 0x3032000000;
  v84[3] = __Block_byref_object_copy__50485;
  v84[4] = __Block_byref_object_dispose__50486;
  v49 = v13;
  v48 = v13;
  v85 = v48;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__NWURLSessionMultipartParser_task_handleMultipartData_complete_error_completionHandler___block_invoke;
  aBlock[3] = &unk_1E6A34230;
  v22 = v21;
  v81 = v22;
  v82 = a1;
  v50 = v11;
  v23 = v11;
  v83 = v23;
  v24 = _Block_copy(aBlock);
  v74 = 0;
  v75 = &v74;
  v76 = 0x3042000000;
  v77 = __Block_byref_object_copy__66;
  v78 = __Block_byref_object_dispose__67;
  v79 = 0;
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __89__NWURLSessionMultipartParser_task_handleMultipartData_complete_error_completionHandler___block_invoke_68;
  v67[3] = &unk_1E6A34280;
  v71 = &v74;
  v72 = v84;
  v67[4] = a1;
  v73 = a4;
  v25 = v22;
  v68 = v25;
  v26 = v23;
  v69 = v26;
  v27 = v24;
  v70 = v27;
  v28 = _Block_copy(v67);
  v63[0] = MEMORY[0x1E69E9820];
  v63[1] = 3221225472;
  v63[2] = __89__NWURLSessionMultipartParser_task_handleMultipartData_complete_error_completionHandler___block_invoke_75;
  v63[3] = &unk_1E6A342D0;
  v63[4] = a1;
  v66 = v84;
  v47 = v27;
  v65 = v47;
  v29 = v12;
  v64 = v29;
  v30 = _Block_copy(v63);
  v31 = v30;
  if (v51)
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __89__NWURLSessionMultipartParser_task_handleMultipartData_complete_error_completionHandler___block_invoke_79;
    applier[3] = &unk_1E6A342F8;
    v62 = size;
    applier[4] = a1;
    v60 = &v86;
    v59 = v30;
    v61 = v84;
    dispatch_data_apply(v29, applier);
  }

  v14 = v52;
  if (!a4)
  {
    goto LABEL_31;
  }

  v32 = *(a1 + 12);
  if ((v32 - 2) < 3)
  {
    goto LABEL_30;
  }

  if (!v32)
  {
    subrange = dispatch_data_create_subrange(*(a1 + 40), v87[3], v19 - v87[3]);
    if ((*(a1 + 8) & 1) == 0)
    {
      (v31)[2](v31, subrange, 0);
    }

    v87[3] = v19;
    *(a1 + 12) = 3;

    v14 = v52;
    goto LABEL_31;
  }

  if (v32 == 1)
  {
    v33 = *(a1 + 72);
    if (v33)
    {
      v33 = *(v33 + 32);
    }

    v34 = dispatch_data_create_subrange(*(a1 + 40), v87[3], v19 - (*(a1 + 96) + v33) - v87[3]);
    if (*(a1 + 8))
    {
      v87[3] = v19;
    }

    else
    {
      (v31)[2](v31, v34, 0);
      v36 = *(a1 + 8);
      v87[3] = v19;
      if ((v36 & 1) == 0)
      {
LABEL_27:
        v37 = *(a1 + 56);
        if (v37)
        {
          *(v37 + 40) = 0;
          *(v37 + 48) = 0;
        }

        *(a1 + 12) = 3;

LABEL_30:
        v31[2](v31, MEMORY[0x1E69E9668], 0);
        *(a1 + 12) = 3;
        goto LABEL_31;
      }
    }

    *(a1 + 8) = 0;
    goto LABEL_27;
  }

LABEL_31:
  v38 = *(a1 + 40);
  if (v38)
  {
    v39 = v87[3];
    v40 = v19 - v39;
    v41 = v38;
    v42 = v39;
    v14 = v52;
    v43 = dispatch_data_create_subrange(v41, v42, v40);
    v44 = *(a1 + 40);
    *(a1 + 40) = v43;
  }

  objc_storeWeak(v75 + 5, v28);
  v28[2](v28);
  v45 = *(a1 + 88);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__NWURLSessionMultipartParser_task_handleMultipartData_complete_error_completionHandler___block_invoke_2_87;
  block[3] = &unk_1E6A34320;
  v57 = v84;
  block[4] = a1;
  v54 = v26;
  v55 = v48;
  v56 = v14;
  dispatch_group_notify(v25, v45, block);

  _Block_object_dispose(&v74, 8);
  objc_destroyWeak(&v79);

  _Block_object_dispose(v84, 8);
  _Block_object_dispose(&v86, 8);
  v13 = v49;
  v11 = v50;
LABEL_34:
}

void __89__NWURLSessionMultipartParser_task_handleMultipartData_complete_error_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (gLogDatapath != 1)
  {
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 0;
    if (!v8 && !a3)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v12 = __nwlog_obj();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136446978;
    v16 = "[NWURLSessionMultipartParser task:handleMultipartData:complete:error:completionHandler:]_block_invoke";
    v17 = 2112;
    v18 = v7;
    v19 = 1024;
    v20 = a3;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_181A37000, v12, OS_LOG_TYPE_DEBUG, "%{public}s Delivering data %@, complete %{BOOL}d, error %@", buf, 0x26u);
  }

  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  if (!dispatch_data_get_size(v7))
  {

    goto LABEL_5;
  }

LABEL_7:
  dispatch_group_enter(*(a1 + 32));
  v9 = *(a1 + 40);
  if (v9)
  {
    v10 = *(v9 + 32);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __89__NWURLSessionMultipartParser_task_handleMultipartData_complete_error_completionHandler___block_invoke_63;
  v13[3] = &unk_1E6A3D868;
  v14 = *(a1 + 32);
  [v10 task:v11 deliverData:v7 complete:a3 error:v8 completionHandler:v13];

LABEL_10:
}

void __89__NWURLSessionMultipartParser_task_handleMultipartData_complete_error_completionHandler___block_invoke_68(uint64_t a1)
{
  v35 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 64) + 8) + 40));
  if (!WeakRetained)
  {
    _os_crash();
    __break(1u);
  }

  v3 = WeakRetained;
  v4 = *(a1 + 32);
  if (v4)
  {
    v4 = v4[6];
  }

  v5 = v4;
  v6 = [v5 firstObject];

  if (v6)
  {
    if (gLogDatapath)
    {
      v15 = __nwlog_obj();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136446210;
        v34 = "[NWURLSessionMultipartParser task:handleMultipartData:complete:error:completionHandler:]_block_invoke_2";
        _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s Delivering multipart response, waiting for disposition", buf, 0xCu);
      }
    }

    dispatch_group_enter(*(a1 + 40));
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(v7 + 32);
    }

    else
    {
      v8 = 0;
    }

    v9 = *(a1 + 48);
    v10 = v6[1];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __89__NWURLSessionMultipartParser_task_handleMultipartData_complete_error_completionHandler___block_invoke_72;
    v25[3] = &unk_1E6A34258;
    v25[4] = v7;
    v11 = v6;
    v12 = *(a1 + 72);
    v26 = v11;
    v30 = v12;
    v28 = *(a1 + 56);
    v27 = *(a1 + 40);
    v29 = v3;
    v13 = v8;
    [v13 task:v9 deliverResponse:v10 completionHandler:v25];

    v14 = v26;
LABEL_9:

    goto LABEL_12;
  }

  if (gLogDatapath)
  {
    v16 = __nwlog_obj();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446210;
      v34 = "[NWURLSessionMultipartParser task:handleMultipartData:complete:error:completionHandler:]_block_invoke";
      _os_log_impl(&dword_181A37000, v16, OS_LOG_TYPE_DEBUG, "%{public}s Delivered all parts, returning", buf, 0xCu);
    }
  }

  if (*(a1 + 80) == 1)
  {
    v17 = *(a1 + 32);
    if ((!v17 || *(v17 + 12) != 3) && !*(*(*(a1 + 72) + 8) + 40))
    {
      v22 = [[NWURLError alloc] initWithErrorCode:-1017];
      v23 = *(*(a1 + 72) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = v22;
    }

    dispatch_group_enter(*(a1 + 40));
    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = *(v18 + 32);
    }

    else
    {
      v19 = 0;
    }

    v20 = *(*(*(a1 + 72) + 8) + 40);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __89__NWURLSessionMultipartParser_task_handleMultipartData_complete_error_completionHandler___block_invoke_71;
    v31[3] = &unk_1E6A3D868;
    v21 = *(a1 + 48);
    v32 = *(a1 + 40);
    [v19 task:v21 deliverData:0 complete:1 error:v20 completionHandler:v31];
    v14 = v32;
    goto LABEL_9;
  }

LABEL_12:
}

void __89__NWURLSessionMultipartParser_task_handleMultipartData_complete_error_completionHandler___block_invoke_75(void *a1, void *a2, _BOOL4 a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (!a3)
  {
    goto LABEL_5;
  }

  v7 = a1[4];
  if (!v7)
  {
    goto LABEL_5;
  }

  if ((*(v7 + 9) & 1) == 0)
  {
    *(v7 + 9) = 1;
LABEL_5:
    size = dispatch_data_get_size(v5);
    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __89__NWURLSessionMultipartParser_task_handleMultipartData_complete_error_completionHandler___block_invoke_2;
    applier[3] = &unk_1E6A342A8;
    applier[5] = &v31;
    applier[6] = size;
    applier[4] = &v35;
    dispatch_data_apply(v6, applier);
    v9 = *(v36 + 24);
    if (v9 == 13)
    {
      goto LABEL_9;
    }

    if (v9 != 10)
    {
      goto LABEL_11;
    }

    if (*(v32 + 24) != 13)
    {
LABEL_9:
      v10 = -1;
    }

    else
    {
      v10 = -2;
    }

    subrange = dispatch_data_create_subrange(v6, 0, v10 + size);

    v6 = subrange;
LABEL_11:
    v12 = a1[4];
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = *(v12 + 16);
    if (v13 == 1)
    {
      (*(a1[6] + 16))();
    }

    else
    {
      if (!v13)
      {
        v12 = *(v12 + 48);
LABEL_15:
        v14 = v12;
        v15 = [v14 lastObject];

        if (v15)
        {
          v16 = [NWURLSessionMultipartContent alloc];
          v17 = v6;
          if (v16)
          {
            *v39 = v16;
            *&v39[8] = NWURLSessionMultipartContent;
            v18 = objc_msgSendSuper2(v39, sel_init);
            v16 = v18;
            if (v18)
            {
              objc_storeStrong(&v18->_data, v6);
              v16->_complete = a3;
              objc_storeStrong(&v16->_error, 0);
            }
          }

          v19 = v15[2].isa;
          [(objc_class *)v19 addObject:v16];

          if (gLogDatapath == 1)
          {
            v25 = __nwlog_obj();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              if (v16)
              {
                v26 = v16->_data;
                complete = v16->_complete;
                error = v16->_error;
                v29 = v26;
              }

              else
              {
                complete = 0;
                v26 = 0;
                v29 = 0;
                error = 0;
              }

              *v39 = 136446978;
              *&v39[4] = "[NWURLSessionMultipartParser task:handleMultipartData:complete:error:completionHandler:]_block_invoke";
              *&v39[12] = 2112;
              *&v39[14] = v29;
              v40 = 1024;
              v41 = complete;
              v42 = 2112;
              v43 = error;
              _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s Created NWURLSessionMultipartContent, body %@, complete %{BOOL}d, error %@", v39, 0x26u);
            }
          }
        }

        else
        {
          if (!*(*(a1[7] + 8) + 40))
          {
            v21 = [[NWURLError alloc] initWithErrorCode:-1017];
            v22 = *(a1[7] + 8);
            v23 = *(v22 + 40);
            *(v22 + 40) = v21;
          }

          v24 = a1[4];
          v15 = 0;
          if (v24)
          {
            *(v24 + 12) = 3;
          }
        }

LABEL_29:

        goto LABEL_30;
      }

      if (gLogDatapath == 1)
      {
        v15 = __nwlog_obj();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          v20 = a1[5];
          *v39 = 136446722;
          *&v39[4] = "[NWURLSessionMultipartParser task:handleMultipartData:complete:error:completionHandler:]_block_invoke";
          *&v39[12] = 2112;
          *&v39[14] = v20;
          v40 = 1024;
          v41 = a3;
          _os_log_impl(&dword_181A37000, v15, OS_LOG_TYPE_DEBUG, "%{public}s Discarding content, body %@, complete %{BOOL}d", v39, 0x1Cu);
        }

        goto LABEL_29;
      }
    }

LABEL_30:
    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
  }
}

uint64_t __89__NWURLSessionMultipartParser_task_handleMultipartData_complete_error_completionHandler___block_invoke_79(void *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v158 = *MEMORY[0x1E69E9840];
  v146 = a2;
  if (a5)
  {
    v9 = 0;
    v148 = a3 + 1;
    v10 = &nwlog_legacy_init(void)::init_once;
    v145 = a5;
    v147 = a4;
    while (1)
    {
      v12 = a1[4];
      if (!v12)
      {
        goto LABEL_3;
      }

      v13 = *(v12 + 12);
      if (v13 == 2)
      {
        v48 = *(v12 + 64);
        if (!v48 || (v49 = *(a4 + v9), *(v48 + 8) = *(v48 + 9), *(v48 + 9) = v49, (v12 = a1[4]) != 0))
        {
          v50 = *(v12 + 64);
          if (v50)
          {
            v51 = v50[9];

            if (v51 == 10)
            {
              v52 = a1[4];
              if (v52 && (v53 = *(v52 + 64)) != 0)
              {
                if (v53[8] == 13)
                {
                  v54 = 2;
                }

                else
                {
                  v54 = 1;
                }
              }

              else
              {
                v54 = 0;
              }

              v55 = *(*(a1[6] + 8) + 24);
              v56 = a1[4];
              if (v56)
              {
                v57 = *(v56 + 40);
              }

              else
              {
                v57 = 0;
              }

              v58 = v148 + v9;
              v59 = v148 + v9 + a1[8];
              v60 = v55 + v54;
              subrange = dispatch_data_create_subrange(v57, v55, v59 - v60);
              v62 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:subrange encoding:5];
              v63 = v62;
              if (v59 == v60)
              {
                v64 = a1[4];
                if (v64)
                {
                  v65 = *(v64 + 32);
                }

                else
                {
                  v65 = 0;
                }

                v66 = [v65 response];
                v67 = [v66 allHeaderFields];
                v68 = [v67 mutableCopy];

                v69 = a1[4];
                if (v69)
                {
                  v70 = *(v69 + 80);
                }

                else
                {
                  v70 = 0;
                }

                [v68 addEntriesFromDictionary:v70];
                v71 = objc_alloc(MEMORY[0x1E695AC08]);
                v72 = [v66 URL];
                v73 = [v71 initWithURL:v72 statusCode:objc_msgSend(v66 HTTPVersion:"statusCode") headerFields:{0, v68}];

                v74 = a1[4];
                if (v74)
                {
                  v75 = *(v74 + 80);
                }

                else
                {
                  v75 = 0;
                }

                [v75 removeAllObjects];
                v76 = [NWURLSessionMultipartPart alloc];
                v77 = v73;
                if (v76)
                {
                  *v151 = v76;
                  *&v151[8] = NWURLSessionMultipartPart;
                  v78 = objc_msgSendSuper2(v151, sel_init);
                  v76 = v78;
                  if (v78)
                  {
                    objc_storeStrong(&v78->_response, v73);
                    v79 = objc_alloc_init(MEMORY[0x1E695DF70]);
                    data = v76->_data;
                    v76->_data = v79;
                  }
                }

                v58 = v148 + v9;

                v81 = a1[4];
                if (v81)
                {
                  v82 = *(v81 + 48);
                }

                else
                {
                  v82 = 0;
                }

                [v82 addObject:v76];
                v83 = a1[4];
                if (v83)
                {
                  *(v83 + 12) = 0;
                  v84 = a1[4];
                  if (v84)
                  {
                    *(v84 + 16) = 0;
                  }
                }

                a5 = v145;
                a4 = v147;
                v10 = &nwlog_legacy_init(void)::init_once;
              }

              else
              {
                v89 = [v62 rangeOfString:@":"];
                if (v89 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  if (!*(*(a1[7] + 8) + 40))
                  {
                    v90 = [[NWURLError alloc] initWithErrorCode:-1017];
                    v91 = *(a1[7] + 8);
                    v92 = *(v91 + 40);
                    *(v91 + 40) = v90;
                  }

                  v93 = a1[4];
                  if (v93)
                  {
                    *(v93 + 12) = 3;
                  }
                }

                else
                {
                  v99 = v89;
                  v100 = [v63 substringToIndex:v89];
                  v101 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
                  v102 = [v100 stringByTrimmingCharactersInSet:v101];

                  v103 = [v63 substringFromIndex:v99 + 1];
                  v104 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
                  v105 = [v103 stringByTrimmingCharactersInSet:v104];

                  v106 = a1[4];
                  if (v106)
                  {
                    v107 = *(v106 + 80);
                  }

                  else
                  {
                    v107 = 0;
                  }

                  a4 = v147;
                  v10 = &nwlog_legacy_init(void)::init_once;
                  v58 = v148 + v9;
                  [v107 setObject:v105 forKeyedSubscript:{v102, v143, v144}];
                }
              }

              *(*(a1[6] + 8) + 24) = v58 + a1[8];
            }
          }
        }

        goto LABEL_5;
      }

      if (v13 != 1)
      {
        if (v13)
        {
          goto LABEL_5;
        }

        v14 = *(v12 + 56);
        if (v14)
        {
          v15 = *(a4 + v9);
          v16 = v14[6];
          v17 = v14[4];
          v18 = (v16 + 1) % v17;
          if (v18 == v14[5])
          {
            if (v18 + 1 == v17)
            {
              v19 = 0;
            }

            else
            {
              v19 = v18 + 1;
            }

            v14[5] = v19;
          }

          *(v14[3] + v16) = v15;
          v14[6] = (v14[6] + 1) % v14[4];
        }

        v20 = a1[4];
        if (v20)
        {
          v11 = *(v20 + 56);
          if (v11)
          {
            v21 = v11[4];
            v22 = (v11[6] + 1) % v21;
            if (v22 == v11[5])
            {
              v23 = v11[2];
              if (!v23)
              {
LABEL_24:

                v27 = a1[4];
                if (v27)
                {
                  v28 = *(v27 + 56);
                  if (v28)
                  {
                    v28[5] = 0;
                    v28[6] = 0;
                  }

                  v29 = a1[4];
                  if (v29)
                  {
                    v30 = *(v29 + 72);
                    if (v30)
                    {
                      v30[4] = 0;
                      v30[2] = 0;
                      *(v30 + 8) = 0;
                      *(v30 + 3) = 4;
                    }
                  }
                }

                v31 = a1[4];
                if (v31)
                {
                  *(v31 + 12) = 1;
                }

                goto LABEL_5;
              }

              v24 = 0;
              v25 = v11[1];
              while (1)
              {
                v26 = *v25++;
                if (*(v11[3] + (v24 + v22) % v21) != v26)
                {
                  break;
                }

                ++v24;
                if (!--v23)
                {
                  goto LABEL_24;
                }
              }
            }
          }
        }

        else
        {
LABEL_3:
          v11 = 0;
        }

        goto LABEL_5;
      }

      v32 = *(v12 + 72);
      if (!v32)
      {
        goto LABEL_112;
      }

      if (*(v32 + 12) != 4 || (v33 = *(v32 + 32), v33 >= 2))
      {
        _os_crash();
        __break(1u);
      }

      *(*(v32 + 24) + v33) = *(a4 + v9);
      v34 = *(v32 + 32);
      v35 = __CFADD__(v34, 1);
      v36 = v34 + 1;
      v37 = v35;
      *(v32 + 32) = v36;
      if (v37 << 63 >> 63 != v37)
      {
        break;
      }

      if (v36 == 1)
      {
        v85 = **(v32 + 24);
        v86 = v85 > 0x2D;
        v87 = (1 << v85) & 0x200000002400;
        if (!v86 && v87 != 0)
        {
          goto LABEL_112;
        }

LABEL_114:
        *(v32 + 12) = 2;
        *(v32 + 16) = 0;
        goto LABEL_115;
      }

LABEL_99:
      v110 = *(v32 + 24);
      v111 = *v110;
      if (v111 != 13 && v111 != 10)
      {
        if (v110[1] == 45)
        {
          *(v32 + 12) = 3;
LABEL_111:
          *(v32 + 16) = 2;
          *(v32 + 8) = 0;
LABEL_112:
          v115 = a1[4];
          if (!v115)
          {
            goto LABEL_148;
          }

          goto LABEL_116;
        }

        goto LABEL_114;
      }

      *(v32 + 12) = 2;
      v113 = v110[1];
      if (v113 == 13 || v113 == 10)
      {
        goto LABEL_111;
      }

      *(v32 + 16) = 1;
LABEL_115:
      *(v32 + 8) = 1;
      v115 = a1[4];
      if (!v115)
      {
        goto LABEL_148;
      }

LABEL_116:
      v116 = *(v115 + 72);
      if (!v116 || (v117 = v116[3], v116, v117 != 4))
      {
        v118 = a1[4];
        if (v118)
        {
          v119 = *(v118 + 96);
          v120 = *(v118 + 72);
          if (v120)
          {
            v121 = v120[4];
          }

          else
          {
            v121 = 0;
          }
        }

        else
        {
LABEL_148:
          v119 = 0;
          v121 = 0;
        }

        v122 = v10;
        v124 = a1[4];
        v125 = a5;
        if (v124)
        {
          v126 = *(v124 + 40);
        }

        else
        {
          v126 = 0;
        }

        v123 = *(*(a1[6] + 8) + 24);
        v127 = dispatch_data_create_subrange(v126, v123, v148 + v9 + a1[8] - (v119 + v121) - v123);
        v128 = a1[4];
        if (v128 && *(v128 + 8) == 1)
        {
          v129 = a1[8];
          goto LABEL_127;
        }

        (*(a1[5] + 16))();
        v128 = a1[4];
        v129 = a1[8];
        if (v128)
        {
LABEL_127:
          v130 = *(v128 + 72);
          v131 = v130;
          if (v130)
          {
            v132 = *(v130 + 4);
            v128 = a1[4];
            if (v128)
            {
LABEL_129:
              v133 = *(v128 + 72);
              if (v133)
              {
                v128 = v133[2];
              }

              else
              {
                v128 = 0;
              }

LABEL_131:
              *(*(a1[6] + 8) + 24) = v148 + v9 + v129 - v132 + v128;

              v134 = a1[4];
              if (v134)
              {
                if (*(v134 + 8) != 1 || (*(v134 + 8) = 0, (v134 = a1[4]) != 0))
                {
                  v135 = *(v134 + 56);
                  if (v135)
                  {
                    v135[5] = 0;
                    v135[6] = 0;
                  }
                }
              }

              v136 = a1[4];
              if (!v136)
              {
                goto LABEL_149;
              }

              v137 = *(v136 + 72);
              if (v137)
              {
                v138 = v137[8];

                v9 -= v138;
              }

              v136 = a1[4];
              if (v136)
              {
                v139 = *(v136 + 72);
                if (v139)
                {
                  LODWORD(v136) = v139[3];
                }

                else
                {
                  LODWORD(v136) = 0;
                }
              }

              else
              {
LABEL_149:
                v139 = 0;
              }

              v140 = a1[4];
              if (v140)
              {
                *(v140 + 12) = v136;
              }

              a5 = v125;
              v10 = v122;
              goto LABEL_5;
            }
          }

          else
          {
            v132 = 0;
            v128 = a1[4];
            if (v128)
            {
              goto LABEL_129;
            }
          }

          v133 = 0;
          goto LABEL_131;
        }

        v132 = 0;
        v131 = 0;
        v133 = 0;
        goto LABEL_131;
      }

LABEL_5:
      if (++v9 >= a5)
      {
        goto LABEL_164;
      }
    }

    v38 = a5;
    pthread_once(v10, nwlog_legacy_init_once);
    networkd_settings_init();
    v39 = gLogObj;
    v40 = *(v32 + 32);
    *v151 = 136446978;
    *&v151[4] = "[NWURLSessionMultipartPartBoundarySuffixRecognizer consumeCharacter:]";
    *&v151[12] = 2082;
    *&v151[14] = "_count";
    v152 = 2048;
    v153 = 1;
    v154 = 2048;
    v155 = v40;
    LODWORD(v144) = 42;
    v143 = v151;
    v41 = _os_log_send_and_compose_impl();

    type = OS_LOG_TYPE_ERROR;
    v149 = 0;
    if (!__nwlog_fault(v41, &type, &v149))
    {
LABEL_96:
      if (v41)
      {
        free(v41);
      }

      *(v32 + 32) = -1;
      a5 = v38;
      goto LABEL_99;
    }

    if (type == OS_LOG_TYPE_FAULT)
    {
      pthread_once(v10, nwlog_legacy_init_once);
      networkd_settings_init();
      v42 = gLogObj;
      v43 = type;
      if (!os_log_type_enabled(v42, type))
      {
LABEL_95:

        goto LABEL_96;
      }

      v44 = *(v32 + 32);
      *v151 = 136446978;
      *&v151[4] = "[NWURLSessionMultipartPartBoundarySuffixRecognizer consumeCharacter:]";
      *&v151[12] = 2082;
      *&v151[14] = "_count";
      v152 = 2048;
      v153 = 1;
      v154 = 2048;
      v155 = v44;
      v45 = v42;
      v46 = v43;
      v47 = "%{public}s Overflow: %{public}s, increment %llu, result %llu";
    }

    else
    {
      if (v149 == 1)
      {
        backtrace_string = __nw_create_backtrace_string();
        pthread_once(v10, nwlog_legacy_init_once);
        networkd_settings_init();
        v95 = gLogObj;
        v96 = type;
        v97 = os_log_type_enabled(v95, type);
        if (backtrace_string)
        {
          if (v97)
          {
            v98 = *(v32 + 32);
            *v151 = 136447234;
            *&v151[4] = "[NWURLSessionMultipartPartBoundarySuffixRecognizer consumeCharacter:]";
            *&v151[12] = 2082;
            *&v151[14] = "_count";
            v152 = 2048;
            v153 = 1;
            v154 = 2048;
            v155 = v98;
            v156 = 2082;
            v157 = backtrace_string;
            _os_log_impl(&dword_181A37000, v95, v96, "%{public}s Overflow: %{public}s, increment %llu, result %llu, dumping backtrace:%{public}s", v151, 0x34u);
          }

          free(backtrace_string);
          a4 = v147;
        }

        else
        {
          if (v97)
          {
            v141 = *(v32 + 32);
            *v151 = 136446978;
            *&v151[4] = "[NWURLSessionMultipartPartBoundarySuffixRecognizer consumeCharacter:]";
            *&v151[12] = 2082;
            *&v151[14] = "_count";
            v152 = 2048;
            v153 = 1;
            v154 = 2048;
            v155 = v141;
            _os_log_impl(&dword_181A37000, v95, v96, "%{public}s Overflow: %{public}s, increment %llu, result %llu, no backtrace", v151, 0x2Au);
          }

          a4 = v147;
        }

        goto LABEL_96;
      }

      pthread_once(v10, nwlog_legacy_init_once);
      networkd_settings_init();
      v42 = gLogObj;
      v108 = type;
      if (!os_log_type_enabled(v42, type))
      {
        goto LABEL_95;
      }

      v109 = *(v32 + 32);
      *v151 = 136446978;
      *&v151[4] = "[NWURLSessionMultipartPartBoundarySuffixRecognizer consumeCharacter:]";
      *&v151[12] = 2082;
      *&v151[14] = "_count";
      v152 = 2048;
      v153 = 1;
      v154 = 2048;
      v155 = v109;
      v45 = v42;
      v46 = v108;
      v47 = "%{public}s Overflow: %{public}s, increment %llu, result %llu, backtrace limit exceeded";
    }

    _os_log_impl(&dword_181A37000, v45, v46, v47, v151, 0x2Au);
    goto LABEL_95;
  }

LABEL_164:

  return 1;
}

uint64_t __89__NWURLSessionMultipartParser_task_handleMultipartData_complete_error_completionHandler___block_invoke_2_87(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  pthread_once(&nwlog_legacy_init(void)::init_once, nwlog_legacy_init_once);
  networkd_settings_init();
  v2 = gLogObj;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1[8] + 8) + 40);
    v7 = 136446466;
    v8 = "[NWURLSessionMultipartParser task:handleMultipartData:complete:error:completionHandler:]_block_invoke_2";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_INFO, "%{public}s Completing with error %@", &v7, 0x16u);
  }

  if (!*(*(a1[8] + 8) + 40))
  {
    return (*(a1[7] + 16))();
  }

  v4 = a1[4];
  if (v4)
  {
    v5 = *(v4 + 32);
  }

  else
  {
    v5 = 0;
  }

  return [v5 task:a1[5] deliverData:0 complete:1 error:a1[6] completionHandler:a1[7]];
}

uint64_t __89__NWURLSessionMultipartParser_task_handleMultipartData_complete_error_completionHandler___block_invoke_2(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[6];
  if (v5)
  {
    v6 = a5 + a3;
    v7 = v5 - 1 < a3 || v5 - 1 >= v6;
    if (!v7)
    {
      *(*(a1[4] + 8) + 24) = *(a4 + v5 - 1 - a3);
      v5 = a1[6];
    }

    v7 = v5 >= 2;
    v8 = v5 - 2;
    if (v7 && v8 >= a3 && v8 < v6)
    {
      *(*(a1[5] + 8) + 24) = *(a4 + v8 - a3);
    }
  }

  return 1;
}

uint64_t __89__NWURLSessionMultipartParser_task_handleMultipartData_complete_error_completionHandler___block_invoke_72(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v25 = __nwlog_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v32 = "[NWURLSessionMultipartParser task:handleMultipartData:complete:error:completionHandler:]_block_invoke";
      v33 = 2048;
      v34 = a2;
      _os_log_impl(&dword_181A37000, v25, OS_LOG_TYPE_DEBUG, "%{public}s Received disposition %ld", buf, 0x16u);
    }

    v4 = *(a1 + 32);
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a1 + 32);
    if (v4)
    {
LABEL_3:
      v5 = *(v4 + 48);
      goto LABEL_4;
    }
  }

  v5 = 0;
LABEL_4:
  [v5 removeObject:*(a1 + 40)];
  if (!a2)
  {
    v7 = [[NWURLError alloc] initWithErrorCode:-999];
    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
    v6 = 2;
LABEL_23:

    goto LABEL_24;
  }

  if (a2 == 1)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v10 = *(a1 + 40);
    if (v10)
    {
      v10 = v10[2];
    }

    v9 = v10;
    v11 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v27;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          v16 = *(a1 + 56);
          if (v15)
          {
            v17 = *(v15 + 16);
            v18 = *(v15 + 8);
            v19 = *(v15 + 24);
          }

          else
          {
            v18 = 0;
            v17 = 0;
            v19 = 0;
          }

          (*(v16 + 16))(v16, v17, v18 & 1, v19);
        }

        v12 = [v9 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v12);
    }

    v6 = 1;
    goto LABEL_23;
  }

  if ((a2 - 2) < 2)
  {
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = 2;
LABEL_24:
  v20 = *(a1 + 32);
  if (v20)
  {
    if (![*(v20 + 48) count])
    {
      goto LABEL_26;
    }
  }

  else if (![0 count])
  {
LABEL_26:
    v21 = *(a1 + 32);
    if (v21)
    {
      *(v21 + 16) = v6;
    }
  }

  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = *(a1 + 40);
  if (v23)
  {
    objc_storeStrong((v23 + 16), v22);
  }

  dispatch_group_leave(*(a1 + 48));
  return (*(*(a1 + 64) + 16))(*(a1 + 64));
}

void __89__NWURLSessionMultipartParser_task_handleMultipartData_complete_error_completionHandler___block_invoke_63(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v1 = a1;
    v2 = __nwlog_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = 136446210;
      v4 = "[NWURLSessionMultipartParser task:handleMultipartData:complete:error:completionHandler:]_block_invoke";
      _os_log_impl(&dword_181A37000, v2, OS_LOG_TYPE_DEBUG, "%{public}s Delivered data", &v3, 0xCu);
    }

    a1 = v1;
  }

  dispatch_group_leave(*(a1 + 32));
}

@end