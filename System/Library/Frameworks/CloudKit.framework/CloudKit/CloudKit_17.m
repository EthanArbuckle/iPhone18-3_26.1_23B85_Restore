uint64_t sub_188638E74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_name(v6, v7, v8);
  v11 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v10, 2);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v12, v11);

  if (isEqualToString)
  {
    objc_msgSend_transitionToState_withEvent_(v5, v14, *(a1 + 32), v6);
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

uint64_t sub_188638F38(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a4;
  v8 = objc_msgSend_name(a3, v6, v7);
  v10 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v9, 2);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v11, v10);

  if (isEqualToString)
  {
    v5[2](v5, 11, 0);
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

uint64_t sub_188638FF8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_name(v6, v7, v8);
  v11 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v10, 1);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v12, v11);

  if (isEqualToString)
  {
    v16 = 32;
  }

  else
  {
    v17 = objc_msgSend_name(v6, v14, v15);
    v19 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v18, 0);
    v21 = objc_msgSend_isEqualToString_(v17, v20, v19);

    if (v21)
    {
      goto LABEL_5;
    }

    v26 = objc_msgSend_name(v6, v22, v23);
    v28 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v27, 2);
    v30 = objc_msgSend_isEqualToString_(v26, v29, v28);

    if (!v30)
    {
      v24 = 1;
      goto LABEL_6;
    }

    v16 = 40;
  }

  objc_msgSend_transitionToState_withEvent_(v5, v14, *(a1 + v16), v6);
LABEL_5:
  v24 = 2;
LABEL_6:

  return v24;
}

void sub_18863913C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(*(a1[4] + 8) + 24) = 0;
  *(*(a1[5] + 8) + 24) = 0;
  *(*(a1[6] + 8) + 24) = 0;
  *(*(a1[7] + 8) + 24) = 0;
  *(*(a1[8] + 8) + 24) = 0;
  v4 = (a4 + 2);
  v5 = a4[2];
  v6 = a4;
  v5();
  (*v4)(v6, 16, 0);
  (*v4)(v6, 12, 0);
}

uint64_t sub_1886391F8(void *a1, void *a2, void *a3, void *a4)
{
  v67[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_name(v8, v10, v11);
  v14 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v13, 4);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v15, v14);

  if (isEqualToString)
  {
    v19 = *(a1[6] + 8);
LABEL_3:
    *(v19 + 24) = 1;
LABEL_4:
    if (*(*(a1[6] + 8) + 24) == 1 && *(*(a1[7] + 8) + 24) == 1 && *(*(a1[8] + 8) + 24) == 1)
    {
      if (*(*(a1[9] + 8) + 24) == 1 && (*(*(a1[10] + 8) + 24) & 1) != 0)
      {
        v20 = 4;
      }

      else
      {
        v20 = 5;
      }

      objc_msgSend_transitionToState_withEvent_(v7, v17, a1[v20], v8);
    }

    goto LABEL_22;
  }

  v21 = objc_msgSend_name(v8, v17, v18);
  v23 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v22, 5);
  v25 = objc_msgSend_isEqualToString_(v21, v24, v23);

  if (!v25)
  {
    v29 = objc_msgSend_name(v8, v26, v27);
    v31 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v30, 9);
    v33 = objc_msgSend_isEqualToString_(v29, v32, v31);

    if (v33)
    {
      *(*(a1[7] + 8) + 24) = 1;
      v35 = a1[9];
LABEL_16:
      *(*(v35 + 8) + 24) = 0;
      goto LABEL_4;
    }

    v36 = objc_msgSend_name(v8, v17, v34);
    v38 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v37, 8);
    v40 = objc_msgSend_isEqualToString_(v36, v39, v38);

    if (v40)
    {
      *(*(a1[7] + 8) + 24) = 1;
      v42 = a1[9];
    }

    else
    {
      v46 = objc_msgSend_name(v8, v17, v41);
      v48 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v47, 10);
      v50 = objc_msgSend_isEqualToString_(v46, v49, v48);

      if (v50)
      {
        if (*(*(a1[7] + 8) + 24))
        {
          goto LABEL_22;
        }

        v64 = @"retry";
        v65 = MEMORY[0x1E695E118];
        v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v51, &v65, &v64, 1);
        v9[2](v9, 16, v28);
        goto LABEL_13;
      }

      v53 = objc_msgSend_name(v8, v51, v52);
      v55 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v54, 6);
      v57 = objc_msgSend_isEqualToString_(v53, v56, v55);

      if (!v57)
      {
        v59 = objc_msgSend_name(v8, v17, v58);
        v61 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v60, 7);
        v63 = objc_msgSend_isEqualToString_(v59, v62, v61);

        v43 = 1;
        if (!v63)
        {
          goto LABEL_23;
        }

        *(*(a1[8] + 8) + 24) = 1;
        v35 = a1[10];
        goto LABEL_16;
      }

      *(*(a1[8] + 8) + 24) = 1;
      v42 = a1[10];
    }

    v19 = *(v42 + 8);
    goto LABEL_3;
  }

  if ((*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    v66 = @"retry";
    v67[0] = MEMORY[0x1E695E118];
    v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v26, v67, &v66, 1);
    v9[2](v9, 15, v28);
LABEL_13:
  }

LABEL_22:
  v43 = 2;
LABEL_23:

  v44 = *MEMORY[0x1E69E9840];
  return v43;
}

void sub_188639618(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v4 = (a4 + 2);
  v5 = a4[2];
  v6 = a4;
  v5();
  (*v4)(v6, 4, 0);
  (*v4)(v6, 0, 0);
  (*v4)(v6, 2, 0);
}

void sub_1886396B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v5[2](v5, 19, 0);
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v5[2](v5, 10, 0);
  }

  v5[2](v5, 5, 0);
  v5[2](v5, 1, 0);
  v5[2](v5, 3, 0);
}

uint64_t sub_188639770(uint64_t *a1, void *a2, void *a3, void *a4)
{
  v87[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_name(v8, v10, v11);
  v14 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v13, 13);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v15, v14);

  if (isEqualToString)
  {
    *(*(a1[7] + 8) + 24) = 1;
    objc_msgSend_transitionToState_withEvent_(v7, v17, a1[4], v8);
    goto LABEL_9;
  }

  v19 = objc_msgSend_name(v8, v17, v18);
  v21 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v20, 10);
  v23 = objc_msgSend_isEqualToString_(v19, v22, v21);

  if (v23)
  {
    v86 = @"retry";
    v87[0] = MEMORY[0x1E695E118];
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v24, v87, &v86, 1);
    v9[2](v9, 16, v26);
LABEL_8:

    goto LABEL_9;
  }

  v27 = objc_msgSend_name(v8, v24, v25);
  v29 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v28, 11);
  v31 = objc_msgSend_isEqualToString_(v27, v30, v29);

  if (v31)
  {
    v84 = @"retry";
    v85 = MEMORY[0x1E695E118];
    v26 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v32, &v85, &v84, 1);
    v9[2](v9, 17, v26);
    goto LABEL_8;
  }

  v37 = objc_msgSend_name(v8, v32, v33);
  v39 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v38, 7);
  v41 = objc_msgSend_isEqualToString_(v37, v40, v39);

  if (v41)
  {
    objc_msgSend_transitionToState_withEvent_(v7, v42, a1[5], v8);
    goto LABEL_9;
  }

  v44 = objc_msgSend_name(v8, v42, v43);
  v46 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v45, 15);
  v48 = objc_msgSend_isEqualToString_(v44, v47, v46);

  if (v48)
  {
    v9[2](v9, 21, 0);
    goto LABEL_9;
  }

  v51 = objc_msgSend_name(v8, v49, v50);
  v53 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v52, 2);
  v55 = objc_msgSend_isEqualToString_(v51, v54, v53);

  if (v55)
  {
    v9[2](v9, 8, 0);
    objc_msgSend_transitionToState_withEvent_(v7, v58, a1[6], v8);
    goto LABEL_9;
  }

  v59 = objc_msgSend_name(v8, v56, v57);
  v61 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v60, 14);
  v63 = objc_msgSend_isEqualToString_(v59, v62, v61);

  if (v63)
  {
    v9[2](v9, 20, 0);
    goto LABEL_9;
  }

  v66 = objc_msgSend_name(v8, v64, v65);
  v68 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v67, 18);
  v70 = objc_msgSend_isEqualToString_(v66, v69, v68);

  if (!v70)
  {
    v34 = 1;
    goto LABEL_10;
  }

  v73 = objc_msgSend_userInfo(v8, v71, v72);
  v75 = objc_msgSend_objectForKeyedSubscript_(v73, v74, @"function");
  v78 = objc_msgSend_integerValue(v75, v76, v77);

  if (!v78)
  {
    v82 = @"function";
    v26 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v79, 0);
    v83 = v26;
    v81 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v80, &v83, &v82, 1);
    v9[2](v9, 27, v81);

    goto LABEL_8;
  }

LABEL_9:
  v34 = 2;
LABEL_10:

  v35 = *MEMORY[0x1E69E9840];
  return v34;
}

uint64_t sub_188639BEC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_name(v8, v10, v11);
  v14 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v13, 9);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v15, v14);

  if (isEqualToString)
  {
    objc_msgSend_transitionToState_withEvent_(v7, v17, *(a1 + 32), v8);
  }

  else
  {
    v19 = objc_msgSend_name(v8, v17, v18);
    v21 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v20, 8);
    v23 = objc_msgSend_isEqualToString_(v19, v22, v21);

    if (v23)
    {
      v9[2](v9, 17, 0);
    }

    else
    {
      v28 = objc_msgSend_name(v8, v24, v25);
      v30 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v29, 12);
      v32 = objc_msgSend_isEqualToString_(v28, v31, v30);

      if (!v32)
      {
        v26 = 1;
        goto LABEL_7;
      }

      objc_msgSend_transitionToState_withEvent_(v7, v33, *(a1 + 40), v8);
    }
  }

  v26 = 2;
LABEL_7:

  return v26;
}

void sub_188639D58(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = (a4 + 2);
  v5 = a4[2];
  v6 = a4;
  v5();
  (*v4)(v6, 16, 0);
  (*v4)(v6, 12, 0);
}

uint64_t sub_188639DE8(uint64_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_name(v6, v7, v8);
  v11 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v10, 9);
  isEqualToString = objc_msgSend_isEqualToString_(v9, v12, v11);

  if (!isEqualToString)
  {
    v19 = objc_msgSend_name(v6, v14, v15);
    v21 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v20, 8);
    v23 = objc_msgSend_isEqualToString_(v19, v22, v21);

    if (v23)
    {
      *(*(a1[5] + 8) + 24) = 1;
    }

    else
    {
      v26 = objc_msgSend_name(v6, v24, v25);
      v28 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v27, 7);
      v30 = objc_msgSend_isEqualToString_(v26, v29, v28);

      if (v30)
      {
        v16 = a1[6];
        goto LABEL_3;
      }

      v33 = objc_msgSend_name(v6, v31, v32);
      v35 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v34, 6);
      v37 = objc_msgSend_isEqualToString_(v33, v36, v35);

      v17 = 1;
      if (!v37)
      {
        goto LABEL_5;
      }

      *(*(a1[6] + 8) + 24) = 1;
    }

    if (*(*(a1[6] + 8) + 24) == 1 && *(*(a1[5] + 8) + 24) == 1)
    {
      objc_msgSend_transitionToState_withEvent_(v5, v24, a1[4], v6);
    }

    goto LABEL_4;
  }

  v16 = a1[5];
LABEL_3:
  *(*(v16 + 8) + 24) = 0;
LABEL_4:
  v17 = 2;
LABEL_5:

  return v17;
}

void sub_188639FB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a3 + 16);
  v6 = a4;
  v5(a3, 2);
  v6[2](v6, 6, 0);
  v6[2](v6, 23, 0);
}

void sub_18863A04C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = (a4 + 2);
  v6 = a4[2];
  v7 = a4;
  v8 = a3;
  v6(v7, 9, 0);
  (*v5)(v7, 7, 0);

  v8[2](v8, 2);
}

uint64_t sub_18863A0E4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_name(v8, v10, v11);
  v14 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v13, 9);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v15, v14);

  if (isEqualToString)
  {
    objc_msgSend_transitionToState_withEvent_(v7, v17, *(a1 + 32), v8);
  }

  else
  {
    v19 = objc_msgSend_name(v8, v17, v18);
    v21 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v20, 8);
    v23 = objc_msgSend_isEqualToString_(v19, v22, v21);

    if (v23)
    {
      v9[2](v9, 17, 0);
    }

    else
    {
      v26 = objc_msgSend_name(v8, v24, v25);
      v28 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v27, 12);
      v30 = objc_msgSend_isEqualToString_(v26, v29, v28);

      if ((v30 & 1) == 0)
      {
        v33 = objc_msgSend_name(v8, v31, v32);
        v35 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v34, 17);
        v37 = objc_msgSend_isEqualToString_(v33, v36, v35);

        if ((v37 & 1) == 0)
        {
          v42 = objc_msgSend_name(v8, v38, v39);
          v44 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v43, 3);
          v46 = objc_msgSend_isEqualToString_(v42, v45, v44);

          if (!v46)
          {
            v40 = 1;
            goto LABEL_9;
          }

          v9[2](v9, 9, 0);
          v9[2](v9, 8, 0);
          objc_msgSend_transitionToState_withEvent_(v7, v47, *(a1 + 40), v8);
        }
      }
    }
  }

  v40 = 2;
LABEL_9:

  return v40;
}

void sub_18863A300(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v20 = a2;
  v5 = a4;
  v8 = objc_msgSend_name(v20, v6, v7);
  v10 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v9, 16);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v11, v10);

  if ((isEqualToString & 1) != 0 || (objc_msgSend_name(v20, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v16, 3), v17 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend_isEqualToString_(v15, v18, v17), v17, v15, (v19 & 1) == 0))
  {
    v5[2](v5, 24, 0);
  }
}

uint64_t sub_18863A400(uint64_t a1, void *a2, void *a3, void *a4)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_name(v8, v10, v11);
  v14 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v13, 15);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v15, v14);

  if (isEqualToString)
  {
    objc_msgSend_transitionToState_withEvent_(v7, v17, *(a1 + 32), v8);
  }

  else
  {
    v20 = objc_msgSend_name(v8, v17, v18);
    v22 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v21, 18);
    v24 = objc_msgSend_isEqualToString_(v20, v23, v22);

    if (!v24 || (objc_msgSend_userInfo(v8, v25, v26), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v27, v28, @"function"), v29 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend_integerValue(v29, v30, v31), v29, v27, v32 != 1))
    {
      v19 = 1;
      goto LABEL_8;
    }

    v39 = @"function";
    v34 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v33, 1);
    v40[0] = v34;
    v36 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v35, v40, &v39, 1);
    v9[2](v9, 27, v36);
  }

  v19 = 2;
LABEL_8:

  v37 = *MEMORY[0x1E69E9840];
  return v19;
}

void sub_18863A5E0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  *(*(*(a1 + 32) + 8) + 24) = 0;
  v5 = *(a3 + 16);
  v6 = a4;
  v5(a3, 3);
  v6[2](v6, 25, 0);
}

void sub_18863A664(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = *(*(*(a1 + 32) + 8) + 24);
  v6 = (a4 + 2);
  v7 = a4[2];
  v8 = a4;
  v9 = a3;
  if (v5 == 1)
  {
    v7(v8, 9, 0);
    v7 = *v6;
  }

  v7(v8, 21, 0);

  v9[2](v9, 3);
}

uint64_t sub_18863A718(uint64_t a1, void *a2, void *a3, void *a4)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = objc_msgSend_name(v8, v10, v11);
  v14 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v13, 17);
  isEqualToString = objc_msgSend_isEqualToString_(v12, v15, v14);

  if (isEqualToString)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    v19 = objc_msgSend_name(v8, v17, v18);
    v21 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v20, 16);
    v23 = objc_msgSend_isEqualToString_(v19, v22, v21);

    if (!v23)
    {
      v28 = objc_msgSend_name(v8, v17, v24);
      v30 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v29, 18);
      v32 = objc_msgSend_isEqualToString_(v28, v31, v30);

      if (v32)
      {
        v35 = objc_msgSend_userInfo(v8, v33, v34);
        v37 = objc_msgSend_objectForKeyedSubscript_(v35, v36, @"function");
        v40 = objc_msgSend_integerValue(v37, v38, v39);

        if (v40 == 2)
        {
          v50 = @"function";
          v25 = 2;
          v42 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v41, 2);
          v51[0] = v42;
          v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v43, v51, &v50, 1);
          v9[2](v9, 27, v44);

          goto LABEL_7;
        }
      }

      else
      {
        v45 = objc_msgSend_name(v8, v33, v34);
        v47 = objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v46, 15);
        v49 = objc_msgSend_isEqualToString_(v45, v48, v47);

        if (v49)
        {
          goto LABEL_6;
        }
      }

      v25 = 1;
      goto LABEL_7;
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  objc_msgSend_transitionToState_withEvent_(v7, v17, *(a1 + 32), v8);
LABEL_6:
  v25 = 2;
LABEL_7:

  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

void sub_18863ADD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  objc_destroyWeak((v9 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v10 - 64));
  _Unwind_Resume(a1);
}

uint64_t sub_18863AE08(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"function");

  v10 = objc_msgSend_integerValue(v7, v8, v9);
  v12 = WeakRetained;
  if (v10 == *(a1 + 48))
  {
    v11 = WeakRetained;
    if (a2 == 27)
    {
      v13 = 1;
    }

    else
    {
      if (a2 != 28)
      {
        goto LABEL_7;
      }

      v13 = 0;
    }

    *(*(*(a1 + 32) + 8) + 24) = v13;
    v11 = objc_msgSend_setInternalActionHandler_(WeakRetained, WeakRetained, 0);
    v12 = WeakRetained;
  }

LABEL_7:

  return MEMORY[0x1EEE66BB8](v11, v12);
}

void sub_18863B0C8(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (a2 <= 26)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v9 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v16 = v9;
      v18 = objc_msgSend_nameFromResponseAction_(CKUploadRequestManagerStateMachine, v17, a2);
      v19 = @" with userInfo ";
      v20 = &stru_1EFA32970;
      *v21 = 138543874;
      *&v21[4] = v18;
      if (v5)
      {
        v20 = v5;
      }

      else
      {
        v19 = &stru_1EFA32970;
      }

      *&v21[12] = 2114;
      *&v21[14] = v19;
      v22 = 2112;
      v23 = v20;
      _os_log_debug_impl(&dword_1883EA000, v16, OS_LOG_TYPE_DEBUG, "Invoking state action %{public}@%{public}@%@", v21, 0x20u);
    }
  }

  v10 = objc_msgSend_internalActionHandler(WeakRetained, v6, v7, *v21);

  if (v10)
  {
    v13 = objc_msgSend_internalActionHandler(WeakRetained, v11, v12);
    (v13)[2](v13, a2, v5);
  }

  v14 = objc_msgSend_actionHandler(WeakRetained, v11, v12);
  (v14)[2](v14, a2, v5);

  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_18863B2A0(uint64_t a1, void *a2)
{
  v90 = *MEMORY[0x1E69E9840];
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v6 = objc_loadWeakRetained((a1 + 72));
  v7 = 0x1E6999000uLL;
  v12 = objc_msgSend_enterState(MEMORY[0x1E6999530], v8, v9);
  if (v12 == v4)
  {
    isEqualToString = 1;
  }

  else
  {
    v15 = objc_msgSend_exitState(MEMORY[0x1E6999530], v10, v11);
    if (v15 == v4)
    {
      isEqualToString = 1;
    }

    else
    {
      v2 = objc_msgSend_initialTransition(MEMORY[0x1E6999530], v13, v14);
      if (v2 == v4)
      {
        isEqualToString = 1;
      }

      else
      {
        v18 = objc_msgSend_name(v4, v16, v17);
        objc_msgSend_nameFromStateEvent_(CKUploadRequestManagerStateMachine, v19, 18);
        v20 = a1;
        v21 = WeakRetained;
        v23 = v22 = v6;
        isEqualToString = objc_msgSend_isEqualToString_(v18, v24, v23);

        v6 = v22;
        WeakRetained = v21;
        a1 = v20;
        v7 = 0x1E6999000;
      }
    }
  }

  v28 = objc_msgSend_userInfo(v4, v26, v27);
  v30 = objc_msgSend_objectForKeyedSubscript_(v28, v29, @"uuid");

  if ((isEqualToString & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v33 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v69 = v33;
      *buf = 138412802;
      v85 = v4;
      v86 = 2048;
      v87 = objc_msgSend_hash(v30, v70, v71);
      v88 = 2112;
      v89 = v6;
      _os_log_debug_impl(&dword_1883EA000, v69, OS_LOG_TYPE_DEBUG, "Processing event %@ (hash %lu) in state %@", buf, 0x20u);
    }
  }

  v34 = objc_msgSend_initialTransition(*(v7 + 1328), v31, v32);

  if (v34 == v4)
  {
    objc_msgSend_setEventCausingTransition_(WeakRetained, v35, 0);
LABEL_37:
    v42 = 2;
    goto LABEL_38;
  }

  v37 = objc_msgSend_enterState(*(v7 + 1328), v35, v36);

  if (v37 == v4)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v43 = ck_log_facility_data_repair;
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v74 = objc_msgSend_eventCausingTransition(WeakRetained, v44, v45);
      if (v74)
      {
        v80 = MEMORY[0x1E696AEC0];
        v2 = objc_msgSend_eventCausingTransition(WeakRetained, v72, v73);
        v75 = objc_msgSend_stringWithFormat_(v80, v81, @" with event %@", v2);
      }

      else
      {
        v75 = &stru_1EFA32970;
      }

      *buf = 138412546;
      v85 = v6;
      v86 = 2112;
      v87 = v75;
      _os_log_debug_impl(&dword_1883EA000, v43, OS_LOG_TYPE_DEBUG, "Entering state %@%@", buf, 0x16u);
      if (v74)
      {
      }
    }

    if (!*(a1 + 32))
    {
      goto LABEL_37;
    }

    v48 = objc_msgSend_enterStateHandler(WeakRetained, v46, v47);

    v49 = *(a1 + 32);
    v54 = objc_msgSend_eventCausingTransition(WeakRetained, v50, v51);
    if (v48)
    {
      v55 = objc_msgSend_enterStateHandler(WeakRetained, v52, v53);
LABEL_33:
      v66 = v55;
      (*(v49 + 16))(v49, v54, v55, *(a1 + 40));

LABEL_36:
      goto LABEL_37;
    }

LABEL_35:
    (*(v49 + 16))(v49, v54, &unk_1EFA2F908, *(a1 + 40));
    goto LABEL_36;
  }

  v40 = objc_msgSend_exitState(*(v7 + 1328), v38, v39);

  if (v40 == v4)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v56 = ck_log_facility_data_repair;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
    {
      v78 = objc_msgSend_eventCausingTransition(WeakRetained, v57, v58);
      if (v78)
      {
        v82 = MEMORY[0x1E696AEC0];
        v2 = objc_msgSend_eventCausingTransition(WeakRetained, v76, v77);
        v79 = objc_msgSend_stringWithFormat_(v82, v83, @" with event %@", v2);
      }

      else
      {
        v79 = &stru_1EFA32970;
      }

      *buf = 138412546;
      v85 = v6;
      v86 = 2112;
      v87 = v79;
      _os_log_debug_impl(&dword_1883EA000, v56, OS_LOG_TYPE_DEBUG, "Exiting state %@%@", buf, 0x16u);
      if (v78)
      {
      }
    }

    if (!*(a1 + 48))
    {
      goto LABEL_37;
    }

    v61 = objc_msgSend_exitStateHandler(WeakRetained, v59, v60);

    v49 = *(a1 + 48);
    v54 = objc_msgSend_eventCausingTransition(WeakRetained, v62, v63);
    if (v61)
    {
      v55 = objc_msgSend_exitStateHandler(WeakRetained, v64, v65);
      goto LABEL_33;
    }

    goto LABEL_35;
  }

  v41 = *(a1 + 56);
  if (v41)
  {
    v42 = (*(v41 + 16))(v41, WeakRetained, v4, *(a1 + 40));
  }

  else
  {
    v42 = 1;
  }

LABEL_38:

  v67 = *MEMORY[0x1E69E9840];
  return v42;
}

void sub_18863D2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18863D2E4(uint64_t a1, void *a2)
{
  v3 = objc_msgSend_objectForKeyedSubscript_(a2, a2, @"LastFetchedDate");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

void sub_18863D338(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error getting next fetch date: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_18863D510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18863D528(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_objectForKeyedSubscript_(a2, a2, @"CurrentUser");
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = objc_opt_class();
    v11 = 0;
    v7 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v4, v6, v5, v3, &v11);
    v8 = v11;
    if (v8)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v9 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v13 = v8;
        _os_log_error_impl(&dword_1883EA000, v9, OS_LOG_TYPE_ERROR, "Error unarchiving current user: %@", buf, 0xCu);
      }
    }

    else
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_18863D684(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error getting current user: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_18863D8F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18863D910(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v47 = a2;
  v44 = objc_msgSend_objectForKeyedSubscript_(v47, v3, @"MissingAsset");
  v6 = objc_msgSend_allValues(v44, v4, v5);
  v45 = objc_opt_new();
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v7 = v6;
  v48 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v50, v56, 16);
  if (v48)
  {
    v9 = *v51;
    v10 = off_1E70BA000;
    v11 = &ck_log_initialization_predicate;
    v46 = *v51;
    do
    {
      v12 = 0;
      do
      {
        if (*v51 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v50 + 1) + 8 * v12);
        v14 = *(a1 + 32);
        v15 = v10[3];
        v16 = objc_opt_class();
        v49 = 0;
        v18 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v14, v17, v16, v13, &v49);
        v20 = v49;
        if (v20)
        {
          if (*v11 != -1)
          {
            dispatch_once(v11, ck_log_initialization_block);
          }

          v21 = ck_log_facility_data_repair;
          if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v55 = v20;
            v37 = v21;
            v38 = "Asset metadata decoding error: %@";
            v39 = 12;
            goto LABEL_20;
          }
        }

        else if (v18)
        {
          v23 = objc_msgSend_objectForKeyedSubscript_(v47, v19, @"Unrecoverable");
          objc_msgSend_repairZoneRecordID(v18, v24, v25);
          v26 = a1;
          v28 = v27 = v7;
          objc_msgSend_recordName(v28, v29, v30);
          v32 = v31 = v11;
          v34 = objc_msgSend_objectForKey_(v23, v33, v32);

          v11 = v31;
          v7 = v27;
          a1 = v26;
          v9 = v46;
          v10 = off_1E70BA000;

          if (!v34)
          {
            objc_msgSend_addObject_(v45, v35, v18);
          }
        }

        else
        {
          if (*v11 != -1)
          {
            dispatch_once(v11, ck_log_initialization_block);
          }

          v36 = ck_log_facility_data_repair;
          if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            v37 = v36;
            v38 = "Asset metadata is nil";
            v39 = 2;
LABEL_20:
            _os_log_error_impl(&dword_1883EA000, v37, OS_LOG_TYPE_ERROR, v38, buf, v39);
          }
        }

        ++v12;
      }

      while (v48 != v12);
      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v22, &v50, v56, 16);
      v48 = v40;
    }

    while (v40);
  }

  v41 = *(*(a1 + 40) + 8);
  v42 = *(v41 + 40);
  *(v41 + 40) = v45;

  v43 = *MEMORY[0x1E69E9840];
}

void sub_18863DC44(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error reading asset repair metadata: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_18863DEB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18863DED0(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v41 = a2;
  v38 = objc_msgSend_objectForKeyedSubscript_(v41, v3, @"MissingPackage");
  v6 = objc_msgSend_allValues(v38, v4, v5);
  v39 = objc_opt_new();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v6;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v44, v50, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v45;
    v11 = off_1E70BA000;
    v40 = a1;
    do
    {
      v12 = 0;
      do
      {
        if (*v45 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v44 + 1) + 8 * v12);
        v14 = *(a1 + 32);
        v15 = v11[173];
        v16 = objc_opt_class();
        v43 = 0;
        v18 = objc_msgSend_unarchivedObjectOfClass_fromData_error_(v14, v17, v16, v13, &v43);
        v20 = v43;
        if (v20)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v21 = ck_log_facility_data_repair;
          if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v49 = v20;
            _os_log_error_impl(&dword_1883EA000, v21, OS_LOG_TYPE_ERROR, "Package metadata decoding error: %@", buf, 0xCu);
          }
        }

        else
        {
          v22 = objc_msgSend_objectForKeyedSubscript_(v41, v19, @"Unrecoverable");
          objc_msgSend_repairZoneRecordID(v18, v23, v24);
          v26 = v25 = v11;
          objc_msgSend_recordName(v26, v27, v28);
          v30 = v29 = v10;
          v32 = objc_msgSend_objectForKey_(v22, v31, v30);

          v10 = v29;
          v11 = v25;
          a1 = v40;

          if (!v32)
          {
            objc_msgSend_addObject_(v39, v33, v18);
          }
        }

        ++v12;
      }

      while (v9 != v12);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v34, &v44, v50, 16);
    }

    while (v9);
  }

  v35 = *(*(a1 + 40) + 8);
  v36 = *(v35 + 40);
  *(v35 + 40) = v39;

  v37 = *MEMORY[0x1E69E9840];
}

void sub_18863E18C(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error reading package repair metadata: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_18863E3F0(uint64_t *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"Unrecoverable");
  v7 = objc_msgSend_objectForKey_(v5, v6, a1[4]);

  if (!v7)
  {
    v9 = objc_msgSend_objectForKeyedSubscript_(v3, v8, @"MissingAsset");
    v11 = objc_msgSend_objectForKeyedSubscript_(v3, v10, @"MissingPackage");
    v13 = objc_msgSend_objectForKeyedSubscript_(v9, v12, a1[4]);

    v15 = a1[4];
    if (v13)
    {
      v16 = objc_msgSend_objectForKeyedSubscript_(v9, v14, v15);
      v17 = a1[5];
      v18 = objc_opt_class();
      v19 = &v30;
      objc_msgSend_unarchivedObjectOfClass_fromData_error_(v17, v20, v18, v16, &v30, v29, 0);
    }

    else
    {
      v21 = objc_msgSend_objectForKeyedSubscript_(v11, v14, v15);

      if (!v21)
      {
        goto LABEL_11;
      }

      v16 = objc_msgSend_objectForKeyedSubscript_(v11, v22, a1[4]);
      v23 = a1[5];
      v24 = objc_opt_class();
      v19 = &v29;
      objc_msgSend_unarchivedObjectOfClass_fromData_error_(v23, v25, v24, v16, &v29, 0, v30);
    }
    v21 = ;
    v26 = *v19;

    if (v26)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v27 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v26;
        _os_log_error_impl(&dword_1883EA000, v27, OS_LOG_TYPE_ERROR, "Metadata decoding error: %@", buf, 0xCu);
      }

      goto LABEL_12;
    }

LABEL_11:
    objc_storeStrong((*(a1[6] + 8) + 40), v21);
    v26 = 0;
LABEL_12:
  }

  v28 = *MEMORY[0x1E69E9840];
}

void sub_18863E644(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138543618;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Error reading metadata for record %{public}@: %@", &v7, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

BOOL sub_18863E8C4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = objc_msgSend_objectForKeyedSubscript_(v2, v4, @"Unrecoverable");
  v7 = objc_msgSend_objectForKey_(v5, v6, v3);

  return v7 == 0;
}

uint64_t sub_18863E934(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v8 = objc_msgSend_objectForKeyedSubscript_(v5, v7, a2);
  v10 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v9, v6);

  v12 = objc_msgSend_compare_(v8, v11, v10);
  return v12;
}

void sub_18863EB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18863EB88(uint64_t a1, void *a2)
{
  v20 = a2;
  v4 = objc_msgSend_objectForKeyedSubscript_(v20, v3, @"Scheduler");
  v6 = objc_msgSend_sortedDelayedSyncRecordsForDatabase_(*(a1 + 32), v5, v20);
  v10 = 0;
  if (objc_msgSend_count(v6, v7, v8))
  {
    do
    {
      v11 = objc_msgSend_objectAtIndexedSubscript_(v6, v9, v10);
      v13 = objc_msgSend_objectForKeyedSubscript_(v4, v12, v11);

      v15 = objc_msgSend_compare_(v13, v14, *(a1 + 40));
      if (v15 == 1)
      {
        break;
      }

      ++v10;
    }

    while (v10 < objc_msgSend_count(v6, v9, v16));
  }

  v17 = objc_msgSend_subarrayWithRange_(v6, v9, 0, v10);
  v18 = *(*(a1 + 48) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;
}

void sub_18863EC9C(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error reading scheduled activities before date: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_18863EEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18863EEB8(uint64_t a1, void *a2)
{
  v22 = a2;
  v4 = objc_msgSend_objectForKeyedSubscript_(v22, v3, @"Scheduler");
  v6 = objc_msgSend_sortedDelayedSyncRecordsForDatabase_(*(a1 + 32), v5, v22);
  v11 = 0;
  if (objc_msgSend_count(v6, v7, v8))
  {
    do
    {
      v12 = objc_msgSend_objectAtIndexedSubscript_(v6, v9, v11);
      v14 = objc_msgSend_objectForKeyedSubscript_(v4, v13, v12);

      v16 = objc_msgSend_compare_(v14, v15, *(a1 + 40));
      if (v16 == 1)
      {
        break;
      }

      ++v11;
    }

    while (v11 < objc_msgSend_count(v6, v9, v10));
  }

  v17 = objc_msgSend_count(v6, v9, v10);
  v19 = objc_msgSend_subarrayWithRange_(v6, v18, v11, v17 - v11);
  v20 = *(*(a1 + 48) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;
}

void sub_18863EFD4(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error reading scheduled activities after date: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_18863F254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18863F26C(uint64_t a1, void *a2)
{
  v13 = a2;
  v4 = objc_msgSend_objectForKeyedSubscript_(v13, v3, @"Unrecoverable");
  v6 = objc_msgSend_objectForKey_(v4, v5, *(a1 + 32));

  if (!v6)
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(v13, v7, @"Scheduler");
    v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, *(a1 + 32));
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_18863F324(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error reading scheduled activities for fetching record date: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_18863F4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18863F4F8(uint64_t a1, void *a2)
{
  v13 = a2;
  v4 = objc_msgSend_objectForKeyedSubscript_(v13, v3, @"Unrecoverable");
  v6 = objc_msgSend_objectForKey_(v4, v5, *(a1 + 32));

  if (!v6)
  {
    v8 = objc_msgSend_objectForKeyedSubscript_(v13, v7, @"SchedulerCount");
    v10 = objc_msgSend_objectForKeyedSubscript_(v8, v9, *(a1 + 32));
    *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_integerValue(v10, v11, v12);
  }
}

void sub_18863F5B4(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error reading scheduled activities for fetching record count: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_18863F78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18863F7A4(uint64_t a1, void *a2)
{
  v3 = objc_msgSend_objectForKeyedSubscript_(a2, a2, @"SyncEngineMetadata");
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8](v3, v5);
}

void sub_18863F7F8(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error reading sync engine metadata: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

id sub_18863F97C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_mutableCopy(a2, a2, a3);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v5, *(a1 + 32), @"LastFetchedDate");

  return v4;
}

void sub_18863F9CC(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error setting next fetch date: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

id sub_18863FB50(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_mutableCopy(a2, a2, a3);
  v6 = v4;
  v7 = *(a1 + 32);
  if (v7)
  {
    v14 = 0;
    v8 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v5, v7, 1, &v14);
    v10 = v14;
    if (v10)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v11 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v10;
        _os_log_error_impl(&dword_1883EA000, v11, OS_LOG_TYPE_ERROR, "Error archiving current user: %@", buf, 0xCu);
      }
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v6, v9, v8, @"CurrentUser");
    }
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v5, 0, @"CurrentUser");
  }

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

void sub_18863FCB8(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error setting current user: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

id sub_18863FE8C(uint64_t a1, void *a2, uint64_t a3)
{
  v85 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_mutableCopy(a2, a2, a3);
  v7 = objc_msgSend_recordType(*(a1 + 32), v5, v6);
  if (objc_msgSend_isEqualToString_(v7, v8, @"MissingAsset"))
  {
  }

  else
  {
    v11 = objc_msgSend_recordType(*(a1 + 32), v9, v10);
    isEqualToString = objc_msgSend_isEqualToString_(v11, v12, @"MissingPackage");

    if (!isEqualToString)
    {
      goto LABEL_22;
    }
  }

  v14 = *(a1 + 40);
  v15 = objc_opt_class();
  v17 = objc_msgSend_repairRecordToMetadata_(v15, v16, *(a1 + 32));
  v80 = 0;
  v19 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], v18, v17, 1, &v80);
  v22 = v80;
  if (v22)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v23 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 32);
      v25 = v23;
      v28 = objc_msgSend_recordID(v24, v26, v27);
      *buf = 138412546;
      v82 = v28;
      v83 = 2112;
      v84 = v22;
      _os_log_error_impl(&dword_1883EA000, v25, OS_LOG_TYPE_ERROR, "Error encoding repair record %@: %@", buf, 0x16u);
    }

    goto LABEL_21;
  }

  v29 = objc_msgSend_recordType(*(a1 + 32), v20, v21);
  v31 = objc_msgSend_objectForKeyedSubscript_(v4, v30, v29);
  v34 = v31;
  if (!v31)
  {
    v31 = MEMORY[0x1E695E0F8];
  }

  v35 = objc_msgSend_mutableCopy(v31, v32, v33);

  v38 = objc_msgSend_recordID(*(a1 + 32), v36, v37);
  v41 = objc_msgSend_recordName(v38, v39, v40);
  v43 = objc_msgSend_objectForKeyedSubscript_(v35, v42, v41);
  if (!v43)
  {

    v55 = v35;
    goto LABEL_15;
  }

  v46 = v43;
  objc_msgSend_recordID(*(a1 + 32), v44, v45);
  v79 = v17;
  v48 = v47 = v4;
  v51 = objc_msgSend_recordName(v48, v49, v50);
  v53 = objc_msgSend_objectForKeyedSubscript_(v35, v52, v51);
  isEqual = objc_msgSend_isEqual_(v19, v54, v53);

  v4 = v47;
  v17 = v79;

  v55 = v35;
  if ((isEqual & 1) == 0)
  {
LABEL_15:
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v56 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v70 = *(a1 + 32);
      v71 = v56;
      v74 = objc_msgSend_recordType(v70, v72, v73);
      v77 = objc_msgSend_recordID(*(a1 + 32), v75, v76);
      *buf = 138543618;
      v82 = v74;
      v83 = 2112;
      v84 = v77;
      _os_log_debug_impl(&dword_1883EA000, v71, OS_LOG_TYPE_DEBUG, "Persisting %{public}@ record %@", buf, 0x16u);
    }

    v59 = objc_msgSend_recordID(*(a1 + 32), v57, v58);
    v62 = objc_msgSend_recordName(v59, v60, v61);
    objc_msgSend_setObject_forKeyedSubscript_(v55, v63, v19, v62);

    v66 = objc_msgSend_recordType(*(a1 + 32), v64, v65);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v67, v55, v66);
  }

  v22 = 0;
LABEL_21:

LABEL_22:
  v68 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_1886402B0(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = v4;
      v10 = objc_msgSend_recordID(v6, v8, v9);
      v11 = 138412546;
      v12 = v10;
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&dword_1883EA000, v7, OS_LOG_TYPE_ERROR, "Error saving repair record %@: %@", &v11, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

id sub_1886404C0(uint64_t a1, void *a2, uint64_t a3)
{
  v87 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_mutableCopy(a2, a2, a3);
  v5 = @"MissingAsset";
  v7 = objc_msgSend_objectForKeyedSubscript_(v4, v6, @"MissingAsset");
  v10 = objc_msgSend_recordName(*(a1 + 32), v8, v9);
  v12 = objc_msgSend_objectForKeyedSubscript_(v7, v11, v10);

  if (v12)
  {
    goto LABEL_20;
  }

  v5 = @"MissingPackage";
  v14 = objc_msgSend_objectForKeyedSubscript_(v4, v13, @"MissingPackage");
  v17 = objc_msgSend_recordName(*(a1 + 32), v15, v16);
  v19 = objc_msgSend_objectForKeyedSubscript_(v14, v18, v17);

  if (v19)
  {
LABEL_20:
    v20 = v5;
    if (v20)
    {
      v21 = v20;
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v22 = ck_log_facility_data_repair;
      if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
      {
        v84 = *(a1 + 32);
        v85 = 138412290;
        v86 = v84;
        _os_log_debug_impl(&dword_1883EA000, v22, OS_LOG_TYPE_DEBUG, "Deleting repair record %@", &v85, 0xCu);
      }

      v24 = objc_msgSend_objectForKeyedSubscript_(v4, v23, v21);
      v27 = objc_msgSend_mutableCopy(v24, v25, v26);

      v30 = objc_msgSend_recordName(*(a1 + 32), v28, v29);
      objc_msgSend_removeObjectForKey_(v27, v31, v30);

      objc_msgSend_setObject_forKeyedSubscript_(v4, v32, v27, v21);
      v34 = objc_msgSend_objectForKeyedSubscript_(v4, v33, @"Scheduler");
      v37 = objc_msgSend_recordName(*(a1 + 32), v35, v36);
      v39 = objc_msgSend_objectForKey_(v34, v38, v37);

      if (v39)
      {
        v41 = objc_msgSend_objectForKeyedSubscript_(v4, v40, @"Scheduler");
        v44 = objc_msgSend_mutableCopy(v41, v42, v43);

        v47 = objc_msgSend_recordName(*(a1 + 32), v45, v46);
        objc_msgSend_removeObjectForKey_(v44, v48, v47);

        objc_msgSend_setObject_forKeyedSubscript_(v4, v49, v44, @"Scheduler");
      }

      v50 = objc_msgSend_objectForKeyedSubscript_(v4, v40, @"SchedulerCount");
      v53 = objc_msgSend_recordName(*(a1 + 32), v51, v52);
      v55 = objc_msgSend_objectForKey_(v50, v54, v53);

      if (v55)
      {
        v57 = objc_msgSend_objectForKeyedSubscript_(v4, v56, @"SchedulerCount");
        v60 = objc_msgSend_mutableCopy(v57, v58, v59);

        v63 = objc_msgSend_recordName(*(a1 + 32), v61, v62);
        objc_msgSend_removeObjectForKey_(v60, v64, v63);

        objc_msgSend_setObject_forKeyedSubscript_(v4, v65, v60, @"SchedulerCount");
      }

      v66 = objc_msgSend_objectForKeyedSubscript_(v4, v56, @"Unrecoverable");
      v69 = objc_msgSend_recordName(*(a1 + 32), v67, v68);
      v71 = objc_msgSend_objectForKey_(v66, v70, v69);

      if (v71)
      {
        v73 = objc_msgSend_objectForKeyedSubscript_(v4, v72, @"Unrecoverable");
        v76 = objc_msgSend_mutableCopy(v73, v74, v75);

        v79 = objc_msgSend_recordName(*(a1 + 32), v77, v78);
        objc_msgSend_removeObjectForKey_(v76, v80, v79);

        objc_msgSend_setObject_forKeyedSubscript_(v4, v81, v76, @"Unrecoverable");
      }
    }
  }

  v82 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_1886408D4(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Error deleting repair record %@: %@", &v7, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

id sub_1886409EC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_mutableCopy(a2, a2, a3);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v4, 0, @"MissingAsset");
  objc_msgSend_setObject_forKeyedSubscript_(v3, v5, 0, @"MissingPackage");
  objc_msgSend_setObject_forKeyedSubscript_(v3, v6, 0, @"Scheduler");
  objc_msgSend_setObject_forKeyedSubscript_(v3, v7, 0, @"SchedulerCount");
  objc_msgSend_setObject_forKeyedSubscript_(v3, v8, 0, @"Unrecoverable");

  return v3;
}

void sub_188640A90(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error clearing repair records: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

id sub_188640C98(uint64_t a1, void *a2, uint64_t a3)
{
  v53 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_mutableCopy(a2, a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"Scheduler");
  v9 = objc_msgSend_mutableCopy(v6, v7, v8);
  v12 = v9;
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v10, v11);
  }

  v14 = v13;

  v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, *(a1 + 32));
  if (!v16 || (v18 = v16, v19 = *(a1 + 40), objc_msgSend_objectForKeyedSubscript_(v14, v17, *(a1 + 32)), v20 = objc_claimAutoreleasedReturnValue(), LOBYTE(v19) = objc_msgSend_isEqual_(v19, v21, v20), v20, v18, (v19 & 1) == 0))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v23 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v47 = *(a1 + 32);
      v48 = *(a1 + 40);
      v49 = 138543618;
      v50 = v47;
      v51 = 2114;
      v52 = v48;
      _os_log_debug_impl(&dword_1883EA000, v23, OS_LOG_TYPE_DEBUG, "Persisting delayed sync for record %{public}@ with date %{public}@", &v49, 0x16u);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v14, v24, *(a1 + 40), *(a1 + 32));
    objc_msgSend_setObject_forKeyedSubscript_(v4, v25, v14, @"Scheduler");
  }

  if (*(a1 + 48) == 1)
  {
    v26 = objc_msgSend_objectForKeyedSubscript_(v4, v22, @"SchedulerCount");
    v29 = objc_msgSend_mutableCopy(v26, v27, v28);
    v32 = v29;
    if (v29)
    {
      v33 = v29;
    }

    else
    {
      v33 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v30, v31);
    }

    v34 = v33;

    v35 = MEMORY[0x1E696AD98];
    v37 = objc_msgSend_objectForKeyedSubscript_(v34, v36, *(a1 + 32));
    v40 = objc_msgSend_integerValue(v37, v38, v39);
    v42 = objc_msgSend_numberWithInteger_(v35, v41, v40 + 1);
    objc_msgSend_setObject_forKeyedSubscript_(v34, v43, v42, *(a1 + 32));

    objc_msgSend_setObject_forKeyedSubscript_(v4, v44, v34, @"SchedulerCount");
  }

  v45 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_188640F18(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138543618;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Error saving delayed sync for record %{public}@: %@", &v7, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

id sub_188641108(uint64_t a1, void *a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_mutableCopy(a2, a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"Scheduler");
  v9 = objc_msgSend_mutableCopy(v6, v7, v8);
  v12 = v9;
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v10, v11);
  }

  v14 = v13;

  v16 = objc_msgSend_objectForKeyedSubscript_(v4, v15, @"SchedulerCount");
  v19 = objc_msgSend_mutableCopy(v16, v17, v18);
  v22 = v19;
  if (v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v20, v21);
  }

  v24 = v23;

  v26 = objc_msgSend_objectForKeyedSubscript_(v14, v25, *(a1 + 32));

  if (v26)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v27 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
    {
      v34 = *(a1 + 32);
      v35 = 138543362;
      v36 = v34;
      _os_log_debug_impl(&dword_1883EA000, v27, OS_LOG_TYPE_DEBUG, "Deleting delayed sync for record %{public}@", &v35, 0xCu);
    }

    objc_msgSend_removeObjectForKey_(v14, v28, *(a1 + 32));
    objc_msgSend_removeObjectForKey_(v24, v29, *(a1 + 32));
    objc_msgSend_setObject_forKeyedSubscript_(v4, v30, v14, @"Scheduler");
    objc_msgSend_setObject_forKeyedSubscript_(v4, v31, v24, @"SchedulerCount");
  }

  v32 = *MEMORY[0x1E69E9840];

  return v4;
}

void sub_188641304(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138543618;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Error deleting delayed sync for record %{public}@: %@", &v7, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

id sub_18864141C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_mutableCopy(a2, a2, a3);
  objc_msgSend_setObject_forKeyedSubscript_(v3, v4, 0, @"Scheduler");
  objc_msgSend_setObject_forKeyedSubscript_(v3, v5, 0, @"SchedulerCount");

  return v3;
}

void sub_18864147C(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error clearing scheduled activities: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

id sub_188641650(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_mutableCopy(a2, a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"Unrecoverable");
  v9 = objc_msgSend_mutableCopy(v6, v7, v8);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v12 = v11;

  objc_msgSend_setObject_forKeyedSubscript_(v12, v13, MEMORY[0x1E695E118], *(a1 + 32));
  objc_msgSend_setObject_forKeyedSubscript_(v4, v14, v12, @"Unrecoverable");

  return v4;
}

void sub_18864170C(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138543618;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1883EA000, v4, OS_LOG_TYPE_ERROR, "Error marking record %{public}@ unrecoverable: %@", &v7, 0x16u);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

id sub_1886418AC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_mutableCopy(a2, a2, a3);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v5, *(a1 + 32), @"SyncEngineMetadata");
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v6 = ck_log_facility_data_repair;
  if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_DEBUG))
  {
    *v8 = 0;
    _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "Persisting sync engine metadata", v8, 2u);
  }

  return v4;
}

void sub_18864197C(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error saving sync engine metadata: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_188641A84(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error clearing database: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_188641BF0(uint64_t a1, const char *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);
  v7 = objc_msgSend_databaseURL(*(a1 + 32), v5, v6);
  v20 = 0;
  objc_msgSend_removeItemAtURL_error_(v4, v8, v7, &v20);
  v9 = v20;

  if (v9)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 32);
      v13 = v10;
      v16 = objc_msgSend_databaseURL(v12, v14, v15);
      v19 = objc_msgSend_CKSanitizedPath(v16, v17, v18);
      *buf = 138543362;
      v22 = v19;
      _os_log_error_impl(&dword_1883EA000, v13, OS_LOG_TYPE_ERROR, "Could not delete upload request database at %{public}@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1886421B4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], a2, a3);
  v7 = objc_msgSend_databaseURL(*(a1 + 32), v5, v6);
  v10 = objc_msgSend_URLByDeletingLastPathComponent(v7, v8, v9);
  v55 = 0;
  v13 = objc_msgSend_path(v10, v11, v12);
  isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v4, v14, v13, &v55);

  if (!objc_msgSend_firstInvocation(*(a1 + 32), v16, v17) || (isDirectory & 1) != 0)
  {
    if (!isDirectory)
    {
      v33 = &stru_1EFA32970;
      v34 = @"could not be found";
LABEL_16:
      v37 = *(a1 + 40);
      v22 = objc_msgSend_errorWithDomain_code_error_URL_format_(CKPrettyError, v18, @"CKErrorDomain", 10000, 0, v10, @"UploadRequest cache directory %@%@", v34, v33);
      (*(v37 + 16))(v37, v22);
      goto LABEL_29;
    }

LABEL_7:
    if (v55)
    {
      v53 = 0;
      v23 = objc_msgSend_dataWithContentsOfURL_options_error_(MEMORY[0x1E695DEF0], v18, v7, 0, &v53);
      v24 = v53;
      v22 = v24;
      if (v24 && objc_msgSend_code(v24, v25, v26) != 260)
      {
        v38 = *(a1 + 40);
        v39 = objc_msgSend_errorWithDomain_code_error_URL_format_(CKPrettyError, v25, @"CKErrorDomain", 10000, v22, v7, @"Could not open UploadRequest cache");
        (*(v38 + 16))(v38, v39);

        v27 = MEMORY[0x1E695E0F8];
        goto LABEL_28;
      }

      if (v23)
      {
        v52 = 0;
        v27 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x1E696AE40], v25, v23, 0, 0, &v52);
        v28 = v52;

        if (v28)
        {
          v30 = *(a1 + 40);
          v31 = objc_msgSend_errorWithDomain_code_error_format_(CKPrettyError, v29, @"CKErrorDomain", 10000, v28, @"UploadRequest cache appears to be corrupt, deleting for future retry");
          (*(v30 + 16))(v30, v31);

          objc_msgSend_removeItemAtURL_error_(v4, v32, v7, 0);
          v22 = v28;
LABEL_28:

          goto LABEL_29;
        }

        v22 = 0;
      }

      else
      {
        v27 = MEMORY[0x1E695E0F8];
      }

      v40 = (*(*(a1 + 48) + 16))();
      v23 = v40;
      if (!v40 || (objc_msgSend_isEqualToDictionary_(v40, v41, v27) & 1) != 0)
      {
LABEL_22:
        (*(*(a1 + 40) + 16))();
        goto LABEL_28;
      }

      v51 = 0;
      v43 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x1E696AE40], v42, v23, 200, 0, &v51);
      v44 = v51;

      if (v44)
      {
        v46 = *(a1 + 40);
        v47 = objc_msgSend_errorWithDomain_code_error_format_(CKPrettyError, v45, @"CKErrorDomain", 10000, v44, @"Could not serialize UploadRequest cache");
        (*(v46 + 16))(v46, v47);
        v22 = v44;
      }

      else
      {
        v50 = 0;
        objc_msgSend_writeToURL_options_error_(v43, v45, v7, 1, &v50);
        v22 = v50;
        if (!v22)
        {

          goto LABEL_22;
        }

        v49 = *(a1 + 40);
        v47 = objc_msgSend_errorWithDomain_code_error_URL_format_(CKPrettyError, v48, @"CKErrorDomain", 10000, v22, v7, @"Could not persist UploadRequest cache");
        (*(v49 + 16))(v49, v47);
      }

      goto LABEL_28;
    }

    v33 = @" but is not a directory";
    v34 = @"exists";
    goto LABEL_16;
  }

  v54 = 0;
  v19 = objc_msgSend_createDirectoryAtURL_withIntermediateDirectories_attributes_error_(v4, v18, v10, 1, 0, &v54);
  v20 = v54;
  v22 = v20;
  if (v19 && !v20)
  {
    v55 = 1;
    objc_msgSend_setFirstInvocation_(*(a1 + 32), v21, 0);
    goto LABEL_7;
  }

  v35 = *(a1 + 40);
  v36 = objc_msgSend_errorWithDomain_code_error_URL_format_(CKPrettyError, v21, @"CKErrorDomain", 10000, v20, v10, @"Could not create UploadRequest cache directory");
  (*(v35 + 16))(v35, v36);

LABEL_29:
}

void sub_188642BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188642BD8(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_data_repair;
    if (os_log_type_enabled(ck_log_facility_data_repair, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_error_impl(&dword_1883EA000, v3, OS_LOG_TYPE_ERROR, "Error reading all data: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_188642F04(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v9 = a3;
  if (v6)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = v12;
    if (!v12)
    {
      v3 = objc_msgSend_mainBundle(MEMORY[0x1E696AAE8], v7, v8);
      v13 = objc_msgSend_bundleIdentifier(v3, v14, v15);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_18864302C;
    v18[3] = &unk_1E70BC540;
    v19 = *(a1 + 56);
    objc_msgSend_reportTelemetryEventWithEventType_event_bundleIdentifier_completionHandler_(v6, v16, v10, v11, v13, v18);
    if (!v12)
    {
    }
  }

  else
  {
    v17 = *(a1 + 56);
    if (v17)
    {
      (*(v17 + 16))(v17, v9);
    }
  }
}

uint64_t sub_18864302C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_188643B44()
{
  v0 = objc_opt_new();
  v1 = qword_1ED4B62A8;
  qword_1ED4B62A8 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id sub_188644268(uint64_t a1, void *a2, void *a3)
{
  v59[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_containerInfo(v5, v7, v8);
  v12 = objc_msgSend_setupInfo(*(a1 + 32), v10, v11);
  v13 = v9;
  v16 = objc_msgSend_containerID(v13, v14, v15);
  v19 = objc_msgSend_containerID(v12, v17, v18);
  isEqual = objc_msgSend_isEqual_(v16, v20, v19);

  if (!isEqual)
  {
    goto LABEL_9;
  }

  v24 = objc_msgSend_containerOptions(v13, v22, v23);
  v27 = objc_msgSend_containerOptions(v12, v25, v26);
  v30 = objc_msgSend_accountOverrideInfo(v24, v28, v29);
  v33 = objc_msgSend_accountOverrideInfo(v27, v31, v32);
  v34 = CKObjectsAreBothNilOrEqual(v30, v33);

  if (!v34)
  {

LABEL_9:
    goto LABEL_10;
  }

  v37 = objc_msgSend_persona(v24, v35, v36);
  v40 = objc_msgSend_persona(v27, v38, v39);
  v41 = CKObjectsAreBothNilOrEqual(v37, v40);

  if ((v41 & 1) == 0)
  {
LABEL_10:
    v56 = MEMORY[0x1E695E0F0];
    goto LABEL_11;
  }

  v44 = objc_msgSend_record(*(a1 + 40), v42, v43);
  v47 = objc_msgSend_recordType(v5, v45, v46);
  v50 = v47;
  if (v44 && v47 && (objc_msgSend_recordType(v44, v48, v49), v51 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v50, v52, v51), v51, !isEqualToString))
  {
    v56 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v54 = _Block_copy(v6);
    v59[0] = v54;
    v56 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v55, v59, 1);
  }

LABEL_11:
  v57 = *MEMORY[0x1E69E9840];

  return v56;
}

void sub_1886444CC(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Invoking record change handler with record change: %@", &v6, 0xCu);
  }

  v4 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  dispatch_group_leave(*(a1 + 40));
  v5 = *MEMORY[0x1E69E9840];
}

id sub_188644614(void *a1, uint64_t a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v10 = objc_msgSend_sharedManager(CKProcessScopedStateManager, v8, v9);
  v13 = objc_msgSend_untrustedEntitlements(v10, v11, v12);
  v15 = sub_188401184(v13, v14);

  if (v15)
  {
    if (qword_1ED4B62D0 != -1)
    {
      dispatch_once(&qword_1ED4B62D0, &unk_1EFA2FBA8);
    }

    v16 = a1;
    objc_sync_enter(v16);
    v17 = [CKAPSMachServiceConnectionKey alloc];
    v19 = objc_msgSend_initWithEnvironmentName_namedDelegatePort_(v17, v18, v6, v7);
    v21 = objc_msgSend_objectForKeyedSubscript_(qword_1ED4B62B8, v20, v19);

    if (!v21)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v23 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEBUG))
      {
        v36 = 138543618;
        v37 = v7;
        v38 = 2114;
        v39 = v6;
        _os_log_debug_impl(&dword_1883EA000, v23, OS_LOG_TYPE_DEBUG, "Creating new singleton APSConnection on port %{public}@ with environment %{public}@", &v36, 0x16u);
      }

      v24 = objc_alloc(MEMORY[0x1E698CF30]);
      v26 = objc_msgSend_initWithEnvironmentName_namedDelegatePort_queue_(v24, v25, v6, v7, qword_1ED4B62C8);
      v27 = [CKAPSMachServiceConnectionDelegate alloc];
      v29 = objc_msgSend_initWithConnection_key_(v27, v28, v26, v19);
      objc_msgSend_setDelegate_(v26, v30, v29);
      objc_msgSend_setObject_forKeyedSubscript_(qword_1ED4B62B8, v31, v26, v19);
      objc_msgSend_setObject_forKeyedSubscript_(qword_1ED4B62C0, v32, v29, v19);
    }

    v33 = objc_msgSend_objectForKeyedSubscript_(qword_1ED4B62B8, v22, v19);

    objc_sync_exit(v16);
  }

  else
  {
    v33 = 0;
  }

  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

void sub_1886448AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], a2, a3);
  v4 = qword_1ED4B62B8;
  qword_1ED4B62B8 = v3;

  v7 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v5, v6);
  v8 = qword_1ED4B62C0;
  qword_1ED4B62C0 = v7;

  v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.cloudkit.apsconnection.machservice", v11);
  v10 = qword_1ED4B62C8;
  qword_1ED4B62C8 = v9;
}

uint64_t sub_188645714(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1EA912C40 = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

Class sub_1886457AC(void *a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v2 = qword_1EA912C40;
  v23 = qword_1EA912C40;
  if (!qword_1EA912C40)
  {
    v17[1] = MEMORY[0x1E69E9820];
    v17[2] = 3221225472;
    v17[3] = sub_188645714;
    v17[4] = &unk_1E70BBE68;
    v18 = &v20;
    v19 = v17;
    v24 = xmmword_1E70BFDA0;
    v25 = *off_1E70BFDB0;
    v26 = 0;
    v21[3] = _sl_dlopen();
    qword_1EA912C40 = *(v18[1] + 24);
    v2 = v21[3];
  }

  _Block_object_dispose(&v20, 8);
  if (v2)
  {
    v5 = v17[0];
    if (!v17[0])
    {
      goto LABEL_5;
    }
  }

  else
  {
    a1 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v3, v4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v10, "void *BackgroundSystemTasksLibrary(void)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(a1, v12, v11, @"CKBackgroundSystemTasks.m", 11, @"%s", v17[0]);

    __break(1u);
  }

  free(v5);
LABEL_5:
  result = objc_getClass("BGRepeatingSystemTaskRequest");
  *(*(a1[4] + 8) + 24) = result;
  if (!*(*(a1[4] + 8) + 24))
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v7, v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v14, "Class getBGRepeatingSystemTaskRequestClass(void)_block_invoke");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v13, v16, v15, @"CKBackgroundSystemTasks.m", 14, @"Unable to find class %s", "BGRepeatingSystemTaskRequest");

    __break(1u);
  }

  qword_1EA919C08 = *(*(a1[4] + 8) + 24);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1886459E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *CKBackgroundTaskStateDescription(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70BFDF0[a1];
  }
}

void sub_188645D4C(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v1 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
    {
      v3 = v1;
      v6 = objc_msgSend_ckShortDescription(WeakRetained, v4, v5);
      *buf = 138412290;
      v9 = v6;
      _os_log_debug_impl(&dword_1883EA000, v3, OS_LOG_TYPE_DEBUG, "[%@] Handling activity expiration", buf, 0xCu);
    }

    sub_188645E6C(WeakRetained);
  }

  v2 = *MEMORY[0x1E69E9840];
}

void sub_188645E6C(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
LABEL_10:
    v15 = *MEMORY[0x1E69E9840];
    return;
  }

  v2 = NSStringFromSelector(sel_state);
  objc_msgSend_willChangeValueForKey_(a1, v3, v2);

  os_unfair_lock_lock((a1 + 8));
  if (*(a1 + 16) == 1)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_INFO))
    {
      v5 = v4;
      v8 = objc_msgSend_ckShortDescription(a1, v6, v7);
      *buf = 138412290;
      v20 = v8;
      _os_log_impl(&dword_1883EA000, v5, OS_LOG_TYPE_INFO, "[%@] Expiring", buf, 0xCu);
    }

    *(a1 + 16) = 2;
    os_unfair_lock_unlock((a1 + 8));
    v9 = NSStringFromSelector(sel_state);
    objc_msgSend_didChangeValueForKey_(a1, v10, v9);

    v13 = objc_msgSend_expirationHandler(a1, v11, v12);
    v14 = v13;
    if (v13)
    {
      (*(v13 + 16))(v13);
    }

    goto LABEL_10;
  }

  os_unfair_lock_unlock((a1 + 8));
  v18 = NSStringFromSelector(sel_state);
  objc_msgSend_didChangeValueForKey_(a1, v16, v18);
  v17 = *MEMORY[0x1E69E9840];
}

void sub_18864698C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1886469AC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__handleActivityUpdate_(WeakRetained, v4, v3);
}

uint64_t sub_18864768C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    result = objc_msgSend_count(*(v4 + 24), a2, a3);
  }

  else
  {
    result = objc_msgSend_count(0, a2, a3);
  }

  if (result)
  {
    v8 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (v8)
    {
      v9 = *(v8 + 24);
    }

    else
    {
      v9 = 0;
    }

    return objc_msgSend_addProperty_value_shouldRedact_(v7, v6, @"subscriptionInfos", v9, 0);
  }

  return result;
}

void sub_1886477C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886477E0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[6];
  }

  v5 = v2;
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_count(v5, v3, v4) > 1;
}

void sub_18864790C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188647A30(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 8) != *(a1 + 40))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_notification_listener;
    if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
    {
      v6 = *(a1 + 40);
      v7 = *(a1 + 32);
      v8[0] = 67109378;
      v8[1] = v6;
      v9 = 2112;
      v10 = v7;
      _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Setting useOpportunisticPushTopics=%d for %@", v8, 0x12u);
    }

    *(*(a1 + 32) + 8) = *(a1 + 40);
    sub_188647B44(*(a1 + 32), v3, v4);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_188647B44(uint64_t a1, const char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = objc_msgSend_queue(a1, a2, a3);
    dispatch_assert_queue_V2(v4);

    v7 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v5, v6);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = objc_msgSend_allKeys(*(a1 + 48), v8, v9);
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v29, v33, 16);
    if (v12)
    {
      v15 = v12;
      v16 = *v30;
      do
      {
        v17 = 0;
        do
        {
          if (*v30 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v29 + 1) + 8 * v17);
          v19 = objc_msgSend_set(MEMORY[0x1E695DFA8], v13, v14);
          objc_msgSend_setObject_forKeyedSubscript_(v7, v20, v19, v18);

          ++v17;
        }

        while (v15 != v17);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v29, v33, 16);
      }

      while (v15);
    }

    v21 = *(a1 + 24);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_188648BE4;
    v27[3] = &unk_1E70BFF30;
    v28 = v7;
    v22 = v7;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v21, v23, v27);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = sub_188648E2C;
    v26[3] = &unk_1E70BFF58;
    v26[4] = a1;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v22, v24, v26);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void sub_188648124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  os_activity_scope_leave((v27 - 144));
  _Unwind_Resume(a1);
}

void sub_188648144(uint64_t a1, void *a2)
{
  v2 = a2;
  if (!a2)
  {
    a2 = *MEMORY[0x1E698CF20];
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = v2;
  dispatch_resume(*(a1 + 32));
}

void sub_1886481B8(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_notification_listener;
  if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v17 = 138412802;
    v18 = v3;
    v19 = 2112;
    v20 = v4;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Starting to listen to subscription %@ for database %@ in %@", &v17, 0x20u);
  }

  v6 = objc_alloc_init(CKSubscriptionInfo);
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v7, *(a1 + 32), 40);
    objc_storeStrong(p_isa + 1, *(a1 + 40));
    objc_storeStrong(p_isa + 2, *(a1 + 56));
    objc_storeStrong(p_isa + 3, *(*(*(a1 + 80) + 8) + 40));
    objc_setProperty_nonatomic_copy(p_isa, v9, *(a1 + 64), 32);
  }

  v11 = objc_msgSend_uniqueKeyForSubscriptionID_inDatabase_(*(a1 + 48), v7, *(a1 + 32), *(a1 + 40));
  v12 = *(a1 + 48);
  if (v12)
  {
    objc_msgSend_setObject_forKeyedSubscript_(*(v12 + 24), v10, p_isa, v11);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(0, v10, p_isa, v11);
  }

  sub_18841F3D0(*(a1 + 48), v13, v14);
  v15 = *(a1 + 72);
  if (v15)
  {
    (*(v15 + 16))(v15, 0);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void sub_188648594(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_notification_listener;
  if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v14 = 138412802;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Stopping listening to subscription %@ for database %@ in %@", &v14, 0x20u);
  }

  v8 = objc_msgSend_uniqueKeyForSubscriptionID_inDatabase_(*(a1 + 48), v3, *(a1 + 32), *(a1 + 40));
  v9 = *(a1 + 48);
  if (v9)
  {
    objc_msgSend_removeObjectForKey_(*(v9 + 24), v7, v8);
  }

  else
  {
    objc_msgSend_removeObjectForKey_(0, v7, v8);
  }

  sub_18841F3D0(*(a1 + 48), v10, v11);
  v12 = *(a1 + 56);
  if (v12)
  {
    (*(v12 + 16))(v12, 0);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1886487E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188648800(uint64_t a1, const char *a2)
{
  v7 = objc_msgSend_uniqueKeyForSubscriptionID_inDatabase_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48));
  v3 = *(a1 + 32);
  if (v3)
  {
    v3 = v3[3];
  }

  v4 = v3;
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, v7);
  *(*(*(a1 + 56) + 8) + 24) = v6 != 0;
}

void sub_188648B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188648B70(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[6];
  }

  v3 = a1[5];
  v8 = v2;
  v5 = objc_msgSend_objectForKeyedSubscript_(v8, v4, v3);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_188648BE4(uint64_t a1, uint64_t a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4[2];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v10 = objc_msgSend_applicationBundleIdentifierForPush(v7, v8, v9);

  if (v10)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_notification_listener;
    if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
    {
      if (v5)
      {
        v25 = v5[5];
      }

      else
      {
        v25 = 0;
      }

      *v27 = 138543618;
      *&v27[4] = v10;
      *&v27[12] = 2112;
      *&v27[14] = v25;
      v26 = v11;
      _os_log_debug_impl(&dword_1883EA000, v26, OS_LOG_TYPE_DEBUG, "Using bundle identifier %{public}@ for push notifications for subscription: %@", v27, 0x16u);
    }

    v13 = *(a1 + 32);
    if (v5)
    {
      objc_msgSend_objectForKeyedSubscript_(v13, v12, v5[3], *v27, *&v27[16], v28);
    }

    else
    {
      objc_msgSend_objectForKeyedSubscript_(v13, v12, 0, *v27, *&v27[8], v28);
    }
    v16 = ;
    if (!v16)
    {
      v16 = objc_msgSend_set(MEMORY[0x1E695DFA8], v14, v15);
      v18 = *(a1 + 32);
      if (v5)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v18, v17, v16, v5[3]);
      }

      else
      {
        objc_msgSend_setObject_forKeyedSubscript_(v18, v17, v16, 0);
      }
    }

    v19 = objc_msgSend_stringByAppendingString_(@"com.apple.icloud-container.", v14, v10);
    objc_msgSend_addObject_(v16, v20, v19);
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v21 = ck_log_facility_notification_listener;
    if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_INFO))
    {
      if (v5)
      {
        v22 = v5[5];
      }

      else
      {
        v22 = 0;
      }

      *v27 = 138412290;
      *&v27[4] = v22;
      v23 = v21;
      _os_log_impl(&dword_1883EA000, v23, OS_LOG_TYPE_INFO, "No container bundle ID for push notifications for subscription: %@", v27, 0xCu);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

void sub_188648E2C(void **a1, void *a2, void *a3)
{
  v110[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v96 = a3;
  v6 = a1[4];
  if (v6)
  {
    v6 = v6[6];
  }

  v7 = v6;
  v95 = v5;
  v9 = objc_msgSend_objectForKeyedSubscript_(v7, v8, v5);

  if (objc_msgSend_count(v96, v10, v11) && !v9)
  {
    v14 = objc_msgSend_machServiceName(a1[4], v12, v13);

    if (v14)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v17 = ck_log_facility_notification_listener;
      if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
      {
        v79 = a1[4];
        v80 = v17;
        v83 = objc_msgSend_machServiceName(v79, v81, v82);
        *buf = 138543362;
        *&buf[4] = v83;
        _os_log_debug_impl(&dword_1883EA000, v80, OS_LOG_TYPE_DEBUG, "Creating APS connection with mach service name %{public}@", buf, 0xCu);
      }

      v20 = MEMORY[0x1E698CF30];
      v21 = objc_msgSend_machServiceName(a1[4], v18, v19);
      v23 = objc_msgSend_ck_singletonConnectionForEnvironmentName_namedDelegatePort_(v20, v22, v5, v21);

      v25 = a1[4];
      if (v25)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v25[6], v24, v23, v5);
LABEL_12:
        v26 = a1[4];
        v9 = v23;
        if (v26)
        {
          v29 = objc_msgSend_queue(v26, v27, v28);
          dispatch_assert_queue_V2(v29);

          v32 = objc_msgSend_array(MEMORY[0x1E695DF70], v30, v31);
          objc_initWeak(&location, v26);
          v35 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v33, v34);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = sub_188649640;
          v108 = &unk_1E70BFF80;
          objc_copyWeak(v110, &location);
          v36 = v9;
          v109 = v36;
          v38 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v35, v37, @"CKAPSMachServiceConnectionDidReceivePublicTokenNotification", v36, 0, buf);

          objc_msgSend_addObject_(v32, v39, v38);
          v42 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v40, v41);
          v103[0] = MEMORY[0x1E69E9820];
          v103[1] = 3221225472;
          v103[2] = sub_1886496C4;
          v103[3] = &unk_1E70BFF80;
          objc_copyWeak(&v105, &location);
          v43 = v36;
          v104 = v43;
          v45 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v42, v44, @"CKAPSMachServiceConnectionDidReceiveIncomingMessageNotification", v43, 0, v103);

          objc_msgSend_addObject_(v32, v46, v45);
          v49 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v47, v48);
          v100[0] = MEMORY[0x1E69E9820];
          v100[1] = 3221225472;
          v100[2] = sub_188649748;
          v100[3] = &unk_1E70BFF80;
          objc_copyWeak(&v102, &location);
          v50 = v43;
          v101 = v50;
          v52 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v49, v51, @"CKAPSMachServiceConnectionDidChangeConnectedStatusNotification", v50, 0, v100);

          objc_msgSend_addObject_(v32, v53, v52);
          v56 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v54, v55);
          v97[0] = MEMORY[0x1E69E9820];
          v97[1] = 3221225472;
          v97[2] = sub_1886497DC;
          v97[3] = &unk_1E70BFF80;
          objc_copyWeak(&v99, &location);
          v98 = v50;
          v58 = objc_msgSend_addObserverForName_object_queue_usingBlock_(v56, v57, @"CKAPSMachServiceConnectionDidReconnectNotification", v98, 0, v97);

          objc_msgSend_addObject_(v32, v59, v58);
          v64 = objc_msgSend_notificationObservers(v26, v60, v61);
          v65 = v64;
          if (!v64)
          {
            v65 = objc_msgSend_array(MEMORY[0x1E695DEC8], v62, v63);
          }

          v66 = objc_msgSend_arrayByAddingObjectsFromArray_(v65, v62, v32);
          objc_msgSend_setNotificationObservers_(v26, v67, v66);

          if (!v64)
          {
          }

          objc_destroyWeak(&v99);
          objc_destroyWeak(&v102);

          objc_destroyWeak(&v105);
          objc_destroyWeak(v110);
          objc_destroyWeak(&location);
        }

        goto LABEL_19;
      }
    }

    else
    {
      v84 = objc_msgSend_currentHandler(CKSignificantIssueHandler, v15, v16);
      v85 = [CKSignificantIssue alloc];
      v86 = [CKSourceCodeLocation alloc];
      a1 = objc_msgSend_initWithFilePath_lineNumber_(v86, v87, @"/Library/Caches/com.apple.xbs/Sources/CloudKit/Sources/CloudKit/Services/Scheduler/CKNotificationListener.m", 380);
      v23 = @"BUG IN CLIENT OF CLOUDKIT: When using CKNotificationListener in a daemon, you must supply an APS mach service name to [CKNotificationListener initWithMachServiceName:]. Otherwise, your process won't be launched for push notifications. See header comments in CKNotificationListener_Private.h.";
      v89 = objc_msgSend_initWithSourceCodeLocation_format_(v85, v88, a1, @"BUG IN CLIENT OF CLOUDKIT: When using CKNotificationListener in a daemon, you must supply an APS mach service name to [CKNotificationListener initWithMachServiceName:]. Otherwise, your process won't be launched for push notifications. See header comments in CKNotificationListener_Private.h.");
      objc_msgSend_handleSignificantIssue_actions_(v84, v90, v89, 0);

      v92 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v91, @"BUG IN CLIENT OF CLOUDKIT: When using CKNotificationListener in a daemon, you must supply an APS mach service name to [CKNotificationListener initWithMachServiceName:]. Otherwise, your process won't be launched for push notifications. See header comments in CKNotificationListener_Private.h.");
      objc_msgSend_UTF8String(v92, v93, v94);
      _os_crash();
      __break(1u);
    }

    objc_msgSend_setObject_forKeyedSubscript_(0, v24, v23, v95);
    goto LABEL_12;
  }

LABEL_19:
  if (v9)
  {
    v68 = v9;
    objc_sync_enter(v68);
    if (objc_msgSend_useOpportunisticPushTopics(a1[4], v69, v70))
    {
      v73 = objc_msgSend_allObjects(v96, v71, v72);
      v74 = 0;
      objc_msgSend_setEnabledTopics_ignoredTopics_opportunisticTopics_nonWakingTopics_(v68, v75, 0, 0, v73, 0);
    }

    else
    {
      v74 = objc_msgSend_allObjects(v96, v71, v72);
      v73 = 0;
      objc_msgSend_setEnabledTopics_ignoredTopics_opportunisticTopics_nonWakingTopics_(v68, v76, v74, 0, 0, 0);
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v77 = ck_log_facility_notification_listener;
    if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      *&buf[4] = v74;
      *&buf[12] = 2112;
      *&buf[14] = v73;
      *&buf[22] = 2112;
      v108 = v68;
      _os_log_debug_impl(&dword_1883EA000, v77, OS_LOG_TYPE_DEBUG, "Setting enabled topics %@, opportunistic topics %@ on %@", buf, 0x20u);
    }

    objc_sync_exit(v68);
  }

  v78 = *MEMORY[0x1E69E9840];
}

void sub_188649640(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_userInfo(a2, a2, a3);
  v8 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"publicToken");

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_connection_didReceivePublicToken_(WeakRetained, v7, *(a1 + 32), v8);
}

void sub_1886496C4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_userInfo(a2, a2, a3);
  v8 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"message");

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_connection_didReceiveIncomingMessage_(WeakRetained, v7, *(a1 + 32), v8);
}

void sub_188649748(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_userInfo(a2, a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"connected");
  v9 = objc_msgSend_BOOLValue(v6, v7, v8);

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_connection_didChangeConnectedStatus_(WeakRetained, v10, *(a1 + 32), v9);
}

void sub_1886497DC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_connectionDidReconnect_(WeakRetained, v2, *(a1 + 32));
}

void sub_188649B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188649BA0(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  if (objc_msgSend_isEqual_(a3, v8, *(a1 + 32)))
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void sub_188649D5C(uint64_t a1)
{
  v92 = *MEMORY[0x1E69E9840];
  group = dispatch_group_create();
  v59 = objc_msgSend_notificationFromRemoteNotificationDictionary_(CKNotification, v2, *(a1 + 32));
  v3 = &unk_1886FE000;
  if (v59)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_notification_listener;
    if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
    {
      v53 = *(a1 + 40);
      *v89 = 138412546;
      *&v89[4] = v59;
      *&v89[12] = 2112;
      *&v89[14] = v53;
      _os_log_debug_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEBUG, "Received CKNotification: %@ for %@", v89, 0x16u);
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      v5 = v5[3];
    }

    v6 = v5;
    v9 = objc_msgSend_allValues(v6, v7, v8);
    v82[0] = MEMORY[0x1E69E9820];
    v82[1] = 3221225472;
    v82[2] = sub_18864A5C8;
    v82[3] = &unk_1E70BFFD0;
    v83 = *(a1 + 48);
    v10 = v59;

    v84 = v10;
    v58 = objc_msgSend_CKFilter_(v9, v11, v82);

    if (objc_msgSend_count(v58, v12, v13))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v14 = ck_log_facility_notification_listener;
      if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
      {
        v54 = v14;
        v57 = objc_msgSend_count(v58, v55, v56);
        *v89 = 134217984;
        *&v89[4] = v57;
        _os_log_debug_impl(&dword_1883EA000, v54, OS_LOG_TYPE_DEBUG, "Delivering notification for up to %lu listeners", v89, 0xCu);
      }

      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      obj = v58;
      v63 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v78, v91, 16);
      if (v63)
      {
        v62 = *v79;
        do
        {
          v16 = 0;
          do
          {
            if (*v79 != v62)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v78 + 1) + 8 * v16);
            v18 = dispatch_group_create();
            *v89 = 0;
            *&v89[8] = v89;
            *&v89[16] = 0x2020000000;
            v90 = 0;
            v21 = objc_msgSend_testDeviceID(v10, v19, v20);
            if (v17)
            {
              v22 = *(v17 + 16);
            }

            else
            {
              v22 = 0;
            }

            v23 = v22;
            v26 = objc_msgSend_deviceContext(v23, v24, v25);
            v29 = objc_msgSend_testDeviceReferenceProtocol(v26, v27, v28);
            v32 = objc_msgSend_deviceID(v29, v30, v31);

            if (CKObjectsAreBothNilOrEqual(v21, v32))
            {
              v35 = objc_msgSend_subscriptionOwnerUserRecordID(v10, v33, v34);
              v36 = v35 == 0;

              if (v36)
              {
                if (ck_log_initialization_predicate != -1)
                {
                  dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                }

                v44 = ck_log_facility_notification_listener;
                if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 0;
                  _os_log_debug_impl(&dword_1883EA000, v44, OS_LOG_TYPE_DEBUG, "No user record ID in notification", buf, 2u);
                }

                *(*&v89[8] + 24) = 1;
              }

              else
              {
                dispatch_group_enter(group);
                dispatch_group_enter(v18);
                if (ck_log_initialization_predicate != -1)
                {
                  dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
                }

                v37 = ck_log_facility_notification_listener;
                if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                {
                  v48 = objc_msgSend_subscriptionOwnerUserRecordID(v10, v38, v39);
                  *buf = 138412546;
                  v86 = v48;
                  v87 = 2112;
                  v88 = v17;
                  _os_log_debug_impl(&dword_1883EA000, v37, OS_LOG_TYPE_DEBUG, "Checking notification's user record ID %@ against container user record ID for %@", buf, 0x16u);
                }

                if (v17)
                {
                  v40 = *(v17 + 16);
                }

                else
                {
                  v40 = 0;
                }

                v41 = v40;
                v73[0] = MEMORY[0x1E69E9820];
                v73[1] = 3221225472;
                v73[2] = sub_18864A71C;
                v73[3] = &unk_1E70BFFF8;
                v73[4] = v17;
                v77 = v89;
                v74 = v10;
                v75 = group;
                v76 = v18;
                objc_msgSend_fetchUserRecordIDWithCompletionHandler_(v41, v42, v73);
              }
            }

            else
            {
              if (ck_log_initialization_predicate != -1)
              {
                dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
              }

              v43 = ck_log_facility_notification_listener;
              if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
              {
                *buf = 0;
                _os_log_debug_impl(&dword_1883EA000, v43, OS_LOG_TYPE_DEBUG, "Notification was destined for a different test device", buf, 2u);
              }

              *(*&v89[8] + 24) = 0;
            }

            v45 = *(a1 + 40);
            if (v45)
            {
              v46 = *(v45 + 40);
            }

            else
            {
              v46 = 0;
            }

            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = sub_18864A9B0;
            block[3] = &unk_1E70C0020;
            v72 = v89;
            v68 = v10;
            v69 = *(a1 + 32);
            v70 = v17;
            v71 = *(a1 + 56);
            dispatch_group_notify(v18, v46, block);

            _Block_object_dispose(v89, 8);
            ++v16;
          }

          while (v63 != v16);
          v49 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v47, &v78, v91, 16);
          v63 = v49;
        }

        while (v49);
      }
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v50 = ck_log_facility_notification_listener;
      if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
      {
        *v89 = 0;
        _os_log_debug_impl(&dword_1883EA000, v50, OS_LOG_TYPE_DEBUG, "No matching subscriptions for notification.", v89, 2u);
      }
    }

    v3 = &unk_1886FE000;
  }

  v51 = dispatch_get_global_queue(0, 0);
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = v3[137];
  v64[2] = sub_18864AC58;
  v64[3] = &unk_1E70BC2E8;
  v66 = *(a1 + 64);
  v65 = *(a1 + 56);
  dispatch_group_notify(group, v51, v64);

  v52 = *MEMORY[0x1E69E9840];
}

uint64_t sub_18864A5C8(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5 && (!v4 ? (isEqualToString = objc_msgSend_isEqualToString_(v5, v3, 0)) : (isEqualToString = objc_msgSend_isEqualToString_(v5, v3, *(v4 + 3))), !isEqualToString) || objc_msgSend_conformsToProtocol_(*(a1 + 40), v3, &unk_1EFA97480) && ((v11 = objc_msgSend_databaseScope(*(a1 + 40), v7, v8), !v4) ? (v12 = objc_msgSend_databaseScope(0, v9, v10)) : (v12 = objc_msgSend_databaseScope(*(v4 + 1), v9, v10)), v11 != v12))
  {
    isEqual = 0;
  }

  else
  {
    if (v4)
    {
      v13 = *(v4 + 5);
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v17 = objc_msgSend_subscriptionID(*(a1 + 40), v15, v16);
    if (objc_msgSend_isEqual_(v14, v18, v17))
    {
      if (v4)
      {
        v19 = *(v4 + 1);
      }

      else
      {
        v19 = 0;
      }

      v20 = v19;
      v23 = objc_msgSend_container(v20, v21, v22);
      v26 = objc_msgSend_containerID(v23, v24, v25);
      v29 = objc_msgSend_containerID(*(a1 + 40), v27, v28);

      isEqual = objc_msgSend_isEqual_(v26, v30, v29);
    }

    else
    {
      isEqual = 0;
    }
  }

  return isEqual;
}

void sub_18864A71C(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v8 = a3;
  if (v5)
  {
    v9 = objc_msgSend_subscriptionOwnerUserRecordID(*(a1 + 40), v6, v7);
    isEqual = objc_msgSend_isEqual_(v9, v10, v5);

    if (isEqual)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v12 = ck_log_facility_notification_listener;
      if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(a1 + 32);
        v25 = 138412290;
        v26 = v18;
        _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "Container user is equal to subscription user for %@", &v25, 0xCu);
      }

      v13 = 1;
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v16 = ck_log_facility_notification_listener;
      if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(a1 + 40);
        v20 = v16;
        v23 = objc_msgSend_subscriptionOwnerUserRecordID(v19, v21, v22);
        v24 = *(a1 + 32);
        v25 = 138412802;
        v26 = v5;
        v27 = 2112;
        v28 = v23;
        v29 = 2112;
        v30 = v24;
        _os_log_debug_impl(&dword_1883EA000, v20, OS_LOG_TYPE_DEBUG, "Container user %@ is not equal to subscription user %@ for %@", &v25, 0x20u);
      }

      v13 = 0;
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_notification_listener;
    v13 = 1;
    if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 32);
      v25 = 138412546;
      v26 = v15;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_1883EA000, v14, OS_LOG_TYPE_INFO, "Couldn't fetch user record ID to compare to notification for %@: %@", &v25, 0x16u);
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = v13;
  dispatch_group_leave(*(a1 + 48));
  dispatch_group_leave(*(a1 + 56));

  v17 = *MEMORY[0x1E69E9840];
}

void sub_18864A9B0(void *a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(*(a1[8] + 8) + 24) == 1)
  {
    v2 = _os_activity_create(&dword_1883EA000, "client/notification-listener-receive", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v22.opaque[0] = 0;
    v22.opaque[1] = 0;
    os_activity_scope_enter(v2, &v22);
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_notification_listener;
    if (os_log_type_enabled(ck_log_facility_notification_listener, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = a1[5];
      *buf = 138412546;
      v24 = v4;
      v25 = 2114;
      v26 = v5;
      _os_log_impl(&dword_1883EA000, v3, OS_LOG_TYPE_DEFAULT, "Running handler for notification %@: %{public}@", buf, 0x16u);
    }

    v6 = a1[6];
    if (v6)
    {
      v7 = *(v6 + 32);
      if (v7)
      {
        v8 = a1[6];
        if (v8)
        {
          v9 = *(v8 + 40) == 0;

          if (!v9)
          {
            v10 = a1[6];
            if (v10)
            {
              v10 = v10[4];
            }

            v11 = v10;
            v12 = a1[4];
            v13 = a1[6];
            if (v13)
            {
              v13 = v13[5];
            }

            v14 = v13;
            (v11[2].isa)(v11, v12, v14);

LABEL_19:
            os_activity_scope_leave(&v22);

            goto LABEL_20;
          }
        }

        else
        {
        }
      }
    }

    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_notification_listener;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v16 = a1[6];
      if (v16)
      {
        v17 = *(v16 + 32);
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
      v19 = _Block_copy(v18);
      v20 = v19;
      v21 = a1[6];
      if (v21)
      {
        v21 = *(v21 + 40);
      }

      *buf = 138412802;
      v24 = v16;
      v25 = 2048;
      v26 = v19;
      v27 = 2048;
      v28 = v21;
      _os_log_error_impl(&dword_1883EA000, v11, OS_LOG_TYPE_ERROR, "Tried to notify for info %@, but a necessary property is missing: %p %p", buf, 0x20u);
    }

    goto LABEL_19;
  }

LABEL_20:
  v15 = *MEMORY[0x1E69E9840];
}

uint64_t sub_18864AC58(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t sub_18864B6C0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_18864BB4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, os_activity_scope_state_s state)
{
  _Block_object_dispose(&a18, 8);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_18864BB78(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = objc_msgSend_handlersByCKActivityIdentifier(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_identifier(*(a1 + 40), v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v11, v7, v6);
  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_18864BBFC(void **a1)
{
  v52 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_scheduler;
  if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v48 = 138412290;
    v49 = v5;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEFAULT, "Submitting activity %@", &v48, 0xCu);
  }

  v6 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(a1[5], v3, v4);
  v9 = objc_msgSend_identifier(a1[4], v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(v6, v10, v9);

  if ((objc_msgSend_isXPCActivityPending_(a1[5], v12, v11) & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v19 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v48) = 0;
      _os_log_debug_impl(&dword_1883EA000, v19, OS_LOG_TYPE_DEBUG, "Dropping cached non-pending xpc_activity", &v48, 2u);
    }

    v22 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(a1[5], v20, v21);
    v25 = objc_msgSend_identifier(a1[4], v23, v24);
    objc_msgSend_setObject_forKeyedSubscript_(v22, v26, 0, v25);

    v16 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  if (!v11)
  {
    v16 = 0;
LABEL_15:
    v27 = 1;
    goto LABEL_16;
  }

  v15 = xpc_activity_copy_criteria(v11);
  v16 = v15;
  if (v15)
  {
    v17 = xpc_dictionary_get_double(v15, "ck_submitted_time");
    v18 = a1 + 6;
    xpc_dictionary_set_double(a1[6], "ck_submitted_time", v17);
    if (xpc_equal(v16, *v18))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v34 = ck_log_facility_scheduler;
      if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
      {
        v35 = a1[4];
        v48 = 138412290;
        v49 = v35;
        _os_log_debug_impl(&dword_1883EA000, v34, OS_LOG_TYPE_DEBUG, "Not modifying criteria of identical existing XPC activity for %@", &v48, 0xCu);
      }

LABEL_33:
      v44 = a1[7];
      if (v44)
      {
        v45 = a1[5];
        if (v45)
        {
          v46 = *(v45 + 2);
        }

        else
        {
          v46 = 0;
        }

        dispatch_async(v46, v44);
      }

      goto LABEL_37;
    }

LABEL_28:
    v36 = *v18;
    v37 = xpc_copy_short_description();
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v38 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEFAULT))
    {
      v39 = a1[4];
      v40 = v38;
      v43 = objc_msgSend_identifier(v39, v41, v42);
      v48 = 138543618;
      v49 = v43;
      v50 = 2080;
      v51 = v37;
      _os_log_impl(&dword_1883EA000, v40, OS_LOG_TYPE_DEFAULT, "Modifying criteria of existing activity %{public}@ with criteria: %s", &v48, 0x16u);
    }

    free(v37);
    xpc_activity_set_criteria(v11, *v18);
    goto LABEL_33;
  }

  v27 = 0;
LABEL_16:
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], v13, v14);
  v18 = a1 + 6;
  xpc_dictionary_set_double(a1[6], "ck_submitted_time", v28);
  if ((v27 & 1) == 0)
  {
    goto LABEL_28;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v29 = ck_log_facility_scheduler;
  if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v48) = 0;
    _os_log_debug_impl(&dword_1883EA000, v29, OS_LOG_TYPE_DEBUG, "Submitting activity without an existing xpc_activity, will register", &v48, 2u);
  }

  v32 = a1[5];
  v33 = objc_msgSend_identifier(a1[4], v30, v31);
  sub_18864C064(v32, v33, a1[6], a1[7]);

LABEL_37:
  v47 = *MEMORY[0x1E69E9840];
}

void sub_18864C064(uint64_t a1, void *a2, void *a3, void *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!a1)
  {
    goto LABEL_13;
  }

  dispatch_assert_queue_V2(*(a1 + 24));
  v10 = objc_opt_class();
  v12 = objc_msgSend_xpcActivityIdentifierForCKActivityIdentifier_(v10, v11, v7);
  if (objc_msgSend_isEqual_(v12, v13, v7))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_scheduler;
    if (!os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_10;
    }

    *buf = 138543362;
    *&buf[4] = v7;
    v17 = "Calling xpc_activity_register for activity %{public}@";
    v18 = v14;
    v19 = 12;
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v20 = ck_log_facility_scheduler;
    if (!os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_10;
    }

    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2114;
    *&buf[14] = v12;
    v17 = "Calling xpc_activity_register for activity %{public}@ (xpc_activity %{public}@)";
    v18 = v20;
    v19 = 22;
  }

  _os_log_debug_impl(&dword_1883EA000, v18, OS_LOG_TYPE_DEBUG, v17, buf, v19);
LABEL_10:
  if (__sTestOverridesAvailable[0] == 1)
  {
    v21 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v15, v16);
    objc_msgSend_postNotificationName_object_(v21, v22, @"CKSchedulerWillRegisterXPCActivityNotification", v12);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v39 = sub_1883EE190;
  v40 = sub_1883EF77C;
  v41 = _Block_copy(v9);
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x2020000000;
  v37 = 0;
  dispatch_suspend(*(a1 + 24));
  v23 = v12;
  v26 = objc_msgSend_UTF8String(v12, v24, v25);
  v27 = *MEMORY[0x1E69E9C50];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_18864D53C;
  v30[3] = &unk_1E70C00D0;
  v30[4] = a1;
  v31 = v7;
  v32 = v8;
  v34 = v36;
  v28 = v12;
  v33 = v28;
  v35 = buf;
  xpc_activity_register(v26, v27, v30);

  _Block_object_dispose(v36, 8);
  _Block_object_dispose(buf, 8);

LABEL_13:
  v29 = *MEMORY[0x1E69E9840];
}

void sub_18864C3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18864C3D0(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_self();
  v5 = objc_msgSend_nullableContainer(v2, v3, v4);
  v8 = objc_msgSend_deviceContext(v5, v6, v7);
  v11 = objc_msgSend_testDeviceReferenceProtocol(v8, v9, v10);

  if (v11)
  {
    v14 = 0;
  }

  else
  {
    v15 = objc_msgSend_containerID(v2, v12, v13);
    isTestContainer = objc_msgSend_isTestContainer(v15, v16, v17);

    v14 = isTestContainer ^ 1u;
  }

  return v14;
}

id sub_18864C470(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v8 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v6, v7);
  v11 = objc_msgSend_containerID(v4, v9, v10);
  isAppleInternal = objc_msgSend_isAppleInternal(v11, v12, v13);

  if (isAppleInternal)
  {
    v17 = objc_msgSend_identifier(v4, v15, v16);
    v19 = objc_msgSend_CKStringByReplacingUUIDsWithString_(v17, v18, @"<uuid>");
    objc_msgSend_setObject_forKeyedSubscript_(v8, v20, v19, @"activityIdentifier");

    v23 = objc_msgSend_containerID(v4, v21, v22);
    v26 = objc_msgSend_containerIdentifier(v23, v24, v25);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v27, v26, @"containerIdentifier");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v8, v15, @"<redacted>", @"activityIdentifier");
    objc_msgSend_setObject_forKeyedSubscript_(v8, v30, @"ThirdPartyContainer", @"containerIdentifier");
  }

  v31 = MEMORY[0x1E696AD98];
  v32 = objc_msgSend_priority(v4, v28, v29);
  v34 = objc_msgSend_numberWithInteger_(v31, v33, v32);
  objc_msgSend_setObject_forKeyedSubscript_(v8, v35, v34, @"priority");

  if (objc_msgSend_userRequestedBackupTask(v4, v36, v37))
  {
    v40 = MEMORY[0x1E696AD98];
    v41 = objc_msgSend_userRequestedBackupTask(v4, v38, v39);
    v43 = objc_msgSend_numberWithBool_(v40, v42, v41);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v44, v43, @"userRequestedBackupTask");
  }

  if (objc_msgSend_expectedTransferSizeBytes(v4, v38, v39))
  {
    v47 = MEMORY[0x1E696AD98];
    v48 = objc_msgSend_expectedTransferSizeBytes(v4, v45, v46);
    v50 = objc_msgSend_numberWithUnsignedInteger_(v47, v49, v48);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v51, v50, @"transferSizeBytes");
  }

  if (v5)
  {
    string = xpc_dictionary_get_string(v5, *MEMORY[0x1E69E9D68]);
    if (string)
    {
      v54 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v53, string);
      objc_msgSend_setObject_forKeyedSubscript_(v8, v55, v54, @"xpcActivityPriority");
    }

    int64 = xpc_dictionary_get_int64(v5, *MEMORY[0x1E69E9C98]);
    v58 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v57, int64);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v59, v58, @"xpcActivityGracePeriod");

    v60 = xpc_dictionary_get_int64(v5, *MEMORY[0x1E69E9C68]);
    v62 = objc_msgSend_numberWithLongLong_(MEMORY[0x1E696AD98], v61, v60);
    objc_msgSend_setObject_forKeyedSubscript_(v8, v63, v62, @"xpcActivityDelay");
  }

  return v8;
}

void sub_18864C81C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  v6 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(*(a1 + 32), a2, a3);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v5, v4, *(a1 + 40));
}

void sub_18864CB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  os_activity_scope_leave((v17 - 112));
  _Unwind_Resume(a1);
}

void sub_18864CB88(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_scheduler;
  if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 32);
    v16 = *(a1 + 64);
    v18 = 138543618;
    v19 = v15;
    v20 = 1024;
    v21 = v16;
    _os_log_debug_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEBUG, "Registering CK activity %{public}@ replaceExistingHandler=%d", &v18, 0x12u);
  }

  if ((*(a1 + 64) & 1) != 0 || (objc_msgSend_handlersByCKActivityIdentifier(*(a1 + 40), v3, v4), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v5, v6, *(a1 + 32)), v7 = objc_claimAutoreleasedReturnValue(), v7, v5, !v7))
  {
    v9 = _Block_copy(*(a1 + 48));
    v12 = objc_msgSend_handlersByCKActivityIdentifier(*(a1 + 40), v10, v11);
    objc_msgSend_setObject_forKeyedSubscript_(v12, v13, v9, *(a1 + 32));
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_FAULT))
    {
      v17 = *(a1 + 32);
      v18 = 138412290;
      v19 = v17;
      _os_log_fault_impl(&dword_1883EA000, v8, OS_LOG_TYPE_FAULT, "BUG IN CLIENT OF CLOUDKIT: Registering a handler for a CKScheduler activity identifier that has already been registered (%@).", &v18, 0xCu);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_18864CD74(uint64_t a1, const char *a2, uint64_t a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *(a1 + 40));

  if (!v6)
  {
    sub_18864C064(*(a1 + 32), *(a1 + 40), 0, 0);
  }

  v8 = *(a1 + 40);
  v11 = @"activityIdentifier";
  v12[0] = v8;
  v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v7, v12, &v11, 1);
  AnalyticsSendEvent();

  v10 = *MEMORY[0x1E69E9840];
}

void sub_18864D108(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_scheduler;
  if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_DEFAULT, "Unregistering handler for CK activity %{public}@", &v9, 0xCu);
  }

  v6 = objc_msgSend_handlersByCKActivityIdentifier(*(a1 + 40), v3, v4);
  objc_msgSend_removeObjectForKey_(v6, v7, *(a1 + 32));

  v8 = *MEMORY[0x1E69E9840];
}

void sub_18864D37C(uint64_t a1, const char *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *(a1 + 40));

  if (v6)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v7 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v24 = 138543362;
      v25 = v10;
      _os_log_impl(&dword_1883EA000, v7, OS_LOG_TYPE_DEFAULT, "Cancelling activity %{public}@", &v24, 0xCu);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
    {
      v23 = *(a1 + 40);
      v24 = 138543362;
      v25 = v23;
      _os_log_debug_impl(&dword_1883EA000, v11, OS_LOG_TYPE_DEBUG, "Cancelling unknown activity %{public}@", &v24, 0xCu);
    }
  }

  v12 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(*(a1 + 32), v8, v9);
  objc_msgSend_removeObjectForKey_(v12, v13, *(a1 + 40));

  v14 = *(a1 + 32);
  v15 = objc_opt_class();
  v17 = objc_msgSend_xpcActivityIdentifierForCKActivityIdentifier_(v15, v16, *(a1 + 40));
  v18 = v17;
  v21 = objc_msgSend_UTF8String(v18, v19, v20);
  xpc_activity_unregister(v21);

  v22 = *MEMORY[0x1E69E9840];
}

void sub_18864D53C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18864D640;
  block[3] = &unk_1E70C00A8;
  v11 = v3;
  v12 = v5;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v9 = *(a1 + 56);
  v7 = v9;
  v15 = v9;
  v16 = *(a1 + 72);
  v8 = v4;
  dispatch_sync(v6, block);
}

void sub_18864D640(uint64_t a1)
{
  v98 = *MEMORY[0x1E69E9840];
  v2 = xpc_activity_get_state(*(a1 + 32));
  v3 = *(a1 + 32);
  v6 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(*(a1 + 40), v4, v5);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v7, v3, *(a1 + 48));

  if (v2 == 2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v14 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
    {
      v76 = *(a1 + 48);
      *buf = 138543362;
      *&buf[4] = v76;
      _os_log_debug_impl(&dword_1883EA000, v14, OS_LOG_TYPE_DEBUG, "Being told to run activity %{public}@", buf, 0xCu);
    }

    v15 = *(a1 + 40);
    v16 = *(a1 + 32);
    v81 = *(a1 + 48);
    v17 = v16;
    if (!v15)
    {
      goto LABEL_47;
    }

    dispatch_assert_queue_V2(v15[1]);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v79 = _os_activity_create(&dword_1883EA000, "client/scheduler-run", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v79, &state);
    v80 = objc_msgSend_date(MEMORY[0x1E695DF00], v18, v19);
    v22 = objc_msgSend_handlersByCKActivityIdentifier(v15, v20, v21);
    v24 = objc_msgSend_objectForKeyedSubscript_(v22, v23, v81);

    v25 = objc_opt_class();
    v27 = objc_msgSend_activityFromXPCActivity_(v25, v26, v17);
    v28 = v27;
    if (v24)
    {
      if (v27)
      {
        objc_initWeak(&location, v15);
        objc_copyWeak(&v84, &location);
        v78 = v24;
        v29 = v81;
        v82 = v29;
        v30 = v28;
        v31 = v28;
        v83 = v31;
        v77 = xpc_activity_add_eligibility_changed_handler();
        if (ck_log_initialization_predicate != -1)
        {
          dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
        }

        v32 = ck_log_facility_scheduler;
        if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          *&buf[4] = v29;
          _os_log_debug_impl(&dword_1883EA000, v32, OS_LOG_TYPE_DEBUG, "Will run scheduler activity %{public}@", buf, 0xCu);
        }

        if (xpc_activity_set_state(v17, 4))
        {
          v33 = v31;
          v34 = sub_18864C3D0(CKScheduler, v31);
          v35 = v29;
          v36 = 0.0;
          v28 = v30;
          v24 = v78;
          if (v34)
          {
            v37 = xpc_activity_copy_criteria(v17);
            v38 = sub_18864C470(CKScheduler, v33, v37);
            v39 = v37;
            v40 = xpc_dictionary_get_double(v37, "ck_submitted_time");
            objc_msgSend_timeIntervalSinceReferenceDate(v80, v41, v42);
            v36 = v43 - v40;
            v46 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v44, v45, v36);
            objc_msgSend_setObject_forKeyedSubscript_(v38, v47, v46, @"durationFromSubmitToRun");

            AnalyticsSendEvent();
          }

          v48 = v15[2];
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = sub_18864E0A4;
          v88 = &unk_1E70C0170;
          v89 = v33;
          v95 = v78;
          v90 = v79;
          v91 = v15;
          v92 = v35;
          v93 = v17;
          v96 = v77;
          v94 = v80;
          v97 = v36;
          dispatch_async(v48, buf);
        }

        else
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v28 = v30;
          v55 = ck_log_facility_scheduler;
          v24 = v78;
          if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            *&buf[4] = v29;
            _os_log_error_impl(&dword_1883EA000, v55, OS_LOG_TYPE_ERROR, "Failed to set state to CONTINUE for activity %{public}@", buf, 0xCu);
          }
        }

        objc_destroyWeak(&v84);
        objc_destroyWeak(&location);
        goto LABEL_46;
      }

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v53 = ck_log_facility_scheduler;
      if (!os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_46;
      }

      *buf = 138543362;
      *&buf[4] = v81;
      v54 = "No scheduler activity when trying to run activity %{public}@";
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v53 = ck_log_facility_scheduler;
      if (!os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_46;
      }

      *buf = 138543362;
      *&buf[4] = v81;
      v54 = "No handler when trying to run activity %{public}@";
    }

    _os_log_fault_impl(&dword_1883EA000, v53, OS_LOG_TYPE_FAULT, v54, buf, 0xCu);
LABEL_46:

    os_activity_scope_leave(&state);
LABEL_47:

    goto LABEL_48;
  }

  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v49 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_INFO))
    {
      v50 = *(a1 + 48);
      v51 = v49;
      v52 = CKStringForXPCActivityState(v2);
      *buf = 138543618;
      *&buf[4] = v50;
      *&buf[12] = 2114;
      *&buf[14] = v52;
      _os_log_impl(&dword_1883EA000, v51, OS_LOG_TYPE_INFO, "Received callback for activity %{public}@ with state [%{public}@]", buf, 0x16u);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
    {
      v75 = *(a1 + 48);
      *buf = 138543362;
      *&buf[4] = v75;
      _os_log_debug_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEBUG, "Checking in for activity %{public}@", buf, 0xCu);
    }

    if (*(a1 + 56))
    {
      v11 = xpc_copy_short_description();
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v12 = ck_log_facility_scheduler;
      if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 48);
        *buf = 138543618;
        *&buf[4] = v13;
        *&buf[12] = 2080;
        *&buf[14] = v11;
        _os_log_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEFAULT, "Submitting activity criteria for %{public}@: %s", buf, 0x16u);
      }

      free(v11);
      xpc_activity_set_criteria(*(a1 + 32), *(a1 + 56));
    }
  }

LABEL_48:
  v56 = *(*(a1 + 72) + 8);
  if ((*(v56 + 24) & 1) == 0)
  {
    if (__sTestOverridesAvailable[0] == 1)
    {
      v57 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v9, v10);
      objc_msgSend_postNotificationName_object_(v57, v58, @"CKSchedulerDidRegisterXPCActivityNotification", *(a1 + 64));

      v56 = *(*(a1 + 72) + 8);
    }

    *(v56 + 24) = 1;
    v59 = *(a1 + 40);
    if (v59)
    {
      v60 = *(v59 + 24);
    }

    else
    {
      v60 = 0;
    }

    dispatch_resume(v60);
    if (__sTestOverridesAvailable[0] == 1)
    {
      objc_msgSend_delayAfterXPCActivityRegister(*(a1 + 40), v61, v62);
      if (v65 > 0.0)
      {
        v66 = MEMORY[0x1E696AF00];
        objc_msgSend_delayAfterXPCActivityRegister(*(a1 + 40), v63, v64);
        objc_msgSend_sleepForTimeInterval_(v66, v67, v68);
      }
    }
  }

  v69 = *(*(*(a1 + 80) + 8) + 40);
  if (v69)
  {
    v70 = *(a1 + 40);
    if (v70)
    {
      v71 = *(v70 + 16);
    }

    else
    {
      v71 = 0;
    }

    dispatch_async(v71, v69);
    v72 = *(*(a1 + 80) + 8);
    v73 = *(v72 + 40);
    *(v72 + 40) = 0;
  }

  v74 = *MEMORY[0x1E69E9840];
}

void sub_18864DECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, os_activity_scope_state_s state)
{
  objc_destroyWeak(&a21);
  objc_destroyWeak(&location);
  os_activity_scope_leave(&state);
  _Unwind_Resume(a1);
}

void sub_18864DF20(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  should_defer = xpc_activity_should_defer(v3);

  if (should_defer)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v6 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543362;
      v13 = v7;
      _os_log_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEFAULT, "Should defer activity %{public}@", buf, 0xCu);
    }

    if (WeakRetained)
    {
      v8 = WeakRetained[1];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_18864E098;
      block[3] = &unk_1E70BC388;
      v11 = *(a1 + 40);
      dispatch_async(v8, block);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void sub_18864E0A4(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_scheduler;
  if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v7 = objc_msgSend_identifier(v3, v5, v6);
    *buf = 138543362;
    v24 = v7;
    _os_log_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEFAULT, "Running scheduler activity %{public}@", buf, 0xCu);
  }

  v8 = *(a1 + 80);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_18864E290;
  v16[3] = &unk_1E70C0148;
  v9 = *(a1 + 32);
  *&v10 = *(a1 + 40);
  *(&v10 + 1) = *(a1 + 48);
  v15 = v10;
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  v17 = v15;
  v18 = v13;
  v21 = *(a1 + 88);
  v19 = *(a1 + 32);
  v20 = *(a1 + 72);
  v22 = *(a1 + 96);
  (*(v8 + 16))(v8, v9, v16);

  v14 = *MEMORY[0x1E69E9840];
}

void sub_18864E290(uint64_t a1, uint64_t a2)
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(*(a1 + 32), &state);
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_18864E50C;
  block[3] = &unk_1E70C0120;
  v33 = *(a1 + 48);
  v36 = a2;
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v34 = v6;
  v35 = v7;
  v37 = *(a1 + 80);
  dispatch_async(v5, block);
  if (sub_18864C3D0(CKScheduler, *(a1 + 64)))
  {
    v8 = xpc_activity_copy_criteria(*(a1 + 56));
    v9 = sub_18864C470(CKScheduler, *(a1 + 64), v8);
    v12 = objc_msgSend_date(MEMORY[0x1E695DF00], v10, v11);
    v13 = xpc_dictionary_get_double(v8, "ck_submitted_time");
    objc_msgSend_timeIntervalSinceReferenceDate(v12, v14, v15);
    v19 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v17, v18, v16 - v13);
    objc_msgSend_setObject_forKeyedSubscript_(v9, v20, v19, @"durationFromSubmitToComplete");

    objc_msgSend_timeIntervalSinceDate_(v12, v21, *(a1 + 72));
    v24 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v22, v23);
    objc_msgSend_setObject_forKeyedSubscript_(v9, v25, v24, @"durationFromRunToComplete");

    if (*(a1 + 88) != 0.0)
    {
      v28 = objc_msgSend_numberWithDouble_(MEMORY[0x1E696AD98], v26, v27);
      objc_msgSend_setObject_forKeyedSubscript_(v9, v29, v28, @"durationFromSubmitToRun");
    }

    v30 = objc_msgSend_numberWithInteger_(MEMORY[0x1E696AD98], v26, a2);
    objc_msgSend_setObject_forKeyedSubscript_(v9, v31, v30, @"result");

    AnalyticsSendEvent();
  }

  os_activity_scope_leave(&state);
}

uint64_t sub_18864E50C(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_scheduler;
  if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v17 = 138543618;
    v18 = v3;
    v19 = 1024;
    v20 = v4;
    _os_log_impl(&dword_1883EA000, v2, OS_LOG_TYPE_INFO, "Received completion handler for activity %{public}@ with result %d", &v17, 0x12u);
  }

  v5 = *(a1 + 56);
  if (v5 == 2)
  {
    if (!xpc_activity_set_state(*(a1 + 40), 3))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v11 = ck_log_facility_scheduler;
      if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        v17 = 138543362;
        v18 = v16;
        _os_log_error_impl(&dword_1883EA000, v11, OS_LOG_TYPE_ERROR, "Failed to set state to DEFER for activity %{public}@", &v17, 0xCu);
      }
    }
  }

  else if (v5 == 1)
  {
    if (!xpc_activity_set_state(*(a1 + 40), 5))
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v8 = ck_log_facility_scheduler;
      if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 32);
        v17 = 138543362;
        v18 = v15;
        _os_log_error_impl(&dword_1883EA000, v8, OS_LOG_TYPE_ERROR, "Failed to set state to DONE for activity %{public}@", &v17, 0xCu);
      }
    }

    v9 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(*(a1 + 48), v6, v7);
    objc_msgSend_removeObjectForKey_(v9, v10, *(a1 + 32));
  }

  v12 = *(a1 + 64);
  result = xpc_activity_remove_eligibility_changed_handler();
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_18864E864(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_18864E87C(uint64_t a1, const char *a2, uint64_t a3)
{
  v8 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(*(a1 + 32), a2, a3);
  v5 = objc_msgSend_objectForKeyedSubscript_(v8, v4, *(a1 + 40));
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_18864F51C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18864F540(uint64_t a1, const char *a2, uint64_t a3)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v3 = qword_1ED4B6000;
  v17 = qword_1ED4B6000;
  if (!qword_1ED4B6000)
  {
    v4 = sub_18865080C(a1, a2, a3);
    v15[3] = dlsym(v4, "_DASOverrideRateLimitingKey");
    qword_1ED4B6000 = v15[3];
    v3 = v15[3];
  }

  _Block_object_dispose(&v14, 8);
  if (v3)
  {
    v7 = *v3;

    v8 = v7;
  }

  else
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v5, v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v10, "NSString *get_DASOverrideRateLimitingKey(void)");
    v12 = dlerror();
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v9, v13, v11, @"CKScheduler.m", 30, @"%s", v12);

    __break(1u);
  }
}

void sub_18864F68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_18864F6A4(void *a1, const char *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a1[4];
  v6 = a3;
  v7 = xpc_dictionary_get_value(v5, a2);

  if (v7)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v8 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
    {
      v24 = a1[5];
      v25 = v8;
      v28 = objc_msgSend_identifier(v24, v26, v27);
      v29 = 138543618;
      v30 = v28;
      v31 = 2082;
      v32 = a2;
      _os_log_debug_impl(&dword_1883EA000, v25, OS_LOG_TYPE_DEBUG, "Overriding existing XPC activity criterion %{public}@ for key %{public}s", &v29, 0x16u);
    }
  }

  v9 = a1[4];
  v10 = xpc_copy(v6);
  xpc_dictionary_set_value(v9, a2, v10);

  v11 = a1[6];
  v12 = xpc_copy(v6);
  xpc_dictionary_set_value(v11, a2, v12);

  v13 = xpc_copy_short_description();
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v14 = ck_log_facility_scheduler;
  if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
  {
    v17 = a1[5];
    v18 = v14;
    v21 = objc_msgSend_identifier(v17, v19, v20);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v22, v13);
    v29 = 138543874;
    v30 = v21;
    v31 = 2082;
    v32 = a2;
    v33 = 2112;
    v34 = v23;
    _os_log_debug_impl(&dword_1883EA000, v18, OS_LOG_TYPE_DEBUG, "Adding additional XPC activity criterion for %{public}@: %{public}s %@", &v29, 0x20u);
  }

  free(v13);
  v15 = *MEMORY[0x1E69E9840];
  return 1;
}

void sub_188650354(uint64_t a1, const char *a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *(a1 + 40));

  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = objc_opt_class();
    v10 = objc_msgSend_activityFromXPCActivity_(v8, v9, v6);
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v13 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_DEBUG))
    {
      v15 = *(a1 + 40);
      v16 = 138543362;
      v17 = v15;
      _os_log_debug_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEBUG, "Couldn't find XPC activity for CK activity %{public}@", &v16, 0xCu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_18865056C(uint64_t a1, const char *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_xpcActivitiesByCKActivityIdentifier(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *(a1 + 40));

  if (v6)
  {
    v7 = xpc_activity_copy_criteria(v6);
    v8 = v7;
    if (v7)
    {
      *(*(*(a1 + 48) + 8) + 24) = xpc_dictionary_get_int64(v7, "ck_scheduler_priority");
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v11 = ck_log_facility_scheduler;
      if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 40);
        v14 = 138543362;
        v15 = v12;
        _os_log_impl(&dword_1883EA000, v11, OS_LOG_TYPE_INFO, "No criteria in XPC activity for %{public}@", &v14, 0xCu);
      }
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v9 = ck_log_facility_scheduler;
    if (os_log_type_enabled(ck_log_facility_scheduler, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 40);
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_1883EA000, v9, OS_LOG_TYPE_INFO, "Couldn't find XPC activity for CK activity %{public}@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void *sub_1886507BC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_18865080C(a1, a2, a3);
  result = dlsym(v4, "_DASOverrideRateLimitingKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4B6000 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_18865080C(uint64_t a1, const char *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  if (!qword_1ED4B6008)
  {
    v10[1] = MEMORY[0x1E69E9820];
    v10[2] = 3221225472;
    v10[3] = sub_188650960;
    v10[4] = &unk_1E70BC418;
    v10[5] = v10;
    v11 = xmmword_1E70C01B8;
    v12 = 0;
    qword_1ED4B6008 = _sl_dlopen();
  }

  v3 = qword_1ED4B6008;
  if (!qword_1ED4B6008)
  {
    v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v7, "void *DuetActivitySchedulerLibrary(void)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v9, v8, @"CKScheduler.m", 27, @"%s", v10[0]);

    __break(1u);
    goto LABEL_7;
  }

  v4 = v10[0];
  if (v10[0])
  {
LABEL_7:
    free(v4);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_188650960(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1ED4B6008 = result;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void *sub_1886509D4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_18865080C(a1, a2, a3);
  result = dlsym(v4, "_DASRateLimitConfigurationKey");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4B62F8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_188650A24(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_18865080C(a1, a2, a3);
  result = dlsym(v4, "_DASCKRateLimitConfigurationName");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1ED4B6300 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_188651198(uint64_t a1, uint64_t a2)
{
  v4 = xpc_copy_short_description();
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, v4);
  v7 = *(a1 + 32);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v8, a2);
  objc_msgSend_setObject_forKeyedSubscript_(v7, v10, v6, v9);

  free(v4);
  return 1;
}

void sub_18865182C(uint64_t a1, id a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  value = a3;
  v9 = objc_msgSend_UTF8String(a2, v7, v8);
  xpc_dictionary_set_value(v5, v9, value);
}

uint64_t sub_188651968(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x1E696AEC0];
  v6 = a3;
  v8 = objc_msgSend_stringWithUTF8String_(v5, v7, a2);
  objc_msgSend_setObject_forKeyedSubscript_(v4, v9, v6, v8);

  return 1;
}

uint64_t CKSyncEngineDelegateShouldFetchChanges(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (objc_opt_respondsToSelector())
  {
    ChangesForZoneID = objc_msgSend_syncEngine_shouldFetchChangesForZoneID_(v5, v8, v6, v7);
  }

  else
  {
    ChangesForZoneID = 1;
  }

  return ChangesForZoneID;
}

uint64_t CKSyncEngineDataSourceShouldFetchAssetContents(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (objc_opt_respondsToSelector())
  {
    AssetContentsForZoneID = objc_msgSend_syncEngine_shouldFetchAssetContentsForZoneID_(v5, v8, v6, v7);
  }

  else
  {
    AssetContentsForZoneID = 1;
  }

  return AssetContentsForZoneID;
}

uint64_t sub_18865311C(void *a1, char *a2, uint64_t a3)
{
  v4 = objc_msgSend_CKClientSuitableError(a1, a2, a3);
  v7 = objc_msgSend_domain(v4, v5, v6);
  if (objc_msgSend_isEqualToString_(v7, v8, *MEMORY[0x1E696A250]))
  {
    if (objc_msgSend_code(v4, v9, v10) == 4099)
    {

      goto LABEL_22;
    }

    v27 = objc_msgSend_code(v4, v11, v12);

    if (v27 == 4097)
    {
LABEL_22:
      v26 = 1;
      if (a2)
      {
        *a2 = 1;
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  v15 = objc_msgSend_domain(v4, v13, v14);
  isEqualToString = objc_msgSend_isEqualToString_(v15, v16, @"CKErrorDomain");

  if (isEqualToString)
  {
    if (objc_msgSend_code(v4, v18, v19) == 2)
    {
      v42 = 0;
      v43 = &v42;
      v44 = 0x2020000000;
      v45 = 0;
      v22 = objc_msgSend_userInfo(v4, v20, v21);
      v24 = objc_msgSend_objectForKeyedSubscript_(v22, v23, @"CKPartialErrors");

      v41[0] = MEMORY[0x1E69E9820];
      v41[1] = 3221225472;
      v41[2] = sub_188655734;
      v41[3] = &unk_1E70C02C8;
      v41[4] = &v42;
      v41[5] = a2;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v24, v25, v41);
      v26 = *(v43 + 24);

      _Block_object_dispose(&v42, 8);
      goto LABEL_26;
    }

    if (objc_msgSend_code(v4, v20, v21) == 1)
    {
      v30 = objc_msgSend_userInfo(v4, v28, v29);
      v32 = objc_msgSend_objectForKeyedSubscript_(v30, v31, *MEMORY[0x1E696AA08]);

      v35 = objc_msgSend_domain(v32, v33, v34);
      v37 = objc_msgSend_isEqualToString_(v35, v36, @"CKErrorDomain");

      if (v37)
      {
        v38 = v32;

        v4 = v38;
      }
    }

    v39 = objc_msgSend_code(v4, v28, v29);
    if (v39 <= 0x24)
    {
      if (((1 << v39) & 0x1000A002D8) != 0)
      {
        goto LABEL_22;
      }

      if (v39 == 20)
      {
        if (a2)
        {
          *a2 = 0;
        }

        v26 = 1;
        goto LABEL_26;
      }
    }

    if (v39 - 110 <= 5 && ((1 << (v39 - 110)) & 0x23) != 0)
    {
      goto LABEL_22;
    }
  }

  v26 = 0;
  if (a2)
  {
    *a2 = 0;
  }

LABEL_26:

  return v26 & 1;
}

void sub_1886533BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886533D4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v11 = a2;
  objc_msgSend_syncEngine_failedToDeleteRecordWithID_error_(v5, v8, v6, v11, v7);
  objc_msgSend_addObject_(*(a1 + 48), v9, v11);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 56), v10, v7, v11);
}

uint64_t sub_1886537DC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = objc_msgSend_recordID(a2, a2, a3);
  v6 = objc_msgSend_containsRecordID_(v3, v5, v4);

  return v6;
}

id sub_188653824(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = objc_msgSend_syncEngine_recordToSaveForRecordID_(*(a1 + 32), v4, *(a1 + 40), v3);
  if (!v5)
  {
    v6 = *(a1 + 48);
    v7 = [CKSyncEnginePendingRecordZoneChange alloc];
    v9 = objc_msgSend_initWithRecordID_type_(v7, v8, v3, 0);
    objc_msgSend_addObject_(v6, v10, v9);
  }

  return v5;
}

__CFString *CKStringFromSyncReason(uint64_t a1)
{
  v1 = @"Unknown";
  if (a1 == 1)
  {
    v1 = @"Manual";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"Scheduled";
  }
}

uint64_t sub_188655734(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = sub_18865311C(a3, *(a1 + 40));
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

__CFString *CKStringFromSyncEngineAccountChangeType(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70C0308[a1];
  }
}

__CFString *CKStringFromZoneDeletionReason(unint64_t a1)
{
  if (a1 > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E70C0320[a1];
  }
}

uint64_t sub_18865B0F8(uint64_t a1, const char *a2, uint64_t a3)
{
  *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_count(*(*(a1 + 32) + 72), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_count(*(*(a1 + 32) + 8), v4, v5);
  *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_count(*(*(a1 + 32) + 96), v6, v7);
  *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_count(*(*(a1 + 32) + 104), v8, v9);
  *(*(*(a1 + 40) + 8) + 24) += objc_msgSend_count(*(*(a1 + 32) + 80), v10, v11);
  result = objc_msgSend_count(*(*(a1 + 32) + 120), v12, v13);
  *(*(*(a1 + 40) + 8) + 24) += result;
  return result;
}

void sub_18865B3E0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = MEMORY[0x1E696AD98];
  DatabaseChanges = objc_msgSend_needsToFetchDatabaseChanges(*(a1 + 40), a2, a3);
  v7 = objc_msgSend_numberWithBool_(v4, v6, DatabaseChanges);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v8, v7, @"needsToFetchDatabaseChanges");

  v9 = MEMORY[0x1E696AD98];
  v12 = objc_msgSend_needsToSaveDatabaseSubscription(*(a1 + 40), v10, v11);
  v14 = objc_msgSend_numberWithBool_(v9, v13, v12);
  objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v15, v14, @"needsToSaveDatabaseSubscription");

  if (objc_msgSend_hasPendingUntrackedChanges(*(a1 + 40), v16, v17))
  {
    v20 = MEMORY[0x1E696AD98];
    hasPendingUntrackedChanges = objc_msgSend_hasPendingUntrackedChanges(*(a1 + 40), v18, v19);
    v23 = objc_msgSend_numberWithBool_(v20, v22, hasPendingUntrackedChanges);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v24, v23, @"hasPendingUntrackedChanges");
  }

  if (objc_msgSend_hasInFlightUntrackedChanges(*(a1 + 40), v18, v19))
  {
    v27 = MEMORY[0x1E696AD98];
    v28 = objc_msgSend_hasInFlightUntrackedChanges(*(a1 + 40), v25, v26);
    v30 = objc_msgSend_numberWithBool_(v27, v29, v28);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v31, v30, @"hasInFlightUntrackedChanges");
  }

  v32 = *(a1 + 32);
  v33 = objc_msgSend_serverChangeTokenForDatabase(*(a1 + 40), v25, v26);
  objc_msgSend_CKAddPropertySafelyForKey_value_(v32, v34, @"serverChangeTokenForDatabase", v33);

  v35 = *(a1 + 32);
  v38 = objc_msgSend_lastFetchDatabaseChangesDate(*(a1 + 40), v36, v37);
  objc_msgSend_CKAddPropertySafelyForKey_value_(v35, v39, @"lastFetchDatabaseChangesDate", v38);

  v40 = *(a1 + 32);
  v43 = objc_msgSend_existingDatabaseSubscriptionID(*(a1 + 40), v41, v42);
  objc_msgSend_CKAddPropertySafelyForKey_value_(v40, v44, @"existingDatabaseSubscriptionID", v43);

  v45 = *(a1 + 32);
  v48 = objc_msgSend_lastAccount(*(a1 + 40), v46, v47);
  v50 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v48, v49, *(a1 + 48), *(a1 + 49), *(a1 + 50));
  objc_msgSend_CKAddPropertySafelyForKey_value_(v45, v51, @"lastAccount", v50);

  v52 = *(a1 + 32);
  v55 = objc_msgSend_lastKnownUserRecordID(*(a1 + 40), v53, v54);
  v57 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v55, v56, *(a1 + 48), *(a1 + 49), *(a1 + 50));
  objc_msgSend_CKAddPropertySafelyForKey_value_(v52, v58, @"lastKnownUserRecordID", v57);

  v59 = *(a1 + 40);
  if (*(a1 + 50) == 1)
  {
    v60 = *(a1 + 32);
    if (v59)
    {
      v59 = v59[9];
    }

    v61 = v59;
    v64 = objc_msgSend_array(v61, v62, v63);
    v66 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v64, v65, *(a1 + 48), *(a1 + 49), *(a1 + 50));
    objc_msgSend_CKAddPropertySafelyForKey_value_(v60, v67, @"zoneIDsWithUnfetchedServerChanges", v66);

    v68 = *(a1 + 32);
    v71 = objc_msgSend_zoneState(*(a1 + 40), v69, v70);
    v73 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v71, v72, *(a1 + 48), *(a1 + 49), *(a1 + 50));
    objc_msgSend_CKAddPropertySafelyForKey_value_(v68, v74, @"zoneState", v73);

    v76 = *(a1 + 32);
    v75 = *(a1 + 40);
    if (v75)
    {
      v75 = v75[12];
    }

    v77 = *(a1 + 48);
    v78 = *(a1 + 49);
    v79 = *(a1 + 50);
    v80 = v75;
    v82 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v80, v81, v77, v78, v79);
    objc_msgSend_CKAddPropertySafelyForKey_value_(v76, v83, @"pendingRecordZoneChanges", v82);

    v86 = *(a1 + 40);
    if (v86)
    {
      v87 = objc_msgSend_count(*(v86 + 104), v84, v85);
    }

    else
    {
      v87 = objc_msgSend_count(0, v84, v85);
    }

    if (v87)
    {
      v89 = *(a1 + 32);
      v88 = *(a1 + 40);
      if (v88)
      {
        v88 = v88[13];
      }

      v90 = *(a1 + 48);
      v91 = *(a1 + 49);
      v92 = *(a1 + 50);
      v93 = v88;
      v95 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v93, v94, v90, v91, v92);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v89, v96, @"inFlightRecordZoneChanges", v95);
    }

    v98 = *(a1 + 32);
    v97 = *(a1 + 40);
    if (v97)
    {
      v97 = v97[10];
    }

    v99 = *(a1 + 48);
    v100 = *(a1 + 49);
    v101 = *(a1 + 50);
    v102 = v97;
    v104 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v102, v103, v99, v100, v101);
    objc_msgSend_CKAddPropertySafelyForKey_value_(v98, v105, @"pendingDatabaseChanges", v104);

    v108 = *(a1 + 40);
    if (v108)
    {
      v109 = objc_msgSend_count(*(v108 + 88), v106, v107);
    }

    else
    {
      v109 = objc_msgSend_count(0, v106, v107);
    }

    if (v109)
    {
      v111 = *(a1 + 32);
      v110 = *(a1 + 40);
      if (v110)
      {
        v110 = v110[11];
      }

      v112 = *(a1 + 48);
      v113 = *(a1 + 49);
      v114 = *(a1 + 50);
      v115 = v110;
      v117 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v115, v116, v112, v113, v114);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v111, v118, @"inFlightDatabaseChanges", v117);
    }

    v120 = *(a1 + 32);
    v119 = *(a1 + 40);
    if (v119)
    {
      v119 = v119[15];
    }

    v121 = *(a1 + 48);
    v122 = *(a1 + 49);
    v123 = *(a1 + 50);
    v124 = v119;
    v126 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v124, v125, v121, v122, v123);
    objc_msgSend_CKAddPropertySafelyForKey_value_(v120, v127, @"pendingAssetSyncs", v126);

    v130 = *(a1 + 40);
    if (v130)
    {
      v131 = objc_msgSend_count(*(v130 + 128), v128, v129);
    }

    else
    {
      v131 = objc_msgSend_count(0, v128, v129);
    }

    if (v131)
    {
      v133 = *(a1 + 32);
      v132 = *(a1 + 40);
      if (v132)
      {
        v132 = v132[16];
      }

      v134 = *(a1 + 48);
      v135 = *(a1 + 49);
      v136 = *(a1 + 50);
      v137 = v132;
      v223 = objc_msgSend_CKDescriptionPropertiesWithPublic_private_shouldExpand_(v137, v138, v134, v135, v136);
      objc_msgSend_CKAddPropertySafelyForKey_value_(v133, v139, @"inFlightAssetSyncs");
LABEL_56:
    }
  }

  else
  {
    v140 = MEMORY[0x1E696AD98];
    if (v59)
    {
      v59 = v59[9];
    }

    v141 = v59;
    v144 = objc_msgSend_count(v141, v142, v143);
    v146 = objc_msgSend_numberWithUnsignedInteger_(v140, v145, v144);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v147, v146, @"zoneIDsWithUnfetchedServerChanges.count");

    v148 = MEMORY[0x1E696AD98];
    v151 = objc_msgSend_zoneState(*(a1 + 40), v149, v150);
    v154 = objc_msgSend_count(v151, v152, v153);
    v156 = objc_msgSend_numberWithUnsignedInteger_(v148, v155, v154);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v157, v156, @"serverChangeTokensByZoneID.count");

    v158 = MEMORY[0x1E696AD98];
    v159 = *(a1 + 40);
    if (v159)
    {
      v159 = v159[12];
    }

    v160 = v159;
    v163 = objc_msgSend_count(v160, v161, v162);
    v165 = objc_msgSend_numberWithUnsignedInteger_(v158, v164, v163);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v166, v165, @"pendingRecordZoneChanges.count");

    v169 = *(a1 + 40);
    if (v169)
    {
      v170 = objc_msgSend_count(*(v169 + 104), v167, v168);
    }

    else
    {
      v170 = objc_msgSend_count(0, v167, v168);
    }

    if (v170)
    {
      v173 = MEMORY[0x1E696AD98];
      v174 = *(a1 + 40);
      if (v174)
      {
        v174 = v174[13];
      }

      v175 = v174;
      v178 = objc_msgSend_count(v175, v176, v177);
      v180 = objc_msgSend_numberWithUnsignedInteger_(v173, v179, v178);
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v181, v180, @"inFlightRecordZoneChanges.count");
    }

    v182 = MEMORY[0x1E696AD98];
    v183 = objc_msgSend_pendingDatabaseChanges(*(a1 + 40), v171, v172);
    v186 = objc_msgSend_count(v183, v184, v185);
    v188 = objc_msgSend_numberWithUnsignedInteger_(v182, v187, v186);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v189, v188, @"pendingDatabaseChanges.count");

    v192 = *(a1 + 40);
    if (v192)
    {
      v193 = objc_msgSend_count(*(v192 + 88), v190, v191);
    }

    else
    {
      v193 = objc_msgSend_count(0, v190, v191);
    }

    if (v193)
    {
      v194 = MEMORY[0x1E696AD98];
      v195 = *(a1 + 40);
      if (v195)
      {
        v195 = v195[11];
      }

      v196 = v195;
      v199 = objc_msgSend_count(v196, v197, v198);
      v201 = objc_msgSend_numberWithUnsignedInteger_(v194, v200, v199);
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v202, v201, @"inFlightDatabaseChanges.count");
    }

    v203 = MEMORY[0x1E696AD98];
    v204 = *(a1 + 40);
    if (v204)
    {
      v204 = v204[15];
    }

    v205 = v204;
    v208 = objc_msgSend_count(v205, v206, v207);
    v210 = objc_msgSend_numberWithUnsignedInteger_(v203, v209, v208);
    objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v211, v210, @"pendingAssetSyncs.count");

    v214 = *(a1 + 40);
    if (v214)
    {
      v215 = objc_msgSend_count(*(v214 + 128), v212, v213);
    }

    else
    {
      v215 = objc_msgSend_count(0, v212, v213);
    }

    if (v215)
    {
      v216 = MEMORY[0x1E696AD98];
      v217 = *(a1 + 40);
      if (v217)
      {
        v217 = v217[16];
      }

      v137 = v217;
      v220 = objc_msgSend_count(v137, v218, v219);
      v223 = objc_msgSend_numberWithUnsignedInteger_(v216, v221, v220);
      objc_msgSend_setObject_forKeyedSubscript_(*(a1 + 32), v222, v223, @"inFlightAssetSyncs.count");
      goto LABEL_56;
    }
  }
}

id sub_18865CB70(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CKTuple2 alloc];
  v6 = objc_msgSend_zoneID(v2, v4, v5);
  v8 = objc_msgSend_initWithObject1_object2_(v3, v7, v6, v2);

  return v8;
}

id sub_18865CBF0(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [CKSyncEngineZoneState alloc];
  v8 = objc_msgSend_initWithZoneID_(v6, v7, v5);

  objc_msgSend_setServerChangeToken_(v8, v9, v4);

  return v8;
}

id sub_18865CC6C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CKSyncEnginePendingZoneSave alloc];
  v4 = [CKRecordZone alloc];
  v6 = objc_msgSend_initWithZoneID_(v4, v5, v2);

  v8 = objc_msgSend_initWithZone_(v3, v7, v6);

  return v8;
}

id sub_18865CCF0(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [CKSyncEnginePendingZoneDelete alloc];
  v5 = objc_msgSend_initWithZoneID_(v3, v4, v2);

  return v5;
}

void sub_18865CF70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_18865CF9C(void *a1, const char *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  if (v3)
  {
    v3 = *(v3 + 144);
  }

  *(*(a1[5] + 8) + 24) = v3;
  v4 = a1[4];
  v11 = 0;
  v5 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x1E696ACC8], a2, v4, 1, &v11);
  v6 = v11;
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (v6)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v9 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_fault_impl(&dword_1883EA000, v9, OS_LOG_TYPE_FAULT, "BUG IN CLOUDKIT: Error serializing sync engine metadata: %@", buf, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

void sub_18865D310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18865D328(uint64_t a1, const char *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, *(a1 + 32));
  v6 = *(a1 + 40);
  if (v6)
  {
    objc_msgSend_set(*(v6 + 96), v3, v4);
  }

  else
  {
    objc_msgSend_set(0, v3, v4);
  }
  v7 = ;
  isSubsetOfSet = objc_msgSend_isSubsetOfSet_(v5, v8, v7);

  if ((isSubsetOfSet & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v44 = *(a1 + 40);
      v45 = v17;
      v48 = objc_msgSend_shortDescription(v44, v46, v47);
      v49 = *(a1 + 32);
      *buf = 138543618;
      v56 = v48;
      v57 = 2112;
      v58 = v49;
      _os_log_debug_impl(&dword_1883EA000, v45, OS_LOG_TYPE_DEBUG, "%{public}@ adding pending record zone changes: %@", buf, 0x16u);
    }

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_msgSend_recordChangesWithOppositeTypeFromRecordChanges_(CKSyncEnginePendingRecordZoneChange, v18, *(a1 + 32));
    v12 = objc_msgSend_setWithArray_(v19, v21, v20);

    v23 = *(a1 + 40);
    if (v23)
    {
      objc_msgSend_minusSet_(*(v23 + 96), v22, v12);
    }

    else
    {
      objc_msgSend_minusSet_(0, v22, v12);
    }

    v25 = *(a1 + 40);
    if (v25)
    {
      objc_msgSend_addObjectsFromArray_(*(v25 + 96), v24, *(a1 + 32));
    }

    else
    {
      objc_msgSend_addObjectsFromArray_(0, v24, *(a1 + 32));
    }

    if (objc_msgSend_scheduledSyncInProgress(*(a1 + 40), v26, v27))
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v28 = *(a1 + 32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v50, v54, 16);
      if (v30)
      {
        v33 = v30;
        v34 = *v51;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v51 != v34)
            {
              objc_enumerationMutation(v28);
            }

            v36 = *(a1 + 40);
            v37 = objc_msgSend_recordID(*(*(&v50 + 1) + 8 * i), v31, v32, v50);
            v40 = objc_msgSend_zoneID(v37, v38, v39);
            objc_msgSend_trackPendingZoneIDDuringAutomaticSync_(v36, v41, v40);
          }

          v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v50, v54, 16);
        }

        while (v33);
      }
    }

    v42 = *(a1 + 40);
    if (v42)
    {
      ++*(v42 + 144);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    goto LABEL_28;
  }

  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v10 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    v11 = *(a1 + 40);
    v12 = v10;
    v15 = objc_msgSend_shortDescription(v11, v13, v14);
    v16 = *(a1 + 32);
    *buf = 138543618;
    v56 = v15;
    v57 = 2112;
    v58 = v16;
    _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ no new record zone changes to add: %@", buf, 0x16u);

LABEL_28:
  }

  v43 = *MEMORY[0x1E69E9840];
}

void sub_18865D770(uint64_t a1)
{
  *&v72[13] = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    v52 = *(a1 + 32);
    v53 = v2;
    v56 = objc_msgSend_shortDescription(v52, v54, v55);
    v57 = *(a1 + 48);
    v58 = *(a1 + 40);
    v69 = 138543874;
    v70 = v56;
    v71 = 1024;
    *v72 = v57;
    v72[2] = 2112;
    *&v72[3] = v58;
    _os_log_debug_impl(&dword_1883EA000, v53, OS_LOG_TYPE_DEBUG, "%{public}@ marking record zone changes inFlight=%d: %@", &v69, 0x1Cu);
  }

  v3 = objc_alloc(MEMORY[0x1E695DFA0]);
  v5 = objc_msgSend_initWithArray_(v3, v4, *(a1 + 40));
  v6 = *(a1 + 48);
  v10 = objc_msgSend_count(v5, v7, v8);
  v11 = *(a1 + 32);
  if (v6 == 1)
  {
    if (v11)
    {
      objc_msgSend_intersectOrderedSet_(v5, v9, *(v11 + 96));
    }

    else
    {
      objc_msgSend_intersectOrderedSet_(v5, v9, 0);
    }

    v14 = objc_msgSend_count(v5, v12, v13);
    v16 = v14 - v10;
    if (v14 != v10)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v17 = ck_log_facility_engine;
      if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
      {
        v59 = *(a1 + 32);
        v60 = v17;
        v63 = objc_msgSend_shortDescription(v59, v61, v62);
        v69 = 138543618;
        v70 = v63;
        v71 = 2048;
        *v72 = v16;
        _os_log_debug_impl(&dword_1883EA000, v60, OS_LOG_TYPE_DEBUG, "%{public}@ trying to mark %ld record zone changes in flight that aren't pending", &v69, 0x16u);
      }
    }

    v18 = *(a1 + 32);
    if (v18)
    {
      objc_msgSend_minusOrderedSet_(*(v18 + 96), v15, v5);
    }

    else
    {
      objc_msgSend_minusOrderedSet_(0, v15, v5);
    }

    v20 = *(a1 + 32);
    if (v20)
    {
      objc_msgSend_unionOrderedSet_(*(v20 + 104), v19, v5);
    }

    else
    {
      objc_msgSend_unionOrderedSet_(0, v19, v5);
    }
  }

  else
  {
    if (v11)
    {
      objc_msgSend_intersectOrderedSet_(v5, v9, *(v11 + 104));
    }

    else
    {
      objc_msgSend_intersectOrderedSet_(v5, v9, 0);
    }

    v23 = objc_msgSend_count(v5, v21, v22);
    v25 = v23 - v10;
    if (v23 != v10)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v26 = ck_log_facility_engine;
      if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
      {
        v64 = *(a1 + 32);
        v65 = v26;
        v68 = objc_msgSend_shortDescription(v64, v66, v67);
        v69 = 138543618;
        v70 = v68;
        v71 = 2048;
        *v72 = v25;
        _os_log_debug_impl(&dword_1883EA000, v65, OS_LOG_TYPE_DEBUG, "%{public}@ trying to mark %ld record zone changes as no longer in flight that aren't in flight", &v69, 0x16u);
      }
    }

    v27 = *(a1 + 32);
    if (v27)
    {
      objc_msgSend_minusOrderedSet_(*(v27 + 104), v24, v5);
    }

    else
    {
      objc_msgSend_minusOrderedSet_(0, v24, v5);
    }

    v30 = MEMORY[0x1E695DFD8];
    v31 = *(a1 + 32);
    if (v31)
    {
      objc_msgSend_array(*(v31 + 96), v28, v29);
    }

    else
    {
      objc_msgSend_array(0, v28, v29);
    }
    v32 = ;
    v34 = objc_msgSend_recordChangesWithOppositeTypeFromRecordChanges_(CKSyncEnginePendingRecordZoneChange, v33, v32);
    v36 = objc_msgSend_setWithArray_(v30, v35, v34);

    objc_msgSend_minusSet_(v5, v37, v36);
    v38 = *(a1 + 32);
    if (v38)
    {
      v38 = v38[12];
    }

    v39 = v38;
    v42 = objc_msgSend_array(v5, v40, v41);
    v43 = MEMORY[0x1E696AC90];
    v46 = objc_msgSend_count(v5, v44, v45);
    v48 = objc_msgSend_indexSetWithIndexesInRange_(v43, v47, 0, v46);
    objc_msgSend_insertObjects_atIndexes_(v39, v49, v42, v48);
  }

  v50 = *(a1 + 32);
  if (v50)
  {
    ++*(v50 + 144);
  }

  v51 = *MEMORY[0x1E69E9840];
}

void sub_18865DD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18865DDAC(uint64_t a1, const char *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, *(a1 + 32));
  v6 = *(a1 + 40);
  if (v6)
  {
    objc_msgSend_set(*(v6 + 96), v3, v4);
  }

  else
  {
    objc_msgSend_set(0, v3, v4);
  }
  v7 = ;
  v9 = objc_msgSend_intersectsSet_(v5, v8, v7);

  if (v9)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = v10;
      v16 = objc_msgSend_shortDescription(v12, v14, v15);
      v17 = *(a1 + 32);
      *buf = 138543618;
      v43 = v16;
      v44 = 2112;
      v45 = v17;
      _os_log_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ removing pending record zone changes: %@", buf, 0x16u);
    }

    v18 = *(a1 + 40);
    if (v18)
    {
      objc_msgSend_minusSet_(*(v18 + 96), v11, v5);
    }

    else
    {
      objc_msgSend_minusSet_(0, v11, v5);
    }

    v21 = *(a1 + 40);
    if (v21)
    {
      ++*(v21 + 144);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    if (objc_msgSend_scheduledSyncInProgress(*(a1 + 40), v19, v20))
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v22 = v5;
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v37, v41, 16);
      if (v24)
      {
        v27 = v24;
        v28 = *v38;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v38 != v28)
            {
              objc_enumerationMutation(v22);
            }

            v30 = *(a1 + 40);
            v31 = objc_msgSend_recordID(*(*(&v37 + 1) + 8 * i), v25, v26, v37);
            v34 = objc_msgSend_zoneID(v31, v32, v33);
            objc_msgSend_unTrackPendingZoneIDDuringAutomaticSync_(v30, v35, v34);
          }

          v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v37, v41, 16);
        }

        while (v27);
      }
    }
  }

  v36 = *MEMORY[0x1E69E9840];
}

uint64_t sub_18865E0F8(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = v2;
    v12 = objc_msgSend_shortDescription(v8, v10, v11);
    v13 = *(a1 + 40);
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_debug_impl(&dword_1883EA000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ removing in flight record zone changes: %@", &v14, 0x16u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    result = objc_msgSend_removeObjectsInArray_(*(v4 + 104), v3, *(a1 + 40));
  }

  else
  {
    result = objc_msgSend_removeObjectsInArray_(0, v3, *(a1 + 40));
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    ++*(v6 + 144);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18865E334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18865E34C(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[13];
  }

  v3 = a1[5];
  v5 = v2;
  *(*(a1[6] + 8) + 24) = objc_msgSend_containsObject_(v5, v4, v3);
}

void sub_18865E4AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18865E4C4(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[12];
  }

  v3 = a1[5];
  v5 = v2;
  *(*(a1[6] + 8) + 24) = objc_msgSend_containsObject_(v5, v4, v3);
}

void sub_18865E6C8(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 32);
    v23 = v2;
    v26 = objc_msgSend_shortDescription(v22, v24, v25);
    v27 = *(a1 + 40);
    *buf = 138543618;
    v34 = v26;
    v35 = 2112;
    v36 = v27;
    _os_log_debug_impl(&dword_1883EA000, v23, OS_LOG_TYPE_DEBUG, "%{public}@ setting pending record zone changes: %@", buf, 0x16u);
  }

  v3 = objc_alloc(MEMORY[0x1E695DFA0]);
  v5 = objc_msgSend_initWithArray_(v3, v4, *(a1 + 40));
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = objc_msgSend_reverseObjectEnumerator(*(a1 + 40), v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v28, v32, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        if (objc_msgSend_containsObject_(v5, v11, v15))
        {
          v17 = objc_msgSend_oppositeTypeChange(v15, v11, v16);
          objc_msgSend_removeObject_(v5, v18, v17);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v28, v32, 16);
    }

    while (v12);
  }

  v19 = *(a1 + 32);
  v20 = *(v19 + 96);
  *(v19 + 96) = v5;

  v21 = *MEMORY[0x1E69E9840];
}

void sub_18865E9E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18865EA00(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[13];
  }

  v3 = v2;
  v11 = objc_msgSend_array(v3, v4, v5);
  v8 = objc_msgSend_copy(v11, v6, v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_18865EBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18865EBC4(uint64_t a1, const char *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_objectForKeyedSubscript_(*(*(a1 + 32) + 8), a2, *(a1 + 40));
  if (!v5)
  {
    if (*(a1 + 48))
    {
      v6 = [CKSyncEngineZoneState alloc];
      v5 = objc_msgSend_initWithZoneID_(v6, v7, *(a1 + 40));
      objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 8), v8, v5, *(a1 + 40));
    }

    else
    {
      v5 = 0;
    }
  }

  v9 = objc_msgSend_serverChangeToken(v5, v3, v4);
  v10 = CKObjectsAreBothNilOrEqual(v9, *(a1 + 48));

  if ((v10 & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v11 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 32);
      v14 = v11;
      v17 = objc_msgSend_shortDescription(v13, v15, v16);
      v18 = *(a1 + 48);
      v21 = objc_msgSend_ckShortDescription(*(a1 + 40), v19, v20);
      v25 = 138543874;
      v26 = v17;
      v27 = 2112;
      v28 = v18;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_1883EA000, v14, OS_LOG_TYPE_INFO, "%{public}@ setting server change token %@ for zone ID %@", &v25, 0x20u);
    }

    objc_msgSend_setServerChangeToken_(v5, v12, *(a1 + 48));
    objc_msgSend_setObject_forKeyedSubscript_(*(*(a1 + 32) + 8), v22, v5, *(a1 + 40));
    v23 = *(a1 + 32);
    if (v23)
    {
      ++*(v23 + 144);
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v24 = *MEMORY[0x1E69E9840];
}

id sub_18865EDAC(uint64_t a1, const char *a2, void *a3)
{
  v3 = objc_msgSend_copy(a3, a2, a3);

  return v3;
}

id sub_18865EDD8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v6 = objc_msgSend_serverChangeToken(v3, v4, v5);

  if (v6)
  {
    v6 = objc_msgSend_serverChangeToken(v3, v7, v8);
  }

  return v6;
}

void sub_18865EF90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18865EFA8(void *a1, const char *a2)
{
  v3 = objc_msgSend_objectForKeyedSubscript_(*(a1[4] + 8), a2, a1[5]);
  if (v3)
  {
    v6 = a1[7];
    if (v6)
    {
      *v6 = 1;
    }

    v10 = v3;
    v7 = objc_msgSend_serverChangeToken(v3, v4, v5);
    v8 = *(a1[6] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v3 = v10;
  }
}

uint64_t sub_18865F1B8(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v2;
    v8 = objc_msgSend_shortDescription(v4, v6, v7);
    v9 = *(a1 + 48);
    v12 = objc_msgSend_ckShortDescription(*(a1 + 40), v10, v11);
    v27 = 138543874;
    v28 = v8;
    v29 = 1024;
    v30 = v9;
    v31 = 2112;
    v32 = v12;
    _os_log_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ setting needs to fetch changes %d for zone %@", &v27, 0x1Cu);
  }

  v13 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    if (v13)
    {
      result = objc_msgSend_containsObject_(*(v13 + 72), v3, *(a1 + 40));
    }

    else
    {
      result = objc_msgSend_containsObject_(0, v3, *(a1 + 40));
    }

    if ((result & 1) == 0)
    {
      v16 = *(a1 + 32);
      if (v16)
      {
        objc_msgSend_addObject_(*(v16 + 72), v15, *(a1 + 40));
      }

      else
      {
        objc_msgSend_addObject_(0, v15, *(a1 + 40));
      }

      result = objc_msgSend_scheduledSyncInProgress(*(a1 + 32), v17, v18);
      if (result)
      {
        result = objc_msgSend_trackPendingZoneIDDuringAutomaticSync_(*(a1 + 32), v19, *(a1 + 40));
      }

LABEL_20:
      v25 = *(a1 + 32);
      if (v25)
      {
        ++*(v25 + 144);
      }
    }
  }

  else
  {
    if (v13)
    {
      result = objc_msgSend_containsObject_(*(v13 + 72), v3, *(a1 + 40));
    }

    else
    {
      result = objc_msgSend_containsObject_(0, v3, *(a1 + 40));
    }

    if (result)
    {
      v21 = *(a1 + 32);
      if (v21)
      {
        objc_msgSend_removeObject_(*(v21 + 72), v20, *(a1 + 40));
      }

      else
      {
        objc_msgSend_removeObject_(0, v20, *(a1 + 40));
      }

      result = objc_msgSend_scheduledSyncInProgress(*(a1 + 32), v22, v23);
      if (result)
      {
        result = objc_msgSend_unTrackPendingZoneIDDuringAutomaticSync_(*(a1 + 32), v24, *(a1 + 40));
      }

      goto LABEL_20;
    }
  }

  v26 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_18865F4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18865F4C0(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[9];
  }

  v3 = a1[5];
  v5 = v2;
  *(*(a1[6] + 8) + 24) = objc_msgSend_containsObject_(v5, v4, v3);
}

void sub_18865F630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18865F648(void *a1, const char *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_objectForKeyedSubscript_(*(a1[4] + 8), a2, a1[5]);
  if (v3)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_INFO))
    {
      v6 = a1[4];
      v7 = v4;
      v10 = objc_msgSend_shortDescription(v6, v8, v9);
      v13 = objc_msgSend_ckShortDescription(a1[5], v11, v12);
      v16 = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = v13;
      _os_log_impl(&dword_1883EA000, v7, OS_LOG_TYPE_INFO, "%{public}@ handling deleted record zone %@", &v16, 0x16u);
    }

    objc_msgSend_setObject_forKeyedSubscript_(*(a1[4] + 8), v5, 0, a1[5]);
    v14 = a1[4];
    if (v14)
    {
      ++*(v14 + 144);
    }

    *(*(a1[6] + 8) + 24) = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
}

void sub_18865F95C(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    v22 = *(a1 + 32);
    v23 = v2;
    v26 = objc_msgSend_shortDescription(v22, v24, v25);
    v27 = *(a1 + 40);
    *buf = 138543618;
    v34 = v26;
    v35 = 2112;
    v36 = v27;
    _os_log_debug_impl(&dword_1883EA000, v23, OS_LOG_TYPE_DEBUG, "%{public}@ setting pending database changes: %@", buf, 0x16u);
  }

  v3 = objc_alloc(MEMORY[0x1E695DFA0]);
  v5 = objc_msgSend_initWithArray_(v3, v4, *(a1 + 40));
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = objc_msgSend_reverseObjectEnumerator(*(a1 + 40), v6, v7, 0);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v28, v32, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v28 + 1) + 8 * i);
        if (objc_msgSend_containsObject_(v5, v11, v15))
        {
          v17 = objc_msgSend_oppositeTypeChange(v15, v11, v16);
          objc_msgSend_removeObject_(v5, v18, v17);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v28, v32, 16);
    }

    while (v12);
  }

  v19 = *(a1 + 32);
  v20 = *(v19 + 80);
  *(v19 + 80) = v5;

  v21 = *MEMORY[0x1E69E9840];
}

void sub_18865FD48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18865FD68(uint64_t a1, const char *a2)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, *(a1 + 32));
  v6 = *(a1 + 40);
  if (v6)
  {
    objc_msgSend_set(*(v6 + 80), v3, v4);
  }

  else
  {
    objc_msgSend_set(0, v3, v4);
  }
  v7 = ;
  isSubsetOfSet = objc_msgSend_isSubsetOfSet_(v5, v8, v7);

  if ((isSubsetOfSet & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = v10;
      v16 = objc_msgSend_shortDescription(v12, v14, v15);
      v17 = *(a1 + 32);
      *buf = 138543618;
      v47 = v16;
      v48 = 2112;
      v49 = v17;
      _os_log_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ adding pending database changes: %@", buf, 0x16u);
    }

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_msgSend_databaseChangesWithOppositeTypeFromDatabaseChanges_(CKSyncEnginePendingDatabaseChange, v11, *(a1 + 32));
    v21 = objc_msgSend_setWithArray_(v18, v20, v19);

    v23 = *(a1 + 40);
    if (v23)
    {
      objc_msgSend_minusSet_(*(v23 + 80), v22, v21);
    }

    else
    {
      objc_msgSend_minusSet_(0, v22, v21);
    }

    v25 = *(a1 + 40);
    if (v25)
    {
      objc_msgSend_addObjectsFromArray_(*(v25 + 80), v24, *(a1 + 32));
    }

    else
    {
      objc_msgSend_addObjectsFromArray_(0, v24, *(a1 + 32));
    }

    if (objc_msgSend_scheduledSyncInProgress(*(a1 + 40), v26, v27))
    {
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v28 = *(a1 + 32);
      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v41, v45, 16);
      if (v30)
      {
        v33 = v30;
        v34 = *v42;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v42 != v34)
            {
              objc_enumerationMutation(v28);
            }

            v36 = *(a1 + 40);
            v37 = objc_msgSend_zoneID(*(*(&v41 + 1) + 8 * i), v31, v32, v41);
            objc_msgSend_trackPendingZoneIDDuringAutomaticSync_(v36, v38, v37);
          }

          v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v41, v45, 16);
        }

        while (v33);
      }
    }

    v39 = *(a1 + 40);
    if (v39)
    {
      ++*(v39 + 144);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v40 = *MEMORY[0x1E69E9840];
}

void sub_188660210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188660230(uint64_t a1, const char *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, *(a1 + 32));
  v6 = *(a1 + 40);
  if (v6)
  {
    objc_msgSend_set(*(v6 + 80), v3, v4);
  }

  else
  {
    objc_msgSend_set(0, v3, v4);
  }
  v7 = ;
  v9 = objc_msgSend_intersectsSet_(v5, v8, v7);

  if (v9)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = v10;
      v16 = objc_msgSend_shortDescription(v12, v14, v15);
      v17 = *(a1 + 32);
      *buf = 138543618;
      v40 = v16;
      v41 = 2112;
      v42 = v17;
      _os_log_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ removing pending database changes: %@", buf, 0x16u);
    }

    v18 = *(a1 + 40);
    if (v18)
    {
      objc_msgSend_minusSet_(*(v18 + 80), v11, v5);
    }

    else
    {
      objc_msgSend_minusSet_(0, v11, v5);
    }

    v21 = *(a1 + 40);
    if (v21)
    {
      ++*(v21 + 144);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    if (objc_msgSend_scheduledSyncInProgress(*(a1 + 40), v19, v20))
    {
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v22 = v5;
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v34, v38, 16);
      if (v24)
      {
        v27 = v24;
        v28 = *v35;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v35 != v28)
            {
              objc_enumerationMutation(v22);
            }

            v30 = *(a1 + 40);
            v31 = objc_msgSend_zoneID(*(*(&v34 + 1) + 8 * i), v25, v26, v34);
            objc_msgSend_unTrackPendingZoneIDDuringAutomaticSync_(v30, v32, v31);
          }

          v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v34, v38, 16);
        }

        while (v27);
      }
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

void sub_188660568(uint64_t a1)
{
  *&v72[13] = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    v52 = *(a1 + 32);
    v53 = v2;
    v56 = objc_msgSend_shortDescription(v52, v54, v55);
    v57 = *(a1 + 48);
    v58 = *(a1 + 40);
    v69 = 138543874;
    v70 = v56;
    v71 = 1024;
    *v72 = v57;
    v72[2] = 2112;
    *&v72[3] = v58;
    _os_log_debug_impl(&dword_1883EA000, v53, OS_LOG_TYPE_DEBUG, "%{public}@ marking database changes inFlight=%d: %@", &v69, 0x1Cu);
  }

  v3 = objc_alloc(MEMORY[0x1E695DFA0]);
  v5 = objc_msgSend_initWithArray_(v3, v4, *(a1 + 40));
  v6 = *(a1 + 48);
  v10 = objc_msgSend_count(v5, v7, v8);
  v11 = *(a1 + 32);
  if (v6 == 1)
  {
    if (v11)
    {
      objc_msgSend_intersectOrderedSet_(v5, v9, *(v11 + 80));
    }

    else
    {
      objc_msgSend_intersectOrderedSet_(v5, v9, 0);
    }

    v14 = objc_msgSend_count(v5, v12, v13);
    v16 = v14 - v10;
    if (v14 != v10)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v17 = ck_log_facility_engine;
      if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
      {
        v59 = *(a1 + 32);
        v60 = v17;
        v63 = objc_msgSend_shortDescription(v59, v61, v62);
        v69 = 138543618;
        v70 = v63;
        v71 = 2048;
        *v72 = v16;
        _os_log_debug_impl(&dword_1883EA000, v60, OS_LOG_TYPE_DEBUG, "%{public}@ trying to mark %ld database changes in flight that aren't pending", &v69, 0x16u);
      }
    }

    v18 = *(a1 + 32);
    if (v18)
    {
      objc_msgSend_minusOrderedSet_(*(v18 + 80), v15, v5);
    }

    else
    {
      objc_msgSend_minusOrderedSet_(0, v15, v5);
    }

    v20 = *(a1 + 32);
    if (v20)
    {
      objc_msgSend_unionOrderedSet_(*(v20 + 88), v19, v5);
    }

    else
    {
      objc_msgSend_unionOrderedSet_(0, v19, v5);
    }
  }

  else
  {
    if (v11)
    {
      objc_msgSend_intersectOrderedSet_(v5, v9, *(v11 + 88));
    }

    else
    {
      objc_msgSend_intersectOrderedSet_(v5, v9, 0);
    }

    v23 = objc_msgSend_count(v5, v21, v22);
    v25 = v23 - v10;
    if (v23 != v10)
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v26 = ck_log_facility_engine;
      if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
      {
        v64 = *(a1 + 32);
        v65 = v26;
        v68 = objc_msgSend_shortDescription(v64, v66, v67);
        v69 = 138543618;
        v70 = v68;
        v71 = 2048;
        *v72 = v25;
        _os_log_debug_impl(&dword_1883EA000, v65, OS_LOG_TYPE_DEBUG, "%{public}@ trying to mark %ld database changes as no longer in flight that aren't in flight", &v69, 0x16u);
      }
    }

    v27 = *(a1 + 32);
    if (v27)
    {
      objc_msgSend_minusOrderedSet_(*(v27 + 88), v24, v5);
    }

    else
    {
      objc_msgSend_minusOrderedSet_(0, v24, v5);
    }

    v30 = MEMORY[0x1E695DFD8];
    v31 = *(a1 + 32);
    if (v31)
    {
      objc_msgSend_array(*(v31 + 80), v28, v29);
    }

    else
    {
      objc_msgSend_array(0, v28, v29);
    }
    v32 = ;
    v34 = objc_msgSend_databaseChangesWithOppositeTypeFromDatabaseChanges_(CKSyncEnginePendingDatabaseChange, v33, v32);
    v36 = objc_msgSend_setWithArray_(v30, v35, v34);

    objc_msgSend_minusSet_(v5, v37, v36);
    v38 = *(a1 + 32);
    if (v38)
    {
      v38 = v38[10];
    }

    v39 = v38;
    v42 = objc_msgSend_array(v5, v40, v41);
    v43 = MEMORY[0x1E696AC90];
    v46 = objc_msgSend_count(v5, v44, v45);
    v48 = objc_msgSend_indexSetWithIndexesInRange_(v43, v47, 0, v46);
    objc_msgSend_insertObjects_atIndexes_(v39, v49, v42, v48);
  }

  v50 = *(a1 + 32);
  if (v50)
  {
    ++*(v50 + 144);
  }

  v51 = *MEMORY[0x1E69E9840];
}

uint64_t sub_188660A64(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = v2;
    v12 = objc_msgSend_shortDescription(v8, v10, v11);
    v13 = *(a1 + 40);
    v14 = 138543618;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_debug_impl(&dword_1883EA000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ removing in flight database changes: %@", &v14, 0x16u);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    result = objc_msgSend_removeObjectsInArray_(*(v4 + 88), v3, *(a1 + 40));
  }

  else
  {
    result = objc_msgSend_removeObjectsInArray_(0, v3, *(a1 + 40));
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    ++*(v6 + 144);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_188660F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188660F58(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[15];
  }

  v3 = v2;
  v11 = objc_msgSend_array(v3, v4, v5);
  v8 = objc_msgSend_copy(v11, v6, v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

void sub_188661090(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = v2;
    v13 = objc_msgSend_shortDescription(v9, v11, v12);
    v14 = *(a1 + 40);
    v15 = 138543618;
    v16 = v13;
    v17 = 2112;
    v18 = v14;
    _os_log_debug_impl(&dword_1883EA000, v10, OS_LOG_TYPE_DEBUG, "%{public}@ setting pending asset syncs: %@", &v15, 0x16u);
  }

  v3 = objc_alloc(MEMORY[0x1E695DFA0]);
  v5 = objc_msgSend_initWithArray_(v3, v4, *(a1 + 40));
  v6 = *(a1 + 32);
  v7 = *(v6 + 120);
  *(v6 + 120) = v5;

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1886613A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886613C8(uint64_t a1, const char *a2)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, *(a1 + 32));
  v6 = *(a1 + 40);
  if (v6)
  {
    objc_msgSend_set(*(v6 + 120), v3, v4);
  }

  else
  {
    objc_msgSend_set(0, v3, v4);
  }
  v7 = ;
  isSubsetOfSet = objc_msgSend_isSubsetOfSet_(v5, v8, v7);

  if (isSubsetOfSet)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v10 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 40);
      v12 = v10;
      v15 = objc_msgSend_shortDescription(v11, v13, v14);
      v16 = *(a1 + 32);
      *buf = 138543618;
      v43 = v15;
      v44 = 2112;
      v45 = v16;
      _os_log_debug_impl(&dword_1883EA000, v12, OS_LOG_TYPE_DEBUG, "%{public}@ no new pending asset syncs to add: %@", buf, 0x16u);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v17 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v31 = *(a1 + 40);
      v32 = v17;
      v35 = objc_msgSend_shortDescription(v31, v33, v34);
      v36 = *(a1 + 32);
      *buf = 138543618;
      v43 = v35;
      v44 = 2112;
      v45 = v36;
      _os_log_debug_impl(&dword_1883EA000, v32, OS_LOG_TYPE_DEBUG, "%{public}@ adding pending asset syncs: %@", buf, 0x16u);
    }

    v19 = *(a1 + 40);
    if (v19)
    {
      objc_msgSend_addObjectsFromArray_(*(v19 + 120), v18, *(a1 + 32));
    }

    else
    {
      objc_msgSend_addObjectsFromArray_(0, v18, *(a1 + 32));
    }

    if (objc_msgSend_scheduledSyncInProgress(*(a1 + 40), v20, v21))
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v22 = *(a1 + 32);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v37, v41, 16);
      if (v24)
      {
        v26 = v24;
        v27 = *v38;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v38 != v27)
            {
              objc_enumerationMutation(v22);
            }

            objc_msgSend_trackPendingAssetSyncDuringAutomaticSync_(*(a1 + 40), v25, *(*(&v37 + 1) + 8 * i), v37);
          }

          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v37, v41, 16);
        }

        while (v26);
      }
    }

    v29 = *(a1 + 40);
    if (v29)
    {
      ++*(v29 + 144);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v30 = *MEMORY[0x1E69E9840];
}

void sub_18866189C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886618BC(uint64_t a1, const char *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_setWithArray_(MEMORY[0x1E695DFD8], a2, *(a1 + 32));
  v6 = *(a1 + 40);
  if (v6)
  {
    objc_msgSend_set(*(v6 + 120), v3, v4);
  }

  else
  {
    objc_msgSend_set(0, v3, v4);
  }
  v7 = ;
  v9 = objc_msgSend_intersectsSet_(v5, v8, v7);

  if (v9)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v12 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 40);
      v15 = v12;
      v18 = objc_msgSend_shortDescription(v14, v16, v17);
      v19 = *(a1 + 32);
      *buf = 138543618;
      v36 = v18;
      v37 = 2112;
      v38 = v19;
      _os_log_impl(&dword_1883EA000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ removing pending asset syncs: %@", buf, 0x16u);
    }

    v20 = *(a1 + 40);
    if (v20)
    {
      objc_msgSend_minusSet_(*(v20 + 120), v13, v5);
    }

    else
    {
      objc_msgSend_minusSet_(0, v13, v5);
    }

    v21 = *(a1 + 40);
    if (v21)
    {
      ++*(v21 + 144);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (objc_msgSend_scheduledSyncInProgress(*(a1 + 40), v10, v11))
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v22 = v5;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v30, v34, 16);
    if (v24)
    {
      v26 = v24;
      v27 = *v31;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(v22);
          }

          objc_msgSend_unTrackPendingAssetSyncDuringAutomaticSync_(*(a1 + 40), v25, *(*(&v30 + 1) + 8 * i), v30);
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v30, v34, 16);
      }

      while (v26);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

uint64_t sub_188661BD4(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_engine;
  if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(a1 + 32);
    v13 = v2;
    v16 = objc_msgSend_shortDescription(v12, v14, v15);
    v17 = *(a1 + 48);
    v18 = *(a1 + 40);
    v19 = 138543874;
    v20 = v16;
    v21 = 1024;
    v22 = v17;
    v23 = 2112;
    v24 = v18;
    _os_log_debug_impl(&dword_1883EA000, v13, OS_LOG_TYPE_DEBUG, "%{public}@ marking asset sync inFlight=%d: %@", &v19, 0x1Cu);
  }

  v4 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    if (v4)
    {
      objc_msgSend_removeObject_(*(v4 + 120), v3, *(a1 + 40));
    }

    else
    {
      objc_msgSend_removeObject_(0, v3, *(a1 + 40));
    }

    v6 = *(a1 + 32);
    if (v6)
    {
      result = objc_msgSend_addObject_(*(v6 + 128), v5, *(a1 + 40));
    }

    else
    {
      result = objc_msgSend_addObject_(0, v5, *(a1 + 40));
    }
  }

  else
  {
    if (v4)
    {
      objc_msgSend_removeObject_(*(v4 + 128), v3, *(a1 + 40));
    }

    else
    {
      objc_msgSend_removeObject_(0, v3, *(a1 + 40));
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      result = objc_msgSend_insertObject_atIndex_(*(v9 + 120), v8, *(a1 + 40), 0);
    }

    else
    {
      result = objc_msgSend_insertObject_atIndex_(0, v8, *(a1 + 40), 0);
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    ++*(v10 + 144);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_188661FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18866200C(uint64_t a1, const char *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = objc_msgSend_pendingAutomaticSyncAssetSyncs(*(a1 + 32), v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v25, v29, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = objc_msgSend_asset(v15, v10, v11);

        if (v16)
        {
          v17 = objc_msgSend_asset(v15, v10, v11);
          objc_msgSend_addObject_(v4, v18, v17);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v25, v29, 16);
    }

    while (v12);
  }

  v21 = objc_msgSend_copy(v4, v19, v20);
  v22 = *(*(a1 + 40) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  v24 = *MEMORY[0x1E69E9840];
}

void sub_18866228C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886622A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = objc_msgSend_pendingAssetSyncs(*(a1 + 32), v5, v6, 0);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v25, v29, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v26;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = objc_msgSend_asset(v15, v10, v11);

        if (v16)
        {
          v17 = objc_msgSend_asset(v15, v10, v11);
          objc_msgSend_addObject_(v4, v18, v17);
        }
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v25, v29, 16);
    }

    while (v12);
  }

  v21 = objc_msgSend_copy(v4, v19, v20);
  v22 = *(*(a1 + 40) + 8);
  v23 = *(v22 + 40);
  *(v22 + 40) = v21;

  v24 = *MEMORY[0x1E69E9840];
}

void sub_188662524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18866253C(uint64_t a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_array(MEMORY[0x1E695DF70], a2, a3);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = *(a1 + 32);
  if (v5)
  {
    v5 = v5[16];
  }

  v6 = v5;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v24, v28, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v6);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v15 = objc_msgSend_asset(v14, v9, v10, v24);

        if (v15)
        {
          v16 = objc_msgSend_asset(v14, v9, v10);
          objc_msgSend_addObject_(v4, v17, v16);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v24, v28, 16);
    }

    while (v11);
  }

  v20 = objc_msgSend_copy(v4, v18, v19);
  v21 = *(*(a1 + 40) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

  v23 = *MEMORY[0x1E69E9840];
}

void sub_188662B30(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 24);
  v4 = *(a1 + 40);
  if (v4 != v3 && (objc_msgSend_isEqual_(v4, v2, v3) & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v5 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a1 + 32);
      v9 = v5;
      v12 = objc_msgSend_shortDescription(v8, v10, v11);
      v13 = *(a1 + 40);
      v14 = 138543618;
      v15 = v12;
      v16 = 2112;
      v17 = v13;
      _os_log_debug_impl(&dword_1883EA000, v9, OS_LOG_TYPE_DEBUG, "%{public}@ setting server change token for database: (%@)", &v14, 0x16u);
    }

    objc_storeStrong((*(a1 + 32) + 24), *(a1 + 40));
    v6 = *(a1 + 32);
    if (v6)
    {
      ++*(v6 + 144);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_188662D34(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) != *(*(a1 + 32) + 16))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = v2;
      v9 = objc_msgSend_shortDescription(v5, v7, v8);
      v10 = *(a1 + 40);
      v11 = *(a1 + 41);
      v12 = 138543874;
      v13 = v9;
      v14 = 1024;
      v15 = v10;
      v16 = 1024;
      v17 = v11;
      _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ setting needs to fetch database changes %d with postStateUpdate %d", &v12, 0x18u);
    }

    *(*(a1 + 32) + 16) = *(a1 + 40);
    v3 = *(a1 + 32);
    if (v3)
    {
      ++*(v3 + 144);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_188662F28(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) != *(*(a1 + 32) + 17))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = v2;
      v9 = objc_msgSend_shortDescription(v5, v7, v8);
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v9;
      v13 = 1024;
      v14 = v10;
      _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ setting needs to save database subscription %d", &v11, 0x12u);
    }

    *(*(a1 + 32) + 17) = *(a1 + 40);
    v3 = *(a1 + 32);
    if (v3)
    {
      ++*(v3 + 144);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_188663130(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 32);
  if ((objc_msgSend_isEqual_(*(a1 + 40), v3, v2) & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = v4;
      v9 = objc_msgSend_shortDescription(v5, v7, v8);
      v10 = *(a1 + 40);
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ setting lastAccount %@", &v15, 0x16u);
    }

    objc_storeStrong((*(a1 + 32) + 32), *(a1 + 40));
    v13 = *(a1 + 32);
    if (v13)
    {
      ++*(v13 + 144);
      objc_msgSend_purgeLegacyLastKnownUserRecordIDIfNecessary(*(a1 + 32), v11, v12);
    }

    else
    {
      objc_msgSend_purgeLegacyLastKnownUserRecordIDIfNecessary(0, v11, v12);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

void sub_1886633A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886634AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1886634C4(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 40);
  if (v2)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v3 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 32);
      v5 = v3;
      v8 = objc_msgSend_shortDescription(v4, v6, v7);
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v2;
      _os_log_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ purging legacy lastKnownUserRecordID %@", &v13, 0x16u);
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    v11 = *(a1 + 32);
    if (v11)
    {
      ++*(v11 + 144);
    }

    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1886636F4(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 40);
  if ((objc_msgSend_isEqual_(*(a1 + 40), v3, v2) & 1) == 0)
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v4 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v4;
      v11 = objc_msgSend_shortDescription(v7, v9, v10);
      v14 = objc_msgSend_recordName(*(a1 + 40), v12, v13);
      v19 = 138543618;
      v20 = v11;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ setting lastKnownUserRecordID %@", &v19, 0x16u);
    }

    v15 = objc_msgSend_copy(*(a1 + 40), v5, v6);
    v16 = *(a1 + 32);
    v17 = *(v16 + 40);
    *(v16 + 40) = v15;
  }

  v18 = *MEMORY[0x1E69E9840];
}

void sub_188663938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188663950(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48) != *(*(a1 + 32) + 18))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = v2;
      v7 = objc_msgSend_shortDescription(v3, v5, v6);
      v8 = *(a1 + 48);
      v12 = 138543618;
      v13 = v7;
      v14 = 1024;
      v15 = v8;
      _os_log_impl(&dword_1883EA000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ setting has pending untracked changes %d", &v12, 0x12u);
    }

    v9 = *(a1 + 48);
    *(*(a1 + 32) + 18) = v9;
    v10 = *(a1 + 32);
    if (v10)
    {
      ++*(v10 + 144);
    }

    *(*(*(a1 + 40) + 8) + 24) = v9;
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_188663B38(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) != *(*(a1 + 32) + 19))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = v2;
      v9 = objc_msgSend_shortDescription(v5, v7, v8);
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v9;
      v13 = 1024;
      v14 = v10;
      _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ setting has in-flight untracked changes %d", &v11, 0x12u);
    }

    *(*(a1 + 32) + 19) = *(a1 + 40);
    v3 = *(a1 + 32);
    if (v3)
    {
      ++*(v3 + 144);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_188663D30(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 48), *(a1 + 40));
  v2 = *(a1 + 32);
  if (v2)
  {
    ++*(v2 + 144);
  }
}

void sub_188663EB4(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) != *(*(a1 + 32) + 20))
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v2 = ck_log_facility_engine;
    if (os_log_type_enabled(ck_log_facility_engine, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v6 = v2;
      v9 = objc_msgSend_shortDescription(v5, v7, v8);
      v10 = *(a1 + 40);
      v11 = 138543618;
      v12 = v9;
      v13 = 1024;
      v14 = v10;
      _os_log_debug_impl(&dword_1883EA000, v6, OS_LOG_TYPE_DEBUG, "%{public}@ setting scheduledSyncInProgress %d", &v11, 0x12u);
    }

    *(*(a1 + 32) + 20) = *(a1 + 40);
    v3 = *(a1 + 32);
    if (v3)
    {
      ++*(v3 + 144);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1886640CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18866420C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_188664224(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[14];
  }

  v3 = v2;
  v11 = objc_msgSend_array(v3, v4, v5);
  v8 = objc_msgSend_copy(v11, v6, v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

uint64_t sub_1886643F8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    return objc_msgSend_removeAllObjects(*(v3 + 112), a2, a3);
  }

  else
  {
    return objc_msgSend_removeAllObjects(0, a2, a3);
  }
}

void sub_188664524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18866453C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[17];
  }

  v3 = v2;
  v11 = objc_msgSend_array(v3, v4, v5);
  v8 = objc_msgSend_copy(v11, v6, v7);
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;
}

uint64_t sub_188664710(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    return objc_msgSend_removeAllObjects(*(v3 + 136), a2, a3);
  }

  else
  {
    return objc_msgSend_removeAllObjects(0, a2, a3);
  }
}

__CFString *CKSyncEnginePendingRecordZoneChangeTypeString(uint64_t a1)
{
  if (a1)
  {
    return @"Delete";
  }

  else
  {
    return @"Save";
  }
}

__CFString *CKSyncEnginePendingDatabaseChangeTypeString(uint64_t a1)
{
  if (a1)
  {
    return @"Delete";
  }

  else
  {
    return @"Save";
  }
}

id sub_188665F80(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v2 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v7 = objc_msgSend_path(v3, v5, v6);
    v10 = objc_msgSend_CKSanitizedPath(v7, v8, v9);
    v14 = 138543362;
    v15 = v10;
    _os_log_impl(&dword_1883EA000, v4, OS_LOG_TYPE_INFO, "Vacuuming database at %{public}@", &v14, 0xCu);
  }

  result = sqlite3_exec(*(*(a1 + 32) + 136), "VACUUM", 0, 0, 0);
  if (result)
  {
    result = objc_msgSend_handleDatabaseError_(*(a1 + 32), v12, @"Vacuum failed");
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_188666578(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3[32])
  {
    return 1;
  }

  else
  {
    return objc_msgSend_invalid(v3, a2, a3);
  }
}

void sub_188666850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void *sub_188666884(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1886668B8(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    if (*(v3 + 136))
    {
      v4 = objc_msgSend__performDatabaseOperation_locked_withErrorHandler_(v3, a2, *(a1 + 40), *(a1 + 48));
      v5 = *(*(a1 + 56) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      if (objc_msgSend_invalid(*(a1 + 32), v7, v8))
      {
        objc_msgSend__forceClosed_locked(*(a1 + 32), v9, v10);
        v13 = objc_msgSend_invalidationHandler(*(a1 + 32), v11, v12);
        v14 = *(*(a1 + 64) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = v13;

        objc_msgSend_setInvalidationHandler_(*(a1 + 32), v16, 0);
      }

      v17 = *(a1 + 32);
      if (v17[64] == 1)
      {
        objc_msgSend_markCorrupt(v17, v9, v10);
        v17 = *(a1 + 32);
      }

      if (v17[65] == 1)
      {
        objc_msgSend_remove(v17, v9, v10);
      }
    }

    else
    {
      v25 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, a2, @"CKErrorDomain", 1, @"Database is closed");
      v26 = *(*(a1 + 56) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;
    }
  }

  else
  {
    v18 = _Block_copy(*(v3 + 24));
    v19 = _Block_copy(*(a1 + 48));
    v20 = *(a1 + 32);
    v21 = *(v20 + 24);
    *(v20 + 24) = v19;

    v30 = *(a1 + 32);
    (*(*(a1 + 40) + 16))();
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(*(a1 + 32) + 40));
    v22 = _Block_copy(v18);
    v23 = *(a1 + 32);
    v24 = *(v23 + 24);
    *(v23 + 24) = v22;
  }

  *(*(a1 + 32) + 32) = 0;
  v28 = *(a1 + 32);
  v29 = *(v28 + 40);
  *(v28 + 40) = 0;
}

uint64_t sub_188666A88(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (v3[32])
  {
    return 1;
  }

  else
  {
    return objc_msgSend_invalid(v3, a2, a3);
  }
}

void sub_188666D6C(uint64_t a1, void *a2, void *a3)
{
  v127 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v8 = objc_msgSend_select_from_where_bindings_(*(a1 + 32), v7, &unk_1EFA85B60, @"sqlite_master", @"type = ? AND name = ?", &unk_1EFA85B78);
  if (!objc_msgSend_count(v8, v9, v10))
  {
    objc_msgSend_executeSQL_(v5, v11, @"create table if not exists Properties (\n    key    text primary key,\n    value  text\n);\n");
  }

  v13 = objc_msgSend_dbUserVersion(*(a1 + 32), v11, v12);
  if ((v6[2](v6) & 1) == 0)
  {
    v17 = objc_msgSend_propertyForKey_(*(a1 + 32), v14, @"SchemaVersion");
    if (v17)
    {
      v18 = objc_msgSend_schemaVersion(*(a1 + 32), v15, v16);
      if (objc_msgSend_isEqualToString_(v17, v19, v18))
      {
        if (!objc_msgSend_userVersion(*(a1 + 32), v20, v21))
        {

LABEL_34:
          goto LABEL_35;
        }

        v24 = objc_msgSend_userVersion(*(a1 + 32), v22, v23);

        if (v13 == v24)
        {
          goto LABEL_34;
        }
      }

      else
      {
      }

      v39 = objc_msgSend_delegate(*(a1 + 32), v25, v26);
      if (v39)
      {
        v42 = v39;
        v43 = objc_msgSend_delegate(*(a1 + 32), v40, v41);
        v45 = objc_msgSend_migrateDatabase_fromVersion_(v43, v44, *(a1 + 32), v13);

        if (v45)
        {
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v46 = ck_log_facility_ck;
          if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
          {
            v47 = *(a1 + 32);
            v48 = v47[10];
            loga = v46;
            v110 = objc_msgSend_CKSanitizedPath(v48, v49, v50);
            v53 = objc_msgSend_schemaVersion(*(a1 + 32), v51, v52);
            v56 = objc_msgSend_userVersion(*(a1 + 32), v54, v55);
            *buf = 134219266;
            v116 = v47;
            v117 = 2114;
            v118 = v110;
            v119 = 2114;
            v120 = v17;
            v121 = 2048;
            v122 = v13;
            v123 = 2114;
            v124 = v53;
            v125 = 2048;
            v126 = v56;
            _os_log_impl(&dword_1883EA000, loga, OS_LOG_TYPE_INFO, "Successfully migrated db (%p) at %{public}@ from schema/user version (%{public}@/0x%lx) to schema/user version (%{public}@/0x%lx)", buf, 0x3Eu);
          }

          *(*(a1 + 32) + 66) = 1;
        }
      }

      if (*(*(a1 + 32) + 66))
      {
        goto LABEL_29;
      }

      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v57 = ck_log_facility_ck;
      if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
      {
        v60 = *(a1 + 32);
        v61 = v60[10];
        logb = v57;
        v111 = objc_msgSend_CKSanitizedPath(v61, v62, v63);
        v66 = objc_msgSend_schemaVersion(*(a1 + 32), v64, v65);
        v69 = objc_msgSend_userVersion(*(a1 + 32), v67, v68);
        *buf = 134219266;
        v116 = v60;
        v117 = 2114;
        v118 = v111;
        v119 = 2114;
        v120 = v17;
        v121 = 2114;
        v122 = v66;
        v123 = 2048;
        v124 = v13;
        v125 = 2048;
        v126 = v69;
        _os_log_impl(&dword_1883EA000, logb, OS_LOG_TYPE_INFO, "Re-creating db (%p) at %{public}@ because the schema-version (%{public}@/%{public}@) or the user-version (0x%lx/0x%lx) changed", buf, 0x3Eu);
      }

      objc_msgSend__dropAllTables(*(a1 + 32), v58, v59);
      *(*(a1 + 32) + 66) = 1;
    }

    else
    {
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v27 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_DEBUG))
      {
        v28 = *(a1 + 32);
        v29 = v28[10];
        log = v27;
        v32 = objc_msgSend_CKSanitizedPath(v29, v30, v31);
        v35 = objc_msgSend_schemaVersion(*(a1 + 32), v33, v34);
        v38 = objc_msgSend_userVersion(*(a1 + 32), v36, v37);
        *buf = 134218754;
        v116 = v28;
        v117 = 2114;
        v118 = v32;
        v119 = 2114;
        v120 = v35;
        v121 = 2048;
        v122 = v38;
        _os_log_debug_impl(&dword_1883EA000, log, OS_LOG_TYPE_DEBUG, "Creating a new db (%p) at %{public}@ with schema-version:%{public}@ and user-version:0x%lx", buf, 0x2Au);
      }
    }

    if (v6[2](v6))
    {
LABEL_30:
      if ((v6[2](v6) & 1) == 0)
      {
        v89 = *(a1 + 32);
        v90 = objc_msgSend_schemaVersion(v89, v87, v88);
        objc_msgSend_setProperty_forKey_(v89, v91, v90, @"SchemaVersion");

        if (objc_msgSend_userVersion(*(a1 + 32), v92, v93))
        {
          v13 = *(a1 + 32);
          v96 = objc_msgSend_userVersion(v13, v94, v95);
          objc_msgSend_executeSQL_(v13, v97, @"pragma user_version = %ld", v96);
          LODWORD(v13) = objc_msgSend_userVersion(*(a1 + 32), v98, v99);
        }
      }

      goto LABEL_35;
    }

    objc_msgSend_willCreateDatabase(*(a1 + 32), v70, v71);
    objc_msgSend_executeSQL_(*(a1 + 32), v72, @"create table if not exists Properties (\n    key    text primary key,\n    value  text\n);\n");
    v73 = *(a1 + 32);
    v76 = objc_msgSend_schema(v73, v74, v75);
    objc_msgSend_executeSQL_(v73, v77, @"%@", v76);

    v78 = MEMORY[0x1E696AEC0];
    v81 = objc_msgSend_date(MEMORY[0x1E695DF00], v79, v80);
    objc_msgSend_timeIntervalSinceReferenceDate(v81, v82, v83);
    v17 = objc_msgSend_stringWithFormat_(v78, v84, @"%f", v85);

    objc_msgSend_setProperty_forKey_(*(a1 + 32), v86, v17, @"Created");
LABEL_29:

    goto LABEL_30;
  }

LABEL_35:
  if ((v6[2](v6) & 1) == 0)
  {
    *(*(a1 + 32) + 144) = 1;
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v100 = ck_log_facility_sql;
    if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_INFO))
    {
      v101 = *(a1 + 32);
      v102 = v100;
      v103 = objc_opt_class();
      v104 = NSStringFromClass(v103);
      v105 = *(a1 + 32);
      v108 = objc_msgSend_CKSanitizedPath(v105[10], v106, v107);
      *buf = 138544130;
      v116 = v104;
      v117 = 2048;
      v118 = v105;
      v119 = 2114;
      v120 = v108;
      v121 = 2048;
      v122 = v13;
      _os_log_impl(&dword_1883EA000, v102, OS_LOG_TYPE_INFO, "Opened db %{public}@<%p> at %{public}@ (user-version:0x%lx)", buf, 0x2Au);
    }
  }

  v109 = *MEMORY[0x1E69E9840];
}

void sub_188667584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18866759C(uint64_t a1)
{
  v91 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 32) + 80);
  v5 = *(a1 + 32);
  v6 = v5[18];
  if (v6)
  {
    if (!v5[17])
    {
      v80 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v2, v3);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v80, v81, *(a1 + 48), *(a1 + 32), @"CKSQLite.m", 424, @"Missing handle for open cache db");

      v5 = *(a1 + 32);
      v6 = v5[18];
    }

    v7 = 0;
    v5[18] = v6 + 1;
    goto LABEL_14;
  }

  if (objc_msgSend_invalid(v5, v2, v3))
  {
    v10 = *(a1 + 32);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v14 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v13, @"CKErrorDomain", 1, @"Cannot reopen invalidated %@ instance", v12);
    v15 = *(*(a1 + 40) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v7 = 0;
LABEL_14:

    v41 = *MEMORY[0x1E69E9840];
    return;
  }

  v7 = objc_msgSend_stringByDeletingLastPathComponent(*(*(a1 + 32) + 80), v8, v9);
  if (objc_msgSend_isCorrupt(*(a1 + 32), v17, v18))
  {
    v21 = objc_msgSend_CKSanitizedPath(v7, v19, v20);
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v22, @"CKErrorDomain", 1, @"Database is corrupt: %@", v21);
    v38 = LABEL_13:;
    v39 = *(*(a1 + 40) + 8);
    v40 = *(v39 + 40);
    *(v39 + 40) = v38;

    goto LABEL_14;
  }

  v23 = *(*(a1 + 40) + 8);
  obj = *(v23 + 40);
  v24 = CKCreateDirectoryAtPathWithAttributes(v7, 0, &obj);
  objc_storeStrong((v23 + 40), obj);
  if ((v24 & 1) == 0)
  {
    v21 = objc_msgSend_CKSanitizedPath(v7, v25, v26);
    objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v37, @"CKErrorDomain", 1, @"Error creating db dir at %@: %@", v21, *(*(*(a1 + 40) + 8) + 40));
    goto LABEL_13;
  }

  v27 = objc_msgSend_fileSystemRepresentation(v4, v25, v26);
  v28 = sqlite3_open_v2(v27, (*(a1 + 32) + 136), 3145734, 0);
  if (v28)
  {
    v31 = v28;
    v32 = objc_msgSend_CKSanitizedPath(*(*(a1 + 32) + 80), v29, v30);
    v34 = objc_msgSend_errorWithDomain_code_format_(CKPrettyError, v33, @"CKErrorDomain", 1, @"Error opening db at %@, rc=%d(0x%x)", v32, v31, v31);
    v35 = *(*(a1 + 40) + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = v34;

    goto LABEL_14;
  }

  sqlite3_extended_result_codes(*(*(a1 + 32) + 136), 1);
  if (!*(*(*(a1 + 40) + 8) + 40) && sqlite3_busy_timeout(*(*(a1 + 32) + 136), 300000))
  {
    v44 = objc_msgSend_errorForSQLite_message_(CKPrettyError, v42, *(*(a1 + 32) + 136), @"Error setting the db busy timeout");
    v45 = *(*(a1 + 40) + 8);
    v46 = *(v45 + 40);
    *(v45 + 40) = v44;
  }

  if (!*(*(*(a1 + 40) + 8) + 40) && sqlite3_exec(*(*(a1 + 32) + 136), "pragma journal_mode = WAL", 0, 0, 0))
  {
    v47 = objc_msgSend_errorForSQLite_message_(CKPrettyError, v42, *(*(a1 + 32) + 136), @"Error setting pragma journal_mode = WAL");
    v48 = *(*(a1 + 40) + 8);
    v49 = *(v48 + 40);
    *(v48 + 40) = v47;
  }

  v50 = objc_msgSend_synchronousMode(*(a1 + 32), v42, v43);
  if (v50 < 3)
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      v53 = off_1E70C08D0[v50];
      if (sqlite3_exec(*(*(a1 + 32) + 136), v53, 0, 0, 0))
      {
        v54 = objc_msgSend_errorForSQLite_message_(CKPrettyError, v51, *(*(a1 + 32) + 136), @"Error setting %s", v53);
        v55 = *(*(a1 + 40) + 8);
        v56 = *(v55 + 40);
        *(v55 + 40) = v54;
      }
    }

    if (!*(*(*(a1 + 40) + 8) + 40) && sqlite3_exec(*(*(a1 + 32) + 136), "pragma auto_vacuum = FULL", 0, 0, 0))
    {
      v57 = objc_msgSend_errorForSQLite_message_(CKPrettyError, v51, *(*(a1 + 32) + 136), @"Error setting pragma auto_vacuum = FULL");
      v58 = *(*(a1 + 40) + 8);
      v59 = *(v58 + 40);
      *(v58 + 40) = v57;
    }

    if (!*(*(*(a1 + 40) + 8) + 40) && sqlite3_exec(*(*(a1 + 32) + 136), "pragma foreign_keys = 1", 0, 0, 0))
    {
      v60 = objc_msgSend_errorForSQLite_message_(CKPrettyError, v51, *(*(a1 + 32) + 136), @"Error setting pragma foreign_keys = 1");
      v61 = *(*(a1 + 40) + 8);
      v62 = *(v61 + 40);
      *(v61 + 40) = v60;
    }

    if (*(*(*(a1 + 40) + 8) + 40) || (objc_msgSend__prepareDatabase(*(a1 + 32), v51, v52), v63 = objc_claimAutoreleasedReturnValue(), v64 = *(*(a1 + 40) + 8), v65 = *(v64 + 40), *(v64 + 40) = v63, v65, *(*(*(a1 + 40) + 8) + 40)))
    {
      objc_msgSend__forceClosed_locked(*(a1 + 32), v51, v52);
      if (ck_log_initialization_predicate != -1)
      {
        dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
      }

      v66 = ck_log_facility_sql;
      if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_ERROR))
      {
        v71 = *(a1 + 32);
        v72 = v66;
        v73 = objc_opt_class();
        v74 = NSStringFromClass(v73);
        v75 = *(a1 + 32);
        v78 = objc_msgSend_CKSanitizedPath(*(v75 + 80), v76, v77);
        v79 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138413058;
        v84 = v74;
        v85 = 2048;
        v86 = v75;
        v87 = 2112;
        v88 = v78;
        v89 = 2112;
        v90 = v79;
        _os_log_error_impl(&dword_1883EA000, v72, OS_LOG_TYPE_ERROR, "Failed to open db %@<%p> at %@. Error: %@", buf, 0x2Au);
      }
    }

    if (objc_msgSend_shouldVacuum(*(a1 + 32), v51, v52))
    {
      if (!*(*(*(a1 + 40) + 8) + 40))
      {
        v67 = *(*(a1 + 32) + 136);
        if (_sqlite3_maintain_load_factor())
        {
          v69 = objc_msgSend_sqlErrorWithMessage_(*(a1 + 32), v68, @"_sqlite3_maintain_load_factor failed");
          if (ck_log_initialization_predicate != -1)
          {
            dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
          }

          v70 = ck_log_facility_sql;
          if (os_log_type_enabled(ck_log_facility_sql, OS_LOG_TYPE_FAULT))
          {
            *buf = 138543362;
            v84 = v69;
            _os_log_fault_impl(&dword_1883EA000, v70, OS_LOG_TYPE_FAULT, "Failed to enable automatic incremental vacuum: %{public}@", buf, 0xCu);
          }
        }
      }
    }

    goto LABEL_14;
  }

  __break(1u);
}