uint64_t _s22AuthenticationServices22ASImportableCredentialO2eeoiySbAC_ACtFZ_0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  memcpy(__dst, v1, 0x2A1uLL);
  memcpy(__src, v3, 0x2A1uLL);
  memcpy(v107, v4, 0x2A1uLL);
  memcpy(v108, v3, sizeof(v108));
  memcpy(v109, v4, 0x2A1uLL);
  switch(sub_1B1D67108(v109))
  {
    case 1u:
      v5 = nullsub_1(v109);
      memcpy(v104, __src, 0x2A1uLL);
      if (sub_1B1D67108(v104) != 1)
      {
        goto LABEL_37;
      }

      goto LABEL_23;
    case 2u:
      v34 = nullsub_1(v109);
      memcpy(v104, __src, 0x2A1uLL);
      if (sub_1B1D67108(v104) != 2)
      {
        goto LABEL_37;
      }

      v35 = nullsub_1(v104);
      v36 = v34[5];
      v102[4] = v34[4];
      v102[5] = v36;
      v102[6] = v34[6];
      v37 = v34[1];
      v102[0] = *v34;
      v102[1] = v37;
      v38 = v34[3];
      v102[2] = v34[2];
      v102[3] = v38;
      v39 = v35[5];
      v101[4] = v35[4];
      v101[5] = v39;
      v101[6] = v35[6];
      v40 = v35[1];
      v101[0] = *v35;
      v101[1] = v40;
      v41 = v35[3];
      v101[2] = v35[2];
      v101[3] = v41;
      sub_1B1D65C20(__src, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__src, v103);
      v12 = _s22AuthenticationServices22ASImportableCredentialO05BasicA0V2eeoiySbAE_AEtFZ_0(v102, v101);
      goto LABEL_34;
    case 3u:
      v58 = nullsub_1(v109);
      memcpy(v104, __src, 0x2A1uLL);
      if (sub_1B1D67108(v104) != 3)
      {
        goto LABEL_37;
      }

      v59 = nullsub_1(v104);
      memcpy(v102, v58, 0x188uLL);
      memcpy(v101, v59, 0x188uLL);
      sub_1B1D65C20(__src, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__src, v103);
      v12 = _s22AuthenticationServices22ASImportableCredentialO10CreditCardV2eeoiySbAE_AEtFZ_0(v102, v101);
      goto LABEL_34;
    case 4u:
      v15 = nullsub_1(v109);
      v97 = *(v15 + 16);
      v99 = *v15;
      v16 = *(v15 + 32);
      memcpy(v104, __src, 0x2A1uLL);
      if (sub_1B1D67108(v104) != 4)
      {
        goto LABEL_37;
      }

      v17 = nullsub_1(v104);
      v18 = *(v17 + 32);
      v102[0] = v99;
      v102[1] = v97;
      *&v102[2] = v16;
      v19 = *(v17 + 16);
      v101[0] = *v17;
      v101[1] = v19;
      *&v101[2] = v18;
      sub_1B1D65C20(__src, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__src, v103);
      v12 = _s22AuthenticationServices22ASImportableCredentialO12CustomFieldsV2eeoiySbAE_AEtFZ_0(v102, v101);
      goto LABEL_34;
    case 5u:
      v20 = nullsub_1(v109);
      memcpy(v104, __src, 0x2A1uLL);
      if (sub_1B1D67108(v104) == 5)
      {
        goto LABEL_25;
      }

      goto LABEL_37;
    case 6u:
      v78 = nullsub_1(v109);
      v79 = *v78;
      v80 = v78[1];
      memcpy(v104, __src, 0x2A1uLL);
      if (sub_1B1D67108(v104) != 6)
      {
        goto LABEL_37;
      }

      v81 = nullsub_1(v104);
      if (v79 == *v81 && v80 == v81[1])
      {
        sub_1B1D65C20(__dst, v103);
        sub_1B1D65C20(__src, v103);
        sub_1B1CDEC18(v107, &qword_1EB775FA0, &qword_1B1D93640);
        v33 = 1;
        return v33 & 1;
      }

      v96 = sub_1B1D7C50C();
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__src, v103);
      sub_1B1CDEC18(v107, &qword_1EB775FA0, &qword_1B1D93640);
      if ((v96 & 1) == 0)
      {
        goto LABEL_38;
      }

      v33 = 1;
      break;
    case 7u:
      v60 = nullsub_1(v109);
      memcpy(v104, __src, 0x2A1uLL);
      if (sub_1B1D67108(v104) != 7)
      {
        goto LABEL_37;
      }

      v61 = nullsub_1(v104);
      memcpy(v102, v60, 0x268uLL);
      memcpy(v101, v61, 0x268uLL);
      sub_1B1D65C20(__src, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__src, v103);
      v12 = _s22AuthenticationServices22ASImportableCredentialO16IdentityDocumentV2eeoiySbAE_AEtFZ_0(v102, v101);
      goto LABEL_34;
    case 8u:
      v90 = nullsub_1(v109);
      v98 = v90[1];
      v100 = *v90;
      memcpy(v104, __src, 0x2A1uLL);
      if (sub_1B1D67108(v104) != 8)
      {
        goto LABEL_37;
      }

      v91 = nullsub_1(v104);
      v102[0] = v100;
      v102[1] = v98;
      v92 = v91[1];
      v101[0] = *v91;
      v101[1] = v92;
      sub_1B1D65C20(__src, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__src, v103);
      v33 = _s22AuthenticationServices22ASImportableLinkedItemV2eeoiySbAC_ACtFZ_0(v102, v101);
      sub_1B1CDEC18(v107, &qword_1EB775FA0, &qword_1B1D93640);
      v93 = v101[1];
      sub_1B1CDEFDC(*&v101[0], *(&v101[0] + 1));
      sub_1B1C91AE4(v93, *(&v93 + 1));
      v94 = v102[1];
      sub_1B1CDEFDC(*&v102[0], *(&v102[0] + 1));
      sub_1B1C91AE4(v94, *(&v94 + 1));
      return v33 & 1;
    case 9u:
      v21 = nullsub_1(v109);
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      v26 = *(v21 + 32);
      v27 = *(v21 + 40);
      v28 = *(v21 + 48);
      memcpy(v104, __src, 0x2A1uLL);
      if (sub_1B1D67108(v104) != 9)
      {
        goto LABEL_37;
      }

      v29 = nullsub_1(v104);
      v30 = *(v29 + 16);
      v31 = *(v29 + 24);
      v32 = *(v29 + 32);
      *&v102[0] = v22;
      *(&v102[0] + 1) = v23;
      LOBYTE(v102[1]) = v24;
      *(&v102[1] + 1) = v25;
      *&v102[2] = v26;
      *(&v102[2] + 1) = v27;
      *&v102[3] = v28;
      v101[0] = *v29;
      LOBYTE(v101[1]) = v30;
      *(&v101[1] + 1) = v31;
      *&v101[2] = v32;
      *(&v101[2] + 8) = *(v29 + 40);
      sub_1B1D65C20(__src, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__src, v103);
      v33 = _s22AuthenticationServices25ASImportableEditableFieldV2eeoiySbAC_ACtFZ_0(v102, v101);
      sub_1B1CDEC18(v107, &qword_1EB775FA0, &qword_1B1D93640);
      sub_1B1C91AE4(*&v101[0], *(&v101[0] + 1));

      sub_1B1C91AE4(*&v102[0], *(&v102[0] + 1));

      return v33 & 1;
    case 0xAu:
      v82 = nullsub_1(v109);
      memcpy(v104, __src, 0x2A1uLL);
      if (sub_1B1D67108(v104) != 10)
      {
        goto LABEL_37;
      }

      v83 = nullsub_1(v104);
      v84 = v82[3];
      v102[2] = v82[2];
      v102[3] = v84;
      v85 = v82[5];
      v102[4] = v82[4];
      v102[5] = v85;
      v86 = v82[1];
      v102[0] = *v82;
      v102[1] = v86;
      v87 = v83[3];
      v101[2] = v83[2];
      v101[3] = v87;
      v88 = v83[5];
      v101[4] = v83[4];
      v101[5] = v88;
      v89 = v83[1];
      v101[0] = *v83;
      v101[1] = v89;
      sub_1B1D65C20(__src, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__src, v103);
      v12 = _s22AuthenticationServices22ASImportableCredentialO7PasskeyV2eeoiySbAE_AEtFZ_0(v102, v101);
      goto LABEL_34;
    case 0xBu:
      v13 = nullsub_1(v109);
      memcpy(v104, __src, 0x2A1uLL);
      if (sub_1B1D67108(v104) != 11)
      {
        goto LABEL_37;
      }

      v14 = nullsub_1(v104);
      memcpy(v102, v13, sizeof(v102));
      memcpy(v101, v14, sizeof(v101));
      sub_1B1D65C20(__src, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__src, v103);
      v12 = _s22AuthenticationServices22ASImportableCredentialO8PassportV2eeoiySbAE_AEtFZ_0(v102, v101);
      goto LABEL_34;
    case 0xCu:
      v20 = nullsub_1(v109);
      memcpy(v104, __src, 0x2A1uLL);
      if (sub_1B1D67108(v104) != 12)
      {
        goto LABEL_37;
      }

LABEL_25:
      v63 = nullsub_1(v104);
      memcpy(v102, v20, 0x1F8uLL);
      memcpy(v101, v63, 0x1F8uLL);
      sub_1B1D65C20(__src, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__src, v103);
      v12 = sub_1B1D5A478(v102, v101);
      goto LABEL_34;
    case 0xDu:
      v64 = nullsub_1(v109);
      memcpy(v104, __src, 0x2A1uLL);
      if (sub_1B1D67108(v104) != 13)
      {
        goto LABEL_37;
      }

      v65 = nullsub_1(v104);
      v66 = *(v64 + 176);
      v102[10] = *(v64 + 160);
      v102[11] = v66;
      v102[12] = *(v64 + 192);
      *&v102[13] = *(v64 + 208);
      v67 = *(v64 + 112);
      v102[6] = *(v64 + 96);
      v102[7] = v67;
      v68 = *(v64 + 144);
      v102[8] = *(v64 + 128);
      v102[9] = v68;
      v69 = *(v64 + 48);
      v102[2] = *(v64 + 32);
      v102[3] = v69;
      v70 = *(v64 + 80);
      v102[4] = *(v64 + 64);
      v102[5] = v70;
      v71 = *(v64 + 16);
      v102[0] = *v64;
      v102[1] = v71;
      v72 = *(v65 + 176);
      v101[10] = *(v65 + 160);
      v101[11] = v72;
      v101[12] = *(v65 + 192);
      *&v101[13] = *(v65 + 208);
      v73 = *(v65 + 112);
      v101[6] = *(v65 + 96);
      v101[7] = v73;
      v74 = *(v65 + 144);
      v101[8] = *(v65 + 128);
      v101[9] = v74;
      v75 = *(v65 + 48);
      v101[2] = *(v65 + 32);
      v101[3] = v75;
      v76 = *(v65 + 80);
      v101[4] = *(v65 + 64);
      v101[5] = v76;
      v77 = *(v65 + 16);
      v101[0] = *v65;
      v101[1] = v77;
      sub_1B1D65C20(__src, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__src, v103);
      v12 = _s22AuthenticationServices22ASImportableCredentialO6SSHKeyV2eeoiySbAE_AEtFZ_0(v102, v101);
      goto LABEL_34;
    case 0xEu:
      v6 = nullsub_1(v109);
      memcpy(v104, __src, 0x2A1uLL);
      if (sub_1B1D67108(v104) != 14)
      {
        goto LABEL_37;
      }

      v7 = nullsub_1(v104);
      v8 = v6[1];
      v102[0] = *v6;
      v102[1] = v8;
      v9 = v6[3];
      v102[2] = v6[2];
      v102[3] = v9;
      v10 = v7[1];
      v101[0] = *v7;
      v101[1] = v10;
      v11 = v7[3];
      v101[2] = v7[2];
      v101[3] = v11;
      sub_1B1D65C20(__src, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__src, v103);
      v12 = _s22AuthenticationServices22ASImportableCredentialO4TOTPV2eeoiySbAE_AEtFZ_0(v102, v101);
      goto LABEL_34;
    case 0xFu:
      v42 = nullsub_1(v109);
      memcpy(v104, __src, 0x2A1uLL);
      if (sub_1B1D67108(v104) != 15)
      {
        goto LABEL_37;
      }

      v43 = nullsub_1(v104);
      v44 = v42[11];
      v102[10] = v42[10];
      v102[11] = v44;
      v45 = v42[13];
      v102[12] = v42[12];
      v102[13] = v45;
      v46 = v42[7];
      v102[6] = v42[6];
      v102[7] = v46;
      v47 = v42[9];
      v102[8] = v42[8];
      v102[9] = v47;
      v48 = v42[3];
      v102[2] = v42[2];
      v102[3] = v48;
      v49 = v42[5];
      v102[4] = v42[4];
      v102[5] = v49;
      v50 = v42[1];
      v102[0] = *v42;
      v102[1] = v50;
      v51 = v43[11];
      v101[10] = v43[10];
      v101[11] = v51;
      v52 = v43[13];
      v101[12] = v43[12];
      v101[13] = v52;
      v53 = v43[7];
      v101[6] = v43[6];
      v101[7] = v53;
      v54 = v43[9];
      v101[8] = v43[8];
      v101[9] = v54;
      v55 = v43[3];
      v101[2] = v43[2];
      v101[3] = v55;
      v56 = v43[5];
      v101[4] = v43[4];
      v101[5] = v56;
      v57 = v43[1];
      v101[0] = *v43;
      v101[1] = v57;
      sub_1B1D65C20(__src, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__dst, v103);
      sub_1B1D65C20(__src, v103);
      v12 = _s22AuthenticationServices22ASImportableCredentialO4WiFiV2eeoiySbAE_AEtFZ_0(v102, v101);
      goto LABEL_34;
    default:
      v5 = nullsub_1(v109);
      memcpy(v104, __src, 0x2A1uLL);
      if (sub_1B1D67108(v104))
      {
LABEL_37:
        sub_1B1D65C20(__dst, v104);
        sub_1B1D65C20(__src, v104);
        sub_1B1CDEC18(v107, &qword_1EB775FA0, &qword_1B1D93640);
LABEL_38:
        v33 = 0;
      }

      else
      {
LABEL_23:
        v62 = nullsub_1(v104);
        memcpy(v102, v5, 0x150uLL);
        memcpy(v101, v62, 0x150uLL);
        sub_1B1D65C20(__src, v103);
        sub_1B1D65C20(__dst, v103);
        sub_1B1D65C20(__dst, v103);
        sub_1B1D65C20(__src, v103);
        v12 = sub_1B1D5F8B0(v102, v101);
LABEL_34:
        v33 = v12;
        sub_1B1CDEC18(v107, &qword_1EB775FA0, &qword_1B1D93640);
        sub_1B1D65C58(__src);
        sub_1B1D65C58(__dst);
      }

      break;
  }

  return v33 & 1;
}

BOOL _s22AuthenticationServices27ASImportableCredentialScopeV12AndroidAppIDV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[7];
  v18 = a2[6];
  v19 = a1[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1B1D7C50C() & 1) == 0)
  {
    return 0;
  }

  if (!v5)
  {
    sub_1B1D65FF4(v2, v4, v3, 0);
    if (!v9)
    {
      sub_1B1D65FF4(v7, v8, v10, 0);
      v5 = 0;
      goto LABEL_18;
    }

    sub_1B1D65FF4(v7, v8, v10, v9);
    goto LABEL_13;
  }

  if (!v9)
  {
    sub_1B1D65FF4(v2, v4, v3, v5);
    sub_1B1D65FF4(v7, v8, v10, 0);
    sub_1B1D65FF4(v2, v4, v3, v5);
    sub_1B1CDEFDC(v2, v4);

LABEL_13:
    sub_1B1D66034(v2, v4, v3, v5);
    v12 = v7;
    v13 = v8;
    v14 = v10;
    v15 = v9;
LABEL_15:
    sub_1B1D66034(v12, v13, v14, v15);
    return 0;
  }

  sub_1B1D65FF4(v2, v4, v3, v5);
  sub_1B1D65FF4(v7, v8, v10, v9);
  sub_1B1D65FF4(v2, v4, v3, v5);
  if ((sub_1B1D583E4(v2, v4, v7, v8) & 1) == 0)
  {
    sub_1B1D66034(v7, v8, v10, v9);
    sub_1B1CDEFDC(v2, v4);

    v12 = v2;
    v13 = v4;
    v14 = v3;
    v15 = v5;
    goto LABEL_15;
  }

  if (v3 == v10 && v5 == v9)
  {
    sub_1B1D66034(v7, v8, v3, v5);
    sub_1B1CDEFDC(v2, v4);

LABEL_18:
    sub_1B1D66034(v2, v4, v3, v5);
    goto LABEL_19;
  }

  v17 = sub_1B1D7C50C();
  sub_1B1D66034(v7, v8, v10, v9);
  sub_1B1CDEFDC(v2, v4);

  sub_1B1D66034(v2, v4, v3, v5);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  if (v6)
  {
    return v11 && (v19 == v18 && v6 == v11 || (sub_1B1D7C50C() & 1) != 0);
  }

  return !v11;
}

uint64_t _s22AuthenticationServices24ASExportedCredentialDataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B1D7C50C() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B1D7C50C() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for ASExportedCredentialData(0);
  v7 = *(v6 + 28);
  if ((sub_1B1D7B50C() & 1) == 0)
  {
    return 0;
  }

  v8 = *(v6 + 32);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);

  return sub_1B1D305D4(v9, v10);
}

unint64_t sub_1B1D64034()
{
  result = qword_1EB775748;
  if (!qword_1EB775748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775748);
  }

  return result;
}

unint64_t sub_1B1D64088()
{
  result = qword_1EB775758;
  if (!qword_1EB775758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775750, &qword_1B1D88D80);
    sub_1B1D6410C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775758);
  }

  return result;
}

unint64_t sub_1B1D6410C()
{
  result = qword_1EB775760;
  if (!qword_1EB775760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775760);
  }

  return result;
}

unint64_t sub_1B1D64160()
{
  result = qword_1EB775768;
  if (!qword_1EB775768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775768);
  }

  return result;
}

uint64_t sub_1B1D641B4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B1D641FC()
{
  result = qword_1EB775788;
  if (!qword_1EB775788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775750, &qword_1B1D88D80);
    sub_1B1D64280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775788);
  }

  return result;
}

unint64_t sub_1B1D64280()
{
  result = qword_1EB775790;
  if (!qword_1EB775790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775790);
  }

  return result;
}

unint64_t sub_1B1D642D4()
{
  result = qword_1EB775798;
  if (!qword_1EB775798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775798);
  }

  return result;
}

unint64_t sub_1B1D64328()
{
  result = qword_1EB7757B0;
  if (!qword_1EB7757B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7757B0);
  }

  return result;
}

unint64_t sub_1B1D6437C()
{
  result = qword_1EB7757C8;
  if (!qword_1EB7757C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7757C0, &qword_1B1D88DA0);
    sub_1B1D641B4(&qword_1EB7757D0, type metadata accessor for ASImportableCollection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7757C8);
  }

  return result;
}

unint64_t sub_1B1D64450()
{
  result = qword_1EB7757E0;
  if (!qword_1EB7757E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7757D8, &qword_1B1D88DA8);
    sub_1B1D641B4(&qword_1EB7757E8, type metadata accessor for ASImportableItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7757E0);
  }

  return result;
}

unint64_t sub_1B1D64504()
{
  result = qword_1EB7757F8;
  if (!qword_1EB7757F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7757C0, &qword_1B1D88DA0);
    sub_1B1D641B4(&qword_1EB775800, type metadata accessor for ASImportableCollection);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7757F8);
  }

  return result;
}

unint64_t sub_1B1D645B8()
{
  result = qword_1EB775808;
  if (!qword_1EB775808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7757D8, &qword_1B1D88DA8);
    sub_1B1D641B4(&qword_1EB775810, type metadata accessor for ASImportableItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775808);
  }

  return result;
}

uint64_t _s22AuthenticationServices22ASImportableCollectionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1D7B53C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v51[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v51[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v51[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775FB8, &unk_1B1D93650);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v58 = &v51[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v51[-v20];
  if ((sub_1B1D583E4(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_16;
  }

  v54 = v13;
  v55 = v8;
  v56 = type metadata accessor for ASImportableCollection(0);
  v22 = *(v56 + 20);
  v23 = *(v16 + 48);
  sub_1B1D64DB8(a1 + v22, v21);
  sub_1B1D64DB8(a2 + v22, &v21[v23]);
  v57 = v5;
  v24 = *(v5 + 48);
  if (v24(v21, 1, v4) == 1)
  {
    if (v24(&v21[v23], 1, v4) == 1)
    {
      v53 = a2;
      sub_1B1CDEC18(v21, &qword_1EB775228, &qword_1B1D88D60);
      goto LABEL_9;
    }

LABEL_7:
    v25 = v21;
LABEL_15:
    sub_1B1CDEC18(v25, &qword_1EB775FB8, &unk_1B1D93650);
    goto LABEL_16;
  }

  sub_1B1D64DB8(v21, v15);
  if (v24(&v21[v23], 1, v4) == 1)
  {
    (*(v57 + 8))(v15, v4);
    goto LABEL_7;
  }

  v53 = a2;
  v26 = v57;
  v27 = v55;
  (*(v57 + 32))(v55, &v21[v23], v4);
  sub_1B1D641B4(&qword_1EB775FC0, MEMORY[0x1E6969530]);
  v52 = sub_1B1D7BE0C();
  v28 = *(v26 + 8);
  v28(v27, v4);
  v28(v15, v4);
  sub_1B1CDEC18(v21, &qword_1EB775228, &qword_1B1D88D60);
  if ((v52 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v29 = v56;
  v30 = *(v56 + 24);
  v31 = *(v16 + 48);
  v32 = v58;
  sub_1B1D64DB8(a1 + v30, v58);
  v33 = v53 + v30;
  v34 = v53;
  sub_1B1D64DB8(v33, &v32[v31]);
  if (v24(v32, 1, v4) != 1)
  {
    v35 = v54;
    sub_1B1D64DB8(v32, v54);
    if (v24(&v32[v31], 1, v4) != 1)
    {
      v38 = v57;
      v39 = v55;
      (*(v57 + 32))(v55, &v32[v31], v4);
      sub_1B1D641B4(&qword_1EB775FC0, MEMORY[0x1E6969530]);
      v40 = sub_1B1D7BE0C();
      v41 = *(v38 + 8);
      v41(v39, v4);
      v41(v35, v4);
      sub_1B1CDEC18(v32, &qword_1EB775228, &qword_1B1D88D60);
      if ((v40 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    (*(v57 + 8))(v35, v4);
    goto LABEL_14;
  }

  if (v24(&v32[v31], 1, v4) != 1)
  {
LABEL_14:
    v25 = v32;
    goto LABEL_15;
  }

  sub_1B1CDEC18(v32, &qword_1EB775228, &qword_1B1D88D60);
LABEL_19:
  v42 = v29[7];
  v43 = *(a1 + v42);
  v44 = *(a1 + v42 + 8);
  v45 = (v34 + v42);
  if ((v43 != *v45 || v44 != v45[1]) && (sub_1B1D7C50C() & 1) == 0)
  {
    goto LABEL_16;
  }

  v46 = v29[8];
  v47 = (a1 + v46);
  v48 = *(a1 + v46 + 8);
  v49 = (v34 + v46);
  v50 = v49[1];
  if (v48)
  {
    if (!v50 || (*v47 != *v49 || v48 != v50) && (sub_1B1D7C50C() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v50)
  {
    goto LABEL_16;
  }

  if (sub_1B1D32980(*(a1 + v29[9]), *(v34 + v29[9])))
  {
    v36 = sub_1B1D3340C(*(a1 + v29[10]), *(v34 + v29[10]));
    return v36 & 1;
  }

LABEL_16:
  v36 = 0;
  return v36 & 1;
}

uint64_t _s22AuthenticationServices19ASImportableAccountV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[7];
  v16 = a1[8];
  v14 = a1[9];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v17 = a2[6];
  v18 = a1[6];
  v15 = a2[8];
  v13 = a2[9];
  if ((sub_1B1D583E4(*a1, a1[1], *a2, a2[1]) & 1) == 0 || (v2 != v7 || v3 != v8) && (sub_1B1D7C50C() & 1) == 0 || (v4 != v9 || v5 != v10) && (sub_1B1D7C50C() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v18 != v17 || v6 != v11) && (sub_1B1D7C50C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if ((sub_1B1D3340C(v16, v15) & 1) == 0)
  {
    return 0;
  }

  return sub_1B1D335B4(v14, v13);
}

uint64_t sub_1B1D64DB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1D64E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B1D64E98()
{
  result = qword_1EB775820;
  if (!qword_1EB775820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775820);
  }

  return result;
}

unint64_t sub_1B1D64EEC()
{
  result = qword_1EB775830;
  if (!qword_1EB775830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775828, &qword_1B1D88DC0);
    sub_1B1D64F70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775830);
  }

  return result;
}

unint64_t sub_1B1D64F70()
{
  result = qword_1EB775838;
  if (!qword_1EB775838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775838);
  }

  return result;
}

unint64_t sub_1B1D64FC4()
{
  result = qword_1EB775848;
  if (!qword_1EB775848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775828, &qword_1B1D88DC0);
    sub_1B1D65048();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775848);
  }

  return result;
}

unint64_t sub_1B1D65048()
{
  result = qword_1EB775850;
  if (!qword_1EB775850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775850);
  }

  return result;
}

unint64_t sub_1B1D6509C()
{
  result = qword_1EB775860;
  if (!qword_1EB775860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775860);
  }

  return result;
}

uint64_t sub_1B1D650F0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1B1D65130()
{
  result = qword_1EB775878;
  if (!qword_1EB775878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775878);
  }

  return result;
}

unint64_t sub_1B1D65184()
{
  result = qword_1EB775880;
  if (!qword_1EB775880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775880);
  }

  return result;
}

unint64_t sub_1B1D651D8()
{
  result = qword_1EB775890;
  if (!qword_1EB775890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775888, &qword_1B1D88DE8);
    sub_1B1D6525C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775890);
  }

  return result;
}

unint64_t sub_1B1D6525C()
{
  result = qword_1EB775898;
  if (!qword_1EB775898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775898);
  }

  return result;
}

unint64_t sub_1B1D652B0()
{
  result = qword_1EB7758B0;
  if (!qword_1EB7758B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775228, &qword_1B1D88D60);
    sub_1B1D641B4(&qword_1EB775770, MEMORY[0x1E6969530]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7758B0);
  }

  return result;
}

unint64_t sub_1B1D65364()
{
  result = qword_1EB7758B8;
  if (!qword_1EB7758B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7758B8);
  }

  return result;
}

unint64_t sub_1B1D653B8()
{
  result = qword_1EB7758C0;
  if (!qword_1EB7758C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775888, &qword_1B1D88DE8);
    sub_1B1D6543C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7758C0);
  }

  return result;
}

unint64_t sub_1B1D6543C()
{
  result = qword_1EB7758C8;
  if (!qword_1EB7758C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7758C8);
  }

  return result;
}

uint64_t sub_1B1D65490(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB7753F0, &qword_1B1D88DF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t _s22AuthenticationServices16ASImportableItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1D7B53C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v62[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v62[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775FB8, &unk_1B1D93650);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v62[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v62[-v21];
  if ((sub_1B1D583E4(*a1, *(a1 + 8), *a2, *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_16;
  }

  v65 = v13;
  v66 = v8;
  v67 = type metadata accessor for ASImportableItem(0);
  v68 = a1;
  v23 = *(v67 + 20);
  v24 = *(v16 + 48);
  sub_1B1D64DB8(a1 + v23, v22);
  sub_1B1D64DB8(a2 + v23, &v22[v24]);
  v69 = v5;
  v25 = *(v5 + 48);
  if (v25(v22, 1, v4) == 1)
  {
    if (v25(&v22[v24], 1, v4) == 1)
    {
      v64 = a2;
      sub_1B1CDEC18(v22, &qword_1EB775228, &qword_1B1D88D60);
      goto LABEL_9;
    }

LABEL_7:
    v26 = v22;
LABEL_15:
    sub_1B1CDEC18(v26, &qword_1EB775FB8, &unk_1B1D93650);
    goto LABEL_16;
  }

  sub_1B1D64DB8(v22, v15);
  if (v25(&v22[v24], 1, v4) == 1)
  {
    (*(v69 + 8))(v15, v4);
    goto LABEL_7;
  }

  v64 = a2;
  v27 = v69;
  v28 = v66;
  (*(v69 + 32))(v66, &v22[v24], v4);
  sub_1B1D641B4(&qword_1EB775FC0, MEMORY[0x1E6969530]);
  v63 = sub_1B1D7BE0C();
  v29 = *(v27 + 8);
  v29(v28, v4);
  v29(v15, v4);
  sub_1B1CDEC18(v22, &qword_1EB775228, &qword_1B1D88D60);
  if ((v63 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v30 = v67;
  v31 = *(v67 + 24);
  v32 = *(v16 + 48);
  sub_1B1D64DB8(v68 + v31, v20);
  v33 = v64 + v31;
  v34 = v64;
  sub_1B1D64DB8(v33, &v20[v32]);
  if (v25(v20, 1, v4) == 1)
  {
    if (v25(&v20[v32], 1, v4) == 1)
    {
      sub_1B1CDEC18(v20, &qword_1EB775228, &qword_1B1D88D60);
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  v35 = v65;
  sub_1B1D64DB8(v20, v65);
  if (v25(&v20[v32], 1, v4) == 1)
  {
    (*(v69 + 8))(v35, v4);
LABEL_14:
    v26 = v20;
    goto LABEL_15;
  }

  v38 = v69;
  v39 = v66;
  (*(v69 + 32))(v66, &v20[v32], v4);
  sub_1B1D641B4(&qword_1EB775FC0, MEMORY[0x1E6969530]);
  v40 = sub_1B1D7BE0C();
  v41 = *(v38 + 8);
  v41(v39, v4);
  v41(v35, v4);
  sub_1B1CDEC18(v20, &qword_1EB775228, &qword_1B1D88D60);
  if ((v40 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_19:
  v42 = v30[7];
  v43 = v68;
  v44 = *(v68 + v42);
  v45 = *(v68 + v42 + 8);
  v46 = (v34 + v42);
  if ((v44 != *v46 || v45 != v46[1]) && (sub_1B1D7C50C() & 1) == 0)
  {
    goto LABEL_16;
  }

  v47 = v30[8];
  v48 = (v43 + v47);
  v49 = *(v43 + v47 + 8);
  v50 = (v34 + v47);
  v51 = v50[1];
  if (v49)
  {
    if (!v51 || (*v48 != *v50 || v49 != v51) && (sub_1B1D7C50C() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v51)
  {
    goto LABEL_16;
  }

  if (*(v43 + v30[9]) != *(v34 + v30[9]))
  {
    goto LABEL_16;
  }

  v52 = v30[10];
  v54 = *(v43 + v52);
  v53 = *(v43 + v52 + 8);
  v55 = v34;
  v56 = (v34 + v52);
  v58 = *v56;
  v57 = v56[1];
  if (v54)
  {
    if (v58)
    {
      sub_1B1D650F0(v54);
      sub_1B1D650F0(v58);
      sub_1B1D650F0(v54);
      if (sub_1B1D302A4(v54, v58))
      {
        v59 = sub_1B1D304B8(v53, v57);
        sub_1B1D0C93C(v58);

        sub_1B1D0C93C(v54);
        if ((v59 & 1) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_42;
      }

      sub_1B1D0C93C(v58);

      v60 = v54;
LABEL_40:
      sub_1B1D0C93C(v60);
      goto LABEL_16;
    }

    sub_1B1D650F0(v54);
    sub_1B1D650F0(0);
    sub_1B1D650F0(v54);

LABEL_38:
    sub_1B1D0C93C(v54);
    v60 = v58;
    goto LABEL_40;
  }

  sub_1B1D650F0(0);
  if (v58)
  {
    sub_1B1D650F0(v58);
    goto LABEL_38;
  }

  sub_1B1D650F0(0);
  sub_1B1D0C93C(0);
LABEL_42:
  v61 = v68;
  if (sub_1B1D3375C(*(v68 + v30[11]), *(v55 + v30[11])))
  {
    v36 = sub_1B1D337EC(*(v61 + v30[12]), *(v55 + v30[12]));
    return v36 & 1;
  }

LABEL_16:
  v36 = 0;
  return v36 & 1;
}

unint64_t sub_1B1D65C88()
{
  result = qword_1EB7758E0;
  if (!qword_1EB7758E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7758E0);
  }

  return result;
}

unint64_t sub_1B1D65CDC()
{
  result = qword_1EB7758F0;
  if (!qword_1EB7758F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7758E8, &qword_1B1D88E08);
    sub_1B1D641B4(&qword_1EB7758F8, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7758F0);
  }

  return result;
}

unint64_t sub_1B1D65D90()
{
  result = qword_1EB775908;
  if (!qword_1EB775908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775900, &qword_1B1D88E10);
    sub_1B1D65E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775908);
  }

  return result;
}

unint64_t sub_1B1D65E14()
{
  result = qword_1EB775910;
  if (!qword_1EB775910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775910);
  }

  return result;
}

unint64_t sub_1B1D65E68()
{
  result = qword_1EB775920;
  if (!qword_1EB775920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB7758E8, &qword_1B1D88E08);
    sub_1B1D641B4(&qword_1EB775928, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775920);
  }

  return result;
}

unint64_t sub_1B1D65F1C()
{
  result = qword_1EB775930;
  if (!qword_1EB775930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775900, &qword_1B1D88E10);
    sub_1B1D65FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775930);
  }

  return result;
}

unint64_t sub_1B1D65FA0()
{
  result = qword_1EB775938;
  if (!qword_1EB775938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775938);
  }

  return result;
}

uint64_t sub_1B1D65FF4(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1B1CE111C(result, a2);
  }

  return result;
}

uint64_t sub_1B1D66034(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_1B1CDEFDC(result, a2);
  }

  return result;
}

unint64_t sub_1B1D66074()
{
  result = qword_1EB775950;
  if (!qword_1EB775950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775950);
  }

  return result;
}

unint64_t sub_1B1D660C8()
{
  result = qword_1EB775958;
  if (!qword_1EB775958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775958);
  }

  return result;
}

unint64_t sub_1B1D6611C()
{
  result = qword_1EB775968;
  if (!qword_1EB775968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775968);
  }

  return result;
}

unint64_t sub_1B1D661D8()
{
  result = qword_1EB775978;
  if (!qword_1EB775978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775978);
  }

  return result;
}

unint64_t sub_1B1D6622C()
{
  result = qword_1EB775990;
  if (!qword_1EB775990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775990);
  }

  return result;
}

unint64_t sub_1B1D66280()
{
  result = qword_1EB775998;
  if (!qword_1EB775998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775998);
  }

  return result;
}

unint64_t sub_1B1D662D4()
{
  result = qword_1EB7759A8;
  if (!qword_1EB7759A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7759A8);
  }

  return result;
}

uint64_t sub_1B1D66328(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_1B1C91B94(result, a2);
  }

  return result;
}

unint64_t sub_1B1D66374()
{
  result = qword_1EB7759B8;
  if (!qword_1EB7759B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7759B8);
  }

  return result;
}

unint64_t sub_1B1D663C8()
{
  result = qword_1EB7759C0;
  if (!qword_1EB7759C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7759C0);
  }

  return result;
}

unint64_t sub_1B1D6644C()
{
  result = qword_1EB7759D0;
  if (!qword_1EB7759D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7759D0);
  }

  return result;
}

unint64_t sub_1B1D664D8()
{
  result = qword_1EB7759E0;
  if (!qword_1EB7759E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7759E0);
  }

  return result;
}

unint64_t sub_1B1D66594()
{
  result = qword_1EB7759F8;
  if (!qword_1EB7759F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7759F8);
  }

  return result;
}

unint64_t sub_1B1D66650()
{
  result = qword_1EB775A10;
  if (!qword_1EB775A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775A10);
  }

  return result;
}

unint64_t sub_1B1D6670C()
{
  result = qword_1EB775A28;
  if (!qword_1EB775A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775A28);
  }

  return result;
}

unint64_t sub_1B1D66760()
{
  result = qword_1EB775A38;
  if (!qword_1EB775A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775A30, &qword_1B1D88E98);
    sub_1B1D6644C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775A38);
  }

  return result;
}

unint64_t sub_1B1D667E4()
{
  result = qword_1EB775A48;
  if (!qword_1EB775A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775A30, &qword_1B1D88E98);
    sub_1B1D663C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775A48);
  }

  return result;
}

unint64_t sub_1B1D66868()
{
  result = qword_1EB775A58;
  if (!qword_1EB775A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775A58);
  }

  return result;
}

unint64_t sub_1B1D66924()
{
  result = qword_1EB775A70;
  if (!qword_1EB775A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775A70);
  }

  return result;
}

unint64_t sub_1B1D66978()
{
  result = qword_1EB775A88;
  if (!qword_1EB775A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775A88);
  }

  return result;
}

unint64_t sub_1B1D66A34()
{
  result = qword_1EB775AA0;
  if (!qword_1EB775AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775AA0);
  }

  return result;
}

unint64_t sub_1B1D66A88()
{
  result = qword_1EB775AB8;
  if (!qword_1EB775AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775AB8);
  }

  return result;
}

unint64_t sub_1B1D66ADC()
{
  result = qword_1EB775AD0;
  if (!qword_1EB775AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775AD0);
  }

  return result;
}

unint64_t sub_1B1D66B30()
{
  result = qword_1EB775AE8;
  if (!qword_1EB775AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775AE8);
  }

  return result;
}

unint64_t sub_1B1D66BEC()
{
  result = qword_1EB775B00;
  if (!qword_1EB775B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775B00);
  }

  return result;
}

unint64_t sub_1B1D66CA8()
{
  result = qword_1EB775B18;
  if (!qword_1EB775B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775B18);
  }

  return result;
}

unint64_t sub_1B1D66D64()
{
  result = qword_1EB775B30;
  if (!qword_1EB775B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775B30);
  }

  return result;
}

unint64_t sub_1B1D66DB8()
{
  result = qword_1EB775B38;
  if (!qword_1EB775B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775B38);
  }

  return result;
}

unint64_t sub_1B1D66E0C()
{
  result = qword_1EB775B48;
  if (!qword_1EB775B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775B48);
  }

  return result;
}

unint64_t sub_1B1D66E60()
{
  result = qword_1EB775B58;
  if (!qword_1EB775B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775B58);
  }

  return result;
}

unint64_t sub_1B1D66F1C()
{
  result = qword_1EB775B70;
  if (!qword_1EB775B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775B70);
  }

  return result;
}

unint64_t sub_1B1D66F70()
{
  result = qword_1EB775B78;
  if (!qword_1EB775B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775B78);
  }

  return result;
}

uint64_t sub_1B1D66FC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1B1D670B4()
{
  result = qword_1EB775B88;
  if (!qword_1EB775B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775B88);
  }

  return result;
}

unint64_t sub_1B1D67114()
{
  result = qword_1EB775B90;
  if (!qword_1EB775B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775B98, &qword_1B1D88FA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775B90);
  }

  return result;
}

unint64_t sub_1B1D67178()
{
  result = qword_1EB775BA0;
  if (!qword_1EB775BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775BA0);
  }

  return result;
}

unint64_t sub_1B1D67218()
{
  result = qword_1EB775BB0;
  if (!qword_1EB775BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775BB0);
  }

  return result;
}

unint64_t sub_1B1D672B8()
{
  result = qword_1EB775BC0;
  if (!qword_1EB775BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775BC0);
  }

  return result;
}

unint64_t sub_1B1D67358()
{
  result = qword_1EB775BD0;
  if (!qword_1EB775BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775BD0);
  }

  return result;
}

unint64_t sub_1B1D673B0()
{
  result = qword_1EB775BD8;
  if (!qword_1EB775BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775BD8);
  }

  return result;
}

unint64_t sub_1B1D67408()
{
  result = qword_1EB775BE0;
  if (!qword_1EB775BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775BE0);
  }

  return result;
}

unint64_t sub_1B1D67460()
{
  result = qword_1EB775BE8;
  if (!qword_1EB775BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775BE8);
  }

  return result;
}

unint64_t sub_1B1D674B8()
{
  result = qword_1EB775BF0;
  if (!qword_1EB775BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775BF0);
  }

  return result;
}

unint64_t sub_1B1D67510()
{
  result = qword_1EB775BF8;
  if (!qword_1EB775BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775BF8);
  }

  return result;
}

unint64_t sub_1B1D67568()
{
  result = qword_1EB775C00;
  if (!qword_1EB775C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C00);
  }

  return result;
}

unint64_t sub_1B1D675C0()
{
  result = qword_1EB775C08;
  if (!qword_1EB775C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C08);
  }

  return result;
}

unint64_t sub_1B1D67618()
{
  result = qword_1EB775C10;
  if (!qword_1EB775C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C10);
  }

  return result;
}

unint64_t sub_1B1D67670()
{
  result = qword_1EB775C18;
  if (!qword_1EB775C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C18);
  }

  return result;
}

unint64_t sub_1B1D676C8()
{
  result = qword_1EB775C20;
  if (!qword_1EB775C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C20);
  }

  return result;
}

unint64_t sub_1B1D67720()
{
  result = qword_1EB775C28;
  if (!qword_1EB775C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C28);
  }

  return result;
}

unint64_t sub_1B1D67778()
{
  result = qword_1EB775C30;
  if (!qword_1EB775C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C30);
  }

  return result;
}

unint64_t sub_1B1D677D0()
{
  result = qword_1EB775C38;
  if (!qword_1EB775C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C38);
  }

  return result;
}

unint64_t sub_1B1D67828()
{
  result = qword_1EB775C40;
  if (!qword_1EB775C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C40);
  }

  return result;
}

unint64_t sub_1B1D67880()
{
  result = qword_1EB775C48;
  if (!qword_1EB775C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C48);
  }

  return result;
}

unint64_t sub_1B1D678D8()
{
  result = qword_1EB775C50;
  if (!qword_1EB775C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C50);
  }

  return result;
}

unint64_t sub_1B1D67930()
{
  result = qword_1EB775C58;
  if (!qword_1EB775C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C58);
  }

  return result;
}

unint64_t sub_1B1D67988()
{
  result = qword_1EB775C60;
  if (!qword_1EB775C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C60);
  }

  return result;
}

unint64_t sub_1B1D679E0()
{
  result = qword_1EB775C68;
  if (!qword_1EB775C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C68);
  }

  return result;
}

unint64_t sub_1B1D67A38()
{
  result = qword_1EB775C70;
  if (!qword_1EB775C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C70);
  }

  return result;
}

unint64_t sub_1B1D67A90()
{
  result = qword_1EB775C78;
  if (!qword_1EB775C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C78);
  }

  return result;
}

unint64_t sub_1B1D67AE8()
{
  result = qword_1EB775C80;
  if (!qword_1EB775C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775C80);
  }

  return result;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1B1D67B68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1D67BB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B1D67C3C()
{
  sub_1B1D67DB0(319, &qword_1EB775CB0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B1C9030C(319, &qword_1EB775CB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B1C9030C(319, &qword_1EB775CC0, &type metadata for ASImportableLinkedItem, MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        sub_1B1D67DB0(319, &qword_1EB775CC8, type metadata accessor for ASImportableCollection, MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B1D67DB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_88Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_89Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775228, &qword_1B1D88D60);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1B1D67FE8()
{
  sub_1B1D67DB0(319, &qword_1EB775CB0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1B1C9030C(319, &qword_1EB775CB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B1C9030C(319, &qword_1EB775CE0, &type metadata for ASImportableCredentialScope, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B1C9030C(319, &qword_1EB775CE8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1B1C9030C(319, &qword_1EB775CF0, &type metadata for ASImportableCredential, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1B1D68194(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1D681DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22AuthenticationServices27ASImportableCredentialScopeV34AndroidAppCertificationFingerprintVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B1D68254(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1D6829C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B1D682FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1D68344(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ASImportableEditableField.FieldType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASImportableEditableField.FieldType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22AuthenticationServices25ASImportableEditableFieldVSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B1D6853C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF1 && *(a1 + 673))
  {
    return (*a1 + 241);
  }

  v3 = *(a1 + 672);
  if (v3 <= 0xF)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B1D68584(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF0)
  {
    *(result + 664) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 648) = 0u;
    *(result + 672) = 0;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 241;
    if (a3 >= 0xF1)
    {
      *(result + 673) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF1)
    {
      *(result + 673) = 0;
    }

    if (a2)
    {
      *(result + 672) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B1D686AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 336))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B1D68708(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 336) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 336) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1B1D687E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B1D68844(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1B1D688CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 392))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B1D68928(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 392) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 392) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1B1D689F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1D68A38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B1D68AC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 616))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B1D68B1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 584) = 0u;
    *(result + 600) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 616) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 616) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1B1D68C20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1D68C68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B1D68CD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1D68D1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B1D68D8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 672))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B1D68DE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 664) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 672) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 672) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_1B1D68EFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 504))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B1D68F58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 504) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 504) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy216_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1B1D69080(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 216))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1D690C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B1D6914C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B1D691A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_1B1D69268(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 224))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B1D692C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASImportableCredential.CredentialType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASImportableCredential.CredentialType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASImportableCredential.Passport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASImportableCredential.Passport.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ASImportableCredential.IdentityDocument.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ASImportableCredential.IdentityDocument.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B1D69830(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B1D698C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B1D69980(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B1D69A10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B1D69B00(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B1D69B90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B1D69C70(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B1D69D00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B1D69DE4()
{
  result = qword_1EB775CF8;
  if (!qword_1EB775CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775CF8);
  }

  return result;
}

unint64_t sub_1B1D69E3C()
{
  result = qword_1EB775D00;
  if (!qword_1EB775D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D00);
  }

  return result;
}

unint64_t sub_1B1D69E94()
{
  result = qword_1EB775D08;
  if (!qword_1EB775D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D08);
  }

  return result;
}

unint64_t sub_1B1D69EEC()
{
  result = qword_1EB775D10;
  if (!qword_1EB775D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D10);
  }

  return result;
}

unint64_t sub_1B1D69F44()
{
  result = qword_1EB775D18;
  if (!qword_1EB775D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D18);
  }

  return result;
}

unint64_t sub_1B1D69F9C()
{
  result = qword_1EB775D20;
  if (!qword_1EB775D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D20);
  }

  return result;
}

unint64_t sub_1B1D69FF4()
{
  result = qword_1EB775D28;
  if (!qword_1EB775D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D28);
  }

  return result;
}

unint64_t sub_1B1D6A04C()
{
  result = qword_1EB775D30;
  if (!qword_1EB775D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D30);
  }

  return result;
}

unint64_t sub_1B1D6A0A4()
{
  result = qword_1EB775D38;
  if (!qword_1EB775D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D38);
  }

  return result;
}

unint64_t sub_1B1D6A0FC()
{
  result = qword_1EB775D40;
  if (!qword_1EB775D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D40);
  }

  return result;
}

unint64_t sub_1B1D6A154()
{
  result = qword_1EB775D48;
  if (!qword_1EB775D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D48);
  }

  return result;
}

unint64_t sub_1B1D6A1AC()
{
  result = qword_1EB775D50;
  if (!qword_1EB775D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D50);
  }

  return result;
}

unint64_t sub_1B1D6A204()
{
  result = qword_1EB775D58;
  if (!qword_1EB775D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D58);
  }

  return result;
}

unint64_t sub_1B1D6A25C()
{
  result = qword_1EB775D60;
  if (!qword_1EB775D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D60);
  }

  return result;
}

unint64_t sub_1B1D6A2B4()
{
  result = qword_1EB775D68;
  if (!qword_1EB775D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D68);
  }

  return result;
}

unint64_t sub_1B1D6A30C()
{
  result = qword_1EB775D70;
  if (!qword_1EB775D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D70);
  }

  return result;
}

unint64_t sub_1B1D6A364()
{
  result = qword_1EB775D78;
  if (!qword_1EB775D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D78);
  }

  return result;
}

unint64_t sub_1B1D6A3BC()
{
  result = qword_1EB775D80;
  if (!qword_1EB775D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D80);
  }

  return result;
}

unint64_t sub_1B1D6A414()
{
  result = qword_1EB775D88;
  if (!qword_1EB775D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D88);
  }

  return result;
}

unint64_t sub_1B1D6A46C()
{
  result = qword_1EB775D90;
  if (!qword_1EB775D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D90);
  }

  return result;
}

unint64_t sub_1B1D6A4C4()
{
  result = qword_1EB775D98;
  if (!qword_1EB775D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775D98);
  }

  return result;
}

unint64_t sub_1B1D6A51C()
{
  result = qword_1EB775DA0;
  if (!qword_1EB775DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DA0);
  }

  return result;
}

unint64_t sub_1B1D6A574()
{
  result = qword_1EB775DA8;
  if (!qword_1EB775DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DA8);
  }

  return result;
}

unint64_t sub_1B1D6A5CC()
{
  result = qword_1EB775DB0;
  if (!qword_1EB775DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DB0);
  }

  return result;
}

unint64_t sub_1B1D6A624()
{
  result = qword_1EB775DB8;
  if (!qword_1EB775DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DB8);
  }

  return result;
}

unint64_t sub_1B1D6A67C()
{
  result = qword_1EB775DC0;
  if (!qword_1EB775DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DC0);
  }

  return result;
}

unint64_t sub_1B1D6A6D4()
{
  result = qword_1EB775DC8;
  if (!qword_1EB775DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DC8);
  }

  return result;
}

unint64_t sub_1B1D6A72C()
{
  result = qword_1EB775DD0;
  if (!qword_1EB775DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DD0);
  }

  return result;
}

unint64_t sub_1B1D6A784()
{
  result = qword_1EB775DD8;
  if (!qword_1EB775DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DD8);
  }

  return result;
}

unint64_t sub_1B1D6A7DC()
{
  result = qword_1EB775DE0;
  if (!qword_1EB775DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DE0);
  }

  return result;
}

unint64_t sub_1B1D6A834()
{
  result = qword_1EB775DE8;
  if (!qword_1EB775DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DE8);
  }

  return result;
}

unint64_t sub_1B1D6A88C()
{
  result = qword_1EB775DF0;
  if (!qword_1EB775DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DF0);
  }

  return result;
}

unint64_t sub_1B1D6A8E4()
{
  result = qword_1EB775DF8;
  if (!qword_1EB775DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775DF8);
  }

  return result;
}

unint64_t sub_1B1D6A93C()
{
  result = qword_1EB775E00;
  if (!qword_1EB775E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E00);
  }

  return result;
}

unint64_t sub_1B1D6A994()
{
  result = qword_1EB775E08;
  if (!qword_1EB775E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E08);
  }

  return result;
}

unint64_t sub_1B1D6A9EC()
{
  result = qword_1EB775E10;
  if (!qword_1EB775E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E10);
  }

  return result;
}

unint64_t sub_1B1D6AA44()
{
  result = qword_1EB775E18;
  if (!qword_1EB775E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E18);
  }

  return result;
}

unint64_t sub_1B1D6AA9C()
{
  result = qword_1EB775E20;
  if (!qword_1EB775E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E20);
  }

  return result;
}

unint64_t sub_1B1D6AAF4()
{
  result = qword_1EB775E28;
  if (!qword_1EB775E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E28);
  }

  return result;
}

unint64_t sub_1B1D6AB4C()
{
  result = qword_1EB775E30;
  if (!qword_1EB775E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E30);
  }

  return result;
}

unint64_t sub_1B1D6ABA4()
{
  result = qword_1EB775E38;
  if (!qword_1EB775E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E38);
  }

  return result;
}

unint64_t sub_1B1D6ABFC()
{
  result = qword_1EB775E40;
  if (!qword_1EB775E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E40);
  }

  return result;
}

unint64_t sub_1B1D6AC54()
{
  result = qword_1EB775E48;
  if (!qword_1EB775E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E48);
  }

  return result;
}

unint64_t sub_1B1D6ACAC()
{
  result = qword_1EB775E50;
  if (!qword_1EB775E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E50);
  }

  return result;
}

unint64_t sub_1B1D6AD04()
{
  result = qword_1EB775E58;
  if (!qword_1EB775E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E58);
  }

  return result;
}

unint64_t sub_1B1D6AD5C()
{
  result = qword_1EB775E60;
  if (!qword_1EB775E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E60);
  }

  return result;
}

unint64_t sub_1B1D6ADB4()
{
  result = qword_1EB775E68;
  if (!qword_1EB775E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E68);
  }

  return result;
}

unint64_t sub_1B1D6AE0C()
{
  result = qword_1EB775E70;
  if (!qword_1EB775E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E70);
  }

  return result;
}

unint64_t sub_1B1D6AE64()
{
  result = qword_1EB775E78;
  if (!qword_1EB775E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E78);
  }

  return result;
}

unint64_t sub_1B1D6AEBC()
{
  result = qword_1EB775E80;
  if (!qword_1EB775E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E80);
  }

  return result;
}

unint64_t sub_1B1D6AF14()
{
  result = qword_1EB775E88;
  if (!qword_1EB775E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E88);
  }

  return result;
}

unint64_t sub_1B1D6AF6C()
{
  result = qword_1EB775E90;
  if (!qword_1EB775E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E90);
  }

  return result;
}

unint64_t sub_1B1D6AFC4()
{
  result = qword_1EB775E98;
  if (!qword_1EB775E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775E98);
  }

  return result;
}

unint64_t sub_1B1D6B01C()
{
  result = qword_1EB775EA0;
  if (!qword_1EB775EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775EA0);
  }

  return result;
}

unint64_t sub_1B1D6B074()
{
  result = qword_1EB775EA8;
  if (!qword_1EB775EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775EA8);
  }

  return result;
}

unint64_t sub_1B1D6B0CC()
{
  result = qword_1EB775EB0;
  if (!qword_1EB775EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775EB0);
  }

  return result;
}

unint64_t sub_1B1D6B124()
{
  result = qword_1EB775EB8;
  if (!qword_1EB775EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775EB8);
  }

  return result;
}

unint64_t sub_1B1D6B17C()
{
  result = qword_1EB775EC0;
  if (!qword_1EB775EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775EC0);
  }

  return result;
}

unint64_t sub_1B1D6B1D4()
{
  result = qword_1EB775EC8;
  if (!qword_1EB775EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775EC8);
  }

  return result;
}

unint64_t sub_1B1D6B22C()
{
  result = qword_1EB775ED0;
  if (!qword_1EB775ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775ED0);
  }

  return result;
}

unint64_t sub_1B1D6B284()
{
  result = qword_1EB775ED8;
  if (!qword_1EB775ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775ED8);
  }

  return result;
}

unint64_t sub_1B1D6B2DC()
{
  result = qword_1EB775EE0;
  if (!qword_1EB775EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775EE0);
  }

  return result;
}

unint64_t sub_1B1D6B334()
{
  result = qword_1EB775EE8;
  if (!qword_1EB775EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775EE8);
  }

  return result;
}

unint64_t sub_1B1D6B38C()
{
  result = qword_1EB775EF0;
  if (!qword_1EB775EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775EF0);
  }

  return result;
}

unint64_t sub_1B1D6B3E4()
{
  result = qword_1EB775EF8;
  if (!qword_1EB775EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775EF8);
  }

  return result;
}

unint64_t sub_1B1D6B43C()
{
  result = qword_1EB775F00;
  if (!qword_1EB775F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F00);
  }

  return result;
}

unint64_t sub_1B1D6B494()
{
  result = qword_1EB775F08;
  if (!qword_1EB775F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F08);
  }

  return result;
}

unint64_t sub_1B1D6B4EC()
{
  result = qword_1EB775F10;
  if (!qword_1EB775F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F10);
  }

  return result;
}

unint64_t sub_1B1D6B544()
{
  result = qword_1EB775F18;
  if (!qword_1EB775F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F18);
  }

  return result;
}

unint64_t sub_1B1D6B59C()
{
  result = qword_1EB775F20;
  if (!qword_1EB775F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F20);
  }

  return result;
}

unint64_t sub_1B1D6B5F4()
{
  result = qword_1EB775F28;
  if (!qword_1EB775F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F28);
  }

  return result;
}

unint64_t sub_1B1D6B64C()
{
  result = qword_1EB775F30;
  if (!qword_1EB775F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F30);
  }

  return result;
}

unint64_t sub_1B1D6B6A4()
{
  result = qword_1EB775F38;
  if (!qword_1EB775F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F38);
  }

  return result;
}

unint64_t sub_1B1D6B6FC()
{
  result = qword_1EB775F40;
  if (!qword_1EB775F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F40);
  }

  return result;
}

unint64_t sub_1B1D6B754()
{
  result = qword_1EB775F48;
  if (!qword_1EB775F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F48);
  }

  return result;
}

unint64_t sub_1B1D6B7AC()
{
  result = qword_1EB775F50;
  if (!qword_1EB775F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F50);
  }

  return result;
}

unint64_t sub_1B1D6B804()
{
  result = qword_1EB775F58;
  if (!qword_1EB775F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F58);
  }

  return result;
}

unint64_t sub_1B1D6B85C()
{
  result = qword_1EB775F60;
  if (!qword_1EB775F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F60);
  }

  return result;
}

unint64_t sub_1B1D6B8B4()
{
  result = qword_1EB775F68;
  if (!qword_1EB775F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F68);
  }

  return result;
}

unint64_t sub_1B1D6B90C()
{
  result = qword_1EB775F70;
  if (!qword_1EB775F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F70);
  }

  return result;
}

unint64_t sub_1B1D6B964()
{
  result = qword_1EB775F78;
  if (!qword_1EB775F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F78);
  }

  return result;
}

unint64_t sub_1B1D6B9BC()
{
  result = qword_1EB775F80;
  if (!qword_1EB775F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F80);
  }

  return result;
}

uint64_t sub_1B1D6BA10()
{
  v0 = sub_1B1D7C3AC();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B1D6BA5C()
{
  v0 = sub_1B1D7C3AC();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B1D6BAA8()
{
  v0 = sub_1B1D7C3AC();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B1D6BAF4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEA00000000007441 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465696669646F6DLL && a2 == 0xEA00000000007441 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1936154996 && a2 == 0xE400000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657469726F766166 && a2 == 0xE800000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B1D7C50C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1B1D6BDD8()
{
  v0 = sub_1B1D7C3AC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B1D6BE24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954646C656966 && a2 == 0xE900000000000065 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B1D7C50C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B1D6BF80()
{
  v0 = sub_1B1D7C3AC();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B1D6BFCC()
{
  v0 = sub_1B1D7C3AC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B1D6C018()
{
  v0 = sub_1B1D7C3AC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B1D6C064(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265626D756ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6570795464726163 && a2 == 0xE800000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B1D9CD90 == a2 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7235952 && a2 == 0xE300000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6144797269707865 && a2 == 0xEA00000000006574 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F724664696C6176 && a2 == 0xE90000000000006DLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B1D7C50C();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1B1D6C2C0()
{
  v0 = sub_1B1D7C3AC();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B1D6C30C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446874726962 && a2 == 0xE900000000000065 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000065 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6144797269707865 && a2 == 0xEA00000000006574 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B1D9CDB0 == a2 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726F746972726574 && a2 == 0xE900000000000079 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E65736E6563696CLL && a2 == 0xED00007265626D75 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4365736E6563696CLL && a2 == 0xEC0000007373616CLL)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B1D7C50C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1B1D6C614(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x43676E6975737369 && a2 == 0xEE007972746E756FLL;
  if (v4 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xEE007265626D754ELL || (sub_1B1D7C50C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B1D9CDD0 == a2 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616E6F6974616ELL && a2 == 0xEB00000000797469 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461446874726962 && a2 == 0xE900000000000065 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x616C506874726962 && a2 == 0xEA00000000006563 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 7890291 && a2 == 0xE300000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000065 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6144797269707865 && a2 == 0xEA00000000006574 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B1D9CDB0 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_1B1D7C50C();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_1B1D6C9C4()
{
  v0 = sub_1B1D7C3AC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B1D6CA10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x43676E6975737369 && a2 == 0xEE007972746E756FLL;
  if (v4 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74726F7073736170 && a2 == 0xEC00000065707954 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74726F7073736170 && a2 == 0xEE007265626D754ELL || (sub_1B1D7C50C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001B1D9CDF0 == a2 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C616E6F6974616ELL && a2 == 0xEB00000000797469 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7461446874726962 && a2 == 0xE900000000000065 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x616C506874726962 && a2 == 0xEA00000000006563 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 7890291 && a2 == 0xE300000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x7461446575737369 && a2 == 0xE900000000000065 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6144797269707865 && a2 == 0xEA00000000006574 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B1D9CDB0 == a2)
  {

    return 11;
  }

  else
  {
    v6 = sub_1B1D7C50C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_1B1D6CE10(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65766967 && a2 == 0xE500000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666E496E65766967 && a2 == 0xED00006C616D726FLL || (sub_1B1D7C50C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x326E65766967 && a2 == 0xE600000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x50656D616E727573 && a2 == 0xED00007869666572 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656D616E727573 && a2 == 0xE700000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x32656D616E727573 && a2 == 0xE800000000000000 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x69746E6564657263 && a2 == 0xEB00000000736C61 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x69746172656E6567 && a2 == 0xEA00000000006E6FLL)
  {

    return 8;
  }

  else
  {
    v6 = sub_1B1D7C50C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1B1D6D100()
{
  v0 = sub_1B1D7C3AC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B1D6D14C()
{
  v0 = sub_1B1D7C3AC();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B1D6D198(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632435 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B1D9CE10 == a2 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6172687073736170 && a2 == 0xEA00000000006573 || (sub_1B1D7C50C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6564646968 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B1D7C50C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1B1D6D308()
{
  result = qword_1EB775F88;
  if (!qword_1EB775F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F88);
  }

  return result;
}

unint64_t sub_1B1D6D35C()
{
  result = qword_1EB775F90;
  if (!qword_1EB775F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F90);
  }

  return result;
}

unint64_t sub_1B1D6D3B0()
{
  result = qword_1EB775F98;
  if (!qword_1EB775F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775F98);
  }

  return result;
}

uint64_t sub_1B1D6D404(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B1D6D46C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B1D6D68C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775098, &qword_1B1D86088);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = sub_1B1D7BE4C();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x1EEE6DEE0](v4);
  }
}

id sub_1B1D6D760()
{
  v0 = sub_1B1D7B43C();
  v1 = [v0 domain];
  v2 = sub_1B1D7BE4C();
  v4 = v3;

  v5 = *MEMORY[0x1E698DF70];
  if (v2 == sub_1B1D7BE4C() && v4 == v6)
  {
  }

  else
  {
    v8 = sub_1B1D7C50C();

    if ((v8 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v9 = [v0 code];
  if (v9 == 18)
  {
    v10 = @"com.apple.AuthenticationServices.AuthorizationError";
    v16 = [v0 userInfo];
    sub_1B1D7BDDC();

    v17 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v13 = sub_1B1D7BDCC();

    v14 = [v17 initWithDomain:v10 code:1007 userInfo:v13];
    goto LABEL_13;
  }

  if (v9 == 19)
  {
    v10 = @"com.apple.AuthenticationServices.AuthorizationError";
    v11 = [v0 userInfo];
    sub_1B1D7BDDC();

    v12 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v13 = sub_1B1D7BDCC();

    v14 = [v12 initWithDomain:v10 code:1008 userInfo:v13];
LABEL_13:
    v15 = v14;

    v0 = v13;
    goto LABEL_14;
  }

LABEL_11:
  v15 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.AuthenticationServices.AuthorizationError" code:1004 userInfo:0];
LABEL_14:

  return v15;
}

uint64_t sub_1B1D6DA10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x655674616D726F66 && a2 == 0xED00006E6F697372)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B1D7C50C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B1D6DAA0(uint64_t a1)
{
  v2 = sub_1B1D6DC50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D6DADC(uint64_t a1)
{
  v2 = sub_1B1D6DC50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASCredentialExportManager.ExportOptions.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775FC8, &qword_1B1D93660);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D6DC50();
  sub_1B1D7C63C();
  sub_1B1D64160();
  sub_1B1D7C4CC();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1B1D6DC50()
{
  result = qword_1EB775FD0;
  if (!qword_1EB775FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775FD0);
  }

  return result;
}

uint64_t ASCredentialExportManager.ExportOptions.hashValue.getter()
{
  sub_1B1D7C5CC();
  sub_1B1D7BE7C();
  return sub_1B1D7C61C();
}

uint64_t ASCredentialExportManager.ExportOptions.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775FD8, &unk_1B1D93668);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D6DC50();
  sub_1B1D7C62C();
  if (!v1)
  {
    sub_1B1D642D4();
    sub_1B1D7C43C();
    (*(v4 + 8))(v7, v3);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1B1D6DE80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[33] = a3;
  v4[34] = v3;
  v4[32] = a2;
  v5 = swift_task_alloc();
  v4[35] = v5;
  *v5 = v4;
  v5[1] = sub_1B1D6DF14;

  return sub_1B1D6EE18();
}

uint64_t sub_1B1D6DF14(uint64_t a1)
{
  v3 = *(*v2 + 280);
  v4 = *v2;
  *(v4 + 288) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B1D6E048, 0, 0);
}

uint64_t sub_1B1D6E048()
{
  v1 = v0[33];
  v0[37] = *(v0[34] + 16);
  if (v1)
  {
    v2 = v0[32];
    v3 = sub_1B1D7BE1C();
  }

  else
  {
    v3 = 0;
  }

  v0[38] = v3;
  v0[39] = sub_1B1D7BF2C();
  v0[40] = sub_1B1D7BF1C();
  v5 = sub_1B1D7BF0C();

  return MEMORY[0x1EEE6DFA0](sub_1B1D6E104, v5, v4);
}

uint64_t sub_1B1D6E104()
{
  v1 = v0[40];
  v2 = v0[36];

  v0[41] = [v2 windowScene];

  return MEMORY[0x1EEE6DFA0](sub_1B1D6E18C, 0, 0);
}

uint64_t sub_1B1D6E18C(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  if (v3[41])
  {
    v4 = v3[39];
    v3[42] = sub_1B1D7BF1C();
    v5 = sub_1B1D7BF0C();
    v7 = v6;
    a1 = sub_1B1D6E224;
    a2 = v5;
    a3 = v7;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1B1D6E224()
{
  v2 = v0[41];
  v1 = v0[42];

  v0[43] = [v2 _sceneIdentifier];

  return MEMORY[0x1EEE6DFA0](sub_1B1D6E2AC, 0, 0);
}

uint64_t sub_1B1D6E2AC()
{
  v1 = v0[43];
  if (!v1)
  {
    sub_1B1D7BE4C();
    v1 = sub_1B1D7BE1C();
  }

  v0[44] = v1;
  v3 = v0[37];
  v2 = v0[38];
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_1B1D6E3FC;
  v4 = swift_continuation_init();
  v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7750D8, &unk_1B1D93680);
  v0[20] = MEMORY[0x1E69E9820];
  v0[21] = 1107296256;
  v0[22] = sub_1B1D6D68C;
  v0[23] = &block_descriptor_6;
  v0[24] = v4;
  [v3 requestExportForCredentialProvider:v2 windowSceneIdentifier:v1 completionHandler:v0 + 20];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B1D6E3FC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 360) = v2;
  if (v2)
  {
    v3 = sub_1B1D6E808;
  }

  else
  {
    v3 = sub_1B1D6E50C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B1D6E50C()
{
  v18 = v0;
  v1 = *(v0 + 304);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);

  if (sub_1B1D7C3AC())
  {
    if (qword_1EB7749B8 != -1)
    {
      swift_once();
    }

    v4 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v4, qword_1EB782530);

    v5 = sub_1B1D7BD6C();
    v6 = sub_1B1D7C00C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      v9 = sub_1B1D0D070(v3, v2, &v17);

      *(v7 + 4) = v9;
      _os_log_impl(&dword_1B1C8D000, v5, v6, "Received unexpected format version: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1B273C4C0](v8, -1, -1);
      MEMORY[0x1B273C4C0](v7, -1, -1);
    }

    else
    {
    }

    type metadata accessor for ASAuthorizationError(0);
    *(v0 + 248) = 1004;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1D85C40;
    v12 = *MEMORY[0x1E696A588];
    *(inited + 32) = sub_1B1D7BE4C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v13;
    *(inited + 48) = 0xD000000000000023;
    *(inited + 56) = 0x80000001B1D9CE30;
    sub_1B1D6FAB8(inited);
    swift_setDeallocating();
    sub_1B1CF1634(inited + 32);
    sub_1B1D6FC98(&qword_1EB774F70, type metadata accessor for ASAuthorizationError);
    sub_1B1D7B42C();
    v14 = *(v0 + 240);
    swift_willThrow();
    v15 = *(v0 + 288);
    [*(v0 + 296) invalidate];
    swift_willThrow();

    v10 = *(v0 + 8);
  }

  else
  {

    v10 = *(v0 + 8);
  }

  return v10();
}

uint64_t sub_1B1D6E808()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 360);
  v3 = *(v0 + 304);
  swift_willThrow();

  v4 = *(v0 + 360);
  v5 = *(v0 + 288);
  [*(v0 + 296) invalidate];
  swift_willThrow();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B1D6E89C(uint64_t a1)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B1D6E8BC, 0, 0);
}

uint64_t sub_1B1D6E8BC()
{
  v1 = v0[28];
  v2 = *(ASExportedCredentialData.allItems.getter() + 16);

  if (v2)
  {
    v3 = v0[28];
    v4 = sub_1B1D7B2EC();
    v5 = *(v4 + 48);
    v6 = *(v4 + 52);
    swift_allocObject();
    v0[30] = sub_1B1D7B2DC();
    type metadata accessor for ASExportedCredentialData(0);
    sub_1B1D6FC98(&qword_1EB775FE0, type metadata accessor for ASExportedCredentialData);
    v0[31] = sub_1B1D7B2CC();
    v0[32] = v7;
    v16 = *(v0[29] + 16);
    v17 = sub_1B1D7B4DC();
    v0[33] = v17;
    v0[2] = v0;
    v0[3] = sub_1B1D6EBD8;
    v18 = swift_continuation_init();
    v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775078, &unk_1B1D936A0);
    v0[20] = MEMORY[0x1E69E9820];
    v0[21] = 1107296256;
    v0[22] = sub_1B1CEFEE8;
    v0[23] = &block_descriptor_5;
    v0[24] = v18;
    [v16 continueExportWithCredentials:v17 completionHandler:v0 + 20];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1D85C40;
    v9 = *MEMORY[0x1E696A588];
    *(inited + 32) = sub_1B1D7BE4C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v10;
    *(inited + 48) = 0xD000000000000023;
    *(inited + 56) = 0x80000001B1D9CE60;
    v11 = @"com.apple.AuthenticationServices.AuthorizationError";
    sub_1B1D6FAB8(inited);
    swift_setDeallocating();
    sub_1B1CF1634(inited + 32);
    v12 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v13 = sub_1B1D7BDCC();

    [v12 initWithDomain:v11 code:1008 userInfo:v13];

    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1B1D6EBD8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 272) = v2;
  if (v2)
  {
    v3 = sub_1B1D6ED5C;
  }

  else
  {
    v3 = sub_1B1D6ECE8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B1D6ECE8()
{
  v1 = v0[33];
  v2 = v0[30];
  sub_1B1CDEFDC(v0[31], v0[32]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B1D6ED5C()
{
  v2 = v0[33];
  v1 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  swift_willThrow();

  sub_1B1D6D760();
  swift_willThrow();

  sub_1B1CDEFDC(v4, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1B1D6EE38()
{
  v1 = v0[12];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v3 = v0[1];

    __asm { BRAA            X2, X16 }
  }

  v4 = v0[12];
  v5 = *(v4 + 32);
  v0[14] = v5;
  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1D85C40;
    v9 = *MEMORY[0x1E696A588];
    *(inited + 32) = sub_1B1D7BE4C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v10;
    *(inited + 48) = 0xD00000000000002DLL;
    *(inited + 56) = 0x80000001B1D9CF70;
    v11 = @"com.apple.AuthenticationServices.AuthorizationError";
    sub_1B1D6FAB8(inited);
    swift_setDeallocating();
    sub_1B1CF1634(inited + 32);
    v12 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v13 = sub_1B1D7BDCC();

    [v12 initWithDomain:v11 code:1008 userInfo:v13];

    swift_willThrow();
    v14 = v0[1];

    __asm { BRAA            X1, X16 }
  }

  v0[15] = *(v4 + 40);
  sub_1B1D7BF2C();

  v0[16] = sub_1B1D7BF1C();
  v7 = sub_1B1D7BF0C();

  return MEMORY[0x1EEE6DFA0](sub_1B1D6F094, v7, v6);
}

uint64_t sub_1B1D6F094()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];

  v0[17] = v3(v4);

  return MEMORY[0x1EEE6DFA0](sub_1B1D6F10C, 0, 0);
}

uint64_t sub_1B1D6F10C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  sub_1B1D6FC88(*(v0 + 112));
  if (v1)
  {
    v3 = *(v0 + 136);
    v13 = *(v0 + 8);
    v4 = *(v0 + 104);

    return v13(v3);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1D85C40;
    v7 = *MEMORY[0x1E696A588];
    *(inited + 32) = sub_1B1D7BE4C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v8;
    *(inited + 48) = 0xD00000000000002DLL;
    *(inited + 56) = 0x80000001B1D9CF70;
    v9 = @"com.apple.AuthenticationServices.AuthorizationError";
    sub_1B1D6FAB8(inited);
    swift_setDeallocating();
    sub_1B1CF1634(inited + 32);
    v10 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v11 = sub_1B1D7BDCC();

    [v10 initWithDomain:v9 code:1008 userInfo:v11];

    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

void *ASCredentialExportManager.__allocating_init(presentationAnchorProvider:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ASCredentialExportManager();
  swift_allocObject();
  v4 = sub_1B1D6FBEC(0, a1, a2);

  return v4;
}

void *ASCredentialExportManager.__allocating_init(presentationAnchor:)(void *a1)
{
  type metadata accessor for ASCredentialExportManager();
  swift_allocObject();
  return sub_1B1D6FBEC(a1, 0, 0);
}

uint64_t ASCredentialExportManager.deinit()
{
  MEMORY[0x1B273C590](v0 + 24);
  v1 = *(v0 + 40);
  sub_1B1D6FC88(*(v0 + 32));
  return v0;
}

uint64_t ASCredentialExportManager.__deallocating_deinit()
{
  MEMORY[0x1B273C590](v0 + 24);
  v1 = *(v0 + 40);
  sub_1B1D6FC88(*(v0 + 32));

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1B1D6F42C(uint64_t a1, uint64_t a2)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B1D6F44C, 0, 0);
}

uint64_t sub_1B1D6F44C()
{
  v1 = v0[21];
  v2 = [objc_allocWithZone(_ASAgentCredentialExchangeListenerProxy) initForMode_];
  v0[22] = v2;
  v3 = sub_1B1D7B55C();
  v0[23] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1B1D6F5A4;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775FE8, &qword_1B1D936B0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B1D6F89C;
  v0[13] = &block_descriptor_9;
  v0[14] = v4;
  [v2 importCredentialsWithToken:v3 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B1D6F5A4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_1B1D6F804;
  }

  else
  {
    v3 = sub_1B1D6F6B4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B1D6F6B4()
{
  v1 = *(v0 + 176);
  v3 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 144);

  v5 = sub_1B1D7B2BC();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_1B1D7B2AC();
  type metadata accessor for ASExportedCredentialData(0);
  sub_1B1D6FC98(&qword_1EB775FF0, type metadata accessor for ASExportedCredentialData);
  sub_1B1D7B29C();

  sub_1B1CDEFDC(v4, v3);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B1D6F804()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  swift_willThrow();

  v4 = v0[24];
  sub_1B1D6D760();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1B1D6F89C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775098, &qword_1B1D86088);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x1EEE6DEE8](v5, v6);
  }

  else
  {
    v9 = a2;
    v10 = sub_1B1D7B4EC();
    v12 = v11;

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return MEMORY[0x1EEE6DEE0](v5);
  }
}

unint64_t sub_1B1D6F9B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774F90, &unk_1B1D93950);
    v3 = sub_1B1D7C37C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1B1CE7FA8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B1D6FAB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774F98, &unk_1B1D93960);
    v3 = sub_1B1D7C37C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B1CE9604(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1B1CE7FA8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B1CE9674(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1B1D6FBEC(void *a1, uint64_t a2, uint64_t a3)
{
  v3[2] = [objc_allocWithZone(_ASAgentCredentialExchangeListenerProxy) initForMode_];
  swift_unknownObjectWeakInit();
  v3[4] = 0;
  v3[5] = 0;
  swift_unknownObjectWeakAssign();

  v7 = v3[4];
  v8 = v3[5];
  v3[4] = a2;
  v3[5] = a3;
  sub_1B1D70250(a2);
  sub_1B1D6FC88(v7);
  return v3;
}

uint64_t sub_1B1D6FC88(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B1D6FC98(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B1D6FCE4()
{
  result = qword_1EB775FF8;
  if (!qword_1EB775FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775FF8);
  }

  return result;
}

uint64_t dispatch thunk of ASCredentialExportManager.requestExport(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 104);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B1CE99BC;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of ASCredentialExportManager.exportCredentials(_:)(uint64_t a1)
{
  v4 = *(*v1 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B1CE9AD0;

  return v8(a1);
}

uint64_t dispatch thunk of ASCredentialImportManager.importCredentials(token:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 80);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B1CE9AD0;

  return v10(a1, a2);
}

unint64_t sub_1B1D7014C()
{
  result = qword_1EB776000;
  if (!qword_1EB776000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776000);
  }

  return result;
}

unint64_t sub_1B1D701A4()
{
  result = qword_1EB776008;
  if (!qword_1EB776008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776008);
  }

  return result;
}

unint64_t sub_1B1D701FC()
{
  result = qword_1EB776010;
  if (!qword_1EB776010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776010);
  }

  return result;
}

uint64_t sub_1B1D70250(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B1D70288()
{
  if (*v0)
  {
    result = 0x6C69616D65;
  }

  else
  {
    result = 0x6D754E656E6F6870;
  }

  *v0;
  return result;
}

uint64_t sub_1B1D702C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562;
  if (v6 || (sub_1B1D7C50C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B1D7C50C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B1D703A4(uint64_t a1)
{
  v2 = sub_1B1D7083C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D703E0(uint64_t a1)
{
  v2 = sub_1B1D7083C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1D70428(uint64_t a1)
{
  v2 = sub_1B1D70890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D70464(uint64_t a1)
{
  v2 = sub_1B1D70890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1D704A0(uint64_t a1)
{
  v2 = sub_1B1D708E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1D704DC(uint64_t a1)
{
  v2 = sub_1B1D708E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ASContactIdentifierRequest.hashValue.getter()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  MEMORY[0x1B273B630](v1);
  return sub_1B1D7C61C();
}

uint64_t ASContactIdentifierRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB776018, &qword_1B1D93970);
  v23 = *(v3 - 8);
  v24 = v3;
  v4 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB776020, &qword_1B1D93978);
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB776028, &qword_1B1D93980);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v20 - v13;
  v15 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D7083C();
  sub_1B1D7C63C();
  v17 = (v11 + 8);
  if (v15)
  {
    v26 = 1;
    sub_1B1D70890();
    v18 = v22;
    sub_1B1D7C46C();
    (*(v23 + 8))(v18, v24);
  }

  else
  {
    v25 = 0;
    sub_1B1D708E4();
    sub_1B1D7C46C();
    (*(v20 + 8))(v9, v21);
  }

  return (*v17)(v14, v10);
}

unint64_t sub_1B1D7083C()
{
  result = qword_1EB776030;
  if (!qword_1EB776030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776030);
  }

  return result;
}

unint64_t sub_1B1D70890()
{
  result = qword_1EB776038;
  if (!qword_1EB776038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776038);
  }

  return result;
}

unint64_t sub_1B1D708E4()
{
  result = qword_1EB776040;
  if (!qword_1EB776040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776040);
  }

  return result;
}

uint64_t ASContactIdentifierRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB776048, &qword_1B1D93988);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB776050, &qword_1B1D93990);
  v32 = *(v8 - 8);
  v9 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB776058, &qword_1B1D93998);
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1D7083C();
  v17 = v37;
  sub_1B1D7C62C();
  if (v17)
  {
    goto LABEL_7;
  }

  v31 = v8;
  v37 = a1;
  v19 = v35;
  v18 = v36;
  v20 = v15;
  v21 = sub_1B1D7C45C();
  if (*(v21 + 16) != 1)
  {
    v23 = sub_1B1D7C2BC();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7757B8, &qword_1B1D939A0) + 48);
    *v25 = &type metadata for ASContactIdentifierRequest;
    sub_1B1D7C3CC();
    sub_1B1D7C2AC();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
    swift_willThrow();
    (*(v19 + 8))(v20, v12);
    swift_unknownObjectRelease();
    a1 = v37;
LABEL_7:
    v28 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  v30 = v21;
  v22 = *(v21 + 32);
  if (v22)
  {
    v39 = 1;
    sub_1B1D70890();
    sub_1B1D7C3BC();
    (*(v34 + 8))(v7, v33);
  }

  else
  {
    v27 = *(v21 + 32);
    v38 = 0;
    sub_1B1D708E4();
    sub_1B1D7C3BC();
    (*(v32 + 8))(v11, v31);
  }

  (*(v19 + 8))(v20, v12);
  swift_unknownObjectRelease();
  *v18 = v22;
  v28 = v37;
  return __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

unint64_t sub_1B1D70D90()
{
  result = qword_1EB776060;
  if (!qword_1EB776060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776060);
  }

  return result;
}

unint64_t sub_1B1D70E58()
{
  result = qword_1EB776068;
  if (!qword_1EB776068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776068);
  }

  return result;
}

unint64_t sub_1B1D70EB0()
{
  result = qword_1EB776070;
  if (!qword_1EB776070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776070);
  }

  return result;
}

unint64_t sub_1B1D70F08()
{
  result = qword_1EB776078;
  if (!qword_1EB776078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776078);
  }

  return result;
}

unint64_t sub_1B1D70F60()
{
  result = qword_1EB776080;
  if (!qword_1EB776080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776080);
  }

  return result;
}

unint64_t sub_1B1D70FB8()
{
  result = qword_1EB776088;
  if (!qword_1EB776088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776088);
  }

  return result;
}

unint64_t sub_1B1D71010()
{
  result = qword_1EB776090;
  if (!qword_1EB776090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776090);
  }

  return result;
}

unint64_t sub_1B1D71068()
{
  result = qword_1EB776098;
  if (!qword_1EB776098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB776098);
  }

  return result;
}

uint64_t ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.prf.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B1D7BA5C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD8, &qword_1B1D857C8);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v17 - v10;
  v12 = [v1 extensions];
  sub_1B1D7BA6C();

  if ((*(v4 + 48))(v11, 1, v3))
  {
    result = sub_1B1CDEC18(v11, &qword_1EB774CD8, &qword_1B1D857C8);
    v14 = 0uLL;
    v15 = 1;
    v16 = 0uLL;
  }

  else
  {
    (*(v4 + 16))(v7, v11, v3);
    sub_1B1CDEC18(v11, &qword_1EB774CD8, &qword_1B1D857C8);
    sub_1B1D0D91C(v17);
    result = (*(v4 + 8))(v7, v3);
    v14 = v17[0];
    v16 = v17[1];
    v15 = v18;
  }

  *a1 = v14;
  *(a1 + 16) = v16;
  *(a1 + 32) = v15;
  return result;
}

void sub_1B1D7129C(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *a2;
  *&v7 = *a1;
  *(&v7 + 1) = v2;
  v8 = v3;
  v9 = v4;
  v10 = v5;
  sub_1B1D71888(v7, v2, v3, v4, v5);
  ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.prf.setter(&v7);
}

void ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.prf.setter(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD8, &qword_1B1D857C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = a1[1];
  v12 = *a1;
  v13 = v7;
  v8 = *(a1 + 4);
  v9 = [v1 extensions];
  if (v8 == 1)
  {
    v10 = sub_1B1D7BA5C();
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
  }

  else
  {
    v14 = v12;
    v15 = v13;
    v16 = v8;
    sub_1B1D0DCD8(v6);
    sub_1B1CDEF8C(v14, *(&v14 + 1), v15, *(&v15 + 1));

    v11 = sub_1B1D7BA5C();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  }

  sub_1B1D7BA7C();
}

void (*ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.prf.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x60uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v1;
  v6 = sub_1B1D7BA5C();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  *(v5 + 56) = v7;
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v7 + 64));
  }

  v10 = v9;
  *(v5 + 64) = v9;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD8, &qword_1B1D857C8) - 8) + 64);
  if (v3)
  {
    *(v5 + 72) = swift_coroFrameAlloc();
    *(v5 + 80) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 72) = malloc(v11);
    *(v5 + 80) = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v5 + 88) = v12;
  v14 = [v1 extensions];
  sub_1B1D7BA6C();

  if ((*(v8 + 48))(v13, 1, v6))
  {
    sub_1B1CDEC18(v13, &qword_1EB774CD8, &qword_1B1D857C8);
    v15 = 0uLL;
    v16 = 1;
    v17 = 0uLL;
  }

  else
  {
    (*(v8 + 16))(v10, v13, v6);
    sub_1B1CDEC18(v13, &qword_1EB774CD8, &qword_1B1D857C8);
    sub_1B1D0D91C(v19);
    (*(v8 + 8))(v10, v6);
    v15 = v19[0];
    v17 = v19[1];
    v16 = v20;
  }

  *v5 = v15;
  *(v5 + 16) = v17;
  *(v5 + 32) = v16;
  return sub_1B1D716B0;
}

void sub_1B1D716B0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  v8 = (*a1)[5];
  if (a2)
  {
    sub_1B1D71888(**a1, v3, v6, v5, v7);
    v9 = [v8 extensions];
    if (v7 == 1)
    {
      v10 = 1;
    }

    else
    {
      sub_1B1D0DCD8(v2[9]);
      sub_1B1CDEF8C(v4, v3, v6, v5);

      v10 = 0;
    }

    v14 = v2[10];
    v13 = v2[11];
    v16 = v2[8];
    v15 = v2[9];
    (*(v2[7] + 56))(v15, v10, 1, v2[6]);
    sub_1B1D7BA7C();

    sub_1B1D718CC(*v2, v2[1], v2[2], v2[3], v2[4]);
  }

  else
  {
    v11 = [(*a1)[5] extensions];
    if (v7 == 1)
    {
      v12 = 1;
    }

    else
    {
      sub_1B1D0DCD8(v2[10]);
      sub_1B1CDEF8C(v4, v3, v6, v5);

      v12 = 0;
    }

    v14 = v2[10];
    v13 = v2[11];
    v16 = v2[8];
    v15 = v2[9];
    (*(v2[7] + 56))(v14, v12, 1, v2[6]);
    sub_1B1D7BA7C();
  }

  free(v13);
  free(v14);
  free(v15);
  free(v16);

  free(v2);
}

uint64_t sub_1B1D71888(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_1B1D05C30(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1B1D718CC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
    sub_1B1CDEF8C(result, a2, a3, a4);
  }

  return result;
}

id ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.__largeBlobSwift.getter()
{
  v1 = sub_1B1D7BA8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  v9 = sub_1B1D7BABC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD0, &qword_1B1D857C0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v25 - v16;
  v18 = [v0 extensions];
  sub_1B1D7BACC();

  if ((*(v10 + 48))(v17, 1, v9))
  {
    sub_1B1CDEC18(v17, &qword_1EB774CD0, &qword_1B1D857C0);
    return 0;
  }

  else
  {
    (*(v10 + 16))(v13, v17, v9);
    sub_1B1CDEC18(v17, &qword_1EB774CD0, &qword_1B1D857C0);
    sub_1B1D7BAAC();
    (*(v2 + 16))(v6, v8, v1);
    v20 = (*(v2 + 88))(v6, v1);
    if (v20 == *MEMORY[0x1E698DF30])
    {
      (*(v2 + 8))(v8, v1);
      (*(v10 + 8))(v13, v9);
      (*(v2 + 96))(v6, v1);
      v21 = *v6;
      v22 = v6[1];
      v23 = [objc_allocWithZone(ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput) initWithOperation_];
      v24 = sub_1B1D7B4DC();
      [v23 setDataToWrite_];

      sub_1B1CDEFDC(v21, v22);
      return v23;
    }

    else if (v20 == *MEMORY[0x1E698DF28])
    {
      (*(v2 + 8))(v8, v1);
      (*(v10 + 8))(v13, v9);
      return [objc_allocWithZone(ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput) initWithOperation_];
    }

    else
    {
      result = sub_1B1D7C32C();
      __break(1u);
    }
  }

  return result;
}

void ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.__largeBlobSwift.setter(id a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD0, &qword_1B1D857C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - v5;
  v7 = [v1 extensions];
  if (a1)
  {
    a1 = a1;
    sub_1B1D07B8C();

    v8 = sub_1B1D7BABC();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  }

  else
  {
    v9 = sub_1B1D7BABC();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  sub_1B1D7BADC();
}

uint64_t ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.__prfSwift.getter()
{
  v1 = sub_1B1D7BA5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD8, &qword_1B1D857C8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  v10 = [v0 extensions];
  sub_1B1D7BA6C();

  if ((*(v2 + 48))(v9, 1, v1))
  {
    sub_1B1CDEC18(v9, &qword_1EB774CD8, &qword_1B1D857C8);
    return 0;
  }

  else
  {
    (*(v2 + 16))(v5, v9, v1);
    sub_1B1CDEC18(v9, &qword_1EB774CD8, &qword_1B1D857C8);
    sub_1B1D0D91C(v16);
    (*(v2 + 8))(v5, v1);
    v13 = v16[0];
    v14 = v16[1];
    v15 = v17;
    v12 = sub_1B1D0E95C();
    sub_1B1CDEF8C(v13, *(&v13 + 1), v14, *(&v14 + 1));

    return v12;
  }
}

void ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.__prfSwift.setter(id a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB774CD8, &qword_1B1D857C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - v5;
  v7 = [v1 extensions];
  if (a1)
  {
    a1 = a1;
    sub_1B1D10BFC(v6);

    v8 = sub_1B1D7BA5C();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  }

  else
  {
    v9 = sub_1B1D7BA5C();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  sub_1B1D7BA7C();
}

id static ASAuthorizationPlatformPublicKeyCredentialAssertionRequest.emptyExtensions()()
{
  v0 = objc_allocWithZone(sub_1B1D7BAEC());

  return [v0 init];
}

uint64_t ASAuthorizationUIContext.Header.Title.text.getter()
{
  v1 = sub_1B1D7B65C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  if ((*v0 & 1) != 0 && [objc_opt_self() isAppleAccountBrandingEnabled])
  {
    sub_1B1D7B64C();
    sub_1B1D7B64C();
    v9 = sub_1B1D7B62C();
    v10 = *(v2 + 8);
    v10(v6, v1);
    v10(v8, v1);
  }

  else
  {
    sub_1B1D7B64C();
    v9 = sub_1B1D7B63C();
    (*(v2 + 8))(v8, v1);
  }

  return v9;
}

uint64_t ASAuthorizationUIContext.Title.text.getter()
{
  v1 = sub_1B1D7B65C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);
  if (v7 >> 6)
  {
    if (v7 >> 6 == 1 || __PAIR128__(-128, 1) < __PAIR128__(v7, v6) || v6 | *(v0 + 8) ^ 0x80)
    {
      sub_1B1D7B64C();
      v9 = sub_1B1D7B63C();
      (*(v2 + 8))(v5, v1);
      return v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = *v0;
    v11 = v7 & 1;
    return ASAuthorizationUIContext.PasskeyTitle.text.getter();
  }
}

uint64_t ASAuthorizationUIContext.PasskeyTitle.text.getter()
{
  v1 = sub_1B1D7B65C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 8) != 1)
  {
    *v0;
  }

  sub_1B1D7B64C();
  v6 = sub_1B1D7B63C();
  (*(v2 + 8))(v5, v1);
  return v6;
}

unint64_t ASAuthorizationUIContext.Message.text(appleIDLoginChoiceMessageProvider:)(uint64_t (*a1)(void))
{
  v2 = v1;
  v4 = sub_1B1D7B65C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v67 - v10;
  v12 = type metadata accessor for ASAuthorizationUIContext.PasskeyMessage();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ASAuthorizationUIContext.Message();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1D770B8(v2, v19, type metadata accessor for ASAuthorizationUIContext.Message);
  v20 = 0;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1B1D1831C(v19, v15);
      v20 = ASAuthorizationUIContext.PasskeyMessage.text.getter();
      sub_1B1CF9788(v15);
      return v20;
    case 2u:
      v26 = *(v19 + 1);
      v27 = *(v19 + 3);
      v75 = *(v19 + 2);
      v76 = v27;
      v28 = *(v19 + 1);
      v74[0] = *v19;
      v74[1] = v28;
      v29 = *(v19 + 3);
      v71 = v75;
      v72 = v29;
      v77 = *(v19 + 8);
      v73 = *(v19 + 8);
      v69 = v74[0];
      v70 = v26;
      v20 = ASAuthorizationUIContext.PasswordMessage.text.getter();
      sub_1B1D18268(v74);
      return v20;
    case 3u:
      v20 = 0;
      v22 = *v19;
      if (*v19 > 1)
      {
        if (v22 == 2 || v22 == 4)
        {
          goto LABEL_33;
        }
      }

      else if (v22 <= 1)
      {
        goto LABEL_33;
      }

      return v20;
    case 4u:
      if (*v19 != 1)
      {
        goto LABEL_33;
      }

      [objc_opt_self() isAppleAccountBrandingEnabled];
      v25 = (v5 + 8);
      goto LABEL_34;
    case 5u:
      v35 = *v19;
      v34 = *(v19 + 1);
      v36 = v19[16];
      v37 = *(v19 + 4);
      v67 = *(v19 + 3);
      v68 = v37;
      sub_1B1D7B64C();
      v38 = (v5 + 8);
      if (v36 == 1)
      {
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v39 = *v38;
        (*v38)(v9, v4);
        v39(v11, v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1B1D85D30;
        v41 = MEMORY[0x1E69E6158];
        *(v40 + 56) = MEMORY[0x1E69E6158];
        v42 = sub_1B1CED4EC();
        *(v40 + 32) = v35;
        *(v40 + 40) = v34;
        *(v40 + 96) = v41;
        *(v40 + 104) = v42;
        v44 = v67;
        v43 = v68;
        *(v40 + 64) = v42;
        *(v40 + 72) = v44;
        *(v40 + 80) = v43;
        goto LABEL_20;
      }

      sub_1B1D7B64C();
      sub_1B1D7B62C();
      v48 = *v38;
      (*v38)(v9, v4);
      v48(v11, v4);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_1B1D85D30;
      v50 = sub_1B1D7BE1C();
      v51 = [v50 _lp_userVisibleHost];

      v52 = sub_1B1D7BE4C();
      v54 = v53;

      v55 = MEMORY[0x1E69E6158];
      *(v49 + 56) = MEMORY[0x1E69E6158];
      v56 = sub_1B1CED4EC();
      *(v49 + 32) = v52;
      *(v49 + 40) = v54;
      *(v49 + 96) = v55;
      *(v49 + 104) = v56;
      v58 = v67;
      v57 = v68;
      *(v49 + 64) = v56;
      *(v49 + 72) = v58;
      *(v49 + 80) = v57;
      goto LABEL_30;
    case 6u:
      v31 = *v19;
      v30 = *(v19 + 1);
      v32 = v19[16];
      sub_1B1D7B64C();
      v33 = (v5 + 8);
      if (v32 == 1)
      {
        goto LABEL_19;
      }

      goto LABEL_29;
    case 7u:
      v31 = *v19;
      v30 = *(v19 + 1);
      v45 = v19[16];
      sub_1B1D7B64C();
      v33 = (v5 + 8);
      if (v45 == 1)
      {
LABEL_19:
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v46 = *v33;
        (*v33)(v9, v4);
        v46(v11, v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_1B1D85C40;
        *(v47 + 56) = MEMORY[0x1E69E6158];
        *(v47 + 64) = sub_1B1CED4EC();
        *(v47 + 32) = v31;
        *(v47 + 40) = v30;
LABEL_20:

        v20 = sub_1B1D7BE2C();

        sub_1B1CF8E9C();
      }

      else
      {
LABEL_29:
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v59 = *v33;
        (*v33)(v9, v4);
        v59(v11, v4);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v60 = swift_allocObject();
        *(v60 + 16) = xmmword_1B1D85C40;
        v61 = sub_1B1D7BE1C();
        v62 = [v61 _lp_userVisibleHost];

        v63 = sub_1B1D7BE4C();
        v65 = v64;

        *(v60 + 56) = MEMORY[0x1E69E6158];
        *(v60 + 64) = sub_1B1CED4EC();
        *(v60 + 32) = v63;
        *(v60 + 40) = v65;
LABEL_30:
        v20 = sub_1B1D7BE2C();

        sub_1B1CF8E9C();
      }

      return v20;
    case 8u:
      v23 = v19[1];
      v24 = v19[2];
      v25 = (v5 + 8);
      if (*v19 == 1)
      {
        if (!v19[1])
        {
          v19[2];
        }
      }

      else if (!v19[1])
      {
        v19[2];
      }

LABEL_34:
      sub_1B1D7B64C();
      v20 = sub_1B1D7B63C();
      (*v25)(v11, v4);
      return v20;
    case 9u:
      return v20;
    case 0xAu:
      return 0xD000000000000028;
    case 0xBu:
    case 0xCu:
LABEL_33:
      sub_1B1D7B64C();
      v20 = sub_1B1D7B63C();
      (*(v5 + 8))(v11, v4);
      return v20;
    default:
      v21 = *v19;
      v20 = a1(*v19);

      return v20;
  }
}

uint64_t ASAuthorizationUIContext.PasswordMessage.text.getter()
{
  v1 = sub_1B1D7B65C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v142 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v142 - v7;
  v9 = *(v0 + 8);
  v147 = *v0;
  v10 = *(v0 + 16);
  v12 = *(v0 + 24);
  v11 = *(v0 + 32);
  v14 = *(v0 + 40);
  v13 = *(v0 + 48);
  v15 = *(v0 + 23) >> 5;
  if (v15 > 1)
  {
    v145 = *(v0 + 24);
    if (v15 != 2)
    {
      v16 = v13;
      v144 = v14;
      v146 = v9;
      if (v15 == 3)
      {
        v17 = v11;

        v18 = v16;

        sub_1B1D7B64C();
        v19 = (v2 + 8);
        if (v10)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v17 = v11;

        v18 = v16;

        sub_1B1D7B64C();
        v19 = (v2 + 8);
        if (v10)
        {
LABEL_23:
          sub_1B1D7B64C();
          sub_1B1D7B62C();
          v42 = *v19;
          (*v19)(v6, v1);
          v42(v8, v1);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_1B1D88820;
          v44 = MEMORY[0x1E69E6158];
          *(v43 + 56) = MEMORY[0x1E69E6158];
          v45 = sub_1B1CED4EC();
          v46 = v146;
          *(v43 + 32) = v147;
          *(v43 + 40) = v46;
          *(v43 + 96) = v44;
          *(v43 + 104) = v45;
          v47 = v144;
          v48 = v145;
          *(v43 + 64) = v45;
          *(v43 + 72) = v48;
          *(v43 + 80) = v17;
          *(v43 + 136) = v44;
          *(v43 + 144) = v45;
          *(v43 + 112) = v47;
          *(v43 + 120) = v18;
LABEL_24:

          goto LABEL_35;
        }
      }

      sub_1B1D7B64C();
      sub_1B1D7B62C();
      v69 = *v19;
      (*v19)(v6, v1);
      v69(v8, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_1B1D88820;
      v71 = sub_1B1D7BE1C();
      v72 = [v71 _lp_userVisibleHost];

      v73 = sub_1B1D7BE4C();
      v75 = v74;

      v76 = MEMORY[0x1E69E6158];
      *(v70 + 56) = MEMORY[0x1E69E6158];
      v77 = sub_1B1CED4EC();
      *(v70 + 32) = v73;
      *(v70 + 40) = v75;
      *(v70 + 96) = v76;
      *(v70 + 104) = v77;
      v78 = v144;
      v79 = v145;
      *(v70 + 64) = v77;
      *(v70 + 72) = v79;
      *(v70 + 80) = v17;
      *(v70 + 136) = v76;
      *(v70 + 144) = v77;
      *(v70 + 112) = v78;
      *(v70 + 120) = v18;
      goto LABEL_35;
    }

    if (v10)
    {
      v32 = v11;
      if (v13)
      {
        v33 = v13;
        v144 = v14;

        v34 = v33;

        sub_1B1D7B64C();
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v35 = v9;
        v36 = *(v2 + 8);
        v36(v6, v1);
        v36(v8, v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v37 = swift_allocObject();
        *(v37 + 16) = xmmword_1B1D88820;
        v38 = MEMORY[0x1E69E6158];
        *(v37 + 56) = MEMORY[0x1E69E6158];
        v39 = sub_1B1CED4EC();
        *(v37 + 32) = v147;
        *(v37 + 40) = v35;
        *(v37 + 96) = v38;
        *(v37 + 104) = v39;
        v40 = v144;
        v41 = v145;
        *(v37 + 64) = v39;
        *(v37 + 72) = v41;
        *(v37 + 80) = v32;
        *(v37 + 136) = v38;
        *(v37 + 144) = v39;
        *(v37 + 112) = v40;
        *(v37 + 120) = v34;
      }

      else
      {

        sub_1B1D7B64C();
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v112 = *(v2 + 8);
        v112(v6, v1);
        v112(v8, v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v113 = swift_allocObject();
        *(v113 + 16) = xmmword_1B1D85D30;
        v114 = MEMORY[0x1E69E6158];
        *(v113 + 56) = MEMORY[0x1E69E6158];
        v115 = sub_1B1CED4EC();
        *(v113 + 32) = v147;
        *(v113 + 40) = v9;
        *(v113 + 96) = v114;
        *(v113 + 104) = v115;
        v116 = v145;
        *(v113 + 64) = v115;
        *(v113 + 72) = v116;
        *(v113 + 80) = v32;
      }

      goto LABEL_24;
    }

    if (v13)
    {
      v56 = v11;
      v57 = v13;
      v144 = v14;

      sub_1B1D7B64C();
      sub_1B1D7B64C();
      sub_1B1D7B62C();
      v58 = *(v2 + 8);
      v58(v6, v1);
      v58(v8, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_1B1D88820;
      v60 = sub_1B1D7BE1C();
      v61 = [v60 _lp_userVisibleHost];

      v62 = sub_1B1D7BE4C();
      v64 = v63;

      v65 = MEMORY[0x1E69E6158];
      *(v59 + 56) = MEMORY[0x1E69E6158];
      v66 = sub_1B1CED4EC();
      *(v59 + 32) = v62;
      *(v59 + 40) = v64;
      *(v59 + 96) = v65;
      *(v59 + 104) = v66;
      v67 = v144;
      v68 = v145;
      *(v59 + 64) = v66;
      *(v59 + 72) = v68;
      *(v59 + 80) = v56;
      *(v59 + 136) = v65;
      *(v59 + 144) = v66;
      *(v59 + 112) = v67;
      *(v59 + 120) = v57;
      goto LABEL_35;
    }

    v117 = v11;

    sub_1B1D7B64C();
    sub_1B1D7B64C();
    sub_1B1D7B62C();
    v118 = *(v2 + 8);
    v118(v6, v1);
    v118(v8, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_1B1D85D30;
    v120 = sub_1B1D7BE1C();
    v121 = [v120 _lp_userVisibleHost];

    v122 = sub_1B1D7BE4C();
    v124 = v123;

    v125 = MEMORY[0x1E69E6158];
    *(v119 + 56) = MEMORY[0x1E69E6158];
    v126 = sub_1B1CED4EC();
    *(v119 + 32) = v122;
    *(v119 + 40) = v124;
    *(v119 + 96) = v125;
    *(v119 + 104) = v126;
    v127 = v145;
    *(v119 + 64) = v126;
    *(v119 + 72) = v127;
LABEL_42:
    *(v119 + 80) = v117;
    goto LABEL_35;
  }

  v146 = v9;
  if (!v15)
  {
    v21 = *(v0 + 56);
    v20 = *(v0 + 64);
    v22 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v22 = v12 & 0xFFFFFFFFFFFFLL;
    }

    if (v22)
    {
      v23 = 1;
    }

    else
    {
      v23 = v13 == 0;
    }

    v24 = v23;
    if (v10)
    {
      if ((v24 & 1) == 0)
      {
        v96 = v13;

        sub_1B1D7B64C();
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v97 = *(v2 + 8);
        v97(v6, v1);
        v97(v8, v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v98 = swift_allocObject();
        *(v98 + 16) = xmmword_1B1D85D30;
        v99 = MEMORY[0x1E69E6158];
        *(v98 + 56) = MEMORY[0x1E69E6158];
        v100 = sub_1B1CED4EC();
        v101 = v146;
        *(v98 + 32) = v147;
        *(v98 + 40) = v101;
        *(v98 + 96) = v99;
        *(v98 + 104) = v100;
        *(v98 + 64) = v100;
        *(v98 + 72) = v14;
        *(v98 + 80) = v96;

        goto LABEL_35;
      }

      v145 = v12;
      v25 = v11;

      if (v20)
      {

        sub_1B1D7B64C();
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v26 = *(v2 + 8);
        v26(v6, v1);
        v26(v8, v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1B1D88820;
        v28 = MEMORY[0x1E69E6158];
        *(v27 + 56) = MEMORY[0x1E69E6158];
        v29 = sub_1B1CED4EC();
        v30 = v146;
        *(v27 + 32) = v147;
        *(v27 + 40) = v30;
        *(v27 + 96) = v28;
        *(v27 + 104) = v29;
        v31 = v145;
        *(v27 + 64) = v29;
        *(v27 + 72) = v31;
        *(v27 + 80) = v25;
        *(v27 + 136) = v28;
        *(v27 + 144) = v29;
        *(v27 + 112) = v21;
        *(v27 + 120) = v20;
      }

      else
      {
        sub_1B1D7B64C();
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v128 = *(v2 + 8);
        v128(v6, v1);
        v128(v8, v1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v129 = swift_allocObject();
        *(v129 + 16) = xmmword_1B1D85D30;
        v130 = MEMORY[0x1E69E6158];
        *(v129 + 56) = MEMORY[0x1E69E6158];
        v131 = sub_1B1CED4EC();
        v132 = v146;
        *(v129 + 32) = v147;
        *(v129 + 40) = v132;
        *(v129 + 96) = v130;
        *(v129 + 104) = v131;
        v133 = v145;
        *(v129 + 64) = v131;
        *(v129 + 72) = v133;
        *(v129 + 80) = v25;
      }

      goto LABEL_24;
    }

    if ((v24 & 1) == 0)
    {
      v102 = v13;

      sub_1B1D7B64C();
      sub_1B1D7B64C();
      sub_1B1D7B62C();
      v103 = *(v2 + 8);
      v103(v6, v1);
      v103(v8, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v104 = swift_allocObject();
      *(v104 + 16) = xmmword_1B1D85D30;
      v105 = sub_1B1D7BE1C();
      v106 = [v105 _lp_userVisibleHost];

      v107 = sub_1B1D7BE4C();
      v109 = v108;

      v110 = MEMORY[0x1E69E6158];
      *(v104 + 56) = MEMORY[0x1E69E6158];
      v111 = sub_1B1CED4EC();
      *(v104 + 32) = v107;
      *(v104 + 40) = v109;
      *(v104 + 96) = v110;
      *(v104 + 104) = v111;
      *(v104 + 64) = v111;
      *(v104 + 72) = v14;
      *(v104 + 80) = v102;
      goto LABEL_35;
    }

    v80 = v12;
    if (v20)
    {
      v81 = v11;

      sub_1B1D7B64C();
      sub_1B1D7B64C();
      v144 = sub_1B1D7B62C();
      v82 = *(v2 + 8);
      v82(v6, v1);
      v82(v8, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v83 = swift_allocObject();
      *(v83 + 16) = xmmword_1B1D88820;
      v84 = sub_1B1D7BE1C();
      v85 = [v84 _lp_userVisibleHost];

      v86 = sub_1B1D7BE4C();
      v88 = v87;

      v89 = MEMORY[0x1E69E6158];
      *(v83 + 56) = MEMORY[0x1E69E6158];
      v90 = sub_1B1CED4EC();
      *(v83 + 32) = v86;
      *(v83 + 40) = v88;
      *(v83 + 96) = v89;
      *(v83 + 104) = v90;
      *(v83 + 64) = v90;
      *(v83 + 72) = v80;
      *(v83 + 80) = v81;
      *(v83 + 136) = v89;
      *(v83 + 144) = v90;
      *(v83 + 112) = v21;
      *(v83 + 120) = v20;
      goto LABEL_35;
    }

    v117 = v11;

    sub_1B1D7B64C();
    sub_1B1D7B64C();
    sub_1B1D7B62C();
    v134 = *(v2 + 8);
    v134(v6, v1);
    v134(v8, v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_1B1D85D30;
    v135 = sub_1B1D7BE1C();
    v136 = [v135 _lp_userVisibleHost];

    v137 = sub_1B1D7BE4C();
    v139 = v138;

    v140 = MEMORY[0x1E69E6158];
    *(v119 + 56) = MEMORY[0x1E69E6158];
    v141 = sub_1B1CED4EC();
    *(v119 + 32) = v137;
    *(v119 + 40) = v139;
    *(v119 + 96) = v140;
    *(v119 + 104) = v141;
    *(v119 + 64) = v141;
    *(v119 + 72) = v80;
    goto LABEL_42;
  }

  v143 = v11;
  v49 = v13;

  sub_1B1D7B64C();
  sub_1B1D7B64C();
  v144 = sub_1B1D7B62C();
  v50 = *(v2 + 8);
  v50(v6, v1);
  v50(v8, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1B1D88820;
  v52 = MEMORY[0x1E69E6158];
  *(v51 + 56) = MEMORY[0x1E69E6158];
  v53 = sub_1B1CED4EC();
  *(v51 + 32) = v14;
  *(v51 + 40) = v49;
  *(v51 + 96) = v52;
  *(v51 + 104) = v53;
  *(v51 + 64) = v53;
  *(v51 + 72) = v12;
  *(v51 + 80) = v143;
  if (v10)
  {
    v54 = v146;

    v55 = v147;
  }

  else
  {
    v91 = sub_1B1D7BE1C();
    v92 = [v91 _lp_userVisibleHost];

    v55 = sub_1B1D7BE4C();
    v54 = v93;
  }

  *(v51 + 136) = v52;
  *(v51 + 144) = v53;
  *(v51 + 112) = v55;
  *(v51 + 120) = v54;
LABEL_35:
  v94 = sub_1B1D7BE2C();

  return v94;
}

uint64_t ASAuthorizationUIContext.PasskeyMessage.text.getter()
{
  v1 = v0;
  v2 = sub_1B1D7C08C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v260 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B1D7B65C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v260 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v260 - v13;
  v15 = type metadata accessor for ASAuthorizationUIContext.PasskeyMessage();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v260 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1D770B8(v1, v18, type metadata accessor for ASAuthorizationUIContext.PasskeyMessage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = *v18;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v70 = *v18;
      v71 = *(v18 + 1);
      v72 = v18[16];
      sub_1B1D7B64C();
      v73 = (v8 + 8);
      if (v72 != 1)
      {
        goto LABEL_60;
      }

      goto LABEL_34;
    case 2:
      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775150, &qword_1B1D863C0);
      (*(v3 + 32))(v6, &v18[*(v58 + 48)], v2);
      sub_1B1D7B64C();
      sub_1B1D7B63C();
      (*(v8 + 8))(v14, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v225 = swift_allocObject();
      *(v225 + 16) = xmmword_1B1D85C40;
      v226 = sub_1B1D7C03C();
      v228 = v227;
      *(v225 + 56) = MEMORY[0x1E69E6158];
      *(v225 + 64) = sub_1B1CED4EC();
      *(v225 + 32) = v226;
      *(v225 + 40) = v228;
      v229 = sub_1B1D7BE2C();

      (*(v3 + 8))(v6, v2);
      return v229;
    case 3:
      v264 = *(v18 + 1);
      v265 = v20;
      v59 = v18[16];
      v60 = *(v18 + 4);
      v263 = *(v18 + 3);
      v61 = *(v18 + 6);
      v62 = *(v18 + 7);
      if (v18[40] == 1)
      {
        if (v59)
        {
          if (v62)
          {
            goto LABEL_48;
          }

LABEL_84:
          sub_1B1D7B64C();
          sub_1B1D7B64C();
          sub_1B1D7B62C();
          v242 = *(v8 + 8);
          v242(v12, v7);
          v242(v14, v7);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
          v243 = swift_allocObject();
          *(v243 + 16) = xmmword_1B1D85D30;
          v244 = MEMORY[0x1E69E6158];
          *(v243 + 56) = MEMORY[0x1E69E6158];
          v245 = sub_1B1CED4EC();
          v246 = v264;
          *(v243 + 32) = v265;
          *(v243 + 40) = v246;
          *(v243 + 96) = v244;
          *(v243 + 104) = v245;
          v247 = v263;
          *(v243 + 64) = v245;
          *(v243 + 72) = v247;
          *(v243 + 80) = v60;
          sub_1B1CEF6D4();

          v229 = sub_1B1D7BE2C();

          goto LABEL_81;
        }

        if (v62)
        {
          sub_1B1D7B64C();
          sub_1B1D7B64C();
          v186 = sub_1B1D7B62C();
          v261 = v187;
          v262 = v186;
          v188 = *(v8 + 8);
          v188(v12, v7);
          v188(v14, v7);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
          v189 = swift_allocObject();
          *(v189 + 16) = xmmword_1B1D88820;
          v190 = sub_1B1D7BE1C();
          v191 = [v190 _lp_userVisibleHost];
LABEL_69:
          v195 = v191;

          v196 = sub_1B1D7BE4C();
          v198 = v197;

          v199 = MEMORY[0x1E69E6158];
          *(v189 + 56) = MEMORY[0x1E69E6158];
          v200 = sub_1B1CED4EC();
          *(v189 + 32) = v196;
          *(v189 + 40) = v198;
          *(v189 + 96) = v199;
          *(v189 + 104) = v200;
          v201 = v263;
          *(v189 + 64) = v200;
          *(v189 + 72) = v201;
          *(v189 + 80) = v60;
          *(v189 + 136) = v199;
          *(v189 + 144) = v200;
          *(v189 + 112) = v61;
          *(v189 + 120) = v62;

          v229 = sub_1B1D7BE2C();

          goto LABEL_81;
        }

        sub_1B1D7B64C();
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v248 = *(v8 + 8);
        v248(v12, v7);
        v248(v14, v7);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v249 = swift_allocObject();
        *(v249 + 16) = xmmword_1B1D85D30;
        v250 = sub_1B1D7BE1C();
        v251 = [v250 _lp_userVisibleHost];
      }

      else
      {
        if (v59)
        {
          if (v62)
          {
LABEL_48:
            sub_1B1D7B64C();
            sub_1B1D7B64C();
            v262 = sub_1B1D7B62C();
            v123 = *(v8 + 8);
            v123(v12, v7);
            v123(v14, v7);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
            v124 = swift_allocObject();
            *(v124 + 16) = xmmword_1B1D88820;
            v125 = MEMORY[0x1E69E6158];
            *(v124 + 56) = MEMORY[0x1E69E6158];
            v126 = sub_1B1CED4EC();
            v127 = v264;
            *(v124 + 32) = v265;
            *(v124 + 40) = v127;
            *(v124 + 96) = v125;
            *(v124 + 104) = v126;
            v128 = v263;
            *(v124 + 64) = v126;
            *(v124 + 72) = v128;
            *(v124 + 80) = v60;
            *(v124 + 136) = v125;
            *(v124 + 144) = v126;
            *(v124 + 112) = v61;
            *(v124 + 120) = v62;
            sub_1B1CEF6D4();

            v229 = sub_1B1D7BE2C();

            goto LABEL_81;
          }

          goto LABEL_84;
        }

        if (v62)
        {
          sub_1B1D7B64C();
          sub_1B1D7B64C();
          v192 = sub_1B1D7B62C();
          v261 = v193;
          v262 = v192;
          v194 = *(v8 + 8);
          v194(v12, v7);
          v194(v14, v7);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
          v189 = swift_allocObject();
          *(v189 + 16) = xmmword_1B1D88820;
          v190 = sub_1B1D7BE1C();
          v191 = [v190 _lp_userVisibleHost];
          goto LABEL_69;
        }

        sub_1B1D7B64C();
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v252 = *(v8 + 8);
        v252(v12, v7);
        v252(v14, v7);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v249 = swift_allocObject();
        *(v249 + 16) = xmmword_1B1D85D30;
        v250 = sub_1B1D7BE1C();
        v251 = [v250 _lp_userVisibleHost];
      }

      v253 = v251;

      v254 = sub_1B1D7BE4C();
      v256 = v255;

      v257 = MEMORY[0x1E69E6158];
      *(v249 + 56) = MEMORY[0x1E69E6158];
      v258 = sub_1B1CED4EC();
      *(v249 + 32) = v254;
      *(v249 + 40) = v256;
      *(v249 + 96) = v257;
      *(v249 + 104) = v258;
      v259 = v263;
      *(v249 + 64) = v258;
      *(v249 + 72) = v259;
      *(v249 + 80) = v60;

      v229 = sub_1B1D7BE2C();

      goto LABEL_81;
    case 4:
      v40 = *v18;
      v41 = *(v18 + 1);
      v42 = v18[16];
      v265 = *(v18 + 4);
      v43 = (v8 + 8);
      if (v18[40] == 1)
      {
        sub_1B1D7B64C();
        if (v42)
        {
          goto LABEL_41;
        }
      }

      else
      {
        sub_1B1D7B64C();
        if (v42)
        {
LABEL_41:
          sub_1B1D7B64C();
          sub_1B1D7B62C();
          v109 = *v43;
          (*v43)(v12, v7);
          v109(v14, v7);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
          v110 = swift_allocObject();
          *(v110 + 16) = xmmword_1B1D85C40;
          *(v110 + 56) = MEMORY[0x1E69E6158];
          *(v110 + 64) = sub_1B1CED4EC();
          *(v110 + 32) = v40;
          *(v110 + 40) = v41;

          v229 = sub_1B1D7BE2C();

          goto LABEL_81;
        }
      }

      sub_1B1D7B64C();
      sub_1B1D7B62C();
      v168 = *v43;
      (*v43)(v12, v7);
      v168(v14, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v169 = swift_allocObject();
      *(v169 + 16) = xmmword_1B1D85C40;
      v170 = sub_1B1D7BE1C();
      v171 = [v170 _lp_userVisibleHost];

      v172 = sub_1B1D7BE4C();
      v174 = v173;

      *(v169 + 56) = MEMORY[0x1E69E6158];
      *(v169 + 64) = sub_1B1CED4EC();
      *(v169 + 32) = v172;
      *(v169 + 40) = v174;
      v229 = sub_1B1D7BE2C();

      goto LABEL_81;
    case 5:
      v264 = *(v18 + 1);
      v265 = v20;
      LODWORD(v263) = v18[16];
      v74 = *(v18 + 3);
      v75 = *(v18 + 4);
      v76 = *(v18 + 6);
      v77 = *(v18 + 7);
      if (v18[40] == 1)
      {
        sub_1B1D7B64C();
        sub_1B1D7B63C();
        (*(v8 + 8))(v14, v7);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_1B1D88820;
        v79 = MEMORY[0x1E69E6158];
        *(v78 + 56) = MEMORY[0x1E69E6158];
        v80 = sub_1B1CED4EC();
        *(v78 + 32) = v76;
        *(v78 + 40) = v77;
        *(v78 + 96) = v79;
        *(v78 + 104) = v80;
        *(v78 + 64) = v80;
        *(v78 + 72) = v74;
        *(v78 + 80) = v75;

        if (v263)
        {
          goto LABEL_37;
        }

        goto LABEL_76;
      }

      sub_1B1D7B64C();
      sub_1B1D7B64C();
      v261 = sub_1B1D7B62C();
      v262 = v141;
      v142 = *(v8 + 8);
      v142(v12, v7);
      v142(v14, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v143 = swift_allocObject();
      *(v143 + 16) = xmmword_1B1D88820;
      v144 = MEMORY[0x1E69E6158];
      *(v143 + 56) = MEMORY[0x1E69E6158];
      v145 = sub_1B1CED4EC();
      *(v143 + 32) = v76;
      *(v143 + 40) = v77;
      *(v143 + 96) = v144;
      *(v143 + 104) = v145;
      *(v143 + 64) = v145;
      *(v143 + 72) = v74;
      *(v143 + 80) = v75;

      if (v263)
      {
        goto LABEL_62;
      }

      goto LABEL_78;
    case 6:
      v87 = *v18;
      v88 = *(v18 + 1);
      v89 = v18[16];
      v90 = *(v18 + 3);
      v91 = *(v18 + 4);
      v92 = v18[40];
      v93 = *(v18 + 7);
      v263 = *(v18 + 6);
      v264 = v93;
      v265 = v90;
      v94 = (v8 + 8);
      if (v92 == 1)
      {
        sub_1B1D7B64C();
        if (v89)
        {
          goto LABEL_59;
        }
      }

      else
      {
        sub_1B1D7B64C();
        if (v89)
        {
LABEL_59:
          sub_1B1D7B64C();
          sub_1B1D7B62C();
          v149 = *v94;
          (*v94)(v12, v7);
          v149(v14, v7);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
          v150 = swift_allocObject();
          *(v150 + 16) = xmmword_1B1D88820;
          v151 = MEMORY[0x1E69E6158];
          *(v150 + 56) = MEMORY[0x1E69E6158];
          v152 = sub_1B1CED4EC();
          *(v150 + 32) = v87;
          *(v150 + 40) = v88;
          *(v150 + 96) = v151;
          *(v150 + 104) = v152;
          v154 = v263;
          v153 = v264;
          *(v150 + 64) = v152;
          *(v150 + 72) = v154;
          *(v150 + 80) = v153;
          *(v150 + 136) = v151;
          *(v150 + 144) = v152;
          *(v150 + 112) = v265;
          *(v150 + 120) = v91;
          goto LABEL_80;
        }
      }

      sub_1B1D7B64C();
      v262 = sub_1B1D7B62C();
      v207 = *v94;
      (*v94)(v12, v7);
      v207(v14, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v208 = swift_allocObject();
      *(v208 + 16) = xmmword_1B1D88820;
      v209 = sub_1B1D7BE1C();
      v210 = [v209 _lp_userVisibleHost];

      v211 = sub_1B1D7BE4C();
      v213 = v212;

      v214 = MEMORY[0x1E69E6158];
      *(v208 + 56) = MEMORY[0x1E69E6158];
      v215 = sub_1B1CED4EC();
      *(v208 + 32) = v211;
      *(v208 + 40) = v213;
      *(v208 + 96) = v214;
      *(v208 + 104) = v215;
      v217 = v263;
      v216 = v264;
      *(v208 + 64) = v215;
      *(v208 + 72) = v217;
      *(v208 + 80) = v216;
      *(v208 + 136) = v214;
      *(v208 + 144) = v215;
      *(v208 + 112) = v265;
      *(v208 + 120) = v91;
LABEL_74:

      goto LABEL_75;
    case 7:
      v63 = *(v18 + 1);
      v64 = v18[16];
      v66 = *(v18 + 3);
      v65 = *(v18 + 4);
      v67 = v18[41];
      v68 = (v8 + 8);
      if (v18[40] == 1)
      {
        if (v18[16])
        {
          v265 = *(v18 + 3);
          v69 = v20;
LABEL_22:
          sub_1B1D7B64C();
          sub_1B1D7B64C();
          sub_1B1D7B62C();
          v230 = *v68;
          (*v68)(v12, v7);
          v230(v14, v7);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
          v231 = swift_allocObject();
          *(v231 + 16) = xmmword_1B1D85D30;
          v232 = MEMORY[0x1E69E6158];
          *(v231 + 56) = MEMORY[0x1E69E6158];
          v233 = sub_1B1CED4EC();
          *(v231 + 32) = v69;
          *(v231 + 40) = v63;
          *(v231 + 96) = v232;
          *(v231 + 104) = v233;
          v234 = v265;
          *(v231 + 64) = v233;
          *(v231 + 72) = v234;
          *(v231 + 80) = v65;
          goto LABEL_80;
        }

        v202 = *v18;
      }

      else
      {
        if (v18[16])
        {
          v265 = *(v18 + 3);
          v69 = v20;
          goto LABEL_22;
        }

        v206 = *v18;
      }

      sub_1B1D7B64C();
      sub_1B1D7B64C();
      v265 = sub_1B1D7B62C();
      v203 = *v68;
      (*v68)(v12, v7);
      v203(v14, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v204 = swift_allocObject();
      *(v204 + 16) = xmmword_1B1D85D30;
      v205 = sub_1B1D7BE1C();
      v235 = [v205 _lp_userVisibleHost];

      v236 = sub_1B1D7BE4C();
      v238 = v237;

      v239 = MEMORY[0x1E69E6158];
      *(v204 + 56) = MEMORY[0x1E69E6158];
      v240 = sub_1B1CED4EC();
      *(v204 + 32) = v236;
      *(v204 + 40) = v238;
      *(v204 + 96) = v239;
      *(v204 + 104) = v240;
      *(v204 + 64) = v240;
      *(v204 + 72) = v66;
      *(v204 + 80) = v65;

      v229 = sub_1B1D7BE2C();

      goto LABEL_81;
    case 8:
      v264 = *(v18 + 1);
      v265 = v20;
      LODWORD(v263) = v18[16];
      v98 = *(v18 + 3);
      v75 = *(v18 + 4);
      v99 = *(v18 + 6);
      v100 = *(v18 + 7);
      if (v18[40] == 1)
      {
        sub_1B1D7B64C();
        sub_1B1D7B63C();
        (*(v8 + 8))(v14, v7);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v78 = swift_allocObject();
        *(v78 + 16) = xmmword_1B1D88820;
        v101 = MEMORY[0x1E69E6158];
        *(v78 + 56) = MEMORY[0x1E69E6158];
        v80 = sub_1B1CED4EC();
        *(v78 + 32) = v99;
        *(v78 + 40) = v100;
        *(v78 + 96) = v101;
        *(v78 + 104) = v80;
        *(v78 + 64) = v80;
        *(v78 + 72) = v98;
        *(v78 + 80) = v75;

        if (v263)
        {
LABEL_37:
          v103 = v264;
          v102 = v265;
          sub_1B1CEF6D4();
          v104 = v102;
          v105 = v103;
        }

        else
        {
LABEL_76:
          v218 = sub_1B1D7BE1C();
          v219 = [v218 _lp_userVisibleHost];
          v262 = v75;
          v220 = v219;

          v104 = sub_1B1D7BE4C();
          v105 = v221;
        }

        *(v78 + 136) = MEMORY[0x1E69E6158];
        *(v78 + 144) = v80;
        *(v78 + 112) = v104;
        *(v78 + 120) = v105;
        sub_1B1CF8E9C();

        v229 = sub_1B1D7BE2C();
      }

      else
      {
        sub_1B1D7B64C();
        sub_1B1D7B64C();
        v261 = sub_1B1D7B62C();
        v262 = v162;
        v163 = *(v8 + 8);
        v163(v12, v7);
        v163(v14, v7);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v143 = swift_allocObject();
        *(v143 + 16) = xmmword_1B1D88820;
        v144 = MEMORY[0x1E69E6158];
        *(v143 + 56) = MEMORY[0x1E69E6158];
        v145 = sub_1B1CED4EC();
        *(v143 + 32) = v99;
        *(v143 + 40) = v100;
        *(v143 + 96) = v144;
        *(v143 + 104) = v145;
        *(v143 + 64) = v145;
        *(v143 + 72) = v98;
        *(v143 + 80) = v75;

        if (v263)
        {
LABEL_62:
          v165 = v264;
          v164 = v265;
          sub_1B1CEF6D4();
          v166 = v164;
          v167 = v165;
        }

        else
        {
LABEL_78:
          v222 = sub_1B1D7BE1C();
          v223 = [v222 _lp_userVisibleHost];

          v166 = sub_1B1D7BE4C();
          v167 = v224;
        }

        *(v143 + 136) = v144;
        *(v143 + 144) = v145;
        *(v143 + 112) = v166;
        *(v143 + 120) = v167;
        sub_1B1CF8E9C();

        v229 = sub_1B1D7BE2C();
      }

      goto LABEL_82;
    case 9:
      v51 = *v18;
      v52 = *(v18 + 1);
      v53 = v18[16];
      v54 = *(v18 + 4);
      v264 = *(v18 + 3);
      v265 = v52;
      v55 = v18[40];
      v56 = *(v18 + 7);
      v262 = *(v18 + 6);
      v263 = v56;
      v57 = (v8 + 8);
      if (v55 == 1)
      {
        sub_1B1D7B64C();
        if (v53)
        {
          goto LABEL_45;
        }
      }

      else
      {
        sub_1B1D7B64C();
        if (v53)
        {
LABEL_45:
          sub_1B1D7B64C();
          sub_1B1D7B62C();
          v117 = *v57;
          (*v57)(v12, v7);
          v117(v14, v7);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
          v118 = swift_allocObject();
          *(v118 + 16) = xmmword_1B1D88820;
          v119 = MEMORY[0x1E69E6158];
          *(v118 + 56) = MEMORY[0x1E69E6158];
          v120 = sub_1B1CED4EC();
          *(v118 + 32) = v51;
          *(v118 + 40) = v265;
          *(v118 + 96) = v119;
          *(v118 + 104) = v120;
          v122 = v262;
          v121 = v263;
          *(v118 + 64) = v120;
          *(v118 + 72) = v122;
          *(v118 + 80) = v121;
          *(v118 + 136) = v119;
          *(v118 + 144) = v120;
          *(v118 + 112) = v264;
          *(v118 + 120) = v54;
          sub_1B1CEF6D4();

          v229 = sub_1B1D7BE2C();

          goto LABEL_81;
        }
      }

      sub_1B1D7B64C();
      sub_1B1D7B62C();
      v175 = *v57;
      (*v57)(v12, v7);
      v175(v14, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v176 = swift_allocObject();
      *(v176 + 16) = xmmword_1B1D88820;
      v177 = sub_1B1D7BE1C();
      v178 = [v177 _lp_userVisibleHost];

      v179 = sub_1B1D7BE4C();
      v181 = v180;

      v182 = MEMORY[0x1E69E6158];
      *(v176 + 56) = MEMORY[0x1E69E6158];
      v183 = sub_1B1CED4EC();
      *(v176 + 32) = v179;
      *(v176 + 40) = v181;
      *(v176 + 96) = v182;
      *(v176 + 104) = v183;
      v185 = v262;
      v184 = v263;
      *(v176 + 64) = v183;
      *(v176 + 72) = v185;
      *(v176 + 80) = v184;
      *(v176 + 136) = v182;
      *(v176 + 144) = v183;
      *(v176 + 112) = v264;
      *(v176 + 120) = v54;

LABEL_75:
      v229 = sub_1B1D7BE2C();

LABEL_81:
      sub_1B1CF8E9C();
LABEL_82:

      return v229;
    case 10:
      v70 = *v18;
      v71 = *(v18 + 1);
      v95 = v18[16];
      sub_1B1D7B64C();
      v73 = (v8 + 8);
      if (v95 == 1)
      {
LABEL_34:
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v96 = *v73;
        (*v73)(v12, v7);
        v96(v14, v7);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v97 = swift_allocObject();
        *(v97 + 16) = xmmword_1B1D85C40;
        *(v97 + 56) = MEMORY[0x1E69E6158];
        *(v97 + 64) = sub_1B1CED4EC();
        *(v97 + 32) = v70;
        *(v97 + 40) = v71;

        v229 = sub_1B1D7BE2C();

        sub_1B1CF8E9C();
      }

      else
      {
LABEL_60:
        sub_1B1D7B64C();
        sub_1B1D7B62C();
        v155 = *v73;
        (*v73)(v12, v7);
        v155(v14, v7);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v156 = swift_allocObject();
        *(v156 + 16) = xmmword_1B1D85C40;
        v157 = sub_1B1D7BE1C();
        v158 = [v157 _lp_userVisibleHost];

        v159 = sub_1B1D7BE4C();
        v161 = v160;

        *(v156 + 56) = MEMORY[0x1E69E6158];
        *(v156 + 64) = sub_1B1CED4EC();
        *(v156 + 32) = v159;
        *(v156 + 40) = v161;
        v229 = sub_1B1D7BE2C();

        sub_1B1CF8E9C();
      }

      return v229;
    case 11:
      v35 = *(v18 + 1);
      v36 = v18[16];
      sub_1B1D7B64C();
      sub_1B1D7B63C();
      (*(v8 + 8))(v14, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1B1D85C40;
      if (v36 == 1)
      {

        v38 = v20;
        v39 = v35;
      }

      else
      {
        v106 = sub_1B1D7BE1C();
        v107 = [v106 _lp_userVisibleHost];

        v38 = sub_1B1D7BE4C();
        v39 = v108;
      }

      *(v37 + 56) = MEMORY[0x1E69E6158];
      *(v37 + 64) = sub_1B1CED4EC();
      *(v37 + 32) = v38;
      *(v37 + 40) = v39;
      sub_1B1CF8E9C();
      v229 = sub_1B1D7BE2C();

      goto LABEL_82;
    case 12:
      v44 = *(v18 + 1);
      v45 = v18[16];
      v46 = *(v18 + 3);
      v264 = *(v18 + 4);
      v47 = *(v18 + 6);
      v263 = sub_1B1D77524();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1B1D85D30;
      v265 = v47;
      if (v45 == 1)
      {

        v49 = v20;
        v50 = v44;
      }

      else
      {
        v111 = sub_1B1D7BE1C();
        v112 = [v111 _lp_userVisibleHost];

        v49 = sub_1B1D7BE4C();
        v50 = v113;
      }

      v114 = MEMORY[0x1E69E6158];
      *(v48 + 56) = MEMORY[0x1E69E6158];
      v115 = sub_1B1CED4EC();
      *(v48 + 64) = v115;
      *(v48 + 32) = v49;
      *(v48 + 40) = v50;
      sub_1B1CF8E9C();
      *(v48 + 96) = v114;
      *(v48 + 104) = v115;
      v116 = v264;
      *(v48 + 72) = v46;
      *(v48 + 80) = v116;
      v229 = sub_1B1D7BE2C();

      goto LABEL_57;
    case 13:
      v81 = *(v18 + 1);
      v82 = v18[16];
      v83 = *(v18 + 4);
      sub_1B1D776C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v84 = swift_allocObject();
      *(v84 + 16) = xmmword_1B1D85C40;
      if (v82 == 1)
      {

        v85 = v20;
        v86 = v81;
      }

      else
      {
        v146 = sub_1B1D7BE1C();
        v147 = [v146 _lp_userVisibleHost];

        v85 = sub_1B1D7BE4C();
        v86 = v148;
      }

      *(v84 + 56) = MEMORY[0x1E69E6158];
      *(v84 + 64) = sub_1B1CED4EC();
      *(v84 + 32) = v85;
      *(v84 + 40) = v86;
      sub_1B1CF8E9C();
      v229 = sub_1B1D7BE2C();

LABEL_57:

      goto LABEL_82;
    default:
      v21 = *v18;
      v22 = *(v18 + 1);
      v23 = v18[16];
      v24 = *(v18 + 4);
      v26 = *(v18 + 6);
      v25 = *(v18 + 7);
      v263 = *(v18 + 3);
      v264 = v26;
      v265 = v25;
      sub_1B1D7B64C();
      v27 = (v8 + 8);
      if (v23 != 1)
      {
        sub_1B1D7B64C();
        v262 = sub_1B1D7B62C();
        v129 = *v27;
        (*v27)(v12, v7);
        v129(v14, v7);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
        v130 = swift_allocObject();
        *(v130 + 16) = xmmword_1B1D88820;
        v131 = sub_1B1D7BE1C();
        v132 = [v131 _lp_userVisibleHost];

        v133 = sub_1B1D7BE4C();
        v135 = v134;

        v136 = MEMORY[0x1E69E6158];
        *(v130 + 56) = MEMORY[0x1E69E6158];
        v137 = sub_1B1CED4EC();
        *(v130 + 32) = v133;
        *(v130 + 40) = v135;
        *(v130 + 96) = v136;
        *(v130 + 104) = v137;
        v138 = v263;
        v139 = v264;
        *(v130 + 64) = v137;
        *(v130 + 72) = v138;
        *(v130 + 80) = v24;
        *(v130 + 136) = v136;
        *(v130 + 144) = v137;
        v140 = v265;
        *(v130 + 112) = v139;
        *(v130 + 120) = v140;
        goto LABEL_74;
      }

      sub_1B1D7B64C();
      sub_1B1D7B62C();
      v28 = *v27;
      (*v27)(v12, v7);
      v28(v14, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775040, &qword_1B1D85E70);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1B1D88820;
      v30 = MEMORY[0x1E69E6158];
      *(v29 + 56) = MEMORY[0x1E69E6158];
      v31 = sub_1B1CED4EC();
      *(v29 + 32) = v21;
      *(v29 + 40) = v22;
      *(v29 + 96) = v30;
      *(v29 + 104) = v31;
      v32 = v263;
      v33 = v264;
      *(v29 + 64) = v31;
      *(v29 + 72) = v32;
      *(v29 + 80) = v24;
      *(v29 + 136) = v30;
      *(v29 + 144) = v31;
      v34 = v265;
      *(v29 + 112) = v33;
      *(v29 + 120) = v34;
LABEL_80:
      sub_1B1CEF6D4();

      v229 = sub_1B1D7BE2C();

      goto LABEL_81;
  }
}

uint64_t ASAuthorizationUIContext.Service.name.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    v3 = *(v0 + 8);
  }

  else
  {
    v4 = *v0;
    v5 = *(v0 + 8);
    v6 = sub_1B1D7BE1C();
    v7 = [v6 _lp_userVisibleHost];

    v1 = sub_1B1D7BE4C();
  }

  return v1;
}

uint64_t sub_1B1D770B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ASAuthorizationUIContext.MainButton.ButtonText.text.getter()
{
  v1 = sub_1B1D7B65C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = *v0;
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) != 2)
    {
      if (v9 <= 3)
      {
        if (v9 != 2)
        {
          goto LABEL_11;
        }
      }

      else if (v9 <= 5)
      {
        if (v9 == 4)
        {
          goto LABEL_11;
        }
      }

      else if (v9 != 7)
      {
        goto LABEL_11;
      }

      sub_1B1D7B64C();
      sub_1B1D7B64C();
      v10 = sub_1B1D7B62C();
      v12 = *(v2 + 8);
      v12(v6, v1);
      v12(v8, v1);
      return v10;
    }
  }

  else
  {
    *(v0 + 8);
  }

LABEL_11:
  sub_1B1D7B64C();
  v10 = sub_1B1D7B63C();
  (*(v2 + 8))(v8, v1);
  return v10;
}

uint64_t sub_1B1D77524()
{
  v0 = sub_1B1D7B65C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1B1D7B89C() & 1) == 0)
  {
    sub_1B1D7B8BC();
  }

  sub_1B1D7B8AC();
  sub_1B1D7B64C();
  v5 = sub_1B1D7B63C();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1B1D776C4()
{
  v0 = sub_1B1D7B65C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1B1D7B89C() & 1) == 0)
  {
    sub_1B1D7B8BC();
  }

  sub_1B1D7B8AC();
  sub_1B1D7B64C();
  v5 = sub_1B1D7B63C();
  (*(v1 + 8))(v4, v0);
  return v5;
}

void getWBSPrivacyProxyChangeNotification_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSNotificationName getWBSPrivacyProxyChangeNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"_ASSafariSharedUISoftLinking.h" lineNumber:24 description:{@"%s", dlerror()}];

  __break(1u);
}

void getSFScreenScale_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CGFloat getSFScreenScale(void)"];
  [v0 handleFailureInFunction:v1 file:@"_ASPasswordManagerIconController_iOS.m" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
}

void MobileSafariLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *MobileSafariLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_ASPasswordManagerIconController_iOS.m" lineNumber:38 description:{@"%s", *a1}];

  __break(1u);
}

void __getWBSCacheClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWBSCacheClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_ASPasswordManagerIconController_iOS.m" lineNumber:49 description:{@"Unable to find class %s", "WBSCache"}];

  __break(1u);
}

void SafariSharedLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SafariSharedLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_ASPasswordManagerIconController_iOS.m" lineNumber:48 description:{@"%s", *a1}];

  __break(1u);
}

void __getWBSPrivacyProxyAvailabilityManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWBSPrivacyProxyAvailabilityManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_ASSafariSharedUISoftLinking.h" lineNumber:23 description:{@"Unable to find class %s", "WBSPrivacyProxyAvailabilityManager"}];

  __break(1u);
}

void SafariSharedUILibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SafariSharedUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_ASSafariSharedUISoftLinking.h" lineNumber:6 description:{@"%s", *a1}];

  __break(1u);
}

void __getWBUHistoryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWBUHistoryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_ASPasswordManagerIconController_iOS.m" lineNumber:56 description:{@"Unable to find class %s", "WBUHistory"}];

  __break(1u);
}

void __getWBUHistoryClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *WebUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_ASPasswordManagerIconController_iOS.m" lineNumber:55 description:{@"%s", *a1}];

  __break(1u);
}

void __getWBSHistoryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWBSHistoryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_ASPasswordManagerIconController_iOS.m" lineNumber:50 description:{@"Unable to find class %s", "WBSHistory"}];

  __break(1u);
}

void __getWBSImageUtilitiesClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWBSImageUtilitiesClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_ASSafariSharedUISoftLinking.h" lineNumber:14 description:{@"Unable to find class %s", "WBSImageUtilities"}];

  __break(1u);
}

void __getWBSTouchIconResponseClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getWBSTouchIconResponseClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_ASSafariSharedUISoftLinking.h" lineNumber:18 description:{@"Unable to find class %s", "WBSTouchIconResponse"}];

  __break(1u);
}

void __getAAUIProfilePictureStoreClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAAUIProfilePictureStoreClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_ASAccountSharingGroupMemberDataManager.m" lineNumber:48 description:{@"Unable to find class %s", "AAUIProfilePictureStore"}];

  __break(1u);
}

void __getAAUIProfilePictureStoreClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppleAccountUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_ASAccountSharingGroupMemberDataManager.m" lineNumber:47 description:{@"%s", *a1}];

  __break(1u);
}

void __getPMCredentialRequestPaneHeaderClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPMCredentialRequestPaneHeaderClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ASCredentialRequestPaneContext.m" lineNumber:20 description:{@"Unable to find class %s", "PMCredentialRequestPaneHeader"}];

  __break(1u);
}

void __getPMCredentialRequestPaneHeaderClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PasswordManagerUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ASCredentialRequestPaneContext.m" lineNumber:13 description:{@"%s", *a1}];

  __break(1u);
}

void __getSFAuthenticationSessionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSFAuthenticationSessionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"ASWebAuthenticationSessionIOS.m" lineNumber:83 description:{@"Unable to find class %s", "SFAuthenticationSession"}];

  __break(1u);
}

void __getSFAuthenticationSessionClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SafariServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"ASWebAuthenticationSessionIOS.m" lineNumber:82 description:{@"%s", *a1}];

  __break(1u);
}