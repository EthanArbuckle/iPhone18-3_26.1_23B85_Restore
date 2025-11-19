void sub_2393DF69C(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 664);
  v3 = sub_23948B4CC();
  if (os_signpost_enabled(v3))
  {
    v12 = 136315394;
    v13 = "CASESession";
    v14 = 2080;
    v15 = "Clear";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v12, 0x16u);
  }

  if (*v2)
  {
    atomic_store(0, (*v2 + 32));
    v4 = *(a1 + 672);
    *v2 = 0;
    v2[1] = 0;
    if (v4)
    {
      sub_238EF79DC(v4);
    }
  }

  v5 = v2[2];
  if (v5)
  {
    atomic_store(0, (v5 + 32));
    v6 = *(a1 + 688);
    v2[2] = 0;
    v2[3] = 0;
    if (v6)
    {
      sub_238EF79DC(v6);
    }
  }

  sub_2393F7EF4((a1 + 192));
  sub_2393F01F8(a1 + 32);
  *(a1 + 696) = 0;
  sub_2393F9144(a1 + 520, 16);
  v7 = *(a1 + 552);
  if (v7)
  {
    sub_2394AAB8C(v7, a1 + 16);
    sub_2394AB01C(*(a1 + 552), *(a1 + 392));
    *(a1 + 392) = 0;
  }

  *(a1 + 552) = 0;
  *(a1 + 560) = 0;
  *(a1 + 568) = 0u;
  v8 = *(a1 + 184);
  if (v8)
  {
    *(v8 + 56) = 0;
    v9 = *(a1 + 184);
    if (v9)
    {
      sub_2393E9744(v9);
      *(a1 + 184) = 0;
    }
  }

  v10 = sub_23948B4CC();
  if (os_signpost_enabled(v10))
  {
    v12 = 136315394;
    v13 = "CASESession";
    v14 = 2080;
    v15 = "Clear";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2393DF88C(uint64_t a1)
{
  *a1 = &unk_284BB8A80;
  sub_2393F01F8(a1);
  if (*(a1 + 72) == 1)
  {
    sub_2393E960C((*(a1 + 80) + 28));
  }

  sub_239495784(a1 + 16);
  return a1;
}

void sub_2393DF90C(void *a1)
{
  sub_2393DF5B4(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2393DF944(uint64_t a1)
{
  sub_2393DF5B4((a1 - 8));

  JUMPOUT(0x23EE77B60);
}

void sub_2393DF980(uint64_t a1)
{
  sub_2393DF5B4((a1 - 16));

  JUMPOUT(0x23EE77B60);
}

void sub_2393DF9BC(uint64_t a1)
{
  sub_2393DF5B4((a1 - 32));

  JUMPOUT(0x23EE77B60);
}

void sub_2393DF9F8(uint64_t a1)
{
  sub_2393F0264(a1 + 32);

  sub_2393DF69C(a1);
}

void sub_2393DFA34(uint64_t a1)
{
  v1 = a1 - 32;
  sub_2393F0264(a1);

  sub_2393DF69C(v1);
}

void sub_2393DFA6C(uint64_t a1, int a2)
{
  if (*(a1 + 560) == a2 && sub_2393F01B4(a1 + 32))
  {

    sub_2393DFAD4(a1, 116);
  }
}

void sub_2393DFAD4(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = 1;
  *&v8[4] = "core_dev_case_session";
  *&v8[12] = a2;
  v8[16] = 3;
  sub_23948BD20(&v7);
  v3 = sub_23948B4CC();
  v4 = os_signpost_enabled(v3);
  if (v4)
  {
    v7 = 136315394;
    *v8 = "CASESession";
    *&v8[8] = 2080;
    *&v8[10] = "AbortPendingEstablish";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v7, 0x16u);
  }

  sub_2393E13E4(v4, *(a1 + 696));
  sub_2393DF69C(a1);
  sub_2393EFDEC(a1 + 32);
  v5 = sub_23948B4CC();
  if (os_signpost_enabled(v5))
  {
    v7 = 136315394;
    *v8 = "CASESession";
    *&v8[8] = 2080;
    *&v8[10] = "AbortPendingEstablish";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

unint64_t sub_2393DFC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v10 = sub_23948B4CC();
  if (os_signpost_enabled(v10))
  {
    v16 = 136315394;
    v17 = "CASESession";
    v18 = 2080;
    v19 = "Init";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v16, 0x16u);
  }

  if (a4)
  {
    if (*(a1 + 480))
    {
      if (*(a2 + 40))
      {
        sub_2393DF69C(a1);
        v11 = sub_2393F7F38((a1 + 192));
        if (v11 || (*(a1 + 120) = a4, *(a1 + 544) = a2, v11 = sub_2393EF4FC((a1 + 32), a2, a5), v11))
        {
          v12 = v11 & 0xFFFFFFFF00000000;
        }

        else
        {
          sub_23949ED54(a1 + 440);
          v12 = 0;
          LODWORD(v11) = 0;
          *(a1 + 464) |= 1u;
          *(a1 + 466) |= 1u;
          *(a1 + 472) = a3;
        }

        goto LABEL_13;
      }

      v12 = 0x1B200000000;
    }

    else
    {
      v12 = 0x1B100000000;
    }
  }

  else
  {
    v12 = 0x1B000000000;
  }

  LODWORD(v11) = 47;
LABEL_13:
  v13 = sub_23948B4CC();
  if (os_signpost_enabled(v13))
  {
    v16 = 136315394;
    v17 = "CASESession";
    v18 = 2080;
    v19 = "Init";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v16, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11 | v12;
}

unint64_t sub_2393DFE78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, _BYTE *a8)
{
  v39 = *MEMORY[0x277D85DE8];
  v16 = sub_23948B4CC();
  if (os_signpost_enabled(v16))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "PrepareForSessionEstablishment";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (a3)
  {
    v17 = sub_2393DFC68(a1, a2, a5, a6, a7);
    v18 = v17;
    if (v17)
    {
      v19 = HIDWORD(v17);
    }

    else
    {
      v20 = sub_2394AAB28(a3, a1 + 16);
      v18 = v20;
      v19 = HIDWORD(v20);
      if (v20)
      {
        sub_2393DF69C(a1);
      }

      else
      {
        *(a1 + 552) = a3;
        *(a1 + 40) = 1;
        *(a1 + 536) = a4;
        *buf = sub_239476060();
        *&buf[8] = v21;
        if (*a8 == 1)
        {
          v22 = sub_238DD173C(a8);
        }

        else
        {
          v22 = buf;
        }

        v23 = *(v22 + 2);
        v24 = *v22;
        *(a1 + 128) = 1;
        *(a1 + 132) = v24;
        *(a1 + 140) = v23;
        v25 = sub_2393D9044(0xBu);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          if (*(a1 + 72) == 1)
          {
            *&buf[8] = *sub_238DE36B8((a1 + 72));
            (*(**&buf[8] + 24))(*&buf[8]);
            v26 = 1;
          }

          else
          {
            v26 = 0;
          }

          buf[0] = v26;
          v27 = sub_238DE36B8(buf);
          v28 = sub_239495304(*v27);
          *v36 = 134217984;
          v37 = v28;
          _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_INFO, "Allocated SecureSession (%p) - waiting for Sigma1 msg", v36, 0xCu);
          if (buf[0] == 1)
          {
            (*(**&buf[8] + 32))(*&buf[8]);
          }
        }

        if (sub_2393D5398(3u))
        {
          v30 = *(a1 + 72);
          v29 = (a1 + 72);
          if (v30 == 1)
          {
            *&buf[8] = *sub_238DE36B8(v29);
            (*(**&buf[8] + 24))(*&buf[8]);
            v31 = 1;
          }

          else
          {
            v31 = 0;
          }

          buf[0] = v31;
          v32 = sub_238DE36B8(buf);
          sub_239495304(*v32);
          sub_2393D5320(0xBu, 3);
          if (buf[0] == 1)
          {
            (*(**&buf[8] + 32))(*&buf[8]);
          }
        }

        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 47;
    LODWORD(v19) = 463;
  }

  v33 = sub_23948B4CC();
  if (os_signpost_enabled(v33))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "PrepareForSessionEstablishment";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v33, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v18 | (v19 << 32);
}

unint64_t sub_2393E024C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, _BYTE *a10)
{
  v13 = a5;
  v58 = *MEMORY[0x277D85DE8];
  v48[0] = a4;
  v48[1] = a5;
  v17 = sub_23948B4CC();
  v18 = &off_23958D000;
  if (os_signpost_enabled(v17))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "EstablishSession";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v17, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (!a6)
  {
    *buf = 2;
    *&buf[8] = "core_dev_case_session";
    v26 = 47;
    *&buf[16] = 47;
    buf[20] = 3;
    sub_23948BD20(buf);
    v27 = 0x1EF00000000;
    goto LABEL_18;
  }

  if (!a3)
  {
    *buf = 2;
    *&buf[8] = "core_dev_case_session";
    v26 = 47;
    *&buf[16] = 47;
    buf[20] = 3;
    sub_23948BD20(buf);
    v27 = 0x1F000000000;
    goto LABEL_18;
  }

  if (!v13)
  {
    *buf = 2;
    *&buf[8] = "core_dev_case_session";
    v26 = 47;
    *&buf[16] = 47;
    buf[20] = 3;
    sub_23948BD20(buf);
    v27 = 0x1F500000000;
    goto LABEL_18;
  }

  v19 = sub_2394A7FC0(a3, v13);
  if (!v19)
  {
    *buf = 2;
    *&buf[8] = "core_dev_case_session";
    v26 = 47;
    *&buf[16] = 47;
    buf[20] = 3;
    sub_23948BD20(buf);
    v27 = 0x1F700000000;
    goto LABEL_18;
  }

  v20 = v19;
  v21 = sub_2393DFC68(a1, a2, a8, a9, v48);
  *(a1 + 40) = 0;
  sub_2393E0838(a1 + 104, a6);
  v22 = sub_2393E088C((a1 + 104));
  sub_238EA6DC0(*v22, v49);
  v23 = sub_2394953AC(*v49);
  *buf = *(v23 + 64);
  v24 = *(v23 + 84);
  *&buf[16] = *(v23 + 80);
  *&buf[20] = v24;
  v25 = *(v23 + 88);
  v57 = v25;
  (*(**v49 + 32))(*v49);
  if (v21)
  {
    *v49 = 2;
    v50 = "core_dev_case_session";
    v51 = v21;
    LOBYTE(v52) = 3;
    sub_23948BD20(v49);
  }

  else
  {
    v28 = sub_2394AAB28(a3, a1 + 16);
    v21 = v28;
    if (!v28)
    {
      *v49 = 0;
      v50 = "core_dev_case_session";
      LOBYTE(v52) = 0;
      sub_23948BD20(v49);
      v32 = sub_238DE36B8((a1 + 72));
      v33 = sub_239495304(*v32);
      v34 = *&buf[16];
      *(v33 + 96) = *buf;
      *(v33 + 112) = v34;
      *(v33 + 116) = v24;
      *(v33 + 120) = v25;
      *(a1 + 552) = a3;
      *(a1 + 560) = *(v20 + 137);
      *(a1 + 536) = a7;
      *v49 = sub_239476060();
      LOWORD(v50) = v35;
      v18 = &off_23958D000;
      if (*a10 == 1)
      {
        v36 = sub_238DD173C(a10);
      }

      else
      {
        v36 = v49;
      }

      v37 = *(v36 + 2);
      v38 = *v36;
      *(a1 + 128) = 1;
      *(a1 + 132) = v38;
      *(a1 + 140) = v37;
      v39 = sub_2393E088C((a1 + 104));
      sub_239470428(*v39, 2000);
      v40 = v48[0];
      *(a1 + 568) = v48[0];
      v41 = *v20;
      *(a1 + 576) = *v20;
      v42 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = *(a1 + 560);
        *v49 = 67110144;
        *&v49[4] = v43;
        LOWORD(v50) = 1024;
        *(&v50 + 2) = HIDWORD(v41);
        HIWORD(v50) = 1024;
        v51 = v41;
        v52 = 1024;
        v53 = HIDWORD(v40);
        v54 = 1024;
        v55 = v40;
        _os_log_impl(&dword_238DAE000, v42, OS_LOG_TYPE_DEFAULT, "Initiating session on local FabricIndex %u from 0x%08X%08X -> 0x%08X%08X", v49, 0x20u);
      }

      if (sub_2393D5398(2u))
      {
        v47 = HIDWORD(*(a1 + 568));
        v46 = HIDWORD(*(a1 + 576));
        v45 = *(a1 + 560);
        sub_2393D5320(0xBu, 2);
      }

      if (buf[16] == 3)
      {
        v44 = sub_23949A174(a2, buf);
      }

      else
      {
        *v49 = 0;
        v50 = "core_dev_case_session_sigma1";
        LOBYTE(v52) = 0;
        sub_23948BD20(v49);
        v44 = sub_2393E08AC(a1);
      }

      v21 = v44;
      if (!v44)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    *v49 = 2;
    v50 = "core_dev_case_session";
    v51 = v28;
    LOBYTE(v52) = 3;
    sub_23948BD20(v49);
  }

  v18 = &off_23958D000;
  if (v21)
  {
LABEL_16:
    *v49 = 1;
    v50 = "core_dev_case_session_sigma1";
    v51 = v21;
    LOBYTE(v52) = 3;
    sub_23948BD20(v49);
    *v49 = 1;
    v50 = "core_dev_case_session";
    v51 = v21;
    LOBYTE(v52) = 3;
    sub_23948BD20(v49);
    sub_2393DF69C(a1);
  }

LABEL_17:
  v27 = v21 & 0xFFFFFFFF00000000;
  v26 = v21;
LABEL_18:
  v29 = sub_23948B4CC();
  if (os_signpost_enabled(v29))
  {
    *buf = *(v18 + 285);
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "EstablishSession";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v29, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v27 | v26;
}

uint64_t sub_2393E0838(uint64_t a1, uint64_t a2)
{
  if (*a1 == 1)
  {
    sub_2393E960C((*(a1 + 8) + 28));
  }

  *a1 = 1;
  *(a1 + 8) = a2;
  sub_2393E9648((a2 + 28));
  return a1 + 8;
}

_BYTE *sub_2393E088C(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    sub_239531094();
  }

  return a1 + 8;
}

unint64_t sub_2393E08AC(uint64_t a1)
{
  v44 = *MEMORY[0x277D85DE8];
  v2 = sub_23948B4CC();
  if (os_signpost_enabled(v2))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "SendSigma1";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  memset(v43, 0, sizeof(v43));
  *buf = 0;
  *&buf[8] = 0;
  v37 = 0uLL;
  v38 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v3 = sub_2394A7FC0(*(a1 + 552), *(a1 + 560));
  if (!v3)
  {
    v7 = 0x2DA00000000;
LABEL_14:
    LODWORD(v6) = 3;
    goto LABEL_15;
  }

  v4 = v3;
  sub_2393E1D10(a1 + 32, v27);
  if (v27[0] != 1)
  {
    v7 = 0x2DD00000000;
    goto LABEL_14;
  }

  sub_2393E1D10(a1 + 32, v27);
  *&buf[16] = *sub_238E0A934(v27);
  v5 = sub_2394AAF6C(*(a1 + 552));
  *(a1 + 392) = v5;
  if (!v5)
  {
    v7 = 0x2E200000000;
    LODWORD(v6) = 11;
    goto LABEL_15;
  }

  v6 = (*(*v5 + 48))(v5, 0);
  if (v6)
  {
    goto LABEL_11;
  }

  *&v41 = (*(**(a1 + 392) + 40))(*(a1 + 392));
  v6 = sub_2393F888C((a1 + 628), 0x20uLL);
  if (v6)
  {
    goto LABEL_11;
  }

  *buf = a1 + 628;
  *&buf[8] = 32;
  v6 = sub_2393E15D4(a1);
  if (v6)
  {
    goto LABEL_11;
  }

  v22 = *(v4 + 8);
  *v27 = &unk_284BB9138;
  v6 = sub_2394A8620(*(a1 + 552), *(a1 + 560), v27);
  if (v6)
  {
    goto LABEL_11;
  }

  *&v26 = v43;
  *(&v26 + 1) = 32;
  *&v25 = a1 + 520;
  *(&v25 + 1) = 16;
  v24[0] = &v28;
  v24[1] = 65;
  v6 = sub_2393DDF84(&v25, buf, v24, v22, *(a1 + 568), &v26);
  if (v6)
  {
    goto LABEL_11;
  }

  sub_238DB6950(&v25, v26, *(&v26 + 1));
  v37 = v25;
  if (*(a1 + 128) != 1)
  {
    v7 = 0x2FC00000000;
    goto LABEL_14;
  }

  *(&v41 + 1) = sub_2393E1D9C((a1 + 128));
  v11 = *(a1 + 536);
  if (v11)
  {
    v12 = *(v4 + 137);
    *v27 = *(a1 + 568);
    LOBYTE(v28) = v12;
    if (!(*(*v11 + 16))(v11, v27, a1 + 596, a1 + 400, a1 + 584))
    {
      *&v39 = a1 + 596;
      *(&v39 + 1) = 16;
      *v27 = &v42;
      v28 = 16;
      *&v26 = "Sigma1_ResumeNCASE_SigmaS1Sigma2_ResumeNCASE_SigmaS2Sigma2NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE";
      *(&v26 + 1) = 13;
      *&v25 = "NCASE_SigmaS1Sigma2_ResumeNCASE_SigmaS2Sigma2NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE";
      *(&v25 + 1) = 13;
      v6 = sub_2393E1DBC(a1, buf, &v39, &v26, &v25, v27);
      if (v6)
      {
LABEL_11:
        v7 = v6 & 0xFFFFFFFF00000000;
        goto LABEL_15;
      }

      sub_238DB6950(&v26, *v27, v28);
      v40 = v26;
      v38 = 1;
    }
  }

  *&v26 = 0;
  v6 = sub_2393E1F04(&v26, buf);
  if (v6 || (sub_238DB6950(v27, *(v26 + 8), *(v26 + 24)), v6 = sub_2393F7FF0((a1 + 192)), v6) || (v13 = *sub_2393E088C((a1 + 104)), *v27 = 1, v6 = sub_239470478(v13, 0, 48, &v26, v27), v6))
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (v38 == 1)
    {
      *(a1 + 696) = 4;
      *v27 = 2;
      v28 = "core_dev_case_session_sigma1_resume";
      LOBYTE(v30) = 0;
      sub_23948BD20(v27);
    }

    else
    {
      *(a1 + 696) = 1;
    }

    v14 = sub_2393E1D9C((a1 + 128));
    v23 = *v14;
    v21 = *(v14 + 1);
    v15 = *(v14 + 4);
    v16 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = (*(*a1 + 48))(a1) >> 32;
      v18 = (*(*a1 + 48))(a1);
      (*(*a1 + 48))(a1);
      *v27 = 67110400;
      *&v27[4] = v17;
      LOWORD(v28) = 1024;
      *(&v28 + 2) = v18;
      HIWORD(v28) = 1024;
      v29 = v19;
      v30 = 1024;
      v31 = v23;
      v32 = 1024;
      v33 = v21;
      v34 = 1024;
      v35 = v15;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_DEFAULT, "Sent Sigma1 msg to <%08X%08X, %d> [II:%ums AI:%ums AT:%ums]", v27, 0x26u);
    }

    if (sub_2393D5398(2u))
    {
      v20 = (*(*a1 + 48))(a1) >> 32;
      (*(*a1 + 48))(a1);
      (*(*a1 + 48))(a1);
      sub_2393D5320(0xBu, 2);
    }

    (*(**(a1 + 120) + 16))(*(a1 + 120));
    v7 = 0;
    LODWORD(v6) = 0;
  }

  if (v26)
  {
    sub_2393D96C8(v26);
  }

LABEL_15:
  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "SendSigma1";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 | v7;
}

void sub_2393E0F90(_BYTE *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    *v18 = "CASESession";
    *&v18[8] = 2080;
    v19 = "OnResponseTimeout";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (a2)
  {
    if (a1[104] == 1 && *sub_2393E088C(a1 + 104) == a2)
    {
      v7 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = (*(*a1 + 48))(a1) >> 32;
        v9 = (*(*a1 + 48))(a1);
        (*(*a1 + 48))(a1);
        v10 = a1[696];
        *buf = 67109888;
        *v18 = v8;
        *&v18[4] = 1024;
        *&v18[6] = v9;
        LOWORD(v19) = 1024;
        *(&v19 + 2) = v11;
        HIWORD(v19) = 1024;
        v20 = v10;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "CASESession timed out while waiting for a response from peer <%08X%08X, %d>. Current state was %u", buf, 0x1Au);
      }

      if (sub_2393D5398(1u))
      {
        v12 = (*(*a1 + 48))(a1) >> 32;
        (*(*a1 + 48))(a1);
        (*(*a1 + 48))(a1);
        v16 = a1[696];
        sub_2393D5320(0xBu, 1);
      }

      v13 = sub_23948B4CC();
      if (os_signpost_enabled(v13))
      {
        ++dword_27DF77748;
        *buf = 67109120;
        *v18 = dword_27DF77748;
        _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CASETimeout", "%u", buf, 8u);
      }

      sub_2393EFD90((a1 + 32));
      sub_2393DFAD4(a1, 50);
    }

    else
    {
      v5 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "CASESession::OnResponseTimeout exchange doesn't match", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
LABEL_13:
        sub_2393D5320(0xBu, 1);
      }
    }
  }

  else
  {
    v6 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "CASESession::OnResponseTimeout was called by null exchange", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      goto LABEL_13;
    }
  }

  v14 = sub_23948B4CC();
  if (os_signpost_enabled(v14))
  {
    *buf = 136315394;
    *v18 = "CASESession";
    *&v18[8] = 2080;
    v19 = "OnResponseTimeout";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v14, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2393E13E4(uint64_t a1, unsigned int a2)
{
  if (a2 > 9)
  {
    return 0;
  }

  else
  {
    return byte_2395C2557[a2];
  }
}

unint64_t sub_2393E1404(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 696);
  if (v4 == 7)
  {
    v17[0] = v18;
    *&v17[1] = xmmword_2395C2210;
    sub_2393D5CDC(v17, (a1 + 628), 0x20uLL);
    sub_2393D5CDC(v17, (a1 + 596), 0x10uLL);
    if (v17[1] < v17[2])
    {
      v5 = 0x26D00000000;
      goto LABEL_7;
    }

    v12 = *(*(a1 + 544) + 40);
    sub_238DB6950(v17, a1 + 400, *(a1 + 432));
    v15 = v18;
    v16 = 48;
    v8 = *(a1 + 40);
    v9 = a2;
    v10 = v12;
    v11 = 1;
  }

  else
  {
    if (v4 != 6)
    {
      v5 = 0x27600000000;
      v6 = 3;
      goto LABEL_14;
    }

    v17[0] = v18;
    *&v17[1] = xmmword_2395C2210;
    sub_2393D5CDC(v17, (a1 + 520), 0x10uLL);
    sub_2393D5CDC(v17, (a1 + 488), 0x20uLL);
    if (v17[1] < v17[2])
    {
      v5 = 0x25C00000000;
LABEL_7:
      v6 = 25;
      goto LABEL_14;
    }

    v7 = *(*(a1 + 544) + 40);
    sub_238DB6950(v17, a1 + 400, *(a1 + 432));
    v15 = v18;
    v16 = 48;
    v8 = *(a1 + 40);
    v9 = a2;
    v10 = v7;
    v11 = 0;
  }

  v5 = sub_23949148C(v9, v10, v17, &v15, v11, v8);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
  return v5 & 0xFFFFFFFF00000000 | v6;
}

unint64_t sub_2393E15D4(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = 0x10000;
  v2 = (*(**(a1 + 480) + 192))(*(a1 + 480), *(a1 + 560), v11);
  v3 = v2;
  if (v2)
  {
    v4 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = sub_2393C9138();
      *buf = 136315138;
      v14 = v5;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Failed to obtain IPK for initiating: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0xBu, 1);
    }

    v6 = v2 & 0xFFFFFFFF00000000;
  }

  else if (HIBYTE(v12) - 4 > 0xFFFFFFFC)
  {
    v3 = 0;
    v6 = 0;
    if (HIBYTE(v12) <= 1u)
    {
      v8 = 0;
    }

    else
    {
      v8 = HIBYTE(v12) - 2;
    }

    *(a1 + 520) = *&v11[3 * v8 + 1];
  }

  else
  {
    v7 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Found invalid IPK keyset for initiator.", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0xBu, 1);
    }

    v6 = 0x28800000000;
    v3 = 172;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 | v3;
}

void sub_2393E17CC(uint64_t a1, _WORD **a2, int a3)
{
  v28 = *MEMORY[0x277D85DE8];
  if (*a2 != *(a1 + 184))
  {
    goto LABEL_41;
  }

  sub_2393E97D4((*a2 + 4), __str, 0x4CuLL);
  v6 = sub_2393D9044(0xBu);
  v7 = v6;
  if (a3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = __str;
      *&buf[12] = 2080;
      *&buf[14] = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Connection establishment failed with peer at %s: %s", buf, 0x16u);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    *&buf[4] = __str;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "TCP Connection established with %s before session establishment", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0xBu, 3);
  }

  v8 = sub_2393E088C((a1 + 104));
  sub_238EA6DC0(*v8, buf);
  v9 = sub_2394953AC(*buf);
  v10 = *(v9 + 32);
  if (v10 != *a2)
  {
    if (*a2)
    {
      v11 = sub_2393E967C(*a2);
      v10 = *(v9 + 32);
      if (!v10)
      {
LABEL_15:
        *(v9 + 32) = v11;
        goto LABEL_16;
      }
    }

    else
    {
      v11 = 0;
      if (!v10)
      {
        goto LABEL_15;
      }
    }

    sub_2393E9744(v10);
    goto LABEL_15;
  }

LABEL_16:
  (*(**buf + 32))(*buf);
  if (*(a1 + 72) == 1)
  {
    *&buf[8] = *sub_238DE36B8((a1 + 72));
    (*(**&buf[8] + 24))(*&buf[8]);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  buf[0] = v12;
  v13 = sub_238DE36B8(buf);
  v14 = sub_239495304(*v13);
  v15 = *(v14 + 32);
  if (v15 != *a2)
  {
    if (*a2)
    {
      v16 = sub_2393E967C(*a2);
      v15 = *(v14 + 32);
      if (!v15)
      {
LABEL_23:
        *(v14 + 32) = v16;
        goto LABEL_24;
      }
    }

    else
    {
      v16 = 0;
      if (!v15)
      {
        goto LABEL_23;
      }
    }

    sub_2393E9744(v15);
    goto LABEL_23;
  }

LABEL_24:
  if (buf[0] == 1)
  {
    (*(**&buf[8] + 32))(*&buf[8]);
  }

  if (sub_2393E08AC(a1))
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v17 = sub_2393C9138();
      *buf = 136315394;
      *&buf[4] = __str;
      *&buf[12] = 2080;
      *&buf[14] = v17;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Sigma1 failed to peer %s: %s", buf, 0x16u);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_31;
    }

LABEL_30:
    sub_2393C9138();
    sub_2393D5320(0xBu, 1);
LABEL_31:
    v18 = sub_2393E088C((a1 + 104));
    sub_238EA6DC0(*v18, buf);
    v19 = sub_2394953AC(*buf);
    v20 = *(v19 + 32);
    if (v20)
    {
      sub_2393E9744(v20);
      *(v19 + 32) = 0;
    }

    (*(**buf + 32))(*buf);
    if (*(a1 + 72) == 1)
    {
      *&buf[8] = *sub_238DE36B8((a1 + 72));
      (*(**&buf[8] + 24))(*&buf[8]);
      v21 = 1;
    }

    else
    {
      v21 = 0;
    }

    buf[0] = v21;
    v22 = sub_238DE36B8(buf);
    v23 = sub_239495304(*v22);
    v24 = *(v23 + 32);
    if (v24)
    {
      sub_2393E9744(v24);
      *(v23 + 32) = 0;
    }

    if (buf[0] == 1)
    {
      (*(**&buf[8] + 32))(*&buf[8]);
    }

    sub_2393DF69C(a1);
  }

LABEL_41:
  v25 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2393E1C6C(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 184);
  if (result == a2)
  {
    sub_2393E9744(result);
    *(a1 + 184) = 0;
    v4 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "TCP Connection for this session has closed", v5, 2u);
    }

    result = sub_2393D5398(3u);
    if (result)
    {
      return sub_2393D5320(0xBu, 3);
    }
  }

  return result;
}

uint64_t sub_2393E1D10@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = (result + 40);
  if ((*(result + 40) & 1) != 0 && (v4 = sub_238DE36B8((result + 40)), result = (*(**v4 + 16))(*v4), result == 2))
  {
    v5 = sub_238DE36B8(v3);
    result = sub_239495304(*v5);
    v6 = *(result + 92);
    *a2 = 1;
    *(a2 + 2) = v6;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

_BYTE *sub_2393E1D9C(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    sub_239531094();
  }

  return a1 + 4;
}

uint64_t sub_2393E1DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (*(a6 + 8) < 0x10uLL)
  {
    result = 0x8AB00000019;
  }

  else
  {
    v8 = *(*(a1 + 544) + 40);
    v14[0] = 0;
    v14[1] = 0;
    v13 = v8;
    v9 = sub_2393E87C0(a1, a2, a3, a4, a5, &v13);
    if (v9 || (v9 = sub_2393F7A34(0, 0, 0, 0, v14, *a5, *(a5 + 8), 0, *a6, 16), v9))
    {
      v10 = v9 & 0xFFFFFFFF00000000;
    }

    else
    {
      sub_238DB8498(a6, 0x10uLL);
      LODWORD(v9) = 0;
      v10 = 0;
    }

    (*(*v13 + 40))(v13, v14);
    sub_2393F9144(v14, 16);
    result = v10 | v9;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2393E1F04(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    v15 = 2080;
    v16 = "EncodeSigma1";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (*(a2 + 80))
  {
    sub_2393D9C18(0xF3uLL, 0x26u, buf);
    if (*a1)
    {
      sub_2393D96C8(*a1);
    }

    v5 = *buf;
    *a1 = *buf;
    if (v5)
    {
      sub_2393C7B90(buf);
      v17[1] = 0;
      v17[2] = 0;
      v17[0] = &unk_284BB83A8;
      v18 = 0;
      sub_238EA16C4(v17, a1, 0);
      sub_2393C7BF0(buf, v17, 0xFFFFFFFF);
      v13 = -1;
      v6 = sub_2393C8CE0(buf, 0x100uLL, 21, &v13);
      if (v6)
      {
        goto LABEL_12;
      }

      v6 = sub_2393C8364(buf, 1uLL, *a2, *(a2 + 8));
      if (v6)
      {
        goto LABEL_12;
      }

      v6 = sub_2393C818C(buf, 2uLL, *(a2 + 16));
      if (v6)
      {
        goto LABEL_12;
      }

      v6 = sub_2393C8364(buf, 3uLL, *(a2 + 24), *(a2 + 32));
      if (v6)
      {
        goto LABEL_12;
      }

      v6 = sub_2393C83AC(buf, 4uLL, (*(a2 + 80) + 8), 0x41u);
      if (v6)
      {
        goto LABEL_12;
      }

      v12 = *(a2 + 88);
      if (!v12)
      {
        v7 = 0x35200000000;
        LODWORD(v6) = 47;
        goto LABEL_13;
      }

      if ((v6 = sub_2393EFE24(5uLL, v12, buf), v6) || *(a2 + 40) == 1 && ((v6 = sub_2393C8364(buf, 6uLL, *(a2 + 48), *(a2 + 56)), v6) || (v6 = sub_2393C8364(buf, 7uLL, *(a2 + 64), *(a2 + 72)), v6)) || (v6 = sub_2393C8DE0(buf, v13), v6) || (v6 = sub_238DD2EFC(buf, a1), v6))
      {
LABEL_12:
        v7 = v6 & 0xFFFFFFFF00000000;
      }

      else
      {
        v7 = 0;
        LODWORD(v6) = 0;
      }

LABEL_13:
      sub_2393B8400(v17);
      v8 = v6;
      goto LABEL_16;
    }

    v7 = 0x34400000000;
    v8 = 11;
  }

  else
  {
    v7 = 0x33800000000;
    v8 = 47;
  }

LABEL_16:
  v9 = sub_23948B4CC();
  if (os_signpost_enabled(v9))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    v15 = 2080;
    v16 = "EncodeSigma1";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8 | v7;
}

uint64_t sub_2393E2244(uint64_t a1, void *a2)
{
  v28[3] = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "HandleSigma1_and_SendSigma2";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  sub_2393E25C0(a1, a2, v28);
  if (v28[0])
  {
    v5 = sub_2393E2C30(v28);
    v7 = *v5;
    v6 = v5[1];
  }

  else
  {
    v12 = *sub_2393E2C54(v28);
    if (v12 == 1)
    {
      v22 = 0;
      *buf = 0;
      *&buf[8] = 0;
      v24 = &buf[16];
      v25 = 16;
      v7 = sub_2393E38D8(a1, buf);
      if (!v7)
      {
        v7 = sub_2393E3B24(&v22, buf);
        if (!v7)
        {
          v18 = 0;
          v19 = "core_dev_case_session_sigma2_resume";
          v21 = 0;
          sub_23948BD20(&v18);
          v17 = sub_2393E3DFC(a1, &v22);
          v7 = v17;
          if (v17)
          {
            v18 = 1;
            v19 = "core_dev_case_session_sigma2_resume";
            v20 = v17;
            v21 = 3;
            sub_23948BD20(&v18);
          }

          else
          {
            (*(**(a1 + 120) + 16))(*(a1 + 120));
          }
        }
      }
    }

    else
    {
      if (v12)
      {
        v9 = 0;
        v8 = 0;
        goto LABEL_20;
      }

      v22 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v7 = sub_2393E2C74(a1, buf);
      if (!v7)
      {
        v7 = sub_2393E340C(&v22, buf);
        if (!v7)
        {
          v18 = 0;
          v19 = "core_dev_case_session_sigma2";
          v21 = 0;
          sub_23948BD20(&v18);
          v16 = sub_2393E3654(a1, &v22);
          v7 = v16;
          if (v16)
          {
            v18 = 1;
            v19 = "core_dev_case_session_sigma2";
            v20 = v16;
            v21 = 3;
            sub_23948BD20(&v18);
          }

          else
          {
            (*(**(a1 + 120) + 16))(*(a1 + 120));
          }
        }
      }

      if (v26)
      {
        j__free(v26);
      }
    }

    if (v22)
    {
      sub_2393D96C8(v22);
    }
  }

  v8 = HIDWORD(v7);
  v9 = v7;
  if (v7)
  {
    v10 = a1 + 32;
    v11 = (a1 + 104);
    if (v7 == 16)
    {
      sub_2393E3ED8(v10, v11, 1);
      *(a1 + 696) = 0;
      v9 = 16;
    }

    else
    {
      sub_2393E3ED8(v10, v11, 2);
      *(a1 + 696) = 0;
    }
  }

LABEL_20:
  v13 = sub_23948B4CC();
  if (os_signpost_enabled(v13))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "HandleSigma1_and_SendSigma2";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9 | (v8 << 32);
}

void sub_2393E25C0(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v59 = *MEMORY[0x277D85DE8];
  v6 = sub_23948B4CC();
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "HandleSigma1";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v7 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Received Sigma1 msg", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0xBu, 2);
  }

  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    ++dword_27DF7774C;
    *buf = 67109120;
    *&buf[4] = dword_27DF7774C;
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Sigma1", "%u", buf, 8u);
  }

  if (*(a1 + 552))
  {
    sub_238DB6950(buf, *(*a2 + 8), *(*a2 + 24));
    v9 = sub_2393F7FF0((a1 + 192));
    if (v9)
    {
      *a3 = 1;
      a3[1] = v9;
      a3[2] = v10;
    }

    else
    {
      sub_2393C5AAC(v36);
      v37 = 0;
      sub_238DD2F90(v36, a2);
      *buf = 0;
      *&buf[8] = 0;
      v44[0] = 0;
      v44[1] = 0;
      v45 = 0;
      *__src = 0u;
      v47 = 0u;
      v48 = 0u;
      v49 = 0;
      v50 = sub_239476060();
      v51 = v11;
      v52 = 0;
      v54 = 0;
      v56 = 0;
      v58 = 1;
      v12 = sub_2393E4964(v36, buf);
      if (v12)
      {
        *a3 = 1;
        a3[1] = v12;
        a3[2] = v13;
      }

      else
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *v38 = 67109120;
          *&v38[4] = *&buf[16];
          _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "Peer (Initiator) assigned session ID %d", v38, 8u);
        }

        if (sub_2393D5398(3u))
        {
          sub_2393D5320(0xBu, 3);
        }

        v14 = *&buf[16];
        *(a1 + 176) = 1;
        *(a1 + 178) = v14;
        if (v49 == 1)
        {
          *(a1 + 144) = v50;
          *(a1 + 152) = v51;
          v15 = v52;
          *(a1 + 156) = v52;
          if (v15 == 1)
          {
            *(a1 + 158) = v53;
          }

          v16 = v54;
          *(a1 + 160) = v54;
          if (v16 == 1)
          {
            *(a1 + 162) = v55;
          }

          v17 = v56;
          *(a1 + 164) = v56;
          if (v17 == 1)
          {
            *(a1 + 168) = v57;
          }

          *(a1 + 172) = v58;
          v18 = sub_2393E088C((a1 + 104));
          sub_238EA6DC0(*v18, v38);
          v19 = sub_2394953AC(*v38);
          v20 = *(a1 + 144);
          *(v19 + 120) = *(a1 + 152);
          *(v19 + 112) = v20;
          LODWORD(v20) = *(a1 + 156);
          *(v19 + 124) = v20;
          if (v20 == 1)
          {
            *(v19 + 126) = *(a1 + 158);
          }

          v21 = *(a1 + 160);
          *(v19 + 128) = v21;
          if (v21 == 1)
          {
            *(v19 + 130) = *(a1 + 162);
          }

          v22 = *(a1 + 164);
          *(v19 + 132) = v22;
          if (v22 == 1)
          {
            *(v19 + 136) = *(a1 + 168);
          }

          *(v19 + 140) = *(a1 + 172);
          (*(**v38 + 32))(*v38);
        }

        if (v45 == 1 && __src[1] == 16 && (sub_2393E99A4(v38, __src[0]), !sub_2393E45C8(a1, *v38, v47, *(&v47 + 1), *buf, *&buf[8])))
        {
          if (*&buf[8])
          {
            memmove((a1 + 628), *buf, *&buf[8]);
          }

          if (__src[1])
          {
            memmove((a1 + 596), __src[0], __src[1]);
          }

          *a3 = 0;
          *(a3 + 8) = 1;
        }

        else
        {
          v23 = v48;
          *(a1 + 320) = *v48;
          v25 = *(v23 + 32);
          v24 = *(v23 + 48);
          v26 = *(v23 + 16);
          *(a1 + 384) = *(v23 + 64);
          *(a1 + 352) = v25;
          *(a1 + 368) = v24;
          *(a1 + 336) = v26;
          v28 = sub_2393E41F4(a1, v44, buf);
          if (v28)
          {
            v29 = v27;
            if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
            {
              *v38 = 0;
              _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "CASE failed to match destination ID with local fabrics", v38, 2u);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393D5320(0xBu, 1);
            }

            sub_2393D90A4(0xBu, OS_LOG_TYPE_INFO, v44);
            if (sub_2393D5398(3u))
            {
              sub_2393D8AB8(11, 3, v44);
            }

            *a3 = 1;
            a3[1] = v28;
            a3[2] = v29;
          }

          else
          {
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              v30 = *(a1 + 560);
              v31 = *(a1 + 576);
              *v38 = 67109632;
              *&v38[4] = v30;
              v39 = 1024;
              v40 = HIDWORD(v31);
              v41 = 1024;
              v42 = v31;
              _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "CASE matched destination ID: fabricIndex %u, NodeID 0x%08X%08X", v38, 0x14u);
            }

            if (sub_2393D5398(2u))
            {
              v35 = HIDWORD(*(a1 + 576));
              v34 = *(a1 + 560);
              sub_2393D5320(0xBu, 2);
            }

            *a3 = 0;
            *(a3 + 8) = 0;
          }
        }
      }

      if (v37)
      {
        sub_2393D96C8(v37);
      }
    }
  }

  else
  {
    *a3 = 1;
    a3[1] = 0x3FE00000003;
    a3[2] = "src/protocols/secure_channel/CASESession.cpp";
  }

  v32 = sub_23948B4CC();
  if (os_signpost_enabled(v32))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "HandleSigma1";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v32, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v33 = *MEMORY[0x277D85DE8];
}

void *sub_2393E2C30(void *a1)
{
  if (*a1 != 1)
  {
    sub_23953111C();
  }

  return a1 + 1;
}

void *sub_2393E2C54(void *a1)
{
  if (*a1)
  {
    sub_23953111C();
  }

  return a1 + 1;
}

unint64_t sub_2393E2C74(uint64_t a1, uint64_t a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  v5 = &off_23958D000;
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v56 = "CASESession";
    v57 = 2080;
    v58 = "PrepareSigma2";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (!*(a1 + 552))
  {
    v11 = 3;
    v10 = 1163;
    goto LABEL_14;
  }

  if (*(a1 + 128) != 1)
  {
    v11 = 3;
    v10 = 1164;
    goto LABEL_14;
  }

  sub_2393E1D10(a1 + 32, buf);
  if (buf[0] != 1)
  {
    v11 = 3;
    v10 = 1165;
    goto LABEL_14;
  }

  sub_2393E1D10(a1 + 32, buf);
  *(a2 + 32) = *sub_238E0A934(buf);
  v6 = sub_2393D52C4(0x190uLL);
  if (!v6)
  {
    v11 = 11;
    v10 = 1169;
    goto LABEL_14;
  }

  v7 = v6;
  v8 = sub_2393D52C4(0x190uLL);
  if (v8)
  {
    v36 = v8;
    sub_238DB9BD8(&v49, v7, 400);
    v9 = sub_2394A8274(*(a1 + 552), *(a1 + 560), &v49);
    if (v9)
    {
      v10 = HIDWORD(v9);
LABEL_22:
      v11 = v9;
LABEL_23:
      v15 = v36;
      goto LABEL_24;
    }

    sub_238DB9BD8(&v47, v36, 400);
    v9 = sub_2394A847C(*(a1 + 552), *(a1 + 560), &v47);
    if (v9)
    {
      v10 = HIDWORD(v9);
      goto LABEL_22;
    }

    v9 = sub_2393F888C(a2, 0x20uLL);
    if (v9)
    {
      goto LABEL_21;
    }

    v16 = sub_2394AAF6C(*(a1 + 552));
    *(a1 + 392) = v16;
    if (!v16)
    {
      LODWORD(v9) = 11;
      v10 = 1185;
      goto LABEL_22;
    }

    v9 = (*(*v16 + 48))(v16, 0);
    if (v9 || (*(a2 + 40) = (*(**(a1 + 392) + 40))(*(a1 + 392)), v9 = (*(**(a1 + 392) + 32))(*(a1 + 392), a1 + 312, a1 + 400), v9))
    {
LABEL_21:
      v10 = HIDWORD(v9);
      goto LABEL_22;
    }

    v45 = buf;
    v46 = 145;
    v51[0] = a2;
    v51[1] = 32;
    v17 = (*(**(a1 + 392) + 40))(*(a1 + 392));
    v37 = (a1 + 520);
    v38 = 16;
    v18 = sub_2393E4BE0(a1, v51, v17, &v37, &v45);
    if (v18)
    {
      v10 = HIDWORD(v18);
      v11 = v18;
      goto LABEL_23;
    }

    v19 = *(*(a1 + 544) + 40);
    v54[0] = 0;
    v54[1] = 0;
    v53 = v19;
    sub_238DB6950(v51, v45, v46);
    v37 = "Sigma2NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE";
    v38 = 6;
    v20 = (*(**(*(a1 + 544) + 40) + 56))(*(*(a1 + 544) + 40), a1 + 400, v51, &v37, v54);
    v21 = v20;
    if (v20)
    {
      v10 = HIDWORD(v20);
      sub_2393E99C0(&v53);
      v11 = v21;
      v5 = &off_23958D000;
      goto LABEL_23;
    }

    v52 = 0;
    v22 = sub_2393D52C4(0x3B4uLL);
    if (!v22)
    {
      v28 = 11;
      v10 = 1211;
      goto LABEL_58;
    }

    v23 = v22;
    sub_238DB9BD8(&v37, v22, 948);
    sub_238DB6950(&v43, v47, v48);
    sub_238DB6950(v42, v49, v50);
    v24 = (*(**(a1 + 392) + 40))(*(a1 + 392));
    (*(**(a1 + 392) + 40))(*(a1 + 392));
    sub_238DB6950(v41, v24 + 8, 65);
    v25 = sub_238DB6950(v40, a1 + 320, 65);
    v26 = sub_2393E4D5C(v25, &v43, v42, v41, v40, &v37);
    v27 = v26;
    if (v26)
    {
      v10 = HIDWORD(v26);
      j__free(v23);
      v28 = v27;
      goto LABEL_58;
    }

    v29 = *(a1 + 552);
    v30 = *(a1 + 560);
    sub_238DB6950(&v43, v37, v38);
    v31 = sub_2394AB310(v29, v30, v43, v44, v51);
    j__free(v23);
    if (v31)
    {
      v28 = v31;
      v10 = HIDWORD(v31);
      goto LABEL_58;
    }

    v32 = v48 + v50 + v52;
    sub_2393C56C0((a2 + 48), v32 + 50);
    if (!*(a2 + 48))
    {
      v28 = 11;
      v10 = 1228;
      goto LABEL_58;
    }

    sub_2393C7B90(&v37);
    sub_2393C7BB8(&v37, *(a2 + 48), v32 + 34);
    LODWORD(v42[0]) = -1;
    v33 = sub_2393C8CE0(&v37, 0x100uLL, 21, v42);
    if (v33)
    {
      v10 = HIDWORD(v33);
    }

    else
    {
      sub_238DB6950(&v43, v47, v48);
      v33 = sub_2393C8364(&v37, 1uLL, v43, v44);
      if (!v33)
      {
        if (!v50 || (sub_238DB6950(&v43, v49, v50), v33 = sub_2393C8364(&v37, 2uLL, v43, v44), !v33))
        {
          j__free(v7);
          v49 = 0;
          v50 = 0;
          j__free(v36);
          v47 = 0;
          v48 = 0;
          v33 = sub_2393C83AC(&v37, 3uLL, v51, v52);
          if (!v33)
          {
            v33 = sub_2393F888C((a1 + 612), 0x10uLL);
            if (!v33)
            {
              v33 = sub_2393C8364(&v37, 4uLL, (a1 + 612), 0x10uLL);
              if (!v33)
              {
                v33 = sub_2393C8DE0(&v37, v42[0]);
                if (!v33)
                {
                  v33 = sub_2393C7CB8(&v37);
                  if (!v33)
                  {
                    v34 = v39;
                    *(a2 + 56) = v39 + 16;
                    v33 = sub_2393F7A34(*(a2 + 48), v34, 0, 0, v54, "NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE", 0xDuLL, *(a2 + 48), (*(a2 + 48) + v34), 16);
                    if (!v33)
                    {
                      v35 = sub_2393E1D9C((a1 + 128));
                      v7 = 0;
                      v36 = 0;
                      v10 = 0;
                      LODWORD(v33) = 0;
                      *(a2 + 64) = v35;
                      goto LABEL_57;
                    }
                  }
                }
              }
            }
          }

          v7 = 0;
          v36 = 0;
        }
      }

      v10 = HIDWORD(v33);
    }

LABEL_57:
    v28 = v33;
LABEL_58:
    sub_2393F9144(v51, 64);
    sub_2393E99C0(&v53);
    v11 = v28;
    v5 = &off_23958D000;
    v15 = v36;
    if (!v36)
    {
LABEL_25:
      if (!v7)
      {
        goto LABEL_14;
      }

      goto LABEL_26;
    }

LABEL_24:
    j__free(v15);
    goto LABEL_25;
  }

  v10 = 1172;
  v11 = 11;
LABEL_26:
  j__free(v7);
LABEL_14:
  v12 = sub_23948B4CC();
  if (os_signpost_enabled(v12))
  {
    *buf = *(v5 + 285);
    v56 = "CASESession";
    v57 = 2080;
    v58 = "PrepareSigma2";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11 | (v10 << 32);
}

unint64_t sub_2393E340C(void *a1, uint64_t a2)
{
  if (!*(a2 + 40))
  {
    v8 = 0x50100000000;
LABEL_21:
    v9 = 47;
    return v8 | v9;
  }

  if (!*(a2 + 48))
  {
    v8 = 0x50200000000;
LABEL_24:
    v9 = 3;
    return v8 | v9;
  }

  v3 = *(a2 + 56);
  if (v3 < 0x11)
  {
    v8 = 0x50400000000;
    goto LABEL_24;
  }

  if (!*(a2 + 64))
  {
    v8 = 0x50500000000;
    goto LABEL_21;
  }

  sub_2393D9C18(v3 + 171, 0x26u, v12);
  if (*a1)
  {
    sub_2393D96C8(*a1);
  }

  v5 = v12[0];
  *a1 = v12[0];
  if (v5)
  {
    sub_2393C7B90(v12);
    v13[1] = 0;
    v13[2] = 0;
    v13[0] = &unk_284BB83A8;
    v14 = 0;
    sub_238EA16C4(v13, a1, 0);
    sub_2393C7BF0(v12, v13, 0xFFFFFFFF);
    v11 = -1;
    v6 = sub_2393C8CE0(v12, 0x100uLL, 21, &v11);
    if (v6)
    {
      goto LABEL_18;
    }

    v6 = sub_2393C83AC(v12, 1uLL, a2, 0x20u);
    if (v6)
    {
      goto LABEL_18;
    }

    v6 = sub_2393C818C(v12, 2uLL, *(a2 + 32));
    if (v6)
    {
      goto LABEL_18;
    }

    v6 = sub_2393C83AC(v12, 3uLL, (*(a2 + 40) + 8), 0x41u);
    if (v6)
    {
      goto LABEL_18;
    }

    v6 = sub_2393C83AC(v12, 4uLL, *(a2 + 48), *(a2 + 56));
    if (v6)
    {
      goto LABEL_18;
    }

    v7 = *(a2 + 48);
    if (v7)
    {
      j__free(v7);
      *(a2 + 48) = 0;
    }

    v6 = sub_2393EFE24(5uLL, *(a2 + 64), v12);
    if (v6 || (v6 = sub_2393C8DE0(v12, v11), v6) || (v6 = sub_238DD2EFC(v12, a1), v6))
    {
LABEL_18:
      v8 = v6 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v6) = 0;
      v8 = 0;
    }

    sub_2393B8400(v13);
    v9 = v6;
  }

  else
  {
    v8 = 0x50F00000000;
    v9 = 11;
  }

  return v8 | v9;
}

unint64_t sub_2393E3654(uint64_t a1, uint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *v13 = 136315394;
    *&v13[4] = "CASESession";
    v14 = 2080;
    v15 = "SendSigma2";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", v13, 0x16u);
  }

  sub_238DB6950(v13, *(*a2 + 8), *(*a2 + 24));
  v5 = sub_2393F7FF0((a1 + 192));
  if (v5 || (v6 = *sub_2393E088C((a1 + 104)), *v13 = 1, v5 = sub_239470478(v6, 0, 49, a2, v13), v5))
  {
    v7 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    *(a1 + 696) = 2;
    v11 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "Sent Sigma2 msg", v13, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0xBu, 2);
    }

    v12 = sub_23948B4CC();
    if (os_signpost_enabled(v12))
    {
      ++dword_27DF77750;
      *v13 = 67109120;
      *&v13[4] = dword_27DF77750;
      _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Sigma2", "%u", v13, 8u);
    }

    v7 = 0;
    LODWORD(v5) = 0;
  }

  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *v13 = 136315394;
    *&v13[4] = "CASESession";
    v14 = 2080;
    v15 = "SendSigma2";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", v13, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5 | v7;
}

unint64_t sub_2393E38D8(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "PrepareSigma2Resume";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (*(a1 + 128) == 1)
  {
    sub_2393E1D10(a1 + 32, buf);
    if (buf[0] == 1)
    {
      sub_2393E1D10(a1 + 32, buf);
      *(a2 + 48) = *sub_238E0A934(buf);
      v5 = sub_2393F888C((a1 + 612), 0x10uLL);
      if (v5)
      {
        goto LABEL_7;
      }

      *a2 = a1 + 612;
      *(a2 + 8) = 16;
      *buf = a1 + 628;
      *&buf[8] = 32;
      v13[0] = a1 + 612;
      v13[1] = 16;
      v12[0] = "Sigma2_ResumeNCASE_SigmaS2Sigma2NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE";
      v12[1] = 13;
      v11[0] = "NCASE_SigmaS2Sigma2NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE";
      v11[1] = 13;
      v5 = sub_2393E1DBC(a1, buf, v13, v12, v11, a2 + 32);
      if (v5)
      {
LABEL_7:
        v6 = v5 & 0xFFFFFFFF00000000;
      }

      else
      {
        v10 = sub_2393E1D9C((a1 + 128));
        v6 = 0;
        LODWORD(v5) = 0;
        *(a2 + 56) = v10;
      }

      goto LABEL_11;
    }

    v6 = 0x44700000000;
  }

  else
  {
    v6 = 0x44400000000;
  }

  LODWORD(v5) = 3;
LABEL_11:
  v7 = sub_23948B4CC();
  if (os_signpost_enabled(v7))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "PrepareSigma2Resume";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5 | v6;
}

unint64_t sub_2393E3B24(void *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    v15 = 2080;
    v16 = "EncodeSigma2Resume";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (*(a2 + 56))
  {
    sub_2393D9C18(0x66uLL, 0x26u, buf);
    if (*a1)
    {
      sub_2393D96C8(*a1);
    }

    v5 = *buf;
    *a1 = *buf;
    if (v5)
    {
      sub_2393C7B90(buf);
      v17[1] = 0;
      v17[2] = 0;
      v17[0] = &unk_284BB83A8;
      v18 = 0;
      sub_238EA16C4(v17, a1, 0);
      sub_2393C7BF0(buf, v17, 0xFFFFFFFF);
      v13 = -1;
      v6 = sub_2393C8CE0(buf, 0x100uLL, 21, &v13);
      if (v6 || (v6 = sub_2393C8364(buf, 1uLL, *a2, *(a2 + 8)), v6) || (sub_238DB6950(v12, *(a2 + 32), *(a2 + 40)), v6 = sub_2393C8364(buf, 2uLL, v12[0], v12[1]), v6) || (v6 = sub_2393C818C(buf, 3uLL, *(a2 + 48)), v6) || (v6 = sub_2393EFE24(4uLL, *(a2 + 56), buf), v6) || (v6 = sub_2393C8DE0(buf, v13), v6) || (v6 = sub_238DD2EFC(buf, a1), v6))
      {
        v7 = v6 & 0xFFFFFFFF00000000;
      }

      else
      {
        v7 = 0;
        LODWORD(v6) = 0;
      }

      sub_2393B8400(v17);
      v8 = v6;
    }

    else
    {
      v7 = 0x46300000000;
      v8 = 11;
    }
  }

  else
  {
    v7 = 0x45A00000000;
    v8 = 47;
  }

  v9 = sub_23948B4CC();
  if (os_signpost_enabled(v9))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    v15 = 2080;
    v16 = "EncodeSigma2Resume";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8 | v7;
}

unint64_t sub_2393E3DFC(uint64_t a1, uint64_t *a2)
{
  v4 = *sub_2393E088C((a1 + 104));
  v10 = 1;
  v5 = sub_239470478(v4, 0, 51, a2, &v10);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else
  {
    *(a1 + 696) = 5;
    v7 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Sent Sigma2Resume msg", v9, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0xBu, 2);
    }

    LODWORD(v5) = 0;
    v6 = 0;
  }

  return v6 | v5;
}

void sub_2393E3ED8(uint64_t a1, _BYTE *a2, int a3)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v5 = a3 != 0;
  v6 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(*sub_2393E088C(a2) + 112);
    *buf = 67109376;
    *&buf[4] = a3;
    LOWORD(v23) = 1024;
    *(&v23 + 2) = v7;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "Sending status report. Protocol code %d, exchange %d", buf, 0xEu);
  }

  if (sub_2393D5398(3u))
  {
    v15 = *(*sub_2393E088C(a2) + 112);
    sub_2393D5320(0xBu, 3);
  }

  sub_23946FC6C(v18, v5, 0, a3);
  v8 = sub_23946FEFC(v18);
  sub_2393D9C18(v8, 0x26u, &v17);
  if (v17)
  {
    v9 = *(v17 + 1);
    v10 = v9 + *(v17 + 3);
    v11 = sub_2393D980C(v17);
    *buf = v10;
    v23 = v11;
    v24 = 0;
    if (!v9)
    {
      v23 = 0;
    }

    v25[0] = v17;
    v17 = 0;
    sub_23946FE8C(v18, buf);
    sub_2393D9FF8(buf, v25, &v16);
    if (v16)
    {
      v12 = *sub_2393E088C(a2);
      *v20 = 0;
      if (!sub_239470478(v12, 0, 64, &v16, v20))
      {
        goto LABEL_22;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v13 = sub_2393C9138();
        *v20 = 136315138;
        v21 = v13;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Failed to send status report message: %s", v20, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_22;
      }

      sub_2393C9138();
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Failed to allocate status report message", v20, 2u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_22;
      }
    }

    sub_2393D5320(0xBu, 1);
LABEL_22:
    if (v16)
    {
      sub_2393D96C8(v16);
    }

    if (v25[0])
    {
      sub_2393D96C8(v25[0]);
    }

    goto LABEL_26;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Failed to allocate status report message", buf, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0xBu, 1);
  }

LABEL_26:
  if (v17)
  {
    sub_2393D96C8(v17);
  }

  if (v19)
  {
    sub_2393D96C8(v19);
  }

  v14 = *MEMORY[0x277D85DE8];
}

unint64_t sub_2393E41F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = sub_23948B4CC();
  v6 = &off_23958D000;
  if (os_signpost_enabled(v5))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    v37 = 2080;
    v38 = "FindLocalNodeFromDestinationId";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v7 = *(a1 + 552);
  if (v7)
  {
    sub_238DCCCDC(*(a1 + 552), v32);
    if (v33 != v34 && (v34 != 16 || v33 != 16 || v32[0] != v7))
    {
LABEL_14:
      v13 = sub_238DC7C7C(v32);
      v14 = *v13;
      v15 = *(v13 + 8);
      *buf = &unk_284BB9138;
      v16 = sub_2394A8620(*(a1 + 552), *(v13 + 137), buf);
      v9 = v16;
      if (v16)
      {
        v8 = v16 & 0xFFFFFFFF00000000;
        goto LABEL_9;
      }

      v31 = 0x10000;
      if (!(*(**(a1 + 480) + 192))(*(a1 + 480), *(v13 + 137), v29) && HIBYTE(v31) - 1 <= 2)
      {
        v17 = 0;
        v18 = &v30;
        while (1)
        {
          __s1 = &v35;
          __n = 32;
          __src = v18;
          __len = 16;
          v23 = &buf[8];
          v24 = 65;
          if (!sub_2393DDF84(&__src, a3, &v23, v15, v14, &__s1) && __n == *(a2 + 8) && (!__n || !memcmp(__s1, *a2, __n)))
          {
            break;
          }

          ++v17;
          v18 += 3;
          if (v17 >= HIBYTE(v31))
          {
            goto LABEL_23;
          }
        }

        v23 = (a1 + 520);
        v24 = 16;
        v21 = __len;
        if (__len <= 0x10)
        {
          memmove((a1 + 520), __src, __len);
          sub_238DB8498(&v23, v21);
        }

        v8 = 0;
        v9 = 0;
        *(a1 + 560) = *(v13 + 137);
        *(a1 + 576) = v14;
        goto LABEL_9;
      }

LABEL_23:
      v19 = v33;
      while (1)
      {
        if (v19 < v34)
        {
          v33 = ++v19;
        }

        if (v19 == v34)
        {
          break;
        }

        v20 = v32[0] + 152 * v19;
        if (*(v20 + 137) && (*v20 - 1) < 0xFFFFFFEFFFFFFFFFLL)
        {
          if (v34 != 16 || v19 != 16 || v32[0] != v7)
          {
            goto LABEL_14;
          }

          break;
        }
      }
    }

    v8 = 0x3DD00000000;
    v9 = 16;
LABEL_9:
    v6 = &off_23958D000;
    goto LABEL_11;
  }

  v8 = 0x3AD00000000;
  v9 = 3;
LABEL_11:
  v10 = sub_23948B4CC();
  if (os_signpost_enabled(v10))
  {
    *buf = *(v6 + 285);
    *&buf[4] = "CASESession";
    v37 = 2080;
    v38 = "FindLocalNodeFromDestinationId";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9 | v8;
}

unint64_t sub_2393E45C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = *MEMORY[0x277D85DE8];
  v21[0] = a3;
  v21[1] = a4;
  v20[0] = a5;
  v20[1] = a6;
  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    v23 = 2080;
    v24 = "TryResumeSession";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v9 = *(a1 + 536);
  if (!v9)
  {
    v11 = 0x3E400000000;
LABEL_11:
    v12 = 3;
    goto LABEL_12;
  }

  if (!*(a1 + 552))
  {
    v11 = 0x3E500000000;
    goto LABEL_11;
  }

  *buf = 0;
  buf[8] = 0;
  v10 = (*(*v9 + 24))(v9, a2, buf, a1 + 400, a1 + 584);
  if (v10 || (v19[0] = a2, v19[1] = 16, v18[0] = "Sigma1_ResumeNCASE_SigmaS1Sigma2_ResumeNCASE_SigmaS2Sigma2NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE", v18[1] = 13, v17[0] = "NCASE_SigmaS1Sigma2_ResumeNCASE_SigmaS2Sigma2NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE", v17[1] = 13, v10 = sub_2393E4824(a1, v21, v20, v19, v18, v17), v10))
  {
    v11 = v10 & 0xFFFFFFFF00000000;
  }

  else
  {
    v10 = sub_2394A7FC0(*(a1 + 552), buf[8]);
    if (v10)
    {
      v16 = v10;
      v11 = 0;
      LODWORD(v10) = 0;
      *(a1 + 560) = buf[8];
      *(a1 + 568) = *buf;
      *(a1 + 576) = *v16;
    }

    else
    {
      v11 = 0x3F000000000;
      LODWORD(v10) = 3;
    }
  }

  v12 = v10;
LABEL_12:
  v13 = sub_23948B4CC();
  if (os_signpost_enabled(v13))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    v23 = 2080;
    v24 = "TryResumeSession";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12 | v11;
}

uint64_t sub_2393E4824(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v16[2] = *MEMORY[0x277D85DE8];
  if (a2[1] == 16)
  {
    v8 = *(*(a1 + 544) + 40);
    v16[0] = 0;
    v16[1] = 0;
    v15 = v8;
    v9 = sub_2393E87C0(a1, a3, a4, a5, a5, &v15);
    v10 = v9;
    if (v9)
    {
      v11 = v9 & 0xFFFFFFFF00000000;
    }

    else
    {
      v13 = sub_2393F7C50(0, 0, 0, 0, *a2, a2[1], v16, *a6, a6[1], 0);
      if (v13)
      {
        v10 = v13;
      }

      else
      {
        v10 = 0;
      }

      if (v13)
      {
        v11 = v13 & 0xFFFFFFFF00000000;
      }

      else
      {
        v11 = 0;
      }
    }

    (*(*v15 + 40))(v15, v16);
    sub_2393F9144(v16, 16);
    result = v11 | v10;
  }

  else
  {
    result = 0x8B900000019;
  }

  v14 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2393E4964(uint64_t a1, uint64_t a2)
{
  v11 = 21;
  v4 = sub_2393C7114(a1, 21, 256);
  if (!v4)
  {
    v4 = sub_2393C6A2C(a1, &v11);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C6FD0(a1, 1);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C76AC(a1, a2);
    if (v4)
    {
      goto LABEL_6;
    }

    if (*(a2 + 8) != 32)
    {
      LODWORD(v4) = 84;
      v5 = 0x94300000000;
      return v5 | v4;
    }

    v4 = sub_2393C6FD0(a1, 2);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C5F70(a1, (a2 + 16));
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C6FD0(a1, 3);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C76AC(a1, (a2 + 24));
    if (v4)
    {
      goto LABEL_6;
    }

    if (*(a2 + 32) != 32)
    {
      LODWORD(v4) = 84;
      v5 = 0x94A00000000;
      return v5 | v4;
    }

    v4 = sub_2393C6FD0(a1, 4);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C76AC(a1, (a2 + 80));
    if (v4)
    {
      goto LABEL_6;
    }

    if (*(a2 + 88) != 65)
    {
      LODWORD(v4) = 84;
      v5 = 0x94E00000000;
      return v5 | v4;
    }

    v4 = sub_2393C6B34(a1);
    if (v4)
    {
LABEL_18:
      v7 = 0;
      v8 = 0;
      goto LABEL_19;
    }

    v10 = *(a1 + 16);
    if (v10 == 5)
    {
      v4 = sub_2393EFF04(5, a1, a2 + 100);
      if (v4)
      {
        goto LABEL_6;
      }

      *(a2 + 96) = 1;
      v4 = sub_2393C6B34(a1);
      if (v4)
      {
        goto LABEL_18;
      }

      v10 = *(a1 + 16);
    }

    v7 = v10 == 6;
    if (v10 == 6)
    {
      v4 = sub_2393C76AC(a1, (a2 + 48));
      if (v4)
      {
        goto LABEL_6;
      }

      if (*(a2 + 56) != 16)
      {
        LODWORD(v4) = 84;
        v5 = 0x96300000000;
        return v5 | v4;
      }

      v4 = sub_2393C6B34(a1);
      if (v4)
      {
        v8 = 0;
        v7 = 1;
        goto LABEL_19;
      }

      v10 = *(a1 + 16);
    }

    if (v10 != 7)
    {
      v8 = 0;
      goto LABEL_21;
    }

    v4 = sub_2393C76AC(a1, (a2 + 64));
    if (v4)
    {
LABEL_6:
      v5 = v4 & 0xFFFFFFFF00000000;
      return v5 | v4;
    }

    if (*(a2 + 72) != 16)
    {
      LODWORD(v4) = 84;
      v5 = 0x96C00000000;
      return v5 | v4;
    }

    v4 = sub_2393C6B34(a1);
    v8 = 1;
LABEL_19:
    if (v4 == 33 || !v4)
    {
LABEL_21:
      v4 = sub_2393C6A98(a1, v11);
      if (!v4)
      {
        if (v8 & v7)
        {
          v9 = 1;
        }

        else
        {
          if ((v8 | v7))
          {
            LODWORD(v4) = 43;
            v5 = 0x98300000000;
            return v5 | v4;
          }

          v9 = 0;
        }

        v5 = 0;
        LODWORD(v4) = 0;
        *(a2 + 40) = v9;
        return v5 | v4;
      }

      goto LABEL_6;
    }

    goto LABEL_6;
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v5 | v4;
}

unint64_t sub_2393E4BE0(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = *MEMORY[0x277D85DE8];
  bzero(*a5, *(a5 + 8));
  v10 = *(a5 + 8);
  v19 = *a5;
  v20 = v10;
  v21 = 0;
  if (!v19)
  {
    v20 = 0;
  }

  sub_2393D5CDC(&v19, *a4, *(a4 + 8));
  sub_2393D5CDC(&v19, *a2, 0x20uLL);
  sub_2393D5CDC(&v19, (a3 + 8), 0x41uLL);
  v17 = &v22;
  v18 = 32;
  v11 = sub_2393F80A0((a1 + 192), &v17);
  if (v11)
  {
    v12 = v11 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_2393D5CDC(&v19, v17, v18);
    if (v20 >= v21)
    {
      v13 = sub_2393E8774(a5, 0, v21);
      LODWORD(v11) = 0;
      v12 = 0;
      *a5 = v13;
      *(a5 + 8) = v14;
    }

    else
    {
      v12 = 0x87E00000000;
      LODWORD(v11) = 25;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v12 | v11;
}

unint64_t sub_2393E4D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2393C7B90(v16);
  v15 = -1;
  sub_2393C7BB8(v16, *a6, *(a6 + 8));
  v11 = sub_2393C8CE0(v16, 0x100uLL, 21, &v15);
  if (v11 || (v11 = sub_2393C8364(v16, 1uLL, *a2, *(a2 + 8)), v11) || (v14 = *(a3 + 8)) != 0 && (v11 = sub_2393C8364(v16, 2uLL, *a3, v14), v11) || (v11 = sub_2393C8364(v16, 3uLL, *a4, *(a4 + 8)), v11) || (v11 = sub_2393C8364(v16, 4uLL, *a5, *(a5 + 8)), v11) || (v11 = sub_2393C8DE0(v16, v15), v11) || (v11 = sub_2393C7CB8(v16), v11))
  {
    v12 = v11 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_238DB8498(a6, v17);
    LODWORD(v11) = 0;
    v12 = 0;
  }

  return v12 | v11;
}

unint64_t sub_2393E4E74(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    *v48 = "CASESession";
    *&v48[8] = 2080;
    *&v48[10] = "HandleSigma2Resume";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v5 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Received Sigma2Resume msg", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0xBu, 3);
  }

  v6 = sub_23948B4CC();
  if (os_signpost_enabled(v6))
  {
    ++dword_27DF77754;
    *buf = 67109120;
    *v48 = dword_27DF77754;
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Sigma2Resume", "%u", buf, 8u);
  }

  *buf = 1;
  *&v48[4] = "core_dev_case_session_sigma1";
  *&v48[12] = 0;
  v48[16] = 3;
  sub_23948BD20(buf);
  sub_2393C5AAC(buf);
  v49 = 0;
  sub_238DD2F90(buf, a2);
  v30 = 0u;
  v31 = 0u;
  v32 = sub_239476060();
  v33 = v7;
  v34 = 0;
  v36 = 0;
  v38 = 0;
  v40 = 1;
  v42 = 0;
  v8 = sub_2393E5594(buf, &v30);
  if (v8 || (*&v43 = a1 + 628, *(&v43 + 1) = 32, v29[0] = "Sigma2_ResumeNCASE_SigmaS2Sigma2NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE", v29[1] = 13, v28[0] = "NCASE_SigmaS2Sigma2NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE", v28[1] = 13, v8 = sub_2393E4824(a1, &v31, &v43, &v30, v29, v28), v8))
  {
    sub_2393E3ED8(a1 + 32, (a1 + 104), 2);
  }

  else
  {
    if (v42 == 1)
    {
      *(a1 + 144) = v32;
      *(a1 + 152) = v33;
      v12 = v34;
      *(a1 + 156) = v34;
      if (v12 == 1)
      {
        *(a1 + 158) = v35;
      }

      v13 = v36;
      *(a1 + 160) = v36;
      if (v13 == 1)
      {
        *(a1 + 162) = v37;
      }

      v14 = v38;
      *(a1 + 164) = v38;
      if (v14 == 1)
      {
        *(a1 + 168) = v39;
      }

      *(a1 + 172) = v40;
      v15 = sub_2393E088C((a1 + 104));
      sub_238EA6DC0(*v15, &v43);
      v16 = sub_2394953AC(v43);
      v17 = *(a1 + 144);
      *(v16 + 120) = *(a1 + 152);
      *(v16 + 112) = v17;
      LODWORD(v17) = *(a1 + 156);
      *(v16 + 124) = v17;
      if (v17 == 1)
      {
        *(v16 + 126) = *(a1 + 158);
      }

      v18 = *(a1 + 160);
      *(v16 + 128) = v18;
      if (v18 == 1)
      {
        *(v16 + 130) = *(a1 + 162);
      }

      v19 = *(a1 + 164);
      *(v16 + 132) = v19;
      if (v19 == 1)
      {
        *(v16 + 136) = *(a1 + 168);
      }

      *(v16 + 140) = *(a1 + 172);
      (*(*v43 + 32))(v43);
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v20 = (*(*a1 + 48))(a1) >> 32;
      v21 = (*(*a1 + 48))(a1);
      (*(*a1 + 48))(a1);
      *&v43 = __PAIR64__(v20, 67109888);
      WORD4(v43) = 1024;
      *(&v43 + 10) = v21;
      HIWORD(v43) = 1024;
      v44 = v22;
      v45 = 1024;
      v46 = v41;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Peer <%08X%08X, %d> assigned session ID %d", &v43, 0x1Au);
    }

    if (sub_2393D5398(3u))
    {
      v23 = (*(*a1 + 48))(a1) >> 32;
      (*(*a1 + 48))(a1);
      (*(*a1 + 48))(a1);
      sub_2393D5320(0xBu, 3);
    }

    v24 = v41;
    *(a1 + 176) = 1;
    *(a1 + 178) = v24;
    v25 = *(a1 + 536);
    if (v25)
    {
      *&v43 = (*(*a1 + 48))(a1);
      BYTE8(v43) = v26;
      sub_2393E99A4(v29, v30);
      if ((*(*v25 + 32))(v25, &v43, v29[0], a1 + 400, a1 + 584))
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v27 = sub_2393C9138();
          LODWORD(v43) = 136315138;
          *(&v43 + 4) = v27;
          _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Unable to save session resumption state: %s", &v43, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(0xBu, 1);
        }
      }
    }

    LODWORD(v43) = 2;
    *(&v43 + 1) = "core_dev_case_session_sigma_finished";
    LOBYTE(v45) = 0;
    sub_23948BD20(&v43);
    sub_2393E3ED8(a1 + 32, (a1 + 104), 0);
    *(a1 + 696) = 7;
    sub_2393EF9A4(a1 + 32);
  }

  if (v49)
  {
    sub_2393D96C8(v49);
  }

  v9 = sub_23948B4CC();
  if (os_signpost_enabled(v9))
  {
    *buf = 136315394;
    *v48 = "CASESession";
    *&v48[8] = 2080;
    *&v48[10] = "HandleSigma2Resume";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

unint64_t sub_2393E5594(uint64_t a1, uint64_t a2)
{
  v7 = 21;
  v4 = sub_2393C7114(a1, 21, 256);
  if (!v4)
  {
    v4 = sub_2393C6A2C(a1, &v7);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C6FD0(a1, 1);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C76AC(a1, a2);
    if (v4)
    {
      goto LABEL_6;
    }

    if (*(a2 + 8) != 16)
    {
      LODWORD(v4) = 84;
      v5 = 0x57E00000000;
      return v5 | v4;
    }

    v4 = sub_2393C6FD0(a1, 2);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C76AC(a1, (a2 + 16));
    if (v4)
    {
      goto LABEL_6;
    }

    if (*(a2 + 24) != 16)
    {
      LODWORD(v4) = 84;
      v5 = 0x58300000000;
      return v5 | v4;
    }

    v4 = sub_2393C6FD0(a1, 3);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C5F70(a1, (a2 + 64));
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C6B34(a1);
    if (v4)
    {
      goto LABEL_15;
    }

    if (*(a1 + 16) == 4)
    {
      v4 = sub_2393EFF04(4, a1, a2 + 32);
      if (v4)
      {
LABEL_6:
        v5 = v4 & 0xFFFFFFFF00000000;
        return v5 | v4;
      }

      *(a2 + 66) = 1;
      v4 = sub_2393C6B34(a1);
      if (v4)
      {
LABEL_15:
        if (v4 != 33)
        {
          goto LABEL_6;
        }
      }
    }

    v4 = sub_2393C6A98(a1, v7);
    if (!v4)
    {
      v5 = 0;
      return v5 | v4;
    }

    goto LABEL_6;
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v5 | v4;
}

unint64_t sub_2393E5700(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    v10 = 136315394;
    *v11 = "CASESession";
    *&v11[8] = 2080;
    *&v11[10] = "HandleSigma2_and_SendSigma3";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v10, 0x16u);
  }

  v5 = sub_2393E5904(a1, a2);
  v10 = 1;
  *&v11[4] = "core_dev_case_session_sigma1";
  *&v11[12] = v5;
  v11[16] = 3;
  sub_23948BD20(&v10);
  if (!v5)
  {
    v10 = 0;
    *&v11[4] = "core_dev_case_session_sigma3";
    v11[16] = 0;
    sub_23948BD20(&v10);
    sub_2393E62B4(a1);
  }

  sub_2393E3ED8(a1 + 32, (a1 + 104), 2);
  *(a1 + 696) = 0;
  v6 = sub_23948B4CC();
  if (os_signpost_enabled(v6))
  {
    v10 = 136315394;
    *v11 = "CASESession";
    *&v11[8] = 2080;
    *&v11[10] = "HandleSigma2_and_SendSigma3";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v10, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t sub_2393E5904(uint64_t a1, void *a2)
{
  v76[2] = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "HandleSigma2";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v5 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Received Sigma2 msg", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0xBu, 2);
  }

  if (!*(a1 + 392))
  {
    v18 = 0x5B800000000;
    v19 = 172;
    goto LABEL_25;
  }

  v6 = *(*a2 + 8);
  if (!v6)
  {
    v18 = 0x5BC00000000;
    v19 = 13;
    goto LABEL_25;
  }

  v7 = *(a1 + 552);
  if (!v7)
  {
    v18 = 0x5C000000000;
    v19 = 3;
    goto LABEL_25;
  }

  v8 = *(*a2 + 24);
  v9 = sub_2394A7FC0(v7, *(a1 + 560));
  if (!v9)
  {
    v18 = 0x5C200000000;
    v19 = 3;
    goto LABEL_25;
  }

  v10 = *(v9 + 8);
  sub_2393C5AAC(v63);
  v64 = 0;
  sub_238DD2F90(v63, a2);
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v52 = sub_239476060();
  v53 = v11;
  v54 = 0;
  v56 = 0;
  v58 = 0;
  v60 = 1;
  v62 = 0;
  v12 = sub_2393E6778(v63, &v46);
  if (!v12)
  {
    v13 = v47;
    *(a1 + 320) = *v47;
    v15 = *(v13 + 32);
    v14 = *(v13 + 48);
    v16 = *(v13 + 16);
    *(a1 + 384) = *(v13 + 64);
    *(a1 + 352) = v15;
    *(a1 + 368) = v14;
    *(a1 + 336) = v16;
    v12 = (*(**(a1 + 392) + 32))(*(a1 + 392), a1 + 312, a1 + 400);
    if (!v12)
    {
      v23 = *(*(a1 + 544) + 40);
      v76[0] = 0;
      v76[1] = 0;
      v75 = v23;
      v70 = buf;
      v71 = 145;
      v45[0] = a1 + 520;
      v45[1] = 16;
      v12 = sub_2393E4BE0(a1, &v46, a1 + 312, v45, &v70);
      if (v12 || (sub_238DB6950(v45, v70, v71), *v65 = "Sigma2NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE", v66 = 6, v12 = (*(**(*(a1 + 544) + 40) + 56))(*(*(a1 + 544) + 40), a1 + 400, v45, v65, v76), v12) || (sub_238DB6950(buf, v6, v8), v12 = sub_2393F7FF0((a1 + 192)), v12))
      {
        v17 = v12;
LABEL_32:
        (*(*v75 + 40))(v75, v76);
        sub_2393F9144(v76, 16);
        goto LABEL_14;
      }

      v24 = sub_2393F7C50(v50, *(&v50 + 1), 0, 0, v51, *(&v51 + 1), v76, "NCASE_Sigma2NSigma3NCASE_Sigma3NN4chip11CASESessionE", 13, v50);
      v12 = v24;
      if (v24)
      {
        v17 = v24;
        goto LABEL_32;
      }

      v49 = v48;
      v48 = 0uLL;
      v25 = *(&v50 + 1);
      sub_2393C5AAC(v45);
      sub_2393C5ADC(v45, v49, v25);
      v74[8] = 0;
      memset(buf, 0, sizeof(buf));
      __src = 0u;
      v26 = sub_2393E699C(v45, buf);
      v12 = v26;
      if (v26)
      {
        v17 = v26;
      }

      else
      {
        v70 = &unk_284BB9138;
        *v65 = 0;
        v44[0] = 0;
        v43[0] = 0;
        v27 = sub_2393E6B40(a1);
        v12 = v27;
        if (v27)
        {
          v17 = v27;
        }

        else
        {
          v28 = sub_2394A79FC(*(a1 + 552), *(a1 + 560), *buf, *&buf[8], *&buf[16], *&buf[24], a1 + 440, v44, v43, v65, &v70, 0);
          v12 = v28;
          if (v28)
          {
            v17 = v28;
          }

          else
          {
            if (v10 == v43[0])
            {
              if (*(a1 + 568) == *v65)
              {
                v29 = *&buf[8] + *&buf[24];
                v42 = sub_2393D52C4(*&buf[8] + *&buf[24] + 148);
                if (v42)
                {
                  sub_238DB9BD8(v44, v42, v29 + 148);
                  sub_238DB6950(v65, a1 + 320, 65);
                  v30 = (*(**(a1 + 392) + 40))(*(a1 + 392));
                  (*(**(a1 + 392) + 40))(*(a1 + 392));
                  v31 = sub_238DB6950(v43, v30 + 8, 65);
                  v12 = sub_2393E4D5C(v31, buf, &buf[16], v65, v43, v44);
                  if (!v12)
                  {
                    v12 = sub_2393F8AC4(&v70, v44[0], v44[1], v74);
                    if (!v12)
                    {
                      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
                      {
                        v32 = (*(*a1 + 48))(a1) >> 32;
                        v33 = (*(*a1 + 48))(a1);
                        (*(*a1 + 48))(a1);
                        *v65 = 67109888;
                        *&v65[4] = v32;
                        LOWORD(v66) = 1024;
                        *(&v66 + 2) = v33;
                        HIWORD(v66) = 1024;
                        v67 = v34;
                        v68 = 1024;
                        v69 = v61;
                        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Peer <%08X%08X, %d> assigned session ID %d", v65, 0x1Au);
                      }

                      if (sub_2393D5398(3u))
                      {
                        v35 = (*(*a1 + 48))(a1) >> 32;
                        (*(*a1 + 48))(a1);
                        (*(*a1 + 48))(a1);
                        sub_2393D5320(0xBu, 3);
                      }

                      v36 = v61;
                      *(a1 + 176) = 1;
                      *(a1 + 178) = v36;
                      if (*(&__src + 1))
                      {
                        memmove((a1 + 612), __src, *(&__src + 1));
                      }

                      v12 = sub_2394A052C(buf, a1 + 584);
                      if (!v12)
                      {
                        if (v62 == 1)
                        {
                          *(a1 + 144) = v52;
                          *(a1 + 152) = v53;
                          v37 = v54;
                          *(a1 + 156) = v54;
                          if (v37 == 1)
                          {
                            *(a1 + 158) = v55;
                          }

                          v38 = v56;
                          *(a1 + 160) = v56;
                          if (v38 == 1)
                          {
                            *(a1 + 162) = v57;
                          }

                          v39 = v58;
                          *(a1 + 164) = v58;
                          if (v39 == 1)
                          {
                            *(a1 + 168) = v59;
                          }

                          *(a1 + 172) = v60;
                          v40 = sub_2393E088C((a1 + 104));
                          sub_238EA6DC0(*v40, v65);
                          v41 = sub_2394953AC(*v65);
                          sub_2393E96A8(v41 + 112, (a1 + 144));
                          (*(**v65 + 32))(*v65);
                        }

                        v12 = 0;
                      }
                    }
                  }

                  j__free(v42);
                  v17 = v12;
                }

                else
                {
                  v12 = 0x60400000000;
                  v17 = 11;
                }

                goto LABEL_57;
              }

              v12 = 0x5F900000000;
            }

            else
            {
              v12 = 0x5F600000000;
            }

            v17 = 84;
          }
        }
      }

LABEL_57:
      sub_2393F9144(v74, 64);
      goto LABEL_32;
    }
  }

  v17 = v12;
LABEL_14:
  if (v49)
  {
    j__free(v49);
    *&v49 = 0;
  }

  if (v48)
  {
    j__free(v48);
  }

  v18 = v12 & 0xFFFFFFFF00000000;
  if (v64)
  {
    sub_2393D96C8(v64);
  }

  v19 = v17;
LABEL_25:
  v20 = sub_23948B4CC();
  if (os_signpost_enabled(v20))
  {
    *buf = 136315394;
    *&buf[4] = "CASESession";
    *&buf[12] = 2080;
    *&buf[14] = "HandleSigma2";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v20, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v21 = *MEMORY[0x277D85DE8];
  return v19 | v18;
}

void sub_2393E62B4(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sub_23948B4CC();
  if (os_signpost_enabled(v2))
  {
    buf[0] = 136315394;
    *&buf[1] = "CASESession";
    v5 = 2080;
    v6 = "SendSigma3";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v3 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "Sending Sigma3", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0xBu, 3);
  }

  sub_2393E6D80(a1, sub_2393E6E58, sub_2393E7048, 0);
}

unint64_t sub_2393E6778(uint64_t a1, uint64_t a2)
{
  v12 = 21;
  v4 = sub_2393C7114(a1, 21, 256);
  if (!v4)
  {
    v4 = sub_2393C6A2C(a1, &v12);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C6FD0(a1, 1);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C76AC(a1, a2);
    if (v4)
    {
      goto LABEL_6;
    }

    if (*(a2 + 8) != 32)
    {
      LODWORD(v4) = 84;
      v5 = 0x62C00000000;
      return v5 | v4;
    }

    v4 = sub_2393C6FD0(a1, 2);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C5F70(a1, (a2 + 128));
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C6FD0(a1, 3);
    if (v4)
    {
      goto LABEL_6;
    }

    v4 = sub_2393C76AC(a1, (a2 + 16));
    if (v4)
    {
      goto LABEL_6;
    }

    if (*(a2 + 24) != 65)
    {
      LODWORD(v4) = 84;
      v5 = 0x63500000000;
      return v5 | v4;
    }

    v4 = sub_2393C6FD0(a1, 4);
    if (v4)
    {
      goto LABEL_6;
    }

    v7 = sub_2393C5CB8(a1);
    if (v7 > 0x406)
    {
      LODWORD(v4) = 35;
      v5 = 0x64400000000;
      return v5 | v4;
    }

    v8 = v7;
    if (v7 < 0x11)
    {
      LODWORD(v4) = 35;
      v5 = 0x64500000000;
      return v5 | v4;
    }

    sub_2393C56C0((a2 + 32), v7);
    v9 = *(a2 + 32);
    if (!v9)
    {
      LODWORD(v4) = 11;
      v5 = 0x64600000000;
      return v5 | v4;
    }

    *(a2 + 40) = v8;
    v4 = sub_2393C6430(a1, v9, v8);
    if (v4)
    {
      goto LABEL_6;
    }

    v10 = v8 - 16;
    sub_238DB9BD8(&v11, *(a2 + 32), v10);
    *(a2 + 64) = v11;
    sub_238DB6950(&v11, *(a2 + 32) + v10, 16);
    *(a2 + 80) = v11;
    v4 = sub_2393C6B34(a1);
    if (v4)
    {
      goto LABEL_24;
    }

    if (*(a1 + 16) == 5)
    {
      v4 = sub_2393EFF04(5, a1, a2 + 96);
      if (v4)
      {
LABEL_6:
        v5 = v4 & 0xFFFFFFFF00000000;
        return v5 | v4;
      }

      *(a2 + 130) = 1;
      v4 = sub_2393C6B34(a1);
      if (v4)
      {
LABEL_24:
        if (v4 != 33)
        {
          goto LABEL_6;
        }
      }
    }

    v4 = sub_2393C6A98(a1, v12);
    if (!v4)
    {
      v5 = 0;
      return v5 | v4;
    }

    goto LABEL_6;
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v5 | v4;
}

unint64_t sub_2393E699C(uint64_t a1, uint64_t a2)
{
  v8 = 21;
  v4 = sub_2393C7114(a1, 21, 256);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393C6A2C(a1, &v8);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393C6FD0(a1, 1);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393C76AC(a1, a2);
  if (v4)
  {
    goto LABEL_5;
  }

  if (*(a2 + 8) > 0x190uLL)
  {
    v5 = 0x66E00000000;
    goto LABEL_23;
  }

  v4 = sub_2393C6B34(a1);
  if (v4)
  {
    goto LABEL_5;
  }

  v7 = *(a1 + 16);
  if (v7 == 2)
  {
    v4 = sub_2393C76AC(a1, (a2 + 16));
    if (v4)
    {
      goto LABEL_5;
    }

    if (*(a2 + 24) <= 0x190uLL)
    {
      v4 = sub_2393C7114(a1, 16, 3);
      if (v4)
      {
        goto LABEL_5;
      }

      v7 = *(a1 + 16);
      goto LABEL_14;
    }

    v5 = 0x67400000000;
LABEL_23:
    LODWORD(v4) = 84;
    return v4 | v5;
  }

LABEL_14:
  if (v7 != 3)
  {
    v5 = 0x67900000000;
    LODWORD(v4) = 36;
    return v4 | v5;
  }

  if (sub_2393C5CB8(a1) != 64)
  {
    v5 = 0x67C00000000;
    LODWORD(v4) = 35;
    return v4 | v5;
  }

  *(a2 + 112) = 64;
  v4 = sub_2393C6430(a1, (a2 + 48), 0x40uLL);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393C6FD0(a1, 4);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393C76AC(a1, (a2 + 32));
  if (v4)
  {
    goto LABEL_5;
  }

  if (*(a2 + 40) != 16)
  {
    v5 = 0x68500000000;
    goto LABEL_23;
  }

  v4 = sub_2393C6A98(a1, v8);
  if (!v4)
  {
    v5 = 0;
    LODWORD(v4) = 0;
    return v4 | v5;
  }

LABEL_5:
  v5 = v4 & 0xFFFFFFFF00000000;
  return v4 | v5;
}

uint64_t sub_2393E6B40(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if ((*(*off_27DF765E8 + 6))(off_27DF765E8, &v10))
  {
    v2 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = sub_2393C9138();
      *buf = 136315138;
      v12 = v3;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "The device does not support GetClock_RealTimeMS() API: %s.  Falling back to Last Known Good UTC Time", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0xBu, 1);
    }

    v4 = *(a1 + 552);
    if (v4)
    {
      if (*(v4 + 2632))
      {
        v5 = sub_2393BE2E0((v4 + 2632));
        v6 = 0;
        v7 = 0;
        *(a1 + 448) = *v5;
        *(a1 + 440) = 1;
      }

      else
      {
        if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "Failed to retrieve Last Known Good UTC Time", buf, 2u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(0xBu, 1);
        }

        v6 = 0;
        v7 = 0;
      }
    }

    else
    {
      v6 = 0x8EF00000000;
      v7 = 3;
    }
  }

  else
  {
    *buf = 0;
    if (sub_2393D8A84(v10 / 0x3E8, buf))
    {
      v6 = 0;
      v7 = 0;
      *(a1 + 448) = *buf;
      *(a1 + 440) = 0;
    }

    else
    {
      v6 = 0x5A00000000;
      v7 = 134;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7 | v6;
}

void sub_2393E6D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2393D52C4(0x110uLL);
  if (v8)
  {
    *v8 = 0u;
    v8[1] = 0u;
    *(v8 + 4) = a1;
    *(v8 + 5) = a2;
    *(v8 + 6) = a3;
    *(v8 + 7) = a4;
    *(v8 + 80) = 0;
    *(v8 + 33) = 0;
    v8[7] = 0u;
    v8[8] = 0u;
    *(v8 + 152) = 0u;
    *(v8 + 168) = 0u;
    *(v8 + 184) = 0u;
  }

  operator new();
}

unint64_t sub_2393E6E58(unsigned __int8 *a1)
{
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    sub_238DB6950(v16, *(a1 + 4), *(a1 + 5));
    v4 = (*(*v2 + 96))(v2, v3, v16, a1 + 112);
    if (v4)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    v6 = *a1;
    sub_238DB6950(v16, *(a1 + 4), *(a1 + 5));
    v4 = sub_2394AB310(v5, v6, v16[0], v16[1], (a1 + 112));
    if (v4)
    {
      goto LABEL_8;
    }
  }

  v7 = *(a1 + 13) + *(a1 + 10) + *(a1 + 22);
  *(a1 + 7) = v7 + 14;
  sub_2393C56C0(a1 + 6, v7 + 30);
  if (!*(a1 + 6))
  {
    v8 = 0x6F400000000;
    LODWORD(v4) = 11;
    return v8 | v4;
  }

  sub_2393C7B90(v16);
  v15 = -1;
  sub_2393C7BB8(v16, *(a1 + 6), *(a1 + 7));
  v4 = sub_2393C8CE0(v16, 0x100uLL, 21, &v15);
  if (!v4)
  {
    sub_238DB6950(&v13, *(a1 + 12), *(a1 + 13));
    v4 = sub_2393C8364(v16, 1uLL, v13, v14);
    if (!v4)
    {
      v10 = *(a1 + 10);
      if (!v10 || (sub_238DB6950(&v13, *(a1 + 9), v10), v4 = sub_2393C8364(v16, 2uLL, v13, v14), !v4))
      {
        v11 = *(a1 + 8);
        if (v11)
        {
          j__free(v11);
          *(a1 + 8) = 0;
        }

        *(a1 + 9) = 0;
        *(a1 + 10) = 0;
        v12 = *(a1 + 11);
        if (v12)
        {
          j__free(v12);
          *(a1 + 11) = 0;
        }

        *(a1 + 12) = 0;
        *(a1 + 13) = 0;
        v4 = sub_2393C83AC(v16, 3uLL, a1 + 112, *(a1 + 44));
        if (!v4)
        {
          v4 = sub_2393C8DE0(v16, v15);
          if (!v4)
          {
            v4 = sub_2393C7CB8(v16);
            if (!v4)
            {
              LODWORD(v4) = 0;
              v8 = 0;
              *(a1 + 7) = v17;
              return v8 | v4;
            }
          }
        }
      }
    }
  }

LABEL_8:
  v8 = v4 & 0xFFFFFFFF00000000;
  return v8 | v4;
}

unint64_t sub_2393E7048(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v5 = *(*(a1 + 544) + 40);
  v25[0] = 0;
  v25[1] = 0;
  v24 = v5;
  if (*(a2 + 16) && *(a1 + 696) != 8)
  {
    sub_23953124C();
  }

  if (a3)
  {
    v6 = a3;
    v7 = HIDWORD(a3);
    goto LABEL_8;
  }

  *buf = &v26;
  v18 = 48;
  v22[0] = a1 + 520;
  v22[1] = 16;
  v8 = sub_2393E7668(a1, v22, buf);
  if (v8)
  {
    goto LABEL_7;
  }

  sub_238DB6950(v22, *buf, v18);
  v21[0] = "Sigma3NCASE_Sigma3NN4chip11CASESessionE";
  v21[1] = 6;
  v8 = (*(**(*(a1 + 544) + 40) + 56))(*(*(a1 + 544) + 40), a1 + 400, v22, v21, v25);
  if (v8)
  {
    goto LABEL_7;
  }

  v12 = sub_2393F7A34(*(a2 + 48), *(a2 + 56), 0, 0, v25, "NCASE_Sigma3NN4chip11CASESessionE", 0xDuLL, *(a2 + 48), (*(a2 + 48) + *(a2 + 56)), 16);
  v6 = v12;
  if (v12)
  {
    v7 = HIDWORD(v12);
  }

  else
  {
    sub_2393D9C18(*(a2 + 56) + 26, 0x26u, buf);
    v23 = *buf;
    if (*buf)
    {
      sub_2393C7B90(buf);
      v19[1] = 0;
      v19[2] = 0;
      v19[0] = &unk_284BB83A8;
      v20 = 0;
      LODWORD(v22[0]) = -1;
      sub_238EA16C4(v19, &v23, 0);
      sub_2393C7BF0(buf, v19, 0xFFFFFFFF);
      v13 = sub_2393C8CE0(buf, 0x100uLL, 21, v22);
      if (v13 || (v13 = sub_2393C83AC(buf, 1uLL, *(a2 + 48), *(a2 + 56) + 16), v13) || (v13 = sub_2393C8DE0(buf, v22[0]), v13) || (v13 = sub_238DD2EFC(buf, &v23), v13))
      {
        v7 = HIDWORD(v13);
        sub_2393B8400(v19);
        v6 = v13;
      }

      else
      {
        sub_2393B8400(v19);
        sub_238DB6950(buf, *(v23 + 1), *(v23 + 3));
        v8 = sub_2393F7FF0((a1 + 192));
        if (v8 || (v14 = *sub_2393E088C((a1 + 104)), *buf = 1, v8 = sub_239470478(v14, 0, 50, &v23, buf), v8))
        {
LABEL_7:
          v7 = HIDWORD(v8);
          v6 = v8;
          goto LABEL_8;
        }

        v15 = sub_2393D9044(0xBu);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_DEFAULT, "Sent Sigma3 msg", buf, 2u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(0xBu, 2);
        }

        *buf = a1 + 488;
        v18 = 32;
        v16 = sub_2393F817C((a1 + 192), buf);
        v7 = HIDWORD(v16);
        v6 = v16;
        if (!v16)
        {
          *(a1 + 696) = 3;
        }
      }
    }

    else
    {
      v6 = 11;
      v7 = 1845;
    }
  }

LABEL_8:
  v9 = *(a1 + 672);
  *(a1 + 664) = 0u;
  if (v9)
  {
    sub_238EF79DC(v9);
  }

  if (*(a2 + 16) && v6)
  {
    sub_2393E3ED8(a1 + 32, (a1 + 104), 2);
    sub_2393EFD90(a1 + 32);
    sub_2393DFAD4(a1, v6);
  }

  (*(*v24 + 40))(v24, v25);
  sub_2393F9144(v25, 16);
  if (v23)
  {
    sub_2393D96C8(v23);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6 | (v7 << 32);
}

unint64_t sub_2393E7470(void *a1)
{
  v1 = atomic_load(a1 + 4);
  if (v1 && a1[5] && a1[7] & 1 | a1[6])
  {
    v3 = a1[1];
    if (v3 && (v3 = std::__shared_weak_count::lock(v3)) != 0)
    {
      v4 = *a1;
    }

    else
    {
      v4 = 0;
    }

    v8 = a1[3];
    a1[2] = v4;
    a1[3] = v3;
    if (v8)
    {
      sub_238EF79DC(v8);
    }

    if (qword_27DF7BD08 != -1)
    {
      sub_2395312BC(v3);
    }

    v9 = sub_2394796B0(algn_27DF7BCB8, sub_2393E9B58, a1);
    v5 = v9;
    v6 = HIDWORD(v9);
    if (v9)
    {
      v10 = a1[3];
      a1[2] = 0;
      a1[3] = 0;
      if (v10)
      {
        sub_238EF79DC(v10);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 3;
    LODWORD(v6) = 224;
  }

  return v5 | (v6 << 32);
}

unint64_t sub_2393E756C(unint64_t *a1)
{
  sub_23947632C("src/protocols/secure_channel/CASESession.cpp", 207);
  v2 = atomic_load(a1 + 4);
  if (v2 && (v3 = a1[5]) != 0 && a1[7] & 1 | a1[6])
  {
    v14 = 0;
    v4 = v3(a1 + 11, &v14);
    a1[8] = v4;
    a1[9] = v5;
    if ((v14 & 1) == 0)
    {
      v8 = atomic_load(a1 + 4);
      v9 = a1[6];
      v10 = a1[7];
      v11 = (v8 + (v10 >> 1));
      if (v10)
      {
        v9 = *(*v11 + v9);
      }

      v4 = v9(v11, a1 + 11, a1[8], a1[9]);
      a1[8] = v4;
      a1[9] = v12;
    }

    v6 = v4 & 0xFFFFFFFF00000000;
    v7 = v4;
  }

  else
  {
    v6 = 0xD100000000;
    v7 = 3;
  }

  return v7 | v6;
}

unint64_t sub_2393E7668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  bzero(*a3, *(a3 + 8));
  v6 = *(a3 + 8);
  v15 = *a3;
  v16 = v6;
  v17 = 0;
  if (!v15)
  {
    v16 = 0;
  }

  sub_2393D5CDC(&v15, *a2, *(a2 + 8));
  v13 = &v18;
  v14 = 32;
  v7 = sub_2393F80A0((a1 + 192), &v13);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_2393D5CDC(&v15, v13, v14);
    if (v16 >= v17)
    {
      v9 = sub_2393E8774(a3, 0, v17);
      LODWORD(v7) = 0;
      v8 = 0;
      *a3 = v9;
      *(a3 + 8) = v10;
    }

    else
    {
      v8 = 0x89000000000;
      LODWORD(v7) = 25;
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8 | v7;
}

void sub_2393E7770(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    buf = 136315394;
    *buf_4 = "CASESession";
    *&buf_4[8] = 2080;
    *&buf_4[10] = "HandleSigma3";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &buf, 0x16u);
  }

  sub_2393C5AAC(v11);
  v10 = 21;
  v5 = *(*a2 + 8);
  v6 = *(*a2 + 24);
  v7 = *(*(a1 + 544) + 40);
  v15 = 0;
  v16 = 0;
  v14 = v7;
  v8 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Received Sigma3 msg", &buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0xBu, 2);
  }

  v9 = sub_23948B4CC();
  if (os_signpost_enabled(v9))
  {
    ++dword_27DF77758;
    buf = 67109120;
    *buf_4 = dword_27DF77758;
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Sigma3", "%u", &buf, 8u);
  }

  buf = 1;
  *&buf_4[4] = "core_dev_case_session_sigma2";
  *&buf_4[12] = 0;
  buf_4[16] = 3;
  sub_23948BD20(&buf);
  sub_2393E7F20(a1, sub_2393E8010, sub_2393E8110, 0);
}

void sub_2393E7F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2393D52C4(0x2B0uLL);
  if (v8)
  {
    *v8 = 0u;
    v8[1] = 0u;
    *(v8 + 4) = a1;
    *(v8 + 5) = a2;
    *(v8 + 6) = a3;
    *(v8 + 7) = a4;
    *(v8 + 80) = 0;
    v8[34] = 0u;
    *(v8 + 78) = 0;
    *(v8 + 88) = 0u;
    *(v8 + 104) = 0u;
    *(v8 + 120) = 0u;
    *(v8 + 17) = 0;
    *(v8 + 81) = -1;
    *(v8 + 336) = 0;
    *(v8 + 674) = 0;
    *(v8 + 85) = 0;
  }

  operator new();
}

unint64_t sub_2393E8010(uint64_t a1)
{
  v8[10] = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = 0;
  v8[0] = &unk_284BB9138;
  v2 = sub_2394A7394(*(a1 + 24), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 456), *(a1 + 464), a1 + 560, &v7, &v6, (a1 + 552), v8, 0);
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFF00000000;
  }

  else if (*(a1 + 544) == v6)
  {
    v2 = sub_2393F8AC4(v8, *(a1 + 8), *(a1 + 16), a1 + 472);
    v3 = v2 & 0xFFFFFFFF00000000;
    if (!v2)
    {
      LODWORD(v2) = 0;
      v3 = 0;
    }
  }

  else
  {
    v3 = 0x82F00000000;
    LODWORD(v2) = 84;
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3 | v2;
}

unint64_t sub_2393E8110(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 696) == 9)
  {
    if (a3)
    {
      v4 = a3;
      v5 = HIDWORD(a3);
    }

    else
    {
      *(a1 + 568) = *(a2 + 552);
      *&buf = a1 + 488;
      *(&buf + 1) = 32;
      v7 = sub_2393F817C((a1 + 192), &buf);
      v4 = v7;
      if (v7)
      {
        v5 = HIDWORD(v7);
      }

      else
      {
        v12 = sub_2394A052C(a2 + 24, a1 + 584);
        v5 = HIDWORD(v12);
        v4 = v12;
        if (!v12)
        {
          v13 = *(a1 + 536);
          if (v13)
          {
            *&buf = (*(*a1 + 48))(a1);
            BYTE8(buf) = v14;
            if ((*(*v13 + 32))(v13, &buf, a1 + 612, a1 + 400, a1 + 584))
            {
              v15 = sub_2393D9044(0xBu);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                v16 = sub_2393C9138();
                LODWORD(buf) = 136315138;
                *(&buf + 4) = v16;
                _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Unable to save session resumption state: %s", &buf, 0xCu);
              }

              if (sub_2393D5398(1u))
              {
                sub_2393C9138();
                sub_2393D5320(0xBu, 1);
              }
            }
          }

          LODWORD(buf) = 2;
          *(&buf + 1) = "core_dev_case_session_sigma_finished";
          v18 = 0;
          sub_23948BD20(&buf);
          sub_2393E3ED8(a1 + 32, (a1 + 104), 0);
          *(a1 + 696) = 6;
          sub_2393EF9A4(a1 + 32);
        }
      }
    }
  }

  else
  {
    v4 = 3;
    v5 = 2108;
  }

  v8 = *(a1 + 688);
  *(a1 + 680) = 0u;
  if (v8)
  {
    sub_238EF79DC(v8);
  }

  if (v4)
  {
    sub_2393E3ED8(a1 + 32, (a1 + 104), 2);
    sub_2393EFD90(a1 + 32);
    v9 = v4 | (v5 << 32);
    sub_2393DFAD4(a1, v9);
  }

  else
  {
    v9 = v5 << 32;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

unint64_t sub_2393E83AC(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  v16 = 21;
  v8 = sub_2393C7114(a1, 21, 256);
  if (v8)
  {
    goto LABEL_4;
  }

  v8 = sub_2393C6A2C(a1, &v16);
  if (v8)
  {
    goto LABEL_4;
  }

  v8 = sub_2393C6FD0(a1, 1);
  if (v8)
  {
    goto LABEL_4;
  }

  v11 = sub_2393C5CB8(a1);
  if (v11 > 0x3F2)
  {
    v9 = 0x7F700000000;
LABEL_14:
    LODWORD(v8) = 35;
    return v9 | v8;
  }

  v12 = v11;
  if (v11 < 0x11)
  {
    v9 = 0x7F800000000;
    goto LABEL_14;
  }

  sub_2393C56C0(a2, v11);
  v13 = *a2;
  if (!*a2)
  {
    v9 = 0x7F900000000;
    LODWORD(v8) = 11;
    return v9 | v8;
  }

  *(a2 + 8) = v12;
  v8 = sub_2393C6430(a1, v13, v12);
  if (!v8)
  {
    v14 = v12 - 16;
    sub_238DB9BD8(&v15, *a2, v14);
    *a3 = v15;
    sub_238DB6950(&v15, *a2 + v14, 16);
    *a4 = v15;
    v8 = sub_2393C6A98(a1, v16);
    if (!v8)
    {
      LODWORD(v8) = 0;
      v9 = 0;
      return v9 | v8;
    }
  }

LABEL_4:
  v9 = v8 & 0xFFFFFFFF00000000;
  return v9 | v8;
}

unint64_t sub_2393E8508(uint64_t a1, uint64_t a2)
{
  v8 = 21;
  v4 = sub_2393C7114(a1, 21, 256);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393C6A2C(a1, &v8);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393C6FD0(a1, 1);
  if (v4)
  {
    goto LABEL_5;
  }

  v4 = sub_2393C76AC(a1, (a2 + 24));
  if (v4)
  {
    goto LABEL_5;
  }

  if (*(a2 + 32) > 0x190uLL)
  {
    v5 = 0x80F00000000;
    goto LABEL_20;
  }

  v4 = sub_2393C6B34(a1);
  if (v4)
  {
    goto LABEL_5;
  }

  v7 = *(a1 + 16);
  if (v7 == 2)
  {
    v4 = sub_2393C76AC(a1, (a2 + 40));
    if (v4)
    {
      goto LABEL_5;
    }

    if (*(a2 + 48) <= 0x190uLL)
    {
      v4 = sub_2393C7114(a1, 16, 3);
      if (v4)
      {
        goto LABEL_5;
      }

      v7 = *(a1 + 16);
      goto LABEL_14;
    }

    v5 = 0x81500000000;
LABEL_20:
    LODWORD(v4) = 84;
    return v4 | v5;
  }

LABEL_14:
  if (v7 != 3)
  {
    v5 = 0x81900000000;
    LODWORD(v4) = 36;
    return v4 | v5;
  }

  if (sub_2393C5CB8(a1) != 64)
  {
    v5 = 0x81B00000000;
    LODWORD(v4) = 35;
    return v4 | v5;
  }

  *(a2 + 536) = 64;
  v4 = sub_2393C6430(a1, (a2 + 472), 0x40uLL);
  if (!v4)
  {
    v4 = sub_2393C6A98(a1, v8);
    if (!v4)
    {
      v5 = 0;
      LODWORD(v4) = 0;
      return v4 | v5;
    }
  }

LABEL_5:
  v5 = v4 & 0xFFFFFFFF00000000;
  return v4 | v5;
}

unint64_t sub_2393E8678(void *a1)
{
  v1 = atomic_load(a1 + 4);
  if (v1 && a1[5] && a1[7] & 1 | a1[6])
  {
    v3 = a1[1];
    if (v3 && (v3 = std::__shared_weak_count::lock(v3)) != 0)
    {
      v4 = *a1;
    }

    else
    {
      v4 = 0;
    }

    v8 = a1[3];
    a1[2] = v4;
    a1[3] = v3;
    if (v8)
    {
      sub_238EF79DC(v8);
    }

    if (qword_27DF7BD08 != -1)
    {
      sub_2395312BC(v3);
    }

    v9 = sub_2394796B0(algn_27DF7BCB8, sub_2393E9EB4, a1);
    v5 = v9;
    v6 = HIDWORD(v9);
    if (v9)
    {
      v10 = a1[3];
      a1[2] = 0;
      a1[3] = 0;
      if (v10)
      {
        sub_238EF79DC(v10);
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 3;
    LODWORD(v6) = 224;
  }

  return v5 | (v6 << 32);
}

uint64_t sub_2393E8774(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    sub_239531374();
  }

  if (v5 < a3)
  {
    sub_2395312DC();
  }

  sub_238DB9BD8(&v7, *a1 + a2, a3);
  return v7;
}

uint64_t sub_2393E87C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = v15;
  v14 = xmmword_2395C2210;
  memset(v15, 0, sizeof(v15));
  sub_2393D5CDC(&v13, *a2, *(a2 + 8));
  sub_2393D5CDC(&v13, *a3, *(a3 + 8));
  if (v14 >= *(&v14 + 1))
  {
    v12[0] = v15;
    v12[1] = *(&v14 + 1);
    result = (*(**(*(a1 + 544) + 40) + 56))(*(*(a1 + 544) + 40), a1 + 400, v12, a4, a6 + 8);
  }

  else
  {
    result = 0x8A300000019;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393E88C8(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "Success status report received. Session was established", buf, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0xBu, 2);
  }

  v3 = *(a1 + 536);
  if (v3)
  {
    *buf = (*(*a1 + 48))(a1);
    buf[8] = v4;
    if ((*(*v3 + 32))(v3, buf, a1 + 612, a1 + 400, a1 + 584))
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v5 = sub_2393C9138();
        *buf = 136315138;
        *&buf[4] = v5;
        _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_ERROR, "Unable to save session resumption state: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0xBu, 1);
      }
    }
  }

  v6 = *(a1 + 696);
  if (v6 == 3)
  {
    v7 = 6;
  }

  else
  {
    if (v6 != 5)
    {
      sub_2395314A4();
    }

    v7 = 7;
  }

  *(a1 + 696) = v7;
  result = sub_2393EF9A4(a1 + 32);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393E8AC0(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (a3 == 4)
  {
    if (*a4 == 1)
    {
      v10 = *(a1 + 120);
      v11 = sub_2393E088C(a4);
      (*(*v10 + 32))(v10, *v11);
    }

    v8 = 0x92900000000;
    v9 = 219;
  }

  else
  {
    v6 = 0x93100000000;
    v7 = 172;
    if (a3 == 1)
    {
      v6 = 0x92500000000;
      v7 = 201;
    }

    if (a3 == 2)
    {
      v8 = 0x92100000000;
    }

    else
    {
      v8 = v6;
    }

    if (a3 == 2)
    {
      v9 = 84;
    }

    else
    {
      v9 = v7;
    }
  }

  *(a1 + 696) = 0;
  v12 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109378;
    v16 = a3;
    v17 = 2080;
    v18 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "Received error (protocol code %d) during pairing process: %s", buf, 0x12u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393C9138();
    sub_2393D5320(0xBu, 1);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9 | v8;
}

uint64_t sub_2393E8C68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (!a2)
  {
    v8 = 0x98C00000000;
    v9 = 47;
    return v9 | v8;
  }

  v6 = (a1 + 104);
  v5 = *(a1 + 104);
  v7 = (a1 + 104);
  if (v5 == 1)
  {
    if (*sub_2393E088C(v7) != a2)
    {
      v8 = 0x99500000000;
      v9 = 47;
      return v9 | v8;
    }
  }

  else
  {
    sub_2393E0838(v7, a2);
  }

  v10 = sub_2393E088C(v6);
  sub_239470428(*v10, 30000);
  if (*a4)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0x99E00000000;
  }

  if (*a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = 47;
  }

  *a4;
  return v9 | v8;
}

unint64_t sub_2393E8D2C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    *v24 = "CASESession";
    *&v24[8] = 2080;
    *&v24[10] = "OnMessageReceived";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v10 = sub_2393E8C68(a1, a2, v9, a4);
  v11 = *a3;
  if (!v10)
  {
    v13 = *(a1 + 696);
    v12 = 2507;
    if (v13 <= 2)
    {
      if (!*(a1 + 696))
      {
        if (v11 == 48)
        {
          v15 = sub_2393E2244(a1, a4);
LABEL_46:
          v10 = v15;
          goto LABEL_4;
        }

LABEL_31:
        v12 = 2507;
        goto LABEL_32;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          if (v11 != 64)
          {
            if (v11 == 50)
            {
              sub_2393E7770(a1, a4);
            }

            goto LABEL_31;
          }

          v10 = sub_2393E90E8(a1 + 32, a4, 0);
          *buf = 1;
          v21 = "core_dev_case_session_sigma2";
          goto LABEL_43;
        }

LABEL_32:
        v16 = sub_2393D9044(0xBu);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = *(a1 + 696);
          *buf = 67109376;
          *v24 = v11;
          *&v24[4] = 1024;
          *&v24[6] = v17;
          _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Received message (type %d) cannot be handled in %d state.", buf, 0xEu);
        }

        if (sub_2393D5398(1u))
        {
          v22 = *(a1 + 696);
          sub_2393D5320(0xBu, 1);
        }

        LODWORD(v10) = 42;
        goto LABEL_37;
      }

      if (v11 == 64)
      {
LABEL_41:
        v10 = sub_2393E90E8(a1 + 32, a4, 0);
        *buf = 1;
        v21 = "core_dev_case_session_sigma1";
LABEL_43:
        *&v24[4] = v21;
LABEL_44:
        *&v24[12] = v10;
        v24[16] = 3;
        sub_23948BD20(buf);
        goto LABEL_4;
      }

LABEL_29:
      if (v11 == 49)
      {
        v15 = sub_2393E5700(a1, a4);
        goto LABEL_46;
      }

      goto LABEL_31;
    }

    if (v13 != 3)
    {
      if (v13 == 4)
      {
        if (v11 == 64)
        {
          goto LABEL_41;
        }

        if (v11 == 51)
        {
          v15 = sub_2393E4E74(a1, a4);
          goto LABEL_46;
        }

        goto LABEL_29;
      }

      if (v13 != 5)
      {
        goto LABEL_32;
      }
    }

    if (v11 == 64)
    {
      if (v13 == 3)
      {
        v14 = "core_dev_case_session_sigma3";
      }

      else
      {
        v14 = "core_dev_case_session_sigma2_resume";
      }

      v10 = sub_2393E90E8(a1 + 32, a4, 1);
      *buf = 1;
      *&v24[4] = v14;
      goto LABEL_44;
    }

    goto LABEL_31;
  }

LABEL_4:
  v12 = HIDWORD(v10);
  if (!v10)
  {
    v10 = 0;
    goto LABEL_38;
  }

  if (v10 == 42)
  {
    goto LABEL_32;
  }

LABEL_37:
  sub_2393EFD90(a1 + 32);
  v10 = v10;
  sub_2393DFAD4(a1, v10);
LABEL_38:
  v18 = sub_23948B4CC();
  if (os_signpost_enabled(v18))
  {
    *buf = 136315394;
    *v24 = "CASESession";
    *&v24[8] = 2080;
    *&v24[10] = "OnMessageReceived";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v18, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v19 = *MEMORY[0x277D85DE8];
  return v10 | (v12 << 32);
}

unint64_t sub_2393E90E8(uint64_t a1, _WORD **a2, int a3)
{
  v24 = *MEMORY[0x277D85DE8];
  sub_23946FC58(&v16);
  v15 = *a2;
  *a2 = 0;
  v6 = sub_23946FCAC(&v16, &v15);
  if (v15)
  {
    sub_2393D96C8(v15);
  }

  v15 = 0;
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else if (v17)
  {
    v7 = 0xB000000000;
    LODWORD(v6) = 47;
  }

  else if (v16 || v18 || !a3)
  {
    if (sub_23946FE68(&v16) && (v8 = v19, (v19 & 0x10000) != 0))
    {
      v11 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v22 = v8;
        _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "Received busy status report with minimum wait time: %u ms", buf, 8u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0xBu, 2);
      }

      v9 = v16;
      v10 = v18;
      buf[0] = 1;
      v23 = v8;
    }

    else
    {
      v9 = v16;
      v10 = v18;
      buf[0] = 0;
    }

    v12 = (*(*a1 + 104))(a1, v9, v10, buf);
    LODWORD(v6) = v12;
    v7 = v12 & 0xFFFFFFFF00000000;
  }

  else
  {
    (*(*a1 + 96))(a1);
    v7 = 0;
    LODWORD(v6) = 0;
  }

  if (v20)
  {
    sub_2393D96C8(v20);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6 | v7;
}

uint64_t sub_2393E9314(int a1, uint64_t a2, int a3)
{
  sub_239476008(v15);
  v13 = sub_239476060();
  v14 = v6;
  if (v15[0] == 1)
  {
    v7 = sub_238DD173C(v15);
  }

  else
  {
    v7 = &v13;
  }

  v8 = sub_239476070(*(a2 + 4), *a2, 0, *(a2 + 8), a3) + a1;
  v10 = *v7;
  v9 = *(v7 + 1);
  v11 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  return v8 + sub_239476070(v9, v10, v11, *(v7 + 4), 0);
}

uint64_t sub_2393E93F8(uint64_t a1)
{
  v2 = *(a1 + 664);
  if (v2 && (v3 = atomic_load((v2 + 80)), (v3 & 1) != 0))
  {
    v4 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "SendSigma3Helper was unable to schedule the AfterWorkCallback", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0xBu, 1);
    }

    sub_2393E9528(*(a1 + 664));
    result = 1;
  }

  else
  {
    result = 0;
  }

  v6 = *(a1 + 680);
  if (v6)
  {
    v7 = atomic_load((v6 + 80));
    if (v7)
    {
      v8 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v9 = 0;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "HandleSigma3Helper was unable to schedule the AfterWorkCallback", v9, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0xBu, 1);
      }

      sub_2393E9554(*(a1 + 680));
      return 1;
    }
  }

  return result;
}

void sub_2393E9528(uint64_t a1)
{
  v2 = atomic_load((a1 + 80));
  if ((v2 & 1) == 0)
  {
    sub_23953153C();
  }

  sub_2393E9D08(a1);
}

void sub_2393E9554(uint64_t a1)
{
  v2 = atomic_load((a1 + 80));
  if ((v2 & 1) == 0)
  {
    sub_23953153C();
  }

  sub_2393EA064(a1);
}

void sub_2393E960C(int *a1)
{
  if (!*a1)
  {
    sub_2395315D4();
  }

  v2 = *a1 - 1;
  *a1 = v2;
  if (!v2)
  {
    v3 = (a1 - 7);

    sub_239470AB4(v3);
  }
}

int *sub_2393E9648(int *a1)
{
  v1 = *a1;
  if (*a1 == -1)
  {
    sub_23953166C();
  }

  if (!v1)
  {
    sub_239531704();
  }

  *a1 = v1 + 1;
  return a1 - 7;
}

_WORD *sub_2393E967C(_WORD *result)
{
  v1 = *result;
  if (v1 == 0xFFFF)
  {
    sub_23953166C();
  }

  *result = v1 + 1;
  return result;
}

uint64_t sub_2393E96A8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  LODWORD(v2) = *(a2 + 12);
  *(result + 12) = v2;
  if (v2 == 1)
  {
    *(result + 14) = *(a2 + 7);
  }

  v3 = *(a2 + 16);
  *(result + 16) = v3;
  if (v3 == 1)
  {
    *(result + 18) = *(a2 + 9);
  }

  v4 = *(a2 + 20);
  *(result + 20) = v4;
  if (v4 == 1)
  {
    *(result + 24) = *(a2 + 6);
  }

  *(result + 28) = *(a2 + 14);
  return result;
}

uint64_t *sub_2393E970C()
{
  if ((atomic_load_explicit(&qword_27DF765F8, memory_order_acquire) & 1) == 0)
  {
    sub_23953179C();
  }

  return &qword_27DF765F0;
}

uint64_t sub_2393E9744(uint64_t result)
{
  if (!*result)
  {
    sub_2395315D4();
  }

  v1 = *result - 1;
  *result = v1;
  if (!v1)
  {
    v2 = *(result + 104);
    if (v2)
    {
      v3 = *(*v2 + 48);

      return v3();
    }

    else
    {
      sub_2393E97BC();
      return sub_2393E97BC();
    }
  }

  return result;
}

uint64_t sub_2393E97D4(uint64_t a1, char *__str, size_t __size)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0uLL;
  v17 = 0;
  v7 = *(a1 + 20);
  v6 = (a1 + 20);
  if (v7 && sub_2393D00D4(v6, &v16 + 1, 0x10uLL))
  {
    v16 = *"%(err)";
    v17 = 0;
  }

  v8 = *(a1 + 16);
  if (v8 > 2)
  {
    if (v8 != 3)
    {
      if (v8 == 4)
      {
        result = snprintf(__str, __size, "Wi-Fi PAF");
        goto LABEL_22;
      }

      if (v8 == 5)
      {
        v10 = *(a1 + 24);
        result = snprintf(__str, __size, "NFC:%d");
        goto LABEL_22;
      }

      goto LABEL_16;
    }

    sub_2393CF6CC(a1, v18, 0x2Eu);
    v11 = sub_2393CFA1C(a1);
    v12 = *(a1 + 18);
    if (v11)
    {
      result = snprintf(__str, __size, "TCP:%s%s:%d");
    }

    else
    {
      result = snprintf(__str, __size, "TCP:[%s%s]:%d");
    }
  }

  else
  {
    if (!*(a1 + 16))
    {
      result = snprintf(__str, __size, "UNDEFINED");
      goto LABEL_22;
    }

    if (v8 != 1)
    {
      if (v8 == 2)
      {
        result = snprintf(__str, __size, "BLE");
        goto LABEL_22;
      }

LABEL_16:
      result = snprintf(__str, __size, "ERROR");
      goto LABEL_22;
    }

    sub_2393CF6CC(a1, v18, 0x2Eu);
    v13 = sub_2393CFA1C(a1);
    v14 = *(a1 + 18);
    if (v13)
    {
      result = snprintf(__str, __size, "UDP:%s%s:%d");
    }

    else
    {
      result = snprintf(__str, __size, "UDP:[%s%s]:%d");
    }
  }

LABEL_22:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2393E99A4(void *result, uint64_t a2)
{
  *result = a2;
  if (!a2)
  {
    sub_23953189C();
  }

  return result;
}

void *sub_2393E99C0(void *a1)
{
  v2 = a1 + 1;
  (*(**a1 + 40))(*a1, a1 + 1);
  sub_2393F9144(v2, 16);
  return a1;
}

void sub_2393E9A24(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2393E9A5C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = sub_2393E9AD0(v1);

    j__free(v2);
  }
}

uint64_t sub_2393E9A90(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB87C0))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_2393E9AD0(void *a1)
{
  sub_2393F9144(a1 + 25, 64);
  v2 = a1[22];
  if (v2)
  {
    j__free(v2);
    a1[22] = 0;
  }

  v3 = a1[19];
  if (v3)
  {
    j__free(v3);
    a1[19] = 0;
  }

  v4 = a1[17];
  if (v4)
  {
    j__free(v4);
    a1[17] = 0;
  }

  v5 = a1[14];
  if (v5)
  {
    j__free(v5);
    a1[14] = 0;
  }

  v6 = a1[3];
  if (v6)
  {
    sub_238EF79DC(v6);
  }

  v7 = a1[1];
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  return a1;
}

void sub_2393E9B58(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (atomic_load((a1 + 32)))
  {
    v16 = 0;
    v5 = (*(a1 + 40))(a1 + 88, &v16);
    *(a1 + 64) = v5;
    *(a1 + 72) = v6;
    if ((v16 & 1) == 0)
    {
      if (atomic_load((a1 + 32)))
      {
        v9 = *(a1 + 16);
        v8 = *(a1 + 24);
        *(a1 + 16) = v2;
        *(a1 + 24) = v1;
        if (qword_27DF7BD08 != -1)
        {
          sub_239531934(v5);
        }

        v11 = sub_2394796B0(algn_27DF7BCB8, sub_2393E9D08, a1);
        if (!v11)
        {
          v1 = v8;
          if (!v8)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        v12 = v10;
        v13 = sub_2393D9044(0xBu);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = sub_2393C9138();
          *buf = 136315138;
          v18 = v14;
          _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "Failed to Schedule the AfterWorkCallback on foreground thread: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(0xBu, 1);
        }

        *(a1 + 64) = v11;
        *(a1 + 72) = v12;
        v1 = *(a1 + 24);
        *(a1 + 16) = v9;
        *(a1 + 24) = v8;
        atomic_store(1u, (a1 + 80));
      }
    }
  }

  if (v1)
  {
LABEL_13:
    sub_238EF79DC(v1);
  }

LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
}

void sub_2393E9D08(void *a1)
{
  sub_23947632C("src/protocols/secure_channel/CASESession.cpp", 303);
  v2 = a1[2];
  v3 = a1[3];
  a1[2] = 0;
  a1[3] = 0;
  if (v2)
  {
    v4 = v3;
    goto LABEL_6;
  }

  v5 = a1[1];
  if (v5)
  {
    v4 = std::__shared_weak_count::lock(v5);
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = 0;
  if (v3)
  {
LABEL_5:
    sub_238EF79DC(v3);
  }

LABEL_6:
  v6 = atomic_load(a1 + 4);
  if (v6)
  {
    v7 = a1[6];
    v8 = a1[7];
    v9 = (v6 + (v8 >> 1));
    if (v8)
    {
      v7 = *(*v9 + v7);
    }

    v7(v9, a1 + 11, a1[8], a1[9]);
  }

  if (v4)
  {

    sub_238EF79DC(v4);
  }
}

void sub_2393E9DFC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    sub_2393F9144(v1 + 70, 64);
    v2 = v1[11];
    if (v2)
    {
      j__free(v2);
      v1[11] = 0;
    }

    v3 = v1[3];
    if (v3)
    {
      sub_238EF79DC(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    j__free(v1);
  }
}

uint64_t sub_2393E9E74(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BB8820))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_2393E9EB4(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (atomic_load((a1 + 32)))
  {
    v16 = 0;
    v5 = (*(a1 + 40))(a1 + 88, &v16);
    *(a1 + 64) = v5;
    *(a1 + 72) = v6;
    if ((v16 & 1) == 0)
    {
      if (atomic_load((a1 + 32)))
      {
        v9 = *(a1 + 16);
        v8 = *(a1 + 24);
        *(a1 + 16) = v2;
        *(a1 + 24) = v1;
        if (qword_27DF7BD08 != -1)
        {
          sub_239531934(v5);
        }

        v11 = sub_2394796B0(algn_27DF7BCB8, sub_2393EA064, a1);
        if (!v11)
        {
          v1 = v8;
          if (!v8)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

        v12 = v10;
        v13 = sub_2393D9044(0xBu);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v14 = sub_2393C9138();
          *buf = 136315138;
          v18 = v14;
          _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "Failed to Schedule the AfterWorkCallback on foreground thread: %s", buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(0xBu, 1);
        }

        *(a1 + 64) = v11;
        *(a1 + 72) = v12;
        v1 = *(a1 + 24);
        *(a1 + 16) = v9;
        *(a1 + 24) = v8;
        atomic_store(1u, (a1 + 80));
      }
    }
  }

  if (v1)
  {
LABEL_13:
    sub_238EF79DC(v1);
  }

LABEL_14:
  v15 = *MEMORY[0x277D85DE8];
}

void sub_2393EA064(void *a1)
{
  sub_23947632C("src/protocols/secure_channel/CASESession.cpp", 303);
  v2 = a1[2];
  v3 = a1[3];
  a1[2] = 0;
  a1[3] = 0;
  if (v2)
  {
    v4 = v3;
    goto LABEL_6;
  }

  v5 = a1[1];
  if (v5)
  {
    v4 = std::__shared_weak_count::lock(v5);
    if (!v3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = 0;
  if (v3)
  {
LABEL_5:
    sub_238EF79DC(v3);
  }

LABEL_6:
  v6 = atomic_load(a1 + 4);
  if (v6)
  {
    v7 = a1[6];
    v8 = a1[7];
    v9 = (v6 + (v8 >> 1));
    if (v8)
    {
      v7 = *(*v9 + v7);
    }

    v7(v9, a1 + 11, a1[8], a1[9]);
  }

  if (v4)
  {

    sub_238EF79DC(v4);
  }
}

uint64_t sub_2393EA170(uint64_t a1)
{
  result = (*(*a1 + 96))(a1);
  if (!result)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2393EA1B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v10 = (*(*a1 + 72))(a1);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  if (v11)
  {
    v13 = v11 & 0xFFFFFFFF00000000;
  }

  else
  {
    v14 = (*(*a1 + 16))(a1, a3, v20, a4, a5);
    if (v14)
    {
      v13 = v14 & 0xFFFFFFFF00000000;
    }

    else
    {
      v16 = v20[0] != *a2 || v20[1] != a2[1];
      v17 = !v16;
      if (v16)
      {
        v13 = 0x2700000000;
      }

      else
      {
        v13 = 0;
      }

      if (v17)
      {
        LODWORD(v14) = 0;
      }

      else
      {
        LODWORD(v14) = 16;
      }
    }

    v12 = v14;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v12 | v13;
}

uint64_t sub_2393EA304(uint64_t a1)
{
  result = (*(*a1 + 72))(a1);
  if (!result)
  {
    return 0;
  }

  return result;
}

unint64_t sub_2393EA348(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = 0;
  v45 = *MEMORY[0x277D85DE8];
  do
  {
    v11 = &v33 + v10;
    *(v11 + 1) = 0;
    v11[16] = 0;
    v10 += 16;
  }

  while (v10 != 768);
  v12 = (*(*a1 + 56))(a1, &v33);
  if (v12)
  {
LABEL_4:
    v13 = v12 & 0xFFFFFFFF00000000;
    goto LABEL_5;
  }

  if (!v33)
  {
    goto LABEL_14;
  }

  v16 = &v35;
  v17 = v33;
  do
  {
    if (*(v16 - 1) == *a2 && *v16 == *(a2 + 8))
    {
      v43 = 0;
      v31 = 0;
      v32 = 0;
      if ((*(*a1 + 96))(a1, a2, v44, v42, &v31))
      {
        v20 = sub_2393D9044(0xBu);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = *a2;
          v29 = HIDWORD(*a2);
          v22 = sub_2393C9138();
          *buf = 67109634;
          v37 = v29;
          v38 = 1024;
          v39 = v21;
          v40 = 2080;
          v41 = v22;
          _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "LoadState failed; unable to fully delete session resumption record for node %08X%08X: %s", buf, 0x18u);
        }

        if (!sub_2393D5398(1u))
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (!(*(*a1 + 80))(a1, v44))
        {
          goto LABEL_32;
        }

        v23 = sub_2393D9044(0xBu);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = *a2;
          v30 = HIDWORD(*a2);
          v25 = sub_2393C9138();
          *buf = 67109634;
          v37 = v30;
          v38 = 1024;
          v39 = v24;
          v40 = 2080;
          v41 = v25;
          _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "DeleteLink failed; unable to fully delete session resumption record for node %08X%08X: %s", buf, 0x18u);
        }

        if (!sub_2393D5398(1u))
        {
          goto LABEL_32;
        }
      }

      v26 = HIDWORD(*a2);
      sub_2393C9138();
      sub_2393D5320(0xBu, 1);
LABEL_32:
      v27 = (*(*a1 + 88))(a1, a2, a3, a4, a5);
      LODWORD(v12) = v27;
      if (v27)
      {
        v13 = v27 & 0xFFFFFFFF00000000;
      }

      else
      {
        v28 = (*(*a1 + 64))(a1, a3, a2);
        if (v28)
        {
          v13 = v28 & 0xFFFFFFFF00000000;
        }

        else
        {
          v13 = 0;
        }

        if (v28)
        {
          LODWORD(v12) = v28;
        }

        else
        {
          LODWORD(v12) = 0;
        }
      }

      sub_2393F9144(v42, 32);
      goto LABEL_5;
    }

    v16 += 16;
    --v17;
  }

  while (v17);
  if (v33 == 48)
  {
    v12 = sub_2393EA83C(a1, &v34);
    if (v12)
    {
      goto LABEL_4;
    }

    v12 = (*(*a1 + 56))(a1, &v33);
    if (v12)
    {
      goto LABEL_4;
    }
  }

LABEL_14:
  v12 = (*(*a1 + 88))(a1, a2, a3, a4, a5);
  if (v12)
  {
    goto LABEL_4;
  }

  v12 = (*(*a1 + 64))(a1, a3, a2);
  if (v12)
  {
    goto LABEL_4;
  }

  v18 = &v33 + 2 * v33;
  ++v33;
  v18[1] = *a2;
  *(v18 + 16) = *(a2 + 8);
  v19 = (*(*a1 + 48))(a1, &v33);
  if (v19)
  {
    v13 = v19 & 0xFFFFFFFF00000000;
  }

  else
  {
    v13 = 0;
  }

  if (v19)
  {
    LODWORD(v12) = v19;
  }

  else
  {
    LODWORD(v12) = 0;
  }

LABEL_5:
  v14 = *MEMORY[0x277D85DE8];
  return v12 | v13;
}

unint64_t sub_2393EA83C(uint64_t a1, uint64_t *a2)
{
  v4 = 0;
  v52 = *MEMORY[0x277D85DE8];
  do
  {
    v5 = &v43[v4];
    v5[1] = 0;
    *(v5 + 16) = 0;
    v4 += 2;
  }

  while (v4 != 96);
  v6 = (*(*a1 + 56))(a1, v43);
  if (!v6)
  {
    v50 = 0;
    v41 = 0;
    v42 = 0;
    v8 = (*(*a1 + 96))(a1, a2, v51, v49, &v41);
    if (v8 != 160)
    {
      if (v8)
      {
        v14 = sub_2393D9044(0xBu);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = *a2;
          v16 = HIDWORD(*a2);
          v17 = sub_2393C9138();
          *buf = 67109634;
          *v46 = v16;
          *&v46[4] = 1024;
          *&v46[6] = v15;
          v47 = 2080;
          v48 = v17;
          _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Unable to load session resumption state during session deletion for node %08X%08X: %s", buf, 0x18u);
        }

        if (sub_2393D5398(1u))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v9 = (*(*a1 + 80))(a1, v51);
        if (v9 && v9 != 160)
        {
          v10 = sub_2393D9044(0xBu);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            v11 = *a2;
            v12 = HIDWORD(*a2);
            v13 = sub_2393C9138();
            *buf = 67109634;
            *v46 = v12;
            *&v46[4] = 1024;
            *&v46[6] = v11;
            v47 = 2080;
            v48 = v13;
            _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Unable to delete session resumption link for node %08X%08X: %s", buf, 0x18u);
          }

          if (sub_2393D5398(1u))
          {
LABEL_16:
            v18 = HIDWORD(*a2);
            sub_2393C9138();
            sub_2393D5320(0xBu, 1);
          }
        }
      }
    }

    v19 = (*(*a1 + 104))(a1, a2);
    if (v19 && v19 != 160)
    {
      v20 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *a2;
        v22 = HIDWORD(*a2);
        v23 = sub_2393C9138();
        *buf = 67109634;
        *v46 = v22;
        *&v46[4] = 1024;
        *&v46[6] = v21;
        v47 = 2080;
        v48 = v23;
        _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "Unable to delete session resumption state for node %08X%08X: %s", buf, 0x18u);
      }

      if (sub_2393D5398(1u))
      {
        v24 = HIDWORD(*a2);
        sub_2393C9138();
        sub_2393D5320(0xBu, 1);
      }
    }

    v25 = v43[0];
    if (!v43[0])
    {
      goto LABEL_41;
    }

    v26 = 0;
    v27 = *a2;
    v28 = *(a2 + 8);
    v29 = &v44;
    v30 = 1;
    do
    {
      if (v26)
      {
        *(v29 - 2) = *v29;
        *(v29 - 8) = *(v29 + 8);
        v26 = 1;
        v25 = v43[0];
      }

      else if (*(v29 - 2) == v27 && *(v29 - 8) == v28)
      {
        if (v30 < v25)
        {
          *(v29 - 2) = *v29;
          *(v29 - 8) = *(v29 + 8);
          v25 = v43[0];
        }

        v43[0] = --v25;
        v26 = 1;
      }

      else
      {
        v26 = 0;
      }

      v29 += 2;
    }

    while (v30++ < v25);
    if (v26)
    {
      if (!(*(*a1 + 48))(a1, v43))
      {
        goto LABEL_46;
      }

      v32 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = sub_2393C9138();
        *buf = 136315138;
        *v46 = v33;
        _os_log_impl(&dword_238DAE000, v32, OS_LOG_TYPE_ERROR, "Unable to save session resumption index: %s", buf, 0xCu);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_46;
      }

      sub_2393C9138();
    }

    else
    {
LABEL_41:
      v34 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = *a2;
        v36 = HIDWORD(*a2);
        v37 = sub_2393C9138();
        *buf = 67109634;
        *v46 = v36;
        *&v46[4] = 1024;
        *&v46[6] = v35;
        v47 = 2080;
        v48 = v37;
        _os_log_impl(&dword_238DAE000, v34, OS_LOG_TYPE_ERROR, "Unable to find session resumption state for node in index%08X%08X: %s", buf, 0x18u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_46;
      }

      v40 = *a2;
      sub_2393C9138();
    }

    sub_2393D5320(0xBu, 1);
LABEL_46:
    sub_2393F9144(v49, 32);
    v7 = 0;
    LODWORD(v6) = 0;
    goto LABEL_47;
  }

  v7 = v6 & 0xFFFFFFFF00000000;
LABEL_47:
  v38 = *MEMORY[0x277D85DE8];
  return v6 | v7;
}

uint64_t sub_2393EAE38(uint64_t a1, int a2)
{
  v3 = a1;
  v4 = 0;
  v50 = *MEMORY[0x277D85DE8];
  v41 = 0uLL;
  do
  {
    v5 = &v40[v4];
    v5[1] = 0;
    *(v5 + 16) = 0;
    v4 += 2;
  }

  while (v4 != 96);
  result = (*(*a1 + 56))(a1, v40);
  if (result)
  {
    goto LABEL_43;
  }

  v7 = v40[0];
  if (!v40[0])
  {
    goto LABEL_42;
  }

  v8 = 0;
  v9 = 0;
  v10 = 16 * v40[0] - 16;
  v34 = a2;
  v35 = v3;
  do
  {
    v48 = 0;
    v36 = 0;
    v37 = 0;
    v11 = &v40[-2 * v9];
    if (LOBYTE(v11[v8 + 2]) != a2)
    {
      goto LABEL_30;
    }

    v12 = v40 + v8 * 8 - 16 * v9;
    v13 = (*(*v3 + 96))(v3, v12 + 8, v49, v44, &v36);
    v38 = v13;
    v39 = v14;
    v15 = &v41;
    if (!v41)
    {
      v15 = &v38;
    }

    v41 = *v15;
    if (v13)
    {
      v16 = sub_2393D9044(0xBu);
      a2 = v34;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = sub_2393C9138();
        LODWORD(buf) = 67109378;
        HIDWORD(buf) = v34;
        LOWORD(v43[0]) = 2080;
        *(v43 + 2) = v17;
        _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Session resumption cache deletion partially failed for fabric index %u, unable to load node state: %s", &buf, 0x12u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v18 = (*(*v3 + 80))(v3, v49);
    v38 = v18;
    v39 = v19;
    if (v41)
    {
      v20 = &v41;
    }

    else
    {
      v20 = &v38;
    }

    v41 = *v20;
    if (v18)
    {
      v21 = sub_2393D9044(0xBu);
      a2 = v34;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = sub_2393C9138();
        LODWORD(buf) = 67109378;
        HIDWORD(buf) = v34;
        LOWORD(v43[0]) = 2080;
        *(v43 + 2) = v22;
        _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Session resumption cache deletion partially failed for fabric index %u, unable to delete node link: %s", &buf, 0x12u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_29;
      }

LABEL_28:
      sub_2393C9138();
      sub_2393D5320(0xBu, 1);
      goto LABEL_29;
    }

    v23 = (*(*v3 + 104))(v3, v12 + 8);
    v38 = v23;
    v39 = v24;
    v25 = &v41;
    if (!v41)
    {
      v25 = &v38;
    }

    v41 = *v25;
    if (!v23)
    {
      ++v9;
      a2 = v34;
      if (v7 != 1)
      {
        memmove(&v11[v8 + 1], &v11[v8 + 3], v10);
      }

      goto LABEL_29;
    }

    v26 = sub_2393D9044(0xBu);
    a2 = v34;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = sub_2393C9138();
      LODWORD(buf) = 67109378;
      HIDWORD(buf) = v34;
      LOWORD(v43[0]) = 2080;
      *(v43 + 2) = v27;
      _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "Session resumption cache is in an inconsistent state!  Unable to delete node state during attempted deletion of fabric index %u: %s", &buf, 0x12u);
    }

    if (sub_2393D5398(1u))
    {
      goto LABEL_28;
    }

LABEL_29:
    v3 = v35;
LABEL_30:
    sub_2393F9144(v44, 32);
    v10 -= 16;
    v8 += 2;
    --v7;
  }

  while (v7);
  if (v9)
  {
    v40[0] -= v9;
    v28 = (*(*v3 + 48))(v3, v40);
    buf = v28;
    v43[0] = v29;
    p_buf = &v41;
    if (!v41)
    {
      p_buf = &buf;
    }

    v41 = *p_buf;
    if (v28)
    {
      v31 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = sub_2393C9138();
        *v44 = 67109378;
        v45 = a2;
        v46 = 2080;
        v47 = v32;
        _os_log_impl(&dword_238DAE000, v31, OS_LOG_TYPE_ERROR, "Session resumption cache is in an inconsistent state!  Unable to save session resumption index during attempted deletion of fabric index %u: %s", v44, 0x12u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0xBu, 1);
      }
    }
  }

LABEL_42:
  result = v41;
LABEL_43:
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2393EB3DC(void *a1)
{
  *a1 = &unk_284BB88D8;
  a1[1] = &unk_284BB8968;
  v2 = (a1 + 2);
  a1[2] = &unk_284BB89B8;
  sub_2393EB49C(a1);
  sub_2393F7EB8(a1 + 212);
  a1[21] = &unk_284BB8F80;
  sub_2393F9D1C((a1 + 21));
  sub_2393F7EB8(a1 + 51);
  sub_2393DF88C(v2);
  return a1;
}

void sub_2393EB49C(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = sub_23948B4CC();
  if (os_signpost_enabled(v2))
  {
    v6 = 136315394;
    v7 = "PASESession";
    v8 = 2080;
    v9 = "Clear";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v6, 0x16u);
  }

  *(a1 + 1648) = 0;
  *(a1 + 1632) = 0u;
  *(a1 + 1616) = 0u;
  *(a1 + 1600) = 0u;
  *(a1 + 1584) = 0u;
  *(a1 + 1568) = 0u;
  *(a1 + 1552) = 0u;
  *(a1 + 164) = 0;
  sub_2393F9D1C(a1 + 168);
  sub_2393F7EF4((a1 + 1696));
  *(a1 + 1816) = 0;
  *(a1 + 1820) = 0;
  v3 = *(a1 + 1824);
  if (v3)
  {
    j__free(v3);
    *(a1 + 1824) = 0;
  }

  *(a1 + 1872) = 0;
  sub_2393F01F8(a1 + 16);
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    v6 = 136315394;
    v7 = "PASESession";
    v8 = 2080;
    v9 = "Clear";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v6, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2393EB63C(void *a1)
{
  sub_2393EB3DC(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2393EB674(uint64_t a1)
{
  sub_2393EB3DC((a1 - 8));

  JUMPOUT(0x23EE77B60);
}

void sub_2393EB6B0(uint64_t a1)
{
  sub_2393EB3DC((a1 - 16));

  JUMPOUT(0x23EE77B60);
}

void sub_2393EB6EC(uint64_t a1)
{
  sub_2393F0264(a1 + 16);

  sub_2393EB49C(a1);
}

void sub_2393EB728(uint64_t a1)
{
  v1 = a1 - 16;
  sub_2393F0264(a1);

  sub_2393EB49C(v1);
}

unint64_t sub_2393EB770(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    *&buf[4] = "PASESession";
    v19 = 2080;
    v20 = "Init";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (!*(a2 + 40))
  {
    v10 = 0xA200000000;
    goto LABEL_11;
  }

  if (!a4)
  {
    v10 = 0xA300000000;
    goto LABEL_11;
  }

  sub_2393EB49C(a1);
  v9 = sub_2393F7F38((a1 + 1696));
  if (v9 || (v9 = sub_2393F7FF0((a1 + 1696)), v9) || (*(a1 + 104) = a4, *buf = 0, buf[8] = 0, v9 = sub_2393EF4FC((a1 + 16), a2, buf), v9))
  {
    v10 = v9 & 0xFFFFFFFF00000000;
    goto LABEL_12;
  }

  sub_2393E1D10(a1 + 16, buf);
  if (buf[0] == 1)
  {
    v14 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      sub_2393E1D10(a1 + 16, v17);
      v15 = *sub_238E0A934(v17);
      *buf = 67109120;
      *&buf[4] = v15;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_INFO, "Assigned local session key ID %u", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393E1D10(a1 + 16, buf);
      v16 = *sub_238E0A934(buf);
      sub_2393D5320(0xBu, 3);
    }

    if (!(a3 >> 27))
    {
      v10 = 0;
      LODWORD(v9) = 0;
      *(a1 + 1652) = a3;
      goto LABEL_12;
    }

    v10 = 0xB000000000;
LABEL_11:
    LODWORD(v9) = 47;
    goto LABEL_12;
  }

  v10 = 0xAD00000000;
  LODWORD(v9) = 3;
LABEL_12:
  v11 = sub_23948B4CC();
  if (os_signpost_enabled(v11))
  {
    *buf = 136315394;
    *&buf[4] = "PASESession";
    v19 = 2080;
    v20 = "Init";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9 | v10;
}

unint64_t sub_2393EBA44(uint64_t a1, unsigned int a2, uint64_t *a3, int a4, int *a5)
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = sub_23948B4CC();
  if (os_signpost_enabled(v10))
  {
    v15 = 136315394;
    v16 = "PASESession";
    v17 = 2080;
    v18 = "GeneratePASEVerifier";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v15, 0x16u);
  }

  if (!a4 || (v11 = sub_2394902F0(a5), !v11))
  {
    v11 = sub_2393F2748(a1, a2, a3, *a5);
  }

  v12 = sub_23948B4CC();
  if (os_signpost_enabled(v12))
  {
    v15 = 136315394;
    v16 = "PASESession";
    v17 = 2080;
    v18 = "GeneratePASEVerifier";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", &v15, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

unint64_t sub_2393EBBD0(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = sub_23948B4CC();
  if (os_signpost_enabled(v2))
  {
    *buf = 136315394;
    *&buf[4] = "PASESession";
    *&buf[12] = 2080;
    *&buf[14] = "SetupSpake2p";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  memset(buf, 0, 32);
  v10 = buf;
  v11 = 32;
  v3 = sub_2393F817C((a1 + 1696), &v10);
  v4 = v3;
  if (v3)
  {
    v5 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    v6 = sub_2393F15A8(a1 + 168, v10, v11);
    if (v6)
    {
      v5 = v6 & 0xFFFFFFFF00000000;
    }

    else
    {
      v5 = 0;
    }

    if (v6)
    {
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  v7 = sub_23948B4CC();
  if (os_signpost_enabled(v7))
  {
    *buf = 136315394;
    *&buf[4] = "PASESession";
    *&buf[12] = 2080;
    *&buf[14] = "SetupSpake2p";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4 | v5;
}

uint64_t sub_2393EBD6C(uint64_t a1, uint64_t a2, const void *a3, int a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v7 = *(a5 + 8);
  if (!v7)
  {
    v21 = 47;
    v15 = 212;
    return v21 | (v15 << 32);
  }

  if (!*a5)
  {
    v21 = 47;
    v15 = 213;
    return v21 | (v15 << 32);
  }

  if ((v7 - 16) > 0x10)
  {
    v21 = 47;
    v15 = 215;
    return v21 | (v15 << 32);
  }

  v13 = sub_2393EB770(a1, a2, 0, a7);
  v14 = v13;
  v15 = HIDWORD(v13);
  if (v13)
  {
LABEL_16:
    sub_2393EB49C(a1);
    v21 = v14;
    return v21 | (v15 << 32);
  }

  *(a1 + 24) = 1;
  v16 = *(a5 + 8);
  if (v16 >> 16)
  {
    v15 = 224;
    v14 = 47;
    goto LABEL_16;
  }

  *(a1 + 1820) = v16;
  v17 = *(a1 + 1824);
  if (v17)
  {
    j__free(v17);
    *(a1 + 1824) = 0;
    LOWORD(v16) = *(a1 + 1820);
  }

  v18 = sub_2393D52C4(v16);
  *(a1 + 1824) = v18;
  if (!v18)
  {
    v15 = 234;
    v14 = 11;
    goto LABEL_16;
  }

  memmove(v18, *a5, *(a1 + 1820));
  memmove((a1 + 1552), a3, 0x61uLL);
  *(a1 + 1816) = a4;
  *(a1 + 164) = 8193;
  *(a1 + 1872) = 0;
  v26 = sub_239476060();
  v27 = v19;
  if (*a6 == 1)
  {
    v20 = sub_238DD173C(a6);
  }

  else
  {
    v20 = &v26;
  }

  v23 = *(v20 + 2);
  v24 = *v20;
  *(a1 + 112) = 1;
  *(a1 + 116) = v24;
  *(a1 + 124) = v23;
  v25 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    LOWORD(v26) = 0;
    _os_log_impl(&dword_238DAE000, v25, OS_LOG_TYPE_INFO, "Waiting for PBKDF param request", &v26, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0xBu, 3);
  }

  v21 = 0;
  return v21 | (v15 << 32);
}

unint64_t sub_2393EBF78(uint64_t a1, uint64_t a2, unsigned int a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v31 = *MEMORY[0x277D85DE8];
  v12 = sub_23948B4CC();
  if (os_signpost_enabled(v12))
  {
    *buf = 136315394;
    *&buf[4] = "PASESession";
    v29 = 2080;
    v30 = "Pair";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (a5)
  {
    v13 = sub_2393EB770(a1, a2, a3, a6);
    if (v13)
    {
      goto LABEL_11;
    }

    *(a1 + 24) = 0;
    sub_2393E0838(a1 + 88, a5);
    v15 = sub_2393E088C((a1 + 88));
    sub_238EA6DC0(*v15, buf);
    v16 = sub_2394953AC(*buf);
    *(v16 + 104) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
    *(v16 + 96) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
    (*(**buf + 32))(*buf);
    v17 = sub_2393E088C((a1 + 88));
    sub_239470428(*v17, 2000);
    *buf = sub_239476060();
    *&buf[8] = v18;
    v19 = *a4 == 1 ? sub_238DD173C(a4) : buf;
    v20 = *(v19 + 2);
    v21 = *v19;
    *(a1 + 112) = 1;
    *(a1 + 116) = v21;
    *(a1 + 124) = v20;
    v13 = sub_2393EC380(a1);
    if (v13)
    {
LABEL_11:
      if ((*(a1 + 88) & 1) == 0)
      {
        sub_239470A14(a5);
      }

      sub_2393EB49C(a1);
      v22 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = sub_2393C9138();
        *buf = 136315138;
        *&buf[4] = v23;
        _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "Failed during PASE session pairing request: %s", buf, 0xCu);
      }

      v14 = HIDWORD(v13);
      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0xBu, 1);
      }

      v24 = sub_23948B4CC();
      if (os_signpost_enabled(v24))
      {
        ++dword_27DF7775C;
        *buf = 67109120;
        *&buf[4] = dword_27DF7775C;
        _os_signpost_emit_with_name_impl(&dword_238DAE000, v24, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PASEFail", "%u", buf, 8u);
      }
    }

    else
    {
      (*(**(a1 + 104) + 16))(*(a1 + 104));
      v14 = HIDWORD(v13);
      LODWORD(v13) = 0;
    }
  }

  else
  {
    LODWORD(v13) = 47;
    LODWORD(v14) = 259;
  }

  v25 = sub_23948B4CC();
  if (os_signpost_enabled(v25))
  {
    *buf = 136315394;
    *&buf[4] = "PASESession";
    v29 = 2080;
    v30 = "Pair";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v25, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v13 | (v14 << 32);
}

unint64_t sub_2393EC380(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = sub_23948B4CC();
  if (os_signpost_enabled(v2))
  {
    *buf = 136315394;
    v27 = "PASESession";
    v28 = 2080;
    v29 = "SendPBKDFParamRequest";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  sub_2393E1D10(a1 + 16, buf);
  if (buf[0] != 1)
  {
    v4 = 3;
    v5 = 348;
    goto LABEL_18;
  }

  v3 = sub_2393F888C((a1 + 1657), 0x20uLL);
  v4 = v3;
  if (v3)
  {
    v5 = HIDWORD(v3);
    goto LABEL_18;
  }

  sub_2393D9C18(0x6DuLL, 0x26u, &v20);
  if (!v20)
  {
    v5 = 360;
    v4 = 11;
    goto LABEL_18;
  }

  sub_2393C7B90(buf);
  v30[1] = 0;
  v30[2] = 0;
  v30[0] = &unk_284BB83A8;
  v31 = 0;
  sub_238EA16C4(v30, &v20, 0);
  sub_2393C7BF0(buf, v30, 0xFFFFFFFF);
  v19 = -1;
  v6 = sub_2393C8CE0(buf, 0x100uLL, 21, &v19);
  v4 = v6;
  if (v6)
  {
    v5 = HIDWORD(v6);
    goto LABEL_16;
  }

  v7 = sub_2393C83AC(buf, 1uLL, (a1 + 1657), 0x20u);
  if (v7)
  {
    goto LABEL_15;
  }

  sub_2393E1D10(a1 + 16, v21);
  v8 = sub_238E0A934(v21);
  v7 = sub_2393C818C(buf, 2uLL, *v8);
  if (v7)
  {
    goto LABEL_15;
  }

  v7 = sub_2393C818C(buf, 3uLL, 0);
  if (v7)
  {
    goto LABEL_15;
  }

  v7 = sub_2393C7E38(buf, 4uLL, *(a1 + 1656));
  if (v7)
  {
    goto LABEL_15;
  }

  if (*(a1 + 112) == 1)
  {
    v12 = sub_2393E1D9C((a1 + 112));
    v7 = sub_2393EFE24(5uLL, v12, buf);
    if (!v7)
    {
      v7 = sub_2393C8DE0(buf, v19);
      if (!v7)
      {
        v7 = sub_238DD2EFC(buf, &v20);
        if (!v7)
        {
          sub_238DB6950(v21, *(v20 + 1), *(v20 + 3));
          v7 = sub_2393F7FF0((a1 + 1696));
          if (!v7)
          {
            v13 = *sub_2393E088C((a1 + 88));
            *v21 = 1;
            v7 = sub_239470478(v13, 0, 32, &v20, v21);
            if (!v7)
            {
              *(a1 + 164) = 8449;
              v14 = sub_2393E1D9C((a1 + 112));
              v15 = *v14;
              v16 = *(v14 + 1);
              v17 = *(v14 + 4);
              v18 = sub_2393D9044(0xBu);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *v21 = 67109632;
                *&v21[4] = v15;
                v22 = 1024;
                v23 = v16;
                v24 = 1024;
                v25 = v17;
                _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_DEFAULT, "Sent PBKDF param request [II:%ums AI:%ums AT:%ums)", v21, 0x14u);
              }

              if (sub_2393D5398(2u))
              {
                sub_2393D5320(0xBu, 2);
              }

              v5 = 0;
              v4 = 0;
              goto LABEL_16;
            }
          }
        }
      }
    }

LABEL_15:
    v5 = HIDWORD(v7);
    v4 = v7;
    goto LABEL_16;
  }

  v4 = 3;
  v5 = 373;
LABEL_16:
  sub_2393B8400(v30);
  if (v20)
  {
    sub_2393D96C8(v20);
  }

LABEL_18:
  v9 = sub_23948B4CC();
  if (os_signpost_enabled(v9))
  {
    *buf = 136315394;
    v27 = "PASESession";
    v28 = 2080;
    v29 = "SendPBKDFParamRequest";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v4 | (v5 << 32);
}

void sub_2393EC7B4(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v15 = "PASESession";
    v16 = 2080;
    v17 = "OnResponseTimeout";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (a2)
  {
    if (*(a1 + 88) != 1 || *sub_2393E088C((a1 + 88)) == a2)
    {
      v6 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = *sub_2393ECAEC((a1 + 164));
        *buf = 67109120;
        LODWORD(v15) = v7;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "PASESession timed out while waiting for a response from the peer. Expected message type was %u", buf, 8u);
      }

      v8 = a1 + 16;
      if (sub_2393D5398(1u))
      {
        v13 = *sub_2393ECAEC((a1 + 164));
        sub_2393D5320(0xBu, 1);
      }

      v9 = sub_23948B4CC();
      if (os_signpost_enabled(v9))
      {
        ++dword_27DF77760;
        *buf = 67109120;
        LODWORD(v15) = dword_27DF77760;
        _os_signpost_emit_with_name_impl(&dword_238DAE000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PASETimeout", "%u", buf, 8u);
      }

      sub_2393EFD90(v8);
      sub_2393EB49C(a1);
      sub_2393EFDEC(v8);
    }

    else
    {
      v5 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "PASESession::OnResponseTimeout exchange doesn't match", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
LABEL_20:
        sub_2393D5320(0xBu, 1);
      }
    }
  }

  else
  {
    v10 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "PASESession::OnResponseTimeout was called by null exchange", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      goto LABEL_20;
    }
  }

  v11 = sub_23948B4CC();
  if (os_signpost_enabled(v11))
  {
    *buf = 136315394;
    v15 = "PASESession";
    v16 = 2080;
    v17 = "OnResponseTimeout";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

_BYTE *sub_2393ECAEC(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    sub_239531094();
  }

  return a1 + 1;
}

uint64_t sub_2393ECB14(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  if (*(a1 + 1872) == 1)
  {
    v4 = *(*(a1 + 80) + 40);
    v12 = v4;
    memset(v13, 0, sizeof(v13));
    v14 = 0;
    v5 = sub_2393F23EC(a1 + 168, v4, v13);
    v6 = v5;
    if (v5)
    {
      v7 = v5 & 0xFFFFFFFF00000000;
    }

    else
    {
      v11[0] = 0;
      v11[1] = 0;
      v9 = sub_23949158C(a2, v4, v13, v11, 0, *(a1 + 24));
      if (v9)
      {
        v6 = v9;
      }

      else
      {
        v6 = 0;
      }

      if (v9)
      {
        v7 = v9 & 0xFFFFFFFF00000000;
      }

      else
      {
        v7 = 0;
      }
    }

    (*(*v12 + 48))(v12, v13);
    sub_2393F9144(v13, 33);
    result = v7 | v6;
  }

  else
  {
    result = 0x13B00000003;
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2393ECC5C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_2393C6B34(a3);
  if (!v6)
  {
    if (*(a3 + 16) != *a2)
    {
      v7 = 0;
      return v6 & 0xFFFFFFFF00000000 | v7;
    }

    result = sub_2393EFF04(*(a3 + 16), a3, a1 + 128);
    if (result)
    {
      return result;
    }

    v9 = sub_2393E088C((a1 + 88));
    sub_238EA6DC0(*v9, &v11);
    v10 = sub_2394953AC(v11);
    sub_2393ECD2C(v10, (a1 + 128));
    (*(*v11 + 32))(v11);
    v6 = sub_2393C6B34(a3);
  }

  v7 = v6;
  return v6 & 0xFFFFFFFF00000000 | v7;
}

uint64_t sub_2393ECD2C(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 120) = *(a2 + 4);
  *(result + 112) = v2;
  LODWORD(v2) = *(a2 + 12);
  *(result + 124) = v2;
  if (v2 == 1)
  {
    *(result + 126) = *(a2 + 7);
  }

  v3 = *(a2 + 16);
  *(result + 128) = v3;
  if (v3 == 1)
  {
    *(result + 130) = *(a2 + 9);
  }

  v4 = *(a2 + 20);
  *(result + 132) = v4;
  if (v4 == 1)
  {
    *(result + 136) = *(a2 + 6);
  }

  *(result + 140) = *(a2 + 14);
  return result;
}

unint64_t sub_2393ECD90(uint64_t a1, void *a2, char a3)
{
  sub_238EA16C4(a1 + 64, a2, a3);

  return sub_2393C7BF0(a1, a1 + 64, 0xFFFFFFFF);
}

unint64_t sub_2393ECDD4(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v19 = "PASESession";
    v20 = 2080;
    v21 = "HandlePBKDFParamRequest";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  sub_2393C5AAC(buf);
  v22 = 0;
  v14 = 0;
  v15 = 21;
  v13 = 0;
  v5 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v17 = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Received PBKDF param request", v17, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0xBu, 3);
  }

  sub_238DB6950(v17, *(*a2 + 8), *(*a2 + 24));
  v6 = sub_2393F7FF0((a1 + 1696));
  if (!v6)
  {
    sub_238DD2F90(buf, a2);
    v6 = sub_2393C7114(buf, 21, 256);
    if (!v6)
    {
      v6 = sub_2393C6A2C(buf, &v15);
      if (!v6)
      {
        v6 = sub_2393C6FD0(buf, 1);
        if (!v6)
        {
          if (sub_2393C5CB8(buf) != 32)
          {
            v7 = 422;
            LODWORD(v6) = 35;
            goto LABEL_12;
          }

          v6 = sub_2393C6430(buf, v17, 0x20uLL);
          if (!v6)
          {
            v6 = sub_2393C6FD0(buf, 2);
            if (!v6)
            {
              v6 = sub_2393C5F70(buf, &v14 + 1);
              if (!v6)
              {
                if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
                {
                  *v16 = 67109120;
                  *&v16[4] = HIWORD(v14);
                  _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Peer assigned session ID %d", v16, 8u);
                }

                if (sub_2393D5398(3u))
                {
                  sub_2393D5320(0xBu, 3);
                }

                v11 = HIWORD(v14);
                *(a1 + 160) = 1;
                *(a1 + 162) = v11;
                v6 = sub_2393C6FD0(buf, 3);
                if (!v6)
                {
                  v6 = sub_2393C5F70(buf, &v14);
                  if (!v6)
                  {
                    if (v14)
                    {
                      v7 = 433;
                      LODWORD(v6) = 56;
                      goto LABEL_12;
                    }

                    v6 = sub_2393C6FD0(buf, 4);
                    if (!v6)
                    {
                      v6 = sub_2393C5CE4(buf, &v13);
                      if (!v6)
                      {
                        *v16 = 5;
                        v12 = sub_2393ECC5C(a1, v16, buf);
                        LODWORD(v6) = v12;
                        if (v12 && v12 != 33)
                        {
                          v7 = HIDWORD(v12);
                          goto LABEL_12;
                        }

                        v6 = sub_2393C6A98(buf, v15);
                        if (!v6)
                        {
                          v6 = sub_2393ED22C(a1, v17, 0x20uLL, v13);
                          if (!v6)
                          {
                            (*(**(a1 + 104) + 16))(*(a1 + 104));
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

  v7 = HIDWORD(v6);
  if (v6)
  {
LABEL_12:
    sub_2393E3ED8(a1 + 16, (a1 + 88), 2);
    v6 = v6;
    goto LABEL_14;
  }

  v6 = 0;
LABEL_14:
  if (v22)
  {
    sub_2393D96C8(v22);
  }

  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    v19 = "PASESession";
    v20 = 2080;
    v21 = "HandlePBKDFParamRequest";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 | (v7 << 32);
}

unint64_t sub_2393ED22C(uint64_t a1, char *a2, unint64_t a3, char a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    v25 = "PASESession";
    v26 = 2080;
    v27 = "SendPBKDFParamResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  sub_2393E1D10(a1 + 16, buf);
  if (buf[0] != 1)
  {
    v10 = 3;
    v11 = 468;
    goto LABEL_18;
  }

  v9 = sub_2393F888C((a1 + 1657), 0x20uLL);
  v10 = v9;
  if (v9)
  {
    v11 = HIDWORD(v9);
    goto LABEL_18;
  }

  sub_2393D9C18(*(a1 + 1820) + 152, 0x26u, &v23);
  if (!v23)
  {
    v11 = 481;
    v10 = 11;
    goto LABEL_18;
  }

  sub_2393C7B90(buf);
  v28[1] = 0;
  v28[2] = 0;
  v28[0] = &unk_284BB83A8;
  v29 = 0;
  sub_238EA16C4(v28, &v23, 0);
  sub_2393C7BF0(buf, v28, 0xFFFFFFFF);
  v22 = -1;
  v12 = sub_2393C8CE0(buf, 0x100uLL, 21, &v22);
  v10 = v12;
  if (v12)
  {
    v11 = HIDWORD(v12);
    goto LABEL_16;
  }

  v13 = sub_2393C8364(buf, 1uLL, a2, a3);
  if (v13)
  {
    goto LABEL_14;
  }

  v13 = sub_2393C83AC(buf, 2uLL, (a1 + 1657), 0x20u);
  if (v13)
  {
    goto LABEL_14;
  }

  sub_2393E1D10(a1 + 16, &v21);
  v14 = sub_238E0A934(&v21);
  v13 = sub_2393C818C(buf, 3uLL, *v14);
  if (v13)
  {
    goto LABEL_14;
  }

  if ((a4 & 1) == 0)
  {
    LODWORD(v21) = 0;
    v13 = sub_2393C8CE0(buf, 4uLL, 21, &v21);
    if (v13 || (v13 = sub_2393C81D4(buf, 1uLL, *(a1 + 1816)), v13) || (v13 = sub_2393C83AC(buf, 2uLL, *(a1 + 1824), *(a1 + 1820)), v13))
    {
      v11 = HIDWORD(v13);
      goto LABEL_15;
    }

    v13 = sub_2393C8DE0(buf, v21);
    if (v13)
    {
LABEL_14:
      v11 = HIDWORD(v13);
LABEL_15:
      v10 = v13;
      goto LABEL_16;
    }
  }

  if (*(a1 + 112) == 1)
  {
    v18 = sub_2393E1D9C((a1 + 112));
    v13 = sub_2393EFE24(5uLL, v18, buf);
    if (!v13)
    {
      v13 = sub_2393C8DE0(buf, v22);
      if (!v13)
      {
        v13 = sub_238DD2EFC(buf, &v23);
        if (!v13)
        {
          sub_238DB6950(&v21, *(v23 + 1), *(v23 + 3));
          v13 = sub_2393F7FF0((a1 + 1696));
          if (!v13)
          {
            v13 = sub_2393EBBD0(a1);
            if (!v13)
            {
              v19 = *sub_2393E088C((a1 + 88));
              LOWORD(v21) = 1;
              v13 = sub_239470478(v19, 0, 33, &v23, &v21);
              if (!v13)
              {
                v20 = sub_2393D9044(0xBu);
                if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
                {
                  LOWORD(v21) = 0;
                  _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_INFO, "Sent PBKDF param response", &v21, 2u);
                }

                if (sub_2393D5398(3u))
                {
                  sub_2393D5320(0xBu, 3);
                }

                v11 = 0;
                v10 = 0;
                *(a1 + 164) = 8705;
                goto LABEL_16;
              }
            }
          }
        }
      }
    }

    goto LABEL_14;
  }

  v10 = 3;
  v11 = 504;
LABEL_16:
  sub_2393B8400(v28);
  if (v23)
  {
    sub_2393D96C8(v23);
  }

LABEL_18:
  v15 = sub_23948B4CC();
  if (os_signpost_enabled(v15))
  {
    *buf = 136315394;
    v25 = "PASESession";
    v26 = 2080;
    v27 = "SendPBKDFParamResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v10 | (v11 << 32);
}

unint64_t sub_2393ED6A4(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v27 = "PASESession";
    v28 = 2080;
    v29 = "HandlePBKDFParamResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  sub_2393C5AAC(buf);
  v30 = 0;
  v19 = 21;
  v18 = 0;
  v17 = 0uLL;
  memset(v21, 0, sizeof(v21));
  v5 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v22 = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Received PBKDF param response", v22, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0xBu, 3);
  }

  sub_238DB6950(v22, *(*a2 + 8), *(*a2 + 24));
  v6 = sub_2393F7FF0((a1 + 1696));
  if (!v6)
  {
    sub_238DD2F90(buf, a2);
    v6 = sub_2393C7114(buf, v19, 256);
    if (!v6)
    {
      v6 = sub_2393C6A2C(buf, &v19);
      if (!v6)
      {
        v6 = sub_2393C6FD0(buf, 1);
        if (!v6)
        {
          v6 = sub_2393C6430(buf, v22, 0x20uLL);
          if (!v6)
          {
            if (*v22 != *(a1 + 1657) || v23 != *(a1 + 1665) || v24 != *(a1 + 1673) || v25 != *(a1 + 1681))
            {
              v7 = 549;
              LODWORD(v6) = 56;
              goto LABEL_13;
            }

            v6 = sub_2393C6FD0(buf, 2);
            if (!v6)
            {
              if (sub_2393C5CB8(buf) == 32)
              {
                v6 = sub_2393C6430(buf, v22, 0x20uLL);
                if (v6)
                {
                  goto LABEL_12;
                }

                v6 = sub_2393C6FD0(buf, 3);
                if (v6)
                {
                  goto LABEL_12;
                }

                v6 = sub_2393C5F70(buf, &v18);
                if (v6)
                {
                  goto LABEL_12;
                }

                if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
                {
                  *v20 = 67109120;
                  *&v20[4] = v18;
                  _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Peer assigned session ID %d", v20, 8u);
                }

                if (sub_2393D5398(3u))
                {
                  sub_2393D5320(0xBu, 3);
                }

                v14 = v18;
                *(a1 + 160) = 1;
                *(a1 + 162) = v14;
                if (*(a1 + 1656) == 1)
                {
                  *v20 = 5;
                  v15 = sub_2393ECC5C(a1, v20, buf);
                  v6 = v15;
                  if (v15 == 33 || !v15)
                  {
                    sub_238DB6950(&v17, *(a1 + 1824), *(a1 + 1820));
LABEL_44:
                    v6 = sub_2393C6A98(buf, v19);
                    if (!v6)
                    {
                      v6 = sub_2393EBBD0(a1);
                      if (!v6)
                      {
                        v6 = sub_2393F2940(*(a1 + 1816), &v17, *(a1 + 1652), v21, 0x50u);
                        if (!v6)
                        {
                          v6 = sub_2393F1874(a1 + 168, 0, 0, 0, 0, v21, 40, &v21[2] + 8, 40);
                          if (!v6)
                          {
                            v6 = sub_2393EDC38(a1);
                          }
                        }
                      }
                    }

                    goto LABEL_12;
                  }

LABEL_62:
                  v7 = HIDWORD(v6);
                  goto LABEL_13;
                }

                v6 = sub_2393C6FD0(buf, 4);
                if (v6)
                {
                  goto LABEL_12;
                }

                v6 = sub_2393C6A2C(buf, &v19);
                if (v6)
                {
                  goto LABEL_12;
                }

                v6 = sub_2393C6FD0(buf, 1);
                if (v6)
                {
                  goto LABEL_12;
                }

                v6 = sub_2393C5FC8(buf, (a1 + 1816));
                if (v6)
                {
                  goto LABEL_12;
                }

                v6 = sub_2393C6FD0(buf, 2);
                if (v6)
                {
                  goto LABEL_12;
                }

                if (sub_2393C5CB8(buf) >= 0x10 && sub_2393C5CB8(buf) <= 0x20)
                {
                  v6 = sub_2393C60CC(buf, &v17);
                  if (v6)
                  {
                    goto LABEL_12;
                  }

                  v6 = sub_2393C6A98(buf, v19);
                  if (v6)
                  {
                    goto LABEL_12;
                  }

                  *v20 = 5;
                  v16 = sub_2393ECC5C(a1, v20, buf);
                  v6 = v16;
                  if (v16 == 33 || !v16)
                  {
                    goto LABEL_44;
                  }

                  goto LABEL_62;
                }

                v7 = 584;
              }

              else
              {
                v7 = 553;
              }

              LODWORD(v6) = 35;
              goto LABEL_13;
            }
          }
        }
      }
    }
  }

LABEL_12:
  v7 = HIDWORD(v6);
  if (v6)
  {
LABEL_13:
    sub_2393E3ED8(a1 + 16, (a1 + 88), 2);
    v6 = v6;
    goto LABEL_15;
  }

  v6 = 0;
LABEL_15:
  if (v30)
  {
    sub_2393D96C8(v30);
  }

  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    v27 = "PASESession";
    v28 = 2080;
    v29 = "HandlePBKDFParamResponse";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 | (v7 << 32);
}

unint64_t sub_2393EDC38(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = sub_23948B4CC();
  if (os_signpost_enabled(v2))
  {
    *buf = 136315394;
    v18 = "PASESession";
    v19 = 2080;
    v20 = "SendMsg1";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  sub_2393D9C18(0x47uLL, 0x26u, &v15);
  if (v15)
  {
    sub_2393C7B90(buf);
    v21[1] = 0;
    v21[2] = 0;
    v21[0] = &unk_284BB83A8;
    v22 = 0;
    sub_238EA16C4(v21, &v15, 0);
    sub_2393C7BF0(buf, v21, 0xFFFFFFFF);
    v14 = -1;
    v3 = sub_2393C8CE0(buf, 0x100uLL, 21, &v14);
    v4 = v3;
    if (v3)
    {
      v5 = HIDWORD(v3);
    }

    else
    {
      v13 = 65;
      v6 = sub_2393F1998(a1 + 168, 0, 0, v16, &v13);
      if (v6)
      {
        v5 = HIDWORD(v6);
      }

      else if (v13 == 65)
      {
        v6 = sub_2393C8364(buf, 1uLL, v16, 0x41uLL);
        if (v6 || (v6 = sub_2393C8DE0(buf, v14), v6) || (v6 = sub_238DD2EFC(buf, &v15), v6) || (v7 = *sub_2393E088C((a1 + 88)), *v12 = 1, v6 = sub_239470478(v7, 0, 34, &v15, v12), v6))
        {
          v5 = HIDWORD(v6);
        }

        else
        {
          v11 = sub_2393D9044(0xBu);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *v12 = 0;
            _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_INFO, "Sent spake2p msg1", v12, 2u);
          }

          if (sub_2393D5398(3u))
          {
            sub_2393D5320(0xBu, 3);
          }

          v5 = 0;
          LODWORD(v6) = 0;
          *(a1 + 164) = 8961;
        }
      }

      else
      {
        LODWORD(v6) = 172;
        v5 = 640;
      }

      v4 = v6;
    }

    sub_2393B8400(v21);
    if (v15)
    {
      sub_2393D96C8(v15);
    }
  }

  else
  {
    v5 = 628;
    v4 = 11;
  }

  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    v18 = "PASESession";
    v19 = 2080;
    v20 = "SendMsg1";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4 | (v5 << 32);
}

uint64_t sub_2393EDF84(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v28 = "PASESession";
    v29 = 2080;
    v30 = "HandleMsg1_and_SendMsg2";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v26 = 65;
  v25 = 32;
  v5 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Received spake2p msg1", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0xBu, 3);
  }

  v6 = sub_23948B4CC();
  if (os_signpost_enabled(v6))
  {
    *buf = 136315394;
    v28 = "PASESession";
    v29 = 2080;
    v30 = "Pake1";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  sub_2393C5AAC(v23);
  v24 = 0;
  v22 = 21;
  v21 = 0;
  sub_238DD2F90(v23, a2);
  v7 = sub_2393C7114(v23, 21, 256);
  if (v7)
  {
    goto LABEL_12;
  }

  v7 = sub_2393C6A2C(v23, &v22);
  if (v7)
  {
    goto LABEL_12;
  }

  v7 = sub_2393C6FD0(v23, 1);
  if (v7)
  {
    goto LABEL_12;
  }

  if (sub_2393C5CB8(v23) != 65)
  {
    v8 = 680;
    LODWORD(v7) = 35;
    goto LABEL_13;
  }

  v7 = sub_2393C6160(v23, &v21);
  if (v7 || (v7 = sub_2393C6A98(v23, v22), v7) || (v7 = sub_2393F1748(a1 + 168, 0, 0, 0, 0, a1 + 1552, 32, a1 + 1584, 65), v7) || (v7 = sub_2393F1998(a1 + 168, v21, 65, v34, &v26), v7))
  {
LABEL_12:
    v8 = HIDWORD(v7);
    if (!v7)
    {
      v9 = 0;
      goto LABEL_15;
    }

LABEL_13:
    sub_2393E3ED8(a1 + 16, (a1 + 88), 2);
    v9 = v7;
LABEL_15:
    v10 = v8 << 32;
    goto LABEL_16;
  }

  if (v26 == 65)
  {
    v7 = sub_2393F1B24((a1 + 168), v21, 65, v33, &v25);
    if (!v7)
    {
      if (*a2)
      {
        sub_2393D96C8(*a2);
      }

      *a2 = 0;
      sub_2393D9C18(v26 + v25 + 10, 0x26u, &v20);
      if (!v20)
      {
        v8 = 697;
        LODWORD(v7) = 11;
        goto LABEL_13;
      }

      sub_2393C7B90(buf);
      v31[1] = 0;
      v31[2] = 0;
      v31[0] = &unk_284BB83A8;
      v32 = 0;
      sub_2393ECD90(buf, &v20, 0);
      v19 = -1;
      v7 = sub_2393C8CE0(buf, 0x100uLL, 21, &v19);
      if (v7 || (v7 = sub_2393C8364(buf, 1uLL, v34, 0x41uLL), v7) || (v7 = sub_2393C8364(buf, 2uLL, v33, v25), v7) || (v7 = sub_2393C8DE0(buf, v19), v7) || (v7 = sub_238DD2EFC(buf, &v20), v7) || (v17 = *sub_2393E088C((a1 + 88)), v18 = 1, v7 = sub_239470478(v17, 0, 35, &v20, &v18), v7))
      {
        v15 = 10;
      }

      else
      {
        v15 = 0;
        *(a1 + 164) = 9217;
      }

      sub_2393B8400(v31);
      if (v20)
      {
        sub_2393D96C8(v20);
      }

      if (v15 != 10)
      {
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Sent spake2p msg2", buf, 2u);
        }

        if (sub_2393D5398(3u))
        {
          sub_2393D5320(0xBu, 3);
        }

        v16 = sub_23948B4CC();
        if (os_signpost_enabled(v16))
        {
          ++dword_27DF77764;
          *buf = 67109120;
          LODWORD(v28) = dword_27DF77764;
          _os_signpost_emit_with_name_impl(&dword_238DAE000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Pake2", "%u", buf, 8u);
        }
      }
    }

    goto LABEL_12;
  }

  v10 = 0x2B100000000;
  v9 = 172;
LABEL_16:
  if (v24)
  {
    sub_2393D96C8(v24);
  }

  v11 = sub_23948B4CC();
  if (os_signpost_enabled(v11))
  {
    *buf = 136315394;
    v28 = "PASESession";
    v29 = 2080;
    v30 = "Pake1";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v12 = sub_23948B4CC();
  if (os_signpost_enabled(v12))
  {
    *buf = 136315394;
    v28 = "PASESession";
    v29 = 2080;
    v30 = "HandleMsg1_and_SendMsg2";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v12, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10 | v9;
}

unint64_t sub_2393EE5C8(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v27 = "PASESession";
    v28 = 2080;
    v29 = "HandleMsg2_and_SendMsg3";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v25 = 32;
  v5 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Received spake2p msg2", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0xBu, 3);
  }

  sub_2393C5AAC(v23);
  v24 = 0;
  v22 = 21;
  v20 = 0;
  v21 = 0;
  sub_238DD2F90(v23, a2);
  v6 = sub_2393C7114(v23, 21, 256);
  v7 = v6;
  if (v6)
  {
    v8 = HIDWORD(v6);
LABEL_12:
    sub_2393E3ED8(a1 + 16, (a1 + 88), 2);
    v10 = v7;
    goto LABEL_38;
  }

  v9 = sub_2393C6A2C(v23, &v22);
  if (v9 || (v9 = sub_2393C6FD0(v23, 1), v9))
  {
LABEL_11:
    v8 = HIDWORD(v9);
    v7 = v9;
    goto LABEL_12;
  }

  if (sub_2393C5CB8(v23) != 65)
  {
    v8 = 755;
LABEL_44:
    v7 = 35;
    goto LABEL_12;
  }

  v9 = sub_2393C6160(v23, &v21);
  if (v9)
  {
    goto LABEL_11;
  }

  v9 = sub_2393C6FD0(v23, 2);
  if (v9)
  {
    goto LABEL_11;
  }

  if (sub_2393C5CB8(v23) != 32)
  {
    v8 = 760;
    goto LABEL_44;
  }

  v9 = sub_2393C6160(v23, &v20);
  if (v9)
  {
    goto LABEL_11;
  }

  v9 = sub_2393C6A98(v23, v22);
  if (v9)
  {
    goto LABEL_11;
  }

  v9 = sub_2393F1B24((a1 + 168), v21, 65, v32, &v25);
  if (v9)
  {
    goto LABEL_11;
  }

  v9 = sub_2393F2200(a1 + 168, v20, 32);
  if (v9)
  {
    goto LABEL_11;
  }

  if (*a2)
  {
    sub_2393D96C8(*a2);
  }

  *a2 = 0;
  sub_2393D9C18(v25 + 6, 0x26u, &v19);
  if (!v19)
  {
    v8 = 778;
    v7 = 11;
    goto LABEL_12;
  }

  sub_2393C7B90(buf);
  v30[1] = 0;
  v30[2] = 0;
  v30[0] = &unk_284BB83A8;
  v31 = 0;
  sub_2393ECD90(buf, &v19, 0);
  v18 = -1;
  v11 = sub_2393C8CE0(buf, 0x100uLL, 21, &v18);
  if (v11 || (v11 = sub_2393C8364(buf, 1uLL, v32, v25), v11) || (v11 = sub_2393C8DE0(buf, v18), v11) || (v11 = sub_238DD2EFC(buf, &v19), v11) || (v16 = *sub_2393E088C((a1 + 88)), v17 = 1, v11 = sub_239470478(v16, 0, 36, &v19, &v17), v11))
  {
    v12 = 10;
  }

  else
  {
    v12 = 0;
    *(a1 + 164) = 16385;
  }

  v8 = HIDWORD(v11);
  sub_2393B8400(v30);
  if (v19)
  {
    sub_2393D96C8(v19);
  }

  if (v12 != 10)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Sent spake2p msg3", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0xBu, 3);
    }
  }

  v7 = v11;
  if (v11)
  {
    goto LABEL_12;
  }

  v10 = 0;
LABEL_38:
  if (v24)
  {
    sub_2393D96C8(v24);
  }

  v13 = sub_23948B4CC();
  if (os_signpost_enabled(v13))
  {
    *buf = 136315394;
    v27 = "PASESession";
    v28 = 2080;
    v29 = "HandleMsg2_and_SendMsg3";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v13, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v10 | (v8 << 32);
}

unint64_t sub_2393EEAA8(_BYTE *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = sub_23948B4CC();
  if (os_signpost_enabled(v4))
  {
    *buf = 136315394;
    v16 = "PASESession";
    v17 = 2080;
    v18 = "HandleMsg3";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v5 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "Received spake2p msg3", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0xBu, 3);
  }

  v6 = sub_23948B4CC();
  if (os_signpost_enabled(v6))
  {
    ++dword_27DF77768;
    *buf = 67109120;
    LODWORD(v16) = dword_27DF77768;
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Pake3", "%u", buf, 8u);
  }

  a1[164] = 0;
  sub_2393C5AAC(buf);
  v19 = 0;
  v14 = 21;
  v13 = 0;
  sub_238DD2F90(buf, a2);
  v7 = sub_2393C7114(buf, 21, 256);
  if (v7)
  {
    goto LABEL_12;
  }

  v7 = sub_2393C6A2C(buf, &v14);
  if (v7)
  {
    goto LABEL_12;
  }

  v7 = sub_2393C6FD0(buf, 1);
  if (v7)
  {
    goto LABEL_12;
  }

  if (sub_2393C5CB8(buf) != 32)
  {
    v8 = 0x33C00000000;
    v9 = 24;
    goto LABEL_13;
  }

  v7 = sub_2393C6160(buf, &v13);
  if (v7 || (v7 = sub_2393C6A98(buf, v14), v7) || (v7 = sub_2393F2200((a1 + 168), v13, 32), v7))
  {
LABEL_12:
    v8 = v7 & 0xFFFFFFFF00000000;
    v9 = v7;
LABEL_13:
    sub_2393E3ED8((a1 + 16), a1 + 88, 2);
    v7 = v8;
    goto LABEL_14;
  }

  sub_2393E3ED8((a1 + 16), a1 + 88, 0);
  a1[1872] = 1;
  sub_2393EF9A4((a1 + 16));
  v9 = 0;
LABEL_14:
  if (v19)
  {
    sub_2393D96C8(v19);
  }

  v10 = sub_23948B4CC();
  if (os_signpost_enabled(v10))
  {
    *buf = 136315394;
    v16 = "PASESession";
    v17 = 2080;
    v18 = "HandleMsg3";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7 | v9;
}

uint64_t sub_2393EEDF8(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    v4 = 864;
  }

  else
  {
    v4 = 868;
  }

  if (a3 == 2)
  {
    v5 = 56;
  }

  else
  {
    v5 = 172;
  }

  v6 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109378;
    v10 = a3;
    v11 = 2080;
    v12 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Received error (protocol code %d) during PASE process: %s", buf, 0x12u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393C9138();
    sub_2393D5320(0xBu, 1);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5 | (v4 << 32);
}

uint64_t sub_2393EEF2C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  if (a2)
  {
    v8 = (a1 + 88);
    v7 = *(a1 + 88);
    v9 = (a1 + 88);
    if (v7 == 1)
    {
      if (*sub_2393E088C(v9) != a2)
      {
        v10 = 0x37800000000;
LABEL_20:
        v11 = 47;
        return v11 | v10;
      }
    }

    else
    {
      sub_2393E0838(v9, a2);
    }

    v12 = sub_2393E088C(v8);
    sub_238EA6DC0(*v12, &v24);
    v13 = (*(*v24 + 16))(v24);
    (*(*v24 + 32))(v24);
    if (v13 == 1)
    {
      v14 = sub_2393E088C(v8);
      sub_239470428(*v14, 30000);
      if (!*a4)
      {
        v10 = 0x38800000000;
        goto LABEL_20;
      }

      v16 = *(a1 + 164);
      v15 = (a1 + 164);
      if (v16)
      {
        v17 = sub_2393ECAEC(v15);
        v18 = *(a3 + 2);
        v19 = *(a3 + 3);
        v20 = *a3;
        if (!*(a3 + 2) && !*(a3 + 3) && v20 == *v17)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v18 = *(a3 + 2);
        v19 = *(a3 + 3);
        v20 = *a3;
      }

      v10 = 0x38B00000000;
      v11 = 42;
      if (!v18 && !v19 && v20 == 64)
      {
LABEL_25:
        v10 = 0;
        v11 = 0;
      }
    }

    else
    {
      v21 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *v23 = 0;
        _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "PASESession received PBKDFParamRequest over encrypted session.  Ignoring.", v23, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0xBu, 1);
      }

      v10 = 0x38300000000;
      v11 = 3;
    }
  }

  else
  {
    v10 = 0x36F00000000;
    v11 = 47;
  }

  return v11 | v10;
}

unint64_t sub_2393EF160(_BYTE *a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    v21 = "PASESession";
    v22 = 2080;
    v23 = "OnMessageReceived";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v9 = sub_2393EEF2C(a1, a2, a3, a4);
  if (!v9)
  {
    v10 = *a3;
    v11 = 963;
    LODWORD(v9) = 42;
    if (v10 > 34)
    {
      switch(v10)
      {
        case '#':
          v12 = sub_2393EE5C8(a1, a4);
          break;
        case '$':
          v12 = sub_2393EEAA8(a1, a4);
          break;
        case '@':
          v13 = a1[164] == 1 && *sub_2393ECAEC(a1 + 164) == 64;
          v12 = sub_2393E90E8((a1 + 16), a4, v13);
          break;
        default:
          goto LABEL_22;
      }
    }

    else
    {
      switch(v10)
      {
        case ' ':
          v12 = sub_2393ECDD4(a1, a4);
          break;
        case '!':
          v12 = sub_2393ED6A4(a1, a4);
          break;
        case '""':
          v12 = sub_2393EDF84(a1, a4);
          break;
        default:
          goto LABEL_22;
      }
    }

    v9 = v12;
  }

  v11 = HIDWORD(v9);
  if (!v9)
  {
    v9 = 0;
    goto LABEL_30;
  }

LABEL_22:
  sub_2393EFD90((a1 + 16));
  sub_2393EB49C(a1);
  v14 = sub_2393D9044(0xBu);
  v9 = v9;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = sub_2393C9138();
    *buf = 136315138;
    v21 = v15;
    _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Failed during PASE session setup: %s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393C9138();
    sub_2393D5320(0xBu, 1);
  }

  v16 = sub_23948B4CC();
  if (os_signpost_enabled(v16))
  {
    ++dword_27DF7776C;
    *buf = 67109120;
    LODWORD(v21) = dword_27DF7776C;
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v16, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PASEFail", "%u", buf, 8u);
  }

  sub_2393EFDEC((a1 + 16));
LABEL_30:
  v17 = sub_23948B4CC();
  if (os_signpost_enabled(v17))
  {
    *buf = 136315394;
    v21 = "PASESession";
    v22 = 2080;
    v23 = "OnMessageReceived";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v17, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9 | (v11 << 32);
}

uint64_t sub_2393EF4FC(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = (*(*a1 + 56))(a1);
  sub_239497B60(a2, v6, a3, v11);
  if (v11[0] == 1)
  {
    v7 = sub_238EA9094(v11);
    if (sub_239495B98(a1 + 2, v7))
    {
      v8 = 0;
      v9 = 0;
      a1[8] = a2;
    }

    else
    {
      v8 = 0x2400000000;
      v9 = 172;
    }
  }

  else
  {
    v8 = 0x2300000000;
    v9 = 11;
  }

  if (v11[0] == 1)
  {
    (*(*v12 + 32))(v12);
  }

  return v9 | v8;
}

unint64_t sub_2393EF60C(uint64_t *a1, __int128 *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = sub_238DE36B8(a1 + 40);
  v5 = sub_239495304(*v4);
  v6 = (*(*a1 + 88))(a1, v5 + 176);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    v8 = sub_2393EF97C(a1);
    v9 = *a2;
    *(v5 + 112) = *(a2 + 4);
    *(v5 + 96) = v9;
    *(v5 + 116) = *(a2 + 5);
    *(v5 + 120) = *(a2 + 3);
    *(v5 + 264) = 2;
    *(v5 + 272) = 0;
    *(v5 + 280) = 0;
    *buf = v5 + 280;
    *v26 = 0;
    sub_2393F030C(buf, 0x20uLL);
    *buf = (*(*a1 + 72))(a1);
    v26[0] = v10;
    v23 = (*(*a1 + 64))(a1);
    v24 = v11;
    v12 = (*(*a1 + 80))(a1);
    sub_239492BE0(v5, buf, &v23, v12, v13, v8, a1 + 14);
    v14 = sub_2393D9044(1u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = (*(*a1 + 64))(a1) >> 32;
      v16 = (*(*a1 + 64))(a1);
      (*(*a1 + 64))(a1);
      v17 = *(v5 + 92);
      *buf = 67110144;
      *&buf[4] = v15;
      *v26 = 1024;
      *&v26[2] = v16;
      v27 = 1024;
      v28 = v18;
      v29 = 1024;
      v30 = v17;
      v31 = 1024;
      v32 = v8;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_INFO, "New secure session activated for device <%08X%08X, %d>, LSID:%d PSID:%d!", buf, 0x20u);
    }

    if (sub_2393D5398(3u))
    {
      v19 = (*(*a1 + 64))(a1) >> 32;
      (*(*a1 + 64))(a1);
      (*(*a1 + 64))(a1);
      v22 = *(v5 + 92);
      sub_2393D5320(1u, 3);
    }

    v7 = 0;
    LODWORD(v6) = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v6 | v7;
}

uint64_t sub_2393EF97C(uint64_t a1)
{
  v2 = *(a1 + 144);
  v1 = (a1 + 144);
  if ((v2 & 1) == 0)
  {
    sub_239531A9C();
  }

  return *sub_238E0A934(v1);
}

uint64_t sub_2393EF9A4(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = sub_2393E088C((a1 + 72));
  sub_238EA6DC0(*v2, &v32);
  v3 = sub_2394953AC(v32);
  v28 = *(v3 + 64);
  v4 = *(v3 + 84);
  v29 = *(v3 + 80);
  v30 = v4;
  v31 = *(v3 + 88);
  (*(*v32 + 32))(v32);
  v5 = v29;
  if (v29 != 3)
  {
    goto LABEL_12;
  }

  v6 = sub_2393E088C((a1 + 72));
  sub_238EA6DC0(*v6, &v32);
  v7 = *(sub_2394953AC(v32) + 32);
  if (v7)
  {
    v8 = sub_2393E967C(v7);
  }

  else
  {
    v8 = 0;
  }

  (*(*v32 + 32))(v32);
  v9 = sub_238DE36B8((a1 + 40));
  v10 = sub_239495304(*v9);
  v11 = *(v10 + 32);
  if (v11 != v8)
  {
    if (v8)
    {
      v12 = sub_2393E967C(v8);
      v11 = *(v10 + 32);
      if (!v11)
      {
LABEL_9:
        *(v10 + 32) = v12;
        goto LABEL_10;
      }
    }

    else
    {
      v12 = 0;
      if (!v11)
      {
        goto LABEL_9;
      }
    }

    sub_2393E9744(v11);
    goto LABEL_9;
  }

LABEL_10:
  if (v8)
  {
    sub_2393E9744(v8);
  }

LABEL_12:
  sub_2393EFD90(a1);
  v14 = sub_2393EF60C(a1, &v28);
  if (v14)
  {
    result = *(a1 + 88);
    if (result)
    {
      *(a1 + 88) = 0;
      result = (*(*result + 8))(result, v14, v13, 1);
    }
  }

  else
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      sub_239531B34();
    }

    v32 = 0u;
    v33 = 0u;
    v34 = 0;
    LOWORD(v32) = -32744;
    BYTE2(v33) = v5;
    v16 = sub_238DE36B8((a1 + 40));
    BYTE1(v33) = *(sub_239495304(*v16) + 57);
    v17 = sub_238DE36B8((a1 + 40));
    WORD2(v33) = *(sub_239495304(*v17) + 92);
    v18 = sub_238DE36B8((a1 + 40));
    *(&v32 + 1) = (*(**v18 + 48))(*v18);
    v19 = sub_238DE36B8((a1 + 40));
    (*(**v19 + 48))(*v19);
    LOBYTE(v33) = v20;
    if (qword_27DF7BD08 != -1)
    {
      sub_239531BCC();
    }

    if (sub_239479EA8(&byte_27DF7BCA8, &v32))
    {
      v21 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *v26 = 0;
        _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Failed to post Secure Session established event", v26, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0xBu, 1);
      }
    }

    v22 = *(a1 + 88);
    *(a1 + 88) = 0;
    if (*(a1 + 40) == 1)
    {
      v27 = *sub_238DE36B8((a1 + 40));
      (*(*v27 + 24))(v27);
      v23 = 1;
    }

    else
    {
      v23 = 0;
    }

    v26[0] = v23;
    v24 = sub_238DE36B8(v26);
    result = (*(*v22 + 24))(v22, v24);
    if (v26[0] == 1)
    {
      result = (*(*v27 + 32))(v27);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2393EFD90(uint64_t a1)
{
  v1 = (a1 + 72);
  if (*(a1 + 72) == 1)
  {
    *(*sub_2393E088C((a1 + 72)) + 40) = 0;
    if (*v1 == 1)
    {
      sub_2393E960C((*(a1 + 80) + 28));
    }

    *v1 = 0;
  }
}

uint64_t sub_2393EFDEC(uint64_t a1)
{
  result = *(a1 + 88);
  if (result)
  {
    *(a1 + 88) = 0;
    return (*(*result + 8))();
  }

  return result;
}

unint64_t sub_2393EFE24(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  result = sub_2393C8CE0(a3, a1, 21, &v6);
  if (!result)
  {
    result = sub_2393C81D4(a3, 1uLL, *a2);
    if (!result)
    {
      result = sub_2393C81D4(a3, 2uLL, *(a2 + 4));
      if (!result)
      {
        result = sub_2393C818C(a3, 3uLL, *(a2 + 8));
        if (!result)
        {
          result = sub_2393C818C(a3, 4uLL, 0x13u);
          if (!result)
          {
            result = sub_2393C818C(a3, 5uLL, 0xCu);
            if (!result)
            {
              result = sub_2393C81D4(a3, 6uLL, 0x1050000u);
              if (!result)
              {
                result = sub_2393C818C(a3, 7uLL, 1u);
                if (!result)
                {
                  return sub_2393C8DE0(a3, v6);
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_2393EFF04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) != a1)
  {
    return 0;
  }

  v17 = v3;
  v18 = v4;
  v16 = 21;
  v7 = sub_2393C6A2C(a2, &v16);
  if (!v7)
  {
    v7 = sub_2393C6B34(a2);
    if (v7)
    {
LABEL_6:
      v8 = HIDWORD(v7);
      return v7 | (v8 << 32);
    }

    v10 = sub_2393D9044(0xBu);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "Found MRP parameters in the message", v15, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0xBu, 3);
    }

    v11 = *(a2 + 16);
    if (v11 == 1)
    {
      *v15 = 0;
      v7 = sub_2393C5FC8(a2, v15);
      if (v7)
      {
        goto LABEL_6;
      }

      *a3 = *v15;
      v7 = sub_2393C6B34(a2);
      v8 = HIDWORD(v7);
      if (v7)
      {
        goto LABEL_40;
      }

      LODWORD(v11) = *(a2 + 16);
    }

    else
    {
      v8 = 0;
      LODWORD(v7) = 0;
    }

    if (v11 == 2)
    {
      *v15 = 0;
      v7 = sub_2393C5FC8(a2, v15);
      if (v7)
      {
        goto LABEL_6;
      }

      *(a3 + 4) = *v15;
      v7 = sub_2393C6B34(a2);
      v8 = HIDWORD(v7);
      if (v7)
      {
        goto LABEL_40;
      }

      LODWORD(v11) = *(a2 + 16);
    }

    if (v11 == 3)
    {
      *v15 = 0;
      v7 = sub_2393C5F70(a2, v15);
      if (v7)
      {
        goto LABEL_6;
      }

      *(a3 + 8) = *v15;
      v7 = sub_2393C6B34(a2);
      v8 = HIDWORD(v7);
      if (v7)
      {
        goto LABEL_40;
      }

      LODWORD(v11) = *(a2 + 16);
    }

    if (v11 == 4)
    {
      *v15 = 0;
      v7 = sub_2393C5F70(a2, v15);
      if (v7)
      {
        goto LABEL_6;
      }

      v12 = *v15;
      *(a3 + 12) = 1;
      *(a3 + 14) = v12;
      v7 = sub_2393C6B34(a2);
      v8 = HIDWORD(v7);
      if (v7)
      {
        goto LABEL_40;
      }

      LODWORD(v11) = *(a2 + 16);
    }

    if (v11 == 5)
    {
      *v15 = 0;
      v7 = sub_2393C5F70(a2, v15);
      if (v7)
      {
        goto LABEL_6;
      }

      v13 = *v15;
      *(a3 + 16) = 1;
      *(a3 + 18) = v13;
      v7 = sub_2393C6B34(a2);
      v8 = HIDWORD(v7);
      if (v7)
      {
        goto LABEL_40;
      }

      LODWORD(v11) = *(a2 + 16);
    }

    if (v11 != 6)
    {
      goto LABEL_37;
    }

    *v15 = 0;
    v7 = sub_2393C5FC8(a2, v15);
    if (v7)
    {
      goto LABEL_6;
    }

    v14 = *v15;
    *(a3 + 20) = 1;
    *(a3 + 24) = v14;
    v7 = sub_2393C6B34(a2);
    v8 = HIDWORD(v7);
    if (!v7)
    {
      LODWORD(v11) = *(a2 + 16);
LABEL_37:
      if (v11 == 7)
      {
        *v15 = 0;
        v7 = sub_2393C5F70(a2, v15);
        if (v7)
        {
          goto LABEL_6;
        }

        *(a3 + 28) = *v15;
        v7 = sub_2393C6B34(a2);
        v8 = HIDWORD(v7);
      }
    }

LABEL_40:
    if (v7 != 33 && v7)
    {
      return v7 | (v8 << 32);
    }

    v7 = sub_2393C6A98(a2, v16);
    goto LABEL_6;
  }

  v8 = HIDWORD(v7);
  return v7 | (v8 << 32);
}

BOOL sub_2393F01B4(uint64_t a1)
{
  v2 = *(a1 + 40);
  v1 = (a1 + 40);
  if (v2 != 1)
  {
    return 0;
  }

  v3 = sub_238DE36B8(v1);
  return *(sub_239495304(*v3) + 56) == 1;
}

void *sub_2393F01F8(uint64_t a1)
{
  v2 = (a1 + 72);
  if (*(a1 + 72) == 1)
  {
    v3 = sub_2393E088C((a1 + 72));
    sub_239470A64(*v3);
    if (*v2 == 1)
    {
      sub_2393E960C((*(a1 + 80) + 28));
    }

    *v2 = 0;
  }

  result = sub_239495804((a1 + 16));
  *(a1 + 144) = 0;
  *(a1 + 64) = 0;
  return result;
}

uint64_t sub_2393F0264(uint64_t result)
{
  v1 = result;
  if (*(result + 8))
  {
    v2 = *(result + 64);
    if (v2)
    {
      return (*(**(v2 + 24) + 80))(*(v2 + 24), sub_2393F03C4, result);
    }
  }

  else
  {
    result = *(result + 88);
    if (result)
    {
      *(v1 + 88) = 0;
      return (*(*result + 8))(result, 0x12400000002, "src/protocols/secure_channel/PairingSession.cpp", 1);
    }
  }

  return result;
}

void sub_2393F030C(_DWORD *a1, unint64_t a2)
{
  v2 = a2;
  v4 = a1[2];
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5 &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    v5 = (*a1 + 8);
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = *a1;
    *a1 += 8 * v7;
    *(v8 + 8 * v7) &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

uint64_t sub_2393F03C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_2393D9044(1u);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "ASYNC CASE Session establishment failed", v5, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(1u, 1);
  }

  result = *(a2 + 88);
  if (result)
  {
    *(a2 + 88) = 0;
    return (*(*result + 8))(result, 0x13400000002, "src/protocols/secure_channel/PairingSession.cpp", 1);
  }

  return result;
}

unint64_t sub_2393F0490(uint64_t a1, int a2, int a3)
{
  v3 = 0x1000F001F0001uLL >> (a3 - 16);
  if ((a3 - 16) > 0x30)
  {
    LOBYTE(v3) = 0;
  }

  if (a2)
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

uint64_t sub_2393F04F8@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  v5[sub_2393D54A8(a1, 16, v5)] = 0;
  result = sub_239296DA0("g/s/%s", a2, v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2393F0574(uint64_t a1, unint64_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_2393C7B90(v12);
  sub_2393C7BB8(v12, v16, 0x3C6uLL);
  v11 = 0;
  v4 = sub_2393C8CE0(v12, 0x100uLL, 22, &v11);
  if (!v4)
  {
    if (*a2)
    {
      v8 = 0;
      v9 = (a2 + 2);
      while (1)
      {
        LODWORD(v14[0]) = 0;
        v4 = sub_2393C8CE0(v12, 0x100uLL, 21, v14);
        if (v4)
        {
          break;
        }

        v4 = sub_2393C8140(v12, 1uLL, *v9);
        if (v4)
        {
          break;
        }

        v4 = sub_2393C8154(v12, 2uLL, *(v9 - 1));
        if (v4)
        {
          break;
        }

        v4 = sub_2393C8DE0(v12, v14[0]);
        if (v4)
        {
          break;
        }

        ++v8;
        v9 += 16;
        if (v8 >= *a2)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      v4 = sub_2393C8DE0(v12, v11);
      if (!v4)
      {
        if (HIWORD(v13))
        {
          v5 = 0x4800000000;
          LODWORD(v4) = 25;
          goto LABEL_3;
        }

        v10 = *(a1 + 8);
        v14[0] = *"g/sri";
        v14[1] = unk_2395C26A8;
        v15 = 0;
        v4 = (*(*v10 + 24))(v10, v14, v16, v13);
        if (!v4)
        {
          v5 = 0;
          LODWORD(v4) = 0;
          goto LABEL_3;
        }
      }
    }
  }

  v5 = v4 & 0xFFFFFFFF00000000;
LABEL_3:
  v6 = *MEMORY[0x277D85DE8];
  return v4 | v5;
}