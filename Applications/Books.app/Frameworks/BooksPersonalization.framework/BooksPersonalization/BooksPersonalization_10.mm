Swift::Int sub_9ECC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2B0C(&qword_229260, &qword_1BC340);
    v3 = sub_1B5054();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_1B57F4();

      sub_1B4884();
      result = sub_1B5844();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_1B5604();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_9EE2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2B0C(&qword_2292D0, &qword_1BC390);
    v3 = sub_1B5054();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 8 * v4);
      result = sub_1B57E4();
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_9EF50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2B0C(&qword_22AE90, &qword_1C30C0);
    v3 = sub_1B5054();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      sub_1B57F4();
      sub_1B5804(v10);
      result = sub_1B5844();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_9F08C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F68747561 && a2 == 0xE600000000000000;
  if (v4 || (sub_1B5604() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000000001D6AA0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000000001D6AC0 == a2 || (sub_1B5604() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_1B5604() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6B6F6F4264656573 && a2 == 0xE800000000000000 || (sub_1B5604() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x80000000001D6AE0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B5604();

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

void *sub_9F2DC(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return _swiftEmptySetSingleton;
  }

  v3 = v1;
  sub_2B0C(&qword_22AEC8, &qword_1C30E8);
  v4 = sub_1B5054();
  v5 = 0;
  v6 = v4 + 56;
  v52 = v2;
  v53 = v3 + 32;
  while (1)
  {
    memcpy(v62, (v53 + 568 * v5), 0x231uLL);
    v7 = *(v4 + 40);
    sub_1B57F4();
    memcpy(v63, v62, 0x231uLL);
    v8 = sub_9E6E0(v63);
    if (v8 > 2)
    {
      if (v8 == 3)
      {
        v17 = sub_9E6EC(v63);
        v12 = *v17;
        v18 = *(v17 + 8);
        v14 = 3;
      }

      else
      {
        if (v8 != 4)
        {
          v19 = *sub_9E6EC(v63);
          sub_1B5804(5uLL);
          goto LABEL_20;
        }

        v11 = sub_9E6EC(v63);
        v12 = *v11;
        v13 = *(v11 + 8);
        v14 = 4;
      }

      sub_1B5804(v14);
      sub_1B5834(v12);
LABEL_20:
      sub_1B4884();

      goto LABEL_21;
    }

    if (v8)
    {
      if (v8 == 1)
      {
        v9 = *sub_9E6EC(v63);
        v10 = 1;
      }

      else
      {
        v9 = *sub_9E6EC(v63);
        v10 = 2;
      }

      sub_1B5804(v10);
      sub_1B5834(v9);
    }

    else
    {
      v15 = sub_9E6EC(v63);
      memcpy(__dst, v62, 0x231uLL);
      v16 = sub_9E6EC(__dst);
      sub_1B5804(0);
      sub_1B5834(*v15);
      __src[2] = *(v15 + 40);
      __src[3] = *(v15 + 56);
      __src[4] = *(v15 + 72);
      *&__src[5] = *(v15 + 88);
      __src[0] = *(v15 + 8);
      __src[1] = *(v15 + 24);
      sub_4299C(v16, v61);
      Book.Metadata.hash(into:)(v57);
      if (*(v15 + 144) >> 1 == 0xFFFFFFFFLL)
      {
        sub_1B5814(0);
      }

      else
      {
        v49 = *(v15 + 144);
        __src[2] = *(v15 + 128);
        __src[3] = v49;
        *&__src[4] = *(v15 + 160);
        v50 = *(v15 + 96);
        __src[1] = *(v15 + 112);
        __src[0] = v50;
        *&v56[32] = __src[2];
        *&v56[48] = v49;
        *&v56[64] = *&__src[4];
        *&v56[16] = __src[1];
        *v56 = v50;
        sub_1B5814(1u);
        sub_42CD4(__src, v61);
        InternalAffinitySource.hash(into:)(v57);
        *&v61[32] = *&v56[32];
        *&v61[48] = *&v56[48];
        *&v61[64] = *&v56[64];
        *&v61[16] = *&v56[16];
        *v61 = *v56;
        sub_42D30(v61);
      }

      memcpy(v61, (v15 + 168), 0x179uLL);
      v2 = v52;
      if (sub_42D84(v61) == 1)
      {
        sub_1B5814(0);
      }

      else
      {
        memcpy(__src, (v15 + 168), 0x179uLL);
        sub_1B5814(1u);
        BookHistory.hash(into:)();
      }

      v51 = *(v15 + 560);
      sub_12CC70(v57, *(v15 + 552));
      if (v51 == 12)
      {
        sub_1B5814(0);
      }

      else
      {
        LOBYTE(__src[0]) = v51;
        sub_1B5814(1u);
        PositiveAffinitySource.hash(into:)();
      }
    }

LABEL_21:
    v20 = sub_1B5844();
    v21 = ~(-1 << *(v4 + 32));
    v22 = v20 & v21;
    v23 = (v20 & v21) >> 6;
    v24 = *(v6 + 8 * v23);
    v25 = 1 << (v20 & v21);
    if ((v25 & v24) != 0)
    {
      while (1)
      {
        v27 = (*(v4 + 48) + 568 * v22);
        memcpy(__src, v27, 0x231uLL);
        memmove(__dst, v27, 0x231uLL);
        memcpy(v60, v62, sizeof(v60));
        memcpy(v61, __src, sizeof(v61));
        v28 = sub_9E6E0(v61);
        if (v28 > 2)
        {
          if (v28 == 3)
          {
            v35 = sub_9E6EC(v61);
            v31 = *v35;
            v32 = *(v35 + 8);
            memcpy(v57, v62, 0x231uLL);
            if (sub_9E6E0(v57) == 3)
            {
LABEL_37:
              v36 = sub_9E6EC(v57);
              if (v31 == *v36)
              {
                v37 = *(v36 + 8);
LABEL_43:
                if (v32)
                {
                  v38 = 0x6F6F626F69647561;
                }

                else
                {
                  v38 = 0x6B6F6F6265;
                }

                if (v32)
                {
                  v39 = 0xE90000000000006BLL;
                }

                else
                {
                  v39 = 0xE500000000000000;
                }

                if (v37)
                {
                  v40 = 0x6F6F626F69647561;
                }

                else
                {
                  v40 = 0x6B6F6F6265;
                }

                if (v37)
                {
                  v41 = 0xE90000000000006BLL;
                }

                else
                {
                  v41 = 0xE500000000000000;
                }

                if (v38 == v40 && v39 == v41)
                {

                  sub_A10F4(__dst);
LABEL_4:
                  v2 = v52;
                  goto LABEL_5;
                }

                v42 = sub_1B5604();

                sub_A10F4(__dst);
                if (v42)
                {
                  goto LABEL_4;
                }

                goto LABEL_24;
              }

              goto LABEL_61;
            }
          }

          else if (v28 == 4)
          {
            v30 = sub_9E6EC(v61);
            v31 = *v30;
            v32 = *(v30 + 8);
            memcpy(v57, v62, 0x231uLL);
            if (sub_9E6E0(v57) == 4)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v32 = *sub_9E6EC(v61);
            memcpy(v57, v62, 0x231uLL);
            if (sub_9E6E0(v57) == 5)
            {
              v37 = *sub_9E6EC(v57);
              goto LABEL_43;
            }
          }
        }

        else
        {
          if (!v28)
          {
            v33 = sub_9E6EC(v61);
            memcpy(v57, v62, 0x231uLL);
            if (!sub_9E6E0(v57))
            {
              v43 = sub_9E6EC(v57);
              memcpy(v56, v33, sizeof(v56));
              memcpy(v55, v43, 0x231uLL);
              sub_5EE34(v62, v54);
              sub_5EE34(__src, v54);
              sub_5EE34(v62, v54);
              sub_5EE34(__src, v54);
              v44 = _s20BooksPersonalization8SeedBookV2eeoiySbAC_ACtFZ_0(v56, v55);
              sub_A10F4(__dst);
              sub_5EE90(v62);
              sub_5EE90(__src);
              if (v44)
              {
                sub_5EE90(v62);
                goto LABEL_4;
              }

              goto LABEL_24;
            }

            sub_5EE34(v62, v56);
            v34 = __src;
            goto LABEL_60;
          }

          if (v28 == 1)
          {
            v29 = *sub_9E6EC(v61);
            memcpy(v57, v62, 0x231uLL);
            if (sub_9E6E0(v57) == 1)
            {
              goto LABEL_23;
            }
          }

          else
          {
            v29 = *sub_9E6EC(v61);
            memcpy(v57, v62, 0x231uLL);
            if (sub_9E6E0(v57) == 2)
            {
LABEL_23:
              v26 = *sub_9E6EC(v57);
              sub_A10F4(__dst);
              if (v29 == v26)
              {
                goto LABEL_4;
              }

              goto LABEL_24;
            }
          }
        }

        v34 = v62;
LABEL_60:
        sub_5EE34(v34, v56);
LABEL_61:
        sub_A10F4(__dst);
LABEL_24:
        v22 = (v22 + 1) & v21;
        v23 = v22 >> 6;
        v25 = 1 << v22;
        if ((*(v6 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
        {
          v24 = *(v6 + 8 * v23);
          v2 = v52;
          break;
        }
      }
    }

    *(v6 + 8 * v23) = v24 | v25;
    result = memcpy((*(v4 + 48) + 568 * v22), v62, 0x231uLL);
    v46 = *(v4 + 16);
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      break;
    }

    *(v4 + 16) = v48;
LABEL_5:
    if (++v5 == v2)
    {
      return v4;
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_9FADC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2B0C(&qword_22AEB8, &qword_1C30D8);
    v3 = sub_1B5054();
    v4 = 0;
    v5 = v3 + 56;
    v30 = v1;
    v31 = a1 + 32;
    while (1)
    {
      v6 = *(v31 + v4);
      v7 = *(v3 + 40);
      sub_1B57F4();
      v8 = v6 >> 6;
      if (v6 >> 6 > 1)
      {
        if (v8 == 3)
        {
          v9 = 6;
        }

        else if (v6 > 129)
        {
          v9 = v6 == 130 ? 4 : 5;
        }

        else
        {
          v9 = v6 != 128;
        }

        sub_1B5804(v9);
      }

      else
      {
        if (v8)
        {
          sub_1B5804(3uLL);
        }

        else
        {
          sub_1B5804(2uLL);
        }

        sub_1B4884();
      }

      result = sub_1B5844();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) != 0)
      {
        break;
      }

LABEL_59:
      *(v5 + 8 * v13) = v14 | v15;
      *(*(v3 + 48) + v12) = v6;
      v27 = *(v3 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v29;
LABEL_4:
      if (++v4 == v30)
      {
        return v3;
      }
    }

    v16 = ~v11;
    while (1)
    {
      v17 = *(*(v3 + 48) + v12);
      v18 = v17 >> 6;
      if (v17 >> 6 > 1)
      {
        if (v18 == 3)
        {
          if (v6 == 192)
          {
            goto LABEL_4;
          }
        }

        else if (*(*(v3 + 48) + v12) > 0x81u)
        {
          if (v17 == 130)
          {
            if (v6 == 130)
            {
              goto LABEL_4;
            }
          }

          else if (v6 == 131)
          {
            goto LABEL_4;
          }
        }

        else if (v17 == 128)
        {
          if (v6 == 128)
          {
            goto LABEL_4;
          }
        }

        else if (v6 == 129)
        {
          goto LABEL_4;
        }

        goto LABEL_16;
      }

      if (v18)
      {
        if (v8 != 1)
        {
          goto LABEL_16;
        }

        v21 = v17 & 0x3F;
        if (v21)
        {
          v23 = v21 == 1;
          v22 = v6 & 0x3F;
          v19 = 0xE800000000000000;
          if (v23)
          {
            v20 = 0x656E4F6C6576656CLL;
            if ((v6 & 0x3F) == 0)
            {
              goto LABEL_55;
            }
          }

          else
          {
            v20 = 0x6F77546C6576656CLL;
            if ((v6 & 0x3F) == 0)
            {
LABEL_55:
              v25 = 0xE600000000000000;
              if (v20 == 0x73657661656CLL)
              {
                goto LABEL_56;
              }

              goto LABEL_57;
            }
          }
        }

        else
        {
          v19 = 0xE600000000000000;
          v20 = 0x73657661656CLL;
          v22 = v6 & 0x3F;
          if ((v6 & 0x3F) == 0)
          {
            goto LABEL_55;
          }
        }

        v23 = v22 == 1;
      }

      else
      {
        if (v6 >= 0x40)
        {
          goto LABEL_16;
        }

        if (*(*(v3 + 48) + v12))
        {
          v19 = 0xE800000000000000;
          if (v17 == 1)
          {
            v20 = 0x656E4F6C6576656CLL;
            if (!v6)
            {
              goto LABEL_55;
            }
          }

          else
          {
            v20 = 0x6F77546C6576656CLL;
            if (!v6)
            {
              goto LABEL_55;
            }
          }
        }

        else
        {
          v19 = 0xE600000000000000;
          v20 = 0x73657661656CLL;
          if (!v6)
          {
            goto LABEL_55;
          }
        }

        v23 = v6 == 1;
      }

      if (v23)
      {
        v24 = 0x656E4F6C6576656CLL;
      }

      else
      {
        v24 = 0x6F77546C6576656CLL;
      }

      v25 = 0xE800000000000000;
      if (v20 == v24)
      {
LABEL_56:
        if (v19 == v25)
        {

          goto LABEL_4;
        }
      }

LABEL_57:
      v26 = sub_1B5604();

      if (v26)
      {
        goto LABEL_4;
      }

LABEL_16:
      v12 = (v12 + 1) & v16;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if ((v14 & (1 << v12)) == 0)
      {
        goto LABEL_59;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

unint64_t sub_9FF3C()
{
  result = qword_22ADD0;
  if (!qword_22ADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ADD0);
  }

  return result;
}

unint64_t sub_9FF94()
{
  result = qword_22ADD8;
  if (!qword_22ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ADD8);
  }

  return result;
}

unint64_t sub_9FFEC()
{
  result = qword_22ADE0;
  if (!qword_22ADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ADE0);
  }

  return result;
}

unint64_t sub_A0044()
{
  result = qword_22ADE8;
  if (!qword_22ADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ADE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScorableAttributeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3D)
  {
    goto LABEL_17;
  }

  if (a2 + 195 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 195) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 195;
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

      return (*a1 | (v4 << 8)) - 195;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 195;
    }
  }

LABEL_17:
  v6 = (*a1 & 0x3C | (*a1 >> 6)) ^ 0x3F;
  if (v6 >= 0x3C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ScorableAttributeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 195 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 195) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3D)
  {
    v4 = 0;
  }

  if (a2 > 0x3C)
  {
    v5 = ((a2 - 61) >> 8) + 1;
    *result = a2 - 61;
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
    *result = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_A01F0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1;
  v3 = v1 >> 6;
  v4 = (v1 & 3 | (4 * (v1 >> 6))) - 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

_BYTE *sub_A0224(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 6);
  }

  else
  {
    *result = ((a2 - 2) & 3 | (((a2 - 2) >> 2) << 6)) ^ 0x80;
  }

  return result;
}

uint64_t sub_A0274(uint64_t a1)
{
  if ((*(a1 + 48) >> 1) > 0x80000000)
  {
    return -(*(a1 + 48) >> 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_A02A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 561))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

void sub_A02F0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 552) = 0;
    *(a1 + 248) = 0u;
    *(a1 + 232) = 0u;
    *(a1 + 216) = 0u;
    *(a1 + 200) = 0u;
    *(a1 + 184) = 0u;
    *(a1 + 168) = 0u;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 560) = 0;
    *(a1 + 536) = 0u;
    *(a1 + 520) = 0u;
    *(a1 + 504) = 0u;
    *(a1 + 488) = 0u;
    *(a1 + 472) = 0u;
    *(a1 + 456) = 0u;
    *(a1 + 440) = 0u;
    *(a1 + 424) = 0u;
    *(a1 + 408) = 0u;
    *(a1 + 392) = 0u;
    *(a1 + 376) = 0u;
    *(a1 + 360) = 0u;
    *(a1 + 344) = 0u;
    *(a1 + 328) = 0u;
    *(a1 + 312) = 0u;
    *(a1 + 296) = 0u;
    *(a1 + 280) = 0u;
    *(a1 + 264) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 561) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return;
      }

LABEL_8:
      *a1 = 0;
      *(a1 + 8) = 2 * -a2;
      bzero((a1 + 16), 0x221uLL);
      return;
    }

    *(a1 + 561) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_A03D0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 80);
  v3 = *(result + 40) & 1;
  v4 = *(result + 544) | (a2 << 61);
  *(result + 8) &= 1uLL;
  *(result + 40) = v3;
  *(result + 80) = v2;
  *(result + 544) = v4;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ScorableAttribute.AuthorAndMediaType(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_A0438(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_A0480(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ScorableAttributeType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ScorableAttributeType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_A0698()
{
  result = qword_22ADF0;
  if (!qword_22ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ADF0);
  }

  return result;
}

unint64_t sub_A06F0()
{
  result = qword_22ADF8;
  if (!qword_22ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22ADF8);
  }

  return result;
}

unint64_t sub_A0748()
{
  result = qword_22AE00;
  if (!qword_22AE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE00);
  }

  return result;
}

unint64_t sub_A07A0()
{
  result = qword_22AE08;
  if (!qword_22AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE08);
  }

  return result;
}

unint64_t sub_A07F8()
{
  result = qword_22AE10;
  if (!qword_22AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE10);
  }

  return result;
}

unint64_t sub_A0850()
{
  result = qword_22AE18;
  if (!qword_22AE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE18);
  }

  return result;
}

unint64_t sub_A08A8()
{
  result = qword_22AE20;
  if (!qword_22AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE20);
  }

  return result;
}

unint64_t sub_A0900()
{
  result = qword_22AE28;
  if (!qword_22AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE28);
  }

  return result;
}

unint64_t sub_A0958()
{
  result = qword_22AE30;
  if (!qword_22AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE30);
  }

  return result;
}

unint64_t sub_A09B0()
{
  result = qword_22AE38;
  if (!qword_22AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE38);
  }

  return result;
}

unint64_t sub_A0A08()
{
  result = qword_22AE40;
  if (!qword_22AE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE40);
  }

  return result;
}

unint64_t sub_A0A60()
{
  result = qword_22AE48;
  if (!qword_22AE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE48);
  }

  return result;
}

unint64_t sub_A0AB8()
{
  result = qword_22AE50;
  if (!qword_22AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE50);
  }

  return result;
}

unint64_t sub_A0B10()
{
  result = qword_22AE58;
  if (!qword_22AE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE58);
  }

  return result;
}

unint64_t sub_A0B68()
{
  result = qword_22AE60;
  if (!qword_22AE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE60);
  }

  return result;
}

unint64_t sub_A0BC0()
{
  result = qword_22AE68;
  if (!qword_22AE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE68);
  }

  return result;
}

unint64_t sub_A0C18()
{
  result = qword_22AE70;
  if (!qword_22AE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE70);
  }

  return result;
}

unint64_t sub_A0C70()
{
  result = qword_22AE78;
  if (!qword_22AE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE78);
  }

  return result;
}

unint64_t sub_A0CC8()
{
  result = qword_22AE80;
  if (!qword_22AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AE80);
  }

  return result;
}

Swift::Int sub_A0D1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_2B0C(&qword_22AE88, &qword_1C9130);
    v3 = sub_1B5054();
    v4 = 0;
    v5 = v3 + 56;
    v22 = v1;
    v23 = a1 + 32;
    while (1)
    {
      v6 = *(v23 + v4++);
      v7 = *(v3 + 40);
      sub_1B57F4();
      sub_1B4884();

      result = sub_1B5844();
      v9 = ~(-1 << *(v3 + 32));
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v5 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) != 0)
      {
        do
        {
          if (*(*(v3 + 48) + v10))
          {
            if (*(*(v3 + 48) + v10) == 1)
            {
              v14 = 0x6F6F626F69647561;
              v15 = 0xE90000000000006BLL;
              if (!v6)
              {
                goto LABEL_20;
              }
            }

            else
            {
              v15 = 0xE500000000000000;
              v14 = 0x646578696DLL;
              if (!v6)
              {
LABEL_20:
                v17 = 0xE500000000000000;
                if (v14 != 0x6B6F6F6265)
                {
                  goto LABEL_22;
                }

                goto LABEL_21;
              }
            }
          }

          else
          {
            v15 = 0xE500000000000000;
            v14 = 0x6B6F6F6265;
            if (!v6)
            {
              goto LABEL_20;
            }
          }

          if (v6 == 1)
          {
            v16 = 0x6F6F626F69647561;
          }

          else
          {
            v16 = 0x646578696DLL;
          }

          if (v6 == 1)
          {
            v17 = 0xE90000000000006BLL;
          }

          else
          {
            v17 = 0xE500000000000000;
          }

          if (v14 != v16)
          {
            goto LABEL_22;
          }

LABEL_21:
          if (v15 == v17)
          {

            goto LABEL_4;
          }

LABEL_22:
          v18 = sub_1B5604();

          if (v18)
          {
            goto LABEL_4;
          }

          v10 = (v10 + 1) & v9;
          v11 = v10 >> 6;
          v12 = *(v5 + 8 * (v10 >> 6));
          v13 = 1 << v10;
        }

        while ((v12 & (1 << v10)) != 0);
      }

      *(v5 + 8 * v11) = v12 | v13;
      *(*(v3 + 48) + v10) = v6;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        break;
      }

      *(v3 + 16) = v21;
LABEL_4:
      if (v4 == v22)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_A0FA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1B41C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_A0FE8(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(v2 + 16);
  v6 = *a2;
  v4 = sub_9CFD0(&v6);
  return sub_493C8(v4);
}

uint64_t sub_A1034(uint64_t result)
{
  v1 = *(result + 80);
  v2 = *(result + 40) & 1;
  v3 = *(result + 544) | 0x2000000000000000;
  *(result + 8) &= 1uLL;
  *(result + 40) = v2;
  *(result + 80) = v1;
  *(result + 544) = v3;
  return result;
}

uint64_t sub_A1064(uint64_t result)
{
  v1 = *(result + 80);
  v2 = *(result + 40) & 1;
  v3 = *(result + 544) | 0x4000000000000000;
  *(result + 8) &= 1uLL;
  *(result + 40) = v2;
  *(result + 80) = v1;
  *(result + 544) = v3;
  return result;
}

uint64_t sub_A1094(uint64_t result)
{
  v1 = *(result + 80);
  v2 = *(result + 40) & 1;
  v3 = *(result + 544) | 0xA000000000000000;
  *(result + 8) &= 1uLL;
  *(result + 40) = v2;
  *(result + 80) = v1;
  *(result + 544) = v3;
  return result;
}

uint64_t sub_A10C8(uint64_t result)
{
  v1 = *(result + 80);
  v2 = *(result + 544);
  v3 = *(result + 40) & 1;
  *(result + 8) &= 1uLL;
  *(result + 40) = v3;
  *(result + 80) = v1;
  *(result + 544) = v2;
  return result;
}

uint64_t sub_A10F4(uint64_t a1)
{
  v2 = sub_2B0C(&qword_22AED0, &unk_1C30F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_A118C(uint64_t a1)
{
  v2 = sub_A13A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_A11C8(uint64_t a1)
{
  v2 = sub_A13A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Author.Rationale.encode(to:)(void *a1)
{
  v3 = sub_2B0C(&qword_22AED8, &unk_1C3100);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_2698(a1, a1[3]);
  sub_A13A8();

  sub_1B5884();
  v11[1] = v8;
  sub_2B0C(&qword_22AA48, &qword_1CD280);
  sub_90C68(&qword_22AA50, sub_90C14);
  sub_1B5544();

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_A13A8()
{
  result = qword_22AEE0;
  if (!qword_22AEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AEE0);
  }

  return result;
}

uint64_t Author.Rationale.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22AEE8, &qword_1C3110);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_A13A8();
  sub_1B5864();
  if (!v2)
  {
    sub_2B0C(&qword_22AA48, &qword_1CD280);
    sub_90C68(&qword_22AA68, sub_90CE0);
    sub_1B5404();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return sub_2BF8(a1);
}

uint64_t sub_A15E8()
{
  if (*v0)
  {
    result = 0x6C616E6F69746172;
  }

  else
  {
    result = 0x444965726F7473;
  }

  *v0;
  return result;
}

uint64_t sub_A1628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444965726F7473 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B5604() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C616E6F69746172 && a2 == 0xE900000000000065)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B5604();

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

uint64_t sub_A170C(uint64_t a1)
{
  v2 = sub_A1920();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_A1748(uint64_t a1)
{
  v2 = sub_A1920();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t Author.encode(to:)(void *a1)
{
  v4 = sub_2B0C(&qword_22AEF0, &qword_1C3118);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[0] = v1[1];
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_A1920();
  sub_1B5884();
  v14 = 0;
  sub_1B5574();
  if (!v2)
  {
    v12[1] = v12[0];
    v13 = 1;
    sub_A1974();

    sub_1B54B4();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_A1920()
{
  result = qword_22AEF8;
  if (!qword_22AEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AEF8);
  }

  return result;
}

unint64_t sub_A1974()
{
  result = qword_22AF00;
  if (!qword_22AF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AF00);
  }

  return result;
}

uint64_t Author.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_2B0C(&qword_22AF08, &qword_1C3120);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v14 - v8;
  v10 = a1[4];
  sub_2698(a1, a1[3]);
  sub_A1920();
  sub_1B5864();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1B5434();
    v15 = 1;
    sub_A1B84();
    sub_1B5374();
    (*(v6 + 8))(v9, v5);
    v12 = v14[1];
    *a2 = v11;
    a2[1] = v12;
  }

  return sub_2BF8(a1);
}

unint64_t sub_A1B84()
{
  result = qword_22AF10;
  if (!qword_22AF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AF10);
  }

  return result;
}

unint64_t sub_A1C4C()
{
  result = qword_22AF18;
  if (!qword_22AF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AF18);
  }

  return result;
}

unint64_t sub_A1CA4()
{
  result = qword_22AF20;
  if (!qword_22AF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AF20);
  }

  return result;
}

unint64_t sub_A1CFC()
{
  result = qword_22AF28;
  if (!qword_22AF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AF28);
  }

  return result;
}

unint64_t sub_A1D54()
{
  result = qword_22AF30;
  if (!qword_22AF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AF30);
  }

  return result;
}

unint64_t sub_A1DAC()
{
  result = qword_22AF38;
  if (!qword_22AF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AF38);
  }

  return result;
}

unint64_t sub_A1E04()
{
  result = qword_22AF40;
  if (!qword_22AF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AF40);
  }

  return result;
}

unint64_t sub_A1E58@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = 1 << *(*a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  while (v8)
  {
    v12 = v8;
LABEL_10:
    v8 = (v12 - 1) & v12;
    if (*(a2 + 16))
    {
      result = sub_3A9D8(*(*(v5 + 48) + (__clz(__rbit64(v12)) | (v11 << 6))));
      if (v14)
      {
        v15 = *(*(a2 + 56) + 8 * result);

        result = sub_494D8(v16);
      }
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      *a3 = _swiftEmptySetSingleton;
      return result;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v11;
    if (v12)
    {
      v11 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_A1F9C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return _swift_task_switch(sub_A1FC0, 0, 0);
}

uint64_t sub_A1FC0()
{
  v1 = v0[2];
  v2 = *(v0[3] + 16);

  v3 = sub_A2140(v2, v1);

  v4 = v0[1];

  return v4(v3);
}

unint64_t sub_A2054(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 40);
  sub_1B57F4();
  sub_1B4884();

  sub_1B5844();
  v7 = -1 << *(a3 + 32);
  result = sub_1B4FA4();
  *(a3 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a3 + 48) + result) = a1 & 1;
  *(*(a3 + 56) + 8 * result) = a2;
  ++*(a3 + 16);
  return result;
}

uint64_t sub_A2140(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = &_swiftEmptyDictionarySingleton;
  v6 = a1 + 64;
  v5 = *(a1 + 64);
  v24 = &_swiftEmptyDictionarySingleton;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v5;
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v19 = result;
  if (v9)
  {
LABEL_10:
    while (1)
    {
      v14 = __clz(__rbit64(v9)) | (v12 << 6);
      v15 = *(*(v3 + 56) + 8 * v14);
      v22 = *(*(v3 + 48) + v14);
      v23 = v15;

      sub_A1E58(&v23, a2, &v21);
      if (v2)
      {
        break;
      }

      v9 &= v9 - 1;
      v16 = v21;
      if (v21)
      {
        v17 = v22;
        v18 = v4[2];
        if (v4[3] <= v18)
        {
          sub_17D530(v18 + 1, 1);
          v4 = v24;
        }

        sub_A2054(v17, v16, v4);

        v3 = v19;
        if (!v9)
        {
          goto LABEL_6;
        }
      }

      else
      {

        if (!v9)
        {
          goto LABEL_6;
        }
      }
    }

    return v4;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {

        return v4;
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        v12 = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t RecommendationSource.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, BOOL *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_213188;
  v8._object = a2;
  v6 = sub_1B52E4(v5, v8);

  *a3 = v6 != 0;
  return result;
}

unint64_t sub_A2350()
{
  result = qword_22AFE8;
  if (!qword_22AFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AFE8);
  }

  return result;
}

Swift::Int sub_A23A4()
{
  sub_1B57F4();
  sub_1B4884();
  return sub_1B5844();
}

Swift::Int sub_A2400()
{
  sub_1B57F4();
  sub_1B4884();
  return sub_1B5844();
}

uint64_t sub_A2448@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_2131C0;
  v7._object = v3;
  v5 = sub_1B52E4(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_A2570()
{
  result = qword_22AFF0;
  if (!qword_22AFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_22AFF0);
  }

  return result;
}

void sub_A25C4(uint64_t a1)
{
  v1 = a1;
  v32 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1B4FF4();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v38 = _swiftEmptyArrayStorage;
    sub_3741C(0, v2 & ~(v2 >> 63), 0);
    v33 = _swiftEmptyArrayStorage;
    if (v32)
    {
      v3 = sub_1B4FB4();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_1B4F84();
      v4 = *(v1 + 36);
    }

    v35 = v3;
    v36 = v4;
    v37 = v32 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v30 = v1 + 56;
      v29 = v1 + 64;
      v31 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_36;
        }

        v10 = v35;
        v9 = v36;
        v11 = v37;
        v12 = v1;
        sub_2C44(v35, v36, v37, v1);
        v14 = v13;
        v15 = [v13 authorID];

        if ((v15 & 0x8000000000000000) != 0)
        {
          goto LABEL_37;
        }

        v16 = v33;
        v38 = v33;
        v18 = v33[2];
        v17 = v33[3];
        if (v18 >= v17 >> 1)
        {
          sub_3741C((v17 > 1), v18 + 1, 1);
          v16 = v38;
        }

        v16[2] = v18 + 1;
        v16[v18 + 4] = v15;
        v33 = v16;
        if (v32)
        {
          if (!v11)
          {
            goto LABEL_42;
          }

          v1 = v12;
          if (sub_1B4FC4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v31;
          sub_2B0C(&qword_22B2E8, &qword_1C3990);
          v7 = sub_1B4CD4();
          sub_1B5014();
          v7(v34, 0);
          if (v6 == v31)
          {
LABEL_33:
            sub_42FF0(v35, v36, v37);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_43;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v1 = v12;
          v19 = 1 << *(v12 + 32);
          if (v10 >= v19)
          {
            goto LABEL_38;
          }

          v20 = v10 >> 6;
          v21 = *(v30 + 8 * (v10 >> 6));
          if (((v21 >> v10) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v12 + 36) != v9)
          {
            goto LABEL_40;
          }

          v22 = v21 & (-2 << (v10 & 0x3F));
          if (v22)
          {
            v19 = __clz(__rbit64(v22)) | v10 & 0x7FFFFFFFFFFFFFC0;
            v2 = v31;
          }

          else
          {
            v23 = v20 << 6;
            v24 = v20 + 1;
            v25 = (v29 + 8 * v20);
            v2 = v31;
            while (v24 < (v19 + 63) >> 6)
            {
              v27 = *v25++;
              v26 = v27;
              v23 += 64;
              ++v24;
              if (v27)
              {
                sub_42FF0(v10, v9, 0);
                v19 = __clz(__rbit64(v26)) + v23;
                goto LABEL_32;
              }
            }

            sub_42FF0(v10, v9, 0);
          }

LABEL_32:
          v28 = *(v1 + 36);
          v35 = v19;
          v36 = v28;
          v37 = 0;
          if (v6 == v2)
          {
            goto LABEL_33;
          }
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t sub_A2920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v11 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = v24 - v13;
  sub_43050(a1, v24 - v13, &qword_2296C0, &qword_1C3800);
  v15 = sub_1B4C54();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_42F48(v14, &qword_2296C0, &qword_1C3800);
    if (*(a3 + 16))
    {
LABEL_3:
      v17 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = sub_1B4BC4();
      v20 = v19;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B4C44();
    (*(v16 + 8))(v14, v15);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
  v20 = 0;
LABEL_6:
  v21 = *v8;
  sub_2B0C(a4, a5);
  v22 = (v20 | v18);
  if (v20 | v18)
  {
    v25[0] = 0;
    v25[1] = 0;
    v22 = v25;
    v25[2] = v18;
    v25[3] = v20;
  }

  v24[1] = 1;
  v24[2] = v22;
  v24[3] = v21;
  swift_task_create();
}

Swift::Int sub_A2B24(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_56B44(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B5584(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1B4B34();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_B49A8(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_A2C58()
{
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_A2C94()
{
  type metadata accessor for RequestListActor.ActorType();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_22AFF8 = v0;
  return result;
}

double sub_A2D10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_43050(a1, v17, &qword_229018, &qword_1BB420);
  if (v17[3])
  {
    sub_2B0C(&qword_22B228, &qword_1C37F0);
    if (swift_dynamicCast())
    {
      v3 = [objc_allocWithZone(NSMutableArray) init];
      v4 = *(v16 + 16);
      if (v4)
      {
        v5 = (v16 + 32);
        do
        {
          v6 = *v5++;
          v7 = [objc_allocWithZone(NSNumber) initWithInteger:v6];
          [v3 addObject:v7];

          --v4;
        }

        while (v4);
      }

      v8 = objc_opt_self();
      v17[0] = 0;
      v9 = [v8 archivedDataWithRootObject:v3 requiringSecureCoding:1 error:v17];
      v10 = v17[0];
      if (v9)
      {
        v11 = sub_1B3F94();
        v13 = v12;

        *(a2 + 24) = &type metadata for Data;
        *a2 = v11;
        *(a2 + 8) = v13;
        return result;
      }

      v15 = v10;
      sub_1B3E64();

      swift_willThrow();
    }
  }

  else
  {
    sub_42F48(v17, &qword_229018, &qword_1BB420);
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

void sub_A2F20(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = sub_1B3E74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_43050(a1, v32, &qword_229018, &qword_1BB420);
  if (!v33)
  {
    sub_42F48(v32, &qword_229018, &qword_1BB420);
    goto LABEL_6;
  }

  sub_B7CB0(0, &qword_22B1F8, NSData_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    *a2 = 0u;
    *(a2 + 1) = 0u;
    return;
  }

  v25 = v5;
  v26 = a2;
  v9 = v30;
  sub_B7CB0(0, &qword_22B200, NSKeyedUnarchiver_ptr);
  sub_2B0C(&qword_22B208, &qword_1C37E8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1BFC80;
  *(v10 + 32) = sub_B7CB0(0, &qword_22B210, NSArray_ptr);
  *(v10 + 40) = sub_B7CB0(0, &qword_22B218, NSNumber_ptr);
  v11 = v9;
  v12 = sub_1B3F94();
  v14 = v13;

  sub_1B4DC4();
  sub_41670(v12, v14);

  sub_43050(v32, &v30, &qword_229018, &qword_1BB420);
  if (!v31)
  {
    sub_42F48(v32, &qword_229018, &qword_1BB420);

    sub_42F48(&v30, &qword_229018, &qword_1BB420);
LABEL_4:
    v15 = v26;
    *v26 = 0u;
    *(v15 + 1) = 0u;
    return;
  }

  v16 = v11;
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_42F48(v32, &qword_229018, &qword_1BB420);

    goto LABEL_4;
  }

  v24 = *&v29[0];
  sub_1B4E54();
  sub_B9010(&qword_22B220, &type metadata accessor for NSFastEnumerationIterator);
  sub_1B4ED4();
  if (v31)
  {
    v17 = _swiftEmptyArrayStorage;
    do
    {
      sub_430B8(&v30, v29);
      sub_430C8(v29, v28);
      if (swift_dynamicCast())
      {
        v18 = v27;
        v19 = [v27 integerValue];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_3369C(0, *(v17 + 2) + 1, 1, v17);
        }

        v21 = *(v17 + 2);
        v20 = *(v17 + 3);
        if (v21 >= v20 >> 1)
        {
          v17 = sub_3369C((v20 > 1), v21 + 1, 1, v17);
        }

        sub_2BF8(v29);
        *(v17 + 2) = v21 + 1;
        *&v17[8 * v21 + 32] = v19;
        v16 = v11;
      }

      else
      {
        sub_2BF8(v29);
      }

      sub_1B4ED4();
    }

    while (v31);
  }

  else
  {
    v17 = _swiftEmptyArrayStorage;
  }

  (*(v25 + 8))(v8, v4);
  v22 = sub_2B0C(&qword_22B228, &qword_1C37F0);
  v23 = v26;
  v26[3] = v22;

  *v23 = v17;
  sub_42F48(v32, &qword_229018, &qword_1BB420);
}

id sub_A3408(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, _OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    sub_1B4F34();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v16, 0, sizeof(v16));
    v7 = a1;
  }

  a4(v17, v16);

  sub_42F48(v16, &qword_229018, &qword_1BB420);
  v8 = v18;
  if (v18)
  {
    v9 = sub_2698(v17, v18);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    __chkstk_darwin(v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = sub_1B55F4();
    (*(v10 + 8))(v13, v8);
    sub_2BF8(v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

NSString sub_A3598()
{
  result = sub_1B4794();
  qword_260BF8 = result;
  return result;
}

id sub_A3610()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenrePathTransformer();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A3648()
{
  v0 = sub_1B4644();
  sub_5EA10(v0, qword_260C00);
  sub_50E58(v0, qword_260C00);
  return sub_1B4634();
}

uint64_t MetadataCache.__allocating_init(bookFetchService:genreFetchService:maxItemCount:subfolder:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v10 = swift_allocObject();
  MetadataCache.init(bookFetchService:genreFetchService:maxItemCount:subfolder:)(a1, a2, a3, a4, a5);
  return v10;
}

void *MetadataCache.init(bookFetchService:genreFetchService:maxItemCount:subfolder:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v75 = a4;
  v11 = *v5;
  v78 = sub_1B4DE4();
  v82 = *(v78 - 8);
  v12 = *(v82 + 64);
  v13 = __chkstk_darwin(v78);
  v74[7] = v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = v74 - v15;
  v85 = sub_1B3F34();
  v84 = *(v85 - 8);
  v17 = *(v84 + 64);
  v18 = __chkstk_darwin(v85);
  v74[8] = v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = v74 - v21;
  v23 = __chkstk_darwin(v20);
  v83 = v74 - v24;
  v25 = __chkstk_darwin(v23);
  v81 = v74 - v26;
  __chkstk_darwin(v25);
  v28 = v74 - v27;
  v6[2] = 25;
  v6[3] = 0;
  v29 = (v6 + 3);
  *(v6 + 3) = 0u;
  v76 = (v6 + 6);
  v6[4] = 0;
  *(v6 + 4) = 0u;
  v6[10] = 0x417E133800000000;
  v6[11] = &_swiftEmptyDictionarySingleton;
  v6[12] = &_swiftEmptyDictionarySingleton;
  v80 = a1;
  sub_404C4(a1, (v6 + 13));
  v79 = a2;
  sub_404C4(a2, (v6 + 18));
  v6[5] = a3;
  v30 = [objc_allocWithZone(type metadata accessor for GenrePathTransformer()) init];
  v31 = objc_opt_self();
  if (qword_2282B8 != -1)
  {
    v73 = v31;
    swift_once();
    v31 = v73;
  }

  [v31 setValueTransformer:v30 forName:qword_260BF8];

  v77 = v11;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v86 = type metadata accessor for CachedPersonalizationBookMetadata();
  sub_2B0C(&qword_22B000, &qword_1C3610);
  sub_1B4834();
  v34 = sub_1B4794();

  v35 = sub_1B4794();
  v36 = [v33 pathForResource:v34 ofType:v35];

  v37 = v85;
  if (v36)
  {
    v38 = [objc_opt_self() fileURLWithPath:v36 isDirectory:1];

    sub_1B3EE4();
    v39 = objc_allocWithZone(NSManagedObjectModel);
    sub_1B3EB4(v40);
    v42 = v41;
    v43 = [v39 initWithContentsOfURL:v41];

    (*(v84 + 8))(v28, v37);
    v44 = *v29;
    *v29 = v43;
  }

  v45 = *v29;
  v46 = v83;
  if (!*v29)
  {

    v63 = v6[4];
    if (!v63)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v74[6] = v22;
  v47 = objc_allocWithZone(NSPersistentStoreCoordinator);
  v48 = v45;
  v49 = [v47 initWithManagedObjectModel:v48];
  v50 = v6[4];
  v6[4] = v49;
  v51 = v49;

  v52 = v6[8];
  v53 = v75;
  v6[7] = v75;
  v6[8] = a5;

  v54 = v81;
  static MetadataCache.persistentStoreDirectory(subfolder:)(v53, a5, v81);

  v56 = v6[7];
  v55 = v6[8];

  v57 = v56;
  v58 = v51;
  static MetadataCache.recreatePersistentStoreDirectory(subfolder:)(v57, v55);

  sub_1B3EC4();
  sub_2B0C(&qword_22B008, &qword_1C3618);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BFC80;
  *(inited + 32) = sub_1B47C4();
  *(inited + 40) = v60;
  *(inited + 48) = 1;
  *(inited + 56) = sub_1B47C4();
  *(inited + 64) = v61;
  *(inited + 72) = 1;
  v62 = sub_130760(inited);
  swift_setDeallocating();
  sub_2B0C(&qword_22B010, &qword_1C3620);
  swift_arrayDestroy();
  sub_1B4DD4();
  sub_A4AD4(v62);
  v64 = sub_1B4E34();
  (*(v82 + 8))(v16, v78);

  v65 = *(v84 + 8);
  v66 = v85;
  v65(v46, v85);
  v65(v54, v66);

  v63 = v6[4];
  if (v63)
  {
LABEL_10:
    v67 = objc_allocWithZone(NSManagedObjectContext);
    v68 = v63;
    v69 = [v67 initWithConcurrencyType:1];
    [v69 setUndoManager:0];
    v70 = *v76;
    *v76 = v69;
    v71 = v69;

    [v71 setPersistentStoreCoordinator:v68];
  }

LABEL_11:
  sub_2BF8(v79);
  sub_2BF8(v80);
  return v6;
}

uint64_t static MetadataCache.persistentStoreDirectory(subfolder:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22[0] = a1;
  v6 = sub_1B3F34();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v22 - v12;
  v14 = [objc_opt_self() defaultManager];
  v15 = [v14 URLsForDirectory:13 inDomains:1];

  v16 = sub_1B4AC4();
  v17 = *(v16 + 16);
  if (!v17)
  {
    goto LABEL_10;
  }

  if (v17 > *(v16 + 16))
  {
    __break(1u);
LABEL_10:

    __break(1u);
    return result;
  }

  (*(v7 + 16))(v13, v16 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * (v17 - 1), v6);

  v18 = *(v7 + 32);
  v18(a3, v13, v6);
  v22[1] = v3;
  sub_2B0C(&qword_22B020, &unk_1C3628);
  sub_1B4834();
  sub_1B3EC4();

  v19 = *(v7 + 8);
  v19(a3, v6);
  v18(a3, v11, v6);
  result = v22[0];
  if (a2)
  {
    v21 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v21 = v22[0] & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      sub_1B3EC4();
      v19(a3, v6);
      return (v18)(a3, v11, v6);
    }
  }

  return result;
}

uint64_t static MetadataCache.recreatePersistentStoreDirectory(subfolder:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B3F34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static MetadataCache.persistentStoreDirectory(subfolder:)(a1, a2, v8);
  v9 = [objc_opt_self() defaultManager];
  sub_1B3EB4(v10);
  v12 = v11;
  v18 = 0;
  LODWORD(a1) = [v9 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v18];

  if (a1)
  {
    v13 = *(v5 + 8);
    v14 = v18;
    return v13(v8, v4);
  }

  else
  {
    v16 = v18;
    sub_1B3E64();

    swift_willThrow();
    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_A4AD4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2B0C(&qword_22B2F0, &qword_1C3998);
    v2 = sub_1B52B4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_430B8(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_430B8(v31, v32);
    result = sub_1B5024(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_430B8(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t MetadataCache.deinit()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);

    sub_2B0C(&qword_229560, &unk_1BFC70);
    sub_1B4C64();
  }

  v2 = *(v0 + 64);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  v5 = *(v0 + 96);

  sub_2BF8((v0 + 104));
  sub_2BF8((v0 + 144));
  return v0;
}

uint64_t MetadataCache.__deallocating_deinit()
{
  MetadataCache.deinit();

  return swift_deallocClassInstance();
}

uint64_t MetadataCache.fetchMetadataFor(bookIDs:audiobookIDs:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return _swift_task_switch(sub_A4E98, 0, 0);
}

uint64_t sub_A4E98()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 48);
  *(v0 + 88) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    v5 = *(v0 + 64);
    *(v4 + 16) = v3;
    *(v4 + 24) = v5;
    *(v4 + 40) = _swiftEmptyArrayStorage;
    *(v4 + 48) = v1;
    v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    v8 = sub_2B0C(&qword_22B028, &qword_1C3640);
    *v7 = v0;
    v7[1] = sub_A50E0;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 56, 0, 0, 0xD00000000000003BLL, 0x80000000001D6B80, sub_B5470, v4, v8);
  }

  else
  {
    sub_404C4(v1 + 104, v0 + 16);
    v9 = *(v0 + 40);
    v10 = *(v0 + 48);
    sub_2698((v0 + 16), v9);
    v11 = *(v10 + 8);
    v17 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    *(v0 + 120) = v13;
    *v13 = v0;
    v13[1] = sub_A52D0;
    v15 = *(v0 + 64);
    v14 = *(v0 + 72);

    return v17(v15, v14, v9, v10);
  }
}

uint64_t sub_A50E0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_A5268;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_A51FC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_A51FC()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_A5268()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[14];
  v4 = v0[1];

  return v4();
}

uint64_t sub_A52D0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_A5460;
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = sub_A53F8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_A53F8()
{
  sub_2BF8(v0 + 2);
  v1 = v0[17];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_A5460()
{
  sub_2BF8(v0 + 2);
  v1 = v0[16];
  v2 = v0[1];

  return v2();
}

uint64_t MetadataCache.fetchMetadataFor(storeIDs:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(sub_A54E4, 0, 0);
}

uint64_t sub_A54E4()
{
  v1 = v0[9];
  v2 = *(v1 + 48);
  v0[10] = v2;
  if (v2)
  {
    v3 = v0[8];
    v4 = v2;
    v5 = swift_task_alloc();
    v0[11] = v5;
    v5[2] = v4;
    v5[3] = _swiftEmptyArrayStorage;
    v5[4] = _swiftEmptyArrayStorage;
    v5[5] = v3;
    v5[6] = v1;
    v6 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v7 = swift_task_alloc();
    v0[12] = v7;
    v8 = sub_2B0C(&qword_22B028, &qword_1C3640);
    *v7 = v0;
    v7[1] = sub_A572C;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD00000000000003BLL, 0x80000000001D6B80, sub_B9578, v5, v8);
  }

  else
  {
    sub_404C4(v1 + 104, (v0 + 2));
    v9 = v0[5];
    v10 = v0[6];
    sub_2698(v0 + 2, v9);
    v11 = *(v10 + 16);
    v16 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = sub_A591C;
    v14 = v0[8];

    return v16(v14, v9, v10);
  }
}

uint64_t sub_A572C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_A58B4;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_A5848;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_A5848()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_A58B4()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[13];
  v4 = v0[1];

  return v4();
}

uint64_t sub_A591C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_B9564;
  }

  else
  {
    *(v4 + 128) = a1;
    v7 = sub_B9560;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t MetadataCache.cacheEntryCount()()
{
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  return _swift_task_switch(sub_A5A8C, 0, 0);
}

uint64_t sub_A5A8C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_A5B84;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000011, 0x80000000001D6BC0, sub_B5484, v3, &type metadata for UInt);
}

uint64_t sub_A5B84()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v4 = *v0;

  return _swift_task_switch(sub_A5C9C, 0, 0);
}

void sub_A5CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2B0C(&qword_22B288, &qword_1D1D30);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  v11 = *(a2 + 48);
  if (v11)
  {
    (*(v7 + 16))(v10, a1, v6);
    v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    (*(v7 + 32))(v13 + v12, v10, v6);
    *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
    aBlock[4] = sub_B7618;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_19C6B4;
    aBlock[3] = &unk_21ACC8;
    v14 = _Block_copy(aBlock);
    v15 = v11;

    [v15 performBlock:v14];
    _Block_release(v14);
  }

  else
  {
    aBlock[0] = 0;
    sub_1B4BE4();
  }
}

void sub_A5EB0()
{
  type metadata accessor for CachedPersonalizationBookMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v1)
  {
    sub_1B47C4();
    v1 = sub_1B4794();
  }

  v2 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v1];

  if (sub_1B4E14() < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2B0C(&qword_22B288, &qword_1D1D30);
    sub_1B4BE4();
  }
}

void sub_A6080(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v11 = sub_2B0C(&qword_22B290, &qword_1C38C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - v14;
  (*(v12 + 16))(&v20 - v14, a1, v11);
  v16 = (*(v12 + 80) + 56) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a3;
  *(v17 + 3) = a4;
  *(v17 + 4) = a5;
  *(v17 + 5) = a2;
  *(v17 + 6) = v21;
  (*(v12 + 32))(&v17[v16], v15, v11);
  aBlock[4] = sub_B77A4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19C6B4;
  aBlock[3] = &unk_21AD18;
  v18 = _Block_copy(aBlock);

  v19 = a2;

  [v19 performBlock:v18];
  _Block_release(v18);
}

void sub_A6284(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v126 = a6;
  v130 = a5;
  v127 = sub_2B0C(&qword_22B290, &qword_1C38C0);
  v123 = *(v127 - 8);
  v120 = *(v123 + 64);
  __chkstk_darwin(v127);
  v122 = &v120 - v7;
  v8 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v121 = &v120 - v10;

  v12 = sub_40854(v11);

  v156 = v12;

  v14 = sub_40854(v13);

  v155 = v14;

  v16 = sub_40854(v15);

  v154 = v16;

  v17 = sub_1ABCA4(v14, v12);
  v18 = sub_1ABCA4(v16, v17);
  v153 = v18;
  type metadata accessor for CachedPersonalizationBookMetadata();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v20 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v20)
  {
    sub_1B47C4();
    v20 = sub_1B4794();
  }

  v21 = objc_allocWithZone(NSFetchRequest);
  v22 = [v21 initWithEntityName:{v20, v120}];

  sub_2B0C(&qword_22B238, &unk_1C3808);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1BFC80;
  *(v23 + 56) = &type metadata for String;
  *(v23 + 32) = 0x44497465737361;
  *(v23 + 40) = 0xE700000000000000;
  *(v23 + 88) = sub_2B0C(&qword_2292C8, &unk_1BCB00);
  *(v23 + 64) = v18;
  v24 = sub_1B4794();
  isa = sub_1B4AA4().super.isa;

  v26 = [objc_opt_self() predicateWithFormat:v24 argumentArray:isa];

  [v22 setPredicate:v26];
  v125 = v22;
  v27 = sub_1B4E24();
  v124 = a4;
  v30 = v27;
  v141 = _swiftEmptyArrayStorage;
  v28 = v27 >> 62;
  if (v27 >> 62)
  {
    goto LABEL_125;
  }

  v39 = *(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8));
LABEL_20:

  v40 = _swiftEmptyArrayStorage;
  p_align = &stru_226FE8.align;
  if (v39)
  {
    v133 = v28;
    v28 = 0;
    v40 = v30 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v42 = sub_1B50B4();
      }

      else
      {
        if (v28 >= *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_72;
        }

        v42 = *(v30 + 8 * v28 + 32);
      }

      v43 = v42;
      v44 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        goto LABEL_71;
      }

      if ([v42 *(p_align + 254)])
      {
        sub_1B5174();
        v45 = v141[2];
        sub_1B51A4();
        sub_1B51B4();
        sub_1B5184();
        p_align = (&stru_226FE8 + 24);
      }

      else
      {
      }

      ++v28;
    }

    while (v44 != v39);
    v38 = v141;
    v28 = v133;
    v40 = _swiftEmptyArrayStorage;
  }

  else
  {
    v38 = _swiftEmptyArrayStorage;
  }

  v141 = _swiftEmptyArrayStorage;
  if (v28)
  {
    v28 = sub_1B5284();
    if (!v28)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v28 = *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8));
    if (!v28)
    {
      goto LABEL_48;
    }
  }

  v133 = v38;
  v40 = 0;
  do
  {
    if ((v30 & 0xC000000000000001) != 0)
    {
      v47 = sub_1B50B4();
    }

    else
    {
      if (v40 >= *(&dword_10 + (v30 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_74;
      }

      v47 = *(v30 + 8 * v40 + 32);
    }

    v48 = v47;
    v49 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      goto LABEL_73;
    }

    if ([v47 *(p_align + 254)])
    {
    }

    else
    {
      sub_1B5174();
      v46 = v141[2];
      sub_1B51A4();
      sub_1B51B4();
      sub_1B5184();
      p_align = &stru_226FE8.align;
    }

    ++v40;
  }

  while (v49 != v28);
  v40 = v141;
  v38 = v133;
LABEL_48:

  if (v38 >> 62)
  {
    v132 = sub_1B5284();
    v133 = v38;
    if (!v132)
    {
      goto LABEL_50;
    }

LABEL_5:
    v28 = 0;
    v29 = v38 & 0xC000000000000001;
    v30 = v38 & 0xFFFFFFFFFFFFFF8;
    v31 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v29)
      {
        v32 = sub_1B50B4();
      }

      else
      {
        if (v28 >= *(v30 + 16))
        {
          goto LABEL_68;
        }

        v32 = *(v38 + 8 * v28 + 32);
      }

      v33 = v32;
      v34 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      v35 = [v32 assetID];

      if ((v35 & 0x8000000000000000) != 0)
      {
        goto LABEL_69;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_33008(0, *(v31 + 2) + 1, 1, v31);
      }

      v37 = *(v31 + 2);
      v36 = *(v31 + 3);
      if (v37 >= v36 >> 1)
      {
        v31 = sub_33008((v36 > 1), v37 + 1, 1, v31);
      }

      *(v31 + 2) = v37 + 1;
      *&v31[8 * v37 + 32] = v35;
      ++v28;
      v38 = v133;
      if (v34 == v132)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    v50 = sub_1B5284();
    if (v50)
    {
      goto LABEL_53;
    }

    goto LABEL_76;
  }

  v132 = *(&dword_10 + (v38 & 0xFFFFFFFFFFFFFF8));
  v133 = v38;
  if (v132)
  {
    goto LABEL_5;
  }

LABEL_50:
  v31 = _swiftEmptyArrayStorage;
LABEL_51:
  v28 = sub_40854(v31);

  if (v40 >> 62)
  {
    goto LABEL_75;
  }

  v50 = *(&dword_10 + (v40 & 0xFFFFFFFFFFFFFF8));
  if (v50)
  {
LABEL_53:
    if (v50 < 1)
    {
      goto LABEL_124;
    }

    v51 = 0;
    v30 = &stru_226FE8.align;
    do
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v53 = sub_1B50B4();
      }

      else
      {
        v53 = *(v40 + 8 * v51 + 32);
      }

      v54 = v53;
      v55 = [v53 mediaType];
      if (v55 == &dword_0 + 1)
      {
        v57 = [v54 assetID];
        if (v57 < 0)
        {
          goto LABEL_70;
        }

        v52 = v57;
      }

      else
      {
        if (v55 != &dword_0 + 2)
        {
          goto LABEL_57;
        }

        v56 = [v54 assetID];
        if (v56 < 0)
        {
          goto LABEL_70;
        }

        v52 = v56;
      }

      sub_111CE0(&v141, v52);
      sub_E000C(v52);
LABEL_57:
      ++v51;
    }

    while (v50 != v51);
  }

LABEL_76:

  sub_DFDD8(v28);
  sub_DFDD8(v28);
  sub_DFDD8(v28);
  sub_DFDD8(v28);

  if (v132)
  {
    v58 = 0;
    v59 = v133;
    v128 = v133 & 0xFFFFFFFFFFFFFF8;
    v129 = v133 & 0xC000000000000001;
    v60 = &_swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v129)
      {
        v69 = sub_1B50B4();
      }

      else
      {
        if (v58 >= *(v128 + 16))
        {
          goto LABEL_120;
        }

        v69 = *(v59 + 8 * v58 + 32);
      }

      v28 = v69;
      if (__OFADD__(v58, 1))
      {
        __break(1u);
LABEL_120:
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
        v39 = sub_1B5284();
        goto LABEL_20;
      }

      v70 = [v69 assetID];
      if (v70 < 0)
      {
        goto LABEL_121;
      }

      v71 = v70;
      v131 = v58 + 1;
      sub_A6FC8(v28, &v141);
      v30 = v141;
      v72 = v142;
      v150 = v145;
      v151 = v146;
      v152 = v147;
      v148 = v143;
      v149 = v144;
      if (!v142)
      {
        v82 = sub_43124(v71);
        v30 = v131;
        if (v83)
        {
          v84 = v82;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v140 = v60;
          v68 = v132;
          v59 = v133;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1864C4();
            v60 = v140;
          }

          v86 = v60[7] + 88 * v84;
          v87 = *(v86 + 16);
          v134 = *v86;
          v135 = v87;
          v89 = *(v86 + 48);
          v88 = *(v86 + 64);
          v90 = *(v86 + 32);
          v139 = *(v86 + 80);
          v137 = v89;
          v138 = v88;
          v136 = v90;
          sub_85554(&v134);
          sub_53018(v84, v60);
        }

        else
        {

          v68 = v132;
          v59 = v133;
        }

        goto LABEL_80;
      }

      v73 = swift_isUniquelyReferenced_nonNull_native();
      v140 = v60;
      v74 = sub_43124(v71);
      v76 = v60[2];
      v77 = (v75 & 1) == 0;
      v78 = __OFADD__(v76, v77);
      v79 = v76 + v77;
      if (v78)
      {
        goto LABEL_122;
      }

      v80 = v75;
      if (v60[3] < v79)
      {
        break;
      }

      if (v73)
      {
        goto LABEL_96;
      }

      v96 = v74;
      sub_1864C4();
      v74 = v96;
      if ((v80 & 1) == 0)
      {
LABEL_97:
        v60 = v140;
        v140[(v74 >> 6) + 8] |= 1 << v74;
        *(v60[6] + 8 * v74) = v71;
        v91 = v60[7] + 88 * v74;
        *v91 = v30;
        *(v91 + 8) = v72;
        *(v91 + 80) = v152;
        v92 = v151;
        *(v91 + 48) = v150;
        *(v91 + 64) = v92;
        v93 = v149;
        *(v91 + 16) = v148;
        *(v91 + 32) = v93;

        v94 = v60[2];
        v78 = __OFADD__(v94, 1);
        v95 = v94 + 1;
        if (v78)
        {
          goto LABEL_123;
        }

        v60[2] = v95;
        goto LABEL_79;
      }

LABEL_78:
      v60 = v140;
      v61 = v140[7] + 88 * v74;
      v62 = *(v61 + 16);
      v134 = *v61;
      v135 = v62;
      v64 = *(v61 + 48);
      v63 = *(v61 + 64);
      v65 = *(v61 + 32);
      v139 = *(v61 + 80);
      v137 = v64;
      v138 = v63;
      v136 = v65;
      *v61 = v30;
      *(v61 + 8) = v72;
      v66 = v151;
      *(v61 + 48) = v150;
      *(v61 + 64) = v66;
      *(v61 + 80) = v152;
      v67 = v149;
      *(v61 + 16) = v148;
      *(v61 + 32) = v67;
      sub_85554(&v134);

LABEL_79:
      v68 = v132;
      v59 = v133;
      v30 = v131;
LABEL_80:
      ++v58;
      if (v30 == v68)
      {
        goto LABEL_104;
      }
    }

    sub_17FD40(v79, v73);
    v74 = sub_43124(v71);
    if ((v80 & 1) != (v81 & 1))
    {
      sub_1B5784();
      __break(1u);
      return;
    }

LABEL_96:
    if ((v80 & 1) == 0)
    {
      goto LABEL_97;
    }

    goto LABEL_78;
  }

  v60 = &_swiftEmptyDictionarySingleton;
LABEL_104:

  v97 = *(v153 + 16);

  if (!v97)
  {
    goto LABEL_108;
  }

  v98 = v156;
  v99 = *(v156 + 16);
  if (v99)
  {
    v133 = sub_3503C(*(v156 + 16), 0);
    v100 = sub_3F09C(&v141, (v133 + 32), v99, v98);
    sub_417B8();
    if (v100 != v99)
    {
      __break(1u);
LABEL_108:

      v141 = v60;
      sub_1B4BE4();

      return;
    }
  }

  else
  {

    v133 = _swiftEmptyArrayStorage;
  }

  v101 = v155;
  v102 = *(v155 + 16);
  if (v102)
  {
    v103 = sub_3503C(*(v155 + 16), 0);
    v104 = sub_3F09C(&v141, v103 + 4, v102, v101);
    sub_417B8();
    if (v104 == v102)
    {
      goto LABEL_114;
    }

    __break(1u);
  }

  v103 = _swiftEmptyArrayStorage;
LABEL_114:
  v105 = v154;
  v106 = *(v154 + 16);
  v132 = v103;
  if (!v106)
  {
LABEL_117:

    v107 = _swiftEmptyArrayStorage;
    goto LABEL_118;
  }

  v107 = sub_3503C(v106, 0);
  v108 = sub_3F09C(&v141, v107 + 4, v106, v105);
  sub_417B8();
  if (v108 != v106)
  {
    __break(1u);
    goto LABEL_117;
  }

LABEL_118:
  v109 = sub_1B4C54();
  v110 = v121;
  (*(*(v109 - 8) + 56))(v121, 1, 1, v109);
  v111 = v122;
  v112 = v123;
  v113 = v127;
  (*(v123 + 16))(v122, v126, v127);
  v114 = (*(v112 + 80) + 80) & ~*(v112 + 80);
  v115 = swift_allocObject();
  *(v115 + 2) = 0;
  *(v115 + 3) = 0;
  v116 = v132;
  v117 = v133;
  *(v115 + 4) = v130;
  *(v115 + 5) = v117;
  *(v115 + 6) = v116;
  *(v115 + 7) = v107;
  v118 = v124;
  *(v115 + 8) = v124;
  *(v115 + 9) = v60;
  (*(v112 + 32))(&v115[v114], v111, v113);

  v119 = v118;
  sub_16AB6C(0, 0, v110, &unk_1C38D0, v115);
}

void sub_A6FC8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B3E74();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v23[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 mediaType];
  if (v9 == &dword_0 + 2)
  {
    v10 = 1;
  }

  else
  {
    if (v9 != &dword_0 + 1)
    {
      v10 = 0;
      v12 = 0;
      v18 = 0;
      v16 = 0;
      v17 = 0;
      v21 = 0;
      v19 = 0uLL;
      v20 = 0uLL;
      goto LABEL_12;
    }

    v10 = 0;
  }

  v11 = [a1 leafGenres];
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v13 = v11;
    v27 = _swiftEmptyArrayStorage;
    sub_1B4E44();
    sub_B9010(&qword_22B220, &type metadata accessor for NSFastEnumerationIterator);
    sub_1B4ED4();
    while (*(&v25 + 1))
    {
      sub_430B8(&v24, v23);
      sub_B4558(&v27, v23);
      sub_2BF8(v23);
      sub_1B4ED4();
    }

    v14 = *(v5 + 8);
    v5 += 8;
    v14(v8, v4);
    v12 = v27;
  }

  v15 = [a1 mappedAssetID];
  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = v15;
    v17 = v15 == 0;
    v18 = sub_B478C(a1);
    sub_B48AC(a1, &v24);
    v19 = v24;
    v20 = v25;
    v21 = v26;
LABEL_12:
    *a2 = v10;
    *(a2 + 7) = 0;
    *(a2 + 5) = 0;
    *(a2 + 1) = 0;
    *(a2 + 8) = v12;
    *(a2 + 16) = v18;
    *(a2 + 24) = v16;
    *(a2 + 32) = v17;
    *(a2 + 39) = 0;
    *(a2 + 37) = 0;
    *(a2 + 33) = 0;
    *(a2 + 40) = v19;
    *(a2 + 56) = v20;
    *(a2 + 72) = v21;
    *(a2 + 79) = 0;
    *(a2 + 77) = 0;
    *(a2 + 73) = 0;
    *(a2 + 80) = 0;
    return;
  }

  __break(1u);

  sub_2BF8(v23);
  (*(v5 + 8))(v8, v4);

  __break(1u);
}

uint64_t sub_A7288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = v16;
  v8[5] = v17;
  v13 = swift_task_alloc();
  v8[6] = v13;
  *v13 = v8;
  v13[1] = sub_A7358;

  return sub_A7608(a5, a6, a7, a8);
}

uint64_t sub_A7358(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_A7580;
  }

  else
  {
    *(v4 + 64) = a1;
    v7 = sub_A7480;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_A7480()
{
  v9 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v3;
  sub_B56A0(v1, sub_18E388, 0, isUniquelyReferenced_nonNull_native, &v8);

  if (v2)
  {
  }

  else
  {
    v6 = v0[5];
    v0[3] = v8;
    sub_2B0C(&qword_22B290, &qword_1C38C0);
    sub_1B4BE4();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_A7580()
{
  v1 = v0[5];
  v0[2] = v0[7];
  sub_2B0C(&qword_22B290, &qword_1C38C0);
  sub_1B4BD4();
  v2 = v0[1];

  return v2();
}

uint64_t sub_A7608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v5[9] = *v4;
  return _swift_task_switch(sub_A7658, 0, 0);
}

uint64_t sub_A7658()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = sub_2B0C(&qword_22B2A0, &qword_1C38E8);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  v5 = sub_2B0C(&qword_22B028, &qword_1C3640);
  v6 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_A7780;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v3, v5, 0, 0, &unk_1C38F8, v4, v3);
}

uint64_t sub_A7780()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_A7AE0;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_A789C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_A789C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = v0[2];
  v0[13] = v4;
  v5 = swift_task_alloc();
  v0[14] = v5;
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = v2;
  v5[5] = v1;
  v6 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_A79AC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 3, 0, 0, 0xD000000000000015, 0x80000000001D6F30, sub_B7B18, v5, &type metadata for Int);
}

uint64_t sub_A79AC()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v4 = *v0;

  return _swift_task_switch(sub_A7AC4, 0, 0);
}

uint64_t sub_A7AE0()
{
  v1 = v0[10];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t MetadataCache.fetchMetadataFor(genreIDs:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(sub_A7B64, 0, 0);
}

uint64_t sub_A7B64()
{
  v1 = v0[9];
  v2 = *(v1 + 48);
  v0[10] = v2;
  if (v2)
  {
    v3 = v0[8];
    v4 = swift_task_alloc();
    v0[11] = v4;
    v4[2] = v2;
    v4[3] = v1;
    v4[4] = v3;
    v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v6 = v2;
    v7 = swift_task_alloc();
    v0[12] = v7;
    v8 = sub_2B0C(&qword_22B030, &qword_1C3660);
    *v7 = v0;
    v7[1] = sub_A7DA0;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD00000000000001BLL, 0x80000000001D6BE0, sub_B548C, v4, v8);
  }

  else
  {
    sub_404C4(v1 + 144, (v0 + 2));
    v9 = v0[5];
    v10 = v0[6];
    sub_2698(v0 + 2, v9);
    v11 = *(v10 + 8);
    v16 = (v11 + *v11);
    v12 = v11[1];
    v13 = swift_task_alloc();
    v0[14] = v13;
    *v13 = v0;
    v13[1] = sub_A7F24;
    v14 = v0[8];

    return v16(v14, v9, v10);
  }
}

uint64_t sub_A7DA0()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_A8118;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_A7EBC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_A7EBC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_A7F24(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v6 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v7 = sub_A80B4;
  }

  else
  {
    *(v4 + 128) = a1;
    v7 = sub_A804C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_A804C()
{
  sub_2BF8(v0 + 2);
  v1 = v0[16];
  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_A80B4()
{
  sub_2BF8(v0 + 2);
  v1 = v0[15];
  v2 = v0[1];

  return v2();
}

uint64_t sub_A8118()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 104);
  v3 = *(v0 + 8);

  return v3();
}

void sub_A8184(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2B0C(&qword_22B230, &qword_1C37F8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = a3;
  *(v14 + 3) = a2;
  *(v14 + 4) = a4;
  (*(v9 + 32))(&v14[v13], v12, v8);
  aBlock[4] = sub_B5614;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19C6B4;
  aBlock[3] = &unk_21AB88;
  v15 = _Block_copy(aBlock);

  v16 = a2;

  [v16 performBlock:v15];
  _Block_release(v15);
}

void sub_A8368(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v83 = a4;
  v80 = a1;
  v84 = sub_2B0C(&qword_22B230, &qword_1C37F8);
  v79 = *(v84 - 8);
  v76 = *(v79 + 64);
  __chkstk_darwin(v84);
  v78 = &v72 - v6;
  v7 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v77 = &v72 - v9;
  sub_B5A00(a2);
  v86 = a3;
  type metadata accessor for CachedPersonalizationBookMetadataGenre();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  v11 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v11)
  {
    sub_1B47C4();
    v11 = sub_1B4794();
  }

  v12 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v11];

  sub_2B0C(&qword_22B238, &unk_1C3808);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1BFC80;
  *(v13 + 56) = &type metadata for String;
  *(v13 + 32) = 0x444965726E6567;
  *(v13 + 40) = 0xE700000000000000;
  *(v13 + 88) = sub_2B0C(&qword_2292C8, &unk_1BCB00);
  *(v13 + 64) = a3;

  v14 = sub_1B4794();
  isa = sub_1B4AA4().super.isa;

  v16 = [objc_opt_self() predicateWithFormat:v14 argumentArray:isa];

  [v12 setPredicate:v16];
  v81 = a2;
  v82 = v12;
  v17 = sub_1B4E24();
  v29 = v17;
  v75 = 0;
  if (!(v17 >> 62))
  {
    v18 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
    v19 = v17 & 0xC000000000000001;
    if (!v18)
    {
      goto LABEL_20;
    }

LABEL_5:
    v20 = 0;
    v21 = v29 & 0xFFFFFFFFFFFFFF8;
    v22 = _swiftEmptyArrayStorage;
    while (1)
    {
      if (v19)
      {
        v23 = sub_1B50B4();
      }

      else
      {
        if (v20 >= *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_59;
        }

        v23 = *(v29 + 8 * v20 + 32);
      }

      v24 = v23;
      v25 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v26 = [v23 genreID];

      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_60;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_33008(0, *(v22 + 2) + 1, 1, v22);
      }

      v28 = *(v22 + 2);
      v27 = *(v22 + 3);
      if (v28 >= v27 >> 1)
      {
        v22 = sub_33008((v27 > 1), v28 + 1, 1, v22);
      }

      *(v22 + 2) = v28 + 1;
      *&v22[8 * v28 + 32] = v26;
      ++v20;
      if (v25 == v18)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v18 = sub_1B5284();
  v19 = v29 & 0xC000000000000001;
  if (v18)
  {
    goto LABEL_5;
  }

LABEL_20:
  v21 = v29 & 0xFFFFFFFFFFFFFF8;
  v22 = _swiftEmptyArrayStorage;
LABEL_21:
  v30 = sub_40854(v22);

  sub_DFDD8(v30);

  if (v18)
  {
    v31 = &_swiftEmptyDictionarySingleton;
    for (i = 0; ; i = v35)
    {
      while (1)
      {
        if (v19)
        {
          v33 = sub_1B50B4();
        }

        else
        {
          if (i >= *(v21 + 16))
          {
            goto LABEL_62;
          }

          v33 = *(v29 + 8 * i + 32);
        }

        v34 = v33;
        v35 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_61;
        }

        v36 = [v33 genreID];
        if (v36 < 0)
        {
          goto LABEL_63;
        }

        v37 = v36;
        v38 = [v34 path];
        if (v38)
        {
          break;
        }

LABEL_38:
        v48 = sub_43124(v37);
        if (v49)
        {
          v50 = v48;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v85 = v31;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_186684();
            v31 = v85;
          }

          v52 = *(v31[7] + 16 * v50 + 8);

          sub_5318C(v50, v31);

          goto LABEL_44;
        }

        ++i;
        if (v35 == v18)
        {
          goto LABEL_54;
        }
      }

      v39 = v38;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        goto LABEL_38;
      }

      v85 = 0;
      sub_1B4AB4();

      v40 = v85;
      if (!v85)
      {
        goto LABEL_38;
      }

      v74 = [v34 genreID];
      if ((v74 & 0x8000000000000000) != 0)
      {
        goto LABEL_65;
      }

      v73 = swift_isUniquelyReferenced_nonNull_native();
      v85 = v31;
      v42 = sub_43124(v37);
      v43 = v31[2];
      v44 = (v41 & 1) == 0;
      v45 = v43 + v44;
      if (__OFADD__(v43, v44))
      {
        goto LABEL_66;
      }

      if (v31[3] >= v45)
      {
        if (v73)
        {
          v31 = v85;
          if (v41)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v72 = v41;
          sub_186684();
          v31 = v85;
          if (v72)
          {
            goto LABEL_48;
          }
        }
      }

      else
      {
        v72 = v41;
        sub_180090(v45, v73);
        v46 = sub_43124(v37);
        if ((v72 & 1) != (v47 & 1))
        {
          goto LABEL_68;
        }

        v42 = v46;
        v31 = v85;
        if (v72)
        {
LABEL_48:
          v53 = (v31[7] + 16 * v42);
          v54 = v53[1];
          *v53 = v74;
          v53[1] = v40;

          goto LABEL_44;
        }
      }

      v31[(v42 >> 6) + 8] |= 1 << v42;
      *(v31[6] + 8 * v42) = v37;
      v55 = (v31[7] + 16 * v42);
      *v55 = v74;
      v55[1] = v40;

      v56 = v31[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_67;
      }

      v31[2] = v58;
LABEL_44:
      if (v35 == v18)
      {
        goto LABEL_54;
      }
    }
  }

  v31 = &_swiftEmptyDictionarySingleton;
LABEL_54:

  v59 = v86;
  v60 = *(v86 + 16);
  if (!v60)
  {

    v85 = v31;
    sub_1B4BE4();

    return;
  }

  v61 = sub_3503C(*(v86 + 16), 0);
  v62 = sub_3F09C(&v85, v61 + 4, v60, v59);
  sub_417B8();
  if (v62 == v60)
  {
    v63 = sub_1B4C54();
    v64 = v77;
    (*(*(v63 - 8) + 56))(v77, 1, 1, v63);
    v66 = v78;
    v65 = v79;
    v67 = v84;
    (*(v79 + 16))(v78, v83, v84);
    v68 = (*(v65 + 80) + 64) & ~*(v65 + 80);
    v69 = swift_allocObject();
    *(v69 + 2) = 0;
    *(v69 + 3) = 0;
    *(v69 + 4) = v80;
    *(v69 + 5) = v61;
    v70 = v81;
    *(v69 + 6) = v81;
    *(v69 + 7) = v31;
    (*(v65 + 32))(&v69[v68], v66, v67);

    v71 = v70;
    sub_16AB6C(0, 0, v64, &unk_1C3820, v69);

    return;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  sub_1B5784();
  __break(1u);
}

uint64_t sub_A8BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v11 = swift_task_alloc();
  v8[6] = v11;
  *v11 = v8;
  v11[1] = sub_A8C64;

  return sub_A8F14(a5, a6);
}

uint64_t sub_A8C64(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v7 = sub_A8E8C;
  }

  else
  {
    *(v4 + 64) = a1;
    v7 = sub_A8D8C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_A8D8C()
{
  v9 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[4];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = v3;
  sub_B60C4(v1, sub_B5458, 0, isUniquelyReferenced_nonNull_native, &v8);

  if (v2)
  {
  }

  else
  {
    v6 = v0[5];
    v0[3] = v8;
    sub_2B0C(&qword_22B230, &qword_1C37F8);
    sub_1B4BE4();
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_A8E8C()
{
  v1 = v0[5];
  v0[2] = v0[7];
  sub_2B0C(&qword_22B230, &qword_1C37F8);
  sub_1B4BD4();
  v2 = v0[1];

  return v2();
}

uint64_t sub_A8F14(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = *v2;
  return _swift_task_switch(sub_A8F60, 0, 0);
}

uint64_t sub_A8F60()
{
  v1 = v0[6];
  v2 = v0[4];
  v3 = sub_2B0C(&qword_22B240, &qword_1C3830);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  v5 = sub_2B0C(&qword_22B030, &qword_1C3660);
  v6 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  v7[1] = sub_A9080;

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v3, v5, 0, 0, &unk_1C3840, v4, v3);
}

uint64_t sub_A9080()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_A93E0;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_A919C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_A919C()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[2];
  v0[11] = v3;
  v4 = swift_task_alloc();
  v0[12] = v4;
  v4[2] = v2;
  v4[3] = v3;
  v4[4] = v1;
  v5 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_A92AC;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 3, 0, 0, 0xD00000000000001ALL, 0x80000000001D6E00, sub_B63EC, v4, &type metadata for Int);
}

uint64_t sub_A92AC()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return _swift_task_switch(sub_A93C4, 0, 0);
}

uint64_t sub_A93E0()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_A9444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[46] = a5;
  v6[47] = a6;
  v6[44] = a3;
  v6[45] = a4;
  v6[42] = a1;
  v6[43] = a2;
  v7 = sub_2B0C(&qword_22B2A0, &qword_1C38E8);
  v6[48] = v7;
  v8 = *(v7 - 8);
  v6[49] = v8;
  v9 = *(v8 + 64) + 15;
  v6[50] = swift_task_alloc();
  v10 = type metadata accessor for MetadataCache.MetadataRequest.ContinuationRecord(0);
  v6[51] = v10;
  v11 = *(v10 - 8);
  v6[52] = v11;
  v12 = *(v11 + 64) + 15;
  v6[53] = swift_task_alloc();
  v13 = *(*(sub_2B0C(&qword_22B2B8, &qword_1C3908) - 8) + 64) + 15;
  v6[54] = swift_task_alloc();
  v14 = sub_2B0C(&qword_22B2C0, &qword_1C3910);
  v6[55] = v14;
  v15 = *(v14 - 8);
  v6[56] = v15;
  v16 = *(v15 + 64) + 15;
  v6[57] = swift_task_alloc();
  v17 = *(*(sub_2B0C(&qword_2296C0, &qword_1C3800) - 8) + 64) + 15;
  v6[58] = swift_task_alloc();
  v18 = *(*(sub_2B0C(&qword_22B2C8, &qword_1C3918) - 8) + 64) + 15;
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v19 = sub_1B40F4();
  v6[61] = v19;
  v20 = *(v19 - 8);
  v6[62] = v20;
  v6[63] = *(v20 + 64);
  v6[64] = swift_task_alloc();
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  if (qword_2282B0 != -1)
  {
    swift_once();
  }

  v21 = qword_22AFF8;
  v6[71] = qword_22AFF8;

  return _swift_task_switch(sub_A9774, v21, 0);
}

uint64_t sub_A9774()
{
  v206 = v0;
  v1 = v0[70];
  v3 = v0[62];
  v2 = v0[63];
  v4 = v0[46];
  v5 = v0[47];
  v6 = v0[44];
  v7 = v0[45];
  sub_1B40E4();

  v9 = sub_40854(v8);

  v0[35] = v9;

  v11 = sub_40854(v10);

  v0[36] = v11;

  v13 = sub_40854(v12);

  v0[37] = v13;
  v197 = v0;
  swift_beginAccess();
  v14 = *(v5 + 88);
  v15 = *(v14 + 64);
  v162 = v14 + 64;
  v16 = -1;
  v17 = -1 << *(v14 + 32);
  if (-v17 < 64)
  {
    v16 = ~(-1 << -v17);
  }

  v18 = v16 & v15;
  v160 = v5;
  v161 = (63 - v17) >> 6;
  v195 = v3;
  v19 = (v3 + 32);
  v187 = v2 + 7;
  v163 = *(v5 + 88);
  v164 = (v3 + 8);

  v20 = 0;
  v196 = (v3 + 32);
  if (!v18)
  {
LABEL_5:
    if (v161 <= v20 + 1)
    {
      v23 = v20 + 1;
    }

    else
    {
      v23 = v161;
    }

    v24 = v23 - 1;
    v22 = v197;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_36;
      }

      if (v21 >= v161)
      {
        v76 = v197[59];
        v77 = sub_2B0C(&qword_22B2D0, &qword_1C3920);
        (*(*(v77 - 8) + 56))(v76, 1, 1, v77);
        v18 = 0;
        goto LABEL_13;
      }

      v18 = *(v162 + 8 * v21);
      ++v20;
      if (v18)
      {
        goto LABEL_12;
      }
    }
  }

  while (1)
  {
    v21 = v20;
    v22 = v197;
LABEL_12:
    v25 = v22[69];
    v26 = v22[61];
    v27 = v22[59];
    v28 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v29 = v28 | (v21 << 6);
    (*(v195 + 16))(v25, *(v163 + 48) + *(v195 + 72) * v29, v26);
    v30 = *(v163 + 56);
    v31 = sub_2B0C(&qword_22B2D0, &qword_1C3920);
    v32 = *(v31 + 48);
    v199 = *(v30 + 16 * v29);
    v19 = v196;
    v22 = v197;
    (*(v195 + 32))(v27, v25, v26);
    *(v27 + v32) = v199;
    (*(*(v31 - 8) + 56))(v27, 0, 1, v31);

    v24 = v21;
LABEL_13:
    v33 = v22[60];
    sub_5ED18(v22[59], v33, &qword_22B2C8, &qword_1C3918);
    v34 = sub_2B0C(&qword_22B2D0, &qword_1C3920);
    if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
    {
      break;
    }

    v35 = v22[61];
    v36 = (v22[60] + *(v34 + 48));
    v37 = *v36;
    v188 = v36[1];
    v192 = v24;
    v198 = *v19;
    (*v19)(v22[68]);
    v38 = v22[35];

    v39 = sub_C6A04(v38, v37);
    v40 = v22[36];

    v41 = sub_C6A04(v40, v37);

    v43 = sub_1ABCA4(v42, v39);
    if (*(v43 + 16))
    {
      v44 = v22[69];
      v166 = v22[68];
      v167 = v22[70];
      v45 = v22[67];
      v165 = v45;
      v46 = v22[61];
      v47 = v39;
      v177 = v39;
      v181 = v43;
      v48 = v22[58];
      v168 = v22[63];
      v171 = v48;
      v175 = v22[47];
      v184 = v22[43];
      sub_DFDD8(v47);
      sub_DFDD8(v41);
      v49 = sub_1B4C54();
      (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
      v50 = *(v195 + 16);
      v50(v44, v166, v46);
      v51 = v45;
      v52 = v46;
      v50(v51, v167, v46);
      v53 = *(v195 + 80);
      v54 = (v53 + 40) & ~v53;
      v55 = (v168 + v53 + v54) & ~v53;
      v169 = (v55 + v187) & 0xFFFFFFFFFFFFFFF8;
      v56 = (v169 + 15) & 0xFFFFFFFFFFFFFFF8;
      v57 = (v56 + 15) & 0xFFFFFFFFFFFFFFF8;
      v58 = swift_allocObject();
      v58[2] = 0;
      v58[3] = 0;
      v58[4] = v175;
      (v198)(v58 + v54, v44, v52);
      (v198)(v58 + v55, v165, v52);
      *(v58 + v169) = v181;
      *(v58 + v56) = v177;
      v22 = v197;
      *(v58 + v57) = v41;

      sub_A2920(v171, &unk_1C3958, v58, &qword_22B2A0, &qword_1C38E8);
      sub_42F48(v171, &qword_2296C0, &qword_1C3800);
    }

    else
    {
    }

    v59 = v22[46];

    v60 = sub_B5188(v59, v37);

    if (*(v60 + 16))
    {
      v61 = v22[70];
      v62 = v22[69];
      v63 = v22[68];
      v64 = v22[67];
      v172 = v64;
      v65 = v22[63];
      v66 = v22;
      v67 = v22[61];
      v68 = v66[58];
      v176 = v65;
      v178 = v66[47];
      v189 = v66[43];
      sub_DFDD8(v60);
      v69 = sub_1B4C54();
      (*(*(v69 - 8) + 56))(v68, 1, 1, v69);
      v70 = *(v195 + 16);
      v70(v62, v63, v67);
      v70(v64, v61, v67);
      v71 = *(v195 + 80);
      v72 = (v71 + 40) & ~v71;
      v73 = (v176 + v71 + v72) & ~v71;
      v74 = swift_allocObject();
      v74[2] = 0;
      v74[3] = 0;
      v74[4] = v178;
      v75 = v74 + v72;
      v19 = v196;
      (v198)(v75, v62, v67);
      (v198)(v74 + v73, v172, v67);
      *(v74 + ((v73 + v187) & 0xFFFFFFFFFFFFFFF8)) = v60;

      sub_A2920(v68, &unk_1C3968, v74, &qword_22B2A0, &qword_1C38E8);
      sub_42F48(v68, &qword_2296C0, &qword_1C3800);
      (*(v195 + 8))(v63, v67);
      v20 = v192;
    }

    else
    {
      (*v164)(v22[68], v22[61]);

      v20 = v192;
      v19 = v196;
    }

    if (!v18)
    {
      goto LABEL_5;
    }
  }

  v78 = v22[35];
  v79 = v22[36];
  v22[72] = v78;
  v80 = *(v78 + 16);
  v22[73] = v79;
  if (v80 || *(v79 + 16))
  {
    v81 = v22[66];
    sub_1B40E4();
    swift_bridgeObjectRetain_n();

    v83 = sub_1ABCA4(v82, v78);
    swift_beginAccess();

    v84 = *(v160 + 88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v204 = *(v160 + 88);
    *(v160 + 88) = 0x8000000000000000;
    sub_54350(v83, _swiftEmptyArrayStorage, v81, isUniquelyReferenced_nonNull_native);
    *(v160 + 88) = v204;
    swift_endAccess();
    v86 = *(v78 + 16);
    if (v86)
    {
      v87 = sub_3503C(*(v78 + 16), 0);
      v88 = sub_3F09C(&v204, v87 + 4, v86, v78);
      sub_417B8();
      if (v88 == v86)
      {
LABEL_29:
        v204 = v87;

        sub_A2B24(&v204);

        v198 = v204;
        v89 = *(v79 + 16);
        if (v89)
        {
          v90 = sub_3503C(*(v79 + 16), 0);
          v91 = sub_3F09C(&v204, v90 + 4, v89, v79);

          v92 = sub_417B8();
          if (v91 != v89)
          {
            __break(1u);
            goto LABEL_53;
          }

          v22 = v197;
        }

        else
        {
          v90 = _swiftEmptyArrayStorage;
        }

        v201 = v90;
        sub_A2B24(&v201);
        v97 = v22[70];
        v98 = v22[66];
        v99 = v22[61];
        v19 = v201;
        v204 = 0;
        v205 = 0xE000000000000000;
        sub_1B5084(61);
        v201 = v204;
        v202 = v205;
        v208._object = 0x80000000001D6E20;
        v208._countAndFlagsBits = 0xD000000000000010;
        sub_1B48D4(v208);
        sub_B9010(&qword_22A520, &type metadata accessor for UUID);
        v209._countAndFlagsBits = sub_1B5594();
        sub_1B48D4(v209);

        v210._countAndFlagsBits = 0xD00000000000001ELL;
        v210._object = 0x80000000001D6F50;
        sub_1B48D4(v210);
        v211._countAndFlagsBits = sub_1B5594();
        sub_1B48D4(v211);

        v212._countAndFlagsBits = 0x73444920726F6620;
        v212._object = 0xE900000000000020;
        sub_1B48D4(v212);
        v100 = *(v83 + 16);
        if (!v100)
        {
          goto LABEL_37;
        }

        v101 = sub_3503C(*(v83 + 16), 0);
        v102 = sub_3F09C(&v204, v101 + 4, v100, v83);

        sub_417B8();
        if (v102 == v100)
        {
LABEL_38:
          v203 = v101;
          sub_A2B24(&v203);
          v103 = v197[70];
          v104 = v197[69];
          v173 = v197[67];
          v182 = v197[66];
          v185 = v197[63];
          v105 = v197[61];
          v179 = v197[58];
          v190 = v197[47];
          v193 = v197[43];

          v106 = sub_1B4AD4();
          v108 = v107;

          v213._countAndFlagsBits = v106;
          v213._object = v108;
          sub_1B48D4(v213);

          v109 = sub_1B4C54();
          (*(*(v109 - 8) + 56))(v179, 1, 1, v109);
          v110 = *(v195 + 16);
          v111 = v104;
          v110(v104, v182, v105);
          v110(v173, v103, v105);
          v112 = *(v195 + 80);
          v113 = (v112 + 32) & ~v112;
          v114 = (v113 + v187) & 0xFFFFFFFFFFFFFFF8;
          v115 = (v114 + 15) & 0xFFFFFFFFFFFFFFF8;
          v116 = (v115 + 15) & 0xFFFFFFFFFFFFFFF8;
          v117 = (v112 + v116 + 8) & ~v112;
          v118 = swift_allocObject();
          *(v118 + 16) = 0;
          *(v118 + 24) = 0;
          v119 = *(v195 + 32);
          v119(v118 + v113, v111, v105);
          *(v118 + v114) = v190;
          *(v118 + v115) = v198;
          *(v118 + v116) = v19;
          v22 = v197;
          v119(v118 + v117, v173, v105);

          sub_A2920(v179, &unk_1C3930, v118, &qword_22B2A0, &qword_1C38E8);
          sub_42F48(v179, &qword_2296C0, &qword_1C3800);
          (*(v195 + 8))(v182, v105);
          goto LABEL_39;
        }

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        v101 = _swiftEmptyArrayStorage;
        goto LABEL_38;
      }

      __break(1u);
    }

    v87 = _swiftEmptyArrayStorage;
    goto LABEL_29;
  }

LABEL_39:
  v120 = v22[37];
  v22[74] = v120;
  if (!*(v120 + 16))
  {
    goto LABEL_43;
  }

  v121 = v22[65];
  sub_1B40E4();
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  v122 = *(v160 + 88);
  v123 = swift_isUniquelyReferenced_nonNull_native();
  v204 = *(v160 + 88);
  *(v160 + 88) = 0x8000000000000000;
  sub_54350(v120, _swiftEmptyArrayStorage, v121, v123);
  *(v160 + 88) = v204;
  swift_endAccess();
  v124 = *(v120 + 16);
  if (v124)
  {
    v125 = sub_3503C(*(v120 + 16), 0);
    v126 = sub_3F09C(&v204, v125 + 4, v124, v120);
    sub_417B8();
    if (v126 != v124)
    {
      __break(1u);
      goto LABEL_43;
    }
  }

  else
  {

    v125 = _swiftEmptyArrayStorage;
  }

  v204 = v125;

  sub_A2B24(&v204);
  v135 = v22[70];
  v136 = v22[65];
  v137 = v22[61];

  v200 = v204;
  v204 = 0;
  v205 = 0xE000000000000000;
  sub_1B5084(63);
  v201 = v204;
  v202 = v205;
  v214._countAndFlagsBits = 0xD000000000000010;
  v214._object = 0x80000000001D6E20;
  sub_1B48D4(v214);
  sub_B9010(&qword_22A520, &type metadata accessor for UUID);
  v215._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v215);

  v216._countAndFlagsBits = 0xD000000000000020;
  v216._object = 0x80000000001D6E40;
  sub_1B48D4(v216);
  v217._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v217);

  v218._countAndFlagsBits = 0x73444920726F6620;
  v218._object = 0xE900000000000020;
  sub_1B48D4(v218);
  v138 = *(v120 + 16);
  if (!v138)
  {
    v139 = _swiftEmptyArrayStorage;
    v141 = v197;
    goto LABEL_51;
  }

  v139 = sub_3503C(*(v120 + 16), 0);
  v140 = sub_3F09C(&v204, v139 + 4, v138, v120);

  v92 = sub_417B8();
  if (v140 != v138)
  {
LABEL_53:
    __break(1u);
    return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v92, v93, v94, v95, v96);
  }

  v141 = v197;
LABEL_51:
  v203 = v139;
  sub_A2B24(&v203);
  v142 = v141[69];
  v143 = v141[67];
  v170 = v142;
  v174 = v143;
  v144 = v141[65];
  v180 = v141[70];
  v183 = v144;
  v186 = v141[63];
  v145 = v141[61];
  v146 = v141[58];
  v191 = v141[47];
  v194 = v141[43];
  v147 = sub_1B4AD4();
  v149 = v148;

  v219._countAndFlagsBits = v147;
  v219._object = v149;
  sub_1B48D4(v219);

  v150 = sub_1B4C54();
  (*(*(v150 - 8) + 56))(v146, 1, 1, v150);
  v151 = *(v195 + 16);
  v151(v142, v144, v145);
  v151(v143, v180, v145);
  v152 = *(v195 + 80);
  v153 = (v152 + 32) & ~v152;
  v154 = (v153 + v187) & 0xFFFFFFFFFFFFFFF8;
  v155 = (v154 + 15) & 0xFFFFFFFFFFFFFFF8;
  v156 = (v152 + v155 + 8) & ~v152;
  v157 = swift_allocObject();
  *(v157 + 16) = 0;
  *(v157 + 24) = 0;
  v158 = *(v195 + 32);
  v158(v157 + v153, v170, v145);
  *(v157 + v154) = v191;
  *(v157 + v155) = v200;
  v22 = v197;
  v158(v157 + v156, v174, v145);

  sub_A2920(v146, &unk_1C3940, v157, &qword_22B2A0, &qword_1C38E8);
  sub_42F48(v146, &qword_2296C0, &qword_1C3800);
  (*(v195 + 8))(v183, v145);
LABEL_43:
  v22[75] = 0x80000000001D6E20;
  v127 = v22[57];
  v128 = v22[48];
  v129 = *v22[43];
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_1B4C74();
  v130 = sub_B9010(&qword_22B278, type metadata accessor for RequestListActor.ActorType);
  v22[76] = v130;
  v22[77] = &_swiftEmptyDictionarySingleton;
  v131 = v22[71];
  v132 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v133 = swift_task_alloc();
  v22[78] = v133;
  *v133 = v22;
  v133[1] = sub_AAB00;
  v134 = v22[57];
  v92 = v22[54];
  v95 = v22[55];
  v96 = v22 + 38;
  v93 = v131;
  v94 = v130;

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v92, v93, v94, v95, v96);
}

uint64_t sub_AAB00()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v9 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v4 = *(v2 + 616);
    v5 = *(v2 + 568);

    v6 = sub_AB624;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 568);
    v6 = sub_AAC28;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_AAC28()
{
  v114 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 384);
  if ((*(*(v0 + 392) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 592);
    v4 = *(v0 + 584);
    v5 = *(v0 + 576);
    v6 = *(v0 + 560);
    v92 = *(v0 + 616);
    v94 = *(v0 + 552);
    v95 = *(v0 + 544);
    v96 = *(v0 + 536);
    v98 = *(v0 + 528);
    v100 = *(v0 + 520);
    v8 = *(v0 + 488);
    v7 = *(v0 + 496);
    v102 = *(v0 + 512);
    v104 = *(v0 + 480);
    v106 = *(v0 + 472);
    v109 = *(v0 + 464);
    v9 = *(v0 + 424);
    v112 = *(v0 + 400);
    v10 = *(v0 + 336);
    (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));
    (*(v7 + 8))(v6, v8);

    *v10 = v92;

    v11 = *(v0 + 8);

    return v11();
  }

  v13 = *(v0 + 600);
  v14 = *(v0 + 560);
  v15 = *(v1 + *(v2 + 48));
  (*(*(v0 + 496) + 32))(*(v0 + 512), v1, *(v0 + 488));
  *(v0 + 232) = 0;
  *(v0 + 240) = 0xE000000000000000;
  sub_1B5084(68);
  v16 = *(v0 + 240);
  *(v0 + 216) = *(v0 + 232);
  *(v0 + 224) = v16;
  v116._countAndFlagsBits = 0xD000000000000010;
  v116._object = v13;
  sub_1B48D4(v116);
  sub_B9010(&qword_22A520, &type metadata accessor for UUID);
  v117._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v117);

  v118._countAndFlagsBits = 0xD000000000000020;
  v118._object = 0x80000000001D6E70;
  sub_1B48D4(v118);
  v119._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v119);

  v120._countAndFlagsBits = 0x74697720726F6620;
  v120._object = 0xEE00207344492068;
  sub_1B48D4(v120);
  v17 = *(v15 + 16);
  v110 = v15;
  if (v17)
  {
    sub_2B0C(&qword_229238, &qword_1C09C0);
    v18 = swift_allocObject();
    v19 = j__malloc_size(v18);
    v20 = v19 - 32;
    if (v19 < 32)
    {
      v20 = v19 - 25;
    }

    *(v18 + 16) = v17;
    *(v18 + 24) = 2 * (v20 >> 3);
    v21 = sub_43128(v0 + 16, v18 + 32, v17, v15);
    v22 = *(v0 + 16);
    v23 = *(v0 + 24);
    v24 = *(v0 + 32);
    v25 = *(v0 + 40);
    v26 = *(v0 + 48);
    swift_bridgeObjectRetain_n();
    sub_417B8();
    if (v21 != v17)
    {
      goto LABEL_38;
    }

    v15 = v110;
  }

  else
  {

    v18 = _swiftEmptyArrayStorage;
  }

  v27 = *(v0 + 632);
  *(v0 + 312) = v18;
  sub_A2B24((v0 + 312));
  if (v27)
  {

    v28 = *(v0 + 312);
  }

  v18 = *(v0 + 616);
  v29 = *(v0 + 376);

  v30 = *(v0 + 312);
  v31 = sub_1B4AD4();
  v33 = v32;

  v121._countAndFlagsBits = v31;
  v121._object = v33;
  sub_1B48D4(v121);

  v34 = *(v0 + 224);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v113 = v18;
  sub_B66E8(v15, sub_18E388, 0, isUniquelyReferenced_nonNull_native, &v113);

  v93 = v113;
  swift_beginAccess();
  v36 = *(v29 + 88);
  if (*(v36 + 16))
  {
    v37 = sub_3AC78(*(v0 + 512));
    if (v38)
    {
      v39 = *(*(v36 + 56) + 16 * v37 + 8);
      swift_endAccess();
      v101 = *(v39 + 16);
      if (!v101)
      {
LABEL_29:
        v72 = *(v0 + 512);
        v73 = *(v0 + 376);

        swift_beginAccess();
        v74 = *(v73 + 88);
        v75 = sub_3AC78(v72);
        if ((v76 & 1) == 0)
        {
LABEL_32:
          swift_endAccess();
          goto LABEL_33;
        }

        v18 = v75;
        v77 = *(v0 + 376);
        v78 = *(v77 + 88);
        v79 = swift_isUniquelyReferenced_nonNull_native();
        v80 = *(v77 + 88);
        *(v0 + 328) = v80;
        if (v79)
        {
LABEL_31:
          v81 = *(v0 + 376);
          (*(*(v0 + 496) + 8))(*(v80 + 48) + *(*(v0 + 496) + 72) * v18, *(v0 + 488));
          v82 = (*(v80 + 56) + 16 * v18);
          v83 = *v82;
          v84 = v82[1];

          sub_5EF08(v18, v80);
          *(v81 + 88) = v80;
          goto LABEL_32;
        }

LABEL_39:
        sub_1867EC();
        v80 = *(v0 + 328);
        goto LABEL_31;
      }

      v111 = (v0 + 320);
      v40 = *(*(v0 + 416) + 80);
      v99 = v39 + ((v40 + 32) & ~v40);

      v41 = 0;
      v97 = v39;
      while (v41 < *(v39 + 16))
      {
        v42 = *(v0 + 600);
        v43 = *(v0 + 560);
        v44 = *(v0 + 488);
        v45 = *(v0 + 424);
        sub_B8250(v99 + *(*(v0 + 416) + 72) * v41, v45, type metadata accessor for MetadataCache.MetadataRequest.ContinuationRecord);
        v46 = swift_task_alloc();
        *(v46 + 16) = v45;

        v48 = sub_B7060(v47, sub_B82B8, v46, sub_B6A9C, sub_B6A9C);

        *(v0 + 264) = 0;
        *(v0 + 272) = 0xE000000000000000;
        sub_1B5084(59);
        v49 = *(v0 + 272);
        *(v0 + 248) = *(v0 + 264);
        *(v0 + 256) = v49;
        v122._countAndFlagsBits = 0xD000000000000010;
        v122._object = v42;
        sub_1B48D4(v122);
        v123._countAndFlagsBits = sub_1B5594();
        sub_1B48D4(v123);

        v124._countAndFlagsBits = 0x69796C7070757320;
        v124._object = 0xEF2073444920676ELL;
        sub_1B48D4(v124);
        v50 = *(v48 + 16);
        if (v50)
        {
          v18 = v41;
          sub_2B0C(&qword_229238, &qword_1C09C0);
          v51 = swift_allocObject();
          v52 = j__malloc_size(v51);
          v53 = v52 - 32;
          if (v52 < 32)
          {
            v53 = v52 - 25;
          }

          v51[2] = v50;
          v51[3] = 2 * (v53 >> 3);
          v107 = sub_43128(v0 + 56, v51 + 4, v50, v48);
          v54 = v48;
          v55 = *(v0 + 56);
          v56 = *(v0 + 64);
          v58 = *(v0 + 72);
          v57 = *(v0 + 80);
          v59 = *(v0 + 88);
          v60 = v54;
          swift_retain_n();
          sub_417B8();
          if (v107 != v50)
          {
            goto LABEL_37;
          }

          v41 = v18;
          v48 = v60;
        }

        else
        {

          v51 = _swiftEmptyArrayStorage;
        }

        *v111 = v51;
        sub_A2B24(v111);
        v105 = *(v0 + 512);
        v108 = v41 + 1;
        v62 = *(v0 + 488);
        v61 = *(v0 + 496);
        v63 = *(v0 + 424);
        v64 = *(v0 + 400);
        v103 = *(v0 + 408);
        v65 = *(v0 + 384);

        v66 = *(v0 + 320);
        v67 = sub_1B4AD4();
        v69 = v68;

        v125._countAndFlagsBits = v67;
        v125._object = v69;
        sub_1B48D4(v125);

        v126._countAndFlagsBits = 0xD000000000000016;
        v126._object = 0x80000000001D6EA0;
        sub_1B48D4(v126);
        v127._countAndFlagsBits = sub_1B5594();
        sub_1B48D4(v127);

        v70 = *(v0 + 256);

        v71 = *(v103 + 24);
        v18 = *(v65 + 48);
        (*(v61 + 16))(v64, v105, v62);
        v41 = v108;
        *(v64 + v18) = v48;
        sub_2B0C(&qword_22B2D8, &qword_1C3948);
        sub_1B4BE4();
        sub_B82C0(v63, type metadata accessor for MetadataCache.MetadataRequest.ContinuationRecord);
        v39 = v97;
        if (v101 == v108)
        {

          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  swift_endAccess();

LABEL_33:
  (*(*(v0 + 496) + 8))(*(v0 + 512), *(v0 + 488));
  *(v0 + 616) = v93;
  v85 = *(v0 + 608);
  v86 = *(v0 + 568);
  v87 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v88 = swift_task_alloc();
  *(v0 + 624) = v88;
  *v88 = v0;
  v88[1] = sub_AAB00;
  v89 = *(v0 + 456);
  v90 = *(v0 + 432);
  v91 = *(v0 + 440);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v90, v86, v85, v91, v0 + 304);
}

uint64_t sub_AB624()
{
  v1 = v0[74];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[70];
  v5 = v0[69];
  v6 = v0[68];
  v13 = v0[67];
  v14 = v0[66];
  v15 = v0[65];
  v16 = v0[64];
  v8 = v0[61];
  v7 = v0[62];
  v17 = v0[60];
  v18 = v0[59];
  v9 = v0[58];
  v19 = v0[54];
  v20 = v0[53];
  v21 = v0[50];
  (*(v0[56] + 8))(v0[57], v0[55]);
  (*(v7 + 8))(v4, v8);

  v10 = v0[38];

  v11 = v0[1];

  return v11();
}

uint64_t sub_AB7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v10;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  return _swift_task_switch(sub_AB7E0, 0, 0);
}

uint64_t sub_AB7E0()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  v2 = *(v0 + 40);
  v3 = *(v0 + 56);
  v1[1] = *(v0 + 24);
  v1[2] = v2;
  v1[3] = v3;
  v4 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  v6 = sub_2B0C(&qword_22B2A0, &qword_1C38E8);
  *v5 = v0;
  v5[1] = sub_AB8F4;
  v7 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v7, 0, 0, 0xD000000000000043, 0x80000000001D6F70, sub_B8C54, v1, v6);
}

uint64_t sub_AB8F4()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_ABA30, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_ABA30()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t sub_ABA94(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v55 = a6;
  v56 = a7;
  v53 = a2;
  v54 = a5;
  v50 = a3;
  v51 = a4;
  v52 = a1;
  v7 = sub_2B0C(&qword_22B2D8, &qword_1C3948);
  v8 = *(v7 - 8);
  v46 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v43 - v9;
  v11 = sub_1B40F4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  __chkstk_darwin(v14);
  v16 = &v43 - v15;
  v17 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v43 - v19;
  v21 = sub_1B4C54();
  v22 = *(*(v21 - 8) + 56);
  v48 = v20;
  v22(v20, 1, 1, v21);
  v45 = v12;
  v23 = *(v12 + 16);
  v47 = v16;
  v23(v16, v50, v11);
  v49 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v11;
  v23(v49, v51, v11);
  v24 = v8;
  v25 = *(v8 + 16);
  v26 = v52;
  v51 = v10;
  v52 = v7;
  v25(v10, v26, v7);
  v27 = qword_2282B0;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = qword_22AFF8;
  v43 = qword_22AFF8;
  v44 = sub_B9010(&qword_22B278, type metadata accessor for RequestListActor.ActorType);
  v29 = v45;
  v30 = *(v45 + 80);
  v31 = (v30 + 40) & ~v30;
  v32 = (v13 + v30 + v31) & ~v30;
  v33 = (v13 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = (*(v24 + 80) + v33 + 8) & ~*(v24 + 80);
  v35 = (v46 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  v37 = v44;
  *(v36 + 2) = v28;
  *(v36 + 3) = v37;
  *(v36 + 4) = v53;
  v38 = *(v29 + 32);
  v39 = &v36[v31];
  v40 = v50;
  v38(v39, v47, v50);
  v38(&v36[v32], v49, v40);
  *&v36[v33] = v54;
  (*(v24 + 32))(&v36[v34], v51, v52);
  v41 = v56;
  *&v36[v35] = v55;
  *&v36[(v35 + 15) & 0xFFFFFFFFFFFFFFF8] = v41;

  sub_4903C(0, 0, v48, &unk_1C3988, v36);
}

uint64_t sub_ABEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = v17;
  v8[19] = v18;
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  v9 = type metadata accessor for MetadataCache.MetadataRequest.ContinuationRecord(0);
  v8[20] = v9;
  v10 = *(v9 - 8);
  v8[21] = v10;
  v11 = *(v10 + 64) + 15;
  v8[22] = swift_task_alloc();
  v12 = sub_2B0C(&qword_22B2A0, &qword_1C38E8);
  v8[23] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v8[27] = swift_task_alloc();
  if (qword_2282B0 != -1)
  {
    swift_once();
  }

  v14 = qword_22AFF8;
  v8[28] = qword_22AFF8;

  return _swift_task_switch(sub_AC010, v14, 0);
}

uint64_t sub_AC010()
{
  v50 = v0;
  v1 = v0[13];
  swift_beginAccess();
  v2 = *(v1 + 88);
  if (*(v2 + 16))
  {
    v3 = sub_3AC78(v0[14]);
    if (v4)
    {
      v5 = v0[22];
      v6 = v0[20];
      v7 = v0[16];
      v8 = v0[17];
      v9 = v0[15];
      v10 = (*(v2 + 56) + 16 * v3);
      v11 = *v10;
      v12 = v10[1];
      swift_endAccess();
      v13 = sub_1B40F4();
      (*(*(v13 - 8) + 16))(v5, v9, v13);
      v14 = *(v6 + 24);
      v15 = sub_2B0C(&qword_22B2D8, &qword_1C3948);
      (*(*(v15 - 8) + 16))(v5 + v14, v8, v15);
      *(v5 + *(v6 + 20)) = v7;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_4:
        v17 = v12[2];
        v16 = v12[3];
        if (v17 >= v16 >> 1)
        {
          v12 = sub_33C1C(v16 > 1, v17 + 1, 1, v12);
        }

        v19 = v0[21];
        v18 = v0[22];
        v20 = v0[14];
        v12[2] = v17 + 1;
        sub_B8BB8(v18, v12 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17, type metadata accessor for MetadataCache.MetadataRequest.ContinuationRecord);
        swift_beginAccess();
        v21 = *(v1 + 88);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49[0] = *(v1 + 88);
        *(v1 + 88) = 0x8000000000000000;
        sub_54350(v11, v12, v20, isUniquelyReferenced_nonNull_native);
        *(v1 + 88) = v49[0];
        swift_endAccess();
        v24 = v0[26];
        v23 = v0[27];
        v26 = v0[24];
        v25 = v0[25];
        v27 = v0[22];

        v28 = v0[1];

        return v28();
      }

LABEL_22:
      v12 = sub_33C1C(0, v12[2] + 1, 1, v12);
      goto LABEL_4;
    }
  }

  v30 = v0[27];
  v31 = v0[18];
  v32 = v0[13];
  swift_endAccess();
  sub_1B40E4();
  sub_404C4(v32 + 104, (v0 + 2));
  v33 = v0[5];
  v45 = v0[6];
  sub_2698(v0 + 2, v33);
  v34 = *(v31 + 16);
  if (v34)
  {
    v35 = v0[18];
    v46 = sub_3503C(*(v31 + 16), 0);
    v36 = sub_3F09C(v49, v46 + 4, v34, v35);
    v1 = v49[0];
    v12 = v49[3];
    v11 = v49[4];

    sub_417B8();
    if (v36 != v34)
    {
      __break(1u);
      goto LABEL_21;
    }

    v37 = v46;
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
  }

  v0[29] = v37;
  v38 = v0[19];
  v39 = *(v38 + 16);
  if (!v39)
  {
    v40 = _swiftEmptyArrayStorage;
    goto LABEL_17;
  }

  v47 = v37;
  v40 = sub_3503C(v39, 0);
  v41 = sub_3F09C(v49, v40 + 4, v39, v38);
  v11 = v49[0];
  v12 = v49[1];
  v1 = v49[2];

  sub_417B8();
  if (v41 != v39)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v37 = v47;
LABEL_17:
  v0[30] = v40;
  v42 = *(v45 + 8);
  v48 = (v42 + *v42);
  v43 = v42[1];
  v44 = swift_task_alloc();
  v0[31] = v44;
  *v44 = v0;
  v44[1] = sub_AC4F4;

  return (v48)(v37, v40, v33, v45);
}

uint64_t sub_AC4F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v7 = *(v4 + 224);
    v8 = sub_ACA28;
  }

  else
  {
    v10 = *(v4 + 232);
    v9 = *(v4 + 240);
    v11 = *(v4 + 224);
    v12 = *(v4 + 184);

    *(v4 + 264) = a1;
    *(v4 + 272) = *(v12 + 48);

    v8 = sub_AC650;
    v7 = v11;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_AC650()
{
  v32 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 184);
  v4 = *(v0 + 120);
  *(v2 + *(v0 + 272)) = *(v0 + 264);
  sub_2BF8((v0 + 16));
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_1B5084(42);

  v5 = sub_1B40F4();
  sub_B9010(&qword_22A520, &type metadata accessor for UUID);
  v34._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v34);

  v35._countAndFlagsBits = 32;
  v35._object = 0xE100000000000000;
  sub_1B48D4(v35);
  v30 = v5;
  v36._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v36);

  v37._countAndFlagsBits = 0x656E727574657220;
  v37._object = 0xEE00207344492064;
  sub_1B48D4(v37);
  sub_43050(v2, v1, &qword_22B2A0, &qword_1C38E8);
  v6 = *(v1 + *(v3 + 48));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = sub_3503C(*(v6 + 16), 0);
    v9 = sub_43128(v31, v8 + 32, v7, v6);

    sub_417B8();
    if (v9 == v7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_5:
  v10 = *(v0 + 256);
  v31[0] = v8;
  sub_A2B24(v31);
  if (v10)
  {
  }

  else
  {
    v12 = *(v0 + 208);
    v13 = *(v0 + 216);
    v14 = *(v0 + 192);
    v15 = *(v0 + 200);
    v16 = *(v0 + 184);
    v29 = *(v0 + 136);

    v17 = *(v5 - 8);
    (*(v17 + 8))(v12, v5);
    v18 = sub_1B4AD4();
    v20 = v19;

    v38._countAndFlagsBits = v18;
    v38._object = v20;
    sub_1B48D4(v38);

    sub_43050(v13, v15, &qword_22B2A0, &qword_1C38E8);
    v21 = *(v16 + 48);
    v22 = *(v15 + v21);
    (*(v17 + 32))(v14, v15, v30);
    *(v14 + v21) = v22;
    sub_2B0C(&qword_22B2D8, &qword_1C3948);
    sub_1B4BE4();
    sub_42F48(v13, &qword_22B2A0, &qword_1C38E8);
    v24 = *(v0 + 208);
    v23 = *(v0 + 216);
    v26 = *(v0 + 192);
    v25 = *(v0 + 200);
    v27 = *(v0 + 176);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_ACA28()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[26];
  v3 = v0[27];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[22];

  sub_2BF8(v0 + 2);
  v8 = sub_1B40F4();
  (*(*(v8 - 8) + 8))(v3, v8);

  v9 = v0[1];
  v10 = v0[32];

  return v9();
}

uint64_t sub_ACB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_ACB40, 0, 0);
}

uint64_t sub_ACB40()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = sub_2B0C(&qword_22B2A0, &qword_1C38E8);
  *v4 = v0;
  v4[1] = sub_ACC4C;
  v6 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000043, 0x80000000001D6F70, sub_B8810, v1, v5);
}

uint64_t sub_ACC4C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_ACD88, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_ACD88()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_ACDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  v9 = type metadata accessor for MetadataCache.MetadataRequest.ContinuationRecord(0);
  v8[18] = v9;
  v10 = *(v9 - 8);
  v8[19] = v10;
  v11 = *(v10 + 64) + 15;
  v8[20] = swift_task_alloc();
  v12 = sub_2B0C(&qword_22B2A0, &qword_1C38E8);
  v8[21] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  if (qword_2282B0 != -1)
  {
    swift_once();
  }

  v14 = qword_22AFF8;
  v8[26] = qword_22AFF8;

  return _swift_task_switch(sub_ACF4C, v14, 0);
}

uint64_t sub_ACF4C()
{
  v46 = v0;
  v1 = v0[13];
  swift_beginAccess();
  v2 = *(v1 + 88);
  if (*(v2 + 16))
  {
    v3 = sub_3AC78(v0[14]);
    if (v4)
    {
      v5 = v0[20];
      v6 = v0[17];
      v7 = v0[18];
      v9 = v0[15];
      v8 = v0[16];
      v10 = (*(v2 + 56) + 16 * v3);
      v11 = *v10;
      v12 = v10[1];
      swift_endAccess();
      v13 = sub_1B40F4();
      (*(*(v13 - 8) + 16))(v5, v9, v13);
      v14 = *(v7 + 24);
      v15 = sub_2B0C(&qword_22B2D8, &qword_1C3948);
      (*(*(v15 - 8) + 16))(v5 + v14, v6, v15);
      *(v5 + *(v7 + 20)) = v8;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_4:
        v17 = v12[2];
        v16 = v12[3];
        if (v17 >= v16 >> 1)
        {
          v12 = sub_33C1C(v16 > 1, v17 + 1, 1, v12);
        }

        v19 = v0[19];
        v18 = v0[20];
        v20 = v0[14];
        v12[2] = v17 + 1;
        sub_B8BB8(v18, v12 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17, type metadata accessor for MetadataCache.MetadataRequest.ContinuationRecord);
        swift_beginAccess();
        v21 = *(v1 + 88);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45[0] = *(v1 + 88);
        *(v1 + 88) = 0x8000000000000000;
        sub_54350(v11, v12, v20, isUniquelyReferenced_nonNull_native);
        *(v1 + 88) = v45[0];
        swift_endAccess();
        v24 = v0[24];
        v23 = v0[25];
        v26 = v0[22];
        v25 = v0[23];
        v27 = v0[20];

        v28 = v0[1];

        return v28();
      }

LABEL_17:
      v12 = sub_33C1C(0, v12[2] + 1, 1, v12);
      goto LABEL_4;
    }
  }

  v30 = v0[25];
  v31 = v0[16];
  v32 = v0[13];
  swift_endAccess();
  sub_1B40E4();
  sub_404C4(v32 + 104, (v0 + 2));
  v33 = v0[5];
  v34 = v0[6];
  sub_2698(v0 + 2, v33);
  v35 = *(v31 + 16);
  if (v35)
  {
    v42 = v34;
    v43 = v33;
    v36 = v0[16];
    v37 = sub_3503C(v35, 0);
    v38 = sub_3F09C(v45, v37 + 4, v35, v36);
    v1 = v45[0];
    v12 = v45[3];
    v11 = v45[4];

    sub_417B8();
    if (v38 != v35)
    {
      __break(1u);
      goto LABEL_17;
    }

    v34 = v42;
    v33 = v43;
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
  }

  v0[27] = v37;
  v39 = *(v34 + 16);
  v44 = (v39 + *v39);
  v40 = v39[1];
  v41 = swift_task_alloc();
  v0[28] = v41;
  *v41 = v0;
  v41[1] = sub_AD394;

  return (v44)(v37, v33, v34);
}

uint64_t sub_AD394(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v7 = *(v4 + 208);
    v8 = sub_AD8B4;
  }

  else
  {
    v10 = *(v4 + 208);
    v9 = *(v4 + 216);
    v11 = *(v4 + 168);

    *(v4 + 240) = a1;
    *(v4 + 248) = *(v11 + 48);
    v8 = sub_AD4DC;
    v7 = v10;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_AD4DC()
{
  v32 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  v4 = *(v0 + 120);
  *(v2 + *(v0 + 248)) = *(v0 + 240);
  sub_2BF8((v0 + 16));
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_1B5084(42);

  v5 = sub_1B40F4();
  sub_B9010(&qword_22A520, &type metadata accessor for UUID);
  v34._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v34);

  v35._countAndFlagsBits = 32;
  v35._object = 0xE100000000000000;
  sub_1B48D4(v35);
  v30 = v5;
  v36._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v36);

  v37._countAndFlagsBits = 0x656E727574657220;
  v37._object = 0xEE00207344492064;
  sub_1B48D4(v37);
  sub_43050(v2, v1, &qword_22B2A0, &qword_1C38E8);
  v6 = *(v1 + *(v3 + 48));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = sub_3503C(*(v6 + 16), 0);
    v9 = sub_43128(v31, v8 + 32, v7, v6);

    sub_417B8();
    if (v9 == v7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_5:
  v10 = *(v0 + 232);
  v31[0] = v8;
  sub_A2B24(v31);
  if (v10)
  {
  }

  else
  {
    v12 = *(v0 + 192);
    v13 = *(v0 + 200);
    v14 = *(v0 + 176);
    v15 = *(v0 + 184);
    v16 = *(v0 + 168);
    v29 = *(v0 + 136);

    v17 = *(v5 - 8);
    (*(v17 + 8))(v12, v5);
    v18 = sub_1B4AD4();
    v20 = v19;

    v38._countAndFlagsBits = v18;
    v38._object = v20;
    sub_1B48D4(v38);

    sub_43050(v13, v15, &qword_22B2A0, &qword_1C38E8);
    v21 = *(v16 + 48);
    v22 = *(v15 + v21);
    (*(v17 + 32))(v14, v15, v30);
    *(v14 + v21) = v22;
    sub_2B0C(&qword_22B2D8, &qword_1C3948);
    sub_1B4BE4();
    sub_42F48(v13, &qword_22B2A0, &qword_1C38E8);
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v26 = *(v0 + 176);
    v25 = *(v0 + 184);
    v27 = *(v0 + 160);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_AD8B4()
{
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[20];

  sub_2BF8(v0 + 2);
  v7 = sub_1B40F4();
  (*(*(v7 - 8) + 8))(v3, v7);

  v8 = v0[1];
  v9 = v0[29];

  return v8();
}

uint64_t sub_AD99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[7] = a1;
  v8[8] = a4;
  v9 = sub_2B0C(&qword_22B2A0, &qword_1C38E8);
  v8[13] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[14] = swift_task_alloc();

  return _swift_task_switch(sub_ADA44, 0, 0);
}

uint64_t sub_ADA44()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = sub_1B40F4();
  v0[15] = v4;
  v5 = *(v4 - 8);
  v0[16] = v5;
  (*(v5 + 16))(v3, v1, v4);
  sub_404C4(v2 + 104, (v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  sub_2698(v0 + 2, v6);
  v8 = *(v7 + 8);
  v14 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[17] = v10;
  *v10 = v0;
  v10[1] = sub_ADBD8;
  v12 = v0[10];
  v11 = v0[11];

  return v14(v12, v11, v6, v7);
}

uint64_t sub_ADBD8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = sub_AE000;
  }

  else
  {
    v8 = *(v4 + 104);
    *(v4 + 152) = a1;
    *(v4 + 160) = *(v8 + 48);
    v7 = sub_ADD0C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_ADD0C()
{
  v21 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  *(v5 + *(v0 + 160)) = *(v0 + 152);
  sub_2BF8((v0 + 16));
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1B5084(45);

  sub_B9010(&qword_22A520, &type metadata accessor for UUID);
  v23._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v23);

  v24._countAndFlagsBits = 0x7473657571657220;
  v24._object = 0xE900000000000020;
  sub_1B48D4(v24);
  v25._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v25);

  v26._countAndFlagsBits = 0x656E727574657220;
  v26._object = 0xEE00207344492064;
  sub_1B48D4(v26);
  sub_43050(v5, v1, &qword_22B2A0, &qword_1C38E8);
  v7 = *(v1 + *(v4 + 48));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = sub_3503C(*(v7 + 16), 0);
    v10 = sub_43128(v20, v9 + 32, v8, v7);

    sub_417B8();
    if (v10 == v8)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_5:
  v11 = *(v0 + 144);
  v20[0] = v9;
  sub_A2B24(v20);
  if (v11)
  {
  }

  else
  {
    v13 = *(v0 + 120);
    v14 = *(v0 + 128);
    v15 = *(v0 + 112);

    (*(v14 + 8))(v15, v13);
    v16 = sub_1B4AD4();
    v18 = v17;

    v27._countAndFlagsBits = v16;
    v27._object = v18;
    sub_1B48D4(v27);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_AE000()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[14];
  v4 = v0[7];
  sub_2BF8(v0 + 2);
  (*(v2 + 8))(v4, v1);

  v5 = v0[1];
  v6 = v0[18];

  return v5();
}

uint64_t sub_AE098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[7] = a1;
  v8 = sub_2B0C(&qword_22B2A0, &qword_1C38E8);
  v7[12] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[13] = swift_task_alloc();

  return _swift_task_switch(sub_AE140, 0, 0);
}

uint64_t sub_AE140()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  v4 = sub_1B40F4();
  v0[14] = v4;
  v5 = *(v4 - 8);
  v0[15] = v5;
  (*(v5 + 16))(v3, v1, v4);
  sub_404C4(v2 + 104, (v0 + 2));
  v6 = v0[5];
  v7 = v0[6];
  sub_2698(v0 + 2, v6);
  v8 = *(v7 + 16);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[16] = v10;
  *v10 = v0;
  v10[1] = sub_AE2D4;
  v11 = v0[10];

  return v13(v11, v6, v7);
}

uint64_t sub_AE2D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_AE6FC;
  }

  else
  {
    v8 = *(v4 + 96);
    *(v4 + 144) = a1;
    *(v4 + 152) = *(v8 + 48);
    v7 = sub_AE408;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_AE408()
{
  v21 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  *(v5 + *(v0 + 152)) = *(v0 + 144);
  sub_2BF8((v0 + 16));
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1B5084(45);

  sub_B9010(&qword_22A520, &type metadata accessor for UUID);
  v23._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v23);

  v24._countAndFlagsBits = 0x7473657571657220;
  v24._object = 0xE900000000000020;
  sub_1B48D4(v24);
  v25._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v25);

  v26._countAndFlagsBits = 0x656E727574657220;
  v26._object = 0xEE00207344492064;
  sub_1B48D4(v26);
  sub_43050(v5, v1, &qword_22B2A0, &qword_1C38E8);
  v7 = *(v1 + *(v4 + 48));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = sub_3503C(*(v7 + 16), 0);
    v10 = sub_43128(v20, v9 + 32, v8, v7);

    sub_417B8();
    if (v10 == v8)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_5:
  v11 = *(v0 + 136);
  v20[0] = v9;
  sub_A2B24(v20);
  if (v11)
  {
  }

  else
  {
    v13 = *(v0 + 112);
    v14 = *(v0 + 120);
    v15 = *(v0 + 104);

    (*(v14 + 8))(v15, v13);
    v16 = sub_1B4AD4();
    v18 = v17;

    v27._countAndFlagsBits = v16;
    v27._object = v18;
    sub_1B48D4(v27);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_AE6FC()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[7];
  sub_2BF8(v0 + 2);
  (*(v2 + 8))(v4, v1);

  v5 = v0[1];
  v6 = v0[17];

  return v5();
}

BOOL sub_AE794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + *(type metadata accessor for MetadataCache.MetadataRequest.ContinuationRecord(0) + 20));
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = *(v4 + 40);
  v6 = sub_1B57E4();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  do
  {
    v10 = *(*(v4 + 48) + 8 * v8);
    result = v10 == a1;
    if (v10 == a1)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
  }

  while (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  return result;
}

uint64_t sub_AE840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[46] = a3;
  v4[47] = a4;
  v4[44] = a1;
  v4[45] = a2;
  v5 = sub_2B0C(&qword_22B240, &qword_1C3830);
  v4[48] = v5;
  v6 = *(v5 - 8);
  v4[49] = v6;
  v7 = *(v6 + 64) + 15;
  v4[50] = swift_task_alloc();
  v8 = type metadata accessor for MetadataCache.GenreMetadataRequest.ContinuationRecord(0);
  v4[51] = v8;
  v9 = *(v8 - 8);
  v4[52] = v9;
  v10 = *(v9 + 64) + 15;
  v4[53] = swift_task_alloc();
  v11 = *(*(sub_2B0C(&qword_22B258, &qword_1C3858) - 8) + 64) + 15;
  v4[54] = swift_task_alloc();
  v12 = sub_2B0C(&qword_22B260, &qword_1C3860);
  v4[55] = v12;
  v13 = *(v12 - 8);
  v4[56] = v13;
  v14 = *(v13 + 64) + 15;
  v4[57] = swift_task_alloc();
  v15 = *(*(sub_2B0C(&qword_2296C0, &qword_1C3800) - 8) + 64) + 15;
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v16 = *(*(sub_2B0C(&qword_22B268, &qword_1C3868) - 8) + 64) + 15;
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v17 = sub_1B40F4();
  v4[63] = v17;
  v18 = *(v17 - 8);
  v4[64] = v18;
  v4[65] = *(v18 + 64);
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  if (qword_2282B0 != -1)
  {
    swift_once();
  }

  v19 = qword_22AFF8;
  v4[72] = qword_22AFF8;

  return _swift_task_switch(sub_AEBA4, v19, 0);
}

uint64_t sub_AEBA4()
{
  v151 = v0;
  v126 = v0 + 12;
  v1 = v0[71];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[46];
  v5 = v0[47];
  sub_1B40E4();

  v7 = sub_40854(v6);

  v0[39] = v7;
  swift_beginAccess();
  v125 = v5;
  v8 = *(v5 + 96);
  v9 = v8 + 64;
  v10 = -1;
  v11 = -1 << *(v8 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v8 + 64);
  v127 = (63 - v11) >> 6;
  v141 = v3 + 16;
  v144 = (v3 + 32);
  v128 = v2 + 7;
  v142 = v3;
  v132 = (v3 + 8);
  v130 = v8;

  v13 = 0;
  v131 = v9;
  v129 = v0;
  if (!v12)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v16 = v13;
LABEL_16:
    v143 = v0[70];
    v19 = v0[63];
    v20 = v0[61];
    v21 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v22 = v21 | (v16 << 6);
    v23 = v130;
    v24 = v142;
    v25 = *(v130 + 48) + *(v142 + 72) * v22;
    (*(v142 + 16))();
    v26 = *(v23 + 56);
    v27 = sub_2B0C(&qword_22B270, &qword_1C3870);
    v28 = *(v27 + 48);
    v29 = *(v24 + 32);
    v145 = *(v26 + 16 * v22);
    v29(v20, v143, v19);
    *(v20 + v28) = v145;
    (*(*(v27 - 8) + 56))(v20, 0, 1, v27);

LABEL_17:
    v30 = v0[62];
    sub_5ED18(v0[61], v30, &qword_22B268, &qword_1C3868);
    v31 = sub_2B0C(&qword_22B270, &qword_1C3870);
    if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
    {
      break;
    }

    v32 = v0[69];
    v33 = v0[63];
    v34 = (v0[62] + *(v31 + 48));
    v35 = *v34;
    v36 = v34[1];
    v143 = *v144;
    (v143)(v32);
    v37 = v0[39];
    v38 = *(v35 + 32);
    v39 = v38 & 0x3F;
    v40 = ((1 << v38) + 63) >> 6;
    v41 = 8 * v40;
    swift_bridgeObjectRetain_n();

    if (v39 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
    {
      __chkstk_darwin(isStackAllocationSafe);
      bzero(&v125 - ((v41 + 15) & 0x3FFFFFFFFFFFFFF0), v41);
      v43 = sub_C6BC8(&v125 - ((v41 + 15) & 0x3FFFFFFFFFFFFFF0), v40, v35, v37);
    }

    else
    {
      v74 = swift_slowAlloc();

      v43 = sub_C68E4(v74, v40, v35, v37);
    }

    if (*(v43 + 16))
    {
      v136 = v0[71];
      v133 = v0[70];
      v44 = v133;
      v135 = v0[69];
      v134 = v0[68];
      v45 = v134;
      v46 = v0[65];
      v47 = v0[63];
      v138 = v0[60];
      v48 = v138;
      v139 = v46;
      v140 = v0[59];
      *&v145 = v0[47];
      sub_DFDD8(v43);
      v49 = sub_1B4C54();
      v137 = *(v49 - 8);
      (*(v137 + 56))(v48, 1, 1, v49);
      v50 = v142;
      v51 = *(v142 + 16);
      v51(v44, v135, v47);
      v51(v45, v136, v47);
      v52 = *(v50 + 80);
      v53 = (v52 + 40) & ~v52;
      v54 = (v139 + v52 + v53) & ~v52;
      v55 = (v54 + v128) & 0xFFFFFFFFFFFFFFF8;
      v56 = swift_allocObject();
      v56[2] = 0;
      v139 = v56 + 2;
      v57 = v145;
      v56[3] = 0;
      v56[4] = v57;
      v58 = v143;
      (v143)(v56 + v53, v133, v47);
      v59 = v56 + v54;
      v60 = v137;
      (v58)(v59, v134, v47);
      *(v56 + v55) = v43;
      v0 = v129;
      v61 = v140;
      sub_43050(v138, v140, &qword_2296C0, &qword_1C3800);
      LODWORD(v47) = (*(v60 + 48))(v61, 1, v49);

      v62 = v0[59];
      if (v47 == 1)
      {
        sub_42F48(v0[59], &qword_2296C0, &qword_1C3800);
      }

      else
      {
        sub_1B4C44();
        (*(v60 + 8))(v62, v49);
      }

      if (*v139)
      {
        v63 = v56[3];
        v64 = *v139;
        swift_getObjectType();
        swift_unknownObjectRetain();
        v65 = sub_1B4BC4();
        v67 = v66;
        swift_unknownObjectRelease();
      }

      else
      {
        v65 = 0;
        v67 = 0;
      }

      v68 = *v0[45];

      if (v67 | v65)
      {
        v69 = v126;
        *v126 = 0;
        v69[1] = 0;
        v0[14] = v65;
        v0[15] = v67;
      }

      else
      {
        v69 = 0;
      }

      v70 = v0[69];
      v71 = v0[63];
      v72 = v0[60];
      v73 = v0[48];
      v0[28] = 1;
      v0[29] = v69;
      v0[30] = v68;
      swift_task_create();

      sub_42F48(v72, &qword_2296C0, &qword_1C3800);
      (*v132)(v70, v71);
      v9 = v131;
      if (!v12)
      {
LABEL_6:
        if (v127 <= v13 + 1)
        {
          v14 = v13 + 1;
        }

        else
        {
          v14 = v127;
        }

        v15 = v14 - 1;
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v127)
          {
            v17 = v0[61];
            v18 = sub_2B0C(&qword_22B270, &qword_1C3870);
            (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
            v12 = 0;
            v13 = v15;
            goto LABEL_17;
          }

          v12 = *(v9 + 8 * v16);
          ++v13;
          if (v12)
          {
            v13 = v16;
            goto LABEL_16;
          }
        }

LABEL_46:
        __break(1u);
        goto LABEL_47;
      }
    }

    else
    {
      (*v132)(v0[69], v0[63]);

      v9 = v131;
      if (!v12)
      {
        goto LABEL_6;
      }
    }
  }

  v75 = v0[39];
  v0[73] = v75;
  if (!*(v75 + 16))
  {
    v84 = 0x80000000001D6E20;
    goto LABEL_39;
  }

  v76 = v0[67];
  sub_1B40E4();
  v77 = v125;
  swift_beginAccess();
  swift_bridgeObjectRetain_n();
  v78 = *(v77 + 96);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v149 = *(v77 + 96);
  *(v77 + 96) = 0x8000000000000000;
  sub_54390(v75, _swiftEmptyArrayStorage, v76, isUniquelyReferenced_nonNull_native);
  *(v77 + 96) = v149;
  swift_endAccess();
  v80 = *(v75 + 16);
  if (v80)
  {
    v81 = sub_3503C(*(v75 + 16), 0);
    v82 = sub_3F09C(&v149, v81 + 4, v80, v75);
    sub_417B8();
    if (v82 != v80)
    {
      __break(1u);

      swift_willThrow();
    }
  }

  else
  {

    v81 = _swiftEmptyArrayStorage;
  }

  v149 = v81;

  sub_A2B24(&v149);
  v95 = v0[71];
  v96 = v0[67];
  v97 = v0[63];

  v143 = v149;
  v149 = 0;
  v150 = 0xE000000000000000;
  sub_1B5084(63);
  v146 = v149;
  v147 = v150;
  v153._object = 0x80000000001D6E20;
  v153._countAndFlagsBits = 0xD000000000000010;
  *&v145 = 0x80000000001D6E20;
  sub_1B48D4(v153);
  sub_B9010(&qword_22A520, &type metadata accessor for UUID);
  v154._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v154);

  v155._countAndFlagsBits = 0xD000000000000020;
  v155._object = 0x80000000001D6E40;
  sub_1B48D4(v155);
  v156._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v156);

  v157._countAndFlagsBits = 0x73444920726F6620;
  v157._object = 0xE900000000000020;
  sub_1B48D4(v157);
  v98 = *(v75 + 16);
  if (v98)
  {
    v99 = sub_3503C(*(v75 + 16), 0);
    v100 = sub_3F09C(&v149, v99 + 4, v98, v75);

    sub_417B8();
    if (v100 == v98)
    {
      goto LABEL_48;
    }

    __break(1u);
    goto LABEL_46;
  }

LABEL_47:
  v99 = _swiftEmptyArrayStorage;
LABEL_48:
  v101 = v129;
  v148 = v99;
  sub_A2B24(&v148);
  v136 = v101[71];
  v102 = v101[70];
  v134 = v101[68];
  v103 = v134;
  v105 = v101[65];
  v137 = v101[67];
  v104 = v137;
  v138 = v105;
  v106 = v101[63];
  v135 = v101[58];
  v107 = v135;
  v108 = v101[45];
  v139 = v101[47];
  v140 = v108;
  v109 = sub_1B4AD4();
  v111 = v110;

  v158._countAndFlagsBits = v109;
  v158._object = v111;
  sub_1B48D4(v158);

  v112 = sub_1B4C54();
  (*(*(v112 - 8) + 56))(v107, 1, 1, v112);
  v113 = v142;
  v114 = *(v142 + 16);
  v115 = v102;
  v114(v102, v104, v106);
  v114(v103, v136, v106);
  v116 = *(v113 + 80);
  v117 = (v116 + 32) & ~v116;
  v118 = (v117 + v128) & 0xFFFFFFFFFFFFFFF8;
  v119 = (v118 + 15) & 0xFFFFFFFFFFFFFFF8;
  v120 = (v116 + v119 + 8) & ~v116;
  v121 = swift_allocObject();
  *(v121 + 16) = 0;
  *(v121 + 24) = 0;
  v122 = *(v113 + 32);
  v123 = v129;
  v122(v121 + v117, v115, v106);
  *(v121 + v118) = v139;
  *(v121 + v119) = v143;
  v122(v121 + v120, v134, v106);
  v0 = v123;

  v124 = v135;
  sub_A2920(v135, &unk_1C3880, v121, &qword_22B240, &qword_1C3830);
  sub_42F48(v124, &qword_2296C0, &qword_1C3800);
  (*(v113 + 8))(v137, v106);
  v84 = v145;
LABEL_39:
  v0[74] = v84;
  v85 = v0[57];
  v86 = v0[48];
  v87 = *v0[45];
  sub_2B0C(&qword_229560, &unk_1BFC70);
  sub_1B4C74();
  v88 = sub_B9010(&qword_22B278, type metadata accessor for RequestListActor.ActorType);
  v0[75] = v88;
  v0[76] = &_swiftEmptyDictionarySingleton;
  v89 = v0[72];
  v90 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v91 = swift_task_alloc();
  v0[77] = v91;
  *v91 = v0;
  v91[1] = sub_AFAB8;
  v92 = v0[57];
  v93 = v0[54];
  v94 = v0[55];

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v93, v89, v88, v94, v0 + 40);
}

uint64_t sub_AFAB8()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v9 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {
    v4 = *(v2 + 608);
    v5 = *(v2 + 576);

    v6 = sub_B0670;
    v7 = v5;
  }

  else
  {
    v7 = *(v2 + 576);
    v6 = sub_AFC2C;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_AFC2C()
{
  v113 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 384);
  if ((*(*(v0 + 392) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 608);
    v4 = *(v0 + 584);
    v5 = *(v0 + 568);
    v6 = *(v0 + 560);
    v93 = *(v0 + 552);
    v94 = *(v0 + 544);
    v95 = *(v0 + 536);
    v97 = *(v0 + 528);
    v8 = *(v0 + 504);
    v7 = *(v0 + 512);
    v99 = *(v0 + 496);
    v101 = *(v0 + 488);
    v103 = *(v0 + 480);
    v105 = *(v0 + 472);
    v9 = *(v0 + 464);
    v109 = *(v0 + 424);
    v111 = *(v0 + 400);
    v10 = *(v0 + 352);
    (*(*(v0 + 448) + 8))(*(v0 + 456), *(v0 + 440));
    (*(v7 + 8))(v5, v8);

    *v10 = v3;

    v11 = *(v0 + 8);

    return v11();
  }

  v13 = *(v0 + 592);
  v14 = *(v0 + 568);
  v15 = *(v1 + *(v2 + 48));
  (*(*(v0 + 512) + 32))(*(v0 + 528), v1, *(v0 + 504));
  *(v0 + 264) = 0;
  *(v0 + 272) = 0xE000000000000000;
  sub_1B5084(68);
  v16 = *(v0 + 272);
  *(v0 + 248) = *(v0 + 264);
  *(v0 + 256) = v16;
  v115._countAndFlagsBits = 0xD000000000000010;
  v115._object = v13;
  sub_1B48D4(v115);
  sub_B9010(&qword_22A520, &type metadata accessor for UUID);
  v116._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v116);

  v117._countAndFlagsBits = 0xD000000000000020;
  v117._object = 0x80000000001D6E70;
  sub_1B48D4(v117);
  v118._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v118);

  v119._countAndFlagsBits = 0x74697720726F6620;
  v119._object = 0xEE00207344492068;
  sub_1B48D4(v119);
  v17 = *(v15 + 16);
  v108 = v15;
  if (v17)
  {
    sub_2B0C(&qword_229238, &qword_1C09C0);
    v18 = swift_allocObject();
    v19 = j__malloc_size(v18);
    v20 = v19 - 32;
    if (v19 < 32)
    {
      v20 = v19 - 25;
    }

    *(v18 + 16) = v17;
    *(v18 + 24) = 2 * (v20 >> 3);
    v21 = sub_43128(v0 + 16, v18 + 32, v17, v15);
    v22 = *(v0 + 16);
    v23 = *(v0 + 24);
    v24 = *(v0 + 32);
    v25 = *(v0 + 40);
    v26 = *(v0 + 48);
    swift_bridgeObjectRetain_n();
    sub_417B8();
    if (v21 != v17)
    {
      goto LABEL_38;
    }

    v15 = v108;
  }

  else
  {

    v18 = _swiftEmptyArrayStorage;
  }

  v27 = *(v0 + 624);
  *(v0 + 328) = v18;
  sub_A2B24((v0 + 328));
  if (v27)
  {

    v28 = *(v0 + 328);
  }

  v18 = *(v0 + 608);
  v29 = *(v0 + 376);

  v30 = *(v0 + 328);
  v31 = sub_1B4AD4();
  v33 = v32;

  v120._countAndFlagsBits = v31;
  v120._object = v33;
  sub_1B48D4(v120);

  v34 = *(v0 + 256);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v112[0] = v18;
  sub_B6C68(v15, sub_B5458, 0, isUniquelyReferenced_nonNull_native, v112);

  v92 = v112[0];
  swift_beginAccess();
  v36 = *(v29 + 96);
  if (*(v36 + 16))
  {
    v37 = sub_3AC78(*(v0 + 528));
    if (v38)
    {
      v39 = *(*(v36 + 56) + 16 * v37 + 8);
      swift_endAccess();
      v100 = *(v39 + 16);
      if (!v100)
      {
LABEL_29:
        v72 = *(v0 + 528);
        v73 = *(v0 + 376);

        swift_beginAccess();
        v74 = *(v73 + 96);
        v75 = sub_3AC78(v72);
        if ((v76 & 1) == 0)
        {
LABEL_32:
          swift_endAccess();
          goto LABEL_33;
        }

        v18 = v75;
        v77 = *(v0 + 376);
        v78 = *(v77 + 96);
        v79 = swift_isUniquelyReferenced_nonNull_native();
        v80 = *(v77 + 96);
        *(v0 + 344) = v80;
        if (v79)
        {
LABEL_31:
          v81 = *(v0 + 376);
          (*(*(v0 + 512) + 8))(*(v80 + 48) + *(*(v0 + 512) + 72) * v18, *(v0 + 504));
          v82 = (*(v80 + 56) + 16 * v18);
          v83 = *v82;
          v84 = v82[1];

          sub_5EF08(v18, v80);
          *(v81 + 96) = v80;
          goto LABEL_32;
        }

LABEL_39:
        sub_186800();
        v80 = *(v0 + 344);
        goto LABEL_31;
      }

      v110 = (v0 + 336);
      v40 = *(*(v0 + 416) + 80);
      v98 = v39 + ((v40 + 32) & ~v40);

      v41 = 0;
      v96 = v39;
      while (v41 < *(v39 + 16))
      {
        v42 = *(v0 + 592);
        v43 = *(v0 + 568);
        v44 = *(v0 + 504);
        v45 = *(v0 + 424);
        sub_B8250(v98 + *(*(v0 + 416) + 72) * v41, v45, type metadata accessor for MetadataCache.GenreMetadataRequest.ContinuationRecord);
        v46 = swift_task_alloc();
        *(v46 + 16) = v45;

        v48 = sub_B7060(v47, sub_B71F0, v46, sub_B6F00, sub_B6F00);

        *(v0 + 296) = 0;
        *(v0 + 304) = 0xE000000000000000;
        sub_1B5084(59);
        v49 = *(v0 + 304);
        *(v0 + 280) = *(v0 + 296);
        *(v0 + 288) = v49;
        v121._countAndFlagsBits = 0xD000000000000010;
        v121._object = v42;
        sub_1B48D4(v121);
        v122._countAndFlagsBits = sub_1B5594();
        sub_1B48D4(v122);

        v123._countAndFlagsBits = 0x69796C7070757320;
        v123._object = 0xEF2073444920676ELL;
        sub_1B48D4(v123);
        v50 = *(v48 + 16);
        if (v50)
        {
          v18 = v41;
          sub_2B0C(&qword_229238, &qword_1C09C0);
          v51 = swift_allocObject();
          v52 = j__malloc_size(v51);
          v53 = v52 - 32;
          if (v52 < 32)
          {
            v53 = v52 - 25;
          }

          v51[2] = v50;
          v51[3] = 2 * (v53 >> 3);
          v106 = sub_43128(v0 + 56, v51 + 4, v50, v48);
          v54 = v48;
          v55 = *(v0 + 56);
          v56 = *(v0 + 64);
          v58 = *(v0 + 72);
          v57 = *(v0 + 80);
          v59 = *(v0 + 88);
          v60 = v54;
          swift_retain_n();
          sub_417B8();
          if (v106 != v50)
          {
            goto LABEL_37;
          }

          v41 = v18;
          v48 = v60;
        }

        else
        {

          v51 = _swiftEmptyArrayStorage;
        }

        *v110 = v51;
        sub_A2B24(v110);
        v104 = *(v0 + 528);
        v107 = v41 + 1;
        v62 = *(v0 + 504);
        v61 = *(v0 + 512);
        v63 = *(v0 + 424);
        v64 = *(v0 + 400);
        v102 = *(v0 + 408);
        v65 = *(v0 + 384);

        v66 = *(v0 + 336);
        v67 = sub_1B4AD4();
        v69 = v68;

        v124._countAndFlagsBits = v67;
        v124._object = v69;
        sub_1B48D4(v124);

        v125._countAndFlagsBits = 0xD000000000000016;
        v125._object = 0x80000000001D6EA0;
        sub_1B48D4(v125);
        v126._countAndFlagsBits = sub_1B5594();
        sub_1B48D4(v126);

        v70 = *(v0 + 288);

        v71 = *(v102 + 24);
        v18 = *(v65 + 48);
        (*(v61 + 16))(v64, v104, v62);
        v41 = v107;
        *(v64 + v18) = v48;
        sub_2B0C(&qword_22B280, &unk_1C3888);
        sub_1B4BE4();
        sub_B82C0(v63, type metadata accessor for MetadataCache.GenreMetadataRequest.ContinuationRecord);
        v39 = v96;
        if (v100 == v107)
        {

          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  swift_endAccess();

LABEL_33:
  (*(*(v0 + 512) + 8))(*(v0 + 528), *(v0 + 504));
  *(v0 + 608) = v92;
  v85 = *(v0 + 600);
  v86 = *(v0 + 576);
  v87 = _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKFTu[1];
  v88 = swift_task_alloc();
  *(v0 + 616) = v88;
  *v88 = v0;
  v88[1] = sub_AFAB8;
  v89 = *(v0 + 456);
  v90 = *(v0 + 432);
  v91 = *(v0 + 440);

  return _sScg8IteratorV4next9isolationxSgScA_pSgYi_tYaq_YKF(v90, v86, v85, v91, v0 + 320);
}

uint64_t sub_B0670()
{
  v1 = v0[73];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[67];
  v8 = v0[63];
  v7 = v0[64];
  v12 = v0[66];
  v13 = v0[62];
  v14 = v0[61];
  v15 = v0[60];
  v16 = v0[59];
  v17 = v0[58];
  v18 = v0[54];
  v19 = v0[53];
  v20 = v0[50];
  (*(v0[56] + 8))(v0[57], v0[55]);
  (*(v7 + 8))(v2, v8);

  v9 = v0[40];

  v10 = v0[1];

  return v10();
}

uint64_t sub_B0810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return _swift_task_switch(sub_B0838, 0, 0);
}

uint64_t sub_B0838()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = sub_2B0C(&qword_22B240, &qword_1C3830);
  *v4 = v0;
  v4[1] = sub_B0944;
  v6 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, 0, 0, 0xD000000000000027, 0x80000000001D6EC0, sub_B733C, v1, v5);
}

uint64_t sub_B0944()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_B9580, 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_B0A80(uint64_t a1, uint64_t a2, char *a3, char *a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  v43 = a4;
  v44 = a8;
  v47 = a2;
  v48 = a5;
  v41 = a3;
  v45 = a1;
  v46 = a9;
  v9 = sub_2B0C(a6, a7);
  v10 = *(v9 - 8);
  v42 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v39 - v11;
  v13 = sub_1B40F4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  __chkstk_darwin(v16);
  v18 = &v39 - v17;
  v19 = sub_2B0C(&qword_2296C0, &qword_1C3800);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v39 - v21;
  v23 = sub_1B4C54();
  v24 = *(*(v23 - 8) + 56);
  v40 = v22;
  v24(v22, 1, 1, v23);
  v25 = *(v14 + 16);
  v39 = v18;
  v25(v18, v41, v13);
  v41 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25(v41, v43, v13);
  v26 = *(v10 + 16);
  v43 = v12;
  v27 = v45;
  v45 = v9;
  v26(v12, v27, v9);
  v28 = qword_2282B0;

  if (v28 != -1)
  {
    swift_once();
  }

  v29 = qword_22AFF8;
  v30 = sub_B9010(&qword_22B278, type metadata accessor for RequestListActor.ActorType);
  v31 = *(v14 + 80);
  v32 = (v31 + 40) & ~v31;
  v33 = (v15 + v31 + v32) & ~v31;
  v34 = (v15 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (*(v10 + 80) + v34 + 8) & ~*(v10 + 80);
  v36 = swift_allocObject();
  *(v36 + 2) = v29;
  *(v36 + 3) = v30;
  *(v36 + 4) = v47;
  v37 = *(v14 + 32);
  v37(&v36[v32], v39, v13);
  v37(&v36[v33], v41, v13);
  *&v36[v34] = v48;
  (*(v10 + 32))(&v36[v35], v43, v45);

  sub_4903C(0, 0, v40, v46, v36);
}

uint64_t sub_B0E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a7;
  v8[17] = a8;
  v8[14] = a5;
  v8[15] = a6;
  v8[13] = a4;
  v9 = type metadata accessor for MetadataCache.GenreMetadataRequest.ContinuationRecord(0);
  v8[18] = v9;
  v10 = *(v9 - 8);
  v8[19] = v10;
  v11 = *(v10 + 64) + 15;
  v8[20] = swift_task_alloc();
  v12 = sub_2B0C(&qword_22B240, &qword_1C3830);
  v8[21] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  if (qword_2282B0 != -1)
  {
    swift_once();
  }

  v14 = qword_22AFF8;
  v8[26] = qword_22AFF8;

  return _swift_task_switch(sub_B0F9C, v14, 0);
}

uint64_t sub_B0F9C()
{
  v1 = v0[13];
  swift_beginAccess();
  v2 = *(v1 + 96);
  if (*(v2 + 16) && (v3 = sub_3AC78(v0[14]), (v4 & 1) != 0))
  {
    v5 = v0[20];
    v6 = v0[17];
    v7 = v0[18];
    v9 = v0[15];
    v8 = v0[16];
    v10 = (*(v2 + 56) + 16 * v3);
    v11 = *v10;
    v12 = v10[1];
    swift_endAccess();
    v13 = sub_1B40F4();
    (*(*(v13 - 8) + 16))(v5, v9, v13);
    v14 = *(v7 + 24);
    v15 = sub_2B0C(&qword_22B280, &unk_1C3888);
    (*(*(v15 - 8) + 16))(v5 + v14, v6, v15);
    *(v5 + *(v7 + 20)) = v8;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_33C44(0, v12[2] + 1, 1, v12);
    }

    v17 = v12[2];
    v16 = v12[3];
    if (v17 >= v16 >> 1)
    {
      v12 = sub_33C44(v16 > 1, v17 + 1, 1, v12);
    }

    v19 = v0[19];
    v18 = v0[20];
    v20 = v0[14];
    v12[2] = v17 + 1;
    sub_B8BB8(v18, v12 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17, type metadata accessor for MetadataCache.GenreMetadataRequest.ContinuationRecord);
    swift_beginAccess();
    v21 = *(v1 + 96);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v1 + 96);
    *(v1 + 96) = 0x8000000000000000;
    sub_54390(v11, v12, v20, isUniquelyReferenced_nonNull_native);
    *(v1 + 96) = v39;
    swift_endAccess();
    v24 = v0[24];
    v23 = v0[25];
    v26 = v0[22];
    v25 = v0[23];
    v27 = v0[20];

    v28 = v0[1];

    return v28();
  }

  else
  {
    v30 = v0[25];
    v31 = v0[13];
    swift_endAccess();
    sub_1B40E4();
    sub_404C4(v31 + 144, (v0 + 2));
    v32 = v0[5];
    v33 = v0[6];
    sub_2698(v0 + 2, v32);
    v34 = *(v33 + 8);
    v38 = (v34 + *v34);
    v35 = v34[1];
    v36 = swift_task_alloc();
    v0[27] = v36;
    *v36 = v0;
    v36[1] = sub_B135C;
    v37 = v0[16];

    return v38(v37, v32, v33);
  }
}

uint64_t sub_B135C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  *(v4 + 224) = v1;

  v7 = *(v4 + 208);
  if (v1)
  {
    v8 = sub_B187C;
  }

  else
  {
    v9 = *(v4 + 168);
    *(v4 + 232) = a1;
    *(v4 + 240) = *(v9 + 48);
    v8 = sub_B14A4;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_B14A4()
{
  v32 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 200);
  v3 = *(v0 + 168);
  v4 = *(v0 + 120);
  *(v2 + *(v0 + 240)) = *(v0 + 232);
  sub_2BF8((v0 + 16));
  v31[0] = 0;
  v31[1] = 0xE000000000000000;
  sub_1B5084(42);

  v5 = sub_1B40F4();
  sub_B9010(&qword_22A520, &type metadata accessor for UUID);
  v34._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v34);

  v35._countAndFlagsBits = 32;
  v35._object = 0xE100000000000000;
  sub_1B48D4(v35);
  v30 = v5;
  v36._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v36);

  v37._countAndFlagsBits = 0x656E727574657220;
  v37._object = 0xEE00207344492064;
  sub_1B48D4(v37);
  sub_43050(v2, v1, &qword_22B240, &qword_1C3830);
  v6 = *(v1 + *(v3 + 48));
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = sub_3503C(*(v6 + 16), 0);
    v9 = sub_43128(v31, v8 + 32, v7, v6);

    sub_417B8();
    if (v9 == v7)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_5:
  v10 = *(v0 + 224);
  v31[0] = v8;
  sub_A2B24(v31);
  if (v10)
  {
  }

  else
  {
    v12 = *(v0 + 192);
    v13 = *(v0 + 200);
    v14 = *(v0 + 176);
    v15 = *(v0 + 184);
    v16 = *(v0 + 168);
    v29 = *(v0 + 136);

    v17 = *(v5 - 8);
    (*(v17 + 8))(v12, v5);
    v18 = sub_1B4AD4();
    v20 = v19;

    v38._countAndFlagsBits = v18;
    v38._object = v20;
    sub_1B48D4(v38);

    sub_43050(v13, v15, &qword_22B240, &qword_1C3830);
    v21 = *(v16 + 48);
    v22 = *(v15 + v21);
    (*(v17 + 32))(v14, v15, v30);
    *(v14 + v21) = v22;
    sub_2B0C(&qword_22B280, &unk_1C3888);
    sub_1B4BE4();
    sub_42F48(v13, &qword_22B240, &qword_1C3830);
    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v26 = *(v0 + 176);
    v25 = *(v0 + 184);
    v27 = *(v0 + 160);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_B187C()
{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  sub_2BF8(v0 + 2);
  v6 = sub_1B40F4();
  (*(*(v6 - 8) + 8))(v2, v6);

  v7 = v0[1];
  v8 = v0[28];

  return v7();
}

uint64_t sub_B195C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[7] = a1;
  v8 = sub_2B0C(&qword_22B240, &qword_1C3830);
  v7[12] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[13] = swift_task_alloc();

  return _swift_task_switch(sub_B1A04, 0, 0);
}

uint64_t sub_B1A04()
{
  v2 = v0[9];
  v1 = v0[10];
  v4 = v0[7];
  v3 = v0[8];
  v5 = sub_1B40F4();
  v0[14] = v5;
  v6 = *(v5 - 8);
  v0[15] = v6;
  (*(v6 + 16))(v4, v3, v5);
  sub_404C4(v2 + 144, (v0 + 2));
  v7 = v0[5];
  v8 = v0[6];
  sub_2698(v0 + 2, v7);

  v10 = sub_40854(v9);
  v0[16] = v10;

  v11 = *(v8 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_B1BBC;

  return v15(v10, v7, v8);
}

uint64_t sub_B1BBC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = sub_B1FEC;
  }

  else
  {
    v8 = *(v4 + 128);
    v9 = *(v4 + 96);

    *(v4 + 152) = a1;
    *(v4 + 160) = *(v9 + 48);
    v7 = sub_B1CF8;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_B1CF8()
{
  v21 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  *(v5 + *(v0 + 160)) = *(v0 + 152);
  sub_2BF8((v0 + 16));
  v20[0] = 0;
  v20[1] = 0xE000000000000000;
  sub_1B5084(45);

  sub_B9010(&qword_22A520, &type metadata accessor for UUID);
  v23._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v23);

  v24._countAndFlagsBits = 0x7473657571657220;
  v24._object = 0xE900000000000020;
  sub_1B48D4(v24);
  v25._countAndFlagsBits = sub_1B5594();
  sub_1B48D4(v25);

  v26._countAndFlagsBits = 0x656E727574657220;
  v26._object = 0xEE00207344492064;
  sub_1B48D4(v26);
  sub_43050(v5, v1, &qword_22B240, &qword_1C3830);
  v7 = *(v1 + *(v4 + 48));
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = sub_3503C(*(v7 + 16), 0);
    v10 = sub_43128(v20, v9 + 32, v8, v7);

    sub_417B8();
    if (v10 == v8)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = _swiftEmptyArrayStorage;
LABEL_5:
  v11 = *(v0 + 144);
  v20[0] = v9;
  sub_A2B24(v20);
  if (v11)
  {
  }

  else
  {
    v13 = *(v0 + 112);
    v14 = *(v0 + 120);
    v15 = *(v0 + 104);

    (*(v14 + 8))(v15, v13);
    v16 = sub_1B4AD4();
    v18 = v17;

    v27._countAndFlagsBits = v16;
    v27._object = v18;
    sub_1B48D4(v27);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_B1FEC()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[7];

  sub_2BF8(v0 + 2);
  (*(v2 + 8))(v5, v4);

  v6 = v0[1];
  v7 = v0[18];

  return v6();
}

BOOL sub_B2088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + *(type metadata accessor for MetadataCache.GenreMetadataRequest.ContinuationRecord(0) + 20));
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = *(v4 + 40);
  v6 = sub_1B57E4();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  do
  {
    v10 = *(*(v4 + 48) + 8 * v8);
    result = v10 == a1;
    if (v10 == a1)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
  }

  while (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  return result;
}

void sub_B2134(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2B0C(&qword_22B248, &qword_1C3848);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = aBlock - v13;
  (*(v11 + 16))(aBlock - v13, a1, v10);
  v15 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = a3;
  *(v16 + 4) = a4;
  (*(v11 + 32))(&v16[v15], v14, v10);
  *&v16[(v12 + v15 + 7) & 0xFFFFFFFFFFFFFFF8] = a5;
  aBlock[4] = sub_B7C10;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19C6B4;
  aBlock[3] = &unk_21AD90;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  [v18 performBlock:v17];
  _Block_release(v17);
}

void sub_B232C(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v178 = a4;
  v177 = a3;
  v197 = a2;
  v185 = sub_1B40C4();
  v194 = *(v185 - 8);
  v6 = *(v194 + 64);
  __chkstk_darwin(v185);
  v184 = &v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CachedPersonalizationBookMetadataGenre();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v9)
  {
    sub_1B47C4();
    v9 = sub_1B4794();
  }

  v10 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v9];

  v180 = v10;
  v182 = v8;
  v198 = a1;
  v11 = sub_1B4E24();
  v195 = 0;
  if (!v11)
  {
    v11 = _swiftEmptyArrayStorage;
  }

  if (v11 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)); i; i = sub_1B5284())
  {
    v13 = 0;
    v199 = (v11 & 0xFFFFFFFFFFFFFF8);
    v200 = v11 & 0xC000000000000001;
    v14 = &_swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v200)
      {
        v18 = v14;
        v19 = sub_1B50B4();
      }

      else
      {
        if (v13 >= v199[2])
        {
          goto LABEL_28;
        }

        v18 = v14;
        v19 = *(v11 + 8 * v13 + 32);
      }

      v20 = v19;
      v21 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v22 = [v19 genreID];
      if (v22 < 0)
      {
        goto LABEL_29;
      }

      v23 = v22;
      v24 = v20;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v201[0] = v18;
      v26 = sub_43124(v23);
      v27 = v18[2];
      v28 = (v25 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        goto LABEL_30;
      }

      v30 = v25;
      if (v18[3] >= v29)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v33 = v201[0];
          if (v25)
          {
            goto LABEL_8;
          }
        }

        else
        {
          sub_186AA0();
          v33 = v201[0];
          if (v30)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        sub_18071C(v29, isUniquelyReferenced_nonNull_native);
        v31 = sub_43124(v23);
        if ((v30 & 1) != (v32 & 1))
        {
LABEL_194:
          sub_1B5784();
          __break(1u);
          return;
        }

        v26 = v31;
        v33 = v201[0];
        if (v30)
        {
LABEL_8:
          v15 = v33[7];
          v16 = *(v15 + 8 * v26);
          *(v15 + 8 * v26) = v24;
          v17 = v33;

          v14 = v17;
          goto LABEL_9;
        }
      }

      v33[(v26 >> 6) + 8] |= 1 << v26;
      *(v33[6] + 8 * v26) = v23;
      *(v33[7] + 8 * v26) = v24;
      v34 = v33;

      v35 = v34[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_31;
      }

      v14 = v34;
      v34[2] = v37;
LABEL_9:
      ++v13;
      if (v21 == i)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v14 = &_swiftEmptyDictionarySingleton;
LABEL_34:
  v196 = v14;

  v38 = type metadata accessor for CachedPersonalizationBookMetadataAuthor();
  v174 = swift_getObjCClassFromMetadata();
  v39 = NSStringFromClass(v174);
  if (!v39)
  {
    sub_1B47C4();
    v39 = sub_1B4794();
  }

  v40 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:v39];

  v179 = v40;
  v175 = v38;
  v41 = v198;
  v42 = v195;
  v43 = sub_1B4E24();
  if (v42)
  {

    v42 = 0;
  }

  else
  {
    v44 = v43;
    if (v43)
    {
      goto LABEL_40;
    }
  }

  v44 = _swiftEmptyArrayStorage;
LABEL_40:
  if (v44 >> 62)
  {
    goto LABEL_183;
  }

  v45 = *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8));
LABEL_42:
  v173 = v42;
  if (v45)
  {
    v42 = 0;
    v199 = (v44 & 0xFFFFFFFFFFFFFF8);
    v200 = v44 & 0xC000000000000001;
    v46 = &_swiftEmptyDictionarySingleton;
    while (1)
    {
      if (v200)
      {
        v49 = sub_1B50B4();
      }

      else
      {
        if (v42 >= v199[2])
        {
          goto LABEL_175;
        }

        v49 = *(v44 + 8 * v42 + 32);
      }

      v50 = v49;
      isUniquelyReferenced_nonNull_native = (v42 + 1);
      if (__OFADD__(v42, 1))
      {
        __break(1u);
LABEL_175:
        __break(1u);
LABEL_176:
        __break(1u);
LABEL_177:
        __break(1u);
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      v51 = [v49 authorID];
      if (v51 < 0)
      {
        goto LABEL_176;
      }

      v52 = v51;
      v53 = v50;
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v201[0] = v46;
      v41 = v46;
      v55 = sub_43124(v52);
      v57 = v46[2];
      v58 = (v56 & 1) == 0;
      v36 = __OFADD__(v57, v58);
      v59 = v57 + v58;
      if (v36)
      {
        goto LABEL_177;
      }

      v60 = v56;
      if (v46[3] < v59)
      {
        break;
      }

      if (v54)
      {
        goto LABEL_56;
      }

      v41 = v201;
      v64 = v55;
      sub_186AB4();
      v55 = v64;
      v46 = v201[0];
      if (v60)
      {
LABEL_44:
        v47 = v46[7];
        v48 = *(v47 + 8 * v55);
        *(v47 + 8 * v55) = v53;

        goto LABEL_45;
      }

LABEL_57:
      v46[(v55 >> 6) + 8] |= 1 << v55;
      *(v46[6] + 8 * v55) = v52;
      *(v46[7] + 8 * v55) = v53;

      v62 = v46[2];
      v36 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v36)
      {
        goto LABEL_178;
      }

      v46[2] = v63;
LABEL_45:
      ++v42;
      if (isUniquelyReferenced_nonNull_native == v45)
      {
        goto LABEL_63;
      }
    }

    sub_180730(v59, v54);
    v41 = v201[0];
    v55 = sub_43124(v52);
    if ((v60 & 1) != (v61 & 1))
    {
      goto LABEL_194;
    }

LABEL_56:
    v46 = v201[0];
    if (v60)
    {
      goto LABEL_44;
    }

    goto LABEL_57;
  }

  v46 = &_swiftEmptyDictionarySingleton;
LABEL_63:

  v65 = v197 + 64;
  v66 = 1 << *(v197 + 32);
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  else
  {
    v67 = -1;
  }

  v68 = v67 & *(v197 + 64);
  v69 = (v66 + 63) >> 6;
  v183 = (v194 + 8);

  v44 = 0;
  v194 = v69;
  if (v68)
  {
    while (1)
    {
LABEL_74:
      v71 = __clz(__rbit64(v68)) | (v44 << 6);
      v72 = *(*(v197 + 48) + 8 * v71);
      v73 = (*(v197 + 56) + 88 * v71);
      LODWORD(v189) = *v73;
      v74 = *(v73 + 1);
      v75 = *(v73 + 2);
      v191 = *(v73 + 3);
      v192 = v72;
      LODWORD(v190) = v73[32];
      v76 = *(v73 + 6);
      v186 = *(v73 + 5);
      v77 = v73[56];
      v188 = *(v73 + 8);
      v187 = v73[72];
      type metadata accessor for CachedPersonalizationBookMetadata();
      v78 = swift_getObjCClassFromMetadata();

      v200 = v75;

      v79 = NSStringFromClass(v78);
      if (!v79)
      {
        sub_1B47C4();
        v79 = sub_1B4794();
      }

      v68 &= v68 - 1;
      v199 = objc_opt_self();
      isUniquelyReferenced_nonNull_native = [v199 insertNewObjectForEntityForName:v79 inManagedObjectContext:v198];

      v80 = swift_dynamicCastClass();
      if (v80)
      {
        v42 = v80;
        v195 = v74;
        v193 = v80;
        if (v77 == 2)
        {
          goto LABEL_95;
        }

        v81 = v65;
        type metadata accessor for CachedPersonalizationBookMetadataSeriesMembership();
        v82 = swift_getObjCClassFromMetadata();
        v83 = NSStringFromClass(v82);
        if (!v83)
        {
          sub_1B47C4();
          v83 = sub_1B4794();
        }

        v84 = [v199 insertNewObjectForEntityForName:v83 inManagedObjectContext:v198];

        v85 = swift_dynamicCastClass();
        if (v85)
        {
          if (v76 < 0)
          {
            goto LABEL_191;
          }

          v91 = isUniquelyReferenced_nonNull_native;
          v92 = v85;
          [v85 setSeriesID:v76];
          if (v187)
          {
            v93 = 0;
          }

          else
          {
            v93 = v188;
          }

          if ((v93 & 0x8000000000000000) == 0)
          {
            [v92 setMappedSeriesID:?];
            [v92 setOrdinal:v186];
            [v92 setIsOrdered:v77 & 1];
            v94 = v193;
            [v193 setSeriesMembership:v92];

            v42 = v94;
            isUniquelyReferenced_nonNull_native = v91;
            v65 = v81;
LABEL_95:
            if ((v192 & 0x8000000000000000) != 0)
            {
LABEL_189:
              __break(1u);
            }

            else
            {
              [v42 setAssetID:?];
              if (v190)
              {
                v95 = 0;
              }

              else
              {
                v95 = v191;
              }

              if ((v95 & 0x8000000000000000) == 0)
              {
                [v42 setMappedAssetID:?];
                v96 = v184;
                sub_1B40B4();
                isa = sub_1B4034().super.isa;
                v192 = *v183;
                (v192)(v96, v185);
                [v42 setLastAccessDate:isa];

                if (v189)
                {
                  v98 = 2;
                }

                else
                {
                  v98 = 1;
                }

                [v42 setMediaType:v98];
                v41 = (v200 + 56);
                v99 = 1 << *(v200 + 32);
                if (v99 < 64)
                {
                  v100 = ~(-1 << v99);
                }

                else
                {
                  v100 = -1;
                }

                v101 = v100 & *(v200 + 56);
                v190 = (v99 + 63) >> 6;

                v102 = 0;
                v103 = v199;
                v189 = v41;
                v172 = v65;
                while (v101)
                {
LABEL_115:
                  v107 = *(*(v200 + 48) + ((v102 << 9) | (8 * __clz(__rbit64(v101)))));
                  if (v46[2] && (v108 = sub_43124(v107), (v109 & 1) != 0))
                  {
                    v110 = *(v46[7] + 8 * v108);
                    v42 = v193;
                    v41 = v189;
                  }

                  else
                  {
                    v191 = v107;
                    v111 = NSStringFromClass(v174);
                    if (!v111)
                    {
                      sub_1B47C4();
                      v111 = sub_1B4794();
                    }

                    v41 = [v103 insertNewObjectForEntityForName:v111 inManagedObjectContext:v198];

                    v112 = swift_dynamicCastClass();
                    if (!v112)
                    {
                      goto LABEL_169;
                    }

                    v113 = v191;
                    if (v191 < 0)
                    {
LABEL_185:
                      __break(1u);
LABEL_186:
                      __break(1u);
                      goto LABEL_187;
                    }

                    v110 = v112;
                    v114 = isUniquelyReferenced_nonNull_native;
                    [v112 setAuthorID:v191];
                    v115 = v41;
                    v116 = swift_isUniquelyReferenced_nonNull_native();
                    v201[0] = v46;
                    v117 = sub_43124(v113);
                    v119 = v46[2];
                    v120 = (v118 & 1) == 0;
                    v36 = __OFADD__(v119, v120);
                    v121 = v119 + v120;
                    if (v36)
                    {
                      goto LABEL_186;
                    }

                    v122 = v118;
                    if (v46[3] >= v121)
                    {
                      v41 = v189;
                      if ((v116 & 1) == 0)
                      {
                        v126 = v117;
                        sub_186AB4();
                        v41 = v189;
                        v117 = v126;
                      }

                      isUniquelyReferenced_nonNull_native = v114;
                    }

                    else
                    {
                      sub_180730(v121, v116);
                      v117 = sub_43124(v191);
                      if ((v122 & 1) != (v123 & 1))
                      {
                        goto LABEL_194;
                      }

                      isUniquelyReferenced_nonNull_native = v114;
                      v41 = v189;
                    }

                    v46 = v201[0];
                    v103 = v199;
                    if (v122)
                    {
                      v104 = *(v201[0] + 7);
                      v105 = *(v104 + 8 * v117);
                      *(v104 + 8 * v117) = v110;
                    }

                    else
                    {
                      *(v201[0] + (v117 >> 6) + 8) |= 1 << v117;
                      *(v46[6] + 8 * v117) = v191;
                      *(v46[7] + 8 * v117) = v110;
                      v124 = v46[2];
                      v36 = __OFADD__(v124, 1);
                      v125 = v124 + 1;
                      if (v36)
                      {
                        __break(1u);
                        goto LABEL_189;
                      }

                      v46[2] = v125;
                    }

                    v42 = v193;
                  }

                  v101 &= v101 - 1;
                  [v42 addAuthorsObject:v110];
                }

                while (1)
                {
                  v106 = v102 + 1;
                  if (__OFADD__(v102, 1))
                  {
                    break;
                  }

                  if (v106 >= v190)
                  {

                    v127 = v195;
                    v200 = *(v195 + 16);
                    if (v200)
                    {
                      v128 = 0;
                      v129 = (v195 + 40);
                      v176 = isUniquelyReferenced_nonNull_native;
                      while (v128 < *(v127 + 16))
                      {
                        v132 = *(v129 - 1);
                        isUniquelyReferenced_nonNull_native = *v129;
                        v41 = v196;
                        if (v196[2] && (v133 = sub_43124(*(v129 - 1)), (v134 & 1) != 0))
                        {
                          v135 = *(v196[7] + v133);
                          isUniquelyReferenced_nonNull_native = v176;
                        }

                        else
                        {

                          v41 = NSStringFromClass(ObjCClassFromMetadata);
                          if (!v41)
                          {
                            sub_1B47C4();
                            v41 = sub_1B4794();
                          }

                          v42 = [v199 insertNewObjectForEntityForName:v41 inManagedObjectContext:v198];

                          v136 = swift_dynamicCastClass();
                          if (!v136)
                          {

                            if (qword_2282C0 != -1)
                            {
                              goto LABEL_193;
                            }

                            goto LABEL_165;
                          }

                          if (v132 < 0)
                          {
                            goto LABEL_181;
                          }

                          v135 = v136;
                          [v136 setGenreID:v132];
                          v137 = sub_1B4AA4().super.isa;

                          [v135 setPath:v137];

                          v138 = v184;
                          sub_1B40B4();
                          v139 = sub_1B4034().super.isa;
                          (v192)(v138, v185);
                          [v135 setLastAccessDate:v139];

                          v140 = v42;
                          v41 = v196;
                          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                          v201[0] = v41;
                          v141 = sub_43124(v132);
                          v143 = v41[2];
                          v144 = (v142 & 1) == 0;
                          v36 = __OFADD__(v143, v144);
                          v145 = v143 + v144;
                          if (v36)
                          {
                            goto LABEL_182;
                          }

                          v146 = v142;
                          if (v41[3] >= v145)
                          {
                            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                            {
                              v41 = v201;
                              v151 = v141;
                              sub_186AA0();
                              v141 = v151;
                            }
                          }

                          else
                          {
                            sub_18071C(v145, isUniquelyReferenced_nonNull_native);
                            v41 = v201[0];
                            v141 = sub_43124(v132);
                            if ((v146 & 1) != (v147 & 1))
                            {
                              goto LABEL_194;
                            }
                          }

                          isUniquelyReferenced_nonNull_native = v176;
                          v148 = v201[0];
                          v196 = v201[0];
                          if (v146)
                          {
                            v130 = *(v201[0] + 7);
                            v131 = *(v130 + 8 * v141);
                            *(v130 + 8 * v141) = v135;
                          }

                          else
                          {
                            *(v201[0] + (v141 >> 6) + 8) |= 1 << v141;
                            *(v148[6] + 8 * v141) = v132;
                            *(v148[7] + 8 * v141) = v135;
                            v149 = v148[2];
                            v36 = __OFADD__(v149, 1);
                            v150 = v149 + 1;
                            if (v36)
                            {
                              __break(1u);
                              goto LABEL_185;
                            }

                            v148[2] = v150;
                          }

                          v42 = v193;
                        }

                        ++v128;
                        [v42 addLeafGenresObject:v135];

                        v129 += 2;
                        v127 = v195;
                        if (v200 == v128)
                        {
                          goto LABEL_154;
                        }
                      }

                      goto LABEL_180;
                    }

LABEL_154:

                    [v42 setGenresKnown:1];

                    v65 = v172;
                    v69 = v194;
                    if (v68)
                    {
                      goto LABEL_74;
                    }

                    goto LABEL_70;
                  }

                  v101 = v41[v106];
                  ++v102;
                  if (v101)
                  {
                    v102 = v106;
                    goto LABEL_115;
                  }
                }

LABEL_179:
                __break(1u);
LABEL_180:
                __break(1u);
LABEL_181:
                __break(1u);
LABEL_182:
                __break(1u);
LABEL_183:
                v45 = sub_1B5284();
                goto LABEL_42;
              }
            }

            __break(1u);
LABEL_191:
            __break(1u);
          }

          __break(1u);
LABEL_193:
          swift_once();
LABEL_165:
          v161 = sub_1B4644();
          sub_50E58(v161, qword_260C00);
          v162 = sub_1B4624();
          v163 = sub_1B4D94();
          v164 = os_log_type_enabled(v162, v163);
          v165 = v176;
          if (v164)
          {
            v166 = swift_slowAlloc();
            *v166 = 0;
            _os_log_impl(&dword_0, v162, v163, "Failed to insert genre object into database", v166, 2u);
          }

          return;
        }

        if (qword_2282C0 != -1)
        {
          swift_once();
        }

        v86 = sub_1B4644();
        sub_50E58(v86, qword_260C00);
        v87 = sub_1B4624();
        v41 = sub_1B4D94();
        v65 = v81;
        if (os_log_type_enabled(v87, v41))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_0, v87, v41, "Failed to create series membership", v88, 2u);
        }
      }

      else
      {

        if (qword_2282C0 != -1)
        {
          swift_once();
        }

        v89 = sub_1B4644();
        v41 = sub_50E58(v89, qword_260C00);
        isUniquelyReferenced_nonNull_native = sub_1B4624();
        v90 = sub_1B4D94();
        if (os_log_type_enabled(isUniquelyReferenced_nonNull_native, v90))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&dword_0, isUniquelyReferenced_nonNull_native, v90, "Failed to create metadata", v41, 2u);
        }
      }

      v69 = v194;
      if (!v68)
      {
        goto LABEL_70;
      }
    }
  }

  while (1)
  {
LABEL_70:
    v70 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
LABEL_169:

      if (qword_2282C0 != -1)
      {
        swift_once();
      }

      v167 = sub_1B4644();
      sub_50E58(v167, qword_260C00);
      v168 = sub_1B4624();
      v169 = sub_1B4D94();
      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        *v170 = 0;
        _os_log_impl(&dword_0, v168, v169, "Failed to insert author object into database", v170, 2u);
      }

      return;
    }

    if (v70 >= v69)
    {
      break;
    }

    v68 = *(v65 + 8 * v70);
    ++v44;
    if (v68)
    {
      v44 = v70;
      goto LABEL_74;
    }
  }

  v152 = v198;
  sub_B37D8(v198);
  if ([v152 hasChanges])
  {
    v201[0] = 0;
    if ([v152 save:v201])
    {
      v153 = v201[0];
    }

    else
    {
      v154 = v201[0];
      sub_1B3E64();

      swift_willThrow();
      if (qword_2282C0 != -1)
      {
LABEL_187:
        swift_once();
      }

      v155 = sub_1B4644();
      sub_50E58(v155, qword_260C00);
      swift_errorRetain();
      v156 = sub_1B4624();
      v157 = sub_1B4D94();

      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        *v158 = 138412290;
        swift_errorRetain();
        v160 = _swift_stdlib_bridgeErrorToNSError();
        *(v158 + 4) = v160;
        *v159 = v160;
        _os_log_impl(&dword_0, v156, v157, "Failed to save cache insertions %@", v158, 0xCu);
        sub_42F48(v159, &qword_22B250, &qword_1C3850);
      }

      else
      {
      }
    }
  }

  v201[0] = 0;
  sub_2B0C(&qword_22B248, &qword_1C3848);
  sub_1B4BE4();
}