uint64_t sub_1007993E0(uint64_t a1)
{
  v6 = v1;
  v7 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v9 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFADD__(v9, v8);
    result = v9 + v8;
    if (!v10)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v16 = _CocoaArrayWrapper.endIndex.getter();
  v10 = __OFADD__(v16, v8);
  result = v16 + v8;
  if (v10)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1007A754C(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v12 = *(v3 + 0x10);
  v13 = ((*(v3 + 0x18) >> 1) - v12);
  result = sub_100B3A568(&v33, (v3 + 8 * v12 + 32), v13, v7);
  if (result < v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v14 = *(v3 + 16);
    v10 = __OFADD__(v14, result);
    v15 = v14 + result;
    if (v10)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v15;
  }

  if (result != v13)
  {
LABEL_11:
    result = sub_100035F90();
    *v6 = v2;
    return result;
  }

LABEL_16:
  v8 = *(v3 + 16);
  v7 = v33;
  v3 = v34;
  v5 = v36;
  v30 = v35;
  v4 = v37;
  if (v33 < 0)
  {
LABEL_20:
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_11;
    }

    type metadata accessor for CRLBoardItem(0);
    result = swift_dynamicCast();
    v18 = v32;
    goto LABEL_31;
  }

  if (!v37)
  {
    v19 = (v35 + 64) >> 6;
    if (v19 <= (v36 + 1))
    {
      v20 = v36 + 1;
    }

    else
    {
      v20 = (v35 + 64) >> 6;
    }

    v21 = v20 - 1;
    while (1)
    {
      v17 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_59;
      }

      if (v17 >= v19)
      {
        v18 = 0;
        v4 = 0;
        goto LABEL_30;
      }

      v4 = *(v34 + 8 * v17);
      ++v5;
      if (v4)
      {
        goto LABEL_29;
      }
    }
  }

  v17 = v36;
LABEL_29:
  v22 = __clz(__rbit64(v4));
  v4 &= v4 - 1;
  v18 = *(*(v33 + 48) + ((v17 << 9) | (8 * v22)));
  result = v18;
  v21 = v17;
LABEL_30:
  v36 = v21;
  v37 = v4;
  v5 = v21;
LABEL_31:
  if (!v18)
  {
    goto LABEL_11;
  }

  v23 = (v30 + 64) >> 6;
LABEL_33:
  if (v8 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *v6;
  v24 = *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v29 = *v6 & 0xFFFFFFFFFFFFFF8;
  if (v8 > v24)
  {
    v24 = v8;
  }

  v31 = v24;
  while (1)
  {
    while (1)
    {
      if (v8 == v31)
      {
        v8 = v31;
        *(v29 + 16) = v31;
        goto LABEL_33;
      }

      *(v29 + 32 + 8 * v8++) = v18;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (__CocoaSet.Iterator.next()())
      {
        type metadata accessor for CRLBoardItem(0);
        result = swift_dynamicCast();
        v18 = v32;
        if (v32)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v4)
    {
      break;
    }

    v25 = v5;
LABEL_54:
    v28 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v18 = *(*(v7 + 48) + ((v25 << 9) | (8 * v28)));
    result = v18;
    v27 = v25;
LABEL_39:
    v33 = v7;
    v34 = v3;
    v35 = v30;
    v36 = v27;
    v5 = v27;
    v37 = v4;
    if (!v18)
    {
LABEL_56:
      *(v29 + 16) = v8;
      goto LABEL_11;
    }
  }

  if (v23 <= (v5 + 1))
  {
    v26 = v5 + 1;
  }

  else
  {
    v26 = (v30 + 64) >> 6;
  }

  v27 = v26 - 1;
  while (1)
  {
    v25 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v25 >= v23)
    {
      v18 = 0;
      v4 = 0;
      goto LABEL_39;
    }

    v4 = *(v3 + 8 * v25);
    ++v5;
    if (v4)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_100799748(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = __CocoaSet.count.getter();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = _CocoaArrayWrapper.endIndex.getter();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1007A754C(result);
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = (*(v3 + 0x18) >> 1) - v13;
  result = sub_100B3A704(&v34, (v3 + 8 * v13 + 32), v14, v8);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_100035F90();
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_11;
    }

    sub_100006370(0, &qword_1019FB7A0);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= v37 + 1)
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (__CocoaSet.Iterator.next()())
      {
        sub_100006370(0, &qword_1019FB7A0);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 48) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_100799B44(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100B355CC(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

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

uint64_t sub_100799C30(uint64_t result)
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

  result = sub_100B36524(result, v10, 1, v3);
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

uint64_t sub_100799D98(uint64_t result, uint64_t (*a2)(void), uint64_t *a3)
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
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = sub_1005B981C(a3);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_100799F40(uint64_t a1)
{
  v77 = type metadata accessor for UUID();
  v4 = *(v77 - 8);
  __chkstk_darwin(v77);
  v78 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_1019F6990);
  v7 = __chkstk_darwin(v6 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v59 - v9;
  result = __chkstk_darwin(v8);
  v14 = &v59 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v76 = v12;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v10;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_100B356D0(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_100B3AA50(&v79, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v26 = *(v16 + 2);
    v27 = __OFADD__(v26, result);
    v28 = v26 + result;
    if (v27)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v28;
  }

  if (result != v23)
  {
    result = sub_100035F90();
LABEL_14:
    *v1 = v16;
    return result;
  }

LABEL_17:
  v74 = *(v16 + 2);
  v25 = v80;
  v65 = v79;
  v28 = v82;
  v24 = &v84;
  v60 = v81;
  v29 = v83;
  v63 = v80;
  if (v83)
  {
    v30 = v82;
LABEL_27:
    v72 = (v29 - 1) & v29;
    v34 = v77;
    (*(v2 + 16))(v14, *(v65 + 48) + (__clz(__rbit64(v29)) | (v30 << 6)) * v17, v77);
    v67 = *(v2 + 56);
    v67(v14, 0, 1, v34);
    v33 = v30;
    while (1)
    {
      v35 = v75;
      sub_10000BE14(v14, v75, &qword_1019F6990);
      v36 = *(v2 + 48);
      v2 += 48;
      v71 = v36;
      if (v36(v35, 1, v34) == 1)
      {
        break;
      }

      v38 = (v4 + 32);
      v62 = (v60 + 64) >> 6;
      v66 = v4 + 56;
      v64 = (v4 + 16);
      v61 = (v4 + 8);
      v37 = v75;
      v73 = v38;
      while (1)
      {
        sub_10000CAAC(v37, &qword_1019F6990);
        v39 = *(v16 + 3);
        v40 = v39 >> 1;
        if ((v39 >> 1) < v74 + 1)
        {
          v16 = sub_100B356D0(v39 > 1, v74 + 1, 1, v16);
          v40 = *(v16 + 3) >> 1;
        }

        v41 = v76;
        sub_10000BE14(v14, v76, &qword_1019F6990);
        if (v71(v41, 1, v77) != 1)
        {
          break;
        }

        v42 = v33;
        v43 = v76;
        v4 = v74;
LABEL_38:
        v33 = v42;
        sub_10000CAAC(v43, &qword_1019F6990);
        v74 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v37 = v75;
        sub_10000BE14(v14, v75, &qword_1019F6990);
        if (v71(v37, 1, v77) == 1)
        {
          goto LABEL_30;
        }
      }

      v69 = &v16[v18];
      v4 = v74;
      v44 = *v73;
      if (v74 <= v40)
      {
        v45 = v40;
      }

      else
      {
        v45 = v74;
      }

      v70 = v45;
      v43 = v76;
      v46 = v77;
      v47 = v78;
      v68 = v44;
      while (1)
      {
        v51 = v47;
        v52 = v43;
        v53 = v46;
        v54 = v44;
        v44(v51, v52, v46);
        if (v4 == v70)
        {
          (*v61)(v78, v53);
          v4 = v70;
          v74 = v70;
          goto LABEL_33;
        }

        sub_10000CAAC(v14, &qword_1019F6990);
        v74 = v4;
        v54(&v69[v4 * v17], v78, v53);
        v55 = v72;
        if (!v72)
        {
          break;
        }

        v56 = v33;
LABEL_55:
        v72 = (v55 - 1) & v55;
        v49 = v77;
        (*v64)(v14, *(v65 + 48) + (__clz(__rbit64(v55)) | (v56 << 6)) * v17, v77);
        v48 = 0;
        v58 = v56;
LABEL_44:
        v4 = v74 + 1;
        v67(v14, v48, 1, v49);
        v43 = v76;
        sub_10000BE14(v14, v76, &qword_1019F6990);
        v50 = v71(v43, 1, v49);
        v46 = v49;
        v33 = v58;
        v42 = v58;
        v47 = v78;
        v44 = v68;
        if (v50 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v62 <= v33 + 1)
      {
        v57 = v33 + 1;
      }

      else
      {
        v57 = v62;
      }

      v58 = v57 - 1;
      while (1)
      {
        v56 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v56 >= v62)
        {
          v72 = 0;
          v48 = 1;
          v49 = v77;
          goto LABEL_44;
        }

        v55 = *(v63 + 8 * v56);
        ++v33;
        if (v55)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v34 = v77;
      v67 = *(v2 + 56);
      v67(v14, 1, 1, v77);
      v72 = 0;
    }

    v37 = v75;
LABEL_30:
    sub_10000CAAC(v14, &qword_1019F6990);
    sub_100035F90();
    result = sub_10000CAAC(v37, &qword_1019F6990);
    goto LABEL_14;
  }

LABEL_20:
  v31 = (*(v24 - 32) + 64) >> 6;
  if (v31 <= v28 + 1)
  {
    v32 = v28 + 1;
  }

  else
  {
    v32 = v31;
  }

  v33 = v32 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v31)
    {
      goto LABEL_57;
    }

    v29 = *(v25 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10079A6A4(uint64_t a1, uint64_t a2, void *a3, unint64_t a4)
{
  v52 = a2;
  v9 = type metadata accessor for CRLDisjointPosition.Element();
  v53 = *(v9 - 8);
  __chkstk_darwin(v9);
  v50 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&unk_101A00170);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v51 = v44 - v16;
  __chkstk_darwin(v15);
  v17 = v44;
  v19 = v44 - v18;
  v20 = (a4 >> 1);
  v21 = __OFSUB__(a4 >> 1, a3);
  v22 = (a4 >> 1) - a3;
  if (v21)
  {
    __break(1u);
    goto LABEL_21;
  }

  v54 = a1;
  v5 = *v4;
  v23 = *(*v4 + 16);
  v24 = v23 + v22;
  if (__OFADD__(v23, v22))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v17 = (v5[3] >> 1), v17 < v24))
  {
    if (v23 <= v24)
    {
      v26 = v23 + v22;
    }

    else
    {
      v26 = v23;
    }

    v5 = sub_100B36CFC(isUniquelyReferenced_nonNull_native, v26, 1, v5);
    v17 = (v5[3] >> 1);
  }

  v27 = v17 - v5[2];
  if (v20 == a3)
  {
    if (v22 <= 0)
    {
      v22 = 0;
      v17 = a3;
      goto LABEL_17;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v27 < v22)
  {
    __break(1u);
    goto LABEL_29;
  }

  result = swift_arrayInitWithCopy();
  if (v22 <= 0)
  {
LABEL_16:
    v17 = v20;
LABEL_17:
    if (v22 != v27)
    {
      result = swift_unknownObjectRelease();
LABEL_19:
      *v4 = v5;
      return result;
    }

LABEL_23:
    v49 = v17;
    v22 = v5[2];
    v31 = v53;
    v44[0] = *(v53 + 56);
    v44[1] = v53 + 56;
    (v44[0])(v19, 1, 1, v9);
    v32 = v51;
    sub_10000BE14(v19, v51, &unk_101A00170);
    v33 = v31;
    v24 = v32;
    v47 = *(v33 + 48);
    v48 = v33 + 48;
    if (v47(v32, 1, v9) == 1)
    {
LABEL_24:
      sub_10000CAAC(v19, &unk_101A00170);
      swift_unknownObjectRelease();
      result = sub_10000CAAC(v24, &unk_101A00170);
      goto LABEL_19;
    }

    do
    {
LABEL_29:
      sub_10000CAAC(v24, &unk_101A00170);
      v35 = v5[3];
      v36 = v35 >> 1;
      if ((v35 >> 1) < v22 + 1)
      {
        v5 = sub_100B36CFC(v35 > 1, v22 + 1, 1, v5);
        v36 = v5[3] >> 1;
      }

      v37 = *(v53 + 80);
      sub_10000BE14(v19, v14, &unk_101A00170);
      if (v47(v14, 1, v9) == 1)
      {
LABEL_32:
        sub_10000CAAC(v14, &unk_101A00170);
        v34 = v22;
      }

      else
      {
        v45 = v5 + ((v37 + 32) & ~v37);
        if (v22 <= v36)
        {
          v38 = v36;
        }

        else
        {
          v38 = v22;
        }

        v46 = v38;
        v39 = v50;
        while (1)
        {
          sub_1007AB228(v14, v39, type metadata accessor for CRLDisjointPosition.Element);
          if (v46 == v22)
          {
            break;
          }

          sub_10000CAAC(v19, &unk_101A00170);
          v41 = *(v53 + 72);
          result = sub_1007AB228(v39, &v45[v41 * v22], type metadata accessor for CRLDisjointPosition.Element);
          if (v49 == v20)
          {
            v40 = 1;
            v49 = v20;
          }

          else
          {
            if (v49 < a3 || v49 >= v20)
            {
              goto LABEL_45;
            }

            v42 = v52 + v41 * v49;
            v43 = v49;
            sub_1007AB160(v42, v19, type metadata accessor for CRLDisjointPosition.Element);
            v40 = 0;
            v49 = v43 + 1;
          }

          (v44[0])(v19, v40, 1, v9);
          sub_10000BE14(v19, v14, &unk_101A00170);
          ++v22;
          if (v47(v14, 1, v9) == 1)
          {
            goto LABEL_32;
          }
        }

        sub_1007AB1C8(v39, type metadata accessor for CRLDisjointPosition.Element);
        v34 = v46;
        v22 = v46;
      }

      v5[2] = v34;
      v24 = v51;
      sub_10000BE14(v19, v51, &unk_101A00170);
    }

    while (v47(v24, 1, v9) != 1);
    goto LABEL_24;
  }

  v29 = v5[2];
  v21 = __OFADD__(v29, v22);
  v30 = v29 + v22;
  if (!v21)
  {
    v5[2] = v30;
    goto LABEL_16;
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

void *sub_10079AC54(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_100B36D4C(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  type metadata accessor for ActivityType(0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10079AE00(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1007A754C(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10079AEF8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100B374A0(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 16 * v7 + 32), (v6 + 32), 16 * v2);

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

uint64_t sub_10079B048(uint64_t result, uint64_t (*a2)(void), uint64_t *a3)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v5 = result;
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
  if ((*(v5 + 24) >> 1) - *(v5 + 16) < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  sub_1005B981C(a3);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v10 = *(v5 + 16);
  v11 = __OFADD__(v10, v4);
  v12 = v10 + v4;
  if (!v11)
  {
    *(v5 + 16) = v12;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10079B168(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = v4[3] >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100B37740(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = v4[3] >> 1;
  }

  v11 = v4[2];
  v12 = v9 - v11;
  result = sub_100B3B024(&v41, &v4[5 * v11 + 4], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v14 = v4[2];
    v15 = __OFADD__(v14, result);
    v16 = v14 + result;
    if (v15)
    {
      __break(1u);
      goto LABEL_20;
    }

    v4[2] = v16;
  }

  if (result != v12)
  {
    result = sub_100035F90();
LABEL_14:
    *v1 = v4;
    return result;
  }

LABEL_17:
  v2 = v4[2];
  v13 = v42;
  v32 = v42;
  v33 = v41;
  v3 = v43;
  v16 = v44;
  v17 = v45;
  if (v45)
  {
    v18 = v44;
LABEL_27:
    v22 = (v17 - 1) & v17;
    sub_10000630C(*(v33 + 56) + 40 * (__clz(__rbit64(v17)) | (v18 << 6)), &v38);
    v21 = v18;
    while (1)
    {
      sub_10000BE14(&v38, &v36, &unk_101A000B0);
      if (!v37)
      {
        break;
      }

      v3 = (v3 + 64) >> 6;
      v23 = &unk_101A000B0;
      while (1)
      {
        sub_10000CAAC(&v36, v23);
        v24 = v4[3];
        v25 = v24 >> 1;
        if ((v24 >> 1) < v2 + 1)
        {
          v4 = sub_100B37740((v24 > 1), v2 + 1, 1, v4);
          v25 = v4[3] >> 1;
        }

        sub_10000BE14(&v38, &v34, v23);
        if (v35)
        {
          break;
        }

        v30 = v21;
LABEL_52:
        sub_10000CAAC(&v34, v23);
        v26 = v2;
        v21 = v30;
LABEL_31:
        v4[2] = v26;
        sub_10000BE14(&v38, &v36, v23);
        if (!v37)
        {
          goto LABEL_53;
        }
      }

      if (v2 <= v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = v2;
      }

      while (1)
      {
        sub_100050F74(&v34, &v36);
        if (v2 == v26)
        {
          sub_100005070(&v36);
          v2 = v26;
          goto LABEL_31;
        }

        v27 = v23;
        sub_10000CAAC(&v38, v23);
        sub_100050F74(&v36, &v4[5 * v2 + 4]);
        if (!v22)
        {
          break;
        }

        v28 = v21;
LABEL_50:
        v31 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        sub_10000630C(*(v33 + 56) + 40 * (v31 | (v28 << 6)), &v38);
        v30 = v28;
LABEL_39:
        ++v2;
        v23 = v27;
        sub_10000BE14(&v38, &v34, v27);
        v21 = v30;
        if (!v35)
        {
          goto LABEL_52;
        }
      }

      if (v3 <= (v21 + 1))
      {
        v29 = v21 + 1;
      }

      else
      {
        v29 = v3;
      }

      v30 = v29 - 1;
      while (1)
      {
        v28 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v28 >= v3)
        {
          v22 = 0;
          v40 = 0;
          v38 = 0u;
          v39 = 0u;
          goto LABEL_39;
        }

        v22 = *(v32 + 8 * v28);
        ++v21;
        if (v22)
        {
          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_55:
      v22 = 0;
      v40 = 0;
      v38 = 0u;
      v39 = 0u;
    }

LABEL_53:
    sub_10000CAAC(&v38, &unk_101A000B0);
    sub_100035F90();
    result = sub_10000CAAC(&v36, &unk_101A000B0);
    goto LABEL_14;
  }

LABEL_20:
  v19 = (v3 + 64) >> 6;
  if (v19 <= v16 + 1)
  {
    v20 = v16 + 1;
  }

  else
  {
    v20 = (v3 + 64) >> 6;
  }

  v21 = v20 - 1;
  while (1)
  {
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v18 >= v19)
    {
      goto LABEL_55;
    }

    v17 = *(v13 + 8 * v18);
    ++v16;
    if (v17)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

void *sub_10079B558(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_100B37764(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1005B981C(&qword_101A00238);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10079B68C(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100B381A8(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

uint64_t sub_10079B778(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100B382AC(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 24 * v7 + 32), (v6 + 32), 24 * v2);

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

uint64_t sub_10079B8D0(uint64_t result, uint64_t (*a2)(void))
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

  v8 = *(v4 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v4 + 16) = v10;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10079B9D8(uint64_t result)
{
  v3 = *(result + 16);
  v4 = *v1;
  v5 = *(*v1 + 2);
  v6 = v5 + v3;
  if (__OFADD__(v5, v3))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v9 = *(v4 + 3) >> 1, v9 < v6))
  {
    if (v5 <= v6)
    {
      v10 = v5 + v3;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_100B388D0(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    v9 = *(v4 + 3) >> 1;
  }

  v11 = *(v4 + 2);
  v12 = v9 - v11;
  result = sub_100B3C088(&v53, &v4[40 * v11 + 32], v9 - v11, v7);
  if (result < v3)
  {
    goto LABEL_15;
  }

  v16 = result;
  if (result)
  {
    v17 = *(v4 + 2);
    v18 = __OFADD__(v17, result);
    v19 = v17 + result;
    if (v18)
    {
      __break(1u);
LABEL_19:
      v22 = (v15 + 64) >> 6;
      if (v22 <= v2 + 1)
      {
        v23 = v2 + 1;
      }

      else
      {
        v23 = (v15 + 64) >> 6;
      }

      v24 = v23 - 1;
      do
      {
        v25 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
LABEL_49:
          __break(1u);
          return result;
        }

        if (v25 >= v22)
        {
          v56 = v24;
          v57 = 0;
          goto LABEL_13;
        }

        v26 = *(v13 + 8 * v25);
        ++v2;
      }

      while (!v26);
      v51 = v14;
      v20 = (v26 - 1) & v26;
      v21 = __clz(__rbit64(v26)) | (v25 << 6);
      v2 = v25;
      goto LABEL_27;
    }

    *(v4 + 2) = v19;
  }

  result = v53;
  if (v16 != v12)
  {
    goto LABEL_13;
  }

LABEL_16:
  v14 = *(v4 + 2);
  v13 = v54;
  v15 = v55;
  v2 = v56;
  v50 = v54;
  v47 = v55;
  if (!v57)
  {
    goto LABEL_19;
  }

  v51 = *(v4 + 2);
  v20 = (v57 - 1) & v57;
  v21 = __clz(__rbit64(v57)) | (v56 << 6);
  v22 = (v55 + 64) >> 6;
LABEL_27:
  v49 = result;
  v27 = *(result + 56) + 40 * v21;
  v28 = *v27;
  v29 = *(v27 + 8);
  v30 = *(v27 + 16);
  v31 = *(v27 + 24);
  v32 = *(v27 + 32);
  sub_10067F098(*v27, v29, v30, v31, v32);
  v33 = v50;
  for (i = v51; ; *(v4 + 2) = i)
  {
    v35 = *(v4 + 3);
    v36 = v35 >> 1;
    if ((v35 >> 1) < i + 1)
    {
      break;
    }

    if (i < v36)
    {
      goto LABEL_31;
    }

LABEL_28:
    ;
  }

  v43 = v4;
  v44 = i;
  v45 = sub_100B388D0((v35 > 1), i + 1, 1, v43);
  i = v44;
  v33 = v50;
  v4 = v45;
  v36 = *(v45 + 3) >> 1;
  if (i >= v36)
  {
    goto LABEL_28;
  }

LABEL_31:
  v48 = v36;
  while (1)
  {
    v37 = &v4[40 * i + 32];
    *v37 = v28;
    *(v37 + 8) = v29;
    *(v37 + 16) = v30;
    *(v37 + 24) = v31;
    *(v37 + 32) = v32;
    v38 = i + 1;
    if (!v20)
    {
      break;
    }

    v52 = v38;
    result = v49;
LABEL_39:
    v41 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v42 = *(result + 56) + 40 * (v41 | (v2 << 6));
    v28 = *v42;
    v29 = *(v42 + 8);
    v30 = *(v42 + 16);
    v31 = *(v42 + 24);
    v32 = *(v42 + 32);
    sub_10067F098(*v42, v29, v30, v31, v32);
    v33 = v50;
    i = v52;
    if (v52 == v48)
    {
      i = v48;
      goto LABEL_28;
    }
  }

  v39 = v2;
  result = v49;
  while (1)
  {
    v40 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v40 >= v22)
    {
      break;
    }

    v20 = *(v33 + 8 * v40);
    ++v39;
    if (v20)
    {
      v52 = v38;
      v2 = v40;
      goto LABEL_39;
    }
  }

  if (v22 <= v2 + 1)
  {
    v46 = v2 + 1;
  }

  else
  {
    v46 = v22;
  }

  v55 = v47;
  v56 = v46 - 1;
  v57 = 0;
  *(v4 + 2) = v38;
LABEL_13:
  result = sub_100035F90();
  *v1 = v4;
  return result;
}

void *sub_10079BD40(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_100B37BA4(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1005B981C(&unk_101A00120);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10079BE60(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_100B383E4(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_1005B981C(&qword_101A00168);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10079BF7C(uint64_t result)
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

  result = sub_100B39154(result, v10, 1, v3);
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

uint64_t sub_10079C074(uint64_t result)
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

  result = sub_100B36FF8(result, v10, 1, v3);
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

uint64_t sub_10079C198(uint64_t result, uint64_t *a2)
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
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 + v3 <= *(v4 + 24) >> 1)
  {
    if (*(v7 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
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

  sub_1005B981C(a2);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_11:
    *v2 = v4;
    return result;
  }

  v8 = *(v4 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v4 + 16) = v10;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10079C2BC(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = _CocoaArrayWrapper.endIndex.getter();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1007A754C(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_10079C3B4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1007A7504(&qword_1019FB870, &type metadata accessor for UUID), v7 = dispatch thunk of Hashable._rawHashValue(seed:)(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1007A7504(&qword_1019F37C0, &type metadata accessor for UUID);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_10079C5CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v31 - v9;
  if ((a2 & 0xC000000000000001) != 0)
  {

    v11 = __CocoaSet.contains(_:)();

    return v11 & 1;
  }

  else
  {
    if (*(a2 + 16) && (Hasher.init(_seed:)(), v13 = *(a1 + 16), v14 = *(a1 + 24), v15 = swift_getObjectType(), v16 = *(v14 + 32), v40 = v14, v41 = v13, v38 = v14 + 32, v39 = v15, v37 = v16, v16(v15, v14), sub_1007A7504(&qword_1019FB870, &type metadata accessor for UUID), dispatch thunk of Hashable.hash(into:)(), v18 = *(v5 + 8), v17 = v5 + 8, v42 = v10, v36 = v18, v18(v10, v4), v19 = Hasher._finalize()(), v20 = -1 << *(a2 + 32), v21 = v19 & ~v20, v35 = a2 + 56, ((*(a2 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0))
    {
      v32 = ~v20;
      v33 = a2;
      v34 = v8;
      do
      {
        v22 = *(*(*(a2 + 48) + 8 * v21) + 24);
        ObjectType = swift_getObjectType();
        v24 = v17;
        v25 = v4;
        v26 = *(v22 + 32);

        v27 = v42;
        v26(ObjectType, v22);
        v4 = v25;
        v17 = v24;
        v28 = v34;
        v37(v39, v40);
        v29 = static UUID.== infix(_:_:)();

        v30 = v36;
        v36(v28, v4);
        v30(v27, v4);
        if (v29)
        {
          break;
        }

        a2 = v33;
        v21 = (v21 + 1) & v32;
      }

      while (((*(v35 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
    }

    else
    {
      v29 = 0;
    }

    return v29 & 1;
  }
}

uint64_t sub_10079C8C8(Swift::UInt a1, char a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a1);
  }

  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if ((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      v11 = *(a3 + 48) + 16 * v9;
      if (*(v11 + 8))
      {
        if (a2)
        {
          return 1;
        }
      }

      else if ((a2 & 1) == 0 && *v11 == a1)
      {
        return 1;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return 0;
}

uint64_t sub_10079C9CC(uint64_t a1, char a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  if (a2 == -1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&qword_1019FFF60);
    CRExtensible.hash(into:)();
  }

  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    do
    {
      if (*(*(a3 + 48) + 16 * v8 + 8) == 255)
      {
        if (a2 == -1)
        {
          return 1;
        }
      }

      else if (a2 != -1)
      {
        sub_1007A96C8();
        if (static CRExtensible.== infix(_:_:)())
        {
          return 1;
        }
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return 0;
}

uint64_t sub_10079CB70(uint64_t a1, char a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  if (a2 == -1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&qword_1019FFFD8);
    CRExtensible.hash(into:)();
  }

  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    do
    {
      if (*(*(a3 + 48) + 16 * v8 + 8) == 255)
      {
        if (a2 == -1)
        {
          return 1;
        }
      }

      else if (a2 != -1)
      {
        type metadata accessor for CRLWPWritingDirection(0);
        sub_1007A7504(&unk_1019FFFE0, type metadata accessor for CRLWPWritingDirection);
        if (static CRExtensible.== infix(_:_:)())
        {
          return 1;
        }
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return 0;
}

uint64_t sub_10079CD48(uint64_t a1, char a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  if (a2 == -1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&qword_1019FFF70);
    CRExtensible.hash(into:)();
  }

  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    do
    {
      if (*(*(a3 + 48) + 16 * v8 + 8) == 255)
      {
        if (a2 == -1)
        {
          return 1;
        }
      }

      else if (a2 != -1)
      {
        type metadata accessor for CRLWPParagraphAlignment(0);
        sub_1007A7504(&qword_1019FFF78, type metadata accessor for CRLWPParagraphAlignment);
        if (static CRExtensible.== infix(_:_:)())
        {
          return 1;
        }
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return 0;
}

uint64_t sub_10079CF20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v86 = *(a1 + 64);
  v87 = v2;
  v88 = *(a1 + 96);
  v3 = *(a1 + 16);
  v82 = *a1;
  v83 = v3;
  v4 = *(a1 + 48);
  v84 = *(a1 + 32);
  v85 = v4;
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v7 = *(a1 + 96);
  if (v7)
  {
    v72 = v86;
    v73 = v87;
    v74 = v88;
    v68 = v82;
    v69 = v83;
    v70 = v84;
    v71 = v85;
    Hasher._combine(_:)(1u);
    v79 = v86;
    v80 = v87;
    v81 = v88;
    v75 = v82;
    v76 = v83;
    v77 = v84;
    v78 = v85;
    sub_1007A971C(&v75, &v41);
    sub_1007A9778();
    dispatch thunk of Hashable.hash(into:)();
    v45 = v72;
    v46 = v73;
    v47 = v74;
    v41 = v68;
    v42 = v69;
    v43 = v70;
    v44 = v71;
    sub_1007A97CC(&v41);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(a2 + 32);
  v10 = v8 & ~v9;
  if (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v31 = ~v9;
  while (1)
  {
    v11 = (*(a2 + 48) + 112 * v10);
    v13 = v11[1];
    v12 = v11[2];
    v75 = *v11;
    v76 = v13;
    v77 = v12;
    v14 = v11[6];
    v16 = v11[3];
    v15 = v11[4];
    v80 = v11[5];
    v81 = v14;
    v78 = v16;
    v79 = v15;
    v17 = v11[3];
    v64 = v11[2];
    v65 = v17;
    v18 = v11[5];
    v66 = v11[4];
    v67 = v18;
    v19 = v11[1];
    v62 = *v11;
    v63 = v19;
    v20 = v81;
    v21 = *(a1 + 16);
    v56 = *a1;
    v57 = v21;
    v22 = *(a1 + 32);
    v23 = *(a1 + 48);
    v24 = *(a1 + 80);
    v60 = *(a1 + 64);
    v61 = v24;
    v58 = v22;
    v59 = v23;
    v25 = *(a1 + 104);
    if (!v81)
    {
      break;
    }

    v43 = v64;
    v44 = v65;
    v45 = v66;
    v46 = v67;
    v41 = v62;
    v42 = v63;
    v47 = v81;
    v68 = v62;
    v69 = v63;
    v70 = v64;
    v71 = v65;
    v72 = v66;
    v73 = v67;
    v74 = v81;
    if (!v7)
    {
      v38 = v45;
      v39 = v46;
      v40 = v47;
      v34 = v41;
      v35 = v42;
      v36 = v43;
      v37 = v44;
      sub_10000BE14(a1, v33, &qword_1019FFF80);
      sub_10000BE14(&v75, v33, &qword_1019FFF80);
      sub_10000BE14(&v41, v33, &qword_1019FFF80);
      sub_1007A97CC(&v34);
      goto LABEL_14;
    }

    v26 = *(a1 + 48);
    v36 = *(a1 + 32);
    v37 = v26;
    v27 = *(a1 + 80);
    v38 = *(a1 + 64);
    v39 = v27;
    v28 = *(a1 + 16);
    v34 = *a1;
    v35 = v28;
    *&v40 = v7;
    *(&v40 + 1) = v25;
    sub_10000BE14(a1, v33, &qword_1019FFF80);
    sub_10000BE14(&v75, v33, &qword_1019FFF80);
    sub_10000BE14(&v41, v33, &qword_1019FFF80);
    sub_1007A9820();
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    v32[4] = v38;
    v32[5] = v39;
    v32[6] = v40;
    v32[0] = v34;
    v32[1] = v35;
    v32[2] = v36;
    v32[3] = v37;
    sub_1007A97CC(v32);
    v33[4] = v72;
    v33[5] = v73;
    v33[6] = v74;
    v33[0] = v68;
    v33[1] = v69;
    v33[2] = v70;
    v33[3] = v71;
    sub_1007A97CC(v33);
    v36 = v64;
    v37 = v65;
    v38 = v66;
    v39 = v67;
    v34 = v62;
    v35 = v63;
    v40 = v20;
    sub_10000CAAC(&v34, &qword_1019FFF80);
    if (v29)
    {
      return 1;
    }

LABEL_15:
    v10 = (v10 + 1) & v31;
    if (((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }

    v7 = *(a1 + 96);
  }

  if (v7)
  {
    sub_10000BE14(a1, &v41, &qword_1019FFF80);
    sub_10000BE14(&v75, &v41, &qword_1019FFF80);
LABEL_14:
    v43 = v64;
    v44 = v65;
    v45 = v66;
    v46 = v67;
    v41 = v62;
    v42 = v63;
    v47 = v20;
    v48 = v56;
    v49 = v57;
    v52 = v60;
    v53 = v61;
    v50 = v58;
    v51 = v59;
    v54 = v7;
    v55 = v25;
    sub_10000CAAC(&v41, &qword_1019FFF90);
    goto LABEL_15;
  }

  v43 = v64;
  v44 = v65;
  v45 = v66;
  v46 = v67;
  v41 = v62;
  v42 = v63;
  *&v47 = 0;
  *(&v47 + 1) = *(&v81 + 1);
  sub_10000BE14(a1, &v68, &qword_1019FFF80);
  sub_10000BE14(&v75, &v68, &qword_1019FFF80);
  sub_10000CAAC(&v41, &qword_1019FFF80);
  return 1;
}

uint64_t sub_10079D3CC(uint64_t a1, char a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  if (a2 == -1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&unk_1019FFFA0);
    CRExtensible.hash(into:)();
  }

  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    do
    {
      if (*(*(a3 + 48) + 16 * v8 + 8) == 255)
      {
        if (a2 == -1)
        {
          return 1;
        }
      }

      else if (a2 != -1)
      {
        type metadata accessor for CRLWPStrikethru(0);
        sub_1007A7504(&unk_101A0DA50, type metadata accessor for CRLWPStrikethru);
        if (static CRExtensible.== infix(_:_:)())
        {
          return 1;
        }
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return 0;
}

uint64_t sub_10079D5A4(uint64_t a1, char a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  if (a2 == -1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&unk_1019FFFB0);
    CRExtensible.hash(into:)();
  }

  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if ((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    do
    {
      if (*(*(a3 + 48) + 16 * v8 + 8) == 255)
      {
        if (a2 == -1)
        {
          return 1;
        }
      }

      else if (a2 != -1)
      {
        type metadata accessor for CRLWPUnderline(0);
        sub_1007A7504(&unk_101A0DA60, type metadata accessor for CRLWPUnderline);
        if (static CRExtensible.== infix(_:_:)())
        {
          return 1;
        }
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return 0;
}

uint64_t sub_10079D77C(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  if (a1 == 2)
  {
    v4 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v4 = a1 & 1;
  }

  Hasher._combine(_:)(v4);
  v6 = Hasher._finalize()();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + v8);
      if (v10 == 2)
      {
        if (a1 == 2)
        {
          return 1;
        }
      }

      else if (a1 != 2 && ((v10 ^ a1) & 1) == 0)
      {
        return 1;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return 0;
}

uint64_t sub_10079D88C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  if ((a1 & 0x100000000) != 0)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a1 & 0x7FFFFF) == 0 && (a1 & 0x7F800000) == 0)
    {
      v6 = 0;
    }

    else
    {
      v6 = a1;
    }

    Hasher._combine(_:)(v6);
  }

  v7 = Hasher._finalize()();
  v8 = -1 << *(a2 + 32);
  v9 = v7 & ~v8;
  if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      v11 = *(a2 + 48) + 8 * v9;
      if (*(v11 + 4))
      {
        if ((a1 & 0x100000000) != 0)
        {
          return 1;
        }
      }

      else if ((a1 & 0x100000000) == 0 && *v11 == *&a1)
      {
        return 1;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return 0;
}

uint64_t sub_10079D99C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  if (a3 == -1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    sub_1005B981C(&qword_1019FFFC8);
    CRExtensible.hash(into:)();
  }

  v7 = Hasher._finalize()();
  v8 = -1 << *(a4 + 32);
  v9 = v7 & ~v8;
  if ((*(a4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      if (*(*(a4 + 48) + 24 * v9 + 16) == 255)
      {
        if (a3 == -1)
        {
          return 1;
        }
      }

      else if (a3 != -1)
      {
        sub_1007A9874();
        if (static CRExtensible.== infix(_:_:)())
        {
          return 1;
        }
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(a4 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return 0;
}

uint64_t sub_10079DB6C(void *a1, uint64_t a2, unint64_t *a3)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (sub_100006370(0, a3), v6 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v5 = static NSObject.== infix(_:_:)();

      if (v5)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_10079DC94(void *a1, uint64_t a2, void (*a3)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = __CocoaSet.contains(_:)();
  }

  else if (*(a2 + 16) && (a3(0), v6 = NSObject._rawHashValue(seed:)(*(a2 + 40)), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v8);
      v5 = static NSObject.== infix(_:_:)();

      if (v5)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_10079DDA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_1007A7504(&qword_1019FB870, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v21 = type metadata accessor for CRLBoardIdentifierStorage(0);
    v8 = (a1 + *(v21 + 20));
    v9 = *v8;
    v10 = v8[1];
    String.hash(into:)();
    v11 = Hasher._finalize()();
    v12 = -1 << *(a2 + 32);
    v13 = v11 & ~v12;
    if ((*(a2 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = v5;
      v15 = ~v12;
      v16 = *(v14 + 72);
      do
      {
        sub_1007AB160(*(a2 + 48) + v16 * v13, v7, type metadata accessor for CRLBoardIdentifier);
        if (static UUID.== infix(_:_:)())
        {
          v17 = &v7[*(v21 + 20)];
          if (*v17 == v9 && *(v17 + 1) == v10)
          {
            sub_1007AB1C8(v7, type metadata accessor for CRLBoardIdentifier);
            return 1;
          }

          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_1007AB1C8(v7, type metadata accessor for CRLBoardIdentifier);
          if (v19)
          {
            return 1;
          }
        }

        else
        {
          sub_1007AB1C8(v7, type metadata accessor for CRLBoardIdentifier);
        }

        v13 = (v13 + 1) & v15;
      }

      while (((*(a2 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
    }
  }

  return 0;
}

uint64_t sub_10079E018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1005B981C(&unk_1019F33C0);
  __chkstk_darwin(v8 - 8);
  v64 = &v58[-v9];
  v66 = sub_1005B981C(&unk_101A0B780);
  __chkstk_darwin(v66);
  v67 = &v58[-v10];
  v11 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v69 = &v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v76 = sub_1005B981C(&qword_101A00180);
  __chkstk_darwin(v76);
  v78 = &v58[-v14];
  v15 = sub_1005B981C(&unk_101A096C0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  __chkstk_darwin(v17);
  v79 = &v58[-v19];
  if (!*(a2 + 16))
  {
    return 0;
  }

  v70 = v18;
  v61 = v7;
  v65 = v4;
  Hasher.init(_seed:)();
  sub_100E8FF94(&v82);
  v20 = Hasher._finalize()();
  v21 = -1 << *(a2 + 32);
  v22 = v20 & ~v21;
  v75 = a2 + 56;
  if (((*(a2 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
  {
    return 0;
  }

  v77 = v11;
  v71 = ~v21;
  v72 = (v12 + 48);
  v73 = a1;
  v23 = *(v16 + 72);
  v63 = (v5 + 48);
  v60 = (v5 + 32);
  v62 = (v5 + 8);
  v24 = &unk_101A096C0;
  v25 = v79;
  v68 = v23;
  v74 = a2;
  while (1)
  {
    sub_10000BE14(*(a2 + 48) + v23 * v22, v25, v24);
    v27 = *(v76 + 48);
    v28 = v78;
    sub_10000BE14(v25, v78, v24);
    sub_10000BE14(v73, &v28[v27], v24);
    v29 = *v72;
    v30 = v24;
    v31 = v77;
    if ((*v72)(v28, 1, v77) == 1)
    {
      break;
    }

    v32 = v70;
    sub_10000BE14(v28, v70, v30);
    if (v29(&v28[v27], 1, v31) == 1)
    {
      sub_10000CAAC(v79, v30);
      sub_1007AB1C8(v32, type metadata accessor for CRLWPHyperlinkSmartFieldData);
      a2 = v74;
      v23 = v68;
      v24 = v30;
      goto LABEL_5;
    }

    v33 = &v28[v27];
    v34 = v69;
    sub_1007AB228(v33, v69, type metadata accessor for CRLWPHyperlinkSmartFieldData);
    v35 = *(v32 + 8);
    *&v82 = *v32;
    BYTE8(v82) = v35;
    v36 = v34[8];
    v80 = *v34;
    v81 = v36;
    sub_1007AB290();
    if ((static CRExtensible.== infix(_:_:)() & 1) == 0)
    {
      v24 = v30;
      v25 = v79;
      sub_10000CAAC(v79, v30);
      a2 = v74;
      goto LABEL_15;
    }

    v37 = *(v77 + 20);
    v38 = *(v66 + 48);
    v39 = v67;
    sub_10000BE14(v32 + v37, v67, &unk_1019F33C0);
    sub_10000BE14(&v34[v37], &v39[v38], &unk_1019F33C0);
    v40 = *v63;
    v41 = v65;
    if ((*v63)(v39, 1, v65) == 1)
    {
      if (v40(&v39[v38], 1, v41) != 1)
      {
        v24 = v30;
        sub_10000CAAC(v79, v30);
        goto LABEL_19;
      }

      sub_10000CAAC(v39, &unk_1019F33C0);
      a2 = v74;
      v24 = v30;
    }

    else
    {
      v42 = v64;
      sub_10000BE14(v39, v64, &unk_1019F33C0);
      if (v40(&v39[v38], 1, v41) == 1)
      {
        v24 = v30;
        sub_10000CAAC(v79, v30);
        (*v62)(v42, v41);
LABEL_19:
        a2 = v74;
        v23 = v68;
        sub_10000CAAC(v67, &unk_101A0B780);
        v25 = v79;
        goto LABEL_20;
      }

      v43 = &v39[v38];
      v44 = v61;
      (*v60)(v61, v43, v41);
      sub_1007A7504(&qword_101A00190, &type metadata accessor for URL);
      v59 = dispatch thunk of static Equatable.== infix(_:_:)();
      v45 = *v62;
      (*v62)(v44, v41);
      v45(v42, v41);
      sub_10000CAAC(v39, &unk_1019F33C0);
      a2 = v74;
      v24 = v30;
      if ((v59 & 1) == 0)
      {
        v25 = v79;
        v55 = v79;
        v56 = v30;
        goto LABEL_29;
      }
    }

    v46 = v77;
    v47 = *(v77 + 24);
    v48 = v70;
    v49 = *(v70 + v47);
    v50 = *(v70 + v47 + 8);
    v51 = &v69[v47];
    v25 = v79;
    if (v49 != *v51 || v50 != v51[1])
    {
      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v48 = v70;
      if ((v52 & 1) == 0)
      {
        v55 = v25;
        v56 = v24;
LABEL_29:
        sub_10000CAAC(v55, v56);
LABEL_15:
        v23 = v68;
LABEL_20:
        sub_1007AB1C8(v69, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        sub_1007AB1C8(v70, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        sub_10000CAAC(v78, v24);
        goto LABEL_6;
      }
    }

    v53 = v69;
    v54 = sub_100B3216C(*(v48 + *(v46 + 28)), *&v69[*(v46 + 28)]);
    sub_10000CAAC(v25, v24);
    sub_1007AB1C8(v53, type metadata accessor for CRLWPHyperlinkSmartFieldData);
    sub_1007AB1C8(v48, type metadata accessor for CRLWPHyperlinkSmartFieldData);
    sub_10000CAAC(v78, v24);
    v23 = v68;
    if (v54)
    {
      return 1;
    }

LABEL_6:
    v22 = (v22 + 1) & v71;
    if (((*(v75 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
    {
      return 0;
    }
  }

  sub_10000CAAC(v25, v30);
  v26 = v29(&v28[v27], 1, v31);
  a2 = v74;
  v24 = v30;
  if (v26 != 1)
  {
LABEL_5:
    sub_10000CAAC(v28, &qword_101A00180);
    v25 = v79;
    goto LABEL_6;
  }

  sub_10000CAAC(v28, &unk_101A096C0);
  return 1;
}

uint64_t sub_10079E9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10079EAA0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = AnyHashable._rawHashValue(seed:)(*(a2 + 40)), v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    do
    {
      sub_100064110(*(a2 + 48) + 40 * v5, v9);
      v7 = static AnyHashable.== infix(_:_:)();
      sub_100064234(v9);
      if (v7)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL sub_10079EB8C(Swift::UInt32 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_10079EC58(uint64_t a1, uint64_t a2)
{
  v4 = _s5BoardVMa(0);
  __chkstk_darwin(v4 - 8);
  v64 = &v57[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v63 = &v57[-v7];
  v8 = type metadata accessor for CRLBoardLibraryViewModel.Folder(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v57[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = sub_1005B981C(&qword_1019F3460);
  __chkstk_darwin(v62);
  v70 = &v57[-v11];
  v12 = type metadata accessor for CRLBoardLibraryViewModel.Filter(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v67 = &v57[-v16];
  __chkstk_darwin(v17);
  v66 = &v57[-v18];
  v19 = sub_1005B981C(&qword_101A000E0);
  __chkstk_darwin(v19);
  v21 = &v57[-v20];
  v22 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v69 = &v57[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v25);
  v68 = &v57[-v26];
  __chkstk_darwin(v27);
  v71 = &v57[-v28];
  __chkstk_darwin(v29);
  v31 = &v57[-v30];
  if (!*(a2 + 16))
  {
    return 0;
  }

  v60 = v14;
  v59 = v10;
  Hasher.init(_seed:)();
  sub_100F8B698();
  v32 = Hasher._finalize()();
  v33 = -1 << *(a2 + 32);
  v34 = v32 & ~v33;
  v74 = a2 + 56;
  if (((*(a2 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
  {
    return 0;
  }

  v72 = ~v33;
  v73 = *(v23 + 72);
  v35 = v70;
  v65 = v19;
  v61 = a1;
  while (1)
  {
    sub_1007AB160(*(a2 + 48) + v73 * v34, v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v37 = *(v19 + 48);
    sub_1007AB160(v31, v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_1007AB160(a1, &v21[v37], type metadata accessor for CRLBoardLibraryViewModel.Item);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      sub_1007AB1C8(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_1007AB160(v21, v71, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_6;
      }

      v47 = *v71;
      v48 = v21[v37];
      sub_1007AB1C8(v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
      if (v47 == v48)
      {
        return 1;
      }

      goto LABEL_7;
    }

    if (EnumCaseMultiPayload == 1)
    {
      break;
    }

    v39 = v69;
    sub_1007AB160(v21, v69, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1007AB1C8(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v36 = _s5BoardVMa;
      goto LABEL_5;
    }

    v49 = v63;
    sub_1007AB228(v39, v63, _s5BoardVMa);
    v50 = &v21[v37];
    v51 = v64;
    sub_1007AB228(v50, v64, _s5BoardVMa);
    v52 = sub_1013030EC(v49, v51);
    sub_1007AB1C8(v51, _s5BoardVMa);
    v53 = v49;
    v19 = v65;
    sub_1007AB1C8(v53, _s5BoardVMa);
    sub_1007AB1C8(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v35 = v70;
    sub_1007AB1C8(v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (v52)
    {
      return 1;
    }

LABEL_7:
    v34 = (v34 + 1) & v72;
    if (((*(v74 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
    {
      return 0;
    }
  }

  v39 = v68;
  sub_1007AB160(v21, v68, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1007AB1C8(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v36 = type metadata accessor for CRLBoardLibraryViewModel.Filter;
LABEL_5:
    sub_1007AB1C8(v39, v36);
LABEL_6:
    sub_10000CAAC(v21, &qword_101A000E0);
    goto LABEL_7;
  }

  v40 = v66;
  sub_1007AB228(v39, v66, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v41 = v67;
  sub_1007AB228(&v21[v37], v67, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v42 = *(v62 + 48);
  sub_1007AB160(v40, v35, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_1007AB160(v41, v35 + v42, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  v43 = sub_1005B981C(&qword_1019F3480);
  v44 = *(*(v43 - 8) + 48);
  v45 = v44(v35, 5, v43);
  if (v45 > 2)
  {
    if (v45 == 3)
    {
      sub_1007AB1C8(v67, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      v35 = v70;
      sub_1007AB1C8(v66, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_1007AB1C8(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v46 = v44(v35 + v42, 5, v43) == 3;
    }

    else if (v45 == 4)
    {
      sub_1007AB1C8(v67, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_1007AB1C8(v66, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_1007AB1C8(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v35 = v70;
      v46 = v44(&v70[v42], 5, v43) == 4;
    }

    else
    {
      sub_1007AB1C8(v67, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_1007AB1C8(v66, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_1007AB1C8(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v35 = v70;
      v46 = v44(&v70[v42], 5, v43) == 5;
    }

    goto LABEL_30;
  }

  if (v45)
  {
    if (v45 == 1)
    {
      sub_1007AB1C8(v67, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_1007AB1C8(v66, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_1007AB1C8(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v35 = v70;
      v46 = v44(&v70[v42], 5, v43) == 1;
    }

    else
    {
      sub_1007AB1C8(v67, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_1007AB1C8(v66, type metadata accessor for CRLBoardLibraryViewModel.Filter);
      sub_1007AB1C8(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v35 = v70;
      v46 = v44(&v70[v42], 5, v43) == 2;
    }

LABEL_30:
    a1 = v61;
    v19 = v65;
    if (v46)
    {
      goto LABEL_37;
    }

LABEL_31:
    sub_10000CAAC(v35, &qword_1019F3460);
LABEL_32:
    sub_1007AB1C8(v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
    goto LABEL_7;
  }

  sub_1007AB160(v35, v60, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  if (v44(v35 + v42, 5, v43))
  {
    sub_1007AB1C8(v67, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_1007AB1C8(v66, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    sub_1007AB1C8(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_1007AB1C8(v60, type metadata accessor for CRLBoardLibraryViewModel.Folder);
    a1 = v61;
    v19 = v65;
    goto LABEL_31;
  }

  v54 = v59;
  sub_1007AB228(v35 + v42, v59, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  v55 = v60;
  v58 = sub_100F92694(v60, v54);
  sub_1007AB1C8(v54, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  sub_1007AB1C8(v67, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_1007AB1C8(v66, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_1007AB1C8(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
  v35 = v70;
  sub_1007AB1C8(v55, type metadata accessor for CRLBoardLibraryViewModel.Folder);
  a1 = v61;
  v19 = v65;
  if (!v58)
  {
    sub_1007AB1C8(v35, type metadata accessor for CRLBoardLibraryViewModel.Filter);
    goto LABEL_32;
  }

LABEL_37:
  sub_1007AB1C8(v35, type metadata accessor for CRLBoardLibraryViewModel.Filter);
  sub_1007AB1C8(v21, type metadata accessor for CRLBoardLibraryViewModel.Item);
  return 1;
}

uint64_t sub_10079F7E8(uint64_t a1, uint64_t a2)
{
  v4 = _s17CategoryViewModelVMa();
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16))
  {
    v36 = v5;
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_1007A7504(&qword_1019FB870, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    v8 = (a1 + v4[5]);
    v9 = *v8;
    v10 = v8[1];
    String.hash(into:)();
    v11 = (a1 + v4[6]);
    v12 = v11[1];
    v38 = *v11;
    if (v12)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v13 = (a1 + v4[7]);
    v14 = *v13;
    v39 = v13[1];
    v40 = v14;
    String.hash(into:)();
    v37 = *(a1 + v4[8]);
    Hasher._combine(_:)(v37);
    v15 = Hasher._finalize()();
    v16 = -1 << *(a2 + 32);
    v17 = v15 & ~v16;
    v42 = a2 + 56;
    if ((*(a2 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
    {
      v41 = v12;
      v18 = ~v16;
      v19 = *(v36 + 72);
      v20 = v38;
      while (1)
      {
        sub_1007AB160(*(a2 + 48) + v19 * v17, v7, _s17CategoryViewModelVMa);
        if ((static UUID.== infix(_:_:)() & 1) == 0)
        {
          break;
        }

        v21 = &v7[v4[5]];
        v22 = *v21 == v9 && *(v21 + 1) == v10;
        if (!v22 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }

        v23 = &v7[v4[6]];
        v24 = *(v23 + 1);
        if (v24)
        {
          if (!v41)
          {
            break;
          }

          v25 = *v23 == v20 && v24 == v41;
          if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            break;
          }
        }

        else if (v41)
        {
          break;
        }

        v26 = &v7[v4[7]];
        v27 = *v26 == v40 && *(v26 + 1) == v39;
        if (!v27 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          break;
        }

        v28 = v4[8];
        v29 = v4;
        v30 = a1;
        v31 = a2;
        v32 = v10;
        v33 = v9;
        v34 = *&v7[v28];
        sub_1007AB1C8(v7, _s17CategoryViewModelVMa);
        v22 = v34 == v37;
        v9 = v33;
        v10 = v32;
        a2 = v31;
        a1 = v30;
        v4 = v29;
        v20 = v38;
        if (v22)
        {
          return 1;
        }

LABEL_9:
        v17 = (v17 + 1) & v18;
        if (((*(v42 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          return 0;
        }
      }

      sub_1007AB1C8(v7, _s17CategoryViewModelVMa);
      goto LABEL_9;
    }
  }

  return 0;
}

uint64_t sub_10079FB58(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  if (a2 <= 1u)
  {
    v6 = a2 != 0;
LABEL_6:
    Hasher._combine(_:)(v6);
    NSObject.hash(into:)();
    goto LABEL_13;
  }

  if (a2 == 2)
  {
    v6 = 2;
    goto LABEL_6;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }
  }

  else
  {
    v7 = 3;
  }

  Hasher._combine(_:)(v7);
LABEL_13:
  v8 = Hasher._finalize()();
  v9 = -1 << *(a3 + 32);
  v10 = v8 & ~v9;
  if (((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  v12 = a2 == 3;
  v13 = a1 == 2 && a2 == 3;
  v14 = a1 == 1 && a2 == 3;
  v28 = v14;
  if (a1)
  {
    v12 = 0;
  }

  v26 = v13;
  v27 = v12;
  while (1)
  {
    v15 = *(a3 + 48) + 16 * v10;
    v16 = *v15;
    v17 = *(v15 + 8);
    if (v17 > 1)
    {
      break;
    }

    if (v17)
    {
      if (a2 == 1)
      {
        sub_100006370(0, &qword_1019F54D0);
        v22 = v16;
        v23 = static NSObject.== infix(_:_:)();
        v24 = 1;
        sub_1007A98C8(v16, 1u);
        if (v23)
        {
          return v24;
        }
      }
    }

    else if (!a2)
    {
      sub_100006370(0, &qword_1019F54D0);
      v18 = v16;
      v19 = static NSObject.== infix(_:_:)();
      sub_1007A98C8(v16, 0);
      if (v19)
      {
        return 1;
      }
    }

LABEL_24:
    v10 = (v10 + 1) & v11;
    if (((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  if (v17 != 2)
  {
    if (v16)
    {
      if (v16 == 1)
      {
        if (v28)
        {
          return 1;
        }
      }

      else if (v26)
      {
        return 1;
      }
    }

    else if (v27)
    {
      return 1;
    }

    goto LABEL_24;
  }

  if (a2 != 2)
  {
    goto LABEL_24;
  }

  sub_100006370(0, &qword_1019F54D0);
  v20 = v16;
  v21 = static NSObject.== infix(_:_:)();
  sub_1007A98C8(v16, 2u);
  if ((v21 & 1) == 0)
  {
    goto LABEL_24;
  }

  return 1;
}

uint64_t sub_10079FDE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardIdentifier(0);
  v5 = __chkstk_darwin(v4 - 8);
  v41 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v42 = &v41 - v7;
  v8 = sub_1005B981C(&qword_101A00148);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for CRLSpotlightManager.ChangeType(0);
  v12 = __chkstk_darwin(v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v41 - v16;
  __chkstk_darwin(v15);
  v20 = &v41 - v19;
  if (!*(a2 + 16))
  {
    return 0;
  }

  v45 = v18;
  Hasher.init(_seed:)();
  sub_10007995C();
  v21 = Hasher._finalize()();
  v22 = -1 << *(a2 + 32);
  v23 = v21 & ~v22;
  v47 = a2 + 56;
  if (((*(a2 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
  {
    return 0;
  }

  v43 = v8;
  v44 = ~v22;
  v45 = *(v45 + 72);
  v46 = a1;
  while (1)
  {
    sub_1007AB160(*(a2 + 48) + v45 * v23, v20, type metadata accessor for CRLSpotlightManager.ChangeType);
    v24 = *(v8 + 48);
    sub_1007AB160(v20, v10, type metadata accessor for CRLSpotlightManager.ChangeType);
    sub_1007AB160(v46, &v10[v24], type metadata accessor for CRLSpotlightManager.ChangeType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_1007AB160(v10, v17, type metadata accessor for CRLSpotlightManager.ChangeType);
    v25 = v17;
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v26 = v42;
      sub_1007AB228(&v10[v24], v42, type metadata accessor for CRLBoardIdentifier);
      if (static UUID.== infix(_:_:)())
      {
        v33 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
        v34 = *&v17[v33];
        v35 = *&v17[v33 + 8];
        v36 = (v26 + v33);
        if (v34 == *v36 && v35 == v36[1])
        {
          goto LABEL_30;
        }

        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
        sub_1007AB1C8(v20, type metadata accessor for CRLSpotlightManager.ChangeType);
        sub_1007AB1C8(v26, type metadata accessor for CRLBoardIdentifier);
        sub_1007AB1C8(v17, type metadata accessor for CRLBoardIdentifier);
        if (v38)
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      sub_1007AB1C8(v20, type metadata accessor for CRLSpotlightManager.ChangeType);
      sub_1007AB1C8(v26, type metadata accessor for CRLBoardIdentifier);
      v39 = v17;
LABEL_25:
      sub_1007AB1C8(v39, type metadata accessor for CRLBoardIdentifier);
LABEL_26:
      sub_1007AB1C8(v10, type metadata accessor for CRLSpotlightManager.ChangeType);
      v8 = v43;
      goto LABEL_5;
    }

LABEL_4:
    sub_1007AB1C8(v20, type metadata accessor for CRLSpotlightManager.ChangeType);
    sub_1007AB1C8(v25, type metadata accessor for CRLBoardIdentifier);
    sub_10000CAAC(v10, &qword_101A00148);
LABEL_5:
    v23 = (v23 + 1) & v44;
    if (((*(v47 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
      return 0;
    }
  }

  sub_1007AB160(v10, v14, type metadata accessor for CRLSpotlightManager.ChangeType);
  v25 = v14;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_4;
  }

  v26 = v41;
  sub_1007AB228(&v10[v24], v41, type metadata accessor for CRLBoardIdentifier);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    sub_1007AB1C8(v20, type metadata accessor for CRLSpotlightManager.ChangeType);
    sub_1007AB1C8(v26, type metadata accessor for CRLBoardIdentifier);
    v39 = v14;
    goto LABEL_25;
  }

  v27 = *(type metadata accessor for CRLBoardIdentifierStorage(0) + 20);
  v28 = *&v14[v27];
  v29 = *&v14[v27 + 8];
  v30 = (v26 + v27);
  if (v28 != *v30 || v29 != v30[1])
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1007AB1C8(v20, type metadata accessor for CRLSpotlightManager.ChangeType);
    sub_1007AB1C8(v26, type metadata accessor for CRLBoardIdentifier);
    sub_1007AB1C8(v14, type metadata accessor for CRLBoardIdentifier);
    if (v32)
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  v17 = v14;
LABEL_30:
  sub_1007AB1C8(v20, type metadata accessor for CRLSpotlightManager.ChangeType);
  sub_1007AB1C8(v26, type metadata accessor for CRLBoardIdentifier);
  sub_1007AB1C8(v17, type metadata accessor for CRLBoardIdentifier);
LABEL_31:
  sub_1007AB1C8(v10, type metadata accessor for CRLSpotlightManager.ChangeType);
  return 1;
}

BOOL sub_1007A03F0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = static Hasher._hash(seed:_:)();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1007A04B0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10113E268(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1007A75EC(v6);
  return specialized ContiguousArray._endMutation()();
}

id CRLWPLayout._columns.getter()
{
  v1 = OBJC_IVAR____TtC8Freeform11CRLWPLayout__columns;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void CRLWPLayout._columns.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8Freeform11CRLWPLayout__columns;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id CRLWPLayout.parentAutosizes.getter()
{
  v1 = [v0 parent];
  if (v1)
  {
    v2 = v1;
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = [v3 autosizeFlagsFor:v0];

      return (v4 != 0);
    }
  }

  v6.receiver = v0;
  v6.super_class = type metadata accessor for CRLWPLayout();
  return objc_msgSendSuper2(&v6, "parentAutosizes");
}

Swift::Void __swiftcall CRLWPLayout.validate()()
{
  v1 = [v0 parent];
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = v1;
  v13 = &OBJC_PROTOCOL____TtP8Freeform17CRLWPLayoutParent_;
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (!v3)
  {

LABEL_14:
    v14.receiver = v0;
    v14.super_class = type metadata accessor for CRLWPLayout();
    objc_msgSendSuper2(&v14, "validate");
    return;
  }

  v4 = v3;
  v5 = OBJC_IVAR____TtC8Freeform11CRLWPLayout_textLayoutIsValid;
  v6 = *(v0 + OBJC_IVAR____TtC8Freeform11CRLWPLayout_textLayoutIsValid);
  if ([v0 parentAutosizes])
  {
    if ((*(v0 + v5) & 1) == 0)
    {
      if ([v0 invalidGeometry])
      {
        [v4 autosizedFrameFor:v0 textSize:{10.0, 10.0}];
        if (v9 > 0.0)
        {
          v11 = [objc_allocWithZone(CRLCanvasLayoutGeometry) initWithFrame:{v7, v8, v9, v10}];
          [v0 setGeometry:v11];
        }
      }
    }

    sub_1007A0D58();
    v12.receiver = v0;
    v12.super_class = type metadata accessor for CRLWPLayout();
    objc_msgSendSuper2(&v12, "validate");
    if ([v4 autosizeFlagsFor:v0] & 0x20) == 0 || (v6)
    {
      goto LABEL_17;
    }

    if ([v0 parentAutosizes])
    {
      [v0 invalidateSize];
    }

    *(v0 + v5) = 0;
    [v0 invalidate];
    [v0 setNeedsDisplay];
  }

  else
  {
    v12.receiver = v0;
    v12.super_class = type metadata accessor for CRLWPLayout();
    objc_msgSendSuper2(&v12, "validate");
  }

  sub_1007A0D58();
LABEL_17:
}

Swift::Void __swiftcall CRLWPLayout.invalidateTextLayout()()
{
  if ([v0 parentAutosizes])
  {
    [v0 invalidateSize];
  }

  *(v0 + OBJC_IVAR____TtC8Freeform11CRLWPLayout_textLayoutIsValid) = 0;
  [v0 invalidate];

  [v0 setNeedsDisplay];
}

Swift::Void __swiftcall CRLWPLayout.invalidateSize()()
{
  v0[OBJC_IVAR____TtC8Freeform11CRLWPLayout_textLayoutIsValid] = 0;
  v1.receiver = v0;
  v1.super_class = type metadata accessor for CRLWPLayout();
  objc_msgSendSuper2(&v1, "invalidateSize");
}

char *sub_1007A0BC4()
{
  result = [v0 layoutController];
  if (result)
  {
    v2 = result;
    v3 = [result canvas];
    if (v3)
    {
      v4 = v3;
      if (([v3 isCanvasInteractive] & 1) == 0)
      {

        return 0;
      }

      v5 = [v4 canvasController];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 editorController];

        if (v7)
        {
          if (type metadata accessor for CRLWPEditor())
          {
            ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
          }

          else
          {
            ObjCClassFromMetadata = 0;
          }

          v9 = [v7 mostSpecificCurrentEditorOfClass:ObjCClassFromMetadata];

          result = swift_dynamicCastClass();
          if (result)
          {
            v10 = *(*&result[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
            if (v10)
            {
              v11 = v10;
              swift_unknownObjectRelease();

              v12 = *&v0[OBJC_IVAR____TtC8Freeform11CRLWPLayout_wpStorage];
              return (v12 == v11);
            }

            else
            {
              __break(1u);
            }

            return result;
          }

          swift_unknownObjectRelease();
          return 0;
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_1007A0D58()
{
  v1 = OBJC_IVAR____TtC8Freeform11CRLWPLayout_textLayoutIsValid;
  if ((v0[OBJC_IVAR____TtC8Freeform11CRLWPLayout_textLayoutIsValid] & 1) == 0)
  {
    v2 = v0;
    v3 = [v0 isInstructional];
    v4 = *&v0[OBJC_IVAR____TtC8Freeform11CRLWPLayout_wpStorage];
    if (!v3)
    {
      sub_100A28D8C();
      v10 = v9;

      goto LABEL_10;
    }

    v5 = [v2 parent];
    if (v5)
    {
      v6 = v5;
      v29 = &OBJC_PROTOCOL____TtP8Freeform17CRLWPLayoutParent_;
      v7 = swift_dynamicCastObjCProtocolConditional();
      if (v7)
      {
        v8 = [v7 instructionalTextCharacterFill];

LABEL_9:
        sub_100A1F224(v8);
        v10 = v11;

LABEL_10:
        v12 = objc_allocWithZone(CRLWPLayoutManager);
        v13 = v10;
        v14 = [v12 initWithStorage:v13 owner:v2];
        v15 = [v2 storage];
        if (v15)
        {
          v16 = [v15 length];
          swift_unknownObjectRelease();
          if (v16 < 1)
          {

            v17 = &v2[OBJC_IVAR____TtC8Freeform11CRLWPLayout__columns];
            swift_beginAccess();
            goto LABEL_28;
          }

          v17 = &v2[OBJC_IVAR____TtC8Freeform11CRLWPLayout__columns];
          swift_beginAccess();
          if ([*v17 firstObject])
          {
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
          }

          else
          {
            v31 = 0u;
            v32 = 0u;
          }

          v33[0] = v31;
          v33[1] = v32;
          if (*(&v32 + 1))
          {
            sub_100006370(0, &unk_1019FFD00);
            if (swift_dynamicCast())
            {
              v18 = [v30 storage];
              if (v18)
              {
                v19 = v18;
                type metadata accessor for CRLWPStorage();
                v20 = static NSObject.== infix(_:_:)();

                if (v20)
                {
                  if (!v14)
                  {

                    v27 = 0;
                    goto LABEL_33;
                  }

                  v21 = v14;
                  v22 = [v21 initialLayoutStateForLayout:v2];

                  v23 = v22;
                  goto LABEL_32;
                }
              }

              else
              {
              }
            }

            else
            {
            }
          }

          else
          {

            sub_10000CAAC(v33, &unk_1019F4D00);
          }

          v24 = [v2 columns];
          if (v24)
          {
            v25 = v24;
            v26 = [v24 count];

            if (!v26)
            {
              if (!v14)
              {
                v27 = 0;
                goto LABEL_33;
              }

              v23 = [v14 initialLayoutStateForLayout:v2];
LABEL_32:
              v27 = [v14 layOutIntoTarget:v2 withLayoutState:v23 outSync:{0, v29}];
LABEL_33:
              v28 = v14;
              [v28 destroyLayoutState:v27];
              [v28 resetDirtyRange];

              v2[v1] = 1;
              return;
            }

LABEL_28:
            [*v17 removeAllObjects];
            v23 = 0;
            v27 = 0;
            if (!v14)
            {
              goto LABEL_33;
            }

            goto LABEL_32;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }
    }

    v8 = 0;
    goto LABEL_9;
  }
}

void __swiftcall CRLWPLayout.computeLayoutGeometry()(CRLCanvasLayoutGeometry_optional *__return_ptr retstr)
{
  v2 = v1;
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 parent];
  if (!v8)
  {
    goto LABEL_11;
  }

  v9 = v8;
  v52 = &OBJC_PROTOCOL____TtP8Freeform17CRLWPLayoutParent_;
  v10 = swift_dynamicCastObjCProtocolConditional();
  if (!v10)
  {

LABEL_11:
    v25 = [v1 info];
    if (v25)
    {
      v26 = [v25 geometry];
      swift_unknownObjectRelease();
      [v26 size];
      v28 = v27;
      v30 = v29;

      [objc_allocWithZone(CRLCanvasLayoutGeometry) initWithFrame:{0.0, 0.0, v28, v30}];
    }

    else
    {
      __break(1u);
    }

    return;
  }

  v11 = v10;
  if ([v10 autosizeFlagsFor:v1])
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    v16 = OBJC_IVAR____TtC8Freeform11CRLWPLayout__columns;
    swift_beginAccess();
    v17 = *&v2[v16];
    NSArray.makeIterator()();

    NSFastEnumerationIterator.next()();
    while (v51)
    {
      sub_10000BF3C(&v50, &v49);
      sub_100006370(0, &unk_1019FFD00);
      if (swift_dynamicCast())
      {
        v18 = v48;
        [v48 frameBounds];
        v55.origin.x = v19;
        v55.origin.y = v20;
        v55.size.width = v21;
        v55.size.height = v22;
        v53.origin.x = x;
        v53.origin.y = y;
        v53.size.width = width;
        v53.size.height = height;
        v54 = CGRectUnion(v53, v55);
        x = v54.origin.x;
        y = v54.origin.y;
        width = v54.size.width;
        height = v54.size.height;
      }

      NSFastEnumerationIterator.next()();
    }

    (*(v4 + 8))(v7, v3);
    v23 = [v2 columnMetricsForCharIndex:NSNotFound.getter() outRange:0];
    if (v23)
    {
      [v23 adjustedInsetsForTarget:v2];
    }

    else
    {
      top = UIEdgeInsetsZero.top;
    }

    v39 = sub_1007A746C(top);
    [v11 autosizedFrameFor:v2 textSize:{sub_1007A7480(x, y, width, height, v39, v40, v41, v42)}];
    v32 = v43;
    v34 = v44;
    v36 = v45;
    v38 = v46;
    swift_unknownObjectRelease();
  }

  else
  {
    [v11 nonAutosizedFrameFor:v1];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;
  }

  [objc_allocWithZone(CRLCanvasLayoutGeometry) initWithFrame:{v32, v34, v36, v38}];
}

uint64_t sub_1007A1554()
{
  v1 = *(*&v0[OBJC_IVAR____TtC8Freeform11CRLWPLayout_wpStorage] + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange);
  if (!v1)
  {
    return 0;
  }

  v2 = qword_1019F1570;
  v3 = v1;
  if (v2 != -1)
  {
    swift_once();
  }

  sub_1007A3814(v0, &v13);
  v4 = v13;
  if (!v13)
  {

    return 0;
  }

  v5 = *&v13[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v6 = [v3 start];
  v7 = *&v6[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  result = NSNotFound.getter();
  if (v7 == result)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    v10 = 0;
  }

  else
  {
    v9 = *&v3[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v11 = *&v3[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v10 = v11 - v9;
    if (__OFSUB__(v11, v9))
    {
      __break(1u);
      return result;
    }
  }

  return v9 <= v5 && v10 + v9 >= v5;
}

void sub_1007A16F8(double a1@<X0>, char *a2@<X1>, double *a3@<X8>)
{
  v81 = a3;
  v5 = type metadata accessor for NSFastEnumerationIterator();
  v79 = *(v5 - 8);
  v80 = v5;
  *&v6 = __chkstk_darwin(v5).n128_u64[0];
  v8 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [*&a1 layoutIsValid];
  v82 = a2;
  if ((v9 & 1) == 0)
  {
    v77 = a1;
    v76 = objc_opt_self();
    LODWORD(v78) = [v76 _atomicIncrementAssertCount];
    *&v86 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v86);
    StaticString.description.getter();
    v10 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v11 lastPathComponent];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v78;
    v18 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v18;
    v19 = sub_1005CF04C();
    *(inited + 104) = v19;
    *(inited + 72) = v10;
    *(inited + 136) = &type metadata for String;
    v20 = sub_1000053B0();
    *(inited + 112) = v13;
    *(inited + 120) = v15;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v20;
    *(inited + 152) = 310;
    v21 = v86;
    *(inited + 216) = v18;
    *(inited + 224) = v19;
    *(inited + 192) = v21;
    v22 = v10;
    v23 = v21;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v25, "Layout must be valid.", 21, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v26 = swift_allocObject();
    v26[2] = 8;
    v26[3] = 0;
    v26[4] = 0;
    v26[5] = 0;
    v27 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v30 = String._bridgeToObjectiveC()();

    [v76 handleFailureInFunction:v28 file:v29 lineNumber:310 isFatal:0 format:v30 args:v27];

    a2 = v82;
    a1 = v77;
  }

  v31 = *(*&a1 + OBJC_IVAR____TtC8Freeform11CRLWPLayout_wpStorage);
  sub_100A28D8C();
  v33 = v32;

  v34 = [a2 start];
  v35 = *&v34[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  if (v35 == NSNotFound.getter())
  {
    v36 = 0x7FFFFFFFFFFFFFFFLL;
    v37 = 0;
  }

  else
  {
    v36 = *&a2[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
    v38 = *&a2[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
    v37 = v38 - v36;
    if (__OFSUB__(v38, v36))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }
  }

  v39 = *&a2[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity];
  v40 = objc_allocWithZone(CRLWPSelection);
  v78 = v33;
  LOBYTE(v75) = 1;
  v41 = [v40 initWithType:0 range:v36 styleInsertionBehavior:v37 caretAffinity:0 smartFieldRange:v39 leadingEdge:0x7FFFFFFFFFFFFFFFLL storage:{0, v75, v33}];
  v42 = [*&a1 columns];
  if (!v42)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return;
  }

  v43 = v42;
  x = CGRectNull.origin.x;
  y = CGRectNull.origin.y;
  width = CGRectNull.size.width;
  height = CGRectNull.size.height;
  NSArray.makeIterator()();

  v76 = &a2[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  v77 = CGRectNull.origin.x;
  v48 = y;
  v49 = width;
  v50 = height;
  while (1)
  {
    NSFastEnumerationIterator.next()();
    if (!v87)
    {
      break;
    }

    sub_10000BF3C(&v86, &v85);
    sub_100006370(0, &unk_1019FFD00);
    if (swift_dynamicCast())
    {
      v51 = v84;
      v52 = type metadata accessor for CRLWPLaidOutColumnProxy();
      v53 = objc_allocWithZone(v52);
      *&v53[OBJC_IVAR____TtC8Freeform23CRLWPLaidOutColumnProxy_column] = v51;
      v83.receiver = v53;
      v83.super_class = v52;
      v54 = v51;
      v55 = objc_msgSendSuper2(&v83, "init");
      v56 = [v82 start];
      v57 = *&v56[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

      v58 = NSNotFound.getter();
      v59 = 0;
      if (v57 != v58)
      {
        v60 = *(v76 + 1);
        v59 = v60 - *v76;
        if (__OFSUB__(v60, *v76))
        {
          goto LABEL_38;
        }
      }

      if (v59 < 1)
      {
        if (!v41)
        {
          goto LABEL_41;
        }

        [*&v55[OBJC_IVAR____TtC8Freeform23CRLWPLaidOutColumnProxy_column] caretRectForSelection:v41];
        x = v64;
        v48 = v65;
        v49 = v66;
        v50 = v67;
      }

      else
      {
        if (!v41)
        {
          goto LABEL_40;
        }

        [*&v55[OBJC_IVAR____TtC8Freeform23CRLWPLaidOutColumnProxy_column] firstRectForSelection:v41 includeSpaceAfter:0 includeSpaceBefore:0 includeLeading:0];
        x = v88.origin.x;
        v48 = v88.origin.y;
        v61 = v88.size.width;
        v62 = v88.size.height;
        IsEmpty = CGRectIsEmpty(v88);
        if (IsEmpty)
        {
          x = v77;
          v48 = y;
          v49 = width;
        }

        else
        {
          v49 = v61;
        }

        v50 = IsEmpty ? height : v62;
      }

      v89.origin.x = x;
      v89.origin.y = v48;
      v89.size.width = v49;
      v89.size.height = v50;
      IsNull = CGRectIsNull(v89);

      if (!IsNull)
      {
        break;
      }
    }
  }

  (*(v79 + 8))(v8, v80);
  v90.origin.x = x;
  v90.origin.y = v48;
  v90.size.width = v49;
  v90.size.height = v50;
  v69 = CGRectIsNull(v90);

  v70 = 0.0;
  if (v69)
  {
    v71 = 0.0;
  }

  else
  {
    v71 = x;
  }

  if (v69)
  {
    v72 = 0.0;
  }

  else
  {
    v72 = v48;
  }

  if (v69)
  {
    v73 = 0.0;
  }

  else
  {
    v73 = v49;
  }

  v74 = v81;
  *v81 = v71;
  v74[1] = v72;
  if (!v69)
  {
    v70 = v50;
  }

  v74[2] = v73;
  v74[3] = v70;
}

double sub_1007A1EDC(void *a1)
{
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  v20[3] = type metadata accessor for CRLTextPosition();
  v20[0] = a1;
  v2 = a1;
  NSNotFound.getter();
  v3 = *&v2[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v4 = *&v2[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
  v5 = type metadata accessor for CRLTextRange();
  v6 = objc_allocWithZone(v5);
  v7 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v6[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v6[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v8 = &v6[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v8 = v3;
  *(v8 + 1) = v3;
  *&v6[v7] = v4;
  v19.receiver = v6;
  v19.super_class = v5;
  v9 = objc_msgSendSuper2(&v19, "init");
  *&v9[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = v4;
  v10 = sub_1007A2040(v9);
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = sub_100120414(v10, v12, v14, v16);
  sub_100005070(v20);
  return v17;
}

double sub_1007A2040(void *a1)
{
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for CRLTextRange();
  v10 = a1;
  v9[3] = v11;
  v9[0] = a1;
  sub_1007A16F8(v1, a1, &v8.origin.x);
  sub_100005070(v9);
  v12 = CGRectIntegral(v8);
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  if (!CGRectIsNull(v12))
  {
    v13.origin.x = x;
    v13.origin.y = y;
    v13.size.width = width;
    v13.size.height = height;
    v14.origin.x = CGRectGetMidX(v13);
    v14.size.width = 1.0;
    v14.origin.y = y;
    v14.size.height = height;
    *&x = CGRectIntegral(v14);
  }

  sub_100005070(&v10);
  return x;
}

double sub_1007A2160(void *a1)
{
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  v13[3] = type metadata accessor for CRLTextPosition();
  v13[0] = a1;
  v2 = a1;
  NSNotFound.getter();
  v3 = *&v2[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v4 = *&v2[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
  v5 = type metadata accessor for CRLTextRange();
  v6 = objc_allocWithZone(v5);
  v7 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v6[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v6[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v8 = &v6[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v8 = v3;
  *(v8 + 1) = v3;
  *&v6[v7] = v4;
  v12.receiver = v6;
  v12.super_class = v5;
  v9 = objc_msgSendSuper2(&v12, "init");
  *&v9[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = v4;
  v10 = sub_1007A2040(v9);

  sub_100005070(v13);
  return v10;
}

void sub_1007A22B0(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v149 = sub_1005B981C(&unk_1019FFD10);
  v6 = *(v149 - 8);
  __chkstk_darwin(v149);
  v148 = &v114 - v7;
  v147 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v147);
  v146 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v9 - 8);
  v145 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = type metadata accessor for NSFastEnumerationIterator();
  v11 = *(v125 - 8);
  *&v12 = __chkstk_darwin(v125).n128_u64[0];
  KeyPath = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 layoutController];
  if (!v15)
  {
    goto LABEL_71;
  }

  v138 = a1;
  v16 = v15;
  v17 = [v15 canvas];
  if (!v17)
  {
LABEL_70:

LABEL_71:
    *a3 = _swiftEmptyArrayStorage;
    return;
  }

  v115 = v17;
  v116 = v16;
  if (![v17 isCanvasInteractive])
  {

    v16 = v115;
    goto LABEL_70;
  }

  v158 = _swiftEmptyArrayStorage;
  if (a2 >> 62)
  {
    goto LABEL_78;
  }

  v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v114 = a3;
  while (v18)
  {
    v140 = 0;
    v144 = OBJC_IVAR____TtC8Freeform11CRLWPLayout_wpStorage;
    v129 = a2 & 0xC000000000000001;
    v121 = a2;
    v118 = a2 + 32;
    v119 = a2 & 0xFFFFFFFFFFFFFF8;
    v142 = (v6 + 8);
    v143 = (v6 + 16);
    v6 = 0;
    v127 = 0;
    v128 = 0x7FFFFFFFFFFFFFFFLL;
    v120 = (v11 + 8);
    a2 = &unk_1019FFD00;
    a3 = off_10182F9C0;
    v122 = xmmword_10146CA70;
    v137 = _swiftEmptyArrayStorage;
    v141 = KeyPath;
    v126 = v18;
    while (1)
    {
      if (v129)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v6 >= *(v119 + 16))
        {
          goto LABEL_76;
        }

        v21 = *(v118 + 8 * v6);
      }

      v152 = v21;
      if (__OFADD__(v6++, 1))
      {
        goto LABEL_74;
      }

      v136 = v6;
      v23 = [v152 start];
      v24 = *&v23[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

      v25 = NSNotFound.getter();
      v11 = v127;
      v6 = v128;
      v26 = v24 == v25;
      v27 = v138;
      if (!v26)
      {
        v6 = *(v152 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
        v28 = *(v152 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8);
        v11 = (v28 - v6);
        if (__OFSUB__(v28, v6))
        {
          break;
        }
      }

      v151 = [objc_allocWithZone(CRLWPSelection) initWithRange:{v6, v11}];
      if (!v151)
      {
        v19 = v152;
        goto LABEL_8;
      }

      v29 = [v27 columns];
      if (!v29)
      {
        goto LABEL_102;
      }

      v30 = v29;
      NSArray.makeIterator()();

      v11 = OBJC_IVAR____TtC8Freeform12CRLTextRange_range;
      NSFastEnumerationIterator.next()();
      if (!v161)
      {
LABEL_7:
        (*v120)(KeyPath, v125);

        v19 = v151;
LABEL_8:

        v20 = v126;
        goto LABEL_9;
      }

      v150 = &v11[v152];
      while (1)
      {
        while (1)
        {
          sub_10000BF3C(&v160, v159);
          sub_100006370(0, &unk_1019FFD00);
          if (swift_dynamicCast())
          {
            break;
          }

LABEL_21:
          NSFastEnumerationIterator.next()();
          if (!v161)
          {
            goto LABEL_7;
          }
        }

        v31 = v157;
        v32 = type metadata accessor for CRLWPLaidOutColumnProxy();
        v33 = objc_allocWithZone(v32);
        *&v33[OBJC_IVAR____TtC8Freeform23CRLWPLaidOutColumnProxy_column] = v31;
        v156.receiver = v33;
        v156.super_class = v32;
        v153 = v31;
        v34 = objc_msgSendSuper2(&v156, "init");
        v35 = *&v27[v144];
        sub_100A28D8C();
        v11 = v36;

        v37 = *&v11[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
        if (!v37)
        {
          goto LABEL_101;
        }

        a3 = *v150;
        KeyPath = v150[1];
        v38 = v146;
        (*(*v37 + 896))();
        v39 = v145;
        sub_1007AB160(v38 + *(v147 + 20), v145, type metadata accessor for CRLWPStorageCRDTData);
        sub_1007AB1C8(v38, type metadata accessor for CRLWPShapeItemCRDTData);
        v40 = v148;
        v41 = v149;
        (*v143)(v148, v39, v149);
        sub_1007AB1C8(v39, type metadata accessor for CRLWPStorageCRDTData);
        a2 = CRAttributedString.count.getter();
        (*v142)(v40, v41);
        if (a2 >= (a3 & ~(a3 >> 63)))
        {
          v6 = a3 & ~(a3 >> 63);
        }

        else
        {
          v6 = a2;
        }

        v42 = KeyPath & ~(KeyPath >> 63);
        if (v42 < v6)
        {
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        if (a2 >= v42)
        {
          a2 = KeyPath & ~(KeyPath >> 63);
        }

        KeyPath = swift_getKeyPath();
        a3 = sub_100955B74(KeyPath, v11, v6, a2);
        v6 = v43;

        if (v6)
        {
          if (!*(a3 + 16))
          {
            goto LABEL_73;
          }

          v6 = *(a3 + 32);
          sub_1000C1080(a3, 1);
          a3 = v6;
        }

        if ([v152 isEmpty])
        {
          break;
        }

        *&v159[0] = 0;
        v48 = [*&v34[OBJC_IVAR____TtC8Freeform23CRLWPLaidOutColumnProxy_column] rectsForSelection:v151 ranges:v159];
        if (v48)
        {
          v6 = v48;
          sub_100006370(0, &qword_101A04270);
          KeyPath = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          KeyPath = _swiftEmptyArrayStorage;
        }

        v117 = *&v159[0];
        if (KeyPath >> 62)
        {
          v49 = _CocoaArrayWrapper.endIndex.getter();
          if (v49)
          {
LABEL_41:
            if (v49 < 1)
            {
              goto LABEL_77;
            }

            v50 = 0;
            v11 = (KeyPath & 0xC000000000000001);
            v134 = a3 + 1;
            v135 = KeyPath & 0xC000000000000001;
            v123 = v49;
            v124 = KeyPath;
            do
            {
              if (v11)
              {
                v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                v51 = *(KeyPath + 8 * v50 + 32);
              }

              v52 = v51;
              [v51 CGRectValue];
              v54 = v53;
              v56 = v55;
              v58 = v57;
              v60 = v59;
              v61 = [v27 geometry];
              [v61 frame];

              v165.origin.x = sub_10011ECB4();
              v165.origin.y = v62;
              v165.size.width = v63;
              v165.size.height = v64;
              v163.origin.x = v54;
              v163.origin.y = v56;
              v163.size.width = v58;
              v163.size.height = v60;
              v164 = CGRectIntersection(v163, v165);
              x = v164.origin.x;
              y = v164.origin.y;
              width = v164.size.width;
              height = v164.size.height;
              if (CGRectIsEmpty(v164))
              {
              }

              else
              {
                v139 = v52;
                v69 = a3;
                if (v134 >= 3)
                {
                  v133 = objc_opt_self();
                  v131 = [v133 _atomicIncrementAssertCount];
                  *&v159[0] = [objc_allocWithZone(NSString) init];
                  sub_100604538(_swiftEmptyArrayStorage, v159);
                  StaticString.description.getter();
                  v70 = String._bridgeToObjectiveC()();

                  StaticString.description.getter();
                  v71 = String._bridgeToObjectiveC()();

                  v72 = [v71 lastPathComponent];

                  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v130 = v74;

                  if (qword_1019F20A0 != -1)
                  {
                    swift_once();
                  }

                  v132 = static OS_os_log.crlAssert;
                  sub_1005B981C(&qword_1019F54E0);
                  inited = swift_initStackObject();
                  *(inited + 16) = v122;
                  *(inited + 56) = &type metadata for Int32;
                  *(inited + 64) = &protocol witness table for Int32;
                  *(inited + 32) = v131;
                  v76 = sub_100006370(0, &qword_1019F4D30);
                  *(inited + 96) = v76;
                  v77 = sub_1005CF04C();
                  *(inited + 104) = v77;
                  *(inited + 72) = v70;
                  *(inited + 136) = &type metadata for String;
                  v78 = sub_1000053B0();
                  v79 = v130;
                  *(inited + 112) = v73;
                  *(inited + 120) = v79;
                  *(inited + 176) = &type metadata for UInt;
                  *(inited + 144) = v78;
                  *(inited + 152) = 39;
                  v80 = *&v159[0];
                  *(inited + 216) = v76;
                  *(inited + 224) = v77;
                  *(inited + 184) = &protocol witness table for UInt;
                  *(inited + 192) = v80;
                  v81 = v70;
                  v82 = v80;
                  v83 = static os_log_type_t.error.getter();
                  v84 = v132;
                  sub_100005404(v132, &_mh_execute_header, v83, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
                  swift_setDeallocating();
                  sub_1005B981C(&unk_1019F5670);
                  swift_arrayDestroy();
                  v85 = static os_log_type_t.error.getter();
                  sub_100005404(v84, &_mh_execute_header, v85, "Unknown direction.", 18, 2, _swiftEmptyArrayStorage);

                  type metadata accessor for __VaListBuilder();
                  v86 = swift_allocObject();
                  v86[2] = 8;
                  v86[3] = 0;
                  v86[4] = 0;
                  v86[5] = 0;
                  v132 = __VaListBuilder.va_list()();
                  StaticString.description.getter();
                  v87 = String._bridgeToObjectiveC()();

                  StaticString.description.getter();
                  v88 = String._bridgeToObjectiveC()();

                  StaticString.description.getter();
                  v89 = String._bridgeToObjectiveC()();

                  [v133 handleFailureInFunction:v87 file:v88 lineNumber:39 isFatal:0 format:v89 args:v132];

                  v69 = -1;
                  v49 = v123;
                  KeyPath = v124;
                }

                v90 = type metadata accessor for CRLTextSelectionRect();
                v91 = objc_allocWithZone(v90);
                v91[OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__containsStart] = 0;
                v91[OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__containsEnd] = 0;
                v92 = &v91[OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__rect];
                *v92 = x;
                v92[1] = y;
                v92[2] = width;
                v92[3] = height;
                *&v91[OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__writingDirection] = sub_1007260E4(v69);
                v155.receiver = v91;
                v155.super_class = v90;
                v93 = objc_msgSendSuper2(&v155, "init");
                *&v159[0] = v93;
                __chkstk_darwin(v93);
                *(&v114 - 2) = v159;
                v94 = v140;
                v95 = sub_100C33540(sub_1007AB0EC, (&v114 - 4), v137);
                v140 = v94;
                if (v95)
                {
                }

                else
                {
                  v96 = v93;
                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  v97 = v139;
                  if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                    v97 = v139;
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

                  v137 = v158;
                }

                v27 = v138;
                v11 = v135;
              }

              ++v50;
            }

            while (v49 != v50);
          }
        }

        else
        {
          v49 = *((KeyPath & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v49)
          {
            goto LABEL_41;
          }
        }

        KeyPath = v141;
        NSFastEnumerationIterator.next()();
        a2 = &unk_1019FFD00;
        a3 = off_10182F9C0;
        if (!v161)
        {
          goto LABEL_7;
        }
      }

      [*&v34[OBJC_IVAR____TtC8Freeform23CRLWPLaidOutColumnProxy_column] caretRectForSelection:v151];
      v44 = v162.origin.x;
      v45 = v162.origin.y;
      v46 = v162.size.width;
      v47 = v162.size.height;
      if (CGRectIsNull(v162))
      {

        KeyPath = v141;
        a2 = &unk_1019FFD00;
        a3 = off_10182F9C0;
        goto LABEL_21;
      }

      v98 = CRLWPWritingDirection.asNSWritingDirection.getter(a3);
      v99 = type metadata accessor for CRLTextSelectionRect();
      v100 = objc_allocWithZone(v99);
      v100[OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__containsStart] = 0;
      v100[OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__containsEnd] = 0;
      v101 = &v100[OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__rect];
      *v101 = v44;
      v101[1] = v45;
      v101[2] = v46;
      v101[3] = v47;
      *&v100[OBJC_IVAR____TtC8Freeform20CRLTextSelectionRect__writingDirection] = sub_1007260E4(v98);
      v154.receiver = v100;
      v154.super_class = v99;
      v102 = objc_msgSendSuper2(&v154, "init");
      *&v159[0] = v102;
      __chkstk_darwin(v102);
      *(&v114 - 2) = v159;
      v11 = v140;
      v103 = sub_100C33540(sub_1007AB814, (&v114 - 4), v137);
      v140 = v11;
      if (v103)
      {
        KeyPath = v141;
        (*v120)(v141, v125);

        v20 = v126;
      }

      else
      {
        v11 = v102;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        KeyPath = v141;
        v20 = v126;
        if (*((v158 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v158 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        (*v120)(KeyPath, v125);
        v137 = v158;
      }

      a2 = &unk_1019FFD00;
      a3 = off_10182F9C0;
LABEL_9:
      v6 = v136;
      if (v136 == v20)
      {
        goto LABEL_80;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    v114 = a3;
  }

  v140 = 0;
  v137 = _swiftEmptyArrayStorage;
LABEL_80:
  v104 = v137;
  swift_bridgeObjectRetain_n();
  *&v160 = sub_100777C8C(v104);
  v105 = v140;
  sub_1007A04B0(&v160);
  if (v105)
  {

    __break(1u);
  }

  else
  {

    v106 = v160;
    v107 = v114;
    if ((v160 & 0x8000000000000000) != 0 || (v160 & 0x4000000000000000) != 0)
    {
      v108 = _CocoaArrayWrapper.endIndex.getter();
      if (v108)
      {
LABEL_84:
        if ((v106 & 0xC000000000000001) != 0)
        {
          v109 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(v106 + 16))
          {
            goto LABEL_98;
          }

          v109 = *(v106 + 32);
        }

        v110 = v109;
        [v109 setContainsStart:{1, v114}];

        v111 = v108 - 1;
        if (!__OFSUB__(v108, 1))
        {
          if ((v106 & 0xC000000000000001) != 0)
          {
            v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_93:
            v113 = v112;

            [v113 setContainsEnd:1];

            *v107 = v104;
            return;
          }

          if ((v111 & 0x8000000000000000) == 0)
          {
            if (v111 < *(v106 + 16))
            {
              v112 = *(v106 + 8 * v111 + 32);
              goto LABEL_93;
            }

LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
          }

LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }
    }

    else
    {
      v108 = *(v160 + 16);
      if (v108)
      {
        goto LABEL_84;
      }
    }

    *v107 = v104;
  }
}

id sub_1007A3530(double a1, double a2)
{
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  v5 = [v2 columns];
  if (v5)
  {
    sub_100006370(0, &unk_1019FFD00);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v5 = 0;
  }

  v6 = [objc_opt_self() closestColumnInColumnsArray:v5 forPoint:0 ignoreEmptyColumns:1 ignoreDrawableOnlyColumns:{a1, a2}];

  return v6;
}

void sub_1007A36F4(char *a1@<X0>, void *a2@<X8>)
{
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  sub_1007A3814(a1, &v14);
  v4 = v14;
  if (v14)
  {
    v5 = *&a1[OBJC_IVAR____TtC8Freeform11CRLWPLayout_wpStorage];
    sub_100A28D8C();
    v7 = v6;

    v8 = [v7 range];
    v9 = *&v4[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
    v11 = &v8[v10];
    if (&v8[v10] >= v9)
    {
      v11 = *&v4[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
    }

    if (v9 >= v8)
    {
      v12 = v11;
    }

    else
    {
      v12 = v8;
    }

    v13 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:v12 caretAffinity:0];
  }

  else
  {
    v13 = 0;
  }

  *a2 = v13;
}

void sub_1007A3814(void *a1@<X0>, void *a2@<X8>)
{
  v3 = [a1 columns];
  if (v3)
  {
    v4 = v3;
    sub_100006370(0, &unk_1019FFD00);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  *a2 = 0;
}

unint64_t sub_1007A39EC(void *a1, uint64_t a2)
{
  v5 = [a1 end];
  v6 = [a1 start];
  v7 = sub_100B80810(v5, v6);

  if (v7)
  {
    return [a1 start];
  }

  sub_1005B981C(&unk_1019F4D60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_101465920;
  *(v9 + 32) = a1;
  v10 = qword_1019F1570;
  v11 = a1;
  if (v10 != -1)
  {
    swift_once();
  }

  v19[3] = sub_1005B981C(&unk_101A001E0);
  v19[0] = v9;

  sub_1007A22B0(v2, v9, &v18);
  sub_100005070(v19);
  v12 = v18;

  if ((a2 - 3) <= 1)
  {
    if (v12 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_8;
      }
    }

    else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_11;
      }

      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v13 = *(v12 + 32);
LABEL_11:
        v14 = v13;

        [v14 rect];
        CGRectGetMinX(v20);
        [v14 rect];
        CGRectGetMinY(v21);
LABEL_24:
        sub_1007A36F4(v2, &v18);

        return v18;
      }

      goto LABEL_27;
    }

LABEL_23:

    v14 = 0;
    goto LABEL_24;
  }

  if (v12 >> 62)
  {
    v15 = _CocoaArrayWrapper.endIndex.getter();
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_23;
    }
  }

  v16 = __OFSUB__(v15, 1);
  result = v15 - 1;
  if (v16)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_28:
    v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v12 + 8 * result + 32);
LABEL_19:
    v14 = v17;

    [v14 rect];
    CGRectGetMaxX(v22);
    [v14 rect];
    CGRectGetMaxY(v23);
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

unint64_t sub_1007A3CEC(char *a1, int64_t a2)
{
  if (a2 <= 3)
  {
    if (a2 == 2)
    {
      v33 = sub_1007A421C(a1, 2, 1);
      if (!v33)
      {
        v33 = a1;
      }

      v4 = v33;
      result = *&a1[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
      if ((result & 0x8000000000000000) == 0)
      {
        a2 = *&v4[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
        if ((a2 & 0x8000000000000000) == 0)
        {
          goto LABEL_20;
        }

LABEL_33:
        __break(1u);
        goto LABEL_34;
      }
    }

    else
    {
      if (a2 != 3)
      {
LABEL_13:
        v7 = 0x7FFFFFFFFFFFFFFFLL;
        v8 = 0;
        v39 = objc_opt_self();
        v9 = [v39 _atomicIncrementAssertCount];
        v40 = [objc_allocWithZone(NSString) init];
        sub_100604538(_swiftEmptyArrayStorage, &v40);
        StaticString.description.getter();
        v10 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v11 = String._bridgeToObjectiveC()();

        v12 = [v11 lastPathComponent];

        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;

        if (qword_1019F20A0 != -1)
        {
          swift_once();
        }

        v16 = static OS_os_log.crlAssert;
        sub_1005B981C(&qword_1019F54E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10146CA70;
        *(inited + 56) = &type metadata for Int32;
        *(inited + 64) = &protocol witness table for Int32;
        *(inited + 32) = v9;
        v18 = sub_100006370(0, &qword_1019F4D30);
        *(inited + 96) = v18;
        v19 = sub_1005CF04C();
        *(inited + 104) = v19;
        *(inited + 72) = v10;
        *(inited + 136) = &type metadata for String;
        v20 = sub_1000053B0();
        *(inited + 112) = v13;
        *(inited + 120) = v15;
        *(inited + 176) = &type metadata for UInt;
        *(inited + 184) = &protocol witness table for UInt;
        *(inited + 144) = v20;
        *(inited + 152) = 530;
        v21 = v40;
        *(inited + 216) = v18;
        *(inited + 224) = v19;
        *(inited + 192) = v21;
        v22 = v10;
        v23 = v21;
        v24 = static os_log_type_t.error.getter();
        sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
        swift_setDeallocating();
        sub_1005B981C(&unk_1019F5670);
        swift_arrayDestroy();
        v25 = static os_log_type_t.error.getter();
        sub_100005404(v16, &_mh_execute_header, v25, "invalid text layout direction", 29, 2, _swiftEmptyArrayStorage);

        type metadata accessor for __VaListBuilder();
        v26 = swift_allocObject();
        v26[2] = 8;
        v26[3] = 0;
        v26[4] = 0;
        v26[5] = 0;
        v27 = __VaListBuilder.va_list()();
        StaticString.description.getter();
        v28 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v29 = String._bridgeToObjectiveC()();

        StaticString.description.getter();
        v4 = v30;
        v31 = String._bridgeToObjectiveC()();

        [v39 handleFailureInFunction:v28 file:v29 lineNumber:530 isFatal:0 format:v31 args:v27];

        v32 = 0;
        goto LABEL_28;
      }

      v3 = sub_1007A421C(a1, 3, 1);
      if (!v3)
      {
        v3 = a1;
      }

      v4 = v3;
      result = *&a1[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
      if ((result & 0x8000000000000000) == 0)
      {
        a2 = *&v4[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
        if (a2 < 0)
        {
          __break(1u);
          goto LABEL_9;
        }

LABEL_20:
        v7 = sub_1007AB790(result, a2);
        v8 = v34;
        v32 = 1;
        goto LABEL_28;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_9:
  if (a2 == 4)
  {
    result = sub_1007A421C(a1, 4, 0);
    if (!result)
    {
      v36 = *&a1[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
      v7 = v36 - 1;
      if (!__OFSUB__(v36, 1))
      {
        goto LABEL_26;
      }

LABEL_35:
      __break(1u);
      return result;
    }

    v4 = result;
    v35 = *(result + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location);
    v7 = v35 - 1;
    if (!__OFSUB__(v35, 1))
    {
      v32 = 1;
      v8 = 1;
      goto LABEL_28;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (a2 != 5)
  {
    goto LABEL_13;
  }

  v6 = sub_1007A421C(a1, 5, 0);
  if (!v6)
  {
    v7 = *&a1[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
LABEL_26:
    v4 = a1;
    goto LABEL_27;
  }

  v4 = v6;
  v7 = *&v6[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
LABEL_27:
  v8 = 1;
  v32 = 1;
LABEL_28:
  v37 = objc_allocWithZone(type metadata accessor for CRLTextRange());
  result = sub_10078CDF0(v7, v8);
  if (v32)
  {
    v38 = result;

    return v38;
  }

  return result;
}

char *sub_1007A421C(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [v3 layoutController];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [v8 canvas];
  if (!v10)
  {

    return 0;
  }

  v11 = v10;
  if (([v10 isCanvasInteractive] & 1) == 0)
  {

    return 0;
  }

  v33 = v11;
  result = [v3 layoutController];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v13 = result;
  v14 = [result canvas];

  v15 = [v14 canvasController];
  if (!v15)
  {

    return 0;
  }

  v16 = *&v4[OBJC_IVAR____TtC8Freeform11CRLWPLayout_wpStorage];
  sub_100A28D8C();
  v18 = v17;

  v19 = [objc_allocWithZone(CRLWPEditorHelper) initWithTextSource:v18 icc:v15 layout:v4];
  if (NSNotFound.getter() == a3)
  {

    goto LABEL_30;
  }

  v32 = v15;
  v21 = (a2 & 0xFFFFFFFFFFFFFFFELL) == 4;
  if (a3 < 0)
  {
    v22 = __OFSUB__(0, a3);
    a3 = -a3;
    if (v22)
    {
      goto LABEL_32;
    }

    a2 = sub_1007AB3D4(a2);
  }

  NSNotFound.getter();
  v23 = *&a1[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
  v35 = sub_1007A1EDC(a1);
  if (a3 < 0)
  {
    __break(1u);
LABEL_32:
    __break(1u);
  }

  if (a3)
  {
    v24 = 4 * v21;
    v25 = v23 == 1;
    v20 = a1;
    v26 = &selRef_canRemoveImageBackground;
    while (1)
    {
      v31 = [v19 v26[109]];
      if (v31 == NSNotFound.getter())
      {
        goto LABEL_21;
      }

      if (a2 == 4)
      {
        if (v25)
        {
          goto LABEL_27;
        }
      }

      else if (a2 == 5 && v25)
      {
LABEL_27:
        v27 = 1;
        v25 = 1;
        goto LABEL_20;
      }

      v27 = 0;
      v25 = 0;
LABEL_20:
      v28 = type metadata accessor for CRLTextPosition();
      v29 = objc_allocWithZone(v28);
      *&v29[OBJC_IVAR____TtC8Freeform15CRLTextPosition_insertionEdge] = 0;
      *&v29[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location] = v31;
      *&v29[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity] = v27;
      v34.receiver = v29;
      v34.super_class = v28;
      v30 = objc_msgSendSuper2(&v34, "init");

      v20 = v30;
      v26 = &selRef_canRemoveImageBackground;
LABEL_21:
      if (!--a3)
      {

        return v20;
      }
    }
  }

LABEL_30:
  return a1;
}

void *CRLWPLayout.dependentLayouts.getter()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for CRLWPLayout();
  v1 = objc_msgSendSuper2(&v10, "dependentLayouts");
  if (v1)
  {
    v2 = v1;
    sub_100006370(0, &qword_101A287B0);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v11 = v3;
  v4 = [v0 parent];
  if (v4)
  {
    v5 = v4;
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6)
    {
      v7 = [v6 dependentsOf:{v0, &OBJC_PROTOCOL____TtP8Freeform17CRLWPLayoutParent_}];
      sub_100006370(0, &qword_101A287B0);
      v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10079C2BC(v8, sub_1007AA0E4);
      return v11;
    }

    else
    {
    }
  }

  return v3;
}

void CRLWPLayout.layoutSearch(for:options:hit:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7)
{
  v79 = a4;
  v80 = a5;
  v82 = a2;
  v83 = a3;
  v81 = a1;
  v10 = sub_1005B981C(&unk_1019FFD10);
  v84 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = v73 - v11;
  v13 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v13);
  v15 = v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CRLWPStorageCRDTData(0);
  *&v17 = __chkstk_darwin(v16 - 8).n128_u64[0];
  v19 = v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v7 storage])
  {
    type metadata accessor for CRLWPStorage();
    v78 = swift_dynamicCastClass();
    if (v78)
    {
      v77 = a7;
      v20 = [v7 layoutController];
      if (v20)
      {
        v21 = v20;
        v76 = a6;
        v22 = [v20 canvas];

        if (v22)
        {
          v23 = [v22 delegate];

          if (v23)
          {
            v92 = &OBJC_PROTOCOL___CRLSearchCanvasDelegate;
            v24 = swift_dynamicCastObjCProtocolConditional();
            if (v24)
            {
              v74 = v24;
              v75 = v23;
              if (CRLWPLayout.isOverflowing()())
              {
                v25 = OBJC_IVAR____TtC8Freeform11CRLWPLayout__columns;
                swift_beginAccess();
                if ([*&v7[v25] firstObject])
                {
                  _bridgeAnyObjectToAny(_:)();
                  swift_unknownObjectRelease();
                }

                else
                {
                  v86 = 0u;
                  v87 = 0u;
                }

                v88 = v86;
                v89 = v87;
                if (*(&v87 + 1))
                {
                  v73[1] = sub_100006370(0, &unk_1019FFD00);
                  v63 = swift_dynamicCast();
                  v53 = v76;
                  if (v63)
                  {
                    v73[0] = v85;
                    if ([*&v7[v25] lastObject])
                    {
                      _bridgeAnyObjectToAny(_:)();
                      v53 = v76;
                      swift_unknownObjectRelease();
                    }

                    else
                    {
                      v86 = 0u;
                      v87 = 0u;
                    }

                    v88 = v86;
                    v89 = v87;
                    if (*(&v87 + 1))
                    {
                      if (swift_dynamicCast())
                      {
                        v66 = v85;
                        v67 = v73[0];
                        v68 = [v73[0] range];
                        v70 = v69;
                        v94.location = [v66 range];
                        v94.length = v71;
                        v93.location = v68;
                        v93.length = v70;
                        v72 = NSUnionRange(v93, v94);
                        location = v72.location;
                        length = v72.length;

                        v49 = v78;
                        goto LABEL_16;
                      }
                    }

                    else
                    {

                      sub_10000CAAC(&v88, &unk_1019F4D00);
                    }
                  }
                }

                else
                {
                  sub_10000CAAC(&v88, &unk_1019F4D00);
                  v53 = v76;
                }

                v64 = *&v78[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
                if (!v64)
                {
                  __break(1u);
                  return;
                }

                (*(*v64 + 896))();
                sub_1007AB160(&v15[*(v13 + 20)], v19, type metadata accessor for CRLWPStorageCRDTData);
                sub_1007AB1C8(v15, type metadata accessor for CRLWPShapeItemCRDTData);
                v65 = v84;
                (*(v84 + 16))(v12, v19, v10);
                sub_1007AB1C8(v19, type metadata accessor for CRLWPStorageCRDTData);
                v62 = CRAttributedString.attributedString.getter();
                (*(v65 + 8))(v12, v10);
                [v62 length];
                goto LABEL_27;
              }

              v49 = v78;
              location = [v78 range];
              length = v51;
LABEL_16:
              v53 = v76;
              if (length < 1)
              {
LABEL_28:
                if (v53)
                {
                  v53();
                }

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                return;
              }

              v54 = swift_allocObject();
              v55 = v79;
              v56 = v80;
              v54[2] = v7;
              v54[3] = v55;
              v54[4] = v56;
              v57 = objc_allocWithZone(CRLWPSearch);
              swift_unknownObjectRetain();
              v58 = v7;

              v59 = String._bridgeToObjectiveC()();
              v90 = sub_1007A7494;
              v91 = v54;
              *&v88 = _NSConcreteStackBlock;
              *(&v88 + 1) = *"";
              *&v89 = sub_1007A5954;
              *(&v89 + 1) = &unk_101886B80;
              v60 = _Block_copy(&v88);

              v61 = [v57 initWithString:v59 options:v83 hitBlock:v60 storage:v49 range:location searchCanvasDelegate:{length, v74}];

              _Block_release(v60);

              sub_100A3A270(v61);
              v62 = v61;
              LOBYTE(v61) = [v62 isComplete];

              swift_unknownObjectRelease();

              if (v61)
              {
                v53 = v76;
              }

              else
              {
                v53 = v76;
                if (!v62)
                {
                  goto LABEL_28;
                }

                v62 = v62;
                if (([v62 isComplete] & 1) == 0)
                {
                  do
                  {
                    [v49 continueSearch:v62];
                  }

                  while (![v62 isComplete]);
                }

                v53 = v76;
              }

LABEL_27:

              goto LABEL_28;
            }

            swift_unknownObjectRelease();
          }
        }
      }
    }

    swift_unknownObjectRelease();
  }

  v26 = objc_opt_self();
  v27 = [v26 _atomicIncrementAssertCount];
  *&v88 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v88);
  StaticString.description.getter();
  v28 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v29 = String._bridgeToObjectiveC()();

  v30 = [v29 lastPathComponent];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v34 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v27;
  v36 = sub_100006370(0, &qword_1019F4D30);
  *(inited + 96) = v36;
  v37 = sub_1005CF04C();
  *(inited + 104) = v37;
  *(inited + 72) = v28;
  *(inited + 136) = &type metadata for String;
  v38 = sub_1000053B0();
  *(inited + 112) = v31;
  *(inited + 120) = v33;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v38;
  *(inited + 152) = 608;
  v39 = v88;
  *(inited + 216) = v36;
  *(inited + 224) = v37;
  *(inited + 192) = v39;
  v40 = v28;
  v41 = v39;
  v42 = static os_log_type_t.error.getter();
  sub_100005404(v34, &_mh_execute_header, v42, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670);
  swift_arrayDestroy();
  v43 = static os_log_type_t.error.getter();
  sub_100005404(v34, &_mh_execute_header, v43, "nil storage or searchCanvasDelegate", 35, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v44 = swift_allocObject();
  v44[2] = 8;
  v44[3] = 0;
  v44[4] = 0;
  v44[5] = 0;
  v45 = __VaListBuilder.va_list()();
  StaticString.description.getter();
  v46 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v47 = String._bridgeToObjectiveC()();

  StaticString.description.getter();
  v48 = String._bridgeToObjectiveC()();

  [v26 handleFailureInFunction:v46 file:v47 lineNumber:608 isFatal:0 format:v48 args:v45];
}

void CRLWPLayout.layoutSearchForSpellingErrors(hit:stop:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC8Freeform11CRLWPLayout__columns;
  swift_beginAccess();
  if ([*&v4[v8] count] < 1)
  {
    return;
  }

  v9 = [v4 storage];
  if (!v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = [v9 range];
  v12 = v11;
  swift_unknownObjectRelease();
  if (v12 < 1)
  {
    return;
  }

  v13 = [v4 layoutController];
  if (!v13)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = [v13 canvas];

  if (v15)
  {
    v16 = [v15 delegate];

    if (v16)
    {
      v23[6] = &OBJC_PROTOCOL___CRLSearchCanvasDelegate;
      v17 = swift_dynamicCastObjCProtocolConditional();
      if (v17 && (v18 = [objc_opt_self() newSpellCheckerForStorage:*&v4[OBJC_IVAR____TtC8Freeform11CRLWPLayout_wpStorage] selectionPath:0 orSearchCanvasDelegate:v17]) != 0)
      {
        v19 = v18;
        v20 = swift_allocObject();
        v20[2] = v4;
        v20[3] = a1;
        v20[4] = a2;
        v23[4] = sub_1007A74F8;
        v23[5] = v20;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = *"";
        v23[2] = sub_1007A5954;
        v23[3] = &unk_101886BD0;
        v21 = _Block_copy(v23);
        v22 = v4;

        [v19 findErrorsInRange:v10 onHit:v12 stop:{v21, a3}];
        _Block_release(v21);
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1007A5544(void *a1, void *a2, void (*a3)(void *))
{
  if (a1)
  {
    swift_unknownObjectRetain();
    [a2 calculatePointFromSearchReference:a1];
    [a1 setSearchReferencePoint:?];
    a3(a1);

    swift_unknownObjectRelease();
  }

  else
  {
    v6 = objc_opt_self();
    v7 = [v6 _atomicIncrementAssertCount];
    v29 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v29);
    StaticString.description.getter();
    v8 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v9 = String._bridgeToObjectiveC()();

    v10 = [v9 lastPathComponent];

    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v14 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v7;
    v16 = sub_100006370(0, &qword_1019F4D30);
    *(inited + 96) = v16;
    v17 = sub_1005CF04C();
    *(inited + 104) = v17;
    *(inited + 72) = v8;
    *(inited + 136) = &type metadata for String;
    v18 = sub_1000053B0();
    *(inited + 112) = v11;
    *(inited + 120) = v13;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v18;
    *(inited + 152) = 648;
    v19 = v29;
    *(inited + 216) = v16;
    *(inited + 224) = v17;
    *(inited + 192) = v19;
    v20 = v8;
    v21 = v19;
    v22 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v22, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670);
    swift_arrayDestroy();
    v23 = static os_log_type_t.error.getter();
    sub_100005404(v14, &_mh_execute_header, v23, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v24 = swift_allocObject();
    v24[2] = 8;
    v24[3] = 0;
    v24[4] = 0;
    v24[5] = 0;
    v25 = __VaListBuilder.va_list()();
    StaticString.description.getter();
    v26 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v27 = String._bridgeToObjectiveC()();

    StaticString.description.getter();
    v28 = String._bridgeToObjectiveC()();

    [v6 handleFailureInFunction:v26 file:v27 lineNumber:648 isFatal:0 format:v28 args:v25];
  }
}

uint64_t sub_1007A5954(uint64_t a1)
{
  v1 = *(a1 + 32);

  v2 = swift_unknownObjectRetain();
  v1(v2);

  return swift_unknownObjectRelease();
}

void CRLWPLayout.rectInRoot(for:)(void *a1)
{
  v3 = [v1 layoutController];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 canvas];

    if (!v5)
    {
      goto LABEL_11;
    }

    v6 = [v5 canvasController];

    if (!v6)
    {
      goto LABEL_11;
    }

    sub_100006370(0, &qword_1019FFDF0);
    v7 = [a1 mostSpecificSelectionOfClass:swift_getObjCClassFromMetadata()];
    if (v7)
    {
      v8 = v7;
      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        goto LABEL_11;
      }

      v9 = [v1 columns];
      if (v9)
      {
        v10 = v9;
        v12 = 0;
        sub_100006370(0, &unk_1019FFD00);
        static Array._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

LABEL_11:
    v11 = type metadata accessor for CRLWPLayout();
    v13.receiver = v1;
    v13.super_class = v11;
    objc_msgSendSuper2(&v13, "rectInRootForSelectionPath:", a1);
    return;
  }

  __break(1u);
}

void CRLWPLayout.rectInRootOfAutoZoomContext(of:)(uint64_t a1)
{
  v3 = [v1 parent];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      [v5 rectInRootOfAutoZoomContextOfSelectionPath:a1];

      return;
    }
  }

  v6.receiver = v1;
  v6.super_class = type metadata accessor for CRLWPLayout();
  objc_msgSendSuper2(&v6, "rectInRootOfAutoZoomContextOfSelectionPath:", a1);
}

void CRLWPLayout.viewScaleForZooming(to:targetPointSize:)(uint64_t a1, double a2)
{
  v5 = [v2 parent];
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      [v7 viewScaleForZoomingToSelectionPath:a1 targetPointSize:a2];

      return;
    }
  }

  v8.receiver = v2;
  v8.super_class = type metadata accessor for CRLWPLayout();
  objc_msgSendSuper2(&v8, "viewScaleForZoomingToSelectionPath:targetPointSize:", a1, a2);
}

Swift::Bool __swiftcall CRLWPLayout.isOverflowing()()
{
  v1 = [v0 storage];
  if (!v1)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v2 = [v1 wpKind];
  swift_unknownObjectRelease();
  if (v2 != 3)
  {
    goto LABEL_13;
  }

  v1 = [v0 storage];
  if (!v1)
  {
    goto LABEL_16;
  }

  v3 = [v1 length];
  swift_unknownObjectRelease();
  if (v3 < 1)
  {
    goto LABEL_13;
  }

  v1 = [v0 columns];
  if (!v1)
  {
LABEL_17:
    __break(1u);
    return v1;
  }

  v4 = v1;
  v5 = [v1 lastObject];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (!*(&v10 + 1))
  {
    sub_10000CAAC(v11, &unk_1019F4D00);
    goto LABEL_13;
  }

  sub_100006370(0, &unk_1019FFD00);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:
    LOBYTE(v1) = 0;
    return v1;
  }

  v6 = [v8 layoutResultFlags];

  return (v6 >> 1) & 1;
}

id CRLWPLayout.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLWPLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id CRLWPLayout.textWrapper()()
{
  v1 = [v0 parent];
  if (v1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {
    }

    v1 = [v2 textWrapper];
  }

  return v1;
}

id CRLWPLayout.columnMetrics(forCharIndex:outRange:)()
{
  result = [v0 parent];
  if (result)
  {
    v2 = result;
    result = swift_dynamicCastObjCProtocolConditional();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void *CRLWPLayout.columns.getter()
{
  v1 = OBJC_IVAR____TtC8Freeform11CRLWPLayout__columns;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void *CRLWPLayout.storage.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform11CRLWPLayout_wpStorage);
  v2 = v1;
  return v1;
}

id CRLWPLayout.isInstructional.getter()
{
  v1 = [v0 parent];
  if (v1)
  {
    v2 = v1;
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      if ([v3 supportsInstructionalText])
      {
        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  if (![v0 parentAutosizes])
  {
LABEL_9:
    swift_unknownObjectRelease();
    return 0;
  }

LABEL_8:
  if (sub_1007A0BC4())
  {
    goto LABEL_9;
  }

  result = [v0 storage];
  if (result)
  {
    v5 = [result length];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return (v5 == 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double CRLWPLayout.minSize.getter()
{
  v1 = [v0 parent];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (!v3)
  {

LABEL_7:
    v9 = [v0 geometry];
    [v9 size];
    v7 = v10;

    return v7;
  }

  v4 = v3;
  v5 = [v0 geometry];
  [v5 size];
  v7 = v6;

  v8 = [v4 autosizeFlagsFor:v0];
  if ((v8 & 8) != 0)
  {
    return 0.0;
  }

  return v7;
}

double CRLWPLayout.maxSize.getter()
{
  v1 = [v0 parent];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (!v3)
  {

LABEL_10:
    v2 = [v0 geometry];
    [v2 size];
    v7 = v13;
LABEL_11:

    return v7;
  }

  v4 = v3;
  v5 = [v0 geometry];
  [v5 size];
  v7 = v6;

  v8 = [v0 textIsVertical];
  v9 = [v4 autosizeFlagsFor:v0];
  if ((v9 & 4) != 0)
  {
    [v4 maxAutoGrowLineWidthFor:v0];
    if (!v8)
    {
      v7 = v10;
    }
  }

  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

  [v4 maxAutoGrowBlockHeightFor:v0];
  v12 = v11;

  if (v8)
  {
    return v12;
  }

  return v7;
}

double CRLWPLayout.currentSize.getter()
{
  v1 = [v0 geometry];
  [v1 size];
  v3 = v2;

  return v3;
}

double CRLWPLayout.position.getter()
{
  v1 = [v0 geometry];
  [v1 frame];
  v3 = v2;

  return v3;
}

id sub_1007A6D1C(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 parent];
  if (v5)
  {
    v6 = v5;
    v7 = swift_dynamicCastObjCProtocolConditional();
    if (v7)
    {
      v8 = [v7 *a3];

      return v8;
    }
  }

  else
  {
  }

  return 0;
}

id sub_1007A6DCC(SEL *a1)
{
  v3 = [v1 parent];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v6 = [v5 *a1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t CRLWPLayout.naturalAlignment.getter()
{
  v1 = [v0 parent];
  if (!v1)
  {
    return 4;
  }

  v2 = v1;
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (v3)
  {
    v4 = [v3 naturalAlignmentFor:v0];
  }

  else
  {
    v4 = 4;
  }

  return v4;
}

id sub_1007A6FF4(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 parent];
  if (v5)
  {
    v6 = v5;
    v7 = swift_dynamicCastObjCProtocolConditional();
    if (v7)
    {
      v8 = [v7 *a3];

      return v8;
    }
  }

  else
  {
  }

  return 0;
}

id sub_1007A70A4(SEL *a1)
{
  v3 = [v1 parent];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (v5)
  {
    v6 = [v5 *a1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id CRLWPLayout.interiorWrapSegments.getter()
{
  result = [v0 parent];
  if (result)
  {
    v2 = result;
    v3 = swift_dynamicCastObjCProtocolConditional();
    if (v3)
    {
      v4 = [v3 interiorWrapSegmentsFor:v0];

      return v4;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void *CRLWPLayout.renderingOverrides.getter()
{
  result = [v0 layoutController];
  if (result)
  {
    v2 = result;
    v3 = [result canvas];

    v4 = [v3 canvasController];
    if (!v4)
    {
      return _swiftEmptyArrayStorage;
    }

    v5 = [v4 canvas];
    v6 = [v5 isCanvasInteractive];

    if (v6 && (v7 = [v4 renderingOverrideController], v8 = objc_msgSend(v7, "overridesForStorage:", *&v0[OBJC_IVAR____TtC8Freeform11CRLWPLayout_wpStorage]), v7, v8))
    {
      sub_100006370(0, &qword_1019FFE60);
      v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v4 = v8;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1007A7494(void *a1)
{
  v3 = *(v1 + 24);
  if (a1)
  {
    [*(v1 + 16) calculatePointFromSearchReference:a1];
    [a1 setSearchReferencePoint:?];
  }

  return v3(a1);
}

uint64_t sub_1007A7504(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1007A754C(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  _CocoaArrayWrapper.endIndex.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

void sub_1007A75EC(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CRLTextSelectionRect();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1007A7820(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1007A76F0(0, v2, 1, a1);
  }
}

void sub_1007A76F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 rect];
      v18 = sub_100120414(v14, v15, v16, v17);
      v20 = v19;
      [v13 rect];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      sub_100120414(v22, v24, v26, v28);
      if (v20 >= v29)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v30 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v30;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1007A7820(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_87:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v8 = sub_10113DE48(v8);
    }

    v135 = v5;
    v136 = *(v8 + 2);
    if (v136 >= 2)
    {
      while (*a3)
      {
        v5 = v136 - 1;
        v137 = *&v8[16 * v136];
        v138 = *&v8[16 * v136 + 24];
        sub_1007A7F10((*a3 + 8 * v137), (*a3 + 8 * *&v8[16 * v136 + 16]), (*a3 + 8 * v138), v9);
        if (v135)
        {
          goto LABEL_97;
        }

        if (v138 < v137)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10113DE48(v8);
        }

        if (v136 - 2 >= *(v8 + 2))
        {
          goto LABEL_114;
        }

        v139 = &v8[16 * v136];
        *v139 = v137;
        *(v139 + 1) = v138;
        sub_10113DDBC(v136 - 1);
        v136 = *(v8 + 2);
        if (v136 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v141 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 rect];
      v22 = sub_100120414(v18, v19, v20, v21);
      v24 = v23;
      [v17 rect];
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;

      sub_100120414(v26, v28, v30, v32);
      v34 = v33;
      v35 = v12 + 2;
      while (v6 != v35)
      {
        v36 = *(v14 - 1);
        v37 = *v14;
        v38 = v36;
        [v37 rect];
        v43 = sub_100120414(v39, v40, v41, v42);
        v45 = v44;
        [v38 rect];
        v47 = v46;
        v49 = v48;
        v51 = v50;
        v53 = v52;

        sub_100120414(v47, v49, v51, v53);
        ++v35;
        ++v14;
        if (v24 < v34 == v45 >= v54)
        {
          v6 = (v35 - 1);
          break;
        }
      }

      v9 = v12;
      if (v24 < v34)
      {
        if (v6 < v12)
        {
          goto LABEL_117;
        }

        if (v12 < v6)
        {
          v55 = 8 * v6 - 8;
          v56 = v6;
          v57 = v12;
          do
          {
            if (v57 != --v56)
            {
              v59 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v58 = *(v59 + v5);
              *(v59 + v5) = *(v59 + v55);
              *(v59 + v55) = v58;
            }

            v57 = (v57 + 1);
            v55 -= 8;
            v5 += 8;
          }

          while (v57 < v56);
        }
      }

      v10 = v6;
      v5 = v141;
    }

    v60 = a3[1];
    if (v10 < v60)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_116;
      }

      if (v10 - v9 < a4)
      {
        v61 = (v9 + a4);
        if (__OFADD__(v9, a4))
        {
          goto LABEL_118;
        }

        if (v61 >= v60)
        {
          v61 = a3[1];
        }

        if (v61 < v9)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v10 != v61)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v10 < v9)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100B355CC(0, *(v8 + 2) + 1, 1, v8);
    }

    v90 = *(v8 + 2);
    v89 = *(v8 + 3);
    v91 = v90 + 1;
    if (v90 >= v89 >> 1)
    {
      v8 = sub_100B355CC((v89 > 1), v90 + 1, 1, v8);
    }

    *(v8 + 2) = v91;
    v92 = &v8[16 * v90];
    *(v92 + 4) = v9;
    *(v92 + 5) = v10;
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    v147 = v10;
    if (v90)
    {
      while (1)
      {
        v94 = v91 - 1;
        if (v91 >= 4)
        {
          break;
        }

        if (v91 == 3)
        {
          v95 = *(v8 + 4);
          v96 = *(v8 + 5);
          v105 = __OFSUB__(v96, v95);
          v97 = v96 - v95;
          v98 = v105;
LABEL_56:
          if (v98)
          {
            goto LABEL_104;
          }

          v111 = &v8[16 * v91];
          v113 = *v111;
          v112 = *(v111 + 1);
          v114 = __OFSUB__(v112, v113);
          v115 = v112 - v113;
          v116 = v114;
          if (v114)
          {
            goto LABEL_107;
          }

          v117 = &v8[16 * v94 + 32];
          v119 = *v117;
          v118 = *(v117 + 1);
          v105 = __OFSUB__(v118, v119);
          v120 = v118 - v119;
          if (v105)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v115, v120))
          {
            goto LABEL_111;
          }

          if (v115 + v120 >= v97)
          {
            if (v97 < v120)
            {
              v94 = v91 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v121 = &v8[16 * v91];
        v123 = *v121;
        v122 = *(v121 + 1);
        v105 = __OFSUB__(v122, v123);
        v115 = v122 - v123;
        v116 = v105;
LABEL_70:
        if (v116)
        {
          goto LABEL_106;
        }

        v124 = &v8[16 * v94];
        v126 = *(v124 + 4);
        v125 = *(v124 + 5);
        v105 = __OFSUB__(v125, v126);
        v127 = v125 - v126;
        if (v105)
        {
          goto LABEL_109;
        }

        if (v127 < v115)
        {
          goto LABEL_3;
        }

LABEL_77:
        v132 = v94 - 1;
        if (v94 - 1 >= v91)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v133 = *&v8[16 * v132 + 32];
        v9 = *&v8[16 * v94 + 40];
        sub_1007A7F10((*a3 + 8 * v133), (*a3 + 8 * *&v8[16 * v94 + 32]), (*a3 + 8 * v9), v93);
        if (v5)
        {
          goto LABEL_97;
        }

        if (v9 < v133)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_10113DE48(v8);
        }

        if (v132 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v134 = &v8[16 * v132];
        *(v134 + 4) = v133;
        *(v134 + 5) = v9;
        sub_10113DDBC(v94);
        v91 = *(v8 + 2);
        if (v91 <= 1)
        {
          goto LABEL_3;
        }
      }

      v99 = &v8[16 * v91 + 32];
      v100 = *(v99 - 64);
      v101 = *(v99 - 56);
      v105 = __OFSUB__(v101, v100);
      v102 = v101 - v100;
      if (v105)
      {
        goto LABEL_102;
      }

      v104 = *(v99 - 48);
      v103 = *(v99 - 40);
      v105 = __OFSUB__(v103, v104);
      v97 = v103 - v104;
      v98 = v105;
      if (v105)
      {
        goto LABEL_103;
      }

      v106 = &v8[16 * v91];
      v108 = *v106;
      v107 = *(v106 + 1);
      v105 = __OFSUB__(v107, v108);
      v109 = v107 - v108;
      if (v105)
      {
        goto LABEL_105;
      }

      v105 = __OFADD__(v97, v109);
      v110 = v97 + v109;
      if (v105)
      {
        goto LABEL_108;
      }

      if (v110 >= v102)
      {
        v128 = &v8[16 * v94 + 32];
        v130 = *v128;
        v129 = *(v128 + 1);
        v105 = __OFSUB__(v129, v130);
        v131 = v129 - v130;
        if (v105)
        {
          goto LABEL_112;
        }

        if (v97 < v131)
        {
          v94 = v91 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v7 = v147;
    v6 = a3[1];
    if (v147 >= v6)
    {
      goto LABEL_87;
    }
  }

  v142 = v5;
  v143 = v9;
  v62 = *a3;
  v63 = *a3 + 8 * v10 - 8;
  v64 = (v9 - v10);
  v145 = v61;
LABEL_29:
  v146 = v10;
  v65 = *(v62 + 8 * v10);
  v66 = v64;
  v67 = v63;
  while (1)
  {
    v68 = *v67;
    v69 = v65;
    v70 = v68;
    [v69 rect];
    v75 = sub_100120414(v71, v72, v73, v74);
    v77 = v76;
    [v70 rect];
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;

    sub_100120414(v79, v81, v83, v85);
    if (v77 >= v86)
    {
LABEL_28:
      v10 = v146 + 1;
      v63 += 8;
      --v64;
      if ((v146 + 1) != v145)
      {
        goto LABEL_29;
      }

      v10 = v145;
      v5 = v142;
      v9 = v143;
      goto LABEL_36;
    }

    if (!v62)
    {
      break;
    }

    v87 = *v67;
    v65 = *(v67 + 8);
    *v67 = v65;
    *(v67 + 8) = v87;
    v67 -= 8;
    if (__CFADD__(v66++, 1))
    {
      goto LABEL_28;
    }
  }

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
}

uint64_t sub_1007A7F10(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v37 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v37;
    }

    v36 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v65 = v4;
LABEL_26:
      __dst = v36;
      v38 = v36 - 1;
      --v5;
      v39 = v14;
      do
      {
        v40 = v5 + 1;
        v41 = *--v39;
        v42 = v38;
        v43 = *v38;
        v44 = v41;
        v45 = v43;
        [v44 rect];
        v50 = sub_100120414(v46, v47, v48, v49);
        v52 = v51;
        [v45 rect];
        v54 = v53;
        v56 = v55;
        v58 = v57;
        v60 = v59;

        sub_100120414(v54, v56, v58, v60);
        if (v52 < v61)
        {
          v62 = v42;
          if (v40 != __dst)
          {
            *v5 = *v42;
          }

          v4 = v65;
          if (v14 <= v65 || (v36 = v62, v62 <= v6))
          {
            v36 = v62;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v40 != v14)
        {
          *v5 = *v39;
        }

        --v5;
        v14 = v39;
        v38 = v42;
      }

      while (v39 > v65);
      v14 = v39;
      v36 = __dst;
      v4 = v65;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 rect];
        v22 = sub_100120414(v18, v19, v20, v21);
        v24 = v23;
        [v17 rect];
        v26 = v25;
        v28 = v27;
        v30 = v29;
        v32 = v31;

        sub_100120414(v26, v28, v30, v32);
        if (v24 >= v33)
        {
          break;
        }

        v34 = v13;
        v35 = v6 == v13++;
        if (!v35)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v34 = v4;
      v35 = v6 == v4++;
      if (v35)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v34;
      goto LABEL_17;
    }

LABEL_19:
    v36 = v6;
  }

LABEL_37:
  if (v36 != v4 || v36 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v36, v4, 8 * (v14 - v4));
  }

  return 1;
}

uint64_t sub_1007A8228(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&qword_1019FFF38, &qword_1019FFF30);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_1019FFF30);
            v9 = sub_100777974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CRLBoardLibraryViewModelWrappedNode(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007A83B8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&qword_1019F5748, &qword_1019F5740);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_1019F5740);
            v9 = sub_100777974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CRLBoardItem(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007A8548(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&qword_101A00000, &qword_1019F4298);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_1019F4298);
            v9 = sub_100777974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100006370(0, &qword_1019FFFF0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007A86E8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&qword_101A000F0, &qword_101A000E8);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_101A000E8);
            v9 = sub_100777974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100006370(0, &qword_1019F4D70);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007A8888(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&unk_101A000D0, &qword_101A000C8);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_101A000C8);
            v9 = sub_100777974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CRLTableItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007A8A18(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&qword_101A00018, &qword_101A00010);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_101A00010);
            v9 = sub_100777974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100006370(0, &qword_1019F6D00);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007A8BB8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&unk_101A001F8, &qword_101A001F0);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_101A001F0);
            v9 = sub_100777974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100006370(0, &qword_1019F6190);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007A8D58(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&qword_1019FFF48, &qword_1019FFF40);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_1019FFF40);
            v9 = sub_100777974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CRLiOSMiniFormatterBaseLayerButton();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007A8EE8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&unk_101A00100, &qword_101A000F8);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_101A000F8);
            v9 = sub_100777A74(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CRLBoardItemDatabaseResult();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007A9078(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&qword_101A001B8, &qword_101A001B0);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_101A001B0);
            v9 = sub_100777974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CRLCommandController.CRLCommandControllerCommandGroup();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007A9208(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&unk_1019FFF10, &qword_1019FFF08);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_1019FFF08);
            v9 = sub_100777974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_100006370(0, &qword_1019F6BF0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007A93A8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&qword_1019FFF58, &qword_1019FFF50);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_1019FFF50);
            v9 = sub_100777AF4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CRLCommand();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1007A9538(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1007AB7A8(&qword_1019FFF28, &qword_1019FFF20);
          for (i = 0; i != v6; ++i)
          {
            sub_1005B981C(&qword_1019FFF20);
            v9 = sub_100777974(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for CRLFreehandDrawingItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}