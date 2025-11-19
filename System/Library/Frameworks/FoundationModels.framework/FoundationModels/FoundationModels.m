void sub_238810290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2388103CC(void *a1)
{
  if (qword_27DF31B28)
  {
    return (*(a1[8] + 16))();
  }

  else
  {
    return MEMORY[0x2821F9670](a1[4], sel_authenticate_clientID_scopes_resource_withCompletionHandler_, a1[9], a1[5], a1[6], a1[7], a1[8]);
  }
}

void sub_238810518(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(*(a1 + 32) + 8))
  {
    v65 = 0;
    v66 = &v65;
    v67 = 0x2050000000;
    v8 = qword_27DF31B40;
    v68 = qword_27DF31B40;
    if (!qword_27DF31B40)
    {
      v60 = MEMORY[0x277D85DD0];
      v61 = 3221225472;
      v62 = sub_238810ACC;
      v63 = &unk_278A57858;
      v64 = &v65;
      sub_238810988();
      v66[3] = objc_getClass("ACAuthenticationRequest");
      qword_27DF31B40 = *(v64[1] + 24);
      v8 = v66[3];
    }

    v9 = v8;
    _Block_object_dispose(&v65, 8);
    v10 = objc_alloc_init(v8);
    objc_msgSend_setOauthClientID_(v10, v11, *(a1 + 40), v12, v13, v14, v15);
    objc_msgSend_setAuthType_(v10, v16, 3, v17, v18, v19, v20);
    objc_msgSend_setOauthGrantType_(v10, v21, 2, v22, v23, v24, v25);
    objc_msgSend_setOauthResource_(v10, v26, *(a1 + 48), v27, v28, v29, v30);
    objc_msgSend_setOauthScopes_(v10, v31, *(a1 + 56), v32, v33, v34, v35);
    v42 = objc_msgSend_requiresSilentAuthentication(*(a1 + 32), v36, v37, v38, v39, v40, v41);
    objc_msgSend_setInteractivityType_(v10, v43, v42, v44, v45, v46, v47);
    v48 = *(*(a1 + 32) + 8);
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = sub_238810754;
    v57[3] = &unk_278A57808;
    v49 = *(a1 + 64);
    v50 = *(a1 + 72);
    v58 = v49;
    v59 = v50;
    objc_msgSend_authenticateWithRequest_completion_(v48, v51, v10, v57, v52, v53, v54);
  }

  else
  {
    v55 = *(a1 + 64);
    v56 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], a2, @"FMAjaxAuthenticator", 9999, 0, a6, a7);
    (*(v55 + 16))(v55, 0, v56);
  }
}

void sub_238810754(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = qword_27DF31B20;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_238810814;
  block[3] = &unk_278A577E0;
  v9 = v3;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v10 = v5;
  v11 = v6;
  v7 = v3;
  dispatch_async(v4, block);
}

void sub_238810814(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = objc_msgSend_serviceTicket(*(a1 + 32), a2, a3, a4, a5, a6, a7);

  if (v8)
  {
    v15 = *(a1 + 48);
    if (v15 == 1)
    {
      v16 = objc_msgSend_oauthAccessToken(*(a1 + 32), v9, v10, v11, v12, v13, v14);
    }

    else
    {
      if (v15)
      {
LABEL_10:
        v19 = *(*(a1 + 40) + 16);

        v19();
        return;
      }

      v16 = objc_msgSend_oauthIDToken(*(a1 + 32), v9, v10, v11, v12, v13, v14);
    }

    v18 = qword_27DF31B28;
    qword_27DF31B28 = v16;

    goto LABEL_10;
  }

  v17 = *(a1 + 40);
  v20 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v9, @"FMAjaxAuthenticator", 2, 0, v13, v14);
  (*(v17 + 16))(v17, 0, v20);
}

Class sub_238810938(uint64_t a1)
{
  sub_238810988();
  result = objc_getClass("ACMobileAuthenticationContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DF31B30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_238810988()
{
  v1 = *MEMORY[0x277D85DE8];
  if (!qword_27DF31B38)
  {
    qword_27DF31B38 = _sl_dlopen();
  }

  v0 = *MEMORY[0x277D85DE8];
}

uint64_t sub_238810A58(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_27DF31B38 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class sub_238810ACC(uint64_t a1)
{
  sub_238810988();
  result = objc_getClass("ACAuthenticationRequest");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DF31B40 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t Generable.asPartiallyGenerated()(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  (*(*(a2 + 16) + 24))(&v9, a1);
  v5 = v9;
  v6 = v10;
  v7 = v11;
  v8 = v12;
  sub_238810CBC(&v5);
  sub_238810DC4(v5, *(&v5 + 1), v6);
}

uint64_t sub_238810CBC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 17);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v1;
  v11 = v5;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 8);
  sub_238814698(v10[0], v1, v5);

  v8 = swift_checkMetadataState();
  return v7(v10, v8, AssociatedConformanceWitness);
}

uint64_t sub_238810DC4(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:

    case 4:

LABEL_6:

    case 3:
      goto LABEL_6;
  }

  return result;
}

uint64_t sub_238810E44(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_238810E8C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_238810ED4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2388D0D88();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  sub_238810E44(a1, a2);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2388D3F70;
  v21 = *(v3 + 8);
  v22 = *v3;
  LOBYTE(a1) = *(v3 + 16);
  v10 = *(v3 + 17);
  v11 = sub_2388D0DC8();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v15 = *(v7 + 72);
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  *(swift_allocObject() + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  sub_238815678(&qword_27DF2FA08, MEMORY[0x277CC8718]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
  sub_2388D2F08();
  sub_2388D0D98();
  v17 = sub_238819C1C(v22, v21, a1, v14);
  v19 = v18;

  *(v9 + 32) = v17;
  *(v9 + 40) = v19;
  *(v9 + 48) = 0;
  *a3 = v9;
  return result;
}

uint64_t sub_238811138@<X0>(char a1@<W0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_2388D0D88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_238810E44(a2, a3);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2388D3F70;
  v29[0] = a1 & 1;
  v29[1] = 0;
  v30 = 0;
  v11 = sub_23881EF9C(v29);
  v26 = v12;
  v27 = v11;
  v14 = v13;

  v15 = sub_2388D0DC8();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v19 = *(v8 + 72);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  v29[0] = v21;
  sub_238815678(&qword_27DF2FA08, MEMORY[0x277CC8718]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
  sub_2388D2F08();
  sub_2388D0D98();
  v22 = sub_238819C1C(v27, v26, v14, v18);
  v24 = v23;

  sub_238810DC4(v27, v26, v14);

  *(v10 + 32) = v22;
  *(v10 + 40) = v24;
  *(v10 + 48) = 0;
  *a4 = v10;
  return result;
}

uint64_t sub_2388113C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_2388D0D88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_238810E44(a2, a3);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2388D3F70;
  v29[0] = a1;
  v29[1] = 0.0;
  v30 = 1;
  v11 = sub_23881EF9C(v29);
  v26 = v12;
  v27 = v11;
  v14 = v13;
  swift_bridgeObjectRelease_n();
  v15 = sub_2388D0DC8();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v19 = *(v8 + 72);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  *&v29[0] = v21;
  sub_238815678(&qword_27DF2FA08, MEMORY[0x277CC8718]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
  sub_2388D2F08();
  sub_2388D0D98();
  v22 = sub_238819C1C(v27, v26, v14, v18);
  v24 = v23;

  sub_238810DC4(v27, v26, v14);

  *(v10 + 32) = v22;
  *(v10 + 40) = v24;
  *(v10 + 48) = 0;
  *a4 = v10;
  return result;
}

uint64_t sub_238811664@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, float a4@<S0>)
{
  v7 = sub_2388D0D88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_238810E44(a1, a2);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2388D3F70;
  v28[0] = a4;
  v28[1] = 0.0;
  v29 = 1;
  v26 = sub_23881EF9C(v28);
  v12 = v11;
  v14 = v13;
  swift_bridgeObjectRelease_n();
  v15 = sub_2388D0DC8();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v19 = *(v8 + 72);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  *&v28[0] = v21;
  sub_238815678(&qword_27DF2FA08, MEMORY[0x277CC8718]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
  sub_2388D2F08();
  sub_2388D0D98();
  v22 = sub_238819C1C(v26, v12, v14, v18);
  v24 = v23;

  sub_238810DC4(v26, v12, v14);

  *(v10 + 32) = v22;
  *(v10 + 40) = v24;
  *(v10 + 48) = 0;
  *a3 = v10;
  return result;
}

uint64_t sub_23881190C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v7 = sub_2388D0D88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  sub_238810E44(a1, a2);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2388D3F70;
  *v28 = a4;
  v28[1] = 0;
  v29 = 1;
  v26 = sub_23881EF9C(v28);
  v12 = v11;
  v14 = v13;

  v15 = sub_2388D0DC8();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v19 = *(v8 + 72);
  v20 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  v28[0] = v21;
  sub_238815678(&qword_27DF2FA08, MEMORY[0x277CC8718]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
  sub_2388D2F08();
  sub_2388D0D98();
  v22 = sub_238819C1C(v26, v12, v14, v18);
  v24 = v23;

  sub_238810DC4(v26, v12, v14);

  *(v10 + 32) = v22;
  *(v10 + 40) = v24;
  *(v10 + 48) = 0;
  *a3 = v10;
  return result;
}

uint64_t sub_238811BAC@<X0>(uint64_t *a1@<X3>, uint64_t *a2@<X4>, uint64_t *a3@<X8>)
{
  v27 = sub_2388D0D88();
  v5 = *(v27 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v27);
  sub_238810E44(a1, a2);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2388D3F70;
  v8 = sub_2388D2E48();
  sub_2388D2D38();
  v10 = v9;

  v29[0] = v10;
  v29[1] = 0;
  v30 = 1;
  v26 = sub_23881EF9C(v29);
  v12 = v11;
  v14 = v13;
  swift_bridgeObjectRelease_n();
  v15 = sub_2388D0DC8();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v19 = *(v5 + 72);
  v20 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  v29[0] = v21;
  sub_238815678(&qword_27DF2FA08, MEMORY[0x277CC8718]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
  sub_2388D2F08();
  sub_2388D0D98();
  v22 = sub_238819C1C(v26, v12, v14, v18);
  v24 = v23;

  sub_238810DC4(v26, v12, v14);

  *(v7 + 32) = v22;
  *(v7 + 40) = v24;
  *(v7 + 48) = 0;
  *a3 = v7;
  return result;
}

uint64_t sub_238811E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  v24 = sub_2388D0D88();
  v9 = *(v24 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v24);
  sub_238810E44(a3, a4);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_2388D3F70;
  (*(a2 + 24))(v26, a1, a2);
  v12 = v26[1];
  v23 = v26[0];
  LOBYTE(a1) = v27;
  v13 = sub_2388D0DC8();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v17 = *(v9 + 72);
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  *(swift_allocObject() + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  sub_238815678(&qword_27DF2FA08, MEMORY[0x277CC8718]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
  sub_2388D2F08();
  sub_2388D0D98();
  v19 = sub_238819C1C(v23, v12, a1, v16);
  v21 = v20;

  sub_238810DC4(v23, v12, a1);

  *(v11 + 32) = v19;
  *(v11 + 40) = v21;
  *(v11 + 48) = 0;
  *a5 = v11;
  return result;
}

double Optional<A>.generatedContent.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[4] = *(a1 + 16);
  v15[5] = a2;
  v15[2] = a2;
  v15[3] = swift_getKeyPath();
  sub_2388122EC(sub_23881466C, v15, MEMORY[0x277D84A98], &type metadata for GeneratedContent, v4, &v16);

  v5 = v19;
  if (v19 == 1)
  {
    if (qword_27DF2F9B8 != -1)
    {
      swift_once();
    }

    v6 = qword_27DF3F830;
    v7 = *algn_27DF3F838;
    v8 = HIBYTE(word_27DF3F840);
    v9 = qword_27DF3F848;
    v10 = unk_27DF3F850;
    *a3 = qword_27DF3F830;
    *(a3 + 8) = v7;
    v11 = word_27DF3F840;
    *(a3 + 16) = word_27DF3F840;
    *(a3 + 17) = v8;
    *(a3 + 24) = v9;
    *(a3 + 32) = v10;
    sub_238814698(v6, v7, v11);
  }

  else
  {
    v14 = v17;
    v13 = v18;
    result = *&v16;
    *a3 = v16;
    *(a3 + 16) = v14;
    *(a3 + 17) = HIBYTE(v14) & 1;
    *(a3 + 24) = v13;
    *(a3 + 32) = v5;
  }

  return result;
}

double sub_23881227C@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  (*(*(a1 + a2 - 8) + 24))(&v7, *(a1 + a2 - 16));
  v4 = v8;
  v5 = v9;
  *a3 = v7;
  *(a3 + 16) = v4;
  *(a3 + 17) = v5;
  result = v10[0];
  *(a3 + 24) = *v10;
  return result;
}

uint64_t sub_2388122EC@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t sub_2388125CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v7 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();
  return a3(a1, WitnessTable);
}

uint64_t static Bool.generationSchema.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GenerationSchema.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_238814708(v5, a1);
  v11[1] = MEMORY[0x277D839B0];
  sub_238810E44(&qword_27DF2FA28, &unk_2388D3FD0);
  v6 = sub_2388D28B8();
  v8 = v7;
  sub_23881476C(v5);
  result = type metadata accessor for GenerationSchema(0);
  v10 = (a1 + *(result + 20));
  *v10 = v6;
  v10[1] = v8;
  return result;
}

uint64_t Bool.init(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = *(a1 + 32);
  if (v1)
  {
    v2 = sub_238814A84();
  }

  else
  {
    v2 = v4[0];
  }

  sub_238814D44(v4);
  return v2 & 1;
}

uint64_t Bool.generatedContent.getter@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v9[0] = a1 & 1;
  v9[1] = 0;
  v10 = 0;
  v3 = sub_23881EF9C(v9);
  v5 = v4;
  v7 = v6;

  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 17) = HIBYTE(v7) & 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_238812804@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GenerationSchema.Kind(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_238814708(v6, a1);
  v13 = v1;
  sub_238810E44(&qword_27DF2FA28, &unk_2388D3FD0);
  v7 = sub_2388D28B8();
  v9 = v8;
  sub_23881476C(v6);
  result = type metadata accessor for GenerationSchema(0);
  v11 = (a1 + *(result + 20));
  *v11 = v7;
  v11[1] = v9;
  return result;
}

uint64_t sub_2388128E0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v8 = *(a1 + 32);
  if (v4)
  {
    v5 = sub_238814A84();
    result = sub_238814D44(v7);
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v5 = v7[0];
    result = sub_238814D44(v7);
  }

  *a2 = v5 & 1;
  return result;
}

uint64_t sub_238812964@<X0>(uint64_t a1@<X8>)
{
  v9[0] = *v1;
  v9[1] = 0;
  v10 = 0;
  v3 = sub_23881EF9C(v9);
  v5 = v4;
  v7 = v6;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 17) = HIBYTE(v7) & 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t static String.generationSchema.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_238810E44(&qword_27DF2FA30, &qword_2388D44E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v19 - v4;
  v6 = type metadata accessor for GenerationSchema.Kind(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v9 + *(sub_238810E44(&qword_27DF2FA38, &unk_2388D3FE0) + 64);
  *v9 = 0u;
  v9[1] = 0u;
  v11 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
  v12 = *(*(v11 - 8) + 56);
  v12(v5, 1, 1, v11);
  v13 = *(type metadata accessor for StringGuides(0) + 20);
  v12(&v10[v13], 1, 1, v11);
  *v10 = 0;
  sub_2388150EC(v5, &v10[v13]);
  swift_storeEnumTagMultiPayload();
  sub_238814708(v9, a1);
  v19[1] = MEMORY[0x277D837D0];
  sub_238810E44(&qword_27DF2FA48, &unk_2388D3FF0);
  v14 = sub_2388D28B8();
  v16 = v15;
  sub_23881476C(v9);
  result = type metadata accessor for GenerationSchema(0);
  v18 = (a1 + *(result + 20));
  *v18 = v14;
  v18[1] = v16;
  return result;
}

_OWORD *String.init(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v7 = *(a1 + 32);
  if (v2 == 2)
  {
    v3 = *&v6[0];
  }

  else
  {
    v3 = v6;
    v4 = sub_2388147C8();
    if (!v1)
    {
      v3 = v4;
    }
  }

  sub_238814D44(v6);
  return v3;
}

uint64_t String.generatedContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10[0] = a1;
  v10[1] = a2;
  v11 = 2;

  v4 = sub_23881EF9C(v10);
  v6 = v5;
  v8 = v7;

  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *(a3 + 17) = HIBYTE(v8) & 1;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  return result;
}

uint64_t sub_238812D2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v4;
  v11 = *(a1 + 32);
  if (v4 == 2)
  {
    v5 = *(&v10[0] + 1);
    v6 = *&v10[0];
  }

  else
  {
    v7 = sub_2388147C8();
    if (v2)
    {
      return sub_238814D44(v10);
    }

    v6 = v7;
    v5 = v8;
  }

  result = sub_238814D44(v10);
  *a2 = v6;
  a2[1] = v5;
  return result;
}

uint64_t sub_238812DC0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v10[0] = *v1;
  v10[1] = v3;
  v11 = 2;

  v4 = sub_23881EF9C(v10);
  v6 = v5;
  v8 = v7;

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8;
  *(a1 + 17) = HIBYTE(v8) & 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t static Int.generationSchema.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GenerationSchema.Kind(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v5 = 0;
  v5[8] = 1;
  *(v5 + 2) = 0;
  v5[24] = 1;
  swift_storeEnumTagMultiPayload();
  sub_238814708(v5, a1);
  v11[1] = MEMORY[0x277D83B88];
  sub_238810E44(&qword_27DF2FA50, "\bH");
  v6 = sub_2388D28B8();
  v8 = v7;
  sub_23881476C(v5);
  result = type metadata accessor for GenerationSchema(0);
  v10 = (a1 + *(result + 20));
  *v10 = v6;
  v10[1] = v8;
  return result;
}

uint64_t Int.init(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v4 = sub_238815BE8();
  sub_238810DC4(v1, v2, v3);

  return v4;
}

uint64_t Int.generatedContent.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  v9[0] = a1;
  v9[1] = 0.0;
  v10 = 1;
  v3 = sub_23881EF9C(v9);
  v5 = v4;
  v7 = v6;
  result = swift_bridgeObjectRelease_n();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 17) = HIBYTE(v7) & 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  return result;
}

uint64_t sub_23881302C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GenerationSchema.Kind(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = 0;
  v6[8] = 1;
  *(v6 + 2) = 0;
  v6[24] = 1;
  swift_storeEnumTagMultiPayload();
  sub_238814708(v6, a1);
  v13 = v1;
  sub_238810E44(&qword_27DF2FA50, "\bH");
  v7 = sub_2388D28B8();
  v9 = v8;
  sub_23881476C(v6);
  result = type metadata accessor for GenerationSchema(0);
  v11 = (a1 + *(result + 20));
  *v11 = v7;
  v11[1] = v9;
  return result;
}

uint64_t sub_23881311C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 32);
  v7 = *(a1 + 16);
  v10 = *(a1 + 17);
  v11 = *(a1 + 24);
  v8 = sub_238815BE8();
  sub_238810DC4(v4, v5, v7);

  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t Float.init(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v4 = *(a1 + 32);
  if (v1 != 1)
  {
    sub_238814D98();
  }

  return sub_238814D44(v3);
}

uint64_t Float.generatedContent.getter@<X0>(uint64_t a1@<X8>, float a2@<S0>)
{
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v9[0] = a2;
  v9[1] = 0.0;
  v10 = 1;
  v3 = sub_23881EF9C(v9);
  v5 = v4;
  v7 = v6;
  result = swift_bridgeObjectRelease_n();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 17) = HIBYTE(v7) & 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_238813310@<X0>(uint64_t a1@<X0>, float *a2@<X8>)
{
  v4 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v4;
  v10 = *(a1 + 32);
  if (v4 == 1)
  {
    v5 = *v9;
    result = sub_238814D44(v9);
  }

  else
  {
    sub_238814D98();
    v5 = v7;
    result = sub_238814D44(v9);
    if (v2)
    {
      return result;
    }
  }

  v8 = v5;
  *a2 = v8;
  return result;
}

double Double.init(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v1;
  v6 = *(a1 + 32);
  if (v1 == 1)
  {
    v2 = *v5;
  }

  else
  {
    sub_238814D98();
    v2 = v3;
  }

  sub_238814D44(v5);
  return v2;
}

uint64_t Double.generatedContent.getter@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  *v9 = a2;
  v9[1] = 0;
  v10 = 1;
  v3 = sub_23881EF9C(v9);
  v5 = v4;
  v7 = v6;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 17) = HIBYTE(v7) & 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_2388134F0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v4;
  v9 = *(a1 + 32);
  if (v4 == 1)
  {
    v5 = *&v8[0];
    result = sub_238814D44(v8);
  }

  else
  {
    sub_238814D98();
    v5 = v7;
    result = sub_238814D44(v8);
    if (v2)
    {
      return result;
    }
  }

  *a2 = v5;
  return result;
}

uint64_t sub_238813574@<X0>(uint64_t a1@<X8>)
{
  v9[0] = *v1;
  v9[1] = 0;
  v10 = 1;
  v3 = sub_23881EF9C(v9);
  v5 = v4;
  v7 = v6;

  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 17) = HIBYTE(v7) & 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t _sSd16FoundationModelsE16generationSchemaAA010GenerationD0VvgZ_0@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  type metadata accessor for GenerationSchema.Kind(0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for GenerationSchema(0);
  v3 = (a1 + *(result + 20));
  *v3 = 0x7265626D754ELL;
  v3[1] = 0xE600000000000000;
  return result;
}

uint64_t NSDecimal.init(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v2;
  v7 = *(a1 + 32);
  if (v2 == 1)
  {
    v3 = *v6;
    result = sub_238814D44(v6);
  }

  else
  {
    sub_238814D98();
    v3 = v5;
    result = sub_238814D44(v6);
    if (v1)
    {
      return result;
    }
  }

  return MEMORY[0x23EE670F0](result, v3);
}

uint64_t NSDecimal.generatedContent.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2388D2E48();
  sub_2388D2D38();
  v4 = v3;

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v11[0] = v4;
  v11[1] = 0;
  v12 = 1;
  v5 = sub_23881EF9C(v11);
  v7 = v6;
  v9 = v8;
  result = swift_bridgeObjectRelease_n();
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9;
  *(a1 + 17) = HIBYTE(v9) & 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_2388137C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v10[0] = *a1;
  v10[1] = v4;
  v11 = *(a1 + 32);
  if (v4 == 1)
  {
    v5 = *v10;
    result = sub_238814D44(v10);
  }

  else
  {
    sub_238814D98();
    v5 = v7;
    result = sub_238814D44(v10);
    if (v2)
    {
      return result;
    }
  }

  result = MEMORY[0x23EE670F0](result, v5);
  *a2 = result;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  return result;
}

uint64_t sub_238813858@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  v3 = *v1;
  v4 = v1[1];
  return NSDecimal.generatedContent.getter(a1);
}

uint64_t sub_23881388C@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 4);
  v7 = *v3;
  v8 = v3[1];
  return sub_238811BAC(a1, a2, a3);
}

uint64_t static Array<A>.generationSchema.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for GenerationSchema.Kind(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v9 = a1;
  *(v9 + 1) = a2;
  *(v9 + 2) = 0;
  v9[24] = 1;
  *(v9 + 4) = 0;
  v9[40] = 1;
  *(v9 + 6) = 0;
  swift_storeEnumTagMultiPayload();
  v10 = sub_2388D2B18();
  sub_238814708(v9, a3);
  v16[1] = v10;
  swift_getMetatypeMetadata();
  v11 = sub_2388D28B8();
  v13 = v12;
  sub_23881476C(v9);
  result = type metadata accessor for GenerationSchema(0);
  v15 = (a3 + *(result + 20));
  *v15 = v11;
  v15[1] = v13;
  return result;
}

uint64_t Array<A>.generatedContent.getter@<X0>(uint64_t a1@<X8>)
{
  sub_238810E44(&qword_27DF2FA58, &qword_2388D4000);
  v2 = sub_2388D3098();

  return sub_238813A34(v2, 0, 0, a1);
}

uint64_t sub_238813A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  v48 = MEMORY[0x277D84F90];
  result = sub_2388B7B78(0, v5, 0);
  v7 = v48;
  v38 = v5;
  v39 = a1;
  if (v5)
  {
    v8 = *(a1 + 16);
    v9 = a1 + 32;
    while (v8)
    {
      sub_238815814(v9, v45);
      v10 = v46;
      v11 = v47;
      sub_238815878(v45, v46);
      (*(v11 + 24))(&v41, v10, v11);
      v12 = v41;
      v13 = v42;
      v14 = v43;
      v40 = v44;
      sub_238814698(v41, v42, v43);
      sub_238810DC4(v12, v13, v14);

      result = sub_2388158BC(v45);
      v48 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_2388B7B78((v15 > 1), v16 + 1, 1);
        v7 = v48;
      }

      *(v7 + 16) = v16 + 1;
      v17 = v7 + 24 * v16;
      *(v17 + 32) = v12;
      *(v17 + 40) = v13;
      *(v17 + 48) = v14;
      *(v17 + 49) = v40;
      v9 += 40;
      --v8;
      if (!--v5)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v18 = v38;
    result = v39;
    v19 = *(v39 + 16);
    if (v38 == v19)
    {
LABEL_8:

      v20 = sub_23882D3D4(v7);
      v22 = v21;
      v24 = v23;
      sub_238814698(v20, v21, v23);

      *a4 = v20;
      *(a4 + 8) = v22;
      *(a4 + 16) = v24;
      *(a4 + 17) = HIBYTE(v24) & 1;
      *(a4 + 24) = a2;
      *(a4 + 32) = a3;
      return result;
    }

    v25 = v39 + 40 * v38 + 32;
    while (v18 < v19)
    {
      sub_238815814(v25, v45);
      v26 = v46;
      v27 = v47;
      sub_238815878(v45, v46);
      (*(v27 + 24))(&v41, v26, v27);
      v28 = v41;
      v29 = v42;
      v30 = v43;
      v31 = v44;
      sub_238814698(v41, v42, v43);
      sub_238810DC4(v28, v29, v30);

      sub_2388158BC(v45);
      v48 = v7;
      v33 = *(v7 + 16);
      v32 = *(v7 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_2388B7B78((v32 > 1), v33 + 1, 1);
        v7 = v48;
      }

      ++v18;
      *(v7 + 16) = v33 + 1;
      v34 = v7 + 24 * v33;
      *(v34 + 32) = v28;
      *(v34 + 40) = v29;
      *(v34 + 48) = v30;
      *(v34 + 49) = v31;
      result = v39;
      v19 = *(v39 + 16);
      v25 += 40;
      if (v18 == v19)
      {
        goto LABEL_8;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_238813D04@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  return Array<A>.generatedContent.getter(a1);
}

void *Array<A>.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 8);
  v8 = *(a1 + 17);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 16);
  v20[0] = *a1;
  v6 = v20[0];
  v20[1] = v7;
  v21 = v11;
  v22 = v8;
  v23 = v9;
  v24 = v10;
  v12 = v20;
  v13 = sub_23881608C();
  sub_238810DC4(v6, v7, v11);

  if (!v3)
  {
    v20[0] = v13;
    MEMORY[0x28223BE20](v14);
    v19[2] = a2;
    v19[3] = a3;
    v19[4] = a2;
    v15 = sub_238810E44(&qword_27DF2FA60, &qword_2388D4008);
    v16 = sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
    v17 = sub_238815180(&qword_27DF2FA70, &qword_27DF2FA60, &qword_2388D4008);
    v12 = sub_238813F68(sub_23881515C, v19, v15, a2, v16, v17, MEMORY[0x277D84950], &v25);
  }

  return v12;
}

uint64_t sub_238813EA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 8);
  v10 = *(a1 + 17);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v13 = *(a1 + 16);
  v16[0] = *a1;
  v16[1] = v9;
  v17 = v13;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v14 = *(a4 + 8);
  sub_238814698(v16[0], v9, v13);

  result = v14(v16, a3, a4);
  if (v5)
  {
    *a5 = v5;
  }

  return result;
}

uint64_t sub_238813F68(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_2388D2D78();
  if (!v26)
  {
    return sub_2388D2AF8();
  }

  v48 = v26;
  v52 = sub_2388D3038();
  v39 = sub_2388D3048();
  sub_2388D3018();
  result = sub_2388D2D68();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_2388D2D98();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_2388D3028();
      result = sub_2388D2D88();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_238814388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = Array<A>.init(_:)(a1, *(a2 + 16), *(a3 - 8));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t Never.init(_:)(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_238810DC4(*a1, *(a1 + 8), *(a1 + 16));

  sub_2388151C8();
  swift_allocError();
  *v2 = 0xD000000000000028;
  *(v2 + 8) = 0x80000002388DE1C0;
  *(v2 + 16) = MEMORY[0x277D84F90];
  *(v2 + 24) = 0;
  *(v2 + 32) = 5;
  return swift_willThrow();
}

uint64_t sub_238814564(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_238810DC4(*a1, *(a1 + 8), *(a1 + 16));

  sub_2388151C8();
  swift_allocError();
  *v2 = 0xD000000000000028;
  *(v2 + 8) = 0x80000002388DE1C0;
  *(v2 + 16) = MEMORY[0x277D84F90];
  *(v2 + 24) = 0;
  *(v2 + 32) = 5;
  return swift_willThrow();
}

__n128 sub_238814660(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_238814698(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:

    case 4:

LABEL_6:

    case 3:
      goto LABEL_6;
  }

  return result;
}

uint64_t sub_238814708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenerationSchema.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23881476C(uint64_t a1)
{
  v2 = type metadata accessor for GenerationSchema.Kind(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2388147C8()
{
  v1 = sub_2388D0D88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_2388D2FA8();

  v17 = *(v0 + 8);
  v18 = *v0;
  v4 = *(v0 + 16);
  v5 = *(v0 + 17);
  v6 = sub_2388D0DC8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v10 = *(v2 + 72);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  sub_238815678(&qword_27DF2FA08, MEMORY[0x277CC8718]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
  sub_2388D2F08();
  sub_2388D0D98();
  v12 = sub_238819C1C(v18, v17, v4, v9);
  v14 = v13;

  MEMORY[0x23EE66C20](v12, v14);

  sub_2388151C8();
  swift_allocError();
  *v15 = 0xD000000000000033;
  *(v15 + 8) = 0x80000002388DE260;
  *(v15 + 16) = MEMORY[0x277D84F90];
  *(v15 + 24) = 0;
  *(v15 + 32) = 5;
  return swift_willThrow();
}

uint64_t sub_238814A84()
{
  v1 = sub_2388D0D88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_2388D2FA8();

  v17 = *(v0 + 8);
  v18 = *v0;
  v4 = *(v0 + 16);
  v5 = *(v0 + 17);
  v6 = sub_2388D0DC8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v10 = *(v2 + 72);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  sub_238815678(&qword_27DF2FA08, MEMORY[0x277CC8718]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
  sub_2388D2F08();
  sub_2388D0D98();
  v12 = sub_238819C1C(v18, v17, v4, v9);
  v14 = v13;

  MEMORY[0x23EE66C20](v12, v14);

  sub_2388151C8();
  swift_allocError();
  *v15 = 0xD000000000000031;
  *(v15 + 8) = 0x80000002388DE2A0;
  *(v15 + 16) = MEMORY[0x277D84F90];
  *(v15 + 24) = 0;
  *(v15 + 32) = 5;
  swift_willThrow();
  return 0;
}

uint64_t sub_238814D98()
{
  v1 = sub_2388D0D88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  sub_2388D2FA8();

  v17 = *(v0 + 8);
  v18 = *v0;
  v4 = *(v0 + 16);
  v5 = *(v0 + 17);
  v6 = sub_2388D0DC8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v10 = *(v2 + 72);
  v11 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  sub_238815678(&qword_27DF2FA08, MEMORY[0x277CC8718]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
  sub_2388D2F08();
  sub_2388D0D98();
  v12 = sub_238819C1C(v18, v17, v4, v9);
  v14 = v13;

  MEMORY[0x23EE66C20](v12, v14);

  sub_2388151C8();
  swift_allocError();
  *v15 = 0xD000000000000033;
  *(v15 + 8) = 0x80000002388DE220;
  *(v15 + 16) = MEMORY[0x277D84F90];
  *(v15 + 24) = 0;
  *(v15 + 32) = 5;
  return swift_willThrow();
}

uint64_t sub_238815054@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_238810ED4(&qword_27DF2F9F8, &unk_2388D3F80, a1);
}

uint64_t sub_2388150A0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_238810ED4(&qword_27DF2FA20, &qword_2388DB880, a1);
}

uint64_t sub_2388150EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF2FA30, &qword_2388D44E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_238815180(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_238810E8C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2388151C8()
{
  result = qword_27DF2FA78;
  if (!qword_27DF2FA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FA78);
  }

  return result;
}

uint64_t sub_23881521C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2388152E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *(a2 + 16);
  v6 = *(a1 + 16);
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t sub_2388153A8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v7 = *(*a3 + 8);
  *(a1 + 8) = swift_getWitnessTable();
  v6 = *(v4 + 16);
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_238815424()
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

__n128 sub_2388154EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_238815504(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238815524(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

void sub_238815578(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2388155C4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getWitnessTable();

  return sub_2388D1348();
}

uint64_t sub_238815678(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2388156C0()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2388D1368();
}

uint64_t sub_23881570C()
{
  v1 = *v0;
  swift_getWitnessTable();
  return sub_2388D1358();
}

uint64_t sub_238815764()
{
  sub_2388D34A8();
  v1 = *v0;
  swift_getWitnessTable();
  sub_2388D1358();
  return sub_2388D34E8();
}

uint64_t sub_238815814(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_238815878(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2388158BC(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t GeneratedContent.jsonString.getter()
{
  v1 = sub_2388D0D88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = *(v0 + 8);
  v15 = *v0;
  v5 = *(v0 + 16);
  v6 = *(v0 + 17);
  v7 = sub_2388D0DC8();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v11 = *(v2 + 72);
  v12 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  sub_238815B14();
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
  sub_2388D2F08();
  sub_2388D0D98();
  v13 = sub_238819C1C(v15, v4, v5, v10);

  return v13;
}

unint64_t sub_238815B14()
{
  result = qword_27DF2FA08;
  if (!qword_27DF2FA08)
  {
    sub_2388D0D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF2FA08);
  }

  return result;
}

uint64_t GeneratedContent.init(kind:id:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v13 = *a1;
  v14 = v4;
  v7 = sub_23881EF9C(&v13);
  v9 = v8;
  v11 = v10;

  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v11;
  *(a3 + 17) = HIBYTE(v11) & 1;
  *(a3 + 24) = v5;
  *(a3 + 32) = v6;
  return result;
}

uint64_t sub_238815BE8()
{
  v2 = sub_2388D0D88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v22 = *(v0 + 4);
  v5 = *v0;
  v6 = v0[1];
  if (v6 == 1)
  {
    v7 = *v0;
  }

  else
  {
    result = sub_238814D98();
    if (v1)
    {
      return result;
    }
  }

  v9 = trunc(v7);
  if (v7 > -9.22337204e18 && v7 < 9.22337204e18 && v7 == v9)
  {
    return v7;
  }

  sub_2388D2FA8();

  v12 = sub_2388D0DC8();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v16 = *(v3 + 72);
  v17 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  *(swift_allocObject() + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  sub_238815B14();
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
  sub_2388D2F08();
  sub_2388D0D98();
  v18 = sub_238819C1C(v5, *(&v5 + 1), v6, v15);
  v20 = v19;

  MEMORY[0x23EE66C20](v18, v20);

  sub_2388151C8();
  swift_allocError();
  *v21 = 0xD000000000000033;
  *(v21 + 8) = 0x80000002388DE4C0;
  *(v21 + 16) = MEMORY[0x277D84F90];
  *(v21 + 24) = 0;
  *(v21 + 32) = 5;
  return swift_willThrow();
}

uint64_t GeneratedContent.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  (*(a3 + 24))(v14, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  v7 = v14[0];
  v8 = v14[1];
  v9 = v15;
  v10 = v16;
  v11 = v17;
  v12 = v18;

  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  *(a4 + 17) = v10;
  *(a4 + 24) = v11;
  *(a4 + 32) = v12;
  return result;
}

uint64_t GeneratedContent.init<A>(elements:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = sub_238818408(sub_23881834C, 0, a3, &type metadata for GeneratedJSON, MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], a5);
  v12 = sub_23882D3D4(v11);
  v14 = v13;
  v16 = v15;
  sub_238814698(v12, v13, v15);

  (*(*(a3 - 1) + 8))(a1, a3);

  *a6 = v12;
  *(a6 + 8) = v14;
  *(a6 + 16) = v16;
  *(a6 + 17) = HIBYTE(v16) & 1;
  *(a6 + 24) = v9;
  *(a6 + 32) = v10;
  return result;
}

uint64_t sub_23881608C()
{
  v1 = sub_2388D0D88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 17);
  v25 = *v0;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v29 = *(v0 + 24);
  GeneratedContent.kind.getter(v4, v23);
  result = v23[0];
  if (v24 != 3)
  {
    sub_238810DC4(v23[0], v23[1], v24);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_2388D2FA8();

    v25 = 0xD000000000000035;
    v26 = 0x80000002388DE480;
    v10 = sub_2388D0DC8();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_2388D0DB8();
    sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
    v14 = *(v2 + 72);
    v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2388D3F70;
    sub_2388D0D78();
    v23[0] = v16;
    sub_238815B14();
    v30 = v6;
    sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
    sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
    sub_2388D2F08();
    sub_2388D0D98();
    v17 = sub_238819C1C(v5, v30, v7, v13);
    v19 = v18;

    MEMORY[0x23EE66C20](v17, v19);

    v20 = v25;
    v21 = v26;
    sub_2388151C8();
    swift_allocError();
    *v22 = v20;
    *(v22 + 8) = v21;
    *(v22 + 16) = MEMORY[0x277D84F90];
    *(v22 + 24) = 0;
    *(v22 + 32) = 5;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_23881634C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v56 = MEMORY[0x277D84F90];
  sub_2388B7BB0(0, v1, 0);
  v2 = v56;
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  result = sub_2388D2F18();
  v7 = result;
  v8 = 0;
  v9 = *(v3 + 36);
  v37 = v3 + 72;
  v38 = v1;
  v39 = v9;
  v40 = v3 + 64;
  v41 = v3;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v42 = v8;
    v12 = (*(v3 + 48) + 16 * v7);
    v13 = v12[1];
    v44 = *v12;
    v45 = v2;
    v14 = *(v3 + 56) + 40 * v7;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 17);
    v18 = *(v14 + 24);
    v19 = *(v14 + 32);
    v20 = *(v14 + 16);
    swift_bridgeObjectRetain_n();
    sub_238814698(v15, v16, v20);

    sub_238814698(v15, v16, v20);

    sub_238810DC4(v15, v16, v20);

    v50 = v15;
    v51 = v16;
    v52 = v20;
    v53 = v17;
    v54 = v18;
    v55 = v19;

    GeneratedContent.kind.getter(v21, &v48);
    v46 = v48;
    v47 = v49;
    v22 = sub_23881EF9C(&v46);
    v43 = v23;
    v25 = v24;

    v26 = v20;
    v2 = v45;
    sub_238810DC4(v15, v16, v26);

    v56 = v45;
    v28 = *(v45 + 16);
    v27 = *(v45 + 24);
    if (v28 >= v27 >> 1)
    {
      result = sub_2388B7BB0((v27 > 1), v28 + 1, 1);
      v2 = v56;
    }

    *(v2 + 16) = v28 + 1;
    v29 = v2 + 40 * v28;
    *(v29 + 32) = v44;
    *(v29 + 40) = v13;
    *(v29 + 48) = v22;
    *(v29 + 56) = v43;
    *(v29 + 64) = v25;
    *(v29 + 65) = HIBYTE(v25) & 1;
    v3 = v41;
    v10 = 1 << *(v41 + 32);
    if (v7 >= v10)
    {
      goto LABEL_24;
    }

    v4 = v40;
    v30 = *(v40 + 8 * v11);
    if ((v30 & (1 << v7)) == 0)
    {
      goto LABEL_25;
    }

    v9 = v39;
    if (v39 != *(v41 + 36))
    {
      goto LABEL_26;
    }

    v31 = v30 & (-2 << (v7 & 0x3F));
    if (v31)
    {
      v10 = __clz(__rbit64(v31)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v32 = v11 << 6;
      v33 = v11 + 1;
      v34 = (v37 + 8 * v11);
      while (v33 < (v10 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          result = sub_238827E7C(v7, v39, 0);
          v10 = __clz(__rbit64(v35)) + v32;
          goto LABEL_4;
        }
      }

      result = sub_238827E7C(v7, v39, 0);
    }

LABEL_4:
    v8 = v42 + 1;
    v7 = v10;
    if (v42 + 1 == v38)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t static GeneratedContent.generationSchema.getter@<X0>(uint64_t a1@<X8>)
{
  v94 = a1;
  v1 = sub_238810E44(&qword_27DF2FA30, &qword_2388D44E0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v91 = &v79 - v3;
  v97 = type metadata accessor for GenerationSchema.Kind(0);
  v4 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v92 = &v79 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for GenerationSchema(0);
  v6 = *(*(v98 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v98);
  v93 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v81 = &v79 - v9;
  v10 = type metadata accessor for DynamicGenerationSchema(0);
  v85 = *(v10 - 8);
  v86 = v10 - 8;
  v90 = v85;
  v11 = *(v85 + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v87 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v88 = &v79 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v82 = &v79 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v96 = &v79 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v80 = &v79 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v79 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v79 - v26);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v79 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v79 - v31;
  v99 = &type metadata for GeneratedContent;
  sub_238810E44(&qword_27DF2FAA0, &qword_2388D44E8);
  v33 = sub_2388D28B8();
  v84 = v33;
  v35 = v34;
  sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_2388D3F70;
  *(v36 + 32) = v33;
  *(v36 + 40) = v35;
  v37 = *(v10 + 28);
  v83 = v35;
  swift_bridgeObjectRetain_n();
  sub_2388D2318();
  *v32 = 0;
  *(v32 + 1) = 0;
  *(v32 + 2) = 0;
  v32[24] = 2;
  *(v32 + 4) = v33;
  *(v32 + 5) = v35;
  *(v32 + 6) = v36;
  *&v32[*(v10 + 32)] = MEMORY[0x277D84F90];
  v95 = type metadata accessor for DynamicGenerationSchema;
  sub_238827D40(v32, v27, type metadata accessor for DynamicGenerationSchema);
  v99 = 0x3A676E697274535BLL;
  v100 = 0xE900000000000020;
  MEMORY[0x23EE66C20](v27[4], v27[5]);
  MEMORY[0x23EE66C20](93, 0xE100000000000000);
  v39 = v99;
  v38 = v100;
  v40 = v27[6];
  v41 = *(v10 + 28);
  v42 = *(v27 + *(v10 + 32));

  sub_2388D2298();
  sub_238826050(v27, type metadata accessor for DynamicGenerationSchema);
  *(v30 + 1) = 0;
  *(v30 + 2) = 0;
  *v30 = 0;
  v30[24] = 2;
  *(v30 + 4) = v39;
  *(v30 + 5) = v38;
  *(v30 + 6) = v40;
  *&v30[*(v10 + 32)] = v42;
  v89 = v32;
  sub_238827D40(v32, v27, v95);
  v99 = 0x3C7961727241;
  v100 = 0xE600000000000000;
  MEMORY[0x23EE66C20](v27[4], v27[5]);
  MEMORY[0x23EE66C20](62, 0xE100000000000000);
  v43 = v99;
  v44 = v100;
  v45 = v27[6];
  v46 = *(v10 + 28);
  v47 = *(v27 + *(v10 + 32));

  sub_2388D22F8();
  sub_238826050(v27, type metadata accessor for DynamicGenerationSchema);
  *(v24 + 1) = 0;
  *(v24 + 2) = 0;
  *v24 = 0;
  v24[24] = 2;
  *(v24 + 4) = v43;
  *(v24 + 5) = v44;
  *(v24 + 6) = v45;
  *&v24[*(v10 + 32)] = v47;
  v48 = v92;
  swift_storeEnumTagMultiPayload();
  v49 = v81;
  sub_238827D40(v48, v81, type metadata accessor for GenerationSchema.Kind);
  v99 = MEMORY[0x277D839B0];
  sub_238810E44(&qword_27DF2FA28, &unk_2388D3FD0);
  v50 = sub_2388D28B8();
  v52 = v51;
  sub_238826050(v48, type metadata accessor for GenerationSchema.Kind);
  v53 = (v49 + *(v98 + 20));
  *v53 = v50;
  v53[1] = v52;

  sub_238826050(v49, type metadata accessor for GenerationSchema);
  v54 = v80;
  v55 = &v80[*(v10 + 28)];
  v56 = MEMORY[0x277D84F90];
  sub_2388D22A8();
  *v54 = 0;
  *(v54 + 1) = 0;
  *(v54 + 2) = 0;
  v54[24] = 2;
  *(v54 + 4) = v50;
  *(v54 + 5) = v52;
  *(v54 + 6) = v56;
  v92 = v10;
  v57 = v82;
  *&v54[*(v10 + 32)] = v56;
  v58 = v54;
  sub_2388AF0DC(1, 0, 1, v96);
  v59 = sub_238810E44(&qword_27DF2FA40, &unk_2388D4500);
  v60 = v91;
  (*(*(v59 - 8) + 56))(v91, 1, 1, v59);
  sub_2388AF734(0, v60, v57);
  sub_238827E88(v60, &qword_27DF2FA30, &qword_2388D44E0);
  sub_238810E44(&qword_27DF2FAB0, &qword_2388DC290);
  v61 = *(v85 + 72);
  v62 = (v90[80] + 32) & ~v90[80];
  v63 = 4 * v61;
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_2388D44A0;
  v65 = v64 + v62;
  v90 = v30;
  v66 = v30;
  v67 = v95;
  sub_238827D40(v66, v65, v95);
  v91 = v24;
  sub_238827D40(v24, v65 + v61, v67);
  sub_238827D40(v58, v65 + 2 * v61, v67);
  v68 = 3 * v61;
  v69 = v96;
  v70 = v87;
  sub_238827D40(v96, v65 + v68, v67);
  v71 = v65 + v63;
  v72 = v88;
  sub_238827D40(v57, v71, v67);
  DynamicGenerationSchema.init(name:description:anyOf:)(v84, v83, 0x6167656C20796E41, 0xEE004E4F534A206CLL, v64, v72);
  sub_238827D40(v72, v70, v67);
  sub_2388BCC08(v70);
  sub_238827D40(v70, v27, type metadata accessor for DynamicGenerationSchema);
  v73 = v27 + *(v92 + 8);
  sub_23881FCBC(MEMORY[0x277D84F90], sub_2388B6844, type metadata accessor for DynamicGenerationSchema);
  sub_238826050(v70, type metadata accessor for DynamicGenerationSchema);
  sub_238826050(v72, type metadata accessor for DynamicGenerationSchema);
  sub_238826050(v57, type metadata accessor for DynamicGenerationSchema);
  sub_238826050(v69, type metadata accessor for DynamicGenerationSchema);
  sub_238826050(v58, type metadata accessor for DynamicGenerationSchema);
  sub_238826050(v91, type metadata accessor for DynamicGenerationSchema);
  sub_238826050(v90, type metadata accessor for DynamicGenerationSchema);
  sub_238826050(v89, type metadata accessor for DynamicGenerationSchema);
  v74 = v93;
  sub_238827D40(v27, v93, type metadata accessor for DynamicGenerationSchema);
  swift_storeEnumTagMultiPayload();
  v76 = v27[4];
  v75 = v27[5];

  sub_238826050(v27, type metadata accessor for DynamicGenerationSchema);
  v77 = (v74 + *(v98 + 20));
  *v77 = v76;
  v77[1] = v75;
  return sub_238826AA4(v74, v94);
}

uint64_t GeneratedContent.id.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t GeneratedContent.id.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t GeneratedContent.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = a1[3];
  v8 = a1[4];

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 17) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t GeneratedContent.generatedContent.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 17);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v7 = *(v1 + 16);
  *(a1 + 16) = v7;
  *(a1 + 17) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  sub_238814698(v2, v3, v7);
}

uint64_t GeneratedContent.init(properties:id:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a3;
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a1 + 16);
  if (!v7)
  {
    goto LABEL_13;
  }

  v38 = a2[1];
  v39 = *a2;
  v43 = MEMORY[0x277D84F90];
  sub_2388B7BD0(0, v7, 0);
  v41 = a1;
  v8 = a1 + 32;
  v9 = v43;
  v10 = a1 + 32;
  do
  {
    sub_238827E14(v10, &v56, &qword_27DF2FAB8, &qword_2388D4510);
    v11 = v56;
    v12 = v57;
    sub_238826B08(v58, v59);
    v56 = v11;
    v57 = v12;
    sub_238826B08(v59, v58);
    sub_238827E14(&v56, &v53, &qword_27DF2FAC0, &qword_2388D4518);
    v14 = v53;
    v13 = v54;
    v48 = v53;
    v49 = v54;
    sub_238826B08(v55, v50);

    sub_238827E88(&v48, &qword_27DF2FAC0, &qword_2388D4518);
    sub_238827E88(&v56, &qword_27DF2FAC0, &qword_2388D4518);
    v43 = v9;
    v16 = *(v9 + 16);
    v15 = *(v9 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_2388B7BD0((v15 > 1), v16 + 1, 1);
      v9 = v43;
    }

    *(v9 + 16) = v16 + 1;
    v17 = v9 + 16 * v16;
    *(v17 + 32) = v14;
    *(v17 + 40) = v13;
    v10 += 56;
    --v7;
  }

  while (v7);
  v18 = *(v41 + 16);
  if (!v18)
  {
    v5 = v39;
    v4 = a3;
    v6 = v38;
LABEL_13:

    v19 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v47 = MEMORY[0x277D84F90];
  sub_2388B7B78(0, v18, 0);
  v19 = v47;
  do
  {
    sub_238827E14(v8, &v56, &qword_27DF2FAB8, &qword_2388D4510);
    v20 = v56;
    v21 = v57;
    sub_238826B08(v58, v59);
    v56 = v20;
    v57 = v21;
    sub_238826B08(v59, v58);
    sub_238827E14(&v56, &v53, &qword_27DF2FAC0, &qword_2388D4518);
    v48 = v53;
    v49 = v54;
    sub_238826B08(v55, v50);
    v22 = v51;
    v23 = v52;
    sub_238815878(v50, v51);
    (*(v23 + 24))(&v43, v22, v23);
    v24 = v43;
    v25 = v44;
    v26 = v45;
    v42 = v46;
    sub_238814698(v43, v44, v45);
    sub_238810DC4(v24, v25, v26);

    sub_238827E88(&v48, &qword_27DF2FAC0, &qword_2388D4518);
    sub_238827E88(&v56, &qword_27DF2FAC0, &qword_2388D4518);
    v47 = v19;
    v28 = *(v19 + 16);
    v27 = *(v19 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_2388B7B78((v27 > 1), v28 + 1, 1);
      v19 = v47;
    }

    *(v19 + 16) = v28 + 1;
    v29 = v19 + 24 * v28;
    *(v29 + 32) = v24;
    *(v29 + 40) = v25;
    *(v29 + 48) = v26;
    *(v29 + 49) = v42;
    v8 += 56;
    --v18;
  }

  while (v18);

  v5 = v39;
  v4 = a3;
  v6 = v38;
LABEL_14:

  v31 = sub_238826B20(v30, v19);

  v32 = sub_23882D408(v31);
  v34 = v33;
  v36 = v35;

  *v4 = v32;
  *(v4 + 8) = v34;
  *(v4 + 16) = v36;
  *(v4 + 17) = HIBYTE(v36) & 1;
  *(v4 + 24) = v5;
  *(v4 + 32) = v6;
  return result;
}

uint64_t GeneratedContent.init<A, B>(properties:id:uniquingKeysWith:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void (*a3)(unsigned __int128 *, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v10 = v9;
  v137 = a4;
  v138 = a8;
  v136 = a3;
  v131 = a1;
  v127 = a9;
  v134 = a6;
  v148 = *(a6 - 8);
  v14 = *(v148 + 64);
  MEMORY[0x28223BE20](a1);
  v135 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2388D30F8();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v18 = sub_2388D30E8();
  v130 = *(v18 - 1);
  v19 = *(v130 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v126 - v20;
  v22 = a2[1];
  v126 = *a2;
  v128 = v22;
  v129 = a5;
  MEMORY[0x23EE66D00](a5, a7);
  sub_2388D30C8();
  v177 = v18;
  v149 = v21;
  sub_2388D30D8();
  v173 = v170;
  v174 = *v171;
  v175 = *&v171[16];
  v176 = v172;
  v23 = *v171;
  if (*v171)
  {
    v132 = (v148 + 8);
    v133 = v138 + 24;
    v24 = MEMORY[0x277D84F98];
    while (1)
    {
      v26 = v173;
      sub_238826B08((&v174 + 8), v168);
      sub_238826B08(v168, v161);
      if (v24[2])
      {
        v27 = sub_238820AA8(*(&v26 + 1), v23);
        if (v28)
        {
          v143 = v26;
          sub_238827E14(v24[7] + (v27 << 6), &v164, &qword_27DF2FAC8, &unk_2388D4520);
          v29 = v164;
          v142 = *(&v166 + 1);
          sub_238826B08(v165, v155);
          v170 = v29;
          sub_238826B08(v155, v171);
          v30 = v172;
          v160 = v172;
          v158 = *v171;
          v159 = *&v171[16];
          v157 = v170;
          v31 = *&v171[24];
          sub_238815878(&v158, *&v171[24]);
          (*(v30 + 24))(&v170, v31, v30);
          v164 = v170;
          LOWORD(v165[0]) = *v171;
          *(v165 + 8) = *&v171[8];
          v32 = v162;
          v33 = v163;
          sub_238815878(v161, v162);
          (*(v33 + 24))(&v154, v32, v33);
          v150 = v154;
          v151 = v155[0];
          v152 = v155[1];
          v153 = v156;
          v34 = v135;
          v9 = v10;
          v136(&v164, &v150);
          if (v10)
          {

            (*(*(v129 - 8) + 8))(v131);
            sub_238810DC4(v150, *(&v150 + 1), v151);

            sub_238810DC4(v164, *(&v164 + 1), v165[0]);

            (*(v130 + 8))(v149, v177);
            sub_238827E88(&v157, &qword_27DF2FAB8, &qword_2388D4510);
            sub_2388158BC(v161);
          }

          v145 = 0;
          sub_238810DC4(v150, *(&v150 + 1), v151);

          sub_238810DC4(v164, *(&v164 + 1), v165[0]);

          v35 = v134;
          (*(v138 + 24))(&v170, v134);
          (*v132)(v34, v35);
          v144 = v24;
          v141 = *(&v26 + 1);
          v36 = *(&v170 + 1);
          v140 = *(&v170 + 1);
          v37 = v170;
          v38 = v171[0];
          v139 = v171[0];
          LODWORD(v148) = v171[1];
          v146 = *&v171[16];
          v147 = *&v171[8];
          v39 = *(&v159 + 1);
          v40 = v160;
          sub_238815878(&v158, *(&v159 + 1));
          (*(v40 + 24))(&v170, v39, v40);
          v41 = v170;
          v42 = v171[1];
          v43 = *&v171[8];
          v44 = *&v171[16];
          v45 = v171[0];
          v170 = __PAIR128__(v36, v37);
          v171[0] = v38;
          v171[1] = v148;
          *&v171[8] = v147;
          *&v171[16] = v146;
          v164 = v41;
          LOBYTE(v165[0]) = v45;
          BYTE1(v165[0]) = v42;
          *(&v165[0] + 1) = v43;
          *&v165[1] = v44;
          LOBYTE(v36) = _s16FoundationModels16GeneratedContentV2eeoiySbAC_ACtFZ_0(&v170, &v164);
          sub_238810DC4(v41, *(&v41 + 1), v45);

          if (v36)
          {
            v46 = v142;
          }

          else
          {
            v46 = v143;
          }

          v47 = swift_allocObject();
          *(v47 + 16) = v37;
          v48 = v141;
          v49 = v144;
          *(v47 + 24) = v140;
          *(v47 + 32) = v139;
          *(v47 + 33) = v148;
          v50 = v146;
          *(v47 + 40) = v147;
          *(v47 + 48) = v50;
          *&v170 = v48;
          *(&v170 + 1) = v23;
          *v171 = v47;
          *&v171[24] = &type metadata for GeneratedContent;
          *&v172 = &protocol witness table for GeneratedContent;
          *(&v172 + 1) = v46;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v164 = v49;
          v52 = sub_238820AA8(v48, v23);
          v54 = v49[2];
          v55 = (v53 & 1) == 0;
          v56 = __OFADD__(v54, v55);
          v57 = v54 + v55;
          if (v56)
          {
            goto LABEL_59;
          }

          v58 = v53;
          if (v49[3] >= v57)
          {
            v10 = v145;
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_24;
            }

            v77 = v52;
            sub_238820F64();
            v52 = v77;
            if ((v58 & 1) == 0)
            {
              goto LABEL_29;
            }

LABEL_25:
            v75 = v52;

            v24 = v164;
            sub_238826BF4(&v170, *(v164 + 56) + (v75 << 6));
          }

          else
          {
            sub_2388220E4(v57, isUniquelyReferenced_nonNull_native);
            v52 = sub_238820AA8(v48, v23);
            v10 = v145;
            if ((v58 & 1) != (v59 & 1))
            {
              goto LABEL_62;
            }

LABEL_24:
            if (v58)
            {
              goto LABEL_25;
            }

LABEL_29:
            v24 = v164;
            *(v164 + 8 * (v52 >> 6) + 64) |= 1 << v52;
            v78 = (v24[6] + 16 * v52);
            *v78 = v48;
            v78[1] = v23;
            v79 = (v24[7] + (v52 << 6));
            v81 = *&v171[16];
            v80 = v172;
            v82 = *v171;
            *v79 = v170;
            v79[1] = v82;
            v79[2] = v81;
            v79[3] = v80;
            v83 = v24[2];
            v56 = __OFADD__(v83, 1);
            v84 = v83 + 1;
            if (v56)
            {
              goto LABEL_60;
            }

            v24[2] = v84;
          }

          sub_238827E88(&v157, &qword_27DF2FAB8, &qword_2388D4510);
          goto LABEL_4;
        }
      }

      *&v170 = *(&v26 + 1);
      *(&v170 + 1) = v23;
      sub_238815814(v161, v171);
      *(&v172 + 1) = v26;
      v164 = v170;
      v165[0] = *v171;
      v165[1] = *&v171[16];
      v166 = v172;

      v60 = swift_isUniquelyReferenced_nonNull_native();
      *&v157 = v24;
      v61 = sub_238820AA8(*(&v26 + 1), v23);
      v63 = v24[2];
      v64 = (v62 & 1) == 0;
      v56 = __OFADD__(v63, v64);
      v65 = v63 + v64;
      if (v56)
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        sub_2388D3438();
        __break(1u);
        goto LABEL_63;
      }

      v66 = v62;
      if (v24[3] < v65)
      {
        break;
      }

      if (v60)
      {
        goto LABEL_20;
      }

      v76 = v61;
      sub_238820F64();
      v61 = v76;
      if (v66)
      {
LABEL_3:
        v25 = v61;

        v24 = v157;
        sub_238826BF4(&v164, *(v157 + 56) + (v25 << 6));
        goto LABEL_4;
      }

LABEL_21:
      v24 = v157;
      *(v157 + 8 * (v61 >> 6) + 64) |= 1 << v61;
      v68 = (v24[6] + 16 * v61);
      *v68 = *(&v26 + 1);
      v68[1] = v23;
      v69 = (v24[7] + (v61 << 6));
      v71 = v165[1];
      v70 = v166;
      v72 = v165[0];
      *v69 = v164;
      v69[1] = v72;
      v69[2] = v71;
      v69[3] = v70;
      v73 = v24[2];
      v56 = __OFADD__(v73, 1);
      v74 = v73 + 1;
      if (v56)
      {
        goto LABEL_58;
      }

      v24[2] = v74;
LABEL_4:
      sub_2388158BC(v161);
      sub_2388D30D8();
      v173 = v170;
      v174 = *v171;
      v175 = *&v171[16];
      v176 = v172;
      v23 = *v171;
      if (!*v171)
      {
        goto LABEL_33;
      }
    }

    sub_2388220E4(v65, v60);
    v61 = sub_238820AA8(*(&v26 + 1), v23);
    if ((v26 & 1) != (v67 & 1))
    {
      goto LABEL_62;
    }

LABEL_20:
    if (v66)
    {
      goto LABEL_3;
    }

    goto LABEL_21;
  }

  v24 = MEMORY[0x277D84F98];
LABEL_33:
  (*(v130 + 8))(v149, v177);
  v85 = v24[2];
  if (v85)
  {
    v145 = v10;
    v86 = sub_238820254(v85, 0);
    v177 = sub_238825884(&v173, v86 + 2, v85, v24);
    swift_bridgeObjectRetain_n();
    sub_238826BEC();
    if (v177 != v85)
    {
      goto LABEL_61;
    }

    v10 = v145;
  }

  else
  {

    v86 = MEMORY[0x277D84F90];
  }

  *&v173 = v86;
  v9 = v10;
  sub_238823A00(&v173);
  if (!v10)
  {
    v144 = v24;
    v145 = 0;

    v87 = v173;
    v88 = *(v173 + 16);
    v89 = MEMORY[0x277D84F90];
    if (v88)
    {
      *&v157 = MEMORY[0x277D84F90];
      sub_2388B7E04(0, v88, 0);
      v177 = v87;
      v90 = (v87 + 4);
      v91 = v157;
      do
      {
        sub_238827E14(v90, &v173, &qword_27DF2FAC8, &unk_2388D4520);
        sub_238827E14(&v173, &v170, &qword_27DF2FAC8, &unk_2388D4520);
        v92 = *(&v172 + 1);
        v164 = v170;
        sub_238826B08(v171, v165);
        *(&v166 + 1) = v92;
        sub_238827E14(&v164, &v167, &qword_27DF2FAB8, &qword_2388D4510);
        sub_238827E88(&v164, &qword_27DF2FAC8, &unk_2388D4520);
        sub_238827E88(&v173, &qword_27DF2FAC8, &unk_2388D4520);
        *&v157 = v91;
        v94 = *(v91 + 16);
        v93 = *(v91 + 24);
        v95 = v91;
        if (v94 >= v93 >> 1)
        {
          sub_2388B7E04((v93 > 1), v94 + 1, 1);
          v95 = v157;
        }

        *(v95 + 16) = v94 + 1;
        v96 = v95 + 56 * v94;
        v97 = v167;
        v98 = v168[0];
        v99 = v168[1];
        *(v96 + 80) = v169;
        *(v96 + 48) = v98;
        *(v96 + 64) = v99;
        *(v96 + 32) = v97;
        v90 += 64;
        --v88;
        v91 = v95;
      }

      while (v88);

      v89 = MEMORY[0x277D84F90];
      v100 = *(v91 + 16);
      if (v100)
      {
        goto LABEL_44;
      }
    }

    else
    {

      v91 = MEMORY[0x277D84F90];
      v100 = *(MEMORY[0x277D84F90] + 16);
      if (v100)
      {
LABEL_44:
        *&v167 = v89;
        sub_2388B7BD0(0, v100, 0);
        v148 = v91;
        v101 = v91 + 32;
        v102 = v167;
        v103 = v91 + 32;
        v177 = v100;
        do
        {
          sub_238827E14(v103, &v173, &qword_27DF2FAB8, &qword_2388D4510);
          sub_238827E14(&v173, &v170, &qword_27DF2FAB8, &qword_2388D4510);
          v104 = v170;
          v164 = v170;
          sub_238826B08(v171, v165);

          sub_238827E88(&v164, &qword_27DF2FAB8, &qword_2388D4510);
          sub_238827E88(&v173, &qword_27DF2FAB8, &qword_2388D4510);
          *&v167 = v102;
          v106 = *(v102 + 16);
          v105 = *(v102 + 24);
          if (v106 >= v105 >> 1)
          {
            sub_2388B7BD0((v105 > 1), v106 + 1, 1);
            v102 = v167;
          }

          *(v102 + 16) = v106 + 1;
          *(v102 + 16 * v106 + 32) = v104;
          v103 += 56;
          v100 = (v100 - 1);
        }

        while (v100);
        v147 = v102;
        *&v157 = MEMORY[0x277D84F90];
        v107 = v177;
        sub_2388B7B78(0, v177, 0);
        v108 = v157;
        do
        {
          v177 = v107;
          sub_238827E14(v101, &v173, &qword_27DF2FAB8, &qword_2388D4510);
          sub_238827E14(&v173, &v170, &qword_27DF2FAB8, &qword_2388D4510);
          v164 = v170;
          sub_238826B08(v171, v165);
          v109 = *(&v165[1] + 1);
          v110 = v166;
          sub_238815878(v165, *(&v165[1] + 1));
          (*(v110 + 24))(&v167, v109, v110);
          v111 = v167;
          v112 = v168[0];
          LODWORD(v149) = BYTE1(v168[0]);
          sub_238814698(v167, *(&v167 + 1), v168[0]);
          sub_238810DC4(v111, *(&v111 + 1), v112);

          sub_238827E88(&v164, &qword_27DF2FAB8, &qword_2388D4510);
          sub_238827E88(&v173, &qword_27DF2FAB8, &qword_2388D4510);
          *&v157 = v108;
          v114 = *(v108 + 16);
          v113 = *(v108 + 24);
          if (v114 >= v113 >> 1)
          {
            sub_2388B7B78((v113 > 1), v114 + 1, 1);
            v108 = v157;
          }

          *(v108 + 16) = v114 + 1;
          v115 = v108 + 24 * v114;
          *(v115 + 32) = v111;
          *(v115 + 48) = v112;
          *(v115 + 49) = v149;
          v101 += 56;
          v107 = (v177 - 1);
        }

        while (v177 != 1);

        goto LABEL_55;
      }
    }

    v108 = MEMORY[0x277D84F90];
LABEL_55:

    v117 = sub_238826B20(v116, v108);

    v118 = sub_23882D408(v117);
    v120 = v119;
    v122 = v121;

    (*(*(v129 - 8) + 8))(v131);

    v124 = v127;
    *v127 = v118;
    v124[1] = v120;
    *(v124 + 16) = v122;
    *(v124 + 17) = HIBYTE(v122) & 1;
    v125 = v128;
    v124[3] = v126;
    v124[4] = v125;
    return result;
  }

LABEL_63:

  __break(1u);
  return result;
}

uint64_t sub_23881834C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_238815878(a1, v3);
  (*(v4 + 24))(&v10, v3, v4);
  v5 = v10;
  v6 = v11;
  v7 = v13;
  v8 = v12;
  sub_238814698(v10, v11, v12);
  sub_238810DC4(v5, v6, v8);

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v8;
  *(a2 + 17) = v7;
  return result;
}

uint64_t sub_238818408(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v49 - v21;
  v22 = sub_2388D2E78();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v38 = &v49 - v37;
  v39 = sub_2388D2A58();
  v70 = sub_2388D3038();
  v65 = sub_2388D3048();
  sub_2388D3018();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_2388D2A48();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_2388D2EA8();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_2388D3028();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_2388D2EA8();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_2388D3028();
      sub_2388D2EA8();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t GeneratedContent.init<A>(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v12;
  v14 = v12[1];
  (*(v8 + 16))(v11, a1);
  GeneratedContent.init<A>(_:)(v11, a2, a3, &v18);
  (*(v8 + 8))(a1, a2);
  v15 = v19;
  v16 = v20;
  *a4 = v18;
  *(a4 + 16) = v15;
  *(a4 + 17) = v16;

  *(a4 + 24) = v13;
  *(a4 + 32) = v14;
  return result;
}

uint64_t GeneratedContent.init(json:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v5 = sub_2388D1058();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2388D1048();
  v10 = sub_2388D1038();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  v13 = sub_2388D0D58();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  *&v41 = sub_2388D0D48();
  v16 = *(v13 + 48);
  v17 = *(v13 + 52);
  swift_allocObject();
  v18 = sub_2388D0D48();
  *&v44 = 0;
  *(&v44 + 1) = 0xE000000000000000;
  v19 = MEMORY[0x277D84F90];
  *&v45 = 15;
  *(&v45 + 1) = MEMORY[0x277D84F90];
  v46 = MEMORY[0x277D84F90];
  *&v47 = MEMORY[0x277D84F98];
  *(&v47 + 1) = v18;
  *(v42 + 8) = v44;
  *(&v42[1] + 8) = v45;
  *(&v42[2] + 8) = MEMORY[0x277D84F90];
  *(&v42[3] + 8) = v47;
  *(&v42[4] + 1) = 0;
  *&v43 = 0xE000000000000000;
  sub_23882F0E0();
  *(&v43 + 1) = v20;
  *(&v41 + 1) = v10;
  *&v42[0] = v12;
  v21 = v30;
  sub_23882D83C(a1, a2, &v39);
  if (v21)
  {

    sub_2388151C8();
    swift_allocError();
    *v22 = 0xD000000000000027;
    *(v22 + 8) = 0x80000002388DE310;
    *(v22 + 16) = v19;
    *(v22 + 24) = 0;
    *(v22 + 32) = 5;
    swift_willThrow();
    v36 = v42[3];
    v37 = v42[4];
    v38 = v43;
    v32 = v41;
    v33 = v42[0];
    v34 = v42[1];
    v35 = v42[2];
    return sub_238826CA8(&v32);
  }

  else
  {
    v24 = v48;
    if (*(&v39 + 1))
    {
      v25 = v40[1];
      v29 = *(&v40[1] + 8);
      v30 = v40[0];
      v26 = (*&v40[1] >> 8) & 1;
      v36 = v42[3];
      v37 = v42[4];
      v38 = v43;
      v32 = v41;
      v33 = v42[0];
      v34 = v42[1];
      v35 = v42[2];
      sub_238826CA8(&v32);

      v28 = v29;
      v27 = v30;
    }

    else
    {
      v31[0] = 0;
      v31[1] = 0;
      GeneratedContent.init(id:text:)(v31, a1, a2, &v39);
      v36 = v42[3];
      v37 = v42[4];
      v38 = v43;
      v32 = v41;
      v33 = v42[0];
      v34 = v42[1];
      v35 = v42[2];
      result = sub_238826CA8(&v32);
      v27 = v39;
      v25 = v40[0];
      LOBYTE(v26) = BYTE1(v40[0]);
      v28 = *(v40 + 8);
    }

    *v24 = v27;
    *(v24 + 16) = v25;
    *(v24 + 17) = v26;
    *(v24 + 24) = v28;
  }

  return result;
}

uint64_t GeneratedContent.init(id:text:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *a1;
  v8 = a1[1];

  v10 = sub_2388D0D58();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  sub_2388D0D48();

  v13 = sub_238819688(a2, a3);
  v15 = v14;
  sub_238826CFC();
  sub_2388D0D38();
  if (v4)
  {
    sub_238826D50(v13, v15);

    sub_2388D2FA8();

    MEMORY[0x23EE66C20](a2, a3);

    sub_238810E44(&qword_27DF2FAD8, &unk_2388D6360);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2388D3F70;
    *(v16 + 32) = v4;
    sub_2388151C8();
    swift_allocError();
    *v17 = 0xD000000000000038;
    *(v17 + 8) = 0x80000002388DE340;
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *(v17 + 32) = 5;
    swift_willThrow();
  }

  else
  {

    sub_238826D50(v13, v15);

    result = sub_23882C97C(v22, v23, v24, 0, 0, 0, 0);
    *a4 = result;
    *(a4 + 8) = v19;
    *(a4 + 16) = v21;
    *(a4 + 17) = v20 & 1;
    *(a4 + 24) = v9;
    *(a4 + 32) = v8;
  }

  return result;
}

uint64_t sub_238819134(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = *MEMORY[0x277D85DE8];
  *&v46 = a1;
  *(&v46 + 1) = a2;
  v47 = a3;
  v48 = a4;

  sub_238810E44(&qword_27DF2FB88, &qword_2388D4998);
  if (!swift_dynamicCast())
  {
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    sub_238827E88(v44, &qword_27DF2FB90, &qword_2388D49A0);
    sub_238825C4C(a1, a2, a3, a4, &v39);
    v8 = *(&v39 + 1);
    v9 = v39;
    if (*(&v39 + 1) >> 60 != 15)
    {
      v44[0] = v39;
      goto LABEL_54;
    }

    v10 = sub_2388D2E88();
    *&v44[0] = sub_2388271B8(v10);
    *(&v44[0] + 1) = v11;
    MEMORY[0x28223BE20](*&v44[0]);
    sub_238824940(sub_238827FD8, &v39);
    v13 = v40;
    v12 = v41;
    v14 = v42;
    v15 = *(&v44[0] + 1) >> 62;
    if ((*(&v44[0] + 1) >> 62) > 1)
    {
      if (v15 == 2)
      {
        v17 = *(*&v44[0] + 16);
        v16 = *(*&v44[0] + 24);
        v18 = __OFSUB__(v16, v17);
        v19 = v16 - v17;
        if (v18)
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
        }

        if (v43 == v19)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

      if (v43)
      {
        v20 = 0;
LABEL_51:
        if (v20 >= v43)
        {
          sub_2388D0FC8();
LABEL_53:

          goto LABEL_54;
        }

LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    else
    {
      if (!v15)
      {
        if (v43 == BYTE14(v44[0]))
        {
          goto LABEL_20;
        }

LABEL_15:
        if (v15 == 2)
        {
          v20 = *(*&v44[0] + 24);
        }

        else if (v15 == 1)
        {
          v20 = *&v44[0] >> 32;
        }

        else
        {
          v20 = BYTE14(v44[0]);
        }

        goto LABEL_51;
      }

      if (__OFSUB__(DWORD1(v44[0]), v44[0]))
      {
        goto LABEL_61;
      }

      if (v43 != DWORD1(v44[0]) - LODWORD(v44[0]))
      {
        goto LABEL_15;
      }
    }

LABEL_20:
    v21 = *(&v39 + 1) >> 14;
    *(&v46 + 7) = 0;
    *&v46 = 0;
    if (*(&v39 + 1) >> 14 == v42 >> 14)
    {

      sub_238827FA4(v9, v8);
      goto LABEL_54;
    }

    v34 = v9;
    v35 = v8;
    LOBYTE(v8) = 0;
    v22 = v39 >> 14;
    v23 = (v40 >> 59) & 1;
    if ((v41 & 0x1000000000000000) == 0)
    {
      LOBYTE(v23) = 1;
    }

    v24 = 4 << v23;
    v37 = v41 & 0xFFFFFFFFFFFFFFLL;
    v36 = (v41 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v25 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v25 = v40 & 0xFFFFFFFFFFFFLL;
    }

    v38 = v25;
    while (1)
    {
      v26 = v14 & 0xC;
      v27 = v14;
      if (v26 == v24)
      {
        v27 = sub_238880F74(v14, v13, v12);
      }

      if (v27 >> 14 < v22 || v27 >> 14 >= v21)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      if ((v12 & 0x1000000000000000) != 0)
      {
        v30 = sub_2388D29D8();
        if (v26 != v24)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v28 = v27 >> 16;
        if ((v12 & 0x2000000000000000) != 0)
        {
          *&v39 = v13;
          *(&v39 + 1) = v37;
          v30 = *(&v39 + v28);
          if (v26 != v24)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v29 = v36;
          if ((v13 & 0x1000000000000000) == 0)
          {
            v29 = sub_2388D3008();
          }

          v30 = *(v29 + v28);
          if (v26 != v24)
          {
LABEL_39:
            if ((v12 & 0x1000000000000000) != 0)
            {
              goto LABEL_43;
            }

            goto LABEL_40;
          }
        }
      }

      v14 = sub_238880F74(v14, v13, v12);
      if ((v12 & 0x1000000000000000) != 0)
      {
LABEL_43:
        if (v38 <= v14 >> 16)
        {
          goto LABEL_58;
        }

        v14 = sub_2388D29A8();
        goto LABEL_45;
      }

LABEL_40:
      v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_45:
      *(&v46 + v8) = v30;
      LOWORD(v8) = v8 + 1;
      if ((v8 & 0x100) != 0)
      {
        goto LABEL_57;
      }

      if (v8 == 14)
      {
        *&v39 = v46;
        *(&v39 + 6) = *(&v46 + 6);
        sub_2388D0FD8();
        LOBYTE(v8) = 0;
        if (v21 == v14 >> 14)
        {

          sub_238827FA4(v34, v35);
          goto LABEL_54;
        }
      }

      else if (v21 == v14 >> 14)
      {
        *&v39 = v46;
        *(&v39 + 6) = *(&v46 + 6);
        sub_2388D0FD8();
        sub_238827FA4(v34, v35);
        goto LABEL_53;
      }
    }
  }

  sub_238826B08(v44, &v39);
  sub_238815878(&v39, v41);
  sub_2388D0E98();
  v44[0] = v46;
  sub_2388158BC(&v39);
LABEL_54:
  v31 = v44[0];
  sub_238827F50(*&v44[0], *(&v44[0] + 1));

  sub_238826D50(v31, *(&v31 + 1));
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t sub_238819688(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  sub_238810E44(&qword_27DF2FB88, &qword_2388D4998);
  if (swift_dynamicCast())
  {
    sub_238826B08(__src, &v42);
    sub_238815878(&v42, v43);
    sub_2388D0E98();
    __src[0] = v41;
    sub_2388158BC(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_238827E88(__src, &qword_27DF2FB90, &qword_2388D49A0);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_2388D3008();
  }

  sub_238824878(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_2388271B8(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_238824CF8(sub_238827EE8);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_2388D0FC8();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_238880F74(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_2388D2998();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_2388D29D8();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_2388D3008();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_238880F74(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_2388D29A8();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_2388D0FD8();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_2388D0FD8();
    sub_238827FA4(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_238827FA4(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_238827F50(*&__src[0], *(&__src[0] + 1));

  sub_238826D50(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_238819BA8()
{
  v0 = sub_23882C97C(0, 0, 5, 0, 0, 0, 0);
  v2 = v1;
  v4 = v3;
  qword_27DF3F848 = 0;
  unk_27DF3F850 = 0;

  qword_27DF3F830 = v0;
  *algn_27DF3F838 = v2;
  word_27DF3F840 = v4 & 0x1FF;
  return result;
}

uint64_t sub_238819C1C(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v88 = a4;
  v7 = 0;
  v8 = sub_2388D2898();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v85 = &v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3;
  if (a3 > 2u)
  {
LABEL_6:
    v87 = a1;
    if (v11 == 3)
    {
      v22 = *(a1 + 16);
      v23 = MEMORY[0x277D84F90];
      if (v22)
      {
        v92 = MEMORY[0x277D84F90];

        sub_2388B7BD0(0, v22, 0);
        v23 = v92;
        v24 = (a1 + 49);
        do
        {
          v25 = *(v24 - 17);
          v26 = *(v24 - 9);
          v27 = *(v24 - 1);
          v28 = *v24;
          sub_238814698(v25, v26, *(v24 - 1));
          if (v28)
          {
            v29 = 256;
          }

          else
          {
            v29 = 0;
          }

          v30 = sub_238819C1C(v25, v26, v29 | v27, v88);
          v32 = v31;
          sub_238810DC4(v25, v26, v27);
          v92 = v23;
          v34 = *(v23 + 16);
          v33 = *(v23 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_2388B7BD0((v33 > 1), v34 + 1, 1);
            v23 = v92;
          }

          *(v23 + 16) = v34 + 1;
          v35 = v23 + 16 * v34;
          *(v35 + 32) = v30;
          *(v35 + 40) = v32;
          v24 += 24;
          --v22;
        }

        while (v22);
        sub_238810DC4(v87, a2, 3);
      }

      v92 = v23;
      sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
      sub_238815180(&qword_27DF2FBC0, &qword_27DF2FBB8, &unk_2388D5410);
      v42 = sub_2388D27B8();
      v44 = v43;

      v92 = 91;
      v93 = 0xE100000000000000;
      MEMORY[0x23EE66C20](v42, v44);

      v45 = 93;
LABEL_45:
      MEMORY[0x23EE66C20](v45, 0xE100000000000000);
      return v92;
    }

    if (v11 != 4)
    {
      return 1819047278;
    }

    if (a2)
    {

      v17 = *(a2 + 16);
      if (!v17)
      {
LABEL_43:

        v80 = MEMORY[0x277D84F90];
LABEL_44:
        v92 = v80;
        sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
        sub_238815180(&qword_27DF2FBC0, &qword_27DF2FBB8, &unk_2388D5410);
        v81 = sub_2388D27B8();
        v83 = v82;

        v92 = 123;
        v93 = 0xE100000000000000;
        MEMORY[0x23EE66C20](v81, v83);

        v45 = 125;
        goto LABEL_45;
      }
    }

    else
    {
      v46 = *(a1 + 16);
      if (v46)
      {
        v47 = sub_2388201D0(*(a1 + 16), 0);
        v48 = a1;
        v49 = sub_2388255D4(&v92, v47 + 4, v46, a1);
        sub_238814698(v48, 0, 4);

        sub_238826BEC();
        if (v49 != v46)
        {
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        a2 = v47;
        v17 = v47[2];
        if (!v17)
        {
          goto LABEL_43;
        }
      }

      else
      {
        sub_238814698(a1, 0, 4);
        a2 = MEMORY[0x277D84F90];
        v17 = *(MEMORY[0x277D84F90] + 16);
        if (!v17)
        {
          goto LABEL_43;
        }
      }
    }

    v91 = MEMORY[0x277D84F90];
    sub_2388B7BD0(0, v17, 0);
    v50 = 0;
    v86 = v91;
    v51 = (a2 + 40);
    v84 = a2;
    while (v50 < *(a2 + 16))
    {
      v53 = *(v51 - 1);
      v52 = *v51;
      v92 = 0;
      v93 = 0xE000000000000000;
      v89 = v53;
      v90 = v52;

      v54 = sub_2388D0DA8();
      if (v7)
      {
        goto LABEL_53;
      }

      v56 = v54;
      v57 = v55;
      sub_2388D2888();
      v58 = sub_2388D2878();
      if (!v59)
      {
        goto LABEL_50;
      }

      v60 = v58;
      v61 = v59;
      sub_238826D50(v56, v57);
      MEMORY[0x23EE66C20](v60, v61);

      MEMORY[0x23EE66C20](8250, 0xE200000000000000);
      v62 = v87;
      if (!*(v87 + 16))
      {
        goto LABEL_47;
      }

      v63 = sub_238820AA8(v53, v52);
      if ((v64 & 1) == 0)
      {
        goto LABEL_48;
      }

      v65 = *(v62 + 56) + 24 * v63;
      v66 = *v65;
      v67 = *(v65 + 8);
      v68 = *(v65 + 16);
      v69 = *(v65 + 17);
      sub_238814698(*v65, v67, *(v65 + 16));
      if (v69)
      {
        v70 = 256;
      }

      else
      {
        v70 = 0;
      }

      v71 = sub_238819C1C(v66, v67, v70 | v68, v88);
      v73 = v72;
      sub_238810DC4(v66, v67, v68);
      MEMORY[0x23EE66C20](v71, v73);

      v74 = v92;
      v75 = v93;
      v76 = v86;
      v91 = v86;
      v78 = *(v86 + 16);
      v77 = *(v86 + 24);
      if (v78 >= v77 >> 1)
      {
        sub_2388B7BD0((v77 > 1), v78 + 1, 1);
        v76 = v91;
      }

      ++v50;
      *(v76 + 16) = v78 + 1;
      v86 = v76;
      v79 = v76 + 16 * v78;
      *(v79 + 32) = v74;
      *(v79 + 40) = v75;
      v51 += 2;
      a2 = v84;
      if (v17 == v50)
      {

        v80 = v86;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      v92 = a1;
      v93 = a2;

      v36 = sub_2388D0DA8();
      v38 = v37;
      sub_2388D2888();
      v39 = sub_2388D2878();
      if (v40)
      {
        v41 = v39;
        sub_238810DC4(a1, a2, 2);
        sub_238826D50(v36, v38);
        return v41;
      }

      goto LABEL_52;
    }

    v92 = a1;
    v12 = sub_2388D0DA8();
    v14 = v13;
    v7 = v85;
    sub_2388D2888();
    v15 = sub_2388D2878();
    if (!v16)
    {
      __break(1u);
      goto LABEL_6;
    }

LABEL_12:
    v20 = v15;
    sub_238826D50(v12, v14);
    return v20;
  }

  LOBYTE(v92) = a1 & 1;
  v12 = sub_2388D0DA8();
  v14 = v18;
  sub_2388D2888();
  v15 = sub_2388D2878();
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t GeneratedContent.value<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 8);
  v7 = *(v3 + 17);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v6;
  v14 = v10;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v11 = *(a3 + 8);
  sub_238814698(v13[0], v6, v10);

  return v11(v13, a2, a3);
}

uint64_t GeneratedContent.kind.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v78 = *v2;
  v79 = v5;
  v80 = *(v2 + 4);
  v81 = v78;
  v82 = *(v2 + 8);
  v7 = *(&v78 + 1);
  v6 = v78;
  v8 = v82;
  if (v82 <= 2u)
  {
    if (v82)
    {
      if (v82 == 1)
      {
        v9 = 0;
LABEL_58:
        v10 = v6;
        goto LABEL_59;
      }

      v8 = v82;
      v9 = *(&v78 + 1);
      v10 = v78;
    }

    else
    {
      v9 = 0;
      v10 = v78 & 1;
    }

LABEL_59:
    *a2 = v10;
    *(a2 + 8) = v9;
    *(a2 + 16) = v8;
    return result;
  }

  v72 = v78;
  if (v82 == 3)
  {
    v43 = *(v78 + 16);
    v10 = MEMORY[0x277D84F90];
    if (!v43)
    {
LABEL_44:
      v9 = 0;
      goto LABEL_59;
    }

    v63 = a2;
    v75 = MEMORY[0x277D84F90];

    v65 = v43;
    sub_2388B7C74(0, v43, 0);
    v44 = 0;
    v71 = *(v78 + 16);
    v10 = v75;
    v45 = v80;
    v69 = *(&v79 + 1);
    v46 = (v78 + 49);
    v67 = v80;
    while (v71 != v44)
    {
      if (v44 >= *(v6 + 16))
      {
        goto LABEL_61;
      }

      v47 = *(v46 - 17);
      v48 = *(v46 - 9);
      v49 = *(v46 - 1);
      v74 = *v46;
      if (v45)
      {
        v76 = v69;
        v77 = v45;
        swift_bridgeObjectRetain_n();
        sub_238814698(v47, v48, v49);
        MEMORY[0x23EE66C20](91, 0xE100000000000000);
        v50 = sub_2388D32F8();
        MEMORY[0x23EE66C20](v50);

        MEMORY[0x23EE66C20](93, 0xE100000000000000);
        v43 = v65;
      }

      else
      {
        sub_238814698(v47, v48, v49);
      }

      v52 = *(v75 + 16);
      v51 = *(v75 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_2388B7C74((v51 > 1), v52 + 1, 1);
        v43 = v65;
      }

      ++v44;
      *(v75 + 16) = v52 + 1;
      v53 = v75 + 40 * v52;
      *(v53 + 32) = v47;
      *(v53 + 40) = v48;
      *(v53 + 48) = v49;
      *(v53 + 49) = v74;
      *(v53 + 56) = v69;
      *(v53 + 64) = v45;
      v46 += 24;
      v6 = v72;
      v45 = v67;
      if (v43 == v44)
      {
        result = sub_238826E74(&v81);
        a2 = v63;
        v8 = 3;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v10 = 0;
  v9 = 0;
  if (v82 != 4)
  {
    goto LABEL_59;
  }

  v64 = *(&v78 + 1);
  if (*(&v78 + 1))
  {
    v11 = *(*(&v78 + 1) + 16);
    sub_238826DB0(&v81, &v76);

    if (v11)
    {
      v12 = 0;
      v13 = v7 + 5;
      v59 = v11 - 1;
      v14 = MEMORY[0x277D84F90];
      v62 = a2;
      v73 = v11;
      v60 = v7 + 5;
LABEL_10:
      v61 = v14;
      v15 = &v13[2 * v12];
      v16 = v12;
      while (v16 < v7[2])
      {
        if (*(v6 + 16))
        {
          v20 = *(v15 - 1);
          v21 = *v15;

          v22 = sub_238820AA8(v20, v21);
          if (v23)
          {
            v24 = *(v6 + 56) + 24 * v22;
            v19 = *v24;
            v25 = *(v24 + 8);
            v26 = *(v24 + 16);
            v68 = *(v24 + 17);
            v27 = *(&v79 + 1);
            v28 = v80;
            v70 = v25;
            if (v80)
            {
              v76 = *(&v79 + 1);
              v77 = v80;
              v29 = v26;
              v66 = v26;
              v30 = v25;
              sub_238814698(v19, v25, v29);

              sub_238814698(v19, v30, v66);

              MEMORY[0x23EE66C20](46, 0xE100000000000000);
              MEMORY[0x23EE66C20](v20, v21);
              v31 = v30;
              v26 = v66;
              sub_238810DC4(v19, v31, v66);

              v27 = v76;
              v28 = v77;
            }

            else
            {
              sub_238814698(v19, v25, v26);
            }

            v33 = 256;
            if (!v68)
            {
              v33 = 0;
            }

            v32 = v3 & 0xFFFFFFFFFFFF0000 | v26;
            v17 = v32 | v33;
            if (v21)
            {
              v3 = v32 | v33;
              v34 = v61;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v34 = sub_2388B66F4(0, v61[2] + 1, 1, v61);
              }

              v35 = v27;
              v36 = v28;
              v38 = v34[2];
              v37 = v34[3];
              v39 = v34;
              if (v38 >= v37 >> 1)
              {
                v42 = sub_2388B66F4((v37 > 1), v38 + 1, 1, v34);
                v36 = v28;
                v35 = v27;
                v39 = v42;
              }

              v11 = v73;
              v7 = v64;
              v12 = v16 + 1;
              v39[2] = v38 + 1;
              v40 = &v39[7 * v38];
              v14 = v39;
              v40[4] = v20;
              v40[5] = v21;
              v6 = v72;
              v40[6] = v19;
              v40[7] = v70;
              v40[8] = v3;
              v40[9] = v35;
              v40[10] = v36;
              v41 = v59 == v16;
              a2 = v62;
              v13 = v60;
              if (v41)
              {
                goto LABEL_49;
              }

              goto LABEL_10;
            }

            v11 = v73;
            v7 = v64;
            v18 = v70;
          }

          else
          {

            v17 = 0;
            v18 = 0;
            v19 = 0;
            v20 = 0;
            v11 = v73;
          }
        }

        else
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
        }

        ++v16;
        v3 = v17;
        sub_238826E0C(v20, 0, v19, v18, v17);
        v15 += 2;
        if (v11 == v16)
        {
          a2 = v62;
          v14 = v61;
          goto LABEL_49;
        }
      }

LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v14 = MEMORY[0x277D84F90];
LABEL_49:

    if (v14[2])
    {
      goto LABEL_50;
    }

LABEL_47:
    v54 = MEMORY[0x277D84F98];
    goto LABEL_51;
  }

  MEMORY[0x28223BE20](result);
  sub_238826DB0(&v81, &v76);
  v7 = 0;
  if (!*(sub_2388260B0(v6, sub_238826DA4) + 16))
  {
    goto LABEL_47;
  }

LABEL_50:
  sub_238810E44(&qword_27DF2FAE0, &qword_2388D4530);
  v54 = sub_2388D3128();
LABEL_51:
  v76 = v54;

  sub_2388202D8(v55, 1, &v76);

  v10 = v76;
  if (v7)
  {

    v9 = v7;
    v8 = 4;
    goto LABEL_59;
  }

  v6 = v76;
  v56 = *(v72 + 16);
  if (!v56)
  {

    v9 = MEMORY[0x277D84F90];
    goto LABEL_57;
  }

  v57 = a2;
  v9 = sub_2388201D0(*(v72 + 16), 0);
  v58 = sub_2388255D4(&v76, v9 + 4, v56, v72);
  result = sub_238826BEC();
  if (v58 == v56)
  {
    a2 = v57;
LABEL_57:
    v8 = 4;
    goto LABEL_58;
  }

LABEL_63:
  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_23881AB94()
{
  v1 = sub_2388D0D88();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v5 = *v0;
  v6 = *(v0 + 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + 17);
  v25 = *v0;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v29 = *(v0 + 24);
  GeneratedContent.kind.getter(v4, v23);
  v9 = v23[0];
  if (v24 == 4)
  {
  }

  else
  {
    sub_238810DC4(v23[0], v23[1], v24);
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_2388D2FA8();

    v25 = 0xD000000000000036;
    v26 = 0x80000002388DE400;
    v10 = sub_2388D0DC8();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_2388D0DB8();
    sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
    v14 = *(v2 + 72);
    v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_2388D3F70;
    sub_2388D0D78();
    v23[0] = v16;
    sub_238815B14();
    v30 = v6;
    sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
    sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
    sub_2388D2F08();
    sub_2388D0D98();
    v17 = sub_238819C1C(v5, v30, v7, v13);
    v19 = v18;

    MEMORY[0x23EE66C20](v17, v19);

    v20 = v25;
    v9 = v26;
    sub_2388151C8();
    swift_allocError();
    *v21 = v20;
    *(v21 + 8) = v9;
    *(v21 + 16) = MEMORY[0x277D84F90];
    *(v21 + 24) = 0;
    *(v21 + 32) = 5;
    swift_willThrow();
  }

  return v9;
}

uint64_t GeneratedContent.value<A>(_:forProperty:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v51 = a4;
  v50 = a3;
  v46 = a5;
  v49 = sub_2388D0D88();
  v47 = *(v49 - 8);
  v8 = *(v47 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2388D2E78();
  v44 = *(v10 - 8);
  v45 = v10;
  v11 = *(v44 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v15 = *v5;
  v14 = *(v5 + 8);
  v16 = *(v5 + 16);
  v17 = *(v5 + 17);
  v53 = *v5;
  v54 = v14;
  v55 = v16;
  v56 = v17;
  v57 = *(v5 + 24);
  v18 = a1;
  v19 = a1;
  v20 = a2;
  v21 = a2;
  v22 = v50;
  v23 = v52;
  result = GeneratedContent.value<A>(_:forProperty:)(v19, v21, v50, v51, &v39 - v12);
  if (!v23)
  {
    v40 = v18;
    v41 = v20;
    v42 = v17;
    v43 = v16;
    v51 = v14;
    v52 = v15;
    v25 = *(v22 - 8);
    if ((*(v25 + 48))(v13, 1, v22) == 1)
    {
      (*(v44 + 8))(v13, v45);
      v53 = 0;
      v54 = 0xE000000000000000;
      sub_2388D2FA8();

      v53 = 0xD00000000000002ELL;
      v54 = 0x80000002388DE3A0;
      MEMORY[0x23EE66C20](v40, v41);
      MEMORY[0x23EE66C20](0x65746E6F430A2E27, 0xEC000000203A746ELL);
      v26 = sub_2388D0DC8();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v29 = sub_2388D0DB8();
      sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
      v30 = *(v47 + 72);
      v31 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_2388D3F70;
      sub_2388D0D78();
      v58 = v32;
      sub_238815B14();
      sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
      sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90);
      sub_2388D2F08();
      sub_2388D0D98();
      v33 = sub_238819C1C(v52, v51, v43, v29);
      v35 = v34;

      MEMORY[0x23EE66C20](v33, v35);

      v36 = v53;
      v37 = v54;
      sub_2388151C8();
      swift_allocError();
      *v38 = v36;
      *(v38 + 8) = v37;
      *(v38 + 16) = MEMORY[0x277D84F90];
      *(v38 + 24) = 0;
      *(v38 + 32) = 5;
      return swift_willThrow();
    }

    else
    {
      return (*(v25 + 32))(v46, v13, v22);
    }
  }

  return result;
}

uint64_t GeneratedContent.value<A>(_:forProperty:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = *(v5 + 16);
  v13 = *(v5 + 17);
  v32 = *v5;
  v33 = v12;
  v34 = v13;
  v35 = *(v5 + 24);
  result = sub_23881AB94();
  if (!v6)
  {
    v15 = result;
    v36 = 0;
    if (!*(result + 16))
    {
      goto LABEL_7;
    }

    v16 = sub_238820AA8(a1, a2);
    if ((v17 & 1) == 0)
    {
      goto LABEL_7;
    }

    v18 = *(v15 + 56) + 40 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v30 = *(v18 + 17);
    v22 = *(v18 + 32);
    v28 = *(v18 + 24);
    sub_238814698(*v18, v20, v21);
    v31 = v22;

    sub_238814698(v19, v20, v21);
    v23 = sub_23882C97C(0, 0, 5, 0, 0, 0, 0);
    v25 = v24;
    v27 = v26;
    v29 = sub_23882D4E4(v23, v24, v26, v19, v20, v21);
    sub_238810DC4(v23, v25, v27);
    sub_238810DC4(v19, v20, v21);
    if ((v29 & 1) != 0 && v30 != ((v27 & 0x100) == 0))
    {
      sub_238810DC4(v19, v20, v21);
LABEL_7:

      return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
    }

    *&v32 = v19;
    *(&v32 + 1) = v20;
    v33 = v21;
    v34 = v30;
    *&v35 = v28;
    *(&v35 + 1) = v31;
    (*(a4 + 8))(&v32, a3, a4);
    return (*(*(a3 - 8) + 56))(a5, 0, 1, a3);
  }

  return result;
}

uint64_t GeneratedContent.debugDescription.getter()
{
  v1 = sub_2388D2898();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_23882BCCC(*v0, *(v0 + 8), *(v0 + 16));
  v5 = v4;
  v7 = v6;
  v8 = sub_2388D0DC8();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_2388D0DB8();
  sub_238826EC8();
  v11 = sub_2388D0DA8();
  v13 = v12;

  sub_2388D2888();
  v14 = sub_2388D2878();
  v16 = v15;
  sub_238826D50(v11, v13);
  if (v16)
  {
    sub_238810DC4(v3, v5, v7);
    return v14;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_23881B680@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = a1[3];
  v8 = a1[4];

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 17) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_23881B6E8@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 17);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v7 = *(v1 + 16);
  *(a1 + 16) = v7;
  *(a1 + 17) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  sub_238814698(v2, v3, v7);
}

uint64_t sub_23881B740(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
LABEL_6:
  while (2)
  {
    while (2)
    {
      if (v7)
      {
        v9 = __clz(__rbit64(v7));
        v241 = (v7 - 1) & v7;
        goto LABEL_13;
      }

      v10 = v4;
      do
      {
        v4 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_233:
          v135 = v7;
          sub_238810DC4(v235, v234, 3);
          v136 = v135;
          goto LABEL_252;
        }

        if (v4 >= v8)
        {
          return 1;
        }

        v11 = *(a1 + 64 + 8 * v4);
        ++v10;
      }

      while (!v11);
      v9 = __clz(__rbit64(v11));
      v241 = (v11 - 1) & v11;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(a1 + 56) + 24 * v12;
      v18 = *v16;
      v17 = *(v16 + 8);
      v19 = *(v16 + 16);

      v242 = v18;
      v240 = v17;
      sub_238814698(v18, v17, v19);
      v20 = sub_238820AA8(v14, v15);
      LOBYTE(v18) = v21;

      if ((v18 & 1) == 0)
      {
        v134 = v242;
        v35 = v17;
        goto LABEL_237;
      }

      v22 = *(a2 + 56) + 24 * v20;
      v2 = *v22;
      v23 = *(v22 + 8);
      v24 = *(v22 + 16);
      v25 = 24;
      if (v24 > 2)
      {
        v26 = v242;
        if (v24 != 3)
        {
          if (v24 == 4)
          {
            if (v19 == 4)
            {

              v28 = sub_23881B740(v27, v242);
              sub_238810DC4(v242, v240, 4);
              sub_238810DC4(v2, v23, 4);
              v7 = v241;
              if (v28)
              {
                continue;
              }

              return 0;
            }

LABEL_227:
            v134 = v26;
            v35 = v240;
          }

          else
          {
            v35 = v240;
            v7 = v241;
            if (v19 == 5 && (v240 | v242) == 0)
            {
              continue;
            }

            v134 = v242;
          }

LABEL_237:
          v138 = v19;
LABEL_254:
          sub_238810DC4(v134, v35, v138);
          return 0;
        }

        if (v19 != 3)
        {
          goto LABEL_227;
        }

        v29 = *(v2 + 16);
        if (v29 != *(v242 + 16))
        {
          v134 = v242;
          v35 = v240;
          goto LABEL_253;
        }

        if (!v29 || v2 == v242)
        {
          v30 = v242;
          v31 = v240;
          goto LABEL_33;
        }

        v237 = v2 + 32;

        v40 = 0;
        v230 = v2;
        while (2)
        {
          if (v40 >= *(v2 + 16))
          {
            __break(1u);
LABEL_263:
            __break(1u);
LABEL_264:
            v181 = v39;
            v182 = v38;
            v183 = v37;
            sub_238814698(v39, v38, v37);
            sub_238814698(v25, v29, 3);
            sub_238810DC4(v221, v231, 3);
            sub_238810DC4(v216, v224, 3);
            sub_238810DC4(v236, v228, 3);
            sub_238810DC4(v223, v227, 3);
            sub_238810DC4(v235, v234, 3);
            sub_238810DC4(v232, v238, 3);
            sub_238810DC4(v242, v240, 3);
            sub_238810DC4(v2, v222, 3);
            v184 = v181;
            v185 = v182;
            v186 = v183;
LABEL_270:
            sub_238810DC4(v184, v185, v186);
            v134 = v25;
            v35 = v29;
            goto LABEL_253;
          }

          if (v40 >= *(v242 + 16))
          {
            goto LABEL_263;
          }

          v42 = v237 + 24 * v40;
          v43 = *v42;
          v238 = *(v42 + 8);
          v44 = *(v42 + 16);
          v39 = v242 + 32;
          v45 = v242 + 32 + 24 * v40;
          v37 = *v45;
          v38 = *(v45 + 8);
          v19 = *(v45 + 16);
          if (v44 <= 2)
          {
            if (v44)
            {
              if (v44 == 1)
              {
                if (v19 != 1)
                {
                  goto LABEL_230;
                }

                v46 = *v45;
                if (*&v43 != *&v37)
                {
                  goto LABEL_228;
                }

                goto LABEL_54;
              }

              if (v19 == 2)
              {
                v58 = v43 == v37 && v238 == v38;
                if (!v58 && (sub_2388D3368() & 1) == 0)
                {
                  goto LABEL_228;
                }

                goto LABEL_54;
              }

              v143 = *v45;
              v144 = *(v45 + 8);
              sub_238814698(*v45, v144, *(v45 + 16));
              sub_238814698(v43, v238, 2);
              sub_238810DC4(v242, v240, 3);
              sub_238810DC4(v2, v23, 3);
              sub_238810DC4(*&v143, v144, v19);
              v134 = v43;
              v35 = v238;
LABEL_266:
              v138 = 2;
              goto LABEL_254;
            }

            if (*(v45 + 16))
            {
              goto LABEL_230;
            }

            if ((v37 ^ v43))
            {
LABEL_228:
              sub_238810DC4(v242, v240, 3);
              v134 = v2;
              goto LABEL_229;
            }

LABEL_54:
            ++v40;
            v25 = 24;
            if (v40 != v29)
            {
              continue;
            }

            sub_238810DC4(v242, v240, 3);
            v30 = v2;
            v31 = v23;
LABEL_33:
            v32 = 3;
LABEL_47:
            sub_238810DC4(v30, v31, v32);
            v7 = v241;
            goto LABEL_6;
          }

          break;
        }

        if (v44 != 3)
        {
          if (v44 == 4)
          {
            v47 = *v45;
            v48 = *(v45 + 8);
            if (v19 == 4)
            {
              v49 = *v45;
              v234 = *(v45 + 8);
              sub_238814698(v47, v48, 4);
              sub_238814698(v43, v238, 4);
              LODWORD(v236) = sub_23881B740(v43, v49);
              sub_238810DC4(v49, v234, 4);
              sub_238810DC4(v43, v238, 4);
              v2 = v230;
              if ((v236 & 1) == 0)
              {
                goto LABEL_228;
              }

              goto LABEL_54;
            }

            v141 = *v45;
            v142 = *(v45 + 8);
            sub_238814698(v47, v48, *(v45 + 16));
            sub_238814698(v43, v238, 4);
            sub_238810DC4(v242, v240, 3);
            sub_238810DC4(v230, v23, 3);
            sub_238810DC4(v141, v142, v19);
            v134 = v43;
            v35 = v238;
LABEL_268:
            v138 = 4;
            goto LABEL_254;
          }

          if (v19 == 5 && (v38 | v37) == 0)
          {
            goto LABEL_54;
          }

LABEL_230:
          v130 = *v45;
          v131 = *(v45 + 8);
          sub_238814698(*v45, v131, *(v45 + 16));
          sub_238810DC4(v242, v240, 3);
          v132 = v2;
          v133 = v23;
LABEL_235:
          sub_238810DC4(v132, v133, 3);
          v134 = v130;
LABEL_236:
          v35 = v131;
          goto LABEL_237;
        }

        if (v19 != 3)
        {
          v139 = *v45;
          v140 = *(v45 + 8);
          sub_238814698(*v45, v140, *(v45 + 16));
          sub_238814698(v43, v238, 3);
          sub_238810DC4(v242, v240, 3);
          sub_238810DC4(v2, v23, 3);
          sub_238810DC4(v139, v140, v19);
          v134 = v43;
          v35 = v238;
          goto LABEL_253;
        }

        v50 = *(v43 + 16);
        if (v50 != *(v37 + 16))
        {
          v145 = v37;
          v146 = v38;
          sub_238814698(v37, v38, 3);
          sub_238814698(v43, v238, 3);
          sub_238810DC4(v242, v240, 3);
          sub_238810DC4(v2, v23, 3);
          sub_238810DC4(v145, v146, 3);
          v134 = v43;
          v35 = v238;
          goto LABEL_253;
        }

        if (v50)
        {
          v51 = v43 == v37;
        }

        else
        {
          v51 = 1;
        }

        if (v51)
        {
          goto LABEL_54;
        }

        v222 = v23;
        v52 = v37 + 32;
        v234 = v38;
        v235 = v37;
        v232 = v43;
        v229 = *(v43 + 16);
        sub_238814698(v37, v38, 3);
        result = sub_238814698(v43, v238, 3);
        v54 = v52;
        v55 = v43 + 32;
        v56 = v229;
        v7 = v43;
        v57 = 0;
        v225 = v52;
        v226 = v43 + 32;
        v233 = v29;
        while (2)
        {
          if (v57 >= *(v7 + 16))
          {
            __break(1u);
LABEL_272:
            __break(1u);
LABEL_273:
            __break(1u);
LABEL_274:
            __break(1u);
LABEL_275:
            __break(1u);
LABEL_276:
            __break(1u);
LABEL_277:
            __break(1u);
LABEL_278:
            __break(1u);
            return result;
          }

          if (v57 >= *(v235 + 16))
          {
            goto LABEL_272;
          }

          v60 = v55 + 24 * v57;
          v61 = *v60;
          v62 = *(v60 + 8);
          v63 = *(v60 + 16);
          v64 = v54 + 24 * v57;
          v65 = *(v64 + 8);
          v236 = *v64;
          v66 = *(v64 + 16);
          if (v63 <= 2)
          {
            if (v63)
            {
              if (v63 == 1)
              {
                if (v66 != 1)
                {
                  goto LABEL_234;
                }

                if (v61 != *&v236)
                {
                  goto LABEL_233;
                }
              }

              else
              {
                if (v66 != 2)
                {
                  v158 = v66;
                  v159 = v7;
                  v160 = *&v61;
                  v161 = v65;
                  sub_238814698(v236, v65, v66);
                  sub_238814698(v160, v62, 2);
                  sub_238810DC4(v235, v234, 3);
                  sub_238810DC4(v159, v238, 3);
                  sub_238810DC4(v242, v240, 3);
                  sub_238810DC4(v2, v222, 3);
                  sub_238810DC4(v236, v161, v158);
                  v134 = v160;
                  v35 = v62;
                  goto LABEL_266;
                }

                if (*&v61 != v236 || v62 != v65)
                {
                  result = sub_2388D3368();
                  v54 = v225;
                  v55 = v226;
                  v56 = v229;
                  v7 = v232;
                  if ((result & 1) == 0)
                  {
                    goto LABEL_233;
                  }
                }
              }
            }

            else
            {
              if (v66)
              {
                goto LABEL_234;
              }

              if ((v236 ^ LODWORD(v61)))
              {
                goto LABEL_233;
              }
            }

            goto LABEL_90;
          }

          if (v63 != 3)
          {
            if (v63 == 4)
            {
              v67 = *&v61;
              if (v66 != 4)
              {
                v162 = v66;
                v163 = v65;
                sub_238814698(v236, v65, v66);
                sub_238814698(v67, v62, 4);
                sub_238810DC4(v235, v234, 3);
                sub_238810DC4(v232, v238, 3);
                sub_238810DC4(v242, v240, 3);
                sub_238810DC4(v2, v222, 3);
                sub_238810DC4(v236, v163, v162);
                v134 = v67;
                v35 = v62;
                goto LABEL_268;
              }

              v228 = v65;
              sub_238814698(v236, v65, 4);
              sub_238814698(v67, v62, 4);
              LODWORD(v231) = sub_23881B740(v67, v236);
              sub_238810DC4(v236, v228, 4);
              result = sub_238810DC4(v67, v62, 4);
              v54 = v225;
              v55 = v226;
              v56 = v229;
              v7 = v232;
              if ((v231 & 1) == 0)
              {
                goto LABEL_233;
              }
            }

            else if (v66 != 5 || (v65 | v236) != 0)
            {
LABEL_234:
              v130 = v236;
              LOBYTE(v19) = v66;
              v137 = v7;
              v131 = v65;
              sub_238814698(v236, v65, v66);
              sub_238810DC4(v235, v234, 3);
              sub_238810DC4(v137, v238, 3);
              sub_238810DC4(v242, v240, 3);
              v132 = v2;
              v133 = v222;
              goto LABEL_235;
            }

            goto LABEL_90;
          }

          v227 = v62;
          if (v66 == 3)
          {
            v68 = *(*&v61 + 16);
            if (v68 == *(v236 + 16))
            {
              if (v68)
              {
                v69 = *&v61 == v236;
              }

              else
              {
                v69 = 1;
              }

              v7 = v232;
              if (v69)
              {
LABEL_90:
                ++v57;
                v29 = v233;
                if (v57 == v56)
                {
                  v129 = v7;
                  sub_238810DC4(v235, v234, 3);
                  sub_238810DC4(v129, v238, 3);
                  v23 = v222;
                  goto LABEL_54;
                }

                continue;
              }

              v70 = *&v61 + 32;
              v228 = v65;
              v223 = *&v61;
              v220 = *(*&v61 + 16);
              sub_238814698(v236, v65, 3);
              result = sub_238814698(v223, v62, 3);
              v71 = v236 + 32;
              v72 = v70;
              v73 = v220;
              v74 = v223;
              v75 = 0;
              v219 = v70;
              while (1)
              {
                if (v75 >= *(v74 + 16))
                {
                  goto LABEL_273;
                }

                if (v75 >= *(v236 + 16))
                {
                  goto LABEL_274;
                }

                v78 = v72 + 24 * v75;
                v80 = *v78;
                v79 = *(v78 + 8);
                v81 = *(v78 + 16);
                v82 = v71 + 24 * v75;
                v83 = *v82;
                v231 = *(v82 + 8);
                v84 = *(v82 + 16);
                if (v81 <= 2)
                {
                  if (v81)
                  {
                    if (v81 == 1)
                    {
                      if (v84 != 1)
                      {
                        goto LABEL_243;
                      }

                      if (*&v80 != *&v83)
                      {
                        goto LABEL_242;
                      }
                    }

                    else
                    {
                      if (v84 != 2)
                      {
                        v176 = v83;
                        v177 = v79;
                        v178 = v84;
                        v179 = v74;
                        sub_238814698(v83, v231, v84);
                        sub_238814698(v80, v177, 2);
                        sub_238810DC4(v236, v228, 3);
                        sub_238810DC4(v179, v227, 3);
                        sub_238810DC4(v235, v234, 3);
                        sub_238810DC4(v232, v238, 3);
                        sub_238810DC4(v242, v240, 3);
                        sub_238810DC4(v2, v222, 3);
                        sub_238810DC4(v176, v231, v178);
                        v134 = v80;
                        v35 = v177;
                        goto LABEL_266;
                      }

                      if (v80 != v83 || v79 != v231)
                      {
                        result = sub_2388D3368();
                        v71 = v236 + 32;
                        v72 = v219;
                        v73 = v220;
                        v74 = v223;
                        if ((result & 1) == 0)
                        {
                          goto LABEL_242;
                        }
                      }
                    }
                  }

                  else
                  {
                    if (v84)
                    {
                      goto LABEL_243;
                    }

                    if ((v83 ^ v80))
                    {
LABEL_242:
                      v147 = v74;
                      sub_238810DC4(v236, v228, 3);
                      v148 = v147;
                      goto LABEL_251;
                    }
                  }

                  goto LABEL_126;
                }

                if (v81 != 3)
                {
                  if (v81 == 4)
                  {
                    v224 = v79;
                    if (v84 != 4)
                    {
                      v168 = v83;
                      v169 = v84;
                      sub_238814698(v83, v231, v84);
                      sub_238814698(v80, v224, 4);
                      sub_238810DC4(v236, v228, 3);
                      sub_238810DC4(v223, v227, 3);
                      sub_238810DC4(v235, v234, 3);
                      sub_238810DC4(v232, v238, 3);
                      sub_238810DC4(v242, v240, 3);
                      sub_238810DC4(v2, v222, 3);
                      sub_238810DC4(v168, v231, v169);
                      v134 = v80;
                      v35 = v224;
                      goto LABEL_268;
                    }

                    v85 = v83;
                    sub_238814698(v83, v231, 4);
                    sub_238814698(v80, v224, 4);
                    LODWORD(v221) = sub_23881B740(v80, v85);
                    sub_238810DC4(v85, v231, 4);
                    result = sub_238810DC4(v80, v224, 4);
                    v71 = v236 + 32;
                    v72 = v219;
                    v73 = v220;
                    v74 = v223;
                    if ((v221 & 1) == 0)
                    {
                      goto LABEL_242;
                    }
                  }

                  else if (v84 != 5 || (v231 | v83) != 0)
                  {
LABEL_243:
                    v149 = v83;
                    LOBYTE(v19) = v84;
                    v150 = v74;
                    sub_238814698(v83, v231, v84);
                    sub_238810DC4(v236, v228, 3);
                    sub_238810DC4(v150, v227, 3);
                    sub_238810DC4(v235, v234, 3);
                    sub_238810DC4(v232, v238, 3);
                    sub_238810DC4(v242, v240, 3);
                    sub_238810DC4(v2, v222, 3);
                    v134 = v149;
                    v35 = v231;
                    goto LABEL_237;
                  }

                  goto LABEL_126;
                }

                v224 = v79;
                if (v84 != 3)
                {
                  v170 = v83;
                  v171 = v84;
                  sub_238814698(v83, v231, v84);
                  v172 = v224;
                  sub_238814698(v80, v224, 3);
                  sub_238810DC4(v236, v228, 3);
                  sub_238810DC4(v223, v227, 3);
                  sub_238810DC4(v235, v234, 3);
                  sub_238810DC4(v232, v238, 3);
                  sub_238810DC4(v242, v240, 3);
                  sub_238810DC4(v2, v222, 3);
                  v173 = v170;
                  v174 = v231;
                  v175 = v171;
                  goto LABEL_261;
                }

                v86 = *(v80 + 16);
                if (v86 != *(v83 + 16))
                {
                  v180 = v83;
                  sub_238814698(v83, v231, 3);
                  v172 = v224;
                  sub_238814698(v80, v224, 3);
                  sub_238810DC4(v236, v228, 3);
                  sub_238810DC4(v223, v227, 3);
                  sub_238810DC4(v235, v234, 3);
                  sub_238810DC4(v232, v238, 3);
                  sub_238810DC4(v242, v240, 3);
                  sub_238810DC4(v2, v222, 3);
                  v173 = v180;
                  v174 = v231;
                  v175 = 3;
LABEL_261:
                  sub_238810DC4(v173, v174, v175);
                  v134 = v80;
                  v35 = v172;
LABEL_253:
                  v138 = 3;
                  goto LABEL_254;
                }

                v87 = !v86 || v80 == v83;
                v74 = v223;
                if (!v87)
                {
                  break;
                }

LABEL_126:
                if (++v75 == v73)
                {
                  v128 = v74;
                  sub_238810DC4(v236, v228, 3);
                  result = sub_238810DC4(v128, v227, 3);
                  v7 = v232;
                  v56 = v229;
                  v54 = v225;
                  v55 = v226;
                  goto LABEL_90;
                }
              }

              v213 = v83 + 32;
              v214 = v80 + 32;
              v221 = v83;
              v215 = *(v80 + 16);
              sub_238814698(v83, v231, 3);
              result = sub_238814698(v80, v224, 3);
              v89 = v213;
              v88 = v80 + 32;
              v90 = v215;
              v91 = 0;
              v92 = v80;
              v216 = v80;
              while (1)
              {
                if (v91 >= *(v92 + 16))
                {
                  goto LABEL_275;
                }

                if (v91 >= *(v221 + 16))
                {
                  goto LABEL_276;
                }

                v95 = v88 + 24 * v91;
                v25 = *v95;
                v29 = *(v95 + 8);
                v96 = *(v95 + 16);
                v97 = v89 + 24 * v91;
                v39 = *v97;
                v38 = *(v97 + 8);
                LODWORD(v37) = *(v97 + 16);
                if (v96 > 2)
                {
                  break;
                }

                if (v96)
                {
                  if (v96 == 1)
                  {
                    if (v37 != 1)
                    {
                      goto LABEL_256;
                    }

                    v98 = *v97;
                    if (*&v25 != *&v39)
                    {
                      goto LABEL_250;
                    }
                  }

                  else
                  {
                    if (v37 != 2)
                    {
                      v187 = *v97;
                      v188 = *(v97 + 8);
                      v189 = v92;
                      v190 = *(v97 + 16);
                      sub_238814698(*v97, v188, v37);
                      sub_238814698(v25, v29, 2);
                      sub_238810DC4(v221, v231, 3);
                      sub_238810DC4(v189, v224, 3);
                      sub_238810DC4(v236, v228, 3);
                      sub_238810DC4(v223, v227, 3);
                      sub_238810DC4(v235, v234, 3);
                      sub_238810DC4(v232, v238, 3);
                      sub_238810DC4(v242, v240, 3);
                      sub_238810DC4(v2, v222, 3);
                      sub_238810DC4(*&v187, v188, v190);
                      v134 = v25;
                      v35 = v29;
                      goto LABEL_266;
                    }

                    if (v25 != v39 || v29 != v38)
                    {
                      v110 = *v97;
                      v111 = v91;
                      result = sub_2388D3368();
                      v91 = v111;
                      v89 = v213;
                      v88 = v214;
                      v90 = v215;
                      v92 = v216;
                      if ((result & 1) == 0)
                      {
                        goto LABEL_250;
                      }
                    }
                  }

                  goto LABEL_162;
                }

                if (*(v97 + 16))
                {
                  goto LABEL_256;
                }

                if ((v39 ^ v25))
                {
LABEL_250:
                  v165 = v92;
                  sub_238810DC4(v221, v231, 3);
                  sub_238810DC4(v165, v224, 3);
                  sub_238810DC4(v236, v228, 3);
                  v148 = v223;
LABEL_251:
                  sub_238810DC4(v148, v227, 3);
                  sub_238810DC4(v235, v234, 3);
                  v136 = v232;
LABEL_252:
                  sub_238810DC4(v136, v238, 3);
                  sub_238810DC4(v242, v240, 3);
                  v134 = v2;
                  v35 = v222;
                  goto LABEL_253;
                }

LABEL_162:
                if (++v91 == v90)
                {
                  v127 = v92;
                  sub_238810DC4(v221, v231, 3);
                  result = sub_238810DC4(v127, v224, 3);
                  v74 = v223;
                  v72 = v219;
                  v73 = v220;
                  v71 = v236 + 32;
                  goto LABEL_126;
                }
              }

              if (v96 != 3)
              {
                if (v96 == 4)
                {
                  v217 = v29;
                  v99 = v25;
                  if (v37 != 4)
                  {
                    v191 = *v97;
                    v192 = *(v97 + 8);
                    v193 = *(v97 + 16);
                    sub_238814698(v39, v38, v37);
                    sub_238814698(v25, v217, 4);
                    sub_238810DC4(v221, v231, 3);
                    sub_238810DC4(v216, v224, 3);
                    sub_238810DC4(v236, v228, 3);
                    sub_238810DC4(v223, v227, 3);
                    sub_238810DC4(v235, v234, 3);
                    sub_238810DC4(v232, v238, 3);
                    sub_238810DC4(v242, v240, 3);
                    sub_238810DC4(v2, v222, 3);
                    sub_238810DC4(v191, v192, v193);
                    v134 = v25;
                    v35 = v217;
                    goto LABEL_268;
                  }

                  v100 = *v97;
                  v206 = v91;
                  v208 = *(v97 + 8);
                  sub_238814698(v39, v38, 4);
                  sub_238814698(v99, v217, 4);
                  v210 = sub_23881B740(v99, v100);
                  sub_238810DC4(v100, v208, 4);
                  result = sub_238810DC4(v99, v217, 4);
                  v91 = v206;
                  v89 = v213;
                  v88 = v214;
                  v90 = v215;
                  v92 = v216;
                  if ((v210 & 1) == 0)
                  {
                    goto LABEL_250;
                  }
                }

                else if (v37 != 5 || (v38 | v39) != 0)
                {
LABEL_256:
                  v166 = *v97;
                  v131 = *(v97 + 8);
                  v167 = v92;
                  LOBYTE(v19) = *(v97 + 16);
                  sub_238814698(*v97, v131, v37);
                  sub_238810DC4(v221, v231, 3);
                  sub_238810DC4(v167, v224, 3);
                  sub_238810DC4(v236, v228, 3);
                  sub_238810DC4(v223, v227, 3);
                  sub_238810DC4(v235, v234, 3);
                  sub_238810DC4(v232, v238, 3);
                  sub_238810DC4(v242, v240, 3);
                  sub_238810DC4(v2, v222, 3);
                  v134 = v166;
                  goto LABEL_236;
                }

                goto LABEL_162;
              }

              if (v37 != 3)
              {
                goto LABEL_264;
              }

              v101 = *(v25 + 16);
              if (v101 != *(v39 + 16))
              {
                v194 = v39;
                v195 = v38;
                sub_238814698(v39, v38, 3);
                sub_238814698(v25, v29, 3);
                sub_238810DC4(v221, v231, 3);
                sub_238810DC4(v216, v224, 3);
                sub_238810DC4(v236, v228, 3);
                sub_238810DC4(v223, v227, 3);
                sub_238810DC4(v235, v234, 3);
                sub_238810DC4(v232, v238, 3);
                sub_238810DC4(v242, v240, 3);
                sub_238810DC4(v2, v222, 3);
                v184 = v194;
                v185 = v195;
                v186 = 3;
                goto LABEL_270;
              }

              if (v101)
              {
                v102 = v25 == v39;
              }

              else
              {
                v102 = 1;
              }

              v92 = v216;
              if (v102)
              {
                goto LABEL_162;
              }

              v207 = v91;
              v209 = v38;
              v197 = *(v25 + 16);
              v198 = v39;
              v205 = v25;
              sub_238814698(v39, v38, 3);
              v218 = v29;
              result = sub_238814698(v25, v29, 3);
              v104 = v197;
              v103 = v198;
              v105 = v25;
              v106 = 0;
              v107 = (v198 + 48);
              v108 = (v25 + 48);
              while (1)
              {
                if (v106 >= *(v105 + 16))
                {
                  goto LABEL_277;
                }

                if (v106 >= *(v103 + 16))
                {
                  goto LABEL_278;
                }

                v116 = *(v108 - 2);
                v117 = *v108;
                v118 = *(v107 - 2);
                v119 = *(v107 - 1);
                v120 = *v107;
                if (v117 > 2)
                {
                  if (v117 == 3)
                  {
                    if (v120 != 3)
                    {
                      goto LABEL_244;
                    }

                    v112 = *(v108 - 1);
                    v203 = v107;
                    v199 = *(v107 - 2);
                    v201 = *(v107 - 1);
                    v204 = v106;
                    v211 = v108;
                    sub_238814698(v199, v119, 3);
                    sub_238814698(v116, v112, 3);
                    v196 = sub_23889041C(v116, v199);
                    sub_238810DC4(v199, v201, 3);
                    v113 = v116;
                    v114 = v112;
                    v115 = 3;
LABEL_195:
                    result = sub_238810DC4(v113, v114, v115);
                    v108 = v211;
                    v107 = v203;
                    v106 = v204;
                    v104 = v197;
                    v103 = v198;
                    v105 = v205;
                    if ((v196 & 1) == 0)
                    {
                      goto LABEL_244;
                    }

                    goto LABEL_196;
                  }

                  if (v117 == 4)
                  {
                    if (v120 != 4)
                    {
                      goto LABEL_244;
                    }

                    v123 = *(v108 - 1);
                    v203 = v107;
                    v200 = *(v107 - 2);
                    v202 = *(v107 - 1);
                    v204 = v106;
                    v211 = v108;
                    sub_238814698(v200, v119, 4);
                    sub_238814698(v116, v123, 4);
                    v196 = sub_23881B740(v116, v200);
                    sub_238810DC4(v200, v202, 4);
                    v113 = v116;
                    v114 = v123;
                    v115 = 4;
                    goto LABEL_195;
                  }

                  if (v120 != 5 || v119 | *&v118)
                  {
                    goto LABEL_244;
                  }
                }

                else if (*v108)
                {
                  if (v117 == 1)
                  {
                    if (v120 != 1)
                    {
                      goto LABEL_244;
                    }

                    v121 = *(v108 - 2);
                    v122 = *(v107 - 2);
                    if (*&v116 != v118)
                    {
                      goto LABEL_244;
                    }
                  }

                  else
                  {
                    if (v120 != 2)
                    {
                      goto LABEL_244;
                    }

                    if (v116 != *&v118 || *(v108 - 1) != v119)
                    {
                      v124 = *(v108 - 2);
                      v125 = v106;
                      v126 = v107;
                      v212 = v108;
                      result = sub_2388D3368();
                      v108 = v212;
                      v107 = v126;
                      v106 = v125;
                      v104 = v197;
                      v103 = v198;
                      v105 = v205;
                      if ((result & 1) == 0)
                      {
LABEL_244:
                        v151 = v103;
                        sub_238810DC4(v221, v231, 3);
                        sub_238810DC4(v216, v224, 3);
                        sub_238810DC4(v236, v228, 3);
                        sub_238810DC4(v223, v227, 3);
                        sub_238810DC4(v235, v234, 3);
                        sub_238810DC4(v232, v238, 3);
                        sub_238810DC4(v242, v240, 3);
                        sub_238810DC4(v2, v222, 3);
                        sub_238810DC4(v151, v209, 3);
                        v134 = v105;
                        v35 = v218;
                        goto LABEL_253;
                      }
                    }
                  }
                }

                else if (*v107 || ((LODWORD(v118) ^ v116) & 1) != 0)
                {
                  goto LABEL_244;
                }

LABEL_196:
                ++v106;
                v107 += 3;
                v108 += 3;
                if (v104 == v106)
                {
                  sub_238810DC4(v103, v209, 3);
                  result = sub_238810DC4(v105, v218, 3);
                  v90 = v215;
                  v92 = v216;
                  v89 = v213;
                  v88 = v214;
                  v91 = v207;
                  goto LABEL_162;
                }
              }
            }

            v153 = *&v61;
            v164 = v65;
            sub_238814698(v236, v65, 3);
            v23 = v62;
            sub_238814698(v153, v62, 3);
            sub_238810DC4(v235, v234, 3);
            sub_238810DC4(v232, v238, 3);
            sub_238810DC4(v242, v240, 3);
            sub_238810DC4(v2, v222, 3);
            v155 = v236;
            v156 = v164;
            v157 = 3;
          }

          else
          {
            v152 = v66;
            v153 = *&v61;
            v154 = v65;
            sub_238814698(v236, v65, v66);
            v23 = v62;
            sub_238814698(v153, v62, 3);
            sub_238810DC4(v235, v234, 3);
            sub_238810DC4(v232, v238, 3);
            sub_238810DC4(v242, v240, 3);
            sub_238810DC4(v2, v222, 3);
            v155 = v236;
            v156 = v154;
            v157 = v152;
          }

          break;
        }

        sub_238810DC4(v155, v156, v157);
        v134 = v153;
LABEL_229:
        v35 = v23;
        goto LABEL_253;
      }

      break;
    }

    v26 = v242;
    if (v24)
    {
      if (v24 == 1)
      {
        if (v19 != 1)
        {
          goto LABEL_227;
        }

        v7 = v241;
        if (*&v2 != *&v242)
        {
          return 0;
        }

        continue;
      }

      if (v19 != 2)
      {
        goto LABEL_227;
      }

      if (v2 == v242 && v23 == v240)
      {
        v30 = v242;
        v31 = v240;
        v32 = 2;
        goto LABEL_47;
      }

      v34 = sub_2388D3368();
      sub_238810DC4(v242, v240, 2);
      v7 = v241;
      if (v34)
      {
        continue;
      }
    }

    else
    {
      if (v19)
      {
        goto LABEL_227;
      }

      v7 = v241;
      if (((v2 ^ v242) & 1) == 0)
      {
        continue;
      }
    }

    return 0;
  }
}

uint64_t sub_23881D144(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v51 = a1;
  v52 = a2;
  if (!v7)
  {
LABEL_7:
    v10 = v3;
    while (1)
    {
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v3 >= v8)
      {
        return 1;
      }

      v11 = *(v4 + 8 * v3);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v55 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_93:
    sub_238810DC4(*&v57, a2, 4);

    v42 = v2;
    v41 = 0;
    v50 = 4;
    goto LABEL_81;
  }

  while (1)
  {
    v9 = __clz(__rbit64(v7));
    v55 = (v7 - 1) & v7;
LABEL_12:
    v12 = v9 | (v3 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(a1 + 56) + 40 * v12;
    v17 = *v16;
    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    v58 = *(v16 + 17);
    v20 = *(v16 + 32);
    v54 = *(v16 + 24);

    v61 = v19;
    sub_238814698(v17, v18, v19);
    v59 = v20;

    if (!v14)
    {
      return 1;
    }

    v21 = v2;
    v22 = sub_238820AA8(v15, v14);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_78;
    }

    v25 = *(v21 + 56) + 40 * v22;
    v26 = *v25;
    v27 = *(v25 + 8);
    v28 = *(v25 + 16);
    v29 = *(v25 + 17);
    v57 = *v25;
    v56 = *(v25 + 16);
    v53 = *(v25 + 24);
    v60 = *(v25 + 32);
    if (v28 <= 2)
    {
      if (*(v25 + 16))
      {
        if (v28 == 1)
        {
          if (v61 != 1)
          {
            goto LABEL_85;
          }

          if (*&v26 != *&v17)
          {
            v42 = v17;
            v41 = v18;
            v50 = 1;
            goto LABEL_81;
          }

          v30 = *v25;
          v31 = *(v25 + 8);
          v32 = v31;
          v33 = 1;
        }

        else
        {
          if (v61 != 2)
          {
LABEL_85:
            v42 = v17;
            v41 = v18;
            goto LABEL_80;
          }

          if (v26 == v17 && v27 == v18)
          {
            v31 = *(v25 + 8);
            v30 = *&v17;
            v32 = v18;
          }

          else
          {
            v45 = *v25;
            v46 = *(v25 + 8);
            if ((sub_2388D3368() & 1) == 0)
            {
              v42 = v17;
              v41 = v18;
              v50 = 2;
              goto LABEL_81;
            }

            v30 = v45;
            v31 = v46;
            v32 = v46;
          }

          v33 = 2;
        }
      }

      else
      {
        v41 = v18;
        v42 = v17;
        if (v61)
        {
          goto LABEL_80;
        }

        if ((v26 ^ v17))
        {
          v50 = 0;
          goto LABEL_81;
        }

        v30 = *v25;
        v31 = *(v25 + 8);
        v32 = v31;
        v33 = 0;
      }

LABEL_61:
      sub_238814698(*&v30, v32, v33);

      goto LABEL_62;
    }

    if (v28 != 3)
    {
      break;
    }

    if (v61 != 3)
    {
      v42 = v17;
LABEL_79:
      v41 = v18;
      goto LABEL_80;
    }

    v31 = *(v25 + 8);
    v43 = *v25;
    sub_238814698(v26, v27, 3);

    if ((sub_2388919B8(*&v43, v17) & 1) == 0)
    {
      sub_238810DC4(*&v57, v31, 3);

      v42 = v17;
      v41 = v18;
      v50 = 3;
      goto LABEL_81;
    }

LABEL_62:
    if (v58 != v29)
    {
      sub_238810DC4(*&v57, v31, v56);

LABEL_78:
      v42 = v17;
      goto LABEL_79;
    }

    if (v60)
    {
      v2 = v52;
      if (!v59)
      {
        goto LABEL_84;
      }

      if (v53 == v54 && v60 == v59)
      {
        swift_bridgeObjectRetain_n();
      }

      else
      {
        v48 = sub_2388D3368();
        swift_bridgeObjectRetain_n();
        if ((v48 & 1) == 0)
        {
          swift_bridgeObjectRelease_n();
          sub_238810DC4(*&v57, v31, v56);

          sub_238810DC4(v17, v18, v61);
          goto LABEL_82;
        }
      }

      swift_bridgeObjectRelease_n();
      sub_238810DC4(*&v57, v31, v56);

      sub_238810DC4(v17, v18, v61);
    }

    else
    {
      v2 = v52;
      if (v59)
      {
LABEL_84:

        sub_238810DC4(*&v57, v31, v56);

        sub_238810DC4(v17, v18, v61);
        goto LABEL_82;
      }

      sub_238810DC4(*&v57, v31, v56);

      sub_238810DC4(v17, v18, v61);
    }

    a1 = v51;
    v7 = v55;
    if (!v55)
    {
      goto LABEL_7;
    }
  }

  if (v28 != 4)
  {
    if (v61 != 5 || (v18 | v17) != 0)
    {
      v41 = v18;
      v42 = v17;
LABEL_80:
      v50 = v61;
      goto LABEL_81;
    }

    v30 = *v25;
    v31 = *(v25 + 8);
    v32 = v31;
    v33 = 5;
    goto LABEL_61;
  }

  if (v61 != 4)
  {
    v42 = v17;
    v41 = v18;
    goto LABEL_80;
  }

  v34 = *v25;
  v31 = *(v25 + 8);
  sub_238814698(v26, v27, 4);
  v2 = v17;

  result = sub_23881D7DC(*&v34, v17);
  if ((result & 1) == 0)
  {
    v49 = *&v57;
    a2 = v31;
    goto LABEL_95;
  }

  a2 = v31;
  if (!v31)
  {
    v31 = 0;
    if (v18)
    {
      v49 = *&v57;
      a2 = 0;
      goto LABEL_95;
    }

    goto LABEL_62;
  }

  if (!v18)
  {
    goto LABEL_93;
  }

  v36 = *(v31 + 16);
  if (v36 == *(v18 + 16))
  {
    if (v36)
    {
      v37 = v31 == v18;
    }

    else
    {
      v37 = 1;
    }

    if (!v37)
    {
      v38 = (v31 + 40);
      v39 = (v18 + 40);
      while (v36)
      {
        result = *(v38 - 1);
        if (result != *(v39 - 1) || *v38 != *v39)
        {
          result = sub_2388D3368();
          if ((result & 1) == 0)
          {
            v49 = *&v57;
            a2 = v31;
            goto LABEL_95;
          }
        }

        v38 += 2;
        v39 += 2;
        if (!--v36)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
      return result;
    }

    goto LABEL_62;
  }

  v49 = *&v57;
LABEL_95:
  sub_238810DC4(v49, a2, 4);

  v42 = v17;
  v41 = v18;
  v50 = 4;
LABEL_81:
  sub_238810DC4(v42, v41, v50);
LABEL_82:

  return 0;
}

uint64_t sub_23881D7DC(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_409;
  }

  v6 = 0;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  while (1)
  {
LABEL_6:
    if (v9)
    {
      v11 = __clz(__rbit64(v9));
      v317 = (v9 - 1) & v9;
      goto LABEL_13;
    }

    v12 = v6;
    do
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_356:
        sub_238810DC4(v4, v3, 4);
        v230 = v2;
        v231 = 0;
        goto LABEL_359;
      }

      if (v6 >= v10)
      {
        return 1;
      }

      v13 = *(a1 + 64 + 8 * v6);
      ++v12;
    }

    while (!v13);
    v11 = __clz(__rbit64(v13));
    v317 = (v13 - 1) & v13;
LABEL_13:
    v14 = v11 | (v6 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(a1 + 56) + 24 * v14;
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v316 = *(v18 + 17);

    *&v318 = v20;
    *(&v318 + 1) = v19;
    sub_238814698(v19, v20, v21);
    v22 = sub_238820AA8(v16, v17);
    LOBYTE(v20) = v23;

    if ((v20 & 1) == 0)
    {
      v230 = *(&v318 + 1);
      v231 = v318;
LABEL_352:
      v229 = v21;
LABEL_408:
      sub_238810DC4(v230, v231, v229);
LABEL_409:
      *&result = 0.0;
      return result;
    }

    v24 = *(a2 + 56) + 24 * v22;
    v4 = *v24;
    v3 = *(v24 + 8);
    v25 = *(v24 + 16);
    v26 = *(v24 + 17);
    if (v25 <= 2)
    {
      break;
    }

    v2 = *(&v318 + 1);
    v29 = v318;
    if (v25 != 3)
    {
      if (v25 != 4)
      {
        if (v21 == 5 && v318 == 0)
        {
          goto LABEL_337;
        }

LABEL_351:
        v230 = *(&v318 + 1);
        v231 = v318;
        goto LABEL_352;
      }

      if (v21 != 4)
      {
        goto LABEL_351;
      }

      v30 = *(v24 + 8);

      if (sub_23881D7DC(v31, *(&v318 + 1)))
      {
        if (!v3)
        {
          sub_238810DC4(v4, 0, 4);
          if (v318)
          {
            goto LABEL_354;
          }

          v36 = *(&v318 + 1);
          v37 = 0;
LABEL_335:
          v38 = 4;
          goto LABEL_336;
        }

        if (!v318)
        {
          goto LABEL_356;
        }

        v2 = *(v3 + 16);
        if (v2 == *(v318 + 16))
        {
          if (v2)
          {
            if (v3 != v318)
            {
              v310 = v26;
              v26 = v4;
              v227 = (v3 + 40);
              v4 = v318 + 40;
              do
              {
                v228 = *(v227 - 1) == *(v4 - 8) && *v227 == *v4;
                if (!v228 && (sub_2388D3368() & 1) == 0)
                {
                  sub_238810DC4(v26, v3, 4);
                  v230 = *(&v318 + 1);
                  v231 = v318;
                  goto LABEL_359;
                }

                v227 += 2;
                v4 += 16;
                --v2;
              }

              while (v2);
              sub_238810DC4(v26, v3, 4);
              sub_238810DC4(*(&v318 + 1), v318, 4);
              LODWORD(v26) = v310;
              goto LABEL_337;
            }

            v32 = v4;
            v33 = v318;
          }

          else
          {
            v32 = v4;
            v33 = v3;
          }

          sub_238810DC4(v32, v33, 4);
          v36 = *(&v318 + 1);
          v37 = v318;
          goto LABEL_335;
        }

        sub_238810DC4(v4, v3, 4);
        v230 = *(&v318 + 1);
      }

      else
      {
        sub_238810DC4(v4, v3, 4);
LABEL_354:
        v230 = *(&v318 + 1);
      }

      v231 = v318;
LABEL_359:
      v229 = 4;
      goto LABEL_408;
    }

    if (v21 != 3)
    {
      goto LABEL_351;
    }

    v35 = *(v4 + 16);
    if (v35 != *(*(&v318 + 1) + 16))
    {
      goto LABEL_366;
    }

    if (v35 && v4 != *(&v318 + 1))
    {
      v314 = v4;
      v306 = v3;
      v3 = *(&v318 + 1) + 32;
      v312 = *(v4 + 16);

      v41 = v4 + 32;
      v42 = v312;
      v43 = 0;
      v309 = v26;
      v305 = v4 + 32;
      while (1)
      {
        if (v43 >= *(v314 + 16))
        {
          __break(1u);
LABEL_375:
          __break(1u);
LABEL_376:
          sub_238810DC4(v288, v287, 4);
          v242 = v4;
          v243 = v26;
          goto LABEL_381;
        }

        if (v43 >= *(v2 + 16))
        {
          goto LABEL_375;
        }

        v44 = v41 + 24 * v43;
        v46 = *v44;
        v45 = *(v44 + 8);
        v4 = *(v44 + 17);
        v47 = *(v44 + 16);
        v48 = v3 + 24 * v43;
        v50 = *v48;
        v49 = *(v48 + 8);
        v51 = *(v48 + 16);
        v52 = *(v48 + 17);
        if (v47 <= 2)
        {
          if (v47)
          {
            if (v47 == 1)
            {
              if (v51 != 1 || v46 != *&v50)
              {
                goto LABEL_363;
              }
            }

            else
            {
              if (v51 != 2)
              {
                goto LABEL_363;
              }

              if (*&v46 != v50 || v45 != v49)
              {
                v214 = v41;
                v313 = v43;
                v215 = v52;
                v216 = sub_2388D3368();
                v52 = v215;
                v42 = v312;
                v43 = v313;
                v41 = v214;
                if ((v216 & 1) == 0)
                {
                  goto LABEL_363;
                }
              }
            }
          }

          else if (v51 || ((v50 ^ LODWORD(v46)) & 1) != 0)
          {
            goto LABEL_363;
          }

          goto LABEL_320;
        }

        if (v47 == 3)
        {
          break;
        }

        if (v47 != 4)
        {
          if (v51 != 5 || (v49 | v50) != 0)
          {
            goto LABEL_363;
          }

          goto LABEL_320;
        }

        if (v51 != 4)
        {
          goto LABEL_363;
        }

        v307 = v52;
        v308 = v4;
        v53 = v29;
        v54 = *&v46;
        v55 = v45;
        v311 = v49;
        sub_238814698(v50, v49, 4);
        sub_238814698(v54, v55, 4);
        v56 = v54;
        v313 = v50;
        if ((sub_23881D7DC(v54, v50) & 1) == 0)
        {
          sub_238810DC4(v50, v311, 4);
          sub_238810DC4(v54, v55, 4);
          sub_238810DC4(v314, v306, 3);
          v230 = *(&v318 + 1);
          v231 = v53;
          goto LABEL_407;
        }

        v2 = *(&v318 + 1);
        if (v55)
        {
          v57 = v55;
          v29 = v53;
          if (!v311)
          {
            v235 = v57;
            sub_238810DC4(v313, 0, 4);
            v236 = v54;
            v237 = v235;
LABEL_365:
            sub_238810DC4(v236, v237, 4);
            sub_238810DC4(v314, v306, 3);
LABEL_366:
            v230 = v2;
LABEL_367:
            v231 = v29;
            goto LABEL_407;
          }

          v58 = *(v57 + 16);
          if (v58 != *(v311 + 16))
          {
            v238 = v57;
            sub_238810DC4(v313, v311, 4);
            sub_238810DC4(v54, v238, 4);
LABEL_363:
            sub_238810DC4(v314, v306, 3);
            v230 = *(&v318 + 1);
            goto LABEL_367;
          }

          if (v58)
          {
            if (v57 != v311)
            {
              v302 = v57;
              v220 = (v57 + 40);
              v221 = (v311 + 40);
              do
              {
                v222 = *(v220 - 1) == *(v221 - 1) && *v220 == *v221;
                if (!v222 && (sub_2388D3368() & 1) == 0)
                {
                  sub_238810DC4(v313, v311, 4);
                  v232 = v56;
                  v233 = v302;
                  v234 = 4;
                  goto LABEL_406;
                }

                v220 += 2;
                v221 += 2;
                --v58;
              }

              while (v58);
              sub_238810DC4(v56, v302, 4);
              v224 = v313;
              v225 = v311;
              v226 = 4;
              goto LABEL_332;
            }

            v59 = v54;
            v60 = v57;
          }

          else
          {
            v59 = v54;
            v60 = v311;
          }

          sub_238810DC4(v59, v57, 4);
          v218 = v313;
          v219 = v60;
        }

        else
        {
          v29 = v53;
          if (v311)
          {
            sub_238810DC4(v313, v311, 4);
            v236 = v54;
            v237 = 0;
            goto LABEL_365;
          }

          sub_238810DC4(v54, 0, 4);
          v218 = v313;
          v219 = 0;
        }

        sub_238810DC4(v218, v219, 4);
LABEL_319:
        v4 = v308;
        v26 = v309;
        v42 = v312;
        v3 = *(&v318 + 1) + 32;
        v41 = v305;
        v52 = v307;
LABEL_320:
        if (v4 != v52)
        {
          goto LABEL_363;
        }

        ++v43;
        v2 = *(&v318 + 1);
        if (v43 == v42)
        {
          sub_238810DC4(v314, v306, 3);
          goto LABEL_39;
        }
      }

      if (v51 != 3)
      {
        goto LABEL_363;
      }

      v61 = *(*&v46 + 16);
      if (v61 != *(v50 + 16))
      {
        goto LABEL_363;
      }

      if (v61)
      {
        v62 = *&v46 == v50;
      }

      else
      {
        v62 = 1;
      }

      if (v62)
      {
        goto LABEL_320;
      }

      v307 = v52;
      v308 = v4;
      v63 = v50;
      v313 = v50;
      v64 = *&v46 + 32;
      v65 = v50 + 32;
      v66 = *&v46;
      v67 = v45;
      v311 = v49;
      v304 = *(*&v46 + 16);
      sub_238814698(v63, v49, 3);
      v302 = v67;
      v68 = v67;
      v69 = v64;
      sub_238814698(v66, v68, 3);
      v70 = v304;
      v71 = v311;
      v72 = 0;
      v299 = v66;
      v293 = v65;
      v294 = v69;
      while (2)
      {
        if (v72 >= *(v66 + 16))
        {
          __break(1u);
LABEL_383:
          __break(1u);
LABEL_384:
          sub_238810DC4(v279, v280, 4);
          v246 = v281;
          v247 = v65;
          goto LABEL_391;
        }

        if (v72 >= *(v313 + 16))
        {
          goto LABEL_383;
        }

        v73 = v69 + 24 * v72;
        v74 = *v73;
        v75 = *(v73 + 8);
        v76 = *(v73 + 17);
        v77 = *(v73 + 16);
        v78 = v65 + 24 * v72;
        v79 = *v78;
        v80 = *(v78 + 8);
        v81 = *(v78 + 16);
        v82 = *(v78 + 17);
        if (v77 <= 2)
        {
          if (v77)
          {
            if (v77 == 1)
            {
              if (v81 != 1 || v74 != *&v79)
              {
                goto LABEL_405;
              }
            }

            else
            {
              if (v81 != 2)
              {
                goto LABEL_405;
              }

              if (*&v74 != v79 || v75 != v80)
              {
                v297 = v76;
                v204 = v72;
                v205 = v82;
                v206 = sub_2388D3368();
                v82 = v205;
                v72 = v204;
                v76 = v297;
                v70 = v304;
                v71 = v311;
                if ((v206 & 1) == 0)
                {
                  goto LABEL_405;
                }
              }
            }
          }

          else if (v81 || ((v79 ^ LODWORD(v74)) & 1) != 0)
          {
            goto LABEL_405;
          }

          goto LABEL_288;
        }

        if (v77 != 3)
        {
          if (v77 != 4)
          {
            if (v81 != 5 || (v80 | v79) != 0)
            {
              goto LABEL_405;
            }

LABEL_288:
            if (v76 != v82)
            {
              goto LABEL_405;
            }

            goto LABEL_289;
          }

          if (v81 != 4)
          {
            goto LABEL_405;
          }

          v295 = v82;
          v301 = v72;
          v84 = *&v74;
          v303 = v80;
          v85 = v79;
          v86 = v75;
          sub_238814698(v79, v80, 4);
          sub_238814698(v84, v86, 4);
          v87 = v84;
          v88 = v84;
          v89 = v85;
          if (sub_23881D7DC(v88, v85))
          {
            if (v86)
            {
              if (v303)
              {
                v90 = v87;
                v91 = *(v86 + 16);
                if (v91 == *(v303 + 16))
                {
                  if (v91)
                  {
                    if (v86 == v303)
                    {
                      v92 = v90;
                      v93 = v86;
                      v94 = v86;
                      goto LABEL_286;
                    }

                    v298 = v76;
                    v291 = v86;
                    v210 = (v86 + 40);
                    v211 = (v303 + 40);
                    do
                    {
                      v212 = *(v210 - 1) == *(v211 - 1) && *v210 == *v211;
                      if (!v212 && (sub_2388D3368() & 1) == 0)
                      {
                        sub_238810DC4(v89, v303, 4);
                        v239 = v90;
                        v240 = v291;
                        goto LABEL_373;
                      }

                      v210 += 2;
                      v211 += 2;
                      --v91;
                    }

                    while (v91);
                    sub_238810DC4(v90, v291, 4);
                    sub_238810DC4(v89, v303, 4);
                    v71 = v311;
                    v66 = v299;
                    v70 = v304;
                    v65 = v293;
                    v69 = v294;
                    v72 = v301;
                    v103 = v298;
LABEL_300:
                    if (v103 != v295)
                    {
                      goto LABEL_405;
                    }

LABEL_289:
                    if (++v72 != v70)
                    {
                      continue;
                    }

                    v223 = v71;
                    sub_238810DC4(v66, v302, 3);
                    v224 = v313;
                    v225 = v223;
                    v226 = 3;
LABEL_332:
                    sub_238810DC4(v224, v225, v226);
                    v29 = v318;
                    goto LABEL_319;
                  }

                  v92 = v90;
                  v93 = v86;
                  v94 = v303;
LABEL_286:
                  sub_238810DC4(v92, v93, 4);
                  v208 = v89;
                  v209 = v94;
LABEL_287:
                  sub_238810DC4(v208, v209, 4);
                  v71 = v311;
                  v66 = v299;
                  v70 = v304;
                  v65 = v293;
                  v69 = v294;
                  v72 = v301;
                  v82 = v295;
                  goto LABEL_288;
                }

                v241 = v86;
                sub_238810DC4(v89, v303, 4);
                v239 = v90;
              }

              else
              {
                v241 = v86;
                sub_238810DC4(v85, 0, 4);
                v239 = v87;
              }

              v240 = v241;
            }

            else
            {
              if (!v303)
              {
                sub_238810DC4(v87, 0, 4);
                v208 = v85;
                v209 = 0;
                goto LABEL_287;
              }

              sub_238810DC4(v85, v303, 4);
              v239 = v87;
              v240 = 0;
            }
          }

          else
          {
            sub_238810DC4(v85, v303, 4);
            v239 = v87;
            v240 = v86;
          }

LABEL_373:
          v244 = 4;
LABEL_404:
          sub_238810DC4(v239, v240, v244);
          v71 = v311;
          v66 = v299;
LABEL_405:
          sub_238810DC4(v313, v71, 3);
          v232 = v66;
          v233 = v302;
          v234 = 3;
LABEL_406:
          sub_238810DC4(v232, v233, v234);
          sub_238810DC4(v314, v306, 3);
          v230 = *(&v318 + 1);
          v231 = v318;
LABEL_407:
          v229 = 3;
          goto LABEL_408;
        }

        break;
      }

      if (v81 != 3)
      {
        goto LABEL_405;
      }

      v95 = *(*&v74 + 16);
      if (v95 != *(v79 + 16))
      {
        goto LABEL_405;
      }

      if (v95)
      {
        v96 = *&v74 == v79;
      }

      else
      {
        v96 = 1;
      }

      if (v96)
      {
        goto LABEL_288;
      }

      v295 = v82;
      v296 = v76;
      v97 = *&v74 + 32;
      v98 = v79 + 32;
      v99 = v74;
      v300 = v79;
      v100 = v75;
      v303 = v80;
      v292 = *(*&v74 + 16);
      sub_238814698(v79, v80, 3);
      v301 = *&v99;
      v291 = v100;
      v101 = v100;
      v102 = v97;
      v103 = v296;
      sub_238814698(*&v99, v101, 3);
      v104 = *&v98;
      v105 = v292;
      v106 = v303;
      v107 = 0;
      v286 = v102;
      v282 = v104;
      while (2)
      {
        if (v107 >= *(v301 + 16))
        {
          __break(1u);
LABEL_393:
          __break(1u);
LABEL_394:
          v253 = v102;
          v254 = 0;
LABEL_396:
          sub_238810DC4(v253, v254, 4);
          v255 = v260;
          v256 = *&v99;
LABEL_397:
          v257 = 4;
LABEL_398:
          sub_238810DC4(v255, v256, v257);
          v157 = v280;
          v155 = v281;
          v154 = v279;
LABEL_399:
          sub_238810DC4(v154, v157, 3);
          v246 = v155;
          v247 = v259;
          v258 = 3;
          goto LABEL_400;
        }

        if (v107 >= *(v300 + 16))
        {
          goto LABEL_393;
        }

        v108 = v102 + 24 * v107;
        v109 = *v108;
        v110 = *(v108 + 8);
        v111 = *(v108 + 17);
        v112 = *(v108 + 16);
        v113 = (*&v104 + 24 * v107);
        v114 = *v113;
        v115 = v113[1];
        v116 = *(v113 + 16);
        v117 = *(v113 + 17);
        if (v112 <= 2)
        {
          if (v112)
          {
            if (v112 == 1)
            {
              if (v116 != 1 || v109 != *&v114)
              {
                goto LABEL_403;
              }
            }

            else
            {
              if (v116 != 2)
              {
                goto LABEL_403;
              }

              if (*&v109 != v114 || v110 != v115)
              {
                v99 = v104;
                v290 = v111;
                v194 = v117;
                v195 = sub_2388D3368();
                v117 = v194;
                v102 = v286;
                v111 = v290;
                v104 = v99;
                v105 = v292;
                v106 = v303;
                if ((v195 & 1) == 0)
                {
                  goto LABEL_403;
                }
              }
            }
          }

          else if (v116 || ((v114 ^ LODWORD(v109)) & 1) != 0)
          {
            goto LABEL_403;
          }

          goto LABEL_268;
        }

        if (v112 != 3)
        {
          if (v112 != 4)
          {
            if (v116 != 5 || (v115 | v114) != 0)
            {
              goto LABEL_403;
            }

LABEL_268:
            if (v111 != v117)
            {
              goto LABEL_403;
            }

            if (++v107 == v105)
            {
              v202 = v106;
              sub_238810DC4(v301, v291, 3);
              sub_238810DC4(v300, v202, 3);
              v71 = v311;
              v66 = v299;
              v70 = v304;
              v65 = v293;
              v69 = v294;
              goto LABEL_300;
            }

            continue;
          }

          if (v116 != 4)
          {
            goto LABEL_403;
          }

          v283 = v117;
          v289 = v111;
          v284 = v107;
          v119 = *&v109;
          v287 = v115;
          v26 = v110;
          v99 = *&v114;
          sub_238814698(v114, v115, 4);
          sub_238814698(v119, v26, 4);
          v4 = v119;
          *&v288 = v99;
          if ((sub_23881D7DC(v119, *&v99) & 1) == 0)
          {
            goto LABEL_376;
          }

          if (*&v26 == 0.0)
          {
            if (*&v287 == 0.0)
            {
              sub_238810DC4(v119, 0, 4);
              sub_238810DC4(*&v99, 0, 4);
              v106 = v303;
              v105 = v292;
              v102 = v286;
              v104 = v282;
              v107 = v284;
              v103 = v296;
              goto LABEL_267;
            }

            sub_238810DC4(*&v99, v287, 4);
            v242 = v119;
            v243 = 0;
          }

          else
          {
            v120 = v26;
            v99 = *&v287;
            v121 = v119;
            if (*&v287 == 0.0)
            {
              v245 = v26;
              sub_238810DC4(v288, 0, 4);
              v242 = v119;
            }

            else
            {
              v122 = *(v26 + 16);
              v103 = v296;
              if (v122 == *(v287 + 16))
              {
                v102 = v286;
                v107 = v284;
                if (v122)
                {
                  if (v120 == v287)
                  {
                    v123 = v120;
                    v99 = *&v120;
                    goto LABEL_256;
                  }

                  v197 = v121;
                  v275 = v120;
                  v198 = v120 + 5;
                  *&v99 = v287 + 40;
                  do
                  {
                    if (*(v198 - 1) != *(*&v99 - 8) || *v198 != **&v99)
                    {
                      v200 = v122;
                      v201 = sub_2388D3368();
                      v122 = v200;
                      if ((v201 & 1) == 0)
                      {
                        sub_238810DC4(v288, v287, 4);
                        v242 = v197;
                        v243 = v275;
                        goto LABEL_381;
                      }
                    }

                    v198 += 2;
                    *&v99 += 16;
                    --v122;
                  }

                  while (v122);
                  sub_238810DC4(v197, v275, 4);
                  sub_238810DC4(v288, v287, 4);
                  v106 = v303;
                  v103 = v296;
LABEL_266:
                  v105 = v292;
                  v102 = v286;
                  v104 = v282;
                  v107 = v284;
                }

                else
                {
                  v123 = v120;
LABEL_256:
                  sub_238810DC4(v121, v123, 4);
                  sub_238810DC4(v288, *&v99, 4);
                  v106 = v303;
                  v105 = v292;
                  v104 = v282;
                }

LABEL_267:
                v111 = v289;
                v117 = v283;
                goto LABEL_268;
              }

              v245 = v26;
              sub_238810DC4(v288, v287, 4);
              v242 = v119;
            }

            v243 = v245;
          }

LABEL_381:
          v248 = 4;
LABEL_402:
          sub_238810DC4(v242, v243, v248);
          v106 = v303;
LABEL_403:
          sub_238810DC4(v300, v106, 3);
          v239 = v301;
          v240 = v291;
          v244 = 3;
          goto LABEL_404;
        }

        break;
      }

      if (v116 != 3)
      {
        goto LABEL_403;
      }

      v124 = *(*&v109 + 16);
      if (v124 != *(v114 + 16))
      {
        goto LABEL_403;
      }

      if (v124)
      {
        v125 = *&v109 == v114;
      }

      else
      {
        v125 = 1;
      }

      if (v125)
      {
        goto LABEL_268;
      }

      v283 = v117;
      v289 = v111;
      v284 = v107;
      v126 = *&v109 + 32;
      v127 = v114 + 32;
      v287 = v115;
      v288 = v114;
      v128 = *&v109;
      v129 = v110;
      v278 = *(*&v109 + 16);
      sub_238814698(v114, v115, 3);
      v285 = v128;
      v130 = v128;
      v103 = v296;
      v275 = v129;
      *&result = COERCE_DOUBLE(sub_238814698(v130, v129, 3));
      v131 = v127;
      v132 = v126;
      v133 = v278;
      v99 = *&v288;
      v134 = 0;
      v273 = v127;
      v274 = v132;
      while (2)
      {
        if (v134 >= *(v285 + 16))
        {
          __break(1u);
LABEL_413:
          __break(1u);
          __break(1u);
LABEL_414:
          __break(1u);
LABEL_415:
          __break(1u);
          return result;
        }

        if (v134 >= *(*&v99 + 16))
        {
          goto LABEL_413;
        }

        v135 = v132 + 24 * v134;
        v137 = *v135;
        v136 = *(v135 + 8);
        v138 = *(v135 + 17);
        v139 = *(v135 + 16);
        v140 = v131 + 24 * v134;
        v142 = *v140;
        v141 = *(v140 + 8);
        v143 = *(v140 + 16);
        v144 = *(v140 + 17);
        if (v139 <= 2)
        {
          if (v139)
          {
            if (v139 == 1)
            {
              if (v143 != 1 || *&v137 != *&v142)
              {
                goto LABEL_401;
              }
            }

            else
            {
              if (v143 != 2)
              {
                goto LABEL_401;
              }

              if (v137 != v142 || v136 != v141)
              {
                v186 = v134;
                v277 = v138;
                v187 = v144;
                *&result = COERCE_DOUBLE(sub_2388D3368());
                v144 = v187;
                v138 = v277;
                v134 = v186;
                v131 = v273;
                v132 = v274;
                v133 = v278;
                v99 = *&v288;
                if ((result & 1) == 0)
                {
                  goto LABEL_401;
                }
              }
            }
          }

          else if (v143 || ((v142 ^ v137) & 1) != 0)
          {
            goto LABEL_401;
          }

          goto LABEL_229;
        }

        if (v139 != 3)
        {
          if (v139 != 4)
          {
            if (v143 != 5 || (v141 | v142) != 0)
            {
              goto LABEL_401;
            }

LABEL_229:
            if (v138 != v144)
            {
              goto LABEL_401;
            }

            if (++v134 == v133)
            {
              sub_238810DC4(v285, v275, 3);
              sub_238810DC4(*&v99, v287, 3);
              v106 = v303;
              goto LABEL_266;
            }

            continue;
          }

          if (v143 != 4)
          {
            goto LABEL_401;
          }

          v271 = v144;
          v276 = v138;
          v272 = v134;
          v65 = v136;
          v280 = v141;
          sub_238814698(v142, v141, 4);
          sub_238814698(v137, v65, 4);
          v281 = v137;
          v279 = v142;
          if ((sub_23881D7DC(v137, v142) & 1) == 0)
          {
            goto LABEL_384;
          }

          if (v65)
          {
            if (v280)
            {
              v146 = *(v65 + 16);
              if (v146 == *(v280 + 16))
              {
                if (!v146)
                {
                  sub_238810DC4(v137, v65, 4);
                  v147 = v279;
                  v148 = v280;
                  goto LABEL_226;
                }

                if (v65 == v280)
                {
                  sub_238810DC4(v137, v65, 4);
                  v147 = v279;
                  v148 = v65;
LABEL_226:
                  v184 = 4;
LABEL_227:
                  *&result = COERCE_DOUBLE(sub_238810DC4(v147, v148, v184));
                }

                else
                {
                  v189 = v65;
                  v190 = (v65 + 40);
                  v191 = (v280 + 40);
                  do
                  {
                    v192 = *(v190 - 1) == *(v191 - 1) && *v190 == *v191;
                    if (!v192 && (sub_2388D3368() & 1) == 0)
                    {
                      sub_238810DC4(v279, v280, 4);
                      v246 = v281;
                      v247 = v189;
                      goto LABEL_391;
                    }

                    v190 += 2;
                    v191 += 2;
                    --v146;
                  }

                  while (v146);
                  sub_238810DC4(v281, v189, 4);
                  *&result = COERCE_DOUBLE(sub_238810DC4(v279, v280, 4));
                  v103 = v296;
                }

                v99 = *&v288;
                v133 = v278;
                v131 = v273;
                v132 = v274;
                v134 = v272;
                v138 = v276;
                v144 = v271;
                goto LABEL_229;
              }

              v249 = v137;
              v250 = v279;
              v251 = v65;
              v252 = v280;
            }

            else
            {
              v249 = v137;
              v250 = v142;
              v251 = v65;
              v252 = 0;
            }

            sub_238810DC4(v250, v252, 4);
            v246 = v249;
            v247 = v251;
          }

          else
          {
            if (!v280)
            {
              sub_238810DC4(v137, 0, 4);
              v147 = v142;
              v148 = 0;
              goto LABEL_226;
            }

            sub_238810DC4(v142, v280, 4);
            v246 = v137;
            v247 = 0;
          }

LABEL_391:
          v258 = 4;
LABEL_400:
          sub_238810DC4(v246, v247, v258);
          v99 = *&v288;
LABEL_401:
          sub_238810DC4(*&v99, v287, 3);
          v242 = v285;
          v243 = v275;
          v248 = 3;
          goto LABEL_402;
        }

        break;
      }

      if (v143 != 3)
      {
        goto LABEL_401;
      }

      v149 = *(v137 + 16);
      if (v149 != *(v142 + 16))
      {
        goto LABEL_401;
      }

      if (v149)
      {
        v150 = v137 == v142;
      }

      else
      {
        v150 = 1;
      }

      if (v150)
      {
        goto LABEL_229;
      }

      v271 = v144;
      v276 = v138;
      v272 = v134;
      v261 = *(v137 + 16);
      v151 = v136;
      v280 = v141;
      sub_238814698(v142, v141, 3);
      v152 = v137;
      v259 = v151;
      v153 = v151;
      v154 = v142;
      v155 = v137;
      v156 = v261;
      *&result = COERCE_DOUBLE(sub_238814698(v152, v153, 3));
      v157 = v280;
      v158 = 0;
      v159 = (v154 + 49);
      v160 = (v155 + 49);
      v281 = v155;
      v279 = v154;
      while (2)
      {
        if (v158 >= *(v155 + 16))
        {
          goto LABEL_414;
        }

        if (v158 >= *(v154 + 16))
        {
          goto LABEL_415;
        }

        result = *(v160 - 17);
        v161 = *v160;
        v162 = *(v160 - 1);
        v163 = *(v159 - 17);
        v164 = *(v159 - 9);
        v165 = *(v159 - 1);
        v166 = *v159;
        if (v162 <= 2)
        {
          if (*(v160 - 1))
          {
            if (v162 == 1)
            {
              if (v165 != 1)
              {
                goto LABEL_399;
              }

              v167 = *(v160 - 17);
              v168 = *(v159 - 17);
              if (*&result != *&v163)
              {
                goto LABEL_399;
              }
            }

            else
            {
              if (v165 != 2)
              {
                goto LABEL_399;
              }

              if (result != v163 || *(v160 - 9) != v164)
              {
                v178 = *(v160 - 9);
                v179 = v158;
                v270 = v159;
                v180 = v160;
                v181 = *v160;
                v268 = *v159;
                *&result = COERCE_DOUBLE(sub_2388D3368());
                v166 = v268;
                v161 = v181;
                v160 = v180;
                v156 = v261;
                v159 = v270;
                v154 = v279;
                v157 = v280;
                v158 = v179;
                v155 = v281;
                if ((result & 1) == 0)
                {
                  goto LABEL_399;
                }
              }
            }
          }

          else if (*(v159 - 1) || ((v163 ^ result) & 1) != 0)
          {
            goto LABEL_399;
          }

LABEL_208:
          if (v161 != v166)
          {
            goto LABEL_399;
          }

          ++v158;
          v159 += 24;
          v160 += 24;
          if (v156 == v158)
          {
            v182 = v155;
            v183 = v157;
            sub_238810DC4(v182, v259, 3);
            v147 = v154;
            v148 = v183;
            v184 = 3;
            goto LABEL_227;
          }

          continue;
        }

        break;
      }

      if (v162 == 3)
      {
        if (v165 != 3)
        {
          goto LABEL_399;
        }

        v267 = *v159;
        v264 = *v160;
        v262 = v158;
        v263 = v160;
        v269 = v159;
        v174 = *(v160 - 17);
        v175 = *(v159 - 17);
        v176 = *(v160 - 9);
        v266 = *(v159 - 9);
        sub_238814698(v163, v164, 3);
        sub_238814698(v174, v176, 3);
        if ((sub_2388919B8(v174, v175) & 1) == 0)
        {
          sub_238810DC4(v175, v266, 3);
          v255 = v174;
          v256 = v176;
          v257 = 3;
          goto LABEL_398;
        }

        sub_238810DC4(v174, v176, 3);
        v172 = v175;
        v173 = v266;
        v177 = 3;
      }

      else
      {
        if (v162 != 4)
        {
          if (v165 != 5 || v164 | v163)
          {
            goto LABEL_399;
          }

          goto LABEL_208;
        }

        if (v165 != 4)
        {
          goto LABEL_399;
        }

        v267 = *v159;
        v264 = *v160;
        v262 = v158;
        v263 = v160;
        v269 = v159;
        v169 = *(v160 - 17);
        v265 = *(v159 - 9);
        v170 = *(v159 - 17);
        v99 = *(v160 - 9);
        sub_238814698(v163, v164, 4);
        sub_238814698(v169, *&v99, 4);
        v260 = v169;
        v171 = v169;
        v102 = v170;
        if ((sub_23881D7DC(v171, v170) & 1) == 0)
        {
          v253 = v170;
          v254 = v265;
          goto LABEL_396;
        }

        if (v99 == 0.0)
        {
          if (v265)
          {
            sub_238810DC4(v170, v265, 4);
            v255 = v260;
            v256 = 0;
            goto LABEL_397;
          }

          sub_238810DC4(v260, 0, 4);
          v172 = v170;
          v173 = 0;
        }

        else
        {
          if (!v265)
          {
            goto LABEL_394;
          }

          if ((sub_238890BFC(*&v99, v265) & 1) == 0)
          {
            v253 = v170;
            v254 = v265;
            goto LABEL_396;
          }

          sub_238810DC4(v260, *&v99, 4);
          v172 = v170;
          v173 = v265;
        }

        v177 = 4;
      }

      *&result = COERCE_DOUBLE(sub_238810DC4(v172, v173, v177));
      v157 = v280;
      v155 = v281;
      v158 = v262;
      v160 = v263;
      v159 = v269;
      v154 = v279;
      v156 = v261;
      v161 = v264;
      v166 = v267;
      goto LABEL_208;
    }

LABEL_39:
    v36 = v2;
    v37 = v29;
    v38 = 3;
LABEL_336:
    sub_238810DC4(v36, v37, v38);
LABEL_337:
    *&result = 0.0;
    v9 = v317;
    if (v316 != v26)
    {
      return result;
    }
  }

  v27 = *v24;
  v2 = *(&v318 + 1);
  v4 = v318;
  if (!v25)
  {
    if (!v21)
    {
      *&result = 0.0;
      if (((LODWORD(v27) ^ DWORD2(v318)) & 1) == 0)
      {
        goto LABEL_32;
      }

      return result;
    }

LABEL_350:
    v230 = *(&v318 + 1);
    v231 = v318;
    goto LABEL_352;
  }

  if (v25 == 1)
  {
    if (v21 != 1)
    {
      goto LABEL_350;
    }

    *&result = 0.0;
    if (v27 != *(&v318 + 1))
    {
      return result;
    }

LABEL_32:
    v34 = v316 ^ v26;
LABEL_33:
    v9 = v317;
    if (v34)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (v21 != 2)
  {
    goto LABEL_350;
  }

  if (*&v27 == *(&v318 + 1) && v3 == v318)
  {
    v36 = *(&v318 + 1);
    v37 = v318;
    v38 = 2;
    goto LABEL_336;
  }

  v2 = sub_2388D3368();
  sub_238810DC4(*(&v318 + 1), v318, 2);
  *&result = 0.0;
  if (v2)
  {
    v34 = v316 ^ v26;
    goto LABEL_33;
  }

  return result;
}

uint64_t sub_23881EF9C(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    if (*(a1 + 16))
    {
      v4 = *a1;
      if (v3 == 1)
      {
        v5 = 0;
        v6 = 1;
      }

      else
      {
        v5 = v1;
        v6 = 2;
      }
    }

    else
    {
      v4 = *a1 & 1;
      v5 = 0;
      v6 = 0;
    }

    return sub_23882C97C(v4, v5, v6, 0, 0, 0, 0);
  }

  if (v3 == 3)
  {
    v10 = *(v2 + 16);
    v11 = MEMORY[0x277D84F90];
    if (v10)
    {
      v33 = *(a1 + 8);
      v43 = MEMORY[0x277D84F90];
      sub_2388B7B78(0, v10, 0);
      v11 = v43;
      v32 = v2;
      v12 = (v2 + 64);
      do
      {
        v13 = *(v12 - 4);
        v14 = *(v12 - 3);
        v15 = *(v12 - 15);
        v16 = *(v12 - 1);
        v17 = *v12;
        v18 = *(v12 - 16);
        v38[0] = v13;
        v38[1] = v14;
        v39 = v18;
        v40 = v15;
        v41 = v16;
        v42 = v17;
        sub_238814698(v13, v14, v18);

        GeneratedContent.kind.getter(v19, &v36);
        v34 = v36;
        v35 = v37;
        v20 = sub_23881EF9C(&v34);
        v22 = v21;
        v24 = v23;
        sub_238810DC4(v13, v14, v18);

        v43 = v11;
        v26 = *(v11 + 16);
        v25 = *(v11 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_2388B7B78((v25 > 1), v26 + 1, 1);
          v11 = v43;
        }

        v12 += 5;
        *(v11 + 16) = v26 + 1;
        v27 = v11 + 24 * v26;
        *(v27 + 32) = v20;
        *(v27 + 40) = v22;
        *(v27 + 48) = v24;
        *(v27 + 49) = HIBYTE(v24) & 1;
        --v10;
      }

      while (v10);
      v2 = v32;
      v1 = v33;
    }

    v29 = sub_23882D3D4(v11);
    sub_238814698(v29, v30, v31);
    sub_238810DC4(v2, v1, 3);
  }

  else
  {
    if (v3 != 4)
    {
      v4 = 0;
      v5 = 0;
      v6 = 5;
      return sub_23882C97C(v4, v5, v6, 0, 0, 0, 0);
    }

    v7 = *(a1 + 8);

    v8 = sub_23881634C(v2);
    if (*(v8 + 16))
    {
      sub_238810E44(&qword_27DF2FB80, &qword_2388D4990);
      v9 = sub_2388D3128();
    }

    else
    {
      v9 = MEMORY[0x277D84F98];
    }

    v38[0] = v9;
    sub_2388263C4(v8, 1, v38);

    v29 = sub_23882D408(v38[0]);
    sub_238810DC4(v2, v1, 4);
  }

  return v29;
}

uint64_t sub_23881F294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 a6, uint64_t a7)
{
  v13 = *(a7 + 24);
  v14 = *(a7 + 32);
  if (v14)
  {
    v16 = *(a7 + 24);
    v17 = *(a7 + 32);
    swift_bridgeObjectRetain_n();
    MEMORY[0x23EE66C20](46, 0xE100000000000000);
    MEMORY[0x23EE66C20](a2, a3);

    v13 = v16;
  }

  *(a1 + 24) = v13;
  *(a1 + 32) = v14;
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = a6;
  *(a1 + 17) = HIBYTE(a6) & 1;
  sub_238814698(a4, a5, a6);

  return a2;
}

uint64_t sub_23881F368()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_23881F398@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_23881F3B4(uint64_t a1)
{
  v2 = sub_238827BD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23881F3F0(uint64_t a1)
{
  v2 = sub_238827BD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23881F42C(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  v8 = sub_238810E44(&qword_27DF2FB20, &qword_2388D4928);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v13 = &v42 - v12;
  if (a4 <= 2u)
  {
    if (a4)
    {
      if (a4 == 1)
      {
        v14 = a1[4];
        sub_238815878(a1, a1[3]);
        sub_2388D3558();
        sub_238827C28(v51, v53);
        sub_2388D33E8();
      }

      else
      {
        v40 = a1[4];
        sub_238815878(a1, a1[3]);
        sub_2388D3558();
        sub_238827C28(v51, v53);
        sub_2388D33C8();
      }
    }

    else
    {
      v33 = a1[4];
      sub_238815878(a1, a1[3]);
      sub_2388D3558();
      sub_238827C28(v51, v53);
      sub_2388D33D8();
    }

    return sub_2388158BC(v51);
  }

  if (a4 == 3)
  {
    v34 = a1[4];
    sub_238815878(a1, a1[3]);
    sub_2388D3548();
    v35 = *(a2 + 16);
    if (v35)
    {
      for (i = (a2 + 48); ; i += 24)
      {
        v38 = *(i - 1);
        v39 = *i;
        v48 = *(i - 2);
        v37 = v48;
        v49 = v38;
        v50 = v39;
        sub_238827C28(v51, v53);
        sub_238814698(v37, v38, v39);
        sub_238826EC8();
        sub_2388D3348();
        if (v4)
        {
          break;
        }

        sub_238810DC4(v37, v38, v39);
        if (!--v35)
        {
          return sub_2388158BC(v51);
        }
      }

      sub_238810DC4(v37, v38, v39);
    }

    return sub_2388158BC(v51);
  }

  if (a4 != 4)
  {
    v41 = a1[4];
    sub_238815878(a1, a1[3]);
    sub_2388D3558();
    sub_238827C28(v51, v53);
    sub_2388D3408();
    return sub_2388158BC(v51);
  }

  v43 = v11;
  v46 = v10;
  v47 = v4;
  v15 = a1[4];
  sub_238815878(a1, a1[3]);
  sub_238827BD4();
  v45 = v13;
  sub_2388D3568();
  v16 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 64);
  v20 = (v17 + 63) >> 6;

  v22 = 0;
  v44 = a2;
  if (v19)
  {
    while (1)
    {
      v23 = v22;
LABEL_14:
      v24 = __clz(__rbit64(v19)) | (v23 << 6);
      v25 = (*(a2 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(a2 + 56) + 24 * v24;
      v30 = *(v28 + 8);
      v31 = *(v28 + 16);
      v51[0] = *v28;
      v29 = v51[0];
      v51[1] = v30;
      v52 = v31;
      v48 = v26;
      v49 = v27;

      sub_238814698(v29, v30, v31);
      sub_238826EC8();
      v32 = v47;
      sub_2388D32C8();
      v47 = v32;
      if (v32)
      {
        break;
      }

      v19 &= v19 - 1;

      result = sub_238810DC4(v29, v30, v31);
      v22 = v23;
      a2 = v44;
      if (!v19)
      {
        goto LABEL_11;
      }
    }

    (*(v43 + 8))(v45, v46);

    return sub_238810DC4(v29, v30, v31);
  }

  else
  {
LABEL_11:
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v20)
      {

        return (*(v43 + 8))(v45, v46);
      }

      v19 = *(v16 + 8 * v23);
      ++v22;
      if (v19)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23881F920@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_238827358(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_23881F970()
{
  v1 = sub_2388D2898();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 16);
  v6 = sub_2388D0DC8();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_2388D0DB8();
  sub_238826EC8();
  v9 = sub_2388D0DA8();
  v11 = v10;

  sub_2388D2888();
  v12 = sub_2388D2878();
  v14 = v13;
  sub_238826D50(v9, v11);
  if (v14)
  {
    return v12;
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_23881FB88(uint64_t result, uint64_t (*a2)(void))
{
  v3 = *(result + 16);
  v4 = *v2;
  v5 = *(*v2 + 16);
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result;
  v8 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v4 = result;
  if (!*(v7 + 16))
  {
LABEL_10:

    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v4 + 24) >> 1) - *(v4 + 16) < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v9 = *(v4 + 16);
  v10 = __OFADD__(v9, v3);
  v11 = v9 + v3;
  if (!v10)
  {
    *(v4 + 16) = v11;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_23881FCBC(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_23881FE00(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2388B7900(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23881FF1C(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_238810E44(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_23882003C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_238810E44(&qword_27DF2FB48, &qword_2388D4950);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2E8BA2E8BA2E8BA3) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

size_t sub_2388200D4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_238810E44(&qword_27DF2FB70, &unk_2388D5C30);
  v4 = *(type metadata accessor for Transcript.Entry(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2388201D0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_238810E44(&qword_27DF2FAA8, &unk_2388D44F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_238820254(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  sub_238810E44(&qword_27DF2FBB0, qword_2388D49C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 + 31;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 6);
  return result;
}

void sub_2388202D8(uint64_t a1, char a2, void *a3)
{
  v3 = a1;
  v30 = *(a1 + 16);
  if (!v30)
  {
LABEL_18:

    return;
  }

  v5 = 0;
  v6 = 32;
  while (1)
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_2388D3438();
      __break(1u);
      goto LABEL_24;
    }

    v7 = *(v3 + v6 + 16);
    v37[0] = *(v3 + v6);
    v37[1] = v7;
    v38 = *(v3 + v6 + 32);
    v8 = *(v3 + v6 + 48);
    v39 = v8;
    v9 = v37[0];
    v34 = v7;
    v10 = v38;
    v11 = BYTE1(v38);
    v33 = *(&v38 + 1);
    sub_238827E14(v37, v36, &qword_27DF2FB78, &unk_2388D4980);
    if (!*(&v9 + 1))
    {
      goto LABEL_18;
    }

    v31 = v10;
    v32 = v8;
    v37[0] = v9;
    v12 = *a3;
    v14 = sub_238820AA8(v9, *(&v9 + 1));
    v15 = v12[2];
    v16 = (v13 & 1) == 0;
    v17 = v15 + v16;
    if (__OFADD__(v15, v16))
    {
      goto LABEL_21;
    }

    v18 = v13;
    if (v12[3] < v17)
    {
      break;
    }

    if (a2)
    {
      if (v13)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_238820DA4();
      if (v18)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v22 = *a3;
    *(*a3 + 8 * (v14 >> 6) + 64) |= 1 << v14;
    *(v22[6] + 16 * v14) = v9;
    v23 = v22[7] + 40 * v14;
    *v23 = v34;
    *(v23 + 16) = v31;
    *(v23 + 17) = v11 & 1;
    *(v23 + 24) = v33;
    *(v23 + 32) = v32;
    v24 = v22[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_22;
    }

    ++v5;
    v22[2] = v26;
    v6 += 56;
    a2 = 1;
    v3 = a1;
    if (v30 == v5)
    {
      goto LABEL_18;
    }
  }

  sub_238821DB4(v17, a2 & 1);
  v19 = *a3;
  v20 = sub_238820AA8(v9, *(&v9 + 1));
  if ((v18 & 1) != (v21 & 1))
  {
    goto LABEL_23;
  }

  v14 = v20;
  if ((v18 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v27 = swift_allocError();
  swift_willThrow();
  v40 = v27;
  v28 = v27;
  sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_238810DC4(v34, *(&v34 + 1), v31);

    return;
  }

LABEL_24:
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  sub_2388D2FA8();
  MEMORY[0x23EE66C20](0xD00000000000001BLL, 0x80000002388DE460);
  sub_2388D30A8();
  MEMORY[0x23EE66C20](39, 0xE100000000000000);
  sub_2388D30B8();
  __break(1u);
}

void sub_238820630(void *a1, uint64_t a2, char a3, void *a4)
{
  v7 = a1[2];

  if (!v7 || !*(a2 + 16))
  {
    goto LABEL_25;
  }

  v8 = a1[4];
  v9 = a1[5];
  v57 = a2;
  v58 = a1;
  v11 = *(a2 + 32);
  v10 = *(a2 + 40);
  v12 = *(a2 + 48);
  v13 = *(a2 + 49);
  v14 = *a4;

  v59 = v10;
  v60 = v12;
  sub_238814698(v11, v10, v12);
  v16 = sub_238820AA8(v8, v9);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = v15;
  if (v14[3] >= v19)
  {
    if (a3)
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_238820C04();
      if ((v20 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    v24 = swift_allocError();
    swift_willThrow();
    v25 = v24;
    sub_238810E44(&qword_27DF2FA68, &qword_2388D4010);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_238810DC4(v11, v59, v60);

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      return;
    }

    goto LABEL_32;
  }

  sub_238821AC4(v19, a3 & 1);
  v21 = *a4;
  v22 = sub_238820AA8(v8, v9);
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_31:
    sub_2388D3438();
    __break(1u);
LABEL_32:
    sub_2388D2FA8();
    MEMORY[0x23EE66C20](0xD00000000000001BLL, 0x80000002388DE460);
    sub_2388D30A8();
    MEMORY[0x23EE66C20](39, 0xE100000000000000);
    sub_2388D30B8();
    __break(1u);
    return;
  }

  v16 = v22;
  if (v20)
  {
    goto LABEL_10;
  }

LABEL_13:
  v26 = *a4;
  *(*a4 + 8 * (v16 >> 6) + 64) |= 1 << v16;
  v27 = (v26[6] + 16 * v16);
  *v27 = v8;
  v27[1] = v9;
  v28 = v26[7] + 24 * v16;
  *v28 = v11;
  *(v28 + 8) = v59;
  *(v28 + 16) = v12;
  *(v28 + 17) = v13;
  v29 = v26[2];
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v26[2] = v31;
  v32 = v57;
  v33 = v58[2];
  if (v33 != 1)
  {
    v34 = v58 + 7;
    v35 = (v57 + 73);
    v36 = 1;
    while (v36 < v33)
    {
      v37 = *(v32 + 16);
      if (v36 == v37)
      {
        goto LABEL_25;
      }

      if (v36 >= v37)
      {
        goto LABEL_30;
      }

      v38 = *(v34 - 1);
      v39 = *v34;
      v11 = *(v35 - 17);
      v40 = *(v35 - 9);
      v41 = *(v35 - 1);
      v42 = *v35;
      v43 = *a4;

      v59 = v40;
      v60 = v41;
      sub_238814698(v11, v40, v41);
      v44 = sub_238820AA8(v38, v39);
      v46 = v43[2];
      v47 = (v45 & 1) == 0;
      v30 = __OFADD__(v46, v47);
      v48 = v46 + v47;
      if (v30)
      {
        goto LABEL_27;
      }

      v49 = v45;
      if (v43[3] < v48)
      {
        sub_238821AC4(v48, 1);
        v50 = *a4;
        v44 = sub_238820AA8(v38, v39);
        if ((v49 & 1) != (v51 & 1))
        {
          goto LABEL_31;
        }
      }

      if (v49)
      {
        goto LABEL_10;
      }

      v52 = *a4;
      *(*a4 + 8 * (v44 >> 6) + 64) |= 1 << v44;
      v53 = (v52[6] + 16 * v44);
      *v53 = v38;
      v53[1] = v39;
      v54 = v52[7] + 24 * v44;
      *v54 = v11;
      *(v54 + 8) = v59;
      *(v54 + 16) = v41;
      *(v54 + 17) = v42;
      v55 = v52[2];
      v30 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v30)
      {
        goto LABEL_28;
      }

      ++v36;
      v52[2] = v56;
      v32 = v57;
      v33 = v58[2];
      v34 += 2;
      v35 += 24;
      if (v36 == v33)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_29;
  }

LABEL_25:

  swift_bridgeObjectRelease_n();
}