uint64_t sub_1000B1BE0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000125FC(&qword_100132120);
  v37 = a2;
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 32 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v38 = *(v22 + 16);
      v25 = *(v22 + 24);
      if ((v37 & 1) == 0)
      {
        v26 = v21;
      }

      result = sub_1000E9C74(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v38;
      *(v16 + 24) = v25;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B1E88(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000125FC(&unk_1001320A0);
  v49 = a2;
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v48 = v5;
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
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = (v22 + 192 * v21);
      if (v49)
      {
        v56 = *v27;
        v51 = *(v27 + 12);
        v52 = *(v27 + 2);
        v58 = *(v27 + 1);
        v54 = *(v27 + 3);
        v55 = *(v27 + 2);
        v53 = *(v27 + 4);
        v59 = v27[11];
        v57 = *(v27 + 96);
        v28 = *(v27 + 25);
        v60 = *(v27 + 104);
        v29 = *(v27 + 27);
        v66 = v27[14];
        v63 = v27[15];
        v61 = v27[10];
        v62 = v27[16];
        v50 = *(v27 + 136);
        v64 = *(v27 + 137);
        v65 = *(v27 + 138);
        v68 = *(v27 + 139);
        v69 = *(v27 + 10);
        v67 = *(v27 + 9);
        v30 = v27[22];
      }

      else
      {
        v32 = *(v27 + 2);
        v31 = *(v27 + 3);
        v33 = *v27;
        v72 = *(v27 + 1);
        v73 = v32;
        v71 = v33;
        v34 = *(v27 + 7);
        v36 = *(v27 + 4);
        v35 = *(v27 + 5);
        v77 = *(v27 + 6);
        v78 = v34;
        v75 = v36;
        v76 = v35;
        v38 = *(v27 + 9);
        v37 = *(v27 + 10);
        v39 = *(v27 + 8);
        v82 = v27[22];
        v80 = v38;
        v81 = v37;
        v79 = v39;
        v74 = v31;
        v30 = v82;
        v69 = v37;
        v67 = v38;
        v68 = BYTE11(v39);
        v64 = BYTE9(v39);
        v65 = BYTE10(v39);
        v66 = v78;
        v62 = v39;
        v63 = *(&v78 + 1);
        v50 = BYTE8(v39);
        v29 = HIDWORD(v77);
        v60 = BYTE8(v77);
        v28 = DWORD1(v77);
        v59 = *(&v76 + 1);
        v61 = v76;
        v57 = v77;
        v58 = v72;
        v54 = v31;
        v55 = v73;
        v53 = v36;
        v56 = v71;
        v51 = BYTE12(v71);
        v52 = DWORD2(v71);
        sub_1000A1DD4(v24, v25, v26);
        sub_1000B89BC(&v71, v70);
      }

      sub_1000EA024();
      sub_1000BB81C(&v71, v24, v25, v26);
      result = sub_1000EA064();
      v40 = -1 << *(v7 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v14 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v14 + 8 * v42);
          if (v46 != -1)
          {
            v15 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v41) & ~*(v14 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      LOBYTE(v71) = v50;
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v24;
      *(v16 + 8) = v25;
      *(v16 + 16) = v26;
      v17 = *(v7 + 56) + 192 * v15;
      *v17 = v56;
      *(v17 + 8) = v52;
      *(v17 + 12) = v51;
      *(v17 + 16) = v58;
      *(v17 + 32) = v55;
      *(v17 + 48) = v54;
      *(v17 + 64) = v53;
      *(v17 + 80) = v61;
      *(v17 + 88) = v59;
      *(v17 + 96) = v57;
      *(v17 + 100) = v28;
      *(v17 + 104) = v60;
      *(v17 + 108) = v29;
      *(v17 + 112) = v66;
      *(v17 + 120) = v63;
      *(v17 + 128) = v62;
      *(v17 + 136) = v71;
      *(v17 + 137) = v64;
      *(v17 + 138) = v65;
      *(v17 + 139) = v68;
      *(v17 + 144) = v67;
      *(v17 + 160) = v69;
      *(v17 + 176) = v30;
      ++*(v7 + 16);
      v5 = v48;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v49 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v47 = 1 << *(v5 + 32);
    v3 = v2;
    if (v47 >= 64)
    {
      bzero(v9, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v47;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B2368(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000125FC(&qword_1001320B0);
  v37 = a2;
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 56);
      v23 = *(v5 + 48) + 24 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = (v22 + 16 * v21);
      v40 = *v27;
      v38 = *(v27 + 12);
      v39 = *(v27 + 2);
      if ((v37 & 1) == 0)
      {
        sub_1000A1DD4(v24, v25, v26);
      }

      sub_1000EA024();
      sub_1000BB81C(v41, v24, v25, v26);
      result = sub_1000EA064();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v24;
      *(v16 + 8) = v25;
      *(v16 + 16) = v26;
      v17 = *(v7 + 56) + 16 * v15;
      *v17 = v40;
      *(v17 + 8) = v39;
      *(v17 + 12) = v38;
      ++*(v7 + 16);
      v5 = v36;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B264C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000125FC(&qword_1001320B8);
  v38 = a2;
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v5;
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
      v22 = 24 * (v19 | (v8 << 6));
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v27 = *(v24 + 16);
      v28 = (v23 + v22);
      v43 = *(v28 + 4);
      v44 = *v28;
      v41 = *(v28 + 12);
      v42 = v28[2];
      v39 = *(v28 + 20);
      v40 = v28[4];
      if ((v38 & 1) == 0)
      {
        sub_1000A1DD4(v25, v26, v27);
      }

      sub_1000EA024();
      sub_1000BB81C(v45, v25, v26, v27);
      result = sub_1000EA064();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 24 * v15;
      v17 = *(v7 + 48) + v16;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v27;
      v18 = *(v7 + 56) + v16;
      *v18 = v44;
      *(v18 + 4) = v43;
      *(v18 + 8) = v42;
      *(v18 + 12) = v41;
      *(v18 + 16) = v40;
      *(v18 + 20) = v39;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B2958(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000125FC(&qword_100132090);
  v30 = a2;
  result = sub_1000E9E84();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1000EA024();
      sub_1000EA034(v20);
      result = sub_1000EA064();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B2BE8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000125FC(&qword_1001320D0);
  v30 = a2;
  result = sub_1000E9E84();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_1000EA024();
      sub_1000EA034(v20);
      result = sub_1000EA064();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B2E78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000125FC(&unk_100133150);
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = a2;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 2 * v20);
      v22 = v21[1];
      v23 = *v21;
      v24 = *(*(v5 + 56) + 4 * v20);
      sub_1000EA024();
      sub_1000E9974();

      sub_1000EA044(v22);
      result = sub_1000EA064();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 2 * v15);
      *v16 = v23;
      v16[1] = v22;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B3220(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000125FC(&unk_100133128);
  v30 = a2;
  result = sub_1000E9E84();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_1000EA024();
      sub_1000E9974();

      result = sub_1000EA064();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B34C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000125FC(&qword_100133138);
  v30 = a2;
  result = sub_1000E9E84();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_1000EA024();
      sub_1000E9974();

      result = sub_1000EA064();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B3770(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000125FC(&unk_100132100);
  result = sub_1000E9E84();
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
        sub_100032864((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_100032808(v23, &v36);
        sub_100012898(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1000E9CF4(*(v7 + 40));
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
      result = sub_100032864(v35, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_1000B3A28(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000125FC(&qword_100132060);
  v32 = a2;
  result = sub_1000E9E84();
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 16 * v23);
      v26 = v25[1];
      v33 = *v25;
      if ((v32 & 1) == 0)
      {
      }

      sub_1000EA024();
      sub_1000E9974();

      result = sub_1000EA064();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v15) >> 6;
        while (++v17 != v28 || (v27 & 1) == 0)
        {
          v29 = v17 == v28;
          if (v17 == v28)
          {
            v17 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v17);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = (*(v7 + 56) + 16 * v18);
      *v19 = v33;
      v19[1] = v26;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B3DCC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000125FC(&qword_100130E90);
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = sub_1000E9C74(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B403C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000125FC(&unk_1001320E0);
  result = sub_1000E9E84();
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (a2)
      {
        sub_100032864(v21, v31);
      }

      else
      {
        sub_100012898(v21, v31);
        v22 = v20;
      }

      sub_1000EA024();
      type metadata accessor for CFString(0);
      sub_1000A1E1C(&qword_1001320D8, type metadata accessor for CFString);
      sub_1000E95F4();
      result = sub_1000EA064();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_100032864(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B431C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000125FC(&qword_100133180);
  v39 = a2;
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v37 = v2;
    v38 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 24 * v20;
      v24 = *v22;
      v23 = *(v22 + 8);
      v25 = *(v22 + 16);
      if ((v39 & 1) == 0)
      {

        v26 = v21;
        v27 = v24;
        v28 = v23;
      }

      result = sub_1000E9C74(*(v7 + 40));
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 24 * v15);
      *v16 = v24;
      v16[1] = v23;
      v16[2] = v25;
      ++*(v7 + 16);
      v5 = v38;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B45BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_1000125FC(&unk_100133160);
  v36 = a2;
  result = sub_1000E9E84();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v35 = v5;
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v38 = *(*(v5 + 48) + 8 * v20);
      v21 = *(v5 + 56) + 32 * v20;
      v22 = *v21;
      v37 = *(v21 + 8);
      v23 = *(v21 + 16);
      v24 = *(v21 + 24);
      if ((v36 & 1) == 0)
      {
        v25 = v22;
        sub_10009870C(v23, v24);
      }

      sub_1000EA024();
      sub_1000EA034(v38);
      result = sub_1000EA064();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v38;
      v16 = *(v7 + 56) + 32 * v15;
      *v16 = v22;
      *(v16 + 8) = v37;
      *(v16 + 16) = v23;
      *(v16 + 24) = v24;
      ++*(v7 + 16);
      v5 = v35;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1000B488C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_10009F1B8(a5);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 < v19 || (a6 & 1) != 0)
    {
      sub_1000B1BE0(v19, a6 & 1);
      v14 = sub_10009F1B8(a5);
      if ((v20 & 1) != (v23 & 1))
      {
LABEL_18:
        sub_100012904(0, &unk_100132110);
        sub_1000E9FA4();
        __break(1u);
        return _objc_retain_x1();
      }
    }

    else
    {
      v22 = v14;
      sub_1000B5A90();
      v14 = v22;
    }
  }

  v24 = *v7;
  if ((v20 & 1) == 0)
  {
    v24[(v14 >> 6) + 8] |= 1 << v14;
    *(v24[6] + 8 * v14) = a5;
    v27 = v24[7] + 32 * v14;
    *v27 = a1;
    *(v27 + 8) = a2;
    *(v27 + 16) = a3;
    *(v27 + 24) = a4;
    v28 = v24[2];
    v18 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v18)
    {
      v24[2] = v29;

      return _objc_retain_x1();
    }

    goto LABEL_17;
  }

  v25 = v24[7] + 32 * v14;
  *v25 = a1;
  *(v25 + 8) = a2;
  *(v25 + 16) = a3;
  *(v25 + 24) = a4;
}

uint64_t sub_1000B4A40(uint64_t a1, unint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10009F2C8(a2, a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_1000B1E88(v18, a5 & 1);
      v13 = sub_10009F2C8(a2, a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_1000E9FA4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_1000B5C20();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 192 * v13;

    return sub_1000B8A18(a1, v24);
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = v23[6] + 24 * v13;
  *v26 = a2;
  *(v26 + 8) = a3;
  *(v26 + 16) = a4;
  v27 = v23[7] + 192 * v13;
  v28 = *a1;
  v29 = *(a1 + 16);
  v30 = *(a1 + 48);
  *(v27 + 32) = *(a1 + 32);
  *(v27 + 48) = v30;
  *v27 = v28;
  *(v27 + 16) = v29;
  v31 = *(a1 + 64);
  v32 = *(a1 + 80);
  v33 = *(a1 + 112);
  *(v27 + 96) = *(a1 + 96);
  *(v27 + 112) = v33;
  *(v27 + 64) = v31;
  *(v27 + 80) = v32;
  v34 = *(a1 + 128);
  v35 = *(a1 + 144);
  v36 = *(a1 + 160);
  *(v27 + 176) = *(a1 + 176);
  *(v27 + 144) = v35;
  *(v27 + 160) = v36;
  *(v27 + 128) = v34;
  v37 = v23[2];
  v17 = __OFADD__(v37, 1);
  v38 = v37 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v38;

  return sub_1000A1DD4(a2, a3, a4);
}

unint64_t sub_1000B4C14(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1000A1E74(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1000B2BE8(v14, a3 & 1);
      result = sub_1000A1E74(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1000E9FA4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1000B640C(&qword_1001320D0);
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

unint64_t sub_1000B4D74(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_10009F428(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1000B3220(v14, a3 & 1);
      result = sub_10009F428(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1000E9FA4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1000B640C(&unk_100133128);
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_1000B4ED4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100002324(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1000B3DCC(v13, a3 & 1);
      v8 = sub_100002324(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100012904(0, &qword_100130E98);
        sub_1000E9FA4();
        __break(1u);
        return _objc_retain_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_1000B6864();
      v8 = v16;
    }
  }

  v18 = *v4;
  if ((v14 & 1) == 0)
  {
    v18[(v8 >> 6) + 8] |= 1 << v8;
    *(v18[6] + 8 * v8) = a2;
    *(v18[7] + 8 * v8) = a1;
    v20 = v18[2];
    v12 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v12)
    {
      v18[2] = v21;

      return _objc_retain_x1();
    }

    goto LABEL_17;
  }

  *(v18[7] + 8 * v8) = a1;
}

_OWORD *sub_1000B5050(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10009F630(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1000B69C8();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1000B403C(v13, a3 & 1);
    v8 = sub_10009F630(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_1000E9FA4();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100012710(v19);

    return sub_100032864(a1, v19);
  }

  else
  {
    sub_1000B54F8(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_1000B5190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_100002324(a4);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 < v17 || (a5 & 1) != 0)
    {
      sub_1000B431C(v17, a5 & 1);
      v12 = sub_100002324(a4);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_100012904(0, &qword_100130E98);
        sub_1000E9FA4();
        __break(1u);
        return _objc_retain_x1();
      }
    }

    else
    {
      v20 = v12;
      sub_1000B6B48();
      v12 = v20;
    }
  }

  v22 = *v6;
  if ((v18 & 1) == 0)
  {
    v22[(v12 >> 6) + 8] |= 1 << v12;
    *(v22[6] + 8 * v12) = a4;
    v27 = (v22[7] + 24 * v12);
    *v27 = a1;
    v27[1] = a2;
    v27[2] = a3;
    v28 = v22[2];
    v16 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v16)
    {
      v22[2] = v29;

      return _objc_retain_x1();
    }

    goto LABEL_17;
  }

  v23 = v22[7] + 24 * v12;
  v25 = *v23;
  v24 = *(v23 + 8);
  *v23 = a1;
  *(v23 + 8) = a2;
  *(v23 + 16) = a3;
}

void sub_1000B5344(uint64_t a1, char a2, uint64_t a3, char a4, Swift::UInt a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_10009F280(a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      sub_1000B45BC(v20, a6 & 1);
      v15 = sub_10009F280(a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        type metadata accessor for UIInterfaceOrientation(0);
        sub_1000E9FA4();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      sub_1000B6CD0();
      v15 = v23;
    }
  }

  v25 = *v7;
  if ((v21 & 1) == 0)
  {
    v25[(v15 >> 6) + 8] |= 1 << v15;
    *(v25[6] + 8 * v15) = a5;
    v30 = v25[7] + 32 * v15;
    *v30 = a1;
    *(v30 + 8) = a2 & 1;
    *(v30 + 16) = a3;
    *(v30 + 24) = a4;
    v31 = v25[2];
    v19 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (!v19)
    {
      v25[2] = v32;
      return;
    }

    goto LABEL_15;
  }

  v26 = v25[7] + 32 * v15;
  v27 = *v26;
  v28 = *(v26 + 16);
  *v26 = a1;
  *(v26 + 8) = a2 & 1;
  *(v26 + 16) = a3;
  v29 = *(v26 + 24);
  *(v26 + 24) = a4;

  sub_100098720(v28, v29);
}

_OWORD *sub_1000B54F8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_100032864(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t sub_1000B5560(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = a5[7] + 56 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  *(v6 + 48) = *(a4 + 48);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_1000B55C4()
{
  v1 = v0;
  sub_1000125FC(&qword_1001320F0);
  v2 = *v0;
  v3 = sub_1000E9E74();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = swift_unknownObjectRetain();
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

void *sub_1000B575C(uint64_t *a1)
{
  v2 = v1;
  sub_1000125FC(a1);
  v3 = *v1;
  v4 = sub_1000E9E74();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

id sub_1000B58BC()
{
  sub_1000125FC(&qword_100131E48);
  v33 = v0;
  v1 = *v0;
  v34 = sub_1000E9E74();
  v35 = v1;
  if (*(v1 + 16))
  {
    result = (v34 + 64);
    v3 = v1 + 64;
    v4 = ((1 << *(v34 + 32)) + 63) >> 6;
    if (v34 != v1 || result >= v1 + 64 + 8 * v4)
    {
      result = memmove(result, (v1 + 64), 8 * v4);
    }

    v6 = 0;
    *(v34 + 16) = *(v1 + 16);
    v7 = 1 << *(v1 + 32);
    v8 = *(v1 + 64);
    v9 = -1;
    if (v7 < 64)
    {
      v9 = ~(-1 << v7);
    }

    v10 = v9 & v8;
    v11 = (v7 + 63) >> 6;
    if ((v9 & v8) != 0)
    {
      do
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_17:
        v15 = v12 | (v6 << 6);
        v16 = 16 * v15;
        v17 = (*(v35 + 48) + 16 * v15);
        v18 = *v17;
        v19 = v17[1];
        v15 *= 56;
        v20 = *(v35 + 56) + v15;
        v22 = *v20;
        v21 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v26 = *(v20 + 32);
        v25 = *(v20 + 40);
        LOBYTE(v20) = *(v20 + 48);
        v27 = (*(v34 + 48) + v16);
        *v27 = v18;
        v27[1] = v19;
        v28 = *(v34 + 56) + v15;
        *v28 = v22;
        *(v28 + 8) = v21;
        *(v28 + 16) = v23;
        *(v28 + 24) = v24;
        *(v28 + 32) = v26;
        *(v28 + 40) = v25;
        *(v28 + 48) = v20;
        v29 = v25;

        v30 = v22;
        v31 = v21;
        v32 = v23;

        result = v26;
      }

      while (v10);
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_19;
      }

      v14 = *(v3 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v33 = v34;
  }

  return result;
}

void *sub_1000B5A90()
{
  v1 = v0;
  sub_1000125FC(&qword_100132120);
  v2 = *v0;
  v3 = sub_1000E9E74();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 32 * v17;
        v20 = *v19;
        v22 = *(v19 + 8);
        v21 = *(v19 + 16);
        v23 = *(v19 + 24);
        *(*(v4 + 48) + 8 * v17) = v18;
        v24 = *(v4 + 56) + 32 * v17;
        *v24 = v20;
        *(v24 + 8) = v22;
        *(v24 + 16) = v21;
        *(v24 + 24) = v23;
        v25 = v18;
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

void *sub_1000B5C20()
{
  v1 = v0;
  sub_1000125FC(&unk_1001320A0);
  v2 = *v0;
  v3 = sub_1000E9E74();
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
        v17 = 3 * (v14 | (v8 << 6));
        v18 = 8 * v17;
        v19 = *(v2 + 48) + 8 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v17 <<= 6;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 112);
        v25 = *(v22 + 64);
        v24 = *(v22 + 80);
        v26 = *(v19 + 16);
        v51 = *(v22 + 96);
        v52 = v23;
        v49 = v25;
        v50 = v24;
        v28 = *(v22 + 144);
        v27 = *(v22 + 160);
        v29 = *(v22 + 128);
        v56 = *(v22 + 176);
        v54 = v28;
        v55 = v27;
        v53 = v29;
        v31 = *v22;
        v30 = *(v22 + 16);
        v32 = *(v22 + 48);
        v47 = *(v22 + 32);
        v48 = v32;
        v45 = v31;
        v46 = v30;
        v33 = *(v4 + 48) + v18;
        *v33 = v20;
        *(v33 + 8) = v21;
        *(v33 + 16) = v26;
        v34 = *(v4 + 56) + v17;
        v35 = v45;
        v36 = v46;
        v37 = v48;
        *(v34 + 32) = v47;
        *(v34 + 48) = v37;
        *v34 = v35;
        *(v34 + 16) = v36;
        v38 = v49;
        v39 = v50;
        v40 = v52;
        *(v34 + 96) = v51;
        *(v34 + 112) = v40;
        *(v34 + 64) = v38;
        *(v34 + 80) = v39;
        v41 = v53;
        v42 = v54;
        v43 = v55;
        *(v34 + 176) = v56;
        *(v34 + 144) = v42;
        *(v34 + 160) = v43;
        *(v34 + 128) = v41;
        sub_1000A1DD4(v20, v21, v26);
        result = sub_1000B89BC(&v45, &v44);
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

void *sub_1000B5E1C()
{
  v1 = v0;
  sub_1000125FC(&qword_1001320B0);
  v2 = *v0;
  v3 = sub_1000E9E74();
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
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v17 *= 16;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        LOBYTE(v22) = *(v22 + 12);
        v25 = *(v4 + 48) + v18;
        v26 = *(v19 + 16);
        *v25 = *v19;
        *(v25 + 8) = v21;
        *(v25 + 16) = v26;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 12) = v22;
        result = sub_1000A1DD4(v20, v21, v26);
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

void *sub_1000B5FAC()
{
  v1 = v0;
  sub_1000125FC(&qword_1001320B8);
  v2 = *v0;
  v3 = sub_1000E9E74();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = *(v21 + 4);
        v24 = *(v21 + 8);
        v25 = *(v21 + 12);
        v26 = *(v21 + 16);
        LOBYTE(v21) = *(v21 + 20);
        v27 = *(v4 + 48) + v17;
        v28 = *(v18 + 16);
        *v27 = *v18;
        *(v27 + 8) = v20;
        *(v27 + 16) = v28;
        v29 = *(v4 + 56) + v17;
        *v29 = v22;
        *(v29 + 4) = v23;
        *(v29 + 8) = v24;
        *(v29 + 12) = v25;
        *(v29 + 16) = v26;
        *(v29 + 20) = v21;
        result = sub_1000A1DD4(v19, v20, v28);
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

void *sub_1000B6150()
{
  v1 = v0;
  sub_1000125FC(&qword_100132090);
  v2 = *v0;
  v3 = sub_1000E9E74();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *sub_1000B62AC()
{
  v1 = v0;
  sub_1000125FC(&unk_100133150);
  v2 = *v0;
  v3 = sub_1000E9E74();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v19)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = (*(v2 + 48) + 2 * v14);
      v18 = *v17;
      LOBYTE(v17) = v17[1];
      v19 = *(*(v2 + 56) + 4 * v14);
      v20 = (*(v4 + 48) + 2 * v14);
      *v20 = v18;
      v20[1] = v17;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_1000B640C(uint64_t *a1)
{
  v2 = v1;
  sub_1000125FC(a1);
  v3 = *v1;
  v4 = sub_1000E9E74();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
        *(*(v5 + 56) + 8 * v18) = v19;
        result = swift_unknownObjectRetain();
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_1000B6558()
{
  v1 = v0;
  sub_1000125FC(&unk_100132100);
  v2 = *v0;
  v3 = sub_1000E9E74();
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
        sub_100032808(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_100012898(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_100032864(v22, (*(v4 + 56) + v17));
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

void *sub_1000B66FC()
{
  v1 = v0;
  sub_1000125FC(&qword_100132060);
  v2 = *v0;
  v3 = sub_1000E9E74();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

void *sub_1000B6864()
{
  v1 = v0;
  sub_1000125FC(&qword_100130E90);
  v2 = *v0;
  v3 = sub_1000E9E74();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

id sub_1000B69C8()
{
  v1 = v0;
  sub_1000125FC(&unk_1001320E0);
  v2 = *v0;
  v3 = sub_1000E9E74();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_100012898(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100032864(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

id sub_1000B6B48()
{
  v1 = v0;
  sub_1000125FC(&qword_100133180);
  v2 = *v0;
  v3 = sub_1000E9E74();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(v2 + 56) + 24 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        *(*(v4 + 48) + 8 * v17) = v18;
        v23 = (*(v4 + 56) + 24 * v17);
        *v23 = v20;
        v23[1] = v21;
        v23[2] = v22;

        v24 = v18;
        v25 = v20;
        result = v21;
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

void *sub_1000B6CD0()
{
  v1 = v0;
  sub_1000125FC(&unk_100133160);
  v2 = *v0;
  v3 = sub_1000E9E74();
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
        v18 = *(v2 + 56) + 32 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v23 = *(v4 + 56) + 32 * v17;
        *v23 = v19;
        *(v23 + 8) = v20;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        v24 = v19;
        result = sub_10009870C(v21, v22);
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

__n64 sub_1000B6E64(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  v3 = vsubq_f32(a1, a2);
  v4 = vmulq_f32(v3, v3);
  v5 = vaddv_f32(*v4.f32);
  *v4.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5));
  *v4.f32 = vmul_f32(*v4.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5), vmul_f32(*v4.f32, *v4.f32)));
  v6 = vmulq_n_f32(v3, vmul_f32(*v4.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5), vmul_f32(*v4.f32, *v4.f32))).f32[0]);
  v7 = vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL);
  v8 = vmlaq_f32(vmulq_f32(v7, vnegq_f32(a3)), v6, vextq_s8(vuzp1q_s32(a3, a3), a3, 0xCuLL));
  v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v10 = vmulq_f32(v8, v8);
  *&v11 = v10.f32[1] + (v10.f32[2] + v10.f32[0]);
  *v10.f32 = vrsqrte_f32(v11);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32)));
  v12 = vmulq_n_f32(v9, vmul_f32(*v10.f32, vrsqrts_f32(v11, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
  result.n64_u32[0] = v12.i32[0];
  result.n64_u32[1] = vdupq_laneq_s32(vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL), vnegq_f32(v6)), v12, v7), 2).u32[0];
  return result;
}

double sub_1000B6FA0(void *a1)
{
  v17 = matrix_identity_float4x4.columns[0];
  *v2.f32 = sub_1000B6E64(xmmword_1000EC920, 0, xmmword_1000EC910);
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v6 = [a1 width];
  v7 = v6 / [a1 height];
  v8 = ((36.0 / v7) * 0.5) / 36.0;
  if (v7 <= 1.0)
  {
    v8 = 0.5;
  }

  v9 = atanf(v8);
  v10 = tanf((v9 + v9) * 0.5);
  LODWORD(v11) = 0;
  *(&v11 + 1) = 1.0 / v10;
  *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT((1.0 / v10) / v7), v13.f32[0]), v11, *v13.f32, 1), xmmword_1000F40D0, v13, 2), xmmword_1000F40E0, v13, 3), v17.f32[0]), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT((1.0 / v10) / v7), v14.f32[0]), v11, *v14.f32, 1), xmmword_1000F40D0, v14, 2), xmmword_1000F40E0, v14, 3), *v17.f32, 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT((1.0 / v10) / v7), v15.f32[0]), v11, *v15.f32, 1), xmmword_1000F40D0, v15, 2), xmmword_1000F40E0, v15, 3), v17, 2), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(COERCE_UNSIGNED_INT((1.0 / v10) / v7), v16.f32[0]), v11, *v16.f32, 1), xmmword_1000F40D0, v16, 2), xmmword_1000F40E0, v16, 3), v17, 3).u64[0];
  return result;
}

int32x2_t sub_1000B7130(int32x4_t a1, float32x4_t a2, double a3, double a4, double a5, int32x2_t a6, double a7)
{
  a6.i32[0] = a1.i32[0];
  *&a7 = 1.0 - a2.f32[0];
  *(v7 + 84) = 1.0 - a2.f32[0];
  v8 = *(v7 + 22);
  if (v8 != 1 || (*&a7 > 0.0 ? (_NF = *&a7 < 1.0) : (_NF = 0), _NF))
  {
    if (*a1.i32 > 0.0)
    {
      v10 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    LOBYTE(v8) = 0;
    v10 = 0;
    *(v7 + 22) = 0;
    if (*a1.i32 > 0.0)
    {
      goto LABEL_12;
    }
  }

  v11 = *(v7 + 88);
  v12 = vdup_lane_s32(v11, 0);
  v12.f32[0] = 1.0 - a2.f32[0];
  v13 = vsub_f32(v12, v11);
  __asm { FMOV            V3.2S, #1.0 }

  v17 = vand_s8(vbsl_s8(0x8000000080000000, _D3, v13), vorr_s8(vcltz_f32(v13), vcgtz_f32(v13)));
  v10 = 1;
  if ((vceq_f32(v17, vdup_lane_s32(v17, 1)).u8[0] & 1) == 0)
  {
    *(v7 + 22) = 1;
    LOBYTE(v8) = 1;
  }

LABEL_12:
  if (*(v7 + 20))
  {
    if (a2.f32[0] >= 1.0 || a2.f32[0] <= 0.0)
    {
      if (*a6.i32 >= 1.0)
      {
        LOBYTE(v10) = 1;
      }

      if (v10)
      {
        goto LABEL_23;
      }
    }

    else if (v10)
    {
LABEL_23:
      *(v7 + 20) = 0;
      goto LABEL_25;
    }
  }

  else
  {
    __asm { FMOV            V0.4S, #1.0 }

    _Q0.i64[0] = __PAIR64__(a6.u32[0], a2.u32[0]);
    a2.i64[0] = 0;
    a2.i64[1] = _Q0.i64[0];
    a1 = vcgtq_f32(_Q0, a2);
    if ((vminv_u16(vmovn_s32(a1)) & 1) == 0)
    {
      goto LABEL_25;
    }

    *(v7 + 20) = 1;
    if (COERCE_FLOAT(*(v7 + 96)) == 0.0)
    {
      *(v7 + 21) = 1;
    }
  }

  LOBYTE(v8) = 3;
LABEL_25:
  if (*(v7 + 21))
  {
    LOBYTE(v8) = 2;
  }

  *(v7 + 23) = v8;
  a1.i64[0] = *(v7 + 88);
  v45 = a1.i64[0];
  *a1.i32 = *&a7 - *a1.i32;
  a2.i32[0] = 1.0;
  v19.i64[0] = 0x8000000080000000;
  v19.i64[1] = 0x8000000080000000;
  LODWORD(v20) = vbslq_s8(v19, a2, a1).u32[0];
  if (*a1.i32 == 0.0)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = v20;
  }

  if (*a1.i32 != 0.0)
  {
    *(v7 + 16) = v20;
  }

  v22 = *(v7 + 72);
  if (fabsf(*a1.i32) > 0.1)
  {
    *a1.i32 = (*&a7 - v22) * 0.0;
    *(v7 + 16) = 0;
  }

  v23 = fminf(v22 + *a1.i32, 1.0);
  v24 = 0.0;
  if (v23 < 0.0)
  {
    v25 = 0.0;
  }

  else
  {
    v25 = v23;
  }

  if (v21 > 0.0 && *(v7 + 16) > 0.0 && v25 < *&a7)
  {
    v24 = *&a7;
  }

  v46 = a6;
  v44 = a7;
  if (v21 < 0.0 && *&a7 < v25 && *(v7 + 16) < 0.0)
  {
    v24 = 1.0 - *&a7;
  }

  v27 = powf(v24, 5.0);
  v29 = *&v44 == *(&v45 + 1) && *&v44 == *&v45;
  if (v29 && v27 == 0.0)
  {
    v27 = 0.3;
  }

  *(v7 + 72) = (*&v44 * v27) + (v25 * (1.0 - v27));
  v30 = fminf(powf(fabsf((*v46.i32 + -0.5) + (*v46.i32 + -0.5)), 5.0) + 0.2, 1.0);
  *(v7 + 64) = (v30 * *v46.i32) + (*(v7 + 64) * (1.0 - v30));
  v31 = *(v7 + 48);
  [v31 _solveForInput:?];
  *(v7 + 76) = v32;
  v33 = *(v7 + 72);
  *&v34 = powf(fabsf((v33 + -0.5) + (v33 + -0.5)), 5.0);
  v35 = *(v7 + 23);
  if (v35 == 2)
  {
    LODWORD(v34) = *(v7 + 64);
    [v31 _solveForInput:v34];
    *(v7 + 76) = v36.i32[0];
    *(v7 + 80) = 1065353216;
  }

  else
  {
    if (v35 == 3)
    {
      LODWORD(v34) = *(v7 + 64);
      [*(v7 + 56) _solveForInput:v34];
      *(v7 + 76) = v36.i32[0];
    }

    else
    {
      v37 = fminf(*&v34 + 0.2, 1.0);
      if (*(v7 + 16) == 1.0)
      {
        v38 = 0.5;
        if (v33 <= 0.5)
        {
          v38 = v33;
        }

        *&v34 = (v38 + v38) + 0.0;
        if (v33 <= 0.0)
        {
          *&v34 = 0.0;
        }

        v39 = *(v7 + 80);
        v40 = *(v7 + 32);
      }

      else
      {
        if (v33 <= 1.0)
        {
          v41 = v33;
        }

        else
        {
          v41 = 1.0;
        }

        *&v34 = ((v41 + -0.5) + (v41 + -0.5)) + 0.0;
        if (v33 <= 0.5)
        {
          *&v34 = 0.0;
        }

        v39 = *(v7 + 80);
        v40 = *(v7 + 40);
      }

      [v40 _solveForInput:{v34, *&v44}];
      *v36.i32 = ((1.0 - v37) * v39) + (v37 * *v36.i32);
    }

    *(v7 + 80) = v36.i32[0];
  }

  v36.i32[0] = *(v7 + 84);
  result = vzip1_s32(v36, *(v7 + 88));
  v43 = vzip1_s32(v46, *(v7 + 96));
  *(v7 + 88) = result;
  *(v7 + 96) = v43;
  return result;
}

uint64_t sub_1000B7518(uint64_t a1, int32x4_t a2, float32x4_t a3, double a4, double a5, double a6, int32x2_t a7, double a8)
{
  if (*(v8 + 25) == 1)
  {
    *(v8 + 23) = 0;
    v34 = *a1;
    v36 = *(a1 + 4);
    *(v8 + 68) = 1.0 - v36;
    *(v8 + 72) = 1.0 - v36;
    *(v8 + 64) = v34;
  }

  else
  {
    LODWORD(a4) = *(a1 + 4);
    v34 = *a1;
    v36 = *&a4;
    *a2.i32 = fminf(*a1, 1.0);
    a3.f32[0] = fminf(*&a4, 1.0);
    sub_1000B7130(a2, a3, a4, a5, a6, a7, a8);
  }

  v33 = COERCE_DOUBLE(vcvt_f32_f64(*(a1 + 144)));
  swift_beginAccess();
  sub_1000B08C8(v33, v10, v11, v12, v13);
  swift_endAccess();
  v14.i32[0] = *(v8 + 76);
  v15 = *(v8 + 72);
  *&v14.i32[1] = 1.0 - *(v8 + 80);
  v14.i64[1] = __PAIR64__(LODWORD(v36), LODWORD(v34));
  *(v8 + 144) = dword_1000F40F0[*(v8 + 23)];
  v16 = vandq_s8(v14, vcgezq_f32(v14));
  __asm { FMOV            V1.4S, #1.0 }

  *(v8 + 148) = vminnmq_f32(v16, _Q1);
  v21 = *(v8 + 64);
  _Q1.f32[0] = v21;
  _Q1.f32[1] = 1.0 - v15;
  *v16.f32 = vand_s8(*_Q1.f32, vcgez_f32(*_Q1.f32));
  __asm { FMOV            V1.2S, #1.0 }

  *(v8 + 164) = vminnm_f32(*v16.f32, *_Q1.f32);
  if (*(v8 + 25) == 1)
  {
    result = sub_1000AB4A4(&off_10011F718);
  }

  else
  {
    v35 = v21;
    result = swift_beginAccess();
    if ((1.0 - v35) >= 0.0)
    {
      v24 = 1.0;
      v26 = 1.0 - v36;
      v25 = 0.0;
      if ((1.0 - v35) >= 1.0)
      {
        if (v26 >= 0.0)
        {
          v24 = 1.0;
          v25 = fminf(v26, 1.0);
        }
      }

      else
      {
        if (v26 >= 0.0)
        {
          v25 = fminf(v26, 1.0);
        }

        v24 = 1.0 - v35;
      }
    }

    else
    {
      v24 = 0.0;
      if ((1.0 - v36) >= 0.0)
      {
        v25 = fminf(1.0 - v36, 1.0);
      }

      else
      {
        v25 = 0.0;
      }
    }

    v23 = vmul_n_f32(vmul_n_f32(*(v8 + 304), v24), v25);
  }

  *(v8 + 176) = v23;
  if (*(v8 + 384))
  {
    __break(1u);
  }

  else
  {
    v28 = *(v8 + 336);
    v27 = *(v8 + 352);
    v29 = *(v8 + 368);
    v30 = *(v8 + 376);
    *(v8 + 192) = *(v8 + 320);
    *(v8 + 208) = v28;
    *(v8 + 224) = v27;
    *(v8 + 240) = v29;
    *(v8 + 248) = v30;
    result = sub_100084B30();
    v32 = (result & 1) == 0 && result != 2;
    *(v8 + 256) = v32;
  }

  return result;
}

id sub_1000B7744(void *a1, void *a2, char a3)
{
  [a1 setFragmentTexture:a2[1] atIndex:0];
  [a1 setFragmentTexture:a2[2] atIndex:1];
  [a1 setFragmentTexture:a2[3] atIndex:2];
  [a1 setFragmentTexture:a2[4] atIndex:3];
  [a1 setFragmentTexture:a2[5] atIndex:4];
  [a1 setFragmentTexture:a2[6] atIndex:5];
  [a1 setFragmentTexture:a2[7] atIndex:6];
  v6 = a2[8];
  if (*(v6 + 16) && (v7 = sub_10009F428(a3), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_unknownObjectRetain();
  }

  else
  {
    v9 = 0;
  }

  [a1 setFragmentTexture:v9 atIndex:7];
  swift_unknownObjectRelease();
  [a1 setFragmentTexture:a2[9] atIndex:8];
  [a1 setFragmentTexture:a2[10] atIndex:9];
  v10 = a2[11];

  return [a1 setFragmentTexture:v10 atIndex:10];
}

void sub_1000B789C(uint64_t a1, void *a2, void *a3, int32x2_t a4, double a5)
{
  if (*(v5 + 64) == -1.0)
  {
    a4.i32[0] = *a1;
    *&a5 = 1.0 - *(a1 + 4);
    *(v5 + 64) = *a1;
    *(v5 + 68) = LODWORD(a5);
    *(v5 + 72) = LODWORD(a5);
    *(v5 + 76) = a4.i32[0];
    *(v5 + 80) = LODWORD(a5);
    *(v5 + 84) = LODWORD(a5);
    *(v5 + 88) = vdup_lane_s32(*&a5, 0);
    *(v5 + 96) = vdup_lane_s32(a4, 0);
  }

  v9 = sub_1000AFFF8();
  if (*(a1 + 52))
  {
    if (qword_10012F788 != -1)
    {
      swift_once();
    }

    v10 = sub_1000E96A4();
    sub_100007488(v10, qword_10013DE60);
    v11 = sub_1000E9684();
    v12 = sub_1000E9BA4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No look identifier provided", v13, 2u);
    }

    return;
  }

  v14 = v9;
  v67 = a3;
  v68 = a2;
  v15 = *(a1 + 48);
  v17 = *(a1 + 32);
  v16 = *(a1 + 40);
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);

  v20._rawValue = &off_10011F660;
  v72._countAndFlagsBits = v19;
  v72._object = v18;
  v21 = sub_1000E9EC4(v20, v72);
  sub_1000127B0(v19, v18, v17, v16, v15, 0);
  if (v21 >= 3)
  {
    LOBYTE(v21) = v14;
  }

  swift_beginAccess();
  v22 = *(v5 + 104);
  if (*(v22 + 16))
  {
    v23 = v5;

    v24 = sub_10009F428(v21);
    if (v25)
    {
      v66 = *(*(v22 + 56) + 8 * v24);
      swift_unknownObjectRetain();

      if (*(v5 + 384))
      {
        *&v26 = sub_1000B6FA0(v68);
        LOBYTE(v71[0]) = 0;
        *(v5 + 320) = v26;
        *(v5 + 336) = v27;
        *(v5 + 352) = v28;
        *(v5 + 368) = v29;
        *(v5 + 384) = 0;
      }

      v30 = [objc_allocWithZone(MTLRenderPassDescriptor) init];
      v31 = [v30 colorAttachments];
      v32 = [v31 objectAtIndexedSubscript:0];

      if (v32)
      {
        v33 = v32;
        [v33 setTexture:v68];
        [v33 setLoadAction:0];
        [v33 setStoreAction:1];

        v34 = [v67 renderCommandEncoderWithDescriptor:v30];
        if (!v34)
        {
          swift_unknownObjectRelease();

          return;
        }

        v69 = v21;
        v35 = *(v23 + 272);
        if ((v35 - 0x80000000000000) >> 56 == 255)
        {
          v36 = v34;
          *(v23 + 280) = v35 << 8;
          v37 = *(v23 + 264);
          v38 = [swift_unknownObjectRetain() contents];
          v39 = v37;
          v40 = *(v23 + 280);
          sub_1000B7518(a1, v41, v42, v43, v44, v45, v46, v47);
          memmove(&v38[v40], (v23 + 144), 0x71uLL);
          [v36 setRenderPipelineState:v66];
          [v36 setCullMode:2];
          [v36 setVertexBuffer:*(v23 + 264) offset:*(v23 + 280) atIndex:0];
          [v36 setFragmentBuffer:*(v23 + 264) offset:*(v23 + 280) atIndex:0];
          v48 = *(v23 + 424);
          v49 = *(v23 + 456);
          v50 = *(v23 + 472);
          v71[3] = *(v23 + 440);
          v71[4] = v49;
          v71[5] = v50;
          v51 = *(v23 + 408);
          v71[0] = *(v23 + 392);
          v71[1] = v51;
          v71[2] = v48;
          sub_1000B7E3C(v71, v70);
          sub_1000B7744(v36, v71, v69);
          sub_1000B7E74(v71);
          [v36 drawPrimitives:3 vertexStart:0 vertexCount:6];
          [v36 endEncoding];
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          v52 = *(v23 + 272);
          v53 = __OFADD__(v52, 1);
          v54 = v52 + 1;
          if (!v53)
          {
            v55 = -v54 < 0;
            v56 = -v54 & 7;
            v57 = v54 & 7;
            if (!v55)
            {
              v57 = -v56;
            }

            *(v23 + 272) = v57;
            return;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
      }

      __break(1u);
      return;
    }
  }

  if (qword_10012F788 != -1)
  {
    swift_once();
  }

  v58 = sub_1000E96A4();
  sub_100007488(v58, qword_10013DE60);
  v59 = sub_1000E9684();
  v60 = sub_1000E9BA4();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *&v71[0] = v62;
    *v61 = 136315138;
    v63 = sub_1000AFC98();
    v65 = sub_100093A3C(v63, v64, v71);

    *(v61 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v59, v60, "No render pipeline for look %s", v61, 0xCu);
    sub_100012710(v62);
  }
}

id sub_1000B7EA4(id a1, void *a2)
{
  v4 = sub_1000E98E4();
  v5 = [a2 newFunctionWithName:v4];

  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = sub_1000E98E4();

  v7 = [a2 newFunctionWithName:v6];

  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_10:
    sub_1000B8968();
    swift_allocError();
    swift_willThrow();
    return a1;
  }

  v8 = [objc_allocWithZone(MTLRenderPipelineDescriptor) init];
  [v8 setVertexFunction:v5];
  [v8 setFragmentFunction:v7];
  v9 = [v8 colorAttachments];
  v10 = [v9 objectAtIndexedSubscript:0];

  if (v10)
  {
    [v10 setPixelFormat:81];
  }

  v11 = [v8 colorAttachments];
  v12 = [v11 objectAtIndexedSubscript:0];

  if (v12)
  {
    [v12 setBlendingEnabled:0];
  }

  v16 = 0;
  v13 = [a1 newRenderPipelineStateWithDescriptor:v8 error:&v16];
  if (v13)
  {
    a1 = v13;
    v14 = v16;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    a1 = v16;
    sub_1000E92E4();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return a1;
}

uint64_t sub_1000B8174@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = [objc_allocWithZone(MTKTextureLoader) initWithDevice:a1];
  if (qword_10012F6A8 != -1)
  {
    swift_once();
  }

  v5 = qword_100132CB0;
  v6 = sub_1000B0354(0x35562D4C5F595655, 0xED00003435562D33, 7501925, 0xE300000000000000, v4, qword_100132CB0);
  if (v2)
  {

    return swift_unknownObjectRelease();
  }

  else
  {
    v7 = v6;
    v34 = sub_1000B0354(0xD000000000000016, 0x80000001000F93F0, 7501925, 0xE300000000000000, v4, v5);
    v25 = sub_1000B0354(0xD000000000000019, 0x80000001000F9410, 7501925, 0xE300000000000000, v4, v5);
    v24 = sub_1000B0354(0xD00000000000001DLL, 0x80000001000F9430, 7501925, 0xE300000000000000, v4, v5);
    v23 = sub_1000B0354(0xD000000000000011, 0x80000001000F9450, 7501925, 0xE300000000000000, v4, v5);
    v22 = sub_1000B0354(0x562D315F6B73616DLL, 0xEE003435562D3335, 7501925, 0xE300000000000000, v4, v5);
    v21 = sub_1000B0354(0x562D325F6B73616DLL, 0xEE003435562D3335, 7501925, 0xE300000000000000, v4, v5);
    v20 = sub_1000B0354(0x562D335F6B73616DLL, 0xEE003435562D3335, 7501925, 0xE300000000000000, v4, v5);
    v19 = sub_1000B0354(0x562D345F6B73616DLL, 0xEE003435562D3335, 7501925, 0xE300000000000000, v4, v5);
    v8 = sub_1000B0354(0x562D6C6165766572, 0xEE003435562D3335, 7501925, 0xE300000000000000, v4, v5);
    v18 = sub_1000B0354(0xD00000000000001ELL, 0x80000001000F9470, 7501925, 0xE300000000000000, v4, v5);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33[0] = &_swiftEmptyDictionarySingleton;
    sub_1000B4D74(v18, 0, isUniquelyReferenced_nonNull_native);
    v10 = sub_1000B0354(0xD00000000000001ELL, 0x80000001000F94B0, 7501925, 0xE300000000000000, v4, v5);

    v11 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000B4D74(v10, 1, v11);
    v12 = sub_1000B0354(0xD00000000000001ELL, 0x80000001000F9490, 7501925, 0xE300000000000000, v4, v5);

    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_1000B4D74(v12, 2, v13);
    swift_unknownObjectRelease();

    LOBYTE(v27) = 3;
    *(&v27 + 1) = v34;
    *&v28 = v25;
    *(&v28 + 1) = v24;
    *&v29 = v22;
    *(&v29 + 1) = v21;
    *&v30 = v20;
    *(&v30 + 1) = v19;
    *&v31 = &_swiftEmptyDictionarySingleton;
    *(&v31 + 1) = v23;
    *&v32 = v7;
    *(&v32 + 1) = v8;
    LOBYTE(v33[0]) = 3;
    v33[1] = v34;
    v33[2] = v25;
    v33[3] = v24;
    v33[4] = v22;
    v33[5] = v21;
    v33[6] = v20;
    v33[7] = v19;
    v33[8] = &_swiftEmptyDictionarySingleton;
    v33[9] = v23;
    v33[10] = v7;
    v33[11] = v8;
    sub_1000B7E3C(&v27, v26);
    result = sub_1000B7E74(v33);
    v15 = v30;
    a2[2] = v29;
    a2[3] = v15;
    v16 = v32;
    a2[4] = v31;
    a2[5] = v16;
    v17 = v28;
    *a2 = v27;
    a2[1] = v17;
  }

  return result;
}

uint64_t sub_1000B8900(uint64_t a1)
{
  v2 = sub_1000125FC(&qword_100132080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000B8968()
{
  result = qword_100133140;
  if (!qword_100133140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133140);
  }

  return result;
}

uint64_t sub_1000B8A74(unsigned int a1)
{
  if (a1 >= 4)
  {
    return 4;
  }

  else
  {
    return 0x1020300u >> (8 * a1);
  }
}

unint64_t sub_1000B8AA8()
{
  result = qword_100133188[0];
  if (!qword_100133188[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100133188);
  }

  return result;
}

__n128 sub_1000B8AFC(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1000B8B28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 113))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 112);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000B8B7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000B8C48()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000B8C98(uint64_t result, uint64_t a2, id a3, uint64_t a4)
{
  *(a2 + 32) = 0;
  *(a2 + 16) = result;
  if ((result & 0x8000000000000000) == 0)
  {
    v4 = a2;
    v5 = result;
    if (result)
    {
      v8 = [a3 newBufferWithLength:a4 options:0];
      if (!v8)
      {
LABEL_11:
        sub_10001B6F8();
        swift_allocError();
        *v12 = 3;
        swift_willThrow();

        sub_1000125FC(&qword_100133DD0);
        v4 = a2;
        swift_deallocPartialClassInstance();
        return v4;
      }

      v9 = v8;
      v10 = 0;
      while (1)
      {
        v14._countAndFlagsBits = sub_1000E9F54();
        sub_1000E99A4(v14);

        v11 = sub_1000E98E4();

        [v9 setLabel:v11];

        sub_1000E9A64();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000E9AB4();
        }

        sub_1000E9AD4();
        if (v5 == ++v10)
        {
          break;
        }

        v9 = [a3 newBufferWithLength:a4 options:0];
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      v4 = a2;
    }

    *(v4 + 24) = _swiftEmptyArrayStorage;
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B8ECC(uint64_t result, uint64_t a2, id a3, uint64_t a4)
{
  *(a2 + 32) = 0;
  *(a2 + 16) = result;
  if ((result & 0x8000000000000000) == 0)
  {
    v4 = a2;
    v5 = result;
    if (result)
    {
      v8 = [a3 newBufferWithLength:a4 options:0];
      if (!v8)
      {
LABEL_11:
        sub_10001B6F8();
        swift_allocError();
        *v12 = 3;
        swift_willThrow();

        sub_1000125FC(&qword_100133DD0);
        v4 = a2;
        swift_deallocPartialClassInstance();
        return v4;
      }

      v9 = v8;
      v10 = 0;
      while (1)
      {
        sub_1000E9D64(16);

        v14._countAndFlagsBits = sub_1000E9F54();
        sub_1000E99A4(v14);

        v11 = sub_1000E98E4();

        [v9 setLabel:v11];

        sub_1000E9A64();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000E9AB4();
        }

        sub_1000E9AD4();
        if (v5 == ++v10)
        {
          break;
        }

        v9 = [a3 newBufferWithLength:a4 options:0];
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      v4 = a2;
    }

    *(v4 + 24) = _swiftEmptyArrayStorage;
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B911C(uint64_t result, void *a2, id a3, uint64_t a4)
{
  a2[4] = 0;
  a2[2] = result;
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = result;
    if (result)
    {
      v8 = [a3 newBufferWithLength:a4 options:32];
      if (!v8)
      {
LABEL_11:
        sub_10001B6F8();
        swift_allocError();
        *v11 = 3;
        swift_willThrow();

        sub_1000125FC(&qword_100133DD0);
        swift_deallocPartialClassInstance();
        return a2;
      }

      v9 = v8;
      while (1)
      {
        v10 = sub_1000E98E4();
        [v9 setLabel:v10];

        sub_1000E9A64();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000E9AB4();
        }

        sub_1000E9AD4();
        if (!--v5)
        {
          break;
        }

        v9 = [a3 newBufferWithLength:a4 options:32];
        if (!v9)
        {
          goto LABEL_11;
        }
      }
    }

    a2[3] = _swiftEmptyArrayStorage;
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B92F4(uint64_t result, void *a2, id a3, uint64_t a4)
{
  a2[4] = 0;
  a2[2] = result;
  if ((result & 0x8000000000000000) == 0)
  {
    v5 = result;
    if (result)
    {
      v8 = [a3 newBufferWithLength:a4 options:32];
      if (!v8)
      {
LABEL_11:
        sub_10001B6F8();
        swift_allocError();
        *v11 = 3;
        swift_willThrow();

        sub_1000125FC(&qword_100133DD0);
        swift_deallocPartialClassInstance();
        return a2;
      }

      v9 = v8;
      while (1)
      {
        v10 = sub_1000E98E4();
        [v9 setLabel:v10];

        sub_1000E9A64();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1000E9AB4();
        }

        sub_1000E9AD4();
        if (!--v5)
        {
          break;
        }

        v9 = [a3 newBufferWithLength:a4 options:32];
        if (!v9)
        {
          goto LABEL_11;
        }
      }
    }

    a2[3] = _swiftEmptyArrayStorage;
    return a2;
  }

  __break(1u);
  return result;
}

__n128 Lens.__allocating_init(translation:aodTranslation:radii:aodRadii:ior:mask:)(unsigned __int8 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, float a6)
{
  v8 = swift_allocObject();
  v8[1] = a2;
  v8[2] = a4;
  result = a3;
  v8[3] = a5;
  v8[4] = a3;
  v8[5].n128_f32[0] = a6;
  v8[5].n128_u8[4] = a1;
  return result;
}

__n128 Lens.translation.setter(__n128 a1)
{
  swift_beginAccess();
  result = a1;
  v1[1] = a1;
  return result;
}

__n128 ToriLight.scale.setter(__n128 a1)
{
  swift_beginAccess();
  result = a1;
  v1[2] = a1;
  return result;
}

__n128 Lens.aodRadii.setter(__n128 a1)
{
  swift_beginAccess();
  result = a1;
  v1[3] = a1;
  return result;
}

__n128 Lens.aodTranslation.setter(__n128 a1)
{
  swift_beginAccess();
  result = a1;
  v1[4] = a1;
  return result;
}

uint64_t Lens.ior.setter(float a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t Lens.mask.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 84) = a1;
  return result;
}

__n128 *Lens.init(translation:aodTranslation:radii:aodRadii:ior:mask:)(unsigned __int8 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, float a6)
{
  v6[1] = a2;
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = a3;
  v6[5].n128_f32[0] = a6;
  v6[5].n128_u8[4] = a1;
  return v6;
}

__n128 Lens.getEllipsoid(progress:scaleBy:)(float a1)
{
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v5 = v1[4];
  swift_beginAccess();
  v2 = vsubq_f32(v1[1], v5);
  *&v3 = vaddq_f32(v5, vmulq_n_f32(v2, a1)).u64[0];
  *(&v3 + 2) = v5.f32[2] + vmuls_lane_f32(a1, v2, 2);
  HIDWORD(v3) = 0;
  v7 = v3;
  swift_beginAccess();
  return v7;
}

__n128 sub_1000B9A28(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000B9A3C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000B9A5C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

void *sub_1000B9AA8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 6) = *(a2 + 6);
  *result = v2;
  return result;
}

uint64_t sub_1000B9ABC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFFF && *(a1 + 14))
  {
    return (*a1 + 4095);
  }

  v3 = ((*(a1 + 12) >> 15) | (2 * ((*(a1 + 12) >> 4) & 0x7E0 | (*(a1 + 12) >> 3)))) ^ 0xFFF;
  if (v3 >= 0xFFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1000B9B18(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 4095;
    if (a3 >= 0xFFF)
    {
      *(result + 14) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFFF)
    {
      *(result + 14) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x7FF | ((-a2 & 0xFFF) << 11);
      *result = 0;
      *(result + 8) = 0;
      *(result + 12) = ((v3 << 36) & 0xFE0000000000 | ((v3 & 0x1F) << 35)) >> 32;
    }
  }

  return result;
}

uint64_t sub_1000B9B84(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = WORD2(v3) & 0x7FFF;
  return result;
}

uint64_t sub_1000B9BA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  result = a1 + 8;
  v4 = (v3 | (*(result + 4) << 32)) & 0x107FFFFFFFFLL | (a2 << 47);
  *result = v3;
  *(result + 4) = WORD2(v4);
  return result;
}

uint64_t getEnumTagSinglePayload for SpaceScene.BackgroundGradient.LookupKey(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SpaceScene.BackgroundGradient.LookupKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000B9D5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 520))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 176);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B9DA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 504) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 520) = 1;
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
      *(result + 176) = (a2 - 1);
      return result;
    }

    *(result + 520) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000B9E78(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1000B9EB4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 184))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 144);
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

uint64_t sub_1000B9F10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
      *(result + 184) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 184) = 0;
    }

    if (a2)
    {
      *(result + 144) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpaceScene.Light.Gobo(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_20;
  }

  v2 = a2 + 12;
  if (a2 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 12;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 12;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 9)
  {
    v8 = v7 - 8;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SpaceScene.Light.Gobo(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 12;
  if (a3 + 12 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF4)
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1000BA0F8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 9)
  {
    return v1 - 8;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1000BA10C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 8;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpaceScene.Light.Gobo.Texture(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SpaceScene.Light.Gobo.Texture(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000BA27C(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1000A36B4(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000BA374(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1000E9E64();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1000E9E64();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1000C1888(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000C4DB8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

__n64 sub_1000BA464(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, float a7)
{
  v7.i32[0] = a4;
  if (a6)
  {
    if (a6 == 1)
    {
      v8.i32[0] = a1;
      if (a3)
      {
        if (a3 == 1)
        {
          result.n64_u32[1] = 0;
          result.n64_f32[0] = ((*&a1 - *&a4) * a7) + *&a4;
          return result;
        }

        v27 = *(&a2 + 1);
        v25 = a2;
        v26.f32[0] = *(&a1 + 1) + -1.0;
      }

      else
      {
        v25 = a2;
        v26.f32[0] = *(&a1 + 1) + -1.0;
        v27 = 6500.0;
      }

      v8.i32[1] = v25;
      __asm { FMOV            V4.2S, #-1.0 }

      v29 = vmul_n_f32(vadd_f32(v8, _D4), a7);
      __asm { FMOV            V4.2S, #1.0 }

      v31 = vadd_f32(v29, _D4);
      v26.f32[1] = v27 - *&a4;
      _D4.i32[1] = a4;
      v18 = vadd_f32(vmul_n_f32(v26, a7), _D4);
      v32.i64[0] = v31.u32[0];
      v32.i64[1] = v31.u32[1];
      v33 = v32;
      return vorrq_s8(vshll_n_s32(v18, 0x20uLL), v33).u64[0];
    }

    v19.i64[0] = a4;
    v19.i64[1] = a5;
    v20 = vshrn_n_s64(v19, 0x20uLL);
    v21.i32[0] = a1;
    if (a3)
    {
      if (a3 == 1)
      {
        v7.i32[1] = a5;
        __asm { FMOV            V4.2S, #1.0 }

        v23 = vsub_f32(_D4, v7);
        _D4.i32[1] = a1;
        v24 = vsub_f32(_D4, v20);
        v17 = vadd_f32(vmul_n_f32(v23, a7), v7);
      }

      else
      {
        v38.i64[0] = a1;
        v38.i64[1] = a2;
        v21.i32[1] = a2;
        v7.i32[1] = a5;
        v17 = vadd_f32(vmul_n_f32(vsub_f32(v21, v7), a7), v7);
        v24 = vsub_f32(vshrn_n_s64(v38, 0x20uLL), v20);
      }
    }

    else
    {
      v21.i32[1] = a2;
      v7.i32[1] = a5;
      v36 = vmul_n_f32(vsub_f32(v21, v7), a7);
      v17 = vadd_f32(v36, v7);
      v36.i32[0] = 1170939904;
      v37 = vdup_lane_s32(v36, 0);
      v37.i32[0] = HIDWORD(a1);
      v24 = vsub_f32(v37, v20);
    }

    v18 = vadd_f32(vmul_n_f32(v24, a7), v20);
  }

  else
  {
    v10.i32[0] = HIDWORD(a4);
    if (!a3)
    {
      return (COERCE_UNSIGNED_INT(((*&a1 - *&a4) * a7) + *&a4) | (COERCE_UNSIGNED_INT(((*(&a1 + 1) - *(&a4 + 1)) * a7) + *(&a4 + 1)) << 32));
    }

    if (a3 == 1)
    {
      v7.i32[1] = a5;
      __asm { FMOV            V3.2S, #1.0 }

      v16 = vsub_f32(_D3, v7);
      _D3.i32[0] = vsub_f32(_D3, __PAIR64__(a1, HIDWORD(a4))).u32[0];
      _D3.i32[1] = vadd_f32(__PAIR64__(a1, *(&a4 + 4)), vdup_n_s32(0xC5CB2000)).i32[1];
      v17 = vadd_f32(vmul_n_f32(v16, a7), v7);
      v10.i32[1] = 1170939904;
      v18 = vadd_f32(vmul_n_f32(_D3, a7), v10);
    }

    else
    {
      v34.f32[0] = *(&a1 + 1) - *(&a4 + 1);
      v35.i32[0] = vdup_lane_s32(__PAIR64__(a1, HIDWORD(a4)), 1).u32[0];
      v35.i32[1] = a2;
      v7.i32[1] = a5;
      v17 = vadd_f32(vmul_n_f32(vsub_f32(v35, v7), a7), v7);
      v34.f32[1] = *(&a2 + 1) + -6500.0;
      v10.i32[1] = 1170939904;
      v18 = vadd_f32(vmul_n_f32(v34, a7), v10);
    }
  }

  v39.i64[0] = v17.u32[0];
  v39.i64[1] = v17.u32[1];
  v33 = v39;
  return vorrq_s8(vshll_n_s32(v18, 0x20uLL), v33).u64[0];
}

uint64_t sub_1000BA704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v72 = a3;
  *(&v72 + 1) = a4;
  v97 = *v5;
  v7 = *(v5 + 16);
  v86 = *(v5 + 24);
  v71 = *(v5 + 48);
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  sub_1000C6180(v5, &v92);
  v12 = (v9 + 63) >> 6;
  v75 = a1;

  v13 = 0;
  v74 = v8;
  while (v11)
  {
    v15 = v13;
LABEL_11:
    v16 = 24 * (__clz(__rbit64(v11)) | (v15 << 6));
    v17 = *(v75 + 48) + v16;
    v19 = *v17;
    v18 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v75 + 56) + v16;
    v77 = *v21;
    v78 = *(v21 + 4);
    v79 = *(v21 + 8);
    v81 = *(v21 + 12);
    v83 = *(v21 + 16);
    v84 = *(v21 + 20);
    sub_1000A1DD4(*v17, v18, v20);
    v22 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v92 = v22;
    v25 = sub_10009F2C8(v19, v18, v20);
    v26 = v22[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_42;
    }

    v29 = v24;
    if (v22[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000B5FAC();
      }
    }

    else
    {
      sub_1000B264C(v28, isUniquelyReferenced_nonNull_native);
      v30 = sub_10009F2C8(v19, v18, v20);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_46;
      }

      v25 = v30;
    }

    v11 &= v11 - 1;
    v7 = v92;
    if (v29)
    {
      v14 = *(v92 + 56) + 24 * v25;
      *v14 = v77;
      *(v14 + 4) = v78;
      *(v14 + 8) = v79;
      *(v14 + 12) = v81;
      *(v14 + 16) = v83;
      *(v14 + 20) = v84;
      sub_1000A1DF8(v19, v18, v20);
    }

    else
    {
      *(v92 + 8 * (v25 >> 6) + 64) |= 1 << v25;
      v32 = v7[6] + 24 * v25;
      *v32 = v19;
      *(v32 + 8) = v18;
      *(v32 + 16) = v20;
      v33 = v7[7] + 24 * v25;
      *v33 = v77;
      *(v33 + 4) = v78;
      *(v33 + 8) = v79;
      *(v33 + 12) = v81;
      *(v33 + 16) = v83;
      *(v33 + 20) = v84;
      v34 = v7[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_44;
      }

      v7[2] = v36;
    }

    v13 = v15;
    v8 = v74;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      goto LABEL_11;
    }
  }

  v80 = v7;

  v37 = a2 + 64;
  v38 = 1 << *(a2 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(a2 + 64);
  v41 = (v38 + 63) >> 6;

  v42 = 0;
  v82 = v41;
  while (v40)
  {
    v44 = v42;
LABEL_30:
    v45 = __clz(__rbit64(v40)) | (v44 << 6);
    v46 = *(a2 + 48) + 24 * v45;
    v48 = *v46;
    v47 = *(v46 + 8);
    v49 = *(v46 + 16);
    v50 = *(a2 + 56) + 16 * v45;
    v85 = *v50;
    v51 = *(v50 + 8);
    v52 = *(v50 + 12);
    sub_1000A1DD4(*v46, v47, v49);
    v53 = swift_isUniquelyReferenced_nonNull_native();
    *&v92 = v86;
    v54 = sub_10009F2C8(v48, v47, v49);
    v56 = *(v86 + 16);
    v57 = (v55 & 1) == 0;
    v35 = __OFADD__(v56, v57);
    v58 = v56 + v57;
    if (v35)
    {
      goto LABEL_43;
    }

    v59 = v55;
    if (*(v86 + 24) >= v58)
    {
      if ((v53 & 1) == 0)
      {
        v66 = v54;
        sub_1000B5E1C();
        v54 = v66;
      }
    }

    else
    {
      sub_1000B2368(v58, v53);
      v54 = sub_10009F2C8(v48, v47, v49);
      if ((v59 & 1) != (v60 & 1))
      {
        goto LABEL_46;
      }
    }

    v40 &= v40 - 1;
    v61 = v92;
    v86 = v92;
    if (v59)
    {
      v43 = *(v92 + 56) + 16 * v54;
      *v43 = v85;
      *(v43 + 8) = v51;
      *(v43 + 12) = v52;
      sub_1000A1DF8(v48, v47, v49);
    }

    else
    {
      *(v92 + 8 * (v54 >> 6) + 64) |= 1 << v54;
      v62 = v61[6] + 24 * v54;
      *v62 = v48;
      *(v62 + 8) = v47;
      *(v62 + 16) = v49;
      v63 = v61[7] + 16 * v54;
      *v63 = v85;
      *(v63 + 8) = v51;
      *(v63 + 12) = v52;
      v64 = v61[2];
      v35 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v35)
      {
        goto LABEL_45;
      }

      v61[2] = v65;
    }

    v42 = v44;
    v41 = v82;
    v37 = a2 + 64;
  }

  while (1)
  {
    v44 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v44 >= v41)
    {

      v67 = *(v70 + 40);
      v98 = *(v70 + 32);
      v99[0] = v67;

      sub_1000C6220(&v98);

      sub_1000C6220(v99);
      v88 = v97;
      *&v89 = v80;
      *(&v89 + 1) = v86;
      v90 = v72;
      v91 = v71;
      v92 = v97;
      v93 = v80;
      v94 = v86;
      v95 = v72;
      v96 = v71;
      sub_1000C6180(&v88, v87);
      result = sub_100081544(&v92);
      v69 = v89;
      *a5 = v88;
      *(a5 + 16) = v69;
      *(a5 + 32) = v90;
      *(a5 + 48) = v91;
      return result;
    }

    v40 = *(v37 + 8 * v44);
    ++v42;
    if (v40)
    {
      goto LABEL_30;
    }
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_1000E9FA4();
  __break(1u);
  return result;
}

float sub_1000BAC84@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, float *a5@<X8>, float a6@<S0>)
{
  v7 = v6[1];
  if (a4)
  {
    v8 = v6[3];
    v9 = v6[5];
    v10 = 1.0;
    v11 = 1.0;
    v12 = 1.0;
  }

  else
  {
    v11 = *&a1;
    v7 = v7 + ((*(&a1 + 1) - v7) * a6);
    v10 = *&a2;
    v8 = v6[3] + ((*(&a2 + 1) - v6[3]) * a6);
    v12 = *&a3;
    v9 = v6[5] + ((*(&a3 + 1) - v6[5]) * a6);
  }

  v13 = v6[4];
  v14 = v6[2] + ((v10 - v6[2]) * a6);
  *a5 = *v6 + ((v11 - *v6) * a6);
  a5[1] = v7;
  a5[2] = v14;
  result = v13 + ((v12 - v13) * a6);
  a5[3] = v8;
  a5[4] = result;
  a5[5] = v9;
  return result;
}

double sub_1000BAD3C()
{
  if ((*(v0 + 24) & 0x8000000000000000) != 0)
  {
    *&v1 = 0x3F8000003F800000;
  }

  else
  {
    v1 = *(v0 + 32);
  }

  return *&v1;
}

void sub_1000BAD58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((v8[3] & 0x8000000000000000) != 0)
  {
    sub_1000BAD58(a1, a2, a3, a4, a5, a6, a7, a8, *(*v8 + 64), *(*v8 + 72), *(*v8 + 80), *(*v8 + 88));
    sub_1000BAD58(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

void sub_1000BADD8(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S1>)
{
  if (qword_10012F4E8 != -1)
  {
    swift_once();
  }

  v21 = xmmword_10013A9A0;
  v22 = *algn_10013A9B0;
  v23 = xmmword_10013A9C0;
  v6 = sub_100013568(&v21);
  if (qword_10012F4E0 == -1)
  {
    if (a1 >= -32768)
    {
      goto LABEL_5;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v19 = v7;
  v20 = v6;
  v17 = v9;
  v18 = v8;
  swift_once();
  v9 = v17;
  v8 = v18;
  v7 = v19;
  v6 = v20;
  if (a1 < -32768)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (a1 < 0x8000)
  {
    v10 = xmmword_10013A960;
    v11 = *algn_10013A970;
    v12 = xmmword_10013A980;
    v13 = unk_10013A990;
    v14 = v21;
    v15 = v22;
    v24 = v21;
    v25 = v22;
    v16 = v23;
    v26 = v23;
    *a2 = v6;
    *(a2 + 16) = v7;
    *(a2 + 32) = v8;
    *(a2 + 48) = v9;
    *(a2 + 64) = v10;
    *(a2 + 80) = v11;
    *(a2 + 96) = v12;
    *(a2 + 112) = v13;
    *(a2 + 128) = v14;
    *(a2 + 144) = v15;
    *(a2 + 160) = v16;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0.5 / a3;
    *(a2 + 188) = a1;
    *(a2 + 190) = 0;
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1000BAF14(uint64_t a1@<X0>, uint64_t a2@<X8>, unsigned int a3@<S1>, float a4@<S2>)
{
  LODWORD(v6) = 0;
  *(&v6 + 1) = a4;
  v30[0] = a3;
  v30[1] = v6;
  v30[2] = xmmword_1000EC920;
  v7 = sub_100013568(v30);
  if (qword_10012F4E0 != -1)
  {
    v28 = v7;
    v24 = v9;
    v26 = v8;
    v22 = v10;
    swift_once();
    v10 = v22;
    v9 = v24;
    v8 = v26;
    v7 = v28;
  }

  v11 = xmmword_10013A960;
  v12 = *algn_10013A970;
  v13 = xmmword_10013A980;
  v14 = unk_10013A990;
  if (qword_10012F4E8 == -1)
  {
    if (a1 >= -32768)
    {
      goto LABEL_5;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v29 = v7;
  v25 = v9;
  v27 = v8;
  v21 = xmmword_10013A960;
  v23 = v10;
  v19 = xmmword_10013A980;
  v20 = *algn_10013A970;
  v18 = unk_10013A990;
  swift_once();
  v14 = v18;
  v13 = v19;
  v12 = v20;
  v11 = v21;
  v10 = v23;
  v9 = v25;
  v8 = v27;
  v7 = v29;
  if (a1 < -32768)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (a1 < 0x8000)
  {
    v16 = xmmword_10013A9A0;
    v15 = *algn_10013A9B0;
    v17 = xmmword_10013A9C0;
    *a2 = v7;
    *(a2 + 16) = v8;
    *(a2 + 32) = v9;
    *(a2 + 48) = v10;
    *(a2 + 64) = v11;
    *(a2 + 80) = v12;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    *(a2 + 128) = v16;
    *(a2 + 144) = v15;
    *(a2 + 160) = v17;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a2 + 188) = a1;
    *(a2 + 190) = 0;
    return;
  }

LABEL_9:
  __break(1u);
}

double sub_1000BB094(uint64_t a1, uint64_t a2, char a3, double a4, float32x4_t a5, double a6, float32x4_t a7)
{
  a5.i32[0] = a1;
  if (a3)
  {
    if (a3 == 1)
    {
      v7 = 0uLL;
      if (*&a1 != 0.0)
      {
        v7.i32[0] = 1170939904;
        v11 = vdupq_lane_s32(*&vcgeq_f32(v7, a5), 0);
        v11.i64[0] = vaddq_f32(vbslq_s8(v11, xmmword_1000F45D0, xmmword_1000F45C0), vdivq_f32(vbslq_s8(v11, xmmword_1000F45F0, xmmword_1000F45E0), vaddq_f32(vbslq_s8(v11, xmmword_1000F4610, xmmword_1000F4600), vdupq_lane_s32(*a5.f32, 0)))).u64[0];
        v11.i64[1] = COERCE_UNSIGNED_INT((-8257.8 / (*&a1 + 2575.3)) + 1.9099);
        v7 = vmaxnmq_f32(v11, 0);
        v7.i32[3] = 0;
        v7.i64[0] = vminnmq_f32(v7, xmmword_1000EC900).u64[0];
      }
    }

    else
    {
      a7.i32[0] = HIDWORD(a2);
      v8 = 0uLL;
      if (*(&a2 + 1) != 0.0)
      {
        v8.i32[0] = 1170939904;
        v8 = vdupq_lane_s32(*&vcgeq_f32(v8, a7), 0);
        v9.i64[0] = vaddq_f32(vbslq_s8(v8, xmmword_1000F45D0, xmmword_1000F45C0), vdivq_f32(vbslq_s8(v8, xmmword_1000F45F0, xmmword_1000F45E0), vaddq_f32(vbslq_s8(v8, xmmword_1000F4610, xmmword_1000F4600), vdupq_lane_s32(*a7.f32, 0)))).u64[0];
        v9.i64[1] = COERCE_UNSIGNED_INT((-8257.8 / (*(&a2 + 1) + 2575.3)) + 1.9099);
        v10 = vmaxnmq_f32(v9, 0);
        v10.i32[3] = 0;
        v8.i64[0] = vminnmq_f32(v10, xmmword_1000EC900).u64[0];
      }

      a5.i32[1] = HIDWORD(a1);
      *v7.f32 = vmul_f32(*v8.f32, *a5.f32);
    }
  }

  else
  {
    v7.i64[0] = a1;
  }

  return *v7.i64;
}

uint64_t sub_1000BB290(unint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
    if (a3 <= 1u)
    {
      if (a3)
      {
        v3 = 0x41206C6C6966;
        goto LABEL_28;
      }

      v7 = 0x20412074736F6F62;
    }

    else if (a3 == 2)
    {
      v7 = 0x2041206D6972;
    }

    else
    {
      if (a3 == 3)
      {
        v3 = 0x42206C6C6966;
LABEL_28:
        v7 = v3 & 0xFFFFFFFFFFFFLL | 0x20000000000000;
        goto LABEL_30;
      }

      v7 = 0x2042206D6972;
    }

LABEL_30:
    v11 = v7;
    goto LABEL_31;
  }

  if (a3 <= 6u)
  {
    if (a3 == 5)
    {
      sub_1000E9D64(18);

      v11 = 0xD000000000000010;
LABEL_31:
      v14._countAndFlagsBits = sub_1000E9F54();
      sub_1000E99A4(v14);

      return v11;
    }

    v7 = 0x6972207373616C67;
    goto LABEL_30;
  }

  if (a3 == 7)
  {

    return a1;
  }

  if (a3 == 8)
  {
    v4 = *(a1 + 33);
    v11 = sub_1000BB290(*(a1 + 16), *(a1 + 24), *(a1 + 32));
    v12._countAndFlagsBits = 10272;
    v12._object = 0xE200000000000000;
    sub_1000E99A4(v12);
    if (v4)
    {
      v5._countAndFlagsBits = 28265;
    }

    else
    {
      v5._countAndFlagsBits = 7632239;
    }

    if (v4)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE300000000000000;
    }

    v5._object = v6;
    sub_1000E99A4(v5);

    v13._countAndFlagsBits = 41;
    v13._object = 0xE100000000000000;
    sub_1000E99A4(v13);
    return v11;
  }

  if (a1 <= 2)
  {
    if (a1 ^ 1 | a2)
    {
      v10 = 0x42206F626F67;
    }

    else
    {
      v10 = 0x412079656BLL;
    }

    if (a1 | a2)
    {
      return v10;
    }

    else
    {
      return 0x41206F626F67;
    }
  }

  else if (a1 > 4)
  {
    if (a1 ^ 5 | a2)
    {
      return 0x6966207373616C67;
    }

    else
    {
      return 0x636162206F626F67;
    }
  }

  else if (a1 ^ 3 | a2)
  {
    return 0x422079656BLL;
  }

  else
  {
    return 0x422074736F6F62;
  }
}

uint64_t sub_1000BB58C(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3 <= 4u)
  {
    if (a3 > 1u)
    {
      if (a3 == 2)
      {
        if (a6 != 2)
        {
          return 0;
        }
      }

      else if (a3 == 3)
      {
        if (a6 != 3)
        {
          return 0;
        }
      }

      else if (a6 != 4)
      {
        return 0;
      }

      return a1 == a4;
    }

    if (a3)
    {
      if (a6 != 1)
      {
        return 0;
      }

      return a1 == a4;
    }

    if (!a6)
    {
      return a1 == a4;
    }

    return 0;
  }

  if (a3 <= 6u)
  {
    if (a3 == 5)
    {
      if (a6 != 5)
      {
        return 0;
      }

      return a1 == a4;
    }

    if (a6 == 6)
    {
      return a1 == a4;
    }

    return 0;
  }

  if (a3 == 7)
  {
    if (a6 != 7)
    {
      return 0;
    }

    if (a1 == a4 && a2 == a5)
    {
      return 1;
    }

    else
    {

      return sub_1000E9F74();
    }
  }

  else
  {
    if (a3 != 8)
    {
      if (a1 <= 2)
      {
        if (a1 | a2)
        {
          if (a1 ^ 1 | a2)
          {
            if (a6 == 9 && a4 == 2 && !a5)
            {
              return 1;
            }
          }

          else if (a6 == 9 && a4 == 1 && !a5)
          {
            return 1;
          }
        }

        else if (a6 == 9 && !(a5 | a4))
        {
          return 1;
        }
      }

      else if (a1 > 4)
      {
        if (a1 ^ 5 | a2)
        {
          if (a6 == 9 && a4 == 6 && !a5)
          {
            return 1;
          }
        }

        else if (a6 == 9 && a4 == 5 && !a5)
        {
          return 1;
        }
      }

      else if (a1 ^ 3 | a2)
      {
        if (a6 == 9 && a4 == 4 && !a5)
        {
          return 1;
        }
      }

      else if (a6 == 9 && a4 == 3 && !a5)
      {
        return 1;
      }

      return 0;
    }

    if (a6 != 8)
    {
      return 0;
    }

    v7 = *(a1 + 33);
    v8 = *(a4 + 33);
    if (sub_1000BB58C(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a4 + 16), *(a4 + 24), *(a4 + 32)))
    {
      return v7 ^ v8 ^ 1u;
    }

    else
    {
      return 0;
    }
  }
}

void sub_1000BB81C(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 4u)
  {
    if (a4 <= 1u)
    {
      if (a4)
      {
        v6 = 3;
      }

      else
      {
        v6 = 1;
      }
    }

    else if (a4 == 2)
    {
      v6 = 4;
    }

    else if (a4 == 3)
    {
      v6 = 8;
    }

    else
    {
      v6 = 9;
    }

LABEL_25:
    sub_1000EA034(v6);
    v11 = a2;
LABEL_26:
    sub_1000EA034(v11);
    return;
  }

  if (a4 <= 6u)
  {
    if (a4 == 5)
    {
      v6 = 11;
    }

    else
    {
      v6 = 12;
    }

    goto LABEL_25;
  }

  if (a4 != 7)
  {
    if (a4 == 8)
    {
      v7 = *(a2 + 16);
      v8 = *(a2 + 24);
      v9 = *(a2 + 33);
      v10 = *(a2 + 32);
      sub_1000EA034(0xFuLL);
      sub_1000BB81C(a1, v7, v8, v10);
      sub_1000EA044(v9);
      return;
    }

    if (a2 <= 2)
    {
      if (a2 | a3)
      {
        if (a2 ^ 1 | a3)
        {
          v11 = 5;
        }

        else
        {
          v11 = 2;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else if (a2 > 4)
    {
      if (a2 ^ 5 | a3)
      {
        v11 = 13;
      }

      else
      {
        v11 = 10;
      }
    }

    else if (a2 ^ 3 | a3)
    {
      v11 = 7;
    }

    else
    {
      v11 = 6;
    }

    goto LABEL_26;
  }

  sub_1000EA034(0xEuLL);

  sub_1000E9974();
}

Swift::Int sub_1000BB9EC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1000EA024();
  sub_1000BB81C(v5, v1, v2, v3);
  return sub_1000EA064();
}

Swift::Int sub_1000BBA54()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1000EA024();
  sub_1000BB81C(v5, v1, v2, v3);
  return sub_1000EA064();
}

unint64_t sub_1000BBABC()
{
  result = qword_100133378;
  if (!qword_100133378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133378);
  }

  return result;
}

BOOL sub_1000BBB3C(float32x4_t *a1, float32x4_t *a2)
{
  if ((vminv_u16(vmovn_s32(vceqq_f32(*a1, *a2))) & 1) == 0)
  {
    return 0;
  }

  return a1[1].f32[1] == a2[1].f32[1] && a1[1].f32[0] == a2[1].f32[0];
}

uint64_t sub_1000BBB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 3)
  {
    v5 = *(a1 + 32);
    v3 = *(a1 + 48);

    *a2 = v5;
    *(a2 + 16) = v3;
  }

  else
  {
    result = sub_1000E9E44();
    __break(1u);
  }

  return result;
}

BOOL sub_1000BBC20(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 > 0xA)
  {
    if (v2 == 11)
    {
      return v3 == 11;
    }

    if (v2 == 12)
    {
      return v3 == 12;
    }
  }

  else
  {
    if (v2 == 9)
    {
      return v3 == 9;
    }

    if (v2 == 10)
    {
      return v3 == 10;
    }
  }

  return v2 == v3 && (v3 - 13) < 0xFFFFFFFC;
}

void sub_1000BBC94(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D2>, float32x4_t a8@<Q3>)
{
  v9 = v8;
  v12 = *(v8 + 104);
  if ((v12 - 9) < 5)
  {
    LOWORD(v13) = word_100111060[(v12 - 9)];
LABEL_3:
    v14 = 1.0;
    goto LABEL_13;
  }

  if (a4)
  {
    LOWORD(v13) = 1;
    goto LABEL_9;
  }

  if (a3 < -32768)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (a3 >= 0x8000)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v13 = a3 + 1;
  if ((a3 + 1) == v13)
  {
LABEL_9:
    if ((v12 - 1) >= 2)
    {
      if (*(v8 + 104))
      {
        goto LABEL_3;
      }

      v14 = 1.22;
    }

    else
    {
      v14 = 1.125;
    }

LABEL_13:
    v15 = *v8;
    v16 = *(v8 + 8);
    if (*(v8 + 12))
    {
      if (*(v8 + 12) == 1)
      {
        v15 = v14 * v15;
        v17 = 1;
        if (*(v8 + 136))
        {
LABEL_16:
          v18 = 0x3F0000003F800000;
          v19 = 1065353216;
          __asm { FMOV            V12.2S, #1.0 }

          goto LABEL_19;
        }
      }

      else
      {
        v17 = 2;
        v16 = 0;
        if (*(v8 + 136))
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      v17 = 0;
      v15 = v14 * v15;
      if (*(v8 + 136))
      {
        goto LABEL_16;
      }
    }

    v18 = *(v8 + 120);
    _D12 = *(v8 + 128);
    v19 = *(v8 + 112);
LABEL_19:
    v25 = *(v8 + 4);
    v26 = *(v8 + 144);
    v27 = *(v9 + 152);
    if (v26)
    {
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      *(v28 + 24) = v27;
      v29 = sub_1000C6C10;
    }

    else
    {
      if (!a1)
      {
        v43 = *(v9 + 32);
        v44 = *(v9 + 16);
        v37 = *(v9 + 48);
        v36 = *(v9 + 64);
        goto LABEL_24;
      }

      v32 = swift_allocObject();
      *(v32 + 16) = a1;
      *(v32 + 24) = a2;

      v29 = sub_1000C5398;
    }

    v33 = v29;
    v34 = *(v9 + 32);
    v47[0] = *(v9 + 16);
    v47[1] = v34;
    v35 = *(v9 + 64);
    v47[2] = *(v9 + 48);
    v47[3] = v35;
    v46 = a6;
    sub_10000D58C(v26);
    (v33)(v45, v47, &v46);

    v43 = v45[1];
    v44 = v45[0];
    v37 = v45[2];
    v36 = v45[3];
LABEL_24:
    v42 = v37;
    v41 = v36;
    *&v38 = sub_1000BB094(*(v9 + 80), *(v9 + 88), *(v9 + 96), *&v36, v37, a7, a8);
    HIDWORD(v38) = *(v9 + 100);
    v39 = *(v9 + 108);
    v40 = *(v9 + 138);
    *a5 = v44;
    *(a5 + 16) = v43;
    *(a5 + 32) = v42;
    *(a5 + 48) = v41;
    *(a5 + 64) = v38;
    *(a5 + 80) = v19;
    *(a5 + 88) = v18;
    *(a5 + 96) = _D12;
    *(a5 + 104) = v17;
    *(a5 + 106) = v13;
    *(a5 + 108) = v15;
    *(a5 + 112) = v25;
    *(a5 + 116) = v16;
    *(a5 + 120) = v39;
    *(a5 + 124) = v40;
    return;
  }

LABEL_30:
  __break(1u);
}

BOOL sub_1000BBF2C(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[9];
  v13[8] = a1[8];
  v13[9] = v2;
  v13[10] = a1[10];
  v14 = a1[11].i64[0];
  v3 = a1[5];
  v13[4] = a1[4];
  v13[5] = v3;
  v4 = a1[7];
  v13[6] = a1[6];
  v13[7] = v4;
  v5 = a1[1];
  v13[0] = *a1;
  v13[1] = v5;
  v6 = a1[3];
  v13[2] = a1[2];
  v13[3] = v6;
  v7 = a2[9];
  v15[8] = a2[8];
  v15[9] = v7;
  v15[10] = a2[10];
  v16 = a2[11].i64[0];
  v8 = a2[5];
  v15[4] = a2[4];
  v15[5] = v8;
  v9 = a2[7];
  v15[6] = a2[6];
  v15[7] = v9;
  v10 = a2[1];
  v15[0] = *a2;
  v15[1] = v10;
  v11 = a2[3];
  v15[2] = a2[2];
  v15[3] = v11;
  return sub_1000C5130(v13, v15);
}

unint64_t sub_1000BBFD4()
{
  result = qword_100133380;
  if (!qword_100133380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133380);
  }

  return result;
}

uint64_t sub_1000BC028@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C5334(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1000BC058(uint64_t a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  sub_1000E9974();

  sub_1000EA044(v2 & 1);
}

uint64_t sub_1000BC1A0(float32x4_t *a1, float32x4_t *a2)
{
  v2 = 0;
  v3 = vmovn_s32(vceqq_f32(*a1, *a2));
  if (v3.i8[0] & 1) != 0 && (v3.i8[2] & 1) != 0 && (v3.i8[4])
  {
    v2 = v3.i8[6];
  }

  return v2 & 1;
}

uint64_t sub_1000BC1D8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_1000A1E68(*a1, *a2) & ~(v2 ^ v3) & 1;
}

Swift::Int sub_1000BC214()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1000EA024();
  if (v2)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_1000BC058(v5, v3 | v1);
  return sub_1000EA064();
}

void sub_1000BC26C(uint64_t a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_1000BC058(a1, v2 | *v1);
}

Swift::Int sub_1000BC288()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1000EA024();
  if (v2)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_1000BC058(v5, v3 | v1);
  return sub_1000EA064();
}

uint64_t sub_1000BC2DC(float32x4_t *a1, unint64_t a2, float32x4_t *a3, unint64_t a4)
{
  v4 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x800000000000) != 0)
  {
    if ((a4 & 0x800000000000) != 0)
    {
      v9 = a1[2].i64[0];
      v10 = a1[2].u16[6];
      v11 = a1[2].u32[2];
      v12 = a1[3].f32[0];
      v13 = a3[2].i64[0];
      v14 = a3[2].u16[6];
      v15 = a3[2].u32[2];
      v16 = a3[3].f32[0];
      if (sub_1000BC2DC(a1[1].i64[0], a1[1].u32[2] | (a1[1].u16[6] << 32), a3[1].i64[0], a3[1].u32[2] | (a3[1].u16[6] << 32)))
      {
        v8 = sub_1000BC2DC(v9, (v11 | (v10 << 32)) & 0xFFFFFFFFFFFFLL, v13, (v15 | (v14 << 32)) & 0xFFFFFFFFFFFFLL) & (v12 == v16);
        return v8 & 1;
      }
    }

LABEL_9:
    v8 = 0;
    return v8 & 1;
  }

  if ((a4 & 0x800000000000) != 0)
  {
    goto LABEL_9;
  }

  v7 = sub_1000C1814(a1, a3);
  v8 = 0;
  if ((v7 & 1) != 0 && *&a2 == *&a4)
  {
    v8 = sub_1000A1E68(HIDWORD(a2), HIDWORD(a4)) & ((((a2 & 0xFFFFFFFFFFFFLL) >> 32) >> 8) & 1 ^ ((v4 & 0x10000000000) == 0));
  }

  return v8 & 1;
}

void sub_1000BC428(float a1)
{
  v2 = v1;
  v3 = v1[2];
  v4 = v1[3];
  if (v4 < 0)
  {
    v7 = *v1;
    v16 = v1[1];
    v8 = *(*v1 + 72);
    v10 = *(*v1 + 80);
    v9 = *(*v1 + 88);
    v11 = *(*v1 + 112);
    v20 = *(*v1 + 16);
    v21 = *(*v1 + 32);
    v22 = *(*v1 + 48);
    *&v17 = *(*v1 + 64);
    *(&v17 + 1) = v8;
    *&v18 = v10;
    *(&v18 + 1) = v9;
    v19 = *(*v1 + 96);
    sub_1000C5380(v20, *(&v20 + 1), v21, *(&v21 + 1));
    v13 = sub_1000C5380(v17, v8, v10, v9);
    v14 = sub_1000BC428(v13, a1);
    sub_1000BC428(v14, a1);
    v15 = swift_allocObject();
    *(v15 + 16) = v20;
    *(v15 + 32) = v21;
    *(v15 + 48) = v22;
    *(v15 + 64) = v17;
    *(v15 + 80) = v18;
    *(v15 + 96) = v19;
    *(v15 + 112) = v11;
    sub_1000C538C(v7, v16, v3, v4);
    v6 = 0;
    *v2 = v15;
    v2[1] = 0;
    v5 = 0x8000000000000000;
    v2[4] = 0;
    v2[5] = 0;
  }

  else
  {
    v5 = 0;
    v6 = COERCE_UNSIGNED_INT(*&v3 * a1);
  }

  v2[2] = v6;
  v2[3] = v5;
}

void sub_1000BC578(uint64_t a1@<X8>)
{
  v3 = *v1;
  if ((*(v1 + 24) & 0x8000000000000000) != 0)
  {
    v16 = v3[1].i64[0];
    v17 = v3[1].i64[1];
    v19 = v3[2].i64[0];
    v18 = v3[2].i64[1];
    v20 = v3[3].i64[0];
    v22 = v3[4].i64[0];
    v21 = v3[4].i64[1];
    v23 = v3[5].i64[0];
    v25 = v3[6].i64[0];
    v24 = v3[6].i64[1];
    v56 = v18;
    if (v18 < 0)
    {
      v45 = v3[1].i64[1];
      v47 = v3[1].i64[0];
      v31 = v3[5].i64[1];
      sub_1000C5380(v16, v45, v19, v18);
      sub_1000C5380(v22, v21, v23, v31);
      sub_1000C538C(v22, v21, v23, v31);
      v32 = v47;
      v33 = v45;
      v34 = v19;
      v35 = v56;
    }

    else
    {
      v26 = v3[5].i64[1];
      v46 = v3[3].i64[1];
      if (v26 < 0)
      {
        v48 = v3[1].i64[0];
        sub_1000C5380(v16, v17, v19, v18);
        sub_1000C5380(v22, v21, v23, v26);
        sub_1000C538C(v22, v21, v23, v26);
        v32 = v48;
        v33 = v17;
        v34 = v19;
        v35 = v56;
      }

      else
      {
        v44 = v3[5].i64[1];
        v43 = v3[7].f32[0];
        v27 = v3[1].i64[1];
        v28 = v3[1].i64[0];
        sub_1000BCA8C(v16, v58, *(&v27 + 1));
        if ((v59 & 1) == 0)
        {
          v50 = v58[0];
          v52 = v58[1];
          v54 = v58[2];
          sub_1000BCA8C(v22, &v60, *(&v21 + 1));
          if ((v63 & 1) == 0)
          {
            v36.i64[0] = v20;
            v36.i64[1] = v46;
            v41 = v36;
            v36.i64[0] = v25;
            v36.i64[1] = v24;
            v40 = v36;
            v38 = v61;
            v39 = v62;
            v42 = v60;
            sub_1000C5380(v28, v27, v19, v56);
            sub_1000C5380(v22, v21, v23, v44);
            sub_1000C538C(v28, v27, v19, v56);
            sub_1000C538C(v22, v21, v23, v44);
            v57 = __sincosf_stret(*&v27);
            v37 = __sincosf_stret(*&v21);
            v12 = v38;
            v13 = v39;
            v15 = v57;
            v7 = v37;
            v8 = v43;
            v4 = ((*&v23 - *&v19) * v43) + *&v19;
            v30 = vadd_f32(vmul_n_f32(vsub_f32(__PAIR64__(v40.u32[1], v25), __PAIR64__(v41.u32[1], v20)), v43), __PAIR64__(v41.u32[1], v20));
            v14 = v41.f32[2] + vmuls_lane_f32(v43, vsubq_f32(v40, v41), 2);
            v6 = v42;
            v10 = v52;
            v9 = v54;
            v11 = v50;
            goto LABEL_13;
          }
        }

        sub_1000C5380(v28, v27, v19, v56);
        sub_1000C5380(v22, v21, v23, v44);
        sub_1000C538C(v22, v21, v23, v44);
        v32 = v28;
        v33 = v27;
        v34 = v19;
        v35 = v56;
      }
    }

    sub_1000C538C(v32, v33, v34, v35);
    v6 = 0uLL;
    v9 = xmmword_1000F4620;
    v10 = xmmword_1000F4630;
    v15 = 0;
    v14 = 0.0;
    v11 = xmmword_1000F4640;
    v12 = 0uLL;
    v13 = 0uLL;
    v8 = 0.0;
    v4 = 0.0;
    v7 = 0;
    goto LABEL_12;
  }

  v55 = *(v1 + 32);
  v4 = *(v1 + 16);
  v5 = *(v1 + 8);
  sub_1000BCA8C(v3, &v60, *(v1 + 12));
  v6 = 0uLL;
  v7 = 0;
  v8 = 0.0;
  if (v63)
  {
    v9 = xmmword_1000F4620;
    v10 = xmmword_1000F4630;
    v11 = xmmword_1000F4640;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0.0;
    v15 = 0;
    v4 = 0.0;
LABEL_12:
    v30 = 0;
    goto LABEL_13;
  }

  v51 = v61;
  v53 = v62;
  v49 = v60;
  v29 = __sincosf_stret(v5);
  v7 = 0;
  v11 = v49;
  v10 = v51;
  v8 = 0.0;
  v6 = 0uLL;
  v15 = v29;
  v9 = v53;
  v30 = v55;
  v14 = *(&v55 + 2);
  v12 = 0uLL;
  v13 = 0uLL;
LABEL_13:
  *a1 = v11;
  *(a1 + 16) = v10;
  *(a1 + 32) = v9;
  *(a1 + 48) = v6;
  *(a1 + 64) = v12;
  *(a1 + 80) = v13;
  *(a1 + 96) = v30;
  *(a1 + 104) = v14;
  *(a1 + 108) = 0;
  *(a1 + 112) = v15;
  *(a1 + 120) = v8;
  *(a1 + 124) = v4;
  *(a1 + 128) = v7;
  *(a1 + 136) = 0;
}

float32x4_t *sub_1000BCA8C@<X0>(float32x4_t *result@<X0>, float32x4_t *a2@<X8>, float32_t a3@<S0>)
{
  v3 = result[1].u64[0];
  if (v3)
  {
    v4 = result[2];
    if (v3 == 1)
    {
      v5 = result[2];
      v5.f32[3] = v4.f32[3] + 1.0;
      v6 = v4.f32[3] + 2.0;
      v7 = result[2];
    }

    else
    {
      v5 = result[3];
      if (v3 >= 3)
      {
        v7 = result[4];
LABEL_9:
        v11.i64[0] = 0;
        v11.i32[2] = 0;
        v11.f32[3] = a3;
        v8 = vaddq_f32(v4, v11);
        v9 = vaddq_f32(v5, v11);
        v10 = vaddq_f32(v7, v11);
        goto LABEL_10;
      }

      v6 = v5.f32[3] + 1.0;
      v7 = result[3];
    }

    v7.f32[3] = v6;
    goto LABEL_9;
  }

  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
LABEL_10:
  *a2 = v8;
  a2[1] = v9;
  a2[2] = v10;
  a2[3].i8[0] = v3 == 0;
  return result;
}

uint64_t sub_1000BCB28(uint64_t *a1, float32x4_t **a2)
{
  v3 = *a1;
  if (a1[3] < 0)
  {
    v11 = *(v3 + 32);
    v29[0] = *(v3 + 16);
    v29[1] = v11;
    v12 = *(v3 + 64);
    v29[2] = *(v3 + 48);
    v13 = *(v3 + 80);
    v14 = *(v3 + 96);
    v27[0] = v12;
    v27[1] = v13;
    v27[2] = v14;
    if ((a2[3] & 0x8000000000000000) != 0)
    {
      v15 = *a2;
      v16 = (*a2)[2];
      v30[0] = (*a2)[1];
      v30[1] = v16;
      v17 = v15[4];
      v30[2] = v15[3];
      v18 = v15[5];
      v19 = v15[6];
      v28[0] = v17;
      v28[1] = v18;
      v20 = *(v3 + 112);
      v28[2] = v19;
      v21 = v15[7].f32[0];
      if (sub_1000BCB28(v29, v30))
      {
        v7 = sub_1000BCB28(v27, v28) & (v20 == v21);
        return v7 & 1;
      }
    }

LABEL_13:
    v7 = 0;
    return v7 & 1;
  }

  if ((a2[3] & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v25 = *(a2 + 2);
  v26 = *(a1 + 2);
  v4 = *(a2 + 2);
  v23 = *(a1 + 12);
  v24 = *(a2 + 12);
  v5 = *(a1 + 2);
  v6 = sub_1000C1814(v3, *a2);
  v7 = 0;
  if (v6)
  {
    v9.i64[0] = v23;
    v8.i64[0] = v24;
    v9.i64[1] = v26.i64[0];
    v8.i64[1] = vdupq_lane_s64(*&v25, 0).i64[1];
    if ((~vaddvq_s32(vandq_s8(vceqq_f32(v9, v8), xmmword_1000F1F70)) & 0xF) == 0 && v5 == v4)
    {
      v7 = vmovn_s32(vceqq_f32(v26, v25)).i8[4];
    }
  }

  return v7 & 1;
}

uint64_t sub_1000BCC80(uint64_t a1, float a2)
{
  v3 = v2;
  v6 = *(*v2 + 16);
  if (v6)
  {
    v7 = (*v2 + 60);
    do
    {
      v8 = *(v7 - 5);
      v9 = *(v7 - 16);
      v10 = *(v7 - 3);
      v11 = *(v7 - 8);
      v12 = *(v7 - 1);
      v14 = *v7;
      v7 += 8;
      v13 = v14;

      v15 = swift_readAtKeyPath();
      v150 = *v16;
      v15(v186, 0);
      v17 = v8 - *&v150;
      if (v9)
      {
        v17 = v8;
      }

      v18 = *&v150 + (v17 * a2);
      v19 = v10 - *(&v150 + 1);
      if (v11)
      {
        v19 = v10;
      }

      v20 = v12 - *(&v150 + 2);
      if (v13)
      {
        v20 = v12;
      }

      HIDWORD(v21) = 0;
      *&v21 = v18;
      *(&v21 + 1) = *(&v150 + 1) + (v19 * a2);
      *(&v21 + 2) = *(&v150 + 2) + (v20 * a2);
      v186[0] = v21;

      swift_setAtWritableKeyPath();

      --v6;
    }

    while (v6);
  }

  v22 = *(a1 + 176);
  v25 = *(v22 + 64);
  v24 = v22 + 64;
  v23 = v25;
  v26 = 1 << *(*(a1 + 176) + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v23;
  v29 = (v26 + 63) >> 6;
  v146 = *(a1 + 176);
  v144 = (&v157 | 0xD);

  v30 = 0;
  v145 = v3;
  v143 = v29;
  while (v28)
  {
    v52 = v30;
LABEL_20:
    v53 = __clz(__rbit64(v28)) | (v52 << 6);
    v54 = *(v146 + 48) + 24 * v53;
    v56 = *v54;
    v55 = *(v54 + 8);
    v57 = *(v54 + 16);
    v58 = *(v146 + 56) + 192 * v53;
    v60 = *(v58 + 32);
    v59 = *(v58 + 48);
    v61 = *v58;
    v186[1] = *(v58 + 16);
    v186[2] = v60;
    v186[0] = v61;
    v62 = *(v58 + 112);
    v64 = *(v58 + 64);
    v63 = *(v58 + 80);
    v187 = *(v58 + 96);
    v188 = v62;
    v186[4] = v64;
    v186[5] = v63;
    v66 = *(v58 + 144);
    v65 = *(v58 + 160);
    v67 = *(v58 + 128);
    v192 = *(v58 + 176);
    v190 = v66;
    v191 = v65;
    v189 = v67;
    v186[3] = v59;
    v151 = v64;
    v147 = *&v186[0];
    v68 = *(v186 + 2);
    v148 = BYTE12(v186[0]);
    v69 = *(v58 + 29);
    v183 = *(v58 + 13);
    v184 = v69;
    v185[0] = *(v58 + 45);
    *(v185 + 15) = *(v58 + 60);
    v70 = *(v58 + 80);
    v182 = *(v58 + 96);
    v71 = *(v58 + 104);
    v72 = *(v58 + 120);
    v73 = *(v58 + 136);
    v180 = *(v58 + 168);
    v181 = v70;
    v74 = *(v58 + 152);
    v178 = v73;
    v179 = v74;
    v176 = v71;
    v177 = v72;
    v75 = *(v3 + 16);
    v76 = *(v75 + 16);
    sub_1000A1DD4(v56, v55, v57);
    if (v76)
    {
      sub_1000B89BC(v186, &v169);
      v77 = sub_10009F2C8(v56, v55, v57);
      if (v78)
      {
        v79 = *(v75 + 56) + 24 * v77;
        v80 = *v79;
        v81 = *(v79 + 4);
        v82 = *(v79 + 8);
        v83 = *(v79 + 12);
        v84 = *(v79 + 16);
        v85 = *(v79 + 20);
        HIDWORD(v86) = HIDWORD(v151);
        if (!v81)
        {
          v80 = v80 - *&v151;
        }

        v87 = *&v151 + (v80 * a2);
        if (!v83)
        {
          v82 = v82 - *(&v151 + 1);
        }

        v88 = *(&v151 + 1) + (v82 * a2);
        if (!v85)
        {
          v84 = v84 - *(&v151 + 2);
        }

        *&v86 = __PAIR64__(LODWORD(v88), LODWORD(v87));
        *(&v86 + 2) = *(&v151 + 2) + (v84 * a2);
        goto LABEL_32;
      }
    }

    else
    {
      sub_1000B89BC(v186, &v169);
    }

    v86 = v151;
    if (BYTE9(v189) <= 1u)
    {
      *(&v86 + 2) = (a2 * 0.1) + *(&v151 + 2);
    }

LABEL_32:
    v89 = *(&v192 + 1);
    v90 = *(&v187 + 1);
    v91 = *&v192;
    v92 = *(v3 + 24);
    if (*(v92 + 16))
    {
      v152 = v86;
      v93 = sub_10009F2C8(v56, v55, v57);
      if (v94)
      {
        v95 = *(v92 + 56) + 16 * v93;
        v96 = *v95;
        v97 = *(v95 + 8);
        v98 = *(v95 + 12);
        v86 = v152;
        if (BYTE12(v186[0]))
        {
          if (BYTE12(v186[0]) == 1)
          {
            if (v98 == 1)
            {
              v68 = ((v97 - *(v186 + 2)) * a2) + *(v186 + 2);
              v147 = COERCE_UNSIGNED_INT(((*&v96 - *v186) * a2) + *v186) | (COERCE_UNSIGNED_INT(((*(&v96 + 1) - *(v186 + 1)) * a2) + *(v186 + 1)) << 32);
              v148 = 1;
            }
          }

          else if (v98 == 2)
          {
            v147 = COERCE_UNSIGNED_INT(((*&v96 - *v186) * a2) + *v186) | (COERCE_UNSIGNED_INT(((*(&v96 + 1) - *(v186 + 1)) * a2) + *(v186 + 1)) << 32);
            v148 = 2;
            v68 = 0.0;
          }
        }

        else if (!v98)
        {
          v148 = 0;
          v68 = ((v97 - *(v186 + 2)) * a2) + *(v186 + 2);
          v147 = COERCE_UNSIGNED_INT(((*&v96 - *v186) * a2) + *v186) | (COERCE_UNSIGNED_INT(((*(&v96 + 1) - *(v186 + 1)) * a2) + *(v186 + 1)) << 32);
        }
      }

      else
      {
        v86 = v152;
      }
    }

    *(&v86 + 2) = *(&v86 + 2) + (v91 * a2);
    *&v169 = v147;
    *(&v169 + 2) = v68;
    BYTE12(v169) = v148;
    v99 = v90 * (((v89 + -1.0) * a2) + 1.0);
    v100 = v184;
    *(&v169 | 0xD) = v183;
    *((&v169 | 0xD) + 0x10) = v100;
    *((&v169 | 0xD) + 0x20) = v185[0];
    *((&v169 | 0xD) + 0x2F) = *(v185 + 15);
    v153 = v86;
    v173 = v86;
    v174 = v181;
    *v175 = v182;
    *&v175[4] = v99;
    *&v175[24] = v177;
    *&v175[40] = v178;
    *&v175[56] = v179;
    *&v175[72] = v180;
    *&v175[8] = v176;
    sub_1000B89BC(&v169, &v157);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v156 = *(a1 + 176);
    v102 = v156;
    v103 = sub_10009F2C8(v56, v55, v57);
    v105 = v102[2];
    v106 = (v104 & 1) == 0;
    v107 = __OFADD__(v105, v106);
    v108 = v105 + v106;
    if (v107)
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      result = sub_1000E9FA4();
      __break(1u);
      return result;
    }

    v109 = v104;
    if (v102[3] >= v108)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v125 = v103;
        sub_1000B5C20();
        v103 = v125;
      }
    }

    else
    {
      sub_1000B1E88(v108, isUniquelyReferenced_nonNull_native);
      v103 = sub_10009F2C8(v56, v55, v57);
      if ((v109 & 1) != (v110 & 1))
      {
        goto LABEL_65;
      }
    }

    v3 = v145;
    v28 &= v28 - 1;
    if (v109)
    {
      v31 = v156;
      v32 = v156[7] + 192 * v103;
      v33 = *(v32 + 48);
      v35 = *v32;
      v34 = *(v32 + 16);
      v154[2] = *(v32 + 32);
      v154[3] = v33;
      v154[0] = v35;
      v154[1] = v34;
      v36 = *(v32 + 112);
      v38 = *(v32 + 64);
      v37 = *(v32 + 80);
      v154[6] = *(v32 + 96);
      v154[7] = v36;
      v154[4] = v38;
      v154[5] = v37;
      v40 = *(v32 + 144);
      v39 = *(v32 + 160);
      v41 = *(v32 + 128);
      v155 = *(v32 + 176);
      v154[9] = v40;
      v154[10] = v39;
      v154[8] = v41;
      v42 = v169;
      v43 = v170;
      v44 = v172;
      *(v32 + 32) = v171;
      *(v32 + 48) = v44;
      *v32 = v42;
      *(v32 + 16) = v43;
      v45 = v173;
      v46 = v174;
      v47 = *&v175[16];
      *(v32 + 96) = *v175;
      *(v32 + 112) = v47;
      *(v32 + 64) = v45;
      *(v32 + 80) = v46;
      v48 = *&v175[32];
      v49 = *&v175[48];
      v50 = *&v175[64];
      *(v32 + 176) = *&v175[80];
      *(v32 + 144) = v49;
      *(v32 + 160) = v50;
      *(v32 + 128) = v48;
      sub_1000C5E5C(v154);
      sub_1000A1DF8(v56, v55, v57);
      v157 = v147;
      v158 = v68;
      v159 = v148;
      v51 = v184;
      *v144 = v183;
      *((&v157 | 0xD) + 0x10) = v51;
      *((&v157 | 0xD) + 0x20) = v185[0];
      *((&v157 | 0xD) + 0x2F) = *(v185 + 15);
      v160 = v153;
      v161 = v181;
      v162 = v182;
      v163 = v99;
      v168 = v180;
      v167 = v179;
      v166 = v178;
      v165 = v177;
      v164 = v176;
      sub_1000C5E5C(&v157);
    }

    else
    {
      v31 = v156;
      v156[(v103 >> 6) + 8] |= 1 << v103;
      v111 = v31[6] + 24 * v103;
      *v111 = v56;
      *(v111 + 8) = v55;
      *(v111 + 16) = v57;
      v112 = v31[7] + 192 * v103;
      v113 = v172;
      v115 = v169;
      v114 = v170;
      *(v112 + 32) = v171;
      *(v112 + 48) = v113;
      *v112 = v115;
      *(v112 + 16) = v114;
      v116 = *&v175[16];
      v118 = v173;
      v117 = v174;
      *(v112 + 96) = *v175;
      *(v112 + 112) = v116;
      *(v112 + 64) = v118;
      *(v112 + 80) = v117;
      v119 = *&v175[32];
      v120 = *&v175[48];
      v121 = *&v175[64];
      *(v112 + 176) = *&v175[80];
      *(v112 + 144) = v120;
      *(v112 + 160) = v121;
      *(v112 + 128) = v119;
      v157 = v147;
      v158 = v68;
      v159 = v148;
      v122 = v184;
      *v144 = v183;
      *((&v157 | 0xD) + 0x10) = v122;
      *((&v157 | 0xD) + 0x20) = v185[0];
      *((&v157 | 0xD) + 0x2F) = *(v185 + 15);
      v160 = v153;
      v161 = v181;
      v162 = v182;
      v163 = v99;
      v165 = v177;
      v166 = v178;
      v167 = v179;
      v168 = v180;
      v164 = v176;
      sub_1000C5E5C(&v157);
      v123 = v31[2];
      v107 = __OFADD__(v123, 1);
      v124 = v123 + 1;
      if (v107)
      {
        goto LABEL_64;
      }

      v31[2] = v124;
    }

    *(a1 + 176) = v31;
    v30 = v52;
    v29 = v143;
  }

  while (1)
  {
    v52 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v52 >= v29)
    {
      break;
    }

    v28 = *(v24 + 8 * v52);
    ++v30;
    if (v28)
    {
      goto LABEL_20;
    }
  }

  v127 = *(v3 + 8);
  v128 = v127[1].i64[0];
  if (v128)
  {
    v129 = v127 + 3;
    do
    {
      v130 = *v129;
      v129 += 2;

      v131 = swift_readAtKeyPath();
      v149 = *v132;
      v131(v186, 0);
      sub_1000C604C(v149, v130, a2);
      v186[0] = v133;
      swift_setAtWritableKeyPath();

      --v128;
    }

    while (v128);
  }

  v134 = *(v3 + 48);
  *(a1 + 156) = *(a1 + 156) + ((*(v3 + 52) - *(a1 + 156)) * a2);
  *(a1 + 344) = *(a1 + 344) + ((v134 - *(a1 + 344)) * a2);
  v135 = *(v3 + 32);
  v136 = *(v135 + 16);
  if (v136)
  {
    v137 = (v135 + 40);
    do
    {
      v138 = *v137;
      v137 += 4;
      LODWORD(v186[0]) = v138;

      swift_setAtWritableKeyPath();

      --v136;
    }

    while (v136);
  }

  v139 = *(v3 + 40);
  v140 = *(v139 + 16);
  if (v140)
  {
    v141 = (v139 + 40);
    do
    {
      v142 = *v141;
      v141 += 4;
      LODWORD(v186[0]) = v142;

      swift_setAtWritableKeyPath();

      --v140;
    }

    while (v140);
  }

  return result;
}

double sub_1000BD680()
{
  sub_1000125FC(&qword_100133398);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000ED250;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 48) = xmmword_1000F4650;
  *(v0 + 64) = swift_getKeyPath();
  *(v0 + 80) = xmmword_1000F4660;
  *(v0 + 96) = swift_getKeyPath();
  *(v0 + 112) = xmmword_1000F4670;
  v1 = sub_1000A0CB0(&off_10011F328);
  sub_1000125FC(&qword_100133388);
  swift_arrayDestroy();
  qword_10013DC30 = v0;
  qword_10013DC38 = v1;
  result = 0.0000305175856;
  qword_10013DC40 = 0x3F0000004164CCCDLL;
  return result;
}

float sub_1000BD778(uint64_t a1, float a2)
{
  v3 = ((a2 * 120.0) + -45.0) / 75.0;
  v4 = 0.0;
  if (v3 >= 0.0)
  {
    v4 = v3;
  }

  v5 = v4 * 3.1416;
  if (v3 >= 1.0)
  {
    v6 = 3.1416;
  }

  else
  {
    v6 = v5;
  }

  result = (((0.5 - (cosf(v6) * 0.5)) * 0.95) + 0.05) * *(a1 + 100);
  *(a1 + 100) = result;
  return result;
}

float sub_1000BD820(uint64_t a1, float a2)
{
  v3 = ((a2 * 120.0) + -60.0) / 45.0;
  v4 = 0.0;
  if (v3 >= 0.0)
  {
    v4 = v3;
  }

  v5 = v4 * 3.1416;
  if (v3 >= 1.0)
  {
    v6 = 3.1416;
  }

  else
  {
    v6 = v5;
  }

  result = (((0.5 - (cosf(v6) * 0.5)) * 0.9) + 0.1) * *(a1 + 100);
  *(a1 + 100) = result;
  return result;
}

float sub_1000BD8C8(uint64_t a1, float a2)
{
  v3 = ((a2 * 120.0) + -60.0) / 45.0;
  v4 = 0.0;
  if (v3 >= 0.0)
  {
    v4 = v3;
  }

  v5 = v4 * 3.1416;
  if (v3 >= 1.0)
  {
    v6 = 3.1416;
  }

  else
  {
    v6 = v5;
  }

  result = (0.5 - (cosf(v6) * 0.5)) * *(a1 + 100);
  *(a1 + 100) = result;
  return result;
}

float sub_1000BD950(uint64_t a1, float a2)
{
  v3 = ((a2 * 120.0) + -60.0) / 55.0;
  v4 = 0.0;
  if (v3 >= 0.0)
  {
    v4 = v3;
  }

  v5 = v4 * 3.1416;
  if (v3 >= 1.0)
  {
    v6 = 3.1416;
  }

  else
  {
    v6 = v5;
  }

  result = (((0.5 - (cosf(v6) * 0.5)) * 0.7) + 0.3) * *(a1 + 100);
  *(a1 + 100) = result;
  return result;
}

float sub_1000BD9F8(uint64_t a1, float a2)
{
  v3 = ((a2 * 120.0) + -60.0) / 55.0;
  v4 = 0.0;
  if (v3 >= 0.0)
  {
    v4 = v3;
  }

  v5 = v4 * 3.1416;
  if (v3 >= 1.0)
  {
    v6 = 3.1416;
  }

  else
  {
    v6 = v5;
  }

  result = (0.5 - (cosf(v6) * 0.5)) * *(a1 + 100);
  *(a1 + 100) = result;
  return result;
}

float sub_1000BDA80(uint64_t a1, float a2)
{
  v4 = *(a1 + 80);
  v5 = (a2 + -0.083333) / 0.66667;
  if (v5 < 0.0)
  {
    v5 = 0.0;
  }

  sub_1000BA464(v4, *(a1 + 88), *(a1 + 96), 1171963904, 0, 1, fminf(v5, 1.0));
  *(a1 + 80) = v6;
  *(a1 + 88) = v7;
  *(a1 + 96) = v8;
  v9 = ((a2 * 120.0) + -10.0) / 110.0;
  if (v9 < 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = ((a2 * 120.0) + -10.0) / 110.0;
  }

  v11 = v10 * 3.1416;
  if (v9 >= 1.0)
  {
    v12 = 3.1416;
  }

  else
  {
    v12 = v11;
  }

  result = (((0.5 - (cosf(v12) * 0.5)) * 0.96667) + 0.033333) * *(a1 + 100);
  *(a1 + 100) = result;
  return result;
}

float sub_1000BDB8C(uint64_t a1, float a2)
{
  v3 = ((a2 * 120.0) + -45.0) / 45.0;
  v4 = 0.0;
  if (v3 >= 0.0)
  {
    v4 = v3;
  }

  v5 = v4 * 3.1416;
  if (v3 >= 1.0)
  {
    v6 = 3.1416;
  }

  else
  {
    v6 = v5;
  }

  result = (0.5 - (cosf(v6) * 0.5)) * *(a1 + 100);
  *(a1 + 100) = result;
  return result;
}

uint64_t sub_1000BDC14()
{
  sub_1000125FC(&qword_100133398);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000ED250;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 48) = xmmword_1000F4680;
  *(v0 + 64) = swift_getKeyPath();
  *(v0 + 80) = xmmword_1000F4690;
  *(v0 + 96) = swift_getKeyPath();
  *(v0 + 112) = xmmword_1000F46A0;
  if (qword_10012F6B0 != -1)
  {
    swift_once();
  }

  qword_10013DC48 = v0;
  qword_10013DC50 = qword_10013DC38;
  qword_10013DC58 = 0x3F0000004164CCCDLL;
}

uint64_t sub_1000BDD14()
{
  sub_1000125FC(&qword_100133398);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000ED250;
  *(v0 + 32) = swift_getKeyPath();
  *(v0 + 48) = xmmword_1000F46B0;
  *(v0 + 64) = swift_getKeyPath();
  *(v0 + 80) = xmmword_1000F46C0;
  *(v0 + 96) = swift_getKeyPath();
  *(v0 + 112) = xmmword_1000F46A0;
  if (qword_10012F6B8 != -1)
  {
    swift_once();
  }

  qword_10013DC60 = v0;
  *algn_10013DC68 = qword_10013DC50;
  qword_10013DC70 = 0x3F0000004164CCCDLL;
}

uint64_t sub_1000BDE14(uint64_t a1, float32x4_t *a2, uint64_t a3, float a4, float a5, float a6)
{
  v11 = a2[1].i64[0];
  if (v11)
  {
    v108 = 1.0 - a4;
    v12 = a2 + 3;
    do
    {
      v13 = *v12;
      v12 += 2;

      v14 = swift_modifyAtWritableKeyPath();
      v16.i64[0] = vaddq_f32(vmulq_n_f32(v13, v108), *v15).u64[0];
      v16.f32[2] = vmuls_lane_f32(v108, v13, 2) + COERCE_FLOAT(v15->i64[1]);
      v16.i32[3] = 0;
      *v15 = v16;
      v14(v149, 0);

      --v11;
    }

    while (v11);
  }

  *(a1 + 156) = ((*(a1 + 156) - a5) * a4) + a5;
  v17 = ((1.0 - a6) * a4) + a6;
  sub_1000BC428(v17);
  sub_1000BC428(v17);
  v18 = *(a1 + 176);
  v21 = *(v18 + 64);
  v20 = v18 + 64;
  v19 = v21;
  v22 = 1 << *(*(a1 + 176) + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v107 = *(a1 + 176);

  v26 = 0;
  v104 = a3;
  v105 = v20;
  v106 = v25;
  while (v24)
  {
    v47 = v26;
LABEL_14:
    v48 = __clz(__rbit64(v24)) | (v47 << 6);
    v49 = *(v107 + 48) + 24 * v48;
    v51 = *v49;
    v50 = *(v49 + 8);
    v52 = *(v49 + 16);
    v53 = *(v107 + 56) + 192 * v48;
    v55 = *(v53 + 32);
    v54 = *(v53 + 48);
    v56 = *v53;
    v149[1] = *(v53 + 16);
    v149[2] = v55;
    v149[0] = v56;
    v57 = *(v53 + 112);
    v59 = *(v53 + 64);
    v58 = *(v53 + 80);
    v150 = *(v53 + 96);
    v151 = v57;
    v149[4] = v59;
    v149[5] = v58;
    v61 = *(v53 + 144);
    v60 = *(v53 + 160);
    v62 = *(v53 + 128);
    v155 = *(v53 + 176);
    v153 = v61;
    v154 = v60;
    v152 = v62;
    v149[3] = v54;
    v63 = v60;
    v64 = *(v53 + 144);
    v145 = *(v53 + 128);
    v146 = v64;
    v147 = *(v53 + 160);
    v148 = *(v53 + 176);
    v65 = *(v53 + 80);
    v141 = *(v53 + 64);
    v142 = v65;
    v66 = *(v53 + 112);
    v143 = *(v53 + 96);
    v144 = v66;
    v67 = *(v53 + 16);
    v137 = *v53;
    v138 = v67;
    v68 = *(v53 + 48);
    v139 = *(v53 + 32);
    v140 = v68;
    v109 = v51;
    if (v63)
    {
      *(swift_allocObject() + 16) = v63;
      v69 = v51;
      v70 = v50;
      v71 = v50;
      v72 = v52;
      sub_1000A1DD4(v69, v71, v52);
      sub_1000B89BC(v149, &v125);
      v73 = sub_1000C6288;
LABEL_16:
      *&v125 = a4;
      sub_10000D58C(v63);
      v73(&v137, &v125);

      a3 = v104;
      goto LABEL_22;
    }

    v74 = *(a3 + 16);
    sub_1000A1DD4(v51, v50, v52);
    if (v74)
    {
      sub_1000B89BC(v149, &v125);
      v75 = v51;
      v70 = v50;
      v76 = v50;
      v72 = v52;
      v77 = sub_10009F2C8(v75, v76, v52);
      if (v78)
      {
        v73 = *(*(a3 + 56) + 16 * v77);

        goto LABEL_16;
      }
    }

    else
    {
      v70 = v50;
      v72 = v52;
      sub_1000B89BC(v149, &v125);
    }

    *(&v143 + 1) = *(&v150 + 1) * a4;
LABEL_22:
    v133 = v145;
    v134 = v146;
    v135 = v147;
    v136 = v148;
    v129 = v141;
    v130 = v142;
    v131 = v143;
    v132 = v144;
    v125 = v137;
    v126 = v138;
    v127 = v139;
    v128 = v140;
    sub_1000B89BC(&v125, &v113);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v112 = *(a1 + 176);
    v80 = v112;
    v81 = sub_10009F2C8(v109, v70, v72);
    v83 = v80[2];
    v84 = (v82 & 1) == 0;
    v85 = __OFADD__(v83, v84);
    v86 = v83 + v84;
    if (v85)
    {
      goto LABEL_33;
    }

    v87 = v82;
    if (v80[3] >= v86)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v102 = v81;
        sub_1000B5C20();
        v81 = v102;
        a3 = v104;
      }
    }

    else
    {
      sub_1000B1E88(v86, isUniquelyReferenced_nonNull_native);
      v81 = sub_10009F2C8(v109, v70, v72);
      if ((v87 & 1) != (v88 & 1))
      {
        goto LABEL_35;
      }
    }

    v24 &= v24 - 1;
    if (v87)
    {
      v27 = v112;
      v28 = v112[7] + 192 * v81;
      v29 = *(v28 + 48);
      v31 = *v28;
      v30 = *(v28 + 16);
      v110[2] = *(v28 + 32);
      v110[3] = v29;
      v110[0] = v31;
      v110[1] = v30;
      v32 = *(v28 + 112);
      v34 = *(v28 + 64);
      v33 = *(v28 + 80);
      v110[6] = *(v28 + 96);
      v110[7] = v32;
      v110[4] = v34;
      v110[5] = v33;
      v36 = *(v28 + 144);
      v35 = *(v28 + 160);
      v37 = *(v28 + 128);
      v111 = *(v28 + 176);
      v110[9] = v36;
      v110[10] = v35;
      v110[8] = v37;
      v38 = v125;
      v39 = v126;
      v40 = v128;
      *(v28 + 32) = v127;
      *(v28 + 48) = v40;
      *v28 = v38;
      *(v28 + 16) = v39;
      v41 = v129;
      v42 = v130;
      v43 = v132;
      *(v28 + 96) = v131;
      *(v28 + 112) = v43;
      *(v28 + 64) = v41;
      *(v28 + 80) = v42;
      v44 = v133;
      v45 = v134;
      v46 = v135;
      *(v28 + 176) = v136;
      *(v28 + 144) = v45;
      *(v28 + 160) = v46;
      *(v28 + 128) = v44;
      sub_1000C5E5C(v110);
      sub_1000A1DF8(v109, v70, v72);
      v121 = v145;
      v122 = v146;
      v123 = v147;
      v124 = v148;
      v117 = v141;
      v118 = v142;
      v119 = v143;
      v120 = v144;
      v113 = v137;
      v114 = v138;
      v115 = v139;
      v116 = v140;
      sub_1000C5E5C(&v113);
    }

    else
    {
      v27 = v112;
      v112[(v81 >> 6) + 8] |= 1 << v81;
      v89 = v27[6] + 24 * v81;
      *v89 = v109;
      *(v89 + 8) = v70;
      *(v89 + 16) = v72;
      v90 = v27[7] + 192 * v81;
      v91 = v128;
      v93 = v125;
      v92 = v126;
      *(v90 + 32) = v127;
      *(v90 + 48) = v91;
      *v90 = v93;
      *(v90 + 16) = v92;
      v94 = v132;
      v96 = v129;
      v95 = v130;
      *(v90 + 96) = v131;
      *(v90 + 112) = v94;
      *(v90 + 64) = v96;
      *(v90 + 80) = v95;
      v97 = v133;
      v98 = v134;
      v99 = v135;
      *(v90 + 176) = v136;
      *(v90 + 144) = v98;
      *(v90 + 160) = v99;
      *(v90 + 128) = v97;
      v121 = v145;
      v122 = v146;
      v123 = v147;
      v124 = v148;
      v117 = v141;
      v118 = v142;
      v119 = v143;
      v120 = v144;
      v113 = v137;
      v114 = v138;
      v115 = v139;
      v116 = v140;
      sub_1000C5E5C(&v113);
      v100 = v27[2];
      v85 = __OFADD__(v100, 1);
      v101 = v100 + 1;
      if (v85)
      {
        goto LABEL_34;
      }

      v27[2] = v101;
    }

    *(a1 + 176) = v27;
    v26 = v47;
    v20 = v105;
    v25 = v106;
  }

  while (1)
  {
    v47 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v47 >= v25)
    {

      *(a1 + 336) = *(a1 + 340) + ((*(a1 + 336) - *(a1 + 340)) * a4);
      return result;
    }

    v24 = *(v20 + 8 * v47);
    ++v26;
    if (v24)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1000E9FA4();
  __break(1u);
  return result;
}

uint64_t sub_1000BE44C()
{
  v0 = sub_1000A1C90(&off_10011F5F0);
  sub_1000125FC(&qword_100133388);
  result = swift_arrayDestroy();
  qword_10013DC78 = v0;
  return result;
}

double sub_1000BE4A8(float32x4_t a1, double a2, double a3, double a4, float32x2_t a5)
{
  *v5.f32 = vmul_f32(a5, 0x3DCCCCCDBDCCCCCDLL);
  v5.i64[1] = 0x3F80000000000000;
  *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1000EC8E0, a1.f32[0]), xmmword_1000EC910, *a1.f32, 1), xmmword_1000EC920, a1, 2), v5, a1, 3).u64[0];
  return result;
}

double sub_1000BE52C(float32x4_t a1, double a2, double a3, double a4, float32x2_t a5)
{
  *v5.f32 = vmul_f32(a5, 0xBD4CCCCD3DCCCCCDLL);
  v5.i64[1] = 0x3F80000000000000;
  *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1000EC8E0, a1.f32[0]), xmmword_1000EC910, *a1.f32, 1), xmmword_1000EC920, a1, 2), v5, a1, 3).u64[0];
  return result;
}

uint64_t sub_1000BE5F4(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, unint64_t *a5)
{
  sub_1000125FC(&qword_100133390);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000ED250;
  *(v6 + 32) = 0;
  *(v6 + 48) = a1;
  *(v6 + 64) = 1;
  *(v6 + 80) = a2;
  *(v6 + 96) = 2;
  *(v6 + 112) = a3;
  v7 = sub_1000A0BC8(v6);
  swift_setDeallocating();
  result = swift_deallocClassInstance();
  *a5 = v7;
  return result;
}

uint64_t sub_1000BE6A8()
{
  sub_1000125FC(&qword_100133390);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000EC880;
  *(v0 + 32) = 0;
  *(v0 + 48) = xmmword_1000F4720;
  *(v0 + 64) = 1;
  *(v0 + 80) = xmmword_1000F4720;
  v1 = sub_1000A0BC8(v0);
  swift_setDeallocating();
  result = swift_deallocClassInstance();
  qword_10013DC90 = v1;
  return result;
}

uint64_t sub_1000BE738(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
      v12 = v11;
LABEL_9:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v57 = *(*(a2 + 56) + 16 * (v13 | (v12 << 6)));
      swift_getKeyPath();
      v14 = swift_modifyAtWritableKeyPath();
      v16.i64[0] = vaddq_f32(vmulq_n_f32(v57, a3.n128_f32[0]), *v15).u64[0];
      v16.f32[2] = vmuls_lane_f32(a3.n128_f32[0], v57, 2) + COERCE_FLOAT(v15->i64[1]);
      v16.i32[3] = 0;
      *v15 = v16;
      v14(v82, 0);

      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  v54 = a1;
  v17 = *(a1 + 176);
  v18 = v17 + 64;
  v19 = 1 << *(v17 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v17 + 64);
  v22 = (v19 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v23 = 0;
  v24.i64[1] = a3.n128_i64[1];
  *v24.f32 = vdup_lane_s32(a3.n128_u64[0], 0);
  v53 = v24;
  v58 = v17;
  while (v21)
  {
    v25 = v21;
LABEL_21:
    v21 = (v25 - 1) & v25;
    if (*(v17 + 16))
    {
      v27 = *(v58 + 48) + 24 * (__clz(__rbit64(v25)) | (v23 << 6));
      v29 = *v27;
      v28 = *(v27 + 8);
      v30 = *(v27 + 16);
      sub_1000A1DD4(*v27, v28, v30);
      v31 = sub_10009F2C8(v29, v28, v30);
      if (v32)
      {
        v33 = *(v17 + 56) + 192 * v31;
        v35 = *(v33 + 32);
        v34 = *(v33 + 48);
        v36 = *(v33 + 16);
        v62[0] = *v33;
        v62[1] = v36;
        v62[2] = v35;
        v62[3] = v34;
        v37 = *(v33 + 64);
        v38 = *(v33 + 80);
        v39 = *(v33 + 112);
        v65 = *(v33 + 96);
        v66 = v39;
        v63 = v37;
        v64 = v38;
        v40 = *(v33 + 128);
        v41 = *(v33 + 144);
        v42 = *(v33 + 160);
        v70 = *(v33 + 176);
        v68 = v41;
        v69 = v42;
        v67 = v40;
        v43 = *(v33 + 16);
        v78 = *v33;
        v79 = v43;
        v44 = *(v33 + 48);
        v80 = *(v33 + 32);
        v81 = v44;
        v55 = v63;
        v45 = *(v33 + 160);
        v75 = *(v33 + 144);
        v76 = v45;
        v77 = *(v33 + 176);
        v46 = *(v33 + 96);
        v71 = *(v33 + 80);
        v72 = v46;
        v47 = *(v33 + 128);
        v73 = *(v33 + 112);
        v74 = v47;
        if (*(a2 + 16) && (v48 = sub_1000A1E74(BYTE9(v67)), (v49 & 1) != 0))
        {
          v50 = *(*(a2 + 56) + 16 * v48);
          v51 = vmuls_lane_f32(a3.n128_f32[0], v50, 2);
          v50.i64[0] = vaddq_f32(v63, vmulq_f32(v50, v53)).u64[0];
          v50.f32[2] = v63.f32[2] + v51;
          v50.i32[3] = v63.i32[3];
          v55 = v50;
          v82[0] = v78;
          v82[1] = v79;
          v82[2] = v80;
          v82[3] = v81;
          v82[4] = v50;
          v82[9] = v75;
          v82[10] = v76;
          v83 = v77;
          v82[5] = v71;
          v82[6] = v72;
          v82[7] = v73;
          v82[8] = v74;
          sub_1000B89BC(v62, v59);
          sub_1000B89BC(v82, v59);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v59[0] = *(v54 + 176);
          sub_1000B4A40(v82, v29, v28, v30, isUniquelyReferenced_nonNull_native);
          sub_1000A1DF8(v29, v28, v30);
          v17 = v59[0];
          *(v54 + 176) = v59[0];
        }

        else
        {
          sub_1000B89BC(v62, v59);
          sub_1000A1DF8(v29, v28, v30);
        }

        v60[0] = v78;
        v60[1] = v79;
        v60[2] = v80;
        v60[3] = v81;
        v60[4] = v55;
        v60[9] = v75;
        v60[10] = v76;
        v61 = v77;
        v60[5] = v71;
        v60[6] = v72;
        v60[7] = v73;
        v60[8] = v74;
        result = sub_1000C5E5C(v60);
      }

      else
      {
        result = sub_1000A1DF8(v29, v28, v30);
      }
    }
  }

  while (1)
  {
    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
    }

    v25 = *(v18 + 8 * v26);
    ++v23;
    if (v25)
    {
      v23 = v26;
      goto LABEL_21;
    }
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1000BEBB0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>, int32x2_t a4@<D0>)
{
  v7 = sub_1000A0774(_swiftEmptyArrayStorage);
  v600 = v4;
  v8 = *(v4 + 176);
  v609 = a1;
  v615 = v8;
  if (a2)
  {
    v9 = v8 + 64;
    v10 = 1 << *(v8 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v8 + 64);
    v13 = (v10 + 63) >> 6;

    v14 = 0;
    v15 = v7;
    v605 = v9;
    v601 = v13;
    while (v12)
    {
      v35 = v14;
LABEL_12:
      v36 = __clz(__rbit64(v12)) | (v35 << 6);
      v37 = *(v615 + 48) + 24 * v36;
      v39 = *v37;
      v38 = *(v37 + 8);
      v40 = *(v37 + 16);
      v41 = *(v615 + 56) + 192 * v36;
      v43 = *(v41 + 32);
      v42 = *(v41 + 48);
      v44 = *v41;
      v669 = *(v41 + 16);
      v670 = v43;
      v668 = v44;
      v45 = *(v41 + 112);
      v47 = *(v41 + 64);
      v46 = *(v41 + 80);
      v674 = *(v41 + 96);
      v675 = v45;
      v672 = v47;
      v673 = v46;
      v49 = *(v41 + 144);
      v48 = *(v41 + 160);
      v50 = *(v41 + 128);
      v679 = *(v41 + 176);
      v677 = v49;
      v678 = v48;
      v676 = v50;
      v671 = v42;
      v51 = *(v41 + 64);
      v52 = *(v41 + 80);
      v53 = *(v41 + 32);
      v661 = *(v41 + 48);
      v662 = v51;
      v663 = v52;
      v664 = *(v41 + 96);
      v54 = *v41;
      v659 = *(v41 + 16);
      v660 = v53;
      v55 = *(v41 + 104);
      v56 = *(v41 + 120);
      v57 = *(v41 + 136);
      v657 = *(v41 + 168);
      v658 = v54;
      v58 = *(v41 + 152);
      v655 = v57;
      v656 = v58;
      v653 = v55;
      v654 = v56;
      v59 = (1.0 - *a4.i32) * *(&v674 + 1);
      v60 = swift_allocObject();
      v624 = v662;
      v625 = v663;
      __dst = v658;
      v621 = v659;
      v622 = v660;
      v623 = v661;
      v61 = v653;
      *&v626[24] = v654;
      *&v626[40] = v655;
      *&v626[56] = v656;
      *&v626[72] = v657;
      *(v60 + 16) = v39;
      *(v60 + 24) = v38;
      *(v60 + 32) = v40;
      *(v60 + 33) = 0;
      *v626 = v664;
      *&v626[4] = v59;
      *&v626[8] = v61;
      sub_1000A1DD4(v39, v38, v40);
      v610 = v40;
      sub_1000A1DD4(v39, v38, v40);
      sub_1000B89BC(&v668, &v646);
      sub_1000B89BC(&__dst, &v646);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v680[0].i64[0] = v15;
      v64 = sub_10009F2C8(v60, 0, 8);
      v65 = v15[2];
      v66 = (v63 & 1) == 0;
      v67 = v65 + v66;
      if (__OFADD__(v65, v66))
      {
        goto LABEL_168;
      }

      v68 = v63;
      if (v15[3] >= v67)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1000B5C20();
        }
      }

      else
      {
        sub_1000B1E88(v67, isUniquelyReferenced_nonNull_native);
        v69 = sub_10009F2C8(v60, 0, 8);
        if ((v68 & 1) != (v70 & 1))
        {
          goto LABEL_184;
        }

        v64 = v69;
      }

      v12 &= v12 - 1;
      if (v68)
      {
        v15 = v680[0].i64[0];
        v16 = *(v680[0].i64[0] + 56) + 192 * v64;
        v17 = *(v16 + 48);
        v19 = *v16;
        v18 = *(v16 + 16);
        v636 = *(v16 + 32);
        v637 = v17;
        v634 = v19;
        v635 = v18;
        v20 = *(v16 + 112);
        v22 = *(v16 + 64);
        v21 = *(v16 + 80);
        v640 = *(v16 + 96);
        v641 = v20;
        v638 = v22;
        v639 = v21;
        v24 = *(v16 + 144);
        v23 = *(v16 + 160);
        v25 = *(v16 + 128);
        v645 = *(v16 + 176);
        v643 = v24;
        v644 = v23;
        v642 = v25;
        v26 = __dst;
        v27 = v621;
        v28 = v623;
        *(v16 + 32) = v622;
        *(v16 + 48) = v28;
        *v16 = v26;
        *(v16 + 16) = v27;
        v29 = v624;
        v30 = v625;
        v31 = *&v626[16];
        *(v16 + 96) = *v626;
        *(v16 + 112) = v31;
        *(v16 + 64) = v29;
        *(v16 + 80) = v30;
        v32 = *&v626[32];
        v33 = *&v626[48];
        v34 = *&v626[64];
        *(v16 + 176) = *&v626[80];
        *(v16 + 144) = v33;
        *(v16 + 160) = v34;
        *(v16 + 128) = v32;
        sub_1000C5E5C(&v634);

        sub_1000A1DF8(v39, v38, v610);
        v650 = v662;
        v651 = v663;
        v646 = v658;
        v647 = v659;
        *v652 = v664;
        v648 = v660;
        v649 = v661;
        *&v652[4] = v59;
        *&v652[8] = v653;
        *&v652[72] = v657;
        *&v652[56] = v656;
        *&v652[40] = v655;
        *&v652[24] = v654;
        sub_1000C5E5C(&v646);
      }

      else
      {
        v15 = v680[0].i64[0];
        *(v680[0].i64[0] + 8 * (v64 >> 6) + 64) |= 1 << v64;
        v71 = v15[6] + 24 * v64;
        *v71 = v60;
        *(v71 + 8) = 0;
        *(v71 + 16) = 8;
        v72 = v15[7] + 192 * v64;
        v73 = v623;
        v75 = __dst;
        v74 = v621;
        *(v72 + 32) = v622;
        *(v72 + 48) = v73;
        *v72 = v75;
        *(v72 + 16) = v74;
        v76 = *&v626[16];
        v78 = v624;
        v77 = v625;
        *(v72 + 96) = *v626;
        *(v72 + 112) = v76;
        *(v72 + 64) = v78;
        *(v72 + 80) = v77;
        v79 = *&v626[32];
        v80 = *&v626[48];
        v81 = *&v626[64];
        *(v72 + 176) = *&v626[80];
        *(v72 + 144) = v80;
        *(v72 + 160) = v81;
        *(v72 + 128) = v79;
        sub_1000A1DF8(v39, v38, v610);
        v650 = v662;
        v651 = v663;
        v646 = v658;
        v647 = v659;
        *v652 = v664;
        v648 = v660;
        v649 = v661;
        *&v652[4] = v59;
        *&v652[8] = v653;
        *&v652[72] = v657;
        *&v652[56] = v656;
        *&v652[40] = v655;
        *&v652[24] = v654;
        sub_1000C5E5C(&v646);
        v82 = v15[2];
        _VF = __OFADD__(v82, 1);
        v84 = v82 + 1;
        if (_VF)
        {
          goto LABEL_180;
        }

        v15[2] = v84;
      }

      v14 = v35;
      v9 = v605;
      v13 = v601;
    }

    while (1)
    {
      v35 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_164;
      }

      if (v35 >= v13)
      {
        break;
      }

      v12 = *(v9 + 8 * v35);
      ++v14;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    v89 = *(v609 + 176);
    v92 = *(v89 + 64);
    v91 = v89 + 64;
    v90 = v92;
    v93 = 1 << *(*(v609 + 176) + 32);
    v94 = -1;
    if (v93 < 64)
    {
      v94 = ~(-1 << v93);
    }

    v95 = v94 & v90;
    v96 = (v93 + 63) >> 6;
    v612 = *(v609 + 176);

    v97 = 0;
    v607 = v91;
    v602 = v96;
    while (v95)
    {
      v117 = v97;
LABEL_33:
      v118 = __clz(__rbit64(v95)) | (v117 << 6);
      v119 = *(v612 + 48) + 24 * v118;
      v121 = *v119;
      v120 = *(v119 + 8);
      v122 = *(v119 + 16);
      v123 = *(v612 + 56) + 192 * v118;
      v125 = *(v123 + 32);
      v124 = *(v123 + 48);
      v126 = *v123;
      v669 = *(v123 + 16);
      v670 = v125;
      v668 = v126;
      v127 = *(v123 + 112);
      v129 = *(v123 + 64);
      v128 = *(v123 + 80);
      v674 = *(v123 + 96);
      v675 = v127;
      v672 = v129;
      v673 = v128;
      v131 = *(v123 + 144);
      v130 = *(v123 + 160);
      v132 = *(v123 + 128);
      v679 = *(v123 + 176);
      v677 = v131;
      v678 = v130;
      v676 = v132;
      v671 = v124;
      v133 = *(v123 + 64);
      v134 = *(v123 + 80);
      v135 = *(v123 + 32);
      v661 = *(v123 + 48);
      v662 = v133;
      v663 = v134;
      v664 = *(v123 + 96);
      v136 = *v123;
      v659 = *(v123 + 16);
      v660 = v135;
      v137 = *(v123 + 104);
      v138 = *(v123 + 120);
      v139 = *(v123 + 136);
      v657 = *(v123 + 168);
      v658 = v136;
      v140 = *(v123 + 152);
      v655 = v139;
      v656 = v140;
      v653 = v137;
      v654 = v138;
      v141 = *(&v674 + 1) * *a4.i32;
      v142 = swift_allocObject();
      v624 = v662;
      v625 = v663;
      __dst = v658;
      v621 = v659;
      v622 = v660;
      v623 = v661;
      v143 = v653;
      *&v626[24] = v654;
      *&v626[40] = v655;
      *&v626[56] = v656;
      *&v626[72] = v657;
      *(v142 + 16) = v121;
      *(v142 + 24) = v120;
      *(v142 + 32) = v122;
      *(v142 + 33) = 1;
      *v626 = v664;
      *&v626[4] = v141;
      *&v626[8] = v143;
      sub_1000A1DD4(v121, v120, v122);
      v616 = v120;
      v144 = v122;
      sub_1000A1DD4(v121, v120, v122);
      sub_1000B89BC(&v668, &v646);
      sub_1000B89BC(&__dst, &v646);
      v145 = swift_isUniquelyReferenced_nonNull_native();
      v680[0].i64[0] = v15;
      v147 = sub_10009F2C8(v142, 0, 8);
      v148 = v15[2];
      v149 = (v146 & 1) == 0;
      v150 = v148 + v149;
      if (__OFADD__(v148, v149))
      {
        goto LABEL_172;
      }

      v151 = v146;
      if (v15[3] >= v150)
      {
        if ((v145 & 1) == 0)
        {
          sub_1000B5C20();
        }
      }

      else
      {
        sub_1000B1E88(v150, v145);
        v152 = sub_10009F2C8(v142, 0, 8);
        if ((v151 & 1) != (v153 & 1))
        {
          goto LABEL_184;
        }

        v147 = v152;
      }

      v95 &= v95 - 1;
      if (v151)
      {
        v15 = v680[0].i64[0];
        v98 = *(v680[0].i64[0] + 56) + 192 * v147;
        v99 = *(v98 + 48);
        v101 = *v98;
        v100 = *(v98 + 16);
        v636 = *(v98 + 32);
        v637 = v99;
        v634 = v101;
        v635 = v100;
        v102 = *(v98 + 112);
        v104 = *(v98 + 64);
        v103 = *(v98 + 80);
        v640 = *(v98 + 96);
        v641 = v102;
        v638 = v104;
        v639 = v103;
        v106 = *(v98 + 144);
        v105 = *(v98 + 160);
        v107 = *(v98 + 128);
        v645 = *(v98 + 176);
        v643 = v106;
        v644 = v105;
        v642 = v107;
        v108 = __dst;
        v109 = v621;
        v110 = v623;
        *(v98 + 32) = v622;
        *(v98 + 48) = v110;
        *v98 = v108;
        *(v98 + 16) = v109;
        v111 = v624;
        v112 = v625;
        v113 = *&v626[16];
        *(v98 + 96) = *v626;
        *(v98 + 112) = v113;
        *(v98 + 64) = v111;
        *(v98 + 80) = v112;
        v114 = *&v626[32];
        v115 = *&v626[48];
        v116 = *&v626[64];
        *(v98 + 176) = *&v626[80];
        *(v98 + 144) = v115;
        *(v98 + 160) = v116;
        *(v98 + 128) = v114;
        sub_1000C5E5C(&v634);

        sub_1000A1DF8(v121, v616, v144);
        v650 = v662;
        v651 = v663;
        v646 = v658;
        v647 = v659;
        *v652 = v664;
        v648 = v660;
        v649 = v661;
        *&v652[4] = v141;
        *&v652[8] = v653;
        *&v652[72] = v657;
        *&v652[56] = v656;
        *&v652[40] = v655;
        *&v652[24] = v654;
        sub_1000C5E5C(&v646);
      }

      else
      {
        v15 = v680[0].i64[0];
        *(v680[0].i64[0] + 8 * (v147 >> 6) + 64) |= 1 << v147;
        v154 = v15[6] + 24 * v147;
        *v154 = v142;
        *(v154 + 8) = 0;
        *(v154 + 16) = 8;
        v155 = v15[7] + 192 * v147;
        v156 = v623;
        v158 = __dst;
        v157 = v621;
        *(v155 + 32) = v622;
        *(v155 + 48) = v156;
        *v155 = v158;
        *(v155 + 16) = v157;
        v159 = *&v626[16];
        v161 = v624;
        v160 = v625;
        *(v155 + 96) = *v626;
        *(v155 + 112) = v159;
        *(v155 + 64) = v161;
        *(v155 + 80) = v160;
        v162 = *&v626[32];
        v163 = *&v626[48];
        v164 = *&v626[64];
        *(v155 + 176) = *&v626[80];
        *(v155 + 144) = v163;
        *(v155 + 160) = v164;
        *(v155 + 128) = v162;
        sub_1000A1DF8(v121, v616, v144);
        v650 = v662;
        v651 = v663;
        v646 = v658;
        v647 = v659;
        *v652 = v664;
        v648 = v660;
        v649 = v661;
        *&v652[4] = v141;
        *&v652[8] = v653;
        *&v652[72] = v657;
        *&v652[56] = v656;
        *&v652[40] = v655;
        *&v652[24] = v654;
        sub_1000C5E5C(&v646);
        v165 = v15[2];
        _VF = __OFADD__(v165, 1);
        v166 = v165 + 1;
        if (_VF)
        {
          goto LABEL_182;
        }

        v15[2] = v166;
      }

      v97 = v117;
      v91 = v607;
      v96 = v602;
    }

    while (1)
    {
      v117 = v97 + 1;
      if (__OFADD__(v97, 1))
      {
        break;
      }

      if (v117 >= v96)
      {
        v589 = v15;

        goto LABEL_149;
      }

      v95 = *(v91 + 8 * v117);
      ++v97;
      if (v95)
      {
        goto LABEL_33;
      }
    }

LABEL_165:
    __break(1u);
  }

  else
  {

    v86 = sub_1000C15E8(v85);

    v87 = sub_1000C15E8(v611);
    v88 = v8;
    if (v87[2] <= v86[2] >> 3)
    {
      __dst.i64[0] = v86;

      sub_1000C3AB8(v87);
      v606 = v86;
    }

    else
    {

      v606 = sub_1000C3C00(v87, v86);
    }

    v167 = v7;
    v584 = v87;
    if (v86[2] <= v87[2] >> 3)
    {
      __dst.i64[0] = v87;

      sub_1000C3AB8(v86);
      v603 = v87;
    }

    else
    {

      v603 = sub_1000C3C00(v86, v87);
    }

    v168 = 1 << v606[32];
    v169 = -1;
    if (v168 < 64)
    {
      v169 = ~(-1 << v168);
    }

    v170 = v169 & *(v606 + 7);
    v171 = (v168 + 63) >> 6;
    v172 = 1.0 - *a4.i32;

    v173 = 0;
    v595 = v171;
    while (v170)
    {
      v193 = v173;
LABEL_57:
      if (!*(v88 + 16))
      {
        goto LABEL_169;
      }

      v194 = *(v606 + 6) + 24 * (__clz(__rbit64(v170)) | (v193 << 6));
      v196 = *v194;
      v195 = *(v194 + 8);
      v197 = *(v194 + 16);
      sub_1000A1DD4(*v194, v195, v197);
      v198 = sub_10009F2C8(v196, v195, v197);
      if ((v199 & 1) == 0)
      {
        goto LABEL_170;
      }

      v200 = (*(v88 + 56) + 192 * v198);
      v202 = *(v200 + 2);
      v201 = *(v200 + 3);
      v203 = *(v200 + 1);
      v668 = *v200;
      v669 = v203;
      v670 = v202;
      v671 = v201;
      v204 = *(v200 + 4);
      v205 = *(v200 + 5);
      v206 = *(v200 + 7);
      v674 = *(v200 + 6);
      v675 = v206;
      v672 = v204;
      v673 = v205;
      v207 = *(v200 + 8);
      v208 = *(v200 + 9);
      v209 = *(v200 + 10);
      v679 = *(v200 + 176);
      v677 = v208;
      v678 = v209;
      v676 = v207;
      v210 = *(v200 + 4);
      v211 = *(v200 + 5);
      v212 = *(v200 + 2);
      v661 = *(v200 + 3);
      v662 = v210;
      v663 = v211;
      v664 = *(v200 + 24);
      v213 = *v200;
      v659 = *(v200 + 1);
      v660 = v212;
      v214 = *(v200 + 104);
      v215 = *(v200 + 120);
      v216 = *(v200 + 136);
      v657 = *(v200 + 168);
      v658 = v213;
      v217 = *(v200 + 152);
      v655 = v216;
      v656 = v217;
      v653 = v214;
      v654 = v215;
      v218 = v172 * *(&v674 + 1);
      memmove(&__dst, v200, 0x64uLL);
      *&v626[4] = v218;
      *&v626[24] = v654;
      *&v626[40] = v655;
      *&v626[56] = v656;
      *&v626[72] = v657;
      *&v626[8] = v653;
      sub_1000B89BC(&v668, &v646);
      sub_1000B89BC(&__dst, &v646);
      v219 = swift_isUniquelyReferenced_nonNull_native();
      v680[0].i64[0] = v167;
      v220 = sub_10009F2C8(v196, v195, v197);
      v222 = v167;
      v223 = v167[2];
      v224 = (v221 & 1) == 0;
      _VF = __OFADD__(v223, v224);
      v225 = v223 + v224;
      if (_VF)
      {
        goto LABEL_171;
      }

      v226 = v221;
      if (v222[3] >= v225)
      {
        if ((v219 & 1) == 0)
        {
          v241 = v220;
          sub_1000B5C20();
          v220 = v241;
        }
      }

      else
      {
        sub_1000B1E88(v225, v219);
        v220 = sub_10009F2C8(v196, v195, v197);
        if ((v226 & 1) != (v227 & 1))
        {
          goto LABEL_184;
        }
      }

      v88 = v615;
      v170 &= v170 - 1;
      if (v226)
      {
        v167 = v680[0].i64[0];
        v174 = *(v680[0].i64[0] + 56) + 192 * v220;
        v175 = *(v174 + 48);
        v177 = *v174;
        v176 = *(v174 + 16);
        v636 = *(v174 + 32);
        v637 = v175;
        v634 = v177;
        v635 = v176;
        v178 = *(v174 + 112);
        v180 = *(v174 + 64);
        v179 = *(v174 + 80);
        v640 = *(v174 + 96);
        v641 = v178;
        v638 = v180;
        v639 = v179;
        v182 = *(v174 + 144);
        v181 = *(v174 + 160);
        v183 = *(v174 + 128);
        v645 = *(v174 + 176);
        v643 = v182;
        v644 = v181;
        v642 = v183;
        v184 = __dst;
        v185 = v621;
        v186 = v623;
        *(v174 + 32) = v622;
        *(v174 + 48) = v186;
        *v174 = v184;
        *(v174 + 16) = v185;
        v187 = v624;
        v188 = v625;
        v189 = *&v626[16];
        *(v174 + 96) = *v626;
        *(v174 + 112) = v189;
        *(v174 + 64) = v187;
        *(v174 + 80) = v188;
        v190 = *&v626[32];
        v191 = *&v626[48];
        v192 = *&v626[64];
        *(v174 + 176) = *&v626[80];
        *(v174 + 144) = v191;
        *(v174 + 160) = v192;
        *(v174 + 128) = v190;
        sub_1000C5E5C(&v634);
        sub_1000A1DF8(v196, v195, v197);
        v650 = v662;
        v651 = v663;
        v646 = v658;
        v647 = v659;
        *v652 = v664;
        v648 = v660;
        v649 = v661;
        *&v652[4] = v218;
        *&v652[8] = v653;
        *&v652[72] = v657;
        *&v652[56] = v656;
        *&v652[40] = v655;
        *&v652[24] = v654;
        sub_1000C5E5C(&v646);
      }

      else
      {
        v167 = v680[0].i64[0];
        *(v680[0].i64[0] + 8 * (v220 >> 6) + 64) |= 1 << v220;
        v228 = v167[6] + 24 * v220;
        *v228 = v196;
        *(v228 + 8) = v195;
        *(v228 + 16) = v197;
        v229 = v167[7] + 192 * v220;
        v230 = v623;
        v232 = __dst;
        v231 = v621;
        *(v229 + 32) = v622;
        *(v229 + 48) = v230;
        *v229 = v232;
        *(v229 + 16) = v231;
        v233 = *&v626[16];
        v235 = v624;
        v234 = v625;
        *(v229 + 96) = *v626;
        *(v229 + 112) = v233;
        *(v229 + 64) = v235;
        *(v229 + 80) = v234;
        v236 = *&v626[32];
        v237 = *&v626[48];
        v238 = *&v626[64];
        *(v229 + 176) = *&v626[80];
        *(v229 + 144) = v237;
        *(v229 + 160) = v238;
        *(v229 + 128) = v236;
        v650 = v662;
        v651 = v663;
        *v652 = v664;
        v646 = v658;
        v647 = v659;
        v648 = v660;
        v649 = v661;
        *&v652[4] = v218;
        *&v652[8] = v653;
        *&v652[72] = v657;
        *&v652[56] = v656;
        *&v652[40] = v655;
        *&v652[24] = v654;
        sub_1000C5E5C(&v646);
        v239 = v167[2];
        _VF = __OFADD__(v239, 1);
        v240 = v239 + 1;
        if (_VF)
        {
          goto LABEL_181;
        }

        v167[2] = v240;
      }

      v173 = v193;
      v171 = v595;
    }

    while (1)
    {
      v193 = v173 + 1;
      if (__OFADD__(v173, 1))
      {
LABEL_164:
        __break(1u);
        goto LABEL_165;
      }

      if (v193 >= v171)
      {
        break;
      }

      v170 = *&v606[8 * v193 + 56];
      ++v173;
      if (v170)
      {
        goto LABEL_57;
      }
    }

    v242 = 1 << v603[32];
    v243 = -1;
    if (v242 < 64)
    {
      v243 = ~(-1 << v242);
    }

    v244 = v243 & *(v603 + 7);
    v245 = (v242 + 63) >> 6;

    v246 = 0;
    v596 = v245;
    while (v244)
    {
      v266 = v246;
LABEL_78:
      if (!*(v611 + 16))
      {
        goto LABEL_173;
      }

      v267 = *(v603 + 6) + 24 * (__clz(__rbit64(v244)) | (v266 << 6));
      v269 = *v267;
      v268 = *(v267 + 8);
      v270 = *(v267 + 16);
      sub_1000A1DD4(*v267, v268, v270);
      v271 = sub_10009F2C8(v269, v268, v270);
      if ((v272 & 1) == 0)
      {
        goto LABEL_174;
      }

      v273 = (*(v611 + 56) + 192 * v271);
      v275 = *(v273 + 2);
      v274 = *(v273 + 3);
      v276 = *(v273 + 1);
      v668 = *v273;
      v669 = v276;
      v670 = v275;
      v671 = v274;
      v277 = *(v273 + 4);
      v278 = *(v273 + 5);
      v279 = *(v273 + 7);
      v674 = *(v273 + 6);
      v675 = v279;
      v672 = v277;
      v673 = v278;
      v280 = *(v273 + 8);
      v281 = *(v273 + 9);
      v282 = *(v273 + 10);
      v679 = *(v273 + 176);
      v677 = v281;
      v678 = v282;
      v676 = v280;
      v283 = *(v273 + 4);
      v284 = *(v273 + 5);
      v285 = *(v273 + 2);
      v661 = *(v273 + 3);
      v662 = v283;
      v663 = v284;
      v664 = *(v273 + 24);
      v286 = *v273;
      v659 = *(v273 + 1);
      v660 = v285;
      v287 = *(v273 + 104);
      v288 = *(v273 + 120);
      v289 = *(v273 + 136);
      v657 = *(v273 + 168);
      v658 = v286;
      v290 = *(v273 + 152);
      v655 = v289;
      v656 = v290;
      v653 = v287;
      v654 = v288;
      v291 = *(&v674 + 1) * *a4.i32;
      memmove(&__dst, v273, 0x64uLL);
      *&v626[4] = v291;
      *&v626[24] = v654;
      *&v626[40] = v655;
      *&v626[56] = v656;
      *&v626[72] = v657;
      *&v626[8] = v653;
      sub_1000B89BC(&v668, &v646);
      sub_1000B89BC(&__dst, &v646);
      v292 = swift_isUniquelyReferenced_nonNull_native();
      v680[0].i64[0] = v167;
      v293 = sub_10009F2C8(v269, v268, v270);
      v295 = v167;
      v296 = v167[2];
      v297 = (v294 & 1) == 0;
      _VF = __OFADD__(v296, v297);
      v298 = v296 + v297;
      if (_VF)
      {
        goto LABEL_175;
      }

      v299 = v294;
      if (v295[3] >= v298)
      {
        if ((v292 & 1) == 0)
        {
          v314 = v293;
          sub_1000B5C20();
          v293 = v314;
        }
      }

      else
      {
        sub_1000B1E88(v298, v292);
        v293 = sub_10009F2C8(v269, v268, v270);
        if ((v299 & 1) != (v300 & 1))
        {
          goto LABEL_184;
        }
      }

      v88 = v615;
      v244 &= v244 - 1;
      if (v299)
      {
        v167 = v680[0].i64[0];
        v247 = *(v680[0].i64[0] + 56) + 192 * v293;
        v248 = *(v247 + 48);
        v250 = *v247;
        v249 = *(v247 + 16);
        v636 = *(v247 + 32);
        v637 = v248;
        v634 = v250;
        v635 = v249;
        v251 = *(v247 + 112);
        v253 = *(v247 + 64);
        v252 = *(v247 + 80);
        v640 = *(v247 + 96);
        v641 = v251;
        v638 = v253;
        v639 = v252;
        v255 = *(v247 + 144);
        v254 = *(v247 + 160);
        v256 = *(v247 + 128);
        v645 = *(v247 + 176);
        v643 = v255;
        v644 = v254;
        v642 = v256;
        v257 = __dst;
        v258 = v621;
        v259 = v623;
        *(v247 + 32) = v622;
        *(v247 + 48) = v259;
        *v247 = v257;
        *(v247 + 16) = v258;
        v260 = v624;
        v261 = v625;
        v262 = *&v626[16];
        *(v247 + 96) = *v626;
        *(v247 + 112) = v262;
        *(v247 + 64) = v260;
        *(v247 + 80) = v261;
        v263 = *&v626[32];
        v264 = *&v626[48];
        v265 = *&v626[64];
        *(v247 + 176) = *&v626[80];
        *(v247 + 144) = v264;
        *(v247 + 160) = v265;
        *(v247 + 128) = v263;
        sub_1000C5E5C(&v634);
        sub_1000A1DF8(v269, v268, v270);
        v650 = v662;
        v651 = v663;
        v646 = v658;
        v647 = v659;
        *v652 = v664;
        v648 = v660;
        v649 = v661;
        *&v652[4] = v291;
        *&v652[8] = v653;
        *&v652[72] = v657;
        *&v652[56] = v656;
        *&v652[40] = v655;
        *&v652[24] = v654;
        sub_1000C5E5C(&v646);
      }

      else
      {
        v167 = v680[0].i64[0];
        *(v680[0].i64[0] + 8 * (v293 >> 6) + 64) |= 1 << v293;
        v301 = v167[6] + 24 * v293;
        *v301 = v269;
        *(v301 + 8) = v268;
        *(v301 + 16) = v270;
        v302 = v167[7] + 192 * v293;
        v303 = v623;
        v305 = __dst;
        v304 = v621;
        *(v302 + 32) = v622;
        *(v302 + 48) = v303;
        *v302 = v305;
        *(v302 + 16) = v304;
        v306 = *&v626[16];
        v308 = v624;
        v307 = v625;
        *(v302 + 96) = *v626;
        *(v302 + 112) = v306;
        *(v302 + 64) = v308;
        *(v302 + 80) = v307;
        v309 = *&v626[32];
        v310 = *&v626[48];
        v311 = *&v626[64];
        *(v302 + 176) = *&v626[80];
        *(v302 + 144) = v310;
        *(v302 + 160) = v311;
        *(v302 + 128) = v309;
        v650 = v662;
        v651 = v663;
        *v652 = v664;
        v646 = v658;
        v647 = v659;
        v648 = v660;
        v649 = v661;
        *&v652[4] = v291;
        *&v652[8] = v653;
        *&v652[72] = v657;
        *&v652[56] = v656;
        *&v652[40] = v655;
        *&v652[24] = v654;
        sub_1000C5E5C(&v646);
        v312 = v167[2];
        _VF = __OFADD__(v312, 1);
        v313 = v312 + 1;
        if (_VF)
        {
          goto LABEL_183;
        }

        v167[2] = v313;
      }

      v246 = v266;
      v245 = v596;
    }

    while (1)
    {
      v266 = v246 + 1;
      if (__OFADD__(v246, 1))
      {
        break;
      }

      if (v266 >= v245)
      {
        v589 = v167;

        v315 = sub_1000C4294(v584, v86);
        v316 = 0;
        v318 = v315 + 56;
        v317 = *(v315 + 56);
        v597 = v315;
        v319 = 1 << *(v315 + 32);
        v320 = -1;
        if (v319 < 64)
        {
          v320 = ~(-1 << v319);
        }

        v321 = v320 & v317;
        v322 = (v319 + 63) >> 6;
        v580 = vdupq_lane_s32(a4, 0).u64[0];
        v593 = v322;
        if ((v320 & v317) != 0)
        {
          goto LABEL_96;
        }

        while (1)
        {
          v411 = v316 + 1;
          if (__OFADD__(v316, 1))
          {
            goto LABEL_167;
          }

          if (v411 >= v322)
          {
            break;
          }

          v321 = *(v318 + 8 * v411);
          ++v316;
          if (v321)
          {
            v316 = v411;
            if (!*(v88 + 16))
            {
              goto LABEL_176;
            }

LABEL_97:
            v327 = *(v597 + 48) + 24 * (__clz(__rbit64(v321)) | (v316 << 6));
            v328 = *v327;
            v329 = *(v327 + 8);
            v330 = *(v327 + 16);
            sub_1000A1DD4(*v327, v329, v330);
            v331 = sub_10009F2C8(v328, v329, v330);
            if ((v332 & 1) == 0)
            {
              goto LABEL_177;
            }

            v333 = *(v88 + 56) + 192 * v331;
            v334 = *v333;
            v335 = *(v333 + 16);
            v336 = *(v333 + 48);
            v648 = *(v333 + 32);
            v649 = v336;
            v647 = v335;
            v337 = *(v333 + 64);
            v338 = *(v333 + 80);
            v339 = *(v333 + 112);
            *v652 = *(v333 + 96);
            *&v652[16] = v339;
            v650 = v337;
            v651 = v338;
            v340 = *(v333 + 128);
            v341 = *(v333 + 144);
            v342 = *(v333 + 160);
            *&v652[80] = *(v333 + 176);
            *&v652[48] = v341;
            *&v652[64] = v342;
            *&v652[32] = v340;
            v646 = v334;
            if (!*(v611 + 16))
            {
              goto LABEL_178;
            }

            sub_1000B89BC(&v646, &v634);
            v343 = sub_10009F2C8(v328, v329, v330);
            if ((v344 & 1) == 0)
            {
              goto LABEL_179;
            }

            v321 &= v321 - 1;
            v345 = *(v611 + 56) + 192 * v343;
            v347 = *(v345 + 32);
            v346 = *(v345 + 48);
            v348 = *(v345 + 16);
            __dst = *v345;
            v621 = v348;
            v622 = v347;
            v623 = v346;
            v349 = *(v345 + 64);
            v350 = *(v345 + 80);
            v351 = *(v345 + 112);
            *v626 = *(v345 + 96);
            *&v626[16] = v351;
            v624 = v349;
            v625 = v350;
            v352 = *(v345 + 128);
            v353 = *(v345 + 144);
            v354 = *(v345 + 160);
            *&v626[80] = *(v345 + 176);
            *&v626[48] = v353;
            *&v626[64] = v354;
            *&v626[32] = v352;
            v355 = v646.i8[12];
            if (!v646.i8[12])
            {
              if (!__dst.i8[12])
              {
                goto LABEL_103;
              }

              goto LABEL_94;
            }

            if (v646.u8[12] == 1)
            {
              if (__dst.u8[12] == 1)
              {
LABEL_103:
                v356 = ((__dst.f32[2] - v646.f32[2]) * *a4.i32) + v646.f32[2];
                v357 = COERCE_UNSIGNED_INT(((__dst.f32[0] - v646.f32[0]) * *a4.i32) + v646.f32[0]) | (COERCE_UNSIGNED_INT(((__dst.f32[1] - v646.f32[1]) * *a4.i32) + v646.f32[1]) << 32);
                goto LABEL_106;
              }

LABEL_94:
              sub_1000125FC(&qword_100132930);
              v323 = swift_allocObject();
              *(v323 + 16) = xmmword_1000EC870;
              *&v633 = 0;
              *(&v633 + 1) = 0xE000000000000000;
              sub_1000B89BC(&__dst, &v634);
              sub_1000E9D64(60);
              v634 = v633;
              v681._object = 0x80000001000F9660;
              v681._countAndFlagsBits = 0x1000000000000023;
              sub_1000E99A4(v681);
              v682._countAndFlagsBits = sub_1000BB290(v328, v329, v330);
              sub_1000E99A4(v682);
              v88 = v615;

              v324._countAndFlagsBits = 0x1000000000000017;
              v325 = "lend lights for “";
LABEL_95:
              v324._object = (v325 | 0x8000000000000000);
              sub_1000E99A4(v324);
              v326 = v634;
              *(v323 + 56) = &type metadata for String;
              *(v323 + 32) = v326;
              sub_1000EA014();

              sub_1000C5E5C(&__dst);
              sub_1000C5E5C(&v646);
              sub_1000A1DF8(v328, v329, v330);
              v322 = v593;
              if (!v321)
              {
                continue;
              }

LABEL_96:
              if (!*(v88 + 16))
              {
                goto LABEL_176;
              }

              goto LABEL_97;
            }

            if (__dst.u8[12] != 2)
            {
              goto LABEL_94;
            }

            v357 = COERCE_UNSIGNED_INT(((__dst.f32[0] - v646.f32[0]) * *a4.i32) + v646.f32[0]) | (COERCE_UNSIGNED_INT(((__dst.f32[1] - v646.f32[1]) * *a4.i32) + v646.f32[1]) << 32);
            v356 = 0.0;
LABEL_106:
            if (v652[43] != v626[43])
            {
              sub_1000125FC(&qword_100132930);
              v323 = swift_allocObject();
              *(v323 + 16) = xmmword_1000EC870;
              *&v633 = 0;
              *(&v633 + 1) = 0xE000000000000000;
              sub_1000B89BC(&__dst, &v634);
              sub_1000E9D64(65);
              v634 = v633;
              v683._object = 0x80000001000F9660;
              v683._countAndFlagsBits = 0x1000000000000023;
              sub_1000E99A4(v683);
              v684._countAndFlagsBits = sub_1000BB290(v328, v329, v330);
              sub_1000E99A4(v684);
              v88 = v615;

              v324._countAndFlagsBits = 0x100000000000001CLL;
              v325 = "”, non-matching types";
              goto LABEL_95;
            }

            v534 = v357;
            v536 = v652[43];
            v358 = v648;
            v359 = v649;
            v493 = v647;
            v495 = v648;
            v360 = v647;
            v360.i32[3] = 0;
            v358.i32[3] = 0;
            v498 = v649;
            v359.i32[3] = 0;
            v566 = v358;
            v572 = v360;
            v658 = v360;
            v659 = v358;
            v513 = v359;
            v660 = v359;
            v361 = v622;
            v362 = v623;
            v527 = v650;
            v531 = v624;
            v503 = v621;
            v509 = v622;
            v363 = v621;
            v363.i32[3] = 0;
            v361.i32[3] = 0;
            v521 = v623;
            v362.i32[3] = 0;
            v653 = v363;
            v654 = v361;
            v655 = v362;
            if (sub_100012F7C(&v653, 0.00001))
            {
              sub_1000B89BC(&__dst, &v634);
              v365 = v561;
              v364 = v564;
              v367 = v554;
              v366 = v558;
              v369 = v549;
              v368 = v551;
              v371 = v542;
              v370 = v545;
              v372 = v539;
              v374 = v566;
              v373 = v572;
              v375 = v513;
            }

            else
            {
              sub_1000B89BC(&__dst, &v634);
              if (qword_10012F6F0 != -1)
              {
                swift_once();
              }

              v514 = xmmword_10013DCE0;
              v567 = *algn_10013DCF0;
              v573 = xmmword_10013DD00;
              v376 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_10013DCE0, v493.f32[0]), *algn_10013DCF0, *v493.f32, 1), xmmword_10013DD00, v493, 2);
              v377 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_10013DCE0, v495.f32[0]), *algn_10013DCF0, *v495.f32, 1), xmmword_10013DD00, v495, 2);
              v378 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_10013DCE0, v498.f32[0]), *algn_10013DCF0, *v498.f32, 1), xmmword_10013DD00, v498, 2);
              v376.i32[3] = v545.i32[3];
              v499 = v376;
              v377.i32[3] = v542.i32[3];
              v378.n128_u32[3] = v539.n128_u32[3];
              v543 = v378;
              v546 = v377;
              *v379.i64 = sub_1000C5E8C(v376, v377, v378);
              v496 = v379;
              v380 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v514, v503.f32[0]), v567, *v503.f32, 1), v573, v503, 2);
              v381 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v514, v509.f32[0]), v567, *v509.f32, 1), v573, v509, 2);
              v382 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v514, v521.f32[0]), v567, *v521.f32, 1), v573, v521, 2);
              v380.i32[3] = v554.i32[3];
              v540 = v380;
              v381.i32[3] = v551.i32[3];
              v382.n128_u32[3] = v549.n128_u32[3];
              v552 = v382;
              v555 = v381;
              *v383.i64 = sub_1000C5E8C(v380, v381, v382);
              sub_1000C604C(v496, v383, *a4.i32);
              sub_1000E9BC4();
              v373 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v514, v665.f32[0]), v567, *v665.f32, 1), v573, v665, 2);
              v374 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v514, v666.f32[0]), v567, *v666.f32, 1), v573, v666, 2);
              v373.i32[3] = v561.i32[3];
              v374.i32[3] = v558.i32[3];
              v375 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v514, v667.f32[0]), v567, *v667.f32, 1), v573, v667, 2);
              v365 = v373;
              v375.i32[3] = v564.i32[3];
              v366 = v374;
              v364 = v375;
              v367 = v540;
              v372 = v543;
              v369 = v552;
              v368 = v555;
              v370 = v499;
              v371 = v546;
            }

            v539 = v372;
            v542 = v371;
            v545 = v370;
            v549 = v369;
            v551 = v368;
            v554 = v367;
            v558 = v366;
            v561 = v365;
            v564 = v364;
            v680[0] = v373;
            v680[1] = v374;
            v680[2] = v375;
            v574 = v652[8];
            if (v652[8] <= 0xAu)
            {
              if (v652[8] == 9)
              {
                if (v626[8] != 9)
                {
                  goto LABEL_130;
                }
              }

              else
              {
                if (v652[8] != 10)
                {
                  goto LABEL_129;
                }

                if (v626[8] != 10)
                {
                  goto LABEL_130;
                }
              }
            }

            else
            {
              switch(v652[8])
              {
                case 0xB:
                  if (v626[8] != 11)
                  {
                    goto LABEL_130;
                  }

                  break;
                case 0xC:
                  if (v626[8] != 12)
                  {
                    goto LABEL_130;
                  }

                  break;
                case 0xD:
                  if (v626[8] == 13)
                  {
                    break;
                  }

LABEL_130:
                  v522 = v626[8];
                  sub_1000125FC(&qword_100132930);
                  v568 = swift_allocObject();
                  *(v568 + 16) = xmmword_1000EC870;
                  *&v634 = 0;
                  *(&v634 + 1) = 0xE000000000000000;
                  sub_1000E9D64(27);

                  *&v634 = 0xD000000000000012;
                  *(&v634 + 1) = 0x80000001000F96D0;
                  v685._countAndFlagsBits = sub_1000BB290(v328, v329, v330);
                  sub_1000E99A4(v685);

                  v686._countAndFlagsBits = 8225;
                  v686._object = 0xE200000000000000;
                  sub_1000E99A4(v686);
                  LOBYTE(v633) = v574;
                  sub_1000125FC(&qword_1001333A0);
                  v687._countAndFlagsBits = sub_1000E9944();
                  sub_1000E99A4(v687);

                  v688._countAndFlagsBits = 32;
                  v688._object = 0xE100000000000000;
                  sub_1000E99A4(v688);
                  LOBYTE(v633) = v522;
                  goto LABEL_131;
                default:
LABEL_129:
                  if (v626[8] - 9 < 5)
                  {
                    goto LABEL_130;
                  }

                  if (v652[8] == v626[8])
                  {
                    break;
                  }

                  sub_1000125FC(&qword_100132930);
                  v568 = swift_allocObject();
                  *(v568 + 16) = xmmword_1000EC870;
                  *&v634 = 0;
                  *(&v634 + 1) = 0xE000000000000000;
                  sub_1000E9D64(23);

                  *&v634 = 0xD000000000000012;
                  *(&v634 + 1) = 0x80000001000F96F0;
                  LOBYTE(v633) = v574;
                  v690._countAndFlagsBits = sub_1000E9944();
                  sub_1000E99A4(v690);

                  v691._countAndFlagsBits = 32;
                  v691._object = 0xE100000000000000;
                  sub_1000E99A4(v691);
                  LOBYTE(v633) = v574;
LABEL_131:
                  v689._countAndFlagsBits = sub_1000E9944();
                  sub_1000E99A4(v689);

                  v384 = v634;
                  *(v568 + 56) = &type metadata for String;
                  *(v568 + 32) = v384;
                  sub_1000EA014();

                  break;
              }
            }

            if (v626[40] == 1)
            {
              v569 = *&v652[24];
              if (v652[40])
              {
                v523 = 1;
                v515 = *&v652[16];
                v385 = *&v652[32];
                goto LABEL_140;
              }

              v510 = *&v652[32];
              v518 = *&v652[16];
              v505 = HIDWORD(*&v652[16]);
              v394 = *&v652[16];
              v395 = *&v652[24];
              v525 = HIDWORD(*&v652[24]);
              v396 = *&v652[32];
              v397 = HIDWORD(*&v652[32]);
              sub_1000125FC(&qword_1001333A8);
              v398 = swift_allocObject();
              *&v399 = ((1.0 - v394) * *a4.i32) + v394;
              *(v398 + 32) = *&v399;
              *(v398 + 36) = v505;
              v391 = ((1.0 - v395) * *a4.i32) + v395;
              *(v398 + 40) = v391;
              *(v398 + 44) = v525;
              v392 = ((1.0 - v396) * *a4.i32) + v396;
              *(v398 + 48) = v392;
              *(v398 + 52) = v397;
              v400 = v399;
              swift_setDeallocating();
              swift_deallocClassInstance();
              v523 = 0;
              v393 = v518 & 0xFFFFFFFF00000000 | v400;
LABEL_138:
              v515 = v393;
              v569 = v569 & 0xFFFFFFFF00000000 | LODWORD(v391);
              v385 = v510 & 0xFFFFFFFF00000000 | LODWORD(v392);
            }

            else
            {
              v386 = *&v626[16];
              if (v652[40])
              {
                v387 = *&v626[24];
                v388 = *&v626[32];
                v510 = *&v626[32];
                v569 = *&v626[24];
                v524 = HIDWORD(*&v626[32]);
                v516 = HIDWORD(*&v626[24]);
                v504 = HIDWORD(*&v626[16]);
                sub_1000125FC(&qword_1001333A8);
                v389 = swift_allocObject();
                *&v390 = (v172 * (1.0 - *&v386)) + *&v386;
                *(v389 + 32) = *&v390;
                *(v389 + 36) = v504;
                v391 = (v172 * (1.0 - v387)) + v387;
                *(v389 + 40) = v391;
                *(v389 + 44) = v516;
                v392 = (v172 * (1.0 - v388)) + v388;
                *(v389 + 48) = v392;
                *(v389 + 52) = v524;
                v517 = v390;
                swift_setDeallocating();
                swift_deallocClassInstance();
                v523 = 0;
                v393 = v386 & 0xFFFFFFFF00000000 | v517;
                goto LABEL_138;
              }

              v523 = 0;
              v515 = COERCE_UNSIGNED_INT(((*&v626[16] - *&v652[16]) * *a4.i32) + *&v652[16]) | (COERCE_UNSIGNED_INT(((*&v626[20] - *&v652[20]) * *a4.i32) + *&v652[20]) << 32);
              v569 = COERCE_UNSIGNED_INT(((*&v626[24] - *&v652[24]) * *a4.i32) + *&v652[24]) | (COERCE_UNSIGNED_INT(((*&v626[28] - *&v652[28]) * *a4.i32) + *&v652[28]) << 32);
              v385 = COERCE_UNSIGNED_INT(((*&v626[32] - *&v652[32]) * *a4.i32) + *&v652[32]) | (COERCE_UNSIGNED_INT(((*&v626[36] - *&v652[36]) * *a4.i32) + *&v652[36]) << 32);
            }

LABEL_140:
            v511 = v385;
            sub_1000125FC(&qword_100132540);
            v401 = swift_allocObject();
            *(v401 + 16) = xmmword_1000ED250;
            *(v401 + 32) = v527;
            *(v401 + 40) = DWORD2(v527);
            sub_1000AB384(v401);
            swift_setDeallocating();
            swift_deallocClassInstance();
            v402 = swift_allocObject();
            *(v402 + 16) = xmmword_1000ED250;
            *(v402 + 32) = v531.i64[0];
            *(v402 + 40) = v531.i32[2];
            sub_1000AB384(v402);
            swift_setDeallocating();
            swift_deallocClassInstance();
            v403 = sub_100013568(v680);
            v528 = v404;
            v532 = v403;
            v500 = v406;
            v506 = v405;
            sub_1000BA464(v625, *(&v625 + 1), v626[0], v651, *(&v651 + 1), v652[0], *a4.i32);
            LOBYTE(v633) = v523;
            *&v668 = v534;
            *(&v668 + 2) = v356;
            BYTE12(v668) = v355;
            v669 = v532;
            v670 = v528;
            v671 = v506;
            v672 = v500;
            *&v673 = v407;
            *(&v673 + 1) = v408;
            LOBYTE(v674) = v409;
            *(&v674 + 1) = *&v652[4] + ((*&v626[4] - *&v652[4]) * *a4.i32);
            BYTE8(v674) = v574;
            *(&v674 + 3) = *&v652[12] + ((*&v626[12] - *&v652[12]) * *a4.i32);
            *&v675 = v515;
            *(&v675 + 1) = v569;
            *&v676 = v511;
            BYTE8(v676) = v523;
            *(&v676 + 9) = *&v652[41];
            BYTE11(v676) = v536;
            v677 = *&v652[48];
            v678 = 0uLL;
            v679 = vadd_f32(*&v652[80], vmul_f32(vsub_f32(*&v626[80], *&v652[80]), v580));
            sub_10000D58C(*&v652[48]);
            v410 = swift_isUniquelyReferenced_nonNull_native();
            *&v634 = v589;
            sub_1000B4A40(&v668, v328, v329, v330, v410);
            sub_1000C5E5C(&__dst);
            sub_1000C5E5C(&v646);
            sub_1000A1DF8(v328, v329, v330);
            v589 = v634;
            v88 = v615;
            v322 = v593;
            if (!v321)
            {
              continue;
            }

            goto LABEL_96;
          }
        }

LABEL_149:
        v577 = *(v600 + 40);
        v544 = *v609;
        v547 = *v600;
        v553 = *(v609 + 16);
        v556 = *(v600 + 16);
        v592 = *(v600 + 32);
        v565 = *(v609 + 32);
        v562 = *(v609 + 40);
        v537 = *(v600 + 48);
        v570 = *(v600 + 64);
        v579 = *(v600 + 88);
        v559 = *(v609 + 64);
        v412 = *(v600 + 80);
        v413 = *(v609 + 80);
        v575 = *(v609 + 88);
        v529 = *(v600 + 96);
        v533 = *(v609 + 48);
        v414 = *(v600 + 112);
        v415 = *(v609 + 112);
        v519 = *(v600 + 128);
        v526 = *(v609 + 96);
        v512 = *(v609 + 128);
        v417 = *(v600 + 144);
        v416 = *(v600 + 152);
        v582 = *(v609 + 144);
        v581 = *(v609 + 152);
        v418 = *(v600 + 160);
        v550 = *(v609 + 160);
        v419 = swift_allocObject();
        memcpy(v419 + 4, v600, 0x208uLL);
        memcpy(v419 + 136, v609, 0x208uLL);
        v594 = v419;
        v419[266] = a4.i32[0];
        v598 = *(v600 + 288);
        v501 = *(v609 + 288);
        v507 = *(v600 + 304);
        v497 = *(v609 + 304);
        *&v634 = *(v600 + 320);
        *(&v634 + 6) = *(v600 + 326);
        *&v633 = *(v609 + 320);
        *(&v633 + 6) = *(v609 + 326);
        v420 = swift_allocObject();
        *(v420 + 16) = *(v600 + 320);
        *(v420 + 22) = *(v600 + 326);
        *(v420 + 32) = *(v609 + 320);
        *(v420 + 38) = *(v609 + 326);
        v587 = v420;
        *(v420 + 48) = a4.i32[0];
        v422 = *(v600 + 352);
        v421 = *(v600 + 360);
        v424 = *(v600 + 368);
        v423 = *(v600 + 376);
        v426 = *(v600 + 384);
        v425 = *(v600 + 392);
        v427 = *(v609 + 360);
        v428 = *(v609 + 376);
        v429 = *(v609 + 384);
        v541 = *(v600 + 336);
        v535 = *(v609 + 336);
        if (v423 < 0 || v428 < 0)
        {
          if (*a4.i32 <= 0.5)
          {
            sub_1000C5380(v422, v421, v424, v423);
            v591 = v421;
            v614 = v424;
            v608 = v426;
            v437 = v425;
          }

          else
          {
            v422 = *(v609 + 352);
            v591 = *(v609 + 360);
            v614 = *(v609 + 368);
            v438 = *(v609 + 376);
            v608 = *(v609 + 384);
            v439 = *(v609 + 392);
            sub_1000C5380(v422, v427, v614, v428);
            v423 = v438;
            v437 = v439;
          }
        }

        else
        {
          v617 = *(v600 + 368);
          v430 = *(v609 + 352);
          v613 = *(v609 + 368);
          v590 = *(v600 + 392);
          v431 = *(v609 + 392);
          v432 = *(v600 + 352);
          v433 = *(v609 + 376);
          v434 = swift_allocObject();
          v435 = v429;
          v436 = v434;
          *(v434 + 16) = v432;
          *(v434 + 24) = v421;
          *(v434 + 32) = v617;
          *(v434 + 40) = v423;
          *(v434 + 48) = v426;
          *(v434 + 56) = v590;
          *(v434 + 64) = v430;
          *(v434 + 72) = v427;
          *(v434 + 80) = v613;
          *(v434 + 88) = v433;
          *(v434 + 96) = v435;
          *(v434 + 104) = v431;
          *(v434 + 112) = a4.i32[0];
          sub_1000C5380(v432, v421, v617, v423);
          sub_1000C5380(v430, v427, v613, v433);
          v591 = 0;
          v614 = 0;
          v608 = 0;
          v437 = 0;
          v423 = 0x8000000000000000;
          v422 = v436;
        }

        v441 = *(v600 + 400);
        v440 = *(v600 + 408);
        v442 = *(v600 + 416);
        v443 = *(v600 + 424);
        v444 = *(v600 + 440);
        v446 = *(v609 + 400);
        v445 = *(v609 + 408);
        v447 = *(v609 + 424);
        v618 = *(v609 + 416);
        v492 = *(v609 + 432);
        v494 = *(v609 + 440);
        v585 = v423;
        v586 = v437;
        v604 = v422;
        if (v443 < 0 || v447 < 0)
        {
          v448 = v414;
          v449 = v412;
          v450 = v416;
          if (*a4.i32 <= 0.5)
          {
            v459 = *(v600 + 432);
            sub_1000C5380(v441, v440, v442, v443);
            v461 = v441;
            v618 = v442;
            v458 = v440;
            v460 = v444;
          }

          else
          {
            v458 = *(v609 + 408);
            v443 = *(v609 + 424);
            v459 = *(v609 + 432);
            v460 = *(v609 + 440);
            v461 = *(v609 + 400);
            sub_1000C5380(v461, v458, v618, v447);
          }

          v457 = a4;
        }

        else
        {
          v448 = v414;
          v449 = v412;
          v450 = v416;
          v451 = *(v600 + 416);
          v452 = *(v609 + 424);
          v453 = *(v600 + 432);
          v454 = swift_allocObject();
          v455 = v444;
          v456 = v454;
          *(v454 + 16) = v441;
          *(v454 + 24) = v440;
          *(v454 + 32) = v451;
          *(v454 + 40) = v443;
          *(v454 + 48) = v453;
          *(v454 + 56) = v455;
          *(v454 + 64) = v446;
          *(v454 + 72) = v445;
          *(v454 + 80) = v618;
          *(v454 + 88) = v452;
          *(v454 + 96) = v492;
          *(v454 + 104) = v494;
          *(v454 + 112) = a4.i32[0];
          sub_1000C5380(v441, v440, v451, v443);
          sub_1000C5380(v446, v445, v618, v452);
          v457 = a4;
          v458 = 0;
          v618 = 0;
          v459 = 0;
          v460 = 0;
          v443 = 0x8000000000000000;
          v461 = v456;
        }

        v502 = vaddq_f32(v598, vmulq_n_f32(vsubq_f32(v501, v598), *v457.i32));
        v508 = vaddq_f32(v507, vmulq_n_f32(vsubq_f32(v497, v507), *v457.i32));
        v599 = vdupq_lane_s32(v457, 0).u64[0];
        v462 = vsubq_f32(v512, v519);
        *&v463 = vaddq_f32(v519, vmulq_n_f32(v462, *v457.i32)).u64[0];
        *(&v463 + 2) = v519.f32[2] + vmuls_lane_f32(*v457.i32, v462, 2);
        HIDWORD(v463) = 0;
        v520 = v463;
        v464 = vsubq_f32(v526, v529);
        *&v463 = vaddq_f32(v529, vmulq_n_f32(v464, *v457.i32)).u64[0];
        *(&v463 + 2) = v529.f32[2] + vmuls_lane_f32(*v457.i32, v464, 2);
        HIDWORD(v463) = 0;
        v530 = v463;
        v465 = vsubq_f32(v533, v537);
        *&v463 = vaddq_f32(v537, vmulq_n_f32(v465, *v457.i32)).u64[0];
        *(&v463 + 2) = v537.f32[2] + vmuls_lane_f32(*v457.i32, v465, 2);
        HIDWORD(v463) = 0;
        v538 = v463;
        v466 = vsubq_f32(v544, v547);
        *&v463 = vaddq_f32(v547, vmulq_n_f32(v466, *v457.i32)).u64[0];
        *(&v463 + 2) = v547.f32[2] + vmuls_lane_f32(*v457.i32, v466, 2);
        HIDWORD(v463) = 0;
        v548 = v463;
        sub_1000C604C(v556, v553, *v457.i32);
        v557 = v467;
        v578 = v577 + ((v562 - v577) * *a4.i32);
        sub_1000C604C(v570, v559, *a4.i32);
        v571 = v468;
        v563 = v579 + ((v575 - v579) * *a4.i32);
        v576 = vadd_f32(*(v600 + 168), vmul_f32(vsub_f32(*(v609 + 168), *(v600 + 168)), v599));
        v469 = *(v600 + 448);
        v470 = vsubq_f32(*(v609 + 448), v469);
        *&v471 = vaddq_f32(v469, vmulq_n_f32(v470, *a4.i32)).u64[0];
        v472 = vsub_f32(v413, v449);
        v473 = v448;
        v474 = vsub_f32(v415, v448);
        v560 = vsub_f32(v582, v417);
        *(&v471 + 1) = COERCE_UNSIGNED_INT(COERCE_FLOAT(*(v600 + 456)) + vmuls_lane_f32(*a4.i32, v470, 2));
        v583 = v471;
        v475 = *(v600 + 480);
        v476 = *(v600 + 496);
        v646 = *(v600 + 464);
        v647 = v475;
        v648 = v476;
        v649.i64[0] = *(v600 + 512);
        v630 = v649.i64[0];
        v477 = v541 + ((v535 - v541) * *a4.i32);
        v628 = v475;
        v629 = v476;
        v627 = v646;
        sub_1000C6110(v600, &__dst);
        sub_1000C6110(v609, &__dst);
        sub_1000C6148(&v634, &__dst);
        sub_1000C6148(&v633, &__dst);
        sub_1000C6180(&v646, &__dst);

        v479 = sub_1000C1A10(v478, sub_1000C1C70, sub_1000C1C70);
        sub_1000C53DC(v479, v631);
        v480 = sub_1000C1A10(v589, sub_1000C1B80, sub_1000C1B80);

        result = sub_1000C53DC(v480, &__dst);
        *a3 = v548;
        *(a3 + 16) = v557;
        *(a3 + 32) = vadd_f32(v592, vmul_f32(vsub_f32(v565, v592), v599));
        *(a3 + 40) = v578;
        *(a3 + 48) = v538;
        *(a3 + 64) = v571;
        *(a3 + 80) = vadd_f32(v449, vmul_f32(v472, v599));
        *(a3 + 88) = v563;
        *(a3 + 96) = v530;
        *(a3 + 112) = vadd_f32(v473, vmul_f32(v474, v599));
        *(a3 + 128) = v520;
        *(a3 + 144) = vadd_f32(v417, vmul_f32(v560, v599));
        *(a3 + 152) = vadd_f32(v450, vmul_f32(vsub_f32(v581, v450), v599));
        *(a3 + 160) = v418 + ((v550 - v418) * *a4.i32);
        *(a3 + 168) = v576;
        *(a3 + 176) = v589;
        v482 = v631[0];
        v483 = v631[1];
        *(a3 + 216) = v632;
        *(a3 + 200) = v483;
        *(a3 + 184) = v482;
        v484 = v622.i64[0];
        _Q0 = v621;
        *(a3 + 224) = __dst;
        *(a3 + 240) = _Q0;
        *(a3 + 256) = v484;
        *(a3 + 264) = sub_1000C6084;
        *(a3 + 272) = v594;
        *(a3 + 288) = v502;
        *(a3 + 304) = v508;
        *(a3 + 320) = v587;
        *(a3 + 332) = 0x8000;
        *(a3 + 328) = 0;
        *(a3 + 336) = v477;
        *(a3 + 340) = v477;
        __asm { FMOV            V0.2S, #1.0 }

        *(a3 + 344) = _Q0.i64[0];
        *(a3 + 352) = v604;
        *(a3 + 360) = v591;
        *(a3 + 368) = v614;
        *(a3 + 376) = v585;
        *(a3 + 384) = v608;
        *(a3 + 392) = v586;
        *(a3 + 400) = v461;
        *(a3 + 408) = v458;
        *(a3 + 416) = v618;
        *(a3 + 424) = v443;
        *(a3 + 432) = v459;
        *(a3 + 440) = v460;
        v489 = v627;
        v490 = v628;
        *(a3 + 448) = v583;
        *(a3 + 464) = v489;
        v491 = v629;
        *(a3 + 480) = v490;
        *(a3 + 496) = v491;
        *(a3 + 512) = v630;
        return result;
      }

      v244 = *&v603[8 * v266 + 56];
      ++v246;
      if (v244)
      {
        goto LABEL_78;
      }
    }
  }

  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  __break(1u);
LABEL_172:
  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  result = sub_1000E9FA4();
  __break(1u);
  return result;
}