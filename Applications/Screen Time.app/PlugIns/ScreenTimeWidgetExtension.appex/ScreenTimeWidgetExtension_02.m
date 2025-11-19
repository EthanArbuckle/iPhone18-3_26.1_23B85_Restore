unint64_t sub_10002B7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v96 = a4;
  v91 = a2;
  v95 = a1;
  v88 = type metadata accessor for HourlyUsage();
  v87 = *(v88 - 8);
  v12 = *(v87 + 64);
  __chkstk_darwin(v88);
  v104 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_10004A2F8();
  v14 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v89 = &v75 - v15;
  v92 = a7;
  v93 = a8;
  v16 = sub_10004A2E8();
  v102 = *(v16 - 8);
  v17 = v102[8];
  __chkstk_darwin(v16);
  v19 = &v75 - v18;
  v20 = sub_100049058();
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v106 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v105 = &v75 - v24;
  v86 = sub_100048E98();
  v101 = *(v86 - 8);
  v25 = *(v101 + 64);
  __chkstk_darwin(v86);
  v99 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000027D4(&qword_10005DBC0, &qword_10004B780);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = __chkstk_darwin(v27);
  v98 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v94 = &v75 - v32;
  v33 = sub_1000027D4(&qword_10005E158, &unk_10004B9F0);
  v34 = v33 - 8;
  v35 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33);
  v37 = &v75 - v36;
  v38 = sub_100049498();
  (*(*(v38 - 8) + 16))(v37, a5, v38);
  v39 = *(v34 + 44);
  v40 = sub_10002C538(&qword_10005DE30, &type metadata accessor for DateBins);
  sub_10004A018();
  v97 = v38;
  v41 = v40;
  sub_10004A038();
  v100 = v37;
  if (*&v37[v39] == v107)
  {
    v42 = _swiftEmptyArrayStorage;
    v43 = v100;
LABEL_3:
    sub_100005664(v43, &qword_10005E158, &unk_10004B9F0);
    return v42;
  }

  else
  {
    v83 = v16;
    v103 = (v28 + 16);
    v84 = (v28 + 32);
    v80 = (v102 + 1);
    v79 = (v101 + 8);
    v78 = (v28 + 8);
    v76 = 8 * a3;
    v42 = _swiftEmptyArrayStorage;
    v46 = v98;
    v45 = v99;
    v85 = a3;
    v82 = v39;
    v81 = v41;
    while (1)
    {
      v102 = v42;
      v47 = sub_10004A058();
      v48 = v94;
      v101 = *v103;
      (v101)(v94);
      v47(&v107, 0);
      sub_10004A048();
      (*v84)(v46, v48, v27);
      sub_100049318();
      sub_100049328();
      sub_100048E78();
      v49 = v95;
      if (!*(v95 + 16))
      {
        goto LABEL_8;
      }

      v50 = sub_1000243B8(v45);
      if (v51)
      {
        v52 = *(*(v49 + 56) + 8 * v50);
      }

      else
      {
LABEL_8:
        result = sub_100029E5C(_swiftEmptyArrayStorage);
        v52 = result;
      }

      v53 = v96;
      v54 = 0;
      v55 = v85;
      if (*(v96 + 16))
      {
        result = sub_1000243B8(v45);
        v56 = v83;
        if (v57)
        {
          v54 = *(*(v53 + 56) + 8 * result);
        }
      }

      else
      {
        v56 = v83;
      }

      if (v55 < 0)
      {
        break;
      }

      if (v55)
      {
        v58 = sub_100049F68();
        *(v58 + 2) = v55;
        bzero(v58 + 32, v76);
      }

      else
      {
        v58 = _swiftEmptyArrayStorage;
      }

      sub_100049F08();
      sub_10004A2C8();
      sub_10004A2D8();
      if (v108)
      {
        v59 = v107;
        v60 = v109;
        v61 = v110;
        v77 = v58 + 32;
        v62 = 1.0;
        while (1)
        {
          if (*(v52 + 16) && (, v63 = sub_100024340(v60, v61), v65 = v64, , (v65 & 1) != 0))
          {
            v66 = *(*(v52 + 56) + 8 * v63);

            if ((v59 & 0x8000000000000000) != 0)
            {
              goto LABEL_39;
            }

            if (v59 >= *(v58 + 2))
            {
              goto LABEL_40;
            }

            *&v77[v59] = v66;
            v62 = v62 - v66;
          }

          else
          {
          }

          sub_10004A2D8();
          v59 = v107;
          v60 = v109;
          v61 = v110;
          if (!v108)
          {
            goto LABEL_28;
          }
        }
      }

      v62 = 1.0;
LABEL_28:
      (*v80)(v19, v56);

      if (v62 <= 0.0)
      {
        v62 = 0.0;
      }

      v68 = *(v58 + 2);
      v67 = *(v58 + 3);
      if (v68 >= v67 >> 1)
      {
        v58 = sub_1000232F8((v67 > 1), v68 + 1, 1, v58);
      }

      v42 = v102;
      *(v58 + 2) = v68 + 1;
      *&v58[8 * v68 + 32] = v62;
      v69 = v98;
      v45 = v99;
      sub_100049318();
      sub_100049328();
      v70 = v104;
      v46 = v69;
      sub_100048E78();
      v71 = v88;
      (v101)(v70 + *(v88 + 24), v46, v27);
      *(v70 + *(v71 + 20)) = v54;
      *(v70 + *(v71 + 28)) = v58;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_100023424(0, v42[2] + 1, 1, v42, &qword_10005E160, &qword_10004BA00, type metadata accessor for HourlyUsage);
      }

      v43 = v100;
      v72 = v82;
      v74 = v42[2];
      v73 = v42[3];
      if (v74 >= v73 >> 1)
      {
        v42 = sub_100023424(v73 > 1, v74 + 1, 1, v42, &qword_10005E160, &qword_10004BA00, type metadata accessor for HourlyUsage);
      }

      (*v79)(v45, v86);
      (*v78)(v46, v27);
      v42[2] = v74 + 1;
      sub_10002C4A0(v104, v42 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v74, type metadata accessor for HourlyUsage);
      sub_10004A038();
      if (*(v43 + v72) == v107)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
  }

  return result;
}

uint64_t sub_10002C258(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10002C268()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10002C2A0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  *a1 = v3;
  a1[1] = v2;
  a1[2] = 0;
  a1[3] = v3;
  a1[4] = v2;
  a1[5] = 2;
  return swift_bridgeObjectRetain_n();
}

double sub_10002C2E0@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3(v7);
  v5 = v7[1];
  *a1 = v7[0];
  a1[1] = v5;
  result = *&v8;
  a1[2] = v8;
  return result;
}

uint64_t sub_10002C334()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10002C37C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  *a2 = v2[2];
  a2[1] = v3;
  a2[2] = 0;
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = a1;
}

uint64_t sub_10002C3E8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_10002C454()
{
  result = qword_10005E218;
  if (!qword_10005E218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005E218);
  }

  return result;
}

uint64_t sub_10002C4A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002C538(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10002C580()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  v3 = *(v0 + 72);

  return _swift_deallocObject(v0, 81, 7);
}

__n128 sub_10002C608(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10002C62C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 65))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_10002C688(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 sub_10002C700(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_10002C714(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_10002C75C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsageProviderError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for UsageProviderError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_10002C8A8()
{
  result = qword_10005E240;
  if (!qword_10005E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E240);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for MostUsedItemsPlaceholderMedium(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MostUsedItemsPlaceholderMedium(uint64_t a1, unsigned int a2)
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
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MostUsedItemsPlaceholderMedium(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10002CA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10002CAE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_10002CBCC()
{
  sub_100033F08(319, &unk_10005DA20, &type metadata accessor for WidgetRenderingMode);
  if (v0 <= 0x3F)
  {
    sub_10002CC74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10002CC74()
{
  if (!qword_10005D768)
  {
    v0 = sub_100049F78();
    if (!v1)
    {
      atomic_store(v0, &qword_10005D768);
    }
  }
}

uint64_t sub_10002CCD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_10002CDC4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2 + 1;
  }

  return result;
}

void sub_10002CEA8()
{
  sub_100033F08(319, &unk_10005DA20, &type metadata accessor for WidgetRenderingMode);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

char *sub_10002CF60(char *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_100049B48();
      v5 = sub_100049F68();
      *(v5 + 2) = a2;
      v6 = *(v4 - 8);
      v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v8 = *(v6 + 16);
      v8(&v5[v7], v3, v4);
      v9 = a2 - 1;
      if (a2 != 1)
      {
        v10 = *(v6 + 72);
        v11 = &v5[v10 + v7];
        do
        {
          v8(v11, v3, v4);
          v11 += v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      v5 = &_swiftEmptyArrayStorage;
    }

    v12 = sub_100049B48();
    (*(*(v12 - 8) + 8))(v3, v12);
    return v5;
  }

  return result;
}

double sub_10002D0BC@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_1000497F8();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v5 = sub_100049B38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_100049B48();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = xmmword_10004BC20;
  (*(v6 + 104))(v9, enum case for GridItem.Size.flexible(_:), v5);
  sub_100049B58();
  v14 = type metadata accessor for MostUsedItemsLarge(0);
  v15 = *(v1 + *(v14 + 24));
  sub_10002CF60(v13, v15);
  v16 = *(v1 + *(v14 + 20));
  v17 = sub_10002D3F0(v15, v16);
  sub_100049798();
  v23 = v17;
  v24 = 0;
  sub_100032724(&qword_10005E420, &type metadata accessor for PinnedScrollableViews);
  sub_10004A458();
  sub_1000027D4(&qword_10005E428, &qword_10004BF78);
  sub_100034114(&qword_10005E430, &qword_10005E428, &qword_10004BF78, sub_100032988);
  sub_100049B98();

  v18 = sub_100049B88();
  v19 = (a1 + *(sub_1000027D4(&qword_10005E448, &qword_10004BF88) + 36));
  *v19 = v18;
  v19[1] = v16;

  LOBYTE(v18) = sub_100049898();
  v20 = a1 + *(sub_1000027D4(&qword_10005E450, &qword_10004BF90) + 36);
  *v20 = v18;
  result = 0.0;
  *(v20 + 8) = 0u;
  *(v20 + 24) = 0u;
  *(v20 + 40) = 1;
  return result;
}

char *sub_10002D3F0(char *result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = ceil(v2 / result);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v4 = v3;
  if (v3 < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4)
  {
    if (!v2)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (v2 < v4)
    {
LABEL_27:
      __break(1u);
      return result;
    }

    v35 = *(a2 + 16);
    v6 = sub_100023600(0, 1, 1, &_swiftEmptyArrayStorage);
    v7 = 0;
    v33 = a2 + 32;
    v8 = (a2 + 80);
    v36 = v4;
    while (1)
    {
      v12 = *(v8 - 6);
      v11 = *(v8 - 5);
      v13 = *(v8 - 4);
      v14 = *(v8 - 3);
      v15 = *(v8 - 2);
      v16 = *v8;
      v18 = *(v6 + 2);
      v17 = *(v6 + 3);
      v37 = *(v8 - 1);
      v39 = v18 + 1;

      v19 = v13;
      v20 = v14;

      if (v18 >= v17 >> 1)
      {
        result = sub_100023600((v17 > 1), v39, 1, v6);
        v6 = result;
      }

      *(v6 + 2) = v39;
      v21 = &v6[56 * v18];
      *(v21 + 4) = v12;
      *(v21 + 5) = v11;
      *(v21 + 6) = v19;
      *(v21 + 7) = v20;
      *(v21 + 8) = v15;
      *(v21 + 9) = v37;
      *(v21 + 10) = v16;
      v10 = v36;
      v22 = v36 + v7;
      if (__OFADD__(v36, v7))
      {
        break;
      }

      if (v22 < v35)
      {
        if (v22 < 0)
        {
          goto LABEL_21;
        }

        v23 = (v33 + 56 * v22);
        v24 = v23[1];
        v38 = *v23;
        v25 = v23[2];
        v26 = v23[3];
        v27 = v23[4];
        v28 = v23[6];
        v34 = v23[5];
        v29 = *(v6 + 3);
        v30 = v18 + 2;

        v31 = v25;
        v32 = v26;

        if (v30 > (v29 >> 1))
        {
          v6 = sub_100023600((v29 > 1), v30, 1, v6);
        }

        *(v6 + 2) = v30;
        v9 = &v6[56 * v39];
        *(v9 + 4) = v38;
        *(v9 + 5) = v24;
        *(v9 + 6) = v31;
        *(v9 + 7) = v32;
        *(v9 + 8) = v27;
        *(v9 + 9) = v34;
        *(v9 + 10) = v28;
        v10 = v36;
      }

      ++v7;
      v8 += 7;
      if (v10 == v7)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t sub_10002D654(uint64_t a1)
{
  sub_10000502C(a1);
  swift_getKeyPath();
  sub_1000027D4(&qword_10005E380, &qword_10004BE80);
  sub_1000027D4(&qword_10005E440, &qword_10004BF80);
  sub_100005708(&qword_10005E390, &qword_10005E380, &qword_10004BE80);
  sub_100032988();
  return sub_100049B28();
}

__n128 sub_10002D74C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a3;
  v62 = sub_100049818();
  v61 = *(v62 - 8);
  v5 = *(v61 + 64);
  __chkstk_darwin(v62);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MostUsedItemCell(0);
  v9 = *(*(v8 - 1) + 64);
  __chkstk_darwin(v8);
  v11 = (&v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_1000027D4(&qword_10005E3A0, &qword_10004BE90);
  v12 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v14 = &v56 - v13;
  v59 = sub_1000027D4(&qword_10005E3D0, &qword_10004BEB0);
  v60 = *(v59 - 8);
  v15 = *(v60 + 64);
  __chkstk_darwin(v59);
  v17 = &v56 - v16;
  v57 = sub_1000027D4(&qword_10005E388, &qword_10004BE88);
  v18 = *(*(v57 - 8) + 64);
  v19 = __chkstk_darwin(v57);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v56 - v23;
  __chkstk_darwin(v22);
  v63 = &v56 - v25;
  *v11 = swift_getKeyPath();
  sub_1000027D4(&qword_10005E3D8, &qword_10004BEE8);
  swift_storeEnumTagMultiPayload();
  *(v11 + v8[5]) = swift_getKeyPath();
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  swift_storeEnumTagMultiPayload();
  v26 = v11 + v8[6];
  v27 = *(a2 + 16);
  *v26 = *a2;
  *(v26 + 1) = v27;
  *(v26 + 2) = *(a2 + 32);
  *(v26 + 6) = *(a2 + 48);
  *(v11 + v8[7]) = a1;
  strcpy(v66, "MostUsedItem");
  HIBYTE(v66[6]) = 0;
  v66[7] = -5120;
  v65 = a1;
  sub_100032778(a2, v67);
  v68._countAndFlagsBits = sub_10004A378();
  sub_100049E68(v68);

  sub_100032724(&qword_10005E3B0, type metadata accessor for MostUsedItemCell);
  sub_100049A48();

  sub_100032920(v11, type metadata accessor for MostUsedItemCell);
  sub_100049808();
  v28 = sub_100032618();
  v29 = v58;
  sub_100049A38();
  (*(v61 + 8))(v7, v62);
  sub_100005664(v14, &qword_10005E3A0, &qword_10004BE90);
  v30 = *(a2 + 32);
  *&v67[0] = v29;
  *(&v67[0] + 1) = v28;
  swift_getOpaqueTypeConformance2();
  v31 = v59;
  sub_100049A58();
  (*(v60 + 8))(v17, v31);
  v32 = *(a2 + 48);
  *&v67[0] = *(a2 + 40);
  *(&v67[0] + 1) = v32;
  sub_100005540();

  v33 = sub_100049938();
  v35 = v34;
  LOBYTE(v14) = v36;
  sub_100049558();
  sub_1000036D0(v33, v35, v14 & 1);

  sub_100005664(v21, &qword_10005E388, &qword_10004BE88);
  if (v30 < 0.0)
  {
    goto LABEL_9;
  }

  if (qword_10005D6E0 != -1)
  {
    swift_once();
  }

  v37 = qword_10005ED10;
  v38 = v30 < 60.0 ? 128 : 96;
  [qword_10005ED10 setAllowedUnits:v38];
  [v37 setUnitsStyle:3];
  v39 = [v37 stringFromTimeInterval:v30];
  if (v39)
  {
    v40 = v39;
    v41 = sub_100049E08();
    v43 = v42;
  }

  else
  {
LABEL_9:
    v41 = 0;
    v43 = 0xE000000000000000;
  }

  if (sub_100049E58())
  {
    *&v67[0] = v41;
    *(&v67[0] + 1) = v43;
    v44 = sub_100049938();
  }

  else
  {

    sub_100049748();
    v44 = sub_100049928();
  }

  v47 = v44;
  v48 = v45;
  v49 = v46;
  v50 = v63;
  sub_100049568();
  sub_1000036D0(v47, v48, v49 & 1);

  sub_100005664(v24, &qword_10005E388, &qword_10004BE88);
  sub_100049B78();
  sub_100049598();
  v51 = v64;
  sub_100004DF8(v50, v64, &qword_10005E388, &qword_10004BE88);
  v52 = v51 + *(sub_1000027D4(&qword_10005E440, &qword_10004BF80) + 36);
  v53 = v67[5];
  *(v52 + 64) = v67[4];
  *(v52 + 80) = v53;
  *(v52 + 96) = v67[6];
  v54 = v67[1];
  *v52 = v67[0];
  *(v52 + 16) = v54;
  result = v67[3];
  *(v52 + 32) = v67[2];
  *(v52 + 48) = result;
  return result;
}

double sub_10002DF18@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v5[0] = *(a1 + 8);
  v5[1] = v3;
  v5[2] = *(a1 + 40);
  v6 = *(a1 + 56);
  *&result = sub_10002D74C(v2, v5, a2).n128_u64[0];
  return result;
}

double sub_10002DF64@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_100049798();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v4 = *(sub_1000027D4(&qword_10005E378, &qword_10004BE50) + 44);
  sub_10000502C(a1);
  swift_getKeyPath();
  sub_1000027D4(&qword_10005E380, &qword_10004BE80);
  sub_1000027D4(&qword_10005E388, &qword_10004BE88);
  sub_100005708(&qword_10005E390, &qword_10005E380, &qword_10004BE80);
  sub_100032520();
  sub_100049B28();
  v5 = sub_100049B88();
  v6 = (a2 + *(sub_1000027D4(&qword_10005E3B8, &qword_10004BE98) + 36));
  *v6 = v5;
  v6[1] = a1;

  LOBYTE(a1) = sub_1000498B8();
  sub_1000494E8();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a2 + *(sub_1000027D4(&qword_10005E3C0, &qword_10004BEA0) + 36);
  *v15 = a1;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  LOBYTE(a1) = sub_1000498C8();
  v16 = a2 + *(sub_1000027D4(&qword_10005E3C8, &qword_10004BEA8) + 36);
  *v16 = a1;
  result = 0.0;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  *(v16 + 40) = 1;
  return result;
}

uint64_t sub_10002E15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v61 = a3;
  v5 = sub_100049818();
  v59 = *(v5 - 8);
  v60 = v5;
  v6 = *(v59 + 64);
  __chkstk_darwin(v5);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MostUsedItemCell(0);
  v10 = *(*(v9 - 1) + 64);
  __chkstk_darwin(v9);
  v12 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = sub_1000027D4(&qword_10005E3A0, &qword_10004BE90);
  v13 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v15 = &v54 - v14;
  v16 = sub_1000027D4(&qword_10005E3D0, &qword_10004BEB0);
  v17 = *(v16 - 8);
  v57 = v16;
  v58 = v17;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v54 - v19;
  v21 = sub_1000027D4(&qword_10005E388, &qword_10004BE88);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21);
  v54 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v55 = &v54 - v25;
  *v12 = swift_getKeyPath();
  sub_1000027D4(&qword_10005E3D8, &qword_10004BEE8);
  swift_storeEnumTagMultiPayload();
  *(v12 + v9[5]) = swift_getKeyPath();
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  swift_storeEnumTagMultiPayload();
  v26 = v12 + v9[6];
  v27 = *(a2 + 16);
  *v26 = *a2;
  *(v26 + 1) = v27;
  *(v26 + 2) = *(a2 + 32);
  *(v26 + 6) = *(a2 + 48);
  *(v12 + v9[7]) = a1;
  strcpy(v65, "MostUsedItem");
  HIBYTE(v65[6]) = 0;
  v65[7] = -5120;
  v64 = a1;
  sub_100032778(a2, &v62);
  v66._countAndFlagsBits = sub_10004A378();
  sub_100049E68(v66);

  sub_100032724(&qword_10005E3B0, type metadata accessor for MostUsedItemCell);
  sub_100049A48();

  sub_100032920(v12, type metadata accessor for MostUsedItemCell);
  sub_100049808();
  v28 = sub_100032618();
  v29 = v56;
  sub_100049A38();
  (*(v59 + 8))(v8, v60);
  sub_100005664(v15, &qword_10005E3A0, &qword_10004BE90);
  v30 = *(a2 + 32);
  v62 = v29;
  v63 = v28;
  swift_getOpaqueTypeConformance2();
  v31 = v54;
  v32 = v57;
  sub_100049A58();
  v33 = v20;
  v34 = v55;
  (*(v58 + 8))(v33, v32);
  v35 = *(a2 + 48);
  v62 = *(a2 + 40);
  v63 = v35;
  sub_100005540();

  v36 = sub_100049938();
  v38 = v37;
  LOBYTE(a2) = v39;
  sub_100049558();
  sub_1000036D0(v36, v38, a2 & 1);

  sub_100005664(v31, &qword_10005E388, &qword_10004BE88);
  if (v30 < 0.0)
  {
    goto LABEL_9;
  }

  if (qword_10005D6E0 != -1)
  {
    swift_once();
  }

  v40 = qword_10005ED10;
  v41 = v30 < 60.0 ? 128 : 96;
  [qword_10005ED10 setAllowedUnits:v41];
  [v40 setUnitsStyle:3];
  v42 = [v40 stringFromTimeInterval:v30];
  if (v42)
  {
    v43 = v42;
    v44 = sub_100049E08();
    v46 = v45;
  }

  else
  {
LABEL_9:
    v44 = 0;
    v46 = 0xE000000000000000;
  }

  if (sub_100049E58())
  {
    v62 = v44;
    v63 = v46;
    v47 = sub_100049938();
  }

  else
  {

    sub_100049748();
    v47 = sub_100049928();
  }

  v50 = v47;
  v51 = v48;
  v52 = v49;
  sub_100049568();
  sub_1000036D0(v50, v51, v52 & 1);

  return sub_100005664(v34, &qword_10005E388, &qword_10004BE88);
}

uint64_t sub_10002E81C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v5[0] = *(a1 + 8);
  v5[1] = v3;
  v5[2] = *(a1 + 40);
  v6 = *(a1 + 56);
  return sub_10002E15C(v2, v5, a2);
}

uint64_t sub_10002E88C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100049708();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for MostUsedItemCell(0);
  sub_1000055FC(v1 + *(v12 + 20), v11, &qword_10005DA60, &qword_10004B650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100049C78();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10004A098();
    v16 = sub_100049858();
    sub_100049298();

    sub_1000496F8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10002EA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v44 = a2;
  v2 = sub_1000027D4(&qword_10005E650, &qword_10004C1F0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v43 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v41 - v6;
  v8 = sub_100049CB8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v41 - v14;
  v16 = type metadata accessor for AppIcon(0);
  v17 = (v16 - 8);
  v18 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16);
  v42 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = (&v41 - v22);
  __chkstk_darwin(v21);
  v25 = &v41 - v24;
  sub_10002FBEC(&qword_10005E3D8, &qword_10004BEE8, &type metadata accessor for WidgetFamily, v15);
  (*(v9 + 104))(v13, enum case for WidgetFamily.systemMedium(_:), v8);
  sub_100032724(&qword_10005DE08, &type metadata accessor for WidgetFamily);
  sub_100049F38();
  sub_100049F38();
  v26 = *(v9 + 8);
  v26(v13, v8);
  v26(v15, v8);
  if (v46 == v45)
  {
    v27 = 20.0;
  }

  else
  {
    v27 = 29.0;
  }

  v28 = type metadata accessor for MostUsedItemCell(0);
  v29 = v41;
  v30 = v41 + *(v28 + 24);
  v32 = *(v30 + 16);
  v31 = *(v30 + 24);
  *v23 = swift_getKeyPath();
  sub_1000027D4(&qword_10005E658, &qword_10004C640);
  swift_storeEnumTagMultiPayload();
  *(v23 + v17[7]) = v27;
  *(v23 + v17[8]) = v31;
  *(v23 + v17[9]) = v32;
  sub_100033A48(v23, v25, type metadata accessor for AppIcon);
  v33 = v31;
  v34 = v32;
  *v7 = sub_100049798();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v35 = sub_1000027D4(&qword_10005E660, &qword_10004C230);
  sub_10002EF18(v29, &v7[*(v35 + 44)]);
  v36 = v42;
  sub_100032A14(v25, v42, type metadata accessor for AppIcon);
  v37 = v43;
  sub_1000055FC(v7, v43, &qword_10005E650, &qword_10004C1F0);
  v38 = v44;
  sub_100032A14(v36, v44, type metadata accessor for AppIcon);
  v39 = sub_1000027D4(&qword_10005E668, &qword_10004C238);
  sub_1000055FC(v37, v38 + *(v39 + 48), &qword_10005E650, &qword_10004C1F0);
  sub_100005664(v7, &qword_10005E650, &qword_10004C1F0);
  sub_100032920(v25, type metadata accessor for AppIcon);
  sub_100005664(v37, &qword_10005E650, &qword_10004C1F0);
  return sub_100032920(v36, type metadata accessor for AppIcon);
}

uint64_t sub_10002EF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v3 = sub_100049C78();
  v71 = *(v3 - 8);
  v72 = v3;
  v4 = *(v71 + 64);
  __chkstk_darwin(v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000027D4(&qword_10005E670, &qword_10004C240);
  v64 = *(v7 - 8);
  v65 = v7;
  v8 = *(v64 + 64);
  v9 = __chkstk_darwin(v7);
  v69 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v73 = &v63 - v11;
  v12 = sub_100049CB8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v63 - v18;
  v20 = sub_1000027D4(&qword_10005E678, &qword_10004C248);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v68 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v25 = &v63 - v24;
  v26 = a1;
  sub_10002FBEC(&qword_10005E3D8, &qword_10004BEE8, &type metadata accessor for WidgetFamily, v19);
  (*(v13 + 104))(v17, enum case for WidgetFamily.systemLarge(_:), v12);
  sub_100032724(&qword_10005DE08, &type metadata accessor for WidgetFamily);
  sub_100049F38();
  sub_100049F38();
  v27 = *(v13 + 8);
  v27(v17, v12);
  v27(v19, v12);
  v66 = v6;
  if (v82 == v77)
  {
    v28 = type metadata accessor for MostUsedItemCell(0);
    v29 = a1 + *(v28 + 24);
    v30 = *(v29 + 48);
    *&v82 = *(v29 + 40);
    *(&v82 + 1) = v30;
    sub_100005540();

    v31 = sub_100049938();
    v33 = v32;
    v35 = v34;
    v37 = v36;
    v63 = v26;
    sub_10002E88C(v6);
    sub_10002F820(1, v31, v33, v37, v74);
    sub_1000036D0(v31, v33, v35 & 1);

    (*(v71 + 8))(v6, v72);
    v80 = v74[3];
    v81 = v75;
    v78 = v74[1];
    v79 = v74[2];
    v77 = v74[0];
    *&v82 = 0;
    *(&v82 + 1) = 0xE000000000000000;
    sub_10004A1D8(27);

    *&v82 = 0xD000000000000019;
    *(&v82 + 1) = 0x8000000100053BD0;
    v76 = *(v26 + *(v28 + 28));
    v89._countAndFlagsBits = sub_10004A378();
    sub_100049E68(v89);

    sub_1000027D4(&qword_10005E680, &qword_10004C250);
    sub_100033AB0();
    v38 = v73;
    sub_100049A48();

    v84 = v79;
    v85 = v80;
    v86 = v81;
    v82 = v77;
    v83 = v78;
    sub_100005664(&v82, &qword_10005E680, &qword_10004C250);
    sub_100004DF8(v38, v25, &qword_10005E670, &qword_10004C240);
    (*(v64 + 56))(v25, 0, 1, v65);
    v26 = v63;
  }

  else
  {
    (*(v64 + 56))(v25, 1, 1, v65);
  }

  v65 = type metadata accessor for MostUsedItemCell(0);
  v39 = *(v26 + *(v65 + 24) + 32);
  v67 = v25;
  if (v39 >= 0.0)
  {
    if (qword_10005D6E0 != -1)
    {
      swift_once();
    }

    v43 = qword_10005ED10;
    if (v39 < 60.0)
    {
      v44 = 128;
    }

    else
    {
      v44 = 96;
    }

    [qword_10005ED10 setAllowedUnits:v44];
    [v43 setUnitsStyle:1];
    v45 = [v43 stringFromTimeInterval:v39];
    v42 = v26;
    if (v45)
    {
      v46 = v45;
      v41 = sub_100049E08();
      v40 = v47;
    }

    else
    {
      v41 = 0;
      v40 = 0xE000000000000000;
    }
  }

  else
  {
    v40 = 0xE200000000000000;
    v41 = 11565;
    v42 = v26;
  }

  *&v82 = v41;
  *(&v82 + 1) = v40;
  sub_100005540();
  v48 = sub_100049938();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v55 = v66;
  sub_10002E88C(v66);
  sub_10002F820(0, v48, v50, v54, v87);
  sub_1000036D0(v48, v50, v52 & 1);

  (*(v71 + 8))(v55, v72);
  v80 = v87[3];
  v81 = v88;
  v78 = v87[1];
  v79 = v87[2];
  v77 = v87[0];
  *&v82 = 0;
  *(&v82 + 1) = 0xE000000000000000;
  sub_10004A1D8(24);

  *&v82 = 0xD000000000000016;
  *(&v82 + 1) = 0x8000000100053BB0;
  v76 = *(v42 + *(v65 + 28));
  v90._countAndFlagsBits = sub_10004A378();
  sub_100049E68(v90);

  sub_1000027D4(&qword_10005E680, &qword_10004C250);
  sub_100033AB0();
  v56 = v69;
  sub_100049A48();

  v84 = v79;
  v85 = v80;
  v86 = v81;
  v82 = v77;
  v83 = v78;
  sub_100005664(&v82, &qword_10005E680, &qword_10004C250);
  v58 = v67;
  v57 = v68;
  sub_1000055FC(v67, v68, &qword_10005E678, &qword_10004C248);
  v59 = v73;
  sub_1000055FC(v56, v73, &qword_10005E670, &qword_10004C240);
  v60 = v70;
  sub_1000055FC(v57, v70, &qword_10005E678, &qword_10004C248);
  v61 = sub_1000027D4(&qword_10005E6B0, &qword_10004C270);
  sub_1000055FC(v59, v60 + *(v61 + 48), &qword_10005E670, &qword_10004C240);
  sub_100005664(v56, &qword_10005E670, &qword_10004C240);
  sub_100005664(v58, &qword_10005E678, &qword_10004C248);
  sub_100005664(v59, &qword_10005E670, &qword_10004C240);
  return sub_100005664(v57, &qword_10005E678, &qword_10004C248);
}

uint64_t sub_10002F820@<X0>(char a1@<W0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v50 = a3;
  v51 = a4;
  v49 = a2;
  v7 = sub_100049A68();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100049C78();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100049C68();
  v17 = sub_100049C58();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    (*(v8 + 104))(v11, enum case for Color.RGBColorSpace.sRGB(_:), v7);
    sub_100049A98();
    v18 = sub_100049A88();

    if (a1)
    {
      sub_1000498F8();
    }

    else
    {
      sub_1000498E8();
    }

    v20 = sub_100049918();
    v22 = v21;
    v24 = v23;

    v48 = v18;
    if (a1)
    {
      v25 = [objc_opt_self() labelColor];
      sub_100049AA8();
    }

    else
    {
    }

    v42 = sub_100049908();
    v34 = v43;
    v36 = v44;
    v38 = v45;

    v39 = v24 & 1;
    v32 = v42;
    v40 = v20;
    v41 = v22;
  }

  else
  {
    if (a1)
    {
      v19 = &selRef_labelColor;
      sub_1000498F8();
    }

    else
    {
      v19 = &selRef_tertiaryLabelColor;
      sub_1000498E8();
    }

    v26 = sub_100049918();
    v28 = v27;
    v30 = v29;

    v31 = [objc_opt_self() *v19];
    sub_100049AA8();
    v32 = sub_100049908();
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v39 = v30 & 1;
    v40 = v26;
    v41 = v28;
  }

  sub_1000036D0(v40, v41, v39);

  KeyPath = swift_getKeyPath();
  result = swift_getKeyPath();
  *a5 = v32;
  *(a5 + 8) = v34;
  *(a5 + 16) = v36 & 1;
  *(a5 + 24) = v38;
  *(a5 + 32) = KeyPath;
  *(a5 + 40) = 1;
  *(a5 + 48) = result;
  *(a5 + 56) = 1;
  *(a5 + 64) = 0;
  return result;
}

uint64_t sub_10002FBEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_100049708();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000027D4(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - v17);
  sub_1000055FC(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_10004A098();
    v22 = sub_100049858();
    sub_100049298();

    sub_1000496F8();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_10002FDEC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_100049738();
  *(a1 + 8) = 0x4028000000000000;
  *(a1 + 16) = 0;
  v3 = sub_1000027D4(&qword_10005E648, &qword_10004C1E8);
  return sub_10002EA9C(v1, a1 + *(v3 + 44));
}

uint64_t sub_10002FE40@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = sub_1000027D4(&qword_10005E828, &qword_10004C438);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v51 = &v43 - v4;
  v5 = sub_100049AC8();
  v45 = *(v5 - 8);
  v46 = v5;
  v6 = *(v45 + 64);
  __chkstk_darwin(v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100049508();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v43 - v15;
  v17 = sub_1000027D4(&qword_10005E830, &qword_10004C440);
  v49 = *(v17 - 8);
  v50 = v17;
  v18 = *(v49 + 64);
  __chkstk_darwin(v17);
  v44 = &v43 - v19;
  v20 = sub_1000027D4(&qword_10005E838, &qword_10004C448);
  v21 = *(v20 - 8);
  v48 = v20 - 8;
  v22 = *(v21 + 64);
  __chkstk_darwin(v20 - 8);
  v24 = &v43 - v23;
  v47 = sub_1000027D4(&qword_10005E840, &unk_10004C450);
  v25 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v27 = &v43 - v26;
  sub_10002FBEC(&qword_10005E658, &qword_10004C640, &type metadata accessor for ColorScheme, v16);
  (*(v10 + 104))(v14, enum case for ColorScheme.light(_:), v9);
  v28 = sub_1000494F8();
  v29 = *(v10 + 8);
  v29(v14, v9);
  v29(v16, v9);
  v30 = type metadata accessor for AppIcon(0);
  v31 = v30;
  v32 = 28;
  if (v28)
  {
    v32 = 24;
  }

  v33 = *(v1 + *(v30 + v32));
  sub_100049AB8();
  v35 = v45;
  v34 = v46;
  (*(v45 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v46);
  sub_100049AE8();

  (*(v35 + 8))(v8, v34);
  v36 = v51;
  sub_100049C88();
  v37 = sub_100049CA8();
  (*(*(v37 - 8) + 56))(v36, 0, 1, v37);
  v38 = v44;
  sub_100049AD8();

  sub_100005664(v36, &qword_10005E828, &qword_10004C438);
  v39 = *(v1 + *(v31 + 20));
  sub_100049B68();
  sub_100049528();
  (*(v49 + 32))(v24, v38, v50);
  v40 = &v24[*(v48 + 44)];
  v41 = v54;
  *v40 = v53;
  *(v40 + 1) = v41;
  *(v40 + 2) = v55;
  sub_100004DF8(v24, v27, &qword_10005E838, &qword_10004C448);
  v27[*(v47 + 36)] = 1;
  sub_1000341AC();
  sub_100049998();
  return sub_100005664(v27, &qword_10005E840, &unk_10004C450);
}

uint64_t sub_100030380(uint64_t a1, uint64_t a2, char a3)
{
  v4 = type metadata accessor for MostUsedItemNoContentView(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_1000027D4(&qword_10005E418, &qword_10004BF70);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  if (a3)
  {
    *v11 = 1;
    swift_storeEnumTagMultiPayload();
    sub_1000328AC();
    sub_100032724(&qword_10005E400, type metadata accessor for MostUsedItemNoContentView);
    return sub_1000497E8();
  }

  else
  {
    *v7 = swift_getKeyPath();
    sub_1000027D4(&qword_10005DA60, &qword_10004B650);
    swift_storeEnumTagMultiPayload();
    *(v7 + *(v4 + 20)) = 1;
    sub_100032A14(v7, v11, type metadata accessor for MostUsedItemNoContentView);
    swift_storeEnumTagMultiPayload();
    sub_1000328AC();
    sub_100032724(&qword_10005E400, type metadata accessor for MostUsedItemNoContentView);
    sub_1000497E8();
    return sub_100032920(v7, type metadata accessor for MostUsedItemNoContentView);
  }
}

uint64_t sub_1000305BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  result = sub_100049798();
  *a1 = result;
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = *(sub_1000027D4(&qword_10005E3E0, &unk_10004BF28) + 44);
    swift_getKeyPath();
    v7 = swift_allocObject();
    *(v7 + 16) = v3;
    *(v7 + 24) = v4;
    sub_1000027D4(&qword_10005D810, &qword_10004BF50);
    sub_1000027D4(&qword_10005E3E8, &qword_10004BF58);
    sub_1000035A8();
    sub_1000327F0();
    sub_100049B28();
    v8 = sub_1000498B8();
    sub_1000494E8();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = a1 + *(sub_1000027D4(&qword_10005E408, &qword_10004BF60) + 36);
    *v17 = v8;
    *(v17 + 8) = v10;
    *(v17 + 16) = v12;
    *(v17 + 24) = v14;
    *(v17 + 32) = v16;
    *(v17 + 40) = 0;
    v18 = sub_1000498C8();
    result = sub_1000027D4(&qword_10005E410, &qword_10004BF68);
    v19 = a1 + *(result + 36);
    *v19 = v18;
    *(v19 + 8) = 0u;
    *(v19 + 24) = 0u;
    *(v19 + 40) = 1;
  }

  return result;
}

__n128 sub_10003077C@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_100049788();
  v5 = type metadata accessor for MostUsedItemsPlaceholderView(0);
  v6 = *(a1 + v5[5]);
  v7 = *(a1 + v5[6]);
  LOBYTE(a1) = *(a1 + v5[7]);
  sub_100049B78();
  sub_100049598();
  *&v9[23] = v11;
  *&v9[7] = v10;
  *&v9[55] = v13;
  *&v9[71] = v14;
  *&v9[87] = v15;
  *&v9[103] = v16;
  *&v9[39] = v12;
  *(a2 + 105) = *&v9[64];
  *(a2 + 121) = *&v9[80];
  *(a2 + 137) = *&v9[96];
  *(a2 + 41) = *v9;
  *(a2 + 57) = *&v9[16];
  result = *&v9[32];
  *(a2 + 73) = *&v9[32];
  *a2 = v4;
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = a1;
  *(a2 + 152) = *(&v16 + 1);
  *(a2 + 89) = *&v9[48];
  return result;
}

uint64_t sub_1000308A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  result = sub_100049728();
  *a2 = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v8 = *(v2 + *(v4 + 28));
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = a2 + *(sub_1000027D4(&qword_10005E458, &qword_10004BF98) + 44);
    v14[0] = 0;
    v14[1] = v8;
    swift_getKeyPath();
    sub_100032A14(v2, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MostUsedItemsPlaceholderView);
    v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v11 = swift_allocObject();
    sub_100033A48(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for MostUsedItemsPlaceholderView);
    sub_1000027D4(&qword_10005D810, &qword_10004BF50);
    sub_1000027D4(&qword_10005E460, &qword_10004BFA0);
    sub_1000035A8();
    sub_100032BFC();
    sub_100049B28();
    v12 = sub_100049898();
    result = sub_1000027D4(&qword_10005E480, &unk_10004BFB0);
    v13 = v9 + *(result + 36);
    *v13 = v12;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 40) = 1;
  }

  return result;
}

uint64_t sub_100030B04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = type metadata accessor for MostUsedItemNoContentView(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1000027D4(&qword_10005E418, &qword_10004BF70);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v15 - v12;
  if (a4)
  {
    *v13 = a2 == 1;
    swift_storeEnumTagMultiPayload();
    sub_1000328AC();
    sub_100032724(&qword_10005E400, type metadata accessor for MostUsedItemNoContentView);
    return sub_1000497E8();
  }

  else
  {
    *v9 = swift_getKeyPath();
    sub_1000027D4(&qword_10005DA60, &qword_10004B650);
    swift_storeEnumTagMultiPayload();
    *(v9 + *(v6 + 20)) = a2 == 1;
    sub_100032A14(v9, v13, type metadata accessor for MostUsedItemNoContentView);
    swift_storeEnumTagMultiPayload();
    sub_1000328AC();
    sub_100032724(&qword_10005E400, type metadata accessor for MostUsedItemNoContentView);
    sub_1000497E8();
    return sub_100032920(v9, type metadata accessor for MostUsedItemNoContentView);
  }
}

void sub_100030D50()
{
  v1 = v0[1];
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 16);
    v3 = *v0;
    v5 = v0[1];
    swift_getKeyPath();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = v1;
    *(v4 + 32) = v2;
    sub_1000027D4(&qword_10005D810, &qword_10004BF50);
    sub_1000027D4(&qword_10005E3E8, &qword_10004BF58);
    sub_1000035A8();
    sub_1000327F0();
    sub_100049B28();
  }
}

uint64_t sub_100030E4C@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v51 = a2;
  v2 = sub_1000027D4(&qword_10005E6C0, &qword_10004C2E0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v50 = &v48[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v48[-v6];
  v8 = sub_100049588();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v48[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1000027D4(&qword_10005E6C8, &qword_10004C2E8);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v17 = &v48[-v16];
  v18 = sub_1000027D4(&qword_10005E6D0, &qword_10004C2F0);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v48[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v21);
  v26 = &v48[-v25];
  __chkstk_darwin(v24);
  v28 = &v48[-v27];
  v29 = *(v9 + 28);
  v30 = enum case for RoundedCornerStyle.continuous(_:);
  v31 = sub_100049758();
  (*(*(v31 - 8) + 104))(&v12[v29], v30, v31);
  __asm { FMOV            V0.2D, #7.25 }

  *v12 = _Q0;
  LOBYTE(v29) = v49;
  sub_100049B68();
  sub_100049528();
  sub_100033A48(v12, v17, &type metadata accessor for RoundedRectangle);
  v37 = &v17[*(v14 + 44)];
  v38 = v53;
  *v37 = v52;
  v37[1] = v38;
  v37[2] = v54;
  v39 = [objc_opt_self() tertiarySystemFillColor];
  v40 = sub_100049AA8();
  KeyPath = swift_getKeyPath();
  sub_100004DF8(v17, v26, &qword_10005E6C8, &qword_10004C2E8);
  v42 = &v26[*(v19 + 44)];
  *v42 = KeyPath;
  v42[1] = v40;
  sub_100004DF8(v26, v28, &qword_10005E6D0, &qword_10004C2F0);
  *v7 = sub_100049798();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v43 = sub_1000027D4(&qword_10005E6D8, &qword_10004C328);
  sub_100031270(v29, &v7[*(v43 + 44)]);
  sub_1000055FC(v28, v23, &qword_10005E6D0, &qword_10004C2F0);
  v44 = v50;
  sub_1000055FC(v7, v50, &qword_10005E6C0, &qword_10004C2E0);
  v45 = v51;
  sub_1000055FC(v23, v51, &qword_10005E6D0, &qword_10004C2F0);
  v46 = sub_1000027D4(&qword_10005E6E0, &qword_10004C330);
  sub_1000055FC(v44, v45 + *(v46 + 48), &qword_10005E6C0, &qword_10004C2E0);
  sub_100005664(v7, &qword_10005E6C0, &qword_10004C2E0);
  sub_100005664(v28, &qword_10005E6D0, &qword_10004C2F0);
  sub_100005664(v44, &qword_10005E6C0, &qword_10004C2E0);
  return sub_100005664(v23, &qword_10005E6D0, &qword_10004C2F0);
}

uint64_t sub_100031270@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v97 = sub_1000027D4(&qword_10005E6E8, &qword_10004C338);
  v3 = *(*(v97 - 8) + 64);
  v4 = __chkstk_darwin(v97);
  v99 = &v92[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v7 = &v92[-v6];
  v8 = sub_1000027D4(&qword_10005E6F0, &qword_10004C340);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v92[-v11];
  v13 = sub_1000027D4(&qword_10005E6F8, &qword_10004C348);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v98 = &v92[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v102 = &v92[-v17];
  __asm { FMOV            V0.2D, #4.0 }

  v101 = _Q0;
  if (a1)
  {
    (*(v9 + 56))(v102, 1, 1, v8);
    v23 = enum case for RoundedCornerStyle.continuous(_:);
  }

  else
  {
    sub_100049748();
    v24 = sub_100049928();
    v26 = v25;
    v28 = v27;
    sub_1000498F8();
    v29 = sub_100049918();
    v94 = v30;
    v95 = v29;
    v93 = v31;
    v96 = v32;

    sub_1000036D0(v24, v26, v28 & 1);

    KeyPath = swift_getKeyPath();
    v34 = &v12[*(v8 + 36)];
    v35 = *(sub_100049588() + 20);
    v23 = enum case for RoundedCornerStyle.continuous(_:);
    v36 = sub_100049758();
    (*(*(v36 - 8) + 104))(&v34[v35], v23, v36);
    *v34 = v101;
    v37 = [objc_opt_self() labelColor];
    v38 = sub_100049AA8();
    v39 = swift_getKeyPath();
    v40 = &v34[*(sub_1000027D4(&qword_10005D928, &qword_10004B520) + 36)];
    *v40 = v39;
    v40[1] = v38;
    *&v34[*(sub_1000027D4(&qword_10005D930, &qword_10004B528) + 36)] = 0x3FB47AE147AE147BLL;
    LOBYTE(v38) = sub_100049898();
    sub_1000494E8();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = &v34[*(sub_1000027D4(&qword_10005D938, &qword_10004B530) + 36)];
    *v49 = v38;
    *(v49 + 1) = v42;
    *(v49 + 2) = v44;
    *(v49 + 3) = v46;
    *(v49 + 4) = v48;
    v49[40] = 0;
    v50 = sub_100049B68();
    v52 = v51;
    v53 = &v34[*(sub_1000027D4(&qword_10005D940, &qword_10004B538) + 36)];
    *v53 = v50;
    v53[1] = v52;
    v54 = v94;
    *v12 = v95;
    *(v12 + 1) = v54;
    v12[16] = v93 & 1;
    *(v12 + 3) = v96;
    *(v12 + 4) = KeyPath;
    *(v12 + 5) = 1;
    v12[48] = 0;
    v55 = v102;
    sub_100004DF8(v12, v102, &qword_10005E6F0, &qword_10004C340);
    (*(v9 + 56))(v55, 0, 1, v8);
  }

  sub_100049748();
  v96 = sub_100049928();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = swift_getKeyPath();
  v63 = sub_1000498F8();
  v64 = swift_getKeyPath();
  v65 = v59 & 1;
  v104 = v59 & 1;
  v103 = 0;
  v66 = &v7[*(v97 + 36)];
  v67 = *(sub_100049588() + 20);
  v68 = sub_100049758();
  (*(*(v68 - 8) + 104))(&v66[v67], v23, v68);
  *v66 = v101;
  v69 = [objc_opt_self() tertiaryLabelColor];
  v70 = sub_100049AA8();
  v71 = swift_getKeyPath();
  v72 = &v66[*(sub_1000027D4(&qword_10005D928, &qword_10004B520) + 36)];
  *v72 = v71;
  v72[1] = v70;
  *&v66[*(sub_1000027D4(&qword_10005D930, &qword_10004B528) + 36)] = 0x3FB47AE147AE147BLL;
  LOBYTE(v70) = sub_100049898();
  sub_1000494E8();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = &v66[*(sub_1000027D4(&qword_10005D938, &qword_10004B530) + 36)];
  *v81 = v70;
  *(v81 + 1) = v74;
  *(v81 + 2) = v76;
  *(v81 + 3) = v78;
  *(v81 + 4) = v80;
  v81[40] = 0;
  v82 = sub_100049B68();
  v84 = v83;
  v85 = &v66[*(sub_1000027D4(&qword_10005D940, &qword_10004B538) + 36)];
  *v85 = v82;
  v85[1] = v84;
  *v7 = v96;
  *(v7 + 1) = v57;
  v7[16] = v65;
  *(v7 + 3) = v61;
  *(v7 + 4) = v62;
  *(v7 + 5) = 1;
  v7[48] = 0;
  *(v7 + 7) = v64;
  *(v7 + 8) = v63;
  v86 = v102;
  v87 = v98;
  sub_1000055FC(v102, v98, &qword_10005E6F8, &qword_10004C348);
  v88 = v99;
  sub_1000055FC(v7, v99, &qword_10005E6E8, &qword_10004C338);
  v89 = v100;
  sub_1000055FC(v87, v100, &qword_10005E6F8, &qword_10004C348);
  v90 = sub_1000027D4(&qword_10005E700, &qword_10004C380);
  sub_1000055FC(v88, v89 + *(v90 + 48), &qword_10005E6E8, &qword_10004C338);
  sub_100005664(v7, &qword_10005E6E8, &qword_10004C338);
  sub_100005664(v86, &qword_10005E6F8, &qword_10004C348);
  sub_100005664(v88, &qword_10005E6E8, &qword_10004C338);
  return sub_100005664(v87, &qword_10005E6F8, &qword_10004C348);
}

uint64_t sub_1000319FC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  *a1 = sub_100049738();
  *(a1 + 8) = 0x4018000000000000;
  *(a1 + 16) = 0;
  v4 = sub_1000027D4(&qword_10005E6B8, &qword_10004C2D8);
  return sub_100030E4C(v3, a1 + *(v4 + 44));
}

uint64_t sub_100031A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = sub_100049588();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000027D4(&qword_10005E6C8, &qword_10004C2E8);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v48 - v11;
  v13 = sub_1000027D4(&qword_10005E6D0, &qword_10004C2F0);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = __chkstk_darwin(v13);
  v51 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v48 - v19;
  __chkstk_darwin(v18);
  v49 = &v48 - v21;
  v22 = *(v4 + 28);
  v23 = enum case for RoundedCornerStyle.continuous(_:);
  v24 = sub_100049758();
  (*(*(v24 - 8) + 104))(&v7[v22], v23, v24);
  __asm { FMOV            V0.2D, #7.25 }

  *v7 = _Q0;
  *(a1 + *(type metadata accessor for MostUsedItemNoContentView(0) + 20));
  sub_100049B68();
  sub_100049528();
  sub_100033A48(v7, v12, &type metadata accessor for RoundedRectangle);
  v30 = &v12[*(v9 + 44)];
  v31 = *(&v68[10] + 8);
  *v30 = *(&v68[9] + 8);
  *(v30 + 1) = v31;
  *(v30 + 2) = *(&v68[11] + 8);
  v32 = [objc_opt_self() tertiarySystemFillColor];
  v33 = sub_100049AA8();
  KeyPath = swift_getKeyPath();
  sub_100004DF8(v12, v20, &qword_10005E6C8, &qword_10004C2E8);
  v35 = &v20[*(v14 + 44)];
  *v35 = KeyPath;
  v35[1] = v33;
  v36 = v49;
  sub_100004DF8(v20, v49, &qword_10005E6D0, &qword_10004C2F0);
  v50 = sub_100049798();
  v54 = 0;
  sub_100032010(a1, &v67);
  v61 = v68[5];
  v62[0] = v68[6];
  *(v62 + 9) = *(&v68[6] + 9);
  v57 = v68[1];
  v58 = v68[2];
  v59 = v68[3];
  v60 = v68[4];
  v55 = v67;
  v56 = v68[0];
  v63[5] = v68[4];
  v63[6] = v68[5];
  v64[0] = v68[6];
  *(v64 + 9) = *(&v68[6] + 9);
  v63[2] = v68[1];
  v63[3] = v68[2];
  v63[4] = v68[3];
  v63[0] = v67;
  v63[1] = v68[0];
  sub_1000055FC(&v55, &v65, &qword_10005E720, &qword_10004C398);
  sub_100005664(v63, &qword_10005E720, &qword_10004C398);
  *(&v53[5] + 7) = v60;
  *(&v53[6] + 7) = v61;
  *(&v53[7] + 7) = v62[0];
  v53[8] = *(v62 + 9);
  *(&v53[1] + 7) = v56;
  *(&v53[2] + 7) = v57;
  *(&v53[3] + 7) = v58;
  *(&v53[4] + 7) = v59;
  *(v53 + 7) = v55;
  LOBYTE(v14) = v54;
  v37 = v51;
  sub_1000055FC(v36, v51, &qword_10005E6D0, &qword_10004C2F0);
  v38 = v52;
  sub_1000055FC(v37, v52, &qword_10005E6D0, &qword_10004C2F0);
  v39 = *(sub_1000027D4(&qword_10005E728, &qword_10004C3A0) + 48);
  *&v66[17] = v53[1];
  *&v66[81] = v53[5];
  *&v66[97] = v53[6];
  *&v66[113] = v53[7];
  *&v66[129] = v53[8];
  *&v66[33] = v53[2];
  *&v66[49] = v53[3];
  v40 = v38 + v39;
  v41 = v50;
  v65 = v50;
  v66[0] = v14;
  *&v66[65] = v53[4];
  *&v66[1] = v53[0];
  v42 = *&v66[128];
  *(v40 + 128) = *&v66[112];
  *(v40 + 144) = v42;
  *(v40 + 160) = v66[144];
  v43 = *&v66[64];
  *(v40 + 64) = *&v66[48];
  *(v40 + 80) = v43;
  v44 = *&v66[96];
  *(v40 + 96) = *&v66[80];
  *(v40 + 112) = v44;
  v45 = *v66;
  *v40 = v65;
  *(v40 + 16) = v45;
  v46 = *&v66[32];
  *(v40 + 32) = *&v66[16];
  *(v40 + 48) = v46;
  sub_1000055FC(&v65, &v67, &qword_10005E730, &qword_10004C3A8);
  sub_100005664(v36, &qword_10005E6D0, &qword_10004C2F0);
  *(&v68[5] + 1) = v53[5];
  *(&v68[6] + 1) = v53[6];
  *(&v68[7] + 1) = v53[7];
  *(&v68[8] + 1) = v53[8];
  *(&v68[1] + 1) = v53[1];
  *(&v68[2] + 1) = v53[2];
  *(&v68[3] + 1) = v53[3];
  *(&v68[4] + 1) = v53[4];
  v67 = v41;
  LOBYTE(v68[0]) = v14;
  *(v68 + 1) = v53[0];
  sub_100005664(&v67, &qword_10005E730, &qword_10004C3A8);
  return sub_100005664(v37, &qword_10005E6D0, &qword_10004C2F0);
}

uint64_t sub_100032010@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_100049C78();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for MostUsedItemNoContentView(0) + 20)))
  {
    v44 = 0;
    v45 = 0;
    v40 = 0;
    v41 = 0;
    v39 = 0;
    v37 = 0;
    v42 = 0;
    v43 = 0;
    v38 = 0;
  }

  else
  {
    sub_100049748();
    v9 = sub_100049928();
    v11 = v10;
    v13 = v12;
    v15 = v14;
    sub_10002FBEC(&qword_10005DA60, &qword_10004B650, &type metadata accessor for WidgetRenderingMode, v8);
    sub_10002F820(1, v9, v11, v15, &v65);
    sub_1000036D0(v9, v11, v13 & 1);

    (*(v5 + 8))(v8, v4);
    v40 = v67;
    v41 = v66;
    v39 = v68;
    v37 = v69;
    v44 = v70;
    v45 = v65;
    v42 = v72;
    v43 = v71;
    v38 = v73;
  }

  sub_100049748();
  v16 = sub_100049928();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_10002FBEC(&qword_10005DA60, &qword_10004B650, &type metadata accessor for WidgetRenderingMode, v8);
  sub_10002F820(0, v16, v18, v22, &v51);
  sub_1000036D0(v16, v18, v20 & 1);

  (*(v5 + 8))(v8, v4);
  v24 = v40;
  v23 = v41;
  *&v56 = v45;
  *(&v56 + 1) = v41;
  v25 = v39;
  *&v57 = v40;
  *(&v57 + 1) = v39;
  v26 = v37;
  *&v58 = v37;
  *(&v58 + 1) = v44;
  *&v59 = v43;
  *(&v59 + 1) = v42;
  LOBYTE(v16) = v38;
  LOBYTE(v50[0]) = v38;
  v48 = v58;
  v49 = v59;
  v46 = v56;
  v47 = v57;
  v61[2] = v53;
  v61[3] = v54;
  v61[0] = v51;
  v61[1] = v52;
  *(v50 + 8) = v51;
  BYTE8(v50[4]) = v55;
  v27 = v53;
  v28 = v54;
  *(&v50[3] + 8) = v54;
  *(&v50[2] + 8) = v53;
  v29 = v51;
  v30 = v52;
  *(&v50[1] + 8) = v52;
  v31 = v59;
  a2[2] = v58;
  a2[3] = v31;
  v32 = v47;
  *a2 = v46;
  a2[1] = v32;
  *(a2 + 121) = *(&v50[3] + 9);
  v33 = v50[3];
  a2[6] = v50[2];
  a2[7] = v33;
  v34 = v50[1];
  a2[4] = v50[0];
  a2[5] = v34;
  v60 = v16;
  v62 = v55;
  v63[2] = v27;
  v63[3] = v28;
  v64 = v55;
  v63[0] = v29;
  v63[1] = v30;
  sub_1000055FC(&v56, &v65, &qword_10005E738, &unk_10004C3B0);
  sub_1000055FC(v61, &v65, &qword_10005E680, &qword_10004C250);
  sub_100005664(v63, &qword_10005E680, &qword_10004C250);
  v65 = v45;
  v66 = v23;
  v67 = v24;
  v68 = v25;
  v69 = v26;
  v70 = v44;
  v71 = v43;
  v72 = v42;
  v73 = v16;
  return sub_100005664(&v65, &qword_10005E738, &unk_10004C3B0);
}

uint64_t sub_100032408()
{
  v1 = sub_1000027D4(&qword_10005E708, &qword_10004C388);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = &v7 - v3;
  *v4 = sub_100049738();
  *(v4 + 1) = 0x4028000000000000;
  v4[16] = 0;
  v5 = sub_1000027D4(&qword_10005E710, &qword_10004C390);
  sub_100031A54(v0, &v4[*(v5 + 44)]);
  sub_100005708(&qword_10005E718, &qword_10005E708, &qword_10004C388);
  sub_1000499E8();
  return sub_100005664(v4, &qword_10005E708, &qword_10004C388);
}

unint64_t sub_100032520()
{
  result = qword_10005E398;
  if (!qword_10005E398)
  {
    sub_100003634(&qword_10005E388, &qword_10004BE88);
    sub_100003634(&qword_10005E3A0, &qword_10004BE90);
    sub_100032618();
    swift_getOpaqueTypeConformance2();
    sub_100032724(&qword_10005D9A8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E398);
  }

  return result;
}

unint64_t sub_100032618()
{
  result = qword_10005E3A8;
  if (!qword_10005E3A8)
  {
    sub_100003634(&qword_10005E3A0, &qword_10004BE90);
    sub_100032724(&qword_10005E3B0, type metadata accessor for MostUsedItemCell);
    sub_100032724(&qword_10005D9A8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E3A8);
  }

  return result;
}

uint64_t sub_100032724(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000327F0()
{
  result = qword_10005E3F0;
  if (!qword_10005E3F0)
  {
    sub_100003634(&qword_10005E3E8, &qword_10004BF58);
    sub_1000328AC();
    sub_100032724(&qword_10005E400, type metadata accessor for MostUsedItemNoContentView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E3F0);
  }

  return result;
}

unint64_t sub_1000328AC()
{
  result = qword_10005E3F8;
  if (!qword_10005E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E3F8);
  }

  return result;
}

uint64_t sub_100032920(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_100032988()
{
  result = qword_10005E438;
  if (!qword_10005E438)
  {
    sub_100003634(&qword_10005E440, &qword_10004BF80);
    sub_100032520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E438);
  }

  return result;
}

uint64_t sub_100032A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100032A7C()
{
  v1 = *(type metadata accessor for MostUsedItemsPlaceholderView(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_100049C78();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
    v6 = *(v0 + v3);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_100032B7C@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MostUsedItemsPlaceholderView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  *&result = sub_10003077C(v4, a1).n128_u64[0];
  return result;
}

unint64_t sub_100032BFC()
{
  result = qword_10005E468;
  if (!qword_10005E468)
  {
    sub_100003634(&qword_10005E460, &qword_10004BFA0);
    sub_100005708(&qword_10005E470, &qword_10005E478, &qword_10004BFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E468);
  }

  return result;
}

uint64_t sub_100032CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_100032DB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

void sub_100032E78()
{
  sub_100033F08(319, &unk_10005DA20, &type metadata accessor for WidgetRenderingMode);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for MostUsedItemPlaceholderView(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MostUsedItemPlaceholderView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100033088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000027D4(&qword_10005E518, &unk_10004C020);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1000331C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1000027D4(&qword_10005E518, &unk_10004C020);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1000332E8()
{
  sub_100033F08(319, &unk_10005E588, &type metadata accessor for WidgetFamily);
  if (v0 <= 0x3F)
  {
    sub_100033F08(319, &unk_10005DA20, &type metadata accessor for WidgetRenderingMode);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for MostUsedItemsPlaceholderRowView(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MostUsedItemsPlaceholderRowView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MostUsedItemsPlaceholderRowView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_10003347C()
{
  result = qword_10005E5C0;
  if (!qword_10005E5C0)
  {
    sub_100003634(&qword_10005E3C8, &qword_10004BEA8);
    sub_100033508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E5C0);
  }

  return result;
}

unint64_t sub_100033508()
{
  result = qword_10005E5C8;
  if (!qword_10005E5C8)
  {
    sub_100003634(&qword_10005E3C0, &qword_10004BEA0);
    sub_100033594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E5C8);
  }

  return result;
}

unint64_t sub_100033594()
{
  result = qword_10005E5D0;
  if (!qword_10005E5D0)
  {
    sub_100003634(&qword_10005E3B8, &qword_10004BE98);
    sub_100005708(&qword_10005E5D8, &qword_10005E5E0, ":7");
    sub_100005708(&qword_10005E5E8, &qword_10005E5F0, &qword_10004C088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E5D0);
  }

  return result;
}

unint64_t sub_10003367C()
{
  result = qword_10005E5F8;
  if (!qword_10005E5F8)
  {
    sub_100003634(&qword_10005E410, &qword_10004BF68);
    sub_100033708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E5F8);
  }

  return result;
}

unint64_t sub_100033708()
{
  result = qword_10005E600;
  if (!qword_10005E600)
  {
    sub_100003634(&qword_10005E408, &qword_10004BF60);
    sub_100005708(&qword_10005E608, &qword_10005E610, &qword_10004C090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E600);
  }

  return result;
}

unint64_t sub_1000337C4()
{
  result = qword_10005E618;
  if (!qword_10005E618)
  {
    sub_100003634(&qword_10005E450, &qword_10004BF90);
    sub_100033850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E618);
  }

  return result;
}

unint64_t sub_100033850()
{
  result = qword_10005E620;
  if (!qword_10005E620)
  {
    sub_100003634(&qword_10005E448, &qword_10004BF88);
    sub_100005708(&qword_10005E628, &qword_10005E630, &qword_10004C098);
    sub_100005708(&qword_10005E5E8, &qword_10005E5F0, &qword_10004C088);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E620);
  }

  return result;
}

uint64_t sub_100033A08(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100033A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100033AB0()
{
  result = qword_10005E688;
  if (!qword_10005E688)
  {
    sub_100003634(&qword_10005E680, &qword_10004C250);
    sub_100033B68();
    sub_100005708(&qword_10005D860, &qword_10005D868, &qword_10004B330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E688);
  }

  return result;
}

unint64_t sub_100033B68()
{
  result = qword_10005E690;
  if (!qword_10005E690)
  {
    sub_100003634(&qword_10005E698, &qword_10004C258);
    sub_100005708(&qword_10005E6A0, &qword_10005E6A8, &unk_10004C260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E690);
  }

  return result;
}

uint64_t sub_100033C20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100049618();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100033CC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000027D4(&qword_10005E740, "L5");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100033D9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000027D4(&qword_10005E740, "L5");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_100033E60()
{
  sub_100033F08(319, &unk_10005E7B0, &type metadata accessor for ColorScheme);
  if (v0 <= 0x3F)
  {
    sub_100002154();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100033F08(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100049518();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_100033FE8()
{
  result = qword_10005E808;
  if (!qword_10005E808)
  {
    sub_100003634(&qword_10005E810, &qword_10004C3D8);
    sub_100005708(&qword_10005E718, &qword_10005E708, &qword_10004C388);
    sub_100032724(&qword_10005D9A8, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E808);
  }

  return result;
}

uint64_t sub_100034114(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100003634(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000341AC()
{
  result = qword_10005E848;
  if (!qword_10005E848)
  {
    sub_100003634(&qword_10005E840, &unk_10004C450);
    sub_100034238();
    sub_1000342DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E848);
  }

  return result;
}

unint64_t sub_100034238()
{
  result = qword_10005E850;
  if (!qword_10005E850)
  {
    sub_100003634(&qword_10005E838, &qword_10004C448);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E850);
  }

  return result;
}

unint64_t sub_1000342DC()
{
  result = qword_10005E858;
  if (!qword_10005E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E858);
  }

  return result;
}

uint64_t sub_100034330()
{
  sub_100003634(&qword_10005E840, &unk_10004C450);
  sub_1000341AC();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100034394()
{
  v0 = sub_1000492C8();
  sub_1000188D8(v0, qword_10005E860);
  sub_1000143C0(v0, qword_10005E860);
  return sub_1000492B8();
}

uint64_t sub_100034414()
{
  type metadata accessor for XPCPersistentStoreManager();
  v0 = swift_allocObject();
  result = sub_100034450();
  qword_100060290 = v0;
  return result;
}

uint64_t sub_100034450()
{
  v1 = objc_opt_self();
  v2 = [v1 managedObjectModel];
  v3 = objc_allocWithZone(NSPersistentContainer);
  v4 = sub_100049DF8();
  v5 = [v3 initWithName:v4 managedObjectModel:v2];

  *(v0 + 16) = v5;
  *(v0 + 24) = 0;
  *(v0 + 32) = [objc_allocWithZone(type metadata accessor for STWidgetXPCStoreServerEndpointFactory()) init];
  v6 = [v1 localPersistentXPCStoreDescription];
  v7 = *(v0 + 16);
  sub_1000027D4(&qword_10005DDF8, &qword_10004B8D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10004C460;
  *(v8 + 32) = v6;
  sub_100035008();
  v9 = v7;
  v10 = v6;
  isa = sub_100049F48().super.isa;

  [v9 setPersistentStoreDescriptions:isa];

  return v0;
}

void sub_1000345C4()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    v1 = *(v0 + 16);
    v2 = [v1 persistentStoreDescriptions];
    sub_100035008();
    v3 = sub_100049F58();

    if (v3 >> 62)
    {
      v4 = sub_10004A308();
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v4)
    {
      aBlock[4] = sub_100035054;
      aBlock[5] = v0;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100034A48;
      aBlock[3] = &unk_10005AA90;
      v5 = _Block_copy(aBlock);

      [v1 loadPersistentStoresWithCompletionHandler:v5];
      _Block_release(v5);
      if (*(v0 + 24) == 1)
      {
        if (qword_10005D6B8 != -1)
        {
          swift_once();
        }

        v6 = sub_1000492C8();
        sub_1000143C0(v6, qword_10005E860);
        v7 = sub_1000492A8();
        v8 = sub_10004A0A8();
        if (os_log_type_enabled(v7, v8))
        {
          v9 = swift_slowAlloc();
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v7, v8, "Successfully loaded persistent stores", v9, 2u);
        }
      }
    }

    else
    {
      *(v0 + 24) = 0;
      if (qword_10005D6B8 != -1)
      {
        swift_once();
      }

      v10 = sub_1000492C8();
      sub_1000143C0(v10, qword_10005E860);
      oslog = sub_1000492A8();
      v11 = sub_10004A088();
      if (os_log_type_enabled(oslog, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v11, "No persistent stores available to load", v12, 2u);
      }
    }
  }
}

void sub_100034898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    *(a3 + 24) = 0;
    swift_errorRetain();
    if (qword_10005D6B8 != -1)
    {
      swift_once();
    }

    v3 = sub_1000492C8();
    sub_1000143C0(v3, qword_10005E860);
    swift_errorRetain();
    oslog = sub_1000492A8();
    v4 = sub_10004A088();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *v5 = 138412290;
      swift_errorRetain();
      v7 = _swift_stdlib_bridgeErrorToNSError();
      *(v5 + 4) = v7;
      *v6 = v7;
      _os_log_impl(&_mh_execute_header, oslog, v4, "Failed to load persistent store: %@", v5, 0xCu);
      sub_100034FA0(v6);
    }

    else
    {
    }
  }

  else
  {
    *(a3 + 24) = 1;
  }
}

void sub_100034A48(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t sub_100034B04()
{

  return _swift_deallocClassInstance(v0, 40, 7);
}

id sub_100034BAC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for STWidgetXPCStoreServerEndpointFactory();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100034C04(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

_BYTE **sub_100034C64(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_100034C74(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_100034FA0(uint64_t a1)
{
  v2 = sub_1000027D4(&qword_10005DDB0, &qword_10004B8B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100035008()
{
  result = qword_10005EA00;
  if (!qword_10005EA00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10005EA00);
  }

  return result;
}

uint64_t sub_10003505C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100035074()
{
  v0 = sub_1000492C8();
  sub_1000188D8(v0, qword_10005EA70);
  sub_1000143C0(v0, qword_10005EA70);
  return sub_1000492B8();
}

uint64_t sub_1000350EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v35 = sub_1000027D4(&qword_10005EAA8, &qword_10004C5D8);
  v3 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v5 = &v33 - v4;
  v6 = sub_1000027D4(&qword_10005EAF8, &qword_10004C608);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v33 - v8;
  v10 = type metadata accessor for WidgetView();
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1000027D4(&qword_10005EAA0, &qword_10004C5D0);
  v14 = *(v34 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v34);
  v17 = &v33 - v16;
  if (qword_10005D6C8 != -1)
  {
    swift_once();
  }

  v18 = sub_1000492C8();
  sub_1000143C0(v18, qword_10005EA70);
  v19 = sub_1000492A8();
  v20 = sub_10004A0A8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Getting widget body", v21, 2u);
  }

  sub_10003647C(a1, v13);
  *&v13[v10[5]] = swift_getKeyPath();
  sub_1000027D4(&qword_10005E658, &qword_10004C640);
  swift_storeEnumTagMultiPayload();
  *&v13[v10[6]] = swift_getKeyPath();
  sub_1000027D4(&qword_10005E3D8, &qword_10004BEE8);
  swift_storeEnumTagMultiPayload();
  *&v13[v10[7]] = swift_getKeyPath();
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  *&v13[v10[9]] = swift_getKeyPath();
  sub_1000027D4(&qword_10005EB00, &qword_10004C710);
  swift_storeEnumTagMultiPayload();
  v23 = swift_getKeyPath();
  v24 = &v13[v10[8]];
  *v24 = KeyPath;
  v24[8] = 0;
  v25 = &v13[v10[10]];
  *v25 = v23;
  v26 = type metadata accessor for UsageTimelineEntry();
  *(v25 + 2) = 0;
  *(v25 + 3) = 0;
  *(v25 + 1) = 0;
  v25[32] = 0;
  sub_100035F64(*(a1 + *(v26 + 48)), *(a1 + *(v26 + 32)), *(a1 + *(v26 + 32) + 8));
  v27 = sub_100048F48();
  (*(*(v27 - 8) + 56))(v9, 0, 1, v27);
  v28 = sub_1000369AC(&qword_10005EAB0, type metadata accessor for WidgetView);
  sub_1000499A8();
  sub_100005664(v9, &qword_10005EAF8, &qword_10004C608);
  sub_100036904(v13);
  v29 = enum case for DynamicTypeSize.xxLarge(_:);
  v30 = sub_100049548();
  (*(*(v30 - 8) + 104))(v5, v29, v30);
  sub_1000369AC(&qword_10005EB08, &type metadata accessor for DynamicTypeSize);
  result = sub_100049DE8();
  if (result)
  {
    v37 = v10;
    v38 = v28;
    swift_getOpaqueTypeConformance2();
    sub_100005708(&qword_10005EAB8, &qword_10005EAA8, &qword_10004C5D8);
    v32 = v34;
    sub_100049A18();
    sub_100005664(v5, &qword_10005EAA8, &qword_10004C5D8);
    return (*(v14 + 8))(v17, v32);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000356A4@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v1 = sub_1000027D4(&qword_10005EAC8, &qword_10004C5E0);
  v2 = *(v1 - 8);
  v55 = v1;
  v56 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v49 - v4;
  v6 = sub_1000027D4(&qword_10005EAD0, &qword_10004C5E8);
  v7 = *(v6 - 8);
  v57 = v6;
  *&v58 = v7;
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v52 = v49 - v9;
  v10 = sub_1000027D4(&qword_10005EAD8, &qword_10004C5F0);
  v11 = *(v10 - 8);
  v59 = v10;
  v60 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v62 = v49 - v13;
  sub_100049748();
  v14 = sub_100049928();
  v16 = v15;
  v18 = v17;
  v19 = sub_1000027D4(&qword_10005EA90, &qword_10004C5C0);
  v20 = sub_100005708(&qword_10005EAE0, &qword_10005EA90, &qword_10004C5C0);
  sub_1000497D8();
  sub_1000036D0(v14, v16, v18 & 1);

  v54 = sub_1000027D4(&qword_10005EAE8, &qword_10004C5F8);
  v21 = sub_100049CB8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 72);
  v53 = *(v22 + 80);
  v24 = (v53 + 32) & ~v53;
  v49[1] = v23;
  v50 = v24;
  v25 = 2 * v23;
  v26 = v23;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10004C530;
  v28 = v27 + v24;
  v51 = enum case for WidgetFamily.systemSmall(_:);
  v29 = *(v22 + 104);
  v49[0] = v29;
  v29(v28);
  (v29)(v28 + v26, enum case for WidgetFamily.systemMedium(_:), v21);
  (v29)(v28 + v25, enum case for WidgetFamily.systemLarge(_:), v21);
  v63 = v19;
  v64 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v52;
  v32 = v55;
  sub_1000497B8();

  v33 = v32;
  (*(v56 + 8))(v5, v32);
  sub_100049748();
  v34 = sub_100049928();
  v36 = v35;
  LOBYTE(v29) = v37;
  v63 = v33;
  v64 = OpaqueTypeConformance2;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v57;
  sub_1000497A8();
  sub_1000036D0(v34, v36, v29 & 1);

  (*(v58 + 8))(v31, v39);
  sub_1000027D4(&qword_10005EAF0, &qword_10004C600);
  v40 = *(sub_100049CD8() - 8);
  v41 = *(v40 + 72);
  v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v43 = swift_allocObject();
  v58 = xmmword_10004B590;
  *(v43 + 16) = xmmword_10004B590;
  sub_100049CC8();
  v44 = v50;
  v45 = swift_allocObject();
  *(v45 + 16) = v58;
  (v49[0])(v45 + v44, v51, v21);
  v63 = v39;
  v64 = v38;
  swift_getOpaqueTypeConformance2();
  v46 = v62;
  v47 = v59;
  sub_1000497C8();

  return (*(v60 + 8))(v46, v47);
}

uint64_t sub_100035CFC@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v1 = sub_1000027D4(&qword_10005EA90, &qword_10004C5C0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - v4;
  v13 = "ation.ScreenTimeWidgetExtension";
  type metadata accessor for STSelectUserIntent();
  sub_1000027D4(&qword_10005EA98, &qword_10004C5C8);
  v6 = sub_100003634(&qword_10005EAA0, &qword_10004C5D0);
  v7 = sub_100003634(&qword_10005EAA8, &qword_10004C5D8);
  v8 = type metadata accessor for WidgetView();
  v9 = sub_1000369AC(&qword_10005EAB0, type metadata accessor for WidgetView);
  v15 = v8;
  v16 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v11 = sub_100005708(&qword_10005EAB8, &qword_10005EAA8, &qword_10004C5D8);
  v15 = v6;
  v16 = v7;
  v17 = OpaqueTypeConformance2;
  v18 = v11;
  swift_getOpaqueTypeConformance2();
  sub_100036428();
  sub_100049CF8();
  sub_1000356A4(v14);
  return (*(v2 + 8))(v5, v1);
}

void sub_100035F64(char a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(NSProcessInfo) init];
  if ([v6 isiOSAppOnMac])
  {

LABEL_4:

    sub_100036184(a2, a3);
    return;
  }

  v7 = [v6 isMacCatalystApp];

  if (v7)
  {
    goto LABEL_4;
  }

  if (a3 && (a1 & 1) != 0)
  {
    v8 = sub_100049DF8();
    v9 = objc_opt_new();
    [v9 setScheme:STPrefsURLComponentScheme];
    [v9 setFragment:STPrefsURLComponentFragmentToday];
    v10 = [NSString alloc];
    v11 = [v10 initWithFormat:@"%@&path=CHILD_%@/SCREEN_TIME_SUMMARY", STPrefsURLComponentPathScreenTimeRoot, v8];
    [v9 setPath:v11];

    v12 = [v9 URL];

    v15 = v12;
  }

  else
  {
    v13 = objc_opt_new();
    [v13 setScheme:STPrefsURLComponentScheme];
    [v13 setFragment:STPrefsURLComponentFragmentToday];
    [v13 setPath:STPrefsURLComponentPathScreenTimeSummary];
    v14 = [v13 URL];

    v15 = v14;
  }

  sub_100048F38();
}

void sub_100036184(uint64_t a1, uint64_t a2)
{
  v10 = [objc_allocWithZone(NSURLComponents) init];
  v4 = sub_100049DF8();
  [v10 setScheme:v4];

  v5 = sub_100049DF8();
  [v10 setPath:v5];

  if (a2)
  {
    sub_1000027D4(&qword_10005DF10, &qword_10004C8E0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_10004B590;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_10001B17C();
    *(v6 + 32) = a1;
    *(v6 + 40) = a2;

    sub_100049E18();
    v7 = sub_100049DF8();

    [v10 setQuery:v7];
  }

  v8 = [v10 URL];
  if (v8)
  {
    v9 = v8;
    sub_100048F38();
  }

  else
  {
    __break(1u);
  }
}

int main(int argc, const char **argv, const char **envp)
{
  if (qword_10005D6C0 != -1)
  {
    swift_once();
  }

  sub_1000345C4();
  sub_1000363A8();
  sub_100049AF8();
  return 0;
}

unint64_t sub_1000363A8()
{
  result = qword_10005EA88;
  if (!qword_10005EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EA88);
  }

  return result;
}

unint64_t sub_100036428()
{
  result = qword_10005EAC0;
  if (!qword_10005EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005EAC0);
  }

  return result;
}

uint64_t sub_10003647C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UsageTimelineEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100036690()
{
  sub_100049698();
  sub_1000369AC(&qword_10005EB10, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  sub_100049718();
  return v1;
}

uint64_t sub_10003670C@<X0>(_BYTE *a1@<X8>)
{
  sub_100049698();
  sub_1000369AC(&qword_10005EB10, &type metadata accessor for EnvironmentValues.ShowsWidgetBackgroundKey);
  result = sub_100049718();
  *a1 = v3;
  return result;
}

uint64_t sub_1000367C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_1000368D4@<X0>(void *a1@<X8>)
{
  result = sub_1000496C8();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_100036904(uint64_t a1)
{
  v2 = type metadata accessor for WidgetView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100036960(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1000369AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000369F4()
{
  sub_100003634(&qword_10005EAD8, &qword_10004C5F0);
  sub_100003634(&qword_10005EAD0, &qword_10004C5E8);
  sub_100003634(&qword_10005EAC8, &qword_10004C5E0);
  sub_100003634(&qword_10005EA90, &qword_10004C5C0);
  sub_100005708(&qword_10005EAE0, &qword_10005EA90, &qword_10004C5C0);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100036BA0()
{
  v0 = sub_1000492C8();
  sub_1000188D8(v0, qword_10005EB18);
  sub_1000143C0(v0, qword_10005EB18);
  return sub_1000492B8();
}

uint64_t sub_100036C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_100049CB8();
  v7[15] = v8;
  v9 = *(v8 - 8);
  v7[16] = v9;
  v10 = *(v9 + 64) + 15;
  v7[17] = swift_task_alloc();
  v11 = type metadata accessor for UsageTimelineEntry();
  v7[18] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v7[19] = swift_task_alloc();

  return _swift_task_switch(sub_100036D14, 0, 0);
}

uint64_t sub_100036D14()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  type metadata accessor for UsageProvider();
  inited = swift_initStackObject();
  *(v0 + 160) = inited;
  *(inited + 16) = 0;
  v4 = (inited + 16);
  *(inited + 24) = 0;
  v5 = [v2 displayString];
  v6 = sub_100049E08();
  v8 = v7;

  *(v0 + 168) = v8;
  sub_100049D58();
  v10 = v9;
  v12 = v11;
  v13 = [v2 identifier];
  if (v13)
  {
    v14 = v13;
    v15 = sub_100049E08();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  *(v0 + 176) = v17;
  v18 = [*(v0 + 88) isRemote];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 BOOLValue];
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v0 + 136);
  v22 = *(v0 + 96);
  sub_100049D68();
  sub_10003C088();
  v23 = sub_100020CF8(v20, v15, v17);

  if (v23 & 1) != 0 && (v24 = sub_100049258(), *(v0 + 40) = v24, *(v0 + 48) = sub_10003B8AC(&qword_10005EB50, &type metadata accessor for ScreenTimeFeatureFlags), v25 = sub_10003B8F4((v0 + 16)), (*(*(v24 - 8) + 104))(v25, enum case for ScreenTimeFeatureFlags.newUsage(_:), v24), LOBYTE(v24) = sub_100049118(), sub_100002890((v0 + 16)), (v24))
  {
    if (qword_10005D6D8 != -1)
    {
      swift_once();
    }

    v26 = sub_1000492C8();
    sub_1000143C0(v26, qword_10005EB58);
    v27 = sub_1000492A8();
    v28 = sub_10004A0A8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Using Device Activity to show widget usage data", v29, 2u);
    }

    *(v0 + 184) = *v4;

    v30 = swift_task_alloc();
    *(v0 + 192) = v30;
    *v30 = v0;
    v30[1] = sub_10003721C;
    v31 = *(v0 + 152);
    v32 = *(v0 + 136);

    return sub_10001CEEC(v31, v10, v12, v6, v8, v15, v17, v20, v32);
  }

  else
  {
    if (qword_10005D6D8 != -1)
    {
      swift_once();
    }

    v34 = sub_1000492C8();
    sub_1000143C0(v34, qword_10005EB58);
    v35 = sub_1000492A8();
    v36 = sub_10004A0A8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Using Core Data to show widget usage data", v37, 2u);
    }

    v38 = *(v0 + 136);

    v39 = sub_10003C368();
    *(v0 + 200) = v39;
    v40 = swift_task_alloc();
    *(v0 + 208) = v40;
    *(v40 + 16) = v39;
    *(v40 + 24) = v20;
    *(v40 + 32) = v15;
    *(v40 + 40) = v17;
    *(v40 + 48) = v6;
    *(v40 + 56) = v8;
    *(v40 + 64) = v38;
    *(v40 + 72) = v10;
    *(v40 + 80) = v12;
    v41 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v42 = swift_task_alloc();
    *(v0 + 216) = v42;
    *v42 = v0;
    v42[1] = sub_1000375AC;
    v44 = *(v0 + 144);
    v43 = *(v0 + 152);

    return withCheckedContinuation<A>(isolation:function:_:)(v43, 0, 0, 0xD00000000000003DLL, 0x8000000100053EA0, sub_10003BBA0, v40, v44);
  }
}

uint64_t sub_10003721C()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);
  v5 = *(*v0 + 168);
  v6 = *(*v0 + 160);
  v8 = *v0;

  (*(v1[16] + 8))(v1[17], v1[15]);

  return _swift_task_switch(sub_1000373E8, 0, 0);
}

uint64_t sub_1000373E8()
{
  if (qword_10005D6D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1000492C8();
  sub_1000143C0(v1, qword_10005EB18);
  v2 = sub_1000492A8();
  v3 = sub_10004A0A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "getSnapshot calling completion", v4, 2u);
  }

  v5 = v0[19];
  v7 = v0[13];
  v6 = v0[14];

  v7(v5);
  v8 = sub_1000492A8();
  v9 = sub_10004A0A8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "getSnapshot done", v10, 2u);
  }

  v11 = v0[19];
  v12 = v0[17];

  sub_10003B850(v11);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000375AC()
{
  v1 = *v0;
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v4 = *(*v0 + 200);
  v5 = *(*v0 + 176);
  v6 = *(*v0 + 168);
  v7 = *(*v0 + 160);
  v9 = *v0;

  (*(v1[16] + 8))(v1[17], v1[15]);

  return _swift_task_switch(sub_1000373E8, 0, 0);
}

uint64_t sub_10003779C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1000027D4(&qword_10005EB40, &qword_10004C810);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_1000055FC(a3, v27 - v11, &qword_10005EB40, &qword_10004C810);
  v13 = sub_100049FC8();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100005664(v12, &qword_10005EB40, &qword_10004C810);
  }

  else
  {
    sub_100049FB8();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_100049F98();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_100049E28() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100005664(a3, &qword_10005EB40, &qword_10004C810);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100005664(a3, &qword_10005EB40, &qword_10004C810);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_100037A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_100049058();
  v7[15] = v8;
  v9 = *(v8 - 8);
  v7[16] = v9;
  v10 = *(v9 + 64) + 15;
  v7[17] = swift_task_alloc();
  v11 = *(*(sub_100049D18() - 8) + 64) + 15;
  v7[18] = swift_task_alloc();
  v12 = sub_1000027D4(&qword_10005EB38, &qword_10004C808);
  v7[19] = v12;
  v13 = *(v12 - 8);
  v7[20] = v13;
  v14 = *(v13 + 64) + 15;
  v7[21] = swift_task_alloc();
  v15 = sub_100049CB8();
  v7[22] = v15;
  v16 = *(v15 - 8);
  v7[23] = v16;
  v17 = *(v16 + 64) + 15;
  v7[24] = swift_task_alloc();
  v18 = type metadata accessor for UsageTimelineEntry();
  v7[25] = v18;
  v19 = *(v18 - 8);
  v7[26] = v19;
  v20 = *(v19 + 64) + 15;
  v7[27] = swift_task_alloc();

  return _swift_task_switch(sub_100037CAC, 0, 0);
}

uint64_t sub_100037CAC()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  type metadata accessor for UsageProvider();
  inited = swift_initStackObject();
  *(v0 + 224) = inited;
  *(inited + 16) = 0;
  v4 = (inited + 16);
  *(inited + 24) = 0;
  v5 = [v2 displayString];
  v6 = sub_100049E08();
  v8 = v7;

  *(v0 + 232) = v8;
  sub_100049D58();
  v10 = v9;
  v12 = v11;
  v13 = [v2 identifier];
  if (v13)
  {
    v14 = v13;
    v15 = sub_100049E08();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  *(v0 + 240) = v17;
  v18 = [*(v0 + 88) isRemote];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 BOOLValue];
  }

  else
  {
    v20 = 0;
  }

  v21 = *(v0 + 192);
  v22 = *(v0 + 96);
  sub_100049D68();
  sub_10003C088();
  v23 = sub_100020CF8(v20, v15, v17);

  if (v23 & 1) != 0 && (v24 = sub_100049258(), *(v0 + 40) = v24, *(v0 + 48) = sub_10003B8AC(&qword_10005EB50, &type metadata accessor for ScreenTimeFeatureFlags), v25 = sub_10003B8F4((v0 + 16)), (*(*(v24 - 8) + 104))(v25, enum case for ScreenTimeFeatureFlags.newUsage(_:), v24), LOBYTE(v24) = sub_100049118(), sub_100002890((v0 + 16)), (v24))
  {
    if (qword_10005D6D8 != -1)
    {
      swift_once();
    }

    v26 = sub_1000492C8();
    sub_1000143C0(v26, qword_10005EB58);
    v27 = sub_1000492A8();
    v28 = sub_10004A0A8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Using Device Activity to show widget usage data", v29, 2u);
    }

    *(v0 + 248) = *v4;

    v30 = swift_task_alloc();
    *(v0 + 256) = v30;
    *v30 = v0;
    v30[1] = sub_1000381B8;
    v31 = *(v0 + 216);
    v32 = *(v0 + 192);

    return sub_10001CEEC(v31, v10, v12, v6, v8, v15, v17, v20, v32);
  }

  else
  {
    if (qword_10005D6D8 != -1)
    {
      swift_once();
    }

    v34 = sub_1000492C8();
    sub_1000143C0(v34, qword_10005EB58);
    v35 = sub_1000492A8();
    v36 = sub_10004A0A8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Using Core Data to show widget usage data", v37, 2u);
    }

    v38 = *(v0 + 192);

    v39 = sub_10003C368();
    *(v0 + 264) = v39;
    v40 = swift_task_alloc();
    *(v0 + 272) = v40;
    *(v40 + 16) = v39;
    *(v40 + 24) = v20;
    *(v40 + 32) = v15;
    *(v40 + 40) = v17;
    *(v40 + 48) = v6;
    *(v40 + 56) = v8;
    *(v40 + 64) = v38;
    *(v40 + 72) = v10;
    *(v40 + 80) = v12;
    v41 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v42 = swift_task_alloc();
    *(v0 + 280) = v42;
    *v42 = v0;
    v42[1] = sub_100038680;
    v43 = *(v0 + 216);
    v44 = *(v0 + 200);

    return withCheckedContinuation<A>(isolation:function:_:)(v43, 0, 0, 0xD00000000000003DLL, 0x8000000100053EA0, sub_10003B84C, v40, v44);
  }
}

uint64_t sub_1000381B8()
{
  v1 = *v0;
  v2 = *(*v0 + 256);
  v3 = *(*v0 + 248);
  v4 = *(*v0 + 240);
  v5 = *(*v0 + 232);
  v6 = *(*v0 + 224);
  v8 = *v0;

  (*(v1[23] + 8))(v1[24], v1[22]);

  return _swift_task_switch(sub_100038384, 0, 0);
}

uint64_t sub_100038384()
{
  if (qword_10005D6D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1000492C8();
  sub_1000143C0(v1, qword_10005EB18);
  v2 = sub_1000492A8();
  v3 = sub_10004A0A8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "getTimeline calling completion", v4, 2u);
  }

  v5 = v0[26];
  v6 = v0[27];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[18];
  v28 = v0[25];
  v29 = v0[19];
  v10 = v0[16];
  v11 = v0[17];
  v12 = v0[15];
  v26 = v0[13];
  v27 = v0[14];

  sub_1000027D4(&qword_10005EB48, &qword_10004C818);
  v13 = *(v5 + 72);
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10004B590;
  sub_10003647C(v6, v15 + v14);
  sub_100048FF8();
  sub_100049D08();
  (*(v10 + 8))(v11, v12);
  sub_10003B8AC(&qword_10005EB30, type metadata accessor for UsageTimelineEntry);
  sub_100049D88();
  v26(v7);
  (*(v8 + 8))(v7, v29);
  v16 = sub_1000492A8();
  v17 = sub_10004A0A8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "getTimeline done", v18, 2u);
  }

  v19 = v0[27];
  v20 = v0[24];
  v21 = v0[21];
  v23 = v0[17];
  v22 = v0[18];

  sub_10003B850(v19);

  v24 = v0[1];

  return v24();
}

uint64_t sub_100038680()
{
  v1 = *v0;
  v2 = *(*v0 + 280);
  v3 = *(*v0 + 272);
  v4 = *(*v0 + 264);
  v5 = *(*v0 + 240);
  v6 = *(*v0 + 232);
  v7 = *(*v0 + 224);
  v9 = *v0;

  (*(v1[23] + 8))(v1[24], v1[22]);

  return _swift_task_switch(sub_100038384, 0, 0);
}

uint64_t sub_100038870@<X0>(_BYTE *a1@<X8>)
{
  v84 = a1;
  v93 = sub_1000490F8();
  v90 = *(v93 - 8);
  v1 = *(v90 + 64);
  v2 = __chkstk_darwin(v93);
  v89 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v5 = &v77 - v4;
  v95 = sub_100049058();
  v6 = *(v95 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v95);
  v81 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v87 = &v77 - v11;
  __chkstk_darwin(v10);
  v86 = (&v77 - v12);
  v80 = sub_100049CB8();
  v13 = *(v80 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v80);
  v83 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v77 - v17;
  v19 = sub_100048E98();
  v91 = *(v19 - 8);
  v92 = v19;
  v20 = *(v91 + 64);
  v21 = __chkstk_darwin(v19);
  v85 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v88 = &v77 - v23;
  v24 = sub_1000027D4(&qword_10005DE00, &qword_10004B8D8);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v82 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v29 = &v77 - v28;
  v30 = sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v34 = &v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v94 = &v77 - v35;
  if (qword_10005D6D0 != -1)
  {
    swift_once();
  }

  v36 = sub_1000492C8();
  sub_1000143C0(v36, qword_10005EB18);
  v37 = sub_1000492A8();
  v38 = sub_10004A0A8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "placeholder called", v39, 2u);
  }

  (*(v6 + 56))(v94, 1, 1, v95);
  sub_100049D58();
  v41 = v40;
  v43 = v42;
  (*(v91 + 56))(v29, 1, 1, v92);
  sub_100049D68();
  sub_100049038();
  sub_1000490B8();
  v44 = v83;
  v45 = v80;
  (*(v13 + 16))(v83, v18, v80);
  v46 = (*(v13 + 88))(v44, v45);
  v47 = v87;
  v48 = v84;
  v79 = v29;
  if (v46 == enum case for WidgetFamily.systemSmall(_:))
  {
    goto LABEL_6;
  }

  if (v46 == enum case for WidgetFamily.systemMedium(_:))
  {
    v49 = v88;
    v50 = 15;
    goto LABEL_9;
  }

  if (v46 == enum case for WidgetFamily.systemLarge(_:) || v46 == enum case for WidgetFamily.systemExtraLarge(_:))
  {
    v51 = v86;
    sub_10001C284(v86, v88);
    goto LABEL_10;
  }

  if (v46 == enum case for WidgetFamily.accessoryCircular(_:) || v46 == enum case for WidgetFamily.accessoryRectangular(_:) || v46 == enum case for WidgetFamily.accessoryInline(_:))
  {
LABEL_6:
    v49 = v88;
    v50 = 9;
LABEL_9:
    v51 = v86;
    sub_100022910(v50, v86, v5, v49);
LABEL_10:
    v78 = *(v90 + 8);
    v78(v5, v93);
    v86 = *(v6 + 8);
    (v86)(v51, v95);
    (*(v13 + 8))(v18, v45);
    goto LABEL_11;
  }

  v75 = v86;
  sub_10001C284(v86, v88);
  v78 = *(v90 + 8);
  v78(v5, v93);
  v86 = *(v6 + 8);
  (v86)(v75, v95);
  v76 = *(v13 + 8);
  v76(v18, v45);
  v76(v83, v45);
LABEL_11:
  sub_100049038();
  sub_1000490B8();
  *v48 = 0;
  sub_1000055FC(v94, v34, &qword_10005DC10, &qword_10004B7C0);
  v52 = *(v6 + 48);
  v53 = v52(v34, 1, v95);
  v54 = v91;
  v55 = v92;
  v56 = v81;
  if (v53 == 1)
  {
    v57 = v47;
    v58 = v95;
    (*(v6 + 16))(v81, v57, v95);
    if (v52(v34, 1, v58) != 1)
    {
      sub_100005664(v34, &qword_10005DC10, &qword_10004B7C0);
    }
  }

  else
  {
    (*(v6 + 32))(v81, v34, v95);
  }

  v59 = type metadata accessor for UsageTimelineEntry();
  v60 = &v48[v59[6]];
  v61 = &v48[v59[8]];
  (*(v6 + 32))(&v48[v59[5]], v56, v95);
  *v60 = 0;
  v60[1] = 0;
  v62 = &v48[v59[7]];
  *v62 = v41;
  v62[1] = v43;
  *v61 = 0;
  v61[1] = 0;
  v63 = v79;
  v64 = v82;
  sub_1000055FC(v79, v82, &qword_10005DE00, &qword_10004B8D8);
  v65 = *(v54 + 48);
  v66 = v55;
  if (v65(v64, 1, v55) == 1)
  {
    v67 = v87;
    v68 = v89;
    sub_10001C284(v87, v85);
    v78(v68, v93);
    v69 = v67;
    v48 = v84;
    (v86)(v69, v95);
    sub_100005664(v63, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v94, &qword_10005DC10, &qword_10004B7C0);
    v70 = v65(v64, 1, v66);
    v71 = v85;
    if (v70 != 1)
    {
      sub_100005664(v64, &qword_10005DE00, &qword_10004B8D8);
    }
  }

  else
  {
    v78(v89, v93);
    (v86)(v87, v95);
    sub_100005664(v63, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v94, &qword_10005DC10, &qword_10004B7C0);
    v71 = v85;
    (*(v54 + 32))(v85, v64, v55);
  }

  v72 = v59[18];
  v73 = *(v54 + 32);
  v73(&v48[v59[9]], v71, v66);
  result = (v73)(&v48[v59[10]], v88, v66);
  *&v48[v59[11]] = &_swiftEmptyArrayStorage;
  v48[v59[12]] = 0;
  *&v48[v59[13]] = &_swiftEmptyArrayStorage;
  v48[v59[14]] = 0;
  v48[v59[15]] = 0;
  *&v48[v59[16]] = &_swiftEmptyArrayStorage;
  *&v48[v59[17]] = 0;
  *&v48[v72] = 0;
  return result;
}

uint64_t sub_1000392E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to IntentTimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10003939C;

  return IntentTimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_10003939C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100039490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to IntentTimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10003BB9C;

  return IntentTimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_100039544(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10003963C;

  return v7(a1);
}

uint64_t sub_10003963C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100039734(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v139 = a3;
  v140 = a4;
  v6 = sub_1000490F8();
  v136 = *(v6 - 8);
  v137 = v6;
  v7 = *(v136 + 64);
  v8 = __chkstk_darwin(v6);
  v135 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v131 = (&v116 - v10);
  v11 = sub_100049058();
  v125 = *(v11 - 8);
  v12 = *(v125 + 64);
  v13 = __chkstk_darwin(v11);
  v121 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v138 = &v116 - v16;
  __chkstk_darwin(v15);
  v118 = &v116 - v17;
  v120 = sub_100049CB8();
  v119 = *(v120 - 8);
  v18 = *(v119 + 64);
  v19 = __chkstk_darwin(v120);
  v117 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v130 = &v116 - v21;
  v124 = sub_100048E98();
  v123 = *(v124 - 8);
  v22 = *(v123 + 64);
  v23 = __chkstk_darwin(v124);
  v25 = &v116 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v134 = &v116 - v26;
  v27 = sub_1000027D4(&qword_10005DE00, &qword_10004B8D8);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v126 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v132 = &v116 - v31;
  v32 = sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  v33 = *(*(v32 - 8) + 64);
  v34 = __chkstk_darwin(v32 - 8);
  v36 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v141 = &v116 - v37;
  v133 = type metadata accessor for UsageTimelineEntry();
  v38 = *(*(v133 - 1) + 64);
  v39 = __chkstk_darwin(v133);
  v142 = &v116 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v39);
  v122 = &v116 - v41;
  v42 = sub_100049D78();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  v127 = v45;
  v129 = &v116 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000027D4(&qword_10005EB40, &qword_10004C810);
  v47 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46 - 8);
  v128 = &v116 - v48;
  if (qword_10005D6D0 != -1)
  {
    swift_once();
  }

  v49 = sub_1000492C8();
  v116 = sub_1000143C0(v49, qword_10005EB18);
  v50 = sub_1000492A8();
  v51 = sub_10004A0A8();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "getSnapshot called", v52, 2u);
  }

  v53 = [a1 user];
  if (v53)
  {
    v54 = v53;
    v55 = sub_100049FC8();
    v56 = v128;
    (*(*(v55 - 8) + 56))(v128, 1, 1, v55);
    v57 = v129;
    (*(v43 + 16))(v129, a2, v42);
    v58 = (*(v43 + 80) + 40) & ~*(v43 + 80);
    v59 = (v127 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
    v60 = swift_allocObject();
    *(v60 + 2) = 0;
    *(v60 + 3) = 0;
    *(v60 + 4) = v54;
    (*(v43 + 32))(&v60[v58], v57, v42);
    v61 = &v60[v59];
    v62 = v140;
    *v61 = v139;
    *(v61 + 1) = v62;

    sub_10003779C(0, 0, v56, &unk_10004C850, v60);
  }

  v129 = v36;
  v64 = sub_1000492A8();
  v65 = sub_10004A088();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&_mh_execute_header, v64, v65, "Failed to provide user. Returning placeholder", v66, 2u);
  }

  v67 = v125;
  (*(v125 + 56))(v141, 1, 1, v11);
  sub_100049D58();
  v69 = v68;
  v71 = v70;
  v72 = v123;
  v73 = v124;
  (*(v123 + 56))(v132, 1, 1, v124);
  v74 = v130;
  sub_100049D68();
  v75 = v118;
  sub_100049038();
  sub_1000490B8();
  v76 = v119;
  v77 = v117;
  v78 = v74;
  v79 = v120;
  (*(v119 + 16))(v117, v78, v120);
  v80 = (*(v76 + 88))(v77, v79);
  v81 = v138;
  if (v80 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v80 == enum case for WidgetFamily.systemMedium(_:))
    {
      v82 = v134;
      v83 = 15;
      goto LABEL_13;
    }

    if (v80 == enum case for WidgetFamily.systemLarge(_:) || v80 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      v115 = v75;
      v85 = v75;
      v86 = v131;
      sub_10001C284(v115, v134);
      goto LABEL_14;
    }

    if (v80 != enum case for WidgetFamily.accessoryCircular(_:) && v80 != enum case for WidgetFamily.accessoryRectangular(_:) && v80 != enum case for WidgetFamily.accessoryInline(_:))
    {
      v113 = v131;
      sub_10001C284(v75, v134);
      v131 = *(v136 + 8);
      (v131)(v113, v137);
      v128 = *(v67 + 8);
      (v128)(v75, v11);
      v114 = *(v76 + 8);
      v114(v130, v79);
      v114(v77, v79);
      v81 = v138;
      v67 = v125;
      goto LABEL_15;
    }
  }

  v82 = v134;
  v83 = 9;
LABEL_13:
  v84 = v75;
  v85 = v75;
  v86 = v131;
  sub_100022910(v83, v84, v131, v82);
LABEL_14:
  v131 = *(v136 + 8);
  (v131)(v86, v137);
  v128 = *(v67 + 8);
  (v128)(v85, v11);
  (*(v76 + 8))(v130, v79);
LABEL_15:
  v87 = v11;
  sub_100049038();
  sub_1000490B8();
  v88 = v141;
  *v142 = 0;
  v89 = v129;
  sub_1000055FC(v88, v129, &qword_10005DC10, &qword_10004B7C0);
  v90 = *(v67 + 48);
  if (v90(v89, 1, v87) == 1)
  {
    v91 = v121;
    (*(v67 + 16))(v121, v81, v87);
    v92 = v90(v89, 1, v87) == 1;
    v93 = v89;
    v94 = v91;
    if (!v92)
    {
      sub_100005664(v93, &qword_10005DC10, &qword_10004B7C0);
    }
  }

  else
  {
    v95 = v121;
    (*(v67 + 32))(v121, v89, v87);
    v94 = v95;
  }

  v96 = v133;
  v97 = v142;
  v98 = &v142[v133[6]];
  v99 = &v142[v133[8]];
  (*(v67 + 32))(&v142[v133[5]], v94, v87);
  *v98 = 0;
  v98[1] = 0;
  v100 = &v97[v96[7]];
  *v100 = v69;
  v100[1] = v71;
  *v99 = 0;
  v99[1] = 0;
  v101 = v132;
  v102 = v126;
  sub_1000055FC(v132, v126, &qword_10005DE00, &qword_10004B8D8);
  v103 = *(v72 + 48);
  if (v103(v102, 1, v73) == 1)
  {
    v104 = v138;
    v105 = v135;
    sub_10001C284(v138, v25);
    (v131)(v105, v137);
    v106 = v101;
    v107 = v126;
    (v128)(v104, v87);
    sub_100005664(v106, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v141, &qword_10005DC10, &qword_10004B7C0);
    if (v103(v107, 1, v73) != 1)
    {
      sub_100005664(v107, &qword_10005DE00, &qword_10004B8D8);
    }
  }

  else
  {
    (v131)(v135, v137);
    (v128)(v138, v87);
    sub_100005664(v101, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v141, &qword_10005DC10, &qword_10004B7C0);
    (*(v72 + 32))(v25, v102, v73);
  }

  v108 = v133;
  v109 = v133[18];
  v110 = *(v72 + 32);
  v111 = v142;
  v110(&v142[v133[9]], v25, v73);
  v110((v111 + v108[10]), v134, v73);
  *(v111 + v108[11]) = &_swiftEmptyArrayStorage;
  *(v111 + v108[12]) = 0;
  *(v111 + v108[13]) = &_swiftEmptyArrayStorage;
  *(v111 + v108[14]) = 0;
  *(v111 + v108[15]) = 0;
  *(v111 + v108[16]) = &_swiftEmptyArrayStorage;
  *(v111 + v108[17]) = 0;
  *(v111 + v109) = 0;
  v112 = v122;
  sub_10003B500(v111, v122);
  v139(v112);
  return sub_10003B850(v112);
}

uint64_t sub_10003A51C(void *a1, void (*a2)(uint64_t, uint64_t), void (*a3)(char *), uint64_t a4)
{
  v150 = a4;
  v151 = a3;
  v148 = a1;
  v149 = a2;
  v4 = sub_100049D18();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v129 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for UsageTimelineEntry();
  v121 = *(v140 - 1);
  v7 = *(v121 + 64);
  __chkstk_darwin(v140);
  v133 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000490F8();
  v144 = *(v9 - 8);
  v145 = v9;
  v10 = *(v144 + 64);
  v11 = __chkstk_darwin(v9);
  v143 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v122 = &v118 - v13;
  v147 = sub_100049058();
  v14 = *(v147 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v147);
  v132 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v126 = &v118 - v19;
  v20 = __chkstk_darwin(v18);
  v141 = &v118 - v21;
  __chkstk_darwin(v20);
  v139 = &v118 - v22;
  v125 = sub_100049CB8();
  v124 = *(v125 - 8);
  v23 = *(v124 + 64);
  v24 = __chkstk_darwin(v125);
  v134 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v138 = &v118 - v26;
  v27 = sub_100048E98();
  v146 = *(v27 - 8);
  v28 = *(v146 + 64);
  v29 = __chkstk_darwin(v27);
  v31 = &v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v142 = &v118 - v32;
  v33 = sub_1000027D4(&qword_10005DE00, &qword_10004B8D8);
  v34 = *(*(v33 - 8) + 64);
  v35 = __chkstk_darwin(v33 - 8);
  v127 = &v118 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v135 = &v118 - v37;
  v38 = sub_1000027D4(&qword_10005DC10, &qword_10004B7C0);
  v39 = *(*(v38 - 8) + 64);
  v40 = __chkstk_darwin(v38 - 8);
  v123 = &v118 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = &v118 - v42;
  v131 = sub_1000027D4(&qword_10005EB38, &qword_10004C808);
  v130 = *(v131 - 8);
  v44 = *(v130 + 64);
  __chkstk_darwin(v131);
  v128 = &v118 - v45;
  v137 = sub_100049D78();
  v46 = *(v137 - 8);
  v47 = *(v46 + 64);
  __chkstk_darwin(v137);
  v136 = &v118 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1000027D4(&qword_10005EB40, &qword_10004C810);
  v49 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48 - 8);
  v51 = &v118 - v50;
  if (qword_10005D6D0 != -1)
  {
    swift_once();
  }

  v52 = sub_1000492C8();
  sub_1000143C0(v52, qword_10005EB18);
  v53 = sub_1000492A8();
  v54 = sub_10004A0A8();
  v55 = os_log_type_enabled(v53, v54);
  v152 = v27;
  if (v55)
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&_mh_execute_header, v53, v54, "getTimeline called", v56, 2u);
    v27 = v152;
  }

  v57 = [v148 user];
  if (v57)
  {
    v58 = v57;
    v59 = sub_100049FC8();
    (*(*(v59 - 8) + 56))(v51, 1, 1, v59);
    v61 = v136;
    v60 = v137;
    (*(v46 + 16))(v136, v149, v137);
    v62 = (*(v46 + 80) + 40) & ~*(v46 + 80);
    v63 = swift_allocObject();
    *(v63 + 2) = 0;
    *(v63 + 3) = 0;
    *(v63 + 4) = v58;
    (*(v46 + 32))(&v63[v62], v61, v60);
    v64 = &v63[(v47 + v62 + 7) & 0xFFFFFFFFFFFFFFF8];
    v65 = v150;
    *v64 = v151;
    *(v64 + 1) = v65;

    sub_10003779C(0, 0, v51, &unk_10004C828, v63);
  }

  v67 = sub_1000492A8();
  v68 = sub_10004A088();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&_mh_execute_header, v67, v68, "Failed to provide user. Returning placeholder", v69, 2u);
    v27 = v152;
  }

  sub_1000027D4(&qword_10005EB48, &qword_10004C818);
  v70 = *(v121 + 72);
  v137 = (*(v121 + 80) + 32) & ~*(v121 + 80);
  v148 = swift_allocObject();
  *(v148 + 1) = xmmword_10004B590;
  (*(v14 + 56))(v43, 1, 1, v147);
  sub_100049D58();
  v72 = v71;
  v74 = v73;
  v75 = v135;
  (*(v146 + 56))(v135, 1, 1, v27);
  v76 = v138;
  sub_100049D68();
  sub_100049038();
  v77 = v122;
  sub_1000490B8();
  v78 = v124;
  v79 = v134;
  v80 = v125;
  (*(v124 + 16))(v134, v76, v125);
  v81 = (*(v78 + 88))(v79, v80);
  v82 = v133;
  v83 = v141;
  if (v81 != enum case for WidgetFamily.systemSmall(_:))
  {
    if (v81 == enum case for WidgetFamily.systemMedium(_:))
    {
      v84 = v142;
      v85 = 15;
      goto LABEL_13;
    }

    if (v81 == enum case for WidgetFamily.systemLarge(_:) || v81 == enum case for WidgetFamily.systemExtraLarge(_:))
    {
      v86 = v139;
      sub_10001C284(v139, v142);
      goto LABEL_14;
    }

    if (v81 != enum case for WidgetFamily.accessoryCircular(_:) && v81 != enum case for WidgetFamily.accessoryRectangular(_:) && v81 != enum case for WidgetFamily.accessoryInline(_:))
    {
      v115 = v139;
      sub_10001C284(v139, v142);
      v136 = *(v144 + 8);
      (v136)(v77, v145);
      v116 = v115;
      v88 = v147;
      v149 = *(v14 + 8);
      v149(v116, v147);
      v117 = *(v78 + 8);
      v117(v138, v80);
      v117(v134, v80);
      goto LABEL_15;
    }
  }

  v84 = v142;
  v85 = 9;
LABEL_13:
  v86 = v139;
  sub_100022910(v85, v139, v77, v84);
LABEL_14:
  v136 = *(v144 + 8);
  (v136)(v77, v145);
  v87 = v86;
  v88 = v147;
  v149 = *(v14 + 8);
  v149(v87, v147);
  (*(v78 + 8))(v138, v80);
LABEL_15:
  sub_100049038();
  sub_1000490B8();
  *v82 = 0;
  v89 = v123;
  sub_1000055FC(v43, v123, &qword_10005DC10, &qword_10004B7C0);
  v90 = *(v14 + 48);
  v91 = v90(v89, 1, v88);
  v120 = v31;
  v119 = v43;
  if (v91 == 1)
  {
    v92 = v126;
    (*(v14 + 16))(v126, v83, v88);
    if (v90(v89, 1, v88) != 1)
    {
      sub_100005664(v89, &qword_10005DC10, &qword_10004B7C0);
    }
  }

  else
  {
    v92 = v126;
    (*(v14 + 32))(v126, v89, v88);
  }

  v93 = v140;
  v94 = &v82[v140[6]];
  v95 = &v82[v140[8]];
  (*(v14 + 32))(&v82[v140[5]], v92, v88);
  *v94 = 0;
  v94[1] = 0;
  v96 = &v82[v93[7]];
  *v96 = v72;
  v96[1] = v74;
  *v95 = 0;
  v95[1] = 0;
  v97 = v75;
  v98 = v75;
  v99 = v127;
  sub_1000055FC(v97, v127, &qword_10005DE00, &qword_10004B8D8);
  v100 = v146;
  v101 = *(v146 + 48);
  v102 = v152;
  v103 = v88;
  if (v101(v99, 1, v152) == 1)
  {
    v104 = v141;
    v105 = v143;
    sub_10001C284(v141, v120);
    (v136)(v105, v145);
    v149(v104, v88);
    sub_100005664(v135, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v119, &qword_10005DC10, &qword_10004B7C0);
    if (v101(v99, 1, v102) != 1)
    {
      sub_100005664(v99, &qword_10005DE00, &qword_10004B8D8);
    }

    v102 = v152;
    v100 = v146;
    v103 = v147;
    v106 = v120;
    v107 = v149;
  }

  else
  {
    (v136)(v143, v145);
    v108 = v149;
    v149(v141, v88);
    sub_100005664(v98, &qword_10005DE00, &qword_10004B8D8);
    sub_100005664(v119, &qword_10005DC10, &qword_10004B7C0);
    v106 = v120;
    v109 = v99;
    v107 = v108;
    (*(v100 + 32))(v120, v109, v102);
  }

  v110 = v140;
  v111 = v140[18];
  v112 = *(v100 + 32);
  v112(&v82[v140[9]], v106, v102);
  v112(&v82[v110[10]], v142, v102);
  *&v82[v110[11]] = &_swiftEmptyArrayStorage;
  v82[v110[12]] = 0;
  *&v82[v110[13]] = &_swiftEmptyArrayStorage;
  v82[v110[14]] = 0;
  v82[v110[15]] = 0;
  *&v82[v110[16]] = &_swiftEmptyArrayStorage;
  *&v82[v110[17]] = 0;
  *&v82[v111] = 0;
  sub_10003B500(v82, v148 + v137);
  v113 = v132;
  sub_100048FF8();
  sub_100049D08();
  v107(v113, v103);
  sub_10003B8AC(&qword_10005EB30, type metadata accessor for UsageTimelineEntry);
  v114 = v128;
  sub_100049D88();
  v151(v114);
  return (*(v130 + 8))(v114, v131);
}

uint64_t sub_10003B500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UsageTimelineEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10003B568(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100049D78() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10003939C;

  return sub_100037A9C(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_10003B6A4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B6DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10003BB9C;

  return sub_100039544(a1, v5);
}

uint64_t sub_10003B794(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10003939C;

  return sub_100039544(a1, v5);
}

uint64_t sub_10003B850(uint64_t a1)
{
  v2 = type metadata accessor for UsageTimelineEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003B8AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_10003B8F4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_10003B958()
{
  v1 = sub_100049D78();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_10003BA3C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_100049D78() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_10003BB9C;

  return sub_100036C20(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_10003BBF4()
{
  v0 = sub_1000492C8();
  sub_1000188D8(v0, qword_10005EB58);
  sub_1000143C0(v0, qword_10005EB58);
  return sub_1000492B8();
}

uint64_t sub_10003BC78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 48);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_10004A398() & 1) == 0)
  {
    return 0;
  }

  sub_10001B134(0, &qword_10005ED08, NSObject_ptr);
  if ((sub_10004A128() & 1) == 0)
  {
    return 0;
  }

  v12 = sub_10004A128();
  result = 0;
  if ((v12 & 1) != 0 && v4 == v9)
  {
    if (v5 == v10 && v6 == v11)
    {
      return 1;
    }

    else
    {

      return sub_10004A398();
    }
  }

  return result;
}

uint64_t sub_10003BDB0@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

Swift::Int sub_10003BDBC()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[4];
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  sub_10004A418();
  sub_100049E48();
  sub_10004A138();
  sub_10004A138();
  v8 = 0.0;
  if (v5 != 0.0)
  {
    v8 = v5;
  }

  sub_10004A438(*&v8);
  sub_100049E48();
  return sub_10004A448();
}

uint64_t sub_10003BE74()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[4];
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  sub_100049E48();
  sub_10004A138();
  sub_10004A138();
  v8 = 0.0;
  if (v5 != 0.0)
  {
    v8 = v5;
  }

  sub_10004A438(*&v8);

  return sub_100049E48();
}

Swift::Int sub_10003BF0C()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[4];
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  sub_10004A418();
  sub_100049E48();
  sub_10004A138();
  sub_10004A138();
  v8 = 0.0;
  if (v5 != 0.0)
  {
    v8 = v5;
  }

  sub_10004A438(*&v8);
  sub_100049E48();
  return sub_10004A448();
}

uint64_t sub_10003BFC0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10003C01C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100048E98();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_10003C088()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    v15 = 0;
    memset(v14, 0, sizeof(v14));
    type metadata accessor for DeviceActivityUsageProvider();
    memset(v12, 0, sizeof(v12));
    v13 = 0;
    v1 = swift_allocObject();
    sub_1000055FC(v12, &v7, &qword_10005DD90, &unk_10004C8D0);
    if (v8)
    {
      sub_10001435C(&v7, &v9);
    }

    else if (qword_10005D6C0 == -1)
    {
      v2 = qword_100060290;
      v10 = type metadata accessor for XPCPersistentStoreManager();
      v11 = &off_10005AA70;
      *&v9 = v2;
    }

    else
    {
      swift_once();
      v5 = v8;
      v6 = qword_100060290;
      v10 = type metadata accessor for XPCPersistentStoreManager();
      v11 = &off_10005AA70;
      *&v9 = v6;

      if (v5)
      {
        sub_100005664(&v7, &qword_10005DD90, &unk_10004C8D0);
      }
    }

    sub_10001435C(&v9, v1 + 112);
    sub_1000055FC(v16, &v7, &qword_10005DD80, &qword_10004B888);
    if (v8)
    {
      sub_10001435C(&v7, &v9);
    }

    else
    {
      v10 = &type metadata for ScreenTimeAppInfoCache;
      v11 = &off_100059D78;
    }

    sub_10001435C(&v9, v1 + 16);
    sub_1000055FC(v14, &v7, &qword_10005DD88, &unk_10004B890);
    if (v8)
    {
      sub_100005664(v12, &qword_10005DD90, &unk_10004C8D0);
      sub_100005664(v14, &qword_10005DD88, &unk_10004B890);
      sub_100005664(v16, &qword_10005DD80, &qword_10004B888);
      sub_10001435C(&v7, &v9);
    }

    else
    {
      v10 = &type metadata for ScreenTimeIconCache;
      v11 = &off_100059D50;
      sub_100005664(v12, &qword_10005DD90, &unk_10004C8D0);
      sub_100005664(v14, &qword_10005DD88, &unk_10004B890);
      sub_100005664(v16, &qword_10005DD80, &qword_10004B888);
      if (v8)
      {
        sub_100005664(&v7, &qword_10005DD88, &unk_10004B890);
      }
    }

    sub_10001435C(&v9, v1 + 72);
    *(v1 + 56) = sub_100049278();
    *(v1 + 64) = &protocol witness table for STDeviceActivityDataSource;
    v3 = *(v0 + 16);
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10003C368()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    type metadata accessor for CoreDataUsageProvider();
    memset(v5, 0, sizeof(v5));
    v6 = 0;
    swift_allocObject();
    v1 = sub_10000B12C(v9, v7, v5);
    v3 = *(v2 + 24);
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t sub_10003C410()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10003C49C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_10003C4F8(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_10003C4F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_10003C5C4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10000282C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100002890(v11);
  return v7;
}

unint64_t sub_10003C5C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_10003C6D0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_10004A208();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_10003C6D0(uint64_t a1, unint64_t a2)
{
  v4 = sub_10003C71C(a1, a2);
  sub_10003C84C(&off_100059BA0);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_10003C71C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_10003C938(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10004A208();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_100049E78();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10003C938(v10, 0);
        result = sub_10004A1C8();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_10003C84C(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_10003C9AC(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_10003C938(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_1000027D4(&qword_10005EC50, &qword_10004C8E8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_10003C9AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000027D4(&qword_10005EC50, &qword_10004C8E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_10003CAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100049058();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v19 - v10;
  if ((sub_100048E58() & 1) == 0)
  {
    goto LABEL_6;
  }

  v12 = type metadata accessor for HourlyUsage();
  if (*(a1 + *(v12 + 20)) != *(a2 + *(v12 + 20)))
  {
    goto LABEL_6;
  }

  v13 = v12;
  v14 = *(v12 + 24);
  sub_1000027D4(&qword_10005DBC0, &qword_10004B780);
  v19[1] = v14;
  sub_100049318();
  v19[0] = *(v13 + 24);
  sub_100049318();
  LOBYTE(v14) = sub_100049008();
  v15 = *(v5 + 8);
  v15(v9, v4);
  v15(v11, v4);
  if ((v14 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_100049328();
  sub_100049328();
  v16 = sub_100049008();
  v15(v9, v4);
  v15(v11, v4);
  if (v16)
  {
    v17 = sub_10003BFC0(*(a1 + *(v13 + 28)), *(a2 + *(v13 + 28)));
  }

  else
  {
LABEL_6:
    v17 = 0;
  }

  return v17 & 1;
}

void sub_10003CCB8(char a1, _WORD *a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    v6 = a3;
    if (a3)
    {
      v4 = a2;
      v7 = qword_10005D6D8;

      if (v7 != -1)
      {
        goto LABEL_46;
      }

      while (1)
      {
        v8 = sub_1000492C8();
        sub_1000143C0(v8, qword_10005EB58);

        v9 = sub_1000492A8();
        v10 = sub_10004A0A8();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v46 = v12;
          *v11 = 136446210;
          *(v11 + 4) = sub_10003C4F8(v4, v6, &v46);
          _os_log_impl(&_mh_execute_header, v9, v10, "Fetching information for user with dsid: %{public}s.", v11, 0xCu);
          sub_100002890(v12);
        }

        v13 = [objc_opt_self() fetchRequest];
        sub_10001B134(0, &qword_10005DF08, NSPredicate_ptr);
        sub_1000027D4(&qword_10005DF10, &qword_10004C8E0);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_10004B5A0;
        *(v14 + 56) = &type metadata for String;
        v15 = sub_10001B17C();
        *(v14 + 32) = 1684632420;
        *(v14 + 40) = 0xE400000000000000;
        *(v14 + 96) = &type metadata for String;
        *(v14 + 104) = v15;
        *(v14 + 64) = v15;
        *(v14 + 72) = v4;
        *(v14 + 80) = v6;
        v16 = sub_10004A068();
        [v13 setPredicate:v16];

        v46 = 0;
        v17 = [v13 execute:&v46];
        v6 = v46;
        if (!v17)
        {
          break;
        }

        v4 = v17;
        sub_10001B134(0, &qword_10005DEF8, STCoreUser_ptr);
        v18 = sub_100049F58();
        v19 = v6;

LABEL_14:
        if (v18 >> 62)
        {
          if (v18 < 0)
          {
            v6 = v18;
          }

          else
          {
            v6 = (v18 & 0xFFFFFFFFFFFFFF8);
          }

          v26 = sub_10004A308() > 0;
          if (!sub_10004A308())
          {
LABEL_36:

            if (!v26)
            {
              if (qword_10005D6D8 != -1)
              {
                swift_once();
              }

              v45 = sub_1000492C8();
              sub_1000143C0(v45, qword_10005EB58);
              v41 = sub_1000492A8();
              v42 = sub_10004A088();
              if (os_log_type_enabled(v41, v42))
              {
                v43 = swift_slowAlloc();
                *v43 = 0;
                v44 = "Fetching user information returned empty results";
LABEL_41:
                _os_log_impl(&_mh_execute_header, v41, v42, v44, v43, 2u);
              }

              goto LABEL_42;
            }

            goto LABEL_43;
          }
        }

        else
        {
          v25 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v26 = v25 != 0;
          if (!v25)
          {
            goto LABEL_36;
          }
        }

        if ((v18 & 0xC000000000000001) != 0)
        {
          v27 = sub_10004A1F8();
          goto LABEL_19;
        }

        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v27 = *(v18 + 32);
LABEL_19:
          v28 = v27;

          v29 = v28;
          sub_100020A60(v28, a4);

          return;
        }

        __break(1u);
LABEL_46:
        swift_once();
      }

      v40 = v46;
      sub_100048F28();

      swift_willThrow();

      v41 = sub_1000492A8();
      v42 = sub_10004A088();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        v44 = "Fetching user information returned nil results";
        goto LABEL_41;
      }

LABEL_42:

LABEL_43:
      sub_100020A60(0, a4);
    }

    else
    {
      if (qword_10005D6D8 != -1)
      {
        swift_once();
      }

      v30 = sub_1000492C8();
      sub_1000143C0(v30, qword_10005EB58);
      v31 = sub_1000492A8();
      v32 = sub_10004A088();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Failed to provide DSID. Returning nil user.", v33, 2u);
      }

      sub_100020A60(0, a4);
    }
  }

  else
  {
    if (qword_10005D6D8 != -1)
    {
      swift_once();
    }

    v20 = sub_1000492C8();
    sub_1000143C0(v20, qword_10005EB58);
    v21 = sub_1000492A8();
    v22 = sub_10004A0A8();
    if (os_log_type_enabled(v21, v22))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Fetching local user information", v4, 2u);
    }

    v23 = [objc_opt_self() fetchRequestMatchingLocalUser];
    v46 = 0;
    v13 = [v23 execute:&v46];

    v6 = v46;
    if (v13)
    {
      sub_10001B134(0, &qword_10005DEF8, STCoreUser_ptr);
      v18 = sub_100049F58();
      v24 = v6;
      goto LABEL_14;
    }

    v34 = v46;
    sub_100048F28();

    swift_willThrow();
    swift_errorRetain();
    v35 = sub_1000492A8();
    v36 = sub_10004A088();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138543362;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v39;
      *v38 = v39;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to fetch user: %{public}@", v37, 0xCu);
      sub_100005664(v38, &qword_10005DDB0, &qword_10004B8B0);
    }

    sub_100020A60(0, a4);
  }
}

uint64_t sub_10003D4A4(uint64_t a1, _WORD *a2, void *a3, char a4, uint64_t a5)
{
  v31 = type metadata accessor for XPCPersistentStoreManager();
  v32 = &off_10005AA70;
  v30[0] = a1;
  v10 = *(*sub_1000028DC(v30, v31) + 24);
  v11 = qword_10005D6D8;
  swift_retain_n();

  if (v10 != 1)
  {
    goto LABEL_9;
  }

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = sub_1000492C8();
  sub_1000143C0(v12, qword_10005EB58);
  v13 = sub_1000492A8();
  v14 = sub_10004A0A8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Successfully loaded persistent store.", v15, 2u);
  }

  v16 = sub_1000028DC(v30, v31);
  v11 = swift_allocObject();
  v17 = a4 & 1;
  *(v11 + 16) = v17;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = sub_10003EF5C;
  *(v11 + 48) = a5;
  v18 = *v16;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_1000345C4();
  if (*(v18 + 24) != 1)
  {

    sub_10003CCB8(v17, a2, a3, a5);

    goto LABEL_15;
  }

  v19 = [*(v18 + 16) newBackgroundContext];
  [v19 setAutomaticallyMergesChangesFromParent:1];
  [v19 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v20 = swift_allocObject();
  v20[2] = sub_10003F4FC;
  v20[3] = v11;
  v20[4] = v19;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_10001C280;
  *(v21 + 24) = v20;
  aBlock[4] = sub_10003F4F4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003BBCC;
  aBlock[3] = &unk_10005ACE8;
  v22 = _Block_copy(aBlock);

  v23 = v19;

  [v23 performBlockAndWait:v22];

  _Block_release(v22);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
LABEL_9:
    if (v11 != -1)
    {
      swift_once();
    }

    v24 = sub_1000492C8();
    sub_1000143C0(v24, qword_10005EB58);
    v25 = sub_1000492A8();
    v26 = sub_10004A088();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "Failed to load persistent store. This prevented fetching user data.", v27, 2u);
    }

    sub_100020A60(0, a5);
  }

LABEL_15:
  sub_100002890(v30);
}

void sub_10003D904(char a1, _WORD *a2, void *a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v8 = a3;
    if (a3)
    {
      v5 = a2;
      v9 = qword_10005D6D8;

      if (v9 != -1)
      {
        goto LABEL_50;
      }

      while (1)
      {
        v10 = sub_1000492C8();
        sub_1000143C0(v10, qword_10005EB58);

        v11 = sub_1000492A8();
        v12 = sub_10004A0A8();

        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          v14 = swift_slowAlloc();
          v55[0] = v14;
          *v13 = 136446210;
          *(v13 + 4) = sub_10003C4F8(v5, v8, v55);
          _os_log_impl(&_mh_execute_header, v11, v12, "Fetching information for user with dsid: %{public}s.", v13, 0xCu);
          sub_100002890(v14);
        }

        v15 = [objc_opt_self() fetchRequest];
        sub_10001B134(0, &qword_10005DF08, NSPredicate_ptr);
        sub_1000027D4(&qword_10005DF10, &qword_10004C8E0);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_10004B5A0;
        *(v16 + 56) = &type metadata for String;
        v17 = sub_10001B17C();
        *(v16 + 32) = 1684632420;
        *(v16 + 40) = 0xE400000000000000;
        *(v16 + 96) = &type metadata for String;
        *(v16 + 104) = v17;
        *(v16 + 64) = v17;
        *(v16 + 72) = v5;
        *(v16 + 80) = v8;
        v18 = sub_10004A068();
        [v15 setPredicate:v18];

        v55[0] = 0;
        v19 = [v15 execute:v55];
        v8 = v55[0];
        if (!v19)
        {
          v49 = v55[0];
          sub_100048F28();

          swift_willThrow();

          v50 = sub_1000492A8();
          v51 = sub_10004A088();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            v53 = "Fetching user information returned nil results";
            goto LABEL_45;
          }

LABEL_46:

LABEL_47:
          sub_100020F60(0, a4, a5);
          return;
        }

        v5 = v19;
        sub_10001B134(0, &qword_10005DEF8, STCoreUser_ptr);
        v20 = sub_100049F58();
        v21 = v8;

LABEL_14:
        if (v20 >> 62)
        {
          if (v20 < 0)
          {
            v8 = v20;
          }

          else
          {
            v8 = (v20 & 0xFFFFFFFFFFFFFF8);
          }

          v28 = sub_10004A308() > 0;
          if (!sub_10004A308())
          {
LABEL_40:

            if (!v28)
            {
              if (qword_10005D6D8 != -1)
              {
                swift_once();
              }

              v54 = sub_1000492C8();
              sub_1000143C0(v54, qword_10005EB58);
              v50 = sub_1000492A8();
              v51 = sub_10004A088();
              if (os_log_type_enabled(v50, v51))
              {
                v52 = swift_slowAlloc();
                *v52 = 0;
                v53 = "Fetching user information returned empty results";
LABEL_45:
                _os_log_impl(&_mh_execute_header, v50, v51, v53, v52, 2u);
              }

              goto LABEL_46;
            }

            goto LABEL_47;
          }
        }

        else
        {
          v27 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v28 = v27 != 0;
          if (!v27)
          {
            goto LABEL_40;
          }
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          break;
        }

        if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v29 = *(v20 + 32);
          goto LABEL_19;
        }

        __break(1u);
LABEL_50:
        swift_once();
      }

      v29 = sub_10004A1F8();
LABEL_19:
      v30 = v29;

      v31 = *(a5 + 56);
      v32 = *(a5 + 64);
      v33 = v30;
      v34 = [v33 altDSID];
      if (v34)
      {
        v35 = v34;
        sub_100049E08();
      }

      v46 = [v33 userDeviceStates];
      if (v46)
      {
        v47 = v46;
        sub_10001B134(0, &qword_10005E218, STUserDeviceState_ptr);
        sub_10003E748();
        sub_100049FE8();
      }

      v48 = sub_100049288();

      swift_beginAccess();
      *(a4 + 16) = v48 & 1;
    }

    else
    {
      if (qword_10005D6D8 != -1)
      {
        swift_once();
      }

      v36 = sub_1000492C8();
      sub_1000143C0(v36, qword_10005EB58);
      v37 = sub_1000492A8();
      v38 = sub_10004A088();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Failed to provide DSID. Returning nil user.", v39, 2u);
      }

      sub_100020F60(0, a4, a5);
    }
  }

  else
  {
    if (qword_10005D6D8 != -1)
    {
      swift_once();
    }

    v22 = sub_1000492C8();
    sub_1000143C0(v22, qword_10005EB58);
    v23 = sub_1000492A8();
    v24 = sub_10004A0A8();
    if (os_log_type_enabled(v23, v24))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "Fetching local user information", v5, 2u);
    }

    v25 = [objc_opt_self() fetchRequestMatchingLocalUser];
    v55[0] = 0;
    v15 = [v25 execute:v55];

    v8 = v55[0];
    if (v15)
    {
      sub_10001B134(0, &qword_10005DEF8, STCoreUser_ptr);
      v20 = sub_100049F58();
      v26 = v8;
      goto LABEL_14;
    }

    v40 = v55[0];
    sub_100048F28();

    swift_willThrow();
    swift_errorRetain();
    v41 = sub_1000492A8();
    v42 = sub_10004A088();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138543362;
      swift_errorRetain();
      v45 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 4) = v45;
      *v44 = v45;
      _os_log_impl(&_mh_execute_header, v41, v42, "Failed to fetch user: %{public}@", v43, 0xCu);
      sub_100005664(v44, &qword_10005DDB0, &qword_10004B8B0);
    }

    sub_100020F60(0, a4, a5);
  }
}

uint64_t sub_10003E1EC(uint64_t a1, _WORD *a2, void *a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v34 = type metadata accessor for XPCPersistentStoreManager();
  v35 = &off_10005AA70;
  v33[0] = a1;
  v13 = *(*sub_1000028DC(v33, v34) + 24);
  v14 = qword_10005D6D8;
  swift_retain_n();
  swift_retain_n();

  if (v13 != 1)
  {
    goto LABEL_9;
  }

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_1000492C8();
  sub_1000143C0(v15, qword_10005EB58);
  v16 = sub_1000492A8();
  v17 = sub_10004A0A8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Successfully loaded persistent store.", v18, 2u);
  }

  v19 = sub_1000028DC(v33, v34);
  v14 = swift_allocObject();
  v20 = a4 & 1;
  *(v14 + 16) = v20;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = sub_10003E6E8;
  *(v14 + 48) = v12;
  v21 = *v19;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_1000345C4();
  if (*(v21 + 24) != 1)
  {

    sub_10003D904(v20, a2, a3, a5, a6);

    goto LABEL_15;
  }

  v22 = [*(v21 + 16) newBackgroundContext];
  [v22 setAutomaticallyMergesChangesFromParent:1];
  [v22 setMergePolicy:NSMergeByPropertyObjectTrumpMergePolicy];
  v23 = swift_allocObject();
  v23[2] = sub_10003E6F0;
  v23[3] = v14;
  v23[4] = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_10001B110;
  *(v24 + 24) = v23;
  aBlock[4] = sub_10003E708;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10003BBCC;
  aBlock[3] = &unk_10005AC48;
  v25 = _Block_copy(aBlock);

  v26 = v22;

  [v26 performBlockAndWait:v25];

  _Block_release(v25);
  LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

  if (v26)
  {
    __break(1u);
LABEL_9:
    if (v14 != -1)
    {
      swift_once();
    }

    v27 = sub_1000492C8();
    sub_1000143C0(v27, qword_10005EB58);
    v28 = sub_1000492A8();
    v29 = sub_10004A088();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "Failed to load persistent store. This prevented fetching user data.", v30, 2u);
    }

    sub_100020F60(0, a5, a6);
  }

LABEL_15:
  sub_100002890(v33);
}

uint64_t sub_10003E6A8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003E708()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10003E730(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10003E748()
{
  result = qword_10005E220;
  if (!qword_10005E220)
  {
    sub_10001B134(255, &qword_10005E218, STUserDeviceState_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005E220);
  }

  return result;
}

void sub_10003E7B0(char a1, _WORD *a2, void *a3, void (*a4)(void *))
{
  if (a1)
  {
    v6 = a3;
    if (a3)
    {
      v4 = a2;
      v7 = qword_10005D6D8;

      if (v7 != -1)
      {
        goto LABEL_44;
      }

      while (1)
      {
        v8 = sub_1000492C8();
        sub_1000143C0(v8, qword_10005EB58);

        v9 = sub_1000492A8();
        v10 = sub_10004A0A8();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v45 = v12;
          *v11 = 136446210;
          *(v11 + 4) = sub_10003C4F8(v4, v6, &v45);
          _os_log_impl(&_mh_execute_header, v9, v10, "Fetching information for user with dsid: %{public}s.", v11, 0xCu);
          sub_100002890(v12);
        }

        v13 = [objc_opt_self() fetchRequest];
        sub_10001B134(0, &qword_10005DF08, NSPredicate_ptr);
        sub_1000027D4(&qword_10005DF10, &qword_10004C8E0);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_10004B5A0;
        *(v14 + 56) = &type metadata for String;
        v15 = sub_10001B17C();
        *(v14 + 32) = 1684632420;
        *(v14 + 40) = 0xE400000000000000;
        *(v14 + 96) = &type metadata for String;
        *(v14 + 104) = v15;
        *(v14 + 64) = v15;
        *(v14 + 72) = v4;
        *(v14 + 80) = v6;
        v16 = sub_10004A068();
        [v13 setPredicate:v16];

        v45 = 0;
        v17 = [v13 execute:&v45];
        v6 = v45;
        if (!v17)
        {
          v40 = v45;
          sub_100048F28();

          swift_willThrow();

          v31 = sub_1000492A8();
          v41 = sub_10004A088();
          if (os_log_type_enabled(v31, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 0;
            v43 = "Fetching user information returned nil results";
            goto LABEL_38;
          }

          goto LABEL_40;
        }

        v4 = v17;
        sub_10001B134(0, &qword_10005DEF8, STCoreUser_ptr);
        v18 = sub_100049F58();
        v19 = v6;

LABEL_14:
        if (v18 >> 62)
        {
          if (v18 < 0)
          {
            v6 = v18;
          }

          else
          {
            v6 = (v18 & 0xFFFFFFFFFFFFFF8);
          }

          v26 = sub_10004A308() > 0;
          if (!sub_10004A308())
          {
LABEL_33:

            if (!v26)
            {
              if (qword_10005D6D8 != -1)
              {
                swift_once();
              }

              v44 = sub_1000492C8();
              sub_1000143C0(v44, qword_10005EB58);
              v31 = sub_1000492A8();
              v41 = sub_10004A088();
              if (os_log_type_enabled(v31, v41))
              {
                v42 = swift_slowAlloc();
                *v42 = 0;
                v43 = "Fetching user information returned empty results";
LABEL_38:
                _os_log_impl(&_mh_execute_header, v31, v41, v43, v42, 2u);
LABEL_39:
              }

              goto LABEL_40;
            }

            goto LABEL_41;
          }
        }

        else
        {
          v25 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v26 = v25 != 0;
          if (!v25)
          {
            goto LABEL_33;
          }
        }

        if ((v18 & 0xC000000000000001) != 0)
        {
          break;
        }

        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v27 = *(v18 + 32);
LABEL_19:
          v28 = v27;

          v29 = v28;
          a4(v28);

          return;
        }

        __break(1u);
LABEL_44:
        swift_once();
      }

      v27 = sub_10004A1F8();
      goto LABEL_19;
    }

    if (qword_10005D6D8 != -1)
    {
      swift_once();
    }

    v30 = sub_1000492C8();
    sub_1000143C0(v30, qword_10005EB58);
    v31 = sub_1000492A8();
    v32 = sub_10004A088();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Failed to provide DSID. Returning nil user.", v33, 2u);
      goto LABEL_39;
    }

LABEL_40:

LABEL_41:
    a4(0);
  }

  else
  {
    if (qword_10005D6D8 != -1)
    {
      swift_once();
    }

    v20 = sub_1000492C8();
    sub_1000143C0(v20, qword_10005EB58);
    v21 = sub_1000492A8();
    v22 = sub_10004A0A8();
    if (os_log_type_enabled(v21, v22))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Fetching local user information", v4, 2u);
    }

    v23 = [objc_opt_self() fetchRequestMatchingLocalUser];
    v45 = 0;
    v13 = [v23 execute:&v45];

    v6 = v45;
    if (v13)
    {
      sub_10001B134(0, &qword_10005DEF8, STCoreUser_ptr);
      v18 = sub_100049F58();
      v24 = v6;
      goto LABEL_14;
    }

    v34 = v45;
    sub_100048F28();

    swift_willThrow();
    swift_errorRetain();
    v35 = sub_1000492A8();
    v36 = sub_10004A088();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138543362;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v39;
      *v38 = v39;
      _os_log_impl(&_mh_execute_header, v35, v36, "Failed to fetch user: %{public}@", v37, 0xCu);
      sub_100005664(v38, &qword_10005DDB0, &qword_10004B8B0);
    }

    a4(0);
  }
}

uint64_t sub_10003EF68()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10003EFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100048E98();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000027D4(&qword_10005DBC0, &qword_10004B780);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_10003F108(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_100048E98();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1000027D4(&qword_10005DBC0, &qword_10004B780);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for HourlyUsage()
{
  result = qword_10005ECB0;
  if (!qword_10005ECB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10003F268()
{
  sub_100048E98();
  if (v0 <= 0x3F)
  {
    sub_10003F30C();
    if (v1 <= 0x3F)
    {
      sub_10003F3E8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10003F30C()
{
  if (!qword_10005ECC0)
  {
    sub_100049058();
    sub_10003F3A0(&qword_10005DBF0, &type metadata accessor for Date);
    v0 = sub_100049338();
    if (!v1)
    {
      atomic_store(v0, &qword_10005ECC0);
    }
  }
}

uint64_t sub_10003F3A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_10003F3E8()
{
  if (!qword_10005ECC8)
  {
    v0 = sub_100049F78();
    if (!v1)
    {
      atomic_store(v0, &qword_10005ECC8);
    }
  }
}

unint64_t sub_10003F484()
{
  result = qword_10005ED00;
  if (!qword_10005ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ED00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UsageTitleView(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UsageTitleView(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

  *(result + 9) = v3;
  return result;
}

id sub_10003F578()
{
  result = [objc_allocWithZone(NSDateComponentsFormatter) init];
  qword_10005ED10 = result;
  return result;
}

uint64_t sub_10003F5AC@<X0>(double a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1000027D4(&qword_10005ED18, &qword_10004CB10);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v44 - v8;
  if ((a2 & 1) != 0 || a1 < 0.0)
  {
    v10 = 0xE200000000000000;
    v11 = 11565;
  }

  else
  {
    if (qword_10005D6E0 != -1)
    {
      swift_once();
    }

    v38 = qword_10005ED10;
    if (a1 < 60.0)
    {
      v39 = 128;
    }

    else
    {
      v39 = 96;
    }

    [qword_10005ED10 setAllowedUnits:v39];
    [v38 setUnitsStyle:1];
    v40 = [v38 stringFromTimeInterval:a1];
    if (v40)
    {
      v41 = v40;
      v11 = sub_100049E08();
      v10 = v42;
    }

    else
    {
      v11 = 0;
      v10 = 0xE000000000000000;
    }
  }

  *&v46 = v11;
  *(&v46 + 1) = v10;
  sub_100005540();
  v12 = sub_100049938();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  KeyPath = swift_getKeyPath();
  v20 = swift_getKeyPath();
  v52 = v16 & 1;
  v51 = 0;
  *&v46 = v12;
  *(&v46 + 1) = v14;
  LOBYTE(v47) = v16 & 1;
  *(&v47 + 1) = v18;
  *&v48 = KeyPath;
  *(&v48 + 1) = 0x3FE8000000000000;
  *&v49 = v20;
  *(&v49 + 1) = 1;
  v50 = 0;
  if (a2)
  {
    goto LABEL_13;
  }

  v21 = a1;
  if (a1 < 0.0)
  {
    goto LABEL_13;
  }

  if (qword_10005D6E0 != -1)
  {
    swift_once();
  }

  v22 = qword_10005ED10;
  v23 = v21 < 60.0 ? 128 : 96;
  [qword_10005ED10 setAllowedUnits:v23];
  [v22 setUnitsStyle:3];
  v24 = [v22 stringFromTimeInterval:v21];
  if (!v24)
  {
LABEL_13:
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  else
  {
    v25 = v24;
    v26 = sub_100049E08();
    v28 = v27;
  }

  if (sub_100049E58())
  {
    *&v44[0] = v26;
    *(&v44[0] + 1) = v28;
    v29 = sub_100049938();
  }

  else
  {

    sub_100049748();
    v29 = sub_100049928();
  }

  v32 = v29;
  v33 = v30;
  v34 = v31;
  sub_1000027D4(&qword_10005ED20, &qword_10004CB78);
  sub_10003FB2C();
  sub_1000499D8();
  sub_1000036D0(v32, v33, v34 & 1);

  v44[2] = v48;
  v44[3] = v49;
  v45 = v50;
  v44[1] = v47;
  v44[0] = v46;
  sub_10003FC74(v44);
  v35 = (a3 + *(sub_1000027D4(&qword_10005ED50, &unk_10004CB98) + 36));
  v36 = v35 + *(sub_1000027D4(&qword_10005DB30, &qword_10004B6E0) + 28);
  sub_1000495B8();
  *v35 = swift_getKeyPath();
  return sub_10003FD04(v9, a3);
}

uint64_t sub_10003FA08(uint64_t a1)
{
  v2 = sub_1000495C8();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_100049648();
}

uint64_t sub_10003FAD0@<X0>(void *a1@<X8>)
{
  result = sub_100049658();
  *a1 = v3;
  return result;
}

unint64_t sub_10003FB2C()
{
  result = qword_10005ED28;
  if (!qword_10005ED28)
  {
    sub_100003634(&qword_10005ED20, &qword_10004CB78);
    sub_10003FBD0();
    sub_10003FEA8(&qword_10005D860, &qword_10005D868, &qword_10004B330);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ED28);
  }

  return result;
}

unint64_t sub_10003FBD0()
{
  result = qword_10005ED30;
  if (!qword_10005ED30)
  {
    sub_100003634(&qword_10005ED38, &qword_10004CB80);
    sub_10003FEA8(&qword_10005ED40, &qword_10005ED48, &unk_10004CB88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ED30);
  }

  return result;
}

uint64_t sub_10003FC74(uint64_t a1)
{
  v2 = sub_1000027D4(&qword_10005ED20, &qword_10004CB78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10003FD04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000027D4(&qword_10005ED18, &qword_10004CB10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10003FD78()
{
  result = qword_10005ED58;
  if (!qword_10005ED58)
  {
    sub_100003634(&qword_10005ED50, &unk_10004CB98);
    sub_10003FE1C();
    sub_10003FEA8(&qword_10005ED68, &qword_10005DB30, &qword_10004B6E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ED58);
  }

  return result;
}

unint64_t sub_10003FE1C()
{
  result = qword_10005ED60;
  if (!qword_10005ED60)
  {
    sub_100003634(&qword_10005ED18, &qword_10004CB10);
    sub_10003FB2C();
    sub_100005850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10005ED60);
  }

  return result;
}

uint64_t sub_10003FEA8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100003634(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10003FEFC()
{
  v0 = sub_1000492C8();
  sub_1000188D8(v0, qword_10005ED70);
  sub_1000143C0(v0, qword_10005ED70);
  return sub_1000492B8();
}

void *sub_10003FF84(uint64_t a1, uint64_t a2)
{
  v3 = sub_100040000();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  swift_beginAccess();
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  *(a2 + 16) = v3;
  *(a2 + 24) = v5;
  *(a2 + 32) = v7;
  v13 = *(a2 + 40);
  *(a2 + 40) = v9;
  return sub_10001C140(v10);
}

id sub_100040000()
{
  v0 = sub_100048F18();
  v1 = *(v0 - 1);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() fetchRequestMatchingLocalUser];
  v42 = 0;
  v6 = [v5 execute:&v42];

  v7 = v42;
  if (!v6)
  {
    v24 = v42;
    v25 = sub_100048F28();

    swift_willThrow();
    v42 = v25;
    sub_1000027D4(&qword_10005DDA0, &qword_10004CBF0);
    sub_10001B134(0, &qword_10005DDA8, NSError_ptr);
    swift_dynamicCast();
    v0 = v41;
    if (qword_10005D6E8 == -1)
    {
LABEL_18:
      v26 = sub_1000492C8();
      sub_1000143C0(v26, qword_10005ED70);
      v27 = v0;
      v28 = sub_1000492A8();
      v29 = sub_10004A088();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v30 = 138412290;
        *(v30 + 4) = v27;
        *v31 = v27;
        v32 = v27;
        _os_log_impl(&_mh_execute_header, v28, v29, "Failed to fetch local user: %@", v30, 0xCu);
        sub_100034FA0(v31);

        v27 = v28;
        v28 = v32;
      }

      return 0;
    }

LABEL_32:
    swift_once();
    goto LABEL_18;
  }

  sub_10001B134(0, &qword_10005DEF8, STCoreUser_ptr);
  v8 = sub_100049F58();
  v9 = v7;

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_24:

    if (qword_10005D6E8 != -1)
    {
      swift_once();
    }

    v36 = sub_1000492C8();
    sub_1000143C0(v36, qword_10005ED70);
    v37 = sub_1000492A8();
    v38 = sub_10004A088();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v37, v38, "Fetching local user returned empty results.", v39, 2u);
    }

    return 0;
  }

  if (!sub_10004A308())
  {
    goto LABEL_24;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = sub_10004A1F8();
    goto LABEL_7;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = *(v8 + 32);
LABEL_7:
  v11 = v10;

  if (qword_10005D6E8 != -1)
  {
    swift_once();
  }

  v12 = sub_1000492C8();
  sub_1000143C0(v12, qword_10005ED70);
  v13 = sub_1000492A8();
  v14 = sub_10004A0A8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "Successfully fetched local user.", v15, 2u);
  }

  sub_100048F08();
  v16 = [v11 givenName];
  if (v16)
  {
    v17 = v16;
    sub_100049E08();

    sub_100048ED8();
    v18 = [v11 familyName];
    if (v18)
    {
      v19 = v18;
      sub_100049E08();

      sub_100048EE8();
    }

    v20 = sub_1000492A8();
    v21 = sub_10004A0A8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Successfully fetched given name of local user.", v22, 2u);
    }

    sub_100048EF8();
    v23 = [v11 dsid];
  }

  else
  {
    v23 = [v11 dsid];
    v33 = [objc_opt_self() mainBundle];
    v40._countAndFlagsBits = 0xE000000000000000;
    v43._object = 0x80000001000539B0;
    v43._countAndFlagsBits = 0xD000000000000016;
    v44.value._countAndFlagsBits = 0;
    v44.value._object = 0;
    v34.super.isa = v33;
    v45._countAndFlagsBits = 0;
    v45._object = 0xE000000000000000;
    sub_100048EC8(v43, v44, v34, v45, v40);
  }

  [v11 isParent];

  (*(v1 + 8))(v4, v0);
  return v23;
}

void sub_1000406C8(uint64_t a1)
{
  v110 = a1;
  v121 = sub_100048F18();
  v1 = *(v121 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v121);
  v4 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100040000();
  v108 = v8;
  if (v5)
  {
    v102 = v6;
    v104 = v5;
    v103 = v7;
    if ((v7 & 1) == 0)
    {
      goto LABEL_68;
    }

    v119 = v1;
    v109 = v4;
    v9 = [objc_opt_self() fetchRequest];
    v122 = sub_10001B134(0, &qword_10005DF08, NSPredicate_ptr);
    v120 = "Intent Configuration";
    sub_1000027D4(&qword_10005DF10, &qword_10004C8E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10004CBE0;
    *(v10 + 56) = &type metadata for String;
    v11 = sub_10001B17C();
    *(v10 + 32) = 0xD000000000000018;
    *(v10 + 40) = 0x8000000100053FE0;
    *(v10 + 96) = &type metadata for String;
    *(v10 + 104) = v11;
    *(v10 + 64) = v11;
    *(v10 + 72) = 0xD000000000000010;
    *(v10 + 80) = 0x8000000100054000;
    v12 = STFamilyMemberTypeChild;
    v13 = sub_10001B134(0, &qword_10005ED88, NSString_ptr);
    *(v10 + 136) = v13;
    v14 = sub_100041568(&qword_10005ED90, &qword_10005ED88, NSString_ptr);
    *(v10 + 112) = v12;
    *(v10 + 176) = &type metadata for String;
    *(v10 + 184) = v11;
    *(v10 + 144) = v14;
    *(v10 + 152) = 0xD000000000000010;
    *(v10 + 160) = 0x8000000100054000;
    v15 = STFamilyMemberTypeTeen;
    *(v10 + 216) = v13;
    *(v10 + 224) = v14;
    *(v10 + 192) = v15;
    v16 = v12;
    v17 = v15;
    v18 = sub_10004A068();
    [v9 setPredicate:v18];

    v125[0] = 0;
    v101 = v9;
    v19 = [v9 execute:v125];
    v20 = v125[0];
    if (v19)
    {
      v21 = v19;
      sub_10001B134(0, &qword_10005DEF8, STCoreUser_ptr);
      v100 = sub_100049F58();
      v22 = v20;

      if (qword_10005D6E8 != -1)
      {
        swift_once();
      }

      v23 = sub_1000492C8();
      v99 = sub_1000143C0(v23, qword_10005ED70);
      v24 = sub_1000492A8();
      v25 = sub_10004A0A8();
      v26 = os_log_type_enabled(v24, v25);
      v27 = v109;
      if (v26)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v24, v25, "Successfully fetched managed users.", v28, 2u);
      }

      v29 = 0;
      v30 = v100 & 0xFFFFFFFFFFFFFF8;
      if (v100 < 0)
      {
        v31 = v100;
      }

      else
      {
        v31 = v100 & 0xFFFFFFFFFFFFFF8;
      }

      v105 = v31;
      v113 = v100 & 0xC000000000000001;
      v112 = v100 + 32;
      v111 = (v119 + 8);
      v114 = v100 >> 62;
      v106 = v100 & 0xFFFFFFFFFFFFFF8;
      if (!(v100 >> 62))
      {
        goto LABEL_16;
      }

LABEL_14:
      if (v29 == sub_10004A308())
      {
        goto LABEL_67;
      }

      while (1)
      {
        if (v113)
        {
          v32 = sub_10004A1F8();
        }

        else
        {
          if (v29 >= *(v30 + 16))
          {
            goto LABEL_80;
          }

          v32 = *(v112 + 8 * v29);
        }

        v33 = v32;
        if (__OFADD__(v29++, 1))
        {
          goto LABEL_79;
        }

        v35 = [v32 givenName];
        if (!v35)
        {

          v89 = [v33 dsid];
          v90 = [v89 stringValue];

          v91 = sub_100049E08();
          v93 = v92;

          v94 = sub_1000492A8();
          v95 = sub_10004A088();

          if (os_log_type_enabled(v94, v95))
          {
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            v124 = v97;
            *v96 = 136380675;
            v98 = sub_10003C4F8(v91, v93, &v124);

            *(v96 + 4) = v98;
            _os_log_impl(&_mh_execute_header, v94, v95, "Failed to fetch given name for remote user with dsid: %{private}s", v96, 0xCu);
            sub_100002890(v97);
          }

          else
          {
          }

          return;
        }

        v24 = v35;
        sub_100049E08();
        v37 = v36;

        sub_100048F08();

        sub_100048ED8();
        v38 = [v33 familyName];
        if (v38)
        {
          v24 = v38;
          sub_100049E08();

          sub_100048EE8();
        }

        v39 = sub_100048EF8();
        v41 = v40;
        v42 = [v33 userDeviceStates];
        if (!v42)
        {
          (*v111)(v27, v121);

          if (v114)
          {
            goto LABEL_14;
          }

          goto LABEL_16;
        }

        v43 = v42;
        v107 = v39;
        v117 = v37;
        v118 = v41;
        v119 = v29;
        v27 = &qword_10005E218;
        v44 = sub_10001B134(0, &qword_10005E218, STUserDeviceState_ptr);
        sub_100041568(&qword_10005E220, &qword_10005E218, STUserDeviceState_ptr);
        v45 = sub_100049FE8();

        v120 = v33;
        v115 = v45;
        v122 = v44;
        if ((v45 & 0xC000000000000001) != 0)
        {
          v27 = (v45 < 0 ? v45 : v45 & 0xFFFFFFFFFFFFFF8);

          sub_10004A188();
          sub_10004A008();
          v45 = v125[0];
          v46 = v125[1];
          v24 = v125[2];
          v47 = v125[3];
          v48 = v125[4];
        }

        else
        {
          v49 = -1 << *(v45 + 32);
          v46 = (v45 + 56);
          v24 = ~v49;
          v50 = -v49;
          v51 = v50 < 64 ? ~(-1 << v50) : -1;
          v48 = (v51 & *(v45 + 56));

          v47 = 0;
        }

        v116 = v24;
        v52 = (v24 + 64) >> 6;
        if ((v45 & 0x8000000000000000) == 0)
        {
          break;
        }

        while (1)
        {
          v57 = sub_10004A198();
          if (!v57)
          {
            goto LABEL_47;
          }

          v123 = v57;
          swift_dynamicCast();
          v27 = v124;
          v55 = v47;
          v56 = v48;
          if (!v124)
          {
            goto LABEL_47;
          }

LABEL_43:
          v58 = [v27 device];
          if (!v58)
          {
            __break(1u);
          }

          v59 = v58;
          v24 = [v58 platform];

          if (v24 != 4)
          {
            break;
          }

          v47 = v55;
          v48 = v56;
          if ((v45 & 0x8000000000000000) == 0)
          {
            goto LABEL_35;
          }
        }

        v24 = [v120 dsid];
        v60 = v110;
        swift_beginAccess();
        v61 = *(v60 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v60 + 16) = v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v61 = sub_100023728(0, *(v61 + 2) + 1, 1, v61);
          *(v110 + 16) = v61;
        }

        v64 = *(v61 + 2);
        v63 = *(v61 + 3);
        if (v64 >= v63 >> 1)
        {
          v61 = sub_100023728((v63 > 1), v64 + 1, 1, v61);
        }

        *(v61 + 2) = v64 + 1;
        v65 = &v61[32 * v64];
        v66 = v107;
        *(v65 + 4) = v24;
        *(v65 + 5) = v66;
        *(v65 + 6) = v118;
        *(v65 + 28) = 256;
        *(v110 + 16) = v61;
        swift_endAccess();

        sub_1000415AC();
        v27 = v109;
        (*v111)(v109, v121);
LABEL_48:
        v29 = v119;
        v30 = v106;
        if (v114)
        {
          goto LABEL_14;
        }

LABEL_16:
        if (v29 == *(v30 + 16))
        {
LABEL_67:

LABEL_68:
          v82 = v110;
          swift_beginAccess();
          v27 = *(v82 + 16);
          v24 = v104;

          v83 = swift_isUniquelyReferenced_nonNull_native();
          *(v82 + 16) = v27;
          if ((v83 & 1) == 0)
          {
            goto LABEL_81;
          }

          goto LABEL_69;
        }
      }

LABEL_35:
      v53 = v47;
      v54 = v48;
      v55 = v47;
      if (v48)
      {
LABEL_39:
        v56 = (v54 - 1) & v54;
        v27 = *(*(v45 + 48) + ((v55 << 9) | (8 * __clz(__rbit64(v54)))));
        if (v27)
        {
          goto LABEL_43;
        }
      }

      else
      {
        while (1)
        {
          v55 = (v53 + 1);
          if (__OFADD__(v53, 1))
          {
            __break(1u);
LABEL_79:
            __break(1u);
LABEL_80:
            __break(1u);
LABEL_81:
            v27 = sub_100023728(0, *(v27 + 2) + 1, 1, v27);
            *(v110 + 16) = v27;
LABEL_69:
            v85 = *(v27 + 2);
            v84 = *(v27 + 3);
            if (v85 >= v84 >> 1)
            {
              v27 = sub_100023728((v84 > 1), v85 + 1, 1, v27);
            }

            *(v27 + 2) = v85 + 1;
            v86 = &v27[32 * v85];
            v87 = v102;
            *(v86 + 4) = v24;
            *(v86 + 5) = v87;
            *(v86 + 6) = v108;
            v88 = BYTE1(v103);
            v86[56] = v103 & 1;
            v86[57] = v88 & 1;
            *(v110 + 16) = v27;
            swift_endAccess();

            return;
          }

          if (v55 >= v52)
          {
            break;
          }

          v54 = v46[v55];
          ++v53;
          if (v54)
          {
            goto LABEL_39;
          }
        }
      }

LABEL_47:
      v27 = v109;
      (*v111)(v109, v121);

      sub_1000415AC();
      goto LABEL_48;
    }

    v71 = v125[0];
    v72 = sub_100048F28();

    swift_willThrow();
    v125[0] = v72;
    sub_1000027D4(&qword_10005DDA0, &qword_10004CBF0);
    sub_10001B134(0, &qword_10005DDA8, NSError_ptr);
    swift_dynamicCast();
    v73 = v124;
    if (qword_10005D6E8 != -1)
    {
      swift_once();
    }

    v74 = sub_1000492C8();
    sub_1000143C0(v74, qword_10005ED70);
    v75 = v73;
    v76 = sub_1000492A8();
    v77 = sub_10004A088();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138412290;
      *(v78 + 4) = v75;
      *v79 = v75;
      v80 = v75;
      _os_log_impl(&_mh_execute_header, v76, v77, "Failed to fetch managed users: %@", v78, 0xCu);
      sub_100034FA0(v79);

      v81 = v76;
      v76 = v80;
    }

    else
    {

      v81 = v104;
    }
  }

  else
  {
    if (qword_10005D6E8 != -1)
    {
      swift_once();
    }

    v67 = sub_1000492C8();
    sub_1000143C0(v67, qword_10005ED70);
    v122 = sub_1000492A8();
    v68 = sub_10004A088();
    if (os_log_type_enabled(v122, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v122, v68, "couldn't fetch local user", v69, 2u);
    }

    v70 = v122;
  }
}

uint64_t sub_100041568(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10001B134(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_1000415B4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1000415C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_100041610(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100041678(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for UsageTimelineEntry();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_1000027D4(&qword_10005E740, "L5");
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_1000027D4(&qword_10005E518, &unk_10004C020);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  if (a2 == 254)
  {
    v17 = *(a1 + a3[8] + 8);
    if (v17 > 1)
    {
      return (v17 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v18 = sub_1000027D4(&qword_10005ED98, qword_10004CC58);
    v19 = *(*(v18 - 8) + 48);
    v20 = a1 + a3[9];

    return v19(v20, a2, v18);
  }
}

uint64_t sub_1000418BC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for UsageTimelineEntry();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1000027D4(&qword_10005E740, "L5");
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_1000027D4(&qword_10005E518, &unk_10004C020);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  result = sub_1000027D4(&qword_10005D9B0, qword_10004B5B0);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  if (a3 == 254)
  {
    *(a1 + a4[8] + 8) = -a2;
  }

  else
  {
    v18 = sub_1000027D4(&qword_10005ED98, qword_10004CC58);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + a4[9];

    return v19(v20, a2, a2, v18);
  }

  return result;
}

uint64_t type metadata accessor for WidgetView()
{
  result = qword_10005EDF8;
  if (!qword_10005EDF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100041B3C()
{
  type metadata accessor for UsageTimelineEntry();
  if (v0 <= 0x3F)
  {
    sub_100041CC8(319, &unk_10005E7B0, &type metadata accessor for ColorScheme);
    if (v1 <= 0x3F)
    {
      sub_100041CC8(319, &unk_10005E588, &type metadata accessor for WidgetFamily);
      if (v2 <= 0x3F)
      {
        sub_100041CC8(319, &unk_10005DA20, &type metadata accessor for WidgetRenderingMode);
        if (v3 <= 0x3F)
        {
          sub_100041D1C(319, &qword_10005EE08);
          if (v4 <= 0x3F)
          {
            sub_100041CC8(319, &qword_10005EE10, &type metadata accessor for DynamicTypeSize);
            if (v5 <= 0x3F)
            {
              sub_100041D1C(319, &unk_10005EE18);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_100041CC8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_100049518();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_100041D1C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_100049518();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100041D84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100049708();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000027D4(&qword_10005E658, &qword_10004C640);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for WidgetView();
  sub_1000055FC(v1 + *(v12 + 20), v11, &qword_10005E658, &qword_10004C640);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100049508();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10004A098();
    v16 = sub_100049858();
    sub_100049298();

    sub_1000496F8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100041F8C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100049708();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000027D4(&qword_10005E3D8, &qword_10004BEE8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for WidgetView();
  sub_1000055FC(v1 + *(v12 + 24), v11, &qword_10005E3D8, &qword_10004BEE8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100049CB8();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10004A098();
    v16 = sub_100049858();
    sub_100049298();

    sub_1000496F8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_100042194@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100049708();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for WidgetView();
  sub_1000055FC(v1 + *(v12 + 28), v11, &qword_10005DA60, &qword_10004B650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_100049C78();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_10004A098();
    v16 = sub_100049858();
    sub_100049298();

    sub_1000496F8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_10004239C()
{
  v1 = sub_100049708();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for WidgetView() + 32);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_10004A098();
    v8 = sub_100049858();
    sub_100049298();

    sub_1000496F8();
    swift_getAtKeyPath();
    sub_100046EB8(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

double sub_1000424F4()
{
  v1 = sub_100049708();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v0 + *(type metadata accessor for WidgetView() + 40);
  v8 = *v6;
  v7 = *(v6 + 8);
  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (*(v6 + 32) == 1)
  {
    return *v6;
  }

  sub_10004A098();
  v12 = sub_100049858();
  sub_100049298();

  sub_1000496F8();
  swift_getAtKeyPath();
  sub_100047358(v8, v7, v10, v9, 0);
  (*(v2 + 8))(v5, v1);
  return v13;
}

uint64_t sub_100042680@<X0>(uint64_t a1@<X8>)
{
  v37[1] = a1;
  v38 = sub_100049838();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v38);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100049508();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v37 - v12;
  v14 = sub_1000027D4(&qword_10005EE60, &qword_10004CCD8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = v37 - v16;
  v18 = *&v1[*(type metadata accessor for UsageTimelineEntry() + 52)];
  v19 = -sub_1000424F4();
  sub_1000424F4();
  v21 = -v20;
  sub_1000424F4();
  v23 = -v22;
  sub_1000424F4();
  v25 = -v24;
  sub_1000424F4();
  v27 = -v26;
  sub_1000424F4();
  v29 = -v28;
  *v17 = sub_100049728();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v30 = sub_1000027D4(&qword_10005EE68, &unk_10004CCE0);
  sub_100042C9C(v1, v18, &v17[*(v30 + 44)], 0.0, v25, v27, v29, v19, 0.0, v21, v23);
  sub_100041D84(v13);
  (*(v7 + 104))(v11, enum case for ColorScheme.light(_:), v6);
  v31 = sub_1000494F8();
  v32 = *(v7 + 8);
  v32(v11, v6);
  v32(v13, v6);
  v33 = objc_opt_self();
  v34 = &selRef_systemBackgroundColor;
  if ((v31 & 1) == 0)
  {
    v34 = &selRef_systemGray6Color;
  }

  v35 = [v33 *v34];
  v39 = sub_100049AA8();
  sub_100049828();
  sub_100005708(&qword_10005EE70, &qword_10005EE60, &qword_10004CCD8);
  sub_100049A28();
  (*(v2 + 8))(v5, v38);

  return sub_100005664(v17, &qword_10005EE60, &qword_10004CCD8);
}

uint64_t sub_100042A20()
{
  v25 = sub_100049508();
  v0 = *(v25 - 8);
  v1 = *(v0 + 64);
  v2 = __chkstk_darwin(v25);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  v7 = sub_100049C78();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  sub_100042194(&v24 - v13);
  sub_100049C68();
  v15 = sub_100049C58();
  v16 = *(v8 + 8);
  v16(v12, v7);
  v16(v14, v7);
  if (v15)
  {
    return sub_100049A78();
  }

  sub_100041D84(v6);
  v18 = v25;
  (*(v0 + 104))(v4, enum case for ColorScheme.light(_:), v25);
  v19 = sub_1000494F8();
  v20 = *(v0 + 8);
  v20(v4, v18);
  v20(v6, v18);
  v21 = objc_opt_self();
  if (v19)
  {
    v22 = [v21 secondarySystemBackgroundColor];
  }

  else
  {
    v22 = [v21 systemGray5Color];
  }

  v23 = v22;
  return sub_100049AA8();
}

uint64_t sub_100042C9C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>, double a8@<D4>, double a9@<D5>, double a10@<D6>, double a11@<D7>)
{
  v52 = a3;
  v21 = sub_100049CB8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v21);
  v26 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = &v51 - v27;
  v29 = sub_1000027D4(&qword_10005EE78, &qword_10004CCF0);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v51 = &v51 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v51 - v33;
  *v34 = sub_100049788();
  *(v34 + 1) = 0;
  v34[16] = 0;
  v35 = sub_1000027D4(&qword_10005EE80, &qword_10004CCF8);
  sub_100043378(a1, a2, &v34[*(v35 + 44)], a4, a5, a6, a7);
  sub_100041F8C(v28);
  (*(v22 + 104))(v26, enum case for WidgetFamily.systemMedium(_:), v21);
  sub_1000469D0();
  sub_100049F38();
  sub_100049F38();
  v36 = *(v22 + 8);
  v36(v26, v21);
  v36(v28, v21);
  if (v60[0] == v59[0])
  {
    if (*(a2 + 16))
    {
      sub_1000027D4(&qword_10005EE98, &qword_10004CD10);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_10004B5A0;
      v38 = sub_100049868();
      *(v37 + 32) = v38;
      v39 = sub_100049888();
      *(v37 + 33) = v39;
      v40 = sub_100049878();
      sub_100049878();
      if (sub_100049878() != v38)
      {
        v40 = sub_100049878();
      }

      sub_100049878();
      if (sub_100049878() != v39)
      {
        v40 = sub_100049878();
      }

      sub_1000465C4(a2, a1, v60);
      memcpy(v53, v60, 0x120uLL);
      memcpy(v57, v60, 0x120uLL);
      sub_1000055FC(v53, v59, &qword_10005EEA0, &qword_10004CD18);
      sub_100005664(v57, &qword_10005EEA0, &qword_10004CD18);
      memcpy(&v55[7], v53, 0x120uLL);
      v41 = sub_100049898();
      v56 = 0;
      LOBYTE(v60[0]) = v40;
      memcpy(v60 + 1, v55, 0x127uLL);
      LOBYTE(v60[37]) = v41;
      *&v60[38] = a8;
      *&v60[39] = a9;
      *&v60[40] = a10;
      *&v60[41] = a11;
      LOBYTE(v60[42]) = 0;
      sub_100046A64(v60);
    }

    else
    {
      sub_1000027D4(&qword_10005EE98, &qword_10004CD10);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_10004B5A0;
      v43 = sub_100049868();
      *(v42 + 32) = v43;
      v44 = sub_100049888();
      *(v42 + 33) = v44;
      v45 = sub_100049878();
      sub_100049878();
      if (sub_100049878() != v43)
      {
        v45 = sub_100049878();
      }

      sub_100049878();
      if (sub_100049878() != v44)
      {
        v45 = sub_100049878();
      }

      sub_100046114(a1, v60);
      memcpy(v53, v60, sizeof(v53));
      memcpy(v57, v60, 0x130uLL);
      sub_1000055FC(v53, v59, &qword_10005EEE8, &qword_10004CD40);
      sub_100005664(v57, &qword_10005EEE8, &qword_10004CD40);
      memcpy(&v54[7], v53, 0x130uLL);
      v46 = sub_100049898();
      v56 = 0;
      LOBYTE(v60[0]) = v45;
      memcpy(v60 + 1, v54, 0x137uLL);
      LOBYTE(v60[39]) = v46;
      *&v60[40] = a8;
      *&v60[41] = a9;
      *&v60[42] = a10;
      *&v60[43] = a11;
      LOBYTE(v60[44]) = 0;
      sub_100046BE0(v60);
    }

    memcpy(v58, v60, 0x162uLL);
    sub_1000027D4(&qword_10005EEA8, &qword_10004CD20);
    sub_1000027D4(&qword_10005EEB0, &qword_10004CD28);
    sub_100046A70();
    sub_100046B28();
    sub_1000497E8();
    memcpy(v58, v59, 0x162uLL);
    STSelectUserIntentResponseCode.rawValue.getter(v58);
    memcpy(v60, v58, 0x162uLL);
  }

  else
  {
    sub_100046A28(v60);
  }

  v47 = v51;
  sub_1000055FC(v34, v51, &qword_10005EE78, &qword_10004CCF0);
  memcpy(v57, v60, 0x162uLL);
  v48 = v52;
  sub_1000055FC(v47, v52, &qword_10005EE78, &qword_10004CCF0);
  v49 = *(sub_1000027D4(&qword_10005EE88, &qword_10004CD00) + 48);
  memcpy(v58, v57, 0x162uLL);
  memcpy((v48 + v49), v57, 0x162uLL);
  sub_1000055FC(v58, v59, &qword_10005EE90, &qword_10004CD08);
  sub_100005664(v34, &qword_10005EE78, &qword_10004CCF0);
  memcpy(v59, v57, 0x162uLL);
  sub_100005664(v59, &qword_10005EE90, &qword_10004CD08);
  return sub_100005664(v47, &qword_10005EE78, &qword_10004CCF0);
}

uint64_t sub_100043378@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v129 = a2;
  v141 = a3;
  v12 = sub_1000027D4(&qword_10005EF00, &qword_10004CD70);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v127 = &v121 - v14;
  v134 = sub_1000027D4(&qword_10005EF08, &qword_10004CD78);
  v15 = *(*(v134 - 8) + 64);
  v16 = __chkstk_darwin(v134);
  v126 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v128 = &v121 - v18;
  v132 = sub_1000027D4(&qword_10005EF10, &qword_10004CD80);
  v19 = *(*(v132 - 8) + 64);
  __chkstk_darwin(v132);
  v133 = &v121 - v20;
  v21 = sub_1000027D4(&qword_10005EF18, &qword_10004CD88);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v124 = &v121 - v23;
  v131 = sub_1000027D4(&qword_10005EF20, &qword_10004CD90);
  v24 = *(*(v131 - 8) + 64);
  v25 = __chkstk_darwin(v131);
  v123 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v125 = &v121 - v27;
  v138 = sub_1000027D4(&qword_10005EF28, &qword_10004CD98);
  v137 = *(v138 - 8);
  v28 = *(v137 + 64);
  __chkstk_darwin(v138);
  v130 = &v121 - v29;
  v30 = sub_1000027D4(&qword_10005EF30, &qword_10004CDA0);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v140 = &v121 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v139 = &v121 - v34;
  v35 = sub_100049CB8();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  v38 = __chkstk_darwin(v35);
  v40 = &v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = &v121 - v41;
  v43 = sub_1000027D4(&qword_10005EF38, &qword_10004CDA8);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43 - 8);
  v46 = &v121 - v45;
  v47 = sub_1000027D4(&qword_10005EF40, &qword_10004CDB0);
  v48 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v142 = &v121 - v49;
  v135 = sub_1000027D4(&qword_10005EF48, &qword_10004CDB8);
  v50 = *(*(v135 - 8) + 64);
  v51 = __chkstk_darwin(v135);
  v136 = &v121 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v55 = &v121 - v54;
  __chkstk_darwin(v53);
  v143 = &v121 - v56;
  *v46 = sub_100049798();
  *(v46 + 1) = 0x4020000000000000;
  v46[16] = 0;
  v57 = sub_1000027D4(&qword_10005EF50, &qword_10004CDC0);
  sub_100044110(a1, &v46[*(v57 + 44)]);
  v58 = sub_1000498C8();
  if (sub_10004239C())
  {
    sub_100041F8C(v42);
    (*(v36 + 104))(v40, enum case for WidgetFamily.systemMedium(_:), v35);
    sub_1000469D0();
    v122 = v55;
    v59 = v58;
    v60 = v47;
    v61 = a1;
    sub_100049F38();
    sub_100049F38();
    v62 = *(v36 + 8);
    v62(v40, v35);
    v62(v42, v35);
    a1 = v61;
    v47 = v60;
    v58 = v59;
    v55 = v122;
  }

  sub_1000494E8();
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  v71 = v142;
  sub_100004DF8(v46, v142, &qword_10005EF38, &qword_10004CDA8);
  v72 = v71 + *(v47 + 36);
  *v72 = v58;
  *(v72 + 8) = v64;
  *(v72 + 16) = v66;
  *(v72 + 24) = v68;
  *(v72 + 32) = v70;
  *(v72 + 40) = 0;
  v73 = sub_1000498A8();
  if (sub_10004239C())
  {
    sub_100041F8C(v42);
    v74 = enum case for WidgetFamily.systemLarge(_:);
    (*(v36 + 104))(v40, enum case for WidgetFamily.systemLarge(_:), v35);
    sub_1000469D0();
    sub_100049F38();
    sub_100049F38();
    v75 = *(v36 + 8);
    v75(v40, v35);
    v75(v42, v35);
  }

  else
  {
    v74 = enum case for WidgetFamily.systemLarge(_:);
  }

  sub_1000494E8();
  v77 = v76;
  v79 = v78;
  v81 = v80;
  v83 = v82;
  sub_100004DF8(v142, v55, &qword_10005EF40, &qword_10004CDB0);
  v84 = &v55[*(v135 + 36)];
  *v84 = v73;
  *(v84 + 1) = v77;
  *(v84 + 2) = v79;
  *(v84 + 3) = v81;
  *(v84 + 4) = v83;
  v84[40] = 0;
  sub_100004DF8(v55, v143, &qword_10005EF48, &qword_10004CDB8);
  sub_100041F8C(v42);
  (*(v36 + 104))(v40, v74, v35);
  sub_1000469D0();
  sub_100049F38();
  sub_100049F38();
  v85 = *(v36 + 8);
  v85(v40, v35);
  v85(v42, v35);
  if (v145 == v144)
  {
    v86 = a1;
    v87 = v129;
    v88 = *(v129 + 16);
    sub_1000027D4(&qword_10005EE98, &qword_10004CD10);
    v89 = v139;
    if (v88)
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10004B5A0;
      v91 = sub_100049868();
      *(inited + 32) = v91;
      v92 = sub_100049888();
      *(inited + 33) = v92;
      v93 = sub_100049878();
      sub_100049878();
      v94 = sub_100049878();
      v95 = v130;
      if (v94 != v91)
      {
        v93 = sub_100049878();
      }

      sub_100049878();
      if (sub_100049878() != v92)
      {
        v93 = sub_100049878();
      }

      v96 = v127;
      *v127 = v93;
      v97 = sub_1000027D4(&qword_10005EF60, &qword_10004CDD0);
      sub_100045A9C(v87, v86, v96 + *(v97 + 44));
      v98 = sub_100049898();
      v99 = v126;
      sub_100004DF8(v96, v126, &qword_10005EF00, &qword_10004CD70);
      v100 = v99 + *(v134 + 36);
      *v100 = v98;
      *(v100 + 8) = a4;
      *(v100 + 16) = a5;
      *(v100 + 24) = a6;
      *(v100 + 32) = a7;
      *(v100 + 40) = 0;
      v101 = &qword_10005EF08;
      v102 = &qword_10004CD78;
      v103 = v128;
      sub_100004DF8(v99, v128, &qword_10005EF08, &qword_10004CD78);
      sub_1000055FC(v103, v133, &qword_10005EF08, &qword_10004CD78);
      swift_storeEnumTagMultiPayload();
      sub_100046CD8();
      sub_100046D90();
    }

    else
    {
      v105 = swift_initStackObject();
      *(v105 + 16) = xmmword_10004B5A0;
      v106 = sub_100049868();
      *(v105 + 32) = v106;
      v107 = sub_100049888();
      *(v105 + 33) = v107;
      v108 = sub_100049878();
      sub_100049878();
      v109 = sub_100049878();
      v95 = v130;
      if (v109 != v106)
      {
        v108 = sub_100049878();
      }

      sub_100049878();
      if (sub_100049878() != v107)
      {
        v108 = sub_100049878();
      }

      v110 = v124;
      *v124 = v108;
      v111 = sub_1000027D4(&qword_10005EF88, &qword_10004CDD8);
      sub_100045488(v86, v110 + *(v111 + 44));
      v112 = sub_100049898();
      v113 = v123;
      sub_100004DF8(v110, v123, &qword_10005EF18, &qword_10004CD88);
      v114 = v113 + *(v131 + 36);
      *v114 = v112;
      *(v114 + 8) = a4;
      *(v114 + 16) = a5;
      *(v114 + 24) = a6;
      *(v114 + 32) = a7;
      *(v114 + 40) = 0;
      v101 = &qword_10005EF20;
      v102 = &qword_10004CD90;
      v103 = v125;
      sub_100004DF8(v113, v125, &qword_10005EF20, &qword_10004CD90);
      sub_1000055FC(v103, v133, &qword_10005EF20, &qword_10004CD90);
      swift_storeEnumTagMultiPayload();
      sub_100046CD8();
      sub_100046D90();
    }

    sub_1000497E8();
    sub_100005664(v103, v101, v102);
    sub_100004DF8(v95, v89, &qword_10005EF28, &qword_10004CD98);
    v104 = 0;
  }

  else
  {
    v104 = 1;
    v89 = v139;
  }

  (*(v137 + 56))(v89, v104, 1, v138);
  v115 = v143;
  v116 = v136;
  sub_1000055FC(v143, v136, &qword_10005EF48, &qword_10004CDB8);
  v117 = v140;
  sub_1000055FC(v89, v140, &qword_10005EF30, &qword_10004CDA0);
  v118 = v141;
  sub_1000055FC(v116, v141, &qword_10005EF48, &qword_10004CDB8);
  v119 = sub_1000027D4(&qword_10005EF58, &qword_10004CDC8);
  sub_1000055FC(v117, v118 + *(v119 + 48), &qword_10005EF30, &qword_10004CDA0);
  sub_100005664(v89, &qword_10005EF30, &qword_10004CDA0);
  sub_100005664(v115, &qword_10005EF48, &qword_10004CDB8);
  sub_100005664(v117, &qword_10005EF30, &qword_10004CDA0);
  return sub_100005664(v116, &qword_10005EF48, &qword_10004CDB8);
}

uint64_t sub_100044110@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v128 = a2;
  v3 = sub_100049CB8();
  v125 = *(v3 - 8);
  v4 = *(v125 + 64);
  v5 = __chkstk_darwin(v3);
  v124 = v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v123 = v115 - v7;
  v122 = type metadata accessor for ScreenTimeWidgetGraph();
  v8 = *(*(v122 - 8) + 64);
  v9 = __chkstk_darwin(v122);
  v127 = v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v130 = (v115 - v11);
  v12 = sub_1000027D4(&qword_10005EFC0, &qword_10004CE40);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v115 - v14;
  v16 = sub_1000027D4(&qword_10005EFC8, &qword_10004CE48);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = (v115 - v18);
  v20 = sub_1000027D4(&qword_10005EFD0, &qword_10004CE50);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20);
  v23 = v115 - v22;
  v24 = sub_1000027D4(&qword_10005EFD8, &qword_10004CE58);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24);
  v27 = v115 - v26;
  v28 = sub_1000027D4(&qword_10005EFE0, &qword_10004CE60);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v126 = v115 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v129 = v115 - v32;
  v33 = *a1 == 1;
  v121 = v16;
  v120 = v24;
  v119 = v19;
  if (v33)
  {
    sub_100049748();
    v34 = sub_100049928();
    v116 = v27;
    v35 = v34;
    v37 = v36;
    v117 = v3;
    v39 = v38;
    sub_1000498E8();
    v40 = sub_100049918();
    v115[0] = v20;
    v41 = v40;
    v118 = a1;
    v43 = v42;
    v45 = v44;
    v115[1] = v12;

    sub_1000036D0(v35, v37, v39 & 1);

    v46 = [objc_opt_self() secondaryLabelColor];
    sub_100049AA8();
    v47 = sub_100049908();
    v49 = v48;
    v51 = v50;
    v53 = v52;

    v54 = v43;
    a1 = v118;
    sub_1000036D0(v41, v54, v45 & 1);

    *v23 = v47;
    *(v23 + 1) = v49;
    v23[16] = v51 & 1;
    *(v23 + 3) = v53;
    swift_storeEnumTagMultiPayload();
    sub_10004718C(v47, v49, v51 & 1);
    sub_100005708(&qword_10005EFF0, &qword_10005EFC0, &qword_10004CE40);

    v55 = v116;
    sub_1000497E8();
    sub_1000055FC(v55, v119, &qword_10005EFD8, &qword_10004CE58);
    swift_storeEnumTagMultiPayload();
    sub_100046EC4();
    sub_1000497E8();
    v56 = v47;
    v3 = v117;
    sub_1000036D0(v56, v49, v51 & 1);

    sub_100005664(v55, &qword_10005EFD8, &qword_10004CE58);
  }

  else
  {
    v57 = type metadata accessor for UsageTimelineEntry();
    if ((a1[*(v57 + 60)] & 1) != 0 || a1[*(v57 + 56)] == 1)
    {
      *v15 = sub_100049738();
      *(v15 + 1) = 0;
      v15[16] = 1;
      v58 = sub_1000027D4(&qword_10005F010, &qword_10004CE78);
      sub_100044DF4(a1, &v15[*(v58 + 44)]);
      sub_1000055FC(v15, v23, &qword_10005EFC0, &qword_10004CE40);
      swift_storeEnumTagMultiPayload();
      sub_100005708(&qword_10005EFF0, &qword_10005EFC0, &qword_10004CE40);
      sub_1000497E8();
      sub_1000055FC(v27, v119, &qword_10005EFD8, &qword_10004CE58);
      swift_storeEnumTagMultiPayload();
      sub_100046EC4();
      sub_1000497E8();
      sub_100005664(v27, &qword_10005EFD8, &qword_10004CE58);
      sub_100005664(v15, &qword_10005EFC0, &qword_10004CE40);
    }

    else
    {
      sub_100049748();
      v59 = sub_100049928();
      v61 = v60;
      v117 = v3;
      v63 = v62;
      v118 = a1;
      sub_1000498E8();
      v64 = sub_100049918();
      v66 = v65;
      v68 = v67;

      sub_1000036D0(v59, v61, v63 & 1);

      v69 = [objc_opt_self() secondaryLabelColor];
      sub_100049AA8();
      v70 = sub_100049908();
      v72 = v71;
      v74 = v73;
      v76 = v75;

      sub_1000036D0(v64, v66, v68 & 1);

      v77 = v119;
      *v119 = v70;
      v77[1] = v72;
      v3 = v117;
      v78 = v74 & 1;
      a1 = v118;
      *(v77 + 16) = v78;
      v77[3] = v76;
      swift_storeEnumTagMultiPayload();
      sub_100046EC4();
      sub_1000497E8();
    }
  }

  v79 = type metadata accessor for UsageTimelineEntry();
  v80 = v79[10];
  v81 = *&a1[v79[11]];
  v82 = v122;
  v83 = *(v122 + 24);
  v84 = sub_100048E98();
  v85 = v130;
  (*(*(v84 - 8) + 16))(v130 + v83, &a1[v80], v84);
  *v85 = swift_getKeyPath();
  sub_1000027D4(&qword_10005DA60, &qword_10004B650);
  swift_storeEnumTagMultiPayload();
  *(v85 + *(v82 + 20)) = v81;

  v86 = v123;
  sub_100041F8C(v123);
  v88 = v124;
  v87 = v125;
  (*(v125 + 104))(v124, enum case for WidgetFamily.systemLarge(_:), v3);
  sub_1000469D0();
  sub_100049F38();
  sub_100049F38();
  v89 = *(v87 + 8);
  v89(v88, v3);
  v89(v86, v3);
  if (v135 == v131)
  {
    v90 = *&a1[v79[16]];
    v91 = *(v90 + 16);
    if (v91)
    {
      sub_1000027D4(&qword_10005DBF8, &qword_10004CE70);
      v92 = swift_allocObject();
      *(v92 + 16) = xmmword_10004C530;
      v93 = objc_opt_self();

      v94 = [v93 systemBlueColor];
      *(v92 + 32) = sub_100049AA8();
      v95 = [v93 systemTealColor];
      *(v92 + 40) = sub_100049AA8();
      v96 = [v93 systemOrangeColor];
      *(v92 + 48) = sub_100049AA8();
      v131 = v90;
      v132 = v91;
      v133 = v92;
      v134 = 1;
    }

    else
    {
      v100 = a1[v79[14]];
      sub_1000027D4(&qword_10005DBF8, &qword_10004CE70);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_10004C530;
      v102 = objc_opt_self();
      v103 = [v102 systemBlueColor];
      *(v101 + 32) = sub_100049AA8();
      v104 = [v102 systemTealColor];
      *(v101 + 40) = sub_100049AA8();
      v105 = [v102 systemOrangeColor];
      *(v101 + 48) = sub_100049AA8();
      v131 = v100;
      v132 = 3;
      v133 = v101;
      v134 = 0;
    }

    sub_1000470E4();
    sub_100047138();
    sub_1000497E8();
    v97 = v136;
    v98 = v137;
    v99 = v138;
    v125 = v135;
  }

  else
  {
    v125 = 0;
    v97 = 0;
    v98 = 0;
    v99 = -1;
  }

  v106 = v129;
  v107 = v126;
  sub_1000055FC(v129, v126, &qword_10005EFE0, &qword_10004CE60);
  v108 = v130;
  v109 = v127;
  sub_100046F7C(v130, v127);
  v110 = v128;
  sub_1000055FC(v107, v128, &qword_10005EFE0, &qword_10004CE60);
  v111 = sub_1000027D4(&qword_10005EFF8, &qword_10004CE68);
  sub_100046F7C(v109, v110 + *(v111 + 48));
  v112 = v110 + *(v111 + 64);
  v113 = v125;
  *v112 = v125;
  *(v112 + 8) = v97;
  *(v112 + 16) = v98;
  *(v112 + 24) = v99;
  sub_100046FE0(v113, v97, v98, v99);
  sub_100047034(v108);
  sub_100005664(v106, &qword_10005EFE0, &qword_10004CE60);
  sub_100047090(v113, v97, v98, v99);
  sub_100047034(v109);
  return sub_100005664(v107, &qword_10005EFE0, &qword_10004CE60);
}

uint64_t sub_100044DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = sub_100049778();
  v4 = *(v56 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v56);
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000027D4(&qword_10005F018, &qword_10004CE80);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v47 - v12;
  v14 = sub_1000027D4(&qword_10005E828, &qword_10004C438);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v50 = &v47 - v16;
  v17 = sub_100049AC8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1000027D4(&qword_10005E840, &unk_10004C450);
  v52 = *(v22 - 8);
  v53 = v22;
  v23 = *(v52 + 64);
  __chkstk_darwin(v22);
  v25 = &v47 - v24;
  v26 = sub_1000027D4(&qword_10005F020, &qword_10004CE88);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v54 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v57 = &v47 - v30;
  v51 = type metadata accessor for UsageTimelineEntry();
  v31 = *(a1 + *(v51 + 72));
  if (v31)
  {
    v32 = v31;
    sub_100049AB8();
    v48 = a1;
    (*(v18 + 104))(v21, enum case for Image.ResizingMode.stretch(_:), v17);
    sub_100049AE8();
    v49 = v13;

    (*(v18 + 8))(v21, v17);
    v33 = v50;
    sub_100049C98();
    v34 = sub_100049CA8();
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
    sub_100049AD8();
    v13 = v49;

    sub_100005664(v33, &qword_10005E828, &qword_10004C438);
    sub_100049B68();
    sub_100049528();
    v35 = &v25[*(sub_1000027D4(&qword_10005E838, &qword_10004C448) + 36)];
    v36 = v63;
    *v35 = v62;
    *(v35 + 1) = v36;
    *(v35 + 2) = v64;
    v37 = v53;
    v25[*(v53 + 36)] = 1;
    a1 = v48;
    v38 = v57;
    sub_100004DF8(v25, v57, &qword_10005E840, &unk_10004C450);
    (*(v52 + 56))(v38, 0, 1, v37);
  }

  else
  {
    (*(v52 + 56))(v57, 1, 1, v53);
  }

  v39 = *(a1 + *(v51 + 68));
  v40 = sub_1000498D8();
  KeyPath = swift_getKeyPath();
  v58 = v39;
  v59 = 0;
  v60 = KeyPath;
  v61 = v40;
  v42 = v55;
  sub_100049768();
  sub_1000027D4(&qword_10005F028, &qword_10004CEC0);
  sub_10004724C();
  sub_1000499F8();
  (*(v4 + 8))(v42, v56);

  sub_100049578();
  sub_100005664(v11, &qword_10005F018, &qword_10004CE80);
  v43 = v57;
  v44 = v54;
  sub_1000055FC(v57, v54, &qword_10005F020, &qword_10004CE88);
  sub_1000055FC(v13, v11, &qword_10005F018, &qword_10004CE80);
  sub_1000055FC(v44, a2, &qword_10005F020, &qword_10004CE88);
  v45 = sub_1000027D4(&qword_10005F050, &unk_10004CED0);
  sub_1000055FC(v11, a2 + *(v45 + 48), &qword_10005F018, &qword_10004CE80);
  sub_100005664(v13, &qword_10005F018, &qword_10004CE80);
  sub_100005664(v43, &qword_10005F020, &qword_10004CE88);
  sub_100005664(v11, &qword_10005F018, &qword_10004CE80);
  return sub_100005664(v44, &qword_10005F020, &qword_10004CE88);
}