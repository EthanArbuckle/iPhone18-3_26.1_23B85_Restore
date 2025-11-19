id sub_1004E5FE4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BlockQuoteLayerView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004E6028(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
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

uint64_t sub_1004E6084(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1004E60F4()
{
  result = qword_100AE66E0;
  if (!qword_100AE66E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE66E0);
  }

  return result;
}

Swift::Int sub_1004E6148(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100204FF8(v2);
  }

  v3 = *(v2 + 2);
  v21[0] = (v2 + 32);
  v21[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 64;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[40 * i + 40];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 3))
          {
            break;
          }

          v14 = *(v13 + 1);
          v15 = *(v13 + 5);
          v16 = *(v13 - 1);
          *(v13 + 8) = *(v13 - 2);
          v17 = *(v13 + 24);
          *(v13 + 24) = v16;
          *(v13 + 5) = *v13;
          *(v13 - 4) = v14;
          *(v13 - 3) = v11;
          *(v13 - 1) = v17;
          *v13 = v15;
          v13 -= 40;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    v19[0] = v7 + 4;
    v19[1] = v6;
    sub_1004E62B0(v19, v20, v21, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1004E62B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = &_swiftEmptyArrayStorage;
LABEL_88:
    v97 = *v96;
    if (!*v96)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100204C44(v7);
      v7 = result;
    }

    v88 = v7 + 2;
    v89 = v7[2];
    if (v89 >= 2)
    {
      while (*a3)
      {
        v90 = &v7[2 * v89];
        v91 = *v90;
        v92 = &v88[2 * v89];
        v93 = v92[1];
        sub_1004E6884((*a3 + 40 * *v90), (*a3 + 40 * *v92), *a3 + 40 * v93, v97);
        if (v4)
        {
        }

        if (v93 < v91)
        {
          goto LABEL_114;
        }

        if (v89 - 2 >= *v88)
        {
          goto LABEL_115;
        }

        *v90 = v91;
        v90[1] = v93;
        v94 = *v88 - v89;
        if (*v88 < v89)
        {
          goto LABEL_116;
        }

        v89 = *v88 - 1;
        result = memmove(v92, v92 + 2, 16 * v94);
        *v88 = v89;
        if (v89 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = &_swiftEmptyArrayStorage;
  v95 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 40 * v6 + 8);
      v10 = 40 * v8;
      v11 = *a3 + 40 * v8;
      v12 = *(v11 + 8);
      v13 = v8 + 2;
      v14 = (v11 + 88);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 5;
        v17 = v16 >= v15;
        ++v13;
        v15 = v16;
        if ((((v9 < v12) ^ v17) & 1) == 0)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 40 * v6 - 40;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v28 + v10);
            v22 = *(v28 + v10 + 32);
            v23 = (v28 + v18);
            v24 = *v21;
            v25 = v21[1];
            v26 = *(v23 + 4);
            v27 = v23[1];
            *v21 = *v23;
            v21[1] = v27;
            *(v21 + 4) = v26;
            *v23 = v24;
            v23[1] = v25;
            *(v23 + 4) = v22;
          }

          ++v20;
          v18 -= 40;
          v10 += 40;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1003E4B80(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v41 = v7[2];
    v40 = v7[3];
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_1003E4B80((v40 > 1), v41 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v42;
    v43 = v7 + 4;
    v44 = &v7[2 * v41 + 4];
    *v44 = v8;
    v44[1] = v6;
    v97 = *v96;
    if (!*v96)
    {
      goto LABEL_127;
    }

    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = v7[4];
          v47 = v7[5];
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_57:
          if (v49)
          {
            goto LABEL_104;
          }

          v62 = &v7[2 * v42];
          v64 = *v62;
          v63 = v62[1];
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_106;
          }

          v68 = &v43[2 * v45];
          v70 = *v68;
          v69 = v68[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_111;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v42 < 2)
        {
          goto LABEL_112;
        }

        v72 = &v7[2 * v42];
        v74 = *v72;
        v73 = v72[1];
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_72:
        if (v67)
        {
          goto LABEL_108;
        }

        v75 = &v43[2 * v45];
        v77 = *v75;
        v76 = v75[1];
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_110;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v45 - 1 >= v42)
        {
          __break(1u);
LABEL_99:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v83 = &v43[2 * v45 - 2];
        v84 = *v83;
        v85 = &v43[2 * v45];
        v86 = v85[1];
        sub_1004E6884((*a3 + 40 * *v83), (*a3 + 40 * *v85), *a3 + 40 * v86, v97);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_99;
        }

        if (v45 > v7[2])
        {
          goto LABEL_100;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = v7[2];
        if (v45 >= v87)
        {
          goto LABEL_101;
        }

        v42 = v87 - 1;
        result = memmove(&v43[2 * v45], v85 + 2, 16 * (v87 - 1 - v45));
        v7[2] = v87 - 1;
        if (v87 <= 2)
        {
          goto LABEL_3;
        }
      }

      v50 = &v43[2 * v42];
      v51 = *(v50 - 8);
      v52 = *(v50 - 7);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_102;
      }

      v55 = *(v50 - 6);
      v54 = *(v50 - 5);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_103;
      }

      v57 = &v7[2 * v42];
      v59 = *v57;
      v58 = v57[1];
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_105;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_107;
      }

      if (v61 >= v53)
      {
        v79 = &v43[2 * v45];
        v81 = *v79;
        v80 = v79[1];
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v95;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 40 * v6 - 40;
  v31 = v8 - v6;
LABEL_30:
  v32 = *(v29 + 40 * v6 + 8);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *(v34 + 8))
    {
LABEL_29:
      ++v6;
      v30 += 40;
      --v31;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 40);
    v36 = *(v34 + 72);
    v37 = *(v34 + 16);
    *(v34 + 40) = *v34;
    v38 = *(v34 + 56);
    *(v34 + 56) = v37;
    *(v34 + 72) = *(v34 + 32);
    *v34 = v35;
    *(v34 + 8) = v32;
    *(v34 + 16) = v38;
    *(v34 + 32) = v36;
    v34 -= 40;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1004E6884(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[5 * v9] <= a4)
    {
      memmove(a4, __dst, 40 * v9);
    }

    v12 = &v4[5 * v9];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[1] < v4[1])
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 5;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 5;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[5 * v11] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v12 = &v4[5 * v11];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v17 = (v5 + 40);
      if (*(v12 - 4) < *(v6 - 4))
      {
        v21 = v6 - 5;
        if (v17 != v6)
        {
          v22 = *v21;
          v23 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v22;
          *(v5 + 16) = v23;
        }

        if (v12 <= v4 || (v6 -= 5, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v18 = v12 - 5;
      if (v17 != v12)
      {
        v19 = *v18;
        v20 = *(v12 - 3);
        *(v5 + 32) = *(v12 - 1);
        *v5 = v19;
        *(v5 + 16) = v20;
      }

      v5 -= 40;
      v12 -= 5;
    }

    while (v18 > v4);
    v12 = v18;
  }

LABEL_31:
  v24 = ((v12 - v4) * 0x6666666666666667) >> 64;
  v25 = (v24 >> 4) + (v24 >> 63);
  if (v6 != v4 || v6 >= &v4[5 * v25])
  {
    memmove(v6, v4, 40 * v25);
  }

  return 1;
}

void sub_1004E6AC0(double a1, double a2, double a3, double a4)
{
  v10 = CGRectStandardize(*&a1);
  y = v10.origin.y;
  width = v10.size.width;
  height = v10.size.height;
  if (v10.origin.x == 0.0)
  {
    v10.origin.x = 0.0;
  }

  Hasher._combine(_:)(*&v10.origin.x);
  if (y == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = y;
  }

  Hasher._combine(_:)(*&v7);
  if (width == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = width;
  }

  Hasher._combine(_:)(*&v8);
  if (height == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = height;
  }

  Hasher._combine(_:)(*&v9);
}

BOOL sub_1004E6B44(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  result = CGRectEqualToRect(*a1, *a2);
  if (result)
  {
    if (v2)
    {
      if (v3)
      {
        sub_10018D564();
        v5 = v3;
        v6 = v2;
        v7 = static NSObject.== infix(_:_:)();

        if (v7)
        {
          return 1;
        }
      }
    }

    else if (!v3)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

void sub_1004E6BFC()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for SpotlightDebugVC();
  objc_msgSendSuper2(&v9, "viewDidLoad");
  v1 = [v0 navigationItem];
  sub_1000F24EC(&unk_100AD4780);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100941D70;
  sub_1000065A8(0, &qword_100AD43B0);
  sub_1000065A8(0, &qword_100AD4420);
  *(swift_allocObject() + 16) = v0;
  v3 = v0;
  v10.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v4.value._countAndFlagsBits = 0x7865646E696552;
  v4.value._object = 0xE700000000000000;
  v10.value.super.isa = 0;
  v13.value.super.super.isa = 0;
  *(v2 + 32) = UIBarButtonItem.init(title:image:primaryAction:menu:)(v4, v10, v13, v16);
  *(swift_allocObject() + 16) = v3;
  v5 = v3;
  v11.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v6.value._countAndFlagsBits = 0x6574656C6544;
  v6.value._object = 0xE600000000000000;
  v11.value.super.isa = 0;
  v14.value.super.super.isa = 0;
  *(v2 + 40) = UIBarButtonItem.init(title:image:primaryAction:menu:)(v6, v11, v14, v17);
  v12.is_nil = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v7.value._object = 0x80000001008F7B30;
  v7.value._countAndFlagsBits = 0xD000000000000013;
  v12.value.super.isa = 0;
  v15.value.super.super.isa = 0;
  *(v2 + 48) = UIBarButtonItem.init(title:image:primaryAction:menu:)(v7, v12, v15, v18);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v1 setRightBarButtonItems:{isa, 0, 0, 0, sub_1004E7AC0, 0}];
}

void sub_1004E6E9C(uint64_t a1, void *a2)
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v12 - v4;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v6 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_spotlightDelegate);
  if (v6)
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
    type metadata accessor for MainActor();
    v8 = v6;
    v9 = a2;
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    v11[2] = v10;
    v11[3] = &protocol witness table for MainActor;
    v11[4] = v8;
    v11[5] = v9;
    sub_1003E9628(0, 0, v5, &unk_100959AD8, v11);
  }
}

uint64_t sub_1004E702C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_1004E70C4, v7, v6);
}

uint64_t sub_1004E70C4()
{
  v1 = v0[4];
  v0[7] = type metadata accessor for SpotlightUtilities();

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[8] = v2;
  v0[9] = v4;

  return _swift_task_switch(sub_1004E7168, v2, v4);
}

uint64_t sub_1004E7168()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[2];
  static Date.timeIntervalSinceReferenceDate.getter();
  v0[10] = v4;
  v5 = swift_task_alloc();
  v0[11] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_1004E7278;

  return withCheckedContinuation<A>(isolation:function:_:)(v6, v2, &protocol witness table for MainActor, 0xD00000000000002DLL, 0x80000001008E1420, sub_100160C6C, v5, &type metadata for () + 8);
}

uint64_t sub_1004E7278()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1004E73BC, v3, v2);
}

uint64_t sub_1004E73BC()
{
  sub_10015E8F4(*(v0 + 80));

  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1004E7460;

  return sub_1004E7F7C();
}

uint64_t sub_1004E7460()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1002D836C;
  }

  else
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1000EC728;
  }

  return _swift_task_switch(v5, v3, v4);
}

void sub_1004E7584(uint64_t a1, void *a2)
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  if (*(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_spotlightDelegate))
  {
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    type metadata accessor for MainActor();
    v7 = a2;
    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;
    sub_1003E9628(0, 0, v5, &unk_100959AC8, v9);
  }
}

uint64_t sub_1004E76FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return _swift_task_switch(sub_1004E7794, v6, v5);
}

uint64_t sub_1004E7794()
{
  v1 = *(v0 + 24);

  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1004E7854;

  return (sub_100160460)(v1, &protocol witness table for MainActor);
}

uint64_t sub_1004E7854()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  v4 = swift_task_alloc();
  *(v2 + 56) = v4;
  *v4 = v3;
  v4[1] = sub_1004E799C;

  return sub_1004E7F7C();
}

uint64_t sub_1004E799C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_10021A4AC;
  }

  else
  {
    v3 = *(v2 + 32);
    v4 = *(v2 + 40);
    v5 = sub_1001F0E40;
  }

  return _swift_task_switch(v5, v3, v4);
}

void sub_1004E7AC0()
{
  sub_1000065A8(0, &qword_100AE1A30);
  v0 = static NSUserDefaults.shared.getter();
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v2 = String._bridgeToObjectiveC()();
  [v0 setValue:isa forKey:v2];
}

uint64_t sub_1004E7BB0()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  type metadata accessor for MainActor();
  v5 = v0;
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  v7[4] = v5;
  sub_1003E9BBC(0, 0, v3, &unk_100959A90, v7);
}

uint64_t sub_1004E7CD4(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for MainActor();
  v1[4] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_1004E7D84;

  return sub_1004E7F7C();
}

uint64_t sub_1004E7D84()
{
  *(*v1 + 48) = v0;

  if (v0)
  {

    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = sub_1004E8EC0;
  }

  else
  {
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v6;
    v5 = sub_1004E7F08;
  }

  return _swift_task_switch(v5, v2, v4);
}

uint64_t sub_1004E7F08()
{
  v1 = v0[6];
  v2 = v0[2];

  *v2 = v1 != 0;
  v3 = v0[1];

  return v3();
}

uint64_t sub_1004E7F7C()
{
  v1[3] = v0;
  v2 = type metadata accessor for CSSearchQuery.Results.Item();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = type metadata accessor for CSSearchQuery.Results();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[10] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[11] = v5;
  v1[12] = v4;

  return _swift_task_switch(sub_1004E80CC, v5, v4);
}

uint64_t sub_1004E80CC()
{
  v1 = v0[10];
  v2 = [objc_allocWithZone(CSSearchQueryContext) init];
  v0[13] = v2;
  sub_1000F24EC(&unk_100AD9A60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100942000;
  *(v3 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v3 + 40) = v4;
  *(v3 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v3 + 56) = v5;
  *(v3 + 64) = 0xD00000000000001DLL;
  *(v3 + 72) = 0x80000001008DCC50;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 setFetchAttributes:isa];

  v7 = objc_allocWithZone(CSSearchQuery);
  v8 = v2;
  v9 = String._bridgeToObjectiveC()();
  v10 = [v7 initWithQueryString:v9 queryContext:v8];
  v0[14] = v10;

  sub_1000F24EC(&qword_100AD4E80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100940080;
  *(v11 + 32) = NSFileProtectionCompleteUnlessOpen;
  type metadata accessor for FileProtectionType(0);
  v12 = NSFileProtectionCompleteUnlessOpen;
  v13 = Array._bridgeToObjectiveC()().super.isa;

  [v10 setProtectionClasses:v13];

  CSSearchQuery.results.getter();

  v14 = swift_task_alloc();
  v0[15] = v14;
  *v14 = v0;
  v14[1] = sub_1004E834C;

  return (sub_1007AB554)(v1, &protocol witness table for MainActor);
}

uint64_t sub_1004E834C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *(*v2 + 64);
  v7 = *(*v2 + 56);
  *(v4 + 128) = a1;
  *(v4 + 136) = v1;

  (*(v6 + 8))(v5, v7);

  v8 = *(v3 + 96);
  v9 = *(v3 + 88);
  if (v1)
  {
    v10 = sub_1004E8888;
  }

  else
  {
    v10 = sub_1004E8510;
  }

  return _swift_task_switch(v10, v9, v8);
}

id sub_1004E8510()
{
  v1 = *(v0 + 128);

  v2 = *(v1 + 16);
  v3 = *(v0 + 128);
  if (v2)
  {
    v4 = *(v0 + 40);
    sub_100199E6C(0, v2, 0);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v3 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v33 = *(v4 + 56);
    v34 = v5;
    v35 = v0;
    v32 = (v4 - 8);
    do
    {
      v7 = *(v0 + 48);
      v8 = *(v0 + 32);
      v34(v7, v6, v8);
      v9 = CSSearchQuery.Results.Item.item.getter();
      v10 = [v9 debugDescription];

      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = CSSearchQuery.Results.Item.item.getter();
      v15 = [v14 attributeSet];

      v16 = [v15 debugDescription];
      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      (*v32)(v7, v8);
      v21 = _swiftEmptyArrayStorage[2];
      v20 = _swiftEmptyArrayStorage[3];
      if (*&v21 >= *&v20 >> 1)
      {
        sub_100199E6C((*&v20 > 1uLL), *&v21 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v21 + 1;
      v22 = &_swiftEmptyArrayStorage[4 * *&v21];
      *(v22 + 4) = v11;
      *(v22 + 5) = v13;
      *(v22 + 6) = v17;
      *(v22 + 7) = v19;
      v6 += v33;
      --v2;
      v0 = v35;
    }

    while (v2);
  }

  v23 = *(v0 + 24);
  sub_1000F24EC(&qword_100AD65B8);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100940080;
  *(v24 + 32) = 0x746E756F63;
  *(v24 + 40) = 0xE500000000000000;
  *(v0 + 16) = _swiftEmptyArrayStorage[2];
  *(v24 + 48) = dispatch thunk of CustomStringConvertible.description.getter();
  *(v24 + 56) = v25;
  sub_1000F24EC(&qword_100ADBB08);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100940050;
  *(v26 + 32) = 0x6867696C746F7053;
  *(v26 + 40) = 0xEF7865646E492074;
  *(v26 + 48) = v24;
  *(v26 + 56) = 0xD000000000000010;
  *(v26 + 64) = 0x80000001008F7B10;
  *(v26 + 72) = _swiftEmptyArrayStorage;
  *&v23[OBJC_IVAR____TtC7Journal29TitleValueTableViewController_data] = v26;

  result = [v23 tableView];
  if (result)
  {
    v28 = result;
    v29 = *(v0 + 104);
    v30 = *(v0 + 112);
    [result reloadData];

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004E8888()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

id sub_1004E8A78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightDebugVC();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004E8AD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100032EC8;

  return sub_1004E7CD4(a1);
}

id sub_1004E8B84()
{
  type metadata accessor for SpotlightDebugVC();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v1 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v0];

  return v1;
}

uint64_t sub_1004E8BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004E8E6C();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_1004E8C48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1004E8E6C();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_1004E8CAC()
{
  sub_1004E8E6C();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

uint64_t sub_1004E8CE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1004E76FC(a1, v4, v5, v6);
}

uint64_t sub_1004E8D98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_1004E702C(a1, v4, v5, v7, v6);
}

unint64_t sub_1004E8E6C()
{
  result = qword_100AE6710;
  if (!qword_100AE6710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6710);
  }

  return result;
}

uint64_t sub_1004E8EC4()
{
  v0 = type metadata accessor for UIButton.Configuration();
  sub_100006118(v0, qword_100B2FA30);
  sub_10000617C(v0, qword_100B2FA30);
  type metadata accessor for FullScreenUtilities();
  v1 = [objc_opt_self() mainBundle];
  v7._object = 0x80000001008F7BA0;
  v2._countAndFlagsBits = 2036427856;
  v2._object = 0xE400000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000016;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v7);

  sub_1004E8FCC(v4._countAndFlagsBits, v4._object, 0x6C69662E79616C70, 0xE90000000000006CLL);
}

void sub_1004E8FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v41 = a3;
  v48 = a1;
  v49 = a2;
  v4 = type metadata accessor for AttributeContainer();
  __chkstk_darwin(v4 - 8);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AD8D78);
  __chkstk_darwin(v6 - 8);
  v47 = &v41 - v7;
  v45 = type metadata accessor for UIButton.Configuration.TitleAlignment();
  v44 = *(v45 - 8);
  __chkstk_darwin(v45);
  v43 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration.Size();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIButton.Configuration.filled()();
  v17 = objc_opt_self();
  v18 = [v17 systemIndigoColor];
  v19 = [v18 colorWithAlphaComponent:0.15];

  UIButton.Configuration.baseBackgroundColor.setter();
  (*(v14 + 104))(v16, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v13);
  UIButton.Configuration.cornerStyle.setter();
  (*(v10 + 104))(v12, enum case for UIButton.Configuration.Size.medium(_:), v9);
  UIButton.Configuration.buttonSize.setter();
  v20 = [v17 systemIndigoColor];
  v21 = objc_opt_self();
  v22 = [v21 configurationWithHierarchicalColor:v20];

  v23 = v22;
  v24 = String._bridgeToObjectiveC()();
  v25 = [objc_opt_self() systemImageNamed:v24 withConfiguration:v23];

  v26 = v25;
  UIButton.Configuration.image.setter();
  UIButton.Configuration.imagePadding.setter();
  UIButton.Configuration.imagePlacement.setter();
  v27 = [v21 configurationWithScale:2];
  UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
  (*(v44 + 104))(v43, enum case for UIButton.Configuration.TitleAlignment.trailing(_:), v45);
  UIButton.Configuration.titleAlignment.setter();
  sub_1000F24EC(&unk_100AD9200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100940050;
  *(inited + 32) = NSFontAttributeName;
  v29 = qword_100AD03D0;
  v30 = NSFontAttributeName;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = qword_100B303C8;
  v32 = [qword_100B303C8 fontDescriptor];
  v33 = [v32 fontDescriptorWithSymbolicTraits:2];

  if (v33)
  {
    [v31 pointSize];
    v35 = [objc_opt_self() fontWithDescriptor:v33 size:v34];
  }

  else
  {
    v35 = v31;
  }

  v36 = sub_1000065A8(0, &qword_100AD2A78);
  *(inited + 40) = v35;
  *(inited + 64) = v36;
  *(inited + 72) = NSForegroundColorAttributeName;
  v37 = NSForegroundColorAttributeName;
  v38 = [v17 systemIndigoColor];
  *(inited + 104) = sub_1000065A8(0, &qword_100AD4C70);
  *(inited + 80) = v38;
  sub_10007BDBC(inited);
  swift_setDeallocating();
  sub_1000F24EC(&unk_100AD9210);
  swift_arrayDestroy();
  AttributeContainer.init(_:)();

  v39 = v47;
  AttributedString.init(_:attributes:)();
  v40 = type metadata accessor for AttributedString();
  (*(*(v40 - 8) + 56))(v39, 0, 1, v40);
  UIButton.Configuration.attributedTitle.setter();
}

uint64_t sub_1004E963C()
{
  v0 = type metadata accessor for UIButton.Configuration();
  sub_100006118(v0, qword_100B2FA48);
  sub_10000617C(v0, qword_100B2FA48);
  type metadata accessor for FullScreenUtilities();
  v1 = [objc_opt_self() mainBundle];
  v7._object = 0x80000001008F7B80;
  v2._countAndFlagsBits = 0x6573756150;
  v2._object = 0xE500000000000000;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v7._countAndFlagsBits = 0xD000000000000017;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v7);

  sub_1004E8FCC(v4._countAndFlagsBits, v4._object, 0x69662E6573756170, 0xEA00000000006C6CLL);
}

uint64_t sub_1004E976C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v6 = type metadata accessor for URL.DirectoryHint();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  sub_1000F24EC(&unk_100ADC5E0);
  v4[16] = swift_task_alloc();
  v8 = type metadata accessor for PaperMarkup();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v4[20] = v9;
  v4[21] = v11;

  return _swift_task_switch(sub_1004E9974, v9, v11);
}

uint64_t sub_1004E9974()
{
  v34 = v0;
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  sub_1001B845C(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1002A03D4(v0[16]);
    v4 = v0[14];
    v5 = v0[11];
    v6 = v0[12];
    v7 = v0[6];
    v8 = sub_10025AFE8(v4);
    v10 = v9;
    (*(v6 + 8))(v4, v5);
    _StringGuts.grow(_:)(41);

    strcpy(v33, "<img src=../");
    HIWORD(v33[1]) = -4864;
    String.append(_:)(*(v7 + OBJC_IVAR____TtC7Journal13ExportOptions_resourcesDirectoryPath));
    v11._countAndFlagsBits = 47;
    v11._object = 0xE100000000000000;
    String.append(_:)(v11);
    v12._countAndFlagsBits = v8;
    v12._object = v10;
    String.append(_:)(v12);

    v13._object = 0x80000001008F7BC0;
    v13._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v13);
    v15 = v33[0];
    v14 = v33[1];
    v33[0] = 0;
    v33[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(97);
    v16._countAndFlagsBits = 0x7669643C20202020;
    v16._object = 0xED0000223D646920;
    String.append(_:)(v16);
    v17._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 0xD00000000000001CLL;
    v18._object = 0x80000001008F7BE0;
    String.append(_:)(v18);
    v19._countAndFlagsBits = AssetType.rawValue.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 32;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 0x6361626C6C616620;
    v21._object = 0xEF74657373615F6BLL;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 8226;
    v22._object = 0xE200000000000000;
    String.append(_:)(v22);
    v23._countAndFlagsBits = 0x2020202020200A3ELL;
    v23._object = 0xEA00000000002020;
    String.append(_:)(v23);
    v24._countAndFlagsBits = 0x202020202020200ALL;
    v24._object = 0xE900000000000020;
    String.append(_:)(v24);
    v25._countAndFlagsBits = v15;
    v25._object = v14;
    String.append(_:)(v25);

    v26._countAndFlagsBits = 0x202020202020200ALL;
    v26._object = 0xE900000000000020;
    String.append(_:)(v26);
    v27._countAndFlagsBits = 0x642F3C202020200ALL;
    v27._object = 0xEB000000003E7669;
    String.append(_:)(v27);

    v28 = v0[1];

    return v28(0, 0xE000000000000000);
  }

  else
  {
    (*(v0[18] + 32))(v0[19], v0[16], v0[17]);
    v30 = swift_task_alloc();
    v0[22] = v30;
    *v30 = v0;
    v30[1] = sub_1004E9D70;
    v32 = v0[4];
    v31 = v0[5];

    return sub_100225658(v32, v31);
  }
}

uint64_t sub_1004E9D70(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 184) = a1;
  *(v4 + 192) = v1;

  v5 = *(v3 + 168);
  v6 = *(v3 + 160);
  if (v1)
  {
    v7 = sub_1004EA6D4;
  }

  else
  {
    v7 = sub_1004E9EB4;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1004E9EB4()
{
  v76 = v0;
  v1 = *(v0 + 184);
  if (!v1)
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
LABEL_9:
    v22 = *(v0 + 112);
    v23 = *(v0 + 88);
    v24 = *(v0 + 96);
    v25 = *(v0 + 48);
    v26 = sub_10025AFE8(v22);
    v28 = v27;
    (*(v24 + 8))(v22, v23);
    _StringGuts.grow(_:)(41);

    strcpy(v75, "<img src=../");
    HIWORD(v75[1]) = -4864;
    String.append(_:)(*(v25 + OBJC_IVAR____TtC7Journal13ExportOptions_resourcesDirectoryPath));
    v29._countAndFlagsBits = 47;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v30._countAndFlagsBits = v26;
    v30._object = v28;
    String.append(_:)(v30);

    v31._object = 0x80000001008F7BC0;
    v31._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v31);
    v33 = v75[0];
    v32 = v75[1];
    v75[0] = 0;
    v75[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(97);
    v34._countAndFlagsBits = 0x7669643C20202020;
    v34._object = 0xED0000223D646920;
    String.append(_:)(v34);
    v35._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v35);

    v36._countAndFlagsBits = 0xD00000000000001CLL;
    v36._object = 0x80000001008F7BE0;
    String.append(_:)(v36);
    v37._countAndFlagsBits = AssetType.rawValue.getter();
    String.append(_:)(v37);

    v38._countAndFlagsBits = 32;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    v39._countAndFlagsBits = 0x6361626C6C616620;
    v39._object = 0xEF74657373615F6BLL;
    String.append(_:)(v39);
    v40._countAndFlagsBits = 8226;
    v40._object = 0xE200000000000000;
    String.append(_:)(v40);
    v41._countAndFlagsBits = 0x2020202020200A3ELL;
    v41._object = 0xEA00000000002020;
    String.append(_:)(v41);
    v42._countAndFlagsBits = 0x202020202020200ALL;
    v42._object = 0xE900000000000020;
    String.append(_:)(v42);
    v43._countAndFlagsBits = v33;
    v43._object = v32;
    String.append(_:)(v43);

    v44._countAndFlagsBits = 0x202020202020200ALL;
    v44._object = 0xE900000000000020;
    String.append(_:)(v44);
    v45._countAndFlagsBits = 0x642F3C202020200ALL;
    v45._object = 0xEB000000003E7669;
    String.append(_:)(v45);
    goto LABEL_10;
  }

  v2 = UIImageHEICRepresentation(*(v0 + 184));
  if (!v2)
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));

    goto LABEL_9;
  }

  v70 = *(v0 + 192);
  v72 = v1;
  v3 = *(v0 + 112);
  v4 = *(v0 + 104);
  v74 = *(v0 + 96);
  v5 = *(v0 + 80);
  v68 = *(v0 + 88);
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  v8 = v2;
  v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_10069763C(v4);
  *(v0 + 16) = UUID.uuidString.getter();
  *(v0 + 24) = v11;
  (*(v7 + 104))(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
  sub_1000777B4();
  URL.appending<A>(path:directoryHint:)();
  v12 = v5;
  v13 = v10;
  (*(v7 + 8))(v12, v6);

  v14 = *(v74 + 8);
  v14(v4, v68);
  URL.appendingPathExtension(_:)();
  v14(v3, v68);
  Data.write(to:options:)();
  v15 = v70;
  v16 = *(v0 + 144);
  v71 = *(v0 + 152);
  v17 = *(v0 + 136);
  v18 = *(v0 + 120);
  v19 = *(v0 + 88);
  if (v15)
  {

    sub_1000340DC(v73, v13);
    v14(v18, v19);
    (*(v16 + 8))(v71, v17);

    v20 = *(v0 + 8);

    return v20();
  }

  v47 = *(v0 + 48);
  v48 = URL.lastPathComponent.getter();
  v69 = v13;
  v50 = v49;
  _StringGuts.grow(_:)(41);

  strcpy(v75, "<img src=../");
  HIWORD(v75[1]) = -4864;
  String.append(_:)(*(v47 + OBJC_IVAR____TtC7Journal13ExportOptions_resourcesDirectoryPath));
  v51._countAndFlagsBits = 47;
  v51._object = 0xE100000000000000;
  String.append(_:)(v51);
  v52._countAndFlagsBits = v48;
  v52._object = v50;
  String.append(_:)(v52);

  v53._object = 0x80000001008F7BC0;
  v53._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v53);
  v54 = v75[1];
  v67 = v75[0];
  v75[0] = 0;
  v75[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(97);
  v55._countAndFlagsBits = 0x7669643C20202020;
  v55._object = 0xED0000223D646920;
  String.append(_:)(v55);
  v56._countAndFlagsBits = UUID.uuidString.getter();
  String.append(_:)(v56);

  v57._countAndFlagsBits = 0xD00000000000001CLL;
  v57._object = 0x80000001008F7BE0;
  String.append(_:)(v57);
  v58._countAndFlagsBits = AssetType.rawValue.getter();
  String.append(_:)(v58);

  v59._countAndFlagsBits = 32;
  v59._object = 0xE100000000000000;
  String.append(_:)(v59);
  v60._countAndFlagsBits = 0x72645F7465737361;
  v60._object = 0xED0000676E697761;
  String.append(_:)(v60);
  v61._countAndFlagsBits = 8226;
  v61._object = 0xE200000000000000;
  String.append(_:)(v61);
  v62._countAndFlagsBits = 0x2020202020200A3ELL;
  v62._object = 0xEA00000000002020;
  String.append(_:)(v62);
  v63._countAndFlagsBits = 0x202020202020200ALL;
  v63._object = 0xE900000000000020;
  String.append(_:)(v63);
  v64._countAndFlagsBits = v67;
  v64._object = v54;
  String.append(_:)(v64);

  v65._countAndFlagsBits = 0x202020202020200ALL;
  v65._object = 0xE900000000000020;
  String.append(_:)(v65);
  v66._countAndFlagsBits = 0x642F3C202020200ALL;
  v66._object = 0xEB000000003E7669;
  String.append(_:)(v66);

  sub_1000340DC(v73, v69);
  v14(v18, v19);
  (*(v16 + 8))(v71, v17);
LABEL_10:

  v46 = *(v0 + 8);

  return v46(0, 0xE000000000000000);
}

uint64_t sub_1004EA6D4()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1004EA794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_10031AED0;

  return sub_1004E976C(a1, a2, a3);
}

uint64_t sub_1004EA844@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  sub_100026188();
  v5 = static NSUserDefaults.shared.getter();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 objectForKey:v6];

  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (!*(&v14 + 1))
  {
    sub_100004F84(v15, &qword_100AD13D0);
    v8 = type metadata accessor for Date();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
LABEL_8:
    sub_100004F84(v4, &unk_100AD4790);
    type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  v8 = type metadata accessor for Date();
  v9 = swift_dynamicCast();
  v10 = *(v8 - 8);
  v11 = *(v10 + 56);
  v11(v4, v9 ^ 1u, 1, v8);
  if ((*(v10 + 48))(v4, 1, v8) == 1)
  {
    goto LABEL_8;
  }

  (*(v10 + 32))(a1, v4, v8);
  return (v11)(a1, 0, 1, v8);
}

uint64_t sub_1004EAAF4@<X0>(uint64_t a1@<X8>)
{
  started = type metadata accessor for StartWritingWidgetPersistedPrompts();
  sub_100026188();
  v3 = static NSUserDefaults.shared.getter();
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 objectForKey:v4];

  if (v5)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    sub_100004F84(v14, &qword_100AD13D0);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v6 = static NSUserDefaults.shared.getter();
    v7 = String._bridgeToObjectiveC()();
    [v6 removeObjectForKey:v7];

    v9 = 1;
    return (*(*(started - 8) + 56))(a1, v9, 1, started);
  }

  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_1004EB908(&qword_100AE6858);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  sub_1000340DC(v10, v11);

  v9 = 0;
  return (*(*(started - 8) + 56))(a1, v9, 1, started);
}

uint64_t sub_1004EAD60(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AE6848);
  __chkstk_darwin(v2 - 8);
  v4 = &v18[-v3];
  started = type metadata accessor for StartWritingWidgetPersistedPrompts();
  v6 = *(started - 8);
  __chkstk_darwin(started);
  v8 = &v18[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000082B4(a1, v4, &qword_100AE6848);
  if ((*(v6 + 48))(v4, 1, started) == 1)
  {
    sub_100004F84(v4, &qword_100AE6848);
    sub_100026188();
    v9 = static NSUserDefaults.shared.getter();
    v10 = String._bridgeToObjectiveC()();
    [v9 removeObjectForKey:v10];
  }

  else
  {
    sub_1004EB788(v4, v8);
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    sub_1004EB908(&qword_100AE6850);
    v11 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v13 = v12;

    sub_100026188();
    v14 = static NSUserDefaults.shared.getter();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v16 = String._bridgeToObjectiveC()();
    [v14 setObject:isa forKey:v16];
    sub_1000340DC(v11, v13);

    sub_1000B973C(v8, type metadata accessor for StartWritingWidgetPersistedPrompts);
  }

  return 1;
}

uint64_t sub_1004EB03C(uint64_t a1)
{
  v2 = type metadata accessor for WidgetFamily();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000F24EC(&qword_100AE6848);
  v7 = __chkstk_darwin(v6 - 8);
  v68 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v68 - v9;
  started = type metadata accessor for StartWritingWidgetPersistedPrompts();
  v12 = *(started - 1);
  v13 = __chkstk_darwin(started);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v68 - v16;
  v70 = "dge.demoModeStartDate";
  sub_1004EAAF4(v10);
  v69 = v12;
  if ((*(v12 + 48))(v10, 1, started) == 1)
  {
    return sub_100004F84(v10, &qword_100AE6848);
  }

  sub_1004EB788(v10, v17);
  (*(v3 + 16))(v5, a1, v2);
  v19 = (*(v3 + 88))(v5, v2);
  v20 = v19 == enum case for WidgetFamily.systemSmall(_:) || v19 == enum case for WidgetFamily.systemMedium(_:);
  v21 = v17;
  if (v20)
  {
    sub_1004EB7EC(v17, v15);
    v22 = v17;
    v23 = v68;
    sub_1000082B4(v22, v68, &qword_100AE0D70);
    v24 = v21 + started[5];
    v25 = *(v24 + 32);
    v73 = *(v24 + 16);
    v74 = v25;
    v75 = *(v24 + 48);
    v72 = *v24;
    v26 = v21 + started[6];
    v27 = *(v26 + 32);
    v28 = *v26;
    v77 = *(v26 + 16);
    v78 = v27;
    v79 = *(v26 + 48);
    v76 = v28;
    v29 = &v15[started[7]];
    v30 = *(v29 + 1);
    v80 = *v29;
    v81 = v30;
    v31 = *(v29 + 2);
    v32 = *v29;
    v84 = *(v29 + 1);
    v85 = v31;
    v82 = v31;
    v83 = v32;
    sub_1004EB850(&v72, v71);
    sub_1004EB850(&v76, v71);
    sub_1004EB8AC(&v80, v71);
    sub_1000B973C(v15, type metadata accessor for StartWritingWidgetPersistedPrompts);
    v33 = v23 + started[5];
    v34 = v73;
    *v33 = v72;
    *(v33 + 16) = v34;
    *(v33 + 32) = v74;
    *(v33 + 48) = v75;
    v35 = v23 + started[6];
    v36 = v77;
    v37 = v78;
    *v35 = v76;
    *(v35 + 16) = v36;
    *(v35 + 32) = v37;
    *(v35 + 48) = v79;
    v38 = v23 + started[7];
    v39 = v85;
    *(v38 + 16) = v84;
    *(v38 + 32) = v39;
    *v38 = v83;
    *(v38 + 48) = 1;
    (*(v69 + 56))(v23, 0, 1, started);
  }

  else
  {
    if (v19 == enum case for WidgetFamily.accessoryRectangular(_:))
    {
      sub_1004EB7EC(v17, v15);
      v40 = v17;
      v23 = v68;
      sub_1000082B4(v40, v68, &qword_100AE0D70);
      v41 = v21 + started[5];
      v42 = *(v41 + 32);
      v73 = *(v41 + 16);
      v74 = v42;
      v75 = *(v41 + 48);
      v72 = *v41;
      v43 = &v15[started[6]];
      v44 = *(v43 + 1);
      v80 = *v43;
      v81 = v44;
      v45 = *(v43 + 2);
      v46 = *v43;
      v84 = *(v43 + 1);
      v85 = v45;
      v82 = v45;
      v83 = v46;
      sub_1004EB850(&v72, &v76);
      sub_1004EB8AC(&v80, &v76);
      sub_1000B973C(v15, type metadata accessor for StartWritingWidgetPersistedPrompts);
      v47 = v21 + started[7];
      v49 = *(v47 + 16);
      v48 = *(v47 + 32);
      v50 = *v47;
      v77 = v49;
      v78 = v48;
      v79 = *(v47 + 48);
      v76 = *v47;
      v51 = v23 + started[5];
      v52 = v73;
      *v51 = v72;
      *(v51 + 16) = v52;
      *(v51 + 32) = v74;
      *(v51 + 48) = v75;
      v53 = v23 + started[6];
      v54 = v84;
      *v53 = v83;
      *(v53 + 16) = v54;
      *(v53 + 32) = v85;
      *(v53 + 48) = 1;
    }

    else
    {
      if (v19 != enum case for WidgetFamily.accessoryInline(_:))
      {
        sub_1000B973C(v17, type metadata accessor for StartWritingWidgetPersistedPrompts);
        return (*(v3 + 8))(v5, v2);
      }

      sub_1004EB7EC(v17, v15);
      v55 = v17;
      v23 = v68;
      sub_1000082B4(v55, v68, &qword_100AE0D70);
      v56 = &v15[started[5]];
      v58 = *(v56 + 1);
      v57 = *(v56 + 2);
      v80 = *v56;
      v81 = v58;
      v84 = v58;
      v85 = v57;
      v82 = v57;
      v83 = v80;
      v59 = v21 + started[6];
      v60 = *(v59 + 32);
      v73 = *(v59 + 16);
      v74 = v60;
      v75 = *(v59 + 48);
      v72 = *v59;
      sub_1004EB8AC(&v80, &v76);
      sub_1004EB850(&v72, &v76);
      sub_1000B973C(v15, type metadata accessor for StartWritingWidgetPersistedPrompts);
      v47 = v21 + started[7];
      v49 = *(v47 + 16);
      v61 = *(v47 + 32);
      v50 = *v47;
      v77 = v49;
      v78 = v61;
      v79 = *(v47 + 48);
      v76 = *v47;
      v62 = v23 + started[5];
      v63 = v84;
      *v62 = v83;
      *(v62 + 16) = v63;
      *(v62 + 32) = v85;
      *(v62 + 48) = 1;
      v64 = v23 + started[6];
      *(v64 + 48) = v75;
      v65 = v74;
      *(v64 + 16) = v73;
      *(v64 + 32) = v65;
      *v64 = v72;
    }

    v66 = v23 + started[7];
    v67 = *(v47 + 32);
    *(v66 + 16) = v49;
    *(v66 + 32) = v67;
    *(v66 + 48) = *(v47 + 48);
    *v66 = v50;
    (*(v69 + 56))(v23, 0, 1, started);
    sub_1004EB850(&v76, v71);
  }

  sub_1004EAD60(v23);
  sub_100004F84(v23, &qword_100AE6848);
  type metadata accessor for WidgetCenter();
  static WidgetCenter.shared.getter();
  dispatch thunk of WidgetCenter.reloadTimelines(ofKind:)();

  return sub_1000B973C(v21, type metadata accessor for StartWritingWidgetPersistedPrompts);
}

uint64_t sub_1004EB788(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWritingWidgetPersistedPrompts();
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_1004EB7EC(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for StartWritingWidgetPersistedPrompts();
  (*(*(started - 8) + 16))(a2, a1, started);
  return a2;
}

uint64_t sub_1004EB908(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StartWritingWidgetPersistedPrompts();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004EB94C(uint64_t a1)
{
  v2 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000082B4(a1, v4, &unk_100AD4790);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100004F84(v4, &unk_100AD4790);
    sub_100026188();
    v9 = static NSUserDefaults.shared.getter();
    v10 = String._bridgeToObjectiveC()();
    [v9 removeObjectForKey:v10];
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    sub_100026188();
    v11 = static NSUserDefaults.shared.getter();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v13 = String._bridgeToObjectiveC()();
    [v11 setObject:isa forKey:v13];

    (*(v6 + 8))(v8, v5);
  }

  type metadata accessor for WidgetCenter();
  static WidgetCenter.shared.getter();
  dispatch thunk of WidgetCenter.reloadAllTimelines()();

  return sub_100004F84(a1, &unk_100AD4790);
}

Swift::Int TranscriptPostProcessorError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_1004EBC54()
{
  result = qword_100AE6888;
  if (!qword_100AE6888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6888);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CAGradientPoint(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CAGradientPoint(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for InsightsView()
{
  result = qword_100AE68E8;
  if (!qword_100AE68E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004EBE6C()
{
  sub_1004EC0EC(319, &qword_100AE68F8, &type metadata for InsightID, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_100087C9C();
    if (v1 <= 0x3F)
    {
      sub_1004EC034();
      if (v2 <= 0x3F)
      {
        sub_1004EC098(319, &qword_100AD9938, type metadata accessor for InsightsDataManager);
        if (v3 <= 0x3F)
        {
          sub_1004EC0EC(319, &qword_100AE6910, &type metadata for InsightsLayoutMetrics, &type metadata accessor for Environment);
          if (v4 <= 0x3F)
          {
            sub_1004EC098(319, &qword_100AE2750, &type metadata accessor for WithCurrentHostingControllerAction);
            if (v5 <= 0x3F)
            {
              sub_1004EC0EC(319, &qword_100AD7080, &type metadata for Bool, &type metadata accessor for AppStorage);
              if (v6 <= 0x3F)
              {
                type metadata accessor for InsightsTipViewModel();
                if (v7 <= 0x3F)
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
}

void sub_1004EC034()
{
  if (!qword_100AE6900)
  {
    sub_1000F2A18(&qword_100AE6908);
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100AE6900);
    }
  }
}

void sub_1004EC098(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1004EC0EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1004EC158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_1000082B4(a3, v22 - v9, &qword_100AD5170);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100004F84(v10, &qword_100AD5170);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100004F84(a3, &qword_100AD5170);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100004F84(a3, &qword_100AD5170);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1004EC404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v161 = a2;
  v3 = sub_1000F24EC(&qword_100AE6968);
  v162 = *(v3 - 8);
  v163 = v3;
  __chkstk_darwin(v3);
  v170 = v144 - v4;
  v169 = sub_1000F24EC(&qword_100AD0E88);
  v160 = *(v169 - 8);
  __chkstk_darwin(v169);
  v166 = v144 - v5;
  v168 = sub_1000F24EC(&qword_100AD0E70);
  v159 = *(v168 - 8);
  __chkstk_darwin(v168);
  v165 = v144 - v6;
  v167 = sub_1000F24EC(&qword_100AE6970);
  v157 = *(v167 - 8);
  __chkstk_darwin(v167);
  v156 = v144 - v7;
  v158 = sub_1000F24EC(&qword_100AE6978);
  v155 = *(v158 - 8);
  __chkstk_darwin(v158);
  v154 = v144 - v8;
  v153 = sub_1000F24EC(&qword_100AE6980);
  __chkstk_darwin(v153);
  v152 = v144 - v9;
  v10 = sub_1000F24EC(&qword_100AE6988);
  v150 = *(v10 - 8);
  v151 = v10;
  __chkstk_darwin(v10);
  v149 = v144 - v11;
  v12 = sub_1000F24EC(&qword_100AE6990);
  v147 = *(v12 - 8);
  v148 = v12;
  __chkstk_darwin(v12);
  v14 = v144 - v13;
  v15 = sub_1000F24EC(&qword_100AE6998);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = v144 - v17;
  v171 = a1;
  static Axis.Set.vertical.getter();
  sub_1000F24EC(&qword_100AE69A0);
  sub_1004F0498();
  ScrollView.init(_:showsIndicators:content:)();
  if (*a1 == 7)
  {
    static UnitPoint.bottom.getter();
  }

  v19 = sub_10000B58C(&qword_100AE69E0, &qword_100AE6998);
  View.defaultScrollAnchor(_:)();
  (*(v16 + 8))(v18, v15);
  sub_1000F24EC(&qword_100AE69E8);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100940050;
  v21 = static Edge.Set.horizontal.getter();
  *(v20 + 32) = v21;
  v22 = static Edge.Set.bottom.getter();
  *(v20 + 33) = v22;
  Edge.Set.init(rawValue:)();
  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v21)
  {
    Edge.Set.init(rawValue:)();
  }

  Edge.Set.init(rawValue:)();
  if (Edge.Set.init(rawValue:)() != v22)
  {
    Edge.Set.init(rawValue:)();
  }

  *&v197[9] = *(a1 + 177);
  v23 = *(a1 + 136);
  v24 = *(a1 + 168);
  v196[4] = *(a1 + 152);
  *v197 = v24;
  v25 = *(a1 + 104);
  v196[0] = *(a1 + 88);
  v196[1] = v25;
  v196[2] = *(a1 + 120);
  v196[3] = v23;
  v164 = a1;
  if (v197[24])
  {
    v26 = *(a1 + 136);
    v27 = *(a1 + 168);
    v193 = *(a1 + 152);
    v194 = v27;
    v195 = *(a1 + 184);
    v28 = *(a1 + 104);
    v189 = *(a1 + 88);
    v190 = v28;
    v191 = *(a1 + 120);
    v192 = v26;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v29 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v30 = type metadata accessor for EnvironmentValues();
    v31 = *(v30 - 8);
    __chkstk_darwin(v30);
    v33 = v144 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F84(v196, &qword_100AE69F0);
    (*(v31 + 8))(v33, v30);
  }

  v34 = type metadata accessor for ContentMarginPlacement();
  v35 = *(v34 - 8);
  __chkstk_darwin(v34);
  v37 = v144 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ContentMarginPlacement.scrollContent.getter();
  *&v186[0] = v15;
  *(&v186[0] + 1) = v19;
  swift_getOpaqueTypeConformance2();
  v38 = v148;
  v39 = v149;
  View.contentMargins(_:_:for:)();
  (*(v35 + 8))(v37, v34);
  (*(v147 + 8))(v14, v38);
  v40 = static Alignment.center.getter();
  v42 = v41;
  sub_1004EF7A8(&v177);
  v181 = v177;
  v182 = v178;
  v183 = v179;
  v184 = v180;
  *&v185 = v40;
  *(&v185 + 1) = v42;
  v43 = v152;
  (*(v150 + 32))(v152, v39, v151);
  v44 = v153;
  v45 = (v43 + *(v153 + 9));
  v46 = v184;
  v45[2] = v183;
  v45[3] = v46;
  v45[4] = v185;
  v47 = v182;
  *v45 = v181;
  v45[1] = v47;
  v186[2] = v179;
  v186[3] = v180;
  v186[0] = v177;
  v186[1] = v178;
  v187 = v40;
  v188 = v42;
  sub_1000082B4(&v181, &v175, &qword_100AE69F8);
  sub_100004F84(v186, &qword_100AE69F8);
  LocalizedStringKey.init(stringLiteral:)();
  v48 = Text.init(_:tableName:bundle:comment:)();
  v50 = v49;
  LOBYTE(v39) = v51;
  v52 = sub_1004F06F0();
  v53 = v154;
  View.navigationTitle(_:)();
  sub_1000594D0(v48, v50, v39 & 1);

  sub_100004F84(v43, &qword_100AE6980);
  v54 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v55 = *(v54 - 8);
  v56 = __chkstk_darwin(v54);
  v58 = v144 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v55 + 104))(v58, enum case for NavigationBarItem.TitleDisplayMode.large(_:), v54, v56);
  v175 = v44;
  v176 = v52;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v156;
  v61 = v158;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v55 + 8))(v58, v54);
  (*(v155 + 8))(v53, v61);
  v62 = type metadata accessor for ToolbarRole();
  v63 = *(v62 - 8);
  __chkstk_darwin(v62);
  v65 = v144 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  static ToolbarRole.browser.getter();
  v175 = v61;
  v176 = OpaqueTypeConformance2;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = v167;
  v158 = v66;
  View.toolbarRole(_:)();
  (*(v63 + 8))(v65, v62);
  (*(v157 + 8))(v60, v67);
  v68 = type metadata accessor for InsightsView();
  v156 = v144;
  v69 = *(v68 - 8);
  v70 = *(v69 + 64);
  __chkstk_darwin(v68 - 8);
  v71 = v164;
  sub_1004F0D84(v164, v144 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for InsightsView);
  v153 = type metadata accessor for MainActor();
  v72 = static MainActor.shared.getter();
  v73 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v154 = *(v69 + 80);
  v74 = swift_allocObject();
  *(v74 + 16) = v72;
  *(v74 + 24) = &protocol witness table for MainActor;
  v155 = v73;
  sub_10005269C(v144 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0), v74 + v73, type metadata accessor for InsightsView);
  v75 = type metadata accessor for TaskPriority();
  v151 = v144;
  v150 = *(v75 - 8);
  v76 = *(v150 + 64);
  __chkstk_darwin(v75);
  v77 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  v78 = v144 - v77;
  static TaskPriority.userInitiated.getter();
  LODWORD(v152) = sub_1008C158C(2, 26, 4, 0);
  v157 = v75;
  if (v152)
  {
    v148 = type metadata accessor for _TaskModifier2();
    v149 = v144;
    v147 = *(v148 - 8);
    __chkstk_darwin(v148);
    v145 = v144 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
    v175 = 0;
    v176 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v175 = 0xD000000000000027;
    v176 = 0x80000001008F7CF0;
    *&v177 = 86;
    v80._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v80);

    v144[1] = v144;
    v82 = __chkstk_darwin(v81);
    v83 = v150;
    (*(v150 + 16))(v144 - v77, v78, v75, v82);
    v146 = v70;
    v84 = v145;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v83 + 8))(v78, v75);
    v85 = v164;
    v86 = v166;
    (v159[4])(v166, v165, v168);
    v87 = sub_1000F24EC(&qword_100AD0E78);
    v88 = v84;
    v70 = v146;
    v89 = (*(v147 + 32))(&v86[*(v87 + 36)], v88, v148);
    v90 = v83;
    v71 = v85;
  }

  else
  {
    v91 = sub_1000F24EC(&qword_100AD0E80);
    v92 = v166;
    v93 = &v166[*(v91 + 36)];
    v94 = type metadata accessor for _TaskModifier();
    v90 = v150;
    (*(v150 + 32))(&v93[*(v94 + 20)], v78, v75);
    *v93 = &unk_100959DD0;
    *(v93 + 1) = v74;
    v89 = (v159[4])(v92, v165, v168);
  }

  v165 = v144;
  __chkstk_darwin(v89);
  v95 = v144 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004F0D84(v71, v95, type metadata accessor for InsightsView);
  v96 = static MainActor.shared.getter();
  v97 = v155;
  v98 = swift_allocObject();
  *(v98 + 16) = v96;
  *(v98 + 24) = &protocol witness table for MainActor;
  v99 = sub_10005269C(v95, v98 + v97, type metadata accessor for InsightsView);
  v159 = v144;
  __chkstk_darwin(v99);
  v100 = (v76 + 15) & 0xFFFFFFFFFFFFFFF0;
  v101 = v144 - v100;
  static TaskPriority.userInitiated.getter();
  if (v152)
  {
    v155 = type metadata accessor for _TaskModifier2();
    v156 = v144;
    v154 = *(v155 - 8);
    __chkstk_darwin(v155);
    v153 = v144 - ((v102 + 15) & 0xFFFFFFFFFFFFFFF0);
    v175 = 0;
    v176 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);

    v175 = 0xD000000000000027;
    v176 = 0x80000001008F7CF0;
    *&v177 = 89;
    v103._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v103);

    v105 = v90;
    v152 = v144;
    v106 = __chkstk_darwin(v104);
    v107 = v144 - v100;
    v108 = v144 - v100;
    v109 = v157;
    (*(v90 + 16))(v107, v108, v157, v106);
    v110 = v153;
    _s7SwiftUI14_TaskModifier2V4name18executorPreference8priority6actionACSS_Sch_pSgScPyyYaYAcntcfC();
    (*(v105 + 8))(v101, v109);
    v111 = v170;
    (*(v160 + 32))(v170, v166, v169);
    v112 = sub_1000F24EC(&qword_100AD0E90);
    (*(v154 + 4))(&v111[*(v112 + 36)], v110, v155);
  }

  else
  {
    v113 = sub_1000F24EC(&qword_100AD0E98);
    v114 = v170;
    v115 = &v170[*(v113 + 36)];
    v116 = type metadata accessor for _TaskModifier();
    (*(v90 + 32))(&v115[*(v116 + 20)], v144 - v100, v157);
    *v115 = &unk_100959DE0;
    *(v115 + 1) = v98;
    (*(v160 + 32))(v114, v166, v169);
  }

  v117 = *(v71 + 72);
  v118 = *(v71 + 80);

  v119 = v117;
  LODWORD(v164) = v118;
  if ((v118 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v120 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v121 = type metadata accessor for EnvironmentValues();
    v122 = *(v121 - 8);
    __chkstk_darwin(v121);
    v124 = v144 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v122 + 8))(v124, v121);
    v119 = v175;
  }

  v165 = type metadata accessor for InsightsDataManager.Streaks(0);
  v166 = v144;
  v125 = *(*(v165 - 1) + 64);
  __chkstk_darwin(v165);
  v126 = (v125 + 15) & 0xFFFFFFFFFFFFFFF0;
  swift_getKeyPath();
  v175 = v119;
  sub_1004F0C6C(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v127 = OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
  swift_beginAccess();
  sub_1004F0D84(v119 + v127, v144 - v126, type metadata accessor for InsightsDataManager.Streaks);

  v128 = type metadata accessor for StreakSummary();
  v129 = *(v144 + *(v128 + 28) - v126);
  sub_1004F0CB4(v144 - v126, type metadata accessor for InsightsDataManager.Streaks);

  if ((v164 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v131 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v132 = type metadata accessor for EnvironmentValues();
    v164 = v144;
    v133 = *(v132 - 8);
    __chkstk_darwin(v132);
    v135 = v144 - ((v134 + 15) & 0xFFFFFFFFFFFFFFF0);
    EnvironmentValues.init()();
    swift_getAtKeyPath();

    v130 = (*(v133 + 8))(v135, v132);
    v117 = v177;
  }

  __chkstk_darwin(v130);
  swift_getKeyPath();
  *&v177 = v117;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v136 = OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
  swift_beginAccess();
  sub_1004F0D84(v117 + v136, v144 - v126, type metadata accessor for InsightsDataManager.Streaks);

  v137 = *(v144 + *(v165 + 5) - v126 + *(v128 + 28));
  sub_1004F0CB4(v144 - v126, type metadata accessor for InsightsDataManager.Streaks);
  if (v137 <= v129)
  {
    v138 = v129;
  }

  else
  {
    v138 = v137;
  }

  v172 = v167;
  v173 = v158;
  v174 = v138;
  v139 = swift_getOpaqueTypeConformance2();
  v172 = v168;
  v173 = v139;
  v140 = swift_getOpaqueTypeConformance2();
  v172 = v169;
  v173 = v140;
  swift_getOpaqueTypeConformance2();
  v141 = v163;
  v142 = v170;
  View.onChange<A>(of:initial:_:)();
  return (*(v162 + 8))(v142, v141);
}

uint64_t sub_1004EDD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for EnvironmentValues();
  v42 = *(v3 - 8);
  v43 = v3;
  __chkstk_darwin(v3);
  v41 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PinnedScrollableViews();
  __chkstk_darwin(v5);
  v6 = sub_1000F24EC(&qword_100AE69D0);
  v7 = *(v6 - 8);
  v44 = v6;
  v45 = v7;
  __chkstk_darwin(v6);
  v9 = &v41 - v8;
  v10 = sub_1000F24EC(&qword_100AE6A18);
  v47 = *(v10 - 8);
  v48 = v10;
  __chkstk_darwin(v10);
  v12 = &v41 - v11;
  v46 = sub_1000F24EC(&qword_100AE69C8);
  __chkstk_darwin(v46);
  v49 = &v41 - v13;
  v50 = sub_1000F24EC(&qword_100AE69B8);
  __chkstk_darwin(v50);
  v51 = &v41 - v14;
  static HorizontalAlignment.leading.getter();
  v53 = a1;
  LODWORD(v61) = 0;
  sub_1004F0C6C(&qword_100AE6A20, &type metadata accessor for PinnedScrollableViews);
  dispatch thunk of OptionSet.init(rawValue:)();
  sub_1000F24EC(&qword_100AE6A28);
  sub_10000B58C(&qword_100AE6A30, &qword_100AE6A28);
  LazyVStack.init(alignment:spacing:pinnedViews:content:)();
  *&v61 = static Color.gray.getter();
  sub_10000B58C(&qword_100AE69D8, &qword_100AE69D0);
  v15 = v44;
  View.tipImageStyle<A>(_:)();

  (*(v45 + 8))(v9, v15);
  *&v69[9] = *(a1 + 177);
  v16 = *(a1 + 136);
  v17 = *(a1 + 168);
  v68[4] = *(a1 + 152);
  *v69 = v17;
  v18 = *(a1 + 104);
  v68[0] = *(a1 + 88);
  v68[1] = v18;
  v68[2] = *(a1 + 120);
  v68[3] = v16;
  if (v69[24])
  {
    v19 = *(a1 + 136);
    v20 = *(a1 + 168);
    v65 = *(a1 + 152);
    v66 = v20;
    *&v67 = *(a1 + 184);
    v21 = *(a1 + 104);
    v61 = *(a1 + 88);
    v62 = v21;
    v63 = *(a1 + 120);
    v64 = v19;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    v23 = v41;
    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_100004F84(v68, &qword_100AE69F0);
    (*(v42 + 8))(v23, v43);
  }

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v24 = v49;
  (*(v47 + 32))(v49, v12, v48);
  v25 = &v24[*(v46 + 36)];
  v26 = v59;
  *(v25 + 4) = v58;
  *(v25 + 5) = v26;
  *(v25 + 6) = v60;
  v27 = v55;
  *v25 = v54;
  *(v25 + 1) = v27;
  v28 = v57;
  *(v25 + 2) = v56;
  *(v25 + 3) = v28;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v29 = v24;
  v30 = v51;
  sub_100021CEC(v29, v51, &qword_100AE69C8);
  v31 = (v30 + *(v50 + 36));
  v32 = v66;
  v31[4] = v65;
  v31[5] = v32;
  v31[6] = v67;
  v33 = v62;
  *v31 = v61;
  v31[1] = v33;
  v34 = v64;
  v31[2] = v63;
  v31[3] = v34;
  LocalizedStringKey.init(stringLiteral:)();
  v35 = Text.init(_:tableName:bundle:comment:)();
  v37 = v36;
  v39 = v38;
  sub_1004F0554();
  View.accessibilityLabel(_:)();
  sub_1000594D0(v35, v37, v39 & 1);

  return sub_100004F84(v30, &qword_100AE69B8);
}

uint64_t sub_1004EE4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v149 = a2;
  v147 = sub_1000F24EC(&unk_100AD9850);
  __chkstk_darwin(v147);
  v146 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v145 = &v119 - v5;
  v143 = type metadata accessor for InsightsBentoView();
  __chkstk_darwin(v143);
  v148 = &v119 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v142 = &v119 - v8;
  v9 = type metadata accessor for ColorResource();
  v10 = *(v9 - 8);
  v140 = v9;
  v141 = v10;
  __chkstk_darwin(v9);
  v139 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1000F24EC(&qword_100ADE660);
  __chkstk_darwin(v130);
  v127 = &v119 - v12;
  v13 = type metadata accessor for InsightsView();
  v14 = *(v13 - 8);
  v123 = v13;
  v124 = v14;
  __chkstk_darwin(v13);
  v125 = v15;
  v126 = (&v119 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1000F24EC(&qword_100ADE650);
  v128 = *(v16 - 8);
  v129 = v16;
  __chkstk_darwin(v16);
  v18 = &v119 - v17;
  v19 = sub_1000F24EC(&qword_100AE6A38);
  v133 = *(v19 - 8);
  v134 = v19;
  __chkstk_darwin(v19);
  v136 = &v119 - v20;
  v21 = sub_1000F24EC(&qword_100ADE640);
  v137 = *(v21 - 8);
  v138 = v21;
  __chkstk_darwin(v21);
  v132 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v131 = &v119 - v24;
  v25 = sub_1000F24EC(&qword_100AE6A40);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v135 = &v119 - v27;
  v28 = type metadata accessor for EnvironmentValues();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = &v119 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1000F24EC(&qword_100AE6A48);
  __chkstk_darwin(v32 - 8);
  v144 = &v119 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v150 = &v119 - v35;
  v36 = *(a1 + 80);

  if ((v36 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v122 = a1;
    v37 = static Log.runtimeIssuesLog.getter();
    a1 = v122;
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v29 + 8))(v31, v28);
  }

  v38 = sub_1000A51A0();

  if ((v38 & 1) != 0 || *a1 == 7)
  {
    goto LABEL_15;
  }

  *&v165[9] = *(a1 + 177);
  v39 = *(a1 + 136);
  v40 = *(a1 + 168);
  v164[4] = *(a1 + 152);
  *v165 = v40;
  v41 = *(a1 + 104);
  v164[0] = *(a1 + 88);
  v164[1] = v41;
  v164[2] = *(a1 + 120);
  v164[3] = v39;
  v121 = v28;
  if (v165[24])
  {
    v42 = *(a1 + 136);
    v43 = *(a1 + 168);
    v162 = *(a1 + 152);
    v163[0] = v43;
    *&v163[1] = *(a1 + 184);
    v44 = *(a1 + 104);
    v158 = *(a1 + 88);
    v159 = v44;
    v160 = *(a1 + 120);
    v161 = v42;
    if (!v158)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  static os_log_type_t.fault.getter();
  v45 = v18;
  v46 = v26;
  v47 = v25;
  v48 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  v25 = v47;
  v26 = v46;
  v18 = v45;
  v49 = v121;
  EnvironmentValues.init()();
  swift_getAtKeyPath();
  sub_100004F84(v164, &qword_100AE69F0);
  (*(v29 + 8))(v31, v49);
  if (v158)
  {
LABEL_9:
    *(v163 + 9) = *(a1 + 177);
    v50 = *(a1 + 136);
    v51 = *(a1 + 168);
    v162 = *(a1 + 152);
    v163[0] = v51;
    v52 = *(a1 + 104);
    v158 = *(a1 + 88);
    v159 = v52;
    v160 = *(a1 + 120);
    v161 = v50;
    if (BYTE8(v163[1]))
    {
      v53 = *(a1 + 136);
      v54 = *(a1 + 168);
      v155 = *(a1 + 152);
      v156 = v54;
      v157 = *(a1 + 184);
      v55 = *(a1 + 104);
      v151 = *(a1 + 88);
      v152 = v55;
      v153 = *(a1 + 120);
      v154 = v53;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v56 = v18;
      v57 = v26;
      v58 = v25;
      v59 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v25 = v58;
      v26 = v57;
      v18 = v56;
      v60 = v121;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100004F84(&v158, &qword_100AE69F0);
      (*(v29 + 8))(v31, v60);
    }

    if (v151 == 1)
    {
      goto LABEL_13;
    }

LABEL_15:
    (*(v26 + 56))(v150, 1, 1, v25);
    goto LABEL_16;
  }

LABEL_13:
  v61 = *(a1 + 56);
  v62 = *(a1 + 64);
  *&v158 = *(a1 + 48);
  BYTE8(v158) = v61;
  *&v159 = v62;
  sub_1000F24EC(&qword_100AE6A10);
  State.wrappedValue.getter();
  if (BYTE8(v151))
  {
    v63 = v135;
    (*(v137 + 56))(v135, 1, 1, v138);
    v64 = v150;
  }

  else
  {
    v120 = v31;
    v122 = v25;
    v87 = a1 + *(v123 + 52);
    LOBYTE(v87) = *(v87 + *(type metadata accessor for InsightsTipViewModel() + 28));
    *(&v159 + 1) = &type metadata for InsightsTip;
    *&v160 = sub_10031F03C();
    LOBYTE(v158) = v87;
    v88 = v126;
    sub_1004F0D84(a1, v126, type metadata accessor for InsightsView);
    v89 = (*(v124 + 80) + 16) & ~*(v124 + 80);
    v90 = swift_allocObject();
    sub_10005269C(v88, v90 + v89, type metadata accessor for InsightsView);
    TipView.init<>(_:isPresented:arrowEdge:action:)();
    v125 = v18;
    if (qword_100AD0CC0 != -1)
    {
      swift_once();
    }

    v91 = v140;
    v92 = sub_10000617C(v140, qword_100B31550);
    v93 = *(v141 + 16);
    v141 += 16;
    v126 = v93;
    (v93)(v139, v92, v91);
    v94 = Color.init(_:)();
    v95 = v130;
    v123 = *(v130 + 36);
    v124 = v94;
    v96 = enum case for BlendMode.normal(_:);
    v97 = type metadata accessor for BlendMode();
    v98 = *(*(v97 - 8) + 104);
    v99 = v127;
    v98(&v127[v123], v96, v97);
    v98(v99 + *(v95 + 40), enum case for BlendMode.plusLighter(_:), v97);
    *v99 = v124;
    sub_10000B58C(&unk_100ADE670, &qword_100ADE660);
    *&v158 = AnyShapeStyle.init<A>(_:)();
    sub_10000B58C(&qword_100ADE658, &qword_100ADE650);
    v100 = v129;
    v101 = v125;
    View.tipBackground<A>(_:)();

    (*(v128 + 8))(v101, v100);
    *(v163 + 9) = *(a1 + 177);
    v102 = *(a1 + 136);
    v103 = *(a1 + 168);
    v162 = *(a1 + 152);
    v163[0] = v103;
    v104 = *(a1 + 104);
    v158 = *(a1 + 88);
    v159 = v104;
    v160 = *(a1 + 120);
    v161 = v102;
    if (BYTE8(v163[1]))
    {
      v105 = *(a1 + 136);
      v106 = *(a1 + 168);
      v155 = *(a1 + 152);
      v156 = v106;
      v157 = *(a1 + 184);
      v107 = *(a1 + 104);
      v151 = *(a1 + 88);
      v152 = v107;
      v153 = *(a1 + 120);
      v154 = v105;
    }

    else
    {

      static os_log_type_t.fault.getter();
      v108 = static Log.runtimeIssuesLog.getter();
      os_log(_:dso:log:_:_:)();

      v109 = v120;
      EnvironmentValues.init()();
      swift_getAtKeyPath();
      sub_100004F84(&v158, &qword_100AE69F0);
      (*(v29 + 8))(v109, v121);
    }

    v64 = v150;
    v25 = v122;
    v63 = v135;
    v110 = *(&v154 + 1);
    if (qword_100AD0CC8 != -1)
    {
      swift_once();
    }

    v111 = v140;
    v112 = sub_10000617C(v140, qword_100B31568);
    (v126)(v139, v112, v111);
    v113 = Color.init(_:)();
    v114 = v132;
    (*(v133 + 32))(v132, v136, v134);
    v115 = v138;
    v116 = &v114[*(v138 + 36)];
    *v116 = v113;
    *(v116 + 1) = v110;
    *(v116 + 1) = xmmword_100959CE0;
    v117 = v114;
    v118 = v131;
    sub_100021CEC(v117, v131, &qword_100ADE640);
    sub_100021CEC(v118, v63, &qword_100ADE640);
    (*(v137 + 56))(v63, 0, 1, v115);
  }

  sub_100021CEC(v63, v64, &qword_100AE6A40);
  (*(v26 + 56))(v64, 0, 1, v25);
LABEL_16:
  v65 = *a1;
  v66 = *(a1 + 16);
  v67 = *(a1 + 24);
  v68 = *(a1 + 32);
  v140 = *(a1 + 8);
  v141 = v67;
  LOBYTE(v158) = v65;

  sub_1000F24EC(&qword_100AD8D88);
  State.init(wrappedValue:)();
  v69 = *(&v164[0] + 1);
  v71 = v142;
  v70 = v143;
  *v142 = v164[0];
  *(v71 + 8) = v69;
  v72 = type metadata accessor for DateComponents();
  v73 = v145;
  (*(*(v72 - 8) + 56))(v145, 1, 1, v72);
  sub_1000082B4(v73, v146, &unk_100AD9850);
  State.init(wrappedValue:)();
  sub_100004F84(v73, &unk_100AD9850);
  v74 = (v71 + v70[6]);
  v75 = v141;
  *v74 = v140;
  v74[1] = v66;
  v76 = (v71 + v70[7]);
  *v76 = v75;
  v76[1] = v68;
  v77 = v71 + v70[8];
  *v77 = swift_getKeyPath();
  *(v77 + 8) = 0;
  v78 = v71 + v70[9];
  type metadata accessor for InsightsDataManager(0);
  sub_1004F0C6C(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  *v78 = Environment.init<A>(_:)();
  *(v78 + 8) = v79 & 1;
  v80 = v70[10];
  *(v71 + v80) = static Font.subheadline.getter();
  v81 = v150;
  v82 = v144;
  sub_1000D0BDC(v150, v144);
  v83 = v148;
  sub_1004F0D84(v71, v148, type metadata accessor for InsightsBentoView);
  v84 = v149;
  sub_1000D0BDC(v82, v149);
  v85 = sub_1000F24EC(&qword_100AE6A50);
  sub_1004F0D84(v83, v84 + *(v85 + 48), type metadata accessor for InsightsBentoView);
  sub_1004F0CB4(v71, type metadata accessor for InsightsBentoView);
  sub_100004F84(v81, &qword_100AE6A48);
  sub_1004F0CB4(v83, type metadata accessor for InsightsBentoView);
  return sub_100004F84(v82, &qword_100AE6A48);
}

uint64_t sub_1004EF5BC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for InsightsTipViewModel();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = *(type metadata accessor for InsightsView() + 52);
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  sub_1004F0D84(a2 + v10, v6, type metadata accessor for InsightsTipViewModel);
  type metadata accessor for MainActor();
  v12 = static MainActor.shared.getter();
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = &protocol witness table for MainActor;
  sub_10005269C(v6, v14 + v13, type metadata accessor for InsightsTipViewModel);
  sub_1004EC158(0, 0, v9, &unk_10096F350, v14);
}

__n128 sub_1004EF7A8@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ColorResource();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F24EC(&qword_100AD3CA8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100942000;
  if (qword_100AD0D50 != -1)
  {
    swift_once();
  }

  v7 = sub_10000617C(v2, qword_100B31700);
  v8 = *(v3 + 16);
  v8(v5, v7, v2);
  *(v6 + 32) = Color.init(_:)();
  if (qword_100AD0D48 != -1)
  {
    swift_once();
  }

  v9 = sub_10000617C(v2, qword_100B316E8);
  v8(v5, v9, v2);
  *(v6 + 40) = Color.init(_:)();
  if (qword_100AD0D40 != -1)
  {
    swift_once();
  }

  v10 = sub_10000617C(v2, qword_100B316D0);
  v8(v5, v10, v2);
  *(v6 + 48) = Color.init(_:)();
  static UnitPoint.top.getter();
  static UnitPoint.bottom.getter();
  Gradient.init(colors:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v11 = v15[1];
  v12 = static SafeAreaRegions.all.getter();
  v13 = static Edge.Set.all.getter();
  *a1 = v11;
  result = v16;
  *(a1 + 24) = v17;
  *(a1 + 8) = result;
  *(a1 + 40) = 256;
  *(a1 + 48) = v12;
  *(a1 + 56) = v13;
  return result;
}

uint64_t sub_1004EFA30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a3;
  v4 = type metadata accessor for EnvironmentValues();
  v3[4] = v4;
  v3[5] = *(v4 - 8);
  v3[6] = swift_task_alloc();
  type metadata accessor for MainActor();
  v3[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[8] = v6;
  v3[9] = v5;

  return _swift_task_switch(sub_1004EFB24, v6, v5);
}

uint64_t sub_1004EFB24()
{
  v1 = v0[3];
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);

  if ((v3 & 1) == 0)
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = v0[4];
    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v5 + 8))(v4, v6);
    v2 = v0[2];
  }

  v0[10] = v2;
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_1004EFC60;

  return sub_1000351A4();
}

uint64_t sub_1004EFC60()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return _swift_task_switch(sub_1004EFDA4, v3, v2);
}

uint64_t sub_1004EFDA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004EFE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a3;
  type metadata accessor for MainActor();
  v3[21] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[22] = v5;
  v3[23] = v4;

  return _swift_task_switch(sub_1004EFEA4, v5, v4);
}

uint64_t sub_1004EFEA4()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 48);
  *(v0 + 192) = v2;
  v3 = *(v1 + 56);
  *(v0 + 153) = v3;
  v4 = *(v1 + 64);
  *(v0 + 80) = v2;
  *(v0 + 200) = v4;
  *(v0 + 88) = v3;
  *(v0 + 96) = v4;
  *(v0 + 208) = sub_1000F24EC(&qword_100AE6A10);
  State.wrappedValue.getter();
  if (*(v0 + 152) == 1)
  {
    if (qword_100ACFD20 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 168);
    *(v0 + 216) = qword_100B2F898;

    if (v5)
    {
      swift_getObjectType();
      v6 = dispatch thunk of Actor.unownedExecutor.getter();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    *(v0 + 224) = v6;
    *(v0 + 232) = v8;

    return _swift_task_switch(sub_1004F0008, v6, v8);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1004F0008()
{
  v1 = *(v0[27] + OBJC_IVAR____TtC7Journal27JournalNotificationsManager_notificationCenter);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004F0130;
  v2 = swift_continuation_init();
  v0[17] = sub_1000F24EC(&qword_100AD9C90);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004A75BC;
  v0[13] = &unk_100A70B38;
  v0[14] = v2;
  [v1 getNotificationSettingsWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004F0130()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);

  return _swift_task_switch(sub_1004F0238, v2, v1);
}

uint64_t sub_1004F0238()
{

  v0[30] = v0[18];
  v1 = v0[22];
  v2 = v0[23];

  return _swift_task_switch(sub_1004F02A4, v1, v2);
}

uint64_t sub_1004F02A4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 200);
  v3 = *(v0 + 153);
  v4 = *(v0 + 192);

  v5 = [v1 authorizationStatus];

  *(v0 + 80) = v4;
  *(v0 + 88) = v3;
  *(v0 + 96) = v2;
  *(v0 + 144) = v5;
  *(v0 + 152) = 0;
  State.wrappedValue.setter();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1004F0360()
{
  if (qword_100ACFC48 != -1)
  {
    swift_once();
  }

  v0 = sub_1000F24EC(&unk_100ADE720);
  sub_10000617C(v0, qword_100B2F7D8);
  swift_beginAccess();
  Tips.Parameter.wrappedValue.getter();
  swift_endAccess();
  swift_beginAccess();
  Tips.Parameter.wrappedValue.setter();
  return swift_endAccess();
}

uint64_t sub_1004F0444@<X0>(uint64_t *a1@<X8>)
{
  *a1 = static Alignment.center.getter();
  a1[1] = v3;
  v4 = sub_1000F24EC(&qword_100AE6960);
  return sub_1004EC404(v1, a1 + *(v4 + 44));
}

unint64_t sub_1004F0498()
{
  result = qword_100AE69A8;
  if (!qword_100AE69A8)
  {
    sub_1000F2A18(&qword_100AE69A0);
    sub_1004F0554();
    sub_1004F0C6C(&qword_100AD2200, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE69A8);
  }

  return result;
}

unint64_t sub_1004F0554()
{
  result = qword_100AE69B0;
  if (!qword_100AE69B0)
  {
    sub_1000F2A18(&qword_100AE69B8);
    sub_1004F05E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE69B0);
  }

  return result;
}

unint64_t sub_1004F05E0()
{
  result = qword_100AE69C0;
  if (!qword_100AE69C0)
  {
    sub_1000F2A18(&qword_100AE69C8);
    sub_1000F2A18(&qword_100AE69D0);
    sub_10000B58C(&qword_100AE69D8, &qword_100AE69D0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE69C0);
  }

  return result;
}

unint64_t sub_1004F06F0()
{
  result = qword_100AE6A00;
  if (!qword_100AE6A00)
  {
    sub_1000F2A18(&qword_100AE6980);
    sub_1000F2A18(&qword_100AE6990);
    sub_1000F2A18(&qword_100AE6998);
    sub_10000B58C(&qword_100AE69E0, &qword_100AE6998);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100AE6A08, &qword_100AE69F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6A00);
  }

  return result;
}

uint64_t sub_1004F085C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if ((a14 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1004F086C()
{
  v2 = *(type metadata accessor for InsightsView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100032ECC;

  return sub_1004EFA30(v4, v5, v0 + v3);
}

uint64_t sub_1004F0948()
{
  v2 = *(type metadata accessor for InsightsView() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100032EC8;

  return sub_1004EFE0C(v4, v5, v0 + v3);
}

__n128 sub_1004F0A24@<Q0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for DynamicTypeSize();
  __chkstk_darwin(v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100673E7C();
  EnvironmentValues.dynamicTypeSize.getter();
  sub_100538CC4(v5, v4, v10);
  v6 = v10[5];
  *(a1 + 64) = v10[4];
  *(a1 + 80) = v6;
  *(a1 + 96) = v11;
  v7 = v10[1];
  *a1 = v10[0];
  *(a1 + 16) = v7;
  result = v10[3];
  *(a1 + 32) = v10[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1004F0AE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1004F0C6C(&qword_100AD99A0, type metadata accessor for InsightsDataManager);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC7Journal19InsightsDataManager__streaks;
  swift_beginAccess();
  return sub_1004F0D84(v3 + v4, a2, type metadata accessor for InsightsDataManager.Streaks);
}

uint64_t sub_1004F0BC4(uint64_t a1)
{
  v2 = type metadata accessor for InsightsDataManager.Streaks(0);
  __chkstk_darwin(v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004F0D84(a1, v4, type metadata accessor for InsightsDataManager.Streaks);
  return sub_100692DB8(v4);
}

uint64_t sub_1004F0C6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004F0CB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1004F0D14(uint64_t a1)
{
  v3 = *(type metadata accessor for InsightsView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1004EF5BC(a1, v4);
}

uint64_t sub_1004F0D84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004F0DEC()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AE6A68);
  v1 = sub_10000617C(v0, qword_100AE6A68);
  if (qword_100AD0188 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FF38);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1004F0EB8(uint64_t a1)
{
  v2[2] = v1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v2[3] = v4;
  v2[4] = *(v4 - 8);
  v2[5] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = dispatch thunk of Actor.unownedExecutor.getter();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v2[6] = v5;
  v2[7] = v7;

  return _swift_task_switch(sub_1004F0FB4, v5, v7);
}

uint64_t sub_1004F0FB4()
{
  v27 = v0;
  v1 = v0[2];
  v2 = *&v1[OBJC_IVAR____TtC7Journal5Asset_context];
  v0[8] = v2;
  if (v2)
  {
    v4 = v0[4];
    v3 = v0[5];
    v5 = v0[3];
    v6 = swift_allocObject();
    v0[9] = v6;
    *(v6 + 16) = v1;
    (*(v4 + 104))(v3, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v5);
    v2;
    v7 = v1;
    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_1004F135C;
    v9 = v0[5];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v8, v9, sub_1004F91EC, v6, &type metadata for () + 8);
  }

  else
  {
    if (qword_100AD0A78 != -1)
    {
      swift_once();
      v1 = v0[2];
    }

    v10 = type metadata accessor for Logger();
    sub_10000617C(v10, qword_100AF1388);
    v11 = v1;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    v14 = os_log_type_enabled(v12, v13);
    v15 = v0[2];
    if (v14)
    {
      v16 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v16 = 136446466;
      type metadata accessor for AssetType();
      sub_1004F91A4(&qword_100AD8780, &type metadata accessor for AssetType);
      v17 = dispatch thunk of CustomStringConvertible.description.getter();
      v19 = v18;

      v20 = sub_100008458(v17, v19, &v26);

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      type metadata accessor for UUID();
      sub_1004F91A4(&qword_100AE19B0, &type metadata accessor for UUID);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      v23 = sub_100008458(v21, v22, &v26);

      *(v16 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v12, v13, "Asset doesn't have a managed object context. Won't save metadata for %{public}s asset with id: %{public}s", v16, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_1004F135C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);

    v4 = v2[6];
    v5 = v2[7];

    return _swift_task_switch(sub_1004F14B0, v4, v5);
  }
}

uint64_t sub_1004F14B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004F1518()
{
  v1[36] = v0;
  sub_1000F24EC(&unk_100AEBE00);
  v1[37] = swift_task_alloc();
  v2 = type metadata accessor for UserEngagement.StateSnapshot();
  v1[38] = v2;
  v1[39] = *(v2 - 8);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v3 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v1[42] = v3;
  v1[43] = *(v3 - 8);
  v1[44] = swift_task_alloc();
  v1[45] = sub_1000F24EC(&unk_100AD4790);
  v1[46] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v1[47] = v4;
  v1[48] = *(v4 - 8);
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v5 = type metadata accessor for EntryDateSource();
  v1[51] = v5;
  v1[52] = *(v5 - 8);
  v1[53] = swift_task_alloc();
  v1[54] = sub_1000F24EC(&qword_100AE36E8);
  v1[55] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE2AA0);
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  v1[58] = swift_task_alloc();
  v6 = type metadata accessor for AssetPlacement();
  v1[59] = v6;
  v1[60] = *(v6 - 8);
  v1[61] = swift_task_alloc();
  v1[62] = sub_1000F24EC(&qword_100AD6C98);
  v1[63] = swift_task_alloc();
  v7 = sub_1000F24EC(&qword_100AD6C90);
  v1[64] = v7;
  v1[65] = *(v7 - 8);
  v1[66] = swift_task_alloc();
  v1[67] = swift_task_alloc();
  v8 = type metadata accessor for DrawingAssetMetadata();
  v1[68] = v8;
  v1[69] = *(v8 - 8);
  v1[70] = swift_task_alloc();
  v1[71] = swift_task_alloc();
  v1[72] = swift_task_alloc();
  sub_1000F24EC(&unk_100ADC5E0);
  v1[73] = swift_task_alloc();
  v1[74] = swift_task_alloc();
  v9 = type metadata accessor for PaperMarkup();
  v1[75] = v9;
  v1[76] = *(v9 - 8);
  v1[77] = swift_task_alloc();
  v1[78] = swift_task_alloc();
  v1[79] = swift_task_alloc();
  v10 = sub_1000F24EC(&qword_100AE4C80);
  v1[80] = v10;
  v1[81] = *(v10 - 8);
  v1[82] = swift_task_alloc();
  v1[83] = type metadata accessor for MainActor();
  v1[84] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[85] = v11;
  v1[86] = v12;

  return _swift_task_switch(sub_1004F1B14, v11, v12);
}

uint64_t sub_1004F1B14()
{
  v2 = *(*(v0 + 288) + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
  *(v0 + 696) = v2;
  v3 = *(v2 + 24);
  sub_1000F24EC(&unk_100AD4780);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100941D50;
  v5 = *(v2 + 32);
  *(v4 + 32) = v5;
  sub_1000065A8(0, &unk_100AE4860);
  v6 = v3;
  v7 = v5;
  isa = Array._bridgeToObjectiveC()().super.isa;

  *(v0 + 272) = 0;
  LODWORD(v5) = [v6 obtainPermanentIDsForObjects:isa error:v0 + 272];

  v9 = *(v0 + 272);
  if (v5)
  {
    v10 = v9;
  }

  else
  {
    v11 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (*(v0 + 280) = Strong, sub_1000065A8(0, &qword_100AD4C80), sub_1000F24EC(&unk_100AEBE70), (swift_dynamicCast() & 1) == 0))
  {
    *(v0 + 192) = 0;
    *(v0 + 160) = 0u;
    *(v0 + 176) = 0u;
LABEL_9:
    sub_100004F84(v0 + 160, &unk_100AEBE60);
    v19 = sub_100658B00();
    sub_1002B7540(0);
    v20 = [v19 textStorage];
    v21 = [v19 textStorage];
    v22 = [v21 length];

    if ((v22 & 0x8000000000000000) != 0)
    {
LABEL_59:
      __break(1u);
    }

    else
    {
      *(v0 + 48) = sub_1004F0EB4;
      *(v0 + 56) = 0;
      *(v0 + 16) = _NSConcreteStackBlock;
      *(v0 + 24) = 1107296256;
      *(v0 + 32) = sub_10007E0A4;
      *(v0 + 40) = &unk_100A70BB0;
      v1 = _Block_copy((v0 + 16));

      [v20 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v22 usingBlock:{0, v1}];

      _Block_release(v1);
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        v23 = [v19 textStorage];
        v24 = [v23 length];

        if ((v24 & 0x8000000000000000) == 0)
        {
          v25 = [v19 textStorage];
          v26 = NSParagraphAttachmentAttributeName;
          v27 = swift_allocObject();
          *(v27 + 16) = sub_1002B8440;
          *(v27 + 24) = 0;
          *(v0 + 96) = sub_10007E150;
          *(v0 + 104) = v27;
          *(v0 + 64) = _NSConcreteStackBlock;
          *(v0 + 72) = 1107296256;
          *(v0 + 80) = sub_10007E0A4;
          *(v0 + 88) = &unk_100A70C00;
          v1 = _Block_copy((v0 + 64));

          [v25 enumerateAttribute:v26 inRange:0 options:v24 usingBlock:{0, v1}];

          _Block_release(v1);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            v29 = *(v0 + 288);
            v30 = OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView;
            v31 = [*(v29 + OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView) textStorage];
            sub_1000F24EC(&qword_100ADC5F8);
            v32 = swift_dynamicCastClass();
            v122 = v30;
            if (v32)
            {
              v33 = *(v0 + 656);
              v34 = *(v0 + 648);
              v35 = *(v0 + 640);
              v36 = *((swift_isaMask & *v32) + 0x68);
              v37 = v32;
              swift_beginAccess();
              (*(v34 + 16))(v33, &v37[v36], v35);
              sub_10077C118(v33);

              v38 = *(v34 + 8);
              v1 = v34 + 8;
              v38(v33, v35);
LABEL_20:
              v52 = *(v0 + 608);
              v53 = *(v0 + 600);
              v54 = *(v0 + 592);
              v55 = *(v29 + v122);
              sub_1002B2438(v54);

              v56 = *(v52 + 48);
              *(v0 + 752) = v56;
              *(v0 + 760) = (v52 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
              if (v56(v54, 1, v53) != 1)
              {
                (*(*(v0 + 608) + 32))(*(v0 + 632), *(v0 + 592), *(v0 + 600));
                if ((sub_10029EF80() & 1) == 0)
                {
                  goto LABEL_36;
                }

                v1 = *(*(v0 + 696) + OBJC_IVAR____TtC7Journal14EntryViewModel_canvasAssets);
                if (v1 >> 62)
                {
                  goto LABEL_96;
                }

                v57 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
                goto LABEL_25;
              }

              sub_100004F84(*(v0 + 592), &unk_100ADC5E0);
              while (1)
              {
                v63 = sub_10029F620();
                *(v0 + 824) = v63;
                if (!v63)
                {
                  goto LABEL_65;
                }

                if (v63 >> 62)
                {
LABEL_63:
                  v64 = _CocoaArrayWrapper.endIndex.getter();
                  *(v0 + 832) = v64;
                  if (!v64)
                  {
LABEL_64:

LABEL_65:
                    *(v0 + 976) = 0;
                    v75 = sub_10029F0D4();
                    *(v0 + 984) = v75;
                    if (v75)
                    {
                      v76 = v75;
                      v77 = *(v0 + 672);
                      v79 = *(v0 + 480);
                      v78 = *(v0 + 488);
                      v80 = *(v0 + 472);
                      *v78 = static AssetPlacement.maxGridCount.getter();
                      (*(v79 + 104))(v78, enum case for AssetPlacement.grid(_:), v80);

                      v81 = swift_task_alloc();
                      *(v0 + 992) = v81;
                      *v81 = v0;
                      v81[1] = sub_1004F62F0;
                      v82 = *(v0 + 488);

                      return sub_1005666C0(v77, &protocol witness table for MainActor, v76, v82);
                    }

                    if (sub_10005AAB0(289))
                    {
                      v83 = *(v0 + 696);
                      v84 = *(v0 + 464);
                      v85 = *(v0 + 408);
                      v86 = *(v0 + 416);
                      v87 = OBJC_IVAR____TtC7Journal14EntryViewModel_dateSource;
                      swift_beginAccess();
                      sub_1000082B4(v83 + v87, v84, &qword_100AE2AA0);
                      v88 = *(v86 + 48);
                      LODWORD(v85) = v88(v84, 1, v85);
                      sub_100004F84(v84, &qword_100AE2AA0);
                      if (v85 == 1)
                      {
LABEL_71:
                        v89 = *(v0 + 376);
                        v90 = *(v0 + 384);
                        v91 = *(v0 + 368);
                        swift_allocObject();
                        swift_weakInit();
                        NSManagedObjectContext.performAndWait<A>(_:)();

                        v92 = *(v90 + 48);
                        if (v92(v91, 1, v89) == 1)
                        {
                          v93 = *(v0 + 368);
                          v94 = *(v0 + 376);
                          Date.init()();
                          if (v92(v93, 1, v94) != 1)
                          {
                            sub_100004F84(*(v0 + 368), &unk_100AD4790);
                          }
                        }

                        else
                        {
                          (*(*(v0 + 384) + 32))(*(v0 + 400), *(v0 + 368), *(v0 + 376));
                        }

                        v103 = *(v0 + 672);
                        (*(*(v0 + 416) + 104))(*(v0 + 424), enum case for EntryDateSource.creation(_:), *(v0 + 408));

                        v104 = swift_task_alloc();
                        *(v0 + 1000) = v104;
                        *v104 = v0;
                        v104[1] = sub_1004F6A8C;
                        v105 = *(v0 + 424);
                        v106 = *(v0 + 400);

                        return sub_10078281C(v103, &protocol witness table for MainActor, v106, v105);
                      }

                      v95 = *(v0 + 456);
                      v97 = *(v0 + 432);
                      v96 = *(v0 + 440);
                      v98 = *(v0 + 408);
                      v99 = *(v0 + 416);
                      (*(v99 + 104))(v95, enum case for EntryDateSource.moment(_:), v98);
                      (*(v99 + 56))(v95, 0, 1, v98);
                      v100 = v83 + v87;
                      v101 = *(v97 + 48);
                      sub_1000082B4(v100, v96, &qword_100AE2AA0);
                      sub_1000082B4(v95, v96 + v101, &qword_100AE2AA0);
                      if (v88(v96, 1, v98) == 1)
                      {
                        v102 = *(v0 + 408);
                        sub_100004F84(*(v0 + 456), &qword_100AE2AA0);
                        if (v88(v96 + v101, 1, v102) == 1)
                        {
                          sub_100004F84(*(v0 + 440), &qword_100AE2AA0);
                          goto LABEL_71;
                        }

LABEL_83:
                        sub_100004F84(*(v0 + 440), &qword_100AE36E8);
                      }

                      else
                      {
                        v107 = *(v0 + 408);
                        sub_1000082B4(*(v0 + 440), *(v0 + 448), &qword_100AE2AA0);
                        v108 = v88(v96 + v101, 1, v107);
                        v109 = *(v0 + 448);
                        v110 = *(v0 + 456);
                        if (v108 == 1)
                        {
                          v111 = *(v0 + 408);
                          v112 = *(v0 + 416);
                          sub_100004F84(*(v0 + 456), &qword_100AE2AA0);
                          (*(v112 + 8))(v109, v111);
                          goto LABEL_83;
                        }

                        v115 = *(v0 + 440);
                        v117 = *(v0 + 416);
                        v116 = *(v0 + 424);
                        v118 = *(v0 + 408);
                        (*(v117 + 32))(v116, v96 + v101, v118);
                        sub_1004F91A4(&qword_100AE36F0, &type metadata accessor for EntryDateSource);
                        v119 = dispatch thunk of static Equatable.== infix(_:_:)();
                        v120 = *(v117 + 8);
                        v120(v116, v118);
                        sub_100004F84(v110, &qword_100AE2AA0);
                        v120(v109, v118);
                        sub_100004F84(v115, &qword_100AE2AA0);
                        if (v119)
                        {
                          goto LABEL_71;
                        }
                      }
                    }

                    v113 = *(v0 + 672);

                    if (v113)
                    {
                      swift_getObjectType();
                      v17 = dispatch thunk of Actor.unownedExecutor.getter();
                      v18 = v114;
                    }

                    else
                    {
                      v17 = 0;
                      v18 = 0;
                    }

                    *(v0 + 1016) = v18;
                    *(v0 + 1008) = v17;
                    v16 = sub_1004F6D84;
                    goto LABEL_88;
                  }
                }

                else
                {
                  v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  *(v0 + 832) = v64;
                  if (!v64)
                  {
                    goto LABEL_64;
                  }
                }

                if (v64 >= 1)
                {
                  *(v0 + 840) = 0u;
                  v65 = *(v0 + 824);
                  if ((v65 & 0xC000000000000001) != 0)
                  {
                    v66 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v66 = *(v65 + 32);
                  }

                  *(v0 + 856) = v66;
                  v67 = *(v0 + 672);

                  if (v67)
                  {
                    swift_getObjectType();
                    v17 = dispatch thunk of Actor.unownedExecutor.getter();
                    v18 = v68;
                  }

                  else
                  {
                    v17 = 0;
                    v18 = 0;
                  }

                  *(v0 + 872) = v18;
                  *(v0 + 864) = v17;
                  v16 = sub_1004F4D64;
                  goto LABEL_88;
                }

LABEL_95:
                __break(1u);
LABEL_96:
                v57 = _CocoaArrayWrapper.endIndex.getter();
LABEL_25:

                if (v57)
                {
                  v58 = 0;
                  while (1)
                  {
                    if ((v1 & 0xC000000000000001) != 0)
                    {
                      v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      if (v58 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_58;
                      }

                      v59 = *(v1 + 8 * v58 + 32);
                    }

                    v60 = v59;
                    *(v0 + 768) = v59;
                    v61 = v58 + 1;
                    if (__OFADD__(v58, 1))
                    {
                      __break(1u);
LABEL_58:
                      __break(1u);
                      goto LABEL_59;
                    }

                    type metadata accessor for DrawingAsset();
                    v62 = swift_dynamicCastClass();
                    *(v0 + 776) = v62;
                    if (v62)
                    {
                      break;
                    }

                    ++v58;
                    if (v61 == v57)
                    {
                      goto LABEL_35;
                    }
                  }

                  PaperMarkup.contentsRenderFrame.getter();
                  v126.origin.x = 0.0;
                  v126.origin.y = 0.0;
                  v126.size.width = 0.0;
                  v126.size.height = 0.0;
                  if (CGRectEqualToRect(v124, v126) || (PaperMarkup.contentsRenderFrame.getter(), v127.origin.x = CGRectNull.origin.x, v127.origin.y = CGRectNull.origin.y, v127.size.width = CGRectNull.size.width, v127.size.height = CGRectNull.size.height, CGRectEqualToRect(v125, v127)))
                  {
                    v69 = *(v0 + 672);

                    if (v69)
                    {
                      swift_getObjectType();
                      v17 = dispatch thunk of Actor.unownedExecutor.getter();
                      v18 = v70;
                    }

                    else
                    {
                      v17 = 0;
                      v18 = 0;
                    }

                    *(v0 + 792) = v18;
                    *(v0 + 784) = v17;
                    v16 = sub_1004F4048;
                    goto LABEL_88;
                  }

                  v71 = *(v0 + 672);

                  v72 = swift_task_alloc();
                  *(v0 + 816) = v72;
                  *v72 = v0;
                  v72[1] = sub_1004F4438;
                  v73 = *(v0 + 632);

                  return sub_1001B79DC(v71, &protocol witness table for MainActor, v73, 1);
                }

LABEL_35:

LABEL_36:
                (*(*(v0 + 608) + 8))(*(v0 + 632), *(v0 + 600));
              }
            }

            v39 = [*(v29 + v30) textStorage];
            v40 = [v39 string];
            if (!v40)
            {
              static String._unconditionallyBridgeFromObjectiveC(_:)();
              v40 = String._bridgeToObjectiveC()();
            }

            v41 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v40];

            v42 = [objc_opt_self() labelColor];
            v43 = [objc_opt_self() systemFontOfSize:0.0];
            v44 = [v39 length];
            if ((v44 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else
            {
              v1 = v44;
              v121 = v29;
              v45 = swift_allocObject();
              v45[2] = v43;
              v45[3] = v42;
              v45[4] = 0;
              v45[5] = 0;
              v45[6] = v41;
              v46 = swift_allocObject();
              *(v46 + 16) = sub_100080490;
              *(v46 + 24) = v45;
              *(v0 + 144) = sub_100080460;
              *(v0 + 152) = v46;
              *(v0 + 112) = _NSConcreteStackBlock;
              *(v0 + 120) = 1107296256;
              *(v0 + 128) = sub_10007F714;
              *(v0 + 136) = &unk_100A70C78;
              v47 = _Block_copy((v0 + 112));
              v48 = v43;
              v49 = v42;
              v50 = v41;

              [v39 enumerateAttributesInRange:0 options:v1 usingBlock:{0, v47}];

              _Block_release(v47);
              v51 = swift_isEscapingClosureAtFileLocation();

              if ((v51 & 1) == 0)
              {
                sub_100780424(v50);

                v29 = v121;
                goto LABEL_20;
              }
            }

            __break(1u);
            goto LABEL_95;
          }

LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

LABEL_61:
        __break(1u);
        goto LABEL_62;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  v13 = *(v0 + 184);
  if (!v13)
  {
    goto LABEL_9;
  }

  *(v0 + 704) = *sub_10000CA14((v0 + 160), v13);
  *(v0 + 712) = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 720) = v14;
  *(v0 + 728) = v15;
  v16 = sub_1004F2D48;
  v17 = v14;
  v18 = v15;
LABEL_88:

  return _swift_task_switch(v16, v17, v18);
}

uint64_t sub_1004F2D48()
{
  *(v0 + 736) = sub_100507B94();
  v1 = swift_task_alloc();
  *(v0 + 744) = v1;
  *v1 = v0;
  v1[1] = sub_1004F2E10;

  return sub_1005EE9DC();
}

uint64_t sub_1004F2E10()
{
  v1 = *v0;

  v2 = *(v1 + 728);
  v3 = *(v1 + 720);

  return _swift_task_switch(sub_1004F2F80, v3, v2);
}

uint64_t sub_1004F2F80()
{

  v1 = *(v0 + 688);
  v2 = *(v0 + 680);

  return _swift_task_switch(sub_1004F3014, v2, v1);
}

uint64_t sub_1004F3014()
{
  sub_10000BA7C((v0 + 20));
  v2 = sub_100658B00();
  sub_1002B7540(0);
  v3 = [v2 textStorage];
  v4 = [v2 textStorage];
  v5 = [v4 length];

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v0[6] = sub_1004F0EB4;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10007E0A4;
  v0[5] = &unk_100A70BB0;
  v1 = _Block_copy(v0 + 2);

  [v3 enumerateAttribute:NSAttachmentAttributeName inRange:0 options:v5 usingBlock:{0, v1}];

  _Block_release(v1);
  if (swift_isEscapingClosureAtFileLocation())
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v6 = [v2 textStorage];
  v7 = [v6 length];

  if ((v7 & 0x8000000000000000) != 0)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v8 = [v2 textStorage];
  v9 = NSParagraphAttachmentAttributeName;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1002B8440;
  *(v10 + 24) = 0;
  v0[12] = sub_10007E150;
  v0[13] = v10;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_10007E0A4;
  v0[11] = &unk_100A70C00;
  v1 = _Block_copy(v0 + 8);

  [v8 enumerateAttribute:v9 inRange:0 options:v7 usingBlock:{0, v1}];

  _Block_release(v1);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v12 = v0[36];
  v13 = OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView;
  v14 = [*(v12 + OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView) textStorage];
  sub_1000F24EC(&qword_100ADC5F8);
  v15 = swift_dynamicCastClass();
  v108 = v13;
  if (!v15)
  {

    v22 = [*(v12 + v13) textStorage];
    v23 = [v22 string];
    if (!v23)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = String._bridgeToObjectiveC()();
    }

    v24 = [objc_allocWithZone(NSMutableAttributedString) initWithString:v23];

    v25 = [objc_opt_self() labelColor];
    v26 = [objc_opt_self() systemFontOfSize:0.0];
    v27 = [v22 length];
    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v1 = v27;
      v107 = v12;
      v28 = swift_allocObject();
      v28[2] = v26;
      v28[3] = v25;
      v28[4] = 0;
      v28[5] = 0;
      v28[6] = v24;
      v29 = swift_allocObject();
      *(v29 + 16) = sub_100080490;
      *(v29 + 24) = v28;
      v0[18] = sub_100080460;
      v0[19] = v29;
      v0[14] = _NSConcreteStackBlock;
      v0[15] = 1107296256;
      v0[16] = sub_10007F714;
      v0[17] = &unk_100A70C78;
      v30 = _Block_copy(v0 + 14);
      v31 = v26;
      v32 = v25;
      v33 = v24;

      [v22 enumerateAttributesInRange:0 options:v1 usingBlock:{0, v30}];

      _Block_release(v30);
      v34 = swift_isEscapingClosureAtFileLocation();

      if ((v34 & 1) == 0)
      {
        sub_100780424(v33);

        v12 = v107;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_87;
  }

  v16 = v0[82];
  v17 = v0[81];
  v18 = v0[80];
  v19 = *((swift_isaMask & *v15) + 0x68);
  v20 = v15;
  swift_beginAccess();
  (*(v17 + 16))(v16, &v20[v19], v18);
  sub_10077C118(v16);

  v21 = *(v17 + 8);
  v1 = v17 + 8;
  v21(v16, v18);
LABEL_12:
  v35 = v0[76];
  v36 = v0[75];
  v37 = v0[74];
  v38 = *(v12 + v108);
  sub_1002B2438(v37);

  v39 = *(v35 + 48);
  v0[94] = v39;
  v0[95] = (v35 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v39(v37, 1, v36) != 1)
  {
    (*(v0[76] + 32))(v0[79], v0[74], v0[75]);
    if ((sub_10029EF80() & 1) == 0)
    {
      goto LABEL_28;
    }

    v1 = *(v0[87] + OBJC_IVAR____TtC7Journal14EntryViewModel_canvasAssets);
    if (v1 >> 62)
    {
      goto LABEL_88;
    }

    v40 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_17;
  }

  sub_100004F84(v0[74], &unk_100ADC5E0);
  while (1)
  {
    v46 = sub_10029F620();
    v0[103] = v46;
    if (!v46)
    {
      goto LABEL_57;
    }

    if (v46 >> 62)
    {
LABEL_55:
      v47 = _CocoaArrayWrapper.endIndex.getter();
      v0[104] = v47;
      if (v47)
      {
        goto LABEL_32;
      }

LABEL_56:

LABEL_57:
      v0[122] = 0;
      v61 = sub_10029F0D4();
      v0[123] = v61;
      if (v61)
      {
        v62 = v61;
        v63 = v0[84];
        v65 = v0[60];
        v64 = v0[61];
        v66 = v0[59];
        *v64 = static AssetPlacement.maxGridCount.getter();
        (*(v65 + 104))(v64, enum case for AssetPlacement.grid(_:), v66);

        v67 = swift_task_alloc();
        v0[124] = v67;
        *v67 = v0;
        v67[1] = sub_1004F62F0;
        v68 = v0[61];

        return sub_1005666C0(v63, &protocol witness table for MainActor, v62, v68);
      }

      if (sub_10005AAB0(289))
      {
        v69 = v0[87];
        v70 = v0[58];
        v71 = v0[51];
        v72 = v0[52];
        v73 = OBJC_IVAR____TtC7Journal14EntryViewModel_dateSource;
        swift_beginAccess();
        sub_1000082B4(v69 + v73, v70, &qword_100AE2AA0);
        v74 = *(v72 + 48);
        LODWORD(v71) = v74(v70, 1, v71);
        sub_100004F84(v70, &qword_100AE2AA0);
        if (v71 == 1)
        {
LABEL_63:
          v75 = v0[47];
          v76 = v0[48];
          v77 = v0[46];
          swift_allocObject();
          swift_weakInit();
          NSManagedObjectContext.performAndWait<A>(_:)();

          v78 = *(v76 + 48);
          if (v78(v77, 1, v75) == 1)
          {
            v79 = v0[46];
            v80 = v0[47];
            Date.init()();
            if (v78(v79, 1, v80) != 1)
            {
              sub_100004F84(v0[46], &unk_100AD4790);
            }
          }

          else
          {
            (*(v0[48] + 32))(v0[50], v0[46], v0[47]);
          }

          v89 = v0[84];
          (*(v0[52] + 104))(v0[53], enum case for EntryDateSource.creation(_:), v0[51]);

          v90 = swift_task_alloc();
          v0[125] = v90;
          *v90 = v0;
          v90[1] = sub_1004F6A8C;
          v91 = v0[53];
          v92 = v0[50];

          return sub_10078281C(v89, &protocol witness table for MainActor, v92, v91);
        }

        v81 = v0[57];
        v83 = v0[54];
        v82 = v0[55];
        v84 = v0[51];
        v85 = v0[52];
        (*(v85 + 104))(v81, enum case for EntryDateSource.moment(_:), v84);
        (*(v85 + 56))(v81, 0, 1, v84);
        v86 = v69 + v73;
        v87 = *(v83 + 48);
        sub_1000082B4(v86, v82, &qword_100AE2AA0);
        sub_1000082B4(v81, v82 + v87, &qword_100AE2AA0);
        if (v74(v82, 1, v84) == 1)
        {
          v88 = v0[51];
          sub_100004F84(v0[57], &qword_100AE2AA0);
          if (v74(v82 + v87, 1, v88) == 1)
          {
            sub_100004F84(v0[55], &qword_100AE2AA0);
            goto LABEL_63;
          }

          goto LABEL_75;
        }

        v93 = v0[51];
        sub_1000082B4(v0[55], v0[56], &qword_100AE2AA0);
        v94 = v74(v82 + v87, 1, v93);
        v95 = v0[56];
        v96 = v0[57];
        if (v94 == 1)
        {
          v97 = v0[51];
          v98 = v0[52];
          sub_100004F84(v0[57], &qword_100AE2AA0);
          (*(v98 + 8))(v95, v97);
LABEL_75:
          sub_100004F84(v0[55], &qword_100AE36E8);
          goto LABEL_76;
        }

        v101 = v0[55];
        v103 = v0[52];
        v102 = v0[53];
        v104 = v0[51];
        (*(v103 + 32))(v102, v82 + v87, v104);
        sub_1004F91A4(&qword_100AE36F0, &type metadata accessor for EntryDateSource);
        v105 = dispatch thunk of static Equatable.== infix(_:_:)();
        v106 = *(v103 + 8);
        v106(v102, v104);
        sub_100004F84(v96, &qword_100AE2AA0);
        v106(v95, v104);
        sub_100004F84(v101, &qword_100AE2AA0);
        if (v105)
        {
          goto LABEL_63;
        }
      }

LABEL_76:
      v99 = v0[84];

      if (v99)
      {
        swift_getObjectType();
        v51 = dispatch thunk of Actor.unownedExecutor.getter();
        v53 = v100;
      }

      else
      {
        v51 = 0;
        v53 = 0;
      }

      v0[127] = v53;
      v0[126] = v51;
      v54 = sub_1004F6D84;
      goto LABEL_80;
    }

    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[104] = v47;
    if (!v47)
    {
      goto LABEL_56;
    }

LABEL_32:
    if (v47 >= 1)
    {
      *(v0 + 105) = 0u;
      v48 = v0[103];
      if ((v48 & 0xC000000000000001) != 0)
      {
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v49 = *(v48 + 32);
      }

      v0[107] = v49;
      v50 = v0[84];

      if (v50)
      {
        swift_getObjectType();
        v51 = dispatch thunk of Actor.unownedExecutor.getter();
        v53 = v52;
      }

      else
      {
        v51 = 0;
        v53 = 0;
      }

      v0[109] = v53;
      v0[108] = v51;
      v54 = sub_1004F4D64;
LABEL_80:

      return _swift_task_switch(v54, v51, v53);
    }

LABEL_87:
    __break(1u);
LABEL_88:
    v40 = _CocoaArrayWrapper.endIndex.getter();
LABEL_17:

    if (v40)
    {
      break;
    }

LABEL_27:

LABEL_28:
    (*(v0[76] + 8))(v0[79], v0[75]);
  }

  v41 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v41 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_50;
      }

      v42 = *(v1 + 8 * v41 + 32);
    }

    v43 = v42;
    v0[96] = v42;
    v44 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    type metadata accessor for DrawingAsset();
    v45 = swift_dynamicCastClass();
    v0[97] = v45;
    if (v45)
    {
      break;
    }

    ++v41;
    if (v44 == v40)
    {
      goto LABEL_27;
    }
  }

  PaperMarkup.contentsRenderFrame.getter();
  v112.origin.x = 0.0;
  v112.origin.y = 0.0;
  v112.size.width = 0.0;
  v112.size.height = 0.0;
  if (CGRectEqualToRect(v110, v112) || (PaperMarkup.contentsRenderFrame.getter(), v113.origin.x = CGRectNull.origin.x, v113.origin.y = CGRectNull.origin.y, v113.size.width = CGRectNull.size.width, v113.size.height = CGRectNull.size.height, CGRectEqualToRect(v111, v113)))
  {
    v55 = v0[84];

    if (v55)
    {
      swift_getObjectType();
      v51 = dispatch thunk of Actor.unownedExecutor.getter();
      v53 = v56;
    }

    else
    {
      v51 = 0;
      v53 = 0;
    }

    v0[99] = v53;
    v0[98] = v51;
    v54 = sub_1004F4048;
    goto LABEL_80;
  }

  v57 = v0[84];

  v58 = swift_task_alloc();
  v0[102] = v58;
  *v58 = v0;
  v58[1] = sub_1004F4438;
  v59 = v0[79];

  return sub_1001B79DC(v57, &protocol witness table for MainActor, v59, 1);
}

uint64_t sub_1004F4048()
{
  v1 = v0[97];
  v2 = v0[84];
  sub_1000F24EC(&unk_100AE1A40);
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100940080;
  (*(v4 + 16))(v6 + v5, v1 + OBJC_IVAR____TtC7Journal5Asset_id, v3);
  v7 = sub_1004960D4(v6);
  v0[100] = v7;
  swift_setDeallocating();
  (*(v4 + 8))(v6 + v5, v3);
  swift_deallocClassInstance();
  v8 = swift_task_alloc();
  v0[101] = v8;
  *v8 = v0;
  v8[1] = sub_1004F4234;

  return sub_10056824C(v2, &protocol witness table for MainActor, v7);
}

uint64_t sub_1004F4234()
{
  v1 = *v0;

  v2 = *(v1 + 792);
  v3 = *(v1 + 784);

  return _swift_task_switch(sub_1004F43A4, v3, v2);
}

uint64_t sub_1004F43A4()
{

  v1 = *(v0 + 688);
  v2 = *(v0 + 680);

  return _swift_task_switch(sub_1004F922C, v2, v1);
}

uint64_t sub_1004F4438()
{
  v1 = *v0;

  v2 = *(v1 + 688);
  v3 = *(v1 + 680);

  return _swift_task_switch(sub_1004F45A8, v3, v2);
}

uint64_t sub_1004F45A8()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 608);
  v3 = *(v0 + 600);

  (*(v2 + 8))(v1, v3);
  v4 = sub_10029F620();
  *(v0 + 824) = v4;
  if (v4)
  {
    if (v4 >> 62)
    {
      v5 = _CocoaArrayWrapper.endIndex.getter();
      *(v0 + 832) = v5;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      *(v0 + 832) = v5;
      if (v5)
      {
LABEL_4:
        if (v5 < 1)
        {
          __break(1u);
        }

        *(v0 + 840) = 0u;
        v6 = *(v0 + 824);
        if ((v6 & 0xC000000000000001) != 0)
        {
          v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v7 = *(v6 + 32);
        }

        *(v0 + 856) = v7;
        v8 = *(v0 + 672);

        if (v8)
        {
          swift_getObjectType();
          v9 = dispatch thunk of Actor.unownedExecutor.getter();
          v11 = v10;
        }

        else
        {
          v9 = 0;
          v11 = 0;
        }

        *(v0 + 872) = v11;
        *(v0 + 864) = v9;
        v12 = sub_1004F4D64;
        goto LABEL_37;
      }
    }
  }

  *(v0 + 976) = 0;
  v13 = sub_10029F0D4();
  *(v0 + 984) = v13;
  if (v13)
  {
    v14 = v13;
    v15 = *(v0 + 672);
    v17 = *(v0 + 480);
    v16 = *(v0 + 488);
    v18 = *(v0 + 472);
    *v16 = static AssetPlacement.maxGridCount.getter();
    (*(v17 + 104))(v16, enum case for AssetPlacement.grid(_:), v18);

    v19 = swift_task_alloc();
    *(v0 + 992) = v19;
    *v19 = v0;
    v19[1] = sub_1004F62F0;
    v20 = *(v0 + 488);

    return sub_1005666C0(v15, &protocol witness table for MainActor, v14, v20);
  }

  if ((sub_10005AAB0(289) & 1) == 0)
  {
    goto LABEL_33;
  }

  v22 = *(v0 + 696);
  v23 = *(v0 + 464);
  v24 = *(v0 + 408);
  v25 = *(v0 + 416);
  v26 = OBJC_IVAR____TtC7Journal14EntryViewModel_dateSource;
  swift_beginAccess();
  sub_1000082B4(v22 + v26, v23, &qword_100AE2AA0);
  v27 = *(v25 + 48);
  LODWORD(v24) = v27(v23, 1, v24);
  sub_100004F84(v23, &qword_100AE2AA0);
  if (v24 != 1)
  {
    v34 = *(v0 + 456);
    v36 = *(v0 + 432);
    v35 = *(v0 + 440);
    v37 = *(v0 + 408);
    v38 = *(v0 + 416);
    (*(v38 + 104))(v34, enum case for EntryDateSource.moment(_:), v37);
    (*(v38 + 56))(v34, 0, 1, v37);
    v39 = v22 + v26;
    v40 = *(v36 + 48);
    sub_1000082B4(v39, v35, &qword_100AE2AA0);
    sub_1000082B4(v34, v35 + v40, &qword_100AE2AA0);
    if (v27(v35, 1, v37) == 1)
    {
      v41 = *(v0 + 408);
      sub_100004F84(*(v0 + 456), &qword_100AE2AA0);
      if (v27(v35 + v40, 1, v41) == 1)
      {
        sub_100004F84(*(v0 + 440), &qword_100AE2AA0);
        goto LABEL_20;
      }

      goto LABEL_32;
    }

    v46 = *(v0 + 408);
    sub_1000082B4(*(v0 + 440), *(v0 + 448), &qword_100AE2AA0);
    v47 = v27(v35 + v40, 1, v46);
    v48 = *(v0 + 448);
    v49 = *(v0 + 456);
    if (v47 == 1)
    {
      v50 = *(v0 + 408);
      v51 = *(v0 + 416);
      sub_100004F84(*(v0 + 456), &qword_100AE2AA0);
      (*(v51 + 8))(v48, v50);
LABEL_32:
      sub_100004F84(*(v0 + 440), &qword_100AE36E8);
      goto LABEL_33;
    }

    v54 = *(v0 + 440);
    v56 = *(v0 + 416);
    v55 = *(v0 + 424);
    v57 = *(v0 + 408);
    (*(v56 + 32))(v55, v35 + v40, v57);
    sub_1004F91A4(&qword_100AE36F0, &type metadata accessor for EntryDateSource);
    v58 = dispatch thunk of static Equatable.== infix(_:_:)();
    v59 = *(v56 + 8);
    v59(v55, v57);
    sub_100004F84(v49, &qword_100AE2AA0);
    v59(v48, v57);
    sub_100004F84(v54, &qword_100AE2AA0);
    if (v58)
    {
      goto LABEL_20;
    }

LABEL_33:
    v52 = *(v0 + 672);

    if (v52)
    {
      swift_getObjectType();
      v9 = dispatch thunk of Actor.unownedExecutor.getter();
      v11 = v53;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    *(v0 + 1016) = v11;
    *(v0 + 1008) = v9;
    v12 = sub_1004F6D84;
LABEL_37:

    return _swift_task_switch(v12, v9, v11);
  }

LABEL_20:
  v28 = *(v0 + 376);
  v29 = *(v0 + 384);
  v30 = *(v0 + 368);
  swift_allocObject();
  swift_weakInit();
  NSManagedObjectContext.performAndWait<A>(_:)();

  v31 = *(v29 + 48);
  if (v31(v30, 1, v28) == 1)
  {
    v32 = *(v0 + 368);
    v33 = *(v0 + 376);
    Date.init()();
    if (v31(v32, 1, v33) != 1)
    {
      sub_100004F84(*(v0 + 368), &unk_100AD4790);
    }
  }

  else
  {
    (*(*(v0 + 384) + 32))(*(v0 + 400), *(v0 + 368), *(v0 + 376));
  }

  v42 = *(v0 + 672);
  (*(*(v0 + 416) + 104))(*(v0 + 424), enum case for EntryDateSource.creation(_:), *(v0 + 408));

  v43 = swift_task_alloc();
  *(v0 + 1000) = v43;
  *v43 = v0;
  v43[1] = sub_1004F6A8C;
  v44 = *(v0 + 424);
  v45 = *(v0 + 400);

  return sub_10078281C(v42, &protocol witness table for MainActor, v45, v44);
}

uint64_t sub_1004F4D64()
{
  v1 = v0[107];
  v2 = OBJC_IVAR____TtC7Journal12DrawingAsset_metadata;
  v0[110] = OBJC_IVAR____TtC7Journal12DrawingAsset_metadata;
  if (!*(v1 + v2))
  {
    v3 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
    if (v3)
    {
      v4 = [v3 assetMetaData];
      if (v4)
      {
        v5 = v0[65];
        v7 = v0[63];
        v6 = v0[64];
        v8 = v4;
        v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        *v7 = v9;
        v7[1] = v11;
        swift_storeEnumTagMultiPayload();
        sub_1000F24EC(&qword_100AD6CA0);
        v12 = swift_allocObject();
        (*(v5 + 56))(v12 + *(*v12 + 104), 1, 1, v6);
        *(v12 + *(*v12 + 112)) = xmmword_100941EE0;
        sub_1001BA66C(v7, v12 + *(*v12 + 120));
        *(v1 + v2) = v12;
      }
    }

    if (!*(v1 + v2))
    {
      (*(v0[69] + 56))(v0[67], 1, 1, v0[68]);
      goto LABEL_14;
    }
  }

  v13 = v0[69];
  v14 = v0[68];
  v15 = v0[67];

  sub_10025D0D4(v15);

  v16 = *(v13 + 48);
  v0[111] = v16;
  v0[112] = (v13 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v16(v15, 1, v14) == 1)
  {
LABEL_14:
    v35 = v0[76];
    v36 = v0[75];
    v37 = v0[73];
    sub_100004F84(v0[67], &qword_100AD6C90);
    (*(v35 + 56))(v37, 1, 1, v36);
    v38 = v0[105];
LABEL_18:
    v43 = v0[73];

    sub_100004F84(v43, &unk_100ADC5E0);
    v0[121] = v38;
    v44 = v0[86];
    v45 = v0[85];

    return _swift_task_switch(sub_1004F5B84, v45, v44);
  }

  v17 = v0[105];
  v18 = v0[72];
  v19 = v0[69];
  v20 = v0[68];
  v21 = v0[67];
  v22 = *(v19 + 32);
  v0[113] = v22;
  v0[114] = (v19 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v22(v18, v21, v20);
  DrawingAssetMetadata.drawingData.getter();
  PaperMarkup.init(dataRepresentation:)();
  if (v17)
  {
    if (qword_100ACFA58 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000617C(v23, qword_100AD6BF8);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      swift_errorRetain();
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 4) = v28;
      *v27 = v28;
      _os_log_impl(&_mh_execute_header, v24, v25, "Unable to generate drawing from metadata: %@", v26, 0xCu);
      sub_100004F84(v27, &unk_100AD4BB0);
    }

    else
    {
    }

    v33 = *(v0[69] + 8);
    v33(v0[72], v0[68]);
    v34 = 1;
  }

  else
  {
    v29 = v0[77];
    v30 = v0[76];
    v31 = v0[75];
    v32 = v0[73];
    v33 = *(v0[69] + 8);
    v33(v0[72], v0[68]);
    (*(v30 + 32))(v32, v29, v31);
    v34 = 0;
  }

  v0[116] = v33;
  v0[115] = 0;
  v39 = v0[94];
  v40 = v0[75];
  v41 = v0[73];
  (*(v0[76] + 56))(v41, v34, 1, v40);
  v42 = v39(v41, 1, v40);
  v38 = 0;
  if (v42 == 1)
  {
    goto LABEL_18;
  }

  (*(v0[76] + 32))(v0[78], v0[73], v0[75]);
  v46 = swift_task_alloc();
  v0[117] = v46;
  *v46 = v0;
  v46[1] = sub_1004F5320;

  return PaperMarkup.indexableContent.getter();
}

uint64_t sub_1004F5320(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 944) = a1;
  *(v4 + 952) = a2;

  v5 = *(v3 + 872);
  v6 = *(v3 + 864);

  return _swift_task_switch(sub_1004F5480, v6, v5);
}

uint64_t sub_1004F5480()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 856);
  if (!*(v2 + v1))
  {
    v3 = *(v2 + OBJC_IVAR____TtC7Journal5Asset_assetMO);
    if (v3)
    {
      v4 = [v3 assetMetaData];
      v1 = *(v0 + 880);
      v2 = *(v0 + 856);
      if (v4)
      {
        v5 = *(v0 + 520);
        v7 = *(v0 + 504);
        v6 = *(v0 + 512);
        v8 = v4;
        v9 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        *v7 = v9;
        v7[1] = v11;
        swift_storeEnumTagMultiPayload();
        sub_1000F24EC(&qword_100AD6CA0);
        v12 = swift_allocObject();
        (*(v5 + 56))(v12 + *(*v12 + 104), 1, 1, v6);
        *(v12 + *(*v12 + 112)) = xmmword_100941EE0;
        sub_1001BA66C(v7, v12 + *(*v12 + 120));
        *(v2 + v1) = v12;

        v1 = *(v0 + 880);
        v2 = *(v0 + 856);
      }
    }

    if (!*(v2 + v1))
    {
      v24 = *(v0 + 552);
      v25 = *(v0 + 544);
      v26 = *(v0 + 528);

      (*(v24 + 56))(v26, 1, 1, v25);
      goto LABEL_12;
    }
  }

  v13 = *(v0 + 888);
  v14 = *(v0 + 544);
  v15 = *(v0 + 528);

  sub_10025D0D4(v15);

  if (v13(v15, 1, v14) == 1)
  {

LABEL_12:
    v27 = *(v0 + 528);
    (*(*(v0 + 608) + 8))(*(v0 + 624), *(v0 + 600));
    sub_100004F84(v27, &qword_100AD6C90);
    *(v0 + 968) = *(v0 + 920);
    v28 = *(v0 + 688);
    v29 = *(v0 + 680);

    return _swift_task_switch(sub_1004F5B84, v29, v28);
  }

  v32 = *(v0 + 856);
  v33 = *(v0 + 880);
  v16 = *(v0 + 560);
  v17 = *(v0 + 552);
  v18 = *(v0 + 544);
  v19 = *(v0 + 520);
  v20 = *(v0 + 504);
  v30 = *(v0 + 672);
  v31 = *(v0 + 512);
  (*(v0 + 904))(*(v0 + 568), *(v0 + 528), v18);
  DrawingAssetMetadata.drawingData.getter();
  DrawingAssetMetadata.init(drawingData:indexableContent:)();
  (*(v17 + 16))(v20, v16, v18);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD6CA0);
  v21 = swift_allocObject();
  (*(v19 + 56))(v21 + *(*v21 + 104), 1, 1, v31);
  *(v21 + *(*v21 + 112)) = xmmword_100941EE0;
  sub_1001BA66C(v20, v21 + *(*v21 + 120));
  *(v32 + v33) = v21;

  v22 = swift_task_alloc();
  *(v0 + 960) = v22;
  *v22 = v0;
  v22[1] = sub_1004F5910;

  return sub_1004F0EB8(v30);
}

uint64_t sub_1004F5910()
{
  v1 = *v0;

  v2 = *(v1 + 872);
  v3 = *(v1 + 864);

  return _swift_task_switch(sub_1004F5A64, v3, v2);
}

uint64_t sub_1004F5A64()
{
  v1 = v0[116];
  v2 = v0[78];
  v3 = v0[76];
  v4 = v0[75];
  v5 = v0[71];
  v6 = v0[70];
  v7 = v0[68];

  v1(v6, v7);
  v1(v5, v7);
  (*(v3 + 8))(v2, v4);
  v0[121] = v0[115];
  v8 = v0[86];
  v9 = v0[85];

  return _swift_task_switch(sub_1004F5B84, v9, v8);
}

uint64_t sub_1004F5B84()
{
  v1 = *(v0 + 848);
  v2 = *(v0 + 832);

  v3 = v1 + 1;
  v4 = *(v0 + 968);
  if (v3 != v2)
  {
    v14 = *(v0 + 848) + 1;
    *(v0 + 848) = v14;
    *(v0 + 840) = v4;
    v15 = *(v0 + 824);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v16 = *(v15 + 8 * v14 + 32);
    }

    *(v0 + 856) = v16;
    v29 = *(v0 + 672);

    if (v29)
    {
      swift_getObjectType();
      v30 = dispatch thunk of Actor.unownedExecutor.getter();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    *(v0 + 872) = v32;
    *(v0 + 864) = v30;
    v33 = sub_1004F4D64;
    goto LABEL_18;
  }

  *(v0 + 976) = v4;
  v5 = sub_10029F0D4();
  *(v0 + 984) = v5;
  if (v5)
  {
    v6 = v5;
    v7 = *(v0 + 672);
    v9 = *(v0 + 480);
    v8 = *(v0 + 488);
    v10 = *(v0 + 472);
    *v8 = static AssetPlacement.maxGridCount.getter();
    (*(v9 + 104))(v8, enum case for AssetPlacement.grid(_:), v10);

    v11 = swift_task_alloc();
    *(v0 + 992) = v11;
    *v11 = v0;
    v11[1] = sub_1004F62F0;
    v12 = *(v0 + 488);

    return sub_1005666C0(v7, &protocol witness table for MainActor, v6, v12);
  }

  if (sub_10005AAB0(289))
  {
    v17 = *(v0 + 696);
    v18 = *(v0 + 464);
    v19 = *(v0 + 408);
    v20 = *(v0 + 416);
    v21 = OBJC_IVAR____TtC7Journal14EntryViewModel_dateSource;
    swift_beginAccess();
    sub_1000082B4(v17 + v21, v18, &qword_100AE2AA0);
    v22 = *(v20 + 48);
    LODWORD(v19) = v22(v18, 1, v19);
    sub_100004F84(v18, &qword_100AE2AA0);
    if (v19 == 1)
    {
LABEL_10:
      v23 = *(v0 + 376);
      v24 = *(v0 + 384);
      v25 = *(v0 + 368);
      swift_allocObject();
      swift_weakInit();
      NSManagedObjectContext.performAndWait<A>(_:)();

      v26 = *(v24 + 48);
      if (v26(v25, 1, v23) == 1)
      {
        v27 = *(v0 + 368);
        v28 = *(v0 + 376);
        Date.init()();
        if (v26(v27, 1, v28) != 1)
        {
          sub_100004F84(*(v0 + 368), &unk_100AD4790);
        }
      }

      else
      {
        (*(*(v0 + 384) + 32))(*(v0 + 400), *(v0 + 368), *(v0 + 376));
      }

      v42 = *(v0 + 672);
      (*(*(v0 + 416) + 104))(*(v0 + 424), enum case for EntryDateSource.creation(_:), *(v0 + 408));

      v43 = swift_task_alloc();
      *(v0 + 1000) = v43;
      *v43 = v0;
      v43[1] = sub_1004F6A8C;
      v44 = *(v0 + 424);
      v45 = *(v0 + 400);

      return sub_10078281C(v42, &protocol witness table for MainActor, v45, v44);
    }

    v34 = *(v0 + 456);
    v36 = *(v0 + 432);
    v35 = *(v0 + 440);
    v37 = *(v0 + 408);
    v38 = *(v0 + 416);
    (*(v38 + 104))(v34, enum case for EntryDateSource.moment(_:), v37);
    (*(v38 + 56))(v34, 0, 1, v37);
    v39 = v17 + v21;
    v40 = *(v36 + 48);
    sub_1000082B4(v39, v35, &qword_100AE2AA0);
    sub_1000082B4(v34, v35 + v40, &qword_100AE2AA0);
    if (v22(v35, 1, v37) == 1)
    {
      v41 = *(v0 + 408);
      sub_100004F84(*(v0 + 456), &qword_100AE2AA0);
      if (v22(v35 + v40, 1, v41) == 1)
      {
        sub_100004F84(*(v0 + 440), &qword_100AE2AA0);
        goto LABEL_10;
      }
    }

    else
    {
      v46 = *(v0 + 408);
      sub_1000082B4(*(v0 + 440), *(v0 + 448), &qword_100AE2AA0);
      v47 = v22(v35 + v40, 1, v46);
      v48 = *(v0 + 448);
      v49 = *(v0 + 456);
      if (v47 != 1)
      {
        v54 = *(v0 + 440);
        v56 = *(v0 + 416);
        v55 = *(v0 + 424);
        v57 = *(v0 + 408);
        (*(v56 + 32))(v55, v35 + v40, v57);
        sub_1004F91A4(&qword_100AE36F0, &type metadata accessor for EntryDateSource);
        v58 = dispatch thunk of static Equatable.== infix(_:_:)();
        v59 = *(v56 + 8);
        v59(v55, v57);
        sub_100004F84(v49, &qword_100AE2AA0);
        v59(v48, v57);
        sub_100004F84(v54, &qword_100AE2AA0);
        if (v58)
        {
          goto LABEL_10;
        }

        goto LABEL_31;
      }

      v50 = *(v0 + 408);
      v51 = *(v0 + 416);
      sub_100004F84(*(v0 + 456), &qword_100AE2AA0);
      (*(v51 + 8))(v48, v50);
    }

    sub_100004F84(*(v0 + 440), &qword_100AE36E8);
  }

LABEL_31:
  v52 = *(v0 + 672);

  if (v52)
  {
    swift_getObjectType();
    v30 = dispatch thunk of Actor.unownedExecutor.getter();
    v32 = v53;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  *(v0 + 1016) = v32;
  *(v0 + 1008) = v30;
  v33 = sub_1004F6D84;
LABEL_18:

  return _swift_task_switch(v33, v30, v32);
}

uint64_t sub_1004F62F0()
{
  v1 = *v0;
  v2 = *(*v0 + 488);
  v3 = *(*v0 + 480);
  v4 = *(*v0 + 472);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 688);
  v6 = *(v1 + 680);

  return _swift_task_switch(sub_1004F64C4, v6, v5);
}

uint64_t sub_1004F64C4()
{
  if (sub_10005AAB0(289))
  {
    v1 = *(v0 + 696);
    v2 = *(v0 + 464);
    v3 = *(v0 + 408);
    v4 = *(v0 + 416);
    v5 = OBJC_IVAR____TtC7Journal14EntryViewModel_dateSource;
    swift_beginAccess();
    sub_1000082B4(v1 + v5, v2, &qword_100AE2AA0);
    v6 = *(v4 + 48);
    LODWORD(v3) = v6(v2, 1, v3);
    sub_100004F84(v2, &qword_100AE2AA0);
    if (v3 == 1)
    {
LABEL_3:
      v7 = *(v0 + 376);
      v8 = *(v0 + 384);
      v9 = *(v0 + 368);
      swift_allocObject();
      swift_weakInit();
      NSManagedObjectContext.performAndWait<A>(_:)();

      v10 = *(v8 + 48);
      if (v10(v9, 1, v7) == 1)
      {
        v11 = *(v0 + 368);
        v12 = *(v0 + 376);
        Date.init()();
        if (v10(v11, 1, v12) != 1)
        {
          sub_100004F84(*(v0 + 368), &unk_100AD4790);
        }
      }

      else
      {
        (*(*(v0 + 384) + 32))(*(v0 + 400), *(v0 + 368), *(v0 + 376));
      }

      v21 = *(v0 + 672);
      (*(*(v0 + 416) + 104))(*(v0 + 424), enum case for EntryDateSource.creation(_:), *(v0 + 408));

      v22 = swift_task_alloc();
      *(v0 + 1000) = v22;
      *v22 = v0;
      v22[1] = sub_1004F6A8C;
      v23 = *(v0 + 424);
      v24 = *(v0 + 400);

      return sub_10078281C(v21, &protocol witness table for MainActor, v24, v23);
    }

    v13 = *(v0 + 456);
    v15 = *(v0 + 432);
    v14 = *(v0 + 440);
    v16 = *(v0 + 408);
    v17 = *(v0 + 416);
    (*(v17 + 104))(v13, enum case for EntryDateSource.moment(_:), v16);
    (*(v17 + 56))(v13, 0, 1, v16);
    v18 = v1 + v5;
    v19 = *(v15 + 48);
    sub_1000082B4(v18, v14, &qword_100AE2AA0);
    sub_1000082B4(v13, v14 + v19, &qword_100AE2AA0);
    if (v6(v14, 1, v16) == 1)
    {
      v20 = *(v0 + 408);
      sub_100004F84(*(v0 + 456), &qword_100AE2AA0);
      if (v6(v14 + v19, 1, v20) == 1)
      {
        sub_100004F84(*(v0 + 440), &qword_100AE2AA0);
        goto LABEL_3;
      }

      goto LABEL_15;
    }

    v26 = *(v0 + 408);
    sub_1000082B4(*(v0 + 440), *(v0 + 448), &qword_100AE2AA0);
    v27 = v6(v14 + v19, 1, v26);
    v28 = *(v0 + 448);
    v29 = *(v0 + 456);
    if (v27 == 1)
    {
      v30 = *(v0 + 408);
      v31 = *(v0 + 416);
      sub_100004F84(*(v0 + 456), &qword_100AE2AA0);
      (*(v31 + 8))(v28, v30);
LABEL_15:
      sub_100004F84(*(v0 + 440), &qword_100AE36E8);
      goto LABEL_16;
    }

    v36 = *(v0 + 440);
    v38 = *(v0 + 416);
    v37 = *(v0 + 424);
    v39 = *(v0 + 408);
    (*(v38 + 32))(v37, v14 + v19, v39);
    sub_1004F91A4(&qword_100AE36F0, &type metadata accessor for EntryDateSource);
    v40 = dispatch thunk of static Equatable.== infix(_:_:)();
    v41 = *(v38 + 8);
    v41(v37, v39);
    sub_100004F84(v29, &qword_100AE2AA0);
    v41(v28, v39);
    sub_100004F84(v36, &qword_100AE2AA0);
    if (v40)
    {
      goto LABEL_3;
    }
  }

LABEL_16:
  v32 = *(v0 + 672);

  if (v32)
  {
    swift_getObjectType();
    v33 = dispatch thunk of Actor.unownedExecutor.getter();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  *(v0 + 1016) = v35;
  *(v0 + 1008) = v33;

  return _swift_task_switch(sub_1004F6D84, v33, v35);
}

uint64_t sub_1004F6A8C()
{
  v1 = *v0;
  v2 = *(*v0 + 424);
  v3 = *(*v0 + 416);
  v4 = *(*v0 + 408);
  v5 = *(*v0 + 400);
  v6 = *(*v0 + 384);
  v7 = *(*v0 + 376);

  (*(v3 + 8))(v2, v4);
  (*(v6 + 8))(v5, v7);
  v8 = *(v1 + 688);
  v9 = *(v1 + 680);

  return _swift_task_switch(sub_1004F6CBC, v9, v8);
}

uint64_t sub_1004F6CBC()
{
  v1 = v0[84];

  if (v1)
  {
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 0;
  }

  v0[127] = v4;
  v0[126] = v2;

  return _swift_task_switch(sub_1004F6D84, v2, v4);
}

uint64_t sub_1004F6D84()
{
  v1 = *(*(v0 + 696) + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  *(v0 + 1024) = v1;
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 1032) = v2;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_20:

    v20 = *(v0 + 688);
    v21 = *(v0 + 680);

    return _swift_task_switch(sub_1004F7060, v21, v20);
  }

LABEL_19:
  v19 = _CocoaArrayWrapper.endIndex.getter();
  *(v0 + 1032) = v19;
  if (!v19)
  {
    goto LABEL_20;
  }

LABEL_3:
  *(v0 + 1104) = enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:);

  for (i = 0; ; i = *(v0 + 1048))
  {
    v4 = *(v0 + 1024);
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v5 = *(v4 + 8 * i + 32);
    }

    *(v0 + 1040) = v5;
    v6 = __OFADD__(i, 1);
    v7 = i + 1;
    *(v0 + 1048) = v7;
    if (v6)
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v8 = *&v5[OBJC_IVAR____TtC7Journal5Asset_context];
    *(v0 + 1056) = v8;
    if (v8)
    {
      v9 = *&v5[OBJC_IVAR____TtC7Journal5Asset_assetMO];
      *(v0 + 1064) = v9;
      if (v9)
      {
        break;
      }
    }

    v10 = *(v0 + 1032);

    if (v7 == v10)
    {

      goto LABEL_20;
    }
  }

  v11 = *(v0 + 1104);
  v13 = *(v0 + 344);
  v12 = *(v0 + 352);
  v14 = *(v0 + 336);
  v15 = swift_allocObject();
  *(v0 + 1072) = v15;
  *(v15 + 16) = v9;
  *(v15 + 24) = 0;
  (*(v13 + 104))(v12, v11, v14);
  v16 = v9;
  v8;
  v17 = swift_task_alloc();
  *(v0 + 1080) = v17;
  *v17 = v0;
  v17[1] = sub_1004F71E8;
  v18 = *(v0 + 352);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v17, v18, sub_1004F9184, v15, &type metadata for () + 8);
}

uint64_t sub_1004F7060()
{
  if (sub_10005AAB0(1) & 1) != 0 || (sub_10005AAB0(16))
  {
    v1 = v0[84];

    v2 = swift_task_alloc();
    v0[136] = v2;
    *v2 = v0;
    v2[1] = sub_1004F7610;

    return sub_10077E5EC(v1, &protocol witness table for MainActor);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[137] = v4;
    *v4 = v0;
    v4[1] = sub_1004F7B10;

    return sub_1004F7E48(1);
  }
}

uint64_t sub_1004F71E8()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[43] + 8))(v2[44], v2[42]);

    v4 = v2[127];
    v5 = v2[126];

    return _swift_task_switch(sub_1004F7384, v5, v4);
  }
}

uint64_t sub_1004F7384()
{
  v1 = *(v0 + 1056);

  v2 = *(v0 + 1048);
  v3 = *(v0 + 1032);

  if (v2 == v3)
  {
LABEL_2:

    v4 = *(v0 + 688);
    v5 = *(v0 + 680);

    return _swift_task_switch(sub_1004F7060, v5, v4);
  }

  else
  {
    while (1)
    {
      v7 = *(v0 + 1048);
      v8 = *(v0 + 1024);
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v8 + 8 * v7 + 32);
      }

      *(v0 + 1040) = v9;
      v10 = __OFADD__(v7, 1);
      v11 = v7 + 1;
      *(v0 + 1048) = v11;
      if (v10)
      {
        __break(1u);
LABEL_18:
        __break(1u);
      }

      v12 = *&v9[OBJC_IVAR____TtC7Journal5Asset_context];
      *(v0 + 1056) = v12;
      if (v12)
      {
        v13 = *&v9[OBJC_IVAR____TtC7Journal5Asset_assetMO];
        *(v0 + 1064) = v13;
        if (v13)
        {
          break;
        }
      }

      v6 = *(v0 + 1032);

      if (v11 == v6)
      {
        goto LABEL_2;
      }
    }

    v14 = *(v0 + 1104);
    v16 = *(v0 + 344);
    v15 = *(v0 + 352);
    v17 = *(v0 + 336);
    v18 = swift_allocObject();
    *(v0 + 1072) = v18;
    *(v18 + 16) = v13;
    *(v18 + 24) = 0;
    (*(v16 + 104))(v15, v14, v17);
    v19 = v13;
    v12;
    v20 = swift_task_alloc();
    *(v0 + 1080) = v20;
    *v20 = v0;
    v20[1] = sub_1004F71E8;
    v21 = *(v0 + 352);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v20, v21, sub_1004F9184, v18, &type metadata for () + 8);
  }
}

uint64_t sub_1004F7610()
{
  v1 = *v0;

  v2 = *(v1 + 688);
  v3 = *(v1 + 680);

  return _swift_task_switch(sub_1004F7780, v3, v2);
}

uint64_t sub_1004F7780()
{

  type metadata accessor for AssetPostprocessingOperation();
  sub_10003CC9C();
  if (qword_100AD0140 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = v0[39];
  v4 = v0[36];
  v3 = v0[37];
  v5 = sub_1000F24EC(&unk_100AD57F8);
  sub_10000617C(v5, qword_100B2FE80);
  Tips.Event.sendDonation<>(_:)();
  v6 = OBJC_IVAR____TtC7Journal20CanvasViewController_initialJournalState;
  swift_beginAccess();
  sub_1000082B4(v4 + v6, v3, &unk_100AEBE00);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100004F84(v0[37], &unk_100AEBE00);
  }

  else
  {
    sub_1004F9120(v0[37], v0[41]);
    v7 = sub_1006664F0();
    if (v8)
    {
      v9 = v0[41];
    }

    else
    {
      v10 = v0[87];
      v12 = v0[48];
      v11 = v0[49];
      v25 = v0[47];
      v26 = v7;
      v14 = v0[40];
      v13 = v0[41];
      v15 = v0[38];
      static Date.now.getter();
      v16 = sub_100081D68();
      if (v17)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      if (v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = 0xE000000000000000;
      }

      v20 = sub_1001D7928(v10);
      v21 = *(v10 + 40);
      (*(v12 + 32))(v14, v11, v25);
      v22 = (v14 + v15[5]);
      *v22 = v18;
      v22[1] = v19;
      *(v14 + v15[6]) = v20;
      *(v14 + v15[7]) = v21;
      sub_1001D6F90(v13, v14, v26);
      sub_1004163FC(v14);
      v9 = v13;
    }

    sub_1004163FC(v9);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1004F7B10()
{
  v1 = *v0;

  v2 = *(v1 + 688);
  v3 = *(v1 + 680);

  return _swift_task_switch(sub_1004F7C64, v3, v2);
}

uint64_t sub_1004F7C64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004F7E48(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 241) = a1;
  v3 = type metadata accessor for JournalFeatureFlags();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v2 + 48) = v4;
  *(v2 + 56) = *(v4 - 8);
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  v5 = type metadata accessor for Date();
  *(v2 + 88) = v5;
  *(v2 + 96) = *(v5 - 8);
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = type metadata accessor for UserEngagement.StateSnapshot();
  *(v2 + 120) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 128) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 136) = v7;
  *(v2 + 144) = v6;

  return _swift_task_switch(sub_1004F8040, v7, v6);
}

uint64_t sub_1004F8040()
{
  *(v0 + 152) = *(*(v0 + 16) + 24);
  NSManagedObjectContext.performAndWait<A>(_:)();
  if (*(v0 + 240))
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v4 = *(v0 + 112);
    v3 = *(v0 + 120);
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);
    v7 = *(v0 + 88);
    v8 = *(v0 + 16);
    v27 = *(v0 + 241);
    static Date.now.getter();
    v9 = sub_100081D68();
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    v13 = sub_1001D7928(v8);
    v14 = *(v8 + 40);
    (*(v6 + 32))(v3, v5, v7);
    v15 = (v3 + v4[5]);
    *v15 = v11;
    v15[1] = v12;
    *(v3 + v4[6]) = v13;
    *(v3 + v4[7]) = v14;
    sub_1001D6F90(v3, v3, 3);
    v16 = *(v0 + 128);
    if (v27 == 1)
    {

      if (v16)
      {
        swift_getObjectType();
        v17 = dispatch thunk of Actor.unownedExecutor.getter();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      *(v0 + 160) = v17;
      *(v0 + 168) = v19;
      v26 = sub_1004F833C;
    }

    else
    {
      v21 = *(v0 + 32);
      v20 = *(v0 + 40);
      v22 = *(v0 + 24);
      (*(v21 + 104))(v20, enum case for JournalFeatureFlags.recentlyDeleted(_:), v22);
      v23 = JournalFeatureFlags.isEnabled.getter();
      (*(v21 + 8))(v20, v22);

      if (v23)
      {
        if (v16)
        {
          swift_getObjectType();
          v17 = dispatch thunk of Actor.unownedExecutor.getter();
          v19 = v24;
        }

        else
        {
          v17 = 0;
          v19 = 0;
        }

        *(v0 + 184) = v17;
        *(v0 + 192) = v19;
        v26 = sub_1004F85E4;
      }

      else
      {
        if (v16)
        {
          swift_getObjectType();
          v17 = dispatch thunk of Actor.unownedExecutor.getter();
          v19 = v25;
        }

        else
        {
          v17 = 0;
          v19 = 0;
        }

        *(v0 + 208) = v17;
        *(v0 + 216) = v19;
        v26 = sub_1004F8828;
      }
    }

    return _swift_task_switch(v26, v17, v19);
  }
}

uint64_t sub_1004F833C()
{
  (*(v0[7] + 104))(v0[10], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[6]);

  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_1004F842C;
  v2 = v0[10];
  v3 = v0[2];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v2, sub_1004F92B0, v3, &type metadata for () + 8);
}

uint64_t sub_1004F842C()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[7] + 8))(v2[10], v2[6]);

    v4 = v2[20];
    v5 = v2[21];

    return _swift_task_switch(sub_1004F8580, v4, v5);
  }
}

uint64_t sub_1004F8580()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return _swift_task_switch(sub_1004F92C8, v1, v2);
}

uint64_t sub_1004F85E4()
{
  (*(v0[7] + 104))(v0[9], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[6]);

  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_1004F86D4;
  v2 = v0[9];
  v3 = v0[2];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v2, sub_100318E5C, v3, &type metadata for () + 8);
}

uint64_t sub_1004F86D4()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[7] + 8))(v2[9], v2[6]);

    v4 = v2[23];
    v5 = v2[24];

    return _swift_task_switch(sub_1004F8580, v4, v5);
  }
}

uint64_t sub_1004F8828()
{
  (*(v0[7] + 104))(v0[8], enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v0[6]);

  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_1004F8918;
  v2 = v0[8];
  v3 = v0[2];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v1, v2, sub_100163FAC, v3, &type metadata for () + 8);
}

uint64_t sub_1004F8918()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    v4 = v2[26];
    v5 = v2[27];

    return _swift_task_switch(sub_1004F8A6C, v4, v5);
  }
}

uint64_t sub_1004F8A6C()
{

  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return _swift_task_switch(sub_1004F8AD0, v1, v2);
}

uint64_t sub_1004F8AD0()
{
  v1 = *(v0 + 128);

  v2 = swift_task_alloc();
  *(v0 + 232) = v2;
  *v2 = v0;
  v2[1] = sub_1004F8B84;

  return sub_10077E5EC(v1, &protocol witness table for MainActor);
}

uint64_t sub_1004F8B84()
{
  v1 = *v0;

  v2 = *(v1 + 144);
  v3 = *(v1 + 136);

  return _swift_task_switch(sub_1004F8CC8, v3, v2);
}

uint64_t sub_1004F8CC8()
{
  v1 = *(v0 + 120);

  sub_1004163FC(v1);

  v2 = *(v0 + 8);

  return v2();
}

char *sub_1004F8D80(char a1)
{
  v3 = sub_1000F24EC(&qword_100AD1420);
  __chkstk_darwin(v3 - 8);
  v5 = &v21 - v4;
  if (v1[16] == 1)
  {
  }

  else
  {
    v6 = *(v1 + 4);
    v7 = [v6 managedObjectContext];
    if (!v7)
    {
      v7 = [objc_allocWithZone(NSManagedObjectContext) initWithConcurrencyType:2];
    }

    type metadata accessor for EntryViewModel();
    swift_allocObject();
    v1 = sub_100035ADC(v6, 1, 0, v7);
  }

  if (v1[40] == 1)
  {
    if (*&v1[OBJC_IVAR____TtC7Journal14EntryViewModel_prompts])
    {
      v1[OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle] = 0;
      v8 = *(v1 + 3);
      v9 = swift_allocObject();
      swift_weakInit();
      v26 = sub_1004F9228;
      v27 = v9;
      aBlock = _NSConcreteStackBlock;
      v23 = 1107296256;
      v10 = &unk_100A70D40;
    }

    else
    {
      if (a1)
      {
        if (a1 == 1 && (v11 = OBJC_IVAR____TtC7Journal14EntryViewModel_bundleId, swift_beginAccess(), sub_1000082B4(&v1[v11], v5, &qword_100AD1420), v12 = type metadata accessor for UUID(), LODWORD(v11) = (*(*(v12 - 8) + 48))(v5, 1, v12), sub_100004F84(v5, &qword_100AD1420), v11 != 1) && (v13 = sub_1000819F8()) != 0)
        {
          v14 = v13;
          v15 = [v13 string];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v16 = String.count.getter();

          v17 = v16 > 0;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 1;
      }

      v1[OBJC_IVAR____TtC7Journal14EntryViewModel_showTitle] = v17;
      v8 = *(v1 + 3);
      v18 = swift_allocObject();
      swift_weakInit();
      v26 = sub_1003A9A34;
      v27 = v18;
      aBlock = _NSConcreteStackBlock;
      v23 = 1107296256;
      v10 = &unk_100A70D18;
    }

    v24 = sub_100006C7C;
    v25 = v10;
    v19 = _Block_copy(&aBlock);

    [v8 performBlock:v19];
    _Block_release(v19);
  }

  return v1;
}

uint64_t sub_1004F9120(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserEngagement.StateSnapshot();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004F91A4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004F922C()
{

  return sub_1004F45A8();
}

char *sub_1004F92CC()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = objc_allocWithZone(type metadata accessor for CustomJournalColorPickerCellContentView());
  v4 = v1;
  v5 = sub_1004F9794(v1, v2);
  sub_1004FA494();
  return v5;
}

id sub_1004F9328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1004FA24C(a1, *v2);
  *a2 = v4;
  *(a2 + 8) = v5 & 1;

  return v4;
}

Swift::Int sub_1004F9370()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v3 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1004F93F4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*v0)
  {
    Hasher._combine(_:)(1u);
    v3 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v2);
}

Swift::Int sub_1004F9464()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    v3 = v1;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1004F94E4(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a1)
  {
    if (v4)
    {
      sub_1000065A8(0, &qword_100AD4C70);
      v6 = v4;
      v7 = v2;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        return v3 ^ v5 ^ 1u;
      }
    }
  }

  else if (!v4)
  {
    return v3 ^ v5 ^ 1u;
  }

  return 0;
}

uint64_t sub_1004F9580(uint64_t a1)
{
  sub_100086C04(a1, v8);
  sub_1000F24EC(&qword_100AD3268);
  if (swift_dynamicCast())
  {
    v3 = &v1[OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_appliedConfiguration];
    v4 = *&v1[OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_appliedConfiguration];
    *v3 = v6;
    v3[8] = v7;

    [v1 setNeedsLayout];
  }

  return sub_10000BA7C(a1);
}

void (*sub_1004F9620(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_appliedConfiguration;
  v3[12] = v1;
  v3[13] = v5;
  v6 = v1 + v5;
  v7 = *v6;
  v8 = *(v6 + 8);
  v3[3] = &type metadata for CustomJournalColorPickerContentConfiguration;
  v3[4] = sub_1004FA1F8();
  *v4 = v7;
  *(v4 + 8) = v8;
  v9 = v7;
  return sub_1004F96C8;
}

void sub_1004F96C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_100086C04(*a1, v2 + 40);
    sub_1004F9580(v2 + 40);
  }

  else
  {
    sub_100086C04(*a1, v2 + 40);
    sub_1000F24EC(&qword_100AD3268);
    if (swift_dynamicCast())
    {
      v3 = *(v2 + 96);
      v4 = &v3[*(v2 + 104)];
      v5 = *(v2 + 88);
      v6 = *v4;
      *v4 = *(v2 + 80);
      v4[8] = v5;

      [v3 setNeedsLayout];
    }
  }

  sub_10000BA7C(v2);

  free(v2);
}

char *sub_1004F9794(void *a1, char a2)
{
  v5 = OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_rainbowWheelImageView;
  v6 = [objc_allocWithZone(UIImageView) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setContentMode:1];

  v7 = String._bridgeToObjectiveC()();
  v8 = [objc_opt_self() imageNamed:v7];

  [v6 setImage:v8];
  *&v2[v5] = v6;
  *&v2[OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_selectionRingMaskLayer] = 0;
  v9 = &v2[OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_appliedConfiguration];
  *v9 = a1;
  v9[8] = a2;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for CustomJournalColorPickerCellContentView();
  v10 = a1;
  v11 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_1004F994C();
  v12 = &v11[OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_appliedConfiguration];
  v13 = *&v11[OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_appliedConfiguration];
  *v12 = a1;
  v12[8] = a2;

  [v11 setNeedsLayout];
  return v11;
}

void sub_1004F994C()
{
  v1 = OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_rainbowWheelImageView;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_rainbowWheelImageView]];
  v2 = objc_opt_self();
  sub_1000F24EC(&unk_100AD4780);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100941830;
  v4 = [*&v0[v1] leadingAnchor];
  v5 = [v0 leadingAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];

  *(v3 + 32) = v6;
  v7 = [*&v0[v1] trailingAnchor];
  v8 = [v0 trailingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v3 + 40) = v9;
  v10 = [*&v0[v1] topAnchor];
  v11 = [v0 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v3 + 48) = v12;
  v13 = [*&v0[v1] bottomAnchor];
  v14 = [v0 bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v3 + 56) = v15;
  sub_1000065A8(0, &qword_100AD8000);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v2 activateConstraints:isa];
}

void sub_1004F9BBC()
{
  v27.receiver = v0;
  v27.super_class = type metadata accessor for CustomJournalColorPickerCellContentView();
  objc_msgSendSuper2(&v27, "layoutSubviews");
  if ((v0[OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_appliedConfiguration + 8] & 1) != 0 || *&v0[OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_appliedConfiguration])
  {
    v1 = OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_rainbowWheelImageView;
    v2 = [*&v0[OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_rainbowWheelImageView] layer];
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v31.origin.x = 0.0;
    v31.origin.y = 0.0;
    v31.size.width = 0.0;
    v31.size.height = 0.0;
    v28.origin.x = v4;
    v28.origin.y = v6;
    v28.size.width = v8;
    v28.size.height = v10;
    if (CGRectEqualToRect(v28, v31))
    {
      return;
    }

    v11 = objc_opt_self();
    v12 = [v11 bezierPathWithRoundedRect:v4 cornerRadius:{v6, v8, v10, 0.0}];
    v29.origin.x = v4;
    v29.origin.y = v6;
    v29.size.width = v8;
    v29.size.height = v10;
    v30 = CGRectInset(v29, 4.0, 4.0);
    v13 = [v11 bezierPathWithOvalInRect:{v30.origin.x, v30.origin.y, v30.size.width, v30.size.height}];
    [v12 appendPath:v13];
    [v12 setUsesEvenOddFillRule:1];
    v14 = [objc_allocWithZone(CAShapeLayer) init];
    v15 = OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_selectionRingMaskLayer;
    v16 = *&v0[OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_selectionRingMaskLayer];
    *&v0[OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_selectionRingMaskLayer] = v14;
    v17 = v14;

    if (v17)
    {
      v18 = [v12 CGPath];
      [v17 setPath:v18];
    }

    v19 = *&v0[v15];
    if (v19)
    {
      [v19 setFillRule:kCAFillRuleEvenOdd];
      v20 = *&v0[v15];
      if (v20)
      {
        v21 = objc_opt_self();
        v22 = v20;
        v23 = [v21 blackColor];
        v24 = [v23 CGColor];

        [v22 setFillColor:v24];
      }
    }

    v25 = [*&v0[v1] layer];
    [v25 setMask:*&v0[v15]];
  }

  else
  {
    v26 = [*&v0[OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_rainbowWheelImageView] layer];
    [v26 setMask:0];

    v25 = *&v0[OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_selectionRingMaskLayer];
    *&v0[OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_selectionRingMaskLayer] = 0;
  }
}

id sub_1004F9F48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomJournalColorPickerCellContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004F9FFC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 9))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1004FA058(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1004FA0C0()
{
  result = qword_100AE6AC0;
  if (!qword_100AE6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6AC0);
  }

  return result;
}

id sub_1004FA114@<X0>(uint64_t a1@<X8>)
{
  v5 = *(v1 + OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_appliedConfiguration);
  v3 = *(v1 + OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_appliedConfiguration + 8);
  *(a1 + 24) = &type metadata for CustomJournalColorPickerContentConfiguration;
  *(a1 + 32) = sub_1004FA1F8();
  *a1 = v5;
  *(a1 + 8) = v3;

  return v5;
}

void (*sub_1004FA188(void *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1004F9620(v2);
  return sub_100113D90;
}

unint64_t sub_1004FA1F8()
{
  result = qword_100AE9F60;
  if (!qword_100AE9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE9F60);
  }

  return result;
}

uint64_t sub_1004FA24C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AE6AC8);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-v5 - 8];
  v7 = type metadata accessor for UICellConfigurationState();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_100086C04(a1, v15);
  sub_1000F24EC(&qword_100AE6AD0);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    (*(v8 + 32))(v10, v6, v7);
    UICellConfigurationState.isSelected.getter();
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_1004FA42C(v6);
  }

  return a2;
}

uint64_t sub_1004FA42C(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AE6AC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1004FA494()
{
  result = qword_100AE6AD8;
  if (!qword_100AE6AD8)
  {
    type metadata accessor for CustomJournalColorPickerCellContentView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AE6AD8);
  }

  return result;
}

void sub_1004FA4E8()
{
  v1 = OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_rainbowWheelImageView;
  v2 = [objc_allocWithZone(UIImageView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v2 setContentMode:1];

  v3 = String._bridgeToObjectiveC()();
  v4 = [objc_opt_self() imageNamed:v3];

  [v2 setImage:v4];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR____TtC7Journal39CustomJournalColorPickerCellContentView_selectionRingMaskLayer) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_1004FA61C(void *a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005508();
  v10 = static OS_dispatch_queue.main.getter();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1004FC464;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A70E50;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000068D4(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_1004FA8F8(uint64_t a1, void *a2)
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v149 - v4;
  v6 = type metadata accessor for Date.FormatStyle.TimeStyle();
  v159 = *(v6 - 8);
  __chkstk_darwin(v6);
  v157 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for Date.FormatStyle.DateStyle();
  v156 = *(v158 - 8);
  __chkstk_darwin(v158);
  v155 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = _s23YearAdaptiveFormatStyleVMa();
  __chkstk_darwin(v153);
  v152 = &v149 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&unk_100AD4790);
  __chkstk_darwin(v10 - 8);
  v12 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v149 - v14;
  v167 = type metadata accessor for Date();
  v162 = *(v167 - 1);
  __chkstk_darwin(v167);
  v154 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v161 = &v149 - v18;
  v19 = sub_1000F24EC(&qword_100AE4280);
  __chkstk_darwin(v19 - 8);
  v21 = &v149 - v20;
  v22 = type metadata accessor for WorkoutIconAssetMetadata();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v25 = &v149 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v151 = v6;
  v160 = v5;
  v26 = [objc_allocWithZone(UIStackView) init];
  v27 = a2;
  v28 = [objc_allocWithZone(UIStackView) init];
  v163 = [objc_allocWithZone(UILabel) init];
  [v26 setUserInteractionEnabled:1];
  [v26 setAxis:1];
  [v26 setAlignment:3];
  v168 = v26;
  [v26 setSpacing:16.0];
  v164 = v27;
  sub_1006ACE94(v21);
  v29 = (*(v23 + 48))(v21, 1, v22);
  v165 = v28;
  if (v29 == 1)
  {
    sub_100004F84(v21, &qword_100AE4280);
    v30 = v163;
    goto LABEL_22;
  }

  (*(v23 + 32))(v25, v21, v22);
  v31 = WorkoutIconAssetMetadata.numberOfWorkouts.getter();
  if ((v32 & 1) == 0 && v31 != 1)
  {
    goto LABEL_11;
  }

  WorkoutIconAssetMetadata.startTime.getter();
  v33 = v162;
  v34 = *(v162 + 48);
  v35 = v167;
  if (v34(v15, 1, v167) == 1)
  {
    v12 = v15;
LABEL_10:
    sub_100004F84(v12, &unk_100AD4790);
    v28 = v165;
LABEL_11:
    started = WorkoutIconAssetMetadata.groupWorkoutStartDates.getter();
    if (started)
    {
      v38 = started;
      v39 = WorkoutIconAssetMetadata.groupWorkoutEndDates.getter();
      if (v39)
      {
        sub_1004932CC(v38, v39, 0);
        v41 = v40;

        if (v41)
        {
          v42 = String._bridgeToObjectiveC()();
        }

        else
        {
          v42 = 0;
        }

        v30 = v163;
        [v163 setText:v42];

        (*(v23 + 8))(v25, v22);
      }

      else
      {
        (*(v23 + 8))(v25, v22);

        v30 = v163;
      }
    }

    else
    {
      (*(v23 + 8))(v25, v22);
      v30 = v163;
    }

    goto LABEL_22;
  }

  v150 = *(v33 + 32);
  (v150)(v161, v15, v35);
  WorkoutIconAssetMetadata.endTime.getter();
  v36 = v167;
  if (v34(v12, 1, v167) == 1)
  {
    (*(v162 + 8))(v161, v36);
    goto LABEL_10;
  }

  v43 = v154;
  v150();
  if (qword_100AD04E0 != -1)
  {
    swift_once();
  }

  v149 = *(&xmmword_100B305A0 + 1);
  v150 = xmmword_100B305A0;
  sub_1000F24EC(&unk_100AD5B10);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100940050;
  v45 = v152;
  static Date.FormatStyle.TimeStyle.shortened.getter();
  static FormatStyleCapitalizationContext.standalone.getter();
  static Locale.autoupdatingCurrent.getter();
  static Calendar.autoupdatingCurrent.getter();
  static TimeZone.autoupdatingCurrent.getter();
  static Date.now.getter();
  sub_1000068D4(&qword_100AD1F88, _s23YearAdaptiveFormatStyleVMa);
  Date.formatted<A>(_:)();
  sub_1000FBBCC(v45);
  v47 = *(&v169[0] + 1);
  v46 = *&v169[0];
  *(v44 + 56) = &type metadata for String;
  v48 = sub_100031B20();
  *(v44 + 64) = v48;
  *(v44 + 32) = v46;
  *(v44 + 40) = v47;
  v49 = v155;
  static Date.FormatStyle.DateStyle.omitted.getter();
  v50 = v157;
  static Date.FormatStyle.TimeStyle.shortened.getter();
  v51 = Date.formatted(date:time:)();
  v53 = v52;
  (*(v159 + 8))(v50, v151);
  (*(v156 + 8))(v49, v158);
  *(v44 + 96) = &type metadata for String;
  *(v44 + 104) = v48;
  *(v44 + 72) = v51;
  *(v44 + 80) = v53;
  static String.localizedStringWithFormat(_:_:)();

  v54 = String._bridgeToObjectiveC()();

  v30 = v163;
  [v163 setText:v54];

  v55 = *(v162 + 8);
  v56 = v167;
  v55(v43, v167);
  v55(v161, v56);
  (*(v23 + 8))(v25, v22);
  v28 = v165;
LABEL_22:
  v167 = v30;
  [v28 setAxis:1];
  [v28 setAlignment:3];
  [v28 setUserInteractionEnabled:1];
  [v28 setSpacing:2.0];
  v57 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD03E0 != -1)
  {
    swift_once();
  }

  v163 = qword_100B303D8;
  [v57 setFont:?];
  v58 = objc_opt_self();
  v59 = [v58 secondaryLabelColor];
  [v57 setTextColor:v59];

  [v57 setAdjustsFontSizeToFitWidth:1];
  [v57 setMinimumScaleFactor:0.5];
  [v57 setAdjustsFontForContentSizeCategory:1];
  [v57 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v60 = [objc_allocWithZone(UILabel) init];
  if (qword_100AD0378 != -1)
  {
    swift_once();
  }

  [v60 setFont:qword_100B30370];
  v61 = [v58 labelColor];
  [v60 setTextColor:v61];

  [v60 setAdjustsFontSizeToFitWidth:1];
  [v60 setMinimumScaleFactor:0.5];
  [v60 setAdjustsFontForContentSizeCategory:1];
  [v60 setNumberOfLines:0];
  [v60 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  v62 = v167;
  [v62 setFont:v163];
  v63 = [v58 secondaryLabelColor];
  [v62 setTextColor:v63];

  [v62 setAdjustsFontForContentSizeCategory:1];
  [v62 setAdjustsFontSizeToFitWidth:1];
  [v62 setMinimumScaleFactor:0.5];
  [v62 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [v62 setLineBreakMode:0];
  [v62 setNumberOfLines:0];
  [v62 setTextAlignment:1];
  v64 = v165;
  [v165 addArrangedSubview:v57];
  [v64 addArrangedSubview:v60];
  [v64 addArrangedSubview:v62];
  [v64 setCustomSpacing:v57 afterView:6.0];
  v167 = v62;
  [v64 setCustomSpacing:v62 afterView:12.0];
  v65 = [v57 superview];
  if (v65)
  {
    v66 = v65;
    [v57 setTranslatesAutoresizingMaskIntoConstraints:0];
    v67 = [v66 centerXAnchor];
    v68 = [v57 centerXAnchor];
    v69 = [v68 constraintEqualToAnchor:v67];

    [v69 setConstant:0.0];
    [v69 setActive:1];
  }

  v70 = [v60 superview];
  if (v70)
  {
    v71 = v70;
    [v60 setTranslatesAutoresizingMaskIntoConstraints:0];
    v72 = [v71 centerXAnchor];
    v73 = [v60 centerXAnchor];
    v74 = [v73 constraintEqualToAnchor:v72];

    [v74 setConstant:0.0];
    [v74 setActive:1];
  }

  v75 = [v167 superview];
  if (v75)
  {
    v76 = v75;
    v77 = v167;
    [v167 setTranslatesAutoresizingMaskIntoConstraints:0];
    v78 = [v76 centerXAnchor];
    v79 = [v77 centerXAnchor];
    v80 = [v79 constraintEqualToAnchor:v78];

    [v80 setConstant:0.0];
    [v80 setActive:1];

    v60 = v78;
  }

  else
  {
    v76 = v167;
  }

  v81 = OBJC_IVAR____TtC7Journal21FullScreenWorkoutView_workoutActivityView;
  v82 = *(Strong + OBJC_IVAR____TtC7Journal21FullScreenWorkoutView_workoutActivityView);
  v83 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  v84 = v82[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v82[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 7;
  v85 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (v82[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1)
  {
    v86 = v82;
    v87 = 7;
LABEL_41:
    v90 = *&v82[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
    v91 = *((swift_isaMask & *v90) + 0x58);
    v92 = v90;
    v91(7, v87);

    v93 = type metadata accessor for TaskPriority();
    v94 = v160;
    (*(*(v93 - 8) + 56))(v160, 1, 1, v93);
    v95 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v96 = static MainActor.shared.getter();
    v97 = swift_allocObject();
    v97[2] = v96;
    v97[3] = &protocol witness table for MainActor;
    v97[4] = v95;

    sub_1003E9628(0, 0, v94, &unk_10095F870, v97);

    v82[v85] = 1;

    goto LABEL_42;
  }

  if (v84 > 3 && v84 > 6)
  {

    goto LABEL_42;
  }

  v88 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v89 = v82;

  if ((v88 & 1) == 0)
  {
    v87 = v82[v83];
    goto LABEL_41;
  }

LABEL_42:
  v98 = Strong;
  v99 = *(Strong + v81);
  v100 = *&v99[OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutAsset];
  v101 = v164;
  *&v99[OBJC_IVAR____TtC7Journal23WorkoutActivityGridView_workoutAsset] = v164;
  v102 = v99;
  v103 = v101;

  sub_1000A0344();
  v104 = [*&v98[v81] layer];
  if (qword_100AD0A18 != -1)
  {
    swift_once();
  }

  v169[0] = xmmword_100B30F28;
  v169[1] = *&qword_100B30F38;
  v169[2] = xmmword_100B30F48;
  v169[3] = *&qword_100B30F58;
  [v104 setCornerRadii:v169];

  v105 = *&v98[v81];
  sub_100760CA8(v105, 1);

  [v168 addArrangedSubview:*&v98[v81]];
  v106 = *&v98[v81];
  v107 = [v106 superview];
  if (v107)
  {
    v108 = v107;
    [v106 setTranslatesAutoresizingMaskIntoConstraints:0];
    v109 = [v106 leadingAnchor];
    v110 = [v108 leadingAnchor];
    v111 = [v109 constraintEqualToAnchor:v110];

    [v111 setConstant:20.0];
    if (v111)
    {
      [v111 setActive:1];
    }

    v98 = Strong;
  }

  else
  {
    v111 = 0;
    v108 = v106;
  }

  v112 = *&v98[v81];
  v113 = [v112 superview];
  if (v113)
  {
    v114 = v113;
    [v112 setTranslatesAutoresizingMaskIntoConstraints:0];
    v115 = [v112 trailingAnchor];
    v116 = [v114 trailingAnchor];
    v117 = [v115 constraintEqualToAnchor:v116];

    [v117 setConstant:-20.0];
    if (v117)
    {
      [v117 setActive:1];
    }

    v98 = Strong;
  }

  else
  {
    v117 = 0;
    v114 = v112;
  }

  v118 = *&v98[v81];
  [v118 setTranslatesAutoresizingMaskIntoConstraints:0];
  v119 = [v118 heightAnchor];
  v120 = [v118 widthAnchor];
  v121 = [v119 constraintEqualToAnchor:v120 multiplier:1.0];

  [v121 setActive:1];
  v122 = v168;
  v123 = v165;
  [v168 addArrangedSubview:v165];
  v124 = [v123 superview];
  if (v124)
  {
    v125 = v124;
    [v123 setTranslatesAutoresizingMaskIntoConstraints:0];
    v126 = [v123 leadingAnchor];
    v127 = [v125 leadingAnchor];
    v128 = [v126 constraintEqualToAnchor:v127];

    v122 = v168;
    [v128 setConstant:32.0];
    [v128 setActive:1];
  }

  v129 = [v123 superview];
  if (v129)
  {
    v130 = v129;
    [v123 setTranslatesAutoresizingMaskIntoConstraints:0];
    v131 = [v123 trailingAnchor];
    v132 = [v130 trailingAnchor];
    v133 = [v131 constraintEqualToAnchor:v132];

    v122 = v168;
    [v133 setConstant:-32.0];
    [v133 setActive:1];
  }

  [v98 addSubview:v122];
  v134 = [v122 superview];
  if (v134)
  {
    v135 = v134;
    [v122 setTranslatesAutoresizingMaskIntoConstraints:0];
    v136 = [v122 centerYAnchor];
    v137 = [v135 centerYAnchor];
    v138 = [v136 constraintEqualToAnchor:v137];

    v122 = v168;
    [v138 setConstant:0.0];
    [v138 setActive:1];
  }

  v139 = [v122 superview];
  if (v139)
  {
    v140 = v139;
    [v122 setTranslatesAutoresizingMaskIntoConstraints:0];
    v141 = [v122 leadingAnchor];
    v142 = [v140 leadingAnchor];
    v143 = [v141 constraintEqualToAnchor:v142];

    v122 = v168;
    [v143 setConstant:0.0];
    [v143 setActive:1];
  }

  v144 = [v122 superview];
  if (v144)
  {
    v145 = v144;
    [v122 setTranslatesAutoresizingMaskIntoConstraints:0];
    v146 = [v122 trailingAnchor];
    v147 = [v145 trailingAnchor];
    v148 = [v146 constraintEqualToAnchor:v147];

    v122 = v168;
    [v148 setConstant:0.0];
    [v148 setActive:1];
  }

  [v98 layoutIfNeeded];
  [v122 layoutIfNeeded];
  [*&v98[v81] layoutIfNeeded];
}

id sub_1004FC2FC(void *a1)
{
  v3 = OBJC_IVAR____TtC7Journal21FullScreenWorkoutView_workoutActivityView;
  type metadata accessor for WorkoutActivityGridView();
  *&v1[v3] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC7Journal21FullScreenWorkoutView_workoutAsset] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for FullScreenWorkoutView();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1004FC3C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenWorkoutView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004FC46C()
{
  v72 = type metadata accessor for UUID();
  v1 = *(v72 - 8);
  __chkstk_darwin(v72);
  v3 = &v61 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_entryCollectionView);
  if (v4)
  {
    v76 = _swiftEmptyArrayStorage;
    v5 = v4;
    v6 = [v5 visibleCells];
    sub_1004FCD88();
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = v5;

    v75 = sub_1004FCE2C(v8, sub_1003E7998, sub_1006B4858);
    sub_1004FE6D8(&v75, v7);

    v9 = v75;
    v10 = &selRef_setSuggestedName_;
    [v7 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    [v7 adjustedContentInset];
    v21 = sub_10007BDE0(v12, v14, v16, v18, v19, v20);
    v23 = v22;
    v25 = v24;
    v27 = v26;
    if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
    {
      goto LABEL_52;
    }

    for (i = *(v9 + 16); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v29 = 0;
      v65 = v9 + 32;
      v66 = v9 & 0xC000000000000001;
      v69 = (v1 + 8);
      v70 = (v1 + 16);
      v30 = _swiftEmptyArrayStorage;
      v74 = _swiftEmptyArrayStorage;
      while (1)
      {
        while (1)
        {
          if (v66)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v29 >= *(v9 + 16))
            {
              __break(1u);

              __break(1u);
              return;
            }

            v31 = *(v65 + 8 * v29);
          }

          v32 = v31;
          v33 = __OFADD__(v29++, 1);
          if (v33)
          {
            goto LABEL_51;
          }

          type metadata accessor for JournalEntryCollectionViewCell();
          v34 = swift_dynamicCastClass();
          if (v34)
          {
            break;
          }

LABEL_40:

          if (v29 == i)
          {
            goto LABEL_47;
          }
        }

        v35 = v34;
        v32 = v32;
        [v35 v10[202]];
        [v7 convertPoint:v35 fromCoordinateSpace:?];
        v77.x = v36;
        v77.y = v37;
        v78.origin.x = v21;
        v78.origin.y = v23;
        v78.size.width = v25;
        v78.size.height = v27;
        if (!CGRectContainsPoint(v78, v77))
        {

          goto LABEL_40;
        }

        v71 = v32;
        v61 = v29;
        v62 = i;
        v64 = v9;
        v38 = sub_100584F94(0);
        v73 = v38;
        if (!(v38 >> 62))
        {
          v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v40 = v71;
          if (v39)
          {
            break;
          }

          goto LABEL_46;
        }

        v39 = _CocoaArrayWrapper.endIndex.getter();
        v40 = v71;
        if (v39)
        {
          break;
        }

LABEL_46:

LABEL_43:
        v9 = v64;
        v10 = &selRef_setSuggestedName_;
        i = v62;
        v29 = v61;
        if (v61 == v62)
        {
LABEL_47:

          v60 = v74;
          goto LABEL_54;
        }
      }

      v63 = v7;
      v7 = (v73 & 0xC000000000000001);
      v67 = v73 + 32;
      v68 = v73 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v33 = __OFSUB__(v39--, 1);
        if (v33)
        {
          break;
        }

        if (v7)
        {
          v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v39 & 0x8000000000000000) != 0)
          {
            goto LABEL_49;
          }

          if (v39 >= *(v68 + 16))
          {
            goto LABEL_50;
          }

          v41 = *(v67 + 8 * v39);
        }

        v42 = v41;
        v43 = *&v41[OBJC_IVAR____TtC7Journal14VideoAssetView_playerView];
        if (v43)
        {
          v44 = v41;
          v45 = v43;
          v46 = [v45 layer];
          objc_opt_self();
          v1 = swift_dynamicCastObjCClass();
          if (!v1)
          {
          }

          v10 = [v1 player];

          if (v10)
          {
            [(SEL *)v10 rate];
            v48 = v47;

            if (v48 > 0.0)
            {

              return;
            }
          }
        }

        else
        {
          v49 = v41;
        }

        sub_100815D10();
        sub_1000999CC();
        v50 = &v42[OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction];
        v51 = *&v42[OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction];
        *v50 = 0;
        *(v50 + 1) = 0;
        sub_100004DF8(v51);

        v9 = v42;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v74 = v76;
        v52 = *(v9 + OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset);
        v53 = v52;

        if (v52)
        {
          v54 = v72;
          (*v70)(v3, &v53[OBJC_IVAR____TtC7Journal5Asset_id], v72);
          v55 = UUID.uuidString.getter();
          v10 = v56;
          (*v69)(v3, v54);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_10009BCC8(0, *(v30 + 2) + 1, 1, v30);
          }

          v58 = *(v30 + 2);
          v57 = *(v30 + 3);
          v1 = (v58 + 1);
          if (v58 >= v57 >> 1)
          {
            v30 = sub_10009BCC8((v57 > 1), v58 + 1, 1, v30);
          }

          *(v30 + 2) = v1;
          v59 = &v30[16 * v58];
          *(v59 + 4) = v55;
          *(v59 + 5) = v10;
          v40 = v71;
          if (!v39)
          {
LABEL_42:

            v7 = v63;
            goto LABEL_43;
          }
        }

        else
        {

          if (!v39)
          {
            goto LABEL_42;
          }
        }
      }

      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      ;
    }

    v30 = _swiftEmptyArrayStorage;
    v60 = _swiftEmptyArrayStorage;
LABEL_54:
    sub_1001E15B8(v60, v30);
  }
}

uint64_t sub_1004FCB54(void *a1, uint64_t *a2, void *a3)
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v29 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v29 - v15;
  __chkstk_darwin(v14);
  v18 = &v29 - v17;
  v19 = *a2;
  v20 = [a3 indexPathForCell:*a1];
  if (!v20)
  {
    goto LABEL_5;
  }

  v30 = v10;
  v21 = v20;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = *(v7 + 32);
  v22(v18, v16, v6);
  v23 = [a3 indexPathForCell:v19];
  if (!v23)
  {
    (*(v7 + 8))(v18, v6);
LABEL_5:
    v26 = 0;
    return v26 & 1;
  }

  v24 = v30;
  v25 = v23;
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

  v22(v13, v24, v6);
  v26 = static IndexPath.< infix(_:_:)();
  v27 = *(v7 + 8);
  v27(v13, v6);
  v27(v18, v6);
  return v26 & 1;
}

unint64_t sub_1004FCD88()
{
  result = qword_100ADE560;
  if (!qword_100ADE560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100ADE560);
  }

  return result;
}

void *sub_1004FCE2C(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1004FCED0(void **a1, void **a2, id *a3, void **a4, void *a5)
{
  v90 = a5;
  v92 = a4;
  v87 = type metadata accessor for IndexPath();
  v8 = *(v87 - 8);
  v9 = __chkstk_darwin(v87);
  v80 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v79 = &v78 - v12;
  v13 = __chkstk_darwin(v11);
  v84 = &v78 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v78 - v16;
  v18 = __chkstk_darwin(v15);
  v81 = &v78 - v19;
  v20 = __chkstk_darwin(v18);
  v83 = (&v78 - v21);
  v22 = __chkstk_darwin(v20);
  v85 = &v78 - v23;
  __chkstk_darwin(v22);
  v25 = &v78 - v24;
  v91 = a1;
  v26 = a2 - a1;
  v27 = v26 / 8;
  v28 = a3;
  v29 = a3 - a2;
  v30 = v29 / 8;
  if (v26 / 8 >= v29 / 8)
  {
    if (v92 != a2 || &a2[v30] <= v92)
    {
      memmove(v92, a2, 8 * v30);
    }

    v31 = &v92[v30];
    if (v29 < 8 || a2 <= v91)
    {
      goto LABEL_42;
    }

    v53 = v8;
    v54 = (v8 + 32);
    v81 = (v53 + 8);
    v82 = v17;
LABEL_26:
    v89 = a2;
    v55 = a2 - 1;
    --v28;
    v56 = v31;
    v83 = a2 - 1;
    while (1)
    {
      v57 = *--v56;
      v58 = *v55;
      v59 = v57;
      v60 = v58;
      v61 = [v90 indexPathForCell:v59];
      if (v61)
      {
        v88 = v31;
        v62 = v60;
        v63 = v84;
        v64 = v61;
        static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

        v65 = *v54;
        v66 = v82;
        v67 = v63;
        v60 = v62;
        v68 = v87;
        (*v54)(v82, v67, v87);
        v69 = [v90 indexPathForCell:v60];
        if (v69)
        {
          v70 = v69;
          v86 = v60;
          v71 = v80;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v72 = v28;
          v73 = v54;
          v74 = v79;
          v65(v79, v71, v68);
          LODWORD(v85) = static IndexPath.< infix(_:_:)();
          v75 = *v81;
          v76 = v74;
          v54 = v73;
          v28 = v72;
          (*v81)(v76, v68);
          v75(v66, v68);

          v31 = v88;
          v55 = v83;
          if (v85)
          {
            if (v28 + 1 != v89)
            {
              *v28 = *v83;
            }

            if (v31 <= v92 || (a2 = v55, v55 <= v91))
            {
              a2 = v55;
              goto LABEL_42;
            }

            goto LABEL_26;
          }

          goto LABEL_34;
        }

        (*v81)(v66, v68);
        v31 = v88;
        v55 = v83;
      }

LABEL_34:
      if (v28 + 1 != v31)
      {
        *v28 = *v56;
      }

      --v28;
      v31 = v56;
      if (v56 <= v92)
      {
        v31 = v56;
        a2 = v89;
        goto LABEL_42;
      }
    }
  }

  if (v92 != v91 || &v91[v27] <= v92)
  {
    memmove(v92, v91, 8 * v27);
  }

  v31 = &v92[v27];
  if (v26 >= 8 && a2 < v28)
  {
    v32 = a2;
    v33 = (v8 + 32);
    v84 = (v8 + 8);
    v88 = v31;
    while (1)
    {
      v89 = v32;
      v34 = *v92;
      v35 = *v32;
      v36 = v34;
      v37 = [v90 indexPathForCell:v35];
      if (!v37)
      {
        goto LABEL_14;
      }

      v38 = v85;
      v39 = v33;
      v40 = v37;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v41 = *v39;
      v42 = v87;
      (*v39)(v25, v38, v87);
      v43 = [v90 indexPathForCell:v36];
      if (!v43)
      {
        break;
      }

      v44 = v81;
      v45 = v42;
      v46 = v43;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v47 = v25;
      v48 = v83;
      v41(v83, v44, v45);
      LODWORD(v86) = static IndexPath.< infix(_:_:)();
      v49 = *v84;
      v50 = v48;
      v25 = v47;
      (*v84)(v50, v45);
      v51 = v45;
      v31 = v88;
      v49(v47, v51);

      v33 = v39;
      if ((v86 & 1) == 0)
      {
        goto LABEL_15;
      }

      v52 = v89;
      v32 = v89 + 1;
      if (v91 != v89)
      {
        goto LABEL_16;
      }

LABEL_17:
      ++v91;
      if (v92 >= v31 || v32 >= v28)
      {
        goto LABEL_19;
      }
    }

    (*v84)(v25, v42);
    v33 = v39;
LABEL_14:

LABEL_15:
    v52 = v92++;
    v32 = v89;
    if (v91 == v52)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v91 = *v52;
    goto LABEL_17;
  }

LABEL_19:
  a2 = v91;
LABEL_42:
  if (a2 != v92 || a2 >= (v92 + ((v31 - v92 + (v31 - v92 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v92, 8 * (v31 - v92));
  }

  return 1;
}

void sub_1004FD590(char **a1, void **a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v21 = a4;
  v22 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_14:
    v22 = sub_100204C44(v22);
  }

  v18 = v5;
  *v5 = v22;
  v8 = v22 + 16;
  v7 = *(v22 + 2);
  if (v7 < 2)
  {
LABEL_9:

    *v18 = v22;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v22[16 * v7];
      v11 = *v10;
      v12 = v8;
      v13 = &v8[16 * v7];
      v5 = *(v13 + 1);
      v24 = (v9 + 8 * *v10);
      v23 = (v9 + 8 * *v13);
      v14 = (v9 + 8 * v5);
      v15 = v21;
      sub_1004FCED0(v24, v23, v14, a2, v15);

      if (v4)
      {
        *v18 = v22;

        return;
      }

      if (v5 < v11)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v16 = *v12;
      if (v7 - 2 >= *v12)
      {
        goto LABEL_12;
      }

      *v10 = v11;
      *(v10 + 1) = v5;
      v17 = v16 - v7;
      if (v16 < v7)
      {
        goto LABEL_13;
      }

      v8 = v12;
      v7 = v16 - 1;
      memmove(v13, v13 + 16, 16 * v17);
      *v12 = v7;
      if (v7 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v18 = v22;
    __break(1u);
  }
}

void sub_1004FD730(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v162 = a4;
  v163 = a1;
  v9 = type metadata accessor for IndexPath();
  v10 = __chkstk_darwin(v9);
  v176 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v175 = &v160 - v13;
  v14 = __chkstk_darwin(v12);
  v177 = &v160 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v160 - v17;
  v19 = __chkstk_darwin(v16);
  v165 = &v160 - v20;
  v21 = __chkstk_darwin(v19);
  v164 = &v160 - v22;
  v23 = __chkstk_darwin(v21);
  v169 = &v160 - v24;
  v25 = __chkstk_darwin(v23);
  v189 = _swiftEmptyArrayStorage;
  v173 = a3;
  v28 = a3[1];
  v160 = a5;
  if (v28 < 1)
  {
    v151 = a5;
LABEL_105:
    v152 = *v163;
    if (!*v163)
    {
      goto LABEL_137;
    }

    v153 = v160;
    sub_1004FD590(&v189, v152, v173, v153);
    if (!v6)
    {

      goto LABEL_110;
    }

LABEL_108:
    v154 = v160;
LABEL_109:

LABEL_110:

    return;
  }

  v168 = &v160 - v27;
  v180 = (v26 + 32);
  v181 = v25;
  v179 = (v26 + 8);
  v29 = a5;
  v30 = 0;
  v31 = _swiftEmptyArrayStorage;
  v186 = v18;
  v182 = v29;
  while (1)
  {
    v32 = v30;
    v33 = v30 + 1;
    v167 = v31;
    v166 = v30;
    if (v30 + 1 >= v28)
    {
      ++v30;
      v63 = v162;
      goto LABEL_26;
    }

    v183 = v28;
    v34 = v18;
    v35 = v29;
    v36 = *v173;
    v37 = *(*v173 + 8 * v33);
    v38 = v32;
    v187 = *(*v173 + 8 * v32);
    v39 = v187;
    v188 = v37;
    v40 = v37;
    v41 = v39;
    LODWORD(v184) = sub_1004FCB54(&v188, &v187, v35);
    v161 = v6;
    if (v6)
    {

      v154 = v160;
      goto LABEL_109;
    }

    v42 = v38 + 2;
    v32 = v38;
    if (v38 + 2 >= v183)
    {
      v30 = v38 + 2;
      v18 = v34;
      goto LABEL_22;
    }

    v43 = (v36 + 8 * v38 + 16);
    v18 = v34;
    v44 = v183;
    while (1)
    {
      v30 = v42;
      v51 = *(v43 - 1);
      v52 = *v43;
      v53 = v51;
      v54 = v182;
      v55 = [v182 indexPathForCell:v52];
      if (!v55)
      {

        if (v184)
        {
LABEL_16:
          v33 = v30 - 1;
          v32 = v166;
          goto LABEL_23;
        }

        goto LABEL_10;
      }

      v174 = v30;
      v56 = v169;
      v57 = v55;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v58 = *v180;
      v59 = v168;
      v60 = v56;
      v61 = v181;
      (*v180)(v168, v60, v181);
      v185 = v53;
      v62 = [v54 indexPathForCell:v53];
      if (!v62)
      {
        (*v179)(v59, v61);

        v18 = v186;
        v30 = v174;
        v44 = v183;
        if (v184)
        {
          goto LABEL_16;
        }

        goto LABEL_10;
      }

      v45 = v165;
      v46 = v62;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v47 = v164;
      v58(v164, v45, v61);
      LOBYTE(v46) = static IndexPath.< infix(_:_:)();
      v48 = *v179;
      v49 = v47;
      v31 = v167;
      (*v179)(v49, v61);
      v48(v59, v61);

      v50 = v184 ^ v46;
      v18 = v186;
      v30 = v174;
      v44 = v183;
      if (v50)
      {
        break;
      }

LABEL_10:
      v42 = v30 + 1;
      ++v43;
      if (v44 == (v30 + 1))
      {
        v33 = v30;
        v30 = v44;
        goto LABEL_21;
      }
    }

    v33 = v174 - 1;
LABEL_21:
    v32 = v166;
LABEL_22:
    if (v184)
    {
LABEL_23:
      if (v30 < v32)
      {
        goto LABEL_130;
      }

      if (v32 <= v33)
      {
        v91 = 8 * v30 - 8;
        v92 = 8 * v32;
        v93 = v30;
        v94 = v32;
        v63 = v162;
        v6 = v161;
        while (1)
        {
          if (v94 != --v93)
          {
            v96 = *v173;
            if (!*v173)
            {
              goto LABEL_135;
            }

            v95 = *(v96 + v92);
            *(v96 + v92) = *(v96 + v91);
            *(v96 + v91) = v95;
          }

          ++v94;
          v91 -= 8;
          v92 += 8;
          if (v94 >= v93)
          {
            goto LABEL_26;
          }
        }
      }
    }

    v63 = v162;
    v6 = v161;
LABEL_26:
    v64 = v173[1];
    if (v30 < v64)
    {
      if (__OFSUB__(v30, v32))
      {
        goto LABEL_129;
      }

      if (v30 - v32 < v63)
      {
        break;
      }
    }

LABEL_53:
    if (v30 < v32)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_1003E4B80(0, *(v31 + 2) + 1, 1, v31);
    }

    v98 = *(v31 + 2);
    v97 = *(v31 + 3);
    v99 = v98 + 1;
    if (v98 >= v97 >> 1)
    {
      v31 = sub_1003E4B80((v97 > 1), v98 + 1, 1, v31);
    }

    *(v31 + 2) = v99;
    v100 = v31 + 32;
    v101 = &v31[16 * v98 + 32];
    *v101 = v166;
    *(v101 + 1) = v30;
    v189 = v31;
    v183 = *v163;
    if (!v183)
    {
      goto LABEL_136;
    }

    if (v98)
    {
      v102 = v6;
      v174 = v30;
      v178 = (v31 + 32);
      while (1)
      {
        v103 = v99 - 1;
        if (v99 >= 4)
        {
          break;
        }

        if (v99 == 3)
        {
          v104 = *(v31 + 4);
          v105 = *(v31 + 5);
          v114 = __OFSUB__(v105, v104);
          v106 = v105 - v104;
          v107 = v114;
LABEL_74:
          if (v107)
          {
            goto LABEL_119;
          }

          v120 = &v31[16 * v99];
          v122 = *v120;
          v121 = *(v120 + 1);
          v123 = __OFSUB__(v121, v122);
          v124 = v121 - v122;
          v125 = v123;
          if (v123)
          {
            goto LABEL_122;
          }

          v126 = &v100[16 * v103];
          v128 = *v126;
          v127 = *(v126 + 1);
          v114 = __OFSUB__(v127, v128);
          v129 = v127 - v128;
          if (v114)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v124, v129))
          {
            goto LABEL_126;
          }

          if (v124 + v129 >= v106)
          {
            if (v106 < v129)
            {
              v103 = v99 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v130 = &v31[16 * v99];
        v132 = *v130;
        v131 = *(v130 + 1);
        v114 = __OFSUB__(v131, v132);
        v124 = v131 - v132;
        v125 = v114;
LABEL_88:
        if (v125)
        {
          goto LABEL_121;
        }

        v133 = &v100[16 * v103];
        v135 = *v133;
        v134 = *(v133 + 1);
        v114 = __OFSUB__(v134, v135);
        v136 = v134 - v135;
        if (v114)
        {
          goto LABEL_124;
        }

        if (v136 < v124)
        {
          goto LABEL_3;
        }

LABEL_95:
        if (v103 - 1 >= v99)
        {
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
          goto LABEL_132;
        }

        v141 = *v173;
        if (!*v173)
        {
          goto LABEL_134;
        }

        v142 = &v100[16 * v103 - 16];
        v143 = *v142;
        v144 = v103;
        v145 = &v100[16 * v103];
        v146 = *(v145 + 1);
        v147 = (v141 + 8 * *v142);
        v148 = (v141 + 8 * *v145);
        v184 = (v141 + 8 * v146);
        v185 = v148;
        v149 = v182;
        sub_1004FCED0(v147, v185, v184, v183, v149);
        if (v102)
        {

          v189 = v31;
          goto LABEL_108;
        }

        if (v146 < v143)
        {
          goto LABEL_114;
        }

        v150 = *(v31 + 2);
        if (v144 > v150)
        {
          goto LABEL_115;
        }

        *v142 = v143;
        *(v142 + 1) = v146;
        if (v144 >= v150)
        {
          goto LABEL_116;
        }

        v99 = v150 - 1;
        memmove(v145, v145 + 16, 16 * (v150 - 1 - v144));
        *(v31 + 2) = v150 - 1;
        v18 = v186;
        v30 = v174;
        v100 = v178;
        if (v150 <= 2)
        {
LABEL_3:
          v6 = v102;
          v189 = v31;
          goto LABEL_4;
        }
      }

      v108 = &v100[16 * v99];
      v109 = *(v108 - 8);
      v110 = *(v108 - 7);
      v114 = __OFSUB__(v110, v109);
      v111 = v110 - v109;
      if (v114)
      {
        goto LABEL_117;
      }

      v113 = *(v108 - 6);
      v112 = *(v108 - 5);
      v114 = __OFSUB__(v112, v113);
      v106 = v112 - v113;
      v107 = v114;
      if (v114)
      {
        goto LABEL_118;
      }

      v115 = &v31[16 * v99];
      v117 = *v115;
      v116 = *(v115 + 1);
      v114 = __OFSUB__(v116, v117);
      v118 = v116 - v117;
      if (v114)
      {
        goto LABEL_120;
      }

      v114 = __OFADD__(v106, v118);
      v119 = v106 + v118;
      if (v114)
      {
        goto LABEL_123;
      }

      if (v119 >= v111)
      {
        v137 = &v100[16 * v103];
        v139 = *v137;
        v138 = *(v137 + 1);
        v114 = __OFSUB__(v138, v139);
        v140 = v138 - v139;
        if (v114)
        {
          goto LABEL_127;
        }

        if (v106 < v140)
        {
          v103 = v99 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_4:
    v28 = v173[1];
    v29 = v182;
    if (v30 >= v28)
    {
      goto LABEL_105;
    }
  }

  v65 = v32 + v63;
  if (__OFADD__(v32, v63))
  {
    goto LABEL_131;
  }

  if (v65 >= v64)
  {
    v65 = v173[1];
  }

  if (v65 >= v32)
  {
    if (v30 != v65)
    {
      v161 = v6;
      v178 = *v173;
      v66 = v178 + 8 * v30 - 8;
      v67 = (v32 - v30);
      v170 = v65;
      do
      {
        v174 = v30;
        v70 = v67;
        v71 = *(v178 + 8 * v30);
        v171 = v70;
        v172 = v66;
        v72 = v70;
        while (1)
        {
          v73 = *v66;
          v69 = v71;
          v68 = v73;
          v74 = v182;
          v75 = [v182 indexPathForCell:v69];
          if (!v75)
          {
            break;
          }

          v76 = v75;
          v185 = v69;
          v183 = v72;
          v77 = v177;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v78 = v181;
          v79 = *v180;
          v80 = v68;
          v81 = v186;
          (*v180)(v186, v77, v181);
          v184 = v80;
          v82 = [v74 indexPathForCell:v80];
          if (!v82)
          {
            (*v179)(v81, v78);
            v68 = v184;
            v69 = v185;
            break;
          }

          v83 = v82;
          v84 = v176;
          static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

          v85 = v175;
          v86 = v186;
          v79(v175, v84, v78);
          LOBYTE(v83) = static IndexPath.< infix(_:_:)();
          v87 = *v179;
          (*v179)(v85, v78);
          v87(v86, v78);

          if ((v83 & 1) == 0)
          {
            goto LABEL_37;
          }

          v88 = v183;
          if (!v178)
          {
            goto LABEL_133;
          }

          v89 = *v66;
          v71 = *(v66 + 8);
          *v66 = v71;
          *(v66 + 8) = v89;
          v66 -= 8;
          v90 = __CFADD__(v88, 1);
          v72 = (v88 + 1);
          if (v90)
          {
            goto LABEL_37;
          }
        }

LABEL_37:
        v30 = v174 + 1;
        v66 = v172 + 8;
        v67 = (v171 - 1);
      }

      while (v174 + 1 != v170);
      v30 = v170;
      v6 = v161;
      v31 = v167;
      v18 = v186;
      v32 = v166;
    }

    goto LABEL_53;
  }

LABEL_132:
  __break(1u);
LABEL_133:
  v155 = v182;

  __break(1u);
LABEL_134:
  v156 = v182;

  __break(1u);
LABEL_135:
  v157 = v182;

  __break(1u);
LABEL_136:
  v158 = v182;

  __break(1u);
LABEL_137:
  v159 = v160;

  __break(1u);
}

void sub_1004FE270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v63 = type metadata accessor for IndexPath();
  v10 = __chkstk_darwin(v63);
  v54 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v53 = &v48 - v13;
  v14 = __chkstk_darwin(v12);
  v57 = &v48 - v15;
  __chkstk_darwin(v14);
  v62 = &v48 - v17;
  v49 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = (v16 + 32);
    v55 = a5;
    v56 = (v16 + 8);
    v58 = v18;
    v20 = v18 + 8 * a3 - 8;
    v21 = a1 - a3;
    p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
LABEL_7:
    v51 = v20;
    v52 = a3;
    v23 = *(v58 + 8 * a3);
    v50 = v21;
    v24 = v21;
    while (1)
    {
      v25 = *v20;
      v26 = v23;
      v27 = v25;
      v28 = [a5 p:v26 ivar:?lyt[443]];
      if (!v28)
      {
        goto LABEL_5;
      }

      v29 = v28;
      v30 = v57;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = a5;
      v32 = *v19;
      (*v19)(v62, v30, v63);
      v33 = [v31 p:v27 ivar:?lyt[443]];
      if (!v33)
      {
        (*v56)(v62, v63);
        a5 = v55;
LABEL_5:

LABEL_6:
        a3 = v52 + 1;
        v20 = v51 + 8;
        v21 = v50 - 1;
        if (v52 + 1 == v49)
        {
          return;
        }

        goto LABEL_7;
      }

      v34 = v33;
      v61 = v24;
      v35 = v54;
      static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();

      v36 = p_ivar_lyt;
      v37 = v19;
      v38 = v53;
      v39 = v35;
      v60 = v26;
      v40 = v63;
      v41 = v62;
      v32(v53, v39, v63);
      v59 = static IndexPath.< infix(_:_:)();
      v42 = *v56;
      v43 = v38;
      v19 = v37;
      p_ivar_lyt = v36;
      (*v56)(v43, v40);
      v44 = v41;
      v45 = v61;
      v42(v44, v40);

      a5 = v55;
      if ((v59 & 1) == 0)
      {
        goto LABEL_6;
      }

      if (!v58)
      {
        break;
      }

      v46 = *v20;
      v23 = *(v20 + 8);
      *v20 = v23;
      *(v20 + 8) = v46;
      v20 -= 8;
      v47 = __CFADD__(v45, 1);
      v24 = v45 + 1;
      if (v47)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

void sub_1004FE594(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = _minimumMergeRunLength(_:)(v3);
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_1004FCD88();
        v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      v9 = v4;
      sub_1004FD730(v10, v11, a1, v6, v9);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_1004FE270(0, v3, 1, a1, v4);
  }
}

void sub_1004FE6D8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_100206E70(v3);
    *a1 = v3;
  }

  v6 = *(v3 + 16);
  v8[0] = v3 + 32;
  v8[1] = v6;
  v7 = v4;
  sub_1004FE594(v8, v7);

  specialized ContiguousArray._endMutation()();
}