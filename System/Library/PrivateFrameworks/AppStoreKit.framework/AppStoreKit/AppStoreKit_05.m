uint64_t sub_1E13993E0()
{
  v1 = v0;
  v2 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v48 - v4;
  v6 = sub_1E1AF330C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - v11;
  sub_1E13988B0(&v61);
  if (v61)
  {
    v55 = v61;
    v56[0] = *v62;
    *(v56 + 9) = *&v62[9];
    v13 = *(v0 + 40);
    if (v13)
    {
      v14 = *(v13 + 32);
      v49 = *(v13 + 24);
      v15 = qword_1ECEB1120;
      v50 = v14;
      v51 = v1;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = __swift_project_value_buffer(v6, qword_1ECEB9098);
      v17 = *(v7 + 16);
      v17(v12, v16, v6);
      v18 = sub_1E1AF649C();
      (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
      v17(v10, v12, v6);
      v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      (*(v7 + 32))(v21 + v19, v10, v6);
      v22 = (v21 + v20);
      v23 = v50;
      *v22 = v49;
      v22[1] = v23;
      sub_1E17957F8(0, 0, v5, &unk_1E1B04820, v21);

      sub_1E1308058(v5, &qword_1ECEB2D20);
      (*(v7 + 8))(v12, v6);
      v1 = v51;
    }

    if (qword_1EE1E35B0 != -1)
    {
      swift_once();
    }

    v24 = sub_1E1AF591C();
    __swift_project_value_buffer(v24, qword_1EE216158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v25 = sub_1E139D394(&v55, &v61);
    v26 = (*(*v61 + 192))(v25);
    v28 = v27;

    *(&v58 + 1) = MEMORY[0x1E69E6158];
    *&v57 = v26;
    *(&v57 + 1) = v28;
    sub_1E1AF385C();
    sub_1E1308058(&v57, &qword_1ECEB2DF0);
    sub_1E1308058(&v61 + 8, &qword_1ECEB2DF0);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF548C();

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v29 = v1;
      v30 = *(v1 + 24);
      ObjectType = swift_getObjectType();
      v32 = *(v30 + 8);
      v1 = v29;
      (*(v32 + 8))(v55, &v55 + 8, ObjectType);
      swift_unknownObjectRelease();
    }

    sub_1E139D394(&v55, &v61);

    v33 = v62[24];
    sub_1E1308058(&v61 + 8, &qword_1ECEB2DF0);
    if (v33 == 2)
    {
      return sub_1E1308058(&v55, &qword_1ECEB2CC0);
    }

    v34 = *(v1 + 158);
    *(v1 + 158) = v33 & 1;
    sub_1E1394114(v34);
    if (*(v1 + 158) == 1)
    {
      _s11AppStoreKit0A20OfferButtonPresenterC6update13ignoringCacheySb_tF_0();
      return sub_1E1308058(&v55, &qword_1ECEB2CC0);
    }

    if (!*(v1 + 128))
    {
      return sub_1E1308058(&v55, &qword_1ECEB2CC0);
    }

    v37 = *(v1 + 136);
    v38 = (v1 + 200);
    v39 = *(v1 + 273);
    v40 = *(v1 + 241);
    if ((v39 - 4) >= 2 && v39 != 1)
    {
      if (v39 != 3)
      {
        v41 = 2;
        goto LABEL_22;
      }

      v40 = *v38;
    }

    v41 = v40 & 1;
LABEL_22:
    v42 = swift_unknownObjectRetain();
    sub_1E1397820(v42, v37, v41, &v57);
    v43 = *(v1 + 248);
    *&v62[16] = *(v1 + 232);
    v63[0] = v43;
    *(v63 + 10) = *(v1 + 258);
    v44 = *(v1 + 216);
    v61 = *v38;
    *v62 = v44;
    v53[2] = *&v62[16];
    v54[0] = v43;
    *(v54 + 10) = *(v63 + 10);
    v53[0] = v61;
    v53[1] = v44;
    *(v1 + 258) = *(v60 + 10);
    v45 = v57;
    v46 = v58;
    v47 = v60[0];
    *(v1 + 232) = v59;
    *(v1 + 248) = v47;
    *v38 = v45;
    *(v1 + 216) = v46;
    sub_1E139D308(&v61, v52);
    sub_1E139D308(&v57, v52);
    sub_1E139CE5C(v53);
    sub_1E139858C(&v61);
    sub_1E139CE5C(&v61);
    sub_1E139CE5C(&v57);
    swift_unknownObjectRelease();
    return sub_1E1308058(&v55, &qword_1ECEB2CC0);
  }

  sub_1E1308058(&v61, &qword_1ECEB2CA8);
  if (qword_1EE1D27B0 != -1)
  {
    swift_once();
  }

  v35 = sub_1E1AF591C();
  __swift_project_value_buffer(v35, qword_1EE215450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF54AC();
}

uint64_t sub_1E1399E70(uint64_t a1, uint64_t a2)
{
  sub_1E139CDAC(a1, a2);

  return swift_unknownObjectRelease();
}

void (*sub_1E1399EAC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_1E1399F44;
}

void sub_1E1399F44(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 24);
  if (a2)
  {
    v5 = swift_unknownObjectRetain();
    sub_1E139CDAC(v5, v3);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1E139CDAC(v4, v3);
  }

  swift_unknownObjectRelease();

  free(v2);
}

id sub_1E1399FF8(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1E1AF5DBC();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1E1AEFB2C();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1E139A0D4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_20;
    }

    v4 = a1;
    v5 = a2;
    sub_1E13006E4(0, &qword_1ECEB2CB8);
    v6 = v3;
    v7 = v2;
    v8 = sub_1E1AF6D0C();

    a1 = v4;
    a2 = v5;
    if ((v8 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v3)
  {
    goto LABEL_20;
  }

  v10 = *(a1 + 16);
  v11 = *(a2 + 16);
  if (v10)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = a1;
    v13 = a2;
    sub_1E13006E4(0, &qword_1ECEB2CB8);
    v14 = v11;
    v15 = v10;
    v16 = sub_1E1AF6D0C();

    a1 = v12;
    a2 = v13;
    if ((v16 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else if (v11)
  {
    goto LABEL_20;
  }

  v17 = *(a1 + 24);
  v18 = *(a2 + 24);
  if (!v17)
  {
    if (!v18)
    {
      goto LABEL_18;
    }

LABEL_20:
    v24 = 0;
    return v24 & 1;
  }

  if (!v18)
  {
    goto LABEL_20;
  }

  v19 = a1;
  v20 = a2;
  sub_1E13006E4(0, &qword_1ECEB2CB8);
  v21 = v18;
  v22 = v17;
  v23 = sub_1E1AF6D0C();

  a1 = v19;
  a2 = v20;
  if ((v23 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_18:
  if (*(a1 + 32) != *(a2 + 32))
  {
    goto LABEL_20;
  }

  v24 = *(a1 + 40) ^ *(a2 + 40) ^ 1;
  return v24 & 1;
}

uint64_t sub_1E139A298(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *a1;
  v10 = *(a1 + 1) | ((*(a1 + 5) | (a1[7] << 16)) << 32);
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v14 = *(a1 + 3);
  v13 = *(a1 + 4);
  v15 = a1[40];
  v16 = a1[41];
  v17 = *(a1 + 6);
  v18 = *(a1 + 7);
  v19 = *(a1 + 8);
  v20 = a1[72];
  switch(a1[73])
  {
    case 1u:
      if (*(a2 + 73) != 1)
      {
        goto LABEL_67;
      }

      v32 = v9 | (v10 << 8);
      v33 = *(a2 + 41);
      if (v11 == 1)
      {
        if (v4 == 1)
        {
          v34 = a1[41];
          sub_1E139D340(v3, 1, v6, v5);
          goto LABEL_70;
        }

LABEL_65:
        v70 = v32;
        v71 = v11;
        v72 = v12;
        v73 = v14;
        v74 = v13;
        v75 = v15;
        v76 = v3;
        v77 = v4;
        v78 = v6;
        v79 = v5;
        v80 = v7;
        v81 = v8;
        sub_1E139D308(a2, &v64);
        sub_1E139D308(a1, &v64);
        goto LABEL_66;
      }

      if (v4 == 1)
      {
        goto LABEL_65;
      }

      v34 = a1[41];
      v64 = v3;
      v65 = v4;
      v66 = v6;
      v67 = v5;
      v68 = v7;
      v69 = v8 & 1;
      v82[0] = v32;
      v82[1] = v11;
      v82[2] = v12;
      v82[3] = v14;
      v82[4] = v13;
      v83 = v15 & 1;
      v48 = v4;
      v49 = v5;
      v50 = v6;
      sub_1E139D308(a2, &v70);
      sub_1E139D308(a1, &v70);
      v51 = sub_1E139A0D4(v82, &v64);

      sub_1E139CE5C(a1);
      if (v51)
      {
LABEL_70:
        v31 = v34 ^ v33;
LABEL_71:
        v47 = v31 ^ 1;
        return v47 & 1;
      }

      goto LABEL_67;
    case 2u:
      if (*(a2 + 73) != 2)
      {
        goto LABEL_67;
      }

      goto LABEL_36;
    case 3u:
      if (*(a2 + 73) != 3)
      {
        goto LABEL_67;
      }

      v31 = v9 ^ v3;
      goto LABEL_71;
    case 4u:
      if (*(a2 + 73) != 4)
      {
        goto LABEL_67;
      }

      goto LABEL_33;
    case 5u:
      if (*(a2 + 73) != 5)
      {
        goto LABEL_67;
      }

LABEL_33:
      v35 = a1[41];
      v36 = *(a2 + 41);
      v64 = v9 | (v10 << 8);
      v65 = v11;
      v66 = v12;
      v67 = v14;
      v68 = v13;
      v69 = v15 & 1;
      v70 = v3;
      v71 = v4;
      v72 = v6;
      v73 = v5;
      v74 = v7;
      v75 = v8 & 1;
      if ((sub_1E139A0D4(&v64, &v70) & 1) == 0)
      {
        goto LABEL_67;
      }

      v31 = v35 ^ v36;
      goto LABEL_71;
    case 6u:
      if (*(a2 + 73) == 6)
      {
        goto LABEL_36;
      }

      goto LABEL_67;
    case 7u:
      if (*(a2 + 73) != 7)
      {
        goto LABEL_67;
      }

      goto LABEL_36;
    case 8u:
      if (*(a2 + 73) != 8)
      {
        goto LABEL_67;
      }

      if ((v9 | (v10 << 8)) != v3 || v11 != v4)
      {
        v44 = v5;
        v45 = v6;
        v46 = sub_1E1AF74AC();
        v6 = v45;
        v5 = v44;
        if ((v46 & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      if (!v14)
      {
        goto LABEL_62;
      }

      goto LABEL_50;
    case 9u:
      if (*(a2 + 73) != 9)
      {
        goto LABEL_67;
      }

      goto LABEL_36;
    case 0xAu:
      if (*(a2 + 73) != 10)
      {
        goto LABEL_67;
      }

      if ((v9 | (v10 << 8)) != v3 || v11 != v4)
      {
        v40 = v5;
        v41 = v6;
        v42 = sub_1E1AF74AC();
        v6 = v41;
        v5 = v40;
        if ((v42 & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      if (!v14)
      {
LABEL_62:
        if (v5)
        {
          goto LABEL_67;
        }

        goto LABEL_79;
      }

LABEL_50:
      if (v5 && (v12 == v6 && v14 == v5 || (sub_1E1AF74AC() & 1) != 0))
      {
        goto LABEL_79;
      }

      goto LABEL_67;
    case 0xBu:
      if (*(a2 + 73) != 11)
      {
        goto LABEL_67;
      }

LABEL_36:
      if ((v9 | (v10 << 8)) == v3 && v11 == v4)
      {
        goto LABEL_79;
      }

      return sub_1E1AF74AC();
    case 0xCu:
      if (*(a2 + 73) != 12)
      {
        goto LABEL_67;
      }

      if (*(a2 + 72))
      {
        goto LABEL_67;
      }

      v30 = vorrq_s8(*(a2 + 40), *(a2 + 56));
      if (v3 | *&vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL)) | v4 | v6 | v5 | v7)
      {
        goto LABEL_67;
      }

      goto LABEL_79;
    default:
      if (*(a2 + 73))
      {
        goto LABEL_67;
      }

      v22 = *(a1 + 23);
      v23 = *(a1 + 42);
      v61 = *(a2 + 48);
      v62 = *(a2 + 56);
      v63 = *(a2 + 40);
      v59 = *(a2 + 64);
      v60 = *(a2 + 72);
      if ((v9 | (v10 << 8)) != v3 || v11 != v4)
      {
        v57 = a1[41];
        v58 = v5;
        v24 = v6;
        v55 = *(a1 + 42);
        v56 = *(a1 + 23);
        v25 = sub_1E1AF74AC();
        v23 = v55;
        v22 = v56;
        v16 = v57;
        v5 = v58;
        v6 = v24;
        if ((v25 & 1) == 0)
        {
          goto LABEL_67;
        }
      }

      if (!v14)
      {
        if (v5)
        {
          goto LABEL_67;
        }

LABEL_73:
        v52 = (v15 | (v16 << 8) | (v23 << 16) | (v22 << 48));
        if (v52 == 1)
        {
          v53 = v63;
          if (v63 == 1)
          {
LABEL_79:
            v47 = 1;
            return v47 & 1;
          }
        }

        else
        {
          v53 = v63;
          if (v63 != 1)
          {
            v70 = v7;
            v71 = v63;
            v72 = v61;
            v73 = v62;
            v74 = v59;
            v75 = v60 & 1;
            v64 = v13;
            v65 = v52;
            v66 = v17;
            v67 = v18;
            v68 = v19;
            v69 = v20 & 1;
            sub_1E139D340(v7, v63, v61, v62);
            sub_1E139D340(v13, v52, v17, v18);
            v54 = sub_1E139A0D4(&v64, &v70);

            sub_1E139D0E0(v13, v52, v17, v18);
            if ((v54 & 1) == 0)
            {
              goto LABEL_67;
            }

            goto LABEL_79;
          }
        }

        v70 = v13;
        v71 = v52;
        v72 = v17;
        v73 = v18;
        v74 = v19;
        v75 = v20;
        v76 = v7;
        v77 = v53;
        v78 = v61;
        v79 = v62;
        v80 = v59;
        v81 = v60;
        sub_1E139D340(v7, v53, v61, v62);
        sub_1E139D340(v13, v52, v17, v18);
LABEL_66:
        sub_1E1308058(&v70, &qword_1ECEB2CB0);
        goto LABEL_67;
      }

      if (v5)
      {
        if (v12 == v6 && v14 == v5)
        {
          goto LABEL_73;
        }

        v26 = v16;
        v27 = v22;
        v28 = v23;
        v29 = sub_1E1AF74AC();
        v23 = v28;
        v22 = v27;
        v16 = v26;
        if (v29)
        {
          goto LABEL_73;
        }
      }

LABEL_67:
      v47 = 0;
      return v47 & 1;
  }
}

uint64_t sub_1E139A868()
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v1 + 112))(v0, ObjectType, v1);
    swift_unknownObjectRelease();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v0 + 24);
    v5 = swift_getObjectType();
    (*(v4 + 96))(v5, v4);
    return swift_unknownObjectRelease();
  }

  return result;
}

void _s11AppStoreKit0A20OfferButtonPresenterC6update13ignoringCacheySb_tF_0()
{
  v1 = v0;
  if ((sub_1E1396018() & 1) == 0)
  {
    v2 = *(v0 + 216);
    v3 = (v0 + 200);
    v4 = *(v0 + 248);
    v389[2] = *(v0 + 232);
    v390[0] = v4;
    v389[0] = *(v0 + 200);
    v389[1] = v2;
    *(v390 + 10) = *(v0 + 258);
    v5 = *(v0 + 40);
    sub_1E139D308(v389, &v385);
    sub_1E13963D4(v389, v5, &v385);
    sub_1E139CE5C(v389);
    v6 = v385;
    v7 = BYTE1(v385);
    v8 = *(&v385 + 1);
    v9 = v386;
    swift_beginAccess();
    if (!swift_unknownObjectWeakLoadStrong())
    {
LABEL_54:
      sub_1E139D53C(v8, v9);
      return;
    }

    v362 = v5;
    v366 = v6;
    v372 = v7;
    v10 = *(v1 + 216);
    v381 = *v3;
    v382 = v10;
    v11 = *(v1 + 248);
    v383 = *(v1 + 232);
    *&v384[10] = *(v1 + 258);
    v374 = *(v1 + 24);
    *v384 = v11;
    v12 = v381;
    v13 = *(&v381 + 1) | ((*(&v381 + 5) | (BYTE7(v381) << 16)) << 32);
    v14 = *(&v381 + 1);
    v15 = BYTE9(v383);
    switch(v384[25])
    {
      case 1:
        v81 = v8;
        ObjectType = swift_getObjectType();
        v83 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v83;
        *(v388 + 10) = *(v1 + 258);
        v84 = *(v1 + 216);
        v385 = *v3;
        v386 = v84;
        sub_1E139D308(&v385, &v377);
        v85 = sub_1E1392E8C();
        v87 = v86;
        sub_1E139CE5C(&v385);
        v88 = *(v1 + 148);
        v375 = *(v1 + 144);
        v376 = v88;
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v347 = v81;
        v378 = v81;
        v379 = v9;
        v31 = v374;
        (*(v374 + 80))(v85, v87, &v375, &v377, v15 & 1, ObjectType, v374);

        if (!*(v1 + 128))
        {
          goto LABEL_62;
        }

        v89 = *(v1 + 136);
        v90 = swift_getObjectType();
        v91 = *(v89 + 16);
        swift_unknownObjectRetain();
        v91(&v377, v90, v89);
        v92 = v380;
        sub_1E139CEA8(&v377);
        if (v92 >> 60 == 4)
        {
          if (v362 && *(v362 + 208) == 1)
          {

            v93._countAndFlagsBits = 0xD000000000000018;
            v93._object = 0x80000001E1B5B430;
            v94 = localizedStringForAdsLanguage(_:)(v93);

            object = v94._object;
            countAndFlagsBits = v94._countAndFlagsBits;
          }

          else
          {
            v172._countAndFlagsBits = 0xD000000000000018;
            v172._object = 0x80000001E1B5B430;
            v173._countAndFlagsBits = 0;
            v173._object = 0xE000000000000000;
            v174 = localizedString(_:comment:)(v172, v173);
            object = v174._object;
            countAndFlagsBits = v174._countAndFlagsBits;
          }

          v31 = v374;
          (*(v374 + 128))(countAndFlagsBits, object, ObjectType, v374);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
          v31 = v374;
LABEL_62:
          if (v362 && *(v362 + 208) == 1)
          {

            v165._object = 0x80000001E1B5B410;
            v165._countAndFlagsBits = 0xD00000000000001CLL;
            v166 = localizedStringForAdsLanguage(_:)(v165);

            v167 = v166._object;
            v168 = v166._countAndFlagsBits;
          }

          else
          {
            v169._object = 0x80000001E1B5B410;
            v169._countAndFlagsBits = 0xD00000000000001CLL;
            v170._countAndFlagsBits = 0;
            v170._object = 0xE000000000000000;
            v171 = localizedString(_:comment:)(v169, v170);
            v167 = v171._object;
            v168 = v171._countAndFlagsBits;
          }

          (*(v31 + 128))(v168, v167, ObjectType, v31);
        }

        (*(v31 + 144))(0x6F6C6E776F646572, 0xEA00000000006461, ObjectType, v31);
        v8 = v347;
        goto LABEL_53;
      case 2:
        v55 = v381 | (v13 << 8);
        v24 = swift_getObjectType();
        v56 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v56;
        *(v388 + 10) = *(v1 + 258);
        v57 = *(v1 + 216);
        v385 = *v3;
        v386 = v57;
        sub_1E139D308(&v381, &v377);
        sub_1E139D308(&v385, &v377);
        v58 = sub_1E1392E8C();
        v59 = v14;
        v61 = v60;
        sub_1E139CE5C(&v385);
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 32))(v55, v59, v58, v61, &v377, v24, v374);

        (*(v31 + 128))(v55, v59, v24, v31);
        v32 = *(v374 + 144);
        v33 = 0x657461647075;
        goto LABEL_51;
      case 3:
        v62 = swift_getObjectType();
        v63 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v63;
        *(v388 + 10) = *(v1 + 258);
        v64 = *(v1 + 216);
        v385 = *v3;
        v386 = v64;
        sub_1E139D308(&v385, &v377);
        v65 = sub_1E1392E8C();
        v67 = v66;
        sub_1E139CE5C(&v385);
        v68 = *(v1 + 148);
        v375 = *(v1 + 144);
        v376 = v68;
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 56))(v65, v67, &v375, &v377, v12 & 1, v62, v374);

        if (v362 && *(v362 + 208) == 1)
        {

          v69._countAndFlagsBits = 0xD000000000000022;
          v69._object = 0x80000001E1B5B3E0;
          v70 = localizedStringForAdsLanguage(_:)(v69);

          v71 = v70._object;
          v72 = v70._countAndFlagsBits;
        }

        else
        {
          v134._countAndFlagsBits = 0xD000000000000022;
          v134._object = 0x80000001E1B5B3E0;
          v135._countAndFlagsBits = 0;
          v135._object = 0xE000000000000000;
          v136 = localizedString(_:comment:)(v134, v135);
          v71 = v136._object;
          v72 = v136._countAndFlagsBits;
        }

        (*(v374 + 128))(v72, v71, v62, v374);
        (*(v374 + 144))(0x676E6964616F6CLL, 0xE700000000000000, v62, v374);
        goto LABEL_53;
      case 4:
        v351 = v382;
        v359 = *(&v381 + 1);
        *&v34 = v381 | (v13 << 8);
        v35 = swift_getObjectType();
        v36 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v36;
        *(v388 + 10) = *(v1 + 258);
        v37 = *(v1 + 216);
        v385 = *v3;
        v386 = v37;
        sub_1E139D308(&v381, &v377);
        sub_1E139D308(&v385, &v377);
        v38 = sub_1E1392E8C();
        v40 = v39;
        sub_1E139CE5C(&v385);
        v41 = *(v1 + 148);
        v375 = *(v1 + 144);
        v376 = v41;
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 64))(v38, v40, &v375, &v377, v15 & 1, v35, v374, v34);

        if (v362 && *(v362 + 208) == 1)
        {

          v42._object = 0x80000001E1B5B3C0;
          v42._countAndFlagsBits = 0xD00000000000001CLL;
          v43 = localizedStringForAdsLanguage(_:)(v42);

          v44 = v43._object;
          v45 = v43._countAndFlagsBits;
        }

        else
        {
          v131._object = 0x80000001E1B5B3C0;
          v131._countAndFlagsBits = 0xD00000000000001CLL;
          v132._countAndFlagsBits = 0;
          v132._object = 0xE000000000000000;
          v133 = localizedString(_:comment:)(v131, v132);
          v44 = v133._object;
          v45 = v133._countAndFlagsBits;
        }

        (*(v374 + 128))(v45, v44, v35, v374);
        (*(v374 + 144))(0x64616F6C6E776F64, 0xEB00000000676E69, v35, v374);
        goto LABEL_43;
      case 5:
        v351 = v382;
        v359 = *(&v381 + 1);
        *&v97 = v381 | (v13 << 8);
        v98 = swift_getObjectType();
        v99 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v99;
        *(v388 + 10) = *(v1 + 258);
        v100 = *(v1 + 216);
        v385 = *v3;
        v386 = v100;
        sub_1E139D308(&v381, &v377);
        sub_1E139D308(&v385, &v377);
        v101 = sub_1E1392E8C();
        v103 = v102;
        sub_1E139CE5C(&v385);
        v104 = *(v1 + 148);
        v375 = *(v1 + 144);
        v376 = v104;
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 64))(v101, v103, &v375, &v377, v15 & 1, v98, v374, v97);

        if (v362 && *(v362 + 208) == 1)
        {

          v105._object = 0x80000001E1B5B3C0;
          v105._countAndFlagsBits = 0xD00000000000001CLL;
          v106 = localizedStringForAdsLanguage(_:)(v105);

          v107 = v106._object;
          v108 = v106._countAndFlagsBits;
        }

        else
        {
          v137._object = 0x80000001E1B5B3C0;
          v137._countAndFlagsBits = 0xD00000000000001CLL;
          v138._countAndFlagsBits = 0;
          v138._object = 0xE000000000000000;
          v139 = localizedString(_:comment:)(v137, v138);
          v107 = v139._object;
          v108 = v139._countAndFlagsBits;
        }

        (*(v374 + 128))(v108, v107, v98, v374);
        (*(v374 + 144))(0x696C6C6174736E69, 0xEA0000000000676ELL, v98, v374);
LABEL_43:

        goto LABEL_53;
      case 6:
        v109 = v381 | (v13 << 8);
        v24 = swift_getObjectType();
        v110 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v110;
        *(v388 + 10) = *(v1 + 258);
        v111 = *(v1 + 216);
        v385 = *v3;
        v386 = v111;
        sub_1E139D308(&v381, &v377);
        sub_1E139D308(&v385, &v377);
        v112 = sub_1E1392E8C();
        v113 = v14;
        v115 = v114;
        sub_1E139CE5C(&v385);
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 32))(v109, v113, v112, v115, &v377, v24, v374);

        (*(v31 + 128))(v109, v113, v24, v31);
        v32 = *(v374 + 144);
        v33 = 0x64616F6C6E776F64;
        goto LABEL_29;
      case 7:
        v73 = v381 | (v13 << 8);
        v74 = swift_getObjectType();
        v75 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v75;
        *(v388 + 10) = *(v1 + 258);
        v76 = *(v1 + 216);
        v385 = *v3;
        v386 = v76;
        sub_1E139D308(&v381, &v377);
        sub_1E139D308(&v385, &v377);
        v77 = sub_1E1392E8C();
        v78 = v14;
        v80 = v79;
        sub_1E139CE5C(&v385);
        LOBYTE(v377) = 5;
        BYTE1(v377) = v372;
        v378 = 0;
        v379 = 0;
        v31 = v374;
        (*(v374 + 32))(v73, v78, v77, v80, &v377, v74, v374);

        sub_1E139D53C(v378, v379);
        (*(v31 + 128))(v73, v78, v74, v31);
        (*(v374 + 144))(0x6573616863727570, 0xE900000000000064, v74, v374);
        goto LABEL_53;
      case 8:
        if (*(v1 + 159) == 1)
        {
          if (v362)
          {
            v127 = *(&v381 + 1);
            if (*(v362 + 126) == 2)
            {
              v353 = v381 | (v13 << 8);
              v128 = *(&v382 + 1);
              if (*(v362 + 208) == 1)
              {
                sub_1E139D308(&v381, &v385);

                v129._countAndFlagsBits = 0xD00000000000002DLL;
                v129._object = 0x80000001E1B5B390;
                v130 = localizedStringForAdsLanguage(_:)(v129);
                v344 = v130._countAndFlagsBits;
                v361 = v130._object;
              }

              else
              {

                v230._countAndFlagsBits = 0xD00000000000002DLL;
                v230._object = 0x80000001E1B5B390;
                v231._countAndFlagsBits = 0;
                v231._object = 0xE000000000000000;
                v232 = localizedString(_:comment:)(v230, v231);
                v344 = v232._countAndFlagsBits;
                v361 = v232._object;
              }

              v197 = v374;
              v194 = v366;
              v195 = 0;
              v198 = v128;
              if (v372 == 3 || v372 == 6)
              {
                v194 = 0;
                v196 = 0;
              }

              else if (v372 == 8)
              {
                v357 = v128;
                if (qword_1ECEB11D8 != -1)
                {
                  swift_once();
                }

                v233 = qword_1ECEB95F0;
                v234 = objc_opt_self();
                v195 = v233;
                v196 = [v234 whiteColor];
                v194 = 5;
                v198 = v357;
              }

              else
              {
                sub_1E139D580(v8, v9);
                v198 = v128;
                v195 = v8;
                v196 = v9;
              }

              goto LABEL_131;
            }

            v175 = *(v362 + 121);
          }

          else
          {
            v127 = *(&v381 + 1);
            v175 = 0;
          }

          if (v372 == 6 || v372 == 3)
          {
            v353 = v381 | (v13 << 8);
            v355 = *(&v382 + 1);
            if (v362 && (*(v362 + 208) & 1) != 0)
            {
              sub_1E139D308(&v381, &v385);

              v189._object = 0x80000001E1B5B370;
              v189._countAndFlagsBits = 0xD00000000000001CLL;
              v190 = localizedStringForAdsLanguage(_:)(v189);
              v344 = v190._countAndFlagsBits;
              v361 = v190._object;

              if ((v175 & 1) == 0)
              {
                goto LABEL_101;
              }
            }

            else
            {

              v191._object = 0x80000001E1B5B370;
              v191._countAndFlagsBits = 0xD00000000000001CLL;
              v192._countAndFlagsBits = 0;
              v192._object = 0xE000000000000000;
              v193 = localizedString(_:comment:)(v191, v192);
              v344 = v193._countAndFlagsBits;
              v361 = v193._object;
              if ((v175 & 1) == 0)
              {
                if (!v362)
                {
                  v346 = v9;
                  v349 = v8;
                  goto LABEL_138;
                }

LABEL_101:
                v346 = v9;
                v349 = v8;
                if (*(v362 + 208) == 1)
                {

                  v226._object = 0x80000001E1B5B370;
                  v226._countAndFlagsBits = 0xD00000000000001CLL;
                  v227 = localizedStringForAdsLanguage(_:)(v226);
                  v228 = v227._countAndFlagsBits;
                  v229 = v227._object;

                  goto LABEL_139;
                }

LABEL_138:
                v278._object = 0x80000001E1B5B370;
                v278._countAndFlagsBits = 0xD00000000000001CLL;
                v279._countAndFlagsBits = 0;
                v279._object = 0xE000000000000000;
                v280 = localizedString(_:comment:)(v278, v279);
                v228 = v280._countAndFlagsBits;
                v229 = v280._object;

LABEL_139:
                if (!v355)
                {
LABEL_141:
                  v281 = swift_getObjectType();
                  v282 = *(v1 + 248);
                  v387 = *(v1 + 232);
                  v388[0] = v282;
                  *(v388 + 10) = *(v1 + 258);
                  v283 = *(v1 + 216);
                  v385 = *v3;
                  v386 = v283;
                  sub_1E139D308(&v385, &v377);
                  v284 = sub_1E1392E8C();
                  v286 = v285;
                  sub_1E139CE5C(&v385);
                  LOBYTE(v377) = 5;
                  BYTE1(v377) = v372;
                  v378 = 0;
                  v379 = 0;
                  v287 = *(v374 + 32);
                  sub_1E139D580(0, 0);
                  v287(v228, v229, v284, v286, &v377, v281, v374);
                  v31 = v374;

                  sub_1E139D53C(v378, v379);
                  v195 = 0;
                  v274 = 0;
                  v9 = v346;
                  v8 = v349;
                  goto LABEL_153;
                }

LABEL_140:

                goto LABEL_141;
              }
            }

            v194 = 0;
            v195 = 0;
            v196 = 0;
            v197 = v374;
            v198 = v355;
LABEL_131:
            if (v198)
            {
            }

            goto LABEL_133;
          }

          if (*(&v382 + 1))
          {
            v356 = *(&v382 + 1);
            if (v175)
            {
              v203 = v381 | (v13 << 8);
              v204 = v382;
              if (v362 && *(v362 + 208) == 1)
              {
                sub_1E139D308(&v381, &v385);
                sub_1E139D580(v8, v9);

                v205._countAndFlagsBits = 0xD000000000000016;
                v205._object = 0x80000001E1B5B300;
                v206 = localizedStringForAdsLanguage(_:)(v205);
                v361 = v206._object;
                v207 = v206._countAndFlagsBits;
              }

              else
              {
                sub_1E139D308(&v381, &v385);
                sub_1E139D580(v8, v9);
                v301._countAndFlagsBits = 0xD000000000000016;
                v301._object = 0x80000001E1B5B300;
                v302._countAndFlagsBits = 0;
                v302._object = 0xE000000000000000;
                v303 = localizedString(_:comment:)(v301, v302);
                v207 = v303._countAndFlagsBits;
                v361 = v303._object;
              }

              v31 = v374;
              v304 = swift_getObjectType();
              v305 = *(v1 + 154);
              LODWORD(v377) = *(v1 + 150);
              WORD2(v377) = v305;
              LOBYTE(v385) = v366;
              BYTE1(v385) = v372;
              *(&v385 + 1) = v8;
              *&v386 = v9;
              (*(v31 + 40))(v203, v127, v204, v356, &v377, &v385, v304, v31);

              v195 = v8;
              v274 = v9;
              goto LABEL_154;
            }

            v354 = v382;
            if (v362 && *(v362 + 208) == 1)
            {
              sub_1E139D308(&v381, &v385);

              v275._object = 0x80000001E1B5B370;
              v275._countAndFlagsBits = 0xD00000000000001CLL;
              v276 = localizedStringForAdsLanguage(_:)(v275);
              v277 = v276._countAndFlagsBits;
              v370 = v276._object;
            }

            else
            {

              v306._object = 0x80000001E1B5B370;
              v306._countAndFlagsBits = 0xD00000000000001CLL;
              v307._countAndFlagsBits = 0;
              v307._object = 0xE000000000000000;
              v308 = localizedString(_:comment:)(v306, v307);
              v277 = v308._countAndFlagsBits;
              v370 = v308._object;
              if (!v362)
              {
                goto LABEL_151;
              }
            }

            if (*(v362 + 208) == 1)
            {

              v309._object = 0x80000001E1B5B370;
              v309._countAndFlagsBits = 0xD00000000000001CLL;
              v310 = localizedStringForAdsLanguage(_:)(v309);
              v344 = v310._countAndFlagsBits;
              v361 = v310._object;

LABEL_152:
              v314 = swift_getObjectType();
              v315 = *(v1 + 154);
              v375 = *(v1 + 150);
              v376 = v315;
              v316 = *(v1 + 248);
              v387 = *(v1 + 232);
              v388[0] = v316;
              *(v388 + 10) = *(v1 + 258);
              v317 = *(v1 + 216);
              v385 = *v3;
              v386 = v317;
              sub_1E139D308(&v385, &v377);
              v365 = sub_1E1392E8C();
              v319 = v318;
              sub_1E139CE5C(&v385);
              LOBYTE(v377) = 5;
              BYTE1(v377) = v372;
              v378 = 0;
              v379 = 0;
              v320 = *(v374 + 24);
              sub_1E139D580(0, 0);
              v320(v277, v370, v354, v356, &v375, v365, v319, &v377, v314, v374);
              v31 = v374;

              sub_1E139D53C(v378, v379);
              v195 = 0;
              v274 = 0;
              goto LABEL_153;
            }

LABEL_151:
            v311._object = 0x80000001E1B5B370;
            v311._countAndFlagsBits = 0xD00000000000001CLL;
            v312._countAndFlagsBits = 0;
            v312._object = 0xE000000000000000;
            v313 = localizedString(_:comment:)(v311, v312);
            v344 = v313._countAndFlagsBits;
            v361 = v313._object;

            goto LABEL_152;
          }

          if (v175)
          {
            v353 = v381 | (v13 << 8);
            if (v362 && *(v362 + 208) == 1)
            {
              sub_1E139D308(&v381, &v385);
              sub_1E139D580(v8, v9);

              v271._countAndFlagsBits = 0xD000000000000016;
              v271._object = 0x80000001E1B5B300;
              v272 = localizedStringForAdsLanguage(_:)(v271);
              v344 = v272._countAndFlagsBits;
              v361 = v272._object;
            }

            else
            {
              sub_1E139D308(&v381, &v385);
              sub_1E139D580(v8, v9);
              v327._countAndFlagsBits = 0xD000000000000016;
              v327._object = 0x80000001E1B5B300;
              v328._countAndFlagsBits = 0;
              v328._object = 0xE000000000000000;
              v329 = localizedString(_:comment:)(v327, v328);
              v344 = v329._countAndFlagsBits;
              v361 = v329._object;
            }

            v195 = v8;
            v196 = v9;
            v197 = v374;
            v194 = v366;
LABEL_133:
            v369 = swift_getObjectType();
            LOBYTE(v385) = v194;
            BYTE1(v385) = v372;
            *(&v385 + 1) = v195;
            *&v386 = v196;
            v273 = *(v197 + 48);
            sub_1E139D580(v195, v196);
            v273(v353, v127, &v385, v369, v374);
            v274 = v196;
            v31 = v374;

            sub_1E139D53C(*(&v385 + 1), v386);
LABEL_153:
            v207 = v344;
LABEL_154:
            v321 = swift_getObjectType();
            (*(v31 + 128))(v207, v361, v321, v31);
            sub_1E139D53C(v195, v274);
LABEL_53:
            v158 = swift_getObjectType();
            v159 = sub_1E13967C0();
            (*(v31 + 16))(v159 & 1, v158, v31);
            swift_unknownObjectRelease();
            goto LABEL_54;
          }

          v346 = v9;
          v349 = v8;
          if (v362 && *(v362 + 208) == 1)
          {
            sub_1E139D308(&v381, &v385);

            v325._object = 0x80000001E1B5B370;
            v325._countAndFlagsBits = 0xD00000000000001CLL;
            v326 = localizedStringForAdsLanguage(_:)(v325);
            v228 = v326._countAndFlagsBits;
            v229 = v326._object;
          }

          else
          {

            v330._object = 0x80000001E1B5B370;
            v330._countAndFlagsBits = 0xD00000000000001CLL;
            v331._countAndFlagsBits = 0;
            v331._object = 0xE000000000000000;
            v332 = localizedString(_:comment:)(v330, v331);
            v229 = v332._object;
            v228 = v332._countAndFlagsBits;
            if (!v362)
            {
LABEL_166:
              v335._object = 0x80000001E1B5B370;
              v335._countAndFlagsBits = 0xD00000000000001CLL;
              v336._countAndFlagsBits = 0;
              v336._object = 0xE000000000000000;
              v337 = localizedString(_:comment:)(v335, v336);
              v344 = v337._countAndFlagsBits;
              v361 = v337._object;
              goto LABEL_140;
            }
          }

          if (*(v362 + 208) == 1)
          {

            v333._object = 0x80000001E1B5B370;
            v333._countAndFlagsBits = 0xD00000000000001CLL;
            v334 = localizedStringForAdsLanguage(_:)(v333);
            v344 = v334._countAndFlagsBits;
            v361 = v334._object;

            goto LABEL_141;
          }

          goto LABEL_166;
        }

        v145 = v382;

        v345 = v9;
        v348 = v8;
        if (v362 && *(v362 + 126) == 2)
        {

          v146 = *(v362 + 208);

          if (v146 == 1)
          {

            v147._countAndFlagsBits = 0xD00000000000002DLL;
            v147._object = 0x80000001E1B5B390;
            v148 = localizedStringForAdsLanguage(_:)(v147);
            v149 = v362;
            v150 = v148._countAndFlagsBits;
            v151 = v148._object;
          }

          else
          {
            v235._countAndFlagsBits = 0xD00000000000002DLL;
            v235._object = 0x80000001E1B5B390;
            v236._countAndFlagsBits = 0;
            v236._object = 0xE000000000000000;
            v237 = localizedString(_:comment:)(v235, v236);
            v149 = v362;
            v150 = v237._countAndFlagsBits;
            v151 = v237._object;
          }

          v179 = swift_getObjectType();
          v238 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v238;
          *(v388 + 10) = *(v1 + 258);
          v239 = *(v1 + 216);
          v385 = *v3;
          v386 = v239;
          sub_1E139D308(&v385, &v377);
          v240 = sub_1E1392E8C();
          v242 = v241;
          sub_1E139CE5C(&v385);
          LOBYTE(v377) = 5;
          BYTE1(v377) = v372;
          v378 = 0;
          v379 = 0;
          v31 = v374;
          (*(v374 + 32))(v150, v151, v240, v242, &v377, v179, v374);

          sub_1E139D53C(v378, v379);
          if (*(v149 + 208) == 1)
          {
            v243._countAndFlagsBits = 0xD00000000000002DLL;
            v243._object = 0x80000001E1B5B390;
            v244 = localizedStringForAdsLanguage(_:)(v243);

            v187 = v244._object;
            v188 = v244._countAndFlagsBits;
          }

          else
          {

            v245._countAndFlagsBits = 0xD00000000000002DLL;
            v245._object = 0x80000001E1B5B390;
            v246._countAndFlagsBits = 0;
            v246._object = 0xE000000000000000;
            v247 = localizedString(_:comment:)(v245, v246);
            v187 = v247._object;
            v188 = v247._countAndFlagsBits;
          }

          v8 = v348;
          goto LABEL_118;
        }

        if (v7 == 6 || v7 == 3)
        {

          if (v362 && *(v362 + 208) == 1)
          {
            swift_retain_n();
            v160._object = 0x80000001E1B5B370;
            v160._countAndFlagsBits = 0xD00000000000001CLL;
            v161 = localizedStringForAdsLanguage(_:)(v160);
            v162 = v362;
            v163 = v161._countAndFlagsBits;
            v164 = v161._object;
          }

          else
          {

            v176._object = 0x80000001E1B5B370;
            v176._countAndFlagsBits = 0xD00000000000001CLL;
            v177._countAndFlagsBits = 0;
            v177._object = 0xE000000000000000;
            v178 = localizedString(_:comment:)(v176, v177);
            v162 = v362;
            v163 = v178._countAndFlagsBits;
            v164 = v178._object;
          }

          v179 = swift_getObjectType();
          v180 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v180;
          *(v388 + 10) = *(v1 + 258);
          v181 = *(v1 + 216);
          v385 = *v3;
          v386 = v181;
          sub_1E139D308(&v385, &v377);
          v182 = sub_1E1392E8C();
          v184 = v183;
          sub_1E139CE5C(&v385);
          LOBYTE(v377) = 5;
          BYTE1(v377) = v372;
          v378 = 0;
          v379 = 0;
          v31 = v374;
          (*(v374 + 32))(v163, v164, v182, v184, &v377, v179, v374);

          sub_1E139D53C(v378, v379);
          v8 = v348;
          if (v162)
          {
            if (*(v162 + 208) == 1)
            {
              v185._object = 0x80000001E1B5B370;
              v185._countAndFlagsBits = 0xD00000000000001CLL;
              v186 = localizedStringForAdsLanguage(_:)(v185);

              v187 = v186._object;
              v188 = v186._countAndFlagsBits;
LABEL_118:
              (*(v31 + 128))(v188, v187, v179, v31);
              v9 = v345;
              goto LABEL_53;
            }
          }

          v248._object = 0x80000001E1B5B370;
          v248._countAndFlagsBits = 0xD00000000000001CLL;
          v249._countAndFlagsBits = 0;
          v249._object = 0xE000000000000000;
          v250 = localizedString(_:comment:)(v248, v249);
          v187 = v250._object;
          v188 = v250._countAndFlagsBits;
          goto LABEL_118;
        }

        if (*(&v382 + 1))
        {
          if (v362 && *(v362 + 208) == 1)
          {
            swift_retain_n();
            v199._countAndFlagsBits = 0xD000000000000016;
            v199._object = 0x80000001E1B5B300;
            v200 = localizedStringForAdsLanguage(_:)(v199);
            v201 = v200._countAndFlagsBits;
            v202 = v200._object;
          }

          else
          {

            v251._countAndFlagsBits = 0xD000000000000016;
            v251._object = 0x80000001E1B5B300;
            v252._countAndFlagsBits = 0;
            v252._object = 0xE000000000000000;
            v253 = localizedString(_:comment:)(v251, v252);
            v201 = v253._countAndFlagsBits;
            v202 = v253._object;
          }

          v254 = swift_getObjectType();
          v255 = *(v1 + 154);
          v375 = *(v1 + 150);
          v376 = v255;
          v256 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v256;
          *(v388 + 10) = *(v1 + 258);
          v258 = *v3;
          v257 = *(v1 + 216);
          v259 = v254;
          v385 = v258;
          v386 = v257;
          sub_1E139D308(&v385, &v377);
          v260 = sub_1E1392E8C();
          v262 = v261;
          sub_1E139CE5C(&v385);
          LOBYTE(v377) = v366;
          BYTE1(v377) = v372;
          v378 = v348;
          v379 = v345;
          v31 = v374;
          (*(v374 + 24))(v201, v202, v145, *(&v145 + 1), &v375, v260, v262, &v377, v259, v374);

          if (v362)
          {
            if (*(v362 + 208))
            {
              v263._countAndFlagsBits = 0xD000000000000016;
              v263._object = 0x80000001E1B5B300;
              v264 = localizedStringForAdsLanguage(_:)(v263);

              v265 = v264._object;
              v266 = v264._countAndFlagsBits;
LABEL_157:
              (*(v374 + 128))(v266, v265, v259, v374);
LABEL_170:
              v9 = v345;
              v8 = v348;
              goto LABEL_53;
            }
          }

          v322._countAndFlagsBits = 0xD000000000000016;
          v322._object = 0x80000001E1B5B300;
          v323._countAndFlagsBits = 0;
          v323._object = 0xE000000000000000;
          v324 = localizedString(_:comment:)(v322, v323);
          v265 = v324._object;
          v266 = v324._countAndFlagsBits;
          goto LABEL_157;
        }

        if (v362 && *(v362 + 208) == 1)
        {
          swift_retain_n();
          v267._countAndFlagsBits = 0xD000000000000016;
          v267._object = 0x80000001E1B5B300;
          v268 = localizedStringForAdsLanguage(_:)(v267);
          v269 = v268._countAndFlagsBits;
          v270 = v268._object;
        }

        else
        {

          v288._countAndFlagsBits = 0xD000000000000016;
          v288._object = 0x80000001E1B5B300;
          v289._countAndFlagsBits = 0;
          v289._object = 0xE000000000000000;
          v290 = localizedString(_:comment:)(v288, v289);
          v269 = v290._countAndFlagsBits;
          v270 = v290._object;
        }

        v291 = swift_getObjectType();
        v292 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v292;
        *(v388 + 10) = *(v1 + 258);
        v293 = *(v1 + 216);
        v385 = *v3;
        v386 = v293;
        sub_1E139D308(&v385, &v377);
        v294 = sub_1E1392E8C();
        v296 = v295;
        sub_1E139CE5C(&v385);
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v348;
        v379 = v9;
        v31 = v374;
        (*(v374 + 32))(v269, v270, v294, v296, &v377, v291, v374);

        if (!v362)
        {
          goto LABEL_168;
        }

        if (*(v362 + 208))
        {
          v297._countAndFlagsBits = 0xD000000000000016;
          v297._object = 0x80000001E1B5B300;
          v298 = localizedStringForAdsLanguage(_:)(v297);

          v299 = v298._object;
          v300 = v298._countAndFlagsBits;
        }

        else
        {

LABEL_168:
          v338._countAndFlagsBits = 0xD000000000000016;
          v338._object = 0x80000001E1B5B300;
          v339._countAndFlagsBits = 0;
          v339._object = 0xE000000000000000;
          v340 = localizedString(_:comment:)(v338, v339);
          v299 = v340._object;
          v300 = v340._countAndFlagsBits;
        }

        (*(v374 + 128))(v300, v299, v291, v374);
        goto LABEL_170;
      case 9:
        v47 = v381 | (v13 << 8);
        v48 = swift_getObjectType();
        v49 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v49;
        *(v388 + 10) = *(v1 + 258);
        v50 = *(v1 + 216);
        v385 = *v3;
        v386 = v50;
        sub_1E139D308(&v381, &v377);
        sub_1E139D308(&v385, &v377);
        v51 = sub_1E1392E8C();
        v52 = v14;
        v54 = v53;
        sub_1E139CE5C(&v385);
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 32))(v47, v52, v51, v54, &v377, v48, v374);

        (*(v31 + 128))(v47, v52, v48, v31);
        (*(v374 + 144))(1852141679, 0xE400000000000000, v48, v374);
        goto LABEL_53;
      case 0xA:
        v360 = *(&v381 + 1);
        v117 = v381 | (v13 << 8);
        if (*(&v382 + 1))
        {
          v118 = v381 | (v13 << 8);
          v119 = *(&v382 + 1);
          v352 = v382;
          v363 = swift_getObjectType();
          v120 = *(v1 + 154);
          v375 = *(v1 + 150);
          v376 = v120;
          v121 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v121;
          *(v388 + 10) = *(v1 + 258);
          v122 = *(v1 + 216);
          v385 = *v3;
          v386 = v122;
          sub_1E139D308(&v381, &v377);
          sub_1E139D308(&v385, &v377);
          v123 = sub_1E1392E8C();
          v125 = v124;
          sub_1E139CE5C(&v385);
          LOBYTE(v377) = v366;
          BYTE1(v377) = v372;
          v378 = v8;
          v379 = v9;
          v31 = v374;
          v126 = v360;
          (*(v374 + 24))(v118, v360, v352, v119, &v375, v123, v125, &v377, v363, v374);
          v117 = v118;
        }

        else
        {
          v152 = swift_getObjectType();
          v153 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v153;
          *(v388 + 10) = *(v1 + 258);
          v154 = *(v1 + 216);
          v385 = *v3;
          v386 = v154;
          sub_1E139D308(&v381, &v377);
          sub_1E139D308(&v385, &v377);
          v155 = sub_1E1392E8C();
          v157 = v156;
          sub_1E139CE5C(&v385);
          LOBYTE(v377) = v366;
          BYTE1(v377) = v372;
          v378 = v8;
          v379 = v9;
          v31 = v374;
          v126 = v360;
          (*(v374 + 32))(v117, v360, v155, v157, &v377, v152, v374);
        }

        v24 = swift_getObjectType();
        (*(v31 + 128))(v117, v126, v24, v31);
        v32 = *(v31 + 144);
        v33 = 0x7463656C6573;
LABEL_51:
        v116 = 0xE600000000000000;
        goto LABEL_52;
      case 0xB:
        v23 = v381 | (v13 << 8);
        v24 = swift_getObjectType();
        v25 = *(v1 + 248);
        v387 = *(v1 + 232);
        v388[0] = v25;
        *(v388 + 10) = *(v1 + 258);
        v26 = *(v1 + 216);
        v385 = *v3;
        v386 = v26;
        sub_1E139D308(&v381, &v377);
        sub_1E139D308(&v385, &v377);
        v27 = sub_1E1392E8C();
        v28 = v14;
        v30 = v29;
        sub_1E139CE5C(&v385);
        LOBYTE(v377) = v366;
        BYTE1(v377) = v372;
        v378 = v8;
        v379 = v9;
        v31 = v374;
        (*(v374 + 32))(v23, v28, v27, v30, &v377, v24, v374);

        (*(v31 + 128))(v23, v28, v24, v31);
        v32 = *(v374 + 144);
        v33 = 0x7463697274736572;
LABEL_29:
        v116 = 0xEA00000000006465;
LABEL_52:
        v32(v33, v116, v24, v31);
        goto LABEL_53;
      case 0xC:
        v46 = swift_getObjectType();
        LOBYTE(v385) = 5;
        BYTE1(v385) = v7;
        *(&v385 + 1) = 0;
        *&v386 = 0;
        v31 = v374;
        (*(v374 + 48))(0x72616D6B63656863, 0xE90000000000006BLL, &v385, v46, v374);
        sub_1E139D53C(*(&v385 + 1), v386);
        goto LABEL_53;
      default:
        v350 = v382;

        v358 = *(&v381 + 1);

        sub_1E139D340(v383, *(&v383 + 1), *v384, *&v384[8]);
        sub_1E139D0E0(v383, (BYTE8(v383) | (BYTE9(v383) << 8) | (*(&v383 + 10) << 16) | (HIWORD(v383) << 48)), *v384, *&v384[8]);
        if (*(v1 + 158) != 1)
        {
          v22 = *(&v382 + 1);
          v364 = v381 | (v13 << 8);
          sub_1E139D580(v8, v9);
          v140 = sub_1E1396644();
          v342 = v141;
          v343 = v140;
          v142 = v8;
          v143 = v9;
          v144 = v366;
          goto LABEL_96;
        }

        v16 = sub_1E1396510();
        v342 = v17;
        v343 = v16;
        if (!v362)
        {
          goto LABEL_94;
        }

        v18 = *(v362 + 88);
        if (!*(v18 + 16))
        {
          goto LABEL_94;
        }

        v19 = sub_1E1595560(1);
        if (v20)
        {
          v21 = (*(v18 + 56) + 16 * v19);
          v350 = *v21;
          v22 = v21[1];
        }

        else
        {

LABEL_94:
          v350 = 0;
          v22 = 0;
        }

        v143 = 0;
        v144 = 2;
        v142 = 2;
        v358 = v208;
        v364 = v343;
LABEL_96:
        v371 = v142;
        if (v22)
        {
          v367 = v144;
          v341 = swift_getObjectType();
          v209 = *(v1 + 154);
          v375 = *(v1 + 150);
          v376 = v209;
          v210 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v210;
          *(v388 + 10) = *(v1 + 258);
          v211 = *(v1 + 216);
          v385 = *v3;
          v386 = v211;
          sub_1E139D308(&v385, &v377);
          v212 = sub_1E1392E8C();
          v214 = v213;
          sub_1E139CE5C(&v385);
          LOBYTE(v377) = v367;
          BYTE1(v377) = v372;
          v378 = v371;
          v379 = v143;
          v31 = v374;
          v215 = *(v374 + 24);
          sub_1E139D580(v371, v143);
          v215(v364, v358, v350, v22, &v375, v212, v214, &v377, v341, v374);

          sub_1E139D53C(v378, v379);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB56A0);
          v216 = swift_allocObject();
          *(v216 + 16) = xmmword_1E1B02CD0;
          *(v216 + 32) = v350;
          *(v216 + 40) = v22;
          *(v216 + 48) = v343;
          *(v216 + 56) = v342;
          v377 = v216;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
          sub_1E1302CD4(&qword_1EE1E34E0, &unk_1ECEB2D10);
          v217 = sub_1E1AF5D6C();
          v219 = v218;

          (*(v374 + 128))(v217, v219, v341, v374);
        }

        else
        {
          v368 = swift_getObjectType();
          v220 = *(v1 + 248);
          v387 = *(v1 + 232);
          v388[0] = v220;
          *(v388 + 10) = *(v1 + 258);
          v221 = *(v1 + 216);
          v385 = *v3;
          v386 = v221;
          sub_1E139D308(&v385, &v377);
          v222 = sub_1E1392E8C();
          v224 = v223;
          sub_1E139CE5C(&v385);
          LOBYTE(v377) = v144;
          BYTE1(v377) = v372;
          v378 = v371;
          v379 = v143;
          v31 = v374;
          v373 = *(v374 + 32);
          sub_1E139D580(v371, v143);
          v373(v364, v358, v222, v224, &v377, v368, v374);

          sub_1E139D53C(v378, v379);
          (*(v374 + 128))(v343, v342, v368, v374);
        }

        v225 = swift_getObjectType();
        (*(v31 + 144))(7628135, 0xE300000000000000, v225, v31);
        sub_1E139D53C(v371, v143);
        goto LABEL_53;
    }
  }
}

void sub_1E139CDAC(uint64_t a1, uint64_t a2)
{
  sub_1E139A868();
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 104))(v2, sel_offerButtonTapped, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  _s11AppStoreKit0A20OfferButtonPresenterC6update13ignoringCacheySb_tF_0();
}

uint64_t objectdestroy_3Tm()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void sub_1E139CF44(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, char a10, unsigned __int8 a11)
{
  if (a11 > 5u)
  {
    if (a11 > 8u)
    {
      if (a11 == 9)
      {
        goto LABEL_21;
      }

      if (a11 != 10)
      {
        if (a11 != 11)
        {
          return;
        }

        goto LABEL_21;
      }
    }

    else
    {
      if (a11 == 6 || a11 == 7)
      {
LABEL_21:

        return;
      }

      if (a11 != 8)
      {
        return;
      }
    }

    goto LABEL_21;
  }

  if (a11 <= 1u)
  {
    if (!a11)
    {

      a1 = a5;
      a2 = a6;
      a3 = a7;
      a4 = a8;
    }

    sub_1E139D0E0(a1, a2, a3, a4);
  }

  else
  {
    if (a11 == 2)
    {
      goto LABEL_21;
    }

    if (a11 == 4 || a11 == 5)
    {
      v11 = a3;
      v16 = a4;
    }
  }
}

void sub_1E139D0E0(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != 1)
  {
  }
}

void sub_1E139D134(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, unsigned __int16 a10)
{
  if (HIBYTE(a10) <= 0xFEu)
  {
    sub_1E139CF44(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, HIBYTE(a10));
  }
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit0A16OfferButtonStateO27DownloadProgressInformationVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t get_enum_tag_for_layout_string_11AppStoreKit0A16OfferButtonStateO(uint64_t a1)
{
  if ((*(a1 + 73) & 0xFu) <= 0xB)
  {
    return *(a1 + 73) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1E139D228(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 74))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 73);
  if (v3 <= 0xC)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E139D270(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 74) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 74) = 0;
    }

    if (a2)
    {
      *(result + 73) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E139D2C8(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xC)
  {
    *result = a2 - 12;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0;
    LOBYTE(a2) = 12;
  }

  *(result + 73) = a2;
  return result;
}

void sub_1E139D340(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != 1)
  {
    v6 = a4;
    v7 = a2;

    v8 = a3;
  }
}

uint64_t sub_1E139D394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E139D404(uint64_t a1)
{
  v4 = *(sub_1E1AF330C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5DC;

  return sub_1E1795068(a1, v6, v7, v1 + v5, v9, v10);
}

void sub_1E139D53C(void *a1, void *a2)
{
  if (a1 >= 3)
  {
  }
}

id sub_1E139D580(id result, void *a2)
{
  if (result >= 3)
  {
    v3 = result;

    return a2;
  }

  return result;
}

unint64_t sub_1E139D5D8()
{
  result = qword_1EE1E3C80;
  if (!qword_1EE1E3C80)
  {
    sub_1E1AF320C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1E3C80);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E139D644(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1E139D6A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1E139D7D0()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1EE1E1590);
  __swift_project_value_buffer(v4, qword_1EE1E1590);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

char *AppUpdatesDataSource.init(objectGraph:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_consistencyLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2CE0);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *&v1[v4] = v5;
  v6 = OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_updatesQuery;
  *&v1[v6] = [objc_opt_self() queryForUpdates];
  v7 = OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_lastServerReloadTime;
  v8 = sub_1E1AEFE6C();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  v9 = OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_lockupsListeners;
  v10 = MEMORY[0x1E69E7CC0];
  *&v1[v9] = sub_1E159EC20(MEMORY[0x1E69E7CC0]);
  v11 = OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_countsListeners;
  *&v1[v11] = sub_1E159EE4C(v10);
  *&v1[OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_adamIdToCachedAppLockupPair] = 0;
  v1[OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_isFetching] = 0;
  v1[OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_queryResultsDidChange] = 0;
  *&v1[OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_objectGraph] = a1;
  v16.receiver = v1;
  v16.super_class = ObjectType;

  v12 = objc_msgSendSuper2(&v16, sel_init);
  v13 = *&v12[OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_updatesQuery];
  v14 = v12;
  [v13 setObserver_];

  return v14;
}

uint64_t sub_1E139DB24(uint64_t a1)
{
  v2 = sub_1E1AEFEAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = sub_1E1AEFE9C();
    v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = *&v12[OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_consistencyLock];
    v15 = MEMORY[0x1EEE9AC00](v13);
    *(&v24 - 4) = v12;
    *(&v24 - 3) = v8;
    *(&v24 - 2) = a1;
    MEMORY[0x1EEE9AC00](v15);
    *(&v24 - 2) = sub_1E13A93D4;
    *(&v24 - 1) = v16;
    os_unfair_lock_lock(v14 + 4);
    v27 = a1;
    sub_1E13A95A4(v17);
    os_unfair_lock_unlock(v14 + 4);
    v25 = *(v3 + 32);
    v25(v10, v8, v2);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = v10;
    v20 = v2;
    v21 = v26;
    (*(v3 + 16))(v26, v19, v20);
    v22 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v18;
    v25((v23 + v22), v21, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D40);
    sub_1E1AF64AC();

    return (*(v3 + 8))(v19, v20);
  }

  return result;
}

void sub_1E139DDF0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_consistencyLock);
    v4 = MEMORY[0x1EEE9AC00](Strong);
    v2 = MEMORY[0x1EEE9AC00](v4);
    os_unfair_lock_lock(v1 + 4);
    sub_1E13A95A4(v3);
    os_unfair_lock_unlock(v1 + 4);
  }
}

uint64_t sub_1E139DED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_1E1AEFEAC();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D40);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a3, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  swift_beginAccess();
  sub_1E1386C10(v7, v10);
  return swift_endAccess();
}

uint64_t sub_1E139E0B8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B58);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_1E1AEFEAC();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D40);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  swift_beginAccess();
  sub_1E1386C10(v5, v8);
  return swift_endAccess();
}

uint64_t sub_1E139E258(uint64_t *a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D38);
  v3 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v26 = v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - v7;
  v9 = *a1;
  v24 = a1[1];
  v25 = v9;
  v23 = a1[2];
  v10 = *(v1 + OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_consistencyLock);
  v32 = v1;
  v29 = sub_1E13A8E18;
  v30 = &v31;
  os_unfair_lock_lock(v10 + 4);
  sub_1E13A9574(v33);
  os_unfair_lock_unlock(v10 + 4);
  v11 = v33[0] + 64;
  v12 = 1 << *(v33[0] + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v33[0] + 64);
  v15 = (v12 + 63) >> 6;
  v22[0] = v6 + 8;
  v22[1] = v6 + 16;
  v16 = (v3 + 8);
  v28 = v33[0];

  for (i = 0; v14; result = (*v16)(v21, v27))
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v6 + 16))(v8, *(v28 + 56) + *(v6 + 72) * (v20 | (v19 << 6)), v5);
    v33[0] = v25;
    v33[1] = v24;
    v33[2] = v23;

    v21 = v26;
    sub_1E1AF64BC();
    (*(v6 + 8))(v8, v5);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
    }

    v14 = *(v11 + 8 * v19);
    ++i;
    if (v14)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E139E578(uint64_t *a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x1EEE9AC00](v1);
  *(&v5 - v2) = 1;
  (*(v3 + 104))(&v5 - v2, *MEMORY[0x1E69E8640]);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E1AF64EC();
}

uint64_t sub_1E139E694(uint64_t a1)
{
  v2 = sub_1E1AEFEAC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = sub_1E1AEFE9C();
    v26 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = *&v12[OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_consistencyLock];
    v15 = MEMORY[0x1EEE9AC00](v13);
    *(&v24 - 4) = v12;
    *(&v24 - 3) = v8;
    *(&v24 - 2) = a1;
    MEMORY[0x1EEE9AC00](v15);
    *(&v24 - 2) = sub_1E13A9380;
    *(&v24 - 1) = v16;
    os_unfair_lock_lock(v14 + 4);
    v27 = a1;
    sub_1E13A95A4(v17);
    os_unfair_lock_unlock(v14 + 4);
    v25 = *(v3 + 32);
    v25(v10, v8, v2);
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = v10;
    v20 = v2;
    v21 = v26;
    (*(v3 + 16))(v26, v19, v20);
    v22 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = v18;
    v25((v23 + v22), v21, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D30);
    sub_1E1AF64AC();

    return (*(v3 + 8))(v19, v20);
  }

  return result;
}

void sub_1E139E960()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_consistencyLock);
    v4 = MEMORY[0x1EEE9AC00](Strong);
    v2 = MEMORY[0x1EEE9AC00](v4);
    os_unfair_lock_lock(v1 + 4);
    sub_1E13A95A4(v3);
    os_unfair_lock_unlock(v1 + 4);
  }
}

uint64_t sub_1E139EA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_1E1AEFEAC();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D30);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v7, a3, v12);
  (*(v13 + 56))(v7, 0, 1, v12);
  swift_beginAccess();
  sub_1E1386E44(v7, v10);
  return swift_endAccess();
}

uint64_t sub_1E139EC28(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_1E1AEFEAC();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a2);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D30);
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  swift_beginAccess();
  sub_1E1386E44(v5, v8);
  return swift_endAccess();
}

uint64_t sub_1E139EDC8(uint64_t *a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D28);
  v3 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v26 = v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D30);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v22 - v7;
  v9 = *a1;
  v24 = a1[1];
  v25 = v9;
  v23 = a1[2];
  v10 = *(v1 + OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_consistencyLock);
  v32 = v1;
  v29 = sub_1E13A8D9C;
  v30 = &v31;
  os_unfair_lock_lock(v10 + 4);
  sub_1E13A8DBC(v33);
  os_unfair_lock_unlock(v10 + 4);
  v11 = v33[0] + 64;
  v12 = 1 << *(v33[0] + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v33[0] + 64);
  v15 = (v12 + 63) >> 6;
  v22[0] = v6 + 8;
  v22[1] = v6 + 16;
  v16 = (v3 + 8);
  v28 = v33[0];

  for (i = 0; v14; result = (*v16)(v21, v27))
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v6 + 16))(v8, *(v28 + 56) + *(v6 + 72) * (v20 | (v19 << 6)), v5);
    v33[0] = v25;
    v33[1] = v24;
    v33[2] = v23;
    v21 = v26;
    sub_1E1AF64BC();
    (*(v6 + 8))(v8, v5);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v15)
    {
    }

    v14 = *(v11 + 8 * v19);
    ++i;
    if (v14)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t AppUpdatesDataSource.getUpdatesLockups(fromServer:forceReloadFromServer:)(uint64_t a1, char a2, char a3)
{
  v4[6] = a1;
  v4[7] = v3;
  v7 = sub_1E1AF591C();
  v4[8] = v7;
  v4[9] = *(v7 - 8);
  v4[10] = swift_task_alloc();
  v8 = swift_task_alloc();
  v4[11] = v8;
  *v8 = v4;
  v8[1] = sub_1E139F1A8;

  return sub_1E139F8A0(a2, a3);
}

uint64_t sub_1E139F1A8(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 96) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E139F2F8, 0, 0);
  }
}

char *sub_1E139F2F8()
{
  if (qword_1EE1E1580 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[8];
  v5 = __swift_project_value_buffer(v4, qword_1EE1E1590);
  (*(v3 + 16))(v2, v5, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B03760;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  if (v1 >> 62)
  {
    v6 = sub_1E1AF71CC();
  }

  else
  {
    v6 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v30 = MEMORY[0x1E69E7CC0];
    result = sub_1E135C088(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v7 = v30;
    if ((v1 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        MEMORY[0x1E68FFD80](v9, v0[12]);
        v10 = sub_1E13A001C();
        v12 = v11;
        swift_unknownObjectRelease();
        v14 = *(v30 + 16);
        v13 = *(v30 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1E135C088((v13 > 1), v14 + 1, 1);
        }

        ++v9;
        *(v30 + 16) = v14 + 1;
        v15 = v30 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
      }

      while (v6 != v9);
    }

    else
    {
      v16 = (v0[12] + 32);
      do
      {
        v17 = *v16;
        v18 = sub_1E13A001C();
        v20 = v19;

        v22 = *(v30 + 16);
        v21 = *(v30 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1E135C088((v21 > 1), v22 + 1, 1);
        }

        *(v30 + 16) = v22 + 1;
        v23 = v30 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        ++v16;
        --v6;
      }

      while (v6);
    }
  }

  v25 = v0[9];
  v24 = v0[10];
  v26 = v0[8];
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
  v0[2] = v7;
  sub_1E1AF38BC();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF548C();

  (*(v25 + 8))(v24, v26);
  v27 = swift_task_alloc();
  v0[13] = v27;
  *v27 = v0;
  v27[1] = sub_1E139F6B0;
  v28 = v0[12];
  v29 = v0[6];

  return sub_1E13A03D0(v29, v28);
}

uint64_t sub_1E139F6B0()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1E139F834;
  }

  else
  {
    v2 = sub_1E139F7C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E139F7C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E139F834()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E139F8A0(char a1, char a2)
{
  *(v3 + 176) = v2;
  *(v3 + 225) = a2;
  *(v3 + 224) = a1;
  *(v3 + 184) = swift_getObjectType();

  return MEMORY[0x1EEE6DFA0](sub_1E139F918, 0, 0);
}

uint64_t sub_1E139F918()
{
  v28 = v0;
  v1 = OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_consistencyLock;
  v2 = swift_task_alloc();
  v3 = *(v0[22] + v1);
  *(v2 + 16) = *(v0 + 11);
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_1E13A91AC;
  *(v4 + 24) = v2;
  os_unfair_lock_lock(v3 + 4);
  sub_1E13A958C(v27);
  os_unfair_lock_unlock(v3 + 4);
  v5 = v0[22];
  v6 = *(v0 + 225);
  v7 = *(v0 + 224);
  v8 = v27[0];

  v9 = v8 | v6;
  v10 = *(v5 + OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_updatesQuery);
  v11 = v7 & v9;
  if (v7 & v9)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  [*(v5 + OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_updatesQuery) setQueryOptions_];
  if (qword_1EE1E1580 != -1)
  {
    swift_once();
  }

  v13 = sub_1E1AF591C();
  __swift_project_value_buffer(v13, qword_1EE1E1590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B04930;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  v0[16] = sub_1E13006E4(0, &unk_1EE1D25C8);
  v0[13] = v10;
  v26 = v10;
  sub_1E1AF38BC();
  sub_1E1308058((v0 + 13), &qword_1ECEB2DF0);
  sub_1E1AF382C();
  v0[20] = MEMORY[0x1E69E6370];
  *(v0 + 136) = v11 & 1;
  sub_1E1AF38BC();
  sub_1E1308058((v0 + 17), &qword_1ECEB2DF0);
  sub_1E1AF548C();

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D80);
  v0[24] = sub_1E1AF588C();
  v15 = sub_1E1AF57CC();
  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  v0[6] = sub_1E13A920C;
  v0[7] = v18;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1E16C3118;
  v0[5] = &block_descriptor_2;
  v19 = _Block_copy(v0 + 2);

  [v26 executeQueryWithResultHandler_];
  _Block_release(v19);
  if (v11)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = sub_1E13006E4(0, &qword_1EE1E3430);
    v21 = sub_1E1AF68EC();
    v22 = MEMORY[0x1E69AB720];
    v0[11] = v20;
    v0[12] = v22;
    v0[8] = v21;
    sub_1E1AF57FC();

    __swift_destroy_boxed_opaque_existential_1((v0 + 8));
  }

  v23 = sub_1E13A9244();
  v24 = swift_task_alloc();
  v0[25] = v24;
  *v24 = v0;
  v24[1] = sub_1E139FE34;

  return MEMORY[0x1EEE176B8](v0 + 21, v14, v23);
}

uint64_t sub_1E139FE34()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {
    v3 = sub_1E139FFB8;
  }

  else
  {
    *(v2 + 216) = *(v2 + 168);
    v3 = sub_1E139FF50;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E139FF50()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 216);

  return v1(v2);
}

uint64_t sub_1E139FFB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E13A001C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v26 - v3;
  v28 = 0;
  v29 = 0xE000000000000000;
  sub_1E1AF6FEC();
  MEMORY[0x1E68FECA0](0x6449656C646E7562, 0xEA0000000000203ALL);
  v5 = [v0 bundleID];
  v6 = sub_1E1AF5DFC();
  v8 = v7;

  MEMORY[0x1E68FECA0](v6, v8);

  MEMORY[0x1E68FECA0](0x744965726F747320, 0xEE00203A44496D65);
  v27 = [v1 storeItemID];
  v9 = sub_1E1AF742C();
  MEMORY[0x1E68FECA0](v9);

  MEMORY[0x1E68FECA0](0xD000000000000019, 0x80000001E1B5B800);
  v27 = [v1 storeExternalVersionID];
  v10 = sub_1E1AF742C();
  MEMORY[0x1E68FECA0](v10);

  MEMORY[0x1E68FECA0](0xD000000000000014, 0x80000001E1B5B820);
  v11 = [v1 isUpdateAvailable];
  v12 = v11 == 0;
  if (v11)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (v12)
  {
    v14 = 0xE500000000000000;
  }

  else
  {
    v14 = 0xE400000000000000;
  }

  MEMORY[0x1E68FECA0](v13, v14);

  MEMORY[0x1E68FECA0](0x736572676F727020, 0xEB00000000203A73);
  v27 = [v1 progress];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D70);
  v15 = sub_1E1AF5E8C();
  MEMORY[0x1E68FECA0](v15);

  MEMORY[0x1E68FECA0](0xD000000000000014, 0x80000001E1B5B840);
  v16 = [v1 updateInstallDate];
  if (v16)
  {
    v17 = v16;
    sub_1E1AEFE3C();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v19 = sub_1E1AEFE6C();
  (*(*(v19 - 8) + 56))(v4, v18, 1, v19);
  v20 = sub_1E1AF5E8C();
  MEMORY[0x1E68FECA0](v20);

  MEMORY[0x1E68FECA0](0x6174736E49736920, 0xEE00203A64656C6CLL);
  v21 = [v1 isInstalled];
  v22 = v21 == 0;
  if (v21)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (v22)
  {
    v24 = 0xE500000000000000;
  }

  else
  {
    v24 = 0xE400000000000000;
  }

  MEMORY[0x1E68FECA0](v23, v24);

  return v28;
}

uint64_t sub_1E13A03D0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D48);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  updated = type metadata accessor for AppUpdateMetadata();
  v3[13] = updated;
  v3[14] = *(updated - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E13A0510, 0, 0);
}

uint64_t sub_1E13A0510()
{
  v72 = v0;
  v1 = v0[8];
  if (v1 >> 62)
  {
    goto LABEL_56;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    v8 = v0[7];
    *v8 = MEMORY[0x1E69E7CC0];
    v8[1] = v3;
    v8[2] = v3;
LABEL_6:

    v9 = v0[1];

    return v9();
  }

  v4 = v0[9];
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = v3;
  v5 = *(v4 + OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_consistencyLock);
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  v7 = swift_task_alloc();
  *(v7 + 16) = sub_1E13A8EDC;
  *(v7 + 24) = v6;
  os_unfair_lock_lock(v5 + 4);
  sub_1E13A8E98(&v71);
  os_unfair_lock_unlock(v5 + 4);
  v11 = v71;

  if (v11)
  {
    if (v2 >= 1)
    {
      v12 = 0;
      v13 = v1 & 0xC000000000000001;
      v68 = v0[8] + 32;
      v6 = MEMORY[0x1E69E7CC0];
      v64 = MEMORY[0x1E69E7CC0];
      v66 = v2;
      while (1)
      {
        if (v13)
        {
          v15 = MEMORY[0x1E68FFD80](v12, v0[8]);
        }

        else
        {
          v15 = *(v68 + 8 * v12);
        }

        v16 = v15;
        v17 = [v15 storeItemID];
        if (!*(v11 + 16))
        {
          goto LABEL_13;
        }

        v18 = sub_1E15A47C8(v17);
        if ((v19 & 1) == 0)
        {
          goto LABEL_13;
        }

        v20 = v13;
        v21 = *(*(v11 + 56) + 16 * v18);

        if (sub_1E13A1948(v21))
        {
          break;
        }

        MEMORY[0x1E68FEF20](v22);
        if (*((v0[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
        }

        sub_1E1AF62AC();

        v64 = v0[3];
        v13 = v20;
        v2 = v66;
LABEL_16:
        if (v2 == ++v12)
        {

          v1 = v6;
          v23 = v64;
          goto LABEL_28;
        }
      }

      v13 = v20;
      v2 = v66;
LABEL_13:
      v14 = v16;
      MEMORY[0x1E68FEF20]();
      if (*((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[2] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E1AF625C();
      }

      sub_1E1AF62AC();

      v6 = v0[2];
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_60;
  }

  v6 = v0[8];

  v23 = MEMORY[0x1E69E7CC0];
LABEL_28:
  v0[16] = v23;
  v0[17] = v23;
  if (!(v6 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    goto LABEL_58;
  }

  if (!sub_1E1AF71CC())
  {
LABEL_58:

    v51 = v0[8];
    v52 = v0[7];
    v71 = v0[16];
    sub_1E1728330(MEMORY[0x1E69E7CC0]);
    sub_1E13A1EAC(v71, v51, v52);

    goto LABEL_6;
  }

LABEL_30:
  if (!(v6 >> 62))
  {
    v24 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      goto LABEL_61;
    }

LABEL_32:
    v25 = 0;
    v26 = v0[14];
    v59 = v0[11];
    v60 = v0[13];
    v65 = v6 & 0xFFFFFFFFFFFFFF8;
    v67 = v6 & 0xC000000000000001;
    v58 = v26;
    v62 = (v26 + 48);
    v63 = (v26 + 56);
    v27 = MEMORY[0x1E69E7CC0];
    v61 = v24;
    while (1)
    {
      if (v67)
      {
        v28 = MEMORY[0x1E68FFD80](v25, v6);
        v29 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v25 >= *(v65 + 16))
        {
          goto LABEL_55;
        }

        v28 = *(v6 + 8 * v25 + 32);
        v29 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          v2 = sub_1E1AF71CC();
          goto LABEL_3;
        }
      }

      v30 = v28;
      v31 = [v30 updateMetadata];
      v69 = v29;
      if (v31)
      {
        v32 = v31;
        v33 = sub_1E1AF5C7C();

        v34 = [v30 isUpdateAvailable];
        v35 = [v30 updateInstallDate];
        if (v35)
        {
          v36 = v35;
          sub_1E1AEFE3C();

          v37 = 0;
        }

        else
        {
          v37 = 1;
        }

        v38 = v6;
        v39 = v0[10];
        v40 = sub_1E1AEFE6C();
        (*(*(v40 - 8) + 56))(v39, v37, 1, v40);
        v41 = [v30 progress];
        v42 = v41;
        if (v41)
        {
        }

        v43 = v42 != 0;
        v44 = v0[13];
        v45 = v0[10];
        v46 = v0[11];
        *v46 = v33;
        *(v59 + 8) = v34;
        sub_1E137F600(v45, v46 + *(v60 + 24), &unk_1ECEBB780);
        *(v46 + *(v60 + 28)) = v43;
        (*v63)(v46, 0, 1, v44);
        v24 = v61;
      }

      else
      {
        v38 = v6;
        (*v63)(v0[11], 1, 1, v0[13]);
      }

      v1 = v0[12];
      v47 = v0[13];
      sub_1E137F600(v0[11], v1, &qword_1ECEB2D48);

      if ((*v62)(v1, 1, v47) == 1)
      {
        sub_1E1308058(v0[12], &qword_1ECEB2D48);
        v6 = v38;
      }

      else
      {
        sub_1E13A8F08(v0[12], v0[15]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1E172DBAC(0, v27[2] + 1, 1, v27);
        }

        v6 = v38;
        v49 = v27[2];
        v48 = v27[3];
        if (v49 >= v48 >> 1)
        {
          v27 = sub_1E172DBAC(v48 > 1, v49 + 1, 1, v27);
        }

        v50 = v0[15];
        v27[2] = v49 + 1;
        sub_1E13A8F08(v50, v27 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v49);
      }

      ++v25;
      if (v69 == v24)
      {
        goto LABEL_62;
      }
    }
  }

LABEL_60:
  v24 = sub_1E1AF71CC();
  if (v24)
  {
    goto LABEL_32;
  }

LABEL_61:
  v27 = MEMORY[0x1E69E7CC0];
LABEL_62:
  v0[18] = v27;
  v53 = v0[9];

  type metadata accessor for JSIntentDispatcher();
  v54 = *(v53 + OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_objectGraph);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v55 = v0[4];
  v0[19] = v55;
  v0[6] = v27;
  v70 = (*(*v55 + 112) + **(*v55 + 112));
  v56 = swift_task_alloc();
  v0[20] = v56;
  v57 = sub_1E13A8F6C();
  *v56 = v0;
  v56[1] = sub_1E13A0DFC;

  return v70(v0 + 5, v0 + 6, v54, "", 0, 2, &type metadata for AppUpdateLockupsIntent, v57);
}

uint64_t sub_1E13A0DFC()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {

    v3 = sub_1E13A102C;
  }

  else
  {
    *(v2 + 176) = *(v2 + 40);
    v3 = sub_1E13A0F48;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E13A0F48()
{

  v1 = v0[8];
  v2 = v0[7];
  v5 = v0[16];
  sub_1E1728330(v0[22]);
  sub_1E13A1EAC(v5, v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E13A102C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AppUpdatesDataSource.getUpdatesCounts()(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E13A115C;

  return sub_1E139F8A0(0, 0);
}

uint64_t sub_1E13A115C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E13A1290, 0, 0);
  }
}

void sub_1E13A1290()
{
  v1 = v0[4];
  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      if (v2 < 1)
      {
        __break(1u);
        return;
      }

      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = v1 & 0xC000000000000001;
      v14 = v0[4] + 32;
      while (1)
      {
        v9 = v7 ? MEMORY[0x1E68FFD80](v6, v0[4]) : *(v14 + 8 * v6);
        v1 = v9;
        if (([v9 isUpdateAvailable] & 1) == 0)
        {
          break;
        }

LABEL_13:
        v11 = [v1 autoUpdateEnabled];

        if (v11)
        {
          v8 = __OFADD__(v4++, 1);
          if (v8)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v8 = __OFADD__(v5++, 1);
          if (v8)
          {
            goto LABEL_21;
          }
        }

LABEL_6:
        if (v2 == ++v6)
        {
          goto LABEL_24;
        }
      }

      v10 = [v1 progress];
      if (v10)
      {
        break;
      }

      v8 = __OFADD__(v3++, 1);
      if (!v8)
      {
        goto LABEL_6;
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      v2 = sub_1E1AF71CC();
      if (!v2)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_13;
  }

LABEL_23:
  v3 = 0;
  v4 = 0;
  v5 = 0;
LABEL_24:
  v12 = v0[2];

  *v12 = v5;
  v12[1] = v4;
  v12[2] = v3;
  v13 = v0[1];

  v13();
}

uint64_t sub_1E13A1434@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_1E1AEFE6C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  v16 = OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_lastServerReloadTime;
  swift_beginAccess();
  sub_1E134FD1C(a1 + v16, v5, &unk_1ECEBB780);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    result = sub_1E1308058(v5, &unk_1ECEBB780);
    v18 = 1;
  }

  else
  {
    (*(v7 + 32))(v15, v5, v6);
    sub_1E1AEFE5C();
    sub_1E1AEFDAC();
    sub_1E13A933C(&qword_1EE1FADC0);
    v19 = sub_1E1AF5D7C();
    v20 = *(v7 + 8);
    v20(v10, v6);
    v20(v13, v6);
    result = (v20)(v15, v6);
    v18 = v19 ^ 1;
  }

  *v21 = v18 & 1;
  return result;
}

uint64_t sub_1E13A16D8()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_consistencyLock);
    v2 = result;

    swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    MEMORY[0x1EEE9AC00](v4);
    os_unfair_lock_lock(v1 + 4);
    sub_1E13A91C8(&v5);
    os_unfair_lock_unlock(v1 + 4);
  }

  return result;
}

void sub_1E13A180C(BOOL *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8[-v3];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1E1AEFE5C();
    v6 = sub_1E1AEFE6C();
    (*(*(v6 - 8) + 56))(v4, 0, 1, v6);
    v7 = OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_lastServerReloadTime;
    swift_beginAccess();
    sub_1E13A92CC(v4, Strong + v7);
    swift_endAccess();
  }

  *a1 = Strong == 0;
}

uint64_t sub_1E13A1948(void *a1)
{
  v2 = v1;
  v4 = sub_1E1AEFE6C();
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D58);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v34 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v34 - v16;
  v18 = [v2 storeItemID];
  if (v18 != [a1 storeItemID])
  {
    goto LABEL_25;
  }

  if (([v2 isUpdateAvailable] & 1) == 0)
  {
    v19 = [v2 progress];
    if (!v19)
    {
      LODWORD(v20) = 1;
      if ([a1 isUpdateAvailable])
      {
        return v20 & 1;
      }

      goto LABEL_7;
    }
  }

  if ([a1 isUpdateAvailable])
  {
    goto LABEL_13;
  }

  LODWORD(v20) = 0;
LABEL_7:
  v21 = [a1 progress];
  if (v21)
  {

    if (v20)
    {
      goto LABEL_25;
    }
  }

  else if (!v20)
  {
LABEL_25:
    LOBYTE(v20) = 1;
    return v20 & 1;
  }

LABEL_13:
  v22 = [v2 updateInstallDate];
  if (v22)
  {
    v23 = v22;
    sub_1E1AEFE3C();

    v24 = v35;
    v25 = *(v35 + 56);
    v25(v17, 0, 1, v4);
  }

  else
  {
    v24 = v35;
    v25 = *(v35 + 56);
    v25(v17, 1, 1, v4);
  }

  v26 = [a1 updateInstallDate];
  if (v26)
  {
    v27 = v26;
    sub_1E1AEFE3C();

    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  v25(v15, v28, 1, v4);
  v29 = *(v6 + 48);
  sub_1E134FD1C(v17, v8, &unk_1ECEBB780);
  sub_1E134FD1C(v15, &v8[v29], &unk_1ECEBB780);
  v30 = *(v24 + 48);
  if (v30(v8, 1, v4) != 1)
  {
    sub_1E134FD1C(v8, v12, &unk_1ECEBB780);
    if (v30(&v8[v29], 1, v4) != 1)
    {
      v32 = v34;
      (*(v24 + 32))(v34, &v8[v29], v4);
      sub_1E13A933C(&unk_1ECEB2D60);
      v33 = sub_1E1AF5DAC();
      v20 = *(v24 + 8);
      v20(v32, v4);
      sub_1E1308058(v15, &unk_1ECEBB780);
      sub_1E1308058(v17, &unk_1ECEBB780);
      v20(v12, v4);
      sub_1E1308058(v8, &unk_1ECEBB780);
      LOBYTE(v20) = v33 ^ 1;
      return v20 & 1;
    }

    sub_1E1308058(v15, &unk_1ECEBB780);
    sub_1E1308058(v17, &unk_1ECEBB780);
    (*(v24 + 8))(v12, v4);
    goto LABEL_24;
  }

  sub_1E1308058(v15, &unk_1ECEBB780);
  sub_1E1308058(v17, &unk_1ECEBB780);
  if (v30(&v8[v29], 1, v4) != 1)
  {
LABEL_24:
    sub_1E1308058(v8, &qword_1ECEB2D58);
    goto LABEL_25;
  }

  sub_1E1308058(v8, &unk_1ECEBB780);
  LOBYTE(v20) = 0;
  return v20 & 1;
}

uint64_t sub_1E13A1EAC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v94 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v101 = v93 - v9;
  v10 = MEMORY[0x1E69E7CC0];
  v115 = MEMORY[0x1E69E7CC0];
  v116 = MEMORY[0x1E69E7CC0];
  v114 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB94B0);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  v102 = v113;
  *&v113 = sub_1E159F078(v10);
  if (a2 >> 62)
  {
    goto LABEL_83;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E1AF71CC())
  {
    v97 = v8;
    v104 = a1;
    if (!i)
    {
      v12 = MEMORY[0x1E69E7CC8];
LABEL_24:
      a1 = v104;
      if (v104 >> 62)
      {
        v34 = sub_1E1AF71CC();
        if (v34)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v34 = *((v104 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v34)
        {
LABEL_26:
          v107 = v12;
          v35 = 0;
          v36 = a1 & 0xC000000000000001;
          v103 = a1 & 0xFFFFFFFFFFFFFF8;
          v95 = v102;
          v100 = MEMORY[0x1E69E7CC0];
          v96 = MEMORY[0x1E69E7CC0];
          v99 = MEMORY[0x1E69E7CC0];
          v105 = v34;
          v106 = a1 & 0xC000000000000001;
          while (1)
          {
            if (v36)
            {
              a2 = MEMORY[0x1E68FFD80](v35, a1);
              v37 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
                goto LABEL_78;
              }
            }

            else
            {
              if (v35 >= *(v103 + 16))
              {
                goto LABEL_80;
              }

              a2 = *(a1 + 8 * v35 + 32);

              v37 = v35 + 1;
              if (__OFADD__(v35, 1))
              {
                goto LABEL_78;
              }
            }

            v38 = v107;
            if (*(v107 + 16))
            {
              break;
            }

LABEL_28:
            ++v35;
            if (v37 == v34)
            {
              goto LABEL_85;
            }
          }

          v39 = *(a2 + 16);
          a1 = *(a2 + 24);

          v40 = sub_1E15A47D8(v39, a1);
          v8 = v41;

          if (v8)
          {
            v42 = *(*(v38 + 56) + 8 * v40);
            v43 = [v42 storeItemID];
            v8 = v42;

            v44 = v113;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v112 = v44;
            v46 = sub_1E15A47C8(v43);
            v48 = *(v44 + 16);
            v49 = (v47 & 1) == 0;
            v32 = __OFADD__(v48, v49);
            v50 = v48 + v49;
            if (v32)
            {
              goto LABEL_81;
            }

            a1 = v47;
            if (*(v44 + 24) >= v50)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v78 = v46;
                sub_1E14166C8();
                v46 = v78;
              }
            }

            else
            {
              sub_1E1689C94(v50, isUniquelyReferenced_nonNull_native);
              v46 = sub_1E15A47C8(v43);
              if ((a1 & 1) != (v51 & 1))
              {
                goto LABEL_87;
              }
            }

            v36 = v106;
            v52 = v112;
            if (a1)
            {
              v53 = v112[7] + 16 * v46;
              v54 = *v53;
              *v53 = v8;
              *(v53 + 8) = a2;
            }

            else
            {
              v112[(v46 >> 6) + 8] |= 1 << v46;
              *(v52[6] + 8 * v46) = v43;
              v55 = (v52[7] + 16 * v46);
              *v55 = v8;
              v55[1] = a2;
              v56 = v52[2];
              v32 = __OFADD__(v56, 1);
              v57 = v56 + 1;
              if (v32)
              {
                goto LABEL_82;
              }

              v52[2] = v57;
            }

            *&v113 = v52;
            v58 = [v8 isUpdateAvailable];
            v34 = v105;
            if (v58)
            {
              goto LABEL_51;
            }

            v59 = [v8 progress];
            if (v59)
            {

LABEL_51:
              v60 = [v8 autoUpdateEnabled];

              if (v60)
              {
                MEMORY[0x1E68FEF20](v61);
                if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1E1AF625C();
                }

                sub_1E1AF62AC();
                v100 = v115;
              }

              else
              {
                MEMORY[0x1E68FEF20](v61);
                if (*((v116 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1E1AF625C();
                }

                sub_1E1AF62AC();
                v99 = v116;
              }

              if (*(a2 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_externalVersionId + 8) != 1)
              {
                v62 = *(a2 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_externalVersionId);
                v63 = [v8 updateBuyParams];
                if (v63)
                {
                  v64 = v63;
                  v98 = sub_1E1AF5DFC();
                  v66 = v65;

                  v67 = sub_1E1AF649C();
                  v68 = *(v67 - 8);
                  v69 = v101;
                  (*(v68 + 56))(v101, 1, 1, v67);
                  v70 = swift_allocObject();
                  *(v70 + 16) = 0;
                  *(v70 + 24) = 0;
                  *(v70 + 32) = v102;
                  *(v70 + 48) = a2;
                  *(v70 + 56) = v62;
                  *(v70 + 64) = v98;
                  *(v70 + 72) = v66;
                  v71 = v97;
                  sub_1E134FD1C(v69, v97, &qword_1ECEB2D20);
                  LODWORD(v69) = (*(v68 + 48))(v71, 1, v67);

                  swift_unknownObjectRetain();

                  if (v69 == 1)
                  {
                    sub_1E1308058(v71, &qword_1ECEB2D20);
                  }

                  else
                  {
                    sub_1E1AF648C();
                    (*(v68 + 8))(v71, v67);
                  }

                  v73 = *(v70 + 16);
                  swift_unknownObjectRetain();

                  if (v73)
                  {
                    swift_getObjectType();
                    v74 = sub_1E1AF63CC();
                    v76 = v75;
                    swift_unknownObjectRelease();
                  }

                  else
                  {
                    v74 = 0;
                    v76 = 0;
                  }

                  sub_1E1308058(v101, &qword_1ECEB2D20);
                  v77 = swift_allocObject();
                  *(v77 + 16) = &unk_1E1B04B58;
                  *(v77 + 24) = v70;
                  if (v76 | v74)
                  {
                    v108 = 0;
                    v109 = 0;
                    v110 = v74;
                    v111 = v76;
                  }

                  v34 = v105;
                  swift_task_create();

                  a1 = v104;
                  v36 = v106;
                  goto LABEL_28;
                }
              }

              goto LABEL_66;
            }

            MEMORY[0x1E68FEF20](v72);
            if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E1AF625C();
            }

            sub_1E1AF62AC();

            v96 = v114;
          }

          else
          {
          }

LABEL_66:
          a1 = v104;
          goto LABEL_28;
        }
      }

LABEL_85:

      v80 = *(v93[1] + OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_consistencyLock);
      v81 = MEMORY[0x1EEE9AC00](v79);
      v93[-2] = v82;
      v93[-1] = &v113;
      MEMORY[0x1EEE9AC00](v81);
      v93[-2] = sub_1E13A8FC0;
      v93[-1] = v83;
      os_unfair_lock_lock(v80 + 4);
      sub_1E13A95A4(v84);
      os_unfair_lock_unlock(v80 + 4);

      v112 = sub_1E1AA74E0(v85);
      sub_1E13A418C(&v112, sub_1E13A5B80, sub_1E13A4740);
      v86 = v112;

      v112 = sub_1E1AA74E0(v87);
      sub_1E13A418C(&v112, sub_1E13A5B80, sub_1E13A4740);
      v88 = v112;

      v112 = sub_1E1AA74E0(v89);
      sub_1E13A418C(&v112, sub_1E13A4C90, sub_1E13A4334);

      swift_unknownObjectRelease();
      v90 = v112;
      v91 = v94;
      *v94 = v86;
      v91[1] = v88;
      v91[2] = v90;
    }

    v8 = 0;
    v107 = a2 & 0xC000000000000001;
    v12 = MEMORY[0x1E69E7CC8];
    v105 = a2;
    v106 = a2 & 0xFFFFFFFFFFFFFF8;
LABEL_7:
    if (v107)
    {
      v15 = MEMORY[0x1E68FFD80](v8, a2);
    }

    else
    {
      if (v8 >= *(v106 + 16))
      {
        goto LABEL_76;
      }

      v15 = *(a2 + 8 * v8 + 32);
    }

    v16 = v15;
    v17 = (v8 + 1);
    if (!__OFADD__(v8, 1))
    {
      break;
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    ;
  }

  v112 = [v15 storeItemID];
  a1 = sub_1E1AF742C();
  v19 = v18;
  v20 = v16;
  v21 = swift_isUniquelyReferenced_nonNull_native();
  v112 = v12;
  a2 = sub_1E15A47D8(a1, v19);
  v23 = v12;
  v24 = v12[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    goto LABEL_77;
  }

  v27 = v22;
  if (v23[3] >= v26)
  {
    if (v21)
    {
      if (v22)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_1E1416844();
      if (v27)
      {
LABEL_5:

        v12 = v112;
        v13 = v112[7];
        v14 = *(v13 + 8 * a2);
        *(v13 + 8 * a2) = v20;

        goto LABEL_6;
      }
    }

LABEL_18:
    v12 = v112;
    v112[(a2 >> 6) + 8] |= 1 << a2;
    v30 = (v12[6] + 16 * a2);
    *v30 = a1;
    v30[1] = v19;
    *(v12[7] + 8 * a2) = v20;

    v31 = v12[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_79;
    }

    v12[2] = v33;
LABEL_6:
    ++v8;
    a2 = v105;
    if (v17 == i)
    {
      goto LABEL_24;
    }

    goto LABEL_7;
  }

  sub_1E1689F14(v26, v21);
  v28 = sub_1E15A47D8(a1, v19);
  if ((v27 & 1) == (v29 & 1))
  {
    a2 = v28;
    if (v27)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

  sub_1E1AF757C();
  __break(1u);

  __break(1u);
LABEL_87:
  result = sub_1E1AF757C();
  __break(1u);
  return result;
}

uint64_t sub_1E13A2A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v10;
  v8[6] = a6;
  v8[7] = a7;
  v8[4] = a4;
  v8[5] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E13A2A78, 0, 0);
}

uint64_t sub_1E13A2A78()
{
  v1 = v0[6];
  v12 = v0[5];
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 24);
  v0[2] = *(v1 + 16);
  v0[3] = v3;
  v4 = *(v12 + 80);

  v11 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_1E13A2BC8;
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[7];
  v9 = v0[5];

  return (v11)(v0 + 2, v8, v6, v7, ObjectType, v9);
}

uint64_t sub_1E13A2BC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1E13A2CD8(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28 - v7;
  v9 = sub_1E1AEFE6C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  sub_1E134FD1C(a1 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_releaseDate, v8, &unk_1ECEBB780);
  v16 = *(v10 + 48);
  if (v16(v8, 1, v9) != 1)
  {
    v29 = a1;
    v30 = v13;
    v18 = *(v10 + 32);
    v18(v15, v8, v9);
    v19 = v31;
    sub_1E134FD1C(v31 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_releaseDate, v6, &unk_1ECEBB780);
    if (v16(v6, 1, v9) == 1)
    {
      (*(v10 + 8))(v15, v9);
      v17 = v6;
      goto LABEL_5;
    }

    v22 = v30;
    v18(v30, v6, v9);
    if (sub_1E1AEFE2C())
    {
      v23 = *(v29 + 104);
      if (!v23 || (v24 = *(v19 + 104)) == 0)
      {
        v27 = *(v10 + 8);
        v27(v22, v9);
        v27(v15, v9);
        goto LABEL_6;
      }

      if (*(v29 + 96) == *(v19 + 96) && v23 == v24)
      {
        v20 = 0;
LABEL_16:
        v26 = *(v10 + 8);
        v26(v22, v9);
        v26(v15, v9);
        return v20 & 1;
      }

      v25 = sub_1E1AF74AC();
    }

    else
    {
      v25 = sub_1E1AEFDCC();
    }

    v20 = v25;
    goto LABEL_16;
  }

  v17 = v8;
LABEL_5:
  sub_1E1308058(v17, &unk_1ECEBB780);
LABEL_6:
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1E13A3018(_BYTE *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2D20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12[-v3];
  v5 = OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_lockupsListeners;
  result = swift_beginAccess();
  if (*(*&a1[v5] + 16))
  {
    a1[OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_queryResultsDidChange] = 1;
    if (a1[OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_isFetching])
    {
      return result;
    }

    a1[OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_isFetching] = 1;
    v7 = &unk_1E1B04AF0;
  }

  else
  {
    v8 = OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_countsListeners;
    result = swift_beginAccess();
    if (!*(*&a1[v8] + 16))
    {
      return result;
    }

    v7 = &unk_1E1B04B00;
  }

  v9 = sub_1E1AF649C();
  (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v11 = a1;
  sub_1E154AF74(0, 0, v4, v7, v10);
}

uint64_t sub_1E13A31D0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5D8;

  return sub_1E13A3260();
}

uint64_t sub_1E13A3280()
{
  v1 = *(v0 + 152);
  v2 = *(v1 + OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_consistencyLock);
  *(v0 + 160) = v2;
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  *(v4 + 16) = sub_1E13A8DD4;
  *(v4 + 24) = v3;
  os_unfair_lock_lock(v2 + 4);
  sub_1E13A8E00((v0 + 184));
  os_unfair_lock_unlock((*(v0 + 160) + 16));
  LOBYTE(v2) = *(v0 + 184);

  if (v2)
  {
    v5 = swift_task_alloc();
    *(v0 + 168) = v5;
    *v5 = v0;
    v5[1] = sub_1E13A3404;

    return AppUpdatesDataSource.getUpdatesLockups(fromServer:forceReloadFromServer:)(v0 + 48, 0, 0);
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1E13A3404()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1E13A378C;
  }

  else
  {
    v2 = sub_1E13A3518;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E13A3518()
{
  v1 = *(v0 + 48);
  *(v0 + 96) = v1;
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  *(v0 + 104) = v3;
  *(v0 + 112) = v2;
  sub_1E139E258((v0 + 96));
  if (!(v1 >> 62))
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!(v3 >> 62))
    {
      goto LABEL_3;
    }

LABEL_17:
    v5 = sub_1E1AF71CC();
    if (!(v2 >> 62))
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  v4 = sub_1E1AF71CC();
  if (v3 >> 62)
  {
    goto LABEL_17;
  }

LABEL_3:
  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!(v2 >> 62))
  {
LABEL_4:
    v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_5;
  }

LABEL_18:
  v6 = sub_1E1AF71CC();
LABEL_5:

  *(v0 + 120) = v4;
  *(v0 + 128) = v5;
  *(v0 + 136) = v6;
  sub_1E139EDC8((v0 + 120));
  v7 = *(v0 + 176);
  v8 = *(v0 + 152);
  v9 = *(v0 + 160);
  v10 = swift_task_alloc();
  *(v10 + 16) = v8;
  v11 = swift_task_alloc();
  *(v11 + 16) = sub_1E13A8DD4;
  *(v11 + 24) = v10;
  os_unfair_lock_lock(v9 + 4);
  sub_1E13A8E00((v0 + 184));
  os_unfair_lock_unlock((*(v0 + 160) + 16));
  if (v7)
  {
  }

  else
  {
    v13 = *(v0 + 184);

    if (v13)
    {
      v14 = swift_task_alloc();
      *(v0 + 168) = v14;
      *v14 = v0;
      v14[1] = sub_1E13A3404;

      return AppUpdatesDataSource.getUpdatesLockups(fromServer:forceReloadFromServer:)(v0 + 48, 0, 0);
    }

    else
    {
      v15 = *(v0 + 8);

      return v15();
    }
  }
}

uint64_t sub_1E13A378C()
{
  if (qword_1EE1E1580 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 176);
  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE1E1590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  *(v0 + 40) = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v3, v4);
  sub_1E1AF38BC();
  sub_1E1308058(v0 + 16, &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  v6 = *(v0 + 152);
  v7 = *(v0 + 160);
  v8 = swift_task_alloc();
  *(v8 + 16) = v6;
  v9 = swift_task_alloc();
  *(v9 + 16) = sub_1E13A8DD4;
  *(v9 + 24) = v8;
  os_unfair_lock_lock(v7 + 4);
  sub_1E13A8E00((v0 + 184));
  os_unfair_lock_unlock((*(v0 + 160) + 16));
  LOBYTE(v7) = *(v0 + 184);

  if (v7)
  {
    v10 = swift_task_alloc();
    *(v0 + 168) = v10;
    *v10 = v0;
    v10[1] = sub_1E13A3404;

    return AppUpdatesDataSource.getUpdatesLockups(fromServer:forceReloadFromServer:)(v0 + 48, 0, 0);
  }

  else
  {
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1E13A3ACC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5DC;

  return sub_1E13A3B5C();
}

uint64_t sub_1E13A3B5C()
{
  *(v1 + 104) = v0;
  v2 = swift_task_alloc();
  *(v1 + 112) = v2;
  *v2 = v1;
  v2[1] = sub_1E13A3BF4;

  return AppUpdatesDataSource.getUpdatesCounts()(v1 + 48);
}

uint64_t sub_1E13A3BF4()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1E13A3D7C;
  }

  else
  {
    v2 = sub_1E13A3D08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E13A3D08()
{
  v6 = v0;
  v1 = *(v0 + 64);
  v4 = *(v0 + 48);
  v5 = v1;
  sub_1E139EDC8(&v4);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E13A3D7C()
{
  if (qword_1EE1E1580 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = sub_1E1AF591C();
  __swift_project_value_buffer(v2, qword_1EE1E1590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v3 = v0[9];
  v4 = v0[10];
  v0[5] = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v3, v4);
  sub_1E1AF38BC();
  sub_1E1308058((v0 + 2), &qword_1ECEB2DF0);
  sub_1E1AF54AC();

  v6 = v0[1];

  return v6();
}

id AppUpdatesDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppUpdatesDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E13A418C(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1E196B840(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  sub_1E13A4220(v10, a2, a3);
  return sub_1E1AF70CC();
}

uint64_t sub_1E13A4220(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1E1AF741C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for UpdatesLockup();
        v10 = sub_1E1AF628C();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_1E13A4334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v42 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v35 - v11;
  v48 = sub_1E1AEFE6C();
  v12 = MEMORY[0x1EEE9AC00](v48);
  v40 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v35 - v16;
  v36 = a2;
  if (a3 != a2)
  {
    v46 = *a4;
    v47 = (v15 + 48);
    v44 = (v15 + 32);
    v41 = (v15 + 8);
    v18 = (v46 + 8 * a3 - 8);
    v19 = a1 - a3;
    v20 = &OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_installDate;
    v21 = &unk_1E1B029A0;
LABEL_5:
    v38 = v18;
    v39 = a3;
    v22 = *(v46 + 8 * a3);
    v37 = v19;
    v23 = v47;
    while (1)
    {
      v49 = *v18;
      v24 = v45;
      v25 = v21;
      v26 = v20;
      sub_1E134FD1C(v22 + *v20, v45, &unk_1ECEBB780);
      v27 = *v23;
      if ((*v23)(v24, 1, v48) == 1)
      {
        result = sub_1E1308058(v24, &unk_1ECEBB780);
        v20 = v26;
        v21 = v25;
      }

      else
      {
        v28 = v48;
        v43 = *v44;
        v43(v17, v24, v48);
        v29 = v42;
        sub_1E134FD1C(v49 + *v26, v42, &unk_1ECEBB780);
        if (v27(v29, 1, v28) == 1)
        {
          v21 = v25;
          v30 = *v41;

          v30(v17, v28);
          sub_1E1308058(v29, &unk_1ECEBB780);

          v23 = v47;
          v20 = &OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_installDate;
        }

        else
        {
          v31 = v40;
          v43(v40, v29, v28);

          LODWORD(v43) = sub_1E1AEFDCC();
          v32 = *v41;
          (*v41)(v31, v28);
          v32(v17, v28);
          v21 = &unk_1E1B029A0;

          v23 = v47;
          v20 = &OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_installDate;
          if ((v43 & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      if (!v46)
      {
        break;
      }

      v33 = *v18;
      v22 = v18[1];
      *v18 = v22;
      v18[1] = v33;
      --v18;
      if (__CFADD__(v19++, 1))
      {
LABEL_4:
        a3 = v39 + 1;
        v18 = v38 + 1;
        v19 = v37 - 1;
        if (v39 + 1 == v36)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E13A4740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v60 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v51 - v11;
  v65 = sub_1E1AEFE6C();
  v13 = MEMORY[0x1EEE9AC00](v65);
  v56 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v63 = &v51 - v17;
  v52 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v64 = (v16 + 48);
    v62 = (v16 + 32);
    v57 = (v16 + 8);
    v19 = (v18 + 8 * a3 - 8);
    v20 = a1 - a3;
    v21 = &unk_1E1B029A0;
    v58 = v18;
    v59 = v12;
LABEL_6:
    v54 = v19;
    v55 = a3;
    v23 = *(v18 + 8 * a3);
    v53 = v20;
    while (1)
    {
      v68 = v20;
      v24 = *v19;
      v66 = v23;
      v67 = v24;
      sub_1E134FD1C(v23 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_releaseDate, v12, &unk_1ECEBB780);
      v25 = *v64;
      v26 = v21;
      v27 = v65;
      if ((*v64)(v12, 1, v65) == 1)
      {
        break;
      }

      v28 = v63;
      v61 = *v62;
      v61(v63, v12, v27);
      v29 = v67;
      v30 = v28;
      v31 = v60;
      sub_1E134FD1C(v67 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_releaseDate, v60, &unk_1ECEBB780);
      if (v25(v31, 1, v27) == 1)
      {
        v32 = *v57;

        v32(v30, v27);
        sub_1E1308058(v31, &unk_1ECEBB780);

        v18 = v58;
        v12 = v59;
        goto LABEL_11;
      }

      v36 = v56;
      v61(v56, v31, v27);
      v37 = v66;

      v38 = v27;
      if (sub_1E1AEFE2C())
      {
        v39 = *(v37 + 104);
        if (!v39 || (v40 = *(v29 + 104)) == 0)
        {
          v49 = v36;
          v50 = *v57;
          (*v57)(v49, v27);
          v50(v63, v27);

          v18 = v58;
          v12 = v59;
          v21 = &unk_1E1B029A0;
          goto LABEL_12;
        }

        if (*(v37 + 96) == *(v29 + 96) && v39 == v40)
        {
          v22 = *v57;
          (*v57)(v36, v27);
          v22(v63, v27);

          v18 = v58;
          v12 = v59;
          v21 = &unk_1E1B029A0;
LABEL_5:
          a3 = v55 + 1;
          v19 = v54 + 1;
          v20 = v53 - 1;
          if (v55 + 1 == v52)
          {
            return result;
          }

          goto LABEL_6;
        }

        v41 = sub_1E1AF74AC();
        v42 = v36;
        v43 = v41;
        v44 = *v57;
        (*v57)(v42, v27);
        v44(v63, v27);

        v18 = v58;
        v12 = v59;
      }

      else
      {
        v45 = v63;
        v46 = sub_1E1AEFDCC();
        v47 = v36;
        v43 = v46;
        v48 = *v57;
        (*v57)(v47, v38);
        v48(v45, v38);

        v18 = v58;
        v12 = v59;
      }

      v21 = &unk_1E1B029A0;
      v33 = v68;
      if ((v43 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_13:
      if (!v18)
      {
        __break(1u);
        return result;
      }

      v34 = *v19;
      v23 = v19[1];
      *v19 = v23;
      v19[1] = v34;
      --v19;
      v35 = __CFADD__(v33, 1);
      v20 = v33 + 1;
      if (v35)
      {
        goto LABEL_5;
      }
    }

    result = sub_1E1308058(v12, &unk_1ECEBB780);
LABEL_11:
    v21 = v26;
LABEL_12:
    v33 = v68;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1E13A4C90(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v152 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v147 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v147 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v147 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v147 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v168 = &v147 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v161 = &v147 - v21;
  v175 = sub_1E1AEFE6C();
  v22 = MEMORY[0x1EEE9AC00](v175);
  v164 = &v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v173 = &v147 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v150 = &v147 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v155 = &v147 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v147 = &v147 - v31;
  result = MEMORY[0x1EEE9AC00](v30);
  v35 = a3[1];
  if (v35 < 1)
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_109:
    a4 = *v152;
    if (!*v152)
    {
      goto LABEL_147;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_141;
    }

    goto LABEL_111;
  }

  v148 = &v147 - v34;
  v158 = v18;
  v153 = v15;
  v36 = 0;
  v172 = (v33 + 48);
  v170 = (v33 + 32);
  v166 = (v33 + 8);
  v167 = v12;
  v37 = MEMORY[0x1E69E7CC0];
  v154 = a3;
  v151 = a4;
  v165 = v9;
  v38 = v168;
  v39 = v161;
LABEL_4:
  v157 = v36;
  if (v36 + 1 >= v35)
  {
    v162 = v36 + 1;
    goto LABEL_33;
  }

  v171 = v35;
  v40 = *(*a3 + 8 * (v36 + 1));
  v174 = *a3;
  v41 = *(v174 + 8 * v36);
  v162 = v40;
  v42 = v39;
  sub_1E134FD1C(v40 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_installDate, v39, &unk_1ECEBB780);
  v43 = *v172;
  v44 = (*v172)(v42, 1, v175);
  v160 = v43;
  v149 = v37;
  if (v44 == 1)
  {
    result = sub_1E1308058(v42, &unk_1ECEBB780);
    LODWORD(v169) = 1;
  }

  else
  {
    v45 = v42;
    v46 = v175;
    v169 = *v170;
    (v169)(v148, v45, v175);
    sub_1E134FD1C(v41 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_installDate, v38, &unk_1ECEBB780);
    if ((v43)(v38, 1, v46) == 1)
    {
      v47 = *v166;

      v47(v148, v175);
      sub_1E1308058(v38, &unk_1ECEBB780);

      LODWORD(v169) = 1;
    }

    else
    {
      v48 = v147;
      v49 = v175;
      (v169)(v147, v38, v175);

      v50 = v148;
      LODWORD(v169) = sub_1E1AEFDCC();
      v51 = *v166;
      (*v166)(v48, v49);
      v51(v50, v49);
      v38 = v168;
    }

    v37 = v149;
  }

  v52 = v157 + 2;
  if (v157 + 2 >= v171)
  {
    v162 = v157 + 2;
    a4 = v151;
    if (v169)
    {
      goto LABEL_26;
    }

    goto LABEL_33;
  }

  v53 = (v174 + 8 * v157 + 16);
  v54 = v155;
  do
  {
    v162 = v52;
    v63 = a3;
    v64 = *(v53 - 1);
    v174 = *v53;
    v65 = v158;
    sub_1E134FD1C(v174 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_installDate, v158, &unk_1ECEBB780);
    v66 = v160;
    if ((v160)(v65, 1, v175) == 1)
    {
      result = sub_1E1308058(v65, &unk_1ECEBB780);
      a3 = v63;
      v62 = v171;
    }

    else
    {
      v67 = v175;
      v159 = *v170;
      (v159)(v54, v65, v175);
      v68 = v153;
      sub_1E134FD1C(v64 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_installDate, v153, &unk_1ECEBB780);
      if ((v66)(v68, 1, v67) != 1)
      {
        v55 = v150;
        v56 = v175;
        (v159)(v150, v68, v175);

        v57 = sub_1E1AEFDCC();
        v58 = *v166;
        v59 = v55;
        v54 = v155;
        (*v166)(v59, v56);
        v58(v54, v56);

        v60 = v169 ^ v57;
        a3 = v154;
        v38 = v168;
        v61 = v162;
        v62 = v171;
        if (v60)
        {
          goto LABEL_25;
        }

        goto LABEL_15;
      }

      v69 = *v166;

      v70 = v155;
      v69(v155, v175);
      sub_1E1308058(v68, &unk_1ECEBB780);

      a3 = v154;
      v62 = v171;
      v54 = v70;
    }

    v38 = v168;
    v61 = v162;
    if ((v169 & 1) == 0)
    {
      a4 = v151;
      v37 = v149;
      goto LABEL_33;
    }

LABEL_15:
    v52 = v61 + 1;
    ++v53;
  }

  while (v62 != v52);
  v162 = v62;
LABEL_25:
  a4 = v151;
  v37 = v149;
  if (v169)
  {
LABEL_26:
    v71 = v162;
    v72 = v157;
    if (v162 >= v157)
    {
      if (v157 < v162)
      {
        v73 = 8 * v162 - 8;
        v74 = 8 * v157;
        do
        {
          if (v72 != --v71)
          {
            v75 = *a3;
            if (!*a3)
            {
              goto LABEL_144;
            }

            v76 = *(v75 + v74);
            *(v75 + v74) = *(v75 + v73);
            *(v75 + v73) = v76;
          }

          ++v72;
          v73 -= 8;
          v74 += 8;
        }

        while (v72 < v71);
      }

      goto LABEL_33;
    }

LABEL_140:
    __break(1u);
LABEL_141:
    result = sub_1E1968F00(v37);
    v37 = result;
LABEL_111:
    v176 = v37;
    v142 = *(v37 + 16);
    if (v142 >= 2)
    {
      while (*a3)
      {
        v143 = *(v37 + 16 * v142);
        v144 = *(v37 + 16 * (v142 - 1) + 40);
        v145 = v163;
        sub_1E13A6A18((*a3 + 8 * v143), (*a3 + 8 * *(v37 + 16 * (v142 - 1) + 32)), (*a3 + 8 * v144), a4);
        v163 = v145;
        if (v145)
        {
        }

        if (v144 < v143)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1E1968F00(v37);
        }

        if (v142 - 2 >= *(v37 + 16))
        {
          goto LABEL_135;
        }

        v146 = (v37 + 16 * v142);
        *v146 = v143;
        v146[1] = v144;
        v176 = v37;
        result = sub_1E1968E74(v142 - 1);
        v37 = v176;
        v142 = *(v176 + 16);
        if (v142 <= 1)
        {
        }
      }

      goto LABEL_145;
    }
  }

LABEL_33:
  v77 = a3[1];
  v36 = v162;
  if (v162 >= v77)
  {
    goto LABEL_54;
  }

  if (__OFSUB__(v162, v157))
  {
    goto LABEL_137;
  }

  if (v162 - v157 >= a4)
  {
    v36 = v162;
LABEL_54:
    v78 = v157;
LABEL_55:
    if (v36 < v78)
    {
      goto LABEL_136;
    }

    goto LABEL_56;
  }

  v78 = v157;
  v79 = v157 + a4;
  if (__OFADD__(v157, a4))
  {
    goto LABEL_138;
  }

  if (v79 >= v77)
  {
    v79 = a3[1];
  }

  if (v79 < v157)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  v36 = v162;
  if (v162 == v79)
  {
    goto LABEL_55;
  }

  v80 = v38;
  v149 = v37;
  v171 = *a3;
  v81 = (v171 + 8 * v162 - 8);
  v82 = (v157 - v162);
  v156 = v79;
LABEL_43:
  v162 = v36;
  a4 = *(v171 + 8 * v36);
  v159 = v82;
  v160 = v81;
  v83 = v167;
  while (1)
  {
    v174 = *v81;
    sub_1E134FD1C(a4 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_installDate, v83, &unk_1ECEBB780);
    v84 = *v172;
    if ((*v172)(v83, 1, v175) == 1)
    {
      result = sub_1E1308058(v83, &unk_1ECEBB780);
    }

    else
    {
      v85 = v175;
      v169 = *v170;
      (v169)(v173, v83, v175);
      v86 = v165;
      sub_1E134FD1C(v174 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_installDate, v165, &unk_1ECEBB780);
      if (v84(v86, 1, v85) == 1)
      {
        v87 = *v166;

        v87(v173, v175);
        sub_1E1308058(v86, &unk_1ECEBB780);

        v83 = v167;
        v80 = v168;
      }

      else
      {
        v88 = v175;
        v89 = v164;
        (v169)(v164, v86, v175);

        v90 = sub_1E1AEFDCC();
        v91 = *v166;
        (*v166)(v89, v88);
        v91(v173, v88);

        v83 = v167;
        v80 = v168;
        if ((v90 & 1) == 0)
        {
          goto LABEL_42;
        }
      }
    }

    if (!v171)
    {
      break;
    }

    v92 = *v81;
    a4 = v81[1];
    *v81 = a4;
    v81[1] = v92;
    --v81;
    if (__CFADD__(v82++, 1))
    {
LABEL_42:
      v36 = v162 + 1;
      v81 = v160 + 1;
      v82 = v159 - 1;
      if (v162 + 1 == v156)
      {
        v36 = v156;
        a3 = v154;
        v37 = v149;
        v38 = v80;
        if (v156 < v157)
        {
          goto LABEL_136;
        }

LABEL_56:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1E172D878(0, *(v37 + 16) + 1, 1, v37);
          v37 = result;
        }

        v95 = *(v37 + 16);
        v94 = *(v37 + 24);
        v96 = v95 + 1;
        v39 = v161;
        if (v95 >= v94 >> 1)
        {
          result = sub_1E172D878((v94 > 1), v95 + 1, 1, v37);
          v39 = v161;
          v37 = result;
        }

        *(v37 + 16) = v96;
        v97 = v37 + 16 * v95;
        *(v97 + 32) = v157;
        *(v97 + 40) = v36;
        v98 = *v152;
        if (!*v152)
        {
          goto LABEL_146;
        }

        if (!v95)
        {
LABEL_3:
          v35 = a3[1];
          a4 = v151;
          if (v36 >= v35)
          {
            goto LABEL_109;
          }

          goto LABEL_4;
        }

        while (1)
        {
          a4 = v96 - 1;
          if (v96 >= 4)
          {
            break;
          }

          if (v96 == 3)
          {
            v99 = *(v37 + 32);
            v100 = *(v37 + 40);
            v109 = __OFSUB__(v100, v99);
            v101 = v100 - v99;
            v102 = v109;
LABEL_75:
            if (v102)
            {
              goto LABEL_125;
            }

            v115 = (v37 + 16 * v96);
            v117 = *v115;
            v116 = v115[1];
            v118 = __OFSUB__(v116, v117);
            v119 = v116 - v117;
            v120 = v118;
            if (v118)
            {
              goto LABEL_128;
            }

            v121 = (v37 + 32 + 16 * a4);
            v123 = *v121;
            v122 = v121[1];
            v109 = __OFSUB__(v122, v123);
            v124 = v122 - v123;
            if (v109)
            {
              goto LABEL_131;
            }

            if (__OFADD__(v119, v124))
            {
              goto LABEL_132;
            }

            if (v119 + v124 >= v101)
            {
              if (v101 < v124)
              {
                a4 = v96 - 2;
              }

              goto LABEL_96;
            }

            goto LABEL_89;
          }

          v125 = (v37 + 16 * v96);
          v127 = *v125;
          v126 = v125[1];
          v109 = __OFSUB__(v126, v127);
          v119 = v126 - v127;
          v120 = v109;
LABEL_89:
          if (v120)
          {
            goto LABEL_127;
          }

          v128 = v37 + 16 * a4;
          v130 = *(v128 + 32);
          v129 = *(v128 + 40);
          v109 = __OFSUB__(v129, v130);
          v131 = v129 - v130;
          if (v109)
          {
            goto LABEL_130;
          }

          if (v131 < v119)
          {
            goto LABEL_3;
          }

LABEL_96:
          v136 = a4 - 1;
          if (a4 - 1 >= v96)
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
            goto LABEL_139;
          }

          if (!*a3)
          {
            goto LABEL_143;
          }

          v137 = v37;
          v138 = *(v37 + 32 + 16 * v136);
          v139 = *(v37 + 32 + 16 * a4);
          v37 = *(v37 + 32 + 16 * a4 + 8);
          v140 = v163;
          sub_1E13A6A18((*a3 + 8 * v138), (*a3 + 8 * v139), (*a3 + 8 * v37), v98);
          v163 = v140;
          if (v140)
          {
          }

          if (v37 < v138)
          {
            goto LABEL_121;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v137 = sub_1E1968F00(v137);
          }

          if (v136 >= *(v137 + 2))
          {
            goto LABEL_122;
          }

          v141 = &v137[16 * v136];
          *(v141 + 4) = v138;
          *(v141 + 5) = v37;
          v176 = v137;
          result = sub_1E1968E74(a4);
          v37 = v176;
          v96 = *(v176 + 16);
          v38 = v168;
          v39 = v161;
          if (v96 <= 1)
          {
            goto LABEL_3;
          }
        }

        v103 = v37 + 32 + 16 * v96;
        v104 = *(v103 - 64);
        v105 = *(v103 - 56);
        v109 = __OFSUB__(v105, v104);
        v106 = v105 - v104;
        if (v109)
        {
          goto LABEL_123;
        }

        v108 = *(v103 - 48);
        v107 = *(v103 - 40);
        v109 = __OFSUB__(v107, v108);
        v101 = v107 - v108;
        v102 = v109;
        if (v109)
        {
          goto LABEL_124;
        }

        v110 = (v37 + 16 * v96);
        v112 = *v110;
        v111 = v110[1];
        v109 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v109)
        {
          goto LABEL_126;
        }

        v109 = __OFADD__(v101, v113);
        v114 = v101 + v113;
        if (v109)
        {
          goto LABEL_129;
        }

        if (v114 >= v106)
        {
          v132 = (v37 + 32 + 16 * a4);
          v134 = *v132;
          v133 = v132[1];
          v109 = __OFSUB__(v133, v134);
          v135 = v133 - v134;
          if (v109)
          {
            goto LABEL_133;
          }

          if (v101 < v135)
          {
            a4 = v96 - 2;
          }

          goto LABEL_96;
        }

        goto LABEL_75;
      }

      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_1E13A5B80(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v158 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v171 = &v153 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v153 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v160 = &v153 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v161 = &v153 - v14;
  v15 = sub_1E1AEFE6C();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v169 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v174 = &v153 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v159 = &v153 - v21;
  result = MEMORY[0x1EEE9AC00](v20);
  v163 = &v153 - v24;
  v25 = *(a3 + 8);
  if (v25 < 1)
  {
    v28 = MEMORY[0x1E69E7CC0];
LABEL_123:
    if (!*v158)
    {
      goto LABEL_162;
    }

    v26 = v28;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v167;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = v26;
LABEL_126:
      v180 = result;
      v26 = *(result + 16);
      if (v26 >= 2)
      {
        while (*a3)
        {
          v149 = *(result + 16 * v26);
          v150 = result;
          v151 = *(result + 16 * (v26 - 1) + 40);
          sub_1E13A728C((*a3 + 8 * v149), *a3 + 8 * *(result + 16 * (v26 - 1) + 32), (*a3 + 8 * v151));
          if (v11)
          {
          }

          if (v151 < v149)
          {
            goto LABEL_149;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v150 = sub_1E1968F00(v150);
          }

          if ((v26 - 2) >= *(v150 + 2))
          {
            goto LABEL_150;
          }

          v152 = &v150[16 * v26];
          *v152 = v149;
          *(v152 + 1) = v151;
          v180 = v150;
          sub_1E1968E74(v26 - 1);
          result = v180;
          v26 = *(v180 + 16);
          if (v26 <= 1)
          {
          }
        }

        goto LABEL_159;
      }
    }

LABEL_155:
    result = sub_1E1968F00(v26);
    goto LABEL_126;
  }

  v26 = 0;
  v178 = result;
  v27 = (v23 + 48);
  v172 = (v23 + 8);
  v173 = (v23 + 32);
  v28 = MEMORY[0x1E69E7CC0];
  v157 = a4;
  v177 = (v23 + 48);
  v154 = a3;
LABEL_4:
  v29 = v26++;
  if (v26 >= v25)
  {
    goto LABEL_38;
  }

  v30 = v27;
  v156 = v28;
  v31 = a3;
  v32 = *a3;
  v33 = *(v32 + 8 * v26);
  v34 = *(v32 + 8 * v29);

  LODWORD(v176) = sub_1E13A2CD8(v33, v34);

  v26 = v29 + 2;
  if (v29 + 2 >= v25)
  {
    a3 = v31;
    v27 = v30;
    goto LABEL_28;
  }

  v175 = v25;
  v155 = v29;
  v35 = (v32 + 8 * v29 + 16);
  v36 = v161;
  do
  {
    v37 = *(v35 - 1);
    v179 = *v35;
    sub_1E134FD1C(v179 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_releaseDate, v36, &unk_1ECEBB780);
    v38 = v178;
    v39 = *v177;
    if ((*v177)(v36, 1, v178) == 1)
    {
      result = sub_1E1308058(v36, &unk_1ECEBB780);
      goto LABEL_8;
    }

    v166 = v26;
    v40 = v38;
    v41 = v160;
    v168 = *v173;
    (v168)(v163, v36, v40);
    sub_1E134FD1C(v37 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_releaseDate, v41, &unk_1ECEBB780);
    v42 = v39(v41, 1, v40);
    v43 = v37;
    if (v42 == 1)
    {
      v44 = *v172;

      v44(v163, v40);
      sub_1E1308058(v41, &unk_1ECEBB780);

      v36 = v161;
      v26 = v166;
      goto LABEL_8;
    }

    v45 = v159;
    (v168)(v159, v41, v40);
    v46 = v179;

    v47 = v163;
    if ((sub_1E1AEFE2C() & 1) == 0)
    {
      v51 = v47;
      LODWORD(v168) = sub_1E1AEFDCC();
      v52 = *v172;
      (*v172)(v45, v40);
      v52(v51, v40);

      v50 = v168;

      v36 = v161;
      goto LABEL_23;
    }

    v48 = *(v46 + 104);
    v36 = v161;
    v26 = v166;
    if (v48)
    {
      v49 = *(v43 + 104);
      if (v49)
      {
        if (*(v46 + 96) == *(v43 + 96) && v48 == v49)
        {
          v50 = 0;
        }

        else
        {
          v50 = sub_1E1AF74AC();
        }

        v54 = *v172;
        v55 = v178;
        (*v172)(v159, v178);
        v54(v163, v55);

LABEL_23:
        v26 = v166;
        if ((v176 ^ v50))
        {
          goto LABEL_27;
        }

        goto LABEL_9;
      }
    }

    v53 = *v172;
    (*v172)(v159, v178);
    v53(v163, v178);

LABEL_8:
    if ((v176 & 1) == 0)
    {
      a3 = v154;
      v28 = v156;
      a4 = v157;
      v27 = v177;
      v29 = v155;
      goto LABEL_38;
    }

LABEL_9:
    ++v26;
    ++v35;
  }

  while (v175 != v26);
  v26 = v175;
LABEL_27:
  a3 = v154;
  v27 = v177;
  v29 = v155;
LABEL_28:
  v28 = v156;
  a4 = v157;
  if ((v176 & 1) == 0)
  {
LABEL_38:
    v62 = *(a3 + 8);
    if (v26 >= v62)
    {
      goto LABEL_70;
    }

    if (__OFSUB__(v26, v29))
    {
      goto LABEL_152;
    }

    if (v26 - v29 >= a4)
    {
      goto LABEL_70;
    }

    v63 = v29 + a4;
    if (__OFADD__(v29, a4))
    {
      goto LABEL_153;
    }

    if (v63 >= v62)
    {
      v63 = *(a3 + 8);
    }

    if (v63 >= v29)
    {
      if (v26 == v63)
      {
        goto LABEL_70;
      }

      v156 = v28;
      v176 = *a3;
      v64 = (v176 + 8 * v26 - 8);
      v155 = v29;
      v65 = v29 - v26;
      v170 = v11;
      v162 = v63;
LABEL_49:
      v165 = v64;
      v166 = v26;
      v69 = v65;
      v70 = *(v176 + 8 * v26);
      v164 = v65;
      while (1)
      {
        v179 = v69;
        v71 = *v64;
        sub_1E134FD1C(v70 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_releaseDate, v11, &unk_1ECEBB780);
        v72 = *v27;
        v73 = v11;
        v74 = v11;
        v75 = v178;
        if ((*v27)(v73, 1, v178) == 1)
        {
          result = sub_1E1308058(v74, &unk_1ECEBB780);
          v11 = v74;
          goto LABEL_65;
        }

        v175 = v70;
        v76 = v174;
        v77 = *v173;
        (*v173)();
        v78 = v75;
        v79 = v171;
        sub_1E134FD1C(v71 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_releaseDate, v171, &unk_1ECEBB780);
        if (v72(v79, 1, v78) == 1)
        {
          break;
        }

        v81 = v169;
        (v77)(v169, v79, v78);
        v82 = v81;
        v83 = v175;

        if (sub_1E1AEFE2C())
        {
          v84 = *(v83 + 104);
          v11 = v170;
          if (!v84 || (v85 = *(v71 + 104)) == 0)
          {
            v91 = *v172;
            v92 = v82;
            v93 = v178;
            (*v172)(v92, v178);
            v91(v174, v93);

            goto LABEL_64;
          }

          if (*(v83 + 96) == *(v71 + 96) && v84 == v85)
          {
            v66 = *v172;
            v67 = v82;
            v68 = v178;
            (*v172)(v67, v178);
            v66(v174, v68);

            v27 = v177;
LABEL_48:
            v26 = v166 + 1;
            v64 = v165 + 1;
            v65 = v164 - 1;
            if (v166 + 1 != v162)
            {
              goto LABEL_49;
            }

            v26 = v162;
            a3 = v154;
            v28 = v156;
            v29 = v155;
LABEL_70:
            if (v26 < v29)
            {
              goto LABEL_151;
            }

            v97 = v28;
            result = swift_isUniquelyReferenced_nonNull_native();
            if (result)
            {
              v28 = v97;
            }

            else
            {
              result = sub_1E172D878(0, *(v97 + 16) + 1, 1, v97);
              v28 = result;
            }

            v99 = *(v28 + 16);
            v98 = *(v28 + 24);
            v100 = v99 + 1;
            if (v99 >= v98 >> 1)
            {
              result = sub_1E172D878((v98 > 1), v99 + 1, 1, v28);
              v28 = result;
            }

            *(v28 + 16) = v100;
            v101 = v28 + 16 * v99;
            *(v101 + 32) = v29;
            *(v101 + 40) = v26;
            v179 = *v158;
            if (!v179)
            {
              goto LABEL_161;
            }

            if (v99)
            {
              while (2)
              {
                v102 = v100 - 1;
                if (v100 >= 4)
                {
                  v107 = v28 + 32 + 16 * v100;
                  v108 = *(v107 - 64);
                  v109 = *(v107 - 56);
                  v113 = __OFSUB__(v109, v108);
                  v110 = v109 - v108;
                  if (v113)
                  {
                    goto LABEL_138;
                  }

                  v112 = *(v107 - 48);
                  v111 = *(v107 - 40);
                  v113 = __OFSUB__(v111, v112);
                  v105 = v111 - v112;
                  v106 = v113;
                  if (v113)
                  {
                    goto LABEL_139;
                  }

                  v114 = (v28 + 16 * v100);
                  v116 = *v114;
                  v115 = v114[1];
                  v113 = __OFSUB__(v115, v116);
                  v117 = v115 - v116;
                  if (v113)
                  {
                    goto LABEL_141;
                  }

                  v113 = __OFADD__(v105, v117);
                  v118 = v105 + v117;
                  if (v113)
                  {
                    goto LABEL_144;
                  }

                  if (v118 >= v110)
                  {
                    v136 = (v28 + 32 + 16 * v102);
                    v138 = *v136;
                    v137 = v136[1];
                    v113 = __OFSUB__(v137, v138);
                    v139 = v137 - v138;
                    if (v113)
                    {
                      goto LABEL_148;
                    }

                    if (v105 < v139)
                    {
                      v102 = v100 - 2;
                    }
                  }

                  else
                  {
LABEL_90:
                    if (v106)
                    {
                      goto LABEL_140;
                    }

                    v119 = (v28 + 16 * v100);
                    v121 = *v119;
                    v120 = v119[1];
                    v122 = __OFSUB__(v120, v121);
                    v123 = v120 - v121;
                    v124 = v122;
                    if (v122)
                    {
                      goto LABEL_143;
                    }

                    v125 = (v28 + 32 + 16 * v102);
                    v127 = *v125;
                    v126 = v125[1];
                    v113 = __OFSUB__(v126, v127);
                    v128 = v126 - v127;
                    if (v113)
                    {
                      goto LABEL_146;
                    }

                    if (__OFADD__(v123, v128))
                    {
                      goto LABEL_147;
                    }

                    if (v123 + v128 < v105)
                    {
                      goto LABEL_104;
                    }

                    if (v105 < v128)
                    {
                      v102 = v100 - 2;
                    }
                  }
                }

                else
                {
                  if (v100 == 3)
                  {
                    v103 = *(v28 + 32);
                    v104 = *(v28 + 40);
                    v113 = __OFSUB__(v104, v103);
                    v105 = v104 - v103;
                    v106 = v113;
                    goto LABEL_90;
                  }

                  v129 = (v28 + 16 * v100);
                  v131 = *v129;
                  v130 = v129[1];
                  v113 = __OFSUB__(v130, v131);
                  v123 = v130 - v131;
                  v124 = v113;
LABEL_104:
                  if (v124)
                  {
                    goto LABEL_142;
                  }

                  v132 = v28 + 16 * v102;
                  v134 = *(v132 + 32);
                  v133 = *(v132 + 40);
                  v113 = __OFSUB__(v133, v134);
                  v135 = v133 - v134;
                  if (v113)
                  {
                    goto LABEL_145;
                  }

                  if (v135 < v123)
                  {
                    break;
                  }
                }

                v140 = v26;
                v26 = v102 - 1;
                if (v102 - 1 >= v100)
                {
                  __break(1u);
LABEL_136:
                  __break(1u);
LABEL_137:
                  __break(1u);
LABEL_138:
                  __break(1u);
LABEL_139:
                  __break(1u);
LABEL_140:
                  __break(1u);
LABEL_141:
                  __break(1u);
LABEL_142:
                  __break(1u);
LABEL_143:
                  __break(1u);
LABEL_144:
                  __break(1u);
LABEL_145:
                  __break(1u);
LABEL_146:
                  __break(1u);
LABEL_147:
                  __break(1u);
LABEL_148:
                  __break(1u);
LABEL_149:
                  __break(1u);
LABEL_150:
                  __break(1u);
LABEL_151:
                  __break(1u);
LABEL_152:
                  __break(1u);
LABEL_153:
                  __break(1u);
                  goto LABEL_154;
                }

                v141 = *a3;
                if (!*a3)
                {
                  goto LABEL_158;
                }

                v142 = v27;
                v143 = a3;
                v144 = v28;
                v145 = *(v28 + 32 + 16 * v26);
                a3 = *(v28 + 32 + 16 * v102 + 8);
                v146 = v167;
                sub_1E13A728C((v141 + 8 * v145), v141 + 8 * *(v28 + 32 + 16 * v102), (v141 + 8 * a3));
                v167 = v146;
                if (v146)
                {
                }

                if (a3 < v145)
                {
                  goto LABEL_136;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v144 = sub_1E1968F00(v144);
                }

                if (v26 >= *(v144 + 2))
                {
                  goto LABEL_137;
                }

                v147 = &v144[16 * v26];
                *(v147 + 4) = v145;
                *(v147 + 5) = a3;
                v180 = v144;
                result = sub_1E1968E74(v102);
                v28 = v180;
                v100 = *(v180 + 16);
                v26 = v140;
                a3 = v143;
                v27 = v142;
                if (v100 <= 1)
                {
                  break;
                }

                continue;
              }
            }

            v25 = *(a3 + 8);
            a4 = v157;
            if (v26 >= v25)
            {
              goto LABEL_123;
            }

            goto LABEL_4;
          }

          v86 = sub_1E1AF74AC();
          v87 = v82;
          v88 = *v172;
          v89 = v178;
          (*v172)(v87, v178);
          v88(v174, v89);

          v27 = v177;
          if ((v86 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

        else
        {
          LODWORD(v168) = sub_1E1AEFDCC();
          v90 = *v172;
          (*v172)(v81, v78);
          v90(v76, v78);

          v11 = v170;
          v27 = v177;
          if ((v168 & 1) == 0)
          {
            goto LABEL_48;
          }
        }

LABEL_65:
        v94 = v179;
        if (!v176)
        {
          __break(1u);
          goto LABEL_157;
        }

        v95 = *v64;
        v70 = v64[1];
        *v64 = v70;
        v64[1] = v95;
        --v64;
        v96 = __CFADD__(v94, 1);
        v69 = v94 + 1;
        if (v96)
        {
          goto LABEL_48;
        }
      }

      v80 = *v172;

      v80(v76, v78);
      sub_1E1308058(v79, &unk_1ECEBB780);

      v11 = v170;
LABEL_64:
      v27 = v177;
      goto LABEL_65;
    }

LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v26 >= v29)
  {
    if (v29 < v26)
    {
      v56 = 8 * v26 - 8;
      v57 = 8 * v29;
      v58 = v26;
      v59 = v29;
      while (1)
      {
        if (v59 != --v58)
        {
          v61 = *a3;
          if (!*a3)
          {
            goto LABEL_160;
          }

          v60 = *(v61 + v57);
          *(v61 + v57) = *(v61 + v56);
          *(v61 + v56) = v60;
        }

        ++v59;
        v56 -= 8;
        v57 += 8;
        if (v59 >= v58)
        {
          goto LABEL_38;
        }
      }
    }

    goto LABEL_38;
  }

LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
  return result;
}

uint64_t sub_1E13A6A18(char *a1, char *a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v75 = (&v67 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v74 = &v67 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v76 = &v67 - v16;
  v84 = sub_1E1AEFE6C();
  v17 = *(v84 - 8);
  v18 = MEMORY[0x1EEE9AC00](v84);
  v73 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v71 = &v67 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v82 = a1;
  v83 = a3;
  v25 = a2 - a1;
  v26 = v25 / 8;
  v27 = a3 - a2;
  v28 = v27 / 8;
  if (v25 / 8 >= v27 / 8)
  {
    v71 = v24;
    v72 = v11;
    v49 = a2;
    if (a4 != a2 || &a2[8 * v28] <= a4)
    {
      memmove(a4, a2, 8 * v28);
    }

    v78 = a4;
    v81 = &a4[8 * v28];
    v50 = v75;
    if (v27 < 8)
    {
      v29 = v78;
      goto LABEL_43;
    }

    v29 = v78;
    if (v49 > v82)
    {
      v51 = (v17 + 48);
      v68 = (v17 + 8);
      v69 = (v17 + 32);
      v70 = (v17 + 48);
LABEL_26:
      v79 = v49;
      v52 = v49 - 8;
      v83 -= 8;
      v53 = v81;
      v74 = v52;
      while (1)
      {
        v55 = *(v53 - 1);
        v54 = v53 - 8;
        v80 = *v52;
        v77 = v55;
        sub_1E134FD1C(v55 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_installDate, v50, &unk_1ECEBB780);
        v56 = *v51;
        if ((*v51)(v50, 1, v84) == 1)
        {
          break;
        }

        v76 = v54;
        v57 = *v69;
        v58 = v71;
        v59 = v84;
        (*v69)(v71, v50, v84);
        v60 = v72;
        sub_1E134FD1C(&v80[OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_installDate], v72, &unk_1ECEBB780);
        if (v56(v60, 1, v59) == 1)
        {
          v65 = *v68;

          v65(v58, v84);
          sub_1E1308058(v60, &unk_1ECEBB780);

          v29 = v78;
          v52 = v74;
          v50 = v75;
          v51 = v70;
LABEL_35:
          if (v83 + 8 != v79)
          {
            *v83 = *v52;
          }

          if (v81 <= v29 || (v49 = v52, v52 <= v82))
          {
            v49 = v52;
            goto LABEL_43;
          }

          goto LABEL_26;
        }

        v61 = v84;
        v62 = v73;
        v57(v73, v60, v84);

        v63 = sub_1E1AEFDCC();
        v64 = *v68;
        (*v68)(v62, v61);
        v64(v58, v61);

        v29 = v78;
        v52 = v74;
        v50 = v75;
        v51 = v70;
        if (v63)
        {
          goto LABEL_35;
        }

        v53 = v76;
        if (v83 + 8 != v81)
        {
          *v83 = *v76;
        }

        v83 -= 8;
        v81 = v53;
        if (v53 <= v29)
        {
          v81 = v53;
          v49 = v79;
          goto LABEL_43;
        }
      }

      sub_1E1308058(v50, &unk_1ECEBB780);
      goto LABEL_35;
    }
  }

  else
  {
    v29 = a4;
    v80 = &v67 - v23;
    if (a4 != v82 || &v82[8 * v26] <= a4)
    {
      memmove(a4, v82, 8 * v26);
    }

    v81 = &a4[8 * v26];
    if (v25 >= 8 && a2 < v83)
    {
      v30 = a2;
      v31 = (v17 + 48);
      v77 = (v17 + 32);
      v73 = (v17 + 8);
      v32 = &unk_1E1B029A0;
      v33 = v76;
      v75 = (v17 + 48);
      while (1)
      {
        v79 = v30;
        v34 = *v29;
        sub_1E134FD1C(*v30 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_installDate, v33, &unk_1ECEBB780);
        v35 = *v31;
        if ((*v31)(v33, 1, v84) == 1)
        {
          break;
        }

        v78 = v29;
        v36 = *v77;
        v37 = v33;
        v38 = v32;
        v39 = v84;
        (*v77)(v80, v37, v84);
        v40 = v34;
        v41 = v38;
        v42 = v74;
        sub_1E134FD1C(v40 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_installDate, v74, &unk_1ECEBB780);
        if (v35(v42, 1, v39) == 1)
        {
          v43 = *v73;

          v43(v80, v84);
          sub_1E1308058(v42, &unk_1ECEBB780);

          v29 = v78;
          v31 = v75;
          v33 = v76;
          v32 = v41;
LABEL_13:
          v48 = v79;
          v30 = v79 + 8;
          if (v82 == v79)
          {
            goto LABEL_15;
          }

LABEL_14:
          *v82 = *v48;
          goto LABEL_15;
        }

        v44 = v71;
        v45 = v84;
        v36(v71, v42, v84);

        v46 = v80;
        LODWORD(v72) = sub_1E1AEFDCC();
        v47 = *v73;
        (*v73)(v44, v45);
        v47(v46, v45);

        v29 = v78;
        v31 = v75;
        v33 = v76;
        v32 = v41;
        if (v72)
        {
          goto LABEL_13;
        }

        v48 = v78;
        v29 = v78 + 8;
        v30 = v79;
        if (v82 != v78)
        {
          goto LABEL_14;
        }

LABEL_15:
        v82 += 8;
        if (v29 >= v81 || v30 >= v83)
        {
          goto LABEL_40;
        }
      }

      sub_1E1308058(v33, &unk_1ECEBB780);
      goto LABEL_13;
    }

LABEL_40:
    v49 = v82;
  }

LABEL_43:
  if (v49 != v29 || v49 >= &v29[(v81 - v29 + (v81 - v29 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v49, v29, 8 * ((v81 - v29) / 8));
  }

  return 1;
}

uint64_t sub_1E13A728C(char *a1, uint64_t a2, char *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v108 = (&v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v102 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v106 = (&v102 - v13);
  MEMORY[0x1EEE9AC00](v12);
  v112 = &v102 - v14;
  v15 = sub_1E1AEFE6C();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v107 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v111 = &v102 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v105 = &v102 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v26 = &v102 - v25;
  v27 = a2 - a1;
  v28 = v27 / 8;
  v29 = a3 - v24;
  v30 = a3 - v24 + 7;
  if (a3 - v24 >= 0)
  {
    v30 = a3 - v24;
  }

  v31 = v30 >> 3;
  v113 = v22;
  if (v28 < v30 >> 3)
  {
    v32 = v24;
    if (v22 != a1 || &a1[8 * v28] <= v22)
    {
      v33 = v22;
      v34 = v23;
      memmove(v22, a1, 8 * v28);
      v23 = v34;
      v22 = v33;
    }

    v118 = &v22[8 * v28];
    if (v27 < 8 || v32 >= a3)
    {
      v68 = a1;
      v37 = v113;
      goto LABEL_64;
    }

    v35 = v32;
    v119 = v15;
    v117 = a3;
    v36 = (v23 + 48);
    v108 = (v23 + 32);
    v109 = v26;
    v107 = (v23 + 8);
    v37 = v113;
    v111 = (v23 + 48);
    while (1)
    {
      v114 = v35;
      v38 = *v37;
      v115 = *v35;
      v116 = v38;
      v39 = v37;
      v40 = v112;
      sub_1E134FD1C(v115 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_releaseDate, v112, &unk_1ECEBB780);
      v41 = *v36;
      v42 = v119;
      if ((*v36)(v40, 1, v119) == 1)
      {
        sub_1E1308058(v40, &unk_1ECEBB780);
        v43 = v117;
        v37 = v39;
        goto LABEL_25;
      }

      v110 = a1;
      v113 = v39;
      v44 = v40;
      v45 = *v108;
      (*v108)(v109, v44, v42);
      v46 = v106;
      sub_1E134FD1C(v116 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_releaseDate, v106, &unk_1ECEBB780);
      if (v41(v46, 1, v42) == 1)
      {
        break;
      }

      v48 = v105;
      v45(v105, v46, v42);
      v49 = v115;

      v50 = v116;

      v51 = v109;
      if (sub_1E1AEFE2C())
      {
        v52 = *(v49 + 104);
        v43 = v117;
        if (!v52 || (v53 = *(v50 + 104)) == 0)
        {
          v63 = v48;
          v64 = *v107;
          (*v107)(v63, v42);
          v64(v51, v42);

          v37 = v113;
          a1 = v110;
LABEL_25:
          v61 = v114;
          v35 = v114 + 8;
          if (a1 == v114)
          {
            goto LABEL_27;
          }

LABEL_26:
          *a1 = *v61;
          goto LABEL_27;
        }

        v54 = *(v49 + 96);
        a1 = v110;
        if (v54 == *(v50 + 96) && v52 == v53)
        {
          v55 = *v107;
          v56 = v119;
          (*v107)(v105, v119);
          v55(v51, v56);

          v37 = v113;
        }

        else
        {
          v65 = sub_1E1AF74AC();
          v66 = *v107;
          v67 = v119;
          (*v107)(v105, v119);
          v66(v51, v67);

          v37 = v113;
          if (v65)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        v57 = sub_1E1AEFDCC();
        v58 = v48;
        v59 = v57;
        v60 = *v107;
        (*v107)(v58, v42);
        v60(v51, v42);

        v37 = v113;
        a1 = v110;
        v43 = v117;
        if (v59)
        {
          goto LABEL_25;
        }
      }

      v61 = v37;
      v62 = a1 == v37;
      v37 += 8;
      v35 = v114;
      if (!v62)
      {
        goto LABEL_26;
      }

LABEL_27:
      a1 += 8;
      v36 = v111;
      if (v37 >= v118 || v35 >= v43)
      {
        v68 = a1;
        goto LABEL_64;
      }
    }

    v47 = *v107;

    v47(v109, v42);
    sub_1E1308058(v46, &unk_1ECEBB780);

    v37 = v113;
    a1 = v110;
    v43 = v117;
    goto LABEL_25;
  }

  v37 = v22;
  v68 = v24;
  if (v22 != v24 || &v24[8 * v31] <= v22)
  {
    v69 = v23;
    memmove(v22, v24, 8 * v31);
    v23 = v69;
  }

  v118 = &v37[8 * v31];
  if (v29 >= 8 && v68 > a1)
  {
    v110 = a1;
    v105 = (v23 + 32);
    v103 = (v23 + 8);
    v70 = v15;
    v119 = v15;
    v106 = (v23 + 48);
    v104 = v11;
    while (1)
    {
      v114 = v68;
      v71 = v68 - 8;
      a3 -= 8;
      v72 = v118;
      v109 = v68 - 8;
      while (1)
      {
        v73 = *(v72 - 1);
        v112 = v72 - 8;
        v74 = *v71;
        v115 = v73;
        v116 = v74;
        sub_1E134FD1C(v73 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_releaseDate, v11, &unk_1ECEBB780);
        v75 = *v106;
        if ((*v106)(v11, 1, v70) == 1)
        {
          sub_1E1308058(v11, &unk_1ECEBB780);
          v71 = v109;
          goto LABEL_56;
        }

        v117 = a3;
        v76 = *v105;
        v77 = v111;
        v78 = v119;
        (*v105)(v111, v11, v119);
        v79 = v108;
        sub_1E134FD1C(v116 + OBJC_IVAR____TtC11AppStoreKit13UpdatesLockup_releaseDate, v108, &unk_1ECEBB780);
        if (v75(v79, 1, v78) == 1)
        {
          v98 = *v103;

          v98(v77, v119);
          sub_1E1308058(v79, &unk_1ECEBB780);

          v37 = v113;
          v11 = v104;
          a3 = v117;
          v71 = v109;
          goto LABEL_56;
        }

        v80 = v107;
        v76(v107, v79, v119);
        v81 = v115;

        v82 = v116;

        v83 = sub_1E1AEFE2C();
        v71 = v109;
        if ((v83 & 1) == 0)
        {
          v88 = sub_1E1AEFDCC();
          v89 = v80;
          v90 = v88;
          v91 = *v103;
          v92 = v119;
          (*v103)(v89, v119);
          v91(v77, v92);

          v37 = v113;
          v11 = v104;
          a3 = v117;
          if (v90)
          {
            goto LABEL_56;
          }

          goto LABEL_51;
        }

        v84 = *(v81 + 104);
        v11 = v104;
        if (!v84)
        {
          break;
        }

        v85 = *(v82 + 104);
        if (!v85)
        {
          break;
        }

        if (*(v81 + 96) == *(v82 + 96) && v84 == v85)
        {
          v86 = *v103;
          v87 = v119;
          (*v103)(v80, v119);
          v86(v111, v87);

          v37 = v113;
          a3 = v117;
        }

        else
        {
          v93 = sub_1E1AF74AC();
          v94 = v80;
          v95 = v93;
          v96 = *v103;
          v97 = v119;
          (*v103)(v94, v119);
          v96(v111, v97);

          v37 = v113;
          a3 = v117;
          if (v95)
          {
            goto LABEL_56;
          }
        }

LABEL_51:
        v72 = v112;
        if (a3 + 8 != v118)
        {
          *a3 = *v112;
        }

        a3 -= 8;
        v118 = v72;
        v70 = v119;
        if (v72 <= v37)
        {
          v118 = v72;
          v68 = v114;
          goto LABEL_64;
        }
      }

      v99 = *v103;
      v100 = v119;
      (*v103)(v80, v119);
      v99(v111, v100);

      v37 = v113;
      a3 = v117;
LABEL_56:
      if (a3 + 8 != v114)
      {
        *a3 = *v71;
      }

      v70 = v119;
      if (v118 > v37)
      {
        v68 = v71;
        if (v71 > v110)
        {
          continue;
        }
      }

      v68 = v71;
      break;
    }
  }

LABEL_64:
  if (v68 != v37 || v68 >= &v37[(v118 - v37 + (v118 - v37 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v68, v37, 8 * ((v118 - v37) / 8));
  }

  return 1;
}

void *sub_1E13A7DB8@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, _BYTE *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

char *_s11AppStoreKit0A14UpdatesLockupsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v70 = a1[2];
  v3 = *a2;
  v71 = a2[1];
  v72 = a1[1];
  v4 = a2[2];
  if (*a1 >> 62)
  {
    v5 = sub_1E1AF71CC();
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  v69 = v4;
  if (v5)
  {
    v78 = MEMORY[0x1E69E7CC0];
    sub_1E135C028(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_78;
    }

    v68 = v3;
    v7 = 0;
    v6 = v78;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E68FFD80](v7, v2);
      }

      else
      {
        v8 = *(v2 + 8 * v7 + 32);
      }

      swift_beginAccess();
      v10 = *(v8 + 16);
      v9 = *(v8 + 24);

      v12 = *(v78 + 16);
      v11 = *(v78 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1E135C028((v11 > 1), v12 + 1, 1);
      }

      ++v7;
      *(v78 + 16) = v12 + 1;
      v13 = v78 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
    }

    while (v5 != v7);
    v3 = v68;
    v4 = v69;
  }

  if (v3 >> 62)
  {
    v14 = sub_1E1AF71CC();
  }

  else
  {
    v14 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    goto LABEL_25;
  }

  v77 = MEMORY[0x1E69E7CC0];
  sub_1E135C028(0, v14 & ~(v14 >> 63), 0);
  if (v14 < 0)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v16 = 0;
  v15 = v77;
  v17 = v3;
  v18 = v3 & 0xC000000000000001;
  do
  {
    if (v18)
    {
      v19 = MEMORY[0x1E68FFD80](v16, v17);
    }

    else
    {
      v19 = *(v17 + 8 * v16 + 32);
    }

    swift_beginAccess();
    v21 = *(v19 + 16);
    v20 = *(v19 + 24);

    v23 = *(v77 + 16);
    v22 = *(v77 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_1E135C028((v22 > 1), v23 + 1, 1);
    }

    ++v16;
    *(v77 + 16) = v23 + 1;
    v24 = v77 + 16 * v23;
    *(v24 + 32) = v21;
    *(v24 + 40) = v20;
  }

  while (v14 != v16);
  v4 = v69;
LABEL_25:
  v25 = sub_1E156ED5C(v6, v15);

  if ((v25 & 1) == 0)
  {
LABEL_61:
    v58 = 0;
    return (v58 & 1);
  }

  if (!(v72 >> 62))
  {
    v26 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_28;
  }

LABEL_79:
  v26 = sub_1E1AF71CC();
LABEL_28:
  v27 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v76 = MEMORY[0x1E69E7CC0];
    sub_1E135C028(0, v26 & ~(v26 >> 63), 0);
    if (v26 < 0)
    {
      __break(1u);
      goto LABEL_82;
    }

    v28 = 0;
    v27 = v76;
    v29 = v72;
    do
    {
      if ((v72 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1E68FFD80](v28);
      }

      else
      {
        v30 = *(v29 + 8 * v28 + 32);
      }

      swift_beginAccess();
      v32 = *(v30 + 16);
      v31 = *(v30 + 24);

      v34 = *(v76 + 16);
      v33 = *(v76 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1E135C028((v33 > 1), v34 + 1, 1);
      }

      ++v28;
      *(v76 + 16) = v34 + 1;
      v35 = v76 + 16 * v34;
      *(v35 + 32) = v32;
      *(v35 + 40) = v31;
      v29 = v72;
    }

    while (v26 != v28);
  }

  if (v71 >> 62)
  {
    v36 = sub_1E1AF71CC();
  }

  else
  {
    v36 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = MEMORY[0x1E69E7CC0];
  if (!v36)
  {
    goto LABEL_48;
  }

  v75 = MEMORY[0x1E69E7CC0];
  sub_1E135C028(0, v36 & ~(v36 >> 63), 0);
  if (v36 < 0)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v38 = 0;
  v37 = v75;
  v39 = v71;
  do
  {
    if ((v71 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x1E68FFD80](v38);
    }

    else
    {
      v40 = *(v39 + 8 * v38 + 32);
    }

    swift_beginAccess();
    v42 = *(v40 + 16);
    v41 = *(v40 + 24);

    v44 = *(v75 + 16);
    v43 = *(v75 + 24);
    if (v44 >= v43 >> 1)
    {
      sub_1E135C028((v43 > 1), v44 + 1, 1);
    }

    ++v38;
    *(v75 + 16) = v44 + 1;
    v45 = v75 + 16 * v44;
    *(v45 + 32) = v42;
    *(v45 + 40) = v41;
    v39 = v71;
  }

  while (v36 != v38);
LABEL_48:
  v46 = sub_1E156ED5C(v27, v37);

  if ((v46 & 1) == 0)
  {
    goto LABEL_61;
  }

  if (!(v70 >> 62))
  {
    v47 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_51;
  }

LABEL_83:
  v47 = sub_1E1AF71CC();
LABEL_51:
  v48 = MEMORY[0x1E69E7CC0];
  if (v47)
  {
    v73 = MEMORY[0x1E69E7CC0];
    result = sub_1E135C028(0, v47 & ~(v47 >> 63), 0);
    if (v47 < 0)
    {
      __break(1u);
      goto LABEL_86;
    }

    v50 = 0;
    v48 = v73;
    v51 = v70;
    do
    {
      if ((v70 & 0xC000000000000001) != 0)
      {
        v52 = MEMORY[0x1E68FFD80](v50);
      }

      else
      {
        v52 = *(v51 + 8 * v50 + 32);
      }

      swift_beginAccess();
      v54 = *(v52 + 16);
      v53 = *(v52 + 24);

      v56 = *(v73 + 16);
      v55 = *(v73 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_1E135C028((v55 > 1), v56 + 1, 1);
      }

      ++v50;
      *(v73 + 16) = v56 + 1;
      v57 = v73 + 16 * v56;
      *(v57 + 32) = v54;
      *(v57 + 40) = v53;
      v51 = v70;
    }

    while (v47 != v50);
  }

  if (v4 >> 62)
  {
    v59 = sub_1E1AF71CC();
  }

  else
  {
    v59 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = MEMORY[0x1E69E7CC0];
  if (!v59)
  {
LABEL_73:
    v58 = sub_1E156ED5C(v48, v60);

    return (v58 & 1);
  }

  v74 = MEMORY[0x1E69E7CC0];
  result = sub_1E135C028(0, v59 & ~(v59 >> 63), 0);
  if ((v59 & 0x8000000000000000) == 0)
  {
    v61 = 0;
    v60 = v74;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v62 = MEMORY[0x1E68FFD80](v61, v4);
      }

      else
      {
        v62 = *(v4 + 8 * v61 + 32);
      }

      swift_beginAccess();
      v64 = *(v62 + 16);
      v63 = *(v62 + 24);

      v66 = *(v74 + 16);
      v65 = *(v74 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_1E135C028((v65 > 1), v66 + 1, 1);
      }

      ++v61;
      *(v74 + 16) = v66 + 1;
      v67 = v74 + 16 * v66;
      *(v67 + 32) = v64;
      *(v67 + 40) = v63;
    }

    while (v59 != v61);
    goto LABEL_73;
  }

LABEL_86:
  __break(1u);
  return result;
}

void sub_1E13A8508(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1E1AF591C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1E1580 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EE1E1590);
  (*(v5 + 16))(v7, v8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  v9 = *(sub_1E1AF38EC() - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E1B03760;
  v13 = v12 + v11;
  sub_1E1AF38CC();
  sub_1E1AF382C();
  v41 = v10;
  if (a1 >> 62)
  {
    v14 = sub_1E1AF71CC();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
    goto LABEL_18;
  }

  v42[0] = MEMORY[0x1E69E7CC0];
  sub_1E135C088(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    v36[1] = v13;
    v37 = v7;
    v38 = v5;
    v39 = v4;
    v40 = v2;
    v15 = v42[0];
    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = 0;
      do
      {
        MEMORY[0x1E68FFD80](v16, a1);
        v17 = sub_1E13A001C();
        v19 = v18;
        swift_unknownObjectRelease();
        v42[0] = v15;
        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1E135C088((v20 > 1), v21 + 1, 1);
          v15 = v42[0];
        }

        ++v16;
        *(v15 + 16) = v21 + 1;
        v22 = v15 + 16 * v21;
        *(v22 + 32) = v17;
        *(v22 + 40) = v19;
      }

      while (v14 != v16);
    }

    else
    {
      v23 = (a1 + 32);
      do
      {
        v24 = *v23;
        v25 = sub_1E13A001C();
        v27 = v26;

        v42[0] = v15;
        v29 = *(v15 + 16);
        v28 = *(v15 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1E135C088((v28 > 1), v29 + 1, 1);
          v15 = v42[0];
        }

        *(v15 + 16) = v29 + 1;
        v30 = v15 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        ++v23;
        --v14;
      }

      while (v14);
    }

    v4 = v39;
    v2 = v40;
    v7 = v37;
    v5 = v38;
LABEL_18:
    v42[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB2D10);
    v42[0] = v15;
    sub_1E1AF38BC();
    sub_1E1308058(v42, &qword_1ECEB2DF0);
    sub_1E1AF548C();

    v31 = (*(v5 + 8))(v7, v4);
    v32 = *(v2 + OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_consistencyLock);
    v33 = MEMORY[0x1EEE9AC00](v31);
    v36[-2] = v2;
    MEMORY[0x1EEE9AC00](v33);
    v36[-2] = sub_1E13A8BBC;
    v36[-1] = v34;
    os_unfair_lock_lock(v32 + 4);
    sub_1E13A8BD8(v35);
    os_unfair_lock_unlock(v32 + 4);
    return;
  }

  __break(1u);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E13A8968(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1E13A89B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for AppUpdatesDataSource()
{
  result = qword_1EE1F90A8;
  if (!qword_1EE1F90A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E13A8A64()
{
  sub_1E13A8B64();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E13A8B64()
{
  if (!qword_1EE1FADB8)
  {
    sub_1E1AEFE6C();
    v0 = sub_1E1AF6D9C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1FADB8);
    }
  }
}

uint64_t sub_1E13A8BF4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5D8;

  return sub_1E13A31D0();
}

uint64_t objectdestroy_16Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E13A8CE8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E130B5D8;

  return sub_1E13A3ACC();
}

void sub_1E13A8DD4(_BYTE *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_queryResultsDidChange);
  *(v2 + OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_queryResultsDidChange) = 0;
  if ((v3 & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_isFetching) = 0;
  }

  *a1 = v3;
}

uint64_t sub_1E13A8E38@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  swift_beginAccess();
  *a2 = *(v4 + v5);
}

void *sub_1E13A8E98@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1E13A8F08(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for AppUpdateMetadata();
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

unint64_t sub_1E13A8F6C()
{
  result = qword_1ECEB2D50;
  if (!qword_1ECEB2D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB2D50);
  }

  return result;
}

uint64_t sub_1E13A8FC0()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC11AppStoreKit20AppUpdatesDataSource_adamIdToCachedAppLockupPair) = **(v0 + 24);
}

uint64_t sub_1E13A9008(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E130B5DC;

  return sub_1E13A2A48(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1E13A90F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E130B5DC;

  return sub_1E1305374(a1, v4);
}

void *sub_1E13A91C8@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1E13A920C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_1E13A9244()
{
  result = qword_1EE1D27E8;
  if (!qword_1EE1D27E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECEB2D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D27E8);
  }

  return result;
}

uint64_t sub_1E13A92CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEBB780);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E13A933C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1E1AEFE6C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{
  v1 = sub_1E1AEFEAC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1E13A94D0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1E1AEFEAC() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

double HorizontalAlignmentLayout.measurements(fitting:in:)(uint64_t a1, double a2, double a3)
{
  sub_1E13ACCB8(*v3, a1, &v5, a2, a3);
  sub_1E13AD968(&v5);
  return v5;
}

void HorizontalAlignmentLayout.placeChildren(relativeTo:in:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  *v26 = a2;
  *&v26[8] = a3;
  v6 = *v5;
  *&v26[16] = a4;
  *&v26[24] = a5;
  sub_1E13ACCB8(*v5, a1, v37, a4, a5);
  v31 = 0.0;
  v32 = 0.0;
  v33 = 1;
  v34 = xmmword_1E1B04B80;
  v35 = xmmword_1E1B04B80;
  v36 = xmmword_1E1B04B80;
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v6 + 32;
    do
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

      *v29 = v8;
      sub_1E13AD998(v9, &v29[8]);
      if (!*&v29[40])
      {
        break;
      }

      v10 = *v29;
      *v29 = *&v29[8];
      *&v29[16] = *&v29[24];
      *&v29[32] = *&v29[40];
      *&v29[48] = *&v29[56];
      *&v29[64] = *&v29[72];
      *&v29[80] = *&v29[88];
      *&v29[96] = *&v29[104];
      *&v29[112] = *&v29[120];
      *&v29[128] = *&v29[136];
      *&v29[144] = *&v29[152];
      *&v29[160] = *&v29[168];
      *&v29[176] = v30;
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      if (v10 >= *(v38 + 16))
      {
        goto LABEL_38;
      }

      v11 = (v38 + (v10 << 6));
      v13 = v11[6];
      v12 = v11[7];
      v27 = v11[8];
      v28 = v11[9];
      v14 = v11[10];
      v15 = v11[11];
      v16 = v14 + CGRectGetMinX(*v26);
      v17 = v15 + CGRectGetMinY(*v26);
      __swift_project_boxed_opaque_existential_1Tm(&v29[8], *&v29[32]);
      v18 = v13;
      sub_1E1AF6B1C();
      sub_1E1AF116C();
      HIBYTE(v33) = 1;
      if (v33)
      {
        sub_1E19C636C(v16, v17, v13, v12, v13, v12, v27, v28);
      }

      else
      {
        v20 = v31;
        v19 = v32;
        v39.origin.x = v16;
        v39.origin.y = v17;
        v39.size.width = v18;
        v39.size.height = v12;
        if (*(&v34 + 1) < CGRectGetMaxY(v39))
        {
          v40.origin.x = v16;
          v40.origin.y = v17;
          v40.size.width = v18;
          v40.size.height = v12;
          if (CGRectGetMaxY(v40) <= v19)
          {
            v41.origin.x = v16;
            v41.origin.y = v17;
            v41.size.width = v18;
            v41.size.height = v12;
            *(&v34 + 1) = CGRectGetMaxY(v41);
          }
        }

        v42.origin.x = v16;
        v42.origin.y = v17;
        v42.size.width = v18;
        v42.size.height = v12;
        if (*(&v35 + 1) < CGRectGetMaxX(v42))
        {
          v43.origin.x = v16;
          v43.origin.y = v17;
          v43.size.width = v18;
          v43.size.height = v12;
          if (CGRectGetMaxX(v43) <= v20)
          {
            v44.origin.x = v16;
            v44.origin.y = v17;
            v44.size.width = v18;
            v44.size.height = v12;
            *(&v35 + 1) = CGRectGetMaxX(v44);
          }
        }

        v45.origin.x = v16;
        v45.origin.y = v17;
        v45.size.width = v18;
        v45.size.height = v12;
        v21 = v27 + CGRectGetMinY(v45);
        if (v21 > 0.0 && v21 <= v19)
        {
          if (v21 < *&v36)
          {
            *&v36 = v21;
          }

          if (*(&v36 + 1) < v21)
          {
            *(&v36 + 1) = v21;
          }
        }

        v46.origin.x = v16;
        v46.origin.y = v17;
        v46.size.width = v18;
        v46.size.height = v12;
        v23 = CGRectGetMaxY(v46) - v28;
        if (v23 > 0.0 && v23 <= v19)
        {
          if (v23 < *&v36)
          {
            *&v36 = v23;
          }

          if (*(&v36 + 1) < v23)
          {
            *(&v36 + 1) = v23;
          }
        }
      }

      ++v8;
      sub_1E13AD9D0(v29);
      v9 += 184;
    }

    while (v7 != v8);
    v25 = HIBYTE(v33);
    sub_1E13AD968(v37);
    if (v25 != 1)
    {
      goto LABEL_35;
    }

    sub_1E1AF107C();
  }

  else
  {
    sub_1E13AD968(v37);
LABEL_35:
    sub_1E1AF10AC();
  }
}

double sub_1E13A99EC(uint64_t a1, double a2, double a3)
{
  sub_1E13ACCB8(*v3, a1, &v5, a2, a3);
  sub_1E13AD968(&v5);
  return v5;
}

_BYTE *static HorizontalAlignmentLayout.SizingPolicy.policy(priority:constrainedTo:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = *result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  return result;
}

uint64_t static HorizontalAlignmentLayout.Child.child(view:leadingSpace:trailingSpace:verticalAnchor:horizontalGravity:sizingPolicy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, uint64_t a8@<X8>)
{
  v19 = *a5;
  v12 = *(a5 + 1);
  v13 = *(a5 + 2);
  v21 = *a6;
  v14 = *a7;
  v16 = *(a7 + 1);
  v15 = *(a7 + 2);
  v17 = a7[24];
  *(a8 + 32) = swift_getObjectType();
  *(a8 + 40) = a2;
  *(a8 + 8) = a1;
  sub_1E1300B24(a3, a8 + 48);
  sub_1E1300B24(a4, a8 + 88);
  *a8 = a1;
  *(a8 + 128) = v19;
  *(a8 + 136) = v12;
  *(a8 + 144) = v13;
  *(a8 + 152) = v14;
  *(a8 + 160) = v16;
  *(a8 + 168) = v15;
  *(a8 + 176) = v17;
  *(a8 + 177) = v21;

  return swift_unknownObjectRetain();
}

uint64_t static HorizontalAlignmentLayout.VerticalAnchor.anchor(child:at:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *a2;
  if ((*a2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
LABEL_5:
    *a3 = v3;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  v6 = a3;
  sub_1E13AD998((v4 & 0x7FFFFFFFFFFFFFFFLL) + 16, v9);
  v7 = v10;
  result = sub_1E13AD9D0(v9);
  v5 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    a3 = v6;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t HorizontalAlignmentLayout.ChildSourceOffset.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

AppStoreKit::HorizontalAlignmentLayout::SizingPolicy::Priority_optional __swiftcall HorizontalAlignmentLayout.SizingPolicy.Priority.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 4)
  {
    v2 = 3;
  }

  else
  {
    v2 = 3 - rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1E13A9C90()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](3 - v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E13A9D10()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](3 - v1);
  return sub_1E1AF767C();
}

uint64_t HorizontalAlignmentLayout.HorizontalGravity.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

__n128 sub_1E13A9E80()
{
  xmmword_1EE1D8B20 = 0uLL;
  result = *MEMORY[0x1E69ABBD0];
  v1 = *(MEMORY[0x1E69ABBD0] + 16);
  xmmword_1EE1D8B30 = *MEMORY[0x1E69ABBD0];
  xmmword_1EE1D8B40 = v1;
  qword_1EE1D8B50 = 0;
  unk_1EE1D8B58 = 0;
  return result;
}

uint64_t sub_1E13A9EA4(void **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1E196902C(v6);
  }

  v7 = v6[2];
  v9[0] = v6 + 4;
  v9[1] = v7;
  result = sub_1E13A9F28(v9, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_1E13A9F28(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1E1AF741C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      if (v6 <= 1)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB27B0);
        v9 = sub_1E1AF628C();
        *(v9 + 16) = v6 / 2;
      }

      v11[0] = v9 + 32;
      v11[1] = v6 / 2;
      v10 = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_1E13AA040(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 192 * a3);
    v6 = result - a3;
LABEL_5:
    v35 = a3;
    v7 = v6;
    v19 = v5;
    while (1)
    {
      sub_1E13AE1A8(v5, &v24);
      v8 = v5 - 12;
      sub_1E13AE1A8((v5 - 12), v23);
      sub_1E13AE1A8(&v24, v20);
      v9 = v22;
      sub_1E13AD9D0(v21);
      sub_1E13AE1A8(v23, v20);
      v10 = v22;
      sub_1E13AD9D0(v21);
      sub_1E13AE218(v23);
      result = sub_1E13AE218(&v24);
      if (v9 >= v10)
      {
LABEL_4:
        a3 = v35 + 1;
        v5 = v19 + 12;
        --v6;
        if (v35 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v32 = v5[8];
      v33 = v5[9];
      v34[0] = v5[10];
      *(v34 + 10) = *(v5 + 170);
      v28 = v5[4];
      v29 = v5[5];
      v30 = v5[6];
      v31 = v5[7];
      v24 = *v5;
      v25 = v5[1];
      v26 = v5[2];
      v27 = v5[3];
      v11 = *(v5 - 3);
      v5[8] = *(v5 - 4);
      v5[9] = v11;
      v12 = *(v5 - 1);
      v5[10] = *(v5 - 2);
      v5[11] = v12;
      v13 = *(v5 - 7);
      v5[4] = *(v5 - 8);
      v5[5] = v13;
      v14 = *(v5 - 5);
      v5[6] = *(v5 - 6);
      v5[7] = v14;
      v15 = *(v5 - 11);
      *v5 = *v8;
      v5[1] = v15;
      v16 = *(v5 - 9);
      v5[2] = *(v5 - 10);
      v5[3] = v16;
      *(v5 - 4) = v32;
      *(v5 - 3) = v33;
      *(v5 - 2) = v34[0];
      *(v5 - 22) = *(v34 + 10);
      *(v5 - 8) = v28;
      *(v5 - 7) = v29;
      *(v5 - 6) = v30;
      *(v5 - 5) = v31;
      *v8 = v24;
      *(v5 - 11) = v25;
      *(v5 - 10) = v26;
      *(v5 - 9) = v27;
      v5 -= 12;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E13AA244(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 192 * a3);
    v6 = result - a3;
LABEL_6:
    v37 = a3;
    v7 = v6;
    v21 = v5;
    while (1)
    {
      sub_1E13AE1A8(v5, &v26);
      v8 = v5 - 12;
      sub_1E13AE1A8((v5 - 12), v25);
      sub_1E13AE1A8(&v26, v22);
      v9 = v24;
      sub_1E13AD9D0(v23);
      sub_1E13AE1A8(v25, v22);
      v10 = v24;
      sub_1E13AD9D0(v23);
      if (v9)
      {
        if ((v10 & 1) == 0)
        {
          sub_1E13AE218(v25);
          result = sub_1E13AE218(&v26);
LABEL_5:
          a3 = v37 + 1;
          v5 = v21 + 12;
          --v6;
          if (v37 + 1 == a2)
          {
            return result;
          }

          goto LABEL_6;
        }

        v11 = v25[0] < v26;
      }

      else
      {
        if (v10)
        {
          sub_1E13AE218(v25);
          result = sub_1E13AE218(&v26);
          goto LABEL_17;
        }

        v11 = v26 < v25[0];
      }

      v12 = v11;
      sub_1E13AE218(v25);
      result = sub_1E13AE218(&v26);
      if ((v12 & 1) == 0)
      {
        goto LABEL_5;
      }

LABEL_17:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      v34 = v5[8];
      v35 = v5[9];
      v36[0] = v5[10];
      *(v36 + 10) = *(v5 + 170);
      v30 = v5[4];
      v31 = v5[5];
      v32 = v5[6];
      v33 = v5[7];
      v26 = *v5;
      v27 = v5[1];
      v28 = v5[2];
      v29 = v5[3];
      v13 = *(v5 - 3);
      v5[8] = *(v5 - 4);
      v5[9] = v13;
      v14 = *(v5 - 1);
      v5[10] = *(v5 - 2);
      v5[11] = v14;
      v15 = *(v5 - 7);
      v5[4] = *(v5 - 8);
      v5[5] = v15;
      v16 = *(v5 - 5);
      v5[6] = *(v5 - 6);
      v5[7] = v16;
      v17 = *(v5 - 11);
      *v5 = *v8;
      v5[1] = v17;
      v18 = *(v5 - 9);
      v5[2] = *(v5 - 10);
      v5[3] = v18;
      *(v5 - 4) = v34;
      *(v5 - 3) = v35;
      *(v5 - 2) = v36[0];
      *(v5 - 22) = *(v36 + 10);
      *(v5 - 8) = v30;
      *(v5 - 7) = v31;
      *(v5 - 6) = v32;
      *(v5 - 5) = v33;
      *v8 = v26;
      *(v5 - 11) = v27;
      *(v5 - 10) = v28;
      *(v5 - 9) = v29;
      v5 -= 12;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1E13AA494(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = (*a4 + 192 * a3);
    v6 = result - a3;
LABEL_6:
    v37 = a3;
    v20 = v6;
    v21 = v5;
    while (1)
    {
      sub_1E13AE1A8(v5, &v26);
      v7 = v5 - 12;
      sub_1E13AE1A8((v5 - 12), v25);
      sub_1E13AE1A8(&v26, v22);
      v8 = v24;
      sub_1E13AD9D0(v23);
      sub_1E13AE1A8(v25, v22);
      v9 = v24;
      sub_1E13AD9D0(v23);
      if (3 - v9 >= (3 - v8))
      {
        if (v9 != v8)
        {
          sub_1E13AE218(v25);
          result = sub_1E13AE218(&v26);
LABEL_5:
          a3 = v37 + 1;
          v5 = v21 + 12;
          v6 = v20 - 1;
          if (v37 + 1 == a2)
          {
            return result;
          }

          goto LABEL_6;
        }

        v10 = v26;
        v11 = v25[0];
        sub_1E13AE218(v25);
        result = sub_1E13AE218(&v26);
        if (v10 >= v11)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_1E13AE218(v25);
        result = sub_1E13AE218(&v26);
      }

      if (!v4)
      {
        break;
      }

      v34 = v5[8];
      v35 = v5[9];
      v36[0] = v5[10];
      *(v36 + 10) = *(v5 + 170);
      v30 = v5[4];
      v31 = v5[5];
      v32 = v5[6];
      v33 = v5[7];
      v26 = *v5;
      v27 = v5[1];
      v28 = v5[2];
      v29 = v5[3];
      v12 = *(v5 - 3);
      v5[8] = *(v5 - 4);
      v5[9] = v12;
      v13 = *(v5 - 1);
      v5[10] = *(v5 - 2);
      v5[11] = v13;
      v14 = *(v5 - 7);
      v5[4] = *(v5 - 8);
      v5[5] = v14;
      v15 = *(v5 - 5);
      v5[6] = *(v5 - 6);
      v5[7] = v15;
      v16 = *(v5 - 11);
      *v5 = *v7;
      v5[1] = v16;
      v17 = *(v5 - 9);
      v5[2] = *(v5 - 10);
      v5[3] = v17;
      *(v5 - 4) = v34;
      *(v5 - 3) = v35;
      *(v5 - 2) = v36[0];
      *(v5 - 22) = *(v36 + 10);
      *(v5 - 8) = v30;
      *(v5 - 7) = v31;
      *(v5 - 6) = v32;
      *(v5 - 5) = v33;
      *v7 = v26;
      *(v5 - 11) = v27;
      *(v5 - 10) = v28;
      *(v5 - 9) = v29;
      v5 -= 12;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E13AA6E0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v96 = result;
  v117 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_92:
    v5 = *v96;
    if (!*v96)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_1E1968F00(v9);
      v9 = result;
    }

    v86 = v6;
    v116 = v9;
    v87 = *(v9 + 2);
    if (v87 >= 2)
    {
      while (*v117)
      {
        v6 = (v87 - 1);
        v88 = *&v9[16 * v87];
        v89 = *&v9[16 * v87 + 24];
        sub_1E13AC284((*v117 + 192 * v88), (*v117 + 192 * *&v9[16 * v87 + 16]), (*v117 + 192 * v89), v5);
        if (v86)
        {
        }

        if (v89 < v88)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1E1968F00(v9);
        }

        if (v87 - 2 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v90 = &v9[16 * v87];
        *v90 = v88;
        *(v90 + 1) = v89;
        v116 = v9;
        result = sub_1E1968E74(v87 - 1);
        v9 = v116;
        v87 = *(v116 + 2);
        if (v87 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    if (v8 + 1 >= v7)
    {
      v7 = v8 + 1;
    }

    else
    {
      v11 = *v117;
      sub_1E13AE1A8(*v117 + 192 * (v8 + 1), &v105);
      v91 = 192 * v8;
      sub_1E13AE1A8(v11 + 192 * v8, v104);
      sub_1E13AE1A8(&v105, v101);
      v99 = v103;
      sub_1E13AD9D0(v102);
      sub_1E13AE1A8(v104, v101);
      v97 = v103;
      sub_1E13AD9D0(v102);
      sub_1E13AE218(v104);
      result = sub_1E13AE218(&v105);
      v94 = v8;
      v12 = v8 + 2;
      v13 = v11 + 192 * v8 + 384;
      while (v7 != v12)
      {
        sub_1E13AE1A8(v13, &v105);
        sub_1E13AE1A8(v13 - 192, v104);
        sub_1E13AE1A8(&v105, v101);
        v14 = v103;
        sub_1E13AD9D0(v102);
        sub_1E13AE1A8(v104, v101);
        v5 = v6;
        v15 = v7;
        v16 = v103;
        sub_1E13AD9D0(v102);
        sub_1E13AE218(v104);
        result = sub_1E13AE218(&v105);
        v17 = v14 < v16;
        v7 = v15;
        v6 = v5;
        v18 = !v17;
        ++v12;
        v13 += 192;
        if ((((v99 < v97) ^ v18) & 1) == 0)
        {
          v7 = v12 - 1;
          break;
        }
      }

      v10 = v8;
      if (v99 < v97)
      {
        if (v7 < v8)
        {
          goto LABEL_122;
        }

        if (v8 < v7)
        {
          v19 = 192 * v7 - 192;
          v20 = v7;
          v21 = v91;
          do
          {
            if (v10 != --v7)
            {
              v23 = *v117;
              if (!*v117)
              {
                goto LABEL_128;
              }

              v22 = (v23 + v19);
              v113 = *&v21[v23 + 128];
              v114 = *&v21[v23 + 144];
              v115[0] = *&v21[v23 + 160];
              *(v115 + 10) = *&v21[v23 + 170];
              v109 = *&v21[v23 + 64];
              v110 = *&v21[v23 + 80];
              v111 = *&v21[v23 + 96];
              v112 = *&v21[v23 + 112];
              v105 = *&v21[v23];
              v106 = *&v21[v23 + 16];
              v107 = *&v21[v23 + 32];
              v108 = *&v21[v23 + 48];
              v5 = v21;
              result = memmove(&v21[v23], (v23 + v19), 0xC0uLL);
              v21 = v5;
              v22[8] = v113;
              v22[9] = v114;
              v22[10] = v115[0];
              *(v22 + 170) = *(v115 + 10);
              v22[4] = v109;
              v22[5] = v110;
              v22[6] = v111;
              v22[7] = v112;
              *v22 = v105;
              v22[1] = v106;
              v22[2] = v107;
              v22[3] = v108;
            }

            ++v10;
            v19 -= 192;
            v21 += 192;
          }

          while (v10 < v7);
          v10 = v94;
          v7 = v20;
        }
      }
    }

    v24 = v117[1];
    if (v7 < v24)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_121;
      }

      if (v7 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_123;
        }

        if (v10 + a4 < v24)
        {
          v24 = v10 + a4;
        }

        if (v24 < v10)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v24)
        {
          break;
        }
      }
    }

    v8 = v7;
    if (v7 < v10)
    {
      goto LABEL_120;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1E172D878(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v26 = *(v9 + 2);
    v25 = *(v9 + 3);
    v27 = v26 + 1;
    if (v26 >= v25 >> 1)
    {
      result = sub_1E172D878((v25 > 1), v26 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v27;
    v28 = &v9[16 * v26];
    *(v28 + 4) = v10;
    *(v28 + 5) = v8;
    v29 = *v96;
    if (!*v96)
    {
      goto LABEL_130;
    }

    if (v26)
    {
      while (1)
      {
        v30 = v27 - 1;
        if (v27 >= 4)
        {
          break;
        }

        if (v27 == 3)
        {
          v31 = *(v9 + 4);
          v32 = *(v9 + 5);
          v41 = __OFSUB__(v32, v31);
          v33 = v32 - v31;
          v34 = v41;
LABEL_50:
          if (v34)
          {
            goto LABEL_109;
          }

          v47 = &v9[16 * v27];
          v49 = *v47;
          v48 = *(v47 + 1);
          v50 = __OFSUB__(v48, v49);
          v51 = v48 - v49;
          v52 = v50;
          if (v50)
          {
            goto LABEL_112;
          }

          v53 = &v9[16 * v30 + 32];
          v55 = *v53;
          v54 = *(v53 + 1);
          v41 = __OFSUB__(v54, v55);
          v56 = v54 - v55;
          if (v41)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v51, v56))
          {
            goto LABEL_116;
          }

          if (v51 + v56 >= v33)
          {
            if (v33 < v56)
            {
              v30 = v27 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v57 = &v9[16 * v27];
        v59 = *v57;
        v58 = *(v57 + 1);
        v41 = __OFSUB__(v58, v59);
        v51 = v58 - v59;
        v52 = v41;
LABEL_64:
        if (v52)
        {
          goto LABEL_111;
        }

        v60 = &v9[16 * v30];
        v62 = *(v60 + 4);
        v61 = *(v60 + 5);
        v41 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v41)
        {
          goto LABEL_114;
        }

        if (v63 < v51)
        {
          goto LABEL_3;
        }

LABEL_71:
        v68 = v30 - 1;
        if (v30 - 1 >= v27)
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*v117)
        {
          goto LABEL_127;
        }

        v69 = *&v9[16 * v68 + 32];
        v5 = *&v9[16 * v30 + 40];
        sub_1E13AC284((*v117 + 192 * v69), (*v117 + 192 * *&v9[16 * v30 + 32]), (*v117 + 192 * v5), v29);
        if (v6)
        {
        }

        if (v5 < v69)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1E1968F00(v9);
        }

        if (v68 >= *(v9 + 2))
        {
          goto LABEL_106;
        }

        v70 = &v9[16 * v68];
        *(v70 + 4) = v69;
        *(v70 + 5) = v5;
        v116 = v9;
        result = sub_1E1968E74(v30);
        v9 = v116;
        v27 = *(v116 + 2);
        if (v27 <= 1)
        {
          goto LABEL_3;
        }
      }

      v35 = &v9[16 * v27 + 32];
      v36 = *(v35 - 64);
      v37 = *(v35 - 56);
      v41 = __OFSUB__(v37, v36);
      v38 = v37 - v36;
      if (v41)
      {
        goto LABEL_107;
      }

      v40 = *(v35 - 48);
      v39 = *(v35 - 40);
      v41 = __OFSUB__(v39, v40);
      v33 = v39 - v40;
      v34 = v41;
      if (v41)
      {
        goto LABEL_108;
      }

      v42 = &v9[16 * v27];
      v44 = *v42;
      v43 = *(v42 + 1);
      v41 = __OFSUB__(v43, v44);
      v45 = v43 - v44;
      if (v41)
      {
        goto LABEL_110;
      }

      v41 = __OFADD__(v33, v45);
      v46 = v33 + v45;
      if (v41)
      {
        goto LABEL_113;
      }

      if (v46 >= v38)
      {
        v64 = &v9[16 * v30 + 32];
        v66 = *v64;
        v65 = *(v64 + 1);
        v41 = __OFSUB__(v65, v66);
        v67 = v65 - v66;
        if (v41)
        {
          goto LABEL_117;
        }

        if (v33 < v67)
        {
          v30 = v27 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = v117[1];
    if (v8 >= v7)
    {
      goto LABEL_92;
    }
  }

  v98 = v24;
  v92 = v6;
  v71 = v7;
  v72 = *v117;
  v5 = *v117 + 192 * v71;
  v95 = v10;
  v100 = v71;
  v73 = v10 - v71;
LABEL_83:
  v74 = v73;
  v75 = v5;
  while (1)
  {
    sub_1E13AE1A8(v75, &v105);
    v76 = v75 - 12;
    sub_1E13AE1A8((v75 - 12), v104);
    sub_1E13AE1A8(&v105, v101);
    v77 = v103;
    sub_1E13AD9D0(v102);
    sub_1E13AE1A8(v104, v101);
    v78 = v103;
    sub_1E13AD9D0(v102);
    sub_1E13AE218(v104);
    result = sub_1E13AE218(&v105);
    if (v77 >= v78)
    {
LABEL_82:
      v5 += 192;
      --v73;
      if (++v100 != v98)
      {
        goto LABEL_83;
      }

      v6 = v92;
      v8 = v98;
      v10 = v95;
      if (v98 < v95)
      {
        goto LABEL_120;
      }

      goto LABEL_31;
    }

    if (!v72)
    {
      break;
    }

    v113 = v75[8];
    v114 = v75[9];
    v115[0] = v75[10];
    *(v115 + 10) = *(v75 + 170);
    v109 = v75[4];
    v110 = v75[5];
    v111 = v75[6];
    v112 = v75[7];
    v105 = *v75;
    v106 = v75[1];
    v107 = v75[2];
    v108 = v75[3];
    v79 = *(v75 - 3);
    v75[8] = *(v75 - 4);
    v75[9] = v79;
    v80 = *(v75 - 1);
    v75[10] = *(v75 - 2);
    v75[11] = v80;
    v81 = *(v75 - 7);
    v75[4] = *(v75 - 8);
    v75[5] = v81;
    v82 = *(v75 - 5);
    v75[6] = *(v75 - 6);
    v75[7] = v82;
    v83 = *(v75 - 11);
    *v75 = *v76;
    v75[1] = v83;
    v84 = *(v75 - 9);
    v75[2] = *(v75 - 10);
    v75[3] = v84;
    *(v75 - 4) = v113;
    *(v75 - 3) = v114;
    *(v75 - 2) = v115[0];
    *(v75 - 22) = *(v115 + 10);
    *(v75 - 8) = v109;
    *(v75 - 7) = v110;
    *(v75 - 6) = v111;
    *(v75 - 5) = v112;
    *v76 = v105;
    *(v75 - 11) = v106;
    *(v75 - 10) = v107;
    *(v75 - 9) = v108;
    v75 -= 12;
    if (__CFADD__(v74++, 1))
    {
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_1E13AAFB0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v104 = result;
  v127 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_117:
    v9 = *v104;
    if (!*v104)
    {
      goto LABEL_155;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_119:
      v126 = v8;
      v95 = v8;
      v96 = *(v8 + 16);
      if (v96 >= 2)
      {
        while (*v127)
        {
          v97 = *&v95[16 * v96];
          v98 = *&v95[16 * v96 + 24];
          sub_1E13AC5B4((*v127 + 192 * v97), (*v127 + 192 * *&v95[16 * v96 + 16]), (*v127 + 192 * v98), v9);
          if (v5)
          {
          }

          if (v98 < v97)
          {
            goto LABEL_142;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v95 = sub_1E1968F00(v95);
          }

          if (v96 - 2 >= *(v95 + 2))
          {
            goto LABEL_143;
          }

          v99 = &v95[16 * v96];
          *v99 = v97;
          *(v99 + 1) = v98;
          v126 = v95;
          v8 = &v126;
          result = sub_1E1968E74(v96 - 1);
          v95 = v126;
          v96 = *(v126 + 16);
          if (v96 <= 1)
          {
          }
        }

        goto LABEL_153;
      }
    }

LABEL_149:
    result = sub_1E1968F00(v8);
    v8 = result;
    goto LABEL_119;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7;
    v10 = (v7 + 1);
    if ((v7 + 1) < v6)
    {
      v101 = v8;
      v11 = *v127;
      v12 = v7 + 1;
      sub_1E13AE1A8(*v127 + 192 * v10, &v115);
      v105 = v9;
      sub_1E13AE1A8(v11 + 192 * v9, v114);
      sub_1E13AE1A8(&v115, v111);
      v13 = v113;
      sub_1E13AD9D0(v112);
      sub_1E13AE1A8(v114, v111);
      v14 = v113;
      sub_1E13AD9D0(v112);
      v102 = v5;
      if (v13)
      {
        if ((v14 & 1) == 0)
        {
          v108 = 0;
LABEL_16:
          v17 = v12;
          sub_1E13AE218(v114);
          result = sub_1E13AE218(&v115);
          v18 = (v105 + 2);
          v8 = 192 * v105;
          v19 = v11 + 192 * v105 + 384;
          v20 = 192 * v105 + 192;
          while (1)
          {
            v23 = v18;
            v9 = v17;
            v5 = v20;
            if (v18 >= v6)
            {
LABEL_29:
              if (v108)
              {
                v26 = v105;
                if (v23 < v105)
                {
                  goto LABEL_146;
                }

                if (v105 >= v23)
                {
                  v10 = v23;
                  v8 = v101;
                  v5 = v102;
                  v9 = v105;
                  goto LABEL_39;
                }

                do
                {
                  if (v26 != v9)
                  {
                    v27 = *v127;
                    if (!*v127)
                    {
                      goto LABEL_152;
                    }

                    v28 = (v27 + v5);
                    v123 = *(v27 + v8 + 128);
                    v124 = *(v27 + v8 + 144);
                    v125[0] = *(v27 + v8 + 160);
                    *(v125 + 10) = *(v27 + v8 + 170);
                    v119 = *(v27 + v8 + 64);
                    v120 = *(v27 + v8 + 80);
                    v121 = *(v27 + v8 + 96);
                    v122 = *(v27 + v8 + 112);
                    v115 = *(v27 + v8);
                    v116 = *(v27 + v8 + 16);
                    v117 = *(v27 + v8 + 32);
                    v118 = *(v27 + v8 + 48);
                    result = memmove((v27 + v8), (v27 + v5), 0xC0uLL);
                    v28[8] = v123;
                    v28[9] = v124;
                    v28[10] = v125[0];
                    *(v28 + 170) = *(v125 + 10);
                    v28[4] = v119;
                    v28[5] = v120;
                    v28[6] = v121;
                    v28[7] = v122;
                    *v28 = v115;
                    v28[1] = v116;
                    v28[2] = v117;
                    v28[3] = v118;
                  }

                  ++v26;
                  v5 -= 192;
                  v8 += 192;
                  v15 = v26 < v9--;
                }

                while (v15);
              }

              v10 = v23;
              v8 = v101;
              v5 = v102;
              v9 = v105;
              goto LABEL_39;
            }

            sub_1E13AE1A8(v19, &v115);
            sub_1E13AE1A8(v19 - 192, v114);
            sub_1E13AE1A8(&v115, v111);
            v24 = v113;
            sub_1E13AD9D0(v112);
            sub_1E13AE1A8(v114, v111);
            v25 = v113;
            sub_1E13AD9D0(v112);
            if (v24)
            {
              if (v25)
              {
                v21 = v114[0] < v115;
LABEL_18:
                v22 = v21;
                goto LABEL_21;
              }

              v22 = 0;
            }

            else
            {
              if ((v25 & 1) == 0)
              {
                v21 = v115 < v114[0];
                goto LABEL_18;
              }

              v22 = 1;
            }

LABEL_21:
            sub_1E13AE218(v114);
            result = sub_1E13AE218(&v115);
            v18 = v23 + 1;
            v19 += 192;
            v17 = v9 + 1;
            v20 = v5 + 192;
            if (v108 != v22)
            {
              goto LABEL_29;
            }
          }
        }

        v15 = v114[0] < v115;
      }

      else
      {
        if (v14)
        {
          v16 = 1;
LABEL_15:
          v108 = v16;
          goto LABEL_16;
        }

        v15 = v115 < v114[0];
      }

      v16 = v15;
      goto LABEL_15;
    }

LABEL_39:
    v29 = v127[1];
    if (v10 < v29)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_145;
      }

      if (v10 - v9 < a4)
      {
        break;
      }
    }

LABEL_66:
    if (v10 < v9)
    {
      goto LABEL_144;
    }

    v110 = v10;
    result = swift_isUniquelyReferenced_nonNull_native();
    v48 = v5;
    if ((result & 1) == 0)
    {
      result = sub_1E172D878(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v50 = *(v8 + 16);
    v49 = *(v8 + 24);
    v5 = v50 + 1;
    if (v50 >= v49 >> 1)
    {
      result = sub_1E172D878((v49 > 1), v50 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v5;
    v51 = v8 + 16 * v50;
    *(v51 + 32) = v9;
    *(v51 + 40) = v110;
    v52 = *v104;
    if (!*v104)
    {
      goto LABEL_154;
    }

    if (v50)
    {
      while (1)
      {
        v53 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v54 = *(v8 + 32);
          v55 = *(v8 + 40);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_86:
          if (v57)
          {
            goto LABEL_133;
          }

          v70 = (v8 + 16 * v5);
          v72 = *v70;
          v71 = v70[1];
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_136;
          }

          v76 = (v8 + 32 + 16 * v53);
          v78 = *v76;
          v77 = v76[1];
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_139;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_140;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v5 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        v80 = (v8 + 16 * v5);
        v82 = *v80;
        v81 = v80[1];
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_100:
        if (v75)
        {
          goto LABEL_135;
        }

        v83 = v8 + 16 * v53;
        v85 = *(v83 + 32);
        v84 = *(v83 + 40);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_138;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_107:
        v91 = v53 - 1;
        if (v53 - 1 >= v5)
        {
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v127)
        {
          goto LABEL_151;
        }

        v92 = v8;
        v93 = *(v8 + 32 + 16 * v91);
        v9 = *(v8 + 32 + 16 * v53 + 8);
        sub_1E13AC5B4((*v127 + 192 * v93), (*v127 + 192 * *(v8 + 32 + 16 * v53)), (*v127 + 192 * v9), v52);
        v5 = v48;
        if (v48)
        {
        }

        if (v9 < v93)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1E1968F00(v8);
        }

        if (v91 >= *(v92 + 2))
        {
          goto LABEL_130;
        }

        v94 = &v92[16 * v91];
        *(v94 + 4) = v93;
        *(v94 + 5) = v9;
        v126 = v92;
        result = sub_1E1968E74(v53);
        v8 = v126;
        v5 = *(v126 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = v8 + 32 + 16 * v5;
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_131;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_132;
      }

      v65 = (v8 + 16 * v5);
      v67 = *v65;
      v66 = v65[1];
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_134;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_137;
      }

      if (v69 >= v61)
      {
        v87 = (v8 + 32 + 16 * v53);
        v89 = *v87;
        v88 = v87[1];
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_141;
        }

        if (v56 < v90)
        {
          v53 = v5 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_86;
    }

LABEL_3:
    v6 = v127[1];
    v7 = v110;
    v5 = v48;
    if (v110 >= v6)
    {
      goto LABEL_117;
    }
  }

  v30 = &v9[a4];
  if (__OFADD__(v9, a4))
  {
    goto LABEL_147;
  }

  if (v30 >= v29)
  {
    v30 = v127[1];
  }

  if (v30 < v9)
  {
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (v10 == v30)
  {
    goto LABEL_66;
  }

  v103 = v5;
  v31 = *v127;
  v32 = *v127 + 192 * v10;
  v106 = v9;
  v107 = v30;
  v33 = &v9[-v10];
LABEL_50:
  v109 = v10;
  v34 = v33;
  v35 = v32;
  while (1)
  {
    sub_1E13AE1A8(v35, &v115);
    v36 = v35 - 12;
    sub_1E13AE1A8((v35 - 12), v114);
    sub_1E13AE1A8(&v115, v111);
    v37 = v113;
    sub_1E13AD9D0(v112);
    sub_1E13AE1A8(v114, v111);
    v38 = v113;
    sub_1E13AD9D0(v112);
    if (v37)
    {
      if ((v38 & 1) == 0)
      {
        sub_1E13AE218(v114);
        sub_1E13AE218(&v115);
LABEL_49:
        v10 = v109 + 1;
        v32 += 192;
        --v33;
        if ((v109 + 1) == v107)
        {
          v10 = v107;
          v5 = v103;
          v9 = v106;
          goto LABEL_66;
        }

        goto LABEL_50;
      }

      v39 = v114[0] < v115;
    }

    else
    {
      if (v38)
      {
        sub_1E13AE218(v114);
        result = sub_1E13AE218(&v115);
        goto LABEL_61;
      }

      v39 = v115 < v114[0];
    }

    v40 = v39;
    sub_1E13AE218(v114);
    result = sub_1E13AE218(&v115);
    if ((v40 & 1) == 0)
    {
      goto LABEL_49;
    }

LABEL_61:
    if (!v31)
    {
      break;
    }

    v123 = v35[8];
    v124 = v35[9];
    v125[0] = v35[10];
    *(v125 + 10) = *(v35 + 170);
    v119 = v35[4];
    v120 = v35[5];
    v121 = v35[6];
    v122 = v35[7];
    v115 = *v35;
    v116 = v35[1];
    v117 = v35[2];
    v118 = v35[3];
    v41 = *(v35 - 3);
    v35[8] = *(v35 - 4);
    v35[9] = v41;
    v42 = *(v35 - 1);
    v35[10] = *(v35 - 2);
    v35[11] = v42;
    v43 = *(v35 - 7);
    v35[4] = *(v35 - 8);
    v35[5] = v43;
    v44 = *(v35 - 5);
    v35[6] = *(v35 - 6);
    v35[7] = v44;
    v45 = *(v35 - 11);
    *v35 = *v36;
    v35[1] = v45;
    v46 = *(v35 - 9);
    v35[2] = *(v35 - 10);
    v35[3] = v46;
    *(v35 - 4) = v123;
    *(v35 - 3) = v124;
    *(v35 - 2) = v125[0];
    *(v35 - 22) = *(v125 + 10);
    *(v35 - 8) = v119;
    *(v35 - 7) = v120;
    *(v35 - 6) = v121;
    *(v35 - 5) = v122;
    *v36 = v115;
    *(v35 - 11) = v116;
    *(v35 - 10) = v117;
    *(v35 - 9) = v118;
    v35 -= 12;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
  return result;
}