void sub_19D7512E0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, WTF::StringImpl *a24, char a25)
{
  if (a25 == 1 && a24 && atomic_fetch_add_explicit(a24, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a24, a2);
  }

  if (*(v25 - 112) == 1)
  {
    v27 = *(v25 - 120);
    *(v25 - 120) = 0;
    if (v27)
    {
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, a2);
      }
    }
  }

  if (*(v25 - 96) == 1)
  {
    v28 = *(v25 - 104);
    *(v25 - 104) = 0;
    if (v28)
    {
      if (atomic_fetch_add_explicit(v28, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v28, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

char *IPC::Decoder::decode<WebCore::RealtimeMediaSourceSupportedConstraints>(char *result, uint64_t *a2)
{
  v2 = a2;
  v3 = a2[2];
  v4 = *a2;
  v5 = *(v2 + 8);
  if (v5 <= &v3[-v4])
  {
    v183 = result;
    *v2 = 0;
    *(v2 + 8) = 0;
    v90 = v2;
    v91 = *(v2 + 24);
    if (v91)
    {
      if (v5)
      {
        (*(*v91 + 16))(v91);
        v4 = *v90;
        v5 = v90[1];
LABEL_166:
        *v90 = 0;
        v90[1] = 0;
        v92 = v90[3];
        if (v92)
        {
          if (v5)
          {
            (*(*v92 + 16))(v92, v4);
            v7 = 0;
            v4 = *v90;
            v5 = v90[1];
            goto LABEL_170;
          }
        }

        else
        {
          v5 = 0;
        }

        v4 = 0;
        v7 = 0;
        goto LABEL_170;
      }
    }

    else
    {
      v5 = 0;
    }

    v4 = 0;
    goto LABEL_166;
  }

  v6 = v3 + 1;
  *(v2 + 16) = v3 + 1;
  if (!v3)
  {
    v90 = v2;
    v183 = result;
    goto LABEL_166;
  }

  v7 = *v3;
  if (v7 < 2)
  {
    v8 = 1;
    goto LABEL_5;
  }

  v90 = v2;
  v183 = result;
LABEL_170:
  *v90 = 0;
  v90[1] = 0;
  v93 = v90[3];
  if (!v93 || !v5)
  {
    v182 = 0;
    v94 = 0;
    v4 = 0;
LABEL_172:
    *v90 = 0;
    v90[1] = 0;
    v95 = v90[3];
    if (v95 && v94)
    {
      (*(*v95 + 16))(v95, v4, v94);
      v11 = 0;
      v4 = *v90;
      v5 = v90[1];
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v11 = 0;
    }

    goto LABEL_175;
  }

  (*(*v93 + 16))(v93, v4);
  v8 = 0;
  v2 = v90;
  v4 = *v90;
  v5 = v90[1];
  v6 = v90[2];
  result = v183;
LABEL_5:
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v5 <= &v6[-v4])
  {
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v183 = result;
    v94 = 0;
    v149 = *(v2 + 24);
    *v2 = 0;
    *(v2 + 8) = 0;
    v90 = v2;
    if (v5 && v149)
    {
      (*(*v149 + 16))(v149);
      v4 = *v90;
      v94 = v90[1];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_172;
  }

  v10 = v6 + 1;
  *(v2 + 16) = v6 + 1;
  if (!v6)
  {
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v90 = v2;
    v183 = result;
    v94 = v5;
    goto LABEL_172;
  }

  v11 = *v6;
  if (v11 < 2)
  {
    v12 = 1;
    goto LABEL_12;
  }

  LOBYTE(v182) = v9;
  BYTE4(v182) = v8;
  v90 = v2;
  v183 = result;
LABEL_175:
  *v90 = 0;
  v90[1] = 0;
  v96 = v90[3];
  if (!v96 || !v5)
  {
    v181 = 0;
    v97 = 0;
    v4 = 0;
LABEL_177:
    *v90 = 0;
    v90[1] = 0;
    v98 = v90[3];
    if (v98 && v97)
    {
      (*(*v98 + 16))(v98, v4, v97);
      v15 = 0;
      v4 = *v90;
      v5 = v90[1];
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v15 = 0;
    }

    goto LABEL_180;
  }

  (*(*v96 + 16))(v96, v4);
  v12 = 0;
  v2 = v90;
  v4 = *v90;
  v5 = v90[1];
  v10 = v90[2];
  result = v183;
  v9 = v182;
  v8 = BYTE4(v182);
LABEL_12:
  if (v11)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v5 <= &v10[-v4])
  {
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v183 = result;
    v97 = 0;
    v150 = *(v2 + 24);
    *v2 = 0;
    *(v2 + 8) = 0;
    v90 = v2;
    if (v5 && v150)
    {
      (*(*v150 + 16))(v150);
      v4 = *v90;
      v97 = v90[1];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_177;
  }

  v14 = v10 + 1;
  *(v2 + 16) = v10 + 1;
  if (!v10)
  {
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v90 = v2;
    v183 = result;
    v97 = v5;
    goto LABEL_177;
  }

  v15 = *v10;
  if (v15 < 2)
  {
    v16 = 1;
    goto LABEL_19;
  }

  LOBYTE(v181) = v13;
  BYTE4(v181) = v12;
  LOBYTE(v182) = v9;
  BYTE4(v182) = v8;
  v90 = v2;
  v183 = result;
LABEL_180:
  *v90 = 0;
  v90[1] = 0;
  v99 = v90[3];
  if (!v99 || !v5)
  {
    v180 = 0;
    v100 = 0;
    v4 = 0;
LABEL_182:
    *v90 = 0;
    v90[1] = 0;
    v101 = v90[3];
    if (v101 && v100)
    {
      (*(*v101 + 16))(v101, v4, v100);
      v19 = 0;
      v4 = *v90;
      v5 = v90[1];
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v19 = 0;
    }

    goto LABEL_184;
  }

  (*(*v99 + 16))(v99, v4);
  v16 = 0;
  v2 = v90;
  v4 = *v90;
  v5 = v90[1];
  v14 = v90[2];
  result = v183;
  v9 = v182;
  v8 = BYTE4(v182);
  v13 = v181;
  v12 = BYTE4(v181);
LABEL_19:
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v5 <= &v14[-v4])
  {
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v183 = result;
    v100 = 0;
    v151 = *(v2 + 24);
    *v2 = 0;
    *(v2 + 8) = 0;
    v90 = v2;
    if (v5 && v151)
    {
      (*(*v151 + 16))(v151);
      v4 = *v90;
      v100 = v90[1];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_182;
  }

  v18 = v14 + 1;
  *(v2 + 16) = v14 + 1;
  if (!v14)
  {
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v90 = v2;
    v183 = result;
    v100 = v5;
    goto LABEL_182;
  }

  v19 = *v14;
  if (v19 < 2)
  {
    v20 = 1;
    goto LABEL_26;
  }

  LOBYTE(v180) = v17;
  BYTE4(v180) = v16;
  LOBYTE(v181) = v13;
  BYTE4(v181) = v12;
  LOBYTE(v182) = v9;
  BYTE4(v182) = v8;
  v90 = v2;
  v183 = result;
LABEL_184:
  *v90 = 0;
  v90[1] = 0;
  v102 = v90[3];
  if (!v102 || !v5)
  {
    v179 = 0;
    v103 = 0;
    v4 = 0;
LABEL_186:
    *v90 = 0;
    v90[1] = 0;
    v104 = v90[3];
    if (v104 && v103)
    {
      (*(*v104 + 16))(v104, v4, v103);
      v23 = 0;
      v4 = *v90;
      v5 = v90[1];
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v23 = 0;
    }

    goto LABEL_188;
  }

  (*(*v102 + 16))(v102, v4);
  v20 = 0;
  v2 = v90;
  v4 = *v90;
  v5 = v90[1];
  v18 = v90[2];
  result = v183;
  v9 = v182;
  v8 = BYTE4(v182);
  v13 = v181;
  v12 = BYTE4(v181);
  v17 = v180;
  v16 = BYTE4(v180);
LABEL_26:
  if (v19)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v5 <= &v18[-v4])
  {
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v183 = result;
    v103 = 0;
    v152 = *(v2 + 24);
    *v2 = 0;
    *(v2 + 8) = 0;
    v90 = v2;
    if (v5 && v152)
    {
      (*(*v152 + 16))(v152);
      v4 = *v90;
      v103 = v90[1];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_186;
  }

  v22 = v18 + 1;
  *(v2 + 16) = v18 + 1;
  if (!v18)
  {
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v90 = v2;
    v183 = result;
    v103 = v5;
    goto LABEL_186;
  }

  v23 = *v18;
  if (v23 < 2)
  {
    v24 = 1;
    goto LABEL_33;
  }

  LOBYTE(v179) = v21;
  BYTE4(v179) = v20;
  LOBYTE(v180) = v17;
  BYTE4(v180) = v16;
  LOBYTE(v181) = v13;
  BYTE4(v181) = v12;
  LOBYTE(v182) = v9;
  BYTE4(v182) = v8;
  v90 = v2;
  v183 = result;
LABEL_188:
  *v90 = 0;
  v90[1] = 0;
  v105 = v90[3];
  if (!v105 || !v5)
  {
    v178 = 0;
    v106 = 0;
    v4 = 0;
LABEL_190:
    *v90 = 0;
    v90[1] = 0;
    v107 = v90[3];
    if (v107 && v106)
    {
      (*(*v107 + 16))(v107, v4, v106);
      v27 = 0;
      v4 = *v90;
      v5 = v90[1];
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v27 = 0;
    }

    goto LABEL_192;
  }

  (*(*v105 + 16))(v105, v4);
  v2 = v90;
  v24 = 0;
  v4 = *v2;
  v5 = *(v2 + 8);
  v22 = *(v2 + 16);
  result = v183;
  v9 = v182;
  v8 = BYTE4(v182);
  v13 = v181;
  v12 = BYTE4(v181);
  v17 = v180;
  v16 = BYTE4(v180);
  v21 = v179;
  v20 = BYTE4(v179);
LABEL_33:
  if (v23)
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (v5 <= &v22[-v4])
  {
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v183 = result;
    v106 = 0;
    v153 = *(v2 + 24);
    *v2 = 0;
    *(v2 + 8) = 0;
    v90 = v2;
    if (v5 && v153)
    {
      (*(*v153 + 16))(v153);
      v4 = *v90;
      v106 = v90[1];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_190;
  }

  v26 = v22 + 1;
  *(v2 + 16) = v22 + 1;
  if (!v22)
  {
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v90 = v2;
    v183 = result;
    v106 = v5;
    goto LABEL_190;
  }

  v27 = *v22;
  if (v27 < 2)
  {
    v28 = 1;
    goto LABEL_40;
  }

  LOBYTE(v178) = v24;
  BYTE4(v178) = v25;
  LOBYTE(v179) = v21;
  BYTE4(v179) = v20;
  LOBYTE(v180) = v17;
  BYTE4(v180) = v16;
  LOBYTE(v181) = v13;
  BYTE4(v181) = v12;
  LOBYTE(v182) = v9;
  BYTE4(v182) = v8;
  v90 = v2;
  v183 = result;
LABEL_192:
  *v90 = 0;
  v90[1] = 0;
  v108 = v90[3];
  if (!v108 || !v5)
  {
    v191 = 0;
    v177 = 0;
    v109 = 0;
    v4 = 0;
LABEL_194:
    *v90 = 0;
    v90[1] = 0;
    v110 = v90[3];
    if (v110 && v109)
    {
      (*(*v110 + 16))(v110, v4, v109);
      v31 = 0;
      v4 = *v90;
      v5 = v90[1];
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v31 = 0;
    }

    goto LABEL_196;
  }

  (*(*v108 + 16))(v108, v4);
  v28 = 0;
  v2 = v90;
  v4 = *v90;
  v5 = v90[1];
  v26 = v90[2];
  result = v183;
  v9 = v182;
  v8 = BYTE4(v182);
  v13 = v181;
  v12 = BYTE4(v181);
  v17 = v180;
  v16 = BYTE4(v180);
  v21 = v179;
  v20 = BYTE4(v179);
  v24 = v178;
  v25 = BYTE4(v178);
LABEL_40:
  if (v27)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0;
  }

  if (v5 <= &v26[-v4])
  {
    v191 = v29;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v183 = result;
    v109 = 0;
    v154 = *(v2 + 24);
    *v2 = 0;
    *(v2 + 8) = 0;
    v90 = v2;
    if (v5 && v154)
    {
      (*(*v154 + 16))(v154);
      v4 = *v90;
      v109 = v90[1];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_194;
  }

  v30 = v26 + 1;
  *(v2 + 16) = v26 + 1;
  if (!v26)
  {
    v191 = v29;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v90 = v2;
    v183 = result;
    v109 = v5;
    goto LABEL_194;
  }

  v31 = *v26;
  if (v31 < 2)
  {
    v32 = 1;
    goto LABEL_47;
  }

  v191 = v29;
  v177 = v28;
  LOBYTE(v178) = v24;
  BYTE4(v178) = v25;
  LOBYTE(v179) = v21;
  BYTE4(v179) = v20;
  LOBYTE(v180) = v17;
  BYTE4(v180) = v16;
  LOBYTE(v181) = v13;
  BYTE4(v181) = v12;
  LOBYTE(v182) = v9;
  BYTE4(v182) = v8;
  v90 = v2;
  v183 = result;
LABEL_196:
  *v90 = 0;
  v90[1] = 0;
  v111 = v90[3];
  if (!v111 || !v5)
  {
    v190 = 0;
    v195 = 0;
    v112 = 0;
    v4 = 0;
LABEL_198:
    *v90 = 0;
    v90[1] = 0;
    v113 = v90[3];
    if (v113 && v112)
    {
      (*(*v113 + 16))(v113, v4, v112);
      v35 = 0;
      v4 = *v90;
      v5 = v90[1];
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v35 = 0;
    }

    goto LABEL_200;
  }

  (*(*v111 + 16))(v111, v4);
  v32 = 0;
  v2 = v90;
  v4 = *v90;
  v5 = v90[1];
  v30 = v90[2];
  result = v183;
  v9 = v182;
  v8 = BYTE4(v182);
  v13 = v181;
  v12 = BYTE4(v181);
  v17 = v180;
  v16 = BYTE4(v180);
  v21 = v179;
  v20 = BYTE4(v179);
  v24 = v178;
  v25 = BYTE4(v178);
  v28 = v177;
  v29 = v191;
LABEL_47:
  if (v31)
  {
    v33 = v32;
  }

  else
  {
    v33 = 0;
  }

  if (v5 <= &v30[-v4])
  {
    v190 = v33;
    v191 = v29;
    v195 = v32;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v183 = result;
    v112 = 0;
    v155 = *(v2 + 24);
    *v2 = 0;
    *(v2 + 8) = 0;
    v90 = v2;
    if (v5 && v155)
    {
      (*(*v155 + 16))(v155);
      v4 = *v90;
      v112 = v90[1];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_198;
  }

  v34 = v30 + 1;
  *(v2 + 16) = v30 + 1;
  if (!v30)
  {
    v190 = v33;
    v191 = v29;
    v195 = v32;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v90 = v2;
    v183 = result;
    v112 = v5;
    goto LABEL_198;
  }

  v35 = *v30;
  if (v35 < 2)
  {
    v36 = 1;
    goto LABEL_54;
  }

  v190 = v33;
  v191 = v29;
  v195 = v32;
  v177 = v28;
  LOBYTE(v178) = v24;
  BYTE4(v178) = v25;
  LOBYTE(v179) = v21;
  BYTE4(v179) = v20;
  LOBYTE(v180) = v17;
  BYTE4(v180) = v16;
  LOBYTE(v181) = v13;
  BYTE4(v181) = v12;
  LOBYTE(v182) = v9;
  BYTE4(v182) = v8;
  v90 = v2;
  v183 = result;
LABEL_200:
  *v90 = 0;
  v90[1] = 0;
  v114 = v90;
  v115 = v90[3];
  if (!v115 || !v5)
  {
    v196 = 0;
    v176 = 0;
    v116 = 0;
    v4 = 0;
LABEL_202:
    *v114 = 0;
    v114[1] = 0;
    v117 = v114;
    v118 = v114[3];
    if (v118 && v116)
    {
      (*(*v118 + 16))(v118, v4, v116);
      v39 = 0;
      v4 = *v117;
      v5 = v117[1];
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v39 = 0;
    }

    goto LABEL_204;
  }

  (*(*v115 + 16))(v115, v4);
  v36 = 0;
  v2 = v90;
  v4 = *v90;
  v5 = v90[1];
  v34 = v90[2];
  result = v183;
  v9 = v182;
  v8 = BYTE4(v182);
  v13 = v181;
  v12 = BYTE4(v181);
  v17 = v180;
  v16 = BYTE4(v180);
  v21 = v179;
  v20 = BYTE4(v179);
  v24 = v178;
  v25 = BYTE4(v178);
  v28 = v177;
  v33 = v190;
  v29 = v191;
  v32 = v195;
LABEL_54:
  if (v35)
  {
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  if (v5 <= &v34[-v4])
  {
    v196 = v37;
    v176 = v36;
    v190 = v33;
    v191 = v29;
    v195 = v32;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v183 = result;
    v116 = 0;
    v156 = *(v2 + 24);
    *v2 = 0;
    *(v2 + 8) = 0;
    v114 = v2;
    if (v5 && v156)
    {
      (*(*v156 + 16))(v156);
      v4 = *v114;
      v116 = v114[1];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_202;
  }

  v38 = v34 + 1;
  *(v2 + 16) = v34 + 1;
  if (!v34)
  {
    v196 = v37;
    v176 = v36;
    v190 = v33;
    v191 = v29;
    v195 = v32;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v114 = v2;
    v183 = result;
    v116 = v5;
    goto LABEL_202;
  }

  v39 = *v34;
  if (v39 < 2)
  {
    v40 = 1;
    goto LABEL_61;
  }

  v196 = v37;
  v176 = v36;
  v190 = v33;
  v191 = v29;
  v195 = v32;
  v177 = v28;
  LOBYTE(v178) = v24;
  BYTE4(v178) = v25;
  LOBYTE(v179) = v21;
  BYTE4(v179) = v20;
  LOBYTE(v180) = v17;
  BYTE4(v180) = v16;
  LOBYTE(v181) = v13;
  BYTE4(v181) = v12;
  LOBYTE(v182) = v9;
  BYTE4(v182) = v8;
  v117 = v2;
  v183 = result;
LABEL_204:
  *v117 = 0;
  v117[1] = 0;
  v119 = v117[3];
  if (!v119 || !v5)
  {
    v189 = 0;
    v194 = 0;
    v120 = 0;
    v4 = 0;
LABEL_206:
    *v117 = 0;
    v117[1] = 0;
    v121 = v117[3];
    if (v121 && v120)
    {
      (*(*v121 + 16))(v121, v4, v120);
      v43 = 0;
      v4 = *v117;
      v5 = v117[1];
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v43 = 0;
    }

    goto LABEL_208;
  }

  (*(*v119 + 16))(v119, v4);
  v40 = 0;
  v2 = v117;
  v4 = *v117;
  v5 = v117[1];
  v38 = v117[2];
  result = v183;
  v9 = v182;
  v8 = BYTE4(v182);
  v13 = v181;
  v12 = BYTE4(v181);
  v17 = v180;
  v16 = BYTE4(v180);
  v21 = v179;
  v20 = BYTE4(v179);
  v24 = v178;
  v25 = BYTE4(v178);
  v36 = v176;
  v28 = v177;
  v33 = v190;
  v29 = v191;
  v32 = v195;
  v37 = v196;
LABEL_61:
  if (v39)
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  if (v5 <= &v38[-v4])
  {
    v189 = v41;
    v194 = v40;
    v196 = v37;
    v176 = v36;
    v190 = v33;
    v191 = v29;
    v195 = v32;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v183 = result;
    v120 = 0;
    v157 = *(v2 + 24);
    *v2 = 0;
    *(v2 + 8) = 0;
    v117 = v2;
    if (v5 && v157)
    {
      (*(*v157 + 16))(v157);
      v4 = *v117;
      v120 = v117[1];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_206;
  }

  v42 = v38 + 1;
  *(v2 + 16) = v38 + 1;
  if (!v38)
  {
    v189 = v41;
    v194 = v40;
    v196 = v37;
    v176 = v36;
    v190 = v33;
    v191 = v29;
    v195 = v32;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v117 = v2;
    v183 = result;
    v120 = v5;
    goto LABEL_206;
  }

  v43 = *v38;
  if (v43 < 2)
  {
    v44 = 1;
    goto LABEL_68;
  }

  v189 = v41;
  v194 = v40;
  v196 = v37;
  v176 = v36;
  v190 = v33;
  v191 = v29;
  v195 = v32;
  v177 = v28;
  LOBYTE(v178) = v24;
  BYTE4(v178) = v25;
  LOBYTE(v179) = v21;
  BYTE4(v179) = v20;
  LOBYTE(v180) = v17;
  BYTE4(v180) = v16;
  LOBYTE(v181) = v13;
  BYTE4(v181) = v12;
  LOBYTE(v182) = v9;
  BYTE4(v182) = v8;
  v117 = v2;
  v183 = result;
LABEL_208:
  *v117 = 0;
  v117[1] = 0;
  v122 = v117[3];
  if (!v122 || !v5)
  {
    v188 = 0;
    v193 = 0;
    v123 = 0;
    v4 = 0;
LABEL_210:
    *v117 = 0;
    v117[1] = 0;
    v124 = v117[3];
    if (v124 && v123)
    {
      (*(*v124 + 16))(v124, v4, v123);
      v47 = 0;
      v4 = *v117;
      v5 = v117[1];
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v47 = 0;
    }

    goto LABEL_212;
  }

  (*(*v122 + 16))(v122, v4);
  v44 = 0;
  v2 = v117;
  v4 = *v117;
  v5 = v117[1];
  v42 = v117[2];
  result = v183;
  v9 = v182;
  v8 = BYTE4(v182);
  v13 = v181;
  v12 = BYTE4(v181);
  v17 = v180;
  v16 = BYTE4(v180);
  v21 = v179;
  v20 = BYTE4(v179);
  v24 = v178;
  v25 = BYTE4(v178);
  v36 = v176;
  v28 = v177;
  v33 = v190;
  v29 = v191;
  v32 = v195;
  v37 = v196;
  v40 = v194;
  v41 = v189;
LABEL_68:
  if (v43)
  {
    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  v196 = v37;
  if (v5 <= &v42[-v4])
  {
    v188 = v45;
    v193 = v44;
    v189 = v41;
    v194 = v40;
    v176 = v36;
    v190 = v33;
    v191 = v29;
    v195 = v32;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v183 = result;
    v123 = 0;
    v158 = *(v2 + 24);
    *v2 = 0;
    *(v2 + 8) = 0;
    v117 = v2;
    if (v5 && v158)
    {
      (*(*v158 + 16))(v158);
      v4 = *v117;
      v123 = v117[1];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_210;
  }

  v46 = v42 + 1;
  *(v2 + 16) = v42 + 1;
  if (!v42)
  {
    v188 = v45;
    v193 = v44;
    v189 = v41;
    v194 = v40;
    v176 = v36;
    v190 = v33;
    v191 = v29;
    v195 = v32;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v117 = v2;
    v183 = result;
    v123 = v5;
    goto LABEL_210;
  }

  v47 = *v42;
  if (v47 < 2)
  {
    v48 = 1;
    goto LABEL_75;
  }

  v188 = v45;
  v193 = v44;
  v189 = v41;
  v194 = v40;
  v176 = v36;
  v190 = v33;
  v191 = v29;
  v195 = v32;
  v177 = v28;
  LOBYTE(v178) = v24;
  BYTE4(v178) = v25;
  LOBYTE(v179) = v21;
  BYTE4(v179) = v20;
  LOBYTE(v180) = v17;
  BYTE4(v180) = v16;
  LOBYTE(v181) = v13;
  BYTE4(v181) = v12;
  LOBYTE(v182) = v9;
  BYTE4(v182) = v8;
  v117 = v2;
  v183 = result;
LABEL_212:
  *v117 = 0;
  v117[1] = 0;
  v125 = v117[3];
  if (!v125 || !v5)
  {
    v187 = 0;
    v192 = 0;
    v126 = 0;
    v4 = 0;
LABEL_214:
    *v117 = 0;
    v117[1] = 0;
    v127 = v117[3];
    if (v127 && v126)
    {
      (*(*v127 + 16))(v127, v4, v126);
      v52 = 0;
      v4 = *v117;
      v5 = v117[1];
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v52 = 0;
    }

    goto LABEL_216;
  }

  (*(*v125 + 16))(v125, v4);
  v48 = 0;
  v2 = v117;
  v4 = *v117;
  v5 = v117[1];
  v46 = v117[2];
  result = v183;
  v9 = v182;
  v8 = BYTE4(v182);
  v13 = v181;
  v12 = BYTE4(v181);
  v17 = v180;
  v16 = BYTE4(v180);
  v21 = v179;
  v20 = BYTE4(v179);
  v24 = v178;
  v25 = BYTE4(v178);
  v36 = v176;
  v28 = v177;
  v33 = v190;
  v29 = v191;
  v40 = v194;
  v32 = v195;
  v45 = v188;
  v41 = v189;
  v44 = v193;
LABEL_75:
  if (v47)
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  v187 = v49;
  if (v5 <= &v46[-v4])
  {
    v192 = v48;
    v188 = v45;
    v193 = v44;
    v189 = v41;
    v194 = v40;
    v176 = v36;
    v190 = v33;
    v191 = v29;
    v195 = v32;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v183 = result;
    v126 = 0;
    v159 = *(v2 + 24);
    *v2 = 0;
    *(v2 + 8) = 0;
    v117 = v2;
    if (v5 && v159)
    {
      (*(*v159 + 16))(v159);
      v4 = *v117;
      v126 = v117[1];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_214;
  }

  v50 = v46 + 1;
  *(v2 + 16) = v46 + 1;
  if (!v46)
  {
    v192 = v48;
    v188 = v45;
    v193 = v44;
    v189 = v41;
    v194 = v40;
    v176 = v36;
    v190 = v33;
    v191 = v29;
    v195 = v32;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v9;
    BYTE4(v182) = v8;
    v117 = v2;
    v183 = result;
    v126 = v5;
    goto LABEL_214;
  }

  v51 = v9;
  v52 = *v46;
  if (v52 < 2)
  {
    v53 = 1;
    goto LABEL_82;
  }

  v192 = v48;
  v188 = v45;
  v193 = v44;
  v189 = v41;
  v194 = v40;
  v176 = v36;
  v190 = v33;
  v191 = v29;
  v195 = v32;
  v177 = v28;
  LOBYTE(v178) = v24;
  BYTE4(v178) = v25;
  LOBYTE(v179) = v21;
  BYTE4(v179) = v20;
  LOBYTE(v180) = v17;
  BYTE4(v180) = v16;
  LOBYTE(v181) = v13;
  BYTE4(v181) = v12;
  LOBYTE(v182) = v9;
  BYTE4(v182) = v8;
  v117 = v2;
  v183 = result;
LABEL_216:
  *v117 = 0;
  v117[1] = 0;
  v128 = v117[3];
  if (!v128 || !v5)
  {
    v186 = 0;
    v175 = 0;
    v129 = 0;
    v4 = 0;
LABEL_218:
    *v117 = 0;
    v117[1] = 0;
    v130 = v117[3];
    if (v130 && v129)
    {
      (*(*v130 + 16))(v130, v4, v129);
      v56 = 0;
      v4 = *v117;
      v5 = v117[1];
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v56 = 0;
    }

    goto LABEL_220;
  }

  (*(*v128 + 16))(v128, v4);
  v53 = 0;
  v2 = v117;
  v4 = *v117;
  v5 = v117[1];
  v50 = v117[2];
  result = v183;
  v51 = v182;
  v8 = BYTE4(v182);
  v13 = v181;
  v12 = BYTE4(v181);
  v17 = v180;
  v16 = BYTE4(v180);
  v21 = v179;
  v20 = BYTE4(v179);
  v24 = v178;
  v25 = BYTE4(v178);
  v36 = v176;
  v28 = v177;
  v33 = v190;
  v29 = v191;
  v40 = v194;
  v32 = v195;
  v45 = v188;
  v41 = v189;
  v48 = v192;
  v44 = v193;
LABEL_82:
  if (v52)
  {
    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  v188 = v45;
  if (v5 <= &v50[-v4])
  {
    v186 = v54;
    v175 = v53;
    v192 = v48;
    v193 = v44;
    v189 = v41;
    v194 = v40;
    v176 = v36;
    v190 = v33;
    v191 = v29;
    v195 = v32;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v51;
    BYTE4(v182) = v8;
    v183 = result;
    v129 = 0;
    v160 = *(v2 + 24);
    *v2 = 0;
    *(v2 + 8) = 0;
    v117 = v2;
    if (v5 && v160)
    {
      (*(*v160 + 16))(v160);
      v4 = *v117;
      v129 = v117[1];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_218;
  }

  v55 = v50 + 1;
  *(v2 + 16) = v50 + 1;
  if (!v50)
  {
    v186 = v54;
    v175 = v53;
    v192 = v48;
    v193 = v44;
    v189 = v41;
    v194 = v40;
    v176 = v36;
    v190 = v33;
    v191 = v29;
    v195 = v32;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v51;
    BYTE4(v182) = v8;
    v117 = v2;
    v183 = result;
    v129 = v5;
    goto LABEL_218;
  }

  v56 = *v50;
  if (v56 < 2)
  {
    v57 = 1;
    goto LABEL_89;
  }

  v186 = v54;
  v175 = v53;
  v192 = v48;
  v193 = v44;
  v189 = v41;
  v194 = v40;
  v176 = v36;
  v190 = v33;
  v191 = v29;
  v195 = v32;
  v177 = v28;
  LOBYTE(v178) = v24;
  BYTE4(v178) = v25;
  LOBYTE(v179) = v21;
  BYTE4(v179) = v20;
  LOBYTE(v180) = v17;
  BYTE4(v180) = v16;
  LOBYTE(v181) = v13;
  BYTE4(v181) = v12;
  LOBYTE(v182) = v51;
  BYTE4(v182) = v8;
  v117 = v2;
  v183 = result;
LABEL_220:
  *v117 = 0;
  v117[1] = 0;
  v131 = v117[3];
  if (!v131 || !v5)
  {
    v185 = 0;
    v174 = 0;
    v132 = 0;
    v4 = 0;
LABEL_222:
    *v117 = 0;
    v117[1] = 0;
    v133 = v117[3];
    if (v133 && v132)
    {
      (*(*v133 + 16))(v133, v4, v132);
      v60 = 0;
      v4 = *v117;
      v5 = v117[1];
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v60 = 0;
    }

    goto LABEL_224;
  }

  (*(*v131 + 16))(v131, v4);
  v57 = 0;
  v2 = v117;
  v4 = *v117;
  v5 = v117[1];
  v55 = v117[2];
  result = v183;
  v51 = v182;
  v8 = BYTE4(v182);
  v13 = v181;
  v12 = BYTE4(v181);
  v17 = v180;
  v16 = BYTE4(v180);
  v21 = v179;
  v20 = BYTE4(v179);
  v24 = v178;
  v25 = BYTE4(v178);
  v36 = v176;
  v28 = v177;
  v33 = v190;
  v29 = v191;
  v40 = v194;
  v32 = v195;
  v41 = v189;
  v48 = v192;
  v44 = v193;
  v53 = v175;
  v54 = v186;
LABEL_89:
  v192 = v48;
  if (v56)
  {
    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  v185 = v58;
  if (v5 <= &v55[-v4])
  {
    v174 = v57;
    v175 = v53;
    v186 = v54;
    v193 = v44;
    v189 = v41;
    v194 = v40;
    v176 = v36;
    v190 = v33;
    v191 = v29;
    v195 = v32;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v51;
    BYTE4(v182) = v8;
    v183 = result;
    v132 = 0;
    v161 = *(v2 + 24);
    *v2 = 0;
    *(v2 + 8) = 0;
    v117 = v2;
    if (v5 && v161)
    {
      (*(*v161 + 16))(v161);
      v4 = *v117;
      v132 = v117[1];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_222;
  }

  v59 = v55 + 1;
  *(v2 + 16) = v55 + 1;
  if (!v55)
  {
    v174 = v57;
    v175 = v53;
    v186 = v54;
    v193 = v44;
    v189 = v41;
    v194 = v40;
    v176 = v36;
    v190 = v33;
    v191 = v29;
    v195 = v32;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v51;
    BYTE4(v182) = v8;
    v117 = v2;
    v183 = result;
    v132 = v5;
    goto LABEL_222;
  }

  v60 = *v55;
  if (v60 < 2)
  {
    v61 = 1;
    goto LABEL_96;
  }

  v174 = v57;
  v175 = v53;
  v186 = v54;
  v193 = v44;
  v189 = v41;
  v194 = v40;
  v176 = v36;
  v190 = v33;
  v191 = v29;
  v195 = v32;
  v177 = v28;
  LOBYTE(v178) = v24;
  BYTE4(v178) = v25;
  LOBYTE(v179) = v21;
  BYTE4(v179) = v20;
  LOBYTE(v180) = v17;
  BYTE4(v180) = v16;
  LOBYTE(v181) = v13;
  BYTE4(v181) = v12;
  LOBYTE(v182) = v51;
  BYTE4(v182) = v8;
  v117 = v2;
  v183 = result;
LABEL_224:
  *v117 = 0;
  v117[1] = 0;
  v134 = v117[3];
  if (!v134 || !v5)
  {
    v184 = 0;
    v173 = 0;
    v135 = 0;
    v4 = 0;
LABEL_226:
    *v117 = 0;
    v117[1] = 0;
    v136 = v117[3];
    if (v136 && v135)
    {
      (*(*v136 + 16))(v136, v4, v135);
      v64 = 0;
      v4 = *v117;
      v5 = v117[1];
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v64 = 0;
    }

    goto LABEL_228;
  }

  (*(*v134 + 16))(v134, v4);
  v61 = 0;
  v2 = v117;
  v4 = *v117;
  v5 = v117[1];
  v59 = v117[2];
  result = v183;
  v51 = v182;
  v8 = BYTE4(v182);
  v13 = v181;
  v12 = BYTE4(v181);
  v17 = v180;
  v16 = BYTE4(v180);
  v21 = v179;
  v20 = BYTE4(v179);
  v24 = v178;
  v25 = BYTE4(v178);
  v36 = v176;
  v28 = v177;
  v33 = v190;
  v29 = v191;
  v40 = v194;
  v32 = v195;
  v41 = v189;
  v44 = v193;
  v57 = v174;
  v53 = v175;
  v54 = v186;
LABEL_96:
  if (v60)
  {
    v62 = v61;
  }

  else
  {
    v62 = 0;
  }

  v193 = v44;
  v184 = v62;
  if (v5 <= &v59[-v4])
  {
    v173 = v61;
    v174 = v57;
    v186 = v54;
    v175 = v53;
    v189 = v41;
    v194 = v40;
    v176 = v36;
    v190 = v33;
    v191 = v29;
    v195 = v32;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v51;
    BYTE4(v182) = v8;
    v183 = result;
    v135 = 0;
    v162 = *(v2 + 24);
    *v2 = 0;
    *(v2 + 8) = 0;
    v117 = v2;
    if (v5 && v162)
    {
      (*(*v162 + 16))(v162);
      v4 = *v117;
      v135 = v117[1];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_226;
  }

  v63 = v59 + 1;
  *(v2 + 16) = v59 + 1;
  if (!v59)
  {
    v173 = v61;
    v174 = v57;
    v186 = v54;
    v175 = v53;
    v189 = v41;
    v194 = v40;
    v176 = v36;
    v190 = v33;
    v191 = v29;
    v195 = v32;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v51;
    BYTE4(v182) = v8;
    v117 = v2;
    v183 = result;
    v135 = v5;
    goto LABEL_226;
  }

  v64 = *v59;
  if (v64 < 2)
  {
    v65 = 1;
    goto LABEL_103;
  }

  v173 = v61;
  v174 = v57;
  v186 = v54;
  v175 = v53;
  v189 = v41;
  v194 = v40;
  v176 = v36;
  v190 = v33;
  v191 = v29;
  v195 = v32;
  v177 = v28;
  LOBYTE(v178) = v24;
  BYTE4(v178) = v25;
  LOBYTE(v179) = v21;
  BYTE4(v179) = v20;
  LOBYTE(v180) = v17;
  BYTE4(v180) = v16;
  LOBYTE(v181) = v13;
  BYTE4(v181) = v12;
  LOBYTE(v182) = v51;
  BYTE4(v182) = v8;
  v117 = v2;
  v183 = result;
LABEL_228:
  *v117 = 0;
  v117[1] = 0;
  v137 = v117[3];
  if (!v137 || !v5)
  {
    v171 = 0;
    v172 = 0;
    v138 = 0;
    v4 = 0;
LABEL_230:
    *v117 = 0;
    v117[1] = 0;
    v139 = v117[3];
    if (v139 && v138)
    {
      (*(*v139 + 16))(v139, v4, v138);
      v71 = 0;
      v4 = *v117;
      v5 = v117[1];
    }

    else
    {
      v5 = 0;
      v4 = 0;
      v71 = 0;
    }

    goto LABEL_232;
  }

  (*(*v137 + 16))(v137, v4);
  v65 = 0;
  v2 = v117;
  v4 = *v117;
  v5 = v117[1];
  v63 = v117[2];
  result = v183;
  v51 = v182;
  v8 = BYTE4(v182);
  v13 = v181;
  v12 = BYTE4(v181);
  v17 = v180;
  v16 = BYTE4(v180);
  v21 = v179;
  v20 = BYTE4(v179);
  v24 = v178;
  v25 = BYTE4(v178);
  v36 = v176;
  v28 = v177;
  v33 = v190;
  v29 = v191;
  v40 = v194;
  v32 = v195;
  v41 = v189;
  v57 = v174;
  v53 = v175;
  v54 = v186;
  v61 = v173;
LABEL_103:
  if (v64)
  {
    v66 = v65;
  }

  else
  {
    v66 = 0;
  }

  v190 = v33;
  v195 = v32;
  v189 = v41;
  v194 = v40;
  v186 = v54;
  if (v5 <= &v63[-v4])
  {
    v171 = v65;
    v172 = v66;
    v173 = v61;
    v174 = v57;
    v175 = v53;
    v176 = v36;
    v191 = v29;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v51;
    BYTE4(v182) = v8;
    v183 = result;
    v138 = 0;
    v163 = *(v2 + 24);
    *v2 = 0;
    *(v2 + 8) = 0;
    v117 = v2;
    if (v5 && v163)
    {
      (*(*v163 + 16))(v163);
      v4 = *v117;
      v138 = v117[1];
    }

    else
    {
      v4 = 0;
    }

    goto LABEL_230;
  }

  v67 = v63 + 1;
  *(v2 + 16) = v63 + 1;
  if (!v63)
  {
    v171 = v65;
    v172 = v66;
    v173 = v61;
    v174 = v57;
    v175 = v53;
    v176 = v36;
    v191 = v29;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v17;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v13;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v51;
    BYTE4(v182) = v8;
    v117 = v2;
    v183 = result;
    v138 = v5;
    goto LABEL_230;
  }

  v68 = v17;
  v69 = v13;
  v70 = v51;
  v71 = *v63;
  if (v71 < 2)
  {
    v72 = v36;
    v73 = 1;
    goto LABEL_110;
  }

  v171 = v65;
  v172 = v66;
  v173 = v61;
  v174 = v57;
  v175 = v53;
  v176 = v36;
  v191 = v29;
  v177 = v28;
  LOBYTE(v178) = v24;
  BYTE4(v178) = v25;
  LOBYTE(v179) = v21;
  BYTE4(v179) = v20;
  LOBYTE(v180) = v17;
  BYTE4(v180) = v16;
  LOBYTE(v181) = v69;
  BYTE4(v181) = v12;
  LOBYTE(v182) = v51;
  BYTE4(v182) = v8;
  v117 = v2;
  v183 = result;
LABEL_232:
  *v117 = 0;
  v117[1] = 0;
  v140 = v117[3];
  if (!v140 || !v5)
  {
    v169 = 0;
    v170 = 0;
    v141 = 0;
    v197 = 0;
LABEL_234:
    *v117 = 0;
    v117[1] = 0;
    v142 = v117[3];
    if (v142 && v141)
    {
      (*(*v142 + 16))(v142, v197, v141);
      v78 = 0;
      v5 = v117[1];
      v197 = *v117;
    }

    else
    {
      v5 = 0;
      v197 = 0;
      v78 = 0;
    }

    goto LABEL_236;
  }

  (*(*v140 + 16))(v140, v4);
  v73 = 0;
  v2 = v117;
  v4 = *v117;
  v5 = v117[1];
  v67 = v117[2];
  result = v183;
  v70 = v182;
  v8 = BYTE4(v182);
  v69 = v181;
  v12 = BYTE4(v181);
  v68 = v180;
  v16 = BYTE4(v180);
  v21 = v179;
  v20 = BYTE4(v179);
  v24 = v178;
  v25 = BYTE4(v178);
  v72 = v176;
  v28 = v177;
  v29 = v191;
  v57 = v174;
  v53 = v175;
  v66 = v172;
  v61 = v173;
  v65 = v171;
LABEL_110:
  v191 = v29;
  if (v71)
  {
    v74 = v73;
  }

  else
  {
    v74 = 0;
  }

  v197 = v4;
  if (v5 <= &v67[-v4])
  {
    v169 = v73;
    v170 = v74;
    v171 = v65;
    v172 = v66;
    v173 = v61;
    v174 = v57;
    v175 = v53;
    v176 = v72;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v68;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v69;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v70;
    BYTE4(v182) = v8;
    v183 = result;
    v141 = 0;
    v164 = *(v2 + 24);
    *v2 = 0;
    *(v2 + 8) = 0;
    v117 = v2;
    if (v5 && v164)
    {
      (*(*v164 + 16))(v164, v4);
      v141 = v117[1];
      v197 = *v117;
    }

    else
    {
      v197 = 0;
    }

    goto LABEL_234;
  }

  v75 = v67 + 1;
  *(v2 + 16) = v67 + 1;
  if (!v67)
  {
    v169 = v73;
    v170 = v74;
    v171 = v65;
    v172 = v66;
    v173 = v61;
    v174 = v57;
    v175 = v53;
    v176 = v72;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v21;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v68;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v69;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v70;
    BYTE4(v182) = v8;
    v117 = v2;
    v183 = result;
    v141 = v5;
    goto LABEL_234;
  }

  v76 = v196;
  v77 = v21;
  v78 = *v67;
  if (v78 < 2)
  {
    v79 = 1;
    goto LABEL_117;
  }

  v169 = v73;
  v170 = v74;
  v171 = v65;
  v172 = v66;
  v173 = v61;
  v174 = v57;
  v175 = v53;
  v176 = v72;
  v177 = v28;
  LOBYTE(v178) = v24;
  BYTE4(v178) = v25;
  LOBYTE(v179) = v21;
  BYTE4(v179) = v20;
  LOBYTE(v180) = v68;
  BYTE4(v180) = v16;
  LOBYTE(v181) = v69;
  BYTE4(v181) = v12;
  LOBYTE(v182) = v70;
  BYTE4(v182) = v8;
  v117 = v2;
  v183 = result;
LABEL_236:
  *v117 = 0;
  v117[1] = 0;
  v143 = v117[3];
  if (!v143 || !v5)
  {
    v167 = 0;
    v168 = 0;
    v144 = 0;
    v197 = 0;
LABEL_238:
    *v117 = 0;
    v117[1] = 0;
    v145 = v117[3];
    if (v145 && v144)
    {
      (*(*v145 + 16))(v145, v197, v144);
      v82 = 0;
      v5 = v117[1];
      v197 = *v117;
    }

    else
    {
      v5 = 0;
      v197 = 0;
      v82 = 0;
    }

    goto LABEL_240;
  }

  (*(*v143 + 16))(v143, v197);
  v79 = 0;
  v2 = v117;
  v5 = v117[1];
  v197 = *v117;
  v75 = v117[2];
  result = v183;
  v70 = v182;
  v8 = BYTE4(v182);
  v69 = v181;
  v12 = BYTE4(v181);
  v68 = v180;
  v16 = BYTE4(v180);
  v77 = v179;
  v20 = BYTE4(v179);
  v24 = v178;
  v25 = BYTE4(v178);
  v72 = v176;
  v28 = v177;
  v76 = v196;
  v57 = v174;
  v53 = v175;
  v66 = v172;
  v61 = v173;
  v74 = v170;
  v65 = v171;
  v73 = v169;
LABEL_117:
  if (v78)
  {
    v80 = v79;
  }

  else
  {
    v80 = 0;
  }

  if (v5 <= &v75[-v197])
  {
    v167 = v79;
    v168 = v80;
    v169 = v73;
    v170 = v74;
    v171 = v65;
    v172 = v66;
    v173 = v61;
    v174 = v57;
    v175 = v53;
    v196 = v76;
    v176 = v72;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v77;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v68;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v69;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v70;
    BYTE4(v182) = v8;
    v183 = result;
    v144 = 0;
    v165 = *(v2 + 24);
    *v2 = 0;
    *(v2 + 8) = 0;
    v117 = v2;
    if (v5 && v165)
    {
      (*(*v165 + 16))(v165, v197);
      v144 = v117[1];
      v197 = *v117;
    }

    else
    {
      v197 = 0;
    }

    goto LABEL_238;
  }

  v81 = v75 + 1;
  *(v2 + 16) = v75 + 1;
  if (!v75)
  {
    v167 = v79;
    v168 = v80;
    v169 = v73;
    v170 = v74;
    v171 = v65;
    v172 = v66;
    v173 = v61;
    v174 = v57;
    v175 = v53;
    v196 = v76;
    v176 = v72;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v77;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v68;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v69;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v70;
    BYTE4(v182) = v8;
    v117 = v2;
    v183 = result;
    v144 = v5;
    goto LABEL_238;
  }

  v82 = *v75;
  if (v82 < 2)
  {
    v83 = 1;
    goto LABEL_124;
  }

  v167 = v79;
  v168 = v80;
  v169 = v73;
  v170 = v74;
  v171 = v65;
  v172 = v66;
  v173 = v61;
  v174 = v57;
  v175 = v53;
  v196 = v76;
  v176 = v72;
  v177 = v28;
  LOBYTE(v178) = v24;
  BYTE4(v178) = v25;
  LOBYTE(v179) = v77;
  BYTE4(v179) = v20;
  LOBYTE(v180) = v68;
  BYTE4(v180) = v16;
  LOBYTE(v181) = v69;
  BYTE4(v181) = v12;
  LOBYTE(v182) = v70;
  BYTE4(v182) = v8;
  v117 = v2;
  v183 = result;
LABEL_240:
  *v117 = 0;
  v117[1] = 0;
  v146 = v117[3];
  if (!v146 || !v5)
  {
    v84 = 0;
    v83 = 0;
    v147 = 0;
    v197 = 0;
LABEL_242:
    *v117 = 0;
    v117[1] = 0;
    v148 = v117[3];
    if (v148 && v147)
    {
      (*(*v148 + 16))(v148, v197, v147);
      v85 = 0;
      v5 = v117[1];
      v197 = *v117;
    }

    else
    {
      v5 = 0;
      v197 = 0;
      v85 = 0;
    }

LABEL_244:
    *v117 = 0;
    v117[1] = 0;
    v88 = v117[3];
    if (v88)
    {
      if (v5)
      {
        (*(*v88 + 16))(v117[3], v197);
        v86 = 0;
        v2 = v117;
        v197 = *v117;
        result = v183;
        v70 = v182;
        v8 = BYTE4(v182);
        v69 = v181;
        v12 = BYTE4(v181);
        v68 = v180;
        v16 = BYTE4(v180);
        v77 = v179;
        v20 = BYTE4(v179);
        v24 = v178;
        v25 = BYTE4(v178);
        v72 = v176;
        v28 = v177;
        v76 = v196;
        v57 = v174;
        v53 = v175;
        v66 = v172;
        v61 = v173;
        v74 = v170;
        v65 = v171;
        v80 = v168;
        v73 = v169;
        v79 = v167;
        goto LABEL_131;
      }
    }

    else
    {
      v5 = 0;
    }

    v197 = 0;
    result = v183;
    v2 = v117;
    goto LABEL_158;
  }

  (*(*v146 + 16))(v146, v197);
  v83 = 0;
  v2 = v117;
  v5 = v117[1];
  v197 = *v117;
  v81 = v117[2];
  result = v183;
  v70 = v182;
  v8 = BYTE4(v182);
  v69 = v181;
  v12 = BYTE4(v181);
  v68 = v180;
  v16 = BYTE4(v180);
  v77 = v179;
  v20 = BYTE4(v179);
  v24 = v178;
  v25 = BYTE4(v178);
  v72 = v176;
  v28 = v177;
  v76 = v196;
  v57 = v174;
  v53 = v175;
  v66 = v172;
  v61 = v173;
  v74 = v170;
  v65 = v171;
  v80 = v168;
  v73 = v169;
  v79 = v167;
LABEL_124:
  if (v82)
  {
    v84 = v83;
  }

  else
  {
    v84 = 0;
  }

  if (v5 <= &v81[-v197])
  {
    v167 = v79;
    v168 = v80;
    v169 = v73;
    v170 = v74;
    v171 = v65;
    v172 = v66;
    v173 = v61;
    v174 = v57;
    v175 = v53;
    v196 = v76;
    v176 = v72;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v77;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v68;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v69;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v70;
    BYTE4(v182) = v8;
    v183 = result;
    v147 = 0;
    v166 = *(v2 + 24);
    *v2 = 0;
    *(v2 + 8) = 0;
    v117 = v2;
    if (v5 && v166)
    {
      (*(*v166 + 16))(v166, v197);
      v147 = v117[1];
      v197 = *v117;
    }

    else
    {
      v197 = 0;
    }

    goto LABEL_242;
  }

  *(v2 + 16) = v81 + 1;
  if (!v81)
  {
    v167 = v79;
    v168 = v80;
    v169 = v73;
    v170 = v74;
    v171 = v65;
    v172 = v66;
    v173 = v61;
    v174 = v57;
    v175 = v53;
    v196 = v76;
    v176 = v72;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v77;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v68;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v69;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v70;
    BYTE4(v182) = v8;
    v117 = v2;
    v183 = result;
    v147 = v5;
    goto LABEL_242;
  }

  v85 = *v81;
  if (v85 >= 2)
  {
    v167 = v79;
    v168 = v80;
    v169 = v73;
    v170 = v74;
    v171 = v65;
    v172 = v66;
    v173 = v61;
    v174 = v57;
    v175 = v53;
    v196 = v76;
    v176 = v72;
    v177 = v28;
    LOBYTE(v178) = v24;
    BYTE4(v178) = v25;
    LOBYTE(v179) = v77;
    BYTE4(v179) = v20;
    LOBYTE(v180) = v68;
    BYTE4(v180) = v16;
    LOBYTE(v181) = v69;
    BYTE4(v181) = v12;
    LOBYTE(v182) = v70;
    BYTE4(v182) = v8;
    v117 = v2;
    v183 = result;
    goto LABEL_244;
  }

  v86 = 1;
LABEL_131:
  if (v85)
  {
    v87 = v86;
  }

  else
  {
    v87 = 0;
  }

  if (v197)
  {
    if (v8 & 1) != 0 && (v12 & 1) != 0 && (v16 & 1) != 0 && (v20 & 1) != 0 && (v24 & 1) != 0 && (v28)
    {
      v2 = v195;
      if (v195 & 1) != 0 && (v72)
      {
        v2 = v194;
        if (v194)
        {
          v2 = v193;
          if (v193)
          {
            v2 = v192;
            if (v192 & 1) != 0 && (v53 & 1) != 0 && (v57 & 1) != 0 && (v61 & 1) != 0 && (v65 & 1) != 0 && (v73 & 1) != 0 && (v79 & 1) != 0 && (v83 & 1) != 0 && (v86)
            {
              *result = v70;
              result[1] = v69;
              result[2] = v68;
              result[3] = v77;
              result[4] = v25;
              result[5] = v191;
              result[6] = v190;
              result[7] = v76;
              result[8] = v189;
              result[9] = v188;
              result[10] = v187;
              result[11] = v186;
              result[12] = v185;
              result[13] = v184;
              result[14] = v66;
              result[15] = v74;
              result[16] = v80;
              result[17] = v84;
              result[18] = v87;
              result[19] = 1;
              return result;
            }
          }
        }
      }
    }

    __break(1u);
  }

  v5 = *(v2 + 8);
  v88 = *(v2 + 24);
LABEL_158:
  *result = 0;
  result[19] = 0;
  *v2 = 0;
  *(v2 + 8) = 0;
  if (v88 && v5)
  {
    v89 = *(*v88 + 16);

    return v89(v88, v197);
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::CaptureDevice,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  v4 = WebCore::CaptureDevice::label(a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v4);
  v5 = (a2 + 24);
  v6 = *(a2 + 24);
  if (!v6 || !*(v6 + 4))
  {
    v5 = a2;
  }

  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v5);
  v11 = *(a2 + 32);
  IPC::Encoder::operator<<<BOOL>(a1, &v11);
  v10 = *(a2 + 33);
  IPC::Encoder::operator<<<BOOL>(a1, &v10);
  v9 = *(a2 + 34);
  IPC::Encoder::operator<<<BOOL>(a1, &v9);
  v8 = *(a2 + 35);
  return IPC::Encoder::operator<<<BOOL>(a1, &v8);
}

_UNKNOWN **WebCore::CaptureDevice::label(WebCore::CaptureDevice *this)
{
  {
    atomic_fetch_add_explicit(WebCore::CaptureDevice::label(void)::{lambda(void)#1}::operator() const(void)::impl, 2u, memory_order_relaxed);
    WebCore::CaptureDevice::label(void)const::airPods = WebCore::CaptureDevice::label(void)::{lambda(void)#1}::operator() const(void)::impl;
  }

  v2 = *(this + 8);
  v3 = v2 == 4 || v2 == 2;
  if (v3 && *(this + 2) && WTF::StringImpl::find() != -1)
  {
    return &WebCore::CaptureDevice::label(void)const::airPods;
  }

  else
  {
    return (this + 16);
  }
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::CaptureDevice,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::String>(a1, &v56);
  v4 = IPC::Decoder::decode<WebCore::CaptureDevice::DeviceType>(a1);
  IPC::Decoder::decode<WTF::String>(a1, &v54);
  result = IPC::Decoder::decode<WTF::String>(a1, &v52);
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  v8 = *a1;
  if (v6 <= &v7[-*a1])
  {
    goto LABEL_70;
  }

  v9 = v7 + 1;
  *(a1 + 2) = v7 + 1;
  if (!v7)
  {
    goto LABEL_72;
  }

  v10 = *v7;
  if (v10 < 2)
  {
    v11 = 1;
    goto LABEL_5;
  }

  v51 = v10;
  while (1)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v33 = *(a1 + 3);
    if (!v33 || !v6)
    {
      v50 = 0;
      v34 = 0;
      v8 = 0;
LABEL_78:
      *a1 = 0;
      *(a1 + 1) = 0;
      v35 = *(a1 + 3);
      if (v35 && v34)
      {
        (*(*v35 + 16))(v35, v8, v34);
        v49 = 0;
        v8 = *a1;
        v6 = *(a1 + 1);
      }

      else
      {
        v6 = 0;
        v8 = 0;
        v49 = 0;
      }

      goto LABEL_81;
    }

    result = (*(*v33 + 16))(v33, v8);
    v11 = 0;
    v8 = *a1;
    v6 = *(a1 + 1);
    v9 = *(a1 + 2);
    v10 = v51;
LABEL_5:
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v6 <= v9 - v8)
    {
      LODWORD(v50) = v12;
      BYTE4(v50) = v11;
      v34 = 0;
      v42 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v42 && v6)
      {
        (*(*v42 + 16))(v42);
        v8 = *a1;
        v34 = *(a1 + 1);
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_78;
    }

    v13 = v9 + 1;
    *(a1 + 2) = v9 + 1;
    if (!v9)
    {
      LODWORD(v50) = v12;
      BYTE4(v50) = v11;
      v34 = v6;
      goto LABEL_78;
    }

    v14 = *v9;
    if (v14 < 2)
    {
      v15 = 1;
      goto LABEL_12;
    }

    v49 = *v9;
    LODWORD(v50) = v12;
    BYTE4(v50) = v11;
LABEL_81:
    *a1 = 0;
    *(a1 + 1) = 0;
    v36 = *(a1 + 3);
    if (!v36 || !v6)
    {
      v48 = 0;
      v37 = 0;
      v8 = 0;
LABEL_83:
      *a1 = 0;
      *(a1 + 1) = 0;
      v38 = *(a1 + 3);
      if (v38 && v37)
      {
        (*(*v38 + 16))(v38, v8, v37);
        v47 = 0;
        v8 = *a1;
        v6 = *(a1 + 1);
      }

      else
      {
        v6 = 0;
        v8 = 0;
        v47 = 0;
      }

      goto LABEL_86;
    }

    result = (*(*v36 + 16))(v36, v8);
    v15 = 0;
    v8 = *a1;
    v6 = *(a1 + 1);
    v13 = *(a1 + 2);
    v12 = v50;
    LOBYTE(v11) = BYTE4(v50);
    v14 = v49;
LABEL_12:
    if (v14)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v6 <= v13 - v8)
    {
      LOBYTE(v48) = v15;
      HIDWORD(v48) = v16;
      LODWORD(v50) = v12;
      BYTE4(v50) = v11;
      v37 = 0;
      v43 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v43 && v6)
      {
        (*(*v43 + 16))(v43);
        v8 = *a1;
        v37 = *(a1 + 1);
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_83;
    }

    v17 = v13 + 1;
    *(a1 + 2) = v13 + 1;
    if (!v13)
    {
      LOBYTE(v48) = v15;
      HIDWORD(v48) = v16;
      LODWORD(v50) = v12;
      BYTE4(v50) = v11;
      v37 = v6;
      goto LABEL_83;
    }

    v18 = *v13;
    if (v18 < 2)
    {
      v19 = 1;
      goto LABEL_19;
    }

    v47 = *v13;
    LOBYTE(v48) = v15;
    HIDWORD(v48) = v16;
    LODWORD(v50) = v12;
    BYTE4(v50) = v11;
LABEL_86:
    *a1 = 0;
    *(a1 + 1) = 0;
    v39 = *(a1 + 3);
    if (!v39 || !v6)
    {
      v46 = 0;
      v40 = 0;
      v8 = 0;
LABEL_88:
      *a1 = 0;
      *(a1 + 1) = 0;
      v41 = *(a1 + 3);
      if (v41 && v40)
      {
        (*(*v41 + 16))(v41, v8, v40);
        v45 = 0;
        v8 = *a1;
        v6 = *(a1 + 1);
      }

      else
      {
        v6 = 0;
        v8 = 0;
        v45 = 0;
      }

      goto LABEL_90;
    }

    result = (*(*v39 + 16))(v39, v8);
    v19 = 0;
    v8 = *a1;
    v6 = *(a1 + 1);
    v17 = *(a1 + 2);
    v12 = v50;
    LOBYTE(v11) = BYTE4(v50);
    LOBYTE(v15) = v48;
    v16 = HIDWORD(v48);
    v18 = v47;
LABEL_19:
    if (v18)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v6 <= v17 - v8)
    {
      LOBYTE(v46) = v19;
      HIDWORD(v46) = v20;
      LOBYTE(v48) = v15;
      HIDWORD(v48) = v16;
      LODWORD(v50) = v12;
      BYTE4(v50) = v11;
      v40 = 0;
      v44 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v44 && v6)
      {
        (*(*v44 + 16))(v44);
        v8 = *a1;
        v40 = *(a1 + 1);
      }

      else
      {
        v8 = 0;
      }

      goto LABEL_88;
    }

    *(a1 + 2) = v17 + 1;
    if (!v17)
    {
      LOBYTE(v46) = v19;
      HIDWORD(v46) = v20;
      LOBYTE(v48) = v15;
      HIDWORD(v48) = v16;
      LODWORD(v50) = v12;
      BYTE4(v50) = v11;
      v40 = v6;
      goto LABEL_88;
    }

    v21 = *v17;
    if (v21 >= 2)
    {
      v45 = *v17;
      LOBYTE(v46) = v19;
      HIDWORD(v46) = v20;
      LOBYTE(v48) = v15;
      HIDWORD(v48) = v16;
      LODWORD(v50) = v12;
      BYTE4(v50) = v11;
LABEL_90:
      *a1 = 0;
      *(a1 + 1) = 0;
      result = *(a1 + 3);
      if (!result || !v6)
      {
        goto LABEL_91;
      }

      result = (*(*result + 16))(result, v8);
      v22 = 0;
      v8 = *a1;
      v12 = v50;
      LOBYTE(v11) = BYTE4(v50);
      LOBYTE(v15) = v48;
      v16 = HIDWORD(v48);
      LOBYTE(v19) = v46;
      v20 = HIDWORD(v46);
      v21 = v45;
      goto LABEL_26;
    }

    v22 = 1;
LABEL_26:
    if (v21)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    if (!v8)
    {
LABEL_91:
      v30 = 0;
      *a2 = 0;
      goto LABEL_55;
    }

    if (v57 & 1) != 0 && v4 > 0xFFu && (v55 & 1) != 0 && (v53 & 1) != 0 && (v11 & 1) != 0 && (v15 & 1) != 0 && (v19 & 1) != 0 && (v22)
    {
      break;
    }

    __break(1u);
LABEL_70:
    *a1 = 0;
    *(a1 + 1) = 0;
    v31 = *(a1 + 3);
    if (v31)
    {
      if (v6)
      {
        (*(*v31 + 16))(v31);
        v6 = *(a1 + 1);
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_72:
    *a1 = 0;
    *(a1 + 1) = 0;
    v32 = *(a1 + 3);
    if (!v32)
    {
      v6 = 0;
      goto LABEL_74;
    }

    if (v6)
    {
      (*(*v32 + 16))(v32);
      v51 = 0;
      v8 = *a1;
      v6 = *(a1 + 1);
    }

    else
    {
LABEL_74:
      v8 = 0;
      v51 = 0;
    }
  }

  v24 = v56;
  if (v56)
  {
    atomic_fetch_add_explicit(v56, 2u, memory_order_relaxed);
  }

  v25 = v54;
  if (v54)
  {
    atomic_fetch_add_explicit(v54, 2u, memory_order_relaxed);
  }

  v26 = v52;
  if (v52)
  {
    atomic_fetch_add_explicit(v52, 2u, memory_order_relaxed);
  }

  if (v16)
  {
    v27 = 256;
  }

  else
  {
    v27 = 0;
  }

  if (v20)
  {
    v28 = 0x10000;
  }

  else
  {
    v28 = 0;
  }

  if ((v23 & 1) != 0 || v4 - 16 <= 0x30 && ((1 << (v4 - 16)) & 0x1000000010001) != 0)
  {
    v29 = 0x1000000;
  }

  else
  {
    v29 = 0;
  }

  *a2 = v24;
  *(a2 + 8) = v4;
  *(a2 + 16) = v25;
  *(a2 + 24) = v26;
  *(a2 + 32) = v28 | v12 | v27 | v29;
  v30 = 1;
LABEL_55:
  *(a2 + 40) = v30;
  if (v53 == 1)
  {
    result = v52;
    v52 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  if (v55 == 1)
  {
    result = v54;
    v54 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  if (v57 == 1)
  {
    result = v56;
    v56 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v8);
      }
    }
  }

  return result;
}

void sub_19D754054(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, char a14, WTF::StringImpl *a15, char a16)
{
  if (a14 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  if (a16 == 1 && a15 && atomic_fetch_add_explicit(a15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a15, a2);
  }

  if (*(v16 - 40) == 1)
  {
    v18 = *(v16 - 48);
    *(v16 - 48) = 0;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::Decoder::decode<WebCore::CaptureDevice::DeviceType>(void *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = *a1;
  if (v1 <= &v2[-*a1])
  {
    *a1 = 0;
    a1[1] = 0;
    v13 = a1;
    v8 = a1[3];
    if (v8)
    {
      if (v1)
      {
        (*(*v8 + 16))(v8);
        v3 = *v13;
        v1 = v13[1];
        goto LABEL_12;
      }
    }

    else
    {
      v1 = 0;
    }

    v3 = 0;
LABEL_12:
    a1 = v13;
    *v13 = 0;
    v13[1] = 0;
    v9 = v13[3];
    if (v9 && v1)
    {
      (*(*v9 + 16))(v9, v3);
      a1 = v13;
    }

    goto LABEL_13;
  }

  a1[2] = v2 + 1;
  if (!v2)
  {
    v13 = a1;
    goto LABEL_12;
  }

  v4 = *v2;
  if ((v4 - 1) <= 0x3F && ((1 << (v4 - 1)) & 0x800000008000808BLL) != 0)
  {
    v6 = 1;
    return v4 | (v6 << 8);
  }

LABEL_13:
  v10 = *a1;
  v11 = a1[1];
  *a1 = 0;
  a1[1] = 0;
  v12 = a1[3];
  if (v12 && v11)
  {
    (*(*v12 + 16))(v12, v10);
  }

  v6 = 0;
  v4 = 0;
  return v4 | (v6 << 8);
}

void IPC::ArgumentCoder<WebCore::CaptureDeviceWithCapabilities,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WebCore::CaptureDevice>(a1, &v45);
  IPC::ArgumentCoder<WebCore::RealtimeMediaSourceCapabilities,void>::decode(a1, v33);
  if ((v44 & 1) == 0)
  {
    goto LABEL_28;
  }

  while (1)
  {
    if (!*a1)
    {
      *a2 = 0;
      *(a2 + 232) = 0;
      goto LABEL_14;
    }

    if (v49)
    {
      v14 = v45;
      v15 = v46;
      v5 = v47;
      v45 = 0;
      v47 = 0uLL;
      *v16 = v5;
      v17 = v48;
      if (v44)
      {
        break;
      }
    }

    __break(1u);
LABEL_28:
    v4 = *a1;
    v12 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v13 = *(a1 + 3);
    if (v13 && v12)
    {
      (*(*v13 + 16))(v13, v4);
    }
  }

  v18[0] = v33[0];
  v18[1] = v33[1];
  v18[2] = v33[2];
  v19 = 0;
  v20 = 0;
  v21 = __n[0];
  if (__n[0])
  {
    v20 = __n[0];
    v19 = WTF::fastMalloc(__n[0]);
    memcpy(v19, __src, __n[0]);
  }

  v22 = *&__n[1];
  v23 = v36;
  v24 = v37;
  v6 = v38;
  if (v38)
  {
    atomic_fetch_add_explicit(v38, 2u, memory_order_relaxed);
  }

  v25 = v6;
  v7 = v39;
  if (v39)
  {
    atomic_fetch_add_explicit(v39, 2u, memory_order_relaxed);
  }

  v26 = v7;
  v27 = v40;
  v28 = 0;
  v29 = 0;
  v30 = v42[0];
  if (v42[0])
  {
    v29 = v42[0];
    v28 = WTF::fastMalloc(v42[0]);
    memcpy(v28, v41, v42[0]);
  }

  v31 = *&v42[1];
  *v32 = *v43;
  *&v32[14] = *&v43[14];
  *a2 = v14;
  *(a2 + 8) = v15;
  *(a2 + 16) = *v16;
  *(a2 + 32) = v17;
  WebCore::RealtimeMediaSourceCapabilities::RealtimeMediaSourceCapabilities(a2 + 40, v18);
  *(a2 + 232) = 1;
  WebCore::RealtimeMediaSourceCapabilities::~RealtimeMediaSourceCapabilities(v18, v8);
LABEL_14:
  if (v44 == 1)
  {
    WebCore::RealtimeMediaSourceCapabilities::~RealtimeMediaSourceCapabilities(v33, v4);
  }

  if (v49 == 1)
  {
    v9 = *(&v47 + 1);
    *(&v47 + 1) = 0;
    if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v9, v4);
    }

    v10 = v47;
    *&v47 = 0;
    if (v10 && atomic_fetch_add_explicit(v10, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v10, v4);
    }

    v11 = v45;
    v45 = 0;
    if (v11)
    {
      if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v11, v4);
      }
    }
  }
}

void sub_19D754530(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, WTF::StringImpl *a11, WTF::StringImpl *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, WTF *a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, WTF::StringImpl *a27, WTF::StringImpl *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, char a62)
{
  if (a62 == 1)
  {
    WebCore::RealtimeMediaSourceCapabilities::~RealtimeMediaSourceCapabilities(&a38, a2);
  }

  if (*(v62 - 56) == 1)
  {
    v64 = *(v62 - 72);
    *(v62 - 72) = 0;
    if (v64 && atomic_fetch_add_explicit(v64, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v64, a2);
    }

    v65 = *(v62 - 80);
    *(v62 - 80) = 0;
    if (v65 && atomic_fetch_add_explicit(v65, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v65, a2);
    }

    v66 = *(v62 - 96);
    *(v62 - 96) = 0;
    if (v66)
    {
      if (atomic_fetch_add_explicit(v66, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v66, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::CaptureDevice>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::CaptureDevice,void>::decode(a1, a2);
  if ((*(a2 + 40) & 1) == 0)
  {
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v5 != 0)
    {
      v7 = *(*result + 16);

      return v7();
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::RealtimeMediaSourceCapabilities,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 16));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::VectorArgumentCoder<false,WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 48);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 64));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 80));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 84));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 88));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 92));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 96));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 104));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 112));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 120));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 128));
  IPC::VectorArgumentCoder<false,WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::ApplePayContactField,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 136);
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 152));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 160));
  v6 = *(a2 + 168);
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 169));
  v5 = *(a2 + 170);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  return IPC::ArgumentCoder<WebCore::RealtimeMediaSourceSupportedConstraints,void>::encode(a1, (a2 + 171));
}

WTF *IPC::ArgumentCoder<WebCore::RealtimeMediaSourceCapabilities,void>::decode@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = IPC::Decoder::decode<WebCore::LongCapabilityRange>(a1);
  v7 = v6;
  v8 = IPC::Decoder::decode<WebCore::LongCapabilityRange>(a1);
  v10 = v9;
  IPC::Decoder::decode<WebCore::DoubleCapabilityRange>(&v127, a1);
  IPC::Decoder::decode<WebCore::DoubleCapabilityRange>(&v125, a1);
  v11 = *(a1 + 1);
  v12 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = v12 - *a1;
  v14 = v11 >= v13;
  v15 = v11 - v13;
  if (!v14 || v15 <= 7)
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v65 = *(a1 + 3);
    if (v65)
    {
      if (v11)
      {
        (*(*v65 + 16))(v65);
        v11 = *(a1 + 1);
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_95;
  }

  *(a1 + 2) = v12 + 1;
  if (!v12)
  {
LABEL_95:
    *a1 = 0;
    *(a1 + 1) = 0;
    v66 = *(a1 + 3);
    if (v66 && v11)
    {
      (*(*v66 + 16))(v66);
    }

LABEL_25:
    v26 = *a1;
    v27 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v28 = *(a1 + 3);
    if (v28 && v27)
    {
      (*(*v28 + 16))(v28, v26);
    }

    v88 = 0;
    v84 = 0;
    goto LABEL_27;
  }

  v17 = *v12;
  v89 = 0uLL;
  if (v17 >= 0x100000)
  {
    while (1)
    {
      v24 = IPC::Decoder::decode<WebCore::ParagraphStyleAlignment>(a1);
      LOWORD(v123) = v24;
      if (v24 < 0x100u)
      {
        goto LABEL_23;
      }

      v22 = HIDWORD(v89);
      if (HIDWORD(v89) == DWORD2(v89))
      {
        v23 = WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v89, HIDWORD(v89) + 1, &v123);
        v22 = HIDWORD(v89);
        *(v89 + HIDWORD(v89)) = *v23;
      }

      else
      {
        *(v89 + HIDWORD(v89)) = v24;
      }

      HIDWORD(v89) = v22 + 1;
      v17 = (v17 - 1);
      if (!v17)
      {
        WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v89, (v22 + 1));
        v2 = HIDWORD(v89);
        goto LABEL_17;
      }
    }
  }

  if (v17)
  {
    DWORD2(v89) = v17;
    *&v89 = WTF::fastMalloc(v17);
    while (1)
    {
      v18 = IPC::Decoder::decode<WebCore::ParagraphStyleAlignment>(a1);
      LOWORD(v123) = v18;
      if (v18 < 0x100u)
      {
        break;
      }

      v20 = HIDWORD(v89);
      if (HIDWORD(v89) == DWORD2(v89))
      {
        v21 = WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v89, HIDWORD(v89) + 1, &v123);
        v20 = HIDWORD(v89);
        *(v89 + HIDWORD(v89)) = *v21;
      }

      else
      {
        *(v89 + HIDWORD(v89)) = v18;
      }

      v2 = v20 + 1;
      HIDWORD(v89) = v20 + 1;
      v17 = (v17 - 1);
      if (!v17)
      {
        goto LABEL_17;
      }
    }

LABEL_23:
    v25 = v89;
    if (v89)
    {
      *&v89 = 0;
      DWORD2(v89) = 0;
      WTF::fastFree(v25, v19);
    }

    goto LABEL_25;
  }

  v2 = 0;
LABEL_17:
  v84 = v89;
  v79 = DWORD2(v89);
  v88 = 1;
LABEL_27:
  IPC::Decoder::decode<WebCore::DoubleCapabilityRange>(&v123, a1);
  v29 = IPC::Decoder::decode<WebCore::LongCapabilityRange>(a1);
  v31 = v30;
  v32 = IPC::Decoder::decode<WebCore::LongCapabilityRange>(a1);
  v86 = v33;
  v34 = v32;
  v35 = *(a1 + 1);
  v36 = *(a1 + 2);
  v37 = *a1;
  if (v35 <= &v36[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v67 = *(a1 + 3);
    if (v67)
    {
      if (v35)
      {
        (*(*v67 + 16))(v67);
        v35 = *(a1 + 1);
      }
    }

    else
    {
      v35 = 0;
    }

LABEL_100:
    *a1 = 0;
    *(a1 + 1) = 0;
    v68 = *(a1 + 3);
    if (v68)
    {
      if (v35)
      {
        (*(*v68 + 16))(v68);
        v37 = *a1;
        v35 = *(a1 + 1);
        goto LABEL_103;
      }
    }

    else
    {
      v35 = 0;
    }

    v37 = 0;
    goto LABEL_103;
  }

  *(a1 + 2) = v36 + 1;
  if (!v36)
  {
    goto LABEL_100;
  }

  v38 = *v36;
  if (v38 < 3)
  {
    v85 = v38 | 0x100;
    goto LABEL_31;
  }

LABEL_103:
  *a1 = 0;
  *(a1 + 1) = 0;
  v69 = *(a1 + 3);
  if (v69 && v35)
  {
    (*(*v69 + 16))(v69, v37);
  }

  v85 = 0;
LABEL_31:
  IPC::Decoder::decode<WTF::String>(a1, &v121);
  IPC::Decoder::decode<WTF::String>(a1, &v119);
  IPC::Decoder::decode<WebCore::DoubleCapabilityRange>(&v117, a1);
  IPC::Decoder::decode<WTF::Vector<WebCore::MeteringMode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(&__src, a1);
  IPC::Decoder::decode<WebCore::DoubleCapabilityRange>(&v112, a1);
  v39 = *(a1 + 1);
  v40 = *(a1 + 2);
  v41 = *a1;
  *(&v82 + 1) = v8;
  v83 = a2;
  *&v82 = v5;
  if (v39 <= &v40[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v70 = *(a1 + 3);
    if (v70)
    {
      if (v39)
      {
        (*(*v70 + 16))(v70);
        v39 = *(a1 + 1);
      }
    }

    else
    {
      v39 = 0;
    }

LABEL_109:
    *a1 = 0;
    *(a1 + 1) = 0;
    v71 = *(a1 + 3);
    if (v71)
    {
      if (v39)
      {
        (*(*v71 + 16))(v71);
        v43 = 0;
        v41 = *a1;
        v39 = *(a1 + 1);
        goto LABEL_112;
      }
    }

    else
    {
      v39 = 0;
    }

    v41 = 0;
    v43 = 0;
    goto LABEL_112;
  }

  v42 = v40 + 1;
  *(a1 + 2) = v40 + 1;
  if (!v40)
  {
    goto LABEL_109;
  }

  v43 = *v40;
  if (v43 < 2)
  {
    v44 = 1;
    goto LABEL_35;
  }

LABEL_112:
  *a1 = 0;
  *(a1 + 1) = 0;
  v72 = *(a1 + 3);
  if (v72)
  {
    if (v39)
    {
      (*(*v72 + 16))(v72, v41);
      v41 = *a1;
      v39 = *(a1 + 1);
      goto LABEL_115;
    }
  }

  else
  {
    v39 = 0;
  }

  v41 = 0;
LABEL_115:
  v44 = 0;
  v42 = *(a1 + 2);
LABEL_35:
  if (v43)
  {
    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  v80 = v45;
  v81 = v29;
  if (v39 <= &v42[-v41])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v73 = *(a1 + 3);
    if (v73)
    {
      if (v39)
      {
        (*(*v73 + 16))(v73);
        v41 = *a1;
        v39 = *(a1 + 1);
LABEL_119:
        *a1 = 0;
        *(a1 + 1) = 0;
        v74 = *(a1 + 3);
        if (v74)
        {
          if (v39)
          {
            (*(*v74 + 16))(v74, v41);
            v41 = *a1;
            v39 = *(a1 + 1);
            goto LABEL_122;
          }
        }

        else
        {
          v39 = 0;
        }

        v41 = 0;
        goto LABEL_122;
      }
    }

    else
    {
      v39 = 0;
    }

    v41 = 0;
    goto LABEL_119;
  }

  *(a1 + 2) = v42 + 1;
  if (!v42)
  {
    goto LABEL_119;
  }

  v46 = *v42;
  if (v46 < 3)
  {
    v47 = v7;
    v48 = v46 | 0x100;
    goto LABEL_42;
  }

LABEL_122:
  v47 = v7;
  *a1 = 0;
  *(a1 + 1) = 0;
  v75 = *(a1 + 3);
  if (!v75)
  {
    v41 = 0;
    v48 = 0;
    v39 = 0;
    goto LABEL_124;
  }

  if (!v39)
  {
    v41 = 0;
    v48 = 0;
LABEL_124:
    *a1 = 0;
    *(a1 + 1) = 0;
    v76 = *(a1 + 3);
    if (v76)
    {
      if (v39)
      {
        (*(*v76 + 16))(v76, v41);
        v41 = *a1;
        v39 = *(a1 + 1);
        goto LABEL_127;
      }
    }

    else
    {
      v39 = 0;
    }

    v41 = 0;
    goto LABEL_127;
  }

  (*(*v75 + 16))(v75, v41);
  v48 = 0;
  v41 = *a1;
  v39 = *(a1 + 1);
LABEL_42:
  v49 = *(a1 + 2);
  if (v39 <= &v49[-v41])
  {
    goto LABEL_124;
  }

  v50 = v34;
  *(a1 + 2) = v49 + 1;
  if (!v49)
  {
LABEL_127:
    *a1 = 0;
    *(a1 + 1) = 0;
    v77 = *(a1 + 3);
    if (v77)
    {
      v50 = v34;
      if (v39)
      {
        (*(*v77 + 16))(v77, v41);
        v52 = 0;
        v41 = *a1;
        v39 = *(a1 + 1);
        goto LABEL_130;
      }
    }

    else
    {
      v50 = v34;
      v39 = 0;
    }

    v41 = 0;
    v52 = 0;
    goto LABEL_130;
  }

  v51 = v10;
  v52 = *v49;
  if (v52 < 2)
  {
    v53 = 1;
    goto LABEL_46;
  }

LABEL_130:
  v51 = v10;
  *a1 = 0;
  *(a1 + 1) = 0;
  v78 = *(a1 + 3);
  if (v78 && v39)
  {
    (*(*v78 + 16))(v78, v41);
  }

  v53 = 0;
LABEL_46:
  if (v52)
  {
    v54 = v53;
  }

  else
  {
    v54 = 0;
  }

  result = IPC::Decoder::decode<WebCore::RealtimeMediaSourceSupportedConstraints>(v110, a1);
  if (!*a1)
  {
LABEL_88:
    v63 = v84;
    *v83 = 0;
    v83[192] = 0;
    v57 = v88;
    if ((v116 & 1) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_71;
  }

  v57 = v88;
  if ((v47 & 1) == 0 || (v51 & 1) == 0 || (v128 & 1) == 0 || (v126 & 1) == 0 || (v88 & 1) == 0 || (v124 & 1) == 0 || (v31 & 1) == 0 || (v86 & 1) == 0 || v85 <= 0xFF || (v122 & 1) == 0 || (v120 & 1) == 0 || (v118 & 1) == 0 || (v116 & 1) == 0 || (v113 & 1) == 0 || (v44 & 1) == 0 || v48 <= 0xFF || (v53 & 1) == 0 || (v111 & 1) == 0)
  {
    __break(1u);
    goto LABEL_88;
  }

  v87 = v112;
  v89 = v82;
  v90 = v127;
  v91 = v125;
  v92 = v84;
  v93 = v79;
  v94 = v2;
  v95 = v123;
  v96 = v81;
  v97 = v50;
  v98 = v85;
  v58 = v121;
  v121 = 0;
  v59 = v119;
  v119 = 0;
  v99 = v58;
  v100 = v59;
  v101 = v117;
  v60 = v115;
  v102 = 0;
  v103 = 0;
  v104 = v115;
  if (v115)
  {
    v61 = WTF::fastMalloc(v115);
    v103 = v60;
    v102 = v61;
    memcpy(v61, __src, v60);
  }

  v105 = v87;
  v106 = v80;
  v107 = v48;
  v108 = v54;
  *v109 = *v110;
  *&v109[15] = *&v110[15];
  *(WebCore::RealtimeMediaSourceCapabilities::RealtimeMediaSourceCapabilities(v83, &v89) + 192) = 1;
  WebCore::RealtimeMediaSourceCapabilities::~RealtimeMediaSourceCapabilities(&v89, v62);
  v63 = 0;
LABEL_71:
  result = __src;
  if (__src)
  {
    __src = 0;
    result = WTF::fastFree(result, v56);
  }

LABEL_73:
  if (v120 == 1)
  {
    result = v119;
    v119 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v56);
      }
    }
  }

  if (v122 == 1)
  {
    result = v121;
    v121 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v56);
      }
    }
  }

  if (v63)
  {
    v64 = v57;
  }

  else
  {
    v64 = 0;
  }

  if (v64 == 1)
  {
    return WTF::fastFree(v63, v56);
  }

  return result;
}

void sub_19D75526C(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF *a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, int a20, WTF *a21, int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, WTF *a27, int a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, WTF::StringImpl *a34, WTF::StringImpl *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, WTF *a51, uint64_t a52, char a53)
{
  if (a53 == 1 && a51)
  {
    WTF::fastFree(a51, a2);
  }

  if (*(v53 - 216) == 1)
  {
    v55 = *(v53 - 224);
    *(v53 - 224) = 0;
    if (v55)
    {
      if (atomic_fetch_add_explicit(v55, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v55, a2);
      }
    }
  }

  if (*(v53 - 200) == 1)
  {
    v56 = *(v53 - 208);
    *(v53 - 208) = 0;
    if (v56)
    {
      if (atomic_fetch_add_explicit(v56, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v56, a2);
      }
    }
  }

  if (!a15)
  {
    a20 = 0;
  }

  if (a20 == 1)
  {
    WTF::fastFree(a15, a2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t IPC::Decoder::decode<WebCore::LongCapabilityRange>(IPC::Decoder *a1)
{
  v2 = IPC::Decoder::decode<float>(a1);
  v3 = IPC::Decoder::decode<float>(a1);
  if (!*a1)
  {
    goto LABEL_14;
  }

  if ((v2 & 0x100000000) != 0 && (v3 & 0x100000000) != 0)
  {
    LODWORD(v5) = v2 < v3;
    if (v2 == v3)
    {
      return v2 | (v3 << 32);
    }

LABEL_9:
    if (v5)
    {
      goto LABEL_10;
    }

LABEL_14:
    v4 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v3 = *(a1 + 3);
    if (!v3)
    {
      return 0;
    }

LABEL_18:
    if (v4)
    {
      (*(*v3 + 16))(v3);
    }

    return 0;
  }

  v5 = HIDWORD(v3) & 1;
  if ((v2 & 0x100000000) != 0)
  {
    LODWORD(v5) = 0;
  }

  if (((v2 & 0x100000000) == 0) == v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 0x100000000) == 0 || (v3 & 0x100000000) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v2 <= v3)
  {
    return v2 | (v3 << 32);
  }

  result = 48;
  __break(0xC471u);
  return result;
}

uint64_t IPC::Decoder::decode<WebCore::DoubleCapabilityRange>(uint64_t a1, IPC::Decoder *a2)
{
  v4 = COERCE_DOUBLE(IPC::Decoder::decode<unsigned long long>(a2));
  v6 = v5;
  *&result = COERCE_DOUBLE(IPC::Decoder::decode<unsigned long long>(a2));
  if (!*a2)
  {
    goto LABEL_21;
  }

  if (v6 & 1) != 0 && (v8)
  {
    if (v4 == *&result)
    {
      v9 = 0;
    }

    else
    {
      v9 = -127;
    }

    if (v4 > *&result)
    {
      v9 = 1;
    }

    if (v4 < *&result)
    {
      v9 = -1;
    }
  }

  else
  {
    if (v6 & 1 | ((v8 & ~v6 & 1) == 0))
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    if (((v8 | v6) & 1) == 0)
    {
      v9 = 0;
    }
  }

  if ((v9 + 1) <= 1u)
  {
    if (v6 & 1) != 0 && (v8)
    {
      if (v4 <= *&result)
      {
        *a1 = v4;
        *(a1 + 8) = *&result;
        *(a1 + 16) = 1;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = 48;
    __break(0xC471u);
  }

  else
  {
LABEL_21:
    *a1 = 0;
    *(a1 + 16) = 0;
    v10 = *(a2 + 1);
    *a2 = 0;
    *(a2 + 1) = 0;
    result = *(a2 + 3);
    if (*&result != 0.0 && v10 != 0)
    {
      v12 = *(*result + 16);

      *&result = COERCE_DOUBLE(v12());
    }
  }

  return result;
}

WTF *IPC::Decoder::decode<WTF::Vector<WebCore::MeteringMode,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(uint64_t a1, void *a2)
{
  v4 = ((a2[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *a2;
  v6 = a2[1];
  if (v6 < v4 - v5 || v6 - (v4 - v5) <= 7)
  {
    *a2 = 0;
    a2[1] = 0;
    v19 = a2[3];
    if (v19)
    {
      if (v6)
      {
        (*(*v19 + 16))(v19);
        v5 = *a2;
        v6 = a2[1];
LABEL_32:
        *a2 = 0;
        a2[1] = 0;
        v20 = a2[3];
        if (v20 && v6)
        {
          (*(*v20 + 16))(v20, v5);
        }

        *a1 = 0;
        *(a1 + 16) = 0;
LABEL_34:
        v21 = *a2;
        v22 = a2[1];
        *a2 = 0;
        a2[1] = 0;
        result = a2[3];
        if (result)
        {
          if (v22)
          {
            return (*(*result + 16))(result, v21);
          }
        }

        return result;
      }
    }

    else
    {
      v6 = 0;
    }

    v5 = 0;
    goto LABEL_32;
  }

  a2[2] = v4 + 1;
  if (!v4)
  {
    goto LABEL_32;
  }

  v8 = *v4;
  v24 = 0;
  v25 = 0;
  if (v8 >= 0x100000)
  {
    while (1)
    {
      v17 = IPC::Decoder::decode<WebCore::HueInterpolationMethod>(a2);
      v23 = v17;
      if (v17 < 0x100u)
      {
        goto LABEL_23;
      }

      v15 = HIDWORD(v25);
      if (HIDWORD(v25) == v25)
      {
        v16 = WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v24, HIDWORD(v25) + 1, &v23);
        v15 = HIDWORD(v25);
        *(v24 + HIDWORD(v25)) = *v16;
      }

      else
      {
        *(v24 + HIDWORD(v25)) = v17;
      }

      HIDWORD(v25) = v15 + 1;
      v8 = (v8 - 1);
      if (!v8)
      {
        WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::shrinkCapacity(&v24, (v15 + 1));
        v12 = HIDWORD(v25);
        goto LABEL_17;
      }
    }
  }

  if (v8)
  {
    LODWORD(v25) = v8;
    v24 = WTF::fastMalloc(v8);
    while (1)
    {
      v9 = IPC::Decoder::decode<WebCore::HueInterpolationMethod>(a2);
      v23 = v9;
      if (v9 < 0x100u)
      {
        break;
      }

      v10 = HIDWORD(v25);
      if (HIDWORD(v25) == v25)
      {
        v11 = WTF::Vector<WebCore::ContactProperty,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::expandCapacity<(WTF::FailureAction)0>(&v24, HIDWORD(v25) + 1, &v23);
        v10 = HIDWORD(v25);
        *(v24 + HIDWORD(v25)) = *v11;
      }

      else
      {
        *(v24 + HIDWORD(v25)) = v9;
      }

      v12 = v10 + 1;
      HIDWORD(v25) = v12;
      v8 = (v8 - 1);
      if (!v8)
      {
        goto LABEL_17;
      }
    }

LABEL_23:
    v14 = 0;
    *a1 = 0;
    *(a1 + 16) = 0;
    goto LABEL_24;
  }

  v12 = 0;
LABEL_17:
  v13 = v24;
  v24 = 0;
  *a1 = v13;
  HIDWORD(v25) = 0;
  *(a1 + 8) = v25;
  *(a1 + 12) = v12;
  v14 = 1;
  *(a1 + 16) = 1;
LABEL_24:
  result = v24;
  if (v24)
  {
    v24 = 0;
    LODWORD(v25) = 0;
    result = WTF::fastFree(result, v5);
  }

  if ((v14 & 1) == 0)
  {
    goto LABEL_34;
  }

  return result;
}

void sub_19D755880(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, WTF *a11, int a12)
{
  if (a11)
  {
    WTF::fastFree(a11, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::PlatformVideoColorSpace,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, a2 + 2);
  IPC::ArgumentCoder<std::optional<WebCore::ApplePayShippingContactEditingMode>,void>::encode<IPC::Encoder,std::optional<WebCore::ApplePayShippingContactEditingMode> const&>(a1, a2 + 4);

  return IPC::ArgumentCoder<std::optional<BOOL>,void>::encode<IPC::Encoder,std::optional<BOOL> const&>(a1, a2 + 6);
}

uint64_t IPC::ArgumentCoder<WebCore::PlatformVideoColorSpace,void>::encode(uint64_t a1, _BYTE *a2)
{
  IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::PlatformVideoColorPrimaries> const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::PlatformVideoColorPrimaries> const&>(a1, a2 + 2);
  IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::PlatformVideoColorPrimaries> const&>(a1, a2 + 4);

  return IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::encode<IPC::StreamConnectionEncoder,std::optional<WebCore::PlatformVideoColorPrimaries> const&>(a1, a2 + 6);
}

unint64_t IPC::ArgumentCoder<WebCore::PlatformVideoColorSpace,void>::decode(uint64_t *a1)
{
  v2 = IPC::Decoder::decode<std::optional<WebCore::PlatformVideoColorPrimaries>>(a1);
  v3 = IPC::Decoder::decode<std::optional<WebCore::PlatformVideoTransferCharacteristics>>(a1);
  v4 = IPC::Decoder::decode<std::optional<WebCore::PlatformVideoMatrixCoefficients>>(a1);
  v5 = IPC::Decoder::decode<std::optional<BOOL>>(a1);
  if (*a1)
  {
    if ((v2 & 0x10000) != 0 && (v3 & 0x10000) != 0 && (v4 & 0x10000) != 0 && (v5 & 0x10000) != 0)
    {
      return (v4 << 32) | (v5 << 48) | (v3 << 16) | (v2 & 0xFF00) | v2;
    }

    __break(1u);
  }

  return 0;
}

uint64_t IPC::Decoder::decode<std::optional<WebCore::PlatformVideoColorPrimaries>>(uint64_t *a1)
{
  v2 = IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoColorPrimaries>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x10000) == 0)
  {
    v4 = *a1;
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = v2;
      (*(*v6 + 16))(v6, v4);
      v2 = v8;
    }
  }

  return v2 & 0xFFFFFF;
}

uint64_t IPC::Decoder::decode<std::optional<WebCore::PlatformVideoTransferCharacteristics>>(uint64_t *a1)
{
  v2 = IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoTransferCharacteristics>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x10000) == 0)
  {
    v4 = *a1;
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = v2;
      (*(*v6 + 16))(v6, v4);
      v2 = v8;
    }
  }

  return v2 & 0xFFFFFF;
}

uint64_t IPC::Decoder::decode<std::optional<WebCore::PlatformVideoMatrixCoefficients>>(uint64_t *a1)
{
  v2 = IPC::ArgumentCoder<std::optional<WebCore::PlatformVideoMatrixCoefficients>,void>::decode<IPC::Decoder>(a1);
  if ((v2 & 0x10000) == 0)
  {
    v4 = *a1;
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = v2;
      (*(*v6 + 16))(v6, v4);
      v2 = v8;
    }
  }

  return v2 & 0xFFFFFF;
}

uint64_t IPC::ArgumentCoder<WebCore::SpatialVideoMetadata,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 4));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v4 = *(a2 + 16);

  return IPC::ArgumentCoder<float,void>::encode<IPC::Encoder>(a1, v4);
}

unint64_t IPC::ArgumentCoder<WebCore::SpatialVideoMetadata,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::Decoder::decode<WebCore::IntSize>(a1);
  v6 = v5;
  v7 = *(a1 + 1);
  v8 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = *a1;
  v10 = v8 - *a1;
  v11 = v7 >= v10;
  v12 = v7 - v10;
  if (v11 && v12 > 3)
  {
    *(a1 + 2) = v8 + 1;
    if (v8)
    {
      v14 = *v8 | 0x100000000;
      v15 = v9;
      goto LABEL_8;
    }

    v33 = result;
    v37 = v5;
    goto LABEL_39;
  }

  while (1)
  {
    v33 = result;
    v37 = v6;
    *a1 = 0;
    *(a1 + 1) = 0;
    v22 = *(a1 + 3);
    if (!v22)
    {
      v7 = 0;
LABEL_28:
      v9 = 0;
      goto LABEL_39;
    }

    if (!v7)
    {
      goto LABEL_28;
    }

    (*(*v22 + 16))(v22, v9);
    v9 = *a1;
    v7 = *(a1 + 1);
LABEL_39:
    *a1 = 0;
    *(a1 + 1) = 0;
    v26 = *(a1 + 3);
    if (v26)
    {
      if (v7)
      {
        (*(*v26 + 16))(v26, v9);
        v14 = 0;
        v15 = *a1;
        v7 = *(a1 + 1);
        v9 = *a1;
        goto LABEL_42;
      }

      v15 = 0;
    }

    else
    {
      v15 = 0;
      v7 = 0;
    }

    v9 = 0;
    v14 = 0;
LABEL_42:
    result = v33;
    v6 = v37;
LABEL_8:
    v16 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v7 < v16 - v9 || v7 - (v16 - v9) <= 3)
    {
      v30 = v14;
      v34 = result;
      v38 = v6;
      *a1 = 0;
      *(a1 + 1) = 0;
      v23 = *(a1 + 3);
      if (!v23)
      {
        v7 = 0;
LABEL_31:
        v15 = 0;
        goto LABEL_44;
      }

      if (!v7)
      {
        goto LABEL_31;
      }

      (*(*v23 + 16))(v23, v15);
      v15 = *a1;
      v7 = *(a1 + 1);
LABEL_44:
      *a1 = 0;
      *(a1 + 1) = 0;
      v27 = *(a1 + 3);
      if (v27)
      {
        if (v7)
        {
          (*(*v27 + 16))(v27, v15);
          v18 = 0;
          v15 = *a1;
          v7 = *(a1 + 1);
          v9 = *a1;
          goto LABEL_47;
        }

        v15 = 0;
      }

      else
      {
        v15 = 0;
        v7 = 0;
      }

      v9 = 0;
      v18 = 0;
LABEL_47:
      result = v34;
      v6 = v38;
      v14 = v30;
      goto LABEL_15;
    }

    *(a1 + 2) = v16 + 1;
    if (!v16)
    {
      v30 = v14;
      v34 = result;
      v38 = v6;
      goto LABEL_44;
    }

    v18 = *v16 | 0x100000000;
LABEL_15:
    v19 = ((*(a1 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
    if (v7 < v19 - v9 || v7 - (v19 - v9) <= 3)
    {
      break;
    }

    *(a1 + 2) = v19 + 1;
    if (!v19)
    {
      goto LABEL_36;
    }

    v20 = *v19 | 0x100000000;
    if (!v9)
    {
      goto LABEL_37;
    }

LABEL_19:
    if ((v6 & 1) != 0 && (v14 & 0x100000000) != 0 && (v18 & 0x100000000) != 0 && (v20 & 0x100000000) != 0)
    {
      *a2 = result;
      *(a2 + 8) = v14;
      *(a2 + 12) = v18;
      v21 = 1;
      *(a2 + 16) = v20;
      goto LABEL_24;
    }

    __break(1u);
  }

  v28 = v18;
  v31 = v14;
  v35 = result;
  v39 = v6;
  *a1 = 0;
  *(a1 + 1) = 0;
  v24 = *(a1 + 3);
  if (!v24)
  {
    v7 = 0;
    goto LABEL_34;
  }

  if (v7)
  {
    (*(*v24 + 16))(v24, v15);
    v15 = *a1;
    v7 = *(a1 + 1);
  }

  else
  {
LABEL_34:
    v15 = 0;
  }

  result = v35;
  v6 = v39;
  v18 = v28;
  v14 = v31;
LABEL_36:
  *a1 = 0;
  *(a1 + 1) = 0;
  v25 = *(a1 + 3);
  if (v25)
  {
    if (v7)
    {
      v36 = result;
      v40 = v6;
      v29 = v18;
      v32 = v14;
      (*(*v25 + 16))(v25, v15);
      v18 = v29;
      v14 = v32;
      result = v36;
      v6 = v40;
      v20 = 0;
      v9 = *a1;
      if (*a1)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_37:
  v21 = 0;
  *a2 = 0;
LABEL_24:
  *(a2 + 20) = v21;
  return result;
}

IPC::Decoder *IPC::ArgumentCoder<WebCore::VideoProjectionMetadata,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebCore::VideoProjectionMetadataKind>(a1);
  result = IPC::Decoder::decode<WTF::RefPtr<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>(a1, &v7);
  if (*a1)
  {
    if (v4 & 0x100) != 0 && (v8)
    {
      v6 = v7;
      *a2 = v4;
      *(a2 + 8) = v6;
      *(a2 + 16) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  if (v8)
  {
    result = v7;
    v7 = 0;
    if (result)
    {
      if (*result == 1)
      {
        return WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*result;
      }
    }
  }

  return result;
}

uint64_t IPC::Decoder::decode<WebCore::VideoProjectionMetadataKind>(uint64_t *a1)
{
  result = IPC::ArgumentCoder<WebCore::VideoProjectionMetadataKind,void>::decode<IPC::Decoder>(a1);
  if ((result & 0x100) == 0)
  {
    v3 = *a1;
    v4 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v5 = a1[3];
    if (v5)
    {
      v6 = v4 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (!v6)
    {
      v7 = result;
      (*(*v5 + 16))(v5, v3);
      return v7;
    }
  }

  return result;
}

IPC::Decoder *IPC::Decoder::decode<WTF::RefPtr<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>>@<X0>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  result = IPC::ArgumentCoder<WTF::RefPtr<WTF::JSONImpl::Value,WTF::RawPtrTraits<WTF::JSONImpl::Value>,WTF::DefaultRefDerefTraits<WTF::JSONImpl::Value>>,void>::decode<IPC::Decoder,WTF::JSONImpl::Value>(a1, a2);
  if ((a2[8] & 1) == 0)
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PlatformAudioTrackConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  v4 = *(a2 + 16);

  return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, v4);
}

uint64_t *IPC::ArgumentCoder<WebCore::PlatformVideoTrackConfiguration,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 8));
  IPC::ArgumentCoder<unsigned int,void>::encode<IPC::Encoder>(a1, *(a2 + 12));
  IPC::ArgumentCoder<WebCore::PlatformVideoColorSpace,void>::encode(a1, (a2 + 16));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 32));
  IPC::ArgumentCoder<std::optional<WebCore::SpatialVideoMetadata>,void>::encode<IPC::Encoder,std::optional<WebCore::SpatialVideoMetadata> const&>(a1, a2 + 40);

  return IPC::ArgumentCoder<std::optional<WebCore::VideoProjectionMetadata>,void>::encode<IPC::Encoder,std::optional<WebCore::VideoProjectionMetadata> const&>(a1, a2 + 64);
}

uint64_t IPC::ArgumentCoder<WebCore::ContentRuleListResults::Result,void>::encode(IPC::Encoder *a1, char *a2)
{
  IPC::Encoder::operator<<<BOOL>(a1, a2);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 1);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 2);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 3);
  IPC::Encoder::operator<<<BOOL>(a1, a2 + 4);

  return IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, (a2 + 8));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::ContentRuleListResults,void>::decode@<X0>(WTF::StringImpl *result@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q2>)
{
  v4 = result;
  v6 = *(result + 1);
  v7 = *(result + 2);
  v8 = *result;
  if (v6 <= &v7[-*result])
  {
    *result = 0;
    *(result + 1) = 0;
    v55 = *(result + 3);
    if (v55)
    {
      if (v6)
      {
        (*(*v55 + 16))(v55);
        v6 = v4[1];
      }
    }

    else
    {
      v6 = 0;
    }

LABEL_109:
    *v4 = 0;
    v4[1] = 0;
    v56 = v4[3];
    if (v56)
    {
      if (v6)
      {
        (*(*v56 + 16))(v56);
        v10 = 0;
        v8 = *v4;
        v6 = v4[1];
        goto LABEL_112;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = 0;
    v10 = 0;
    goto LABEL_112;
  }

  v9 = (v7 + 1);
  *(result + 2) = v7 + 1;
  if (!v7)
  {
    goto LABEL_109;
  }

  v10 = *v7;
  if (v10 < 2)
  {
    v11 = 1;
    goto LABEL_5;
  }

LABEL_112:
  *v4 = 0;
  v4[1] = 0;
  v57 = v4[3];
  if (!v57 || !v6)
  {
    v79 = 0;
    v81 = 0;
    v58 = 0;
    v8 = 0;
LABEL_114:
    *v4 = 0;
    v4[1] = 0;
    v59 = v4[3];
    if (v59 && v58)
    {
      (*(*v59 + 16))(v59, v8, v58);
      v14 = 0;
      v8 = *v4;
      v6 = v4[1];
    }

    else
    {
      v6 = 0;
      v8 = 0;
      v14 = 0;
    }

    goto LABEL_117;
  }

  result = (*(*v57 + 16))(v57, v8);
  v11 = 0;
  v8 = *v4;
  v6 = v4[1];
  v9 = v4[2];
LABEL_5:
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v6 <= v9 - v8)
  {
    v79 = v11;
    v81 = v12;
    v58 = 0;
    v69 = v4[3];
    *v4 = 0;
    v4[1] = 0;
    if (v6 && v69)
    {
      (*(*v69 + 16))(v69);
      v8 = *v4;
      v58 = v4[1];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_114;
  }

  v13 = (v9 + 1);
  v4[2] = (v9 + 1);
  if (!v9)
  {
    v79 = v11;
    v81 = v12;
    v58 = v6;
    goto LABEL_114;
  }

  v14 = *v9;
  if (v14 < 2)
  {
    v15 = 1;
    goto LABEL_12;
  }

  v79 = v11;
  v81 = v12;
LABEL_117:
  *v4 = 0;
  v4[1] = 0;
  v60 = v4[3];
  if (!v60 || !v6)
  {
    v77 = 0;
    v78 = 0;
    v61 = 0;
    v8 = 0;
LABEL_119:
    *v4 = 0;
    v4[1] = 0;
    v62 = v4[3];
    if (v62 && v61)
    {
      (*(*v62 + 16))(v62, v8, v61);
      v18 = 0;
      v8 = *v4;
      v6 = v4[1];
    }

    else
    {
      v6 = 0;
      v8 = 0;
      v18 = 0;
    }

    goto LABEL_122;
  }

  result = (*(*v60 + 16))(v60, v8);
  v15 = 0;
  v8 = *v4;
  v6 = v4[1];
  v13 = v4[2];
  v11 = v79;
  v12 = v81;
LABEL_12:
  if (v14)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v6 <= v13 - v8)
  {
    v77 = v15;
    v78 = v16;
    v79 = v11;
    v81 = v12;
    v61 = 0;
    v70 = v4[3];
    *v4 = 0;
    v4[1] = 0;
    if (v6 && v70)
    {
      (*(*v70 + 16))(v70);
      v8 = *v4;
      v61 = v4[1];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_119;
  }

  v17 = (v13 + 1);
  v4[2] = (v13 + 1);
  if (!v13)
  {
    v77 = v15;
    v78 = v16;
    v79 = v11;
    v81 = v12;
    v61 = v6;
    goto LABEL_119;
  }

  v18 = *v13;
  if (v18 < 2)
  {
    v19 = 1;
    goto LABEL_19;
  }

  v77 = v15;
  v78 = v16;
  v79 = v11;
  v81 = v12;
LABEL_122:
  *v4 = 0;
  v4[1] = 0;
  v63 = v4[3];
  if (!v63 || !v6)
  {
    v75 = 0;
    v76 = 0;
    v64 = 0;
    v8 = 0;
LABEL_124:
    *v4 = 0;
    v4[1] = 0;
    v65 = v4[3];
    if (v65 && v64)
    {
      (*(*v65 + 16))(v65, v8, v64);
      v22 = 0;
      v8 = *v4;
      v6 = v4[1];
    }

    else
    {
      v6 = 0;
      v8 = 0;
      v22 = 0;
    }

    goto LABEL_126;
  }

  result = (*(*v63 + 16))(v63, v8);
  v19 = 0;
  v8 = *v4;
  v6 = v4[1];
  v17 = v4[2];
  v11 = v79;
  v12 = v81;
  v15 = v77;
  v16 = v78;
LABEL_19:
  if (v18)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v6 <= v17 - v8)
  {
    v75 = v19;
    v76 = v20;
    v77 = v15;
    v78 = v16;
    v79 = v11;
    v81 = v12;
    v64 = 0;
    v71 = v4[3];
    *v4 = 0;
    v4[1] = 0;
    if (v6 && v71)
    {
      (*(*v71 + 16))(v71);
      v8 = *v4;
      v64 = v4[1];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_124;
  }

  v21 = (v17 + 1);
  v4[2] = (v17 + 1);
  if (!v17)
  {
    v75 = v19;
    v76 = v20;
    v77 = v15;
    v78 = v16;
    v79 = v11;
    v81 = v12;
    v64 = v6;
    goto LABEL_124;
  }

  v22 = *v17;
  if (v22 < 2)
  {
    v23 = 1;
    goto LABEL_26;
  }

  v75 = v19;
  v76 = v20;
  v77 = v15;
  v78 = v16;
  v79 = v11;
  v81 = v12;
LABEL_126:
  *v4 = 0;
  v4[1] = 0;
  v66 = v4[3];
  if (!v66 || !v6)
  {
    v73 = 0;
    v74 = 0;
    v67 = 0;
    v8 = 0;
LABEL_128:
    *v4 = 0;
    v4[1] = 0;
    v68 = v4[3];
    if (v68 && v67)
    {
      (*(*v68 + 16))(v68, v8, v67);
      v25 = 0;
      v8 = *v4;
      v6 = v4[1];
    }

    else
    {
      v6 = 0;
      v8 = 0;
      v25 = 0;
    }

    goto LABEL_130;
  }

  result = (*(*v66 + 16))(v66, v8);
  v23 = 0;
  v8 = *v4;
  v6 = v4[1];
  v21 = v4[2];
  v11 = v79;
  v12 = v81;
  v15 = v77;
  v16 = v78;
  v19 = v75;
  v20 = v76;
LABEL_26:
  if (v22)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  if (v6 <= v21 - v8)
  {
    v73 = v23;
    v74 = v24;
    v75 = v19;
    v76 = v20;
    v77 = v15;
    v78 = v16;
    v79 = v11;
    v81 = v12;
    v67 = 0;
    v72 = v4[3];
    *v4 = 0;
    v4[1] = 0;
    if (v6 && v72)
    {
      (*(*v72 + 16))(v72);
      v8 = *v4;
      v67 = v4[1];
    }

    else
    {
      v8 = 0;
    }

    goto LABEL_128;
  }

  v4[2] = (v21 + 1);
  if (!v21)
  {
    v73 = v23;
    v74 = v24;
    v75 = v19;
    v76 = v20;
    v77 = v15;
    v78 = v16;
    v79 = v11;
    v81 = v12;
    v67 = v6;
    goto LABEL_128;
  }

  v25 = *v21;
  if (v25 < 2)
  {
    v26 = 1;
    goto LABEL_33;
  }

  v73 = v23;
  v74 = v24;
  v75 = v19;
  v76 = v20;
  v77 = v15;
  v78 = v16;
  v79 = v11;
  v81 = v12;
LABEL_130:
  *v4 = 0;
  v4[1] = 0;
  v41 = v4[3];
  if (!v41)
  {
    v6 = 0;
    goto LABEL_67;
  }

  if (!v6)
  {
    goto LABEL_67;
  }

  result = (*(*v41 + 16))(v41, v8);
  v26 = 0;
  v8 = *v4;
  v11 = v79;
  v12 = v81;
  v15 = v77;
  v16 = v78;
  v19 = v75;
  v20 = v76;
  v23 = v73;
  v24 = v74;
LABEL_33:
  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (!v8)
  {
    v6 = v4[1];
    v41 = v4[3];
LABEL_67:
    LOBYTE(v88) = 0;
    v92 = 0;
    *v4 = 0;
    v4[1] = 0;
    if (v41 && v6)
    {
      (*(*v41 + 16))(v41);
    }

    goto LABEL_43;
  }

  if ((v11 & 1) == 0)
  {
    goto LABEL_98;
  }

  LOBYTE(v82) = v12;
  if ((v15 & 1) == 0)
  {
    goto LABEL_98;
  }

  BYTE1(v82) = v16;
  if ((v19 & 1) == 0)
  {
    goto LABEL_98;
  }

  BYTE2(v82) = v20;
  if ((v23 & 1) == 0)
  {
    goto LABEL_98;
  }

  BYTE3(v82) = v24;
  if ((v26 & 1) == 0)
  {
    goto LABEL_98;
  }

  a3.n128_u64[0] = 0;
  BYTE4(v82) = v27;
  v88 = v82;
  v89 = v27;
  v83 = a3;
  v90 = a3;
  v84 = a3;
  v91 = a3;
  v92 = 1;
  WTF::Vector<std::pair<WebCore::ContentExtensions::RedirectAction,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v84, v8);
  WTF::Vector<WebCore::ContentExtensions::ModifyHeadersAction,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v83, v28);
LABEL_43:
  v29 = v4[1];
  v30 = ((v4[2] + 7) & 0xFFFFFFFFFFFFFFF8);
  v31 = *v4;
  v32 = (v30 - *v4);
  v33 = v29 >= v32;
  v34 = v29 - v32;
  if (!v33 || v34 <= 7)
  {
    *v4 = 0;
    v4[1] = 0;
    v53 = v4[3];
    if (v53)
    {
      if (v29)
      {
        (*(*v53 + 16))(v53);
        v29 = v4[1];
      }
    }

    else
    {
      v29 = 0;
    }

LABEL_105:
    *v4 = 0;
    v4[1] = 0;
    v54 = v4[3];
    if (v54 && v29)
    {
      (*(*v54 + 16))(v54);
    }

    v86.n128_u8[0] = 0;
    v87 = 0;
LABEL_63:
    v8 = *v4;
    v40 = v4[1];
    *v4 = 0;
    v4[1] = 0;
    result = v4[3];
    if (result && v40)
    {
      result = (*(*result + 16))(result, v8);
    }

    goto LABEL_89;
  }

  v4[2] = (v30 + 1);
  if (!v30)
  {
    goto LABEL_105;
  }

  v35 = *v30;
  v93 = 0;
  v94 = 0;
  if (v35 >= 0x8000)
  {
    v37 = v87;
    do
    {
      result = IPC::Decoder::decode<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>>(&v82, v4);
      v42 = v84.n128_u8[8];
      if (v84.n128_u8[8])
      {
        if (HIDWORD(v94) == v94)
        {
          result = WTF::Vector<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::String,WebCore::ContentRuleListResults::Result>>(&v93, &v82);
        }

        else
        {
          result = std::pair<WTF::String,WebCore::ContentRuleListResults::Result>::pair[abi:sn200100](v93 + 32 * HIDWORD(v94), &v82);
          ++HIDWORD(v94);
        }
      }

      else
      {
        v37 = 0;
      }

      if (v84.n128_u8[8] == 1)
      {
        WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v83.n128_i64[1], v31);
        result = v82;
        v82 = 0;
        if (result)
        {
          if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            result = WTF::StringImpl::destroy(result, v31);
          }
        }
      }

      if ((v42 & 1) == 0)
      {
LABEL_62:
        v86.n128_u8[0] = 0;
        v87 = v37;
        result = WTF::Vector<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v93, v31);
        if (v37)
        {
          goto LABEL_89;
        }

        goto LABEL_63;
      }

      --v35;
    }

    while (v35);
    v43 = HIDWORD(v94);
    if (v94 <= HIDWORD(v94))
    {
      goto LABEL_88;
    }

    v44 = v93;
    if (HIDWORD(v94))
    {
      v80 = v93;
      if (HIDWORD(v94) >> 27)
      {
        __break(0xC471u);
        return result;
      }

      v45 = WTF::fastMalloc((32 * HIDWORD(v94)));
      v44 = v80;
      LODWORD(v94) = v43;
      v93 = v45;
      if (v45 != v80)
      {
        WTF::VectorMover<false,std::pair<WTF::String,WebCore::ContentRuleListResults::Result>>::move(v80, v80 + 4 * v43, v45);
        v44 = v80;
      }
    }

    if (v44)
    {
      if (v93 == v44)
      {
        v93 = 0;
        LODWORD(v94) = 0;
      }

      WTF::fastFree(v44, v31);
    }
  }

  else if (v35)
  {
    v36 = WTF::fastMalloc((32 * v35));
    LODWORD(v94) = v35;
    v93 = v36;
    v37 = v87;
    do
    {
      IPC::Decoder::decode<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>>(&v82, v4);
      v38 = v84.n128_u8[8];
      if (v84.n128_u8[8])
      {
        if (HIDWORD(v94) == v94)
        {
          WTF::Vector<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::appendSlowCase<(WTF::FailureAction)0,std::pair<WTF::String,WebCore::ContentRuleListResults::Result>>(&v93, &v82);
        }

        else
        {
          std::pair<WTF::String,WebCore::ContentRuleListResults::Result>::pair[abi:sn200100](v93 + 32 * HIDWORD(v94), &v82);
          ++HIDWORD(v94);
        }
      }

      else
      {
        v37 = 0;
      }

      if (v84.n128_u8[8] == 1 && (WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v83.n128_i64[1], v31), v39 = v82, v82 = 0, v39) && atomic_fetch_add_explicit(v39, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v39, v31);
        if ((v38 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      else if ((v38 & 1) == 0)
      {
        goto LABEL_62;
      }

      --v35;
    }

    while (v35);
  }

LABEL_88:
  v86.n128_u64[0] = v93;
  v46 = v94;
  v93 = 0;
  v94 = 0;
  v86.n128_u64[1] = v46;
  v87 = 1;
  result = WTF::Vector<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v93, v31);
LABEL_89:
  if (!*v4)
  {
LABEL_99:
    *a2 = 0;
    *(a2 + 56) = 0;
    goto LABEL_93;
  }

  if ((v92 & 1) == 0 || (LODWORD(v82) = v88, BYTE4(v82) = v89, v47 = v90, a4.n128_u64[0] = 0, v90 = a4, v48 = v91, v91 = a4, (v87 & 1) == 0))
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  a4.n128_u64[0] = 0;
  v49 = v86;
  v86 = a4;
  *a2 = v88;
  *(a2 + 4) = v89;
  v83 = a4;
  *(a2 + 8) = v47;
  v84 = a4;
  *(a2 + 24) = v48;
  v85 = a4;
  *(a2 + 40) = v49;
  *(a2 + 56) = 1;
  WTF::Vector<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v85, v8);
  WTF::Vector<std::pair<WebCore::ContentExtensions::RedirectAction,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v84, v50);
  result = WTF::Vector<WebCore::ContentExtensions::ModifyHeadersAction,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v83, v51);
LABEL_93:
  if (v87 == 1)
  {
    result = WTF::Vector<std::pair<WTF::String,WebCore::ContentRuleListResults::Result>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v86, v8);
  }

  if (v92 == 1)
  {
    WTF::Vector<std::pair<WebCore::ContentExtensions::RedirectAction,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v91, v8);
    return WTF::Vector<WebCore::ContentExtensions::ModifyHeadersAction,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v90, v52);
  }

  return result;
}

void sub_19D756D28(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, WTF::StringImpl *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  if (a30 == 1)
  {
    WTF::Vector<std::pair<WebCore::ContentExtensions::RedirectAction,WTF::URL>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a28, a2);
    WTF::Vector<WebCore::ContentExtensions::ModifyHeadersAction,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a26, v31);
  }

  _Unwind_Resume(exception_object);
}

void *IPC::ArgumentCoder<WebCore::ReportBody,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  if ((*(*a2 + 24))(a2) == 3)
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 0);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 24));
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 48));
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 56));
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 64));
    LOBYTE(v8) = *(a2 + 72);
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
    IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 74));
    IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 80));
    return IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 88));
  }

  else if ((*(*a2 + 24))(a2))
  {
    if ((*(*a2 + 24))(a2) == 1)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 2);
      LOBYTE(v8) = *(a2 + 12);
      IPC::Encoder::operator<<<BOOL>(a1, &v8);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
      return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 56));
    }

    else if ((*(*a2 + 24))(a2) == 5)
    {
      IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 3);
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
      IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 24));
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
      IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 40));
      v5 = *(a2 + 48);
      v8 = v5;
      v9 = BYTE4(v5);
      IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, &v8);
      v6 = *(a2 + 56);
      v8 = v6;
      v9 = BYTE4(v6);
      return IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, &v8);
    }

    else
    {
      result = (*(*a2 + 24))(a2);
      if (result == 7)
      {
        IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 4);
        v7 = WebCore::TestReportBody::message(a2);

        return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, v7);
      }
    }
  }

  else
  {
    IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, 1);
    LOBYTE(v8) = *(a2 + 12);
    IPC::Encoder::operator<<<BOOL>(a1, &v8);
    IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
    return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 56));
  }

  return result;
}

uint64_t mpark::variant<WTF::Ref<WebCore::NativeImage,WTF::RawPtrTraits<WebCore::NativeImage>,WTF::DefaultRefDerefTraits<WebCore::NativeImage>>,WTF::Ref<WebCore::ImageBuffer,WTF::RawPtrTraits<WebCore::ImageBuffer>,WTF::DefaultRefDerefTraits<WebCore::ImageBuffer>>,WTF::ObjectIdentifierGeneric<WebCore::RenderingResourceIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>::~variant(uint64_t a1, void *a2)
{
  if (*(a1 + 8) <= 1u)
  {
    if (*(a1 + 8))
    {
      v6 = *a1;
      *a1 = 0;
      if (v6)
      {
        WTF::ThreadSafeRefCountedAndCanMakeThreadSafeWeakPtr<WebCore::ImageBuffer,(WTF::DestructionThread)0>::deref(v6 + 1, a2);
      }
    }

    else
    {
      v3 = *a1;
      *a1 = 0;
      if (v3)
      {
        do
        {
          v4 = v3[1];
          if ((v4 & 1) == 0)
          {
            WTF::ThreadSafeWeakPtrControlBlock::strongDeref<WebCore::RenderingResource,(WTF::DestructionThread)0>(v3[1], a2);
            goto LABEL_10;
          }

          v5 = v3[1];
          atomic_compare_exchange_strong_explicit(v3 + 1, &v5, (v4 - 2), memory_order_relaxed, memory_order_relaxed);
        }

        while (v5 != v4);
        if (v4 == 3)
        {
          (*(*v3 + 1))(v3);
        }
      }
    }
  }

LABEL_10:
  *(a1 + 8) = -1;
  return a1;
}

uint64_t IPC::ArgumentCoder<WebCore::LinkIcon,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 40));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 48));
  IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, a2 + 56);

  return IPC::VectorArgumentCoder<false,WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::DataListSuggestion,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, a2 + 64);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::LinkIcon,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WTF::URL>(a1, &v37);
  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *a1;
  if (v4 <= &v5[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v10 = *(a1 + 3);
    if (v10)
    {
      if (v4)
      {
        (*(*v10 + 16))(v10);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_10:
    *a1 = 0;
    *(a1 + 1) = 0;
    v11 = *(a1 + 3);
    if (v11)
    {
      if (v4)
      {
        (*(*v11 + 16))(v11);
        v6 = *a1;
        v4 = *(a1 + 1);
        goto LABEL_13;
      }
    }

    else
    {
      v4 = 0;
    }

    v6 = 0;
    goto LABEL_13;
  }

  *(a1 + 2) = v5 + 1;
  if (!v5)
  {
    goto LABEL_10;
  }

  v7 = *v5;
  if (v7 <= 4 && ((1 << v7) & 0x16) != 0)
  {
    v9 = 0;
    goto LABEL_15;
  }

LABEL_13:
  *a1 = 0;
  *(a1 + 1) = 0;
  v12 = *(a1 + 3);
  if (v12 && v4)
  {
    (*(*v12 + 16))(v12, v6);
  }

  LOBYTE(v7) = 0;
  v9 = 1;
LABEL_15:
  IPC::Decoder::decode<WTF::String>(a1, &v35);
  v13 = IPC::Decoder::decode<std::optional<unsigned int>>(a1);
  v15 = v14;
  result = IPC::VectorArgumentCoder<false,std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(a1, &v32);
  if ((v34 & 1) == 0)
  {
    goto LABEL_40;
  }

  while (1)
  {
    if (!*a1)
    {
      *a2 = 0;
      *(a2 + 80) = 0;
      goto LABEL_28;
    }

    if (v40)
    {
      v18 = v37;
      v37 = 0;
      v25 = v18;
      v26 = v38;
      v27 = v39;
      LODWORD(v38) = v38 & 0xFFFFFFFE;
      if (!v9)
      {
        v28 = v7;
        if (v36)
        {
          v19 = v35;
          v35 = 0;
          v29[0] = v19;
          if (v15)
          {
            LODWORD(v29[1]) = v13;
            BYTE4(v29[1]) = BYTE4(v13);
            if (v34)
            {
              break;
            }
          }
        }
      }
    }

    __break(1u);
LABEL_40:
    v17 = *a1;
    v24 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v24)
    {
      result = (*(*result + 16))(result, v17);
    }
  }

  v30 = v32;
  v20 = v33;
  v32 = 0;
  v33 = 0;
  v31 = v20;
  WTF::URL::URL(a2, &v25);
  *(a2 + 40) = v28;
  *(a2 + 48) = *v29;
  v29[0] = 0;
  *(a2 + 64) = v30;
  v21 = v31;
  v30 = 0;
  v31 = 0;
  *(a2 + 72) = v21;
  *(a2 + 80) = 1;
  WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v30, v22);
  v23 = v29[0];
  v29[0] = 0;
  if (v23 && atomic_fetch_add_explicit(v23, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v23, v17);
  }

  result = v25;
  v25 = 0;
  if (result && atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    result = WTF::StringImpl::destroy(result, v17);
  }

LABEL_28:
  if (v34 == 1)
  {
    result = WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v32, v17);
  }

  if (v36 == 1)
  {
    result = v35;
    v35 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v17);
      }
    }
  }

  if (v40 == 1)
  {
    result = v37;
    v37 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v17);
      }
    }
  }

  return result;
}

void sub_19D7574F4(_Unwind_Exception *exception_object, void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, WTF::StringImpl *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, WTF::StringImpl *a23, char a24)
{
  if (a22 == 1)
  {
    WTF::Vector<std::pair<WTF::String,WTF::String>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a20, a2);
  }

  if (a24 == 1)
  {
    v26 = a23;
    a23 = 0;
    if (v26)
    {
      if (atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v26, a2);
      }
    }
  }

  if (*(v24 - 56) == 1)
  {
    v27 = *(v24 - 96);
    *(v24 - 96) = 0;
    if (v27)
    {
      if (atomic_fetch_add_explicit(v27, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v27, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::VideoFrameTimeMetadata,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2);
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2 + 16);
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2 + 32);

  return IPC::ArgumentCoder<std::optional<unsigned int>,void>::encode<IPC::Encoder,std::optional<unsigned int>>(a1, a2 + 48);
}

uint64_t IPC::ArgumentCoder<WebCore::VideoFrameTimeMetadata,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a1, &v19);
  if ((v21 & 1) == 0)
  {
    v6 = *a1;
    v7 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v8 = *(a1 + 3);
    if (v8)
    {
      v9 = v7 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      (*(*v8 + 16))(v8, v6);
    }
  }

  IPC::Decoder::decode<std::optional<WTF::Seconds>>(a1, &v16);
  IPC::Decoder::decode<std::optional<WTF::Seconds>>(a1, &v13);
  result = IPC::Decoder::decode<std::optional<unsigned int>>(a1);
  if (!*a1)
  {
    goto LABEL_15;
  }

  if ((v21 & 1) == 0 || (*&v10 = v19, BYTE8(v10) = v20, (v18 & 1) == 0) || (*&v11 = v16, BYTE8(v11) = v17, (v15 & 1) == 0) || (*&v12 = v13, BYTE8(v12) = v14, (v5 & 1) == 0))
  {
    __break(1u);
LABEL_15:
    *a2 = 0;
    *(a2 + 56) = 0;
    return result;
  }

  *a2 = v10;
  *(a2 + 16) = v11;
  *(a2 + 32) = v12;
  *(a2 + 48) = result;
  *(a2 + 52) = BYTE4(result);
  *(a2 + 56) = 1;
  return result;
}

uint64_t IPC::ArgumentCoder<WebCore::PasteboardItemInfo,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 16);
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 32);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 48));
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2 + 56);
  IPC::ArgumentCoder<std::optional<double>,void>::encode<IPC::Encoder,std::optional<double>>(a1, a2 + 72);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 88));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 89));
  IPC::VectorArgumentCoder<false,WTF::String,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, a2 + 96);
  v4 = *(a2 + 112);

  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, v4);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::PasteboardItemInfo,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v78 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v71);
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v68);
  IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v65);
  IPC::Decoder::decode<WTF::String>(a1, &v63);
  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a1, v56);
  if ((v56[2] & 1) == 0)
  {
    v39 = *a1;
    v40 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v41 = *(a1 + 3);
    if (v41)
    {
      if (v40)
      {
        (*(*v41 + 16))(v41, v39);
      }
    }
  }

  IPC::ArgumentCoder<std::optional<double>,void>::decode<IPC::Decoder>(a1, &v74);
  if ((v76 & 1) == 0)
  {
    v42 = *a1;
    v43 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v44 = *(a1 + 3);
    if (v44)
    {
      if (v43)
      {
        (*(*v44 + 16))(v44, v42);
      }
    }
  }

  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_58;
  }

  if ((v56[2] & 1) == 0 || (v76 & 1) == 0)
  {
    goto LABEL_57;
  }

  v2 = *(v56 + 1);
  v6 = v56[0];
  *(&v77 + 7) = v74;
  HIBYTE(v77) = v75;
  v7 = v5;
  while (1)
  {
    v8 = *(a1 + 1);
    v9 = *(a1 + 2);
    if (v8 <= &v9[-v7])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v47 = *(a1 + 3);
      if (v47)
      {
        if (v8)
        {
          (*(*v47 + 16))(v47);
          v7 = *a1;
          v8 = *(a1 + 1);
          goto LABEL_65;
        }
      }

      else
      {
        v8 = 0;
      }

      v7 = 0;
    }

    else
    {
      v10 = v9 + 1;
      *(a1 + 2) = v9 + 1;
      if (v9)
      {
        v11 = *v9;
        if (v11 < 2)
        {
          v12 = 1;
          goto LABEL_11;
        }

        goto LABEL_68;
      }
    }

LABEL_65:
    *a1 = 0;
    *(a1 + 1) = 0;
    v48 = *(a1 + 3);
    if (!v48)
    {
      v8 = 0;
LABEL_67:
      v7 = 0;
      v11 = 0;
      goto LABEL_68;
    }

    if (!v8)
    {
      goto LABEL_67;
    }

    (*(*v48 + 16))(v48, v7);
    v11 = 0;
    v7 = *a1;
    v8 = *(a1 + 1);
LABEL_68:
    *a1 = 0;
    *(a1 + 1) = 0;
    v49 = *(a1 + 3);
    if (!v49 || !v8)
    {
      v13 = 0;
      v12 = 0;
      v50 = 0;
      v7 = 0;
LABEL_70:
      *a1 = 0;
      *(a1 + 1) = 0;
      v51 = *(a1 + 3);
      if (v51 && v50)
      {
        (*(*v51 + 16))(v51, v7, v50);
        v14 = 0;
        v7 = *a1;
        v8 = *(a1 + 1);
      }

      else
      {
        v8 = 0;
        v7 = 0;
        v14 = 0;
      }

      goto LABEL_72;
    }

    (*(*v49 + 16))(v49, v7);
    v12 = 0;
    v7 = *a1;
    v8 = *(a1 + 1);
    v10 = *(a1 + 2);
LABEL_11:
    if (v11)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    if (v8 <= &v10[-v7])
    {
      v50 = 0;
      v55 = *(a1 + 3);
      *a1 = 0;
      *(a1 + 1) = 0;
      if (v55 && v8)
      {
        (*(*v55 + 16))(v55);
        v7 = *a1;
        v50 = *(a1 + 1);
      }

      else
      {
        v7 = 0;
      }

      goto LABEL_70;
    }

    *(a1 + 2) = v10 + 1;
    if (!v10)
    {
      v50 = v8;
      goto LABEL_70;
    }

    v14 = *v10;
    if (v14 < 2)
    {
      v15 = 1;
      goto LABEL_18;
    }

LABEL_72:
    *a1 = 0;
    *(a1 + 1) = 0;
    v52 = *(a1 + 3);
    if (v52 && v8)
    {
      (*(*v52 + 16))(v52, v7);
    }

    v15 = 0;
LABEL_18:
    v16 = v14 ? v15 : 0;
    result = IPC::Decoder::decode<WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>>(a1, &v74);
    v18 = *(a1 + 1);
    v19 = *(a1 + 2);
    v20 = *a1;
    if (v18 <= &v19[-*a1])
    {
      *a1 = 0;
      *(a1 + 1) = 0;
      v53 = *(a1 + 3);
      if (v53)
      {
        if (v18)
        {
          (*(*v53 + 16))(v53);
          v18 = *(a1 + 1);
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      *(a1 + 2) = v19 + 1;
      if (v19)
      {
        v21 = *v19;
        if (v21 < 3)
        {
          v22 = v21 | 0x100;
          if (!v20)
          {
            goto LABEL_80;
          }

          goto LABEL_25;
        }

        goto LABEL_79;
      }
    }

    *a1 = 0;
    *(a1 + 1) = 0;
    v54 = *(a1 + 3);
    if (v54)
    {
      if (v18)
      {
        (*(*v54 + 16))(v54);
        v20 = *a1;
        v18 = *(a1 + 1);
        goto LABEL_79;
      }
    }

    else
    {
      v18 = 0;
    }

    v20 = 0;
LABEL_79:
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (!result || !v18 || (result = (*(*result + 16))(result, v20), v22 = 0, (v20 = *a1) == 0))
    {
LABEL_80:
      *a2 = 0;
      *(a2 + 120) = 0;
      goto LABEL_38;
    }

LABEL_25:
    if (v73)
    {
      v23 = v71;
      v56[0] = v71;
      v24 = v72;
      v25 = HIDWORD(v72);
      v71 = 0;
      v72 = 0;
      v56[1] = __PAIR64__(v25, v24);
      if (v70)
      {
        v26 = v68;
        v56[2] = v68;
        v27 = v69;
        v28 = HIDWORD(v69);
        v68 = 0;
        v69 = 0;
        *&v57 = __PAIR64__(v28, v27);
        if (v67)
        {
          v29 = v65;
          *(&v57 + 1) = v65;
          v30 = v66;
          LODWORD(v58[0]) = v66;
          v65 = 0;
          v66 = 0;
          if (v64)
          {
            v31 = v63;
            v63 = 0;
            if (v5)
            {
              v59[0] = v6;
              *&v59[1] = v2;
              *&v59[9] = v77;
              if (v12)
              {
                LOBYTE(v60) = v13;
                if (v15)
                {
                  HIBYTE(v60) = v16;
                  if (v76)
                  {
                    v32 = v74;
                    v33 = v75;
                    v74 = 0;
                    v75 = 0;
                    if (v22 > 0xFF)
                    {
                      break;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_57:
    __break(1u);
LABEL_58:
    v45 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v46 = *(a1 + 3);
    if (v46 && v45)
    {
      (*(*v46 + 16))(v46, v5);
      v6 = 0;
      v7 = *a1;
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }
  }

  v57 = 0u;
  *v58 = 0u;
  v62 = v22;
  memset(v56, 0, sizeof(v56));
  *a2 = v23;
  *(a2 + 8) = v24;
  *(a2 + 12) = v25;
  *(a2 + 16) = v26;
  *(a2 + 24) = v27;
  *(a2 + 28) = v28;
  *(a2 + 32) = v29;
  *(a2 + 40) = v30;
  *(a2 + 48) = v31;
  *(a2 + 56) = *v59;
  *(&v34 + 1) = *&v59[24];
  *(a2 + 72) = *&v59[16];
  *(a2 + 88) = v60;
  *&v34 = 0;
  v61 = v34;
  *(a2 + 96) = v32;
  *(a2 + 104) = v33;
  *(a2 + 112) = v22;
  *(a2 + 120) = 1;
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v61, v56);
  v36 = v58[1];
  v58[1] = 0;
  if (v36 && atomic_fetch_add_explicit(v36, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v36, v35);
  }

  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v57 + 8, v35);
  WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v56[2], v37);
  result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v56, v38);
LABEL_38:
  if (v76 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v74, v20);
  }

  if (v64 == 1)
  {
    result = v63;
    v63 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v20);
      }
    }
  }

  if (v67 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v65, v20);
  }

  if (v70 == 1)
  {
    result = WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v68, v20);
  }

  if (v73 == 1)
  {
    return WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v71, v20);
  }

  return result;
}

void sub_19D757EE0(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, WTF::StringImpl *a25, char a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38)
{
  if (a26 == 1 && a25 && atomic_fetch_add_explicit(a25, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a25, a2);
  }

  if (a32 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a28, a2);
  }

  if (a38 == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&a34, a2);
  }

  if (*(v38 - 144) == 1)
  {
    WTF::Vector<WTF::String,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v38 - 160, a2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t IPC::ArgumentCoder<WebCore::MediaControlsContextMenuItem,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v4 = a2 + 32;
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 16));
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 24));

  return IPC::VectorArgumentCoder<false,WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul>::encode<IPC::Encoder,WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc> const&>(a1, v4);
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::MediaControlsContextMenuItem,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 1);
  v5 = ((*(a1 + 2) + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = v5 - *a1;
  v7 = v4 >= v6;
  v8 = v4 - v6;
  if (v7 && v8 > 7)
  {
    *(a1 + 2) = v5 + 1;
    if (v5)
    {
      v10 = *v5;
      v11 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v25 = *(a1 + 3);
    if (v25)
    {
      if (v4)
      {
        (*(*v25 + 16))(v25);
        v4 = *(a1 + 1);
      }
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = 0;
  *(a1 + 1) = 0;
  v26 = *(a1 + 3);
  if (v26 && v4)
  {
    (*(*v26 + 16))(v26);
  }

  v11 = 0;
  v10 = 0;
LABEL_8:
  IPC::Decoder::decode<WTF::String>(a1, &v35);
  IPC::Decoder::decode<WTF::String>(a1, &v33);
  v12 = *(a1 + 1);
  v13 = *(a1 + 2);
  v14 = *a1;
  if (v12 <= &v13[-*a1])
  {
    *a1 = 0;
    *(a1 + 1) = 0;
    v27 = *(a1 + 3);
    if (v27)
    {
      if (v12)
      {
        (*(*v27 + 16))(v27);
        v12 = *(a1 + 1);
      }
    }

    else
    {
      v12 = 0;
    }

LABEL_45:
    *a1 = 0;
    *(a1 + 1) = 0;
    v28 = *(a1 + 3);
    if (v28)
    {
      if (v12)
      {
        (*(*v28 + 16))(v28);
        v15 = 0;
        v14 = *a1;
        v12 = *(a1 + 1);
        goto LABEL_48;
      }
    }

    else
    {
      v12 = 0;
    }

    v14 = 0;
    v15 = 0;
    goto LABEL_48;
  }

  *(a1 + 2) = v13 + 1;
  if (!v13)
  {
    goto LABEL_45;
  }

  v15 = *v13;
  if (v15 < 2)
  {
    v16 = 1;
    goto LABEL_12;
  }

LABEL_48:
  *a1 = 0;
  *(a1 + 1) = 0;
  v29 = *(a1 + 3);
  if (v29 && v12)
  {
    (*(*v29 + 16))(v29, v14);
  }

  v16 = 0;
LABEL_12:
  if (v15)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  result = IPC::VectorArgumentCoder<false,WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul>::decode<IPC::Decoder>(&v31, a1);
  if ((v32 & 1) == 0)
  {
    goto LABEL_35;
  }

  while (*a1)
  {
    if (v11 & 1) != 0 && (v36)
    {
      v21 = v35;
      v35 = 0;
      if (v34)
      {
        v22 = v33;
        v33 = 0;
        if (v16 & 1) != 0 && (v32)
        {
          *&v20 = 0;
          v23 = v31;
          v31 = v20;
          *a2 = v10;
          *(a2 + 8) = v21;
          *(a2 + 16) = v22;
          *(a2 + 24) = v17;
          v30 = v20;
          *(a2 + 32) = v23;
          *(a2 + 48) = 1;
          WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v30, v19);
          result = 0;
          goto LABEL_23;
        }
      }
    }

    __break(1u);
LABEL_35:
    v19 = *a1;
    v24 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result && v24)
    {
      result = (*(*result + 16))(result, v19);
    }
  }

  *a2 = 0;
  *(a2 + 48) = 0;
LABEL_23:
  if (v32 == 1)
  {
    result = WTF::Vector<WebCore::MediaControlsContextMenuItem,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v31, v19);
  }

  if (v34 == 1)
  {
    result = v33;
    v33 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v19);
      }
    }
  }

  if (v36 == 1)
  {
    result = v35;
    v35 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v19);
      }
    }
  }

  return result;
}

void sub_19D7583B4(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, WTF::StringImpl *a19, char a20)
{
  if (a20 == 1 && a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a19, a2);
  }

  if (*(v20 - 56) == 1)
  {
    v22 = *(v20 - 64);
    *(v20 - 64) = 0;
    if (v22)
    {
      if (atomic_fetch_add_explicit(v22, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v22, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void *IPC::ArgumentCoder<WebCore::WorkerOptions,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *a2;
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 1));
  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::WorkerOptions,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(a1);
  v5 = IPC::Decoder::decode<WebCore::StoredCredentialsPolicy>(a1);
  result = IPC::Decoder::decode<WTF::String>(a1, &v9);
  if (*a1)
  {
    if (v4 & 0x100) != 0 && (v5 & 0x100) != 0 && (v10)
    {
      v8 = v9;
      *a2 = v4 | (v5 << 8);
      *(a2 + 8) = v8;
      *(a2 + 16) = 1;
      return result;
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 16) = 0;
  if (v10)
  {
    result = v9;
    v9 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v7);
      }
    }
  }

  return result;
}

void *IPC::ArgumentCoder<WebCore::WorkerInitializationData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerData>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerData> const&>(a1, a2);
  IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::UUID>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::UUID>> const&>(a1, a2 + 80);
  IPC::ArgumentCoder<unsigned short,void>::encode<IPC::Encoder>(a1, *(a2 + 128));

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 136));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::WorkerInitializationData,void>::decode@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<std::optional<WebCore::ServiceWorkerData>>(a1, v11);
  IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::UUID>>>(v23, a1);
  v4 = IPC::Decoder::decode<WTF::OptionSet<WebCore::AdvancedPrivacyProtections>>(a1);
  result = IPC::Decoder::decode<WTF::String>(a1, &v9);
  if (!*a1)
  {
    goto LABEL_21;
  }

  if ((v14 & 1) == 0 || (result = std::__optional_move_base<WebCore::ServiceWorkerData,false>::__optional_move_base[abi:sn200100](v15, v11), (v25 & 1) == 0) || (v18 = v23[0], v19 = v23[1], LOBYTE(v20) = v24, (v4 & 0x10000) == 0) || (v21 = v4, (v10 & 1) == 0))
  {
    __break(1u);
LABEL_21:
    *a2 = 0;
    *(a2 + 144) = 0;
    goto LABEL_10;
  }

  v7 = v9;
  v9 = 0;
  v22 = v7;
  result = std::__optional_move_base<WebCore::ServiceWorkerData,false>::__optional_move_base[abi:sn200100](a2, v15);
  v8 = v19;
  *(a2 + 80) = v18;
  *(a2 + 96) = v8;
  *(a2 + 112) = v20;
  *(a2 + 128) = v21;
  *(a2 + 136) = v22;
  *(a2 + 144) = 1;
  v22 = 0;
  if (v17 == 1)
  {
    result = v16;
    v16 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v6);
      }
    }
  }

LABEL_10:
  if (v10 == 1)
  {
    result = v9;
    v9 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  if (v14 == 1 && v13 == 1)
  {
    result = v12;
    v12 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        return WTF::StringImpl::destroy(result, v6);
      }
    }
  }

  return result;
}

void sub_19D758760(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, uint64_t a11, uint64_t a12, WTF::StringImpl *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, WTF::StringImpl *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, WTF::StringImpl *a41)
{
  if (a41 && atomic_fetch_add_explicit(a41, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a41, a2);
  }

  if (a32 == 1 && a26 && atomic_fetch_add_explicit(a26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a26, a2);
  }

  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, a2);
  }

  if (a21 == 1 && a19 == 1 && a13 && atomic_fetch_add_explicit(a13, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a13, a2);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<std::optional<WebCore::ServiceWorkerData>>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerData>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 72) & 1) == 0)
  {
    v4 = *a1;
    v5 = a1[1];
    *a1 = 0;
    a1[1] = 0;
    v6 = a1[3];
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      (*(*v6 + 16))(v6, v4);
    }
  }
}

void sub_19D7588AC(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 72) == 1 && *(v2 + 64) == 1)
  {
    v4 = *(v2 + 16);
    *(v2 + 16) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void IPC::ArgumentCoder<WebCore::WorkerFetchResult,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::ScriptBuffer,void>::encode(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 8));
  IPC::ArgumentCoder<__SecTrust *,void>::encode(a1, *(a2 + 48));
  IPC::Encoder::operator<<<WebCore::ContentSecurityPolicyResponseHeaders const&>(a1, a2 + 56);
  IPC::ArgumentCoder<WebCore::CrossOriginEmbedderPolicy,void>::encode(a1, a2 + 80);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 104));

  IPC::ArgumentCoder<WebCore::ResourceError,void>::encode(a1, (a2 + 112));
}

void IPC::ArgumentCoder<WebCore::WorkerFetchResult,void>::decode(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WebCore::ScriptBuffer>(a1, &v68);
  IPC::Decoder::decode<WTF::URL>(a1, &v64);
  IPC::Decoder::decode<WebCore::CertificateInfo>(&v62, a1);
  IPC::Decoder::decode<WebCore::ContentSecurityPolicyResponseHeaders>(&v57, a1);
  IPC::Decoder::decode<WebCore::CrossOriginEmbedderPolicy>(&v54, a1);
  IPC::Decoder::decode<WTF::String>(a1, &v52);
  IPC::Decoder::decode<WebCore::ResourceError>(a1, v43);
  if (*a1)
  {
    if (v69)
    {
      v5 = v68;
      v68 = 0;
      v27 = v5;
      if (v67)
      {
        v6 = v64;
        v64 = 0;
        v28 = v6;
        v29 = v65;
        v30 = v66;
        LODWORD(v65) = v65 & 0xFFFFFFFE;
        if (v63)
        {
          v7 = v62;
          v62 = 0;
          *&v31 = v7;
          if (v61)
          {
            *(&v31 + 1) = v57;
            v8 = v58;
            v57 = 0;
            v58 = 0;
            v32 = v8;
            v33 = v59;
            v34 = v60;
            if (v56)
            {
              v35 = v54;
              v9 = v55;
              v55 = 0uLL;
              v36 = v9;
              if (v53)
              {
                v10 = v52;
                v52 = 0;
                v37[0] = v10;
                if (v51)
                {
                  v11 = *v43;
                  v43[0] = 0;
                  v43[1] = 0;
                  *&v37[1] = v11;
                  *&v37[3] = v44;
                  *&v37[5] = v45;
                  LODWORD(v44) = v44 & 0xFFFFFFFE;
                  v38 = v46;
                  v39 = v47;
                  v40 = v48;
                  v12 = v49;
                  v46 = 0;
                  v49 = 0;
                  v41 = v12;
                  v42 = v50;
                  v27 = 0;
                  *a2 = v5;
                  WTF::URL::URL(a2 + 8, &v28);
                  v13 = v31;
                  v31 = 0u;
                  *(a2 + 48) = v13;
                  *&v13 = v32;
                  v32 = 0;
                  *(a2 + 64) = v13;
                  *(a2 + 72) = v33;
                  *(a2 + 76) = v34;
                  *(a2 + 80) = v35;
                  v14 = v36;
                  v36 = 0u;
                  *(a2 + 88) = v14;
                  v15 = *v37;
                  *v37 = 0u;
                  *(a2 + 104) = v15;
                  WTF::URL::URL(a2 + 120, &v37[2]);
                  v16 = v41;
                  *(a2 + 160) = v38;
                  *(a2 + 168) = v39;
                  *(a2 + 172) = v40;
                  v38 = 0;
                  v41 = 0;
                  *(a2 + 176) = v16;
                  *(a2 + 184) = v42;
                  *(a2 + 192) = 1;
                  WebCore::WorkerFetchResult::~WorkerFetchResult(&v27, v17);
                  goto LABEL_10;
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
  }

  *a2 = 0;
  *(a2 + 192) = 0;
LABEL_10:
  if (v51 == 1)
  {
    v23 = v49;
    v49 = 0;
    if (v23)
    {
    }

    v24 = v46;
    v46 = 0;
    if (v24 && atomic_fetch_add_explicit(v24, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v24, v4);
    }

    v25 = v43[1];
    v43[1] = 0;
    if (v25 && atomic_fetch_add_explicit(v25, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v25, v4);
    }

    v26 = v43[0];
    v43[0] = 0;
    if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v26, v4);
    }
  }

  if (v53 == 1)
  {
    v18 = v52;
    v52 = 0;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v4);
      }
    }
  }

  if (v56 == 1)
  {
    v19 = *(&v55 + 1);
    *(&v55 + 1) = 0;
    if (v19 && atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v19, v4);
    }

    v20 = v55;
    *&v55 = 0;
    if (v20 && atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v20, v4);
    }
  }

  if (v61 == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v57, v4);
  }

  if (v63 == 1 && v62)
  {
    CFRelease(v62);
  }

  if (v67 == 1)
  {
    v21 = v64;
    v64 = 0;
    if (v21)
    {
      if (atomic_fetch_add_explicit(v21, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v21, v4);
      }
    }
  }

  if (v69 == 1)
  {
    v22 = v68;
    v68 = 0;
    if (v22)
    {
      if (atomic_fetch_add(v22 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v22 + 2);
        (*(*v22 + 8))(v22);
      }
    }
  }
}

void sub_19D758D80(_Unwind_Exception *a1, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, WTF::StringImpl *a33, WTF::StringImpl *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, WTF::StringImpl *a39, uint64_t a40, void *a41, uint64_t a42, char a43)
{
  v47 = *(v43 + 112);
  *(v43 + 112) = 0;
  if (v47 && atomic_fetch_add_explicit(v47, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v47, a2);
  }

  v48 = *(v43 + 104);
  *(v43 + 104) = 0;
  if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v48, a2);
  }

  v49 = *(v43 + 96);
  *(v43 + 96) = 0;
  if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v49, a2);
  }

  v50 = *(v43 + 88);
  *(v43 + 88) = 0;
  if (v50 && atomic_fetch_add_explicit(v50, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v50, a2);
  }

  WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v43 + 56, a2);
  v52 = *(v43 + 48);
  *(v43 + 48) = 0;
  if (v52)
  {
    CFRelease(v52);
  }

  v53 = *v44;
  *v44 = 0;
  if (v53 && atomic_fetch_add_explicit(v53, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v53, v51);
  }

  v54 = *v43;
  *v43 = 0;
  if (v54 && atomic_fetch_add(v54 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v54 + 2);
    (*(*v54 + 8))(v54);
  }

  WebCore::WorkerFetchResult::~WorkerFetchResult(&a9, v51);
  if (a43 == 1)
  {
    v56 = a41;
    a41 = 0;
    if (v56)
    {
    }

    v57 = a39;
    a39 = 0;
    if (v57 && atomic_fetch_add_explicit(v57, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v57, v55);
    }

    v58 = a34;
    a34 = 0;
    if (v58 && atomic_fetch_add_explicit(v58, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v58, v55);
    }

    v59 = a33;
    a33 = 0;
    if (v59 && atomic_fetch_add_explicit(v59, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v59, v55);
    }
  }

  if (*(v45 - 184) == 1)
  {
    v60 = *(v45 - 192);
    *(v45 - 192) = 0;
    if (v60)
    {
      if (atomic_fetch_add_explicit(v60, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v60, v55);
      }
    }
  }

  if (*(v45 - 152) == 1)
  {
    v61 = *(v45 - 160);
    *(v45 - 160) = 0;
    if (v61 && atomic_fetch_add_explicit(v61, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v61, v55);
    }

    v62 = *(v45 - 168);
    *(v45 - 168) = 0;
    if (v62 && atomic_fetch_add_explicit(v62, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v62, v55);
    }
  }

  if (*(v45 - 120) == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(v45 - 144, v55);
  }

  if (*(v45 - 104) == 1)
  {
    v64 = *(v45 - 112);
    if (v64)
    {
      CFRelease(v64);
    }
  }

  if (*(v45 - 56) == 1)
  {
    v63 = *(v45 - 96);
    *(v45 - 96) = 0;
    if (v63)
    {
      if (atomic_fetch_add_explicit(v63, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v63, v55);
      }
    }
  }

  if (*(v45 - 40) == 1)
  {
    v65 = *(v45 - 48);
    *(v45 - 48) = 0;
    if (v65)
    {
      if (atomic_fetch_add(v65 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v65 + 2);
        (*(*v65 + 8))(v65);
      }
    }
  }

  _Unwind_Resume(a1);
}

void IPC::Decoder::decode<WebCore::ScriptBuffer>(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::ArgumentCoder<WebCore::ScriptBuffer,void>::decode(a1, a2);
  if ((a2[8] & 1) == 0)
  {
    v4 = *a1;
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      (*(*v6 + 16))(v6, v4);
    }
  }
}

void sub_19D7590F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 8) == 1)
  {
    v3 = *v1;
    *v1 = 0;
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v3 + 2);
        (*(*v3 + 8))(v3);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

void *IPC::ArgumentCoder<WebCore::SharedWorkerKey,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::ClientOrigin,void>::encode(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 64));

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 104));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::SharedWorkerKey,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::ClientOrigin>(a1, &v32);
  IPC::Decoder::decode<WTF::URL>(a1, &v18);
  result = IPC::Decoder::decode<WTF::String>(a1, &v16);
  if (!*a1)
  {
    goto LABEL_41;
  }

  if ((v38 & 1) == 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    *a2 = 0;
    *(a2 + 112) = 0;
    goto LABEL_21;
  }

  LOBYTE(v22) = 0;
  v24 = -1;
  v6 = v34;
  if (!v34)
  {
    v7 = v32;
    v32 = 0uLL;
    v22 = v7;
    v23 = v33;
LABEL_5:
    v24 = v34;
    goto LABEL_6;
  }

  if (v34 != 255)
  {
    v22 = v32;
    goto LABEL_5;
  }

LABEL_6:
  LOBYTE(v25) = 0;
  v27 = -1;
  v8 = v37;
  if (v37)
  {
    if (v37 == 255)
    {
      goto LABEL_9;
    }

    v25 = v35;
  }

  else
  {
    v9 = v35;
    v35 = 0uLL;
    v25 = v9;
    v26 = v36;
  }

  v27 = v37;
LABEL_9:
  if ((v21 & 1) == 0)
  {
    goto LABEL_40;
  }

  v10 = v18;
  v18 = 0;
  v28 = v10;
  v29 = v19;
  v30 = v20;
  LODWORD(v19) = v19 & 0xFFFFFFFE;
  if ((v17 & 1) == 0)
  {
    goto LABEL_40;
  }

  v11 = v16;
  v16 = 0;
  v31 = v11;
  *a2 = 0;
  *(a2 + 24) = -1;
  if (!v6)
  {
    v12 = v22;
    v22 = 0uLL;
    *a2 = v12;
    *(a2 + 16) = v23;
LABEL_13:
    *(a2 + 24) = v6;
    goto LABEL_14;
  }

  if (v6 != 255)
  {
    *a2 = v22;
    goto LABEL_13;
  }

LABEL_14:
  *(a2 + 32) = 0;
  *(a2 + 56) = -1;
  if (!v8)
  {
    v13 = v25;
    v25 = 0uLL;
    *(a2 + 32) = v13;
    *(a2 + 48) = v26;
LABEL_16:
    *(a2 + 56) = v8;
    goto LABEL_17;
  }

  if (v8 != 255)
  {
    *(a2 + 32) = v25;
    goto LABEL_16;
  }

LABEL_17:
  WTF::URL::URL(a2 + 64, &v28);
  v15 = v28;
  *(a2 + 104) = v31;
  *(a2 + 112) = 1;
  v31 = 0;
  v28 = 0;
  if (v15 && atomic_fetch_add_explicit(v15, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v15, v14);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v25);
  result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v22);
LABEL_21:
  if (v17 == 1)
  {
    result = v16;
    v16 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v21 == 1)
  {
    result = v18;
    v18 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v38 == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v35);
    return mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v32);
  }

  return result;
}

void sub_19D759458(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, char a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, WTF::StringImpl *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, WTF::StringImpl *a33)
{
  v37 = v34;
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v37);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v33);
  v40 = a33;
  a33 = 0;
  if (v40 && atomic_fetch_add_explicit(v40, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v40, v39);
  }

  v41 = a28;
  a28 = 0;
  if (v41 && atomic_fetch_add_explicit(v41, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v41, v39);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v35 + 32);
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&a18);
  if (a10 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, v42);
  }

  if (a16 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v42);
  }

  if (*(v36 - 48) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v36 - 80);
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v36 - 112);
  }

  _Unwind_Resume(a1);
}

uint64_t IPC::ArgumentCoder<WebCore::ServiceWorkerRegistrationOptions,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2);
  v5 = *(a2 + 8);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  return IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 9));
}

void *IPC::ArgumentCoder<WebCore::ServiceWorkerRegistrationKey,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::ArgumentCoder<mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>> const&>(a1, a2, v5);
  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 32));
}

WTF::StringImpl *IPC::ArgumentCoder<WebCore::ServiceWorkerRegistrationKey,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::SecurityOriginData>(a1, v16);
  result = IPC::Decoder::decode<WTF::URL>(a1, v10);
  if (!*a1)
  {
    goto LABEL_21;
  }

  if ((v17 & 1) == 0 || (v11 & 1) == 0)
  {
    __break(1u);
LABEL_21:
    *a2 = 0;
    *(a2 + 72) = 0;
    goto LABEL_11;
  }

  MEMORY[0x19EB0C8F0](&v12, v16, v10);
  *a2 = 0;
  *(a2 + 24) = -1;
  v6 = v14;
  if (!v14)
  {
    v7 = v12;
    v12 = 0uLL;
    *a2 = v7;
    *(a2 + 16) = v13;
LABEL_6:
    *(a2 + 24) = v6;
    goto LABEL_7;
  }

  if (v14 != 255)
  {
    *a2 = v12;
    goto LABEL_6;
  }

LABEL_7:
  WTF::URL::URL(a2 + 32, &v15);
  *(a2 + 72) = 1;
  v9 = v15;
  v15 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v8);
  }

  result = mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v12);
LABEL_11:
  if (v11 == 1)
  {
    result = v10[0];
    v10[0] = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v17 == 1)
  {
    return mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v16);
  }

  return result;
}

void sub_19D759764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, WTF::StringImpl *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, WTF::StringImpl *a22)
{
  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v22);
  v26 = a22;
  a22 = 0;
  if (v26 && atomic_fetch_add_explicit(v26, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v26, v25);
  }

  mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&a16);
  if (a14 == 1 && a9 && atomic_fetch_add_explicit(a9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a9, v27);
  }

  if (*(v23 - 32) == 1)
  {
    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v23 - 64);
  }

  _Unwind_Resume(a1);
}

void IPC::ArgumentCoder<WebCore::ServiceWorkerRegistrationData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<WebCore::ServiceWorkerRegistrationKey,void>::encode(a1, a2);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 72));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 80));
  IPC::ArgumentCoder<BOOL,void>::encode<IPC::Encoder>(a1, *(a2 + 120));
  IPC::ArgumentCoder<double,void>::encode<IPC::Encoder>(a1, *(a2 + 128));
  IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerData>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerData> const&>(a1, a2 + 136);
  IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerData>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerData> const&>(a1, a2 + 208);

  IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerData>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerData> const&>(a1, a2 + 280);
}

void IPC::ArgumentCoder<WebCore::ServiceWorkerRegistrationData,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = *MEMORY[0x1E69E9840];
  IPC::Decoder::decode<WebCore::ServiceWorkerRegistrationKey>(a1, &v52);
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  IPC::Decoder::decode<WTF::URL>(a1, &v33);
  v7 = IPC::Decoder::decode<WebCore::WritingDirection>(a1);
  v8 = IPC::Decoder::decode<WTF::Seconds>(a1);
  v10 = v9;
  IPC::Decoder::decode<std::optional<WebCore::ServiceWorkerData>>(a1, v29);
  IPC::Decoder::decode<std::optional<WebCore::ServiceWorkerData>>(a1, v25);
  IPC::Decoder::decode<std::optional<WebCore::ServiceWorkerData>>(a1, v21);
  if (!*a1)
  {
    goto LABEL_42;
  }

  if ((v58 & 1) == 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    *a2 = 0;
    a2[352] = 0;
    goto LABEL_14;
  }

  LOBYTE(v37) = 0;
  v39 = -1;
  if (v54)
  {
    if (v54 == 255)
    {
      goto LABEL_6;
    }

    v37 = v52;
  }

  else
  {
    v12 = v52;
    v52 = 0uLL;
    v37 = v12;
    v38 = v53;
  }

  v39 = v54;
LABEL_6:
  v13 = v55;
  v55 = 0;
  v40 = v13;
  v41 = v56;
  v42 = v57;
  LODWORD(v56) = v56 & 0xFFFFFFFE;
  if ((v6 & 1) == 0)
  {
    goto LABEL_41;
  }

  v43 = v4;
  if ((v36 & 1) == 0)
  {
    goto LABEL_41;
  }

  v14 = v33;
  v33 = 0;
  v44 = v14;
  v45 = v34;
  v46 = v35;
  LODWORD(v34) = v34 & 0xFFFFFFFE;
  if ((v7 & 0x100) == 0)
  {
    goto LABEL_41;
  }

  v47 = v7;
  if ((v10 & 1) == 0)
  {
    goto LABEL_41;
  }

  v48 = v8;
  if ((v32 & 1) == 0)
  {
    goto LABEL_41;
  }

  std::__optional_move_base<WebCore::ServiceWorkerData,false>::__optional_move_base[abi:sn200100](&v49, v29);
  if ((v28 & 1) == 0)
  {
    goto LABEL_41;
  }

  std::__optional_move_base<WebCore::ServiceWorkerData,false>::__optional_move_base[abi:sn200100](&v50, v25);
  if ((v24 & 1) == 0)
  {
    goto LABEL_41;
  }

  std::__optional_move_base<WebCore::ServiceWorkerData,false>::__optional_move_base[abi:sn200100](&v51, v21);
  WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(a2, &v37);
  a2[352] = 1;
  WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(&v37, v15);
LABEL_14:
  if (v24 == 1 && v23 == 1)
  {
    v16 = v22;
    v22 = 0;
    if (v16)
    {
      if (atomic_fetch_add_explicit(v16, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v16, v11);
      }
    }
  }

  if (v28 == 1 && v27 == 1)
  {
    v17 = v26;
    v26 = 0;
    if (v17)
    {
      if (atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v17, v11);
      }
    }
  }

  if (v32 == 1 && v31 == 1)
  {
    v18 = v30;
    v30 = 0;
    if (v18)
    {
      if (atomic_fetch_add_explicit(v18, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v18, v11);
      }
    }
  }

  if (v36 == 1)
  {
    v19 = v33;
    v33 = 0;
    if (v19)
    {
      if (atomic_fetch_add_explicit(v19, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v19, v11);
      }
    }
  }

  if (v58 == 1)
  {
    v20 = v55;
    v55 = 0;
    if (v20)
    {
      if (atomic_fetch_add_explicit(v20, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v20, v11);
      }
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(&v52);
  }
}

void sub_19D759B98(_Unwind_Exception *a1, WTF::StringImpl *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, char a19, uint64_t a20, uint64_t a21, WTF::StringImpl *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, int a29, char a30, uint64_t a31, uint64_t a32, WTF::StringImpl *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, int a40, char a41, WTF::StringImpl *a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, int a48, __int16 a49)
{
  WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(&a49, a2);
  if (a19 == 1 && a17 == 1 && a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, v51);
  }

  if (a30 == 1 && a28 == 1 && a22 && atomic_fetch_add_explicit(a22, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a22, v51);
  }

  if (a41 == 1 && a39 == 1 && a33 && atomic_fetch_add_explicit(a33, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a33, v51);
  }

  if (a47 == 1 && a42 && atomic_fetch_add_explicit(a42, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a42, v51);
  }

  if (*(v49 - 88) == 1)
  {
    v52 = *(v49 - 128);
    *(v49 - 128) = 0;
    if (v52)
    {
      if (atomic_fetch_add_explicit(v52, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v52, v51);
      }
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v49 - 160);
  }

  _Unwind_Resume(a1);
}

WTF::StringImpl *IPC::Decoder::decode<WebCore::ServiceWorkerRegistrationKey>@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  result = IPC::ArgumentCoder<WebCore::ServiceWorkerRegistrationKey,void>::decode(a1, a2);
  if ((*(a2 + 72) & 1) == 0)
  {
    v5 = *a1;
    v6 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    result = *(a1 + 3);
    if (result)
    {
      v7 = v6 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      return (*(*result + 16))(result, v5);
    }
  }

  return result;
}

void sub_19D759E10(_Unwind_Exception *exception_object, WTF::StringImpl *a2)
{
  if (*(v2 + 72) == 1)
  {
    v4 = *(v2 + 32);
    *(v2 + 32) = 0;
    if (v4)
    {
      if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v4, a2);
      }
    }

    mpark::detail::move_constructor<mpark::detail::traits<WebCore::SecurityOriginData::Tuple,WebCore::ProcessQualified<WTF::ObjectIdentifierGeneric<WebCore::OpaqueOriginIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>>,(mpark::detail::Trait)1>::~move_constructor(v2);
  }

  _Unwind_Resume(exception_object);
}

unint64_t IPC::ArgumentCoder<WebCore::ServiceWorkerJobDataIdentifier,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::WebPageProxyIdentifierType,WTF::ObjectIdentifierMainThreadAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v6 = v5;
  result = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(a1);
  v9 = *a1;
  if (!*a1)
  {
    goto LABEL_7;
  }

  if ((v6 & 1) == 0 || (v8 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    *a2 = 0;
    goto LABEL_5;
  }

  *a2 = v4;
  *(a2 + 8) = result;
  LOBYTE(v9) = 1;
LABEL_5:
  *(a2 + 16) = v9;
  return result;
}

void *IPC::ArgumentCoder<WebCore::ServiceWorkerImportedScript,void>::encode(IPC::Encoder *a1, uint64_t *a2)
{
  IPC::ArgumentCoder<WebCore::ScriptBuffer,void>::encode(a1, a2);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 1);

  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, a2 + 6);
}

unsigned int *IPC::ArgumentCoder<WebCore::ServiceWorkerImportedScript,void>::decode@<X0>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::Decoder::decode<WebCore::ScriptBuffer>(a1, &v20);
  IPC::Decoder::decode<WTF::URL>(a1, &v16);
  result = IPC::Decoder::decode<WTF::String>(a1, &v14);
  if (!*a1)
  {
    goto LABEL_23;
  }

  if ((v21 & 1) == 0 || (v7 = v20, v20 = 0, (v19 & 1) == 0) || (v8 = v16, v16 = 0, v10 = v8, v6 = v17, v11 = v17, v12 = v18, v17.n128_u32[0] &= ~1u, (v15 & 1) == 0))
  {
    __break(1u);
LABEL_23:
    *a2 = 0;
    *(a2 + 56) = 0;
    goto LABEL_9;
  }

  v13 = v14;
  v14 = 0;
  *a2 = v7;
  v6.n128_f64[0] = WTF::URL::URL(a2 + 8, &v10);
  v9 = v10;
  *(a2 + 48) = v13;
  *(a2 + 56) = 1;
  v13 = 0;
  v10 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v5);
  }

  result = 0;
LABEL_9:
  if (v15 == 1)
  {
    result = v14;
    v14 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v19 == 1)
  {
    result = v16;
    v16 = 0;
    if (result)
    {
      if (atomic_fetch_add_explicit(result, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        result = WTF::StringImpl::destroy(result, v5);
      }
    }
  }

  if (v21 == 1)
  {
    result = v20;
    v20 = 0;
    if (result)
    {
      if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, result + 2);
        return (*(*result + 8))(result, v6);
      }
    }
  }

  return result;
}

void sub_19D75A100(_Unwind_Exception *exception_object, WTF::StringImpl *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned int *a10, WTF::StringImpl *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, WTF::StringImpl *a16, WTF::StringImpl *a17, char a18, WTF::StringImpl *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  v26 = v24;
  v28 = *v26;
  *v26 = 0;
  if (v28 && atomic_fetch_add(v28 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, v28 + 2);
    (*(*v28 + 8))(v28);
  }

  if (a16 && atomic_fetch_add_explicit(a16, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a16, a2);
  }

  if (a11 && atomic_fetch_add_explicit(a11, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a11, a2);
  }

  if (a10 && atomic_fetch_add(a10 + 2, 0xFFFFFFFF) == 1)
  {
    atomic_store(1u, a10 + 2);
    (*(*a10 + 8))(a10);
  }

  if (a18 == 1 && a17 && atomic_fetch_add_explicit(a17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a17, a2);
  }

  if (a24 == 1 && a19 && atomic_fetch_add_explicit(a19, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(a19, a2);
  }

  if (*(v25 - 24) == 1)
  {
    v29 = *(v25 - 32);
    *(v25 - 32) = 0;
    if (v29)
    {
      if (atomic_fetch_add(v29 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v29 + 2);
        (*(*v29 + 8))(v29);
      }
    }
  }

  _Unwind_Resume(exception_object);
}

WTF::MachSendRight *IPC::ArgumentCoder<WebCore::ScriptBuffer,void>::encode(IPC::Encoder *a1, WebCore::ScriptBuffer *this)
{
  WebCore::ScriptBuffer::ipcData(v4, this);
  v6 = v5;
  IPC::Encoder::operator<<<BOOL>(a1, &v6);
  IPC::ArgumentCoder<mpark::variant<WebCore::ShareableResourceHandle,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>,void>::encode<IPC::Encoder,mpark::variant<WebCore::ShareableResourceHandle,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>>(a1, v4, v6);
  return mpark::variant<WebCore::ShareableResourceHandle,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>::~variant(v4);
}

void sub_19D75A308(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  mpark::variant<WebCore::ShareableResourceHandle,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>::~variant(va);
  _Unwind_Resume(a1);
}

WTF::MachSendRight *mpark::variant<WebCore::ShareableResourceHandle,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>::~variant(unsigned int **this)
{
  if (*(this + 24) != 255)
  {
    if (*(this + 24))
    {
      v2 = *this;
      *this = 0;
      if (v2 && atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v2 + 2);
        (*(*v2 + 8))(v2);
      }
    }

    else
    {
      WTF::MachSendRight::~MachSendRight(this);
    }
  }

  *(this + 24) = -1;
  return this;
}

void IPC::ArgumentCoder<WebCore::ScriptBuffer,void>::decode(IPC::Decoder *a1@<X0>, _BYTE *a2@<X8>)
{
  IPC::Decoder::decode<mpark::variant<WebCore::ShareableResourceHandle,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>>(a1, v4);
  if (*a1)
  {
    if ((v5 & 1) == 0)
    {
      __break(1u);
      return;
    }

    WebCore::ScriptBuffer::fromIPCData();
  }

  else
  {
    *a2 = 0;
    a2[8] = 0;
  }

  if (v5 == 1)
  {
    mpark::variant<WebCore::ShareableResourceHandle,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>::~variant(v4);
  }
}

void sub_19D75A424(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, unsigned int *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    mpark::variant<WebCore::ShareableResourceHandle,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>::~variant(&a10);
  }

  _Unwind_Resume(exception_object);
}

void IPC::Decoder::decode<mpark::variant<WebCore::ShareableResourceHandle,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>>(IPC::Decoder *a1@<X0>, uint64_t a2@<X8>)
{
  IPC::ArgumentCoder<mpark::variant<WebCore::ShareableResourceHandle,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>,void>::decode<IPC::Decoder>(a1, a2);
  if ((*(a2 + 32) & 1) == 0)
  {
    v4 = *a1;
    v5 = *(a1 + 1);
    *a1 = 0;
    *(a1 + 1) = 0;
    v6 = *(a1 + 3);
    if (v6)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      (*(*v6 + 16))(v6, v4);
    }
  }
}

void sub_19D75A4B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    mpark::variant<WebCore::ShareableResourceHandle,WTF::RefPtr<WebCore::FragmentedSharedBuffer,WTF::RawPtrTraits<WebCore::FragmentedSharedBuffer>,WTF::DefaultRefDerefTraits<WebCore::FragmentedSharedBuffer>>>::~variant(v1);
  }

  _Unwind_Resume(exception_object);
}

void *IPC::ArgumentCoder<WebCore::ServiceWorkerContextData,void>::encode(IPC::Encoder *a1, uint64_t a2)
{
  IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerJobDataIdentifier>,void>::encode<IPC::Encoder,std::optional<WebCore::ServiceWorkerJobDataIdentifier> const&>(a1, a2);
  IPC::ArgumentCoder<WebCore::ServiceWorkerRegistrationData,void>::encode(a1, a2 + 24);
  IPC::ArgumentCoder<unsigned long long,void>::encode<IPC::Encoder>(a1, *(a2 + 376));
  IPC::ArgumentCoder<WebCore::ScriptBuffer,void>::encode(a1, (a2 + 384));
  IPC::ArgumentCoder<__SecTrust *,void>::encode(a1, *(a2 + 392));
  IPC::Encoder::operator<<<WebCore::ContentSecurityPolicyResponseHeaders const&>(a1, a2 + 400);
  IPC::ArgumentCoder<WebCore::CrossOriginEmbedderPolicy,void>::encode(a1, a2 + 424);
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 448));
  IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 456));
  v5 = *(a2 + 496);
  IPC::Encoder::operator<<<BOOL>(a1, &v5);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 497));
  IPC::ArgumentCoder<std::optional<WebCore::TextDirection>,void>::encode<IPC::Encoder,std::optional<WebCore::TextDirection> const&>(a1, (a2 + 498));
  IPC::ArgumentCoder<WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>,void>::encode<IPC::Encoder,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc> const&>(a1, a2 + 504);
  IPC::ArgumentCoder<std::optional<WebCore::ProcessQualified<WTF::UUID>>,void>::encode<IPC::Encoder,std::optional<WebCore::ProcessQualified<WTF::UUID>> const&>(a1, a2 + 528);
  IPC::Encoder::operator<<<BOOL>(a1, (a2 + 576));
  return IPC::ArgumentCoder<WTF::String,void>::encode<IPC::Encoder>(a1, (a2 + 584));
}

void IPC::ArgumentCoder<WebCore::ServiceWorkerContextData,void>::decode(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1;
  v213 = *MEMORY[0x1E69E9840];
  IPC::ArgumentCoder<std::optional<WebCore::ServiceWorkerJobDataIdentifier>,void>::decode<IPC::Decoder>(a1, &v167);
  if ((v169 & 1) == 0)
  {
    v115 = *v3;
    v116 = *(v3 + 1);
    *v3 = 0;
    *(v3 + 1) = 0;
    v117 = *(v3 + 3);
    if (v117 && v116 != 0)
    {
      (*(*v117 + 16))(v117, v115);
    }
  }

  IPC::Decoder::decode<WebCore::ServiceWorkerRegistrationData>(v3, v207);
  v5 = IPC::Decoder::decode<WTF::ObjectIdentifierGeneric<WebKit::RemoteVideoFrameIdentifierType,WTF::ObjectIdentifierThreadSafeAccessTraits<unsigned long long>,unsigned long long>>(v3);
  v7 = v6;
  IPC::Decoder::decode<WebCore::ScriptBuffer>(v3, &v165);
  IPC::Decoder::decode<WebCore::CertificateInfo>(&cf, v3);
  IPC::Decoder::decode<WebCore::ContentSecurityPolicyResponseHeaders>(&v158, v3);
  IPC::Decoder::decode<WebCore::CrossOriginEmbedderPolicy>(&v155, v3);
  IPC::Decoder::decode<WTF::String>(v3, &v153);
  IPC::Decoder::decode<WTF::URL>(v3, &v149);
  v138 = IPC::Decoder::decode<WebKit::ColorControlSupportsAlpha>(v3);
  v8 = *(v3 + 1);
  v9 = *(v3 + 2);
  v10 = *v3;
  v142 = v3;
  v139 = v5;
  if (v8 <= &v9[-*v3])
  {
    *v3 = 0;
    *(v3 + 1) = 0;
    v123 = *(v3 + 3);
    if (v123)
    {
      if (v8)
      {
        (*(*v123 + 16))(v123);
        v8 = *(v3 + 1);
      }
    }

    else
    {
      v8 = 0;
    }

LABEL_233:
    *v3 = 0;
    *(v3 + 1) = 0;
    v124 = *(v3 + 3);
    if (v124)
    {
      if (v8)
      {
        (*(*v124 + 16))(v124);
        v12 = 0;
        v10 = *v3;
        v8 = *(v3 + 1);
        goto LABEL_236;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
    v12 = 0;
    goto LABEL_236;
  }

  v11 = v9 + 1;
  *(v3 + 2) = v9 + 1;
  if (!v9)
  {
    goto LABEL_233;
  }

  v12 = *v9;
  if (v12 < 2)
  {
    v13 = 1;
    goto LABEL_6;
  }

LABEL_236:
  *v3 = 0;
  *(v3 + 1) = 0;
  v125 = *(v3 + 3);
  if (v125)
  {
    if (v8)
    {
      (*(*v125 + 16))(v125, v10);
      v10 = *v3;
      v8 = *(v3 + 1);
      goto LABEL_239;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = 0;
LABEL_239:
  v13 = 0;
  v11 = *(v3 + 2);
LABEL_6:
  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v136 = v14;
  if (v8 <= v11 - v10)
  {
    *v3 = 0;
    *(v3 + 1) = 0;
    v126 = *(v3 + 3);
    if (v126)
    {
      if (v8)
      {
        (*(*v126 + 16))(v126);
        v10 = *v3;
        v8 = *(v3 + 1);
        goto LABEL_243;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
LABEL_243:
    *v3 = 0;
    *(v3 + 1) = 0;
    v127 = *(v3 + 3);
    if (v127)
    {
      if (v8)
      {
        (*(*v127 + 16))(v127, v10);
        v10 = *v3;
        v8 = *(v3 + 1);
        goto LABEL_246;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = 0;
LABEL_246:
    *v3 = 0;
    *(v3 + 1) = 0;
    v128 = *(v3 + 3);
    if (v128 && v8)
    {
      (*(*v128 + 16))(v128, v10);
      v17 = 0;
      v134 = 0;
    }

    else
    {
      v17 = 0;
      v134 = 0;
    }

    goto LABEL_248;
  }

  *(v3 + 2) = v11 + 1;
  if (!v11)
  {
    goto LABEL_243;
  }

  v15 = *v11;
  if (v15 >= 2)
  {
    goto LABEL_246;
  }

  if (!v15)
  {
    v134 = 0;
    v135 = 0;
    v18 = 0x10000;
    goto LABEL_16;
  }

  v16 = IPC::Decoder::decode<WebCore::LockBackForwardList>(v3);
  v134 = (v16 & ((v16 << 7) >> 15));
  v17 = 256;
  if ((v16 & 0x100) != 0)
  {
    v135 = 256;
    v18 = (v16 & 0x100) << 8;
LABEL_16:
    v133 = v18;
    goto LABEL_17;
  }

LABEL_248:
  v135 = v17;
  v129 = *v3;
  v130 = *(v3 + 1);
  *v3 = 0;
  *(v3 + 1) = 0;
  v131 = *(v3 + 3);
  if (v131)
  {
    if (!v130)
    {
      v133 = 0;
      goto LABEL_17;
    }

    (*(*v131 + 16))(v131, v129);
  }

  v133 = 0;
LABEL_17:
  v19 = *(v3 + 1);
  v20 = ((*(v3 + 2) + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v21 = v20 - *v3;
  v22 = v19 >= v21;
  v23 = v19 - v21;
  v132 = a2;
  v140 = v7;
  v137 = v13;
  if (!v22 || v23 <= 3)
  {
    *v3 = 0;
    *(v3 + 1) = 0;
    v121 = *(v3 + 3);
    if (v121)
    {
      if (v19)
      {
        (*(*v121 + 16))(v121);
        v19 = *(v3 + 1);
      }
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_228;
  }

  *(v3 + 2) = v20 + 1;
  if (!v20)
  {
LABEL_228:
    *v3 = 0;
    *(v3 + 1) = 0;
    v122 = *(v3 + 3);
    if (v122 && v19)
    {
      (*(*v122 + 16))(v122);
    }

    goto LABEL_154;
  }

  v141 = 1;
  v143 = *v20;
  if (*v20)
  {
    v24 = 0;
    v146 = 0;
    v148 = 0;
    v25 = 0;
    v2 = 0;
    v26 = 0;
    while (1)
    {
      IPC::Decoder::decode<WTF::URL>(v3, &v170);
      if ((v173 & 1) == 0)
      {
        goto LABEL_152;
      }

      v27 = IPC::ArgumentCoder<WebCore::ServiceWorkerImportedScript,void>::decode(v3, v209);
      if ((v212 & 1) == 0)
      {
        v28 = *v3;
        v90 = *(v3 + 1);
        *v3 = 0;
        *(v3 + 1) = 0;
        v91 = *(v3 + 3);
        if (!v91)
        {
          goto LABEL_140;
        }

        if (!v90)
        {
LABEL_139:
          v3 = v142;
LABEL_140:
          if (v212 != 1)
          {
            goto LABEL_149;
          }

          v92 = v211;
          v211 = 0;
          if (v92 && atomic_fetch_add_explicit(v92, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v92, v28);
          }

          v93 = *(&v209[0] + 1);
          *(&v209[0] + 1) = 0;
          if (v93 && atomic_fetch_add_explicit(v93, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v93, v28);
          }

          v27 = *&v209[0];
          *&v209[0] = 0;
          if (!v27)
          {
            goto LABEL_149;
          }

          v30 = v27 + 8;
          add = atomic_fetch_add((v27 + 8), 0xFFFFFFFF);
          if (add != 1)
          {
            goto LABEL_149;
          }

          goto LABEL_212;
        }

        v27 = (*(*v91 + 16))(v91, v28);
        v3 = v142;
        if ((v212 & 1) == 0)
        {
          goto LABEL_140;
        }
      }

      v30 = v173;
      if ((v173 & 1) == 0)
      {
        goto LABEL_211;
      }

      if (v170 == -1)
      {
        goto LABEL_140;
      }

      v27 = WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(&v170);
      if (v27)
      {
        goto LABEL_140;
      }

      v30 = v173;
      if ((v173 & 1) == 0)
      {
        goto LABEL_211;
      }

      v30 = v212;
      if ((v212 & 1) == 0)
      {
        goto LABEL_211;
      }

      v174 = v209;
      if (10 * v24 >= 9 * v2 || v2 <= 2 * v24 && (v146 & 1) != 0)
      {
        v31 = 2 * v2;
        if (v2)
        {
          v32 = v31;
        }

        else
        {
          v32 = 8;
        }

        Table = WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::allocateTable(v32);
        v35 = Table;
        v144 = v25;
        v145 = v24;
        v36 = (~(Table << 32) + Table) ^ ((~(Table << 32) + Table) >> 22);
        v37 = 9 * ((v36 + ~(v36 << 13)) ^ ((v36 + ~(v36 << 13)) >> 8));
        v38 = (v37 ^ (v37 >> 15)) + ~((v37 ^ (v37 >> 15)) << 27);
        v148 = (v38 >> 31) ^ v38;
        if (v2)
        {
          v39 = 0;
          v40 = v2;
          v41 = v31 - 1;
          v147 = v2;
          do
          {
            v42 = v26;
            v43 = v26 + 96 * v39;
            if ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v43) & 1) == 0)
            {
              v44 = *(*v43 + 16);
              if (v44 < 0x100)
              {
                v45 = WTF::StringImpl::hashSlowCase(*v43);
              }

              else
              {
                v45 = v44 >> 8;
              }

              v46 = (v45 ^ v148) & v41;
              v47 = (v35 + 96 * v46);
              if ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v47) & 1) == 0)
              {
                v52 = 0;
                do
                {
                  v53 = *(*v47 + 4);
                  if (v53 < 0x100)
                  {
                    v54 = WTF::StringImpl::hashSlowCase(*v47);
                  }

                  else
                  {
                    v54 = v53 >> 8;
                  }

                  v55 = (v46 + v32 - ((v54 ^ v148) & v41)) & v41;
                  if (v52 > v55)
                  {
                    std::swap[abi:sn200100]<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>(v43, v47);
                    v52 = v55;
                  }

                  v46 = (v46 + 1) & v41;
                  v47 = (v35 + 96 * v46);
                  ++v52;
                }

                while (!WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v47));
              }

              WTF::GenericHashTraits<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>::assignToEmpty<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>(v47, v43);
              v40 = v147;
            }

            v48 = *(v43 + 88);
            *(v43 + 88) = 0;
            if (v48 && atomic_fetch_add_explicit(v48, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v48, v34);
            }

            v49 = *(v43 + 48);
            *(v43 + 48) = 0;
            if (v49 && atomic_fetch_add_explicit(v49, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v49, v34);
            }

            v50 = *(v43 + 40);
            *(v43 + 40) = 0;
            if (v50 && atomic_fetch_add(v50 + 2, 0xFFFFFFFF) == 1)
            {
              atomic_store(1u, v50 + 2);
              (*(*v50 + 8))(v50);
            }

            v51 = *v43;
            *v43 = 0;
            v26 = v42;
            if (v51 && atomic_fetch_add_explicit(v51, 0xFFFFFFFE, memory_order_relaxed) == 2)
            {
              WTF::StringImpl::destroy(v51, v34);
            }

            ++v39;
          }

          while (v39 != v40);
        }

        else if (!v26)
        {
          v146 = 0;
          v2 = 8;
          v26 = Table;
          goto LABEL_68;
        }

        WTF::fastFree(v26, v34);
        v24 = v145;
        v25 = v144;
        v146 = 0;
        v2 = v32;
        v26 = v35;
      }

LABEL_68:
      v56 = *(v170 + 4);
      if (v56 < 0x100)
      {
        v57 = WTF::StringImpl::hashSlowCase(v170);
      }

      else
      {
        v57 = v56 >> 8;
      }

      v58 = v2 - 1;
      v59 = (v57 ^ v148) & (v2 - 1);
      v60 = v26 + 96 * v59;
      if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v60))
      {
        goto LABEL_116;
      }

      v62 = 0;
      do
      {
        v63 = *(*v60 + 16);
        if (v63 < 0x100)
        {
          v64 = WTF::StringImpl::hashSlowCase(*v60);
        }

        else
        {
          v64 = v63 >> 8;
        }

        v65 = (v59 + v2 - ((v64 ^ v148) & v58)) & v58;
        if (v62 > v65)
        {
          v66 = v146;
          if (v62 > 0x7F)
          {
            v66 = 1;
          }

          v146 = v66;
          WTF::URL::URL(&v175, v60);
          v68 = (v60 + 40);
          v67 = *(v60 + 40);
          *(v60 + 40) = 0;
          v178 = v67;
          v70.n128_f64[0] = WTF::URL::URL(&v179, (v60 + 48));
          v71 = *(v60 + 88);
          *(v60 + 88) = 0;
          v180 = v71;
          v72 = *(v60 + 88);
          *(v60 + 88) = 0;
          if (v72 && atomic_fetch_add_explicit(v72, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v72, v69);
          }

          v73 = *(v60 + 48);
          *(v60 + 48) = 0;
          if (v73 && atomic_fetch_add_explicit(v73, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v73, v69);
          }

          v74 = *v68;
          *v68 = 0;
          if (v74 && atomic_fetch_add(v74 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v74 + 2);
            (*(*v74 + 8))(v74, v70);
          }

          v75 = *v60;
          *v60 = 0;
          if (v75 && atomic_fetch_add_explicit(v75, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v75, v69);
          }

          WTF::URL::URL(v60);
          *(v60 + 88) = 0;
          *(v60 + 56) = 0u;
          *(v60 + 72) = 0u;
          *v68 = 0u;
          WTF::URL::URL((v60 + 48));
          *(v60 + 88) = 0;
          WTF::HashMapTranslator<WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::URL>>::translate<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>,WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>>> WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::URL,WebCore::ServiceWorkerImportedScript>(WTF::URL &&,WebCore::ServiceWorkerImportedScript &&)::{lambda(void)#1}>(v60, &v170, &v174);
          while (1)
          {
            v59 = (v59 + 1) & v58;
            v76 = (v26 + 96 * v59);
            if (WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v76))
            {
              break;
            }

            v77 = *(*v76 + 4);
            if (v77 < 0x100)
            {
              v78 = WTF::StringImpl::hashSlowCase(*v76);
            }

            else
            {
              v78 = v77 >> 8;
            }

            ++v65;
            v79 = (v59 + v2 - ((v78 ^ v148) & v58)) & v58;
            if (v65 > v79)
            {
              std::swap[abi:sn200100]<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>(&v175, v26 + 96 * v59);
              v65 = v79;
            }
          }

          WTF::GenericHashTraits<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>::assignToEmpty<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>(v26 + 96 * v59, &v175);
          v81 = v180;
          v180 = 0;
          if (v81 && atomic_fetch_add_explicit(v81, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v81, v80);
          }

          v82 = v179;
          v179 = 0;
          if (v82 && atomic_fetch_add_explicit(v82, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v82, v80);
          }

          v83 = v178;
          v178 = 0;
          if (v83 && atomic_fetch_add(v83 + 2, 0xFFFFFFFF) == 1)
          {
            atomic_store(1u, v83 + 2);
            (*(*v83 + 8))(v83);
          }

          v84 = v175;
          *&v175 = 0;
          if (v84 && atomic_fetch_add_explicit(v84, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v84, v80);
          }

          goto LABEL_117;
        }

        if (v64 == v57 && (WTF::equal(*v60, v170, v61) & 1) != 0)
        {
          goto LABEL_139;
        }

        v59 = (v59 + 1) & v58;
        v60 = v26 + 96 * v59;
        ++v62;
      }

      while ((WTF::HashTraitsEmptyValueChecker<WTF::HashTraits<WTF::URL>,false>::isEmptyValue<WTF::URL>(v60) & 1) == 0);
      v85 = v146;
      if (v62 > 0x7F)
      {
        v85 = 1;
      }

      v146 = v85;
LABEL_116:
      WTF::HashMapTranslator<WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::DefaultHash<WTF::URL>>::translate<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::HashTableAddResult<WTF::HashTableIterator<WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>,WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>>> WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::inlineAdd<WTF::URL,WebCore::ServiceWorkerImportedScript>(WTF::URL &&,WebCore::ServiceWorkerImportedScript &&)::{lambda(void)#1}>(v60, &v170, &v174);
LABEL_117:
      v3 = v142;
      if (v212 == 1)
      {
        v86 = v211;
        v211 = 0;
        if (v86 && atomic_fetch_add_explicit(v86, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v86, v80);
        }

        v87 = *(&v209[0] + 1);
        *(&v209[0] + 1) = 0;
        if (v87 && atomic_fetch_add_explicit(v87, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v87, v80);
        }

        v88 = *&v209[0];
        *&v209[0] = 0;
        if (v88 && atomic_fetch_add(v88 + 2, 0xFFFFFFFF) == 1)
        {
          atomic_store(1u, v88 + 2);
          (*(*v88 + 8))(v88);
        }
      }

      if (v173 == 1)
      {
        v89 = v170;
        v170 = 0;
        if (v89)
        {
          if (atomic_fetch_add_explicit(v89, 0xFFFFFFFE, memory_order_relaxed) == 2)
          {
            WTF::StringImpl::destroy(v89, v80);
          }
        }
      }

      ++v24;
      if (++v25 == v143)
      {
        v141 = 1;
        goto LABEL_157;
      }
    }
  }

  v26 = 0;
  v2 = 0;
  v143 = 0;
  v148 = 0;
  LOBYTE(v146) = 0;
LABEL_157:
  while (1)
  {
    IPC::Decoder::decode<std::optional<WebCore::ProcessQualified<WTF::UUID>>>(v209, v3);
    v27 = IPC::ArgumentCoder<WebCore::NavigationPreloadState,void>::decode(v3, &v170);
    v99 = v172;
    if (v172)
    {
      break;
    }

    v98 = *v3;
    v119 = *(v3 + 1);
    *v3 = 0;
    *(v3 + 1) = 0;
    v120 = *(v3 + 3);
    if (!v120 || !v119 || (v27 = (*(*v120 + 16))(v120, v98), !*v3))
    {
      *v132 = 0;
      v132[592] = 0;
      goto LABEL_178;
    }

LABEL_159:
    v30 = v169;
    if (v169)
    {
      v175 = v167;
      v176 = v168;
      v30 = v208;
      if (v208)
      {
        v27 = WebCore::ServiceWorkerRegistrationData::ServiceWorkerRegistrationData(&v177, v207);
        v30 = v140;
        if (v140)
        {
          v181 = v139;
          v30 = v166;
          if (v166)
          {
            v100 = v165;
            v165 = 0;
            v182 = v100;
            v30 = v164;
            if (v164)
            {
              v101 = cf;
              cf = 0;
              v183 = v101;
              v30 = v162;
              if (v162)
              {
                v184 = v158;
                v102 = v159;
                v158 = 0;
                v159 = 0;
                v185 = v102;
                v186 = v160;
                v187 = v161;
                v30 = v157;
                if (v157)
                {
                  v188 = v155;
                  v103 = *v156;
                  v156[0] = 0;
                  v156[1] = 0;
                  v189 = v103;
                  v30 = v154;
                  if (v154)
                  {
                    v104 = v153;
                    v153 = 0;
                    v190 = v104;
                    v30 = v152;
                    if (v152)
                    {
                      v105 = v149;
                      v149 = 0;
                      v191 = v105;
                      v192 = v150;
                      v193 = v151;
                      LODWORD(v150) = v150 & 0xFFFFFFFE;
                      v30 = v138;
                      if ((v138 & 0x100) != 0)
                      {
                        v194 = v138;
                        v30 = v137;
                        if (v137)
                        {
                          v30 = v134 | v135;
                          v195 = v136;
                          add = (v30 | v133) >> 16;
                          if (add)
                          {
                            v196 = v134 | v135;
                            v30 = v141;
                            if (v141)
                            {
                              v197 = v26;
                              v198 = v2;
                              v199 = v143;
                              v200 = v148;
                              v201 = v146;
                              v30 = v211;
                              if (v211)
                              {
                                v202 = v209[0];
                                v203 = v209[1];
                                v30 = v210;
                                v204 = v210;
                                if (v99)
                                {
                                  v205 = v170;
                                  v106 = v171;
                                  v171 = 0;
                                  v206 = v106;
                                  *(WebCore::ServiceWorkerContextData::ServiceWorkerContextData(v132, &v175) + 592) = 1;
                                  WebCore::ServiceWorkerContextData::~ServiceWorkerContextData(&v175, v107);
                                  v26 = 0;
                                  v2 = 0;
                                  goto LABEL_175;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_211:
    __break(1u);
LABEL_212:
    atomic_store(add, v30);
    (*(*v27 + 8))(v27);
LABEL_149:
    if (v173 == 1)
    {
      v94 = v170;
      v170 = 0;
      if (v94)
      {
        if (atomic_fetch_add_explicit(v94, 0xFFFFFFFE, memory_order_relaxed) == 2)
        {
          WTF::StringImpl::destroy(v94, v28);
          if (!v26)
          {
            goto LABEL_154;
          }

LABEL_153:
          WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v26, v2);
          goto LABEL_154;
        }
      }
    }

LABEL_152:
    if (v26)
    {
      goto LABEL_153;
    }

LABEL_154:
    v95 = *v3;
    v96 = *(v3 + 1);
    *v3 = 0;
    *(v3 + 1) = 0;
    v97 = *(v3 + 3);
    if (v97 && v96)
    {
      (*(*v97 + 16))(v97, v95);
    }

    v141 = 0;
    v26 = 0;
  }

  if (*v3)
  {
    goto LABEL_159;
  }

  *v132 = 0;
  v132[592] = 0;
LABEL_175:
  v108 = v171;
  if (v171 && atomic_fetch_add_explicit(v171, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v108, v98);
  }

LABEL_178:
  v109 = v141;
  if (!v26)
  {
    v109 = 0;
  }

  if (v109 == 1)
  {
    WTF::RobinHoodHashTable<WTF::URL,WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>,WTF::KeyValuePairKeyExtractor<WTF::KeyValuePair<WTF::URL,WebCore::ServiceWorkerImportedScript>>,WTF::DefaultHash<WTF::URL>,WTF::HashMap<WTF::URL,WebCore::ServiceWorkerImportedScript,WTF::DefaultHash<WTF::URL>,WTF::HashTraits<WTF::URL>,WTF::HashTraits<WebCore::ServiceWorkerImportedScript>,WTF::MemoryCompactRobinHoodHashTableTraits,(WTF::ShouldValidateKey)1,WTF::FastMalloc>::KeyValuePairTraits,WTF::HashTraits<WTF::URL>,WTF::MemoryCompactRobinHoodHashTableSizePolicy,WTF::FastMalloc>::deallocateTable(v26, v2);
  }

  if (v152 == 1)
  {
    v110 = v149;
    v149 = 0;
    if (v110)
    {
      if (atomic_fetch_add_explicit(v110, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v110, v98);
      }
    }
  }

  if (v154 == 1)
  {
    v111 = v153;
    v153 = 0;
    if (v111)
    {
      if (atomic_fetch_add_explicit(v111, 0xFFFFFFFE, memory_order_relaxed) == 2)
      {
        WTF::StringImpl::destroy(v111, v98);
      }
    }
  }

  if (v157 == 1)
  {
    v112 = v156[1];
    v156[1] = 0;
    if (v112 && atomic_fetch_add_explicit(v112, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v112, v98);
    }

    v113 = v156[0];
    v156[0] = 0;
    if (v113 && atomic_fetch_add_explicit(v113, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v113, v98);
    }
  }

  if (v162 == 1)
  {
    WTF::Vector<std::pair<WTF::String,WebCore::ContentSecurityPolicyHeaderType>,0ul,WTF::CrashOnOverflow,16ul,WTF::FastMalloc>::~Vector(&v158, v98);
  }

  if (v164 == 1 && cf)
  {
    CFRelease(cf);
  }

  if (v166 == 1)
  {
    v114 = v165;
    v165 = 0;
    if (v114)
    {
      if (atomic_fetch_add(v114 + 2, 0xFFFFFFFF) == 1)
      {
        atomic_store(1u, v114 + 2);
        (*(*v114 + 8))(v114);
      }
    }
  }

  if (v208 == 1)
  {
    WebCore::ServiceWorkerRegistrationData::~ServiceWorkerRegistrationData(v207, v98);
  }
}