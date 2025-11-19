uint64_t sub_100395EC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_10063E988);
  v33 = a2;
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_100010530(v34, *(&v34 + 1));
      }

      sub_1004DF26C();
      sub_1004DD55C();
      result = sub_1004DF2BC();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_10039617C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_100643630);
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_100006F5C((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_100010678(v23, &v36);
        sub_10000904C(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1004DEA2C(*(v7 + 40));
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_100006F5C(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_100396434(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_100004CB8(&qword_100643608);
  v61 = a2;
  result = sub_1004DED9C();
  v7 = result;
  if (*(v5 + 16))
  {
    v59 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v23 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v26 = v23 | (v8 << 6);
      v27 = *(v5 + 48) + 56 * v26;
      if (v61)
      {
        v28 = *(v27 + 8);
        v29 = *(v27 + 24);
        v30 = *(v27 + 40);
        v31 = *v27;
        v32 = *(v5 + 56) + 136 * v26;
        v33 = *(v32 + 80);
        v78 = *(v32 + 64);
        v79 = v33;
        v34 = *(v32 + 112);
        v80 = *(v32 + 96);
        v81 = v34;
        v35 = *(v32 + 16);
        v74 = *v32;
        v75 = v35;
        v36 = *(v32 + 48);
        v76 = *(v32 + 32);
        v77 = v36;
        v37 = *(v32 + 128);
      }

      else
      {
        v60 = *(v27 + 8);
        v62 = *(v27 + 40);
        v63 = *(v27 + 24);
        v31 = *v27;
        v38 = *(v5 + 56) + 136 * v26;
        v65 = *v38;
        v39 = *(v38 + 64);
        v41 = *(v38 + 16);
        v40 = *(v38 + 32);
        v68 = *(v38 + 48);
        v69 = v39;
        v66 = v41;
        v67 = v40;
        v43 = *(v38 + 96);
        v42 = *(v38 + 112);
        v44 = *(v38 + 80);
        v73 = *(v38 + 128);
        v71 = v43;
        v72 = v42;
        v70 = v44;
        v37 = v73;
        v45 = v60;
        v46 = *(&v60 + 1);
        v47 = v63;
        v48 = *(&v63 + 1);
        v49 = v62;
        v50 = *(&v62 + 1);
        sub_100397618(&v65, v64);
        v30 = v62;
        v29 = v63;
        v28 = v60;
        v78 = v69;
        v79 = v70;
        v80 = v71;
        v81 = v72;
        v74 = v65;
        v75 = v66;
        v76 = v67;
        v77 = v68;
      }

      v82[0] = v31;
      *&v82[8] = v28;
      *&v82[24] = v29;
      *&v82[40] = v30;
      sub_1004DF26C();
      PlaylistCovers.Cover.Representation.hash(into:)();
      result = sub_1004DF2BC();
      v51 = -1 << *(v7 + 32);
      v52 = result & ~v51;
      v53 = v52 >> 6;
      if (((-1 << v52) & ~*(v14 + 8 * (v52 >> 6))) == 0)
      {
        v54 = 0;
        v55 = (63 - v51) >> 6;
        while (++v53 != v55 || (v54 & 1) == 0)
        {
          v56 = v53 == v55;
          if (v53 == v55)
          {
            v53 = 0;
          }

          v54 |= v56;
          v57 = *(v14 + 8 * v53);
          if (v57 != -1)
          {
            v15 = __clz(__rbit64(~v57)) + (v53 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v52) & ~*(v14 + 8 * (v52 >> 6)))) | v52 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 56 * v15;
      v17 = *&v82[16];
      *v16 = *v82;
      *(v16 + 16) = v17;
      *(v16 + 32) = *&v82[32];
      *(v16 + 48) = *&v82[48];
      v18 = *(v7 + 56) + 136 * v15;
      v19 = v79;
      *(v18 + 64) = v78;
      *(v18 + 80) = v19;
      v20 = v81;
      *(v18 + 96) = v80;
      *(v18 + 112) = v20;
      v21 = v75;
      *v18 = v74;
      *(v18 + 16) = v21;
      v22 = v77;
      *(v18 + 32) = v76;
      *(v18 + 48) = v22;
      *(v18 + 128) = v37;
      ++*(v7 + 16);
    }

    v24 = v8;
    while (1)
    {
      v8 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v25 = v9[v8];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v12 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v61 & 1) == 0)
    {

      v3 = v59;
      goto LABEL_34;
    }

    v58 = 1 << *(v5 + 32);
    v3 = v59;
    if (v58 >= 64)
    {
      bzero((v5 + 64), ((v58 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v58;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_100396830()
{
  v1 = v0;
  sub_100004CB8(&qword_10063E988);
  v2 = *v0;
  v3 = sub_1004DED8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_100010530(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1003969B4()
{
  v1 = v0;
  sub_100004CB8(&qword_100643630);
  v2 = *v0;
  v3 = sub_1004DED8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_100010678(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000904C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100006F5C(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

unint64_t sub_100396B58()
{
  result = qword_1006432A8;
  if (!qword_1006432A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006432A8);
  }

  return result;
}

uint64_t sub_100396BAC(uint64_t a1)
{
  v2 = type metadata accessor for ImagePicker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100396C08()
{
  v1 = sub_1004DD0DC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_100396CD4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(sub_1004DD0DC() - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_100393558(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_100396D84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100396DEC()
{
  v1 = type metadata accessor for ImagePicker(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  sub_100004CB8(&unk_10063DBD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1004D9FEC();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 20);

  if (*(v3 + *(v1 + 28)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_100396F7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100396FE0(void *a1, char a2)
{
  v5 = *(type metadata accessor for ImagePicker(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1003951CC(a1, a2 & 1, v6);
}

unint64_t sub_100397064()
{
  result = qword_1006432E8;
  if (!qword_1006432E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006432E8);
  }

  return result;
}

uint64_t sub_100397114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100004CB8(&unk_100641510);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1003971F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100004CB8(&unk_100641510);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1003972BC()
{
  sub_100397444();
  if (v0 <= 0x3F)
  {
    sub_1003974E8(319, &unk_100643370, &qword_10063E4C0, &unk_100529168, &type metadata accessor for Binding);
    if (v1 <= 0x3F)
    {
      sub_10039749C(319, &unk_100643380);
      if (v2 <= 0x3F)
      {
        sub_1003974E8(319, &qword_100640BD8, &qword_100643390, &unk_1005307B0, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10039749C(319, &qword_100643398);
          if (v4 <= 0x3F)
          {
            sub_1003974E8(319, &qword_1006433A0, &unk_1006433A8, &unk_1005307B8, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_100397444()
{
  if (!qword_100641598)
  {
    sub_1004D9FEC();
    v0 = sub_1004D9DCC();
    if (!v1)
    {
      atomic_store(v0, &qword_100641598);
    }
  }
}

void sub_10039749C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1004DBBCC();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1003974E8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_100008DE4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100397554()
{
  result = type metadata accessor for ImagePicker(319);
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_100397674()
{
  v1 = v0;
  sub_100004CB8(&qword_100643608);
  v2 = *v0;
  v3 = sub_1004DED8C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v49 = v1;
    result = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v7)
    {
      result = memmove(result, (v2 + 64), 8 * v7);
    }

    v9 = 0;
    v50 = v2;
    v51 = v4;
    *(v4 + 16) = *(v2 + 16);
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 64);
    for (i = (v10 + 63) >> 6; v12; result = sub_100397618(&v53, v52))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v17 = v14 | (v9 << 6);
      v18 = 56 * v17;
      v19 = *(v2 + 56);
      v20 = *(v2 + 48) + 56 * v17;
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      v25 = *(v20 + 24);
      v24 = *(v20 + 32);
      v27 = *(v20 + 40);
      v26 = *(v20 + 48);
      v17 *= 136;
      v28 = (v19 + v17);
      v30 = v28[1];
      v29 = v28[2];
      v31 = v28[4];
      v56 = v28[3];
      v57 = v31;
      v33 = v28[6];
      v32 = v28[7];
      v34 = v28[5];
      v61 = *(v28 + 16);
      v59 = v33;
      v60 = v32;
      v58 = v34;
      v53 = *v28;
      v54 = v30;
      v55 = v29;
      v35 = *(v51 + 48) + v18;
      *v35 = v21;
      *(v35 + 8) = v22;
      *(v35 + 16) = v23;
      *(v35 + 24) = v25;
      *(v35 + 32) = v24;
      *(v35 + 40) = v27;
      *(v35 + 48) = v26;
      v36 = *(v51 + 56) + v17;
      *v36 = v53;
      v37 = v54;
      v38 = v55;
      v39 = v57;
      *(v36 + 48) = v56;
      *(v36 + 64) = v39;
      *(v36 + 16) = v37;
      *(v36 + 32) = v38;
      v40 = v58;
      v41 = v59;
      v42 = v60;
      *(v36 + 128) = v61;
      *(v36 + 96) = v41;
      *(v36 + 112) = v42;
      *(v36 + 80) = v40;
      v43 = v22;
      v44 = v23;
      v2 = v50;
      v45 = v25;
      v46 = v24;
      v47 = v27;
      v48 = v26;
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= i)
      {

        v1 = v49;
        v4 = v51;
        goto LABEL_21;
      }

      v16 = *(v6 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1003978B8()
{
  v1 = sub_1004DD0DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();
  v4 = *(v0 + 40);
  if (v4 >> 60 != 15)
  {
    sub_100010598(*(v0 + 32), v4);
  }

  (*(v2 + 8))(v0 + ((v3 + 72) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_1003979AC(uint64_t a1)
{
  sub_1004DD0DC();
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
  v11[1] = sub_100035B28;

  return sub_1003937AC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100397AD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_1006435F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100397B44(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_1006435F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t InteractionFeedbackLoadingView.body.getter@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = sub_1004DA7CC();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v8 = sub_100004CB8(&qword_100643668);
  sub_100397CF8(a1, a2, (a3 + *(v8 + 44)));
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;
  v10 = (a3 + *(sub_100004CB8(&qword_100643670) + 36));
  *v10 = sub_1003983FC;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;
}

uint64_t sub_100397CF8@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v4 = sub_1004DA78C();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v40 = &v37 - v7;
  v8 = sub_1004DACDC();
  v38 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100004CB8(&qword_100641B18);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37 - v13;
  v45 = sub_100004CB8(&qword_100643690);
  v15 = *(v45 - 8);
  __chkstk_darwin(v45);
  v17 = &v37 - v16;
  v18 = sub_100004CB8(&qword_100643698);
  __chkstk_darwin(v18 - 8);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v37 - v22;
  v47 = a1;
  v48 = v43;
  sub_100004CB8(&qword_100640118);
  sub_1004DB9EC();
  v24 = 1;
  if (v46 == 1)
  {
    sub_1004D9ECC();
    sub_1004DACCC();
    sub_100042B08(&qword_100641B10, &qword_100641B18);
    sub_100398980(&qword_1006436A8, &type metadata accessor for CircularProgressViewStyle);
    sub_1004DB39C();
    (*(v38 + 8))(v10, v8);
    (*(v12 + 8))(v14, v11);
    v25 = &v17[*(sub_100004CB8(&qword_1006436B0) + 36)];
    v26 = *(sub_100004CB8(&qword_1006436B8) + 28);
    v27 = enum case for ControlSize.large(_:);
    v28 = sub_1004D9DAC();
    (*(*(v28 - 8) + 104))(v25 + v26, v27, v28);
    *v25 = swift_getKeyPath();
    v29 = v40;
    sub_1004DA77C();
    v31 = v41;
    v30 = v42;
    (*(v41 + 16))(v39, v29, v42);
    sub_100398980(&qword_1006436C0, &type metadata accessor for OpacityTransition);
    v32 = sub_1004D9FCC();
    (*(v31 + 8))(v29, v30);
    *&v17[*(v45 + 36)] = v32;
    sub_1003989C8(v17, v23);
    v24 = 0;
  }

  (*(v15 + 56))(v23, v24, 1, v45);
  sub_1003987B8(v23, v20);
  v33 = v44;
  *v44 = 0;
  *(v33 + 8) = 1;
  v34 = sub_100004CB8(&qword_1006436A0);
  sub_1003987B8(v20, v33 + *(v34 + 48));
  v35 = v33 + *(v34 + 64);
  *v35 = 0;
  v35[8] = 1;
  sub_100398828(v23);
  return sub_100398828(v20);
}

uint64_t sub_10039828C(char a1, uint64_t a2, double a3)
{
  v6 = sub_100004CB8(&qword_100643620);
  __chkstk_darwin(v6 - 8);
  v8 = &v12 - v7;
  v9 = sub_1004DDA8C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a1;
  *(v10 + 32) = a2;

  static Task<>.delayed(by:priority:task:)(v8, &unk_100530A08, v10, &type metadata for () + 8, a3);

  return sub_100398750(v8);
}

uint64_t sub_1003983C4()
{

  return swift_deallocObject();
}

uint64_t sub_100398428(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 32) = a3;
  *(v3 + 41) = a2;
  return _swift_task_switch(sub_10039844C, 0, 0);
}

uint64_t sub_10039844C()
{
  *(v0 + 16) = *(v0 + 41);
  *(v0 + 24) = *(v0 + 32);
  *(v0 + 40) = 1;
  sub_100004CB8(&qword_100640118);
  sub_1004DB9FC();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003984E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = v1[2];
  *a1 = sub_1004DA7CC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v6 = sub_100004CB8(&qword_100643668);
  sub_100397CF8(v4, v5, (a1 + *(v6 + 44)));
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  v8 = (a1 + *(sub_100004CB8(&qword_100643670) + 36));
  *v8 = sub_100398A40;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;
}

unint64_t sub_1003985E0()
{
  result = qword_100643678;
  if (!qword_100643678)
  {
    sub_100008DE4(&qword_100643670);
    sub_100042B08(&qword_100643680, &qword_100643688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100643678);
  }

  return result;
}

uint64_t sub_100398698(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100035B28;

  return sub_100398428(a1, v4, v5);
}

uint64_t sub_100398750(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100643620);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003987B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100643698);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100398828(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100643698);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003988B4(uint64_t a1)
{
  v2 = sub_1004D9DAC();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1004DA54C();
}

uint64_t sub_100398980(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003989C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100643690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100398A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  __chkstk_darwin(a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1004D9E5C();
  v17 = __chkstk_darwin(v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_1004D9E6C();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_1004DA0DC();
}

int *LayoutProviderStack.init(layoutProvider:alignment:spacing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  result = type metadata accessor for LayoutProviderStack();
  v17 = (a9 + result[13]);
  *v17 = a2;
  v17[1] = a3;
  v18 = a9 + result[14];
  *v18 = a4;
  *(v18 + 8) = a5 & 1;
  v19 = (a9 + result[15]);
  *v19 = a6;
  v19[1] = a7;
  return result;
}

uint64_t LayoutProviderStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  sub_100008DE4(&qword_1006436C8);
  v4 = *(a1 + 24);
  sub_100399040(&qword_1006436D0);
  v5 = sub_1004DA0CC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  v12 = v25 - v11;
  (*(*(a1 + 32) + 8))(v26, *(v2 + *(a1 + 52)), *(v2 + *(a1 + 52) + 8), *(v2 + *(a1 + 56)), *(v2 + *(a1 + 56) + 8), *(a1 + 16), v10);
  v13 = sub_100008C70(v26, v26[3]);
  v14 = __chkstk_darwin(v13);
  (*(v16 + 16))(v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v25[4] = sub_1004DBD9C();
  v17 = (v2 + *(a1 + 60));
  v18 = *v17;
  v19 = v17[1];
  v20 = sub_100398FEC();
  v21 = *(a1 + 40);
  sub_100398A44(v18, v19, &type metadata for AnyLayout, v4, v20, v21, v8);

  sub_100008D24(v26);
  v25[2] = sub_100399040(&qword_1006436E0);
  v25[3] = v21;
  WitnessTable = swift_getWitnessTable();
  sub_100339DC8(v8, v5, WitnessTable);
  v23 = *(v6 + 8);
  v23(v8, v5);
  sub_100339DC8(v12, v5, WitnessTable);
  return (v23)(v12, v5);
}

unint64_t sub_100398FEC()
{
  result = qword_1006436D8;
  if (!qword_1006436D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006436D8);
  }

  return result;
}

uint64_t sub_100399040(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100008DE4(&qword_1006436C8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AxisStack.init(axis:alignment:spacing:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result & 1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5 & 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

uint64_t AxisStack.body.getter(uint64_t a1)
{
  v17[0] = *v1;
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  (*(*(&type metadata for Axis - 1) + 32))(v23, v17, &type metadata for Axis);
  v29 = &type metadata for Axis;
  *&v30 = v8;
  *(&v30 + 1) = &protocol witness table for Axis;
  v31 = v9;
  v10 = type metadata accessor for LayoutProviderStack();
  v11 = &v23[v10[13]];
  *v11 = v2;
  v11[1] = v3;
  v12 = &v23[v10[14]];
  *v12 = v4;
  v12[8] = v5;
  v13 = &v23[v10[15]];
  *v13 = v7;
  v13[1] = v6;
  v17[0] = v23[0];
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v21 = v27;
  v22 = v28;
  v29 = &type metadata for Axis;
  *&v30 = v8;
  *(&v30 + 1) = &protocol witness table for Axis;
  v31 = v9;
  v14 = type metadata accessor for LayoutProviderStack();
  WitnessTable = swift_getWitnessTable();
  sub_100339DC8(v17, v14, WitnessTable);

  v23[0] = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v27 = v33;
  v28 = v34;
  sub_100339DC8(v23, v14, WitnessTable);
}

unint64_t Axis.layout(alignment:spacing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v10 = &type metadata for VStackLayout;
    result = sub_1003992E4();
    v12 = a1;
  }

  else
  {
    v12 = a2;
    v10 = &type metadata for HStackLayout;
    result = sub_100399338();
  }

  *(a6 + 24) = v10;
  *(a6 + 32) = result;
  *a6 = v12;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4 & 1;
  return result;
}

unint64_t sub_1003992E4()
{
  result = qword_1006436E8;
  if (!qword_1006436E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006436E8);
  }

  return result;
}

unint64_t sub_100399338()
{
  result = qword_1006436F0[0];
  if (!qword_1006436F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1006436F0);
  }

  return result;
}

unint64_t sub_100399414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (*v5)
  {
    v10 = &type metadata for VStackLayout;
    result = sub_1003992E4();
    v12 = a1;
  }

  else
  {
    v12 = a2;
    v10 = &type metadata for HStackLayout;
    result = sub_100399338();
  }

  *(a5 + 24) = v10;
  *(a5 + 32) = result;
  *a5 = v12;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4 & 1;
  return result;
}

void sub_10039948C()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_100337790();
    if (v1 <= 0x3F)
    {
      sub_100338374();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_100399534(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_100399680(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_100399854()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100399890(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1003998D8(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_10039993C()
{
  sub_100008DE4(&qword_1006436C8);
  sub_100399040(&qword_1006436D0);
  sub_1004DA0CC();
  sub_100399040(&qword_1006436E0);
  return swift_getWitnessTable();
}

uint64_t sub_100399A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v17 - v13;
  v12();
  sub_100339DC8(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  sub_100339DC8(v14, a4, a6);
  return (v15)(v14, a4);
}

char *LoadingView.init(title:style:usesSubtitleTextColor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style];
  *v9 = 0;
  *(v9 + 2) = 256;
  v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition] = 1;
  v10 = &v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  *&v4[v11] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  *&v4[v12] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar] = 0;
  swift_beginAccess();
  *v10 = a1;
  v10[1] = a2;

  swift_beginAccess();
  v9[4] = BYTE4(a3);
  *v9 = a3;
  v9[5] = BYTE5(a3) & 1;
  v29.receiver = v4;
  v29.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  v15 = *&v13[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator];
  v16 = v13;
  [v15 setHidesWhenStopped:1];
  v17 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  v18 = *&v16[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label];
  if (a2)
  {
    v19 = sub_1004DD3FC();
  }

  else
  {
    v19 = 0;
  }

  [v18 setText:v19];

  [*&v16[v17] setAdjustsFontForContentSizeCategory:1];
  v20 = qword_10063DA48;
  v21 = *&v16[v17];
  if (v20 != -1)
  {
    swift_once();
  }

  [v21 setFont:qword_1006437F8];

  [*&v16[v17] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [*&v16[v17] setNumberOfLines:0];
  [*&v16[v17] setTextAlignment:1];
  if (a4)
  {
    v22 = *&v16[v17];
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 secondaryLabelColor];
    [v24 setTextColor:v25];
  }

  sub_100399F5C();
  [v16 addSubview:*&v16[v17]];
  [v16 addSubview:*&v13[v14]];
  v26 = sub_10039A0D0();
  [v16 addSubview:v26];

  return v16;
}

id sub_100399F5C()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  if (*(v1 + 5))
  {
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) stopAnimating];
    v2 = sub_10039A0D0();
    [v2 setHidden:1];

    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:1];
  }

  else if (((*v1 | (*(v1 + 4) << 32)) & 0x100000000) != 0)
  {
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) startAnimating];
    v7 = sub_10039A0D0();
    [v7 setHidden:1];

    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:0];
  }

  else
  {
    v4 = *v1;
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) stopAnimating];
    v5 = sub_10039A0D0();
    [v5 setHidden:0];

    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:0];
    LODWORD(v6) = v4;
    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar) setProgress:v6];
  }
}

id sub_10039A0D0()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar);
  }

  else
  {
    v4 = [objc_allocWithZone(UIProgressView) initWithProgressViewStyle:1];
    v5 = [objc_opt_self() systemFillColor];
    [v4 setTrackTintColor:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

unint64_t LoadingView.style.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32) | (*(v1 + 5) << 40);
}

float LoadingView.style.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  v5 = *(v3 + 4);
  v6 = *v3;
  v7 = *(v3 + 5);
  *v3 = a1;
  *(v3 + 4) = BYTE4(a1);
  *(v3 + 5) = BYTE5(a1) & 1;
  if ((a1 & 0x10000000000) != 0)
  {
    if (v7)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v7)
  {
    goto LABEL_5;
  }

  v8 = v6 | (v5 << 32);
  if ((a1 & 0x100000000) != 0)
  {
    if ((v8 & 0x100000000) != 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  if ((v8 & 0x100000000) != 0 || (result = *&a1, *&a1 != *&v8))
  {
LABEL_5:
    sub_100399F5C();
  }

  return result;
}

void (*LoadingView.style.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 4);
  v8 = *(v6 + 5);
  *(v4 + 40) = *v6;
  v4 += 40;
  *(v4 + 4) = v7;
  *(v4 + 5) = v8;
  return sub_10039A368;
}

void sub_10039A368(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = (*(*a1 + 24) + *(*a1 + 32));
  v4 = *(*a1 + 44);
  v5 = *(*a1 + 45);
  v6 = *v3 | (*(v3 + 4) << 32);
  v7 = *(v3 + 5);
  *v3 = v2;
  *(v3 + 4) = v4;
  *(v3 + 5) = v5;
  if (v5)
  {
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v7)
  {
LABEL_5:
    sub_100399F5C();
    goto LABEL_6;
  }

  if (((v2 | (v4 << 32)) & 0x100000000) != 0)
  {
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v6 & 0x100000000) != 0 || *&v2 != *&v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  free(v1);
}

uint64_t LoadingView.titlePosition.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  return *(v0 + v1);
}

id LoadingView.titlePosition.setter(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  result = swift_beginAccess();
  v5 = v1[v3];
  v1[v3] = a1;
  if (v5 != a1)
  {
    return [v1 setNeedsLayout];
  }

  return result;
}

void (*LoadingView.titlePosition.modify(uint64_t *a1))(id **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_10039A554;
}

void sub_10039A554(id **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v4 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = v3[v4];
  v3[v4] = v2;
  if (v2 != v5)
  {
    [v1[3] setNeedsLayout];
  }

  free(v1);
}

id LoadingView.font.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) font];

  return v1;
}

void LoadingView.font.setter(void *a1)
{
  [*(v1 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setFont:a1];
}

void (*LoadingView.font.modify(void *a1))(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = [*(v1 + v2) font];
  return sub_10039A6A8;
}

void sub_10039A6A8(uint64_t a1)
{
  v1 = *a1;
  [*(*(a1 + 8) + *(a1 + 16)) setFont:?];
}

uint64_t LoadingView.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t LoadingView.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = &v2[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title];
  result = swift_beginAccess();
  v7 = *v5;
  v8 = *(v5 + 1);
  *v5 = a1;
  *(v5 + 1) = a2;
  if (a2)
  {
    if (v8)
    {
      v9 = v7 == a1 && v8 == a2;
      if (v9 || (sub_1004DF08C() & 1) != 0)
      {
      }
    }

    v10 = *&v2[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label];

    v11 = sub_1004DD3FC();
  }

  else
  {
    if (!v8)
    {
      return result;
    }

    v10 = *&v2[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label];
    v11 = 0;
  }

  [v10 setText:v11];

  [v2 setNeedsLayout];
}

void (*LoadingView.title.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = (v1 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title);
  swift_beginAccess();
  v6 = v5[1];
  *(v4 + 24) = *v5;
  *(v4 + 32) = v6;

  return sub_10039A904;
}

void sub_10039A904(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    LoadingView.title.setter(v3, v4);
  }

  else
  {
    LoadingView.title.setter(*(*a1 + 24), v4);
  }

  free(v2);
}

Swift::Void __swiftcall LoadingView.layoutSubviews()()
{
  v58.receiver = v0;
  v58.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v58, "layoutSubviews");
  [v0 effectiveUserInterfaceLayoutDirection];
  v1 = [v0 traitCollection];
  [v1 displayScale];

  [v0 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v0 layoutMargins];
  sub_10001087C(v3, v5, v7, v9, v10, v11);
  LoadingView.sizeThatFits(_:)(v12, v13);
  v15 = v14;
  [v0 bounds];
  v52 = v15;
  sub_1004DE3CC();
  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;
  v20 = CGRectGetWidth(v59);
  v21 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  v56 = width;
  v57 = height;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label] sizeThatFits:{width, height, v52}];
  v23 = v22;
  rect = v24;
  v60.origin.x = 0.0;
  v60.origin.y = 0.0;
  v60.size.height = 0.0;
  v25 = v20;
  v60.size.width = v20;
  v26 = CGRectGetWidth(v60);
  v27 = sub_10039A0D0();
  [v27 intrinsicContentSize];
  v29 = v28;

  v30 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  [*&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator] intrinsicContentSize];
  v32 = v31;
  v34 = v33;
  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = v26;
  v61.size.height = v29;
  v35 = CGRectGetHeight(v61);
  v62.origin.x = 0.0;
  v62.origin.y = 0.0;
  v62.size.width = v32;
  v62.size.height = v34;
  v36 = CGRectGetHeight(v62);
  if (v35 > v36)
  {
    v37 = v35;
  }

  else
  {
    v37 = v36;
  }

  v38 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  if (v0[v38])
  {
    if (v0[v38] == 1)
    {
      v63.origin.x = x;
      v63.origin.y = y;
      v63.size.width = v56;
      v63.size.height = v57;
      CGRectGetMinX(v63);
      v64.origin.x = x;
      v64.origin.y = y;
      v64.size.width = v25;
      v64.size.height = v37;
      CGRectGetMaxY(v64);
      [*&v0[v21] _firstBaselineOffsetFromTop];
    }

    else
    {
      [*&v0[v30] intrinsicContentSize];
      v40 = v39;
      [*&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar] intrinsicContentSize];
      if (v40 > v41)
      {
        v42 = v40;
      }

      else
      {
        v42 = v41;
      }

      v43 = x;
      v44 = y;
      v45 = v37;
      CGRectGetMaxX(*(&v42 - 2));
      v67.origin.x = x;
      v67.origin.y = y;
      v67.size.width = v56;
      v67.size.height = v57;
      CGRectGetMinY(v67);
    }
  }

  else
  {
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = v56;
    v65.size.height = v57;
    CGRectGetMinX(v65);
    v66.origin.x = x;
    v66.origin.y = y;
    v66.size.width = v23;
    v66.size.height = rect;
    CGRectGetMaxY(v66);
    [*&v0[v21] _baselineOffsetFromBottom];
  }

  v46 = v0[v38];
  v47 = *&v0[OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar];
  sub_1004DE3CC();
  if (v46 == 2)
  {
    [v0 bounds];
    sub_1004DE3EC();
    [v47 setFrame:?];

    v49 = *&v0[v30];
    v53 = v37;
  }

  else
  {
    v54 = v48;
    sub_1004DE3CC();
    [v0 bounds];
    sub_1004DE3EC();
    [v47 setFrame:?];

    v49 = *&v0[v30];
    sub_1004DE3CC();
    v53 = v50;
  }

  sub_1004DE3CC();
  [v0 bounds];
  sub_1004DE3EC();
  [v49 setFrame:?];

  v51 = *&v0[v21];
  sub_1004DE3CC();
  [v0 bounds];
  sub_1004DE3EC();
  [v51 setFrame:?];
}

double LoadingView.sizeThatFits(_:)(double a1, double a2)
{
  v3 = v2;
  v6 = sub_10039A0D0();
  [v6 sizeThatFits:{0.0, 0.0}];
  v8 = v7;
  v10 = v9;

  [*(v3 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) sizeThatFits:{0.0, 0.0}];
  v13 = v12;
  if (v8 > v11)
  {
    v14 = v8;
  }

  else
  {
    v14 = v11;
  }

  v15 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  if (v10 > v13)
  {
    v16 = v10;
  }

  else
  {
    v16 = v13;
  }

  if (*(v3 + v15) == 2)
  {
    v17 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
    [*(v3 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) intrinsicContentSize];
    [*(v3 + v17) intrinsicContentSize];
    return v14 + v18;
  }

  else
  {
    v19 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
    [*(v3 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) sizeThatFits:{0.0, 0.0}];
    v21 = v20;
    _s3__C6CGSizeVMa_1(0);
    if (sub_1004D868C())
    {
      [*(v3 + v19) sizeThatFits:{a1, a2 - (v16 + 0.0 + 8.0)}];
    }

    else if (v21 > v14)
    {
      return v21;
    }

    else
    {
      return v14;
    }
  }

  return a1;
}

BOOL static LoadingView.Style.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) == 0)
  {
    if ((a2 & 0x100000000) == 0)
    {
      return *&a1 == *&a2;
    }

    return 0;
  }

  return (a2 & 0x100000000) != 0;
}

uint64_t sub_10039B25C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    return *a1 == *a2;
  }

  return result;
}

void sub_10039B28C()
{
  sub_10039B5FC();
  v0 = UIFontTextStyleSubheadline;
  v1 = sub_1004DE48C();

  qword_1006437F8 = v1;
}

unint64_t sub_10039B3C8()
{
  result = qword_100643830;
  if (!qword_100643830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100643830);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for LoadingView.Style(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LoadingView.Style(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LoadingView.Style(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_10039B4B0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10039B4CC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

void sub_10039B4FC()
{
  v1 = v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style;
  *(v1 + 4) = 256;
  *v1 = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition) = 1;
  v2 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  *(v0 + v3) = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v4 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  *(v0 + v4) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar) = 0;
  sub_1004DECCC();
  __break(1u);
}

unint64_t sub_10039B5FC()
{
  result = qword_100643860;
  if (!qword_100643860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100643860);
  }

  return result;
}

uint64_t MarkupView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004D7E3C();
  __chkstk_darwin(v2 - 8);
  sub_100004CB8(&qword_100643868);
  swift_allocObject();

  sub_1004D864C();
  sub_1004D863C();

  result = sub_1004DB33C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_10039B748@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1004D7E3C();
  __chkstk_darwin(v2 - 8);
  sub_100004CB8(&qword_100643868);
  swift_allocObject();

  sub_1004D864C();
  sub_1004D863C();

  result = sub_1004DB33C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_10039B844@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1004D9E1C();
  sub_1003A1AAC(a1, v15, a2, a3, a4, a5, a6, a7);
  return sub_100317BF4(v15);
}

uint64_t sub_10039B8E8(uint64_t TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1004DBE1C();
}

uint64_t sub_10039BAB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  __chkstk_darwin(a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v9);
  (*(v12 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v10);
  (*(v6 + 16))(v8, a1, a4);
  return sub_1004D9D5C();
}

uint64_t sub_10039BC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004DE7CC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t MaterialyView.init(shape:style:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for MaterialyView();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t MaterialyView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v57 = a1;
  v3 = *(*(a1 + 24) + 8);
  v4 = *(a1 + 24);
  v78 = *(a1 + 16);
  v2 = v78;
  v79 = &type metadata for Color;
  v80 = v3;
  v81 = &protocol witness table for Color;
  v5 = v3;
  v65 = sub_1004D9D6C();
  v61 = *(v65 - 8);
  __chkstk_darwin(v65);
  v60 = &v42 - v6;
  sub_1004DA44C();
  v64 = sub_1004DA32C();
  v62 = *(v64 - 8);
  __chkstk_darwin(v64);
  v59 = &v42 - v7;
  v78 = v2;
  v79 = &type metadata for LinearGradient;
  v80 = v5;
  v81 = &protocol witness table for LinearGradient;
  sub_1004D9D6C();
  WitnessTable = sub_1004DE7CC();
  v78 = v2;
  v79 = &type metadata for Color;
  v80 = &type metadata for EmptyView;
  v81 = v5;
  v82 = &protocol witness table for Color;
  v83 = &protocol witness table for EmptyView;
  sub_1004DA37C();
  sub_1004DA32C();
  v56 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_1004D9E4C();
  sub_1004DA32C();
  sub_1004DA32C();
  v10 = sub_100008DE4(&qword_100643870);
  v11 = sub_100042B08(&qword_100643878, &qword_100643870);
  v78 = v2;
  v79 = v10;
  v80 = v5;
  v81 = v11;
  v12 = v5;
  sub_1004D9D6C();
  v78 = AssociatedTypeWitness;
  v79 = &type metadata for Color;
  v80 = v9;
  v81 = &protocol witness table for Color;
  sub_1004D9D6C();
  sub_1004DA32C();
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  swift_getWitnessTable();
  sub_1004DBB4C();
  sub_1004DA32C();
  sub_1004DA32C();
  swift_getTupleTypeMetadata3();
  sub_1004DBE0C();
  swift_getWitnessTable();
  v54 = sub_1004DBB4C();
  WitnessTable = swift_getWitnessTable();
  sub_1004DA46C();
  v13 = sub_1004DA32C();
  __chkstk_darwin(v13);
  v53 = &v42 - v14;
  v15 = *(v2 - 8);
  __chkstk_darwin(v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v18;
  v46 = swift_getWitnessTable();
  v76 = v46;
  v77 = &protocol witness table for _BlendModeEffect;
  v19 = swift_getWitnessTable();
  v49 = v19;
  v20 = swift_getWitnessTable();
  v74 = v19;
  v75 = v20;
  v51 = v13;
  v48 = swift_getWitnessTable();
  v78 = v2;
  v79 = &type metadata for LinearGradient;
  v80 = v13;
  v43 = v12;
  v81 = v12;
  v82 = &protocol witness table for LinearGradient;
  v83 = v48;
  v21 = sub_1004DA37C();
  v52 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v47 = &v42 - v25;
  v26 = v56;
  v27 = type metadata accessor for MaterialyView.Style.Specs();
  v45 = v27;
  v50 = *(v27 - 8);
  __chkstk_darwin(v27);
  v29 = (&v42 - v28);
  v30 = v58;
  sub_10039C760(*(v58 + *(v57 + 36)), v2, v26, &v42 - v28);
  (*(v15 + 16))(v18, v30, v2);
  v31 = v29 + *(v27 + 36);
  v71 = *(v31 + 1);
  v32 = *(v31 + 2);
  v72 = *(v31 + 1);
  v73 = v32;

  sub_1004D9E1C();
  v70 = *v29;
  v33 = v60;
  sub_10039BAB8(&v70, 256, v2, &type metadata for Color);
  type metadata accessor for MaterialyView.Style.Specs.FillColor();
  v34 = v59;
  v35 = v65;
  sub_1004DB72C();
  (*(v61 + 8))(v33, v35);
  v66 = v2;
  v67 = v26;
  v68 = v29;
  v69 = v30;
  sub_1004DBD1C();
  v36 = v53;
  v37 = v64;
  sub_1004DB6BC();
  (*(v62 + 8))(v34, v37);
  sub_10039ED54(v44, &v71, &v78, 1, v36, v2, &type metadata for LinearGradient, v51, v23, v43, &protocol witness table for LinearGradient, v48);
  v38 = swift_getWitnessTable();
  v39 = v47;
  sub_100339DC8(v23, v21, v38);
  v40 = *(v52 + 8);
  v40(v23, v21);
  sub_100339DC8(v39, v21, v38);
  v40(v39, v21);
  return (*(v50 + 8))(v29, v45);
}

uint64_t sub_10039C760@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v75 = a4;
  v7 = a1;
  v8 = type metadata accessor for MaterialyView.Style.Specs.Shadow();
  __chkstk_darwin(v8 - 8);
  v74 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v64 - v11;
  __chkstk_darwin(v12);
  v72 = &v64 - v13;
  __chkstk_darwin(v14);
  v71 = &v64 - v15;
  v16 = sub_1004DBDAC();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a2;
  v21 = a3;
  v22 = type metadata accessor for MaterialyView.Style.Specs.FillColor();
  __chkstk_darwin(v22 - 8);
  v24 = &v64 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v64 - v26;
  if (v7 == 2)
  {
    sub_1004DB87C();
    v28 = sub_1004DB88C();

    v29 = *(v17 + 104);
    v30 = v19;
    v29(v19, enum case for BlendMode.plusLighter(_:), v16);
    v31 = v29;
    v74 = v27;
    v69 = v21;
    sub_10039F174(v28, v30, v27);
    sub_100004CB8(&qword_10063F1E8);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100511B10;
    sub_1004DB87C();
    sub_1004DB88C();

    *(v32 + 32) = sub_1004DBC9C();
    *(v32 + 40) = v33;
    sub_1004DB87C();
    sub_1004DB88C();

    *(v32 + 48) = sub_1004DBC9C();
    *(v32 + 56) = v34;
    sub_1004DB87C();
    sub_1004DB88C();

    *(v32 + 64) = sub_1004DBC9C();
    *(v32 + 72) = v35;
    sub_1004DB87C();
    sub_1004DB88C();

    *(v32 + 80) = sub_1004DBC9C();
    *(v32 + 88) = v36;
    sub_1004DBCAC();
    sub_1004DBE2C();
    sub_1004DBE3C();
    sub_1004DA12C();
    *&v79 = 0x3FE0000000000000;
    *(&v79 + 1) = v82;
    v80 = v83;
    v81 = v84;
    memset(v85, 0, 40);
    sub_1004DB84C();
    v37 = sub_1004DB88C();

    v38 = enum case for BlendMode.normal(_:);
    v31(v30, enum case for BlendMode.normal(_:), v16);
    v39 = v71;
    sub_10039F200(v37, v30, v71, 4.0, 0.0, 3.0);
    sub_1004DB87C();
    v40 = sub_1004DB88C();

    v31(v30, v38, v16);
    v41 = v72;
    sub_10039F200(v40, v30, v72, 3.0, 0.0, 1.0);
    v42 = v75;
    v43 = v74;
    v44 = v39;
    v45 = v41;
  }

  else
  {
    sub_1004DB87C();
    v46 = 0.23;
    if (a1)
    {
      v46 = 0.8;
    }

    v71 = *&v46;
    v47 = 3.0;
    if (a1)
    {
      v47 = 6.0;
    }

    v72 = *&v47;
    v48 = sub_1004DB88C();

    v49 = *(v17 + 104);
    v49(v19, enum case for BlendMode.plusLighter(_:), v16);
    v70 = v20;
    sub_10039F174(v48, v19, v24);
    sub_100004CB8(&qword_10063F1E8);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_100511B10;
    sub_1004DB87C();
    sub_1004DB88C();

    *(v50 + 32) = sub_1004DBC9C();
    *(v50 + 40) = v51;
    sub_1004DB87C();
    sub_1004DB88C();

    *(v50 + 48) = sub_1004DBC9C();
    *(v50 + 56) = v52;
    sub_1004DB87C();
    sub_1004DB88C();

    *(v50 + 64) = sub_1004DBC9C();
    *(v50 + 72) = v53;
    sub_1004DB87C();
    sub_1004DB88C();

    *(v50 + 80) = sub_1004DBC9C();
    *(v50 + 88) = v54;
    sub_1004DBCAC();
    sub_1004DBE2C();
    sub_1004DBE3C();
    sub_1004DA12C();
    *&v79 = 0x3FF0000000000000;
    *(&v79 + 1) = v76;
    v80 = v77;
    v81 = v78;
    sub_100004CB8(&qword_10063F1F0);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_1005126C0;
    sub_1004DB87C();
    v56 = sub_1004DB88C();

    *(v55 + 32) = v56;
    sub_1004DB84C();
    v57 = sub_1004DB88C();

    *(v55 + 40) = v57;
    sub_1004DBCBC();
    sub_1004DBE5C();
    sub_1004DBE6C();
    sub_1004DA12C();
    v68 = v82;
    sub_1004DB84C();
    v58 = sub_1004DB88C();
    v59 = enum case for BlendMode.normal(_:);

    v67 = v83;
    v66 = v84;
    v49(v19, v59, v16);
    v65 = v24;
    v60 = v73;
    sub_10039F200(v58, v19, v73, 4.0, 0.0, 3.0);
    sub_1004DB87C();
    v61 = sub_1004DB88C();

    v49(v19, v59, v16);
    v62 = v74;
    sub_10039F200(v61, v19, v74, *&v72, 0.0, 1.0);
    *&v85[0] = v68;
    *(&v85[1] + 8) = v66;
    *(v85 + 8) = v67;
    v42 = v75;
    v43 = v65;
    v44 = v60;
    v45 = v62;
  }

  return sub_10039F294(v43, &v79, v85, v44, v45, v42);
}

uint64_t sub_10039D118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a1;
  v22 = a2;
  v23 = a5;
  v7 = *(a4 + 8);
  sub_1004D9D6C();
  v20 = sub_1004DE7CC();
  v28 = a3;
  v29 = &type metadata for Color;
  v30 = &type metadata for EmptyView;
  v31 = v7;
  v32 = &protocol witness table for Color;
  v33 = &protocol witness table for EmptyView;
  sub_1004DA37C();
  sub_1004DA32C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  sub_1004D9E4C();
  sub_1004DA32C();
  sub_1004DA44C();
  sub_1004DA32C();
  sub_100008DE4(&qword_100643870);
  sub_100042B08(&qword_100643878, &qword_100643870);
  sub_1004D9D6C();
  v28 = AssociatedTypeWitness;
  v29 = &type metadata for Color;
  v30 = v9;
  v31 = &protocol witness table for Color;
  sub_1004D9D6C();
  sub_1004DA32C();
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  swift_getWitnessTable();
  sub_1004DBB4C();
  sub_1004DA32C();
  sub_1004DA32C();
  swift_getTupleTypeMetadata3();
  sub_1004DBE0C();
  swift_getWitnessTable();
  v10 = sub_1004DBB4C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  v24 = a3;
  v25 = a4;
  v26 = v21;
  v27 = v22;
  sub_1004DBD1C();
  sub_1004DBB3C();
  WitnessTable = swift_getWitnessTable();
  sub_100339DC8(v13, v10, WitnessTable);
  v18 = *(v11 + 8);
  v18(v13, v10);
  sub_100339DC8(v16, v10, WitnessTable);
  return (v18)(v16, v10);
}

uint64_t sub_10039D528@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v134 = a2;
  v138 = a1;
  v127 = a5;
  v7 = sub_100008DE4(&qword_100643870);
  v8 = *(a4 + 8);
  v144 = a3;
  *&v145 = v7;
  *(&v145 + 1) = v8;
  *&v146 = sub_100042B08(&qword_100643878, &qword_100643870);
  sub_1004D9D6C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v144 = AssociatedTypeWitness;
  *&v145 = &type metadata for Color;
  *(&v145 + 1) = v10;
  *&v146 = &protocol witness table for Color;
  sub_1004D9D6C();
  sub_1004DA44C();
  sub_1004DA32C();
  swift_getTupleTypeMetadata2();
  v118 = sub_1004DBE0C();
  v11 = v8;
  WitnessTable = swift_getWitnessTable();
  v12 = sub_1004DBB4C();
  v119 = *(v12 - 8);
  __chkstk_darwin(v12);
  v115 = &v95 - v13;
  v121 = v14;
  v15 = sub_1004DA32C();
  v120 = *(v15 - 8);
  __chkstk_darwin(v15);
  v117 = &v95 - v16;
  v122 = v17;
  v126 = sub_1004DA32C();
  v123 = *(v126 - 8);
  __chkstk_darwin(v126);
  v125 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v124 = &v95 - v20;
  v111 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(v21);
  v110 = &v95 - v22;
  v144 = a3;
  *&v145 = &type metadata for Color;
  *(&v145 + 1) = &type metadata for EmptyView;
  *&v146 = v8;
  *(&v146 + 1) = &protocol witness table for Color;
  v147 = &protocol witness table for EmptyView;
  v23 = sub_1004DA37C();
  v100 = *(v23 - 8);
  __chkstk_darwin(v23);
  v99 = &v95 - v24;
  v101 = v25;
  v26 = sub_1004DA32C();
  v106 = *(v26 - 8);
  __chkstk_darwin(v26);
  v103 = &v95 - v27;
  v114 = AssociatedTypeWitness;
  v112 = v10;
  v28 = sub_1004D9E4C();
  v107 = v26;
  v104 = v28;
  v29 = sub_1004DA32C();
  v108 = *(v29 - 8);
  __chkstk_darwin(v29);
  v105 = &v95 - v30;
  v109 = v31;
  v32 = a3;
  v113 = sub_1004DA32C();
  v130 = *(v113 - 8);
  __chkstk_darwin(v113);
  v137 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v133 = &v95 - v35;
  v144 = a3;
  *&v145 = &type metadata for LinearGradient;
  *(&v145 + 1) = v8;
  *&v146 = &protocol witness table for LinearGradient;
  v36 = sub_1004D9D6C();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v95 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v42 = &v95 - v41;
  v129 = v43;
  v131 = sub_1004DE7CC();
  v136 = *(v131 - 8);
  __chkstk_darwin(v131);
  v45 = &v95 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v135 = &v95 - v47;
  v132 = a4;
  v128 = type metadata accessor for MaterialyView.Style.Specs();
  v48 = v138 + *(v128 + 40);
  if (*v48)
  {
    v144 = *v48;
    v145 = *(v48 + 8);
    v146 = *(v48 + 24);
    sub_10039BAB8(&v144, 256, v32, &type metadata for LinearGradient);
    v49 = v129;
    v50 = swift_getWitnessTable();
    sub_100339DC8(v39, v49, v50);
    v51 = *(v37 + 8);
    v51(v39, v49);
    v52 = v50;
    v11 = v8;
    sub_100339DC8(v42, v49, v52);
    v51(v42, v49);
    (*(v37 + 32))(v45, v39, v49);
    (*(v37 + 56))(v45, 0, 1, v49);
  }

  else
  {
    (*(v37 + 56))(v45, 1, 1, v129);
    swift_getWitnessTable();
  }

  v53 = v136;
  v54 = *(v136 + 16);
  v97 = v136 + 16;
  v98 = v54;
  v55 = v131;
  v54(v135, v45, v131);
  v56 = *(v53 + 8);
  v136 = v53 + 8;
  v102 = v56;
  v56(v45, v55);
  v144 = sub_1004DB87C();
  v57 = v99;
  v95 = v32;
  sub_10039B844(&v144, 1, v32, &type metadata for Color, v11, &protocol witness table for Color, v99);

  v58 = v101;
  v59 = swift_getWitnessTable();
  v60 = v103;
  sub_1004DB69C();
  (*(v100 + 8))(v57, v58);
  v61 = v110;
  sub_1004DA2EC();
  v143[11] = v59;
  v143[12] = &protocol witness table for _ShadowEffect;
  v62 = v107;
  v63 = swift_getWitnessTable();
  v64 = v105;
  v65 = v114;
  sub_1004DB73C();
  (*(v111 + 8))(v61, v65);
  (*(v106 + 8))(v60, v62);
  v66 = v95;
  v67 = v132;
  type metadata accessor for MaterialyView.Style.Specs.Shadow();
  v68 = swift_getWitnessTable();
  v143[9] = v63;
  v143[10] = v68;
  v69 = v109;
  v70 = swift_getWitnessTable();
  v71 = v45;
  v72 = v137;
  sub_1004DB72C();
  (*(v108 + 8))(v64, v69);
  v143[7] = v70;
  v143[8] = &protocol witness table for _BlendModeEffect;
  v73 = v113;
  v111 = swift_getWitnessTable();
  sub_100339DC8(v72, v73, v111);
  v74 = *(v130 + 8);
  v112 = v130 + 8;
  v114 = v74;
  v75 = (v74)(v72, v73);
  __chkstk_darwin(v75);
  *(&v95 - 4) = v66;
  *(&v95 - 3) = v67;
  v76 = v138;
  *(&v95 - 2) = v134;
  *(&v95 - 1) = v76;
  sub_1004DBD1C();
  v77 = v115;
  sub_1004DBB3C();
  v78 = v121;
  v79 = swift_getWitnessTable();
  v80 = v117;
  sub_1004DB4EC();
  (*(v119 + 8))(v77, v78);
  v143[5] = v79;
  v143[6] = &protocol witness table for _CompositingGroupEffect;
  v81 = v122;
  v82 = swift_getWitnessTable();
  v83 = v125;
  sub_1004DB72C();
  (*(v120 + 8))(v80, v81);
  v143[3] = v82;
  v143[4] = &protocol witness table for _BlendModeEffect;
  v84 = v126;
  v138 = swift_getWitnessTable();
  v85 = v124;
  sub_100339DC8(v83, v84, v138);
  v86 = v123;
  v87 = *(v123 + 8);
  v87(v83, v84);
  v96 = v71;
  v88 = v131;
  v98(v71, v135, v131);
  v144 = v71;
  v89 = v137;
  v90 = v133;
  (*(v130 + 16))(v137, v133, v73);
  *&v145 = v89;
  (*(v86 + 16))(v83, v85, v84);
  *(&v145 + 1) = v83;
  v143[0] = v88;
  v143[1] = v73;
  v143[2] = v84;
  v139 = swift_getWitnessTable();
  v91 = v88;
  v140 = swift_getWitnessTable();
  v141 = v111;
  v142 = v138;
  sub_10039B8E8(&v144, 3uLL, v143);
  v87(v85, v84);
  v92 = v114;
  v114(v90, v73);
  v93 = v102;
  v102(v135, v91);
  v87(v83, v84);
  v92(v137, v73);
  return v93(v96, v91);
}

uint64_t sub_10039E5D8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v57 = a2;
  v52 = a1;
  v68 = a5;
  v7 = sub_1004DBDAC();
  v66 = *(v7 - 8);
  v67 = v7;
  __chkstk_darwin(v7);
  v65 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v56 = v47 - v10;
  v59 = AssociatedTypeWitness;
  v58 = *(swift_getAssociatedConformanceWitness() + 8);
  v72 = AssociatedTypeWitness;
  v73 = &type metadata for Color;
  v74 = v58;
  v75 = &protocol witness table for Color;
  v55 = sub_1004D9D6C();
  v64 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = v47 - v11;
  sub_1004DA44C();
  v12 = sub_1004DA32C();
  v13 = *(v12 - 8);
  v61 = v12;
  v62 = v13;
  __chkstk_darwin(v12);
  v54 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v60 = v47 - v16;
  v17 = sub_100004CB8(&qword_100643870);
  __chkstk_darwin(v17);
  v19 = v47 - v18;
  v47[1] = a4;
  v20 = *(a4 + 8);
  v21 = sub_100042B08(&qword_100643878, &qword_100643870);
  v72 = a3;
  v73 = v17;
  v74 = v20;
  v75 = v21;
  v22 = sub_1004D9D6C();
  v48 = *(v22 - 8);
  v23 = v48;
  __chkstk_darwin(v22);
  v25 = v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v49 = v47 - v27;
  type metadata accessor for MaterialyView.Style.Specs();
  sub_1004D9DEC();
  sub_10039BAB8(v19, 256, a3, v17);
  sub_10001074C(v19, &qword_100643870);
  WitnessTable = swift_getWitnessTable();
  sub_100339DC8(v25, v22, WitnessTable);
  v28 = *(v23 + 8);
  v51 = v23 + 8;
  v57 = v28;
  v28(v25, v22);
  v29 = v56;
  sub_1004DA2EC();
  v72 = sub_1004DB87C();
  v30 = v53;
  v31 = v59;
  sub_10039BAB8(&v72, 256, v59, &type metadata for Color);

  (*(v63 + 8))(v29, v31);
  v33 = v65;
  v32 = v66;
  v34 = v67;
  (*(v66 + 104))(v65, enum case for BlendMode.destinationOut(_:), v67);
  v35 = v55;
  v36 = swift_getWitnessTable();
  v37 = v54;
  sub_1004DB72C();
  (*(v32 + 8))(v33, v34);
  (*(v64 + 8))(v30, v35);
  v71[2] = v36;
  v71[3] = &protocol witness table for _BlendModeEffect;
  v38 = v61;
  v39 = swift_getWitnessTable();
  v40 = v60;
  sub_100339DC8(v37, v38, v39);
  v41 = v62;
  v42 = *(v62 + 8);
  v43 = v37;
  v42(v37, v38);
  v44 = v49;
  (*(v48 + 16))(v25, v49, v22);
  v72 = v25;
  (*(v41 + 16))(v43, v40, v38);
  v73 = v43;
  v71[0] = v22;
  v71[1] = v38;
  v69 = WitnessTable;
  v70 = v39;
  sub_10039B8E8(&v72, 2uLL, v71);
  v42(v40, v38);
  v45 = v57;
  v57(v44, v22);
  v42(v43, v38);
  return v45(v25, v22);
}

uint64_t sub_10039ED54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a5;
  v42 = a4;
  v37 = a3;
  v38 = a8;
  v40 = a2;
  v47 = a9;
  v48 = a1;
  v33[1] = a10;
  v41 = *(a8 - 8);
  v45 = a12;
  __chkstk_darwin(a1);
  v39 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1004DAABC();
  __chkstk_darwin(v46);
  v43 = v33 - v15;
  v36 = *(a7 - 8);
  __chkstk_darwin(v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a6 - 8);
  v19 = v34;
  __chkstk_darwin(v20);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1004DA0BC();
  __chkstk_darwin(v23);
  WitnessTable = swift_getWitnessTable();
  v49 = v23;
  v50 = a7;
  v51 = WitnessTable;
  v52 = a11;
  v35 = sub_1004D9D6C();
  v25 = __chkstk_darwin(v35);
  v26 = *(v19 + 16);
  v33[0] = a6;
  v26(v22, v48, a6, v25);
  sub_1004DA0AC();
  v27 = v36;
  v28 = v40;
  (*(v36 + 16))(v18, v40, a7);
  sub_1004D9D5C();
  v29 = v41;
  v30 = v38;
  v31 = v44;
  (*(v41 + 16))(v39, v44, v38);
  sub_1004DBD1C();
  (*(v29 + 8))(v31, v30);
  (*(v27 + 8))(v28, a7);
  (*(v34 + 8))(v48, v33[0]);
  sub_1004DAAAC();
  return sub_1004DA31C();
}

uint64_t sub_10039F174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for MaterialyView.Style.Specs.FillColor() + 36);
  v6 = sub_1004DBDAC();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t sub_10039F200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = a1;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  *(a3 + 24) = a6;
  v8 = *(type metadata accessor for MaterialyView.Style.Specs.Shadow() + 44);
  v9 = sub_1004DBDAC();
  v10 = *(*(v9 - 8) + 32);

  return v10(a3 + v8, a2, v9);
}

uint64_t sub_10039F294@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = type metadata accessor for MaterialyView.Style.Specs.FillColor();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v13 = type metadata accessor for MaterialyView.Style.Specs();
  v14 = (a6 + v13[9]);
  v15 = a2[1];
  *v14 = *a2;
  v14[1] = v15;
  v14[2] = a2[2];
  v16 = a6 + v13[10];
  v17 = *(a3 + 16);
  *v16 = *a3;
  *(v16 + 16) = v17;
  *(v16 + 32) = *(a3 + 32);
  v18 = v13[11];
  v19 = type metadata accessor for MaterialyView.Style.Specs.Shadow();
  v22 = *(*(v19 - 8) + 32);
  (v22)((v19 - 8), a6 + v18, a4, v19);
  v20 = a6 + v13[12];

  return v22(v20, a5, v19);
}

uint64_t MaterialyButtonStyle.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = swift_getKeyPath();
  *(a1 + 8) = 0;
  type metadata accessor for MaterialyButtonStyle();
  sub_1003275B4();
  sub_1004D9EDC();
  return sub_1004D9EDC();
}

uint64_t sub_10039F4B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1004DA6DC();
  *a1 = result & 1;
  return result;
}

uint64_t type metadata accessor for MaterialyButtonStyle()
{
  result = qword_1006439F0;
  if (!qword_1006439F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MaterialyButtonStyle.makeBody(configuration:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100004CB8(&qword_100643880);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  *v7 = sub_1004DA90C();
  *(v7 + 1) = 0x4020000000000000;
  v7[16] = 0;
  v8 = sub_100004CB8(&qword_100643888);
  sub_10039F6A4(a1, v2, &v7[*(v8 + 44)]);
  if (sub_1003A03F4())
  {
    v9 = sub_1004DABEC();
  }

  else
  {
    v9 = sub_1004DAC0C();
  }

  v10 = v9;
  sub_100047F38(v7, a2, &qword_100643880);
  result = sub_100004CB8(qword_100643890);
  *(a2 + *(result + 36)) = v10;
  return result;
}

uint64_t sub_10039F6A4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v92 = a2;
  v112 = a3;
  v110 = sub_1004DA96C();
  v108 = *(v110 - 8);
  __chkstk_darwin(v110);
  v107 = &v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_100004CB8(&qword_100643C58);
  __chkstk_darwin(v102);
  v103 = &v86 - v5;
  v104 = sub_100004CB8(&qword_100643C60);
  __chkstk_darwin(v104);
  v106 = &v86 - v6;
  v105 = sub_100004CB8(&qword_100643C68);
  __chkstk_darwin(v105);
  v111 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v101 = &v86 - v9;
  __chkstk_darwin(v10);
  v109 = &v86 - v11;
  v12 = sub_100004CB8(&qword_100641CB0);
  __chkstk_darwin(v12 - 8);
  v94 = &v86 - v13;
  v14 = sub_1004DA7EC();
  v15 = *(v14 - 8);
  v88 = v14;
  v89 = v15;
  __chkstk_darwin(v14);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1004DAC8C();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_100004CB8(&qword_100643C70);
  __chkstk_darwin(v22);
  v24 = &v86 - v23;
  v25 = sub_100004CB8(&qword_100643C78);
  v90 = *(v25 - 8);
  v91 = v25;
  __chkstk_darwin(v25);
  v86 = &v86 - v26;
  v87 = sub_100004CB8(&qword_100643C80) - 8;
  __chkstk_darwin(v87);
  v28 = &v86 - v27;
  v93 = sub_100004CB8(&qword_100643C88);
  __chkstk_darwin(v93);
  v113 = &v86 - v29;
  v95 = sub_100004CB8(&qword_100643C90);
  __chkstk_darwin(v95);
  v98 = &v86 - v30;
  v97 = sub_100004CB8(&qword_100643C98);
  __chkstk_darwin(v97);
  v100 = &v86 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v96 = &v86 - v33;
  __chkstk_darwin(v34);
  v99 = &v86 - v35;
  sub_1004DAC9C();
  if (sub_1004DACAC())
  {
    v36 = 0.92;
  }

  else
  {
    v36 = 1.0;
  }

  sub_1004DBE7C();
  v38 = v37;
  v40 = v39;
  (*(v19 + 32))(v24, v21, v18);
  v41 = &v24[*(v22 + 36)];
  *v41 = v36;
  *(v41 + 1) = v36;
  *(v41 + 2) = v38;
  *(v41 + 3) = v40;
  sub_1004DA7DC();
  sub_1003A19F0();
  sub_1003A1D64(&qword_100643CB0, &type metadata accessor for IconOnlyLabelStyle);
  v42 = v86;
  v43 = v88;
  sub_1004DB3BC();
  v44 = a1;
  (*(v89 + 8))(v17, v43);
  sub_10001074C(v24, &qword_100643C70);
  type metadata accessor for MaterialyButtonStyle();
  sub_100004CB8(&qword_10063FF20);
  sub_1004D9EEC();
  sub_1004DB03C();
  v45 = sub_1004DB02C();
  v46 = v94;
  (*(*(v45 - 8) + 56))(v94, 1, 1, v45);
  v47 = sub_1004DB07C();
  sub_10001074C(v46, &qword_100641CB0);
  KeyPath = swift_getKeyPath();
  (*(v90 + 32))(v28, v42, v91);
  v49 = v28;
  v50 = &v28[*(v87 + 44)];
  *v50 = KeyPath;
  v50[1] = v47;
  v94 = v44;
  LOBYTE(v91) = sub_1004DACAC() & 1;
  LODWORD(v91) = v91;
  sub_1004D9EEC();
  sub_1004D9EEC();
  sub_1004DBD1C();
  sub_1004DA45C();
  *(&v114[3] + 7) = *(&v114[10] + 8);
  *(&v114[4] + 7) = *(&v114[11] + 8);
  *(&v114[5] + 7) = *(&v114[12] + 8);
  *(&v114[6] + 7) = *(&v114[13] + 8);
  *(v114 + 7) = *(&v114[7] + 8);
  *(&v114[1] + 7) = *(&v114[8] + 8);
  *(&v114[2] + 7) = *(&v114[9] + 8);
  v51 = sub_1004DBD1C();
  v53 = v52;
  v54 = v113;
  sub_100047F38(v49, v113, &qword_100643C80);
  v55 = v54 + *(v93 + 36);
  v56 = v114[5];
  *(v55 + 65) = v114[4];
  *(v55 + 81) = v56;
  *(v55 + 97) = v114[6];
  v57 = v114[1];
  *(v55 + 1) = v114[0];
  *(v55 + 17) = v57;
  v58 = v114[3];
  *(v55 + 33) = v114[2];
  *v55 = v91;
  v59 = *(&v114[6] + 15);
  *(v55 + 49) = v58;
  *(v55 + 112) = v59;
  *(v55 + 120) = v51;
  *(v55 + 128) = v53;
  sub_1004D9EEC();
  sub_1004D9EEC();
  sub_1004DBD1C();
  sub_1004DA45C();
  v60 = v98;
  sub_100047F38(v113, v98, &qword_100643C88);
  v61 = (v60 + *(v95 + 36));
  v62 = *(&v114[19] + 8);
  v61[4] = *(&v114[18] + 8);
  v61[5] = v62;
  v61[6] = *(&v114[20] + 8);
  v63 = *(&v114[15] + 8);
  *v61 = *(&v114[14] + 8);
  v61[1] = v63;
  v64 = *(&v114[17] + 8);
  v61[2] = *(&v114[16] + 8);
  v61[3] = v64;
  v65 = sub_1004DBD6C();
  LOBYTE(v51) = sub_1004DACAC();
  v66 = v96;
  sub_100047F38(v60, v96, &qword_100643C90);
  v67 = v66 + *(v97 + 36);
  *v67 = v65;
  *(v67 + 8) = v51 & 1;
  v68 = v99;
  sub_100047F38(v66, v99, &qword_100643C98);
  v69 = v103;
  sub_1004DAC9C();
  v70 = swift_getKeyPath();
  v71 = v69 + *(v102 + 36);
  *v71 = v70;
  *(v71 + 8) = 1;
  v72 = v107;
  sub_1004DA95C();
  sub_1003A1C7C();
  sub_1003A1D64(&qword_100643CD0, &type metadata accessor for TitleOnlyLabelStyle);
  v73 = v106;
  v74 = v110;
  sub_1004DB3BC();
  (*(v108 + 8))(v72, v74);
  sub_10001074C(v69, &qword_100643C58);
  v75 = sub_1004DB0EC();
  v76 = swift_getKeyPath();
  v77 = (v73 + *(v104 + 36));
  *v77 = v76;
  v77[1] = v75;
  if (sub_1004DACAC())
  {
    v78 = 0.8;
  }

  else
  {
    v78 = 1.0;
  }

  v79 = v101;
  sub_100047F38(v73, v101, &qword_100643C60);
  *(v79 + *(v105 + 36)) = v78;
  v80 = v109;
  sub_100047F38(v79, v109, &qword_100643C68);
  v81 = v100;
  sub_1000108DC(v68, v100, &qword_100643C98);
  v82 = v111;
  sub_1000108DC(v80, v111, &qword_100643C68);
  v83 = v112;
  sub_1000108DC(v81, v112, &qword_100643C98);
  v84 = sub_100004CB8(&qword_100643CD8);
  sub_1000108DC(v82, v83 + *(v84 + 48), &qword_100643C68);
  sub_10001074C(v80, &qword_100643C68);
  sub_10001074C(v68, &qword_100643C98);
  sub_10001074C(v82, &qword_100643C68);
  return sub_10001074C(v81, &qword_100643C98);
}

uint64_t sub_1003A03F4()
{
  v1 = sub_1004DA74C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_1004DDF8C();
    v6 = sub_1004DAECC();
    sub_1004D953C();

    sub_1004DA73C();
    swift_getAtKeyPath();
    sub_10036E0E0(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_1003A059C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MaterialyView.Style();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1003A062C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if (v5 >= 0xFD)
      {
        return (*(v4 + 48))();
      }

      v15 = *(a1 + v6);
      if (v15 >= 2)
      {
        v16 = (v15 + 2147483646) & 0x7FFFFFFF;
      }

      else
      {
        v16 = -1;
      }

      if (v16 + 1 >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

unsigned int *sub_1003A07B0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFD)
  {
    v7 = 253;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFD)
      {
        *(result + v8) = a2 + 2;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

uint64_t sub_1003A0A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_100004CB8(&qword_10063FF20);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1003A0AD0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = -a2;
  }

  else
  {
    v7 = sub_100004CB8(&qword_10063FF20);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1003A0B7C()
{
  sub_1003A1748(319, &qword_100641940, &type metadata for Bool, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_1003A0C24();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1003A0C24()
{
  if (!qword_10063FFA8)
  {
    sub_1003275B4();
    v0 = sub_1004D9EFC();
    if (!v1)
    {
      atomic_store(v0, &qword_10063FFA8);
    }
  }
}

uint64_t sub_1003A0C80()
{
  sub_1004D9D6C();
  sub_1004DA44C();
  sub_1004DA32C();
  sub_1004D9D6C();
  sub_1004DE7CC();
  sub_1004DA37C();
  sub_1004DA32C();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1004D9E4C();
  sub_1004DA32C();
  sub_1004DA32C();
  sub_100008DE4(&qword_100643870);
  sub_100042B08(&qword_100643878, &qword_100643870);
  sub_1004D9D6C();
  sub_1004D9D6C();
  sub_1004DA32C();
  swift_getTupleTypeMetadata2();
  sub_1004DBE0C();
  swift_getWitnessTable();
  sub_1004DBB4C();
  sub_1004DA32C();
  sub_1004DA32C();
  swift_getTupleTypeMetadata3();
  sub_1004DBE0C();
  swift_getWitnessTable();
  sub_1004DBB4C();
  swift_getWitnessTable();
  sub_1004DA46C();
  sub_1004DA32C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1004DA37C();
  return swift_getWitnessTable();
}

unint64_t sub_1003A1084()
{
  result = qword_100643A30;
  if (!qword_100643A30)
  {
    sub_100008DE4(qword_100643890);
    sub_100042B08(&qword_100643A38, &qword_100643880);
    sub_100042B08(&qword_100643A40, qword_100643A48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100643A30);
  }

  return result;
}

uint64_t sub_1003A1168()
{
  result = sub_1004DBDAC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1003A11F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1004DBDAC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_1003A12B8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1004DBDAC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1003A135C()
{
  type metadata accessor for MaterialyView.Style.Specs.FillColor();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MaterialyView.Style.Specs.Stroke();
    if (v1 <= 0x3F)
    {
      sub_1003A1748(319, qword_100643B50, &type metadata for LinearGradient, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        type metadata accessor for MaterialyView.Style.Specs.Shadow();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1003A146C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MaterialyView.Style.Specs.FillColor();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 36) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for MaterialyView.Style.Specs.Shadow();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 44);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1003A15E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MaterialyView.Style.Specs.FillColor();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 36) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for MaterialyView.Style.Specs.Shadow();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 44);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_1003A1748(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1003A1798()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1003A17DC()
{
  type metadata accessor for UIOffset(319);
  if (v0 <= 0x3F)
  {
    sub_1004DBDAC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1003A188C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1004DBDAC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_1003A194C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1004DBDAC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_1003A19F0()
{
  result = qword_100643CA0;
  if (!qword_100643CA0)
  {
    sub_100008DE4(&qword_100643C70);
    sub_1003A1D64(&qword_100643CA8, &type metadata accessor for ButtonStyleConfiguration.Label);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100643CA0);
  }

  return result;
}

uint64_t sub_1003A1AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a3;
  v15 = *(a5 - 8);
  __chkstk_darwin(a1);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v18);
  v21 = &v27[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v22 + 16))(v21, v24, v23, v19);
  (*(v15 + 16))(v17, a1, a5);

  return sub_10039ED54(v21, v17, a2, v28, v25, a4, a5, &type metadata for EmptyView, a8, a6, a7, &protocol witness table for EmptyView);
}

unint64_t sub_1003A1C7C()
{
  result = qword_100643CB8;
  if (!qword_100643CB8)
  {
    sub_100008DE4(&qword_100643C58);
    sub_1003A1D64(&qword_100643CA8, &type metadata accessor for ButtonStyleConfiguration.Label);
    sub_100042B08(&qword_100643CC0, &qword_100643CC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100643CB8);
  }

  return result;
}

uint64_t sub_1003A1D64(unint64_t *a1, void (*a2)(uint64_t))
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

id NowPlaying.TrackTitleStackView.init()()
{
  v1 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  sub_1003A5E70(v2, &v0[v1], type metadata accessor for NowPlaying.TrackMetadata);
  v3 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier];
  *v3 = 0;
  *(v3 + 1) = 0;
  v4 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v27 = v6;
  *(&v27 + 1) = v8;
  LOBYTE(v28) = 0;
  BYTE8(v28) = 0;
  *&v29 = 0x4040000000000000;
  *(&v29 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v30 = leading;
  *(&v30 + 1) = bottom;
  *&v31 = trailing;
  v32 = 0uLL;
  *(&v31 + 1) = 1;
  v33[0] = v6;
  v33[1] = v8;
  v34 = 0;
  v35 = 0;
  v36 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v38 = leading;
  v39 = bottom;
  v40 = trailing;
  v42 = 0;
  v43 = 0;
  v41 = 1;
  sub_1002CD9A0(&v27, v50);
  sub_1002CD9FC(v33);
  v12 = v30;
  *(v4 + 2) = v29;
  *(v4 + 3) = v12;
  v13 = v32;
  *(v4 + 4) = v31;
  *(v4 + 5) = v13;
  v14 = v28;
  *v4 = v27;
  *(v4 + 1) = v14;
  v15 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  v16 = [v5 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v17 = [v7 secondaryLabelColor];
  *&v44 = v16;
  *(&v44 + 1) = v17;
  LOBYTE(v45) = 0;
  BYTE8(v45) = 0;
  *&v46 = 0x4040000000000000;
  *(&v46 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v47 = leading;
  *(&v47 + 1) = bottom;
  *&v48 = trailing;
  v49 = 0uLL;
  *(&v48 + 1) = 1;
  v50[0] = v16;
  v50[1] = v17;
  v51 = 0;
  v52 = 0;
  v53 = 0x4040000000000000;
  v54 = NSDirectionalEdgeInsetsZero.top;
  v55 = leading;
  v56 = bottom;
  v57 = trailing;
  v59 = 0;
  v60 = 0;
  v58 = 1;
  sub_1002CD9A0(&v44, v26);
  sub_1002CD9FC(v50);
  v18 = v47;
  *(v15 + 2) = v46;
  *(v15 + 3) = v18;
  v19 = v49;
  *(v15 + 4) = v48;
  *(v15 + 5) = v19;
  v20 = v45;
  *v15 = v44;
  *(v15 + 1) = v20;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer] = 0;
  *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition] = 0;
  v25.receiver = v0;
  v25.super_class = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v21 = objc_msgSendSuper2(&v25, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = *&sub_1003A58EC()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  v23 = *&sub_1003A5C74()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v22 addCoordinatedMarqueeView:v23];

  return v21;
}

char *NowPlaying.TrackTitleStackView.init(titleAttributes:subtitleAttributes:)(_OWORD *a1, _OWORD *a2)
{
  v5 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  v6 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  sub_1003A5E70(v6, &v2[v5], type metadata accessor for NowPlaying.TrackMetadata);
  v7 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  v9 = objc_opt_self();
  v10 = [v9 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v11 = objc_opt_self();
  v12 = [v11 labelColor];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v50 = v10;
  *(&v50 + 1) = v12;
  LOBYTE(v51) = 0;
  BYTE8(v51) = 0;
  *&v52 = 0x4040000000000000;
  *(&v52 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v53 = leading;
  *(&v53 + 1) = bottom;
  *&v54 = trailing;
  v55 = 0uLL;
  *(&v54 + 1) = 1;
  v56[0] = v10;
  v56[1] = v12;
  v57 = 0;
  v58 = 0;
  v59 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v61 = leading;
  v62 = bottom;
  v63 = trailing;
  v65 = 0;
  v66 = 0;
  v64 = 1;
  sub_1002CD9A0(&v50, v85);
  sub_1002CD9FC(v56);
  v16 = v53;
  *(v8 + 2) = v52;
  *(v8 + 3) = v16;
  v17 = v55;
  *(v8 + 4) = v54;
  *(v8 + 5) = v17;
  v18 = v51;
  *v8 = v50;
  *(v8 + 1) = v18;
  v19 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  v20 = [v9 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v21 = [v11 secondaryLabelColor];
  *&v67 = v20;
  *(&v67 + 1) = v21;
  LOBYTE(v68) = 0;
  BYTE8(v68) = 0;
  *&v69 = 0x4040000000000000;
  *(&v69 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v70 = leading;
  *(&v70 + 1) = bottom;
  *&v71 = trailing;
  v72 = 0uLL;
  *(&v71 + 1) = 1;
  v73[0] = v20;
  v73[1] = v21;
  v74 = 0;
  v75 = 0;
  v76 = 0x4040000000000000;
  v77 = NSDirectionalEdgeInsetsZero.top;
  v78 = leading;
  v79 = bottom;
  v80 = trailing;
  v83 = 0;
  v81 = 1;
  v82 = 0;
  sub_1002CD9A0(&v67, v85);
  sub_1002CD9FC(v73);
  v22 = v70;
  *(v19 + 2) = v69;
  *(v19 + 3) = v22;
  v23 = v72;
  *(v19 + 4) = v71;
  *(v19 + 5) = v23;
  v24 = v68;
  *v19 = v67;
  *(v19 + 1) = v24;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer] = 0;
  *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView_transition] = 0;
  v49.receiver = v2;
  v49.super_class = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v25 = objc_msgSendSuper2(&v49, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v26 = &v25[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v27 = *(v26 + 1);
  v84[0] = *v26;
  v84[1] = v27;
  v28 = *(v26 + 2);
  v29 = *(v26 + 3);
  v30 = *(v26 + 5);
  v84[4] = *(v26 + 4);
  v84[5] = v30;
  v84[2] = v28;
  v84[3] = v29;
  v31 = a1[5];
  v33 = a1[2];
  v32 = a1[3];
  *(v26 + 4) = a1[4];
  *(v26 + 5) = v31;
  *(v26 + 2) = v33;
  *(v26 + 3) = v32;
  v34 = a1[1];
  *v26 = *a1;
  *(v26 + 1) = v34;
  v35 = v25;
  sub_1002CD9A0(a1, v85);
  sub_1002CD9FC(v84);
  v36 = &v35[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v37 = *(v36 + 1);
  v85[0] = *v36;
  v85[1] = v37;
  v38 = *(v36 + 2);
  v39 = *(v36 + 3);
  v40 = *(v36 + 5);
  v85[4] = *(v36 + 4);
  v85[5] = v40;
  v85[2] = v38;
  v85[3] = v39;
  v41 = a2[5];
  v43 = a2[2];
  v42 = a2[3];
  *(v36 + 4) = a2[4];
  *(v36 + 5) = v41;
  *(v36 + 2) = v43;
  *(v36 + 3) = v42;
  v44 = a2[1];
  *v36 = *a2;
  *(v36 + 1) = v44;
  sub_1002CD9A0(a2, &v48);
  sub_1002CD9FC(v85);
  v45 = *&sub_1003A58EC()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  v46 = *&sub_1003A5C74()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v45 addCoordinatedMarqueeView:v46];

  sub_1002CD9FC(a2);
  sub_1002CD9FC(a1);

  return v35;
}

uint64_t NowPlaying.TrackTitleStackView.setMetadata(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100004CB8(&qword_100643D10);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003A5E70(a1, v13, type metadata accessor for NowPlaying.TrackMetadata);
  v14 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  sub_1003A5E0C(v13, v2 + v14);
  swift_endAccess();
  v15 = sub_1003A58EC();
  sub_1003A5E70(a1 + *(v11 + 32), v9, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v16 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
  v17 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_1000108DC(&v15[v17], v6, &qword_100643D10);
  swift_beginAccess();
  sub_1003A5ED8(v9, &v15[v17]);
  swift_endAccess();
  sub_1003AA68C(v6);

  sub_10001074C(v6, &qword_100643D10);
  sub_10001074C(v9, &qword_100643D10);
  v18 = sub_1003A5C74();
  sub_1000108DC(a1 + *(v11 + 36), v9, &qword_100643D10);
  v19 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_1000108DC(&v18[v19], v6, &qword_100643D10);
  swift_beginAccess();
  sub_1003A5ED8(v9, &v18[v19]);
  swift_endAccess();
  sub_1003AA68C(v6);

  sub_10001074C(v6, &qword_100643D10);
  return sub_10001074C(v9, &qword_100643D10);
}

uint64_t sub_1003A2840(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003A5E70(a1, v6, type metadata accessor for NowPlaying.TrackMetadata);
  v7 = *a2;
  v8 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  sub_1003A5E0C(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t NowPlaying.TrackTitleStackView.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  return sub_1003A5E70(v1 + v3, a1, type metadata accessor for NowPlaying.TrackMetadata);
}

uint64_t NowPlaying.TrackTitleStackView.debugIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t NowPlaying.TrackTitleStackView.debugIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.init(isEnabled:contentGap:fadeInsets:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = a7;
  return result;
}

double NowPlaying.TrackTitleStackView.Label.Attributes.init(font:color:isHidden:marquee:action:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _OWORD *a8@<X8>)
{
  v9 = a4[1];
  *&v15[7] = *a4;
  *&v15[23] = v9;
  *&v15[39] = a4[2];
  *&v17[1] = *v15;
  *&v17[17] = *&v15[16];
  *&v17[33] = *&v15[32];
  *&v16 = a1;
  *(&v16 + 1) = a2;
  v17[0] = a3;
  *&v17[48] = *&v15[47];
  *&v17[56] = a5;
  *&v18 = a6;
  *(&v18 + 1) = a7;
  v19[0] = a1;
  v19[1] = a2;
  v20 = a3;
  *&v23[15] = *&v15[47];
  v24 = a5;
  *v23 = *&v15[32];
  v22 = *&v15[16];
  v21 = *v15;
  v25 = a6;
  v26 = a7;
  sub_1002CD9A0(&v16, v14);
  sub_1002CD9FC(v19);
  v10 = *&v17[32];
  a8[2] = *&v17[16];
  a8[3] = v10;
  v11 = v18;
  a8[4] = *&v17[48];
  a8[5] = v11;
  result = *&v16;
  v13 = *v17;
  *a8 = v16;
  a8[1] = v13;
  return result;
}

id sub_1003A2B9C()
{
  v1 = sub_100004CB8(&qword_100643D20);
  __chkstk_darwin(v1 - 8);
  v60 = &v58 - v2;
  v3 = v0;
  v65 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v4 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v4)
  {
    v5 = *(*v4 + 424);
    v6 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
    v7 = sub_1003ADE4C(&qword_100643D18, type metadata accessor for NowPlaying.TrackTitleStackView);

    v5(&v75, v3, v6, v7);

    if (v75)
    {
      v8 = v76;
      v9 = sub_1003ACED8(v75, v76);

      sub_1003AC254(v8);
      if (v9 >> 62)
      {
        goto LABEL_25;
      }

      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v11 = &v3[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
      swift_beginAccess();
      if (v10)
      {
        v12 = 0;
        v63 = v9 & 0xFFFFFFFFFFFFFF8;
        v64 = v9 & 0xC000000000000001;
        v61 = v10;
        v62 = v9;
        do
        {
          if (v64)
          {
            v14 = sub_1004DEB2C();
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_21:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v12 >= *(v63 + 16))
            {
              __break(1u);
LABEL_25:
              v10 = sub_1004DED5C();
              goto LABEL_5;
            }

            v14 = *(v9 + 8 * v12 + 32);

            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_21;
            }
          }

          v16 = *(v11 + 5);
          v73 = *(v11 + 4);
          v74 = v16;
          v17 = *(v11 + 3);
          v71 = *(v11 + 2);
          v72 = v17;
          v18 = *(v11 + 1);
          v69 = *v11;
          v70 = v18;
          v19 = v14[1];
          v20 = v14[2];
          v21 = v14[3];
          v22 = v14[4];
          v23 = v14[6];
          v83[4] = v14[5];
          v83[5] = v23;
          v83[2] = v21;
          v83[3] = v22;
          v83[0] = v19;
          v83[1] = v20;
          v24 = v14[2];
          v77 = v14[1];
          v78 = v24;
          v25 = v14[3];
          v26 = v14[4];
          v27 = v14[6];
          v81 = v14[5];
          v82 = v27;
          v79 = v25;
          v80 = v26;
          memmove(v14 + 1, v11, 0x60uLL);
          sub_1002CD9A0(&v69, v68);
          sub_1002CD9A0(&v69, v68);
          sub_1002CD9A0(v83, v68);
          sub_1002CD9FC(&v77);
          sub_1003A98C8(v83);
          sub_1002CD9FC(v83);
          sub_1002CD9FC(&v69);
          v66 = v11[24];
          v28 = *&v3[v65];
          if (v28)
          {
            v29 = v3;
            v30 = *(*v28 + 256);

            v32 = v30(v31);

            if (v32 == 2)
            {
              v33 = *&v29[v65];
              if (v33)
              {
                v59 = *(*v33 + 208);

                v35 = v60;
                v59(v34);
                v3 = v29;

                v36 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v37 = (*(*(v36 - 8) + 48))(v35, 1, v36) == 1;
                sub_10001074C(v35, &qword_100643D20);
                v66 &= v37;
              }

              else
              {
                v3 = v29;
                v38 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v39 = v60;
                (*(*(v38 - 8) + 56))(v60, 1, 1, v38);
                sub_10001074C(v39, &qword_100643D20);
              }
            }

            else
            {
              v3 = v29;
            }

            v10 = v61;
            v9 = v62;
          }

          else
          {
          }

          v13 = *(v14 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
          [v13 setMarqueeEnabled:v66 withOptions:1];

          ++v12;
        }

        while (v15 != v10);
      }
    }
  }

  v40 = v3;
  v41 = sub_1003A58EC();
  v42 = &v3[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v43 = *(v42 + 5);
  v68[4] = *(v42 + 4);
  v68[5] = v43;
  v44 = *(v42 + 3);
  v68[2] = *(v42 + 2);
  v68[3] = v44;
  v45 = *(v42 + 1);
  v68[0] = *v42;
  v68[1] = v45;
  v46 = *(v41 + 1);
  v47 = *(v41 + 2);
  v48 = *(v41 + 3);
  v49 = *(v41 + 4);
  v50 = *(v41 + 6);
  v81 = *(v41 + 5);
  v82 = v50;
  v79 = v48;
  v80 = v49;
  v77 = v46;
  v78 = v47;
  v51 = *(v41 + 2);
  v69 = *(v41 + 1);
  v70 = v51;
  v52 = *(v41 + 3);
  v53 = *(v41 + 4);
  v54 = *(v41 + 6);
  v73 = *(v41 + 5);
  v74 = v54;
  v71 = v52;
  v72 = v53;
  memmove(v41 + 16, v42, 0x60uLL);
  sub_1002CD9A0(v68, v67);
  sub_1002CD9A0(v68, v67);
  sub_1002CD9A0(&v77, v67);
  sub_1002CD9FC(&v69);
  sub_1003A98C8(&v77);
  sub_1002CD9FC(&v77);
  sub_1002CD9FC(v68);

  v55 = *(v42 + 40);
  v67[0] = *(v42 + 24);
  v67[1] = v55;
  v67[2] = *(v42 + 56);

  sub_1003A8778(v56, v67);

  return [v40 setNeedsLayout];
}

uint64_t (*NowPlaying.TrackTitleStackView.titleAttributes.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003A320C;
}

id sub_1003A3224()
{
  v1 = sub_100004CB8(&qword_100643D20);
  __chkstk_darwin(v1 - 8);
  v60 = &v58 - v2;
  v3 = v0;
  v65 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v4 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v4)
  {
    v5 = *(*v4 + 424);
    v6 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
    v7 = sub_1003ADE4C(&qword_100643D18, type metadata accessor for NowPlaying.TrackTitleStackView);

    v5(v75, v3, v6, v7);

    if (v75[0])
    {
      v8 = v76;
      v9 = sub_1003ACFE4(v75[1], v76, v77);

      sub_1003AC254(v8);
      if (v9 >> 62)
      {
        goto LABEL_25;
      }

      v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v11 = &v3[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
      swift_beginAccess();
      if (v10)
      {
        v12 = 0;
        v63 = v9 & 0xFFFFFFFFFFFFFF8;
        v64 = v9 & 0xC000000000000001;
        v61 = v10;
        v62 = v9;
        do
        {
          if (v64)
          {
            v14 = sub_1004DEB2C();
            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
LABEL_21:
              __break(1u);
              break;
            }
          }

          else
          {
            if (v12 >= *(v63 + 16))
            {
              __break(1u);
LABEL_25:
              v10 = sub_1004DED5C();
              goto LABEL_5;
            }

            v14 = *(v9 + 8 * v12 + 32);

            v15 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              goto LABEL_21;
            }
          }

          v16 = *(v11 + 5);
          v73 = *(v11 + 4);
          v74 = v16;
          v17 = *(v11 + 3);
          v71 = *(v11 + 2);
          v72 = v17;
          v18 = *(v11 + 1);
          v69 = *v11;
          v70 = v18;
          v19 = v14[1];
          v20 = v14[2];
          v21 = v14[3];
          v22 = v14[4];
          v23 = v14[6];
          v84[4] = v14[5];
          v84[5] = v23;
          v84[2] = v21;
          v84[3] = v22;
          v84[0] = v19;
          v84[1] = v20;
          v24 = v14[2];
          v78 = v14[1];
          v79 = v24;
          v25 = v14[3];
          v26 = v14[4];
          v27 = v14[6];
          v82 = v14[5];
          v83 = v27;
          v80 = v25;
          v81 = v26;
          memmove(v14 + 1, v11, 0x60uLL);
          sub_1002CD9A0(&v69, v68);
          sub_1002CD9A0(&v69, v68);
          sub_1002CD9A0(v84, v68);
          sub_1002CD9FC(&v78);
          sub_1003A98C8(v84);
          sub_1002CD9FC(v84);
          sub_1002CD9FC(&v69);
          v66 = v11[24];
          v28 = *&v3[v65];
          if (v28)
          {
            v29 = v3;
            v30 = *(*v28 + 256);

            v32 = v30(v31);

            if (v32 == 2)
            {
              v33 = *&v29[v65];
              if (v33)
              {
                v59 = *(*v33 + 208);

                v35 = v60;
                v59(v34);
                v3 = v29;

                v36 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v37 = (*(*(v36 - 8) + 48))(v35, 1, v36) == 1;
                sub_10001074C(v35, &qword_100643D20);
                v66 &= v37;
              }

              else
              {
                v3 = v29;
                v38 = type metadata accessor for NowPlaying.TrackMetadata(0);
                v39 = v60;
                (*(*(v38 - 8) + 56))(v60, 1, 1, v38);
                sub_10001074C(v39, &qword_100643D20);
              }
            }

            else
            {
              v3 = v29;
            }

            v10 = v61;
            v9 = v62;
          }

          else
          {
          }

          v13 = *(v14 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
          [v13 setMarqueeEnabled:v66 withOptions:1];

          ++v12;
        }

        while (v15 != v10);
      }
    }
  }

  v40 = v3;
  v41 = sub_1003A5C74();
  v42 = &v3[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v43 = *(v42 + 5);
  v68[4] = *(v42 + 4);
  v68[5] = v43;
  v44 = *(v42 + 3);
  v68[2] = *(v42 + 2);
  v68[3] = v44;
  v45 = *(v42 + 1);
  v68[0] = *v42;
  v68[1] = v45;
  v46 = *(v41 + 1);
  v47 = *(v41 + 2);
  v48 = *(v41 + 3);
  v49 = *(v41 + 4);
  v50 = *(v41 + 6);
  v82 = *(v41 + 5);
  v83 = v50;
  v80 = v48;
  v81 = v49;
  v78 = v46;
  v79 = v47;
  v51 = *(v41 + 2);
  v69 = *(v41 + 1);
  v70 = v51;
  v52 = *(v41 + 3);
  v53 = *(v41 + 4);
  v54 = *(v41 + 6);
  v73 = *(v41 + 5);
  v74 = v54;
  v71 = v52;
  v72 = v53;
  memmove(v41 + 16, v42, 0x60uLL);
  sub_1002CD9A0(v68, v67);
  sub_1002CD9A0(v68, v67);
  sub_1002CD9A0(&v78, v67);
  sub_1002CD9FC(&v69);
  sub_1003A98C8(&v78);
  sub_1002CD9FC(&v78);
  sub_1002CD9FC(v68);

  v55 = *(v42 + 40);
  v67[0] = *(v42 + 24);
  v67[1] = v55;
  v67[2] = *(v42 + 56);

  sub_1003A8778(v56, v67);

  return [v40 setNeedsLayout];
}

double sub_1003A3810@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = v4[2];
  v6 = v4[4];
  v7 = v4[5];
  v18 = v4[3];
  v19 = v6;
  v20 = v7;
  v8 = v4[1];
  v15 = *v4;
  v16 = v8;
  v17 = v5;
  sub_1002CD9A0(&v15, v14);
  v9 = v18;
  v10 = v19;
  v11 = v16;
  a2[2] = v17;
  a2[3] = v9;
  v12 = v20;
  a2[4] = v10;
  a2[5] = v12;
  result = *&v15;
  *a2 = v15;
  a2[1] = v11;
  return result;
}

uint64_t sub_1003A38C4(_OWORD *a1, void *a2, void (*a3)(void))
{
  v6 = v3 + *a2;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 72);
  v10 = *(v6 + 80);
  v11 = *(v6 + 88);
  v12 = a1[3];
  *(v6 + 32) = a1[2];
  *(v6 + 48) = v12;
  v13 = a1[5];
  *(v6 + 64) = a1[4];
  *(v6 + 80) = v13;
  v14 = a1[1];
  *v6 = *a1;
  *(v6 + 16) = v14;
  sub_1002CD9A0(a1, v16);

  sub_1003AA98C(v9, v10, v11);
  a3();
  return sub_1002CD9FC(a1);
}

uint64_t (*NowPlaying.TrackTitleStackView.subtitleAttributes.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1003A39E8;
}

uint64_t sub_1003A3A00(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id sub_1003A3A44()
{
  v1 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView;
  v2 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(UIView) initWithFrame:{v4, v5, v6, v7}];
    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor:v9];

    [v0 addSubview:v8];
    v10 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

Swift::Void __swiftcall NowPlaying.TrackTitleStackView.layoutSubviews()()
{
  v1 = v0;
  v2 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v82.receiver = v0;
  v82.super_class = v2;
  objc_msgSendSuper2(&v82, "layoutSubviews");
  v3 = sub_1003A58EC();
  v4 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v5 = *(v4 + 3);
  v83[2] = *(v4 + 2);
  v83[3] = v5;
  v6 = *(v4 + 5);
  v83[4] = *(v4 + 4);
  v83[5] = v6;
  v7 = *(v4 + 1);
  v83[0] = *v4;
  v83[1] = v7;
  if (v7 == 1)
  {

    v8 = 0.0;
  }

  else
  {
    sub_1002CD9A0(v83, v76);
    v84.origin.x = 0.0;
    v84.origin.y = 0.0;
    v84.size.width = 0.0;
    v84.size.height = 0.0;
    if (CGRectGetHeight(v84) <= 0.0 || (v85.origin.x = 0.0, v85.origin.y = 0.0, v85.size.width = 0.0, v85.size.height = 0.0, CGRectGetHeight(v85) == 1.79769313e308))
    {
      [*&v3[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v3[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    v10 = v9;
    sub_1004DDF1C();
    v8 = v10 + v11;
    if (v10 + v11 > 0.0)
    {
      [*&v83[0] ascender];
      v8 = v8 + v12;
    }

    if (v8 <= 0.0)
    {
      sub_1002CD9FC(v83);
    }

    else
    {
      [*&v83[0] descender];
      v14 = v13;
      sub_1002CD9FC(v83);

      v8 = v8 - v14;
    }
  }

  v15 = sub_1003A5C74();
  v16 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v17 = *(v16 + 3);
  v78 = *(v16 + 2);
  v79 = v17;
  v18 = *(v16 + 5);
  v80 = *(v16 + 4);
  v81 = v18;
  v19 = *(v16 + 1);
  *v76 = *v16;
  v77 = v19;
  if (v19)
  {

    v20 = 0.0;
  }

  else
  {
    sub_1002CD9A0(v76, v70);
    v86.origin.x = 0.0;
    v86.origin.y = 0.0;
    v86.size.width = 0.0;
    v86.size.height = 0.0;
    if (CGRectGetHeight(v86) <= 0.0 || (v87.origin.x = 0.0, v87.origin.y = 0.0, v87.size.width = 0.0, v87.size.height = 0.0, CGRectGetHeight(v87) == 1.79769313e308))
    {
      [*&v15[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v15[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    v22 = v21;
    sub_1004DDF1C();
    v20 = v22 + v23;
    if (v22 + v23 > 0.0)
    {
      [v76[0] ascender];
      v20 = v20 + v24;
    }

    if (v20 <= 0.0)
    {
      sub_1002CD9FC(v76);
    }

    else
    {
      [v76[0] descender];
      v26 = v25;
      sub_1002CD9FC(v76);

      v20 = v20 - v26;
    }
  }

  [v1 bounds];
  Width = CGRectGetWidth(v88);
  v28 = v8 + v20;
  v29 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v30 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v30)
  {
    v31 = *(*v30 + 424);
    v32 = sub_1003ADE4C(&qword_100643D18, type metadata accessor for NowPlaying.TrackTitleStackView);

    v31(v70, v1, v2, v32);

    if (v70[0])
    {
      v33 = v71;
      if (!v71)
      {

        goto LABEL_50;
      }

      v34 = *(&v71 + 1);
      v35 = *(v4 + 3);
      v72 = *(v4 + 2);
      v73 = v35;
      v36 = *(v4 + 5);
      v74 = *(v4 + 4);
      v75 = v36;
      v37 = *(v4 + 1);
      *v70 = *v4;
      v71 = v37;
      if (v37)
      {

        if (!v34)
        {
          goto LABEL_49;
        }
      }

      else
      {
        sub_1003AC210(v33);
        sub_1002CD9A0(v70, v64);
        v89.origin.x = 0.0;
        v89.origin.y = 0.0;
        v89.size.width = 0.0;
        v89.size.height = 0.0;
        if (CGRectGetHeight(v89) <= 0.0 || (v90.origin.x = 0.0, v90.origin.y = 0.0, v90.size.width = 0.0, v90.size.height = 0.0, CGRectGetHeight(v90) == 1.79769313e308))
        {
          [*(v33 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
        }

        else
        {
          [*(v33 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{0.0, 0.0}];
        }

        v39 = v38;
        sub_1004DDF1C();
        v41 = v39 + v40;
        if (v39 + v40 > 0.0)
        {
          [v70[0] ascender];
          v41 = v41 + v42;
        }

        if (v41 <= 0.0)
        {
          sub_1002CD9FC(v70);
          if (!v34)
          {
LABEL_49:
            v93.origin.x = 0.0;
            v93.origin.y = 0.0;
            v93.size.width = Width;
            v93.size.height = v28;
            CGRectGetHeight(v93);

            sub_1003AC254(v33);
            goto LABEL_50;
          }
        }

        else
        {
          [v70[0] descender];
          sub_1002CD9FC(v70);
          if (!v34)
          {
            goto LABEL_49;
          }
        }
      }

      v43 = *(v16 + 3);
      v66 = *(v16 + 2);
      v67 = v43;
      v44 = *(v16 + 5);
      v68 = *(v16 + 4);
      v69 = v44;
      v45 = *(v16 + 1);
      *v64 = *v16;
      v65 = v45;
      if ((v45 & 1) == 0)
      {

        sub_1002CD9A0(v64, &v63);
        v91.origin.x = 0.0;
        v91.origin.y = 0.0;
        v91.size.width = 0.0;
        v91.size.height = 0.0;
        if (CGRectGetHeight(v91) <= 0.0 || (v92.origin.x = 0.0, v92.origin.y = 0.0, v92.size.width = 0.0, v92.size.height = 0.0, CGRectGetHeight(v92) == 1.79769313e308))
        {
          [*(v34 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
        }

        else
        {
          [*(v34 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{0.0, 0.0}];
        }

        v47 = v46;
        sub_1004DDF1C();
        v49 = v47 + v48;
        if (v47 + v48 > 0.0)
        {
          [v64[0] ascender];
          v49 = v49 + v50;
        }

        if (v49 > 0.0)
        {
          [v64[0] descender];
        }

        sub_1002CD9FC(v64);
      }

      goto LABEL_49;
    }
  }

LABEL_50:
  sub_1004DE3BC();
  v51 = sub_1003A3A44();
  *v70 = 0u;
  v71 = 0u;
  LOBYTE(v72) = 1;
  sub_1004DE3DC();
  [v51 setFrame:?];

  v52 = *&v1[v29];
  if (v52)
  {

    [v1 bounds];
    sub_1003A438C(v52, v53, v54, v55, v56);
  }

  else
  {
    v57 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel];
    v58 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel];

    [v1 bounds];
    sub_1003A4DD8(v57, v58, v59, v60, v61, v62);
  }

  sub_1003A89A8();
}

void *sub_1003A438C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  Gliss.Transition<>.outputs(in:)(&v74, a2, a3, a4, a5);
  v9 = v76;
  v8 = v77;
  v11 = v78;
  v10 = v79;
  v13 = v80;
  v12 = v81;
  v72 = v83;
  v73 = *&v82;
  v71 = v84;
  v60 = v86;
  v61 = v85;
  v58 = v88;
  v59 = v87;
  v56 = v90;
  v57 = v89;
  v54 = v92;
  v55 = v91;
  v46 = v93;
  v69 = v95;
  v70 = v94;
  v67 = v97;
  v68 = v96;
  v65 = v99;
  v66 = v98;
  v63 = v101;
  v64 = v100;
  v52 = v103;
  v53 = v102;
  v50 = v105;
  v51 = v104;
  v48 = v107;
  v49 = v106;
  v47 = v108;
  v62 = v109;
  v14 = *(*a1 + 424);
  v15 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v16 = sub_1003ADE4C(&qword_100643D18, type metadata accessor for NowPlaying.TrackTitleStackView);
  result = v14(&v74, v6, v15, v16);
  v18 = v74;
  if (v74)
  {
    v20 = v75;
    v19 = *&v76;
    v21 = v77;

    sub_1003AC210(v19);
    sub_1003AC254(v19);
    [v6 bounds];
    sub_1003A4DD8(v18, v20, v22, v23, v24, v25);
    v26 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view;
    [*(v18 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v9];
    if (v20)
    {
      [*(v20 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v9];
    }

    v27 = *(v18 + v26);
    v74 = v8;
    v75 = v11;
    v76 = v10;
    v77 = v13;
    v78 = v12;
    v79 = v73;
    v80 = v72;
    v81 = v71;
    v82 = v61;
    v83 = v60;
    v84 = v59;
    v85 = v58;
    v86 = v57;
    v87 = v56;
    v88 = v55;
    v89 = v54;
    [v27 setTransform3D:{&v74, v8, v11, *&v10, v13, v12}];
    if (v20)
    {
      v28 = *(v20 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
      v74 = v41;
      v75 = v42;
      v76 = v43;
      v77 = v44;
      v78 = v45;
      v79 = v73;
      v80 = v72;
      v81 = v71;
      v82 = v61;
      v83 = v60;
      v84 = v59;
      v85 = v58;
      v86 = v57;
      v87 = v56;
      v88 = v55;
      v89 = v54;
      [v28 setTransform3D:&v74];

      sub_1003AC210(v19);
      sub_1003AE5B8(v18, v20, v19);

      sub_1003AC254(v19);
      if (!v19)
      {
        v29 = v18;
        v30 = v20;
LABEL_14:
        v40 = 0;
        return sub_1003AE618(v29, v30, v40);
      }
    }

    else
    {

      sub_1003AC210(v19);
      sub_1003AE5B8(v18, 0, v19);

      sub_1003AC254(v19);
      if (!v19)
      {
        v29 = v18;
        v30 = 0;
        goto LABEL_14;
      }
    }

    [v6 bounds];
    sub_1003A4DD8(v19, v21, v31, v32, v33, v34);
    v35 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view;
    [*(v19 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v46];
    v36 = v70;
    if (v21)
    {
      [*(v21 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v46];
      v36 = v70;
    }

    v37 = *(v19 + v35);
    v74 = v36;
    v75 = v69;
    v76 = v68;
    v77 = v67;
    v78 = v66;
    v79 = v65;
    v80 = v64;
    v81 = v63;
    v82 = v53;
    v83 = v52;
    v84 = v51;
    v85 = v50;
    v86 = v49;
    v87 = v48;
    v88 = v47;
    v89 = v62;
    v38 = v36;
    [v37 setTransform3D:&v74];
    if (v21)
    {
      v39 = *(v21 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
      v74 = v38;
      v75 = v69;
      v76 = v68;
      v77 = v67;
      v78 = v66;
      v79 = v65;
      v80 = v64;
      v81 = v63;
      v82 = v53;
      v83 = v52;
      v84 = v51;
      v85 = v50;
      v86 = v49;
      v87 = v48;
      v88 = v47;
      v89 = v62;
      [v39 setTransform3D:&v74];
      sub_1003AE618(v18, v20, v19);
    }

    v29 = v18;
    v30 = v20;
    v40 = v19;
    return sub_1003AE618(v29, v30, v40);
  }

  return result;
}

__n128 Gliss.Transition<>.outputs(in:)@<Q0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v11 = sub_100004CB8(&qword_100643D20);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v57 - v13;
  v15 = *(*v5 + 232);
  v16 = v15(v12);
  v17 = (v15)();
  if (v17 == 2)
  {
    v18 = 1.0 - v16;
    horizontal = UIOffsetZero.horizontal;
    vertical = UIOffsetZero.vertical;
  }

  else
  {
    v21 = v17;
    v77.origin.x = a2;
    v77.origin.y = a3;
    v77.size.width = a4;
    v77.size.height = a5;
    v22 = v16 * CGRectGetWidth(v77);
    v18 = 1.0;
    vertical = 0.0;
    if (v21)
    {
      horizontal = v22;
    }

    else
    {
      horizontal = -v22;
    }
  }

  v23 = *&CATransform3DIdentity.m41;
  v72 = *&CATransform3DIdentity.m43;
  v71 = v23;
  v24 = *&CATransform3DIdentity.m31;
  v70 = *&CATransform3DIdentity.m33;
  v69 = v24;
  v25 = *&CATransform3DIdentity.m21;
  v68 = *&CATransform3DIdentity.m23;
  v67 = v25;
  v26 = *&CATransform3DIdentity.m11;
  v66 = *&CATransform3DIdentity.m13;
  v65 = v26;
  v27 = (*v5 + 432);
  v28 = *v27;
  v29 = (*v27)();
  v30 = v65;
  v31 = v66;
  v32 = v67;
  v33 = v68;
  v34 = v69;
  v35 = v70;
  v36 = v71;
  v37 = v72;
  if (v74 != 2)
  {
    (*(*v5 + 208))(v29, v65, v66, v67, v68, v69, v70, v71, v72);
    v38 = type metadata accessor for NowPlaying.TrackMetadata(0);
    v39 = (*(*(v38 - 8) + 48))(v14, 1, v38);
    v29 = sub_10001074C(v14, &qword_100643D20);
    v30 = v65;
    v31 = v66;
    v32 = v67;
    v33 = v68;
    v34 = v69;
    v35 = v70;
    v36 = v71;
    v37 = v72;
    if (v39 == 1)
    {
      v29 = CATransform3DMakeScale(&v73, v16 * 0.1 + 1.0, v16 * 0.1 + 1.0, 1.0);
      v31 = *&v73.m13;
      v30 = *&v73.m11;
      v33 = *&v73.m23;
      v32 = *&v73.m21;
      v35 = *&v73.m33;
      v34 = *&v73.m31;
      v36 = *&v73.m41;
      v37 = *&v73.m43;
    }
  }

  v57 = v37;
  v58 = v36;
  v59 = v35;
  v60 = v34;
  v61 = v33;
  v62 = v32;
  v63 = v31;
  v64 = v30;
  v40 = (v15)(v29);
  if (v40 == 2)
  {
    v42 = UIOffsetZero.horizontal;
    v41 = UIOffsetZero.vertical;
    v43 = v16;
  }

  else
  {
    v44 = v40;
    v78.origin.x = a2;
    v78.origin.y = a3;
    v78.size.width = a4;
    v78.size.height = a5;
    Width = CGRectGetWidth(v78);
    v79.size.height = a5;
    v46 = horizontal;
    v47 = vertical;
    v48 = v18;
    v49 = Width;
    v79.origin.x = a2;
    v79.origin.y = a3;
    v79.size.width = a4;
    v50 = v16 * CGRectGetWidth(v79);
    v51 = v50 - v49;
    v43 = 1.0;
    v41 = 0.0;
    v52 = v49 - v50;
    v18 = v48;
    vertical = v47;
    horizontal = v46;
    if (v44)
    {
      v42 = v51;
    }

    else
    {
      v42 = v52;
    }
  }

  (v28)(&v75);
  if (v76 != 2 && (v76 & 0x100) != 0)
  {
    CATransform3DMakeScale(&v73, (v16 + -1.0) * 0.1 + 1.0, (v16 + -1.0) * 0.1 + 1.0, 1.0);
    v65 = *&v73.m11;
    v66 = *&v73.m13;
    v67 = *&v73.m21;
    v68 = *&v73.m23;
    v69 = *&v73.m31;
    v70 = *&v73.m33;
    v71 = *&v73.m41;
    v72 = *&v73.m43;
  }

  *a1 = horizontal;
  *(a1 + 8) = vertical;
  *(a1 + 16) = v18;
  *(a1 + 40) = v63;
  *(a1 + 24) = v64;
  *(a1 + 72) = v61;
  *(a1 + 56) = v62;
  *(a1 + 104) = v59;
  *(a1 + 88) = v60;
  *(a1 + 136) = v57;
  *(a1 + 120) = v58;
  *(a1 + 152) = v42;
  *(a1 + 160) = v41;
  *(a1 + 168) = v43;
  v53 = v66;
  *(a1 + 176) = v65;
  *(a1 + 192) = v53;
  v54 = v68;
  *(a1 + 208) = v67;
  *(a1 + 224) = v54;
  v55 = v70;
  *(a1 + 240) = v69;
  *(a1 + 256) = v55;
  result = v72;
  *(a1 + 272) = v71;
  *(a1 + 288) = result;
  return result;
}

void sub_1003A4DD8(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v7 = v6;
  v14 = *(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets + 16);
  v15 = &v6[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v16 = *(v15 + 3);
  v83[2] = *(v15 + 2);
  v83[3] = v16;
  v17 = *(v15 + 5);
  v83[4] = *(v15 + 4);
  v83[5] = v17;
  v18 = *(v15 + 1);
  v83[0] = *v15;
  v83[1] = v18;
  if (v18 == 1)
  {
    v71 = 0.0;
  }

  else
  {
    v19 = v14;
    sub_1002CD9A0(v83, &v77);
    v84.origin.x = a3;
    v84.origin.y = a4;
    v84.size.width = a5;
    v84.size.height = a6;
    if (CGRectGetHeight(v84) <= 0.0 || (v85.origin.x = a3, v85.origin.y = a4, v85.size.width = a5, v85.size.height = a6, CGRectGetHeight(v85) == 1.79769313e308))
    {
      [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{a5, a6}];
    }

    v21 = v20;
    sub_1004DDF1C();
    v23 = v22;
    sub_1002CD9FC(v83);
    v71 = v21 + v23;
    v14 = v19;
  }

  v86.origin.x = a3;
  v86.origin.y = a4;
  v86.size.width = a5;
  v86.size.height = a6;
  Width = CGRectGetWidth(v86);
  if (a2)
  {
    top = *(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets);
    v25 = &v7[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v26 = *(v25 + 2);
    v27 = *(v25 + 3);
    v28 = *v25;
    v78 = *(v25 + 1);
    v79 = v26;
    v29 = *(v25 + 4);
    v30 = *(v25 + 5);
    v80 = v27;
    v81 = v29;
    v82 = v30;
    v77 = v28;
    LOBYTE(v25) = v78;

    v31 = 0.0;
    if ((v25 & 1) == 0)
    {
      rect = v14;
      sub_1002CD9A0(&v77, v76);
      v87.origin.x = a3;
      v87.origin.y = a4;
      v87.size.width = a5;
      v87.size.height = a6;
      if (CGRectGetHeight(v87) <= 0.0 || (v88.origin.x = a3, v88.origin.y = a4, v88.size.width = a5, v88.size.height = a6, CGRectGetHeight(v88) == 1.79769313e308))
      {
        v32 = top;
        [*(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
      }

      else
      {
        v32 = top;
        [*(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{a5, a6}];
      }

      v34 = v33;
      sub_1004DDF1C();
      v36 = v35;
      sub_1002CD9FC(&v77);
      v31 = v34 + v36;
      v14 = rect;
      top = v32;
    }

    recta = v31;
    v89.origin.x = a3;
    v89.origin.y = a4;
    v89.size.width = a5;
    v89.size.height = a6;
    v73 = CGRectGetWidth(v89);

    v37 = 0.0;
    v72 = 0.0;
  }

  else
  {
    v38 = &v7[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    if (v38[16])
    {
      top = UIEdgeInsetsZero.top;
      v73 = 0.0;
      recta = 0.0;
      v72 = 0.0;
      v37 = 0.0;
    }

    else
    {
      top = *&sub_1003A5C74()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets];

      v39 = *(*&v7[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
      v72 = UIView.untransformedFrame.getter();
      v73 = v40;
      v37 = v41;
      recta = v42;
    }
  }

  v43 = v14 + top;
  v90.origin.x = a3;
  v90.origin.y = a4;
  v90.size.width = a5;
  v90.size.height = a6;
  CGRectGetWidth(v90);
  v91.origin.x = 0.0;
  v91.origin.y = 0.0;
  v91.size.width = Width;
  v91.size.height = v71;
  CGRectGetHeight(v91);
  v92.origin.x = v72;
  v92.size.width = v73;
  v92.origin.y = v37;
  v92.size.height = recta;
  CGRectGetHeight(v92);
  sub_1004DE3BC();
  v77 = 0u;
  v78 = 0u;
  LOBYTE(v79) = 1;
  sub_1004DE3DC();
  sub_1004DE42C();
  MinY = CGRectGetMinY(v93);
  v94.origin.x = 0.0;
  v94.origin.y = MinY;
  v94.size.width = Width;
  v94.size.height = v71;
  MaxY = CGRectGetMaxY(v94);
  v46 = *(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  v47 = sub_1003A3A44();
  [v7 convertRect:v47 toCoordinateSpace:{0.0, MinY, Width, v71}];

  v48 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView;
  v49 = *&v7[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView];
  sub_1004DE3DC();

  sub_1004DE42C();
  UIView.untransformedFrame.setter(v50, v51, v52, v53);
  if (a2)
  {
    [v7 convertRect:*&v7[v48] toCoordinateSpace:{v72, MaxY - v43, v73, recta}];
    v54 = *&v7[v48];
    sub_1004DE3DC();

    sub_1004DE42C();
    UIView.untransformedFrame.setter(v55, v56, v57, v58);
  }

  v59 = [v46 superview];
  if (!v59 || (v60 = v59, v61 = *&v7[v48], sub_100006F10(0, &qword_100644F50), v62 = v61, v63 = sub_1004DE5FC(), v60, v62, (v63 & 1) == 0))
  {
    [*&v7[v48] addSubview:v46];
  }

  if (a2)
  {
    v64 = *(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);

    v65 = [v64 superview];
    if (!v65 || (v66 = v65, v67 = *&v7[v48], sub_100006F10(0, &qword_100644F50), v68 = v67, v69 = sub_1004DE5FC(), v66, v68, (v69 & 1) == 0))
    {
      [*&v7[v48] addSubview:v64];
    }
  }
}

uint64_t NowPlaying.TrackTitleStackView.intrinsicContentSize.getter()
{
  v1 = sub_1003A58EC();
  v2 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes);
  swift_beginAccess();
  v3 = v2[3];
  v21[2] = v2[2];
  v21[3] = v3;
  v4 = v2[5];
  v21[4] = v2[4];
  v21[5] = v4;
  v5 = v2[1];
  v21[0] = *v2;
  v21[1] = v5;
  if ((v5 & 1) == 0)
  {
    sub_1002CD9A0(v21, &v15);
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = 0.0;
    v22.size.height = 0.0;
    if (CGRectGetHeight(v22) <= 0.0 || (v23.origin.x = 0.0, v23.origin.y = 0.0, v23.size.width = 0.0, v23.size.height = 0.0, CGRectGetHeight(v23) == 1.79769313e308))
    {
      [*&v1[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v1[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    sub_1002CD9FC(v21);
  }

  v6 = sub_1003A5C74();
  v7 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes);
  swift_beginAccess();
  v8 = v7[2];
  v9 = v7[3];
  v10 = *v7;
  v16 = v7[1];
  v17 = v8;
  v11 = v7[4];
  v12 = v7[5];
  v18 = v9;
  v19 = v11;
  v20 = v12;
  v15 = v10;
  if ((v16 & 1) == 0)
  {
    sub_1002CD9A0(&v15, v14);
    v24.origin.x = 0.0;
    v24.origin.y = 0.0;
    v24.size.width = 0.0;
    v24.size.height = 0.0;
    if (CGRectGetHeight(v24) <= 0.0 || (v25.origin.x = 0.0, v25.origin.y = 0.0, v25.size.width = 0.0, v25.size.height = 0.0, CGRectGetHeight(v25) == 1.79769313e308))
    {
      [*&v6[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v6[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    sub_1002CD9FC(&v15);
  }
}

id sub_1003A5728(uint64_t a1)
{
  v2 = v1;
  [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) removeFromSuperview];
  v3 = sub_1003A58EC();
  v4 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v5 = *(v4 + 5);
  v24[4] = *(v4 + 4);
  v24[5] = v5;
  v6 = *(v4 + 3);
  v24[2] = *(v4 + 2);
  v24[3] = v6;
  v7 = *(v4 + 1);
  v24[0] = *v4;
  v24[1] = v7;
  v8 = *(v3 + 1);
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v11 = *(v3 + 4);
  v12 = *(v3 + 6);
  v23[4] = *(v3 + 5);
  v23[5] = v12;
  v23[2] = v10;
  v23[3] = v11;
  v23[0] = v8;
  v23[1] = v9;
  v13 = *(v3 + 2);
  v25[0] = *(v3 + 1);
  v25[1] = v13;
  v14 = *(v3 + 3);
  v15 = *(v3 + 4);
  v16 = *(v3 + 6);
  v25[4] = *(v3 + 5);
  v25[5] = v16;
  v25[2] = v14;
  v25[3] = v15;
  memmove(v3 + 16, v4, 0x60uLL);
  sub_1002CD9A0(v24, v22);
  sub_1002CD9A0(v24, v22);
  sub_1002CD9A0(v23, v22);
  sub_1002CD9FC(v25);
  sub_1003A98C8(v23);
  sub_1002CD9FC(v23);
  sub_1002CD9FC(v24);

  v17 = *(*&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  v18 = *&sub_1003A5C74()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v17 addCoordinatedMarqueeView:v18];

  v19 = *(v4 + 40);
  v22[0] = *(v4 + 24);
  v22[1] = v19;
  v22[2] = *(v4 + 56);

  sub_1003A8778(v20, v22);

  return [v2 setNeedsLayout];
}

char *sub_1003A58EC()
{
  v1 = sub_100004CB8(&qword_100643D10);
  __chkstk_darwin(v1 - 8);
  v3 = &v15[-v2];
  v4 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel;
  if (*&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel])
  {
    v5 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel];
  }

  else
  {
    v6 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_metadata];
    swift_beginAccess();
    v7 = type metadata accessor for NowPlaying.TrackMetadata(0);
    sub_1003A5E70(&v6[*(v7 + 24)], v3, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v8 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    (*(*(v8 - 8) + 56))(v3, 0, 1, v8);
    v9 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
    swift_beginAccess();
    v10 = *(v9 + 3);
    v16[2] = *(v9 + 2);
    v16[3] = v10;
    v11 = *(v9 + 5);
    v16[4] = *(v9 + 4);
    v16[5] = v11;
    v12 = *(v9 + 1);
    v16[0] = *v9;
    v16[1] = v12;
    type metadata accessor for NowPlaying.TrackTitleStackView.Label(0);
    swift_allocObject();
    sub_1002CD9A0(v16, v15);
    v13 = v0;
    v5 = sub_1003AC910(v3, v16, v13);

    sub_1002CD9FC(v16);
    *&v0[v4] = v5;
  }

  return v5;
}

id sub_1003A5AC8(uint64_t a1)
{
  v2 = v1;
  [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) removeFromSuperview];
  v3 = sub_1003A5C74();
  v4 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v5 = *(v4 + 5);
  v23[4] = *(v4 + 4);
  v23[5] = v5;
  v6 = *(v4 + 3);
  v23[2] = *(v4 + 2);
  v23[3] = v6;
  v7 = *(v4 + 1);
  v23[0] = *v4;
  v23[1] = v7;
  v8 = *(v3 + 1);
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v11 = *(v3 + 4);
  v12 = *(v3 + 6);
  v22[4] = *(v3 + 5);
  v22[5] = v12;
  v22[2] = v10;
  v22[3] = v11;
  v22[0] = v8;
  v22[1] = v9;
  v13 = *(v3 + 2);
  v24[0] = *(v3 + 1);
  v24[1] = v13;
  v14 = *(v3 + 3);
  v15 = *(v3 + 4);
  v16 = *(v3 + 6);
  v24[4] = *(v3 + 5);
  v24[5] = v16;
  v24[2] = v14;
  v24[3] = v15;
  memmove(v3 + 16, v4, 0x60uLL);
  sub_1002CD9A0(v23, v21);
  sub_1002CD9A0(v23, v21);
  sub_1002CD9A0(v22, v21);
  sub_1002CD9FC(v24);
  sub_1003A98C8(v22);
  sub_1002CD9FC(v22);
  sub_1002CD9FC(v23);

  v17 = *&sub_1003A58EC()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v17 addCoordinatedMarqueeView:*(*&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view)];

  v18 = *(v4 + 40);
  v21[0] = *(v4 + 24);
  v21[1] = v18;
  v21[2] = *(v4 + 56);

  sub_1003A8778(v19, v21);

  return [v2 setNeedsLayout];
}

char *sub_1003A5C74()
{
  v1 = sub_100004CB8(&qword_100643D10);
  __chkstk_darwin(v1 - 8);
  v3 = &v14[-v2];
  v4 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel;
  if (*&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel])
  {
    v5 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel];
  }

  else
  {
    v6 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_metadata];
    swift_beginAccess();
    v7 = type metadata accessor for NowPlaying.TrackMetadata(0);
    sub_1000108DC(&v6[*(v7 + 28)], v3, &qword_100643D10);
    v8 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v9 = *(v8 + 3);
    v15[2] = *(v8 + 2);
    v15[3] = v9;
    v10 = *(v8 + 5);
    v15[4] = *(v8 + 4);
    v15[5] = v10;
    v11 = *(v8 + 1);
    v15[0] = *v8;
    v15[1] = v11;
    type metadata accessor for NowPlaying.TrackTitleStackView.Label(0);
    swift_allocObject();
    sub_1002CD9A0(v15, v14);
    v12 = v0;
    v5 = sub_1003AC910(v3, v15, v12);

    sub_1002CD9FC(v15);
    *&v0[v4] = v5;
  }

  return v5;
}

uint64_t sub_1003A5E0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A5E70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003A5ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100643D10);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *NowPlaying.TrackTitleStackView.transitionWillBegin(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_transition] = a1;

  v5 = sub_1003A3A44();
  [v5 setClipsToBounds:*&v2[v4] != 0];

  [v2 setNeedsLayout];
  v6 = *(*a1 + 424);
  v7 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v8 = sub_1003ADE4C(&qword_100643D18, type metadata accessor for NowPlaying.TrackTitleStackView);
  result = v6(&v24, v2, v7, v8);
  if (v24)
  {
    v10 = v25;
    v11 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
    swift_beginAccess();
    v12 = *(v11 + 40);
    v24 = *(v11 + 24);
    v25 = v12;
    v26 = *(v11 + 56);

    sub_1003A8778(v13, &v24);

    v14 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v15 = *(v14 + 40);
    v23[0] = *(v14 + 24);
    v23[1] = v15;
    v23[2] = *(v14 + 56);

    sub_1003A8778(v16, v23);

    v17 = *(v11 + 40);
    v22[0] = *(v11 + 24);
    v22[1] = v17;
    v22[2] = *(v11 + 56);
    if (v10)
    {

      sub_1003A8778(v18, v22);

      v19 = *(&v10 + 1);
    }

    else
    {
      sub_1003A8778(0, v22);
      v19 = 0;
    }

    v20 = *(v14 + 40);
    v21[0] = *(v14 + 24);
    v21[1] = v20;
    v21[2] = *(v14 + 56);
    sub_1003A8778(v19, v21);

    return sub_1003AC254(v10);
  }

  return result;
}

void *NowPlaying.TrackTitleStackView.transitionDidEnd(_:)(char *a1)
{
  v2 = v1;
  v215 = a1;
  v212 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v206 = *(v212 - 8);
  __chkstk_darwin(v212);
  v188 = &v175 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = sub_100004CB8(&qword_100643D28);
  __chkstk_darwin(v203);
  v192 = &v175 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v207 = &v175 - v6;
  v7 = sub_100004CB8(&qword_100643D10);
  __chkstk_darwin(v7 - 8);
  v183 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v182 = &v175 - v10;
  __chkstk_darwin(v11);
  v184 = &v175 - v12;
  __chkstk_darwin(v13);
  v194 = &v175 - v14;
  __chkstk_darwin(v15);
  v199 = &v175 - v16;
  __chkstk_darwin(v17);
  v189 = &v175 - v18;
  __chkstk_darwin(v19);
  v204 = &v175 - v20;
  __chkstk_darwin(v21);
  v208 = &v175 - v22;
  v213 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v209 = *(v213 - 8);
  __chkstk_darwin(v213);
  v201 = (&v175 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v202 = sub_100004CB8(&qword_100643D30);
  __chkstk_darwin(v202);
  v191 = &v175 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v190 = &v175 - v26;
  v27 = sub_100004CB8(&qword_100643D20);
  __chkstk_darwin(v27 - 8);
  v185 = &v175 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v200 = &v175 - v30;
  __chkstk_darwin(v31);
  v187 = (&v175 - v32);
  __chkstk_darwin(v33);
  v197 = &v175 - v34;
  __chkstk_darwin(v35);
  v198 = &v175 - v36;
  __chkstk_darwin(v37);
  v186 = (&v175 - v38);
  __chkstk_darwin(v39);
  v195 = &v175 - v40;
  __chkstk_darwin(v41);
  v196 = &v175 - v42;
  v43 = sub_1004D82AC();
  v44 = *(v43 - 8);
  __chkstk_darwin(v43);
  v193 = &v175 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100004CB8(&qword_100643D38);
  __chkstk_darwin(v46);
  v211 = &v175 - v47;
  v48 = sub_100004CB8(&qword_100643D40);
  __chkstk_darwin(v48 - 8);
  v205 = &v175 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v52 = &v175 - v51;
  v55 = __chkstk_darwin(v53);
  v56 = &v175 - v54;
  v214 = v2;
  v210 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v57 = *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v57)
  {
    v58 = *(v44 + 16);
    v58(&v175 - v54, v57 + direct field offset for Gliss.Transition.id, v43, v55);
    v59 = *(v44 + 56);
    v59(v56, 0, 1, v43);
  }

  else
  {
    v59 = *(v44 + 56);
    (v59)(&v175 - v54, 1, 1, v43, v55);
    v58 = *(v44 + 16);
  }

  (v58)(v52, &v215[direct field offset for Gliss.Transition.id], v43);
  v59(v52, 0, 1, v43);
  v60 = *(v46 + 48);
  v61 = v211;
  sub_1000108DC(v56, v211, &qword_100643D40);
  v62 = v61;
  sub_1000108DC(v52, v61 + v60, &qword_100643D40);
  v63 = *(v44 + 48);
  if (v63(v61, 1, v43) == 1)
  {
    sub_10001074C(v52, &qword_100643D40);
    sub_10001074C(v56, &qword_100643D40);
    v64 = v63(v61 + v60, 1, v43);
    v65 = v213;
    if (v64 == 1)
    {
      sub_10001074C(v61, &qword_100643D40);
      v66 = v214;
LABEL_11:
      v72 = v210;
      *&v66[v210] = 0;

      v73 = sub_1003A3A44();
      [v73 setClipsToBounds:*&v66[v72] != 0];

      v68 = 1;
      goto LABEL_13;
    }

LABEL_9:
    sub_10001074C(v61, &qword_100643D38);
    v68 = 0;
    v66 = v214;
    goto LABEL_13;
  }

  v67 = v205;
  sub_1000108DC(v61, v205, &qword_100643D40);
  if (v63(v61 + v60, 1, v43) == 1)
  {
    sub_10001074C(v52, &qword_100643D40);
    sub_10001074C(v56, &qword_100643D40);
    (*(v44 + 8))(v67, v43);
    v65 = v213;
    goto LABEL_9;
  }

  v69 = v193;
  (*(v44 + 32))(v193, v61 + v60, v43);
  sub_1003ADE4C(&qword_100643D48, &type metadata accessor for UUID);
  v70 = sub_1004DD35C();
  v71 = *(v44 + 8);
  v71(v69, v43);
  sub_10001074C(v52, &qword_100643D40);
  sub_10001074C(v56, &qword_100643D40);
  v71(v67, v43);
  sub_10001074C(v62, &qword_100643D40);
  v66 = v214;
  v65 = v213;
  if (v70)
  {
    goto LABEL_11;
  }

  v68 = 0;
LABEL_13:
  v74 = sub_1003A58EC();
  v75 = &v66[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v76 = *(v75 + 40);
  v221[0] = *(v75 + 24);
  v221[1] = v76;
  v221[2] = *(v75 + 56);
  sub_1003A8778(v74, v221);

  v77 = sub_1003A5C74();
  v78 = &v66[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v79 = *(v78 + 40);
  v220[0] = *(v78 + 24);
  v220[1] = v79;
  v220[2] = *(v78 + 56);
  sub_1003A8778(v77, v220);

  v80 = *(*v215 + 424);
  v81 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v82 = sub_1003ADE4C(&qword_100643D18, type metadata accessor for NowPlaying.TrackTitleStackView);
  result = v80(&v216, v66, v81, v82);
  v84 = v212;
  if (!v216)
  {
    return result;
  }

  v85 = v217;
  v87 = v218;
  v86 = v219;
  if (!v218)
  {

    goto LABEL_67;
  }

  v211 = v217;
  v193 = v219;
  v205 = v216;
  if ((v68 & 1) == 0)
  {
    sub_1003AC210(v218);

    v101 = sub_1003AC210(v87);
    v102 = v206;
    v103 = v208;
    goto LABEL_32;
  }

  v88 = *(*v215 + 208);
  v89 = *v215 + 208;
  sub_1003AC210(v218);

  v90 = sub_1003AC210(v87);
  v91 = v196;
  v179 = v88;
  v178 = v89;
  v88(v90);
  v92 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  v177 = v92;
  v93 = v65;
  v94 = v195;
  sub_1003A5E70(&v66[v92], v195, type metadata accessor for NowPlaying.TrackMetadata);
  v95 = v209;
  v176 = *(v209 + 56);
  v176(v94, 0, 1, v93);
  v96 = *(v202 + 48);
  v97 = v190;
  sub_1000108DC(v91, v190, &qword_100643D20);
  sub_1000108DC(v94, v97 + v96, &qword_100643D20);
  v98 = *(v95 + 48);
  v99 = v98(v97, 1, v93);
  v181 = v87;
  v180 = v98;
  if (v99 != 1)
  {
    v104 = v186;
    sub_1000108DC(v97, v186, &qword_100643D20);
    if (v98(v97 + v96, 1, v93) != 1)
    {
      v100 = v93;
      v107 = v201;
      sub_1001DFB0C(v97 + v96, v201, type metadata accessor for NowPlaying.TrackMetadata);
      v108 = static NowPlaying.TrackMetadata.== infix(_:_:)(v104, v107);
      sub_1001DFB74(v107, type metadata accessor for NowPlaying.TrackMetadata);
      sub_10001074C(v195, &qword_100643D20);
      sub_10001074C(v196, &qword_100643D20);
      sub_1001DFB74(v104, type metadata accessor for NowPlaying.TrackMetadata);
      v105 = sub_10001074C(v97, &qword_100643D20);
      v106 = v214;
      if ((v108 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    sub_10001074C(v195, &qword_100643D20);
    sub_10001074C(v196, &qword_100643D20);
    sub_1001DFB74(v104, type metadata accessor for NowPlaying.TrackMetadata);
LABEL_23:
    v100 = v93;
    v105 = sub_10001074C(v97, &qword_100643D30);
    v106 = v214;
    goto LABEL_26;
  }

  sub_10001074C(v94, &qword_100643D20);
  sub_10001074C(v91, &qword_100643D20);
  if (v98(v97 + v96, 1, v93) != 1)
  {
    goto LABEL_23;
  }

  v100 = v93;
  sub_10001074C(v97, &qword_100643D20);
LABEL_25:
  v109 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel;
  v110 = *&v214[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel];
  *&v214[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] = v181;
  swift_retain_n();
  sub_1003A5728(v110);

  v106 = v214;

  v105 = [*(*&v106[v109] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:1.0];
LABEL_26:
  v111 = v198;
  v179(v105);
  v112 = v197;
  sub_1003A5E70(&v106[v177], v197, type metadata accessor for NowPlaying.TrackMetadata);
  v176(v112, 0, 1, v100);
  v113 = *(v202 + 48);
  v114 = v191;
  sub_1000108DC(v111, v191, &qword_100643D20);
  sub_1000108DC(v112, v114 + v113, &qword_100643D20);
  v115 = v180;
  v116 = v180(v114, 1, v100);
  v85 = v211;
  if (v116 == 1)
  {
    sub_10001074C(v112, &qword_100643D20);
    sub_10001074C(v111, &qword_100643D20);
    v117 = v115(v114 + v113, 1, v100);
    v118 = v114;
    v65 = v100;
    v87 = v181;
    v119 = v206;
    if (v117 == 1)
    {
      sub_10001074C(v114, &qword_100643D20);
      v66 = v214;
      goto LABEL_64;
    }

    goto LABEL_31;
  }

  v120 = v187;
  sub_1000108DC(v114, v187, &qword_100643D20);
  v121 = v115(v114 + v113, 1, v100);
  v118 = v114;
  v65 = v100;
  v119 = v206;
  if (v121 == 1)
  {
    sub_10001074C(v197, &qword_100643D20);
    sub_10001074C(v198, &qword_100643D20);
    sub_1001DFB74(v120, type metadata accessor for NowPlaying.TrackMetadata);
    v87 = v181;
LABEL_31:
    v101 = sub_10001074C(v118, &qword_100643D30);
    v66 = v214;
    v84 = v212;
    v103 = v208;
    v102 = v119;
    goto LABEL_32;
  }

  v146 = v201;
  sub_1001DFB0C(v114 + v113, v201, type metadata accessor for NowPlaying.TrackMetadata);
  LODWORD(v202) = static NowPlaying.TrackMetadata.== infix(_:_:)(v120, v146);
  sub_1001DFB74(v146, type metadata accessor for NowPlaying.TrackMetadata);
  sub_10001074C(v197, &qword_100643D20);
  sub_10001074C(v198, &qword_100643D20);
  sub_1001DFB74(v120, type metadata accessor for NowPlaying.TrackMetadata);
  v85 = v211;
  v101 = sub_10001074C(v114, &qword_100643D20);
  v66 = v214;
  v84 = v212;
  v87 = v181;
  v103 = v208;
  v102 = v119;
  if (v202)
  {
    goto LABEL_64;
  }

LABEL_32:
  v122 = v200;
  (*(*v215 + 208))(v101);
  v123 = *(v209 + 48);
  v209 += 48;
  v202 = v123;
  if (v123(v122, 1, v65) == 1)
  {
    sub_10001074C(v122, &qword_100643D20);
    (*(v102 + 56))(v103, 1, 1, v84);
  }

  else
  {
    sub_1000108DC(v122 + *(v65 + 28), v103, &qword_100643D10);
    sub_1001DFB74(v122, type metadata accessor for NowPlaying.TrackMetadata);
  }

  v124 = *&v66[v210];
  if (v124)
  {
    v125 = *(*v124 + 184);
    v126 = v102;

    v128 = v201;
    v125(v127);

    v129 = v204;
    sub_1000108DC(v128 + *(v213 + 28), v204, &qword_100643D10);
    sub_1001DFB74(v128, type metadata accessor for NowPlaying.TrackMetadata);
  }

  else
  {
    v129 = v204;
    (*(v102 + 56))(v204, 1, 1, v84);
    v126 = v102;
  }

  v130 = *(v203 + 48);
  v131 = v208;
  v132 = v207;
  sub_1000108DC(v208, v207, &qword_100643D10);
  v133 = v132;
  sub_1000108DC(v129, v132 + v130, &qword_100643D10);
  v134 = *(v126 + 48);
  if ((v134)(v132, 1, v84) == 1)
  {
    v215 = v134;
    sub_10001074C(v129, &qword_100643D10);
    v135 = v207;
    sub_10001074C(v131, &qword_100643D10);
    if ((v215)(v135 + v130, 1, v84) == 1)
    {
      sub_10001074C(v135, &qword_100643D10);
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  v136 = v189;
  sub_1000108DC(v133, v189, &qword_100643D10);
  if ((v134)(v133 + v130, 1, v84) == 1)
  {
    sub_10001074C(v204, &qword_100643D10);
    v135 = v207;
    sub_10001074C(v208, &qword_100643D10);
    sub_1001DFB74(v136, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_43:
    sub_10001074C(v135, &qword_100643D28);
    v86 = v193;
    v85 = v211;
LABEL_44:

    goto LABEL_67;
  }

  v215 = v134;
  v137 = v133 + v130;
  v138 = v188;
  sub_1001DFB0C(v137, v188, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v139 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)(v136, v138);
  sub_1001DFB74(v138, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_10001074C(v204, &qword_100643D10);
  sub_10001074C(v208, &qword_100643D10);
  sub_1001DFB74(v136, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v66 = v214;
  v84 = v212;
  sub_10001074C(v133, &qword_100643D10);
  v86 = v193;
  v85 = v211;
  if ((v139 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_46:
  v140 = *&v66[v210];
  if (v140)
  {
    v141 = *(*v140 + 184);

    v143 = v201;
    v141(v142);

    v144 = v213;
    sub_1000108DC(v143 + *(v213 + 28), v199, &qword_100643D10);
    sub_1001DFB74(v143, type metadata accessor for NowPlaying.TrackMetadata);
    v145 = v194;
  }

  else
  {
    (*(v206 + 56))(v199, 1, 1, v84);
    v145 = v194;
    v144 = v213;
  }

  v147 = *&v66[v210];
  if (v147)
  {
    v148 = *(*v147 + 208);

    v150 = v185;
    v148(v149);

    if ((v202)(v150, 1, v144) != 1)
    {
      v151 = v150 + *(v144 + 28);
      v152 = v150;
      v145 = v194;
      sub_1000108DC(v151, v194, &qword_100643D10);
      sub_1001DFB74(v152, type metadata accessor for NowPlaying.TrackMetadata);
      goto LABEL_56;
    }

    sub_10001074C(v150, &qword_100643D20);
    v145 = v194;
  }

  (*(v206 + 56))(v145, 1, 1, v84);
LABEL_56:
  v153 = v84;
  v154 = *(v203 + 48);
  v155 = v199;
  v156 = v192;
  sub_1000108DC(v199, v192, &qword_100643D10);
  sub_1000108DC(v145, v156 + v154, &qword_100643D10);
  v157 = v215;
  if ((v215)(v156, 1, v153) == 1)
  {
    sub_10001074C(v145, &qword_100643D10);
    v158 = v192;
    sub_10001074C(v155, &qword_100643D10);
    v159 = v157(v158 + v154, 1, v153);
    v65 = v213;
    if (v159 == 1)
    {
      sub_10001074C(v158, &qword_100643D10);
      v85 = v211;
      goto LABEL_64;
    }

    goto LABEL_61;
  }

  v160 = v184;
  sub_1000108DC(v156, v184, &qword_100643D10);
  v161 = v157(v156 + v154, 1, v153);
  v65 = v213;
  if (v161 == 1)
  {
    sub_10001074C(v194, &qword_100643D10);
    v158 = v192;
    sub_10001074C(v199, &qword_100643D10);
    sub_1001DFB74(v160, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_61:
    sub_10001074C(v158, &qword_100643D28);
    v85 = v211;
LABEL_62:

    v86 = v193;

    goto LABEL_67;
  }

  v162 = v188;
  sub_1001DFB0C(v156 + v154, v188, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v163 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)(v160, v162);
  sub_1001DFB74(v162, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_10001074C(v194, &qword_100643D10);
  sub_10001074C(v199, &qword_100643D10);
  sub_1001DFB74(v160, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v66 = v214;
  sub_10001074C(v156, &qword_100643D10);
  v85 = v211;
  if ((v163 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_64:
  v164 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel;
  v165 = *&v66[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel];
  v86 = v193;
  if (v193)
  {
    *&v66[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] = v193;
    swift_retain_n();
    sub_1003A5AC8(v165);

    v166 = *(*&v66[v164] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
    [v166 setAlpha:1.0];
  }

  else
  {
    v167 = &v66[OBJC_IVAR___NowPlayingTrackTitleStackView_metadata];
    swift_beginAccess();
    v168 = v182;
    sub_1000108DC(&v167[*(v65 + 28)], v182, &qword_100643D10);
    v169 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
    swift_beginAccess();
    v170 = v183;
    sub_1000108DC(v165 + v169, v183, &qword_100643D10);
    swift_beginAccess();

    sub_1003A5ED8(v168, v165 + v169);
    swift_endAccess();
    sub_1003AA68C(v170);

    v171 = v170;
    v85 = v211;
    sub_10001074C(v171, &qword_100643D10);
    v66 = v214;
    sub_10001074C(v168, &qword_100643D10);
  }

LABEL_67:

  sub_1003A8108(v172, v66);

  sub_1003A8108(v85, v66);
  if (v87)
  {

    sub_1003A8108(v173, v66);

    v174 = v86;
  }

  else
  {
    v174 = 0;
  }

  sub_1003A8108(v174, v66);

  [v66 setNeedsLayout];
  sub_1003AC254(v87);

  return sub_1003AC254(v87);
}

uint64_t sub_1003A8108(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = *(result + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);

  v4 = v3;
  v5 = *&sub_1003A58EC()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  sub_100006F10(0, &qword_100644038);
  LOBYTE(v3) = sub_1004DE5FC();

  if ((v3 & 1) == 0)
  {
    v6 = v4;
    v7 = *&sub_1003A5C74()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

    v8 = sub_1004DE5FC();

    if ((v8 & 1) == 0)
    {
      v9 = *(a2 + OBJC_IVAR___NowPlayingTrackTitleStackView_transition);
      if (v9)
      {
        v10 = *(*v9 + 424);
        v11 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
        v12 = sub_1003ADE4C(&qword_100643D18, type metadata accessor for NowPlaying.TrackTitleStackView);

        v10(v25, a2, v11, v12);

        if (v25[0])
        {
          v14 = v25[1];
          v13 = v25[2];
          v15 = v25[3];
          sub_100006F10(0, &unk_100644F40);
          if (sub_1004DE5FC())
          {
            goto LABEL_14;
          }

          if (v14)
          {
            v16 = *(v14 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
            v24 = v15;
            v17 = v6;
            v23 = v13;
            v18 = v16;
            LOBYTE(v16) = sub_1004DE5FC();

            v15 = v24;
            v13 = v23;
            if (v16)
            {
              goto LABEL_14;
            }
          }

          if (v13)
          {
            if (sub_1004DE5FC())
            {
LABEL_14:

              sub_1003AC254(v13);
            }

            if (v15)
            {
              v19 = *(v15 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
              v20 = v13;
              v21 = v6;
              v22 = v19;
              LOBYTE(v19) = sub_1004DE5FC();

              sub_1003AC254(v20);
              if (v19)
              {
              }
            }

            else
            {

              sub_1003AC254(v13);
            }
          }

          else
          {
          }
        }
      }

      [v6 removeFromSuperview];
    }
  }
}

id NowPlaying.TrackTitleStackView.adopt(_:from:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_100004CB8(&qword_100643D10);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin(v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003A5E70(a1, v13, type metadata accessor for NowPlaying.TrackMetadata);
  v14 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  sub_1003A5E0C(v13, v2 + v14);
  result = swift_endAccess();
  if (!a2)
  {
    v16 = v2;
    v17 = sub_1003A58EC();
    sub_1003A5E70(a1 + *(v11 + 24), v10, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v18 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
    v19 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
    swift_beginAccess();
    sub_1000108DC(&v17[v19], v7, &qword_100643D10);
    swift_beginAccess();
    sub_1003A5ED8(v10, &v17[v19]);
    swift_endAccess();
    sub_1003AA68C(v7);

    sub_10001074C(v7, &qword_100643D10);
    sub_10001074C(v10, &qword_100643D10);
    v20 = sub_1003A5C74();
    sub_1000108DC(a1 + *(v11 + 28), v10, &qword_100643D10);
    v21 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
    swift_beginAccess();
    sub_1000108DC(&v20[v21], v7, &qword_100643D10);
    swift_beginAccess();
    sub_1003A5ED8(v10, &v20[v21]);
    swift_endAccess();
    sub_1003AA68C(v7);

    sub_10001074C(v7, &qword_100643D10);
    sub_10001074C(v10, &qword_100643D10);
    return [v16 setNeedsLayout];
  }

  return result;
}

void sub_1003A8778(uint64_t a1, unsigned __int8 *a2)
{
  v5 = sub_100004CB8(&qword_100643D20);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  if (a1)
  {
    v8 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
    v9 = *(v2 + OBJC_IVAR___NowPlayingTrackTitleStackView_transition);
    if (v9)
    {
      v10 = v2;
      v11 = *(*v9 + 256);

      v13 = v11(v12);

      if (v13 == 2)
      {
        v14 = *(v10 + v8);
        if (v14)
        {
          v15 = *(*v14 + 208);

          v15(v16);

          v17 = type metadata accessor for NowPlaying.TrackMetadata(0);
          if ((*(*(v17 - 8) + 48))(v7, 1, v17) != 1)
          {
            sub_10001074C(v7, &qword_100643D20);
            v18 = 0;
LABEL_11:
            [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setMarqueeEnabled:v18 withOptions:1];

            return;
          }
        }

        else
        {
          v19 = type metadata accessor for NowPlaying.TrackMetadata(0);
          (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
        }

        sub_10001074C(v7, &qword_100643D20);
      }
    }

    else
    {
    }

    v18 = *a2;
    goto LABEL_11;
  }
}

void sub_1003A89A8()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition])
  {
    v2 = objc_opt_self();
    v3 = [v2 disableActions];
    v4 = &selRef_setShadowPathIsBounds_;
    [v2 setDisableActions:1];
    v5 = OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer;
    v6 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer];
    if (v6)
    {
      v7 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer];
LABEL_28:
      v44 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
      swift_beginAccess();
      v45 = v44[6];
      v46 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
      swift_beginAccess();
      if (v46[6] >= v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = v46[6];
      }

      sub_100004CB8(&qword_100642970);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_100511D90;
      sub_100006F10(0, &qword_100640D40);
      v49 = v6;
      *(v48 + 32) = sub_1004DE5CC(0.0);
      [v1 bounds];
      *(v48 + 40) = [objc_allocWithZone(NSNumber) initWithDouble:v47 / CGRectGetWidth(v58)];
      [v1 bounds];
      *(v48 + 48) = [objc_allocWithZone(NSNumber) initWithDouble:1.0 - v47 / CGRectGetWidth(v59)];
      *(v48 + 56) = sub_1004DE5CC(1.0);
      isa = sub_1004DD85C().super.isa;

      [v7 setLocations:isa];

      [v7 setStartPoint:{0.0, 0.5}];
      v51 = v7;
      [v51 setEndPoint:{1.0, 0.5}];
      [v1 bounds];
      [v51 setBounds:?];

      [v1 bounds];
      MidX = CGRectGetMidX(v60);
      [v1 bounds];
      [v51 setPosition:{MidX, CGRectGetMidY(v61)}];

      [v2 v4[208]];
      return;
    }

    v53 = v3;
    v56 = v2;
    v15 = [objc_allocWithZone(CAGradientLayer) init];
    sub_100004CB8(&qword_10063F4F0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100511B10;
    v17 = objc_opt_self();
    v18 = v15;
    v19 = [v17 blackColor];
    v20 = [v19 CGColor];

    _s3__C7CGColorCMa_0(0);
    v22 = v21;
    *(v16 + 56) = v21;
    *(v16 + 32) = v20;
    v23 = [v17 clearColor];
    v24 = [v23 CGColor];

    *(v16 + 88) = v22;
    *(v16 + 64) = v24;
    v25 = [v17 clearColor];
    v26 = [v25 CGColor];

    *(v16 + 120) = v22;
    *(v16 + 96) = v26;
    v27 = [v17 blackColor];
    v28 = [v27 CGColor];

    *(v16 + 152) = v22;
    *(v16 + 128) = v28;
    v29 = sub_1004DD85C().super.isa;

    [v18 setColors:v29];

    [v18 setCompositingFilter:kCAFilterDestOut];
    v30 = *&v1[v5];
    if (v30)
    {
      sub_100006F10(0, &qword_100642F08);
      v31 = v18;
      v32 = v30;
      v33 = v31;
      v34 = v32;
      v35 = sub_1004DE5FC();

      v36 = *&v1[v5];
      if ((v35 & 1) == 0)
      {
        v4 = &selRef_setShadowPathIsBounds_;
        v6 = 0;
        if (v36)
        {
          [*&v1[v5] removeFromSuperlayer];
          v36 = *&v1[v5];
        }

LABEL_16:
        *&v1[v5] = v18;
        v7 = v18;

        v38 = *&v1[v5];
        if (v38)
        {
          if (v30)
          {
            sub_100006F10(0, &qword_100642F08);
            v39 = v30;
            v40 = v38;
            v41 = sub_1004DE5FC();

            if (v41)
            {

LABEL_21:
              v2 = v56;
              v3 = v53;
              goto LABEL_28;
            }
          }

          else
          {
            v42 = v38;
            v39 = 0;
          }

          v2 = v56;
          v3 = v53;
          v43 = [v1 layer];
          [v43 addSublayer:v38];

          goto LABEL_28;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v37 = v18;
      v36 = 0;
    }

    v4 = &selRef_setShadowPathIsBounds_;
    v6 = 0;
    goto LABEL_16;
  }

  v8 = OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer;
  v9 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer];
  if (v9)
  {
    v55 = v9;
    [v55 removeFromSuperlayer];
    v10 = *&v1[v8];
    *&v1[v8] = 0;

    v11 = *&v1[v8];
    if (v11)
    {
      sub_100006F10(0, &qword_100642F08);
      v12 = v55;
      v55 = v11;
      v13 = sub_1004DE5FC();

      if ((v13 & 1) == 0)
      {
        v54 = [v1 layer];
        [v54 addSublayer:v55];

        v14 = v54;
        goto LABEL_23;
      }
    }

    v14 = v55;
  }

  else
  {
    v14 = 0;
  }

LABEL_23:
}

id sub_1003A90C8(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1004DD3FC();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1003A9160(uint64_t (*a1)(__n128))
{
  v2 = sub_1004D7DAC();
  __chkstk_darwin(v2);
  v3 = sub_1004D7E3C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100004CB8(&qword_100643D10);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v16 - v9;
  v11 = a1(v8);
  v12 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_1000108DC(v11 + v12, v10, &qword_100643D10);
  v13 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  if ((*(*(v13 - 8) + 48))(v10, 1, v13) == 1)
  {

    return 0;
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v6, v10, v3);
    sub_1004D7D9C();
    sub_1003ADE4C(&qword_100644028, &type metadata accessor for AttributedString.CharacterView);
    v15 = sub_1004DD6CC();

    (*(v4 + 8))(v6, v3);
    return v15;
  }

  else
  {

    return *v10;
  }
}

id NowPlaying.TrackTitleStackView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1003A95D8@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  result = _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC17transitionContext2to9directionAF010TransitionK0VSgAC0F8MetadataV_AA5GlissO9DirectionOSgtF_0(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

double NowPlaying.TrackTitleStackView.Label.Attributes.marquee.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 64);
  *a1 = *(v1 + 24);
  v3 = *(v1 + 48);
  *(a1 + 8) = *(v1 + 32);
  *(a1 + 24) = v3;
  *(a1 + 40) = result;
  return result;
}

void *NowPlaying.TrackTitleStackView.Label.Attributes.action.getter()
{
  v1 = *(v0 + 72);
  sub_1003ADE94(v1, *(v0 + 80), *(v0 + 88));
  return v1;
}

void NowPlaying.TrackTitleStackView.Label.Attributes.action.setter(void *a1, void *a2, void *a3)
{
  sub_1003AA98C(v3[9], v3[10], v3[11]);
  v3[9] = a1;
  v3[10] = a2;
  v3[11] = a3;
}

void NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.fadeInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

BOOL static NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.__derived_struct_equals(_:_:)(double *a1, double *a2)
{
  result = 0;
  if (((*a1 ^ *a2) & 1) == 0 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    v2 = a1[3] == a2[3] && a1[4] == a2[4];
    if (v2 && a1[5] == a2[5])
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1003A9734(float64x2_t *a1, float64x2_t *a2)
{
  if (LOBYTE(a1->f64[0]) == LOBYTE(a2->f64[0]) && a1->f64[1] == a2->f64[1])
  {
    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[1], a2[1]), vceqq_f64(a1[2], a2[2])))) & 1;
  }

  else
  {
    return 0;
  }
}

double NowPlaying.TrackTitleStackView.Label.Attributes.update(_:)(void (*a1)(__int128 *))
{
  v2 = v1[3];
  v11 = v1[2];
  v12 = v2;
  v3 = v1[5];
  v13 = v1[4];
  v14 = v3;
  v4 = v1[1];
  v9 = *v1;
  v10 = v4;
  a1(&v9);
  v5 = v12;
  v1[2] = v11;
  v1[3] = v5;
  v6 = v14;
  v1[4] = v13;
  v1[5] = v6;
  result = *&v9;
  v8 = v10;
  *v1 = v9;
  v1[1] = v8;
  return result;
}

uint64_t sub_1003A986C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV23__derived_struct_equalsySbAJ_AJtFZ_0(v9, v10) & 1;
}

void sub_1003A98C8(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 48);
  v55[2] = *(a1 + 32);
  v55[3] = v4;
  v5 = *(a1 + 80);
  v55[4] = *(a1 + 64);
  v55[5] = v5;
  v6 = *(a1 + 16);
  v55[0] = *a1;
  v55[1] = v6;
  v7 = sub_100004CB8(&qword_100643D10);
  __chkstk_darwin(v7 - 8);
  v9 = &v51 - v8;
  v10 = *(v1 + 64);
  v58 = *(v1 + 48);
  v59 = v10;
  v11 = *(v1 + 96);
  v60 = *(v1 + 80);
  v61 = v11;
  v12 = *(v1 + 32);
  v56 = *(v1 + 16);
  v57 = v12;
  sub_100006F10(0, &unk_100644F40);
  sub_1002CD9A0(&v56, v54);
  if ((sub_1004DE5FC() & 1) == 0 || (sub_1004DE5FC() & 1) == 0 || v57 != (*(a1 + 16) & 1) || BYTE8(v57) != (*(a1 + 24) & 1) || *&v58 != *(a1 + 32) || *(&v58 + 1) != *(a1 + 40) || *&v59 != *(a1 + 48) || *(&v59 + 1) != *(a1 + 56) || *&v60 != *(a1 + 64))
  {
    goto LABEL_14;
  }

  v13 = *(&v60 + 1);
  v15 = *(a1 + 72);
  v14 = *(a1 + 80);
  v16 = *(a1 + 88);
  if (*(&v60 + 1) == 1)
  {
    sub_1003ADE94(*(a1 + 72), *(a1 + 80), *(a1 + 88));
    sub_1002CD9FC(&v56);
    if (v15 == 1)
    {
      return;
    }

    sub_1003AA98C(v15, v14, v16);
    goto LABEL_15;
  }

  if (v15 == 1)
  {
LABEL_14:
    sub_1002CD9FC(&v56);
    goto LABEL_15;
  }

  v49 = *(&v61 + 1);
  v52 = v61;
  sub_1003ADE94(v15, v14, v16);
  v50 = _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV6ActionV23__derived_struct_equalsySbAL_ALtFZ_0(v13, v52, v49, v15, v14, v16);
  sub_1002CD9FC(&v56);

  if (v50)
  {
    return;
  }

LABEL_15:
  if ((*(a1 + 72) == 1) == (*(v1 + 88) == 1))
  {
    goto LABEL_35;
  }

  v17 = *(v1 + 64);
  v54[2] = *(v1 + 48);
  v54[3] = v17;
  v18 = *(v1 + 96);
  v54[4] = *(v1 + 80);
  v54[5] = v18;
  v19 = *(v1 + 32);
  v54[0] = *(v1 + 16);
  v54[1] = v19;
  sub_1002CD9A0(v54, &v53);
  v20 = sub_1003AC540(v54);
  v21 = v20;
  v23 = v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind;
  v24 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind);
  v25 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind + 8);
  *v23 = v20;
  *(v23 + 8) = v22 & 1;
  if (v22)
  {
    if ((v25 & 1) == 0)
    {
LABEL_18:
      v26 = v20;
      goto LABEL_22;
    }
  }

  else if (v25)
  {
    goto LABEL_18;
  }

  v27 = v20;
  if ((sub_1004DE5FC() & 1) == 0)
  {
LABEL_22:
    [v24 removeFromSuperview];
    v28 = *v23;
    v29 = [v28 superview];
    v30 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
    v31 = [v30 contentView];
    v32 = v31;
    if (v29)
    {
      if (v31)
      {
        sub_100006F10(0, &qword_100644F50);
        v33 = sub_1004DE5FC();

        if (v33)
        {
          goto LABEL_33;
        }

LABEL_30:
        v34 = [v30 contentView];
        if (v34)
        {
          v35 = v34;
          [v34 addSubview:v28];

          v36 = [v30 contentView];
          if (v36)
          {
            v37 = v36;
            [v36 bounds];
            v39 = v38;
            v41 = v40;
            v43 = v42;
            v45 = v44;

            [v28 setFrame:{v39, v41, v43, v45}];
            [v28 setAutoresizingMask:18];
            [v30 setViewForContentSize:v28];
LABEL_33:

            sub_1003AA9E0();
            goto LABEL_34;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      v32 = v29;
    }

    else if (!v31)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v21 = v24;
  v24 = v27;
LABEL_34:

LABEL_35:
  sub_1003A9E24(v55);
  v46 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_1000108DC(v2 + v46, v9, &qword_100643D10);
  v47 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  if ((*(*(v47 - 8) + 48))(v9, 1, v47) == 1)
  {
    sub_10001074C(v9, &qword_100643D10);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1001DFB74(v9, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    if (EnumCaseMultiPayload == 1)
    {
      sub_1003AA9E0();
    }
  }
}

uint64_t sub_1003A9E24(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100004CB8(&qword_100644000);
  __chkstk_darwin(v4 - 8);
  v6 = &v62 - v5;
  v7 = sub_100004CB8(&qword_10063E910);
  __chkstk_darwin(v7 - 8);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  v13 = sub_1004DE6DC();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v1[4];
  v71 = v1[3];
  v72 = v17;
  v18 = v1[6];
  v73 = v1[5];
  v74 = v18;
  v19 = v1[2];
  v69 = v1[1];
  v70 = v19;
  v20 = v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind;
  v21 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind);
  if ((v20[8] & 1) == 0)
  {
    v23 = v69;
    sub_1002CD9A0(&v69, v68);
    v24 = v21;
    [v24 setFont:v23];
    [v24 setTextColor:*(&v69 + 1)];

    v25 = *a1;
    if (!*a1)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v65 = *a1;
  v67 = v21;
  v66 = v9;
  if (!v65)
  {
    sub_1002CD9A0(&v69, v68);
    goto LABEL_8;
  }

  v22 = *(a1 + 72);
  if (v22 <= 1)
  {
    sub_1002CD9A0(&v69, v68);
    v21 = v67;
LABEL_8:
    v26 = v21;
    goto LABEL_9;
  }

  v75 = *(v2 + 88);
  v76 = *(v2 + 13);
  v31 = v75;
  if (v75 == 1)
  {
    sub_1002CD9A0(&v69, v68);
    v32 = v67;
    v33 = v67;
    v34 = v22;
  }

  else
  {
    v56 = v76;
    v77 = *(&v75 + 1);
    sub_1002CD9A0(&v69, v68);
    v32 = v67;
    v57 = v67;
    v64 = v22;
    sub_1000108DC(&v75, v68, &qword_100644008);
    sub_10001074C(&v77, &qword_100644010);
    v78 = v56;
    sub_10001074C(&v78, &qword_10063E4B8);
    if (v31)
    {
      sub_100006F10(0, &qword_10063E980);
      v58 = v64;
      v63 = v31;
      v59 = v58;
      v60 = sub_1004DE5FC();
      v64 = v59;

      if (v60)
      {

        goto LABEL_9;
      }
    }
  }

  [v32 removeAction:v22 forControlEvents:0x2000];

LABEL_9:
  sub_1004DE6FC();
  v27 = *(v14 + 48);
  if (v27(v12, 1, v13) == 1)
  {
    sub_1004DE6BC();
    if (v27(v12, 1, v13) != 1)
    {
      sub_10001074C(v12, &qword_10063E910);
    }
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
  }

  v28 = *(&v69 + 1);
  sub_1004DE69C();
  v29 = *(&v73 + 1);
  v30 = v74;
  if (*(&v73 + 1) != 1 && *(&v74 + 1))
  {
    if (*(&v73 + 1))
    {
      sub_1003ADE94(*(&v73 + 1), v74, *(&v74 + 1));

LABEL_21:
      goto LABEL_22;
    }

    if (v74)
    {
      sub_1003ADE94(0, v74, *(&v74 + 1));

      goto LABEL_21;
    }

    v61 = *(&v74 + 1);
    sub_1004DE69C();
  }

LABEL_22:
  v35 = swift_allocObject();
  v36 = v72;
  v35[3] = v71;
  v35[4] = v36;
  v37 = v74;
  v35[5] = v73;
  v35[6] = v37;
  v38 = v70;
  v35[1] = v69;
  v35[2] = v38;
  sub_1002CD9A0(&v69, v68);
  sub_1004D99BC();
  v39 = sub_1004D99AC();
  (*(*(v39 - 8) + 56))(v6, 0, 1, v39);
  sub_1004DE6AC();
  if (v29 == 1)
  {
    goto LABEL_27;
  }

  if (!v29)
  {
    v54 = *(&v30 + 1);
    v55 = v30;
    if (!v30)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v40 = *(&v30 + 1);
  v41 = v29;
  v42 = v30;
  [v67 addAction:v41 forControlEvents:0x2000];
  if (v30)
  {
LABEL_25:
    v43 = v30;
    v44 = v67;
    [v44 setShowsMenuAsPrimaryAction:v29 == 0];
    [v44 setMenu:v43];
    [v44 setShowsMenuFromSource:0];
  }

LABEL_26:

LABEL_27:
  v45 = v66;
  (*(v14 + 16))(v66, v16, v13);
  (*(v14 + 56))(v45, 0, 1, v13);
  v46 = v67;
  sub_1004DE70C();

  (*(v14 + 8))(v16, v13);
  v25 = v65;
  if (!v65)
  {
LABEL_29:
    sub_1003AB480();
    goto LABEL_30;
  }

LABEL_28:
  v47 = *(v2 + 2);
  sub_100006F10(0, &qword_100643860);
  v48 = v47;
  v49 = v25;
  v50 = sub_1004DE5FC();

  if ((v50 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_30:
  v51 = *(v2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  v52 = BYTE8(v70);
  [v51 setContentGap:*&v71];
  [v51 setMarqueeEnabled:v52 & 1];
  [v51 effectiveUserInterfaceLayoutDirection];
  sub_1004DDEEC();
  [v51 setFadeEdgeInsets:?];
  [v51 setHidden:v70];
  [v51 invalidateIntrinsicContentSize];
  return sub_1002CD9FC(&v69);
}

uint64_t sub_1003AA5C0@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1004D7E7C();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = *a2;
  sub_1003AE510();
  v8 = v7;
  sub_1004D7E8C();
  UIAccessibilityButtonShapesEnabled();
  sub_1003AE564();
  return sub_1004D7E8C();
}

uint64_t sub_1003AA68C(uint64_t a1)
{
  v18 = a1;
  v2 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100004CB8(&qword_100643D10);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_100004CB8(&qword_100643D28);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = &v18 - v11;
  v13 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  v14 = *(v10 + 56);
  sub_1000108DC(v1 + v13, v12, &qword_100643D10);
  sub_1000108DC(v18, &v12[v14], &qword_100643D10);
  v15 = *(v3 + 48);
  if (v15(v12, 1, v2) == 1)
  {
    if (v15(&v12[v14], 1, v2) == 1)
    {
      return sub_10001074C(v12, &qword_100643D10);
    }

    goto LABEL_6;
  }

  sub_1000108DC(v12, v8, &qword_100643D10);
  if (v15(&v12[v14], 1, v2) == 1)
  {
    sub_1001DFB74(v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_6:
    sub_10001074C(v12, &qword_100643D28);
LABEL_7:
    sub_1003AA9E0();
    return sub_1003AB480();
  }

  sub_1001DFB0C(&v12[v14], v5, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v17 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)(v8, v5);
  sub_1001DFB74(v5, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1001DFB74(v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_10001074C(v12, &qword_100643D10);
  if ((v17 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_1003AA98C(void *a1, void *a2, void *a3)
{
  if (a1 != 1)
  {
  }
}

id sub_1003AA9E0()
{
  v1 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v79 = *(v1 - 8);
  __chkstk_darwin(v1);
  v76 = &v68 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100004CB8(&qword_10063E7A0);
  __chkstk_darwin(v3 - 8);
  v72 = &v68 - v4;
  v5 = sub_1004D7E3C();
  v77 = *(v5 - 8);
  v78 = v5;
  __chkstk_darwin(v5);
  v69 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v71 = &v68 - v8;
  v9 = sub_100004CB8(&qword_10063E910);
  __chkstk_darwin(v9 - 8);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v73 = &v68 - v13;
  __chkstk_darwin(v14);
  v70 = &v68 - v15;
  v16 = sub_1004DE6DC();
  v74 = *(v16 - 8);
  v75 = v16;
  __chkstk_darwin(v16);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v68 = &v68 - v20;
  v21 = sub_100004CB8(&qword_100643FF0);
  __chkstk_darwin(v21 - 8);
  v23 = (&v68 - v22);
  v24 = sub_100004CB8(&qword_100643D10);
  __chkstk_darwin(v24 - 8);
  v81 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v68 - v27;
  v29 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  v80 = v29;
  sub_1000108DC(v0 + v29, v28, &qword_100643D10);
  v82 = v0;
  v30 = *(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind);
  v31 = *(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind + 8);
  v32 = v28;
  v33 = v1;
  v34 = v79;
  sub_100047F38(v32, v23, &qword_100643D10);
  v35 = *(v34 + 48);
  if (v35(v23, 1, v1) == 1)
  {
    v36 = v30;
    v37 = v36;
    if (v31)
    {
      sub_1004DE6FC();
      v39 = v74;
      v38 = v75;
      v40 = *(v74 + 48);
      if (v40(v11, 1, v75) == 1)
      {
        sub_1004DE6BC();
        if (v40(v11, 1, v38) != 1)
        {
          sub_10001074C(v11, &qword_10063E910);
        }
      }

      else
      {
        (*(v39 + 32))(v18, v11, v38);
      }

      sub_1004DE6CC();
      (*(v77 + 56))(v72, 1, 1, v78);
      sub_1004DE68C();
      v55 = v73;
      (*(v39 + 16))(v73, v18, v38);
      (*(v39 + 56))(v55, 0, 1, v38);
      sub_1004DE70C();

      (*(v39 + 8))(v18, v38);
    }

    else
    {
      [v36 setText:0];
      [v37 setAttributedText:0];
    }
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = v77;
    v42 = v78;
    v43 = v71;
    v44 = (*(v77 + 32))(v71, v23, v78);
    if (v31)
    {
      __chkstk_darwin(v44);
      *(&v68 - 2) = v43;
      v45 = v30;
      UIButton.reconfigure(with:)(sub_1003AE4A0);

      (*(v41 + 8))(v43, v42);
    }

    else
    {
      sub_100006F10(0, &qword_100643FF8);
      (*(v41 + 16))(v69, v43, v42);
      v56 = v43;
      v57 = v30;
      v58 = sub_1004DE1BC();
      [v57 setAttributedText:v58];

      (*(v41 + 8))(v56, v42);
    }
  }

  else
  {
    v79 = v1;
    v46 = *v23;
    v47 = v30;
    if (v31)
    {
      v48 = v70;
      sub_1004DE6FC();
      v50 = v74;
      v49 = v75;
      v51 = *(v74 + 48);
      if (v51(v48, 1, v75) == 1)
      {
        v78 = v46;
        v52 = v68;
        sub_1004DE6BC();
        v53 = v51(v48, 1, v49);
        v54 = v52;
        if (v53 != 1)
        {
          sub_10001074C(v70, &qword_10063E910);
        }
      }

      else
      {
        v54 = v68;
        (*(v50 + 32))(v68, v48, v49);
      }

      sub_1004DE6CC();
      v60 = v73;
      (*(v50 + 16))(v73, v54, v49);
      (*(v50 + 56))(v60, 0, 1, v49);
      sub_1004DE70C();

      (*(v50 + 8))(v54, v49);
    }

    else
    {
      v59 = sub_1004DD3FC();

      [v47 setText:v59];
    }

    v33 = v79;
  }

  v61 = v81;
  v62 = *(v82 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  sub_1000108DC(v82 + v80, v81, &qword_100643D10);
  if (v35(v61, 1, v33))
  {
    sub_10001074C(v61, &qword_100643D10);
LABEL_25:
    v66 = 0;
    goto LABEL_26;
  }

  v63 = v76;
  sub_1003A5E70(v61, v76, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_10001074C(v61, &qword_100643D10);
  sub_1003ABB64();
  v64 = sub_1004DD3FC();

  v65 = [v64 _isNaturallyRTL];

  sub_1001DFB74(v63, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if ((v65 & 1) == 0)
  {
    goto LABEL_25;
  }

  v66 = 1;
LABEL_26:
  [v62 setAnimationDirection:v66];
  return [v62 invalidateIntrinsicContentSize];
}

uint64_t sub_1003AB380(uint64_t a1, uint64_t a2)
{
  v3 = sub_100004CB8(&qword_10063E7A0);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1004D7E3C();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v5, a2, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  return sub_1004DE68C();
}

uint64_t sub_1003AB480()
{
  v1 = v0;
  v2 = sub_100004CB8(&qword_100643D10);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v18 = left;
  v19 = UIEdgeInsetsZero.top;
  v16 = right;
  v17 = bottom;
  v13 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_1000108DC(v1 + v13, v4, &qword_100643D10);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    result = sub_10001074C(v4, &qword_100643D10);
  }

  else
  {
    sub_1001DFB0C(v4, v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    if (sub_1003AB6E8())
    {
      CTFontGetLanguageAwareOutsets();
      result = sub_1001DFB74(v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      left = v18;
      top = v19;
      right = v16;
      bottom = v17;
    }

    else
    {
      result = sub_1001DFB74(v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    }
  }

  v15 = (v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets);
  *v15 = top;
  v15[1] = left;
  v15[2] = bottom;
  v15[3] = right;
  return result;
}

uint64_t sub_1003AB6E8()
{
  v1 = sub_100004CB8(&qword_100643FC8);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  v4 = sub_1004D7DAC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004D7E3C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin(v12);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003A5E70(v0, v14, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_1004D7D9C();
    sub_1003ABE04(v3);
    (*(v5 + 8))(v7, v4);
    v15 = sub_1004DD4CC();
    v17 = v16;
    (*(v9 + 8))(v11, v8);
    v18 = v15;
  }

  else
  {
    v18 = *v14;
    v17 = v14[1];
  }

  v19 = String.containsExcessiveHeightCharacters.getter(v18, v17);

  return v19 & 1;
}

uint64_t NowPlaying.TrackTitleStackView.Label.deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  sub_1003AA98C(v2, v3, v4);
  sub_10001074C(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text, &qword_100643D10);

  return v0;
}

uint64_t NowPlaying.TrackTitleStackView.Label.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  sub_1003AA98C(v2, v3, v4);
  sub_10001074C(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text, &qword_100643D10);

  return swift_deallocClassInstance();
}

__n128 Gliss.Transition<>.Output.transform3D.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *(a1 + 64) = *(v1 + 88);
  *(a1 + 80) = v2;
  v3 = *(v1 + 136);
  *(a1 + 96) = *(v1 + 120);
  *(a1 + 112) = v3;
  v4 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v4;
  result = *(v1 + 56);
  v6 = *(v1 + 72);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 Gliss.Transition<>.Output.transform3D.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 88) = *(a1 + 64);
  *(v1 + 104) = v2;
  v3 = *(a1 + 112);
  *(v1 + 120) = *(a1 + 96);
  *(v1 + 136) = v3;
  v4 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v1 + 56) = result;
  *(v1 + 72) = v6;
  return result;
}

uint64_t sub_1003ABB64()
{
  v1 = sub_100004CB8(&qword_100643FC8);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_1004D7DAC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004D7E3C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin(v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003A5E70(v0, v14, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v14;
  }

  (*(v9 + 32))(v11, v14, v8);
  sub_1004D7D9C();
  sub_1003ABE04(v3);
  (*(v5 + 8))(v7, v4);
  v15 = sub_1004DD4CC();
  (*(v9 + 8))(v11, v8);
  return v15;
}

uint64_t sub_1003ABE04@<X0>(uint64_t a1@<X8>)
{
  v24[2] = a1;
  v2 = sub_100004CB8(&qword_100643FD0);
  __chkstk_darwin(v2);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = v24 - v6;
  v8 = sub_1004D7DFC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100004CB8(&qword_100643FD8);
  __chkstk_darwin(v25);
  v26 = v24 - v12;
  v13 = sub_100004CB8(&qword_100643FE0);
  __chkstk_darwin(v13 - 8);
  v15 = v24 - v14;
  v16 = sub_1004D7DAC();
  v17 = sub_1003ADE4C(&qword_10063E790, &type metadata accessor for AttributedString.CharacterView);
  v27 = v16;
  v18 = v17;
  sub_1004DDCFC();
  sub_1003ADE4C(&qword_10063E798, &type metadata accessor for AttributedString.Index);
  result = sub_1004DD35C();
  if (result)
  {
    sub_1004DDD3C();
    sub_1003ADE4C(&qword_100643FE8, &type metadata accessor for AttributedString.Index);
    result = sub_1004DD33C();
    if (result)
    {
      v24[0] = v1;
      v24[1] = v18;
      v20 = *(v9 + 32);
      v20(v7, v15, v8);
      v20(&v7[*(v2 + 48)], v11, v8);
      sub_1000108DC(v7, v4, &qword_100643FD0);
      v21 = *(v2 + 48);
      v22 = v26;
      v20(v26, v4, v8);
      v23 = *(v9 + 8);
      v23(&v4[v21], v8);
      sub_100047F38(v7, v4, &qword_100643FD0);
      v20((v22 + *(v25 + 36)), &v4[*(v2 + 48)], v8);
      v23(v4, v8);
      sub_1004DDE0C();
      return sub_10001074C(v22, &qword_100643FD8);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1003AC210(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1003AC254(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV6ActionV23__derived_struct_equalsySbAL_ALtFZ_0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1)
  {
    if (!a4)
    {
      return 0;
    }

    v11 = a1;
    sub_100006F10(0, &qword_10063E980);
    v12 = a4;
    v13 = v11;
    LOBYTE(v11) = sub_1004DE5FC();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    sub_100006F10(0, &qword_10063E8E8);
    v14 = a5;
    v15 = a2;
    v16 = sub_1004DE5FC();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (a3)
  {
    if (a6)
    {
      sub_100006F10(0, &qword_100641C80);
      v17 = a6;
      v18 = a3;
      v19 = sub_1004DE5FC();

      if (v19)
      {
        return 1;
      }
    }
  }

  else if (!a6)
  {
    return 1;
  }

  return 0;
}

uint64_t _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV23__derived_struct_equalsySbAJ_AJtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_100006F10(0, &unk_100644F40);
  if (sub_1004DE5FC() & 1) == 0 || (sub_1004DE5FC() & 1) == 0 || ((*(a1 + 16) ^ *(a2 + 16)))
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48))))) & 1) != 0 && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0 && *(a1 + 64) == *(a2 + 64))
  {
    v5 = *(a1 + 72);
    v6 = *(a2 + 72);
    if (v5 == 1)
    {
      if (v6 == 1)
      {
        return 1;
      }
    }

    else if (v6 != 1)
    {
      v8 = *(a1 + 80);
      v7 = *(a1 + 88);
      v10 = *(a2 + 80);
      v9 = *(a2 + 88);
      v11 = v9;
      v12 = v6;
      v13 = v10;
      LOBYTE(v9) = _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV6ActionV23__derived_struct_equalsySbAL_ALtFZ_0(v5, v8, v7, v6, v10, v9);

      if (v9)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

id sub_1003AC540(uint64_t a1)
{
  v2 = sub_1004D991C();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1004DE66C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1004DE6DC();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v23 - v12;
  v24 = *(a1 + 72);
  if (v24 == 1)
  {
    v19 = [objc_allocWithZone(UILabel) init];
    v20 = objc_opt_self();
    v16 = v19;
    v21 = [v20 clearColor];
    [v16 setBackgroundColor:v21];

    [v16 setNumberOfLines:1];
    [v16 setAdjustsFontForContentSizeCategory:1];
    [v16 _setWantsContentAwareTypesettingLanguage:1];
    sub_1002CD9FC(a1);
  }

  else
  {
    sub_1004DE6BC();
    sub_1004DE65C();
    (*(v4 + 104))(v6, enum case for UIButton.Configuration.TitleAlignment.leading(_:), v3);
    sub_1004DE67C();
    sub_1004D990C();
    sub_1004DE64C();
    v14 = [objc_opt_self() clearColor];
    v15 = sub_1004DE63C();
    sub_1004D98FC();
    v15(v25, 0);
    sub_100006F10(0, &qword_100644030);
    (*(v8 + 16))(v10, v13, v7);
    v16 = sub_1004DE6EC();
    [v16 setContentHorizontalAlignment:4];
    v17 = [v16 titleLabel];
    if (v17)
    {
      v18 = v17;
      [v17 _setWantsContentAwareTypesettingLanguage:1];
    }

    sub_1002CD9FC(a1);
    (*(v8 + 8))(v13, v7);
  }

  return v16;
}

char *sub_1003AC910(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  v9 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v9 - 8) + 56))(&v4[v8], 1, 1, v9);
  v10 = &v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets];
  v11 = *&UIEdgeInsetsZero.bottom;
  *v10 = *&UIEdgeInsetsZero.top;
  *(v10 + 1) = v11;
  v12 = a2[1];
  *(v4 + 1) = *a2;
  *(v4 + 2) = v12;
  v13 = a2[5];
  *(v4 + 5) = a2[4];
  *(v4 + 6) = v13;
  v14 = a2[3];
  *(v4 + 3) = a2[2];
  *(v4 + 4) = v14;
  v15 = objc_allocWithZone(MarqueeView);
  sub_1002CD9A0(a2, v39);
  v16 = [v15 init];
  *&v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] = v16;
  sub_1002CD9A0(a2, v39);
  v17 = sub_1003AC540(a2);
  v18 = &v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind];
  *v18 = v17;
  v18[8] = v19 & 1;
  v20 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_1003A5ED8(a1, &v4[v20]);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view;
  [*&v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] setAnimationReferenceView:a3];
  memset(v39, 0, sizeof(v39));
  sub_1003A9E24(v39);
  sub_1003AA9E0();
  v22 = *v18;
  v23 = [v22 superview];
  v24 = *&v4[v21];
  v25 = [v24 contentView];
  v26 = v25;
  if (!v23)
  {
    if (!v25)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (!v25)
  {
    v26 = v23;
LABEL_8:

    goto LABEL_9;
  }

  sub_100006F10(0, &qword_100644F50);
  v27 = sub_1004DE5FC();

  if (v27)
  {
    goto LABEL_12;
  }

LABEL_9:
  result = [v24 contentView];
  if (result)
  {
    v29 = result;
    [result addSubview:v22];

    result = [v24 contentView];
    if (result)
    {
      v30 = result;
      [result bounds];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      [v22 setFrame:{v32, v34, v36, v38}];
      [v22 setAutoresizingMask:18];
      [v24 setViewForContentSize:v22];
LABEL_12:

      sub_10001074C(a1, &qword_100643D10);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1003ACC24()
{
  v1 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  sub_1003A5E70(v2, v0 + v1, type metadata accessor for NowPlaying.TrackMetadata);
  v3 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes);
  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v22 = v6;
  *(&v22 + 1) = v8;
  LOBYTE(v23) = 0;
  BYTE8(v23) = 0;
  *&v24 = 0x4040000000000000;
  *(&v24 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v25 = leading;
  *(&v25 + 1) = bottom;
  *&v26 = trailing;
  v27 = 0uLL;
  *(&v26 + 1) = 1;
  v28[0] = v6;
  v28[1] = v8;
  v29 = 0;
  v30 = 0;
  v31 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v33 = leading;
  v34 = bottom;
  v35 = trailing;
  v37 = 0;
  v38 = 0;
  v36 = 1;
  sub_1002CD9A0(&v22, v45);
  sub_1002CD9FC(v28);
  v12 = v25;
  v4[2] = v24;
  v4[3] = v12;
  v13 = v27;
  v4[4] = v26;
  v4[5] = v13;
  v14 = v23;
  *v4 = v22;
  v4[1] = v14;
  v15 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes);
  v16 = [v5 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v17 = [v7 secondaryLabelColor];
  *&v39 = v16;
  *(&v39 + 1) = v17;
  LOBYTE(v40) = 0;
  BYTE8(v40) = 0;
  *&v41 = 0x4040000000000000;
  *(&v41 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v42 = leading;
  *(&v42 + 1) = bottom;
  *&v43 = trailing;
  v44 = 0uLL;
  *(&v43 + 1) = 1;
  v45[0] = v16;
  v45[1] = v17;
  v46 = 0;
  v47 = 0;
  v48 = 0x4040000000000000;
  v49 = NSDirectionalEdgeInsetsZero.top;
  v50 = leading;
  v51 = bottom;
  v52 = trailing;
  v54 = 0;
  v55 = 0;
  v53 = 1;
  sub_1002CD9A0(&v39, v21);
  sub_1002CD9FC(v45);
  v18 = v42;
  v15[2] = v41;
  v15[3] = v18;
  v19 = v44;
  v15[4] = v43;
  v15[5] = v19;
  v20 = v40;
  *v15 = v39;
  v15[1] = v20;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_transition) = 0;
  sub_1004DECCC();
  __break(1u);
}

void *sub_1003ACED8(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  if (a2)
  {
  }

  v6[5] = a2;

  for (i = 0; i != 2; ++i)
  {
    if (v6[i + 4])
    {

      sub_1004DD84C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004DD8BC();
      }

      sub_1004DD90C();
    }
  }

  sub_100004CB8(&qword_100644040);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

void *sub_1003ACFE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  if (a2)
  {
  }

  else
  {
    a3 = 0;
  }

  v7[5] = a3;

  for (i = 0; i != 2; ++i)
  {
    if (v7[i + 4])
    {

      sub_1004DD84C();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004DD8BC();
      }

      sub_1004DD90C();
    }
  }

  sub_100004CB8(&qword_100644040);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

char *_s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC17transitionContext2to9directionAF010TransitionK0VSgAC0F8MetadataV_AA5GlissO9DirectionOSgtF_0(void *a1)
{
  v2 = v1;
  v110 = a1;
  v109 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v106 = *(v109 - 8);
  __chkstk_darwin(v109);
  v97 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_100004CB8(&qword_100643D28);
  __chkstk_darwin(v107);
  v102 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v99 = &v93 - v6;
  __chkstk_darwin(v7);
  v94 = &v93 - v8;
  v9 = sub_100004CB8(&qword_100643D10);
  __chkstk_darwin(v9 - 8);
  v96 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v95 = &v93 - v12;
  __chkstk_darwin(v13);
  v93 = &v93 - v14;
  __chkstk_darwin(v15);
  v17 = &v93 - v16;
  v18 = sub_100004CB8(&qword_100643D20);
  __chkstk_darwin(v18 - 8);
  v20 = &v93 - v19;
  v21 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v103 = (&v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = __chkstk_darwin(v24);
  v27 = (&v93 - v26);
  v28 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v29 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  v111 = (&v93 - v26);
  if (v29)
  {
    v30 = *(*v29 + 208);

    v30(v31);
    v27 = v111;

    if ((*(v22 + 48))(v20, 1, v21) != 1)
    {
      sub_1001DFB0C(v20, v27, type metadata accessor for NowPlaying.TrackMetadata);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v22 + 56))(v20, 1, 1, v21, v25);
  }

  v32 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  sub_1003A5E70(&v2[v32], v27, type metadata accessor for NowPlaying.TrackMetadata);
  if ((*(v22 + 48))(v20, 1, v21) != 1)
  {
    sub_10001074C(v20, &qword_100643D20);
  }

LABEL_7:
  v33 = *&v2[v28];
  v34 = v110;
  v108 = v21;
  if (!v33 || (v35 = *(*v33 + 424), v36 = type metadata accessor for NowPlaying.TrackTitleStackView(0), v37 = sub_1003ADE4C(&qword_100643D18, type metadata accessor for NowPlaying.TrackTitleStackView), , v35(&v114, v2, v36, v37), v27 = v111, , !v114))
  {
    v38 = 0;
    v39 = 0;
    goto LABEL_13;
  }

  v39 = *(&v115 + 1);
  v38 = v115;
  sub_1003AC210(v115);

  sub_1003AC254(v38);
  if (!v38)
  {
LABEL_13:
    v41 = v38;
    v38 = sub_1003A58EC();
    goto LABEL_14;
  }

  v40 = static NowPlaying.TrackMetadata.== infix(_:_:)(v34, v27);

  if (v40)
  {

    goto LABEL_13;
  }

  v41 = v38;
LABEL_14:
  sub_1003A5E70(v34 + *(v108 + 24), v17, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  (*(v106 + 7))(v17, 0, 1, v109);
  v42 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v43 = *(v42 + 3);
  v116 = *(v42 + 2);
  v117 = v43;
  v44 = *(v42 + 5);
  v118 = *(v42 + 4);
  v119 = v44;
  v45 = *(v42 + 1);
  v114 = *v42;
  v115 = v45;
  type metadata accessor for NowPlaying.TrackTitleStackView.Label(0);
  swift_allocObject();
  v46 = v2;
  sub_1002CD9A0(&v114, v113);
  v100 = sub_1003AC910(v17, &v114, v46);

  sub_1002CD9FC(&v114);
  v104 = v41;
  v105 = v39;
  v98 = v17;
  v101 = v38;
  if (!v41)
  {
    goto LABEL_28;
  }

  if (static NowPlaying.TrackMetadata.== infix(_:_:)(v34, v27))
  {

    goto LABEL_28;
  }

  v47 = *(v108 + 28);
  v48 = *(v107 + 48);
  v49 = v94;
  sub_1000108DC(v34 + v47, v94, &qword_100643D10);
  sub_1000108DC(v27 + v47, v49 + v48, &qword_100643D10);
  v50 = *(v106 + 6);
  v51 = v109;
  if (v50(v49, 1, v109) != 1)
  {
    v54 = v93;
    sub_1000108DC(v49, v93, &qword_100643D10);
    if (v50(v49 + v48, 1, v51) != 1)
    {
      v56 = v97;
      sub_1001DFB0C(v49 + v48, v97, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      v57 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)(v54, v56);
      sub_1001DFB74(v56, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      sub_1001DFB74(v54, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      sub_10001074C(v49, &qword_100643D10);
      v53 = v105;
      if (v57)
      {

        goto LABEL_27;
      }

LABEL_23:

      v106 = v53;
      v55 = v108;
      goto LABEL_37;
    }

    sub_1001DFB74(v54, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v53 = v105;
LABEL_22:
    sub_10001074C(v49, &qword_100643D28);
    goto LABEL_23;
  }

  v52 = v50(v49 + v48, 1, v51);
  v53 = v105;
  if (v52 != 1)
  {
    goto LABEL_22;
  }

  sub_10001074C(v49, &qword_100643D10);
LABEL_27:
  v34 = v110;
  v27 = v111;
LABEL_28:
  v55 = v108;
  v58 = *(v108 + 28);
  v59 = v27;
  v60 = *(v107 + 48);
  v61 = v34 + v58;
  v62 = v99;
  sub_1000108DC(v61, v99, &qword_100643D10);
  v63 = v59 + v58;
  v64 = v62;
  sub_1000108DC(v63, v62 + v60, &qword_100643D10);
  v50 = *(v106 + 6);
  v65 = v109;
  if (v50(v64, 1, v109) == 1)
  {
    if (v50(v64 + v60, 1, v65) == 1)
    {
      sub_10001074C(v64, &qword_100643D10);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v66 = v95;
  sub_1000108DC(v64, v95, &qword_100643D10);
  if (v50(v64 + v60, 1, v65) == 1)
  {
    sub_1001DFB74(v66, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v55 = v108;
LABEL_33:
    sub_10001074C(v64, &qword_100643D28);
LABEL_36:
    v106 = sub_1003A5C74();
    goto LABEL_37;
  }

  v67 = v64 + v60;
  v68 = v97;
  sub_1001DFB0C(v67, v97, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v69 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)(v66, v68);
  sub_1001DFB74(v68, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1001DFB74(v66, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_10001074C(v64, &qword_100643D10);
  v55 = v108;
  if ((v69 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_35:
  if (static NowPlaying.TrackMetadata.== infix(_:_:)(v110, v111))
  {
    goto LABEL_36;
  }

  v106 = 0;
LABEL_37:
  v70 = *(v55 + 28);
  v71 = *(v107 + 48);
  v72 = v102;
  sub_1000108DC(v110 + v70, v102, &qword_100643D10);
  sub_1000108DC(v111 + v70, v72 + v71, &qword_100643D10);
  v73 = v109;
  if (v50(v72, 1, v109) == 1)
  {
    v74 = v50(v72 + v71, 1, v73);
    v75 = v110;
    if (v74 == 1)
    {
      sub_10001074C(v72, &qword_100643D10);
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v76 = v96;
  sub_1000108DC(v72, v96, &qword_100643D10);
  if (v50(v72 + v71, 1, v73) == 1)
  {
    sub_1001DFB74(v76, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v75 = v110;
LABEL_42:
    sub_10001074C(v72, &qword_100643D28);
LABEL_43:
    v77 = v98;
    sub_1000108DC(v75 + v70, v98, &qword_100643D10);
    v78 = &v46[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v79 = *(v78 + 2);
    v80 = *(v78 + 3);
    v81 = *(v78 + 5);
    v113[4] = *(v78 + 4);
    v113[5] = v81;
    v113[3] = v80;
    v82 = *(v78 + 1);
    v113[0] = *v78;
    v113[1] = v82;
    v113[2] = v79;
    swift_allocObject();
    v83 = v46;
    sub_1002CD9A0(v113, &v112);
    sub_1003AC910(v77, v113, v83);

    sub_1002CD9FC(v113);
    goto LABEL_45;
  }

  v84 = v72 + v71;
  v85 = v97;
  sub_1001DFB0C(v84, v97, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v86 = v72;
  v87 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)(v76, v85);
  sub_1001DFB74(v85, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1001DFB74(v76, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_10001074C(v86, &qword_100643D10);
  v75 = v110;
  if ((v87 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_45:
  v88 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  v89 = &v46[v88];
  v90 = v103;
  sub_1003A5E70(v89, v103, type metadata accessor for NowPlaying.TrackMetadata);
  v91 = static NowPlaying.TrackMetadata.== infix(_:_:)(v75, v90);
  sub_1003AC254(v104);
  sub_1001DFB74(v90, type metadata accessor for NowPlaying.TrackMetadata);
  sub_1001DFB74(v111, type metadata accessor for NowPlaying.TrackMetadata);
  if (v91)
  {
  }

  return v101;
}